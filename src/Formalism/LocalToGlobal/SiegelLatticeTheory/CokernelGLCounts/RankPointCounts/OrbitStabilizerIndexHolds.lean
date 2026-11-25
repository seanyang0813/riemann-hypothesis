module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolOrb
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FrameShapeHolds
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolFin
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfSk
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupGlob
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DdPowConj
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.EmbeddingIntegerAlgebraMap
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.MemDdSPow
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupOnto
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupLift
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolAct
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.DiagMulOfBt
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FrameEntry
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexBCongruence
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.MemOrthOf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.PtMatIsUnit
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.IsUpUniMul
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.TermDefPf
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.GenericRatioOfBoundHolds
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.NotDvdDiff
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupOrb
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensAtGoodOf
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationChange.CoefXOfMemXS
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.DiffIdealNeBot
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermCarrierStability.TermStableHolds
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.OneMemDdPow
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolCong
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolFS
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolFib
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolKey
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolShape

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabilizerInCongruenceHolds, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupAct, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupActB, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FibMp, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FibMpr, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolAsm, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.OrbitStabilizerIndexHolds

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabilizerInCongruenceHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabilizerInCongruenceHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolOrb\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FrameShapeHolds\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolFin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf.ZsVolOrb

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : Formalism.BasicNotions.D7} (M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep)
  (δ : ∀ p : PlF D, (D.s.atP p).Fp) (u u' : D.what₂.Word)
  (F0 : FlagG (VS D) D.R.rS (Formalism.L2.SG.CntLocal.Tn u)) (what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V))

theorem stabilizer_in_congruence_holds : StabInCZ M δ u u' F0 what₂ :=
  Formalism.L2.SG.Pf.ZsVolIn.stabInCZ_of M δ u u' F0 what₂ (Formalism.L2.SG.Pf.ZsVolLat.frameShape_holds M δ u u' F0 what₂)

