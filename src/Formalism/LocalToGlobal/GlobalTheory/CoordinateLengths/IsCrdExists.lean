module

public import Formalism.LocalToGlobal.HermitianForms.TiedStep
public import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwDecomp
public import Formalism.LocalRingCardinality.Lemmas
public import Formalism.LocalToGlobal.GlobalTheory.GL6.WeylLengthDiagonalUnitUniformiser
public import Formalism.SharpRestriction.GlobalSchurBounds.FiniteModelOfAdmissibleTransports
public import Mathlib.GroupTheory.GroupAction.Ring
public import Mathlib.RingTheory.Length
public import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
public import Mathlib.RingTheory.Flat.Domain
public import Mathlib.RingTheory.TensorProduct.MvPolynomial
public import Formalism.LocalToGlobal.GroupLattices.DownNaturalLevelZero
public import Formalism.LocalToGlobal.GlobalTheory.GL6.LatticeInclusionFamilyOf
import Formalism.SharpRestriction.GlobalSchurBounds.ProductFirstZerothParts
import Formalism.QuotientMetricDivisors.HermitianTwistDivisors.ImageLcv
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.GlobalTheory.GL6.LatticeInclusionOfSubIntegral, Formalism.LocalToGlobal.GlobalTheory.GL6.LocalBasisChangeDecompCompatible, Formalism.LocalToGlobal.GlobalTheory.GL6.LinearIndependentProdRenameOfCard, Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.PairingEqLimitPairing, Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.PairingAdjointness, Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.PairingContinuityBound, Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.LenLen2OfCoord, Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.IsCrdExists

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL6.LatticeInclusionOfSubIntegral =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL6.LatticeInclusionOfSubIntegral", "h": "module\n\npublic import Formalism.LocalToGlobal.HermitianForms.TiedStep\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.GlobalSchurBounds.ProductFirstZerothParts\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.LocalLatticeBases

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Classical

variable (D : D7) (u : D.what₂.Word)

