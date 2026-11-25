module

public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConvZero
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CyclotomicFrobeniusSystemContinuationOpenDisc
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsInvariantBasisConvergingOpenDisc
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RingsCyclotomic
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ApplyLayers
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsWachModulePeriodMapToBcris
public import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ChiGamPowNeOne
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobeniusSubOneWittTensorLatticeSurjectiveFixed
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MapMulLeft
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemRangeOfFrob
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NBasisLoc
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ZgFormula
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CyclotomicPowerSeriesAlgHomActionLaws
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsInvariantBasis
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GeomSumOneAddPrime
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CyclotomicPowerSeriesDataLevIsExpansionAtZeta
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBeta
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsEvaluationConvergentSeriesBcris
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsOpenDiscConvergentRingWithExpansions
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsWachLatticeMatricesGammaPhi
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocAinfUntiltEpsOneEqZeta
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MaxUnramifiedActsOnLetterIdempotentImage
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachInclusionXQFrobenius

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCocycleSolutionConv, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HerrCocyclePolesFrobeniusQCrystalline

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCocycleSolutionConv =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCocycleSolutionConv", "h": "module\n\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConvZero\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CyclotomicFrobeniusSystemContinuationOpenDisc\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CyclotomicPowerSeriesAlgHomActionLaws\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsInvariantBasis\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsInvariantBasisConvergingOpenDisc\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GeomSumOneAddPrime\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RingsCyclotomic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct GlobalTheory.HWL GlobalTheory.Cyc PowerSeries

namespace GlobalTheory.NL.WCont

open GlobalTheory.HWL.InvCont GlobalTheory.Cyc.Cont GlobalTheory.Cyc.InvBasis

section Block

variable {R S κ : Type} [CommRing R] [CommRing S] [Fintype κ] [DecidableEq κ]

def blk (A : Matrix κ κ R) (u : κ → R) : Matrix (κ ⊕ Unit) (κ ⊕ Unit) R :=
  Matrix.fromBlocks A (Matrix.of fun i _ => u i) 0 1

theorem blk_mul (A B : Matrix κ κ R) (u v : κ → R) : blk A u * blk B v = blk (A * B) (A.mulVec v + u) := by
  ext (i | i) (j | j) <;> simp [blk, Matrix.mul_apply, Matrix.mulVec, dotProduct]

omit [Fintype κ] [DecidableEq κ] in
theorem blk_map {F : Type} [FunLike F R S] [RingHomClass F R S] (f : F) (A : Matrix κ κ R) (u : κ → R) :
    (blk A u).map f = blk (A.map f) (fun i => f (u i)) := by
  ext (i | i) (j | j) <;> simp [blk]

omit [Fintype κ] in
theorem blk_one : blk (1 : Matrix κ κ R) 0 = 1 := by
  ext (i | i) (j | j) <;> simp [blk, Matrix.one_apply]

end Block

