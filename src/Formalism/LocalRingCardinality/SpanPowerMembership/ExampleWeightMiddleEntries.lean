module

public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleRanksRankComplement
public import Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.PUnit
import Mathlib.Algebra.Order.Star.Rat
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.Radical.NatInt
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

noncomputable section

namespace Formalism.BasicNotions.Examples₂

open Formalism.BasicNotions NumberField

abbrev Z0 : Type := EuclideanSpace ℂ (Fin 0)

def hcU : Fin 8 → ℚ := ![113/2, 47/2, 39/2, 31/2, 23/2, 15/2, 7/2, -1/2]

def hcV : Fin 7 → ℚ := ![24, 20, 16, 12, 8, 4, 0]

def hcB : Fin 2 → ℚ := ![91, 109]

def hcE : Fin 2 → ℚ := ![100, 118]

def hc0 : HCParam R0 where
  u := hcU
  v := hcV
  b := hcB
  e := hcE
  u_gt_v := by
    intro i
    fin_cases i <;> simp [hcU, hcV, R0] <;> norm_num
  v_gt_u := by
    intro i
    fin_cases i <;> simp [hcU, hcV, R0] <;> norm_num
  u_last_gt := by
    intro h h'
    simp [hcU, hcB, R0]
    norm_num
  gap_be := by
    intro j
    fin_cases j <;> simp [hcB, hcE, R0] <;> norm_num
  gap_eb := by
    intro j h
    fin_cases j
    · simp [hcB, hcE, R0]; norm_num
    · simp [R0] at h
  e_int := by
    intro j
    fin_cases j
    · exact ⟨100, by simp [hcE, R0]⟩
    · exact ⟨118, by simp [hcE, R0]⟩
  u_half := by
    intro i
    fin_cases i
    · exact ⟨56, by simp [hcU, R0]; norm_num⟩
    · exact ⟨23, by simp [hcU, R0]; norm_num⟩
    · exact ⟨19, by simp [hcU, R0]; norm_num⟩
    · exact ⟨15, by simp [hcU, R0]; norm_num⟩
    · exact ⟨11, by simp [hcU, R0]; norm_num⟩
    · exact ⟨7, by simp [hcU, R0]; norm_num⟩
    · exact ⟨3, by simp [hcU, R0]; norm_num⟩
    · exact ⟨-1, by simp [hcU, R0]; norm_num⟩
  v_int := by
    intro i
    fin_cases i
    · exact ⟨24, by simp [hcV, R0]⟩
    · exact ⟨20, by simp [hcV, R0]⟩
    · exact ⟨16, by simp [hcV, R0]⟩
    · exact ⟨12, by simp [hcV, R0]⟩
    · exact ⟨8, by simp [hcV, R0]⟩
    · exact ⟨4, by simp [hcV, R0]⟩
    · exact ⟨0, by simp [hcV, R0]⟩
  b_int := by
    intro j
    fin_cases j
    · exact ⟨91, by simp [hcB, R0]⟩
    · exact ⟨109, by simp [hcB, R0]⟩

section RowsSec

variable (LL : Type) [Field LL] [NumberField LL] (embLL : LL →+* ℂ) (P : Rows.Places LL)
  (Tau : Type) [Fintype Tau] (hTau : Fintype.card Tau = R0.f) (Dst : ℝ)
  (sha : ℕ → ℕ → ℚ) (hsha : ∀ l e, 0 ≤ sha l e) (cg : ℕ) (hcg : 0 < cg)

def zeroOLat {O : Type} [CommRing O] (φ : O →+* ℂ) : Rows.OLat O φ Z0 :=
  ⟨∅, Subsingleton.elim _ _⟩

end RowsSec

variable (Tau : Type) [Fintype Tau]

abbrev emptyColumnChain : ColumnChain R0 Tau (fun _ => hc0) where
  cls := fun _ => Empty
  stab := fun _ c => c.elim
  stabGrp := fun _ c => c.elim
  stabFin := fun _ c => c.elim
  DGam := 1
  DGam_pos := one_pos
  dvd_DGam := fun _ _ c => c.elim
  Y := fun _ => Unit
  de := fun _ _ _ => 1
  de_ne := fun _ _ _ => one_ne_zero
  rhoDet := fun _ c => c.elim
  rhoDet' := fun _ c => c.elim
  rho_norm := fun _ _ c => c.elim
  rho'_norm := fun _ _ c => c.elim
  unf := fun _ c => c.elim
  sSharp := fun i _ => if i = 0 then 88 else 98
  sSharp_eq := by
    intro i h τ
    have h2 : i < 2 := h
    interval_cases i <;> simp [sExp', Ranks.N, R0, hc0, hcE] <;> norm_num
  sDiv := fun i _ => if i = 0 then 96 else 106
  sDiv_eq := by
    intro i h τ
    have h2 : i < 2 := h
    interval_cases i <;> simp [sExp, Ranks.N, R0, hc0, hcE] <;> norm_num

variable (T : ℕ) [hT : Fact T.Prime]

abbrev atTExample (Dst : ℝ) (hD : 0 < Dst) : ColumnsAtT R0 (emptyColumnChain Tau) :=
  haveI : NeZero T := ⟨hT.out.ne_zero⟩
  { T := T
    T_prime := hT.out
    vT := Fin 8
    card_vT := Fintype.card_fin 8
    Fv := fun _ => ZMod T
    card_Fv := fun _ => ZMod.card T
    psiT := fun _ => ZMod.stdAddChar
    psiT_ne := fun _ => by
      have := ZMod.isPrimitive_stdAddChar T (one_ne_zero (α := ZMod T))
      rwa [AddChar.mulShift_one] at this
    rhoT := fun _ => 1
    Mu0 := ⊥
    Mu0_fd := inferInstance
    Mu0_stable := fun _ _ => by simp
    duStar := 1
    duStar_pos := one_pos
    Dstar := Dst
    Dstar_pos := hD
    GamP := 2
    one_lt_gammaP := one_lt_two }


instance (Dst : ℝ) (hD : 0 < Dst) : Subsingleton (atTExample Tau T Dst hD).Mram :=
  ⟨fun _ _ => Subtype.ext (funext fun c => (IsEmpty.false c).elim)⟩

abbrev zeroHLat (K : Type) [Field K] [NumberField K] [StarRing K] : HLat K where
  V := Fin 0 → K
  ι := Fin 0
  b := Pi.basisFun K (Fin 0)
  X := fun _ => 1
  L := ⊤

variable (K : Type) [Field K] [NumberField K] [StarRing K]

instance : Subsingleton (zeroHLat K).V := inferInstanceAs (Subsingleton (Fin 0 → K))

end Formalism.BasicNotions.Examples₂
