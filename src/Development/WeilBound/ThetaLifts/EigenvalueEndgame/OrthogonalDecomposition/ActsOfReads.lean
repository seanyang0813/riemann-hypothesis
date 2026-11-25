module

public import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
public import Development.WeilBound.CoreStatements.LocallyConstantCoinvariants.RightOnto
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFactorPureTensorComponentAtPlace
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PadicIsNonarchimedeanLocalField
public import Development.WeilBound.CoreStatements.LocallyConstantCoinvariants.PfActs
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts
import Development.WeilBound.ThetaLifts.LatticeBasics.Hypotheses2

@[expose] public section

noncomputable section

namespace PositivityTheory.ThKEnd.Orth

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.Dbl

open GlobalTheory.SplitFlip PositivityTheory.KCo
open scoped Classical

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

variable {n n' d : ℕ}

def SplitB : Prop :=
  ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E) (B : Base F E) (n d : ℕ)
    (X : Spc F E n) (W : Spc F E d) (M : Model σ X W) (χX χW : Chr F E) (om : Rep σ X W) (r s r' s' : ℕ),
    IsPair B M χX χW om r s r' s' → ∀ (v : Pl F) (t : E →ₐ[F] Fv F v),
      (∀ h₀ : GL (Fin d) (Fv F v), ∃ h ∈ UAt σ W (evFin F v), (mat h).map (piW t) = h₀) ∧
      ∃ ι : ((Fin n × Fin d → Fv F v) → ℂ) →ₗ[ℂ] (Matrix (Fin n) (Fin d) (Fv F v) → ℂ),
        Set.BijOn ι (SB (Fin n × Fin d → Fv F v) : Set _) (SB (Matrix (Fin n) (Fin d) (Fv F v)) : Set _) ∧
        (∀ g ∈ UAt σ X (evFin F v), ∃ g₀, Reads v ι (om (g, 1)) (omB (chrW χW t) (chrW χX t) g₀ 1)) ∧
        ∀ h ∈ UAt σ W (evFin F v), ∀ h₀ : GL (Fin d) (Fv F v), (mat h).map (piW t) = h₀ →
          Reads v ι (om (1, h)) (omB (chrW χW t) (chrW χX t) 1 h₀)

theorem intersection_update_fsHerm_neg_one {κ : Type} [Fintype κ] (v : Pl F) (f : SInf F κ) {φ : ∀ u : Pl F, (κ → Fv F u) → ℂ} (h1 : ∀ u, φ u ∈ SB _)
    (h2 : ∀ᶠ u in cofinite, φ u = Set.indicator {x | ∀ i, x i ∈ u.adicCompletionIntegers F} 1) :
    ∃ T : ((κ → Fv F v) → ℂ) →ₗ[ℂ] ((κ → AF F) → ℂ), (∀ ψ, T ψ = pure f (Function.update φ v ψ)) ∧
      (∀ ψ ∈ SB _, T ψ ∈ schA F κ) ∧ ∀ S, ∀ ψ ∈ SB _, ∀ ψ₁, Acts (evFin F v) S ψ ψ₁ → S (T ψ) = T ψ₁ := by
  obtain ⟨r, hr, hr'⟩ := GlobalTheory.PureFactor.exists_rest_factor v f φ h2
  have m : ∀ ψ ∈ SB _, tens (evFin F v) ψ r ∈ schA F κ := fun ψ hψ => by
    rw [hr']
    refine PositivityTheory.KCo.pure_mem_schA f _ (fun u => ?_) (GlobalTheory.PureFactor.update_eventually φ v ψ h2)
    by_cases hu : u = v
    · subst hu; rwa [Function.update_self]
    · rw [Function.update_of_ne hu]; exact h1 u
  exact ⟨{ toFun := fun ψ => tens (evFin F v) ψ r, map_add' := fun _ _ => funext fun _ => add_mul _ _ _
           map_smul' := fun _ _ => funext fun _ => mul_assoc _ _ _ }, hr', m, fun S ψ hψ ψ₁ h => h r ⟨hr, m ψ hψ⟩⟩

theorem acts_of_reads {v : Pl F} {ι : ((Fin n × Fin d → Fv F v) → ℂ) →ₗ[ℂ] (Matrix (Fin n) (Fin d) (Fv F v) → ℂ)} {S R}
    (h : Reads v ι S R) {j : (Matrix (Fin n) (Fin d) (Fv F v) → ℂ) →ₗ[ℂ] ((Fin n × Fin d → Fv F v) → ℂ)}
    (h2 : ∀ φ ∈ SB _, j (ι φ) = φ) {φ} (hφ : φ ∈ SB _) : j (R (ι φ)) ∈ SB _ ∧ Acts (evFin F v) S φ (j (R (ι φ))) := by
  obtain ⟨φ₁, a, b, c⟩ := h φ hφ
  rw [← c, h2 φ₁ a]
  exact ⟨a, b⟩

section Loc

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

theorem apow_real (x : kˣ) (m : ℕ) : ∃ r : ℝ, 0 < r ∧ apow x ((m : ℂ) / 2) = r :=
  ⟨GlobalTheory.SplitWeil.nabs k x ^ ((m : ℝ) / 2), Real.rpow_pos_of_pos (GlobalTheory.SplitWeil.nabs_pos k x) _, by
    rw [Complex.ofReal_cpow (GlobalTheory.SplitWeil.nabs_pos k x).le]; simp [apow]⟩

theorem omB_right (ν α : kˣ →* ℂˣ) (h : GL (Fin d) k) (Φ : Matrix (Fin n) (Fin d) k → ℂ) :
    omB ν α 1 h Φ = ((α (gdet h) : ℂ) * apow (gdet h) ((n : ℂ) / 2)) • fun Y => Φ (Y * h.1) := funext fun Y => by
  simp [omB, gdet]

theorem omB_left (ν α : kˣ →* ℂˣ) (g : GL (Fin n) k) (Φ : Matrix (Fin n) (Fin d) k → ℂ) :
    omB ν α g 1 Φ = ((ν (gdet g) : ℂ) * apow (gdet g) ((d : ℂ) / 2)) • fun Y => Φ (g.1ᵀ * Y) := funext fun Y => by
  simp [omB, gdet]

theorem sb_star {A : Type} [TopologicalSpace A] {f : A → ℂ} (h : f ∈ SB A) : star f ∈ SB A :=
  ⟨h.1.comp star, h.2.comp_left (g := star) (star_zero _)⟩

end Loc

end PositivityTheory.ThKEnd.Orth

end
