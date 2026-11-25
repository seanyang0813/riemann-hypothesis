module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarIsomG
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarOmPart
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBwdBetaS
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBwdNA
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarNMove
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBwdBetaK
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfI
public import Formalism.SharpRestriction.CuspSpanNormBounds.IsPrimitiveSub
public import Formalism.HermitianLattices.HermitianLatticesProofs.DualBasic
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RatIota
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.IotaSurjectiveHolds
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfD
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SaturatedPf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfC
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfJ
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfL
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfG
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfF
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.Corank
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.TermDefPf
public import Formalism.PeriodIntegrals.ScalPairs
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarEquivalenceGeneral.ScalarFactorEqOneOfLe
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScalRelRepFree
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprPfC
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarCohPfF
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLocInB
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBwdBetaF
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaUniqueness.Lemmas
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarGlob
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarGramPair
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarMinors
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarOmLocPf
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PairCorankPositivity.FinrankOrthAddLe
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocFacts
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaUniqueness.GramNondeg
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarPairOrthogonal.MemThPairs
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarPairOrthogonal.XLeOrthXplus
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GenericityConstantDoubleCosets

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBetaRatA, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBetaRat, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFrameIotaA, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFrameIota, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfM, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprExistA, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprExistB, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprPfD, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprExist, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprClose, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FrGlobPOfInt

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBetaRatA =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBetaRatA", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarIsomG\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarOmPart\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBwdBetaS\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBwdNA\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarNMove\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaUniqueness.Lemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open Matrix Formalism.MainNotions.S Formalism.MainNotions.S.Lat

namespace Formalism.L2.SG.Pf.FrameGlobalPatching.FStar.BRat

open FsLA BwdBetaS OmP

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : Formalism.BasicNotions.HSpace E}

def projL {ι : Type*} [Fintype ι] [DecidableEq ι] (u : ι → S.V) : S.V →ₗ[E] S.V where
  toFun v := lin u (pc u v)
  map_add' x y := by rw [pc_add, lin_add]
  map_smul' t x := by rw [pc_smul, lin_smul, RingHom.id_apply]

