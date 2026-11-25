module

public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.GraphAlgebraStandardSmooth
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.GraphChart
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.AffineSpaceGlobalSections
public import Mathlib.RingTheory.Extension.Presentation.Submersive
public import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
public import Mathlib.RingTheory.Smooth.StandardSmooth
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PolynomialRingOverGlobalSections
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.GraphAlgebraSpecSmooth, Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.GraphChartSmooth, Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StandardSmoothLift, Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StandardSmoothLiftRelativeDimension, Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothAffineLiftRelativeDimension, Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothAffinePullbackPresentation, Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SumCoordinatePartialDerivatives, Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothPullbackGraphChart

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.GraphAlgebraSpecSmooth =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.GraphAlgebraSpecSmooth", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.GraphAlgebraStandardSmooth\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

namespace FunctorialResolution.EmbeddedResolution

open CategoryTheory AlgebraicGeometry

variable {R : Type u} [CommRing R] {σ τ : Type u} [Fintype τ] [DecidableEq τ]

theorem smooth_specMap_algebraMap_graphAlgebraAway [Fintype σ]
    (f : τ → MvPolynomial σ R) (v : τ → σ) (hv : Function.Injective v) :
    Smooth (Spec.map (CommRingCat.ofHom (algebraMap (MvPolynomial τ R) (GraphAlgebraAway f v)))) := by
  rw [HasRingHomProperty.Spec_iff (P := @Smooth)]
  have : Algebra.IsStandardSmooth (MvPolynomial τ R) (GraphAlgebraAway f v) :=
    isStandardSmooth_graphAlgebraAway f v hv
  show @Algebra.Smooth _ _ _ _ (algebraMap (MvPolynomial τ R) (GraphAlgebraAway f v)).toAlgebra
  have h : (algebraMap (MvPolynomial τ R) (GraphAlgebraAway f v)).toAlgebra =
      (inferInstance : Algebra (MvPolynomial τ R) (GraphAlgebraAway f v)) :=
    Algebra.algebra_ext _ _ fun _ => rfl
  rw [h]
  refine ⟨?_, ?_⟩ <;> infer_instance

theorem isOpenImmersion_specMap_algebraMap_graphAlgebraAway
    (f : τ → MvPolynomial σ R) (v : τ → σ) :
    IsOpenImmersion
      (Spec.map (CommRingCat.ofHom (algebraMap (GraphAlgebra f) (GraphAlgebraAway f v)))) := by
  have : IsLocalization.Away (graphJacobianMinorDet f v) (GraphAlgebraAway f v) := inferInstance
  exact IsOpenImmersion.of_isLocalization (graphJacobianMinorDet f v) ..

instance instIsOpenImmersionSpecMapGraphAway
    (f : τ → MvPolynomial σ R) (v : τ → σ) :
    IsOpenImmersion
      (Spec.map (CommRingCat.ofHom (algebraMap (GraphAlgebra f) (GraphAlgebraAway f v)))) :=
  isOpenImmersion_specMap_algebraMap_graphAlgebraAway f v

theorem range_specMap_algebraMap_graphAlgebraAway
    (f : τ → MvPolynomial σ R) (v : τ → σ) :
    Set.range ⇑(Spec.map
        (CommRingCat.ofHom (algebraMap (GraphAlgebra f) (GraphAlgebraAway f v)))).base =
      (PrimeSpectrum.basicOpen (graphJacobianMinorDet f v) : Set (PrimeSpectrum (GraphAlgebra f))) := by
  have h := PrimeSpectrum.localization_away_comap_range (R := GraphAlgebra f)
    (GraphAlgebraAway f v) (graphJacobianMinorDet f v)
  exact h

theorem algebraMap_graphAlgebraAway_eq_comp
    (f : τ → MvPolynomial σ R) (v : τ → σ) :
    (algebraMap (MvPolynomial τ R) (GraphAlgebraAway f v)) =
      (algebraMap (GraphAlgebra f) (GraphAlgebraAway f v)).comp
        (algebraMap (MvPolynomial τ R) (GraphAlgebra f)) :=
  IsScalarTower.algebraMap_eq (MvPolynomial τ R) (GraphAlgebra f) (GraphAlgebraAway f v)

theorem specMap_algebraMap_graphAlgebraAway_eq_comp
    (f : τ → MvPolynomial σ R) (v : τ → σ) :
    Spec.map (CommRingCat.ofHom (algebraMap (MvPolynomial τ R) (GraphAlgebraAway f v))) =
      Spec.map (CommRingCat.ofHom (algebraMap (GraphAlgebra f) (GraphAlgebraAway f v))) ≫
        Spec.map (CommRingCat.ofHom (algebraMap (MvPolynomial τ R) (GraphAlgebra f))) := by
  rw [algebraMap_graphAlgebraAway_eq_comp f v, CommRingCat.ofHom_comp, Spec.map_comp]

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.GraphAlgebraSpecSmooth =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.GraphChartSmooth =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.GraphChartSmooth", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.GraphChart\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.GraphAlgebraStandardSmooth\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.AffineSpaceGlobalSections\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.GraphAlgebraSpecSmooth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

def polynomialOfSection (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (j : Fin q) : MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin n)) k :=
  (mvPolynomialEquivGlobalSections k (ULift.{u, 0} (Fin M ⊕ Fin n))).symm (F j)

theorem mvPolynomialEquivGlobalSections_polynomialOfSection (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (j : Fin q) :
    mvPolynomialEquivGlobalSections k (ULift.{u, 0} (Fin M ⊕ Fin n)) (polynomialOfSection k M n q F j) = F j :=
  (mvPolynomialEquivGlobalSections k (ULift.{u, 0} (Fin M ⊕ Fin n))).apply_symm_apply (F j)

def sumVariableMap (M n q : ℕ) (s : Fin q → Fin n) :
    ULift.{u, 0} (Fin M ⊕ Fin q) → ULift.{u, 0} (Fin M ⊕ Fin n) :=
  fun i =>
    ULift.up (Sum.elim (fun a : Fin M => Sum.inl a) (fun j : Fin q => Sum.inr (s j)) i.down)

theorem sumVariableMap_injective (M n q : ℕ) (s : Fin q → Fin n) (hs : Function.Injective s) :
    Function.Injective (sumVariableMap.{u} M n q s) := by
  rintro ⟨x⟩ ⟨y⟩ h
  have h' : Sum.elim (fun a : Fin M => Sum.inl a) (fun j : Fin q => Sum.inr (s j)) x
      = Sum.elim (fun a : Fin M => Sum.inl a) (fun j : Fin q => Sum.inr (s j)) y :=
    congrArg ULift.down h
  have hxy : x = y := by
    cases x with
    | inl a =>
      cases y with
      | inl b =>
        have hab : a = b := by simpa using h'
        exact congrArg Sum.inl hab
      | inr j => simp at h'
    | inr i =>
      cases y with
      | inl b => simp at h'
      | inr j =>
        simp only [Sum.elim_inr, Sum.inr.injEq] at h'
        exact congrArg Sum.inr (hs h')
  exact congrArg ULift.up hxy

def jacobianMatrixOfSections (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) :
    Matrix (Fin q) (Fin q) (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin n)) k) :=
  Matrix.of fun i j =>
    (MvPolynomial.pderiv (ULift.up (Sum.inr (s i)) : ULift.{u, 0} (Fin M ⊕ Fin n)))
      (polynomialOfSection k M n q F j)

theorem jacobianMatrixOfSections_apply (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) (i j : Fin q) :
    jacobianMatrixOfSections k M n q F s i j =
      (MvPolynomial.pderiv (ULift.up (Sum.inr (s i)) : ULift.{u, 0} (Fin M ⊕ Fin n)))
        (polynomialOfSection k M n q F j) := rfl

def graphCoordinates (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤))) :
    ULift.{u, 0} (Fin M ⊕ Fin q) → MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin n)) k :=
  fun i =>
    Sum.elim
      (fun a : Fin M => MvPolynomial.X (ULift.up (Sum.inl a) : ULift.{u, 0} (Fin M ⊕ Fin n)))
      (fun j : Fin q => polynomialOfSection k M n q F j) i.down

theorem graphCoordinates_inl (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (a : Fin M) :
    graphCoordinates k M n q F (ULift.up (Sum.inl a)) =
      MvPolynomial.X (ULift.up (Sum.inl a) : ULift.{u, 0} (Fin M ⊕ Fin n)) := rfl

theorem graphCoordinates_inr (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (j : Fin q) :
    graphCoordinates k M n q F (ULift.up (Sum.inr j)) = polynomialOfSection k M n q F j := rfl

private theorem det_graphJacobianMinorMatrix_eq_det_jacobianMatrix (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) :
    (graphJacobianMinorMatrix (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s)).det =
      (jacobianMatrixOfSections k M n q F s).det := by
  have hup : ∀ x y : Fin M ⊕ Fin n,
      (ULift.up x : ULift.{u, 0} (Fin M ⊕ Fin n)) = ULift.up y → x = y :=
    fun _ _ h => congrArg ULift.down h
  have hXne : ∀ i j : ULift.{u, 0} (Fin M ⊕ Fin n), i ≠ j →
      (MvPolynomial.pderiv i)
          (MvPolynomial.X j : MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin n)) k) = 0 := by
    intro i j h
    simp [MvPolynomial.pderiv_X, Ne.symm h]
  have key :
      (graphJacobianMinorMatrix (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s)).submatrix
          ⇑(Equiv.ulift.symm : (Fin M ⊕ Fin q) ≃ ULift.{u, 0} (Fin M ⊕ Fin q))
          ⇑(Equiv.ulift.symm : (Fin M ⊕ Fin q) ≃ ULift.{u, 0} (Fin M ⊕ Fin q)) =
        Matrix.fromBlocks
          (1 : Matrix (Fin M) (Fin M) (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin n)) k))
          (Matrix.of fun (a : Fin M) (j : Fin q) =>
            (MvPolynomial.pderiv (ULift.up (Sum.inl a) : ULift.{u, 0} (Fin M ⊕ Fin n)))
              (polynomialOfSection k M n q F j))
          0 (jacobianMatrixOfSections k M n q F s) := by
    apply Matrix.ext
    intro x y
    simp only [Matrix.submatrix_apply, graphJacobianMinorMatrix_apply]
    cases x with
    | inl a =>
      cases y with
      | inl b =>
        show (MvPolynomial.pderiv (ULift.up (Sum.inl a) : ULift.{u, 0} (Fin M ⊕ Fin n)))
              (MvPolynomial.X (ULift.up (Sum.inl b) : ULift.{u, 0} (Fin M ⊕ Fin n))) =
            (1 : Matrix (Fin M) (Fin M) (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin n)) k)) a b
        by_cases h : a = b
        · subst h
          rw [MvPolynomial.pderiv_X_self, Matrix.one_apply_eq]
        · rw [Matrix.one_apply_ne h]
          exact hXne _ _ fun hc => h (Sum.inl_injective (hup _ _ hc))
      | inr j => rfl
    | inr i =>
      cases y with
      | inl b =>
        show (MvPolynomial.pderiv (ULift.up (Sum.inr (s i)) : ULift.{u, 0} (Fin M ⊕ Fin n)))
              (MvPolynomial.X (ULift.up (Sum.inl b) : ULift.{u, 0} (Fin M ⊕ Fin n))) = 0
        refine hXne _ _ ?_
        intro hc
        have hc' := hup _ _ hc
        simp at hc'
      | inr j => rfl
  have hdet := Matrix.det_submatrix_equiv_self
      (Equiv.ulift.symm : (Fin M ⊕ Fin q) ≃ ULift.{u, 0} (Fin M ⊕ Fin q))
      (graphJacobianMinorMatrix (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s))
  rw [key, Matrix.det_fromBlocks_zero₂₁, Matrix.det_one, one_mul] at hdet
  exact hdet.symm

theorem graphJacobianMinorDet_graphCoordinates (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) :
    graphJacobianMinorDet (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s) =
      graphAlgebraEquiv (graphCoordinates k M n q F) (jacobianMatrixOfSections k M n q F s).det := by
  have h := det_graphJacobianMinorMatrix_eq_det_jacobianMatrix k M n q F s
  show graphAlgebraEquiv (graphCoordinates k M n q F)
      (graphJacobianMinorMatrix (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s)).det =
    graphAlgebraEquiv (graphCoordinates k M n q F) (jacobianMatrixOfSections k M n q F s).det
  rw [h]

def jacobianDetSection (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) :
    ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)) :=
  mvPolynomialEquivGlobalSections k (ULift.{u, 0} (Fin M ⊕ Fin n)) (jacobianMatrixOfSections k M n q F s).det

def specGraphAwayToSpecGraphAlgebra (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) :
    Spec (CommRingCat.of (GraphAlgebraAway (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s))) ⟶
      Spec (CommRingCat.of (GraphAlgebra (graphCoordinates k M n q F))) :=
  Spec.map (CommRingCat.ofHom
    (algebraMap (GraphAlgebra (graphCoordinates k M n q F))
      (GraphAlgebraAway (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s))))

theorem isOpenImmersion_specGraphAwayToSpecGraphAlgebra (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) :
    IsOpenImmersion (specGraphAwayToSpecGraphAlgebra k M n q F s) := by
  unfold specGraphAwayToSpecGraphAlgebra
  infer_instance

instance instIsOpenImmersionGraphAwaySpecHom (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) :
    IsOpenImmersion (specGraphAwayToSpecGraphAlgebra k M n q F s) :=
  isOpenImmersion_specGraphAwayToSpecGraphAlgebra k M n q F s

def basicOpenToSpecGraphAlgebra (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) :
    ((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
        (jacobianDetSection k M n q F s)).toScheme ⟶
      Spec (CommRingCat.of (GraphAlgebra (graphCoordinates k M n q F))) :=
  ((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
      (jacobianDetSection k M n q F s)).ι ≫
    (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin n))).hom ≫
      Spec.map (CommRingCat.ofHom
        ((graphAlgebraEquiv (graphCoordinates k M n q F)).symm.toRingEquiv.toRingHom))

private def specIsoOfRingEquiv {A B : Type u} [CommRing A] [CommRing B] (e : A ≃+* B) :
    Spec (CommRingCat.of B) ≅ Spec (CommRingCat.of A) :=
  Scheme.Spec.mapIso e.toCommRingCatIso.op

private theorem isIso_spec_map_ringEquiv {A B : Type u} [CommRing A] [CommRing B]
    (e : A ≃+* B) : IsIso (Spec.map (CommRingCat.ofHom e.toRingHom)) := by
  refine ⟨(specIsoOfRingEquiv e).inv, ?_, ?_⟩
  · exact (specIsoOfRingEquiv e).hom_inv_id
  · exact (specIsoOfRingEquiv e).inv_hom_id