def bwA_N {n : ℕ} (τv : D.what₂.Tau) (B B' : GL (Fin n) D.host.E) :
    D.what₂.Tau → Matrix (Fin n) (Fin n) ℂ :=
  fun τ => if τ = τv then atInf (embT D) (B'⁻¹ * B : GL (Fin n) D.host.E).1 τ else 1

theorem bwA_N_mul {n : ℕ} (τv : D.what₂.Tau) (B B' : GL (Fin n) D.host.E) :
    (fun τ => bwA_N D τv B B' τ * atInf (embT D) (B⁻¹ : GL (Fin n) D.host.E).1 τ) =
      fun τ => if τ = τv then atInf (embT D) (B'⁻¹ : GL (Fin n) D.host.E).1 τ
        else atInf (embT D) (B⁻¹ : GL (Fin n) D.host.E).1 τ := by
  funext τ
  unfold bwA_N
  split_ifs with h
  · simp only [atInf]
    rw [← Matrix.map_mul, ← Units.val_mul, mul_assoc, mul_inv_cancel, mul_one]
  · rw [one_mul]

end Formalism.L2.GlobalTheoryTheory.LocalLatticeBases
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL6.LatticeInclusionOfSubIntegral =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL6.LocalBasisChangeDecompCompatible =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL6.LocalBasisChangeDecompCompatible", "h": "module\n\nimport Formalism.QuotientMetricDivisors.HermitianTwistDivisors.ImageLcv\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwDecomp\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.LatticeInclusionOfSubIntegral\npublic import Formalism.LocalRingCardinality.Lemmas\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.WeylLengthDiagonalUnitUniformiser\npublic import Formalism.SharpRestriction.GlobalSchurBounds.FiniteModelOfAdmissibleTransports\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.LocalLatticeBases

open MvPolynomial

section LenMap

theorem length_quotient_map_equiv {O M : Type*} [CommRing O] [AddCommGroup M] [Module O M] (e : M ≃ₗ[O] M)
    (A B : Submodule O M) :
    Module.length O (A.map (e : M →ₗ[O] M) ⧸ (B.map (e : M →ₗ[O] M)).comap (A.map (e : M →ₗ[O] M)).subtype) =
      Module.length O (A ⧸ B.comap A.subtype) := by
  apply Formalism.DivisionValues.imageLcv_len_map

theorem length_quotient_map_of_inverse {O M : Type*} [CommRing O] [AddCommGroup M] [Module O M] (f g : M →ₗ[O] M)
    (h1 : ∀ x, f (g x) = x) (h2 : ∀ x, g (f x) = x) (A B : Submodule O M) :
    Module.length O (A.map f ⧸ (B.map f).comap (A.map f).subtype) = Module.length O (A ⧸ B.comap A.subtype) := length_quotient_map_equiv (LinearEquiv.ofLinear f g (LinearMap.ext h1) (LinearMap.ext h2)) A B

end LenMap

section Factor

variable (O : Subring ℂ) {r n : ℕ} (hn : n ≤ r) (ν : Fin n → ℕ)

abbrev mvPolynomialRowLinearMap (g : Matrix (Fin r) (Fin r) ℂ) :
    MvPolynomial (Fin r × Fin n) ℂ →ₗ[O] MvPolynomial (Fin r × Fin n) ℂ :=
  (Formalism.GradedWeylDivisibility.rowAct ℂ g).toLinearMap.restrictScalars O

abbrev mvPolynomialScalingMap (c : ℂ) : MvPolynomial (Fin r × Fin n) ℂ →ₗ[O] MvPolynomial (Fin r × Fin n) ℂ :=
  (c • LinearMap.id : MvPolynomial (Fin r × Fin n) ℂ →ₗ[ℂ] MvPolynomial (Fin r × Fin n) ℂ).restrictScalars O

variable {O}

theorem row_action_comp (g h : Matrix (Fin r) (Fin r) ℂ) (f : MvPolynomial (Fin r × Fin n) ℂ) :
    mvPolynomialRowLinearMap O h (mvPolynomialRowLinearMap O g f) = mvPolynomialRowLinearMap O (g * h) f := by
  show Formalism.GradedWeylDivisibility.rowAct ℂ h (Formalism.GradedWeylDivisibility.rowAct ℂ g f) = Formalism.GradedWeylDivisibility.rowAct ℂ (g * h) f
  have hcomp : (Formalism.GradedWeylDivisibility.rowAct ℂ (n := n) h).comp (Formalism.GradedWeylDivisibility.rowAct ℂ (n := n) g) = Formalism.GradedWeylDivisibility.rowAct ℂ (n := n) (g * h) := by
    apply MvPolynomial.algHom_ext
    intro v

    simp only [Formalism.GradedWeylDivisibility.rowAct, AlgHom.comp_apply, MvPolynomial.aeval_X, map_sum, map_mul, MvPolynomial.aeval_C,
    MvPolynomial.algebraMap_eq, Matrix.mul_apply, Finset.mul_sum]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun c _ => ?_
    rw [Finset.sum_mul]
    refine Finset.sum_congr rfl fun b _ => ?_
    rw [mul_assoc]
  rw [← AlgHom.comp_apply, hcomp]

theorem row_action_one (f : MvPolynomial (Fin r × Fin n) ℂ) : mvPolynomialRowLinearMap O (1 : Matrix (Fin r) (Fin r) ℂ) f = f := by
  show Formalism.GradedWeylDivisibility.rowAct ℂ (1 : Matrix (Fin r) (Fin r) ℂ) f = f
  have h : Formalism.GradedWeylDivisibility.rowAct ℂ (n := n) (1 : Matrix (Fin r) (Fin r) ℂ) = AlgHom.id ℂ _ := by
    apply MvPolynomial.algHom_ext
    intro v
    simp [Formalism.GradedWeylDivisibility.rowAct, Matrix.one_apply]
  rw [h, AlgHom.id_apply]

def mvPolynomialRowLinearEquiv (g g' : Matrix (Fin r) (Fin r) ℂ) (h1 : g * g' = 1) (h2 : g' * g = 1) :
    MvPolynomial (Fin r × Fin n) ℂ ≃ₗ[O] MvPolynomial (Fin r × Fin n) ℂ :=
  LinearEquiv.ofLinear (mvPolynomialRowLinearMap O g) (mvPolynomialRowLinearMap O g')
    (LinearMap.ext fun f => by
      rw [LinearMap.comp_apply, row_action_comp, h2, row_action_one, LinearMap.id_apply])
    (LinearMap.ext fun f => by
      rw [LinearMap.comp_apply, row_action_comp, h1, row_action_one, LinearMap.id_apply])

theorem row_action_equiv_coe (g g' : Matrix (Fin r) (Fin r) ℂ) (h1 : g * g' = 1) (h2 : g' * g = 1) :
    ((mvPolynomialRowLinearEquiv (O := O) (n := n) g g' h1 h2 : _ ≃ₗ[O] _) : MvPolynomial (Fin r × Fin n) ℂ →ₗ[O] _) = mvPolynomialRowLinearMap O g := rfl

theorem weyl_span_map_elementary (K K' : Matrix (Fin r) (Fin r) ℂ) (hK : K ∈ bwA_EO O r) (hK' : K' ∈ bwA_EO O r)
    (h2 : K' * K = 1) : (bwA_span O hn ν).map (mvPolynomialRowLinearMap O K) = bwA_span O hn ν := by
  apply le_antisymm
  · rintro _ ⟨f, hf, rfl⟩
    exact bwA_span_closure O hn ν K hK f hf
  · intro f hf
    refine ⟨mvPolynomialRowLinearMap O K' f, bwA_span_closure O hn ν K' hK' f hf, ?_⟩
    show mvPolynomialRowLinearMap O K (mvPolynomialRowLinearMap O K' f) = f
    rw [row_action_comp, h2, row_action_one]

theorem weyl_span_map_unit_scalar (η : Oˣ) : (bwA_span O hn ν).map (mvPolynomialScalingMap O ((η : O) : ℂ)) = bwA_span O hn ν := by
  apply le_antisymm
  · rintro _ ⟨x, hx, rfl⟩
    show (η : O) • x ∈ bwA_span O hn ν
    exact (bwA_span O hn ν).smul_mem (η : O) hx
  · intro x hx
    refine ⟨((η⁻¹ : Oˣ) : O) • x, (bwA_span O hn ν).smul_mem _ hx, ?_⟩
    show (η : O) • (((η⁻¹ : Oˣ) : O) • x) = x
    rw [smul_smul, Units.mul_inv, one_smul]

theorem elementary_product_integral (K : Matrix (Fin r) (Fin r) ℂ) (hK : K ∈ bwA_EO O r) : bwD_Int O K := by
  induction hK using Submonoid.closure_induction with
  | mem g hg =>
    obtain ⟨a, b, c, hc, rfl⟩ := hg
    intro i j
    simp only [Matrix.add_apply, Matrix.one_apply, Matrix.single_apply]
    refine O.add_mem ?_ ?_
    · split_ifs
      · exact O.one_mem
      · exact O.zero_mem
    · split_ifs
      · exact hc
      · exact O.zero_mem
  | one =>
    intro i j
    simp only [Matrix.one_apply]
    split_ifs
    · exact O.one_mem
    · exact O.zero_mem
  | mul x y _ _ hx hy =>
    intro i j
    rw [Matrix.mul_apply]
    exact O.sum_mem fun k _ => O.mul_mem (hx i k) (hy k j)

theorem elementary_product_inv (hL : bwD_Loc O) (K : Matrix (Fin r) (Fin r) ℂ) (hK : K ∈ bwA_EO O r) (y : ℂ) (hy : y ∈ O)
    (hdet : K.det * y = 1) : ∃ K' ∈ bwA_EO O r, K * K' = 1 ∧ K' * K = 1 := by
  have hInt : bwD_Int O K := elementary_product_integral K hK
  set K' := y • K.adjugate with hK'
  have h1 : K * K' = 1 := by
    rw [hK', Matrix.mul_smul, Matrix.mul_adjugate, smul_smul, mul_comm, hdet, one_smul]
  have h2 : K' * K = 1 := by
    rw [hK', Matrix.smul_mul, Matrix.adjugate_mul, smul_smul, mul_comm, hdet, one_smul]
  have hInt' : bwD_Int O K' := fun a b => by
    rw [hK', Matrix.smul_apply, smul_eq_mul]
    exact O.mul_mem hy (bwD_Int_adj hInt a b)
  refine ⟨K', bwD_elim hL K' hInt' ⟨K, hInt, h1⟩, h1, h2⟩

theorem length_elementary_diag_elementary (K₁ K₂ K₁' K₂' Dm Dp : Matrix (Fin r) (Fin r) ℂ) (h₁ : K₁ ∈ bwA_EO O r) (h₂ : K₂ ∈ bwA_EO O r)
    (h₁' : K₁' ∈ bwA_EO O r) (h₂' : K₂' ∈ bwA_EO O r) (e12 : K₁' * K₁ = 1) (e21 : K₂ * K₂' = 1) (e22 : K₂' * K₂ = 1)
    (hDD : Dm * Dp = 1) (hDD' : Dp * Dm = 1) (c : ℂ) (hc : c ≠ 0) (η : Oˣ) :
    Module.length O (((bwA_span O hn ν).map (mvPolynomialRowLinearMap O (K₁ * Dm * K₂))).map (mvPolynomialScalingMap O c) ⧸
        ((bwA_span O hn ν).map (mvPolynomialScalingMap O (c * ((η : O) : ℂ)))).comap
          (((bwA_span O hn ν).map (mvPolynomialRowLinearMap O (K₁ * Dm * K₂))).map (mvPolynomialScalingMap O c)).subtype) =
      Module.length O (bwA_span O hn ν ⧸ ((bwA_span O hn ν).map (mvPolynomialRowLinearMap O Dp)).comap (bwA_span O hn ν).subtype) := by
  have e11 : K₁ * K₁' = 1 := by
    rw [← Matrix.inv_eq_left_inv e12]
    exact Matrix.mul_nonsing_inv _ (Matrix.isUnit_det_of_left_inverse e12)
  have hcompR : ∀ g h : Matrix (Fin r) (Fin r) ℂ,
      (mvPolynomialRowLinearMap O (n := n) h).comp (mvPolynomialRowLinearMap O g) = mvPolynomialRowLinearMap O (g * h) :=
    fun g h => LinearMap.ext fun f => row_action_comp g h f
  have hR1 : mvPolynomialRowLinearMap O (n := n) (1 : Matrix (Fin r) (Fin r) ℂ) = LinearMap.id :=
    LinearMap.ext fun f => row_action_one f
  have hSS : ∀ a b : ℂ, (mvPolynomialScalingMap O (r := r) (n := n) a).comp (mvPolynomialScalingMap O b) = mvPolynomialScalingMap O (a * b) := by
    intro a b
    refine LinearMap.ext fun f => ?_
    show a • (b • f) = (a * b) • f
    rw [smul_smul]
  have hNiN : K₂' * Dp * K₁' * (K₁ * Dm * K₂) = 1 := by
    simp only [Matrix.mul_assoc]
    rw [← Matrix.mul_assoc K₁' K₁, e12, Matrix.one_mul, ← Matrix.mul_assoc Dp Dm, hDD', Matrix.one_mul, e22]
  have hNNi : K₁ * Dm * K₂ * (K₂' * Dp * K₁') = 1 := by
    simp only [Matrix.mul_assoc]
    rw [← Matrix.mul_assoc K₂ K₂', e21, Matrix.one_mul, ← Matrix.mul_assoc Dm Dp, hDD, Matrix.one_mul, e11]
  have h1 : ∀ x, ((mvPolynomialScalingMap O c).comp (mvPolynomialRowLinearMap O (n := n) (K₁ * Dm * K₂)))
      (((mvPolynomialRowLinearMap O (n := n) (K₂' * Dp * K₁')).comp (mvPolynomialScalingMap O c⁻¹)) x) = x := by
    intro x
    show mvPolynomialScalingMap O c (mvPolynomialRowLinearMap O (K₁ * Dm * K₂) (mvPolynomialRowLinearMap O (K₂' * Dp * K₁') (mvPolynomialScalingMap O c⁻¹ x))) = x
    rw [row_action_comp, hNiN, row_action_one]
    show c • (c⁻¹ • x) = x
    rw [smul_smul, mul_inv_cancel₀ hc, one_smul]
  have h2 : ∀ x, ((mvPolynomialRowLinearMap O (n := n) (K₂' * Dp * K₁')).comp (mvPolynomialScalingMap O c⁻¹))
      (((mvPolynomialScalingMap O c).comp (mvPolynomialRowLinearMap O (n := n) (K₁ * Dm * K₂))) x) = x := by
    intro x
    show mvPolynomialRowLinearMap O (K₂' * Dp * K₁') (mvPolynomialScalingMap O c⁻¹ (mvPolynomialScalingMap O c (mvPolynomialRowLinearMap O (K₁ * Dm * K₂) x))) = x
    have hcc : mvPolynomialScalingMap O c⁻¹ (mvPolynomialScalingMap O c (mvPolynomialRowLinearMap O (n := n) (K₁ * Dm * K₂) x)) = mvPolynomialRowLinearMap O (K₁ * Dm * K₂) x := by
      show c⁻¹ • (c • mvPolynomialRowLinearMap O (n := n) (K₁ * Dm * K₂) x) = mvPolynomialRowLinearMap O (n := n) (K₁ * Dm * K₂) x
      rw [smul_smul, inv_mul_cancel₀ hc, one_smul]
    rw [hcc, row_action_comp, hNNi, row_action_one]
  have hA : ((bwA_span O hn ν).map (mvPolynomialRowLinearMap O (K₁ * Dm * K₂))).map (mvPolynomialScalingMap O c) =
      (bwA_span O hn ν).map ((mvPolynomialScalingMap O c).comp (mvPolynomialRowLinearMap O (n := n) (K₁ * Dm * K₂))) := by
    rw [Submodule.map_comp]
  have hB : (bwA_span O hn ν).map (mvPolynomialScalingMap O (c * ((η : O) : ℂ))) =
      ((bwA_span O hn ν).map (mvPolynomialRowLinearMap O (n := n) (K₂' * Dp * K₁'))).map
        ((mvPolynomialScalingMap O c).comp (mvPolynomialRowLinearMap O (n := n) (K₁ * Dm * K₂))) := by
    rw [← Submodule.map_comp]
    have hF : ((mvPolynomialScalingMap O c).comp (mvPolynomialRowLinearMap O (n := n) (K₁ * Dm * K₂))).comp (mvPolynomialRowLinearMap O (n := n) (K₂' * Dp * K₁')) =
        mvPolynomialScalingMap O c := by
      rw [LinearMap.comp_assoc, hcompR, hNiN, hR1, LinearMap.comp_id]
    rw [hF, ← hSS, Submodule.map_comp, weyl_span_map_unit_scalar hn ν η]
  rw [hA, hB, length_quotient_map_of_inverse _ _ h1 h2]
  have hRNi : (bwA_span O hn ν).map (mvPolynomialRowLinearMap O (n := n) (K₂' * Dp * K₁')) =
      ((bwA_span O hn ν).map (mvPolynomialRowLinearMap O Dp)).map (mvPolynomialRowLinearMap O K₁') := by
    have hc3 : mvPolynomialRowLinearMap O (n := n) (K₂' * Dp * K₁') = (mvPolynomialRowLinearMap O K₁').comp ((mvPolynomialRowLinearMap O Dp).comp (mvPolynomialRowLinearMap O K₂')) := by
      rw [hcompR, hcompR]
    rw [hc3, Submodule.map_comp, Submodule.map_comp, weyl_span_map_elementary hn ν K₂' K₂ h₂' h₂ e21]
  rw [hRNi]
  have hfix : (bwA_span O hn ν).map (mvPolynomialRowLinearMap O (n := n) K₁') = bwA_span O hn ν := weyl_span_map_elementary hn ν K₁' K₁ h₁' h₁ e11
  have hlen := length_quotient_map_equiv (mvPolynomialRowLinearEquiv (O := O) (n := n) K₁' K₁ e12 e11) (bwA_span O hn ν)
    ((bwA_span O hn ν).map (mvPolynomialRowLinearMap O Dp))
  rw [row_action_equiv_coe, hfix] at hlen
  exact hlen

theorem diagonal_update_inv (j : Fin r) (p : ℂ) (hp0 : p ≠ 0) :
    Matrix.diagonal (Function.update (1 : Fin r → ℂ) j p⁻¹) * Matrix.diagonal (Function.update 1 j p) = 1 ∧
    Matrix.diagonal (Function.update (1 : Fin r → ℂ) j p) * Matrix.diagonal (Function.update 1 j p⁻¹) = 1 := by
  constructor <;> rw [Matrix.diagonal_mul_diagonal, ← Matrix.diagonal_one] <;> congr 1 <;> funext i <;>
    by_cases hi : i = j <;> simp [hi, hp0]

theorem length_factor_elementary_diag (hν : Antitone ν) [IsDiscreteValuationRing O] (hL : bwD_Loc O) (ϖ : O) (hϖ : Irreducible ϖ)
    (ε : Oˣ) (a : ℕ) (j : Fin r) (K₁ K₂ : Matrix (Fin r) (Fin r) ℂ) (h₁ : K₁ ∈ bwA_EO O r) (h₂ : K₂ ∈ bwA_EO O r)
    (hK : K₁.det * K₂.det = 1) (c : ℂ) (hc : c ≠ 0) (η : Oˣ) :
    ∃ N : ℕ, Module.length O (((bwA_span O hn ν).map
          (mvPolynomialRowLinearMap O (K₁ * Matrix.diagonal (Function.update 1 j (((ε : O) * ϖ ^ a : O) : ℂ)⁻¹) * K₂))).map (mvPolynomialScalingMap O c) ⧸
        ((bwA_span O hn ν).map (mvPolynomialScalingMap O (c * ((η : O) : ℂ)))).comap
          (((bwA_span O hn ν).map
            (mvPolynomialRowLinearMap O (K₁ * Matrix.diagonal (Function.update 1 j (((ε : O) * ϖ ^ a : O) : ℂ)⁻¹) * K₂))).map
              (mvPolynomialScalingMap O c)).subtype) = N ∧
      r * N = a * Module.finrank ℤ (Formalism.GradedWeylDivisibility.weyl ℤ r n hn ν) * ∑ b, Formalism.GradedWeylDivisibility.rowNu (r := r) ν b := by
  have hp0 : (((ε : O) * ϖ ^ a : O) : ℂ) ≠ 0 := by
    intro h
    have h' : ((ε : O) * ϖ ^ a : O) = 0 := Subtype.ext h
    rcases mul_eq_zero.1 h' with h'' | h''
    · exact ε.ne_zero h''
    · exact hϖ.ne_zero (pow_eq_zero_iff'.1 h'' |>.1)
  obtain ⟨hDD, hDD'⟩ := diagonal_update_inv j _ hp0
  obtain ⟨K₁', h₁', -, e12⟩ :=
    elementary_product_inv hL K₁ h₁ K₂.det (bwD_det_mem (elementary_product_integral K₂ h₂)) hK
  obtain ⟨K₂', h₂', e21, e22⟩ :=
    elementary_product_inv hL K₂ h₂ K₁.det (bwD_det_mem (elementary_product_integral K₁ h₁)) (by rw [mul_comm]; exact hK)
  rw [length_elementary_diag_elementary hn ν K₁ K₂ K₁' K₂' _ _ h₁ h₂ h₁' h₂' e12 e21 e22 hDD hDD' c hc η]
  exact weyl_length_diagonal_unit_uniformiser hn ν hν ℂ O ϖ hϖ ε j a

end Factor

section Tied

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms NumberField
open scoped Matrix

theorem local_ring_is_dvr (D : D7) (w : D.what₂.places.Pl) : IsDiscreteValuationRing (bwA_Ow D w) := by
  haveI := D.intW_dvr w
  let e : intW D.what₂.places w ≃+* bwA_Ow D w :=
    (intW D.what₂.places w).equivMapOfInjective D.what₂.embLL D.what₂.embLL.injective
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible (intW D.what₂.places w)
  refine IsDiscreteValuationRing.ofHasUnitMulPowIrreducibleFactorization ⟨e ϖ, ?_, ?_⟩
  · exact (MulEquiv.irreducible_iff e).2 hϖ
  · intro y hy
    have hx : e.symm y ≠ 0 := fun h => hy (by simpa using congrArg e h)
    obtain ⟨n, v, hv⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hx hϖ
    refine ⟨n, Units.map (e : intW D.what₂.places w →* bwA_Ow D w) v, ?_⟩
    have h2 := congrArg e hv
    rw [RingEquiv.apply_symm_apply, map_mul, map_pow] at h2
    rw [h2, mul_comm, Units.coe_map]
    rfl

variable (D : D7) (u : D.what₂.Word)

theorem local_basis_change_decomp (A : AtTTied u) (w : D.what₂.places.Pl) (hw : OverT D u w) (v : (D.mem u).A.vT)
    (i : ℕ) (hi : i ≤ D.R.m) (Lv : LvTied u A i hi) (c : (D.mem u).C.cls i)
    (hLc0 : clsCrd D u i hi c ≤ Ld D u i hi c) (B B' : GL (Fin (D.R.N i)) D.host.E)
    (hB : IsLocBasis (D.mem u).A.T (Ld D u i hi c : Set _) B)
    (hB' : IsLocBasis (D.mem u).A.T (Lk A i hi v c : Set _) B')
    (hunit : ((((B⁻¹ * B' : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E)).map
        (embT D ((D.fm u).tauOf w v))).det * (((D.mem u).A.T : ℂ))⁻¹ ∈ bwA_Ow D w ∧
      ((D.mem u).A.T : ℂ) * (((((B⁻¹ * B' : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E)).map
        (embT D ((D.fm u).tauOf w v))).det)⁻¹ ∈ bwA_Ow D w) :
    ∃ (K₁ K₂ : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) ℂ) (j : Fin (D.R.N i)) (ϖ : bwA_Ow D w)
      (ε η : (bwA_Ow D w)ˣ), Irreducible ϖ ∧
      K₁ ∈ bwA_EO (bwA_Ow D w) (D.R.N i) ∧ K₂ ∈ bwA_EO (bwA_Ow D w) (D.R.N i) ∧ K₁.det * K₂.det = 1 ∧
      ((D.mem u).A.T : ℂ) = ((η : bwA_Ow D w) : ℂ) *
        (((ε : bwA_Ow D w) * ϖ ^ D.what₂.places.ramIdx w : bwA_Ow D w) : ℂ) ∧
      bwA_N D ((D.fm u).tauOf w v) B B' ((D.fm u).tauOf w v) =
        K₁ * Matrix.diagonal (Function.update 1 j
          ((((ε : bwA_Ow D w) * ϖ ^ D.what₂.places.ramIdx w : bwA_Ow D w) : ℂ))⁻¹) * K₂ := by
  have hLk : Lk A i hi v c ≤ Ld D u i hi c := sup_le hLc0 Submodule.smul_le_right
  have hNe : bwA_N D ((D.fm u).tauOf w v) B B' ((D.fm u).tauOf w v) =
      (((B'⁻¹ * B : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E)).map
        (embT D ((D.fm u).tauOf w v)) := by
    simp only [bwA_N, atInf, ↓reduceIte]
  rw [hNe]
  set σ := embT D ((D.fm u).tauOf w v) with hσ
  set N := (((B'⁻¹ * B : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E)).map σ
    with hNdef
  set M := (((B⁻¹ * B' : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E)).map σ
    with hMdef
  set colB : Fin (D.R.N i) → Fin (D.R.N i) → D.host.E :=
    fun k r => (B : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) r k with hcolB
  have hNa : ∀ a k, N a k = σ ((((B'⁻¹ : GL (Fin (D.R.N i)) D.host.E) : Matrix _ _ D.host.E) *ᵥ colB k) a) := by
    intro a k; rw [hcolB, bwD_mulVec_col, ← Units.val_mul]; rfl
  have hNM : N * M = 1 := by
    rw [hNdef, hMdef, ← Matrix.map_mul, ← Units.val_mul,
      show B'⁻¹ * B * (B⁻¹ * B') = 1 by group, Units.val_one, Matrix.map_one _ (map_zero σ) (map_one σ)]
  have hMI : bwD_Int (bwA_Ow D w) M := by
    intro a k
    obtain ⟨s, hs, hsL⟩ := bwD_col_loc D u w hw hB' k
    have := bwD_locBasis_int D u w hw ((D.fm u).tauOf w v) hB _ s hs (hLk hsL) a
    rw [bwD_mulVec_col, ← Units.val_mul] at this
    exact this
  choose sB hsB hsBL using fun k => bwD_col_loc D u w hw hB k
  have hT0 : ∀ k, (sB k : D.host.E) ≠ 0 := fun k => Nat.cast_ne_zero.2 (fun h => hsB k (h ▸ dvd_zero _))
  have htN : ∀ a b, ((D.mem u).A.T : ℂ) * N a b ∈ bwA_Ow D w := by
    intro a b
    have hL : (sB b : D.host.E) • (((D.mem u).A.T : D.host.E) • colB b) ∈ (Lk A i hi v c : Set _) := by
      rw [smul_comm]
      have := bwA_T_smul_Ld_mem_Lk D u A i hi v c _ (hsBL b)
      rw [Nat.cast_smul_eq_nsmul, ← Nat.cast_smul_eq_nsmul D.host.E] at this
      exact this
    have := bwD_locBasis_int D u w hw ((D.fm u).tauOf w v) hB' _ (sB b) (hsB b) hL a
    rw [Matrix.mulVec_smul, Pi.smul_apply, smul_eq_mul, map_mul, map_natCast] at this
    rw [hNa]; exact this
  obtain ⟨j, av, hav, hcol⟩ : ∃ (j : Fin (D.R.N i)) (av : Fin (D.R.N i) → ℂ), (∀ k, av k ∈ bwA_Ow D w) ∧
      ∀ k, k ≠ j → ∀ a, N a k - N a j * av k ∈ bwA_Ow D w := by
    set φ : Fin (D.R.N i) → (D.mem u).A.Fv v := fun k => (D.fm u).fv i v c (Lv.pr v c ⟨_, hsBL k⟩) with hφ
    by_cases hex : ∃ j, φ j ≠ 0
    · obtain ⟨j, hj⟩ := hex
      choose α hα using fun k => A.res_surj v (φ k / φ j)
      refine ⟨j, fun k => σ ((α k : D.host.E) * (sB j : D.host.E) / (sB k : D.host.E)), fun k => ?_, fun k _ a => ?_⟩
      · refine bwD_mem_Ow D u w hw _ _ (sB k) (hsB k) ⟨α k * (sB j : 𝓞 D.host.E), ?_⟩
        rw [map_mul, map_natCast]; field_simp [hT0 k]
      · set q : D.host.E := (α k : D.host.E) * (sB j : D.host.E) / (sB k : D.host.E) with hq
        have hz : (D.fm u).fv i v c (Lv.pr v c (⟨_, hsBL k⟩ - α k • ⟨_, hsBL j⟩)) = 0 := by
          rw [map_sub, map_sub, Lv.pr_smul, map_smul, hα k, smul_eq_mul, div_mul_cancel₀ _ hj, sub_self]
        have hzL := (Lv.fv_ker v c _).1 hz
        have hx : (sB k : D.host.E) • (colB k - q • colB j) ∈ (Lk A i hi v c : Set _) := by
          have e : (sB k : D.host.E) • (colB k - q • colB j) =
              ((⟨_, hsBL k⟩ - α k • ⟨_, hsBL j⟩ : Ld D u i hi c) : Fin (D.R.N i) → D.host.E) := by
            ext r
            simp only [Submodule.coe_sub, Submodule.coe_smul, Pi.sub_apply, Pi.smul_apply, smul_eq_mul, hq]
            rw [Algebra.smul_def]
            field_simp [hT0 k]
            ring
          rw [e]; exact hzL
        have := bwD_locBasis_int D u w hw ((D.fm u).tauOf w v) hB' _ (sB k) (hsB k) hx a
        rw [Matrix.mulVec_sub, Matrix.mulVec_smul, Pi.sub_apply, Pi.smul_apply, smul_eq_mul, map_sub, map_mul] at this
        rw [hNa, hNa, mul_comm (σ _)]; exact this
    · push Not at hex
      refine ⟨⟨0, D.R.N_pos i⟩, 0, fun _ => (bwA_Ow D w).zero_mem, fun k _ a => ?_⟩
      rw [Pi.zero_apply, mul_zero, sub_zero, hNa]
      exact bwD_locBasis_int D u w hw ((D.fm u).tauOf w v) hB' _ (sB k) (hsB k)
        ((Lv.fv_ker v c _).1 (hex k)) a
  obtain ⟨K₁, K₂, hK₁, hK₂, hpO, hp0, hdet, -, hdec⟩ :=
    bwD_decomp (bwD_loc_Ow D w) N M _ hMI hNM htN j av hav hcol

  have hKK : K₁.det * K₂.det = 1 := by
    have h1 := congrArg Matrix.det hdec
    rw [Matrix.det_mul, Matrix.det_mul, Matrix.det_diagonal,
      Finset.prod_update_of_mem (Finset.mem_univ j)] at h1
    simp only [Pi.one_apply, Finset.prod_const_one, mul_one] at h1
    rw [h1] at hdet
    have : K₁.det * M.det⁻¹ * K₂.det * M.det = K₁.det * K₂.det := by field_simp
    rw [← this]; exact hdet

  obtain ⟨ϖ₀, hϖ₀, ε₀, hT⟩ := Formalism.MainNotions.product_first_zeroth_parts.exists_unif (D := D) (u := u) w hw
  let e : intW D.what₂.places w ≃+* bwA_Ow D w :=
    (intW D.what₂.places w).equivMapOfInjective D.what₂.embLL D.what₂.embLL.injective
  have hTne : ((D.mem u).A.T : ℂ) ≠ 0 := Nat.cast_ne_zero.2 (D.mem u).A.T_prime.ne_zero
  obtain ⟨h1, h2⟩ := hunit
  let uu : (bwA_Ow D w)ˣ :=
    { val := ⟨M.det * ((D.mem u).A.T : ℂ)⁻¹, h1⟩
      inv := ⟨((D.mem u).A.T : ℂ) * M.det⁻¹, h2⟩
      val_inv := by apply Subtype.ext; show M.det * ((D.mem u).A.T : ℂ)⁻¹ * (((D.mem u).A.T : ℂ) * M.det⁻¹) = 1
                    field_simp
      inv_val := by apply Subtype.ext; show ((D.mem u).A.T : ℂ) * M.det⁻¹ * (M.det * ((D.mem u).A.T : ℂ)⁻¹) = 1
                    field_simp }
  have hTe : ((D.mem u).A.T : ℂ) = (((Units.map (e : intW D.what₂.places w →* bwA_Ow D w) ε₀ : bwA_Ow D w) *
      (e ϖ₀) ^ D.what₂.places.ramIdx w : bwA_Ow D w) : ℂ) := by
    have h3 := congrArg (fun x => ((e x : bwA_Ow D w) : ℂ)) hT
    simp only [map_mul, map_pow, map_natCast] at h3
    rw [Units.coe_map]
    exact_mod_cast h3
  have hval : (((uu * Units.map (e : intW D.what₂.places w →* bwA_Ow D w) ε₀ : (bwA_Ow D w)ˣ) : bwA_Ow D w) *
      (e ϖ₀) ^ D.what₂.places.ramIdx w : bwA_Ow D w) = M.det := by
    rw [Units.val_mul, mul_assoc, Subring.coe_mul, ← hTe]
    show M.det * ((D.mem u).A.T : ℂ)⁻¹ * ((D.mem u).A.T : ℂ) = M.det
    field_simp
  refine ⟨K₁, K₂, j, e ϖ₀, uu * Units.map (e : intW D.what₂.places w →* bwA_Ow D w) ε₀, uu⁻¹,
    (MulEquiv.irreducible_iff e).2 hϖ₀, hK₁, hK₂, hKK, ?_, ?_⟩
  · rw [hval]
    show ((D.mem u).A.T : ℂ) = ((D.mem u).A.T : ℂ) * M.det⁻¹ * M.det
    field_simp
  · rw [hval]
    exact hdec

theorem length_factor_local_basis (A : AtTTied u) (w : D.what₂.places.Pl) (hw : OverT D u w)
    (v : (D.mem u).A.vT) (Lv : LvTied u A 0 (Nat.zero_le _)) (c : (D.mem u).C.cls 0)
    (hLc0 : clsCrd D u 0 (Nat.zero_le _) c ≤ Ld D u 0 (Nat.zero_le _) c) (B B' : GL (Fin (D.R.N 0)) D.host.E)
    (hB : IsLocBasis (D.mem u).A.T (Ld D u 0 (Nat.zero_le _) c : Set _) B)
    (hB' : IsLocBasis (D.mem u).A.T (Lk A 0 (Nat.zero_le _) v c : Set _) B')
    (hunit : ((((B⁻¹ * B' : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)).map
        (embT D ((D.fm u).tauOf w v))).det * (((D.mem u).A.T : ℂ))⁻¹ ∈ bwA_Ow D w ∧
      ((D.mem u).A.T : ℂ) * (((((B⁻¹ * B' : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)).map
        (embT D ((D.fm u).tauOf w v))).det)⁻¹ ∈ bwA_Ow D w)
    (Nτ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) ℂ)
    (hN : Nτ = bwA_N D ((D.fm u).tauOf w v) B B' ((D.fm u).tauOf w v)) :
    ∃ n : ℕ, Module.length (bwA_Ow D w)
      (((bwA_span (bwA_Ow D w) le_rfl ((D.fm u).lam 0 ((D.fm u).tauOf w v)).natW).map (mvPolynomialRowLinearMap (bwA_Ow D w) Nτ)).map
          (mvPolynomialScalingMap (bwA_Ow D w) (Nτ.det ^ ((D.fm u).lam 0 ((D.fm u).tauOf w v)).detShift)) ⧸
        ((bwA_span (bwA_Ow D w) le_rfl ((D.fm u).lam 0 ((D.fm u).tauOf w v)).natW).map
          (mvPolynomialScalingMap (bwA_Ow D w) (((D.mem u).A.T : ℂ) ^ (D.fm u).bTop ((D.fm u).tauOf w v)))).comap
          (((bwA_span (bwA_Ow D w) le_rfl ((D.fm u).lam 0 ((D.fm u).tauOf w v)).natW).map
            (mvPolynomialRowLinearMap (bwA_Ow D w) Nτ)).map
              (mvPolynomialScalingMap (bwA_Ow D w) (Nτ.det ^ ((D.fm u).lam 0 ((D.fm u).tauOf w v)).detShift))).subtype) = n ∧
      (D.R.k : ℚ) * n = (D.what₂.places.ramIdx w : ℚ) *
        (Module.finrank ℤ (delSq ℤ (D.R.N 0) ((D.fm u).lam 0 ((D.fm u).tauOf w v))) : ℚ) *
        ((wsum ((D.fm u).lam 0 ((D.fm u).tauOf w v)) : ℚ) + (D.R.k : ℚ) * ((D.fm u).bTop ((D.fm u).tauOf w v) : ℚ)) := by
  haveI := local_ring_is_dvr D w
  obtain ⟨K₁, K₂, j, ϖ, ε, η, hϖ, h₁, h₂, hKK, hTη, hdec⟩ :=
    local_basis_change_decomp D u A w hw v 0 (Nat.zero_le _) Lv c hLc0 B B' hB hB' hunit
  set lam := (D.fm u).lam 0 ((D.fm u).tauOf w v) with hlam
  set p : ℂ := (((ε : bwA_Ow D w) * ϖ ^ D.what₂.places.ramIdx w : bwA_Ow D w) : ℂ) with hp
  have hp0 : p ≠ 0 := by
    rw [hp]
    intro h
    have h' : ((ε : bwA_Ow D w) * ϖ ^ D.what₂.places.ramIdx w : bwA_Ow D w) = 0 := Subtype.ext h
    rcases mul_eq_zero.1 h' with h'' | h''
    · exact ε.ne_zero h''
    · exact hϖ.ne_zero (pow_eq_zero_iff'.1 h'' |>.1)
  have hNe : Nτ = K₁ * Matrix.diagonal (Function.update 1 j p⁻¹) * K₂ := by rw [hN, hdec]
  have hdetN : Nτ.det = p⁻¹ := by
    rw [hNe, Matrix.det_mul, Matrix.det_mul, Matrix.det_diagonal, Finset.prod_update_of_mem (Finset.mem_univ j)]
    simp only [Pi.one_apply, Finset.prod_const_one, mul_one]
    linear_combination p⁻¹ * hKK
  set s := lam.detShift with hsdef
  have hb : (D.fm u).bTop ((D.fm u).tauOf w v) = -s := rfl

  let f : (bwA_Ow D w)ˣ →* ℂˣ := Units.map ((bwA_Ow D w).subtype : bwA_Ow D w →* ℂ)
  set η' : (bwA_Ow D w)ˣ := η ^ (-s) with hη'
  have hη'c : (((η' : bwA_Ow D w)) : ℂ) = (((η : bwA_Ow D w)) : ℂ) ^ (-s) := by
    have e1 : (((η' : bwA_Ow D w)) : ℂ) = ((f η' : ℂˣ) : ℂ) := rfl
    have e2 : (((η : bwA_Ow D w)) : ℂ) = ((f η : ℂˣ) : ℂ) := rfl
    rw [e1, e2, hη', map_zpow, Units.val_zpow_eq_zpow_val]
  have hT : (((D.mem u).A.T : ℂ)) ^ (D.fm u).bTop ((D.fm u).tauOf w v) =
      Nτ.det ^ s * (((η' : bwA_Ow D w)) : ℂ) := by
    rw [hb, hTη, hdetN, hη'c, mul_zpow, inv_zpow', mul_comm]
  have hc0 : Nτ.det ^ s ≠ 0 := zpow_ne_zero _ (by rw [hdetN]; exact inv_ne_zero hp0)
  rw [hT, show mvPolynomialRowLinearMap (bwA_Ow D w) (n := D.R.N 0) Nτ =
      mvPolynomialRowLinearMap (bwA_Ow D w) (K₁ * Matrix.diagonal (Function.update 1 j p⁻¹) * K₂) by rw [hNe]]
  obtain ⟨n, hn, hrn⟩ := length_factor_elementary_diag (O := bwA_Ow D w) le_rfl lam.natW (dominant_natWeight_antitone lam) (bwD_loc_Ow D w) ϖ hϖ
    ε (D.what₂.places.ramIdx w) j K₁ K₂ h₁ h₂ hKK (Nτ.det ^ s) hc0 η'
  refine ⟨n, hn, ?_⟩
  have hk : D.R.N 0 = D.R.k := D.R.N_zero
  have hsum := dominant_natWeight_sum lam
  simp only [rowNu_self_alt] at hrn
  have hq : (D.R.N 0 : ℚ) * n = (D.what₂.places.ramIdx w : ℚ) *
      (Module.finrank ℤ (Formalism.GradedWeylDivisibility.weyl ℤ (D.R.N 0) (D.R.N 0) le_rfl lam.natW) : ℚ) * ((∑ a, lam.natW a : ℕ) : ℚ) := by
    exact_mod_cast hrn
  have hsumQ : ((∑ a, lam.natW a : ℕ) : ℚ) = ((∑ a, lam.w a : ℤ) : ℚ) - (D.R.N 0 : ℚ) * s := by exact_mod_cast hsum
  rw [hsumQ] at hq
  have hdel : delSq ℤ (D.R.N 0) lam = Formalism.GradedWeylDivisibility.weyl ℤ (D.R.N 0) (D.R.N 0) le_rfl lam.natW := rfl
  rw [hdel, hb, ← hk, hq]
  simp only [wsum]
  push_cast
  ring

end Tied

end Formalism.L2.GlobalTheoryTheory.LocalLatticeBases
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL6.LocalBasisChangeDecompCompatible =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL6.LinearIndependentProdRenameOfCard =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL6.LinearIndependentProdRenameOfCard", "h": "module\n\npublic import Mathlib.GroupTheory.GroupAction.Ring\npublic import Mathlib.RingTheory.Length\npublic import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\npublic import Mathlib.RingTheory.Flat.Domain\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.RingTheory.TensorProduct.MvPolynomial\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.LocalLatticeBases

open MvPolynomial

variable {K : Type*} [Field K] {S₁ S₂ : Type*}

theorem sumAlgEquiv_rename_inl (a : MvPolynomial S₁ K) :
    sumAlgEquiv K S₁ S₂ (rename Sum.inl a) = map (C : K →+* MvPolynomial S₂ K) a := by
  have h := AlgHom.congr_fun (sumAlgEquiv_comp_rename_inl K S₁ S₂) a
  simpa [MvPolynomial.algebraMap_eq] using h

theorem sumAlgEquiv_rename_inr_eq_C' (b : MvPolynomial S₂ K) :
    sumAlgEquiv K S₁ S₂ (rename Sum.inr b) = C b := by
  have h := AlgHom.congr_fun (sumAlgEquiv_comp_rename_inr K S₁ S₂) b
  simpa [MvPolynomial.algebraMap_eq] using h

def mvPolynomialCoeffInFirstVariables (m : S₁ →₀ ℕ) : MvPolynomial (S₁ ⊕ S₂) K →ₗ[K] MvPolynomial S₂ K :=
  (lcoeff (MvPolynomial S₂ K) m).restrictScalars K ∘ₗ (sumAlgEquiv K S₁ S₂).toLinearMap

theorem leftCoeff_rename_mul (m : S₁ →₀ ℕ) (a : MvPolynomial S₁ K) (b : MvPolynomial S₂ K) :
    mvPolynomialCoeffInFirstVariables m (rename Sum.inl a * rename Sum.inr b) = AddMonoidAlgebra.coeff a m • b := by
  simp only [mvPolynomialCoeffInFirstVariables, LinearMap.comp_apply, AlgEquiv.toLinearMap_apply, LinearMap.restrictScalars_apply,
    lcoeff_apply, map_mul, sumAlgEquiv_rename_inl, sumAlgEquiv_rename_inr_eq_C']
  rw [mul_comm, coeff_C_mul, coeff_map, smul_eq_C_mul, mul_comm]

theorem linearIndependent_rename_mul {κ₁ κ₂ : Type*} (v : κ₁ → MvPolynomial S₁ K) (w : κ₂ → MvPolynomial S₂ K)
    (hv : LinearIndependent K v) (hw : LinearIndependent K w) :
    LinearIndependent K fun p : κ₁ × κ₂ => rename Sum.inl (v p.1) * rename Sum.inr (w p.2) := by
  have h := (hw.tmul_of_isDomain hv).comp Prod.swap Prod.swap_injective
  let e : TensorProduct K (MvPolynomial S₂ K) (MvPolynomial S₁ K) ≃ₗ[K] MvPolynomial (S₁ ⊕ S₂) K :=
    ((algebraTensorAlgEquiv K (MvPolynomial S₂ K) (σ := S₁)).restrictScalars K).toLinearEquiv.trans
      (sumAlgEquiv K S₁ S₂).symm.toLinearEquiv
  have he : ∀ p : κ₁ × κ₂, e (TensorProduct.tmul K (w p.2) (v p.1)) =
      rename Sum.inl (v p.1) * rename Sum.inr (w p.2) := by
    intro p
    apply (sumAlgEquiv K S₁ S₂).injective
    simp [e, algebraTensorAlgEquiv_tmul, sumAlgEquiv_rename_inl, sumAlgEquiv_rename_inr_eq_C', smul_eq_C_mul, MvPolynomial.algebraMap_eq,
      mul_comm]
  have h2 := h.map' e.toLinearMap e.ker
  simpa only [Function.comp_def, Prod.fst_swap, Prod.snd_swap, LinearEquiv.coe_coe, he] using h2

def sumComplementToProduct {ι σ : Type} (i : ι) : σ ⊕ ({j // j ≠ i} × σ) → ι × σ :=
  Sum.elim (fun x => (i, x)) (fun p => (p.1.1, p.2))

theorem splitIndex_injective {ι σ : Type} (i : ι) : Function.Injective (sumComplementToProduct (σ := σ) i) := by
  intro x y h
  rcases x with x | ⟨⟨j, hj⟩, x⟩ <;> rcases y with y | ⟨⟨j', hj'⟩, y⟩ <;>
    simp only [sumComplementToProduct, Sum.elim_inl, Sum.elim_inr, Prod.mk.injEq] at h
  all_goals first
    | exact absurd h.1.symm hj'
    | exact absurd h.1 hj
    | simp_all

theorem linearIndependent_prod_rename_of_card (n : ℕ) : ∀ (ι : Type) [Fintype ι] [DecidableEq ι], Fintype.card ι = n →
    ∀ {σ : Type} (κ : ι → Type) (b : ∀ τ, κ τ → MvPolynomial σ K), (∀ τ, LinearIndependent K (b τ)) →
    LinearIndependent K (fun g : (∀ τ, κ τ) => ∏ τ, rename (Prod.mk τ) (b τ (g τ))) := by
  induction n with
  | zero =>
    intro ι _ _ hι σ κ b hb
    haveI : IsEmpty ι := Fintype.card_eq_zero_iff.1 hι
    haveI : Unique (∀ τ, κ τ) := Pi.uniqueOfIsEmpty κ
    rw [linearIndependent_unique_iff]
    simp
  | succ n ih =>
    intro ι _ _ hι σ κ b hb
    obtain ⟨τ₀⟩ : Nonempty ι := Fintype.card_pos_iff.1 (by omega)
    have hcard : Fintype.card {τ // τ ≠ τ₀} = n := by
      rw [Fintype.card_subtype_compl, Fintype.card_subtype_eq, hι]; omega
    have hW := ih {τ // τ ≠ τ₀} hcard (fun τ => κ τ.1) (fun τ => b τ.1) (fun τ => hb τ.1)
    have hP := linearIndependent_rename_mul (b τ₀) _ (hb τ₀) hW
    have hR := hP.map' (rename (sumComplementToProduct (σ := σ) τ₀)).toLinearMap
      (LinearMap.ker_eq_bot.2 (rename_injective _ (splitIndex_injective τ₀)))
    have h2 := hR.comp (Equiv.piSplitAt τ₀ κ) (Equiv.piSplitAt τ₀ κ).injective
    have key : ∀ g : (∀ τ, κ τ), ∏ τ, rename (Prod.mk τ) (b τ (g τ)) =
        rename (sumComplementToProduct (σ := σ) τ₀) (rename Sum.inl (b τ₀ (g τ₀)) *
          rename Sum.inr (∏ τ : {τ // τ ≠ τ₀}, rename (Prod.mk τ) (b τ.1 (g τ.1)))) := by
      intro g
      simp only [map_mul, map_prod, rename_rename]
      rw [Fintype.prod_eq_mul_prod_subtype_ne _ τ₀]
      rfl
    have hfun : (fun g : (∀ τ, κ τ) => ∏ τ, rename (Prod.mk τ) (b τ (g τ))) =
        ((rename (sumComplementToProduct (σ := σ) τ₀)).toLinearMap ∘ (fun p : κ τ₀ × (∀ τ : {τ // τ ≠ τ₀}, κ τ.1) =>
          rename Sum.inl (b τ₀ p.1) * rename Sum.inr (∏ τ : {τ // τ ≠ τ₀}, rename (Prod.mk τ) (b τ.1 (p.2 τ))))) ∘
          (Equiv.piSplitAt τ₀ κ) := by
      funext g
      rw [key g]
      rfl
    rw [hfun]
    exact h2

theorem linearIndependent_prod_rename_of_forall {ι σ : Type} [Fintype ι] [DecidableEq ι] (κ : ι → Type) (b : ∀ τ, κ τ → MvPolynomial σ K)
    (hb : ∀ τ, LinearIndependent K (b τ)) :
    LinearIndependent K (fun g : (∀ τ, κ τ) => ∏ τ, rename (Prod.mk τ) (b τ (g τ))) := by
  exact linearIndependent_prod_rename_of_card _ ι rfl κ b hb

section Len

theorem length_quot_map_of_injective {O M M' : Type*} [CommRing O] [AddCommGroup M] [Module O M] [AddCommGroup M'] [Module O M']
    (f : M →ₗ[O] M') (hf : Function.Injective f) (A B : Submodule O M) :
    Module.length O (A.map f ⧸ (B.map f).comap (A.map f).subtype) = Module.length O (A ⧸ B.comap A.subtype) := by
  have h : (B.comap A.subtype).map (Submodule.equivMapOfInjective f hf A : A →ₗ[O] A.map f) =
      (B.map f).comap (A.map f).subtype := by
    ext ⟨y, hy⟩
    simp only [Submodule.mem_map, Submodule.mem_comap, Submodule.subtype_apply]
    constructor
    · rintro ⟨⟨x, hxA⟩, hxB, hx⟩
      refine ⟨x, hxB, ?_⟩
      have hx' := congrArg Subtype.val hx
      exact hx'
    · rintro ⟨x, hxB, rfl⟩
      obtain ⟨x', hx'A, hx'⟩ := Submodule.mem_map.1 hy
      have hxx : x' = x := hf hx'
      subst hxx
      exact ⟨⟨x', hx'A⟩, hxB, Subtype.ext rfl⟩
  exact (Submodule.Quotient.equiv _ _ (Submodule.equivMapOfInjective f hf A) h).length_eq.symm

theorem length_quot_pi_const {O M : Type*} [CommRing O] [AddCommGroup M] [Module O M] (G : Type*) [Fintype G] [DecidableEq G]
    (A B : Submodule O M) :
    Module.length O ((Submodule.pi Set.univ fun _ : G => A) ⧸
        (Submodule.pi Set.univ fun _ : G => B).comap (Submodule.pi Set.univ fun _ : G => A).subtype) =
      Fintype.card G • Module.length O (A ⧸ B.comap A.subtype) := by
  set P := Submodule.pi Set.univ fun _ : G => A with hP
  set B' := B.comap A.subtype with hB'
  let pr : G → P →ₗ[O] A := fun g =>
    LinearMap.codRestrict A ((LinearMap.proj g).comp P.subtype) (fun x => x.2 g (Set.mem_univ g))
  let φ : P →ₗ[O] (G → A ⧸ B') := LinearMap.pi fun g => B'.mkQ.comp (pr g)
  have hsurj : Function.Surjective φ := by
    intro y
    choose x hx using fun g => Submodule.Quotient.mk_surjective B' (y g)
    refine ⟨⟨fun g => (x g : M), fun g _ => (x g).2⟩, ?_⟩
    funext g
    simp only [φ, pr, LinearMap.pi_apply, LinearMap.comp_apply, Submodule.mkQ_apply]
    rw [← hx g]
    rfl
  have hker : LinearMap.ker φ = (Submodule.pi Set.univ fun _ : G => B).comap P.subtype := by
    ext x
    simp only [LinearMap.mem_ker, Submodule.mem_comap, Submodule.subtype_apply, Submodule.mem_pi,
      Set.mem_univ, true_implies]
    constructor
    · intro h g
      have hg := congrFun h g
      simp only [φ, pr, LinearMap.pi_apply, LinearMap.comp_apply, Submodule.mkQ_apply, Pi.zero_apply,
        Submodule.Quotient.mk_eq_zero, hB', Submodule.mem_comap] at hg
      exact hg
    · intro h
      funext g
      simp only [φ, pr, LinearMap.pi_apply, LinearMap.comp_apply, Submodule.mkQ_apply, Pi.zero_apply,
        Submodule.Quotient.mk_eq_zero, hB', Submodule.mem_comap]
      exact h g
  have e := (Submodule.quotEquivOfEq _ _ hker.symm).trans (LinearMap.quotKerEquivOfSurjective φ hsurj)
  rw [e.length_eq, Module.length_pi, ENat.card_eq_coe_fintype_card, nsmul_eq_mul]

end Len

section Psi

variable {K : Type*} [Field K]

theorem eq_zero_of_sum_rename_mul {S₁ S₂ κ : Type*} [Fintype κ] (w : κ → MvPolynomial S₂ K) (hw : LinearIndependent K w)
    (a : κ → MvPolynomial S₁ K) (h : ∑ j, rename Sum.inl (a j) * rename Sum.inr (w j) = 0) : a = 0 := by
  funext j
  ext m
  have h' := congrArg (mvPolynomialCoeffInFirstVariables (K := K) (S₁ := S₁) (S₂ := S₂) m) h

  simp only [map_sum, leftCoeff_rename_mul, map_zero] at h'
  simpa using (Fintype.linearIndependent_iff.1 hw) (fun j => AddMonoidAlgebra.coeff (a j) m) h' j

def mvPolynomialProductExtension {ι σ : Type} [Fintype ι] [DecidableEq ι] (τ₀ : ι) (κ : ι → Type) [∀ τ, Fintype (κ τ)]
    (b : ∀ τ, κ τ → MvPolynomial σ K) :
    ((∀ τ : {τ // τ ≠ τ₀}, κ τ.1) → MvPolynomial σ K) →ₗ[K] MvPolynomial (ι × σ) K where
  toFun h := ∑ g, rename (Prod.mk τ₀) (h g) * ∏ τ : {τ // τ ≠ τ₀}, rename (Prod.mk τ.1) (b τ.1 (g τ))
  map_add' h h' := by simp only [Pi.add_apply, map_add (f := _), add_mul, Finset.sum_add_distrib]
  map_smul' c h := by simp only [Pi.smul_apply, map_smul, smul_mul_assoc, Finset.smul_sum, RingHom.id_apply]

theorem factorMap_injective {ι σ : Type} [Fintype ι] [DecidableEq ι] (τ₀ : ι) (κ : ι → Type) [∀ τ, Fintype (κ τ)]
    (b : ∀ τ, κ τ → MvPolynomial σ K) (hb : ∀ τ, τ ≠ τ₀ → LinearIndependent K (b τ)) :
    Function.Injective (mvPolynomialProductExtension τ₀ κ b) := by
  rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
  intro h hh
  have hW : LinearIndependent K (fun g : (∀ τ : {τ // τ ≠ τ₀}, κ τ.1) =>
      ∏ τ : {τ // τ ≠ τ₀}, rename (Prod.mk τ) (b τ.1 (g τ))) :=
    linearIndependent_prod_rename_of_forall (fun τ : {τ // τ ≠ τ₀} => κ τ.1) (fun τ => b τ.1) (fun τ => hb τ.1 τ.2)
  have key : mvPolynomialProductExtension τ₀ κ b h = rename (sumComplementToProduct (σ := σ) τ₀) (∑ g, rename Sum.inl (h g) *
      rename Sum.inr (∏ τ : {τ // τ ≠ τ₀}, rename (Prod.mk τ) (b τ.1 (g τ)))) := by

    simp only [mvPolynomialProductExtension, LinearMap.coe_mk, AddHom.coe_mk, map_sum, map_mul, map_prod, rename_rename]
    rfl
  rw [key] at hh
  have hh' : ∑ g, rename Sum.inl (h g) *
      rename Sum.inr (∏ τ : {τ // τ ≠ τ₀}, rename (Prod.mk τ) (b τ.1 (g τ))) = 0 :=
    rename_injective _ (splitIndex_injective τ₀) (by rw [hh, map_zero])
  exact eq_zero_of_sum_rename_mul _ hW h hh'

theorem length_quot_map_positionMap {ι σ : Type} [Fintype ι] [DecidableEq ι] (τ₀ : ι) (κ : ι → Type) [∀ τ, Fintype (κ τ)]
    [∀ τ, DecidableEq (κ τ)] (b : ∀ τ, κ τ → MvPolynomial σ K) (hb : ∀ τ, τ ≠ τ₀ → LinearIndependent K (b τ))
    (O : Subring K) (A₀ B₀ : Submodule O (MvPolynomial σ K)) :
    Module.length O (((Submodule.pi Set.univ fun _ : (∀ τ : {τ // τ ≠ τ₀}, κ τ.1) => A₀).map
          ((mvPolynomialProductExtension τ₀ κ b).restrictScalars O)) ⧸
        ((Submodule.pi Set.univ fun _ : (∀ τ : {τ // τ ≠ τ₀}, κ τ.1) => B₀).map ((mvPolynomialProductExtension τ₀ κ b).restrictScalars O)).comap
          ((Submodule.pi Set.univ fun _ : (∀ τ : {τ // τ ≠ τ₀}, κ τ.1) => A₀).map
            ((mvPolynomialProductExtension τ₀ κ b).restrictScalars O)).subtype) =
      (∏ τ : {τ // τ ≠ τ₀}, Fintype.card (κ τ.1)) • Module.length O (A₀ ⧸ B₀.comap A₀.subtype) := by
  rw [length_quot_map_of_injective _ (show Function.Injective ((mvPolynomialProductExtension τ₀ κ b).restrictScalars O) from
    factorMap_injective τ₀ κ b hb), length_quot_pi_const, Fintype.card_pi]

end Psi

end Formalism.L2.GlobalTheoryTheory.LocalLatticeBases
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL6.LinearIndependentProdRenameOfCard =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.PairingEqLimitPairing =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.PairingEqLimitPairing", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.LocalBasisChangeDecompCompatible\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.LinearIndependentProdRenameOfCard\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.LemB

open MvPolynomial Formalism.L2.GlobalTheoryTheory.LocalLatticeBases

section Cls

variable {ι : Type} [Fintype ι] [DecidableEq ι] {N : ℕ} (τ₀ : ι) (κ : ι → Type) [∀ τ, Fintype (κ τ)]
  [∀ τ, DecidableEq (κ τ)] (b : ∀ τ, κ τ → MvPolynomial (Fin N × Fin N) ℂ) (O : Subring ℂ)

def tenSpan : Submodule O (MvPolynomial (ι × Fin N × Fin N) ℂ) :=
  Submodule.span O (Set.range fun g : (∀ τ, κ τ) => Formalism.L2.Forms.ten (fun τ => b τ (g τ)))

def gRest (g : ∀ τ, κ τ) : ∀ τ : {τ // τ ≠ τ₀}, κ τ.1 := fun τ => g τ.1

def gExt (g : ∀ τ : {τ // τ ≠ τ₀}, κ τ.1) (k : κ τ₀) : ∀ τ, κ τ :=
  fun τ => if h : τ = τ₀ then (by subst h; exact k) else g ⟨τ, h⟩

theorem gRest_gExt (g : ∀ τ : {τ // τ ≠ τ₀}, κ τ.1) (k : κ τ₀) : gRest τ₀ κ (gExt τ₀ κ g k) = g := by
  funext τ
  unfold gRest gExt
  rw [dite_eq_right τ.2]

theorem gExt_self (g : ∀ τ : {τ // τ ≠ τ₀}, κ τ.1) (k : κ τ₀) : gExt τ₀ κ g k τ₀ = k := by
  unfold gExt
  rw [dite_eq_left rfl]

theorem ten_eq_psi (g : ∀ τ, κ τ) :
    Formalism.L2.Forms.ten (fun τ => b τ (g τ)) = mvPolynomialProductExtension τ₀ κ b (Pi.single (gRest τ₀ κ g) (b τ₀ (g τ₀))) := by
  classical
  unfold Formalism.L2.Forms.ten
  simp only [mvPolynomialProductExtension, LinearMap.coe_mk, AddHom.coe_mk]
  rw [Finset.sum_eq_single (gRest τ₀ κ g)]
  · rw [Pi.single_eq_same]
    exact Fintype.prod_eq_mul_prod_subtype_ne _ τ₀
  · intro g' _ hg'
    rw [Pi.single_eq_of_ne hg', map_zero, zero_mul]
  · intro h
    exact absurd (Finset.mem_univ _) h

theorem tenSpan_eq_psi (Λ : Submodule O (MvPolynomial (Fin N × Fin N) ℂ))
    (hΛ : Λ = Submodule.span O (Set.range (b τ₀))) :
    tenSpan κ b O = (Submodule.pi Set.univ fun _ : (∀ τ : {τ // τ ≠ τ₀}, κ τ.1) => Λ).map
      ((mvPolynomialProductExtension τ₀ κ b).restrictScalars O) := by
  classical
  apply le_antisymm
  · rw [tenSpan, Submodule.span_le]
    rintro _ ⟨g, rfl⟩
    dsimp only
    rw [ten_eq_psi τ₀ κ b g]
    refine ⟨Pi.single (gRest τ₀ κ g) (b τ₀ (g τ₀)), ?_, rfl⟩
    intro g' _
    by_cases hg : g' = gRest τ₀ κ g
    · subst hg
      rw [Pi.single_eq_same, hΛ]
      exact Submodule.subset_span ⟨g τ₀, rfl⟩
    · rw [Pi.single_eq_of_ne hg]
      exact Λ.zero_mem
  · rintro _ ⟨h, hh, rfl⟩
    have hsingle : ∀ (g' : ∀ τ : {τ // τ ≠ τ₀}, κ τ.1) (v : MvPolynomial (Fin N × Fin N) ℂ), v ∈ Λ →
        mvPolynomialProductExtension τ₀ κ b (Pi.single g' v) ∈ tenSpan κ b O := by
      intro g' v hv
      have hle : Λ ≤ (tenSpan κ b O).comap (((mvPolynomialProductExtension τ₀ κ b).restrictScalars O).comp
          (LinearMap.single O (fun _ : (∀ τ : {τ // τ ≠ τ₀}, κ τ.1) => MvPolynomial (Fin N × Fin N) ℂ) g')) := by
        rw [hΛ, Submodule.span_le]
        rintro _ ⟨k, rfl⟩
        have h1 := ten_eq_psi τ₀ κ b (gExt τ₀ κ g' k)
        rw [gRest_gExt, gExt_self] at h1
        show mvPolynomialProductExtension τ₀ κ b (Pi.single g' (b τ₀ k)) ∈ tenSpan κ b O
        rw [← h1]
        exact Submodule.subset_span ⟨gExt τ₀ κ g' k, rfl⟩
      exact hle hv
    have hsum : h = ∑ g', Pi.single g' (h g') := (Finset.univ_sum_single h).symm
    show mvPolynomialProductExtension τ₀ κ b h ∈ tenSpan κ b O

    rw [hsum, map_sum]
    exact Submodule.sum_mem _ fun g' _ => hsingle g' (h g') (hh g' (Set.mem_univ _))

theorem psi_subP (o : ι → Matrix (Fin N) (Fin N) ℂ) (ho : ∀ τ, τ ≠ τ₀ → o τ = 1)
    (h : (∀ τ : {τ // τ ≠ τ₀}, κ τ.1) → MvPolynomial (Fin N × Fin N) ℂ) :
    Formalism.L2.Forms.subP o (mvPolynomialProductExtension τ₀ κ b h) = mvPolynomialProductExtension τ₀ κ b (fun g => Formalism.GradedWeylDivisibility.rowAct ℂ (o τ₀) (h g)) := by
  have hren : ∀ (τ : ι) (q : MvPolynomial (Fin N × Fin N) ℂ),
      Formalism.L2.Forms.subP o (rename (Prod.mk τ) q) = rename (Prod.mk τ) (Formalism.GradedWeylDivisibility.rowAct ℂ (o τ) q) := by
    intro τ q
    have h1 : (Formalism.L2.Forms.subP o).comp (rename (Prod.mk τ)) = (rename (Prod.mk τ)).comp (Formalism.GradedWeylDivisibility.rowAct ℂ (o τ)) := by
      apply MvPolynomial.algHom_ext
      intro v

      simp [Formalism.L2.Forms.subP, Formalism.GradedWeylDivisibility.rowAct, rename_X, map_sum]
    exact AlgHom.congr_fun h1 q
  have hone : ∀ q : MvPolynomial (Fin N × Fin N) ℂ, Formalism.GradedWeylDivisibility.rowAct ℂ (1 : Matrix (Fin N) (Fin N) ℂ) q = q := by
    intro q
    have h1 : Formalism.GradedWeylDivisibility.rowAct ℂ (n := N) (1 : Matrix (Fin N) (Fin N) ℂ) = AlgHom.id ℂ _ := by
      apply MvPolynomial.algHom_ext
      intro v
      simp [Formalism.GradedWeylDivisibility.rowAct, Matrix.one_apply]
    rw [h1, AlgHom.id_apply]

  simp only [mvPolynomialProductExtension, LinearMap.coe_mk, AddHom.coe_mk, map_sum, map_mul, map_prod, hren]
  refine Finset.sum_congr rfl fun g _ => ?_
  congr 1
  refine Finset.prod_congr rfl fun τ _ => ?_
  rw [ho τ.1 τ.2, hone]

theorem map_psi_pi (L : MvPolynomial (Fin N × Fin N) ℂ →ₗ[O] MvPolynomial (Fin N × Fin N) ℂ)
    (L' : MvPolynomial (ι × Fin N × Fin N) ℂ →ₗ[O] MvPolynomial (ι × Fin N × Fin N) ℂ)
    (hc : ∀ h, L' (mvPolynomialProductExtension τ₀ κ b h) = mvPolynomialProductExtension τ₀ κ b (fun g => L (h g)))
    (Λ : Submodule O (MvPolynomial (Fin N × Fin N) ℂ)) :
    ((Submodule.pi Set.univ fun _ : (∀ τ : {τ // τ ≠ τ₀}, κ τ.1) => Λ).map
        ((mvPolynomialProductExtension τ₀ κ b).restrictScalars O)).map L' =
      (Submodule.pi Set.univ fun _ : (∀ τ : {τ // τ ≠ τ₀}, κ τ.1) => Λ.map L).map
        ((mvPolynomialProductExtension τ₀ κ b).restrictScalars O) := by
  classical
  ext x
  constructor
  · rintro ⟨y, ⟨h, hh, rfl⟩, rfl⟩
    refine ⟨fun g => L (h g), fun g _ => ⟨h g, hh g (Set.mem_univ _), rfl⟩, ?_⟩
    exact (hc h).symm
  · rintro ⟨h', hh', rfl⟩
    have hh'' : ∀ g, ∃ y ∈ Λ, L y = h' g := fun g => hh' g (Set.mem_univ _)
    choose h hh hhe using hh''
    refine ⟨mvPolynomialProductExtension τ₀ κ b h, ⟨h, fun g _ => hh g, rfl⟩, ?_⟩
    show L' (mvPolynomialProductExtension τ₀ κ b h) = mvPolynomialProductExtension τ₀ κ b h'
    rw [hc]
    congr 1
    funext g
    exact hhe g

abbrev scO (σ : Type) (c : ℂ) : MvPolynomial σ ℂ →ₗ[O] MvPolynomial σ ℂ :=
  (c • LinearMap.id : MvPolynomial σ ℂ →ₗ[ℂ] MvPolynomial σ ℂ).restrictScalars O

theorem cls_len (hb : ∀ τ, τ ≠ τ₀ → LinearIndependent ℂ (b τ)) (Λ : Submodule O (MvPolynomial (Fin N × Fin N) ℂ))
    (hΛ : Λ = Submodule.span O (Set.range (b τ₀))) (o : ι → Matrix (Fin N) (Fin N) ℂ) (ho : ∀ τ, τ ≠ τ₀ → o τ = 1)
    (c₁ c₂ : ℂ) :
    Module.length O
      ((((tenSpan κ b O).map ((Formalism.L2.Forms.subP o).toLinearMap.restrictScalars O)).map (scO O _ c₁)) ⧸
        ((tenSpan κ b O).map (scO O _ c₂)).comap
          (((tenSpan κ b O).map ((Formalism.L2.Forms.subP o).toLinearMap.restrictScalars O)).map (scO O _ c₁)).subtype) =
      (∏ τ : {τ // τ ≠ τ₀}, Fintype.card (κ τ.1)) •
        Module.length O (((Λ.map (mvPolynomialRowLinearMap O (o τ₀))).map (mvPolynomialScalingMap O c₁)) ⧸
          (Λ.map (mvPolynomialScalingMap O c₂)).comap ((Λ.map (mvPolynomialRowLinearMap O (o τ₀))).map (mvPolynomialScalingMap O c₁)).subtype) := by
  have hrow : (tenSpan κ b O).map ((Formalism.L2.Forms.subP o).toLinearMap.restrictScalars O) =
      (Submodule.pi Set.univ fun _ : (∀ τ : {τ // τ ≠ τ₀}, κ τ.1) => Λ.map (mvPolynomialRowLinearMap O (o τ₀))).map
        ((mvPolynomialProductExtension τ₀ κ b).restrictScalars O) := by
    rw [tenSpan_eq_psi τ₀ κ b O Λ hΛ]
    exact map_psi_pi τ₀ κ b O (mvPolynomialRowLinearMap O (o τ₀)) ((Formalism.L2.Forms.subP o).toLinearMap.restrictScalars O)
      (fun h => psi_subP τ₀ κ b o ho h) Λ
  have hsc : ∀ (c : ℂ) (Λ' : Submodule O (MvPolynomial (Fin N × Fin N) ℂ)),
      ((Submodule.pi Set.univ fun _ : (∀ τ : {τ // τ ≠ τ₀}, κ τ.1) => Λ').map
        ((mvPolynomialProductExtension τ₀ κ b).restrictScalars O)).map (scO O _ c) =
      (Submodule.pi Set.univ fun _ : (∀ τ : {τ // τ ≠ τ₀}, κ τ.1) => Λ'.map (mvPolynomialScalingMap O c)).map
        ((mvPolynomialProductExtension τ₀ κ b).restrictScalars O) := by
    intro c Λ'
    refine map_psi_pi τ₀ κ b O (mvPolynomialScalingMap O c) (scO O _ c) (fun h => ?_) Λ'
    show c • mvPolynomialProductExtension τ₀ κ b h = mvPolynomialProductExtension τ₀ κ b (fun g => c • h g)
    rw [← map_smul]
    rfl
  rw [hrow, hsc, tenSpan_eq_psi τ₀ κ b O Λ hΛ, hsc]
  exact length_quot_map_positionMap τ₀ κ b hb O _ _

end Cls

end Formalism.L2.GlobalTheoryTheory.LemB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.PairingEqLimitPairing =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.PairingAdjointness =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.PairingAdjointness", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.PairingEqLimitPairing\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.WeylLengthDiagonalUnitUniformiser\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.LemB

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms NumberField MvPolynomial Formalism.L2.GlobalTheoryTheory.LocalLatticeBases

variable (D : D7)

def intSubm (w : D.what₂.places.Pl) {N : ℕ} (lam : D.what₂.Tau → DomWeight N) :
    Submodule (bwA_Ow D w) (MvPolynomial (D.what₂.Tau × Fin N × Fin N) ℂ) :=
  Submodule.span (bwA_Ow D w) (Formalism.L2.Forms.IntSpan D w lam : Set _)

theorem intSubm_eq (w : D.what₂.places.Pl) {N : ℕ} (lam : D.what₂.Tau → DomWeight N) (κ : D.what₂.Tau → Type)
    [∀ τ, Fintype (κ τ)] (b : ∀ τ, Module.Basis (κ τ) ℤ (delSq ℤ N (lam τ))) :
    intSubm D w lam = tenSpan κ (fun τ k => MvPolynomial.map (Int.castRingHom ℂ)
      ((b τ k : delSq ℤ N (lam τ)) : MvPolynomial (Fin N × Fin N) ℤ)) (bwA_Ow D w) := by
  classical
  unfold intSubm Formalism.L2.Forms.IntSpan tenSpan Formalism.L2.Forms.ten bwA_Ow
  apply le_antisymm
  · rw [Submodule.span_le]
    intro p hp
    rw [SetLike.mem_coe] at hp
    induction hp using AddSubgroup.closure_induction with
    | mem x hx =>
      obtain ⟨r, f, hr, hf, rfl⟩ := hx
      have hfe : ∀ τ, rename (Prod.mk τ) (map (Int.castRingHom ℂ) (f τ)) =
          ∑ k, (b τ).repr ⟨f τ, hf τ⟩ k • rename (Prod.mk τ) (map (Int.castRingHom ℂ)
            ((b τ k : delSq ℤ N (lam τ)) : MvPolynomial (Fin N × Fin N) ℤ)) := by
        intro τ
        have h2 := congrArg Subtype.val ((b τ).sum_repr ⟨f τ, hf τ⟩)
        rw [Submodule.coe_sum] at h2
        simp only [Submodule.coe_smul] at h2
        conv_lhs => rw [← h2]

        rw [map_sum, map_sum]
        simp only [map_zsmul]
      simp only [hfe]
      rw [Finset.prod_univ_sum, Fintype.piFinset_univ]
      refine Submodule.smul_mem _ (⟨_, Subring.mem_map.2 ⟨r, hr, rfl⟩⟩ : ↥(Subring.map D.what₂.embLL (intW D.what₂.places w))) ?_
      refine Submodule.sum_mem _ fun g _ => ?_
      simp only [zsmul_eq_mul, Finset.prod_mul_distrib, ← Int.cast_prod]
      rw [← zsmul_eq_mul]
      apply zsmul_mem
      apply Submodule.subset_span
      exact ⟨g, rfl⟩
    | zero => exact Submodule.zero_mem _
    | add x y _ _ hx hy => exact Submodule.add_mem _ hx hy
    | neg x _ hx => exact Submodule.neg_mem _ hx
  · rw [Submodule.span_le]
    rintro _ ⟨g, rfl⟩
    apply Submodule.subset_span
    apply AddSubgroup.subset_closure
    refine ⟨1, fun τ => ((b τ (g τ) : delSq ℤ N (lam τ)) : MvPolynomial (Fin N × Fin N) ℤ), Subring.one_mem _,
      fun τ => (b τ (g τ)).2, ?_⟩
    rw [map_one, one_smul]

theorem bwA_span_basis (O : Subring ℂ) {N : ℕ} (ν : Fin N → ℕ) {κ : Type} [Fintype κ]
    (b : Module.Basis κ ℤ (Formalism.GradedWeylDivisibility.weyl ℤ N N le_rfl ν)) :
    bwA_span (K := ℂ) O le_rfl ν = Submodule.span O (Set.range fun k => MvPolynomial.map (Int.castRingHom ℂ)
      ((b k : Formalism.GradedWeylDivisibility.weyl ℤ N N le_rfl ν) : MvPolynomial (Fin N × Fin N) ℤ)) := by
  unfold bwA_span
  apply le_antisymm
  · rw [Submodule.span_le]
    rintro _ ⟨p, hp, rfl⟩
    have h2 := congrArg Subtype.val (b.sum_repr ⟨p, hp⟩)
    rw [Submodule.coe_sum] at h2
    simp only [Submodule.coe_smul] at h2

    rw [← h2, map_sum]
    refine Submodule.sum_mem _ fun i _ => ?_
    rw [map_zsmul]
    apply zsmul_mem
    apply Submodule.subset_span
    exact ⟨i, rfl⟩
  · rw [Submodule.span_le]
    rintro _ ⟨k, rfl⟩
    exact Submodule.subset_span (Set.mem_image_of_mem _ (b k).2)

variable (u : D.what₂.Word)

theorem cls_len_D (A : AtTTied u) (w : D.what₂.places.Pl) (hw : OverT D u w)
    (v : (D.mem u).A.vT) (Lv : LvTied u A 0 (Nat.zero_le _)) (c : (D.mem u).C.cls 0)
    (hLc0 : clsCrd D u 0 (Nat.zero_le _) c ≤ Ld D u 0 (Nat.zero_le _) c) (B B' : GL (Fin (D.R.N 0)) D.host.E)
    (hB : IsLocBasis (D.mem u).A.T (Ld D u 0 (Nat.zero_le _) c : Set _) B)
    (hB' : IsLocBasis (D.mem u).A.T (Lk A 0 (Nat.zero_le _) v c : Set _) B')
    (hunit : ((((B⁻¹ * B' : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)).map
        (embT D ((D.fm u).tauOf w v))).det * (((D.mem u).A.T : ℂ))⁻¹ ∈ bwA_Ow D w ∧
      ((D.mem u).A.T : ℂ) * (((((B⁻¹ * B' : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)).map
        (embT D ((D.fm u).tauOf w v))).det)⁻¹ ∈ bwA_Ow D w) :
    ∃ n : ℕ, Module.length (bwA_Ow D w)
      ((((intSubm D w ((D.fm u).lam 0)).map
            ((Formalism.L2.Forms.subP (bwA_N D ((D.fm u).tauOf w v) B B')).toLinearMap.restrictScalars (bwA_Ow D w))).map
          (scO (bwA_Ow D w) _ ((bwA_N D ((D.fm u).tauOf w v) B B' ((D.fm u).tauOf w v)).det ^
            ((D.fm u).lam 0 ((D.fm u).tauOf w v)).detShift))) ⧸
        ((intSubm D w ((D.fm u).lam 0)).map
            (scO (bwA_Ow D w) _ (((D.mem u).A.T : ℂ) ^ (D.fm u).bTop ((D.fm u).tauOf w v)))).comap
          (((intSubm D w ((D.fm u).lam 0)).map
            ((Formalism.L2.Forms.subP (bwA_N D ((D.fm u).tauOf w v) B B')).toLinearMap.restrictScalars (bwA_Ow D w))).map
          (scO (bwA_Ow D w) _ ((bwA_N D ((D.fm u).tauOf w v) B B' ((D.fm u).tauOf w v)).det ^
            ((D.fm u).lam 0 ((D.fm u).tauOf w v)).detShift))).subtype) = n ∧
      (D.R.k : ℚ) * n = (D.what₂.places.ramIdx w : ℚ) *
        ((∏ τ, Module.finrank ℤ (delSq ℤ (D.R.N 0) ((D.fm u).lam 0 τ)) : ℕ) : ℚ) *
        ((wsum ((D.fm u).lam 0 ((D.fm u).tauOf w v)) : ℚ) + (D.R.k : ℚ) * ((D.fm u).bTop ((D.fm u).tauOf w v) : ℚ)) := by
  classical
  choose κ hκ b0 _ _ _ _ using fun τ => weyl_homogeneous_basis (r := D.R.N 0) (n := D.R.N 0) le_rfl ((D.fm u).lam 0 τ).natW
    (dominant_natWeight_antitone ((D.fm u).lam 0 τ))
  let _ := hκ
  let b : ∀ τ, Module.Basis (κ τ) ℤ (delSq ℤ (D.R.N 0) ((D.fm u).lam 0 τ)) := b0
  obtain ⟨n, hn, hrel⟩ := length_factor_local_basis D u A w hw v Lv c hLc0 B B' hB hB' hunit _ rfl
  have hli : ∀ τ, τ ≠ (D.fm u).tauOf w v → LinearIndependent ℂ (fun k => MvPolynomial.map (Int.castRingHom ℂ)
      ((b τ k : delSq ℤ (D.R.N 0) ((D.fm u).lam 0 τ)) : MvPolynomial (Fin (D.R.N 0) × Fin (D.R.N 0)) ℤ)) := fun τ _ =>
    weyl_basis_lin_indep_field le_rfl ((D.fm u).lam 0 τ).natW (dominant_natWeight_antitone ((D.fm u).lam 0 τ)) ℂ (b0 τ)
  have ho : ∀ τ, τ ≠ (D.fm u).tauOf w v → bwA_N D ((D.fm u).tauOf w v) B B' τ = 1 := by
    intro τ h
    unfold bwA_N
    rw [ite_eq_right h]
  have hcard : ∀ τ, Module.finrank ℤ (delSq ℤ (D.R.N 0) ((D.fm u).lam 0 τ)) = Fintype.card (κ τ) := fun τ =>
    Module.finrank_eq_card_basis (b τ)
  refine ⟨(∏ τ : {τ // τ ≠ (D.fm u).tauOf w v}, Fintype.card (κ τ.1)) * n, ?_, ?_⟩
  · rw [intSubm_eq D w ((D.fm u).lam 0) κ b]
    refine (cls_len ((D.fm u).tauOf w v) κ _ (bwA_Ow D w) hli _
      (bwA_span_basis (bwA_Ow D w) ((D.fm u).lam 0 ((D.fm u).tauOf w v)).natW (b0 ((D.fm u).tauOf w v)))
      (bwA_N D ((D.fm u).tauOf w v) B B') ho _ _).trans ?_
    rw [hn]
    simp
  · have hprod : (∏ τ, Module.finrank ℤ (delSq ℤ (D.R.N 0) ((D.fm u).lam 0 τ))) =
        Module.finrank ℤ (delSq ℤ (D.R.N 0) ((D.fm u).lam 0 ((D.fm u).tauOf w v))) *
          ∏ τ : {τ // τ ≠ (D.fm u).tauOf w v}, Fintype.card (κ τ.1) := by
      simp only [hcard]
      rw [← Finset.mul_prod_erase Finset.univ _ (Finset.mem_univ ((D.fm u).tauOf w v))]
      congr 1
      exact Finset.prod_subtype (Finset.univ.erase ((D.fm u).tauOf w v)) (p := fun τ => τ ≠ (D.fm u).tauOf w v)
        (fun x => by simp) (fun τ => Fintype.card (κ τ))
    rw [hprod]
    push_cast
    linear_combination (∏ τ : {τ // τ ≠ (D.fm u).tauOf w v}, (Fintype.card (κ τ.1) : ℚ)) * hrel

end Formalism.L2.GlobalTheoryTheory.LemB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.PairingAdjointness =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.PairingContinuityBound =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.PairingContinuityBound", "h": "module\n\npublic import Mathlib.RingTheory.Length\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.CoassocSimps\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.GlobalTheoryTheory.LemB

theorem len_equiv_semilinear {R R' M M' : Type*} [Ring R] [Ring R'] [AddCommGroup M] [Module R M]
    [AddCommGroup M'] [Module R' M'] {σ : R →+* R'} {σ' : R' →+* R} [RingHomInvPair σ σ'] [RingHomInvPair σ' σ]
    (e : M ≃ₛₗ[σ] M') : Module.length R M = Module.length R' M' := by
  let e' : Submodule R M ≃o Submodule R' M' := Submodule.orderIsoMapComap e
  unfold Module.length
  congr 1
  exact Order.krullDim_eq_of_orderIso e'

noncomputable def quotEquivSL {R R' M M' : Type*} [Ring R] [Ring R'] [AddCommGroup M] [Module R M]
    [AddCommGroup M'] [Module R' M'] {σ : R →+* R'} {σ' : R' →+* R} [RingHomInvPair σ σ'] [RingHomInvPair σ' σ]
    (e : M ≃ₛₗ[σ] M') (P : Submodule R M) (Q : Submodule R' M') (h : P.map (e : M →ₛₗ[σ] M') = Q) :
    (M ⧸ P) ≃ₛₗ[σ] (M' ⧸ Q) :=
  LinearEquiv.ofLinearMap
    (P.mapQ Q (e : M →ₛₗ[σ] M') (by rw [← h]; exact Submodule.le_comap_map _ _))
    (Q.mapQ P (e.symm : M' →ₛₗ[σ'] M) (by
      rw [← h]; rintro _ ⟨x, hx, rfl⟩
      show e.symm (e x) ∈ P
      rw [e.symm_apply_apply]; exact hx))
    (by ext x; simp) (by ext x; simp)

theorem len_quot_semilinear {R R' M M' : Type*} [Ring R] [Ring R'] [AddCommGroup M] [Module R M]
    [AddCommGroup M'] [Module R' M'] {σ : R →+* R'} {σ' : R' →+* R} [RingHomInvPair σ σ'] [RingHomInvPair σ' σ]
    (f : M →ₛₗ[σ] M') (hf : Function.Injective f) (A B : Submodule R M) :
    Module.length R (A ⧸ B.comap A.subtype) =
      Module.length R' (A.map f ⧸ (B.map f).comap (A.map f).subtype) := by
  let eA : A ≃ₛₗ[σ] A.map f := Submodule.equivMapOfInjective f hf A
  refine len_equiv_semilinear (quotEquivSL eA _ _ ?_)
  ext ⟨y, hy⟩
  simp only [Submodule.mem_map, Submodule.mem_comap, Submodule.subtype_apply]
  constructor
  · rintro ⟨⟨x, hxA⟩, hxB, hxy⟩
    exact ⟨x, hxB, congrArg Subtype.val hxy⟩
  · rintro ⟨x, hxB, hfx⟩
    obtain ⟨x', hx'A, hx'⟩ := hy
    have hxx : x = x' := hf (hfx.trans hx'.symm)
    subst hxx
    refine ⟨⟨x, hx'A⟩, hxB, ?_⟩
    apply Subtype.ext
    exact hfx

theorem len_pi_sum {R : Type*} [CommRing R] {G : Type*} [Fintype G] [DecidableEq G] {M : G → Type*}
    [∀ g, AddCommGroup (M g)] [∀ g, Module R (M g)] (A B : ∀ g, Submodule R (M g)) :
    Module.length R ((Submodule.pi Set.univ A) ⧸
        (Submodule.pi Set.univ B).comap (Submodule.pi Set.univ A).subtype) =
      ∑ g, Module.length R (A g ⧸ (B g).comap (A g).subtype) := by
  classical
  let φ : (Submodule.pi Set.univ A) →ₗ[R] (∀ g, A g ⧸ (B g).comap (A g).subtype) :=
    LinearMap.pi (fun g => ((B g).comap (A g).subtype).mkQ ∘ₗ
      (((LinearMap.proj g).comp (Submodule.pi Set.univ A).subtype).codRestrict (A g)
        (fun x => x.2 g (Set.mem_univ g))))
  have hφ : Function.Surjective φ := by
    intro y
    choose x hx using fun g => Submodule.Quotient.mk_surjective _ (y g)
    refine ⟨⟨fun g => (x g : M g), fun g _ => (x g).2⟩, ?_⟩
    funext g
    rw [← hx g]
    rfl
  have hker : LinearMap.ker φ =
      (Submodule.pi Set.univ B).comap (Submodule.pi Set.univ A).subtype := by
    ext x
    simp only [LinearMap.mem_ker, Submodule.mem_comap, Submodule.subtype_apply, Submodule.mem_pi,
      Set.mem_univ, true_implies]
    rw [funext_iff]
    refine forall_congr' (fun g => ?_)
    change Submodule.Quotient.mk _ = 0 ↔ _
    rw [Submodule.Quotient.mk_eq_zero]
    rfl
  let e := (Submodule.quotEquivOfEq _ _ hker.symm).trans (φ.quotKerEquivOfSurjective hφ)
  rw [len_equiv_semilinear e]
  first
  | simp

end Formalism.L2.GlobalTheoryTheory.LemB
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.PairingContinuityBound =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.LenLen2OfCoord =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.LenLen2OfCoord", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.PairingAdjointness\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.PairingContinuityBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.LemB

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms NumberField MvPolynomial Formalism.L2.GlobalTheoryTheory.LocalLatticeBases

variable (D : D7)

def owEquiv (w : D.what₂.places.Pl) : Ow D w ≃+* bwA_Ow D w :=
  Subring.equivMapOfInjective (intW D.what₂.places w) D.what₂.embLL D.what₂.embLL.injective

instance owPair (w : D.what₂.places.Pl) :
    RingHomInvPair ((owEquiv D w : Ow D w ≃+* bwA_Ow D w) : Ow D w →+* bwA_Ow D w)
      ((owEquiv D w).symm : bwA_Ow D w →+* Ow D w) :=
  RingHomInvPair.of_ringEquiv (owEquiv D w)

instance owPair' (w : D.what₂.places.Pl) :
    RingHomInvPair ((owEquiv D w).symm : bwA_Ow D w →+* Ow D w)
      ((owEquiv D w : Ow D w ≃+* bwA_Ow D w) : Ow D w →+* bwA_Ow D w) where
  comp_eq := by ext x; simp
  comp_eq₂ := by ext x; simp

variable (u : D.what₂.Word)

theorem lenLen2_of_coord (A : AtTTied u) (Lv : LvTied u A 0 (Nat.zero_le _)) (w : D.what₂.places.Pl) (hw : OverT D u w)
    (v : (D.mem u).A.vT)
    (hLc0 : ∀ c, clsCrd D u 0 (Nat.zero_le _) c ≤ Ld D u 0 (Nat.zero_le _) c)
    (B B' : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E)
    (hB : ∀ c, IsLocBasis (D.mem u).A.T (Ld D u 0 (Nat.zero_le _) c : Set _) (B c))
    (hB' : ∀ c, IsLocBasis (D.mem u).A.T (Lk A 0 (Nat.zero_le _) v c : Set _) (B' c))
    (hunit : ∀ c, (((((B c)⁻¹ * B' c : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)).map
        (embT D ((D.fm u).tauOf w v))).det * (((D.mem u).A.T : ℂ))⁻¹ ∈ bwA_Ow D w ∧
      ((D.mem u).A.T : ℂ) * ((((((B c)⁻¹ * B' c : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)).map
        (embT D ((D.fm u).tauOf w v))).det)⁻¹ ∈ bwA_Ow D w)
    (Φ : Vl D u 0 →ₛₗ[((owEquiv D w : Ow D w ≃+* bwA_Ow D w) : Ow D w →+* bwA_Ow D w)]
      ((D.mem u).C.cls 0 → MvPolynomial (D.what₂.Tau × Fin (D.R.N 0) × Fin (D.R.N 0)) ℂ))
    (hΦ : Function.Injective Φ)
    (hA : ((D.fm u).Bw 0 w v).map Φ = Submodule.pi Set.univ fun c =>
      ((intSubm D w ((D.fm u).lam 0)).map
            ((Formalism.L2.Forms.subP (bwA_N D ((D.fm u).tauOf w v) (B c) (B' c))).toLinearMap.restrictScalars (bwA_Ow D w))).map
          (scO (bwA_Ow D w) _ ((bwA_N D ((D.fm u).tauOf w v) (B c) (B' c) ((D.fm u).tauOf w v)).det ^
            ((D.fm u).lam 0 ((D.fm u).tauOf w v)).detShift)))
    (hS : (tL D u w ((D.fm u).bTop ((D.fm u).tauOf w v)) ((D.fm u).S 0 w)).map Φ = Submodule.pi Set.univ fun _ =>
      (intSubm D w ((D.fm u).lam 0)).map
            (scO (bwA_Ow D w) _ (((D.mem u).A.T : ℂ) ^ (D.fm u).bTop ((D.fm u).tauOf w v))))
    (hd : D.duS u = Fintype.card ((D.mem u).C.cls 0) *
      ∏ τ, Module.finrank ℤ (delSq ℤ (D.R.N 0) ((D.fm u).lam 0 τ))) :
    ∃ n : ℕ, len D u w ((D.fm u).Bw 0 w v) (tL D u w ((D.fm u).bTop ((D.fm u).tauOf w v)) ((D.fm u).S 0 w)) = n ∧
      (n : ℚ) = (D.what₂.places.ramIdx w : ℚ) * ((D.duS u : ℚ) *
        ((wsum ((D.fm u).lam 0 ((D.fm u).tauOf w v)) : ℚ) + (D.R.k : ℚ) * ((D.fm u).bTop ((D.fm u).tauOf w v) : ℚ)) /
          (D.R.k : ℚ)) := by
  classical
  have hkpos : (0 : ℚ) < (D.R.k : ℚ) := by
    have h := D.R.m_add_three_le_k
    exact_mod_cast (show 0 < D.R.k by omega)
  choose n hn hnq using fun c => cls_len_D D u A w hw v Lv c (hLc0 c) (B c) (B' c) (hB c) (hB' c) (hunit c)
  refine ⟨∑ c, n c, ?_, ?_⟩
  · unfold Formalism.MainNotions.product_first_zeroth_parts.len
    rw [len_quot_semilinear (σ' := ((owEquiv D w).symm : bwA_Ow D w →+* Ow D w)) Φ hΦ, hA, hS, len_pi_sum,
      Nat.cast_sum]
    exact Finset.sum_congr rfl fun c _ => hn c
  · have e : ∀ c, (n c : ℚ) = (D.what₂.places.ramIdx w : ℚ) *
        ((∏ τ, Module.finrank ℤ (delSq ℤ (D.R.N 0) ((D.fm u).lam 0 τ)) : ℕ) : ℚ) *
        ((wsum ((D.fm u).lam 0 ((D.fm u).tauOf w v)) : ℚ) + (D.R.k : ℚ) * ((D.fm u).bTop ((D.fm u).tauOf w v) : ℚ)) /
          (D.R.k : ℚ) := fun c => by
      rw [eq_div_iff hkpos.ne', mul_comm]; exact hnq c
    rw [Nat.cast_sum, Finset.sum_congr rfl fun c _ => e c, Finset.sum_const, Finset.card_univ, hd, nsmul_eq_mul]
    push_cast
    ring

end Formalism.L2.GlobalTheoryTheory.LemB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.LenLen2OfCoord =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.IsCrdExists =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.IsCrdExists", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.LenLen2OfCoord\npublic import Formalism.LocalToGlobal.GroupLattices.DownNaturalLevelZero\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.LatticeInclusionFamilyOf\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.WeylLengthDiagonalUnitUniformiser\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.LemB

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms NumberField MvPolynomial Formalism.L2.GlobalTheoryTheory.LocalLatticeBases

variable {D : D7} {u : D.what₂.Word}

def IsCrd (T : Forms0 D u) (B : GL (Fin (D.R.N 0)) D.host.E) (x : ((D.fm u).lat 0).V) (c : (D.mem u).C.cls 0)
    (Q : MvPolynomial (D.what₂.Tau × Fin (D.R.N 0) × Fin (D.R.N 0)) ℂ) : Prop :=
  ∀ z, (D.fm u).emb 0 x c z = fnOf (gramC (gramN D 0 (Nat.zero_le _)) (embT D)) (shiftOf (lamT u 0))
    (atInf (embT D) (B⁻¹ : GL (Fin (D.R.N 0)) D.host.E).1) Q (T.val0.eY z)

theorem atInf_unit (B : GL (Fin (D.R.N 0)) D.host.E) (τ : D.what₂.Tau) :
    IsUnit (atInf (embT D) (B : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) τ).det := by
  exact (Matrix.isUnit_iff_isUnit_det _).1 ((Units.isUnit B).map (RingHom.mapMatrix (embT D τ)))

theorem isCrd_unique (T : Forms0 D u) (B : GL (Fin (D.R.N 0)) D.host.E) (x : ((D.fm u).lat 0).V)
    (c : (D.mem u).C.cls 0) {Q Q' : MvPolynomial (D.what₂.Tau × Fin (D.R.N 0) × Fin (D.R.N 0)) ℂ}
    (h : IsCrd T B x c Q) (h' : IsCrd T B x c Q') : Q = Q' := by
  apply polynomial_function_frames_injective _ _ _ (atInf_unit (B⁻¹))
  funext y
  obtain ⟨z, rfl⟩ := T.val0.eY.surjective y
  rw [← h z, h' z]

theorem isCrd_exists (T : Forms0 D u) (B : GL (Fin (D.R.N 0)) D.host.E) (x : ((D.fm u).lat 0).V)
    (c : (D.mem u).C.cls 0) : ∃ Q, IsCrd T B x c Q := by
  obtain ⟨P, -, hP⟩ := ((T.val0.5 ((D.fm u).emb 0 x)).1 ⟨x, rfl⟩).2 c
  refine ⟨MvPolynomial.C (∏ τ, (atInf (embT D) (B : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) τ).det ^
      shiftOf (lamT u 0) τ) * subP (atInf (embT D) (B : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)) P, fun z => ?_⟩
  have hN : (fun τ => atInf (embT D) (B : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) τ *
      atInf (embT D) (B⁻¹ : GL (Fin (D.R.N 0)) D.host.E).1 τ) = 1 := by
    funext τ
    simp only [atInf, ← Matrix.map_mul, Units.mul_inv, Matrix.map_one _ (map_zero _) (map_one _), Pi.one_apply]
  rw [hP z, ← fnOf_mul _ _ (atInf (embT D) (B : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)), hN]

theorem isCrd_add (T : Forms0 D u) (B : GL (Fin (D.R.N 0)) D.host.E) {x y : ((D.fm u).lat 0).V}
    {c : (D.mem u).C.cls 0} {Q Q' : MvPolynomial (D.what₂.Tau × Fin (D.R.N 0) × Fin (D.R.N 0)) ℂ}
    (h : IsCrd T B x c Q) (h' : IsCrd T B y c Q') : IsCrd T B (x + y) c (Q + Q') := by
  intro z
  rw [map_add (f := _), Pi.add_apply, Pi.add_apply, h z, h' z, map_add (f := _), Pi.add_apply]

theorem isCrd_smul (T : Forms0 D u) (B : GL (Fin (D.R.N 0)) D.host.E) {x : ((D.fm u).lat 0).V}
    {c : (D.mem u).C.cls 0} {Q : MvPolynomial (D.what₂.Tau × Fin (D.R.N 0) × Fin (D.R.N 0)) ℂ}
    (h : IsCrd T B x c Q) (r : D.what₂.LL) : IsCrd T B (r • x) c (D.what₂.embLL r • Q) := by
  intro z
  rw [LinearMap.map_smulₛₗ, Pi.smul_apply, Pi.smul_apply, h z, map_smul, Pi.smul_apply]

def crd (T : Forms0 D u) (B : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E) (x : ((D.fm u).lat 0).V) :
    (D.mem u).C.cls 0 → MvPolynomial (D.what₂.Tau × Fin (D.R.N 0) × Fin (D.R.N 0)) ℂ :=
  fun c => Classical.choose (isCrd_exists T (B c) x c)

theorem crd_spec (T : Forms0 D u) (B : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E) (x : ((D.fm u).lat 0).V)
    (c : (D.mem u).C.cls 0) : IsCrd T (B c) x c (crd T B x c) :=
  Classical.choose_spec (isCrd_exists T (B c) x c)

theorem crd_eq (T : Forms0 D u) (B : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E) {x : ((D.fm u).lat 0).V}
    {c : (D.mem u).C.cls 0} {Q : MvPolynomial (D.what₂.Tau × Fin (D.R.N 0) × Fin (D.R.N 0)) ℂ}
    (h : IsCrd T (B c) x c Q) : crd T B x c = Q :=
  isCrd_unique T (B c) x c (crd_spec T B x c) h

theorem owEquiv_coe (w : D.what₂.places.Pl) (r : Ow D w) :
    ((((owEquiv D w : Ow D w ≃+* bwA_Ow D w) : Ow D w →+* bwA_Ow D w) r : bwA_Ow D w) : ℂ) =
      D.what₂.embLL (r : D.what₂.LL) := by
  rfl

theorem crd_add (T : Forms0 D u) (B : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E) (x y : ((D.fm u).lat 0).V) :
    crd T B (x + y) = crd T B x + crd T B y :=
  funext fun c => crd_eq T B (isCrd_add T (B c) (crd_spec T B x c) (crd_spec T B y c))

theorem crd_smul (T : Forms0 D u) (B : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E) (r : D.what₂.LL)
    (x : ((D.fm u).lat 0).V) (c : (D.mem u).C.cls 0) : crd T B (r • x) c = D.what₂.embLL r • crd T B x c :=
  crd_eq T B (isCrd_smul T (B c) (crd_spec T B x c) r)

def crdL (T : Forms0 D u) (B : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E) (w : D.what₂.places.Pl) :
    Vl D u 0 →ₛₗ[((owEquiv D w : Ow D w ≃+* bwA_Ow D w) : Ow D w →+* bwA_Ow D w)]
      ((D.mem u).C.cls 0 → MvPolynomial (D.what₂.Tau × Fin (D.R.N 0) × Fin (D.R.N 0)) ℂ) where
  toFun := crd T B
  map_add' x y := crd_add T B x y
  map_smul' r x := by
    funext c
    have h := crd_smul T B (r : D.what₂.LL) x c
    rw [Pi.smul_apply, Subring.smul_def r x, h, Subring.smul_def, owEquiv_coe]

theorem crdL_inj (T : Forms0 D u) (B : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E) (w : D.what₂.places.Pl) :
    Function.Injective (crdL T B w) := by
  intro x y hxy
  apply (D.fm u).emb_inj 0
  funext c z
  have hc : crd T B x c = crd T B y c := congrFun hxy c
  rw [crd_spec T B x c z, crd_spec T B y c z, hc]

end Formalism.L2.GlobalTheoryTheory.LemB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.IsCrdExists =====
