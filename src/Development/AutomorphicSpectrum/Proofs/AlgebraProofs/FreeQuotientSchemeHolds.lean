module

public import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HasAffineChartId
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.SpecHomCompCoaction
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.FiniteFaithfullyFlatKer
public import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HasAffineChartIff
public import Mathlib.AlgebraicGeometry.Restrict
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Mathlib.AlgebraicGeometry.Gluing
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Over
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitAffineNeighbourhoodStatement
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.AlgebraicGeometry.Morphisms.LocalFlatDescent
import Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant
import Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale
import Mathlib.CategoryTheory.Limits.Shapes.Connected
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Mathlib.Tactic.Linter.Style
import Mathlib.AlgebraicGeometry.Sites.Fpqc
import Mathlib.CategoryTheory.ExtremalEpi
import Mathlib.AlgebraicGeometry.Morphisms.Proper
import Mathlib.Order.CompletePartialOrder

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FreeActionAffineChart, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FreeActionAffineChartStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartRestrictPreimageOpen, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartRestrictPreimageOpenStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GlueQuotientChartsCover, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GlueQuotientChartsCoverStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.InvariantOpenChartPreimage, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.InvariantOpenChartPreimageStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackOfGluedCharts, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackOfGluedChartsStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientOfAffineChartCover, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientOfAffineChartCoverStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FreeQuotientSchemeHolds

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FreeActionAffineChart =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FreeActionAffineChart", "h": "module\n\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HasAffineChartId\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.SpecHomCompCoaction\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.FiniteFaithfullyFlatKer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.AlgebraicGeometry.Morphisms.LocalFlatDescent\nimport Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Shapes.Connected\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot
open GlobalTheory.AffineQuotient
open TensorProduct Algebra.TensorProduct

namespace GlobalTheory.CompanionTheory.FreeQuotProof.Chart

set_option backward.isDefEq.respectTransparency false

abbrev modObjObj {C D : Type*} [Category C] [Category D] [CartesianMonoidalCategory C]
    [CartesianMonoidalCategory D] (F : C ⥤ D) [F.Monoidal] (M X : C) [MonObj M] [ModObj M X] :
    letI := Functor.monObjObj (F := F) (X := M); ModObj (F.obj M) (F.obj X) :=
  letI := Functor.monObjObj (F := F) (X := M)
  { smul := Functor.LaxMonoidal.μ F M X ≫ F.map γ[M, X]
    one_smul := by
      change (Functor.LaxMonoidal.ε F ≫ F.map η[M]) ▷ F.obj X ≫ Functor.LaxMonoidal.μ F M X ≫ F.map γ[M, X] = (λ_ (F.obj X)).hom
      rw [comp_whiskerRight, Category.assoc, Functor.LaxMonoidal.μ_natural_left_assoc, ← F.map_comp,
        ModObj.one_smul_self, Functor.LaxMonoidal.left_unitality]
    mul_smul := by
      change (Functor.LaxMonoidal.μ F M M ≫ F.map μ[M]) ▷ F.obj X ≫ Functor.LaxMonoidal.μ F M X ≫ F.map γ[M, X] =
        (α_ _ _ _).hom ≫ F.obj M ◁ (Functor.LaxMonoidal.μ F M X ≫ F.map γ[M, X]) ≫ Functor.LaxMonoidal.μ F M X ≫ F.map γ[M, X]
      rw [comp_whiskerRight, Category.assoc, Functor.LaxMonoidal.μ_natural_left_assoc, ← F.map_comp,
        ModObj.mul_smul_self, whiskerLeft_comp, Category.assoc,
        Functor.LaxMonoidal.μ_natural_right_assoc, ← F.map_comp, F.map_comp, F.map_comp]
      simp [Functor.LaxMonoidal.associativity_assoc] }

