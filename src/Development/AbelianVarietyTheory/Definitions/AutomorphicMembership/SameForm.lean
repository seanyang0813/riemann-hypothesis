module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LatAtLattice
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GoodChi
public import Formalism.LocalToGlobal.Columns.ToHLat
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

namespace GlobalTheory.Mem.Df

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem GlobalTheory.Mem.Col2

variable {B : Base} {X : PreX B.toPre} (I : TC B X)

abbrev MtCx (a : I.ι) : Type := MtP B.wts I.Ch I.sel (I.tup a) I.Ps B.embLL

abbrev MtHL (hX : B.fields.Ok) (a : I.ι) : HLat B.LL := MtildeH B.wts I.Ch hX I.sel (I.tup a) I.Ps

def toCx (hX : B.fields.Ok) (a : I.ι) (x : (MtHL I hX a).V) : MtCx I a := toMtP B.wts I.Ch I.sel (I.tup a) I.Ps B.embLL x

def SameForm (l : I.Laws) (u : B.Word) (a : I.ι) (F : MtCx I a) (G : (I.per l u a).Mt) : Prop :=
  ∀ p : (I.stX a).D (), (show (I.perIn u a).Mt B.fields.emb B.embLL from G).1 () p = F.1 (toRow I.sel (I.tup a) p.1.1)

variable (l : I.Laws) (hX : B.fields.Ok)

structure DefTrue (W : RowsRest B (I.cols l)) (e : ∀ a : (I.cols l).Tup, MtCx I a ≃ₗ[ℂ] W.Amb a) : Prop where
  muAt : ∀ w, W.muAt w = I.mu0
  muTw : ∀ w, W.muTw w = if B.places.resChar w = B.host.pde then I.muStar' else I.muStar
  eMt0 : ∀ u F, SameForm I l u I.mu0 F ((W.eMt0 u).symm (e (I.cols l).mu0 F))
  eMtTw : ∀ u (a : (I.cols l).Tup) F, SameForm I l u a F ((W.eMtTw u a).symm (e a F))
  norm : ∀ (a : (I.cols l).Tup) x, Formalism.HermitianLatticesTheory.normAt (MtHL I hX a).b (MtHL I hX a).X (InfinitePlace.mk B.embLL) x = ‖e a (toCx I hX a x)‖
  lat : ∀ a y, y ∈ (W.Mtilde a).carrier ↔ ∃ x ∈ (MtHL I hX a).L, e a (toCx I hX a x) = y
  gen : ∀ a, ∀ y ∈ (W.Mtilde a).gen, y ∈ (W.Mtilde a).carrier
  eOp : ∀ a, W.eOp a = LinearMap.id
  ze : ∀ u a, W.ze u a = 1

structure StandIn {C : Cols B} (W : RowsRest B C) : Prop where
  drows : W.Drows = 0
  dall : W.Dall = 0
  mt : ∀ a j, Subsingleton (W.Mt a j)
  eta : ∀ j w, W.etaJ j w = 0
  sha : GlobalTheory.MemN.ShaOK B.toPre W.shaLen

structure RowsDef : Type 1 where
  W : RowsRest B (I.cols l)
  e : ∀ a : (I.cols l).Tup, MtCx I a ≃ₗ[ℂ] W.Amb a
  tru : DefTrue I l hX W e
  std : StandIn W

structure AmbTrue (Z : TC.Later B (I.cols l)) (e : ∀ a : (I.cols l).Tup, MtCx I a ≃ₗ[ℂ] Z.W.Amb a)
    (A : AmbForm (I.rec7 l Z) (RowSide.sharp (I.rec7 l Z))) : Prop where
  mt : ∀ a : (I.cols l).Tup, (⟨A.MtH a, fun x => A.jAmb a x⟩ : Σ H : HLat B.LL, (H.V → Z.W.Amb a)) = ⟨MtHL I hX a, fun x => e a (toCx I hX a x)⟩

end GlobalTheory.Mem.Df

end
