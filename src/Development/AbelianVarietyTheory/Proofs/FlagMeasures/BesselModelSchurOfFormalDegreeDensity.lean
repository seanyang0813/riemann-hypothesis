module

import Development.AbelianVarietyTheory.Proofs.FlagMeasures.MeasurableSetImageBall
public import Formalism.PeriodIntegrals.QuotInv
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.UpperOff
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ClosedMatrixSubgroupTheorem
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.DensityInChart
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HasDensityAtIdentityLieAlgebraOfOmegaDensity
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HasDensityAtIdentityUnitaryGroupProbability
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RiemannianHaarIndependentOfOrthonormalFrame
import Mathlib.Algebra.Order.Archimedean.Real.Hom
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.Normed.Algebra.MatrixExponential
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
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.MatGroupHaarUniqueFiniteCompactOpenPos
import Formalism.FormalDegreeBessel.FinalG
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FlagMeasures.HaarDensityConjUnitaryHermitianGroups, Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselModelSchurOfFormalDegreeDensity

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.HaarDensityConjUnitaryHermitianGroups =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.HaarDensityConjUnitaryHermitianGroups", "h": "module\n\npublic import Formalism.PeriodIntegrals.QuotInv\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.UpperOff\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ClosedMatrixSubgroupTheorem\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.DensityInChart\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.RiemannianHaarIndependentOfOrthonormalFrame\nimport Mathlib.Algebra.Order.Archimedean.Real.Hom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Filter Topology Formalism.QuantumDeterminants Formalism.MainNotions.S GlobalTheory.SgInf GlobalTheory.Amp
open scoped InnerProductSpace ENNReal

namespace GlobalTheory.AdDens

theorem volume_image_eq {V W : Type} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
    [NormedAddCommGroup W] [InnerProductSpace ℝ W] [FiniteDimensional ℝ W]
    [MeasurableSpace V] [BorelSpace V] [MeasurableSpace W] [BorelSpace W]
    (L : V ≃ₗ[ℝ] W) (σ : V →ₗ[ℝ] V) (τ : W →ₗ[ℝ] W) (hσ : ∀ x, σ (σ x) = x) (hτ : ∀ x, τ (τ x) = x)
    (h : ∀ x y, ⟪τ (L x), L y⟫_ℝ = ⟪σ x, y⟫_ℝ) (s : Set V) : volume (L '' s) = volume s := by
  apply GlobalTheory.FrameIndep.volume_image_of_form <;> assumption

abbrev EE (m : ℕ) := EuclideanSpace ℝ (Fin m × Fin m × Bool)

def rl (m : ℕ) : Matrix (Fin m) (Fin m) ℂ ≃ₗ[ℝ] EE m where
  toFun X := (WithLp.equiv 2 _).symm (realifyFun X)
  invFun := unrealify
  map_add' X Y := by
    ext ⟨i, j, b⟩; cases b <;> simp [realifyFun]
  map_smul' t X := by
    ext ⟨i, j, b⟩; cases b <;> simp [realifyFun]
  left_inv X := by
    ext i j; apply Complex.ext <;> simp [realifyFun, unrealify]
  right_inv x := by
    ext ⟨i, j, b⟩; cases b <;> simp [realifyFun, unrealify]

theorem rl_symm {m : ℕ} (x : EE m) : (rl m).symm x = unrealify x := rfl

theorem inner_rl {m : ℕ} (X Y : Matrix (Fin m) (Fin m) ℂ) : ⟪rl m X, rl m Y⟫_ℝ = (Matrix.trace (X * Yᴴ)).re := by
  simp only [rl, LinearEquiv.coe_mk, LinearMap.coe_mk, AddHom.coe_mk, PiLp.inner_apply,
    Fintype.sum_prod_type, Fintype.sum_bool, Matrix.trace, Matrix.diag, Matrix.mul_apply,
    Matrix.conjTranspose_apply, Complex.re_sum, Complex.mul_re, Complex.star_def, Complex.conj_re, Complex.conj_im]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  simp [realifyFun] <;> ring

def cj {m : ℕ} (A B : Matrix (Fin m) (Fin m) ℂ) : EE m →ₗ[ℝ] EE m where
  toFun x := rl m (A * unrealify x * B)
  map_add' x y := by rw [← rl_symm, ← rl_symm, ← rl_symm, map_add (f := _), Matrix.mul_add, Matrix.add_mul, map_add (f := _)]
  map_smul' t x := by
    rw [← rl_symm, ← rl_symm, map_smul, Matrix.mul_smul, Matrix.smul_mul, map_smul]; rfl

theorem cj_apply {m : ℕ} (A B : Matrix (Fin m) (Fin m) ℂ) (x : EE m) : cj A B x = rl m (A * unrealify x * B) := rfl

theorem unrealify_rl {m : ℕ} (X : Matrix (Fin m) (Fin m) ℂ) : unrealify (rl m X) = X := by rw [← rl_symm]; exact (rl m).symm_apply_apply X

