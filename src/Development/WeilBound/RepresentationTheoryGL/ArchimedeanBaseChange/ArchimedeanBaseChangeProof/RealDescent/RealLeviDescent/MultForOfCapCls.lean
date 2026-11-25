module

public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairStructureOnLine
public import CompanionTheory.HarishChandraModules.LowKTypeMultiplicity.DiscreteSeriesCharacters.DiscreteSeriesInfinitesimalCharacter
public import CompanionTheory.HarishChandraModules.LowKTypeMultiplicity.EigenspaceCyclicDensity.CreationOperators.RhoSurj
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.LeviCommutantWordReduction
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwLMulSelf
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveWedgeHighestCoefficient
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.NoSecondTypeWeight
public import CompanionTheory.RealGroups.DiscreteSeries.DiscreteSeriesClassification.DiscreteSeriesExhaustion.FarRegularity.LKTExists
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.InjectiveDecompositionActionHolds
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CommutantReductionReal
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LeviStabilityReal
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ScalarActionFifthReal
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
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
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
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.TypeStar
import Std.Tactic.BVDecide.Normalize.Bool
import Mathlib.Tactic.ENatToNat

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsEvaluationOfMemAdjoin, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvariantPickReal, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LeviRelationsReal, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CreqAnnqTopqSame, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemisimpleClassificationReal, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.FirstSubSecondLeviFamily, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.MultForOf, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.MultForOfCapCls

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsEvaluationOfMemAdjoin =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsEvaluationOfMemAdjoin", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairStructureOnLine\npublic import CompanionTheory.HarishChandraModules.LowKTypeMultiplicity.DiscreteSeriesCharacters.DiscreteSeriesInfinitesimalCharacter\npublic import CompanionTheory.HarishChandraModules.LowKTypeMultiplicity.EigenspaceCyclicDensity.CreationOperators.RhoSurj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset
open scoped InnerProductSpace

noncomputable section

namespace GlobalTheory.CompanionTheory.RealMult.Lift

open PositivityTheory.RgBcC PositivityTheory.RgBcC.Real PositivityTheory.RgBcC.RealD
open Formalism.REAL (GlRel KHighest)
open CompanionTheory.D.DSIC (KRel KUnit KStab)
open CompanionTheory.D.LK (ev allT)

variable {n : ℕ}

def kap : FreeAlgebra ℂ (Fin n × Fin n) →ₐ[ℂ] FreeAlgebra ℂ (Lt n) :=
  FreeAlgebra.lift ℂ fun p => FreeAlgebra.ι ℂ (true, p) + FreeAlgebra.ι ℂ (false, p)

def Cyc2 {V : Type} [AddCommGroup V] [Module ℂ V] (E1 E2 : Fin n → Fin n → Module.End ℂ V) (v : V) : Submodule ℂ V :=
  LinearMap.range ((LinearMap.applyₗ v).comp (ev2 E1 E2).toLinearMap)

section Alg

variable {V : Type} [AddCommGroup V] [Module ℂ V] {E1 E2 : Fin n → Fin n → Module.End ℂ V}

theorem mem_cyclic_span_iff {v w : V} : w ∈ Cyc2 E1 E2 v ↔ ∃ a, ev2 E1 E2 a v = w := Iff.rfl

theorem evaluation_kappa (r : FreeAlgebra ℂ (Fin n × Fin n)) :
    ev2 E1 E2 (kap r) = ev (fun a b => E1 a b + E2 a b) r := by
  have : (ev2 E1 E2).comp kap = ev (fun a b => E1 a b + E2 a b) := by
    ext p
    simp [kap, ev2, ev]
  exact DFunLike.congr_fun this r

theorem cyclic_span_stable_alt {v w : V} (c d : Fin n) (h : w ∈ Cyc2 E1 E2 v) : (E1 c d + E2 c d) w ∈ Cyc2 E1 E2 v := by
  obtain ⟨a, rfl⟩ := mem_cyclic_span_iff.1 h
  exact mem_cyclic_span_iff.2 ⟨(FreeAlgebra.ι ℂ (true, c, d) + FreeAlgebra.ι ℂ (false, c, d)) * a, by simp [ev2]⟩

theorem exists_evaluation_of_mem_adjoin {x : Module.End ℂ V}
    (hx : x ∈ Algebra.adjoin ℂ {x : Module.End ℂ V | ∃ a b, x = E1 a b ∨ x = E2 a b}) :
    ∃ a, ev2 E1 E2 a = x := by
  have hle : Algebra.adjoin ℂ {x : Module.End ℂ V | ∃ a b, x = E1 a b ∨ x = E2 a b} ≤ (ev2 E1 E2).range := by
    refine Algebra.adjoin_le ?_
    rintro _ ⟨a, b, rfl | rfl⟩
    · exact ⟨FreeAlgebra.ι ℂ (true, a, b), by simp [ev2]⟩
    · exact ⟨FreeAlgebra.ι ℂ (false, a, b), by simp [ev2]⟩
  obtain ⟨a, ha⟩ := hle hx
  exact ⟨a, ha⟩

theorem sum_gl (h : Pair2 E1 E2) : GlRel fun a b => E1 a b + E2 a b := by
  intro a b c d
  have h1 := h.gl1 a b c d
  have h2 := h.gl2 a b c d
  have c1 := h.comm a b c d
  have c2 := h.comm c d a b
  have e : (E1 a b + E2 a b) * (E1 c d + E2 c d) - (E1 c d + E2 c d) * (E1 a b + E2 a b) =
      (E1 a b * E1 c d - E1 c d * E1 a b) + (E2 a b * E2 c d - E2 c d * E2 a b) +
        (E1 a b * E2 c d - E2 c d * E1 a b) - (E1 c d * E2 a b - E2 a b * E1 c d) := by noncomm_ring
  show (E1 a b + E2 a b) * (E1 c d + E2 c d) - (E1 c d + E2 c d) * (E1 a b + E2 a b) = _
  rw [e, h1, h2, c1, c2]
  beta_reduce
  split_ifs <;> abel

theorem ad_letter (h : Pair2 E1 E2) (c d : Fin n) (s : Bool) (a b : Fin n) :
    (E1 c d + E2 c d) * (if s then E1 a b else E2 a b) - (if s then E1 a b else E2 a b) * (E1 c d + E2 c d) =
      (if d = a then (if s then E1 c b else E2 c b) else 0) - (if b = c then (if s then E1 a d else E2 a d) else 0) := by
  cases s
  · have h2 := h.gl2 c d a b
    have c1 := h.comm c d a b
    simp only [Bool.false_eq_true, if_false]
    rw [add_mul, mul_add, c1]
    have : E2 a b * E1 c d + E2 c d * E2 a b - (E2 a b * E1 c d + E2 a b * E2 c d) =
      E2 c d * E2 a b - E2 a b * E2 c d := by abel
    rw [this, h2]
  · have h1 := h.gl1 c d a b
    have c1 := h.comm a b c d
    simp only [if_true]
    rw [add_mul, mul_add, ← c1]
    have : E1 c d * E1 a b + E1 a b * E2 c d - (E1 a b * E1 c d + E1 a b * E2 c d) =
      E1 c d * E1 a b - E1 a b * E1 c d := by abel
    rw [this, h1]

end Alg

def AdFam {ι : Type} [Fintype ι] (w : ι → FreeAlgebra ℂ (Lt n)) (M : Fin n → Fin n → Matrix ι ι ℂ) : Prop :=
  (∀ c d i j, star (M c d j i) = M d c i j) ∧
  ∀ (V : Type) [AddCommGroup V] [Module ℂ V] (E1 E2 : Fin n → Fin n → Module.End ℂ V), Pair2 E1 E2 →
    ∀ c d i, (E1 c d + E2 c d) * ev2 E1 E2 (w i) - ev2 E1 E2 (w i) * (E1 c d + E2 c d) =
      ∑ j, M c d j i • ev2 E1 E2 (w j)

