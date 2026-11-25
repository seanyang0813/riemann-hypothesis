module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SatGramActRRep
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.KernelOfEmbedding
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.SubMemOfIndQ
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ActRow
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.AmpIota
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.UnipotentInLevelSubgroup
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LiftMassCOf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ToTermAct
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.TermTieOf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.MemPerpMapFlag
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.Vanish
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.InfCut
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.NilradicalLatticeZMemSpan
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.AmpFibreConstOf
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.NormChiNBi
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.FullExistsTiedHolds
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FibreCounting
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SatGramActL
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.LevelSubgroupProperties

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FibreCountEqHolds, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PairAmpConstOf, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExists, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExistsAlt, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.AmpCovOf, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExistsOf, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExistsRf, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PairAmpConstWd

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FibreCountEqHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FibreCountEqHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SatGramActRRep\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.KernelOfEmbedding\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.SubMemOfIndQ\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ActRow\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.AmpIota\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.UnipotentInLevelSubgroup\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FibreCounting\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LiftMassCOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.PackageTie2

namespace Formalism.L2.SG.Pf.FibreEq

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} {X : HidaSetting D} {Y : Formalism.L2.SG.Full.Full X} {u u' : D.what₂.Word}

theorem partner (hN : Formalism.L2.SG.PoincareInHH.Cut.NeatKu X u' Y.hK) (hIR : Formalism.L2.SG.Pf.SatGramRep.IotaRepC)
    {l₁ l₂ s₁ : TT Y u u'} (hrow : rowOf Y.TR (Y.cs u) (Y.cs u') l₁ = rowOf Y.TR (Y.cs u) (Y.cs u') l₂)
    (h : l₁.toTerm = s₁.toTerm) :
    ∃ s₂ : TT Y u u', s₂.toTerm = l₂.toTerm ∧
      rowOf Y.TR (Y.cs u) (Y.cs u') s₁ = rowOf Y.TR (Y.cs u) (Y.cs u') s₂ := by
  obtain ⟨γ, rfl⟩ := Formalism.L2.SG.Pf.KernelOfEmbedding.fib_gam hN h
  refine ⟨Formalism.L2.SG.Pf.KernelOfEmbedding.act Y ⟨l₁.lam', l₁.mem'⟩ γ l₂, Formalism.L2.SG.Pf.KernelOfEmbedding.toTerm_act _ _ _, ?_⟩
  have hl := Formalism.L2.SG.Pf.KernelOfEmbedding.lam_eq_of_row hrow
  have i1 := Formalism.L2.SG.Pf.KernelOfEmbedding.iota_act hIR ⟨l₁.lam', l₁.mem'⟩ γ l₁ rfl
  have i2 := Formalism.L2.SG.Pf.KernelOfEmbedding.iota_act hIR ⟨l₁.lam', l₁.mem'⟩ γ l₂ hl.2.symm
  have hι : iotaOf Y.TR (Y.cs u) (Y.cs u') l₁ = iotaOf Y.TR (Y.cs u) (Y.cs u') l₂ :=
    congrArg (fun r => r.2.2) hrow
  unfold rowOf
  simp only [Prod.mk.injEq, Subtype.mk.injEq]
  exact ⟨hl.1, hl.2, by rw [i1, i2, hι]⟩

theorem fibreCountEq_of (hF : FinX Y) (hN : ∀ u' : D.what₂.Word, Formalism.L2.SG.PoincareInHH.Cut.NeatKu X u' Y.hK)
    (hIR : Formalism.L2.SG.Pf.SatGramRep.IotaRepC) (hRF : Formalism.L2.SG.Pf.FibreCounting.RowFree Y) :
    Formalism.L2.SG.Pf.KernelOfEmbedding.FibreCountEq hF := by
  intro u u' q
  let _ := hF.fibFT q.1.1
  let _ := hF.fibFT q.1.2
  obtain ⟨l₁, l₂, hrow⟩ := q.2
  have hinner : ∀ r₁ : fib Y q.1.1,
      ∑ r₂ : fib Y q.1.2, (if Formalism.L2.SG.Pf.KernelOfEmbedding.row Y r₁.1 = Formalism.L2.SG.Pf.KernelOfEmbedding.row Y r₂.1 then
        Formalism.MainNotions.S.wRow D (X.Fu u') r₁.1.lam' else 0) = Formalism.MainNotions.S.wRow D (X.Fu u') r₁.1.lam' := by
    intro r₁
    obtain ⟨s₂, hs₂t, hs₂r⟩ := partner (hN u') hIR hrow (l₁.2.trans r₁.2.symm)
    have hs₂ : s₂.toTerm = q.1.2 := hs₂t.trans l₂.2
    refine (Finset.sum_eq_single (s := (Finset.univ : Finset (fib Y q.1.2))) (show fib Y q.1.2 from ⟨s₂, hs₂⟩)
      (fun b _ hb => ?_) (fun hb => absurd (Finset.mem_univ _) hb)).trans (if_pos hs₂r)
    refine if_neg (fun hrb => hb (Subtype.ext ?_))
    exact hRF u u' b.1 s₂ (b.2.trans hs₂.symm) (hrb.symm.trans hs₂r)
  have hlam : ∀ r₁ : fib Y q.1.1, r₁.1.lam' = l₁.1.lam' := fun r₁ =>
    Formalism.L2.SG.Pf.FibreCounting.lam'_eq (r₁.2.trans l₁.2.symm)
  have hsum : ∑ r₁ : fib Y q.1.1, ∑ r₂ : fib Y q.1.2, (if Formalism.L2.SG.Pf.KernelOfEmbedding.row Y r₁.1 = Formalism.L2.SG.Pf.KernelOfEmbedding.row Y r₂.1
      then Formalism.MainNotions.S.wRow D (X.Fu u') r₁.1.lam' else 0) =
      (Fintype.card (fib Y q.1.1) : ℝ) * Formalism.MainNotions.S.wRow D (X.Fu u') l₁.1.lam' := by
    rw [Finset.sum_congr rfl (fun r₁ _ => (hinner r₁).trans (by rw [hlam r₁])), Finset.sum_const,
      Finset.card_univ, nsmul_eq_mul]
  rw [Fintype.sum_prod_type]
  refine hsum.trans ?_
  obtain ⟨f, hf⟩ := Formalism.L2.SG.Pf.FibreCounting.fib_bij (hN u') l₁.1
  have hcard : Fintype.card (fib Y q.1.1) = Nat.card ↥(autLz D (X.Fu u') l₁.1.lam') := by
    rw [← Nat.card_eq_fintype_card]
    have e1 : fib Y q.1.1 ≃ {s : TT Y u u' // s.toTerm = l₁.1.toTerm} :=
      Equiv.subtypeEquivRight (fun s => by rw [l₁.2])
    exact (Nat.card_congr e1).trans (Nat.card_congr (Equiv.ofBijective f hf))
  have hpos : 0 < Fintype.card (fib Y q.1.1) := Fintype.card_pos_iff.2 ⟨l₁⟩
  unfold Formalism.MainNotions.S.wRow
  rw [← hcard]
  exact mul_inv_cancel₀ (Nat.cast_ne_zero.2 hpos.ne')

theorem fibreCountEq_of' (hF : FinX Y) (hIR : Formalism.L2.SG.Pf.SatGramRep.IotaRepC) (hRF : Formalism.L2.SG.Pf.FibreCounting.RowFree Y) :
    Formalism.L2.SG.Pf.KernelOfEmbedding.FibreCountEq hF :=
  fibreCountEq_of hF (fun u' => Formalism.L2.SG.Closed.NeatKu_holds X u' Y.hK) hIR hRF

theorem FibreCountEq_holds (hF : FinX Y) : Formalism.L2.SG.Pf.KernelOfEmbedding.FibreCountEq hF :=
  fibreCountEq_of' hF Formalism.L2.SG.Pf.iotaRepC_holds
    (Formalism.L2.SG.Pf.Act.rowFree_of (fun u' => Formalism.L2.SG.Closed.NeatKu_holds X u' Y.hK) Formalism.L2.SG.Pf.iotaRepC_holds)

end Formalism.L2.SG.Pf.FibreEq
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FibreCountEqHolds =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PairAmpConstOf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PairAmpConstOf", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ToTermAct\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.SubMemOfIndQ\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SatGramActL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.Full
  Formalism.L2.SG.PackageTie2 Formalism.L2.SG.PoincareInHH.PoincareSetting

namespace Formalism.L2.SG.Pf.KernelOfEmbedding

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section Pair

variable {D : D7} {X : HidaSetting D} {Y : Full X} {u u' : D.what₂.Word}

def mvRow (L : Iof Y.TR) (r : Rw (Y.what₂ u) (Y.what₂ u') Y.TR) : Rw (Y.what₂ u) (Y.what₂ u') Y.TR :=
  (r.1, r.2.1, r.2.2 * L)

theorem row_act (hIR : Formalism.L2.SG.Pf.SatGramRep.IotaRepC) (q : {Λ // Λ ∈ Y.what₂ u'})
    (γ : Formalism.L2.SG.Pf.Act.GamL (Y.cs u') q) (s : TT Y u u') (hs : s.lam' = q.1) :
    row Y (act Y q γ s) = mvRow (levi Y.TR (Formalism.L2.SG.Pf.SatGramActL.kB (Y.cs u') q.1 γ.1))⁻¹ (row Y s) := by
  unfold row rowOf mvRow
  rw [iota_act hIR q γ s hs]
  rfl

theorem pair_core (hRF : Formalism.L2.SG.Pf.FibreCounting.RowFree Y) (hIR : Formalism.L2.SG.Pf.SatGramRep.IotaRepC)
    (hAR : Formalism.L2.SG.Pf.SatGramRep.AmpRepNC) (hB : Formalism.L2.SG.Pf.SatGramActL.ChiNBiAll)
    (hOI : OOIntAll X u u' (X.Fu u) (X.Fu u') (Y.what₂ u) (Y.what₂ u')) (q : {Λ // Λ ∈ Y.what₂ u'})
    (γ : Formalism.L2.SG.Pf.Act.GamL (Y.cs u') q) (a₁ a₂ b₁ b₂ : TT Y u u') (ha₁ : a₁.lam' = q.1) (ha₂ : a₂.lam' = q.1)
    (hr : row Y a₁ = row Y a₂) (hr' : row Y b₁ = row Y b₂) (hγ : b₁ = act Y q γ a₁) (h2 : a₂.toTerm = b₂.toTerm) :
    Formalism.MainNotions.S.hsInner (amp Y a₁) (amp Y a₂) = Formalism.MainNotions.S.hsInner (amp Y b₁) (amp Y b₂) := by
  have h1 : row Y (act Y q γ a₁) = row Y b₂ := by rw [← hγ]; exact hr'
  have hrow : row Y (act Y q γ a₂) = row Y b₂ :=
    (row_act hIR q γ a₂ ha₂).trans ((congrArg (mvRow _) hr.symm).trans ((row_act hIR q γ a₁ ha₁).symm.trans h1))
  have hb2 : act Y q γ a₂ = b₂ := hRF u u' _ _ ((toTerm_act q γ a₂).trans h2) hrow
  have hs : ((γ.1 : Gam X u') : X.B.I.GA).1 ∈ Hinf X u' := (Subgroup.mem_prod.1 (Subgroup.mem_inf.1 γ.1.2).2).1
  have hP : X.piU u' (((γ.1 : Gam X u') : X.B.I.GA).1)⁻¹ =
      cl (Formalism.L2.SG.Pf.SatGramActL.piUe u' (((γ.1 : Gam X u') : X.B.I.GA).1) hs).symm := by
    ext v; rfl
  rw [hγ, ← hb2, amp_act hB hAR hOI q γ a₁ ha₁, amp_act hB hAR hOI q γ a₂ ha₂, hP]
  exact (hsInner_comp_isom _ _ _).symm

theorem pairAmpConst_of (hN : ∀ w, Formalism.L2.SG.PoincareInHH.Cut.NeatKu X w Y.hK)
    (hRF : Formalism.L2.SG.Pf.FibreCounting.RowFree Y) (hIR : Formalism.L2.SG.Pf.SatGramRep.IotaRepC)
    (hAR : Formalism.L2.SG.Pf.SatGramRep.AmpRepNC) (hB : Formalism.L2.SG.Pf.SatGramActL.ChiNBiAll)
    (hOI : ∀ w w', OOIntAll X w w' (X.Fu w) (X.Fu w') (Y.what₂ w) (Y.what₂ w')) : PairAmpConst Y := by
  intro u u' t₁ t₂ r r' hr hr'
  have hab : r.1.1.toTerm = r'.1.1.toTerm := r.1.2.trans r'.1.2.symm
  obtain ⟨γ, hγ⟩ := fib_gam (hN u') hab
  have hl := lam_eq_of_row hr
  exact pair_core hRF hIR hAR hB (hOI u u') _ γ r.1.1 r.2.1 r'.1.1 r'.2.1 rfl hl.2.symm hr hr' hγ
    (r.2.2.trans r'.2.2.symm)

end Pair

end Formalism.L2.SG.Pf.KernelOfEmbedding
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PairAmpConstOf =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExists =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExists", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.TermTieOf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.KernelOfEmbedding\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open NumberField Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.PackageTie2 Formalism.L2.SG.TermTieOf

namespace Formalism.L2.SG.Pf.KernelOfEmbedding

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} {X : HidaSetting D} {Y : Formalism.L2.SG.Full.Full X} {hF : FinX Y} (W : WittDat X)
  (hI : SIso D.s (sOf hF))

theorem tc_pfst {u u' : D.what₂.Word} (p : D.s.Pair u u') : tc hI (D.s.pfst p) = (hI.eP u u' p).1.1 :=
  hI.pfst p

theorem tc_psnd {u u' : D.what₂.Word} (p : D.s.Pair u u') : tc hI (D.s.psnd p) = (hI.eP u u' p).1.2 :=
  hI.psnd p

theorem wRowOf_eq (hW : WRowIso D) {u u' : D.what₂.Word} (p : D.s.Pair u u') :
    wRowOf W hI p = Formalism.MainNotions.S.wRow D (X.Fu u) (hI.eP u u' p).1.1.lam := by
  unfold wRowOf FlagOfWord lamOf
  refine (hW (W.δ u) (W.isom u) (X.Fu u) _).trans ?_
  rw [tc_pfst]

theorem jtOf_eq {u u' : D.what₂.Word} (t : D.s.Term u u') (s : TT Y u u') (hs : s.toTerm = tc hI t) :
    ∃ g : fib Y (tc hI t), JtOf hI t = amp Y g.1 := by
  have h : ∃ s : TT Y u u', s.toTerm = tc hI t := ⟨s, hs⟩
  exact ⟨⟨h.choose, h.choose_spec⟩, by unfold JtOf; rw [dite_eq_left h]⟩

theorem pair_form (hW : WRowIso D) (hC : AmpCov Y) (hK : PairAmpConst Y) (hN : FibreCountEq hF)
    (u u' : D.what₂.Word) (p : D.s.Pair u u') :
    ∃ (c : ℂ) (U : X.Vpi u' ≃ₗᵢ[ℂ] X.Vpi u'), ‖c‖ = 1 ∧
      D.s.pval p = (wRowOf W hI p : ℂ) * c *
        Formalism.MainNotions.S.hsInner ((JtOf hI (D.s.pfst p)).comp (cl U)) (JtOf hI (D.s.psnd p)) := by
  have h1 := tc_pfst hI p
  have h2 := tc_psnd hI p
  obtain ⟨g₁, hg₁⟩ := jtOf_eq hI (D.s.pfst p) (hI.eP u u' p).2.choose.1
    ((hI.eP u u' p).2.choose.2.trans h1.symm)
  obtain ⟨g₂, hg₂⟩ := jtOf_eq hI (D.s.psnd p) (hI.eP u u' p).2.choose_spec.choose.1
    ((hI.eP u u' p).2.choose_spec.choose.2.trans h2.symm)
  obtain ⟨c, U, hc, hv⟩ := pvR_form hF hC hK hN (hI.eP u u' p) ⟨g₁.1, g₁.2.trans h1⟩ ⟨g₂.1, g₂.2.trans h2⟩
  refine ⟨c, U, hc, ?_⟩
  rw [hI.pval p, wRowOf_eq W hI hW p, hg₁, hg₂]
  exact hv

theorem pvalForm_exists (hW : WRowIso D) (hC : AmpCov Y) (hK : PairAmpConst Y) (hN : FibreCountEq hF) :
    ∃ A : AmpDat X, PvalForm W hI A := by
  have H := fun (u u' : D.what₂.Word) (p : D.s.Pair u u') => pair_form W hI hW hC hK hN u u' p
  choose c U _ hv using H
  exact ⟨{ chi := fun {u u'} p => c u u' p
           piB := fun {u u'} p => cl (U u u' p) },
    fun {u u'} p => hv u u' p⟩

end Formalism.L2.SG.Pf.KernelOfEmbedding
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExists =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExistsAlt =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExistsAlt", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.KernelOfEmbedding\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.TermTieOf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.MemPerpMapFlag\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.PackageTie2 Formalism.L2.SG.TermTieOf

namespace Formalism.L2.SG.Pf.KernelOfEmbedding

variable {D : D7} {X : HidaSetting D} {Y : Formalism.L2.SG.Full.Full X} {hF : FinX Y} (W : WittDat X)
  (hI : SIso D.s (sOf hF))

theorem pvalForm_exists' (hC : AmpCov Y) (hK : PairAmpConst Y) (hN : FibreCountEq hF) :
    ∃ A : AmpDat X, PvalForm W hI A :=
  pvalForm_exists W hI (Formalism.L2.SG.Pf.WittFlags.WRowIso_holds D) hC hK hN

end Formalism.L2.SG.Pf.KernelOfEmbedding
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExistsAlt =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.AmpCovOf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.AmpCovOf", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.KernelOfEmbedding\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.Vanish\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.InfCut\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.NilradicalLatticeZMemSpan\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.AmpFibreConstOf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FibreCounting\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.SubMemOfIndQ\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical ComplexConjugate
open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.HidaSetting Formalism.L2.SG.Full
  Formalism.L2.SG.PackageTie2 Formalism.L2.SG.TermOp Formalism.L2.SG.TermOp.Vanish Formalism.L2.SG.Pf.FibreCounting

namespace Formalism.L2.SG.Pf.KernelOfEmbedding

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section Gen

variable {V V' : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [NormedAddCommGroup V']
  [InnerProductSpace ℂ V']

theorem smul_cov (r χ χ' b : ℂ) (hχ : ‖χ‖ = 1) (O O' : V' →L[ℂ] V) (U : V' →L[ℂ] V') (hO : O' = b • O.comp U) :
    r • (χ' • O') = (χ' * b * χ⁻¹) • (r • (χ • O)).comp U := by
  have hχ0 : χ ≠ 0 := by intro h; rw [h, norm_zero] at hχ; exact zero_ne_one hχ
  rw [hO]
  simp only [ContinuousLinearMap.smul_comp, smul_smul]
  congr 1
  field_simp

theorem norm_cov (χ χ' b : ℂ) (hχ : ‖χ‖ = 1) (hχ' : ‖χ'‖ = 1) (hb : ‖b‖ = 1) : ‖χ' * b * χ⁻¹‖ = 1 := by
  rw [norm_mul, norm_mul, norm_inv, hχ, hχ', hb]; norm_num

end Gen

section Amp

variable {D : D7} {X : HidaSetting D} {Y : Full X} {u u' : D.what₂.Word}



theorem oot_cov (hR : RatPt) (hC : ChiTrivialC) {s s' : TT Y u u'} (h : s.toTerm = s'.toTerm) :
    ∃ (b : ℂ) (U : X.Vpi u' ≃ₗᵢ[ℂ] X.Vpi u'), ‖b‖ = 1 ∧ OOt s' = b • (OOt s).comp (cl U) := by
  haveI := FiniteDimensional.complete ℂ (X.Vpi u)
  obtain ⟨hl, n, hn, ν, hν, c, hc, hg, hfix, he⟩ := fib_dec h
  have hm : s.lam' = s'.lam' := lam'_eq h
  obtain ⟨xn, hxn⟩ := hR D X n (nlam_isom hn)
  obtain ⟨xν, hxν⟩ := hR D X ν (nlam_isom hν)
  obtain ⟨xc, hxc⟩ := hR D X c hc
  have hpt : s'.pt = xn * s.pt * xν * xc :=
    ratLink_unique X s'.rep.2.1
      (ratLink_congr (ratLink_mul X (ratLink_mul X (ratLink_mul X hxn s.rep.2.1) hxν) hxc) he.symm)
  have hIA : IsAutLam (VS D) s.lam' c := ⟨hc, gmap_congr hg hm.symm⟩
  have hset : ROinf s' = ROset X (X.Fu u) (X.Fu u') s.lam s.lam' (n * s.lin * ν) :=
    (roset_congr hl.symm hm.symm he).trans (roset_c _ hIA hfix)
  have hconj : ∀ y, y ∈ ROinf s ↔ xn.1 * y * xn.1⁻¹ ∈ ROinf s' := fun y =>
    (roset_conj X hn hν hxn y).trans (Set.ext_iff.1 hset.symm _)
  have hex : (∃ Ω, IsSFund X.B.I (ROinf s) Ω) ↔ (∃ Ω, IsSFund X.B.I (ROinf s') Ω) := by
    constructor
    · rintro ⟨Ω, hΩ⟩
      refine ⟨_, isSF_image_mul xn.1 (fun y => ?_) hΩ⟩
      have e : xn.1 * (xn.1⁻¹ * y * xn.1) * xn.1⁻¹ = y := by group
      rw [hconj, e]
    · rintro ⟨Ω, hΩ⟩
      refine ⟨_, isSF_image_mul xn.1⁻¹ (fun y => ?_) hΩ⟩
      rw [inv_inv]
      exact hconj y
  by_cases hE : ∃ Ω, IsSFund X.B.I (ROinf s') Ω
  · have hE0 := hex.2 hE
    have hΩp : IsSFund X.B.I (ROinf s) (FundOf s) := by
      unfold FundOf; rw [dite_eq_left hE0]; exact hE0.choose_spec
    have hΩq : IsSFund X.B.I (ROinf s') (FundOf s') := by
      unfold FundOf; rw [dite_eq_left hE]; exact hE.choose_spec
    have key := oo_rel nLamNinf_holds hC Y s.mem s.mem' s.rep hn hν hxn hxν hΩp (isSFund_congr hset hΩq)
    have hsinv : xc.1⁻¹ ∈ X.SinfU u' := Formalism.L2.SG.RealObj.InfCut.sinfU_inv X u' (sinf_of_fix hxc hfix)
    have hB : ∀ x, X.Wu u' (xc.1⁻¹ * x) =
        X.psiInfU u' xc.1⁻¹ • (Formalism.L2.SG.RealObj.InfCut.piIso X u' xc.1⁻¹ hsinv) (X.Wu u' x) :=
      fun x => (X.Wu_spec u').1 _ hsinv x
    have e1 : OOt s' = conj (X.psiInfU u' xc.1⁻¹) •
        (OO (Formalism.L2.SG.ProjRows.muInf X.B.I) (FundOf s') (X.Wu u) (X.Wu u') (xn * s.pt * xν).1).comp
          ((Formalism.L2.SG.RealObj.InfCut.piIso X u' xc.1⁻¹ hsinv).symm.toContinuousLinearEquiv :
            X.Vpi u' →L[ℂ] X.Vpi u') := by
      unfold OOt
      rw [hpt, Prod.fst_mul]
      exact OO_right _ _ _ _ _ xc.1 _ _ hB
    refine ⟨conj (X.psiInfU u' xc.1⁻¹) * (X.psiInfU u xn.1 * X.psiInfU u' xν.1),
      (Formalism.L2.SG.RealObj.InfCut.piIso X u' xc.1⁻¹ hsinv).symm, ?_, ?_⟩
    · rw [norm_mul, RCLike.norm_conj, norm_mul, psiInfU_norm, psiInfU_norm, psiInfU_norm]; norm_num
    · have key' : OO (Formalism.L2.SG.ProjRows.muInf X.B.I) (FundOf s') (X.Wu u) (X.Wu u') (xn * s.pt * xν).1 =
          (X.psiInfU u xn.1 * X.psiInfU u' xν.1) • OOt s := key
      rw [e1, key']
      have hU : ((Formalism.L2.SG.RealObj.InfCut.piIso X u' xc.1⁻¹ hsinv).symm.toContinuousLinearEquiv :
          X.Vpi u' →L[ℂ] X.Vpi u') = cl (Formalism.L2.SG.RealObj.InfCut.piIso X u' xc.1⁻¹ hsinv).symm := by
        ext x; rfl
      rw [hU, ContinuousLinearMap.smul_comp, smul_smul]
  · have hE0 : ¬ ∃ Ω, IsSFund X.B.I (ROinf s) Ω := fun h0 => hE (hex.1 h0)
    have h1 : OOt s' = 0 := by
      unfold OOt FundOf; rw [dite_eq_right hE]; exact OO_empty _ _ _ _
    have h2 : OOt s = 0 := by
      unfold OOt FundOf; rw [dite_eq_right hE0]; exact OO_empty _ _ _ _
    refine ⟨1, LinearIsometryEquiv.refl ℂ _, norm_one, ?_⟩
    rw [h1, h2]
    simp

theorem ampCov_of (hR : RatPt) (hC : ChiTrivialC) (Y : Full X) : AmpCov Y := by
  intro u u' t s s'
  have h : s.1.toTerm = s'.1.toTerm := s.2.trans s'.2.symm
  obtain ⟨b, U, hb, hO⟩ := oot_cov hR hC h
  unfold amp ampN
  refine ⟨_, U, ?_, smul_cov _ _ _ b (norm_chiN _) (OOt s.1) (OOt s'.1) (cl U) hO⟩
  exact norm_cov _ _ b (norm_chiN _) (norm_chiN _) hb

end Amp

end Formalism.L2.SG.Pf.KernelOfEmbedding
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.AmpCovOf =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExistsOf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExistsOf", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.KernelOfEmbedding\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.NilradicalLatticeZMemSpan\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.UnipotentInLevelSubgroup\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.AmpCovOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.TermTieOf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.PackageTie2 Formalism.L2.SG.TermTieOf

namespace Formalism.L2.SG.Pf.KernelOfEmbedding

theorem AmpCov_holds {D : D7} {X : HidaSetting D} (Y : Formalism.L2.SG.Full.Full X) : AmpCov Y :=
  ampCov_of Formalism.L2.SG.Pf.ratPt_holds _root_.Formalism.L2.SG.Pf.chiTrivialC_outright Y

variable {D : D7} {X : HidaSetting D} {Y : Formalism.L2.SG.Full.Full X} {hF : FinX Y} (W : WittDat X)
  (hI : SIso D.s (sOf hF))

end Formalism.L2.SG.Pf.KernelOfEmbedding
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExistsOf =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExistsRf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExistsRf", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.KernelOfEmbedding\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.SubMemOfIndQ\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.TermTieOf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ActRow\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.AmpIota\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.UnipotentInLevelSubgroup\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PairAmpConstOf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExistsAlt\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExistsOf\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.NormChiNBi\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.PackageTie2 Formalism.L2.SG.TermTieOf

namespace Formalism.L2.SG.Pf.KernelOfEmbedding

variable {D : D7} {X : HidaSetting D} {Y : Formalism.L2.SG.Full.Full X}

theorem pairAmpConst_holds (hRF : Formalism.L2.SG.Pf.FibreCounting.RowFree Y)
    (hOI : ∀ w w', OOIntAll X w w' (X.Fu w) (X.Fu w') (Y.what₂ w) (Y.what₂ w')) : PairAmpConst Y :=
  pairAmpConst_of (fun w => Formalism.L2.SG.Closed.NeatKu_holds X w Y.hK) hRF Formalism.L2.SG.Pf.iotaRepC_holds
    Formalism.L2.SG.Pf.ampRepNC_holds (fun _ X => chi_n_bilinear X) hOI

variable {hF : FinX Y} (W : WittDat X) (hI : SIso D.s (sOf hF))

theorem pvalForm_exists_rf (hRF : Formalism.L2.SG.Pf.FibreCounting.RowFree Y)
    (hOI : ∀ w w', OOIntAll X w w' (X.Fu w) (X.Fu w') (Y.what₂ w) (Y.what₂ w')) (hN : FibreCountEq hF) :
    ∃ A : AmpDat X, PvalForm W hI A :=
  pvalForm_exists' W hI (AmpCov_holds Y) (pairAmpConst_holds hRF hOI) hN

theorem rowFree_holds : Formalism.L2.SG.Pf.FibreCounting.RowFree Y :=
  Formalism.L2.SG.Pf.Act.rowFree_of (fun w => Formalism.L2.SG.Closed.NeatKu_holds X w Y.hK) Formalism.L2.SG.Pf.iotaRepC_holds

theorem pvalForm_exists_oi (hOI : ∀ w w', OOIntAll X w w' (X.Fu w) (X.Fu w') (Y.what₂ w) (Y.what₂ w'))
    (hN : FibreCountEq hF) : ∃ A : AmpDat X, PvalForm W hI A :=
  pvalForm_exists_rf W hI rowFree_holds hOI hN

end Formalism.L2.SG.Pf.KernelOfEmbedding
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExistsRf =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PairAmpConstWd =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PairAmpConstWd", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.TermTieOf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.FullExistsTiedHolds\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.LevelSubgroupProperties\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FibreCountEqHolds\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PvalFormExistsRf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.PackageTie2 Formalism.L2.SG.TermTieOf

namespace Formalism.L2.SG.Pf.KernelOfEmbedding

variable {D : D7} {X : HidaSetting D} {Y : Formalism.L2.SG.Full.Full X}

theorem ooIntAll_of (hWD : Formalism.L2.SG.WuDecay.WuDecay X) (w w' : D.what₂.Word) :
    OOIntAll X w w' (X.Fu w) (X.Fu w') (Y.what₂ w) (Y.what₂ w') :=
  Formalism.L2.SG.Closed.OOIntAllC_outright D X Y w w'
    (Formalism.L2.SG.Closed.FoldOKC_outright D X Y w (Formalism.L2.SG.Closed.level_subgroup_properties X) hWD)
    (Formalism.L2.SG.Closed.FoldOKC_outright D X Y w' (Formalism.L2.SG.Closed.level_subgroup_properties X) hWD)
    (Formalism.L2.SG.Pf.fundExistsC_holds D X Y w w')

variable {hF : FinX Y} (W : WittDat X) (hI : SIso D.s (sOf hF))

theorem pvalForm_holds (hWD : Formalism.L2.SG.WuDecay.WuDecay X) : ∃ A : AmpDat X, PvalForm W hI A :=
  pvalForm_exists_oi W hI (ooIntAll_of hWD) (Formalism.L2.SG.Pf.FibreEq.FibreCountEq_holds hF)

end Formalism.L2.SG.Pf.KernelOfEmbedding
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PairAmpConstWd =====
