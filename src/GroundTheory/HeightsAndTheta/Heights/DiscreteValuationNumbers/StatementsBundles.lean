module

public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects
public import Mathlib.RingTheory.AlgebraicIndependent.Defs
public import Mathlib.RingTheory.MvPolynomial.Symmetric.Defs
import Std.Tactic.BVDecide.Normalize.Prop
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsSemipositiveOn

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.NumbersDVR

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo

noncomputable section

def NumericalSegre.Statement : Prop :=
  ∀ (F : Type) [Field F] (Ω : Type) [Field Ω] [Algebra F Ω]
    (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)]
    (y : (Σ k, ι k) → Ω) (e : ℕ),
    IsMultiProjPrime (pointIdeal F y) →
    ringKrullDim (MRing ι F ⧸ pointIdeal F y) = ((e + Fintype.card K : ℕ) : WithBot ℕ∞) →
    ∀ (N : ℕ), 0 < N → ∀ (E : Type) [AddCommGroup E] [Module Ω E]
      (B : ChartBundle F (segreVec y) N E) (w : Module.Basis (Fin N) Ω E) (b : Fin N → K → ℤ),
      IsFlagFrame y B w b →
    ∀ (M : ℕ) (a : K → ℤ) (φ : Fin M → Module.Dual Ω E), IsTwistedDualGens y B a φ →
    ∀ (Φ : Type) [Field Φ] [Algebra Ω Φ] (t : Fin N → Φ), AlgebraicIndependent Ω t →
    ∀ (n : ℕ) (Y : List (K → ℤ)), n + Y.length = N - 1 + e →
      intNumL F (projIdeal F y w φ t) (List.replicate n zetaDeg ++ Y.map liftDeg) =
        if N - 1 ≤ n then
          ∑ α ∈ Finset.Nat.antidiagonalTuple N (n - (N - 1)),
            intNumL F (pointIdeal F y) (rootList (fun i => a - b i) α ++ Y)
        else 0