theorem rl_unrealify {m : ℕ} (x : EE m) : rl m (unrealify x) = x := by rw [← rl_symm]; exact (rl m).apply_symm_apply x

theorem cj_cj {m : ℕ} {A B : Matrix (Fin m) (Fin m) ℂ} (h : A * B = 1) (x : EE m) : cj A B (cj B A x) = x := by
  rw [cj_apply, cj_apply, unrealify_rl,
    show A * (B * unrealify x * A) * B = (A * B) * unrealify x * (A * B) by simp only [Matrix.mul_assoc],
    h, Matrix.one_mul, Matrix.mul_one, rl_unrealify]

theorem mem_UH_conj {m : ℕ} {H H' A B : Matrix (Fin m) (Fin m) ℂ} (hAB : B * A = 1) (h : Bᴴ * H' * B = H)
    {g : Matrix (Fin m) (Fin m) ℂ} (hg : g ∈ UH H') : A * g * B ∈ UH H := by
  change Bᴴ * H' * B = H at h
  change gᴴ * H' * g = H' at hg
  show (A * g * B)ᴴ * H * (A * g * B) = H
  rw [← h]
  calc (A * g * B)ᴴ * (Bᴴ * H' * B) * (A * g * B) = Bᴴ * (gᴴ * ((B * A)ᴴ * H' * (B * A)) * g) * B := by
        simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
    _ = Bᴴ * H' * B := by rw [hAB, Matrix.conjTranspose_one, Matrix.one_mul, Matrix.mul_one, hg]

theorem exp_cj {m : ℕ} {A B : Matrix (Fin m) (Fin m) ℂ} (hAB : A * B = 1) (X : Matrix (Fin m) (Fin m) ℂ) :
    NormedSpace.exp (A * X * B) = A * NormedSpace.exp X * B := by
  have hB : B = A⁻¹ := (Matrix.inv_eq_right_inv hAB).symm
  subst hB
  exact Matrix.exp_conj A X ((Matrix.isUnit_iff_isUnit_det A).mpr (Matrix.isUnit_det_of_right_inverse hAB))

