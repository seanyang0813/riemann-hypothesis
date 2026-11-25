module

public import Formalism.HermitianCurvature.StatementQ
public import Formalism.FormalDegreeBessel.FormalDegreeRatio.GBasic
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SumDualVectorEqZeta
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.InLieW
public import Formalism.FormalDegreeBessel.FinalG
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Matrix.Normed
public import Mathlib.LinearAlgebra.Lagrange
public import Mathlib.Algebra.Polynomial.Degree.Defs
public import Mathlib.Algebra.Polynomial.Eval.Defs
public import Mathlib.Algebra.Polynomial.Eval.Degree
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.CbStrictMonoOfAnti
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.ExistsFrameOfPositiveVector
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.TopLevelPointwiseIdentity
import Mathlib.Tactic.Linter.Style
import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ComplexifiedDerivativeCommutator
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.FormalDegreeBessel.StatementWR
import Formalism.RealPlaceAnalysis.StatementA

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.AdUnitBCtMulVec, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.AdUnitBLie, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.SmoothVec, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.SpecAbstract, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.Vanish, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.RadialDecompositionOfParts

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.AdUnitBCtMulVec =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.AdUnitBCtMulVec", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementQ\npublic import Formalism.FormalDegreeBessel.FormalDegreeRatio.GBasic\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SumDualVectorEqZeta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset

noncomputable section

namespace Formalism.FourierDecayAlt.Q.LieAlgebraWeightVectors

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P.Qx2

variable {k r : ℕ}

theorem ad_herm_bvec (q : Fin (2 * r + k + 1)) (w : Fin (2 * r + k + 1) → ℂ) :
    herm (Hpk k r) (bvec q) w = ∑ s, star (w s) * Hpk k r s q := by
  unfold herm bvec
  simp only [dotProduct, Pi.star_apply]
  apply Finset.sum_congr rfl
  intro s _
  congr 1
  simp [Matrix.mulVec, dotProduct, Pi.single_apply]

