module

public import Formalism.HermitianCurvature.StatementU

@[expose] public section

open Matrix MeasureTheory
open scoped ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.C6

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt

open scoped Matrix.Norms.Elementwise

def sq2 {m : ℕ} (v : Fin m → ℂ) : ℝ := ∑ a, Complex.normSq (v a)

def unitOf {m : ℕ} (T Gv : ℝ) (v : Fin m → ℂ) : Fin m → ℂ := ((Real.sqrt (T / Gv) : ℝ) : ℂ) • v

def UnitWords (k r : ℕ) (u v : List (B.Mat k r)) (i : ℕ) : Prop :=
  (∀ X ∈ u, B.unitLie k r X) ∧ (∀ X ∈ v, B.unitLie k r X) ∧ u.length + v.length = i

def FibUnit : Prop :=
  ∀ (k r m : ℕ) (om : B.Mat k r → Fin m → ℂ) (Gp : B.Mat k r → ℝ) (T : ℝ),
    (∀ a, U.IsPolyDeg (r + 1) (fun g => om g a)) → U.IsPolyDeg (2 * r + 2) (fun g => (Gp g : ℂ)) → 0 < T →
    (∀ g ∈ B.GV k r, sq2 (om g) = Gp g / T) →
    ∀ ε : ℝ, 0 < ε → ∀ i : ℕ, ∃ C : ℝ, ∀ u v : List (B.Mat k r), UnitWords k r u v i →
      ∀ g ∈ B.GV k r, ε ≤ Gp g →
        ‖B.dLR u v (fun g' => unitOf T (Gp g') (om g')) g‖ ≤ C * B.gN g ^ ((r + 1) * (2 * i + 1))

def FibCost : Prop :=
  ∀ (k r m m' : ℕ) (om : B.Mat k r → Fin m → ℂ) (om' : B.Mat k r → Fin m' → ℂ) (Gp : B.Mat k r → ℝ) (T T' : ℝ)
    (E : Type) [NormedAddCommGroup E] [NormedSpace ℂ E] (Pi : (Fin m → ℂ) × (Fin m' → ℂ) → E)
    (O : Set ((Fin m → ℂ) × (Fin m' → ℂ))),
    (∀ a, U.IsPolyDeg (r + 1) (fun g => om g a)) → (∀ a, U.IsPolyDeg (r + 1) (fun g => om' g a)) →
    U.IsPolyDeg (2 * r + 2) (fun g => (Gp g : ℂ)) → 0 < T → 0 < T' →
    (∀ g ∈ B.GV k r, sq2 (om g) = Gp g / T) → (∀ g ∈ B.GV k r, sq2 (om' g) = Gp g / T') →
    IsOpen O → {w | sq2 w.1 = 1 ∧ sq2 w.2 = 1} ⊆ O → ContDiffOn ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) Pi O →
    ∀ ε : ℝ, 0 < ε → ∀ i : ℕ, ∃ C : ℝ, ∀ u v : List (B.Mat k r), UnitWords k r u v i →
      ∀ g ∈ B.GV k r, ε ≤ Gp g →
        ‖B.dLR u v (fun g' => Pi (unitOf T (Gp g') (om g'), unitOf T' (Gp g') (om' g'))) g‖ ≤
          C * B.gN g ^ (3 * (r + 1) * i)

def FibCostOfParts : Prop := FibUnit → FibCost

def DminPoly : Prop :=
  ∀ (k r : ℕ) (z z' : Fin (2 * r + k + 1) → ℂ) (l : Fin (r + 2)), U.IsPolyDeg l.val (fun g => Dmin k r z z' g l)

def GfPoly : Prop :=
  ∀ (k r : ℕ) (z z' : Fin (2 * r + k + 1) → ℂ), U.IsPolyDeg (2 * r + 2) (fun g => ((Gf k r z z' g : ℝ) : ℂ))

def GfDlast : Prop :=
  ∀ (k r : ℕ) (z z' : Fin (2 * r + k + 1) → ℂ), 0 ≤ Tz k r z → 0 ≤ Tz k r z' →
    ∀ (g : B.Mat k r) (ε : ℝ), ε ≤ Gf k r z z' g → ε ≤ Complex.normSq (Dmin k r z z' g (Fin.last (r + 1)))

abbrev EndH (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] := (Wq →L[ℂ] Wp) →L[ℂ] (Wq →L[ℂ] Wp)

section ddplus

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
  [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]

def domL (D : B.RealPlaceData k r Wp Wq) (L : Finset (Fin (r + 2))) : Set (B.Mat k r) :=
  {g | g ∈ B.GV k r ∧ 0 < Gf k r D.z D.z' g ∧ ∀ l ∈ L, Dmin k r D.z D.z' g l ≠ 0}

def bigPos (D : B.RealPlaceData k r Wp Wq) : Set (B.Mat k r) := domL D Finset.univ

def monoM (D : B.RealPlaceData k r Wp Wq) (a b : Fin (r + 2) → ℕ) (c : ℕ) (g : B.Mat k r) : ℂ :=
  (∏ l, (Dmin k r D.z D.z' g l)⁻¹ ^ a l * (star (Dmin k r D.z D.z' g l))⁻¹ ^ b l) *
    ((Gf k r D.z D.z' g : ℝ) : ℂ)⁻¹ ^ c

def Epart {nf : ℕ} (fib : Fin nf → B.Mat k r → EndH Wp Wq) (es : List (Fin nf × List (B.Mat k r)))
    (g : B.Mat k r) : EndH Wp Wq :=
  (es.map fun e => B.Rw e.2 (fib e.1) g).prod

def FibBound (D : B.RealPlaceData k r Wp Wq) (E : B.Mat k r → EndH Wp Wq) : Prop :=
  B.CkOn ⊤ (B.GPos D) E ∧ ∀ ε : ℝ, 0 < ε → ∀ i : ℕ, ∃ C : ℝ, ∀ u v : List (B.Mat k r), UnitWords k r u v i →
    ∀ g ∈ B.GV k r, ε ≤ Gf k r D.z D.z' g → ‖B.dLR u v E g‖ ≤ C * B.gN g ^ (3 * (r + 1) * i)

def InDDPlus (D : B.RealPlaceData k r Wp Wq) {nf : ℕ} (fib : Fin nf → B.Mat k r → EndH Wp Wq)
    (L : Finset (Fin (r + 2))) (o κ : ℕ) (Θ : B.DiffOp k r Wp Wq) : Prop :=
  B.SmoothCoef (domL D L) Θ ∧ B.Commutes D (domL D L) Θ ∧
  ∀ T ∈ Θ, ∃ (P : B.Mat k r → ℂ) (a b : Fin (r + 2) → ℕ) (c : ℕ)
      (es : List (Fin nf × List (B.Mat k r))), U.IsPolyDeg κ P ∧
      (∀ l, l ∉ L → l ≠ Fin.last (r + 1) → a l = 0 ∧ b l = 0) ∧
      T.word.length + (es.map fun e => e.2.length).sum ≤ o ∧ (∀ e ∈ es, ∀ X ∈ e.2, B.inLie k r X) ∧
      ∀ g ∈ domL D L, T.coef g = (P g * monoM D a b c g) • Epart fib es g

def IsCut0 (χ₀ : ℝ → ℝ) : Prop :=
  ContDiff ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) χ₀ ∧ (∃ δ : ℝ, 0 < δ ∧ ∀ x, x < δ → χ₀ x = 0) ∧ ∀ x, 1 ≤ x → χ₀ x = 1

end ddplus

def ComposeDDPlus : Prop :=
  ∀ (k r : ℕ) (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [FiniteDimensional ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq] (D : B.RealPlaceData k r Wp Wq) (nf : ℕ)
    (fib : Fin nf → B.Mat k r → EndH Wp Wq) (L : Finset (Fin (r + 2))) (o₁ κ₁ o₂ κ₂ : ℕ)
    (Θ₁ Θ₂ : B.DiffOp k r Wp Wq),
    (∀ j, FibBound D (fib j)) → InDDPlus D fib L o₁ κ₁ Θ₁ → InDDPlus D fib L o₂ κ₂ Θ₂ →
    ∃ Θ : B.DiffOp k r Wp Wq, InDDPlus D fib L (o₁ + o₂) (κ₁ + κ₂ + (2 * r + 2) * o₁) Θ ∧
      ∀ F : B.Mat k r → (Wq →L[ℂ] Wp), B.CkOn ((o₁ + o₂ : ℕ) : ℕ∞) (B.GV k r) F →
        ∀ g ∈ domL D L, B.opApply Θ F g = B.opApply Θ₁ (B.opApply Θ₂ F) g

def AV (CV r n : ℕ) : ℝ := (CV : ℝ) * ((r : ℝ) ^ 3 * n + (n : ℝ) ^ 2 + (r : ℝ) ^ 4)

def mmV (CV r : ℕ) : ℕ := CV * (r ^ 2 + 1)

section radial

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
  [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]

end radial

def AveragingZero : Prop :=
  ∀ β : ℂ, β ≠ 0 → ∀ (V : Type) [AddCommGroup V] [Module ℂ V] (p : Seminorm ℂ V) (s : ℕ) (w : Fin s → ℂ)
    (a : Fin s → V) (C' x₁ : ℝ), Function.Injective w →
    (∀ x : ℂ, x₁ ≤ ‖x‖ → p (∑ j, G.psi β (w j * x) • a j) ≤ C' / ‖x‖) → ∀ j, p (a j) = 0

section orbit

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
  [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]

def Rset (γ : B.Mat k r) : Set (B.Mat k r) := {ρ | ρ ∈ Nset k r ∧ γ⁻¹ * ρ * γ ∈ Nset k r}

def IsRelevant (D : B.RealPlaceData k r Wp Wq) (γ : B.Mat k r) : Prop :=
  γ ∈ B.GV k r ∧ ∀ ρ ∈ Rset γ, psi k r D.z cStd ρ = psi k r D.z' cStd (γ⁻¹ * ρ * γ)

def actR (γ ρ : B.Mat k r) (p : B.SS k r) : B.SS k r :=
  ((p.1.1, Matrix.of.symm (ρ * Matrix.of p.1.2)), (p.2.1, Matrix.of.symm (γ⁻¹ * ρ * γ * Matrix.of p.2.2)))

structure OrbData (D : B.RealPlaceData k r Wp Wq) (γ : B.Mat k r) where
  μR : Measure (Mt k r)
  haarR : B.IsHaarOn (Rset γ) μR
  J : (B.Mat k r → (Wq →L[ℂ] Wp)) → (Wq →L[ℂ] Wp)
  weil : ∀ (F : B.Mat k r → (Wq →L[ℂ] Wp)) (θ : B.SS k r → ℝ), Measurable θ → (∀ p, 0 ≤ θ p) →
    (∀ p, D.inSS p → ∫ x, θ (actR γ (Matrix.of x) p) ∂μR = 1) →
    Integrable (fun p => θ p • (B.xiTau D (1, 1) p • B.rho D p F γ)) D.μSS →
    ∫ p, θ p • (B.xiTau D (1, 1) p • B.rho D p F γ) ∂D.μSS = J F

end orbit

end Formalism.FourierDecayAlt.C6
