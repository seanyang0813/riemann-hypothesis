module

public import Mathlib.Algebra.Algebra.Basic
public import Mathlib.Data.Matrix.Mul
public import Mathlib.LinearAlgebra.BilinearMap
public import Mathlib.Algebra.Group.Subgroup.Finite
public import Mathlib.LinearAlgebra.Matrix.ToLin
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WittCoreEmbeddingPreservesSupportedUnitarySubgro
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIntegralBasisOfLatticeAtPlaceStable
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.AdelicPointComponentsAtPlacesLatticesVacua
public import Development.AbelianVarietyTheory.Definitions.ExistenceOfLattices.MarkSpec
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIntegralTraceIdempotentAtTamePlace
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSelfDualLatticeAtPlaceComapUnitarySupported
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualLatticeAtPlaceSplitsHyperbolicPlusCore
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualLatticeHyperbolicLineIdealsAtPlace
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnfoldingBasePointFourierJacobiGroup
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.KerBF
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSelfDualLatticeAtPlaceLatticeCompletion
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualLatticesSingleOrbitTamePlace
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Mathlib.RingTheory.PiTensorProduct
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
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualSplitComponentIsLatticeStabilizerEq
import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.TypeStar
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FlagUnipotentFourierJacobiGroupStructure
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittHyperbolicAnisotropicCommuteLevi

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagDualMatrix, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagDualBasisSelfDualLatticeAtPlace, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagDualBasisSelfDualLatticeAtPlaceStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIsotropicDualColumnsSelfDualLatticeAtPlace, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIsotropicDualColumnsSelfDualLatticeAtPlaceStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsUnitarySupportedAtPlaceOfDualIsotropicFram, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsUnitarySupportedAtPlaceOfDualIsotropicFramStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagStabiliserMoveLatticeSplitWitt, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FlagStabilizerEqUnipotentTorusLeviAtPlace, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FlagStabilizerEqUnipotentTorusLeviAtPlaceStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IwasawaDecompositionSelfDualWittSplitAtPlace

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagDualMatrix =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagDualMatrix", "h": "module\n\npublic import Mathlib.Algebra.Algebra.Basic\npublic import Mathlib.Data.Matrix.Mul\npublic import Mathlib.LinearAlgebra.BilinearMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Algebra.Group.Subgroup.Finite\npublic import Mathlib.LinearAlgebra.Matrix.ToLin\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.IwaFlag

variable {R V : Type} [CommRing R] [AddCommGroup V] [Module R V] {ρ : ℕ} {c : R →+* R} {ε : R} {O : AddSubgroup R}
  {h : V →ₗ[R] V →ₛₗ[c] R} {M : AddSubgroup V}

def Princ (ε : R) (O : AddSubgroup R) : Prop :=
  ∀ J : AddSubgroup R, (∀ a ∈ J, ε * a = a) → (∀ o ∈ O, ∀ a ∈ J, o * a ∈ J) → (∃ m : ℕ, 0 < m ∧ (m : R) * ε ∈ J) →
    (∃ N : ℕ, 0 < N ∧ ∀ a ∈ J, (N : R) * a ∈ O) → ∃ α ∈ J, ∃ α', ε * α' = α' ∧ α * α' = ε ∧ ∀ a ∈ J, α' * a ∈ O

theorem smul_mem_of_sd (hmul : ∀ a ∈ O, ∀ b ∈ O, a * b ∈ O) (hM₁ : ∀ y ∈ M, ε • y = y)
    (hM₂ : ∀ y, ε • y = y → (y ∈ M ↔ ∀ x ∈ M, h y x ∈ O)) {o : R} (ho : o ∈ O) {y : V} (hy : y ∈ M) : o • y ∈ M := by
  refine (hM₂ _ (by rw [smul_comm, hM₁ y hy])).2 fun x hx => ?_
  rw [map_smul, LinearMap.smul_apply, smul_eq_mul]
  exact hmul _ ho _ ((hM₂ y (hM₁ y hy)).1 hy x hx)

