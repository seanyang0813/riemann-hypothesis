module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ToUnitsCompToCircle
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaPairCharactersAtLevel
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaVectorFockVacuum
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

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open scoped TensorProduct

namespace GlobalTheory.ConjTwist.Test

open GlobalTheory.ExportSeries

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T0 : Type} {A : FamIn D.what₂.LL G Pl0 T0 D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {R : RealDat D A Ks} {i : Fin D.R.m}

theorem frame_good {F : Face D A} (hC : GlobalTheory.Hk3.Core R F) {B : Base (Vc D i) (Wc D i)} (h : BaseOf R i B) : B.F.Good := by
  refine {
    rank_le := B.hr
    onbS := ?_
    cartT := ?_
    onbT := ?_
    sdS := ?_
    sdT := ?_
    frS := ?_
    frT := ?_
    vac := ?_
  }
  · intro τ
    rw [h.BS]
    exact hC.models.BV i τ
  · intro τ
    rw [h.sT]
    exact GlobalTheory.AdTh.VecFock.isCartanInv_cart _ τ
  · intro τ
    rw [h.sT, h.BT]
    exact GlobalTheory.AdTh.VecFock.isONBasis_onb _ τ _ (hC.models.order i τ)
  · rw [h.ΛS]
    exact GlobalTheory.AdTh.RecPair.selfDual_of_coe (GlobalTheory.AdTh.RecPair.coe_eq_of_frame (hC.lev.βV i))
  · rw [h.ΛT]
    exact GlobalTheory.AdTh.RecPair.selfDual_of_coe (GlobalTheory.AdTh.RecPair.coe_eq_of_frame (hC.lev.βW i))
  · rw [h.ΛS, h.βS]
    exact (hC.lev.βV i).choose_spec.1
  · rw [h.ΛT, h.βT]
    exact (hC.lev.βW i).choose_spec.1
  · rw [h.ψ, h.θ, h.sT, h.ΛS, h.ΛT, h.vac]
    exact (hC.thP.vP i A.μ0).1

open Classical in
theorem splitSet_Pg {F : Face D A} (hC : GlobalTheory.Hk3.Core R F) (i : Fin D.R.m) (t : T0) : SplitSet (R.Pg ∪ R.Q t) := by
  obtain ⟨-, e, he, -⟩ := hC.thP.vP i t
  exact ⟨e, by convert he⟩

theorem levS_chars {B : Base (Vc D i) (Wc D i)} (h : BaseOf R i B) (hL : R.toLevCh.Is A.μ0) (hB : B.Good) {ψ : Twist D Circle}
    (hψ : ψ.Good) (hQ : B.admitted ψ.Q) {t : T0} (ht : IsTupOf R B ψ t) :
    (B.levS ψ).Pg = (R.datVt i t).Pg ∧ (B.levS ψ).Q = (R.datVt i t).Q ∧
      (∀ c, ∀ PP ∈ R.Pg, (B.levS ψ).cg c PP = (R.datVt i t).cg c PP) ∧
      ∀ PP ∈ R.Q t, (B.levS ψ).xq PP = (R.datVt i t).xq PP :=
  ⟨h.Pg, by rw [show (R.datVt i t).Q = R.Q t from rfl, ht.2]; rfl, fun _ _ hPP => h.muC_eq hL hB hPP,
    fun _ hPP => (ht.xiR_eq hL hB hψ hQ hPP).symm⟩

end GlobalTheory.ConjTwist.Test
