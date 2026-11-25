module

public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LocClosed
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.IsUnimodularOfLocalStandardLatticeTranslates
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalOrthogonalProjCommComplementUnitary
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocFacts
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfA
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfL
public import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.GlobalConditionOfLocalAgreement
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.InnerPreimageEqOfLocalInnerLatticeEq
public import Formalism.SharpRestriction.CuspSpanNormBounds.LocalGroupInFamilyNontrivial
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfLocGlob
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfQ
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalInnerLatticeEqOfInnerPreimageEq
public import Formalism.SharpRestriction.CuspSpanNormBounds.IsTermOver
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsComplementUnitaryMulActionLocalInnerDatum
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.RationalAutomorphismLocalExtensionMovesLatticesStatement
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Tactic.Lemma
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermOp
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.NGData
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RowsConc
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.PoincareConstantEq
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.HidaSetting
import Mathlib.Tactic.TypeStar
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Polynomial.Basic
import Formalism.SharpRestriction.CuspSpanNormBounds.Point
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalGraphEqOfLocalIotaAgree, Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalGraphEqOfLocalIotaAgreeStatement, Development.AbelianVarietyTheory.Proofs.FlagMeasures.InnerPreimageEqOfLocalInnerLatticeEqStatement, Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIntegerCongruentLocalModGOnePlace, Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIntegerCongruentLocalModGOnePlaceStatement, Development.AbelianVarietyTheory.Proofs.FlagMeasures.ApproxGen, Development.AbelianVarietyTheory.Proofs.FlagMeasures.IoEqOfGraph, Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalIdentificationEqOfGlobalLatticesEq, Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalIdentificationEqOfGlobalLatticesEqStatement, Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalInnerLatticeEqOfInnerPreimageEqStatement, Development.AbelianVarietyTheory.Proofs.FlagMeasures.NonGenericDatumLatticeEqPerpQuotientImageTerm, Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalInnerDatumEqIffLocalDataEq, Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalInnerDatumEqIffLocalDataEqStatement, Development.AbelianVarietyTheory.Proofs.FlagMeasures.RationalClassLatticesIffRationalClassLocalFrameP, Development.AbelianVarietyTheory.Proofs.FlagMeasures.RationalClassLatticesIffRationalClassLocalFramePStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalGraphEqOfLocalIotaAgree =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalGraphEqOfLocalIotaAgree", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LocClosed\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.IsUnimodularOfLocalStandardLatticeTranslates\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalOrthogonalProjCommComplementUnitary\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocFacts\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfA\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfL\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.GlobalConditionOfLocalAgreement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Classical ENNReal Pointwise
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.RowsConc Formalism.L2.SG.NGData Formalism.L2.SG.TermLoc GlobalTheory.Unfold
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.Unfold.IotaGlob

theorem mem_localLattice_inf_of_mem_span : ∀ (D : D7) (Z : LocDat D) (p : PlF D) (U : Submodule D.host.E (VS D).V) (Λ : LV D),
    Submodule.IsLattice D.host.E Λ → ∀ y ∈ lattice₂ D Z.M p Λ,
    y ∈ Submodule.span (D.s.atP p).Ep (baseChange₂ D p '' (U : Set (VS D).V)) → y ∈ lattice₂ D Z.M p (Λ ⊓ toO (VS D) U) := by
  intro D Z p U Λ h y hy hs
  have e := Formalism.L2.SG.Pf.locSatC_holds D Z p Λ U h.fg
  exact (Set.ext_iff.1 e y).2 ⟨hy, hs⟩

theorem gS_unit : ∀ (D : D7) (Z : LocDat D) (p : PlF D), (Z.M p).split = none →
    ∃ u ∈ (Z.M p).L.O, u * ((gS D : ℕ) : (D.s.atP p).Ep) = 1 := by
  intro D Z p hs
  refine ⟨(D.s.atP p).ιE (uP p : D.host.E), ?_, ?_⟩
  · rw [_root_.Formalism.L2.SG.Pf.LocFacts.lf_hO Z p]; exact Formalism.L2.SG.Pf.LocFacts.unitPart_mem₂ p
  · rw [mul_comm, ← map_natCast (D.s.atP p).ιE]
    exact Formalism.L2.SG.Pf.StabIntSh.gS_mul_uP Z.δ Z.M Z.agree p hs

