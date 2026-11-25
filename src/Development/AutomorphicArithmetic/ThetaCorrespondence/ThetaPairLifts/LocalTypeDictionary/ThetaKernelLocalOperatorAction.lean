module

public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.BernsteinUnitaryProductIrreducible
public import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicHeisenbergActsByLocalSchrodinger
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchrodingerPreservesSchwartzBruhat
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaActionExists
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilRepSmoothAtFinitePlaceStatement
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

section
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField MeasureTheory Matrix Filter Topology
open scoped TensorProduct
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames Formalism.L2.DIV
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun
open ValuativeRel
open scoped GlobalTheory.VacAny
open scoped GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
noncomputable section
namespace GlobalTheory.ThK.LocalOps
end GlobalTheory.ThK.LocalOps
namespace GlobalTheory.ThK.LocalOps
theorem theta_kernel_local_operators_act (_hP : _root_.GlobalTheory.FunPr.ThetaLocalInputs) : GlobalTheory.ThK.ActsEx := by
  intro F E _ _ _ _ _ σ B n d X W M χX χW om r s r' s' hP v
  have hex : ∀ x : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.UA σ X.J × GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.UA σ W.J, x.1 ∈ GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.UAt σ X (evFin F v) →
      x.2 ∈ GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.UAt σ W (evFin F v) → ∀ φ ∈ GlobalTheory.WeilM.SB (Fin n × Fin d → Fv F v),
        ∃ φ₁ ∈ GlobalTheory.WeilM.SB (Fin n × Fin d → Fv F v), GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Acts (evFin F v) (om x) φ φ₁ :=
    fun x hx1 hx2 φ hφ => acts_exists hP v x hx1 hx2 φ hφ
  refine ⟨fun g hg h hh φ hφ => ?_, fun u hu φ hφ => ?_, GlobalTheory.T.weilRep_smooth_at_finitePlace B X W M χX χW om r s r' s' hP v hex⟩
  · obtain ⟨φ₁, h1, h2⟩ := hex (g, h) hg hh φ hφ
    exact ⟨φ₁, ⟨h1, h2⟩, fun φ₂ hφ₂ => acts_unique v _ hφ hφ₂.2 h2⟩
  · refine ⟨GlobalTheory.WeilM.schr (GlobalTheory.LatVac.psiAt B.ψ v) (GlobalTheory.LatVac.locCo M.co v u) φ,
      ⟨GlobalTheory.SchrSB.schr_mem_SB B.ψ hP.base.std.1 v _ φ hφ, GlobalTheory.VacBridge.rho_acts_locCo M.co B.ψ v u hu φ⟩,
      fun φ₂ hφ₂ => acts_unique v _ hφ hφ₂.2 (GlobalTheory.VacBridge.rho_acts_locCo M.co B.ψ v u hu φ)⟩
end GlobalTheory.ThK.LocalOps
namespace GlobalTheory.ThK.LocalOps
end GlobalTheory.ThK.LocalOps
namespace GlobalTheory.ThK.LocalOps
end GlobalTheory.ThK.LocalOps
end
end

