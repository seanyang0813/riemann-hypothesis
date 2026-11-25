module

public import Development.AbelianVarietyTheory.Definitions.Divisors.InvVolConjLevelOne
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SqNormIntegralFundamentalDomainEqL2NormSq
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CompAtMtOfMemGfC
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.VacRowScalar
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
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PairPtsClasses
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PairPtsEqSum

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.ExpansionInvariance GlobalTheory.RowVertexInv

noncomputable section

namespace GlobalTheory.RowChiVac

variable {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {W : G.Weil} {U : Set T}

theorem vac_chi_scalar : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {W : G.Weil} {U : Set T} (S : GridChoice W U) {i : ℕ}, i + 1 ≤ D.R.m → ∀ (x : FinPt G (.grid i D.R.m)) (y : FinPt G (.grid (i + 1) D.R.m)), (∀ u, u ∈ latO (G.pS (.chi i D.R.m : Pair T)) (G.pT (.chi i D.R.m : Pair T)) (S.N.latS (.chi i D.R.m) : Set _) (S.N.latT (.chi i D.R.m) : Set _) (fun _ => True) ↔ actO _ _ (G.toPair (.chi i D.R.m) x y).1 (G.toPair (.chi i D.R.m) x y).2 u ∈ latO (G.pS (.chi i D.R.m : Pair T)) (G.pT (.chi i D.R.m : Pair T)) (S.N.latS (.chi i D.R.m) : Set _) (S.N.latT (.chi i D.R.m) : Set _) (fun _ => True)) → ∃ c : ℂ, W.om (.chi i D.R.m) (G.toPair (.chi i D.R.m) x y) (S.Z.vac (.chi i D.R.m)) = c • S.Z.vac (.chi i D.R.m) := by
  intro D T L sc G W U S i hi x y hlat
  have hp : DefPair D.R.m (Pair.chi i D.R.m : Pair T) := ⟨hi, rfl⟩
  have hom := W.om_is (.chi i D.R.m) (by simp only [Pair.InRange, Pair.big, Node.InRange]; omega)
  have m1 : (G.toPair (.chi i D.R.m) x y).1 ∈ GfC _ := GlobalTheory.LastRowVac.negGA_mem _ y.2
  have m2 : (G.toPair (.chi i D.R.m) x y).2 ∈ GfC _ := x.2
  have hΛ : ∀ u, u ∈ latO (G.pS (.chi i D.R.m : Pair T)) (G.pT (.chi i D.R.m : Pair T)) (S.N.latS (.chi i D.R.m) : Set _)
        (S.N.latT (.chi i D.R.m) : Set _) (fun _ => True) ↔
      ∃ u₀ ∈ latO (G.pS (.chi i D.R.m : Pair T)) (G.pT (.chi i D.R.m : Pair T)) (S.N.latS (.chi i D.R.m) : Set _)
        (S.N.latT (.chi i D.R.m) : Set _) (fun _ => True),
        u = actO _ _ (G.toPair (.chi i D.R.m) x y).1 (G.toPair (.chi i D.R.m) x y).2 u₀ := by
    intro u
    have e := GlobalTheory.WeilVacMove.actO_inv_actO (G.toPair (.chi i D.R.m) x y).1⁻¹ (G.toPair (.chi i D.R.m) x y).2⁻¹ u
    rw [inv_inv, inv_inv] at e
    constructor
    · intro hu
      refine ⟨actO _ _ (G.toPair (.chi i D.R.m) x y).1⁻¹ (G.toPair (.chi i D.R.m) x y).2⁻¹ u, (hlat _).2 ?_, e.symm⟩
      rw [e]
      exact hu
    · rintro ⟨u₀, hu₀, rfl⟩
      exact (hlat u₀).1 hu₀
  have hv' := GlobalTheory.WeilVacMove.isVacO_om D W.ψ W.θ _ _ _ _ (W.om _) hom W.θ_is _ _ _ _ _ _ _ _
    (G.toPair (.chi i D.R.m) x y).1 (G.toPair (.chi i D.R.m) x y).2
    (fun τ => by rw [GlobalTheory.OrientedHeis.compAt_mt_of_mem_GfC W.θ _ m1, Matrix.mul_one, Matrix.one_mul])
    (fun τ => by rw [GlobalTheory.OrientedHeis.compAt_mt_of_mem_GfC W.θ _ m2, Matrix.mul_one, Matrix.one_mul])
    hΛ _ (S.Z.vac_is _ hp)
  obtain ⟨c, -, hc⟩ := GlobalTheory.LastRowVac.eq_smul_vac S hp _ hv'
  exact ⟨c, hc⟩

end GlobalTheory.RowChiVac

end
