module

public import Mathlib.Algebra.QuadraticAlgebra.Basic
public import Mathlib.LinearAlgebra.FreeModule.StrongRankCondition
public import GroundTheory.AutomorphicForms.QuadraticConj
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.StrongApproximation.SAOpenStatement
import Mathlib.Algebra.Order.Star.Rat
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.TypeStar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Theta.GaussianExample, GroundTheory.HeightsAndTheta.Heights.StrongApproximation.Statements

-- ===== clump member: GroundTheory.HeightsAndTheta.Theta.GaussianExample =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Theta.GaussianExample", "h": "module\n\npublic import Mathlib.Algebra.QuadraticAlgebra.Basic\npublic import Mathlib.LinearAlgebra.FreeModule.StrongRankCondition\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport GroundTheory.AutomorphicForms.QuadraticConj\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Theta

open GroundTheory.Automorphic Matrix

instance fact_gaussQ : Fact (∀ r : ℚ, r ^ 2 ≠ -1 + 0 * r) :=
  ⟨fun r h => by nlinarith [sq_nonneg r]⟩

abbrev GaussQ : Type := QuadraticAlgebra ℚ (-1) 0

instance : Algebra.IsQuadraticExtension ℚ GaussQ :=
  ⟨QuadraticAlgebra.finrank_eq_two _ _⟩

end GroundTheory.Heights₂.Theta
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Theta.GaussianExample =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.StrongApproximation.Statements =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.StrongApproximation.Statements", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.StrongApproximation.SAOpenStatement\npublic import GroundTheory.HeightsAndTheta.Theta.GaussianExample\npublic import GroundTheory.AutomorphicForms.QuadraticConj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

noncomputable section

namespace GroundTheory.Heights₂.Heights

namespace StrongApprox

open Matrix NumberField IsDedekindDomain TensorProduct Topology ReciprocityTheory.ChartRestriction.G.SA

section Objects

variable {F : Type} [Field F] [NumberField F] (E : Type) [Field E] [Algebra F E]

abbrev Kv (v : HeightOneSpectrum (𝓞 F)) : Type := v.adicCompletion F ⊗[F] E

variable {E}

def sigV (c : E ≃ₐ[F] E) (v : HeightOneSpectrum (𝓞 F)) : Kv E v →ₐ[v.adicCompletion F] Kv E v :=
  Algebra.TensorProduct.map (AlgHom.id (v.adicCompletion F) (v.adicCompletion F)) c.toAlgHom

variable (E)

def inclV (v : HeightOneSpectrum (𝓞 F)) : E →+* Kv E v :=
  (Algebra.TensorProduct.includeRight : E →ₐ[F] Kv E v).toRingHom


variable (F) in
def evalAt (v : HeightOneSpectrum (𝓞 F)) : FiniteAdeleRing (𝓞 F) F →ₐ[F] v.adicCompletion F where
  toFun a := a v
  map_one' := rfl
  map_mul' _ _ := rfl
  map_zero' := rfl
  map_add' _ _ := rfl
  commutes' _ := rfl

def compAt (v : HeightOneSpectrum (𝓞 F)) : AE F E →+* Kv E v :=
  (Algebra.TensorProduct.map (evalAt F v) (AlgHom.id F E)).toRingHom


open scoped Classical in
variable (F) in
open Classical in
def singleF (v : HeightOneSpectrum (𝓞 F)) : v.adicCompletion F →ₗ[F] FiniteAdeleRing (𝓞 F) F where
  toFun x := ⟨Pi.single v x, by
    filter_upwards [show ({v}ᶜ : Set (HeightOneSpectrum (𝓞 F))) ∈ Filter.cofinite by simp] with w hw
    simp only [Set.mem_compl_iff, Set.mem_singleton_iff] at hw
    simp [hw]⟩
  map_add' x y := by
    apply FiniteAdeleRing.ext; intro w
    change Pi.single v (x + y) w = Pi.single v x w + Pi.single v y w
    rw [Pi.single_add, Pi.add_apply]
  map_smul' a x := by
    apply FiniteAdeleRing.ext; intro w
    change Pi.single v (a • x) w = (a : w.adicCompletion F) * Pi.single v x w
    by_cases h : w = v
    · subst h; simp only [Pi.single_eq_same, Algebra.smul_def]; rfl
    · simp [h]

