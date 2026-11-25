module

public import Mathlib.Basic.Complex.Basic
public import Mathlib.LinearAlgebra.FiniteDimensional.Defs
public import Mathlib.RingTheory.Localization.FractionRing
import Formalism.LocalRingCardinality.DataHost
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Mathlib.RingTheory.PicardGroup
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
public import Development.AbelianVarietyTheory.BlockTheory.TorsionBlocks.ToricLatticeDenominators
import Development.AbelianVarietyTheory.Definitions.Divisors.LevelOfOfSameBut
import Development.AbelianVarietyTheory.Definitions.Divisors.TupleReadBaseTupleEqFamily
import Mathlib.Algebra.Azumaya.Basic

@[expose] public section

open GlobalTheory.BigTop GlobalTheory.BigOn GlobalTheory.BigOn.Exp
open NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.DIV.Cons Formalism.L2.Pj Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Indef.Tree Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Cx
open Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta
open Formalism.IndefR.FWT GlobalTheory.OntoChain GlobalTheory.RealIndexBound GlobalTheory.OnTies GlobalTheory.SeriesTie
open GlobalTheory.IndefiniteRowSideFullHecke.ToricLatticeDenominators (FmExt eExt incl)
open scoped TensorProduct


noncomputable section

namespace GlobalTheory.BigOn.Exp

section Generic

variable {O : Type} [CommRing O] [IsDomain O] {M : Type} [AddCommGroup M] [Module (FractionRing O) M] [Module O M]
  [IsScalarTower O (FractionRing O) M] [FiniteDimensional (FractionRing O) M]
  {L : Type} [Field L] [Algebra O L] {eK : FractionRing O →+* ℂ} {G : Type}

def readExt (rd : M →ₛₗ[eK] (G → ℂ)) (eL : L →+* ℂ)
    (hL : ∀ c : O, eL (algebraMap O L c) = eK (algebraMap O (FractionRing O) c)) : L ⊗[O] M →+ (G → ℂ) :=
  TensorProduct.liftAddHom
    { toFun := fun b => (DistribSMul.toAddMonoidHom _ (eL b)).comp rd.toAddMonoidHom
      map_zero' := by ext; simp
      map_add' := fun _ _ => by ext; simp [add_mul] }
    fun c b f => by
      change eL (c • b) • rd f = eL b • rd (c • f)
      rw [← algebraMap_smul (FractionRing O) c f, LinearMap.map_smulₛₗ rd, Algebra.smul_def c b, map_mul, hL, smul_smul, mul_comm]

variable (rd : M →ₛₗ[eK] (G → ℂ)) (eL : L →+* ℂ)
  (hL : ∀ c : O, eL (algebraMap O L c) = eK (algebraMap O (FractionRing O) c))

theorem readExt_tmul (b : L) (f : M) : readExt rd eL hL (b ⊗ₜ f) = eL b • rd f := rfl

theorem readExt_smul (b : L) (x : L ⊗[O] M) : readExt rd eL hL (b • x) = eL b • readExt rd eL hL x := by
  induction x using TensorProduct.induction_on with
  | zero => rw [smul_zero, map_zero, smul_zero]
  | add x y hx hy => rw [smul_add, map_add (f := _), map_add (f := _), hx, hy, smul_add]
  | tmul a f =>
    rw [TensorProduct.smul_tmul', readExt_tmul, readExt_tmul, smul_eq_mul, map_mul, mul_smul]

theorem readExt_injective
    (hF : ∀ (n : ℕ) (v : Fin n → M), LinearIndependent (FractionRing O) v → LinearIndependent ℂ fun c => rd (v c)) :
    Function.Injective (readExt rd eL hL) := by
  refine (injective_iff_map_eq_zero _).2 fun x hx => ?_
  let v := Module.finBasis (FractionRing O) M
  have key : ∀ x : L ⊗[O] M, ∃ d : O, d ≠ 0 ∧ ∃ c : _ → L, d • x = ∑ a, c a ⊗ₜ v a := fun x => by
    induction x using TensorProduct.induction_on with
    | zero => exact ⟨1, one_ne_zero, 0, by simp⟩
    | add x y hx hy =>
      obtain ⟨d, hd, c, e⟩ := hx
      obtain ⟨d', hd', c', e'⟩ := hy
      refine ⟨d * d', mul_ne_zero hd hd', d' • c + d • c', ?_⟩
      rw [smul_add, mul_smul d d' y, mul_comm, mul_smul, e, e']
      simp [Finset.smul_sum, TensorProduct.add_tmul, Finset.sum_add_distrib, TensorProduct.smul_tmul']
    | tmul a f =>
      obtain ⟨d, hd⟩ := IsLocalization.exist_integer_multiples_of_finite (nonZeroDivisors O) fun c => v.repr f c
      choose y hy using hd
      refine ⟨d, nonZeroDivisors.coe_ne_zero d, fun c => y c • a, ?_⟩
      rw [← TensorProduct.tmul_smul]
      conv_lhs => rw [← v.sum_repr f]
      rw [Finset.smul_sum, TensorProduct.tmul_sum]
      refine Finset.sum_congr rfl fun c _ => ?_
      rw [TensorProduct.smul_tmul, ← algebraMap_smul (FractionRing O) (y c), hy, smul_assoc]
  obtain ⟨d, hd, c, e⟩ := key x
  have h1 : ∑ a, eL (c a) • rd (v a) = 0 := by
    have := congrArg (readExt rd eL hL) e

    rw [← algebraMap_smul L d x, readExt_smul, hx, smul_zero, map_sum] at this
    exact this.symm
  have h2 : ∀ a, c a = 0 := fun a => eL.injective
    ((Fintype.linearIndependent_iff.1 (hF _ v v.linearIndependent) _ h1 a).trans (map_zero _).symm)
  have h3 : d • x = 0 := by simp [e, h2]
  have h4 : ∀ x : L ⊗[O] M,
      LinearMap.lTensor L (((algebraMap O (FractionRing O) d)⁻¹ • LinearMap.id :
        Module.End (FractionRing O) M).restrictScalars O) (d • x) = x := fun x => by
    induction x using TensorProduct.induction_on with
    | zero => simp
    | add x y hx hy => rw [smul_add, map_add (f := _), hx, hy]
    | tmul a f =>
      rw [← TensorProduct.tmul_smul, LinearMap.lTensor_tmul]
      congr 1
      change (algebraMap O (FractionRing O) d)⁻¹ • d • f = f
      rw [← algebraMap_smul (FractionRing O) d f, inv_smul_smul₀ (by simpa using hd)]
  rw [← h4 x, h3, map_zero]

end Generic


end GlobalTheory.BigOn.Exp