theorem isOpenImmersion_basicOpenToSpecGraphAlgebra (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) :
    IsOpenImmersion (basicOpenToSpecGraphAlgebra k M n q F s) := by
  have : IsIso (Spec.map (CommRingCat.ofHom
      ((graphAlgebraEquiv (graphCoordinates k M n q F)).symm.toRingEquiv.toRingHom))) :=
    isIso_spec_map_ringEquiv ((graphAlgebraEquiv (graphCoordinates k M n q F)).symm.toRingEquiv)
  unfold basicOpenToSpecGraphAlgebra
  infer_instance

instance instIsOpenImmersionGraphChartHom (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) :
    IsOpenImmersion (basicOpenToSpecGraphAlgebra k M n q F s) :=
  isOpenImmersion_basicOpenToSpecGraphAlgebra k M n q F s

private theorem base_comp_apply {X Y Z : Scheme.{u}} (f : X ⟶ Y) (g : Y ⟶ Z) (x : ↥X) :
    ⇑(f ≫ g).base x = ⇑g.base (⇑f.base x) := rfl

private theorem range_base_comp {X Y Z : Scheme.{u}} (f : X ⟶ Y) (g : Y ⟶ Z) :
    Set.range ⇑(f ≫ g).base = ⇑g.base '' Set.range ⇑f.base := by
  ext z
  constructor
  · rintro ⟨x, rfl⟩
    exact ⟨⇑f.base x, ⟨x, rfl⟩, (base_comp_apply f g x).symm⟩
  · rintro ⟨y, ⟨x, rfl⟩, rfl⟩
    exact ⟨x, base_comp_apply f g x⟩

private theorem image_base_comp {X Y Z : Scheme.{u}} (f : X ⟶ Y) (g : Y ⟶ Z) (S : Set ↥X) :
    ⇑(f ≫ g).base '' S = ⇑g.base '' (⇑f.base '' S) := by
  ext z
  constructor
  · rintro ⟨x, hx, rfl⟩
    exact ⟨⇑f.base x, ⟨x, hx, rfl⟩, (base_comp_apply f g x).symm⟩
  · rintro ⟨y, ⟨x, hx, rfl⟩, rfl⟩
    exact ⟨x, hx, base_comp_apply f g x⟩

private theorem image_hom_preimage_eq {X Y : Scheme.{u}} (e : X ≅ Y) (U : Y.Opens) :
    ⇑e.hom.base '' ((e.hom ⁻¹ᵁ U : X.Opens) : Set ↥X) = (U : Set ↥Y) := by
  ext y
  constructor
  · rintro ⟨x, hx, rfl⟩
    exact hx
  · intro hy
    refine ⟨⇑e.inv.base y, ?_, Scheme.inv_hom_apply e y⟩
    show ⇑e.hom.base (⇑e.inv.base y) ∈ (U : Set ↥Y)
    rw [Scheme.inv_hom_apply e y]
    exact hy

private theorem image_hom_eq_preimage_inv {X Y : Scheme.{u}} (e : X ≅ Y) (U : X.Opens) :
    ⇑e.hom.base '' ((U : X.Opens) : Set ↥X) = ((e.inv ⁻¹ᵁ U : Y.Opens) : Set ↥Y) := by
  ext y
  constructor
  · rintro ⟨x, hx, rfl⟩
    show ⇑e.inv.base (⇑e.hom.base x) ∈ ((U : X.Opens) : Set ↥X)
    rw [Scheme.hom_inv_apply e x]
    exact hx
  · intro hy
    exact ⟨⇑e.inv.base y, hy, Scheme.inv_hom_apply e y⟩

private theorem image_basicOpen_spec_map_ringEquiv {A B : Type u} [CommRing A] [CommRing B]
    (e : A ≃+* B) (a : A) :
    ⇑(Spec.map (CommRingCat.ofHom e.toRingHom)).base ''
        (PrimeSpectrum.basicOpen (e a) : Set (PrimeSpectrum B))
      = (PrimeSpectrum.basicOpen a : Set (PrimeSpectrum A)) := by
  have h2 : (PrimeSpectrum.basicOpen (e a) : Opens (PrimeSpectrum B))
      = (Spec (CommRingCat.of B)).basicOpen
          ((Scheme.ΓSpecIso (CommRingCat.of B)).inv (e a)) := by
    have h2' : (Spec (CommRingCat.of B)).basicOpen
          ((Scheme.ΓSpecIso (CommRingCat.of B)).inv (e a))
        = (PrimeSpectrum.basicOpen (e a) : Opens (PrimeSpectrum B)) :=
      basicOpen_eq_of_affine _
    exact h2'.symm
  have h3 : Spec.map (CommRingCat.ofHom e.symm.toRingHom) ⁻¹ᵁ
        ((Spec (CommRingCat.of B)).basicOpen
          ((Scheme.ΓSpecIso (CommRingCat.of B)).inv (e a)))
      = (Spec (CommRingCat.of A)).basicOpen
          ((Scheme.Hom.appTop (Spec.map (CommRingCat.ofHom e.symm.toRingHom)))
            ((Scheme.ΓSpecIso (CommRingCat.of B)).inv (e a))) :=
    Scheme.preimage_basicOpen (Spec.map (CommRingCat.ofHom e.symm.toRingHom)) _
  have h4 : (Scheme.Hom.appTop (Spec.map (CommRingCat.ofHom e.symm.toRingHom)))
        ((Scheme.ΓSpecIso (CommRingCat.of B)).inv (e a))
      = (Scheme.ΓSpecIso (CommRingCat.of A)).inv ((e.symm.toRingHom) (e a)) :=
    (RingHom.congr_fun (congrArg CommRingCat.Hom.hom
      (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom e.symm.toRingHom))) (e a)).symm
  have h5 : (e.symm.toRingHom) (e a) = a := by simp
  have h6 : (Spec (CommRingCat.of A)).basicOpen
          ((Scheme.ΓSpecIso (CommRingCat.of A)).inv a)
      = (PrimeSpectrum.basicOpen a : Opens (PrimeSpectrum A)) :=
    basicOpen_eq_of_affine _
  have hop : (Spec.map (CommRingCat.ofHom e.symm.toRingHom) ⁻¹ᵁ
        (PrimeSpectrum.basicOpen (e a) : Opens (PrimeSpectrum B)))
      = (PrimeSpectrum.basicOpen a : Opens (PrimeSpectrum A)) := by
    rw [h2, h3, h4, h5]
    exact h6
  have h1 : ⇑(Spec.map (CommRingCat.ofHom e.toRingHom)).base ''
        (PrimeSpectrum.basicOpen (e a) : Set (PrimeSpectrum B))
      = ((Spec.map (CommRingCat.ofHom e.symm.toRingHom) ⁻¹ᵁ
          (PrimeSpectrum.basicOpen (e a) : Opens (PrimeSpectrum B))) :
          Set ↥(Spec (CommRingCat.of A))) :=
    image_hom_eq_preimage_inv (specIsoOfRingEquiv e) (PrimeSpectrum.basicOpen (e a))
  exact h1.trans (congrArg (fun U : (Spec (CommRingCat.of A)).Opens =>
    (U : Set ↥(Spec (CommRingCat.of A)))) hop)

theorem range_specGraphAwayToSpecGraphAlgebra_eq (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) :
    Set.range ⇑(specGraphAwayToSpecGraphAlgebra k M n q F s).base =
      Set.range ⇑(basicOpenToSpecGraphAlgebra k M n q F s).base := by
  have hL : Set.range ⇑(specGraphAwayToSpecGraphAlgebra k M n q F s).base =
      (PrimeSpectrum.basicOpen
          (graphJacobianMinorDet (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s)) :
        Set (PrimeSpectrum (GraphAlgebra (graphCoordinates k M n q F)))) :=
    range_specMap_algebraMap_graphAlgebraAway (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s)
  have hR1 : Set.range ⇑(basicOpenToSpecGraphAlgebra k M n q F s).base
      = ⇑((affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin n))).hom ≫
            Spec.map (CommRingCat.ofHom
              ((graphAlgebraEquiv (graphCoordinates k M n q F)).symm.toRingEquiv.toRingHom))).base ''
          Set.range ⇑(((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
            (jacobianDetSection k M n q F s)).ι).base :=
    range_base_comp
      (((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
        (jacobianDetSection k M n q F s)).ι)
      ((affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin n))).hom ≫
        Spec.map (CommRingCat.ofHom
          ((graphAlgebraEquiv (graphCoordinates k M n q F)).symm.toRingEquiv.toRingHom)))
  have hD : Set.range ⇑(((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
        (jacobianDetSection k M n q F s)).ι).base
      = (((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
            (jacobianDetSection k M n q F s) :
          (affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).Opens) :
          Set ↥(affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n)))) :=
    Scheme.Opens.range_ι _
  have hDopen : (affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
        (jacobianDetSection k M n q F s)
      = (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin n))).hom ⁻¹ᵁ
          (PrimeSpectrum.basicOpen (jacobianMatrixOfSections k M n q F s).det) :=
    mvPolynomialEquivGlobalSections_basicOpen_primeSpectrum k (ULift.{u, 0} (Fin M ⊕ Fin n))
      (jacobianMatrixOfSections k M n q F s).det
  have himg1 : ⇑(affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin n))).hom.base ''
        (((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
            (jacobianDetSection k M n q F s) :
          (affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).Opens) :
          Set ↥(affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))))
      = (PrimeSpectrum.basicOpen (jacobianMatrixOfSections k M n q F s).det :
          Set (PrimeSpectrum (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin n)) k))) := by
    rw [hDopen]
    exact image_hom_preimage_eq (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin n)))
      (PrimeSpectrum.basicOpen (jacobianMatrixOfSections k M n q F s).det)
  have hdet : (jacobianMatrixOfSections k M n q F s).det
      = ((graphAlgebraEquiv (graphCoordinates k M n q F)).symm.toRingEquiv)
          (graphJacobianMinorDet (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s)) := by
    rw [graphJacobianMinorDet_graphCoordinates]
    simp
  have himg2 : ⇑(Spec.map (CommRingCat.ofHom
        ((graphAlgebraEquiv (graphCoordinates k M n q F)).symm.toRingEquiv.toRingHom))).base ''
        (PrimeSpectrum.basicOpen (jacobianMatrixOfSections k M n q F s).det :
          Set (PrimeSpectrum (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin n)) k)))
      = (PrimeSpectrum.basicOpen
            (graphJacobianMinorDet (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s)) :
          Set (PrimeSpectrum (GraphAlgebra (graphCoordinates k M n q F)))) := by
    rw [hdet]
    exact image_basicOpen_spec_map_ringEquiv ((graphAlgebraEquiv (graphCoordinates k M n q F)).symm.toRingEquiv)
      (graphJacobianMinorDet (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s))
  have hrange : Set.range ⇑(basicOpenToSpecGraphAlgebra k M n q F s).base
      = (PrimeSpectrum.basicOpen
            (graphJacobianMinorDet (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s)) :
          Set (PrimeSpectrum (GraphAlgebra (graphCoordinates k M n q F)))) := by
    rw [hR1, hD, image_base_comp, himg1]
    exact himg2
  exact hL.trans hrange.symm

def specGraphAwayIsoBasicOpen (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) :
    Spec (CommRingCat.of (GraphAlgebraAway (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s))) ≅
      ((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
        (jacobianDetSection k M n q F s)).toScheme :=
  IsOpenImmersion.isoOfRangeEq (specGraphAwayToSpecGraphAlgebra k M n q F s) (basicOpenToSpecGraphAlgebra k M n q F s)
    (range_specGraphAwayToSpecGraphAlgebra_eq k M n q F s)

theorem specGraphAwayIsoBasicOpen_inv_comp (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) :
    (specGraphAwayIsoBasicOpen k M n q F s).inv ≫ specGraphAwayToSpecGraphAlgebra k M n q F s =
      basicOpenToSpecGraphAlgebra k M n q F s := by
  exact IsOpenImmersion.isoOfRangeEq_inv_fac (specGraphAwayToSpecGraphAlgebra k M n q F s)
    (basicOpenToSpecGraphAlgebra k M n q F s) (range_specGraphAwayToSpecGraphAlgebra_eq k M n q F s)

def specGraphAwayToAffineSpace (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) :
    Spec (CommRingCat.of (GraphAlgebraAway (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s))) ⟶
      Spec (CommRingCat.of (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin q)) k)) :=
  Spec.map (CommRingCat.ofHom
    (algebraMap (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin q)) k)
      (GraphAlgebraAway (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s))))

private theorem graphAlgebraEquiv_symm_comp_algebraMap_X (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (i : ULift.{u, 0} (Fin M ⊕ Fin q)) :
    (((graphAlgebraEquiv (graphCoordinates k M n q F)).symm.toRingEquiv.toRingHom).comp
        (algebraMap (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin q)) k)
          (GraphAlgebra (graphCoordinates k M n q F)))) (MvPolynomial.X i)
      = graphCoordinates k M n q F i := by
  simp [algebraMap_graphAlgebra]

private theorem graphAlgebraEquiv_symm_comp_algebraMap_comp_C (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤))) :
    ((((graphAlgebraEquiv (graphCoordinates k M n q F)).symm.toRingEquiv.toRingHom).comp
        (algebraMap (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin q)) k)
          (GraphAlgebra (graphCoordinates k M n q F)))).comp
        (MvPolynomial.C : k →+* MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin q)) k))
      = (MvPolynomial.C : k →+* MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin n)) k) := by
  ext c
  simp [algebraMap_graphAlgebra, MvPolynomial.algebraMap_eq]

private theorem appTop_comp_apply {X Y Z : Scheme.{u}} (a : X ⟶ Y) (b : Y ⟶ Z)
    (x : ↑(Z.presheaf.obj (Opposite.op ⊤))) :
    (Scheme.Hom.appTop (a ≫ b)) x
      = (Scheme.Hom.appTop a) ((Scheme.Hom.appTop b) x) := rfl