def FlagIndependence.Statement : Prop :=
  ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (ϖ : O), Irreducible ϖ →
    ∀ (Ω : Type) [Field Ω] [Algebra O Ω]
      (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)]
      (y : (Σ k, ι k) → Ω) (d : ℕ), IsModelOver (pointIdeal O y) d →
    ∀ (N : ℕ) (E : Type) [AddCommGroup E] [Module Ω E] (B B' : ChartBundle O (segreVec y) N E),
      SameGenericFibre ϖ B B' →
    ∀ (w w' v v' : Module.Basis (Fin N) Ω E) (x x' u u' : Fin N → K → ℤ)
      (f g f₂ g₂ : Fin N → MRing ι O),
      IsFlagPair ϖ y B B' w w' x x' f g → IsFlagPair ϖ y B B' v v' u u' f₂ g₂ →
    ∀ (m : ℕ) (G : MvPolynomial (Fin N) ℤ), G.IsHomogeneous m → G.IsSymmetric →
    ∀ (Gs Hs : Fin N → MvPolynomial (Fin N ⊕ Fin N) ℤ), IsPairExpansion m G Gs →
      IsPairExpansion m G Hs →
    ∀ Q : List (K → ℤ), Q.length + m = d + 1 →
      pairNum (pointIdeal O y) x x' f g Gs Q = pairNum (pointIdeal O y) u u' f₂ g₂ Hs Q

def PairNumberPullback.Statement : Prop :=
  ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (ϖ : O), Irreducible ϖ →
    ∀ (Ω : Type) [Field Ω] [Algebra O Ω]
      (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)]
      (K' : Type) [Fintype K'] [DecidableEq K'] (ι' : K' → Type) [∀ k, Fintype (ι' k)]
      (y : (Σ k, ι k) → Ω) (y' : (Σ k, ι' k) → Ω) (d r : ℕ),
      IsModelOver (pointIdeal O y) d → IsModelOver (pointIdeal O (joinCoords y y')) (d + r) →
    ∀ (N : ℕ) (x x' : Fin N → K → ℤ) (f g : Fin N → MRing ι O),
      (∀ i, IsVerticalDivisor (pointIdeal O y) ϖ (x i - x' i) (f i) (g i)) →
    ∀ (m : ℕ) (G : MvPolynomial (Fin N) ℤ), G.IsHomogeneous m →
    ∀ Gs : Fin N → MvPolynomial (Fin N ⊕ Fin N) ℤ, IsPairExpansion m G Gs →
    ∀ Q : List (K → ℤ), Q.length + m = d + r + 1 →
      (0 < r → pairNum (pointIdeal O (joinCoords y y')) (fun i => joinDeg (x i))
        (fun i => joinDeg (x' i)) (fun i => joinForm (f i)) (fun i => joinForm (g i)) Gs
        (Q.map joinDeg) = 0) ∧
      (IsBirationalJoin O y y' → pairNum (pointIdeal O (joinCoords y y')) (fun i => joinDeg (x i))
        (fun i => joinDeg (x' i)) (fun i => joinForm (f i)) (fun i => joinForm (g i)) Gs
        (Q.map joinDeg) = pairNum (pointIdeal O y) x x' f g Gs Q)

def PairCocycle.Statement : Prop :=
  ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (ϖ : O), Irreducible ϖ →
    ∀ (Ω : Type) [Field Ω] [Algebra O Ω]
      (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)]
      (y : (Σ k, ι k) → Ω) (d : ℕ), IsModelOver (pointIdeal O y) d →
    ∀ (N : ℕ) (E : Type) [AddCommGroup E] [Module Ω E] (B B' B'' : ChartBundle O (segreVec y) N E),
      SameGenericFibre ϖ B B' → SameGenericFibre ϖ B' B'' →
    ∀ (w w' w'' : Module.Basis (Fin N) Ω E) (x x' x'' : Fin N → K → ℤ)
      (f g f' g' f'' g'' : Fin N → MRing ι O),
      IsFlagPair ϖ y B B' w w' x x' f g → IsFlagPair ϖ y B' B'' w' w'' x' x'' f' g' →
      IsFlagPair ϖ y B B'' w w'' x x'' f'' g'' →
    ∀ (k : ℕ) (Gs Gs' Gs'' : Fin N → MvPolynomial (Fin N ⊕ Fin N) ℤ),
      IsPairExpansion k (psum (Fin N) ℤ k) Gs → IsPairExpansion k (psum (Fin N) ℤ k) Gs' →
      IsPairExpansion k (psum (Fin N) ℤ k) Gs'' →
    ∀ Q : List (K → ℤ), Q.length + k = d + 1 →
      pairNum (pointIdeal O y) x x'' f'' g'' Gs'' Q =
          pairNum (pointIdeal O y) x x' f g Gs Q + pairNum (pointIdeal O y) x' x'' f' g' Gs' Q ∧
        ∀ (fr gr : Fin N → MRing ι O) (Gr : Fin N → MvPolynomial (Fin N ⊕ Fin N) ℤ),
          IsFlagPair ϖ y B' B w' w x' x fr gr → IsPairExpansion k (psum (Fin N) ℤ k) Gr →
          pairNum (pointIdeal O y) x' x fr gr Gr Q = -pairNum (pointIdeal O y) x x' f g Gs Q

def SubQuotient.Statement : Prop :=
  ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (ϖ : O), Irreducible ϖ →
    ∀ (Ω : Type) [Field Ω] [Algebra O Ω]
      (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)]
      (y : (Σ k, ι k) → Ω) (d : ℕ), IsModelOver (pointIdeal O y) d →
    ∀ (N r : ℕ) (E U V : Type) [AddCommGroup E] [Module Ω E] [AddCommGroup U] [Module Ω U]
      [AddCommGroup V] [Module Ω V]
      (B B' : ChartBundle O (segreVec y) N E) (BU BU' : ChartBundle O (segreVec y) r U)
      (BV BV' : ChartBundle O (segreVec y) (N - r) V) (j : U →ₗ[Ω] E) (π : E →ₗ[Ω] V),
      Function.Injective j → Function.Surjective π → LinearMap.range j = LinearMap.ker π →
      SameGenericFibre ϖ B B' →
      (∀ c, segreVec y c ≠ 0 →
        (∀ z, z ∈ BU.lat c ↔ j z ∈ B.lat c) ∧ (∀ z, z ∈ BU'.lat c ↔ j z ∈ B'.lat c) ∧
        (∀ q, q ∈ BV.lat c ↔ ∃ z ∈ B.lat c, π z = q) ∧
        (∀ q, q ∈ BV'.lat c ↔ ∃ z ∈ B'.lat c, π z = q)) →
    ∀ (w w' : Module.Basis (Fin N) Ω E) (x x' : Fin N → K → ℤ) (f g : Fin N → MRing ι O),
      IsFlagPair ϖ y B B' w w' x x' f g →
    ∀ (wU wU' : Module.Basis (Fin r) Ω U) (xU xU' : Fin r → K → ℤ) (fU gU : Fin r → MRing ι O),
      IsFlagPair ϖ y BU BU' wU wU' xU xU' fU gU →
    ∀ (wV wV' : Module.Basis (Fin (N - r)) Ω V) (xV xV' : Fin (N - r) → K → ℤ)
      (fV gV : Fin (N - r) → MRing ι O),
      IsFlagPair ϖ y BV BV' wV wV' xV xV' fV gV →
    ∀ (k : ℕ) (Gs : Fin N → MvPolynomial (Fin N ⊕ Fin N) ℤ)
      (GsU : Fin r → MvPolynomial (Fin r ⊕ Fin r) ℤ)
      (GsV : Fin (N - r) → MvPolynomial (Fin (N - r) ⊕ Fin (N - r)) ℤ),
      IsPairExpansion k (psum (Fin N) ℤ k) Gs → IsPairExpansion k (psum (Fin r) ℤ k) GsU →
      IsPairExpansion k (psum (Fin (N - r)) ℤ k) GsV →
    ∀ Q : List (K → ℤ), Q.length + k = d + 1 →
      pairNum (pointIdeal O y) x x' f g Gs Q =
        pairNum (pointIdeal O y) xU xU' fU gU GsU Q + pairNum (pointIdeal O y) xV xV' fV gV GsV Q

def ScalarQuotient.Statement : Prop :=
  ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (ϖ : O), Irreducible ϖ →
    ∀ (Ω : Type) [Field Ω] [Algebra O Ω]
      (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)]
      (y : (Σ k, ι k) → Ω) (d : ℕ), IsModelOver (pointIdeal O y) d →
    ∀ (N : ℕ) (E : Type) [AddCommGroup E] [Module Ω E] (B B' : ChartBundle O (segreVec y) N E)
      (n : ℕ) (u : Oˣ),
      (∀ c, segreVec y c ≠ 0 → ∀ z, z ∈ B'.lat c ↔
        ∃ z₀ ∈ B.lat c, z = algebraMap O Ω ((u : O) * ϖ ^ n) • z₀) →
    ∀ (w w' : Module.Basis (Fin N) Ω E) (x x' : Fin N → K → ℤ) (f g : Fin N → MRing ι O),
      IsFlagPair ϖ y B B' w w' x x' f g →
    ∀ (k : ℕ) (Gs : Fin N → MvPolynomial (Fin N ⊕ Fin N) ℤ),
      IsPairExpansion k (psum (Fin N) ℤ k) Gs →
    ∀ Q : List (K → ℤ), Q.length + k = d + 1 →
      pairNum (pointIdeal O y) x x' f g Gs Q =
        (k : ℤ) * n * cycEval (fun W => classNum x (psum (Fin N) ℤ (k - 1)) Q W)
          (divCycle (pointIdeal O y) (C ϖ))

section Examples

theorem isVerticalDivisor_one {K : Type*} [DecidableEq K] {ι : K → Type*} {O : Type*} [CommRing O]
    [IsDomain O] [IsDiscreteValuationRing O] (ϖ : O) (H : Ideal (MRing ι O)) [H.IsPrime] :
    IsVerticalDivisor H ϖ 0 1 1 := by
  have hHom : IsMultiHomog (1 : MRing ι O) 0 := isWeightedHomogeneous_one O (blockWeight ι)
  have hOne : (1 : MRing ι O) ∉ H := (Ideal.ne_top_iff_one H).mp Ideal.IsPrime.ne_top'
  refine ⟨⟨0, 0, hHom, hHom, ?_⟩, hOne, hOne, ?_, ?_⟩
  · funext k
    simp
  · simp [ratDiv]
  · intro W hW _ _ _
    have hOneW : (1 : MRing ι O) ∉ W := (Ideal.ne_top_iff_one W).mp hW.ne_top
    exact ⟨1, 1, hOneW, hOneW, by simp⟩

def psumExpansion (N k : ℕ) : Fin N → MvPolynomial (Fin N ⊕ Fin N) ℤ :=
  fun i => ∑ j ∈ Finset.range k, X (Sum.inl i) ^ j * X (Sum.inr i) ^ (k - 1 - j)

theorem isHomogeneous_psumExpansion (N k : ℕ) (i : Fin N) :
    (psumExpansion N k i).IsHomogeneous (k - 1) := by
  unfold psumExpansion
  refine IsHomogeneous.sum _ _ _ fun j hj => ?_
  have hj' : j + (k - 1 - j) = k - 1 := by
    have := Finset.mem_range.mp hj
    omega
  have h := ((isHomogeneous_X ℤ (Sum.inl i : Fin N ⊕ Fin N)).pow j).mul
    ((isHomogeneous_X ℤ (Sum.inr i : Fin N ⊕ Fin N)).pow (k - 1 - j))
  simpa [hj'] using h

theorem isPairExpansion_psum (N k : ℕ) :
    IsPairExpansion k (psum (Fin N) ℤ k) (psumExpansion N k) := by
  refine ⟨?_, isHomogeneous_psumExpansion N k⟩
  unfold psumExpansion

  simp only [psum, map_sum, map_pow, rename_X, ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [mul_comm, (Commute.all _ _).geom_sum₂_mul]

end Examples

section ExamplesDVR

variable {K : Type*} [Fintype K] [DecidableEq K] {ι : K → Type*} {Ω : Type*} [Field Ω]
  {O : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Algebra O Ω]

instance pointIdeal_isPrime (y : (Σ k, ι k) → Ω) : (pointIdeal O y).IsPrime :=
  RingHom.ker_isPrime _

end ExamplesDVR

section ExamplesZ2

theorem isHomogeneous_psum (N k : ℕ) : (psum (Fin N) ℤ k).IsHomogeneous k := by
  unfold psum
  refine IsHomogeneous.sum _ _ _ fun i _ => ?_
  simpa using (isHomogeneous_X ℤ i).pow k

end ExamplesZ2

section ExamplesEuler

variable {Ω : Type*} [Field Ω] {R : Type*} [CommRing R] [Algebra R Ω]

section Pair
variable {O : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Algebra O Ω]

end Pair

end ExamplesEuler

end

end GroundTheory.Heights₂.Heights.NumbersDVR
