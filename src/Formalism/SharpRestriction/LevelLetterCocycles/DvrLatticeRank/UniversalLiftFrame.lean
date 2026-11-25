module

public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LevConstOfEv
public import Formalism.SharpRestriction.LevelLetterCocycles.DownSlotProposition
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfB
public import Mathlib.Algebra.Polynomial.AlgebraMap
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Mathlib.LinearAlgebra.Dimension.Constructions
public import Mathlib.LinearAlgebra.Dimension.RankNullity
public import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
public import Mathlib.LinearAlgebra.FreeModule.PID
public import Mathlib.RingTheory.Localization.Module
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.Imports
public import Formalism.SharpRestriction.LevelLetterCocycles.ModelKStep
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelQPfA
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3upPfFilCAnti
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfA
import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowUniformizerFactorisation
import Formalism.SharpRestriction.LevelLetterCocycles.MapCompZero
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.AevalEndApply, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.AevalMemOfStable, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.SatDVR, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DecompCoord, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftFrame

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.AevalEndApply =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.AevalEndApply", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LevConstOfEv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.PowerSeries.Inverse\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.UniversalLiftFrames

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.N.Ln34 PowerSeries TensorProduct

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n)

def twA (uE' : LetA O n) (h' : ℕ) : LetA O n →ₗ[O] LetA O n :=
  (LinearMap.mulRight O (uE' ^ h')).comp (W.γA W.gam).toLinearMap

variable {W}

theorem twA_apply (uE' : LetA O n) (h' : ℕ) (a : LetA O n) :
    twA W uE' h' a = W.γA W.gam a * uE' ^ h' := rfl

theorem aeval_end_apply {M : Type*} [AddCommGroup M] [Module O M] (f : Module.End O M) (P : Polynomial O)
    (x : M) : Polynomial.aeval f P x = ∑ i ∈ Finset.range (P.natDegree + 1), P.coeff i • (f ^ i) x := by
  first
  | (rw [Polynomial.aeval_eq_sum_range, LinearMap.coeFn_sum, Finset.sum_apply]
     simp only [LinearMap.smul_apply])
  | (simp [Polynomial.aeval_eq_sum_range, LinearMap.sum_apply]; done)

private theorem gammaA_mem_AΔ (g : W.Gam) {a : LetA O n} (ha : a ∈ W.AΔ) : W.γA g a ∈ W.AΔ := by
  have hc : ∀ (g h : W.Gam) (a : LetA O n), W.γA g (W.γA h a) = W.γA h (W.γA g a) := by
    intro g h a
    funext i
    show W.γ₀ g (W.γ₀ h (a i)) = W.γ₀ h (W.γ₀ g (a i))
    rw [← AlgHom.mul_apply, ← map_mul, mul_comm, map_mul, AlgHom.mul_apply]
  intro δ hδ
  rw [hc, ha δ hδ]