theorem cj_mem {m : ℕ} {H H' A B : Matrix (Fin m) (Fin m) ℂ} (hAB : A * B = 1) (h : Bᴴ * H' * B = H)
    {x : EE m} (hx : x ∈ lieE (UH H')) : cj A B x ∈ lieE (UH H) := by
  have hBA : B * A = 1 := mul_eq_one_comm.1 hAB
  have hsub : (lieE (UH H')).map (cj A B) ≤ lieE (UH H) := by
    rw [lieE, Submodule.map_span]
    refine Submodule.span_mono ?_
    rintro _ ⟨_, ⟨X, hX, rfl⟩, rfl⟩
    refine ⟨A * X * B, fun t => ?_, ?_⟩
    · have := mem_UH_conj hBA h (hX t)
      rwa [← exp_cj hAB, Matrix.mul_smul, Matrix.smul_mul] at this
    · change rl m (A * X * B) = cj A B (rl m X)
      rw [cj_apply, unrealify_rl]
  exact hsub (Submodule.mem_map_of_mem hx)

theorem isMatGroup_UH {N : ℕ} (H : Matrix (Fin N) (Fin N) ℂ) (hH : H * H = 1) : PI.IsMatGroup (UH H) := by
  first | exact _root_.GlobalTheory.GramExp.isMatGroup_UH | exact @_root_.GlobalTheory.GramExp.isMatGroup_UH | apply _root_.GlobalTheory.GramExp.isMatGroup_UH <;> assumption

def cjM {m : ℕ} {A B : Matrix (Fin m) (Fin m) ℂ} (hAB : A * B = 1) : PI.MtM m ≃ₜ PI.MtM m where
  toFun x := Matrix.of.symm (A * Matrix.of x * B)
  invFun x := Matrix.of.symm (B * Matrix.of x * A)
  left_inv x := by
    show B * (A * Matrix.of x * B) * A = Matrix.of x
    calc _ = (B * A) * Matrix.of x * (B * A) := by simp only [Matrix.mul_assoc]
      _ = _ := by rw [mul_eq_one_comm.1 hAB]; simp
  right_inv x := by
    show A * (B * Matrix.of x * A) * B = Matrix.of x
    calc _ = (A * B) * Matrix.of x * (A * B) := by simp only [Matrix.mul_assoc]
      _ = _ := by rw [hAB]; simp
  continuous_toFun := (continuous_const.matrix_mul (continuous_id (X := Matrix (Fin m) (Fin m) ℂ))).matrix_mul continuous_const
  continuous_invFun := (continuous_const.matrix_mul (continuous_id (X := Matrix (Fin m) (Fin m) ℂ))).matrix_mul continuous_const

theorem measurable_lmulQ {m : ℕ} (s : Matrix (Fin m) (Fin m) ℂ) : Measurable (PI.lmulQ s) := by
  have hc : Continuous (PI.lmulQ s) := by
    unfold PI.lmulQ
    exact Continuous.matrix_mul continuous_const continuous_id
  exact hc.measurable

theorem haar_map {m : ℕ} {H H' A B : Matrix (Fin m) (Fin m) ℂ} (hAB : A * B = 1) (h : Bᴴ * H' * B = H)
    (h' : Aᴴ * H * A = H') {μ : Measure (PI.MtM m)} (hμ : PI.IsHaarOnM (UH H') μ) :
    PI.IsHaarOnM (UH H) (μ.map (cjM hAB).toMeasurableEquiv) := by
  obtain ⟨hσ, hne, hnull, hinv⟩ := hμ
  set e := (cjM hAB).toMeasurableEquiv with he
  have hBA : B * A = 1 := mul_eq_one_comm.1 hAB
  refine ⟨e.sigmaFinite_map, ?_, ?_, ?_⟩
  · intro h0
    apply hne
    have h1 := congrArg (fun ν => ν.map e.symm) h0
    simpa [Measure.map_map e.symm.measurable e.measurable] using h1
  · rw [e.map_apply]
    refine measure_mono_null ?_ hnull
    intro x hx
    exact fun hxm => hx (mem_UH_conj hBA h hxm)
  · intro s hs
    have hcomm : PI.lmulQ s ∘ e = e ∘ PI.lmulQ (B * s * A) := by
      funext x
      show s * (A * Matrix.of x * B) = A * (B * s * A * Matrix.of x) * B
      calc s * (A * Matrix.of x * B) = (A * B) * s * (A * Matrix.of x * B) := by rw [hAB, Matrix.one_mul]
        _ = A * (B * s * A * Matrix.of x) * B := by simp only [Matrix.mul_assoc]
    rw [Measure.map_map (measurable_lmulQ s) e.measurable, hcomm,
      ← Measure.map_map e.measurable (measurable_lmulQ _), hinv _ (mem_UH_conj hAB h' hs)]

def adL {m : ℕ} {H H' A B : Matrix (Fin m) (Fin m) ℂ} (hAB : A * B = 1) (h : Bᴴ * H' * B = H)
    (h' : Aᴴ * H * A = H') : lieE (UH H) ≃ₗ[ℝ] lieE (UH H') :=
  LinearEquiv.ofLinear ((cj B A).restrict fun _ hx => cj_mem (mul_eq_one_comm.1 hAB) h' hx)
    ((cj A B).restrict fun _ hx => cj_mem hAB h hx)
    (by ext1 x; exact Subtype.ext (cj_cj (mul_eq_one_comm.1 hAB) _))
    (by ext1 x; exact Subtype.ext (cj_cj hAB _))

theorem adL_coe {m : ℕ} {H H' A B : Matrix (Fin m) (Fin m) ℂ} (hAB : A * B = 1) (h : Bᴴ * H' * B = H)
    (h' : Aᴴ * H * A = H') (x : lieE (UH H)) : (adL hAB h h' x : EE m) = cj B A x := rfl

theorem volume_adL {m : ℕ} {H H' A B : Matrix (Fin m) (Fin m) ℂ} (hH : Hᴴ = H) (hH2 : H * H = 1)
    (hH' : H'ᴴ = H') (hH2' : H' * H' = 1) (hAB : A * B = 1) (h : Bᴴ * H' * B = H)
    (h' : Aᴴ * H * A = H') (s : Set (lieE (UH H))) : volume (adL hAB h h' '' s) = volume s := by
  have hHH : Hᴴ * H * H = H := by rw [hH, Matrix.mul_assoc, hH2, Matrix.mul_one]
  have hHH' : H'ᴴ * H' * H' = H' := by rw [hH', Matrix.mul_assoc, hH2', Matrix.mul_one]
  let σ : lieE (UH H) →ₗ[ℝ] lieE (UH H) := (cj H H).restrict fun _ hx => cj_mem hH2 hHH hx
  let τ : lieE (UH H') →ₗ[ℝ] lieE (UH H') := (cj H' H').restrict fun _ hx => cj_mem hH2' hHH' hx
  have hBA : B * A = 1 := mul_eq_one_comm.1 hAB

  have k1 : H * (A * H' * Aᴴ) = 1 := by
    rw [← h]
    calc Bᴴ * H' * B * (A * H' * Aᴴ) = Bᴴ * (H' * ((B * A) * (H' * Aᴴ))) := by simp only [Matrix.mul_assoc]
      _ = 1 := by rw [hBA, Matrix.one_mul, ← Matrix.mul_assoc H', hH2', Matrix.one_mul, ← Matrix.conjTranspose_mul,
          hAB, Matrix.conjTranspose_one]
  have k2 : A * H' * Aᴴ = H := by
    calc A * H' * Aᴴ = (H * H) * (A * H' * Aᴴ) := by rw [hH2, Matrix.one_mul]
      _ = H := by rw [Matrix.mul_assoc, k1, Matrix.mul_one]
  refine volume_image_eq (adL hAB h h') σ τ (fun x => Subtype.ext (cj_cj hH2 _))
    (fun x => Subtype.ext (cj_cj hH2' _)) (fun x y => ?_) s
  rw [Submodule.coe_inner, Submodule.coe_inner]
  simp only [σ, τ, LinearMap.restrict_coe_apply, adL_coe]
  simp only [cj_apply, unrealify_rl]
  rw [← rl_unrealify (y : EE m), inner_rl, inner_rl, unrealify_rl]
  congr 1
  set X := unrealify (x : EE m)
  set Y := unrealify (y : EE m)
  calc Matrix.trace (H' * (B * X * A) * H' * (B * Y * A)ᴴ)
      = Matrix.trace ((H' * B * X * (A * H' * Aᴴ) * Yᴴ) * Bᴴ) := by
        simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
    _ = Matrix.trace (Bᴴ * (H' * B * X * (A * H' * Aᴴ) * Yᴴ)) := Matrix.trace_mul_comm _ _
    _ = Matrix.trace ((Bᴴ * H' * B) * X * (A * H' * Aᴴ) * Yᴴ) := by simp only [Matrix.mul_assoc]
    _ = Matrix.trace (H * X * H * Yᴴ) := by rw [h, k2]

theorem strict_entry {m : ℕ} (V : Submodule ℝ (EE m)) (A B : Matrix (Fin m) (Fin m) ℂ) (i j : Fin m) :
    ∃ D : V →L[ℝ] ℂ, HasStrictFDerivAt (fun x : V => (B * NormedSpace.exp (unrealify (x : EE m)) * A) i j) D 0 ∧
      ∀ v : V, D v = (B * unrealify (v : EE m) * A) i j := by
  letI : NormedRing (Matrix (Fin m) (Fin m) ℂ) := Matrix.linftyOpNormedRing
  letI : NormedAlgebra ℝ (Matrix (Fin m) (Fin m) ℂ) := Matrix.linftyOpNormedAlgebra
  let U : V →L[ℝ] Matrix (Fin m) (Fin m) ℂ :=
    LinearMap.toContinuousLinearMap ((rl m).symm.toLinearMap ∘ₗ V.subtype)
  have hU : ∀ v : V, U v = unrealify (v : EE m) := fun v => rl_symm (v : EE m)
  let T : Matrix (Fin m) (Fin m) ℂ →L[ℝ] ℂ := LinearMap.toContinuousLinearMap
    { toFun := fun M => (B * M * A) i j
      map_add' := fun M M' => by simp only [Matrix.mul_add, Matrix.add_mul, Matrix.add_apply]
      map_smul' := fun t M => by simp only [Matrix.mul_smul, Matrix.smul_mul, Matrix.smul_apply, RingHom.id_apply] }
  have hexp : HasStrictFDerivAt NormedSpace.exp (1 : Matrix (Fin m) (Fin m) ℂ →L[ℝ] Matrix (Fin m) (Fin m) ℂ) (U 0) := by
    rw [map_zero]; exact hasStrictFDerivAt_exp_zero
  have hall := T.hasStrictFDerivAt.comp (0 : V) (hexp.comp (0 : V) U.hasStrictFDerivAt)
  refine ⟨T.comp ((1 : Matrix (Fin m) (Fin m) ℂ →L[ℝ] Matrix (Fin m) (Fin m) ℂ).comp U), ?_, fun v => ?_⟩
  · have hf : (fun x : V => (B * NormedSpace.exp (unrealify (x : EE m)) * A) i j) =
        T ∘ (NormedSpace.exp ∘ U) := by
      funext x
      simp only [Function.comp_apply, hU]
      rfl
    rw [hf]
    exact hall
  · simp only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.one_apply, hU]
    rfl

theorem dens_map {m : ℕ} {H H' A B : Matrix (Fin m) (Fin m) ℂ} (hH : Hᴴ = H) (hH2 : H * H = 1)
    (hH' : H'ᴴ = H') (hH2' : H' * H' = 1) (hAB : A * B = 1) (h : Bᴴ * H' * B = H)
    (h' : Aᴴ * H * A = H') {μ : Measure (PI.MtM m)} {c : ℝ≥0∞} (hμ : PI.IsHaarOnM (UH H') μ)
    (hd : HasDens (UH H') μ c) : HasDens (UH H) (μ.map (cjM hAB).toMeasurableEquiv) c := by
  have hBA : B * A = 1 := mul_eq_one_comm.1 hAB
  set e := (cjM hAB).toMeasurableEquiv with he
  let L : lieE (UH H) ≃L[ℝ] lieE (UH H') := (adL hAB h h').toContinuousLinearEquiv
  have hLie := (_root_.GlobalTheory.ClosedMatGroup.closed_subgroup m (UH H) (isMatGroup_UH H hH2)).1
  have hmain := _root_.GlobalTheory.ChartDensity.density_in_chart m (UH H') μ c (isMatGroup_UH H' hH2') hμ hd (lieE (UH H))
    (fun x => B * NormedSpace.exp (unrealify (x : EE m)) * A) L
    (by simp only [ZeroMemClass.coe_zero]; rw [show unrealify (0 : EE m) = 0 from
      (rl_symm (0 : EE m)).symm.trans (map_zero _), NormedSpace.exp_zero, Matrix.mul_one, hBA])
    (Filter.Eventually.of_forall fun x => by
      have hx := hLie x 1
      rw [Complex.ofReal_one, one_smul] at hx
      exact mem_UH_conj hAB h' hx)
    (fun i j => by
      obtain ⟨D, hD, hDv⟩ := strict_entry (lieE (UH H)) A B i j
      refine ⟨D, hD, fun v => ?_⟩
      rw [hDv]
      show (B * unrealify (v : EE m) * A) i j = unrealify ((adL hAB h h' v : lieE (UH H')) : EE m) i j
      rw [adL_coe, cj_apply, unrealify_rl])
  unfold GlobalTheory.Amp.HasDens
  refine hmain.congr fun ρ => ?_
  have hset : e ⁻¹' GlobalTheory.Amp.expSet (UH H) (Metric.ball 0 ρ) =
      (fun x : lieE (UH H) => Matrix.of.symm (B * NormedSpace.exp (unrealify (x : EE m)) * A)) '' Metric.ball 0 ρ := by
    ext x
    simp only [Set.mem_preimage, GlobalTheory.Amp.expSet, Set.mem_image]
    constructor
    · rintro ⟨X, hX, hx⟩
      refine ⟨X, hX, ?_⟩
      have hx' : NormedSpace.exp (unrealify (X : EE m)) = A * Matrix.of x * B := hx
      show B * NormedSpace.exp (unrealify (X : EE m)) * A = Matrix.of x
      rw [hx']
      calc B * (A * Matrix.of x * B) * A = (B * A) * Matrix.of x * (B * A) := by simp only [Matrix.mul_assoc]
        _ = Matrix.of x := by rw [hBA, Matrix.one_mul, Matrix.mul_one]
    · rintro ⟨X, hX, rfl⟩
      refine ⟨X, hX, ?_⟩
      show NormedSpace.exp (unrealify (X : EE m)) = A * (B * NormedSpace.exp (unrealify (X : EE m)) * A) * B
      calc NormedSpace.exp (unrealify (X : EE m)) = (A * B) * NormedSpace.exp (unrealify (X : EE m)) * (A * B) := by
            rw [hAB, Matrix.one_mul, Matrix.mul_one]
        _ = _ := by simp only [Matrix.mul_assoc]
  have hvol : volume (⇑L '' Metric.ball (0 : lieE (UH H)) ρ) = volume (Metric.ball (0 : lieE (UH H)) ρ) :=
    volume_adL hH hH2 hH' hH2' hAB h h' _
  rw [e.map_apply, hset, hvol]

theorem haar_dens_conj : ∀ (m : ℕ) (H H' P : Matrix (Fin m) (Fin m) ℂ), Hᴴ = H → H * H = 1 → H'ᴴ = H' → H' * H' = 1 → IsUnit P → Pᴴ * H' * P = H → ∀ (μ : Measure (PI.MtM m)) (c : ℝ≥0∞), PI.IsHaarOnM (UH H') μ → HasDens (UH H') μ c → PI.IsHaarOnM (UH H) (μ.map fun x : PI.MtM m => Matrix.of.symm (P⁻¹ * Matrix.of x * P)) ∧ HasDens (UH H) (μ.map fun x : PI.MtM m => Matrix.of.symm (P⁻¹ * Matrix.of x * P)) c := by
  intro m H H' P hH hH2 hH' hH2' hP hPH μ c hμ hd
  have hdet : IsUnit P.det := (Matrix.isUnit_iff_isUnit_det P).mp hP
  have hAB : P⁻¹ * P = 1 := Matrix.nonsing_inv_mul P hdet
  have hPP : P * P⁻¹ = 1 := Matrix.mul_nonsing_inv P hdet
  have h' : (P⁻¹)ᴴ * H * P⁻¹ = H' := by
    rw [← hPH]
    calc (P⁻¹)ᴴ * (Pᴴ * H' * P) * P⁻¹ = (P * P⁻¹)ᴴ * H' * (P * P⁻¹) := by
          simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
      _ = H' := by rw [hPP, Matrix.conjTranspose_one, Matrix.one_mul, Matrix.mul_one]
  have hf : (fun x : PI.MtM m => Matrix.of.symm (P⁻¹ * Matrix.of x * P)) = ⇑(cjM hAB).toMeasurableEquiv := rfl
  rw [hf]
  exact ⟨haar_map hAB hPH h' hμ, dens_map hH hH2 hH' hH2' hAB hPH h' hμ hd⟩

end GlobalTheory.AdDens
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.HaarDensityConjUnitaryHermitianGroups =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselModelSchurOfFormalDegreeDensity =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselModelSchurOfFormalDegreeDensity", "h": "module\n\npublic import Formalism.PeriodIntegrals.QuotInv\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.UpperOff\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HaarDensityConjUnitaryHermitianGroups\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HasDensityAtIdentityLieAlgebraOfOmegaDensity\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HasDensityAtIdentityUnitaryGroupProbability\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.MatGroupHaarUniqueFiniteCompactOpenPos\nimport Formalism.FormalDegreeBessel.FinalG\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Filter Topology Formalism.QuantumDeterminants Formalism.MainNotions.S GlobalTheory.SgInf GlobalTheory.Amp
open scoped InnerProductSpace ENNReal

namespace GlobalTheory.FdegDens

alias volUn_pos := _root_.GlobalTheory.UnitaryVolume.volUn_pos

theorem exists_sort {n : ℕ} (ε : Fin n → Bool) : ∃ (p q : ℕ) (e : Fin p ⊕ Fin q ≃ Fin n), p + q = n ∧
    (∀ i, ε (e (Sum.inl i)) = true) ∧ ∀ j, ε (e (Sum.inr j)) = false := by
  classical
  let A := {i : Fin n // ε i = true}
  let B := {i : Fin n // ¬ε i = true}
  let e : Fin (Fintype.card A) ⊕ Fin (Fintype.card B) ≃ Fin n :=
    (Equiv.sumCongr (Fintype.equivFin A).symm (Fintype.equivFin B).symm).trans
      (Equiv.sumCompl fun i => ε i = true)
  refine ⟨Fintype.card A, Fintype.card B, e, ?_, fun i => ?_, fun j => ?_⟩
  · simpa using Fintype.card_congr e
  · exact ((Fintype.equivFin A).symm i).2
  · show ε (((Fintype.equivFin B).symm j : B) : Fin n) = false
    simpa using ((Fintype.equivFin B).symm j).2

theorem measurable_reindex {n p q : ℕ} (e : Fin p ⊕ Fin q ≃ Fin n) :
    Measurable fun g : Formalism.BasicNotions.UpqT p q =>
      (Matrix.of.symm (Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g)) : PI.MtM n) := by
  haveI : BorelSpace (Formalism.BasicNotions.UpqT p q) := ⟨rfl⟩
  have hmat : Continuous (Formalism.BasicNotions.UpqT.mat : Formalism.BasicNotions.UpqT p q → _) :=
    Units.continuous_val.comp continuous_subtype_val
  have hc : Continuous fun g : Formalism.BasicNotions.UpqT p q =>
      (Matrix.of.symm (Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g)) : PI.MtM n) :=
    hmat.matrix_reindex e e
  exact hc.measurable

theorem reindex_mem {n p q : ℕ} (ε : Fin n → Bool) (e : Fin p ⊕ Fin q ≃ Fin n)
    (h1 : ∀ i, ε (e (Sum.inl i)) = true) (h2 : ∀ j, ε (e (Sum.inr j)) = false) (g : Formalism.BasicNotions.UpqT p q) :
    Formalism.REAL.inUJ ε (Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g)) := by
  obtain ⟨g0, hg0⟩ := g
  have hg : ((g0 : GL (Fin p ⊕ Fin q) ℂ) : Matrix (Fin p ⊕ Fin q) (Fin p ⊕ Fin q) ℂ)ᴴ * Formalism.UG.Jpq p q *
      (g0 : GL (Fin p ⊕ Fin q) ℂ) = Formalism.UG.Jpq p q := hg0
  show (Matrix.reindex e e ((g0 : GL (Fin p ⊕ Fin q) ℂ) : Matrix (Fin p ⊕ Fin q) (Fin p ⊕ Fin q) ℂ))ᴴ *
      Formalism.REAL.Jm ε * Matrix.reindex e e (g0 : GL (Fin p ⊕ Fin q) ℂ) = Formalism.REAL.Jm ε
  rw [GlobalTheory.OmegaFrobenius.jm_eq h1 h2, Matrix.reindex_apply, Matrix.conjTranspose_submatrix,
    Matrix.submatrix_mul_equiv, Matrix.submatrix_mul_equiv, hg]

theorem hasDens_unique {m : ℕ} {S : Set (Matrix (Fin m) (Fin m) ℂ)} {μ : Measure (Fin m → Fin m → ℂ)} {c c' : ℝ≥0∞}
    (h : HasDens S μ c) (h' : HasDens S μ c') : c = c' := by
  unfold HasDens at h h'
  exact tendsto_nhds_unique h h'

theorem hasDens_smul {m : ℕ} {S : Set (Matrix (Fin m) (Fin m) ℂ)} {μ : Measure (Fin m → Fin m → ℂ)} {c : ℝ≥0∞}
    (h : HasDens S μ c) (t : NNReal) : HasDens S (t • μ) (t * c) := by
  unfold HasDens at h ⊢
  refine (ENNReal.Tendsto.const_mul h (Or.inr ENNReal.coe_ne_top) (a := (t : ℝ≥0∞))).congr fun ρ => ?_
  rw [Measure.smul_apply, ENNReal.smul_def, smul_eq_mul, mul_div_assoc]

theorem cd_dens {n p q : ℕ} (ε : Fin n → Bool) (e : Fin p ⊕ Fin q ≃ Fin n) (hpq : p + q = n)
    (h1 : ∀ i, ε (e (Sum.inl i)) = true) (h2 : ∀ j, ε (e (Sum.inr j)) = false) (cd : Formalism.BasicNotions.CDHaar) :
    PI.IsHaarOnM (UH (Formalism.REAL.Jm ε))
      ((cd.cd p q).map fun g => Matrix.of.symm (Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g))) ∧
    HasDens (UH (Formalism.REAL.Jm ε))
      ((cd.cd p q).map fun g => Matrix.of.symm (Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g)))
      (ENNReal.ofReal (volUn n)⁻¹) := by
  subst hpq
  obtain ⟨c0, -, -, hc1, hc2⟩ := cd.trick p q
  have hK := _root_.GlobalTheory.OmegaFrobenius.hasDens_of_omegaDensity (p + q) (fun _ => true) (p + q) 0 (Equiv.sumEmpty _ _) (fun _ => rfl)
    (fun j => j.elim0) (cd.cd (p + q) 0) c0 (cd.haar _ _) hc2
  have hJ : Formalism.REAL.Jm (fun _ : Fin (p + q) => true) = 1 := by
    unfold Formalism.REAL.Jm
    simp
  rw [hJ] at hK
  have hprob : ((cd.cd (p + q) 0).map fun g => Matrix.of.symm (Matrix.reindex
      (Equiv.sumEmpty (Fin (p + q)) (Fin 0)) (Equiv.sumEmpty (Fin (p + q)) (Fin 0))
      (Formalism.BasicNotions.UpqT.mat g))) Set.univ = 1 := by
    rw [Measure.map_apply (measurable_reindex _) MeasurableSet.univ, Set.preimage_univ]
    haveI := cd.prob (p + q)
    exact measure_univ
  have hc0 : c0 = ENNReal.ofReal (volUn (p + q))⁻¹ :=
    hasDens_unique hK.2 (_root_.GlobalTheory.UnitaryVolume.hasDens_unitary (p + q) _ hK.1 hprob)
  have hM := _root_.GlobalTheory.OmegaFrobenius.hasDens_of_omegaDensity (p + q) ε p q e h1 h2 (cd.cd p q) c0 (cd.haar p q) hc1
  rw [hc0] at hM
  exact hM

theorem umat_emb {n : ℕ} (ε : Fin n → Bool) :
    MeasurableEmbedding fun a : Formalism.REAL.UJ ε => (Matrix.of.symm (umat a) : PI.MtM n) := by
  have h : Topology.IsClosedEmbedding (fun a : Formalism.REAL.UJ ε => (Matrix.of.symm (umat a) : PI.MtM n)) :=
    (Formalism.REAL.isClosedEmbeddingMatrix n ε).1
  exact h.measurableEmbedding

theorem conj_emb {n : ℕ} (P : Matrix (Fin n) (Fin n) ℂ) (hP : IsUnit P) :
    MeasurableEmbedding fun x : PI.MtM n => (Matrix.of.symm (P⁻¹ * Matrix.of x * P) : PI.MtM n) := by
  have hu : IsUnit P.det := (Matrix.isUnit_iff_isUnit_det P).mp hP
  have hm : ∀ A B : Matrix (Fin n) (Fin n) ℂ,
      Measurable fun x : PI.MtM n => (Matrix.of.symm (A * Matrix.of x * B) : PI.MtM n) := by
    intro A B
    have hx : Continuous fun x : PI.MtM n => (Matrix.of x : Matrix (Fin n) (Fin n) ℂ) := continuous_id
    have hc : Continuous fun x : PI.MtM n => (Matrix.of.symm (A * Matrix.of x * B) : PI.MtM n) :=
      (continuous_const.matrix_mul hx).matrix_mul continuous_const
    exact hc.measurable
  let φ : PI.MtM n ≃ PI.MtM n :=
    { toFun := fun x => Matrix.of.symm (P⁻¹ * Matrix.of x * P)
      invFun := fun y => Matrix.of.symm (P * Matrix.of y * P⁻¹)
      left_inv := fun x => by
        show Matrix.of.symm (P * (P⁻¹ * Matrix.of x * P) * P⁻¹) = x
        simp [Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hu, ← Matrix.mul_assoc P P⁻¹]
      right_inv := fun y => by
        show Matrix.of.symm (P⁻¹ * (P * Matrix.of y * P⁻¹) * P) = y
        simp [Matrix.mul_assoc, Matrix.nonsing_inv_mul _ hu, Matrix.nonsing_inv_mul_cancel_left _ _ hu] }
  exact (MeasurableEquiv.mk φ (hm _ _) (hm _ _)).measurableEmbedding

theorem schur_of_dens : ∀ (k r : ℕ) {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] (σ : Mat k r → (H →L[ℂ] H)) (ε : Fin (2 * r + k + 1) → Bool) (cd : Formalism.BasicNotions.CDHaar) (sc : NNReal) (P : Mat k r) (d c : ℝ) (μG : Measure (Mt k r)), (∀ (p q : ℕ) (e : Fin p ⊕ Fin q ≃ Fin (2 * r + k + 1)), (∀ i, ε (e (Sum.inl i)) = true) → (∀ j, ε (e (Sum.inr j)) = false) → ∀ A : Set (Formalism.REAL.UJ ε), MeasurableSet A → ((sc : ℝ≥0∞) • Formalism.REAL.muG ε) A = cd.cd p q {g | ∃ a ∈ A, umat a = Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g)}) → IsCayley k r ε P → IsFdeg ((sc : ℝ≥0∞) • Formalism.REAL.muG ε) (fun g => σ (P⁻¹ * g * P)) d → 0 < c → IsHaarOn (GG k r) μG → HasDens (GG k r) μG (ENNReal.ofReal c) → SchurH μG σ (d / (c * volUn (2 * r + k + 1))) := by
  intro k r H _ _ _ σ ε cd sc P d c μG hcomp hP hF hc hμG hdG
  obtain ⟨p, q, e, hpq, h1, h2⟩ := exists_sort ε
  have hU := umat_emb ε
  have hC := conj_emb P hP.1

  have hν : ((sc : ℝ≥0∞) • Formalism.REAL.muG ε).map (fun a : Formalism.REAL.UJ ε => (Matrix.of.symm (umat a) : PI.MtM (2 * r + k + 1))) =
      (cd.cd p q).map fun g => Matrix.of.symm (Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g)) := by
    ext B hB
    rw [Measure.map_apply hU.measurable hB, Measure.map_apply (measurable_reindex e) hB,
      hcomp p q e h1 h2 _ (hU.measurable hB)]
    congr 1
    ext g
    constructor
    · rintro ⟨a, ha, hag⟩
      show Matrix.of.symm (Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g)) ∈ B
      rw [← hag]
      exact ha
    · intro hg
      have hmem : Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g) ∈ Set.range
          (fun a : Formalism.REAL.UJ ε => ((a : (Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)ˣ) :
            Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)) := by
        rw [(Formalism.REAL.isClosedEmbeddingMatrix _ ε).2]
        exact reindex_mem ε e h1 h2 g
      obtain ⟨a, ha⟩ := hmem
      refine ⟨a, ?_, ha⟩
      show Matrix.of.symm (umat a) ∈ B
      rw [show umat a = Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g) from ha]
      exact hg
  have hcd := cd_dens ε e hpq h1 h2 cd
  rw [← hν] at hcd
  have hHk := Formalism.QuantumDeterminants.hpkFacts k r
  have hD := _root_.GlobalTheory.AdDens.haar_dens_conj (2 * r + k + 1) (Formalism.QuantumDeterminants.Hpk k r) (Formalism.REAL.Jm ε) P hHk.1 hHk.2.1
    (Formalism.REAL.Jm_conjTranspose ε) (Formalism.REAL.Jm_mul_self ε) hP.1 hP.2 _ _ hcd.1 hcd.2
  obtain ⟨t, -, httop, hμt⟩ := (GlobalTheory.MatHaar.haar_unique_locFinite_openPos _ _ _
    (GlobalTheory.AdDens.isMatGroup_UH _ hHk.2.1) hD.1).1 μG hμG
  have hdt : HasDens (GG k r) μG (t * ENNReal.ofReal (volUn (2 * r + k + 1))⁻¹) := by
    have h := hasDens_smul hD.2 t.toNNReal
    rwa [ENNReal.smul_def, ENNReal.coe_toNNReal httop.ne, ← hμt] at h
  have hV := volUn_pos (2 * r + k + 1)
  have htr : t.toReal = c * volUn (2 * r + k + 1) := by
    have h := congrArg ENNReal.toReal (hasDens_unique hdG hdt)
    rw [ENNReal.toReal_mul, ENNReal.toReal_ofReal hc.le, ENNReal.toReal_ofReal (inv_nonneg.mpr hV.le)] at h
    rw [h, mul_assoc, inv_mul_cancel₀ hV.ne', mul_one]
  rw [Measure.map_map hC.measurable hU.measurable] at hμt
  have hemb := hC.comp hU
  obtain ⟨hd, hFd⟩ := hF
  refine ⟨div_pos hd (mul_pos hc hV), fun v w v' w' => ?_⟩
  obtain ⟨hI, hE⟩ := hFd v w v' w'
  rw [hμt]
  refine ⟨Integrable.smul_measure ?_ httop.ne, ?_⟩
  · rw [hemb.integrable_map_iff]
    exact hI
  rw [integral_smul_measure, hemb.integral_map]
  refine (congrArg (fun z : ℂ => t.toReal • z) hE).trans ?_
  rw [htr, Complex.real_smul]
  push_cast
  rw [div_div_eq_mul_div]
  ring

end GlobalTheory.FdegDens
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselModelSchurOfFormalDegreeDensity =====
