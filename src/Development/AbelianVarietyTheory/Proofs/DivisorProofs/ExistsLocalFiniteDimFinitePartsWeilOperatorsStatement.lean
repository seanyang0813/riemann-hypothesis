module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenSubgroupsSchroedingerFixContinuousChar
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsContOnOfLocal
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNhdsTransportedActionFinitePointPreimage
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilRepresentationPreservesSchwartz
public import Formalism.LocalToGlobal.BesselHermitianTheta.TiedWeil
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAdmissibleCMBaseDataOfSquareTupleStanding
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCompactAnnihilatorOpenSubgroupFiniteAdeles
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUSplittingInl
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledUnitaryPartnerDiagStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodicAdelicSchwartzFiniteCosetDecompositionStatement
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
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.ReduceModChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNhdsTransportedActionFiniteOpenSubgroups, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenSubgroupsSchroedingerFixStandardChar, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCompactFiniteAdeleAnnihilatorStdChar, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalFiniteDimFinitePartsWeilOperators, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalFiniteDimFinitePartsWeilOperatorsStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNhdsTransportedActionFiniteOpenSubgroups =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNhdsTransportedActionFiniteOpenSubgroups", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsContOnOfLocal\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNhdsTransportedActionFinitePointPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta
open IsDedekindDomain NumberField
open scoped TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chr incM)

attribute [local instance] Formalism.BasicNotions.Host.cmStar
open scoped Classical

namespace GlobalTheory.WeilTransNbhdD