theorem ad_herm_sum (v w : Fin (2 * r + k + 1) → ℂ) :
    herm (Hpk k r) v w = ∑ q, v q * herm (Hpk k r) (bvec q) w := by
  simp only [ad_herm_bvec]
  unfold herm
  simp only [dotProduct, Pi.star_apply, Matrix.mulVec, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro q _
  apply Finset.sum_congr rfl
  intro s _
  ring

theorem ad_herm_symm (v w : Fin (2 * r + k + 1) → ℂ) :
    herm (Hpk k r) v w = star (herm (Hpk k r) w v) := by
  unfold herm
  first
    | rw [star_dotProduct]
  rw [Matrix.star_mulVec, ← Matrix.dotProduct_mulVec, GBasic.Hpk_herm]

theorem ad_unitB_mulVec {m : ℕ} (Bs : Fin m → Fin (2 * r + k + 1) → ℂ) (a b : Fin m)
    (v : Fin (2 * r + k + 1) → ℂ) :
    unitB (Hpk k r) Bs a b *ᵥ v = herm (Hpk k r) v (Bs b) • Bs a := by
  unfold unitB
  rw [ad_herm_sum v (Bs b)]
  funext p
  simp only [Matrix.mulVec, dotProduct, Matrix.of_apply, Pi.smul_apply, smul_eq_mul, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro q _
  ring

theorem ad_unitB_ct_mulVec {m : ℕ} (Bs : Fin m → Fin (2 * r + k + 1) → ℂ) (a b : Fin m)
    (v : Fin (2 * r + k + 1) → ℂ) :
    (unitB (Hpk k r) Bs a b)ᴴ *ᵥ (Hpk k r *ᵥ v) =
      herm (Hpk k r) v (Bs a) • fun p => star (herm (Hpk k r) (bvec p) (Bs b)) := by
  unfold unitB
  funext p
  show ∑ q, star (Bs a q * herm (Hpk k r) (bvec p) (Bs b)) * (Hpk k r *ᵥ v) q =
    herm (Hpk k r) v (Bs a) * star (herm (Hpk k r) (bvec p) (Bs b))
  rw [show herm (Hpk k r) v (Bs a) = ∑ q, star (Bs a q) * (Hpk k r *ᵥ v) q from rfl, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro q _
  rw [star_mul']
  ring

theorem ad_hpart_kill {Z : Mx k r} {v : Fin (2 * r + k + 1) → ℂ} (h1 : Z *ᵥ v = 0)
    (h2 : Zᴴ *ᵥ (Hpk k r *ᵥ v) = 0) :
    hpart1 (Hpk k r) Z *ᵥ v = 0 ∧ hpart2 (Hpk k r) Z *ᵥ v = 0 := by
  have hs : ∀ (c : ℂ) (A : Mx k r) (x : Fin (2 * r + k + 1) → ℂ), (c • A) *ᵥ x = c • (A *ᵥ x) := by
    intro c A x
    funext i
    simp only [Matrix.mulVec, dotProduct, Matrix.smul_apply, smul_eq_mul, Pi.smul_apply, Finset.mul_sum, mul_assoc]
  have e : ((Hpk k r)⁻¹ * Zᴴ * Hpk k r) *ᵥ v = 0 := by
    rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, h2, Matrix.mulVec_zero]
  unfold hpart1 hpart2
  constructor
  · rw [hs, Matrix.sub_mulVec, h1, e, sub_zero, smul_zero]
  · rw [hs, Matrix.add_mulVec, h1, e, add_zero, smul_zero]

theorem ad_unitB_kill {m : ℕ} (Bs : Fin m → Fin (2 * r + k + 1) → ℂ) (a b : Fin m)
    {v : Fin (2 * r + k + 1) → ℂ} (ha : herm (Hpk k r) v (Bs a) = 0) (hb : herm (Hpk k r) v (Bs b) = 0) :
    hpart1 (Hpk k r) (unitB (Hpk k r) Bs a b) *ᵥ v = 0 ∧ hpart2 (Hpk k r) (unitB (Hpk k r) Bs a b) *ᵥ v = 0 := by
  apply ad_hpart_kill
  · rw [ad_unitB_mulVec, hb, zero_smul]
  · rw [ad_unitB_ct_mulVec, ha, zero_smul]

theorem ad_herm_g {g : Mx k r} (hg : gᴴ * Hpk k r * g = Hpk k r) (x y : Fin (2 * r + k + 1) → ℂ) :
    herm (Hpk k r) (g *ᵥ x) (g *ᵥ y) = herm (Hpk k r) x y := by
  unfold herm
  rw [Matrix.star_mulVec, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, hg]

theorem ad_unitB_conj {g : Mx k r} (hg : gᴴ * Hpk k r * g = Hpk k r) (hgi : g * g⁻¹ = 1)
    {m : ℕ} (Bs : Fin m → Fin (2 * r + k + 1) → ℂ) (a b : Fin m) :
    unitB (Hpk k r) (fun c => g *ᵥ Bs c) a b = g * unitB (Hpk k r) Bs a b * g⁻¹ := by
  have key : ∀ v, unitB (Hpk k r) (fun c => g *ᵥ Bs c) a b *ᵥ v =
      (g * unitB (Hpk k r) Bs a b * g⁻¹) *ᵥ v := by
    intro v
    rw [ad_unitB_mulVec, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, ad_unitB_mulVec, Matrix.mulVec_smul]
    congr 1
    conv_lhs => rw [show v = g *ᵥ (g⁻¹ *ᵥ v) by rw [Matrix.mulVec_mulVec, hgi, Matrix.one_mulVec]]
    exact ad_herm_g hg _ _
  ext p q
  have := congrFun (key (Pi.single q 1)) p
  simpa [Matrix.mulVec, dotProduct, Pi.single_apply] using this

theorem ad_hpart_conj {g : Mx k r} (hg : gᴴ * Hpk k r * g = Hpk k r) (hgi : g * g⁻¹ = 1) (Z : Mx k r) :
    hpart1 (Hpk k r) (g * Z * g⁻¹) = g * hpart1 (Hpk k r) Z * g⁻¹ ∧
      hpart2 (Hpk k r) (g * Z * g⁻¹) = g * hpart2 (Hpk k r) Z * g⁻¹ := by
  have hH : Hpk k r * Hpk k r = 1 := hpk_sq'
  have e1 : gᴴ * Hpk k r = Hpk k r * g⁻¹ := by
    calc gᴴ * Hpk k r = gᴴ * Hpk k r * (g * g⁻¹) := by rw [hgi, Matrix.mul_one]
      _ = (gᴴ * Hpk k r * g) * g⁻¹ := by simp only [Matrix.mul_assoc]
      _ = _ := by rw [hg]
  have e2 : Hpk k r * (g⁻¹)ᴴ = g * Hpk k r := by
    have h := congrArg Matrix.conjTranspose e1
    rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, hpk_h] at h

    calc Hpk k r * (g⁻¹)ᴴ = Hpk k r * ((g⁻¹)ᴴ * Hpk k r) * Hpk k r := by
          rw [Matrix.mul_assoc, Matrix.mul_assoc, hH, Matrix.mul_one]
      _ = Hpk k r * (Hpk k r * g) * Hpk k r := by rw [h]
      _ = _ := by rw [← Matrix.mul_assoc, hH, Matrix.one_mul]
  have key : (Hpk k r)⁻¹ * (g * Z * g⁻¹)ᴴ * Hpk k r = g * ((Hpk k r)⁻¹ * Zᴴ * Hpk k r) * g⁻¹ := by
    rw [hpk_inv, Matrix.conjTranspose_mul, Matrix.conjTranspose_mul]
    calc Hpk k r * ((g⁻¹)ᴴ * (Zᴴ * gᴴ)) * Hpk k r = (Hpk k r * (g⁻¹)ᴴ) * Zᴴ * (gᴴ * Hpk k r) := by
          simp only [Matrix.mul_assoc]
      _ = _ := by rw [e1, e2]; simp only [Matrix.mul_assoc]
  unfold hpart1 hpart2
  rw [key]
  constructor
  · rw [Matrix.mul_smul, Matrix.smul_mul, Matrix.mul_sub, Matrix.sub_mul]
  · rw [Matrix.mul_smul, Matrix.smul_mul, Matrix.mul_add, Matrix.add_mul]

end Formalism.FourierDecayAlt.Q.LieAlgebraWeightVectors
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.AdUnitBCtMulVec =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.AdUnitBLie =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.AdUnitBLie", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementQ\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SumDualVectorEqZeta\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.AdUnitBCtMulVec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset Filter Topology
open scoped ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.Q.LieAlgebraWeightVectors

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P.Qx2

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp] [NormedAddCommGroup Wq] [NormedSpace ℂ Wq]
  {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}
  {D : Set (Mx k r)}

def AdK (k r : ℕ) (z : Fin (2 * r + k + 1) → ℂ) (π : Mx k r → (Wp →L[ℂ] Wp)) (D : Set (Mx k r)) :
    Set (Mx k r → (Wq →L[ℂ] Wp)) :=
  {F | SmoothLev k r (Fin.last r) D F ∧
    ∀ x ∈ Glev k r (Fin.last r) ∩ D, ∀ h ∈ UWset k r z, F (h * x) = (π h).comp (F x)}

theorem adK_add {F G : Mx k r → (Wq →L[ℂ] Wp)} (hF : F ∈ AdK k r z π D) (hG : G ∈ AdK k r z π D) :
    F + G ∈ AdK k r z π D := by
  refine ⟨?_, ?_⟩
  · intro g₀ hg₀
    obtain ⟨U₁, F₁, hU₁, hg₁, hF₁, hE₁⟩ := hF.1 g₀ hg₀
    obtain ⟨U₂, F₂, hU₂, hg₂, hF₂, hE₂⟩ := hG.1 g₀ hg₀
    refine ⟨U₁ ∩ U₂, F₁ + F₂, hU₁.inter hU₂, ⟨hg₁, hg₂⟩,
      (hF₁.mono Set.inter_subset_left).add (hF₂.mono Set.inter_subset_right), ?_⟩
    intro g hg hgl
    simp [hE₁ g hg.1 hgl, hE₂ g hg.2 hgl]
  · intro x hx h hh
    simp [hF.2 x hx h hh, hG.2 x hx h hh, ContinuousLinearMap.comp_add]

theorem adK_smul {F : Mx k r → (Wq →L[ℂ] Wp)} (hF : F ∈ AdK k r z π D) (c : ℂ) :
    c • F ∈ AdK k r z π D := by
  refine ⟨?_, ?_⟩
  · intro g₀ hg₀
    obtain ⟨U₁, F₁, hU₁, hg₁, hF₁, hE₁⟩ := hF.1 g₀ hg₀
    refine ⟨U₁, c • F₁, hU₁, hg₁, hF₁.const_smul c, ?_⟩
    intro g hg hgl
    simp [hE₁ g hg hgl]
  · intro x hx h hh
    simp [hF.2 x hx h hh]

theorem adK_zero : (0 : Mx k r → (Wq →L[ℂ] Wp)) ∈ AdK k r z π D := by
  refine ⟨?_, ?_⟩
  · intro g₀ _
    exact ⟨Set.univ, 0, isOpen_univ, Set.mem_univ _, contDiffOn_const, fun _ _ _ => rfl⟩
  · intro x _ h _
    simp

theorem adK_rd (hD : IsOpen D) {X : Mx k r} (hX : inLieLev k r (Fin.last r) X)
    {F : Mx k r → (Wq →L[ℂ] Wp)} (hF : F ∈ AdK k r z π D) : RdV X F ∈ AdK k r z π D := by
  refine ⟨rd_smooth hF.1 hX, ?_⟩
  intro x hx h hh
  have hd := rd_hasDeriv hF.1 hx hX
  have hd2 : HasDerivAt (fun t : ℝ => (π h).comp (F (x * NormedSpace.exp ((t : ℂ) • X))))
      ((π h).comp (RdV X F x)) 0 := by
    have := ((ContinuousLinearMap.compL ℂ Wq Wp Wp (π h)).restrictScalars ℝ).hasFDerivAt.comp_hasDerivAt
      (0 : ℝ) hd
    simpa [Function.comp_def] using this
  have hc : Continuous (fun t : ℝ => x * NormedSpace.exp ((t : ℂ) • X)) := by
    first
      | exact (Formalism.FourierDecayAlt.P.B5.curve_contDiff x X).continuous
  have hD0 : ∀ᶠ t : ℝ in 𝓝 0, x * NormedSpace.exp ((t : ℂ) • X) ∈ D :=
    hc.continuousAt.preimage_mem_nhds (by simpa using hD.mem_nhds hx.2)
  have hev : (fun t : ℝ => F (h * x * NormedSpace.exp ((t : ℂ) • X))) =ᶠ[𝓝 0]
      fun t => (π h).comp (F (x * NormedSpace.exp ((t : ℂ) • X))) := by
    filter_upwards [hD0] with t ht
    rw [Matrix.mul_assoc]
    exact hF.2 _ ⟨curve_lev hx.1 hX t, ht⟩ h hh
  exact (hd2.congr_of_eventuallyEq hev).deriv

theorem adK_RZ (hD : IsOpen D) {Z : Mx k r} (h1 : inLieLev k r (Fin.last r) (hpart1 (Hpk k r) Z))
    (h2 : inLieLev k r (Fin.last r) (hpart2 (Hpk k r) Z)) {F : Mx k r → (Wq →L[ℂ] Wp)}
    (hF : F ∈ AdK k r z π D) : RZ (Hpk k r) Z F ∈ AdK k r z π D :=
  adK_add (adK_rd hD h1 hF) (adK_smul (adK_rd hD h2 hF) Complex.I)

private theorem mul_mem_uh {n : Type*} [Fintype n] [DecidableEq n] {H a b : Matrix n n ℂ}
    (ha : a ∈ UH H) (hb : b ∈ UH H) : a * b ∈ UH H := by
  show (a * b)ᴴ * H * (a * b) = H
  rw [Matrix.conjTranspose_mul]
  calc bᴴ * aᴴ * H * (a * b) = bᴴ * (aᴴ * H * a) * b := by simp only [Matrix.mul_assoc]
    _ = H := by rw [show aᴴ * H * a = H from ha, show bᴴ * H * b = H from hb]

theorem ad_rd_point {F : Mx k r → (Wq →L[ℂ] Wp)} (hF : F ∈ AdK k r z π D) {g : Mx k r}
    (hg : g ∈ Glev k r (Fin.last r) ∩ D) (hgi : g⁻¹ * g = 1) (hgi' : g * g⁻¹ = 1) (hgU : IsUnit g)
    (hginv : g⁻¹ ∈ UH (Hpk k r)) {X : Mx k r} (hX : inLieLev k r (Fin.last r) X)
    (hXz : X *ᵥ (g⁻¹ *ᵥ z) = 0) (v : Wq) :
    RdV X F g v = dRep π (g * X * g⁻¹) (F g v) := by
  have hYv : ∀ w, (g * X * g⁻¹) *ᵥ w = g *ᵥ (X *ᵥ (g⁻¹ *ᵥ w)) := fun w => by
    simp only [Matrix.mulVec_mulVec, Matrix.mul_assoc]
  have hexp : ∀ t : ℝ, g * NormedSpace.exp ((t : ℂ) • X) =
      NormedSpace.exp ((t : ℂ) • (g * X * g⁻¹)) * g := by
    intro t
    have e1 : (t : ℂ) • (g * X * g⁻¹) = g * ((t : ℂ) • X) * g⁻¹ := by
      rw [Matrix.mul_smul, Matrix.smul_mul]
    rw [e1]
    first
      | rw [Matrix.exp_conj g _ hgU]
    rw [Matrix.mul_assoc, hgi, Matrix.mul_one]
  have hginvfix : ∀ w, g *ᵥ w = w → g⁻¹ *ᵥ w = w := by
    intro w hw
    conv_lhs => rw [← hw]
    rw [Matrix.mulVec_mulVec, hgi, Matrix.one_mulVec]
  have hmem : ∀ t : ℝ, NormedSpace.exp ((t : ℂ) • (g * X * g⁻¹)) ∈ UWset k r z := by
    intro t
    have hE : NormedSpace.exp ((t : ℂ) • (g * X * g⁻¹)) = g * NormedSpace.exp ((t : ℂ) • X) * g⁻¹ := by
      rw [hexp t, Matrix.mul_assoc (NormedSpace.exp ((t : ℂ) • (g * X * g⁻¹))) g g⁻¹, hgi', Matrix.mul_one]
    refine ⟨?_, fun a => ?_, ?_⟩
    · rw [hE]
      exact mul_mem_uh (curve_lev hg.1 hX t).1 hginv
    · obtain ⟨h1, h2⟩ := hg.1.2 a a.isLt
      obtain ⟨x1, x2⟩ := hX.2 a a.isLt
      refine ⟨exp_fix ?_ t, exp_fix ?_ t⟩
      · rw [hYv, hginvfix _ h1, x1, Matrix.mulVec_zero]
      · rw [hYv, hginvfix _ h2, x2, Matrix.mulVec_zero]
    · exact exp_fix (by rw [hYv, hXz, Matrix.mulVec_zero]) t
  have heq : ∀ t : ℝ, F (g * NormedSpace.exp ((t : ℂ) • X)) =
      (π (NormedSpace.exp ((t : ℂ) • (g * X * g⁻¹)))).comp (F g) := by
    intro t
    rw [hexp t]
    exact hF.2 g hg _ (hmem t)
  have hd := rd_hasDeriv hF.1 hg hX
  have hd' := ((ContinuousLinearMap.apply ℂ Wp v).restrictScalars ℝ).hasFDerivAt.comp_hasDerivAt (0 : ℝ) hd
  simp only [Function.comp_def, ContinuousLinearMap.coe_restrictScalars', ContinuousLinearMap.apply_apply] at hd'
  have hfun : (fun t : ℝ => π (NormedSpace.exp ((t : ℂ) • (g * X * g⁻¹))) (F g v)) =
      fun t : ℝ => F (g * NormedSpace.exp ((t : ℂ) • X)) v := by
    funext t
    rw [heq t]
    rfl
  rw [dRep, hfun]
  exact hd'.deriv.symm

private theorem herm_bvec_eq_zero_of_inWb {w : Fin (2 * r + k + 1) → ℂ} (hw : inWb k r w)
    (j : Fin (2 * r + k + 1)) (hj : j.val < r ∨ r + k < j.val) : herm (Hpk k r) (bvec j) w = 0 := by
  unfold herm
  have hcol : Hpk k r *ᵥ bvec j = fun i => Hpk k r i j := by
    ext i; simp [Matrix.mulVec, dotProduct, bvec, Pi.single_apply]
  rw [hcol]
  apply Finset.sum_eq_zero
  intro i _
  by_cases hi : i.val < r ∨ r + k < i.val
  · simp [hw i hi]
  · push_neg at hi
    have h0 : Hpk k r i j = 0 := by
      unfold Hpk
      rw [if_neg (by omega), if_neg (by omega),
        if_neg (by rintro ⟨_, _, h⟩; have := congrArg Fin.val h; omega)]
    simp [h0]

theorem ad_unitB_lie {g : Mx k r} {m : ℕ} {Bs : Fin m → Fin (2 * r + k + 1) → ℂ}
    (hBs : IsFrameOf k r [g⁻¹ *ᵥ z] Bs) (a b : Fin m) :
    (inLieLev k r (Fin.last r) (hpart1 (Hpk k r) (unitB (Hpk k r) Bs a b)) ∧
      inLieLev k r (Fin.last r) (hpart2 (Hpk k r) (unitB (Hpk k r) Bs a b))) ∧
    (hpart1 (Hpk k r) (unitB (Hpk k r) Bs a b) *ᵥ (g⁻¹ *ᵥ z) = 0 ∧
      hpart2 (Hpk k r) (unitB (Hpk k r) Bs a b) *ᵥ (g⁻¹ *ᵥ z) = 0) := by
  obtain ⟨hW, _, hO⟩ := hBs
  have hk : ∀ v, (∀ c, herm (Hpk k r) v (Bs c) = 0) →
      hpart1 (Hpk k r) (unitB (Hpk k r) Bs a b) *ᵥ v = 0 ∧
        hpart2 (Hpk k r) (unitB (Hpk k r) Bs a b) *ᵥ v = 0 :=
    fun v hv => ad_unitB_kill Bs a b (hv a) (hv b)
  have hz : ∀ c, herm (Hpk k r) (g⁻¹ *ᵥ z) (Bs c) = 0 := by
    intro c
    rw [ad_herm_symm, hO c _ (List.mem_singleton_self _)]
    simp
  have he : ∀ a' : Fin r, (∀ c, herm (Hpk k r) (bvec (eI k r a')) (Bs c) = 0) ∧
      (∀ c, herm (Hpk k r) (bvec (esI k r a')) (Bs c) = 0) := fun a' =>
    ⟨fun c => herm_bvec_eq_zero_of_inWb (hW c) _ (Or.inl (by simp only [eI]; exact a'.isLt)),
      fun c => herm_bvec_eq_zero_of_inWb (hW c) _ (Or.inr (by simp only [esI]; have := a'.isLt; omega))⟩
  exact ⟨⟨⟨hpart1_lie _, fun a' _ => ⟨(hk _ (he a').1).1, (hk _ (he a').2).1⟩⟩,
    ⟨hpart2_lie _, fun a' _ => ⟨(hk _ (he a').1).2, (hk _ (he a').2).2⟩⟩⟩, (hk _ hz).1, (hk _ hz).2⟩

theorem ad_RZ_point {F : Mx k r → (Wq →L[ℂ] Wp)} (hF : F ∈ AdK k r z π D) {g : Mx k r}
    (hg : g ∈ Glev k r (Fin.last r) ∩ D) (hgi : g⁻¹ * g = 1) (hgi' : g * g⁻¹ = 1) (hgU : IsUnit g)
    (hginv : g⁻¹ ∈ UH (Hpk k r)) {m : ℕ} {Bs : Fin m → Fin (2 * r + k + 1) → ℂ}
    (hBs : IsFrameOf k r [g⁻¹ *ᵥ z] Bs) (a b : Fin m) (v : Wq) :
    RZ (Hpk k r) (unitB (Hpk k r) Bs a b) F g v =
      EcRep (Hpk k r) π (unitB (Hpk k r) (fun c => g *ᵥ Bs c) a b) (F g v) := by
  have hH : (g⁻¹)ᴴ * Hpk k r * g⁻¹ = Hpk k r := hginv
  have hgH : gᴴ * Hpk k r * g = Hpk k r := by
    calc gᴴ * Hpk k r * g = gᴴ * ((g⁻¹)ᴴ * Hpk k r * g⁻¹) * g := by rw [hH]
      _ = (g⁻¹ * g)ᴴ * Hpk k r * (g⁻¹ * g) := by
        rw [Matrix.conjTranspose_mul]; simp only [Matrix.mul_assoc]
      _ = Hpk k r := by rw [hgi]; simp
  obtain ⟨⟨h1, h2⟩, hk1, hk2⟩ := ad_unitB_lie (z := z) (g := g) hBs a b
  simp only [RZ, EcRep]
  rw [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply,
    ad_rd_point hF hg hgi hgi' hgU hginv h1 hk1 v, ad_rd_point hF hg hgi hgi' hgU hginv h2 hk2 v,
    ad_unitB_conj hgH hgi', (ad_hpart_conj hgH hgi' _).1, (ad_hpart_conj hgH hgi' _).2]

theorem ad_foldr {ι X Y : Type*} (K : Set X) (P : X → Y) (l : List ι) (T : ι → X → X) (T' : ι → Y → Y)
    (hK : ∀ j, ∀ x ∈ K, T j x ∈ K) (hP : ∀ j, ∀ x ∈ K, P (T j x) = T' j (P x)) (x : X) (hx : x ∈ K) :
    (l.map T).foldr (fun S h => S h) x ∈ K ∧
      P ((l.map T).foldr (fun S h => S h) x) = (l.map T').foldr (fun S h => S h) (P x) := by
  induction l with
  | nil => exact ⟨hx, rfl⟩
  | cons j l ih =>
    obtain ⟨h1, h2⟩ := ih
    refine ⟨hK j _ h1, ?_⟩
    simp only [List.map_cons, List.foldr_cons]
    rw [hP j _ h1, h2]

theorem left_ad (hz : inWb k r z) (hz' : inWb k r z') (hD : IsDom k r z z' (Fin.last r) D) (hπ'1 : π' 1 = 1)
    {J : Mx k r → (Wq →L[ℂ] Wp)} (hJ : J ∈ FFl k r z z' π π' (Fin.last r) D)
    {g : Mx k r} (hg : g ∈ Glev k r (Fin.last r) ∩ D) {m : ℕ} (Bs : Fin m → Fin (2 * r + k + 1) → ℂ)
    (hBs : IsFrameOf k r [g⁻¹ *ᵥ z] Bs) (w : ℂ) (v : Wq) :
    capR k r Bs w J g v = capRep k r π (fun a => g *ᵥ Bs a) w (J g v) := by
  have hU : gᴴ * Hpk k r * g = Hpk k r := hg.1.1
  have hLI : (Hpk k r * gᴴ * Hpk k r) * g = 1 := by
    calc (Hpk k r * gᴴ * Hpk k r) * g = Hpk k r * (gᴴ * Hpk k r * g) := by
          simp only [Matrix.mul_assoc]
      _ = 1 := by rw [hU, hpk_sq']
  have hinv : g⁻¹ = Hpk k r * gᴴ * Hpk k r := Matrix.inv_eq_left_inv hLI
  have hgi : g⁻¹ * g = 1 := by rw [hinv, hLI]
  have hgi' : g * g⁻¹ = 1 := Matrix.mul_nonsing_inv g (Matrix.isUnit_det_of_left_inverse hLI)
  have hgU : IsUnit g := (Matrix.isUnit_iff_isUnit_det g).mpr (Matrix.isUnit_det_of_left_inverse hLI)
  have hginv : g⁻¹ ∈ UH (Hpk k r) := by
    show (g⁻¹)ᴴ * Hpk k r * g⁻¹ = Hpk k r
    calc (g⁻¹)ᴴ * Hpk k r * g⁻¹ = (g⁻¹)ᴴ * (gᴴ * Hpk k r * g) * g⁻¹ := by rw [hU]
      _ = (g * g⁻¹)ᴴ * Hpk k r * (g * g⁻¹) := by
          rw [Matrix.conjTranspose_mul]; simp only [Matrix.mul_assoc]
      _ = Hpk k r := by rw [hgi']; simp
  have h1W : (1 : Mx k r) ∈ UWset k r z' := by
    refine ⟨?_, fun a => ⟨?_, ?_⟩, ?_⟩ <;> simp [UH]
  have hJ' : J ∈ AdK k r z π D := by
    refine ⟨hJ.1, fun x hx h hh => ?_⟩
    simpa [ContinuousLinearMap.one_def, mul_one, hπ'1] using hJ.2.2.2 x hx h hh 1 h1W
  unfold capR capRep qmF
  simp only [Finset.sum_apply, ContinuousLinearMap.sum_apply, Pi.smul_apply,
    ContinuousLinearMap.smul_apply]
  refine Finset.sum_congr rfl fun σ _ => ?_
  congr 1
  rw [List.ofFn_eq_map, List.ofFn_eq_map]
  refine (ad_foldr (AdK k r z π D) (fun F => F g v) _ _ _ ?_ ?_ J hJ').2
  · intro j x hx
    have hl := (ad_unitB_lie (z := z) (g := g) hBs (id (σ j)) (id j)).1
    refine adK_add ?_ (adK_RZ hD.1 hl.1 hl.2 hx)
    split_ifs
    · exact adK_smul hx _
    · exact adK_zero
  · intro j x hx
    simp only [Pi.add_apply, ContinuousLinearMap.add_apply]
    rw [ad_RZ_point hx hg hgi hgi' hgU hginv hBs _ _ v]
    split_ifs <;> simp

end Formalism.FourierDecayAlt.Q.LieAlgebraWeightVectors
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.AdUnitBLie =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.SmoothVec =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.SmoothVec", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.InLieW\npublic import Formalism.FormalDegreeBessel.FinalG\nimport Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SumDualVectorEqZeta\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.ComplexifiedDerivativeCommutator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset Filter Topology
open scoped ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.Q.LieAlgebraWeightVectors

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

section Group

variable {k r : ℕ}

theorem sv_one_uw (z : Fin (2 * r + k + 1) → ℂ) : (1 : Mx k r) ∈ UWset k r z := by
  simp [UWset, UH]

theorem sv_exp_uw {z : Fin (2 * r + k + 1) → ℂ} {X : Mx k r} (hX : inLieW k r z X) (t : ℝ) :
    NormedSpace.exp ((t : ℂ) • X) ∈ UWset k r z :=
  ⟨B5.exp_mem hX.1 t, fun a => ⟨Qx2.exp_fix (hX.2.2 a).1 t, Qx2.exp_fix (hX.2.2 a).2 t⟩, Qx2.exp_fix hX.2.1 t⟩

theorem sv_uw_glev {z : Fin (2 * r + k + 1) → ℂ} {h g : Mx k r} (hh : h ∈ UWset k r z)
    (hg : g ∈ Glev k r (Fin.last r)) : h * g ∈ Glev k r (Fin.last r) := by
  simp only [UWset, Glev, UH, Set.mem_setOf_eq] at hh hg ⊢
  obtain ⟨hh1, hh2, -⟩ := hh
  obtain ⟨hg1, hg2⟩ := hg
  refine ⟨?_, fun a ha => ⟨?_, ?_⟩⟩
  · rw [Matrix.conjTranspose_mul]
    calc gᴴ * hᴴ * Hpk k r * (h * g) = gᴴ * (hᴴ * Hpk k r * h) * g := by
          simp only [Matrix.mul_assoc]
      _ = Hpk k r := by rw [hh1, hg1]
  · rw [← Matrix.mulVec_mulVec, (hg2 a ha).1, (hh2 a).1]
  · rw [← Matrix.mulVec_mulVec, (hg2 a ha).2, (hh2 a).2]

theorem sv_one_nlev (i : Fin (r + 1)) : (1 : Mx k r) ∈ Nlev k r i :=
  ⟨(nSubgroup k r).1, WeylGroupFacts.uh_one, fun _ _ => ⟨Matrix.one_mulVec _, Matrix.one_mulVec _⟩⟩

theorem sv_uw_slev {z : Fin (2 * r + k + 1) → ℂ} {h : Mx k r} (hh : h ∈ UWset k r z) (i : Fin (r + 1)) :
    h ∈ Slev k r z i := by
  show ∃ h' ∈ UWset k r z, ∃ m ∈ Nlev k r i, h = h' * m
  exact ⟨h, hh, 1, sv_one_nlev i, (mul_one h).symm⟩

end Group

section SmoothJ

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp] [NormedAddCommGroup Wq] [NormedSpace ℂ Wq]
  {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}
  {D : Set (Mx k r)}

theorem J_smoothVec (hz : inWb k r z) (hz' : inWb k r z') (hD : IsDom k r z z' (Fin.last r) D) (hπ'1 : π' 1 = 1)
    {J : Mx k r → (Wq →L[ℂ] Wp)} (hJ : J ∈ FFl k r z z' π π' (Fin.last r) D)
    {g : Mx k r} (hg : g ∈ Glev k r (Fin.last r) ∩ D) (v : Wq) : J g v ∈ SmVec k r z π := by
  intro h hh X hX
  have h1' : (1 : Mx k r) ∈ UWset k r z' := sv_one_uw z'
  have he : ∀ t : ℝ, π (h * NormedSpace.exp ((t : ℂ) • X)) (J g v) =
      J (h * NormedSpace.exp ((t : ℂ) • X) * g) v := by
    intro t
    have hm := hJ.2.2.2 g hg _ (WeylGroupFacts.uw_mul hh (sv_exp_uw hX t)) 1 h1'
    rw [Matrix.mul_one] at hm
    rw [hm]
    simp [hπ'1]
  have hfun : (fun t : ℝ => π (h * NormedSpace.exp ((t : ℂ) • X)) (J g v)) =
      fun t : ℝ => J (h * NormedSpace.exp ((t : ℂ) • X) * g) v := funext he
  rw [hfun]
  have hhg : h * g ∈ Glev k r (Fin.last r) ∩ D := by
    refine ⟨sv_uw_glev hh hg.1, ?_⟩
    have := hD.2 g hg h (sv_uw_slev hh _) 1 (sv_uw_slev h1' _)
    simpa using this
  obtain ⟨U, F, hU, hgU, hF, hFe⟩ := hJ.1 (h * g) hhg
  have hd : DifferentiableAt ℝ F (h * g) :=
    (hF.differentiableOn (by simp)).differentiableAt (hU.mem_nhds hgU)
  have hc : HasDerivAt (fun t : ℝ => h * NormedSpace.exp ((t : ℂ) • X) * g)
      (mulRightRealCLM g (h * NormedSpace.exp (((0 : ℝ) : ℂ) • X) * X)) 0 :=
    (mulRightRealCLM g).hasFDerivAt.comp_hasDerivAt (0 : ℝ) (B5.curve_hasDerivAt h X 0)
  have hc0 : h * g = h * NormedSpace.exp (((0 : ℝ) : ℂ) • X) * g := by
    simp [NormedSpace.exp_zero]
  have hFc : DifferentiableAt ℝ (fun t : ℝ => F (h * NormedSpace.exp ((t : ℂ) • X) * g)) 0 :=
    (hd.hasFDerivAt.comp_hasDerivAt_of_eq (0 : ℝ) hc hc0).differentiableAt
  have hFv : DifferentiableAt ℝ (fun t : ℝ => F (h * NormedSpace.exp ((t : ℂ) • X) * g) v) 0 :=
    ((ContinuousLinearMap.apply ℂ Wp v).restrictScalars ℝ).differentiableAt.comp (0 : ℝ) hFc
  refine hFv.congr_of_eventuallyEq ?_
  have hmem : ∀ᶠ t : ℝ in 𝓝 0, h * NormedSpace.exp ((t : ℂ) • X) * g ∈ U :=
    hc.continuousAt.preimage_mem_nhds (by rw [← hc0]; exact hU.mem_nhds hgU)
  filter_upwards [hmem] with t ht
  rw [hFe _ ht (sv_uw_glev (WeylGroupFacts.uw_mul hh (sv_exp_uw hX t)) hg.1)]

end SmoothJ

section Conj

variable {k r : ℕ}

theorem sv_lie_conj {z : Fin (2 * r + k + 1) → ℂ} {X h₀ : Mx k r} (hX : inLieW k r z X)
    (hh₀ : h₀ ∈ UWset k r z) : inLieW k r z (h₀⁻¹ * X * h₀) := by
  have hu := WeylGroupFacts.isUnit_of_uh hh₀.1
  have hi1 : h₀ * h₀⁻¹ = 1 := Matrix.mul_nonsing_inv _ hu
  have hU : h₀ᴴ * Hpk k r * h₀ = Hpk k r := hh₀.1
  have A : (h₀⁻¹)ᴴ * Hpk k r = Hpk k r * h₀ := by
    calc (h₀⁻¹)ᴴ * Hpk k r = (h₀⁻¹)ᴴ * (h₀ᴴ * Hpk k r * h₀) := by rw [hU]
      _ = (h₀ * h₀⁻¹)ᴴ * Hpk k r * h₀ := by rw [conjTranspose_mul]; simp only [Matrix.mul_assoc]
      _ = Hpk k r * h₀ := by rw [hi1, conjTranspose_one, Matrix.one_mul]
  have B : Hpk k r * h₀⁻¹ = h₀ᴴ * Hpk k r := by
    calc Hpk k r * h₀⁻¹ = h₀ᴴ * Hpk k r * h₀ * h₀⁻¹ := by rw [hU]
      _ = h₀ᴴ * Hpk k r := by rw [Matrix.mul_assoc, hi1, Matrix.mul_one]
  refine ⟨?_, ?_, fun a => ⟨?_, ?_⟩⟩
  · calc (h₀⁻¹ * X * h₀)ᴴ * Hpk k r + Hpk k r * (h₀⁻¹ * X * h₀)
        = h₀ᴴ * (Xᴴ * ((h₀⁻¹)ᴴ * Hpk k r)) + (Hpk k r * h₀⁻¹) * X * h₀ := by
          simp only [conjTranspose_mul, Matrix.mul_assoc]
      _ = h₀ᴴ * (Xᴴ * Hpk k r + Hpk k r * X) * h₀ := by
          rw [A, B]; simp only [Matrix.mul_add, Matrix.add_mul, Matrix.mul_assoc]
      _ = 0 := by rw [hX.1]; simp
  · rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hh₀.2.2, hX.2.1, Matrix.mulVec_zero]
  · rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, (hh₀.2.1 a).1, (hX.2.2 a).1, Matrix.mulVec_zero]
  · rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, (hh₀.2.1 a).2, (hX.2.2 a).2, Matrix.mulVec_zero]

theorem sv_exp_conj {z : Fin (2 * r + k + 1) → ℂ} {X h h₀ : Mx k r} (hh₀ : h₀ ∈ UWset k r z) (t : ℝ) :
    h * NormedSpace.exp ((t : ℂ) • X) * h₀ = h * h₀ * NormedSpace.exp ((t : ℂ) • (h₀⁻¹ * X * h₀)) := by
  have hu := WeylGroupFacts.isUnit_of_uh hh₀.1
  have hu' : IsUnit h₀ := (Matrix.isUnit_iff_isUnit_det _).2 hu
  have hi1 : h₀ * h₀⁻¹ = 1 := Matrix.mul_nonsing_inv _ hu
  have e : (t : ℂ) • (h₀⁻¹ * X * h₀) = h₀⁻¹ * ((t : ℂ) • X) * h₀ := by
    rw [Matrix.mul_smul, Matrix.smul_mul]
  rw [e, Matrix.exp_conj' _ _ hu']
  simp only [← Matrix.mul_assoc]
  rw [Matrix.mul_assoc h h₀ h₀⁻¹, hi1, Matrix.mul_one]

end Conj

section Lin

variable {Wp : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp] {k r : ℕ} {z : Fin (2 * r + k + 1) → ℂ}
  {π : Mx k r → (Wp →L[ℂ] Wp)}

def svSub (k r : ℕ) (z : Fin (2 * r + k + 1) → ℂ) (π : Mx k r → (Wp →L[ℂ] Wp)) : Submodule ℂ Wp where
  carrier := SmVec k r z π
  zero_mem' := by
    intro h _ X _
    simp only [map_zero]
    exact differentiableAt_const _
  add_mem' := by
    intro x y hx hy h hh X hX
    simp only [map_add (f := _)]
    exact (hx h hh X hX).add (hy h hh X hX)
  smul_mem' := by
    intro c x hx h hh X hX
    simp only [map_smul]
    exact (hx h hh X hX).const_smul c

theorem sv_stable (hrep : IsCRepOn (UWset k r z) π) {h₀ : Mx k r} (hh₀ : h₀ ∈ UWset k r z) {x : Wp}
    (hx : x ∈ SmVec k r z π) : π h₀ x ∈ SmVec k r z π := by
  intro h hh X hX
  have e : (fun t : ℝ => π (h * NormedSpace.exp ((t : ℂ) • X)) (π h₀ x)) =
      fun t : ℝ => π (h * h₀ * NormedSpace.exp ((t : ℂ) • (h₀⁻¹ * X * h₀))) x := by
    funext t
    rw [← sv_exp_conj hh₀ t, hrep.2 _ (WeylGroupFacts.uw_mul hh (sv_exp_uw hX t)) _ hh₀]
    rfl
  rw [e]
  exact hx (h * h₀) (WeylGroupFacts.uw_mul hh hh₀) _ (sv_lie_conj hX hh₀)

theorem sv_all {u : ℕ → ℝ} (hπ : IsType k r z π u) {x₀ : Wp} (hx₀ : x₀ ≠ 0) (hsm : x₀ ∈ SmVec k r z π)
    (v : Wp) : v ∈ SmVec k r z π := by
  rcases hπ.2.2.2.2.1 (svSub k r z π) (fun h hh v hv => sv_stable hπ.2.1 hh hv) with h0 | htop
  · have hm : x₀ ∈ svSub k r z π := hsm
    rw [h0] at hm
    exact absurd ((Submodule.mem_bot ℂ).1 hm) hx₀
  · have hm : v ∈ svSub k r z π := by rw [htop]; exact Submodule.mem_top
    exact hm

theorem sv_dRep_diff (hall : ∀ v : Wp, v ∈ SmVec k r z π) {X : Mx k r} (hX : inLieW k r z X) (v : Wp) :
    DifferentiableAt ℝ (fun t : ℝ => π (NormedSpace.exp ((t : ℂ) • X)) v) 0 := by
  have := hall v 1 (sv_one_uw z) X hX
  simpa only [Matrix.one_mul] using this

theorem sv_dRep_lin (hall : ∀ v : Wp, v ∈ SmVec k r z π) {X : Mx k r} (hX : inLieW k r z X) :
    IsLinearMap ℂ (dRep π X) := by
  constructor
  · intro x y
    unfold dRep
    simp only [map_add (f := _)]
    exact deriv_add (sv_dRep_diff hall hX x) (sv_dRep_diff hall hX y)
  · intro c x
    unfold dRep
    simp only [map_smul]
    exact deriv_const_smul c (sv_dRep_diff hall hX x)

theorem sv_ecRep_lin (hall : ∀ v : Wp, v ∈ SmVec k r z π) {Z : Mx k r}
    (h1 : inLieW k r z (hpart1 (Hpk k r) Z)) (h2 : inLieW k r z (hpart2 (Hpk k r) Z)) :
    IsLinearMap ℂ (EcRep (Hpk k r) π Z) := by
  have l1 := sv_dRep_lin hall h1
  have l2 := sv_dRep_lin hall h2
  constructor
  · intro x y
    unfold EcRep
    rw [l1.map_add (f := _), l2.map_add (f := _), smul_add]
    abel
  · intro c x
    unfold EcRep
    rw [l1.map_smul, l2.map_smul, smul_add, smul_comm Complex.I c]

end Lin

section Frame

variable {k r : ℕ}

theorem sv_herm_bvec (p : Fin (2 * r + k + 1)) (w : Fin (2 * r + k + 1) → ℂ) :
    herm (Hpk k r) (bvec p) w = ∑ i, star (w i) * Hpk k r i p := by
  simp [herm, bvec, Matrix.mulVec, dotProduct, Pi.single_apply]

theorem sv_herm_out {w : Fin (2 * r + k + 1) → ℂ} (hw : inWb k r w) {p : Fin (2 * r + k + 1)}
    (hp : p.val < r ∨ r + k < p.val) : herm (Hpk k r) (bvec p) w = 0 := by
  rw [sv_herm_bvec]
  refine Finset.sum_eq_zero fun i _ => ?_
  by_cases hi : i.val < r ∨ r + k < i.val
  · rw [hw i hi, star_zero, zero_mul]
  · have h0 : Hpk k r i p = 0 := by
      simp only [Hpk, Fin.ext_iff]
      split_ifs <;> first | rfl | (exfalso; omega)
    rw [h0, mul_zero]

theorem sv_herm_swap (v w : Fin (2 * r + k + 1) → ℂ) :
    herm (Hpk k r) v w = star (herm (Hpk k r) w v) := by
  have hsym : ∀ i j, Hpk k r i j = Hpk k r j i := by
    intro i j
    simp only [Hpk, Fin.ext_iff]
    split_ifs <;> first | rfl | (exfalso; omega)
  have hreal : ∀ i j, star (Hpk k r i j) = Hpk k r i j := by
    intro i j
    simp only [Hpk]
    split_ifs <;> simp
  simp only [herm, dotProduct, Matrix.mulVec, Pi.star_apply, star_sum, star_mul', star_star, hreal]
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [hsym]
  ring

theorem sv_unitB_mulVec {m : ℕ} (Bs : Fin m → Fin (2 * r + k + 1) → ℂ) (a b : Fin m)
    (v : Fin (2 * r + k + 1) → ℂ) : unitB (Hpk k r) Bs a b *ᵥ v = herm (Hpk k r) v (Bs b) • Bs a := by
  ext p
  simp only [Matrix.mulVec, dotProduct, unitB, Matrix.of_apply, sv_herm_bvec, Pi.smul_apply, smul_eq_mul]
  unfold herm
  simp only [dotProduct, Matrix.mulVec, Finset.mul_sum, Finset.sum_mul]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [Pi.star_apply]
  ring

theorem sv_unitB_adj {m : ℕ} (Bs : Fin m → Fin (2 * r + k + 1) → ℂ) (a b : Fin m)
    (v : Fin (2 * r + k + 1) → ℂ) :
    (unitB (Hpk k r) Bs a b)ᴴ *ᵥ (Hpk k r *ᵥ v) =
      herm (Hpk k r) v (Bs a) • fun p => star (herm (Hpk k r) (bvec p) (Bs b)) := by
  ext p
  simp only [Matrix.mulVec, dotProduct, Matrix.conjTranspose_apply, unitB, Matrix.of_apply, star_mul',
    Pi.smul_apply, smul_eq_mul]
  unfold herm
  simp only [dotProduct, Matrix.mulVec, Finset.sum_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun x _ => Finset.sum_congr rfl fun i _ => ?_
  rw [Pi.star_apply]
  ring

theorem sv_unitB_kill {m : ℕ} (Bs : Fin m → Fin (2 * r + k + 1) → ℂ) (a b : Fin m)
    {v : Fin (2 * r + k + 1) → ℂ} (ha : herm (Hpk k r) v (Bs a) = 0) (hb : herm (Hpk k r) v (Bs b) = 0) :
    hpart1 (Hpk k r) (unitB (Hpk k r) Bs a b) *ᵥ v = 0 ∧ hpart2 (Hpk k r) (unitB (Hpk k r) Bs a b) *ᵥ v = 0 := by
  have e1 : unitB (Hpk k r) Bs a b *ᵥ v = 0 := by rw [sv_unitB_mulVec, hb, zero_smul]
  have e2 : (Hpk k r * (unitB (Hpk k r) Bs a b)ᴴ * Hpk k r) *ᵥ v = 0 := by
    rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, sv_unitB_adj, ha, zero_smul, Matrix.mulVec_zero]
  unfold hpart1 hpart2
  rw [Qx2.hpk_inv, Matrix.smul_mulVec, Matrix.smul_mulVec, Matrix.sub_mulVec, Matrix.add_mulVec, e1, e2]
  simp only [sub_self, add_zero, smul_zero, and_self]

theorem sv_unitB_lie {z : Fin (2 * r + k + 1) → ℂ} {m : ℕ} {Bs : Fin m → Fin (2 * r + k + 1) → ℂ}
    (hBs : IsFrameOf k r [z] Bs) (a b : Fin m) :
    inLieW k r z (hpart1 (Hpk k r) (unitB (Hpk k r) Bs a b)) ∧
      inLieW k r z (hpart2 (Hpk k r) (unitB (Hpk k r) Bs a b)) := by
  have hzB : ∀ x, herm (Hpk k r) z (Bs x) = 0 := fun x => by
    rw [sv_herm_swap, hBs.2.2 x z (List.mem_singleton_self z), star_zero]
  have heB : ∀ (c : Fin r) x, herm (Hpk k r) (bvec (eI k r c)) (Bs x) = 0 := fun c x =>
    sv_herm_out (hBs.1 x) (Or.inl (by simp [eI]))
  have hesB : ∀ (c : Fin r) x, herm (Hpk k r) (bvec (esI k r c)) (Bs x) = 0 := fun c x =>
    sv_herm_out (hBs.1 x) (Or.inr (by have := c.isLt; simp only [esI]; omega))
  have kz := sv_unitB_kill Bs a b (hzB a) (hzB b)
  have ke := fun c => sv_unitB_kill Bs a b (heB c a) (heB c b)
  have kes := fun c => sv_unitB_kill Bs a b (hesB c a) (hesB c b)
  exact ⟨⟨Qx2.hpart1_lie _, kz.1, fun c => ⟨(ke c).1, (kes c).1⟩⟩,
    ⟨Qx2.hpart2_lie _, kz.2, fun c => ⟨(ke c).2, (kes c).2⟩⟩⟩

end Frame

section QM

theorem sv_foldr_lin {X : Type*} [AddCommGroup X] [Module ℂ X] (L : List (X → X))
    (hL : ∀ T ∈ L, IsLinearMap ℂ T) : IsLinearMap ℂ (fun x => L.foldr (fun T h => T h) x) := by
  induction L with
  | nil => exact ⟨fun x y => rfl, fun c x => rfl⟩
  | cons T L ih =>
    have hT := hL T (by simp)
    have ih' := ih (fun S hS => hL S (by simp [hS]))
    refine ⟨fun x y => ?_, fun c x => ?_⟩
    · have e1 := ih'.map_add x y
      have e2 := hT.map_add (List.foldr (fun T h => T h) x L) (List.foldr (fun T h => T h) y L)
      try simp only at e1
      simp only [List.foldr_cons, e1, e2]
    · have e1 := ih'.map_smul c x
      have e2 := hT.map_smul c (List.foldr (fun T h => T h) x L)
      try simp only at e1
      simp only [List.foldr_cons, e1, e2]

theorem sv_qmF_lin {X : Type*} [AddCommGroup X] [Module ℂ X] {n t : ℕ} (Eop : Fin n → Fin n → X → X)
    (hE : ∀ a b, IsLinearMap ℂ (Eop a b)) (a b : Fin t → Fin n) (u : ℂ) : IsLinearMap ℂ (qmF Eop a b u) := by
  have hfac : ∀ σ : Equiv.Perm (Fin t), IsLinearMap ℂ (fun x : X =>
      (List.ofFn fun k : Fin t => fun y : X =>
        (if a (σ k) = b k then (u - ((k : ℕ) : ℂ)) • y else 0) + Eop (a (σ k)) (b k) y).foldr
        (fun T h => T h) x) := by
    intro σ
    apply sv_foldr_lin
    intro T hT
    rw [List.mem_ofFn] at hT
    obtain ⟨j, rfl⟩ := hT
    have hl := hE (a (σ j)) (b j)
    constructor
    · intro x y
      split_ifs <;> simp only [hl.map_add (f := _), smul_add] <;> abel
    · intro c x
      split_ifs <;> simp only [hl.map_smul, smul_add, zero_add, smul_comm c]
  constructor
  · intro x y
    unfold qmF
    rw [← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun σ _ => ?_
    rw [← smul_add]
    exact congrArg _ ((hfac σ).map_add x y)
  · intro c x
    unfold qmF
    rw [Finset.smul_sum]
    refine Finset.sum_congr rfl fun σ _ => ?_
    rw [smul_comm c]
    exact congrArg _ ((hfac σ).map_smul c x)

end QM

section Cap

variable {Wp : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp] {k r : ℕ} {z : Fin (2 * r + k + 1) → ℂ}
  {π : Mx k r → (Wp →L[ℂ] Wp)}

theorem capRep_linear {u : ℕ → ℝ} (hπ : IsType k r z π u) {x₀ : Wp} (hx₀ : x₀ ≠ 0) (hsm : x₀ ∈ SmVec k r z π)
    {m : ℕ} (Bs : Fin m → Fin (2 * r + k + 1) → ℂ) (hBs : IsFrameOf k r [z] Bs) (w : ℂ) :
    IsLinearMap ℂ (capRep k r π Bs w) := by
  have hall := sv_all hπ hx₀ hsm
  unfold capRep
  exact sv_qmF_lin _ (fun a b => sv_ecRep_lin hall (sv_unitB_lie hBs a b).1 (sv_unitB_lie hBs a b).2) id id w

end Cap

end Formalism.FourierDecayAlt.Q.LieAlgebraWeightVectors
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.SmoothVec =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.SpecAbstract =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.SpecAbstract", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Normed\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Lagrange\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.FormalDegreeBessel.StatementWR\nimport Formalism.RealPlaceAnalysis.StatementA\npublic import Mathlib.Algebra.Polynomial.Degree.Defs\npublic import Mathlib.Algebra.Polynomial.Eval.Defs\npublic import Mathlib.Algebra.Polynomial.Eval.Degree\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset
open scoped ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.Q.LieAlgebraWeightVectors

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

section SpecAux

variable {Wp Wq : Type*} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp] [NormedAddCommGroup Wq]
    [NormedSpace ℂ Wq] {X : Type*}

theorem spec_sum_mem {β : Type*} (𝓕 : Set (X → (Wq →L[ℂ] Wp)))
    (h0 : (fun _ => (0 : Wq →L[ℂ] Wp)) ∈ 𝓕)
    (hadd : ∀ F₁ ∈ 𝓕, ∀ F₂ ∈ 𝓕, (fun x => F₁ x + F₂ x) ∈ 𝓕)
    (f : β → X → (Wq →L[ℂ] Wp)) (s : Finset β) (hf : ∀ i ∈ s, f i ∈ 𝓕) :
    (fun x => ∑ i ∈ s, f i x) ∈ 𝓕 := by
  classical
  revert hf
  refine Finset.induction_on s ?_ ?_
  · intro _
    have e : (fun x => ∑ i ∈ (∅ : Finset β), f i x) = fun _ => (0 : Wq →L[ℂ] Wp) := by
      funext x; simp
    rw [e]; exact h0
  · intro a s ha ih hf
    have e : (fun x => ∑ i ∈ insert a s, f i x) = fun x => f a x + ∑ i ∈ s, f i x := by
      funext x; rw [Finset.sum_insert ha]
    rw [e]
    exact hadd _ (hf a (Finset.mem_insert_self a s)) _
      (ih fun i hi => hf i (Finset.mem_insert_of_mem hi))

theorem spec_iter {ι : Type*} (𝓕 : Set (X → (Wq →L[ℂ] Wp))) (G : Set X)
    (T : ℂ → (X → (Wq →L[ℂ] Wp)) → X → (Wq →L[ℂ] Wp)) (c : X → ℂ) (hc : ∀ g ∈ G, c g ≠ 0)
    (Y₀ : ℂ) (hA : ∀ F ∈ 𝓕, (fun x => (c x)⁻¹ • T Y₀ F x) ∈ 𝓕)
    (lam : ι → ℂ → ℂ) (S : X → ι → Submodule ℂ Wq)
    (heig : ∀ F ∈ 𝓕, ∀ g ∈ G, ∀ σ, ∀ v ∈ S g σ, ∀ Y, T Y F g v = (c g * lam σ Y) • F g v)
    (J : X → (Wq →L[ℂ] Wp)) (hJ : J ∈ 𝓕) (n : ℕ) :
    ((fun F x => (c x)⁻¹ • T Y₀ F x)^[n] J ∈ 𝓕) ∧
      ∀ g ∈ G, ∀ σ, ∀ v ∈ S g σ,
        ((fun F x => (c x)⁻¹ • T Y₀ F x)^[n] J) g v = (lam σ Y₀) ^ n • J g v := by
  induction n with
  | zero => exact ⟨hJ, fun g _ σ v _ => by simp⟩
  | succ n ih =>
    obtain ⟨h1, h2⟩ := ih
    refine ⟨?_, ?_⟩
    · rw [Function.iterate_succ_apply']
      exact hA _ h1
    · intro g hg σ v hv
      rw [Function.iterate_succ_apply']
      simp only [ContinuousLinearMap.smul_apply]
      rw [heig _ h1 g hg σ v hv Y₀, h2 g hg σ v hv]
      simp only [smul_smul]
      congr 1
      have hcg := hc g hg
      rw [pow_succ]
      field_simp

end SpecAux

theorem spec_abstract {Wp Wq : Type*} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp] [NormedAddCommGroup Wq]
    [NormedSpace ℂ Wq] {X ι : Type*} [Fintype ι] [DecidableEq ι]
    (𝓕 : Set (X → (Wq →L[ℂ] Wp))) (G : Set X)
    (h0 : (fun _ => (0 : Wq →L[ℂ] Wp)) ∈ 𝓕)
    (hadd : ∀ F₁ ∈ 𝓕, ∀ F₂ ∈ 𝓕, (fun x => F₁ x + F₂ x) ∈ 𝓕)
    (hsmul : ∀ F ∈ 𝓕, ∀ c : ℂ, (fun x => c • F x) ∈ 𝓕)
    (T : ℂ → (X → (Wq →L[ℂ] Wp)) → X → (Wq →L[ℂ] Wp)) (c : X → ℂ) (hc : ∀ g ∈ G, c g ≠ 0)
    (Y₀ : ℂ) (hA : ∀ F ∈ 𝓕, (fun x => (c x)⁻¹ • T Y₀ F x) ∈ 𝓕)
    (lam : ι → ℂ → ℂ) (hinj : Function.Injective (fun σ => lam σ Y₀))
    (S : X → ι → Submodule ℂ Wq) (hS : ∀ g ∈ G, DirectSum.IsInternal (S g))
    (heig : ∀ F ∈ 𝓕, ∀ g ∈ G, ∀ σ, ∀ v ∈ S g σ, ∀ Y, T Y F g v = (c g * lam σ Y) • F g v)
    (J : X → (Wq →L[ℂ] Wp)) (hJ : J ∈ 𝓕) :
    ∃ dec : ι → X → (Wq →L[ℂ] Wp), (∀ σ, dec σ ∈ 𝓕) ∧ (∀ g ∈ G, J g = ∑ σ, dec σ g) ∧
      (∀ σ Y, ∀ g ∈ G, T Y (dec σ) g = (c g * lam σ Y) • dec σ g) ∧
      ∀ g ∈ G, ∀ σ v, ∃ w ∈ S g σ, dec σ g v = J g w := by
  classical
  have hinjOn : Set.InjOn (fun σ => lam σ Y₀) (Finset.univ : Finset ι) := fun a _ b _ h => hinj h
  have hit := spec_iter 𝓕 G T c hc Y₀ hA lam S heig J hJ
  obtain ⟨dec, hdec⟩ : ∃ dec : ι → X → (Wq →L[ℂ] Wp), ∀ σ x, dec σ x =
      ∑ n ∈ Finset.range ((Lagrange.basis Finset.univ (fun σ => lam σ Y₀) σ).natDegree + 1),
        (Lagrange.basis Finset.univ (fun σ => lam σ Y₀) σ).coeff n •
          ((fun F x => (c x)⁻¹ • T Y₀ F x)^[n] J) x := ⟨_, fun _ _ => rfl⟩
  have hmem : ∀ σ, dec σ ∈ 𝓕 := by
    intro σ
    have hfun : dec σ = fun x => ∑ n ∈ Finset.range
        ((Lagrange.basis Finset.univ (fun σ => lam σ Y₀) σ).natDegree + 1),
        (fun n x => (Lagrange.basis Finset.univ (fun σ => lam σ Y₀) σ).coeff n •
          ((fun F x => (c x)⁻¹ • T Y₀ F x)^[n] J) x) n x := funext (hdec σ)
    rw [hfun]
    exact spec_sum_mem 𝓕 h0 hadd _ _ fun n _ => hsmul _ (hit n).1 _
  have hkey : ∀ σ, ∀ g ∈ G, ∀ τ, ∀ v ∈ S g τ, dec σ g v = if σ = τ then J g v else 0 := by
    intro σ g hg τ v hv
    have h1 : dec σ g v =
        ((Lagrange.basis Finset.univ (fun σ => lam σ Y₀) σ).eval (lam τ Y₀)) • J g v := by
      rw [hdec, Polynomial.eval_eq_sum_range, Finset.sum_smul, _root_.sum_apply]
      refine Finset.sum_congr rfl fun n _ => ?_
      rw [_root_.smul_apply, (hit n).2 g hg τ v hv, smul_smul]
    rw [h1]
    split_ifs with hστ
    · subst hστ
      have he := Lagrange.eval_basis_self hinjOn (Finset.mem_univ σ)
      rw [he, one_smul]
    · have he := Lagrange.eval_basis_of_ne (v := fun σ => lam σ Y₀) hστ (Finset.mem_univ τ)
      rw [he, zero_smul]
  have htop : ∀ g ∈ G, ∀ v : Wq, v ∈ ⨆ i, S g i := fun g hg v => by
    rw [(hS g hg).submodule_iSup_eq_top]
    exact Submodule.mem_top
  refine ⟨dec, hmem, ?_, ?_, ?_⟩
  · intro g hg
    ext v
    rw [_root_.sum_apply]
    refine Submodule.iSup_induction (S g) (motive := fun v => J g v = ∑ σ, dec σ g v)
      (htop g hg v) ?_ ?_ ?_
    · intro τ w hw
      simp only [hkey _ g hg τ w hw, Finset.sum_ite_eq', Finset.mem_univ, if_true]
    · simp
    · intro x y hx hy
      simp only [map_add (f := _), hx, hy, Finset.sum_add_distrib]
  · intro σ Y g hg
    ext v
    rw [_root_.smul_apply]
    refine Submodule.iSup_induction (S g)
      (motive := fun v => T Y (dec σ) g v = (c g * lam σ Y) • dec σ g v) (htop g hg v) ?_ ?_ ?_
    · intro τ w hw
      rw [heig (dec σ) (hmem σ) g hg τ w hw Y, hkey σ g hg τ w hw]
      split_ifs with hστ
      · rw [hστ]
      · rw [smul_zero, smul_zero]
    · simp
    · intro x y hx hy
      rw [map_add (f := _), map_add (f := _), hx, hy, smul_add]
  · intro g hg σ v
    refine Submodule.iSup_induction (S g)
      (motive := fun v => ∃ w ∈ S g σ, dec σ g v = J g w) (htop g hg v) ?_ ?_ ?_
    · intro τ w hw
      by_cases hστ : σ = τ
      · subst hστ
        exact ⟨w, hw, by rw [hkey σ g hg σ w hw, if_pos rfl]⟩
      · exact ⟨0, zero_mem _, by rw [hkey σ g hg τ w hw, if_neg hστ, map_zero]⟩
    · exact ⟨0, zero_mem _, by rw [map_zero, map_zero]⟩
    · rintro x y ⟨w₁, hw₁, h₁⟩ ⟨w₂, hw₂, h₂⟩
      exact ⟨w₁ + w₂, add_mem hw₁ hw₂, by rw [map_add (f := _), map_add (f := _), h₁, h₂]⟩

end Formalism.FourierDecayAlt.Q.LieAlgebraWeightVectors
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.SpecAbstract =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.Vanish =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.Vanish", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.InLieW\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.CbStrictMonoOfAnti\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset
open scoped ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.Q.LieAlgebraWeightVectors

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

private theorem linearMap_coeAddMonoidHom_eq_mapRange_smul {ι : Type*} [DecidableEq ι] {W : Type*} [AddCommGroup W] [Module ℂ W]
    (S : ι → Submodule ℂ W) (L : W →ₗ[ℂ] W) (a : ι → ℂ) (hL : ∀ i, ∀ y ∈ S i, L y = a i • y)
    (f : DirectSum ι (fun i => S i)) :
    L (DirectSum.coeAddMonoidHom S f) = DirectSum.coeAddMonoidHom S
      (DFinsupp.mapRange.addMonoidHom (fun i => DistribSMul.toAddMonoidHom (S i) (a i)) f) := by
  induction f using DirectSum.induction_on with
  | zero => simp
  | of i y =>
    rw [DirectSum.coeAddMonoidHom_of, hL i y y.2]
    change _ = DirectSum.coeAddMonoidHom S
      (DFinsupp.mapRange _ (fun j => map_zero _) (DFinsupp.single (β := fun j => S j) i y))
    rw [DFinsupp.mapRange_single]
    change _ = DirectSum.coeAddMonoidHom S (DirectSum.of (fun j => S j) i _)
    rw [DirectSum.coeAddMonoidHom_of]
    rfl
  | add f g hf hg => simp only [map_add (f := _), hf, hg]

theorem vanish_match (hBr : Branching) {P : M.Par} (hP : P.OK) {Wp : Type} [NormedAddCommGroup Wp]
    [NormedSpace ℂ Wp] [FiniteDimensional ℂ Wp] {z : Fin (2 * P.r + P.k + 1) → ℂ} {π : Mx P.k P.r → (Wp →L[ℂ] Wp)}
    (hz : inWb P.k P.r z) (hT : 0 < Tz P.k P.r z) (hπ : IsType P.k P.r z π P.u)
    {e : Fin (2 * P.r + P.k + 1) → ℂ} (he : inWb P.k P.r e) (hez : herm (Hpk P.k P.r) e z = 0)
    (hee : herm (Hpk P.k P.r) e e = 1) (Bs : Fin (P.k - 1) → Fin (2 * P.r + P.k + 1) → ℂ)
    (hBs : IsFrameOf P.k P.r [z, e] Bs) (hlin : ∀ w : ℂ, IsLinearMap ℂ (capRep P.k P.r π Bs w))
    {x : Wp} (hx : x ≠ 0) (μ : ℂ → ℂ) (hμ : ∀ w : ℂ, capRep P.k P.r π Bs w x = μ (w - ((P.k : ℂ) - 2) / 2) • x) :
    ∃ ρ : M.Ty (Pq P), ∀ Y : ℂ, μ Y = M.xC (Pq P) ρ Y := by
  obtain ⟨S, hS, -, hcap⟩ := hBr Wp (Pq P) (Pq_OK hP) rfl z e π hz hT hπ he hez hee
  obtain ⟨d, hd⟩ := hS.2 x
  obtain ⟨ρ, hρ⟩ : ∃ ρ, d ρ ≠ 0 := by
    by_contra h
    push Not at h
    exact hx (by rw [← hd, show d = 0 from DFinsupp.ext h, map_zero])
  refine ⟨ρ, fun Y => ?_⟩
  have hw : Y + ((P.k : ℂ) - 2) / 2 - ((P.k : ℂ) - 2) / 2 = Y := add_sub_cancel_right _ _
  have h1 := linearMap_coeAddMonoidHom_eq_mapRange_smul S (IsLinearMap.mk' _ (hlin (Y + ((P.k : ℂ) - 2) / 2)))
    (fun σ => M.xC (Pq P) σ Y)
    (fun σ y hy => (hcap Bs hBs σ _ y hy).trans (congrArg (fun t => M.xC (Pq P) σ t • y) hw)) d
  have h2 := linearMap_coeAddMonoidHom_eq_mapRange_smul S (μ Y • LinearMap.id) (fun _ => μ Y) (fun _ _ _ => rfl) d
  have h3 : (DFinsupp.mapRange.addMonoidHom fun i =>
        DistribSMul.toAddMonoidHom (S i) (M.xC (Pq P) i Y)) d =
      (DFinsupp.mapRange.addMonoidHom fun i => DistribSMul.toAddMonoidHom (S i) (μ Y)) d :=
    hS.1 (by
      rw [← h1, ← h2, hd]
      simpa [hw] using hμ (Y + ((P.k : ℂ) - 2) / 2))
  have h4 := congrArg (fun f => f ρ) h3
  simp only [DFinsupp.mapRange.addMonoidHom_apply, DFinsupp.mapRange_apply,
    DistribSMul.toAddMonoidHom_apply] at h4
  exact (smul_left_injective ℂ hρ h4).symm

end Formalism.FourierDecayAlt.Q.LieAlgebraWeightVectors
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.Vanish =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.RadialDecompositionOfParts =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.RadialDecompositionOfParts", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementQ\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.AdUnitBLie\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.CbStrictMonoOfAnti\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.ExistsFrameOfPositiveVector\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.SmoothVec\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.SpecAbstract\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.TopLevelPointwiseIdentity\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.Vanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset
open scoped ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.Q.LieAlgebraWeightVectors

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem frame_sub {k r m : ℕ} {vs vs' : List (Fin (2 * r + k + 1) → ℂ)} {Bs : Fin m → Fin (2 * r + k + 1) → ℂ}
    (h : IsFrameOf k r vs Bs) (hs : ∀ v ∈ vs', v ∈ vs) : IsFrameOf k r vs' Bs :=
  ⟨h.1, h.2.1, fun a v hv => h.2.2 a v (hs v hv)⟩

theorem radial_decomposition_of_parts' : RadialDecompositionOfParts := by
  intro _hC2 _hCC hCap hRTA hBr hTP
  intro Wp Wq _ _ _ _ _ _ P z z' π π' D hPl hD hGGD J hJ
  obtain ⟨hP, hz, hz', hTz, hTz', hπ, hπ'⟩ := hPl
  have hT : 0 < Tz P.k P.r z := by rw [hTz]; exact hP.T_pos
  have hT' : 0 < Tz P.k P.r z' := by rw [hTz']; exact hP.T'_pos
  obtain ⟨Y₀, hY₀⟩ := exists_sep hP
  obtain ⟨f, hfi, hfx, hfr⟩ := comb_match hP
  have hloc : ∀ g : Mx P.k P.r, ∃ (Bs : Fin (P.k - 1) → Fin (2 * P.r + P.k + 1) → ℂ)
      (e : Fin (2 * P.r + P.k + 1) → ℂ) (S : M.Ty (Pp P) → Submodule ℂ Wq),
      g ∈ Glev P.k P.r (Fin.last P.r) ∩ D →
      IsFrameOf P.k P.r [g⁻¹ *ᵥ z, z'] Bs ∧ inWb P.k P.r e ∧ herm (Hpk P.k P.r) e z = 0 ∧
      herm (Hpk P.k P.r) e e = 1 ∧ IsFrameOf P.k P.r [z, e] (fun a => g *ᵥ Bs a) ∧ DirectSum.IsInternal S ∧
      ∀ σ, ∀ v ∈ S σ, ∀ w : ℂ, capRep P.k P.r π' Bs w v = M.xC (Pp P) σ (w - ((P.k : ℂ) - 2) / 2) • v := by
    intro g
    by_cases hg : g ∈ Glev P.k P.r (Fin.last P.r) ∩ D
    · obtain ⟨Bs, e', e, hB1, he', he'z, he'e, hB2, he, hez, hee, hB3⟩ :=
        geom_package hz hz' hT hT' hg.1 (hGGD g hg.2)
      obtain ⟨S, hSi, -, hSe⟩ := hBr Wq (Pp P) (Pp_OK hP) rfl z' e' π' hz' hT' hπ' he' he'z he'e
      exact ⟨Bs, e, S, fun _ => ⟨hB1, he, hez, hee, hB3, hSi, fun σ v hv w => hSe Bs hB2 σ w v hv⟩⟩
    · exact ⟨fun _ _ => 0, 0, fun _ => ⊥, fun h => absurd h hg⟩
  choose Bs e S hBS using hloc
  obtain ⟨dec, hdecF, hsum, heigd, hcomp⟩ := spec_abstract (FFl P.k P.r z z' π π' (Fin.last P.r) D)
    (Glev P.k P.r (Fin.last P.r) ∩ D) ff_zero (fun F₁ h₁ F₂ h₂ => ff_add h₁ h₂) (fun F h c => ff_smul h c)
    (fun Y F => tL P.k P.r z z' (Fin.last P.r) Y 1 1 F) (fun x => (GGl P.k P.r z z' x : ℂ))
    (fun g hg => by exact_mod_cast hGGD g hg.2) Y₀
    (fun F hF => ff_GGinv hz hz' hD hGGD (hTP Wp Wq P.k P.r z z' π π' (Fin.last P.r) D Y₀ 1 1 hz hz' hD F hF))
    (fun σ Y => M.xC (Pp P) σ Y) hY₀ S (fun g hg => (hBS g hg).2.2.2.2.2.1)
    (by
      intro F hF g hg σ v hv Y
      have hc : Y + ((P.k : ℂ) - 2) / 2 - ((P.k : ℂ) - 2) / 2 = Y := by ring
      rw [top_level_pointwise_identity hCap hRTA hz hz' hD hπ'.2.1 hπ'.2.2.1 hF hg (hGGD g hg.2) (Bs g) (hBS g hg).1 Y v,
        (hBS g hg).2.2.2.2.2.2 σ v hv _, hc, ContinuousLinearMap.map_smul, smul_smul])
    J hJ
  have hvan : ∀ σ, σ ∉ Set.range f → ∀ g ∈ Glev P.k P.r (Fin.last P.r) ∩ D, dec σ g = 0 := by
    intro σ hσ g hg
    ext v
    obtain ⟨w, hw, hdw⟩ := hcomp g hg σ v
    rw [hdw, _root_.zero_apply]
    by_contra hne
    obtain ⟨hB1, he, hez, hee, hB3, -, hSe⟩ := hBS g hg
    have hsm := J_smoothVec hz hz' hD hπ'.2.1.1 hJ hg w
    have hlin : ∀ W : ℂ, IsLinearMap ℂ (capRep P.k P.r π (fun a => g *ᵥ Bs g a) W) := fun W =>
      capRep_linear hπ hne hsm (fun a => g *ᵥ Bs g a) (frame_sub hB3 (by simp)) W
    have hμ : ∀ W : ℂ, capRep P.k P.r π (fun a => g *ᵥ Bs g a) W (J g w) =
        M.xC (Pp P) σ (W - ((P.k : ℂ) - 2) / 2) • J g w := by
      intro W
      rw [← left_ad hz hz' hD hπ'.2.1.1 hJ hg (Bs g) (frame_sub hB1 (by simp)) W w,
        hRTA Wp Wq P.k P.r (P.k - 1) z z' π π' D hz hz' hD hπ'.2.1 hπ'.2.2.1 J hJ g hg (Bs g)
          (frame_sub hB1 (by simp)) W w,
        hSe σ w hw W, ContinuousLinearMap.map_smul]
    obtain ⟨ρ, hρ⟩ := vanish_match hBr hP hz hT hπ he hez hee _ hB3 hlin hne _ hμ
    exact hσ (hfr σ ρ hρ)
  refine ⟨fun ρ => dec (f ρ), fun ρ => hdecF (f ρ), ?_, ?_⟩
  · intro g hg
    have h1 : ∑ σ ∈ Finset.univ.image f, dec σ g = ∑ σ, dec σ g :=
      Finset.sum_subset (Finset.subset_univ _) (fun σ _ hσ => hvan σ
        (fun ⟨ρ, hρ⟩ => hσ (hρ ▸ Finset.mem_image_of_mem f (Finset.mem_univ ρ))) g hg)
    rw [hsum g hg, ← h1, Finset.sum_image (fun a _ b _ h => hfi h)]
  · intro ρ Y g hg
    have h := heigd (f ρ) Y g hg
    rw [h, hfx ρ Y]

end Formalism.FourierDecayAlt.Q.LieAlgebraWeightVectors
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.RadialDecompositionOfParts =====
