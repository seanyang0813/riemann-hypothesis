module

public import Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CongSubgroup
public import Mathlib.NumberTheory.NumberField.Units.DirichletTheorem
public import Mathlib.Algebra.BigOperators.Group.Finset.Defs
public import Mathlib.Basic.Real.Basic
public import Mathlib.Data.Fintype.Card
public import Mathlib.Algebra.BigOperators.Group.Finset.Basic
public import Mathlib.Algebra.Order.BigOperators.Group.Finset
public import Mathlib.Data.Finset.Max
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.PartialZetaTwistedEntireDifference
public import Mathlib.LinearAlgebra.FreeModule.IdealQuotient
public import Mathlib.LinearAlgebra.LinearIndependent.Defs
public import Mathlib.LinearAlgebra.LinearIndependent.Lemmas
public import Mathlib.Basic.Finite.Defs
public import Mathlib.Data.Set.Finite.Basic
public import Mathlib.Data.Set.Finite.Lemmas
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.SiegelKlingenDeligneRibet

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.GlobalProofs.CardRealEmbeddingsEqFinrank, Development.AutomorphicSpectrum.Proofs.GlobalProofs.NearIdentityMatrixPositiveSolution, Development.AutomorphicSpectrum.Proofs.GlobalProofs.TotallyRealFieldDenseEmbeddings, Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsTotallyPositiveBasisPositiveCoords, Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteUnitsBoundedEmbeddingRatio, Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsUnitPowerInCongruence, Development.AutomorphicSpectrum.Proofs.GlobalProofs.UnitLogLatticeBoundedTranslate, Development.AutomorphicSpectrum.Proofs.GlobalProofs.PlaceApply, Development.AutomorphicSpectrum.Proofs.GlobalProofs.ShintaniConeDecomposition, Development.AutomorphicSpectrum.Proofs.GlobalProofs.ComboNotMemSpan, Development.AutomorphicSpectrum.Proofs.GlobalProofs.SimplicialConeTilesSign, Development.AutomorphicSpectrum.Proofs.GlobalProofs.SimplicialConeTiling, Development.AutomorphicSpectrum.Proofs.GlobalProofs.TotallyPositiveBasisRatioBound, Development.AutomorphicSpectrum.Proofs.GlobalProofs.UniqueReducedOrbitRepresentative, Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsShintaniConeDomain

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.CardRealEmbeddingsEqFinrank =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.CardRealEmbeddingsEqFinrank", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.CongSubgroup\nimport Mathlib.NumberTheory.NumberField.Units.Basic\nimport Mathlib.NumberTheory.NumberField.Units.DirichletTheorem\n\n"}
section -- clump:auto
@[expose] public section

open NumberField NumberField.Units NumberField.Units.dirichletUnitTheorem GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.EmbCard

theorem finite_and_card_realEmbeddings (F : Type) [Field F] [NumberField F] [IsTotallyReal F] :
    Finite (F →+* ℝ) ∧ Nat.card (F →+* ℝ) = Module.finrank ℚ F := by
  have e : (F →+* ℝ) ≃ (F →+* ℂ) :=
    { toFun := fun σ => Complex.ofRealHom.comp σ
      invFun := fun φ => (IsTotallyReal.complexEmbedding_isReal φ).embedding
      left_inv := fun σ => by
        ext x
        apply Complex.ofReal_injective
        simp [ComplexEmbedding.IsReal.coe_embedding_apply]
      right_inv := fun φ => by
        ext x
        simp [ComplexEmbedding.IsReal.coe_embedding_apply] }
  have hc : Nat.card (F →+* ℂ) = Module.finrank ℚ F := by
    rw [Nat.card_eq_fintype_card]
    exact Embeddings.card F ℂ
  refine ⟨Finite.of_equiv _ e.symm, ?_⟩
  rw [Nat.card_congr e, hc]

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.EmbCard
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.CardRealEmbeddingsEqFinrank =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.NearIdentityMatrixPositiveSolution =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.NearIdentityMatrixPositiveSolution", "h": "module\n\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Defs\npublic import Mathlib.Basic.Real.Basic\npublic import Mathlib.Data.Fintype.Card\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Basic\npublic import Mathlib.Algebra.Order.BigOperators.Group.Finset\npublic import Mathlib.Data.Finset.Max\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.DiagDom

theorem perturb_bound {κ : Type} [Fintype κ] [DecidableEq κ] (W : κ → κ → ℝ) (ε C : ℝ)
    (hW : ∀ σ i, |W σ i - if σ = i then 1 else 0| < ε) (c : κ → ℝ)
    (hC : ∀ i, |c i| ≤ C) (σ : κ) :
    |∑ i, W σ i * c i - c σ| ≤ (Fintype.card κ : ℝ) * ε * C := by
  have hrw : ∑ i, W σ i * c i - c σ = ∑ i, (W σ i - if σ = i then 1 else 0) * c i := by
    simp [sub_mul, Finset.sum_sub_distrib, ite_mul]
  rw [hrw]
  calc |∑ i, (W σ i - if σ = i then 1 else 0) * c i|
      ≤ ∑ i, |(W σ i - if σ = i then 1 else 0) * c i| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _i : κ, ε * C := Finset.sum_le_sum fun i _ => by
        rw [abs_mul]
        exact mul_le_mul (hW σ i).le (hC i) (abs_nonneg _) ((abs_nonneg _).trans (hW σ i).le)
    _ = (Fintype.card κ : ℝ) * ε * C := by
        rw [Finset.sum_const, Finset.card_univ, nsmul_eq_mul, mul_assoc]

theorem small_perturbation_injective_pos :
    ∀ {κ : Type} [Fintype κ] [DecidableEq κ] (M : ℝ), ∃ ε : ℝ, 0 < ε ∧ ∀ W : κ → κ → ℝ,
      (∀ σ i, |W σ i - if σ = i then 1 else 0| < ε) →
      (∀ c : κ → ℝ, (∀ σ, ∑ i, W σ i * c i = 0) → c = 0) ∧
      ∀ c : κ → ℝ, (∀ σ, 0 < ∑ i, W σ i * c i) →
        (∀ σ τ, ∑ i, W σ i * c i ≤ M * ∑ i, W τ i * c i) → ∀ i, 0 < c i := by
  intro κ _ _ M
  have hn0 : (0 : ℝ) ≤ (Fintype.card κ : ℝ) := Nat.cast_nonneg _
  have hM1 : 0 < |M| + 1 := by positivity
  refine ⟨1 / (2 * ((Fintype.card κ : ℝ) + 1) * (|M| + 1)), by positivity, fun W hW => ?_⟩
  set n : ℝ := (Fintype.card κ : ℝ) with hn
  set ε := 1 / (2 * (n + 1) * (|M| + 1)) with hε
  have hδ : n * ε * (2 * (|M| + 1)) ≤ 1 := by
    have e : n * ε * (2 * (|M| + 1)) = n / (n + 1) := by
      rw [hε]
      field_simp
    rw [e, div_le_one (by linarith)]
    linarith
  have hε0 : 0 < ε := by positivity
  have hδ0 : 0 ≤ n * ε := by positivity
  have hδh : n * ε ≤ 1 / 2 := by nlinarith [abs_nonneg M]
  rcases isEmpty_or_nonempty κ with hκ | hκ
  · exact ⟨fun c _ => funext fun i => (IsEmpty.false i).elim, fun c _ _ i => (IsEmpty.false i).elim⟩
  have bound : ∀ c : κ → ℝ, ∃ j, ∀ σ,
      |∑ i, W σ i * c i - c σ| ≤ n * ε * |c j| ∧ |c σ| ≤ |c j| := by
    intro c
    obtain ⟨j, -, hj⟩ := Finset.exists_max_image Finset.univ (fun i => |c i|) Finset.univ_nonempty
    exact ⟨j, fun σ => ⟨perturb_bound W ε |c j| hW c (fun i => hj i (Finset.mem_univ i)) σ,
      hj σ (Finset.mem_univ σ)⟩⟩
  constructor
  · intro c hc
    obtain ⟨j, hj⟩ := bound c
    have h1 := (hj j).1
    rw [hc j, zero_sub, abs_neg] at h1
    have hC : |c j| = 0 := by nlinarith [abs_nonneg (c j)]
    funext i
    have h2 := (hj i).2
    rw [hC] at h2
    exact abs_nonpos_iff.mp h2
  · intro c hpos hratio i
    obtain ⟨j, hj⟩ := bound c
    have hC0 : 0 ≤ |c j| := abs_nonneg _
    have h1 : |c j| ≤ ∑ k, W j k * c k + n * ε * |c j| := by
      have e := abs_sub_abs_le_abs_sub (c j) (∑ k, W j k * c k)
      rw [abs_sub_comm (c j), abs_of_pos (hpos j)] at e
      linarith [(hj j).1]
    have h2 : ∑ k, W i k * c k - n * ε * |c j| ≤ c i := by
      linarith [(abs_le.mp (hj i).1).2]
    have h3 := hratio j i
    have hyi := hpos i
    have hMy : M * ∑ k, W i k * c k ≤ |M| * ∑ k, W i k * c k :=
      mul_le_mul_of_nonneg_right (le_abs_self M) hyi.le
    have s1 : n * ε * |c j| * (2 * (|M| + 1)) ≤ |c j| := by
      nlinarith [mul_le_mul_of_nonneg_right hδ hC0]
    have s2 : |c j| * (1 - n * ε) ≤ |M| * ∑ k, W i k * c k := by nlinarith
    have s3 : n * ε * |c j| * (|M| + 1) < (∑ k, W i k * c k) * (|M| + 1) := by
      nlinarith [mul_nonneg hC0 (by linarith : (0 : ℝ) ≤ 1 - 2 * (n * ε))]
    have s4 : n * ε * |c j| < ∑ k, W i k * c k := lt_of_mul_lt_mul_right s3 hM1.le
    linarith

end GlobalTheory.CompanionTheory.DiagDom
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.NearIdentityMatrixPositiveSolution =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.TotallyRealFieldDenseEmbeddings =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.TotallyRealFieldDenseEmbeddings", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.CongSubgroup\nimport Mathlib.NumberTheory.NumberField.Units.Basic\nimport Mathlib.NumberTheory.NumberField.Units.DirichletTheorem\nimport Mathlib.NumberTheory.NumberField.InfiniteAdeleRing\n\n"}
section -- clump:auto
@[expose] public section

open NumberField NumberField.Units NumberField.Units.dirichletUnitTheorem GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Density

theorem denseRange_real_places (F : Type) [Field F] [NumberField F] [IsTotallyReal F] :
    DenseRange fun (x : F) (w : InfinitePlace F) =>
      InfinitePlace.embedding_of_isReal (IsTotallyReal.isReal w) x := by
  let e (w : InfinitePlace F) := InfinitePlace.Completion.isometryEquivRealOfIsReal (IsTotallyReal.isReal w)
  have hd := (DenseRange.piMap fun w ↦ (e w).surjective.denseRange).comp
    (InfiniteAdeleRing.denseRange_algebraMap F) (.piMap fun w ↦ (e w).continuous)
  convert hd using 1
  funext x w
  change _ = e w (algebraMap F (InfiniteAdeleRing F) x w)
  rw [InfiniteAdeleRing.algebraMap_apply]
  exact (InfinitePlace.Completion.extensionEmbeddingOfIsReal_coe (IsTotallyReal.isReal w)
    ((WithAbs.equiv w.val).symm x)).symm