theorem block_relation {L κ : Type} [Field L] [Fintype κ] [DecidableEq κ] (γ φ : L⟦X⟧ →ₐ[L] L⟦X⟧)
    (G G' P P' : Matrix κ κ L⟦X⟧) (y z z' : κ → L⟦X⟧) (Q Λ T a b : L⟦X⟧) (m k : ℕ)
    (U U' V V' : Matrix (κ ⊕ Unit) (κ ⊕ Unit) L⟦X⟧)
    (hU : ∀ c : κ ⊕ Unit → L⟦X⟧, (blk G z).mulVec (fun i => γ (c i)) = c →
      c = U.mulVec fun i => C (constantCoeff (c i)))
    (hUV : U * V = 1) (hUV' : U' * V' = 1) (hGU' : blk G' z' * U'.map γ = U') (hQ : IsUnit Q) (hΛ : IsUnit Λ)
    (hc : ∀ a, γ (φ a) = φ (γ a)) (hP : P * P' = Q ^ k • (1 : Matrix κ κ L⟦X⟧))
    (hGP : γ Q ^ m • (P * G'.map φ) = Q ^ m • (G * P.map γ))
    (hy : (Q ^ m * Λ) • G.mulVec (fun j => γ (y j)) - (Q ^ m * γ Λ) • y =
      (Λ * γ Λ) • (P.mulVec (fun j => φ (z' j)) - Q ^ m • z))
    (ha : Q ^ m * a * φ T = T) (hb : Λ * b = T) :
    ∃ B : Matrix (κ ⊕ Unit) (κ ⊕ Unit) L,
      blk (T • 1) 0 * U = blk (a • P) (b • y) * (blk (T • 1) 0 * U').map φ * B.map C := by
  obtain ⟨q, hq⟩ := hQ.exists_right_inv
  obtain ⟨e, he⟩ := hΛ.exists_right_inv
  have hqm : ∀ k : ℕ, Q ^ k * q ^ k = 1 := fun k => by rw [← mul_pow, hq, one_pow]
  have hγq : γ Q ^ m * γ q ^ m = 1 := by rw [← mul_pow, ← map_mul, hq, map_one, one_pow]
  have hγe : γ Λ * γ e = 1 := by rw [← map_mul, he, map_one]
  have hinv : (q ^ m • P) * ((Q ^ m * q ^ k) • P') = 1 := by
    rw [Matrix.smul_mul, Matrix.mul_smul, hP, smul_smul, smul_smul,
      show q ^ m * (Q ^ m * q ^ k) * Q ^ k = (Q ^ m * q ^ m) * (Q ^ k * q ^ k) by ring, hqm, hqm, one_mul, one_smul]
  obtain ⟨-, B, -, hB, -⟩ := frob_relation γ φ (blk G z) (blk G' z') U U' V V' (blk (q ^ m • P) (e • y))
    (blk ((Q ^ m * q ^ k) • P') (-((Q ^ m * q ^ k) • P').mulVec (e • y))) 1 0 0 hU hUV hUV' hGU' isUnit_one hc
    (by rw [blk_mul, hinv, Matrix.mulVec_neg, Matrix.mulVec_mulVec, hinv, Matrix.one_mulVec, neg_add_cancel,
      blk_one, pow_zero, one_smul])
    (by
      rw [pow_zero, pow_zero, one_smul, one_smul, blk_map, blk_map, blk_mul, blk_mul]
      congr 1
      · ext1 i j
        have h := congrFun (congrFun hGP i) j
        have h1 : (G * (q ^ m • P).map γ) i j = γ q ^ m * (G * P.map γ) i j := by
          simp [Matrix.mul_apply, Finset.mul_sum, mul_left_comm]
        rw [h1, Matrix.smul_mul]
        simp only [Matrix.smul_apply, smul_eq_mul] at h ⊢
        linear_combination (q ^ m * γ q ^ m) * h - (q ^ m * (P * G'.map φ) i j) * hγq +
          (γ q ^ m * (G * P.map γ) i j) * hqm m
      · funext i
        have h := congrFun hy i
        have h1 : G.mulVec (fun j => γ (e * y j)) i = γ e * G.mulVec (fun j => γ (y j)) i := by
          simp [Matrix.mulVec, dotProduct, Finset.mul_sum, mul_left_comm]
        simp only [Pi.add_apply, h1, Matrix.smul_mulVec, Pi.smul_apply, Pi.sub_apply, smul_eq_mul] at h ⊢
        set g := G.mulVec (fun j => γ (y j)) i
        set f := P.mulVec (fun j => φ (z' j)) i
        have h3 : Q ^ m * (γ e * g - e * y i) = f - Q ^ m * z i := by
          linear_combination (e * γ e) * h - (Q ^ m * γ e * g - γ Λ * γ e * (f - Q ^ m * z i)) * he +
            (Q ^ m * e * y i + (f - Q ^ m * z i)) * hγe
        linear_combination (-q ^ m) * h3 + (γ e * g - e * y i + z i) * hqm m)
  refine ⟨B, ?_⟩
  simp only [add_zero, pow_zero, one_smul] at hB
  have h4 : blk (T • 1) 0 * blk (q ^ m • P) (e • y) = blk (a • P) (b • y) * (blk (T • (1 : Matrix κ κ L⟦X⟧)) 0).map φ := by
    have h5 : (T • (1 : Matrix κ κ L⟦X⟧)).map φ = φ T • 1 := by
      ext1 i j; by_cases hij : i = j <;> simp [hij]
    rw [blk_map, h5, blk_mul, blk_mul]
    congr 1
    · rw [Matrix.smul_mul, Matrix.one_mul, Matrix.mul_smul, Matrix.mul_one, smul_smul, smul_smul]
      congr 1
      linear_combination (-q ^ m) * ha + (a * φ T) * hqm m
    · funext i
      have h6 : (fun i => φ ((0 : κ → L⟦X⟧) i)) = 0 := funext fun _ => map_zero φ
      rw [h6, Matrix.mulVec_zero, Matrix.smul_mulVec, Matrix.one_mulVec]
      simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul, Pi.zero_apply]
      linear_combination (-e * y i) * hb + (b * y i) * he
  rw [Matrix.map_mul, ← mul_assoc, ← h4, mul_assoc, mul_assoc, ← mul_assoc _ (U'.map φ), ← hB]

variable {l : ℕ} [hl : Fact l.Prime] {LL : FinExt l}

theorem exists_basis_bd {ι : Type} [Fintype ι] [DecidableEq ι] (s : ℕ) (u : ℤ_[l]ˣ) (hs : 1 ≤ s) (h2 : l = 2 → 2 ≤ s)
    (hu : ‖(u : ℤ_[l]) - 1‖ = (l : ℝ) ^ (-(s : ℤ))) :
    ∃ ρ : ℝ, 0 < ρ ∧ ρ < 1 ∧ ∀ G : Matrix ι ι (↥(OL LL))⟦X⟧, G.map constantCoeff = 1 →
      ∃ U V : Matrix ι ι (↥LL.1)⟦X⟧, U * V = 1 ∧ U.map constantCoeff = 1 ∧
      G.map (PowerSeries.map (algebraMap ↥(OL LL) ↥LL.1)) * U.map (act l ↥LL.1 u) = U ∧
      (∀ c : ι → (↥LL.1)⟦X⟧, (G.map (PowerSeries.map (algebraMap ↥(OL LL) ↥LL.1))).mulVec
        (fun i => act l ↥LL.1 u (c i)) = c → c = U.mulVec fun i => C (constantCoeff (c i))) ∧
      ∀ i j, ∃ c, Bd ρ c (U i j) := by
  have hρ : (0 : ℝ) < (l : ℝ) ^ (-((s : ℝ) + 1 / ((l : ℝ) - 1))) :=
    Real.rpow_pos_of_pos (Nat.cast_pos.2 hl.out.pos) _
  obtain ⟨ρ, h0, h1⟩ := exists_between (lt_min hρ one_pos)
  refine ⟨ρ, h0, h1.trans_le (min_le_right _ _), fun G hG => ?_⟩
  set e := Fintype.equivFin ι
  obtain ⟨U, V, hUV, hU0, hGU, hU, hc⟩ := exists_invariant_basis l LL s _ u hs h2 hu (G.submatrix e.symm e.symm)
    (by rw [← Matrix.submatrix_map, hG, Matrix.submatrix_one_equiv])
  refine ⟨U.submatrix e e, V.submatrix e e, ?_, ?_, ?_, fun c h => ?_, fun i j => ?_⟩
  · rw [Matrix.submatrix_mul_equiv, hUV, Matrix.submatrix_one_equiv]
  · rw [← Matrix.submatrix_map, hU0, Matrix.submatrix_one_equiv]
  · conv_rhs => rw [← hGU, ← Matrix.submatrix_mul_equiv _ _ _ e]
    simp [Matrix.submatrix_map]
  · have h' := hU (fun i => c (e.symm i)) (by
      funext i
      rw [← congrFun h (e.symm i)]
      exact Fintype.sum_equiv e.symm _ _ fun _ => rfl)
    funext i
    have h3 := congrFun h' (e i)
    rw [e.symm_apply_apply] at h3
    rw [h3]
    exact (Fintype.sum_equiv e _ _ fun j => by simp).symm
  · exact bd_of_tendsto ((hc _ _).1 ρ h0 (h1.trans_le (min_le_left _ _)))

theorem eq_C_of_fixed (s : ℕ) (u : ℤ_[l]ˣ) (hs : 1 ≤ s) (h2 : l = 2 → 2 ≤ s)
    (hu : ‖(u : ℤ_[l]) - 1‖ = (l : ℝ) ^ (-(s : ℤ))) (a : (↥LL.1)⟦X⟧) (ha : act l ↥LL.1 u a = a) :
    a = C (constantCoeff a) := by
  obtain ⟨ρ, -, -, h⟩ := exists_basis_bd (LL := LL) (ι := Unit) s u hs h2 hu
  obtain ⟨U, -, -, -, -, hU, -⟩ := h 1 (Matrix.map_one _ (map_zero _) (map_one _))
  rw [Matrix.map_one _ (map_zero _) (map_one _)] at hU
  have h1 := congrFun (hU (fun _ => 1) (by simp)) ()
  have h2 := congrFun (hU (fun _ => a) (by simp [ha])) ()
  simp only [Matrix.mulVec, dotProduct, Finset.univ_unique, Finset.sum_singleton, map_one, mul_one] at h1 h2
  rwa [← h1, one_mul] at h2

def Bded (a : (↥LL.1)⟦X⟧) : Prop := ∀ r : ℝ, 0 < r → r < 1 → ∃ c, Bd r c a

theorem Bded.mul {a b : (↥LL.1)⟦X⟧} (ha : Bded a) (hb : Bded b) : Bded (a * b) :=
  fun r h0 h1 => ex_mul h0 (ha r h0 h1) (hb r h0 h1)

theorem Bded.pow {a : (↥LL.1)⟦X⟧} (ha : Bded a) (k : ℕ) : Bded (a ^ k) := fun r h0 h1 => by
  obtain ⟨c, hc⟩ := ha r h0 h1
  exact ⟨_, hc.pow h0 k⟩

theorem bded_C (x : ↥LL.1) : Bded (C x) := fun r _ _ => ⟨_, bd_C r x⟩

theorem bded_map (a : (↥(OL LL))⟦X⟧) : Bded (PowerSeries.map (algebraMap ↥(OL LL) ↥LL.1) a) :=
  fun _ h0 h1 => ⟨1, bd_map _ (norm_OL l LL) h0 h1.le a⟩

theorem Bded.phi_pow {a : (↥LL.1)⟦X⟧} (ha : Bded a) (j : ℕ) : Bded ((phi l ↥LL.1 ^ j) a) :=
  fun r h0 h1 => ex_phi_pow l LL j h0 h1 (ha r h0 h1)

theorem Bded.conv {a : (↥LL.1)⟦X⟧} (ha : Bded a) : Conv a := fun r h0 h1 => by
  obtain ⟨y, hry, hy⟩ := exists_between h1
  obtain ⟨c, hc⟩ := ha y (h0.trans hry) hy
  exact hc.tendsto h0 hry

theorem tau_eq (s : ℕ) (hs : 1 ≤ s) (τ : (↥LL.1)⟦X⟧) (hτ : XX l ↥LL.1 s * τ = logS LL) :
    QQ l ↥LL.1 s * C ((l : ↥LL.1)⁻¹) * phi l ↥LL.1 τ = τ := by
  have hX : XX l ↥LL.1 s ≠ 0 := fun h => by
    have h1 := logS_deriv (LL := LL)
    rw [h, zero_mul] at hτ
    rw [← hτ, map_zero, mul_zero] at h1
    exact zero_ne_one h1
  have hl0 : (l : ↥LL.1) ≠ 0 := by exact_mod_cast hl.out.ne_zero
  have hinv : C ((l : ↥LL.1)⁻¹) * (l : (↥LL.1)⟦X⟧) = 1 := by
    rw [← map_natCast (C (R := ↥LL.1)), ← map_mul, inv_mul_cancel₀ hl0, map_one]
  have hQ : QQ l ↥LL.1 s * phi l ↥LL.1 τ = (l : (↥LL.1)⟦X⟧) * τ := by
    apply mul_left_cancel₀ hX
    rw [← mul_assoc, ← (XX_QQ_properties l _ s hs).1, ← map_mul, hτ,
      phi_log_series l ↥LL.1 (logS LL) (logS_const (LL := LL)) (logS_deriv (LL := LL)), ← hτ]
    ring
  linear_combination C ((l : ↥LL.1)⁻¹) * hQ + τ * hinv

theorem phi_pow_QQ_dvd (s : ℕ) (hs : 1 ≤ s) (τ : (↥LL.1)⟦X⟧) (hτ : XX l ↥LL.1 s * τ = logS LL) (j : ℕ) :
    ∃ b, Bded b ∧ (phi l ↥LL.1 ^ j) (QQ l ↥LL.1 s) * b = τ := by
  have hQ : Bded (QQ l ↥LL.1 s) := map_QQ (l := l) (O := ↥(OL LL)) (L := ↥LL.1) s ▸ bded_map _
  have hb : Bded τ := bd_tau l LL s _ τ logS_const logS_deriv hτ
  have h1 : ∀ j : ℕ, (phi l ↥LL.1 ^ j) (QQ l ↥LL.1 s) * C ((l : ↥LL.1)⁻¹) * (phi l ↥LL.1 ^ (j + 1)) τ =
      (phi l ↥LL.1 ^ j) τ := fun j => by
    conv_rhs => rw [← tau_eq s hs τ hτ, map_mul, map_mul, apply_C]
    rw [pow_succ, AlgHom.mul_apply]
  have h2 : ∀ j : ℕ, ∃ c, Bded c ∧ c * (phi l ↥LL.1 ^ j) τ = τ := fun j => by
    induction j with
    | zero => exact ⟨C 1, bded_C 1, by simp⟩
    | succ j ih =>
      obtain ⟨c, hc, h⟩ := ih
      exact ⟨_, hc.mul ((hQ.phi_pow j).mul (bded_C _)), by rw [mul_assoc, h1, h]⟩
  obtain ⟨c, hc, h⟩ := h2 j
  exact ⟨_, hc.mul ((bded_C ((l : ↥LL.1)⁻¹)).mul (hb.phi_pow (j + 1))), by linear_combination c * h1 j + h⟩

theorem map_phi_pow (j : ℕ) (a : (↥(OL LL))⟦X⟧) : PowerSeries.map (algebraMap ↥(OL LL) ↥LL.1)
    ((phi l ↥(OL LL) ^ j) a) = (phi l ↥LL.1 ^ j) (PowerSeries.map (algebraMap ↥(OL LL) ↥LL.1) a) := by
  induction j with
  | zero => rfl
  | succ j ih => rw [pow_succ', pow_succ', AlgHom.mul_apply, AlgHom.mul_apply, ← ih]; exact map_act _ _

theorem isUnit_QQ (s : ℕ) (hs : 1 ≤ s) : IsUnit (QQ l ↥LL.1 s) := by
  rw [isUnit_iff_constantCoeff, (XX_QQ_properties l _ s hs).2.2.1]
  exact (Nat.cast_ne_zero.2 hl.out.ne_zero : (l : ↥LL.1) ≠ 0).isUnit

theorem prod_dvd (s : ℕ) (hs : 1 ≤ s) (τ : (↥LL.1)⟦X⟧) (hτ : XX l ↥LL.1 s * τ = logS LL) (J : Multiset ℕ) :
    IsUnit (PowerSeries.map (algebraMap ↥(OL LL) ↥LL.1)
      (J.map fun j => (phi l ↥(OL LL) ^ j) (QQ l ↥(OL LL) s)).prod) ∧
    ∃ b, Bded b ∧ PowerSeries.map (algebraMap ↥(OL LL) ↥LL.1)
      (J.map fun j => (phi l ↥(OL LL) ^ j) (QQ l ↥(OL LL) s)).prod * b = τ ^ J.card := by
  induction J using Multiset.induction_on with
  | empty =>
    rw [Multiset.map_zero, Multiset.prod_zero, map_one]
    exact ⟨isUnit_one, C 1, bded_C 1, by simp⟩
  | cons j J ih =>
    obtain ⟨hu, b, hb, h⟩ := ih
    obtain ⟨c, hc, h'⟩ := phi_pow_QQ_dvd s hs τ hτ j
    have e := map_phi_pow (LL := LL) j (QQ l ↥(OL LL) s)
    rw [map_QQ] at e
    simp only [Multiset.map_cons, Multiset.prod_cons, map_mul, e, Multiset.card_cons]
    exact ⟨((isUnit_QQ s hs).map _).mul hu, _, hc.mul hb, by rw [mul_mul_mul_comm, h, h', pow_succ']⟩

theorem bded_blk {κ : Type} (A : Matrix κ κ (↥LL.1)⟦X⟧) (u : κ → (↥LL.1)⟦X⟧) (hA : ∀ i j, Bded (A i j))
    (hu : ∀ i, Bded (u i)) (a c : κ ⊕ Unit) : Bded (blk A u a c) := by
  rcases a with a | a <;> rcases c with c | c
  · exact hA a c
  · exact hu a
  · exact (show C 0 = blk A u (Sum.inr a) (Sum.inl c) by simp [blk]) ▸ bded_C 0
  · exact (show C 1 = blk A u (Sum.inr a) (Sum.inr c) by simp [blk]) ▸ bded_C 1



theorem letterwise (s r n m k : ℕ) [NeZero n] (hs : 1 ≤ s) (h2 : l = 2 → 2 ≤ s) (u : ℤ_[l]ˣ)
    (hu : ‖(u : ℤ_[l]) - 1‖ = (l : ℝ) ^ (-(s : ℤ))) (J : Multiset ℕ) (Λ : (↥(OL LL))⟦X⟧)
    (hΛ : Λ = (J.map fun j => (phi l ↥(OL LL) ^ j) (QQ l ↥(OL LL) s)).prod)
    (G P P' : ZMod n → Matrix (Fin r) (Fin r) (↥(OL LL))⟦X⟧) (y z : ZMod n → Fin r → (↥(OL LL))⟦X⟧)
    (hG : ∀ i, (G i).map constantCoeff = 1) (hz : ∀ i j, constantCoeff (z i j) = 0)
    (hP : ∀ i, P i * P' i = QQ l ↥(OL LL) s ^ k • (1 : Matrix (Fin r) (Fin r) (↥(OL LL))⟦X⟧))
    (hGP : ∀ i, act l _ u (QQ l ↥(OL LL) s) ^ m • (P i * (G (i - 1)).map (phi l _)) =
      QQ l ↥(OL LL) s ^ m • (G i * (P i).map (act l _ u)))
    (hy : ∀ i, (QQ l ↥(OL LL) s ^ m * Λ) • (G i).mulVec (fun j => act l _ u (y i j)) -
      (QQ l ↥(OL LL) s ^ m * act l _ u Λ) • y i = (Λ * act l _ u Λ) •
        ((P i).mulVec (fun j => phi l _ (z (i - 1) j)) - QQ l ↥(OL LL) s ^ m • z i)) :
    ∃ w : ZMod n → Fin r → (↥LL.1)⟦X⟧, (∀ i j, constantCoeff (w i j) = 0) ∧
      (∀ i j, Conv (logS LL ^ (m + J.card) * w i j)) ∧
      ∀ i, ((G i).map (PowerSeries.map (algebraMap ↥(OL LL) ↥LL.1))).mulVec (fun j => act l ↥LL.1 u (w i j)) - w i =
        fun j => PowerSeries.map (algebraMap ↥(OL LL) ↥LL.1) (z i j) := by
  obtain ⟨τ, hτ⟩ := exists_logS_div (LL := LL) s
  obtain ⟨hΛu, b, hb, hbΛ⟩ := prod_dvd s hs τ hτ J
  rw [← hΛ] at hΛu hbΛ
  have hτb : Bded τ := bd_tau l LL s _ τ logS_const logS_deriv hτ
  have hQb : Bded (QQ l ↥LL.1 s) := map_QQ (l := l) (O := ↥(OL LL)) (L := ↥LL.1) s ▸ bded_map _
  obtain ⟨ρ, hρ, hρ1, hex⟩ := exists_basis_bd (LL := LL) (ι := Fin r ⊕ Unit) s u hs h2 hu
  choose U V hUV hU0 hGU hU hbd using fun i => hex (blk (G i) (z i)) (by
    rw [blk_map, hG, funext (hz i)]; exact blk_one)
  set ι : (↥(OL LL))⟦X⟧ →+* (↥LL.1)⟦X⟧ := PowerSeries.map (algebraMap ↥(OL LL) ↥LL.1) with hι
  simp only [blk_map] at hGU hU
  have hact : ∀ (x : ℤ_[l]) (a : (↥(OL LL))⟦X⟧), ι (act l _ x a) = act l _ x (ι a) := fun x a => map_act x a
  have hphi : ∀ (a : (↥(OL LL))⟦X⟧), ι (phi l _ a) = phi l _ (ι a) := fun a => map_act _ a
  have hQ : ι (QQ l _ s) = QQ l _ s := map_QQ s
  have hlast : ∀ i c, U i (Sum.inr ()) c = (1 : Matrix (Fin r ⊕ Unit) (Fin r ⊕ Unit) (↥LL.1)⟦X⟧) (Sum.inr ()) c :=
    fun i c => by
      have h := congrFun (congrFun (hGU i) (Sum.inr ())) c
      have h0 := congrFun (congrFun (hU0 i) (Sum.inr ())) c
      rw [Matrix.map_apply] at h0
      rw [eq_C_of_fixed s u hs h2 hu (U i (Sum.inr ()) c) (by simpa [blk, Matrix.mul_apply] using h), h0,
        Matrix.one_apply, Matrix.one_apply]
      split_ifs
      exacts [map_one _, map_zero _]
  choose B hB using fun i => block_relation (act l ↥LL.1 u) (phi l ↥LL.1) ((G i).map ι) ((G (i - 1)).map ι)
    ((P i).map ι) ((P' i).map ι) (fun j => ι (y i j)) (fun j => ι (z i j)) (fun j => ι (z (i - 1) j))
    (QQ l ↥LL.1 s) (ι Λ) (τ ^ (m + J.card)) (QQ l ↥LL.1 s ^ J.card * C ((l : ↥LL.1)⁻¹) ^ (m + J.card))
    (b * τ ^ m) m k (U i) (U (i - 1)) (V i) (V (i - 1)) (hU i) (hUV i) (hUV (i - 1)) (hGU (i - 1))
    (isUnit_QQ s hs) hΛu (fun a => act_comm' l _ _ _ a)
    (by
      ext1 a c
      have h := congrArg ι (congrFun (congrFun (hP i) a) c)
      rw [← Matrix.map_mul, Matrix.map_apply, h, Matrix.smul_apply, Matrix.smul_apply, smul_eq_mul, smul_eq_mul,
        map_mul, map_pow, hQ, Matrix.one_apply, Matrix.one_apply, apply_ite ι, map_one, map_zero])
    (by
      ext1 a c
      have h := congrArg ι (congrFun (congrFun (hGP i) a) c)

      simpa only [Matrix.smul_apply, smul_eq_mul, Matrix.mul_apply, Matrix.map_apply, map_mul, map_pow, map_sum,
      hact, hphi, hQ] using h)
    (by
      funext a
      have h := congrArg ι (congrFun (hy i) a)

      simpa only [Pi.smul_apply, Pi.sub_apply, smul_eq_mul, Matrix.mulVec, dotProduct, Matrix.map_apply, map_mul,
      map_pow, map_sum, map_sub, hact, hphi, hQ] using h)
    (by rw [← mul_assoc, ← pow_add, map_pow, ← mul_pow, ← mul_pow, tau_eq s hs τ hτ])
    (by rw [← mul_assoc, hbΛ, ← pow_add, add_comm])
  have hrow : ∀ i a c, (blk ((τ ^ (m + J.card)) • (1 : Matrix (Fin r) (Fin r) (↥LL.1)⟦X⟧)) 0 * U i) (Sum.inl a) c =
      τ ^ (m + J.card) * U i (Sum.inl a) c := fun i a c => by
    simp [blk, Matrix.mul_apply, Matrix.one_apply]
  have key := continuation_abstract (phi l ↥LL.1) (phi_X_const l _) _ (inv_lt_one l) (bd_phi_X l LL)
    (fun i : ZMod n => i - 1) _ _ _
    (fun x hx hx1 i a c => bded_blk _ _ (fun _ _ => ((hQb.pow _).mul ((bded_C _).pow _)).mul (bded_map _))
      (fun _ => (hb.mul (hτb.pow _)).mul (bded_map _)) a c x hx hx1)
    (fun x _ _ i a c => ⟨_, bd_C x _⟩) hB ρ hρ
    (fun i a c => by
      rcases a with a | a
      · rw [hrow]
        exact ex_mul hρ (hτb.pow _ ρ hρ hρ1) (hbd i _ _)
      · simpa [blk, Matrix.mul_apply] using hbd i (Sum.inr ()) c)
  refine ⟨fun i j => -U i (Sum.inl j) (Sum.inr ()), fun i j => ?_, fun i j => ?_, fun i => ?_⟩
  · have h0 := congrFun (congrFun (hU0 i) (Sum.inl j)) (Sum.inr ())
    rw [Matrix.map_apply, Matrix.one_apply_ne Sum.inl_ne_inr] at h0
    rw [map_neg, h0, neg_zero]
  · rw [mul_neg, ← hτ, mul_pow, mul_assoc, ← hrow]
    exact conv_neg (conv_XX_pow_mul s _ (Bded.conv fun x hx hx1 => key x hx hx1 i _ _))
  · funext j
    have h := congrFun (congrFun (hGU i) (Sum.inl j)) (Sum.inr ())
    simp only [blk, Matrix.mul_apply, Fintype.sum_sum_type, Finset.univ_unique, Finset.sum_singleton,
      Matrix.map_apply, PUnit.default_eq_unit, hlast, Matrix.one_apply_eq, map_one, mul_one,
      Matrix.fromBlocks_apply₁₁, Matrix.fromBlocks_apply₁₂, Matrix.of_apply] at h
    simp only [Pi.sub_apply, Matrix.mulVec, dotProduct, map_neg, mul_neg, Finset.sum_neg_distrib, Matrix.map_apply]
    linear_combination -h

theorem letφ_pow_const {O : Type} [CommRing O] {n : ℕ} (φ : O⟦X⟧ →ₐ[O] O⟦X⟧) (q : O⟦X⟧) (j : ℕ) :
    (letφ (n := n) φ ^ j) (fun _ => q) = fun _ => (φ ^ j) q := by
  induction j with
  | zero => rfl
  | succ j ih => rw [pow_succ', pow_succ', AlgHom.mul_apply, AlgHom.mul_apply, ih]; rfl

theorem mulVec_letter {O : Type} [CommRing O] {r n : ℕ} (M : Matrix (Fin r) (Fin r) (LetA O n))
    (v : Fin r → LetA O n) (i : Fin r) (k : ZMod n) :
    M.mulVec v i k = (M.map (· k)).mulVec (fun j => v j k) i := by
  simp [Matrix.mulVec, dotProduct, Finset.sum_apply]

theorem const_of_mem {O : Type} [CommRing O] {n : ℕ} {a : LetA O n} (h : a ∈ Ideal.span {(letπ : LetA O n)})
    (k : ZMod n) : constantCoeff (a k) = 0 := by
  obtain ⟨b, rfl⟩ := Ideal.mem_span_singleton.1 h
  simp [letπ]



theorem over_letters (s r n m k : ℕ) [NeZero n] (hs : 1 ≤ s) (h2 : l = 2 → 2 ≤ s) (u : ℤ_[l]ˣ)
    (hu : ‖(u : ℤ_[l]) - 1‖ = (l : ℝ) ^ (-(s : ℤ))) (J : Multiset ℕ) (Q Λ : LetA ↥(OL LL) n)
    (hQ : Q = fun _ => QQ l ↥(OL LL) s) (hΛ : Λ = (J.map fun j => (letφ (phi l ↥(OL LL)) ^ j) Q).prod)
    (G P P' : Matrix (Fin r) (Fin r) (LetA ↥(OL LL) n)) (y z : Fin r → LetA ↥(OL LL) n)
    (hG : ∀ i j, (G - 1) i j ∈ Ideal.span {(letπ : LetA ↥(OL LL) n)})
    (hP : P * P' = Q ^ k • (1 : Matrix (Fin r) (Fin r) (LetA ↥(OL LL) n)))
    (hGP : letγ (act l ↥(OL LL) u) Q ^ m • (P * G.map (letφ (phi l ↥(OL LL)))) =
      Q ^ m • (G * P.map (letγ (act l ↥(OL LL) u))))
    (hz : ∀ j, z j ∈ Ideal.span {(letπ : LetA ↥(OL LL) n)})
    (hy : (Q ^ m * Λ) • G.mulVec (fun j => letγ (act l ↥(OL LL) u) (y j)) - (Q ^ m * letγ (act l ↥(OL LL) u) Λ) • y =
      (Λ * letγ (act l ↥(OL LL) u) Λ) • (P.mulVec (fun j => letφ (phi l ↥(OL LL)) (z j)) - Q ^ m • z)) :
    ∃ w : Fin r → LetA ↥LL.1 n, (∀ j i, constantCoeff (w j i) = 0) ∧
      (∀ j i, Conv (logS LL ^ (m + J.card) * w j i)) ∧
      (G.map toLL).mulVec (fun j i => act l ↥LL.1 u (w j i)) - w = fun j => toLL (z j) := by
  have hΛ' : Λ = fun _ => (J.map fun j => (phi l ↥(OL LL) ^ j) (QQ l ↥(OL LL) s)).prod := by
    rw [hΛ, hQ]
    simp only [letφ_pow_const]
    funext i
    rw [Pi.multiset_prod_apply, Multiset.map_map]
    rfl
  obtain ⟨w, h0, hc, hw⟩ := letterwise (LL := LL) s r n m k hs h2 u hu J _ rfl (fun i => G.map (· i))
    (fun i => P.map (· i)) (fun i => P'.map (· i)) (fun i j => y j i) (fun i j => z j i)
    (fun i => by
      ext1 a c
      have h := const_of_mem (hG a c) i
      rw [Matrix.sub_apply, Pi.sub_apply, map_sub, sub_eq_zero, ← one_letter] at h
      rw [Matrix.map_apply, Matrix.map_apply, h, Matrix.one_apply, Matrix.one_apply]
      split_ifs
      exacts [map_one _, map_zero _])
    (fun i j => const_of_mem (hz j) i)
    (fun i => by
      ext1 a c
      have h := congrFun (congrFun (congrFun hP a) c) i
      rw [mul_letter, hQ] at h
      rw [h, Matrix.smul_apply, Matrix.smul_apply, one_letter a c i]
      rfl)
    (fun i => by
      ext1 a c
      have h := congrFun (congrFun (congrFun hGP a) c) i
      simp only [Matrix.smul_apply, smul_eq_mul, Pi.mul_apply, Pi.pow_apply] at h ⊢
      rw [mul_letter, mul_letter, hQ] at h
      exact h)
    (fun i => by
      funext a
      have h' := congrFun hy a
      simp only [Pi.smul_apply, Pi.sub_apply, smul_eq_mul] at h' ⊢
      have h := congrFun h' i
      simp only [Pi.sub_apply, Pi.mul_apply, Pi.pow_apply] at h
      rw [mulVec_letter, mulVec_letter, hQ, hΛ'] at h
      exact h)
  refine ⟨fun j i => w i j, fun j i => h0 i j, fun j i => hc i j, ?_⟩
  funext j i
  rw [Pi.sub_apply, Pi.sub_apply, mulVec_letter]
  exact congrFun (hw i) j

end GlobalTheory.NL.WCont

namespace GlobalTheory.NL

open WCont GlobalTheory.HWL.InvCont



theorem exists_cocycle_solution_conv : ∀ (D : Formalism.BasicNotions.D7) (HW : HWOf D.loc) (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL), let W := (HW l).W K s LL h; ∀ (r m k : ℕ) (J : Multiset ℕ) (G Pm Pm' : Matrix (Fin r) (Fin r) (AA K LL)) (y z : Fin r → AA K LL), let Λ : AA K LL := (J.map fun j => (W.φA ^ j) W.Q).prod; let γL : LetA ↥LL.1 (Module.finrank ℚ_[l] ↥(K0 K)) → LetA ↥LL.1 (Module.finrank ℚ_[l] ↥(K0 K)) := fun a i => PowerSeries.subst (PowerSeries.map (algebraMap ↥(OL LL) ↥LL.1) (W.γ₀ W.gam PowerSeries.X)) (a i); (∀ i j, (G - 1) i j ∈ Ideal.span {(letπ : AA K LL)}) → Pm * Pm' = (W.Q ^ k) • (1 : Matrix (Fin r) (Fin r) (AA K LL)) → (W.γA W.gam W.Q ^ m) • (Pm * G.map W.φA) = (W.Q ^ m) • (G * Pm.map (W.γA W.gam)) → (∀ j, z j ∈ Ideal.span {(letπ : AA K LL)}) → (W.Q ^ m * Λ) • G.mulVec (fun j => W.γA W.gam (y j)) - (W.Q ^ m * W.γA W.gam Λ) • y = (Λ * W.γA W.gam Λ) • (Pm.mulVec (fun j => W.φA (z j)) - (W.Q ^ m) • z) → ∃ (w : Fin r → LetA ↥LL.1 (Module.finrank ℚ_[l] ↥(K0 K))) (p : ℕ), (∀ j i, PowerSeries.constantCoeff (w j i) = 0) ∧ (∀ j i, GlobalTheory.HWL.Conv (GlobalTheory.HWL.logS LL ^ p * w j i)) ∧ (G.map GlobalTheory.HWL.toLL).mulVec (fun j => γL (w j)) - w = fun j => GlobalTheory.HWL.toLL (z j) := by
  intro D HW l _ K s LL h W r m k J G Pm Pm' y z Λ γL hG hP hGP hz hy
  haveI : FiniteDimensional ℚ_[l] ↥K.1 := K.2
  have hle : K0 K ≤ K.1 := inf_le_left
  haveI : FiniteDimensional ℚ_[l] ↥(K0 K) := FiniteDimensional.of_injective
    (IntermediateField.inclusion hle).toLinearMap (IntermediateField.inclusion_injective hle)
  haveI : NeZero (Module.finrank ℚ_[l] ↥(K0 K)) := ⟨Module.finrank_pos.ne'⟩
  obtain ⟨χ, -, hφ, hγ, -, hQ, hu, -⟩ := GlobalTheory.NL.CycRing.rings_cyclotomic D HW l K s LL h
  have eφ : W.φA = letφ (phi l ↥(OL LL)) := congrArg letφ hφ
  have eγ : W.γA W.gam = letγ (act l ↥(OL LL) (χ W.gam : ℤ_[l])) := congrArg letγ (hγ _)
  have eL : γL = fun a i => act l ↥LL.1 (χ W.gam : ℤ_[l]) (a i) := by
    funext a i
    change PowerSeries.subst (PowerSeries.map _ (W.γ₀ W.gam X)) _ = _
    rw [show W.γ₀ W.gam = _ from hγ _, act_X, map_cyc, act_apply]
  rw [eγ, eφ] at hGP hy
  obtain ⟨w, h0, hc, hw⟩ := over_letters s r _ m k h.1 h.2.1 (χ W.gam) hu J W.Q Λ (funext hQ) (by rw [← eφ])
    G Pm Pm' y z hG hP hGP hz hy
  exact ⟨w, _, h0, hc, by rw [eL]; exact hw⟩

end GlobalTheory.NL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCocycleSolutionConv =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HerrCocyclePolesFrobeniusQCrystalline =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HerrCocyclePolesFrobeniusQCrystalline", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ApplyLayers\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsWachModulePeriodMapToBcris\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ChiGamPowNeOne\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCocycleSolutionConv\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobeniusSubOneWittTensorLatticeSurjectiveFixed\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MapMulLeft\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemRangeOfFrob\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NBasisLoc\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ZgFormula\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CyclotomicPowerSeriesDataLevIsExpansionAtZeta\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBeta\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsEvaluationConvergentSeriesBcris\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsOpenDiscConvergentRingWithExpansions\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsWachLatticeMatricesGammaPhi\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocAinfUntiltEpsOneEqZeta\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MaxUnramifiedActsOnLetterIdempotentImage\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachInclusionXQFrobenius\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL Formalism.MainNotions.DeltaInvariantLattices GlobalTheory.HWL GlobalTheory.HWL.Cmp GlobalTheory.HWL.Cmp.PerMap

namespace GlobalTheory.NL.PoleCrys

section Algebra


open PowerSeries in
theorem eq_zero_of_fixed {L ι : Type} [Field L] [Fintype ι] [DecidableEq ι] (γ : L⟦X⟧ →ₐ[L] L⟦X⟧)
    (h0 : constantCoeff (γ X) = 0) (hu : ∀ k : ℕ, 0 < k → coeff 1 (γ X) ^ k ≠ 1) (G : ι → ι → L⟦X⟧)
    (hG : ∀ i j, constantCoeff (G i j) = if i = j then 1 else 0) (d : ι → L⟦X⟧)
    (hd0 : ∀ i, constantCoeff (d i) = 0) (hd : ∀ i, ∑ j, G i j * γ (d j) = d i) (i : ι) : d i = 0 := by
  obtain ⟨z, hz⟩ : (X : L⟦X⟧) ∣ γ X := X_dvd_iff.mpr h0
  have h1 : coeff 1 (γ X) = constantCoeff z := by
    rw [hz]; simp [coeff_succ_X_mul]
  have key : ∀ k : ℕ, ∀ i, (X : L⟦X⟧) ^ (k + 1) ∣ d i := by
    intro k
    induction k with
    | zero => intro i; simpa using X_dvd_iff.mpr (hd0 i)
    | succ k ih =>
      choose e he using ih
      intro i
      have h2 : ∑ j, G i j * (z ^ (k + 1) * γ (e j)) = e i := by
        apply mul_left_cancel₀ (pow_ne_zero (k + 1) (X_ne_zero (R := L)))
        rw [← he i, ← hd i, Finset.mul_sum]
        refine Finset.sum_congr rfl fun j _ => ?_
        rw [he j, map_mul, map_pow, hz]
        ring
      have h3 := congrArg constantCoeff h2

      simp only [map_sum, map_mul, map_pow, hG, _root_.GlobalTheory.Cyc.constantCoeff_algHom γ h0, ite_mul, one_mul, zero_mul,
      Finset.sum_ite_eq, Finset.mem_univ, if_true] at h3
      have h4 : constantCoeff (e i) = 0 := by
        have : constantCoeff (e i) * (constantCoeff z ^ (k + 1) - 1) = 0 := by linear_combination h3
        exact (mul_eq_zero.mp this).resolve_right (sub_ne_zero.mpr (h1 ▸ hu (k + 1) k.succ_pos))
      rw [he i, pow_succ _ (k + 1)]
      exact mul_dvd_mul_left _ (X_dvd_iff.mpr h4)
  ext k
  exact X_pow_dvd_iff.mp (key k i) k k.lt_succ_self

theorem semi_coord {A M ι : Type} [CommRing A] [AddCommGroup M] [Module A M] [Fintype ι] (σ : A → A) (f : M →+ M)
    (hf : ∀ a x, f (a • x) = σ a • f x) (e : ι → M) (q : A) (H : Matrix ι ι A)
    (hH : ∀ j, q • f (e j) = ∑ i, H i j • e i) (c : ι → A) :
    q • f (Fintype.linearCombination A e c) = Fintype.linearCombination A e (H.mulVec fun j => σ (c j)) := by

  simp only [Fintype.linearCombination_apply, map_sum, hf, Finset.smul_sum, Matrix.mulVec, dotProduct,
  Finset.sum_smul]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [smul_comm, hH, Finset.smul_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [smul_smul, mul_comm]

theorem fixed_diff {A ι : Type} [CommRing A] [Fintype ι] (γ σ : A →+* A) (hc : ∀ a, γ (σ a) = σ (γ a))
    (G H : Matrix ι ι A) (hGH : G * H.map γ = H * G.map σ) (w z z' : ι → A)
    (hw : G.mulVec (fun j => γ (w j)) - w = z)
    (hz : G.mulVec (fun j => γ (z' j)) - z' = H.mulVec (fun j => σ (z j)) - z) :
    G.mulVec (fun j => γ ((H.mulVec (fun j => σ (w j)) - w - z') j)) = H.mulVec (fun j => σ (w j)) - w - z' := by
  have e1 : (fun j => γ ((H.mulVec (fun j => σ (w j)) - w - z') j)) =
      (H.map γ).mulVec (fun j => σ (γ (w j))) - (fun j => γ (w j)) - fun j => γ (z' j) := by
    funext i
    simp [Matrix.mulVec, dotProduct, hc]
  have e2 : (G.map σ).mulVec (fun j => σ (γ (w j))) = (fun j => σ (w j)) + fun j => σ (z j) := by
    funext i
    rw [← hw]
    simp [Matrix.mulVec, dotProduct]
  rw [e1, Matrix.mulVec_sub, Matrix.mulVec_sub, Matrix.mulVec_mulVec, hGH, ← Matrix.mulVec_mulVec, e2,
    Matrix.mulVec_add]
  linear_combination (-1 : ι → A) * hw - hz

theorem div_unit {S M ι : Type} [CommRing S] [AddCommGroup M] [Module S M] [Fintype ι] (σ : S →+* S) (γ : M →+ M)
    (hγ : ∀ s m, γ (s • m) = σ s • γ m) (v : ι → M) (G : ι → ι → S) (hv : ∀ j, γ (v j) = ∑ i, G i j • v i)
    (τ : S) (hτ : IsUnit τ) (a z : ι → S) (h : ∀ i, τ * ∑ j, G i j * σ (a j) = σ τ * (a i + τ * z i))
    (w : M) (hw : τ • w = ∑ j, a j • v j) : γ w - w = ∑ i, z i • v i := by
  have h1 := semi_coord σ γ hγ v 1 (Matrix.of G) (fun j => by rw [one_smul, hv]; rfl) a
  rw [one_smul, Fintype.linearCombination_apply, ← hw, hγ, Fintype.linearCombination_apply] at h1
  apply ((hτ.mul (hτ.map σ)).smul_left_cancel).mp
  rw [smul_sub, mul_smul, h1, mul_comm, mul_smul, hw, Finset.smul_sum, Finset.smul_sum, Finset.smul_sum,
    ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [smul_smul, smul_smul, smul_smul, ← sub_smul]
  congr 1
  have := h i
  simp only [Matrix.mulVec, dotProduct, Matrix.of_apply]
  linear_combination this

end Algebra

section Layers

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL]
    [CommRing O] [Algebra O LL] [TopologicalSpace LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    {s : ℕ} {Γ : WGam PD LL O v n s} {R : WSer Γ}

theorem constantCoeff_γX (R : WSer Γ) (g : Γ.Gam) :
    PowerSeries.constantCoeff (PowerSeries.map (algebraMap O LL) (R.γ₀ g PowerSeries.X)) = 0 := by
  rw [← PowerSeries.coeff_zero_eq_constantCoeff_apply, PowerSeries.coeff_map,
    PowerSeries.coeff_zero_eq_constantCoeff_apply, (R.γ₀_X g).1, map_zero]

theorem γL_comm (R : WSer Γ) (g h : Γ.Gam) (a : LetA LL n) : γL R g (γL R h a) = γL R h (γL R g a) := by
  have key : ∀ g h : Γ.Gam, PowerSeries.substAlgHom (hasSubst_γ R g)
      ((PowerSeries.substAlgHom (hasSubst_γ R h) : PowerSeries LL →ₐ[LL] PowerSeries LL) PowerSeries.X) =
      PowerSeries.map (algebraMap O LL) (R.γ₀ (g * h) PowerSeries.X) := by
    intro g h
    rw [PowerSeries.substAlgHom_X, map_mul, AlgHom.mul_apply]
    exact (map_algHom_eq (R.γ₀ g) (hasSubst_γ R g) (constantCoeff_γX R g) rfl _).symm
  funext k
  refine ringHom_ext_of_X
    ((PowerSeries.substAlgHom (hasSubst_γ R g) : PowerSeries LL →ₐ[LL] PowerSeries LL).comp
      (PowerSeries.substAlgHom (hasSubst_γ R h))).toRingHom
    ((PowerSeries.substAlgHom (hasSubst_γ R h) : PowerSeries LL →ₐ[LL] PowerSeries LL).comp
      (PowerSeries.substAlgHom (hasSubst_γ R g))).toRingHom (fun c => ?_) ?_ ?_ (a k)
  · exact (AlgHom.commutes _ c).trans (AlgHom.commutes _ c).symm
  · exact (key g h).trans ((congrArg (fun x => PowerSeries.map (algebraMap O LL) (R.γ₀ x PowerSeries.X))
      (mul_comm g h)).trans (key h g).symm)
  · exact (congrArg PowerSeries.constantCoeff (key g h)).trans (constantCoeff_γX R _)

theorem coord_eq (hu : ∀ k : ℕ, 0 < k → algebraMap O LL (Γ.χΓ Γ.gam : O) ^ k ≠ 1) {ι : Type} [Fintype ι]
    [DecidableEq ι] (Gm : Γ.Gam → Matrix ι ι (LetA O n))
    (h1 : ∀ g h, Gm (g * h) = Gm g * (Gm h).map (letγ (R.γ₀ g)))
    (h2 : ∀ g i j k, PowerSeries.constantCoeff (Gm g i j k) = if i = j then 1 else 0)
    (z z' : ι → LetA O n) (w : ι → LetA LL n) (hw0 : ∀ j i, PowerSeries.constantCoeff (w j i) = 0)
    (hw : ((Gm Γ.gam).map (toL O LL n)).mulVec (fun j => γL R Γ.gam (w j)) - w = fun j => toL O LL n (z j))
    (g : Γ.Gam) (hz0 : ∀ j i, PowerSeries.constantCoeff (z' j i) = 0)
    (hz : (Gm Γ.gam).mulVec (fun j => letγ (R.γ₀ Γ.gam) (z' j)) - z' =
      (Gm g).mulVec (fun j => letγ (R.γ₀ g) (z j)) - z) :
    ((Gm g).map (toL O LL n)).mulVec (fun j => γL R g (w j)) = w + fun j => toL O LL n (z' j) := by
  have hm : ∀ g h, ((Gm (g * h)).map (toL O LL n)) =
      (Gm g).map (toL O LL n) * ((Gm h).map (toL O LL n)).map (γL R g).toRingHom := by
    intro g h
    rw [h1, Matrix.map_mul]
    congr 1
    ext1 i j
    exact toL_γ R g _
  have hv : ∀ g (c : ι → LetA O n), ((Gm g).map (toL O LL n)).mulVec (fun j => γL R g (toL O LL n (c j))) =
      fun i => toL O LL n ((Gm g).mulVec (fun j => letγ (R.γ₀ g) (c j)) i) := by
    intro g c
    funext i

    simp only [Matrix.mulVec, dotProduct, map_sum, map_mul, toL_γ, Matrix.map_apply]
  have hf := fixed_diff (γL R Γ.gam).toRingHom (γL R g).toRingHom (γL_comm R _ _) ((Gm Γ.gam).map (toL O LL n))
    ((Gm g).map (toL O LL n)) (by rw [← hm, ← hm, mul_comm]) w (fun j => toL O LL n (z j))
    (fun j => toL O LL n (z' j)) hw (by
      refine (congrArg (· - _) (hv _ _)).trans (Eq.trans ?_ (congrArg (· - _) (hv _ _)).symm)
      funext i
      have := congrArg (toL O LL n) (congrFun hz i)
      simpa only [Pi.sub_apply, map_sub] using this)
  have hc : ∀ a : PowerSeries O, PowerSeries.constantCoeff (PowerSeries.map (algebraMap O LL) a) =
      algebraMap O LL (PowerSeries.constantCoeff a) := fun a => by
    rw [← PowerSeries.coeff_zero_eq_constantCoeff_apply, PowerSeries.coeff_map,
      PowerSeries.coeff_zero_eq_constantCoeff_apply]
  have hX : ∀ g, PowerSeries.constantCoeff
      ((PowerSeries.substAlgHom (hasSubst_γ R g) : PowerSeries LL →ₐ[LL] PowerSeries LL) PowerSeries.X) = 0 :=
    fun g => by rw [PowerSeries.substAlgHom_X]; exact constantCoeff_γX R g
  rw [← sub_eq_zero, ← sub_sub]
  funext i k
  refine eq_zero_of_fixed (PowerSeries.substAlgHom (hasSubst_γ R Γ.gam)) (hX _) (fun m hm => ?_)
    (fun i j => toL O LL n (Gm Γ.gam i j) k) (fun i j => ?_)
    (fun i => ((((Gm g).map (toL O LL n)).mulVec (fun j => γL R g (w j)) - w - fun j => toL O LL n (z' j)) i) k)
    (fun i => ?_) (fun i => ?_) i
  · rw [PowerSeries.substAlgHom_X, PowerSeries.coeff_map, (R.γ₀_X _).2]
    exact hu m hm
  · refine (hc (Gm Γ.gam i j k)).trans ?_
    rw [h2]
    split_ifs <;> simp
  · have e1 : PowerSeries.constantCoeff (toL O LL n (z' i) k) = 0 := (hc (z' i k)).trans (by rw [hz0, map_zero])
    have e2 : ∀ j, PowerSeries.constantCoeff (γL R g (w j) k) = 0 := fun j =>
      (_root_.GlobalTheory.Cyc.constantCoeff_algHom _ (hX g) _).trans (hw0 j k)

    simp only [Matrix.mulVec, dotProduct, Pi.sub_apply, Finset.sum_apply, Pi.mul_apply, map_sub, map_sum, map_mul,
    e1, e2, hw0, mul_zero, Finset.sum_const_zero, sub_zero]
  · have := congrFun (congrFun hf i) k
    rw [Matrix.mulVec, dotProduct, Finset.sum_apply] at this
    exact this

variable {RA RW : Type} [CommRing RA] [CommRing RW] [Algebra O RA] [Algebra O RW]
    {β : RA →+* LL ⊗[Qp] B} {hβ : ∀ (o : O) (r : RA), β (o • r) = algebraMap O LL o • β r}
    {inclR : RA →ₐ[O] RW}

theorem val_zero (T : LocLat G Qp LL O) : Val β hβ inclR T 0 0 :=
  ⟨1, 0, by simp, by simp, by simp⟩

theorem val_sum {T : LocLat G Qp LL O} {ι : Type} (S : Finset ι) (j : ι → TW RW T) (z : ι → T.V ⊗[Qp] B)
    (h : ∀ i, Val β hβ inclR T (j i) (z i)) : Val β hβ inclR T (∑ i ∈ S, j i) (∑ i ∈ S, z i) := by
  classical
  induction S using Finset.induction_on with
  | empty => simpa using val_zero T
  | insert a S ha ih => rw [Finset.sum_insert ha, Finset.sum_insert ha]; exact (h a).add ih

theorem val_tmul {T : LocLat G Qp LL O} (t : ↥T.L.T) :
    Val β hβ inclR T ((1 : RW) ⊗ₜ[O] t) ((t : T.V) ⊗ₜ[Qp] (1 : B)) :=
  ⟨1, (1 : RA) ⊗ₜ[O] t, by simp, by simp [TWincl], βB_tmul β hβ T 1 t⟩

variable {φR : RW →ₐ[O] RW} {gR : G → (RW →ₐ[O] RW)} {πA : RA} {I : WIo R RA RW inclR φR gR πA} (E : WEt I)

theorem γD_smulA (T : LocLat G Qp LL O) (g : Γ.Gam) (a : LetA O n) (x : E.DD T) :
    E.γD T g (a • x) = letγ (R.γ₀ g) a • E.γD T g x := by
  rw [← algebraMap_smul R.EE a x, E.γD_smul, R.γE_ext, algebraMap_smul]

alias φD_smulA := _root_.GlobalTheory.HWL.SandProof.φD_smulA

theorem exists_val (hinj : Function.Injective inclR) (gA : G → (RA →ₐ[O] RA))
    (hg1 : ∀ g r, inclR (gA g r) = gR g (inclR r))
    (hg2 : ∀ g r, β (gA g r) =
      Algebra.TensorProduct.map (AlgHom.id Qp LL) ((PD.actB g).toAlgHom.restrictScalars Qp) (β r))
    {tS zS : BdR} (Dc : Disc R (β.comp I.io.toRingHom) tS zS) (T : LocLat G Qp LL O) {ι : Type} [Fintype ι]
    (e : ι → E.DD T) (he : ∀ j, ∃ x, Val β hβ inclR T (E.jD T (e j)) x) (Gm : Γ.Gam → Matrix ι ι (LetA O n))
    (h5 : ∀ g j, E.γD T g (e j) = ∑ i, Gm g i j • e i) (w : ι → LetA LL n) (p : ℕ)
    (hC : ∀ j, (Dc.t : LetA LL n) ^ p * w j ∈ Dc.C) :
    ∃ w' : T.V ⊗[Qp] B, ∀ (g : G) (z' : ι → LetA O n),
      (((Gm (Γ.resΓ g)).map (toL O LL n)).mulVec (fun j => γL R (Γ.resΓ g) (w j)) =
        w + fun j => toL O LL n (z' j)) →
      Val β hβ inclR T (E.jD T (∑ i, z' i • e i)) (actVB PD T.ρ g w' - w') := by
  choose x hx using he
  have hval : ∀ c : ι → LetA O n, Val β hβ inclR T (E.jD T (∑ i, c i • e i))
      (∑ i, actS T.V B (β (I.io (c i))) (x i)) := by
    intro c

    rw [map_sum]
    refine val_sum _ _ _ fun i => ?_
    rw [_root_.GlobalTheory.HWL.SandProof.jD_smulA]
    exact (hx i).smul _
  let a : ι → ↥Dc.C := fun j => ⟨_, hC j⟩
  have hτ : IsUnit (Dc.J Dc.t ^ p) := by
    rw [Dc.periodDiscJ_tateElement]
    exact (Dc.tb_unit.map (Algebra.TensorProduct.includeRight : B →ₐ[Qp] LL ⊗[Qp] B)).pow p
  obtain ⟨w', hw'⟩ := ((Module.End.isUnit_iff _).mp (hτ.map (actS T.V B))).2
    (∑ j, actS T.V B (Dc.J (a j)) (x j))
  refine ⟨w', fun g z' hz => ?_⟩
  letI : Module (LL ⊗[Qp] B) (T.V ⊗[Qp] B) := Module.compHom _ (actS (LL := LL) T.V B).toRingHom
  have key := div_unit
    (Algebra.TensorProduct.map (AlgHom.id Qp LL) ((PD.actB g).toAlgHom.restrictScalars Qp)).toRingHom
    (actVB PD T.ρ g).toAddMonoidHom
    (fun s m => map_actS (T.ρ g) ((PD.actB g).toAlgHom.restrictScalars Qp) s m) x
    (fun i j => β (I.io (Gm (Γ.resΓ g) i j))) (fun j => by
      refine Val.unique hinj ?_ (hval fun i => Gm (Γ.resΓ g) i j)
      rw [← h5, E.jD_act]
      exact Val.map (T.ρ g) (T.actT g) (fun _ => rfl) (gA g) (gR g) _ (hg1 g) (hg2 g) (hx j))
    (Dc.J Dc.t ^ p) hτ (fun j => Dc.J (a j)) (fun i => β (I.io (z' i))) (fun i => by
      have e1 : Dc.t ^ p * ∑ j, (⟨_, Dc.toL_mem (Gm (Γ.resΓ g) i j)⟩ : ↥Dc.C) *
            ⟨γL R (Γ.resΓ g) (a j), Dc.γ_mem _ _ (a j).2⟩ =
          (⟨γL R (Γ.resΓ g) Dc.t, Dc.γ_mem _ _ Dc.t.2⟩ : ↥Dc.C) ^ p *
            (a i + Dc.t ^ p * ⟨_, Dc.toL_mem (z' i)⟩) := by
        apply Subtype.ext
        have h := congrFun hz i
        simp only [Matrix.mulVec, dotProduct, Matrix.map_apply, Pi.add_apply] at h
        have h' : ∑ j, toL O LL n (Gm (Γ.resΓ g) i j) * γL R (Γ.resΓ g) ((Dc.t : LetA LL n) ^ p * w j) =
            γL R (Γ.resΓ g) Dc.t ^ p * (w i + toL O LL n (z' i)) := by
          rw [← h, Finset.mul_sum]
          refine Finset.sum_congr rfl fun j _ => ?_
          rw [map_mul, map_pow]
          ring
        simp only [MulMemClass.coe_mul, SubmonoidClass.coe_pow, AddSubmonoidClass.coe_finsetSum,
          AddMemClass.coe_add, a, h']
        ring
      have e2 := congrArg Dc.J e1

      simp only [map_mul, map_pow, map_sum, map_add (f := _), Dc.J_toL, Dc.J_γ] at e2
      rw [map_pow]
      exact e2) w' hw'
  have key' : actVB PD T.ρ g w' - w' = ∑ i, actS T.V B (β (I.io (z' i))) (x i) := key
  rw [key']
  exact hval z'

theorem mem_span_letπ {a : LetA O n} (h : ∀ k, PowerSeries.constantCoeff (a k) = 0) :
    a ∈ Ideal.span {(letπ : LetA O n)} := by
  choose b hb using fun k => PowerSeries.X_dvd_iff.mpr (h k)
  exact Ideal.mem_span_singleton.mpr ⟨b, funext hb⟩

end Layers

section Core

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL]
    [CommRing O] [Algebra O LL] [TopologicalSpace LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    {s : ℕ} {Γ : WGam PD LL O v n s} {R : WSer Γ}
    {Zl Ai : Type} [CommRing Zl] [CommRing Ai] [Algebra Zl O] [Algebra Zl Ai]
    {RW : Type} [CommRing RW] [Algebra O RW]
    {inclR : (O ⊗[Zl] Ai) →ₐ[O] RW} {φR : RW →ₐ[O] RW} {gR : G → (RW →ₐ[O] RW)} {πA : O ⊗[Zl] Ai}
    {I : WIo R (O ⊗[Zl] Ai) RW inclR φR gR πA} {E : WEt I} {zl : PowerSeries Zl →+* LetA O n}
    {β : O ⊗[Zl] Ai →+* LL ⊗[Qp] B} {hβ : ∀ (o : O) (r : O ⊗[Zl] Ai), β (o • r) = algebraMap O LL o • β r}

def Solvable (γ φ : LetA O n →ₐ[O] LetA O n) (γ' : LetA LL n → LetA LL n) (Q Λ : LetA O n)
    (C : Set (LetA LL n)) (t : LetA LL n) (r : ℕ) : Prop :=
  ∀ (m k : ℕ) (H Pm Pm' : Matrix (Fin r) (Fin r) (LetA O n)) (y z : Fin r → LetA O n),
    (∀ i j, (H - 1) i j ∈ Ideal.span {(letπ : LetA O n)}) →
    Pm * Pm' = (Q ^ k) • (1 : Matrix (Fin r) (Fin r) (LetA O n)) →
    (γ Q ^ m) • (Pm * H.map φ) = (Q ^ m) • (H * Pm.map γ) → (∀ j, z j ∈ Ideal.span {(letπ : LetA O n)}) →
    (Q ^ m * Λ) • H.mulVec (fun j => γ (y j)) - (Q ^ m * γ Λ) • y =
      (Λ * γ Λ) • (Pm.mulVec (fun j => φ (z j)) - (Q ^ m) • z) →
    ∃ (w : Fin r → LetA LL n) (p : ℕ), (∀ j i, PowerSeries.constantCoeff (w j i) = 0) ∧ (∀ j, t ^ p * w j ∈ C) ∧
      (H.map (toL O LL n)).mulVec (fun j => γ' (w j)) - w = fun j => toL O LL n (z j)

theorem core (Mo : WN E zl) (hinj : Function.Injective inclR) (gA : G → (O ⊗[Zl] Ai →ₐ[O] O ⊗[Zl] Ai))
    (hg1 : ∀ g r, inclR (gA g r) = gR g (inclR r))
    (hg2 : ∀ g r, β (gA g r) =
      Algebra.TensorProduct.map (AlgHom.id Qp LL) ((PD.actB g).toAlgHom.restrictScalars Qp) (β r))
    {tS zS : BdR} (Dc : Disc R (β.comp I.io.toRingHom) tS zS)
    (hu : ∀ k : ℕ, 0 < k → algebraMap O LL (Γ.χΓ Γ.gam : O) ^ k ≠ 1) (T : LocLat G Qp LL O) {r : ℕ}
    (nb : Module.Basis (Fin r) (LetA O n) ↥(Mo.N T))
    (hval : ∀ x ∈ Mo.N T, ∃ x', Val β hβ inclR T (E.jD T x) x') (Λ : LetA O n)
    (hS : Solvable (letγ (R.γ₀ Γ.gam)) (letφ R.φ₀) (γL R Γ.gam) R.Q Λ Dc.C Dc.t r) (y z : E.DD T)
    (hy : Λ • y ∈ Mo.N T) (hz : ∃ x ∈ Mo.N T, (letπ : LetA O n) • x = z)
    (hyz : E.γD T Γ.gam y - y = E.φD T z - z) :
    ∃ w' : T.V ⊗[Qp] B, ∀ (g : G) (z' : E.DD T), (∃ x ∈ Mo.N T, (letπ : LetA O n) • x = z') →
      E.γD T Γ.gam z' - z' = E.γD T (Γ.resΓ g) z - z →
      Val β hβ inclR T (E.jD T z') (actVB PD T.ρ g w' - w') := by
  obtain ⟨m, m', Gm, Pm, Pm', h1, h2, h3, h4, h5, h6⟩ := GlobalTheory.HWL.Mat.wach_matrices Mo T r nb
  let e : Fin r → E.DD T := fun j => (nb j : E.DD T)
  let lin := Fintype.linearCombination (LetA O n) e
  have hsur : ∀ x ∈ Mo.N T, ∃ c, lin c = x := fun x hx =>
    ⟨nb.equivFun ⟨x, hx⟩, by
      have := congrArg Subtype.val (nb.sum_equivFun ⟨x, hx⟩)
      rw [AddSubmonoidClass.coe_finsetSum] at this
      exact (Fintype.linearCombination_apply _ _ _).trans this⟩
  have hlin : Function.Injective lin :=
    (injective_iff_map_eq_zero lin).mpr fun c hc => funext (Fintype.linearIndependent_iff.mp
      (nb.linearIndependent.map' (Mo.N T).subtype (Submodule.ker_subtype _)) c
      ((Fintype.linearCombination_apply _ _ _).symm.trans hc))
  have hπ : ∀ z, (∃ x ∈ Mo.N T, (letπ : LetA O n) • x = z) →
      ∃ c, lin c = z ∧ ∀ j k, PowerSeries.constantCoeff (c j k) = 0 := by
    rintro _ ⟨x, hx, rfl⟩
    obtain ⟨c, rfl⟩ := hsur x hx
    exact ⟨(letπ : LetA O n) • c, map_smul _ _ _, fun j k => by simp [letπ]⟩
  have hγ : ∀ g c, E.γD T g (lin c) = lin ((Gm g).mulVec fun j => letγ (R.γ₀ g) (c j)) := fun g c => by
    have := semi_coord (letγ (R.γ₀ g)) (E.γD T g).toAddMonoidHom (γD_smulA E T g) e 1 (Gm g)
      (fun j => by rw [one_smul]; exact h5 g j) c
    rwa [one_smul] at this
  have hφ : ∀ c, R.Q ^ m • E.φD T (lin c) = lin (Pm.mulVec fun j => letφ R.φ₀ (c j)) := fun c =>
    semi_coord (letφ R.φ₀) (E.φD T).toAddMonoidHom (φD_smulA E T) e (R.Q ^ m) Pm h6 c
  obtain ⟨cz, rfl, hz0⟩ := hπ z hz
  obtain ⟨cy, hcy⟩ := hsur _ hy
  obtain ⟨w, p, hw0, hwC, hw⟩ := hS m m' (Gm Γ.gam) Pm Pm' cy cz
    (fun i j => mem_span_letπ fun k => by
      rw [Matrix.sub_apply, Pi.sub_apply, map_sub, h2, Matrix.one_apply]
      split_ifs <;> simp) h3 (h4 _) (fun j => mem_span_letπ (hz0 j)) (by
      apply hlin
      rw [map_sub, map_smul, map_smul, map_smul, map_sub, map_smul, ← hγ, ← hφ, hcy, γD_smulA, ← smul_sub, ← hyz]
      simp only [smul_sub, smul_smul]
      congr 2 <;> ring)
  obtain ⟨w', hw'⟩ := exists_val (hβ := hβ) E hinj gA hg1 hg2 Dc T e (fun j => hval _ (nb j).2) Gm h5 w p hwC
  refine ⟨w', fun g z' hz' hzz => ?_⟩
  obtain ⟨c, rfl, hc0⟩ := hπ z' hz'
  refine hw' g c (coord_eq hu Gm h1 h2 cz c w hw0 hw _ hc0 (hlin ?_))
  rw [map_sub, map_sub, ← hγ, ← hγ, hzz]

end Core

section Functor

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL]
    [CommRing O] [Algebra O LL] [TopologicalSpace LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    {Zl Ai : Type} [CommRing Zl] [CommRing Ai] [Algebra Zl O] [Algebra Zl Ai]
    {RW : Type} [CommRing RW] [Algebra O RW]
    {inclR : (O ⊗[Zl] Ai) →ₐ[O] RW} {φR : RW →ₐ[O] RW} {gR : G → (RW →ₐ[O] RW)} {πA : O ⊗[Zl] Ai}
    {W : LocWach PD LL O v n} (E : EtTie W (O ⊗[Zl] Ai) RW inclR φR gR πA) {s : ℕ} (hs : W.s = s)
    (hp : PD.p.Prime) (hL : LevLaws W) (hI : IoLaws E)
    (β : O ⊗[Zl] Ai →+* LL ⊗[Qp] B)

theorem isUnit_prod (hinj : Function.Injective inclR) (φA : O ⊗[Zl] Ai →ₐ[O] O ⊗[Zl] Ai)
    (hφ1 : ∀ r, inclR (φA r) = φR (inclR r))
    (hφ2 : ∀ r, β (φA r) = Algebra.TensorProduct.map (AlgHom.id Qp LL) PD.φ (β r))
    (hφ3 : ∀ a, inclR (E.io (W.φA a)) = φR (inclR (E.io a))) (hX : IsUnit (β (E.io W.X))) (m : ℕ) :
    IsUnit (β (E.io (∏ j ∈ Finset.range m, (W.φA ^ j) W.X))) := by
  rw [map_prod, map_prod]
  refine Finset.prod_induction _ IsUnit (fun _ _ => IsUnit.mul) isUnit_one fun j hj => ?_
  clear hj
  induction j with
  | zero => simpa using hX
  | succ j ih =>
    rw [pow_succ', AlgHom.mul_apply, hinj ((hφ3 _).trans (hφ1 _).symm), hφ2]
    exact ih.map _


include hI in

theorem mem_of_layers (ιA : Ai →+* B)
    (hβ₀ : ∀ (o : O) (w : Ai), β (o ⊗ₜ[Zl] w) = algebraMap O LL o ⊗ₜ[Qp] ιA w)
    (zl : PowerSeries Zl →+* LetA O n) (h1 : IsCrys PD W.one.ρ)
    (hP : ∀ T, @Module.Projective (PowerSeries Zl) _ ↥(W.N T) _ (Module.compHom _ zl))
    (hinj : Function.Injective inclR) (gA : G → (O ⊗[Zl] Ai →ₐ[O] O ⊗[Zl] Ai))
    (hg1 : ∀ g r, inclR (gA g r) = gR g (inclR r))
    (hg2 : ∀ g r, β (gA g r) =
      Algebra.TensorProduct.map (AlgHom.id Qp LL) ((PD.actB g).toAlgHom.restrictScalars Qp) (β r))
    {tS zS : BdR} (Dc : Disc (serOf W hs hp hL) (β.comp E.io.toRingHom) tS zS)
    (hu : ∀ k : ℕ, 0 < k → algebraMap O LL (W.χΓ W.gam : O) ^ k ≠ 1) (T : LocLat G Qp LL O) (hT : IsCrys PD T.ρ)
    {r : ℕ} (nb : Nonempty (Module.Basis (Fin r) (LetA O n) ↥(W.N T))) (u : O ⊗[Zl] Ai) (hu1 : IsUnit (β u))
    (m : ℕ) (hu2 : ∀ x ∈ W.N T, ∃ y : TW (O ⊗[Zl] Ai) T, TWincl inclR T y =
      TensorProduct.map (LinearMap.mulLeft O (inclR u ^ m)) LinearMap.id (E.jD T x)) (Λ : LetA O n)
    (hS : Solvable (W.γA W.gam) W.φA (γL (serOf W hs hp hL) W.gam) W.Q Λ Dc.C Dc.t r) (y z : W.DD T)
    (hy : Λ • y ∈ W.N T) (hz : z ∈ aN W T letπ) (hyz : (y, z) ∈ W.divisibleCocycles T) (zz : ↥W.GKs → W.DD T)
    (hz1 : ∀ g, zz g ∈ aN W T letπ) (hz2 : ∀ g, W.γ T (zz g) - zz g = W.γD T (W.resΓ g) z - z) (b : TW RW T)
    (u' : O ⊗[Zl] Ai) (hu3 : IsUnit (β u')) (a : ℕ)
    (hb : TensorProduct.map (LinearMap.mulLeft O (inclR u' ^ a)) LinearMap.id b ∈ TAinf inclR T)
    (c : ↥(latticeCocycles (resLat T W.GKs))) (hc1 : Submodule.Quotient.mk c = W.cl T ⟨(y, z), hyz⟩)
    (hc2 : ∀ g : ↥W.GKs, ∃ t : ↥T.L.T, (t : T.V) = (c : ↥W.GKs → T.V) g ∧
      (1 : RW) ⊗ₜ[O] t = E.jD T (zz g) - (TWact (gR g) T g b - b)) :
    W.cl T ⟨(y, z), hyz⟩ ∈ H1fIntegralCyclotomicLayer W T := by
  subst hs
  have hβ : ∀ (o : O) (r : O ⊗[Zl] Ai), β (o • r) = algebraMap O LL o • β r := by
    intro o r
    induction r using TensorProduct.induction_on with
    | zero => simp
    | add a b ha hb => simp only [smul_add, map_add (f := _), ha, hb]
    | tmul a w => rw [smul_tmul', hβ₀, hβ₀, smul_tmul', smul_eq_mul, smul_eq_mul, map_mul]
  have hN : nOf W T = W.N T := nOf_crys W hT
  rw [← hN] at nb hu2 hy
  have ha : ∀ x ∈ aN W T letπ, ∃ x' ∈ nOf W T, (letπ : LetA O n) • x' = x := fun x hx => hN ▸ hx
  obtain ⟨nb⟩ := nb
  have hyz' : W.γD T W.gam y - y = W.φD T z - z := by
    have : (W.γD T W.gam y - y) + -(W.φD T z - z) = 0 := hyz
    exact add_neg_eq_zero.mp this
  obtain ⟨w', hw'⟩ := core (hβ := hβ) (latOf E rfl hp hL hI zl h1 hP) hinj gA hg1 hg2 Dc hu T nb
    (fun x hx => by
      obtain ⟨y, hy⟩ := hu2 x hx
      rw [GlobalTheory.NL.SandArb.map_mulLeft, ← map_pow] at hy
      exact Val.exists (by rw [map_pow]; exact hu1.pow m) hy) Λ hS y z hy (ha z hz) hyz'
  obtain ⟨b₀, hb₀⟩ := hb
  rw [GlobalTheory.NL.SandArb.map_mulLeft, ← map_pow] at hb₀
  obtain ⟨b', hb'⟩ := Val.exists (hβ := hβ) (T := T) (by rw [map_pow]; exact hu3.pow a) hb₀
  refine ⟨c, ⟨c.2, c.2.1, w' - b', fun g => ?_⟩, hc1⟩
  obtain ⟨t, ht1, ht2⟩ := hc2 g
  have k1 : Val β hβ inclR T (E.jD T (zz g)) (actVB PD T.ρ g w' - w') := hw' g (zz g) (ha _ (hz1 g)) (hz2 g)
  have k2 : Val β hβ inclR T (TWact (gR g) T g b) (actVB PD T.ρ g b') :=
    Val.map (T.ρ g) (T.actT g) (fun _ => rfl) (gA g) (gR g) _ (hg1 g) (hg2 g) hb'
  have k3 := (val_tmul (β := β) (hβ := hβ) (inclR := inclR) t).add k2
  rw [ht2, show E.jD T (zz g) - (TWact (gR g) T g b - b) + TWact (gR g) T g b = E.jD T (zz g) + b by abel] at k3
  have k4 := k3.unique hinj (k1.add hb')
  rw [ht1] at k4
  change (c : ↥W.GKs → T.V) g ⊗ₜ[Qp] (1 : B) = _
  rw [map_sub, eq_sub_of_add_eq k4]
  abel

end Functor

section Concrete

variable {l : ℕ} [Fact l.Prime] {P : LocPrime l} {AI : LocAinf l P} {K : FinExt l} {s : ℕ} {LL : FinExt l}

theorem exists_actions (K : FinExt l) {β : RA LL →+* ↥LL.1 ⊗[ℚ_[l]] P.R.B} (hβ : IsBeta AI β) :
    ∃ (gA : ↥(GK K) → (RA LL →ₐ[↥(OL LL)] RA LL)) (φA : RA LL →ₐ[↥(OL LL)] RA LL),
      (∀ g r, inclR LL (gA g r) = AI.gRW LL (g : GQ l) (inclR LL r)) ∧
      (∀ g r, β (gA g r) = Algebra.TensorProduct.map (AlgHom.id ℚ_[l] ↥LL.1)
        (((P.PD K).actB g).toAlgHom.restrictScalars ℚ_[l]) (β r)) ∧
      (∀ r, inclR LL (φA r) = φRW LL (inclR LL r)) ∧
      ∀ r, β (φA r) = Algebra.TensorProduct.map (AlgHom.id ℚ_[l] ↥LL.1) (P.PD K).φ (β r) := by
  refine ⟨fun g => Algebra.TensorProduct.map (AlgHom.id _ _) (AI.actWHom (g : GQ l)).toAlgHom,
    Algebra.TensorProduct.map (AlgHom.id _ _) (frobA l), fun g r => ?_, fun g r => ?_, fun r => ?_, fun r => ?_⟩
  · refine map_map_comm (inclWA l) _ _ (fun w => ?_) r
    ext k
    exact (autCb_alg l (AI.actT (g : GQ l)) (w.coeff k)).symm
  · exact beta_map β AI.ιA hβ _ _ (fun w => (AI.ιA_act g w).trans (P.PD_actB K g _).symm) r
  · refine map_map_comm (inclWA l) _ _ (fun w => ?_) r
    ext k
    exact map_pow (algebraMap (OCb l) (Cb l)) (w.coeff k) l
  · refine beta_map β AI.ιA hβ _ _ (fun w => ?_) r
    refine Eq.trans ?_ ((AI.ιA_φ w).trans (P.PD_φ K _).symm)
    rw [WittVector.frobenius_eq_map_frobenius]
    rfl

theorem exists_disc' (hT : LocTied l P AI) (h : Good K s LL) (Γ : GamS P K s LL) (R : WSer Γ) (I : IoS AI R)
    (hI : IoW I) {β : RA LL →+* ↥LL.1 ⊗[ℚ_[l]] P.R.B} (hβ : IsBeta AI β) :
    ∃ D : Disc R (β.comp I.io.toRingHom) ((((l : ℚ_[l]) ^ s)⁻¹) • P.ιB P.tB)
        (algebraMap (Om l) P.R.BdR (P.ζQ s)),
      ∀ (p : ℕ) (w : LetA ↥LL.1 (Module.finrank ℚ_[l] ↥(K0 K))), (∀ i, Conv (logS LL ^ p * w i)) →
        (D.t : LetA ↥LL.1 (Module.finrank ℚ_[l] ↥(K0 K))) ^ p * w ∈ D.C := by
  obtain ⟨J, hJ⟩ := GlobalTheory.HWL.BanachEval.exists_eval l P AI hT K s LL h Γ R I hI β hβ
  obtain ⟨Dc, hC, ht⟩ := GlobalTheory.HWL.Cmp.OpenDisc.exists_disc l P AI hT K s LL h Γ R I hI β hβ J hJ
    (GlobalTheory.HWL.LevExp.lev_isExp l P K s LL Γ R) (GlobalTheory.HWL.Letter.letter l P AI hT K s LL h Γ R I hI β hβ)
  exact ⟨Dc, fun p w hw => hC _ fun k => by rw [ht]; exact hw k⟩

end Concrete



theorem solvable (D : Formalism.BasicNotions.D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (l : ℕ) [Fact l.Prime]
    (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL) (hL : Laws (HW l) (F l) h) (J : Multiset ℕ) (r : ℕ)
    (C : Set (LetA ↥LL.1 (Module.finrank ℚ_[l] ↥(K0 K)))) (t : LetA ↥LL.1 (Module.finrank ℚ_[l] ↥(K0 K)))
    (hC : ∀ (p : ℕ) (w : LetA ↥LL.1 (Module.finrank ℚ_[l] ↥(K0 K))), (∀ i, Conv (logS LL ^ p * w i)) →
      t ^ p * w ∈ C) :
    Solvable (((HW l).W K s LL h).γA ((HW l).W K s LL h).gam) ((HW l).W K s LL h).φA
      (γL (SerL (HW l) (F l) h hL) ((HW l).W K s LL h).gam) ((HW l).W K s LL h).Q
      (J.map fun j => (((HW l).W K s LL h).φA ^ j) ((HW l).W K s LL h).Q).prod C t r := by
  intro m k H Pm Pm' y z h1 h2 h3 h4 h5
  obtain ⟨w, p, k1, k2, k3⟩ := GlobalTheory.NL.exists_cocycle_solution_conv D HW l K s LL h r m k J H Pm Pm' y z h1 h2 h3 h4 h5
  refine ⟨w, p, k1, fun j => hC p _ (k2 j), ?_⟩
  exact (congrArg (fun f => (H.map (toL _ _ _)).mulVec f - w)
    (funext fun j => γL_apply (SerL (HW l) (F l) h hL) _ (w j))).trans k3




theorem main : ∀ (D : Formalism.BasicNotions.D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW), P7 D HW F := by
  intro D HW F l _ K s LL h T hT J y z hy hz hyz
  refine Classical.byContradiction fun hcon => ?_
  have hL : Laws (HW l) (F l) h := Holds.laws (HW l) (F l) h
  have hTied := D.locT l
  obtain ⟨β, hβ⟩ := GlobalTheory.HWLBeta.exists_beta l _ _ hTied LL
  obtain ⟨gA, φA, hg1, hg2, hφ1, hφ2⟩ := exists_actions K hβ
  obtain ⟨hX, -, hinj, -, hφ3, -⟩ := GlobalTheory.NL.IoXQ.main D.loc D.locA HW F l K s LL h
  have hXu : IsUnit (β (((F l).E K s LL h).tie.io ((HW l).W K s LL h).X)) := by
    rw [hX, hβ]
    exact ((GlobalTheory.TiedMu.tied_mu_units l _ _ hTied).1 1).map
      (Algebra.TensorProduct.includeRight : (D.loc l).R.B →ₐ[ℚ_[l]] ↥LL.1 ⊗[ℚ_[l]] (D.loc l).R.B)
  obtain ⟨Dc, hC⟩ := exists_disc' hTied h (GamL (HW l) h) (SerL (HW l) (F l) h hL) (IoL (HW l) (F l) h hL)
    (ioW (HW l) (F l) h hL) hβ
  obtain ⟨m, hm, -⟩ := GlobalTheory.NL.SandArb.sandwich D.loc D.locA HW F l K s LL h T hT
  obtain ⟨zz, hz1, hz2, hz3⟩ := _root_.GlobalTheory.NL.ZgAll.zg_formula D HW F l K s LL h T hT y z hz hyz
  obtain ⟨b, hb⟩ := (GlobalTheory.WittTensorFixed.main l K LL T).1 (((F l).E K s LL h).tie.jD T y)
  obtain ⟨c, hc1, hc2⟩ := hz3 b hb
  obtain ⟨a, ha⟩ := GlobalTheory.NL.FrobDenom.main D HW F l K s LL h T hT J y hy b hb J.sup fun _ => Multiset.le_sup
  exact hcon <| mem_of_layers ((F l).E K s LL h).tie ((HW l).W_s K s LL h) (p_prime (D.loc l) K) hL.lev hL.io β
    (D.locA l).ιA hβ _ hL.one ((HW l).W_proj K s LL h) hinj gA hg1 hg2 Dc
    (chi_gam_pow_ne_one h (GamL (HW l) h)) T hT (N_basis_loc (HW l) K s LL h T hT) _ hXu m hm _
    (solvable D HW F l K s LL h hL J _ _ _ hC) y z hy hz hyz zz hz1 hz2 b _
    (isUnit_prod ((F l).E K s LL h).tie β hinj φA hφ1 hφ2 hφ3 hXu _) a ha c hc1 hc2

end GlobalTheory.NL.PoleCrys
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HerrCocyclePolesFrobeniusQCrystalline =====