theorem exists_nhds_finite_preimage_D : ∀ (D : D7) (a b : ℕ) (JA : Matrix (Fin a) (Fin a) D.host.E) (JB : Matrix (Fin b) (Fin b) D.host.E)
    (ξ : AF D.host.F ⊗[D.host.F] D.host.E) (κ : Type) [Fintype κ]
    (co : GlobalTheory.WeilM.Darboux (GlobalTheory.WeilM.symp (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.cA D.sp.cm.sig) ξ (incM D.host.F JA) (incM D.host.F JB)) κ)
    (L₁ L₂ : AddSubgroup (κ → FiniteAdeleRing (𝓞 D.host.F) D.host.F)),
    IsOpen (L₁ : Set (κ → FiniteAdeleRing (𝓞 D.host.F) D.host.F)) →
    IsOpen (L₂ : Set (κ → FiniteAdeleRing (𝓞 D.host.F) D.host.F)) →
    ∀ p0 : GlobalTheory.WeilM.UG (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.cA D.sp.cm.sig) (incM D.host.F JA) ×
      GlobalTheory.WeilM.UG (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.cA D.sp.cm.sig) (incM D.host.F JB),
    ∃ N ∈ nhds p0, ∃ L₁' L₂' : AddSubgroup (κ → FiniteAdeleRing (𝓞 D.host.F) D.host.F),
      IsOpen (L₁' : Set (κ → FiniteAdeleRing (𝓞 D.host.F) D.host.F)) ∧
      IsCompact (L₁' : Set (κ → FiniteAdeleRing (𝓞 D.host.F) D.host.F)) ∧
      IsOpen (L₂' : Set (κ → FiniteAdeleRing (𝓞 D.host.F) D.host.F)) ∧
      ∀ p ∈ N, ∀ x ∈ L₁', ∀ y ∈ L₂', ∃ x' ∈ L₁, ∃ y' ∈ L₂,
        co.e (GlobalTheory.WeilM.actAB (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.cA D.sp.cm.sig) p
          (co.e.symm (GlobalTheory.WeilCont.adeleJoin D.host.F 0 x', GlobalTheory.WeilCont.adeleJoin D.host.F 0 y'))) =
          (GlobalTheory.WeilCont.adeleJoin D.host.F 0 x, GlobalTheory.WeilCont.adeleJoin D.host.F 0 y) := by
  intro D a b JA JB ξ κ _ co L₁ L₂ hL₁ hL₂ p0
  exact GlobalTheory.WeilTransNbhd.exists_nhds_finite_preimage D.host.F D.host.E D.sp.cm.sig a b JA JB ξ κ co L₁ L₂ hL₁ hL₂ p0

end GlobalTheory.WeilTransNbhdD
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNhdsTransportedActionFiniteOpenSubgroups =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenSubgroupsSchroedingerFixStandardChar =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenSubgroupsSchroedingerFixStandardChar", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsContOnOfLocal\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilRepresentationPreservesSchwartz\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta
open IsDedekindDomain NumberField
open scoped TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chr incM)

attribute [local instance] Formalism.BasicNotions.Host.cmStar
open scoped Classical

noncomputable section

namespace GlobalTheory.SchrFixNbhd

open Matrix

def fixTrans {M : Type} [AddCommGroup M] (g : M → ℂ) : AddSubgroup M where
  carrier := {u | ∀ x, g (x + u) = g x}
  zero_mem' := fun x => by rw [add_zero]
  add_mem' := fun {a b} ha hb x => by rw [← add_assoc, hb, ha]
  neg_mem' := fun {a} ha x => by
    have := ha (x + -a)
    rw [neg_add_cancel_right] at this
    exact this.symm

theorem isOpen_fixTrans {M : Type} [AddCommGroup M] [TopologicalSpace M] [IsTopologicalAddGroup M] {g : M → ℂ}
    (h1 : IsLocallyConstant g) (h2 : HasCompactSupport g) : IsOpen (fixTrans g : Set M) := by
  apply _root_.GlobalTheory.SchrFixFin.isOpen_transFix <;> assumption

theorem exists_dot_ker {K : Type} [CommRing K] [TopologicalSpace K] [IsTopologicalRing K]
    (χ : AddChar K ℂ) (hχ : IsLocallyConstant χ) (κ : Type) [Fintype κ] [NonarchimedeanAddGroup (κ → K)]
    (C : Set (κ → K)) (hC : IsCompact C) :
    ∃ H : OpenAddSubgroup (κ → K), ∀ z ∈ C, ∀ a ∈ H, ∀ b ∈ H, χ (z ⬝ᵥ b + a ⬝ᵥ b) = 1 := by
  let V : Set K := {t | χ t = 1}
  have hV : IsOpen V := hχ.isOpen_fiber 1
  have h0 : (0 : K) ∈ V := AddChar.map_zero_eq_one χ
  have hadd : ∀ s t, s ∈ V → t ∈ V → s + t ∈ V := fun s t hs ht => by
    show χ (s + t) = 1
    rw [AddChar.map_add_eq_mul, show χ s = 1 from hs, show χ t = 1 from ht, one_mul]
  have hc1 : Continuous fun p : (κ → K) × (κ → K) => p.2 ⬝ᵥ p.1 := continuous_snd.dotProduct continuous_fst
  have hc2 : Continuous fun p : (κ → K) × (κ → K) => p.1 ⬝ᵥ p.2 := continuous_fst.dotProduct continuous_snd
  have N0 : ∀ᶠ b in nhds (0 : κ → K), ∀ z ∈ C, z ⬝ᵥ b ∈ V := by
    refine hC.eventually_forall_of_forall_eventually fun z _ => ?_
    exact hc1.tendsto ((0 : κ → K), z) (hV.mem_nhds (by simpa using h0))
  have N1 : {p : (κ → K) × (κ → K) | p.1 ⬝ᵥ p.2 ∈ V} ∈ nhds ((0 : κ → K), (0 : κ → K)) :=
    hc2.tendsto ((0 : κ → K), (0 : κ → K)) (hV.mem_nhds (by simpa using h0))
  rw [nhds_prod_eq, Filter.mem_prod_iff] at N1
  obtain ⟨t₁, ht₁, t₂, ht₂, hsub⟩ := N1
  obtain ⟨H, hH⟩ := NonarchimedeanAddGroup.is_nonarchimedean _ (Filter.inter_mem (Filter.inter_mem N0 ht₁) ht₂)
  refine ⟨H, fun z hz a ha b hb => hadd _ _ ((hH hb).1.1 z hz) ?_⟩
  exact hsub (Set.mk_mem_prod (hH ha).1.2 (hH hb).2)

variable {F : Type} [Field F] [NumberField F]

theorem adeleJoin_zero_apply {κ : Type} (y : κ → FiniteAdeleRing (𝓞 F) F) (i : κ) :
    GlobalTheory.WeilCont.adeleJoin F 0 y i = ((0 : InfiniteAdeleRing F), y i) := by
  refine Prod.ext ?_ rfl
  show (InfiniteAdeleRing.ringEquiv_mixedSpace F).symm 0 = 0
  exact map_zero _

theorem dotProduct_adeleJoin_zero {κ : Type} [Fintype κ] (v : κ → AdeleRing (𝓞 F) F)
    (y : κ → FiniteAdeleRing (𝓞 F) F) :
    v ⬝ᵥ GlobalTheory.WeilCont.adeleJoin F 0 y = ((0 : InfiniteAdeleRing F), (fun i => (v i).2) ⬝ᵥ y) := by
  apply _root_.GlobalTheory.SchrFixFin.dot_adeleJoin_zero <;> assumption

theorem exists_fix_pure [Invertible (2 : AdeleRing (𝓞 F) F)] (ψ : AddChar (AdeleRing (𝓞 F) F) ℂ) (hψ : Continuous ψ)
    (κ : Type) [Fintype κ] (f : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ)
    (g : (κ → FiniteAdeleRing (𝓞 F) F) → ℂ) (hg : g ∈ GlobalTheory.WeilM.SB (κ → FiniteAdeleRing (𝓞 F) F)) :
    ∃ L₁ L₂ : AddSubgroup (κ → FiniteAdeleRing (𝓞 F) F),
      IsOpen (L₁ : Set (κ → FiniteAdeleRing (𝓞 F) F)) ∧ IsOpen (L₂ : Set (κ → FiniteAdeleRing (𝓞 F) F)) ∧
      ∀ x ∈ L₁, ∀ y ∈ L₂, GlobalTheory.WeilM.schr ψ (GlobalTheory.WeilCont.adeleJoin F 0 x, GlobalTheory.WeilCont.adeleJoin F 0 y)
        (GlobalTheory.WeilM.pureA F f g) = GlobalTheory.WeilM.pureA F f g := by
  haveI := GlobalTheory.HeisSchA.nonarch_finiteAdeleRing (F := F)
  haveI : NonarchimedeanAddGroup (κ → FiniteAdeleRing (𝓞 F) F) := GlobalTheory.HeisSchA.nonarch_pi
  obtain ⟨H, hH⟩ := exists_dot_ker (GlobalTheory.HeisSchA.finChar ψ) (GlobalTheory.HeisSchA.finChar_isLocallyConstant ψ hψ) κ
    (tsupport g) hg.2.isCompact
  let c : FiniteAdeleRing (𝓞 F) F := (⅟(2 : AdeleRing (𝓞 F) F)).2
  refine ⟨fixTrans g ⊓ (H : AddSubgroup (κ → FiniteAdeleRing (𝓞 F) F)).comap
    (DistribSMul.toAddMonoidHom (κ → FiniteAdeleRing (𝓞 F) F) c), H, ?_, H.isOpen, ?_⟩
  · rw [AddSubgroup.coe_inf]
    exact (isOpen_fixTrans hg.1 hg.2).inter (H.isOpen.preimage (continuous_const_smul c))
  rintro x ⟨hx1, hx2⟩ y hy
  funext z
  have hf : (fun i => InfiniteAdeleRing.ringEquiv_mixedSpace F ((z + GlobalTheory.WeilCont.adeleJoin F 0 x) i).1) =
      fun i => InfiniteAdeleRing.ringEquiv_mixedSpace F (z i).1 := by
    funext i
    rw [Pi.add_apply, adeleJoin_zero_apply]
    exact congrArg _ (add_zero (z i).1)
  have hgz : (fun i => ((z + GlobalTheory.WeilCont.adeleJoin F 0 x) i).2) = (fun i => (z i).2) + x := by
    funext i
    rw [Pi.add_apply, adeleJoin_zero_apply]
    rfl
  have hz : GlobalTheory.WeilM.pureA F f g (z + GlobalTheory.WeilCont.adeleJoin F 0 x) = GlobalTheory.WeilM.pureA F f g z := by
    simp only [GlobalTheory.WeilM.pureA]
    rw [hf, hgz, hx1]
  simp only [GlobalTheory.WeilM.schr]
  rw [hz]
  by_cases hg0 : g (fun i => (z i).2) = 0
  · simp only [GlobalTheory.WeilM.pureA, hg0, mul_zero]
  have hzc : (fun i => (z i).2) ∈ tsupport g := subset_tsupport _ hg0
  have harg : z ⬝ᵥ GlobalTheory.WeilCont.adeleJoin F 0 y + ⅟(2 : AdeleRing (𝓞 F) F) *
      (GlobalTheory.WeilCont.adeleJoin F 0 x ⬝ᵥ GlobalTheory.WeilCont.adeleJoin F 0 y) =
      ((0 : InfiniteAdeleRing F), (fun i => (z i).2) ⬝ᵥ y + (c • x) ⬝ᵥ y) := by
    rw [dotProduct_adeleJoin_zero, dotProduct_adeleJoin_zero, smul_dotProduct]
    refine Prod.ext ?_ ?_
    · show (0 : InfiniteAdeleRing F) + (⅟(2 : AdeleRing (𝓞 F) F)).1 * 0 = 0
      rw [mul_zero, add_zero]
    · show (fun i => (z i).2) ⬝ᵥ y + c * ((fun i => (GlobalTheory.WeilCont.adeleJoin F 0 x i).2) ⬝ᵥ y) = _
      rfl
  rw [harg]
  have h1 : ψ ((0 : InfiniteAdeleRing F), (fun i => (z i).2) ⬝ᵥ y + (c • x) ⬝ᵥ y) = 1 :=
    hH _ hzc (c • x) hx2 y hy
  rw [h1, one_mul]

theorem exists_fix (F : Type) [Field F] [NumberField F] [Invertible (2 : AdeleRing (𝓞 F) F)]
    (ψ : AddChar (AdeleRing (𝓞 F) F) ℂ) (hψ : Continuous ψ) (κ : Type) [Fintype κ]
    (Φ : (κ → AdeleRing (𝓞 F) F) → ℂ) (hΦ : Φ ∈ GlobalTheory.WeilM.schA F κ) :
    ∃ L₁ L₂ : AddSubgroup (κ → FiniteAdeleRing (𝓞 F) F),
      IsOpen (L₁ : Set (κ → FiniteAdeleRing (𝓞 F) F)) ∧ IsOpen (L₂ : Set (κ → FiniteAdeleRing (𝓞 F) F)) ∧
      ∀ x ∈ L₁, ∀ y ∈ L₂, GlobalTheory.WeilM.schr ψ (GlobalTheory.WeilCont.adeleJoin F 0 x, GlobalTheory.WeilCont.adeleJoin F 0 y) Φ = Φ := by
  induction hΦ using Submodule.span_induction with
  | mem Φ h =>
    obtain ⟨f, g, hg, rfl⟩ := h
    exact exists_fix_pure ψ hψ κ f g hg
  | zero =>
    refine ⟨⊤, ⊤, isOpen_univ, isOpen_univ, fun x _ y _ => ?_⟩
    funext z
    simp [GlobalTheory.WeilM.schr]
  | add Φ Ψ _ _ h1 h2 =>
    obtain ⟨L₁, L₂, o₁, o₂, h⟩ := h1
    obtain ⟨M₁, M₂, p₁, p₂, h'⟩ := h2
    refine ⟨L₁ ⊓ M₁, L₂ ⊓ M₂, by rw [AddSubgroup.coe_inf]; exact o₁.inter p₁,
      by rw [AddSubgroup.coe_inf]; exact o₂.inter p₂, fun x hx y hy => ?_⟩
    have e1 := h x hx.1 y hy.1
    have e2 := h' x hx.2 y hy.2
    funext z
    have a1 := congrFun e1 z
    have a2 := congrFun e2 z
    simp only [GlobalTheory.WeilM.schr, Pi.add_apply] at a1 a2 ⊢
    rw [mul_add, a1, a2]
  | smul a Φ _ h =>
    obtain ⟨L₁, L₂, o₁, o₂, h⟩ := h
    refine ⟨L₁, L₂, o₁, o₂, fun x hx y hy => ?_⟩
    funext z
    have a1 := congrFun (h x hx y hy) z
    simp only [GlobalTheory.WeilM.schr, Pi.smul_apply, smul_eq_mul] at a1 ⊢
    rw [mul_left_comm, a1]

theorem schr_fix_nbhd : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) →
    ∀ (κ : Type) [Fintype κ], ∀ Φ ∈ GlobalTheory.WeilM.schA D.host.F κ,
      ∃ L₁ L₂ : AddSubgroup (κ → FiniteAdeleRing (𝓞 D.host.F) D.host.F),
        IsOpen (L₁ : Set (κ → FiniteAdeleRing (𝓞 D.host.F) D.host.F)) ∧
        IsOpen (L₂ : Set (κ → FiniteAdeleRing (𝓞 D.host.F) D.host.F)) ∧
        ∀ x ∈ L₁, ∀ y ∈ L₂, GlobalTheory.WeilM.schr ψ (GlobalTheory.WeilCont.adeleJoin D.host.F 0 x, GlobalTheory.WeilCont.adeleJoin D.host.F 0 y) Φ = Φ := by
  intro D ψ hψ κ _ Φ hΦ
  exact exists_fix D.host.F ψ hψ.1.1 κ Φ hΦ

end GlobalTheory.SchrFixNbhd

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenSubgroupsSchroedingerFixStandardChar =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCompactFiniteAdeleAnnihilatorStdChar =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCompactFiniteAdeleAnnihilatorStdChar", "h": "module\n\npublic import Formalism.LocalToGlobal.BesselHermitianTheta.TiedWeil\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAdmissibleCMBaseDataOfSquareTupleStanding\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCompactAnnihilatorOpenSubgroupFiniteAdeles\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta
open IsDedekindDomain NumberField
open scoped TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chr incM)