theorem graphMorphismToAffineSpace_basicOpen_jacobianDetSection_eq (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) :
    graphMorphismToAffineSpace k M n q F
        ((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
          (jacobianDetSection k M n q F s)) =
      (specGraphAwayIsoBasicOpen k M n q F s).inv ≫ specGraphAwayToAffineSpace k M n q F s ≫
        (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin q))).inv := by
  have hgc : basicOpenToSpecGraphAlgebra k M n q F s =
      ((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
          (jacobianDetSection k M n q F s)).ι ≫
        (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin n))).hom ≫
          Spec.map (CommRingCat.ofHom
            ((graphAlgebraEquiv (graphCoordinates k M n q F)).symm.toRingEquiv.toRingHom)) := rfl
  have h1 : specGraphAwayToAffineSpace k M n q F s =
      specGraphAwayToSpecGraphAlgebra k M n q F s ≫
        Spec.map (CommRingCat.ofHom
          (algebraMap (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin q)) k)
            (GraphAlgebra (graphCoordinates k M n q F)))) :=
    specMap_algebraMap_graphAlgebraAway_eq_comp (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s)
  have hre : ∀ {Z : Scheme.{u}}
      (g : Spec (CommRingCat.of (GraphAlgebra (graphCoordinates k M n q F))) ⟶ Z),
      (specGraphAwayIsoBasicOpen k M n q F s).inv ≫ specGraphAwayToSpecGraphAlgebra k M n q F s ≫ g
        = basicOpenToSpecGraphAlgebra k M n q F s ≫ g := by
    intro Z g
    rw [← Category.assoc, specGraphAwayIsoBasicOpen_inv_comp]
  have key : (specGraphAwayIsoBasicOpen k M n q F s).inv ≫ specGraphAwayToAffineSpace k M n q F s ≫
        (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin q))).inv
      = ((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
            (jacobianDetSection k M n q F s)).ι ≫
          (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin n))).hom ≫
            Spec.map (CommRingCat.ofHom
              (((graphAlgebraEquiv (graphCoordinates k M n q F)).symm.toRingEquiv.toRingHom).comp
                (algebraMap (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin q)) k)
                  (GraphAlgebra (graphCoordinates k M n q F))))) ≫
              (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin q))).inv := by
    rw [h1, Category.assoc, hre, hgc, CommRingCat.ofHom_comp, Spec.map_comp]
    simp only [Category.assoc]
  have hτ : (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin q))).inv ≫
      affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin q))
      = Spec.map (CommRingCat.ofHom
          (MvPolynomial.C : k →+* MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin q)) k)) := by
    simp
  have hσ : (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin n))).inv ≫
      affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin n))
      = Spec.map (CommRingCat.ofHom
          (MvPolynomial.C : k →+* MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin n)) k)) := by
    simp
  have hA : (((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
            (jacobianDetSection k M n q F s)).ι ≫
          (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin n))).hom ≫
            Spec.map (CommRingCat.ofHom
              (((graphAlgebraEquiv (graphCoordinates k M n q F)).symm.toRingEquiv.toRingHom).comp
                (algebraMap (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin q)) k)
                  (GraphAlgebra (graphCoordinates k M n q F))))) ≫
              (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin q))).inv) ≫
        affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin q))
      = ((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
            (jacobianDetSection k M n q F s)).ι ≫
          affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin n)) := by
    simp only [Category.assoc]
    rw [hτ, ← Spec.map_comp, ← CommRingCat.ofHom_comp, graphAlgebraEquiv_symm_comp_algebraMap_comp_C k M n q F, ← hσ,
      Iso.hom_inv_id_assoc]
  have hB : ∀ i : ULift.{u, 0} (Fin M ⊕ Fin q),
      (Scheme.Hom.appTop (graphMorphismToAffineSpace k M n q F
          ((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
            (jacobianDetSection k M n q F s))))
        (AffineSpace.coord (Spec (CommRingCat.of k)) i)
      = (Scheme.Hom.appTop (((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
            (jacobianDetSection k M n q F s)).ι ≫
          (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin n))).hom ≫
            Spec.map (CommRingCat.ofHom
              (((graphAlgebraEquiv (graphCoordinates k M n q F)).symm.toRingEquiv.toRingHom).comp
                (algebraMap (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin q)) k)
                  (GraphAlgebra (graphCoordinates k M n q F))))) ≫
              (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin q))).inv))
          (AffineSpace.coord (Spec (CommRingCat.of k)) i) := by
    intro i
    have e1 : (Scheme.Hom.appTop (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin q))).inv)
          (AffineSpace.coord (Spec (CommRingCat.of k)) i)
        = (Scheme.ΓSpecIso
            (CommRingCat.of (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin q)) k))).inv
            (MvPolynomial.X i) := by
      have h : (Scheme.ΓSpecIso
            (CommRingCat.of (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin q)) k))).hom
          ((Scheme.Hom.appTop (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin q))).inv)
            (AffineSpace.coord (Spec (CommRingCat.of k)) i))
          = MvPolynomial.X i :=
        (mvPolynomialEquivGlobalSections_symm_apply k (ULift.{u, 0} (Fin M ⊕ Fin q))
            (AffineSpace.coord (Spec (CommRingCat.of k)) i)).symm.trans
          (mvPolynomialEquivGlobalSections_symm_coord k (ULift.{u, 0} (Fin M ⊕ Fin q)) i)
      rw [← h, Iso.hom_inv_id_apply]
    have e2 : (Scheme.Hom.appTop (Spec.map (CommRingCat.ofHom
          (((graphAlgebraEquiv (graphCoordinates k M n q F)).symm.toRingEquiv.toRingHom).comp
            (algebraMap (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin q)) k)
              (GraphAlgebra (graphCoordinates k M n q F)))))))
          ((Scheme.ΓSpecIso
            (CommRingCat.of (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin q)) k))).inv
            (MvPolynomial.X i))
        = (Scheme.ΓSpecIso
            (CommRingCat.of (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin n)) k))).inv
            (graphCoordinates k M n q F i) := by
      rw [← graphAlgebraEquiv_symm_comp_algebraMap_X k M n q F i]
      exact (RingHom.congr_fun (congrArg CommRingCat.Hom.hom
        (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom
          (((graphAlgebraEquiv (graphCoordinates k M n q F)).symm.toRingEquiv.toRingHom).comp
            (algebraMap (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin q)) k)
              (GraphAlgebra (graphCoordinates k M n q F)))))))
        (MvPolynomial.X i)).symm
    have e3 : (Scheme.Hom.appTop (affineSpaceIsoSpecMvPolynomial k (ULift.{u, 0} (Fin M ⊕ Fin n))).hom)
          ((Scheme.ΓSpecIso
            (CommRingCat.of (MvPolynomial (ULift.{u, 0} (Fin M ⊕ Fin n)) k))).inv
            (graphCoordinates k M n q F i))
        = mvPolynomialEquivGlobalSections k (ULift.{u, 0} (Fin M ⊕ Fin n)) (graphCoordinates k M n q F i) :=
      (mvPolynomialEquivGlobalSections_apply k (ULift.{u, 0} (Fin M ⊕ Fin n)) (graphCoordinates k M n q F i)).symm
    rw [appTop_comp_apply, appTop_comp_apply, appTop_comp_apply, e1, e2, e3]
    obtain ⟨i⟩ := i
    cases i with
    | inl a =>
      rw [graphCoordinates_inl, mvPolynomialEquivGlobalSections_X]
      exact graphMorphismToAffineSpace_appTop_coord_inl k M n q F _ a
    | inr j =>
      rw [graphCoordinates_inr, mvPolynomialEquivGlobalSections_polynomialOfSection]
      exact graphMorphismToAffineSpace_appTop_coord_inr k M n q F _ j
  rw [key]
  apply AffineSpace.hom_ext
  · exact (graphMorphismToAffineSpace_comp_affineSpaceIndexedByToSpec k M n q F _).trans hA.symm
  · exact hB

theorem smooth_graphMorphismToAffineSpace_basicOpen (k : Type u) [Field k] (M n q : ℕ)
    (F : Fin q →
      ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).presheaf.obj (Opposite.op ⊤)))
    (s : Fin q → Fin n) (hs : Function.Injective s) :
    Smooth (graphMorphismToAffineSpace k M n q F
      ((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M ⊕ Fin n))).basicOpen
        (jacobianDetSection k M n q F s))) := by
  have hsm : Smooth (specGraphAwayToAffineSpace k M n q F s) :=
    smooth_specMap_algebraMap_graphAlgebraAway (graphCoordinates k M n q F) (sumVariableMap.{u} M n q s)
      (sumVariableMap_injective M n q s hs)
  rw [graphMorphismToAffineSpace_basicOpen_jacobianDetSection_eq k M n q F s]
  infer_instance

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.GraphChartSmooth =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StandardSmoothLift =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StandardSmoothLift", "h": "module\n\npublic import Mathlib.RingTheory.Extension.Presentation.Submersive\npublic import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

open scoped TensorProduct

namespace FunctorialResolution.EmbeddedResolution
namespace StandardSmoothLift

universe u

section

variable {S R B : Type u} [CommRing S] [CommRing R] [CommRing B]
  [Algebra S R] [Algebra R B] {ι σ : Type} [Finite σ]
  (hsurj : Function.Surjective (algebraMap S R))
  (P : Algebra.SubmersivePresentation R B ι σ)

noncomputable def liftedRelation (j : σ) : MvPolynomial ι S :=
  Function.surjInv (MvPolynomial.map_surjective (algebraMap S R) hsurj) (P.relation j)

theorem map_liftedRelation (j : σ) :
    MvPolynomial.map (algebraMap S R) (liftedRelation hsurj P j) = P.relation j :=
  Function.surjInv_eq (MvPolynomial.map_surjective (algebraMap S R) hsurj) (P.relation j)

abbrev LiftedQuotient : Type u :=
  MvPolynomial ι S ⧸ Ideal.span (Set.range (liftedRelation hsurj P))

private theorem aeval_mk_X_liftedQuotient_surjective :
    Function.Surjective
      ⇑(MvPolynomial.aeval (fun i : ι =>
          Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P))) (MvPolynomial.X i)) :
        MvPolynomial ι S →ₐ[S] LiftedQuotient hsurj P) := by
  have hEq : (MvPolynomial.aeval (fun i : ι =>
      Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P))) (MvPolynomial.X i)) :
        MvPolynomial ι S →ₐ[S] LiftedQuotient hsurj P) =
      Ideal.Quotient.mkₐ S (Ideal.span (Set.range (liftedRelation hsurj P))) :=
    MvPolynomial.algHom_ext (fun i => by simp)
  have h : ∀ q : MvPolynomial ι S,
      (MvPolynomial.aeval (fun i : ι =>
        Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P))) (MvPolynomial.X i)) :
        MvPolynomial ι S →ₐ[S] LiftedQuotient hsurj P) q =
      Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P))) q := by
    intro q
    rw [hEq]
    rfl
  intro x
  obtain ⟨q, rfl⟩ := Ideal.Quotient.mk_surjective x
  exact ⟨q, h q⟩

noncomputable def liftedGenerators : Algebra.Generators S (LiftedQuotient hsurj P) ι where
  val i := Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P))) (MvPolynomial.X i)
  σ' := Function.surjInv (by exact aeval_mk_X_liftedQuotient_surjective hsurj P)
  aeval_val_σ' := Function.surjInv_eq (by exact aeval_mk_X_liftedQuotient_surjective hsurj P)

private theorem span_range_liftedRelation_eq_ker :
    Ideal.span (Set.range (liftedRelation hsurj P)) = (liftedGenerators hsurj P).ker := by
  have hval : (liftedGenerators hsurj P).val =
      fun i : ι => Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P)))
        (MvPolynomial.X i) := rfl
  have h : (MvPolynomial.aeval (liftedGenerators hsurj P).val :
        MvPolynomial ι S →ₐ[S] LiftedQuotient hsurj P) =
      Ideal.Quotient.mkₐ S (Ideal.span (Set.range (liftedRelation hsurj P))) :=
    MvPolynomial.algHom_ext fun i => by
      simp [hval]
  have hq : ∀ q : MvPolynomial ι S,
      (MvPolynomial.aeval (liftedGenerators hsurj P).val) q =
        Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P))) q :=
    fun q => DFunLike.congr_fun h q
  refine Ideal.ext fun q => ?_
  have hmem : q ∈ (liftedGenerators hsurj P).ker ↔
      (MvPolynomial.aeval (liftedGenerators hsurj P).val) q = 0 := Iff.rfl
  rw [hmem, hq q, Ideal.Quotient.eq_zero_iff_mem]

noncomputable def liftedPresentation : Algebra.Presentation S (LiftedQuotient hsurj P) ι σ where
  toGenerators := liftedGenerators hsurj P
  relation := liftedRelation hsurj P
  span_range_relation_eq_ker := by exact span_range_liftedRelation_eq_ker hsurj P

noncomputable def liftedPreSubmersivePresentation :
    Algebra.PreSubmersivePresentation S (LiftedQuotient hsurj P) ι σ where
  toPresentation := liftedPresentation hsurj P
  map := P.map
  map_inj := P.map_inj

@[simp] theorem liftedPreSubmersivePresentation_relation (j : σ) :
    (liftedPreSubmersivePresentation hsurj P).relation j = liftedRelation hsurj P j := rfl

@[simp] theorem liftedPreSubmersivePresentation_map :
    (liftedPreSubmersivePresentation hsurj P).map = P.map := rfl

abbrev LiftedAlgebra : Type u := Localization.Away (liftedPreSubmersivePresentation hsurj P).jacobian

private theorem isUnit_jacobian_localizationAway_comp :
    IsUnit (Algebra.PreSubmersivePresentation.comp
      (Algebra.PreSubmersivePresentation.localizationAway (S := LiftedAlgebra hsurj P)
        (liftedPreSubmersivePresentation hsurj P).jacobian) (liftedPreSubmersivePresentation hsurj P)).jacobian := by
  rw [Algebra.PreSubmersivePresentation.comp_jacobian_eq_jacobian_smul_jacobian,
    Algebra.smul_def]
  exact (IsLocalization.Away.algebraMap_isUnit (S := LiftedAlgebra hsurj P)
      (liftedPreSubmersivePresentation hsurj P).jacobian).mul
    (Algebra.SubmersivePresentation.localizationAway (S := LiftedAlgebra hsurj P)
      (liftedPreSubmersivePresentation hsurj P).jacobian).jacobian_isUnit

noncomputable def liftedSubmersivePresentation :
    Algebra.SubmersivePresentation S (LiftedAlgebra hsurj P) (Unit ⊕ ι) (Unit ⊕ σ) where
  toPreSubmersivePresentation :=
    Algebra.PreSubmersivePresentation.comp
      (Algebra.PreSubmersivePresentation.localizationAway (S := LiftedAlgebra hsurj P)
        (liftedPreSubmersivePresentation hsurj P).jacobian) (liftedPreSubmersivePresentation hsurj P)
  jacobian_isUnit := by exact isUnit_jacobian_localizationAway_comp hsurj P

noncomputable def mvPolynomialToBaseChange :
    MvPolynomial ι R →ₐ[R] R ⊗[S] LiftedAlgebra hsurj P :=
  MvPolynomial.aeval fun i : ι =>
    (1 : R) ⊗ₜ[S] (algebraMap (LiftedQuotient hsurj P) (LiftedAlgebra hsurj P)
      (Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P))) (MvPolynomial.X i)))

