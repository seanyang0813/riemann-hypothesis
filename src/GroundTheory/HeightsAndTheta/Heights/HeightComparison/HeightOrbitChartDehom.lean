module

public import GroundTheory.HeightsAndTheta.Heights.HeightComparison.HeightObjects

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial NumberField ReciprocityTheory.ChartRestriction.G

def OrbitChartDehom.Statement : Prop :=
  ∀ (ι : Type) [Fintype ι] [DecidableEq ι] [Nonempty ι] (n : ι → ℕ)
    (A : Heights.HermLine n) (x : Cone n (AlgebraicClosure ℚ)) (s : MvPolynomial (Coord n) ℤ),
    BlockNonzero x → Geo.IsSectionOn (orbitIdeal x) A.toGeo s →
    ∀ V ∈ Geo.divSupp (orbitIdeal x) s, ∀ c c' : (k : ι) → Fin (n k + 1),
      (∀ k, (X ⟨k, c k⟩ : MvPolynomial (Coord n) ℤ) ∉ V) →
      (∀ k, (X ⟨k, c' k⟩ : MvPolynomial (Coord n) ℤ) ∉ V) →
        (V ⊔ Ideal.span (Set.range fun k ↦ (X ⟨k, c k⟩ : MvPolynomial (Coord n) ℤ) - 1)).comap
            (C : ℤ →+* MvPolynomial (Coord n) ℤ) = V.comap (C : ℤ →+* MvPolynomial (Coord n) ℤ) ∧
          Nonempty ((MvPolynomial (Coord n) ℤ ⧸
              (V ⊔ Ideal.span (Set.range fun k ↦ (X ⟨k, c k⟩ : MvPolynomial (Coord n) ℤ) - 1))) ≃+*
            (MvPolynomial (Coord n) ℤ ⧸
              (V ⊔ Ideal.span (Set.range fun k ↦ (X ⟨k, c' k⟩ : MvPolynomial (Coord n) ℤ) - 1))))

end GroundTheory.Heights₂.Heights
