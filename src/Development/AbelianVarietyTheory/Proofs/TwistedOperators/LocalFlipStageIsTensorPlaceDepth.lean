module

public import Development.AbelianVarietyTheory.Statements.HeckeThetaIntegrals.FormulaAt
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SumOKEx
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnderMemAndPlaceAboveEqOfMem
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValuationLeOneOfMem
import Development.AutomorphicArithmetic.CyclotomicBounds.RamifiedDiscriminants.FunKit
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
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RangeSndRel

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.StdFrames GlobalTheory.RowClaim GlobalTheory.FlipRun

noncomputable section

namespace GlobalTheory.FlipRun

theorem canFlip_of_append {γ : List GlobalTheory.SplitFlip.Edge} {l l' : List (ℕ × ℕ)} (h : GlobalTheory.SplitFlip.CanFlip γ (l ++ l')) :
    GlobalTheory.SplitFlip.CanFlip γ l := by
  induction l generalizing γ with
  | nil => exact .nil _
  | cons x l ih =>
    cases h with
    | cons hp h' => exact .cons hp (ih h')

theorem isTensor_flips_take : GlobalTheory.RowClaim.Big fun {D} _ _ _ _ {T} _ _ _ _ _ _ ch => ∀ (t : T) (Φ : ch.G.Datum), ∀ w ∈ locPl ch.G t, ∀ k, k ≤ D.R.m ^ 2 → (locGrid ch.G t w).IsTensor (unifAt w) (depthAt ch.G w) ((givenStage t w ch.S.B Φ).flips .one (psiAt ch.W w) (unifAt w) (depthAt ch.G w) ((flipOrder D.R.m).take k)).path ((givenStage t w ch.S.B Φ).flips .one (psiAt ch.W w) (unifAt w) (depthAt ch.G w) ((flipOrder D.R.m).take k)).tensor := by
  refine ⟨0, fun ε CF _ => ⟨0, fun D large₂ _ _ Γ _ _ Pl0 T A Ks _ _ _ R F s ch hch _ => ?_⟩⟩
  intro t Φ w hw k _
  have hL := s.core.lev
  have hde : Nat.Coprime D.host.pde (D.host.QS * D.host.q) ∧ Nat.Coprime D.host.pde' (D.host.QS * D.host.q) := by
    obtain ⟨⟨P, -, -⟩, -⟩ := s.size
    have key : ∀ p ∈ D.host.levelPrimes, p.Prime → Nat.Coprime p (D.host.QS * D.host.q) := fun p hp hpp =>
      UpperTheory.Ram.Fun.coprime_QSq_of_splitK D.host hpp (P.level_split p hp)
    exact ⟨key _ D.host.pde_level.1 D.host.pde_prime, key _ D.host.pde_level.2 D.host.pde'_prime⟩
  have hg := (Good.locGrid_isGood hL ch.G ch.W t hde (hch.guard t)).1 w hw
  have hadm := GivenAdm.givenStage_isAdmissible hL ch.S.B t Φ hw
  have hm : 0 < D.R.m := by have := D.R.two_le_m; omega
  have h00 := hg.square 0 hm 0 hm
  have hν : ∀ x ∈ flipOrder D.R.m, GlobalTheory.SplitFlip.CondLE (unifAt w) (depthAt ch.G w) ((locGrid ch.G t w).nu x.1 x.2) := by
    intro x hx
    simp only [flipOrder, List.mem_flatMap, List.mem_map, List.mem_range] at hx
    obtain ⟨i, hi, j, hj, rfl⟩ := hx
    rw [← GlobalTheory.SplitFlip.Grid.alpha_div_beta]
    exact (hg.square i hi j hj).condν
  have hcan : GlobalTheory.SplitFlip.CanFlip (GlobalTheory.SplitFlip.givenPath D.R.m) ((flipOrder D.R.m).take k) := by
    have h := (canFlip_flipOrder D.R.m).1
    rw [← List.take_append_drop k (flipOrder D.R.m)] at h
    exact canFlip_of_append h
  exact isTensor_flips h00.unif h00.cond h00.one_le ((flipOrder D.R.m).take k) (givenStage t w ch.S.B Φ)
    (fun x hx => hν x (List.mem_of_mem_take hx)) hcan (fun X => GivenAdm.givenLevel_open hL hw X) hadm.tensor

end GlobalTheory.FlipRun

end