private theorem mvPolynomialToBaseChange_map (f : MvPolynomial ι S) :
    mvPolynomialToBaseChange hsurj P (MvPolynomial.map (algebraMap S R) f) =
      (1 : R) ⊗ₜ[S] (algebraMap (LiftedQuotient hsurj P) (LiftedAlgebra hsurj P)
        (Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P))) f)) := by
  induction f using MvPolynomial.induction_on
  next a =>
    have hI : Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P)))
        (MvPolynomial.C a) = algebraMap S (LiftedQuotient hsurj P) a := by
      rw [← MvPolynomial.algebraMap_eq]
      exact (Ideal.Quotient.mkₐ S (Ideal.span (Set.range (liftedRelation hsurj P)))).commutes a
    have hL : mvPolynomialToBaseChange hsurj P (MvPolynomial.map (algebraMap S R) (MvPolynomial.C a))
        = algebraMap S (R ⊗[S] LiftedAlgebra hsurj P) a := by
      rw [MvPolynomial.map_C]
      simp only [mvPolynomialToBaseChange, MvPolynomial.aeval_C]
      rw [← IsScalarTower.algebraMap_apply S R (R ⊗[S] LiftedAlgebra hsurj P) a]
    rw [hL, hI, ← IsScalarTower.algebraMap_apply S (LiftedQuotient hsurj P) (LiftedAlgebra hsurj P) a,
      Algebra.algebraMap_eq_smul_one a, Algebra.algebraMap_eq_smul_one a,
      Algebra.TensorProduct.one_def, TensorProduct.tmul_smul]
  next p q hp hq =>
    rw [(MvPolynomial.map (algebraMap S R)).map_add,
      map_add (f := mvPolynomialToBaseChange hsurj P),
      (Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P)))).map_add,
      (algebraMap (LiftedQuotient hsurj P) (LiftedAlgebra hsurj P)).map_add,
      TensorProduct.tmul_add, hp, hq]
  next p i hp =>
    have hX : mvPolynomialToBaseChange hsurj P (MvPolynomial.X i)
        = (1 : R) ⊗ₜ[S] (algebraMap (LiftedQuotient hsurj P) (LiftedAlgebra hsurj P)
            (Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P)))
              (MvPolynomial.X i))) := by
      simp [mvPolynomialToBaseChange]
    simp [hp, hX, Algebra.TensorProduct.tmul_mul_tmul]

private theorem mvPolynomialToBaseChange_relation_eq_zero (j : σ) :
    mvPolynomialToBaseChange hsurj P (P.relation j) = 0 := by
  have hz : Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P)))
      (liftedRelation hsurj P j) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.subset_span (Set.mem_range_self j))
  have h := mvPolynomialToBaseChange_map hsurj P (liftedRelation hsurj P j)
  rw [map_liftedRelation hsurj P j, hz] at h
  simpa only [map_zero, TensorProduct.tmul_zero] using h

private theorem mvPolynomialToBaseChange_eq_zero_of_aeval_eq_zero (q : MvPolynomial ι R)
    (hq : (MvPolynomial.aeval P.val : MvPolynomial ι R →ₐ[R] B) q = 0) :
    mvPolynomialToBaseChange hsurj P q = 0 := by
  have hmem : q ∈ Ideal.span (Set.range P.relation) := by
    rw [P.span_range_relation_eq_ker, Algebra.Generators.ker_eq_ker_aeval_val]
    simpa only [RingHom.mem_ker, AlgHom.toRingHom_eq_coe, RingHom.coe_coe] using hq
  have hsub : Ideal.span (Set.range P.relation) ≤
      RingHom.ker (mvPolynomialToBaseChange hsurj P : MvPolynomial ι R →+* R ⊗[S] LiftedAlgebra hsurj P) := by
    rw [Ideal.span_le]
    rintro x ⟨j, rfl⟩
    simp only [SetLike.mem_coe, RingHom.mem_ker, AlgHom.coe_toRingHom]
    exact mvPolynomialToBaseChange_relation_eq_zero hsurj P j
  simpa only [RingHom.mem_ker, AlgHom.coe_toRingHom] using hsub hmem

