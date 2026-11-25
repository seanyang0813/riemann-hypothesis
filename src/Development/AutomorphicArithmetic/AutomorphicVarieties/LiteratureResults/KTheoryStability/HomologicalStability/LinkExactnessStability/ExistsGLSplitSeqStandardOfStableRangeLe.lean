module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.TensorHomCubes.StabDirectedSystem
public import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.SubClosed
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
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.AutomorphicVarieties.LiteratureResults.KTheoryStability.HomologicalStability.LinkExactnessStability.ExistsGLMovingUnimodularPairToLastBasis, Development.AutomorphicArithmetic.AutomorphicVarieties.LiteratureResults.KTheoryStability.HomologicalStability.LinkExactnessStability.ExistsGLSplitSeqStandardOfStableRangeLe

-- ===== clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.LiteratureResults.KTheoryStability.HomologicalStability.LinkExactnessStability.ExistsGLMovingUnimodularPairToLastBasis =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.AutomorphicVarieties.LiteratureResults.KTheoryStability.HomologicalStability.LinkExactnessStability.ExistsGLMovingUnimodularPairToLastBasis", "h": "module\n\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.TensorHomCubes.StabDirectedSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.GlobalTwisting.SubClosed\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.SeqCx Matrix UpperTheory.V.KL

noncomputable section

namespace GlobalTheory.UnimodTransvect

variable {R : Type} [CommRing R] {m : Type} [Fintype m] [DecidableEq m]

theorem vecMulVec_zero' (a : m → R) : vecMulVec a (0 : m → R) = 0 := by
  ext i j
  simp [vecMulVec]

