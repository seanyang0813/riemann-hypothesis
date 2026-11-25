module

public import Development.AbelianVarietyTheory.Definitions.Jets.SumIoPrAlt
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.SmoothMapsClosureStatement
public import Development.AbelianVarietyTheory.Definitions.Jets.SideFam
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DiscreteSeriesUnitarySmoothBasicStatement
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.FrepDiscreteSeriesSum
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.TensorRawOfFrep
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothAdd
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Analysis.CStarAlgebra.ContinuousLinearMap
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.JetHarmonics.BesselSumDecomposition, Development.AbelianVarietyTheory.Proofs.JetHarmonics.TensorMomentEstimate

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.BesselSumDecomposition =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.BesselSumDecomposition", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Jets.SumIoPrAlt\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.SmoothMapsClosureStatement\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothAdd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open BranchingSupport Formalism.FourierDecayAlt Formalism.FourierDecayAlt.ThreeDimData Matrix MeasureTheory Finset
open scoped InnerProductSpace ENNReal

namespace GlobalTheory.KapBes

variable {k r : ℕ}

theorem dsigW_zero (R : Rep k r) (W : List (Mx k r)) :
    PI.UpqRep.dsigW (k := k) (r := r) R.σ W (0 : R.H) = 0 := by
  induction W with
  | nil => rfl
  | cons X W ih =>
    show PI.UpqRep.dsig (k := k) (r := r) R.σ X (PI.UpqRep.dsigW (k := k) (r := r) R.σ W 0) = 0
    rw [ih]
    simp [PI.UpqRep.dsig]

