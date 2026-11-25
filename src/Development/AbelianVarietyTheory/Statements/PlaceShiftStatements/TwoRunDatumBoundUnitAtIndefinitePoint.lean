module

public import Development.AbelianVarietyTheory.Statements.PlaceShiftStatements.SingleIndexPlacesAreTwisted
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

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.DIV.Cons Formalism.L2.Pj Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Indef.Tree Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Cx
open Formalism.IndefR.FWT GlobalTheory.BigTop GlobalTheory.OntoChain GlobalTheory.RealIndexBound GlobalTheory.OnTies

namespace GlobalTheory.BigOn.Check

variable {D : D7} {L : SizeData₂ D} {hT : GatTies D} {Gi : Formalism.MainNotions.G.Inst D L} {Gl : Formalism.MainNotions.G.LatInst D} {Kc : Formalism.MainNotions.G.Consts}
  {Y : DivX D} {cX : ExtraC} {ex : Extra D L hT Gi Gl Kc Y cX} {Csz : ℝ} (p : PtAt ex Csz)

theorem finite_tuples_of_indefiniteSidePoint : Finite p.P.T := by
  have h := p.charW.tup
  refine Finite.of_surjective (fun o : Option p.R.twPl => o.elim p.P.A3.A.μ0 fun w => p.R.mu w) fun t => ?_
  rcases h.mu_used t with rfl | ⟨w, rfl⟩
  · exact ⟨none, rfl⟩
  · by_cases hw : w ∈ p.R.twPl
    · exact ⟨some ⟨w, hw⟩, rfl⟩
    · exact ⟨none, (h.mu_off w hw).symm⟩

theorem twoRunDatum_boundUnit_at_indefinitePoint {Pm : ParameterChoice' D L} (Tp : ParamsT D L Pm) (r : TwoRuns p.T p.P.Gp) {c : OnConst} (O : Obj p c)
    (h : RecAt p Tp r O) (C CH : ℝ) : ErrorConstantMatchesDefinition ((R2 p).num (F2 p) C CH) O C ∧ O.b = L.sc.b := by
  obtain ⟨st, hd⟩ := h.1.depth
  letI := hostAlg D
  have hb : O.b = L.sc.b := by
    unfold OnObj.b OnObj.xe
    rw [hd.x_eq, hd.eps_eq]; rfl
  refine ⟨fun j => ?_, hb⟩
  change C * (L.sc.x ^ L.sc.eps * ((D.R.f : ℝ) * D.R.m * L.sc.b * L.sc.x ^ L.sc.eps + L.Nc)) = C * O.E1u
  unfold OnObj.E1u OnObj.B0
  rw [L_eq, hb, h.1.Nc_eq, hd.f_eq, hd.m_eq]
  unfold OnObj.xe
  rw [hd.x_eq, hd.eps_eq]

end GlobalTheory.BigOn.Check

end
