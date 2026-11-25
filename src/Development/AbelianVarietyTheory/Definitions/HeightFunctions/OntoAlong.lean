module

public import Development.AbelianVarietyTheory.Definitions.HeightFunctions.RunsAlong
public import Development.AbelianVarietyTheory.Statements.PlaceShiftStatements.SingleIndexPlacesAreTwisted
public import Formalism.LocalToGlobal.IndefiniteReal.WeakCharacterisationWithError
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
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.LocalLanglandsGL

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links
open Formalism.L2.Host (CharFrame HChar TupTied)
open GlobalTheory.AtMember GlobalTheory.EX GlobalTheory.EX.OB GlobalTheory.Mem GlobalTheory.Mem.Top GlobalTheory.Mem.Top.Bl GlobalTheory.Fc GlobalTheory.BigTop GlobalTheory.BigOn GlobalTheory.Plug

namespace GlobalTheory.PlugPt


set_option genInjectivity false in
set_option genSizeOfSpec false in
structure Side (D : D7) (nch : NChoice D) : Type 1 where
  G : Type
  [grp : Group G]
  [fin : Fintype G]
  Pl0 : Type
  I0 : Type
  T : Type
  A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m
  J : CoreJ D
  [alg : Algebra J.Q.c.F D.what₂.LL]
  R : RealDat3 D A3 J.Q.c.F
  P0 : Subgroup G
  ψ0 : P0 →* D.what₂.LLˣ
  cG : G0 R.Pg D.R.r ≃* G0g D.nd
  v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.toRealDat.MW i σ).Vec
  S : NX.RatDat D.ntw
  YS : NX.NExpRealS R cG S
  cf : CharFrame D
  tp : TupTied D cf nch

attribute [instance] Side.grp Side.fin Side.alg

namespace Side

variable {D : D7} {nch : NChoice D} (s : Side D nch)

def upd (kap : ℝ) (lam : type_of% s.R.lam3) (err : type_of% s.R.err0) : Side D nch :=
  { s with R := (s.R.updS kap lam).withErr err, YS := { s.YS with } }

structure Ties (EX : ErrX D) (xd : ThData D) : Prop where
  frame : s.R.C = s.cf
  tied : Tied EX s.J s.cf
  series : Nonempty (GlobalTheory.SeriesTie.ExportTie s.YS s.v₀)
  level : LevelIs D.nexp (s.R.eG.trans s.cG) s.P0 s.ψ0⁻¹
  data : AllData D.nexp xd.xd0
  psi : Formalism.L2.Host.PsiChoiceCompatible D s.cf nch s.tp
  psiVal : ∀ w, D.what₂.muAt w ≠ D.what₂.mu0 → (s.tp.psi w).ValuesIn 0 D.what₂.embLL
  small : SmallHas D s.cf
  types : GlobalTheory.DimPartsCompare.TameTie D s.cf.W.om

def Export (xd : ThData D) : Prop :=
  Nonempty (GlobalTheory.SeriesTie.ExportTie s.YS s.v₀) ∧ LevelIs D.nexp (s.R.eG.trans s.cG) s.P0 s.ψ0⁻¹ ∧ AllData D.nexp xd.xd0

def Rays : Prop := ∀ t, GlobalTheory.IndefiniteRowSideFullHecke.RayFieldTheta.ContainsRayField (GlobalTheory.IndefiniteRowSideFullHecke.RayFieldTheta.embK D) (GlobalTheory.IndefiniteRowSideFullHecke.RayFieldTheta.tupLevel s.R.toRealDat t)

end Side

abbrev BdPt : BdT := fun _ O c => PtAt O.ex c

def sidePt {D : D7} {O : Obj D} {c : ℝ} (b : BdPt D O c) : Side D O.ex.nch :=
  { G := b.P.Gp, Pl0 := b.P.Pl0, I0 := b.P.I0, T := b.P.T, A3 := b.P.A3, J := b.T, R := b.R, P0 := b.P.P0, ψ0 := b.P.ψ0, cG := b.cG,
    v₀ := b.v₀, S := b.Sx, YS := b.nexp, cf := b.R.C, tp := b.Tp }

section Wit

variable {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {Z : w.Lt} {Wt : Set B.places.Pl} {p0 : BaseLevelRowSide (w.D Z)}

end Wit

variable {hL : GlobalTheory.Published.LocalLanglandsGL} {𝒮 : Slots}

def RayRec (D : D7) (nch : NChoice D) : Prop :=
  ∀ (w : D.what₂.places.Pl) (S : Finset (Pl D.host.E)),
    (∀ P ∈ S, (((D.host.pde * D.host.pde' : ℕ) : 𝓞 D.host.E) ∈ P.asIdeal ∧ (Nat.card (kP P)).Prime) ∨
      (D.what₂.muAt w ≠ D.what₂.mu0 ∧ P ∈ nch.Q w)) →
    GlobalTheory.IndefiniteRowSideFullHecke.RayFieldTheta.ContainsRayField (GlobalTheory.IndefiniteRowSideFullHecke.RayFieldTheta.embK D)
      (D.host.g 0 * D.host.g 1 * ∏ q ∈ S.image (fun P => Nat.card (kP P)), q)

def RayPosition : V4.Slot := fun _ X _ _ c => RayRec X.toD7 c.O.nch

def TiesB : BdP BdPt := fun _ O _ b => (sidePt b).Ties O.ex.errX O.ex.xd ∧ (sidePt b).Rays

end GlobalTheory.PlugPt

end