theorem exists_triangular (hεc : c ε = ε) (hmul : ∀ a ∈ O, ∀ b ∈ O, a * b ∈ O) (hP : Princ ε O)
    (hM₁ : ∀ y ∈ M, ε • y = y) (hM₂ : ∀ y, ε • y = y → (y ∈ M ↔ ∀ x ∈ M, h y x ∈ O))
    (X : (Fin ρ → R) →ₗ[R] V) (f : Fin ρ → V) (hXf : ∀ t k, h (X t) (f k) = t k) (N : ℕ) (hN : 0 < N)
    (he : ∀ k, X (Pi.single k ((N : R) * ε)) ∈ M) (hf : ∀ k, ((N : R) * ε) • f k ∈ M) (i : Fin ρ) :
    ∃ (b : Fin ρ → R) (α' : R), (∀ l, i < l → b l = 0) ∧ X b ∈ M ∧ ε * α' = α' ∧ b i * α' = ε ∧
      ∀ t : Fin ρ → R, (∀ l, i < l → t l = 0) → X t ∈ M → α' * t i ∈ O := by
  have hfix : ∀ t, X t ∈ M → ∀ k, ε * t k = t k := fun t ht k => by
    have := congrArg (fun z => h z (f k)) (hM₁ _ ht)
    simpa only [map_smul, LinearMap.smul_apply, smul_eq_mul, hXf] using this
  let J : AddSubgroup R :=
    { carrier := {a | ∃ t : Fin ρ → R, (∀ l, i < l → t l = 0) ∧ X t ∈ M ∧ t i = a}
      zero_mem' := ⟨0, fun _ _ => rfl, by rw [map_zero]; exact M.zero_mem, rfl⟩
      add_mem' := by
        rintro _ _ ⟨t, h1, h2, rfl⟩ ⟨s, g1, g2, rfl⟩
        exact ⟨t + s, fun l hl => by simp [h1 l hl, g1 l hl], by rw [map_add (f := _)]; exact M.add_mem h2 g2, rfl⟩
      neg_mem' := by
        rintro _ ⟨t, h1, h2, rfl⟩
        exact ⟨-t, fun l hl => by simp [h1 l hl], by rw [map_neg]; exact M.neg_mem h2, rfl⟩ }
  obtain ⟨α, ⟨b, hb1, hb2, rfl⟩, α', h1, h2, h3⟩ := hP J
    (by rintro _ ⟨t, -, h2, rfl⟩; exact hfix t h2 i)
    (by
      rintro o ho _ ⟨t, h1, h2, rfl⟩
      exact ⟨o • t, fun l hl => by simp [h1 l hl], by rw [map_smul]; exact smul_mem_of_sd hmul hM₁ hM₂ ho h2, rfl⟩)
    ⟨N, hN, Pi.single i ((N : R) * ε), fun l hl => Pi.single_eq_of_ne hl.ne' _, he i, Pi.single_eq_same _ _⟩
    ⟨N, hN, by
      rintro _ ⟨t, -, h2, rfl⟩
      have := (hM₂ _ (hM₁ _ h2)).1 h2 _ (hf i)
      rwa [map_smulₛₗ, hXf, map_mul, map_natCast, hεc, smul_eq_mul, mul_assoc, hfix t h2 i] at this⟩
  exact ⟨b, α', hb1, hb2, h1, h2, fun t ht1 ht2 => h3 _ ⟨t, ht1, ht2, rfl⟩⟩

theorem exists_step (hcc : ∀ a, c (c a) = a) (hεε : ε * ε = ε) (hεc : c ε = ε) (hεO : ε ∈ O) (hOε : ∀ a ∈ O, ε * a = a)
    (hmul : ∀ a ∈ O, ∀ b ∈ O, a * b ∈ O) (hcO : ∀ a ∈ O, c a ∈ O) (hP : Princ ε O)
    (hM₁ : ∀ y ∈ M, ε • y = y) (hM₂ : ∀ y, ε • y = y → (y ∈ M ↔ ∀ x ∈ M, h y x ∈ O))
    (X : (Fin ρ → R) →ₗ[R] V) (f : Fin ρ → V) (hXf : ∀ t k, h (X t) (f k) = t k) (N : ℕ) (hN : 0 < N)
    (he : ∀ k, X (Pi.single k ((N : R) * ε)) ∈ M) (hf : ∀ k, ((N : R) * ε) • f k ∈ M)
    (b : Fin ρ → Fin ρ → R) (hb₁ : ∀ i l, i < l → b i l = 0) (hb₂ : ∀ i, X (b i) ∈ M) (j : Fin ρ) (α' : R)
    (hα : b j j * α' = ε) (hJ : ∀ t : Fin ρ → R, (∀ l, j < l → t l = 0) → X t ∈ M → α' * t j ∈ O)
    (ih : ∀ z : Fin ρ → R, (∀ i, z i ∈ O) → ∃ y ∈ M, ∀ i, i < j → h (X (b i)) y = z i) :
    ∃ w ∈ M, (∀ i, i < j → h (X (b i)) w = 0) ∧ h (X (b j)) w = ε := by
  classical
  have hint : ∀ i, ∀ y ∈ M, h (X (b i)) y ∈ O := fun i => (hM₂ _ (hM₁ _ (hb₂ i))).1 (hb₂ i)
  have hsm : ∀ {o : R}, o ∈ O → ∀ {y : V}, y ∈ M → o • y ∈ M := fun ho _ hy => smul_mem_of_sd hmul hM₁ hM₂ ho hy
  let K : AddSubgroup R :=
    { carrier := {a | ∃ y ∈ M, (∀ i, i < j → h (X (b i)) y = 0) ∧ h (X (b j)) y = a}
      zero_mem' := ⟨0, M.zero_mem, fun _ _ => map_zero _, map_zero _⟩
      add_mem' := by
        rintro _ _ ⟨t, h1, h2, rfl⟩ ⟨s, g1, g2, rfl⟩
        exact ⟨t + s, M.add_mem h1 g1, fun l hl => by rw [map_add (f := _), h2 l hl, g2 l hl, add_zero], map_add _ _ _⟩
      neg_mem' := by
        rintro _ ⟨t, h1, h2, rfl⟩
        exact ⟨-t, M.neg_mem h1, fun l hl => by rw [map_neg, h2 l hl, neg_zero], map_neg _ _⟩ }
  have hKO : ∀ o ∈ O, ∀ a ∈ K, o * a ∈ K := by
    rintro o ho _ ⟨t, h1, h2, rfl⟩
    exact ⟨c o • t, hsm (hcO o ho) h1, fun l hl => by rw [map_smulₛₗ, h2 l hl, smul_zero],
      by rw [map_smulₛₗ, hcc, smul_eq_mul]⟩
  have hαN : α' * ((N : R) * ε) ∈ O := by
    have := hJ (Pi.single j ((N : R) * ε)) (fun l hl => Pi.single_eq_of_ne hl.ne' _) (he j)
    rwa [Pi.single_eq_same] at this
  have hNK : (N : R) * ε * b j j ∈ K :=
    ⟨_, hf j, fun i hi => by rw [map_smulₛₗ, hXf, hb₁ i j hi, smul_zero],
      by rw [map_smulₛₗ, hXf, map_mul, map_natCast, hεc, smul_eq_mul]⟩
  obtain ⟨β, hβ, β', h1, h2, h3⟩ := hP K
    (by rintro _ ⟨t, h1, -, rfl⟩; exact hOε _ (hint j t h1)) hKO
    ⟨N * N, Nat.mul_pos hN hN, by
      have e : ((N * N : ℕ) : R) * ε = α' * ((N : R) * ε) * ((N : R) * ε * b j j) := by
        push_cast
        linear_combination (-(N : R) * N * ε * ε) * hα - ((N : R) * N * (ε + 1)) * hεε
      rw [e]; exact hKO _ hαN _ hNK⟩
    ⟨1, one_pos, by rintro _ ⟨t, h1, -, rfl⟩; rw [Nat.cast_one, one_mul]; exact hint j t h1⟩
  choose g hg hg' using fun i : Fin ρ => ih (Pi.single i ε) fun l => by
    by_cases hl : l = i
    · rw [hl, Pi.single_eq_same]; exact hεO
    · rw [Pi.single_eq_of_ne hl]; exact O.zero_mem
  let s := Finset.univ.filter (· < j)
  let t : Fin ρ → R := β' • b j - ∑ i ∈ s, (β' * h (X (b j)) (g i)) • b i
  have hXt : X t = β' • X (b j) - ∑ i ∈ s, (β' * h (X (b j)) (g i)) • X (b i) := by

    simp only [t, map_sub, map_sum, map_smul]
  have htM : X t ∈ M := by
    refine (hM₂ _ ?_).2 fun y hy => ?_
    · rw [hXt, smul_sub, Finset.smul_sum, smul_smul, h1]
      congr 1
      exact Finset.sum_congr rfl fun i _ => by rw [smul_smul, ← mul_assoc, h1]
    · have hy' : y - ∑ i ∈ s, c (h (X (b i)) y) • g i ∈ M :=
        M.sub_mem hy (M.sum_mem fun i _ => hsm (hcO _ (hint i y hy)) (hg i))
      have hK : h (X (b j)) (y - ∑ i ∈ s, c (h (X (b i)) y) • g i) ∈ K := by
        refine ⟨_, hy', fun l hl => ?_, rfl⟩

        rw [map_sub, map_sum, Finset.sum_eq_single l]
        · rw [map_smulₛₗ, hcc, hg' l l hl, Pi.single_eq_same, smul_eq_mul, mul_comm, hOε _ (hint l y hy), sub_self]
        · intro i _ hi
          rw [map_smulₛₗ, hg' i l hl, Pi.single_eq_of_ne hi.symm, smul_zero]
        · intro hl'; exact absurd (by simpa [s] using hl) hl'
      have := h3 _ hK
      convert this using 1
      rw [hXt]

      simp only [map_sub, map_sum, map_smul, map_smulₛₗ, LinearMap.sub_apply, LinearMap.sum_apply,
      LinearMap.smul_apply, smul_eq_mul, hcc, mul_sub, Finset.mul_sum]
      congr 1
      exact Finset.sum_congr rfl fun i _ => by ring
  have hz : ∀ l, j ≤ l → (∑ i ∈ s, (β' * h (X (b j)) (g i)) • b i) l = 0 := fun l hl => by
    rw [Finset.sum_apply]
    exact Finset.sum_eq_zero fun i hi => by
      rw [Pi.smul_apply, hb₁ i l (lt_of_lt_of_le (Finset.mem_filter.1 hi).2 hl), smul_zero]
  have hβ' : β' ∈ O := by
    have := hJ t (fun l hl => by
      simp only [t]
      rw [Pi.sub_apply, hz l hl.le, Pi.smul_apply, hb₁ j l hl, smul_zero, sub_zero]) htM
    simp only [t] at this
    rw [Pi.sub_apply, hz j le_rfl, Pi.smul_apply, sub_zero, smul_eq_mul] at this
    have e : α' * (β' * b j j) = β' := by linear_combination β' * hα + h1
    rwa [e] at this
  have := hKO _ hβ' _ hβ
  rw [mul_comm, h2] at this
  exact this

theorem exists_flag_dual (hcc : ∀ a, c (c a) = a) (hεε : ε * ε = ε) (hεc : c ε = ε) (hεO : ε ∈ O)
    (hOε : ∀ a ∈ O, ε * a = a) (hmul : ∀ a ∈ O, ∀ b ∈ O, a * b ∈ O) (hcO : ∀ a ∈ O, c a ∈ O) (hP : Princ ε O)
    (hM₁ : ∀ y ∈ M, ε • y = y) (hM₂ : ∀ y, ε • y = y → (y ∈ M ↔ ∀ x ∈ M, h y x ∈ O))
    (X : (Fin ρ → R) →ₗ[R] V) (f : Fin ρ → V) (hXf : ∀ t k, h (X t) (f k) = t k) (N : ℕ) (hN : 0 < N)
    (he : ∀ k, X (Pi.single k ((N : R) * ε)) ∈ M) (hf : ∀ k, ((N : R) * ε) • f k ∈ M) :
    ∃ b : Fin ρ → Fin ρ → R, (∀ i l, i < l → b i l = 0) ∧ (∀ i l, ε * b i l = b i l) ∧ (∀ i, X (b i) ∈ M) ∧
      ∃ y : Fin ρ → V, (∀ j, y j ∈ M) ∧ ∀ i j, h (X (b i)) (y j) = if i = j then ε else 0 := by
  classical
  choose b α' hb₁ hb₂ _ hα hJ using exists_triangular hεc hmul hP hM₁ hM₂ X f hXf N hN he hf
  have hint : ∀ i, ∀ y ∈ M, h (X (b i)) y ∈ O := fun i => (hM₂ _ (hM₁ _ (hb₂ i))).1 (hb₂ i)
  have key : ∀ n : ℕ, n ≤ ρ → ∀ z : Fin ρ → R, (∀ i, z i ∈ O) → ∃ y ∈ M, ∀ i : Fin ρ, i.1 < n → h (X (b i)) y = z i := by
    intro n
    induction n with
    | zero => exact fun _ z _ => ⟨0, M.zero_mem, fun i hi => absurd hi (Nat.not_lt_zero _)⟩
    | succ n ih =>
      intro hn z hz
      let j : Fin ρ := ⟨n, hn⟩
      obtain ⟨w, hw, hw₁, hw₂⟩ := exists_step hcc hεε hεc hεO hOε hmul hcO hP hM₁ hM₂ X f hXf N hN he hf b hb₁ hb₂ j
        (α' j) (hα j) (hJ j) (ih (Nat.le_of_succ_le hn))
      obtain ⟨y, hy, hy'⟩ := ih (Nat.le_of_succ_le hn) z hz
      have ho : z j - h (X (b j)) y ∈ O := O.sub_mem (hz j) (hint j y hy)
      refine ⟨y + c (z j - h (X (b j)) y) • w, M.add_mem hy (smul_mem_of_sd hmul hM₁ hM₂ (hcO _ ho) hw), fun i hi => ?_⟩
      rw [map_add (f := _), map_smulₛₗ, hcc, smul_eq_mul]
      rcases Nat.lt_succ_iff_lt_or_eq.1 hi with hi | hi
      · rw [hw₁ i hi, hy' i hi, mul_zero, add_zero]
      · have : i = j := Fin.ext hi
        rw [this, hw₂, mul_comm, hOε _ ho, add_sub_cancel]
  choose y hy hy' using fun j : Fin ρ => key ρ le_rfl (Pi.single j ε) fun l => by
    by_cases hl : l = j
    · rw [hl, Pi.single_eq_same]; exact hεO
    · rw [Pi.single_eq_of_ne hl]; exact O.zero_mem
  refine ⟨b, hb₁, fun i k => ?_, hb₂, y, hy, fun i j => ?_⟩
  · have := congrArg (fun z => h z (f k)) (hM₁ _ (hb₂ i))
    simpa only [map_smul, LinearMap.smul_apply, smul_eq_mul, hXf] using this
  · rw [hy' j i i.2, Pi.single_apply]


open Matrix in
def sesq (c : R →+* R) {n : ℕ} (G : Matrix (Fin n) (Fin n) R) : (Fin n → R) →ₗ[R] (Fin n → R) →ₛₗ[c] R :=
  LinearMap.mk₂'ₛₗ (RingHom.id R) c (fun x y => ∑ i, ∑ j, c (y i) * G i j * x j)
    (fun x x' y => by simp only [Pi.add_apply, mul_add, Finset.sum_add_distrib])
    (fun a x y => by
      simp only [Pi.smul_apply, smul_eq_mul, RingHom.id_apply, Finset.mul_sum]
      exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring)
    (fun x y y' => by simp only [Pi.add_apply, map_add (f := _), add_mul, Finset.sum_add_distrib])
    (fun a x y => by
      simp only [Pi.smul_apply, smul_eq_mul, map_mul, Finset.mul_sum]
      exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring)

open Matrix in
theorem sesq_col {n p q : ℕ} (G : Matrix (Fin n) (Fin n) R) (A : Matrix (Fin n) (Fin p) R) (B : Matrix (Fin n) (Fin q) R)
    (i : Fin p) (j : Fin q) : sesq c G (fun k => A k i) (fun k => B k j) = ((B.map c)ᵀ * (G * A)) j i := by
  simp only [sesq, LinearMap.mk₂'ₛₗ_apply, Matrix.mul_apply, transpose_apply, map_apply, Finset.mul_sum, mul_assoc]


open scoped Matrix in
open Matrix in
theorem exists_flag_dual_matrix {n : ℕ} {M : AddSubgroup (Fin n → R)} (G : Matrix (Fin n) (Fin n) R)
    (hcc : ∀ a, c (c a) = a) (hεε : ε * ε = ε) (hεc : c ε = ε) (hεO : ε ∈ O)
    (hOε : ∀ a ∈ O, ε * a = a) (hmul : ∀ a ∈ O, ∀ b ∈ O, a * b ∈ O) (hcO : ∀ a ∈ O, c a ∈ O) (hP : Princ ε O)
    (hM₁ : ∀ y ∈ M, ∀ i, ε * y i = y i)
    (hM₂ : ∀ y : Fin n → R, (∀ i, ε * y i = y i) → (y ∈ M ↔ ∀ x ∈ M, ∑ i, ∑ j, c (x i) * G i j * y j ∈ O))
    (E F : Matrix (Fin n) (Fin ρ) R) (hEF : (F.map c)ᵀ * (G * E) = 1) (N : ℕ) (hN : 0 < N)
    (he : ∀ k, (fun l => (N : R) * ε * E l k) ∈ M) (hf : ∀ k, (fun l => (N : R) * ε * F l k) ∈ M) :
    ∃ b : Matrix (Fin ρ) (Fin ρ) R, (∀ i j, j < i → b i j = 0) ∧ (∀ i j, ε * b i j = b i j) ∧
      (∀ i, (fun k => (E * b) k i) ∈ M) ∧ ∃ c' : Matrix (Fin n) (Fin ρ) R, (∀ i, (fun k => c' k i) ∈ M) ∧
        (c'.map c)ᵀ * (G * (E * b)) = ε • (1 : Matrix (Fin ρ) (Fin ρ) R) := by
  classical
  obtain ⟨b, h1, h2, h3, y, h4, h5⟩ := exists_flag_dual (h := sesq c G) (M := M) hcc hεε hεc hεO hOε hmul hcO hP
    (fun y hy => funext (hM₁ y hy)) (fun y hy => hM₂ y (congrFun hy)) E.mulVecLin (fun k l => F l k)
    (fun t k => by
      have := sesq_col (c := c) G (E * Matrix.of fun l (_ : Fin 1) => t l) F 0 k
      rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, Matrix.mul_assoc _ G, hEF, Matrix.one_mul] at this
      exact this) N hN
    (fun k => by
      convert he k using 1
      ext l
      simp [mul_comm]) hf
  refine ⟨Matrix.of fun i j => b j i, fun i j hij => h1 j i hij, fun i j => h2 j i, h3, Matrix.of fun k j => y j k, h4, ?_⟩
  ext j i
  rw [← sesq_col]
  refine (h5 i j).trans ?_
  by_cases hij : i = j
  · subst hij; simp
  · simp [hij, Matrix.one_apply_ne (Ne.symm hij)]

end GlobalTheory.IwaFlag
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagDualMatrix =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagDualBasisSelfDualLatticeAtPlace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagDualBasisSelfDualLatticeAtPlace", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WittCoreEmbeddingPreservesSupportedUnitarySubgro\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagDualMatrix\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIntegralBasisOfLatticeAtPlaceStable\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualSplitComponentIsLatticeStabilizerEq\nimport Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators\nimport Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNatMulSelfDualLatticeAtPlaceIntegral\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.IwaPlace Matrix

namespace GlobalTheory.IwaFlag

variable {D : D7} {v : Pl D}

def intGrpAt (D : D7) (v : Pl D) : AddSubgroup (AE D) where
  carrier := intAt D (· = v)
  zero_mem' := ⟨zero_mem _, by rw [RingHom.map_zero]; exact zero_mem _⟩
  add_mem' := fun ha hb => ⟨add_mem ha.1 hb.1, by rw [RingHom.map_add (f := _)]; exact add_mem ha.2 hb.2⟩
  neg_mem' := fun ha => ⟨neg_mem ha.1, by rw [RingHom.map_neg]; exact neg_mem ha.2⟩

theorem mul_mem_intAt {a b : AE D} (ha : a ∈ intAt D (· = v)) (hb : b ∈ intAt D (· = v)) : a * b ∈ intAt D (· = v) :=
  ⟨Ideal.mul_mem_left _ _ hb.1, by rw [RingHom.map_mul]; exact FrameLat.mul_mem_intAE ha.2 hb.2⟩

theorem exists_nat_isIntegral_fin {ι : Type} [Fintype ι] (z : ι → D.host.E) :
    ∃ d : ℕ, 0 < d ∧ ∀ l, IsIntegral ℤ ((d : D.host.E) * z l) := by
  classical
  choose c hc hi using fun p : ι => GlobalTheory.IwaPlace.SDBound.exists_nat_mul_isIntegral (z p)
  refine ⟨∏ p, c p, Finset.prod_pos fun p _ => hc p, fun l => ?_⟩
  rw [← Finset.prod_erase_mul Finset.univ c (Finset.mem_univ l), Nat.cast_mul, mul_assoc]
  refine IsIntegral.mul ?_ (hi l)
  rw [← Int.cast_natCast]
  exact isIntegral_algebraMap (R := ℤ)

theorem mul_incA_mem {ε : AE D} (hεI : ε ∈ intAt D (· = v)) {o : D.host.E} (ho : IsIntegral ℤ o) :
    ε * incA D o ∈ intAt D (· = v) := by
  have h : finPart D (incA D o) ∈ intAE D :=
    AddSubgroup.subset_closure ⟨1, fun w => by rw [map_one]; exact one_mem _, ⟨o, ho⟩, rfl⟩
  exact ⟨Ideal.mul_mem_right _ _ hεI.1, by rw [RingHom.map_mul]; exact FrameLat.mul_mem_intAE hεI.2 h⟩

theorem princ_intGrpAt {ε : AE D} (hεε : ε * ε = ε) (hεc : cA D ε = ε) (hεI : ε ∈ intAt D (· = v))
    (hε : ∀ a, a ∈ idAt D (· = v) ↔ ε * a = a) (ht : Tame D v) : Princ ε (intGrpAt D v) := by
  rintro J h1 h2 ⟨m, hm, h3⟩ ⟨N, hN, h4⟩
  obtain ⟨β, β', g1, g2, g3, g4, g5⟩ := GlobalTheory.IwaPlace.FreeAt.exists_basis D 1 v ε (J.comap (Pi.evalAddMonoidHom (fun _ : Fin 1 => AE D) 0))
    ht hεε hεc hεI hε
    (fun y hy i => by rw [Subsingleton.elim i 0]; exact (hε _).2 (h1 _ hy))
    (fun a ha y hy => h2 a ha _ hy)
    ⟨m, hm, fun y hy => by
      have := h2 _ (hy 0) _ h3
      rw [mul_left_comm, mul_comm (y 0), (hε _).1 (hy 0).1] at this
      exact this⟩
    ⟨N, hN, fun y hy i => by rw [Subsingleton.elim i 0]; exact h4 _ hy⟩
  have e3 : β 0 0 * β' 0 0 = ε := by
    have := congrFun (congrFun g3 0) 0
    rwa [Matrix.mul_apply, Fin.sum_univ_one, Matrix.smul_apply, Matrix.one_apply_eq, smul_eq_mul, mul_one] at this
  have ev : ∀ (a : AE D) (i : Fin 1), (β' *ᵥ fun _ => a) i = β' 0 0 * a := fun a i => by
    rw [Subsingleton.elim i 0, Matrix.mulVec, dotProduct, Fin.sum_univ_one]
  refine ⟨β 0 0, (g5 (fun _ => β 0 0) fun _ => g1 0 0).2 fun i => ?_, β' 0 0, (hε _).1 (g2 0 0), e3, fun a ha => ?_⟩
  · rw [ev, mul_comm, e3]; exact hεI
  · have := (g5 (fun _ => a) fun _ => (hε _).2 (h1 a ha)).1 ha 0
    rw [ev] at this
    exact this

theorem exists_flag_basis : ∀ (D : D7) (S S₀ : HSp D) (ρ : ℕ) (d : HypDec S S₀ ρ) (v : Pl D) (ε : AE D) (hεε : ε * ε = ε) (hεc : cA D ε = ε) (hεI : ε ∈ intAt D (· = v)) (hε : ∀ a, a ∈ idAt D (· = v) ↔ ε * a = a), Tame D v → ∀ M : AddSubgroup (Fin S.rank → AE D), IsSDAt S v M → ∃ b : Mx D ρ ρ, (∀ i j, j < i → b i j = 0) ∧ (∀ i j, b i j ∈ idAt D (· = v)) ∧ (∀ i, (fun k => (d.jX ⬝ b) k i) ∈ M) ∧ ∃ c' : Mx D S.rank ρ, (∀ i, (fun k => c' k i) ∈ M) ∧ adj c' ⬝ (gA S ⬝ (d.jX ⬝ b)) = ε • (1 : Mx D ρ ρ) := by
  intro D S S₀ ρ d v ε hεε hεc hεI hε ht M ⟨hsupp, ⟨m, hm, hmul⟩, hdual⟩
  obtain ⟨K, hK, hint⟩ := exists_nat_isIntegral_fin
    (Sum.elim (fun p : Fin S.rank × Fin ρ => d.e p.1 p.2) (fun p : Fin S.rank × Fin ρ => d.e' p.1 p.2))
  have hcol : ∀ z : Fin S.rank → D.host.E, (∀ l, IsIntegral ℤ ((K : D.host.E) * z l)) →
      (fun l => ((m * K : ℕ) : AE D) * ε * incA D (z l)) ∈ M := fun z hz => by
    have e : (fun l => ((m * K : ℕ) : AE D) * ε * incA D (z l)) =
        (m : AE D) • fun l => ε * incA D ((K : D.host.E) * z l) := by
      funext l
      rw [Pi.smul_apply, smul_eq_mul, RingHom.map_mul, map_natCast, Nat.cast_mul]
      ring
    rw [e]
    exact hmul _ fun l => mul_incA_mem hεI (hz l)
  obtain ⟨b, h1, h2, h3, c', h4, h5⟩ := exists_flag_dual_matrix (c := cA D) (O := intGrpAt D v) (M := M) (gA S)
    cA_cA hεε hεc hεI (fun a ha => (hε a).1 ha.1) (fun a ha b hb => mul_mem_intAt ha hb)
    (fun a ha => ⟨(hε _).2 (by rw [← hεc, ← RingHom.map_mul, (hε a).1 ha.1]), (FrameLat.cA_int_iff a).2 ha.2⟩)
    (princ_intGrpAt hεε hεc hεI hε ht) (fun y hy i => (hε _).1 (hsupp y hy i))
    (fun y hy => hdual y fun i => (hε _).2 (hy i)) d.jX d.jY d.gram_YX (m * K) (Nat.mul_pos hm hK)
    (fun k => hcol (fun l => d.e l k) fun l => hint (Sum.inl (l, k)))
    (fun k => hcol (fun l => d.e' l k) fun l => hint (Sum.inr (l, k)))
  exact ⟨b, h1, fun i j => (hε _).2 (h2 i j), h3, c', h4, h5⟩

end GlobalTheory.IwaFlag

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagDualBasisSelfDualLatticeAtPlace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagDualBasisSelfDualLatticeAtPlaceStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagDualBasisSelfDualLatticeAtPlaceStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WittCoreEmbeddingPreservesSupportedUnitarySubgro\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagDualBasisSelfDualLatticeAtPlace\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualSplitComponentIsLatticeStabilizerEq\nimport Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.IwaPlace Matrix

theorem _root_.GlobalTheory.T.exists_flag_dual_basis_selfDualLatticeAtPlace : ∀ (D : D7) (S S₀ : HSp D) (ρ : ℕ) (d : HypDec S S₀ ρ) (v : Pl D) (ε : AE D) (hεε : ε * ε = ε) (hεc : cA D ε = ε) (hεI : ε ∈ intAt D (· = v)) (hε : ∀ a, a ∈ idAt D (· = v) ↔ ε * a = a), Tame D v → ∀ M : AddSubgroup (Fin S.rank → AE D), IsSDAt S v M → ∃ b : Mx D ρ ρ, (∀ i j, j < i → b i j = 0) ∧ (∀ i j, b i j ∈ idAt D (· = v)) ∧ (∀ i, (fun k => (d.jX * b) k i) ∈ M) ∧ ∃ c' : Mx D S.rank ρ, (∀ i, (fun k => c' k i) ∈ M) ∧ adj c' * (gA S * (d.jX * b)) = ε • (1 : Mx D ρ ρ) := by
  intro D S S₀ ρ d v ε hεε hεc hεI hε ht M ⟨hsupp, ⟨m, hm, hmul⟩, hdual⟩
  obtain ⟨K, hK, hint⟩ := GlobalTheory.IwaFlag.exists_nat_isIntegral_fin
    (Sum.elim (fun p : Fin S.rank × Fin ρ => d.e p.1 p.2)
      (fun p : Fin S.rank × Fin ρ => d.e' p.1 p.2))
  have hcol (z : Fin S.rank → D.host.E) (hz : ∀ l, IsIntegral ℤ ((K : D.host.E) * z l)) :
      (fun l => ((m * K : ℕ) : AE D) * ε * incA D (z l)) ∈ M := by
    have hscale : (fun l => ((m * K : ℕ) : AE D) * ε * incA D (z l)) =
        (m : AE D) • fun l => ε * incA D ((K : D.host.E) * z l) := by
      funext l
      rw [Pi.smul_apply, smul_eq_mul, RingHom.map_mul, map_natCast, Nat.cast_mul]
      ring
    rw [hscale]
    exact hmul _ fun l => GlobalTheory.IwaFlag.mul_incA_mem hεI (hz l)
  have hflag := GlobalTheory.IwaFlag.exists_flag_dual_matrix
    (c := cA D) (O := GlobalTheory.IwaFlag.intGrpAt D v) (M := M) (gA S)
    cA_cA hεε hεc hεI (fun a ha => (hε a).1 ha.1)
    (fun _ ha _ hb => GlobalTheory.IwaFlag.mul_mem_intAt ha hb)
    (fun a ha => ⟨(hε _).2 (by rw [← hεc, ← RingHom.map_mul, (hε a).1 ha.1]),
      (FrameLat.cA_int_iff a).2 ha.2⟩)
    (GlobalTheory.IwaFlag.princ_intGrpAt hεε hεc hεI hε ht)
    (fun y hy i => (hε _).1 (hsupp y hy i))
    (fun y hy => hdual y fun i => (hε _).2 (hy i)) d.jX d.jY d.gram_YX (m * K) (Nat.mul_pos hm hK)
    (fun k => hcol (fun l => d.e l k) fun l => hint (Sum.inl (l, k)))
    (fun k => hcol (fun l => d.e' l k) fun l => hint (Sum.inr (l, k)))
  obtain ⟨b, h1, h2, h3, c', h4, h5⟩ := hflag
  exact ⟨b, h1, fun i j => (hε _).2 (h2 i j), h3, c', h4, h5⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagDualBasisSelfDualLatticeAtPlaceStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIsotropicDualColumnsSelfDualLatticeAtPlace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIsotropicDualColumnsSelfDualLatticeAtPlace", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WittCoreEmbeddingPreservesSupportedUnitarySubgro\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.IwaPlace Matrix
open scoped TensorProduct

namespace GlobalTheory.IwaPlace.DualIso

variable {D : D7}

theorem intAE_mul_mem' {x y : Af D.host.F ⊗[D.host.F] D.host.E} (hx : x ∈ intAE D) (hy : y ∈ intAE D) :
    x * y ∈ intAE D := by
  refine AddSubgroup.closure_induction₂ (p := fun x y _ _ => x * y ∈ intAE D) ?_ ?_ ?_ ?_ ?_ ?_ ?_ hx hy
  · rintro _ _ ⟨a, ha, u, rfl⟩ ⟨b, hb, v, rfl⟩
    refine AddSubgroup.subset_closure ⟨a * b, fun w => ?_, u * v, ?_⟩
    · rw [map_mul]; exact mul_mem (ha w) (hb w)
    · rw [Algebra.TensorProduct.tmul_mul_tmul]; rfl
  · intro x _; rw [zero_mul]; exact zero_mem _
  · intro x _; rw [mul_zero]; exact zero_mem _
  · intro x y z _ _ _ h1 h2; rw [add_mul]; exact add_mem h1 h2
  · intro x y z _ _ _ h1 h2; rw [mul_add]; exact add_mem h1 h2
  · intro x y _ _ h; rw [neg_mul]; exact neg_mem h
  · intro x y _ _ h; rw [mul_neg]; exact neg_mem h

theorem intAt_mul_mem {v : Pl D} {a b : AE D} (ha : a ∈ intAt D (· = v)) (hb : b ∈ intAt D (· = v)) :
    a * b ∈ intAt D (· = v) :=
  ⟨Ideal.mul_mem_left _ _ hb.1, by rw [map_mul]; exact intAE_mul_mem' ha.2 hb.2⟩

theorem hermAt_smul_left (S : HSp D) (o : AE D) (y x : Fin S.rank → AE D) :
    hermAt S (o • y) x = o * hermAt S y x := by
  simp only [hermAt, Finset.mul_sum, Pi.smul_apply, smul_eq_mul]
  exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by ring

theorem smul_mem_of_isSDAt {S : HSp D} {v : Pl D} {M : AddSubgroup (Fin S.rank → AE D)} (hM : IsSDAt S v M)
    {o : AE D} (ho : o ∈ intAt D (· = v)) {y : Fin S.rank → AE D} (hy : y ∈ M) : o • y ∈ M := by
  refine (hM.2.2 _ fun i => ?_).2 fun x hx => ?_
  · simp only [Pi.smul_apply, smul_eq_mul]; exact Ideal.mul_mem_left _ _ (hM.1 y hy i)
  · rw [hermAt_smul_left]; exact intAt_mul_mem ho ((hM.2.2 y (hM.1 y hy)).1 hy x hx)

theorem col_mul_mem {S : HSp D} {v : Pl D} {M : AddSubgroup (Fin S.rank → AE D)} (hM : IsSDAt S v M) {ρ : ℕ}
    (A : Mx D S.rank ρ) (B : Mx D ρ ρ) (hA : ∀ i, (fun k => A k i) ∈ M) (hB : ∀ m i, B m i ∈ intAt D (· = v))
    (i : Fin ρ) : (fun k => (A ⬝ B) k i) ∈ M := by
  have e : (fun k => (A ⬝ B) k i) = ∑ m, B m i • (fun k => A k m) := by
    funext k; simp [Matrix.mul_apply, Finset.sum_apply, mul_comm]
  rw [e]; exact AddSubgroup.sum_mem _ fun m _ => smul_mem_of_isSDAt hM (hB m i) (hA m)

theorem gram_entry (S : HSp D) {ρ : ℕ} (c' : Mx D S.rank ρ) (i j : Fin ρ) :
    (adj c' ⬝ (gA S ⬝ c')) i j = hermAt S (fun k => c' k j) (fun k => c' k i) := by
  simp only [hermAt, adj, Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply, Finset.mul_sum, mul_assoc]

theorem smul_mul_smul_one {ρ : ℕ} (ε w : AE D) (H : Mx D ρ ρ) : (ε • (1 : Mx D ρ ρ)) ⬝ (w • H) = (ε * w) • H := by
  rw [smul_mul_assoc, one_mul, smul_smul]

theorem smul_mul_smul_one' {ρ : ℕ} (ε w : AE D) (H : Mx D ρ ρ) : (w • H) ⬝ (ε • (1 : Mx D ρ ρ)) = (ε * w) • H := by
  rw [mul_smul_comm, mul_one, smul_smul]

theorem adj_gram_self (S : HSp D) {ρ : ℕ} (c' : Mx D S.rank ρ) : adj (adj c' ⬝ (gA S ⬝ c')) = adj c' ⬝ (gA S ⬝ c') := by
  rw [adj_mul, adj_mul, adj_adj, adj_gA, Matrix.mul_assoc]

theorem gram_swap_smul (S : HSp D) {ρ : ℕ} {ε : AE D} (hεc : cA D ε = ε) (c c' : Mx D S.rank ρ)
    (hcc : adj c' ⬝ (gA S ⬝ c) = ε • (1 : Mx D ρ ρ)) : adj c ⬝ (gA S ⬝ c') = ε • (1 : Mx D ρ ρ) := by
  have := congrArg adj hcc
  rwa [adj_mul, adj_mul, adj_adj, adj_gA, Matrix.mul_assoc, adj_smul, hεc, adj_one] at this

theorem pair_sub (S : HSp D) {ρ : ℕ} {ε : AE D} (c c' : Mx D S.rank ρ) (K : Mx D ρ ρ)
    (hcc0 : adj c ⬝ (gA S ⬝ c) = 0) (hcc : adj c' ⬝ (gA S ⬝ c) = ε • (1 : Mx D ρ ρ)) :
    adj (c' - c ⬝ K) ⬝ (gA S ⬝ c) = ε • (1 : Mx D ρ ρ) := by
  rw [adj_sub, adj_mul, Matrix.sub_mul, Matrix.mul_assoc, hcc0, Matrix.mul_zero, sub_zero, hcc]

theorem pair_sub' (S : HSp D) {ρ : ℕ} {ε : AE D} (c c' : Mx D S.rank ρ) (K : Mx D ρ ρ)
    (hcc' : adj c ⬝ (gA S ⬝ c') = ε • (1 : Mx D ρ ρ)) :
    adj (c' - c ⬝ K) ⬝ (gA S ⬝ c') = adj c' ⬝ (gA S ⬝ c') - adj K ⬝ (ε • (1 : Mx D ρ ρ)) := by
  rw [adj_sub, adj_mul, Matrix.sub_mul, Matrix.mul_assoc, hcc']

theorem self_sub (S : HSp D) {ρ : ℕ} (c'' c c' : Mx D S.rank ρ) (K : Mx D ρ ρ) (h : c'' = c' - c ⬝ K) :
    adj c'' ⬝ (gA S ⬝ c'') = adj c'' ⬝ (gA S ⬝ c') - adj c'' ⬝ (gA S ⬝ c) ⬝ K := by
  rw [h, Matrix.mul_sub, Matrix.mul_sub, ← Matrix.mul_assoc (gA S) c K,
    ← Matrix.mul_assoc (adj (c' - c ⬝ K)) (gA S ⬝ c) K]

theorem isotropic_core {S : HSp D} {v : Pl D} {ε : AE D} (hεε : ε * ε = ε) (hεc : cA D ε = ε)
    (hε : ∀ a, a ∈ idAt D (· = v) ↔ ε * a = a) {M : AddSubgroup (Fin S.rank → AE D)} (hM : IsSDAt S v M)
    {w : AE D} (hw : w ∈ intAt D (· = v)) (hwc : w + cA D w = ε) {ρ : ℕ} (c c' : Mx D S.rank ρ)
    (hc : ∀ i, (fun k => c k i) ∈ M) (hc' : ∀ i, (fun k => c' k i) ∈ M) (hcc0 : adj c ⬝ (gA S ⬝ c) = 0)
    (hcc : adj c' ⬝ (gA S ⬝ c) = ε • (1 : Mx D ρ ρ)) :
    ∃ c'' : Mx D S.rank ρ, (∀ i, (fun k => c'' k i) ∈ M) ∧ adj c'' ⬝ (gA S ⬝ c) = ε • (1 : Mx D ρ ρ) ∧
      adj c'' ⬝ (gA S ⬝ c'') = 0 := by
  obtain ⟨H, hH⟩ : ∃ H : Mx D ρ ρ, H = adj c' ⬝ (gA S ⬝ c') := ⟨_, rfl⟩
  have hHint : ∀ i j, H i j ∈ intAt D (· = v) := fun i j => by
    rw [hH, gram_entry]; exact (hM.2.2 _ (hM.1 _ (hc' j))).1 (hc' j) _ (hc' i)
  have hεH : ε • H = H := by
    funext i j; rw [Matrix.smul_apply, smul_eq_mul]; exact (hε _).1 (hHint i j).1
  have hadjH : adj H = H := by rw [hH]; exact adj_gram_self S c'
  have hcc' := gram_swap_smul S hεc c c' hcc
  have hKint : ∀ m i, (w • H) m i ∈ intAt D (· = v) := fun m i => by
    rw [Matrix.smul_apply, smul_eq_mul]; exact intAt_mul_mem hw (hHint m i)
  have e3 : ε * cA D w + ε * w = ε := by rw [← mul_add, add_comm, hwc, hεε]
  have f3 : H - (ε * cA D w) • H - (ε * w) • H = 0 := by
    rw [sub_sub, ← add_smul, e3, hεH, sub_self]
  have e1 := pair_sub S (ε := ε) c c' (w • H) hcc0 hcc
  have e2 := pair_sub' S c c' (w • H) hcc'
  rw [← hH, adj_smul, hadjH, smul_mul_smul_one'] at e2
  refine ⟨c' - c ⬝ (w • H), fun i => ?_, e1, ?_⟩
  · have e : (fun k => (c' - c ⬝ (w • H)) k i) = (fun k => c' k i) - fun k => (c ⬝ (w • H)) k i := rfl
    rw [e]; exact sub_mem (hc' i) (col_mul_mem hM c _ hc hKint i)
  · rw [self_sub S _ c c' (w • H) rfl, e1, e2, smul_mul_smul_one, f3]
theorem dual_isotropic : ∀ (D : D7) (S S₀ : HSp D) (ρ : ℕ) (d : HypDec S S₀ ρ) (v : Pl D) (ε : AE D) (hεε : ε * ε = ε) (hεc : cA D ε = ε) (hεI : ε ∈ intAt D (· = v)) (hε : ∀ a, a ∈ idAt D (· = v) ↔ ε * a = a) (M : AddSubgroup (Fin S.rank → AE D)), IsSDAt S v M → ∀ w ∈ intAt D (· = v), w + cA D w = ε → ∀ (b : Mx D ρ ρ) (c' : Mx D S.rank ρ), (∀ i j, b i j ∈ idAt D (· = v)) → (∀ i, (fun k => (d.jX ⬝ b) k i) ∈ M) → (∀ i, (fun k => c' k i) ∈ M) → adj c' ⬝ (gA S ⬝ (d.jX ⬝ b)) = ε • (1 : Mx D ρ ρ) → ∃ c'' : Mx D S.rank ρ, (∀ i, (fun k => c'' k i) ∈ M) ∧ adj c'' ⬝ (gA S ⬝ (d.jX ⬝ b)) = ε • (1 : Mx D ρ ρ) ∧ adj c'' ⬝ (gA S ⬝ c'') = 0 := by
  intro D S S₀ ρ d v ε hεε hεc hεI hε M hM w hw hwc b c' hb hc hc' hcc
  have hcc0 : adj (d.jX ⬝ b) ⬝ (gA S ⬝ (d.jX ⬝ b)) = 0 := by
    rw [adj_mul, Matrix.mul_assoc, ← Matrix.mul_assoc (gA S) d.jX b, ← Matrix.mul_assoc (adj d.jX),
      d.gram_XX, Matrix.zero_mul, Matrix.mul_zero]
  exact isotropic_core hεε hεc hε hM hw hwc (d.jX ⬝ b) c' hc hc' hcc0 hcc

end GlobalTheory.IwaPlace.DualIso

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIsotropicDualColumnsSelfDualLatticeAtPlace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIsotropicDualColumnsSelfDualLatticeAtPlaceStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIsotropicDualColumnsSelfDualLatticeAtPlaceStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WittCoreEmbeddingPreservesSupportedUnitarySubgro\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIsotropicDualColumnsSelfDualLatticeAtPlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.IwaPlace Matrix

theorem _root_.GlobalTheory.T.exists_isotropic_dual_columns_selfDualLatticeAtPlace : ∀ (D : D7) (S S₀ : HSp D) (ρ : ℕ) (d : HypDec S S₀ ρ) (v : Pl D) (ε : AE D) (hεε : ε * ε = ε) (hεc : cA D ε = ε) (hεI : ε ∈ intAt D (· = v)) (hε : ∀ a, a ∈ idAt D (· = v) ↔ ε * a = a) (M : AddSubgroup (Fin S.rank → AE D)), IsSDAt S v M → ∀ w ∈ intAt D (· = v), w + cA D w = ε → ∀ (b : Mx D ρ ρ) (c' : Mx D S.rank ρ), (∀ i j, b i j ∈ idAt D (· = v)) → (∀ i, (fun k => (d.jX * b) k i) ∈ M) → (∀ i, (fun k => c' k i) ∈ M) → adj c' * (gA S * (d.jX * b)) = ε • (1 : Mx D ρ ρ) → ∃ c'' : Mx D S.rank ρ, (∀ i, (fun k => c'' k i) ∈ M) ∧ adj c'' * (gA S * (d.jX * b)) = ε • (1 : Mx D ρ ρ) ∧ adj c'' * (gA S * c'') = 0 :=
  GlobalTheory.IwaPlace.DualIso.dual_isotropic
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIsotropicDualColumnsSelfDualLatticeAtPlaceStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsUnitarySupportedAtPlaceOfDualIsotropicFram =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsUnitarySupportedAtPlaceOfDualIsotropicFram", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WittCoreEmbeddingPreservesSupportedUnitarySubgro\nimport Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.IwaPlace Matrix

namespace GlobalTheory.IwaPlace.BuildQ

variable {D : D7}

theorem mulVec_colMul {m n k : ℕ} (M : Mx D m n) (X : Mx D n k) (i : Fin k) (a : AE D) :
    M *ᵥ colMul X i a = fun r => a * (M * X) r i := by
  funext r
  simp only [colMul, Matrix.mulVec, dotProduct, Matrix.mul_apply, Finset.mul_sum]
  refine Finset.sum_congr rfl fun l _ => ?_
  ring

theorem adj_diagonal {n : ℕ} (f : Fin n → AE D) :
    adj (Matrix.diagonal f) = Matrix.diagonal (fun i => cA D (f i)) := by
  ext i j; simp [adj, Matrix.diagonal_apply]; split_ifs <;> simp_all [eq_comm]

theorem mul_tail₃ {a m n p k : ℕ} {A : Mx D a m} {B : Mx D m n} {B' : Mx D n p} {C : Mx D a p}
    (h : A * (B * B') = C) (X : Mx D p k) :
    A * (B * (B' * X)) = C * X := by
  rw [← h]; simp only [Matrix.mul_assoc]

theorem mul_tail₄ {a m n p q k : ℕ} {A : Mx D a m} {B : Mx D m n} {B' : Mx D n p} {B'' : Mx D p q} {C : Mx D a q}
    (h : A * (B * (B' * B'')) = C) (X : Mx D q k) :
    A * (B * (B' * (B'' * X))) = C * X := by
  rw [← h]; simp only [Matrix.mul_assoc]

end GlobalTheory.IwaPlace.BuildQ

namespace GlobalTheory.IwaPlace.BuildQ

variable {D : D7} {S S₀ : HSp D} {ρ : ℕ} (d : HypDec S S₀ ρ)

theorem gXX {k : ℕ} (X : Mx D ρ k) : adj d.jX * (gA S * (d.jX * X)) = 0 := by
  rw [_root_.GlobalTheory.MixModel.cancel₃ d.gram_XX, Matrix.zero_mul]
theorem gYX {k : ℕ} (X : Mx D ρ k) : adj d.jY * (gA S * (d.jX * X)) = X := by
  rw [_root_.GlobalTheory.MixModel.cancel₃ d.gram_YX, Matrix.one_mul]
theorem g0X {k : ℕ} (X : Mx D ρ k) : adj d.j0 * (gA S * (d.jX * X)) = 0 := by
  rw [_root_.GlobalTheory.MixModel.cancel₃ d.gram_0X, Matrix.zero_mul]

end GlobalTheory.IwaPlace.BuildQ

namespace GlobalTheory.IwaPlace.BuildQ

variable {D : D7} {S S₀ : HSp D} {ρ : ℕ} (d : HypDec S S₀ ρ)

theorem smul_eq_of_mem {P : Pl D → Prop} {ε : AE D} (hε : ∀ a, a ∈ idAt D P ↔ ε * a = a)
    {m n : ℕ} {x : Mx D m n} (hx : ∀ i j, x i j ∈ idAt D P) : ε • x = x := by
  ext i j; rw [Matrix.smul_apply, smul_eq_mul, (hε _).1 (hx i j)]

theorem one_sub_mul_self {ε : AE D} (hεε : ε * ε = ε) : (1 - ε) * ε = 0 := by
  rw [sub_mul, one_mul, hεε, sub_self]

theorem one_sub_sq {ε : AE D} (hεε : ε * ε = ε) : (1 - ε) * (1 - ε) = 1 - ε := by
  rw [mul_sub, mul_one, one_sub_mul_self hεε, sub_zero]

theorem kill_left {ε : AE D} (hεε : ε * ε = ε) {m n k : ℕ} {x : Mx D m n} (hx : ε • x = x) (X : Mx D n k) :
    (1 - ε) • (x * X) = 0 := by
  rw [← Matrix.smul_mul, ← hx, smul_smul, one_sub_mul_self hεε, zero_smul, Matrix.zero_mul]

theorem diag_absorb {ε : AE D} {n : ℕ} {α : Fin n → AE D} (hαε : ∀ i, ε * α i = α i) :
    ε • Matrix.diagonal α = Matrix.diagonal α := by
  ext i j
  simp only [Matrix.smul_apply, Matrix.diagonal_apply, smul_eq_mul]
  split_ifs with h
  · exact hαε i
  · rw [mul_zero]

theorem diag_const {ε : AE D} {n : ℕ} {α β : Fin n → AE D} (hαβ : ∀ i, α i * β i = ε) :
    (Matrix.diagonal fun i => α i * β i) = ε • (1 : Mx D n n) := by
  have : (fun i => α i * β i) = fun _ => ε := funext hαβ
  rw [this]
  ext i j
  by_cases h : i = j
  · subst h; simp
  · simp [h]


theorem imYX {ε : AE D} (hεε : ε * ε = ε) (hεc : cA D ε = ε) {α β : Fin ρ → AE D} (hαε : ∀ i, ε * α i = α i)
    (hαβ : ∀ i, α i * β i = ε) {b : Mx D ρ ρ} (hb : ε • b = b) {c' : Mx D S.rank ρ} (hc : ε • c' = c')
    (H1 : adj c' * (gA S * (d.jX * b)) = ε • (1 : Mx D ρ ρ)) :
    adj (c' * Matrix.diagonal (fun i => cA D (α i)) + (1 - ε) • d.jY) *
      (gA S * (d.jX * (b * Matrix.diagonal β + (1 - ε) • (1 : Mx D ρ ρ)))) = 1 := by
  have hcA1 : cA D (1 - ε) = 1 - ε := by rw [map_sub, map_one, hεc]
  have hadjc : ε • adj c' = adj c' := by
    conv_rhs => rw [← hc]
    rw [adj_smul, hεc]
  simp only [adj_add, adj_mul, adj_smul, adj_diagonal, cA_cA, hcA1, Matrix.mul_add, Matrix.add_mul, Matrix.mul_assoc]
  simp only [mul_tail₄ H1, Matrix.smul_mul, Matrix.mul_smul, Matrix.mul_one, Matrix.one_mul, gYX d, d.gram_YX, kill_left hεε (diag_absorb hαε), kill_left hεε hb, add_zero, smul_smul]
  rw [zero_add, Matrix.diagonal_mul_diagonal, one_sub_sq hεε]
  rw [diag_const hαβ, smul_smul, hεε, ← add_smul, add_sub_cancel, one_smul]

end GlobalTheory.IwaPlace.BuildQ

namespace GlobalTheory.IwaPlace.BuildQ

variable {D : D7} {S S₀ : HSp D} {ρ : ℕ} (d : HypDec S S₀ ρ)

theorem kill_mid₂ {ε : AE D} (hεε : ε * ε = ε) {m n p q k : ℕ} {x : Mx D p q} (hx : ε • x = x)
    (A : Mx D m n) (B : Mx D n p) (X : Mx D q k) : (1 - ε) • (A * (B * (x * X))) = 0 := by
  rw [← Matrix.mul_smul, ← Matrix.mul_smul, kill_left hεε hx, Matrix.mul_zero, Matrix.mul_zero]

theorem absorb_mul {ε : AE D} {m n k : ℕ} {x : Mx D m n} (hx : ε • x = x) (X : Mx D n k) :
    x * (ε • X) = x * X := by
  rw [Matrix.mul_smul, ← Matrix.smul_mul, hx]

theorem imXX {ε : AE D} {β : Fin ρ → AE D} {b : Mx D ρ ρ} :
    adj (d.jX * (b * Matrix.diagonal β + (1 - ε) • (1 : Mx D ρ ρ))) *
      (gA S * (d.jX * (b * Matrix.diagonal β + (1 - ε) • (1 : Mx D ρ ρ)))) = 0 := by
  rw [adj_mul, Matrix.mul_assoc, gXX, Matrix.mul_zero]


theorem imYY {ε : AE D} (hεε : ε * ε = ε) (hεc : cA D ε = ε) {α : Fin ρ → AE D} (hαε : ∀ i, ε * α i = α i)
    {c' : Mx D S.rank ρ} (hc : ε • c' = c') (H2 : adj c' * (gA S * c') = 0) :
    adj (c' * Matrix.diagonal (fun i => cA D (α i)) + (1 - ε) • d.jY) *
      (gA S * (c' * Matrix.diagonal (fun i => cA D (α i)) + (1 - ε) • d.jY)) = 0 := by
  have hcA1 : cA D (1 - ε) = 1 - ε := by rw [map_sub, map_one, hεc]
  have hadjc : ε • adj c' = adj c' := by
    conv_rhs => rw [← hc]
    rw [adj_smul, hεc]
  simp only [adj_add, adj_mul, adj_smul, adj_diagonal, cA_cA, hcA1, Matrix.mul_add, Matrix.add_mul, Matrix.mul_assoc]
  simp only [_root_.GlobalTheory.MixModel.cancel₃ H2, Matrix.mul_zero, Matrix.smul_mul, Matrix.mul_smul, d.gram_YY, smul_zero,
    kill_mid₂ hεε hc, kill_left hεε (diag_absorb hαε), add_zero, Matrix.zero_mul]


theorem imOO {b : Mx D ρ ρ} {c' : Mx D S.rank ρ} :
    adj (d.j0 - (d.jX * b) * (adj c' * (gA S * d.j0))) * (gA S * (d.j0 - (d.jX * b) * (adj c' * (gA S * d.j0)))) = gA S₀ := by
  simp only [adj_sub, adj_mul, adj_gA, adj_adj, Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_assoc, d.gram_00, d.wittDecomp_gram_X_anisotropic,
    gXX, g0X, Matrix.mul_zero, sub_zero]


theorem imOX {ε : AE D} {β : Fin ρ → AE D} {b : Mx D ρ ρ} {c' : Mx D S.rank ρ} :
    adj (d.j0 - (d.jX * b) * (adj c' * (gA S * d.j0))) * (gA S * (d.jX * (b * Matrix.diagonal β + (1 - ε) • (1 : Mx D ρ ρ)))) = 0 := by
  simp only [adj_sub, adj_mul, Matrix.sub_mul, Matrix.mul_assoc, gXX, g0X, Matrix.mul_zero, sub_zero]


theorem imOY {ε : AE D} (hεε : ε * ε = ε) (hεc : cA D ε = ε) {α : Fin ρ → AE D} {b : Mx D ρ ρ} (hb : ε • b = b)
    {c' : Mx D S.rank ρ} (hc : ε • c' = c')
    (H1 : adj c' * (gA S * (d.jX * b)) = ε • (1 : Mx D ρ ρ)) :
    adj (d.j0 - (d.jX * b) * (adj c' * (gA S * d.j0))) * (gA S * (c' * Matrix.diagonal (fun i => cA D (α i)) + (1 - ε) • d.jY)) = 0 := by
  have adjH1 : adj b * (adj d.jX * (gA S * c')) = ε • (1 : Mx D ρ ρ) := by
    have := congrArg adj H1
    simpa only [adj_mul, adj_gA, adj_adj, adj_smul, adj_one, hεc, Matrix.mul_assoc] using this
  simp only [adj_sub, adj_mul, adj_gA, adj_adj, Matrix.sub_mul, Matrix.mul_add, Matrix.mul_assoc]
  rw [mul_tail₄ adjH1, Matrix.smul_mul, Matrix.one_mul, absorb_mul hc, sub_self, zero_add]
  simp only [Matrix.mul_smul, d.gram_0Y, d.gram_XY, Matrix.mul_one, smul_zero, kill_mid₂ hεε hc, sub_zero]

end GlobalTheory.IwaPlace.BuildQ

namespace GlobalTheory.IwaPlace.BuildQ

variable {D : D7} {S S₀ : HSp D} {ρ : ℕ} (d : HypDec S S₀ ρ)



theorem smul_sub_one {ε : AE D} (M : Mx D S.rank S.rank)
    (hX : ε • (M * d.jX - d.jX) = M * d.jX - d.jX) (h0 : ε • (M * d.j0 - d.j0) = M * d.j0 - d.j0)
    (hY : ε • (M * d.jY - d.jY) = M * d.jY - d.jY) : ε • (M - 1) = M - 1 := by
  have e : M - 1 = (M * d.jX - d.jX) * d.pX + (M * d.j0 - d.j0) * d.p0 + (M * d.jY - d.jY) * d.pY := by
    have e1 : M - 1 = (M - 1) * (d.jX * d.pX + d.j0 * d.p0 + d.jY * d.pY) := by
      rw [d.sum_eq_one, Matrix.mul_one]
    rw [e1]
    simp only [Matrix.mul_add, ← Matrix.mul_assoc, Matrix.sub_mul, Matrix.one_mul]
  rw [e, smul_add, smul_add, ← Matrix.smul_mul, ← Matrix.smul_mul, ← Matrix.smul_mul, hX, h0, hY]

theorem smul_shift {ε : AE D} (hεε : ε * ε = ε) {m n : ℕ} {x : Mx D m n} (hx : ε • x = x) (y : Mx D m n) :
    ε • (x + (1 - ε) • y - y) = x + (1 - ε) • y - y := by
  have e : x + (1 - ε) • y - y = x - ε • y := by
    rw [sub_smul, one_smul]; abel
  rw [e, smul_sub, hx, smul_smul, hεε]

theorem scalar_X {R : Type*} [CommRing R] {ε a b x y : R} (ha : ε * a = a) (hab : a * b = ε) (hx : ε * x = x) :
    a * (x * b + (1 - ε) * y) = x := by
  linear_combination x * hab + hx - y * ha

end GlobalTheory.IwaPlace.BuildQ


open GlobalTheory.IwaPlace.BuildQ in

theorem GlobalTheory.IwaPlace.exists_grpAt_of_dual_frames : ∀ (D : D7) (S S₀ : HSp D) (ρ : ℕ) (d : HypDec S S₀ ρ) (v : Pl D) (ε : AE D) (hεε : ε * ε = ε) (hεc : cA D ε = ε) (hεI : ε ∈ intAt D (· = v)) (hε : ∀ a, a ∈ idAt D (· = v) ↔ ε * a = a) (α β : Fin ρ → AE D) (b : Mx D ρ ρ) (c' : Mx D S.rank ρ), (∀ i, α i ∈ idAt D (· = v)) → (∀ i, β i ∈ idAt D (· = v)) → (∀ i, α i * β i = ε) → (∀ i j, b i j ∈ idAt D (· = v)) → (∀ i j, c' i j ∈ idAt D (· = v)) → adj c' * (gA S * (d.jX * b)) = ε • (1 : Mx D ρ ρ) → adj c' * (gA S * c') = 0 → ∃ q ∈ grpAt S (· = v), mt S q * d.jX = d.jX * (b * Matrix.diagonal β + (1 - ε) • (1 : Mx D ρ ρ)) ∧ (∀ i, mt S q *ᵥ colMul d.jX i (α i) = fun k => (d.jX * b) k i) ∧ (∀ i, mt S q *ᵥ colMul d.jY i (cA D (β i)) = fun k => c' k i) := by
  intro D S S₀ ρ d v ε hεε hεc _ hε α β b c' hα hβ hαβ hb hc' H1 H2
  have hb' : ε • b = b := smul_eq_of_mem hε hb
  have hc : ε • c' = c' := smul_eq_of_mem hε hc'
  have hαε : ∀ i, ε * α i = α i := fun i => (hε _).1 (hα i)
  have hβε : ∀ i, ε * β i = β i := fun i => (hε _).1 (hβ i)
  have h : HypDec.Images S S₀ (d.jX * (b * Matrix.diagonal β + (1 - ε) • (1 : Mx D ρ ρ)))
      (d.j0 - (d.jX * b) * (adj c' * (gA S * d.j0)))
      (c' * Matrix.diagonal (fun i => cA D (α i)) + (1 - ε) • d.jY) :=
    ⟨imXX d, imYY d hεε hεc hαε hc H2, imYX d hεε hεc hαε hαβ hb' hc H1, imOO d, imOX d, imOY d hεε hεc hb' hc H1⟩
  have hjb : ε • (d.jX * b) = d.jX * b := by rw [← Matrix.mul_smul, hb']
  have hE : d.jX * (b * Matrix.diagonal β + (1 - ε) • (1 : Mx D ρ ρ))
      = (d.jX * b) * Matrix.diagonal β + (1 - ε) • d.jX := by
    rw [Matrix.mul_add, Matrix.mul_smul, Matrix.mul_one, Matrix.mul_assoc]
  refine ⟨d.ofImages _ _ _ h, ?_, d.ofImages_jX h, fun i => ?_, fun i => ?_⟩
  · have key := smul_sub_one d (ε := ε) (Formalism.L2.Theta.mt S (d.ofImages _ _ _ h))
      (by rw [d.ofImages_jX h, hE]; exact smul_shift hεε (by rw [← Matrix.smul_mul, hjb]) _)
      (by rw [d.wittDecomp_ofImages_inclAnisotropic h, sub_sub_cancel_left, smul_neg, ← Matrix.smul_mul, hjb])
      (by rw [d.ofImages_jY h]; exact smul_shift hεε (by rw [← Matrix.smul_mul, hc]) _)
    refine (mem_congGrp_iff S _ _).2 fun i j => (hε _).2 ?_
    exact congrFun (congrFun key i) j
  · rw [mulVec_colMul, d.ofImages_jX h, hE]
    funext k
    rw [Matrix.add_apply, Matrix.mul_diagonal, Matrix.smul_apply, smul_eq_mul]
    exact scalar_X (hαε i) (hαβ i) (congrFun (congrFun hjb k) i)
  · rw [mulVec_colMul, d.ofImages_jY h]
    funext k
    rw [Matrix.add_apply, Matrix.mul_diagonal, Matrix.smul_apply, smul_eq_mul]
    refine scalar_X ?_ ?_ (congrFun (congrFun hc k) i)
    · rw [← hεc, ← map_mul, hβε]
    · rw [← map_mul, mul_comm, hαβ, hεc]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsUnitarySupportedAtPlaceOfDualIsotropicFram =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsUnitarySupportedAtPlaceOfDualIsotropicFramStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsUnitarySupportedAtPlaceOfDualIsotropicFramStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsUnitarySupportedAtPlaceOfDualIsotropicFram\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WittCoreEmbeddingPreservesSupportedUnitarySubgro\nimport Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.IwaPlace Matrix
open GlobalTheory.IwaPlace.BuildQ in

theorem _root_.GlobalTheory.T.exists_unitarySupportedAtPlace_of_dual_isotropic_frames : ∀ (D : D7) (S S₀ : HSp D) (ρ : ℕ) (d : HypDec S S₀ ρ) (v : Pl D) (ε : AE D) (hεε : ε * ε = ε) (hεc : cA D ε = ε) (hεI : ε ∈ intAt D (· = v)) (hε : ∀ a, a ∈ idAt D (· = v) ↔ ε * a = a) (α β : Fin ρ → AE D) (b : Mx D ρ ρ) (c' : Mx D S.rank ρ), (∀ i, α i ∈ idAt D (· = v)) → (∀ i, β i ∈ idAt D (· = v)) → (∀ i, α i * β i = ε) → (∀ i j, b i j ∈ idAt D (· = v)) → (∀ i j, c' i j ∈ idAt D (· = v)) → adj c' * (gA S * (d.jX * b)) = ε • (1 : Mx D ρ ρ) → adj c' * (gA S * c') = 0 → ∃ q ∈ grpAt S (· = v), mt S q * d.jX = d.jX * (b * Matrix.diagonal β + (1 - ε) • (1 : Mx D ρ ρ)) ∧ (∀ i, mt S q *ᵥ colMul d.jX i (α i) = fun k => (d.jX * b) k i) ∧ (∀ i, mt S q *ᵥ colMul d.jY i (cA D (β i)) = fun k => c' k i) :=
  GlobalTheory.IwaPlace.exists_grpAt_of_dual_frames
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsUnitarySupportedAtPlaceOfDualIsotropicFramStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagStabiliserMoveLatticeSplitWitt =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagStabiliserMoveLatticeSplitWitt", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WittCoreEmbeddingPreservesSupportedUnitarySubgro\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.AdelicPointComponentsAtPlacesLatticesVacua\npublic import Development.AbelianVarietyTheory.Definitions.ExistenceOfLattices.MarkSpec\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagDualBasisSelfDualLatticeAtPlaceStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIntegralTraceIdempotentAtTamePlace\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIsotropicDualColumnsSelfDualLatticeAtPlaceStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsUnitarySupportedAtPlaceOfDualIsotropicFramStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSelfDualLatticeAtPlaceComapUnitarySupported\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualLatticeAtPlaceSplitsHyperbolicPlusCore\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualLatticeHyperbolicLineIdealsAtPlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.IwaPlace Matrix

noncomputable section

namespace GlobalTheory.IwaPlace

theorem iwasawa_flag_move : ∀ (D : D7) (S S₀ : HSp D) (ρ : ℕ) (d : HypDec S S₀ ρ) (L : Lat S) (L₀ : Lat S₀) (v : Pl D), Tame D v → IsSDAt S v (latV S L (· = v)) → MonoAt d L L₀ v → ∀ h ∈ grpAt S (· = v), ∃ q ∈ grpAt S (· = v), (∃ a : Mx D ρ ρ, (∀ i j, j < i → a i j = 0) ∧ mt S q ⬝ d.jX = d.jX ⬝ a) ∧ ∃ Λ₀ : AddSubgroup (Fin S₀.rank → AE D), IsSDAt S₀ v Λ₀ ∧ ∀ z : Fin S.rank → AE D, (∀ i, z i ∈ idAt D (· = v)) → (mt S (h⁻¹ * q) *ᵥ z ∈ latV S L (· = v) ↔ (∀ i, colMul d.jX i ((d.pX *ᵥ z) i) ∈ latV S L (· = v)) ∧ (∀ i, colMul d.jY i ((d.pY *ᵥ z) i) ∈ latV S L (· = v)) ∧ d.p0 *ᵥ z ∈ Λ₀) := by
  intro D S S₀ ρ d L L₀ v hT hL hM h hh
  obtain ⟨⟨ε, hεε, hεc, hεI, hε, -⟩, -⟩ := _root_.GlobalTheory.FinPl.localComponents D (· = v)
  have hMsd := _root_.GlobalTheory.IwaPlace.SdComap.isSDAt_comap D S v h⁻¹ (inv_mem hh) _ hL
  set M := (latV S L (· = v)).comap (Matrix.mulVecLin (mt S h⁻¹)).toAddMonoidHom with hMdef
  obtain ⟨b, hbu, hbI, hbM, c', hc'M, hpair⟩ := GlobalTheory.T.exists_flag_dual_basis_selfDualLatticeAtPlace D S S₀ ρ d v ε hεε hεc hεI hε hT M hMsd
  obtain ⟨w, hw, hw1⟩ := _root_.GlobalTheory.IwaPlace.exists_trace_one_at_tame D v ε hεε hεc hεI hε hT
  obtain ⟨c'', hc''M, hpair', hiso⟩ := GlobalTheory.T.exists_isotropic_dual_columns_selfDualLatticeAtPlace D S S₀ ρ d v ε hεε hεc hεI hε M hMsd w hw hw1 b c' hbI hbM hc'M hpair
  obtain ⟨α, β, hα, hβ, hαβ, hX, hY⟩ := _root_.GlobalTheory.IwaIdeals.ideals_at_place D S S₀ ρ d L L₀ v ε hεε hεc hεI hε hL hM
  have hc''I : ∀ i j, c'' i j ∈ idAt D (· = v) := fun i j => hMsd.1 _ (hc''M j) i
  obtain ⟨q, hq, hqX, hqα, hqβ⟩ := GlobalTheory.T.exists_unitarySupportedAtPlace_of_dual_isotropic_frames D S S₀ ρ d v ε hεε hεc hεI hε α β b c'' hα hβ hαβ hbI hc''I hpair' hiso
  have hNsd := _root_.GlobalTheory.IwaPlace.SdComap.isSDAt_comap D S v q hq M hMsd
  obtain ⟨Λ₀, hΛ, hz⟩ := _root_.GlobalTheory.IwaDecomp.selfDual_split D S S₀ ρ d v ε hεε hεc hεI hε _ α β hNsd hα hβ hαβ
    (fun i => by
      rw [AddSubgroup.mem_comap]
      change mt S q *ᵥ colMul d.jX i (α i) ∈ M
      rw [hqα]; exact hbM i)
    (fun i => by
      rw [AddSubgroup.mem_comap]
      change mt S q *ᵥ colMul d.jY i (cA D (β i)) ∈ M
      rw [hqβ]; exact hc''M i)
  refine ⟨q, hq, ⟨b ⬝ Matrix.diagonal β + (1 - ε) • (1 : Mx D ρ ρ), fun i j hji => ?_, hqX⟩, Λ₀, hΛ, fun z hz' => ?_⟩
  · rw [Matrix.add_apply, Matrix.mul_diagonal, hbu i j hji, Matrix.smul_apply, Matrix.one_apply_ne (ne_of_gt hji)]
    simp
  · have e1 : (mt S (h⁻¹ * q) *ᵥ z ∈ latV S L (· = v)) ↔
        z ∈ (M.comap (Matrix.mulVecLin (mt S q)).toAddMonoidHom) := by
      rw [AddSubgroup.mem_comap, hMdef, AddSubgroup.mem_comap]
      change _ ↔ mt S h⁻¹ *ᵥ (mt S q *ᵥ z) ∈ _
      rw [Matrix.mulVec_mulVec, ← mt_mul]
    rw [e1, hz z hz']
    refine and_congr (forall_congr' fun i => (hX i _ (mulVec_mem_idAt _ hz' i)).symm)
      (and_congr (forall_congr' fun i => (hY i _ (mulVec_mem_idAt _ hz' i)).symm) Iff.rfl)

end GlobalTheory.IwaPlace

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagStabiliserMoveLatticeSplitWitt =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FlagStabilizerEqUnipotentTorusLeviAtPlace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FlagStabilizerEqUnipotentTorusLeviAtPlace", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.AdelicPointComponentsAtPlacesLatticesVacua\npublic import Development.AbelianVarietyTheory.Definitions.ExistenceOfLattices.MarkSpec\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnfoldingBasePointFourierJacobiGroup\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WittCoreEmbeddingPreservesSupportedUnitarySubgro\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.KerBF\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.FlagUnipotentFourierJacobiGroupStructure\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WittLeviTransvectionMemCompactAtPlace\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.IwaPlace Matrix

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.IwaFlag

variable {D : D7}

theorem mul_left_mem {R : Type} [CommRing R] {I : Ideal R} {l m k : ℕ} (A : Matrix (Fin l) (Fin m) R)
    {M : Matrix (Fin m) (Fin k) R} (h : ∀ i j, M i j ∈ I) (i : Fin l) (j : Fin k) : (A * M) i j ∈ I := by
  rw [Matrix.mul_apply]
  exact Ideal.sum_mem _ fun x _ => Ideal.mul_mem_left _ _ (h x j)

theorem mul_right_mem {R : Type} [CommRing R] {I : Ideal R} {l m k : ℕ} {M : Matrix (Fin l) (Fin m) R}
    (B : Matrix (Fin m) (Fin k) R) (h : ∀ i j, M i j ∈ I) (i : Fin l) (j : Fin k) : (M * B) i j ∈ I := by
  rw [Matrix.mul_apply]
  exact Ideal.sum_mem _ fun x _ => Ideal.mul_mem_right _ _ (h i x)

end GlobalTheory.IwaFlag

namespace GlobalTheory.IwaFlag

variable {D : D7}



theorem flag_stab : ∀ (D : D7) (S S₀ : HSp D) (ρ : ℕ) (d : HypDec S S₀ ρ) (v : Pl D) (g : GA D S), g ∈ grpAt S (· = v) → (∃ a : Mx D ρ ρ, (∀ i j, j < i → a i j = 0) ∧ mt S g ⬝ d.jX = d.jX ⬝ a) → ∃ n ∈ flagN d, n ∈ grpAt S (· = v) ∧ ∃ t : GL (Fin ρ) (AE D), (∀ i j, i ≠ j → t.1 i j = 0) ∧ d.levi t ∈ grpAt S (· = v) ∧ ∃ γ ∈ grpAt S₀ (· = v), g = n * d.levi t * d.emb0 γ := by
  intro D S S₀ ρ d v g hg ⟨a, hup, hgX⟩
  have hG' : ∀ i j, (mt S g - 1) i j ∈ idAt D (· = v) := fun i j => by
    rw [Matrix.sub_apply]; exact (mem_congGrp_iff S (idAt D (· = v)) g).1 hg i j

  have hba : (adj (mt S g ⬝ d.jY) ⬝ (gA S ⬝ d.jX)) * a = 1 := by
    have h1 : adj (mt S g ⬝ d.jY) ⬝ (gA S ⬝ (mt S g ⬝ d.jX)) = 1 := by
      rw [adj_mul, Matrix.mul_assoc, ← Matrix.mul_assoc (gA S), ← Matrix.mul_assoc (adj (mt S g)), mt_unitary]
      exact d.gram_YX
    rw [hgX] at h1
    simpa only [Matrix.mul_assoc] using h1
  have hab : a * (adj (mt S g ⬝ d.jY) ⬝ (gA S ⬝ d.jX)) = 1 := mul_eq_one_comm.1 hba
  obtain ⟨A, hA⟩ : ∃ A : GL (Fin ρ) (AE D), A.1 = a := ⟨⟨a, _, hab, hba⟩, rfl⟩

  have hdet : IsUnit a.det := Matrix.isUnit_det_of_left_inverse hba
  rw [Matrix.det_of_upperTriangular (M := a) (fun ⦃i j⦄ h => hup i j h)] at hdet
  have hu : ∀ i, IsUnit (a i i) := fun i =>
    isUnit_of_dvd_unit (Finset.dvd_prod_of_mem (fun k => a k k) (Finset.mem_univ i)) hdet
  obtain ⟨t, ht1, htinv⟩ : ∃ t : GL (Fin ρ) (AE D), t.1 = diagonal (fun i => a i i) ∧
      (t⁻¹).1 = diagonal (fun i => (((hu i).unit⁻¹ : (AE D)ˣ) : AE D)) :=
    ⟨⟨diagonal (fun i => a i i), diagonal (fun i => (((hu i).unit⁻¹ : (AE D)ˣ) : AE D)),
      by rw [diagonal_mul_diagonal]; simp only [IsUnit.mul_val_inv, diagonal_one],
      by rw [diagonal_mul_diagonal]; simp only [IsUnit.val_inv_mul, diagonal_one]⟩, rfl, rfl⟩
  have ht_diag : ∀ i j, i ≠ j → t.1 i j = 0 := fun i j h => by rw [ht1]; exact diagonal_apply_ne _ h

  have hAt : (A * t⁻¹).1 =
      a * diagonal (fun i => (((hu i).unit⁻¹ : (AE D)ˣ) : AE D)) := by
    rw [Units.val_mul A t⁻¹, htinv, hA]
  have hUX : A * t⁻¹ ∈ UX D ρ := fun i j =>
    ⟨fun h => by rw [hAt, mul_diagonal, hup i j h, zero_mul],
      by rw [hAt, mul_diagonal]; exact IsUnit.mul_val_inv (hu i)⟩
  have hR' : mt S (g * (d.levi t)⁻¹) ⬝ d.jX = d.jX ⬝ (A * t⁻¹).1 := by
    rw [Units.val_mul A t⁻¹, hA, ← map_inv d.levi t, mt_mul, Matrix.mul_assoc, d.levi_jX]
    simpa only [Matrix.mul_assoc] using congrArg (fun M : Mx D S.rank ρ => M ⬝ (t⁻¹).1) hgX
  have hR : g * (d.levi t)⁻¹ ∈ GlobalTheory.Unf.Rgrp S (rat d.e) := ⟨A * t⁻¹, hUX, hR'⟩
  rw [GlobalTheory.Unf.Rgrp_eq d] at hR
  obtain ⟨n, hn, γ, hnγ⟩ := ((flag_jacobi_structure D S S₀ ρ d).2.2.2.1 _).1 hR

  have hcomm : d.levi t * d.emb0 γ = d.emb0 γ * d.levi t := by
    refine d.ga_ext ?_ ?_ ?_
    · rw [GlobalTheory.MixModel.mt_mul S (d.levi t) (d.emb0 γ), GlobalTheory.MixModel.mt_mul S (d.emb0 γ) (d.levi t), Matrix.mul_assoc, Matrix.mul_assoc,
        d.wittDecomp_anisotropicEmbedding_inclX, d.levi_jX, ← Matrix.mul_assoc, d.wittDecomp_anisotropicEmbedding_inclX]
    · rw [GlobalTheory.MixModel.mt_mul S (d.levi t) (d.emb0 γ), GlobalTheory.MixModel.mt_mul S (d.emb0 γ) (d.levi t), Matrix.mul_assoc, Matrix.mul_assoc,
        d.wittDecomp_anisotropicEmbedding_inclAnisotropic, d.wittDecomp_levi_inclAnisotropic, ← Matrix.mul_assoc, d.wittDecomp_levi_inclAnisotropic, d.wittDecomp_anisotropicEmbedding_inclAnisotropic]
    · rw [GlobalTheory.MixModel.mt_mul S (d.levi t) (d.emb0 γ), GlobalTheory.MixModel.mt_mul S (d.emb0 γ) (d.levi t), Matrix.mul_assoc, Matrix.mul_assoc,
        d.wittDecomp_anisotropicEmbedding_inclY, d.levi_jY, ← Matrix.mul_assoc, d.wittDecomp_anisotropicEmbedding_inclY]
  have hgfac : g = n * d.levi t * d.emb0 γ := by
    rw [mul_assoc, hcomm, ← mul_assoc, ← hnγ, inv_mul_cancel_right]

  have hmtγ : mt S₀ γ = d.p0 ⬝ (mt S g ⬝ d.j0) := by
    have e1 : mt S (g * (d.levi t)⁻¹) ⬝ d.j0 = mt S g ⬝ d.j0 := by
      rw [← map_inv d.levi t, mt_mul, Matrix.mul_assoc, d.wittDecomp_levi_inclAnisotropic]
    have e2 : d.p0 ⬝ (mt S (n * d.emb0 γ) ⬝ d.j0) = mt S₀ γ := by
      rw [mt_mul, Matrix.mul_assoc, d.wittDecomp_anisotropicEmbedding_inclAnisotropic, ← Matrix.mul_assoc (mt S n), ← Matrix.mul_assoc,
        GlobalTheory.Unf.flagUnipotent_anisotropic_projection_eq_one d hn, Matrix.one_mul]
    rw [← e2, ← hnγ, e1]
  have hγ : γ ∈ grpAt S₀ (· = v) := (mem_congGrp_iff S₀ _ γ).2 fun i j => by
    have e : mt S₀ γ - 1 = d.p0 ⬝ ((mt S g - 1) ⬝ d.j0) := by
      rw [hmtγ, Matrix.sub_mul, Matrix.mul_sub, Matrix.one_mul, d.p0_j0]
    rw [← Matrix.sub_apply, e]
    exact mul_left_mem _ (mul_right_mem _ hG') i j

  have haI : ∀ i j, (a - 1) i j ∈ idAt D (· = v) := by
    have e : a - 1 = d.pX ⬝ ((mt S g - 1) ⬝ d.jX) := by
      rw [Matrix.sub_mul, Matrix.mul_sub, Matrix.one_mul, d.pX_jX, hgX, ← Matrix.mul_assoc, d.pX_jX, Matrix.one_mul]
    intro i j
    rw [e]
    exact mul_left_mem _ (mul_right_mem _ hG') i j
  have ht1I : ∀ i j, (t.1 - 1) i j ∈ idAt D (· = v) := by
    intro i j
    rw [ht1, Matrix.sub_apply]
    by_cases h : i = j
    · subst h
      have := haI i i
      rw [Matrix.sub_apply] at this
      rwa [diagonal_apply_eq]
    · rw [diagonal_apply_ne _ h, Matrix.one_apply_ne h, sub_zero]
      exact Ideal.zero_mem _
  have htiI : ∀ i j, ((t⁻¹).1 - 1) i j ∈ idAt D (· = v) := by
    intro i j
    rw [htinv, Matrix.sub_apply]
    by_cases h : i = j
    · subst h
      have := haI i i
      rw [Matrix.sub_apply, Matrix.one_apply_eq] at this
      rw [diagonal_apply_eq, Matrix.one_apply_eq]
      have e : (((hu i).unit⁻¹ : (AE D)ˣ) : AE D) - 1 = -((((hu i).unit⁻¹ : (AE D)ˣ) : AE D) * (a i i - 1)) := by
        rw [mul_sub, IsUnit.val_inv_mul (hu i)]; ring
      rw [e]
      exact (idAt D (· = v)).neg_mem (Ideal.mul_mem_left _ _ this)
    · rw [diagonal_apply_ne _ h, Matrix.one_apply_ne h, sub_zero]
      exact Ideal.zero_mem _
  have hadjI : ∀ i j, (adj (t⁻¹).1 - 1) i j ∈ idAt D (· = v) := by
    intro i j
    rw [← adj_one, ← adj_sub]
    exact GlobalTheory.FinPl.RootKeep.conj_mem_idAt (htiI j i)
  have hlevI : d.levi t ∈ grpAt S (· = v) := by
    have e : mt S (d.levi t) - 1 = d.jX ⬝ (t.1 - 1) ⬝ d.pX + d.jY ⬝ (adj (t⁻¹).1 - 1) ⬝ d.pY := by
      rw [d.mt_levi, ← d.sum_eq_one]
      simp only [Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_one]
      abel
    refine (mem_congGrp_iff S _ _).2 fun i j => ?_
    rw [← Matrix.sub_apply, e, Matrix.add_apply]
    exact add_mem (mul_right_mem _ (mul_left_mem _ ht1I) i j) (mul_right_mem _ (mul_left_mem _ hadjI) i j)
  have hnI : n ∈ grpAt S (· = v) := by
    have e : n = g * (d.levi t * d.emb0 γ)⁻¹ := eq_mul_inv_of_mul_eq ((mul_assoc _ _ _).symm.trans hgfac.symm)
    rw [e]
    exact mul_mem hg (inv_mem (mul_mem hlevI (wittCoreEmbedding_preserves_supportedUnitarySubgroup d hγ)))
  exact ⟨n, hn, hnI, t, ht_diag, hlevI, γ, hγ, hgfac⟩

end GlobalTheory.IwaFlag

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FlagStabilizerEqUnipotentTorusLeviAtPlace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IwasawaDecompositionSelfDualWittSplitAtPlace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IwasawaDecompositionSelfDualWittSplitAtPlace", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WittCoreEmbeddingPreservesSupportedUnitarySubgro\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFlagStabiliserMoveLatticeSplitWitt\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FlagStabilizerEqUnipotentTorusLeviAtPlaceStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSelfDualLatticeAtPlaceLatticeCompletion\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualLatticesSingleOrbitTamePlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.IwaPlace Matrix

noncomputable section

namespace GlobalTheory.IwaPlace

variable {D : D7}

theorem flag_times_stab : ∀ (D : D7) (S S₀ : HSp D) (ρ : ℕ) (d : HypDec S S₀ ρ) (L : Lat S) (L₀ : Lat S₀) (v : Pl D), Tame D v → IsSelfDualC S L → IsSelfDualC S₀ L₀ → MonoAt d L L₀ v → ∀ h ∈ grpAt S (· = v), ∃ p ∈ grpAt S (· = v), (∃ a : Mx D ρ ρ, (∀ i j, j < i → a i j = 0) ∧ mt S p ⬝ d.jX = d.jX ⬝ a) ∧ Moves S (p⁻¹ * h) L L (· = v) := by
  intro D S S₀ ρ d L L₀ v hT hL hL₀ hM h hh
  obtain ⟨q, hq, ⟨a, ha, hqa⟩, Λ₀, hΛ, hz⟩ := _root_.GlobalTheory.IwaPlace.iwasawa_flag_move D S S₀ ρ d L L₀ v hT (_root_.GlobalTheory.IwaPlace.LocSD.isSDAt_latV D S L v hL) hM h hh
  obtain ⟨γ, hγ, hγL⟩ := _root_.GlobalTheory.IwaOrbit.selfDual_orbit D S₀ v _ Λ₀ hT (_root_.GlobalTheory.IwaPlace.LocSD.isSDAt_latV D S₀ L₀ v hL₀) hΛ
  refine ⟨q * d.emb0 γ, mul_mem hq (wittCoreEmbedding_preserves_supportedUnitarySubgroup d hγ), ⟨a, ha, ?_⟩, ?_⟩
  · rw [mt_mul, Matrix.mul_assoc, d.wittDecomp_anisotropicEmbedding_inclX, hqa]
  · intro y hy
    obtain ⟨z, hzdef⟩ : ∃ z, z = mt S ((q * d.emb0 γ)⁻¹ * h) *ᵥ y := ⟨_, rfl⟩
    rw [← hzdef]
    have hzI : ∀ i, z i ∈ idAt D (· = v) := by rw [hzdef]; exact mulVec_mem_idAt _ hy
    have hw : y = mt S (h⁻¹ * q) *ᵥ (mt S (d.emb0 γ) *ᵥ z) := by
      rw [hzdef, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, ← mt_mul, ← mt_mul]
      have : h⁻¹ * q * d.emb0 γ * ((q * d.emb0 γ)⁻¹ * h) = 1 := by group
      rw [this, mt_one, Matrix.one_mulVec]
    have key := hz (mt S (d.emb0 γ) *ᵥ z) (mulVec_mem_idAt _ hzI)
    rw [← hw] at key
    rw [key, hM z, Matrix.mulVec_mulVec, d.wittDecomp_projX_anisotropicEmbedding, Matrix.mulVec_mulVec, d.wittDecomp_projY_anisotropicEmbedding, Matrix.mulVec_mulVec, d.wittDecomp_projAnisotropic_anisotropicEmbedding,
      ← Matrix.mulVec_mulVec, ← hγL _ (mulVec_mem_idAt _ hzI)]

theorem iwasawa_at_place : ∀ (D : D7) (S S₀ : HSp D) (ρ : ℕ) (d : HypDec S S₀ ρ) (L : Lat S) (L₀ : Lat S₀) (v : Pl D), Tame D v → IsSelfDualC S L → IsSelfDualC S₀ L₀ → MonoAt d L L₀ v → ∀ h ∈ grpAt S (· = v), ∃ n ∈ flagN d, n ∈ grpAt S (· = v) ∧ ∃ t : GL (Fin ρ) (AE D), (∀ i j, i ≠ j → t.1 i j = 0) ∧ d.levi t ∈ grpAt S (· = v) ∧ ∃ γ ∈ grpAt S₀ (· = v), ∃ κ, InK S L (· = v) κ ∧ h = n * d.levi t * d.emb0 γ * κ := by
  intro D S S₀ ρ d L L₀ v hT hL hL₀ hM h hh
  obtain ⟨p, hp, hflag, hmv⟩ := flag_times_stab D S S₀ ρ d L L₀ v hT hL hL₀ hM h hh
  obtain ⟨n, hn, hnv, t, ht, htv, γ, hγ, hpe⟩ := GlobalTheory.IwaFlag.flag_stab D S S₀ ρ d v p hp hflag
  refine ⟨n, hn, hnv, t, ht, htv, γ, hγ, p⁻¹ * h, ⟨mul_mem (inv_mem hp) hh, hmv⟩, ?_⟩
  rw [← hpe]; group

end GlobalTheory.IwaPlace

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IwasawaDecompositionSelfDualWittSplitAtPlace =====