lemma comp_inv'' {C : Type*} [Category C] [CartesianMonoidalCategory C] {A : C} [GrpObj A] {T T' : C}
    (r : T' ⟶ T) (x : T ⟶ A) : r ≫ x⁻¹ = (r ≫ x)⁻¹ :=
  eq_inv_of_mul_eq_one_left (by rw [← MonObj.comp_mul, inv_mul_cancel, MonObj.comp_one])

section Affine

variable {R : Type} [CommRing R]

theorem exists_hopf (H : Over (Spec (CommRingCat.of R))) [GrpObj H] (hH : IsFiniteLocallyFree H.hom) :
    ∃ (Λ : Type) (_ : CommRing Λ) (_ : HopfAlgebra R Λ) (_ : Module.Finite R Λ)
      (_ : Module.Projective R Λ) (e : specOver R Λ ≅ H), IsMonHom e.hom := by
  obtain ⟨h1, h2, h3⟩ := hH
  have : IsAffine H.left := isAffine_of_isAffineHom H.hom
  obtain ⟨⟨Λ⟩, ⟨e⟩⟩ := (essImage_hopfSpec (R := .of R) (G := Grp.mk H)).2 this
  let e' : specOver R Λ ≅ H := (Grp.forget _).mapIso e
  have h₁ : IsFinite (specOver R Λ).hom := by
    rw [← Over.w e'.hom]; infer_instance
  have h₂ : Flat (specOver R Λ).hom := by
    rw [← Over.w e'.hom]; infer_instance
  have h₃ : LocallyOfFinitePresentation (specOver R Λ).hom := by
    rw [← Over.w e'.hom]; infer_instance
  have : Module.Finite R Λ := RingHom.finite_algebraMap.1 ((IsFinite.SpecMap_iff _).1 h₁)
  have : Module.Flat R Λ := RingHom.flat_algebraMap_iff.1 (Flat.SpecMap_iff.1 h₂)
  have : Algebra.FinitePresentation R Λ :=
    RingHom.finitePresentation_algebraMap.1 ((LocallyOfFinitePresentation.SpecMap_iff _).1 h₃)
  have : Module.FinitePresentation R Λ :=
    Module.FinitePresentation.of_finite_of_finitePresentation _ _
  exact ⟨Λ, inferInstance, inferInstance, inferInstance,
    Module.Flat.projective_of_finitePresentation, e', e.hom.hom.isMonHom_hom⟩

theorem exists_alg (Z : Over (Spec (CommRingCat.of R))) [IsAffine Z.left] :
    ∃ (B : Type) (_ : CommRing B) (_ : Algebra R B), Nonempty (specOver R B ≅ Z) := by
  obtain ⟨φ, hφ⟩ := Spec.map_surjective (Z.left.isoSpec.inv ≫ Z.hom)
  refine ⟨Γ(Z.left, ⊤), inferInstance, φ.hom.toAlgebra, ⟨Over.isoMk Z.left.isoSpec.symm ?_⟩⟩
  exact hφ.symm

section Coaction

variable {Λ B : Type} [CommRing Λ] [HopfAlgebra R Λ] [CommRing B] [Algebra R B]

lemma specHom_surjective {S T : Type} [CommRing S] [CommRing T] [Algebra R S] [Algebra R T]
    (t : specOver R T ⟶ specOver R S) : ∃ φ : S →ₐ[R] T, specHom φ = t := by
  obtain ⟨φ, hφ⟩ := Spec.map_surjective t.left
  have h : CommRingCat.ofHom (algebraMap R S) ≫ φ = CommRingCat.ofHom (algebraMap R T) := by
    apply Spec.map_injective
    rw [Spec.map_comp, hφ]
    exact Over.w t
  refine ⟨⟨φ.hom, fun r ↦ congr($h r)⟩, ?_⟩
  ext1
  rw [specHom_left]
  exact hφ

variable {H Z : Over (Spec (CommRingCat.of R))} [GrpObj H] [ModObj H Z]

theorem exists_rightCoaction (i : specOver R Λ ⟶ H) (v : specOver R B ≅ Z) :
    ∃ ρ : B →ₐ[R] B ⊗[R] Λ, specHom ρ ≫ v.hom =
      (specHom (includeRight : Λ →ₐ[R] B ⊗[R] Λ) ≫ i)⁻¹ •
        (specHom (includeLeft : B →ₐ[R] B ⊗[R] Λ) ≫ v.hom) := by
  obtain ⟨ρ, hρ⟩ := specHom_surjective (((specHom (includeRight : Λ →ₐ[R] B ⊗[R] Λ) ≫ i)⁻¹ •
        (specHom (includeLeft : B →ₐ[R] B ⊗[R] Λ) ≫ v.hom)) ≫ v.inv)
  exact ⟨ρ, by simp [hρ]⟩

variable (i : specOver R Λ ⟶ H) (v : specOver R B ⟶ Z) (ρ : B →ₐ[R] B ⊗[R] Λ)
  (hρ : specHom ρ ≫ v = (specHom (includeRight : Λ →ₐ[R] B ⊗[R] Λ) ≫ i)⁻¹ •
    (specHom (includeLeft : B →ₐ[R] B ⊗[R] Λ) ≫ v))

include hρ

lemma specHom_comp_rightCoaction {T : Type} [CommRing T] [Algebra R T] (φ : B ⊗[R] Λ →ₐ[R] T) :
    specHom (φ.comp ρ) ≫ v =
      (specHom (φ.comp includeRight) ≫ i)⁻¹ • (specHom (φ.comp includeLeft) ≫ v) := by
  rw [specHom_comp, specHom_comp, specHom_comp, Category.assoc, hρ, ModObj.comp_smul, Category.assoc,
    Category.assoc, comp_inv'']

lemma rightCoaction_counit [IsMonHom i] [Mono v] (b : B) :
    TensorProduct.rid R B ((Coalgebra.counit (R := R) (A := Λ)).lTensor B (ρ b)) = b := by
  let φ : B ⊗[R] Λ →ₐ[R] B := Algebra.TensorProduct.lift (AlgHom.id R B)
    ((Algebra.ofId R B).comp (Bialgebra.counitAlgHom R Λ)) fun _ _ ↦ .all _ _
  have h := specHom_comp_rightCoaction i v ρ hρ φ
  rw [lift_comp_includeRight', lift_comp_includeLeft, specHom_counit, Category.assoc,
    IsMonHom.one_hom, ← Hom.one_def, inv_one, _root_.one_smul] at h
  have h' : specHom (φ.comp ρ) = specHom (AlgHom.id R B) := by
    rw [← cancel_mono v]; exact h
  have h1 : φ (ρ b) = b := congr($(specHom_injective h') b)
  refine Eq.trans ?_ h1
  generalize ρ b = z
  induction z with
  | add x y hx hy => simp only [map_add (f := _), hx, hy]
  | tmul x y => simp [φ, Algebra.smul_def, _root_.mul_comm]

lemma rightCoaction_assoc [IsMonHom i] [Mono v] (b : B) :
    TensorProduct.assoc R B Λ Λ (ρ.toLinearMap.rTensor Λ (ρ b)) =
      (Coalgebra.comul (R := R) (A := Λ)).lTensor B (ρ b) := by
  let l : B →ₐ[R] B ⊗[R] (Λ ⊗[R] Λ) := includeLeft
  let r₁ : Λ →ₐ[R] B ⊗[R] (Λ ⊗[R] Λ) := includeRight.comp includeLeft
  let r₂ : Λ →ₐ[R] B ⊗[R] (Λ ⊗[R] Λ) := includeRight.comp includeRight
  let φ₀ : B ⊗[R] Λ →ₐ[R] B ⊗[R] (Λ ⊗[R] Λ) := Algebra.TensorProduct.lift l r₁ fun _ _ ↦ .all _ _
  let φ₁ : B ⊗[R] Λ →ₐ[R] B ⊗[R] (Λ ⊗[R] Λ) :=
    Algebra.TensorProduct.lift (φ₀.comp ρ) r₂ fun _ _ ↦ .all _ _
  let φ₂ : B ⊗[R] Λ →ₐ[R] B ⊗[R] (Λ ⊗[R] Λ) :=
    Algebra.TensorProduct.lift l ((Algebra.TensorProduct.lift r₁ r₂ fun _ _ ↦ .all _ _).comp
      (Bialgebra.comulAlgHom R Λ)) fun _ _ ↦ .all _ _
  have h₀ := specHom_comp_rightCoaction i v ρ hρ φ₀
  have h₁ := specHom_comp_rightCoaction i v ρ hρ φ₁
  have h₂ := specHom_comp_rightCoaction i v ρ hρ φ₂
  rw [lift_comp_includeRight', lift_comp_includeLeft] at h₀ h₁ h₂
  have hm : specHom ((Algebra.TensorProduct.lift r₁ r₂ fun _ _ ↦ .all _ _).comp
      (Bialgebra.comulAlgHom R Λ)) ≫ i = (specHom r₁ ≫ i) * (specHom r₂ ≫ i) := by
    rw [specHom_lift_comul, MonObj.mul_comp]
  rw [h₀, ← mul_smul, ← mul_inv_rev, ← hm, ← h₂, cancel_mono] at h₁
  have h : φ₂ (ρ b) = φ₁ (ρ b) := congr($(specHom_injective h₁.symm) b)
  have e₁ (z : B ⊗[R] Λ) :
      TensorProduct.assoc R B Λ Λ (ρ.toLinearMap.rTensor Λ z) = φ₁ z := by
    induction z with
    | add x y hx hy => simp only [map_add (f := _), hx, hy]
    | tmul x y =>
      simp only [LinearMap.rTensor_tmul, AlgHom.toLinearMap_apply, φ₁,
        Algebra.TensorProduct.lift_tmul, AlgHom.comp_apply]
      generalize ρ x = w
      induction w with
      | add x y hx hy => simp only [map_add (f := _), add_tmul, add_mul, hx, hy]
      | tmul x y => simp [φ₀, l, r₁, r₂]
  have e₂ (z : B ⊗[R] Λ) : (Coalgebra.comul (R := R) (A := Λ)).lTensor B z = φ₂ z := by
    induction z with
    | add x y hx hy => simp only [map_add (f := _), hx, hy]
    | tmul x y =>
      simp only [LinearMap.lTensor_tmul, φ₂, Algebra.TensorProduct.lift_tmul, AlgHom.comp_apply,
        Bialgebra.comulAlgHom_apply]
      generalize Coalgebra.comul (R := R) y = w
      induction w with
      | add x y hx hy => simp only [map_add (f := _), tmul_add, mul_add, hx, hy]
      | tmul x y => simp [l, r₁, r₂]
  rw [e₁, e₂, h]

lemma rightCoaction_free [Mono i] [Mono v] [Module.Finite R Λ] (hf : IsFreeAction H Z) :
    Function.Surjective (productMap (includeLeft : B →ₐ[R] B ⊗[R] Λ) ρ) := by
  let m := productMap (includeLeft : B →ₐ[R] B ⊗[R] Λ) ρ
  have : Epi (CommRingCat.ofHom m.toRingHom) := by
    refine ⟨fun {T} φ ψ h ↦ ?_⟩
    have hm (z) : φ (m z) = ψ (m z) := congr($h z)
    let : Algebra R T := (φ.hom.comp (algebraMap R (B ⊗[R] Λ))).toAlgebra
    let φ' : B ⊗[R] Λ →ₐ[R] T := ⟨φ.hom, fun _ ↦ rfl⟩
    let ψ' : B ⊗[R] Λ →ₐ[R] T := ⟨ψ.hom, fun r ↦ by
      have := hm (algebraMap R _ r)
      rw [AlgHom.commutes] at this
      exact this.symm⟩
    have h₁ : φ'.comp includeLeft = ψ'.comp (includeLeft : B →ₐ[R] B ⊗[R] Λ) := by
      ext b
      have := hm (b ⊗ₜ 1)
      rw [productMap_left_apply] at this
      exact this
    have h₂ : φ'.comp ρ = ψ'.comp ρ := by
      ext b
      have := hm (1 ⊗ₜ b)
      rw [productMap_right_apply] at this
      exact this
    have h₃ := specHom_comp_rightCoaction i v ρ hρ φ'
    rw [h₂, specHom_comp_rightCoaction i v ρ hρ ψ', h₁] at h₃
    have h₄ : specHom (φ'.comp includeRight) ≫ i = specHom (ψ'.comp includeRight) ≫ i := by
      set x := specHom (ψ'.comp (includeLeft : B →ₐ[R] B ⊗[R] Λ)) ≫ v
      set g₁ := specHom (φ'.comp (includeRight : Λ →ₐ[R] B ⊗[R] Λ)) ≫ i
      set g₂ := specHom (ψ'.comp (includeRight : Λ →ₐ[R] B ⊗[R] Λ)) ≫ i
      have : (g₁ * g₂⁻¹) • x = x := by
        rw [mul_smul, h₃, smul_inv_smul]
      exact mul_inv_eq_one.1 (hf _ _ _ this)
    have h₅ := specHom_injective ((cancel_mono i).1 h₄)
    have : φ' = ψ' := Algebra.TensorProduct.ext h₁ h₅
    ext1
    exact congr(($this).toRingHom)
  refine RingHom.surjective_of_epi_of_finite (CommRingCat.ofHom m.toRingHom) ?_
  refine RingHom.Finite.of_comp_finite
    (f := (includeLeftRingHom : B →+* B ⊗[R] B)) ?_
  have : (CommRingCat.ofHom m.toRingHom).hom.comp (includeLeftRingHom : B →+* B ⊗[R] B) =
      algebraMap B (B ⊗[R] Λ) := by
    ext b
    simp [m]
  rw [this, RingHom.finite_algebraMap]
  infer_instance

end Coaction

lemma isIso_lift_spec {Λ B : Type} [CommRing Λ] [Algebra R Λ] [CommRing B] [Algebra R B]
    {H Z : Over (Spec (CommRingCat.of R))} (e : specOver R Λ ≅ H) (v : specOver R B ≅ Z) :
    IsIso (lift (specHom (includeRight : Λ →ₐ[R] B ⊗[R] Λ) ≫ e.hom)
      (specHom (includeLeft : B →ₐ[R] B ⊗[R] Λ) ≫ v.hom)) := by
  have P₂ : IsPullback (specHom (includeLeft : B →ₐ[R] B ⊗[R] Λ)).left
      (specHom (includeRight : Λ →ₐ[R] B ⊗[R] Λ)).left (specOver R B).hom (specOver R Λ).hom :=
    isPullback_SpecMap_of_isPushout _ _ _ _ (CommRingCat.isPushout_tensorProduct R B Λ)
  have P₃ : IsPullback (specHom (includeRight : Λ →ₐ[R] B ⊗[R] Λ) ≫ e.hom).left
      (specHom (includeLeft : B →ₐ[R] B ⊗[R] Λ) ≫ v.hom).left H.hom Z.hom :=
    P₂.flip.of_iso (Iso.refl _) ((Over.forget _).mapIso e) ((Over.forget _).mapIso v) (Iso.refl _)
      (by simp) (by simp) (by simp) (by simp)
  have P₄ : IsPullback (fst H Z).left (snd H Z).left H.hom Z.hom :=
    IsPullback.of_hasPullback H.hom Z.hom
  have e₁ : (lift (specHom (includeRight : Λ →ₐ[R] B ⊗[R] Λ) ≫ e.hom)
      (specHom (includeLeft : B →ₐ[R] B ⊗[R] Λ) ≫ v.hom)).left = (P₃.isoIsPullback _ _ P₄).hom := by
    apply P₄.hom_ext
    · rw [IsPullback.isoIsPullback_hom_fst, ← Over.comp_left, lift_fst]
    · rw [IsPullback.isoIsPullback_hom_snd, ← Over.comp_left, lift_snd]
  have : IsIso (Over.forget _ |>.map (lift (specHom (includeRight : Λ →ₐ[R] B ⊗[R] Λ) ≫ e.hom)
      (specHom (includeLeft : B →ₐ[R] B ⊗[R] Λ) ≫ v.hom))) := by
    have hl : IsIso (lift (specHom (includeRight : Λ →ₐ[R] B ⊗[R] Λ) ≫ e.hom)
      (specHom (includeLeft : B →ₐ[R] B ⊗[R] Λ) ≫ v.hom)).left := by
      rw [e₁]; infer_instance
    exact hl
  exact isIso_of_reflects_iso _ (Over.forget _)

def invIso (H : Over (Spec (CommRingCat.of R))) [GrpObj H] : H ≅ H where
  hom := ι[H]
  inv := ι[H]
  hom_inv_id := by
    have h : ι[H] = (𝟙 H)⁻¹ := by rw [Hom.inv_def]; simp
    rw [h, comp_inv'', Category.comp_id, inv_inv]
  inv_hom_id := by
    have h : ι[H] = (𝟙 H)⁻¹ := by rw [Hom.inv_def]; simp
    rw [h, comp_inv'', Category.comp_id, inv_inv]

theorem affine_chart (H Z : Over (Spec (CommRingCat.of R))) [GrpObj H] [ModObj H Z]
    (hH : IsFiniteLocallyFree H.hom) (hf : IsFreeAction H Z) [IsAffine Z.left] :
    ∃ (Y : Scheme.{0}) (q : Z.left ⟶ Y), IsAffine Y ∧ IsFinite q ∧ Flat q ∧
      LocallyOfFinitePresentation q ∧ Surjective q ∧
      IsPullback (γ[H, Z] : H ⊗ Z ⟶ Z).left (snd H Z).left q q := by
  obtain ⟨Λ, _, _, _, _, e, _⟩ := exists_hopf H hH
  obtain ⟨B, _, _, ⟨v⟩⟩ := exists_alg Z
  obtain ⟨ρ, hρ⟩ := exists_rightCoaction e.hom v
  have hs := rightCoaction_free e.hom v.hom ρ hρ hf
  obtain ⟨h₁, -, h₃, h₄⟩ := GlobalTheory.HopfQuot.finite_faithfullyFlat_ker ρ
    (rightCoaction_assoc e.hom v.hom ρ hρ) (rightCoaction_counit e.hom v.hom ρ hρ) hs
  let C : Subring B := ρ.toRingHom.eqLocus (includeLeft : B →ₐ[R] B ⊗[R] Λ).toRingHom
  let c : CommRingCat.of C ⟶ CommRingCat.of B := CommRingCat.ofHom C.subtype
  have po : IsPushout c c (CommRingCat.ofHom ρ.toRingHom)
      (CommRingCat.ofHom (includeLeft : B →ₐ[R] B ⊗[R] Λ).toRingHom) := by
    let β : B →ₐ[R] B ⊗[R] Λ := includeLeft
    refine ⟨⟨by ext x; exact x.2⟩, ⟨PushoutCocone.isColimitAux' _ fun s ↦ ?_⟩⟩
    have he (b : B) (hb : ρ b = β b) : s.inl b = s.inr b :=
      congr($(s.condition) ⟨b, hb⟩)
    let : Algebra R s.pt := (s.inl.hom.comp (algebraMap R B)).toAlgebra
    let φ : B →ₐ[R] s.pt := ⟨s.inl.hom, fun _ ↦ rfl⟩
    let ψ : B →ₐ[R] s.pt := ⟨s.inr.hom, fun r ↦ (he _ (by simp [β])).symm⟩
    have hk : RingHom.ker (productMap β ρ).toRingHom ≤
        RingHom.ker (productMap ψ φ).toRingHom := by
      refine h₄.le.trans (Ideal.span_le.2 ?_)
      rintro _ ⟨b, hb, rfl⟩
      have : ψ b = φ b := (he b hb).symm
      simpa [sub_eq_zero, RingHom.mem_ker] using this
    let d : B ⊗[R] Λ →+* s.pt := (productMap β ρ).toRingHom.liftOfSurjective hs
      ⟨(productMap ψ φ).toRingHom, hk⟩
    have hd (z) : d (productMap β ρ z) = productMap ψ φ z :=
      RingHom.liftOfRightInverse_comp_apply (productMap β ρ).toRingHom _ _ _ z
    refine ⟨CommRingCat.ofHom d, ?_, ?_, fun {m} hm₁ hm₂ ↦ ?_⟩
    · ext b
      have := hd (1 ⊗ₜ b)
      rw [productMap_right_apply, productMap_right_apply] at this
      exact this
    · ext b
      have := hd (b ⊗ₜ 1)
      rw [productMap_left_apply, productMap_left_apply] at this
      exact this
    · ext t
      obtain ⟨z, rfl⟩ := hs t
      refine Eq.trans ?_ (hd z).symm
      have e₁ (b) : m.hom (ρ b) = φ b := congr($hm₁ b)
      have e₂ (b) : m.hom (β b) = ψ b := congr($hm₂ b)
      induction z with
      | add x y hx hy => simp only [map_add (f := _), hx, hy]
      | tmul x y =>
        rw [productMap_apply_tmul, productMap_apply_tmul, ← e₁, ← e₂]
        exact map_mul m.hom _ _
  have pb := isPullback_SpecMap_of_isPushout _ _ _ _ po
  have hk := isIso_lift_spec (e ≪≫ invIso H) v
  set k := lift (specHom (includeRight : Λ →ₐ[R] B ⊗[R] Λ) ≫ (e ≪≫ invIso H).hom)
      (specHom (includeLeft : B →ₐ[R] B ⊗[R] Λ) ≫ v.hom) with hkdef
  have hk₁ : k ≫ γ[H, Z] = specHom ρ ≫ v.hom := by
    rw [hρ, Hom.smul_def, hkdef, Hom.inv_def]
    simp [invIso]
  have hk₂ : k ≫ snd H Z = specHom (includeLeft : B →ₐ[R] B ⊗[R] Λ) ≫ v.hom := by
    rw [hkdef, lift_snd]
  let q : Z.left ⟶ Spec (CommRingCat.of C) := v.inv.left ≫ Spec.map c
  have pb' : IsPullback (γ[H, Z] : H ⊗ Z ⟶ Z).left (snd H Z).left q q := by
    refine pb.of_iso ((Over.forget _).mapIso (asIso k)) ((Over.forget _).mapIso v)
      ((Over.forget _).mapIso v) (Iso.refl _) ?_ ?_ ?_ ?_
    · exact congr(($hk₁).left).symm
    · exact congr(($hk₂).left).symm
    · simp [q]
    · simp [q]
  have f₁ : IsFinite (Spec.map c) := (IsFinite.SpecMap_iff _).2 (RingHom.finite_algebraMap.2 h₁)
  have f₂ : Flat (Spec.map c) ∧ Surjective (Spec.map c) :=
    (flat_and_surjective_SpecMap_iff _).2 (RingHom.faithfullyFlat_algebraMap_iff.2 h₃)
  have := f₂.1
  have := f₂.2
  have hq₂ : Flat q := by dsimp [q]; infer_instance
  have hq₃ : Surjective q := by dsimp [q]; infer_instance
  have hq₄ : QuasiCompact q := by dsimp [q]; infer_instance
  refine ⟨_, q, inferInstance, by dsimp [q]; infer_instance, hq₂, ?_, hq₃, pb'⟩
  have h3 := hH.2.2
  refine MorphismProperty.of_isPullback_of_descendsAlong (P := @LocallyOfFinitePresentation)
    (Q := @Surjective ⊓ @Flat ⊓ @QuasiCompact) pb'.flip ⟨⟨hq₃, hq₂⟩, hq₄⟩ ?_
  exact MorphismProperty.pullback_snd (P := @LocallyOfFinitePresentation) H.hom Z.hom h3

end Affine

section Open

variable {S : Scheme.{0}} (G X : Over S) [GrpObj G] [ModObj G X]

theorem exists_openAction (V : X.left.Opens)
    (hst : (γ[G, X] : G ⊗ X ⟶ X).left ⁻¹ᵁ V = (snd G X).left ⁻¹ᵁ V) :
    ∃ _ : ModObj G (Over.mk (V.ι ≫ X.hom)),
      (γ[G, Over.mk (V.ι ≫ X.hom)] : G ⊗ Over.mk (V.ι ≫ X.hom) ⟶ Over.mk (V.ι ≫ X.hom)) ≫
        (Over.homMk V.ι rfl : Over.mk (V.ι ≫ X.hom) ⟶ X) =
      G ◁ (Over.homMk V.ι rfl : Over.mk (V.ι ≫ X.hom) ⟶ X) ≫ γ[G, X] := by
  let Z : Over S := Over.mk (V.ι ≫ X.hom)
  let m : Z ⟶ X := Over.homMk V.ι rfl
  have : Mono m.left := inferInstanceAs (Mono V.ι)
  have : Mono m := Over.mono_of_mono_left m
  let u : G ⊗ Z ⟶ X := G ◁ m ≫ γ[G, X]
  have hu : Set.range u.left ⊆ Set.range V.ι := by
    rintro _ ⟨p, rfl⟩
    rw [Scheme.Opens.range_ι]
    have h1 : (G ◁ m).left p ∈ (snd G X).left ⁻¹ᵁ V := by
      change (snd G X).left ((G ◁ m).left p) ∈ V
      rw [← Scheme.Hom.comp_apply, ← Over.comp_left, whiskerLeft_snd, Over.comp_left,
        Scheme.Hom.comp_apply]
      exact ((snd G Z).left p).2
    rw [← hst] at h1
    simpa [u, Scheme.Hom.comp_apply] using h1
  let t : G ⊗ Z ⟶ Z := Over.homMk (IsOpenImmersion.lift V.ι u.left hu) (by
    change IsOpenImmersion.lift V.ι u.left hu ≫ V.ι ≫ X.hom = _
    rw [IsOpenImmersion.lift_fac_assoc]
    exact Over.w u)
  have ht : t ≫ m = u := by
    ext1
    exact IsOpenImmersion.lift_fac _ _ _
  refine ⟨{ smul := t, one_smul := ?_, mul_smul := ?_ }, ht⟩
  · apply (cancel_mono m).1
    change (η[G] ▷ Z ≫ t) ≫ m = (λ_ Z).hom ≫ m
    rw [Category.assoc, ht]
    simp only [u]
    rw [← whisker_exchange_assoc, ModObj.one_smul_self, leftUnitor_naturality]
  · apply (cancel_mono m).1
    change (μ[G] ▷ Z ≫ t) ≫ m = ((α_ G G Z).hom ≫ G ◁ t ≫ t) ≫ m
    simp only [Category.assoc, ht]
    simp only [u]
    rw [← whisker_exchange_assoc, ModObj.mul_smul_self, ← whiskerLeft_comp_assoc, ht]
    simp only [u, whiskerLeft_comp, Category.assoc]
    rw [associator_naturality_right_assoc]

theorem hasAffineChart_of_open (V : X.left.Opens)
    (hst : (γ[G, X] : G ⊗ X ⟶ X).left ⁻¹ᵁ V = (snd G X).left ⁻¹ᵁ V)
    [ModObj G (Over.mk (V.ι ≫ X.hom))]
    (hm : (γ[G, Over.mk (V.ι ≫ X.hom)] : G ⊗ Over.mk (V.ι ≫ X.hom) ⟶ Over.mk (V.ι ≫ X.hom)) ≫
        (Over.homMk V.ι rfl : Over.mk (V.ι ≫ X.hom) ⟶ X) =
      G ◁ (Over.homMk V.ι rfl : Over.mk (V.ι ≫ X.hom) ⟶ X) ≫ γ[G, X])
    (Y : Scheme.{0}) (q : V.toScheme ⟶ Y) (hY : IsAffine Y) (h₁ : IsFinite q) (h₂ : Flat q)
    (h₃ : LocallyOfFinitePresentation q) (h₄ : Surjective q)
    (pb : IsPullback (γ[G, Over.mk (V.ι ≫ X.hom)] : G ⊗ Over.mk (V.ι ≫ X.hom) ⟶ Over.mk (V.ι ≫ X.hom)).left
      (snd G (Over.mk (V.ι ≫ X.hom))).left q q) :
    HasAffineChart (γ[G, X] : G ⊗ X ⟶ X).left (snd G X).left V := by
  let Z : Over S := Over.mk (V.ι ≫ X.hom)
  let m : Z ⟶ X := Over.homMk V.ι rfl
  have P : IsPullback (G ◁ m) (snd G Z) (snd G X) m := by
    refine ⟨⟨by simp⟩, ⟨PullbackCone.IsLimit.mk _ (fun s => lift (s.fst ≫ fst G X) s.snd) ?_ ?_ ?_⟩⟩
    · intro s
      apply CartesianMonoidalCategory.hom_ext
      · simp
      · simpa using s.condition.symm
    · intro s
      simp
    · intro s t h1 h2
      apply CartesianMonoidalCategory.hom_ext
      · rw [lift_fst, ← h1]; simp
      · rw [lift_snd, h2]
  have P' : IsPullback (G ◁ m).left (snd G Z).left (snd G X).left V.ι := P.map (Over.forget S)
  have Q := (isPullback_morphismRestrict (snd G X).left V).flip
  let ε := P'.isoIsPullback _ _ Q
  have hε₁ : ε.inv ≫ (G ◁ m).left = ((snd G X).left ⁻¹ᵁ V).ι := P'.isoIsPullback_inv_fst _ _ Q
  have hε₂ : ε.inv ≫ (snd G Z).left = (snd G X).left ∣_ V := P'.isoIsPullback_inv_snd _ _ Q
  refine ⟨hst, Y, q, ε.inv ≫ (γ[G, Z] : G ⊗ Z ⟶ Z).left, hY, h₁, h₂, h₃, h₄, ?_, ?_⟩
  · have h := congr(($hm).left)
    rw [Over.comp_left, Over.comp_left] at h
    rw [Category.assoc]
    refine (congrArg (ε.inv ≫ ·) h).trans ?_
    rw [← Category.assoc, hε₁]
  · refine pb.of_iso ε (Iso.refl _) (Iso.refl _) (Iso.refl _) ?_ ?_ (by simp) (by simp)
    · simp
    · rw [← hε₂, ε.hom_inv_id_assoc]; exact Category.comp_id _

end Open

section Base

theorem mono_of_free {S : Scheme.{0}} (G X : Over S) [GrpObj G] [ModObj G X]
    (hf : IsFreeAction G X) : Mono (lift (γ[G, X] : G ⊗ X ⟶ X) (snd G X)) := by
  refine ⟨fun {T} a b h ↦ ?_⟩
  have h₁ : a ≫ γ[G, X] = b ≫ γ[G, X] := by
    simpa using congr($h ≫ fst X X)
  have h₂ : a ≫ snd G X = b ≫ snd G X := by
    simpa using congr($h ≫ snd X X)
  have ea : ∀ c : T ⟶ G ⊗ X, c ≫ γ[G, X] = (c ≫ fst G X) • (c ≫ snd G X) := by
    intro c
    rw [Hom.smul_def, ← comp_lift, lift_fst_snd, Category.comp_id]
  rw [ea a, ea b, ← h₂] at h₁
  have : ((b ≫ fst G X)⁻¹ * (a ≫ fst G X)) • (a ≫ snd G X) = a ≫ snd G X := by
    rw [mul_smul, h₁, inv_smul_smul]
  have h₃ := hf _ _ _ this
  apply CartesianMonoidalCategory.hom_ext
  · exact (inv_mul_eq_one.1 h₃).symm
  · exact h₂

theorem free_of_mono {S : Scheme.{0}} (G X : Over S) [GrpObj G] [ModObj G X]
    (h : Mono (lift (γ[G, X] : G ⊗ X ⟶ X) (snd G X))) : IsFreeAction G X := by
  intro T g x e
  have e₁ : lift g x ≫ lift (γ[G, X] : G ⊗ X ⟶ X) (snd G X) =
      lift (1 : T ⟶ G) x ≫ lift (γ[G, X] : G ⊗ X ⟶ X) (snd G X) := by
    rw [comp_lift, comp_lift, ← Hom.smul_def, ← Hom.smul_def, e, _root_.one_smul, lift_snd, lift_snd]
  have := (cancel_mono _).1 e₁
  simpa using congr($this ≫ fst G X)

variable {S S' : Scheme.{0}} (j : S' ⟶ S)

lemma isIso_pullback_fst [Mono j] (W : Over S) (z : W.left ⟶ S') (hz : z ≫ j = W.hom) :
    IsIso (pullback.fst W.hom j) := by
  refine ⟨pullback.lift (𝟙 _) z (by simp [hz]), ?_, by simp⟩
  apply pullback.hom_ext
  · simp
  · rw [← cancel_mono j]
    simp [pullback.condition, hz]

theorem baseChange_compare [Mono j] (G Z : Over S) [GrpObj G] [ModObj G Z] (z : Z.left ⟶ S')
    (hz : z ≫ j = Z.hom) :
    letI := Functor.grpObjObj (F := Over.pullback j) (G := G)
    letI := modObjObj (Over.pullback j) G Z
    IsIso (pullback.fst Z.hom j) ∧
      ∃ e : (((Over.pullback j).obj G) ⊗ ((Over.pullback j).obj Z)).left ≅ (G ⊗ Z).left,
      e.hom ≫ (γ[G, Z] : G ⊗ Z ⟶ Z).left =
        (γ[(Over.pullback j).obj G, (Over.pullback j).obj Z] :
          ((Over.pullback j).obj G) ⊗ ((Over.pullback j).obj Z) ⟶ (Over.pullback j).obj Z).left ≫
          pullback.fst Z.hom j ∧
      e.hom ≫ (snd G Z).left =
        (snd ((Over.pullback j).obj G) ((Over.pullback j).obj Z)).left ≫ pullback.fst Z.hom j := by
  refine ⟨isIso_pullback_fst j Z z hz, ?_⟩
  have iW : IsIso (pullback.fst (G ⊗ Z).hom j) :=
    isIso_pullback_fst j (G ⊗ Z) ((snd G Z).left ≫ z)
      (by rw [Category.assoc, hz]; exact Over.w (snd G Z))
  have nat : ∀ {A B : Over S} (f : A ⟶ B), ((Over.pullback j).map f).left ≫ pullback.fst B.hom j =
      pullback.fst A.hom j ≫ f.left := by
    intro A B f
    simp
  refine ⟨(Over.forget _).mapIso (Functor.Monoidal.μIso (Over.pullback j) G Z) ≪≫
    asIso (pullback.fst (G ⊗ Z).hom j), ?_, ?_⟩
  · change (Functor.LaxMonoidal.μ (Over.pullback j) G Z).left ≫ pullback.fst (G ⊗ Z).hom j ≫ _ = (Functor.LaxMonoidal.μ (Over.pullback j) G Z ≫ (Over.pullback j).map γ[G, Z]).left ≫ _
    rw [← nat, Over.comp_left, Category.assoc]
  · rw [← Functor.Monoidal.μ_snd (Over.pullback j) G Z]
    change (Functor.LaxMonoidal.μ (Over.pullback j) G Z).left ≫ pullback.fst (G ⊗ Z).hom j ≫ _ = (Functor.LaxMonoidal.μ (Over.pullback j) G Z ≫ (Over.pullback j).map (snd G Z)).left ≫ _
    rw [← nat, Over.comp_left, Category.assoc]

theorem baseChange_free (G Z : Over S) [GrpObj G] [ModObj G Z] (hf : IsFreeAction G Z) :
    letI := Functor.grpObjObj (F := Over.pullback j) (G := G)
    letI := modObjObj (Over.pullback j) G Z
    IsFreeAction ((Over.pullback j).obj G) ((Over.pullback j).obj Z) := by
  letI := Functor.grpObjObj (F := Over.pullback j) (G := G)
  letI := modObjObj (Over.pullback j) G Z
  apply free_of_mono
  have := mono_of_free G Z hf
  have hm : Mono ((Over.pullback j).map (lift (γ[G, Z] : G ⊗ Z ⟶ Z) (snd G Z))) := inferInstance
  have key : Functor.LaxMonoidal.μ (Over.pullback j) G Z ≫
        (Over.pullback j).map (lift (γ[G, Z] : G ⊗ Z ⟶ Z) (snd G Z)) =
      lift (γ[(Over.pullback j).obj G, (Over.pullback j).obj Z] :
          ((Over.pullback j).obj G) ⊗ ((Over.pullback j).obj Z) ⟶ (Over.pullback j).obj Z)
        (snd _ _) ≫ Functor.LaxMonoidal.μ (Over.pullback j) Z Z := by
    rw [← cancel_mono (Functor.OplaxMonoidal.δ (Over.pullback j) Z Z)]
    simp only [Category.assoc, Functor.Monoidal.μ_δ, Category.comp_id]
    apply CartesianMonoidalCategory.hom_ext
    · rw [lift_fst, Category.assoc, Category.assoc, Functor.OplaxMonoidal.δ_fst, ← Functor.map_comp,
        lift_fst]
      rfl
    · rw [lift_snd, Category.assoc, Category.assoc, Functor.OplaxMonoidal.δ_snd, ← Functor.map_comp,
        lift_snd, Functor.Monoidal.μ_snd]
  have : Mono (lift (γ[(Over.pullback j).obj G, (Over.pullback j).obj Z] :
          ((Over.pullback j).obj G) ⊗ ((Over.pullback j).obj Z) ⟶ (Over.pullback j).obj Z)
        (snd _ _) ≫ Functor.LaxMonoidal.μ (Over.pullback j) Z Z) := by
    rw [← key]; infer_instance
  exact mono_of_mono _ (Functor.LaxMonoidal.μ (Over.pullback j) Z Z)

end Base

theorem hasAffineChart_of_stable : ∀ {S : Scheme.{0}} (G X : Over S) [GrpObj G] [ModObj G X],
    IsFiniteLocallyFree G.hom → IsFreeAction G X → ∀ (V : X.left.Opens) (W : S.Opens),
    IsAffineOpen V → IsAffineOpen W → V ≤ X.hom ⁻¹ᵁ W →
    (γ[G, X] : G ⊗ X ⟶ X).left ⁻¹ᵁ V = (snd G X).left ⁻¹ᵁ V →
    HasAffineChart (γ[G, X] : G ⊗ X ⟶ X).left (snd G X).left V := by
  intro S G X _ _ hG hf V W hV hW hVW hst
  obtain ⟨_, hm⟩ := exists_openAction G X V hst
  let j : Spec (CommRingCat.of Γ(S, W)) ⟶ S := hW.fromSpec
  have : IsOpenImmersion j := inferInstanceAs (IsOpenImmersion hW.fromSpec)
  let Z : Over S := Over.mk (V.ι ≫ X.hom)
  let m : Z ⟶ X := Over.homMk V.ι rfl
  have : Mono m.left := inferInstanceAs (Mono V.ι)
  have : Mono m := Over.mono_of_mono_left m
  have hZ : Set.range Z.hom ⊆ Set.range j := by
    rintro _ ⟨v, rfl⟩
    rw [show Set.range j = W from hW.range_fromSpec]
    exact hVW v.2
  let z := IsOpenImmersion.lift j Z.hom hZ
  have hz : z ≫ j = Z.hom := IsOpenImmersion.lift_fac j Z.hom hZ
  have hfZ : IsFreeAction G Z := by
    intro T g x e
    refine hf T g (x ≫ m) ?_
    have e₁ : g • (x ≫ m) = (g • x) ≫ m := by
      rw [Hom.smul_def, Hom.smul_def, Category.assoc, hm, ← Category.assoc, lift_whiskerLeft]
    rw [e₁, e]
  letI := Functor.grpObjObj (F := Over.pullback j) (G := G)
  letI := modObjObj (Over.pullback j) G Z
  obtain ⟨hi, e, he₁, he₂⟩ := baseChange_compare j G Z z hz
  have hfZ' := baseChange_free j G Z hfZ
  have hH : IsFiniteLocallyFree ((Over.pullback j).obj G).hom := by
    obtain ⟨a, b, c⟩ := hG
    exact ⟨inferInstanceAs (IsFinite (pullback.snd G.hom j)),
      inferInstanceAs (Flat (pullback.snd G.hom j)),
      inferInstanceAs (LocallyOfFinitePresentation (pullback.snd G.hom j))⟩
  have : IsAffine ((Over.pullback j).obj Z).left := by
    have : IsAffine Z.left := hV
    exact IsAffine.of_isIso (pullback.fst Z.hom j)
  obtain ⟨Y, q', a1, a2, a3, a4, a5, pb⟩ := affine_chart _ _ hH hfZ'
  refine hasAffineChart_of_open G X V hst hm Y (inv (pullback.fst Z.hom j) ≫ q') a1 (by infer_instance) (by infer_instance) (by infer_instance) (by infer_instance) ?_
  refine pb.of_iso e (asIso (pullback.fst Z.hom j)) (asIso (pullback.fst Z.hom j)) (Iso.refl _) ?_ ?_ ?_ ?_
  · exact he₁.symm
  · exact he₂.symm
  · simp
  · simp

end GlobalTheory.CompanionTheory.FreeQuotProof.Chart
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FreeActionAffineChart =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FreeActionAffineChartStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FreeActionAffineChartStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HasAffineChartId\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FreeActionAffineChart\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot

theorem _root_.GlobalTheory.T.free_action_affine_chart : ∀ {S : Scheme.{0}} (G X : Over S) [GrpObj G] [ModObj G X], IsFiniteLocallyFree G.hom → IsFreeAction G X → ∀ (V : X.left.Opens) (W : S.Opens), IsAffineOpen V → IsAffineOpen W → V ≤ X.hom ⁻¹ᵁ W → (γ[G, X] : G ⊗ X ⟶ X).left ⁻¹ᵁ V = (snd G X).left ⁻¹ᵁ V → HasAffineChart (γ[G, X] : G ⊗ X ⟶ X).left (snd G X).left V := by
  first | exact @GlobalTheory.CompanionTheory.FreeQuotProof.Chart.hasAffineChart_of_stable
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FreeActionAffineChartStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartRestrictPreimageOpen =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartRestrictPreimageOpen", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HasAffineChartIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot GlobalTheory.CompanionTheory.FreeQuotGlue

noncomputable section

namespace GlobalTheory.CompanionTheory.FreeQuotGlue.ChartRestrict

theorem isChart_of_le {P X Y : Scheme.{0}} {a b : P ⟶ X} {V : X.Opens} {q : V.toScheme ⟶ Y}
    (h : IsChart a b V q) (D : Y.Opens) (W : X.Opens) (hle : W ≤ V)
    (hW : ∀ u : V.toScheme, V.ι u ∈ W ↔ q u ∈ D) :
    ∃ q' : W.toScheme ⟶ D.toScheme, IsChart a b W q' ∧ q' ≫ D.ι = X.homOfLE hle ≫ q := by
  obtain ⟨hst, hfin, hflat, hlfp, hsurj, a', ha', hpbV⟩ := h

  have hrange : Set.range (X.homOfLE hle ≫ q) ⊆ Set.range D.ι := by
    rintro _ ⟨w, rfl⟩
    rw [Scheme.Opens.range_ι]
    show q (X.homOfLE hle w) ∈ D
    rw [← hW, ← Scheme.Hom.comp_apply, Scheme.homOfLE_ι]
    exact w.2
  let q' : W.toScheme ⟶ D.toScheme := IsOpenImmersion.lift D.ι (X.homOfLE hle ≫ q) hrange
  have hq' : q' ≫ D.ι = X.homOfLE hle ≫ q := IsOpenImmersion.lift_fac _ _ _

  have hS2 : IsPullback q' (X.homOfLE hle) D.ι q := by
    refine IsOpenImmersion.isPullback q' (X.homOfLE hle) D.ι q hq'.symm ?_
    rw [Scheme.Opens.opensRange_ι, Scheme.opensRange_homOfLE hle]
    ext u
    exact (hW u).symm

  have hstW : a ⁻¹ᵁ W = b ⁻¹ᵁ W := by
    ext p
    show a p ∈ W ↔ b p ∈ W
    by_cases hpa : a p ∈ V
    · have hpb : b p ∈ V := by
        have : p ∈ a ⁻¹ᵁ V := hpa
        rw [hst] at this
        exact this
      obtain ⟨u, hu⟩ : a p ∈ Set.range V.ι := by rw [Scheme.Opens.range_ι]; exact hpa
      obtain ⟨u', hu'⟩ : b p ∈ Set.range V.ι := by rw [Scheme.Opens.range_ι]; exact hpb
      have hq : q u = q u' :=
        (IsChart.apply_eq_iff ⟨hst, hfin, hflat, hlfp, hsurj, a', ha', hpbV⟩ u u').mpr ⟨p, hu.symm, hu'.symm⟩
      have e1 := hW u
      have e2 := hW u'
      rw [hu] at e1
      rw [hu'] at e2
      rw [e1, e2, hq]
    · have hpb : b p ∉ V := fun hb => hpa (by
        have : p ∈ b ⁻¹ᵁ V := hb
        rw [← hst] at this
        exact this)
      exact ⟨fun hw => absurd (hle hw) hpa, fun hw => absurd (hle hw) hpb⟩

  have hrange' : Set.range ((b ⁻¹ᵁ W).ι ≫ a) ⊆ Set.range W.ι := by
    rintro _ ⟨p, rfl⟩
    rw [Scheme.Opens.range_ι]
    have : p.1 ∈ a ⁻¹ᵁ W := by rw [hstW]; exact p.2
    exact this
  let a'' : (b ⁻¹ᵁ W).toScheme ⟶ W.toScheme := IsOpenImmersion.lift W.ι ((b ⁻¹ᵁ W).ι ≫ a) hrange'
  have ha'' : a'' ≫ W.ι = (b ⁻¹ᵁ W).ι ≫ a := IsOpenImmersion.lift_fac _ _ _
  let ιK : (b ⁻¹ᵁ W).toScheme ⟶ (b ⁻¹ᵁ V).toScheme := P.homOfLE (b.preimage_mono hle)
  have hL : IsPullback (b ∣_ W) ιK (X.homOfLE hle) (b ∣_ V) := by
    refine IsOpenImmersion.isPullback (b ∣_ W) ιK (X.homOfLE hle) (b ∣_ V) ?_ ?_
    · rw [← cancel_mono V.ι, Category.assoc, Category.assoc, morphismRestrict_ι, Scheme.homOfLE_ι,
        morphismRestrict_ι, ← Category.assoc, Scheme.homOfLE_ι]
    · rw [Scheme.opensRange_homOfLE hle, Scheme.opensRange_homOfLE (b.preimage_mono hle)]
      ext p
      show (b ∣_ V) p ∈ V.ι ⁻¹ᵁ W ↔ (b ⁻¹ᵁ V).ι p ∈ b ⁻¹ᵁ W
      rw [Scheme.Hom.mem_preimage, Scheme.Hom.mem_preimage, ← Scheme.Hom.comp_apply,
        morphismRestrict_ι, Scheme.Hom.comp_apply]
  have hcomm : ιK ≫ a' = a'' ≫ X.homOfLE hle := by
    rw [← cancel_mono V.ι, Category.assoc, ha', Category.assoc, Scheme.homOfLE_ι, ha'',
      ← Category.assoc, Scheme.homOfLE_ι]
  have hs : IsPullback (a'' ≫ X.homOfLE hle) (b ∣_ W) q (q' ≫ D.ι) := by
    have := hL.flip.paste_horiz hpbV
    rw [hcomm, ← hq'] at this
    exact this
  have hpW : IsPullback a'' (b ∣_ W) q' q' := by
    refine hs.of_right ?_ hS2.flip
    rw [← cancel_mono D.ι, Category.assoc, Category.assoc, hq']
    simpa [hq'] using hs.w
  exact ⟨q', ⟨hstW, MorphismProperty.of_isPullback hS2.flip hfin,
    MorphismProperty.of_isPullback hS2.flip hflat, MorphismProperty.of_isPullback hS2.flip hlfp,
    MorphismProperty.of_isPullback hS2.flip hsurj, a'', ha'', hpW⟩, hq'⟩

end GlobalTheory.CompanionTheory.FreeQuotGlue.ChartRestrict

namespace GlobalTheory.CompanionTheory.FreeQuotGlue

theorem isChart_restrict_quotient_open :
    ∀ {P X Y : Scheme.{0}} {a b : P ⟶ X} {V : X.Opens} {q : V.toScheme ⟶ Y},
      IsChart a b V q → ∀ D : Y.Opens, ∃ (hle : V.ι ''ᵁ (q ⁻¹ᵁ D) ≤ V)
        (q' : (V.ι ''ᵁ (q ⁻¹ᵁ D)).toScheme ⟶ D.toScheme),
        IsChart a b (V.ι ''ᵁ (q ⁻¹ᵁ D)) q' ∧ q' ≫ D.ι = X.homOfLE hle ≫ q := by
  intro P X Y a b V q h D
  have hle : V.ι ''ᵁ (q ⁻¹ᵁ D) ≤ V := V.ι_image_le _
  have hW : ∀ u : V.toScheme, V.ι u ∈ V.ι ''ᵁ (q ⁻¹ᵁ D) ↔ q u ∈ D := fun u =>
    (Scheme.Opens.mem_ι_image_iff (x := u) (V := q ⁻¹ᵁ D))
  obtain ⟨q', hq', hfac⟩ := ChartRestrict.isChart_of_le h D _ hle hW
  exact ⟨hle, q', hq', hfac⟩

end GlobalTheory.CompanionTheory.FreeQuotGlue
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartRestrictPreimageOpen =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartRestrictPreimageOpenStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartRestrictPreimageOpenStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HasAffineChartIff\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartRestrictPreimageOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot GlobalTheory.CompanionTheory.FreeQuotGlue

theorem _root_.GlobalTheory.T.chart_restrict_preimage_open : ∀ {P X Y : Scheme.{0}} {a b : P ⟶ X} {V : X.Opens} {q : V.toScheme ⟶ Y}, IsChart a b V q → ∀ D : Y.Opens, ∃ (hle : V.ι ''ᵁ (q ⁻¹ᵁ D) ≤ V) (q' : (V.ι ''ᵁ (q ⁻¹ᵁ D)).toScheme ⟶ D.toScheme), IsChart a b (V.ι ''ᵁ (q ⁻¹ᵁ D)) q' ∧ q' ≫ D.ι = X.homOfLE hle ≫ q := by
  first | exact @GlobalTheory.CompanionTheory.FreeQuotGlue.isChart_restrict_quotient_open
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartRestrictPreimageOpenStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GlueQuotientChartsCover =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GlueQuotientChartsCover", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Restrict\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.AlgebraicGeometry.Sites.Fpqc\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.ExtremalEpi\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HasAffineChartId\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HasAffineChartIff\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\npublic import Mathlib.AlgebraicGeometry.Gluing\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Over\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot GlobalTheory.CompanionTheory.FreeQuotGlue

namespace GlobalTheory.CompanionTheory.FreeQuotGlue


set_option backward.isDefEq.respectTransparency false in
theorem exists_colimit_of_quotient_charts : ∀ {X : Scheme.{0}} (R : X → X → Prop) (𝒰 : Set X.Opens), (∀ U ∈ 𝒰, ∀ V ∈ 𝒰, ∀ x : X, x ∈ U → x ∈ V → ∃ W ∈ 𝒰, x ∈ W ∧ W ≤ U ∧ W ≤ V) → (∀ x : X, ∃ U : 𝒰, x ∈ U.1) → ∀ (Y : 𝒰 → Scheme.{0}) (q : ∀ U : 𝒰, U.1.toScheme ⟶ Y U), (∀ U, Epi (q U)) → (∀ U, Function.Surjective (q U)) → (∀ (U : 𝒰) (u v : U.1.toScheme), q U u = q U v ↔ R (U.1.ι u) (U.1.ι v)) → (∀ (U : 𝒰) (x y : X), R x y → x ∈ U.1 → y ∈ U.1) → ∀ (k : ∀ U V : 𝒰, U.1 ≤ V.1 → (Y U ⟶ Y V)), (∀ U V h, IsOpenImmersion (k U V h)) → (∀ U V h, q U ≫ k U V h = X.homOfLE h ≫ q V) → ∃ (Y' : Scheme.{0}) (π : X ⟶ Y') (em : ∀ U, Y U ⟶ Y') (_ : ∀ U, IsOpenImmersion (em U)), (∀ U, U.1.ι ≫ π = q U ≫ em U) ∧ (∀ U, π ⁻¹ᵁ (em U).opensRange = U.1) ∧ ∀ y : Y', ∃ U, ∃ z : Y U, em U z = y := by
  intro X R 𝒰 hbas hc Y q hepi hsurj hfib hst k hko hqk
  have hr (U : 𝒰) : U.1.ι.opensRange = U.1 := Scheme.Opens.opensRange_ι _
  have hmem (U : 𝒰) (x : U.1.toScheme) : U.1.ι x ∈ U.1 := by
    have : U.1.ι x ∈ U.1.ι.opensRange := ⟨x, rfl⟩
    rwa [hr U] at this
  have hex (U : 𝒰) (x : X) (hx : x ∈ U.1) : ∃ y, U.1.ι y = x := by
    rw [← hr U] at hx; exact hx
  have hinj (U : 𝒰) : Function.Injective U.1.ι := U.1.ι.isOpenEmbedding.injective
  have hm {U V : 𝒰} (h : U.1 ≤ V.1) : X.homOfLE h ≫ V.1.ι = U.1.ι := X.homOfLE_ι h
  have hm' {U V : 𝒰} (h : U.1 ≤ V.1) (x : U.1.toScheme) : V.1.ι (X.homOfLE h x) = U.1.ι x :=
    congr($(hm h) x)
  have hmo {U V : 𝒰} (h : U.1 ≤ V.1) : IsOpenImmersion (X.homOfLE h) := by
    have : IsOpenImmersion (X.homOfLE h ≫ V.1.ι) := by rw [hm]; infer_instance
    exact .of_comp _ V.1.ι
  let F : 𝒰 ⥤ Scheme.{0} :=
    { obj := Y
      map {U V} f := k U V f.le
      map_id U := by
        have := hepi U
        rw [← cancel_epi (q U), hqk]
        have : X.homOfLE (show U.1 ≤ U.1 from (𝟙 U : U ⟶ U).le) = 𝟙 _ := by
          rw [← cancel_mono U.1.ι, hm, Category.id_comp]
        rw [this, Category.id_comp]
        exact (Category.comp_id _).symm
      map_comp {U V W} f g := by
        have := hepi U
        rw [← cancel_epi (q U), hqk, reassoc_of% (hqk U V f.le), hqk]
        have : X.homOfLE (show U.1 ≤ W.1 from (f ≫ g).le) =
            X.homOfLE (show U.1 ≤ V.1 from f.le) ≫ X.homOfLE (show V.1 ≤ W.1 from g.le) := by
          rw [← cancel_mono W.1.ι, Category.assoc, hm, hm, hm]
        rw [this, Category.assoc] }
  let e (U : 𝒰) : U.1.toScheme ⟶ F.obj U := q U
  have hnat {U V : 𝒰} (f : U ⟶ V) :
      e U ≫ F.map f = X.homOfLE (show U.1 ≤ V.1 from f.le) ≫ e V := hqk U V f.le
  have hnat' {U V : 𝒰} (f : U ⟶ V) (x : U.1.toScheme) :
      F.map f (e U x) = e V (X.homOfLE (show U.1 ≤ V.1 from f.le) x) := congr($(hnat f) x)
  have hF {U V : 𝒰} (f : U ⟶ V) : IsOpenImmersion (F.map f) := hko U V f.le
  have hsurj' (U : 𝒰) : Function.Surjective (e U) := hsurj U
  have hfib' (U : 𝒰) (x y : U.1.toScheme) : e U x = e U y ↔ R (U.1.ι x) (U.1.ι y) := hfib U x y
  have key {U V : 𝒰} (x : U.1.toScheme) (y : V.1.toScheme) (h : U.1.ι x = V.1.ι y) :
      ∃ (W : 𝒰) (f : W ⟶ U) (g : W ⟶ V) (z : F.obj W),
        F.map f z = e U x ∧ F.map g z = e V y := by
    obtain ⟨W, hW, hxW, h1, h2⟩ := hbas U.1 U.2 V.1 V.2 _ (hmem U x) (h ▸ hmem V y)
    obtain ⟨z, hz⟩ := hex ⟨W, hW⟩ _ hxW
    refine ⟨⟨W, hW⟩, homOfLE h1, homOfLE h2, e ⟨W, hW⟩ z, ?_, ?_⟩
    · rw [hnat']; congr 1; apply hinj; rw [hm', hz]
    · rw [hnat']; congr 1; apply hinj; rw [hm', hz, h]
  have : (F ⋙ Scheme.forget).IsLocallyDirected := by
    constructor
    intro U V W f g x y h
    obtain ⟨x, rfl⟩ := hsurj' U x
    obtain ⟨y, rfl⟩ := hsurj' V y
    have h' : F.map f (e U x) = F.map g (e V y) := h
    rw [hnat', hnat'] at h'
    have hR := (hfib' _ _ _).mp h'
    rw [hm', hm'] at hR
    obtain ⟨y', hy'⟩ := hex U _ (hst U _ _ hR (hmem U x))
    have hxy : e U x = e U y' := (hfib' U _ _).mpr (by rw [hy']; exact hR)
    have := key _ _ hy'
    rwa [← hxy] at this
  have key2 {U V : 𝒰} (x : U.1.toScheme) (y : V.1.toScheme)
      (h : colimit.ι F U (e U x) = colimit.ι F V (e V y)) : V.1.ι y ∈ U.1 := by
    obtain ⟨W, f, g, z, -, h2⟩ := (Scheme.IsLocallyDirected.ι_eq_ι_iff F).mp h
    obtain ⟨z, rfl⟩ := hsurj' W z
    rw [hnat'] at h2
    have hR := (hfib' _ _ _).mp h2
    rw [hm'] at hR
    exact hst U _ _ hR ((show W.1 ≤ U.1 from f.le) (hmem W _))
  let 𝒱 : X.OpenCover := Scheme.Cover.mkOfCovers 𝒰 (fun U ↦ U.1.toScheme) (fun U ↦ U.1.ι)
    (fun x ↦ by
      obtain ⟨U, hU⟩ := hc x
      exact ⟨U, hex U x hU⟩)
  let j : X ⟶ colimit F := 𝒱.glueMorphisms (fun U ↦ e U ≫ colimit.ι F U) (by
    intro U V
    change 𝒰 at U V
    change pullback.fst U.1.ι V.1.ι ≫ (e U ≫ colimit.ι F U) =
      pullback.snd U.1.ι V.1.ι ≫ (e V ≫ colimit.ι F V)
    apply Scheme.hom_ext_of_forall
    intro x
    have hx : U.1.ι (pullback.fst U.1.ι V.1.ι x) = V.1.ι (pullback.snd U.1.ι V.1.ι x) :=
      congr($(pullback.condition (f := U.1.ι) (g := V.1.ι)) x)
    obtain ⟨W, hW, hxW, h1, h2⟩ := hbas U.1 U.2 V.1 V.2 _ (hmem U _) (hx ▸ hmem V _)
    let α : W.toScheme ⟶ pullback U.1.ι V.1.ι :=
      pullback.lift (X.homOfLE h1) (X.homOfLE h2) ((hm (U := ⟨W, hW⟩) h1).trans (hm (U := ⟨W, hW⟩) h2).symm)
    have hα1 : α ≫ pullback.fst _ _ = X.homOfLE h1 := pullback.lift_fst _ _ _
    have hα2 : α ≫ pullback.snd _ _ = X.homOfLE h2 := pullback.lift_snd _ _ _
    have : IsOpenImmersion (α ≫ pullback.fst _ _) := by rw [hα1]; exact hmo (U := ⟨W, hW⟩) _
    have : IsOpenImmersion α := .of_comp _ (pullback.fst _ _)
    obtain ⟨z, hz⟩ := hex ⟨W, hW⟩ _ hxW
    refine ⟨α.opensRange, ⟨z, ?_⟩, ?_⟩
    · apply (pullback.fst U.1.ι V.1.ι).isOpenEmbedding.injective
      rw [← Scheme.Hom.comp_apply, hα1]
      apply hinj
      rw [hm' (U := ⟨W, hW⟩), hz]
    · rw [← cancel_epi α.isoOpensRange.hom]
      simp only [Scheme.Hom.isoOpensRange_hom_ι_assoc]
      rw [reassoc_of% hα1, reassoc_of% hα2,
        ← reassoc_of% (hnat (U := ⟨W, hW⟩) (V := U) (homOfLE h1)),
        ← reassoc_of% (hnat (U := ⟨W, hW⟩) (V := V) (homOfLE h2)), colimit.w, colimit.w])
  have hj (U : 𝒰) : U.1.ι ≫ j = e U ≫ colimit.ι F U := 𝒱.ι_glueMorphisms _ _ U
  have hj' (U : 𝒰) (x : U.1.toScheme) : j (U.1.ι x) = colimit.ι F U (e U x) := congr($(hj U) x)
  have hpre (U : 𝒰) : j ⁻¹ᵁ (colimit.ι F U).opensRange = U.1 := by
    ext x
    constructor
    · rintro ⟨y, hy⟩
      obtain ⟨y, rfl⟩ := hsurj' U y
      obtain ⟨V, hV⟩ := hc x
      obtain ⟨z, rfl⟩ := hex V x hV
      exact key2 y z (hy.trans (hj' V z))
    · intro hx
      obtain ⟨z, rfl⟩ := hex U x hx
      exact ⟨_, (hj' U z).symm⟩
  refine ⟨colimit F, j, fun U ↦ colimit.ι F U, fun U ↦ inferInstance, hj, hpre, fun y ↦ ?_⟩
  obtain ⟨U, x, rfl⟩ := Scheme.IsLocallyDirected.ι_jointly_surjective F y
  exact ⟨U, x, rfl⟩

end GlobalTheory.CompanionTheory.FreeQuotGlue
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GlueQuotientChartsCover =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GlueQuotientChartsCoverStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GlueQuotientChartsCoverStatement", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Restrict\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GlueQuotientChartsCover\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HasAffineChartId\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HasAffineChartIff\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot GlobalTheory.CompanionTheory.FreeQuotGlue

theorem _root_.GlobalTheory.T.glue_quotient_charts_cover : ∀ {X : Scheme.{0}} (R : X → X → Prop) (𝒰 : Set X.Opens), (∀ U ∈ 𝒰, ∀ V ∈ 𝒰, ∀ x : X, x ∈ U → x ∈ V → ∃ W ∈ 𝒰, x ∈ W ∧ W ≤ U ∧ W ≤ V) → (∀ x : X, ∃ U : 𝒰, x ∈ U.1) → ∀ (Y : 𝒰 → Scheme.{0}) (q : ∀ U : 𝒰, U.1.toScheme ⟶ Y U), (∀ U, Epi (q U)) → (∀ U, Function.Surjective (q U)) → (∀ (U : 𝒰) (u v : U.1.toScheme), q U u = q U v ↔ R (U.1.ι u) (U.1.ι v)) → (∀ (U : 𝒰) (x y : X), R x y → x ∈ U.1 → y ∈ U.1) → ∀ (k : ∀ U V : 𝒰, U.1 ≤ V.1 → (Y U ⟶ Y V)), (∀ U V h, IsOpenImmersion (k U V h)) → (∀ U V h, q U ≫ k U V h = X.homOfLE h ≫ q V) → ∃ (Y' : Scheme.{0}) (π : X ⟶ Y') (em : ∀ U, Y U ⟶ Y') (_ : ∀ U, IsOpenImmersion (em U)), (∀ U, U.1.ι ≫ π = q U ≫ em U) ∧ (∀ U, π ⁻¹ᵁ (em U).opensRange = U.1) ∧ ∀ y : Y', ∃ U, ∃ z : Y U, em U z = y := by
  first | exact @GlobalTheory.CompanionTheory.FreeQuotGlue.exists_colimit_of_quotient_charts
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GlueQuotientChartsCoverStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.InvariantOpenChartPreimage =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.InvariantOpenChartPreimage", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HasAffineChartIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.Proper\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot GlobalTheory.CompanionTheory.FreeQuotGlue

namespace GlobalTheory.CompanionTheory.FreeQuotGlue

theorem IsChart.exists_opens_image_preimage {P X Y : Scheme.{0}} {a b : P ⟶ X} {V : X.Opens}
    {q : V.toScheme ⟶ Y} (h : IsChart a b V q) (V' : X.Opens) (hV : V' ≤ V)
    (hs : a ⁻¹ᵁ V' = b ⁻¹ᵁ V') : ∃ D : Y.Opens, V.ι ''ᵁ (q ⁻¹ᵁ D) = V' := by
  have := h.isFinite
  have hsat : ∀ u v : V.toScheme, q u = q v → V.ι u ∈ V' → V.ι v ∈ V' := by
    intro u v huv hu
    obtain ⟨p, hpa, hpb⟩ := (h.apply_eq_iff u v).1 huv
    have hp : p ∈ a ⁻¹ᵁ V' := by
      show a p ∈ V'
      rw [hpa]
      exact hu
    rw [hs] at hp
    have hb : b p ∈ V' := hp
    rwa [hpb] at hb
  let C : Set V.toScheme := ((V.ι ⁻¹ᵁ V' : V.toScheme.Opens) : Set V.toScheme)ᶜ
  have hC : IsClosed C := (V.ι ⁻¹ᵁ V').isOpen.isClosed_compl
  have hqC : IsClosed (q '' C) := q.isClosedMap C hC
  refine ⟨⟨(q '' C)ᶜ, hqC.isOpen_compl⟩, ?_⟩
  ext x
  constructor
  · rintro ⟨u, hu, rfl⟩
    by_contra hx
    exact hu ⟨u, hx, rfl⟩
  · intro hx
    obtain ⟨u, rfl⟩ : ∃ u, V.ι u = x := by
      rw [← Set.mem_range, Scheme.Opens.range_ι]
      exact hV hx
    refine ⟨u, ?_, rfl⟩
    rintro ⟨v, hv, hvu⟩
    exact hv (hsat u v hvu.symm hx)

end GlobalTheory.CompanionTheory.FreeQuotGlue
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.InvariantOpenChartPreimage =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.InvariantOpenChartPreimageStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.InvariantOpenChartPreimageStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HasAffineChartIff\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.InvariantOpenChartPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot GlobalTheory.CompanionTheory.FreeQuotGlue

theorem _root_.GlobalTheory.T.invariant_open_chart_preimage : ∀ {P X Y : Scheme.{0}} {a b : P ⟶ X} {V : X.Opens} {q : V.toScheme ⟶ Y}, IsChart a b V q → ∀ (V' : X.Opens), V' ≤ V → a ⁻¹ᵁ V' = b ⁻¹ᵁ V' → ∃ D : Y.Opens, V.ι ''ᵁ (q ⁻¹ᵁ D) = V' := by
  first | exact @GlobalTheory.CompanionTheory.FreeQuotGlue.IsChart.exists_opens_image_preimage
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.InvariantOpenChartPreimageStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackOfGluedCharts =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackOfGluedCharts", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HasAffineChartIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot GlobalTheory.CompanionTheory.FreeQuotGlue

noncomputable section

namespace GlobalTheory.CompanionTheory.FreeQuotGlue

theorem isPullback_of_preimage_opensRange {X Y Y' : Scheme.{0}} (π : X ⟶ Y') (V : X.Opens)
    (q : V.toScheme ⟶ Y) (em : Y ⟶ Y') [IsOpenImmersion em] (hc : V.ι ≫ π = q ≫ em)
    (hpre : π ⁻¹ᵁ em.opensRange = V) : IsPullback q V.ι em π :=
  IsOpenImmersion.isPullback q V.ι em π hc (by rw [hpre, Scheme.Opens.opensRange_ι])

theorem IsChart.isIso_restrict_lift {P X Y Y' : Scheme.{0}} {a b : P ⟶ X} {π : X ⟶ Y'} {V : X.Opens}
    {q : V.toScheme ⟶ Y} {em : Y ⟶ Y'} [IsOpenImmersion em] (h : IsChart a b V q)
    (hc : V.ι ≫ π = q ≫ em) (hpre : π ⁻¹ᵁ em.opensRange = V) (w : a ≫ π = b ≫ π) :
    IsIso (pullback.lift a b w ∣_ (pullback.snd π π ⁻¹ᵁ V)) := by
  obtain ⟨-, -, -, -, -, a', ha', hsq⟩ := h

  have h1 : IsPullback (b ∣_ V) (a' ≫ V.ι) (V.ι ≫ π) π := by
    have h0 := hsq.paste_horiz (isPullback_of_preimage_opensRange π V q em hc hpre).flip
    rw [← hc] at h0
    exact h0.flip

  have h2 : IsPullback (pullback.snd π π ∣_ V) ((pullback.snd π π ⁻¹ᵁ V).ι ≫ pullback.fst π π)
      (V.ι ≫ π) π :=
    (isPullback_morphismRestrict (pullback.snd π π) V).paste_vert (IsPullback.of_hasPullback π π).flip
  have hdom : pullback.lift a b w ⁻¹ᵁ (pullback.snd π π ⁻¹ᵁ V) = b ⁻¹ᵁ V := by
    rw [← Scheme.Hom.comp_preimage, pullback.lift_snd]

  have key : pullback.lift a b w ∣_ (pullback.snd π π ⁻¹ᵁ V) =
      (P.isoOfEq hdom).hom ≫ (h1.isoIsPullback _ _ h2).hom := by
    apply h2.hom_ext
    · rw [← cancel_mono V.ι]
      simp only [Category.assoc]
      rw [IsPullback.isoIsPullback_hom_fst_assoc]
      simp only [morphismRestrict_ι, morphismRestrict_ι_assoc, pullback.lift_snd,
        Scheme.isoOfEq_hom_ι_assoc]
    · rw [morphismRestrict_ι_assoc, pullback.lift_fst, Category.assoc,
        IsPullback.isoIsPullback_hom_snd, ha', Scheme.isoOfEq_hom_ι_assoc]
  rw [key]
  infer_instance

theorem isPullback_of_isChart {P X Y' : Scheme.{0}} (a b : P ⟶ X) (π : X ⟶ Y') {J : Type}
    (V : J → X.Opens) (Y : J → Scheme.{0}) (q : ∀ j, (V j).toScheme ⟶ Y j) (em : ∀ j, Y j ⟶ Y')
    [∀ j, IsOpenImmersion (em j)] (hch : ∀ j, IsChart a b (V j) (q j))
    (hc : ∀ j, (V j).ι ≫ π = q j ≫ em j) (hpre : ∀ j, π ⁻¹ᵁ (em j).opensRange = V j)
    (hcov : ∀ y : Y', ∃ j, ∃ z : Y j, em j z = y) : IsPullback a b π π := by

  have hV : iSup V = ⊤ := by
    rw [eq_top_iff]
    intro x _
    obtain ⟨j, z, hz⟩ := hcov (π x)
    rw [TopologicalSpace.Opens.mem_iSup]
    refine ⟨j, ?_⟩
    rw [← hpre j, Scheme.Hom.mem_preimage]
    exact ⟨z, hz⟩

  have hw : a ≫ π = b ≫ π := by
    refine Scheme.Cover.hom_ext
      (P.openCoverOfIsOpenCover (fun j => b ⁻¹ᵁ V j)
        (by unfold TopologicalSpace.IsOpenCover; exact b.iSup_preimage_eq_top hV)) _ _ fun j => ?_
    obtain ⟨-, -, -, -, -, a', ha', hsq⟩ := hch j
    change (b ⁻¹ᵁ V j).ι ≫ a ≫ π = (b ⁻¹ᵁ V j).ι ≫ b ≫ π
    calc (b ⁻¹ᵁ V j).ι ≫ a ≫ π = a' ≫ (V j).ι ≫ π := by
          rw [← Category.assoc, ← ha', Category.assoc]
      _ = a' ≫ q j ≫ em j := by rw [hc j]
      _ = (b ∣_ V j) ≫ q j ≫ em j := by rw [← Category.assoc, hsq.w, Category.assoc]
      _ = (b ∣_ V j) ≫ (V j).ι ≫ π := by rw [hc j]
      _ = (b ⁻¹ᵁ V j).ι ≫ b ≫ π := by rw [morphismRestrict_ι_assoc]

  have hiso : IsIso (pullback.lift a b hw) := by
    rw [← MorphismProperty.isomorphisms.iff,
      IsZariskiLocalAtTarget.iff_of_iSup_eq_top (P := MorphismProperty.isomorphisms Scheme)
        (fun j => pullback.snd π π ⁻¹ᵁ V j) ((pullback.snd π π).iSup_preimage_eq_top hV)]
    intro j
    rw [MorphismProperty.isomorphisms.iff]
    exact IsChart.isIso_restrict_lift (hch j) (hc j) (hpre j) hw
  exact IsPullback.of_iso_pullback ⟨hw⟩ (asIso (pullback.lift a b hw))
    (pullback.lift_fst _ _ _) (pullback.lift_snd _ _ _)

end GlobalTheory.CompanionTheory.FreeQuotGlue
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackOfGluedCharts =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackOfGluedChartsStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackOfGluedChartsStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HasAffineChartIff\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackOfGluedCharts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot GlobalTheory.CompanionTheory.FreeQuotGlue

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackOfGluedChartsStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientOfAffineChartCover =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientOfAffineChartCover", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HasAffineChartIff\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartRestrictPreimageOpenStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GlueQuotientChartsCoverStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.InvariantOpenChartPreimageStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackOfGluedChartsStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.ExtremalEpi\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot GlobalTheory.CompanionTheory.FreeQuotGlue

namespace GlobalTheory.CompanionTheory.FreeQuotGlue

theorem exists_iso_of_effectiveEpi {T Y₁ Y₂ : Scheme.{0}} (q₁ : T ⟶ Y₁) (q₂ : T ⟶ Y₂)
    [EffectiveEpi q₁] [EffectiveEpi q₂]
    (h : ∀ (Z : Scheme.{0}) (g₁ g₂ : Z ⟶ T), g₁ ≫ q₁ = g₂ ≫ q₁ ↔ g₁ ≫ q₂ = g₂ ≫ q₂) :
    ∃ e : Y₁ ≅ Y₂, q₁ ≫ e.hom = q₂ := by
  let f : Y₁ ⟶ Y₂ := EffectiveEpi.desc q₁ q₂ fun {Z} g₁ g₂ e ↦ (h Z g₁ g₂).1 e
  let g : Y₂ ⟶ Y₁ := EffectiveEpi.desc q₂ q₁ fun {Z} g₁ g₂ e ↦ (h Z g₁ g₂).2 e
  have hf : q₁ ≫ f = q₂ := EffectiveEpi.fac _ _ _
  have hg : q₂ ≫ g = q₁ := EffectiveEpi.fac _ _ _
  refine ⟨⟨f, g, ?_, ?_⟩, hf⟩
  · rw [← cancel_epi q₁, reassoc_of% hf, hg, Category.comp_id]
  · rw [← cancel_epi q₂, reassoc_of% hg, hf, Category.comp_id]

theorem IsChart.exists_isOpenImmersion {P X Y Y' : Scheme.{0}} {a b : P ⟶ X} {V V' : X.Opens}
    {q : V.toScheme ⟶ Y} {q' : V'.toScheme ⟶ Y'} (h : IsChart a b V q) (h' : IsChart a b V' q')
    (hle : V' ≤ V) : ∃ k : Y' ⟶ Y, IsOpenImmersion k ∧ q' ≫ k = X.homOfLE hle ≫ q := by
  obtain ⟨D, rfl⟩ := GlobalTheory.T.invariant_open_chart_preimage h V' hle h'.stable
  obtain ⟨hle₂, q'', hc, hq⟩ := GlobalTheory.T.chart_restrict_preimage_open h D
  have := h'.effectiveEpi
  have := hc.effectiveEpi
  obtain ⟨e, he⟩ := exists_iso_of_effectiveEpi q' q'' fun Z g₁ g₂ ↦ by
    rw [h'.comp_eq_iff, hc.comp_eq_iff]
  refine ⟨e.hom ≫ D.ι, inferInstance, ?_⟩
  rw [reassoc_of% he, hq]

theorem exists_common {P X : Scheme.{0}} {a b : P ⟶ X} {U V : X.Opens}
    (hU : HasAffineChart a b U) (hV : HasAffineChart a b V) (x : X) (hxU : x ∈ U) (hxV : x ∈ V) :
    ∃ W, HasAffineChart a b W ∧ x ∈ W ∧ W ≤ U ∧ W ≤ V := by
  obtain ⟨Y, q, hY, hq⟩ := (hasAffineChart_iff a b U).1 hU
  obtain ⟨D, hD⟩ := _root_.GlobalTheory.CompanionTheory.FreeQuotGlue.IsChart.exists_opens_image_preimage hq (U ⊓ V) inf_le_left (by
    have h1 := hq.stable
    have h2 := hV.1
    ext p
    have h1' := SetLike.ext_iff.1 h1 p
    have h2' := SetLike.ext_iff.1 h2 p
    exact and_congr h1' h2')
  have hx : x ∈ U.ι ''ᵁ (q ⁻¹ᵁ D) := hD ▸ ⟨hxU, hxV⟩
  obtain ⟨u, hu, rfl⟩ := hx
  obtain ⟨D', hD', hm, hle⟩ := exists_isAffineOpen_mem_and_subset (X := Y) (x := q u) (U := D) hu
  obtain ⟨hW, q', hc, hq'⟩ := GlobalTheory.T.chart_restrict_preimage_open hq D'
  have hle' : U.ι ''ᵁ (q ⁻¹ᵁ D') ≤ U ⊓ V := by
    rw [← hD]
    rintro _ ⟨v, hv, rfl⟩
    exact ⟨v, hle hv, rfl⟩
  have : IsAffine D'.toScheme := hD'
  exact ⟨_, (hasAffineChart_iff a b _).2 ⟨_, q', this, hc⟩, ⟨u, hm, rfl⟩, hW, hle'.trans inf_le_right⟩

theorem prop_of_charts (Q : MorphismProperty Scheme.{0}) [IsZariskiLocalAtTarget Q]
    {X Y' : Scheme.{0}} (π : X ⟶ Y') {J : Type} (V : J → X.Opens)
    (Y : J → Scheme.{0}) (q : ∀ j, (V j).toScheme ⟶ Y j) (em : ∀ j, Y j ⟶ Y')
    [∀ j, IsOpenImmersion (em j)] (hcomm : ∀ j, (V j).ι ≫ π = q j ≫ em j)
    (hpre : ∀ j, π ⁻¹ᵁ (em j).opensRange = V j) (hsurj : ∀ y : Y', ∃ j, ∃ z : Y j, em j z = y)
    (hq : ∀ j, Q (q j)) : Q π := by
  refine IsZariskiLocalAtTarget.of_iSup_eq_top (fun j ↦ (em j).opensRange) ?_ fun j ↦ ?_
  · rw [eq_top_iff]
    rintro y -
    obtain ⟨j, z, rfl⟩ := hsurj y
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨j, z, rfl⟩
  · refine (Q.arrow_mk_iso_iff (morphismRestrictOpensRange π (em j))).mpr ?_
    have H : IsPullback (q j) (V j).ι (em j) π :=
      IsOpenImmersion.isPullback _ _ _ _ (hcomm j) (by
        rw [Scheme.Opens.opensRange_ι, hpre])
    have e : H.flip.isoPullback.hom ≫ pullback.snd π (em j) = q j := H.flip.isoPullback_hom_snd
    have h' := hq j
    rw [← e] at h'
    exact (Q.cancel_left_of_respectsIso _ _).1 h'

end GlobalTheory.CompanionTheory.FreeQuotGlue


set_option backward.isDefEq.respectTransparency false in
theorem GlobalTheory.CompanionTheory.FreeQuotGlue.exists_of_affineCharts : ∀ {P X : Scheme.{0}} (a b : P ⟶ X), (∀ x : X, ∃ V : X.Opens, x ∈ V ∧ HasAffineChart a b V) → ∃ (Y : Scheme.{0}) (q : X ⟶ Y), IsFinite q ∧ Flat q ∧ LocallyOfFinitePresentation q ∧ Surjective q ∧ IsPullback a b q q := by
  intro P X a b h
  let 𝒰 : Set X.Opens := {V | HasAffineChart a b V}
  have hU (U : 𝒰) := (hasAffineChart_iff a b U.1).1 U.2
  choose Y q hY hq using hU
  let R : X → X → Prop := fun x y ↦ ∃ p : P, a p = x ∧ b p = y
  have hk (U V : 𝒰) (h : U.1 ≤ V.1) := (hq V).exists_isOpenImmersion (hq U) h
  choose k hk hqk using hk
  obtain ⟨Y', π, em, hem, hcomm, hpre, hsurj⟩ := GlobalTheory.T.glue_quotient_charts_cover R 𝒰
    (fun U hU V hV x hx hx' ↦ by
      obtain ⟨W, h1, h2, h3, h4⟩ := exists_common hU hV x hx hx'
      exact ⟨W, h1, h2, h3, h4⟩)
    (fun x ↦ by
      obtain ⟨V, h1, h2⟩ := h x
      exact ⟨⟨V, h2⟩, h1⟩)
    Y q (fun U ↦ by have := (hq U).effectiveEpi; infer_instance)
    (fun U ↦ by have := (hq U).surjective; exact Surjective.surj)
    (fun U u v ↦ (hq U).apply_eq_iff u v)
    (fun U x y ⟨p, h1, h2⟩ hx ↦ by
      have : p ∈ a ⁻¹ᵁ U.1 := by change a p ∈ U.1; rwa [h1]
      rw [(hq U).stable] at this
      rw [← h2]; exact this)
    k hk hqk
  refine ⟨Y', π, ?_, ?_, ?_, ?_, ?_⟩
  · exact prop_of_charts (@IsFinite.{0}) π _ Y q em hcomm hpre hsurj fun U ↦ (hq U).isFinite
  · exact prop_of_charts @Flat.{0} π _ Y q em hcomm hpre hsurj fun U ↦ (hq U).flat
  · exact prop_of_charts @LocallyOfFinitePresentation.{0} π _ Y q em hcomm hpre hsurj fun U ↦ (hq U).lfp
  · exact prop_of_charts @Surjective.{0} π _ Y q em hcomm hpre hsurj fun U ↦ (hq U).surjective
  · exact _root_.GlobalTheory.CompanionTheory.FreeQuotGlue.isPullback_of_isChart a b π _ Y q em hq hcomm hpre hsurj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientOfAffineChartCover =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientOfAffineChartCoverStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientOfAffineChartCoverStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HasAffineChartId\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientOfAffineChartCover\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot

theorem _root_.GlobalTheory.T.quotient_of_affine_chart_cover : ∀ {P X : Scheme.{0}} (a b : P ⟶ X), (∀ x : X, ∃ V : X.Opens, x ∈ V ∧ HasAffineChart a b V) → ∃ (Y : Scheme.{0}) (q : X ⟶ Y), IsFinite q ∧ Flat q ∧ LocallyOfFinitePresentation q ∧ Surjective q ∧ IsPullback a b q q := by
  first | exact @GlobalTheory.CompanionTheory.FreeQuotGlue.exists_of_affineCharts
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientOfAffineChartCoverStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FreeQuotientSchemeHolds =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FreeQuotientSchemeHolds", "h": "module\n\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FreeActionAffineChartStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitAffineNeighbourhoodStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientOfAffineChartCoverStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Shapes.Connected\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.CompanionTheory.Hypotheses₂
open FreeQuot GlobalTheory.CompanionTheory.FreeQuotProof

theorem FreeQuotientScheme_holds : FreeQuotientScheme := by
  intro S G X _ _ hG hfree horb
  obtain ⟨Y₀, q₀, hfin, hflat, hfp, hsurj, hpb⟩ :=
    GlobalTheory.T.quotient_of_affine_chart_cover _ _ (fun x => by
      obtain ⟨U, hU, hxU⟩ := horb x
      obtain ⟨V, W, hxV, hV, hW, hVW, hinv⟩ :=
        _root_.GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.exists_stable_affine_nbhd G X hG x U hU hxU
      exact ⟨V, hxV,
        GlobalTheory.T.free_action_affine_chart G X hG hfree V W hV hW hVW hinv⟩)
  haveI : IsFinite q₀ := hfin
  haveI : Flat q₀ := hflat
  haveI : LocallyOfFinitePresentation q₀ := hfp
  haveI : Surjective q₀ := hsurj
  have hdesc : ∀ {Z} (g₁ g₂ : Z ⟶ X.left), g₁ ≫ q₀ = g₂ ≫ q₀ → g₁ ≫ X.hom = g₂ ≫ X.hom := by
    intro Z g₁ g₂ hg
    rw [← hpb.lift_fst g₁ g₂ hg]
    conv_rhs => rw [← hpb.lift_snd g₁ g₂ hg]
    simp only [Category.assoc]
    first
      | exact hpb.lift g₁ g₂ hg ≫= ((Over.w _).trans (Over.w _).symm)
  have key : ∀ {Y : Over S} (q : X ⟶ Y), GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot.IsFppfTorsor G q →
      GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot.IsFppfQuotient G q ∧ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot.IsFppfTorsor G q := fun _ h => ⟨h.isFppfQuotient, h⟩
  refine ⟨Over.mk (EffectiveEpi.desc q₀ X.hom hdesc),
    Over.homMk q₀ (EffectiveEpi.fac q₀ X.hom hdesc), key _ ?_⟩
  unfold GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot.IsFppfTorsor
  refine ⟨IsPullback.of_map_of_faithful (Over.forget S) hpb, PUnit, fun _ => X.left, fun _ => q₀,
    fun _ => ⟨hflat, hfp⟩, fun y => ?_, fun _ => ⟨𝟙 _, Category.id_comp _⟩⟩
  obtain ⟨z, hz⟩ := hsurj.surj y
  exact ⟨PUnit.unit, z, hz⟩

end GlobalTheory.CompanionTheory.Hypotheses₂
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FreeQuotientSchemeHolds =====