theorem exists_place_eq (F : Type) [Field F] [NumberField F] [IsTotallyReal F] (σ : F →+* ℝ) :
    ∃ w : InfinitePlace F, InfinitePlace.embedding_of_isReal (IsTotallyReal.isReal w) = σ := by
  have hφ : ComplexEmbedding.IsReal (Complex.ofRealHom.comp σ) := by
    rw [ComplexEmbedding.isReal_iff]
    ext x
    simp [ComplexEmbedding.conjugate_coe_eq]
  refine ⟨InfinitePlace.mk (Complex.ofRealHom.comp σ), ?_⟩
  ext x
  have h1 := InfinitePlace.embedding_of_isReal_apply
    (IsTotallyReal.isReal (InfinitePlace.mk (Complex.ofRealHom.comp σ))) x
  rw [InfinitePlace.embedding_mk_eq_of_isReal hφ, RingHom.comp_apply, Complex.ofRealHom_eq_coe] at h1
  exact_mod_cast h1

theorem exists_approx : ∀ (F : Type) [Field F] [NumberField F] [IsTotallyReal F] (y : (F →+* ℝ) → ℝ) (ε : ℝ),
    0 < ε → ∃ x : F, ∀ σ : F →+* ℝ, |σ x - y σ| < ε := by
  intro F _ _ _ y ε hε
  obtain ⟨x, hx⟩ := Metric.denseRange_iff.mp (denseRange_real_places F)
    (fun w => y (InfinitePlace.embedding_of_isReal (IsTotallyReal.isReal w))) ε hε
  refine ⟨x, fun σ => ?_⟩
  obtain ⟨w, hw⟩ := exists_place_eq F σ
  have h := (dist_pi_lt_iff hε).mp hx w
  rw [Real.dist_eq, hw, abs_sub_comm] at h
  exact h

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Density
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.TotallyRealFieldDenseEmbeddings =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsTotallyPositiveBasisPositiveCoords =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsTotallyPositiveBasisPositiveCoords", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\npublic import Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CardRealEmbeddingsEqFinrank\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Defs\npublic import Mathlib.Basic.Real.Basic\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.NearIdentityMatrixPositiveSolution\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.TotallyRealFieldDenseEmbeddings\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.CongSubgroup\n\n"}
section -- clump:auto
@[expose] public section

open NumberField NumberField.Units NumberField.Units.dirichletUnitTheorem GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Gens

