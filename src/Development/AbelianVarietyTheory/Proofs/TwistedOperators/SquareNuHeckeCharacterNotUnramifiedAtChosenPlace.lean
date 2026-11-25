module

public import Development.AbelianVarietyTheory.Definitions.Divisors.FinitePrimesUnder
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LevelCharactersUnramifiedOffLevelPlaces
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
import Mathlib.Topology.Sheaves.Init
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.UnitCharTriangle

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj
open Formalism.L2.Host (HChar)
open GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle (Tri FieldCond)

namespace GlobalTheory.RowTest

variable {D : D7} {T : Type} {L : LevCh D T} {sc : Consts}

theorem squareNuHeckeCharacter_not_unramified_at_chosenPlace {μ₀ : T} (hL : L.Is μ₀) (G : GridData L sc) (t : T) (i j : Fin D.R.m) :
    ¬ (SqNum.nuH G t i j).UnrAt (G.pl.w G.pl.v0) := by
  intro hnu

  have hunder : (G.pl.w G.pl.v0).under (𝓞 D.host.F) = G.pl.v0 :=
    G.pl.under_w (G.pl.mem_S0_of_sum_eq.2 (Or.inl rfl))
  have hnotS1 : G.pl.v0 ∉ S1 D := G.ch.basePlace_not_mem_chiGridBadPlaces

  have hoff : ∀ PP, PP ∈ L.Pg ∨ PP ∈ L.Q t →
      (_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP) ≠ (G.pl.w G.pl.v0).under (𝓞 D.host.F) := by
    intro PP hPP
    rw [hunder]
    rcases hPP with hP | hP
    · intro heq
      apply hnotS1
      obtain ⟨k, hk⟩ := (hL.Pg PP).1 hP
      have hmem := GlobalTheory.LevelPlaces.mem_of_div L.C.P k PP hk
      have hF : ((D.host.g k : ℕ) : 𝓞 D.host.F) ∈ ((_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP)).asIdeal := by
        simpa using hmem
      rw [← heq, S1_mem_OmF]
      fin_cases k
      · exact Or.inl hF
      · exact Or.inr (Or.inl hF)
    · exact G.pl.levelPlace_ne_basePlace t PP hP
  obtain ⟨hxi, hmu⟩ := (GlobalTheory.levCh_unramified_places D T L μ₀ hL t).2.2.2 _ hoff

  have hchi := (G.ch.lev0 (D.R.m - i) (by omega) (by omega) _ hunder).2
  apply hchi
  intro x hx
  have h := hnu x hx
  change (L.C.mu0 j * L.xiH t / G.ch.chiH (D.R.m - i)).loc (G.pl.w G.pl.v0) x = 1 at h
  change (L.C.mu0 j).loc (G.pl.w G.pl.v0) x * (L.xiH t).loc (G.pl.w G.pl.v0) x * ((G.ch.chiH (D.R.m - i)).loc (G.pl.w G.pl.v0) x)⁻¹ = 1 at h
  rw [hmu j x hx, hxi x hx, one_mul, one_mul] at h
  exact inv_eq_one.mp h

end GlobalTheory.RowTest

end