theorem orbStabE_of_act (h : OrbActE M δ u u' F0 what₂) : Formalism.L2.SG.Pf.ZsVolCut.OrbStabE M δ u u' F0 what₂
    (Formalism.L2.SG.Pf.ZsVolCut.CZ M δ u u') :=
  orbStabE_of M δ u u' F0 what₂ (stabilizer_in_congruence_holds M δ u u' F0 what₂) h
    (Formalism.L2.SG.Pf.ZsVolFin.orbitFinite_holds M δ u u' F0 what₂)

end Formalism.L2.SG.Pf.ZsVolOrb

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabilizerInCongruenceHolds =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupAct =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupAct", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfSk\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupGlob\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.TermDefPf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.GenericRatioOfBoundHolds\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DdPowConj\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.EmbeddingIntegerAlgebraMap\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.MemDdSPow\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.NotDvdDiff\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupOnto\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupOrb\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensAtGoodOf\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationChange.CoefXOfMemXS\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.DiffIdealNeBot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupLift\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermCarrierStability.TermStableHolds\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace Formalism.L2.SG.Pf.TupAct

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef Formalism.L2.SG.Pf.TupOrb
  Formalism.L2.SG.Pf.TupLift

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7}

theorem lift_move {u u' : D.what₂.Word} {F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E)}
    {Λ : Submodule (𝓞 D.host.E) (VS D).V} (hΛ : IsRowLat D F0 Λ) (hu : Tu D u ≠ 0) (hu' : Tu D u' ≠ 0)
    {t : TermsOf D u' F0 Λ} {Z₁ : PairVal.MatR D} {F₁ : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E)}
    (h₁ : F₁ ∈ CntLocal.EZ (D := D) ((Tu D u' : ℕ) : D.host.E) F0 Λ Z₁)
    (r₁ : TermDef.Rep Λ (lf D F0) (PD D Λ (lf D F0) u') t F₁)
    {U U' : PairVal.MatR D} (hU : IsUpUni U) (hU' : IsUpUni U') (hiU : TupGlob.IntFr U) (hiU' : TupGlob.IntFr U')
    (htie : TupGlob.TieG U U') :
    ∃ ν ∈ NLam Λ (lf D F0), ∃ m ∈ NLam Λ F₁,
      (∀ b, ν (frame (lf D F0) b) = ∑ c, U c b • frame (lf D F0) c) ∧
      (∀ b, m (frame F₁ b) = ∑ c, U' c b • frame F₁ c) ∧
      ∃ F2 ∈ CntLocal.EZ (D := D) ((Tu D u' : ℕ) : D.host.E) F0 Λ (U.conjTranspose * Z₁ * U'),
        TermDef.Rep Λ (lf D F0) (PD D Λ (lf D F0) u') t F2 ∧ ∀ b, frame F2 b = ν⁻¹ (m (frame F₁ b)) := by
  obtain ⟨p₁, e₁⟩ := r₁
  have hFun := _root_.term_function_const D u u' F0 Λ hΛ
  obtain ⟨ν, hν, hνF⟩ := TupOnto.nLamOnto_holds D u F0 Λ hΛ hu U hU hiU
  obtain ⟨m, hm, hmF⟩ := TupOnto.nLamOnto_holds D u' F₁.fl Λ (isRowLat_of_pd hΛ p₁) hu' U' hU' hiU'
  have hm' : m ∈ NLam Λ F₁ := hm
  have hmF' : ∀ b, m (frame F₁ b) = ∑ c, U' c b • frame F₁ c := hmF
  have hAut : IsAutLam (VS D) Λ (ν⁻¹ * m) :=
    Formalism.L2.SG.Pf.isAutLam_mul (Formalism.L2.SG.Pf.isAutLam_inv hν.1) hm.1
  let F2 := Formalism.L2.SG.Saturated.mapL (ν⁻¹ * m) hAut.1 F₁
  have hf2 : ∀ b, frame F2 b = ν⁻¹ (m (frame F₁ b)) := fun b => by
    rw [Formalism.L2.SG.Saturated.frame_mapL]; rfl
  have hdc : DCRel Λ (lf D F0) F₁ F2 := ⟨ν⁻¹, Formalism.L2.SG.Pf.nlamPf_inv hν, m, hm', hf2, rfl⟩
  have pd2 : PD D Λ (lf D F0) u' F2 := _root_.PI.TCS.termStable_holds D u u' F0 Λ hΛ ⟨F₁, p₁⟩ F2 hdc
  have hT' : ((Tu D u' : ℕ) : D.host.E) ≠ 0 := Nat.cast_ne_zero.2 hu'
  have hFΛ : ∀ c, frame (lf D F0) c ∈ Λ := by
    intro c
    refine Fin.lastCases ?_ (fun a => ?_) c
    · rw [Formalism.L2.SG.Pf.frame_last_td]; exact hΛ.2.1.2.2.1.1
    · rw [Formalism.L2.SG.Pf.frame_castSucc_td]; exact PI.NRL.e_mem_lam D F0 Λ hΛ a
  have hiso : ∀ x y, (VS D).hT (ν x) (ν y) = (VS D).hT x y := ((Formalism.L2.SG.Pf.isAutLam_iff Λ ν).1 hν.1).1
  have hent : ∀ a b, (VS D).hT (frame (lf D F0) a) (frame F2 b) =
      (U.conjTranspose * ZhatL (lf D F0) F₁ * U') a b := fun a b => by
    rw [hf2 b]; exact zhat_lift (lf D F0) F₁ hiso hνF hmF' a b
  refine ⟨ν, hν, m, hm', hνF, hmF', F2, ⟨⟨pd2.1, pd2.2.1, ?_⟩, ?_, ?_, pd2.2.2, ?_⟩,
    ⟨pd2, (Quot.sound (show TermDef.Rel Λ (lf D F0) (PD D Λ (lf D F0) u') ⟨F₁, p₁⟩ ⟨F2, pd2⟩ from hdc)).symm.trans e₁⟩, hf2⟩
  · change Gval (lf D F0) F2 ≠ 0
    rw [Formalism.L2.SG.Pf.gval_rel (lf D F0) hdc]; exact h₁.1.2.2
  · refine ⟨fun a b hab => Matrix.one_apply_ne (ne_of_lt hab).symm, fun a => Matrix.one_apply_eq a, fun b => ?_⟩
    rw [frameAct_one']
    change ModG (VS D) Λ (Lat.gS D) (frame F2 b - frame (lf D F0) b)
    rw [hf2 b]
    exact modG_lift hT' p₁.1 p₁.2.2.1 hFΛ hν.1 hm' hνF hmF' htie
      (fun c => by have := h₁.2.1.2.2 c; rwa [frameAct_one'] at this) b
  · exact (hFun.2.2.2.1 ⟨F₁, p₁⟩ ⟨F2, pd2⟩ hdc).1 h₁.2.2.1
  · have hZZ : ZhatL (lf D F0) F2 = U.conjTranspose * ZhatL (lf D F0) F₁ * U' := by
      funext a b
      exact hent a b
    change ZhatL (lf D F0) F2 = U.conjTranspose * Z₁ * U'
    have hz1 : ZhatL (lf D F0) F₁ = Z₁ := h₁.2.2.2.2
    rw [hZZ, hz1]

theorem integral_pair_of_shape (Zd : Formalism.L2.SG.TermLoc.LocDat D) {A B : PairVal.MatR D} (hA : Formalism.L2.SG.Pf.AtPt.IsLo A)
    (hB : Formalism.L2.SG.Pf.AtPt.IsUp B) (hES : Formalism.L2.SG.Pf.StabIntSh.EntryShape D A B) :
    TupGlob.IntFr A.conjTranspose ∧
      TupGlob.IntFr (Formalism.L2.SG.Pf.AtPt.Sg D.host.E D.R.rS * B * Formalism.L2.SG.Pf.AtPt.Sg D.host.E D.R.rS) ∧
      TupGlob.TieG A.conjTranspose
        (Formalism.L2.SG.Pf.AtPt.Sg D.host.E D.R.rS * B * Formalism.L2.SG.Pf.AtPt.Sg D.host.E D.R.rS) := by
  open Formalism.L2.SG.Pf.FibD in
  refine ⟨fun c b hcb x hx => ?_, fun c b hcb x hx => ?_, fun P hP c b => ?_⟩
  · rw [Matrix.conjTranspose_apply, PI.UnitaryGroupMassFormula.CntFormula.star_eq_conjF]
    exact mem_aaF hcb hx (ddPow_conj Zd (by have := b.isLt; omega) (hES b c hcb).1)
  · rw [sg_entry]
    exact mem_aaF hcb hx (hES b c hcb).2.1
  · rcases lt_trichotomy c b with h | h | h
    · have hq := (hES b c h).2.2
      unfold Formalism.L2.SG.Pf.StabIntSh.qdPow Formalism.L2.SG.Pf.StabIntSh.qq at hq
      rw [FractionalIdeal.coeIdeal_span_singleton, FractionalIdeal.mem_singleton_mul] at hq
      obtain ⟨z, hz, hzy⟩ := hq
      obtain ⟨t, ht, htP⟩ := diff_avoid P hP
      have hk : b.val - c.val ≤ D.R.rS := by have := b.isLt; omega
      have hz' := ddPow_conj Zd hk hz
      have hprod := FractionalIdeal.mul_mem_mul (mem_ddS_pow t ht (b.val - c.val)) hz'
      unfold Formalism.L2.SG.Pf.StabIntSh.ddPow at hprod
      rw [← zpow_natCast, ← zpow_add₀ (PI.NRCW.ddS_ne_zero D), add_neg_cancel, zpow_zero] at hprod
      obtain ⟨o, ho⟩ := (FractionalIdeal.mem_one_iff _).1 hprod
      refine ⟨(algebraMap (𝓞 D.host.F) (𝓞 D.host.E) t) ^ (b.val - c.val), fun hs => htP (P.isPrime.mem_of_pow_mem _ hs),
        o, ?_⟩
      rw [Matrix.conjTranspose_apply, PI.UnitaryGroupMassFormula.CntFormula.star_eq_conjF, sg_entry]
      have e1 : D.conjF (A b c) - Formalism.L2.SG.Pf.StabIntSh.bt D B c b =
          D.conjF (algebraMap (𝓞 D.host.E) D.host.E ((gS D : ℕ) : 𝓞 D.host.E) * z) := by
        have := congrArg D.conjF hzy
        simpa only [map_sub, Formalism.L2.SG.Pf.LocalDenominators.conjF_invol] using this
      rw [e1, map_mul, map_natCast, map_natCast, mul_left_comm, ← ho]
    · subst h
      refine ⟨1, fun h1 => P.isPrime.ne_top ((Ideal.eq_top_iff_one _).2 h1), 0, ?_⟩
      rw [Matrix.conjTranspose_apply, sg_entry]
      simp [Formalism.L2.SG.Pf.StabIntSh.bt, hA.1 c, hB.1 c, ← pow_add, ← two_mul, pow_mul]
    · refine ⟨1, fun h1 => P.isPrime.ne_top ((Ideal.eq_top_iff_one _).2 h1), 0, ?_⟩
      rw [Matrix.conjTranspose_apply, sg_entry]
      simp [Formalism.L2.SG.Pf.StabIntSh.bt, hA.2 b c h, hB.2 b c h]

theorem ez_of_normRep {u u' : D.what₂.Word} {F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E)}
    {what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V)} {γ : TermDef.Term D u u' F0 what₂}
    (hΛ : IsRowLat D F0 γ.lam) {w w₁ : Point D.host.E (D.R.rS + 1)} (hel : Formalism.L2.SG.DataCut.EligAt γ w)
    {F' : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E)} {L U : PairVal.MatR D}
    (hn : PairVal.NormRep γ w₁ F' L U) :
    F' ∈ CntLocal.EZ (D := D) ((Tu D u' : ℕ) : D.host.E) F0 γ.lam (ZhatL (lf D F0) F') := by
  obtain ⟨⟨p₁, e₁⟩, hadm₁, -⟩ := hn
  have hEq := _root_.term_eq_iff_relation D u u' F0 γ.lam hΛ
  have hFun := _root_.term_function_const D u u' F0 γ.lam hΛ
  obtain ⟨Fa, ⟨pa, ea⟩, hGa, -⟩ := hel.2
  have hdca := (hEq ⟨Fa, pa⟩ ⟨F', p₁⟩).1 (ea.trans e₁.symm)
  obtain ⟨Fg, ⟨pg, eg⟩, hgen⟩ := hel.1.1
  refine ⟨⟨p₁.1, p₁.2.1, ?_⟩, hadm₁, ?_, p₁.2.2, rfl⟩
  · change Gval (lf D F0) F' ≠ 0
    rw [Formalism.L2.SG.Pf.gval_rel (lf D F0) hdca]; exact hGa
  · exact (hFun.2.2.2.1 ⟨Fg, pg⟩ ⟨F', p₁⟩ ((hEq ⟨Fg, pg⟩ ⟨F', p₁⟩).1 (eg.trans e₁.symm))).1 hgen

theorem moveCZ {u u' : D.what₂.Word} {F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E)}
    {Λ : Submodule (𝓞 D.host.E) (VS D).V} (hΛ : IsRowLat D F0 Λ) (hu : Tu D u ≠ 0) (hu' : Tu D u' ≠ 0)
    (Zd : Formalism.L2.SG.TermLoc.LocDat D) {t : TermsOf D u' F0 Λ} {Z : PairVal.MatR D}
    {F' : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E)}
    (h' : F' ∈ CntLocal.EZ (D := D) ((Tu D u' : ℕ) : D.host.E) F0 Λ Z)
    (r' : TermDef.Rep Λ (lf D F0) (PD D Λ (lf D F0) u') t F')
    {a' b : PairVal.MatR D} (ha : IsLoUni a') (hb : IsUpUni b) (hst : a' * ZhatOM Z * b = ZhatOM Z)
    (hES : Formalism.L2.SG.Pf.StabIntSh.EntryShape D a' b) :
    ∃ ν ∈ NLam Λ (lf D F0), ∃ m ∈ NLam Λ F',
      (∀ c, ν (frame (lf D F0) c) = ∑ d, a'.conjTranspose d c • frame (lf D F0) d) ∧
      (∀ c, m (frame F' c) = ∑ d, (Formalism.L2.SG.Pf.AtPt.Sg D.host.E D.R.rS * b * Formalism.L2.SG.Pf.AtPt.Sg D.host.E D.R.rS) d c •
        frame F' d) ∧
      ∃ F2 ∈ CntLocal.EZ (D := D) ((Tu D u' : ℕ) : D.host.E) F0 Λ Z,
        TermDef.Rep Λ (lf D F0) (PD D Λ (lf D F0) u') t F2 ∧ ∀ c, frame F2 c = ν⁻¹ (m (frame F' c)) := by
  set Sg := Formalism.L2.SG.Pf.AtPt.Sg D.host.E D.R.rS with hSg
  have hlo : Formalism.L2.SG.Pf.AtPt.IsLo a' := ⟨fun i => (ha i i).2 rfl, fun i j h => (ha i j).1 h⟩
  have hup : Formalism.L2.SG.Pf.AtPt.IsUp b := ⟨fun i => (hb i i).2 rfl, fun i j h => (hb j i).1 h⟩
  obtain ⟨hi1, hi2, htie⟩ := integral_pair_of_shape Zd hlo hup hES
  have hU : IsUpUni a'.conjTranspose := fun i j => by
    refine ⟨fun h => ?_, fun h => ?_⟩
    · rw [Matrix.conjTranspose_apply, (ha j i).1 h, star_zero]
    · subst h; rw [Matrix.conjTranspose_apply, (ha i i).2 rfl, star_one]
  have hU' : IsUpUni (Sg * b * Sg) := fun i j => by
    rw [Formalism.L2.SG.Pf.FibD.sg_entry]
    refine ⟨fun h => ?_, fun h => ?_⟩
    · simp [Formalism.L2.SG.Pf.StabIntSh.bt, (hb i j).1 h]
    · subst h
      simp [Formalism.L2.SG.Pf.StabIntSh.bt, (hb i i).2 rfl, ← pow_add, ← two_mul, pow_mul]
  obtain ⟨ν, hν, m, hm, hνF, hmF, F2, hF2, hr2, hf2⟩ := lift_move hΛ hu hu' h' r' hU hU' hi1 hi2 htie
  refine ⟨ν, hν, m, hm, hνF, hmF, F2, ?_, hr2, hf2⟩
  have hZ : a'.conjTranspose.conjTranspose * Z * (Sg * b * Sg) = Z := by
    rw [Matrix.conjTranspose_conjTranspose]
    have hS : ZhatOM Z = Z * Sg := Formalism.L2.SG.Pf.AtPt.zhatOM_eq Z
    rw [hS] at hst
    calc a' * Z * (Sg * b * Sg) = (a' * (Z * Sg) * b) * Sg := by simp only [Matrix.mul_assoc]
      _ = Z := by rw [hst, Matrix.mul_assoc, Formalism.L2.SG.Pf.AtPt.sg_sq, Matrix.mul_one]
  rwa [hZ] at hF2

end Formalism.L2.SG.Pf.TupAct
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupAct =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupActB =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupActB", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolAct\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.DiagMulOfBt\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.TermDefPf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.GenericRatioOfBoundHolds\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FrameEntry\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FrameShapeHolds\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.OneMemDdPow\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupAct\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupLift\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupOrb\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolCong\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolFS\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf.TupActB

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Matrix IsDedekindDomain
open Classical

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : Formalism.BasicNotions.D7}

theorem cong_at_pair {T T' : D.host.E} (F : LFlag (D.sp.Y 0) D.R.rS T) (F' : LFlag (D.sp.Y 0) D.R.rS T')
    (Λ : Submodule (𝓞 D.host.E) (VS D).V) (hc : IsFixedConv Λ (Lat.gS D) F) (hc' : IsFixedConv Λ (Lat.gS D) F')
    (hz' : F'.fl.z ∈ Λ) (hadm : ∀ b, ModG (VS D) Λ (Lat.gS D) (F'.fl.fvec b - F.fl.fvec b))
    (ν m : (VS D).V ≃ₗ[D.host.E] (VS D).V) (hν : ∀ v ∈ Λ, ν v ∈ Λ) (hm : ∀ v ∈ Λ, m v ∈ Λ)
    (F'' : LFlag (D.sp.Y 0) D.R.rS T') (hadm'' : ∀ b, ModG (VS D) Λ (Lat.gS D) (F''.fl.fvec b - F.fl.fvec b))
    (hf'' : ∀ b, F''.fl.fvec b = ν⁻¹ (m (F'.fl.fvec b)))
    (uu uu' : Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) D.host.E) (huu : IsUpUni uu) (huu' : IsUpUni uu')
    (hfr : ∀ b, ν (F.fl.fvec b) = ∑ c, uu c b • F.fl.fvec c) (hfr' : ∀ b, m (F'.fl.fvec b) = ∑ c, uu' c b • F'.fl.fvec c)
    (P : HeightOneSpectrum (𝓞 D.host.E)) (hgP : ((Lat.gS D : ℕ) : 𝓞 D.host.E) ∈ P.asIdeal)
    (j i : Fin (D.R.rS + 1)) (hji : j < i) :
    ∃ t : 𝓞 D.host.E, t ∉ P.asIdeal ∧ ∃ o : 𝓞 D.host.E,
      (t : D.host.E) * (uu j i - uu' j i) = ((Lat.gS D : ℕ) : D.host.E) * o := by
  have hP := P.isPrime
  set g : 𝓞 D.host.E := ((Lat.gS D : ℕ) : 𝓞 D.host.E) with hg
  set M := Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (Ideal.span {g} • Λ) with hM
  have hg0 : ((Lat.gS D : ℕ) : D.host.E) ≠ 0 := by
    have h2 : (Lat.gS D : ℕ) ≠ 0 := by
      unfold Lat.gS
      exact mul_ne_zero (D.host.g_prime 0).ne_zero (D.host.g_prime 1).ne_zero
    exact_mod_cast h2

  have hgs : ∀ x : (VS D).V, x ∈ Ideal.span {g} • Λ ↔ ∃ l ∈ Λ, g • l = x := by
    intro x
    rw [Submodule.ideal_span_singleton_smul, Submodule.mem_smul_pointwise_iff_exists]
  have hd : ∀ c, F'.fl.fvec c - F.fl.fvec c ∈ M := fun c => hadm c P hgP
  have hsd : m (F'.fl.fvec i) - ν (F.fl.fvec i) ∈ M := by
    have e : m (F'.fl.fvec i) - ν (F.fl.fvec i) = ν (F''.fl.fvec i - F.fl.fvec i) := by
      rw [map_sub, hf'' i]
      simp [LinearEquiv.coe_inv]
    rw [e]
    obtain ⟨t, ht, htd⟩ := (Formalism.L2.SG.Pf.ZsVolLat.mem_locP P.asIdeal _ _).1 (hadm'' i P hgP)
    obtain ⟨l, hl, hlg⟩ := (hgs _).1 htd
    refine (Formalism.L2.SG.Pf.ZsVolLat.mem_locP P.asIdeal _ _).2 ⟨t, ht, ?_⟩
    rw [← Formalism.L2.SG.Pf.ZsVolLat.smul_O, ← hlg, Formalism.L2.SG.Pf.ZsVolLat.smul_O]
    exact (hgs _).2 ⟨ν l, hν l hl, rfl⟩
  have hud : ∀ c, uu' c i • (F'.fl.fvec c - F.fl.fvec c) ∈ M := by
    intro c
    obtain ⟨t1, ht1, o, ho⟩ := Formalism.L2.SG.Pf.ZsVolLat.int_at F' Λ hc' hz' m hm uu' huu' hfr' P hgP c i
    obtain ⟨t2, ht2, htd⟩ := (Formalism.L2.SG.Pf.ZsVolLat.mem_locP P.asIdeal _ _).1 (hd c)
    obtain ⟨l, hl, hlg⟩ := (hgs _).1 htd
    refine (Formalism.L2.SG.Pf.ZsVolLat.mem_locP P.asIdeal _ _).2 ⟨t1 * t2, fun h => (hP.mem_or_mem h).elim ht1 ht2, ?_⟩
    have e : (t1 * t2) • (uu' c i • (F'.fl.fvec c - F.fl.fvec c)) = o • (t2 • (F'.fl.fvec c - F.fl.fvec c)) := by
      rw [← algebraMap_smul D.host.E (t1 * t2), ← algebraMap_smul D.host.E o, ← algebraMap_smul D.host.E t2, smul_smul,
        smul_smul]
      have ho' : algebraMap (𝓞 D.host.E) D.host.E t1 * uu' c i = algebraMap (𝓞 D.host.E) D.host.E o := ho
      rw [map_mul, mul_right_comm, ho']
    rw [e, ← hlg]
    exact (hgs _).2 ⟨o • l, Λ.smul_mem o hl, smul_comm g o l⟩

  set y : Fin D.R.rS → D.host.E := fun a => uu' (Fin.castSucc a) i - uu (Fin.castSucc a) i with hy
  have hlast : uu' (Fin.last _) i - uu (Fin.last _) i = 0 := by
    by_cases h : i = Fin.last _
    · subst h
      rw [(huu' _ _).2 rfl, (huu _ _).2 rfl, sub_self]
    · have hlt : i < Fin.last _ := lt_of_le_of_ne (Fin.le_last i) h
      rw [(huu' _ _).1 hlt, (huu _ _).1 hlt, sub_self]
  have hw : ∑ a, y a • F.fl.e a = (m (F'.fl.fvec i) - ν (F.fl.fvec i)) - ∑ c, uu' c i • (F'.fl.fvec c - F.fl.fvec c) := by
    rw [hfr i, hfr' i]
    simp only [smul_sub, Finset.sum_sub_distrib]
    have h2 : ∑ c, (uu' c i - uu c i) • F.fl.fvec c = ∑ a, y a • F.fl.e a := by
      rw [Formalism.L2.SG.Pf.ZsVolLat.sum_fvec]
      simp only [hy, hlast, zero_smul, add_zero]
    rw [← h2]
    simp only [sub_smul, Finset.sum_sub_distrib]
    abel
  have hwM : ∑ a, y a • F.fl.e a ∈ M := by
    rw [hw]
    exact M.sub_mem hsd (M.sum_mem fun c _ => hud c)
  obtain ⟨t, ht, htw⟩ := (Formalism.L2.SG.Pf.ZsVolLat.mem_locP P.asIdeal _ _).1 hwM
  obtain ⟨l, hl, hlg⟩ := (hgs _).1 htw

  have hl_eq : l = ∑ a, (((Lat.gS D : ℕ) : D.host.E)⁻¹ * ((t : D.host.E) * y a)) • F.fl.e a := by
    have h1 : ((Lat.gS D : ℕ) : D.host.E) • l = t • ∑ a, y a • F.fl.e a := by
      rw [← hlg, ← algebraMap_smul D.host.E g]
      rfl
    have h2 := congrArg (fun v => ((Lat.gS D : ℕ) : D.host.E)⁻¹ • v) h1
    simp only [smul_smul, inv_mul_cancel₀ hg0, one_smul] at h2
    rw [h2, Finset.smul_sum, Finset.smul_sum]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [← algebraMap_smul D.host.E t, smul_smul, smul_smul, mul_assoc]
  have hlX : l ∈ XLam Λ F := by
    refine Submodule.mem_inf.2 ⟨hl, ?_⟩
    show l ∈ F.fl.X
    rw [hl_eq]
    exact Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩)
  have hloc : l ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (Submodule.span (𝓞 D.host.E) (Set.range F.fl.e)) := by
    rw [← Formalism.L2.SG.Pf.ZsVolLat.conv_at F Λ hc P hgP]
    exact ⟨1, P.asIdeal.primeCompl.one_mem, by rw [one_smul]; exact hlX⟩
  obtain ⟨t', ht', ht'l⟩ := (Formalism.L2.SG.Pf.ZsVolLat.mem_locP P.asIdeal _ _).1 hloc
  have hv2 : t' • l = ∑ a, ((t' : D.host.E) * (((Lat.gS D : ℕ) : D.host.E)⁻¹ * ((t : D.host.E) * y a))) • F.fl.e a := by
    rw [hl_eq, Finset.smul_sum]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [← algebraMap_smul D.host.E t', smul_smul]
  have hjr : (j : ℕ) < D.R.rS := lt_of_lt_of_le hji (Nat.lt_succ_iff.1 i.2)
  obtain ⟨o, ho⟩ := Formalism.L2.SG.Pf.ZsVolLat.coef_spanO F.fl ht'l _ hv2 ⟨j, hjr⟩
  refine ⟨t' * t, fun h => (hP.mem_or_mem h).elim ht' ht, -o, ?_⟩
  have hyj : y ⟨j, hjr⟩ = uu' j i - uu j i := rfl
  rw [hyj] at ho
  have hgi : ((Lat.gS D : ℕ) : D.host.E) * ((Lat.gS D : ℕ) : D.host.E)⁻¹ = 1 := mul_inv_cancel₀ hg0
  push_cast
  linear_combination ((Lat.gS D : ℕ) : D.host.E) * ho + ((t' : D.host.E) * (t : D.host.E) * (uu' j i - uu j i)) * hgi

theorem cong_glob_pair {T T' : D.host.E} (F : LFlag (D.sp.Y 0) D.R.rS T) (F' : LFlag (D.sp.Y 0) D.R.rS T')
    (Λ : Submodule (𝓞 D.host.E) (VS D).V) (hc : IsFixedConv Λ (Lat.gS D) F) (hc' : IsFixedConv Λ (Lat.gS D) F')
    (hX : XLam Λ F = XS D F.fl) (hX' : XLam Λ F' = XS D F'.fl) (hz : F.fl.z ∈ Λ) (hz' : F'.fl.z ∈ Λ)
    (hadm : ∀ b, ModG (VS D) Λ (Lat.gS D) (F'.fl.fvec b - F.fl.fvec b))
    (ν m : (VS D).V ≃ₗ[D.host.E] (VS D).V) (hν : ∀ v ∈ Λ, ν v ∈ Λ) (hm : ∀ v ∈ Λ, m v ∈ Λ)
    (F'' : LFlag (D.sp.Y 0) D.R.rS T') (hadm'' : ∀ b, ModG (VS D) Λ (Lat.gS D) (F''.fl.fvec b - F.fl.fvec b))
    (hf'' : ∀ b, F''.fl.fvec b = ν⁻¹ (m (F'.fl.fvec b)))
    (uu uu' : Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) D.host.E) (huu : IsUpUni uu) (huu' : IsUpUni uu')
    (hfr : ∀ b, ν (F.fl.fvec b) = ∑ c, uu c b • F.fl.fvec c) (hfr' : ∀ b, m (F'.fl.fvec b) = ∑ c, uu' c b • F'.fl.fvec c)
    (j i : Fin (D.R.rS + 1)) (hji : j < i) :
    uu j i - uu' j i ∈ Formalism.L2.SG.Pf.StabIntSh.qdPow D ((i : ℕ) - (j : ℕ)) := by
  have h1 : uu j i ∈ Formalism.L2.SG.Pf.StabIntSh.ddPow D ((i : ℕ) - (j : ℕ)) := Formalism.L2.SG.Pf.ZsVolLat.frame_entry F Λ hX hz ν hν uu huu hfr j i hji
  have h2 : uu' j i ∈ Formalism.L2.SG.Pf.StabIntSh.ddPow D ((i : ℕ) - (j : ℕ)) :=
    Formalism.L2.SG.Pf.ZsVolLat.frame_entry F' Λ hX' hz' m hm uu' huu' hfr' j i hji
  have hd : uu j i - uu' j i ∈ Formalism.L2.SG.Pf.StabIntSh.ddPow D ((i : ℕ) - (j : ℕ)) :=
    (FractionalIdeal.mem_coe).1 (Submodule.sub_mem _ ((FractionalIdeal.mem_coe).2 h1) ((FractionalIdeal.mem_coe).2 h2))
  refine (FractionalIdeal.mem_coe).1 (Formalism.L2.SG.Pf.ZsVolLat.mem_of_loc _ _ fun P => ?_)
  by_cases hgP : ((Lat.gS D : ℕ) : 𝓞 D.host.E) ∈ P.asIdeal
  · obtain ⟨t, ht, o, ho⟩ := cong_at_pair F F' Λ hc hc' hz' hadm ν m hν hm F'' hadm'' hf'' uu uu' huu huu' hfr hfr' P hgP j i hji
    refine ⟨t, ht, ?_⟩
    rw [ho]
    exact (FractionalIdeal.mem_coe).2 (Formalism.L2.SG.Pf.ZsVolLat.g_mul_mem (Formalism.L2.SG.Pf.ZsVolLat.o_mem_ddPow _ o))
  · refine ⟨((Lat.gS D : ℕ) : 𝓞 D.host.E), hgP, ?_⟩
    have e : (((Lat.gS D : ℕ) : 𝓞 D.host.E) : D.host.E) = ((Lat.gS D : ℕ) : D.host.E) := by simp
    rw [e]
    exact (FractionalIdeal.mem_coe).2 (Formalism.L2.SG.Pf.ZsVolLat.g_mul_mem hd)

variable (M : ∀ p : LocalSplitGroups.PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep)
  (δ : ∀ p : LocalSplitGroups.PlF D, (D.s.atP p).Fp) (u u' : D.what₂.Word)
  (F0 : FlagG (VS D) D.R.rS (Formalism.L2.SG.CntLocal.Tn u)) (what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V))

theorem moveCZ_holds : Formalism.L2.SG.Pf.ZsVolAct.MoveCZ M δ u u' F0 what₂ := by
  intro γ w F' L U hH a' b ha hb hst hES
  obtain ⟨hA, -, hR, hP, hE, hN⟩ := hH
  have hΛ : IsRowLat D F0 γ.lam := hR.1 γ.lam γ.mem
  have h' := Formalism.L2.SG.Pf.TupAct.ez_of_normRep hΛ hE hN
  obtain ⟨p', e'⟩ := hN.1
  obtain ⟨ν, hν, m, hm, hνF, hmF, F2, hF2, hr2, hf2⟩ :=
    Formalism.L2.SG.Pf.TupAct.moveCZ hΛ hP.1.ne_zero hP.2.2.1.ne_zero ⟨δ, M, hA⟩ h' ⟨p', e'⟩ ha hb hst hES
  exact ⟨ν, m, F2, ha, hb, hst, hES, hν, hm, hνF, hmF, hF2, hr2, hf2⟩

theorem ontoCZ_holds : Formalism.L2.SG.Pf.ZsVolAct.OntoCZ M δ u u' F0 what₂ := by
  intro γ w F' L U hH F'' hF'' hr''
  obtain ⟨hA, -, hR, hP, hE, hN⟩ := hH
  have hΛ : IsRowLat D F0 γ.lam := hR.1 γ.lam γ.mem
  obtain ⟨_, ⟨_, _, hLift, hConv⟩, hXF⟩ := hΛ
  obtain ⟨⟨⟨hLift', _, hFOK⟩, e'⟩, hAdm, _, _, _⟩ := hN
  obtain ⟨p'', e''⟩ := hr''
  obtain ⟨n, hn, m, hm, hfr, -⟩ := (_root_.term_eq_iff_relation D u u' F0 γ.lam (hR.1 γ.lam γ.mem)
    ⟨F', ⟨hLift', ‹_›, hFOK⟩⟩ ⟨F'', p''⟩).1 (e'.trans e''.symm)
  have hν : n⁻¹ ∈ NLam γ.lam (lf D F0) := Formalism.L2.SG.Pf.nlamPf_inv hn
  have hf'' : ∀ b, F''.fl.fvec b = (n⁻¹)⁻¹ (m (F'.fl.fvec b)) := fun b => by rw [inv_inv]; exact hfr b
  have hν0 := hν
  have hm0 := hm
  obtain ⟨⟨hisoν, hgν⟩, hf1, hf2⟩ := hν
  obtain ⟨uu, huu, hu⟩ := Formalism.L2.SG.Pf.StabilizerIndexVolumes.tri_exists F0 n⁻¹ hf1 hf2
  obtain ⟨⟨hisom, hgm⟩, hg1, hg2⟩ := hm
  obtain ⟨uu', huu', hu'⟩ := Formalism.L2.SG.Pf.StabilizerIndexVolumes.tri_exists F'.fl m hg1 hg2
  have hνΛ : ∀ v ∈ γ.lam, n⁻¹ v ∈ γ.lam := fun v hv => by
    rw [← hgν]; exact Submodule.mem_map_of_mem hv
  have hmΛ : ∀ v ∈ γ.lam, m v ∈ γ.lam := fun v hv => by
    rw [← hgm]; exact Submodule.mem_map_of_mem hv
  have hdet : IsUnit uu.conjTranspose.det := by
    rw [Formalism.L2.SG.Pf.StabilizerIndexVolumes.lo_det (Formalism.L2.SG.Pf.StabilizerIndexVolumes.lo_conjT huu)]; exact isUnit_one
  let a' : PairVal.GLR D := Matrix.nonsingInvUnit uu.conjTranspose hdet
  have ha' : (a' : PairVal.MatR D) = uu.conjTranspose := rfl
  have hSS : Formalism.L2.SG.Pf.StabilizerIndexVolumes.sgnM (K := D.host.E) D.R.rS * Formalism.L2.SG.Pf.StabilizerIndexVolumes.sgnM D.R.rS = 1 :=
    Formalism.L2.SG.Pf.AtPt.sg_sq D.R.rS
  let b : PairVal.MatR D := Formalism.L2.SG.Pf.ZsVolAct.sbs uu'
  have hsbs : Formalism.L2.SG.Pf.ZsVolAct.sbs b = uu' := by
    simp only [b, Formalism.L2.SG.Pf.ZsVolAct.sbs, Matrix.mul_assoc]
    rw [hSS, Matrix.mul_one, ← Matrix.mul_assoc, hSS, Matrix.one_mul]
  have hbU : IsUpUni b := by
    intro i j
    simp only [b, Formalism.L2.SG.Pf.ZsVolAct.sbs, Formalism.L2.SG.Pf.StabilizerIndexVolumes.sgnM, Matrix.mul_diagonal, Matrix.diagonal_mul]
    refine ⟨fun h => by rw [(huu' i j).1 h, mul_zero, zero_mul], fun h => ?_⟩
    subst h
    rw [(huu' i i).2 rfl, mul_one, ← pow_add, ← two_mul, pow_mul]
    simp
  have hiso : ∀ x y, (VS D).hT ((n⁻¹) x) ((n⁻¹) y) = (VS D).hT x y := hisoν
  have hZ1 : uu.conjTranspose * ZhatL (lf D F0) F' * uu' = ZhatL (lf D F0) F' := by
    have hZ'' : ZhatL (lf D F0) F'' = ZhatL (lf D F0) F' := hF''.2.2.2.2
    funext a c
    rw [← Formalism.L2.SG.Pf.TupLift.zhat_lift (lf D F0) F' hiso hu hu' a c, ← hZ'']
    show (VS D).hT (F0.fvec a) ((n⁻¹)⁻¹ (m (F'.fl.fvec c))) = (VS D).hT (F0.fvec a) (F''.fl.fvec c)
    rw [hf'' c]
  have hadm : ∀ b, ModG (VS D) γ.lam (Lat.gS D) (F'.fl.fvec b - (lf D F0).fl.fvec b) := fun b => by
    have h := hAdm.2.2 b
    rwa [Formalism.L2.SG.Pf.TupOrb.frameAct_one'] at h
  have hadm'' : ∀ b, ModG (VS D) γ.lam (Lat.gS D) (F''.fl.fvec b - (lf D F0).fl.fvec b) := fun b => by
    have h := hF''.2.1.2.2 b
    rwa [Formalism.L2.SG.Pf.TupOrb.frameAct_one'] at h
  refine ⟨a', b, n⁻¹, m, ?_, hbU, ?_, ?_, hν0, hm0, ?_, ?_, hF'', ⟨p'', e''⟩, hf''⟩
  · rw [ha']; exact Formalism.L2.SG.Pf.StabilizerIndexVolumes.lo_conjT huu
  · rw [ha', Formalism.L2.SG.Pf.AtPt.zhatOM_eq]
    calc uu.conjTranspose * (ZhatL (lf D F0) F' * Formalism.L2.SG.Pf.AtPt.Sg D.host.E D.R.rS) * b
        = uu.conjTranspose * ZhatL (lf D F0) F' * (Formalism.L2.SG.Pf.AtPt.Sg D.host.E D.R.rS * b) := by
          simp only [Matrix.mul_assoc]
      _ = uu.conjTranspose * ZhatL (lf D F0) F' * uu' * Formalism.L2.SG.Pf.AtPt.Sg D.host.E D.R.rS := by
          have : Formalism.L2.SG.Pf.AtPt.Sg D.host.E D.R.rS * b = uu' * Formalism.L2.SG.Pf.AtPt.Sg D.host.E D.R.rS := by
            simp only [b, Formalism.L2.SG.Pf.ZsVolAct.sbs, ← Matrix.mul_assoc]
            show Formalism.L2.SG.Pf.StabilizerIndexVolumes.sgnM D.R.rS * Formalism.L2.SG.Pf.StabilizerIndexVolumes.sgnM D.R.rS * uu' * Formalism.L2.SG.Pf.StabilizerIndexVolumes.sgnM D.R.rS = _
            rw [hSS, Matrix.one_mul]
            rfl
          rw [this]; simp only [Matrix.mul_assoc]
      _ = ZhatL (lf D F0) F' * Formalism.L2.SG.Pf.AtPt.Sg D.host.E D.R.rS := by rw [hZ1]
  · intro i j hji
    have hk : ((i : ℕ) - (j : ℕ)) ≤ D.R.rS := by have := i.2; omega
    have h1 := Formalism.L2.SG.Pf.ZsVolLat.frame_entry (lf D F0) γ.lam hXF hLift.1 n⁻¹ hνΛ uu huu hu j i hji
    have h2 := Formalism.L2.SG.Pf.ZsVolLat.frame_entry F' γ.lam hFOK.2 hLift'.1 m hmΛ uu' huu' hu' j i hji
    have h3 := cong_glob_pair (lf D F0) F' γ.lam hConv hFOK.1 hXF hFOK.2 hLift.1 hLift'.1 hadm n⁻¹ m hνΛ hmΛ F''
      hadm'' hf'' uu uu' huu huu' hu hu' j i hji
    rw [ha']
    simp only [b, Formalism.L2.SG.Pf.ZsVolAct.sbs]
    rw [Matrix.conjTranspose_apply, Formalism.L2.SG.Pf.ZsVolLat.bt_sgn, Formalism.L2.SG.Pf.ZsVolLat.star_conjF]
    refine ⟨Formalism.L2.SG.Pf.ZsVolLat.conj_ddPow δ M hA hk h1, h2, ?_⟩
    rw [← map_sub]
    exact Formalism.L2.SG.Pf.ZsVolLat.conj_qdPow δ M hA hk h3
  · intro c
    rw [ha', Matrix.conjTranspose_conjTranspose]
    exact hu c
  · intro c
    rw [hsbs]
    exact hu' c

end Formalism.L2.SG.Pf.TupActB

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupActB =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FibMp =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FibMp", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexBCongruence\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolAct\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.DiagMulOfBt\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.TermDefPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.MemOrthOf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolFib\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolKey\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf.ZsVolFib

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermDef Formalism.L2.SG.PairVal
  Formalism.L2.SG.Pf.ZsVolAct Matrix
open Classical

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : Formalism.BasicNotions.D7} (u u' : D.what₂.Word) (F0 : FlagG (VS D) D.R.rS (CntLocal.Tn u))
  (what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V))

theorem fib_mp (γ : Term D u u' F0 what₂) (F' : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E)) (L : MatR D)
    (hL : IsLoUni L) (hGr : IsUnit (Formalism.L2.SG.Pf.StabilizerIndexVolumes.gramOf (Formalism.L2.SG.Pf.StabilizerIndexVolumes.gg F0 F'.fl)).det)
    (hZu : IsUnit (Zhat F0 F'.fl).det)
    (a₁ : GLR D) (b₁ : MatR D) (ν₁ m₁ : (VS D).V ≃ₗ[D.host.E] (VS D).V) (F₁ : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E))
    (a₂ : GLR D) (b₂ : MatR D) (ν₂ m₂ : (VS D).V ≃ₗ[D.host.E] (VS D).V) (F₂ : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E))
    (x₁ x₂ : GLR D) (hx₁ : (x₁ : MatR D) = L⁻¹ * (a₁ : MatR D) * L) (hx₂ : (x₂ : MatR D) = L⁻¹ * (a₂ : MatR D) * L)
    (hd₁ : LiftData u u' F0 what₂ γ F' a₁ b₁ ν₁ m₁ F₁) (hd₂ : LiftData u u' F0 what₂ γ F' a₂ b₂ ν₂ m₂ F₂)
    (hrel : CntLocal.NilradicalFlagMoved F0 γ.lam F₁ F₂) : x₁⁻¹ * x₂ ∈ PairVal.stabAut D u u' F0 what₂ γ F' L := by
  obtain ⟨ha₁, hb₁, -, -, hν₁, hm₁, hν₁f, hm₁f, -, -, hF₁⟩ := hd₁
  obtain ⟨ha₂, hb₂, -, -, hν₂, hm₂, hν₂f, hm₂f, -, -, hF₂⟩ := hd₂
  obtain ⟨n, ⟨hnN, hne, hnz⟩, hn1e, hn1z⟩ := hrel
  have hLd : IsUnit L.det := by rw [Formalism.L2.SG.Pf.StabilizerIndexVolumes.lo_det hL]; exact isUnit_one
  have ha₁d : IsUnit (a₁ : MatR D).det := by rw [Formalism.L2.SG.Pf.StabilizerIndexVolumes.lo_det ha₁]; exact isUnit_one
  have hU₁ := Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_conjT ha₁
  have hU₂ := Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_conjT ha₂
  have hV₁ : IsUpUni (sbs b₁) := Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_sgn hb₁
  have hV₂ : IsUpUni (sbs b₂) := Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_sgn hb₂
  have hnf : ∀ b, n (frame (lf D F0) b) = ∑ c, (1 : MatR D) c b • frame (lf D F0) c := by
    intro b
    rw [← act_one (frame (lf D F0)) b]
    refine Fin.lastCases ?_ (fun a => ?_) b
    · show n (F0.fvec (Fin.last _)) = F0.fvec (Fin.last _)
      simp only [FlagG.fvec, Fin.snoc_last]
      exact hnz
    · show n (F0.fvec (Fin.castSucc a)) = F0.fvec (Fin.castSucc a)
      simp only [FlagG.fvec, Fin.snoc_castSucc]
      exact hne a
  have hnF : ∀ c, n (frame F₁ c) = frame F₂ c := by
    intro c
    refine Fin.lastCases ?_ (fun a => ?_) c
    · show n (F₁.fl.fvec (Fin.last _)) = F₂.fl.fvec (Fin.last _)
      simp only [FlagG.fvec, Fin.snoc_last]
      exact hn1z
    · show n (F₁.fl.fvec (Fin.castSucc a)) = F₂.fl.fvec (Fin.castSucc a)
      simp only [FlagG.fvec, Fin.snoc_castSucc]
      exact hn1e a
  set t : (VS D).V ≃ₗ[D.host.E] (VS D).V := ν₂ * n * ν₁⁻¹ with ht
  have htN : t ∈ NLam γ.lam (lf D F0) :=
    Formalism.L2.SG.Pf.nlamPf_mul (Formalism.L2.SG.Pf.nlamPf_mul hν₂ hnN) (Formalism.L2.SG.Pf.nlamPf_inv hν₁)
  set Uq : MatR D := (a₂ : MatR D).conjTranspose * 1 * ((a₁ : MatR D).conjTranspose)⁻¹ with hUq
  have htf : ∀ b, t (frame (lf D F0) b) = ∑ c, Uq c b • frame (lf D F0) c :=
    act_mul _ _ _ _ _ (act_mul _ _ _ _ _ hν₂f hnf) (act_inv' _ ν₁ _ hU₁ hν₁f)
  have htm : ∀ b, t (m₁ (frame F' b)) = m₂ (frame F' b) := by
    intro b
    show ν₂ (n (ν₁⁻¹ (m₁ (frame F' b)))) = _
    rw [← hF₁ b, hnF b, hF₂ b]
    show (ν₂ * ν₂⁻¹) (m₂ (frame F' b)) = _
    rw [mul_inv_cancel]
    rfl
  have htf' := act_quot (frame F') t m₁ m₂ (sbs b₁) (sbs b₂) hV₁ hm₁f hm₂f htm
  have hiso : ∀ x y, (VS D).hT (t x) (t y) = (VS D).hT x y := ((Formalism.L2.SG.Pf.isAutLam_iff _ t).1 htN.1).1
  have hsX : ∀ x, (∀ i, (VS D).hT (F0.e i) x = 0) → t x - x ∈ Submodule.span D.host.E (Set.range F0.e) :=
    fun x hx => htN.2.2 x (mem_orth_of F0 x hx)
  have hUp : IsUpUni Uq :=
    Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_mul (Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_mul hU₂ Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_one) (Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_inv hU₁)
  have hVp : IsUpUni (sbs b₂ * (sbs b₁)⁻¹) := Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_mul hV₂ (Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_inv hV₁)
  obtain ⟨hflag, horth⟩ := Formalism.L2.SG.Pf.ZsVolKey.nlam_of_frames F0 F'.fl hGr hZu t hiso _ _ hUp hVp htf htf' hsX
  have htN' : t ∈ NLam γ.lam F' := ⟨htN.1, fun j x hx => hflag j x hx, fun x hx => horth x (orth_e F'.fl x hx)⟩
  refine Subgroup.subset_closure ⟨t, ⟨htN, htN'⟩, Uq, htf, ?_⟩
  rw [hUq, Matrix.mul_one]
  exact img_quot L _ _ hLd ha₁d x₁ x₂ hx₁ hx₂

end Formalism.L2.SG.Pf.ZsVolFib

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FibMp =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FibMpr =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FibMpr", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolAct\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.DiagMulOfBt\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexBCongruence\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.TermDefPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.MemOrthOf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolFib\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf.ZsVolFib

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermDef Formalism.L2.SG.PairVal
  Formalism.L2.SG.Pf.ZsVolAct Matrix
open Classical

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : Formalism.BasicNotions.D7} (u u' : D.what₂.Word) (F0 : FlagG (VS D) D.R.rS (CntLocal.Tn u))
  (what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V))

theorem zv (Z a b : MatR D) (h : a * ZhatOM Z * b = ZhatOM Z) : a * Z * sbs b = Z := by
  rw [Formalism.L2.SG.Pf.StabilizerIndexVolumes.zhatOM_eq] at h
  unfold sbs
  calc a * Z * (Formalism.L2.SG.Pf.StabilizerIndexVolumes.sgnM D.R.rS * b * Formalism.L2.SG.Pf.StabilizerIndexVolumes.sgnM D.R.rS) =
      a * (Z * Formalism.L2.SG.Pf.StabilizerIndexVolumes.sgnM D.R.rS) * b * Formalism.L2.SG.Pf.StabilizerIndexVolumes.sgnM D.R.rS := by simp only [Matrix.mul_assoc]
    _ = Z := by rw [h, Matrix.mul_assoc, Formalism.L2.SG.Pf.StabilizerIndexVolumes.sgnM_sq, Matrix.mul_one]

theorem uu'_eq (Z a₁ a₂ V₁ V₂ uu' : MatR D) (hZ : IsUnit Z.det) (ha₁ : IsUnit a₁.det)
    (hV₁ : IsUnit V₁.det) (hV₂ : IsUnit V₂.det)
    (h₁ : a₁ * Z * V₁ = Z) (h₂ : a₂ * Z * V₂ = Z) (hc : a₁⁻¹ * a₂ * Z * uu' = Z) : uu' * V₁ = V₂ := by
  have e2 : a₂ * Z = Z * V₂⁻¹ := by
    calc a₂ * Z = a₂ * Z * V₂ * V₂⁻¹ := by rw [Matrix.mul_nonsing_inv_cancel_right _ _ hV₂]
      _ = Z * V₂⁻¹ := by rw [h₂]
  have e3 : a₁⁻¹ * Z = Z * V₁ := by
    calc a₁⁻¹ * Z = a₁⁻¹ * (a₁ * Z * V₁) := by rw [h₁]
      _ = Z * V₁ := by rw [Matrix.mul_assoc, Matrix.nonsing_inv_mul_cancel_left _ _ ha₁]
  have e4 : Z * (V₁ * V₂⁻¹ * uu') = Z * 1 := by
    rw [Matrix.mul_one]
    calc Z * (V₁ * V₂⁻¹ * uu') = a₁⁻¹ * Z * V₂⁻¹ * uu' := by rw [e3]; simp only [Matrix.mul_assoc]
      _ = a₁⁻¹ * (a₂ * Z) * uu' := by rw [e2]; simp only [Matrix.mul_assoc]
      _ = a₁⁻¹ * a₂ * Z * uu' := by simp only [Matrix.mul_assoc]
      _ = Z := hc
  have e5 : V₁ * V₂⁻¹ * uu' = 1 := by
    have := congrArg (fun M => Z⁻¹ * M) e4
    simpa only [Matrix.nonsing_inv_mul_cancel_left _ _ hZ] using this
  have e6 : uu' = V₂ * V₁⁻¹ := by
    calc uu' = (V₂ * V₁⁻¹) * (V₁ * V₂⁻¹ * uu') := by
          rw [Matrix.mul_assoc V₂, ← Matrix.mul_assoc V₁⁻¹, ← Matrix.mul_assoc V₁⁻¹,
            Matrix.nonsing_inv_mul _ hV₁, Matrix.one_mul, Matrix.mul_nonsing_inv_cancel_left _ _ hV₂]
      _ = V₂ * V₁⁻¹ := by rw [e5, Matrix.mul_one]
  rw [e6, Matrix.mul_assoc, Matrix.nonsing_inv_mul _ hV₁, Matrix.mul_one]

theorem fib_mpr (γ : Term D u u' F0 what₂) (F' : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E)) (L : MatR D)
    (hL : IsLoUni L) (hT0 : ((Tu D u : ℕ) : D.host.E) ≠ 0) (hZu : IsUnit (Zhat F0 F'.fl).det)
    (a₁ : GLR D) (b₁ : MatR D) (ν₁ m₁ : (VS D).V ≃ₗ[D.host.E] (VS D).V) (F₁ : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E))
    (a₂ : GLR D) (b₂ : MatR D) (ν₂ m₂ : (VS D).V ≃ₗ[D.host.E] (VS D).V) (F₂ : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E))
    (x₁ x₂ : GLR D) (hx₁ : (x₁ : MatR D) = L⁻¹ * (a₁ : MatR D) * L) (hx₂ : (x₂ : MatR D) = L⁻¹ * (a₂ : MatR D) * L)
    (hd₁ : LiftData u u' F0 what₂ γ F' a₁ b₁ ν₁ m₁ F₁) (hd₂ : LiftData u u' F0 what₂ γ F' a₂ b₂ ν₂ m₂ F₂)
    (hh : x₁⁻¹ * x₂ ∈ PairVal.stabAut D u u' F0 what₂ γ F' L) : CntLocal.NilradicalFlagMoved F0 γ.lam F₁ F₂ := by
  obtain ⟨ha₁, hb₁, hZ₁, -, hν₁, -, hν₁f, hm₁f, -, -, hF₁⟩ := hd₁
  obtain ⟨ha₂, hb₂, hZ₂, -, hν₂, -, hν₂f, hm₂f, -, -, hF₂⟩ := hd₂
  obtain ⟨s, ⟨hsF, hsF'⟩, uu, hu, hx⟩ := (mem_stabAut_iff u u' F0 what₂ γ F' L hL hT0 _).1 hh
  have hLd : IsUnit L.det := by rw [Formalism.L2.SG.Pf.StabilizerIndexVolumes.lo_det hL]; exact isUnit_one
  have ha₁d : IsUnit (a₁ : MatR D).det := by rw [Formalism.L2.SG.Pf.StabilizerIndexVolumes.lo_det ha₁]; exact isUnit_one
  have hU₁ := Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_conjT ha₁
  have hU₂ := Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_conjT ha₂
  have hV₁ : IsUpUni (sbs b₁) := Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_sgn hb₁
  have hV₂ : IsUpUni (sbs b₂) := Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_sgn hb₂
  have hV₁d : IsUnit (sbs b₁).det := by rw [Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_det hV₁]; exact isUnit_one
  have hV₂d : IsUnit (sbs b₂).det := by rw [Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_det hV₂]; exact isUnit_one
  have hU₁d : IsUnit ((a₁ : MatR D).conjTranspose).det := by rw [Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_det hU₁]; exact isUnit_one

  have hsF0 := hsF
  obtain ⟨hAut, hf1, hf2⟩ := hsF
  obtain ⟨-, hg1, hg2⟩ := hsF'
  have hiso : ∀ x y, (VS D).hT (s x) (s y) = (VS D).hT x y := ((Formalism.L2.SG.Pf.isAutLam_iff _ s).1 hAut).1
  obtain ⟨uu0, huu0, hu0⟩ := Formalism.L2.SG.Pf.StabilizerIndexVolumes.tri_exists F0 s hf1 hf2
  have heq : uu = uu0 :=
    Formalism.L2.SG.Pf.StabilizerIndexVolumes.coef_unique (Formalism.L2.SG.Pf.StabilizerIndexVolumes.frame_indep F0 hT0) (fun b => s (F0.fvec b)) uu uu0 hu hu0
  subst heq
  obtain ⟨uu', -, hu'⟩ := Formalism.L2.SG.Pf.StabilizerIndexVolumes.tri_exists F'.fl s hg1 hg2
  have hZc := Formalism.L2.SG.Pf.StabilizerIndexVolumes.zhat_conj F0 F'.fl s hiso uu uu' hu0 hu'

  have himg := img_quot L _ _ hLd ha₁d x₁ x₂ hx₁ hx₂
  rw [hx] at himg
  have hcanc : uu.conjTranspose = ((a₂ : MatR D).conjTranspose * ((a₁ : MatR D).conjTranspose)⁻¹).conjTranspose := by
    have := congrArg (fun M => L * M * L⁻¹) himg
    simp only [Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hLd, Matrix.mul_one] at this
    simpa only [← Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hLd, Matrix.one_mul] using this
  have huu : uu = (a₂ : MatR D).conjTranspose * ((a₁ : MatR D).conjTranspose)⁻¹ := by
    have := congrArg Matrix.conjTranspose hcanc
    simpa only [Matrix.conjTranspose_conjTranspose] using this
  have hcT : uu.conjTranspose = ((a₁ : MatR D))⁻¹ * (a₂ : MatR D) := by
    rw [hcanc, Matrix.conjTranspose_mul, Matrix.conjTranspose_nonsing_inv, Matrix.conjTranspose_conjTranspose,
      Matrix.conjTranspose_conjTranspose]
  have hc : ((a₁ : MatR D))⁻¹ * (a₂ : MatR D) * Zhat F0 F'.fl * uu' = Zhat F0 F'.fl := by
    rw [← hcT]; exact hZc.symm
  have hmove := uu'_eq _ _ _ _ _ uu' hZu ha₁d hV₁d hV₂d (zv _ _ _ hZ₁) (zv _ _ _ hZ₂) hc

  set n : (VS D).V ≃ₗ[D.host.E] (VS D).V := ν₂⁻¹ * s * ν₁ with hn
  have hnN : n ∈ NLam γ.lam (lf D F0) :=
    Formalism.L2.SG.Pf.nlamPf_mul (Formalism.L2.SG.Pf.nlamPf_mul (Formalism.L2.SG.Pf.nlamPf_inv hν₂) hsF0) hν₁
  have hnf := act_mul _ _ _ _ _ (act_mul _ _ _ _ _ (act_inv' _ ν₂ _ hU₂ hν₂f) hu0) hν₁f
  have hone : ((a₂ : MatR D).conjTranspose)⁻¹ * uu * (a₁ : MatR D).conjTranspose = 1 := by
    rw [huu, Matrix.mul_assoc, Matrix.nonsing_inv_mul_cancel_right _ _ hU₁d,
      Matrix.nonsing_inv_mul _ (by rw [Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_det hU₂]; exact isUnit_one)]
  rw [hone] at hnf
  have hnf' : ∀ b, n (F0.fvec b) = F0.fvec b := fun b => by
    rw [show F0.fvec b = frame (lf D F0) b from rfl, hnf b, ← act_one]
    rfl
  refine ⟨n, ⟨hnN, fun a => ?_, ?_⟩, fun a => ?_, ?_⟩
  · have := hnf' (Fin.castSucc a); simpa [FlagG.fvec, Fin.snoc_castSucc] using this
  · have := hnf' (Fin.last _); simpa [FlagG.fvec, Fin.snoc_last] using this
  all_goals
    have hsm : ∀ c, s (m₁ (frame F' c)) = m₂ (frame F' c) := fun c => by
      have := act_mul (frame F') s m₁ uu' (sbs b₁) hu' hm₁f c
      rw [hmove] at this
      rw [hm₂f c]
      exact this
    have hnF : ∀ c, n (frame F₁ c) = frame F₂ c := fun c => by
      rw [hF₁ c, hF₂ c]
      show ν₂⁻¹ (s (ν₁ (ν₁⁻¹ (m₁ (frame F' c))))) = _
      rw [show ν₁ (ν₁⁻¹ (m₁ (frame F' c))) = (ν₁ * ν₁⁻¹) (m₁ (frame F' c)) from rfl, mul_inv_cancel]
      show ν₂⁻¹ (s (m₁ (frame F' c))) = _
      rw [hsm c]
  · have := hnF (Fin.castSucc a); simpa [frame, FlagG.fvec, Fin.snoc_castSucc] using this
  · have := hnF (Fin.last _); simpa [frame, FlagG.fvec, Fin.snoc_last] using this

end Formalism.L2.SG.Pf.ZsVolFib

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FibMpr =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolAsm =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolAsm", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolAct\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.DiagMulOfBt\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.PtMatIsUnit\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.TermDefPf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.GenericRatioOfBoundHolds\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FibMp\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FibMpr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexBCongruence\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf.ZsVolAsm

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermDef Formalism.L2.SG.PairVal
  Formalism.L2.SG.Pf.ZsVolAct Formalism.L2.SG.Pf.ZsVolCut Matrix
open Classical

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : Formalism.BasicNotions.D7} (M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep)
  (δ : ∀ p : PlF D, (D.s.atP p).Fp) (u u' : D.what₂.Word)
  (F0 : FlagG (VS D) D.R.rS (CntLocal.Tn u)) (what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V))

theorem fibreIndex_holds : FibreCZ M δ u u' F0 what₂ := by
  intro γ w F' L U hH a₁ b₁ ν₁ m₁ F₁ a₂ b₂ ν₂ m₂ F₂ x₁ x₂ hx₁ hx₂ hd₁ hd₂
  obtain ⟨hA, hT, hR, hP, hE, hN⟩ := hH
  obtain ⟨hRep, hAdm, hL, hU, hZo⟩ := hN
  have hΛ : IsRowLat D F0 γ.lam := hR.1 γ.lam γ.mem
  have hT0 : ((Tu D u : ℕ) : D.host.E) ≠ 0 := Nat.cast_ne_zero.2 hP.1.ne_zero
  have hZu : IsUnit (Zhat F0 F'.fl).det := by
    have hZ1 : Zhat F0 F'.fl * Formalism.L2.SG.Pf.StabilizerIndexVolumes.sgnM D.R.rS = L * ptMat w * U := by
      rw [← Formalism.L2.SG.Pf.StabilizerIndexVolumes.zhatOM_eq]; exact hZo
    have hZe : Zhat F0 F'.fl = L * ptMat w * U * Formalism.L2.SG.Pf.StabilizerIndexVolumes.sgnM D.R.rS := by
      rw [← hZ1, Matrix.mul_assoc, Formalism.L2.SG.Pf.StabilizerIndexVolumes.sgnM_sq, Matrix.mul_one]
    rw [isUnit_iff_ne_zero, hZe, Matrix.det_mul, Matrix.det_mul, Matrix.det_mul, Formalism.L2.SG.Pf.StabilizerIndexVolumes.lo_det hL,
      Formalism.L2.SG.Pf.StabilizerIndexVolumes.up_det hU, one_mul, mul_one]
    refine mul_ne_zero (Formalism.L2.SG.Pf.StabilizerIndexVolumes.ptMat_det w) ?_
    intro h0
    have := congrArg Matrix.det (Formalism.L2.SG.Pf.StabilizerIndexVolumes.sgnM_sq (K := D.host.E) (r := D.R.rS))
    rw [Matrix.det_mul, h0, zero_mul, Matrix.det_one] at this
    exact zero_ne_one this
  have hG₁ : Gval (lf D F0) F' ≠ 0 := by
    obtain ⟨Fa, ⟨pa, ea⟩, hGa, -⟩ := hE.2
    obtain ⟨p₁, e₁⟩ := hRep
    have hdca := (_root_.term_eq_iff_relation D u u' F0 γ.lam hΛ ⟨Fa, pa⟩ ⟨F', p₁⟩).1 (ea.trans e₁.symm)
    rw [Formalism.L2.SG.Pf.gval_rel (lf D F0) hdca]
    exact hGa
  have hGr := Formalism.L2.SG.Pf.StabilizerIndexVolumes.gram_gg_unit F0 F'.fl (star_natCast _) (star_natCast _) hZu hG₁
  exact ⟨Formalism.L2.SG.Pf.ZsVolFib.fib_mp u u' F0 what₂ γ F' L hL hGr hZu a₁ b₁ ν₁ m₁ F₁ a₂ b₂ ν₂ m₂ F₂ x₁ x₂ hx₁ hx₂
      hd₁ hd₂,
    Formalism.L2.SG.Pf.ZsVolFib.fib_mpr u u' F0 what₂ γ F' L hL hT0 hZu a₁ b₁ ν₁ m₁ F₁ a₂ b₂ ν₂ m₂ F₂ x₁ x₂ hx₁ hx₂
      hd₁ hd₂⟩

end Formalism.L2.SG.Pf.ZsVolAsm

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolAsm =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.OrbitStabilizerIndexHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.OrbitStabilizerIndexHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolOrb\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.DiagMulOfBt\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.IsUpUniMul\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabilizerInCongruenceHolds\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupActB\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.TupOrb\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolAsm\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ZsVolShape\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf.ZsVolAsm

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermDef Formalism.L2.SG.PairVal
  Formalism.L2.SG.Pf.ZsVolAct Formalism.L2.SG.Pf.ZsVolCut Matrix
open Classical

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : Formalism.BasicNotions.D7} (M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep)
  (δ : ∀ p : PlF D, (D.s.atP p).Fp) (u u' : D.what₂.Word)
  (F0 : FlagG (VS D) D.R.rS (CntLocal.Tn u)) (what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V))

theorem orbitAction_holds : Formalism.L2.SG.Pf.ZsVolOrb.OrbActE M δ u u' F0 what₂ := by
  intro γ w F' L U hH
  have hL : IsLoUni L := hH.2.2.2.2.2.2.2.1
  have hLd : IsUnit L.det := by rw [Formalism.L2.SG.Pf.StabilizerIndexVolumes.lo_det hL]; exact isUnit_one
  set C := CZ M δ u u' (ZhatL (lf D F0) F') L with hC
  set S := (PairVal.stabAut D u u' F0 what₂ γ F' L).subgroupOf C with hS

  have hdat : ∀ g : C, ∃ (a' : GLR D) (b : MatR D) (ν m : (VS D).V ≃ₗ[D.host.E] (VS D).V)
      (F₂ : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E)),
      ((g : GLR D) : MatR D) = L⁻¹ * (a' : MatR D) * L ∧ LiftData u u' F0 what₂ γ F' a' b ν m F₂ := by
    intro g
    have hg := (Formalism.L2.SG.Pf.ZsVolGrp.mem_CZ M δ u u' _ L hLd g).1 g.2
    obtain ⟨a', ha, hlo, b, hb, hZ, hsh⟩ := (Formalism.L2.SG.Pf.ZsVolShape.mem_stZSet_iff M δ u u' hH.1 _ L g).1 hg
    obtain ⟨ν, m, F₂, hd⟩ := Formalism.L2.SG.Pf.TupActB.moveCZ_holds M δ u u' F0 what₂ γ w F' L U hH a' b hlo hb hZ hsh
    exact ⟨a', b, ν, m, F₂, ha, hd⟩
  choose A Bm Nu Mu F2 hAL hD using hdat
  set Z := ZhatL (lf D F0) F' with hZdef
  let cls : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E) → Set (LFlag (VS D) D.R.rS ((Tu D u' : ℕ) : D.host.E)) :=
    fun F => {F'' | F'' ∈ CntLocal.EZ (D := D) ((Tu D u' : ℕ) : D.host.E) F0 γ.lam Z ∧ CntLocal.NilradicalFlagMoved F0 γ.lam F F''}
  have hmem : ∀ g : C, cls (F2 g) ∈ PairVal.orbT D u u' F0 what₂ γ Z := fun g =>
    ⟨F2 g, (hD g).2.2.2.2.2.2.2.2.1, (hD g).2.2.2.2.2.2.2.2.2.1, rfl⟩
  let ψ : C → PairVal.orbT D u u' F0 what₂ γ Z := fun g => ⟨cls (F2 g), hmem g⟩
  have hcls : ∀ F₁ F₂ : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E),
      F₂ ∈ CntLocal.EZ (D := D) ((Tu D u' : ℕ) : D.host.E) F0 γ.lam Z →
      (cls F₁ = cls F₂ ↔ CntLocal.NilradicalFlagMoved F0 γ.lam F₁ F₂) := by
    intro F₁ F₂ h₂
    constructor
    · intro h
      have : F₂ ∈ cls F₂ := ⟨h₂, Formalism.L2.SG.Pf.TupOrb.n0rel_refl' γ.lam F₂⟩
      rw [← h] at this
      exact this.2
    · intro h
      ext F''
      constructor
      · rintro ⟨hE, h1⟩
        exact ⟨hE, Formalism.L2.SG.Pf.TupOrb.n0rel_trans (Formalism.L2.SG.Pf.TupOrb.n0rel_symm h) h1⟩
      · rintro ⟨hE, h2⟩
        exact ⟨hE, Formalism.L2.SG.Pf.TupOrb.n0rel_trans h h2⟩
  have hψ : ∀ g₁ g₂ : C, ψ g₁ = ψ g₂ ↔ g₁⁻¹ * g₂ ∈ S := by
    intro g₁ g₂
    rw [Subtype.ext_iff, hS, Subgroup.mem_subgroupOf, Subgroup.coe_mul, Subgroup.coe_inv]
    show cls (F2 g₁) = cls (F2 g₂) ↔ _
    rw [hcls _ _ (hD g₂).2.2.2.2.2.2.2.2.1]
    exact fibreIndex_holds M δ u u' F0 what₂ γ w F' L U hH (A g₁) (Bm g₁) (Nu g₁) (Mu g₁) (F2 g₁) (A g₂) (Bm g₂)
      (Nu g₂) (Mu g₂) (F2 g₂) g₁ g₂ (hAL g₁) (hAL g₂) (hD g₁) (hD g₂)
  let φ : C ⧸ S → PairVal.orbT D u u' F0 what₂ γ Z :=
    Quotient.lift ψ (fun a b h => (hψ a b).2 (QuotientGroup.leftRel_apply.1 h))
  have hinj : Function.Injective φ := by
    intro q₁ q₂
    induction q₁ using QuotientGroup.induction_on with
    | H a =>
    induction q₂ using QuotientGroup.induction_on with
    | H b =>
    intro h
    exact QuotientGroup.eq.2 ((hψ a b).1 h)
  have hsurj : Function.Surjective φ := by
    rintro ⟨O, hO⟩
    obtain ⟨F'', hEZ, hRep, rfl⟩ := hO
    obtain ⟨a', b, ν, m, hd⟩ := Formalism.L2.SG.Pf.TupActB.ontoCZ_holds M δ u u' F0 what₂ γ w F' L U hH F'' hEZ hRep
    have ha'd : IsUnit (a' : MatR D).det := by rw [Formalism.L2.SG.Pf.StabilizerIndexVolumes.lo_det hd.1]; exact isUnit_one
    have hdet : IsUnit (L⁻¹ * (a' : MatR D) * L).det := by
      rw [Matrix.det_mul, Matrix.det_mul]
      exact ((Matrix.isUnit_nonsing_inv_det L hLd).mul ha'd).mul hLd
    let y : GLR D := Matrix.nonsingInvUnit (L⁻¹ * (a' : MatR D) * L) hdet
    have hy : ((y : GLR D) : MatR D) = L⁻¹ * (a' : MatR D) * L := rfl
    have hyC : y ∈ C := (Formalism.L2.SG.Pf.ZsVolGrp.mem_CZ M δ u u' _ L hLd y).2
      ((Formalism.L2.SG.Pf.ZsVolShape.mem_stZSet_iff M δ u u' hH.1 _ L y).2 ⟨a', hy, hd.1, b, hd.2.1, hd.2.2.1, hd.2.2.2.1⟩)
    refine ⟨((⟨y, hyC⟩ : C) : C ⧸ S), ?_⟩
    show ψ ⟨y, hyC⟩ = _
    apply Subtype.ext
    show cls (F2 ⟨y, hyC⟩) = cls F''
    rw [hcls _ _ hEZ]
    refine (fibreIndex_holds M δ u u' F0 what₂ γ w F' L U hH (A ⟨y, hyC⟩) (Bm ⟨y, hyC⟩) (Nu ⟨y, hyC⟩) (Mu ⟨y, hyC⟩)
      (F2 ⟨y, hyC⟩) a' b ν m F'' y y (hAL ⟨y, hyC⟩) hy (hD ⟨y, hyC⟩) hd).2 ?_
    rw [inv_mul_cancel]
    exact Subgroup.one_mem _
  refine ⟨C ⧸ S, inferInstance, ((1 : C) : C ⧸ S), MulAction.stabilizer_quotient S, ⟨?_⟩⟩
  exact (Set.equivOfEq (MulAction.orbit_eq_univ C ((1 : C) : C ⧸ S))).trans
    ((Equiv.Set.univ _).trans (Equiv.ofBijective φ ⟨hinj, hsurj⟩))

theorem orbitStabilizerIndex_holds : OrbStabE M δ u u' F0 what₂ (CZ M δ u u') :=
  Formalism.L2.SG.Pf.ZsVolOrb.orbStabE_of_act M δ u u' F0 what₂ (orbitAction_holds M δ u u' F0 what₂)

theorem volIdxProd_of_prodE (hP : PrimeHyp D u (Tu D u')) (h : ProdE M δ u u' F0 what₂ (CZ M δ u u')) :
    Formalism.L2.SG.Pf.Coef.VolIdxProd M δ u u' F0 what₂ :=
  volIdxProd_of M δ u u' F0 what₂ hP (CZ M δ u u') (orbitStabilizerIndex_holds M δ u u' F0 what₂) h

end Formalism.L2.SG.Pf.ZsVolAsm

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.OrbitStabilizerIndexHolds =====
