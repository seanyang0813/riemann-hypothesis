module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IndexGe
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.UniAMulDiag
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IsSplitFrame
public import Formalism.SatakeDualWeyl.StatementC
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxAJacE
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDAsm
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDSI
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxKLevi
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDcvAlg
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IsUnitDetLeviM
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.Transp
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LevelSubgroupCharacterUnitary
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.MemMLOfInAt
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.UnitriangularReductionOfMemLevel
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.DimFormCOfSteps
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.DimFormCOfThree
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DimFormC
import Mathlib.Tactic.Linter.Style
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.ReferenceReprMemLattice
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxAUni, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxADAlg, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDAdP, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDMatP, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDChk, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxAFrG, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDcvFrame, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDcvFrameAsm, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxKHom, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IndexGeFull, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.StabBoundHolds, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnitaryDimensionFormula

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxAUni =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxAUni", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IndexGe\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.UniAMulDiag\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.UnitaryDimensionFormula

open Matrix

section Core

variable {F : Type} [Field F] {k : ℕ}

theorem uniA_tri (x : GL (Fin k) F) (hx : ∀ i j : Fin k, j < i → (x : Matrix (Fin k) (Fin k) F) i j = 0) :
    (x : Matrix (Fin k) (Fin k) F).BlockTriangular id := fun i j h => hx i j h

theorem uniA_mul (x y : GL (Fin k) F) (hx : Formalism.L2.SG.GGMirabolic.IsUni k x)
    (hy : Formalism.L2.SG.GGMirabolic.IsUni k y) : Formalism.L2.SG.GGMirabolic.IsUni k (x * y) := by
  have tx := uniA_tri x hx.2
  have ty := uniA_tri y hy.2
  have txy : ((x : Matrix (Fin k) (Fin k) F) * (y : Matrix (Fin k) (Fin k) F)).BlockTriangular id :=
    tx.mul ty
  refine ⟨fun i => ?_, fun i j h => ?_⟩
  · rw [Units.val_mul, _root_.Formalism.UG.P.spherical_diag_mul _ _ tx ty, hx.1 i, hy.1 i, one_mul]
  · rw [Units.val_mul]; exact txy h

theorem uniA_inv (x : GL (Fin k) F) (hx : Formalism.L2.SG.GGMirabolic.IsUni k x) :
    Formalism.L2.SG.GGMirabolic.IsUni k x⁻¹ := by
  have tx := uniA_tri x hx.2
  have : Invertible (x : Matrix (Fin k) (Fin k) F) := Units.invertible x
  have tinv : ((x : Matrix (Fin k) (Fin k) F)⁻¹).BlockTriangular id :=
    Matrix.blockTriangular_inv_of_blockTriangular tx
  have hc : ((x⁻¹ : GL (Fin k) F) : Matrix (Fin k) (Fin k) F) = (x : Matrix (Fin k) (Fin k) F)⁻¹ :=
    Matrix.coe_units_inv x
  refine ⟨fun i => ?_, fun i j h => ?_⟩
  · have h1 : ((x : Matrix (Fin k) (Fin k) F)⁻¹ * (x : Matrix (Fin k) (Fin k) F)) i i = 1 := by
      rw [Matrix.inv_mul_of_invertible, Matrix.one_apply_eq]
    rw [_root_.Formalism.UG.P.spherical_diag_mul _ _ tinv tx, hx.1 i, mul_one] at h1
    rw [hc]; exact h1
  · rw [hc]; exact tinv h

end Core

theorem uniSub : UniSub := by
  intro F _ k x y hx hy
  exact ⟨uniA_mul x y hx hy, uniA_inv x hx⟩

end PI.UnitaryDimensionFormula
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxAUni =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxADAlg =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxADAlg", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IsSplitFrame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix

namespace PI.UnitaryDimensionFormula

section DAlg

variable {A : Type} [CommRing A] (σ : A →+* A) {n k : ℕ} (J : Matrix (Fin n) (Fin n) A)

def daB (x : Fin k → Fin n → A) : Matrix (Fin n) (Fin k) A := Matrix.of fun p i => x i p

def daP (x y : Fin k → Fin n → A) (M : Matrix (Fin k) (Fin k) A) : Matrix (Fin n) (Fin n) A :=
  daB x * M * (Formalism.UG.cT σ (daB y) * J)

def daT (x y : Fin k → Fin n → A) (M : Matrix (Fin k) (Fin k) A) : Matrix (Fin n) (Fin n) A :=
  J * daB x * M * (Formalism.UG.cT σ (daB y) * J)

theorem da_gram (x y : Fin k → Fin n → A) (i j : Fin k) :
    (Formalism.UG.cT σ (daB x) * J * daB y) i j = Formalism.UG.hform σ J (x i) (y j) := by
  simp only [Matrix.mul_apply, Formalism.UG.cT, Formalism.UG.hform, daB, Matrix.transpose_apply, Matrix.map_apply,
    Matrix.of_apply, Finset.sum_mul]
  rw [Finset.sum_comm]

theorem da_mulVec (y : Fin k → Fin n → A) (v : Fin n → A) (i : Fin k) :
    ((Formalism.UG.cT σ (daB y) * J) *ᵥ v) i = Formalism.UG.hform σ J (y i) v := by
  simp only [Matrix.mulVec, dotProduct, Matrix.mul_apply, Formalism.UG.cT, Formalism.UG.hform, daB, Matrix.transpose_apply,
    Matrix.map_apply, Matrix.of_apply, Finset.sum_mul]
  rw [Finset.sum_comm]

theorem da_row (y : Fin k → Fin n → A) (j : Fin k) (q : Fin n) :
    (Formalism.UG.cT σ (daB y) * J) j q = hrow σ J (y j) q := by
  simp only [Matrix.mul_apply, Formalism.UG.cT, hrow, daB, Matrix.transpose_apply, Matrix.map_apply, Matrix.of_apply]

theorem da_sum (x y : Fin k → Fin n → A) (M : Matrix (Fin k) (Fin k) A) :
    ∑ i, ∑ j, M i j • Matrix.vecMulVec (x i) (hrow σ J (y j)) = daP σ J x y M := by
  ext p q
  simp only [Matrix.sum_apply, Matrix.smul_apply, Matrix.vecMulVec_apply, smul_eq_mul, daP, Matrix.mul_apply,
    daB, Matrix.of_apply, Finset.sum_mul]
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by
    simp only [hrow, Formalism.UG.cT, Matrix.transpose_apply, Matrix.map_apply, Matrix.of_apply]
    ring

theorem da_sMat (b bs : Fin k → Fin n → A) (C D : Matrix (Fin k) (Fin k) A) :
    sMat σ J b bs C D = 1 + daP σ J b bs (C - 1) + daP σ J bs b (D - 1) := by
  unfold sMat
  simp only [Finset.sum_add_distrib, da_sum, add_assoc]

variable {σ}

theorem da_cT_cT (hσ : ∀ a, σ (σ a) = a) {m p : Type} (M : Matrix m p A) :
    Formalism.UG.cT σ (Formalism.UG.cT σ M) = M := by
  ext i j
  simp [Formalism.UG.cT, hσ]

theorem da_cT_add {m p : Type} (M N : Matrix m p A) :
    Formalism.UG.cT σ (M + N) = Formalism.UG.cT σ M + Formalism.UG.cT σ N := by
  ext i j
  simp [Formalism.UG.cT]

theorem da_cT_sub {m p : Type} (M N : Matrix m p A) :
    Formalism.UG.cT σ (M - N) = Formalism.UG.cT σ M - Formalism.UG.cT σ N := by
  ext i j
  simp [Formalism.UG.cT]

theorem da_herm (hσ : ∀ a, σ (σ a) = a) (hJ : Formalism.UG.IsHerm σ J) (x y : Fin n → A) :
    Formalism.UG.hform σ J x y = σ (Formalism.UG.hform σ J y x) := by
  have hJ' : ∀ i j, σ (J i j) = J j i := fun i j => by
    have h := congrFun (congrFun hJ j) i
    simpa [Formalism.UG.cT] using h

  simp only [Formalism.UG.hform, map_sum, map_mul, hσ, hJ']
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring

theorem da_smul_l (c : A) (x y : Fin n → A) :
    Formalism.UG.hform σ J (c • x) y = σ c * Formalism.UG.hform σ J x y := by
  simp only [Formalism.UG.hform, Pi.smul_apply, smul_eq_mul, map_mul, Finset.mul_sum]
  exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring

theorem da_smul_r (c : A) (x y : Fin n → A) :
    Formalism.UG.hform σ J x (c • y) = c * Formalism.UG.hform σ J x y := by
  simp only [Formalism.UG.hform, Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
  exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring

theorem da_smulB (c : A) (x : Fin k → Fin n → A) (hx : ∀ i, x i = c • x i) : c • daB x = daB x := by
  ext p i
  simp only [daB, Matrix.smul_apply, Matrix.of_apply, smul_eq_mul]
  exact (congrFun (hx i) p).symm

theorem da_PP (x y : Fin k → Fin n → A) (c : A) (hm : Formalism.UG.cT σ (daB y) * J * daB x = c • 1)
    (hx : c • daB x = daB x) (M N : Matrix (Fin k) (Fin k) A) :
    daP σ J x y M * daP σ J x y N = daP σ J x y (M * N) := by
  unfold daP
  calc daB x * M * (Formalism.UG.cT σ (daB y) * J) * (daB x * N * (Formalism.UG.cT σ (daB y) * J))
        = daB x * M * (Formalism.UG.cT σ (daB y) * J * daB x) * N * (Formalism.UG.cT σ (daB y) * J) := by
          simp only [Matrix.mul_assoc]
    _ = (c • daB x) * (M * N) * (Formalism.UG.cT σ (daB y) * J) := by
          rw [hm]
          simp only [Matrix.mul_smul, Matrix.smul_mul, Matrix.mul_one, Matrix.mul_assoc]
    _ = daB x * (M * N) * (Formalism.UG.cT σ (daB y) * J) := by rw [hx]

theorem parabolic_product_zero (x y x' y' : Fin k → Fin n → A) (hm : Formalism.UG.cT σ (daB y) * J * daB x' = 0)
    (M N : Matrix (Fin k) (Fin k) A) :
    daP σ J x y M * daP σ J x' y' N = 0 := by
  unfold daP
  calc daB x * M * (Formalism.UG.cT σ (daB y) * J) * (daB x' * N * (Formalism.UG.cT σ (daB y') * J))
        = daB x * M * (Formalism.UG.cT σ (daB y) * J * daB x') * N * (Formalism.UG.cT σ (daB y') * J) := by
          simp only [Matrix.mul_assoc]
    _ = 0 := by rw [hm]; simp

theorem da_P_add (x y : Fin k → Fin n → A) (M N : Matrix (Fin k) (Fin k) A) :
    daP σ J x y (M + N) = daP σ J x y M + daP σ J x y N := by
  unfold daP
  simp only [Matrix.mul_add, Matrix.add_mul]

private theorem cT_mul_lemma {m p q : Type} [Fintype p] (X : Matrix m p A) (Y : Matrix p q A) :
    Formalism.UG.cT σ (X * Y) = Formalism.UG.cT σ Y * Formalism.UG.cT σ X := by
  simp only [Formalism.UG.cT, Matrix.map_mul, Matrix.transpose_mul]

theorem da_cTP (hσ : ∀ a, σ (σ a) = a) (hJ : Formalism.UG.IsHerm σ J) (x y : Fin k → Fin n → A)
    (M : Matrix (Fin k) (Fin k) A) :
    Formalism.UG.cT σ (daP σ J x y M) * J = daT σ J y x (Formalism.UG.cT σ M) := by
  unfold daP daT
  simp only [cT_mul_lemma, da_cT_cT hσ, show Formalism.UG.cT σ J = J from hJ, Matrix.mul_assoc]

theorem da_JP (x y : Fin k → Fin n → A) (M : Matrix (Fin k) (Fin k) A) :
    J * daP σ J x y M = daT σ J x y M := by
  unfold daP daT
  simp only [Matrix.mul_assoc]

