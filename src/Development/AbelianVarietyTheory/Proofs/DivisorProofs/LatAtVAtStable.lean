module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.Topology.Sheaves.Init
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.UnitaryConjugation

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField MeasureTheory Matrix
open Classical
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames Formalism.L2.DIV
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (spV spW spW₁ spV₁ alpha beta Num skewGram blk conjU)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model HasExp SplitsFully Chars)

noncomputable section

namespace GlobalTheory.LatVac

variable {F : Type} [Field F] [NumberField F]

def liftV (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) : Fv F v →ₗ[F] AF F :=
  (LinearMap.inr F (Ainf F) (Af F)).comp (GlobalTheory.AdelicU.singleFin v)

def psiAt (ψ : AddChar (AF F) ℂ) (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) : AddChar (Fv F v) ℂ :=
  ψ.compAddMonoidHom (liftV v).toAddMonoidHom

theorem psiAt_apply (ψ : AddChar (AF F) ℂ) (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) (x : Fv F v) :
    psiAt ψ v x = GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.psiLoc ψ v x := rfl

def locCo {W : Type} [AddCommGroup W] [Module (AF F) W] {B : W → W → AF F} {κ : Type} [Fintype κ]
    (co : GlobalTheory.WeilM.Darboux B κ) (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) : W →+ (κ → Fv F v) × (κ → Fv F v) where
  toFun w := (fun k => GlobalTheory.AdelicU.evFin F v ((co.e w).1 k), fun k => GlobalTheory.AdelicU.evFin F v ((co.e w).2 k))
  map_zero' := by ext <;> simp
  map_add' a b := by ext <;> simp

theorem evFin_liftV (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) (a : Fv F v) : GlobalTheory.AdelicU.evFin F v (liftV v a) = a :=
  GlobalTheory.AdelicU.evalV_singleFin_self v a

theorem at_liftV (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) (a : Fv F v) :
    GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.AdelicU.evFin F v) (liftV v a) := by
  intro u hu
  refine Prod.ext (by change u.1 * 0 = 0; exact mul_zero _) ?_
  change u.2 * GlobalTheory.AdelicU.singleFin v a = 0
  apply GlobalTheory.AdelicU.af_ext
  intro w
  rw [map_mul, map_zero]
  by_cases hw : w = v
  · subst hw
    have : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.evalV F w u.2 = 0 := hu
    rw [this, zero_mul]
  · rw [GlobalTheory.AdelicU.evalV_singleFin_ne hw, mul_zero]

end GlobalTheory.LatVac

namespace GlobalTheory.LatVac

theorem symp_smul_smul {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (σ : E →ₐ[F] E) {n d : ℕ} (JA : Matrix (Fin n) (Fin n) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E)))
    (JB : Matrix (Fin d) (Fin d) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E))) (ξ : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E)) (a a' : AF F)
    (x y : Matrix (Fin n) (Fin d) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E))) :
    GlobalTheory.WeilM.symp (R := AF F) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.cA σ) ξ JA JB (a • x) (a' • y) =
      a * a' * GlobalTheory.WeilM.symp (R := AF F) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.cA σ) ξ JA JB x y := by
  unfold GlobalTheory.WeilM.symp GlobalTheory.WeilM.hTens
  have h : ξ * ∑ i, ∑ j, ∑ k, ∑ l, (a • x) i j * JA i k * JB j l * (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.cA σ) ((a' • y) k l)
      = (a * a') • (ξ * ∑ i, ∑ j, ∑ k, ∑ l, x i j * JA i k * JB j l * (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.cA σ) (y k l)) := by
    simp only [Matrix.smul_apply, map_smul, Finset.mul_sum, Finset.smul_sum]
    refine Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ =>
      Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => ?_
    simp only [Algebra.smul_def, map_mul]
    ring
  rw [h, map_smul, smul_eq_mul]

end GlobalTheory.LatVac

namespace GlobalTheory.LatVac

theorem latAtV_at_stable : ∀ {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n d : ℕ}
    (X : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Spc F E n) (Y : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Spc F E d) (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)),
    (∀ γ ∈ GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.latAtV X Y v, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.AdelicU.evFin F v) γ) ∧
    ∀ a ∈ v.adicCompletionIntegers F, ∀ γ ∈ GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.latAtV X Y v,
      GlobalTheory.LatVac.liftV v a • γ ∈ GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.latAtV X Y v := by
  intro F E _ _ _ _ _ n d X Y v
  constructor
  · intro γ hγ
    induction hγ using AddSubgroup.closure_induction with
    | mem z hz =>
      obtain ⟨a, ha, -, x, -, y, -, rfl⟩ := hz
      intro u hu
      rw [smul_smul, ← smul_eq_mul u a, ha u hu, zero_smul]
    | zero => intro u _; exact smul_zero u
    | add x y _ _ hx hy => intro u hu; rw [smul_add, hx u hu, hy u hu, add_zero]
    | neg x _ hx => intro u hu; rw [smul_neg, hx u hu, neg_zero]
  · intro a ha γ hγ
    induction hγ using AddSubgroup.closure_induction with
    | mem z hz =>
      obtain ⟨a', ha', hv, x, hx, y, hy, rfl⟩ := hz
      rw [smul_smul]
      refine AddSubgroup.subset_closure ⟨GlobalTheory.LatVac.liftV v a • a', ?_, ?_, x, hx, y, hy, rfl⟩
      · intro u hu
        rw [smul_eq_mul, smul_eq_mul, mul_left_comm, ← smul_eq_mul u a', ha' u hu, mul_zero]
      · rw [smul_eq_mul, map_mul, evFin_liftV]
        exact mul_mem ha hv
    | zero => rw [smul_zero]; exact zero_mem _
    | add x y _ _ hx hy => rw [smul_add]; exact add_mem hx hy
    | neg x _ hx => rw [smul_neg]; exact neg_mem hx

end GlobalTheory.LatVac
