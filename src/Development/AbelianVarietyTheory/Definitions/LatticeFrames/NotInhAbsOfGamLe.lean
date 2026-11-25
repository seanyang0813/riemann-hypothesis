module

public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.MiPinnedWithFinIff
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.KerInclOn
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.VanishingGramTermsBoundParams
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

open Formalism.BasicNotions Formalism.MainNotions.S

namespace GlobalTheory.Core.Rk

def IdE {D : D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D) : Prop := ∀ x : X.B.I.E, HEq (X.ιE x) x


open GlobalTheory.Mem GlobalTheory.Mem.Col2 in
def TrueE (D : D7) : Prop :=
  ∃ (B : Base) (X : PreX B.toPre) (I : TC B X) (l : I.Laws) (Z : TC.Later B (I.cols l)),
    D = I.rec7 l Z ∧ ∃ w : World I l Z, IdE w.S.X

theorem TrueE.trueD {D : D7} (h : TrueE D) : TrueD D :=
  let ⟨B, X, I, l, Z, e, w, _⟩ := h; ⟨B, X, I, l, Z, e, ⟨w⟩⟩


def HD (D : D7) (L C' Cl Cg cb Cu cT CT : ℝ) : Prop :=
  Formalism.BasicNotions.Ties D ∧ Formalism.MainNotions.LocalBesselAndTopKernel.FamilyMidVolume D ∧ Deg.HypL D L C' Cl Cg cb Cu cT CT ∧ Deg.DataNW D ∧ Formalism.L2.SG.RowsConc.TFrameAt D

def Row (E : D7 → ℝ → ℝ → Prop) (Q : ∀ D : D7, D.what₂.Word → ℝ → ℝ → Prop) : Prop :=
  ∀ Cg cb Cu cT CT : ℝ, 0 < cb → 0 < cT → ∃ C C'₀ Cl₀ : ℝ, 1 ≤ C ∧ ∀ C' Cl : ℝ, C'₀ ≤ C' → Cl₀ ≤ Cl →
    ∀ (D : D7) (L : ℝ) (u : D.what₂.Word), TrueE D → E D L C' → HD D L C' Cl Cg cb Cu cT CT → Q D u L C

variable (E : D7 → ℝ → ℝ → Prop)

def RowDiag : Prop := Row E fun D u L C => SDiag D u L C

def Inh (P : ∀ D : D7, D.what₂.Word → ℝ → ℝ → Prop) : Prop :=
  ∃ Cg cb Cu cT CT : ℝ, 0 < cb ∧ 0 < cT ∧ ∀ C C'₀ Cl₀ : ℝ, ∃ (C' Cl L : ℝ) (D : D7), C'₀ ≤ C' ∧ Cl₀ ≤ Cl ∧
    TrueE D ∧ E D L C' ∧ HD D L C' Cl Cg cb Cu cT CT ∧ ∀ u, P D u L C

variable {E}

end GlobalTheory.Core.Rk

end
