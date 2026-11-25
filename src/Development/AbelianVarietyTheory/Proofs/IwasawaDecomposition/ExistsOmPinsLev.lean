module

public import Formalism.LocalToGlobal.IndefiniteReal.OneMapT
public import Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral
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
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.EtaJUntw
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PositionOfIntro
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StableIffCarrierEq
import Development.AbelianVarietyTheory.Definitions.Foundations.ValuedAlgebraMapEqOne
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FunKilled
import Formalism.LocalToGlobal.HilbertRowConditions.CenterIdempotentAction
import Formalism.LocalToGlobal.IndefiniteReal.RecTie

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj GlobalTheory.RealGeo

namespace GlobalTheory.Mem.R3.Rw.OmExt

section Generic

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T0 : Type} {A : FamIn D.what₂.LL G Pl0 T0 D.R.m}



variable (D) in
def LevOver (i : Fin D.R.m) (Pg : Finset (Formalism.L2.DIV.Pl D.host.E)) (βW : ∀ i, GL (Fin (Wc D i).rank) (EAf D)) {G : Type}
    (eG : G → G0 Pg D.R.r) {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host D.host.E} (l : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Level H)
    (Dw : ℕ → ReciprocityTheory.ChartRestriction.G.Geo.Tor.Datum H) (iota : ∀ j : ℕ, (Dw j).La →ₗ[𝓞 D.host.E] (Fin D.R.r → D.host.E))
    (lev : G → (Dw ((i : ℕ) + 1)).La →ₗ[𝓞 D.host.E] (Dw ((i : ℕ) + 1)).La) : Prop :=
  ∀ g, ∃ κ, Lev.IsLevelLift (Wc D i) (βW i)
      (datY _ D.R.r D.R.t 0 (r_le_rank_Wc i) Pg ∅ (LevelP.triv _ _ _) (fun _ _ => 1) (fun _ => 1) Frm.B) (eG g) κ ∧
    ∀ a ∈ Mfr l • (⊤ : Submodule (𝓞 D.host.E) (Dw ((i : ℕ) + 1)).La), ∃ w ∈ latGHat (Wc D i) 1,
      finVec (Wc D i) ((LinearMap.funLeft (𝓞 D.host.E) D.host.E (Fin.cast (rank_Wc i)) ∘ₗ iota ((i : ℕ) + 1)) (lev g a)) -
        (finHom (Wc D i) κ).1.mulVec
          (finVec (Wc D i) ((LinearMap.funLeft (𝓞 D.host.E) D.host.E (Fin.cast (rank_Wc i)) ∘ₗ iota ((i : ℕ) + 1)) a)) = l.M • w

theorem levOver_iff (T : CoreJ D) [Algebra T.Q.c.F D.what₂.LL] (R : RealDat D A T.Q.c.F) (i : Fin D.R.m)
    (lev : G → (T.Q.Dw ((i : ℕ) + 1)).La →ₗ[𝓞 D.host.E] (T.Q.Dw ((i : ℕ) + 1)).La) :
    LevOver D i R.Pg R.βW R.eG T.Q.l T.Q.Dw T.iota lev ↔ LevIs R i (iotaW T i) T.Q.l.M (Mfr T.Q.l) lev := Iff.rfl

def CoefFam {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks)
    (c0L : ∀ i : Fin D.R.m, VsV D i D.what₂.LL →ₛₗ[D.what₂.embLL] (R.cV i).W) : Prop :=
  ∃ gramR c0R, Bridge.FamTie R.B R.pl (R.Sb : Set (Formalism.L2.DIV.Pl D.host.E)) R.Q (labLL D) (fun τ => Bridge.lamRdef (Ptw D) τ)
    (fun i τ => Bridge.lamLdef (Vc D i).rank ((i : ℕ) + 1) τ) gramR c0R c0L

end Generic

end GlobalTheory.Mem.R3.Rw.OmExt

end
