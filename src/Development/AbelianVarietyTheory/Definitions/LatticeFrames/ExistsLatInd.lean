module

public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ProdDat
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.SingleMemIdAt
public import Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsGLEmbeddingUnitaryAdelicSplitPlaceBasis
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsSBExtFunEqHalfInd
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HomLatticeIndicatorOnSplitHalfEqHalfIndicator
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IndicatorHomSelfDualComponentsSchwartzBruhat
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MemHomLatticeCompletionIffSupportedMaps
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualSplitComponentIsLatticeStabilizerEq
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsClopenIsCompactMapsPair
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
import Mathlib.Tactic.Linter.HaveILetI
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
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.SplitWeil GlobalTheory.LocMod ValuativeRel Filter
namespace GlobalTheory.SeeSaw.LocPlModel
variable {D : D7}

section Rel
variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
variable {Y Y' : Type} [Fintype Y] [DecidableEq Y] [Fintype Y'] [DecidableEq Y'] {S T : HSp D}

theorem exists_latInd (q : GlobalTheory.FinPl.SplitPt D k) (hU : q.UnitAA) (FS : Frame k S.rank Y') (FT : Frame k T.rank Y)
    {M : GlobalTheory.FinPl.Lat S} {M' : GlobalTheory.FinPl.Lat T} (hM : IsSelfDualC S M) (hM' : IsSelfDualC T M') :
    ∃ Φ₀ : SB (Matrix Y Y' k),
      Φ₀.1 = Set.indicator {x | (ofSplit q).up FS FT x ∈ latO S T (M : Set _) (M' : Set _) (· = q.v)} (fun _ => 1) := by
  obtain ⟨gS, hS1, hS2⟩ := _root_.GlobalTheory.GlEmbed.exists_gl D k q S Y' FS.β FS.γ FS.βγ FS.γβ
  obtain ⟨gT, hT1, hT2⟩ := _root_.GlobalTheory.GlEmbed.exists_gl D k q T Y FT.β FT.γ FT.βγ FT.γβ
  let α : GlobalTheory.FinPl.Frame q S Y' := ⟨FS.β, FS.γ, FS.βγ, FS.γβ, gS, hS1, hS2⟩
  let β : GlobalTheory.FinPl.Frame q T Y := ⟨FT.β, FT.γ, FT.βγ, FT.γβ, gT, hT1, hT2⟩
  obtain ⟨ΛS, i1, hα, -⟩ := GlobalTheory.FinPl.FrameLat.exists_lat D k q S Y' α M hM
  obtain ⟨ΛT, i2, hβ, -⟩ := GlobalTheory.FinPl.FrameLat.exists_lat D k q T Y β M' hM'
  haveI : ΛS.IsFullLattice k := GlobalTheory.FinPl.isLattice_of_isLat_selfDual α M hM ΛS hα
  haveI : ΛT.IsFullLattice k := GlobalTheory.FinPl.isLattice_of_isLat_selfDual β M' hM' ΛT hβ
  refine ⟨⟨GlobalTheory.LatPair.latInd ΛS ΛT, GlobalTheory.LatPair.latInd_mem_SB ΛS ΛT⟩, funext fun x => ?_⟩
  have hh := GlobalTheory.FinPl.HalfInd.isHalf_wr α β x
  have mulvec (z : Y' → k) : (GlobalTheory.FinPl.HalfInd.wr α β x) *ᵥ (fun j => q.sec ((α.b *ᵥ z) j)) =
      fun i => q.sec ((β.b *ᵥ (x *ᵥ z)) i) := by
    have hM : (β.b * x * α.b') *ᵥ (α.b *ᵥ z) = β.b *ᵥ (x *ᵥ z) := by
      rw [Matrix.mulVec_mulVec, Matrix.mul_assoc (β.b * x), α.b'b, Matrix.mul_one, Matrix.mulVec_mulVec]
    rw [← hM]
    funext i
    simp only [Matrix.mulVec, dotProduct, GlobalTheory.FinPl.HalfInd.wr_apply]
    rw [map_sum]
    exact Finset.sum_congr rfl fun j _ => (GlobalTheory.FinPl.LatIndHalf.sec_mul q _ _).symm
  have key : GlobalTheory.FinPl.HalfInd.wr α β x ∈ latO S T (M : Set _) (M' : Set _) (· = q.v) ↔
      ∀ z ∈ ΛS, x *ᵥ z ∈ ΛT := by
    have hmem := GlobalTheory.FinPl.LatMem.mem_latO_iff D S T M M' hM hM' (· = q.v) (GlobalTheory.FinPl.HalfInd.wr α β x)
    rw [hU.2 T M'] at hmem
    constructor
    · intro h z hz
      have h1 := (hmem.1 h).2 _ ((hα z).1 hz)
      rw [mulvec] at h1
      exact (hβ _).2 h1
    · intro h
      refine hmem.2 ⟨fun i j => ?_, fun y hy => ?_⟩
      · rw [← hh i j]
        exact Ideal.mul_mem_right _ _ (GlobalTheory.FinPl.LatIndHalf.e_mem_idAt q)
      · have hy' : (GlobalTheory.FinPl.HalfInd.wr α β x) *ᵥ y = (GlobalTheory.FinPl.HalfInd.wr α β x) *ᵥ (fun j => q.e * y j) := by
          funext i
          simp only [Matrix.mulVec, dotProduct]
          refine Finset.sum_congr rfl fun j _ => ?_
          rw [← mul_assoc, mul_comm (GlobalTheory.FinPl.HalfInd.wr α β x i j) q.e, hh i j]
        have hey : (fun j => q.e * y j) = fun j => q.sec ((α.b *ᵥ (α.b' *ᵥ fun j => q.pr (y j))) j) := by
          funext j
          rw [Matrix.mulVec_mulVec, α.bb', Matrix.one_mulVec, q.sec_pr]
        have hint : finPart D q.e ∈ intAE D := by
          rw [← GlobalTheory.FinPl.LatIndHalf.sec_one q]
          exact (q.int_iff 1).1 (one_mem _)
        have hx : α.b' *ᵥ (fun j => q.pr (y j)) ∈ ΛS := (hα _).2 (hey ▸ GlobalTheory.FinPl.LatIndHalf.mul_mem_latV hint hy)
        rw [hy', hey, mulvec]
        exact (hβ _).1 (h _ hx)
  change GlobalTheory.LatPair.latInd ΛS ΛT x = _
  unfold GlobalTheory.LatPair.latInd
  by_cases h : ∀ y ∈ ΛS, x *ᵥ y ∈ ΛT
  · rw [ite_eq_left h, Set.indicator_of_mem (by exact key.2 h)]
  · rw [ite_eq_right h, Set.indicator_of_notMem (by exact fun h' => h (key.1 h'))]

end Rel

variable {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D} {M : GlobalTheory.FinPl.Lat S} {M' : GlobalTheory.FinPl.Lat T}

theorem e_mul_e (L L' : LocPl ψ S T M M') (h : L.q.v ≠ L'.q.v) : L.q.e * L'.q.e = 0 := by
  have h1 : L.q.e * L'.q.e ∈ GlobalTheory.FinPl.idAt D (· = L.q.v) := Ideal.mul_mem_right _ _ (GlobalTheory.FinPl.LatIndHalf.e_mem_idAt L.q)
  have h2 : L.q.e * L'.q.e ∈ GlobalTheory.FinPl.idAt D (· = L'.q.v) := Ideal.mul_mem_left _ _ (GlobalTheory.FinPl.LatIndHalf.e_mem_idAt L'.q)
  have h3 : GlobalTheory.FinPl.compAt D L.q.v (L.q.e * L'.q.e) = 0 := (Submodule.mem_iInf _).1 (Submodule.mem_inf.1 h2).2 ⟨_, h⟩
  rw [GlobalTheory.FinPl.Model.eq_single h1, h3, map_zero]

end GlobalTheory.SeeSaw.LocPlModel
end
