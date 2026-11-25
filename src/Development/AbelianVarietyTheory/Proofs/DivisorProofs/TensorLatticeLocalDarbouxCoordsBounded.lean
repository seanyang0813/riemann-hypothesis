module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatAtVAtStable
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
public import Development.WeilBound.ThetaLifts.TowerModels.TwistedSums.TensorLatticeAtFinitePlaceEqIntegralSpanGenerato
import Formalism.LocalRingCardinality.SpanPowerMembership.LocAtA
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
public import Development.WeilBound.ThetaLifts.TowerModels.TwistedSums.EqAdeleSupportedAtFinitePlaceOfSupportedAt

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames Formalism.L2.DIV

open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun
open ValuativeRel
open scoped GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels

namespace GlobalTheory.LatBound

theorem exists_mul_mem_integers {F : Type} [Field F] [NumberField F] (v : IsDedekindDomain.HeightOneSpectrum (𝓞 F))
    {T : Type} [Fintype T] (w : T → Fv F v) :
    ∃ c : Fv F v, c ≠ 0 ∧ ∀ t, c * w t ∈ v.adicCompletionIntegers F := by
  classical
  have key : ∀ x : Fv F v, ∃ c : Fv F v, c ≠ 0 ∧ c ∈ v.adicCompletionIntegers F ∧
      c * x ∈ v.adicCompletionIntegers F := by
    intro x
    by_cases hx : x ∈ v.adicCompletionIntegers F
    · exact ⟨1, one_ne_zero, one_mem _, by simpa using hx⟩
    · have hx0 : x ≠ 0 := by rintro rfl; exact hx (zero_mem _)
      refine ⟨x⁻¹, inv_ne_zero hx0, ?_, by rw [inv_mul_cancel₀ hx0]; exact one_mem _⟩
      exact ((v.adicCompletionIntegers F).mem_or_inv_mem x).resolve_left hx
  choose cw hcw0 hcwO hcw using key
  refine ⟨∏ t, cw (w t), Finset.prod_ne_zero_iff.2 fun t _ => hcw0 _, fun t => ?_⟩
  rw [← Finset.mul_prod_erase Finset.univ (fun t => cw (w t)) (Finset.mem_univ t), mul_comm (cw (w t)), mul_assoc]
  exact mul_mem (prod_mem fun t' _ => hcwO _) (hcw _)

theorem locCo_latAtV_bounded : ∀ {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n d : ℕ}
    (X : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Spc F E n) (Y : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Spc F E d) (v : IsDedekindDomain.HeightOneSpectrum (𝓞 F))
    {B : Matrix (Fin n) (Fin d) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E)) → Matrix (Fin n) (Fin d) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E)) → AF F}
    {κ : Type} [Fintype κ] (co : GlobalTheory.WeilM.Darboux B κ), X.L.IsLattice E → Y.L.IsLattice E →
    ∃ c : Fv F v, c ≠ 0 ∧ ∀ γ ∈ GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.latAtV X Y v, ∀ i,
      c * (GlobalTheory.LatVac.locCo co v γ).1 i ∈ v.adicCompletionIntegers F ∧
      c * (GlobalTheory.LatVac.locCo co v γ).2 i ∈ v.adicCompletionIntegers F := by
  intro F E _ _ _ _ _ n d X Y v B κ _ co hX hY
  obtain ⟨M, _, g, hg⟩ := Tw.LatParam.latAtV_param X Y hX hY v
  obtain ⟨c, hc0, hc⟩ := exists_mul_mem_integers v
    (fun t : Bool × M × κ => if t.1 then (GlobalTheory.LatVac.locCo co v (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.incM F (g t.2.1))).1 t.2.2
      else (GlobalTheory.LatVac.locCo co v (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.incM F (g t.2.1))).2 t.2.2)
  have hsmul : ∀ (t : Fv F v) z, GlobalTheory.LatVac.locCo co v (GlobalTheory.EmbChart.atPlace v t • z) =
      t • GlobalTheory.LatVac.locCo co v z := by
    intro t z
    simp only [GlobalTheory.LatVac.locCo, AddMonoidHom.coe_mk, ZeroHom.coe_mk, map_smul]
    ext k <;> simp [smul_eq_mul, map_mul, GlobalTheory.EmbChart.evFin_atPlace]
  refine ⟨c, hc0, fun γ hγ i => ?_⟩
  obtain ⟨a, rfl⟩ := (hg γ).1 hγ

  simp only [map_sum, hsmul, Prod.fst_sum, Prod.snd_sum, Finset.sum_apply, Prod.smul_fst, Prod.smul_snd,
  Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
  constructor
  · refine sum_mem fun m _ => ?_
    rw [mul_left_comm]
    exact mul_mem (a m).2 (by simpa using hc (true, m, i))
  · refine sum_mem fun m _ => ?_
    rw [mul_left_comm]
    exact mul_mem (a m).2 (by simpa using hc (false, m, i))

end GlobalTheory.LatBound
