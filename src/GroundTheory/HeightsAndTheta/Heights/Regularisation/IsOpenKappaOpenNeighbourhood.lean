module

public import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.IsPshLocallyIntegrableStatement
public import ReciprocityTheory.AnalyticForms.PotentialTheory.ContDiffOnFubiniStudyProfileInvNormSqFirst
public import Mathlib.Order.CompletePartialOrder
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Regular

open MeasureTheory Metric Filter Topology Matrix
open scoped ContDiff
open ReciprocityTheory.AnForm (levi)
open ReciprocityTheory.AnForm.A (polyMax Mollifier molli regMax coordDiv)
open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot IsPotential IsPosPot IsCompatChart)

noncomputable section

def MaxOscillation.Statement : Prop :=
  ∀ (D : ℕ) (U : Set (Fin D → ℂ)) (u : (Fin D → ℂ) → ℝ) (z : Fin D → ℂ) (δ C₁ t : ℝ),
    IsOpen U → ReciprocityTheory.AnForm.A.IsPsh U u → closedBall z δ ⊆ U → 1 ≤ C₁ → 0 < t → C₁ * t < δ →
    polyMax u z (C₁ * t) - polyMax u z (t / (4 * C₁)) ≤
      Real.log (4 * C₁ ^ 2) * (polyMax u z δ - polyMax u z (C₁ * t)) / Real.log (δ / (C₁ * t))

def MollifierLowerBound.Statement : Prop :=
  ∀ (D : ℕ) (ρ : Mollifier D) (B : ℝ), (∀ w, ρ.toFun w ≤ B) →
    ∀ (U : Set (Fin D → ℂ)) (u : (Fin D → ℂ) → ℝ) (z : Fin D → ℂ) (t : ℝ),
      IsOpen U → ReciprocityTheory.AnForm.A.IsPsh U u → 0 < t → closedBall z (2 * t) ⊆ U →
      polyMax u z (2 * t) - Real.pi ^ D * (3 / 2) ^ (2 * D) * B *
          (polyMax u z (2 * t) - polyMax u z (t / 4)) ≤ molli ρ t u z

def ell (t : ℝ) : ℝ := Real.log t⁻¹

def errE (C t : ℝ) : ℝ := C * Real.log (ell t) / ell t

def errorWithLinear (C t : ℝ) : ℝ := errE C t + C * t

variable {D : ℕ} {X : Type*} [TopologicalSpace X]

def ThGe (A : FinHolAtlas D X) (θ : LocPot X) (f : X → ℝ) (om : LocPot X) (c : ℝ) : Prop :=
  ∀ x k, ∀ y ∈ (A.chart k).target ∩ (A.chart k).symm ⁻¹' (θ.U x ∩ om.U x), ∀ w : Fin D → ℂ,
    c * levi (om.φ x ∘ (A.chart k).symm) y w ≤
      levi ((fun z => θ.φ x z + f z) ∘ (A.chart k).symm) y w