def tv (a b : m → R) (h : b ⬝ᵥ a = 0) : GL m R where
  val := 1 + vecMulVec a b
  inv := 1 - vecMulVec a b
  val_inv := by
    rw [mul_sub, mul_one, add_mul, one_mul, vecMulVec_mul_vecMulVec, h, zero_smul, vecMulVec_zero']; abel
  inv_val := by
    rw [sub_mul, one_mul, mul_add, mul_one, vecMulVec_mul_vecMulVec, h, zero_smul, vecMulVec_zero']; abel

theorem tv_mulVec (a b : m → R) (h : b ⬝ᵥ a = 0) (v : m → R) :
    ((tv a b h : GL m R) : Matrix m m R) *ᵥ v = v + (b ⬝ᵥ v) • a := by
  change (1 + vecMulVec a b) *ᵥ v = _
  rw [add_mulVec, one_mulVec, vecMulVec_mulVec, op_smul_eq_smul]

theorem vecMul_tv_inv (a b : m → R) (h : b ⬝ᵥ a = 0) (f : m → R) :
    f ᵥ* (((tv a b h)⁻¹ : GL m R) : Matrix m m R) = f - (f ⬝ᵥ a) • b := by
  change f ᵥ* (1 - vecMulVec a b) = _
  rw [vecMul_sub, vecMul_one, vecMul_vecMulVec]

variable {n : ℕ}

theorem reach_of_last_one (u : Fin (n + 1) → R) (hu : u (Fin.last n) = 1) :
    ∃ g : GL (Fin (n + 1)) R, (g : Matrix (Fin (n + 1)) (Fin (n + 1)) R) *ᵥ u = Pi.single (Fin.last n) 1 := by
  refine ⟨tv (Pi.single (Fin.last n) 1 - u) (Pi.single (Fin.last n) 1) ?_, ?_⟩
  · rw [single_dotProduct, Pi.sub_apply, Pi.single_eq_same, hu]
    ring
  · rw [tv_mulVec, single_dotProduct, hu, one_mul, one_smul]
    abel

theorem reach_last_one (w : Fin (n + 1) → R) (c : Fin n → R)
    (hc : ∑ i, c i * w i.castSucc = 1) :
    ∃ g : GL (Fin (n + 1)) R, ((g : Matrix (Fin (n + 1)) (Fin (n + 1)) R) *ᵥ w) (Fin.last n) = 1 := by
  obtain ⟨c', hc'⟩ : ∃ c' : Fin (n + 1) → R, c' = Fin.snoc c 0 := ⟨_, rfl⟩
  have hcl : c' (Fin.last n) = 0 := by simp [hc']
  have hcw : c' ⬝ᵥ w = 1 := by
    rw [dotProduct, Fin.sum_univ_castSucc, hcl, zero_mul, add_zero]
    simpa [hc'] using hc
  refine ⟨tv (Pi.single (Fin.last n) 1) ((1 - w (Fin.last n)) • c') ?_, ?_⟩
  · rw [dotProduct_single, Pi.smul_apply, hcl, smul_zero, zero_mul]
  · rw [tv_mulVec, smul_dotProduct, hcw, Pi.add_apply, Pi.smul_apply, Pi.single_eq_same]
    simp only [smul_eq_mul]
    ring

theorem reach_first_unimod {s : ℕ} (hS : StableRangeLe R s) (hn : s ≤ n) (v f : Fin (n + 1) → R)
    (hfv : f ⬝ᵥ v = 1) :
    ∃ g : GL (Fin (n + 1)) R, ∃ c : Fin n → R, ∑ i, c i * ((g : Matrix (Fin (n + 1)) (Fin (n + 1)) R) *ᵥ v) i.castSucc = 1 := by
  have hU : Unimodular R v := by
    unfold Unimodular
    rw [Ideal.eq_top_iff_one, ← hfv, Ideal.mem_span_range_iff_exists_fun]
    exact ⟨f, rfl⟩
  obtain ⟨t, ht⟩ := hS n hn v hU
  unfold Unimodular at ht
  have h1 : (1 : R) ∈ Ideal.span (Set.range fun i => v i.castSucc + t i * v (Fin.last n)) := by
    rw [ht]
    exact Submodule.mem_top
  obtain ⟨c, hc⟩ := Ideal.mem_span_range_iff_exists_fun.mp h1
  obtain ⟨a, ha⟩ : ∃ a : Fin (n + 1) → R, a = Fin.snoc t 0 := ⟨_, rfl⟩
  have hal : a (Fin.last n) = 0 := by simp [ha]
  refine ⟨tv a (Pi.single (Fin.last n) 1) (by rw [single_dotProduct, hal, mul_zero]), c, ?_⟩
  refine (Finset.sum_congr rfl fun i _ => ?_).trans hc
  rw [tv_mulVec, single_dotProduct, one_mul, Pi.add_apply, Pi.smul_apply, smul_eq_mul]
  simp only [ha, Fin.snoc_castSucc]
  ring

theorem main : ∀ (R : Type) [CommRing R] (s : ℕ), StableRangeLe R s → ∀ (n : ℕ), s ≤ n → ∀ v f : Fin (n + 1) → R, f ⬝ᵥ v = 1 → ∃ g : GL (Fin (n + 1)) R, (g : Matrix (Fin (n + 1)) (Fin (n + 1)) R) *ᵥ v = Pi.single (Fin.last n) 1 ∧ f ᵥ* ((g⁻¹ : GL (Fin (n + 1)) R) : Matrix (Fin (n + 1)) (Fin (n + 1)) R) = Pi.single (Fin.last n) 1 := by
  intro R _ s hS n hn v f hfv
  obtain ⟨g1, c, hc⟩ := reach_first_unimod hS hn v f hfv
  obtain ⟨g2, hg2⟩ := reach_last_one _ c hc
  obtain ⟨g3, hg3⟩ := reach_of_last_one _ hg2
  obtain ⟨g, hg⟩ : ∃ g : GL (Fin (n + 1)) R, g = g3 * g2 * g1 := ⟨_, rfl⟩
  have hgv : (g : Matrix _ _ R) *ᵥ v = Pi.single (Fin.last n) 1 := by
    rw [hg, Units.val_mul, Units.val_mul, ← mulVec_mulVec, ← mulVec_mulVec]
    exact hg3
  obtain ⟨f', hf'⟩ : ∃ f' : Fin (n + 1) → R, f' = f ᵥ* ((g⁻¹ : GL _ R) : Matrix _ _ R) := ⟨_, rfl⟩
  have hfl : f' (Fin.last n) = 1 := by
    have : f' ⬝ᵥ ((g : Matrix _ _ R) *ᵥ v) = 1 := by
      rw [hf', ← dotProduct_mulVec, mulVec_mulVec, Units.inv_mul, one_mulVec, hfv]
    rwa [hgv, dotProduct_single, mul_one] at this
  have hb : (f' - Pi.single (Fin.last n) 1) ⬝ᵥ Pi.single (Fin.last n) (1 : R) = 0 := by
    rw [dotProduct_single, Pi.sub_apply, hfl, Pi.single_eq_same]
    ring
  refine ⟨tv (Pi.single (Fin.last n) 1) (f' - Pi.single (Fin.last n) 1) hb * g, ?_, ?_⟩
  · rw [Units.val_mul, ← mulVec_mulVec, hgv, tv_mulVec, hb, zero_smul, add_zero]
  · rw [_root_.mul_inv_rev, Units.val_mul, ← vecMul_vecMul, ← hf', vecMul_tv_inv, dotProduct_single,
      hfl, mul_one, one_smul]
    abel

end GlobalTheory.UnimodTransvect

end

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.LiteratureResults.KTheoryStability.HomologicalStability.LinkExactnessStability.ExistsGLMovingUnimodularPairToLastBasis =====

-- ===== clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.LiteratureResults.KTheoryStability.HomologicalStability.LinkExactnessStability.ExistsGLSplitSeqStandardOfStableRangeLe =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.AutomorphicVarieties.LiteratureResults.KTheoryStability.HomologicalStability.LinkExactnessStability.ExistsGLSplitSeqStandardOfStableRangeLe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.SubClosed\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.TensorHomCubes.StabDirectedSystem\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.LiteratureResults.KTheoryStability.HomologicalStability.LinkExactnessStability.ExistsGLMovingUnimodularPairToLastBasis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.SeqCx Matrix UpperTheory.V.KL

namespace GlobalTheory.SplitStd

variable {R : Type} [CommRing R]

def extLast (m : ℕ) : Matrix (Fin m) (Fin m) R →* Matrix (Fin (m + 1)) (Fin (m + 1)) R where
  toFun A := Matrix.of fun i j =>
    Fin.lastCases (Fin.lastCases 1 (fun _ => 0) j) (fun i' => Fin.lastCases 0 (fun j' => A i' j') j) i
  map_one' := by
    ext i j
    refine Fin.lastCases ?_ (fun i => ?_) i <;> refine Fin.lastCases ?_ (fun j => ?_) j <;>
      simp [Matrix.one_apply, Fin.castSucc_ne_last, (Fin.castSucc_ne_last _).symm]
  map_mul' A B := by
    ext i j
    refine Fin.lastCases ?_ (fun i => ?_) i <;> refine Fin.lastCases ?_ (fun j => ?_) j <;>
      simp [Matrix.mul_apply, Fin.sum_univ_castSucc]

theorem extLast_mulVec_single_last (m : ℕ) (A : Matrix (Fin m) (Fin m) R) :
    extLast m A *ᵥ Pi.single (Fin.last m) 1 = Pi.single (Fin.last m) 1 := by
  funext i
  refine Fin.lastCases ?_ (fun i => ?_) i <;>
    simp [extLast, Matrix.mulVec, dotProduct, Fin.sum_univ_castSucc, Fin.castSucc_ne_last]

theorem single_last_vecMul_extLast (m : ℕ) (A : Matrix (Fin m) (Fin m) R) :
    Pi.single (Fin.last m) 1 ᵥ* extLast m A = Pi.single (Fin.last m) 1 := by
  funext i
  refine Fin.lastCases ?_ (fun i => ?_) i <;>
    simp [extLast, Matrix.vecMul, dotProduct, Fin.sum_univ_castSucc, Fin.castSucc_ne_last]

theorem extLast_mulVec (m : ℕ) (A : Matrix (Fin m) (Fin m) R) (w : Fin (m + 1) → R)
    (hw : w (Fin.last m) = 0) (a : Fin m) (h : A *ᵥ (fun i => w i.castSucc) = Pi.single a 1) :
    extLast m A *ᵥ w = Pi.single a.castSucc 1 := by
  funext i
  refine Fin.lastCases ?_ (fun i => ?_) i
  · simp [extLast, Matrix.mulVec, dotProduct, Fin.sum_univ_castSucc, hw, (Fin.castSucc_ne_last a).symm]
  · have := congrFun h i
    simp only [Matrix.mulVec, dotProduct] at this
    simp [extLast, Matrix.mulVec, dotProduct, Fin.sum_univ_castSucc, hw, this, Pi.single_apply]

theorem vecMul_extLast (m : ℕ) (A : Matrix (Fin m) (Fin m) R) (w : Fin (m + 1) → R)
    (hw : w (Fin.last m) = 0) (a : Fin m) (h : (fun i => w i.castSucc) ᵥ* A = Pi.single a 1) :
    w ᵥ* extLast m A = Pi.single a.castSucc 1 := by
  funext i
  refine Fin.lastCases ?_ (fun i => ?_) i
  · simp [extLast, Matrix.vecMul, dotProduct, Fin.sum_univ_castSucc, hw, (Fin.castSucc_ne_last a).symm]
  · have := congrFun h i
    simp only [Matrix.vecMul, dotProduct] at this
    simp [extLast, Matrix.vecMul, dotProduct, Fin.sum_univ_castSucc, hw, this, Pi.single_apply]

theorem dot_conj {k : ℕ} (g : GL (Fin k) R) (f v : Fin k → R) :
    (f ᵥ* ((g⁻¹ : GL (Fin k) R) : Matrix (Fin k) (Fin k) R)) ⬝ᵥ ((g : Matrix (Fin k) (Fin k) R) *ᵥ v)
      = f ⬝ᵥ v := by
  rw [← dotProduct_mulVec, mulVec_mulVec, Units.inv_mul, one_mulVec]

theorem core (s : ℕ) (hs : StableRangeLe R s) : ∀ (k m : ℕ) (v f : Fin k → Fin m → R),
    (∀ i j, f i ⬝ᵥ v j = if i = j then 1 else 0) → k + s ≤ m →
    ∃ (g : GL (Fin m) R) (σ : Fin k → Fin m), Function.Injective σ ∧ ∀ j,
      (g : Matrix (Fin m) (Fin m) R) *ᵥ v j = Pi.single (σ j) 1 ∧
      f j ᵥ* ((g⁻¹ : GL (Fin m) R) : Matrix (Fin m) (Fin m) R) = Pi.single (σ j) 1 := by
  intro k
  induction k with
  | zero => intro m v f _ _; exact ⟨1, Fin.elim0, fun a => a.elim0, fun j => j.elim0⟩
  | succ k ih =>
    intro m v f hvf hkm
    obtain ⟨m, rfl⟩ : ∃ m', m = m' + 1 := ⟨m - 1, by omega⟩
    obtain ⟨g₁, hg₁v, hg₁f⟩ := _root_.GlobalTheory.UnimodTransvect.main R s hs m (by omega) (v 0) (f 0) (by simpa using hvf 0 0)
    have hvl : ∀ j : Fin k, ((g₁ : Matrix _ _ R) *ᵥ v j.succ) (Fin.last m) = 0 := by
      intro j
      have key := dot_conj g₁ (f 0) (v j.succ)
      rw [hg₁f, single_dotProduct, one_mul, hvf, if_neg (Fin.succ_ne_zero j).symm] at key
      exact key
    have hfl : ∀ j : Fin k, (f j.succ ᵥ* ((g₁⁻¹ : GL _ R) : Matrix _ _ R)) (Fin.last m) = 0 := by
      intro j
      have key := dot_conj g₁ (f j.succ) (v 0)
      rw [hg₁v, dotProduct_single, mul_one, hvf, if_neg (Fin.succ_ne_zero j)] at key
      exact key
    let v' : Fin k → Fin m → R := fun j i => ((g₁ : Matrix _ _ R) *ᵥ v j.succ) i.castSucc
    let f' : Fin k → Fin m → R := fun j i => (f j.succ ᵥ* ((g₁⁻¹ : GL _ R) : Matrix _ _ R)) i.castSucc
    have hdual : ∀ i j, f' i ⬝ᵥ v' j = if i = j then 1 else 0 := by
      intro i j
      have key := dot_conj g₁ (f i.succ) (v j.succ)
      rw [hvf, dotProduct, Fin.sum_univ_castSucc, hvl j, mul_zero, add_zero] at key
      simpa [dotProduct, v', f', Fin.succ_inj] using key
    obtain ⟨g', σ', hσ', hg'⟩ := ih m v' f' hdual (by omega)
    refine ⟨Units.map (extLast m) g' * g₁,
      (Fin.cons (Fin.last m) (fun j => (σ' j).castSucc) : Fin (k + 1) → Fin (m + 1)), ?_, ?_⟩
    · rw [Fin.cons_injective_iff]
      refine ⟨?_, (Fin.castSucc_injective _).comp hσ'⟩
      rintro ⟨j, hj⟩
      exact Fin.castSucc_ne_last _ hj
    · intro j
      refine Fin.cases ?_ (fun j => ?_) j
      · simp only [Fin.cons_zero, _root_.mul_inv_rev, Units.val_mul, Units.coe_map, Units.coe_map_inv]
        refine ⟨?_, ?_⟩
        · rw [← mulVec_mulVec, hg₁v, extLast_mulVec_single_last]
        · rw [← vecMul_vecMul, hg₁f, single_last_vecMul_extLast]
      · simp only [Fin.cons_succ, _root_.mul_inv_rev, Units.val_mul, Units.coe_map, Units.coe_map_inv]
        refine ⟨?_, ?_⟩
        · rw [← mulVec_mulVec]
          exact extLast_mulVec m _ _ (hvl j) _ (hg' j).1
        · rw [← vecMul_vecMul]
          exact vecMul_extLast m _ _ (hfl j) _ (hg' j).2

def pmat {n : ℕ} (π : Equiv.Perm (Fin n)) : Matrix (Fin n) (Fin n) R :=
  Matrix.of fun i j => if i = π j then 1 else 0

theorem pmat_mul_symm {n : ℕ} (π : Equiv.Perm (Fin n)) : (pmat π : Matrix (Fin n) (Fin n) R) * pmat π.symm = 1 := by
  ext i j
  simp [pmat, Matrix.mul_apply, Matrix.one_apply]

def pGL {n : ℕ} (π : Equiv.Perm (Fin n)) : GL (Fin n) R :=
  ⟨pmat π, pmat π.symm, pmat_mul_symm π, by simpa using pmat_mul_symm (R := R) π.symm⟩

theorem pGL_mulVec {n : ℕ} (π : Equiv.Perm (Fin n)) (a : Fin n) :
    ((pGL π : GL (Fin n) R) : Matrix (Fin n) (Fin n) R) *ᵥ Pi.single a 1 = Pi.single (π a) 1 := by
  funext i
  simp only [pGL, pmat, Matrix.mulVec, dotProduct, Matrix.of_apply]
  rw [Finset.sum_eq_single a]
  · simp [Pi.single_apply]
  · intro b _ hb; simp [hb]
  · simp

theorem vecMul_pGL_inv {n : ℕ} (π : Equiv.Perm (Fin n)) (a : Fin n) :
    Pi.single a 1 ᵥ* (((pGL π)⁻¹ : GL (Fin n) R) : Matrix (Fin n) (Fin n) R) = Pi.single (π a) 1 := by
  funext i
  simp only [pGL, pmat, Matrix.vecMul, dotProduct, Matrix.of_apply, Units.inv_mk]
  rw [Finset.sum_eq_single a]
  · simp [Pi.single_apply, Equiv.eq_symm_apply, eq_comm]
  · intro b _ hb; simp [hb]
  · simp

theorem exists_perm {n k : ℕ} (σ ι : Fin k → Fin n) (hσ : Function.Injective σ) (hι : Function.Injective ι) :
    ∃ π : Equiv.Perm (Fin n), ∀ j, π (σ j) = ι j := by
  classical
  rcases Nat.eq_zero_or_pos k with rfl | hk
  · exact ⟨1, fun j => j.elim0⟩
  haveI : Nonempty (Fin k) := ⟨⟨0, hk⟩⟩
  obtain ⟨g, hg⟩ := Finset.exists_equiv_extend_of_card_eq (t := (Finset.univ : Finset (Fin n)))
    (s := Finset.univ.image σ) (f := fun x => ι (Function.invFun σ x)) (by simp)
    (fun _ _ => Finset.mem_univ _) (by
      intro x hx y hy hxy
      simp only [Finset.coe_image, Finset.coe_univ, Set.image_univ, Set.mem_range] at hx hy
      obtain ⟨a, rfl⟩ := hx
      obtain ⟨b, rfl⟩ := hy
      simp only [Function.leftInverse_invFun hσ a, Function.leftInverse_invFun hσ b] at hxy
      rw [hι hxy])
  refine ⟨g.trans (Equiv.subtypeUnivEquiv Finset.mem_univ), fun j => ?_⟩
  have := hg (σ j) (Finset.mem_image_of_mem _ (Finset.mem_univ j))
  simpa [Function.leftInverse_invFun hσ j] using this

end GlobalTheory.SplitStd

open GlobalTheory.SplitStd in
theorem GlobalTheory.splitSeq_to_standard : ∀ (R : Type) [CommRing R] (s : ℕ), StableRangeLe R s → ∀ (n : ℕ) (l : List ((Fin n → R) × (Fin n → R))), l ∈ splitSeq R n → l.length + s ≤ n → ∀ ι : Fin l.length → Fin n, Function.Injective ι → ∃ g : GL (Fin n) R, ∀ j : Fin l.length, (g : Matrix (Fin n) (Fin n) R) *ᵥ (l.get j).1 = Pi.single (ι j) 1 ∧ (l.get j).2 ᵥ* ((g⁻¹ : GL (Fin n) R) : Matrix (Fin n) (Fin n) R) = Pi.single (ι j) 1 := by
  intro R _ s hs n l hl hlen ι hι
  obtain ⟨g, σ, hσ, hg⟩ := core s hs l.length n (fun j => (l.get j).1) (fun j => (l.get j).2) hl hlen
  obtain ⟨π, hπ⟩ := exists_perm σ ι hσ hι
  refine ⟨pGL π * g, fun j => ⟨?_, ?_⟩⟩
  · rw [Units.val_mul, ← mulVec_mulVec, (hg j).1, pGL_mulVec, hπ]
  · rw [_root_.mul_inv_rev, Units.val_mul, ← vecMul_vecMul, (hg j).2, vecMul_pGL_inv, hπ]

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.LiteratureResults.KTheoryStability.HomologicalStability.LinkExactnessStability.ExistsGLSplitSeqStandardOfStableRangeLe =====
