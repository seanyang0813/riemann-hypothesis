module

public import Formalism.LocalToGlobal.ProjectiveLattices.FamilyUniformisationBasePointOrthogonalBis
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SupportedSubgroupSplitCommutePrimeIdempotents
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
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.LevelLiftConditions
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.UniformLevelMultiplicity

@[expose] public section

noncomputable section

namespace GlobalTheory.GeoActCompare.TameConj

open NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Pj Formalism.IndefR.Lev GlobalTheory.IndefiniteRowSideFullHecke GlobalTheory.GeoActCompare
open scoped TensorProduct Matrix

open GlobalTheory.IndefiniteRowSideFullHecke.LevelLiftConditions (idealHat CongMod)
open GlobalTheory.IdemSupport (mem_intAE_iff parts_cA finPart_cA_mem)

variable {D : D7}

theorem mul_mem_intAE {y z : Af D.host.F ⊗[D.host.F] D.host.E} (hy : y ∈ intAE D) (hz : z ∈ intAE D) :
    y * z ∈ intAE D := by
  rw [mem_intAE_iff] at hy hz ⊢
  rw [RingHom.map_mul]
  exact mul_mem hy hz

theorem FinUnit_mul {x y : (AE D)ˣ} (hx : FinUnit x) (hy : FinUnit y) : FinUnit (x * y) := by
  refine ⟨?_, ?_, ?_⟩
  · rw [Units.val_mul, RingHom.map_mul, hx.1, hy.1, one_mul]
  · rw [Units.val_mul, RingHom.map_mul]
    exact mul_mem_intAE hx.2.1 hy.2.1
  · rw [mul_inv, Units.val_mul, RingHom.map_mul]
    exact mul_mem_intAE hx.2.2 hy.2.2

theorem FinUnit_inv {x : (AE D)ˣ} (hx : FinUnit x) : FinUnit x⁻¹ := by
  refine ⟨?_, hx.2.2, hx.2.1⟩
  have e : infPart D (x : AE D) * infPart D ((x⁻¹ : (AE D)ˣ) : AE D) = 1 := by
    rw [← RingHom.map_mul, Units.mul_inv, RingHom.map_one]
  rwa [hx.1, one_mul] at e

theorem FinUnit_conj {x : (AE D)ˣ} (hx : FinUnit x) : FinUnit (Units.map (cA D).toMonoidHom x) := by
  refine ⟨?_, finPart_cA_mem hx.2.1, finPart_cA_mem hx.2.2⟩
  exact (parts_cA (x : AE D)).1.trans (by rw [hx.1, RingHom.map_one])


end GlobalTheory.GeoActCompare.TameConj