theorem exists_adFam (a : FreeAlgebra ℂ (Lt n)) :
    ∃ (ι : Type) (_ : Fintype ι) (w : ι → FreeAlgebra ℂ (Lt n)) (M : Fin n → Fin n → Matrix ι ι ℂ)
      (t : ι → ℂ), AdFam w M ∧ a = ∑ i, t i • w i := by
  classical
  induction a using FreeAlgebra.induction with
  | grade0 r =>
    refine ⟨Unit, inferInstance, fun _ => 1, fun _ _ => 0, fun _ => r, ⟨?_, ?_⟩, ?_⟩
    · intro c d i j; simp
    · intro V _ _ E1 E2 _ c d i; simp
    · simp [Algebra.algebraMap_eq_smul_one]
  | grade1 x =>
    refine ⟨Lt n, inferInstance, fun p => FreeAlgebra.ι ℂ p,
      fun c d => Matrix.of fun j i => (if d = i.2.1 ∧ j = (i.1, c, i.2.2) then 1 else 0) -
        (if i.2.2 = c ∧ j = (i.1, i.2.1, d) then 1 else 0),
      Pi.single x 1, ⟨?_, ?_⟩, ?_⟩
    · rintro c d ⟨s, i1, i2⟩ ⟨s', j1, j2⟩
      simp only [Matrix.of_apply, star_sub, Prod.mk.injEq, apply_ite star, star_one, star_zero]
      congr 1
      · apply if_congr _ rfl rfl
        constructor <;> rintro ⟨h1, h2, h3, h4⟩ <;> exact ⟨h3.symm, h2.symm, h1.symm, h4.symm⟩
      · apply if_congr _ rfl rfl
        constructor <;> rintro ⟨h1, h2, h3, h4⟩ <;> exact ⟨h4, h2.symm, h3.symm, h1⟩
    · rintro V _ _ E1 E2 hE c d ⟨s, a, b⟩
      have h := ad_letter hE c d s a b
      simp only [ev2, FreeAlgebra.lift_ι_apply, Matrix.of_apply, sub_smul, Finset.sum_sub_distrib]
      rw [h]
      congr 1
      · by_cases h1 : d = a
        · simp only [h1, true_and, if_true, ite_smul, one_smul, zero_smul, Finset.sum_ite_eq', Finset.mem_univ]
        · simp [h1]
      · by_cases h1 : b = c
        · simp only [h1, true_and, if_true, ite_smul, one_smul, zero_smul, Finset.sum_ite_eq', Finset.mem_univ]
        · simp [h1]
    · simp [Pi.single_apply]
  | mul a b ha hb =>
    obtain ⟨ι, _, w, M, t, ⟨h1, h2⟩, rfl⟩ := ha
    obtain ⟨ι', _, w', M', t', ⟨h1', h2'⟩, rfl⟩ := hb
    refine ⟨ι × ι', inferInstance, fun p => w p.1 * w' p.2,
      fun c d => Matrix.of fun j i => (if j.2 = i.2 then M c d j.1 i.1 else 0) + (if j.1 = i.1 then M' c d j.2 i.2 else 0),
      fun p => t p.1 * t' p.2, ⟨?_, ?_⟩, ?_⟩
    · rintro c d ⟨i1, i2⟩ ⟨j1, j2⟩
      simp only [Matrix.of_apply, star_add, apply_ite star, star_zero, h1, h1', eq_comm]
    · rintro V _ _ E1 E2 hE c d ⟨i, i'⟩
      have e1 := h2 V E1 E2 hE c d i
      have e2 := h2' V E1 E2 hE c d i'
      have : (E1 c d + E2 c d) * ev2 E1 E2 (w i * w' i') - ev2 E1 E2 (w i * w' i') * (E1 c d + E2 c d) =
          ((E1 c d + E2 c d) * ev2 E1 E2 (w i) - ev2 E1 E2 (w i) * (E1 c d + E2 c d)) * ev2 E1 E2 (w' i') +
            ev2 E1 E2 (w i) * ((E1 c d + E2 c d) * ev2 E1 E2 (w' i') - ev2 E1 E2 (w' i') * (E1 c d + E2 c d)) := by
        rw [map_mul]; noncomm_ring
      simp only []
      rw [this, e1, e2]
      simp only [Matrix.of_apply, add_smul, Finset.sum_add_distrib, Fintype.sum_prod_type, ite_smul, zero_smul,
        Finset.sum_ite_eq', Finset.mem_univ, if_true, map_mul, Finset.sum_mul, Finset.mul_sum, smul_mul_assoc,
        mul_smul_comm]
      congr 1
      rw [Finset.sum_comm]
      simp
    · rw [Finset.sum_mul_sum, Fintype.sum_prod_type]
      simp only [smul_mul_smul_comm]
  | add a b ha hb =>
    obtain ⟨ι, _, w, M, t, ⟨h1, h2⟩, rfl⟩ := ha
    obtain ⟨ι', _, w', M', t', ⟨h1', h2'⟩, rfl⟩ := hb
    refine ⟨ι ⊕ ι', inferInstance, Sum.elim w w', fun c d => Matrix.fromBlocks (M c d) 0 0 (M' c d),
      Sum.elim t t', ⟨?_, ?_⟩, ?_⟩
    · rintro c d (i | i) (j | j) <;> simp [← h1 d c, ← h1' d c]
    · rintro V _ _ E1 E2 hE c d (i | i)
      · simp [Fintype.sum_sum_type, h2 V E1 E2 hE]
      · simp [Fintype.sum_sum_type, h2' V E1 E2 hE]
    · simp [Fintype.sum_sum_type]

theorem AdFam.comm {ι : Type} [Fintype ι] {w : ι → FreeAlgebra ℂ (Lt n)}
    {M : Fin n → Fin n → Matrix ι ι ℂ} (h : AdFam w M) {V : Type} [AddCommGroup V] [Module ℂ V]
    {E1 E2 : Fin n → Fin n → Module.End ℂ V} (hE : Pair2 E1 E2) (c d : Fin n) (t : ι → ℂ) :
    (E1 c d + E2 c d) * ev2 E1 E2 (∑ i, t i • w i) - ev2 E1 E2 (∑ i, t i • w i) * (E1 c d + E2 c d) =
      ev2 E1 E2 (∑ j, (M c d *ᵥ t) j • w j) := by

  simp only [map_sum, map_smul, Finset.mul_sum, Finset.sum_mul, mul_smul_comm, smul_mul_assoc,
  ← Finset.sum_sub_distrib, ← smul_sub, h.2 V E1 E2 hE, Finset.smul_sum, Matrix.mulVec, dotProduct, Finset.sum_smul,
  smul_smul]
  rw [Finset.sum_comm]
  simp only [mul_comm]

theorem invLift2 {V : Type} [AddCommGroup V] [Module ℂ V] {E1 E2 : Fin n → Fin n → Module.End ℂ V} (hE : Pair2 E1 E2)
    (L : Submodule ℂ V) (a : FreeAlgebra ℂ (Lt n)) (hL : ∀ c d, ∀ s ∈ L, (E1 c d + E2 c d) s ∈ L)
    (ha : ∀ c d, ∀ s ∈ L, (E1 c d + E2 c d) (ev2 E1 E2 a s) = ev2 E1 E2 a ((E1 c d + E2 c d) s)) :
    ∃ a', Inv2 a' ∧ ∀ s ∈ L, ev2 E1 E2 a' s = ev2 E1 E2 a s := by
  classical
  obtain ⟨ι, _, w, M, t, hM, rfl⟩ := exists_adFam a
  let N : Submodule ℂ (EuclideanSpace ℂ ι) :=
    { carrier := {x | ∀ s ∈ L, ev2 E1 E2 (∑ i, x i • w i) s = 0}
      add_mem' := by
        intro x y hx hy s hs
        have := hx s hs
        have := hy s hs
        simp only [PiLp.add_apply, add_smul, Finset.sum_add_distrib, map_add (f := _), LinearMap.add_apply, *, add_zero]
      zero_mem' := by intro s hs; simp
      smul_mem' := by
        intro r x hx s hs
        have := hx s hs
        simp only [PiLp.smul_apply, smul_eq_mul, mul_smul, ← Finset.smul_sum, map_smul, LinearMap.smul_apply, this,
          smul_zero] }
  have hN : ∀ x, x ∈ N ↔ ∀ s ∈ L, ev2 E1 E2 (∑ i, x i • w i) s = 0 := fun x => Iff.rfl
  let D : Fin n → Fin n → Module.End ℂ (EuclideanSpace ℂ ι) := fun c d => Matrix.toEuclideanLin (M c d)
  have hD : ∀ c d x, (D c d x).ofLp = M c d *ᵥ x.ofLp := fun c d x => rfl
  have hadj : ∀ c d x y, ⟪x, D c d y⟫_ℂ = ⟪D d c x, y⟫_ℂ := by
    intro c d x y
    have : M d c = (M c d)ᴴ := by ext i j; simp [Matrix.conjTranspose_apply, ← hM.1 c d]
    simp only [D]
    rw [this, Matrix.toEuclideanLin_conjTranspose_eq_adjoint, LinearMap.adjoint_inner_left]
  have hDN : ∀ c d, ∀ x ∈ N, D c d x ∈ N := by
    intro c d x hx
    rw [hN] at hx ⊢
    intro s hs
    rw [hD, ← hM.comm hE]
    simp only [LinearMap.sub_apply, Module.End.mul_apply, hx s hs, hx _ (hL c d s hs), map_zero, sub_zero]
  have ht : ∀ c d, D c d (WithLp.toLp 2 t) ∈ N := by
    intro c d
    rw [hN]
    intro s hs
    rw [hD, ← hM.comm hE]
    simp only [LinearMap.sub_apply, Module.End.mul_apply, ha c d s hs, sub_self]
  obtain ⟨k, hk, t', ht', e⟩ := N.exists_add_mem_mem_orthogonal (WithLp.toLp 2 t)
  have h0 : ∀ c d, D c d t' = 0 := by
    intro c d
    have h1 : D c d t' ∈ N := by
      have := N.sub_mem (ht c d) (hDN c d k hk)
      rwa [e, map_add, add_sub_cancel_left] at this
    rw [← inner_self_eq_zero (𝕜 := ℂ), hadj]
    exact (Submodule.mem_orthogonal _ _).1 ht' _ (hDN d c _ h1)
  refine ⟨∑ i, t' i • w i, ?_, ?_⟩
  · intro V' _ _ E1' E2' hE' c d
    have := hM.comm hE' c d t'.ofLp
    rw [← hD, h0 c d] at this
    have h2 : ev2 E1' E2' (∑ j, (0 : EuclideanSpace ℂ ι).ofLp j • w j) = 0 := by simp
    rw [h2] at this
    exact sub_eq_zero.1 this
  · intro s hs
    have e' : ∀ i, t i = k i + t' i := fun i => congrArg (fun x : EuclideanSpace ℂ ι => x i) e
    have := (hN k).1 hk s hs
    simp only [e', add_smul, Finset.sum_add_distrib, map_add (f := _), LinearMap.add_apply, this, zero_add]

theorem liftInv : LiftInv := by
  classical
  intro n V _ _ E1 E2 hP hU hF μ v w hv0 hv hw hx
  obtain ⟨x, hx, hxv⟩ := hx
  have hgl : GlRel (kF E1 E2) := sum_gl hP
  have hK : KRel (allT n) (kF E1 E2) := fun a b c d _ _ => hgl a b c d
  have hKU : KUnit (allT n) (kF E1 E2) := fun a b _ x y => hU a b x y
  have hFS : ∀ x : V, ∃ S : Submodule ℂ V, FiniteDimensional ℂ S ∧ KStab (allT n) (kF E1 E2) S ∧ x ∈ S := by
    intro x
    obtain ⟨S, hS, hxS, hSt⟩ := hF x
    exact ⟨S, hS, fun a b _ y hy => hSt a b y hy, hxS⟩
  have hv' : KHighest (allT n) (kF E1 E2) μ v := hv
  have hw' : KHighest (allT n) (kF E1 E2) μ w := hw
  obtain ⟨S, hS, hSt, hvS⟩ := hFS v
  obtain ⟨L, hLS, hvL, hLt, hirr, -, -⟩ :=
    CompanionTheory.D.DSIC.hLowSpan n (allT n) V (kF E1 E2) μ v S hK hKU hv0 hv' hS hSt hvS
  haveI : FiniteDimensional ℂ L := Submodule.finiteDimensional_of_le hLS
  obtain ⟨S', hS', hSt', hwS'⟩ := hFS w
  let EL : Fin n → Fin n → Module.End ℂ L := fun a b => (kF E1 E2 a b).restrict (hLt a b rfl)
  have hEL : ∀ a b (y : L), (EL a b y : V) = kF E1 E2 a b y := fun a b y => by simp [EL]
  obtain ⟨φ, hφv, hφ⟩ := CompanionTheory.D.DSIC.hHWMap n (allT n) L V EL (kF E1 E2) μ ⟨v, hvL⟩ w S'
    (fun a b c d _ _ => by
      ext y
      have := congrArg (fun T : Module.End ℂ V => T y) (hgl a b c d)
      simp only [LinearMap.sub_apply, Module.End.mul_apply, Submodule.coe_sub, hEL] at this ⊢
      rw [this]
      congr 1
      · split_ifs with h
        · subst h; exact (hEL _ _ y).symm
        · rfl
      · split_ifs with h
        · subst h; exact (hEL _ _ y).symm
        · rfl)
    (fun a b _ x y => by
      rw [Submodule.coe_inner, Submodule.coe_inner, hEL, hEL]; exact hU a b x y)
    hK hKU (fun h => hv0 (congrArg Subtype.val h))
    ⟨fun a => Subtype.ext (by rw [hEL]; exact hv.1 a),
      fun a b hab h => Subtype.ext (by rw [hEL]; exact hv.2 a b hab h)⟩ hw' hS' hSt' hwS'
  have hφc : ∀ s, φ s ∈ Cyc2 E1 E2 v := by
    let L' : Submodule ℂ V := ((Cyc2 E1 E2 v).comap φ).map L.subtype
    have h1 : L' = L := by
      refine (hirr L' (Submodule.map_subtype_le _ _) ?_).resolve_left fun hb => hv0 ?_
      · rintro a b h _ ⟨y, hy, rfl⟩
        refine ⟨EL a b y, ?_, hEL a b y⟩
        show φ (EL a b y) ∈ Cyc2 E1 E2 v
        rw [hφ a b rfl]
        exact cyclic_span_stable_alt (E1 := E1) (E2 := E2) a b hy
      · have : v ∈ L' := by
          obtain ⟨a, ha⟩ := exists_evaluation_of_mem_adjoin hx
          exact ⟨⟨v, hvL⟩, by
            show φ ⟨v, hvL⟩ ∈ Cyc2 E1 E2 v
            rw [hφv]
            exact mem_cyclic_span_iff.2 ⟨a, by rw [ha, hxv]⟩, rfl⟩
        simpa [hb] using this
    intro s
    obtain ⟨y, hy, e⟩ : (s : V) ∈ L' := by rw [h1]; exact s.2
    rw [← Subtype.ext e]; exact hy
  have hs := GlobalTheory.CompanionTheory.LKDens.rho_surj (allT n) (kF E1 E2) L hLt hv0 hvL hirr
  let b := Module.finBasis ℂ L
  obtain ⟨a0, ha0⟩ : ∃ a, ∀ s : L, ev2 E1 E2 a s = φ s := by
    choose u hu using fun i => mem_cyclic_span_iff.1 (hφc (b i))
    choose r hr using fun i => hs ((b.coord i).smulRight (⟨v, hvL⟩ : L))
    refine ⟨∑ i, u i * kap (GlobalTheory.CompanionTheory.LKDens.psi (allT n) (r i)), fun s => ?_⟩
    have hk : ∀ i, ev2 E1 E2 (kap (GlobalTheory.CompanionTheory.LKDens.psi (allT n) (r i))) s = (b.repr s i) • v := by
      intro i
      have h1 := GlobalTheory.CompanionTheory.LKDens.ev_psi (allT n) (kF E1 E2) L hLt (r i) s
      rw [hr] at h1
      have h2 : ev2 E1 E2 (kap (GlobalTheory.CompanionTheory.LKDens.psi (allT n) (r i))) =
          ev (kF E1 E2) (GlobalTheory.CompanionTheory.LKDens.psi (allT n) (r i)) := evaluation_kappa _
      rw [h2]
      simpa using h1
    conv_rhs => rw [← b.sum_repr s]

    simp only [map_sum, map_mul, LinearMap.sum_apply, Module.End.mul_apply, map_smul]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [hk i, map_smul, hu i]
  obtain ⟨a, hinv, ha⟩ := invLift2 hP L a0 (fun c d s hs => hLt c d rfl s hs) fun c d s hs => by
    have e1 : ev2 E1 E2 a0 s = φ ⟨s, hs⟩ := ha0 ⟨s, hs⟩
    have e2 : ev2 E1 E2 a0 ((E1 c d + E2 c d) s) = φ (EL c d ⟨s, hs⟩) := by
      have := ha0 (EL c d ⟨s, hs⟩)
      rw [hEL] at this
      exact this
    rw [e1, e2, hφ c d rfl]
    rfl
  refine ⟨a, hinv, ?_⟩
  rw [ha v hvL]
  exact (ha0 ⟨v, hvL⟩).trans hφv

end GlobalTheory.CompanionTheory.RealMult.Lift
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsEvaluationOfMemAdjoin =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvariantPickReal =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvariantPickReal", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.LeviCommutantWordReduction\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairStructureOnLine\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsEvaluationOfMemAdjoin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.InvPickKP

open PositivityTheory.RgBcC PositivityTheory.RgBcC.Real PositivityTheory.RgBcC.RealD
open GlobalTheory.CompanionTheory.RealMult (Pair2 Inv2 ev2)

variable {n : ℕ}

def toKP : FreeAlgebra ℂ (Bool × Fin n × Fin n) →ₐ[ℂ] FreeAlgebra ℂ (Bool × Fin n × Fin n) :=
  FreeAlgebra.lift ℂ fun p =>
    if p.1 then (1 / 2 : ℂ) • (FreeAlgebra.ι ℂ (false, p.2) + FreeAlgebra.ι ℂ (true, p.2))
    else (1 / 2 : ℂ) • (FreeAlgebra.ι ℂ (false, p.2) - FreeAlgebra.ι ℂ (true, p.2))

theorem evalCartan_toCartan {V : Type} [AddCommGroup V] [Module ℂ V] (E1 E2 : Fin n → Fin n → Module.End ℂ V)
    (a : FreeAlgebra ℂ (Bool × Fin n × Fin n)) : evKP E1 E2 (toKP a) = ev2 E1 E2 a := by
  have eK : ∀ a b, evKP E1 E2 (FreeAlgebra.ι ℂ (false, a, b)) = E1 a b + E2 a b := fun a b => by
    simp [evKP, kA]
  have eP : ∀ a b, evKP E1 E2 (FreeAlgebra.ι ℂ (true, a, b)) = E1 a b - E2 a b := fun a b => by
    simp [evKP, pA]
  have h : (evKP E1 E2).comp toKP = ev2 E1 E2 := by
    apply FreeAlgebra.hom_ext
    funext ⟨s, a, b⟩
    show evKP E1 E2 (toKP (FreeAlgebra.ι ℂ (s, a, b))) = ev2 E1 E2 (FreeAlgebra.ι ℂ (s, a, b))
    cases s
    · have t : toKP (FreeAlgebra.ι ℂ (false, a, b)) =
          (1 / 2 : ℂ) • (FreeAlgebra.ι ℂ (false, a, b) - FreeAlgebra.ι ℂ (true, a, b)) := by simp [toKP]
      have e : ev2 E1 E2 (FreeAlgebra.ι ℂ (false, a, b)) = E2 a b := by simp [ev2]
      rw [t, e, map_smul, map_sub, eK, eP]
      module
    · have t : toKP (FreeAlgebra.ι ℂ (true, a, b)) =
          (1 / 2 : ℂ) • (FreeAlgebra.ι ℂ (false, a, b) + FreeAlgebra.ι ℂ (true, a, b)) := by simp [toKP]
      have e : ev2 E1 E2 (FreeAlgebra.ι ℂ (true, a, b)) = E1 a b := by simp [ev2]
      rw [t, e, map_smul, map_add (f := _), eK, eP]
      module
  exact DFunLike.congr_fun h a

theorem invKP_toKP {a : FreeAlgebra ℂ (Bool × Fin n × Fin n)} (h : Inv2 a) : InvKP n (toKP a) := by
  intro V _ _ E1 E2 hE c d
  rw [evalCartan_toCartan]
  exact h V E1 E2 ⟨hE.1, hE.2.1, hE.2.2⟩ c d

theorem invPick : InvPick := by
  intro n lam lev V _ _ E1 E2 hA μ v w hv hw hv0 hx
  obtain ⟨a, ha, hav⟩ := GlobalTheory.CompanionTheory.RealMult.Lift.liftInv n V E1 E2 ⟨hA.gl1, hA.gl2, hA.comm⟩ hA.unitK hA.locFin
    μ v w hv0 hv hw hx
  exact ⟨toKP a, invKP_toKP ha, by rw [evalCartan_toCartan, hav]⟩

end GlobalTheory.CompanionTheory.InvPickKP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvariantPickReal =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LeviRelationsReal =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LeviRelationsReal", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.LeviCommutantWordReduction\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwLMulSelf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Bool\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Finset PositivityTheory.RgBcC.RealD
open GlobalTheory.CompanionTheory.LvChain
open Formalism.REAL (GlRel)

noncomputable section

namespace GlobalTheory.CompanionTheory.LevChainRel

variable {n : ℕ} {V : Type} [AddCommGroup V] [Module ℂ V]

theorem units_mul_relation_rearrange_commRing {R : Type*} [Ring R] (c c' a a' d1 d2 : R) (h1 : a * c' = d1 - c' * a)
    (h2 : a' * c = d2 - c * a') (h3 : c' * c = -(c * c')) (h4 : a' * a = -(a * a')) :
    c * a * (c' * a') - c' * a' * (c * a) = c * d1 * a' - c' * d2 * a := by
  have e1 : c * a * (c' * a') = c * (a * c') * a' := by simp only [mul_assoc]
  have e2 : c' * a' * (c * a) = c' * (a' * c) * a := by simp only [mul_assoc]
  have e3 : c' * (c * (a' * a)) = c * (c' * (a * a')) := by
    rw [← mul_assoc, ← mul_assoc c, h3, h4, neg_mul_neg]
  rw [e1, e2, h1, h2]
  simp only [mul_sub, sub_mul, mul_assoc, e3]
  abel

theorem unit_comm (k l k' l' : Lt n) :
    ((creL k * annL l) * (creL k' * annL l') - (creL k' * annL l') * (creL k * annL l) : Module.End ℂ (Cq n V)) =
      (if l = k' then creL k * annL l' else 0) - (if l' = k then creL k' * annL l else 0) := by
  have h1 : (PositivityTheory.RgBcC.RealD.annL l * PositivityTheory.RgBcC.RealD.creL k' : Module.End ℂ (PositivityTheory.RgBcC.RealD.Cq n V)) =
      (if l = k' then 1 else 0) - PositivityTheory.RgBcC.RealD.creL k' * PositivityTheory.RgBcC.RealD.annL l :=
    eq_sub_of_add_eq (GlobalTheory.CompanionTheory.LvChain.annL_creL l k')
  have h2 : (PositivityTheory.RgBcC.RealD.annL l' * PositivityTheory.RgBcC.RealD.creL k : Module.End ℂ (PositivityTheory.RgBcC.RealD.Cq n V)) =
      (if l' = k then 1 else 0) - PositivityTheory.RgBcC.RealD.creL k * PositivityTheory.RgBcC.RealD.annL l' :=
    eq_sub_of_add_eq (GlobalTheory.CompanionTheory.LvChain.annL_creL l' k)
  have h3 : (PositivityTheory.RgBcC.RealD.creL k' * PositivityTheory.RgBcC.RealD.creL k : Module.End ℂ (PositivityTheory.RgBcC.RealD.Cq n V)) =
      -(PositivityTheory.RgBcC.RealD.creL k * PositivityTheory.RgBcC.RealD.creL k') :=
    eq_neg_of_add_eq_zero_left (GlobalTheory.CompanionTheory.LvChain.creL_creL k' k)
  have h4 : (PositivityTheory.RgBcC.RealD.annL l' * PositivityTheory.RgBcC.RealD.annL l : Module.End ℂ (PositivityTheory.RgBcC.RealD.Cq n V)) =
      -(PositivityTheory.RgBcC.RealD.annL l * PositivityTheory.RgBcC.RealD.annL l') :=
    eq_neg_of_add_eq_zero_left (GlobalTheory.CompanionTheory.LvChain.annL_annL l' l)
  rw [GlobalTheory.CompanionTheory.LevChainRel.units_mul_relation_rearrange_commRing _ _ _ _ _ _ h1 h2 h3 h4]
  split_ifs <;> simp

section Abstract

variable {L R : Type*} [Fintype L] [DecidableEq L] [Ring R] [Algebra ℂ R]

def quadA (u : L → L → R) (M : L → L → ℂ) : R := ∑ l : L, ∑ k : L, M l k • u k l

theorem quadA_comm_left (u : L → L → R) (M : L → L → ℂ) (Y : R) :
    quadA u M * Y - Y * quadA u M = ∑ l : L, ∑ k : L, M l k • (u k l * Y - Y * u k l) := by
  simp only [GlobalTheory.CompanionTheory.LevChainRel.quadA, Finset.sum_mul, Finset.mul_sum, smul_mul_assoc,
    mul_smul_comm, smul_sub, Finset.sum_sub_distrib]

theorem quadA_comm_right (u : L → L → R) (N : L → L → ℂ) (X : R) :
    X * quadA u N - quadA u N * X = ∑ l : L, ∑ k : L, N l k • (X * u k l - u k l * X) := by
  simp only [GlobalTheory.CompanionTheory.LevChainRel.quadA, Finset.sum_mul, Finset.mul_sum, smul_mul_assoc,
    mul_smul_comm, smul_sub, Finset.sum_sub_distrib]

theorem quadA_inner (u : L → L → R)
    (hu : ∀ k l k' l', u k l * u k' l' - u k' l' * u k l = (if l = k' then u k l' else 0) - (if l' = k then u k' l else 0))
    (N : L → L → ℂ) (k l : L) :
    u k l * quadA u N - quadA u N * u k l = (∑ l', N l' l • u k l') - ∑ k', N k k' • u k' l := by
  rw [GlobalTheory.CompanionTheory.LevChainRel.quadA_comm_right]
  simp only [hu, smul_sub, Finset.sum_sub_distrib, smul_ite, smul_zero]
  refine congrArg₂ _ ?_ ?_
  · simp
  · rw [Finset.sum_comm]
    simp

theorem triple_sum_reindex_matrix_mul (u : L → L → R) (M N : L → L → ℂ) :
    ∑ l, ∑ k, ∑ l', (M l k * N l' l) • u k l' = ∑ l', ∑ k, ∑ j, (N l' j * M j k) • u k l' := by
  calc ∑ l, ∑ k, ∑ l', (M l k * N l' l) • u k l'
        = ∑ l, ∑ l', ∑ k, (M l k * N l' l) • u k l' :=
          Finset.sum_congr rfl fun _ _ => Finset.sum_comm
    _ = ∑ l', ∑ l, ∑ k, (M l k * N l' l) • u k l' := Finset.sum_comm
    _ = ∑ l', ∑ k, ∑ l, (M l k * N l' l) • u k l' :=
          Finset.sum_congr rfl fun _ _ => Finset.sum_comm
    _ = ∑ l', ∑ k, ∑ j, (N l' j * M j k) • u k l' :=
          Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ =>
            Finset.sum_congr rfl fun _ _ => by rw [mul_comm]

theorem quadA_comm (u : L → L → R)
    (hu : ∀ k l k' l', u k l * u k' l' - u k' l' * u k l = (if l = k' then u k l' else 0) - (if l' = k then u k' l else 0))
    (M N : L → L → ℂ) :
    quadA u M * quadA u N - quadA u N * quadA u M =
      quadA u (fun l k => ∑ j, N l j * M j k - ∑ j, M l j * N j k) := by
  rw [GlobalTheory.CompanionTheory.LevChainRel.quadA_comm_left]
  simp only [GlobalTheory.CompanionTheory.LevChainRel.quadA_inner u hu]
  simp only [GlobalTheory.CompanionTheory.LevChainRel.quadA, smul_sub, sub_smul, Finset.smul_sum,
    Finset.sum_smul, smul_smul, Finset.sum_sub_distrib]
  refine congrArg₂ _ (GlobalTheory.CompanionTheory.LevChainRel.triple_sum_reindex_matrix_mul u M N) ?_
  exact Finset.sum_congr rfl fun _ _ => Finset.sum_comm

end Abstract

section Matrix

def adG (s : Bool) (p q : Fin n) (u : Bool) (x y : Fin n) (k : Lt n) : ℂ :=
  (if q = x ∧ k.1 = xor s u ∧ k.2.1 = (p, y) then 1 else 0) -
    (if y = p ∧ k.1 = xor s u ∧ k.2.1 = (x, q) then 1 else 0)

def Mx (lev : Fin n → ℕ) (s : Bool) (p q : Fin n) (l k : Lt n) : ℂ :=
  if inUU lev l then adCL s p q l k else 0

theorem pick (σ : Bool) (x y : Fin n) (h : x < y) (G : Bool → Fin n → Fin n → ℂ) :
    ∑ j : Lt n, (if j.1 = σ ∧ j.2.1 = (x, y) then (1 : ℂ) else 0) * G j.1 j.2.1.1 j.2.1.2 = G σ x y := by
  rw [Finset.sum_eq_single (σ, (⟨(x, y), h⟩ : {p : Fin n × Fin n // p.1 < p.2}))]
  · simp
  · intro b _ hb
    rw [if_neg, zero_mul]
    rintro ⟨h1, h2⟩
    exact hb (Prod.ext h1 (Subtype.ext h2))
  · intro hmem
    exact absurd (Finset.mem_univ _) hmem

theorem lt_of_lev {lev : Fin n → ℕ} (hm : Monotone lev) {x y : Fin n} (h : lev x < lev y) : x < y := by
  by_contra hxy
  exact absurd (hm (not_lt.mp hxy)) (not_le.mpr h)

theorem sum_adCL {lev : Fin n → ℕ} (hm : Monotone lev) (s : Bool) {p q : Fin n} (hpq : lev p = lev q) (l : Lt n)
    (hl : inUU lev l) (G : Bool → Fin n → Fin n → ℂ) :
    ∑ j : Lt n, adCL s p q l j * G j.1 j.2.1.1 j.2.1.2 =
      (if q = l.2.1.1 then G (xor s l.1) p l.2.1.2 else 0) -
        (if l.2.1.2 = p then G (xor s l.1) l.2.1.1 q else 0) := by
  unfold PositivityTheory.RgBcC.RealD.adCL
  simp only [sub_mul, Finset.sum_sub_distrib]
  refine congrArg₂ _ ?_ ?_
  · by_cases hq : q = l.2.1.1
    · have hlt : p < l.2.1.2 := GlobalTheory.CompanionTheory.LevChainRel.lt_of_lev hm (by rw [hpq, hq]; exact hl)
      simp only [hq, true_and, if_true]
      exact GlobalTheory.CompanionTheory.LevChainRel.pick _ _ _ hlt G
    · simp [hq]
  · by_cases hp : l.2.1.2 = p
    · have hlt : l.2.1.1 < q := GlobalTheory.CompanionTheory.LevChainRel.lt_of_lev hm (by rw [← hpq, ← hp]; exact hl)
      simp only [hp, true_and, if_true]
      exact GlobalTheory.CompanionTheory.LevChainRel.pick _ _ _ hlt G
    · simp [hp]

theorem sum_Mx {lev : Fin n → ℕ} (hm : Monotone lev) (s t : Bool) {a b c d : Fin n} (hab : lev a = lev b)
    (hcd : lev c = lev d) (l k : Lt n) (hl : inUU lev l) :
    ∑ j : Lt n, Mx lev t c d l j * Mx lev s a b j k =
      (if d = l.2.1.1 then adG s a b (xor t l.1) c l.2.1.2 k else 0) -
        (if l.2.1.2 = c then adG s a b (xor t l.1) l.2.1.1 d k else 0) := by
  have key : ∀ j : PositivityTheory.RgBcC.RealD.Lt n,
      GlobalTheory.CompanionTheory.LevChainRel.Mx lev t c d l j * GlobalTheory.CompanionTheory.LevChainRel.Mx lev s a b j k =
        PositivityTheory.RgBcC.RealD.adCL t c d l j *
          (if lev j.2.1.1 < lev j.2.1.2 then GlobalTheory.CompanionTheory.LevChainRel.adG s a b j.1 j.2.1.1 j.2.1.2 k else 0) := by
    intro j
    unfold GlobalTheory.CompanionTheory.LevChainRel.Mx
    rw [if_pos hl]
    by_cases hj : PositivityTheory.RgBcC.RealD.inUU lev j
    · have hj' : lev j.2.1.1 < lev j.2.1.2 := hj
      rw [if_pos hj, if_pos hj']
      rfl
    · have hj' : ¬ lev j.2.1.1 < lev j.2.1.2 := hj
      rw [if_neg hj, if_neg hj']
  refine (Finset.sum_congr rfl fun j _ => key j).trans
    ((GlobalTheory.CompanionTheory.LevChainRel.sum_adCL hm t hcd l hl
      (fun σ x y => if lev x < lev y then GlobalTheory.CompanionTheory.LevChainRel.adG s a b σ x y k else 0)).trans ?_)
  refine congrArg₂ _ ?_ ?_
  · by_cases hd : d = l.2.1.1
    · have hlt : lev c < lev l.2.1.2 := by rw [hcd, hd]; exact hl
      rw [if_pos hd, if_pos hd, if_pos hlt]
    · rw [if_neg hd, if_neg hd]
  · by_cases hc : l.2.1.2 = c
    · have hlt : lev l.2.1.1 < lev d := by rw [← hcd, ← hc]; exact hl
      rw [if_pos hc, if_pos hc, if_pos hlt]
    · rw [if_neg hc, if_neg hc]

theorem ite_zero_eq (P : Prop) [Decidable P] (X : ℂ) : (if P then X else 0) = (if P then 1 else 0) * X := by
  by_cases hP : P <;> simp [hP]

theorem key_id (s t u : Bool) (a b c d x y : Fin n) (k : Lt n) :
    ((if d = x then adG s a b (xor t u) c y k else 0) - (if y = c then adG s a b (xor t u) x d k else 0)) -
      ((if b = x then adG t c d (xor s u) a y k else 0) - (if y = a then adG t c d (xor s u) x b k else 0)) =
    (if b = c then adG (xor s t) a d u x y k else 0) - (if d = a then adG (xor s t) c b u x y k else 0) := by
  have hx1 : xor t (xor s u) = xor s (xor t u) := by cases s <;> cases t <;> cases u <;> rfl
  have hx2 : xor (xor s t) u = xor s (xor t u) := by cases s <;> cases t <;> cases u <;> rfl
  rw [GlobalTheory.CompanionTheory.LevChainRel.ite_zero_eq (d = x), GlobalTheory.CompanionTheory.LevChainRel.ite_zero_eq (y = c),
    GlobalTheory.CompanionTheory.LevChainRel.ite_zero_eq (b = x), GlobalTheory.CompanionTheory.LevChainRel.ite_zero_eq (y = a),
    GlobalTheory.CompanionTheory.LevChainRel.ite_zero_eq (b = c), GlobalTheory.CompanionTheory.LevChainRel.ite_zero_eq (d = a)]
  unfold GlobalTheory.CompanionTheory.LevChainRel.adG
  rw [hx1, hx2]
  simp only [GlobalTheory.CompanionTheory.RgCOBlock.LetterGl.ite3]
  ring

theorem mx_id {lev : Fin n → ℕ} (hm : Monotone lev) (s t : Bool) {a b c d : Fin n} (hab : lev a = lev b)
    (hcd : lev c = lev d) (l k : Lt n) :
    ∑ j, Mx lev t c d l j * Mx lev s a b j k - ∑ j, Mx lev s a b l j * Mx lev t c d j k =
      (if b = c then Mx lev (xor s t) a d l k else 0) - (if d = a then Mx lev (xor s t) c b l k else 0) := by
  by_cases hl : PositivityTheory.RgBcC.RealD.inUU lev l
  · rw [GlobalTheory.CompanionTheory.LevChainRel.sum_Mx hm s t hab hcd l k hl,
      GlobalTheory.CompanionTheory.LevChainRel.sum_Mx hm t s hcd hab l k hl,
      GlobalTheory.CompanionTheory.LevChainRel.key_id]
    simp only [GlobalTheory.CompanionTheory.LevChainRel.Mx, if_pos hl]
    rfl
  · simp [GlobalTheory.CompanionTheory.LevChainRel.Mx, hl]

end Matrix

section Ops

variable {V : Type} [AddCommGroup V] [Module ℂ V]

theorem adLL_eq (lev : Fin n → ℕ) (s : Bool) (p q : Fin n) :
    (adLL lev s p q : Module.End ℂ (Cq n V)) =
      quadA (fun k l => (creL k * annL l : Module.End ℂ (Cq n V))) (Mx lev s p q) := by
  simp only [PositivityTheory.RgBcC.RealD.adLL, GlobalTheory.CompanionTheory.LevChainRel.quadA,
    GlobalTheory.CompanionTheory.LevChainRel.Mx, ite_smul, zero_smul]

theorem adLL_comm {lev : Fin n → ℕ} (hm : Monotone lev) (s t : Bool) {a b c d : Fin n} (hab : lev a = lev b)
    (hcd : lev c = lev d) :
    (adLL lev s a b * adLL lev t c d - adLL lev t c d * adLL lev s a b : Module.End ℂ (Cq n V)) =
      (if b = c then adLL lev (xor s t) a d else 0) - (if d = a then adLL lev (xor s t) c b else 0) := by
  simp only [GlobalTheory.CompanionTheory.LevChainRel.adLL_eq (V := V)]
  rw [GlobalTheory.CompanionTheory.LevChainRel.quadA_comm
    (fun k l => (PositivityTheory.RgBcC.RealD.creL k * PositivityTheory.RgBcC.RealD.annL l : Module.End ℂ (PositivityTheory.RgBcC.RealD.Cq n V)))
    (fun k l k' l' => GlobalTheory.CompanionTheory.LevChainRel.unit_comm k l k' l')]
  simp only [GlobalTheory.CompanionTheory.LevChainRel.mx_id hm s t hab hcd]
  by_cases hbc : b = c <;> by_cases hda : d = a <;>
    simp [hbc, hda, GlobalTheory.CompanionTheory.LevChainRel.quadA, sub_smul, Finset.sum_sub_distrib]

theorem liftL_mul (A B : Module.End ℂ V) :
    (liftL n (A * B) : Module.End ℂ (Cq n V)) = (liftL n A : Module.End ℂ (Cq n V)) * liftL n B := rfl

theorem liftL_sub (A B : Module.End ℂ V) :
    (liftL n (A - B) : Module.End ℂ (Cq n V)) = (liftL n A : Module.End ℂ (Cq n V)) - liftL n B :=
  LinearMap.ext fun _ => rfl

theorem liftL_zero : (liftL n (0 : Module.End ℂ V) : Module.End ℂ (Cq n V)) = 0 :=
  LinearMap.ext fun _ => rfl

theorem liftL_commute_adLL (T : Module.End ℂ V) (lev : Fin n → ℕ) (s : Bool) (p q : Fin n) :
    Commute (liftL n T : Module.End ℂ (Cq n V)) (adLL lev s p q) := by
  unfold PositivityTheory.RgBcC.RealD.adLL
  refine Commute.sum_right _ _ _ fun l _ => Commute.sum_right _ _ _ fun k _ => ?_
  split_ifs
  · have h1 : Commute (PositivityTheory.RgBcC.RealD.liftL n T : Module.End ℂ (PositivityTheory.RgBcC.RealD.Cq n V)) (PositivityTheory.RgBcC.RealD.creL k) :=
      GlobalTheory.CompanionTheory.LvChain.liftL_creL T k
    have h2 : Commute (PositivityTheory.RgBcC.RealD.liftL n T : Module.End ℂ (PositivityTheory.RgBcC.RealD.Cq n V)) (PositivityTheory.RgBcC.RealD.annL l) :=
      GlobalTheory.CompanionTheory.LvChain.liftL_annL T l
    exact (h1.mul_right h2).smul_right _
  · exact Commute.zero_right _

def xS (E1 E2 : Fin n → Fin n → Module.End ℂ V) (s : Bool) (p q : Fin n) : Module.End ℂ V :=
  if s then pA E1 E2 p q else kA E1 E2 p q

def Tc (lev : Fin n → ℕ) (E1 E2 : Fin n → Fin n → Module.End ℂ V) (s : Bool) (p q : Fin n) : Module.End ℂ (Cq n V) :=
  (liftL n (xS E1 E2 s p q) : Module.End ℂ (Cq n V)) + adLL lev s p q

theorem comm_kk {R : Type*} [Ring R] {A B C D : R} (h : A * D = D * A) (h' : C * B = B * C) :
    (A + B) * (C + D) - (C + D) * (A + B) = (A * C - C * A) + (B * D - D * B) := by
  simp only [add_mul, mul_add]
  rw [h, h']
  abel

theorem comm_kp {R : Type*} [Ring R] {A B C D : R} (h : A * D = D * A) (h' : C * B = B * C) :
    (A + B) * (C - D) - (C - D) * (A + B) = (A * C - C * A) - (B * D - D * B) := by
  simp only [add_mul, mul_add, mul_sub, sub_mul]
  rw [h, h']
  abel

theorem comm_pk {R : Type*} [Ring R] {A B C D : R} (h : A * D = D * A) (h' : C * B = B * C) :
    (A - B) * (C + D) - (C + D) * (A - B) = (A * C - C * A) - (B * D - D * B) := by
  simp only [add_mul, mul_add, mul_sub, sub_mul]
  rw [h, h']
  abel

theorem comm_pp {R : Type*} [Ring R] {A B C D : R} (h : A * D = D * A) (h' : C * B = B * C) :
    (A - B) * (C - D) - (C - D) * (A - B) = (A * C - C * A) + (B * D - D * B) := by
  simp only [mul_sub, sub_mul]
  rw [h, h']
  abel

theorem xS_comm {E1 E2 : Fin n → Fin n → Module.End ℂ V} (h : IsPairA E1 E2) (s t : Bool) (a b c d : Fin n) :
    xS E1 E2 s a b * xS E1 E2 t c d - xS E1 E2 t c d * xS E1 E2 s a b =
      (if b = c then xS E1 E2 (xor s t) a d else 0) - (if d = a then xS E1 E2 (xor s t) c b else 0) := by
  obtain ⟨h1, h2, h12⟩ := h
  have e1 : E1 a b * E1 c d - E1 c d * E1 a b =
      (if b = c then E1 a d else 0) - (if d = a then E1 c b else 0) := h1 a b c d
  have e2 : E2 a b * E2 c d - E2 c d * E2 a b =
      (if b = c then E2 a d else 0) - (if d = a then E2 c b else 0) := h2 a b c d
  cases s <;> cases t <;>
    simp only [GlobalTheory.CompanionTheory.LevChainRel.xS, PositivityTheory.RgBcC.RealD.kA, PositivityTheory.RgBcC.RealD.pA,
      Bool.false_eq_true, if_true, if_false, Bool.false_xor, Bool.true_xor,
      Bool.not_true, Bool.not_false]
  · rw [GlobalTheory.CompanionTheory.LevChainRel.comm_kk (h12 a b c d) (h12 c d a b), e1, e2]
    split_ifs <;> abel
  · rw [GlobalTheory.CompanionTheory.LevChainRel.comm_kp (h12 a b c d) (h12 c d a b), e1, e2]
    split_ifs <;> abel
  · rw [GlobalTheory.CompanionTheory.LevChainRel.comm_pk (h12 a b c d) (h12 c d a b), e1, e2]
    split_ifs <;> abel
  · rw [GlobalTheory.CompanionTheory.LevChainRel.comm_pp (h12 a b c d) (h12 c d a b), e1, e2]
    split_ifs <;> abel

theorem Tc_comm {lev : Fin n → ℕ} (hm : Monotone lev) {E1 E2 : Fin n → Fin n → Module.End ℂ V} (h : IsPairA E1 E2)
    (s t : Bool) {a b c d : Fin n} (hab : lev a = lev b) (hcd : lev c = lev d) :
    Tc lev E1 E2 s a b * Tc lev E1 E2 t c d - Tc lev E1 E2 t c d * Tc lev E1 E2 s a b =
      (if b = c then Tc lev E1 E2 (xor s t) a d else 0) - (if d = a then Tc lev E1 E2 (xor s t) c b else 0) := by
  unfold GlobalTheory.CompanionTheory.LevChainRel.Tc
  rw [GlobalTheory.CompanionTheory.LevChainRel.comm_kk
      (GlobalTheory.CompanionTheory.LevChainRel.liftL_commute_adLL (GlobalTheory.CompanionTheory.LevChainRel.xS E1 E2 s a b) lev t c d).eq
      (GlobalTheory.CompanionTheory.LevChainRel.liftL_commute_adLL (GlobalTheory.CompanionTheory.LevChainRel.xS E1 E2 t c d) lev s a b).eq,
    ← GlobalTheory.CompanionTheory.LevChainRel.liftL_mul, ← GlobalTheory.CompanionTheory.LevChainRel.liftL_mul, ← GlobalTheory.CompanionTheory.LevChainRel.liftL_sub,
    GlobalTheory.CompanionTheory.LevChainRel.xS_comm h, GlobalTheory.CompanionTheory.LevChainRel.adLL_comm hm s t hab hcd,
    GlobalTheory.CompanionTheory.LevChainRel.liftL_sub]
  split_ifs <;> (try rw [GlobalTheory.CompanionTheory.LevChainRel.liftL_zero]) <;> abel

end Ops

section Final

theorem half_sum_bracket_half_sum {R : Type*} [Ring R] [Algebra ℂ R] {A B C D U W : R} (h1 : A * C - C * A = U)
    (h2 : A * D - D * A = W) (h3 : B * C - C * B = W) (h4 : B * D - D * B = U) :
    ((1 / 2 : ℂ) • (A + B)) * ((1 / 2 : ℂ) • (C + D)) - ((1 / 2 : ℂ) • (C + D)) * ((1 / 2 : ℂ) • (A + B)) =
      (1 / 2 : ℂ) • (U + W) := by
  rw [smul_mul_smul_comm, smul_mul_smul_comm, ← smul_sub]
  have e : (A + B) * (C + D) - (C + D) * (A + B) =
      (A * C - C * A) + (A * D - D * A) + (B * C - C * B) + (B * D - D * B) := by
    simp only [add_mul, mul_add]
    abel
  rw [e, h1, h2, h3, h4, show U + W + W + U = (2 : ℂ) • (U + W) by rw [two_smul]; abel, smul_smul]
  congr 1
  norm_num

theorem half_diff_bracket_half_diff {R : Type*} [Ring R] [Algebra ℂ R] {A B C D U W : R} (h1 : A * C - C * A = U)
    (h2 : A * D - D * A = W) (h3 : B * C - C * B = W) (h4 : B * D - D * B = U) :
    ((1 / 2 : ℂ) • (A - B)) * ((1 / 2 : ℂ) • (C - D)) - ((1 / 2 : ℂ) • (C - D)) * ((1 / 2 : ℂ) • (A - B)) =
      (1 / 2 : ℂ) • (U - W) := by
  rw [smul_mul_smul_comm, smul_mul_smul_comm, ← smul_sub]
  have e : (A - B) * (C - D) - (C - D) * (A - B) =
      (A * C - C * A) - (A * D - D * A) - (B * C - C * B) + (B * D - D * B) := by
    simp only [sub_mul, mul_sub]
    abel
  rw [e, h1, h2, h3, h4, show U - W - W + U = (2 : ℂ) • (U - W) by rw [two_smul]; abel, smul_smul]
  congr 1
  norm_num

theorem half_sum_commute_half_diff {R : Type*} [Ring R] [Algebra ℂ R] {A B C D U W : R} (h1 : A * C - C * A = U)
    (h2 : A * D - D * A = W) (h3 : B * C - C * B = W) (h4 : B * D - D * B = U) :
    ((1 / 2 : ℂ) • (A + B)) * ((1 / 2 : ℂ) • (C - D)) = ((1 / 2 : ℂ) • (C - D)) * ((1 / 2 : ℂ) • (A + B)) := by
  rw [smul_mul_smul_comm, smul_mul_smul_comm, ← sub_eq_zero, ← smul_sub]
  have e : (A + B) * (C - D) - (C - D) * (A + B) =
      (A * C - C * A) - (A * D - D * A) + (B * C - C * B) - (B * D - D * B) := by
    simp only [add_mul, mul_add, sub_mul, mul_sub]
    abel
  rw [e, h1, h2, h3, h4]
  simp

variable {V : Type} [AddCommGroup V] [Module ℂ V]

theorem evLc_letter {lev : Fin n → ℕ} (E1 E2 : Fin n → Fin n → Module.End ℂ V) (s : Bool) {p q : Fin n}
    (h : lev p = lev q) : evLc lev E1 E2 (FreeAlgebra.ι ℂ (s, p, q)) = Tc lev E1 E2 s p q := by
  simp only [PositivityTheory.RgBcC.RealD.evLc, FreeAlgebra.lift_ι_apply]
  rw [if_pos h]
  rfl

theorem leviFamilyOne_eq_half_sum {lev : Fin n → ℕ} (E1 E2 : Fin n → Fin n → Module.End ℂ V) {p q : Fin n} (h : lev p = lev q) :
    firstLeviFamily lev E1 E2 p q = (1 / 2 : ℂ) • (Tc lev E1 E2 false p q + Tc lev E1 E2 true p q) := by
  unfold PositivityTheory.RgBcC.RealD.firstLeviFamily
  rw [GlobalTheory.CompanionTheory.LevChainRel.evLc_letter E1 E2 false h,
    GlobalTheory.CompanionTheory.LevChainRel.evLc_letter E1 E2 true h]

theorem leviFamilyTwo_eq_half_diff {lev : Fin n → ℕ} (E1 E2 : Fin n → Fin n → Module.End ℂ V) {p q : Fin n} (h : lev p = lev q) :
    secondLeviFamily lev E1 E2 p q = (1 / 2 : ℂ) • (Tc lev E1 E2 false p q - Tc lev E1 E2 true p q) := by
  unfold PositivityTheory.RgBcC.RealD.secondLeviFamily
  rw [GlobalTheory.CompanionTheory.LevChainRel.evLc_letter E1 E2 false h,
    GlobalTheory.CompanionTheory.LevChainRel.evLc_letter E1 E2 true h]

theorem levRel : LevRel := by
  intro n lev hm V _ _ E1 E2 h a b c d hab hcd
  have key : ∀ s t : Bool,
      GlobalTheory.CompanionTheory.LevChainRel.Tc lev E1 E2 s a b * GlobalTheory.CompanionTheory.LevChainRel.Tc lev E1 E2 t c d -
                   GlobalTheory.CompanionTheory.LevChainRel.Tc lev E1 E2 t c d * GlobalTheory.CompanionTheory.LevChainRel.Tc lev E1 E2 s a b =
        (if b = c then GlobalTheory.CompanionTheory.LevChainRel.Tc lev E1 E2 (xor s t) a d else 0) -
          (if d = a then GlobalTheory.CompanionTheory.LevChainRel.Tc lev E1 E2 (xor s t) c b else 0) :=
    fun s t => GlobalTheory.CompanionTheory.LevChainRel.Tc_comm hm h s t hab hcd
  have h1 := key false false
  have h2 := key false true
  have h3 := key true false
  have h4 := key true true
  simp only [Bool.false_xor, Bool.true_xor, Bool.not_true, Bool.not_false] at h1 h2 h3 h4
  refine ⟨?_, ?_, ?_⟩
  · rw [GlobalTheory.CompanionTheory.LevChainRel.leviFamilyOne_eq_half_sum E1 E2 hab, GlobalTheory.CompanionTheory.LevChainRel.leviFamilyOne_eq_half_sum E1 E2 hcd,
      GlobalTheory.CompanionTheory.LevChainRel.half_sum_bracket_half_sum h1 h2 h3 h4]
    split_ifs with hbc hda hda
    · rw [GlobalTheory.CompanionTheory.LevChainRel.leviFamilyOne_eq_half_sum E1 E2 (show lev a = lev d by rw [hab, hbc, hcd]),
        GlobalTheory.CompanionTheory.LevChainRel.leviFamilyOne_eq_half_sum E1 E2 (show lev c = lev b by rw [hcd, hda, hab])]
      simp only [smul_add, smul_sub]
      abel
    · rw [GlobalTheory.CompanionTheory.LevChainRel.leviFamilyOne_eq_half_sum E1 E2 (show lev a = lev d by rw [hab, hbc, hcd])]
      simp only [smul_add, smul_sub, smul_zero]
      abel
    · rw [GlobalTheory.CompanionTheory.LevChainRel.leviFamilyOne_eq_half_sum E1 E2 (show lev c = lev b by rw [hcd, hda, hab])]
      simp only [smul_add, smul_sub, smul_zero]
      abel
    · simp only [smul_add, smul_sub, smul_zero]
      abel
  · rw [GlobalTheory.CompanionTheory.LevChainRel.leviFamilyTwo_eq_half_diff E1 E2 hab, GlobalTheory.CompanionTheory.LevChainRel.leviFamilyTwo_eq_half_diff E1 E2 hcd,
      GlobalTheory.CompanionTheory.LevChainRel.half_diff_bracket_half_diff h1 h2 h3 h4]
    split_ifs with hbc hda hda
    · rw [GlobalTheory.CompanionTheory.LevChainRel.leviFamilyTwo_eq_half_diff E1 E2 (show lev a = lev d by rw [hab, hbc, hcd]),
        GlobalTheory.CompanionTheory.LevChainRel.leviFamilyTwo_eq_half_diff E1 E2 (show lev c = lev b by rw [hcd, hda, hab])]
      simp only [smul_sub]
      abel
    · rw [GlobalTheory.CompanionTheory.LevChainRel.leviFamilyTwo_eq_half_diff E1 E2 (show lev a = lev d by rw [hab, hbc, hcd])]
      simp only [smul_sub, smul_zero]
      abel
    · rw [GlobalTheory.CompanionTheory.LevChainRel.leviFamilyTwo_eq_half_diff E1 E2 (show lev c = lev b by rw [hcd, hda, hab])]
      simp only [smul_sub, smul_zero]
      abel
    · simp only [smul_sub, smul_zero]
      abel
  · rw [GlobalTheory.CompanionTheory.LevChainRel.leviFamilyOne_eq_half_sum E1 E2 hab, GlobalTheory.CompanionTheory.LevChainRel.leviFamilyTwo_eq_half_diff E1 E2 hcd]
    exact GlobalTheory.CompanionTheory.LevChainRel.half_sum_commute_half_diff h1 h2 h3 h4

end Final

end GlobalTheory.CompanionTheory.LevChainRel
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LeviRelationsReal =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CreqAnnqTopqSame =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CreqAnnqTopqSame", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveWedgeHighestCoefficient\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.NoSecondTypeWeight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Finset
open scoped InnerProductSpace
open GlobalTheory.CompanionTheory.PairMult
open Formalism.REAL (GlRel KHighest)
open CompanionTheory.D.LK (Pos)
open CompanionTheory.RgExh.U (adC)
open PositivityTheory.RgBcC PositivityTheory.RgBcC.Real PositivityTheory.RgBcC.RealD

noncomputable section

namespace GlobalTheory.CompanionTheory.PairMult.TopK

variable {n : ℕ} {V : Type} [AddCommGroup V] [Module ℂ V]

theorem sgL_erase (l : Lt n) (B : Finset (Lt n)) : sgL l (B.erase l) = sgL l B := by
  unfold sgL
  congr 2
  ext j
  simp only [mem_filter, mem_erase]
  constructor
  · exact fun h => ⟨h.1.2, h.2⟩
  · exact fun h => ⟨⟨fun e => by subst e; exact lt_irrefl _ h.2, h.1⟩, h.2⟩

theorem sgL_sq (l : Lt n) (B : Finset (Lt n)) : sgL l B * sgL l B = 1 := by
  unfold sgL; rw [← pow_add, ← two_mul, pow_mul]; simp

theorem adC_diag_ne {p q : Fin n} (h : p ≠ q) (i : Pos n) : adC p q i i = 0 := by
  have h1 : ¬(q = i.1.1 ∧ i.1 = (p, i.1.2)) := fun e => h (by
    have := congrArg Prod.fst e.2
    exact (this.symm.trans e.1.symm))
  have h2 : ¬(i.1.2 = p ∧ i.1 = (i.1.1, q)) := fun e => h (by
    have := congrArg Prod.snd e.2
    exact e.1.symm.trans this)
  simp [adC, h1, h2]

theorem adC_diag_self (p : Fin n) (i : Pos n) :
    adC p p i i = (if i.1.1 = p then 1 else 0) - (if i.1.2 = p then 1 else 0) := by
  have e1 : (p = i.1.1 ∧ i.1 = (p, i.1.2)) ↔ i.1.1 = p :=
    ⟨fun h => h.1.symm, fun h => ⟨h.symm, Prod.ext h rfl⟩⟩
  have e2 : (i.1.2 = p ∧ i.1 = (i.1.1, p)) ↔ i.1.2 = p :=
    ⟨fun h => h.1, fun h => ⟨h, Prod.ext rfl h⟩⟩
  simp only [adC, e1, e2]

theorem sum_diag {lev : Fin n → ℕ} (hm : Monotone lev) (p : Fin n) :
    (∑ i : Pos n, if lev i.1.1 < lev i.1.2 then adC p p i i else 0) = ((2 * rhoU lev p : ℝ) : ℂ) := by
  have hs : ∀ i : Pos n, (if lev i.1.1 < lev i.1.2 then adC p p i i else 0) =
      (if lev i.1.1 < lev i.1.2 ∧ i.1.1 = p then (1 : ℂ) else 0) -
        (if lev i.1.1 < lev i.1.2 ∧ i.1.2 = p then (1 : ℂ) else 0) := by
    intro i
    rw [adC_diag_self]
    by_cases h : lev i.1.1 < lev i.1.2 <;> simp [h]
  have c1 : (univ.filter fun i : Pos n => lev i.1.1 < lev i.1.2 ∧ i.1.1 = p).card =
      (univ.filter fun b => lev p < lev b).card := by
    refine Finset.card_bij (fun i _ => i.1.2) ?_ ?_ ?_
    · intro i hi
      obtain ⟨h1, h2⟩ := (mem_filter.1 hi).2
      exact mem_filter.2 ⟨mem_univ _, h2 ▸ h1⟩
    · intro i hi j hj e
      have h1 := (mem_filter.1 hi).2.2
      have h2 := (mem_filter.1 hj).2.2
      exact Subtype.ext (Prod.ext (h1.trans h2.symm) e)
    · intro b hb
      have hb' := (mem_filter.1 hb).2
      exact ⟨⟨(p, b), hm.reflect_lt hb'⟩, mem_filter.2 ⟨mem_univ _, hb', rfl⟩, rfl⟩
  have c2 : (univ.filter fun i : Pos n => lev i.1.1 < lev i.1.2 ∧ i.1.2 = p).card =
      (univ.filter fun b => lev b < lev p).card := by
    refine Finset.card_bij (fun i _ => i.1.1) ?_ ?_ ?_
    · intro i hi
      obtain ⟨h1, h2⟩ := (mem_filter.1 hi).2
      exact mem_filter.2 ⟨mem_univ _, h2 ▸ h1⟩
    · intro i hi j hj e
      have h1 := (mem_filter.1 hi).2.2
      have h2 := (mem_filter.1 hj).2.2
      exact Subtype.ext (Prod.ext e (h1.trans h2.symm))
    · intro b hb
      have hb' := (mem_filter.1 hb).2
      exact ⟨⟨(b, p), hm.reflect_lt hb'⟩, mem_filter.2 ⟨mem_univ _, hb', rfl⟩, rfl⟩
  rw [Finset.sum_congr rfl fun i _ => hs i, Finset.sum_sub_distrib, Finset.sum_boole, Finset.sum_boole, c1, c2]
  simp only [rhoU]
  push_cast
  ring

end GlobalTheory.CompanionTheory.PairMult.TopK

namespace GlobalTheory.CompanionTheory.PairMult.TopK

variable {n : ℕ} {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V]

theorem rhoU_eq {lev : Fin n → ℕ} {a b : Fin n} (h : lev a = lev b) : rhoU lev a = rhoU lev b := by
  simp only [rhoU, h]

theorem kF_bracket {E1 E2 : Fin n → Fin n → Module.End ℂ V} (g1 : GlRel E1) (g2 : GlRel E2)
    (hc : ∀ a b c d, E1 a b * E2 c d = E2 c d * E1 a b) (p q : Fin n) :
    kF E1 E2 q p * kF E1 E2 p q - kF E1 E2 p q * kF E1 E2 q p = kF E1 E2 q q - kF E1 E2 p p := by
  have h1 := g1 q p p q
  have h2 := g2 q p p q
  simp only [if_true] at h1 h2
  have e : kF E1 E2 q p * kF E1 E2 p q - kF E1 E2 p q * kF E1 E2 q p =
      (E1 q p * E1 p q - E1 p q * E1 q p) + (E2 q p * E2 p q - E2 p q * E2 q p) := by
    simp only [kF, add_mul, mul_add, hc q p p q, hc p q q p]
    abel
  rw [e, h1, h2]
  simp only [kF]
  abel

theorem K_act {lam : Fin n → ℤ} {lev : Fin n → ℕ} (hl : IsLev lam lev) {E1 E2 : Fin n → Fin n → Module.End ℂ V}
    (hA : AdmFor lam lev E1 E2) {x : V} (hx : x ∈ hwSp E1 E2 (muQ lam lev)) {p q : Fin n} (hpq : lev p = lev q) :
    kF E1 E2 p q x = if p = q then ((muQ lam lev p : ℝ) : ℂ) • x else 0 := by
  have hK : KHighest (fun _ => true) (kF E1 E2) (muQ lam lev) x := hx
  rcases lt_trichotomy p q with h | rfl | h
  · rw [if_neg h.ne, hK.2 p q h rfl]
  · rw [if_pos rfl, hK.1 p]
  · rw [if_neg h.ne']
    have hmu : muQ lam lev q = muQ lam lev p := by
      simp only [muQ, rhoU_eq hpq.symm, hl.2 q p hpq.symm]
    have hb := LinearMap.congr_fun (kF_bracket hA.gl1 hA.gl2 hA.comm p q) x
    simp only [LinearMap.sub_apply, Module.End.mul_apply, hK.2 q p h rfl, map_zero, sub_zero, hK.1 q, hK.1 p, hmu,
      sub_self] at hb
    have hn : ⟪kF E1 E2 p q x, kF E1 E2 p q x⟫_ℂ = 0 := by
      rw [hA.unitK p q x, hb, inner_zero_right]
    exact inner_self_eq_zero.1 hn

end GlobalTheory.CompanionTheory.PairMult.TopK
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CreqAnnqTopqSame =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemisimpleClassificationReal =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemisimpleClassificationReal", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.LeviCommutantWordReduction\npublic import CompanionTheory.RealGroups.DiscreteSeries.DiscreteSeriesClassification.DiscreteSeriesExhaustion.FarRegularity.LKTExists\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CreqAnnqTopqSame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Finset
open CompanionTheory.D.LK (Pos)
open CompanionTheory.RgExh.U (adC)
open PositivityTheory.RgBcC PositivityTheory.RgBcC.Real PositivityTheory.RgBcC.RealD

noncomputable section

namespace GlobalTheory.CompanionTheory.SemiClass

variable {n : ℕ} {V : Type} [AddCommGroup V] [Module ℂ V]

theorem annL_app (l : Lt n) (x : Cq n V) (B : Finset (Lt n)) :
    annL l x B = if l ∈ B then 0 else sgL l B • x (insert l B) := rfl

theorem sgL_erase (l : Lt n) (B : Finset (Lt n)) : sgL l (B.erase l) = sgL l B := by
  unfold sgL
  congr 2
  ext m
  simp only [Finset.mem_filter, Finset.mem_erase]
  constructor
  · rintro ⟨⟨_, hm⟩, hk⟩
    exact ⟨hm, hk⟩
  · rintro ⟨hm, hk⟩
    refine ⟨⟨?_, hm⟩, hk⟩
    rintro rfl
    exact lt_irrefl _ hk

theorem sgL_sq (l : Lt n) (B : Finset (Lt n)) : sgL l B * sgL l B = 1 := by
  unfold sgL; rw [← pow_add, ← two_mul, pow_mul]; simp

theorem creL_annL (l : Lt n) (x : Cq n V) (B : Finset (Lt n)) :
    creL l (annL l x) B = if l ∈ B then x B else 0 := by
  rw [GlobalTheory.CompanionTheory.LvChain.creL_apply]
  split_ifs with hB
  · rw [annL_app, if_neg (by simp), Finset.insert_erase hB, sgL_erase, smul_smul, sgL_sq, one_smul]
  · rfl

theorem mem_omU {lev : Fin n → ℕ} {l : Lt n} : l ∈ omU lev ↔ l.1 = false ∧ lev l.2.1.1 < lev l.2.1.2 := by
  simp [omU]

omit [Module ℂ V] in
theorem top_app (lev : Fin n → ℕ) (x : V) (B : Finset (Lt n)) :
    (Pi.single (omU lev) x : Cq n V) B = if B = omU lev then x else 0 := by
  rw [Pi.single_apply]

theorem top_smul (lev : Fin n → ℕ) (c : ℂ) (x : V) :
    (Pi.single (omU lev) (c • x) : Cq n V) = c • (Pi.single (omU lev) x : Cq n V) := by
  ext B
  simp only [Pi.smul_apply, top_app]
  split_ifs <;> simp

omit [Module ℂ V] in
theorem top_zero (lev : Fin n → ℕ) : (Pi.single (omU lev) (0 : V) : Cq n V) = 0 := by
  exact Pi.single_zero _

theorem liftL_top (lev : Fin n → ℕ) (T : Module.End ℂ V) (x : V) :
    (liftL n T : Module.End ℂ (Cq n V)) (Pi.single (omU lev) x) = Pi.single (omU lev) (T x) := by
  ext B
  simp only [liftL, LinearMap.compLeft_apply, Function.comp_apply, top_app]
  split_ifs <;> simp

theorem annL_top_of_notMem {lev : Fin n → ℕ} {l : Lt n} (x : V) (h : l ∉ omU lev) :
    annL l (Pi.single (omU lev) x : Cq n V) = 0 := by
  ext B
  rw [annL_app, top_app]
  split_ifs with h1 h2
  · rfl
  · exact absurd (by rw [← h2]; exact Finset.mem_insert_self l B) h
  · simp

theorem creL_annL_top_same {lev : Fin n → ℕ} {l : Lt n} (x : V) (h : l ∈ omU lev) :
    creL l (annL l (Pi.single (omU lev) x : Cq n V)) = Pi.single (omU lev) x := by
  ext B
  rw [creL_annL]
  split_ifs with hB
  · rfl
  · rw [top_app, if_neg (fun e => hB (by rw [e]; exact h))]

theorem creL_annL_top_ne {lev : Fin n → ℕ} {l m : Lt n} (x : V) (hm : m ∈ omU lev) (hne : m ≠ l) :
    creL m (annL l (Pi.single (omU lev) x : Cq n V)) = 0 := by
  ext B
  rw [GlobalTheory.CompanionTheory.LvChain.creL_apply]
  split_ifs with hB
  · rw [annL_app]
    split_ifs with hl
    · simp
    · rw [top_app, if_neg]
      · simp
      · intro e
        have hmem : m ∈ insert l (B.erase m) := by
          rw [e]
          exact hm
        simp [hne] at hmem
  · rfl

theorem mem_omU_of_adCL_ne {lev : Fin n → ℕ} {p q : Fin n} {l k : Lt n} (hpq : lev p = lev q)
    (hl : l ∈ omU lev) (h : adCL false p q l k ≠ 0) : k ∈ omU lev := by
  rw [mem_omU] at hl ⊢
  obtain ⟨hl1, hl2⟩ := hl
  have case1 : (q = l.2.1.1 ∧ k.1 = xor false l.1 ∧ k.2.1 = (p, l.2.1.2)) →
      k.1 = false ∧ lev k.2.1.1 < lev k.2.1.2 := by
    rintro ⟨e1, e2, e3⟩
    refine ⟨by simp [e2, hl1], ?_⟩
    calc lev k.2.1.1 = lev p := by rw [e3]
      _ = lev q := hpq
      _ = lev l.2.1.1 := by rw [e1]
      _ < lev l.2.1.2 := hl2
      _ = lev k.2.1.2 := by rw [e3]
  have case2 : (l.2.1.2 = p ∧ k.1 = xor false l.1 ∧ k.2.1 = (l.2.1.1, q)) →
      k.1 = false ∧ lev k.2.1.1 < lev k.2.1.2 := by
    rintro ⟨e1, e2, e3⟩
    refine ⟨by simp [e2, hl1], ?_⟩
    calc lev k.2.1.1 = lev l.2.1.1 := by rw [e3]
      _ < lev l.2.1.2 := hl2
      _ = lev p := by rw [e1]
      _ = lev q := hpq
      _ = lev k.2.1.2 := by rw [e3]
  unfold adCL at h
  split_ifs at h with c1 c2 c3
  · exact case1 c1
  · exact case1 c1
  · exact case2 c3
  · simp at h

theorem adCL_self (p q : Fin n) (i : Pos n) :
    adCL false p q ((false, i) : Lt n) (false, i) = adC p q i i := by
  simp [adCL, adC]

theorem adLL_top {lev : Fin n → ℕ} {p q : Fin n} (hpq : lev p = lev q) (x : V) :
    adLL lev false p q (Pi.single (omU lev) x : Cq n V) =
      (∑ i : Pos n, if lev i.1.1 < lev i.1.2 then adC p q i i else 0) • (Pi.single (omU lev) x : Cq n V) := by
  have key : ∀ l k : Lt n, ((if inUU lev l then adCL false p q l k • (creL k * annL l) else 0 :
      Module.End ℂ (Cq n V)) (Pi.single (omU lev) x)) =
      if k = l then (if l ∈ omU lev then adCL false p q l l • (Pi.single (omU lev) x : Cq n V) else 0) else 0 := by
    intro l k
    by_cases hl : l ∈ omU lev
    · have hin : inUU lev l := (mem_omU.1 hl).2
      rw [if_pos hin, LinearMap.smul_apply, Module.End.mul_apply]
      by_cases hk : k = l
      · subst hk
        rw [creL_annL_top_same x hl, if_pos rfl, if_pos hl]
      · rw [if_neg hk]
        by_cases hkm : k ∈ omU lev
        · rw [creL_annL_top_ne x hkm hk, smul_zero]
        · have h0 : adCL false p q l k = 0 := by
            by_contra hne
            exact hkm (mem_omU_of_adCL_ne hpq hl hne)
          rw [h0, zero_smul]
    · have hr : (if k = l then (if l ∈ omU lev then adCL false p q l l • (Pi.single (omU lev) x : Cq n V) else 0)
          else 0) = 0 := by
        split_ifs <;> rfl
      rw [hr]
      split_ifs
      · rw [LinearMap.smul_apply, Module.End.mul_apply, annL_top_of_notMem x hl, map_zero, smul_zero]
      · rfl
  have hsum : (∑ l ∈ omU lev, adCL false p q l l) =
      ∑ i : Pos n, if lev i.1.1 < lev i.1.2 then adC p q i i else 0 := by
    rw [omU, Finset.sum_filter, Fintype.sum_prod_type, Fintype.sum_bool]
    simp [adCL_self]
  unfold adLL
  simp only [LinearMap.sum_apply, key, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  rw [← hsum, Finset.sum_smul, ← Finset.sum_filter]
  congr 1
  ext l
  simp

theorem leviFamilyOne_add_leviFamilyTwo (lev : Fin n → ℕ) (E1 E2 : Fin n → Fin n → Module.End ℂ V) (a c : Fin n) :
    firstLeviFamily lev E1 E2 a c + secondLeviFamily lev E1 E2 a c = evLc lev E1 E2 (FreeAlgebra.ι ℂ (false, a, c)) := by
  simp only [firstLeviFamily, secondLeviFamily, ← smul_add]
  rw [add_add_sub_cancel, ← two_smul ℂ, smul_smul]
  norm_num

end GlobalTheory.CompanionTheory.SemiClass

namespace GlobalTheory.CompanionTheory.SemiClass

open GlobalTheory.CompanionTheory.PairMult.TopK (K_act sum_diag adC_diag_ne)

theorem semiCls : SemiCls := by
  intro n lam _ lev hl V _ _ E1 E2 hA v hv a c hac
  rw [leviFamilyOne_add_leviFamilyTwo]
  unfold evLc
  rw [FreeAlgebra.lift_ι_apply]
  dsimp only
  rw [if_pos hac]
  simp only [Bool.false_eq_true, if_false]
  rw [LinearMap.add_apply, liftL_top, adLL_top hac]
  have hk : kA E1 E2 a c v = kF E1 E2 a c v := rfl
  rw [hk, GlobalTheory.CompanionTheory.PairMult.TopK.K_act hl hA hv hac]
  by_cases h : a = c
  · subst h
    rw [if_pos (rfl : a = a), if_pos (rfl : a = a), GlobalTheory.CompanionTheory.PairMult.TopK.sum_diag hl.1, top_smul, ← add_smul]
    congr 1
    push_cast
    ring
  · rw [if_neg h, if_neg h, top_zero, zero_add]
    have h0 : (∑ i : Pos n, if lev i.1.1 < lev i.1.2 then adC a c i i else 0) = 0 := by
      apply Finset.sum_eq_zero
      intro i _
      rw [GlobalTheory.CompanionTheory.PairMult.TopK.adC_diag_ne h i]
      simp
    rw [h0, zero_smul]

end GlobalTheory.CompanionTheory.SemiClass
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemisimpleClassificationReal =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.FirstSubSecondLeviFamily =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.FirstSubSecondLeviFamily", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.LeviCommutantWordReduction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset

namespace PositivityTheory.RgBcC.RealD

open Formalism.REAL (GlRel)

variable {n : ℕ}

theorem lr_strictAnti {lam : Fin n → ℤ} (hlam : Antitone lam) : StrictAnti (Lr lam) := by
  intro a b hab
  have h1 : (lam b : ℝ) ≤ lam a := by exact_mod_cast hlam hab.le
  have h2 : ((a : ℕ) : ℝ) < ((b : ℕ) : ℝ) := by exact_mod_cast hab
  simp only [Lr]
  linarith

section Intw

variable {V W : Type} [AddCommGroup V] [Module ℂ V] [AddCommGroup W] [Module ℂ W] (π : V →ₗ[ℂ] W)

def Intw (f : Module.End ℂ V) (g : Module.End ℂ W) : Prop := ∀ x, g (π x) = π (f x)

variable {π}

theorem Intw.add {f f' g g'} (h : Intw π f g) (h' : Intw π f' g') : Intw π (f + f') (g + g') := fun x => by
  simp [h x, h' x]

theorem Intw.sub {f f' g g'} (h : Intw π f g) (h' : Intw π f' g') : Intw π (f - f') (g - g') := fun x => by
  simp [h x, h' x]

theorem Intw.mul {f f' g g'} (h : Intw π f g) (h' : Intw π f' g') : Intw π (f * f') (g * g') := fun x => by
  simp [h' x, h (f' x)]

theorem Intw.zero : Intw π (0 : Module.End ℂ V) 0 := fun x => by simp

theorem Intw.algebraMap (c : ℂ) : Intw π (algebraMap ℂ (Module.End ℂ V) c) (algebraMap ℂ (Module.End ℂ W) c) :=
  fun x => by simp [Module.algebraMap_end_apply]

theorem Intw.intCast (m : ℤ) : Intw π (m : Module.End ℂ V) (m : Module.End ℂ W) := by
  have := Intw.algebraMap (π := π) (m : ℂ)
  simpa using this

theorem Intw.sum {ι : Type*} (s : Finset ι) {f : ι → Module.End ℂ V} {g : ι → Module.End ℂ W}
    (h : ∀ i, Intw π (f i) (g i)) : Intw π (∑ i ∈ s, f i) (∑ i ∈ s, g i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using Intw.zero
  | insert a s ha ih => rw [Finset.sum_insert ha, Finset.sum_insert ha]; exact (h a).add ih

theorem Intw.listMap {ι : Type*} (l : List ι) {f : ι → Module.End ℂ V} {g : ι → Module.End ℂ W}
    (h : ∀ i, Intw π (f i) (g i)) : Intw π (l.map f).prod (l.map g).prod := by
  induction l with
  | nil => simpa using Intw.algebraMap (π := π) 1
  | cons a l ih => simpa using (h a).mul ih

theorem Intw.ofFn {t : ℕ} {f : Fin t → Module.End ℂ V} {g : Fin t → Module.End ℂ W} (h : ∀ i, Intw π (f i) (g i)) :
    Intw π (List.ofFn f).prod (List.ofFn g).prod := by
  have := Intw.listMap (List.finRange t) h
  simpa [List.ofFn_eq_map] using this

theorem Intw.qminor {F : Fin n → Fin n → Module.End ℂ V} {G : Fin n → Fin n → Module.End ℂ W}
    (h : ∀ a b, Intw π (F a b) (G a b)) {t : ℕ} (r c : Fin t → Fin n) (u : ℂ) :
    Intw π (Formalism.REAL.qminor F r c u) (Formalism.REAL.qminor G r c u) := by
  unfold Formalism.REAL.qminor
  refine Intw.sum _ fun σ => (Intw.intCast _).mul (Intw.ofFn fun k => ?_)
  unfold Formalism.REAL.Tm
  refine Intw.add ?_ (h _ _)
  split_ifs
  · exact Intw.algebraMap _
  · exact Intw.zero

theorem Intw.capS {F : Fin n → Fin n → Module.End ℂ V} {G : Fin n → Fin n → Module.End ℂ W}
    (h : ∀ a b, Intw π (F a b) (G a b)) (lev : Fin n → ℕ) (j : ℕ) (u : ℂ) : Intw π (capS F lev j u) (capS G lev j u) :=
  Intw.qminor h _ _ _

theorem Intw.algHom {X : Type} (φ : FreeAlgebra ℂ X →ₐ[ℂ] Module.End ℂ V) (ψ : FreeAlgebra ℂ X →ₐ[ℂ] Module.End ℂ W)
    (h : ∀ p, Intw π (φ (FreeAlgebra.ι ℂ p)) (ψ (FreeAlgebra.ι ℂ p))) (z : FreeAlgebra ℂ X) : Intw π (φ z) (ψ z) := by
  induction z using FreeAlgebra.induction with
  | grade0 r => simpa using Intw.algebraMap (π := π) r
  | grade1 p => exact h p
  | mul a b ha hb => simpa using ha.mul hb
  | add a b ha hb => simpa using ha.add hb

theorem Intw.eq {f f' : Module.End ℂ V} {g g' : Module.End ℂ W} (h : Intw π f g) (h' : Intw π f' g')
    (hs : Function.Surjective π) (e : f = f') : g = g' :=
  LinearMap.ext fun y => by
    obtain ⟨x, rfl⟩ := hs y
    rw [h, h', e]

end Intw

def qOp {V : Type} [AddCommGroup V] [Module ℂ V] (B : Submodule ℂ V) (f : Module.End ℂ V) : Module.End ℂ (V ⧸ B) :=
  open Classical in if h : B ≤ B.comap f then B.mapQ B f h else 0

theorem qOp_intw {V : Type} [AddCommGroup V] [Module ℂ V] (B : Submodule ℂ V) (f : Module.End ℂ V)
    (h : ∀ x ∈ B, f x ∈ B) : Intw B.mkQ f (qOp B f) := fun x => by
  unfold qOp
  rw [dite_eq_left (show B ≤ B.comap f from fun y hy => h y hy)]
  rfl

section Chains

variable {V : Type} [AddCommGroup V] [Module ℂ V]

theorem first_sub_second_levi_family (lev : Fin n → ℕ) (E1 E2 : Fin n → Fin n → Module.End ℂ V) (p q : Fin n) :
    firstLeviFamily lev E1 E2 p q - secondLeviFamily lev E1 E2 p q = evLc lev E1 E2 (FreeAlgebra.ι ℂ (true, p, q)) := by
  simp only [firstLeviFamily, secondLeviFamily]
  module

theorem fc_stab (hLS : LevStab) {lev : Fin n → ℕ} (hmono : Monotone lev) {E1 E2 : Fin n → Fin n → Module.End ℂ V}
    (hp : IsPairA E1 E2) (p q : Fin n) :
    (∀ x ∈ bdSub lev E1 E2, firstLeviFamily lev E1 E2 p q x ∈ bdSub lev E1 E2) ∧
      ∀ x ∈ bdSub lev E1 E2, secondLeviFamily lev E1 E2 p q x ∈ bdSub lev E1 E2 := by
  by_cases h : lev p = lev q
  · exact ⟨fun x hx => (hLS n lev hmono V E1 E2 hp p q h x hx).1, fun x hx => (hLS n lev hmono V E1 E2 hp p q h x hx).2⟩
  · have h1 : firstLeviFamily lev E1 E2 p q = 0 := by simp [firstLeviFamily, evLc, h]
    have h2 : secondLeviFamily lev E1 E2 p q = 0 := by simp [secondLeviFamily, evLc, h]
    exact ⟨fun x _ => by simp [h1], fun x _ => by simp [h2]⟩

end Chains

theorem multiplicity_assembly_holds : MultiplicityAssembly := by
  intro hP hI hH hA hLS hLR hSC hCC h4 h5
  intro n lam hlam lev hlev V _ _ E1 E2 hadm v w hv hw hv0 hx
  have hp : IsPairA E1 E2 := ⟨hadm.gl1, hadm.gl2, hadm.comm⟩
  obtain ⟨a, ha, hav⟩ := hP n lam lev V E1 E2 hadm _ v w hv hw hv0 hx
  obtain ⟨b, hb, hcong⟩ := hH n lev hlev.1 a ha
  obtain ⟨σ1, σ2, hsh, hcap⟩ := hCC n lam hlam lev hlev
  let B : Submodule ℂ (Cq n V) := bdSub lev E1 E2
  let FrobeniusMapsXPow : Fin n → Fin n → Module.End ℂ (Cq n V ⧸ B) := fun p q => qOp B (firstLeviFamily lev E1 E2 p q)
  let FiniteCocycleOfIntegral : Fin n → Fin n → Module.End ℂ (Cq n V ⧸ B) := fun p q => qOp B (secondLeviFamily lev E1 E2 p q)
  have i1 : ∀ p q, Intw B.mkQ (firstLeviFamily lev E1 E2 p q) (FrobeniusMapsXPow p q) := fun p q =>
    qOp_intw B _ (fc_stab hLS hlev.1 hp p q).1
  have i2 : ∀ p q, Intw B.mkQ (secondLeviFamily lev E1 E2 p q) (FiniteCocycleOfIntegral p q) := fun p q =>
    qOp_intw B _ (fc_stab hLS hlev.1 hp p q).2
  have hsurj : Function.Surjective B.mkQ := B.mkQ_surjective
  have hLq : IsLevPairA lev FrobeniusMapsXPow FiniteCocycleOfIntegral := by
    intro p q r s h1 h2
    obtain ⟨r1, r2, r3⟩ := hLR n lev hlev.1 V E1 E2 hp p q r s h1 h2
    have ite1 : ∀ (c : Prop) [Decidable c] (x y : Fin n),
        Intw B.mkQ (if c then firstLeviFamily lev E1 E2 x y else 0) (if c then FrobeniusMapsXPow x y else 0) := fun c _ x y => by
      split_ifs
      · exact i1 x y
      · exact Intw.zero
    have ite2 : ∀ (c : Prop) [Decidable c] (x y : Fin n),
        Intw B.mkQ (if c then secondLeviFamily lev E1 E2 x y else 0) (if c then FiniteCocycleOfIntegral x y else 0) := fun c _ x y => by
      split_ifs
      · exact i2 x y
      · exact Intw.zero
    exact ⟨Intw.eq (((i1 p q).mul (i1 r s)).sub ((i1 r s).mul (i1 p q))) ((ite1 _ p s).sub (ite1 _ r q)) hsurj r1,
      Intw.eq (((i2 p q).mul (i2 r s)).sub ((i2 r s).mul (i2 p q))) ((ite2 _ p s).sub (ite2 _ r q)) hsurj r2,
      Intw.eq ((i1 p q).mul (i2 r s)) ((i2 r s).mul (i1 p q)) hsurj r3⟩
  let ν : Fin n → ℝ := fun a => muQ lam lev a + 2 * rhoU lev a
  have hcent : ∀ a c, lev a = lev c → ν a = ν c := by
    intro a c h
    simp only [ν, muQ, rhoU, h, hlev.2 a c h]
  let c : Cq n V ⧸ B := B.mkQ (Pi.single (omU lev) v : Cq n V)
  have hsemi : ∀ a' c', lev a' = lev c' → (FrobeniusMapsXPow a' c' + FiniteCocycleOfIntegral a' c') c = if a' = c' then (ν a' : ℂ) • c else 0 := by
    intro a' c' h
    rw [((i1 a' c').add (i2 a' c')) _, hSC n lam hlam lev hlev V E1 E2 hadm v hv a' c' h]
    split_ifs <;> simp [c, ν]
  have hcap1 : ∀ u : ℂ, capProd FrobeniusMapsXPow lev σ1 u c = (∏ a, (u + (Lr lam a : ℂ))) • c := by
    intro u
    have hi := Intw.listMap (π := B.mkQ) (levs lev) (fun j => Intw.capS i1 lev j (u - σ1 j))
    simp only [capProd, c]
    rw [hi, ← map_smul, ← sub_eq_zero, ← map_sub, Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero]
    exact (hcap V E1 E2 hadm v hv u).1
  have hcap2 : ∀ u : ℂ, capProd FiniteCocycleOfIntegral lev σ2 u c = (∏ a, (u + (Lr lam a : ℂ))) • c := by
    intro u
    have hi := Intw.listMap (π := B.mkQ) (levs lev) (fun j => Intw.capS i2 lev j (u - σ2 j))
    simp only [capProd, c]
    rw [hi, ← map_smul, ← sub_eq_zero, ← map_sub, Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero]
    exact (hcap V E1 E2 hadm v hv u).2
  have hS5 := h5 n (Lr lam) (lr_strictAnti hlam) lev hlev.1 ν σ1 σ2 hsh (Cq n V ⧸ B) FrobeniusMapsXPow FiniteCocycleOfIntegral hLq c hsemi hcap1 hcap2
  obtain ⟨z, hz⟩ := h4 n lev hlev.1 b hb ν hcent
  let sc : ℕ × ℂ → ℂ := fun p => ∏ a ∈ blk lev p.1, (p.2 + σ1 p.1 + (Lr lam a : ℂ))
  have hev : ∀ z : FreeAlgebra ℂ (ℕ × ℂ), evCap lev FrobeniusMapsXPow z c = FreeAlgebra.lift ℂ sc z • c := by
    intro z
    induction z using FreeAlgebra.induction with
    | grade0 r => simp [Module.algebraMap_end_apply]
    | grade1 p => simp [evCap, sc, hS5 p.1 p.2]
    | mul x y hx hy => rw [map_mul, map_mul, Module.End.mul_apply, hy, map_smul, hx, smul_smul, mul_comm]
    | add x y hx hy => rw [map_add (f := _), map_add (f := _), LinearMap.add_apply, hx, hy, add_smul]
  have hkill : ∀ l : Lt n, l.1 = false → inUU lev l → xL E1 E2 l v = 0 := by
    intro l hl _
    have hlt : l.2.1.1 < l.2.1.2 := l.2.2
    simp only [xL, hl, Bool.false_eq_true, if_false]
    exact hv.2 _ _ hlt rfl
  obtain ⟨y, hyS, hyD, hyEq⟩ := hA n lev hlev.1 a b ha hcong V E1 E2 hp v hkill
  have iL : Intw B.mkQ (evLc lev E1 E2 b) (evLv lev FrobeniusMapsXPow FiniteCocycleOfIntegral b) := by
    refine Intw.algHom _ _ (fun p => ?_) b
    obtain ⟨s, p1, p2⟩ := p
    by_cases h : lev p1 = lev p2
    · cases s
      · have e : evLv lev FrobeniusMapsXPow FiniteCocycleOfIntegral (FreeAlgebra.ι ℂ (false, p1, p2)) = FrobeniusMapsXPow p1 p2 + FiniteCocycleOfIntegral p1 p2 := by
          simp [evLv, h, kA]
        rw [e, ← GlobalTheory.CompanionTheory.SemiClass.leviFamilyOne_add_leviFamilyTwo]
        exact (i1 p1 p2).add (i2 p1 p2)
      · have e : evLv lev FrobeniusMapsXPow FiniteCocycleOfIntegral (FreeAlgebra.ι ℂ (true, p1, p2)) = FrobeniusMapsXPow p1 p2 - FiniteCocycleOfIntegral p1 p2 := by
          simp [evLv, h, pA]
        rw [e, ← first_sub_second_levi_family]
        exact (i1 p1 p2).sub (i2 p1 p2)
    · have e1 : evLc lev E1 E2 (FreeAlgebra.ι ℂ (s, p1, p2)) = 0 := by simp [evLc, h]
      have e2 : evLv lev FrobeniusMapsXPow FiniteCocycleOfIntegral (FreeAlgebra.ι ℂ (s, p1, p2)) = 0 := by simp [evLv, h]
      rw [e1, e2]
      exact Intw.zero
  have hbd : bdL (inUU lev) E1 E2 y ∈ B := Submodule.mem_map.2 ⟨y, ⟨hyS, hyD⟩, rfl⟩
  have hcw : B.mkQ (Pi.single (omU lev) w : Cq n V) = FreeAlgebra.lift ℂ sc z • c := by
    have e1 : B.mkQ (Pi.single (omU lev) (evKP E1 E2 a v) - evLc lev E1 E2 b (Pi.single (omU lev) v) : Cq n V) = 0 := by
      rw [hyEq, Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero]
      exact hbd
    rw [map_sub, sub_eq_zero, ← iL] at e1
    rw [← hav, e1, hz (Cq n V ⧸ B) FrobeniusMapsXPow FiniteCocycleOfIntegral hLq c hsemi, hev z]
  refine ⟨FreeAlgebra.lift ℂ sc z, ?_⟩
  have hmem : w - FreeAlgebra.lift ℂ sc z • v ∈ hwSp E1 E2 (muQ lam lev) := sub_mem hw (Submodule.smul_mem _ _ hv)
  have hzero : (Pi.single (omU lev) (w - FreeAlgebra.lift ℂ sc z • v) : Cq n V) ∈ B := by
    rw [← Submodule.Quotient.mk_eq_zero, ← Submodule.mkQ_apply, Pi.single_sub, Pi.single_smul, map_sub, map_smul, hcw]
    simp [c]
  obtain ⟨y', ⟨hy'S, hy'D⟩, hy'⟩ := Submodule.mem_map.1 hzero
  exact sub_eq_zero.1 (hI n lam hlam lev hlev V E1 E2 hadm _ y' hmem hy'S hy'D hy')

end PositivityTheory.RgBcC.RealD
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.FirstSubSecondLeviFamily =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.MultForOf =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.MultForOf", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.LeviCommutantWordReduction\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.FirstSubSecondLeviFamily\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.InjectiveDecompositionActionHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PositivityTheory.RgBcC.RealD

theorem multFor_of (hP : InvPick) (hLS : LevStab) (hLR : LevRel) (hSC : SemiCls) (hCC : CapCls) (h4 : LeviCommutantWordReduction)
    (h5 : CapelliProductsScalar) : MultFor :=
  multiplicity_assembly_holds hP injective_decomposition_action_holds.1 _root_.GlobalTheory.CompanionTheory.RealHCLv.hcdecLv injective_decomposition_action_holds.2.2 hLS hLR hSC hCC h4 h5

end PositivityTheory.RgBcC.RealD
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.MultForOf =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.MultForOfCapCls =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.MultForOfCapCls", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.LeviCommutantWordReduction\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CommutantReductionReal\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvariantPickReal\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LeviRelationsReal\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LeviStabilityReal\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ScalarActionFifthReal\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemisimpleClassificationReal\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.MultForOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PositivityTheory.RgBcC.RealD

theorem multFor_of_capCls (hCC : CapCls) : MultFor :=
  multFor_of _root_.GlobalTheory.CompanionTheory.InvPickKP.invPick _root_.GlobalTheory.CompanionTheory.LevBd.levStab _root_.GlobalTheory.CompanionTheory.LevChainRel.levRel _root_.GlobalTheory.CompanionTheory.SemiClass.semiCls hCC _root_.GlobalTheory.CompanionTheory.BlockCapelliWords.commutant_block_capelli_words _root_.GlobalTheory.CompanionTheory.CapScal.capScal

end PositivityTheory.RgBcC.RealD
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.MultForOfCapCls =====