attribute [local instance] Formalism.BasicNotions.Host.cmStar
open scoped Classical

namespace GlobalTheory.AnnCompactStdChar

theorem isCompact_annihilator_of_isStdChar : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) →
    ∀ (κ : Type) [Fintype κ] (L : AddSubgroup (κ → FiniteAdeleRing (𝓞 D.host.F) D.host.F)),
      IsOpen (L : Set (κ → FiniteAdeleRing (𝓞 D.host.F) D.host.F)) →
      IsCompact {x : κ → FiniteAdeleRing (𝓞 D.host.F) D.host.F | ∀ y ∈ L, ψ (pairA D.host.F 0 (x ⬝ᵥ y)) = 1} := by
  intro D ψ hψ κ _ L hL
  exact GlobalTheory.AnnCompactStd.isCompact_annihilator D.host.F ψ (GlobalTheory.BaseGoodPlace.isStd_of_isStdChar hψ) κ L hL

end GlobalTheory.AnnCompactStdChar
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCompactFiniteAdeleAnnihilatorStdChar =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalFiniteDimFinitePartsWeilOperators =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalFiniteDimFinitePartsWeilOperators", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUSplittingInl\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsContOnOfLocal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledUnitaryPartnerDiagStatement\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNhdsTransportedActionFiniteOpenSubgroups\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenSubgroupsSchroedingerFixStandardChar\npublic import Formalism.LocalToGlobal.BesselHermitianTheta.TiedWeil\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCompactFiniteAdeleAnnihilatorStdChar\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodicAdelicSchwartzFiniteCosetDecompositionStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta
open IsDedekindDomain NumberField
open scoped TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chr incM)