def singleV (v : HeightOneSpectrum (𝓞 F)) : Kv E v →+ AE F E :=
  (LinearMap.rTensor E (singleF F v)).toAddMonoidHom

def embed (v : HeightOneSpectrum (𝓞 F)) {N : ℕ} (g : Matrix (Fin N) (Fin N) (Kv E v)) :
    Matrix (Fin N) (Fin N) (AE F E) :=
  1 + (g - 1).map (singleV E v)

def restrictTo (S : Finset (HeightOneSpectrum (𝓞 F))) (a : AE F E) : AE F E :=
  ∑ v ∈ S, singleV E v (compAt E v a)

def trunc (S : Finset (HeightOneSpectrum (𝓞 F))) {N : ℕ} (x : Matrix (Fin N) (Fin N) (AE F E)) :
    Matrix (Fin N) (Fin N) (AE F E) :=
  1 + (x - 1).map (restrictTo E S)

def intAt (v : HeightOneSpectrum (𝓞 F)) : AddSubgroup (Kv E v) :=
  AddSubgroup.closure
    {x | ∃ a ∈ v.adicCompletionIntegers F, ∃ b : 𝓞 E, x = a ⊗ₜ[F] (algebraMap (𝓞 E) E b)}

variable {E}

def Cl [TopologicalSpace (AE F E)] (c : E ≃ₐ[F] E) {N : ℕ} (J : Matrix (Fin N) (Fin N) E) :
    Set (Matrix (Fin N) (Fin N) (AE F E)) :=
  closure ((fun γ : Matrix (Fin N) (Fin N) E => γ.map (inclA F E)) '' SU c.toRingHom J)

end Objects

def perpProj {R : Type*} [CommRing R] (σ : R →+* R) {N : ℕ} (J : Matrix (Fin N) (Fin N) R)
    (e f : Fin N → R) (u : Fin N → R) : Fin N → R :=
  u - hf σ J u f • e - hf σ J u e • f

def HypPairExists.Statement : Prop :=
  ∀ (E : Type) [Field E] (σ : E →+* E), (∀ x, σ (σ x) = x) → (2 : E) ≠ 0 →
    ∀ (N : ℕ) (J : Matrix (Fin N) (Fin N) E), Jᵀ = J.map σ → IsUnit J.det →
    ∀ e : Fin N → E, e ≠ 0 → hf σ J e e = 0 →
      ∃ f : Fin N → E, hf σ J f f = 0 ∧ hf σ J e f = 1

def AETopologicalRing.Statement : Prop :=
  ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (c : E ≃ₐ[F] E), Module.finrank F E = 2 → c ≠ 1 →
    ∀ [TopologicalSpace (AE F E)] [IsModuleTopology (FiniteAdeleRing (𝓞 F) F) (AE F E)],
      IsTopologicalRing (AE F E) ∧ Continuous (sigA c) ∧
      (∃ δ : E, c δ = -δ ∧ ∀ a : AE F E, ∃! p : FiniteAdeleRing (𝓞 F) F × FiniteAdeleRing (𝓞 F) F,
        a = p.1 • (1 : AE F E) + p.2 • inclA F E δ) ∧
      ∀ (N : ℕ) (J : Matrix (Fin N) (Fin N) (AE F E)),
        Continuous (fun p : Matrix (Fin N) (Fin N) (AE F E) × Matrix (Fin N) (Fin N) (AE F E) =>
          p.1 * p.2) ∧
        Continuous (fun g : Matrix (Fin N) (Fin N) (AE F E) => gᵀ * J * g.map (sigA c)) ∧
        Continuous (fun g : Matrix (Fin N) (Fin N) (AE F E) => g.det) ∧
        IsClosed (SU (sigA c) J)

def EDenseInAE.Statement : Prop :=
  ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (c : E ≃ₐ[F] E), Module.finrank F E = 2 → c ≠ 1 →
    ∀ [TopologicalSpace (AE F E)] [IsModuleTopology (FiniteAdeleRing (𝓞 F) F) (AE F E)],
      DenseRange (inclA F E)

