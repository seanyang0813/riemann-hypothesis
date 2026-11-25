module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RowShiftEq
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RowMapVUpdateZero
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevRowSuccInfUA
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaGridBlockCongruenceOffTypePrimeDescription
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaGridBlockCongruenceTypePrimeDescription
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LevelHyperspecialTrivialCharacterSplitsOffPlaces
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ColPtInvMemStdLatIff
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsSelfDualCoordLatticeOfSelfDualFrame
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

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.LastVertexInv GlobalTheory.LastVertexMove GlobalTheory.FirstRowVertex

noncomputable section




namespace GlobalTheory.FirstRowLat

variable {D : D7}

theorem givenLevel_zero_le_KO {T : Type} {L : LevCh D T} {sc : Consts} (G : GridData L sc) (t : T) (w : Pl D.host.E)
    (k : ℕ) (hk : 1 ≤ k) (g : GL (Fin ((locGrid G t w).rank (0, k))) (Kw w)) (hg : g ∈ givenLevel G t w (0, k)) :
    g ∈ GlobalTheory.SplitWeil.KO (Kw w) (Fin ((locGrid G t w).rank (0, k))) := by
  obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := ⟨k - 1, by omega⟩
  change g ∈ (stepGroup L t w (j + 1)).map (GlobalTheory.StepData.reGL (ixFin G t w (j + 1))).toMonoidHom at hg
  by_cases hP : w ∈ L.Pg
  · exact ((GlobalTheory.Adopt.thetaGridBlockCongruence_typePrime_description G t w hP (j + 1) g).1 hg).1
  · exact ((GlobalTheory.Adopt.thetaGridBlockCongruence_offTypePrime_description G t w hP (j + 1) g).1 hg).1

variable {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {W : G.Weil} {U : Set T}

theorem levRow_zero_stab (S : GridChoice W U) {μ₀ : T} (hL : L.Is μ₀) (t : T) (k : FinPt G (.grid 0 D.R.m))
    (hk : finG (G.V (.grid 0 D.R.m)) k ∈ S.levRow t 0 (Nat.zero_le _)) :
    Lev.finE (G.V (.grid 0 D.R.m)) k.1 ∈ Formalism.UG.stabGL (Formalism.L2.Herm.hatL (F := D.host.F) (G.Λ (.grid 0 D.R.m))) := by
  have hβ : IsFrame (S.B.β 0 D.R.m) (G.Λ (.grid 0 D.R.m)) := S.B.isFrame_β hL (Nat.zero_le _) le_rfl
  have hsd : IsSelfDualC (G.V (.grid 0 D.R.m)) (G.Λ (.grid 0 D.R.m)) := by
    have key : ∀ X : LSp D, X = ⟨D.sp.X', L.ΛX⟩ → IsSelfDualC X.sp X.lat := by
      rintro X rfl
      exact GlobalTheory.SDFrameLattice.isSelfDualC_of_isSDFrame D _ _ _ _ hL.βX
    exact key _ (colY_m L)
  have hm : 1 ≤ D.R.m := by have := D.R.two_le_m; omega
  have e := GlobalTheory.FunObj.LevRowSucc.prodLev_inf_UA hβ hsd (locPl G t)
    (fun w => rank_vertex G t w (X := (0, D.R.m)) ⟨Nat.zero_le _, le_rfl⟩) (fun w => GlobalTheory.SplitWeil.KO (Kw w.1) _) (fun _ => rfl)
  have hle : S.levRow t 0 (Nat.zero_le _) ≤ prodLev (S.B.β 0 D.R.m) (locPl G t)
      (fun w => rank_vertex G t w (X := (0, D.R.m)) ⟨Nat.zero_le _, le_rfl⟩) (fun w => GlobalTheory.SplitWeil.KO (Kw w.1) _) := by
    refine inf_le_inf_right _ (iInf_mono fun w => Subgroup.comap_mono ?_)
    intro g hg
    exact givenLevel_zero_le_KO G t w.1 D.R.m hm g hg
  have hmem : finG (G.V (.grid 0 D.R.m)) k ∈ prodLev (S.B.β 0 D.R.m) (locPl G t)
      (fun w => rank_vertex G t w (X := (0, D.R.m)) ⟨Nat.zero_le _, le_rfl⟩) (fun w => GlobalTheory.SplitWeil.KO (Kw w.1) _) ⊓
        UA D.sp.cm (G.V (.grid 0 D.R.m)).gram :=
    Subgroup.mem_inf.2 ⟨hle hk, GlobalTheory.LevSplit.finE_mem_UA _ _⟩
  rw [e, congLev_top] at hmem
  exact (Subgroup.mem_inf.1 hmem).2

end GlobalTheory.FirstRowLat

theorem GlobalTheory.FirstRowLat.rowPt0_inv_mem_stdLat_iff : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {W : G.Weil} {U : Set T} (S : GridChoice W U) {μ₀ : T}, L.Is μ₀ → ∀ {t : T}, t ∈ U → ∀ k : FinPt G (.grid 0 D.R.m), finG (G.V (.grid 0 D.R.m)) k ∈ S.levRow t 0 (Nat.zero_le _) →
    ∀ x : WO (G.pS (.chi (firstIx D) D.R.m : Pair T)) (G.pT (.chi (firstIx D) D.R.m : Pair T)),
      actO _ _ (G.toPair (.chi (firstIx D) D.R.m : Pair T) ((S.N.u (.grid 0 D.R.m))⁻¹ * k * S.N.u (.grid 0 D.R.m)).1 1).1⁻¹ (G.toPair (.chi (firstIx D) D.R.m : Pair T) ((S.N.u (.grid 0 D.R.m))⁻¹ * k * S.N.u (.grid 0 D.R.m)).1 1).2⁻¹ x ∈ stdLat S (.chi (firstIx D) D.R.m : Pair T) ↔ x ∈ stdLat S (.chi (firstIx D) D.R.m : Pair T) := by
  intro D T L sc G W U S μ₀ hL t _ k hk x
  have h1 := GlobalTheory.FirstRowLat.levRow_zero_stab S hL t k hk
  have h2 := GlobalTheory.LastColLat.conj_stab S.N (X := .grid 0 D.R.m) (by simp [DefNode]) k h1
  have e : G.toPair (.chi (firstIx D) D.R.m : Pair T) ((S.N.u (.grid 0 D.R.m))⁻¹ * k * S.N.u (.grid 0 D.R.m)).1 1 =
      (1, ((S.N.u (.grid 0 D.R.m))⁻¹ * k * S.N.u (.grid 0 D.R.m)).1) := by
    show (negGA _ 1, _) = _
    rw [map_one]
    rfl
  rw [e]
  exact GlobalTheory.LastColLat.actO_inv_mem_latO_iff _ _ _ _ _ h2 x

end