def moveL {ι : Type*} [Fintype ι] [DecidableEq ι] (u u' : ι → S.V) : S.V →ₗ[E] S.V where
  toFun v := lin u' (pc u v)
  map_add' x y := by rw [pc_add, lin_add]
  map_smul' t x := by rw [pc_smul, lin_smul, RingHom.id_apply]

theorem pc_of_orth {ι : Type*} [Fintype ι] [DecidableEq ι] (u : ι → S.V) {y : S.V} (hy : ∀ k, S.hT (u k) y = 0) :
    pc u y = 0 := by
  have h0 : (fun k => S.hT (u k) y) = 0 := funext fun k => hy k
  rw [pc, h0, Matrix.mulVec_zero]

theorem lin_zero {ι : Type*} [Fintype ι] (u : ι → S.V) : lin u 0 = 0 := by simp [lin]

theorem isometry_extension_two {ι κ : Type*} [Fintype ι] [DecidableEq ι] [Fintype κ] [DecidableEq κ]
    (u u' : ι → S.V) (w : κ → S.V) (hG : gram S u' u' = gram S u u) (hdet : (gram S u u).det ≠ 0)
    (hdetw : (gram S w w).det ≠ 0) (hsp : ∀ i, u' i ∈ Submodule.span E (Set.range w))
    (hkey : ∀ y y', (∀ k, S.hT (u k) y = 0) → (∀ k, S.hT (u k) y' = 0) →
      S.hT (lin w (pc w y)) (lin w (pc w y')) = 0) :
    ∃ g : S.V ≃ₗ[E] S.V, (∀ x y, S.hT (g x) (g y) = S.hT x y) ∧ (∀ i, g (u i) = u' i) ∧
      (∀ y, (∀ k, S.hT (u k) y = 0) → g y = y - lin w (pc w y)) := by
  let P : S.V →ₗ[E] S.V := LinearMap.id - projL u
  let β : S.V →ₗ[E] S.V := (LinearMap.id - projL w) ∘ₗ P + moveL u u'
  have hβ : ∀ v, β v = ((v - lin u (pc u v)) - lin w (pc w (v - lin u (pc u v)))) + lin u' (pc u v) :=
    fun v => rfl
  have hsp' : ∀ c, lin u' c ∈ Submodule.span E (Set.range w) := fun c =>
    Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (hsp i)
  have hGe : ∀ i j, S.hT (u' i) (u' j) = S.hT (u i) (u j) := fun i j => congrFun (congrFun hG i) j
  have hiso : ∀ x y, S.hT (β x) (β y) = S.hT x y := by
    intro x y
    set x' := x - lin u (pc u x) with hx'
    set y' := y - lin u (pc u y) with hy'
    have hx'u : ∀ k, S.hT (u k) x' = 0 := fun k => hT_u_rem u hdet x k
    have hy'u : ∀ k, S.hT (u k) y' = 0 := fun k => hT_u_rem u hdet y k
    have hk := hkey x' y' hx'u hy'u
    rw [hβ, hβ]

    have t1 : S.hT (x' - lin w (pc w x')) (lin u' (pc u y)) = 0 := (hT_span_rem w hdetw x' _ (hsp' _)).2
    have t2 : S.hT (lin u' (pc u x)) (y' - lin w (pc w y')) = 0 := (hT_span_rem w hdetw y' _ (hsp' _)).1
    have t3 : S.hT (lin u' (pc u x)) (lin u' (pc u y)) = S.hT (lin u (pc u x)) (lin u (pc u y)) := by
      rw [hT_lin_lin, hT_lin_lin]; simp only [hGe]
    have t4 : S.hT (x' - lin w (pc w x')) (lin w (pc w y')) = 0 :=
      (hT_span_rem w hdetw x' _ (lin_sub w _)).2
    have t5 : S.hT (lin w (pc w x')) (y' - lin w (pc w y')) = 0 :=
      (hT_span_rem w hdetw y' _ (lin_sub w _)).1
    have t6 : S.hT (x' - lin w (pc w x')) (y' - lin w (pc w y')) = S.hT x' y' := by
      have e1 : S.hT (x' - lin w (pc w x')) (y' - lin w (pc w y')) =
          S.hT (x' - lin w (pc w x')) y' := by
        rw [map_sub, t4, sub_zero]
      have e2 : S.hT (lin w (pc w x')) y' = 0 := by
        have := t5
        rw [map_sub, hk, sub_zero] at this
        exact this
      rw [e1, map_sub S.hT x' (lin w (pc w x')), LinearMap.sub_apply, e2, sub_zero]
    have hxy : S.hT x y = S.hT x' y' + S.hT (lin u (pc u x)) (lin u (pc u y)) := by
      have dx : x = x' + lin u (pc u x) := by rw [hx']; abel
      have dy : y = y' + lin u (pc u y) := by rw [hy']; abel
      conv_lhs => rw [dx, dy]
      simp only [map_add (f := _), LinearMap.add_apply]
      rw [(hT_span_rem u hdet x _ (lin_sub u _)).2, (hT_span_rem u hdet y _ (lin_sub u _)).1]
      ring
    rw [← hx', ← hy']
    simp only [map_add (f := _), LinearMap.add_apply]
    rw [t1, t2, t3, t6, hxy]
    ring
  have hinj : Function.Injective β := by
    rw [← LinearMap.ker_eq_bot, eq_bot_iff]
    intro v hv
    rw [LinearMap.mem_ker] at hv
    refine (Submodule.mem_bot E).2 (S.nondeg.1 v fun y => ?_)
    rw [← hiso v y, hv, map_zero, LinearMap.zero_apply]
  have hbij : Function.Bijective β := ⟨hinj, LinearMap.injective_iff_surjective.1 hinj⟩
  refine ⟨LinearEquiv.ofBijective β hbij, hiso, fun i => ?_, fun y hy => ?_⟩
  · show β (u i) = u' i
    rw [hβ, pc_self u hdet, lin_single, lin_single, sub_self]
    have : pc w (0 : S.V) = 0 := by
      have := pc_smul w 0 0
      simpa using this
    rw [this, lin_zero, sub_zero, zero_add]
  · show β y = y - lin w (pc w y)
    rw [hβ, pc_of_orth u hy, lin_zero, lin_zero, sub_zero, add_zero]

variable {r : ℕ}

theorem norm_om_ne {TA TB : E} (A : FlagG S r TA) (B : FlagG S r TB) (hdet : (Zhat A B).det ≠ 0) {Ω : S.V}
    (hΩ : OmV A B Ω) (hG : Gflag A B ≠ 0) : 1 + TA * S.hT Ω Ω ≠ 0 := by
  have hx := om_zcoef A B hdet hΩ
  set c := (Zhat A B)⁻¹ (Fin.last r) (Fin.last r) with hc
  set x := Ω - c • B.z with hxd
  have hΩe : Ω = x + c • B.z := by rw [hxd]; abel
  have hxx : S.hT x x = 0 := NMoveP.hT_X_X B hx hx
  have hxz : S.hT x B.z = 0 := by
    have h := NMoveP.hT_f_X B (Fin.last r) hx
    rw [NMoveP.fvecL] at h
    rw [BwdNA.hsw S B.z x, h, star_zero]
  have hzx : S.hT B.z x = 0 := by
    have h := NMoveP.hT_f_X B (Fin.last r) hx
    rwa [NMoveP.fvecL] at h
  have hnorm : S.hT Ω Ω = star c * c * (-TB) := by
    rw [hΩe]
    simp only [map_add (f := _), LinearMap.add_apply, LinearMap.map_smulₛₗ, map_smul, LinearMap.smul_apply, hxx, hxz, hzx,
      B.z_norm, smul_eq_mul, starRingEnd_apply, mul_zero, zero_add, add_zero]
    ring
  have hcl : c = leadMinorE (Zhat A B) r / (Zhat A B).det := inv_last _
  intro h0
  apply hG
  unfold Gflag Dl
  rw [FsLA.leadMinorE_full]
  rw [hnorm, hcl, star_div₀] at h0
  have hs : star (Zhat A B).det ≠ 0 := star_ne_zero.2 hdet
  field_simp at h0
  linear_combination h0

theorem key_X {TA TB : E} (A : FlagG S r TA) (B : FlagG S r TB) (hdet : (Zhat A B).det ≠ 0) {Ω : S.V}
    (hΩ : OmV A B Ω) (hG : Gflag A B ≠ 0) {q : S.V}
    (hq : q ∈ Submodule.span E (Set.range (Sum.elim A.fvec B.fvec))) (hqA : ∀ a, S.hT (A.fvec a) q = 0)
    (hqΩ : S.hT Ω q = 0) : q ∈ A.X := by
  obtain ⟨x, hx, c, rfl⟩ := dec A B hdet hΩ hq hqA
  have hΩx : S.hT Ω x = 0 := by
    rw [BwdNA.hsw S x Ω]
    have : x ∈ A.X := hx
    have h := (PI.UnitaryGroupMassFormula.BetaLUniq.mem_orth S).1 (show Ω ∈ orth S A.X from ?_) x this
    · rw [h, star_zero]
    · refine (PI.UnitaryGroupMassFormula.BetaLUniq.mem_orth S).2 fun y hy => ?_
      change y ∈ Submodule.span E (Set.range A.e) at hy
      induction hy using Submodule.span_induction with
      | mem y hy =>
        obtain ⟨i, rfl⟩ := hy
        rw [← fvec_cs, hΩ.2]
        simp [Fin.castSucc_ne_last]
      | zero => simp
      | add a b _ _ ha hb => rw [map_add (f := _), LinearMap.add_apply, ha, hb, add_zero]
      | smul t y _ hy => rw [_root_.PI.ScalarPairDr.W.hT_smul_left, hy, mul_zero]
  have hΩz : S.hT Ω A.z = 1 := by
    rw [BwdNA.hsw S A.z Ω, ← fvec_last, hΩ.2]
    simp
  have h1 : S.hT Ω (x + c • (A.z + TA • Ω)) = c * (1 + TA * S.hT Ω Ω) := by
    rw [map_add (f := _), hΩx, zero_add, map_smul, map_add (f := _), map_smul, hΩz, smul_eq_mul, smul_eq_mul]
  rw [h1] at hqΩ
  have hc : c = 0 := (mul_eq_zero.1 hqΩ).resolve_right (norm_om_ne A B hdet hΩ hG)
  rw [hc, zero_smul, add_zero]
  exact hx

end Formalism.L2.SG.Pf.FrameGlobalPatching.FStar.BRat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBetaRatA =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBetaRat =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBetaRat", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBwdBetaK\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfI\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBetaRatA\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBwdBetaS\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarGlob\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarGramPair\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarMinors\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarNMove\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarOmLocPf\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaUniqueness.Lemmas\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PairCorankPositivity.FinrankOrthAddLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open Matrix NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermDef Formalism.L2.SG.DataCut
  Formalism.L2.SG.LsDatumB Formalism.L2.SG.TermLoc Formalism.L2.SG.Pf.PCount Formalism.L2.SG.Pf.FrameGlobalPatching Formalism.L2.SG.Saturated
  Formalism.L2.SG.Pf.ScalarFramePf

namespace Formalism.L2.SG.Pf.FrameGlobalPatching.FStar

open BwdCut BwdBetaCut OmP BwdBetaS

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : Formalism.BasicNotions.D7} (Zd : LocDat D) {u u' : D.what₂.Word} {F0 : FlagG (VS D) D.R.rS (CntLocal.Tn u)}
  {what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V)}

variable (u u' F0 what₂)



theorem betaRat_holds : BetaRat Zd u u' F0 what₂ := by
  intro γ Z F'₂ φ φ' Λ₂ hB
  obtain ⟨hC, hCtx, hS, -, -, hTH, hPD, hGv⟩ := hB
  obtain ⟨hZd, hZ₁d', hx'⟩ := starMinors_holds u u' F0 what₂ γ Z hCtx
  have hZ : ZhatL (lf D F0) F'₂ = Z := hS.1
  have hrow := hC.2.1.1 γ.lam γ.mem
  have hΛ : Submodule.IsFullLattice D.host.E γ.lam := hrow.1.1
  have hLlf : IsLift γ.lam (lf D F0) := hrow.2.1.2.2.1
  have hLrep : IsLift γ.lam (repF γ) := hPD.1
  set f := frame (lf D F0) with hf
  set g := frame (repF γ) with hg
  set F₂ := F'₂.fl with hF₂
  set Z₁ := starZh f g with hZ₁
  have hlm : ∀ l, leadMinorE Z₁ l = leadMinorE (starZh f (starFrame γ)) l := fun l => (star_frame_lead_minor γ l).symm
  have hZ₁d : Z₁.det ≠ 0 := by
    rw [← FsLA.leadMinorE_full, hlm, FsLA.leadMinorE_full]; exact hZ₁d'
  have hx : leadMinorE Z₁ D.R.rS * Z.det = leadMinorE Z D.R.rS * Z₁.det := by
    rw [hlm, ← FsLA.leadMinorE_full Z₁, hlm, FsLA.leadMinorE_full]; exact hx'
  have hfF : f = F0.fvec := rfl
  have hZe : ∀ a b, (VS D).hT (f a) (F₂.fvec b) = Z a b := fun a b => by rw [← hZ]; rfl
  have hg2 : FsLA.gram (VS D) f F₂.fvec = Zᴴ := by
    refine Matrix.ext fun i j => ?_
    simp only [FsLA.gram, Matrix.conjTranspose_apply]
    rw [← hZe, ← (LinearMap.isSymm_def.1 (VS D).herm) (f j) (F₂.fvec i), starRingEnd_apply]
  have h1g : ∀ a b, (a ≠ Fin.last D.R.rS ∨ b ≠ Fin.last D.R.rS) → (VS D).hT (g a) (g b) = 0 :=
    fun a b h => FsLA.gram_fvec_zero (repF γ).fl a b h
  have h2g : (VS D).hT (g (Fin.last D.R.rS)) (g (Fin.last D.R.rS)) = -((Tu D u' : ℕ) : D.host.E) :=
    FsLA.gram_fvec_last (repF γ).fl
  have h1f : ∀ a b, (a ≠ Fin.last D.R.rS ∨ b ≠ Fin.last D.R.rS) → (VS D).hT (f a) (f b) = 0 :=
    fun a b h => FsLA.gram_fvec_zero F0 a b h
  have h2f : (VS D).hT (f (Fin.last D.R.rS)) (f (Fin.last D.R.rS)) = -CntLocal.Tn u := FsLA.gram_fvec_last F0
  have hdZ1h : Z₁ᴴ.det ≠ 0 := by rw [Matrix.det_conjTranspose]; exact star_ne_zero.2 hZ₁d
  have hdg2 : (FsLA.gram (VS D) f F₂.fvec).det ≠ 0 := by
    rw [hg2, Matrix.det_conjTranspose]; exact star_ne_zero.2 hZd
  have hx2 : leadMinorE (FsLA.gram (VS D) f F₂.fvec) D.R.rS * Z₁ᴴ.det =
      leadMinorE Z₁ᴴ D.R.rS * (FsLA.gram (VS D) f F₂.fvec).det := by
    rw [hg2, FsLA.lm_conjTranspose, FsLA.lm_conjTranspose, Matrix.det_conjTranspose, Matrix.det_conjTranspose,
      ← star_mul', ← star_mul', mul_comm (leadMinorE Z D.R.rS), hx, mul_comm]
  obtain ⟨F₃, hZ3, hom3, hsp3⟩ := FsLA.frame_la F₂ f h1f h2f Z₁ᴴ hdZ1h hdg2 hx2
  set h := F₃.fvec with hh
  set uu := Sum.elim f g with huu
  set uu' := Sum.elim h F₂.fvec with huu'
  set ww := Sum.elim f F₂.fvec with hww
  have hZ3e : ∀ a b, (VS D).hT (F₂.fvec a) (h b) = Z₁ᴴ a b := fun a b => congrFun (congrFun hZ3 a) b
  have k1 : ∀ a b, (VS D).hT (h a) (h b) = (VS D).hT (f a) (f b) := by
    intro a b
    by_cases hab : a ≠ Fin.last D.R.rS ∨ b ≠ Fin.last D.R.rS
    · exact (FsLA.gram_fvec_zero F₃ a b hab).trans (FsLA.gram_fvec_zero F0 a b hab).symm
    · push_neg at hab
      rw [hab.1, hab.2]
      exact (FsLA.gram_fvec_last F₃).trans (FsLA.gram_fvec_last F0).symm
  have k2 : ∀ a b, (VS D).hT (h a) (F₂.fvec b) = (VS D).hT (f a) (g b) := by
    intro a b
    rw [← (LinearMap.isSymm_def.1 (VS D).herm) (F₂.fvec b) (h a), hZ3e, starRingEnd_apply,
      Matrix.conjTranspose_apply, star_star]
    rfl
  have k3 : ∀ a b, (VS D).hT (F₂.fvec a) (h b) = (VS D).hT (g a) (f b) := by
    intro a b
    rw [hZ3e, Matrix.conjTranspose_apply, ← starRingEnd_apply]
    exact (LinearMap.isSymm_def.1 (VS D).herm) (f b) (g a)
  have k4 : ∀ a b, (VS D).hT (F₂.fvec a) (F₂.fvec b) = (VS D).hT (g a) (g b) := by
    intro a b
    by_cases hab : a ≠ Fin.last D.R.rS ∨ b ≠ Fin.last D.R.rS
    · exact (FsLA.gram_fvec_zero F₂ a b hab).trans (h1g a b hab).symm
    · push_neg at hab
      rw [hab.1, hab.2]
      exact (FsLA.gram_fvec_last F₂).trans h2g.symm
  have hGr : FsLA.gram (VS D) uu' uu' = FsLA.gram (VS D) uu uu := by
    refine Matrix.ext fun i j => ?_
    rcases i with a | a <;> rcases j with b | b
    · exact k1 a b
    · exact k2 a b
    · exact k3 a b
    · exact k4 a b
  have hGg : (FsLA.gram (VS D) g F0.fvec).det * star (FsLA.gram (VS D) g F0.fvec).det -
      CntLocal.Tn u * ((Tu D u' : ℕ) : D.host.E) *
        (leadMinorE (FsLA.gram (VS D) g F0.fvec) D.R.rS * star (leadMinorE (FsLA.gram (VS D) g F0.fvec) D.R.rS))
        ≠ 0 := by
    rw [← FsLA.leadMinorE_full]; exact hGv
  have hdet : (FsLA.gram (VS D) uu uu).det ≠ 0 := FsLA.gram_pair_det F0 g h1g h2g hZ₁d hGg
  have hGZ : Gflag F0 F₂ ≠ 0 := hTH.1.2.2
  have hGg₂ : (FsLA.gram (VS D) F₂.fvec F0.fvec).det * star (FsLA.gram (VS D) F₂.fvec F0.fvec).det -
      CntLocal.Tn u * ((Tu D u' : ℕ) : D.host.E) *
        (leadMinorE (FsLA.gram (VS D) F₂.fvec F0.fvec) D.R.rS *
          star (leadMinorE (FsLA.gram (VS D) F₂.fvec F0.fvec) D.R.rS)) ≠ 0 := by
    rw [← FsLA.leadMinorE_full]; exact hGZ
  have hdetZ : (Zhat F0 F₂).det ≠ 0 := by
    have e : Zhat F0 F₂ = Z := hZ
    rw [e]; exact hZd
  have hdetw : (FsLA.gram (VS D) ww ww).det ≠ 0 :=
    FsLA.gram_pair_det F0 F₂.fvec (fun a b hab => FsLA.gram_fvec_zero F₂ a b hab) (FsLA.gram_fvec_last F₂)
      hdetZ hGg₂
  have hsp : ∀ i, uu' i ∈ Submodule.span D.host.E (Set.range ww) := by
    have hsub : Set.range (Sum.elim F₂.fvec f) ⊆ Submodule.span D.host.E (Set.range ww) := by
      rintro _ ⟨k, rfl⟩
      rcases k with b | a
      · exact Submodule.subset_span ⟨Sum.inr b, rfl⟩
      · exact Submodule.subset_span ⟨Sum.inl a, rfl⟩
    intro i
    rcases i with a | b
    · exact Submodule.span_le.2 hsub (hsp3 a)
    · exact Submodule.subset_span ⟨Sum.inr b, rfl⟩

  have hdetγ : (Zhat F0 (repF γ).fl).det ≠ 0 := hZ₁d
  obtain ⟨Ω₂, hΩ₂⟩ := exists_om F0 F₂ hdetZ
  obtain ⟨Ωγ, hΩγ⟩ := exists_om F0 (repF γ).fl hdetγ
  have hΩd : Ω₂ - Ωγ ∈ Xsp (lf D F0) :=
    omega_local_holds Zd u u' F0 what₂ hC.2.1 γ Z hCtx F'₂ φ φ' hS hdetγ hZd Ω₂ Ωγ hΩ₂ hΩγ

  have hXq : ∀ y, (∀ k, (VS D).hT (uu k) y = 0) → FsLA.lin ww (FsLA.pc ww y) ∈ F0.X := by
    intro y hy
    have hrem := fun z hz => (FsLA.hT_span_rem ww hdetw y z hz).1
    have hyU : ∀ z ∈ Submodule.span D.host.E (Set.range uu), (VS D).hT z y = 0 :=
      NMoveP.spanL (VS D) uu y hy
    refine BRat.key_X F0 F₂ hdetZ hΩ₂ hGZ (FsLA.lin_sub ww _) (fun a => ?_) ?_
    · have e := hrem (f a) (Submodule.subset_span ⟨Sum.inl a, rfl⟩)
      rw [map_sub, sub_eq_zero] at e
      rw [← e]
      exact hy (Sum.inl a)
    · have e := hrem Ω₂ (Submodule.span_mono (Set.range_comp_subset_range Sum.inr ww) hΩ₂.1)
      rw [map_sub, sub_eq_zero] at e
      rw [← e]
      have e2 : Ω₂ = Ωγ + (Ω₂ - Ωγ) := by abel
      rw [e2, map_add (f := _), LinearMap.add_apply]
      have h1 : (VS D).hT Ωγ y = 0 :=
        hyU _ (Submodule.span_mono (Set.range_comp_subset_range Sum.inr uu) hΩγ.1)
      have hXu : ∀ x ∈ Xsp (lf D F0), x ∈ Submodule.span D.host.E (Set.range uu) := by
        intro x hx
        refine Submodule.span_le.2 ?_ hx
        rintro _ ⟨i, rfl⟩
        exact Submodule.subset_span ⟨Sum.inl i.castSucc, by simp [huu, hf, frame, FlagG.fvec]⟩
      rw [h1, hyU _ (hXu _ hΩd), add_zero]
  have hkey : ∀ y y', (∀ k, (VS D).hT (uu k) y = 0) → (∀ k, (VS D).hT (uu k) y' = 0) →
      (VS D).hT (FsLA.lin ww (FsLA.pc ww y)) (FsLA.lin ww (FsLA.pc ww y')) = 0 :=
    fun y y' hy hy' => NMoveP.hT_X_X F0 (hXq y hy) (hXq y' hy')
  obtain ⟨β, hiso, hβu, hβy⟩ := BRat.isometry_extension_two uu uu' ww hGr hdet hdetw hsp hkey
  refine ⟨β, hiso, fun b => hβu (Sum.inr b), fun w0 hw0 => ?_, ?_⟩
  ·
    have hw0u : ∀ k, (VS D).hT (uu k) w0 = 0 := fun k =>
      (PI.UnitaryGroupMassFormula.BetaLUniq.mem_orth (VS D)).1 hw0 _
        (PI.PairCorankPos.W.frame_mem_UUE γ.lam hΛ (lf D F0) (repF γ) hLlf hLrep k)
    refine ⟨β w0, ?_, ?_, by rw [sub_self]; exact zero_mem _⟩
    · refine (PI.UnitaryGroupMassFormula.BetaLUniq.mem_orth (VS D)).2 fun x hx => ?_
      have hxw : x ∈ Submodule.span D.host.E (Set.range ww) :=
        UUE_le_span Λ₂ (lf D F0) (liftF F'₂) rfl rfl hx
      rw [hβy w0 hw0u]
      exact (FsLA.hT_span_rem ww hdetw w0 x hxw).1
    · rw [hβy w0 hw0u, sub_sub_cancel]
      exact hXq w0 hw0u
  ·
    have homf : FsLA.om (VS D) F₂.fvec f = starOmL f (frame F'₂) := by
      rw [FsLA.om, hg2, ← Matrix.adjugate_conjTranspose]
      simp only [starOmL, Matrix.conjTranspose_apply]
      rw [← hZ]
      rfl
    have homh : FsLA.om (VS D) F₂.fvec h = β (starOmL f g) := by

      simp only [FsLA.om, starOmL, map_sum, map_smul]
      have e : FsLA.gram (VS D) h F₂.fvec = Z₁ᴴ := hZ3
      rw [e]
      refine Finset.sum_congr rfl fun a _ => ?_
      rw [← Matrix.adjugate_conjTranspose, Matrix.conjTranspose_apply]
      congr 1
      exact (hβu (Sum.inl a)).symm
    have e1 : Z₁ᴴ.det = star Z₁.det := Matrix.det_conjTranspose _
    have e2 : (FsLA.gram (VS D) f F₂.fvec).det = star Z.det := by rw [hg2, Matrix.det_conjTranspose]
    rw [e1, e2, homf, homh] at hom3
    have hD1 : GDl (frame (lf D F0)) (frame (repF γ)) (D.R.rS + 1) = Z₁.det := by rw [GDl_top']; rfl
    have hD2 : GDl (frame (lf D F0)) (frame (liftF F'₂)) (D.R.rS + 1) = Z.det := by
      rw [GDl_top']; rw [← hZ]; rfl
    have hO1 : Gom (frame (lf D F0)) (frame (repF γ)) = starOmL f g := rfl
    have hO2 : Gom (frame (lf D F0)) (frame (liftF F'₂)) = starOmL f (frame F'₂) := rfl
    unfold OmB
    rw [hD1, hD2, hO1, hO2]
    have := (Xsp (liftF F'₂)).neg_mem hom3
    rw [neg_sub] at this
    exact this

end Formalism.L2.SG.Pf.FrameGlobalPatching.FStar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBetaRat =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFrameIotaA =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFrameIotaA", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.IsPrimitiveSub\npublic import Formalism.HermitianLattices.HermitianLatticesProofs.DualBasic\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RatIota\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.IotaSurjectiveHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace Formalism.L2.SG.Pf.ScalarFrameIota

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat

section Proj

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ}

theorem hT_span_zero (e : Fin r → S.V) (v : S.V) (h : ∀ b, S.hT (e b) v = 0) :
    ∀ x ∈ Submodule.span E (Set.range e), S.hT x v = 0 := by
  intro x hx
  induction hx using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨b, rfl⟩ := hx
    exact h b
  | zero => simp
  | add x y _ _ hx hy => rw [map_add (f := _), LinearMap.add_apply, hx, hy, add_zero]
  | smul c x _ hx => rw [LinearMap.map_smulₛₗ, LinearMap.smul_apply, hx, smul_zero]

theorem proj_exists (Λ : Submodule (𝓞 E) S.V) (hL : Submodule.IsFullLattice E Λ)
    (hU : Formalism.HermitianLatticesTheory.IsUnimodular S.hT Λ) {T' : E} (F' : LFlag S r T') :
    ∃ u : Fin r → S.V, ∀ l ∈ Λ, l - ∑ a, S.hT (F'.fl.e a) l • u a ∈ Lrep Λ F' := by
  obtain ⟨ρ, hρX, hρid⟩ := PI.UnitaryGroupMassFormula.BetaModX.Iota.exists_retract Λ hL.fg (Xsp F')
  have li := F'.fl.e_indep
  have hmem : ∀ y : Λ, ((ρ y : Λ) : S.V) ∈ Submodule.span E (Set.range F'.fl.e) := fun y => hρX y

  let co : Fin r → Λ →ₗ[𝓞 E] E := fun a =>
    { toFun := fun y => li.repr ⟨((ρ y : Λ) : S.V), hmem y⟩ a
      map_add' := fun y y' => by
        have e : (⟨((ρ (y + y') : Λ) : S.V), hmem (y + y')⟩ : Submodule.span E (Set.range F'.fl.e)) =
            ⟨((ρ y : Λ) : S.V), hmem y⟩ + ⟨((ρ y' : Λ) : S.V), hmem y'⟩ :=
          Subtype.ext (by simp only [map_add (f := _), Submodule.coe_add])
        rw [e, map_add (f := _), Finsupp.add_apply]
      map_smul' := fun c y => by
        have e : (⟨((ρ (c • y) : Λ) : S.V), hmem (c • y)⟩ : Submodule.span E (Set.range F'.fl.e)) =
            (algebraMap (𝓞 E) E c) • ⟨((ρ y : Λ) : S.V), hmem y⟩ :=
          Subtype.ext (by
            show ((ρ (c • y) : Λ) : S.V) = (algebraMap (𝓞 E) E c) • ((ρ y : Λ) : S.V)
            rw [LinearMap.map_smul, Submodule.coe_smul, algebraMap_smul])
        rw [e, LinearMap.map_smul, Finsupp.smul_apply, smul_eq_mul, RingHom.id_apply, Algebra.smul_def] }
  have hco : ∀ a y, co a y = li.repr ⟨((ρ y : Λ) : S.V), hmem y⟩ a := fun _ _ => rfl
  have hexp : ∀ y : Λ, ((ρ y : Λ) : S.V) = ∑ a, co a y • F'.fl.e a := by
    intro y
    have h := li.linearCombination_repr ⟨((ρ y : Λ) : S.V), hmem y⟩
    rw [Finsupp.linearCombination_apply,
      Finsupp.sum_fintype _ (fun i (c : E) => c • F'.fl.e i) (fun i => zero_smul E _)] at h
    rw [← h]
    rfl
  have hR := fun a => PI.UnitaryGroupMassFormula.BetaModX.Iota.riesz S.hT S.herm S.nondeg Λ hL.fg hL.span_eq_top (co a)
  choose u hu using hR

  have hdual : ∀ a b, S.hT (F'.fl.e b) (u a) = if a = b then 1 else 0 := by
    intro a b
    obtain ⟨d, hd0, hdΛ⟩ := PI.UnitaryGroupMassFormula.BetaModX.Iota.exists_smul_mem Λ hL.span_eq_top (F'.fl.e b)
    have hdE : ((d : 𝓞 E) : E) ≠ 0 := (map_ne_zero_iff _ (IsFractionRing.injective (𝓞 E) E)).mpr hd0
    have hdX : d • F'.fl.e b ∈ Xsp F' := by
      rw [← algebraMap_smul E d]
      exact (Xsp F').smul_mem _ (Submodule.subset_span ⟨b, rfl⟩)
    have hρd : ρ ⟨d • F'.fl.e b, hdΛ⟩ = ⟨d • F'.fl.e b, hdΛ⟩ := hρid _ hdX
    have hrep : co a ⟨d • F'.fl.e b, hdΛ⟩ = (d : E) * (if b = a then 1 else 0) := by
      rw [hco]
      have e : (⟨((ρ ⟨d • F'.fl.e b, hdΛ⟩ : Λ) : S.V), hmem _⟩ : Submodule.span E (Set.range F'.fl.e)) =
          ((d : 𝓞 E) : E) • ⟨F'.fl.e b, Submodule.subset_span ⟨b, rfl⟩⟩ :=
        Subtype.ext (by
          show ((ρ ⟨d • F'.fl.e b, hdΛ⟩ : Λ) : S.V) = ((d : 𝓞 E) : E) • F'.fl.e b
          rw [hρd]
          exact (algebraMap_smul E d _).symm)
      rw [e, LinearMap.map_smul, li.repr_eq_single b _ rfl, Finsupp.smul_apply, Finsupp.single_apply,
        smul_eq_mul]
    have h1 := hu a (d • F'.fl.e b) hdΛ
    rw [hrep, ← algebraMap_smul E d, LinearMap.map_smul, smul_eq_mul] at h1
    have h2 : S.hT (u a) (F'.fl.e b) = if b = a then 1 else 0 := mul_left_cancel₀ hdE h1
    rw [PI.UnitaryGroupMassFormula.BetaModX.Iota.herm'', h2]
    by_cases hab : a = b
    · subst hab; simp
    · rw [if_neg (Ne.symm hab), if_neg hab, star_zero]
  refine ⟨u, fun l hl => ⟨?_, ?_⟩⟩
  ·
    refine Λ.sub_mem hl ?_
    have hU' : Formalism.HermitianLatticesTheory.dual S.hT Λ = Λ := hU
    rw [← hU', Formalism.HermitianLatticesTheory.dualBasic_mem_dual]
    intro y hy
    have hval : S.hT y (∑ a, S.hT (F'.fl.e a) l • u a) = S.hT ((ρ ⟨y, hy⟩ : Λ) : S.V) l := by

      rw [hexp, map_sum, map_sum, LinearMap.sum_apply]
      refine Finset.sum_congr rfl fun a _ => ?_
      rw [LinearMap.map_smul, smul_eq_mul, LinearMap.map_smulₛₗ, LinearMap.smul_apply, smul_eq_mul,
        PI.UnitaryGroupMassFormula.BetaModX.Iota.herm'' (u a) y, hu a y hy, starRingEnd_apply, mul_comm]
    rw [hval]
    obtain ⟨o, ho⟩ := PI.UnitaryGroupMassFormula.BetaModX.Iota.int_val hU (ρ ⟨y, hy⟩).2 hl
    rw [← ho, Submodule.mem_one]
    exact ⟨o, rfl⟩
  ·
    show l - ∑ a, S.hT (F'.fl.e a) l • u a ∈ orth S (Xsp F')
    rw [PI.UnitaryGroupMassFormula.BetaModX.Iota.mem_orth'']
    refine hT_span_zero F'.fl.e _ fun b => ?_

    rw [map_sub, map_sum]
    simp only [LinearMap.map_smul, smul_eq_mul, hdual, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq',
      Finset.mem_univ, if_true, sub_self]

end Proj

section D7

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem glob_beta {D : D7} (Λ : Submodule (𝓞 D.host.E) (VS D).V) {T T' : D.host.E}
    (F : LFlag (D.sp.Y 0) D.R.rS T) (F' F'' : LFlag (D.sp.Y 0) D.R.rS T') (β : (VS D).V ≃ₗ[D.host.E] (VS D).V)
    (hF : FixedHyp D Λ F) (hc' : IsFixedConv Λ (gS D) F') (hc'' : IsFixedConv Λ (gS D) F'')
    (ha' : IsAdmissible Λ (gS D) F F') (ha'' : IsAdmissible Λ (gS D) F F'')
    (hP : IsPair Λ F F' F'' β (gS D)) :
    ∀ w ∈ Lrep Λ F', β w - w ∈ Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ ⊔ XLam Λ F := by
  intro w hw
  have hg : gS D ≠ 0 := Nat.mul_ne_zero (D.host.g_prime 0).ne_zero (D.host.g_prime 1).ne_zero
  obtain ⟨l, hl, hlw⟩ := PI.UnitaryGroupMassFormula.BetaModX.Iota.iota_gen Λ hF.1 hF.2.1 (gS D) hg F F' hF.2.2.2 ha' w hw
  have h2 := (hP.2.2.2 w hw l hl).1 hlw
  have hle : ∀ F₁ : LFlag (D.sp.Y 0) D.R.rS T', IsAdmissible Λ (gS D) F F₁ → IsFixedConv Λ (gS D) F₁ →
      NgX Λ (gS D) F F₁ ≤ Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ ⊔ XLam Λ F := by
    intro F₁ ha hc
    unfold NgX
    exact sup_le le_rfl (Formalism.L2.SG.Pf.Act.xlam_le Λ (gS D) ha hF.2.2.2 hc)
  have e : β w - w = (l - w) - (l - β w) := by abel
  rw [e]
  exact Submodule.sub_mem _ (hle F' ha' hc' hlw) (hle F'' ha'' hc'' h2)

end D7

end Formalism.L2.SG.Pf.ScalarFrameIota
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFrameIotaA =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFrameIota =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFrameIota", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfD\npublic import Formalism.HermitianLattices.HermitianLatticesProofs.DualBasic\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SaturatedPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFrameIotaA\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfC\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfJ\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfG\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace Formalism.L2.SG.Pf.ScalarFrameIota

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermLoc ValuativeRel
  Formalism.L2.SG.Pf.ScalarFramePf

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section Local

variable {D : D7} (Z : LocDat D) (p : PlF D)

theorem mem_perpP {X : Submodule (D.s.atP p).Ep (Vp D p)} {v : Vp D p} :
    v ∈ (locH Z p).perp X ↔ ∀ x ∈ X, (locH Z p).h v x = 0 := Iff.rfl

def XO (X : Submodule (D.s.atP p).Ep (Vp D p)) : Submodule (Z.M p).L.O (Vp D p) where
  carrier := (X : Set (Vp D p))
  add_mem' hx hy := X.add_mem hx hy
  zero_mem' := X.zero_mem
  smul_mem' c x hx := by rw [Subring.smul_def]; exact X.smul_mem _ hx

theorem h_bc (x y : (VS D).V) :
    (locH Z p).h (baseChange₂ D p x) (baseChange₂ D p y) = (D.s.atP p).ιE ((VS D).hT y x) := by
  have h := hermitian_base_change_smul (Z := Z) (p := p) 1 x y
  rw [one_smul, one_mul] at h
  rw [h]
  rfl

theorem betaL_proj {r : ℕ} (e u : Fin r → (VS D).V) (v : Vp D p) :
    betaL p (LinearMap.id - ∑ a, ((VS D).hT (e a)).smulRight (u a)) v =
      v - ∑ a, (locH Z p).h v (baseChange₂ D p (e a)) • baseChange₂ D p (u a) := by
  let φ : Vp D p →ₗ[(D.s.atP p).Ep] Vp D p :=
    { toFun := fun v => v - ∑ a, (locH Z p).h v (baseChange₂ D p (e a)) • baseChange₂ D p (u a)
      map_add' := fun v w => by
        simp only [(locH Z p).h_add_left, add_smul, Finset.sum_add_distrib]
        abel
      map_smul' := fun c v => by
        simp only [(locH Z p).h_smul_left, mul_smul, ← Finset.smul_sum, smul_sub, RingHom.id_apply] }
  have hφ : betaL p (LinearMap.id - ∑ a, ((VS D).hT (e a)).smulRight (u a)) = φ := by
    refine (Pi.basisFun (D.s.atP p).Ep (Fin (nV D))).ext fun i => ?_
    rw [betaL_basis]
    show _ = Pi.basisFun (D.s.atP p).Ep (Fin (nV D)) i -
      ∑ a, (locH Z p).h (Pi.basisFun (D.s.atP p).Ep (Fin (nV D)) i) (baseChange₂ D p (e a)) • baseChange₂ D p (u a)
    rw [Pi.basisFun_apply, ← baseChangeAt_frame]
    simp only [LinearMap.sub_apply, LinearMap.id_apply, LinearMap.sum_apply,
      LinearMap.smulRight_apply, map_sub]
    rw [baseChangeAt_sum (p := p) Finset.univ]
    congr 1
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [h_bc]
  exact LinearMap.congr_fun hφ v

theorem loc_gen (Λ : Submodule (𝓞 D.host.E) (VS D).V) (hL : Submodule.IsLattice D.host.E Λ)
    (hU : Formalism.HermitianLatticesTheory.IsUnimodular (VS D).hT Λ) {T' : D.host.E} (F' : LFlag (D.sp.Y 0) D.R.rS T')
    (X₁ : Submodule (D.s.atP p).Ep (Vp D p)) (hX : ∀ a, baseChange₂ D p (F'.fl.e a) ∈ X₁) {x : Vp D p}
    (hx : x ∈ lattice₂ D Z.M p Λ) (hxo : x ∈ (locH Z p).perp X₁) :
    x ∈ Submodule.span (Z.M p).L.O (baseChange₂ D p '' (Lrep Λ F' : Set (VS D).V)) := by
  have hFull : Submodule.IsFullLattice D.host.E Λ := by
    let := hL
    refine { span_eq_top := ?_ }
    let W := Submodule.span D.host.E (Λ : Set (VS D).V)
    change W = ⊤
    by_contra h
    let e : (VS D).V ≃ₗ⋆[D.host.E] (VS D).V :=
      (VS D).frame.equivFun.trans ((starLinearEquiv D.host.E).trans (VS D).frame.equivFun.symm)
    let g : (VS D).V →ₗ[D.host.E] Module.Dual D.host.E W :=
      (LinearMap.domRestrict' W).comp ((VS D).hT.comp e.toLinearMap)
    have hdim : Module.finrank D.host.E (Module.Dual D.host.E W) < Module.finrank D.host.E (VS D).V := by
      rw [Subspace.dual_finrank_eq]
      exact Submodule.finrank_lt h
    obtain ⟨x, hx, hx₀⟩ :=
      Submodule.exists_mem_ne_zero_of_ne_bot (LinearMap.ker_ne_bot_of_finrank_lt (f := g) hdim)
    have hsmul (a : D.host.E) : a • e x ∈ Λ := by
      rw [← hU, Formalism.HermitianLatticesTheory.dualBasic_mem_dual]
      intro y hy
      have hxy : (VS D).hT (e x) y = 0 :=
        congrArg (fun f : Module.Dual D.host.E W => f ⟨y, Submodule.subset_span hy⟩) (LinearMap.mem_ker.mp hx)
      have hyx : (VS D).hT y (e x) = 0 := by
        have hh := (VS D).herm.eq (e x) y
        simpa [hxy] using hh.symm
      simp [map_smul, hyx]
    let i : D.host.E →ₗ[𝓞 D.host.E] Λ :=
      ((LinearMap.toSpanSingleton D.host.E _ (e x)).restrictScalars (𝓞 D.host.E)).codRestrict Λ hsmul
    let : Module.Finite (𝓞 D.host.E) Λ := Module.Finite.iff_fg.mpr hL.fg
    let : Module.Finite (𝓞 D.host.E) D.host.E := Module.Finite.of_injective i fun a b hab =>
      smul_left_injective D.host.E (fun hzero => hx₀ (e.map_eq_zero_iff.mp hzero)) (congrArg Subtype.val hab)
    exact RingOfIntegers.not_isField D.host.E
      (isField_of_isIntegral_of_isField (IsFractionRing.injective (𝓞 D.host.E) D.host.E) (Field.toIsField D.host.E))
  obtain ⟨u, hu⟩ := proj_exists Λ hFull hU F'
  have hPv : ∀ v, (LinearMap.id - ∑ a, ((VS D).hT (F'.fl.e a)).smulRight (u a) :
      (VS D).V →ₗ[D.host.E] (VS D).V) v = v - ∑ a, (VS D).hT (F'.fl.e a) v • u a := fun v => by
    simp only [LinearMap.sub_apply, LinearMap.id_apply, LinearMap.sum_apply,
      LinearMap.smulRight_apply]
  have h1 : betaL p (LinearMap.id - ∑ a, ((VS D).hT (F'.fl.e a)).smulRight (u a)) x = x := by
    have h0 : ∀ a ∈ Finset.univ, (locH Z p).h x (baseChange₂ D p (F'.fl.e a)) • baseChange₂ D p (u a) = 0 := fun a _ => by
      rw [(mem_perpP Z p).1 hxo _ (hX a), zero_smul]
    rw [betaL_proj, Finset.sum_eq_zero h0, sub_zero]
  have h2 : ∀ y ∈ lattice₂ D Z.M p Λ, betaL p (LinearMap.id - ∑ a, ((VS D).hT (F'.fl.e a)).smulRight (u a)) y ∈
      Submodule.span (Z.M p).L.O (baseChange₂ D p '' (Lrep Λ F' : Set (VS D).V)) := by
    intro y hy
    induction hy using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨v, hv, rfl⟩ := hy
      rw [betaL_bc]
      exact Submodule.subset_span ⟨_, by rw [hPv]; exact hu v hv, rfl⟩
    | zero => rw [map_zero]; exact Submodule.zero_mem _
    | add y y' _ _ hy hy' => rw [map_add (f := _)]; exact Submodule.add_mem _ hy hy'
    | smul o y _ hy =>
      rw [Subring.smul_def, map_smul, ← Subring.smul_def]
      exact Submodule.smul_mem _ _ hy
  rw [← h1]
  exact h2 x hx

theorem g_loc (Λ : Submodule (𝓞 D.host.E) (VS D).V) (gg : Loc.SplitG (Z.M p).L)
    (hgg : (Z.M p).split = some gg) {l : (VS D).V} (hl : l ∈ Λ) :
    baseChange₂ D p (((gS D : ℕ) : 𝓞 D.host.E) • l) ∈
      (locH Z p).smulLat (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (gg.q : (D.s.atP p).Fp))
        (lattice₂ D Z.M p Λ) := by
  obtain ⟨-, -, -, -, -, hm⟩ := Z.agree p
  rw [hgg] at hm
  rcases hs : (D.s.atP p).split with _ | sg
  · rw [hs] at hm
    simp at hm
  · rw [hs] at hm
    obtain ⟨-, hq⟩ := hm
    have hres : Loc.resChar p ∈ ({D.host.g 0, D.host.g 1} : Finset ℕ) := (D.s_split p).1 (by rw [hs]; rfl)
    obtain ⟨k, hk⟩ : ∃ k : ℕ, gS D = Loc.resChar p * k := by
      simp only [Finset.mem_insert, Finset.mem_singleton] at hres
      rcases hres with h | h
      · exact ⟨D.host.g 1, by rw [h]; rfl⟩
      · exact ⟨D.host.g 0, by rw [h, mul_comm]; rfl⟩
    have e : baseChange₂ D p (((gS D : ℕ) : 𝓞 D.host.E) • l) = (k : (Z.M p).L.O) •
        (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (gg.q : (D.s.atP p).Fp) • baseChange₂ D p l) := by
      rw [Subring.smul_def, hq, sg.q_eq, map_natCast, Subring.coe_natCast, smul_smul, ← Nat.cast_mul,
        mul_comm, ← hk, Nat.cast_smul_eq_nsmul (𝓞 D.host.E), Nat.cast_smul_eq_nsmul (D.s.atP p).Ep,
        map_nsmul]
    rw [e]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨baseChange₂ D p l, Submodule.subset_span ⟨l, hl, rfl⟩, rfl⟩)

theorem bcP_N (Λ : Submodule (𝓞 D.host.E) (VS D).V) {T : D.host.E} (F : LFlag (D.sp.Y 0) D.R.rS T)
    (gg : Loc.SplitG (Z.M p).L) (hgg : (Z.M p).split = some gg) {v : (VS D).V}
    (hv : v ∈ Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ ⊔ XLam Λ F) :
    baseChange₂ D p v ∈ (locH Z p).smulLat (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (gg.q : (D.s.atP p).Fp))
        (lattice₂ D Z.M p Λ) ⊔
      (lattice₂ D Z.M p Λ ⊓ XO Z p ((locH Z p).X (fun a => sF Z p a • baseChange₂ D p (frame F a)))) := by
  obtain ⟨y, hy, z, hz, rfl⟩ := Submodule.mem_sup.1 hv
  rw [map_add (f := _)]
  refine Submodule.add_mem_sup ?_ ⟨Submodule.subset_span ⟨z, hz.1, rfl⟩, ?_⟩
  · obtain ⟨w, hw, rfl⟩ := (Formalism.L2.SG.Pf.mem_gSmul (gS D) Λ y).1 hy
    exact g_loc Z p Λ gg hgg hw
  · have h := hz.2
    rw [Xsp_eq_Xs] at h
    exact bcP_mem_X Z p (frame F) (sF Z p) (isUnit_sF Z p) h

theorem loc_beta (Λ : Submodule (𝓞 D.host.E) (VS D).V) {T T' : D.host.E} (F : LFlag (D.sp.Y 0) D.R.rS T)
    (F' : LFlag (D.sp.Y 0) D.R.rS T') (β : (VS D).V ≃ₗ[D.host.E] (VS D).V)
    (gg : Loc.SplitG (Z.M p).L) (hgg : (Z.M p).split = some gg)
    (hglob : ∀ w ∈ Lrep Λ F', β w - w ∈ Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ ⊔ XLam Λ F)
    {x : Vp D p} (hx : x ∈ Submodule.span (Z.M p).L.O (baseChange₂ D p '' (Lrep Λ F' : Set (VS D).V))) :
    betaP p β x - x ∈ (locH Z p).smulLat (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (gg.q : (D.s.atP p).Fp))
        (lattice₂ D Z.M p Λ) ⊔
      (lattice₂ D Z.M p Λ ⊓ XO Z p ((locH Z p).X (fun a => sF Z p a • baseChange₂ D p (frame F a)))) := by
  have key : ∀ w ∈ Lrep Λ F', betaP p β (baseChange₂ D p w) - baseChange₂ D p w ∈
      (locH Z p).smulLat (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (gg.q : (D.s.atP p).Fp)) (lattice₂ D Z.M p Λ) ⊔
        (lattice₂ D Z.M p Λ ⊓ XO Z p ((locH Z p).X (fun a => sF Z p a • baseChange₂ D p (frame F a)))) := by
    intro w hw
    rw [betaP_bc, ← map_sub]
    exact bcP_N Z p Λ F gg hgg (hglob w hw)
  induction hx using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨w, hw, rfl⟩ := hy
    exact key w hw
  | zero => simp
  | add a b _ _ ha hb =>
    rw [map_add (f := _), add_sub_add_comm]
    exact add_mem ha hb
  | smul c a _ ha =>
    have e : betaP p β (c • a) - c • a = c • (betaP p β a - a) := by
      simp only [Subring.smul_def, map_smul, smul_sub]
    rw [e]
    exact Submodule.smul_mem _ c ha

theorem iotaG_main (Λ : Submodule (𝓞 D.host.E) (VS D).V) {T T' : D.host.E}
    (F : LFlag (D.sp.Y 0) D.R.rS T) (F' F'' : LFlag (D.sp.Y 0) D.R.rS T') (β : (VS D).V ≃ₗ[D.host.E] (VS D).V)
    (hF : FixedHyp D Λ F) (hc' : IsFixedConv Λ (gS D) F') (hc'' : IsFixedConv Λ (gS D) F'')
    (ha' : IsAdmissible Λ (gS D) F F') (ha'' : IsAdmissible Λ (gS D) F F'')
    (hP : IsPair Λ F F' F'' β (gS D))
    (hG : GFacts Λ (frame F) (frameAct (frame F') (admXi D Λ F F')⁻¹)
      (frameAct (frame F'') (admXi D Λ F F'')⁻¹) β)
    (gg : Loc.SplitG (Z.M p).L) (hgg : (Z.M p).split = some gg) :
    IotaG (locH Z p) (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (gg.q : (D.s.atP p).Fp)) (lattice₂ D Z.M p Λ)
      (fun a => sF Z p a • baseChange₂ D p (frame F a))
      (fun b => sF' Z p b • baseChange₂ D p (frameAct (frame F') (admXi D Λ F F')⁻¹ b))
      (fun b => sF' Z p b • baseChange₂ D p (frameAct (frame F'') (admXi D Λ F F'')⁻¹ b)) (betaP p β) := by
  have hglob := glob_beta Λ F F' F'' β hF hc' hc'' ha' ha'' hP
  have hX1 : ∀ a, baseChange₂ D p (F'.fl.e a) ∈
      (locH Z p).X (fun b => sF' Z p b • baseChange₂ D p (frameAct (frame F') (admXi D Λ F F')⁻¹ b)) := by
    intro a
    refine bcP_mem_X Z p _ (sF' Z p) (isUnit_sF' Z p) ?_
    have h := Xs_frameAct_inv (S := VS D) (frame F') (admXi D Λ F F') (admissibility_witness_unitriangular Λ F F').1
      (admissibility_witness_unitriangular Λ F F').2
    have h2 : F'.fl.e a ∈ Xsp F' := Submodule.subset_span ⟨a, rfl⟩
    rw [Xsp_eq_Xs, ← h] at h2
    exact h2
  have hL1 : ∀ x' ∈ lattice₂ D Z.M p Λ, x' ∈ (locH Z p).perp
      ((locH Z p).X (fun b => sF' Z p b • baseChange₂ D p (frameAct (frame F') (admXi D Λ F F')⁻¹ b))) →
      betaP p β x' - x' ∈
        (locH Z p).smulLat (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (gg.q : (D.s.atP p).Fp))
          (lattice₂ D Z.M p Λ) ⊔
        (lattice₂ D Z.M p Λ ⊓ XO Z p ((locH Z p).X (fun a => sF Z p a • baseChange₂ D p (frame F a)))) :=
    fun x' hx hxo => loc_beta Z p Λ F F' β gg hgg hglob (loc_gen Z p Λ hF.1 hF.2.1 F' _ hX1 hx hxo)
  have hX0 : ∀ a ∈ (locH Z p).X (fun a => sF Z p a • baseChange₂ D p (frame F a)),
      ∀ b ∈ (locH Z p).X (fun a => sF Z p a • baseChange₂ D p (frame F a)), (locH Z p).h a b = 0 := by
    apply iso_span
    intro i j
    rw [h_bcP, brS, hG.fiso j i, map_zero, mul_zero]
  have hiso : ∀ v w, (locH Z p).h (betaP p β v) (betaP p β w) = (locH Z p).h v w := betaP_iso Z p β hG.iso
  constructor
  · intro x x' hx hx' hxo hx'o hd
    obtain ⟨n, hn, a, ha, hna⟩ := Submodule.mem_sup.1 (hL1 x' hx' hx'o)
    refine ⟨x + a, betaP p β x', Submodule.add_mem _ hx ha.1, betaP_lat Z p β Λ hG.lam hx', ?_, ?_, ?_, ?_, ?_⟩
    · rw [mem_perpP]
      intro b hb
      rw [(locH Z p).h_add_left, (mem_perpP Z p).1 hxo b hb, hX0 a ha.2 b hb, add_zero]
    · rw [mem_perpP]
      intro b hb
      have hb1 := betaP_symm_mem_X Z p β _ _ (sF' Z p) (isUnit_sF' Z p) hG.xmap' hb
      rw [← LinearEquiv.apply_symm_apply (betaP p β) b, hiso]
      exact (mem_perpP Z p).1 hx'o _ hb1
    · rw [show x - (x + a) = -a by abel]
      exact Submodule.neg_mem _ ha.2
    · rw [sub_self]
      exact Submodule.zero_mem _
    · have e : x + a - betaP p β x' = (x - x') - n := by
        rw [← sub_add_cancel (betaP p β x') x', ← hna]
        abel
      rw [e]
      exact Submodule.sub_mem _ hd hn
  · intro x x'' hx hx'' hxo hx''o hd
    obtain ⟨y, rfl⟩ := (betaP p β).surjective x''
    rw [LinearEquiv.symm_apply_apply]
    have hy : y ∈ lattice₂ D Z.M p Λ := by
      have h := betaP_symm_lat Z p β Λ hG.lam' hx''
      rwa [LinearEquiv.symm_apply_apply] at h
    have hyo : y ∈ (locH Z p).perp
        ((locH Z p).X (fun b => sF' Z p b • baseChange₂ D p (frameAct (frame F') (admXi D Λ F F')⁻¹ b))) := by
      rw [mem_perpP]
      intro b hb
      rw [← hiso]
      exact (mem_perpP Z p).1 hx''o _ (betaP_mem_X Z p β _ _ (sF' Z p) (isUnit_sF' Z p) hG.xmap hb)
    obtain ⟨n, hn, a, ha, hna⟩ := Submodule.mem_sup.1 (hL1 y hy hyo)
    refine ⟨x - a, y, Submodule.sub_mem _ hx ha.1, hy, ?_, hyo, ?_, ?_, ?_⟩
    · rw [mem_perpP]
      intro b hb
      rw [ScalarFramePf.h_sub_left, (mem_perpP Z p).1 hxo b hb, hX0 a ha.2 b hb, sub_zero]
    · rw [sub_sub_cancel]
      exact ha.2
    · rw [sub_self]
      exact Submodule.zero_mem _
    · have e : x - a - y = (x - betaP p β y) + n := by
        rw [← sub_add_cancel (betaP p β y) y, ← hna]
        abel
      rw [e]
      exact Submodule.add_mem _ hd hn

end Local

end Formalism.L2.SG.Pf.ScalarFrameIota

namespace Formalism.L2.SG.Pf

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermLoc
  Formalism.L2.SG.Pf.ScalarFramePf

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem iotaStep_holds : ScalarFramePf.IotaStep := by
  intro D Z Λ T T' F F' F'' β hF hl' hl'' hc' hc'' ha' ha'' hP hg' hg'' hs hsc hG' hG'' hT hT' p gg hgg
  exact ScalarFrameIota.iotaG_main Z p Λ F F' F'' β hF hc' hc'' ha' ha'' hP
    (gfacts_of Λ F F' F'' β hF hl' hl'' hc' hc'' hP hs hsc hG' hG'' hT hT') gg hgg

end Formalism.L2.SG.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFrameIota =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfM =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfM", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfC\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfD\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfF\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace Formalism.L2.SG.Pf.ScalarFramePf

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermLoc ValuativeRel

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section GenericX

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E]
variable {M : Loc.Model F E} {V : Type} [AddCommGroup V] [Module E V] (H : Loc.HermSp M V)

theorem identResp_generic {r : ℕ} (abelian₂ : Submodule M.L.O V) (f₀ f₁ f₂ : Fin (r + 1) → V) (T T' : F)
    (e : V ≃ₗ[E] V) (hiso : ∀ v w, H.h (e v) (e w) = H.h v w)
    (h12 : ∀ x ∈ H.X f₁, e x ∈ H.X f₂) (h21 : ∀ y ∈ H.X f₂, e.symm y ∈ H.X f₁)
    (hX0 : ∀ a ∈ H.X f₀, ∀ b ∈ H.X f₀, H.h a b = 0) (hX2 : ∀ a ∈ H.X f₂, ∀ b ∈ H.X f₂, H.h a b = 0)
    (hL : ∀ x ∈ abelian₂, e x ∈ abelian₂) (hL' : ∀ x ∈ abelian₂, e.symm x ∈ abelian₂)
    (hW0 : ∀ w ∈ H.W0 f₀ f₁, ∃ w₂ ∈ H.W0 f₀ f₂, w - w₂ ∈ H.X f₀ ∧ e w - w₂ ∈ H.X f₂)
    (homp : H.Dl f₀ f₂ (r + 1) • H.om' f₀ f₁ - H.Dl f₀ f₁ (r + 1) • H.om' f₀ f₂ ∈ H.X f₀)
    (hom : M.L.cj (H.Dl f₀ f₂ (r + 1)) • e (H.om f₀ f₁) - M.L.cj (H.Dl f₀ f₁ (r + 1)) • H.om f₀ f₂ ∈ H.X f₂)
    (hrat : H.Dl f₀ f₁ r * H.Dl f₀ f₂ (r + 1) = H.Dl f₀ f₂ r * H.Dl f₀ f₁ (r + 1))
    (hz : e (f₁ (Fin.last r)) - f₂ (Fin.last r) ∈ H.X f₂)
    (hI : ∀ g, M.split = some g → IotaG H (algebraMap F E (g.q : F)) abelian₂ f₀ f₁ f₂ e) :
    H.Ident (⟨abelian₂, f₀, f₁, T, T'⟩ : Loc.Term V M r) ⟨abelian₂, f₀, f₂, T, T'⟩ (LinearEquiv.refl _ _)
        (qEquiv H e hiso (H.X f₁) (H.X f₂) h12 h21) ∧
      H.Respects (⟨abelian₂, f₀, f₁, T, T'⟩ : Loc.Term V M r) ⟨abelian₂, f₀, f₂, T, T'⟩ (LinearEquiv.refl _ _)
        (qEquiv H e hiso (H.X f₁) (H.X f₂) h12 h21) := by
  refine ⟨⟨?_, ?_, ?_, ?_, ?_, hrat⟩, ⟨?_, ?_, ?_, ?_, ?_⟩⟩
  · intro x y x₂ y₂ hx hy
    exact h_eq_of_sub_mem H _ hX0 x.2 y.2 ((mk_eq_iff H _ x x₂).1 hx) ((mk_eq_iff H _ y y₂).1 hy)
  · intro x y x₂ y₂ hx hy
    have hx' : e x - x₂ ∈ H.X f₂ := (mk_eq_iff H _ _ x₂).1 hx
    have hy' : e y - y₂ ∈ H.X f₂ := (mk_eq_iff H _ _ y₂).1 hy
    rw [h_eq_of_sub_mem H _ hX2 (perp_map H e hiso _ _ h21 x.2) (perp_map H e hiso _ _ h21 y.2) hx' hy',
      hiso]
  · intro w hw
    obtain ⟨w₂, hw₂, h1, h2⟩ := hW0 w hw
    refine ⟨w₂, hw₂, ?_, ?_⟩
    · intro x x₂ hx hx₂
      apply smul_mk_eq H
      rw [one_smul, one_smul, hx, hx₂]
      exact h1
    · intro x x₂ hx hx₂
      apply smul_mk_eq H
      show (1 : E) • e x - (1 : E) • (x₂ : V) ∈ H.X f₂
      rw [one_smul, one_smul, hx, hx₂]
      exact h2
  · intro x x₂ hx hx₂
    apply smul_mk_eq H
    rw [hx, hx₂]
    exact homp
  · intro x x₂ hx hx₂
    apply smul_mk_eq H
    show M.L.cj (H.Dl f₀ f₂ (r + 1)) • e x - M.L.cj (H.Dl f₀ f₁ (r + 1)) • (x₂ : V) ∈ H.X f₂
    rw [hx, hx₂]
    exact hom
  · ext w
    simp
  · intro x x₂ hx hx₂
    have : x = x₂ := Subtype.ext (hx.trans hx₂.symm)
    rw [this]
    rfl
  · ext w
    constructor
    · rintro ⟨_, ⟨x, hxΛ, rfl⟩, rfl⟩
      exact ⟨perpEquiv H e hiso _ _ h12 h21 x, hL _ hxΛ, rfl⟩
    · rintro ⟨x₂, hx₂Λ, rfl⟩
      refine ⟨H.mkW _ ⟨e.symm x₂, perp_map_symm H e hiso _ _ h12 x₂.2⟩,
        ⟨⟨e.symm x₂, perp_map_symm H e hiso _ _ h12 x₂.2⟩, hL' _ hx₂Λ, rfl⟩, ?_⟩
      show qEquiv H e hiso (H.X f₁) (H.X f₂) h12 h21 (Submodule.Quotient.mk _) = Submodule.Quotient.mk x₂
      rw [qEquiv_mk]
      congr 1
      exact Subtype.ext (e.apply_symm_apply x₂)
  · intro x x₂ hx hx₂
    apply smul_mk_eq H
    show (1 : E) • e x - (1 : E) • (x₂ : V) ∈ H.X f₂
    rw [one_smul, one_smul, hx, hx₂]
    exact hz
  · intro g hg
    obtain ⟨hA, hB⟩ := hI g hg
    ext ⟨a, b⟩
    constructor
    · rintro ⟨⟨a0, b0⟩, ⟨x', x, hx'Λ, hxΛ, hq, heq⟩, hmap⟩
      obtain ⟨y, y'', hyΛ, hy''Λ, hyp, hy''p, hxy, hxy'', hyq⟩ := hA x x' hxΛ hx'Λ x.2 x'.2 hq
      refine ⟨⟨y'', hy''p⟩, ⟨y, hyp⟩, hy''Λ, hyΛ, hyq, ?_⟩
      simp only [Prod.map, Prod.mk.injEq] at hmap heq
      obtain ⟨rfl, rfl⟩ := heq
      obtain ⟨rfl, rfl⟩ := hmap
      refine Prod.ext ?_ ?_
      · show qEquiv H e hiso (H.X f₁) (H.X f₂) h12 h21 (Submodule.Quotient.mk x') = Submodule.Quotient.mk _
        rw [qEquiv_mk, mk_eq_iff]
        exact hxy''
      · show Submodule.Quotient.mk x = Submodule.Quotient.mk _
        rw [mk_eq_iff]
        exact hxy
    · rintro ⟨x'', x, hx''Λ, hxΛ, hq, heq⟩
      obtain ⟨y, y', hyΛ, hy'Λ, hyp, hy'p, hxy, hxy', hyq⟩ := hB x x'' hxΛ hx''Λ x.2 x''.2 hq
      refine ⟨(H.mkW _ ⟨y', hy'p⟩, H.mkW _ ⟨y, hyp⟩), ⟨⟨y', hy'p⟩, ⟨y, hyp⟩, hy'Λ, hyΛ, hyq, rfl⟩, ?_⟩
      simp only [Prod.mk.injEq] at heq
      obtain ⟨rfl, rfl⟩ := heq
      refine Prod.ext ?_ ?_
      · show qEquiv H e hiso (H.X f₁) (H.X f₂) h12 h21 (Submodule.Quotient.mk _) = Submodule.Quotient.mk x''
        rw [qEquiv_mk, mk_eq_iff]
        have h := h12 _ hxy'
        rw [map_sub, LinearEquiv.apply_symm_apply] at h
        have h' := Submodule.neg_mem _ h
        rwa [neg_sub] at h'
      · show Submodule.Quotient.mk _ = Submodule.Quotient.mk x
        rw [mk_eq_iff]
        have h' := Submodule.neg_mem _ hxy
        rwa [neg_sub] at h'

end GenericX

section ConcreteX

variable {D : D7} (Z : LocDat D) (p : PlF D)

def phiP (Λ : Submodule (𝓞 D.host.E) (VS D).V) (f g1 g2 : Fin (D.R.rS + 1) → (VS D).V)
    (β : (VS D).V ≃ₗ[D.host.E] (VS D).V) (hG : GFacts Λ f g1 g2 β) :
    (locH Z p).Wb (fun b => sF' Z p b • baseChange₂ D p (g1 b)) ≃ₗ[(D.s.atP p).Ep]
      (locH Z p).Wb (fun b => sF' Z p b • baseChange₂ D p (g2 b)) :=
  qEquiv (locH Z p) (betaP p β) (betaP_iso Z p β hG.iso) _ _
    (fun x hx => betaP_mem_X Z p β g1 g2 (sF' Z p) (isUnit_sF' Z p) hG.xmap hx)
    (fun y hy => betaP_symm_mem_X Z p β g1 g2 (sF' Z p) (isUnit_sF' Z p) hG.xmap' hy)

theorem identResp_lt (Λ : Submodule (𝓞 D.host.E) (VS D).V) (f g1 g2 : Fin (D.R.rS + 1) → (VS D).V)
    (β : (VS D).V ≃ₗ[D.host.E] (VS D).V) (Tn T'n : ℕ) (hG : GFacts Λ f g1 g2 β)
    (hI : IotaEl Z p Λ f g1 g2 β) :
    (locH Z p).Ident (lt Z p Λ f g1 Tn T'n) (lt Z p Λ f g2 Tn T'n) (LinearEquiv.refl _ _) (phiP Z p Λ f g1 g2 β hG) ∧
      (locH Z p).Respects (lt Z p Λ f g1 Tn T'n) (lt Z p Λ f g2 Tn T'n) (LinearEquiv.refl _ _)
        (phiP Z p Λ f g1 g2 β hG) := by
  have hiso : ∀ v w, (locH Z p).h (betaP p β v) (betaP p β w) = (locH Z p).h v w := betaP_iso Z p β hG.iso
  refine identResp_generic (locH Z p) (lattice₂ D Z.M p Λ) (fun a => sF Z p a • baseChange₂ D p (f a))
    (fun b => sF' Z p b • baseChange₂ D p (g1 b)) (fun b => sF' Z p b • baseChange₂ D p (g2 b)) _ _ (betaP p β) hiso
    (fun x hx => betaP_mem_X Z p β g1 g2 (sF' Z p) (isUnit_sF' Z p) hG.xmap hx)
    (fun y hy => betaP_symm_mem_X Z p β g1 g2 (sF' Z p) (isUnit_sF' Z p) hG.xmap' hy) ?_ ?_
    (fun x hx => betaP_lat Z p β Λ hG.lam hx) (fun x hx => betaP_symm_lat Z p β Λ hG.lam' hx)
    (fun w hw => scalar_frame_w_zero_exists Z p Λ f g1 g2 β hG hw) ?_ ?_ ?_ ?_ hI
  · apply iso_span
    intro i j
    rw [h_bcP, brS, hG.fiso j i, map_zero, mul_zero]
  · apply iso_span
    intro i j
    rw [h_bcP, brS, hG.g2iso j i, map_zero, mul_zero]
  ·
    rw [om'_loc, om'_loc, dl_loc Z p f g2 (sF Z p) (sF' Z p) _ le_rfl,
      dl_loc Z p f g1 (sF Z p) (sF' Z p) _ le_rfl]
    rw [omp_combine]
    exact Submodule.smul_mem _ _ (bcP_mem_X Z p f (sF Z p) (isUnit_sF Z p) hG.omp)
  ·
    rw [om_loc, om_loc, dl_loc Z p f g2 (sF Z p) (sF' Z p) _ le_rfl,
      dl_loc Z p f g1 (sF Z p) (sF' Z p) _ le_rfl, map_smul, betaP_bc]
    rw [om_combine]
    exact Submodule.smul_mem _ _ (bcP_mem_X Z p g2 (sF' Z p) (isUnit_sF' Z p) hG.om)
  ·
    rw [dl_loc Z p f g1 (sF Z p) (sF' Z p) _ (Nat.le_succ _), dl_loc Z p f g2 (sF Z p) (sF' Z p) _ le_rfl,
      dl_loc Z p f g2 (sF Z p) (sF' Z p) _ (Nat.le_succ _), dl_loc Z p f g1 (sF Z p) (sF' Z p) _ le_rfl]
    have h := congrArg (D.s.atP p).ιE hG.ratio
    rw [map_mul, map_mul] at h
    linear_combination ((∏ i : Fin D.R.rS, (Z.M p).L.cj (sF Z p (Fin.castLE (Nat.le_succ _) i))) *
      (∏ i : Fin D.R.rS, sF' Z p (Fin.castLE (Nat.le_succ _) i)) *
      ((∏ i : Fin (D.R.rS + 1), (Z.M p).L.cj (sF Z p (Fin.castLE le_rfl i))) *
      (∏ i : Fin (D.R.rS + 1), sF' Z p (Fin.castLE le_rfl i)))) * h
  ·
    show betaP p β (sF' Z p (Fin.last _) • baseChange₂ D p (g1 (Fin.last _))) -
      sF' Z p (Fin.last _) • baseChange₂ D p (g2 (Fin.last _)) ∈ _
    rw [map_smul, betaP_bc, ← smul_sub, ← map_sub]
    exact Submodule.smul_mem _ _ (bcP_mem_X Z p g2 (sF' Z p) (isUnit_sF' Z p) hG.zmap)

end ConcreteX

end Formalism.L2.SG.Pf.ScalarFramePf

namespace Formalism.L2.SG.Pf

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermLoc
  Formalism.L2.SG.Pf.ScalarFramePf

end Formalism.L2.SG.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfM =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprExistA =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprExistA", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfD\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfF\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfG\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermLoc ValuativeRel
  Formalism.L2.SG.Pf.ScalarFramePf

namespace Formalism.L2.SG.Pf.FrameGlobalPatching.FStar.LprEx

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section Glob

variable {D : D7}

theorem LprExistA_iso_span {s : Set (VS D).V} (h : ∀ x ∈ s, ∀ y ∈ s, (VS D).hT x y = 0) :
    ∀ x ∈ Submodule.span D.host.E s, ∀ y ∈ Submodule.span D.host.E s, (VS D).hT x y = 0 := by
  have h1 : ∀ x ∈ s, ∀ y ∈ Submodule.span D.host.E s, (VS D).hT x y = 0 := by
    intro x hx y hy
    have hle : Submodule.span D.host.E s ≤ LinearMap.ker ((VS D).hT x) := by
      rw [Submodule.span_le]
      intro y' hy'
      exact h x hx y' hy'
    exact hle hy
  intro x hx y hy
  have hle : Submodule.span D.host.E s ≤ LinearMap.ker ((VS D).hT.flip y) := by
    rw [Submodule.span_le]
    intro x' hx'
    show (VS D).hT.flip y x' = 0
    rw [LinearMap.flip_apply]
    exact h1 x' hx' y hy
  have := hle hx
  rw [LinearMap.mem_ker, LinearMap.flip_apply] at this
  exact this

theorem LprExistA_orth_span {s : Set (VS D).V} {x : (VS D).V} (h : ∀ v ∈ s, (VS D).hT v x = 0) :
    ∀ v ∈ Submodule.span D.host.E s, (VS D).hT v x = 0 := by
  intro v hv
  have hle : Submodule.span D.host.E s ≤ LinearMap.ker ((VS D).hT.flip x) := by
    rw [Submodule.span_le]
    intro v' hv'
    show (VS D).hT.flip x v' = 0
    rw [LinearMap.flip_apply]
    exact h v' hv'
  have := hle hv
  rw [LinearMap.mem_ker, LinearMap.flip_apply] at this
  exact this

theorem gfacts_move {Λ : Submodule (𝓞 D.host.E) (VS D).V} {f g1 g2 g2' : Fin (D.R.rS + 1) → (VS D).V}
    {β : (VS D).V ≃ₗ[D.host.E] (VS D).V} (hG : GFacts Λ f g1 g2' β)
    (hX : Submodule.span D.host.E (Set.range fun b : Fin D.R.rS => g2' b.castSucc) =
      Submodule.span D.host.E (Set.range fun b : Fin D.R.rS => g2 b.castSucc))
    (hsp : Submodule.span D.host.E (Set.range g2') = Submodule.span D.host.E (Set.range g2))
    (hz : g2' (Fin.last _) - g2 (Fin.last _) ∈
      Submodule.span D.host.E (Set.range fun b : Fin D.R.rS => g2 b.castSucc))
    (ht : GDl f g2' (D.R.rS + 1) = GDl f g2 (D.R.rS + 1)) (hr : GDl f g2' D.R.rS = GDl f g2 D.R.rS)
    (ho' : Gom' f g2' = Gom' f g2) (ho : Gom f g2' = Gom f g2) : GFacts Λ f g1 g2 β := by
  have hmap : Submodule.span D.host.E (Set.range fun b : Fin D.R.rS => g2' b.castSucc) ≤
      (Submodule.span D.host.E (Set.range fun a : Fin D.R.rS => g1 a.castSucc)).comap
        β.symm.toLinearMap := by
    rw [Submodule.span_le]
    rintro _ ⟨b, rfl⟩
    exact hG.xmap' b
  refine
    { iso := hG.iso
      lam := hG.lam
      lam' := hG.lam'
      xmap := fun a => hX ▸ hG.xmap a
      xmap' := fun a => ?_
      zmap := ?_
      fiso := hG.fiso
      g2iso := fun a b => ?_
      proj := hG.proj
      gram := hG.gram
      theta := fun x1 hx1 => ?_
      ratio := ?_
      omp := ?_
      om := ?_ }
  · have h : g2 a.castSucc ∈ Submodule.span D.host.E (Set.range fun b : Fin D.R.rS => g2' b.castSucc) := by
      rw [hX]; exact Submodule.subset_span ⟨a, rfl⟩
    exact hmap h
  · have h1 := hG.zmap
    rw [hX] at h1
    have h3 := Submodule.add_mem _ h1 hz
    rwa [sub_add_sub_cancel] at h3
  · have hiso : ∀ x ∈ Set.range (fun b : Fin D.R.rS => g2' b.castSucc),
        ∀ y ∈ Set.range (fun b : Fin D.R.rS => g2' b.castSucc), (VS D).hT x y = 0 := by
      rintro _ ⟨i, rfl⟩ _ ⟨j, rfl⟩
      exact hG.g2iso i j
    have ha : g2 a.castSucc ∈ Submodule.span D.host.E (Set.range fun b : Fin D.R.rS => g2' b.castSucc) := by
      rw [hX]; exact Submodule.subset_span ⟨a, rfl⟩
    have hb : g2 b.castSucc ∈ Submodule.span D.host.E (Set.range fun b : Fin D.R.rS => g2' b.castSucc) := by
      rw [hX]; exact Submodule.subset_span ⟨b, rfl⟩
    exact LprExistA_iso_span hiso _ ha _ hb
  · obtain ⟨x2, h1, h2, h3⟩ := hG.theta x1 hx1
    refine ⟨x2, fun i => ?_, h2, hX ▸ h3⟩
    rcases i with a | b
    · exact h1 (Sum.inl a)
    · have horth : ∀ v ∈ Set.range g2', (VS D).hT v x2 = 0 := by
        rintro _ ⟨c, rfl⟩
        exact h1 (Sum.inr c)
      have hb : g2 b ∈ Submodule.span D.host.E (Set.range g2') := by
        rw [hsp]; exact Submodule.subset_span ⟨b, rfl⟩
      exact LprExistA_orth_span horth _ hb
  · rw [← ht, ← hr]; exact hG.ratio
  · rw [← ht, ← ho']; exact hG.omp
  · rw [← ht, ← ho, ← hX]; exact hG.om

theorem gfacts_frameAct {Λ : Submodule (𝓞 D.host.E) (VS D).V} {f g1 h : Fin (D.R.rS + 1) → (VS D).V}
    {β : (VS D).V ≃ₗ[D.host.E] (VS D).V} (ξ : Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) (𝓞 D.host.E))
    (h1 : ∀ a b, b < a → ξ a b = 0) (h2 : ∀ a, ξ a a = 1) (hG : GFacts Λ f g1 (frameAct h ξ⁻¹) β) :
    GFacts Λ f g1 h β := by
  have hη := inv_unitri ξ h1 h2
  refine gfacts_move hG (Xs_frameAct_inv h ξ h1 h2) (span_frameAct_inv h ξ h1 h2) ?_
    (GDl_frameAct_top f h ξ⁻¹ hη.1 hη.2) (GDl_frameAct_r f h ξ⁻¹ hη.1 hη.2)
    (Gom'_frameAct f h ξ⁻¹ hη.1 hη.2) (Gom_frameAct f h ξ⁻¹ hη.1 hη.2)
  exact frameAct_last_sub h ξ⁻¹ (hη.2 _)

end Glob

section LocIota

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E]
variable {M : Loc.Model F E} {V : Type} [AddCommGroup V] [Module E V] (H : Loc.HermSp M V)

theorem iotaG_congr {q : E} {abelian₂ : Submodule M.L.O V} {r : ℕ} {f₀ f₁ f₂ f₂' : Fin (r + 1) → V} {e : V ≃ₗ[E] V}
    (hX : H.X f₂ = H.X f₂') (h : IotaG H q abelian₂ f₀ f₁ f₂ e) : IotaG H q abelian₂ f₀ f₁ f₂' e := by
  unfold IotaG at h ⊢
  rw [← hX]
  exact h

end LocIota

section Loc

variable {D : D7} (Z : LocDat D) (p : PlF D)

theorem locX_eq {g2 g2' : Fin (D.R.rS + 1) → (VS D).V}
    (hX : Submodule.span D.host.E (Set.range fun b : Fin D.R.rS => g2' b.castSucc) =
      Submodule.span D.host.E (Set.range fun b : Fin D.R.rS => g2 b.castSucc)) :
    (locH Z p).X (fun b => sF' Z p b • baseChange₂ D p (g2' b)) = (locH Z p).X (fun b => sF' Z p b • baseChange₂ D p (g2 b)) := by
  apply le_antisymm
  · unfold Loc.HermSp.X
    rw [Submodule.span_le]
    rintro _ ⟨a, rfl⟩
    have hm : g2' a.castSucc ∈ Submodule.span D.host.E (Set.range fun b : Fin D.R.rS => g2 b.castSucc) := by
      rw [← hX]; exact Submodule.subset_span ⟨a, rfl⟩
    exact Submodule.smul_mem _ _ (bcP_mem_X Z p g2 (sF' Z p) (isUnit_sF' Z p) hm)
  · unfold Loc.HermSp.X
    rw [Submodule.span_le]
    rintro _ ⟨a, rfl⟩
    have hm : g2 a.castSucc ∈ Submodule.span D.host.E (Set.range fun b : Fin D.R.rS => g2' b.castSucc) := by
      rw [hX]; exact Submodule.subset_span ⟨a, rfl⟩
    exact Submodule.smul_mem _ _ (bcP_mem_X Z p g2' (sF' Z p) (isUnit_sF' Z p) hm)

theorem iotaEl_frameAct {Λ : Submodule (𝓞 D.host.E) (VS D).V} {f g1 h : Fin (D.R.rS + 1) → (VS D).V}
    {β : (VS D).V ≃ₗ[D.host.E] (VS D).V} (ξ : Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) (𝓞 D.host.E))
    (h1 : ∀ a b, b < a → ξ a b = 0) (h2 : ∀ a, ξ a a = 1) (hI : IotaEl Z p Λ f g1 (frameAct h ξ⁻¹) β) :
    IotaEl Z p Λ f g1 h β := by
  intro gg hgg
  exact iotaG_congr (locH Z p) (locX_eq Z p (Xs_frameAct_inv h ξ h1 h2)) (hI gg hgg)

end Loc

end Formalism.L2.SG.Pf.FrameGlobalPatching.FStar.LprEx
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprExistA =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprExistB =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprExistB", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.Corank\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.TermDefPf\npublic import Formalism.PeriodIntegrals.ScalPairs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarEquivalenceGeneral.ScalarFactorEqOneOfLe\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScalRelRepFree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef

namespace Formalism.L2.SG.Pf.FrameGlobalPatching.FStar.LprEx

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : Formalism.BasicNotions.D7} {u u' : D.what₂.Word} {F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E)}

theorem LprExistB_equiv {Λ : Submodule (𝓞 D.host.E) (VS D).V} (hΛ : IsRowLat D F0 Λ) :
    Equivalence (Formalism.L2.SG.Corank.ScalRelD D u' F0 Λ) :=
  Formalism.L2.SG.Corank.scalarEquiv_of_G _root_.PI.UnitaryGroupMassFormula.ScalEquivGen.scalarEquivG_holds u u' F0 Λ hΛ

theorem LprExistB_repFree : Formalism.L2.SG.Corank.ScalarRepFree D u u' :=
  scalar_rep_free D u u'

theorem scal_move {Λ : Submodule (𝓞 D.host.E) (VS D).V} (hΛ : IsRowLat D F0 Λ)
    (x1 x2 y1 y2 : {x : Carrier (PD D Λ (lf D F0) u') // Gval (lf D F0) x.1 ≠ 0})
    (h1 : TermDef.mk Λ (lf D F0) (PD D Λ (lf D F0) u') x1.1 = TermDef.mk Λ (lf D F0) (PD D Λ (lf D F0) u') y1.1)
    (h2 : TermDef.mk Λ (lf D F0) (PD D Λ (lf D F0) u') x2.1 = TermDef.mk Λ (lf D F0) (PD D Λ (lf D F0) u') y2.1)
    (a : Formalism.L2.SG.Corank.ScalRelD D u' F0 Λ x1 x2) : Formalism.L2.SG.Corank.ScalRelD D u' F0 Λ y1 y2 := by
  have hEq := LprExistB_equiv (u := u) (u' := u') hΛ
  have hRF := LprExistB_repFree (D := D) (u := u) (u' := u') F0 Λ hΛ
  have r2 := (Formalism.L2.SG.Pf.double_coset_equivalence Λ (lf D F0) (PD D Λ (lf D F0) u') x2.1 y2.1).1 h2
  have a2 : Formalism.L2.SG.Corank.ScalRelD D u' F0 Λ x1 y2 := hRF x1 x2 y2 r2 a
  have r1 := (Formalism.L2.SG.Pf.double_coset_equivalence Λ (lf D F0) (PD D Λ (lf D F0) u') x1.1 y1.1).1 h1
  have a3 : Formalism.L2.SG.Corank.ScalRelD D u' F0 Λ y2 y1 := hRF y2 x1 y1 r1 (hEq.symm a2)
  exact hEq.symm a3

end Formalism.L2.SG.Pf.FrameGlobalPatching.FStar.LprEx
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprExistB =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprPfD =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprPfD", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprPfC\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocFacts\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SaturatedPf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.TermDefPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarCohPfF\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarMinors\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaUniqueness.GramNondeg\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarPairOrthogonal.MemThPairs\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarPairOrthogonal.XLeOrthXplus\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GenericityConstantDoubleCosets\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermDef Formalism.L2.SG.DataCut Formalism.L2.SG.LsDatumB
  Formalism.L2.SG.TermLoc Formalism.L2.SG.Pf.PCount Formalism.L2.SG.Pf.FrameGlobalPatching

namespace Formalism.L2.SG.Pf.FrameGlobalPatching.FStar

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open Formalism.MainNotions.S.Loc.HermSp.LprU

namespace LprND

variable {D : Formalism.BasicNotions.D7}

def gramW {ι : Type} (w : ι → (VS D).V) : Matrix ι ι D.host.E := Matrix.of fun i j => brS (VS D) (w j) (w i)

theorem gramW_det_ne {r : ℕ} {U : Submodule D.host.E (VS D).V} (hdim : Module.finrank D.host.E U = 2 * r + 2)
    (hnd : U ⊓ orth (VS D) U = ⊥) (w : Fin (r + 1) ⊕ Fin (r + 1) → (VS D).V)
    (hw : Submodule.span D.host.E (Set.range w) = U) : (gramW w).det ≠ 0 := by
  have hli : LinearIndependent D.host.E w := by
    rw [linearIndependent_iff_card_eq_finrank_span]
    show _ = Module.finrank D.host.E (Submodule.span D.host.E (Set.range w))
    rw [hw, hdim, Fintype.card_sum, Fintype.card_fin]
    ring
  intro h0
  obtain ⟨c, hc0, hMc⟩ := Matrix.exists_mulVec_eq_zero_iff.2 h0
  set x := ∑ k, c k • w k with hx
  have hx2 : ∀ i, (VS D).hT (w i) x = 0 := by
    intro i
    have h := congrFun hMc i
    simp only [Matrix.mulVec, dotProduct, gramW, Matrix.of_apply, brS, Pi.zero_apply] at h

    rw [hx, map_sum]
    simp only [map_smul, smul_eq_mul]
    rw [← h]
    exact Finset.sum_congr rfl fun j _ => mul_comm _ _
  have hx1 : x ∈ U := by
    rw [← hw, hx]
    exact Submodule.sum_mem _ fun k _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨k, rfl⟩)
  have hx3 : x ∈ orth (VS D) U := by
    simp only [orth, Submodule.mem_iInf, LinearMap.mem_ker]
    intro y hy
    rw [← hw] at hy
    have hk : Submodule.span D.host.E (Set.range w) ≤ LinearMap.ker ((VS D).hT.flip x) := by
      rw [Submodule.span_le]
      rintro _ ⟨i, rfl⟩
      show (VS D).hT.flip x (w i) = 0
      rw [LinearMap.flip_apply]
      exact hx2 i
    have h := hk hy
    rw [LinearMap.mem_ker, LinearMap.flip_apply] at h
    exact h
  have hx0 : x = 0 := by
    have h : x ∈ U ⊓ orth (VS D) U := ⟨hx1, hx3⟩
    rw [hnd] at h
    exact (Submodule.mem_bot _).1 h
  apply hc0
  funext k
  exact Fintype.linearIndependent_iff.1 hli c (hx ▸ hx0) k

theorem gram_pair_ne {T T' : D.host.E} (Λ : Submodule (𝓞 D.host.E) (VS D).V)
    (F : LFlag (D.sp.Y 0) D.R.rS T) (F'' : LFlag (D.sp.Y 0) D.R.rS T') (hG : Gflag F.fl F''.fl ≠ 0)
    (w : Fin (D.R.rS + 1) ⊕ Fin (D.R.rS + 1) → (VS D).V)
    (hw : Submodule.span D.host.E (Set.range w) =
      Submodule.span D.host.E (Set.range (Sum.elim F.fl.fvec F''.fl.fvec))) : (gramW w).det ≠ 0 := by
  set v := Sum.elim F.fl.fvec F''.fl.fvec with hv
  set Λ' : Submodule (𝓞 D.host.E) (VS D).V := Λ ⊔ Submodule.span (𝓞 D.host.E) (Set.range v) with hΛ'
  have hmem : ∀ k, v k ∈ Λ' := fun k => Submodule.mem_sup_right (Submodule.subset_span ⟨k, rfl⟩)
  let F1 : LFlag (D.sp.Y 0) D.R.rS T := ⟨F.fl, F.fl.z⟩
  let F2 : LFlag (D.sp.Y 0) D.R.rS T' := ⟨F''.fl, F''.fl.z⟩
  have hX1 : Xsp F1 ≤ spanE (VS D) (XLam Λ' F1) := by
    show Submodule.span D.host.E (Set.range F.fl.e) ≤ _
    rw [Submodule.span_le]
    rintro _ ⟨a, rfl⟩
    refine Submodule.subset_span ⟨?_, Submodule.subset_span ⟨a, rfl⟩⟩
    have h := hmem (Sum.inl a.castSucc)
    simpa [hv, PI.UnitaryGroupMassFormula.BetaLUniq.GN.fvec_castSucc] using h
  have hX2 : Xsp F2 ≤ spanE (VS D) (XLam Λ' F2) := by
    show Submodule.span D.host.E (Set.range F''.fl.e) ≤ _
    rw [Submodule.span_le]
    rintro _ ⟨a, rfl⟩
    refine Submodule.subset_span ⟨?_, Submodule.subset_span ⟨a, rfl⟩⟩
    have h := hmem (Sum.inr a.castSucc)
    simpa [hv, PI.UnitaryGroupMassFormula.BetaLUniq.GN.fvec_castSucc] using h
  have hU : UUE Λ' F1 F2 = Submodule.span D.host.E (Set.range v) :=
    PI.ScalarPairDr.W.UUE_eq Λ' F1 F2 rfl rfl hX1 hX2
  have n := PI.UnitaryGroupMassFormula.BetaLUniq.gram_matrix_nondegenerate_of_span_eq Λ' F1 F2 hU hG
  exact gramW_det_ne n.1 n.2 w (hw.trans hU.symm)

theorem span_frameAct {r : ℕ} (u v : Fin (r + 1) → (VS D).V) (ξ : Matrix (Fin (r + 1)) (Fin (r + 1)) (𝓞 D.host.E))
    (h1 : ∀ a b, b < a → ξ a b = 0) (h2 : ∀ a, ξ a a = 1) :
    Submodule.span D.host.E (Set.range (Sum.elim u (frameAct v ξ⁻¹))) =
      Submodule.span D.host.E (Set.range (Sum.elim u v)) := by
  have hdet : IsUnit ξ.det := by
    have hbt : ξ.BlockTriangular id := fun i j hij => h1 i j hij
    rw [Matrix.det_of_isUpperTriangular hbt]; simp [h2]
  have hinv : ξ⁻¹ * ξ = 1 := Matrix.nonsing_inv_mul _ hdet
  have hv : v = frameAct (frameAct v ξ⁻¹) ξ := by
    funext b
    simp only [frameAct, Finset.smul_sum, smul_smul]
    rw [Finset.sum_comm]
    have e : ∀ a, ∑ c, ((ξ⁻¹ a c : 𝓞 D.host.E) : D.host.E) * ((ξ c b : 𝓞 D.host.E) : D.host.E) =
        (((ξ⁻¹ * ξ) a b : 𝓞 D.host.E) : D.host.E) := by
      intro a; rw [Matrix.mul_apply]; push_cast; rfl
    simp_rw [← Finset.sum_smul]
    have e2 : ∀ a, (∑ c, ((ξ c b : 𝓞 D.host.E) : D.host.E) * ((ξ⁻¹ a c : 𝓞 D.host.E) : D.host.E)) =
        (((ξ⁻¹ * ξ) a b : 𝓞 D.host.E) : D.host.E) := by
      intro a; rw [← e a]; exact Finset.sum_congr rfl fun c _ => mul_comm _ _
    simp only [e2, hinv, Matrix.one_apply]
    simp
  apply le_antisymm
  · rw [Submodule.span_le]
    rintro _ ⟨k, rfl⟩
    cases k with
    | inl a => exact Submodule.subset_span ⟨Sum.inl a, rfl⟩
    | inr b =>
      show frameAct v ξ⁻¹ b ∈ _
      exact Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨Sum.inr a, rfl⟩)
  · rw [Submodule.span_le]
    rintro _ ⟨k, rfl⟩
    cases k with
    | inl a => exact Submodule.subset_span ⟨Sum.inl a, rfl⟩
    | inr b =>
      show v b ∈ _
      have hb : v b = frameAct (frameAct v ξ⁻¹) ξ b := congrFun hv b
      rw [hb]
      exact Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨Sum.inr a, rfl⟩)

variable (Zd : LocDat D) (p : PlF D)

theorem gram_loc {ι : Type} [Fintype ι] [DecidableEq ι] (w : ι → (VS D).V) (s : ι → (D.s.atP p).Ep) :
    (locH Zd p).gram (fun k => s k • baseChange₂ D p (w k)) =
      Matrix.diagonal (fun k => (Zd.M p).L.cj (s k)) * (gramW w).map (D.s.atP p).ιE * Matrix.diagonal s := by
  ext i j
  simp only [Formalism.MainNotions.S.Loc.HermSp.gram, Matrix.of_apply, Matrix.diagonal_mul, Matrix.mul_diagonal, Matrix.map_apply,
    gramW]
  rw [Formalism.L2.SG.Pf.ScalarFramePf.h_bcP]
  ring

theorem gramInvE_loc {ι : Type} [Fintype ι] [DecidableEq ι] (w : ι → (VS D).V) (s : ι → (D.s.atP p).Ep)
    (hs : ∀ k, IsUnit (s k)) (hdet : (gramW w).det ≠ 0) :
    GramInvE (locH Zd p) (fun k => s k • baseChange₂ D p (w k)) := by
  set M := gramW w with hMdef
  set ι' := (D.s.atP p).ιE with hι
  set si : ι → (D.s.atP p).Ep := fun k => (((hs k).unit⁻¹ : (D.s.atP p).Epˣ) : (D.s.atP p).Ep) with hsi
  refine ⟨Matrix.diagonal si * M⁻¹.map ι' * Matrix.diagonal (fun k => (Zd.M p).L.cj (si k)), ?_⟩
  rw [gram_loc]
  have hM : M⁻¹ * M = 1 := Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.2 hdet)
  have hmap : M⁻¹.map ι' * M.map ι' = 1 := by
    rw [← Matrix.map_mul, hM, Matrix.map_one _ (map_zero ι') (map_one ι')]
  have hs1 : (fun k => si k * s k) = fun _ => 1 := funext fun k => (hs k).val_inv_mul
  have hc1 : (fun k => (Zd.M p).L.cj (si k) * (Zd.M p).L.cj (s k)) = fun _ => 1 := by
    funext k; rw [← map_mul, (hs k).val_inv_mul, map_one]
  simp only [Matrix.mul_assoc]
  rw [← Matrix.mul_assoc (Matrix.diagonal fun k => (Zd.M p).L.cj (si k)), Matrix.diagonal_mul_diagonal, hc1,
    Matrix.diagonal_one, Matrix.one_mul, ← Matrix.mul_assoc (M⁻¹.map ι'), hmap, Matrix.one_mul,
    Matrix.diagonal_mul_diagonal, hs1, Matrix.diagonal_one]

end LprND

open LprND

variable {D : Formalism.BasicNotions.D7} (Zd : LocDat D) {u u' : D.what₂.Word} {F0 : FlagG (VS D) D.R.rS (CntLocal.Tn u)}
  {what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V)}

theorem genLoc_rows (hrows : IsRowReps D F0 what₂) (γ : TermDef.Term D u u' F0 what₂)
    (w : Point D.host.E (D.R.rS + 1)) (hγ : EligAt γ w) (p : PlF D) : (locH Zd p).IsGeneric (tLoc Zd p γ) := by
  have hR : IsRowLat D F0 γ.lam := hrows.1 γ.lam γ.mem
  obtain ⟨hgen, hG⟩ := hγ.1
  obtain ⟨h2, h2e⟩ := starRepF_rep γ
  obtain ⟨F', ⟨h1, h1e⟩, hF'⟩ := hgen
  have hrel := (Formalism.L2.SG.Pf.double_coset_equivalence γ.lam (lf D F0) (PD D γ.lam (lf D F0) u') ⟨F', h1⟩ ⟨repF γ, h2⟩).1
    (h1e.trans h2e.symm)
  have hgenR : IsGeneric γ.lam (gS D) (lf D F0) (repF γ) := by
    obtain ⟨-, ⟨-, -, hFl, hFc⟩, -⟩ := hR
    exact (PI.TermAttrConst.UnitaryGroupMassFormula.genFun_gen γ.lam (lf D F0) _ (gS D)
      hFl hFc (fun x hx => ⟨hx.1, hx.2.1, hx.2.2.1⟩) ⟨F', h1⟩ ⟨repF γ, h2⟩ hrel).1 hF'
  have hrel2 := (Formalism.L2.SG.Pf.double_coset_equivalence γ.lam (lf D F0) (PD D γ.lam (lf D F0) u') (Quot.out γ.cls)
    ⟨repF γ, h2⟩).1 ((Quot.out_eq γ.cls).trans h2e.symm)
  have hGv : Gval (lf D F0) (repF γ) ≠ 0 := by
    have heq := Formalism.L2.SG.Pf.gval_rel (lf D F0) hrel2
    change Gval (lf D F0) (repF γ) = Gval (lf D F0) (Quot.out γ.cls).val at heq
    rw [heq]; exact hG
  exact (Formalism.L2.SG.Pf.frameGenLoc_holds D Zd F0 γ.lam (repF γ) hR h2
    (Formalism.L2.SG.Pf.m_plus_independent _ _ _ _) hGv).1 hgenR p

theorem gval_repF (γ : TermDef.Term D u u' F0 what₂) (w : Point D.host.E (D.R.rS + 1)) (hγ : EligAt γ w) :
    Gval (lf D F0) (repF γ) ≠ 0 := by
  obtain ⟨-, hG⟩ := hγ.1
  obtain ⟨h2, h2e⟩ := starRepF_rep γ
  have hrel2 := (Formalism.L2.SG.Pf.double_coset_equivalence γ.lam (lf D F0) (PD D γ.lam (lf D F0) u') (Quot.out γ.cls)
    ⟨repF γ, h2⟩).1 ((Quot.out_eq γ.cls).trans h2e.symm)
  have heq := Formalism.L2.SG.Pf.gval_rel (lf D F0) hrel2
  change Gval (lf D F0) (repF γ) = Gval (lf D F0) (Quot.out γ.cls).val at heq
  rw [heq]; exact hG

theorem iso_locF' (p : PlF D) {T' : D.host.E} (F' : LFlag (D.sp.Y 0) D.R.rS T') :
    Iso' (locH Zd p) (locF' Zd p F') := by
  intro a b hab
  show (locH Zd p).h ((TermLoc.sgnP' D p a * frFac Zd.δ p a) • baseChange₂ D p (frame F' a))
    ((TermLoc.sgnP' D p b * frFac Zd.δ p b) • baseChange₂ D p (frame F' b)) = 0
  rw [Formalism.L2.SG.Pf.ScalarFramePf.h_bcP]
  have h0 : brS (VS D) (frame F' a) (frame F' b) = 0 := by
    unfold brS
    rcases hab with ha | hb
    · obtain ⟨i, rfl⟩ := Fin.exists_castSucc_eq.2 ha
      rw [PI.ScalarPairDr.W.hT_swap]
      have e : (VS D).hT (frame F' i.castSucc) (frame F' b) = 0 := by
        show (VS D).hT (F'.fl.fvec i.castSucc) (F'.fl.fvec b) = 0
        rw [PI.UnitaryGroupMassFormula.BetaLUniq.GN.fvec_castSucc]
        refine Fin.lastCases ?_ (fun j => ?_) b
        · rw [PI.UnitaryGroupMassFormula.BetaLUniq.GN.fvec_last]; exact F'.fl.z_orth i
        · rw [PI.UnitaryGroupMassFormula.BetaLUniq.GN.fvec_castSucc]; exact F'.fl.e_iso i j
      rw [e, star_zero]
    · obtain ⟨j, rfl⟩ := Fin.exists_castSucc_eq.2 hb
      show (VS D).hT (F'.fl.fvec j.castSucc) (F'.fl.fvec a) = 0
      rw [PI.UnitaryGroupMassFormula.BetaLUniq.GN.fvec_castSucc]
      refine Fin.lastCases ?_ (fun i => ?_) a
      · rw [PI.UnitaryGroupMassFormula.BetaLUniq.GN.fvec_last]; exact F'.fl.z_orth j
      · rw [PI.UnitaryGroupMassFormula.BetaLUniq.GN.fvec_castSucc]; exact F'.fl.e_iso j i
  rw [h0, map_zero, mul_zero]

theorem lprNondeg_holds : LprNondeg Zd u u' F0 what₂ := by
  intro hrows γ Z hC F' hP p
  obtain ⟨w, hγ, -, -, -, -⟩ := id hC
  have hgen := genLoc_rows Zd hrows γ w hγ p
  have hZ : ZhatL (lf D F0) F' = Z := hP.1.2.2.2.2
  have hdet : Z.det ≠ 0 := (starMinors_holds u u' F0 what₂ γ Z hC).1
  have hsK : ∀ k, IsUnit (Sum.elim (fun a => sgnP D p a * frFac Zd.δ p a)
      (fun b => sgnP' D p b * frFac Zd.δ p b) k) := by
    intro k
    cases k with
    | inl a => exact Formalism.L2.SG.Pf.ScalarFramePf.isUnit_sF Zd p a
    | inr b => exact Formalism.L2.SG.Pf.ScalarFramePf.isUnit_sF' Zd p b

  have n1 : GramInvE (locH Zd p) (Sum.elim (tLoc Zd p γ).f (tLoc Zd p γ).f') := by
    have e : Sum.elim (tLoc Zd p γ).f (tLoc Zd p γ).f' = fun k => Sum.elim (fun a => sgnP D p a * frFac Zd.δ p a)
        (fun b => sgnP' D p b * frFac Zd.δ p b) k • baseChange₂ D p (Sum.elim (frame (lf D F0)) (starFrame γ) k) := by
      funext k; cases k <;> rfl
    rw [e]
    refine gramInvE_loc Zd p _ _ hsK (gram_pair_ne γ.lam (lf D F0) (repF γ) (gval_repF γ w hγ) _ ?_)
    have hu := admissibility_witness_unitriangular γ.lam (lf D F0) (repF γ)
    exact span_frameAct _ _ _ hu.1 hu.2
  have n2 : GramInvE (locH Zd p) (Sum.elim (tLoc Zd p γ).f (locF' Zd p F')) := by
    have e : Sum.elim (tLoc Zd p γ).f (locF' Zd p F') = fun k => Sum.elim (fun a => sgnP D p a * frFac Zd.δ p a)
        (fun b => sgnP' D p b * frFac Zd.δ p b) k • baseChange₂ D p (Sum.elim (frame (lf D F0)) (frame F') k) := by
      funext k; cases k <;> rfl
    rw [e]
    exact gramInvE_loc Zd p _ _ hsK (gram_pair_ne γ.lam (lf D F0) F' hP.1.1.2.2 _ rfl)
  refine ⟨n1, n2, ?_, ?_, hgen.1.2.2.1.2.1, iso_locF' Zd p F'⟩
  · rw [← dl_full]; exact hgen.1.2.2.2.1
  · rw [← dl_full]; exact local_discriminant_unit_of_det Zd p γ Z F' hZ hdet

theorem lprPart_of' (hE : LprExist Zd u u' F0 what₂) : LprPart Zd u u' F0 what₂ :=
  lprPart_of Zd hE (lprNondeg_holds Zd)

end Formalism.L2.SG.Pf.FrameGlobalPatching.FStar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprPfD =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprExist =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprExist", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprPfC\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfL\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfM\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.TermDefPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprExistA\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprExistB\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprPfD\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarMinors\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GenericityConstantDoubleCosets\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermDef Formalism.L2.SG.DataCut Formalism.L2.SG.LsDatumB
  Formalism.L2.SG.TermLoc Formalism.L2.SG.Pf.PCount Formalism.L2.SG.Pf.FrameGlobalPatching

namespace Formalism.L2.SG.Pf.FrameGlobalPatching.FStar

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace LprEx

variable {D : Formalism.BasicNotions.D7} {u u' : D.what₂.Word} {F0 : FlagG (VS D) D.R.rS (CntLocal.Tn u)}
  {what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V)}

theorem scal_rep (hrows : IsRowReps D F0 what₂) (γ : TermDef.Term D u u' F0 what₂) (Z : PairVal.MatR D)
    (F'' : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E)) (hP : IsPartner γ Z F'')
    (hGr : Gval (lf D F0) (repF γ) ≠ 0) :
    ∃ β, IsPair γ.lam (lf D F0) (repF γ) F'' β (gS D) ∧ s0 γ.lam (lf D F0) (repF γ) F'' β D.R.k = 1 ∧
      IsScalar γ.lam (lf D F0) (repF γ) F'' β := by
  obtain ⟨hE, γ', ⟨pr, hp1, hp2, hps, hpsc⟩, h3, h3e⟩ := hP
  obtain ⟨h2, h2e⟩ := starRepF_rep γ
  have hGF : Gval (lf D F0) F'' ≠ 0 := hE.1.2.2
  obtain ⟨lam, mem, cls⟩ := γ
  obtain ⟨lam', mem', cls'⟩ := γ'
  obtain ⟨lp, mp, p1, p2, gp1, gp2, bp, ip⟩ := pr
  simp only [Formalism.L2.SG.Corank.Pair.pfst, Formalism.L2.SG.Corank.Pair.psnd] at hp1 hp2
  obtain ⟨rfl, hc1⟩ := hp1
  obtain ⟨rfl, hc2⟩ := hp2
  exact scal_move (hrows.1 _ mp) ⟨p1, gp1⟩ ⟨p2, gp2⟩ ⟨⟨repF _, h2⟩, hGr⟩ ⟨⟨F'', h3⟩, hGF⟩ h2e.symm h3e.symm
    ⟨bp, ip, hps, hpsc⟩

variable (Zd : LocDat D)



theorem lprExist_of (hI : Formalism.L2.SG.Pf.ScalarFramePf.IotaStep) : LprExist Zd u u' F0 what₂ := by
  intro hrows γ Z hC F'' hP p
  obtain ⟨w, hγ, -⟩ := hC
  have hR : IsRowLat D F0 γ.lam := hrows.1 γ.lam γ.mem
  have hF : FixedHyp D γ.lam (lf D F0) := hR.2.1
  obtain ⟨h2, h2e⟩ := starRepF_rep γ
  have hGr : Gval (lf D F0) (repF γ) ≠ 0 := gval_repF γ w hγ
  have hgenR : IsGeneric γ.lam (gS D) (lf D F0) (repF γ) := by
    obtain ⟨hgen, -⟩ := hγ.1
    obtain ⟨F', ⟨h1, h1e⟩, hF'⟩ := hgen
    have hrel := (Formalism.L2.SG.Pf.double_coset_equivalence γ.lam (lf D F0) (PD D γ.lam (lf D F0) u') ⟨F', h1⟩ ⟨repF γ, h2⟩).1
      (h1e.trans h2e.symm)
    exact (PI.TermAttrConst.UnitaryGroupMassFormula.genericity_constant_double_cosets D u u' F0 γ.lam hR ⟨F', h1⟩ ⟨repF γ, h2⟩ hrel).1 hF'
  have hE := hP.1
  obtain ⟨β, hPair, hs, hsc⟩ := scal_rep hrows γ Z F'' hP hGr
  have hT : ((Tu D u : ℕ) : D.host.E) ≠ 0 := Formalism.L2.SG.Corank.tu_ne_zero u
  have hT' : ((Tu D u' : ℕ) : D.host.E) ≠ 0 := Formalism.L2.SG.Corank.tu_ne_zero u'
  have hG := Formalism.L2.SG.Pf.ScalarFramePf.gfacts_of γ.lam (lf D F0) (repF γ) F'' β hF h2.1 hE.1.1 h2.2.2.1
    hE.2.2.2.1.1 hPair hs hsc hGr hE.1.2.2 hT hT'
  have hIo := hI D Zd γ.lam (lf D F0) (repF γ) F'' β hF h2.1 hE.1.1 h2.2.2.1 hE.2.2.2.1.1 h2.2.1 hE.1.2.1 hPair
    hgenR hE.2.2.1 hs hsc hGr hE.1.2.2 hT hT' p
  have hξ := admissibility_witness_unitriangular γ.lam (lf D F0) F''
  have hG2 := gfacts_frameAct (admXi D γ.lam (lf D F0) F'') hξ.1 hξ.2 hG
  have hI2 := iotaEl_frameAct Zd p (admXi D γ.lam (lf D F0) F'') hξ.1 hξ.2 hIo
  obtain ⟨hId, hRe⟩ := Formalism.L2.SG.Pf.ScalarFramePf.identResp_lt Zd p γ.lam (frame (lf D F0)) _ (frame F'') β
    (Tu D u) (Tu D u') hG2 hI2
  exact ⟨Formalism.L2.SG.Pf.ScalarFramePf.phiP Zd p γ.lam (frame (lf D F0)) _ (frame F'') β hG2, hId, hRe.2.2.2.1,
    hRe.2.2.1, hRe.2.2.2.2⟩

theorem lprPart_of_iota (hI : Formalism.L2.SG.Pf.ScalarFramePf.IotaStep) : LprPart Zd u u' F0 what₂ :=
  lprPart_of' Zd (lprExist_of Zd hI)

end LprEx

end Formalism.L2.SG.Pf.FrameGlobalPatching.FStar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprExist =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprClose =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprClose", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBwdBetaK\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLocInB\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFrameIota\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBwdBetaF\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprExist\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermDef Formalism.L2.SG.DataCut Formalism.L2.SG.LsDatumB
  Formalism.L2.SG.TermLoc Formalism.L2.SG.Pf.PCount Formalism.L2.SG.Pf.FrameGlobalPatching

namespace Formalism.L2.SG.Pf.FrameGlobalPatching.FStar

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : Formalism.BasicNotions.D7} (Zd : LocDat D) {u u' : D.what₂.Word} {F0 : FlagG (VS D) D.R.rS (CntLocal.Tn u)}
  {what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V)}

theorem lprPart_holds : LprPart Zd u u' F0 what₂ :=
  LprEx.lprPart_of_iota Zd Formalism.L2.SG.Pf.iotaStep_holds

theorem fStarC_of_beta (hC : CtxP u u' F0 what₂) (hRat : BetaRat Zd u u' F0 what₂) (hInt : BetaInt Zd u u' F0 what₂) :
    FStarC Zd u u' F0 what₂ :=
  fStarC_of_leaves' Zd hC (lprPart_holds Zd) hRat hInt

end Formalism.L2.SG.Pf.FrameGlobalPatching.FStar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprClose =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FrGlobPOfInt =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FrGlobPOfInt", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBwdBetaK\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarBetaRat\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLprClose\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermDef Formalism.L2.SG.DataCut Formalism.L2.SG.LsDatumB
  Formalism.L2.SG.TermLoc Formalism.L2.SG.Pf.PCount Formalism.L2.SG.Pf.FrameGlobalPatching

namespace Formalism.L2.SG.Pf.FrameGlobalPatching.FStar

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : Formalism.BasicNotions.D7} (Zd : LocDat D) {u u' : D.what₂.Word} {F0 : FlagG (VS D) D.R.rS (CntLocal.Tn u)}
  {what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V)}

theorem fStarC_of_int (hC : CtxP u u' F0 what₂) (hInt : BetaInt Zd u u' F0 what₂) : FStarC Zd u u' F0 what₂ :=
  fStarC_of_beta Zd hC (betaRat_holds Zd u u' F0 what₂) hInt

end Formalism.L2.SG.Pf.FrameGlobalPatching.FStar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FrGlobPOfInt =====