attribute [local instance] Formalism.BasicNotions.Host.cmStar
open scoped Classical

noncomputable section

namespace GlobalTheory.WeilCont

theorem adeleJoin_zero_zero (F : Type) [Field F] [NumberField F] (κ : Type) :
    adeleJoin F (0 : κ → mixedEmbedding.mixedSpace F) 0 = 0 := by
  funext i
  simp only [adeleJoin, Pi.zero_apply, map_zero, Prod.mk_zero_zero]

theorem sum_mul_zero_prod {κ : Type} [Fintype κ] {A B : Type} [CommRing A] [CommRing B] (z : κ → A × B)
    (y : κ → B) : (∑ i, z i * ((0 : A), y i)) = ((0 : A), ∑ i, (z i).2 * y i) := by
  ext <;> simp [Prod.fst_sum, Prod.snd_sum]

theorem dotProduct_adeleJoin_zero (F : Type) [Field F] [NumberField F] (κ : Type) [Fintype κ]
    (z : κ → AdeleRing (𝓞 F) F) (y : κ → FiniteAdeleRing (𝓞 F) F) :
    z ⬝ᵥ adeleJoin F 0 y = pairA F 0 ((fun i => (z i).2) ⬝ᵥ y) := by
  simp only [dotProduct, adeleJoin, pairA, Pi.zero_apply, map_zero]
  exact sum_mul_zero_prod (A := InfiniteAdeleRing F) (B := FiniteAdeleRing (𝓞 F) F) z y