def OrthProjection.Statement : Prop :=
  (∀ (R : Type) [CommRing R] (σ : R →+* R), (∀ x, σ (σ x) = x) →
    ∀ (N : ℕ) (J : Matrix (Fin N) (Fin N) R), Jᵀ = J.map σ →
    ∀ e f : Fin N → R, hf σ J e e = 0 → hf σ J f f = 0 → hf σ J e f = 1 →
      IsLinearMap R (perpProj σ J e f) ∧
      (∀ u, perpProj σ J e f (perpProj σ J e f u) = perpProj σ J e f u) ∧
      (∀ u, hf σ J (perpProj σ J e f u) e = 0 ∧ hf σ J (perpProj σ J e f u) f = 0) ∧
      (∀ u, hf σ J u e = 0 → hf σ J u f = 0 → perpProj σ J e f u = u)) ∧
  (∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (c : E ≃ₐ[F] E), Module.finrank F E = 2 → c ≠ 1 →
    ∀ (N : ℕ) (J : Matrix (Fin N) (Fin N) E) (e f : Fin N → E),
    ∀ [TopologicalSpace (AE F E)] [IsModuleTopology (FiniteAdeleRing (𝓞 F) F) (AE F E)],
      Continuous (perpProj (sigA c) (J.map (inclA F E)) (inclA F E ∘ e) (inclA F E ∘ f)) ∧
      ∀ u : Fin N → E, inclA F E ∘ perpProj c.toRingHom J e f u =
        perpProj (sigA c) (J.map (inclA F E)) (inclA F E ∘ e) (inclA F E ∘ f) (inclA F E ∘ u))

def EichlerDense.Statement : Prop :=
  ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (c : E ≃ₐ[F] E), Module.finrank F E = 2 → c ≠ 1 →
    ∀ (N : ℕ) (J : Matrix (Fin N) (Fin N) E), Jᵀ = J.map c →
    ∀ e f : Fin N → E, hf c.toRingHom J e e = 0 → hf c.toRingHom J f f = 0 →
      hf c.toRingHom J e f = 1 →
    ∀ [TopologicalSpace (AE F E)] [IsModuleTopology (FiniteAdeleRing (𝓞 F) F) (AE F E)],
      eichAlong (sigA c) (J.map (inclA F E)) (inclA F E ∘ e) (inclA F E ∘ f) ⊆
          closure ((fun γ : Matrix (Fin N) (Fin N) E => γ.map (inclA F E)) ''
            eichAlong c.toRingHom J e f) ∧
        eichAlong (sigA c) (J.map (inclA F E)) (inclA F E ∘ f) (inclA F E ∘ e) ⊆
          closure ((fun γ : Matrix (Fin N) (Fin N) E => γ.map (inclA F E)) ''
            eichAlong c.toRingHom J f e)

def ClosureIsSubmonoid.Statement : Prop :=
  ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (c : E ≃ₐ[F] E), Module.finrank F E = 2 → c ≠ 1 →
    ∀ (N : ℕ) (J : Matrix (Fin N) (Fin N) E), Jᵀ = J.map c → IsUnit J.det →
    ∀ e f : Fin N → E, hf c.toRingHom J e e = 0 → hf c.toRingHom J f f = 0 →
      hf c.toRingHom J e f = 1 →
    ∀ [TopologicalSpace (AE F E)] [IsModuleTopology (FiniteAdeleRing (𝓞 F) F) (AE F E)],
      Cl c J ⊆ SU (sigA c) (J.map (inclA F E)) ∧ (1 : Matrix (Fin N) (Fin N) (AE F E)) ∈ Cl c J ∧
      (∀ a ∈ Cl c J, ∀ b ∈ Cl c J, a * b ∈ Cl c J) ∧
      eichSet (sigA c) (J.map (inclA F E)) (inclA F E ∘ e) (inclA F E ∘ f) ⊆ Cl c J

def LocalRingHypotheses.Statement : Prop :=
  ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (c : E ≃ₐ[F] E), Module.finrank F E = 2 → c ≠ 1 →
    ∀ v : HeightOneSpectrum (𝓞 F),
      (∀ x, sigV c v (sigV c v x) = x) ∧
      (∀ x, sigV c v x = x ↔ x ∈ Set.range (algebraMap (v.adicCompletion F) (Kv E v))) ∧
      Module.finrank (v.adicCompletion F) (Kv E v) = 2 ∧ IsReduced (Kv E v) ∧
      (2 : v.adicCompletion F) ≠ 0 ∧
      (∀ x : E, sigV c v (inclV E v x) = inclV E v (c x)) ∧
      ∀ (N : ℕ) (J : Matrix (Fin N) (Fin N) E) (x y : Fin N → E),
        inclV E v (hf c.toRingHom J x y) =
          hf (sigV c v).toRingHom (J.map (inclV E v)) (inclV E v ∘ x) (inclV E v ∘ y)