private theorem mvPolynomialToBaseChange_section_one :
    mvPolynomialToBaseChange hsurj P (P.σ' 1) = 1 := by
  have h1 : (MvPolynomial.aeval P.val : MvPolynomial ι R →ₐ[R] B) (P.σ' (1 : B) - 1) = 0 := by
    rw [map_sub, map_one, P.aeval_val_σ' 1, sub_self]
  have h0 := mvPolynomialToBaseChange_eq_zero_of_aeval_eq_zero hsurj P _ h1
  rw [map_sub, map_one] at h0
  linear_combination h0

private theorem mvPolynomialToBaseChange_section_mul (x y : B) :
    mvPolynomialToBaseChange hsurj P (P.σ' (x * y)) =
      mvPolynomialToBaseChange hsurj P (P.σ' x) * mvPolynomialToBaseChange hsurj P (P.σ' y) := by
  have hker : (MvPolynomial.aeval P.val : MvPolynomial ι R →ₐ[R] B)
      (P.σ' (x * y) - P.σ' x * P.σ' y) = 0 := by
    simp [P.aeval_val_σ']
  have h := mvPolynomialToBaseChange_eq_zero_of_aeval_eq_zero hsurj P _ hker
  rw [map_sub, map_mul] at h
  linear_combination h

private theorem mvPolynomialToBaseChange_section_zero :
    mvPolynomialToBaseChange hsurj P (P.σ' 0) = 0 := by
  have h0 : (MvPolynomial.aeval P.val : MvPolynomial ι R →ₐ[R] B) (P.σ' (0 : B)) = 0 :=
    P.aeval_val_σ' 0
  exact mvPolynomialToBaseChange_eq_zero_of_aeval_eq_zero hsurj P _ h0

private theorem mvPolynomialToBaseChange_section_add (x y : B) :
    mvPolynomialToBaseChange hsurj P (P.σ' (x + y)) =
      mvPolynomialToBaseChange hsurj P (P.σ' x) + mvPolynomialToBaseChange hsurj P (P.σ' y) := by
  have h1 : (MvPolynomial.aeval P.val : MvPolynomial ι R →ₐ[R] B)
      (P.σ' (x + y) - (P.σ' x + P.σ' y)) = 0 := by
    rw [map_sub, map_add (f := _), P.aeval_val_σ' (x + y), P.aeval_val_σ' x, P.aeval_val_σ' y, sub_self]
  have h0 := mvPolynomialToBaseChange_eq_zero_of_aeval_eq_zero hsurj P _ h1
  rw [map_sub, map_add (f := _)] at h0
  linear_combination h0

private theorem mvPolynomialToBaseChange_section_algebraMap (r : R) :
    mvPolynomialToBaseChange hsurj P (P.σ' (algebraMap R B r)) =
      algebraMap R (R ⊗[S] LiftedAlgebra hsurj P) r := by
  have h1 : (MvPolynomial.aeval P.val : MvPolynomial ι R →ₐ[R] B)
      (P.σ' (algebraMap R B r) - MvPolynomial.C r) = 0 := by
    rw [map_sub, P.aeval_val_σ' (algebraMap R B r), MvPolynomial.aeval_C, sub_self]
  have h0 := mvPolynomialToBaseChange_eq_zero_of_aeval_eq_zero hsurj P _ h1
  have hC : mvPolynomialToBaseChange hsurj P (MvPolynomial.C r) =
      algebraMap R (R ⊗[S] LiftedAlgebra hsurj P) r := by
    have hcom := (mvPolynomialToBaseChange hsurj P).commutes r
    rwa [MvPolynomial.algebraMap_eq] at hcom
  rw [map_sub, hC] at h0
  linear_combination h0

noncomputable def invBaseChangeHom : B →ₐ[R] R ⊗[S] LiftedAlgebra hsurj P where
  toFun b := mvPolynomialToBaseChange hsurj P (P.σ' b)
  map_one' := by exact mvPolynomialToBaseChange_section_one hsurj P
  map_mul' := by exact mvPolynomialToBaseChange_section_mul hsurj P
  map_zero' := by exact mvPolynomialToBaseChange_section_zero hsurj P
  map_add' := by exact mvPolynomialToBaseChange_section_add hsurj P
  commutes' := by exact mvPolynomialToBaseChange_section_algebraMap hsurj P

theorem invBaseChangeHom_aeval (q : MvPolynomial ι R) :
    invBaseChangeHom hsurj P (MvPolynomial.aeval P.val q) = mvPolynomialToBaseChange hsurj P q := by
  have hker : (MvPolynomial.aeval P.val : MvPolynomial ι R →ₐ[R] B)
      (P.σ' ((MvPolynomial.aeval P.val : MvPolynomial ι R →ₐ[R] B) q) - q) = 0 := by
    rw [map_sub, P.aeval_val_σ', sub_self]
  have h := mvPolynomialToBaseChange_eq_zero_of_aeval_eq_zero hsurj P _ hker
  rw [map_sub] at h
  have hf : invBaseChangeHom hsurj P ((MvPolynomial.aeval P.val : MvPolynomial ι R →ₐ[R] B) q)
      = mvPolynomialToBaseChange hsurj P
          (P.σ' ((MvPolynomial.aeval P.val : MvPolynomial ι R →ₐ[R] B) q)) := rfl
  rw [hf]
  linear_combination h

section

variable [Algebra S B] [IsScalarTower S R B]

theorem aeval_eq_zero_of_mem_span_liftedRelation (q : MvPolynomial ι S)
    (hq : q ∈ Ideal.span (Set.range (liftedRelation hsurj P))) :
    (MvPolynomial.aeval P.val : MvPolynomial ι S →ₐ[S] B) q = 0 := by
  have hsub : Ideal.span (Set.range (liftedRelation hsurj P)) ≤
      RingHom.ker (MvPolynomial.aeval P.val : MvPolynomial ι S →ₐ[S] B).toRingHom := by
    rw [Ideal.span_le]
    rintro x ⟨j, rfl⟩
    have hmem : P.relation j ∈ Ideal.span (Set.range P.relation) :=
      Ideal.subset_span ⟨j, rfl⟩
    rw [P.span_range_relation_eq_ker, Algebra.Generators.ker_eq_ker_aeval_val] at hmem
    have h0 : (MvPolynomial.aeval P.val : MvPolynomial ι R →ₐ[R] B) (P.relation j) = 0 := by
      simpa only [RingHom.mem_ker, AlgHom.toRingHom_eq_coe, RingHom.coe_coe] using hmem
    have h1 : (MvPolynomial.aeval P.val : MvPolynomial ι R →ₐ[R] B)
        (MvPolynomial.map (algebraMap S R) (liftedRelation hsurj P j)) =
          (MvPolynomial.aeval P.val : MvPolynomial ι S →ₐ[S] B) (liftedRelation hsurj P j) := by
      rw [MvPolynomial.aeval_map_algebraMap]
    rw [map_liftedRelation hsurj P j] at h1
    have h2 : (MvPolynomial.aeval P.val : MvPolynomial ι S →ₐ[S] B)
        (liftedRelation hsurj P j) = 0 := by
      rw [← h1]
      exact h0
    simpa only [SetLike.mem_coe, RingHom.mem_ker, AlgHom.toRingHom_eq_coe,
      RingHom.coe_coe] using h2
  simpa only [RingHom.mem_ker, AlgHom.toRingHom_eq_coe, RingHom.coe_coe] using hsub hq

noncomputable def liftedQuotientHom : LiftedQuotient hsurj P →ₐ[S] B :=
  Ideal.Quotient.liftₐ (Ideal.span (Set.range (liftedRelation hsurj P)))
    (MvPolynomial.aeval P.val : MvPolynomial ι S →ₐ[S] B)
    (aeval_eq_zero_of_mem_span_liftedRelation hsurj P)

@[simp] theorem liftedQuotientHom_mk (q : MvPolynomial ι S) :
    liftedQuotientHom hsurj P
        (Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P))) q) =
      (MvPolynomial.aeval P.val : MvPolynomial ι S →ₐ[S] B) q := rfl

private theorem isUnit_liftedQuotientHom_jacobian :
    IsUnit ((liftedQuotientHom hsurj P).toRingHom (liftedPreSubmersivePresentation hsurj P).jacobian) := by
  classical
  let _ : Fintype σ := Fintype.ofFinite σ
  have hval : (liftedPreSubmersivePresentation hsurj P).val =
      fun i : ι => Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P)))
        (MvPolynomial.X i) := rfl
  have hmk : ∀ q : MvPolynomial ι S,
      (MvPolynomial.aeval (liftedPreSubmersivePresentation hsurj P).val) q =
        Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P))) q := by
    have h : (MvPolynomial.aeval (liftedPreSubmersivePresentation hsurj P).val :
          MvPolynomial ι S →ₐ[S] LiftedQuotient hsurj P) =
        Ideal.Quotient.mkₐ S (Ideal.span (Set.range (liftedRelation hsurj P))) :=
      MvPolynomial.algHom_ext fun i => by simp [hval]
    exact fun q => DFunLike.congr_fun h q
  have hmat : ∀ a b : σ,
      MvPolynomial.map (algebraMap S R) ((liftedPreSubmersivePresentation hsurj P).jacobiMatrix a b)
        = P.jacobiMatrix a b := by
    intro a b
    rw [Algebra.PreSubmersivePresentation.jacobiMatrix_apply,
      Algebra.PreSubmersivePresentation.jacobiMatrix_apply, liftedPreSubmersivePresentation_map,
      liftedPreSubmersivePresentation_relation, ← MvPolynomial.pderiv_map, map_liftedRelation]
  have h1 : (liftedPreSubmersivePresentation hsurj P).jacobiMatrix.map
      (MvPolynomial.map (algebraMap S R)) = P.jacobiMatrix := by
    refine Matrix.ext fun a b => ?_
    rw [Matrix.map_apply]
    exact hmat a b
  have hdet : MvPolynomial.map (algebraMap S R)
      ((liftedPreSubmersivePresentation hsurj P).jacobiMatrix.det) = P.jacobiMatrix.det := by
    calc MvPolynomial.map (algebraMap S R) ((liftedPreSubmersivePresentation hsurj P).jacobiMatrix.det)
        = ((liftedPreSubmersivePresentation hsurj P).jacobiMatrix.map
            (MvPolynomial.map (algebraMap S R))).det := RingHom.map_det ..
      _ = P.jacobiMatrix.det := by rw [h1]
  have hjS : (liftedPreSubmersivePresentation hsurj P).jacobian =
      Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P)))
        ((liftedPreSubmersivePresentation hsurj P).jacobiMatrix.det) := by
    rw [Algebra.PreSubmersivePresentation.jacobian_eq_jacobiMatrix_det]
    exact hmk _
  have hjR : P.jacobian =
      (MvPolynomial.aeval P.val : MvPolynomial ι R →ₐ[R] B) P.jacobiMatrix.det := by
    rw [Algebra.PreSubmersivePresentation.jacobian_eq_jacobiMatrix_det,
      Algebra.Generators.algebraMap_apply]
  have h2 : IsUnit (liftedQuotientHom hsurj P ((liftedPreSubmersivePresentation hsurj P).jacobian)) := by
    have hkey : liftedQuotientHom hsurj P ((liftedPreSubmersivePresentation hsurj P).jacobian) = P.jacobian := by
      rw [hjS, liftedQuotientHom_mk, hjR, ← hdet]
      simp only [MvPolynomial.aeval_def, MvPolynomial.eval₂_map]
      rw [← IsScalarTower.algebraMap_eq S R B]
    rw [hkey]
    exact P.jacobian_isUnit
  simpa only [AlgHom.toRingHom_eq_coe, RingHom.coe_coe] using h2

private theorem awayLift_jacobian_algebraMap_eq (s : S) :
    ((IsLocalization.Away.lift (liftedPreSubmersivePresentation hsurj P).jacobian
        (isUnit_liftedQuotientHom_jacobian hsurj P) : LiftedAlgebra hsurj P →+* B))
      (algebraMap S (LiftedAlgebra hsurj P) s) = algebraMap S B s := by
  have h : ∀ x : LiftedQuotient hsurj P,
      ((IsLocalization.Away.lift (liftedPreSubmersivePresentation hsurj P).jacobian
          (isUnit_liftedQuotientHom_jacobian hsurj P) : LiftedAlgebra hsurj P →+* B))
        (algebraMap (LiftedQuotient hsurj P) (LiftedAlgebra hsurj P) x) =
        (liftedQuotientHom hsurj P).toRingHom x := by
    intro x
    exact IsLocalization.lift_eq ..
  rw [IsScalarTower.algebraMap_apply S (LiftedQuotient hsurj P) (LiftedAlgebra hsurj P) s, h]
  exact (liftedQuotientHom hsurj P).commutes s

noncomputable def liftedAlgebraHom : LiftedAlgebra hsurj P →ₐ[S] B :=
  { (IsLocalization.Away.lift (liftedPreSubmersivePresentation hsurj P).jacobian
      (show IsUnit ((liftedQuotientHom hsurj P).toRingHom
        (liftedPreSubmersivePresentation hsurj P).jacobian) from
        by exact isUnit_liftedQuotientHom_jacobian hsurj P) : LiftedAlgebra hsurj P →+* B) with
    commutes' := by exact awayLift_jacobian_algebraMap_eq hsurj P }

theorem liftedAlgebraHom_algebraMap (x : LiftedQuotient hsurj P) :
    liftedAlgebraHom hsurj P (algebraMap (LiftedQuotient hsurj P) (LiftedAlgebra hsurj P) x) =
      liftedQuotientHom hsurj P x := by
  change (IsLocalization.Away.lift (liftedPreSubmersivePresentation hsurj P).jacobian
    (isUnit_liftedQuotientHom_jacobian hsurj P) : LiftedAlgebra hsurj P →+* B)
      (algebraMap (LiftedQuotient hsurj P) (LiftedAlgebra hsurj P) x) = _
  exact IsLocalization.lift_eq ..

theorem liftedAlgebraHom_surjective : Function.Surjective (liftedAlgebraHom hsurj P) := by
  intro b
  obtain ⟨p, hp⟩ := MvPolynomial.map_surjective (algebraMap S R) hsurj (P.σ' b)
  have h1 : (MvPolynomial.aeval P.val : MvPolynomial ι R →ₐ[R] B)
      (MvPolynomial.map (algebraMap S R) p) =
        (MvPolynomial.aeval P.val : MvPolynomial ι S →ₐ[S] B) p := by
    rw [MvPolynomial.aeval_map_algebraMap]
  refine ⟨algebraMap (LiftedQuotient hsurj P) (LiftedAlgebra hsurj P)
    (Ideal.Quotient.mk (Ideal.span (Set.range (liftedRelation hsurj P))) p), ?_⟩
  rw [liftedAlgebraHom_algebraMap, liftedQuotientHom_mk, ← h1, hp]
  exact P.aeval_val_σ' b

noncomputable def baseChangeHom : (R ⊗[S] LiftedAlgebra hsurj P) →ₐ[R] B :=
  Algebra.TensorProduct.lift (Algebra.ofId R B) (liftedAlgebraHom hsurj P)
    (fun _ _ => Commute.all _ _)

private theorem invBaseChangeHom_liftedQuotientHom (q : LiftedQuotient hsurj P) :
    invBaseChangeHom hsurj P (liftedQuotientHom hsurj P q) =
      (1 : R) ⊗ₜ[S] (algebraMap (LiftedQuotient hsurj P) (LiftedAlgebra hsurj P) q) := by
  obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective q
  have h1 : (MvPolynomial.aeval P.val : MvPolynomial ι R →ₐ[R] B)
      (MvPolynomial.map (algebraMap S R) p) =
        (MvPolynomial.aeval P.val : MvPolynomial ι S →ₐ[S] B) p := by
    rw [MvPolynomial.aeval_map_algebraMap]
  rw [liftedQuotientHom_mk, ← h1, invBaseChangeHom_aeval]
  exact mvPolynomialToBaseChange_map hsurj P p

private theorem invBaseChangeHom_liftedAlgebraHom (x : LiftedAlgebra hsurj P) :
    invBaseChangeHom hsurj P (liftedAlgebraHom hsurj P x) = (1 : R) ⊗ₜ[S] x := by
  have key : (invBaseChangeHom hsurj P).toRingHom.comp (liftedAlgebraHom hsurj P).toRingHom =
      (Algebra.TensorProduct.includeRight :
        LiftedAlgebra hsurj P →ₐ[S] R ⊗[S] LiftedAlgebra hsurj P).toRingHom := by
    refine IsLocalization.ringHom_ext
      (Submonoid.powers (liftedPreSubmersivePresentation hsurj P).jacobian) ?_
    refine RingHom.ext fun q => ?_
    have h := invBaseChangeHom_liftedQuotientHom hsurj P q
    rw [← liftedAlgebraHom_algebraMap hsurj P q] at h
    exact h
  exact DFunLike.congr_fun key x

theorem baseChangeHom_bijective : Function.Bijective (baseChangeHom hsurj P) := by
  constructor
  · have hleft : Function.LeftInverse (invBaseChangeHom hsurj P) (baseChangeHom hsurj P) := by
      intro t
      refine TensorProduct.induction_on (motive := fun t =>
        invBaseChangeHom hsurj P (baseChangeHom hsurj P t) = t) t ?_ ?_ ?_
      · simp
      · intro r x
        have h1 : baseChangeHom hsurj P (r ⊗ₜ[S] x)
            = algebraMap R B r * liftedAlgebraHom hsurj P x := by
          simp only [baseChangeHom, Algebra.TensorProduct.lift_tmul, Algebra.ofId_apply]
        have h2 : invBaseChangeHom hsurj P (algebraMap R B r)
            = r ⊗ₜ[S] (1 : LiftedAlgebra hsurj P) := (invBaseChangeHom hsurj P).commutes r
        rw [h1, map_mul, h2, invBaseChangeHom_liftedAlgebraHom,
          Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
      · intro a b ha hb
        rw [map_add (f := _), map_add (f := _), ha, hb]
    exact hleft.injective
  · intro b
    obtain ⟨x, hx⟩ := liftedAlgebraHom_surjective hsurj P b
    refine ⟨(1 : R) ⊗ₜ[S] x, ?_⟩
    rw [← hx]
    simp only [baseChangeHom, Algebra.TensorProduct.lift_tmul, map_one, one_mul]

noncomputable def baseChangeEquiv : (R ⊗[S] LiftedAlgebra hsurj P) ≃ₐ[R] B :=
  AlgEquiv.ofBijective (baseChangeHom hsurj P) (baseChangeHom_bijective hsurj P)

theorem baseChangeEquiv_one_tmul (b' : LiftedAlgebra hsurj P) :
    baseChangeEquiv hsurj P (1 ⊗ₜ[S] b') = liftedAlgebraHom hsurj P b' := by
  have h : baseChangeEquiv hsurj P (1 ⊗ₜ[S] b')
      = (Algebra.ofId R B) (1 : R) * liftedAlgebraHom hsurj P b' := rfl
  rw [h, map_one, one_mul]

end

end

end StandardSmoothLift
end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StandardSmoothLift =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StandardSmoothLiftRelativeDimension =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StandardSmoothLiftRelativeDimension", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StandardSmoothLift\npublic import Mathlib.RingTheory.Smooth.StandardSmooth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

universe u

open scoped TensorProduct

namespace FunctorialResolution.EmbeddedResolution

namespace StandardSmoothLift

section

variable {S R B : Type u} [CommRing S] [CommRing R] [CommRing B]
  [Algebra S R] [Algebra R B] {ι σ : Type} [Finite ι] [Finite σ]
  (hsurj : Function.Surjective (algebraMap S R))
  (P : Algebra.SubmersivePresentation R B ι σ)

theorem liftedSubmersivePresentation_dimension :
    (liftedSubmersivePresentation hsurj P).dimension = P.dimension := by
  have hu : Nat.card Unit = 1 := by
    rw [Nat.card_eq_fintype_card, Fintype.card_unit]
  have h1 : Nat.card (Unit ⊕ ι) = Nat.card ι + 1 := by
    rw [Nat.card_sum, hu]
    omega
  have h2 : Nat.card (Unit ⊕ σ) = Nat.card σ + 1 := by
    rw [Nat.card_sum, hu]
    omega
  show Nat.card (Unit ⊕ ι) - Nat.card (Unit ⊕ σ) = Nat.card ι - Nat.card σ
  rw [h1, h2]
  omega

end

end StandardSmoothLift

section

variable (S R B : Type u) [CommRing S] [CommRing R] [CommRing B]
  [Algebra S R] [Algebra R B] [Algebra S B] [IsScalarTower S R B]

theorem exists_lift_of_isStandardSmoothOfRelativeDimension (r : ℕ)
    [Algebra.IsStandardSmoothOfRelativeDimension r R B]
    (hsurj : Function.Surjective (algebraMap S R)) :
    ∃ (B' : Type u) (_ : CommRing B') (_ : Algebra S B') (f : B' →ₐ[S] B),
      Algebra.IsStandardSmoothOfRelativeDimension r S B' ∧ Function.Surjective f ∧
        ∃ e : (R ⊗[S] B') ≃ₐ[R] B, ∀ b' : B', e (1 ⊗ₜ[S] b') = f b' := by
  have hinst : Algebra.IsStandardSmoothOfRelativeDimension r R B := ‹_›
  obtain ⟨ι, σ, hσ, hι, P, hdim⟩ := hinst.out
  have : Finite ι := hι
  have : Finite σ := hσ
  refine ⟨StandardSmoothLift.LiftedAlgebra hsurj P, inferInstance, inferInstance,
    StandardSmoothLift.liftedAlgebraHom hsurj P, ?_,
    StandardSmoothLift.liftedAlgebraHom_surjective hsurj P,
    StandardSmoothLift.baseChangeEquiv hsurj P,
    StandardSmoothLift.baseChangeEquiv_one_tmul hsurj P⟩
  exact ⟨⟨Unit ⊕ ι, Unit ⊕ σ, inferInstance, inferInstance,
    StandardSmoothLift.liftedSubmersivePresentation hsurj P,
    (StandardSmoothLift.liftedSubmersivePresentation_dimension hsurj P).trans hdim⟩⟩

end

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StandardSmoothLiftRelativeDimension =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothAffineLiftRelativeDimension =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothAffineLiftRelativeDimension", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StandardSmoothLiftRelativeDimension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

open scoped TensorProduct

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace SmoothChartRelativeDimension

private def tensorProductLiftRingHom {S R C T : Type u} [CommRing S] [CommRing R] [CommRing C]
    [CommRing T] [Algebra S R] [Algebra S C] (a : R →+* T) (b : C →+* T)
    (hab : ∀ s : S, a (algebraMap S R s) = b (algebraMap S C s)) : (R ⊗[S] C) →+* T :=
  letI : Algebra S T := (a.comp (algebraMap S R)).toAlgebra
  letI : Algebra R T := a.toAlgebra
  haveI : IsScalarTower S R T := IsScalarTower.of_algebraMap_eq fun _ => rfl
  (Algebra.TensorProduct.productMap (IsScalarTower.toAlgHom S R T)
      ({ toRingHom := b, commutes' := fun s => (hab s).symm } : C →ₐ[S] T)).toRingHom

private theorem tensorProductLiftRingHom_tmul {S R C T : Type u} [CommRing S] [CommRing R] [CommRing C]
    [CommRing T] [Algebra S R] [Algebra S C] (a : R →+* T) (b : C →+* T)
    (hab : ∀ s : S, a (algebraMap S R s) = b (algebraMap S C s)) (x : R) (y : C) :
    tensorProductLiftRingHom a b hab (x ⊗ₜ[S] y) = a x * b y := by
  let _ : Algebra S T := (a.comp (algebraMap S R)).toAlgebra
  let _ : Algebra R T := a.toAlgebra
  have : IsScalarTower S R T := IsScalarTower.of_algebraMap_eq fun _ => rfl
  exact Algebra.TensorProduct.productMap_apply_tmul (IsScalarTower.toAlgHom S R T)
    ({ toRingHom := b, commutes' := fun s => (hab s).symm } : C →ₐ[S] T) x y

theorem exists_affineOpen_isStandardSmoothOfRelativeDimension {X Y : Scheme.{u}}
    [AlgebraicGeometry.IsAffine X] (r : ℕ) (h : Y ⟶ X)
    [AlgebraicGeometry.SmoothOfRelativeDimension r h] (y : ↥Y) :
    ∃ (V : Y.Opens) (_ : y ∈ V) (_ : AlgebraicGeometry.IsAffineOpen V),
      RingHom.IsStandardSmoothOfRelativeDimension r
        (CommRingCat.Hom.hom ((V.ι ≫ h).appTop)) := by
  obtain ⟨U, hU, V, hV, hyV, e, hss⟩ := ‹AlgebraicGeometry.SmoothOfRelativeDimension r h›.1 y
  have hmemU : h.base y ∈ U := e hyV
  obtain ⟨f₀, hf₀le, hf₀mem⟩ :=
    (isAffineOpen_top X).exists_basicOpen_le (⟨h.base y, hmemU⟩ : ↥U) (by trivial)
  set g : Γ(X, U) :=
    (ConcreteCategory.hom (X.presheaf.map (homOfLE (le_top : U ≤ ⊤)).op)) f₀ with hgdef
  set s : Γ(Y, V) := (ConcreteCategory.hom (h.appLE U V e)) g with hsdef
  have hsg : s = (CommRingCat.Hom.hom (h.appLE U V e)) g := rfl
  have hbg : X.basicOpen g = U ⊓ X.basicOpen f₀ :=
    Scheme.basicOpen_res X f₀ (homOfLE (le_top : U ≤ ⊤)).op
  have hbgf : X.basicOpen g = X.basicOpen f₀ := hbg.trans (inf_eq_right.mpr hf₀le)
  have hbs : Y.basicOpen s = V ⊓ h ⁻¹ᵁ X.basicOpen g :=
    Scheme.basicOpen_appLE h V U e g
  have hyW : y ∈ Y.basicOpen s := by
    rw [hbs]
    refine ⟨hyV, ?_⟩
    show h.base y ∈ X.basicOpen g
    rw [hbgf]
    exact hf₀mem
  have hWaff : IsAffineOpen (Y.basicOpen s) := hV.basicOpen s
  have hle₂ : Y.basicOpen s ≤ h ⁻¹ᵁ X.basicOpen g := by
    rw [hbs]; exact inf_le_right
  have hle₃ : Y.basicOpen s ≤ h ⁻¹ᵁ (⊤ : X.Opens) := by
    intro z hz; trivial
  have hbgU : X.basicOpen g ≤ U := X.basicOpen_le g
  have hWV : Y.basicOpen s ≤ V := Y.basicOpen_le s
  have hmm : Submonoid.map (CommRingCat.Hom.hom (h.appLE U V e)) (Submonoid.powers g)
      = Submonoid.powers s := by
    ext x
    constructor
    · rintro ⟨y', ⟨n, rfl⟩, rfl⟩
      exact ⟨n, by rw [map_pow, hsg]⟩
    · rintro ⟨n, rfl⟩
      exact ⟨g ^ n, ⟨n, rfl⟩, by rw [map_pow, hsg]⟩
  have hlocX : IsLocalization (Submonoid.powers g) (Γ(X, X.basicOpen g) : Type u) :=
    hU.isLocalization_basicOpen g
  have hlocY : IsLocalization
      (Submonoid.map (CommRingCat.Hom.hom (h.appLE U V e)) (Submonoid.powers g))
      (Γ(Y, Y.basicOpen s) : Type u) := by
    rw [hmm]
    exact hV.isLocalization_basicOpen s
  have hloc := RingHom.isStandardSmoothOfRelativeDimension_localizationPreserves r
    (CommRingCat.Hom.hom (h.appLE U V e)) (Submonoid.powers g)
    (Γ(X, X.basicOpen g) : Type u) (Γ(Y, Y.basicOpen s) : Type u) hss
  have hle_sub : Submonoid.powers g ≤ Submonoid.comap (CommRingCat.Hom.hom (h.appLE U V e))
      (Submonoid.map (CommRingCat.Hom.hom (h.appLE U V e)) (Submonoid.powers g)) :=
    fun x hx => ⟨x, hx, rfl⟩
  have hloc2 : RingHom.IsStandardSmoothOfRelativeDimension r
      (IsLocalization.map (Γ(Y, Y.basicOpen s) : Type u)
        (CommRingCat.Hom.hom (h.appLE U V e)) hle_sub) := hloc
  have arrow : h.appLE U V e ≫ Y.presheaf.map (homOfLE hWV).op
      = X.presheaf.map (homOfLE hbgU).op ≫ h.appLE (X.basicOpen g) (Y.basicOpen s) hle₂ := by
    rw [Scheme.Hom.appLE_map, Scheme.Hom.map_appLE]
  have key : IsLocalization.map (Γ(Y, Y.basicOpen s) : Type u)
        (CommRingCat.Hom.hom (h.appLE U V e)) hle_sub
      = CommRingCat.Hom.hom (h.appLE (X.basicOpen g) (Y.basicOpen s) hle₂) := by
    refine IsLocalization.ringHom_ext (Submonoid.powers g) ?_
    rw [IsLocalization.map_comp]
    exact congrArg CommRingCat.Hom.hom arrow
  have hP : RingHom.IsStandardSmoothOfRelativeDimension r
      (CommRingCat.Hom.hom (h.appLE (X.basicOpen g) (Y.basicOpen s) hle₂)) := by
    rw [← key]
    exact hloc2
  let _ : Algebra (Γ(X, ⊤) : Type u) (Γ(X, X.basicOpen g) : Type u) :=
    (CommRingCat.Hom.hom
      (X.presheaf.map (homOfLE (le_top : X.basicOpen g ≤ ⊤)).op)).toAlgebra
  have : IsLocalization.Away f₀ (Γ(X, X.basicOpen g) : Type u) :=
    (isAffineOpen_top X).isLocalization_of_eq_basicOpen f₀
      (homOfLE (le_top : X.basicOpen g ≤ ⊤)) hbgf
  have hsrc :=
    (RingHom.isStandardSmoothOfRelativeDimension_stableUnderCompositionWithLocalizationAway r).1
  have hcomp0 : RingHom.IsStandardSmoothOfRelativeDimension r
      ((CommRingCat.Hom.hom (h.appLE (X.basicOpen g) (Y.basicOpen s) hle₂)).comp
        (algebraMap (Γ(X, ⊤) : Type u) (Γ(X, X.basicOpen g) : Type u))) :=
    hsrc _ f₀ _ hP
  have hmap : X.presheaf.map (homOfLE (le_top : X.basicOpen g ≤ ⊤)).op ≫
      h.appLE (X.basicOpen g) (Y.basicOpen s) hle₂ = h.appLE ⊤ (Y.basicOpen s) hle₃ :=
    Scheme.Hom.map_appLE h hle₂ (homOfLE (le_top : X.basicOpen g ≤ ⊤)).op
  have hcomp : RingHom.IsStandardSmoothOfRelativeDimension r
      (CommRingCat.Hom.hom (h.appLE ⊤ (Y.basicOpen s) hle₃)) := by
    rw [← hmap, CommRingCat.hom_comp]
    exact hcomp0
  have hA : ((Y.basicOpen s).ι ''ᵁ ⊤) ≤ (⊤ : Y.Opens) := le_top
  have hBeq : ((Y.basicOpen s).ι ''ᵁ ⊤) = Y.basicOpen s := by simp
  have hB : Y.basicOpen s ≤ ((Y.basicOpen s).ι ''ᵁ ⊤) := le_of_eq hBeq.symm
  have hclean : h.appTop ≫ (Y.presheaf.map (homOfLE hA).op ≫ Y.presheaf.map (homOfLE hB).op)
      = h.appLE (⊤ : X.Opens) (Y.basicOpen s) hle₃ := by
    rw [← Functor.map_comp]
    rfl
  have hiso : ((Y.basicOpen s).ι ≫ h).appTop ≫ (Y.basicOpen s).topIso.hom
      = h.appLE ⊤ (Y.basicOpen s) hle₃ := by
    rw [Scheme.Hom.comp_appTop, Category.assoc, Scheme.Opens.topIso_hom, Scheme.Opens.ι_appTop]
    exact hclean
  have hgoal : ((Y.basicOpen s).ι ≫ h).appTop
      = h.appLE ⊤ (Y.basicOpen s) hle₃ ≫ (Y.basicOpen s).topIso.inv :=
    (Iso.eq_comp_inv _).mpr hiso
  refine ⟨Y.basicOpen s, hyW, hWaff, ?_⟩
  rw [hgoal]
  exact (RingHom.isStandardSmoothOfRelativeDimension_respectsIso (n := r)).1 _
    (Y.basicOpen s).topIso.symm.commRingCatIsoToRingEquiv hcomp

theorem exists_lift_isPushout_of_isStandardSmoothOfRelativeDimension {S R B : CommRingCat.{u}}
    (ι : S ⟶ R) (hι : Function.Surjective ⇑(CommRingCat.Hom.hom ι)) (φ : R ⟶ B) (r : ℕ)
    (hφ : RingHom.IsStandardSmoothOfRelativeDimension r (CommRingCat.Hom.hom φ)) :
    ∃ (B' : CommRingCat.{u}) (σ : S ⟶ B') (ψ : B' ⟶ B),
      RingHom.IsStandardSmoothOfRelativeDimension r (CommRingCat.Hom.hom σ) ∧
        Function.Surjective ⇑(CommRingCat.Hom.hom ψ) ∧
        CategoryTheory.IsPushout ι σ φ ψ := by
  let _ : Algebra (S : Type u) (R : Type u) := (CommRingCat.Hom.hom ι).toAlgebra
  let _ : Algebra (R : Type u) (B : Type u) := (CommRingCat.Hom.hom φ).toAlgebra
  let _ : Algebra (S : Type u) (B : Type u) :=
    ((CommRingCat.Hom.hom φ).comp (CommRingCat.Hom.hom ι)).toAlgebra
  have : IsScalarTower (S : Type u) (R : Type u) (B : Type u) :=
    IsScalarTower.of_algebraMap_eq fun _ => rfl
  have : Algebra.IsStandardSmoothOfRelativeDimension r (R : Type u) (B : Type u) := hφ
  obtain ⟨C, hCring, hCalg, f, hss, hfs, e, he⟩ :=
    FunctorialResolution.EmbeddedResolution.exists_lift_of_isStandardSmoothOfRelativeDimension (S : Type u) (R : Type u)
      (B : Type u) r hι
  have : Algebra.IsStandardSmoothOfRelativeDimension r (S : Type u) C := hss
  have hcond : ι ≫ φ = CommRingCat.ofHom (algebraMap (S : Type u) C) ≫
      CommRingCat.ofHom f.toRingHom := by
    refine CommRingCat.hom_ext (RingHom.ext fun s => ?_)
    exact (f.commutes s).symm
  have hcc : ∀ (c : CategoryTheory.Limits.PushoutCocone ι
        (CommRingCat.ofHom (algebraMap (S : Type u) C))) (s : (S : Type u)),
      (CommRingCat.Hom.hom c.inl) (algebraMap (S : Type u) (R : Type u) s)
        = (CommRingCat.Hom.hom c.inr) (algebraMap (S : Type u) C s) := fun c s =>
    congrArg (fun t : S ⟶ c.pt => (CommRingCat.Hom.hom t) s) c.condition
  have facR : ∀ c : CategoryTheory.Limits.PushoutCocone ι
      (CommRingCat.ofHom (algebraMap (S : Type u) C)),
      CommRingCat.ofHom f.toRingHom ≫ CommRingCat.ofHom
          ((tensorProductLiftRingHom (CommRingCat.Hom.hom c.inl) (CommRingCat.Hom.hom c.inr) (hcc c)).comp
            e.symm.toAlgHom.toRingHom) = c.inr := by
    intro c
    refine CommRingCat.hom_ext (RingHom.ext fun z => ?_)
    show tensorProductLiftRingHom (CommRingCat.Hom.hom c.inl) (CommRingCat.Hom.hom c.inr) (hcc c)
        (e.symm (f z)) = (CommRingCat.Hom.hom c.inr) z
    rw [show e.symm (f z) = (1 : (R : Type u)) ⊗ₜ[(S : Type u)] z from
      e.symm_apply_eq.mpr (he z).symm, tensorProductLiftRingHom_tmul, map_one, one_mul]
  refine ⟨CommRingCat.of C, CommRingCat.ofHom (algebraMap (S : Type u) C),
    CommRingCat.ofHom f.toRingHom, ?_, ?_, ?_⟩
  · exact (RingHom.isStandardSmoothOfRelativeDimension_algebraMap r).mpr hss
  · exact hfs
  · refine CategoryTheory.IsPushout.of_isColimit' ⟨hcond⟩
      (CategoryTheory.Limits.PushoutCocone.IsColimit.mk hcond
        (fun c => CommRingCat.ofHom
          ((tensorProductLiftRingHom (CommRingCat.Hom.hom c.inl) (CommRingCat.Hom.hom c.inr) (hcc c)).comp
            e.symm.toAlgHom.toRingHom)) ?_ facR ?_)
    · intro c
      refine CommRingCat.hom_ext (RingHom.ext fun x => ?_)
      obtain ⟨s, rfl⟩ := hι x
      have key : ι ≫ (φ ≫ CommRingCat.ofHom
          ((tensorProductLiftRingHom (CommRingCat.Hom.hom c.inl) (CommRingCat.Hom.hom c.inr) (hcc c)).comp
            e.symm.toAlgHom.toRingHom)) = ι ≫ c.inl := by
        rw [← Category.assoc, hcond, Category.assoc, facR c, ← c.condition]
      exact congrArg (fun t : S ⟶ c.pt => (CommRingCat.Hom.hom t) s) key
    · intro c m h₁ h₂
      refine CommRingCat.hom_ext (RingHom.ext fun b => ?_)
      obtain ⟨z, rfl⟩ := hfs b
      exact congrArg (fun t : CommRingCat.of C ⟶ c.pt => (CommRingCat.Hom.hom t) z)
        (h₂.trans (facR c).symm)

end SmoothChartRelativeDimension

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothAffineLiftRelativeDimension =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothAffinePullbackPresentation =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothAffinePullbackPresentation", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothAffineLiftRelativeDimension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace PresentedSmoothChart

theorem smooth_specMap_comp_isoSpec_inv {A : Scheme.{u}} [AlgebraicGeometry.IsAffine A]
    {B' : CommRingCat.{u}} (σ : Γ(A, ⊤) ⟶ B')
    (hσ : RingHom.IsStandardSmooth (CommRingCat.Hom.hom σ)) :
    AlgebraicGeometry.Smooth (Spec.map σ ≫ A.isoSpec.inv) := by
  have hs : RingHom.Smooth (CommRingCat.Hom.hom σ) := by
    let := (CommRingCat.Hom.hom σ).toAlgebra
    have : Algebra.IsStandardSmooth ↥Γ(A, ⊤) ↥B' := hσ
    exact ⟨inferInstance, inferInstance⟩
  have h1 : AlgebraicGeometry.Smooth (Spec.map σ) :=
    (AlgebraicGeometry.HasRingHomProperty.Spec_iff
      (P := @AlgebraicGeometry.Smooth)).mpr hs
  have h2 : AlgebraicGeometry.Smooth A.isoSpec.inv := inferInstance
  exact MorphismProperty.comp_mem (@AlgebraicGeometry.Smooth) _ _ h1 h2

theorem exists_affineOpen_isPullback_specMap {A X Y : Scheme.{u}}
    [AlgebraicGeometry.IsAffine A] [AlgebraicGeometry.IsAffine X]
    (i : X ⟶ A) [AlgebraicGeometry.IsClosedImmersion i] (r : ℕ) (h : Y ⟶ X)
    [AlgebraicGeometry.SmoothOfRelativeDimension r h] (y : ↥Y) :
    ∃ (V : Y.Opens) (_ : y ∈ V) (_ : AlgebraicGeometry.IsAffineOpen V) (B' : CommRingCat.{u})
      (σ : Γ(A, ⊤) ⟶ B') (j : (V : Scheme.{u}) ⟶ Spec B'),
      RingHom.IsStandardSmoothOfRelativeDimension r (CommRingCat.Hom.hom σ) ∧
        AlgebraicGeometry.IsClosedImmersion j ∧
        CategoryTheory.IsPullback j (V.ι ≫ h) (Spec.map σ ≫ A.isoSpec.inv) i := by
  obtain ⟨V, hyV, hV, hsm⟩ :=
    SmoothChartRelativeDimension.exists_affineOpen_isStandardSmoothOfRelativeDimension r h y
  have : AlgebraicGeometry.IsAffine (V : Scheme.{u}) := hV
  obtain ⟨B', σ, ψ, hσ, hψ, hpo⟩ :=
    SmoothChartRelativeDimension.exists_lift_isPushout_of_isStandardSmoothOfRelativeDimension
      (Scheme.Hom.appTop i)
      (AlgebraicGeometry.IsClosedImmersion.isAffine_surjective_of_isAffine i).2
      (Scheme.Hom.appTop (V.ι ≫ h)) r hsm
  have S1 : CategoryTheory.IsPullback (Spec.map ψ)
      (Spec.map (Scheme.Hom.appTop (V.ι ≫ h))) (Spec.map σ)
      (Spec.map (Scheme.Hom.appTop i)) := hpo.op.map Scheme.Spec
  have L : CategoryTheory.IsPullback (V : Scheme.{u}).isoSpec.hom (V.ι ≫ h)
      (Spec.map (Scheme.Hom.appTop (V.ι ≫ h))) X.isoSpec.hom :=
    CategoryTheory.IsPullback.of_horiz_isIso ⟨Scheme.isoSpec_hom_naturality (V.ι ≫ h)⟩
  have C1 := L.paste_horiz S1
  rw [Scheme.isoSpec_hom_naturality i] at C1
  refine ⟨V, hyV, hV, B', σ, (V : Scheme.{u}).isoSpec.hom ≫ Spec.map ψ, hσ, ?_, ?_⟩
  · have := AlgebraicGeometry.IsClosedImmersion.spec_of_surjective ψ hψ
    infer_instance
  · have t : CategoryTheory.IsPullback (𝟙 (Spec B')) (Spec.map σ ≫ A.isoSpec.inv)
        (Spec.map σ) A.isoSpec.hom :=
      CategoryTheory.IsPullback.of_horiz_isIso ⟨by simp⟩
    have p : ((V : Scheme.{u}).isoSpec.hom ≫ Spec.map ψ) ≫ (Spec.map σ ≫ A.isoSpec.inv)
        = (V.ι ≫ h) ≫ i := by
      rw [← Category.assoc, C1.w]
      simp
    have s : CategoryTheory.IsPullback
        (((V : Scheme.{u}).isoSpec.hom ≫ Spec.map ψ) ≫ 𝟙 (Spec B')) (V.ι ≫ h)
        (Spec.map σ) (i ≫ A.isoSpec.hom) := by
      rw [Category.comp_id]
      exact C1
    exact CategoryTheory.IsPullback.of_right s p t

end PresentedSmoothChart

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothAffinePullbackPresentation =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SumCoordinatePartialDerivatives =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SumCoordinatePartialDerivatives", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PolynomialRingOverGlobalSections\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.AffineSpaceGlobalSections\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

def renameSumInl (k : Type u) [Field k] (M n : ℕ) :
    MvPolynomial (ULift.{u} (Fin M)) k →+* MvPolynomial (ULift.{u} (Fin M ⊕ Fin n)) k :=
  (MvPolynomial.rename
      (fun a : ULift.{u} (Fin M) =>
        (ULift.up (Sum.inl a.down) : ULift.{u} (Fin M ⊕ Fin n)))).toRingHom

theorem renameSumInl_C (k : Type u) [Field k] (M n : ℕ) (c : k) :
    renameSumInl k M n (MvPolynomial.C c) = MvPolynomial.C c := by
  simp [renameSumInl]

theorem renameSumInl_X (k : Type u) [Field k] (M n : ℕ) (a : Fin M) :
    renameSumInl k M n (MvPolynomial.X (ULift.up a)) =
      MvPolynomial.X (ULift.up (Sum.inl a) : ULift.{u} (Fin M ⊕ Fin n)) := by
  simp [renameSumInl]

private theorem pderiv_inr_X_inl (k : Type u) [Field k] (M n : ℕ) (i : Fin n) (a : Fin M) :
    MvPolynomial.pderiv (ULift.up (Sum.inr i) : ULift.{u} (Fin M ⊕ Fin n))
        (MvPolynomial.X (ULift.up (Sum.inl a) : ULift.{u} (Fin M ⊕ Fin n)) :
          MvPolynomial (ULift.{u} (Fin M ⊕ Fin n)) k) = 0 := by
  classical
  simp [MvPolynomial.pderiv_X]

theorem pderiv_inr_renameSumInl (k : Type u) [Field k] (M n : ℕ) (i : Fin n)
    (p : MvPolynomial (ULift.{u} (Fin M)) k) :
    MvPolynomial.pderiv (ULift.up (Sum.inr i) : ULift.{u} (Fin M ⊕ Fin n))
        (renameSumInl k M n p) = 0 := by
  classical
  induction p using MvPolynomial.induction_on
  · rename_i c
    simp [renameSumInl_C]
  · rename_i q r hq hr
    simp [hq, hr]
  · rename_i q a hq
    obtain ⟨a⟩ := a
    rw [map_mul, renameSumInl_X, MvPolynomial.pderiv_mul, hq, pderiv_inr_X_inl]
    simp

private theorem projLeft_appTop_affineSpaceIndexedByToSpec_appTop (k : Type u) [Field k] (M n : ℕ)
    (y : Γ(Spec (CommRingCat.of k), ⊤)) :
    (projLeft k M n).appTop ((affineSpaceIndexedByToSpec k (ULift.{u} (Fin M))).appTop y) =
      (affineSpaceIndexedByToSpec k (ULift.{u} (Fin M ⊕ Fin n))).appTop y := by
  have h2 : ((projLeft k M n) ≫ affineSpaceIndexedByToSpec k (ULift.{u} (Fin M))).appTop y
      = (affineSpaceIndexedByToSpec k (ULift.{u} (Fin M ⊕ Fin n))).appTop y := by
    rw [projLeft_comp_affineSpaceIndexedByToSpec]
  exact h2

private theorem projLeft_appTop_mvPolynomialEquivGlobalSections_C (k : Type u) [Field k] (M n : ℕ) (c : k) :
    (projLeft k M n).appTop (mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M)) (MvPolynomial.C c)) =
      mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M ⊕ Fin n)) (MvPolynomial.C c) := by
  rw [mvPolynomialEquivGlobalSections_C, mvPolynomialEquivGlobalSections_C, projLeft_appTop_affineSpaceIndexedByToSpec_appTop]

private theorem projLeft_appTop_mvPolynomialEquivGlobalSections_X (k : Type u) [Field k] (M n : ℕ)
    (a : ULift.{u} (Fin M)) :
    (projLeft k M n).appTop (mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M)) (MvPolynomial.X a)) =
      mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M ⊕ Fin n))
        (MvPolynomial.X (ULift.up (Sum.inl a.down) : ULift.{u} (Fin M ⊕ Fin n))) := by
  obtain ⟨a⟩ := a
  simp

theorem mvPolynomialEquivGlobalSections_symm_projLeft_appTop (k : Type u) [Field k] (M n : ℕ)
    (p : MvPolynomial (ULift.{u} (Fin M)) k) :
    (mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M ⊕ Fin n))).symm
        ((projLeft k M n).appTop (mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M)) p)) =
      renameSumInl k M n p := by
  have key :
      ((mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M ⊕ Fin n))).symm.toRingHom).comp
          ((((projLeft k M n).appTop).hom).comp
            ((mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M))).toRingHom))
        = renameSumInl k M n := by
    apply MvPolynomial.ringHom_ext
    · intro c
      show (mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M ⊕ Fin n))).symm
          ((projLeft k M n).appTop
            (mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M)) (MvPolynomial.C c)))
          = renameSumInl k M n (MvPolynomial.C c)
      rw [projLeft_appTop_mvPolynomialEquivGlobalSections_C, RingEquiv.symm_apply_apply, renameSumInl_C]
    · intro a
      show (mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M ⊕ Fin n))).symm
          ((projLeft k M n).appTop
            (mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M)) (MvPolynomial.X a)))
          = renameSumInl k M n (MvPolynomial.X a)
      rw [projLeft_appTop_mvPolynomialEquivGlobalSections_X, RingEquiv.symm_apply_apply]
      simp [renameSumInl]
  exact RingHom.congr_fun key p