theorem exists_local_finite_parts : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) →
    ∀ (S T : HSp D) (χS χT : (AE D)ˣ →* Circle), IsHeckeChar D χS → IsHeckeChar D χT →
      ResEta D χS S.rank → ResEta D χT T.rank →
      ∀ (JA : Matrix (Fin T.rank) (Fin T.rank) D.host.E) (JB : Matrix (Fin S.rank) (Fin S.rank) D.host.E)
        (ξ : AF D.host.F ⊗[D.host.F] D.host.E), JA = T.gramᵀ →
        ξ • incM D.host.F JB = incM D.host.F (D.host.xi0 • S.gram⁻¹) →
        ∀ (κ : Type) [Fintype κ]
          (co : GlobalTheory.WeilM.Darboux (GlobalTheory.WeilM.symp (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.cA D.sp.cm.sig) ξ (incM D.host.F JA) (incM D.host.F JB)) κ),
          (∀ x : Matrix (Fin T.rank) (Fin S.rank) D.host.E, ∃ y z : κ → D.host.F,
            co.e (incM D.host.F x) = (fun i => algebraMap D.host.F (AF D.host.F) (y i), fun i => algebraMap D.host.F (AF D.host.F) (z i))) →
          ∀ ω : GA D S × GA D T →* Module.End ℂ (Formalism.IndefR.Datum.WO S T → ℂ),
            Formalism.IndefR.Datum.IsWeilDatumO ψ S T χS χT ω →
 ∀ om : GlobalTheory.WeilM.UG (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.cA D.sp.cm.sig) (incM D.host.F JA) ×
      GlobalTheory.WeilM.UG (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.cA D.sp.cm.sig) (incM D.host.F JB) →* Module.End ℂ ((κ → AF D.host.F) → ℂ),
                       GlobalTheory.WeilSchrodinger.IsTransport ψ co ω om →
  ∀ Φ ∈ GlobalTheory.WeilM.schA D.host.F κ, ∀ p0, ∃ N ∈ nhds p0, ∃ (m : ℕ) (g : Fin m → (κ → FiniteAdeleRing (𝓞 D.host.F) D.host.F) → ℂ)
      (y : Fin m → κ → FiniteAdeleRing (𝓞 D.host.F) D.host.F),
      (∀ i, g i ∈ GlobalTheory.WeilM.SB (κ → FiniteAdeleRing (𝓞 D.host.F) D.host.F)) ∧ (∀ i j, g i (y j) = if i = j then 1 else 0) ∧
      ∀ p ∈ N, ∃ f : Fin m → SchwartzMap (κ → mixedEmbedding.mixedSpace D.host.F) ℂ,
        om p Φ = ∑ i, GlobalTheory.WeilM.pureA D.host.F (f i) (g i) := by
  intro D ψ hψ S T χS χT hS hT hrS hrT JA JB ξ hJA hJB κ _ co hco ω hω om hom Φ hΦ p0
  obtain ⟨pres, impl⟩ := GlobalTheory.T.transportedWeil_preserves_schwartz_heisenberg_equivariant D ψ hψ S T χS χT hS hT hrS hrT JA JB ξ hJA hJB κ co hco ω hω om hom
  obtain ⟨L₁, L₂, hL₁, hL₂, hinv⟩ := _root_.GlobalTheory.SchrFixNbhd.schr_fix_nbhd D ψ hψ κ Φ hΦ
  obtain ⟨N, hN, L₁', L₂', hL₁', hL₁c, hL₂', hNL⟩ := _root_.GlobalTheory.WeilTransNbhdD.exists_nhds_finite_preimage_D D T.rank S.rank JA JB ξ κ co L₁ L₂ hL₁ hL₂ p0
  have hK := _root_.GlobalTheory.AnnCompactStdChar.isCompact_annihilator_of_isStdChar D ψ hψ κ L₂' hL₂'
  have hA := GlobalTheory.T.periodic_adelicSchwartz_finite_coset_decomposition D.host.F κ L₁' hL₁' hL₁c _ hK
  obtain ⟨m, g, y, hg, hgy, hrep⟩ := hA
  refine ⟨N, hN, m, g, y, hg, hgy, fun p hp => ?_⟩
  have fix : ∀ x ∈ L₁', ∀ y₁ ∈ L₂', GlobalTheory.WeilM.schr ψ (adeleJoin D.host.F 0 x,
      adeleJoin D.host.F 0 y₁) (om p Φ) = om p Φ := by
    intro x hx y₁ hy₁
    have hxy := hNL p hp x hx y₁ hy₁
    obtain ⟨x', hx', y', hy', he⟩ := hxy
    have := impl p (co.e.symm (adeleJoin D.host.F 0 x', adeleJoin D.host.F 0 y')) Φ hΦ
    simp only [GlobalTheory.WeilM.Darboux.rho, LinearEquiv.apply_symm_apply, hinv x' hx' y' hy', he] at this
    exact this.symm
  refine hrep (om p Φ) (pres p Φ hΦ) ?_ ?_
  · intro x hx z
    have := congrFun (fix x hx 0 (zero_mem _)) z
    simp only [GlobalTheory.WeilM.schr, adeleJoin_zero_zero, dotProduct_zero, mul_zero, add_zero, AddChar.map_zero_eq_one,
      one_mul] at this
    exact this
  · intro z hz y₁ hy₁
    have := congrFun (fix 0 (zero_mem _) y₁ hy₁) z
    simp only [GlobalTheory.WeilM.schr, adeleJoin_zero_zero, zero_dotProduct, mul_zero, add_zero,
      dotProduct_adeleJoin_zero] at this
    exact (mul_eq_right₀ hz).mp this

end GlobalTheory.WeilCont

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalFiniteDimFinitePartsWeilOperators =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalFiniteDimFinitePartsWeilOperatorsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalFiniteDimFinitePartsWeilOperatorsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUSplittingInl\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalFiniteDimFinitePartsWeilOperators\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta
open IsDedekindDomain NumberField
open scoped TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chr incM)

attribute [local instance] Formalism.BasicNotions.Host.cmStar
open scoped Classical


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalFiniteDimFinitePartsWeilOperatorsStatement =====