theorem twA_pow_mem (uE' : LetA O n) (h' : ℕ) (huΔ : uE' ∈ W.AΔ) (k : ℕ) {a : LetA O n}
    (ha : a ∈ W.AΔ) : (twA W uE' h' ^ k) a ∈ W.AΔ := by
  induction k with
  | zero => simpa using ha
  | succ k ih =>
    rw [pow_succ', Module.End.mul_apply, twA_apply]
    exact Subalgebra.mul_mem _ (gammaA_mem_AΔ _ ih) (Subalgebra.pow_mem _ huΔ _)

private theorem gammaA_letE_eq_letE (g : W.Gam) (c : ZMod n) : W.γA g (letE c : LetA O n) = letE c := by
  funext i
  show W.γ₀ g ((letE c : LetA O n) i) = (letE c : LetA O n) i
  unfold letE
  by_cases h : i = c
  · subst h; simp
  · simp [h]

theorem twA_pow_letE (uE' : LetA O n) (h' : ℕ) (c : ZMod n) (k : ℕ) (a : LetA O n) :
    (twA W uE' h' ^ k) ((letE c : LetA O n) * a) = (letE c : LetA O n) * (twA W uE' h' ^ k) a := by
  induction k with
  | zero => simp
  | succ k ih =>
    rw [pow_succ', Module.End.mul_apply, Module.End.mul_apply, ih, twA_apply, twA_apply, map_mul,
      gammaA_letE_eq_letE, mul_assoc]

theorem aeval_twA_mem (uE' : LetA O n) (h' : ℕ) (huΔ : uE' ∈ W.AΔ) (P : Polynomial O) {a : LetA O n}
    (ha : a ∈ W.AΔ) : Polynomial.aeval (twA W uE' h') P a ∈ W.AΔ := by
  rw [aeval_end_apply]
  exact Subalgebra.sum_mem _ fun i _ => Subalgebra.smul_mem _ (twA_pow_mem uE' h' huΔ i ha) _

theorem aeval_twA_letE (uE' : LetA O n) (h' : ℕ) (c : ZMod n) (P : Polynomial O) (a : LetA O n) :
    Polynomial.aeval (twA W uE' h') P ((letE c : LetA O n) * a) =
      (letE c : LetA O n) * Polynomial.aeval (twA W uE' h') P a := by
  rw [aeval_end_apply, aeval_end_apply, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [twA_pow_letE, mul_smul_comm]

theorem ev_twA (c : ZMod n) (ζ : LL) (Eπ : LetA O n) (h' : ℕ)
    (h0 : constantCoeff (W.lev c ζ Eπ) = 0) (h1 : coeff 1 (W.lev c ζ Eπ) ≠ 0)
    (uE uE' : LetA O n) (huu : uE' * uE = 1) (hγE : W.γA W.gam Eπ = uE * Eπ) (u : LL) (hu : u ≠ 0)
    (hlevγ : ∀ a, W.lev c ζ (W.γA W.gam a) = rescale u (W.lev c ζ a)) (a : LetA O n) (i : ℤ) :
    ev W c ζ Eπ h' (twA W uE' h' a) i = u ^ i * ev W c ζ Eπ h' a i := by
  obtain ⟨V, hVdef⟩ : ∃ V, V = Vs W c ζ Eπ := ⟨_, rfl⟩
  have hEV : W.lev c ζ Eπ = PowerSeries.X * V := by
    ext k
    rcases k with _ | k
    · simp [h0]
    · rw [PowerSeries.coeff_succ_X_mul, hVdef]
      unfold Vs
      rw [PowerSeries.coeff_mk]
  have hV0 : PowerSeries.constantCoeff V ≠ 0 := by
    rw [hVdef, ← PowerSeries.coeff_zero_eq_constantCoeff_apply]
    unfold Vs
    simpa [PowerSeries.coeff_mk] using h1
  have hVinv : V * V⁻¹ = 1 := PowerSeries.mul_inv_cancel V hV0
  have hlevu : W.lev c ζ uE * V = PowerSeries.C u * PowerSeries.rescale u V := by
    have h2 : W.lev c ζ (W.γA W.gam Eπ) = W.lev c ζ uE * W.lev c ζ Eπ := by rw [hγE, map_mul]
    rw [hlevγ, hEV, map_mul, PowerSeries.rescale_X] at h2
    apply mul_left_cancel₀ (PowerSeries.X_ne_zero (R := LL))
    calc PowerSeries.X * (W.lev c ζ uE * V) = W.lev c ζ uE * (PowerSeries.X * V) := by ring
      _ = PowerSeries.C u * PowerSeries.X * PowerSeries.rescale u V := h2.symm
      _ = PowerSeries.X * (PowerSeries.C u * PowerSeries.rescale u V) := by ring
  have hW' : W.lev c ζ uE' * W.lev c ζ uE = 1 := by rw [← map_mul, huu, map_one]
  have hR : PowerSeries.rescale u V * PowerSeries.rescale u V⁻¹ = 1 := by
    rw [← map_mul, hVinv, map_one]
  have hC : PowerSeries.C u * PowerSeries.C u⁻¹ = 1 := by
    rw [← map_mul, mul_inv_cancel₀ hu, map_one]
  have hkey : W.lev c ζ uE' * V⁻¹ = PowerSeries.C u⁻¹ * PowerSeries.rescale u V⁻¹ := by
    calc W.lev c ζ uE' * V⁻¹
        = W.lev c ζ uE' * V⁻¹ * (PowerSeries.C u * PowerSeries.C u⁻¹) *
            (PowerSeries.rescale u V * PowerSeries.rescale u V⁻¹) := by rw [hC, hR]; ring
      _ = PowerSeries.C u⁻¹ * PowerSeries.rescale u V⁻¹ *
            (W.lev c ζ uE' * (PowerSeries.C u * PowerSeries.rescale u V) * V⁻¹) := by ring
      _ = PowerSeries.C u⁻¹ * PowerSeries.rescale u V⁻¹ *
            ((W.lev c ζ uE' * W.lev c ζ uE) * (V * V⁻¹)) := by rw [← hlevu]; ring
      _ = PowerSeries.C u⁻¹ * PowerSeries.rescale u V⁻¹ := by rw [hW', hVinv]; ring
  have hmain : W.lev c ζ (twA W uE' h' a) * Ui W c ζ Eπ h' =
      PowerSeries.C (u⁻¹ ^ h') * PowerSeries.rescale u (W.lev c ζ a * Ui W c ζ Eπ h') := by
    rw [twA_apply, map_mul, map_pow, hlevγ]
    unfold Ui
    rw [← hVdef]
    simp only [map_mul, map_pow]
    calc PowerSeries.rescale u (W.lev c ζ a) * W.lev c ζ uE' ^ h' * V⁻¹ ^ h'
        = PowerSeries.rescale u (W.lev c ζ a) * (W.lev c ζ uE' * V⁻¹) ^ h' := by ring
      _ = PowerSeries.rescale u (W.lev c ζ a) *
            (PowerSeries.C u⁻¹ * PowerSeries.rescale u V⁻¹) ^ h' := by rw [hkey]
      _ = PowerSeries.C u⁻¹ ^ h' * (PowerSeries.rescale u (W.lev c ζ a) *
            PowerSeries.rescale u V⁻¹ ^ h') := by ring
  unfold ev
  split_ifs with hih
  · rw [hmain, PowerSeries.coeff_C_mul, PowerSeries.coeff_rescale]
    have hm : (((i + h').toNat : ℕ) : ℤ) = i + h' := Int.toNat_of_nonneg hih
    have hu' : u⁻¹ ^ h' * u ^ (i + h').toNat = u ^ i := by
      rw [← zpow_natCast u, hm, zpow_add₀ hu, zpow_natCast, inv_pow, mul_comm, mul_assoc,
        mul_inv_cancel₀ (pow_ne_zero _ hu), mul_one]
    rw [← mul_assoc, hu']
  · simp

theorem ev_twA_pow (c : ZMod n) (ζ : LL) (Eπ : LetA O n) (h' : ℕ)
    (h0 : constantCoeff (W.lev c ζ Eπ) = 0) (h1 : coeff 1 (W.lev c ζ Eπ) ≠ 0)
    (uE uE' : LetA O n) (huu : uE' * uE = 1) (hγE : W.γA W.gam Eπ = uE * Eπ) (u : LL) (hu : u ≠ 0)
    (hlevγ : ∀ a, W.lev c ζ (W.γA W.gam a) = rescale u (W.lev c ζ a)) (k : ℕ) (a : LetA O n) (i : ℤ) :
    ev W c ζ Eπ h' ((twA W uE' h' ^ k) a) i = (u ^ i) ^ k * ev W c ζ Eπ h' a i := by
  induction k with
  | zero => simp
  | succ k ih =>
    rw [pow_succ', Module.End.mul_apply, ev_twA c ζ Eπ h' h0 h1 uE uE' huu hγE u hu hlevγ, ih]
    ring

theorem ev_aeval_twA (c : ZMod n) (ζ : LL) (Eπ : LetA O n) (h' : ℕ)
    (h0 : constantCoeff (W.lev c ζ Eπ) = 0) (h1 : coeff 1 (W.lev c ζ Eπ) ≠ 0)
    (uE uE' : LetA O n) (huu : uE' * uE = 1) (hγE : W.γA W.gam Eπ = uE * Eπ) (u : LL) (hu : u ≠ 0)
    (hlevγ : ∀ a, W.lev c ζ (W.γA W.gam a) = rescale u (W.lev c ζ a)) (P : Polynomial O)
    (a : LetA O n) (i : ℤ) :
    ev W c ζ Eπ h' (Polynomial.aeval (twA W uE' h') P a) i =
      Polynomial.aeval (u ^ i) P * ev W c ζ Eπ h' a i := by
  have hzero : ev W c ζ Eπ h' 0 i = 0 := by
    unfold ev; split_ifs <;> simp
  have hadd : ∀ x y : LetA O n, ev W c ζ Eπ h' (x + y) i = ev W c ζ Eπ h' x i + ev W c ζ Eπ h' y i := by
    intro x y; unfold ev; split_ifs <;> simp [map_add (f := _), add_mul]
  have hsmul : ∀ (r : O) (x : LetA O n),
      ev W c ζ Eπ h' (r • x) i = algebraMap O LL r * ev W c ζ Eπ h' x i := by
    intro r x
    unfold ev
    split_ifs
    · first
      | (simp only [Algebra.smul_def]; done)
      | (rw [map_smul, smul_mul_assoc, PowerSeries.coeff_smul, Algebra.smul_def])
    · simp
  have hsum : ∀ (s : Finset ℕ) (g : ℕ → LetA O n),
      ev W c ζ Eπ h' (∑ k ∈ s, g k) i = ∑ k ∈ s, ev W c ζ Eπ h' (g k) i := by
    intro s g
    classical
    refine Finset.induction_on s ?_ ?_
    · simpa using hzero
    · intro k s hk ih
      rw [Finset.sum_insert hk, Finset.sum_insert hk, hadd, ih]
  rw [aeval_end_apply, Polynomial.aeval_eq_sum_range, Finset.sum_mul, hsum]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [hsmul, ev_twA_pow c ζ Eπ h' h0 h1 uE uE' huu hγE u hu hlevγ, Algebra.smul_def]
  ring

theorem EE_aeval (Eπ : LetA O n) (h' : ℕ) (uE uE' : LetA O n) (huu : uE' * uE = 1)
    (hγE : W.γA W.gam Eπ = uE * Eπ) (P : Polynomial O) (f : W.EE) (a : LetA O n)
    (h : algebraMap (LetA O n) W.EE (Eπ ^ h') * f = algebraMap (LetA O n) W.EE a) :
    algebraMap (LetA O n) W.EE (Eπ ^ h') * Polynomial.aeval (W.γE W.gam).toLinearMap P f =
      algebraMap (LetA O n) W.EE (Polynomial.aeval (twA W uE' h') P a) := by
  have hγ : W.γE W.gam (algebraMap (LetA O n) W.EE (Eπ ^ h')) =
      algebraMap (LetA O n) W.EE (uE ^ h') * algebraMap (LetA O n) W.EE (Eπ ^ h') := by
    rw [W.γE_ext, ← map_mul, ← mul_pow, ← hγE]
    congr 1
    exact map_pow (W.γA W.gam) Eπ h'
  have hk : ∀ k : ℕ, algebraMap (LetA O n) W.EE (Eπ ^ h') * (((W.γE W.gam).toLinearMap ^ k) f) =
      algebraMap (LetA O n) W.EE ((twA W uE' h' ^ k) a) := by
    intro k
    induction k with
    | zero => simpa using h
    | succ k ih =>
      have h2 := congrArg (W.γE W.gam) ih
      rw [map_mul, hγ, W.γE_ext] at h2
      rw [pow_succ', Module.End.mul_apply, pow_succ', Module.End.mul_apply, twA_apply,
        AlgHom.toLinearMap_apply]
      calc algebraMap (LetA O n) W.EE (Eπ ^ h') * W.γE W.gam (((W.γE W.gam).toLinearMap ^ k) f)
          = algebraMap (LetA O n) W.EE (uE' ^ h') * (algebraMap (LetA O n) W.EE (uE ^ h') *
              algebraMap (LetA O n) W.EE (Eπ ^ h') * W.γE W.gam (((W.γE W.gam).toLinearMap ^ k) f)) := by
            rw [← mul_assoc, ← mul_assoc, ← map_mul, ← mul_pow, huu, one_pow, map_one, one_mul]
        _ = algebraMap (LetA O n) W.EE (uE' ^ h') *
              algebraMap (LetA O n) W.EE (W.γA W.gam ((twA W uE' h' ^ k) a)) := by
            rw [h2]; rfl
        _ = algebraMap (LetA O n) W.EE (W.γA W.gam ((twA W uE' h' ^ k) a) * uE' ^ h') := by
            rw [map_mul, mul_comm]

  rw [aeval_end_apply, aeval_end_apply, Finset.mul_sum, map_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [mul_smul_comm, hk i, Algebra.smul_def, Algebra.smul_def, map_mul,
    ← IsScalarTower.algebraMap_apply]

theorem aeval_γLA_tmul (T : LocLat G Qp LL O) (π' : LetA O n) (c : ZMod n) (P : Polynomial O)
    (e : W.EE) (z : LcQ W T π' c) :
    Polynomial.aeval (γLA W T π' c) P (e ⊗ₜ z) = Polynomial.aeval (W.γE W.gamK).toLinearMap P e ⊗ₜ z := by
  have hp : ∀ i : ℕ, (γLA W T π' c ^ i) (e ⊗ₜ z) = (((W.γE W.gamK).toLinearMap ^ i) e) ⊗ₜ z := by
    intro i
    induction i with
    | zero => simp
    | succ i ih =>
      rw [pow_succ', Module.End.mul_apply, ih, pow_succ', Module.End.mul_apply]
      simp [γLA]
  rw [aeval_end_apply, aeval_end_apply, TensorProduct.sum_tmul]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [hp, TensorProduct.smul_tmul']

end Formalism.MainNotions.N.Ln34.UniversalLiftFrames
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.AevalEndApply =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.AevalMemOfStable =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.AevalMemOfStable", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DownSlotProposition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfB\npublic import Mathlib.Algebra.Polynomial.AlgebraMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PowerSeries.Inverse\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.UniversalLiftFrames

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.N.Ln34 TensorProduct

section Gen

theorem aeval_comm {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M] (f : Module.End R M)
    (P : Polynomial R) (v : M) : Polynomial.aeval f P (f v) = f (Polynomial.aeval f P v) := by
  induction P using Polynomial.induction_on' with
  | add p q hp hq => rw [map_add (f := _), LinearMap.add_apply, LinearMap.add_apply, hp, hq, map_add (f := _)]
  | monomial k a =>
    rw [Polynomial.aeval_monomial, Module.End.mul_apply, Module.End.mul_apply, Module.algebraMap_end_apply,
      Module.algebraMap_end_apply, map_smul, ← Module.End.mul_apply, ← pow_succ, pow_succ',
      Module.End.mul_apply]

theorem ps_coeff_cancel {LL : Type*} [Field LL] (p g : PowerSeries LL)
    (hp : PowerSeries.constantCoeff p ≠ 0) (N : ℕ) (h : ∀ i < N, PowerSeries.coeff i (p * g) = 0) :
    ∀ i < N, PowerSeries.coeff i g = 0 := by
  intro i hi
  have e : g = p⁻¹ * (p * g) := by
    rw [← mul_assoc, PowerSeries.inv_mul_cancel _ hp, one_mul]
  rw [e, PowerSeries.coeff_mul]
  refine Finset.sum_eq_zero fun q hq => ?_
  rw [Finset.HasAntidiagonal.mem_antidiagonal] at hq
  rw [h q.2 (by omega), mul_zero]

end Gen

section Loc

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n)

variable (T : LocLat G Qp LL O) (π' : LetA O n) (c : ZMod n)

theorem tensor_eq_sum {r : ℕ} (bL : Basis (Fin r) O (LcQ W T π' c)) (z : LA W T π' c) :
    z = ∑ i, (TensorProduct.equivFinsuppOfBasisRight bL z i) ⊗ₜ bL i := by
  calc z = (TensorProduct.equivFinsuppOfBasisRight bL).symm (TensorProduct.equivFinsuppOfBasisRight bL z) := by
        simp
    _ = ∑ i, (TensorProduct.equivFinsuppOfBasisRight bL z i) ⊗ₜ bL i := by
        rw [TensorProduct.equivFinsuppOfBasisRight_symm_apply, Finsupp.sum_fintype _ _ (fun i => by simp)]

theorem coord_γLA {r : ℕ} (bL : Basis (Fin r) O (LcQ W T π' c)) (z : LA W T π' c) (i : Fin r) :
    TensorProduct.equivFinsuppOfBasisRight bL (γLA W T π' c z) i =
      W.γE W.gamK (TensorProduct.equivFinsuppOfBasisRight bL z i) := by
  induction z using TensorProduct.induction_on with
  | zero => simp
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), Finsupp.add_apply, hx, hy, map_add (f := _), Finsupp.add_apply, map_add (f := _)]
  | tmul e l =>
    rw [ModelFPf.γLA_tmul, TensorProduct.equivFinsuppOfBasisRight_apply_tmul,
      TensorProduct.equivFinsuppOfBasisRight_apply_tmul, Finsupp.mapRange_apply, Finsupp.mapRange_apply]
    exact ((W.γE W.gamK).toLinearMap.map_smul _ _).symm

theorem coord_sub {r : ℕ} (bL : Basis (Fin r) O (LcQ W T π' c)) (z z' : LA W T π' c) (i : Fin r) :
    TensorProduct.equivFinsuppOfBasisRight bL (z - z') i =
      TensorProduct.equivFinsuppOfBasisRight bL z i - TensorProduct.equivFinsuppOfBasisRight bL z' i := by
  rw [map_sub, Finsupp.sub_apply]

variable {W T π' c}

theorem valAt_zero (ζ : LL) (hvsmul : ∀ (a : O) x, x ∈ NcS W T (c - 1) →
      valAt W T c ζ (a • x) = algebraMap O LL a • valAt W T c ζ x) : valAt W T c ζ 0 = 0 := by
  have h := hvsmul 0 0 (Submodule.zero_mem _)
  rw [zero_smul, map_zero, zero_smul] at h
  exact h

theorem valAt_sum (ζ : LL)
    (hvadd : ∀ x y, x ∈ NcS W T (c - 1) → y ∈ NcS W T (c - 1) →
      valAt W T c ζ (x + y) = valAt W T c ζ x + valAt W T c ζ y)
    (hvsmul : ∀ (a : O) x, x ∈ NcS W T (c - 1) →
      valAt W T c ζ (a • x) = algebraMap O LL a • valAt W T c ζ x)
    {ι : Type*} (s : Finset ι) (co : ι → O) (y : ι → W.DD T) (hy : ∀ i, y i ∈ NcS W T (c - 1)) :
    valAt W T c ζ (∑ i ∈ s, co i • y i) = ∑ i ∈ s, algebraMap O LL (co i) • valAt W T c ζ (y i) := by
  classical
  induction s using Finset.induction_on with
  | empty => rw [Finset.sum_empty, Finset.sum_empty, valAt_zero ζ hvsmul]
  | insert a s ha ih =>
    rw [Finset.sum_insert ha, Finset.sum_insert ha,
      hvadd _ _ (Submodule.smul_mem _ _ (hy a)) (Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (hy i)),
      hvsmul _ _ (hy a), ih]

theorem mkL_sum {ι : Type*} (s : Finset ι) (co : ι → O) (y : ι → W.DD T)
    (hy : ∀ i, y i ∈ NcS W T (c - 1)) (h : ∑ i ∈ s, co i • y i ∈ NcS W T (c - 1)) :
    mkL W T π' c (∑ i ∈ s, co i • y i) h = ∑ i ∈ s, co i • mkL W T π' c (y i) (hy i) := by
  have e : (⟨∑ i ∈ s, co i • y i, h⟩ : ↥(NcS W T (c - 1))) = ∑ i ∈ s, co i • ⟨y i, hy i⟩ := by
    ext
    simp
  unfold mkL

  rw [e, show Submodule.Quotient.mk (∑ i ∈ s, co i • (⟨y i, hy i⟩ : ↥(NcS W T (c - 1)))) =
    ∑ i ∈ s, Submodule.Quotient.mk (p := (PiNS W T π' 1).comap (NcS W T (c - 1)).subtype)
      (co i • (⟨y i, hy i⟩ : ↥(NcS W T (c - 1)))) from map_sum (Submodule.mkQ _) _ _]
  simp only [Submodule.Quotient.mk_smul]

end Loc

section NL

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n)

variable {W} {T : LocLat G Qp LL O} {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop} {π' Eπ : LetA O n} {h' : ℕ}
  {c : ZMod n}

theorem piNL_le (hπΔ : π' ∈ W.AΔ)
    (hA : ∀ a ∈ W.AΔ, ∀ x ∈ NL W T Pt π' Eπ h' c, smulLA W T π' c a x ∈ NL W T Pt π' Eπ h' c) :
    piNL W T Pt π' Eπ h' c 1 ≤ NL W T Pt π' Eπ h' c := by
  rintro _ ⟨y, hy, rfl⟩
  rw [pow_one]
  exact hA π' hπΔ y hy

theorem piNL_γ (hγ : ∀ x ∈ NL W T Pt π' Eπ h' c, γLA W T π' c x ∈ NL W T Pt π' Eπ h' c)
    (hA : ∀ a ∈ W.AΔ, ∀ x ∈ NL W T Pt π' Eπ h' c, smulLA W T π' c a x ∈ NL W T Pt π' Eπ h' c)
    {uπ : LetA O n} (huπ : uπ ∈ W.AΔ) (hγπ : W.γA W.gamK π' = π' * uπ) {x : LA W T π' c}
    (hx : x ∈ piNL W T Pt π' Eπ h' c 1) : γLA W T π' c x ∈ piNL W T Pt π' Eπ h' c 1 := by
  obtain ⟨y, hy, rfl⟩ := hx
  refine ⟨smulLA W T π' c uπ (γLA W T π' c y), hA uπ huπ _ (hγ y hy), ?_⟩
  rw [pow_one, ModelFPf.γLA_smulLA, ModelFPf.smulLA_smulLA, hγπ]

end NL

end Formalism.MainNotions.N.Ln34.UniversalLiftFrames
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.AevalMemOfStable =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.SatDVR =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.SatDVR", "h": "module\n\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.Lattice\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Dimension.Constructions\npublic import Mathlib.LinearAlgebra.Dimension.RankNullity\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas\npublic import Mathlib.LinearAlgebra.FreeModule.PID\npublic import Mathlib.RingTheory.Localization.Module\n\n"}
section -- clump:auto
@[expose] public section

namespace DualFramesAlt.SatDVR

noncomputable def toK (O K : Type*) [CommRing O] [Field K] [Algebra O K] (r : ℕ) :
    (Fin r → O) →ₗ[O] (Fin r → K) :=
  LinearMap.pi fun i => (Algebra.linearMap O K).comp (LinearMap.proj i)

section SlopeTestRemainingChoices

variable {O K : Type*} [CommRing O] [IsDomain O] [Field K] [Algebra O K] [IsFractionRing O K]
  {r : ℕ}

lemma toK_apply (x : Fin r → O) (i : Fin r) : toK O K r x i = algebraMap O K (x i) := rfl

lemma toK_injective : Function.Injective (toK O K r) := by
  intro x y h
  funext i
  exact IsFractionRing.injective O K (congr_fun h i)

lemma algebraMap_ne_zero {a : O} (ha : a ≠ 0) : algebraMap O K a ≠ 0 :=
  (map_ne_zero_iff _ (IsFractionRing.injective O K)).2 ha

lemma exists_toK_eq_smul (y : Fin r → K) :
    ∃ d : O, d ≠ 0 ∧ ∃ x : Fin r → O, toK O K r x = algebraMap O K d • y := by
  obtain ⟨b, hb⟩ := IsLocalization.exist_integer_multiples_of_finite (nonZeroDivisors O) y
  choose x hx using hb
  refine ⟨b, nonZeroDivisors.ne_zero b.2, x, ?_⟩
  funext i
  rw [toK_apply, hx i, Pi.smul_apply, Algebra.smul_def, smul_eq_mul]

lemma le_span_comap (W : Submodule K (Fin r → K)) :
    W ≤ Submodule.span K (toK O K r '' ((W.restrictScalars O).comap (toK O K r) : Set _)) := by
  intro y hy
  obtain ⟨d, hd, x, hx⟩ := exists_toK_eq_smul (O := O) y
  have hxW : x ∈ (W.restrictScalars O).comap (toK O K r) := by
    rw [Submodule.mem_comap, Submodule.restrictScalars_mem, hx]
    exact W.smul_mem _ hy
  have hy' : y = (algebraMap O K d)⁻¹ • toK O K r x := by
    rw [hx, smul_smul, inv_mul_cancel₀ (algebraMap_ne_zero hd), one_smul]
  rw [hy']
  exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨x, hxW, rfl⟩)

variable [IsPrincipalIdealRing O]

lemma finrank_le_finrank_span (N : Submodule O (Fin r → O)) :
    Module.finrank O N ≤ Module.finrank K (Submodule.span K (toK O K r '' (N : Set _))) := by
  obtain ⟨n, b⟩ := Submodule.basisOfPid (Pi.basisFun O (Fin r)) N
  rw [Module.finrank_eq_card_basis b, Fintype.card_fin]
  have hker : LinearMap.ker ((toK O K r).comp N.subtype) = ⊥ := by
    rw [LinearMap.ker_eq_bot]
    exact (toK_injective (K := K)).comp Subtype.val_injective
  have hli : LinearIndependent O (((toK O K r).comp N.subtype) ∘ b) :=
    b.linearIndependent.map' ((toK O K r).comp N.subtype) hker
  have hK : LinearIndependent K (((toK O K r).comp N.subtype) ∘ b) :=
    LinearIndependent.localization K (nonZeroDivisors O) hli
  have h := finrank_span_eq_card hK
  rw [Fintype.card_fin] at h
  rw [← h]
  apply Submodule.finrank_mono
  rw [Submodule.span_le]
  rintro _ ⟨i, rfl⟩
  exact Submodule.subset_span ⟨_, (b i).2, rfl⟩

lemma finrank_span_le_finrank (N : Submodule O (Fin r → O)) :
    Module.finrank K (Submodule.span K (toK O K r '' (N : Set _))) ≤ Module.finrank O N := by
  obtain ⟨n, b⟩ := Submodule.basisOfPid (Pi.basisFun O (Fin r)) N
  rw [Module.finrank_eq_card_basis b, Fintype.card_fin]
  have hsp : Submodule.span K (toK O K r '' (N : Set _)) =
      Submodule.span K (Set.range fun i => toK O K r (b i : Fin r → O)) := by
    apply le_antisymm
    · rw [Submodule.span_le]
      rintro _ ⟨x, hx, rfl⟩
      have hx' : (⟨x, hx⟩ : N) ∈ Submodule.span O (Set.range b) := by
        rw [b.span_eq]; exact Submodule.mem_top
      have h1 : x ∈ Submodule.span O (Set.range fun i => (b i : Fin r → O)) := by
        have := Submodule.mem_map_of_mem (f := N.subtype) hx'
        rwa [Submodule.map_span, ← Set.range_comp] at this
      have h2 := Submodule.mem_map_of_mem (f := toK O K r) h1
      rw [Submodule.map_span, ← Set.range_comp] at h2
      exact Submodule.span_le_restrictScalars O K _ h2
    · rw [Submodule.span_le]
      rintro _ ⟨i, rfl⟩
      exact Submodule.subset_span ⟨_, (b i).2, rfl⟩
  rw [hsp]
  exact (finrank_range_le_card _).trans (by simp)

end SlopeTestRemainingChoices

lemma exists_isCompl_of_sat {O : Type*} [CommRing O] [IsDomain O] [IsPrincipalIdealRing O]
    {M : Type*} [AddCommGroup M] [Module O M] [Module.Finite O M]
    (N : Submodule O M) (hsat : ∀ (a : O) (x : M), a ≠ 0 → a • x ∈ N → x ∈ N) :
    ∃ N₂ : Submodule O M, IsCompl N N₂ := by
  have : Module.IsTorsionFree O (M ⧸ N) := by
    rw [Module.isTorsionFree_iff_smul_eq_zero]
    intro a q h
    induction q using Submodule.Quotient.induction_on with
    | _ x =>
      by_cases ha : a = 0
      · exact Or.inl ha
      · right
        rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero] at h
        rw [Submodule.Quotient.mk_eq_zero]
        exact hsat a x ha h
  obtain ⟨s, hs⟩ := Module.projective_lifting_property N.mkQ LinearMap.id
    (Submodule.mkQ_surjective N)
  let g : M →ₗ[O] M := LinearMap.id - s ∘ₗ N.mkQ
  have hg : ∀ x, g x ∈ N := by
    intro x
    have h1 : N.mkQ (s (N.mkQ x)) = N.mkQ x := LinearMap.congr_fun hs (N.mkQ x)
    have h2 : N.mkQ (g x) = 0 := by
      simp only [g, LinearMap.sub_apply, LinearMap.id_apply, LinearMap.comp_apply, map_sub, h1,
        sub_self]
    rwa [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero] at h2
  refine ⟨LinearMap.ker (g.codRestrict N hg), LinearMap.isCompl_of_proj fun x => ?_⟩
  apply Subtype.ext
  have hx : N.mkQ (x : M) = 0 := by
    rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero]; exact x.2
  simp [g, hx]

lemma exists_isCompl_finrank_add_of_saturated_of_isPrincipalIdealRing {O : Type*} [CommRing O] [IsDomain O]
    [IsPrincipalIdealRing O] {r : ℕ} (L' : Submodule O (Fin r → O))
    (hsat : ∀ (a : O) (x : Fin r → O), a ≠ 0 → a • x ∈ L' → x ∈ L') :
    ∃ L₂ : Submodule O (Fin r → O), IsCompl L' L₂ ∧
      Module.finrank O L₂ + Module.finrank O L' = r := by
  obtain ⟨L₂, h⟩ := exists_isCompl_of_sat L' hsat
  refine ⟨L₂, h, ?_⟩
  have h1 := Submodule.finrank_quotient_add_finrank L'
  rw [Module.finrank_fin_fun] at h1
  rw [← (Submodule.quotientEquivOfIsCompl L' L₂ h).finrank_eq]
  exact h1

lemma saturated_comap_coordinateMap_of_isPrincipalIdealRing {O K : Type*} [CommRing O] [IsDomain O] [IsPrincipalIdealRing O]
    [Field K] [Algebra O K] [IsFractionRing O K] {r : ℕ} (W : Submodule K (Fin r → K)) :
    (∀ (a : O) (x : Fin r → O), a ≠ 0 → a • x ∈ (W.restrictScalars O).comap (toK O K r) →
        x ∈ (W.restrictScalars O).comap (toK O K r)) ∧
      Module.finrank O ((W.restrictScalars O).comap (toK O K r)) ≤ Module.finrank K W := by
  refine ⟨fun a x ha h => ?_, ?_⟩
  · rw [Submodule.mem_comap, Submodule.restrictScalars_mem, map_smul,
      ← algebraMap_smul K a] at h
    rw [Submodule.mem_comap, Submodule.restrictScalars_mem]
    have := W.smul_mem (algebraMap O K a)⁻¹ h
    rwa [smul_smul, inv_mul_cancel₀ (algebraMap_ne_zero ha), one_smul] at this
  · refine (finrank_le_finrank_span (K := K) _).trans (Submodule.finrank_mono ?_)
    rw [Submodule.span_le]
    rintro _ ⟨x, hx, rfl⟩
    exact hx

theorem decomp {O K : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    [Field K] [Algebra O K] [IsFractionRing O K] {r m : ℕ} {ι₁ ι₂ : Type*}
    [Fintype ι₁] [Fintype ι₂]
    (C : ι₁ → Submodule K (Fin r → K)) (hC : ∀ τ, r ≤ Module.finrank K (C τ) + m)
    (F : ι₂ → Submodule K (Fin r → K)) (hF : ∀ τ, Module.finrank K (F τ) ≤ m) :
    ∃ L'' Lrest : Submodule O (Fin r → O), IsCompl L'' Lrest ∧
      Module.finrank O Lrest ≤ (Fintype.card ι₁ + Fintype.card ι₂) * m ∧
      (∀ τ, ∀ x ∈ L'', toK O K r x ∈ C τ) ∧
      (∀ τ, F τ ≤ Submodule.span K (toK O K r '' (Lrest : Set (Fin r → O)))) := by
  classical

  set W : Submodule K (Fin r → K) := ⨅ τ, C τ with hWdef
  set V : Submodule K (Fin r → K) := ⨆ τ, F τ with hVdef
  have hW : r ≤ Module.finrank K W + Fintype.card ι₁ * m := by
    let φ : (Fin r → K) →ₗ[K] ((τ : ι₁) → (Fin r → K) ⧸ C τ) := LinearMap.pi fun τ => (C τ).mkQ
    have hker : LinearMap.ker φ = W := by
      rw [LinearMap.ker_pi]
      simp only [Submodule.ker_mkQ, hWdef]
    have h1 := LinearMap.finrank_range_add_finrank_ker φ
    rw [hker, Module.finrank_fin_fun] at h1
    have h2 : Module.finrank K (LinearMap.range φ) ≤ Fintype.card ι₁ * m := by
      refine (Submodule.finrank_le _).trans ?_
      rw [Module.finrank_pi_fintype]
      calc ∑ τ, Module.finrank K ((Fin r → K) ⧸ C τ) ≤ ∑ _τ : ι₁, m := by
            refine Finset.sum_le_sum fun τ _ => ?_
            have h3 := Submodule.finrank_quotient_add_finrank (C τ)
            rw [Module.finrank_fin_fun] at h3
            have h4 := hC τ
            omega
        _ = Fintype.card ι₁ * m := by simp
    omega

  have hV : Module.finrank K V ≤ Fintype.card ι₂ * m := by
    have key : ∀ s : Finset ι₂, Module.finrank K ↥(s.sup F) ≤ s.card * m := by
      intro s
      induction s using Finset.induction_on with
      | empty => simp
      | insert a s ha ih =>
        rw [Finset.sup_insert, Finset.card_insert_of_notMem ha]
        calc Module.finrank K ↥(F a ⊔ s.sup F)
            ≤ Module.finrank K ↥(F a) + Module.finrank K ↥(s.sup F) :=
              Submodule.finrank_add_le_finrank_add_finrank _ _
          _ ≤ m + s.card * m := add_le_add (hF a) ih
          _ = (s.card + 1) * m := by ring
    have hVs : V = Finset.univ.sup F := by rw [hVdef, Finset.sup_univ_eq_iSup]
    rw [hVs]
    simpa using key Finset.univ

  obtain ⟨hsat', -⟩ := saturated_comap_coordinateMap_of_isPrincipalIdealRing (O := O) W
  have hrkL' : Module.finrank K W ≤ Module.finrank O ((W.restrictScalars O).comap (toK O K r)) :=
    (Submodule.finrank_mono (le_span_comap (O := O) W)).trans (finrank_span_le_finrank _)
  obtain ⟨L₂, hc, hrk2⟩ := exists_isCompl_finrank_add_of_saturated_of_isPrincipalIdealRing _ hsat'
  set L' := (W.restrictScalars O).comap (toK O K r) with hL'

  set Y : Submodule K (Fin r → K) := V ⊔ Submodule.span K (toK O K r '' (L₂ : Set _)) with hYdef
  obtain ⟨hsatS, hrkS⟩ := saturated_comap_coordinateMap_of_isPrincipalIdealRing (O := O) Y
  set S := (Y.restrictScalars O).comap (toK O K r) with hS
  let N : Submodule O L' := S.comap L'.subtype
  have hsatN : ∀ (a : O) (x : L'), a ≠ 0 → a • x ∈ N → x ∈ N :=
    fun a x ha h => hsatS a x ha h
  obtain ⟨N₂, hN⟩ := exists_isCompl_of_sat N hsatN
  refine ⟨N₂.map L'.subtype, S, ⟨?_, ?_⟩, ?_, ?_, ?_⟩
  · rw [Submodule.disjoint_def]
    intro x hx hxS
    obtain ⟨y, hy, rfl⟩ := Submodule.mem_map.1 hx
    have hyN : y ∈ N := hxS
    have := Submodule.disjoint_def.1 hN.disjoint y hyN hy
    simp [this]
  · rw [codisjoint_iff, eq_top_iff]
    rintro x -
    have hx : x ∈ L' ⊔ L₂ := hc.sup_eq_top ▸ Submodule.mem_top
    obtain ⟨a, ha, b, hb, rfl⟩ := Submodule.mem_sup.1 hx
    have ha' : (⟨a, ha⟩ : L') ∈ N ⊔ N₂ := hN.sup_eq_top ▸ Submodule.mem_top
    obtain ⟨n, hn, n₂, hn₂, hnn⟩ := Submodule.mem_sup.1 ha'
    have hbS : b ∈ S := by
      rw [hS, Submodule.mem_comap, Submodule.restrictScalars_mem]
      exact Submodule.mem_sup_right (Submodule.subset_span ⟨b, hb, rfl⟩)
    have hnS : (n : Fin r → O) ∈ S := hn
    have hsum : a + b = (n₂ : Fin r → O) + ((n : Fin r → O) + b) := by
      have h5 := congrArg Subtype.val hnn
      simp only [Submodule.coe_add] at h5
      rw [← h5]
      abel
    rw [hsum]
    exact Submodule.add_mem_sup (Submodule.mem_map_of_mem hn₂) (S.add_mem hnS hbS)
  · have h1 : Module.finrank K Y ≤ Module.finrank K V +
        Module.finrank K (Submodule.span K (toK O K r '' (L₂ : Set _))) :=
      Submodule.finrank_add_le_finrank_add_finrank _ _
    have h2 := finrank_span_le_finrank (K := K) L₂
    rw [add_mul]
    generalize Fintype.card ι₁ * m = A at *
    generalize Fintype.card ι₂ * m = B at *
    omega
  · intro τ x hx
    obtain ⟨y, -, rfl⟩ := Submodule.mem_map.1 hx
    have hy : toK O K r (y : Fin r → O) ∈ W := y.2
    exact (iInf_le C τ) hy
  · intro τ
    calc F τ ≤ V := le_iSup F τ
      _ ≤ Y := le_sup_left
      _ ≤ _ := le_span_comap (O := O) Y

end DualFramesAlt.SatDVR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.SatDVR =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DecompCoord =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DecompCoord", "h": "module\n\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.SatDVR\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.UniversalLiftFrames

open Module

theorem decomp_coord {O LL : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field LL]
    [Algebra O LL] [IsFractionRing O LL] {L : Type*} [AddCommGroup L] [Module O L] {r m : ℕ}
    (bL : Basis (Fin r) O L) {ι₁ ι₂ : Type*} [Fintype ι₁] [Fintype ι₂]
    (C : ι₁ → Submodule LL (Fin r → LL)) (hC : ∀ τ, r ≤ finrank LL (C τ) + m)
    (Fs : ι₂ → Submodule LL (Fin r → LL)) (hF : ∀ τ, finrank LL (Fs τ) ≤ m) :
    ∃ (k : ℕ) (ell : Fin k → L) (Lr : Submodule O L) (P : Fin k → Fin r → O),
      finrank O Lr ≤ (Fintype.card ι₁ + Fintype.card ι₂) * m ∧
      (∀ j τ, (fun i => algebraMap O LL (bL.repr (ell j) i)) ∈ C τ) ∧
      (∀ i, bL i - ∑ j, P j i • ell j ∈ Lr) ∧
      (∀ τ, ∀ d ∈ Fs τ, ∀ j, ∑ i, algebraMap O LL (P j i) * d i = 0) := by
  obtain ⟨L₁, L₂, hc, hrk, hCL, hFL⟩ := DualFramesAlt.SatDVR.decomp (O := O) (K := LL) C hC Fs hF
  obtain ⟨k, bu⟩ := Submodule.basisOfPid (Pi.basisFun O (Fin r)) L₁
  set pr := L₁.projectionOnto L₂ hc with hpr
  set P : Fin k → Fin r → O := fun j i => bu.coord j (pr (fun i' => if i = i' then 1 else 0)) with hP
  have hrepr : ∀ (u : Fin r → O) (i : Fin r), bL.repr (bL.equivFun.symm u) i = u i := by
    intro u i
    rw [← Basis.equivFun_apply, LinearEquiv.apply_symm_apply]
  have hsum : ∀ (i : Fin r), ∑ j, P j i • ((bu j : L₁) : Fin r → O) =
      ((pr (fun i' => if i = i' then 1 else 0) : L₁) : Fin r → O) := by
    intro i
    have h := congrArg Subtype.val (bu.sum_repr (pr (fun i' => if i = i' then 1 else 0)))
    rw [Submodule.coe_sum] at h
    simpa [hP, Basis.coord_apply] using h
  have hrow : ∀ (j : Fin k) (y : Fin r → O), ∑ i, P j i * y i = bu.coord j (pr y) := by
    intro j y
    rw [← LinearMap.comp_apply, LinearMap.pi_apply_eq_sum_univ ((bu.coord j).comp pr) y]
    refine Finset.sum_congr rfl fun i _ => ?_
    simp [hP, smul_eq_mul, mul_comm]
  refine ⟨k, fun j => bL.equivFun.symm (bu j), L₂.map (bL.equivFun.symm : (Fin r → O) →ₗ[O] L), P, ?_, ?_, ?_, ?_⟩
  · rw [LinearEquiv.finrank_map_eq]
    exact hrk
  · intro j τ
    convert hCL τ (bu j) (bu j).2 using 1
    funext i
    rw [DualFramesAlt.SatDVR.toK_apply, hrepr]
  · intro i

    rw [Submodule.mem_map_equiv, LinearEquiv.symm_symm, map_sub, map_sum]
    simp only [map_smul, LinearEquiv.apply_symm_apply]
    rw [hsum i, ← Submodule.ker_projectionOnto hc, LinearMap.mem_ker, map_sub, ← hpr,
      Submodule.projectionOnto_apply_left, sub_eq_zero]
    congr 1
    funext i'
    simp
  · intro τ d hd j
    let ψ : (Fin r → LL) →ₗ[LL] LL := ∑ i, algebraMap O LL (P j i) • LinearMap.proj i
    have hψ : ∀ x : Fin r → LL, ψ x = ∑ i, algebraMap O LL (P j i) * x i := by
      intro x
      simp [ψ, LinearMap.sum_apply, Algebra.smul_def]
    have hker : Submodule.span LL (DualFramesAlt.SatDVR.toK O LL r '' (L₂ : Set (Fin r → O))) ≤
        LinearMap.ker ψ := by
      rw [Submodule.span_le]
      rintro _ ⟨y, hy, rfl⟩
      rw [SetLike.mem_coe, LinearMap.mem_ker, hψ]

      simp only [DualFramesAlt.SatDVR.toK_apply, ← map_mul, ← map_sum]
      rw [hrow j y]
      have h0 : pr y = 0 := Submodule.projectionOnto_apply_right hc ⟨y, hy⟩
      rw [h0, map_zero, map_zero]
    have := hker (hFL τ hd)
    rwa [LinearMap.mem_ker, hψ] at this

end Formalism.MainNotions.N.Ln34.UniversalLiftFrames
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DecompCoord =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftFrame =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftFrame", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.Imports\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LevConstOfEv\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ModelKStep\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.AevalEndApply\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.AevalMemOfStable\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DecompCoord\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfA\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfB\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelQPfA\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3upPfFilCAnti\nimport Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowUniformizerFactorisation\nimport Formalism.SharpRestriction.LevelLetterCocycles.MapCompZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.UniversalLiftFrames

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.N.Ln34 TensorProduct

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n)

variable {W}

theorem gam_b {T : LocLat G Qp LL O} (Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop)
    (π' Eπ : LetA O n) (h' M σ : ℕ) (c : ZMod n) (α : FrA W π' Eπ h' M c) (β : FrB W π' Eπ h' M c)
    (hIF : IsFrame W Pt π' Eπ h' M σ c α β)
    (hcr : IsCrys PD T.ρ) (hjump : ∀ τ, JumpsInV PD T.ρ τ (Set.Icc (-(h' : ℤ)) h'))
    (hMF : ModelF W T Pt π' Eπ h' M c α β) (hM1 : 1 ≤ M)
    {uE uE' : LetA O n} (huE'Δ : uE' ∈ W.AΔ) (huu : uE' * uE = 1) (hγE : W.γA W.gamK Eπ = uE * Eπ)
    (w : W.DD T) (hw : w ∈ InvS W T π' Eπ h' 1 c) (b₀ : LA W T π' c) (hb₀ : b₀ ∈ LamLA W T π' Eπ h' c ⊤)
    (hβ : β T ⟨w, (Submodule.mem_inf.mp hw).1⟩ = mkLA W T π' Eπ h' M c b₀ hb₀) :
    γLA W T π' c b₀ - b₀ ∈ piNL W T Pt π' Eπ h' c 1 := by
  obtain ⟨-, -, -, -, -, -, -, hβγ, -⟩ := hIF.1 T hcr hjump
  have hwL : w ∈ LamPS W T Eπ h' c := (Submodule.mem_inf.mp hw).1
  have hgw : W.γD T W.gamK w ∈ LamPS W T Eπ h' c :=
    ModelFPf.LamPS_γ (W := W) (T := T) (Eπ := Eπ) (h' := h') (c := c) huu hγE hwL
  have hgb : γLA W T π' c b₀ ∈ LamLA W T π' Eπ h' c ⊤ :=
    ModelFPf.LamLA_γ (W := W) (T := T) (π' := π') (Eπ := Eπ) (h' := h') (c := c) huE'Δ huu hγE hb₀
  have h1 := hβγ w hwL b₀ hb₀ hβ hgw hgb
  have hsub : W.γD T W.gamK w - w ∈ LamPS W T Eπ h' c := Submodule.sub_mem _ hgw hwL
  have hβs : β T ⟨W.γD T W.gamK w - w, hsub⟩ =
      mkLA W T π' Eπ h' M c (γLA W T π' c b₀ - b₀) (Submodule.sub_mem _ hgb hb₀) := by
    have e : (⟨W.γD T W.gamK w - w, hsub⟩ : ↥(LamPS W T Eπ h' c)) = ⟨_, hgw⟩ - ⟨w, hwL⟩ := rfl
    rw [e, map_sub, h1, hβ]
    rfl
  have hy : W.γD T W.gamK w - w ∈ PiNS W T π' 1 := ((mem_InvS W T π' Eπ h' 1 c w).1 hw).2
  exact (hMF.2.2.1 1 le_rfl hM1).2 _ hsub _ _ hβs hy

theorem coords_of {T : LocLat G Qp LL O} {π' Eπ : LetA O n} {h' : ℕ} {c : ZMod n} {r : ℕ}
    (bL : Basis (Fin r) O (LcQ W T π' c)) {z : LA W T π' c} (hz : z ∈ LamLA W T π' Eπ h' c ⊤) :
    ∃ g : Fin r → LetA O n, (∀ i, g i ∈ W.AΔ) ∧ ∀ i, algebraMap (LetA O n) W.EE (Eπ ^ h') *
      TensorProduct.equivFinsuppOfBasisRight bL z i = algebraMap (LetA O n) W.EE ((letE c : LetA O n) * g i) := by
  have h := (MQ.range_iff π' c bL _).1 hz
  choose g hg e using h
  refine ⟨g, hg, fun i => ?_⟩
  rw [← e i, MQ.smulLA_eq, MQ.coord_smulE]

theorem serMul_sum {V : Type} [AddCommGroup V] [Module LL V] (gp : PowerSeries LL) {ι : Type*}
    (s : Finset ι) (F : ι → ℤ → V) (m₀ : ℤ) (hF : ∀ k, ∀ t < m₀, F k t = 0) (i : ℤ) :
    serMul gp (fun t => ∑ k ∈ s, F k t) i = ∑ k ∈ s, serMul gp (F k) i := by
  obtain ⟨N, hN⟩ : ∃ N : ℕ, i - m₀ < N := ⟨(i - m₀).toNat + 1, by omega⟩
  rw [ModelFPf.serMul_eq_sum gp _ m₀ (fun t ht => Finset.sum_eq_zero fun k _ => hF k t ht) i N hN]
  rw [Finset.sum_congr rfl fun k _ => ModelFPf.serMul_eq_sum gp (F k) m₀ (hF k) i N hN]
  simp only [Finset.smul_sum]
  exact Finset.sum_comm

theorem pt_fil {T : LocLat G Qp LL O} (Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop)
    (π' Eπ : LetA O n) (h' M : ℕ) (c : ZMod n)
    (hM5 : ∀ x ∈ LamLA W T π' Eπ h' c ⊤, γLA W T π' c x - x ∈ NL W T Pt π' Eπ h' c →
      ∀ τ ζ, Pt c ζ τ → ∀ f, ExpL W T π' Eπ h' c ζ x f → ∀ i : ℤ, i ≠ 0 →
        f i ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ (-i))
    {r : ℕ} (bL : Basis (Fin r) O (LcQ W T π' c)) (rep : Fin r → W.DD T)
    (hrep : ∀ k, rep k ∈ NcS W T (c - 1)) (hbrep : ∀ k, bL k = mkL W T π' c (rep k) (hrep k))
    (b₀ : LA W T π' c) (hb₀ : b₀ ∈ LamLA W T π' Eπ h' c ⊤) (hγb : γLA W T π' c b₀ - b₀ ∈ NL W T Pt π' Eπ h' c)
    (g : Fin r → LetA O n) (hg : ∀ i, g i ∈ W.AΔ)
    (hgeq : ∀ i, algebraMap (LetA O n) W.EE (Eπ ^ h') * TensorProduct.equivFinsuppOfBasisRight bL b₀ i =
      algebraMap (LetA O n) W.EE ((letE c : LetA O n) * g i))
    (τ : K →ₐ[Qp] LL) (ζ : LL) (hpt : Pt c ζ τ)
    (h0 : PowerSeries.constantCoeff (W.lev c ζ Eπ) = 0) (h1 : PowerSeries.coeff 1 (W.lev c ζ Eπ) ≠ 0) :
    ∀ t : ℤ, t ≠ 0 → Phi W T c ζ rep (fun i => ev W c ζ Eπ h' (g i) t) ∈
      Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ (-t) := by
  intro t ht
  apply hM5 b₀ hb₀ hγb τ ζ hpt (fun t => Phi W T c ζ rep (fun i => ev W c ζ Eπ h' (g i) t)) _ t ht
  refine ⟨⟨-(h' : ℤ), fun t ht => ?_⟩, r, fun i => ⟨g i, hg i⟩, rep, ⟨hrep, ?_⟩, fun i => ?_⟩
  · dsimp only
    rw [Phi_apply]
    exact Finset.sum_eq_zero fun k _ => by rw [ev_of_lt _ (by omega), zero_smul]
  · show smulLA W T π' c (Eπ ^ h') b₀ = _
    conv_lhs => rw [tensor_eq_sum W T π' c bL (smulLA W T π' c (Eπ ^ h') b₀)]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [MQ.smulLA_eq, MQ.coord_smulE, hgeq i, hbrep i]
  · simp only [Phi_apply]
    rw [serMul_sum _ _ _ (-(h' : ℤ)) (fun k t ht => by rw [ev_of_lt _ (by omega), zero_smul])]
    show _ = ∑ j, serC (W.lev c ζ (g j)) (valAt W T c ζ (rep j)) i
    exact Finset.sum_congr rfl fun k _ => serMul_ev h0 h1 (g k) (valAt W T c ζ (rep k)) i



theorem universal_lift_frame [IsDomain O] (hdvr : IsDiscreteValuationRing O) (hfr : IsFractionRing O LL)
    {T₁ T₂ : LocLat G Qp LL O} (F : LatHom T₁.L T₂.L) (Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop)
    (π' Eπ : LetA O n) (h' M σ : ℕ) (c : ZMod n) (S η m : ℕ) (up : (K →ₐ[Qp] LL) → Bool)
    (b : (K →ₐ[Qp] LL) → ℕ) (α : FrA W π' Eπ h' M c) (β : FrB W π' Eπ h' M c)
    (hIF : IsFrame W Pt π' Eπ h' M σ c α β)
    (hcr : IsCrys PD T₂.ρ) (hjump : ∀ τ, JumpsInV PD T₂.ρ τ (Set.Icc (-(h' : ℤ)) h'))
    (hMF : ModelF W T₂ Pt π' Eπ h' M c α β) (hML : ModelL W T₂ Pt π' Eπ h' M c) (hM1 : 1 ≤ M)

    (hEΔ : Eπ ∈ W.AΔ) (hπΔ : π' ∈ W.AΔ)
    (hEu : IsUnit (algebraMap (LetA O n) W.EE Eπ)) (hπu : IsUnit (algebraMap (LetA O n) W.EE π'))
    (hgam : W.gamK = W.gam)
    (hγE : ∃ uE ∈ W.AΔ, ∃ uE' ∈ W.AΔ, uE' * uE = 1 ∧ W.γA W.gam Eπ = uE * Eπ)
    (hγπ : ∃ uπ ∈ W.AΔ, W.γA W.gam π' = π' * uπ)

    (τs : Finset (K →ₐ[Qp] LL)) (hτs : ∀ τ ζ, Pt c ζ τ → τ ∈ τs) (hcard : τs.card ≤ finrank K₀ K)
    (hPo : ∀ τ ζ, Pt c ζ τ → Formalism.MainNotions.DeltaInvariantLattices.OverLetter W τ c)
    (hb : ∀ τ, 0 < b τ) (hbS : ∀ τ, b τ + S ≤ h')

    (hlevE : ∀ τ ζ, Pt c ζ τ → PowerSeries.constantCoeff (W.lev c ζ Eπ) = 0 ∧
      PowerSeries.coeff 1 (W.lev c ζ Eπ) ≠ 0)
    (hlevπ : ∀ τ ζ, Pt c ζ τ → PowerSeries.constantCoeff (W.lev c ζ π') ≠ 0)
    (hlevγ : ∀ τ ζ, Pt c ζ τ → ∀ a : LetA O n, W.lev c ζ (W.γA W.gam a) =
      PowerSeries.rescale (algebraMap O LL ((Formalism.MainNotions.DeltaInvariantLattices.uU W : Oˣ) : O)) (W.lev c ζ a))

    (r : ℕ) (bL : Basis (Fin r) O (LcQ W T₂ π' c)) (rep : Fin r → W.DD T₂)
    (hrep : ∀ k, rep k ∈ NcS W T₂ (c - 1)) (hbrep : ∀ k, bL k = mkL W T₂ π' c (rep k) (hrep k))
    (hvadd : ∀ τ ζ, Pt c ζ τ → ∀ x y, x ∈ NcS W T₂ (c - 1) → y ∈ NcS W T₂ (c - 1) →
      valAt W T₂ c ζ (x + y) = valAt W T₂ c ζ x + valAt W T₂ c ζ y)
    (hvsmul : ∀ τ ζ, Pt c ζ τ → ∀ (a : O) x, x ∈ NcS W T₂ (c - 1) →
      valAt W T₂ c ζ (a • x) = algebraMap O LL a • valAt W T₂ c ζ x)
    (hvpt : ∀ τ ζ ζ', Pt c ζ τ → Pt c ζ' τ → ∀ k, valAt W T₂ c ζ (rep k) = valAt W T₂ c ζ' (rep k))
    (hUPz : ∀ τ ζ, Pt c ζ τ → up τ = true → ∀ i : ℤ, i < -((b τ : ℤ) + S) → ∀ d : Fin r → LL,
      Phi W T₂ c ζ rep d ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T₂ τ (-i) → d = 0)
    (hUPc : ∀ τ ζ, Pt c ζ τ → up τ = true →
      r ≤ finrank LL ((Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T₂ τ (b τ)).comap (Phi W T₂ c ζ rep)) + m)
    (hDN : ∀ τ ζ, Pt c ζ τ → up τ = false →
      finrank LL ((Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T₂ τ (-(b τ : ℤ) + 1)).comap (Phi W T₂ c ζ rep)) ≤ m)
    (hDNall : ∀ τ ζ, Pt c ζ τ → up τ = false → ∀ d : Fin r → LL,
      Phi W T₂ c ζ rep d ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T₂ τ (-((b τ : ℤ) + S))) :
    FirstPropositionFrame W F Pt π' Eπ h' M c S η m up b β := by
  classical
  haveI := hdvr
  haveI := hfr
  intro _hHyp
  obtain ⟨uE, huEΔ, uE', huE'Δ, huu, hγE'⟩ := hγE
  obtain ⟨uπ, huπΔ, hγπ'⟩ := hγπ
  have hγEK : W.γA W.gamK Eπ = uE * Eπ := by rw [hgam]; exact hγE'
  have hγπK : W.γA W.gamK π' = π' * uπ := by rw [hgam]; exact hγπ'
  obtain ⟨hNLle, hNLγ, hNLA, -, -, -, hM5⟩ := hML
  have hletΔ : (letE c : LetA O n) ∈ W.AΔ := Formalism.MainNotions.LiftingTheory.idempotent_mem_invariants W c
  have hlet2 : (letE c : LetA O n) * (letE c : LetA O n) = letE c := by
    funext i; simp [letE, Pi.single_apply]

  set uO : Oˣ := Formalism.MainNotions.DeltaInvariantLattices.uU W with huO
  set u : LL := algebraMap O LL (uO : O) with hu
  have hu0 : u ≠ 0 := (uO.isUnit.map (algebraMap O LL)).ne_zero
  have hupow : ∀ t : ℤ, algebraMap O LL ((uO ^ t : Oˣ) : O) = u ^ t := by
    intro t
    have h := congrArg (fun x : LLˣ => (x : LL)) (map_zpow (Units.map (algebraMap O LL).toMonoidHom) uO t)
    rw [hu]
    rw [Units.coe_map, Units.val_zpow_eq_zpow_val, Units.coe_map] at h
    exact h
  set PΩ : Polynomial O := ∏ i ∈ OmF W c S h' up b, (Polynomial.X - Polynomial.C ((uO ^ i : Oˣ) : O)) with hPΩ
  have hPΩ1 : Polynomial.eval 1 PΩ = piOm1 W c S h' up b := by
    rw [hPΩ, Polynomial.eval_prod]
    unfold piOm1
    refine Finset.prod_congr rfl fun i _ => ?_
    rw [Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_C]
  have hPΩz : ∀ t ∈ OmF W c S h' up b, Polynomial.aeval (u ^ t) PΩ = 0 := by
    intro t ht
    rw [hPΩ, map_prod]
    apply Finset.prod_eq_zero ht
    rw [map_sub, Polynomial.aeval_X, Polynomial.aeval_C, hupow, sub_self]
  have hOmUP : ∀ τ ζ, Pt c ζ τ → up τ = true → ∀ t : ℤ, -((b τ : ℤ) + S) ≤ t → t < -(b τ : ℤ) →
      t ∈ OmF W c S h' up b := by
    intro τ ζ hpt hup t h1 h2
    unfold OmF
    rw [Finset.mem_filter, Finset.mem_Icc]
    have := hbS τ
    exact ⟨⟨by omega, by omega⟩, τ, hPo τ ζ hpt, Or.inl ⟨hup, h1, h2⟩⟩
  have hOmDN : ∀ τ ζ, Pt c ζ τ → up τ = false → ∀ t : ℤ, (b τ : ℤ) ≤ t → t < (b τ : ℤ) + S →
      t ∈ OmF W c S h' up b := by
    intro τ ζ hpt hup t h1 h2
    unfold OmF
    rw [Finset.mem_filter, Finset.mem_Icc]
    have := hbS τ
    exact ⟨⟨by omega, by omega⟩, τ, hPo τ ζ hpt, Or.inr ⟨hup, h1, h2⟩⟩

  have hPhipt : ∀ τ ζ ζ', Pt c ζ τ → Pt c ζ' τ → ∀ d, Phi W T₂ c ζ rep d = Phi W T₂ c ζ' rep d := by
    intro τ ζ ζ' h h' d
    simp only [Phi_apply]
    exact Finset.sum_congr rfl fun k _ => by rw [hvpt τ ζ ζ' h h' k]

  set UPs := τs.filter (fun τ => up τ = true ∧ ∃ ζ, Pt c ζ τ) with hUPs
  set DNs := τs.filter (fun τ => up τ = false ∧ ∃ ζ, Pt c ζ τ) with hDNs
  have hζU : ∀ τ : UPs, ∃ ζ, Pt c ζ τ := fun τ => (Finset.mem_filter.1 τ.2).2.2
  have hζD : ∀ τ : DNs, ∃ ζ, Pt c ζ τ := fun τ => (Finset.mem_filter.1 τ.2).2.2
  choose ζU hζU' using hζU
  choose ζD hζD' using hζD
  have hupU : ∀ τ : UPs, up τ = true := fun τ => (Finset.mem_filter.1 τ.2).2.1
  have hupD : ∀ τ : DNs, up τ = false := fun τ => (Finset.mem_filter.1 τ.2).2.1
  obtain ⟨k, ell, Lr, P, hrank, hCell, hrest, hPkill⟩ := decomp_coord (LL := LL) bL
    (fun τ : UPs => (Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T₂ τ (b τ)).comap (Phi W T₂ c (ζU τ) rep))
    (fun τ => hUPc τ (ζU τ) (hζU' τ) (hupU τ))
    (fun τ : DNs => (Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T₂ τ (-(b τ : ℤ) + 1)).comap (Phi W T₂ c (ζD τ) rep))
    (fun τ => hDN τ (ζD τ) (hζD' τ) (hupD τ))

  set repE : Fin k → W.DD T₂ := fun j => ∑ i, bL.repr (ell j) i • rep i with hrepE
  have hrepE_mem : ∀ j, repE j ∈ NcS W T₂ (c - 1) := fun j =>
    Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (hrep i)
  have hmkE : ∀ j, mkL W T₂ π' c (repE j) (hrepE_mem j) = ell j := by
    intro j
    calc mkL W T₂ π' c (repE j) (hrepE_mem j)
        = ∑ i, bL.repr (ell j) i • mkL W T₂ π' c (rep i) (hrep i) :=
          mkL_sum (W := W) Finset.univ _ rep hrep (hrepE_mem j)
      _ = ∑ i, bL.repr (ell j) i • bL i := by simp only [← hbrep]
      _ = ell j := bL.sum_repr _
  have hvalE : ∀ τ ζ, Pt c ζ τ → ∀ j, valAt W T₂ c ζ (repE j) =
      Phi W T₂ c ζ rep (fun i => algebraMap O LL (bL.repr (ell j) i)) := by
    intro τ ζ hpt j
    rw [Phi_apply]
    exact valAt_sum ζ (hvadd τ ζ hpt) (hvsmul τ ζ hpt) Finset.univ _ rep hrep
  have hFilE : ∀ j τ ζ, Pt c ζ τ → up τ = true →
      valAt W T₂ c ζ (repE j) ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T₂ τ (b τ) := by
    intro j τ ζ hpt hup
    have hτ : τ ∈ UPs := Finset.mem_filter.2 ⟨hτs τ ζ hpt, hup, ζ, hpt⟩
    rw [hvalE τ ζ hpt j, hPhipt τ ζ (ζU ⟨τ, hτ⟩) hpt (hζU' _)]
    exact hCell j ⟨τ, hτ⟩
  have hFilD : ∀ j τ ζ, Pt c ζ τ → up τ = false →
      valAt W T₂ c ζ (repE j) ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T₂ τ (-((b τ : ℤ) + S)) := by
    intro j τ ζ hpt hup
    rw [hvalE τ ζ hpt j]
    exact hDNall τ ζ hpt hup _
  refine ⟨Lr, k, repE, hrepE_mem, ?_, ?_, ?_, ?_⟩
  ·
    have hdis : Disjoint UPs DNs := by
      rw [Finset.disjoint_left]
      intro τ h1 h2
      have a1 := (Finset.mem_filter.1 h1).2.1
      have a2 := (Finset.mem_filter.1 h2).2.1
      rw [a1] at a2
      exact Bool.noConfusion a2
    have hsub : UPs ∪ DNs ⊆ τs := Finset.union_subset (Finset.filter_subset _ _) (Finset.filter_subset _ _)
    have hc := Finset.card_le_card hsub
    rw [Finset.card_union_of_disjoint hdis] at hc
    calc finrank O Lr ≤ (Fintype.card UPs + Fintype.card DNs) * m := hrank
      _ = (UPs.card + DNs.card) * m := by rw [Fintype.card_coe, Fintype.card_coe]
      _ ≤ finrank K₀ K * m := Nat.mul_le_mul_right _ (hc.trans hcard)
  · intro j τ _ hup ζ hpt
    exact hFilE j τ ζ hpt hup
  · rw [eq_top_iff, ← bL.span_eq, Submodule.span_le]
    rintro _ ⟨i, rfl⟩
    have h1 : ∑ j, P j i • ell j ∈ Submodule.span O (Set.range fun j => mkL W T₂ π' c (repE j) (hrepE_mem j)) :=
      Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨j, hmkE j⟩)
    have e : bL i = ∑ j, P j i • ell j + (bL i - ∑ j, P j i • ell j) := by abel
    rw [SetLike.mem_coe, e]
    exact Submodule.add_mem_sup h1 (hrest i)
  · intro w hw
    have hwL : w ∈ LamPS W T₂ Eπ h' c := (Submodule.mem_inf.mp hw).1
    obtain ⟨⟨b₀, hb₀⟩, hβ⟩ := Submodule.Quotient.mk_surjective _ (β T₂ ⟨w, hwL⟩)
    have hβ' : β T₂ ⟨w, hwL⟩ = mkLA W T₂ π' Eπ h' M c b₀ hb₀ := hβ.symm
    have hγb := gam_b Pt π' Eπ h' M σ c α β hIF hcr hjump hMF hM1 huE'Δ huu hγEK w hw b₀ hb₀ hβ'
    have hγbN : γLA W T₂ π' c b₀ - b₀ ∈ NL W T₂ Pt π' Eπ h' c := piNL_le hπΔ hNLA hγb
    obtain ⟨g, hg, hgeq⟩ := coords_of bL hb₀
    set X : Fin r → W.EE := fun i => TensorProduct.equivFinsuppOfBasisRight bL b₀ i with hX

    obtain ⟨y, hyN, hy⟩ := hγb
    obtain ⟨hh, hhΔ, hheq⟩ := coords_of bL (hNLle hyN)
    have hXγ : ∀ i, algebraMap (LetA O n) W.EE (Eπ ^ h') * (W.γE W.gamK (X i) - X i) =
        algebraMap (LetA O n) W.EE (π' * ((letE c : LetA O n) * hh i)) := by
      intro i
      have e1 : W.γE W.gamK (X i) - X i = algebraMap (LetA O n) W.EE π' *
          TensorProduct.equivFinsuppOfBasisRight bL y i := by
        rw [hX]
        dsimp only
        rw [← coord_γLA W T₂ π' c bL b₀ i, ← coord_sub W T₂ π' c bL, ← hy, pow_one, MQ.smulLA_eq,
          MQ.coord_smulE]
      rw [e1, mul_left_comm, hheq i, ← map_mul]

    set G : Fin k → LetA O n := fun j => ∑ i, algebraMap O (LetA O n) (P j i) * g i with hG
    set H : Fin k → LetA O n := fun j => ∑ i, algebraMap O (LetA O n) (P j i) * hh i with hH
    set fj : Fin k → W.EE := fun j => ∑ i, algebraMap O W.EE (P j i) * X i with hfj_def
    have hGΔ : ∀ j, G j ∈ W.AΔ := fun j =>
      Subalgebra.sum_mem _ fun i _ => Subalgebra.mul_mem _ (Subalgebra.algebraMap_mem _ _) (hg i)
    have hHΔ : ∀ j, H j ∈ W.AΔ := fun j =>
      Subalgebra.sum_mem _ fun i _ => Subalgebra.mul_mem _ (Subalgebra.algebraMap_mem _ _) (hhΔ i)
    have hfj : ∀ j, algebraMap (LetA O n) W.EE (Eπ ^ h') * fj j =
        algebraMap (LetA O n) W.EE ((letE c : LetA O n) * G j) := by
      intro j

      simp only [hfj_def, hG, Finset.mul_sum, map_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [IsScalarTower.algebraMap_apply O (LetA O n) W.EE, mul_left_comm, hgeq i, ← map_mul]
      congr 1
      ring
    have hfjγ : ∀ j, algebraMap (LetA O n) W.EE (Eπ ^ h') * (W.γE W.gam (fj j) - fj j) =
        algebraMap (LetA O n) W.EE (π' * ((letE c : LetA O n) * H j)) := by
      intro j
      have hγfj : W.γE W.gam (fj j) = ∑ i, algebraMap O W.EE (P j i) * W.γE W.gam (X i) := by

        simp only [hfj_def, map_sum, map_mul, AlgHom.commutes]
      rw [hγfj, hfj_def]
      dsimp only
      rw [← Finset.sum_sub_distrib, Finset.mul_sum, hH]
      dsimp only

      rw [Finset.mul_sum, Finset.mul_sum, map_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      have hx := hXγ i
      rw [hgam] at hx
      rw [IsScalarTower.algebraMap_apply O (LetA O n) W.EE, ← mul_sub, mul_left_comm, hx, ← map_mul]
      congr 1
      ring

    set f' : Fin k → W.EE := fun j => Polynomial.aeval (W.γE W.gam).toLinearMap PΩ (fj j) with hf'_def
    set a' : Fin k → LetA O n := fun j => Polynomial.aeval (twA W uE' h') PΩ ((letE c : LetA O n) * G j)
      with ha'_def
    have ha'Δ : ∀ j, a' j ∈ W.AΔ := fun j =>
      aeval_twA_mem uE' h' huE'Δ PΩ (Subalgebra.mul_mem _ hletΔ (hGΔ j))
    have ha'c : ∀ j, a' j = (letE c : LetA O n) * Polynomial.aeval (twA W uE' h') PΩ (G j) := fun j =>
      aeval_twA_letE uE' h' c PΩ (G j)
    have hf'a : ∀ j, algebraMap (LetA O n) W.EE (Eπ ^ h') * f' j = algebraMap (LetA O n) W.EE (a' j) :=
      fun j => EE_aeval Eπ h' uE uE' huu hγE' PΩ (fj j) _ (hfj j)
    have hf'γ : ∀ j, algebraMap (LetA O n) W.EE (Eπ ^ h') * (W.γE W.gam (f' j) - f' j) =
        algebraMap (LetA O n) W.EE (Polynomial.aeval (twA W uE' h') PΩ (π' * ((letE c : LetA O n) * H j))) := by
      intro j
      have e : W.γE W.gam (f' j) - f' j =
          Polynomial.aeval (W.γE W.gam).toLinearMap PΩ (W.γE W.gam (fj j) - fj j) := by
        rw [map_sub]
        exact congrArg (· - f' j) (aeval_comm (W.γE W.gam).toLinearMap PΩ (fj j)).symm
      rw [e]
      exact EE_aeval Eπ h' uE uE' huu hγE' PΩ _ _ (hfjγ j)

    set Sπ : Submodule O (LetA O n) :=
      (Subalgebra.toSubmodule W.AΔ).map (LinearMap.mulLeft O (π' * (letE c : LetA O n))) with hSπ_def
    have hSπ : ∀ v ∈ Sπ, twA W uE' h' v ∈ Sπ := by
      rintro _ ⟨z, hz, rfl⟩
      have hz' : twA W uE' h' z ∈ W.AΔ := by
        simpa using aeval_twA_mem uE' h' huE'Δ Polynomial.X hz
      refine ⟨uπ * twA W uE' h' z, Subalgebra.mul_mem _ huπΔ hz', ?_⟩
      simp only [LinearMap.mulLeft_apply, twA_apply, map_mul, hγπ', Formalism.MainNotions.LiftingTheory.gammaA_letter_idempotent]
      ring
    have hzmem : ∀ j, Polynomial.aeval (twA W uE' h') PΩ (π' * ((letE c : LetA O n) * H j)) ∈ Sπ :=
      fun j => Polynomial.aeval_apply_smul_mem_of_le_comap (q := Sπ)
        ⟨H j, hHΔ j, by simp⟩ PΩ (twA W uE' h') (fun _ hv => hSπ _ hv)
    choose zj hzjΔ hzj using fun j => Submodule.mem_map.1 (hzmem j)
    simp only [LinearMap.mulLeft_apply] at hzj

    have hpf : ∀ τ ζ, Pt c ζ τ → ∀ t : ℤ, t ≠ 0 →
        Phi W T₂ c ζ rep (fun i => ev W c ζ Eπ h' (g i) t) ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T₂ τ (-t) :=
      fun τ ζ hpt => pt_fil Pt π' Eπ h' M c hM5 bL rep hrep hbrep b₀ hb₀ hγbN g hg hgeq τ ζ hpt
        (hlevE τ ζ hpt).1 (hlevE τ ζ hpt).2
    have hevG : ∀ j (ζ : LL) (t : ℤ), ev W c ζ Eπ h' (G j) t =
        ∑ i, algebraMap O LL (P j i) * ev W c ζ Eπ h' (g i) t := by
      intro j ζ t
      simp only [hG, ev_sum, ev_alg]
    have hUPv : ∀ j τ ζ, Pt c ζ τ → up τ = true → ∀ t : ℤ, t < -((b τ : ℤ) + S) →
        ev W c ζ Eπ h' (G j) t = 0 := by
      intro j τ ζ hpt hup t ht
      have hb1 := hb τ
      have hv := hUPz τ ζ hpt hup t ht _ (hpf τ ζ hpt t (by omega))
      rw [hevG]
      exact Finset.sum_eq_zero fun i _ => by
        rw [show ev W c ζ Eπ h' (g i) t = 0 from congrFun hv i, mul_zero]
    have hDNv : ∀ j τ ζ, Pt c ζ τ → up τ = false → ∀ t : ℤ, t < (b τ : ℤ) → t ≠ 0 →
        ev W c ζ Eπ h' (G j) t = 0 := by
      intro j τ ζ hpt hup t ht ht0
      have hτ : τ ∈ DNs := Finset.mem_filter.2 ⟨hτs τ ζ hpt, hup, ζ, hpt⟩
      have hv' : Phi W T₂ c (ζD ⟨τ, hτ⟩) rep (fun i => ev W c ζ Eπ h' (g i) t) ∈
          Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T₂ τ (-(b τ : ℤ) + 1) := by
        rw [← hPhipt τ ζ (ζD ⟨τ, hτ⟩) hpt (hζD' _)]
        exact u3upPf_FilC_anti T₂ τ (a := -t) (a' := -(b τ : ℤ) + 1) (by omega) (hpf τ ζ hpt t ht0)
      rw [hevG]
      exact hPkill ⟨τ, hτ⟩ _ hv' j
    have heva' : ∀ j τ ζ, Pt c ζ τ → ∀ t : ℤ,
        ev W c ζ Eπ h' (a' j) t = Polynomial.aeval (u ^ t) PΩ * ev W c ζ Eπ h' (G j) t := by
      intro j τ ζ hpt t
      rw [ha'c j, ev_letE]
      exact ev_aeval_twA c ζ Eπ h' (hlevE τ ζ hpt).1 (hlevE τ ζ hpt).2 uE uE' huu hγE' u hu0
        (hlevγ τ ζ hpt) PΩ (G j) t
    have hUPa : ∀ j τ ζ, Pt c ζ τ → up τ = true → ∀ t : ℤ, t < -(b τ : ℤ) → ev W c ζ Eπ h' (a' j) t = 0 := by
      intro j τ ζ hpt hup t ht
      rw [heva' j τ ζ hpt t]
      by_cases h : t < -((b τ : ℤ) + S)
      · rw [hUPv j τ ζ hpt hup t h, mul_zero]
      · rw [hPΩz t (hOmUP τ ζ hpt hup t (by omega) ht), zero_mul]
    have hDNa : ∀ j τ ζ, Pt c ζ τ → up τ = false → ∀ t : ℤ, t < (b τ : ℤ) + S → t ≠ 0 →
        ev W c ζ Eπ h' (a' j) t = 0 := by
      intro j τ ζ hpt hup t ht ht0
      rw [heva' j τ ζ hpt t]
      by_cases h : t < (b τ : ℤ)
      · rw [hDNv j τ ζ hpt hup t h ht0, mul_zero]
      · rw [hPΩz t (hOmDN τ ζ hpt hup t (by omega) ht), zero_mul]

    have h1tw : ∀ j, algebraMap (LetA O n) W.EE (Eπ ^ h') * W.γE W.gam (f' j) =
        algebraMap (LetA O n) W.EE (twA W uE' h' (a' j)) := by
      intro j
      have := EE_aeval Eπ h' uE uE' huu hγE' Polynomial.X (f' j) (a' j) (hf'a j)
      simpa [Polynomial.aeval_X] using this
    have htw : ∀ j, twA W uE' h' (a' j) - a' j = π' * (letE c : LetA O n) * zj j := by
      intro j
      apply W.EE_inj
      rw [map_sub, ← h1tw j, ← hf'a j, ← mul_sub, hf'γ j, hzj j]
    have hevtw : ∀ j τ ζ, Pt c ζ τ → ∀ t : ℤ,
        ev W c ζ Eπ h' (twA W uE' h' (a' j) - a' j) t = (u ^ t - 1) * ev W c ζ Eπ h' (a' j) t := by
      intro j τ ζ hpt t
      have hsub : ∀ x y : LetA O n, ev W c ζ Eπ h' (x - y) t = ev W c ζ Eπ h' x t - ev W c ζ Eπ h' y t := by
        intro x y
        have := ev_add (W := W) (c := c) (ζ := ζ) (Eπ := Eπ) (h' := h') (x - y) y t
        rw [sub_add_cancel] at this
        rw [this, add_sub_cancel_right]
      have htw1 := ev_aeval_twA c ζ Eπ h' (hlevE τ ζ hpt).1 (hlevE τ ζ hpt).2 uE uE' huu hγE' u hu0
        (hlevγ τ ζ hpt) Polynomial.X (a' j) t
      rw [Polynomial.aeval_X, Polynomial.aeval_X] at htw1
      rw [hsub, htw1]
      ring
    have hzlev : ∀ j τ ζ, Pt c ζ τ → ∀ t₀ : ℤ, (∀ t < t₀, (u ^ t - 1) * ev W c ζ Eπ h' (a' j) t = 0) →
        ∀ m₁ : ℕ, (m₁ : ℤ) < t₀ + h' → PowerSeries.coeff m₁ (W.lev c ζ (zj j)) = 0 := by
      intro j τ ζ hpt t₀ ht m₁ hm₁
      refine ps_coeff_cancel (W.lev c ζ π') (W.lev c ζ (zj j)) (hlevπ τ ζ hpt) (m₁ + 1) (fun i hi => ?_) m₁
        (Nat.lt_succ_self _)
      have h1 := lev_zero_of_ev (hlevE τ ζ hpt).2 (twA W uE' h' (a' j) - a' j) t₀
        (fun t htt => by rw [hevtw j τ ζ hpt t]; exact ht t htt) i (by omega)
      rwa [htw j, _root_.map_mul (W.lev c ζ), _root_.map_mul (W.lev c ζ), ModelFPf.lev_letE, mul_one] at h1
    have hzUP : ∀ j τ ζ, Pt c ζ τ → up τ = true → ∀ m₁ : ℕ, (m₁ : ℤ) < h' - b τ →
        PowerSeries.coeff m₁ (W.lev c ζ (zj j)) = 0 := by
      intro j τ ζ hpt hup m₁ hm₁
      exact hzlev j τ ζ hpt (-(b τ : ℤ)) (fun t ht => by rw [hUPa j τ ζ hpt hup t ht, mul_zero]) m₁ (by omega)
    have hzDN : ∀ j τ ζ, Pt c ζ τ → up τ = false → ∀ m₁ : ℕ, (m₁ : ℤ) < h' + b τ + S →
        PowerSeries.coeff m₁ (W.lev c ζ (zj j)) = 0 := by
      intro j τ ζ hpt hup m₁ hm₁
      refine hzlev j τ ζ hpt ((b τ : ℤ) + S) (fun t ht => ?_) m₁ (by omega)
      by_cases h0 : t = 0
      · rw [h0, zpow_zero, sub_self, zero_mul]
      · rw [hDNa j τ ζ hpt hup t ht h0, mul_zero]

    have hcoord : ∀ j, IsCoord W Pt π' Eπ h' S up b c (f' j) := by
      intro j
      refine ⟨a' j, ha'Δ j, ?_, hf'a j, ?_, ?_, letE c * zj j, Subalgebra.mul_mem _ hletΔ (hzjΔ j), ?_⟩
      · rw [ha'c j, ← mul_assoc, hlet2]
      · intro τ ζ hpt hup i hi
        exact lev_zero_of_ev (hlevE τ ζ hpt).2 (a' j) (-(b τ : ℤ)) (hUPa j τ ζ hpt hup) i (by omega)
      · intro τ ζ hpt hup
        exact ⟨ev W c ζ Eπ h' (a' j) 0, fun i hi => lev_const_of_ev (hlevE τ ζ hpt).1 (hlevE τ ζ hpt).2 (a' j)
          ((b τ : ℤ) + S) (hDNa j τ ζ hpt hup) i (by omega)⟩
      · rw [hgam, hf'γ j, ← hzj j, mul_assoc]

    have hΛu : IsUnit (algebraMap (LetA O n) W.EE (Eπ ^ h')) := by rw [map_pow]; exact hEu.pow _
    have hiv : ∀ j, f' j ⊗ₜ mkL W T₂ π' c (repE j) (hrepE_mem j) ∈ InvL W T₂ Pt π' Eπ h' c ⊤ := by
      intro j
      refine Submodule.mem_inf.2 ⟨?_, ?_⟩
      · show smulLA W T₂ π' c (Eπ ^ h') (f' j ⊗ₜ _) ∈ LinearMap.range (toLA W T₂ π' c ⊤)
        rw [ModelFPf.smulLA_tmul, hf'a j, ha'c j]
        have := ModelFPf.rep_mem (W := W) (T := T₂) (π' := π') (c := c)
          (fun _ : Fin 1 => Polynomial.aeval (twA W uE' h') PΩ (G j))
          (fun _ => aeval_twA_mem uE' h' huE'Δ PΩ (hGΔ j)) (fun _ => repE j) (fun _ => hrepE_mem j)
        rwa [Fin.sum_univ_one] at this
      · set Gc : W.EE := ((hΛu.unit⁻¹ : W.EEˣ) : W.EE) * algebraMap (LetA O n) W.EE ((letE c : LetA O n) * zj j)
          with hGc_def
        have hΛGc : algebraMap (LetA O n) W.EE (Eπ ^ h') * Gc =
            algebraMap (LetA O n) W.EE ((letE c : LetA O n) * zj j) := by
          rw [hGc_def, ← mul_assoc, hΛu.mul_val_inv, one_mul]
        have hGc : W.γE W.gamK (f' j) - f' j = algebraMap (LetA O n) W.EE π' * Gc := by
          have e1 : algebraMap (LetA O n) W.EE (Eπ ^ h') * (W.γE W.gamK (f' j) - f' j) =
              algebraMap (LetA O n) W.EE (Eπ ^ h') * (algebraMap (LetA O n) W.EE π' * Gc) := by
            rw [hgam, hf'γ j, ← hzj j, mul_left_comm, hΛGc, ← map_mul, mul_assoc]
          exact (hΛu.mul_right_inj).1 e1
        rw [Submodule.mem_comap, LinearMap.sub_apply, LinearMap.id_apply, ModelFPf.γLA_tmul,
          ← TensorProduct.sub_tmul, hGc]
        refine ⟨Gc ⊗ₜ mkL W T₂ π' c (repE j) (hrepE_mem j), Submodule.subset_span ?_, ?_⟩
        · refine ⟨1, fun _ => ⟨zj j, hzjΔ j⟩, fun _ => repE j, ⟨fun _ => hrepE_mem j, ?_⟩, ?_⟩
          · rw [Fin.sum_univ_one]
            show smulLA W T₂ π' c (Eπ ^ h') (Gc ⊗ₜ _) = _
            rw [ModelFPf.smulLA_tmul, hΛGc]
          · intro τ ζ hpt i
            show (∑ _ : Fin 1, serC (W.lev c ζ (zj j)) (valAt W T₂ c ζ (repE j)) i) ∈ _
            rw [Fin.sum_univ_one]
            unfold serC
            split_ifs with hi
            · by_cases hup : up τ = true
              · by_cases hlow : i < (h' : ℤ) - b τ
                · rw [hzUP j τ ζ hpt hup _ (by omega), zero_smul]
                  exact Submodule.zero_mem _
                · exact Submodule.smul_mem _ _ (u3upPf_FilC_anti T₂ τ (a := b τ) (a' := h' - i) (by omega)
                    (hFilE j τ ζ hpt hup))
              · have hup' : up τ = false := by simpa using hup
                by_cases hlow : i < (h' : ℤ) + b τ + S
                · rw [hzDN j τ ζ hpt hup' _ (by omega), zero_smul]
                  exact Submodule.zero_mem _
                · exact Submodule.smul_mem _ _ (u3upPf_FilC_anti T₂ τ (a := -((b τ : ℤ) + S)) (a' := h' - i)
                    (by omega) (hFilD j τ ζ hpt hup'))
            · exact Submodule.zero_mem _
        · rw [pow_one, ModelFPf.smulLA_tmul]

    set ρ : Fin r → LcQ W T₂ π' c := fun i => bL i - ∑ j, P j i • ell j with hρ
    set xr : LA W T₂ π' c := ∑ i, Polynomial.aeval (W.γE W.gam).toLinearMap PΩ (X i) ⊗ₜ ρ i with hxr
    have hb0 : b₀ = ∑ i, X i ⊗ₜ bL i := tensor_eq_sum W T₂ π' c bL b₀
    have hb₀dec : b₀ = ∑ i, X i ⊗ₜ ρ i + ∑ j, fj j ⊗ₜ ell j := by
      have e : ∀ i, X i ⊗ₜ[O] bL i = X i ⊗ₜ ρ i + ∑ j, (algebraMap O W.EE (P j i) * X i) ⊗ₜ ell j := by
        intro i
        rw [show bL i = ρ i + ∑ j, P j i • ell j by simp [hρ], TensorProduct.tmul_add, TensorProduct.tmul_sum]
        congr 1
        refine Finset.sum_congr rfl fun j _ => ?_
        rw [TensorProduct.tmul_smul, TensorProduct.smul_tmul', Algebra.smul_def]
      rw [hb0, Finset.sum_congr rfl fun i _ => e i, Finset.sum_add_distrib, Finset.sum_comm]
      congr 1
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [← TensorProduct.sum_tmul]
    have hstar : Polynomial.aeval (γLA W T₂ π' c) PΩ b₀ =
        xr + ∑ j, f' j ⊗ₜ mkL W T₂ π' c (repE j) (hrepE_mem j) := by
      conv_lhs => rw [hb₀dec]

      rw [map_add (f := _), map_sum, map_sum]
      simp only [aeval_γLA_tmul, hgam, hmkE]
      rfl
    have hxrL : xr ∈ LamLA W T₂ π' Eπ h' c Lr := by
      show smulLA W T₂ π' c (Eπ ^ h') xr ∈ LinearMap.range (toLA W T₂ π' c Lr)

      rw [hxr, map_sum]
      refine Submodule.sum_mem _ fun i _ => ?_
      rw [ModelFPf.smulLA_tmul, EE_aeval Eπ h' uE uE' huu hγE' PΩ (X i) _ (hgeq i), aeval_twA_letE]
      exact ⟨⟨Polynomial.aeval (twA W uE' h') PΩ (g i), aeval_twA_mem uE' h' huE'Δ PΩ (hg i)⟩ ⊗ₜ
        ⟨ρ i, hrest i⟩, rfl⟩
    have hpiγ : ∀ v ∈ piNL W T₂ Pt π' Eπ h' c 1, γLA W T₂ π' c v ∈ piNL W T₂ Pt π' Eπ h' c 1 :=
      fun v hv => piNL_γ hNLγ hNLA huπΔ hγπK hv
    have hγb1 : γLA W T₂ π' c b₀ - b₀ ∈ piNL W T₂ Pt π' Eπ h' c 1 := ⟨y, hyN, hy⟩
    have hPb : γLA W T₂ π' c (Polynomial.aeval (γLA W T₂ π' c) PΩ b₀) - Polynomial.aeval (γLA W T₂ π' c) PΩ b₀ ∈
        piNL W T₂ Pt π' Eπ h' c 1 := by
      rw [← aeval_comm, ← map_sub]
      exact Polynomial.aeval_apply_smul_mem_of_le_comap hγb1 PΩ _ (fun _ hv => hpiγ _ hv)
    have hxrI : xr ∈ InvL W T₂ Pt π' Eπ h' c Lr := by
      refine Submodule.mem_inf.2 ⟨hxrL, ?_⟩
      rw [Submodule.mem_comap]
      have e : xr = Polynomial.aeval (γLA W T₂ π' c) PΩ b₀ -
          ∑ j, f' j ⊗ₜ mkL W T₂ π' c (repE j) (hrepE_mem j) := by
        rw [hstar, add_sub_cancel_right]
      rw [LinearMap.sub_apply, LinearMap.id_apply, e]
      have e3 : γLA W T₂ π' c (Polynomial.aeval (γLA W T₂ π' c) PΩ b₀ -
            ∑ j, f' j ⊗ₜ mkL W T₂ π' c (repE j) (hrepE_mem j)) -
          (Polynomial.aeval (γLA W T₂ π' c) PΩ b₀ - ∑ j, f' j ⊗ₜ mkL W T₂ π' c (repE j) (hrepE_mem j)) =
          (γLA W T₂ π' c (Polynomial.aeval (γLA W T₂ π' c) PΩ b₀) - Polynomial.aeval (γLA W T₂ π' c) PΩ b₀) -
            ∑ j, (γLA W T₂ π' c (f' j ⊗ₜ mkL W T₂ π' c (repE j) (hrepE_mem j)) -
              f' j ⊗ₜ mkL W T₂ π' c (repE j) (hrepE_mem j)) := by

        rw [map_sub, map_sum, Finset.sum_sub_distrib]
        abel
      rw [e3]
      refine Submodule.sub_mem _ hPb (Submodule.sum_mem _ fun j _ => ?_)
      have h4 := Submodule.mem_comap.1 (Submodule.mem_inf.1 (hiv j)).2
      rwa [LinearMap.sub_apply, LinearMap.id_apply] at h4
    have hx : piOm1 W c S h' up b • b₀ ∈ LamLA W T₂ π' Eπ h' c ⊤ := Submodule.smul_mem _ _ hb₀
    refine ⟨f', piOm1 W c S h' up b • b₀, hx, xr, hcoord, hiv, hxrI, ?_, ?_⟩
    · have e : (⟨piOm1 W c S h' up b • w, (LamPS W T₂ Eπ h' c).smul_mem _ (Submodule.mem_inf.mp hw).1⟩ :
          ↥(LamPS W T₂ Eπ h' c)) = piOm1 W c S h' up b • ⟨w, hwL⟩ := rfl
      rw [e, map_smul, hβ']
      rfl
    · have hroot : (PΩ - Polynomial.C (Polynomial.eval 1 PΩ)).IsRoot 1 := by simp
      obtain ⟨R, hR⟩ : ∃ R, PΩ - Polynomial.C (Polynomial.eval 1 PΩ) = R * (Polynomial.X - Polynomial.C 1) :=
        ⟨_, by rw [mul_comm]; exact (Polynomial.mul_divByMonic_eq_iff_isRoot.2 hroot).symm⟩
      have h3 : Polynomial.aeval (γLA W T₂ π' c) (PΩ - Polynomial.C (Polynomial.eval 1 PΩ)) b₀ =
          Polynomial.aeval (γLA W T₂ π' c) R (γLA W T₂ π' c b₀ - b₀) := by
        rw [hR, map_mul, Module.End.mul_apply, map_sub, Polynomial.aeval_X, Polynomial.aeval_C, map_one,
          LinearMap.sub_apply, Module.End.one_apply]
      have e2 : piOm1 W c S h' up b • b₀ - ∑ j, f' j ⊗ₜ mkL W T₂ π' c (repE j) (hrepE_mem j) - xr =
          -(Polynomial.aeval (γLA W T₂ π' c) R (γLA W T₂ π' c b₀ - b₀)) := by
        rw [← h3, map_sub, LinearMap.sub_apply, Polynomial.aeval_C, Module.algebraMap_end_apply, hPΩ1, hstar]
        abel
      rw [e2]
      exact Submodule.neg_mem _
        (Polynomial.aeval_apply_smul_mem_of_le_comap hγb1 R _ (fun _ hv => hpiγ _ hv))

end Formalism.MainNotions.N.Ln34.UniversalLiftFrames
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftFrame =====