theorem da_TP (x y x' y' : Fin k → Fin n → A) (c : A)
    (hm : Formalism.UG.cT σ (daB x) * J * daB x' = c • 1) (hy : c • daB y = daB y) (M N : Matrix (Fin k) (Fin k) A) :
    daT σ J y x M * daP σ J x' y' N = daT σ J y y' (M * N) := by
  unfold daT daP
  calc J * daB y * M * (Formalism.UG.cT σ (daB x) * J) * (daB x' * N * (Formalism.UG.cT σ (daB y') * J))
        = J * daB y * M * (Formalism.UG.cT σ (daB x) * J * daB x') * N * (Formalism.UG.cT σ (daB y') * J) := by
          simp only [Matrix.mul_assoc]
    _ = J * (c • daB y) * (M * N) * (Formalism.UG.cT σ (daB y') * J) := by
          rw [hm]
          simp only [Matrix.mul_smul, Matrix.smul_mul, Matrix.mul_one, Matrix.mul_assoc]
    _ = J * daB y * (M * N) * (Formalism.UG.cT σ (daB y') * J) := by rw [hy]

theorem transfer_product_zero (x y x' y' : Fin k → Fin n → A)
    (hm : Formalism.UG.cT σ (daB x) * J * daB x' = 0) (M N : Matrix (Fin k) (Fin k) A) :
    daT σ J y x M * daP σ J x' y' N = 0 := by
  unfold daT daP
  calc J * daB y * M * (Formalism.UG.cT σ (daB x) * J) * (daB x' * N * (Formalism.UG.cT σ (daB y') * J))
        = J * daB y * M * (Formalism.UG.cT σ (daB x) * J * daB x') * N * (Formalism.UG.cT σ (daB y') * J) := by
          simp only [Matrix.mul_assoc]
    _ = 0 := by rw [hm]; simp

end DAlg

theorem idxDAlg : IdxDAlg := by
  intro A _ σ n k J ε b bs hσ hJ hfr
  obtain ⟨hεε, hεσ, hb, hbs, hbb⟩ := hfr
  have hx1 : ε • daB b = daB b := da_smulB ε b hb
  have hx2 : σ ε • daB bs = daB bs := da_smulB (σ ε) bs hbs
  have hm1 : Formalism.UG.cT σ (daB bs) * J * daB b = ε • (1 : Matrix (Fin k) (Fin k) A) := by
    ext i j
    rw [da_gram, hbb i j, Matrix.smul_apply, Matrix.one_apply, smul_eq_mul]
    split_ifs <;> simp
  have hm2 : Formalism.UG.cT σ (daB b) * J * daB bs = σ ε • (1 : Matrix (Fin k) (Fin k) A) := by
    ext i j
    rw [da_gram, da_herm J hσ hJ, hbb j i, Matrix.smul_apply, Matrix.one_apply, smul_eq_mul]
    by_cases h : i = j
    · subst h
      simp
    · simp [h, Ne.symm h]
  have hm3 : Formalism.UG.cT σ (daB bs) * J * daB bs = 0 := by
    ext i j
    rw [da_gram, Matrix.zero_apply, hbs i, hbs j, da_smul_l, da_smul_r, hσ, ← mul_assoc, hεσ, zero_mul]
  have hm4 : Formalism.UG.cT σ (daB b) * J * daB b = 0 := by
    ext i j
    rw [da_gram, Matrix.zero_apply, hb i, hb j, da_smul_l, da_smul_r, ← mul_assoc, mul_comm (σ ε) ε, hεσ,
      zero_mul]
  have hPP : ∀ M N, daP σ J b bs M * daP σ J b bs N = daP σ J b bs (M * N) :=
    fun M N => da_PP J b bs ε hm1 hx1 M N
  have hQQ : ∀ M N, daP σ J bs b M * daP σ J bs b N = daP σ J bs b (M * N) :=
    fun M N => da_PP J bs b (σ ε) hm2 hx2 M N
  have hPQ : ∀ M N, daP σ J b bs M * daP σ J bs b N = 0 := fun M N => parabolic_product_zero J b bs bs b hm3 M N
  have hQP : ∀ M N, daP σ J bs b M * daP σ J b bs N = 0 := fun M N => parabolic_product_zero J bs b b bs hm4 M N
  have hc1 : Formalism.UG.cT σ (1 : Matrix (Fin k) (Fin k) A) = 1 := by
    unfold Formalism.UG.cT
    rw [Matrix.map_one σ (map_zero σ) (map_one σ), Matrix.transpose_one]
  have hc1n : Formalism.UG.cT σ (1 : Matrix (Fin n) (Fin n) A) = 1 := by
    unfold Formalism.UG.cT
    rw [Matrix.map_one σ (map_zero σ) (map_one σ), Matrix.transpose_one]
  have hTadd : ∀ (x y : Fin k → Fin n → A) (M N : Matrix (Fin k) (Fin k) A),
      daT σ J x y (M + N) = daT σ J x y M + daT σ J x y N := by
    intro x y M N
    unfold daT
    simp only [Matrix.mul_add, Matrix.add_mul]
  have hT0 : ∀ x y : Fin k → Fin n → A, daT σ J x y 0 = 0 := by
    intro x y
    unfold daT
    simp
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro C D y hy
    have h0 : ∀ (x y' : Fin k → Fin n → A) (M : Matrix (Fin k) (Fin k) A),
        (∀ j, Formalism.UG.hform σ J (y' j) y = 0) → daP σ J x y' M *ᵥ y = 0 := by
      intro x y' M hz
      unfold daP
      rw [← Matrix.mulVec_mulVec]
      have hz' : (Formalism.UG.cT σ (daB y') * J) *ᵥ y = 0 := by
        ext i
        rw [da_mulVec]
        exact hz i
      rw [hz', Matrix.mulVec_zero]
    rw [da_sMat, Matrix.add_mulVec, Matrix.add_mulVec, Matrix.one_mulVec,
      h0 b bs _ (fun j => (hy j).2), h0 bs b _ (fun j => (hy j).1), add_zero, add_zero]
  · intro C₁ D₁ C₂ D₂
    rw [da_sMat, da_sMat, da_sMat]
    simp only [Matrix.add_mul, Matrix.mul_add, Matrix.one_mul, Matrix.mul_one, hPP, hQQ, hPQ, hQP,
      add_zero]
    rw [show C₁ * C₂ - 1 = (C₁ - 1) + (C₂ - 1) + (C₁ - 1) * (C₂ - 1) by noncomm_ring,
      show D₁ * D₂ - 1 = (D₁ - 1) + (D₂ - 1) + (D₁ - 1) * (D₂ - 1) by noncomm_ring,
      da_P_add, da_P_add, da_P_add, da_P_add]
    abel
  · intro C D hC hD
    have hP : daP σ J b bs (C - 1) = 0 := by
      unfold daP
      rw [← hx1, Matrix.smul_mul, ← Matrix.mul_smul, hC]
      simp
    have hQ : daP σ J bs b (D - 1) = 0 := by
      unfold daP
      rw [← hx2, Matrix.smul_mul, ← Matrix.mul_smul, hD]
      simp
    rw [da_sMat, hP, hQ, add_zero, add_zero]
  · intro C C' hCC
    have hDt : (C'.map σ)ᵀ = Formalism.UG.cT σ C' := rfl
    rw [hDt, da_sMat]
    have hZ1 : (C - 1) + Formalism.UG.cT σ (Formalism.UG.cT σ C' - 1) + Formalism.UG.cT σ (Formalism.UG.cT σ C' - 1) * (C - 1) = 0 := by
      rw [da_cT_sub, da_cT_cT hσ, hc1,
        show C - 1 + (C' - 1) + (C' - 1) * (C - 1) = C' * C - 1 by noncomm_ring, hCC, sub_self]
    have hZ2 : (Formalism.UG.cT σ C' - 1) + Formalism.UG.cT σ (C - 1) + Formalism.UG.cT σ (C - 1) * (Formalism.UG.cT σ C' - 1) = 0 := by
      rw [da_cT_sub, hc1,
        show Formalism.UG.cT σ C' - 1 + (Formalism.UG.cT σ C - 1) + (Formalism.UG.cT σ C - 1) * (Formalism.UG.cT σ C' - 1) =
          Formalism.UG.cT σ C * Formalism.UG.cT σ C' - 1 by noncomm_ring,
        ← cT_mul_lemma, hCC, hc1, sub_self]
    calc Formalism.UG.cT σ (1 + daP σ J b bs (C - 1) + daP σ J bs b (Formalism.UG.cT σ C' - 1)) * J *
          (1 + daP σ J b bs (C - 1) + daP σ J bs b (Formalism.UG.cT σ C' - 1))
        = J + daT σ J b bs ((C - 1) + Formalism.UG.cT σ (Formalism.UG.cT σ C' - 1) +
              Formalism.UG.cT σ (Formalism.UG.cT σ C' - 1) * (C - 1)) +
            daT σ J bs b ((Formalism.UG.cT σ C' - 1) + Formalism.UG.cT σ (C - 1) +
              Formalism.UG.cT σ (C - 1) * (Formalism.UG.cT σ C' - 1)) := by
          rw [da_cT_add, da_cT_add, hc1n]
          simp only [Matrix.add_mul, Matrix.mul_add, Matrix.one_mul, Matrix.mul_one, da_cTP J hσ hJ, da_JP,
            da_TP J b bs bs b (σ ε) hm2 hx2, da_TP J bs b b bs ε hm1 hx1, transfer_product_zero J b bs b bs hm4,
            transfer_product_zero J bs b bs b hm3, add_zero, hTadd]
          abel
      _ = J := by rw [hZ1, hZ2, hT0, hT0, add_zero, add_zero]

end PI.UnitaryDimensionFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxADAlg =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDAdP =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDAdP", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IsSplitFrame\npublic import Formalism.SatakeDualWeyl.StatementC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical TensorProduct
open NumberField IsDedekindDomain

namespace PI.UnitaryDimensionFormula

section
variable {F : Type} [Field F] [NumberField F]

theorem adAd_natCast_apply (g : ℕ) (v : HeightOneSpectrum (𝓞 F)) :
    (g : FiniteAdeleRing (𝓞 F) F) v = (g : v.adicCompletion F) :=
  map_natCast (Formalism.UG.evalV F v) g

theorem adAd_val_g (g : ℕ) (v : HeightOneSpectrum (𝓞 F)) :
    Valued.v (g : v.adicCompletion F) = v.intValuation (g : 𝓞 F) := by
  have e1 : (g : v.adicCompletion F) = ((g : F) : v.adicCompletion F) := by
    exact (map_natCast (algebraMap F (v.adicCompletion F)) g).symm
  rw [e1, HeightOneSpectrum.valuedAdicCompletion_eq_valuation']
  have e2 : (g : F) = algebraMap (𝓞 F) F (g : 𝓞 F) := (map_natCast _ g).symm
  rw [e2, HeightOneSpectrum.valuation_of_algebraMap]

theorem adAd_val_lt (g : ℕ) (v : HeightOneSpectrum (𝓞 F)) (h : (g : 𝓞 F) ∈ v.asIdeal) :
    Valued.v (g : v.adicCompletion F) < 1 := by
  rw [adAd_val_g]; exact (v.intValuation_lt_one_iff_mem _).2 h

theorem adAd_val_one (g : ℕ) (v : HeightOneSpectrum (𝓞 F)) (h : (g : 𝓞 F) ∉ v.asIdeal) :
    Valued.v (g : v.adicCompletion F) = 1 := by
  rw [adAd_val_g]
  exact (v.intValuation_eq_one_iff_mem_primeCompl _).2 h

def adOfInt (f : ∀ v : HeightOneSpectrum (𝓞 F), v.adicCompletion F)
    (hf : ∀ v, f v ∈ v.adicCompletionIntegers F) : FiniteAdeleRing (𝓞 F) F :=
  ⟨f, Filter.Eventually.of_forall hf⟩

theorem adOfInt_int (f : ∀ v : HeightOneSpectrum (𝓞 F), v.adicCompletion F)
    (hf : ∀ v, f v ∈ v.adicCompletionIntegers F) : adOfInt f hf ∈ Formalism.UG.intAd F := hf

end

theorem idxDAd : IdxDAd := by
  intro F _ _ g
  let P : HeightOneSpectrum (𝓞 F) → Prop := fun v => (g : 𝓞 F) ∈ v.asIdeal
  have h01 : ∀ v : HeightOneSpectrum (𝓞 F),
      (if P v then (1 : v.adicCompletion F) else 0) ∈ v.adicCompletionIntegers F := by
    intro v; split_ifs
    · exact one_mem _
    · exact zero_mem _
  let e := adOfInt (fun v => if P v then (1 : v.adicCompletion F) else 0) h01
  refine ⟨e, adOfInt_int _ _, ?_, ?_, ?_⟩
  · refine FiniteAdeleRing.ext _ fun v => ?_
    show (if P v then (1 : v.adicCompletion F) else 0) * (if P v then 1 else 0) = if P v then 1 else 0
    split_ifs <;> simp
  · have ht : ∀ v : HeightOneSpectrum (𝓞 F),
        (if P v then (0 : v.adicCompletion F) else (g : v.adicCompletion F)⁻¹) ∈ v.adicCompletionIntegers F := by
      intro v
      split_ifs with hv
      · exact zero_mem _
      · rw [HeightOneSpectrum.mem_adicCompletionIntegers, map_inv₀, adAd_val_one g v hv, inv_one]
    refine ⟨adOfInt _ ht, adOfInt_int _ _, ?_⟩
    refine FiniteAdeleRing.ext _ fun v => ?_
    show (1 : v.adicCompletion F) - (if P v then 1 else 0) =
      (g : FiniteAdeleRing (𝓞 F) F) v * (if P v then 0 else (g : v.adicCompletion F)⁻¹)
    rw [adAd_natCast_apply]
    split_ifs with hv
    · simp
    · have hne : (g : v.adicCompletion F) ≠ 0 := by
        intro h0
        have := adAd_val_one g v hv
        rw [h0, map_zero] at this
        exact zero_ne_one this
      rw [sub_zero, mul_inv_cancel₀ hne]
  · intro c hc
    have hu : ∀ v : HeightOneSpectrum (𝓞 F), P v →
        Valued.v (1 + (g : v.adicCompletion F) * c v) = 1 := by
      intro v hv
      have hlt : Valued.v ((g : v.adicCompletion F) * c v) < 1 := by
        rw [map_mul]
        have hcv : Valued.v (c v) ≤ 1 := hc v
        calc Valued.v (g : v.adicCompletion F) * Valued.v (c v) ≤ Valued.v (g : v.adicCompletion F) * 1 :=
              mul_le_mul' le_rfl hcv
          _ < 1 := by rw [mul_one]; exact adAd_val_lt g v hv
      rw [Valuation.map_add_eq_of_lt_left _ (by rw [map_one]; exact hlt), map_one]
    have hy : ∀ v : HeightOneSpectrum (𝓞 F),
        (if P v then (1 + (g : v.adicCompletion F) * c v)⁻¹ else 0) ∈ v.adicCompletionIntegers F := by
      intro v
      split_ifs with hv
      · rw [HeightOneSpectrum.mem_adicCompletionIntegers, map_inv₀, hu v hv, inv_one]
      · exact zero_mem _
    refine ⟨adOfInt _ hy, adOfInt_int _ _, ?_⟩
    refine FiniteAdeleRing.ext _ fun v => ?_
    show (if P v then (1 : v.adicCompletion F) else 0) * (1 + (g : FiniteAdeleRing (𝓞 F) F) v * c v) *
      (if P v then (1 + (g : v.adicCompletion F) * c v)⁻¹ else 0) = if P v then 1 else 0
    rw [adAd_natCast_apply]
    split_ifs with hv
    · have hne : (1 + (g : v.adicCompletion F) * c v) ≠ 0 := by
        intro h0
        have := hu v hv
        rw [h0, map_zero] at this
        exact zero_ne_one this
      rw [one_mul, mul_inv_cancel₀ hne]
    · simp

end PI.UnitaryDimensionFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDAdP =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDMatP =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDMatP", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IsSplitFrame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical TensorProduct
open Matrix NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp

namespace PI.UnitaryDimensionFormula

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem mat_idem_mul {Rg : Type} [Ring Rg] (E a b : Rg) (hE : E * E = E) (hc : ∀ x : Rg, E * x = x * E) :
    (E * a + (1 - E)) * (E * b + (1 - E)) = E * (a * b) + (1 - E) := by
  have h1 : E * (1 - E) = 0 := by rw [mul_sub, mul_one, hE, sub_self]
  have h2 : (1 - E) * E = 0 := by rw [sub_mul, one_mul, hE, sub_self]
  have h3 : (1 - E) * (1 - E) = 1 - E := by rw [sub_mul, one_mul, h1, sub_zero]
  have e1 : E * a * (E * b) = E * (a * b) := by
    rw [mul_assoc, ← mul_assoc a E b, ← hc a, ← mul_assoc, ← mul_assoc, hE, mul_assoc]
  have e2 : E * a * (1 - E) = 0 := by
    have : a * (1 - E) = (1 - E) * a := by rw [mul_sub, sub_mul, mul_one, one_mul, hc a]
    rw [mul_assoc, this, ← mul_assoc, h1, zero_mul]
  have e3 : (1 - E) * (E * b) = 0 := by rw [← mul_assoc, h2, zero_mul]
  rw [add_mul, mul_add, mul_add, e1, e2, e3, h3, add_zero, zero_add]

theorem mat_lift_core {O : Type} [CommRing O] {k : ℕ} (gO eO wO : O) (he2 : eO * eO = eO) (hw2 : wO * wO = wO)
    (Mo No tt : Matrix (Fin k) (Fin k) O) (htt : ∀ i j, wO * (No * Mo - 1) i j = gO * tt i j)
    (hJ : ∀ m : O, ∃ y : O, eO * (1 + gO * m) * y = eO) :
    ∃ C C' : Matrix (Fin k) (Fin k) O, C' * C = 1 ∧ ∀ i j, (eO * wO) * C i j = (eO * wO) * Mo i j := by
  set Q : Matrix (Fin k) (Fin k) O := 1 + gO • tt with hQdef
  obtain ⟨m, hm⟩ : ∃ m : O, Q.det = 1 + gO * m := by
    have hQ : (Ideal.Quotient.mk (Ideal.span {gO})).mapMatrix Q = 1 := by
      have hπg : Ideal.Quotient.mk (Ideal.span {gO}) gO = 0 :=
        Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_span_singleton_self _)
      rw [hQdef, map_add (f := _), map_one]
      ext i j
      simp [hπg]
    have h1 : Ideal.Quotient.mk (Ideal.span {gO}) (Q.det - 1) = 0 := by
      rw [map_sub, RingHom.map_det, hQ, det_one, map_one, sub_self]
    obtain ⟨a, ha⟩ := Ideal.mem_span_singleton'.1 (Ideal.Quotient.eq_zero_iff_mem.1 h1)
    refine ⟨a, ?_⟩
    rw [mul_comm, ha]; ring
  obtain ⟨yO, hey0⟩ := hJ m
  have hey : eO * Q.det * yO = eO := by rw [hm]; exact hey0
  set εO := eO * wO with hεdef
  set E : Matrix (Fin k) (Fin k) O := εO • 1 with hEdef
  have hEc : ∀ x : Matrix (Fin k) (Fin k) O, E * x = x * E := by
    intro x; simp [hEdef]
  have hε2 : εO * εO = εO := by
    calc εO * εO = (eO * eO) * (wO * wO) := by rw [hεdef]; ring
      _ = εO := by rw [he2, hw2]
  have hE2 : E * E = E := by simp [hEdef, smul_smul, hε2]
  have hEQ : E * (No * Mo) = E * Q := by
    ext i j
    simp only [hEdef, Matrix.smul_mul, one_mul, Matrix.smul_apply, smul_eq_mul, hQdef, Matrix.add_apply]
    have h1 : (No * Mo) i j = (No * Mo - 1) i j + (1 : Matrix (Fin k) (Fin k) O) i j := by
      rw [Matrix.sub_apply]; ring
    have h2 : wO * (gO * tt i j) = gO * tt i j := by
      rw [← htt i j, ← mul_assoc, hw2]
    have key : εO * (No * Mo - 1) i j = εO * (gO • tt) i j := by
     calc εO * (No * Mo - 1) i j = eO * (wO * (No * Mo - 1) i j) := by rw [hεdef]; ring
      _ = eO * (wO * (gO * tt i j)) := by rw [htt i j, h2]
      _ = εO * (gO * tt i j) := by rw [hεdef]; ring
      _ = εO * (gO • tt) i j := by rw [Matrix.smul_apply, smul_eq_mul]
    rw [h1, mul_add, mul_add, key, Matrix.smul_apply, smul_eq_mul]; ring
  set P : Matrix (Fin k) (Fin k) O := yO • Q.adjugate with hPdef
  have hEPQ : E * (P * Q) = E := by
    have : P * Q = (yO * Q.det) • (1 : Matrix (Fin k) (Fin k) O) := by
      rw [hPdef, Matrix.smul_mul, Matrix.adjugate_mul, smul_smul]
    rw [this, hEdef, smul_mul_smul, one_mul]
    congr 1
    calc εO * (yO * Q.det) = wO * (eO * Q.det * yO) := by rw [hεdef]; ring
      _ = εO := by rw [hey, hεdef, mul_comm]
  refine ⟨E * Mo + (1 - E), E * (P * No) + (1 - E), ?_, ?_⟩
  · rw [mat_idem_mul E _ _ hE2 hEc]
    have : E * (P * No * Mo) = E := by
      rw [Matrix.mul_assoc, ← Matrix.mul_assoc E, hEc P, Matrix.mul_assoc, hEQ, ← Matrix.mul_assoc, ← hEc P,
        Matrix.mul_assoc, hEPQ]
    rw [this, add_sub_cancel]
  · intro i j
    have hEC : E * (E * Mo + (1 - E)) = E * Mo := by
      rw [Matrix.mul_add, ← Matrix.mul_assoc, hE2, Matrix.mul_sub, Matrix.mul_one, hE2, sub_self, add_zero]
    have := congrFun (congrFun hEC i) j
    simpa [hEdef, Matrix.smul_mul] using this

theorem idxDMat_of (hJ : IdxDJacE) : IdxDMat := by
  intro D X TR e he A
  have heO : ((1 : X.B.I.E) ⊗ₜ[X.B.I.F] e) ∈ IntAf X.B.I.F X.B.I.E :=
    Subring.subset_closure (Set.mem_union_right _ ⟨⟨e, he.1⟩, rfl⟩)
  obtain ⟨t, ht, het⟩ := he.2.2.1
  have htO : ((1 : X.B.I.E) ⊗ₜ[X.B.I.F] t) ∈ IntAf X.B.I.F X.B.I.E :=
    Subring.subset_closure (Set.mem_union_right _ ⟨⟨t, ht⟩, rfl⟩)
  let eO : IntAf X.B.I.F X.B.I.E := ⟨_, heO⟩
  let wO : IntAf X.B.I.F X.B.I.E := ⟨X.ew, X.ew_int⟩
  let tO : IntAf X.B.I.F X.B.I.E := ⟨_, htO⟩
  let gO : IntAf X.B.I.F X.B.I.E := X.B.g
  have hgO : ((gO : IntAf X.B.I.F X.B.I.E) : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) =
      (X.B.g : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) := by
    simp [gO]
  have kerZ : ∀ x : IntAf X.B.I.F X.B.I.E, (∀ v, TR.res v x = 0) →
      ∃ t : IntAf X.B.I.F X.B.I.E, wO * x = gO * t := by
    intro x hx
    obtain ⟨t, ht, he'⟩ := (TR.res_ker x).1 hx
    refine ⟨⟨t, ht⟩, Subtype.ext ?_⟩
    change X.ew * (x : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) = (gO : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * t
    rw [hgO]; exact he'
  have resG : ∀ v, TR.res v gO = 0 := by
    refine (TR.res_ker gO).2 ⟨X.ew, X.ew_int, ?_⟩
    rw [hgO, mul_comm]
  have heq : eO = 1 - gO * tO := by
    apply Subtype.ext
    change (1 : X.B.I.E) ⊗ₜ[X.B.I.F] e = 1 - (gO : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * ((1 : X.B.I.E) ⊗ₜ[X.B.I.F] t)
    rw [hgO]
    have h1 : e = 1 - (X.B.g : Af X.B.I.F) * t := by rw [← het]; ring
    rw [h1, TensorProduct.tmul_sub]
    congr 1
    rw [← map_natCast (Algebra.TensorProduct.includeRight (R := X.B.I.F) (A := X.B.I.E) (B := Af X.B.I.F)) X.B.g]
    rw [Algebra.TensorProduct.includeRight_apply, Algebra.TensorProduct.tmul_mul_tmul, one_mul]
  have resE : ∀ v (x : IntAf X.B.I.F X.B.I.E), TR.res v (eO * x) = TR.res v x := by
    intro v x
    rw [heq, sub_mul, one_mul, map_sub, mul_assoc, map_mul, resG, zero_mul, sub_zero]
  have resEps : ∀ v (x : IntAf X.B.I.F X.B.I.E), TR.res v (eO * wO * x) = TR.res v x := by
    intro v x
    rw [mul_assoc, resE]
    exact TR.res_ew v x
  choose a0 ha0 using fun i j => TR.res_joint (fun v => (A v : Matrix (Fin D.R.k) (Fin D.R.k) (TR.Fq v)) i j)
  choose b0 hb0 using fun i j => TR.res_joint
    (fun v => ((A v)⁻¹ : GL (Fin D.R.k) (TR.Fq v)) i j)
  let Mo : Matrix (Fin D.R.k) (Fin D.R.k) (IntAf X.B.I.F X.B.I.E) := Matrix.of a0
  let No : Matrix (Fin D.R.k) (Fin D.R.k) (IntAf X.B.I.F X.B.I.E) := Matrix.of b0
  have hNM : ∀ v i j, TR.res v ((No * Mo - 1) i j) = 0 := by
    intro v i j
    have hM : (TR.res v).mapMatrix Mo = (A v : Matrix (Fin D.R.k) (Fin D.R.k) (TR.Fq v)) := by
      ext i j; exact congrFun (ha0 i j) v
    have hN : (TR.res v).mapMatrix No = ((A v)⁻¹ : GL (Fin D.R.k) (TR.Fq v)) := by
      ext i j; exact congrFun (hb0 i j) v
    have : (TR.res v).mapMatrix (No * Mo - 1) = 0 := by
      rw [map_sub, map_mul, map_one, hM, hN, ← Units.val_mul, inv_mul_cancel, Units.val_one, sub_self]
    exact congrFun (congrFun this i) j
  choose tt htt using fun i j => kerZ _ (fun v => hNM v i j)
  have hw2 : wO * wO = wO := Subtype.ext X.ew_idem
  have he2 : eO * eO = eO := Subtype.ext (by
    change ((1 : X.B.I.E) ⊗ₜ[X.B.I.F] e) * ((1 : X.B.I.E) ⊗ₜ[X.B.I.F] e) = (1 : X.B.I.E) ⊗ₜ[X.B.I.F] e
    rw [Algebra.TensorProduct.tmul_mul_tmul, one_mul, he.2.1])
  have hJO : ∀ m : IntAf X.B.I.F X.B.I.E, ∃ y : IntAf X.B.I.F X.B.I.E, eO * (1 + gO * m) * y = eO := by
    intro m
    obtain ⟨y, hy, hyeq⟩ := hJ X.B.I.F X.B.I.E X.B.g e he (m : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) m.2
    refine ⟨⟨y, hy⟩, Subtype.ext ?_⟩
    change ((1 : X.B.I.E) ⊗ₜ[X.B.I.F] e) * (1 + (gO : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * m) * y =
      (1 : X.B.I.E) ⊗ₜ[X.B.I.F] e
    rw [hgO]; exact hyeq
  obtain ⟨CO, C'O, hCC, hent⟩ := mat_lift_core gO eO wO he2 hw2 Mo No (Matrix.of tt) (fun i j => htt i j) hJO
  refine ⟨CO.map (IntAf X.B.I.F X.B.I.E).subtype, C'O.map (IntAf X.B.I.F X.B.I.E).subtype, ?_,
    fun i j => ⟨(CO i j).2, (C'O i j).2⟩, ?_⟩
  · rw [← Matrix.map_mul, hCC, Matrix.map_one _ (map_zero _) (map_one _)]
  · intro v i j
    have hmem : epsX X e * (CO.map (IntAf X.B.I.F X.B.I.E).subtype) i j ∈ IntAf X.B.I.F X.B.I.E :=
      (eO * wO * CO i j).2
    unfold resT
    rw [dite_eq_left hmem]
    have : (⟨epsX X e * (CO.map (IntAf X.B.I.F X.B.I.E).subtype) i j, hmem⟩ : IntAf X.B.I.F X.B.I.E) =
        eO * wO * Mo i j := by
      rw [← hent i j]; rfl
    rw [this, resEps]
    exact congrFun (ha0 i j) v

end PI.UnitaryDimensionFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDMatP =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDChk =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDChk", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IndexGe\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IsSplitFrame\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxADAlg\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxAJacE\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDAdP\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDAsm\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDMatP\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDSI\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxKLevi\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.UnitaryDimensionFormula

theorem idxSurj_of_frame (hFr : IdxDFrame) : IdxSurj :=
  idxSurj_of idxDAlg idxDAd idxDInt idxDSig hFr (idxDMat_of idxDJacE) idxDLevi

end PI.UnitaryDimensionFormula
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDChk =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxAFrG =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxAFrG", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IsSplitFrame\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxAJacE\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped TensorProduct
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting

namespace PI.UnitaryDimensionFormula

def FrGram : Prop := ∀ (D : D7) (X : HidaSetting D) (e : Af X.B.I.F), EgProp X.B.I.F X.B.g e →
  ∀ G : Matrix (Fin D.R.k) (Fin D.R.k) (X.B.I.E ⊗[X.B.I.F] Af X.B.I.F), (∀ l j, G l j ∈ IntAf X.B.I.F X.B.I.E) →
  (∀ l j, ZMod' X.B.I X.B.g (G l j - if l = j then epsX X e else 0)) →
  ∃ y ∈ IntAf X.B.I.F X.B.I.E, epsX X e * G.det * y = epsX X e

theorem fg_det {B : Type} [CommRing B] (S : Subring B) {k : ℕ} (G : Matrix (Fin k) (Fin k) B) (ε gg : B)
    (hε : ε ∈ S) (hg : gg ∈ S) (hG : ∀ l j, G l j ∈ S)
    (hc : ∀ l j, ∃ t ∈ S, G l j - (if l = j then ε else 0) = gg * t) :
    ∃ m ∈ S, G.det = ε ^ k + gg * m := by
  classical

  let G' : Matrix (Fin k) (Fin k) S := fun l j => ⟨G l j, hG l j⟩
  let ε' : S := ⟨ε, hε⟩
  let g' : S := ⟨gg, hg⟩
  let I : Ideal S := Ideal.span {g'}
  have hmap : (Ideal.Quotient.mk I).mapMatrix G' =
      Matrix.scalar (Fin k) (Ideal.Quotient.mk I ε') := by
    ext l j
    obtain ⟨t, ht, he⟩ := hc l j
    have hsub : G' l j - (if l = j then ε' else 0) ∈ I := by
      rw [Ideal.mem_span_singleton']
      refine ⟨⟨t, ht⟩, ?_⟩
      apply Subtype.ext
      split_ifs at he ⊢ <;> simp [G', ε', g'] <;> first | linear_combination he | linear_combination -he
    have := Ideal.Quotient.eq.mpr hsub
    simp only [RingHom.mapMatrix_apply, Matrix.map_apply, Matrix.scalar_apply,
      Matrix.diagonal_apply]
    rw [this]
    split_ifs <;> simp
  have hdet : Ideal.Quotient.mk I G'.det = Ideal.Quotient.mk I (ε' ^ k) := by
    rw [RingHom.map_det, hmap, Matrix.scalar_apply, Matrix.det_diagonal, Finset.prod_const,
      Finset.card_univ, Fintype.card_fin, map_pow]
  obtain ⟨m, hm⟩ := Ideal.mem_span_singleton'.mp (Ideal.Quotient.eq.mp hdet)
  refine ⟨m, m.2, ?_⟩
  have hG' : S.subtype.mapMatrix G' = G := by
    ext l j
    rfl
  have h1 : G.det = S.subtype G'.det := by
    rw [RingHom.map_det, hG']
  have h2 : G'.det = ε' ^ k + m * g' := by
    rw [hm]; ring
  rw [h1, h2]
  simp [ε', g', mul_comm]

theorem frGram : FrGram := by
  intro D X e hE G hGi hGc
  have h1 : X.ew * X.ew = X.ew := X.ew_idem
  have h2 : X.ew ∈ IntAf X.B.I.F X.B.I.E := X.ew_int
  have h3 : (1 : X.B.I.E) ⊗ₜ[X.B.I.F] e ∈ IntAf X.B.I.F X.B.I.E := by
    unfold IntAf Formalism.UG.tensInt
    exact Subring.subset_closure (Or.inr ⟨⟨e, hE.1⟩, rfl⟩)
  have hε : epsX X e ∈ IntAf X.B.I.F X.B.I.E := (IntAf X.B.I.F X.B.I.E).mul_mem h3 h2
  have hg : ((X.B.g : ℕ) : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) ∈ IntAf X.B.I.F X.B.I.E :=
    natCast_mem (IntAf X.B.I.F X.B.I.E) _
  obtain ⟨m, hm, hdet⟩ := fg_det (IntAf X.B.I.F X.B.I.E) G (epsX X e)
    ((X.B.g : ℕ) : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) hε hg hGi (fun l j => hGc l j)

  have hidem : epsX X e * epsX X e = epsX X e := by
    unfold epsX
    calc (1 ⊗ₜ[X.B.I.F] e * X.ew) * (1 ⊗ₜ[X.B.I.F] e * X.ew)
        = ((1 : X.B.I.E) ⊗ₜ[X.B.I.F] e * (1 : X.B.I.E) ⊗ₜ[X.B.I.F] e) * (X.ew * X.ew) := by ring
      _ = (1 : X.B.I.E) ⊗ₜ[X.B.I.F] e * X.ew := by
        rw [Algebra.TensorProduct.tmul_mul_tmul, one_mul, hE.2.1, h1]
  have hpow : ∀ n : ℕ, epsX X e * epsX X e ^ n = epsX X e := by
    intro n
    induction n with
    | zero => simp
    | succ n ih => rw [pow_succ, ← mul_assoc, ih, hidem]
  obtain ⟨y, hy, hyeq⟩ := idxDJacE X.B.I.F X.B.I.E X.B.g e hE m hm
  refine ⟨y, hy, ?_⟩
  rw [hdet, mul_add, hpow]
  have hfac : epsX X e + epsX X e * (((X.B.g : ℕ) : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * m) =
      X.ew * ((1 : X.B.I.E) ⊗ₜ[X.B.I.F] e *
        (1 + ((X.B.g : ℕ) : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * m)) := by
    unfold epsX
    ring
  rw [hfac, mul_assoc, hyeq]
  unfold epsX
  ring

end PI.UnitaryDimensionFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxAFrG =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDcvFrame =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDcvFrame", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IsSplitFrame\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDcvAlg\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IsUnitDetLeviM\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.ReferenceReprMemLattice\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.Transp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LevelSubgroupCharacterUnitary\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical TensorProduct
open Matrix NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.TermOp
  Formalism.L2.SG.Pf.unitaryCongruence PI.UnitaryDimensionFormula.NormCutK

namespace PI.UnitaryDimensionFormula.FrameX

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (X : HidaSetting D)

def E1 (e : Af X.B.I.F) : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F := (1 : X.B.I.E) ⊗ₜ[X.B.I.F] e

theorem idempotent_mul_self {e : Af X.B.I.F} (he : e * e = e) : E1 X e * E1 X e = E1 X e := by
  unfold E1; rw [Algebra.TensorProduct.tmul_mul_tmul, one_mul, he]

theorem idempotent_conj_fixed (e : Af X.B.I.F) : sigA X.B.I (E1 X e) = E1 X e := by
  unfold E1; rw [sigA_tmul, star_one]

theorem tmul_int {e : Af X.B.I.F} (he : e ∈ Formalism.UG.intAd X.B.I.F) :
    (1 : X.B.I.E) ⊗ₜ[X.B.I.F] e ∈ IntAf X.B.I.F X.B.I.E :=
  Subring.subset_closure (Or.inr ⟨⟨e, he⟩, rfl⟩)

theorem integral_circleChar {e : Af X.B.I.F} (he : e ∈ Formalism.UG.intAd X.B.I.F) : E1 X e ∈ IntAf X.B.I.F X.B.I.E :=
  tmul_int X he

theorem one_sub_idempotent {e t : Af X.B.I.F} (ht : 1 - e = (X.B.g : Af X.B.I.F) * t) :
    1 - E1 X e = (X.B.g : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * ((1 : X.B.I.E) ⊗ₜ[X.B.I.F] t) := by
  unfold E1
  have h1 : (X.B.g : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) = (1 : X.B.I.E) ⊗ₜ[X.B.I.F] (X.B.g : Af X.B.I.F) := by
    rw [← Algebra.TensorProduct.includeRight_apply, map_natCast]
  rw [h1, Algebra.TensorProduct.tmul_mul_tmul, one_mul, ← ht, Algebra.TensorProduct.one_def,
    TensorProduct.tmul_sub]

variable {X}

theorem Zfix {e : Af X.B.I.F} (hE : EgProp X.B.I.F X.B.g e) {c : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F}
    (hc : c ∈ IntAf X.B.I.F X.B.I.E) (h : ZMod' X.B.I X.B.g (E1 X e * c)) : ZMod' X.B.I X.B.g c := by
  obtain ⟨t, ht, he1⟩ := hE.2.2.1
  have hs := one_sub_idempotent X he1
  have e2 : c = E1 X e * c + (X.B.g : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * (((1 : X.B.I.E) ⊗ₜ[X.B.I.F] t) * c) := by
    linear_combination c * hs
  rw [e2]
  exact Z_add X.B.I X.B.g h ⟨_, mul_mem (tmul_int X ht) hc, rfl⟩

theorem idempotent_inv_coprime_nat (hJ : IdxDJacE) {e : Af X.B.I.F} (hE : EgProp X.B.I.F X.B.g e) (c : ℕ)
    (hc : Nat.Coprime c X.B.g) :
    ∃ y ∈ IntAf X.B.I.F X.B.I.E, E1 X e * (c : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * y = E1 X e := by
  have hcop : IsCoprime (c : ℤ) (X.B.g : ℤ) := Nat.isCoprime_iff_coprime.2 hc
  obtain ⟨a, b, hab⟩ := hcop
  obtain ⟨y, hy, hyE⟩ := hJ X.B.I.F X.B.I.E X.B.g e hE (-(b : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F))
    (neg_mem (intCast_mem _ b))
  refine ⟨(a : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * y, mul_mem (intCast_mem _ a) hy, ?_⟩
  have hab' : (a : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * (c : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) =
      1 + (X.B.g : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * (-(b : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F)) := by
    have := congrArg (Int.cast : ℤ → X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) hab
    push_cast at this
    linear_combination this
  calc E1 X e * (c : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * ((a : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * y)
      = E1 X e * ((a : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * (c : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F)) * y := by ring
    _ = E1 X e := by rw [hab']; exact hyE

theorem mL_le_Lf : ∀ v ∈ mL X.B.I X.B.g, v ∈ X.B.I.Lf := by
  intro v hv
  refine (Submodule.span_le (p := X.B.I.Lf)).2 ?_ hv
  rintro _ ⟨x, hx, rfl⟩
  have := X.B.I.Lf.smul_mem (⟨(X.B.g : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F), natCast_mem _ _⟩ : IntAf X.B.I.F X.B.I.E) hx
  rwa [Subring.smul_def] at this

theorem smul_int_mem {N : Submodule (IntAf X.B.I.F X.B.I.E) (VA X.B.I)} {c : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F}
    (hc : c ∈ IntAf X.B.I.F X.B.I.E) {v : VA X.B.I} (hv : v ∈ N) : c • v ∈ N := by
  have := N.smul_mem (⟨c, hc⟩ : IntAf X.B.I.F X.B.I.E) hv
  rwa [Subring.smul_def] at this

theorem congruence_on_idempotent (hJ : IdxDJacE) {e : Af X.B.I.F} (hE : EgProp X.B.I.F X.B.g e) {δ : VA X.B.I}
    (h : InAt X.B.I X.B.g X.B.g δ) : E1 X e • δ ∈ mL X.B.I X.B.g := by
  obtain ⟨c, hc, hcδ⟩ := h
  obtain ⟨y, hy, hyE⟩ := idempotent_inv_coprime_nat hJ hE c hc
  have e2 : E1 X e • δ = (E1 X e * y) • ((c : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) • δ) := by
    rw [smul_smul]
    conv_lhs => rw [← hyE]
    ring_nf
  rw [e2]
  exact smul_int_mem (mul_mem (integral_circleChar X hE.1) hy) hcδ

theorem hA_crd (x y : (VS D).V) :
    hA X.B.I (incl X.B.I (X.crd x)) (incl X.B.I (X.crd y)) =
      Formalism.UG.inclE (F := X.B.I.F) (Af X.B.I.F) (X.ιE.symm ((VS D).hT x y)) := by
  rw [hA_incl, tr_hT, RingEquiv.symm_apply_apply]
  congr 1
  simp only [Formalism.UG.hform, dotProduct, Matrix.mulVec, Finset.mul_sum, Pi.star_apply, starRingEnd_apply, mul_assoc]

variable (X)

def zv (u : D.what₂.Word) : VA X.B.I := X.B.I.fmat (X.xu u)⁻¹ *ᵥ incl X.B.I (X.zR u)

theorem ev_fix (u : D.what₂.Word) (a : Fin D.R.rS) :
    X.B.I.fmat (X.xu u)⁻¹ *ᵥ incl X.B.I (X.eR a) = incl X.B.I (X.eR a) :=
  fixes_inv X (X.xu_fix u a).1

theorem fv_fix (u : D.what₂.Word) (a : Fin D.R.rS) :
    X.B.I.fmat (X.xu u)⁻¹ *ᵥ incl X.B.I (X.fR a) = incl X.B.I (X.fR a) :=
  fixes_inv X (X.xu_fix u a).2

theorem rel_ee (a b : Fin D.R.rS) : hA X.B.I (incl X.B.I (X.eR a)) (incl X.B.I (X.eR b)) = 0 := by
  show hA X.B.I (incl X.B.I (X.crd (X.eX a))) (incl X.B.I (X.crd (X.eX b))) = 0
  rw [hA_crd, X.ee, map_zero, map_zero]

theorem rel_ff (a b : Fin D.R.rS) : hA X.B.I (incl X.B.I (X.fR a)) (incl X.B.I (X.fR b)) = 0 := by
  show hA X.B.I (incl X.B.I (X.crd (X.fY a))) (incl X.B.I (X.crd (X.fY b))) = 0
  rw [hA_crd, X.ff, map_zero, map_zero]

theorem rel_ef (a b : Fin D.R.rS) :
    hA X.B.I (incl X.B.I (X.eR a)) (incl X.B.I (X.fR b)) = if a = b then 1 else 0 := by
  show hA X.B.I (incl X.B.I (X.crd (X.eX a))) (incl X.B.I (X.crd (X.fY b))) = _
  rw [hA_crd, X.ef]
  split_ifs <;> simp

theorem rel_ez (u : D.what₂.Word) (a : Fin D.R.rS) : hA X.B.I (incl X.B.I (X.eR a)) (zv X u) = 0 := by
  rw [← ev_fix X u a, zv, hA_unit X (X.xu u)⁻¹]
  show hA X.B.I (incl X.B.I (X.crd (X.eX a))) (incl X.B.I (X.crd (X.zu u))) = 0
  rw [hA_crd, (X.zu_orth u a).1, map_zero, map_zero]

theorem rel_fz (u : D.what₂.Word) (a : Fin D.R.rS) : hA X.B.I (incl X.B.I (X.fR a)) (zv X u) = 0 := by
  rw [← fv_fix X u a, zv, hA_unit X (X.xu u)⁻¹]
  show hA X.B.I (incl X.B.I (X.crd (X.fY a))) (incl X.B.I (X.crd (X.zu u))) = 0
  rw [hA_crd, (X.zu_orth u a).2, map_zero, map_zero]

end PI.UnitaryDimensionFormula.FrameX

namespace PI.UnitaryDimensionFormula.FrameX

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (X : HidaSetting D)

def eh (e : Af X.B.I.F) (a : Fin D.R.rS) : VA X.B.I := E1 X e • incl X.B.I (X.eR a)
def fh (e : Af X.B.I.F) (a : Fin D.R.rS) : VA X.B.I := E1 X e • incl X.B.I (X.fR a)
def zh (e : Af X.B.I.F) (u : D.what₂.Word) : VA X.B.I := E1 X e • zv X u

def Qv (e : Af X.B.I.F) (u : D.what₂.Word) (y : VA X.B.I) : VA X.B.I :=
  FrameAlg.Q (sigA X.B.I) (JA X.B.I) (eh X e) (fh X e) (zh X e u) y

variable {X}

theorem hermitian_idempotent_smul {e : Af X.B.I.F} (he : e * e = e) (x y : VA X.B.I) :
    hA X.B.I (E1 X e • x) (E1 X e • y) = E1 X e * hA X.B.I x y := by
  rw [hA_smul_left, hA_smul_right, idempotent_conj_fixed, ← mul_assoc, idempotent_mul_self X he]

theorem hermitian_idempotent_smul_left (e : Af X.B.I.F) (x y : VA X.B.I) :
    hA X.B.I (E1 X e • x) y = E1 X e * hA X.B.I x y := by
  rw [hA_smul_left, idempotent_conj_fixed]

theorem idempotent_smul_idem {e : Af X.B.I.F} (he : e * e = e) (x : VA X.B.I) : E1 X e • (E1 X e • x) = E1 X e • x := by
  rw [smul_smul, idempotent_mul_self X he]

theorem sub_hA_left (x x' y : VA X.B.I) : hA X.B.I x y = hA X.B.I (x - x') y + hA X.B.I x' y := by
  rw [← hA_add_left, sub_add_cancel]

theorem Qv_perp (hS : IdxDSig) {e : Af X.B.I.F} (he : e * e = e) (u : D.what₂.Word) (y : VA X.B.I) :
    (∀ b, hA X.B.I (eh X e b) (Qv X e u y) = 0) ∧ (∀ b, hA X.B.I (fh X e b) (Qv X e u y) = 0) ∧
      hA X.B.I (zh X e u) (Qv X e u y) = 0 := by
  have hE := idempotent_mul_self X he
  refine FrameAlg.Q_perp_idem (sigA X.B.I) (JA X.B.I) (hS X.B.I).2 (hS X.B.I).1 (E1 X e) hE (idempotent_conj_fixed X e)
    (fun a => (idempotent_smul_idem he _).symm) (fun a => (idempotent_smul_idem he _).symm) (fun a b => ?_) (fun a b => ?_)
    (fun a b => ?_) (fun a => ?_) (fun a => ?_) y
  · show hA X.B.I (eh X e a) (eh X e b) = 0
    rw [eh, eh, hermitian_idempotent_smul he, rel_ee, mul_zero]
  · show hA X.B.I (fh X e a) (fh X e b) = 0
    rw [fh, fh, hermitian_idempotent_smul he, rel_ff, mul_zero]
  · show hA X.B.I (eh X e a) (fh X e b) = _
    rw [eh, fh, hermitian_idempotent_smul he, rel_ef]
    split_ifs <;> simp
  · show hA X.B.I (eh X e a) (zh X e u) = 0
    rw [eh, zh, hermitian_idempotent_smul he, rel_ez, mul_zero]
  · show hA X.B.I (fh X e a) (zh X e u) = 0
    rw [fh, zh, hermitian_idempotent_smul he, rel_fz, mul_zero]

theorem fixV_perp (hS : IdxDSig) {e : Af X.B.I.F} (he : e * e = e) (u : D.what₂.Word) (y w : VA X.B.I)
    (hw : w ∈ fixV X u) : E1 X e * hA X.B.I w (Qv X e u y) = 0 := by
  obtain ⟨h1, h2, h3⟩ := Qv_perp hS he u y
  rw [← hermitian_idempotent_smul_left]
  rcases hw with (⟨a, rfl⟩ | ⟨a, rfl⟩) | hz
  · exact h1 a
  · exact h2 a
  · rw [Set.mem_singleton_iff] at hz
    rw [hz]
    exact h3

variable (hJ : IdxDJacE) {e : Af X.B.I.F} (hE : EgProp X.B.I.F X.B.g e) (u : D.what₂.Word)
include hJ hE

theorem eh_cong (a : Fin D.R.rS) : eh X e a - E1 X e • X.e0 a ∈ mL X.B.I X.B.g := by
  have := congruence_on_idempotent hJ hE (X.basisApprox a).1
  rw [smul_sub] at this
  have h2 := (mL X.B.I X.B.g).neg_mem this
  rw [neg_sub] at h2
  exact h2

theorem fh_cong (a : Fin D.R.rS) : fh X e a - E1 X e • X.f0 a ∈ mL X.B.I X.B.g := by
  have := congruence_on_idempotent hJ hE (X.basisApprox a).2
  rw [smul_sub] at this
  have h2 := (mL X.B.I X.B.g).neg_mem this
  rw [neg_sub] at h2
  exact h2

theorem zh_cong : zh X e u - E1 X e • X.z0 ∈ mL X.B.I X.B.g := by
  have := congruence_on_idempotent hJ hE (X.xu_z u)
  rw [smul_sub] at this
  exact this

theorem mem_of_cong {x x0 : VA X.B.I} (hx0 : x0 ∈ X.B.I.Lf) (h : x - E1 X e • x0 ∈ mL X.B.I X.B.g) :
    x ∈ X.B.I.Lf := by
  have h1 : E1 X e • x0 ∈ X.B.I.Lf := smul_int_mem (integral_circleChar X hE.1) hx0
  have := X.B.I.Lf.add_mem (mL_le_Lf _ h) h1
  rwa [sub_add_cancel] at this

theorem eh_Lf (a : Fin D.R.rS) : eh X e a ∈ X.B.I.Lf :=
  mem_of_cong hJ hE ((frame_Lf X).1 a) (eh_cong hJ hE a)
theorem fh_Lf (a : Fin D.R.rS) : fh X e a ∈ X.B.I.Lf :=
  mem_of_cong hJ hE ((frame_Lf X).2.1 a) (fh_cong hJ hE a)
theorem zh_Lf : zh X e u ∈ X.B.I.Lf :=
  mem_of_cong hJ hE (frame_Lf X).2.2.1 (zh_cong hJ hE u)

theorem Qv_Lf {y : VA X.B.I} (hy : y ∈ X.B.I.Lf) : Qv X e u y ∈ X.B.I.Lf := by
  unfold Qv FrameAlg.Q
  have hi : ∀ x w, x ∈ X.B.I.Lf → w ∈ X.B.I.Lf → Formalism.UG.hform (sigA X.B.I) (JA X.B.I) x w ∈ IntAf X.B.I.F X.B.I.E :=
    fun x w hx hw => hA_int X.B.I hx hw
  refine X.B.I.Lf.add_mem (smul_int_mem (neg_mem (hi _ _ (zh_Lf hJ hE u) (zh_Lf hJ hE u)))
    (X.B.I.Lf.sub_mem hy (Submodule.sum_mem _ fun a _ => X.B.I.Lf.add_mem ?_ ?_)))
    (smul_int_mem (hi _ _ (zh_Lf hJ hE u) hy) (zh_Lf hJ hE u))
  · exact smul_int_mem (hi _ _ (fh_Lf hJ hE a) hy) (eh_Lf hJ hE a)
  · exact smul_int_mem (hi _ _ (eh_Lf hJ hE a) hy) (fh_Lf hJ hE a)

omit hJ hE in
theorem Z_hA_mL' {d w : VA X.B.I} (hd : d ∈ mL X.B.I X.B.g) (hw : w ∈ X.B.I.Lf) :
    ZMod' X.B.I X.B.g (hA X.B.I w d) := by
  rw [hA_symm]
  exact Z_sig X.B.I X.B.g (Z_hA_mL X hd hw)


omit hJ hE in
theorem Z_pair {x x' y y' : VA X.B.I} (hx : x - x' ∈ mL X.B.I X.B.g) (hy : y - y' ∈ mL X.B.I X.B.g)
    (hyL : y ∈ X.B.I.Lf) (hx'L : x' ∈ X.B.I.Lf) :
    ZMod' X.B.I X.B.g (hA X.B.I x y - hA X.B.I x' y') := by
  have e1 : hA X.B.I x y - hA X.B.I x' y' = hA X.B.I (x - x') y + hA X.B.I x' (y - y') := by
    rw [hA_sub_right, sub_hA_left x x' y]; ring
  rw [e1]
  exact Z_add X.B.I X.B.g (Z_hA_mL X hx hyL) (Z_hA_mL' hy hx'L)

theorem N_cong : ZMod' X.B.I X.B.g (hA X.B.I (zh X e u) (zh X e u) + E1 X e) := by
  have hz0 := (frame_Lf X).2.2.1
  have hc := zh_cong hJ hE u
  have h1 := Z_pair hc hc (zh_Lf hJ hE u) (smul_int_mem (integral_circleChar X hE.1) hz0)
  rw [hermitian_idempotent_smul hE.2.1] at h1
  have h2 := Z_smul X.B.I X.B.g (integral_circleChar X hE.1) X.formsAtZero.1
  have hsum := Z_add X.B.I X.B.g h1 h2
  have heq : (hA X.B.I (zh X e u) (zh X e u) - E1 X e * hA X.B.I X.z0 X.z0) +
      E1 X e * (hA X.B.I X.z0 X.z0 + 1) =
      hA X.B.I (zh X e u) (zh X e u) + E1 X e := by ring
  rw [heq] at hsum
  exact hsum

theorem Qv_cong {y : VA X.B.I} (hy : y ∈ X.B.I.Lf) (he0 : ∀ a, ZMod' X.B.I X.B.g (hA X.B.I (X.e0 a) y))
    (hf0 : ∀ a, ZMod' X.B.I X.B.g (hA X.B.I (X.f0 a) y)) (hz0 : ZMod' X.B.I X.B.g (hA X.B.I X.z0 y)) :
    Qv X e u y - E1 X e • y ∈ mL X.B.I X.B.g := by
  have hEi := integral_circleChar X hE.1
  have Zc : ∀ (x x0 : VA X.B.I), x - E1 X e • x0 ∈ mL X.B.I X.B.g → ZMod' X.B.I X.B.g (hA X.B.I x0 y) →
      ZMod' X.B.I X.B.g (hA X.B.I x y) := fun x x0 hc h0 => by
    rw [sub_hA_left x (E1 X e • x0) y, hermitian_idempotent_smul_left]
    exact Z_add X.B.I X.B.g (Z_hA_mL X hc hy) (Z_smul X.B.I X.B.g hEi h0)
  set N := hA X.B.I (zh X e u) (zh X e u)
  have hN : ZMod' X.B.I X.B.g (-N - E1 X e) := by
    have := Z_sub X.B.I X.B.g (Z_zero X.B.I X.B.g) (N_cong hJ hE u)
    convert this using 1; ring
  have hNi : N ∈ IntAf X.B.I.F X.B.I.E := hA_int X.B.I (zh_Lf hJ hE u) (zh_Lf hJ hE u)
  have e1 : Qv X e u y - E1 X e • y = (-N - E1 X e) • y +
      N • (∑ a, (hA X.B.I (fh X e a) y • eh X e a + hA X.B.I (eh X e a) y • fh X e a)) +
      hA X.B.I (zh X e u) y • zh X e u := by
    simp only [Qv, FrameAlg.Q]
    change (-N) • (y - ∑ a, (hA X.B.I (fh X e a) y • eh X e a + hA X.B.I (eh X e a) y • fh X e a)) +
      hA X.B.I (zh X e u) y • zh X e u - E1 X e • y = _
    simp only [smul_sub, sub_smul, neg_smul]
    abel
  rw [e1]
  refine (mL X.B.I X.B.g).add_mem ((mL X.B.I X.B.g).add_mem (Z_smul_mL X hN hy) (smul_int_mem hNi
    (Submodule.sum_mem _ fun a _ => (mL X.B.I X.B.g).add_mem ?_ ?_))) ?_
  · exact Z_smul_mL X (Zc _ _ (fh_cong hJ hE a) (hf0 a)) (eh_Lf hJ hE a)
  · exact Z_smul_mL X (Zc _ _ (eh_cong hJ hE a) (he0 a)) (fh_Lf hJ hE a)
  · exact Z_smul_mL X (Zc _ _ (zh_cong hJ hE u) hz0) (zh_Lf hJ hE u)

end PI.UnitaryDimensionFormula.FrameX

namespace PI.UnitaryDimensionFormula.FrameX

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open PI.UnitaryDimensionFormula

variable {D : D7} {X : HidaSetting D}

theorem eps_eq (e : Af X.B.I.F) : epsX X e = E1 X e * X.ew := rfl

theorem int_adj {S : Subring (X.B.I.E ⊗[X.B.I.F] Af X.B.I.F)} {k : ℕ}
    {M : Matrix (Fin k) (Fin k) (X.B.I.E ⊗[X.B.I.F] Af X.B.I.F)} (h : ∀ i j, M i j ∈ S) (i j : Fin k) :
    M.adjugate i j ∈ S := by
  let M' : Matrix (Fin k) (Fin k) S := fun i j => ⟨M i j, h i j⟩
  have e1 : M = S.subtype.mapMatrix M' := by ext i j; rfl
  rw [e1, ← RingHom.map_adjugate]
  exact ((M'.adjugate) i j).2

variable {e : Af X.B.I.F}

theorem eps_int (hE : EgProp X.B.I.F X.B.g e) : epsX X e ∈ IntAf X.B.I.F X.B.I.E := mul_mem (integral_circleChar X hE.1) X.ew_int

theorem eps_idem (he : e * e = e) : epsX X e * epsX X e = epsX X e := by
  rw [eps_eq]
  have h1 := idempotent_mul_self X he
  have h2 := X.ew_idem
  linear_combination (X.ew * X.ew) * h1 + E1 X e * h2

theorem sig_eps : sigA X.B.I (epsX X e) = E1 X e * sigA X.B.I X.ew := by
  rw [eps_eq, map_mul, idempotent_conj_fixed]

theorem eps_orth : epsX X e * sigA X.B.I (epsX X e) = 0 := by
  rw [sig_eps, eps_eq]
  have h2 := X.ew_orth
  linear_combination (E1 X e * E1 X e) * h2

theorem epsilon_idempotent_mul (he : e * e = e) : epsX X e * E1 X e = epsX X e := by
  rw [eps_eq]; linear_combination X.ew * idempotent_mul_self X he

theorem eps_ew : epsX X e * X.ew = epsX X e := by
  rw [eps_eq]; linear_combination E1 X e * X.ew_idem

def bv (e : Af X.B.I.F) (u : D.what₂.Word) (j : Fin D.R.k) : VA X.B.I := epsX X e • Qv X e u (X.bw j)
def cv (e : Af X.B.I.F) (u : D.what₂.Word) (l : Fin D.R.k) : VA X.B.I :=
  sigA X.B.I (epsX X e) • Qv X e u (X.bwd l)

theorem Qbw_cong (hJ : IdxDJacE) (hE : EgProp X.B.I.F X.B.g e) (u : D.what₂.Word) (j : Fin D.R.k) : Qv X e u (X.bw j) - E1 X e • X.bw j ∈ mL X.B.I X.B.g :=
  Qv_cong hJ hE u ((frame_Lf X).2.2.2.1 j) (fun a => ((X.weightVectorsIntegral j).2.2 a).1) (fun a => ((X.weightVectorsIntegral j).2.2 a).2.1)
    (X.weightVectorsIntegral j).1

theorem Qbwd_cong (hJ : IdxDJacE) (hE : EgProp X.B.I.F X.B.g e) (u : D.what₂.Word) (l : Fin D.R.k) : Qv X e u (X.bwd l) - E1 X e • X.bwd l ∈ mL X.B.I X.B.g :=
  Qv_cong hJ hE u ((frame_Lf X).2.2.2.2 l) (fun a => ((X.weightVectorsIntegral l).2.2 a).2.2.1)
    (fun a => ((X.weightVectorsIntegral l).2.2 a).2.2.2) (X.weightVectorsIntegral l).2.1

theorem bv_Lf (hJ : IdxDJacE) (hE : EgProp X.B.I.F X.B.g e) (u : D.what₂.Word) (j : Fin D.R.k) : bv e u j ∈ X.B.I.Lf :=
  smul_int_mem (eps_int hE) (Qv_Lf hJ hE u ((frame_Lf X).2.2.2.1 j))

theorem cv_Lf (hJ : IdxDJacE) (hE : EgProp X.B.I.F X.B.g e) (u : D.what₂.Word) (l : Fin D.R.k) : cv e u l ∈ X.B.I.Lf :=
  smul_int_mem (sigA_mem X.B.I (eps_int hE)) (Qv_Lf hJ hE u ((frame_Lf X).2.2.2.2 l))

theorem G_cong (hJ : IdxDJacE) (hE : EgProp X.B.I.F X.B.g e) (u : D.what₂.Word) (l j : Fin D.R.k) :
    ZMod' X.B.I X.B.g (hA X.B.I (cv e u l) (bv e u j) - if l = j then epsX X e else 0) := by
  have hp := Z_pair (Qbwd_cong hJ hE u l) (Qbw_cong hJ hE u j) (Qv_Lf hJ hE u ((frame_Lf X).2.2.2.1 j))
    (smul_int_mem (integral_circleChar X hE.1) ((frame_Lf X).2.2.2.2 l))
  rw [hermitian_idempotent_smul hE.2.1] at hp
  have h1 := Z_smul X.B.I X.B.g (eps_int hE) hp
  have h2 := Z_smul X.B.I X.B.g (eps_int hE) (X.bw_dual l j)
  have e1 : hA X.B.I (cv e u l) (bv e u j) = epsX X e * hA X.B.I (Qv X e u (X.bwd l)) (Qv X e u (X.bw j)) := by
    rw [cv, bv, hA_smul_left, hA_smul_right, sigA_sigA, ← mul_assoc, eps_idem hE.2.1]
  rw [e1]
  have := Z_add X.B.I X.B.g h1 h2
  convert this using 1
  have h3 := epsilon_idempotent_mul hE.2.1
  have h4 : epsX X e * X.ew = epsX X e := eps_ew
  split_ifs
  · linear_combination (hA X.B.I (X.bwd l) (X.bw j)) * h3 + h4
  · linear_combination (hA X.B.I (X.bwd l) (X.bw j)) * h3

theorem cbw_cong (hJ : IdxDJacE) (hE : EgProp X.B.I.F X.B.g e) (u : D.what₂.Word) (l j : Fin D.R.k) :
    ZMod' X.B.I X.B.g (hA X.B.I (cv e u l) (X.bw j) - if l = j then epsX X e else 0) := by
  have hp : ZMod' X.B.I X.B.g (hA X.B.I (Qv X e u (X.bwd l)) (X.bw j) - hA X.B.I (E1 X e • X.bwd l) (X.bw j)) := by
    rw [sub_hA_left (Qv X e u (X.bwd l)) (E1 X e • X.bwd l) (X.bw j), add_sub_cancel_right]
    exact Z_hA_mL X (Qbwd_cong hJ hE u l) ((frame_Lf X).2.2.2.1 j)
  rw [hermitian_idempotent_smul_left] at hp
  have h1 := Z_smul X.B.I X.B.g (eps_int hE) hp
  have h2 := Z_smul X.B.I X.B.g (eps_int hE) (X.bw_dual l j)
  have e1 : hA X.B.I (cv e u l) (X.bw j) = epsX X e * hA X.B.I (Qv X e u (X.bwd l)) (X.bw j) := by
    rw [cv, hA_smul_left, sigA_sigA]
  rw [e1]
  have := Z_add X.B.I X.B.g h1 h2
  convert this using 1
  have h3 := epsilon_idempotent_mul hE.2.1
  have h4 : epsX X e * X.ew = epsX X e := eps_ew
  split_ifs
  · linear_combination (hA X.B.I (X.bwd l) (X.bw j)) * h3 + h4
  · linear_combination (hA X.B.I (X.bwd l) (X.bw j)) * h3

theorem bwdb_cong (hJ : IdxDJacE) (hE : EgProp X.B.I.F X.B.g e) (u : D.what₂.Word) (i j : Fin D.R.k) :
    ZMod' X.B.I X.B.g (hA X.B.I (X.bwd i) (bv e u j) - if i = j then epsX X e else 0) := by
  have hp : ZMod' X.B.I X.B.g (hA X.B.I (X.bwd i) (Qv X e u (X.bw j)) - hA X.B.I (X.bwd i) (E1 X e • X.bw j)) := by
    rw [← hA_sub_right]
    exact Z_hA_mL' (Qbw_cong hJ hE u j) ((frame_Lf X).2.2.2.2 i)
  rw [hA_smul_right] at hp
  have h1 := Z_smul X.B.I X.B.g (eps_int hE) hp
  have h2 := Z_smul X.B.I X.B.g (eps_int hE) (X.bw_dual i j)
  have e1 : hA X.B.I (X.bwd i) (bv e u j) = epsX X e * hA X.B.I (X.bwd i) (Qv X e u (X.bw j)) := by
    rw [bv, hA_smul_right]
  rw [e1]
  have := Z_add X.B.I X.B.g h1 h2
  convert this using 1
  have h3 := epsilon_idempotent_mul hE.2.1
  have h4 : epsX X e * X.ew = epsX X e := eps_ew
  split_ifs
  · linear_combination (hA X.B.I (X.bwd i) (X.bw j)) * h3 + h4
  · linear_combination (hA X.B.I (X.bwd i) (X.bw j)) * h3

theorem to_ew (hE : EgProp X.B.I.F X.B.g e) {c : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F} (hc : c ∈ IntAf X.B.I.F X.B.I.E) (b : Prop) [Decidable b]
    (h : ZMod' X.B.I X.B.g (c - if b then epsX X e else 0)) : ZMod' X.B.I X.B.g (c - if b then X.ew else 0) := by
  refine Zfix hE (sub_mem hc (by split_ifs; exacts [X.ew_int, zero_mem _])) ?_
  have h1 := Z_smul X.B.I X.B.g (integral_circleChar X hE.1) h
  convert h1 using 1
  have h3 : E1 X e * epsX X e = epsX X e := by rw [mul_comm]; exact epsilon_idempotent_mul hE.2.1
  split_ifs
  · rw [mul_sub, mul_sub, h3, eps_eq]
  · ring

end PI.UnitaryDimensionFormula.FrameX
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDcvFrame =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDcvFrameAsm =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDcvFrameAsm", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxAFrG\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LevelSubgroupCharacterUnitary\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxAJacE\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDSI\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDcvFrame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDcvAlg\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical TensorProduct
open Matrix NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.TermOp
  Formalism.L2.SG.Pf.unitaryCongruence PI.UnitaryDimensionFormula.NormCutK PI.UnitaryDimensionFormula.FrameX

namespace PI.UnitaryDimensionFormula

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem idxDFrame_of (hS : IdxDSig) (hJ : IdxDJacE) (hG : FrGram) : IdxDFrame := by
  intro D X u e hE
  set eps := epsX X e with heps
  set G : Matrix (Fin D.R.k) (Fin D.R.k) (X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) :=
    Matrix.of fun l j => Formalism.UG.hform (sigA X.B.I) (JA X.B.I) (cv e u l) (bv e u j) with hGdef
  have hGint : ∀ l j, G l j ∈ IntAf X.B.I.F X.B.I.E := fun l j =>
    hA_int X.B.I (cv_Lf hJ hE u l) (bv_Lf hJ hE u j)
  have hGc : ∀ l j, ZMod' X.B.I X.B.g (G l j - if l = j then eps else 0) := fun l j => G_cong hJ hE u l j
  obtain ⟨y, hy, hyE⟩ := hG D X e hE G hGint hGc
  set M := (eps * y) • G.adjugate with hMdef
  have hM : M * G = eps • (1 : Matrix (Fin D.R.k) (Fin D.R.k) _) := FrameAlg.inv_on G eps y hyE
  have hMint : ∀ i l, M i l ∈ IntAf X.B.I.F X.B.I.E := fun i l =>
    mul_mem (mul_mem (eps_int hE) hy) (int_adj hGint i l)
  have hMe : ∀ i l, M i l * eps = M i l := fun i l => by
    show eps * y * G.adjugate i l * eps = eps * y * G.adjugate i l
    have := eps_idem (X := X) hE.2.1
    linear_combination (y * G.adjugate i l) * this
  have hse : sigA X.B.I eps * sigA X.B.I eps = sigA X.B.I eps := by
    rw [← map_mul, eps_idem hE.2.1]
  refine ⟨bv e u, fun i => ∑ l, sigA X.B.I (M i l) • cv e u l, ⟨eps_idem hE.2.1, eps_orth, fun i => ?_,
    fun i => ?_, fun i j => ?_⟩, fun i => ⟨bv_Lf hJ hE u i, ?_⟩, fun i w hw => ⟨?_, ?_⟩, fun i j => ⟨?_, ?_⟩⟩
  · rw [bv, smul_smul, eps_idem hE.2.1]
  · rw [Finset.smul_sum]
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [cv, smul_comm (sigA X.B.I eps) (sigA X.B.I (M i l)), smul_smul (sigA X.B.I eps), hse]
  · exact FrameAlg.dual_fix (sigA X.B.I) (JA X.B.I) (hS X.B.I).1 (bv e u) (cv e u) eps M hM i j
  · exact Submodule.sum_mem _ fun l _ => smul_int_mem (sigA_mem X.B.I (hMint i l)) (cv_Lf hJ hE u l)
  · rw [hA_symm X.B.I w, bv, hA_smul_right]
    have := fixV_perp hS hE.2.1 u (X.bw i) w hw
    rw [eps_eq, show E1 X e * X.ew * hA X.B.I w (Qv X e u (X.bw i)) =
      X.ew * (E1 X e * hA X.B.I w (Qv X e u (X.bw i))) by ring, this, mul_zero, map_zero]
  · set_option synthInstance.maxHeartbeats 100000 in
    rw [hA_symm X.B.I w, ← hL_apply, map_sum]
    have hz : ∀ l, hL X.B.I w (sigA X.B.I (M i l) • cv e u l) = 0 := fun l => by
      rw [hL_apply, hA_smul_right, cv, hA_smul_right, sig_eps]
      have := fixV_perp hS hE.2.1 u (X.bwd l) w hw
      rw [show sigA X.B.I (M i l) * (E1 X e * sigA X.B.I X.ew * hA X.B.I w (Qv X e u (X.bwd l))) =
        sigA X.B.I (M i l) * sigA X.B.I X.ew * (E1 X e * hA X.B.I w (Qv X e u (X.bwd l))) by ring, this, mul_zero]
    rw [Finset.sum_eq_zero fun l _ => hz l, map_zero]
  ·
    have hsum : hA X.B.I (∑ l, sigA X.B.I (M i l) • cv e u l) (X.bw j) =
        ∑ l, M i l * hA X.B.I (cv e u l) (X.bw j) := by
      show Formalism.UG.hform (sigA X.B.I) (JA X.B.I) _ _ = _
      rw [FrameAlg.h_sum_left]
      refine Finset.sum_congr rfl fun l _ => ?_
      rw [FrameAlg.h_smul_left, sigA_sigA]; rfl
    have h1 : ZMod' X.B.I X.B.g (∑ l, M i l * (hA X.B.I (cv e u l) (X.bw j) - if l = j then eps else 0)) :=
      Z_sum X.B.I X.B.g _ _ fun l _ => Z_smul X.B.I X.B.g (hMint i l) (cbw_cong hJ hE u l j)
    have h2 : ZMod' X.B.I X.B.g (∑ l, M i l * (G l j - if l = j then eps else 0)) :=
      Z_sum X.B.I X.B.g _ _ fun l _ => Z_smul X.B.I X.B.g (hMint i l) (hGc l j)
    have hMG : ∑ l, M i l * G l j = if i = j then eps else 0 := by
      have := congrFun (congrFun hM i) j
      simpa [Matrix.mul_apply, Matrix.smul_apply, Matrix.one_apply] using this
    have hs : ∀ (F : Fin D.R.k → X.B.I.E ⊗[X.B.I.F] Af X.B.I.F),
        ∑ l, M i l * (F l - if l = j then eps else 0) = ∑ l, M i l * F l - M i j := fun F => by
      simp only [mul_sub, Finset.sum_sub_distrib, mul_ite, mul_zero, Finset.sum_ite_eq', Finset.mem_univ,
        if_true, hMe]
    rw [hs, hMG] at h2
    rw [hs] at h1
    refine to_ew hE (hA_int X.B.I (Submodule.sum_mem _ fun l _ =>
      smul_int_mem (sigA_mem X.B.I (hMint i l)) (cv_Lf hJ hE u l)) ((X.vectorsInLattice.2.2 j).1)) (i = j) ?_
    rw [hsum]
    have := Z_sub X.B.I X.B.g h1 h2
    convert this using 1
    ring
  · exact to_ew hE (hA_int X.B.I ((X.vectorsInLattice.2.2 i).2) (bv_Lf hJ hE u j)) (i = j) (bwdb_cong hJ hE u i j)

theorem idxDFrame : IdxDFrame := idxDFrame_of idxDSig idxDJacE frGram

end PI.UnitaryDimensionFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDcvFrameAsm =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxKHom =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxKHom", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IndexGe\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.MemMLOfInAt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IsUnitDetLeviM\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.UnitriangularReductionOfMemLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.TermOp
  Formalism.L2.SG.Full Formalism.MainNotions.S.Cnt

namespace PI.UnitaryDimensionFormula

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem cj_good {D : D7} {X : HidaSetting D} (u : D.what₂.Word) (s : Hfin X u) (hs : cj X u s ∈ X.B.I.Kset) :
    NormCutK.Good X (cj X u s) := by
  have hk1 : (((1 : Hfin X u) : X.B.I.Gf) * X.xu u)⁻¹ * ((s : X.B.I.Gf) * X.xu u) ∈ X.B.I.Kset := by
    simpa [cj, mul_assoc] using hs
  have hk2 : ((s : X.B.I.Gf) * X.xu u)⁻¹ * (((1 : Hfin X u) : X.B.I.Gf) * X.xu u) ∈ X.B.I.Kset := by
    have hi := PI.UnitaryDimensionFormula.kset_inv hs
    simpa [cj, mul_assoc, mul_inv_rev] using hi
  have hg := NormCutK.colGood X u 1 s hk1 hk2
  simpa [cj, mul_assoc] using hg

theorem idxHom : IdxHom := by
  intro D X Y u _
  refine ⟨NormCutK.levi_one (TR := Y.TR), fun s t hs ht => ?_, fun s hs hKu v => ?_⟩
  · have hst : cj X u (s * t) = cj X u s * cj X u t := by
      simp [cj, mul_assoc]
    rw [hst, NormCutK.levi_mul (TR := Y.TR) (cj_good u s hs) (cj_good u t ht)]
  · exact NormCutK.unitriangular_reduction_of_mem_level (TR := Y.TR) (cj_good u s hs) hKu v

end PI.UnitaryDimensionFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxKHom =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IndexGeFull =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IndexGeFull", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.DimFormCOfSteps\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxAUni\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDChk\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxDcvFrameAsm\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IdxKHom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.UnitaryDimensionFormula

theorem indexGe : IndexGe := indexGe_of uniSub idxHom (idxSurj_of_frame idxDFrame)

end PI.UnitaryDimensionFormula
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IndexGeFull =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.StabBoundHolds =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.StabBoundHolds", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.DimFormCOfSteps\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.DimFormCOfThree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open Matrix NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.TermOp

namespace PI.UnitaryDimensionFormula.StabB

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (X : HidaSetting D)

def hmat (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) D.host.E :=
  M.map X.ιE.toRingHom

def gOf (M : GL (Fin X.B.I.n) X.B.I.E) : (VS D).V ≃ₗ[D.host.E] (VS D).V :=
  LinearEquiv.ofLinear (Matrix.toLin X.bas X.bas (hmat X (M : Matrix _ _ _)))
    (Matrix.toLin X.bas X.bas (hmat X ((M⁻¹ : GL (Fin X.B.I.n) X.B.I.E) : Matrix _ _ _)))
    (by
      rw [← Matrix.toLin_mul, hmat, hmat, ← Matrix.map_mul, Units.mul_inv,
        Matrix.map_one _ (map_zero _) (map_one _), Matrix.toLin_one])
    (by
      rw [← Matrix.toLin_mul, hmat, hmat, ← Matrix.map_mul, Units.inv_mul,
        Matrix.map_one _ (map_zero _) (map_one _), Matrix.toLin_one])

theorem crd_gOf (M : GL (Fin X.B.I.n) X.B.I.E) (y : (VS D).V) :
    X.crd (gOf X M y) = (M : Matrix _ _ _) *ᵥ X.crd y := by
  have hr : ⇑(X.bas.repr (gOf X M y)) = hmat X (M : Matrix _ _ _) *ᵥ ⇑(X.bas.repr y) := by
    show ⇑(X.bas.repr (Matrix.toLin X.bas X.bas (hmat X (M : Matrix _ _ _)) y)) = _
    rw [← LinearMap.toMatrix_mulVec_repr (v₁ := X.bas) (v₂ := X.bas), LinearMap.toMatrix_toLin]
  funext i
  simp only [Formalism.L2.SG.HidaSetting.HidaSetting.crd, crdOf]
  rw [hr]

  simp [Matrix.mulVec, dotProduct, hmat, map_sum, crdOf]

theorem crd_injective : Function.Injective X.crd := by
  intro a b h
  unfold Formalism.L2.SG.HidaSetting.HidaSetting.crd crdOf at h
  apply X.bas.repr.injective
  ext i
  exact X.ιE.symm.injective (congrFun h i)

theorem incl_mulVec {I : Formalism.MainNotions.S.AutInst} (M : Matrix (Fin I.n) (Fin I.n) I.E) (v : Fin I.n → I.E) :
    M.map (Formalism.UG.inclE (F := I.F) (Af I.F)) *ᵥ incl I v = incl I (M *ᵥ v) := by
  unfold incl
  funext i
  exact (RingHom.map_mulVec (Formalism.UG.inclE (F := I.F) (Af I.F)) M v i).symm

theorem af_nontrivial (F : Type) [Field F] [NumberField F] : Nontrivial (Af F) := by
  obtain ⟨p, hne, hp⟩ := Ring.not_isField_iff_exists_prime.mp (NumberField.RingOfIntegers.not_isField F)
  let v : IsDedekindDomain.HeightOneSpectrum (𝓞 F) := ⟨p, hp, hne⟩
  exact RingHom.domain_nontrivial (RestrictedProduct.evalRingHom (fun w : IsDedekindDomain.HeightOneSpectrum (𝓞 F) => w.adicCompletion F) v :
    Af F →+* v.adicCompletion F)

theorem incl_injective (I : Formalism.MainNotions.S.AutInst) : Function.Injective (incl I) := by
  haveI := af_nontrivial I.F
  have hi : Function.Injective (Formalism.UG.inclE (F := I.F) (Af I.F) : I.E →+* _) := RingHom.injective _
  intro a b h
  unfold incl at h
  funext i
  exact hi (congrFun h i)

theorem star_host (x : X.B.I.E) : star (X.ιE x) = X.ιE (star x) := by
  rw [X.ιE_conj]
  exact Formalism.BasicNotions.Examples₂.star_eq_conj _ _

theorem gOf_isom (M : GL (Fin X.B.I.n) X.B.I.E) (hM : M ∈ Formalism.UG.UJ (starRingEnd X.B.I.E) X.B.I.J) :
    gOf X M ∈ Formalism.HermitianLatticesTheory.isom (VS D).hT := by
  have hg : ∀ i, gOf X M (X.bas i) = ∑ k, hmat X (M : Matrix _ _ _) k i • X.bas k :=
    fun i => Matrix.toLin_self _ _ _ _
  have hU : Formalism.UG.cT (starRingEnd X.B.I.E) (M : Matrix _ _ _) * X.B.I.J * (M : Matrix _ _ _) = X.B.I.J := hM
  have key : ∀ i j, (VS D).hT (gOf X M (X.bas i)) (gOf X M (X.bas j)) = (VS D).hT (X.bas i) (X.bas j) := by
    intro i j
    rw [hg, hg, ← X.J_eq, ← congrFun (congrFun hU i) j]

    simp only [map_sum, LinearMap.map_smulₛₗ₂, LinearMap.sum_apply, LinearMap.map_smul, smul_eq_mul, ← X.J_eq,
    hmat, Matrix.map_apply, RingEquiv.toRingHom_eq_coe, RingHom.coe_coe, starRingEnd_apply, star_host,
    Formalism.UG.cT, Matrix.mul_apply, Matrix.transpose_apply, map_mul, Finset.sum_mul]
    refine Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun l _ => ?_
    ring
  intro x y
  rw [← X.bas.sum_repr x, ← X.bas.sum_repr y]

  simp only [map_sum, LinearEquiv.map_smul, LinearMap.map_smulₛₗ₂, LinearMap.sum_apply, LinearMap.map_smul,
  smul_eq_mul, key]

def matOf (η : X.B.I.Gf) : GL (Fin X.B.I.n) X.B.I.E :=
  if h : ∃ M : GL (Fin X.B.I.n) X.B.I.E, M ∈ Formalism.UG.UJ (starRingEnd X.B.I.E) X.B.I.J ∧
      X.B.I.fmat η = (M : Matrix _ _ _).map (Formalism.UG.inclE (F := X.B.I.F) (Af X.B.I.F)) then h.choose else 1

theorem matOf_spec (u : D.what₂.Word) (η : Hfin X u) (hη : η ∈ (iotaF X u).range) :
    matOf X (η : X.B.I.Gf) ∈ Formalism.UG.UJ (starRingEnd X.B.I.E) X.B.I.J ∧
      X.B.I.fmat (η : X.B.I.Gf) = (matOf X (η : X.B.I.Gf) : Matrix _ _ _).map
        (Formalism.UG.inclE (F := X.B.I.F) (Af X.B.I.F)) := by
  obtain ⟨γ, rfl⟩ := hη
  have hγ := γ.2
  unfold Gam at hγ
  have h1 := hγ.1
  unfold Formalism.MainNotions.LeviCoordinates.rr_GF at h1
  have h2 : (γ : X.B.I.Ginf × X.B.I.Gf) ∈ X.B.I.GFset := h1
  unfold Formalism.MainNotions.S.AutInst.GFset at h2
  obtain ⟨M, hM, -, hf⟩ := h2
  unfold matOf
  split_ifs with h
  · exact h.choose_spec
  · exact (h ⟨M, hM, hf⟩).elim

theorem gOf_fix (u : D.what₂.Word) (η : Hfin X u) (hη : η ∈ (iotaF X u).range) (v : (VS D).V)
    (hv : X.crd v ∈ fixSet X u) : gOf X (matOf X (η : X.B.I.Gf)) v = v := by
  apply crd_injective X
  rw [crd_gOf]
  apply incl_injective X.B.I
  rw [← incl_mulVec, ← (matOf_spec X u η hη).2]
  have hH := η.2
  unfold Hfin at hH
  unfold Formalism.L2.SG.PoincareInHH.HfinS at hH
  exact hH _ hv

theorem gOf_e (u : D.what₂.Word) (η : Hfin X u) (hη : η ∈ (iotaF X u).range) (a : Fin D.R.rS) :
    gOf X (matOf X (η : X.B.I.Gf)) (X.eX a) = X.eX a :=
  gOf_fix X u η hη _ (Or.inl (Or.inl ⟨a, rfl⟩))

theorem gOf_f (u : D.what₂.Word) (η : Hfin X u) (hη : η ∈ (iotaF X u).range) (a : Fin D.R.rS) :
    gOf X (matOf X (η : X.B.I.Gf)) (X.fY a) = X.fY a :=
  gOf_fix X u η hη _ (Or.inl (Or.inr ⟨a, rfl⟩))

theorem gOf_stabF (u : D.what₂.Word) (η : Hfin X u) (hη : η ∈ (iotaF X u).range) :
    gOf X (matOf X (η : X.B.I.Gf)) ∈ stabF D (X.Fu u) := by
  have he : ∀ i, gOf X (matOf X (η : X.B.I.Gf)) ((X.Fu u).e i) = (X.Fu u).e i := by
    intro i; rw [X.Fu_e]; exact gOf_e X u η hη i
  refine ⟨gOf_isom X _ (matOf_spec X u η hη).1, fun j => ?_, ?_⟩
  · unfold FlagG.Xa
    rw [Submodule.map_span, Set.image_image]
    congr 1
    exact Set.image_congr fun i _ => he i
  · rw [X.flagZVector]
    exact gOf_fix X u η hη _ (Or.inr rfl)

theorem latS_mul (u : D.what₂.Word) (η : Hfin X u) (hη : η ∈ (iotaF X u).range) (h : X.B.I.Gf) :
    latS X u ((η : X.B.I.Gf) * h) = gOf X (matOf X (η : X.B.I.Gf)) '' latS X u h := by
  set g := gOf X (matOf X (η : X.B.I.Gf)) with hg
  have hf := (matOf_spec X u η hη).2
  have key : ∀ w, X.B.I.fmat (η : X.B.I.Gf)⁻¹ *ᵥ incl X.B.I (X.crd (g w)) = incl X.B.I (X.crd w) := by
    intro w
    rw [hg, crd_gOf, ← incl_mulVec, ← hf, Matrix.mulVec_mulVec]
    have e1 : X.B.I.fmat (η : X.B.I.Gf)⁻¹ * X.B.I.fmat (η : X.B.I.Gf) = 1 := by
      show X.B.I.fmat ((η : X.B.I.Gf)⁻¹ * (η : X.B.I.Gf)) = 1
      rw [inv_mul_cancel]
      rfl
    rw [e1, Matrix.one_mulVec]
  have main : ∀ w, X.B.I.fmat (((η : X.B.I.Gf) * h) * X.xu u)⁻¹ *ᵥ incl X.B.I (X.crd (g w)) =
      X.B.I.fmat (h * X.xu u)⁻¹ *ᵥ incl X.B.I (X.crd w) := by
    intro w
    have e : (((η : X.B.I.Gf) * h) * X.xu u)⁻¹ = (h * X.xu u)⁻¹ * (η : X.B.I.Gf)⁻¹ := by group
    rw [e]
    have ef : X.B.I.fmat ((h * X.xu u)⁻¹ * (η : X.B.I.Gf)⁻¹) =
        X.B.I.fmat (h * X.xu u)⁻¹ * X.B.I.fmat (η : X.B.I.Gf)⁻¹ := rfl
    rw [ef, ← Matrix.mulVec_mulVec, key]
  ext y
  constructor
  · intro hy
    refine ⟨g.symm y, ?_, g.apply_symm_apply y⟩
    simp only [latS, Set.mem_ofPred_eq] at hy ⊢
    rwa [← main (g.symm y), g.apply_symm_apply]
  · rintro ⟨w, hw, rfl⟩
    simp only [latS, Set.mem_ofPred_eq] at hw ⊢
    rwa [main]

variable {T : D.host.E}

theorem fix_span (F0 : FlagG (VS D) D.R.rS T) (g : (VS D).V ≃ₗ[D.host.E] (VS D).V)
    (hg : ∀ a, g (F0.e a) = F0.e a) : ∀ x ∈ F0.X, g x = x := by
  intro x hx
  unfold FlagG.X at hx
  have key := LinearMap.eqOn_span' (f := (g : (VS D).V →ₗ[D.host.E] (VS D).V)) (g := LinearMap.id)
    (s := Set.range F0.e) (by rintro _ ⟨a, rfl⟩; exact hg a) hx
  simpa using key

theorem perp_pres (F0 : FlagG (VS D) D.R.rS T) (g : (VS D).V ≃ₗ[D.host.E] (VS D).V)
    (hiso : g ∈ Formalism.HermitianLatticesTheory.isom (VS D).hT) (hg : ∀ a, g (F0.e a) = F0.e a) :
    ∀ y ∈ perpS (VS D) F0.X, g y ∈ perpS (VS D) F0.X := by
  intro y hy
  unfold perpS at hy ⊢
  have hy' : ∀ x ∈ F0.X, (VS D).hT x y = 0 := hy
  have h2 : ∀ x y, (VS D).hT (g x) (g y) = (VS D).hT x y := hiso
  show ∀ x ∈ F0.X, (VS D).hT x (g y) = 0
  intro x hx
  have hgx : g x = x := fix_span F0 g hg x hx
  have h3 := h2 x y
  rw [hgx] at h3
  rw [h3]
  exact hy' x hx

def indQ (F0 : FlagG (VS D) D.R.rS T) (g : (VS D).V ≃ₗ[D.host.E] (VS D).V)
    (hp : ∀ y ∈ perpS (VS D) F0.X, g y ∈ perpS (VS D) F0.X) (hX : ∀ x ∈ F0.X, g x = x) :
    WbQ D F0 →ₗ[D.host.E] WbQ D F0 :=
  Submodule.mapQ _ _ ((g : (VS D).V →ₗ[D.host.E] (VS D).V).restrict hp) (by
    intro x hx
    simp only [Submodule.mem_comap, Submodule.subtype_apply, LinearMap.coe_restrict_apply] at hx ⊢
    rw [LinearEquiv.coe_coe, hX _ hx]
    exact hx)

theorem indQ_mk (F0 : FlagG (VS D) D.R.rS T) (g : (VS D).V ≃ₗ[D.host.E] (VS D).V)
    (hp : ∀ y ∈ perpS (VS D) F0.X, g y ∈ perpS (VS D) F0.X) (hX : ∀ x ∈ F0.X, g x = x)
    (x : perpS (VS D) F0.X) (hx : g x.1 ∈ perpS (VS D) F0.X) :
    indQ F0 g hp hX (Submodule.Quotient.mk x) = Submodule.Quotient.mk ⟨g x.1, hx⟩ := by
  rfl

omit T in
theorem eq_of_ind (u : D.what₂.Word) (g1 g2 : (VS D).V ≃ₗ[D.host.E] (VS D).V)
    (h1 : g1 ∈ Formalism.HermitianLatticesTheory.isom (VS D).hT) (h2 : g2 ∈ Formalism.HermitianLatticesTheory.isom (VS D).hT)
    (hf1 : ∀ a, g1 (X.fY a) = X.fY a) (hf2 : ∀ a, g2 (X.fY a) = X.fY a)
    (hq : ∀ x ∈ perpS (VS D) (X.Fu u).X, g1 x - g2 x ∈ (X.Fu u).X) : g1 = g2 := by
  have hfe : ∀ a b, (VS D).hT (X.fY b) (X.eX a) = if a = b then 1 else 0 := by
    intro a b
    rw [← (LinearMap.isSymm_def.1 (VS D).herm) (X.eX a) (X.fY b), X.ef]
    split_ifs <;> simp
  have hzero : ∀ d ∈ (X.Fu u).X, (∀ b, (VS D).hT (X.fY b) d = 0) → d = 0 := by
    intro d hd hb
    unfold FlagG.X at hd
    rw [X.Fu_e, Submodule.mem_span_range_iff_exists_fun] at hd
    obtain ⟨c, rfl⟩ := hd
    have hc : ∀ b, c b = 0 := by
      intro b
      have := hb b

      simpa [map_sum, hfe] using this
    simp [hc]
  have hperp : ∀ x ∈ perpS (VS D) (X.Fu u).X, g1 x = g2 x := by
    intro x hx
    apply sub_eq_zero.1
    apply hzero _ (hq x hx)
    intro b
    have e1 := h1 (X.fY b) x
    have e2 := h2 (X.fY b) x
    rw [hf1 b] at e1
    rw [hf2 b] at e2
    rw [map_sub, e1, e2, sub_self]
  have hv' : ∀ v, v - ∑ a, (VS D).hT (X.eX a) v • X.fY a ∈ perpS (VS D) (X.Fu u).X := by
    intro v x hx
    unfold FlagG.X at hx
    rw [X.Fu_e, Submodule.mem_span_range_iff_exists_fun] at hx
    obtain ⟨c, rfl⟩ := hx

    simp [map_sum, X.ef]
  apply LinearEquiv.ext
  intro v
  have hsplit : v = (v - ∑ a, (VS D).hT (X.eX a) v • X.fY a) + ∑ a, (VS D).hT (X.eX a) v • X.fY a := by abel
  rw [hsplit, map_add (f := _), map_add (f := _), hperp _ (hv' v)]
  congr 1

  simp [map_sum, hf1, hf2]

end PI.UnitaryDimensionFormula.StabB

namespace PI.UnitaryDimensionFormula

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open StabB

theorem stabBound_holds : StabBound := by
  intro D X Y u _ Λ _ hfin
  set A : Set (Hfin X u) := {η | η ∈ (iotaF X u).range ∧ ∃ h h' : Hfin X u,
    latS X u (h : X.B.I.Gf) = (Λ : Set (VS D).V) ∧ latS X u (h' : X.B.I.Gf) = (Λ : Set (VS D).V) ∧
    ∃ κ ∈ Ku X u Y.hK, h' = η * h * κ} with hAdef
  have hgm : ∀ η ∈ A, Formalism.HermitianLatticesTheory.gmap (gOf X (matOf X (η : X.B.I.Gf))) Λ = Λ := by
    rintro η ⟨hη, h, h', hh, hh', κ, hκ, he⟩
    have hk : latS X u ((η : X.B.I.Gf) * (h : X.B.I.Gf) * (κ : X.B.I.Gf)) =
        latS X u ((η : X.B.I.Gf) * (h : X.B.I.Gf)) := kuStab D X u Y.hK _ ⟨κ, hκ⟩
    have e : latS X u (h' : X.B.I.Gf) =
        gOf X (matOf X (η : X.B.I.Gf)) '' latS X u (h : X.B.I.Gf) := by
      rw [he, Subgroup.coe_mul, Subgroup.coe_mul, hk, latS_mul X u η hη]
    apply SetLike.coe_injective
    calc ((Formalism.HermitianLatticesTheory.gmap (gOf X (matOf X (η : X.B.I.Gf))) Λ : Submodule _ _) : Set (VS D).V)
        = gOf X (matOf X (η : X.B.I.Gf)) '' latS X u (h : X.B.I.Gf) := by
          rw [hh, Formalism.HermitianLatticesTheory.gmap, Submodule.map_coe]; rfl
      _ = Λ := e.symm.trans hh'
  have hX : ∀ η ∈ A, ∀ x ∈ (X.Fu u).X, gOf X (matOf X (η : X.B.I.Gf)) x = x := fun η hA =>
    fix_span (X.Fu u) _ (fun a => by rw [X.Fu_e]; exact gOf_e X u η hA.1 a)
  have hp : ∀ η ∈ A, ∀ y ∈ perpS (VS D) (X.Fu u).X,
      gOf X (matOf X (η : X.B.I.Gf)) y ∈ perpS (VS D) (X.Fu u).X := fun η hA =>
    perp_pres (X.Fu u) _ (gOf_isom X _ (matOf_spec X u η hA.1).1)
      (fun a => by rw [X.Fu_e]; exact gOf_e X u η hA.1 a)
  let φ : A → autLz D (X.Fu u) Λ := fun η =>
    ⟨indQ (X.Fu u) _ (hp η.1 η.2) (hX η.1 η.2),
      ⟨_, gOf_stabF X u η.1 η.2.1, hgm η.1 η.2, fun x hx => indQ_mk (X.Fu u) _ _ _ x hx⟩⟩
  have hinj : Function.Injective φ := by
    intro η1 η2 h12
    have hfun : ∀ q, indQ (X.Fu u) _ (hp η1.1 η1.2) (hX η1.1 η1.2) q =
        indQ (X.Fu u) _ (hp η2.1 η2.2) (hX η2.1 η2.2) q :=
      fun q => congrFun (congrArg Subtype.val h12) q
    have hg : gOf X (matOf X (η1.1 : X.B.I.Gf)) = gOf X (matOf X (η2.1 : X.B.I.Gf)) := by
      apply eq_of_ind X u _ _ (gOf_isom X _ (matOf_spec X u _ η1.2.1).1)
        (gOf_isom X _ (matOf_spec X u _ η2.2.1).1) (gOf_f X u _ η1.2.1) (gOf_f X u _ η2.2.1)
      intro x hx
      have h3 := hfun (Submodule.Quotient.mk ⟨x, hx⟩)
      rw [indQ_mk _ _ _ _ _ (hp η1.1 η1.2 x hx), indQ_mk _ _ _ _ _ (hp η2.1 η2.2 x hx)] at h3
      have h4 := (Submodule.Quotient.eq _).1 h3
      simpa using h4
    have hM : ((matOf X (η1.1 : X.B.I.Gf) : GL (Fin X.B.I.n) X.B.I.E) :
          Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) =
        ((matOf X (η2.1 : X.B.I.Gf) : GL (Fin X.B.I.n) X.B.I.E) :
          Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) := by
      have hl := congrArg LinearEquiv.toLinearMap hg
      have hl' : hmat X (matOf X (η1.1 : X.B.I.Gf) : Matrix _ _ _) =
          hmat X (matOf X (η2.1 : X.B.I.Gf) : Matrix _ _ _) :=
        (Matrix.toLin X.bas X.bas).injective hl
      exact Matrix.map_injective (by exact X.ιE.injective) hl'
    apply Subtype.ext; apply Subtype.ext; apply Subtype.ext; apply Units.ext
    have f1 := (matOf_spec X u _ η1.2.1).2
    have f2 := (matOf_spec X u _ η2.2.1).2
    change X.B.I.fmat (η1.1 : X.B.I.Gf) = X.B.I.fmat (η2.1 : X.B.I.Gf)
    rw [f1, f2, hM]
  have : Finite (autLz D (X.Fu u) Λ) := hfin.to_subtype
  have : Finite A := Finite.of_injective φ hinj
  refine ⟨A, Set.toFinite A, Nat.card_le_card_of_injective φ hinj, ?_⟩
  intro h h' hh hh' γ hγ κ hκ he
  exact ⟨hγ, h, h', hh, hh', κ, hκ, he⟩

end PI.UnitaryDimensionFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.StabBoundHolds =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnitaryDimensionFormula =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnitaryDimensionFormula", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DimFormC\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.DimFormCOfThree\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IndexGeFull\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.StabBoundHolds\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.Transp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem kappa_off_diagonal_dim_form_C : Formalism.L2.SG.KappaOffDiagonal.DimFormC :=
  PI.UnitaryDimensionFormula.dimFormC_of_three PI.UnitaryDimensionFormula.transport_holds PI.UnitaryDimensionFormula.stabBound_holds PI.UnitaryDimensionFormula.indexGe
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnitaryDimensionFormula =====
