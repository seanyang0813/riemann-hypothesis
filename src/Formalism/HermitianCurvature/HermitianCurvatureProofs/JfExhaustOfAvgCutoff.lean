module

public import Formalism.HermitianCurvature.StatementJF

@[expose] public section

open Matrix MeasureTheory Filter Topology
open scoped ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P.JFxI

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.JF

open scoped Matrix.Norms.Elementwise

def AvgCutoff : Prop :=
  ∀ (k r : ℕ) (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] (D : B.RealPlaceData k r Wp Wq) (K : Set ((Fin r → ℂ) × ℂ)),
    IsCompact K → K ⊆ QDom k r D.z D.z' →
    ∃ φ : B.Mat k r → ℂ, B.CkOn ⊤ (B.GV k r) φ ∧
      (∃ C : Set (B.Mat k r), IsCompact C ∧ C ⊆ Om k r D.z D.z' ∧ ∀ g, g ∉ C → φ g = 0) ∧
      ∀ p₀, D.inSS p₀ → ∀ q ∈ K, ∫ p, φ (B.sgs p (B.sgs p₀ (B.gq D q))) ∂D.μSS = 1

def AdjLeibniz : Prop :=
  ∀ (k r : ℕ) (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (D : B.RealPlaceData k r Wp Wq)
    (Θ : B.DiffOp k r Wp Wq),
    B.SmoothCoef (Om k r D.z D.z') Θ →
    ∃ Θ' : B.DiffOp k r Wp Wq, B.opOrder Θ' = B.opOrder Θ ∧
      ∀ f : B.Mat k r → (Wq →L[ℂ] Wp), B.CkOn (B.opOrder Θ : ℕ∞) (Om k r D.z D.z') f →
        ∀ g ∈ Om k r D.z D.z', B.opApply Θ' f g = B.opAdj Θ f g

variable {k r : ℕ}

theorem om_sub_gv (z z' : Fin (2 * r + k + 1) → ℂ) : Om k r z z' ⊆ GV k r := by
  exact Set.inter_subset_left

end Formalism.FourierDecayAlt.P.JFxI

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P