theorem mvPolynomialEquivGlobalSections_symm_comp_mvPolynomialToSumCoordinateRing (k : Type u) [Field k] (M n : ℕ) :
    ((mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M ⊕ Fin n))).symm.toRingHom).comp (mvPolynomialToSumCoordinateRing k M n) =
      MvPolynomial.eval₂Hom
        ((renameSumInl k M n).comp ((mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M))).symm.toRingHom))
        (fun i : Fin n =>
          MvPolynomial.X (ULift.up (Sum.inr i) : ULift.{u} (Fin M ⊕ Fin n))) := by
  apply MvPolynomial.ringHom_ext
  · intro t
    have h := mvPolynomialEquivGlobalSections_symm_projLeft_appTop k M n
      ((mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M))).symm t)
    simp only [RingEquiv.apply_symm_apply] at h
    simpa using h
  · intro i
    simp

theorem mvPolynomialEquivGlobalSections_symm_mvPolynomialToSumCoordinateRing (k : Type u) [Field k] (M n : ℕ)
    (p : MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤)) :
    (mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M ⊕ Fin n))).symm (mvPolynomialToSumCoordinateRing k M n p) =
      MvPolynomial.eval₂
        ((renameSumInl k M n).comp ((mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M))).symm.toRingHom))
        (fun i : Fin n =>
          MvPolynomial.X (ULift.up (Sum.inr i) : ULift.{u} (Fin M ⊕ Fin n))) p :=
  RingHom.congr_fun (mvPolynomialEquivGlobalSections_symm_comp_mvPolynomialToSumCoordinateRing k M n) p