theorem map_sum_ratSmul {F κ : Type} [Field F] [Fintype κ] (σ : F →+* ℝ) (q : κ → ℚ) (v : κ → F) :
    σ (∑ i, q i • v i) = ∑ i, σ (v i) * (q i : ℝ) := by

  rw [map_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [Rat.smul_def, map_mul, map_ratCast, mul_comm]

theorem exists_totPos_basis : ∀ (F : Type) [Field F] [NumberField F] [IsTotallyReal F] (M : ℝ),
    ∃ (κ : Type) (_ : Fintype κ) (b : Module.Basis κ ℚ F), (∀ i, TotPos F (b i)) ∧
      ∀ x : F, TotPos F x → (∀ σ τ : F →+* ℝ, σ x ≤ M * τ x) → ∀ i, 0 < b.repr x i := by
  intro F _ _ _ M
  classical
  obtain ⟨hfin, hcard⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.EmbCard.finite_and_card_realEmbeddings F
  letI : Fintype (F →+* ℝ) := Fintype.ofFinite _
  obtain ⟨ε, hε, hW⟩ := _root_.GlobalTheory.CompanionTheory.DiagDom.small_perturbation_injective_pos (κ := F →+* ℝ) M
  have hex : ∀ i : F →+* ℝ, ∃ v : F, ∀ σ : F →+* ℝ,
      |σ v - ((if σ = i then 1 else 0) + ε / 2)| < ε / 2 :=
    fun i => _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Density.exists_approx F (fun σ => (if σ = i then 1 else 0) + ε / 2) (ε / 2) (by positivity)
  choose v hv using hex
  have hclose : ∀ σ i : F →+* ℝ, |σ (v i) - if σ = i then 1 else 0| < ε := by
    intro σ i
    have h := abs_lt.mp (hv i σ)
    rw [abs_lt]
    constructor <;> linarith [h.1, h.2]
  have hpos : ∀ σ i : F →+* ℝ, 0 < σ (v i) := by
    intro σ i
    have h := (abs_lt.mp (hv i σ)).1
    split_ifs at h <;> linarith
  obtain ⟨h1, h2⟩ := hW (fun σ i => σ (v i)) hclose
  have hli : LinearIndependent ℚ v := by
    rw [Fintype.linearIndependent_iff]
    intro q hq i
    have hz : (fun i => (q i : ℝ)) = 0 := h1 _ fun σ => by
      rw [← map_sum_ratSmul σ q v, hq, map_zero]
    have hi : (q i : ℝ) = 0 := congrFun hz i
    exact_mod_cast hi
  have hcardκ : Fintype.card (F →+* ℝ) = Module.finrank ℚ F := by
    rw [← Nat.card_eq_fintype_card]; exact hcard
  haveI : Nonempty (F →+* ℝ) := by
    apply Fintype.card_pos_iff.mp
    rw [hcardκ]
    exact Module.finrank_pos
  let b := basisOfLinearIndependentOfCardEqFinrank hli hcardκ
  have hb : ∀ i, b i = v i := fun i => by
    simp [b, coe_basisOfLinearIndependentOfCardEqFinrank]
  refine ⟨F →+* ℝ, inferInstance, b, fun i σ => ?_, fun x hx hM i => ?_⟩
  · rw [hb]; exact hpos σ i
  · have hrep : ∀ σ : F →+* ℝ, σ x = ∑ i, σ (v i) * ((b.repr x i : ℚ) : ℝ) := by
      intro σ
      rw [← map_sum_ratSmul σ (fun i => b.repr x i) v]
      congr 1
      conv_lhs => rw [← b.sum_repr x]
      exact Finset.sum_congr rfl fun j _ => by rw [hb]
    have hc := h2 (fun i => ((b.repr x i : ℚ) : ℝ))
      (fun σ => by rw [← hrep σ]; exact hx σ)
      (fun σ τ => by rw [← hrep σ, ← hrep τ]; exact hM σ τ) i
    exact_mod_cast hc

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Gens
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsTotallyPositiveBasisPositiveCoords =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteUnitsBoundedEmbeddingRatio =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteUnitsBoundedEmbeddingRatio", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.PartialZetaTwistedEntireDifference\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.CongSubgroup\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField NumberField.Units NumberField.Units.dirichletUnitTheorem GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani

theorem embedding_unit_le_abs {F : Type} [Field F] [NumberField F] [IsTotallyReal F] {R : ℝ} {u : (𝓞 F)ˣ}
    (hu : TotPos F ((u : 𝓞 F) : F)) (hR : ∀ σ τ : F →+* ℝ, σ ((u : 𝓞 F) : F) ≤ R * τ ((u : 𝓞 F) : F))
    (σ : F →+* ℝ) : σ ((u : 𝓞 F) : F) ≤ |R| := by
  classical
  haveI : Finite (F →+* ℝ) := Finite.of_equiv _ (realEmbeddingsEquiv F).symm
  haveI : Fintype (F →+* ℝ) := Fintype.ofFinite _
  have hprod : ∏ τ : F →+* ℝ, τ ((u : 𝓞 F) : F) = 1 := by
    rw [prod_real_embeddings_eq_absNorm (u : 𝓞 F) hu, Ideal.span_singleton_eq_top.2 u.isUnit, Ideal.absNorm_top]
    simp
  obtain ⟨τ, hτ⟩ : ∃ τ : F →+* ℝ, τ ((u : 𝓞 F) : F) ≤ 1 := by
    by_contra hne
    push_neg at hne
    have hlt : ∏ _τ : F →+* ℝ, (1 : ℝ) < ∏ τ : F →+* ℝ, τ ((u : 𝓞 F) : F) :=
      Finset.prod_lt_prod_of_nonempty₀ (fun _ _ => one_pos) (fun τ _ => hne τ) ⟨σ, Finset.mem_univ σ⟩
    rw [hprod] at hlt
    simp at hlt
  calc σ ((u : 𝓞 F) : F) ≤ R * τ ((u : 𝓞 F) : F) := hR σ τ
    _ ≤ |R| * τ ((u : 𝓞 F) : F) := mul_le_mul_of_nonneg_right (le_abs_self R) (hu τ).le
    _ ≤ |R| * 1 := mul_le_mul_of_nonneg_left hτ (abs_nonneg R)
    _ = |R| := mul_one _

theorem finite_totPos_units_bounded_ratio : ∀ (F : Type) [Field F] [NumberField F] [IsTotallyReal F] (R : ℝ),
    {u : (𝓞 F)ˣ | TotPos F ((u : 𝓞 F) : F) ∧ ∀ σ τ : F →+* ℝ, σ ((u : 𝓞 F) : F) ≤ R * τ ((u : 𝓞 F) : F)}.Finite := by
  intro F _ _ _ R
  have hinj : Function.Injective (fun u : (𝓞 F)ˣ => ((u : 𝓞 F) : F)) := fun a b h =>
    Units.ext (RingOfIntegers.ext h)
  refine ((Embeddings.finite_of_norm_le F ℂ |R|).preimage hinj.injOn).subset ?_
  rintro u ⟨hu, hR⟩
  refine ⟨(u : 𝓞 F).isIntegral_coe, fun φ => ?_⟩
  obtain ⟨σ, rfl⟩ := (realEmbeddingsEquiv F).surjective φ
  have h := embedding_unit_le_abs hu hR σ
  change ‖((σ ((u : 𝓞 F) : F) : ℝ) : ℂ)‖ ≤ |R|
  rw [Complex.norm_real, Real.norm_of_nonneg (hu σ).le]
  exact h

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteUnitsBoundedEmbeddingRatio =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsUnitPowerInCongruence =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsUnitPowerInCongruence", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.CongSubgroup\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField NumberField.Units NumberField.Units.dirichletUnitTheorem GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones

theorem exists_pow_mem_congUnits : ∀ (F : Type) [Field F] [NumberField F] (𝔣 : Ideal (𝓞 F)), 𝔣 ≠ ⊥ →
    ∃ e : ℕ, 0 < e ∧ ∀ u : (𝓞 F)ˣ, u ^ e ∈ congUnits 𝔣 := by
  intro F _ _ 𝔣 h𝔣
  haveI : Finite (𝓞 F ⧸ 𝔣) := Ideal.finiteQuotientOfFreeOfNeBot 𝔣 h𝔣
  have hpos : 0 < Nat.card (𝓞 F ⧸ 𝔣)ˣ := Nat.card_pos
  refine ⟨2 * Nat.card (𝓞 F ⧸ 𝔣)ˣ, by omega, fun u => ⟨?_, fun σ => ?_⟩⟩
  · have h1 : (Units.map (Ideal.Quotient.mk 𝔣 : 𝓞 F →* 𝓞 F ⧸ 𝔣) u) ^ (2 * Nat.card (𝓞 F ⧸ 𝔣)ˣ) = 1 := by
      rw [mul_comm, pow_mul, pow_card_eq_one', one_pow]
    have h2 : Ideal.Quotient.mk 𝔣 ((u ^ (2 * Nat.card (𝓞 F ⧸ 𝔣)ˣ) : (𝓞 F)ˣ) : 𝓞 F) = Ideal.Quotient.mk 𝔣 1 := by
      have h3 := congrArg (fun z : (𝓞 F ⧸ 𝔣)ˣ => (z : 𝓞 F ⧸ 𝔣)) h1
      simpa using h3
    exact Ideal.Quotient.eq.mp h2
  · have hne : σ (((u : 𝓞 F)) : F) ≠ 0 := by
      rw [Ne, map_eq_zero]
      simp
    have h : (((u ^ (2 * Nat.card (𝓞 F ⧸ 𝔣)ˣ) : (𝓞 F)ˣ) : 𝓞 F) : F) = (((u : 𝓞 F)) : F) ^ (2 * Nat.card (𝓞 F ⧸ 𝔣)ˣ) := by
      simp
    rw [h, map_pow, pow_mul]
    exact pow_pos (by positivity) _

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsUnitPowerInCongruence =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.UnitLogLatticeBoundedTranslate =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.UnitLogLatticeBoundedTranslate", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.Units.DirichletTheorem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.CongSubgroup\n\n"}
section -- clump:auto
@[expose] public section

open NumberField NumberField.Units NumberField.Units.dirichletUnitTheorem GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.UnitLattice

theorem multiples_relativelyDense (F : Type) [Field F] [NumberField F] (e : ℕ) (he : 0 < e) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ y : logSpace F, ∃ u : (𝓞 F)ˣ,
      ∀ w, |y w + (e : ℝ) * logEmbedding F (Additive.ofMul u) w| ≤ C := by
  classical
  let b := (basisUnitLattice F).ofZLatticeBasis ℝ (unitLattice F)
  let R : ℝ := ∑ i, ‖b i‖
  have hR0 : 0 ≤ R := Finset.sum_nonneg fun _ _ => norm_nonneg _
  have he0 : (0 : ℝ) < e := by exact_mod_cast he
  refine ⟨(e : ℝ) * R, by positivity, fun y => ?_⟩
  let v : logSpace F := fun w => -(y w) / (e : ℝ)
  have hfl : ((ZSpan.floor b v : _) : logSpace F) ∈ unitLattice F := by
    rw [← (basisUnitLattice F).ofZLatticeBasis_span ℝ (unitLattice F)]
    exact (ZSpan.floor b v).2
  obtain ⟨x, -, hx⟩ := Submodule.mem_map.mp hfl
  refine ⟨Additive.toMul x, fun w => ?_⟩
  have hfr : ‖v - (ZSpan.floor b v : logSpace F)‖ ≤ R := by
    simpa [ZSpan.fract_apply] using ZSpan.norm_fract_le b v
  have h1 := norm_le_pi_norm (v - (ZSpan.floor b v : logSpace F)) w
  rw [← hx] at h1 hfr
  have h2 : (logEmbedding F).toIntLinearMap x w
      = logEmbedding F (Additive.ofMul (Additive.toMul x)) w := rfl
  rw [Pi.sub_apply, h2, Real.norm_eq_abs] at h1
  have h3 : y w + (e : ℝ) * logEmbedding F (Additive.ofMul (Additive.toMul x)) w
      = -((e : ℝ) * (v w - logEmbedding F (Additive.ofMul (Additive.toMul x)) w)) := by
    simp only [v]; field_simp; ring
  rw [h3, abs_neg, abs_mul, abs_of_pos he0]
  exact mul_le_mul_of_nonneg_left (h1.trans hfr) he0.le

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.UnitLattice
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.UnitLogLatticeBoundedTranslate =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.PlaceApply =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.PlaceApply", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsUnitPowerInCongruence\npublic import Mathlib.NumberTheory.NumberField.Units.DirichletTheorem\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.UnitLogLatticeBoundedTranslate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.CongSubgroup\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField NumberField.Units NumberField.Units.dirichletUnitTheorem GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Balance

theorem abs_le_of_sum_eq_zero {F : Type} [Field F] [NumberField F] (f : InfinitePlace F → ℝ) (C : ℝ) (hC : 0 ≤ C)
    (hs : ∑ w, f w = 0) (hf : ∀ w, w ≠ w₀ → |f w| ≤ C) (w : InfinitePlace F) :
    |f w| ≤ (Fintype.card (InfinitePlace F) : ℝ) * C := by
  classical
  have hcard : (1 : ℝ) ≤ Fintype.card (InfinitePlace F) := by
    exact_mod_cast Fintype.card_pos_iff.mpr ⟨w⟩
  by_cases hw : w = w₀
  · subst hw
    have h1 : f w₀ = -∑ v ∈ Finset.univ.erase w₀, f v := by
      rw [← Finset.add_sum_erase _ _ (Finset.mem_univ w₀)] at hs
      linarith
    rw [h1, abs_neg]
    calc |∑ v ∈ Finset.univ.erase w₀, f v| ≤ ∑ v ∈ Finset.univ.erase w₀, |f v| :=
          Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ _v ∈ Finset.univ.erase w₀, C :=
          Finset.sum_le_sum fun v hv => hf v (Finset.ne_of_mem_erase hv)
      _ = ((Finset.univ.erase w₀).card : ℝ) * C := by rw [Finset.sum_const, nsmul_eq_mul]
      _ ≤ (Fintype.card (InfinitePlace F) : ℝ) * C := by
          refine mul_le_mul_of_nonneg_right ?_ hC
          exact_mod_cast (Finset.card_erase_le).trans (Finset.card_le_univ _)
  · calc |f w| ≤ C := hf w hw
      _ = 1 * C := (one_mul C).symm
      _ ≤ (Fintype.card (InfinitePlace F) : ℝ) * C := mul_le_mul_of_nonneg_right hcard hC

theorem place_apply {F : Type} [Field F] [NumberField F] (σ : F →+* ℝ) (y : F) :
    (InfinitePlace.mk (Complex.ofRealHom.comp σ)) y = |σ y| := by
  rw [InfinitePlace.apply]
  simp

theorem balance : ∀ (F : Type) [Field F] [NumberField F] [IsTotallyReal F] (𝔣 : Ideal (𝓞 F)), 𝔣 ≠ ⊥ →
    ∃ M : ℝ, ∀ x : F, TotPos F x → ∃ u : (𝓞 F)ˣ, u ∈ congUnits 𝔣 ∧
      ∀ σ τ : F →+* ℝ, σ (((u : 𝓞 F) : F) * x) ≤ M * τ (((u : 𝓞 F) : F) * x) := by
  intro F _ _ _ 𝔣 h𝔣
  obtain ⟨e, he, hpow⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones.exists_pow_mem_congUnits F 𝔣 h𝔣
  obtain ⟨C, hC, hbound⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.UnitLattice.multiples_relativelyDense F e he
  obtain ⟨n, hn⟩ : ∃ n : ℝ, n = (Fintype.card (InfinitePlace F) : ℝ) := ⟨_, rfl⟩
  refine ⟨Real.exp (2 * (n * C)), fun x hx => ?_⟩
  have hx0 : x ≠ 0 := by
    intro h0
    have h := hx (InfinitePlace.embedding_of_isReal (IsTotallyReal.isReal (w₀ : InfinitePlace F)))
    rw [h0, map_zero] at h
    exact lt_irrefl _ h
  have hwx : ∀ w : InfinitePlace F, 0 < w x := fun w => InfinitePlace.pos_iff.mpr hx0
  have hn0 : n ≠ 0 := by
    rw [hn]
    exact_mod_cast (Fintype.card_pos_iff.mpr ⟨(w₀ : InfinitePlace F)⟩).ne'
  obtain ⟨s, hs⟩ : ∃ s : ℝ, s = ∑ w : InfinitePlace F, Real.log (w x) := ⟨_, rfl⟩
  obtain ⟨u, hu⟩ := hbound (fun w => Real.log (w.1 x) - s / n)
  have hv := hpow u
  refine ⟨u ^ e, hv, fun σ τ => ?_⟩
  obtain ⟨-, hvpos⟩ := hv
  have hpowc : (((u ^ e : (𝓞 F)ˣ) : 𝓞 F) : F) = (algebraMap (𝓞 F) F (u : 𝓞 F)) ^ e := by
    rw [Units.val_pow_eq_pow_val]
    exact map_pow (algebraMap (𝓞 F) F) _ _
  have hξpos : ∀ ρ : F →+* ℝ, 0 < ρ ((((u ^ e : (𝓞 F)ˣ) : 𝓞 F) : F) * x) := by
    intro ρ
    rw [map_mul]
    exact mul_pos (hvpos ρ) (hx ρ)
  generalize hξ : (((u ^ e : (𝓞 F)ˣ) : 𝓞 F) : F) * x = ξ at hξpos ⊢
  have hlog : ∀ w : InfinitePlace F,
      Real.log (w ξ) = e * Real.log (w (algebraMap (𝓞 F) F (u : 𝓞 F))) + Real.log (w x) := by
    intro w
    have hwu : w (algebraMap (𝓞 F) F (u : 𝓞 F)) ≠ 0 :=
      (InfinitePlace.pos_iff.mpr (NumberField.Units.coe_ne_zero u)).ne'
    rw [← hξ, hpowc, map_mul, map_pow, Real.log_mul (pow_ne_zero _ hwu) (hwx w).ne', Real.log_pow]
  set f : InfinitePlace F → ℝ := fun w => Real.log (w ξ) - s / n with hf
  have hsumu : ∑ w : InfinitePlace F, Real.log (w (algebraMap (𝓞 F) F (u : 𝓞 F))) = 0 := by
    have h := NumberField.Units.sum_mult_mul_log u
    simpa only [IsTotallyReal.mult_eq, Nat.cast_one, one_mul] using h
  have hsum : ∑ w, f w = 0 := by
    have h1 : ∀ w, f w = (e : ℝ) * Real.log (w (algebraMap (𝓞 F) F (u : 𝓞 F))) + Real.log (w x) - s / n :=
      fun w => by
        show Real.log (w ξ) - s / n = _
        rw [hlog w]
    rw [Finset.sum_congr rfl (fun w _ => h1 w), Finset.sum_sub_distrib, Finset.sum_add_distrib,
      ← Finset.mul_sum, hsumu, ← hs, Finset.sum_const, Finset.card_univ, nsmul_eq_mul, ← hn]
    have h2 : n * (s / n) = s := by field_simp
    rw [h2]
    ring
  have hfC : ∀ w, w ≠ w₀ → |f w| ≤ C := by
    intro w hw
    have h := hu ⟨w, hw⟩
    simp only [logEmbedding_component, IsTotallyReal.mult_eq, Nat.cast_one, one_mul] at h
    have h2 : f w = Real.log (w x) - s / n + e * Real.log (w (algebraMap (𝓞 F) F (u : 𝓞 F))) := by
      show Real.log (w ξ) - s / n = _
      rw [hlog w]
      ring
    rw [h2]
    exact h
  have hbd : ∀ w, |f w| ≤ n * C := fun w => by
    rw [hn]
    exact GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Balance.abs_le_of_sum_eq_zero f C hC hsum hfC w
  have hρ : ∀ ρ : F →+* ℝ, Real.log (ρ ξ) = f (InfinitePlace.mk (Complex.ofRealHom.comp ρ)) + s / n := by
    intro ρ
    rw [hf]
    simp only []
    rw [GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Balance.place_apply, abs_of_pos (hξpos ρ)]
    ring
  have key : Real.log (σ ξ) ≤ 2 * (n * C) + Real.log (τ ξ) := by
    rw [hρ σ, hρ τ]
    have h1 := abs_le.mp (hbd (InfinitePlace.mk (Complex.ofRealHom.comp σ)))
    have h2 := abs_le.mp (hbd (InfinitePlace.mk (Complex.ofRealHom.comp τ)))
    linarith [h1.2, h2.1]
  calc σ ξ = Real.exp (Real.log (σ ξ)) := (Real.exp_log (hξpos σ)).symm
    _ ≤ Real.exp (2 * (n * C) + Real.log (τ ξ)) := Real.exp_le_exp.mpr key
    _ = Real.exp (2 * (n * C)) * τ ξ := by rw [Real.exp_add, Real.exp_log (hξpos τ)]

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Balance
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.PlaceApply =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ShintaniConeDecomposition =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.ShintaniConeDecomposition", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CongSubgroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField NumberField.Units NumberField.Units.dirichletUnitTheorem GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones

theorem sum_equivFin_symm {F M : Type} [AddCommMonoid M] (s : Finset F) (f : F → M) :
    ∑ i : Fin s.card, f (s.equivFin.symm i : F) = ∑ y ∈ s, f y := by
  rw [← Finset.sum_coe_sort s f]
  exact Equiv.sum_comp s.equivFin.symm (fun y : s => f (y : F))

theorem openCone_equivFin {F : Type} [Field F] [CharZero F] (s : Finset F) :
    openCone (fun i : Fin s.card => (s.equivFin.symm i : F)) = coneOn s := by
  classical
  ext x
  constructor
  · rintro ⟨t, ht, rfl⟩
    refine ⟨fun y => if h : y ∈ s then t (s.equivFin ⟨y, h⟩) else 1, ?_, ?_⟩
    · intro y hy
      simp only [dif_pos hy]
      exact ht _
    · rw [← sum_equivFin_symm s (fun y => (if h : y ∈ s then t (s.equivFin ⟨y, h⟩) else 1 : ℚ) • y)]
      refine Finset.sum_congr rfl fun i _ => ?_
      have hm : (s.equivFin.symm i : F) ∈ s := (s.equivFin.symm i).2
      simp only [dif_pos hm, Subtype.coe_eta, Equiv.apply_symm_apply]
      rw [Rat.smul_def]
  · rintro ⟨t, ht, rfl⟩
    refine ⟨fun i => t (s.equivFin.symm i : F), fun i => ht _ (s.equivFin.symm i).2, ?_⟩
    rw [← sum_equivFin_symm s (fun y => t y • y)]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [Rat.smul_def]

theorem tile_family {F : Type} [Field F] [NumberField F] (P : Set F) (Q : Set F → Prop) (C : Set F) (h : Tile P Q C) :
    (0 : F) ∉ C →
    ∃ (ι : Type) (_ : Fintype ι) (r : ι → ℕ) (v : ∀ c, Fin (r c) → F), (∀ c, 0 < r c) ∧
      (∀ c, LinearIndependent ℚ (v c)) ∧ (∀ c i, v c i ∈ P) ∧ (∀ c, openCone (v c) ⊆ C) ∧
      ∀ x ∈ C, ∃! c, x ∈ openCone (v c) := by
  induction h with
  | empty =>
    intro _
    exact ⟨Empty, inferInstance, fun c => c.elim, fun c => c.elim, fun c => c.elim, fun c => c.elim,
      fun c => c.elim, fun c => c.elim, fun x hx => hx.elim⟩
  | cone s hli hP hQ =>
    intro h0
    have hcone := openCone_equivFin s
    refine ⟨Unit, inferInstance, fun _ => s.card, fun _ i => (s.equivFin.symm i : F), ?_, ?_, ?_, ?_, ?_⟩
    · intro _
      refine Finset.card_pos.mpr (Finset.nonempty_iff_ne_empty.mpr ?_)
      rintro rfl
      exact h0 ⟨fun _ => 0, by simp, by simp⟩
    · intro _
      have hinj : Function.Injective (fun i : Fin s.card => (⟨(s.equivFin.symm i : F), (s.equivFin.symm i).2⟩ : (s : Set F))) := by
        intro i j hij
        exact s.equivFin.symm.injective (Subtype.ext (congrArg Subtype.val hij))
      exact LinearIndependent.comp hli _ hinj
    · intro _ i
      exact hP (s.equivFin.symm i).2
    · intro _
      exact hcone.le
    · intro x hx
      exact ⟨(), hcone.ge hx, fun _ _ => rfl⟩
  | @union A B _ _ hAB ihA ihB =>
    intro h0
    obtain ⟨ι₁, f₁, r₁, v₁, hr₁, hl₁, hp₁, hs₁, hu₁⟩ := ihA (fun h => h0 (Or.inl h))
    obtain ⟨ι₂, f₂, r₂, v₂, hr₂, hl₂, hp₂, hs₂, hu₂⟩ := ihB (fun h => h0 (Or.inr h))
    refine ⟨ι₁ ⊕ ι₂, inferInstance, Sum.elim r₁ r₂,
      fun c => match c with
        | Sum.inl a => v₁ a
        | Sum.inr b => v₂ b, ?_, ?_, ?_, ?_, ?_⟩
    · rintro (a | b)
      · exact hr₁ a
      · exact hr₂ b
    · rintro (a | b)
      · exact hl₁ a
      · exact hl₂ b
    · rintro (a | b) i
      · exact hp₁ a i
      · exact hp₂ b i
    · rintro (a | b)
      · exact (hs₁ a).trans Set.subset_union_left
      · exact (hs₂ b).trans Set.subset_union_right
    · rintro x (hx | hx)
      · obtain ⟨a, ha, hu⟩ := hu₁ x hx
        refine ⟨Sum.inl a, ha, ?_⟩
        rintro (a' | b') h'
        · exact congrArg Sum.inl (hu a' h')
        · exact (Set.disjoint_left.mp hAB hx (hs₂ b' h')).elim
      · obtain ⟨b, hb, hu⟩ := hu₂ x hx
        refine ⟨Sum.inr b, hb, ?_⟩
        rintro (a' | b') h'
        · exact (Set.disjoint_left.mp hAB (hs₁ a' h') hx).elim
        · exact congrArg Sum.inr (hu b' h')

theorem tile_family_closed : ∀ {F : Type} [Field F] [NumberField F] (P : Set F) (Q : Set F → Prop) (C : Set F), Tile P Q C → (0 : F) ∉ C →
    ∃ (ι : Type) (_ : Fintype ι) (r : ι → ℕ) (v : ∀ c, Fin (r c) → F), (∀ c, 0 < r c) ∧
      (∀ c, LinearIndependent ℚ (v c)) ∧ (∀ c i, v c i ∈ P) ∧ (∀ c, openCone (v c) ⊆ C) ∧
      ∀ x ∈ C, ∃! c, x ∈ openCone (v c) :=
  fun P Q C h => tile_family P Q C h

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ShintaniConeDecomposition =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ComboNotMemSpan =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.ComboNotMemSpan", "h": "module\n\npublic import Mathlib.LinearAlgebra.LinearIndependent.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.CongSubgroup\npublic import Mathlib.LinearAlgebra.LinearIndependent.Lemmas\nimport Mathlib.NumberTheory.NumberField.Units.Basic\nimport Mathlib.NumberTheory.NumberField.Units.DirichletTheorem\n\n"}
section -- clump:auto
@[expose] public section

open NumberField NumberField.Units NumberField.Units.dirichletUnitTheorem GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones.StellarLI

theorem combo_notMem_span {V : Type} [AddCommGroup V] [Module ℚ V] {s : Set V} {p q : V} {a b : ℚ}
    (ha : a ≠ 0) (hp : p ∉ Submodule.span ℚ s) (hq : q ∈ Submodule.span ℚ s) :
    a • p + b • q ∉ Submodule.span ℚ s := by
  intro h
  apply hp
  have h1 : a • p ∈ Submodule.span ℚ s := by
    have := Submodule.sub_mem _ h (Submodule.smul_mem _ b hq)
    simpa using this
  have h2 := Submodule.smul_mem _ a⁻¹ h1
  rwa [smul_smul, inv_mul_cancel₀ ha, one_smul] at h2

theorem main : ∀ {V : Type} [AddCommGroup V] [Module ℚ V] [DecidableEq V] (p q : V) (r : Finset V) (a b : ℚ), 0 < a → 0 < b → p ≠ q → p ∉ r → q ∉ r →
  LinearIndepOn ℚ id ((insert p (insert q r) : Finset V) : Set V) →
  (a • p + b • q) ∉ r ∧ (a • p + b • q) ≠ p ∧ (a • p + b • q) ≠ q ∧
  LinearIndepOn ℚ id ((insert (a • p + b • q) (insert q r) : Finset V) : Set V) ∧
  LinearIndepOn ℚ id ((insert p (insert (a • p + b • q) r) : Finset V) : Set V) ∧
  LinearIndepOn ℚ id ((insert (a • p + b • q) r : Finset V) : Set V) := by
  intro V _ _ _ p q r a b ha hb hpq hpr hqr hli
  simp only [Finset.coe_insert] at hli ⊢
  have hp' : p ∉ insert q (r : Set V) := by simp [hpq, hpr]
  have hq' : q ∉ (r : Set V) := by simpa using hqr
  have hq'' : q ∉ insert p (r : Set V) := by simp [hpq.symm, hqr]
  obtain ⟨hli1, hpn⟩ := (linearIndepOn_id_insert hp').mp hli
  obtain ⟨hliR, -⟩ := (linearIndepOn_id_insert hq').mp hli1
  have hli' : LinearIndepOn ℚ id (insert q (insert p (r : Set V))) := by rwa [Set.insert_comm]
  obtain ⟨hli2, hqn2⟩ := (linearIndepOn_id_insert hq'').mp hli'
  have hw1 : a • p + b • q ∉ Submodule.span ℚ (insert q (r : Set V)) :=
    combo_notMem_span ha.ne' hpn (Submodule.subset_span (Set.mem_insert q _))
  have hw2 : a • p + b • q ∉ Submodule.span ℚ (insert p (r : Set V)) := by
    rw [add_comm]
    exact combo_notMem_span hb.ne' hqn2 (Submodule.subset_span (Set.mem_insert p _))
  have hw3 : a • p + b • q ∉ Submodule.span ℚ (r : Set V) := fun h =>
    hw1 (Submodule.span_mono (Set.subset_insert q _) h)
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro h
    exact hw3 (Submodule.subset_span (Finset.mem_coe.mpr h))
  · intro h
    exact hw2 (by rw [h]; exact Submodule.subset_span (Set.mem_insert p _))
  · intro h
    exact hw1 (by rw [h]; exact Submodule.subset_span (Set.mem_insert q _))
  · exact (linearIndepOn_id_insert fun h => hw1 (Submodule.subset_span h)).mpr ⟨hli1, hw1⟩
  · rw [Set.insert_comm]
    exact (linearIndepOn_id_insert fun h => hw2 (Submodule.subset_span h)).mpr ⟨hli2, hw2⟩
  · exact (linearIndepOn_id_insert fun h => hw3 (Submodule.subset_span h)).mpr ⟨hliR, hw3⟩

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones.StellarLI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ComboNotMemSpan =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.SimplicialConeTilesSign =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.SimplicialConeTilesSign", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CongSubgroup\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ComboNotMemSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField NumberField.Units NumberField.Units.dirichletUnitTheorem GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones.TileSign

variable {V : Type} [AddCommGroup V] [Module ℚ V]

theorem signConst_of_nonneg (l : V →ₗ[ℚ] ℚ) (s : Finset V) (h : ∀ v ∈ s, 0 ≤ l v) : SignConst l (coneOn s) := by
  unfold SignConst
  by_cases hz : ∀ v ∈ s, l v = 0
  · refine Or.inl ?_
    intro x hx
    simp only [coneOn, Set.mem_setOf_eq] at hx
    obtain ⟨t, -, rfl⟩ := hx

    rw [map_sum]
    exact Finset.sum_eq_zero (fun i hi => by rw [map_smul, hz i hi, smul_zero])
  · refine Or.inr (Or.inl ?_)
    push_neg at hz
    obtain ⟨w, hw, hlw⟩ := hz
    intro x hx
    simp only [coneOn, Set.mem_setOf_eq] at hx
    obtain ⟨t, ht, rfl⟩ := hx

    rw [map_sum]
    have hnn : ∀ i ∈ s, 0 ≤ l (t i • i) := fun i hi => by
      rw [map_smul, smul_eq_mul]; exact mul_nonneg (ht i hi).le (h i hi)
    have hpos : 0 < l (t w • w) := by
      rw [map_smul, smul_eq_mul]; exact mul_pos (ht w hw) (lt_of_le_of_ne (h w hw) (Ne.symm hlw))
    exact lt_of_lt_of_le hpos (Finset.single_le_sum hnn hw)

theorem signConst_of_nonpos (l : V →ₗ[ℚ] ℚ) (s : Finset V) (h : ∀ v ∈ s, l v ≤ 0) : SignConst l (coneOn s) := by
  unfold SignConst
  by_cases hz : ∀ v ∈ s, l v = 0
  · refine Or.inl ?_
    intro x hx
    simp only [coneOn, Set.mem_setOf_eq] at hx
    obtain ⟨t, -, rfl⟩ := hx

    rw [map_sum]
    exact Finset.sum_eq_zero (fun i hi => by rw [map_smul, hz i hi, smul_zero])
  · refine Or.inr (Or.inr ?_)
    push_neg at hz
    obtain ⟨w, hw, hlw⟩ := hz
    intro x hx
    simp only [coneOn, Set.mem_setOf_eq] at hx
    obtain ⟨t, ht, rfl⟩ := hx

    rw [map_sum]
    have hnp : ∀ i ∈ s, 0 ≤ -l (t i • i) := fun i hi => by
      rw [map_smul, smul_eq_mul]; nlinarith [(ht i hi).le, h i hi]
    have hneg : l (t w • w) < 0 := by
      have hlt : l w < 0 := lt_of_le_of_ne (h w hw) hlw
      rw [map_smul, smul_eq_mul]; nlinarith [ht w hw]
    have key := Finset.single_le_sum hnp hw
    simp only [Finset.sum_neg_distrib] at key
    linarith

private theorem sum_insert_insert_ite_ite_smul [DecidableEq V] {p q : V} {X : Finset V} (hp : p ∉ insert q X) (hq : q ∉ X)
    (α β : ℚ) (t : V → ℚ) :
    ∑ i ∈ insert p (insert q X), (if i = p then α else if i = q then β else t i) • i
      = α • p + (β • q + ∑ i ∈ X, t i • i) := by
  have hqp : q ≠ p := fun e => hp (by rw [← e]; exact Finset.mem_insert_self q X)
  have hpX : p ∉ X := fun e => hp (Finset.mem_insert_of_mem e)
  have hX : ∑ i ∈ X, (if i = p then α else if i = q then β else t i) • i = ∑ i ∈ X, t i • i :=
    Finset.sum_congr rfl (fun j hj => by
      rw [if_neg (fun e => hpX (by rw [← e]; exact hj)), if_neg (fun e => hq (by rw [← e]; exact hj))])
  rw [Finset.sum_insert hp, Finset.sum_insert hq, if_pos rfl, if_neg hqp, if_pos rfl, hX]

private theorem sum_insert_ite_smul [DecidableEq V] {p : V} {X : Finset V} (hp : p ∉ X) (α : ℚ) (t : V → ℚ) :
    ∑ i ∈ insert p X, (if i = p then α else t i) • i = α • p + ∑ i ∈ X, t i • i := by
  have hX : ∑ i ∈ X, (if i = p then α else t i) • i = ∑ i ∈ X, t i • i :=
    Finset.sum_congr rfl (fun j hj => by rw [if_neg (fun e => hp (by rw [← e]; exact hj))])
  rw [Finset.sum_insert hp, if_pos rfl, hX]

private theorem pos_ite_ite_of_pos_insert_insert [DecidableEq V] {p q : V} {X : Finset V} {α β : ℚ} {t : V → ℚ}
    (hα : 0 < α) (hβ : 0 < β) (ht : ∀ j ∈ X, 0 < t j) :
    ∀ i ∈ insert p (insert q X), 0 < (if i = p then α else if i = q then β else t i) := by
  intro i hi
  split_ifs with h1 h2
  · exact hα
  · exact hβ
  · exact ht i ((Finset.mem_insert.mp ((Finset.mem_insert.mp hi).resolve_left h1)).resolve_left h2)

private theorem pos_ite_of_pos_insert [DecidableEq V] {p : V} {X : Finset V} {α : ℚ} {t : V → ℚ}
    (hα : 0 < α) (ht : ∀ j ∈ X, 0 < t j) :
    ∀ i ∈ insert p X, 0 < (if i = p then α else t i) := by
  intro i hi
  split_ifs with h1
  · exact hα
  · exact ht i ((Finset.mem_insert.mp hi).resolve_left h1)

private theorem eq_of_sum_smul_eq_of_linearIndepOn {s : Finset V} (hs : LinearIndepOn ℚ id (s : Set V)) (T T' : V → ℚ)
    (h : ∑ i ∈ s, T i • i = ∑ i ∈ s, T' i • i) : ∀ i ∈ s, T i = T' i := by
  have h0 : ∑ i ∈ s, (T i - T' i) • id i = 0 := by
    simp only [id, sub_smul, Finset.sum_sub_distrib, h, sub_self]
  intro i hi
  exact sub_eq_zero.mp (linearIndepOn_finset_iff.mp hs (fun i => T i - T' i) h0 i hi)

private theorem coeff_eq_of_linearIndepOn_insert_insert [DecidableEq V] {p q : V} {X : Finset V} (hp : p ∉ insert q X) (hq : q ∉ X)
    (hli : LinearIndepOn ℚ id ((insert p (insert q X) : Finset V) : Set V)) {α β α' β' : ℚ} {t t' : V → ℚ}
    (h : α • p + (β • q + ∑ i ∈ X, t i • i) = α' • p + (β' • q + ∑ i ∈ X, t' i • i)) :
    α = α' ∧ β = β' := by
  have hqp : q ≠ p := fun e => hp (by rw [← e]; exact Finset.mem_insert_self q X)
  rw [← sum_insert_insert_ite_ite_smul hp hq α β t, ← sum_insert_insert_ite_ite_smul hp hq α' β' t'] at h
  have hc := eq_of_sum_smul_eq_of_linearIndepOn hli _ _ h
  have h1 := hc p (Finset.mem_insert_self _ _)
  have h2 := hc q (Finset.mem_insert_of_mem (Finset.mem_insert_self _ _))
  exact ⟨by simpa using h1, by simpa [hqp] using h2⟩

private theorem exists_coords_lt_of_mem_coneOn_insert_u_c [DecidableEq V] {u w c : V} {r : Finset V} {a b : ℚ} (hc : c = a • u + b • w)
    (ha : 0 < a) (hb : 0 < b) (hu : u ∉ insert c r) (hcr : c ∉ r) {x : V}
    (hx : x ∈ coneOn (insert u (insert c r))) :
    ∃ α β : ℚ, ∃ t : V → ℚ, 0 < α ∧ 0 < β ∧ (∀ j ∈ r, 0 < t j) ∧
      x = α • u + (β • w + ∑ j ∈ r, t j • j) ∧ β * a < α * b := by
  simp only [coneOn, Set.mem_setOf_eq] at hx
  obtain ⟨t, ht, rfl⟩ := hx
  have htu : 0 < t u := ht u (Finset.mem_insert_self _ _)
  have htc : 0 < t c := ht c (Finset.mem_insert_of_mem (Finset.mem_insert_self _ _))
  refine ⟨t u + t c * a, t c * b, t, add_pos htu (mul_pos htc ha), mul_pos htc hb,
    fun j hj => ht j (Finset.mem_insert_of_mem (Finset.mem_insert_of_mem hj)), ?_,
    by nlinarith [mul_pos htu hb]⟩
  rw [Finset.sum_insert hu, Finset.sum_insert hcr, hc]
  module

private theorem exists_coords_lt_swap_of_mem_coneOn_c_w [DecidableEq V] {u w c : V} {r : Finset V} {a b : ℚ} (hc : c = a • u + b • w)
    (ha : 0 < a) (hb : 0 < b) (hcw : c ∉ insert w r) (hwr : w ∉ r) {x : V}
    (hx : x ∈ coneOn (insert c (insert w r))) :
    ∃ α β : ℚ, ∃ t : V → ℚ, 0 < α ∧ 0 < β ∧ (∀ j ∈ r, 0 < t j) ∧
      x = α • u + (β • w + ∑ j ∈ r, t j • j) ∧ α * b < β * a := by
  simp only [coneOn, Set.mem_setOf_eq] at hx
  obtain ⟨t, ht, rfl⟩ := hx
  have htc : 0 < t c := ht c (Finset.mem_insert_self _ _)
  have htw : 0 < t w := ht w (Finset.mem_insert_of_mem (Finset.mem_insert_self _ _))
  refine ⟨t c * a, t c * b + t w, t, mul_pos htc ha, add_pos (mul_pos htc hb) htw,
    fun j hj => ht j (Finset.mem_insert_of_mem (Finset.mem_insert_of_mem hj)), ?_,
    by nlinarith [mul_pos htw ha]⟩
  rw [Finset.sum_insert hcw, Finset.sum_insert hwr, hc]
  module

private theorem exists_coords_eq_of_mem_coneOn_insert_c [DecidableEq V] {u w c : V} {r : Finset V} {a b : ℚ} (hc : c = a • u + b • w)
    (ha : 0 < a) (hb : 0 < b) (hcr : c ∉ r) {x : V} (hx : x ∈ coneOn (insert c r)) :
    ∃ α β : ℚ, ∃ t : V → ℚ, 0 < α ∧ 0 < β ∧ (∀ j ∈ r, 0 < t j) ∧
      x = α • u + (β • w + ∑ j ∈ r, t j • j) ∧ α * b = β * a := by
  simp only [coneOn, Set.mem_setOf_eq] at hx
  obtain ⟨t, ht, rfl⟩ := hx
  have htc : 0 < t c := ht c (Finset.mem_insert_self _ _)
  refine ⟨t c * a, t c * b, t, mul_pos htc ha, mul_pos htc hb,
    fun j hj => ht j (Finset.mem_insert_of_mem hj), ?_, by ring⟩
  rw [Finset.sum_insert hcr, hc]
  module

private theorem coneOn_u_w_subset_union [DecidableEq V] {u w c : V} {r : Finset V} {a b : ℚ} (hc : c = a • u + b • w)
    (ha : 0 < a) (hb : 0 < b) (huw : u ∉ insert w r) (hwr : w ∉ r) (huc : u ∉ insert c r)
    (hcr : c ∉ r) (hcw : c ∉ insert w r) {x : V} (hx : x ∈ coneOn (insert u (insert w r))) :
    x ∈ coneOn (insert u (insert c r)) ∪ coneOn (insert c (insert w r)) ∪ coneOn (insert c r) := by
  simp only [coneOn, Set.mem_setOf_eq] at hx
  obtain ⟨t, ht, rfl⟩ := hx
  have htu : 0 < t u := ht u (Finset.mem_insert_self _ _)
  have htw : 0 < t w := ht w (Finset.mem_insert_of_mem (Finset.mem_insert_self _ _))
  have htr : ∀ j ∈ r, 0 < t j := fun j hj =>
    ht j (Finset.mem_insert_of_mem (Finset.mem_insert_of_mem hj))
  rw [Finset.sum_insert huw, Finset.sum_insert hwr]
  rcases lt_trichotomy (t w * a) (t u * b) with h | h | h
  · refine Or.inl (Or.inl ?_)
    obtain ⟨k, hk⟩ : ∃ k : ℚ, k * b = t w := ⟨t w / b, div_mul_cancel₀ _ hb.ne'⟩
    have hk0 : 0 < k := by nlinarith
    have e : (t u - k * a) * b = t u * b - t w * a := by rw [← hk]; ring
    have hm : 0 < (t u - k * a) * b := by rw [e]; linarith
    have hku : 0 < t u - k * a := by nlinarith
    simp only [coneOn, Set.mem_setOf_eq]
    refine ⟨fun i => if i = u then t u - k * a else if i = c then k else t i,
      pos_ite_ite_of_pos_insert_insert hku hk0 htr, ?_⟩
    beta_reduce
    rw [sum_insert_insert_ite_ite_smul huc hcr, hc, ← hk]
    module
  · refine Or.inr ?_
    obtain ⟨k, hk⟩ : ∃ k : ℚ, k * a = t u := ⟨t u / a, div_mul_cancel₀ _ ha.ne'⟩
    have hk0 : 0 < k := by nlinarith
    have hkb : k * b = t w := mul_right_cancel₀ ha.ne' (by rw [h, ← hk]; ring)
    simp only [coneOn, Set.mem_setOf_eq]
    refine ⟨fun i => if i = c then k else t i, pos_ite_of_pos_insert hk0 htr, ?_⟩
    beta_reduce
    rw [sum_insert_ite_smul hcr, hc, ← hk, ← hkb]
    module
  · refine Or.inl (Or.inr ?_)
    obtain ⟨k, hk⟩ : ∃ k : ℚ, k * a = t u := ⟨t u / a, div_mul_cancel₀ _ ha.ne'⟩
    have hk0 : 0 < k := by nlinarith
    have e : (t w - k * b) * a = t w * a - t u * b := by rw [← hk]; ring
    have hm : 0 < (t w - k * b) * a := by rw [e]; linarith
    have hkw : 0 < t w - k * b := by nlinarith
    simp only [coneOn, Set.mem_setOf_eq]
    refine ⟨fun i => if i = c then k else if i = w then t w - k * b else t i,
      pos_ite_ite_of_pos_insert_insert hk0 hkw htr, ?_⟩
    beta_reduce
    rw [sum_insert_insert_ite_ite_smul hcw hwr, hc, ← hk]
    module

theorem tile_of_card_lt [DecidableEq V] (P : ConvexCone ℚ V) (l : V →ₗ[ℚ] ℚ) (n : ℕ) :
    ∀ s : Finset V, (s.filter (fun v => l v ≠ 0)).card < n → LinearIndepOn ℚ id (s : Set V) → (s : Set V) ⊆ P →
      Tile (P : Set V) (SignConst l) (coneOn s) := by
  have hfr : ∀ (x : V) (X : Finset V), l x = 0 →
      ((insert x X).filter (fun v => l v ≠ 0)).card = (X.filter (fun v => l v ≠ 0)).card := by
    intro x X hx
    rw [Finset.filter_insert, if_neg (not_not.mpr hx)]
  have hfi : ∀ (x : V) (X : Finset V), l x ≠ 0 → x ∉ X →
      ((insert x X).filter (fun v => l v ≠ 0)).card = (X.filter (fun v => l v ≠ 0)).card + 1 := by
    intro x X hx hxX
    rw [Finset.filter_insert, if_pos hx, Finset.card_insert_eq_ite,
      if_neg (fun h => hxX (Finset.mem_filter.mp h).1)]
  induction n with
  | zero => intro s hs; exact absurd hs (Nat.not_lt_zero _)
  | succ n ih =>
    intro s hs hli hP
    by_cases hnn : ∀ v ∈ s, 0 ≤ l v
    · exact Tile.cone s hli hP (signConst_of_nonneg l s hnn)
    by_cases hnp : ∀ v ∈ s, l v ≤ 0
    · exact Tile.cone s hli hP (signConst_of_nonpos l s hnp)
    push_neg at hnn hnp
    obtain ⟨w, hws, hlw⟩ := hnn
    obtain ⟨u, hus, hlu⟩ := hnp
    have huw : u ≠ w := by rintro rfl; linarith
    obtain ⟨r, hur, hwr, rfl⟩ : ∃ r : Finset V, u ∉ r ∧ w ∉ r ∧ s = insert u (insert w r) :=
      ⟨(s.erase u).erase w, by simp, by simp,
        by rw [Finset.insert_erase (Finset.mem_erase.mpr ⟨huw.symm, hws⟩), Finset.insert_erase hus]⟩
    have huwr : u ∉ insert w r := by simp [huw, hur]
    have hlw0 : l w ≠ 0 := hlw.ne
    have hlu0 : l u ≠ 0 := hlu.ne'
    have ha : (0 : ℚ) < -l w := by linarith
    have hb : (0 : ℚ) < l u := hlu
    have hPu : u ∈ P := hP (Finset.mem_coe.mpr (Finset.mem_insert_self _ _))
    have hPw : w ∈ P := hP (Finset.mem_coe.mpr (Finset.mem_insert_of_mem (Finset.mem_insert_self _ _)))
    have hPr : ∀ x ∈ r, x ∈ P := fun x hx =>
      hP (Finset.mem_coe.mpr (Finset.mem_insert_of_mem (Finset.mem_insert_of_mem hx)))
    have hcP : (-l w) • u + (l u) • w ∈ P := P.add_mem (P.smul_mem ha hPu) (P.smul_mem hb hPw)
    have hlc : l ((-l w) • u + (l u) • w) = 0 := by
      simp only [map_add (f := _), map_smul, smul_eq_mul]; ring
    obtain ⟨hcr, hcu, hcw, hli1, hli2, hli3⟩ := StellarLI.main u w r (-l w) (l u) ha hb huw hur hwr hli
    generalize hcdef : (-l w) • u + (l u) • w = c at hcP hlc hcr hcu hcw hli1 hli2 hli3
    have hc' : c = (-l w) • u + (l u) • w := hcdef.symm
    have huc : u ∉ insert c r := by simp [Ne.symm hcu, hur]
    have hcwr : c ∉ insert w r := by simp [hcw, hcr]
    have hs' := hs
    rw [hfi u _ hlu0 huwr, hfi w r hlw0 hwr] at hs'
    have hcA : ((insert u (insert c r)).filter (fun v => l v ≠ 0)).card < n := by
      rw [hfi u _ hlu0 huc, hfr c r hlc]; omega
    have hcB : ((insert c (insert w r)).filter (fun v => l v ≠ 0)).card < n := by
      rw [hfr c _ hlc, hfi w r hlw0 hwr]; omega
    have hcC : ((insert c r).filter (fun v => l v ≠ 0)).card < n := by
      rw [hfr c r hlc]; omega
    have hsubA : ((insert u (insert c r) : Finset V) : Set V) ⊆ P := by
      intro x hx
      simp only [Finset.coe_insert, Set.mem_insert_iff, Finset.mem_coe] at hx
      rcases hx with h | h | h
      · rw [h]; exact hPu
      · rw [h]; exact hcP
      · exact hPr x h
    have hsubB : ((insert c (insert w r) : Finset V) : Set V) ⊆ P := by
      intro x hx
      simp only [Finset.coe_insert, Set.mem_insert_iff, Finset.mem_coe] at hx
      rcases hx with h | h | h
      · rw [h]; exact hcP
      · rw [h]; exact hPw
      · exact hPr x h
    have hsubC : ((insert c r : Finset V) : Set V) ⊆ P := by
      intro x hx
      simp only [Finset.coe_insert, Set.mem_insert_iff, Finset.mem_coe] at hx
      rcases hx with h | h
      · rw [h]; exact hcP
      · exact hPr x h
    have hA := ih _ hcA hli2 hsubA
    have hB := ih _ hcB hli1 hsubB
    have hC := ih _ hcC hli3 hsubC
    have dAB : Disjoint (coneOn (insert u (insert c r))) (coneOn (insert c (insert w r))) := by
      rw [Set.disjoint_left]
      intro x h1 h2
      obtain ⟨α, β, t, -, -, -, e1, r1⟩ := exists_coords_lt_of_mem_coneOn_insert_u_c hc' ha hb huc hcr h1
      obtain ⟨α', β', t', -, -, -, e2, r2⟩ := exists_coords_lt_swap_of_mem_coneOn_c_w hc' ha hb hcwr hwr h2
      obtain ⟨rfl, rfl⟩ := coeff_eq_of_linearIndepOn_insert_insert huwr hwr hli (e1.symm.trans e2)
      linarith
    have dAC : Disjoint (coneOn (insert u (insert c r))) (coneOn (insert c r)) := by
      rw [Set.disjoint_left]
      intro x h1 h2
      obtain ⟨α, β, t, -, -, -, e1, r1⟩ := exists_coords_lt_of_mem_coneOn_insert_u_c hc' ha hb huc hcr h1
      obtain ⟨α', β', t', -, -, -, e2, r2⟩ := exists_coords_eq_of_mem_coneOn_insert_c hc' ha hb hcr h2
      obtain ⟨rfl, rfl⟩ := coeff_eq_of_linearIndepOn_insert_insert huwr hwr hli (e1.symm.trans e2)
      linarith
    have dBC : Disjoint (coneOn (insert c (insert w r))) (coneOn (insert c r)) := by
      rw [Set.disjoint_left]
      intro x h1 h2
      obtain ⟨α, β, t, -, -, -, e1, r1⟩ := exists_coords_lt_swap_of_mem_coneOn_c_w hc' ha hb hcwr hwr h1
      obtain ⟨α', β', t', -, -, -, e2, r2⟩ := exists_coords_eq_of_mem_coneOn_insert_c hc' ha hb hcr h2
      obtain ⟨rfl, rfl⟩ := coeff_eq_of_linearIndepOn_insert_insert huwr hwr hli (e1.symm.trans e2)
      linarith
    have dABC : Disjoint (coneOn (insert u (insert c r)) ∪ coneOn (insert c (insert w r)))
        (coneOn (insert c r)) := Set.disjoint_union_left.mpr ⟨dAC, dBC⟩
    have heq : coneOn (insert u (insert w r)) = (coneOn (insert u (insert c r)) ∪
        coneOn (insert c (insert w r))) ∪ coneOn (insert c r) := by
      ext x
      constructor
      · exact fun hx => coneOn_u_w_subset_union hc' ha hb huwr hwr huc hcr hcwr hx
      · intro hx
        have key : ∃ α β : ℚ, ∃ t : V → ℚ, 0 < α ∧ 0 < β ∧ (∀ j ∈ r, 0 < t j) ∧
            x = α • u + (β • w + ∑ j ∈ r, t j • j) := by
          rcases hx with (hx | hx) | hx
          · obtain ⟨α, β, t, h1, h2, h3, h4, -⟩ := exists_coords_lt_of_mem_coneOn_insert_u_c hc' ha hb huc hcr hx
            exact ⟨α, β, t, h1, h2, h3, h4⟩
          · obtain ⟨α, β, t, h1, h2, h3, h4, -⟩ := exists_coords_lt_swap_of_mem_coneOn_c_w hc' ha hb hcwr hwr hx
            exact ⟨α, β, t, h1, h2, h3, h4⟩
          · obtain ⟨α, β, t, h1, h2, h3, h4, -⟩ := exists_coords_eq_of_mem_coneOn_insert_c hc' ha hb hcr hx
            exact ⟨α, β, t, h1, h2, h3, h4⟩
        obtain ⟨α, β, t, h1, h2, h3, h4⟩ := key
        simp only [coneOn, Set.mem_setOf_eq]
        refine ⟨fun i => if i = u then α else if i = w then β else t i, pos_ite_ite_of_pos_insert_insert h1 h2 h3, ?_⟩
        beta_reduce
        rw [sum_insert_insert_ite_ite_smul huwr hwr]
        exact h4
    rw [heq]
    exact Tile.union (Tile.union hA hB dAB) hC dABC

theorem main : ∀ {V : Type} [AddCommGroup V] [Module ℚ V] (P : ConvexCone ℚ V) (l : V →ₗ[ℚ] ℚ) (s : Finset V), LinearIndepOn ℚ id (s : Set V) → (s : Set V) ⊆ P →
    Tile (P : Set V) (SignConst l) (coneOn s) := by
  intro V _ _ P l s hli hP
  classical
  exact tile_of_card_lt P l _ s (Nat.lt_succ_self _) hli hP

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones.TileSign
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.SimplicialConeTilesSign =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.SimplicialConeTiling =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.SimplicialConeTiling", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CongSubgroup\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.SimplicialConeTilesSign\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField NumberField.Units NumberField.Units.dirichletUnitTheorem GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones.SignTiles

variable {V : Type} [AddCommGroup V] [Module ℚ V]

theorem tile_mono {P : Set V} {Q Q' : Set V → Prop} (hQ : ∀ A, Q A → Q' A) {C : Set V} (h : Tile P Q C) :
    Tile P Q' C := by
  induction h with
  | empty => exact .empty
  | cone s hli hP hQs => exact .cone s hli hP (hQ _ hQs)
  | union _ _ hAB ihA ihB => exact .union ihA ihB hAB

theorem tile_refine {P : Set V} {Q Q' : Set V → Prop}
    (hc : ∀ s : Finset V, LinearIndepOn ℚ id (s : Set V) → (s : Set V) ⊆ P → Q (coneOn s) → Tile P Q' (coneOn s))
    {C : Set V} (h : Tile P Q C) : Tile P Q' C := by
  induction h with
  | empty => exact .empty
  | cone s hli hP hQs => exact hc s hli hP hQs
  | union _ _ hAB ihA ihB => exact .union ihA ihB hAB

theorem tile_inside {P : Set V} {Q : Set V → Prop} {C : Set V} (h : Tile P Q C) :
    Tile P (fun A => Q A ∧ A ⊆ C) C := by
  induction h with
  | empty => exact .empty
  | cone s hli hP hQs => exact .cone s hli hP ⟨hQs, subset_rfl⟩
  | @union A B _ _ hAB ihA ihB =>
    exact .union (tile_mono (fun X hX => ⟨hX.1, hX.2.trans Set.subset_union_left⟩) ihA)
      (tile_mono (fun X hX => ⟨hX.1, hX.2.trans Set.subset_union_right⟩) ihB) hAB

theorem signConst_mono {l : V →ₗ[ℚ] ℚ} {A C : Set V} (h : SignConst l C) (hAC : A ⊆ C) : SignConst l A := by
  rcases h with h | h | h
  · exact Or.inl fun x hx => h x (hAC hx)
  · exact Or.inr (Or.inl fun x hx => h x (hAC hx))
  · exact Or.inr (Or.inr fun x hx => h x (hAC hx))

theorem sign_eq_of_signConst {l : V →ₗ[ℚ] ℚ} {A : Set V} (h : SignConst l A) {x y : V} (hx : x ∈ A) (hy : y ∈ A) :
    SignType.sign (l x) = SignType.sign (l y) := by
  rcases h with h | h | h
  · rw [h x hx, h y hy]
  · rw [sign_pos (h x hx), sign_pos (h y hy)]
  · rw [sign_neg (h x hx), sign_neg (h y hy)]

theorem tile_signs (P : ConvexCone ℚ V) (s : Finset V) (hli : LinearIndepOn ℚ id (s : Set V))
    (hP : (s : Set V) ⊆ (P : Set V)) (Λ : Set (V →ₗ[ℚ] ℚ)) (hΛ : Λ.Finite) :
    Tile (P : Set V) (fun A => A ⊆ coneOn s ∧ ∀ l ∈ Λ, SignConst l A) (coneOn s) := by
  classical
  obtain ⟨t, rfl⟩ := hΛ.exists_finset_coe
  refine Finset.induction_on t ?_ ?_
  · exact .cone s hli hP ⟨subset_rfl, fun l hl => by simp at hl⟩
  · intro l t _ ih
    refine tile_refine (fun u hu huP hQu => ?_) ih
    refine tile_mono (fun A hA => ⟨hA.2.trans hQu.1, fun l' hl' => ?_⟩)
      (tile_inside (_root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones.TileSign.main P l u hu huP))
    rcases Finset.mem_insert.1 (Finset.mem_coe.1 hl') with rfl | h'
    · exact hA.1
    · exact signConst_mono (hQu.2 l' (Finset.mem_coe.2 h')) hA.2

theorem tile_inter {P E C : Set V} (h : Tile P (fun A => A ⊆ E ∨ Disjoint A E) C) :
    Tile P (fun _ => True) (C ∩ E) := by
  induction h with
  | empty =>
    rw [Set.empty_inter]
    exact .empty
  | cone s hli hP hQs =>
    rcases hQs with hs | hs
    · rw [Set.inter_eq_left.2 hs]
      exact .cone s hli hP trivial
    · rw [Set.disjoint_iff_inter_eq_empty.1 hs]
      exact .empty
  | union _ _ hAB ihA ihB =>
    rw [Set.union_inter_distrib_right]
    exact .union ihA ihB (hAB.mono Set.inter_subset_left Set.inter_subset_left)

theorem mem_coneOn_basis [DecidableEq V] {κ : Type} [Fintype κ] (b : Module.Basis κ ℚ V) (x : V) :
    x ∈ coneOn (Finset.univ.image b) ↔ ∀ i, 0 < b.repr x i := by
  classical
  constructor
  · rintro ⟨t, ht, rfl⟩ i
    rw [Finset.sum_image (fun a _ c _ hac => b.injective hac)]
    have hrep : b.repr (∑ j, t (b j) • b j) i = t (b i) := by

      simp only [map_sum, map_smul, Module.Basis.repr_self, Finsupp.smul_single, smul_eq_mul, mul_one,
      Finsupp.finsetSum_apply]
      rw [Finset.sum_eq_single i]
      · rw [Finsupp.single_apply, if_pos rfl]
      · intro j _ hji
        rw [Finsupp.single_apply, if_neg hji]
      · intro hi
        exact absurd (Finset.mem_univ i) hi
    rw [hrep]
    exact ht _ (Finset.mem_image_of_mem b (Finset.mem_univ i))
  · intro hx
    have key : ∀ i, ∑ j, b.repr (b i) j * b.repr x j = b.repr x i := by
      intro i
      rw [Module.Basis.repr_self, Finset.sum_eq_single i]
      · rw [Finsupp.single_apply, if_pos rfl, one_mul]
      · intro j _ hji
        rw [Finsupp.single_apply, if_neg (Ne.symm hji), zero_mul]
      · intro hi
        exact absurd (Finset.mem_univ i) hi
    refine ⟨fun v => ∑ j, b.repr v j * b.repr x j, ?_, ?_⟩
    · intro v hv
      obtain ⟨i, -, rfl⟩ := Finset.mem_image.1 hv
      show 0 < ∑ j, b.repr (b i) j * b.repr x j
      rw [key]
      exact hx i
    · rw [Finset.sum_image (fun a _ c _ hac => b.injective hac)]
      conv_lhs => rw [← b.sum_repr x]
      refine Finset.sum_congr rfl fun i _ => ?_
      show b.repr x i • b i = (∑ j, b.repr (b i) j * b.repr x j) • b i
      rw [key]

theorem tile_of_signs : ∀ {V : Type} [AddCommGroup V] [Module ℚ V] {κ : Type} [Fintype κ] (P : ConvexCone ℚ V)
    (b : Module.Basis κ ℚ V), (∀ i, b i ∈ P) → ∀ (Λ : Set (V →ₗ[ℚ] ℚ)), Λ.Finite → ∀ (E : Set V),
    (∀ x ∈ E, ∀ i, 0 < b.repr x i) →
    (∀ x y, (∀ i, 0 < b.repr x i) → (∀ i, 0 < b.repr y i) →
      (∀ l ∈ Λ, SignType.sign (l x) = SignType.sign (l y)) → x ∈ E → y ∈ E) →
    Tile (P : Set V) (fun _ => True) E := by
  classical
  intro V _ _ κ _ P b hb Λ hΛ E hE hdec
  have hcoe : ((Finset.univ.image b : Finset V) : Set V) = Set.range b := by
    simp [Set.image_univ]
  have hli : LinearIndepOn ℚ id ((Finset.univ.image b : Finset V) : Set V) := by
    rw [hcoe]
    exact (linearIndepOn_id_range_iff b.injective).2 b.linearIndependent
  have hP' : ((Finset.univ.image b : Finset V) : Set V) ⊆ (P : Set V) := by
    rw [hcoe]
    rintro v ⟨i, rfl⟩
    exact hb i
  have hT := tile_inter (tile_mono (Q' := fun A => A ⊆ E ∨ Disjoint A E) (fun A hA => ?_)
    (tile_signs P _ hli hP' Λ hΛ))
  · have hEs : coneOn (Finset.univ.image b) ∩ E = E :=
      Set.inter_eq_right.2 fun x hx => (mem_coneOn_basis b x).2 (hE x hx)
    rw [hEs] at hT
    exact hT
  · obtain ⟨hAs, hAl⟩ := hA
    by_cases hex : ∃ x ∈ A, x ∈ E
    · left
      obtain ⟨x, hxA, hxE⟩ := hex
      intro y hyA
      exact hdec x y ((mem_coneOn_basis b x).1 (hAs hxA)) ((mem_coneOn_basis b y).1 (hAs hyA))
        (fun l hl => sign_eq_of_signConst (hAl l hl) hxA hyA) hxE
    · right
      exact Set.disjoint_left.2 fun x hxA hxE => hex ⟨x, hxA, hxE⟩

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones.SignTiles
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.SimplicialConeTiling =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.TotallyPositiveBasisRatioBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.TotallyPositiveBasisRatioBound", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.CongSubgroup\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField NumberField.Units NumberField.Units.dirichletUnitTheorem GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones

theorem finite_realEmbeddings (F : Type) [Field F] [NumberField F] : Finite (F →+* ℝ) :=
  Finite.of_injective (fun σ : F →+* ℝ => (Complex.ofRealHom.comp σ : F →+* ℂ)) (by
    intro σ τ h
    ext x
    have := congrArg (fun f : F →+* ℂ => f x) h
    simpa using this)

theorem bounded_ratio_on_basis_cone : ∀ (F : Type) [Field F] [NumberField F] {κ : Type} [Fintype κ] (b : Module.Basis κ ℚ F), (∀ i, TotPos F (b i)) →
    ∃ R : ℝ, 0 < R ∧ ∀ x : F, (∀ i, 0 < b.repr x i) → ∀ σ τ : F →+* ℝ, σ x ≤ R * τ x := by
  intro F _ _ κ _ b hb
  classical
  haveI := finite_realEmbeddings F
  haveI : Fintype (F →+* ℝ) := Fintype.ofFinite _
  have hterm : ∀ (i : κ) (σ τ : F →+* ℝ), 0 < σ (b i) / τ (b i) := fun i σ τ => div_pos (hb i σ) (hb i τ)
  obtain ⟨R, hRdef⟩ : ∃ R : ℝ, R = 1 + ∑ i, ∑ σ : F →+* ℝ, ∑ τ : F →+* ℝ, σ (b i) / τ (b i) := ⟨_, rfl⟩
  have hsum : 0 ≤ ∑ i, ∑ σ : F →+* ℝ, ∑ τ : F →+* ℝ, σ (b i) / τ (b i) :=
    Finset.sum_nonneg fun i _ => Finset.sum_nonneg fun σ _ => Finset.sum_nonneg fun τ _ => (hterm i σ τ).le
  have hR : 0 < R := by rw [hRdef]; linarith
  have hle : ∀ (i : κ) (σ τ : F →+* ℝ), σ (b i) ≤ R * τ (b i) := by
    intro i σ τ
    have h1 : σ (b i) / τ (b i) ≤ ∑ τ' : F →+* ℝ, σ (b i) / τ' (b i) :=
      Finset.single_le_sum (f := fun τ' : F →+* ℝ => σ (b i) / τ' (b i)) (fun τ' _ => (hterm i σ τ').le) (Finset.mem_univ τ)
    have h2 : ∑ τ' : F →+* ℝ, σ (b i) / τ' (b i) ≤ ∑ σ' : F →+* ℝ, ∑ τ' : F →+* ℝ, σ' (b i) / τ' (b i) :=
      Finset.single_le_sum (f := fun σ' : F →+* ℝ => ∑ τ' : F →+* ℝ, σ' (b i) / τ' (b i))
        (fun σ' _ => Finset.sum_nonneg fun τ' _ => (hterm i σ' τ').le) (Finset.mem_univ σ)
    have h3 : ∑ σ' : F →+* ℝ, ∑ τ' : F →+* ℝ, σ' (b i) / τ' (b i) ≤ ∑ j, ∑ σ' : F →+* ℝ, ∑ τ' : F →+* ℝ, σ' (b j) / τ' (b j) :=
      Finset.single_le_sum (f := fun j => ∑ σ' : F →+* ℝ, ∑ τ' : F →+* ℝ, σ' (b j) / τ' (b j))
        (fun j _ => Finset.sum_nonneg fun σ' _ => Finset.sum_nonneg fun τ' _ => (hterm j σ' τ').le) (Finset.mem_univ i)
    have h4 : σ (b i) / τ (b i) ≤ R := by rw [hRdef]; linarith
    exact (div_le_iff₀ (hb i τ)).1 h4
  refine ⟨R, hR, fun x hx σ τ => ?_⟩
  have hrep : ∀ ρ : F →+* ℝ, ρ x = ∑ i, (b.repr x i : ℝ) * ρ (b i) := by
    intro ρ
    conv_lhs => rw [← b.sum_repr x]

    rw [map_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [Rat.smul_def, map_mul, map_ratCast]
  rw [hrep σ, hrep τ, Finset.mul_sum]
  refine Finset.sum_le_sum fun i _ => ?_
  have hc : (0 : ℝ) < (b.repr x i : ℝ) := by exact_mod_cast hx i
  calc (b.repr x i : ℝ) * σ (b i) ≤ (b.repr x i : ℝ) * (R * τ (b i)) := mul_le_mul_of_nonneg_left (hle i σ τ) hc.le
    _ = R * ((b.repr x i : ℝ) * τ (b i)) := by ring

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.TotallyPositiveBasisRatioBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.UniqueReducedOrbitRepresentative =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.UniqueReducedOrbitRepresentative", "h": "module\n\npublic import Mathlib.Basic.Finite.Defs\npublic import Mathlib.Basic.Real.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Data.Set.Finite.Basic\npublic import Mathlib.Data.Set.Finite.Lemmas\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.SiegelKlingen

theorem exists_unique_minimal_translate :
    ∀ {G M : Type} [Group G] [Monoid M] (φ : G →* M) (f : G →* ℝ), (∀ g, 0 < f g) →
    Function.Injective f → ∀ (D : Set M),
    {g : G | ∃ x ∈ D, φ g * x ∈ D}.Finite → ∀ (x : M), (∃ g, φ g * x ∈ D) →
    ∃! g, φ g * x ∈ {y ∈ D | ∀ g' : G, f g' < 1 → φ g' * y ∉ D} := by
  intro G M _ _ φ f hpos hinj D hfin x ⟨g0, hg0⟩
  have key : ∀ a b : G, φ (a * b⁻¹) * (φ b * x) = φ a * x := by
    intro a b
    rw [← mul_assoc, ← map_mul, inv_mul_cancel_right]
  have hS : {g : G | φ g * x ∈ D}.Finite := by
    refine (hfin.image (fun h => h * g0)).subset ?_
    intro g hg
    exact ⟨g * g0⁻¹, ⟨φ g0 * x, hg0, by rw [key]; exact hg⟩, inv_mul_cancel_right g g0⟩
  obtain ⟨g, hgS, hmin⟩ := Set.exists_min_image _ f hS ⟨g0, hg0⟩
  refine ⟨g, ⟨hgS, fun g' hg' hD => ?_⟩, ?_⟩
  · have hmem : φ (g' * g) * x ∈ D := by rwa [map_mul, mul_assoc]
    have h1 := hmin _ hmem
    rw [map_mul] at h1
    have hp := hpos g
    nlinarith
  · rintro g2 ⟨hg2, hmin2⟩
    have h1 : 1 ≤ f (g * g2⁻¹) := not_lt.1 fun hlt => hmin2 _ hlt (by rw [key]; exact hgS)
    rw [map_mul, map_inv] at h1
    have hp2 := hpos g2
    have h3 := mul_le_mul_of_nonneg_right h1 hp2.le
    rw [one_mul, inv_mul_cancel_right₀ hp2.ne'] at h3
    exact hinj (le_antisymm h3 (hmin g2 hg2))

end GlobalTheory.CompanionTheory.SiegelKlingen
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.UniqueReducedOrbitRepresentative =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsShintaniConeDomain =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsShintaniConeDomain", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsTotallyPositiveBasisPositiveCoords\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteUnitsBoundedEmbeddingRatio\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.PlaceApply\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CongSubgroup\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ShintaniConeDecomposition\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.SimplicialConeTiling\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.TotallyPositiveBasisRatioBound\npublic import Mathlib.Basic.Finite.Defs\npublic import Mathlib.Basic.Real.Basic\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.UniqueReducedOrbitRepresentative\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.SiegelKlingenDeligneRibet\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.ShortIntervalPrimes GlobalTheory.RayZeta GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani

theorem exists_coneDomain : ∀ (F : Type) [Field F] [NumberField F] [IsTotallyReal F] (𝔣 : Ideal (𝓞 F)), 𝔣 ≠ ⊥ →
    ∃ (ι : Type) (_ : Fintype ι) (r : ι → ℕ) (v : ∀ c, Fin (r c) → F), IsConeDomain 𝔣 r v := by
  intro F _ _ _ 𝔣 h𝔣
  classical
  obtain ⟨M, hM⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Balance.balance F 𝔣 h𝔣
  obtain ⟨κ, _, b, hbpos, hbcov⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Gens.exists_totPos_basis F M
  obtain ⟨R, hR0, hR⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones.bounded_ratio_on_basis_cone F b hbpos

  obtain ⟨σ₁⟩ : Nonempty (F →+* ℝ) := by
    have w : InfinitePlace F := Classical.choice inferInstance
    exact ⟨w.embedding_of_isReal (IsTotallyReal.isReal w)⟩

  let G := ↥(congSubgroup 𝔣)
  let φ : G →* F := ((algebraMap (𝓞 F) F : 𝓞 F →+* F) : 𝓞 F →* F).comp ((Units.coeHom (𝓞 F)).comp (congSubgroup 𝔣).subtype)
  have hφ : ∀ g : G, φ g = (((g : (𝓞 F)ˣ) : 𝓞 F) : F) := fun g => rfl
  have hgpos : ∀ g : G, TotPos F (φ g) := fun g => g.2.2
  let f : G →* ℝ := (σ₁ : F →* ℝ).comp φ
  have hf : ∀ g : G, f g = σ₁ (φ g) := fun g => rfl
  have hfpos : ∀ g, 0 < f g := fun g => hgpos g σ₁
  have hφinj : Function.Injective φ := by
    intro g g' h
    apply Subtype.ext
    apply Units.ext
    exact RingOfIntegers.coe_injective h
  have hfinj : Function.Injective f := fun g g' h => hφinj (σ₁.injective h)
  let D : Set F := {x | ∀ i, 0 < b.repr x i}

  have hDpos : ∀ x ∈ D, TotPos F x := by
    intro x hx σ
    have hk : Nonempty κ := b.index_nonempty

    rw [← b.sum_repr x, map_sum]
    refine Finset.sum_pos (fun i _ => ?_) Finset.univ_nonempty
    rw [Rat.smul_def, map_mul, map_ratCast]
    exact mul_pos (by exact_mod_cast hx i) (hbpos i σ)
  have hfin : {g : G | ∃ x ∈ D, φ g * x ∈ D}.Finite := by
    have hfin0 := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.finite_totPos_units_bounded_ratio F (R * R)
    refine Set.Finite.of_finite_image (f := fun g : G => (g : (𝓞 F)ˣ)) (hfin0.subset ?_) (Subtype.val_injective.injOn)
    rintro _ ⟨g, ⟨x, hx, hgx⟩, rfl⟩
    refine ⟨hgpos g, fun σ τ => ?_⟩
    have h1 := hR _ hgx σ τ
    have h2 := hR x hx τ σ
    have hxσ := hDpos x hx σ
    have hgτ := hgpos g τ
    rw [map_mul, map_mul] at h1
    have h3 : σ (φ g) * σ x ≤ (R * R * τ (φ g)) * σ x := by
      calc σ (φ g) * σ x ≤ R * (τ (φ g) * τ x) := h1
        _ ≤ R * (τ (φ g) * (R * σ x)) := by gcongr
        _ = _ := by ring
    exact le_of_mul_le_mul_right h3 hxσ
  let E : Set F := {y ∈ D | ∀ g' : G, f g' < 1 → φ g' * y ∉ D}
  let T := {g : G | ∃ x ∈ D, φ g * x ∈ D}
  let Λ : Set (F →ₗ[ℚ] ℚ) := (fun p : G × κ => (b.coord p.2).comp (LinearMap.mulLeft ℚ (φ p.1))) '' (T ×ˢ Set.univ)
  have hΛ : Λ.Finite := (hfin.prod Set.finite_univ).image _
  have hsign : ∀ (p q : ℚ), SignType.sign p = SignType.sign q → 0 < p → 0 < q := by
    intro p q h hp
    rw [sign_pos hp] at h
    exact sign_eq_one_iff.mp h.symm
  have htile : Tile ((posCone F : ConvexCone ℚ F) : Set F) (fun _ => True) E := by
    refine _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones.SignTiles.tile_of_signs (posCone F) b hbpos Λ hΛ E (fun x hx => hx.1) ?_
    intro x y hx hy hs hxE
    refine ⟨hy, fun g' hg' hyD => ?_⟩
    refine hxE.2 g' hg' ?_
    have hgT : g' ∈ T := ⟨y, hy, hyD⟩
    intro i
    have := hs _ ⟨(g', i), ⟨hgT, trivial⟩, rfl⟩
    simp only [LinearMap.comp_apply, Module.Basis.coord_apply, LinearMap.mulLeft_apply] at this
    exact hsign _ _ this.symm (hyD i)
  have h0 : (0 : F) ∉ E := by
    intro h
    have := hDpos 0 h.1 σ₁
    simp at this
  obtain ⟨ι, hι, r, v, hr, hli, hvP, hsub, hun⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Cones.tile_family_closed _ _ E htile h0
  refine ⟨ι, hι, r, v, hr, hli, hvP, ?_⟩
  intro x hx

  obtain ⟨u, hu, hub⟩ := hM x hx
  have hxD : ∃ g : G, φ g * x ∈ D := by
    refine ⟨⟨u, hu⟩, hbcov _ ?_ hub⟩
    intro σ
    rw [map_mul]
    exact mul_pos (hu.2 σ) (hx σ)
  obtain ⟨g, hg, hguniq⟩ := _root_.GlobalTheory.CompanionTheory.SiegelKlingen.exists_unique_minimal_translate φ f hfpos hfinj D hfin x hxD
  obtain ⟨c, hc, hcuniq⟩ := hun _ hg
  refine ⟨(⟨g.1, g.2⟩, c), hc, ?_⟩
  rintro ⟨⟨u', hu'⟩, c'⟩ hp
  have hp' : φ ⟨u', hu'⟩ * x ∈ openCone (v c') := hp
  have hg' : (⟨u', hu'⟩ : G) = g := hguniq _ (hsub c' hp')
  have hc' : c' = c := by
    apply hcuniq
    rw [← hg']
    exact hp'
  subst hc'
  have := congrArg Subtype.val hg'
  simp only at this
  simp [this]

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsShintaniConeDomain =====