theorem gS_split : ∀ (D : D7) (Z : LocDat D) (p : PlF D) (g : Loc.SplitG (Z.M p).L), (Z.M p).split = some g →
    ∃ u ∈ (Z.M p).L.O, ∃ v ∈ (Z.M p).L.O,
      ((gS D : ℕ) : (D.s.atP p).Ep) = u * algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (g.q : (D.s.atP p).Fp) ∧ u * v = 1 := by
  intro D Z p g hs
  have hagree := (Z.agree p).2.2.2.2.2
  rcases hs' : (D.s.atP p).split with _ | sg
  · rw [hs, hs'] at hagree; exact hagree.elim
  rw [hs, hs'] at hagree
  have hq : g.q = sg.q := hagree.2
  refine ⟨(D.s.atP p).ιE ((Formalism.MainNotions.BridgeLemma.oth p : ℕ) : D.host.E), ?_, (D.s.atP p).ιE (uP p : D.host.E), ?_, ?_, ?_⟩
  · rw [_root_.Formalism.L2.SG.Pf.LocFacts.lf_hO Z p, map_natCast]; exact natCast_mem _ _
  · rw [_root_.Formalism.L2.SG.Pf.LocFacts.lf_hO Z p]; exact Formalism.L2.SG.Pf.LocFacts.unitPart_mem₂ p
  · rw [hq, sg.q_eq, ← Formalism.MainNotions.BridgeLemma.gpart_mul_oth p, Formalism.MainNotions.BridgeLemma.gpart_some p sg hs']
    simp only [Nat.cast_mul, map_natCast]
    rw [← map_natCast (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep), mul_comm]
  · rw [← map_mul, Formalism.MainNotions.BridgeLemma.unitAt_eq p]
    have h0 : ((Formalism.MainNotions.BridgeLemma.oth p : ℕ) : D.host.E) ≠ 0 := by
      exact_mod_cast Formalism.MainNotions.BridgeLemma.oth_ne_zero p
    push_cast
    rw [mul_inv_cancel₀ h0, map_one]

end GlobalTheory.Unfold.IotaGlob

namespace GlobalTheory.Unfold.IotaGlob

variable {D : D7}

theorem mem_iff_loc (Z : LocDat D) (N : LV D) (hN : Submodule.IsLattice D.host.E N) (x : (VS D).V) :
    x ∈ N ↔ ∀ p, baseChange₂ D p x ∈ lattice₂ D Z.M p N := by
  exact GlobalTheory.Unfold.StdDual.mem_iff_local Z N hN x

theorem smul_mem_latP (Z : LocDat D) (p : PlF D) (Λ : LV D) {u : (D.s.atP p).Ep} (hu : u ∈ (Z.M p).L.O)
    {w : Vp D p} (hw : w ∈ lattice₂ D Z.M p Λ) : u • w ∈ lattice₂ D Z.M p Λ := by
  have := (lattice₂ D Z.M p Λ).smul_mem (⟨u, hu⟩ : (Z.M p).L.O) hw
  rwa [Subring.smul_def] at this

theorem baseChange_natCast_smul (p : PlF D) (n : ℕ) (x : (VS D).V) :
    baseChange₂ D p ((n : 𝓞 D.host.E) • x) = ((n : (D.s.atP p).Ep)) • baseChange₂ D p x := by
  rw [← algebraMap_smul D.host.E (n : 𝓞 D.host.E) x, map_natCast, baseChange_smul₂, map_natCast]

theorem gsmul_mem (Z : LocDat D) (p : PlF D) (Λ : LV D) {w : Vp D p} (hw : w ∈ lattice₂ D Z.M p Λ) :
    ((gS D : ℕ) : (D.s.atP p).Ep) • w ∈ lattice₂ D Z.M p (Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ) := by
  unfold lattice₂ at hw
  induction hw using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨l, hl, rfl⟩ := hx
    rw [← baseChange_natCast_smul]
    exact Submodule.subset_span ⟨_, Submodule.smul_mem_smul (Ideal.mem_span_singleton_self _) hl, rfl⟩
  | zero => rw [smul_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [smul_add]; exact add_mem hx hy
  | smul a x _ hx =>
    rw [Subring.smul_def, smul_comm]
    exact smul_mem_latP Z p _ a.2 hx

theorem bcP_mem_X (Z : LocDat D) (p : PlF D) {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T)
    {f : Fin (D.R.rS + 1) → Vp D p} (hf : f = fun a => frFac Z.δ p a • baseChange₂ D p (frame G a))
    {ξ : (VS D).V} (hξ : ξ ∈ Xsp G) : baseChange₂ D p ξ ∈ (locH Z p).X f := by
  subst hf
  have hξ' : ξ ∈ Submodule.span D.host.E (Set.range G.fl.e) := hξ
  clear hξ
  induction hξ' using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨a, rfl⟩ := hx
    obtain ⟨u, hu⟩ := Formalism.L2.SG.Pf.ScalarFramePf.isUnit_frFac Z p a.castSucc
    have e : baseChange₂ D p (G.fl.e a) =
        (↑u⁻¹ : (D.s.atP p).Ep) • (frFac Z.δ p a.castSucc • baseChange₂ D p (frame G a.castSucc)) := by
      rw [← hu, smul_smul, Units.inv_mul, one_smul]
      simp [frame, FlagG.fvec]
    rw [e]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩)
  | zero => rw [map_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [(baseChange₂ D p).map_add]; exact add_mem hx hy
  | smul c x _ hx => rw [baseChange_smul₂]; exact Submodule.smul_mem _ _ hx

theorem X_le_span (Z : LocDat D) (p : PlF D) {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T)
    {f : Fin (D.R.rS + 1) → Vp D p} (hf : f = fun a => frFac Z.δ p a • baseChange₂ D p (frame G a)) :
    (locH Z p).X f ≤ Submodule.span (D.s.atP p).Ep (baseChange₂ D p '' (Xsp G : Set (VS D).V)) := by
  subst hf
  refine Submodule.span_le.2 ?_
  rintro _ ⟨a, rfl⟩
  refine Submodule.smul_mem _ _ (Submodule.subset_span ⟨G.fl.e a, Submodule.subset_span ⟨a, rfl⟩, ?_⟩)
  simp [frame, FlagG.fvec]

theorem baseChange_mem_perp (Z : LocDat D) (p : PlF D) {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T)
    {f : Fin (D.R.rS + 1) → Vp D p} (hf : f = fun a => frFac Z.δ p a • baseChange₂ D p (frame G a))
    {l : (VS D).V} (hl : l ∈ orth (VS D) (Xsp G)) : baseChange₂ D p l ∈ (locH Z p).perp ((locH Z p).X f) := by
  intro x hx
  have hx' := X_le_span Z p G hf hx
  clear hx
  have key : (locH Z p).h x (baseChange₂ D p l) = 0 := by
    induction hx' using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨ξ, hξ, rfl⟩ := hy
      rw [(locH Z p).h_herm]
      have h0 : (locH Z p).h (baseChange₂ D p l) (baseChange₂ D p ξ) = 0 := by
        show LocFacts₂ Z.M p (baseChange₂ D p l) (baseChange₂ D p ξ) = 0
        rw [baseChangeAt_form Z.M p (Z.hcj p)]
        have : (VS D).hT ξ l = 0 := (GlobalTheory.FrameProj.mem_orth_iff _ _).1 hl ξ hξ
        simp [brS, this]
      rw [h0, map_zero]
    | zero => exact (locH Z p).h_zero_left _
    | add x y _ _ hx hy => rw [(locH Z p).h_add_left, hx, hy, add_zero]
    | smul c x _ hx => rw [(locH Z p).h_smul_left, hx, mul_zero]
  rw [(locH Z p).h_herm, key, map_zero]

theorem X_le_orth {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) : Xsp G ≤ orth (VS D) (Xsp G) := by
  intro y hy
  rw [GlobalTheory.FrameProj.mem_orth_iff]
  intro u hu
  have hu' : u ∈ Submodule.span D.host.E (Set.range G.fl.e) := hu
  have hy' : y ∈ Submodule.span D.host.E (Set.range G.fl.e) := hy
  clear hu hy
  induction hy' using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨b, rfl⟩ := hx
    induction hu' using Submodule.span_induction with
    | mem x hx => obtain ⟨a, rfl⟩ := hx; exact G.fl.e_iso a b
    | zero => simp
    | add x y _ _ hx hy => simp [map_add (f := _), hx, hy]
    | smul c x _ hx => simp [hx]
  | zero => simp
  | add x y _ _ hx hy => simp [map_add (f := _), hx, hy]
  | smul c x _ hx => simp [hx]

theorem gS_ne : ((gS D : ℕ) : D.host.E) ≠ 0 := by
  have h0 := (D.host.g_prime 0).pos
  have h1 := (D.host.g_prime 1).pos
  have : 0 < gS D := Nat.mul_pos h0 h1
  exact_mod_cast this.ne'

theorem ngx_lattice {T T' : D.host.E} (F : LFlag (D.sp.Y 0) D.R.rS T) (F' : LFlag (D.sp.Y 0) D.R.rS T') (Λ : LV D)
    (h : Submodule.IsLattice D.host.E Λ) : Submodule.IsLattice D.host.E (NgX Λ (gS D) F F') := by
  have hle : NgX Λ (gS D) F F' ≤ Λ := sup_le (sup_le Submodule.smul_le_right inf_le_left) inf_le_left
  refine ⟨h.fg.of_le hle, ?_⟩
  intro s hs hli
  exact (LinearIndependent.iff_fractionRing _ _).mp hli
theorem lrep_mem_lsub {T : D.host.E} {Λ : LV D} {G : LFlag (D.sp.Y 0) D.R.rS T} {l : (VS D).V}
    (hl : l ∈ Lrep Λ G) : l ∈ Lsub Λ G :=
  Submodule.mem_inf.2 ⟨Submodule.mem_sup_left hl, (Submodule.mem_inf.1 hl).2⟩

end GlobalTheory.Unfold.IotaGlob

namespace GlobalTheory.Unfold.IotaGlob
variable {D : D7}
theorem smulLat_mem (Z : LocDat D) (p : PlF D) (c : (D.s.atP p).Ep) (L : Submodule (Z.M p).L.O (Vp D p)) (w : Vp D p)
    (hw : w ∈ L) : c • w ∈ (locH Z p).smulLat c L := by
  unfold Loc.HermSp.smulLat; exact Submodule.subset_span ⟨w, hw, rfl⟩

theorem mem_iota (Z : LocDat D) (p : PlF D) (g : Loc.SplitG (Z.M p).L) (L : Submodule (Z.M p).L.O (Vp D p))
    (f f' : Fin (D.R.rS + 1) → Vp D p) (T T' : (D.s.atP p).Fp)
    (x' : (locH Z p).perp ((locH Z p).X f')) (x : (locH Z p).perp ((locH Z p).X f))
    (hx' : (x' : Vp D p) ∈ L) (hx : (x : Vp D p) ∈ L)
    (hxx : (x : Vp D p) - x' ∈ (locH Z p).smulLat (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (g.q : (D.s.atP p).Fp)) L) :
    ((locH Z p).mkW f' x', (locH Z p).mkW f x) ∈ (locH Z p).iotaGraph g ⟨L, f, f', T, T'⟩ :=
  ⟨x', x, hx', hx, hxx, rfl⟩

theorem of_mem_iota (Z : LocDat D) (p : PlF D) (g : Loc.SplitG (Z.M p).L) (L : Submodule (Z.M p).L.O (Vp D p))
    (f f' : Fin (D.R.rS + 1) → Vp D p) (T T' : (D.s.atP p).Fp)
    (x' : (locH Z p).perp ((locH Z p).X f')) (x : (locH Z p).perp ((locH Z p).X f))
    (h : ((locH Z p).mkW f' x', (locH Z p).mkW f x) ∈ (locH Z p).iotaGraph g ⟨L, f, f', T, T'⟩) :
    ∃ y' : (locH Z p).perp ((locH Z p).X f'), ∃ y : (locH Z p).perp ((locH Z p).X f),
      (y' : Vp D p) ∈ L ∧ (y : Vp D p) ∈ L ∧
      (y : Vp D p) - y' ∈ (locH Z p).smulLat (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (g.q : (D.s.atP p).Fp)) L ∧
      (x' : Vp D p) - y' ∈ (locH Z p).X f' ∧ (x : Vp D p) - y ∈ (locH Z p).X f := by
  obtain ⟨y', y, hy', hy, hyy, heq⟩ := h
  obtain ⟨e1, e2⟩ := Prod.mk.inj heq
  refine ⟨y', y, hy', hy, hyy, ?_, ?_⟩
  · have := (Submodule.Quotient.eq _).1 e1
    simpa using this
  · have := (Submodule.Quotient.eq _).1 e2
    simpa using this

theorem of_mem_iota2 (Z : LocDat D) (p : PlF D) (g : Loc.SplitG (Z.M p).L) (L₁ L₂ : Submodule (Z.M p).L.O (Vp D p))
    (f f' : Fin (D.R.rS + 1) → Vp D p) (T T' : (D.s.atP p).Fp) (x' x : Vp D p)
    (hx' : x' ∈ (locH Z p).perp ((locH Z p).X f')) (hx : x ∈ (locH Z p).perp ((locH Z p).X f))
    (hI : (locH Z p).iotaGraph g ⟨L₁, f, f', T, T'⟩ = (locH Z p).iotaGraph g ⟨L₂, f, f', T, T'⟩)
    (h1 : x' ∈ L₁) (h2 : x ∈ L₁)
    (h3 : x - x' ∈ (locH Z p).smulLat (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (g.q : (D.s.atP p).Fp)) L₁) :
    ∃ y' y : Vp D p, y' ∈ L₂ ∧ y ∈ L₂ ∧
      y - y' ∈ (locH Z p).smulLat (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (g.q : (D.s.atP p).Fp)) L₂ ∧
      x' - y' ∈ (locH Z p).X f' ∧ x - y ∈ (locH Z p).X f := by
  have h := mem_iota Z p g L₁ f f' T T' ⟨x', hx'⟩ ⟨x, hx⟩ h1 h2 h3
  rw [hI] at h
  obtain ⟨y', y, h1, h2, h3, h4, h5⟩ := of_mem_iota Z p g L₂ f f' T T' ⟨x', hx'⟩ ⟨x, hx⟩ h
  exact ⟨y', y, h1, h2, h3, h4, h5⟩

theorem bc1 (p : PlF D) (a c d : (VS D).V) (y : Vp D p) :
    baseChange₂ D p a - y = baseChange₂ D p (d - c) + (baseChange₂ D p (a + c - d) - y) := by
  simp only [map_sub, map_add (f := _)]; abel

theorem bc2 (p : PlF D) (a c d : (VS D).V) (y : Vp D p) :
    baseChange₂ D p a - y = baseChange₂ D p (-(d + c)) + (baseChange₂ D p (a + c + d) - y) := by
  simp only [map_neg, map_add (f := _)]; abel

theorem bc3 (p : PlF D) (a a' : (VS D).V) (y y' : Vp D p) :
    baseChange₂ D p (a - a') = (baseChange₂ D p a - y) - (baseChange₂ D p a' - y') + (y - y') := by
  rw [map_sub]; abel

theorem mem_of_baseChangeAtPlace_split_difference_mem (p : PlF D) (a c d : (VS D).V) (y : Vp D p) (S : Submodule (D.s.atP p).Ep (Vp D p))
    (h : baseChange₂ D p (d - c) + (baseChange₂ D p (a + c - d) - y) ∈ S) : baseChange₂ D p a - y ∈ S := by
  rw [bc1 p a c d y]; exact h

theorem mem_of_baseChangeAtPlace_split_negSum_mem (p : PlF D) (a c d : (VS D).V) (y : Vp D p) (S : Submodule (D.s.atP p).Ep (Vp D p))
    (h : baseChange₂ D p (-(d + c)) + (baseChange₂ D p (a + c + d) - y) ∈ S) : baseChange₂ D p a - y ∈ S := by
  rw [bc2 p a c d y]; exact h

theorem smulLat_le_g (Z : LocDat D) (p : PlF D) (c u v : (D.s.atP p).Ep) (hv : v ∈ (Z.M p).L.O)
    (hg : ((gS D : ℕ) : (D.s.atP p).Ep) = u * c) (huv : u * v = 1) (Λ : LV D) (w : Vp D p)
    (hw : w ∈ (locH Z p).smulLat c (lattice₂ D Z.M p Λ)) :
    w ∈ lattice₂ D Z.M p (Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ) := by
  unfold Loc.HermSp.smulLat at hw
  refine (Submodule.span_le.2 ?_) hw
  rintro _ ⟨z, hz, rfl⟩
  have e : c • z = v • (((gS D : ℕ) : (D.s.atP p).Ep) • z) := by
    rw [hg, smul_smul, ← mul_assoc, mul_comm v u, huv, one_mul]
  show c • z ∈ _
  rw [e]
  exact smul_mem_latP Z p _ hv (gsmul_mem Z p Λ hz)

theorem baseChangeAtPlace_sub_mem_of_three_mem (Z : LocDat D) (p : PlF D) (a a' : (VS D).V) (y y' : Vp D p) (S : Submodule (Z.M p).L.O (Vp D p))
    (h1 : baseChange₂ D p a - y ∈ S) (h2 : baseChange₂ D p a' - y' ∈ S) (h3 : y - y' ∈ S) : baseChange₂ D p (a - a') ∈ S := by
  rw [bc3 p a a' y y']; exact add_mem (sub_mem h1 h2) h3
end GlobalTheory.Unfold.IotaGlob

namespace GlobalTheory.Unfold.IotaGlob

variable {D : D7}


theorem graph_sub (Z : LocDat D) (FP : ∀ p : PlF D, LocNG.FPair (locH Z p) D.R.rS) (Tn T'n : ℕ)
    (F : LFlag (D.sp.Y 0) D.R.rS (Tn : D.host.E)) (F' : LFlag (D.sp.Y 0) D.R.rS (T'n : D.host.E))
    (hB : Based Z FP Tn T'n F F') (Λ₁ Λ₂ : LV D)
    (h₂ : Submodule.IsLattice D.host.E Λ₂) (hL : Lsub Λ₁ F = Lsub Λ₂ F) (hL' : Lsub Λ₁ F' = Lsub Λ₂ F')
    (hI : ∀ (p : PlF D) (g : Loc.SplitG (Z.M p).L), (Z.M p).split = some g →
      (locH Z p).iotaGraph g ⟨lattice₂ D Z.M p Λ₁, (FP p).A.f, (FP p).B.f, (FP p).A.T, (FP p).B.T⟩ =
      (locH Z p).iotaGraph g ⟨lattice₂ D Z.M p Λ₂, (FP p).A.f, (FP p).B.f, (FP p).A.T, (FP p).B.T⟩) :
    (gdat F F' Λ₁).2.2 ⊆ (gdat F F' Λ₂).2.2 := by
  rintro ⟨p₁, p₂⟩ ⟨l', hl', l, hl, hp₁, hp₂, hll⟩
  obtain ⟨l₂, hl₂, t, ht, rfl⟩ := Submodule.mem_sup.1 (Submodule.mem_inf.1 (hL ▸ lrep_mem_lsub hl)).1
  obtain ⟨l'₂, hl'₂, t', ht', rfl⟩ := Submodule.mem_sup.1 (Submodule.mem_inf.1 (hL' ▸ lrep_mem_lsub hl')).1
  refine ⟨l'₂, hl'₂, l₂, hl₂, ?_, ?_, ?_⟩
  · have e : p₁ - l'₂ = (p₁ - (l'₂ + t')) + t' := by abel
    rw [e]; exact add_mem hp₁ ht'
  · have e : p₂ - l₂ = (p₂ - (l₂ + t)) + t := by abel
    rw [e]; exact add_mem hp₂ ht
  · rw [mem_iff_loc Z _ (ngx_lattice F F' Λ₂ h₂)]
    intro p
    have hΛl₂ : l₂ ∈ Λ₂ := (Submodule.mem_inf.1 hl₂).1
    have hΛl'₂ : l'₂ ∈ Λ₂ := (Submodule.mem_inf.1 hl'₂).1
    have hw : baseChange₂ D p (l₂ - l'₂) ∈ lattice₂ D Z.M p Λ₂ := Submodule.subset_span ⟨_, sub_mem hΛl₂ hΛl'₂, rfl⟩
    have hgle : lattice₂ D Z.M p (Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ₂) ≤
        lattice₂ D Z.M p (NgX Λ₂ (gS D) F F') :=
      GlobalTheory.FrameProj.localLattice_mono Z p (le_sup_left.trans le_sup_left)
    cases hs : (Z.M p).split with
    | none =>
      obtain ⟨u, hu, hug⟩ := gS_unit D Z p hs
      have e : baseChange₂ D p (l₂ - l'₂) = ((gS D : ℕ) : (D.s.atP p).Ep) • (u • baseChange₂ D p (l₂ - l'₂)) := by
        rw [smul_smul, mul_comm, hug, one_smul]
      rw [e]
      exact hgle (gsmul_mem Z p Λ₂ (smul_mem_latP Z p Λ₂ hu hw))
    | some g =>
      obtain ⟨u, hu, v, hv, hg, huv⟩ := gS_split D Z p g hs
      obtain ⟨ab, hab, ξ', hξ', habξ⟩ := Submodule.mem_sup.1 hll
      obtain ⟨a, ha, ξ, hξ, haξ⟩ := Submodule.mem_sup.1 hab
      rw [Submodule.ideal_span_singleton_smul] at ha
      obtain ⟨lam, hlam, hlamE⟩ := (Submodule.mem_smul_pointwise_iff_exists _ _ _).1 ha
      have hA := (hB p).1
      have hBf := (hB p).2.1
      have hlΛ : l₂ + t ∈ Λ₁ := (Submodule.mem_inf.1 hl).1
      have hl'Λ : l'₂ + t' ∈ Λ₁ := (Submodule.mem_inf.1 hl').1
      have hξΛ : ξ ∈ Λ₁ := (Submodule.mem_inf.1 hξ).1
      have hξ'Λ : ξ' ∈ Λ₁ := (Submodule.mem_inf.1 hξ').1
      have hξX : ξ ∈ Xsp F := (Submodule.mem_inf.1 hξ).2
      have hξ'X : ξ' ∈ Xsp F' := (Submodule.mem_inf.1 hξ').2
      have hxO : l₂ + t - ξ ∈ orth (VS D) (Xsp F) := sub_mem (Submodule.mem_inf.1 hl).2 (X_le_orth F hξX)
      have hx'O : l'₂ + t' + ξ' ∈ orth (VS D) (Xsp F') := add_mem (Submodule.mem_inf.1 hl').2 (X_le_orth F' hξ'X)
      have hxP := baseChange_mem_perp Z p F hA hxO
      have hx'P := baseChange_mem_perp Z p F' hBf hx'O
      have hxΛ : baseChange₂ D p (l₂ + t - ξ) ∈ lattice₂ D Z.M p Λ₁ := Submodule.subset_span ⟨_, sub_mem hlΛ hξΛ, rfl⟩
      have hx'Λ : baseChange₂ D p (l'₂ + t' + ξ') ∈ lattice₂ D Z.M p Λ₁ := Submodule.subset_span ⟨_, add_mem hl'Λ hξ'Λ, rfl⟩
      have hxx : baseChange₂ D p (l₂ + t - ξ) - baseChange₂ D p (l'₂ + t' + ξ') ∈ (locH Z p).smulLat
          (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (g.q : (D.s.atP p).Fp)) (lattice₂ D Z.M p Λ₁) := by
        have e1 : l₂ + t - ξ - (l'₂ + t' + ξ') = a := by
          have : l₂ + t - ξ - (l'₂ + t' + ξ') = (l₂ + t - (l'₂ + t')) - ξ - ξ' := by abel
          rw [this, ← habξ, ← haξ]; abel
        rw [← map_sub, e1, ← hlamE, baseChange_natCast_smul, hg, mul_comm, mul_smul]
        exact smulLat_mem Z p _ _ _ (smul_mem_latP Z p Λ₁ hu (Submodule.subset_span ⟨lam, hlam, rfl⟩))
      have hm1 := of_mem_iota2 Z p g (lattice₂ D Z.M p Λ₁) (lattice₂ D Z.M p Λ₂)
        (FP p).A.f (FP p).B.f (FP p).A.T (FP p).B.T _ _ hx'P hxP (hI p g hs) hx'Λ hxΛ hxx
      clear hI
      obtain ⟨y', y, hy'Λ, hyΛ, hyy, hx'y', hxy⟩ := hm1
      have hd1 : baseChange₂ D p l₂ - y ∈ lattice₂ D Z.M p Λ₂ := sub_mem (Submodule.subset_span ⟨l₂, hΛl₂, rfl⟩) hyΛ
      have hd2 := X_le_span Z p F hA (add_mem (bcP_mem_X Z p F hA (sub_mem hξX ht)) hxy)
      have hd : baseChange₂ D p l₂ - y ∈ lattice₂ D Z.M p (XLam Λ₂ F) :=
        mem_localLattice_inf_of_mem_span D Z p (Xsp F) Λ₂ h₂ _ hd1 (mem_of_baseChangeAtPlace_split_difference_mem p l₂ t ξ y _ hd2)
      have hd1' : baseChange₂ D p l'₂ - y' ∈ lattice₂ D Z.M p Λ₂ := sub_mem (Submodule.subset_span ⟨l'₂, hΛl'₂, rfl⟩) hy'Λ
      have hd2' := X_le_span Z p F' hBf (add_mem (bcP_mem_X Z p F' hBf (neg_mem (add_mem hξ'X ht'))) hx'y')
      have hd' : baseChange₂ D p l'₂ - y' ∈ lattice₂ D Z.M p (XLam Λ₂ F') :=
        mem_localLattice_inf_of_mem_span D Z p (Xsp F') Λ₂ h₂ _ hd1' (mem_of_baseChangeAtPlace_split_negSum_mem p l'₂ t' ξ' y' _ hd2')
      exact baseChangeAtPlace_sub_mem_of_three_mem Z p l₂ l'₂ y y' _ (GlobalTheory.FrameProj.localLattice_mono Z p (le_sup_right.trans le_sup_left) hd)
        (GlobalTheory.FrameProj.localLattice_mono Z p le_sup_right hd') (hgle (smulLat_le_g Z p _ u v hv hg huv Λ₂ _ hyy))

theorem graph_eq_of_local_iota : ∀ (D : D7) (Z : LocDat D) (FP : ∀ p : PlF D, LocNG.FPair (locH Z p) D.R.rS) (Tn T'n : ℕ) (F : LFlag (D.sp.Y 0) D.R.rS (Tn : D.host.E)) (F' : LFlag (D.sp.Y 0) D.R.rS (T'n : D.host.E)), Based Z FP Tn T'n F F' → ∀ Λ₁ Λ₂ : LV D, Submodule.IsLattice D.host.E Λ₁ → Submodule.IsLattice D.host.E Λ₂ → Lsub Λ₁ F = Lsub Λ₂ F → Lsub Λ₁ F' = Lsub Λ₂ F' → (∀ (p : PlF D) (g : Loc.SplitG (Z.M p).L), (Z.M p).split = some g → (locH Z p).iotaGraph g ⟨lattice₂ D Z.M p Λ₁, (FP p).A.f, (FP p).B.f, (FP p).A.T, (FP p).B.T⟩ = (locH Z p).iotaGraph g ⟨lattice₂ D Z.M p Λ₂, (FP p).A.f, (FP p).B.f, (FP p).A.T, (FP p).B.T⟩) → (gdat F F' Λ₁).2.2 = (gdat F F' Λ₂).2.2 := by
  intro D Z FP Tn T'n F F' hB Λ₁ Λ₂ h₁ h₂ hL hL' hI
  exact Set.Subset.antisymm (graph_sub Z FP Tn T'n F F' hB Λ₁ Λ₂ h₂ hL hL' hI)
    (graph_sub Z FP Tn T'n F F' hB Λ₂ Λ₁ h₁ hL.symm hL'.symm fun p g hs => (hI p g hs).symm)

end GlobalTheory.Unfold.IotaGlob
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalGraphEqOfLocalIotaAgree =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalGraphEqOfLocalIotaAgreeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalGraphEqOfLocalIotaAgreeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LocClosed\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalGraphEqOfLocalIotaAgree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Classical ENNReal
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.RowsConc Formalism.L2.SG.NGData Formalism.L2.SG.TermLoc GlobalTheory.Unfold
attribute [local instance] Formalism.BasicNotions.Host.cmStar


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalGraphEqOfLocalIotaAgreeStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.InnerPreimageEqOfLocalInnerLatticeEqStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.InnerPreimageEqOfLocalInnerLatticeEqStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LocClosed\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.InnerPreimageEqOfLocalInnerLatticeEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Classical ENNReal
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.RowsConc Formalism.L2.SG.NGData Formalism.L2.SG.TermLoc GlobalTheory.Unfold
attribute [local instance] Formalism.BasicNotions.Host.cmStar


theorem _root_.GlobalTheory.T.innerPreimage_eq_of_local_innerLattice_eq : ∀ (D : D7) (Z : LocDat D) {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) (Fr : ∀ p : PlF D, LocNG.FrameD (locH Z p) D.R.rS), (∀ p, (Fr p).f = (fun a => frFac Z.δ p a • baseChange₂ D p (frame G a))) → ∀ Λ₁ Λ₂ : LV D, Submodule.IsLattice D.host.E Λ₁ → Submodule.IsLattice D.host.E Λ₂ → (∀ p, (locH Z p).Lset (lattice₂ D Z.M p Λ₁) (Fr p).f = (locH Z p).Lset (lattice₂ D Z.M p Λ₂) (Fr p).f) → Lsub Λ₁ G = Lsub Λ₂ G := by
  first | exact @GlobalTheory.Unfold.LsubG.lsub_eq_of_local
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.InnerPreimageEqOfLocalInnerLatticeEqStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIntegerCongruentLocalModGOnePlace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIntegerCongruentLocalModGOnePlace", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.LocalGroupInFamilyNontrivial\nimport Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfLocGlob\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfQ\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LocClosed\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermOp\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.NGData\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RowsConc\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.PoincareConstantEq\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.HidaSetting\n\n"}
section -- clump:auto
@[expose] public section

open scoped Classical ENNReal
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.RowsConc Formalism.L2.SG.NGData Formalism.L2.SG.TermLoc GlobalTheory.Unfold
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.CongrLoc

private lemma exists_integer_mul_eq_of_valuation_le (D : D7) (q : PlF D) (x y : D.host.F) (hy : y ≠ 0)
    (h : q.valuation D.host.F x ≤ q.valuation D.host.F y) :
    ∃ β ∈ Valuation.integer (ValuativeRel.valuation (D.s.atP q).Fp),
      (D.s.atP q).ιF x = (D.s.atP q).ιF y * β := by
  have hle : (D.s.atP q).ιF x ≤ᵥ (D.s.atP q).ιF y := ((D.s.atP q).val x y).2 h
  have hv := (Valuation.vle_iff_le (ValuativeRel.valuation (D.s.atP q).Fp)).1 hle
  have hy' : (D.s.atP q).ιF y ≠ 0 := (map_ne_zero _).2 hy
  have hpos : 0 < ValuativeRel.valuation (D.s.atP q).Fp ((D.s.atP q).ιF y) :=
    zero_lt_iff.2 ((Valuation.ne_zero_iff _).2 hy')
  refine ⟨(D.s.atP q).ιF x / (D.s.atP q).ιF y, ?_, ?_⟩
  · rw [Valuation.mem_integer_iff, map_div₀]
    exact (div_le_one₀ hpos).2 hv
  · field_simp

private lemma exists_smul_sub_eq_gS_mul_mem_O (D : D7) (p : PlF D) (f : (D.s.atP p).Fp) (e : D.host.E) :
    ∃ b : D.host.E, ∃ o ∈ (D.s.atP p).O,
      f • (D.s.atP p).ιE e - (D.s.atP p).ιE b = (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) * o := by
  classical
  have := (D.s.atP p).char0
  have := (D.s.atP p).lf
  have hg0 : ((gS D : ℕ) : D.host.E) ≠ 0 := Formalism.L2.SG.Pf.StabIntSh.gS_ne
  have hgN : (gS D : ℕ) ≠ 0 := by
    intro h
    apply hg0
    simp [h]
  have halg : Algebra.IsAlgebraic ℤ D.host.E :=
    (IsFractionRing.comap_isAlgebraic_iff (A := ℤ) (K := ℚ) (C := D.host.E)).mpr inferInstance
  obtain ⟨d, hd0, hdint⟩ := (halg.isAlgebraic e).exists_integral_multiple

  set u : (D.s.atP p).Fp := ((gS D : ℕ) : (D.s.atP p).Fp) * ((d : ℤ) : (D.s.atP p).Fp) with hu
  have hu0 : u ≠ 0 := by
    rw [hu]
    exact mul_ne_zero (by exact_mod_cast hgN) (by exact_mod_cast hd0)
  have hvu : ValuativeRel.valuation (D.s.atP p).Fp u ≠ 0 := (Valuation.ne_zero_iff _).2 hu0
  have hnhds : {z : (D.s.atP p).Fp | ValuativeRel.valuation (D.s.atP p).Fp (z - f) <
      ((Units.mk0 _ hvu : (ValuativeRel.ValueGroupWithZero (D.s.atP p).Fp)ˣ) : ValuativeRel.ValueGroupWithZero (D.s.atP p).Fp)} ∈ nhds f :=
    (IsValuativeTopology.mem_nhds_iff').2 ⟨Units.mk0 _ hvu, subset_rfl⟩
  obtain ⟨a, ha⟩ := (D.s.atP p).dense.mem_nhds hnhds
  simp only [Set.mem_ofPred_eq, Units.val_mk0] at ha

  have hβ : ValuativeRel.valuation (D.s.atP p).Fp ((f - (D.s.atP p).ιF a) / u) ≤ 1 := by
    rw [map_div₀, ← Valuation.map_neg, neg_sub]
    exact (div_le_one₀ (zero_lt_iff.2 hvu)).2 ha.le
  refine ⟨algebraMap D.host.F D.host.E a * e,
    algebraMap (D.s.atP p).Fp (D.s.atP p).Ep ((f - (D.s.atP p).ιF a) / u) * (D.s.atP p).ιE ((d : ℤ) • e),
    mul_mem (_root_.PI.CntNotIntW.algMap_mem_O D p _ ((Valuation.mem_integer_iff _ _).2 hβ))
      (Formalism.L2.SG.Pf.StabIntSh.lg_iota_int p ⟨(d : ℤ) • e, hdint⟩), ?_⟩
  rw [map_mul, (D.s.atP p).compat, zsmul_eq_mul, map_mul, map_intCast, map_natCast, Algebra.smul_def]
  have hsplit : f = (f - (D.s.atP p).ιF a) / u * u + (D.s.atP p).ιF a := by
    field_simp
    ring
  conv_lhs => rw [hsplit]
  rw [hu]
  simp only [map_add (f := _), map_mul, map_natCast, map_intCast]
  ring

private lemma exists_pow_mul_finset_sum_mem_subring (D : D7) (p : PlF D) (x : (D.s.atP p).Ep) :
    ∃ b : D.host.E, ∃ o ∈ (D.s.atP p).O,
      x - (D.s.atP p).ιE b = (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) * o := by
  classical
  have hx : x ∈ Submodule.span (D.s.atP p).Fp (Set.range (D.s.atP p).ιE) := by
    rw [(D.s.atP p).span]
    exact Submodule.mem_top
  obtain ⟨w, rfl⟩ := (Finsupp.mem_span_range_iff_exists_finsupp).1 hx
  rw [Finsupp.sum]
  induction w.support using Finset.induction_on with
  | empty => exact ⟨0, 0, zero_mem _, by simp⟩
  | insert i s hi ih =>
    obtain ⟨b₁, o₁, ho₁, h₁⟩ := ih
    obtain ⟨b₂, o₂, ho₂, h₂⟩ := exists_smul_sub_eq_gS_mul_mem_O D p (w i) i
    refine ⟨b₂ + b₁, o₂ + o₁, add_mem ho₂ ho₁, ?_⟩
    rw [Finset.sum_insert hi, map_add (f := _), mul_add, ← h₁, ← h₂]
    ring

private lemma exists_intValuation_sub_one_le_and_le_elsewhere (D : D7) (p : PlF D) (r : 𝓞 D.host.F) (hr : r ≠ 0) :
    ∃ t : 𝓞 D.host.F, p.intValuation (t - 1) ≤ p.intValuation r ∧
      ∀ q : PlF D, q ≠ p → q.intValuation t ≤ q.intValuation r := by
  classical
  have hfin : {q : PlF D | r ∈ q.asIdeal}.Finite := by
    have hI : Ideal.span {r} ≠ 0 := by
      simpa [Ideal.zero_eq_bot, Ideal.span_singleton_eq_bot] using hr
    refine (Ideal.finite_factors hI).subset ?_
    intro q hq
    simp only [Set.mem_ofPred_eq] at hq ⊢
    exact Ideal.dvd_iff_le.2 ((Ideal.span_singleton_le_iff_mem _).2 hq)
  obtain ⟨y, hy⟩ := IsDedekindDomain.exists_forall_sub_mem_ideal (s := insert p hfin.toFinset)
    (fun q : PlF D => q.asIdeal) (fun q => multiplicity q.asIdeal (Ideal.span {r}))
    (fun q _ => q.prime) (fun q _ q' _ hne h => hne (IsDedekindDomain.HeightOneSpectrum.ext h))
    (fun q => if (q : PlF D) = p then 1 else 0)
  refine ⟨y, ?_, ?_⟩
  · have h := hy p (Finset.mem_insert_self _ _)
    simp only [if_true] at h
    rw [p.intValuation_eq_exp_neg_multiplicity hr]
    exact (p.intValuation_le_pow_iff_mem _ _).2 h
  · intro q hq
    by_cases hqs : r ∈ q.asIdeal
    · have h := hy q (Finset.mem_insert_of_mem (hfin.mem_toFinset.2 hqs))
      simp only [hq, if_false, sub_zero] at h
      rw [q.intValuation_eq_exp_neg_multiplicity hr]
      exact (q.intValuation_le_pow_iff_mem _ _).2 h
    · rw [IsDedekindDomain.HeightOneSpectrum.intValuation_eq_one_iff.2 hqs]
      exact q.intValuation_le_one _

theorem exists_int_congr_gS : ∀ (D : D7) (p : PlF D) (c : (D.s.atP p).Ep), c ∈ (D.s.atP p).O → ∃ a : 𝓞 D.host.E, (∃ o ∈ (D.s.atP p).O, (D.s.atP p).ιE (a : D.host.E) - c = (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) * o) ∧ ∀ p' : PlF D, p' ≠ p → ∃ o ∈ (D.s.atP p').O, (D.s.atP p').ιE (a : D.host.E) = (D.s.atP p').ιE ((gS D : ℕ) : D.host.E) * o := by
  intro D p c hc
  classical
  have hg0 : ((gS D : ℕ) : D.host.E) ≠ 0 := Formalism.L2.SG.Pf.StabIntSh.gS_ne
  have hgN : (gS D : ℕ) ≠ 0 := by
    intro h
    apply hg0
    simp [h]

  obtain ⟨b₀, o₀, ho₀, h₀⟩ := exists_pow_mul_finset_sum_mem_subring D p c
  have halg : Algebra.IsAlgebraic ℤ D.host.E :=
    (IsFractionRing.comap_isAlgebraic_iff (A := ℤ) (K := ℚ) (C := D.host.E)).mpr inferInstance
  obtain ⟨d, hd0, hdint⟩ := (halg.isAlgebraic b₀).exists_integral_multiple
  set r : 𝓞 D.host.F := ((gS D : ℕ) : 𝓞 D.host.F) * ((d : ℤ) : 𝓞 D.host.F) with hr
  have hr0 : r ≠ 0 := mul_ne_zero (by exact_mod_cast hgN) (by exact_mod_cast hd0)

  obtain ⟨t, ht₁, ht₂⟩ := exists_intValuation_sub_one_le_and_le_elsewhere D p r hr0
  set a : D.host.E := algebraMap D.host.F D.host.E (t : D.host.F) * b₀ with ha
  have hιa : ∀ q : PlF D, (D.s.atP q).ιE a =
      algebraMap (D.s.atP q).Fp (D.s.atP q).Ep ((D.s.atP q).ιF (t : D.host.F)) * (D.s.atP q).ιE b₀ := by
    intro q
    rw [ha, map_mul, (D.s.atP q).compat]
  have hG : ∀ q : PlF D, (D.s.atP q).ιE ((gS D : ℕ) : D.host.E) ∈ (D.s.atP q).O := by
    intro q
    rw [map_natCast]
    exact natCast_mem _ _
  have hb₀ : (D.s.atP p).ιE b₀ ∈ (D.s.atP p).O := by
    have : (D.s.atP p).ιE b₀ = c - (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) * o₀ := by
      rw [← h₀]; ring
    rw [this]
    exact sub_mem hc (mul_mem (hG p) ho₀)
  have hdb : ∀ q : PlF D, (D.s.atP q).ιE ((d : ℤ) • b₀) ∈ (D.s.atP q).O :=
    fun q => Formalism.L2.SG.Pf.StabIntSh.lg_iota_int q ⟨(d : ℤ) • b₀, hdint⟩

  have hp : ∃ o ∈ (D.s.atP p).O, (D.s.atP p).ιE a - c = (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) * o := by
    have hle : p.valuation D.host.F ((t : D.host.F) - 1) ≤ p.valuation D.host.F ((gS D : ℕ) : D.host.F) := by
      have e1 : ((t : D.host.F) - 1) = algebraMap (𝓞 D.host.F) D.host.F (t - 1) := by simp
      have e2 : ((gS D : ℕ) : D.host.F) = algebraMap (𝓞 D.host.F) D.host.F ((gS D : ℕ) : 𝓞 D.host.F) := by simp
      rw [e1, e2, IsDedekindDomain.HeightOneSpectrum.valuation_of_algebraMap,
        IsDedekindDomain.HeightOneSpectrum.valuation_of_algebraMap]
      refine ht₁.trans ?_
      rw [hr, map_mul]
      exact mul_le_of_le_one_right' (p.intValuation_le_one _)
    obtain ⟨β, hβ, hβe⟩ := exists_integer_mul_eq_of_valuation_le D p _ _ (by exact_mod_cast hgN) hle
    refine ⟨algebraMap (D.s.atP p).Fp (D.s.atP p).Ep β * (D.s.atP p).ιE b₀ - o₀,
      sub_mem (mul_mem (_root_.PI.CntNotIntW.algMap_mem_O D p β hβ) hb₀) ho₀, ?_⟩
    have ht : (D.s.atP p).ιF (t : D.host.F) = (D.s.atP p).ιF ((gS D : ℕ) : D.host.F) * β + 1 := by
      rw [← hβe, map_sub, map_one]; ring
    rw [hιa p, ht, map_add (f := _), map_mul, map_one, map_natCast, map_natCast, map_natCast]
    have : c = (D.s.atP p).ιE b₀ + ((gS D : ℕ) : (D.s.atP p).Ep) * o₀ := by
      rw [← map_natCast (D.s.atP p).ιE, ← h₀]; ring
    rw [this]
    ring

  have hq : ∀ q : PlF D, q ≠ p →
      ∃ o ∈ (D.s.atP q).O, (D.s.atP q).ιE a = (D.s.atP q).ιE ((gS D : ℕ) : D.host.E) * o := by
    intro q hqp
    have hle : q.valuation D.host.F (t : D.host.F) ≤
        q.valuation D.host.F (((gS D : ℕ) : D.host.F) * ((d : ℤ) : D.host.F)) := by
      have e1 : (((gS D : ℕ) : D.host.F) * ((d : ℤ) : D.host.F)) = algebraMap (𝓞 D.host.F) D.host.F r := by
        simp [hr]
      rw [e1, IsDedekindDomain.HeightOneSpectrum.valuation_of_algebraMap,
        IsDedekindDomain.HeightOneSpectrum.valuation_of_algebraMap]
      exact ht₂ q hqp
    have hne : (((gS D : ℕ) : D.host.F) * ((d : ℤ) : D.host.F)) ≠ 0 :=
      mul_ne_zero (by exact_mod_cast hgN) (by exact_mod_cast hd0)
    obtain ⟨β, hβ, hβe⟩ := exists_integer_mul_eq_of_valuation_le D q _ _ hne hle
    refine ⟨algebraMap (D.s.atP q).Fp (D.s.atP q).Ep β * (D.s.atP q).ιE ((d : ℤ) • b₀),
      mul_mem (_root_.PI.CntNotIntW.algMap_mem_O D q β hβ) (hdb q), ?_⟩
    rw [hιa q, hβe, zsmul_eq_mul]
    simp only [map_mul, map_intCast, map_natCast]
    ring

  have hloc : ∀ q : PlF D, (D.s.atP q).ιE a ∈ (D.s.atP q).O := by
    intro q
    by_cases hqp : q = p
    · subst hqp
      obtain ⟨o, ho, he⟩ := hp
      have : (D.s.atP q).ιE a = c + (D.s.atP q).ιE ((gS D : ℕ) : D.host.E) * o := by
        rw [← he]; ring
      rw [this]
      exact add_mem hc (mul_mem (hG q) ho)
    · obtain ⟨o, ho, he⟩ := hq q hqp
      rw [he]
      exact mul_mem (hG q) ho
  have hint : IsIntegral ℤ a := Formalism.L2.SG.Pf.StabIntSh.lg_int_of_loc a hloc
  exact ⟨⟨a, hint⟩, hp, hq⟩

end GlobalTheory.CongrLoc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIntegerCongruentLocalModGOnePlace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIntegerCongruentLocalModGOnePlaceStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIntegerCongruentLocalModGOnePlaceStatement", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.LocalGroupInFamilyNontrivial\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIntegerCongruentLocalModGOnePlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LocClosed\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermOp\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.NGData\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RowsConc\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.PoincareConstantEq\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.HidaSetting\n\n"}
section -- clump:auto
@[expose] public section

open scoped Classical ENNReal
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.RowsConc Formalism.L2.SG.NGData Formalism.L2.SG.TermLoc GlobalTheory.Unfold
attribute [local instance] Formalism.BasicNotions.Host.cmStar


theorem _root_.GlobalTheory.T.exists_integer_congruent_local_mod_g_one_place : ∀ (D : D7) (p : PlF D) (c : (D.s.atP p).Ep), c ∈ (D.s.atP p).O → ∃ a : 𝓞 D.host.E, (∃ o ∈ (D.s.atP p).O, (D.s.atP p).ιE (a : D.host.E) - c = (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) * o) ∧ ∀ p' : PlF D, p' ≠ p → ∃ o ∈ (D.s.atP p').O, (D.s.atP p').ιE (a : D.host.E) = (D.s.atP p').ιE ((gS D : ℕ) : D.host.E) * o := by
  first | exact @GlobalTheory.CongrLoc.exists_int_congr_gS
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIntegerCongruentLocalModGOnePlaceStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ApproxGen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.ApproxGen", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LocClosed\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIntegerCongruentLocalModGOnePlaceStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Classical ENNReal
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.RowsConc Formalism.L2.SG.NGData Formalism.L2.SG.TermLoc GlobalTheory.Unfold
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.GlobalApprox

theorem bcP_osmul (D : D7) (q : PlF D) (a : 𝓞 D.host.E) (m : (VS D).V) :
    baseChange₂ D q (a • m) = (D.s.atP q).ιE (a : D.host.E) • baseChange₂ D q m := by
  rw [← IsScalarTower.algebraMap_smul D.host.E a m]
  exact baseChange_smul₂ (D := D) q _ m

theorem osmul_mem (D : D7) (Z : LocDat D) (q : PlF D) (M : LV D) (m : (VS D).V) (hm : m ∈ M)
    (o : (D.s.atP q).Ep) (ho : o ∈ (D.s.atP q).O) : o • baseChange₂ D q m ∈ lattice₂ D Z.M q M := by
  have hO : (Z.M q).L.O = (D.s.atP q).O := (Z.agree q).2.2.2.1
  have ho' : o ∈ (Z.M q).L.O := by rw [hO]; exact ho
  have hgen : baseChange₂ D q m ∈ lattice₂ D Z.M q M := Submodule.subset_span ⟨m, hm, rfl⟩
  exact (lattice₂ D Z.M q M).smul_mem (⟨o, ho'⟩ : (Z.M q).L.O) hgen

theorem approx_gen (D : D7) (Z : LocDat D) (p : PlF D) (M : LV D) (m : (VS D).V) (hm : m ∈ M)
    (c : (D.s.atP p).Ep) (hc : c ∈ (D.s.atP p).O) :
    ∃ l ∈ M, (∃ w ∈ lattice₂ D Z.M p M, baseChange₂ D p l - c • baseChange₂ D p m = (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • w) ∧
      ∀ p' : PlF D, p' ≠ p → ∃ w ∈ lattice₂ D Z.M p' M, baseChange₂ D p' l = (D.s.atP p').ιE ((gS D : ℕ) : D.host.E) • w := by
  obtain ⟨a, ⟨o, ho, hao⟩, hfar⟩ := GlobalTheory.T.exists_integer_congruent_local_mod_g_one_place D p c hc
  refine ⟨a • m, M.smul_mem a hm, ⟨o • baseChange₂ D p m, osmul_mem D Z p M m hm o ho, ?_⟩, ?_⟩
  · rw [bcP_osmul, ← sub_smul, hao, mul_smul]
  · intro p' hp'
    obtain ⟨o', ho', hao'⟩ := hfar p' hp'
    exact ⟨o' • baseChange₂ D p' m, osmul_mem D Z p' M m hm o' ho', by rw [bcP_osmul, hao', mul_smul]⟩

theorem smul_step {R V : Type*} [CommRing R] [AddCommGroup V] [Module R V] (g c : R) (b b' x w w' : V)
    (h : b - x = g • w) (h' : b' - c • b = g • w') : b' - c • x = g • (w' + c • w) := by
  rw [smul_add, ← h', smul_comm g c w, ← h, smul_sub]
  abel

theorem approx : ∀ (D : D7) (Z : LocDat D) (p : PlF D) (M : LV D) (x : Vp D p), x ∈ lattice₂ D Z.M p M → ∃ l ∈ M, (∃ w ∈ lattice₂ D Z.M p M, baseChange₂ D p l - x = (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • w) ∧ ∀ p' : PlF D, p' ≠ p → ∃ w ∈ lattice₂ D Z.M p' M, baseChange₂ D p' l = (D.s.atP p').ιE ((gS D : ℕ) : D.host.E) • w := by
  intro D Z p M x hx
  have hO : (Z.M p).L.O = (D.s.atP p).O := (Z.agree p).2.2.2.1
  have hx' : x ∈ Submodule.span (Z.M p).L.O (baseChange₂ D p '' (M : Set (VS D).V)) := hx
  clear hx
  induction hx' using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨m, hm, rfl⟩ := hy
    obtain ⟨l, hl, ⟨w, hw, hlw⟩, hfar⟩ := approx_gen D Z p M m hm 1 (Subring.one_mem _)
    rw [one_smul] at hlw
    exact ⟨l, hl, ⟨w, hw, hlw⟩, hfar⟩
  | zero =>
    refine ⟨0, M.zero_mem, ⟨0, (lattice₂ D Z.M p M).zero_mem, by simp⟩, fun p' _ => ?_⟩
    exact ⟨0, (lattice₂ D Z.M p' M).zero_mem, by simp⟩
  | add y z _ _ hy hz =>
    obtain ⟨l₁, hl₁, ⟨w₁, hw₁, e₁⟩, f₁⟩ := hy
    obtain ⟨l₂, hl₂, ⟨w₂, hw₂, e₂⟩, f₂⟩ := hz
    refine ⟨l₁ + l₂, M.add_mem hl₁ hl₂, ⟨w₁ + w₂, (lattice₂ D Z.M p M).add_mem hw₁ hw₂, ?_⟩, ?_⟩
    · rw [map_add (f := _), smul_add, ← e₁, ← e₂]
      abel
    · intro p' hp'
      obtain ⟨v₁, hv₁, g₁⟩ := f₁ p' hp'
      obtain ⟨v₂, hv₂, g₂⟩ := f₂ p' hp'
      exact ⟨v₁ + v₂, (lattice₂ D Z.M p' M).add_mem hv₁ hv₂, by rw [map_add (f := _), g₁, g₂, smul_add]⟩
  | smul r y _ hy =>
    obtain ⟨l, hl, ⟨w, hw, e⟩, _⟩ := hy
    have hr : (r : (D.s.atP p).Ep) ∈ (D.s.atP p).O := by rw [← hO]; exact r.2
    obtain ⟨l', hl', ⟨w', hw', e'⟩, hfar'⟩ := approx_gen D Z p M l hl (r : (D.s.atP p).Ep) hr
    refine ⟨l', hl', ⟨w' + r • w, (lattice₂ D Z.M p M).add_mem hw' ((lattice₂ D Z.M p M).smul_mem r hw), ?_⟩, hfar'⟩
    exact smul_step _ (r : (D.s.atP p).Ep) (baseChange₂ D p l) (baseChange₂ D p l') y w w' e e'

end GlobalTheory.GlobalApprox
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ApproxGen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.IoEqOfGraph =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.IoEqOfGraph", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LocClosed\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ApproxGen\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.InnerPreimageEqOfLocalInnerLatticeEq\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalInnerLatticeEqOfInnerPreimageEq\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocFacts\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfA\nimport Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.GlobalConditionOfLocalAgreement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.RowsConc Formalism.L2.SG.NGData Formalism.L2.SG.TermLoc GlobalTheory.Unfold

namespace GlobalTheory.IotaLocA

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : Formalism.BasicNotions.D7} (Zd : LocDat D) (p : PlF D)

alias hO := _root_.Formalism.L2.SG.Pf.LocFacts.lf_hO

theorem smul_mem_localLattice {Λ : Submodule (𝓞 D.host.E) (VS D).V} {a : (D.s.atP p).Ep} (ha : a ∈ (D.s.atP p).O)
    {v : Vp D p} (hv : v ∈ lattice₂ D Zd.M p Λ) : a • v ∈ lattice₂ D Zd.M p Λ :=
  (lattice₂ D Zd.M p Λ).smul_mem (⟨a, by rw [hO Zd p]; exact ha⟩ : (Zd.M p).L.O) hv

theorem baseChange_mem_localLattice {Λ : Submodule (𝓞 D.host.E) (VS D).V} {y : (VS D).V} (hy : y ∈ Λ) (p : PlF D) :
    baseChange₂ D p y ∈ lattice₂ D Zd.M p Λ := Submodule.subset_span ⟨y, hy, rfl⟩

theorem typed_data (g : Loc.SplitG (Zd.M p).L) (hg : (Zd.M p).split = some g) :
    ∃ sg, (D.s.atP p).split = some sg ∧ g.q = sg.q ∧ g.e = sg.e := by
  have hagree := (Zd.agree p).2.2.2.2.2
  rcases hs : (D.s.atP p).split with _ | sg
  · rw [hg, hs] at hagree; exact hagree.elim
  · rw [hg, hs] at hagree; exact ⟨sg, rfl, hagree.2, hagree.1⟩

theorem gS_typed (g : Loc.SplitG (Zd.M p).L) (hs : (Zd.M p).split = some g) :
    ∃ w ∈ (D.s.atP p).O, ∃ w' ∈ (D.s.atP p).O,
      (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) = algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (g.q : (D.s.atP p).Fp) * w ∧
        w * w' = 1 := by
  obtain ⟨sg, hsg, hq, -⟩ := typed_data Zd p g hs
  refine ⟨(D.s.atP p).ιE ((Formalism.MainNotions.BridgeLemma.oth p : ℕ) : D.host.E), ?_, (D.s.atP p).ιE (uP p : D.host.E),
    Formalism.L2.SG.Pf.LocFacts.unitPart_mem₂ p, ?_, ?_⟩
  · rw [map_natCast]; exact natCast_mem _ _
  · rw [hq, sg.q_eq, ← Formalism.MainNotions.BridgeLemma.gpart_mul_oth p, Formalism.MainNotions.BridgeLemma.gpart_some p sg hsg]
    simp only [Nat.cast_mul, map_mul, map_natCast]
  · rw [← map_mul, Formalism.MainNotions.BridgeLemma.unitAt_eq p]
    have h0 : ((Formalism.MainNotions.BridgeLemma.oth p : ℕ) : D.host.E) ≠ 0 := by
      exact_mod_cast Formalism.MainNotions.BridgeLemma.oth_ne_zero p
    push_cast
    rw [mul_inv_cancel₀ h0, map_one]

theorem smul_gS_mem {Λ : Submodule (𝓞 D.host.E) (VS D).V} {T T' : D.host.E} (F : LFlag (D.sp.Y 0) D.R.rS T)
    (F' : LFlag (D.sp.Y 0) D.R.rS T') {v : Vp D p} (hv : v ∈ lattice₂ D Zd.M p Λ) :
    (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • v ∈ lattice₂ D Zd.M p (NgX Λ (gS D) F F') := by
  induction hv using Submodule.span_induction with
  | mem v hv =>
    obtain ⟨y, hy, rfl⟩ := hv
    rw [← Formalism.L2.SG.TermLoc.baseChange_smul₂]
    refine Submodule.subset_span ⟨_, ?_, rfl⟩
    have h1 : ((gS D : ℕ) : D.host.E) • y = ((gS D : ℕ) : 𝓞 D.host.E) • y := by
      rw [← algebraMap_smul D.host.E ((gS D : ℕ) : 𝓞 D.host.E) y, map_natCast]
    rw [SetLike.mem_coe, h1]
    refine Submodule.mem_sup_left (Submodule.mem_sup_left ?_)
    exact Submodule.smul_mem_smul (Ideal.mem_span_singleton_self _) hy
  | zero => rw [smul_zero]; exact zero_mem _
  | add a b _ _ ha hb => rw [smul_add]; exact add_mem ha hb
  | smul o v _ hv =>
    have e : (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • (o • v) = o • ((D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • v) := by
      show _ • ((o : (D.s.atP p).Ep) • v) = (o : (D.s.atP p).Ep) • _
      rw [smul_smul, smul_smul, mul_comm]
    rw [e]; exact Submodule.smul_mem _ _ hv

theorem typed_q_mem (g : Loc.SplitG (Zd.M p).L) (hs : (Zd.M p).split = some g) {Λ : Submodule (𝓞 D.host.E) (VS D).V}
    {T T' : D.host.E} (F : LFlag (D.sp.Y 0) D.R.rS T) (F' : LFlag (D.sp.Y 0) D.R.rS T') {v : Vp D p}
    (hv : v ∈ lattice₂ D Zd.M p Λ) :
    algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (g.q : (D.s.atP p).Fp) • v ∈ lattice₂ D Zd.M p (NgX Λ (gS D) F F') := by
  obtain ⟨w, -, w', hw', he, hww⟩ := gS_typed Zd p g hs
  have e : algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (g.q : (D.s.atP p).Fp) • v =
      (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • (w' • v) := by
    rw [he, smul_smul, mul_assoc, hww, mul_one]
  rw [e]
  exact smul_gS_mem Zd p F F' (smul_mem_localLattice Zd p hw' hv)

theorem xi_mem {Λ : Submodule (𝓞 D.host.E) (VS D).V} {T : D.host.E} {F : LFlag (D.sp.Y 0) D.R.rS T} {x : (VS D).V}
    (hx : x ∈ XLam Λ F) : x ∈ Λ := (Submodule.mem_inf.1 hx).1

theorem isLattice_NgX {Λ : Submodule (𝓞 D.host.E) (VS D).V} (hΛ : Submodule.IsLattice D.host.E Λ) {T T' : D.host.E}
    (F : LFlag (D.sp.Y 0) D.R.rS T) (F' : LFlag (D.sp.Y 0) D.R.rS T') : Submodule.IsLattice D.host.E (NgX Λ (gS D) F F') := by
  have hle : NgX Λ (gS D) F F' ≤ Λ := by
    refine sup_le (sup_le ?_ inf_le_left) inf_le_left
    exact Submodule.smul_le_right
  refine ⟨hΛ.fg.of_le hle, ?_⟩
  intro s hs hli
  exact (LinearIndependent.iff_fractionRing _ _).mp hli
theorem NgX_dec {Λ : Submodule (𝓞 D.host.E) (VS D).V} {T T' : D.host.E} {F : LFlag (D.sp.Y 0) D.R.rS T}
    {F' : LFlag (D.sp.Y 0) D.R.rS T'} {x : (VS D).V} (hx : x ∈ NgX Λ (gS D) F F') :
    ∃ l ∈ Λ, ∃ ξ ∈ XLam Λ F, ∃ ξ' ∈ XLam Λ F', x = ((gS D : ℕ) : D.host.E) • l + ξ + ξ' := by
  obtain ⟨a, ha, ξ', hξ', rfl⟩ := Submodule.mem_sup.1 hx
  obtain ⟨b, hb, ξ, hξ, rfl⟩ := Submodule.mem_sup.1 ha
  rw [Submodule.ideal_span_singleton_smul, Submodule.mem_smul_pointwise_iff_exists] at hb
  obtain ⟨l, hl, rfl⟩ := hb
  refine ⟨l, hl, ξ, hξ, ξ', hξ', ?_⟩
  rw [← algebraMap_smul D.host.E ((gS D : ℕ) : 𝓞 D.host.E) l, map_natCast]

theorem bcP_X {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) (f : Fin (D.R.rS + 1) → Vp D p)
    (hf : f = fun a => frFac Zd.δ p a • baseChange₂ D p (frame G a)) {u : (VS D).V} (hu : u ∈ Xsp G) :
    baseChange₂ D p u ∈ (locH Zd p).X f := by
  refine Submodule.span_induction (p := fun u _ => baseChange₂ D p u ∈ (locH Zd p).X f) ?_ ?_ ?_ ?_ hu
  · rintro _ ⟨a, rfl⟩
    obtain ⟨c, hc⟩ := (Formalism.L2.SG.Pf.ScalarFramePf.isUnit_frFac Zd p a.castSucc).exists_left_inv
    have : baseChange₂ D p (G.fl.e a) = c • f a.castSucc := by
      rw [hf]; simp only; rw [smul_smul, hc, one_smul]; simp [frame, FlagG.fvec]
    rw [this]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩)
  · rw [map_zero]; exact zero_mem _
  · intro a b _ _ ha hb; rw [map_add]; exact add_mem ha hb
  · intro c a _ ha; rw [Formalism.L2.SG.TermLoc.baseChange_smul₂]; exact Submodule.smul_mem _ _ ha

theorem rep_of_lsub {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) {Λ₁ Λ₂ : LV D} (h : Lsub Λ₁ G = Lsub Λ₂ G)
    {l : (VS D).V} (hl : l ∈ Lrep Λ₁ G) : ∃ m ∈ Lrep Λ₂ G, l - m ∈ Xsp G := by
  have h1 : l ∈ Lsub Λ₁ G := ⟨Submodule.mem_sup_left hl, hl.2⟩
  rw [h] at h1
  obtain ⟨m, hm, x, hx, rfl⟩ := Submodule.mem_sup.1 h1.1
  exact ⟨m, hm, by simpa using hx⟩

theorem q_of_g (g : Loc.SplitG (Zd.M p).L) (hs : (Zd.M p).split = some g) {Λ : LV D} {l : (VS D).V} (hl : l ∈ Λ) :
    baseChange₂ D p (((gS D : ℕ) : D.host.E) • l) ∈ (locH Zd p).smulLat (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (g.q : (D.s.atP p).Fp)) (lattice₂ D Zd.M p Λ) := by
  obtain ⟨w, hw, w', -, he, -⟩ := gS_typed Zd p g hs
  rw [Formalism.L2.SG.TermLoc.baseChange_smul₂, he, mul_smul]
  exact Submodule.subset_span ⟨w • baseChange₂ D p l, smul_mem_localLattice Zd p hw (baseChange_mem_localLattice Zd hl p), rfl⟩

theorem q_le_NgX (g : Loc.SplitG (Zd.M p).L) (hs : (Zd.M p).split = some g) {Λ : LV D} {T T' : D.host.E}
    (F : LFlag (D.sp.Y 0) D.R.rS T) (F' : LFlag (D.sp.Y 0) D.R.rS T') {v : Vp D p}
    (hv : v ∈ (locH Zd p).smulLat (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (g.q : (D.s.atP p).Fp)) (lattice₂ D Zd.M p Λ)) :
    v ∈ lattice₂ D Zd.M p (NgX Λ (gS D) F F') := by
  refine (Submodule.span_le.2 ?_) hv
  rintro _ ⟨v, hv, rfl⟩
  exact typed_q_mem Zd p g hs F F' hv

theorem io_sub {F E : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [CommRing E] [Algebra F E]
    [TopologicalSpace E] [MeasurableSpace E] {M : Loc.Model F E} {V : Type} [AddCommGroup V] [Module E V]
    (H : Loc.HermSp M V) (g : Loc.SplitG M.L) {r : ℕ} (L₁ L₂ : Submodule M.L.O V) (f f' : Fin (r + 1) → V) (T T' : F)
    (hX : H.X f ≤ H.perp (H.X f)) (hX' : H.X f' ≤ H.perp (H.X f'))
    (h : ∀ x x' : V, x ∈ H.perp (H.X f) → x' ∈ H.perp (H.X f') → x ∈ L₁ → x' ∈ L₁ →
      x - x' ∈ H.smulLat (algebraMap F E (g.q : F)) L₁ →
      ∃ y ∈ L₂, ∃ y' ∈ L₂, x - y ∈ H.X f ∧ x' - y' ∈ H.X f' ∧ y - y' ∈ H.smulLat (algebraMap F E (g.q : F)) L₂) :
    H.iotaGraph g ⟨L₁, f, f', T, T'⟩ ⊆ H.iotaGraph g ⟨L₂, f, f', T, T'⟩ := by
  rintro _ ⟨x', x, a, b, c, rfl⟩
  obtain ⟨y, hy, y', hy', d1, d2, d3⟩ := h x x' x.2 x'.2 b a c
  have p1 : y ∈ H.perp (H.X f) := by
    have := sub_mem x.2 (hX d1)
    rwa [sub_sub_cancel] at this
  have p2 : y' ∈ H.perp (H.X f') := by
    have := sub_mem x'.2 (hX' d2)
    rwa [sub_sub_cancel] at this
  refine ⟨⟨y', p2⟩, ⟨y, p1⟩, hy', hy, d3, Prod.ext ?_ ?_⟩
  · exact (Submodule.Quotient.eq _).2 (by simpa using d2)
  · exact (Submodule.Quotient.eq _).2 (by simpa using d1)

theorem gsmul_q (g : Loc.SplitG (Zd.M p).L) (hs : (Zd.M p).split = some g) {Λ : LV D} {v : Vp D p} (hv : v ∈ lattice₂ D Zd.M p Λ) :
    (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • v ∈ (locH Zd p).smulLat (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (g.q : (D.s.atP p).Fp)) (lattice₂ D Zd.M p Λ) := by
  obtain ⟨w, hw, w', -, he, -⟩ := gS_typed Zd p g hs
  rw [he, mul_smul]
  exact Submodule.subset_span ⟨w • v, smul_mem_localLattice Zd p hw hv, rfl⟩

theorem g_mem_O : (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) ∈ (D.s.atP p).O := by
  rw [map_natCast]; exact natCast_mem _ _

theorem rep_loc {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) (f : Fin (D.R.rS + 1) → Vp D p)
    (hf : f = fun a => frFac Zd.δ p a • baseChange₂ D p (frame G a)) {Λ₁ Λ₂ : LV D} (h : Lsub Λ₁ G = Lsub Λ₂ G)
    {w : Vp D p} (hw : w ∈ lattice₂ D Zd.M p (Lrep Λ₁ G)) : ∃ v ∈ lattice₂ D Zd.M p Λ₂, w - v ∈ (locH Zd p).X f := by
  induction hw using Submodule.span_induction with
  | mem w hw =>
    obtain ⟨l, hl, rfl⟩ := hw
    obtain ⟨m, hm, hlm⟩ := rep_of_lsub G h hl
    exact ⟨baseChange₂ D p m, baseChange_mem_localLattice Zd (Submodule.mem_inf.1 hm).1 p, by rw [← map_sub]; exact bcP_X Zd p G f hf hlm⟩
  | zero => exact ⟨0, zero_mem _, by rw [sub_zero]; exact zero_mem _⟩
  | add a b _ _ ha hb =>
    obtain ⟨u, hu, e1⟩ := ha
    obtain ⟨v, hv, e2⟩ := hb
    exact ⟨u + v, add_mem hu hv, by rw [add_sub_add_comm]; exact add_mem e1 e2⟩
  | smul o a _ ha =>
    obtain ⟨u, hu, e1⟩ := ha
    refine ⟨o • u, Submodule.smul_mem _ _ hu, ?_⟩
    rw [← smul_sub]
    exact Submodule.smul_mem ((locH Zd p).X f) (o : (D.s.atP p).Ep) e1

theorem ngx_step (g : Loc.SplitG (Zd.M p).L) (hs : (Zd.M p).split = some g) {T T' : D.host.E}
    (F : LFlag (D.sp.Y 0) D.R.rS T) (F' : LFlag (D.sp.Y 0) D.R.rS T') {Λ₁ : LV D} (h₁ : Submodule.IsLattice D.host.E Λ₁)
    {x x' w w' : Vp D p} {l l' : (VS D).V} (hw : w ∈ lattice₂ D Zd.M p Λ₁) (hw' : w' ∈ lattice₂ D Zd.M p Λ₁)
    (e : baseChange₂ D p l - x = (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • w)
    (e' : baseChange₂ D p l' - x' = (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • w')
    (ho : ∀ q : PlF D, q ≠ p → baseChange₂ D q l ∈ lattice₂ D Zd.M q (NgX Λ₁ (gS D) F F'))
    (ho' : ∀ q : PlF D, q ≠ p → baseChange₂ D q l' ∈ lattice₂ D Zd.M q (NgX Λ₁ (gS D) F F'))
    (hd : x - x' ∈ lattice₂ D Zd.M p (NgX Λ₁ (gS D) F F')) : l - l' ∈ NgX Λ₁ (gS D) F F' := by
  have hp : baseChange₂ D p (l - l') ∈ lattice₂ D Zd.M p (NgX Λ₁ (gS D) F F') := by
    have e3 : baseChange₂ D p (l - l') = (x - x') + (baseChange₂ D p l - x) - (baseChange₂ D p l' - x') := by rw [map_sub]; abel
    have k1 := smul_gS_mem Zd p F F' hw
    have k2 := smul_gS_mem Zd p F F' hw'
    rw [← e] at k1
    rw [← e'] at k2
    rw [e3]
    exact sub_mem (add_mem hd k1) k2
  refine GlobalTheory.Unfold.LsubG.mem_of_local Zd _ (isLattice_NgX h₁ F F') _ fun q => ?_
  by_cases hq : q = p
  · rw [hq]; exact hp
  · rw [map_sub]; exact sub_mem (ho q hq) (ho' q hq)

theorem off_step {T T' : D.host.E} (F : LFlag (D.sp.Y 0) D.R.rS T) (F' : LFlag (D.sp.Y 0) D.R.rS T') {Λ₁ N : LV D} (hN : N ≤ Λ₁)
    {v : Vp D p} (h : ∃ w ∈ lattice₂ D Zd.M p N, v = (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • w) :
    v ∈ lattice₂ D Zd.M p (NgX Λ₁ (gS D) F F') := by
  obtain ⟨u, hu, rfl⟩ := h
  exact smul_gS_mem Zd p F F' (_root_.Formalism.L2.SG.Pf.BBTie.latP_mono Zd p hN hu)

theorem alg1 {R V : Type} [CommRing R] [AddCommGroup V] [Module R V] (c : R) (x a b s w v : V) (e : a - x = c • w) :
    x - (b - s - c • v) = (a - b + s) - c • (w - v) ∧ x - (b + s - c • v) = (a - b - s) - c • (w - v) := by
  have : x = a - c • w := by rw [← e]; abel
  subst this
  constructor <;> (rw [smul_sub]; abel)


theorem place_A (g : Loc.SplitG (Zd.M p).L) (hs : (Zd.M p).split = some g) {T T' : D.host.E}
    (F : LFlag (D.sp.Y 0) D.R.rS T) (F' : LFlag (D.sp.Y 0) D.R.rS T') (f f' : Fin (D.R.rS + 1) → Vp D p)
    (hA : f = fun a => frFac Zd.δ p a • baseChange₂ D p (frame F a)) (hB : f' = fun a => frFac Zd.δ p a • baseChange₂ D p (frame F' a))
    {Λ₁ Λ₂ : LV D} (h₁ : Submodule.IsLattice D.host.E Λ₁) (hL : Lsub Λ₁ F = Lsub Λ₂ F) (hL' : Lsub Λ₁ F' = Lsub Λ₂ F')
    (hG : ∀ l' ∈ Lrep Λ₁ F', ∀ l ∈ Lrep Λ₁ F, l - l' ∈ NgX Λ₁ (gS D) F F' →
      ∃ m' ∈ Lrep Λ₂ F', ∃ m ∈ Lrep Λ₂ F, l' - m' ∈ Xsp F' ∧ l - m ∈ Xsp F ∧ m - m' ∈ NgX Λ₂ (gS D) F F')
    {x x' : Vp D p} (hx : x ∈ lattice₂ D Zd.M p (Lrep Λ₁ F)) (hx' : x' ∈ lattice₂ D Zd.M p (Lrep Λ₁ F'))
    (hd : x - x' ∈ (locH Zd p).smulLat (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (g.q : (D.s.atP p).Fp)) (lattice₂ D Zd.M p Λ₁)) :
    ∃ y ∈ lattice₂ D Zd.M p Λ₂, ∃ y' ∈ lattice₂ D Zd.M p Λ₂, x - y ∈ (locH Zd p).X f ∧ x' - y' ∈ (locH Zd p).X f' ∧
      y - y' ∈ (locH Zd p).smulLat (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (g.q : (D.s.atP p).Fp)) (lattice₂ D Zd.M p Λ₂) := by
  obtain ⟨l, hl, ⟨w, hw, e⟩, ho⟩ := GlobalTheory.GlobalApprox.approx D Zd p _ x hx
  obtain ⟨l', hl', ⟨w', hw', e'⟩, ho'⟩ := GlobalTheory.GlobalApprox.approx D Zd p _ x' hx'
  have le1 : Lrep Λ₁ F ≤ Λ₁ := inf_le_left
  have le2 : Lrep Λ₁ F' ≤ Λ₁ := inf_le_left
  have hN : l - l' ∈ NgX Λ₁ (gS D) F F' :=
    ngx_step Zd p g hs F F' h₁ (_root_.Formalism.L2.SG.Pf.BBTie.latP_mono Zd p le1 hw) (_root_.Formalism.L2.SG.Pf.BBTie.latP_mono Zd p le2 hw') e e'
      (fun q hq => off_step Zd q F F' le1 (ho q hq)) (fun q hq => off_step Zd q F F' le2 (ho' q hq))
      (q_le_NgX Zd p g hs F F' hd)
  obtain ⟨m', hm', m, hm, d', d, hN₂⟩ := hG l' hl' l hl hN
  obtain ⟨lam, hlam, ξ, hξ, ξ', hξ', heq⟩ := NgX_dec hN₂
  have hξX : ξ ∈ Xsp F := (Submodule.mem_inf.1 hξ).2
  have hξX' : ξ' ∈ Xsp F' := (Submodule.mem_inf.1 hξ').2
  obtain ⟨v, hv, c⟩ := rep_loc Zd p F f hA hL hw
  obtain ⟨v', hv', c'⟩ := rep_loc Zd p F' f' hB hL' hw'
  have hvv : m - ξ - (m' + ξ') = ((gS D : ℕ) : D.host.E) • lam := by
    rw [show m - ξ - (m' + ξ') = (m - m') - ξ - ξ' by abel, heq]; abel
  refine ⟨baseChange₂ D p (m - ξ) - (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • v,
    sub_mem (baseChange_mem_localLattice Zd (sub_mem (Submodule.mem_inf.1 hm).1 (xi_mem hξ)) p) (smul_mem_localLattice Zd p (g_mem_O p) hv),
    baseChange₂ D p (m' + ξ') - (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • v',
    sub_mem (baseChange_mem_localLattice Zd (add_mem (Submodule.mem_inf.1 hm').1 (xi_mem hξ')) p) (smul_mem_localLattice Zd p (g_mem_O p) hv'), ?_, ?_, ?_⟩
  · have e4 : x - (baseChange₂ D p (m - ξ) - (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • v) =
        baseChange₂ D p ((l - m) + ξ) - (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • (w - v) := by
      rw [map_sub, map_add (f := _), map_sub]; exact (alg1 _ _ _ _ _ _ _ e).1
    rw [e4]
    exact sub_mem (bcP_X Zd p F f hA (add_mem d hξX)) (Submodule.smul_mem _ _ c)
  · have e4 : x' - (baseChange₂ D p (m' + ξ') - (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • v') =
        baseChange₂ D p ((l' - m') - ξ') - (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • (w' - v') := by
      rw [map_add (f := _), map_sub, map_sub]; exact (alg1 _ _ _ _ _ _ _ e').2
    rw [e4]
    exact sub_mem (bcP_X Zd p F' f' hB (sub_mem d' hξX')) (Submodule.smul_mem _ _ c')
  · have e4 : (baseChange₂ D p (m - ξ) - (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • v) - (baseChange₂ D p (m' + ξ') - (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • v') =
        baseChange₂ D p (m - ξ - (m' + ξ')) - (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • v + (D.s.atP p).ιE ((gS D : ℕ) : D.host.E) • v' := by
      rw [map_sub (baseChange₂ D p) (m - ξ) (m' + ξ')]; abel
    rw [e4, hvv]
    exact add_mem (sub_mem (q_of_g Zd p g hs hlam) (gsmul_q Zd p g hs hv)) (gsmul_q Zd p g hs hv')

theorem graph_reps {T T' : D.host.E} (F : LFlag (D.sp.Y 0) D.R.rS T) (F' : LFlag (D.sp.Y 0) D.R.rS T') {Λ₁ Λ₂ : LV D}
    (h : (gdat F F' Λ₁).2.2 = (gdat F F' Λ₂).2.2) :
    ∀ l' ∈ Lrep Λ₁ F', ∀ l ∈ Lrep Λ₁ F, l - l' ∈ NgX Λ₁ (gS D) F F' →
      ∃ m' ∈ Lrep Λ₂ F', ∃ m ∈ Lrep Λ₂ F, l' - m' ∈ Xsp F' ∧ l - m ∈ Xsp F ∧ m - m' ∈ NgX Λ₂ (gS D) F F' := by
  intro l' hl' l hl hN
  have k : (l', l) ∈ (gdat F F' Λ₁).2.2 :=
    ⟨l', hl', l, hl, by rw [sub_self]; exact zero_mem _, by rw [sub_self]; exact zero_mem _, hN⟩
  rw [h] at k
  exact k

theorem io_le (Z : LocDat D) (FP : ∀ p : PlF D, LocNG.FPair (locH Z p) D.R.rS) (Tn T'n : ℕ) (F : LFlag (D.sp.Y 0) D.R.rS (Tn : D.host.E)) (F' : LFlag (D.sp.Y 0) D.R.rS (T'n : D.host.E)) (hB : Based Z FP Tn T'n F F') (Λ₁ Λ₂ : LV D) (h₁ : Submodule.IsLattice D.host.E Λ₁) (hL : Lsub Λ₁ F = Lsub Λ₂ F) (hL' : Lsub Λ₁ F' = Lsub Λ₂ F') (h : (gdat F F' Λ₁).2.2 = (gdat F F' Λ₂).2.2) (p : PlF D) (g : Loc.SplitG (Z.M p).L) (hs : (Z.M p).split = some g) :
    (locH Z p).iotaGraph g ⟨lattice₂ D Z.M p Λ₁, (FP p).A.f, (FP p).B.f, (FP p).A.T, (FP p).B.T⟩ ⊆ (locH Z p).iotaGraph g ⟨lattice₂ D Z.M p Λ₂, (FP p).A.f, (FP p).B.f, (FP p).A.T, (FP p).B.T⟩ :=
  io_sub (locH Z p) g _ _ _ _ _ _ (GlobalTheory.Unfold.InnerLoc.X_le_perp Z p (FP p).A) (GlobalTheory.Unfold.InnerLoc.X_le_perp Z p (FP p).B)
    fun x x' a b c d e => place_A Z p g hs F F' (FP p).A.f (FP p).B.f (hB p).1 (hB p).2.1 h₁ hL hL' (graph_reps F F' h)
      (GlobalTheory.Unfold.InnerLoc.mem_localLattice_lrep Z p F Λ₁ h₁ (FP p).A (hB p).1 x c a)
      (GlobalTheory.Unfold.InnerLoc.mem_localLattice_lrep Z p F' Λ₁ h₁ (FP p).B (hB p).2.1 x' d b) e

theorem io_eq_of_graph : ∀ (D : D7) (Z : LocDat D) (FP : ∀ p : PlF D, LocNG.FPair (locH Z p) D.R.rS) (Tn T'n : ℕ) (F : LFlag (D.sp.Y 0) D.R.rS (Tn : D.host.E)) (F' : LFlag (D.sp.Y 0) D.R.rS (T'n : D.host.E)), Based Z FP Tn T'n F F' → ∀ Λ₁ Λ₂ : LV D, Submodule.IsLattice D.host.E Λ₁ → Submodule.IsLattice D.host.E Λ₂ → Lsub Λ₁ F = Lsub Λ₂ F → Lsub Λ₁ F' = Lsub Λ₂ F' → (gdat F F' Λ₁).2.2 = (gdat F F' Λ₂).2.2 → ∀ (p : PlF D) (g : Loc.SplitG (Z.M p).L), (Z.M p).split = some g → (locH Z p).iotaGraph g ⟨lattice₂ D Z.M p Λ₁, (FP p).A.f, (FP p).B.f, (FP p).A.T, (FP p).B.T⟩ = (locH Z p).iotaGraph g ⟨lattice₂ D Z.M p Λ₂, (FP p).A.f, (FP p).B.f, (FP p).A.T, (FP p).B.T⟩ := by
  intro D Z FP Tn T'n F F' hB Λ₁ Λ₂ h₁ h₂ hL hL' h p g hs
  exact Set.Subset.antisymm (io_le Z FP Tn T'n F F' hB Λ₁ Λ₂ h₁ hL hL' h p g hs)
    (io_le Z FP Tn T'n F F' hB Λ₂ Λ₁ h₂ hL.symm hL'.symm h.symm p g hs)

end GlobalTheory.IotaLocA
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.IoEqOfGraph =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalIdentificationEqOfGlobalLatticesEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalIdentificationEqOfGlobalLatticesEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LocClosed\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.IoEqOfGraph\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Classical ENNReal
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.RowsConc Formalism.L2.SG.NGData Formalism.L2.SG.TermLoc GlobalTheory.Unfold
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.Unfold.IotaLocal

end GlobalTheory.Unfold.IotaLocal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalIdentificationEqOfGlobalLatticesEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalIdentificationEqOfGlobalLatticesEqStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalIdentificationEqOfGlobalLatticesEqStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LocClosed\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalIdentificationEqOfGlobalLatticesEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Classical ENNReal
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.RowsConc Formalism.L2.SG.NGData Formalism.L2.SG.TermLoc GlobalTheory.Unfold
attribute [local instance] Formalism.BasicNotions.Host.cmStar


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalIdentificationEqOfGlobalLatticesEqStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalInnerLatticeEqOfInnerPreimageEqStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalInnerLatticeEqOfInnerPreimageEqStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LocClosed\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalInnerLatticeEqOfInnerPreimageEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Classical ENNReal
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.RowsConc Formalism.L2.SG.NGData Formalism.L2.SG.TermLoc GlobalTheory.Unfold
attribute [local instance] Formalism.BasicNotions.Host.cmStar


theorem _root_.GlobalTheory.T.localInnerLattice_eq_of_innerPreimage_eq : ∀ (D : D7) (Z : LocDat D) (p : PlF D) {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) (Fr : LocNG.FrameD (locH Z p) D.R.rS), Fr.f = (fun a => frFac Z.δ p a • baseChange₂ D p (frame G a)) → ∀ Λ₁ Λ₂ : LV D, Submodule.IsLattice D.host.E Λ₁ → Submodule.IsLattice D.host.E Λ₂ → Lsub Λ₁ G = Lsub Λ₂ G → (locH Z p).Lset (lattice₂ D Z.M p Λ₁) Fr.f = (locH Z p).Lset (lattice₂ D Z.M p Λ₂) Fr.f := by
  first | exact @GlobalTheory.Unfold.InnerLoc.lset_eq_of_lsub_eq
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalInnerLatticeEqOfInnerPreimageEqStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.NonGenericDatumLatticeEqPerpQuotientImageTerm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.NonGenericDatumLatticeEqPerpQuotientImageTerm", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.IsTermOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.IsUnimodularOfLocalStandardLatticeTranslates\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfA\n\n"}
section -- clump:auto
@[expose] public section

open ValuativeRel Formalism.MainNotions.S Formalism.MainNotions.S.Loc Formalism.MainNotions.S.LocNG

noncomputable section

namespace GlobalTheory.InnerRead

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
  {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E]
  {M : Model F E} {V : Type} [AddCommGroup V] [Module E V] (H : HermSp M V)

def hL (y : V) : V →+ E := ⟨⟨fun x => H.h x y, H.h_zero_left y⟩, fun x x' => H.h_add_left x x' y⟩

lemma h_zero_right (x : V) : H.h x 0 = 0 := by
  have := GlobalTheory.Unfold.StdDual.h_smul_right H 0 x 0
  simpa using this

lemma mkW_eq {r : ℕ} {f : Fin (r + 1) → V} (x y : ↥(H.perp (H.X f))) (h : (x : V) - y ∈ H.X f) :
    H.mkW f x = H.mkW f y := by
  unfold HermSp.mkW
  rw [Submodule.mkQ_apply, Submodule.mkQ_apply, Submodule.Quotient.eq]
  simpa using h

def Good (X : Submodule E V) (u : V ≃ₗ[E] V) : Prop :=
  IsUnitary H u ∧ ∀ v ∈ H.perp X, u v - v ∈ X

lemma good_map_le {X : Submodule E V} {u : V ≃ₗ[E] V} (hX : X ≤ H.perp X) (hu : Good H X u) :
    ∀ x ∈ X, u x ∈ X := by
  intro x hx
  have := X.add_mem (hu.2 x (hX hx)) hx
  simpa using this

lemma good_perp {X : Submodule E V} {u : V ≃ₗ[E] V} (hX : X ≤ H.perp X) (hu : Good H X u) :
    ∀ v ∈ H.perp X, u v ∈ H.perp X := by
  intro v hv
  have := (H.perp X).add_mem (hX (hu.2 v hv)) hv
  simpa using this

lemma good_inv {X : Submodule E V} {u : V ≃ₗ[E] V} (hX : X ≤ H.perp X) (hu : Good H X u) :
    Good H X u⁻¹ := by
  refine ⟨fun x y => ?_, fun v hv => ?_⟩
  · have := hu.1 (u.symm x) (u.symm y)
    simp only [LinearEquiv.apply_symm_apply] at this
    exact this.symm
  have hv' : u.symm v ∈ H.perp X := by
    intro x hx
    have := hu.1 (u.symm v) x
    rw [LinearEquiv.apply_symm_apply] at this
    rw [← this]
    exact hv _ (good_map_le H hX hu x hx)
  have := X.neg_mem (hu.2 _ hv')
  rw [LinearEquiv.apply_symm_apply, neg_sub] at this
  exact this

lemma good_mul {X : Submodule E V} {u w : V ≃ₗ[E] V} (hX : X ≤ H.perp X) (hu : Good H X u)
    (hw : Good H X w) : Good H X (u * w) := by
  refine ⟨fun x y => ?_, fun v hv => ?_⟩
  · change H.h (u (w x)) (u (w y)) = _
    rw [hu.1, hw.1]
  · change u (w v) - v ∈ X
    have e : u (w v) - v = (u (w v) - w v) + (w v - v) := by abel
    rw [e]
    exact X.add_mem (hu.2 _ (good_perp H hX hw v hv)) (hw.2 v hv)

variable {H} {r : ℕ} (Fr : FrameD H r)

lemma h_ee (a b : Fin r) : H.h (Fr.e a) (Fr.e b) = 0 :=
  Fr.h_iso _ _ (Or.inl (Fin.castSucc_ne_last a))

lemma h_e_es (a b : Fin r) : H.h (Fr.e a) (Fr.es b) = if a = b then 1 else 0 := Fr.h_es a b

lemma h_es_e (a b : Fin r) : H.h (Fr.es a) (Fr.e b) = if b = a then 1 else 0 := by
  rw [H.h_herm (Fr.e b) (Fr.es a), h_e_es]
  split_ifs <;> simp

lemma mem_perp_iff (v : V) : v ∈ H.perp (H.X Fr.f) ↔ ∀ a, H.h v (Fr.e a) = 0 := by
  constructor
  · intro hv a
    exact hv _ (Submodule.subset_span ⟨a, rfl⟩)
  · intro h x hx
    induction hx using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨a, rfl⟩ := hx
      exact h a
    | zero => exact h_zero_right H v
    | add x y _ _ hx hy => rw [GlobalTheory.Unfold.StdDual.h_add_right, hx, hy, add_zero]
    | smul c x _ hx => rw [GlobalTheory.Unfold.StdDual.h_smul_right, hx, mul_zero]

lemma X_le_perp : H.X Fr.f ≤ H.perp (H.X Fr.f) := by
  intro x hx
  rw [mem_perp_iff]
  intro a
  induction hx using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨b, rfl⟩ := hx
    exact h_ee Fr b a
  | zero => exact H.h_zero_left _
  | add x y _ _ hx hy => rw [H.h_add_left, hx, hy, add_zero]
  | smul c x _ hx => rw [H.h_smul_left, hx, mul_zero]

lemma prF_e (v : V) (b : Fin r) : H.h (Fr.prF v) (Fr.e b) = 0 := by
  unfold FrameD.prF
  rw [GlobalTheory.Unfold.StdDual.h_sub_left, GlobalTheory.Unfold.StdDual.h_sub_left, Formalism.L2.SG.Pf.ScalarFramePf.h_sum_left, Formalism.L2.SG.Pf.ScalarFramePf.h_sum_left]
  simp only [H.h_smul_left, h_ee, h_es_e, mul_zero, Finset.sum_const_zero, mul_ite, mul_one,
    Finset.sum_ite_eq, Finset.mem_univ, if_true]
  ring

lemma prF_es (v : V) (b : Fin r) : H.h (Fr.prF v) (Fr.es b) = 0 := by
  unfold FrameD.prF
  rw [GlobalTheory.Unfold.StdDual.h_sub_left, GlobalTheory.Unfold.StdDual.h_sub_left, Formalism.L2.SG.Pf.ScalarFramePf.h_sum_left, Formalism.L2.SG.Pf.ScalarFramePf.h_sum_left]
  simp only [H.h_smul_left, h_e_es, Fr.h_ss, mul_zero, Finset.sum_const_zero, mul_ite, mul_one,
    Finset.sum_ite_eq', Finset.mem_univ, if_true]
  ring

lemma prF_add (x y : V) : Fr.prF (x + y) = Fr.prF x + Fr.prF y := by
  unfold FrameD.prF
  simp only [H.h_add_left, add_smul, Finset.sum_add_distrib]
  abel

lemma prF_smul (c : E) (x : V) : Fr.prF (c • x) = c • Fr.prF x := by
  unfold FrameD.prF
  simp only [smul_sub, Finset.smul_sum, smul_smul, H.h_smul_left]

lemma prF_of (v : V) (h1 : ∀ a, H.h v (Fr.es a) = 0) (h2 : ∀ a, H.h v (Fr.e a) = 0) :
    Fr.prF v = v := by
  unfold FrameD.prF
  simp [h1, h2]

lemma sub_prF_mem (v : V) (hv : v ∈ H.perp (H.X Fr.f)) : v - Fr.prF v ∈ H.X Fr.f := by
  have h2 := (mem_perp_iff Fr v).1 hv
  have e : v - Fr.prF v = ∑ a, H.h v (Fr.es a) • Fr.e a + ∑ a, H.h v (Fr.e a) • Fr.es a := by
    unfold FrameD.prF; abel
  rw [e]
  simp only [h2, zero_smul, Finset.sum_const_zero, add_zero]
  exact Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩)

theorem Lset_LamStd (L : Submodule M.L.O (H.Wb Fr.f)) :
    H.Lset (Fr.LamStd L) Fr.f = (L : Set (H.Wb Fr.f)) := by
  ext w
  constructor
  · rintro ⟨x, hxΛ, rfl⟩
    have hQ : ∀ v ∈ Fr.LamStd L, H.mkW Fr.f ⟨Fr.prF v, GlobalTheory.Unfold.StdDual.prF_mem_perp Fr v⟩ ∈ L := by
      intro v hv
      induction hv using Submodule.span_induction with
      | mem v hv =>
        obtain ⟨-, -, w, hw, hwL⟩ := hv
        have e : (⟨Fr.prF v, GlobalTheory.Unfold.StdDual.prF_mem_perp Fr v⟩ : ↥(H.perp (H.X Fr.f))) = w := Subtype.ext hw.symm
        rw [e]; exact hwL
      | zero =>
        have e : (⟨Fr.prF 0, GlobalTheory.Unfold.StdDual.prF_mem_perp Fr 0⟩ : ↥(H.perp (H.X Fr.f))) = 0 :=
          Subtype.ext (by simpa using prF_smul Fr 0 0)
        rw [e, map_zero]; exact L.zero_mem
      | add x y _ _ hx hy =>
        have e : (⟨Fr.prF (x + y), GlobalTheory.Unfold.StdDual.prF_mem_perp Fr _⟩ : ↥(H.perp (H.X Fr.f))) =
            ⟨Fr.prF x, GlobalTheory.Unfold.StdDual.prF_mem_perp Fr x⟩ + ⟨Fr.prF y, GlobalTheory.Unfold.StdDual.prF_mem_perp Fr y⟩ := Subtype.ext (prF_add Fr x y)
        rw [e, map_add (f := _)]; exact L.add_mem hx hy
      | smul c x _ hx =>
        have e : (⟨Fr.prF (c • x), GlobalTheory.Unfold.StdDual.prF_mem_perp Fr _⟩ : ↥(H.perp (H.X Fr.f))) =
            (c : E) • ⟨Fr.prF x, GlobalTheory.Unfold.StdDual.prF_mem_perp Fr x⟩ := Subtype.ext (prF_smul Fr (c : E) x)
        rw [e, map_smul]
        exact L.smul_mem c hx
    have := hQ x hxΛ
    rwa [mkW_eq H ⟨Fr.prF x, GlobalTheory.Unfold.StdDual.prF_mem_perp Fr x⟩ x (by
      have := (H.X Fr.f).neg_mem (sub_prF_mem Fr x x.2); simpa using this)] at this
  · intro hw
    obtain ⟨x0, rfl⟩ := Submodule.mkQ_surjective _ w
    refine ⟨⟨Fr.prF x0, GlobalTheory.Unfold.StdDual.prF_mem_perp Fr x0⟩, ?_, ?_⟩
    · have hp : Fr.prF (Fr.prF x0) = Fr.prF x0 := prF_of Fr _ (prF_es Fr x0) (prF_e Fr x0)
      refine Submodule.subset_span ⟨fun a => ?_, fun a => ?_, ⟨Fr.prF x0, GlobalTheory.Unfold.StdDual.prF_mem_perp Fr x0⟩, hp.symm, ?_⟩
      · change H.h (Fr.prF x0) (Fr.es a) ∈ _; rw [prF_es]; exact zero_mem _
      · change H.h (Fr.prF x0) (Fr.e a) ∈ _; rw [prF_e]; exact zero_mem _
      · rw [mkW_eq H ⟨Fr.prF x0, GlobalTheory.Unfold.StdDual.prF_mem_perp Fr x0⟩ x0 (by
          have := (H.X Fr.f).neg_mem (sub_prF_mem Fr x0 x0.2); simpa using this)]
        exact hw
    · have := (H.X Fr.f).neg_mem (sub_prF_mem Fr x0 x0.2)
      show H.mkW Fr.f _ = H.mkW Fr.f x0
      exact mkW_eq H _ _ (by simpa using this)

lemma good_of_mem_N {g : V ≃ₗ[E] V} (hg : g ∈ Fr.N) : Good H (H.X Fr.f) g := by
  have hX := X_le_perp Fr
  unfold FrameD.N at hg
  induction hg using Subgroup.closure_induction with
  | mem x hx => exact ⟨hx.1, hx.2.2⟩
  | one => exact ⟨fun x y => rfl, fun v _ => by simp⟩
  | mul x y _ _ hx hy => exact good_mul H hX hx hy
  | inv x _ hx => exact good_inv H hX hx

lemma mem_img (u : V ≃ₗ[E] V) (Λ : Submodule M.L.O V) (x : V) :
    x ∈ img u Λ ↔ ∃ y ∈ Λ, u y = x := by
  unfold img
  rw [Submodule.mem_map]
  rfl

theorem Lset_img {u : V ≃ₗ[E] V} (hu : u ∈ Fr.N) (Λ : Submodule M.L.O V) :
    H.Lset (img u Λ) Fr.f = H.Lset Λ Fr.f := by
  have hX := X_le_perp Fr
  have g1 := good_of_mem_N Fr hu
  have g2 := good_inv H hX g1
  ext w
  constructor
  · rintro ⟨x, hxΛ, rfl⟩
    obtain ⟨y, hy, hyx⟩ := (mem_img u Λ x).1 hxΛ
    have hyp : y ∈ H.perp (H.X Fr.f) := by
      have := good_perp H hX g2 (x : V) x.2
      rw [← hyx] at this
      change u.symm (u y) ∈ _ at this
      rwa [LinearEquiv.symm_apply_apply] at this
    refine ⟨⟨y, hyp⟩, hy, (mkW_eq H _ _ ?_).symm⟩
    change (x : V) - y ∈ _
    rw [← hyx]
    exact g1.2 y hyp
  · rintro ⟨y, hyΛ, rfl⟩
    exact ⟨⟨u y, good_perp H hX g1 y y.2⟩, (mem_img u Λ _).2 ⟨y, hyΛ, rfl⟩,
      mkW_eq H _ _ (g1.2 y y.2)⟩

theorem datum_eq_Lset : ∀ {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E] {M : Loc.Model F E} {V : Type} [AddCommGroup V] [Module E V] (H : Loc.HermSp M V) (r : ℕ) (P : LocNG.FPair H r) (d : LocNG.Datum P) (τ : Loc.Term V M r), LocNG.IsTermOver P d τ → (d.L : Set (H.Wb P.A.f)) = H.Lset τ.abelian₂ P.A.f ∧ (d.L' : Set (H.Wb P.B.f)) = H.Lset τ.abelian₂ P.B.f := by
  intro F _ _ _ E _ _ _ _ M V _ _ H r P d τ hτ
  obtain ⟨-, -, ⟨n, hn, -, hΛ⟩, ⟨n', hn', -, hΛ'⟩, -⟩ := hτ
  constructor
  · rw [hΛ, Lset_img P.A hn, Lset_LamStd]
  · rw [hΛ', Lset_img P.B hn', Lset_LamStd]

end GlobalTheory.InnerRead
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.NonGenericDatumLatticeEqPerpQuotientImageTerm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalInnerDatumEqIffLocalDataEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalInnerDatumEqIffLocalDataEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LocClosed\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalGraphEqOfLocalIotaAgreeStatement\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.InnerPreimageEqOfLocalInnerLatticeEqStatement\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalIdentificationEqOfGlobalLatticesEqStatement\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalInnerLatticeEqOfInnerPreimageEqStatement\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.IsTermOver\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.NonGenericDatumLatticeEqPerpQuotientImageTerm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Classical ENNReal
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.RowsConc Formalism.L2.SG.NGData Formalism.L2.SG.TermLoc GlobalTheory.Unfold
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.Unfold.InnerDict

theorem lset_eq_of_lsub_eq : ∀ (D : D7) (Z : LocDat D) (p : PlF D) {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) (Fr : LocNG.FrameD (locH Z p) D.R.rS), Fr.f = (fun a => frFac Z.δ p a • baseChange₂ D p (frame G a)) → ∀ Λ₁ Λ₂ : LV D, Submodule.IsLattice D.host.E Λ₁ → Submodule.IsLattice D.host.E Λ₂ → Lsub Λ₁ G = Lsub Λ₂ G → (locH Z p).Lset (lattice₂ D Z.M p Λ₁) Fr.f = (locH Z p).Lset (lattice₂ D Z.M p Λ₂) Fr.f := GlobalTheory.T.localInnerLattice_eq_of_innerPreimage_eq

theorem lsub_eq_of_lset_eq : ∀ (D : D7) (Z : LocDat D) {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) (Fr : ∀ p : PlF D, LocNG.FrameD (locH Z p) D.R.rS), (∀ p, (Fr p).f = (fun a => frFac Z.δ p a • baseChange₂ D p (frame G a))) → ∀ Λ₁ Λ₂ : LV D, Submodule.IsLattice D.host.E Λ₁ → Submodule.IsLattice D.host.E Λ₂ → (∀ p, (locH Z p).Lset (lattice₂ D Z.M p Λ₁) (Fr p).f = (locH Z p).Lset (lattice₂ D Z.M p Λ₂) (Fr p).f) → Lsub Λ₁ G = Lsub Λ₂ G := GlobalTheory.T.innerPreimage_eq_of_local_innerLattice_eq

theorem datum_ext {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E] {M : Loc.Model F E} {V : Type} [AddCommGroup V] [Module E V] {H : Loc.HermSp M V} {r : ℕ} {P : LocNG.FPair H r} (d d' : LocNG.Datum P) (h1 : d.L = d'.L) (h2 : d.L' = d'.L') (h3 : d.io = d'.io) : d = d' := by
  cases d; cases d'; simp only at h1 h2 h3; subst h1 h2 h3; rfl

theorem gdat_eq_iff : ∀ (D : D7) (X : HidaSetting D) (Y : Full X) (u u' : D.what₂.Word), ∀ (F : LFlag (D.sp.Y 0) D.R.rS (((D.mem u).A.T : ℕ) : D.host.E)) (F' : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E)) (w : Point D.host.E (D.R.rS + 1)), ZhatOM (ZhatL F F') = ptMat w → Gval F F' ≠ 0 → ∀ (Z : LocDat D) (FP : ∀ p : PlF D, LocNG.FPair (locH Z p) D.R.rS), Based Z FP (Tu D u) (Tu D u') F F' → (∀ p, (FP p).RelG (LocNG.theta (Z.M p))) → ∀ (Λ₁ Λ₂ : LV D) (y₁ y₂ : Dat Z FP), LocOver Λ₁ y₁ → LocOver Λ₂ y₂ → (gdat F F' Λ₁ = gdat F F' Λ₂ ↔ y₁ = y₂) := by
  intro D X Y u u' F F' w _ _ Z FP hB _ Λ₁ Λ₂ y₁ y₂ h₁ h₂
  have hL : ∀ (Λ : LV D) (y : Dat Z FP), LocOver Λ y → ∀ p,
      ((y p).L : Set _) = (locH Z p).Lset (lattice₂ D Z.M p Λ) (FP p).A.f ∧
      ((y p).L' : Set _) = (locH Z p).Lset (lattice₂ D Z.M p Λ) (FP p).B.f ∧
      ∀ g, (Z.M p).split = some g → (y p).io = (locH Z p).iotaGraph g ⟨lattice₂ D Z.M p Λ, (FP p).A.f, (FP p).B.f, (FP p).A.T, (FP p).B.T⟩ := by
    intro Λ y hy p
    obtain ⟨τ, hτ, hlam⟩ := hy.2 p
    have h1 := _root_.GlobalTheory.InnerRead.datum_eq_Lset (locH Z p) D.R.rS (FP p) (y p) τ hτ
    refine ⟨h1.1.trans (congrArg (fun L => (locH Z p).Lset L (FP p).A.f) hlam),
      h1.2.trans (congrArg (fun L => (locH Z p).Lset L (FP p).B.f) hlam), fun g hg => ?_⟩
    have h2 := (hτ.2.2.2.2 g hg).2
    have e4 : ∀ (L : Submodule (Z.M p).L.O (Vp D p)) (a b c e : (D.s.atP p).Fp), L = lattice₂ D Z.M p Λ →
        (locH Z p).iotaGraph g ⟨L, (FP p).A.f, (FP p).B.f, a, b⟩ =
          (locH Z p).iotaGraph g ⟨lattice₂ D Z.M p Λ, (FP p).A.f, (FP p).B.f, c, e⟩ := by
      intro L a b c e hL; subst hL; rfl
    exact h2.symm.trans (e4 _ _ _ _ _ hlam)
  constructor
  · intro hg
    have hF : Lsub Λ₁ F = Lsub Λ₂ F := congrArg (fun t => t.1) hg
    have hF' : Lsub Λ₁ F' = Lsub Λ₂ F' := congrArg (fun t => t.2.1) hg
    have hΓ := congrArg (fun t => t.2.2) hg
    funext p
    apply datum_ext
    · apply SetLike.coe_injective
      exact (hL Λ₁ y₁ h₁ p).1.trans ((_root_.GlobalTheory.Unfold.InnerLoc.lset_eq_of_lsub_eq D Z p F (FP p).A (hB p).1 Λ₁ Λ₂ h₁.1 h₂.1 hF).trans (hL Λ₂ y₂ h₂ p).1.symm)
    · apply SetLike.coe_injective
      exact (hL Λ₁ y₁ h₁ p).2.1.trans ((_root_.GlobalTheory.Unfold.InnerLoc.lset_eq_of_lsub_eq D Z p F' (FP p).B (hB p).2.1 Λ₁ Λ₂ h₁.1 h₂.1 hF').trans (hL Λ₂ y₂ h₂ p).2.1.symm)
    · cases hs : (Z.M p).split with
      | none => exact ((y₁ p).io_L hs).trans ((y₂ p).io_L hs).symm
      | some g =>
        exact ((hL Λ₁ y₁ h₁ p).2.2 g hs).trans ((_root_.GlobalTheory.IotaLocA.io_eq_of_graph D Z FP _ _ F F' hB Λ₁ Λ₂ h₁.1 h₂.1 hF hF' hΓ p g hs).trans
          ((hL Λ₂ y₂ h₂ p).2.2 g hs).symm)
  · intro hy
    subst hy
    have hF : Lsub Λ₁ F = Lsub Λ₂ F :=
      lsub_eq_of_lset_eq D Z F (fun p => (FP p).A) (fun p => (hB p).1) Λ₁ Λ₂ h₁.1 h₂.1
        (fun p => (hL Λ₁ y₁ h₁ p).1.symm.trans (hL Λ₂ y₁ h₂ p).1)
    have hF' : Lsub Λ₁ F' = Lsub Λ₂ F' :=
      lsub_eq_of_lset_eq D Z F' (fun p => (FP p).B) (fun p => (hB p).2.1) Λ₁ Λ₂ h₁.1 h₂.1
        (fun p => (hL Λ₁ y₁ h₁ p).2.1.symm.trans (hL Λ₂ y₁ h₂ p).2.1)
    have hΓ := _root_.GlobalTheory.Unfold.IotaGlob.graph_eq_of_local_iota D Z FP _ _ F F' hB Λ₁ Λ₂ h₁.1 h₂.1 hF hF'
      (fun p g hs => ((hL Λ₁ y₁ h₁ p).2.2 g hs).symm.trans ((hL Λ₂ y₁ h₂ p).2.2 g hs))
    exact Prod.ext hF (Prod.ext hF' hΓ)

end GlobalTheory.Unfold.InnerDict
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalInnerDatumEqIffLocalDataEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalInnerDatumEqIffLocalDataEqStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalInnerDatumEqIffLocalDataEqStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LocClosed\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalInnerDatumEqIffLocalDataEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Classical ENNReal
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.RowsConc Formalism.L2.SG.NGData Formalism.L2.SG.TermLoc GlobalTheory.Unfold
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.globalInnerDatum_eq_iff_local_data_eq : ∀ (D : D7) (X : HidaSetting D) (Y : Full X) (u u' : D.what₂.Word), ∀ (F : LFlag (D.sp.Y 0) D.R.rS (((D.mem u).A.T : ℕ) : D.host.E)) (F' : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E)) (w : Point D.host.E (D.R.rS + 1)), ZhatOM (ZhatL F F') = ptMat w → Gval F F' ≠ 0 → ∀ (Z : LocDat D) (FP : ∀ p : PlF D, LocNG.FPair (locH Z p) D.R.rS), Based Z FP (Tu D u) (Tu D u') F F' → (∀ p, (FP p).RelG (LocNG.theta (Z.M p))) → ∀ (Λ₁ Λ₂ : LV D) (y₁ y₂ : Dat Z FP), LocOver Λ₁ y₁ → LocOver Λ₂ y₂ → (gdat F F' Λ₁ = gdat F F' Λ₂ ↔ y₁ = y₂) := by
  first | exact @GlobalTheory.Unfold.InnerDict.gdat_eq_iff
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalInnerDatumEqIffLocalDataEqStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.RationalClassLatticesIffRationalClassLocalFrameP =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.RationalClassLatticesIffRationalClassLocalFrameP", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LocClosed\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.IsTermOver\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsComplementUnitaryMulActionLocalInnerDatum\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.GlobalInnerDatumEqIffLocalDataEqStatement\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.RationalAutomorphismLocalExtensionMovesLatticesStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical ENNReal
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.Full
  Formalism.L2.SG.RowsConc Formalism.L2.SG.NGData Formalism.L2.SG.TermLoc GlobalTheory.Unfold

namespace GlobalTheory.Unfold.RatCls

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} {T T' : D.host.E} {F : LFlag (D.sp.Y 0) D.R.rS T} {F' : LFlag (D.sp.Y 0) D.R.rS T'}

theorem principalPolarisation_exists_unique_section : (1 : GV D) ∈ H0 F F' := ⟨Subgroup.one_mem _, fun _ => rfl, fun _ => rfl⟩

theorem mul_mem_isometriesFixingBothFrames {g h : GV D} (hg : g ∈ H0 F F') (hh : h ∈ H0 F F') : g * h ∈ H0 F F' := by
  refine ⟨Subgroup.mul_mem _ hg.1 hh.1, fun a => ?_, fun a => ?_⟩
  · show g (h (frame F a)) = frame F a
    rw [hh.2.1 a, hg.2.1 a]
  · show g (h (frame F' a)) = frame F' a
    rw [hh.2.2 a, hg.2.2 a]

theorem inv_mem_isometriesFixingBothFrames {h : GV D} (hh : h ∈ H0 F F') : h⁻¹ ∈ H0 F F' := by
  refine ⟨Subgroup.inv_mem _ hh.1, fun a => ?_, fun a => ?_⟩
  · show h.symm (frame F a) = frame F a
    rw [LinearEquiv.symm_apply_eq, hh.2.1 a]
  · show h.symm (frame F' a) = frame F' a
    rw [LinearEquiv.symm_apply_eq, hh.2.2 a]

theorem ext_one (p : PlF D) : Ext p (1 : GV D) 1 := fun _ => rfl

theorem ext_mul {p : PlF D} {g h : GV D} {g' h' : Vp D p ≃ₗ[(D.s.atP p).Ep] Vp D p}
    (hg : Ext p g g') (hh : Ext p h h') : Ext p (g * h) (g' * h') := fun x => by
  show g' (h' (baseChange₂ D p x)) = baseChange₂ D p (g (h x))
  rw [hh x, hg (h x)]

theorem ext_inv {p : PlF D} {g : GV D} {g' : Vp D p ≃ₗ[(D.s.atP p).Ep] Vp D p}
    (hg : Ext p g g') : Ext p g⁻¹ g'⁻¹ := fun x => by
  show g'.symm (baseChange₂ D p x) = baseChange₂ D p (g.symm x)
  rw [LinearEquiv.symm_apply_eq, hg, LinearEquiv.apply_symm_apply]

end GlobalTheory.Unfold.RatCls


open GlobalTheory.Unfold.RatCls in
attribute [local instance] Formalism.BasicNotions.Host.cmStar in
theorem GlobalTheory.Unfold.ratCls_agree : ∀ (D : D7) (X : HidaSetting D) (Y : Full X) (u u' : D.what₂.Word), ∀ (F : LFlag (D.sp.Y 0) D.R.rS (((D.mem u).A.T : ℕ) : D.host.E)) (F' : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E)) (w : Point D.host.E (D.R.rS + 1)), ZhatOM (ZhatL F F') = ptMat w → Gval F F' ≠ 0 → ∀ (Z : LocDat D) (FP : ∀ p : PlF D, LocNG.FPair (locH Z p) D.R.rS), Based Z FP (Tu D u) (Tu D u') F F' → (∀ p, (FP p).RelG (LocNG.theta (Z.M p))) → Equivalence (GRel (Z := Z) (FP := FP) F F') ∧ (∀ y y' : Dat Z FP, GRel F F' y y' → (stabY F F' y).encard = (stabY F F' y').encard) ∧ ∀ (Λ₁ Λ₂ : LV D) (y₁ y₂ : Dat Z FP), LocOver Λ₁ y₁ → LocOver Λ₂ y₂ → (LRel F F' Λ₁ Λ₂ ↔ GRel F F' y₁ y₂) ∧ stabL F F' Λ₁ = stabY F F' y₁ := by
  intro D X Y u u' F F' w hZ hG Z FP hB hR
  have hact : ∀ p, ∃ act : MulAction (FP p).UW0 (LocNG.Datum (FP p)),
      (∀ (g : (FP p).UW0) d d', LocNG.Datum.Moves g.1 d d' ↔ act.smul g d = d') ∧
      ∀ d (g : (FP p).UW0), g.1 ∈ LocNG.Datum.Stab d ↔ act.smul g d = d := by
    intro p
    refine _root_.GlobalTheory.InnerDatumAct.exists_mulAction (Z.M p) (Z.agree p).1 (locH Z p) D.R.rS D.R.k (FP p) ?_ (hR p)
    rw [finrank_Vp]
    obtain ⟨j, hj⟩ := D.R.m_even
    have h2 := D.R.two_le_m
    show D.R.k + D.R.m - 1 = D.R.k + 2 * (D.R.m / 2 - 1) + 1
    omega
  choose act hmv _ using hact
  obtain ⟨hu, hw, -, hlift⟩ := GlobalTheory.T.rationalAutomorphism_local_extension_moves_lattices D X Y u u' F F' w hZ hG Z FP hB hR
  have hdict := GlobalTheory.T.globalInnerDatum_eq_iff_local_data_eq D X Y u u' F F' w hZ hG Z FP hB hR

  have rm_fun : ∀ h ∈ H0 F F', ∀ y y₁ y₂ : Dat Z FP, RMoves h y y₁ → RMoves h y y₂ → y₁ = y₂ := by
    intro h hh y y₁ y₂ r₁ r₂
    funext p
    obtain ⟨g₁, e₁, m₁⟩ := r₁ p
    obtain ⟨g₂, e₂, m₂⟩ := r₂ p
    obtain rfl : g₁ = g₂ := (hu h p).unique e₁ e₂
    have hm := hw h hh p g₁ e₁
    exact ((hmv p ⟨g₁, hm⟩ _ _).1 m₁).symm.trans ((hmv p ⟨g₁, hm⟩ _ _).1 m₂)
  have rm_one : ∀ y : Dat Z FP, RMoves (1 : GV D) y y := by
    intro y p
    refine ⟨1, ext_one p, (hmv p 1 _ _).2 ?_⟩
    letI := act p
    exact one_smul _ _
  have rm_mul : ∀ h₁ ∈ H0 F F', ∀ h₂ ∈ H0 F F', ∀ y y' y'' : Dat Z FP,
      RMoves h₁ y y' → RMoves h₂ y' y'' → RMoves (h₂ * h₁) y y'' := by
    intro h₁ hh₁ h₂ hh₂ y y' y'' r₁ r₂ p
    obtain ⟨g₁, e₁, m₁⟩ := r₁ p
    obtain ⟨g₂, e₂, m₂⟩ := r₂ p
    let a₁ : (FP p).UW0 := ⟨g₁, hw h₁ hh₁ p g₁ e₁⟩
    let a₂ : (FP p).UW0 := ⟨g₂, hw h₂ hh₂ p g₂ e₂⟩
    refine ⟨g₂ * g₁, ext_mul e₂ e₁, (hmv p (a₂ * a₁) _ _).2 ?_⟩
    letI := act p
    have f₁ : a₁ • y p = y' p := (hmv p a₁ _ _).1 m₁
    have f₂ : a₂ • y' p = y'' p := (hmv p a₂ _ _).1 m₂
    show (a₂ * a₁) • y p = y'' p
    rw [mul_smul, f₁, f₂]
  have rm_inv : ∀ h ∈ H0 F F', ∀ y y' : Dat Z FP, RMoves h y y' → RMoves h⁻¹ y' y := by
    intro h hh y y' r p
    obtain ⟨g, e, m⟩ := r p
    let a : (FP p).UW0 := ⟨g, hw h hh p g e⟩
    refine ⟨g⁻¹, ext_inv e, (hmv p a⁻¹ _ _).2 ?_⟩
    letI := act p
    have f : a • y p = y' p := (hmv p a _ _).1 m
    show a⁻¹ • y' p = y p
    rw [inv_smul_eq_iff, f]
  have conj : ∀ h ∈ H0 F F', ∀ y y' : Dat Z FP, RMoves h y y' →
      ∀ k ∈ stabY F F' y, h * k * h⁻¹ ∈ stabY F F' y' := by
    intro h hh y y' hm k hk
    refine ⟨mul_mem_isometriesFixingBothFrames (mul_mem_isometriesFixingBothFrames hh hk.1) (inv_mem_isometriesFixingBothFrames hh), ?_⟩
    rw [mul_assoc]
    exact rm_mul _ (mul_mem_isometriesFixingBothFrames hk.1 (inv_mem_isometriesFixingBothFrames hh)) h hh _ _ _
      (rm_mul _ (inv_mem_isometriesFixingBothFrames hh) k hk.1 _ _ _ (rm_inv h hh y y' hm) hk.2) hm
  refine ⟨⟨fun y => ⟨1, principalPolarisation_exists_unique_section, rm_one y⟩, fun ⟨h, hh, hm⟩ => ⟨h⁻¹, inv_mem_isometriesFixingBothFrames hh, rm_inv h hh _ _ hm⟩,
    fun ⟨h₁, hh₁, m₁⟩ ⟨h₂, hh₂, m₂⟩ => ⟨h₂ * h₁, mul_mem_isometriesFixingBothFrames hh₂ hh₁, rm_mul h₁ hh₁ h₂ hh₂ _ _ _ m₁ m₂⟩⟩, ?_, ?_⟩
  · rintro y y' ⟨h, hh, hm⟩
    have e : stabY F F' y' = (MulAut.conj h) '' stabY F F' y := by
      ext k
      constructor
      · intro hk
        refine ⟨h⁻¹ * k * h⁻¹⁻¹, conj h⁻¹ (inv_mem_isometriesFixingBothFrames hh) y' y (rm_inv h hh y y' hm) k hk, ?_⟩
        simp [MulAut.conj_apply, mul_assoc]
      · rintro ⟨k, hk, rfl⟩
        exact conj h hh y y' hm k hk
    rw [e, (MulAut.conj h).injective.encard_image]
  · intro Λ₁ Λ₂ y₁ y₂ h₁ h₂
    have key : ∀ h ∈ H0 F F', ∀ (Λ Λ' : LV D) (y y' : Dat Z FP), LocOver Λ y → LocOver Λ' y' →
        (gdat F F' (Formalism.HermitianLatticesTheory.gmap h Λ) = gdat F F' Λ' ↔ RMoves h y y') := by
      intro h hh Λ Λ' y y' hl hl'
      obtain ⟨y'', hl'', hm''⟩ := hlift h hh Λ y hl
      rw [hdict _ _ y'' y' hl'' hl']
      constructor
      · rintro rfl
        exact hm''
      · intro hm
        exact rm_fun h hh y y'' y' hm'' hm
    refine ⟨⟨fun ⟨h, hh, he⟩ => ⟨h, hh, (key h hh _ _ _ _ h₁ h₂).1 he⟩,
      fun ⟨h, hh, hm⟩ => ⟨h, hh, (key h hh _ _ _ _ h₁ h₂).2 hm⟩⟩, ?_⟩
    ext h
    exact ⟨fun ⟨hh, he⟩ => ⟨hh, (key h hh _ _ _ _ h₁ h₁).1 he⟩, fun ⟨hh, hm⟩ => ⟨hh, (key h hh _ _ _ _ h₁ h₁).2 hm⟩⟩
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.RationalClassLatticesIffRationalClassLocalFrameP =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.RationalClassLatticesIffRationalClassLocalFramePStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.RationalClassLatticesIffRationalClassLocalFramePStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LocClosed\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.RationalClassLatticesIffRationalClassLocalFrameP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Classical ENNReal
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.RowsConc Formalism.L2.SG.NGData Formalism.L2.SG.TermLoc GlobalTheory.Unfold
attribute [local instance] Formalism.BasicNotions.Host.cmStar

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.RationalClassLatticesIffRationalClassLocalFramePStatement =====