private theorem pderiv_inr_eval₂_X_inr (k : Type u) [Field k] (M n : ℕ)
    (f : Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤) →+*
      MvPolynomial (ULift.{u} (Fin M ⊕ Fin n)) k) (i : Fin n)
    (hf : ∀ t, MvPolynomial.pderiv (ULift.up (Sum.inr i) : ULift.{u} (Fin M ⊕ Fin n)) (f t) = 0)
    (p : MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤)) :
    MvPolynomial.pderiv (ULift.up (Sum.inr i) : ULift.{u} (Fin M ⊕ Fin n))
        (MvPolynomial.eval₂ f
          (fun j : Fin n =>
            MvPolynomial.X (ULift.up (Sum.inr j) : ULift.{u} (Fin M ⊕ Fin n))) p) =
      MvPolynomial.eval₂ f
        (fun j : Fin n =>
          MvPolynomial.X (ULift.up (Sum.inr j) : ULift.{u} (Fin M ⊕ Fin n)))
        (MvPolynomial.pderiv i p) := by
  classical
  induction p using MvPolynomial.induction_on
  · rename_i t
    rw [MvPolynomial.eval₂_C, MvPolynomial.pderiv_C, MvPolynomial.eval₂_zero]
    exact hf t
  · rename_i q r hq hr
    simp [MvPolynomial.eval₂_add, hq, hr]
  · rename_i q j hq
    have hX : MvPolynomial.pderiv (ULift.up (Sum.inr i) : ULift.{u} (Fin M ⊕ Fin n))
        (MvPolynomial.X (ULift.up (Sum.inr j) : ULift.{u} (Fin M ⊕ Fin n)) :
          MvPolynomial (ULift.{u} (Fin M ⊕ Fin n)) k) =
        MvPolynomial.eval₂ f
          (fun l : Fin n =>
            MvPolynomial.X (ULift.up (Sum.inr l) : ULift.{u} (Fin M ⊕ Fin n)))
          (MvPolynomial.pderiv i (MvPolynomial.X j)) := by
      by_cases h : i = j
      · subst h
        simp
      · simp [MvPolynomial.pderiv_X, h]
    simp only [MvPolynomial.eval₂_mul, MvPolynomial.eval₂_X, MvPolynomial.pderiv_mul,
      MvPolynomial.eval₂_add, hq, hX]

theorem pderiv_mvPolynomialEquivGlobalSections_symm_mvPolynomialToSumCoordinateRing (k : Type u) [Field k] (M n : ℕ) (i : Fin n)
    (p : MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤)) :
    MvPolynomial.pderiv (ULift.up (Sum.inr i) : ULift.{u} (Fin M ⊕ Fin n))
        ((mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M ⊕ Fin n))).symm (mvPolynomialToSumCoordinateRing k M n p)) =
      (mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M ⊕ Fin n))).symm
        (mvPolynomialToSumCoordinateRing k M n (MvPolynomial.pderiv i p)) := by
  rw [mvPolynomialEquivGlobalSections_symm_mvPolynomialToSumCoordinateRing, mvPolynomialEquivGlobalSections_symm_mvPolynomialToSumCoordinateRing]
  refine pderiv_inr_eval₂_X_inr k M n
    ((renameSumInl k M n).comp ((mvPolynomialEquivGlobalSections k (ULift.{u} (Fin M))).symm.toRingHom)) i ?_ p
  intro t
  rw [RingHom.comp_apply]
  exact pderiv_inr_renameSumInl k M n i _

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SumCoordinatePartialDerivatives =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothPullbackGraphChart =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothPullbackGraphChart", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.GraphChartSmooth\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PolynomialRingOverGlobalSections\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothAffinePullbackPresentation\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SumCoordinatePartialDerivatives\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private theorem jacobianDetSection_mvPolynomialToSumCoordinateRing (k : Type u) [Field k] (M n q : ℕ)
    (lift : Fin q → MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u, 0} (Fin M)), ⊤))
    (s : Fin q → Fin n) :
    jacobianDetSection k M n q (fun j => mvPolynomialToSumCoordinateRing k M n (lift j)) s =
      mvPolynomialToSumCoordinateRing k M n
        (Matrix.det (Matrix.of fun i j : Fin q => MvPolynomial.pderiv (s i) (lift j))) := by
  have key : ∀ i j : Fin q,
      jacobianMatrixOfSections k M n q (fun j => mvPolynomialToSumCoordinateRing k M n (lift j)) s i j =
        (mvPolynomialEquivGlobalSections k (ULift.{u, 0} (Fin M ⊕ Fin n))).symm
          (mvPolynomialToSumCoordinateRing k M n (MvPolynomial.pderiv (s i) (lift j))) := by
    intro i j
    have h0 : polynomialOfSection k M n q (fun j => mvPolynomialToSumCoordinateRing k M n (lift j)) j
        = (mvPolynomialEquivGlobalSections k (ULift.{u, 0} (Fin M ⊕ Fin n))).symm (mvPolynomialToSumCoordinateRing k M n (lift j)) := rfl
    rw [jacobianMatrixOfSections_apply, h0]
    exact pderiv_mvPolynomialEquivGlobalSections_symm_mvPolynomialToSumCoordinateRing k M n (s i) (lift j)
  have hmat : jacobianMatrixOfSections k M n q (fun j => mvPolynomialToSumCoordinateRing k M n (lift j)) s =
      ((((mvPolynomialEquivGlobalSections k (ULift.{u, 0} (Fin M ⊕ Fin n))).symm.toRingHom).comp
          (mvPolynomialToSumCoordinateRing k M n)).mapMatrix)
        (Matrix.of fun i j : Fin q => MvPolynomial.pderiv (s i) (lift j)) := by
    refine Matrix.ext fun i j => ?_
    simp only [RingHom.mapMatrix_apply, Matrix.map_apply, Matrix.of_apply, RingHom.coe_comp,
      Function.comp_apply, RingEquiv.toRingHom_eq_coe, RingHom.coe_coe]
    exact key i j
  show mvPolynomialEquivGlobalSections k (ULift.{u, 0} (Fin M ⊕ Fin n))
      (jacobianMatrixOfSections k M n q (fun j => mvPolynomialToSumCoordinateRing k M n (lift j)) s).det = _
  rw [hmat, ← RingHom.map_det]
  simp