def PlaceMaps.Statement : Prop :=
  ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (c : E ≃ₐ[F] E), Module.finrank F E = 2 → c ≠ 1 →
    (∀ a b : AE F E, (∀ v, compAt E v a = compAt E v b) → a = b) ∧
    ∀ v : HeightOneSpectrum (𝓞 F),
      (∀ x, compAt E v (singleV E v x) = x) ∧
      (∀ w, w ≠ v → ∀ x, compAt E w (singleV E v x) = 0) ∧
      (∀ x y, singleV E v (x * y) = singleV E v x * singleV E v y) ∧
      (∀ w, w ≠ v → ∀ x y, singleV E v x * singleV E w y = 0) ∧
      (∀ (x : Kv E v) (y : E), singleV E v (x * inclV E v y) = singleV E v x * inclA F E y) ∧
      (∀ x, sigA c (singleV E v x) = singleV E v (sigV c v x)) ∧
      (∀ a, compAt E v (sigA c a) = sigV c v (compAt E v a)) ∧
      (∀ x : E, compAt E v (inclA F E x) = inclV E v x) ∧
      ∀ N : ℕ,
        embed E v (1 : Matrix (Fin N) (Fin N) (Kv E v)) = 1 ∧
        (∀ g h : Matrix (Fin N) (Fin N) (Kv E v), embed E v (g * h) = embed E v g * embed E v h) ∧
        ∀ J : Matrix (Fin N) (Fin N) E,
          (∀ g ∈ SU (sigV c v).toRingHom (J.map (inclV E v)),
            embed E v g ∈ SU (sigA c) (J.map (inclA F E))) ∧
          ∀ x ∈ SU (sigA c) (J.map (inclA F E)),
            x.map (compAt E v) ∈ SU (sigV c v).toRingHom (J.map (inclV E v))