theorem smMap_zero (R R' : Rep k r) : SmMap R R' (fun _ => 0) := by
  refine ⟨fun _ _ => R'.smSub.zero_mem, ?_, ?_, ?_⟩
  · intros
    simp
  · intros
    simp
  · intro W _
    exact ⟨0, [], by simp, fun v _ => by simp [dsigW_zero]⟩

theorem smMap_congr {R R' : Rep k r} {T T' : R.H → R'.H} (h : SmMap R R' T)
    (e : ∀ v ∈ R.sm, T' v = T v) : SmMap R R' T' := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro v hv
    rw [e v hv]
    exact h.mem v hv
  · intro v hv w hw
    rw [e v hv, e w hw, e _ (Formalism.FourierDecayAlt.P.DDSmoothness.smooth_add hv hw), h.add v hv w hw]
  · intro a v hv
    rw [e v hv, e _ (Formalism.FourierDecayAlt.P.DDSmoothness.smooth_smul a hv), h.smul a v hv]
  · intro W hW
    obtain ⟨C, Ws, h1, h2⟩ := h.cont W hW
    refine ⟨C, Ws, h1, fun v hv => ?_⟩
    change ‖PI.UpqRep.dsigW (k := k) (r := r) R'.σ W (T' v)‖ ≤ _
    rw [e v hv]
    exact h2 v hv

theorem smMap_sum {R R' : Rep k r}
    (hl : ∀ (T T' : R.H → R'.H) (a : ℂ), SmMap R R' T → SmMap R R' T' → SmMap R R' (fun v => a • T v + T' v))
    {ι : Type} (s : Finset ι) (a : ι → ℂ) (T : ι → R.H → R'.H) (hT : ∀ i, SmMap R R' (T i)) :
    SmMap R R' (fun v => ∑ i ∈ s, a i • T i v) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using smMap_zero R R'
  | insert i s hi ih =>
    simp only [Finset.sum_insert hi]
    exact hl _ _ _ (hT i) ih

theorem mem_GG_of_mem_Sset {z : Fin (2 * r + k + 1) → ℂ} {s : Mx k r} (hs : s ∈ Formalism.QuantumDeterminants.Sset k r z) :
    s ∈ GG k r := by
  obtain ⟨h, hh, m, hm, rfl⟩ := hs
  have h1 : hᴴ * Formalism.QuantumDeterminants.Hpk k r * h = Formalism.QuantumDeterminants.Hpk k r := hh.1
  have h2 : mᴴ * Formalism.QuantumDeterminants.Hpk k r * m = Formalism.QuantumDeterminants.Hpk k r := hm.1
  show (h * m)ᴴ * Formalism.QuantumDeterminants.Hpk k r * (h * m) = Formalism.QuantumDeterminants.Hpk k r
  rw [conjTranspose_mul]
  calc mᴴ * hᴴ * Formalism.QuantumDeterminants.Hpk k r * (h * m) = mᴴ * (hᴴ * Formalism.QuantumDeterminants.Hpk k r * h) * m := by
        simp only [Matrix.mul_assoc]
    _ = _ := by rw [h1, h2]

theorem ev_eq {ι : Type} [Fintype ι] (Γ : Matrix ι ι ℂ) (R : Rep k r) (a : ι → ℂ) (x : ι → R.H) :
    ev Γ R a x = ∑ j, (star a ᵥ* Γ) j • x j := by
  unfold ev
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [← Finset.sum_smul]
  rfl

theorem vecMul_inv {ι : Type} [Fintype ι] (Γ A : Matrix ι ι ℂ) (a : ι → ℂ) (hA : Aᴴ * Γ * A = Γ)
    (ha : A *ᵥ a = a) : (star a ᵥ* Γ) ᵥ* A = star a ᵥ* Γ := by
  have h : star a ᵥ* Aᴴ = star a := by rw [← star_mulVec, ha]
  conv_rhs => rw [← hA, ← vecMul_vecMul, ← vecMul_vecMul, h]

theorem main : PI.KFinSmooth → ∀ (k r : ℕ) (ι κ : Type) [Fintype ι] [DecidableEq ι] [Fintype κ] [DecidableEq κ] (ρ : Mx k r → Matrix ι ι ℂ) (Γ : Matrix ι ι ℂ) (d : ℕ) (R : Rep k r) (RI : κ → Rep k r) (io : ∀ I, ι → (RI I).H → R.H) (pr : ∀ I, ι → R.H → (RI I).H) (ε : Fin (2 * r + k + 1) → Bool) (mu : Fin (2 * r + k + 1) → ℝ) (muI : κ → Fin (2 * r + k + 1) → ℝ) (Wp : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [CompleteSpace Wp] [FiniteDimensional ℂ Wp] (z : Fin (2 * r + k + 1) → ℂ) (π : Mx k r → (Wp →L[ℂ] Wp)) (om : ι → ℂ), R.IsDS ε mu → (∀ I, (RI I).IsDS ε (muI I)) → IsFRep ρ Γ d → TensRaw ρ R RI io pr → (∀ s ∈ Formalism.QuantumDeterminants.Sset k r z, ρ s *ᵥ om = om) → ∀ I, (∀ lI, IsBes (RI I) z π lI → IsBes R z π (fun v => lI (∑ c, pr I c (tm R om v c)))) ∧ (∀ s ∈ Formalism.QuantumDeterminants.Sset k r z, ∀ y ∈ (RI I).sm, ev Γ R om (fun c => io I c ((RI I).σ s y)) = R.σ s (ev Γ R om (fun c => io I c y))) ∧ SmMap (RI I) R (fun y => ev Γ R om (fun c => io I c y)) := by
  intro hK k r ι κ _ _ _ _ ρ Γ d R RI io pr ε mu muI Wp _ _ _ _ z π om hR hRI hF hT hom I
  obtain ⟨-, -, hlin, hcw⟩ := GlobalTheory.T.smooth_maps_closure hK k r ε mu (muI I) mu R (RI I) R hR (hRI I) hR
  obtain ⟨-, -, hlin', -⟩ := GlobalTheory.T.smooth_maps_closure hK k r ε (muI I) mu mu (RI I) R R (hRI I) hR hR
  refine ⟨fun lI hl => ?_, fun s hs y hy => ?_, ?_⟩
  · have hP : SmMap R (RI I) (fun v => ∑ c, pr I c (tm R om v c)) :=
      smMap_congr (smMap_sum hlin Finset.univ om (pr I) (hT.pr_sm I)) (fun v hv =>
        Finset.sum_congr rfl fun c _ => (hT.pr_sm I c).smul (om c) v hv)
    obtain ⟨h1, h2, h3, h4⟩ := hl
    refine ⟨fun v hv w hw => ?_, fun c v hv => ?_, fun h hh m hm v hv => ?_, hcw Wp _ lI hP h4⟩
    · have := hP.add v hv w hw
      simp only at this ⊢
      rw [this]; exact h1 _ (hP.mem v hv) _ (hP.mem w hw)
    · have := hP.smul c v hv
      simp only at this ⊢
      rw [this]; exact h2 c _ (hP.mem v hv)
    · have hs : h * m ∈ Formalism.QuantumDeterminants.Sset k r z := ⟨h, hh, m, hm, rfl⟩
      have e : tm R om (R.σ (h * m) v) = act ρ R (h * m) (tm R om v) := by
        funext i
        have := congrFun (hom _ hs) i
        simp only [tm, act, map_smul, smul_smul, ← Finset.sum_smul]
        rw [← this]; rfl
      have e2 := hT.pr_eq I _ (mem_GG_of_mem_Sset hs) (tm R om v)
        (fun c => Formalism.FourierDecayAlt.P.DDSmoothness.smooth_smul (om c) hv)
      simp only
      rw [e, e2]
      exact h3 h hh m hm _ (hP.mem v hv)
  · have hG := mem_GG_of_mem_Sset hs
    rw [hT.io_eq I s hG y hy, ev_eq, ev_eq]
    have hv := vecMul_inv Γ (ρ s) om (hF.2.2.2.2.1 s hG) (hom s hs)

    simp only [act, map_sum, map_smul, Finset.smul_sum, smul_smul]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [← Finset.sum_smul, ← congrFun hv j]
    rfl
  · exact smMap_congr (smMap_sum hlin' Finset.univ (star om ᵥ* Γ) (io I) (hT.io_sm I))
      (fun y _ => ev_eq Γ R om _)

end GlobalTheory.KapBes
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.BesselSumDecomposition =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.TensorMomentEstimate =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.TensorMomentEstimate", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Jets.SideFam\npublic import Development.AbelianVarietyTheory.Definitions.Jets.SumIoPrAlt\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.BesselSumDecomposition\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DiscreteSeriesUnitarySmoothBasicStatement\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.FrepDiscreteSeriesSum\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.TensorRawOfFrep\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.ContinuousLinearMap\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open BranchingSupport Formalism.FourierDecayAlt Formalism.FourierDecayAlt.ThreeDimData Matrix MeasureTheory Finset
open scoped InnerProductSpace ENNReal

namespace GlobalTheory.KappaDual

end GlobalTheory.KappaDual
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.TensorMomentEstimate =====