theorem appTop_specToAffineSpaceExtendCoords_jacobianDetSection (k : Type u) [Field k] (A : Scheme.{u})
    [AlgebraicGeometry.IsAffine A] (pA : A ⟶ Spec (CommRingCat.of k)) (M : ℕ)
    (e : A ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M)))
    [AlgebraicGeometry.IsClosedImmersion e] {B' : CommRingCat.{u}}
    (σ : Γ(A, ⊤) ⟶ B') (n q : ℕ) (b : Fin n → B')
    (he : e ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M)) = pA)
    (rel : Fin q → MvPolynomial (Fin n) Γ(A, ⊤))
    (lift : Fin q → MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u, 0} (Fin M)), ⊤))
    (hlift : ∀ j, MvPolynomial.map (e.appTop).hom (lift j) = rel j)
    (s : Fin q → Fin n) :
    (specToAffineSpaceExtendCoords k A pA M e σ n b).appTop
        (jacobianDetSection k M n q (fun j => mvPolynomialToSumCoordinateRing k M n (lift j)) s) =
      (Scheme.ΓSpecIso B').inv
        (Matrix.det (Matrix.of fun i j : Fin q =>
          MvPolynomial.eval₂ σ.hom b ((MvPolynomial.pderiv (s i)) (rel j)))) := by
  have hmap : ∀ i j : Fin q,
      (MvPolynomial.map (CommRingCat.Hom.hom (Scheme.Hom.appTop e)))
          (MvPolynomial.pderiv (s i) (lift j)) = MvPolynomial.pderiv (s i) (rel j) := by
    intro i j
    rw [← MvPolynomial.pderiv_map, hlift j]
  have hM1 : ((MvPolynomial.map (CommRingCat.Hom.hom (Scheme.Hom.appTop e))).mapMatrix
        (Matrix.of fun i j : Fin q => MvPolynomial.pderiv (s i) (lift j)))
      = Matrix.of fun i j : Fin q => MvPolynomial.pderiv (s i) (rel j) := by
    refine Matrix.ext fun i j => ?_
    simpa [RingHom.mapMatrix_apply] using hmap i j
  have hM2 : ((MvPolynomial.eval₂Hom (CommRingCat.Hom.hom σ) b).mapMatrix
        (Matrix.of fun i j : Fin q => MvPolynomial.pderiv (s i) (rel j)))
      = Matrix.of fun i j : Fin q =>
          MvPolynomial.eval₂ (CommRingCat.Hom.hom σ) b (MvPolynomial.pderiv (s i) (rel j)) := by
    refine Matrix.ext fun i j => ?_
    simp [RingHom.mapMatrix_apply]
  rw [jacobianDetSection_mvPolynomialToSumCoordinateRing k M n q lift s,
    specToAffineSpaceExtendCoords_appTop_mvPolynomial k A pA M e σ n b he]
  congr 1
  rw [RingHom.map_det, hM1]
  show (MvPolynomial.eval₂Hom (CommRingCat.Hom.hom σ) b)
      (Matrix.det (Matrix.of fun i j : Fin q => MvPolynomial.pderiv (s i) (rel j))) = _
  rw [RingHom.map_det, hM2]

theorem smoothPullbackHasGraphChart : SmoothPullbackHasGraphChart.{u} := by
  intro k _ _ X Y A pX pY pA _ _ _ _ i _ _ M ρ _ hρ r h _ _ y
  have : IsAffine X := isAffine_of_isAffineHom (f := i)
  obtain ⟨V, hyV, hVaff, B', τ, jV, hτ, hjV, hpb⟩ :=
    PresentedSmoothChart.exists_affineOpen_isPullback_specMap i r h y
  have := hjV
  let _ : Algebra Γ(A, ⊤) B' := (CommRingCat.Hom.hom τ).toAlgebra
  have halg : (algebraMap Γ(A, ⊤) B') = CommRingCat.Hom.hom τ := rfl
  obtain ⟨⟨ι, κ, hκ, hι, P, hPdim⟩⟩ := hτ
  have := hι
  have := hκ
  let _ : Fintype κ := Fintype.ofFinite κ
  let _ : DecidableEq κ := Classical.decEq κ
  have hA : Algebra.IsStandardSmooth Γ(A, ⊤) B' := ⟨⟨ι, κ, hκ, hι, ⟨P⟩⟩⟩
  have hss : RingHom.IsStandardSmooth (CommRingCat.Hom.hom τ) := hA
  have hgsmooth : Smooth (specHomOfGlobalSections A τ) :=
    PresentedSmoothChart.smooth_specMap_comp_isoSpec_inv τ hss
  have := hgsmooth
  obtain ⟨n, ev, hn⟩ : ∃ (n : ℕ) (_ : ι ≃ Fin n), Nat.card ι = n :=
    ⟨_, Finite.equivFin ι, rfl⟩
  obtain ⟨q, er, hq⟩ : ∃ (q : ℕ) (_ : κ ≃ Fin q), Nat.card κ = q :=
    ⟨_, Finite.equivFin κ, rfl⟩
  have hdim' : Nat.card ι - Nat.card κ = r := hPdim
  have hle : Nat.card κ ≤ Nat.card ι := Nat.card_le_card_of_injective P.map P.map_inj
  have hnq : n = q + r := by omega
  obtain ⟨b, hb⟩ : ∃ b : Fin n → B', b = fun t => P.val (ev.symm t) := ⟨_, rfl⟩
  obtain ⟨rel, hrel_def⟩ : ∃ rel : Fin q → MvPolynomial (Fin n) Γ(A, ⊤),
      rel = fun j => MvPolynomial.rename ⇑ev (P.relation (er.symm j)) := ⟨_, rfl⟩
  obtain ⟨s, hs_def⟩ : ∃ s : Fin q → Fin n, s = fun j => ev (P.map (er.symm j)) := ⟨_, rfl⟩
  have hsinj : Function.Injective s := by
    intro a₁ a₂ hab
    simp only [hs_def] at hab
    exact er.symm.injective (P.map_inj (ev.injective hab))
  have hbev : (b ∘ ⇑ev) = P.val := by
    funext x
    simp [hb]
  have hvb : (P.val ∘ ⇑ev.symm) = b := by
    funext t
    simp [hb]
  have heval : ∀ p : MvPolynomial ι Γ(A, ⊤),
      MvPolynomial.eval₂ (CommRingCat.Hom.hom τ) b (MvPolynomial.rename ⇑ev p) =
        MvPolynomial.aeval P.val p := by
    intro p
    rw [MvPolynomial.eval₂_rename, hbev, MvPolynomial.aeval_def, halg]
  have hE : ∀ x : MvPolynomial (Fin n) Γ(A, ⊤),
      MvPolynomial.aeval P.val (MvPolynomial.rename ⇑ev.symm x) =
        MvPolynomial.eval₂ (CommRingCat.Hom.hom τ) b x := by
    intro x
    rw [MvPolynomial.aeval_def, MvPolynomial.eval₂_rename, hvb, halg]
  have hkerP : ∀ x : MvPolynomial ι Γ(A, ⊤),
      MvPolynomial.aeval P.val x = 0 ↔ x ∈ Ideal.span (Set.range P.relation) := by
    intro x
    rw [P.span_range_relation_eq_ker, Algebra.Generators.ker_eq_ker_aeval_val]
    simp [RingHom.mem_ker]
  have hrel0 : ∀ j : κ, MvPolynomial.aeval P.val (P.relation j) = 0 := fun j =>
    (hkerP _).mpr (Ideal.subset_span ⟨j, rfl⟩)
  have hsub : Ideal.map (MvPolynomial.rename ⇑ev) (Ideal.span (Set.range P.relation))
      ≤ Ideal.span (Set.range rel) := by
    rw [Ideal.map_le_iff_le_comap, Ideal.span_le]
    rintro z ⟨j, rfl⟩
    simp only [SetLike.mem_coe, Ideal.mem_comap]
    exact Ideal.subset_span ⟨er j, by simp [hrel_def]⟩
  have hker : RingHom.ker (MvPolynomial.eval₂Hom (CommRingCat.Hom.hom τ) b) =
      Ideal.span (Set.range rel) := by
    apply le_antisymm
    · intro x hx
      have hx' : MvPolynomial.eval₂ (CommRingCat.Hom.hom τ) b x = 0 := by
        simpa [RingHom.mem_ker] using hx
      have h1 : MvPolynomial.rename ⇑ev.symm x ∈ Ideal.span (Set.range P.relation) :=
        (hkerP _).mp (by rw [hE x]; exact hx')
      have h2 := hsub (Ideal.mem_map_of_mem _ h1)
      rw [MvPolynomial.rename_rename, Equiv.self_comp_symm] at h2
      simpa using h2
    · rw [Ideal.span_le]
      rintro z ⟨j, rfl⟩
      simp only [SetLike.mem_coe, RingHom.mem_ker, MvPolynomial.coe_eval₂Hom, hrel_def]
      rw [heval]
      exact hrel0 _
  have hjacEntry : ∀ i₀ j₀ : Fin q,
      MvPolynomial.eval₂ (CommRingCat.Hom.hom τ) b (MvPolynomial.pderiv (s i₀) (rel j₀)) =
        MvPolynomial.aeval P.val (P.jacobiMatrix (er.symm i₀) (er.symm j₀)) := by
    intro i₀ j₀
    simp only [hs_def, hrel_def]
    rw [MvPolynomial.pderiv_rename (f := ⇑ev) ev.injective, heval, P.jacobiMatrix_apply]
  have hj := P.jacobian_eq_jacobiMatrix_det
  have hdet : (Matrix.of fun i₀ j₀ : Fin q =>
        MvPolynomial.eval₂ (CommRingCat.Hom.hom τ) b
          (MvPolynomial.pderiv (s i₀) (rel j₀))).det = P.jacobian := by
    have h1 : (Matrix.of fun i₀ j₀ : Fin q =>
          MvPolynomial.eval₂ (CommRingCat.Hom.hom τ) b
            (MvPolynomial.pderiv (s i₀) (rel j₀)))
        = (P.jacobiMatrix.map ⇑(MvPolynomial.aeval P.val).toRingHom).submatrix
            ⇑er.symm ⇑er.symm := by
      refine Matrix.ext fun i₀ j₀ => ?_
      simp only [Matrix.of_apply, Matrix.submatrix_apply, Matrix.map_apply,
        AlgHom.toRingHom_eq_coe, RingHom.coe_coe]
      exact hjacEntry i₀ j₀
    rw [h1, Matrix.det_submatrix_equiv_self, ← RingHom.mapMatrix_apply, ← RingHom.map_det]
    simpa [Algebra.Generators.algebraMap_apply] using hj.symm
  have hgen : ∀ x : B', ∃ p : MvPolynomial (Fin n) Γ(A, ⊤),
      MvPolynomial.eval₂ (CommRingCat.Hom.hom τ) b p = x := by
    intro x
    refine ⟨MvPolynomial.rename ⇑ev (P.σ x), ?_⟩
    rw [heval]
    exact P.aeval_val_σ x
  choose lift hliftmap using fun j : Fin q => exists_mvPolynomial_map_appTop_eq k A M ρ n q rel j
  have hΔ : IsUnit ((specToAffineSpaceExtendCoords k A pA M ρ τ n b).appTop
      (jacobianDetSection k M n q (fun j => mvPolynomialToSumCoordinateRing k M n (lift j)) s)) := by
    rw [appTop_specToAffineSpaceExtendCoords_jacobianDetSection k A pA M ρ τ n q b hρ rel lift hliftmap s]
    have h2 : IsUnit ((Matrix.of fun i₀ j₀ : Fin q =>
        MvPolynomial.eval₂ (CommRingCat.Hom.hom τ) b
          ((MvPolynomial.pderiv (s i₀)) (rel j₀))).det) := by
      rw [hdet]
      exact P.jacobian_isUnit
    exact h2.map ((Scheme.ΓSpecIso B').inv).hom
  have hpA'Sm : Smooth (specHomOfGlobalSections A τ ≫ pA) := by infer_instance
  have hpA'ft : LocallyOfFiniteType (specHomOfGlobalSections A τ ≫ pA) := by infer_instance
  have hpA'qc : QuasiCompact (specHomOfGlobalSections A τ ≫ pA) := by infer_instance
  refine ⟨V, hyV, hVaff, Spec B', specHomOfGlobalSections A τ ≫ pA, inferInstance, hpA'Sm,
    hpA'ft, hpA'qc, specHomOfGlobalSections A τ, hgsmooth, rfl, jV, hjV, hpb, n, q, hnq,
    specToAffineSpaceExtendCoords k A pA M ρ τ n b, ?_, ?_, (fun j => mvPolynomialToSumCoordinateRing k M n (lift j)),
    jacobianDetSection k M n q (fun j => mvPolynomialToSumCoordinateRing k M n (lift j)) s, ?_, ?_, ?_⟩
  · exact isClosedImmersion_specToAffineSpaceExtendCoords k A pA M ρ τ n b hρ hgen
  · exact specToAffineSpaceExtendCoords_comp_projLeft k A pA M ρ τ n b hρ
  · exact ker_specToAffineSpaceExtendCoords_appTop k A pA M ρ τ n b hρ q rel hker lift hliftmap
  · exact preimage_basicOpen_specToAffineSpaceExtendCoords k A pA M ρ τ n b _ hΔ
  · exact smooth_graphMorphismToAffineSpace_basicOpen k M n q (fun j => mvPolynomialToSumCoordinateRing k M n (lift j)) s hsinj

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothPullbackGraphChart =====