structure RegCharts (A : FinHolAtlas D X) where

  n : ℕ

  ψ : Fin n → OpenPartialHomeomorph X (Fin D → ℂ)
  compat : ∀ j, IsCompatChart A (ψ j)

  W : Fin n → Set (Fin D → ℂ)

  W' : Fin n → Set (Fin D → ℂ)

  W'' : Fin n → Set (Fin D → ℂ)
  isOpen_kappaOpenNeighbourhood : ∀ j, IsOpen (W j)
  isOpen_alt : ∀ j, IsOpen (W' j)
  isOpen_alt_alt : ∀ j, IsOpen (W'' j)
  W_subset : ∀ j, W j ⊆ (ψ j).target
  isCompact_closure_middle : ∀ j, IsCompact (closure (W' j))
  closure_W'_subset : ∀ j, closure (W' j) ⊆ W j
  closure_W''_subset : ∀ j, closure (W'' j) ⊆ W' j
  cover : ∀ x, ∃ j, x ∈ (ψ j).source ∧ ψ j x ∈ W'' j

  θ : LocPot X
  θ_pot : IsPotential A θ

  om : LocPot X
  om_pot : IsPotential A om
  om_pos : IsPosPot A om

  q : Fin n → (Fin D → ℂ) → ℝ
  q_smooth : ∀ j, ContDiffOn ℝ ∞ (q j) (W j)
  q_θ : ∀ j, ∀ y ∈ (ψ j).source, ψ j y ∈ W j → ∃ V : Set X, IsOpen V ∧ y ∈ V ∧ ∃ G : X → ℂ,
    A.HoloOn V G ∧ ∀ x ∈ V ∩ θ.U y ∩ (ψ j).source, ψ j x ∈ W j →
      θ.φ y x - q j (ψ j x) = (G x).re

namespace RegCharts

variable {A : FinHolAtlas D X} (R : RegCharts A)

def V'' (j : Fin R.n) : Set X := (R.ψ j).source ∩ R.ψ j ⁻¹' R.W'' j

def u (φ : X → ℝ) (j : Fin R.n) (z : Fin D → ℂ) : ℝ := R.q j z + φ ((R.ψ j).symm z)


end RegCharts

structure RegChartData (A : FinHolAtlas D X) extends RegCharts A where

  Yo : Set X
  isOpen_Yo : IsOpen Yo

  S : Fin n → Finset (Fin D)
  mem_Yo_iff : ∀ j, ∀ z ∈ W j, (ψ j).symm z ∈ Yo ↔ z ∉ coordDiv (S j)

  r : X → ℝ

  f : Fin n → (Fin D → ℂ) → ℝ
  f_cont : ∀ j, ContinuousOn (f j) (W j)
  f_bdd : ∀ j, ∃ B, ∀ z ∈ W j, |f j z| ≤ B
  r_chart : ∀ j, ∀ z ∈ W j \ coordDiv (S j),
    r ((ψ j).symm z) = Real.exp 1 + f j z - ∑ i ∈ S j, Real.log (‖z i‖ ^ 2)
  one_le_r : ∀ x ∈ Yo, 1 ≤ r x

  φ : X → ℝ
  φ_smooth : A.SmoothOn Yo φ
  psh : ∀ j, ReciprocityTheory.AnForm.A.IsPsh (W j \ coordDiv (S j)) (toRegCharts.u φ j)

  C : ℝ
  φ_le : ∀ x ∈ Yo, φ x ≤ C
  le_φ : ∀ x ∈ Yo, -(C * Real.log (r x)) ≤ φ x
  grad : ∀ j, ∀ z ∈ W j \ coordDiv (S j),
    ‖fderiv ℝ (toRegCharts.u φ j) z‖ ≤
      C * r ((ψ j).symm z) ^ C * Real.exp (r ((ψ j).symm z) / 2)

structure BoundedThPsh {A : FinHolAtlas D X} (R : RegCharts A) where

  φ : X → ℝ
  bdd : ∃ B, ∀ x, |φ x| ≤ B
  psh : ∀ j, ReciprocityTheory.AnForm.A.IsPsh (R.W j) (R.u φ j)

def siegel (g : ℕ) : Set (Matrix (Fin g) (Fin g) ℂ) :=
  {Z | Zᵀ = Z ∧ (Z.map Complex.im).PosDef}

def coverSet (n a : ℕ) : Set (Fin n → ℂ) :=
  {w | ∀ i : Fin n, ((i : ℕ) < a → (w i).re < 0) ∧ (a ≤ (i : ℕ) → ‖w i‖ < 1)}

structure PeriodPolydisc (n a g : ℕ) where
  le : a ≤ n

  τ : (Fin n → ℂ) → Matrix (Fin g) (Fin g) ℂ
  holo : ∀ p q, AnalyticOnNhd ℂ (fun w => τ w p q) (coverSet n a)
  mem_siegel : ∀ w ∈ coverSet n a, τ w ∈ siegel g

  B : Fin n → Matrix (Fin g) (Fin g) ℤ
  B_symm : ∀ i, (B i)ᵀ = B i
  B_zero : ∀ i : Fin n, a ≤ (i : ℕ) → B i = 0
  period : ∀ i : Fin n, (i : ℕ) < a → ∀ w ∈ coverSet n a,
    τ (w + Pi.single i (2 * Real.pi * Complex.I)) = τ w + (B i).map (fun m : ℤ => (m : ℂ))

namespace PeriodPolydisc

variable {n a g : ℕ} (P : PeriodPolydisc n a g)

end PeriodPolydisc

theorem im_mul_inv_two_pi_I (x : ℝ) (w : ℂ) :
    ((x : ℂ) * (2 * Real.pi * Complex.I)⁻¹ * w).im = -x * w.re / (2 * Real.pi) := by
  have hπ : (Real.pi : ℝ) ≠ 0 := Real.pi_ne_zero
  simp [Complex.mul_im, Complex.mul_re, Complex.inv_re, Complex.inv_im, Complex.normSq_apply]
  field_simp

section ProjectiveLine

open ReciprocityTheory.AnForm.M

theorem norm_fin_one_eq_alt (y : Fin 1 → ℂ) : ‖y‖ = ‖y 0‖ := by
  have h : y = fun _ => y 0 := funext fun i => by fin_cases i; rfl
  conv_lhs => rw [h]
  exact pi_norm_const _

theorem isPsh_const (U : Set (Fin D → ℂ)) (c : ℝ) : ReciprocityTheory.AnForm.A.IsPsh U (fun _ => c) :=
  ⟨continuousOn_const.upperSemicontinuousOn,
    fun _ _ _ => ⟨circleIntegrable_const c 0 1, (Real.circleAverage_const c 0 1).ge⟩⟩

end ProjectiveLine

end

end GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Regular
