module

public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.Direct
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.MemConfTOfDetNeZero
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.NCoords
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsUniquePlace
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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

@[expose] public section

open scoped Classical ENNReal
open Matrix MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.LocWSOf Formalism.L2.SG.PoincareInHH.PoincareSetting GlobalTheory.CovDom

namespace GlobalTheory.CovDom.ModelIso

variable {D : D7} (X : HidaSetting D)

end GlobalTheory.CovDom.ModelIso

namespace GlobalTheory.CovDom.ModelIso

variable {D : D7} (X : HidaSetting D)

theorem v_pos : 0 < D.host.v := by
  have := GlobalTheory.RealPlaces.one_le_rdE D
  unfold Host.v; linarith

theorem frS_ne_zero : frS D ≠ 0 := by
  have hv := v_pos (D := D)
  unfold frS Host.ka
  have : Real.pi / D.host.v / (2 * Real.pi) ≠ 0 := by positivity
  exact_mod_cast this

theorem frS_pow_inv (m : ℕ) : ((frS D) ^ m)⁻¹ = (((2 * D.host.v) ^ m : ℝ) : ℂ) := by
  have hv := v_pos (D := D)
  have h : D.host.ka / (2 * Real.pi) = (2 * D.host.v)⁻¹ := by
    unfold Host.ka; field_simp
  rw [frS, h]; push_cast; rw [inv_pow, inv_inv]

theorem star_frS : star (frS D) = frS D := by
  unfold frS; exact Complex.conj_ofReal _

theorem qi_e {θ : ℝ} (C : Choice X θ) (τ : D.what₂.Tau) (a : Fin D.R.rS) :
    C.Qi τ *ᵥ rv X.B.I (vOf X τ) (X.eR a) =
      (((2 * D.host.v) ^ (D.R.rS - (a : ℕ)) : ℝ) : ℂ) • Formalism.QuantumDeterminants.bvec (Formalism.QuantumDeterminants.eI D.R.k D.R.rS a) := by
  obtain ⟨h1, -, -, h4⟩ := C.isT τ
  have he := congrArg (fun x => C.Qi τ *ᵥ x) (h4 a a rfl).1
  simp only [mulVec_mulVec, h1, one_mulVec, mulVec_smul] at he
  rw [← frS_pow_inv, Formalism.QuantumDeterminants.bvec, he, smul_smul, inv_mul_cancel₀ (pow_ne_zero _ frS_ne_zero), one_smul]

theorem qi_f {θ : ℝ} (C : Choice X θ) (τ : D.what₂.Tau) (a : Fin D.R.rS) :
    C.Qi τ *ᵥ rv X.B.I (vOf X τ) (X.fR a) =
      ((((2 * D.host.v) ^ (D.R.rS - (a : ℕ)) : ℝ) : ℂ))⁻¹ • Formalism.QuantumDeterminants.bvec (Formalism.QuantumDeterminants.esI D.R.k D.R.rS a) := by
  obtain ⟨h1, -, -, h4⟩ := C.isT τ
  have he := congrArg (fun x => C.Qi τ *ᵥ x) (h4 a a rfl).2
  simp only [mulVec_mulVec, h1, one_mulVec, mulVec_smul] at he
  have hs : star (frS D ^ (D.R.rS - (a : ℕ))) = frS D ^ (D.R.rS - (a : ℕ)) := by
    rw [star_pow, star_frS]
  rw [hs] at he
  rw [← frS_pow_inv, inv_inv, Formalism.QuantumDeterminants.bvec, he, smul_smul,
    mul_inv_cancel₀ (pow_ne_zero _ frS_ne_zero), one_smul]

end GlobalTheory.CovDom.ModelIso

namespace GlobalTheory.CovDom.ModelIso

end GlobalTheory.CovDom.ModelIso
