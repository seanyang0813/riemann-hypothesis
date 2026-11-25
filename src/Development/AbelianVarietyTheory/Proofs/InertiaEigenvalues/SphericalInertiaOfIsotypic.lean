module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SubsetTwistExceptionalPlaces
public import Formalism.SharpRestriction.CuspSpanNormBounds.BesselShellMomentBounds
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.EtaJUntw
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NotBaseCondFalse
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PositionOfIntro
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FunKilled

@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX NumberField IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up
open ReciprocityTheory.Aut Formalism.AUTREP

noncomputable section

namespace GlobalTheory.SphInertRef

section Read
variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type} {A3 : DIV.FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {R : Formalism.IndefR.Links.RealDat3 D A3 Ks}
  {F : Formalism.IndefR.Links.Face3 D A3} {X0 : BaseLevelRowSide D} {Y : Read R.toRealDat F.lv2 X0} {M : MtFam D}

theorem rt_real_eq_of_lev (hMA : MtAd Y M) (i : Fin D.R.m) (x : D.what₂.Mt D.what₂.mu0 (i.1 + 1))
    (κ : GAf D.host.E D.R.nV)
    (hJ : (hMA.PV i).ψ κ ∈ Formalism.IndefR.Links.levS _ (R.toRealDat.βV i)
      (Formalism.IndefR.RecTie.datVP R.toRealDat i (Y.tupT D.what₂.mu0) (R.toRealDat.levR F.lv2 false)))
    (hχ : Formalism.IndefR.Lev.levChi _ (R.toRealDat.βV i)
      (Formalism.IndefR.RecTie.datVP R.toRealDat i (Y.tupT D.what₂.mu0) (R.toRealDat.levR F.lv2 false)) ((hMA.PV i).ψ κ) = 1) :
    NG.rt D.host.E D.R.nV κ ((M D.what₂.mu0 (i.1 + 1) (by omega) (by omega)).real x) =
      (M D.what₂.mu0 (i.1 + 1) (by omega) (by omega)).real x := by
  have h0 : Formalism.IndefR.RecTie.Used0 D D.what₂.mu0 := Or.inl rfl
  funext g
  apply (hMA.eW _ h0 i).injective
  have e1 := hMA.read _ h0 i x (g * κ)
  have e2 := hMA.read _ h0 i x g
  have e3 := (Y.IL.jMt _ h0 i x).2.2 _ hJ ((hMA.PV i).ψ g)
  rw [hχ, ← map_mul] at e3
  exact e1.trans (e3.trans ((one_smul ℂ _).trans e2.symm))

end Read

end GlobalTheory.SphInertRef

end