def EichlerAtPlace.Statement : Prop :=
  ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (c : E ≃ₐ[F] E), Module.finrank F E = 2 → c ≠ 1 →
    ∀ (v : HeightOneSpectrum (𝓞 F)) (N : ℕ) (J : Matrix (Fin N) (Fin N) E),
      (∀ (e : Fin N → E) (u : Fin N → Kv E v) (c' : Kv E v),
        embed E v (eich (sigV c v).toRingHom (J.map (inclV E v)) (inclV E v ∘ e) u c') =
          eich (sigA c) (J.map (inclA F E)) (inclA F E ∘ e) (singleV E v ∘ u) (singleV E v c')) ∧
      (Jᵀ = J.map c → ∀ e f : Fin N → E, hf c.toRingHom J e e = 0 → hf c.toRingHom J f f = 0 →
        hf c.toRingHom J e f = 1 →
        ∀ g ∈ eichSet (sigV c v).toRingHom (J.map (inclV E v)) (inclV E v ∘ e) (inclV E v ∘ f),
          embed E v g ∈ eichSet (sigA c) (J.map (inclA F E)) (inclA F E ∘ e) (inclA F E ∘ f))

def LocalInClosure.Statement : Prop :=
  ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (c : E ≃ₐ[F] E), Module.finrank F E = 2 → c ≠ 1 →
    ∀ (N : ℕ) (J : Matrix (Fin N) (Fin N) E), Jᵀ = J.map c → IsUnit J.det →
    (∃ e : Fin N → E, e ≠ 0 ∧ hf c.toRingHom J e e = 0) →
    ∀ [TopologicalSpace (AE F E)] [IsModuleTopology (FiniteAdeleRing (𝓞 F) F) (AE F E)],
    ∀ (v : HeightOneSpectrum (𝓞 F)), ∀ g ∈ SU (sigV c v).toRingHom (J.map (inclV E v)),
      embed E v g ∈ Cl c J

def AENeighbourhoods.Statement : Prop :=
  ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (c : E ≃ₐ[F] E), Module.finrank F E = 2 → c ≠ 1 →
    ∀ [TopologicalSpace (AE F E)] [IsModuleTopology (FiniteAdeleRing (𝓞 F) F) (AE F E)],
      (∀ (N : ℕ), ∀ U ∈ 𝓝 (0 : Matrix (Fin N) (Fin N) (AE F E)),
        ∃ S : Finset (HeightOneSpectrum (𝓞 F)), ∀ M : Matrix (Fin N) (Fin N) (AE F E),
          (∀ i j, (∀ v ∈ S, compAt E v (M i j) = 0) ∧ ∀ v ∉ S, compAt E v (M i j) ∈ intAt E v) →
          M ∈ U) ∧
      ∀ a : AE F E, ∃ S : Finset (HeightOneSpectrum (𝓞 F)), ∀ v ∉ S, compAt E v a ∈ intAt E v

def Truncation.Statement : Prop :=
  ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (c : E ≃ₐ[F] E), Module.finrank F E = 2 → c ≠ 1 →
    ∀ (N : ℕ) (J : Matrix (Fin N) (Fin N) E), Jᵀ = J.map c → IsUnit J.det →
    (∃ e : Fin N → E, e ≠ 0 ∧ hf c.toRingHom J e e = 0) →
    ∀ [TopologicalSpace (AE F E)] [IsModuleTopology (FiniteAdeleRing (𝓞 F) F) (AE F E)],
    ∀ (S : Finset (HeightOneSpectrum (𝓞 F))) (x : Matrix (Fin N) (Fin N) (AE F E)),
      (∀ v ∈ S, (trunc E S x).map (compAt E v) = x.map (compAt E v)) ∧
      (∀ v ∉ S, (trunc E S x).map (compAt E v) = 1) ∧
      (∀ l : List (HeightOneSpectrum (𝓞 F)), l.Nodup → (∀ v, v ∈ l ↔ v ∈ S) →
        trunc E S x = (l.map fun v => embed E v (x.map (compAt E v))).prod) ∧
      (x ∈ SU (sigA c) (J.map (inclA F E)) → trunc E S x ∈ Cl c J)

def SAHolds.Statement : Prop := SAStatement

def SAOpenHolds.Statement : Prop := SAOpenStatement

section Inhabitants

open QuadraticAlgebra GroundTheory.Heights₂.Theta GroundTheory.Automorphic

@[instance_reducible] def topAE : TopologicalSpace (AE ℚ GaussQ) := moduleTopology (FiniteAdeleRing (𝓞 ℚ) ℚ) (AE ℚ GaussQ)

attribute [local instance] topAE

theorem isModuleTopology_AE : IsModuleTopology (FiniteAdeleRing (𝓞 ℚ) ℚ) (AE ℚ GaussQ) := ⟨rfl⟩

attribute [local instance] isModuleTopology_AE



theorem inv_mem_SU {R : Type*} [CommRing R] (σ : R →+* R) {N : ℕ} (J : Matrix (Fin N) (Fin N) R)
    {a : Matrix (Fin N) (Fin N) R} (ha : a ∈ SU σ J) : a⁻¹ ∈ SU σ J := by
  obtain ⟨hdet, hu⟩ := ha
  have hunit : IsUnit a.det := by rw [hdet]; exact isUnit_one
  have hmap : a.map σ * a⁻¹.map σ = 1 := by
    rw [← Matrix.map_mul, Matrix.mul_nonsing_inv _ hunit, Matrix.map_one _ (map_zero σ) (map_one σ)]
  refine ⟨by rw [Matrix.det_nonsing_inv, hdet, Ring.inverse_one], ?_⟩
  calc a⁻¹ᵀ * J * a⁻¹.map σ = a⁻¹ᵀ * (aᵀ * J * a.map σ) * a⁻¹.map σ := by rw [hu]
    _ = (a * a⁻¹)ᵀ * J * (a.map σ * a⁻¹.map σ) := by
        rw [Matrix.transpose_mul]; simp only [Matrix.mul_assoc]
    _ = J := by rw [Matrix.mul_nonsing_inv _ hunit, hmap]; simp

end Inhabitants

end StrongApprox

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.StrongApproximation.Statements =====
