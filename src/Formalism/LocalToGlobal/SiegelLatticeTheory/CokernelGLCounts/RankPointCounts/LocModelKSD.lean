module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocModelKS
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.NcValDiffProd
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermLoc
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.NormMod
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocFacts
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LeadingMinorIntegrality
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralReduction
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ProdFormulaE
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilySeparationBound
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.GlobalConditionOfLocalAgreement
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PeriodLatticeFactsSplitOfGeneral
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.DApprox
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.LGSmall
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.RingInverseAlgebraMap
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.T2SpaceOfNonarchimedeanLocalField
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.TrDual
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.HaarAlg
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.HaarMain
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.NormSt

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocModelKSN, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocModelKSD

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocModelKSN =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocModelKSN", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocModelKS\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralReduction\nimport Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ProdFormulaE\nimport Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilySeparationBound\nimport Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.GlobalConditionOfLocalAgreement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.S Formalism.MainNotions.S.LocalSplitGroups Formalism.FourierDecayAlt Formalism.L2.SG.DataInst
open Classical ValuativeRel

namespace Formalism.L2.SG.Pf.LMK

variable {D : Formalism.BasicNotions.D7}

def DeltaProd (D : Formalism.BasicNotions.D7) : Prop :=
  ∀ (δ : ∀ p : PlF D, (D.s.atP p).Fp) (M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep),
    (∀ p, Agree δ M p) →
      (Function.mulSupport fun p => A5.modK (M p).R (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p))).Finite ∧
      ∏ᶠ p, A5.modK (M p).R (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p)) = (D.host.rdE ^ (2 * D.R.f))⁻¹

theorem modK_inv_unit {K : Type} [CommRing K] [TopologicalSpace K] [IsTopologicalRing K] {R : Subring K}
    {ψ : AddChar K ℂ} (hd : A5.LocalDatum K R ψ) {x : K} (hx : IsUnit x) :
    A5.modK R (Ring.inverse x) = (A5.modK R x)⁻¹ := by
  have hu : IsUnit (Ring.inverse x) := hx.ringInverse
  have h1 : A5.modK R (Ring.inverse x) * A5.modK R x = 1 := by
    rw [← Formalism.FourierDecayAlt.P.A5x5.modK_mul' hd hu hx, Ring.inverse_mul_cancel x hx]
    simp only [A5.modK, A5.mulR]
    have hm : AddSubgroup.map (AddMonoidHom.mulLeft (1 : K)) R.toAddSubgroup = R.toAddSubgroup := by
      ext y
      simp
    rw [hm, AddSubgroup.relIndex_self]
    simp
  exact eq_inv_of_mul_eq_one_left h1

theorem modK_twist {δ : ∀ p : PlF D, (D.s.atP p).Fp} {M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep}
    (hA : ∀ p, Agree δ M p) (p : PlF D) (s : ℕ) : A5.modK (M p).R (twist p s (1 : (D.s.atP p).Ep)) = 1 := by
  have hOK := (hA p).1
  haveI := Formalism.MainNotions.LocalModelPeriodLattices.top_of_OK (M p) hOK
  have hd := Formalism.MainNotions.LocalModelPeriodLattices.datum_of_OK (M p) hOK
  have h1 : A5.modK (M p).R 1 = 1 := by
    simp only [A5.modK, A5.mulR]
    have hm1 : AddSubgroup.map (AddMonoidHom.mulLeft (1 : (D.s.atP p).Ep)) (M p).R.toAddSubgroup =
        (M p).R.toAddSubgroup := by
      ext y
      simp
    rw [hm1, AddSubgroup.relIndex_self]
    simp
  have htw1 : twist p s 1 * twist p s 1 = 1 := by
    rcases hsp : (D.s.atP p).split with _ | sg
    · simp [twist, hsp]
    · simp only [twist, hsp]
      apply sg.e.injective
      rw [map_mul, map_one]
      simp only [AlgEquiv.apply_symm_apply]
      refine Prod.ext ?_ ?_ <;> first | (simp; done) | (simp [← mul_pow]; done)
  have hu : IsUnit (twist p s 1) := ⟨⟨twist p s 1, twist p s 1, htw1, htw1⟩, rfl⟩
  have hsq : A5.modK (M p).R (twist p s 1) * A5.modK (M p).R (twist p s 1) = 1 := by
    rw [← Formalism.FourierDecayAlt.P.A5x5.modK_mul' hd hu hu, htw1, h1]
  have hnn : 0 ≤ A5.modK (M p).R (twist p s 1) := by
    unfold A5.modK
    positivity
  rcases mul_self_eq_one_iff.mp hsq with h | h
  · exact h
  · linarith

theorem alg_mem_R {M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep}
    (p : PlF D) {b : (D.s.atP p).Fp} (hb : b ∈ 𝒪[(D.s.atP p).Fp]) :
    algebraMap (D.s.atP p).Fp (D.s.atP p).Ep b ∈ (M p).R := by
  rcases hsp : (M p).split with _ | g
  · simp only [Loc.Model.R, hsp]
    rw [(M p).L.O_def]
    first
    | (rw [show algebraMap (D.s.atP p).Fp (D.s.atP p).Ep b =
          algebraMap 𝒪[(D.s.atP p).Fp] (D.s.atP p).Ep ⟨b, hb⟩ from rfl]
       exact isIntegral_algebraMap)
  · simp only [Loc.Model.R, hsp]
    rw [Subring.mem_comap, Subring.mem_map]
    refine ⟨(⟨b, hb⟩, ⟨b, hb⟩), ?_, ?_⟩
    · rfl
    · simp

theorem modK_natUnit {δ : ∀ p : PlF D, (D.s.atP p).Fp} {M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep}
    (hA : ∀ p, Agree δ M p) (p : PlF D) (n : ℕ) (hn : ¬ Loc.resChar p ∣ n) :
    A5.modK (M p).R (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep ((n : ℕ) : (D.s.atP p).Fp)) = 1 := by
  have hv := Formalism.MainNotions.BridgeLemma.v_nat p n hn
  have hn0 : ((n : ℕ) : (D.s.atP p).Fp) ≠ 0 := by
    intro h0
    rw [h0, map_zero] at hv
    exact zero_ne_one hv
  have hinv : (((n : ℕ) : (D.s.atP p).Fp))⁻¹ ∈ 𝒪[(D.s.atP p).Fp] := by
    first
    | (rw [Valuation.mem_integer_iff, map_inv₀, hv, inv_one])
  obtain ⟨w, hw⟩ : ∃ w : 𝒪[(D.s.atP p).Fp], (w : (D.s.atP p).Fp) * ((n : ℕ) : (D.s.atP p).Fp) = 1 :=
    ⟨⟨_, hinv⟩, inv_mul_cancel₀ hn0⟩
  have hnO : ((n : ℕ) : (D.s.atP p).Fp) ∈ 𝒪[(D.s.atP p).Fp] := by
    first
    | exact natCast_mem _ n
  have hxR := alg_mem_R (M := M) p hnO
  have hyR := alg_mem_R (M := M) p w.2
  have hxy : algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (w : (D.s.atP p).Fp) *
      algebraMap (D.s.atP p).Fp (D.s.atP p).Ep ((n : ℕ) : (D.s.atP p).Fp) = 1 := by
    rw [← map_mul, hw, map_one]
  simp only [A5.modK, A5.mulR]
  have hmap : AddSubgroup.map (AddMonoidHom.mulLeft (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep
      ((n : ℕ) : (D.s.atP p).Fp))) (M p).R.toAddSubgroup = (M p).R.toAddSubgroup := by
    ext z
    simp only [AddSubgroup.mem_map]
    constructor
    · rintro ⟨y, hy, rfl⟩
      exact (M p).R.mul_mem hxR hy
    · intro hz
      refine ⟨_, (M p).R.mul_mem hyR hz, ?_⟩
      show algebraMap (D.s.atP p).Fp (D.s.atP p).Ep ((n : ℕ) : (D.s.atP p).Fp) *
        (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (w : (D.s.atP p).Fp) * z) = z
      rw [← mul_assoc, mul_comm (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep ((n : ℕ) : (D.s.atP p).Fp)), hxy,
        one_mul]
  rw [hmap, AddSubgroup.relIndex_self]
  simp

theorem ιE_nat (p : PlF D) (n : ℕ) :
    (D.s.atP p).ιE ((n : ℕ) : D.host.E) = algebraMap (D.s.atP p).Fp (D.s.atP p).Ep ((n : ℕ) : (D.s.atP p).Fp) := by
  rw [map_natCast, map_natCast]

theorem modK_uP {δ : ∀ p : PlF D, (D.s.atP p).Fp} {M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep}
    (hA : ∀ p, Agree δ M p) (p : PlF D) : A5.modK (M p).R ((D.s.atP p).ιE (uP p : D.host.E)) = 1 := by
  have := Formalism.MainNotions.LocalModelPeriodLattices.top_of_OK (M p) (hA p).1
  have hv := Formalism.MainNotions.BridgeLemma.v_nat p _ (Formalism.MainNotions.BridgeLemma.oth_not_dvd p)
  set b : (D.s.atP p).Fp := ((Formalism.MainNotions.BridgeLemma.oth p : ℕ) : (D.s.atP p).Fp) with hbdef
  have hb0 : b ≠ 0 := by intro h0; rw [h0, map_zero] at hv; exact zero_ne_one hv
  have hb1 : b ∈ 𝒪[(D.s.atP p).Fp] := by rw [Valuation.mem_integer_iff, hv]
  have hb2 : b⁻¹ ∈ 𝒪[(D.s.atP p).Fp] := by rw [Valuation.mem_integer_iff, map_inv₀, hv, inv_one]
  have hoE : ((Formalism.MainNotions.BridgeLemma.oth p : ℕ) : D.host.E) ≠ 0 := by exact_mod_cast Formalism.MainNotions.BridgeLemma.oth_ne_zero p
  have huo : (uP p : D.host.E) * ((Formalism.MainNotions.BridgeLemma.oth p : ℕ) : D.host.E) = 1 := by
    rw [Formalism.MainNotions.BridgeLemma.unitAt_eq]
    push_cast
    exact inv_mul_cancel₀ hoE
  have e1 : (D.s.atP p).ιE (uP p : D.host.E) = algebraMap (D.s.atP p).Fp (D.s.atP p).Ep b⁻¹ := by
    calc (D.s.atP p).ιE (uP p : D.host.E)
        = (D.s.atP p).ιE (uP p : D.host.E) * (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep b *
            algebraMap (D.s.atP p).Fp (D.s.atP p).Ep b⁻¹) := by
          rw [← map_mul, mul_inv_cancel₀ hb0, map_one, mul_one]
      _ = (D.s.atP p).ιE ((uP p : D.host.E) * ((Formalism.MainNotions.BridgeLemma.oth p : ℕ) : D.host.E)) *
            algebraMap (D.s.atP p).Fp (D.s.atP p).Ep b⁻¹ := by
          rw [map_mul, ιE_nat, ← hbdef]; ring
      _ = _ := by rw [huo, map_one, one_mul]
  rw [e1]
  exact Formalism.FourierDecayAlt.P.OrbitalIntegralReduction.modK_unitR (alg_mem_R (M := M) p hb2) (alg_mem_R (M := M) p hb1)
    (by rw [← map_mul, inv_mul_cancel₀ hb0, map_one])

theorem modK_qE {δ : ∀ p : PlF D, (D.s.atP p).Fp} {M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep}
    (hA : ∀ p, Agree δ M p) (p : PlF D) :
    A5.modK (M p).R (qE p) = A5.modK (M p).R ((D.s.atP p).ιE ((Lat.gS D : ℕ) : D.host.E)) := by
  have := Formalism.MainNotions.LocalModelPeriodLattices.top_of_OK (M p) (hA p).1
  have hd := Formalism.MainNotions.LocalModelPeriodLattices.datum_of_OK (M p) (hA p).1
  have hg : ((Formalism.MainNotions.S.LocalSplitGroups.gpart p : ℕ) : (D.s.atP p).Fp) ≠ 0 :=
    Formalism.MainNotions.BridgeLemma.natFp_ne_zero p _ (Formalism.MainNotions.BridgeLemma.gpart_ne_zero p)
  have ho : ((Formalism.MainNotions.BridgeLemma.oth p : ℕ) : (D.s.atP p).Fp) ≠ 0 :=
    Formalism.MainNotions.BridgeLemma.natFp_ne_zero p _ (Formalism.MainNotions.BridgeLemma.oth_ne_zero p)
  rw [Formalism.MainNotions.BridgeLemma.qE_eq, ιE_nat, ← Formalism.MainNotions.BridgeLemma.gpart_mul_oth p, Nat.cast_mul, map_mul,
    Formalism.FourierDecayAlt.P.A5x5.modK_mul' hd ((isUnit_iff_ne_zero.2 hg).map _) ((isUnit_iff_ne_zero.2 ho).map _),
    modK_natUnit hA p _ (Formalism.MainNotions.BridgeLemma.oth_not_dvd p), mul_one]

theorem modK_tMod {δ : ∀ p : PlF D, (D.s.atP p).Fp} {M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep}
    (hA : ∀ p, Agree δ M p) (p : PlF D) (ν s : ℕ) {t : D.host.E} (ht : t ≠ 0) :
    A5.modK (M p).R (tMod δ p ν s t) =
      ((A5.modK (M p).R (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p))) ^ ν)⁻¹ *
        A5.modK (M p).R ((D.s.atP p).ιE t) *
        (A5.modK (M p).R ((D.s.atP p).ιE ((Lat.gS D : ℕ) : D.host.E)))⁻¹ := by
  have hOK := (hA p).1
  haveI := Formalism.MainNotions.LocalModelPeriodLattices.top_of_OK (M p) hOK
  have hd := Formalism.MainNotions.LocalModelPeriodLattices.datum_of_OK (M p) hOK
  have hm : ∀ x y : (D.s.atP p).Ep, IsUnit x → IsUnit y →
      A5.modK (M p).R (x * y) = A5.modK (M p).R x * A5.modK (M p).R y :=
    fun x y hx hy => Formalism.FourierDecayAlt.P.A5x5.modK_mul' hd hx hy
  have h1 : A5.modK (M p).R 1 = 1 := by
    simp only [A5.modK, A5.mulR]
    have hm1 : AddSubgroup.map (AddMonoidHom.mulLeft (1 : (D.s.atP p).Ep)) (M p).R.toAddSubgroup =
        (M p).R.toAddSubgroup := by
      ext y
      simp
    rw [hm1, AddSubgroup.relIndex_self]
    simp
  have hpow : ∀ x : (D.s.atP p).Ep, IsUnit x → ∀ n : ℕ,
      A5.modK (M p).R (x ^ n) = (A5.modK (M p).R x) ^ n := by
    intro x hx n
    induction n with
    | zero => simp [h1]
    | succ n ih => rw [pow_succ, hm _ _ (hx.pow n) hx, ih, pow_succ]
  have htw : ∀ y : (D.s.atP p).Ep, twist p s y = twist p s 1 * y := by
    intro y
    rcases hsp : (D.s.atP p).split with _ | sg
    · simp [twist, hsp]
    · simp only [twist, hsp]
      apply sg.e.injective
      rw [map_mul]
      simp only [map_one, AlgEquiv.apply_symm_apply]
      refine Prod.ext ?_ ?_ <;> first | (simp; done)
  have htw1 : twist p s 1 * twist p s 1 = 1 := by
    rcases hsp : (D.s.atP p).split with _ | sg
    · simp [twist, hsp]
    · simp only [twist, hsp]
      apply sg.e.injective
      rw [map_mul, map_one]
      simp only [AlgEquiv.apply_symm_apply]
      refine Prod.ext ?_ ?_ <;> first | (simp; done) | (simp [← mul_pow]; done)
  have htw1u : IsUnit (twist p s 1) := ⟨⟨twist p s 1, twist p s 1, htw1, htw1⟩, rfl⟩
  have hδu : IsUnit (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p)) :=
    (isUnit_iff_ne_zero.mpr (hA p).2.1).map _
  have huu : IsUnit ((D.s.atP p).ιE (uP p : D.host.E)) := by
    apply IsUnit.map
    rw [isUnit_iff_ne_zero]
    exact_mod_cast Formalism.L2.SG.Pf.LocModel.unitAt_ne_zero₂ p
  have htu : IsUnit ((D.s.atP p).ιE t) := (isUnit_iff_ne_zero.mpr ht).map _
  have hqu : IsUnit (qE p) := by
    rcases hsp : (D.s.atP p).split with _ | sg
    · simp [qE, hsp]
    · simp only [qE, hsp]
      apply IsUnit.map
      rw [isUnit_iff_ne_zero]
      intro h0
      exact sg.q_irr.ne_zero (by exact_mod_cast h0)
  have hAU : IsUnit ((algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p) * (D.s.atP p).ιE (uP p : D.host.E)) ^ ν) :=
    (hδu.mul huu).pow ν
  have hY : IsUnit (twist p s ((D.s.atP p).ιE t)) := by
    rw [htw]
    exact htw1u.mul htu
  have hX := hAU.ringInverse
  have hZ := hqu.ringInverse
  simp only [tMod]
  rw [hm _ _ (hX.mul hY) hZ, hm _ _ hX hY, modK_inv_unit hd hAU, modK_inv_unit hd hqu,
    hpow _ (hδu.mul huu), hm _ _ hδu huu, modK_uP hA p, mul_one, modK_qE hA p, htw,
    hm _ _ htw1u htu, modK_twist hA p s, one_mul]

theorem pf_E {δ : ∀ p : PlF D, (D.s.atP p).Fp} {M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep}
    (hA : ∀ p, Agree δ M p) {x : D.host.E} (hx : x ≠ 0) :
    (Function.mulSupport fun p => A5.modK (M p).R ((D.s.atP p).ιE x)).Finite ∧
      ∏ᶠ p, A5.modK (M p).R ((D.s.atP p).ιE x) = |((Algebra.norm ℚ x : ℚ) : ℝ)|⁻¹ := by
  have h2 : Module.finrank D.host.F D.host.E = 2 := Formalism.MainNotions.BridgeLemma.szf_finrankFE D
  have h := (product_formula_e D.host.F D.host.E D.conjF h2 (fun p => D.s.atP p)).1 M (fun p => (hA p).1) x hx
  have hu : ∀ p, IsUnit ((D.s.atP p).ιE x) := fun p => (isUnit_iff_ne_zero.mpr hx).map (D.s.atP p).ιE
  have heq : ∀ p, A5.modK (M p).R ((D.s.atP p).ιE x) = (M p).modK ((D.s.atP p).ιE x) := by
    intro p
    have h' := Formalism.MainNotions.LocalModelPeriodLattices.modK_of_OK (M p) (hA p).1 (hu p).unit
    rw [IsUnit.unit_spec] at h'
    exact h'.symm
  simp only [heq]
  exact h

theorem norm_nat (n : ℕ) : Algebra.norm ℚ ((n : ℕ) : D.host.E) = (n : ℚ) ^ (2 * D.R.f) := by
  have h : ((n : ℕ) : D.host.E) = algebraMap ℚ D.host.E (n : ℚ) := by simp
  rw [h, Algebra.norm_algebraMap]
  congr 1
  first
  | exact Formalism.MainNotions.LatticeGluingRadicals.j_finrank D

theorem modNorm_of (hDP : DeltaProd D) : ModNorm D := by
  intro δ M hA ν s t ht
  obtain ⟨f1, p1⟩ := hDP δ M hA
  have hg0 : ((Lat.gS D : ℕ) : D.host.E) ≠ 0 := by exact_mod_cast (Formalism.MainNotions.LocalModelPeriodLattices.gS_pos D).ne'
  obtain ⟨f2, p2⟩ := pf_E hA ht
  obtain ⟨f3, p3⟩ := pf_E hA hg0
  have hfun : (fun p => A5.modK (M p).R (tMod δ p ν s t)) = fun p =>
      ((A5.modK (M p).R (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p))) ^ ν)⁻¹ *
        A5.modK (M p).R ((D.s.atP p).ιE t) *
        (A5.modK (M p).R ((D.s.atP p).ιE ((Lat.gS D : ℕ) : D.host.E)))⁻¹ := funext fun p => modK_tMod hA p ν s ht
  have g1 : (Function.mulSupport fun p =>
      ((A5.modK (M p).R (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p))) ^ ν)⁻¹).Finite := by
    refine f1.subset fun p hp => ?_
    by_contra hn
    apply hp
    simp only [Function.mem_mulSupport, not_not] at hn ⊢
    rw [hn, one_pow, inv_one]
  have g3 : (Function.mulSupport fun p =>
      (A5.modK (M p).R ((D.s.atP p).ιE ((Lat.gS D : ℕ) : D.host.E)))⁻¹).Finite := by
    refine f3.subset fun p hp => ?_
    by_contra hn
    apply hp
    simp only [Function.mem_mulSupport, not_not] at hn ⊢
    rw [hn, inv_one]
  rw [hfun]
  refine ⟨((g1.union f2).union g3).subset ?_, ?_⟩
  · intro p hp
    by_contra hn
    simp only [Set.mem_union, Function.mem_mulSupport, not_or, not_not] at hn
    apply hp
    simp only [hn.1.1, hn.1.2, hn.2, mul_one]
  · rw [finprod_mul_distrib (g1.union f2 |>.subset (Function.mulSupport_mul _ _)) g3, finprod_mul_distrib g1 f2,
      finprod_inv_distrib, finprod_inv_distrib, ← finprod_pow f1, p1, p2, p3, norm_nat]
    unfold nrm gNorm
    push_cast
    have hrd := Formalism.MainNotions.LocalModelPeriodLattices.rdE_pos D
    have hgs : (0 : ℝ) < (Lat.gS D : ℝ) := by exact_mod_cast Formalism.MainNotions.LocalModelPeriodLattices.gS_pos D
    have hN : (0 : ℝ) < |((Algebra.norm ℚ t : ℚ) : ℝ)| := by
      have : Algebra.norm ℚ t ≠ 0 := (Algebra.norm_ne_zero_iff).2 ht
      exact abs_pos.2 (by exact_mod_cast this)
    rw [pow_mul D.host.rdE (2 * D.R.f) ν]
    rw [abs_of_pos (pow_pos hgs _)]
    field_simp
    rw [← mul_pow, one_div, inv_mul_cancel₀ (pow_pos hrd _).ne', one_pow]

end Formalism.L2.SG.Pf.LMK

namespace Formalism.L2.SG.Pf

theorem localModelS_of_delta {D : Formalism.BasicNotions.D7} (hDP : LMK.DeltaProd D) : Formalism.L2.SG.DataCut.LocalModelS D := by
  first
  | exact localModelS_of (LMK.modNorm_of hDP)

end Formalism.L2.SG.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocModelKSN =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocModelKSD =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocModelKSD", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocModelKSN\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.NcValDiffProd\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermLoc\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.NormMod\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralReduction\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PeriodLatticeFactsSplitOfGeneral\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocFacts\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LeadingMinorIntegrality\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.DApprox\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.LGSmall\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.RingInverseAlgebraMap\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.T2SpaceOfNonarchimedeanLocalField\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.TrDual\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.HaarAlg\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.HaarMain\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.NormSt\nimport Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.GlobalConditionOfLocalAgreement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.NumberField.Discriminant.Different\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.MainNotions.S Formalism.MainNotions.S.LocalSplitGroups Formalism.FourierDecayAlt Formalism.L2.SG.DataInst
open Classical ValuativeRel
open scoped nonZeroDivisors

namespace Formalism.L2.SG.Pf.LMK

variable {D : Formalism.BasicNotions.D7}

theorem modK_alg (Z : Formalism.L2.SG.TermLoc.LocDat D) (p : PlF D) [IsNonarchimedeanLocalField (D.s.atP p).Fp]
    {z : (D.s.atP p).Fp} (hz : z ≠ 0) :
    A5.modK (Z.M p).R (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep z) = PI.ProdFormulaE.modF (D.s.atP p).Fp z ^ 2 := by
  have := (D.s.atP p).borel
  have := (D.s.atP p).free
  have : Module.Finite (D.s.atP p).Fp (D.s.atP p).Ep :=
    Module.finite_of_finrank_pos (by rw [(D.s.atP p).rank]; norm_num)
  have := (D.s.atP p).top
  have hOK := (Z.agree p).1
  have := hOK.haar.haar
  have hu : IsUnit (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep z) := (isUnit_iff_ne_zero.2 hz).map _
  have h1 := Formalism.MainNotions.LocalModelPeriodLattices.modK_of_OK (Z.M p) hOK hu.unit
  rw [IsUnit.unit_spec] at h1
  rw [← h1]
  unfold Loc.Model.modK
  rw [PI.ProdFormulaE.HaarAlgP.haarScaling (D.s.atP p).Fp (D.s.atP p).Ep (Z.M p).mu _ hu _, hOK.haar.volR, mul_one,
    Algebra.norm_algebraMap, (D.s.atP p).rank, ENNReal.toReal_ofReal (PI.ProdFormulaE.HaarBox.modF_nonneg' _), pow_two,
    PI.ProdFormulaE.modF_mul]
  ring

theorem delta_unit (Z : Formalism.L2.SG.TermLoc.LocDat D) (p : PlF D) (x0 : 𝓞 D.host.F)
    (hx0 : x0 ∈ differentIdeal ℤ (𝓞 D.host.F))
    (hv : p.intValuation x0 = WithZero.exp (-(Formalism.L2.SG.Pf.NcVal.mDiff D.host.F p : ℤ))) :
    (D.s.atP p).ιF (x0 : D.host.F) ≠ 0 ∧
      Z.δ p * ((D.s.atP p).ιF (x0 : D.host.F))⁻¹ ∈ 𝒪[(D.s.atP p).Fp] ∧
      (Z.δ p * ((D.s.atP p).ιF (x0 : D.host.F))⁻¹)⁻¹ ∈ 𝒪[(D.s.atP p).Fp] := by
  set A := D.s.atP p with hAdef
  have hδ : Z.δ p ≠ 0 := (Z.agree p).2.1
  have hx0ne : x0 ≠ 0 := by
    rintro rfl
    rw [map_zero] at hv
    exact WithZero.exp_ne_zero hv.symm
  have hι0 : A.ιF (x0 : D.host.F) ≠ 0 := by
    rw [Ne, map_eq_zero_iff _ A.ιF.injective]
    exact_mod_cast hx0ne
  have hvx0 : p.valuation D.host.F (x0 : D.host.F) = WithZero.exp (-(Formalism.L2.SG.Pf.NcVal.mDiff D.host.F p : ℤ)) := by
    rw [HeightOneSpectrum.valuation_of_algebraMap]; exact hv

  set J : FractionalIdeal (𝓞 D.host.F)⁰ D.host.F := FractionalIdeal.dual ℤ ℚ (1 : FractionalIdeal (𝓞 D.host.F)⁰ D.host.F)
    with hJ
  have hJ0 : J ≠ 0 := FractionalIdeal.dual_ne_zero ℤ ℚ one_ne_zero
  have hdd : ((differentIdeal ℤ (𝓞 D.host.F) : Ideal (𝓞 D.host.F)) : FractionalIdeal (𝓞 D.host.F)⁰ D.host.F) = J⁻¹ :=
    coeIdeal_differentIdeal ℤ ℚ D.host.F (𝓞 D.host.F)
  have hmemJ : ∀ y : D.host.F, y ∈ J ↔ ∀ a : 𝓞 D.host.F, ∃ n : ℤ, Algebra.trace ℚ D.host.F (y * a) = n := by
    intro y
    rw [hJ, FractionalIdeal.mem_dual (one_ne_zero : (1 : FractionalIdeal (𝓞 D.host.F)⁰ D.host.F) ≠ 0)]
    constructor
    · intro h a
      obtain ⟨n, hn⟩ := h (algebraMap _ _ a) ((FractionalIdeal.mem_one_iff _).2 ⟨a, rfl⟩)
      exact ⟨n, by rw [Algebra.traceForm_apply] at hn; rw [← hn]; rfl⟩
    · intro h b hb
      obtain ⟨a, rfl⟩ := (FractionalIdeal.mem_one_iff _).1 hb
      obtain ⟨n, hn⟩ := h a
      exact ⟨n, by rw [Algebra.traceForm_apply, hn]; rfl⟩
  have hx0J : (x0 : D.host.F) ∈ J⁻¹ := by
    rw [← hdd]; exact (FractionalIdeal.mem_coeIdeal _).2 ⟨x0, hx0, rfl⟩
  have hmulO : ∀ y ∈ J, ∀ b ∈ J⁻¹, p.valuation D.host.F (y * b) ≤ 1 := by
    intro y hy b hb
    have h1 : y * b ∈ J * J⁻¹ := FractionalIdeal.mul_mem_mul hy hb
    rw [mul_inv_cancel₀ hJ0] at h1
    obtain ⟨o, ho⟩ := (FractionalIdeal.mem_one_iff _).1 h1
    rw [← ho]
    exact p.valuation_le_one o

  obtain ⟨t, htr, hne, hu1, hu2⟩ := PI.CntNotIntW.locDiff_of PI.CntNotIntW.trace_dual_lattice
    (PI.CntNotIntW.dualApprox_of PI.CntNotIntW.small_powers_bound PI.CntNotIntW.tensorLiftSurjective)
    PI.CntNotIntW.small_powers_bound D Z.δ Z.M Z.agree p
  have htJ : t ∈ J := (hmemJ t).2 htr
  have ht0 : A.ιF t ≠ 0 := right_ne_zero_of_mul hne
  have htx0 : A.ιF (t * (x0 : D.host.F)) ∈ 𝒪[A.Fp] := by
    rw [Formalism.MainNotions.BridgeLemma.mem_OF_iff]
    exact hmulO t htJ _ hx0J

  obtain ⟨y, hy, a, ha, hya⟩ : ∃ y ∈ J, ∃ b ∈ J⁻¹, ¬ valuation A.Fp (A.ιF (y * b)) < 1 := by
    by_contra hcon
    push Not at hcon
    have h1 : (1 : D.host.F) ∈ J * J⁻¹ := by
      rw [mul_inv_cancel₀ hJ0]; exact FractionalIdeal.one_mem_one _
    have h2 : valuation A.Fp (A.ιF 1) < 1 := by
      refine FractionalIdeal.mul_induction_on h1 (fun y hy b hb => hcon y hy b hb) ?_
      intro u v hu hv
      rw [map_add (f := _)]
      exact lt_of_le_of_lt (Valuation.map_add _ _ _) (max_lt hu hv)
    rw [map_one, map_one] at h2
    exact lt_irrefl _ h2

  have hyδ : A.ιF y * Z.δ p ∈ 𝒪[A.Fp] := by
    have := A.lf
    have := A.ellPrime
    have hz := Formalism.L2.SG.Pf.dualLoc_holds D.host.F p A.Fp A.qlCont A.qlFin A.ιF A.dense A.val y ((hmemJ y).1 hy)
    exact Formalism.L2.SG.Pf.LocFacts.lf_dual_le p Z _ hz

  have ha0 : valuation A.Fp (A.ιF a) ≤ valuation A.Fp (A.ιF (x0 : D.host.F)) := by
    rw [Formalism.MainNotions.BridgeLemma.val_iff, hvx0]
    rw [← hdd] at ha
    obtain ⟨a', ha', rfl⟩ := (FractionalIdeal.mem_coeIdeal _).1 ha
    rw [HeightOneSpectrum.valuation_of_algebraMap]
    exact Formalism.L2.SG.Pf.NcVal.intValuation_le_of_mem_different p ha'
  have hyx0 : 1 ≤ valuation A.Fp (A.ιF (y * (x0 : D.host.F))) := by
    have h1 : 1 ≤ valuation A.Fp (A.ιF (y * a)) := not_lt.1 hya
    rw [map_mul, map_mul] at h1 ⊢
    exact le_trans h1 (mul_le_mul' le_rfl ha0)
  have hyx0ne : A.ιF (y * (x0 : D.host.F)) ≠ 0 := by
    intro h0; rw [h0, map_zero] at hyx0; exact absurd hyx0 (not_le.2 zero_lt_one)
  refine ⟨hι0, ?_, ?_⟩
  · have e : Z.δ p * (A.ιF (x0 : D.host.F))⁻¹ = (A.ιF y * Z.δ p) * (A.ιF (y * (x0 : D.host.F)))⁻¹ := by
      rw [map_mul]
      have hy0 : A.ιF y ≠ 0 := by intro h0; rw [map_mul, h0, zero_mul] at hyx0ne; exact hyx0ne rfl
      field_simp
    rw [e]
    refine mul_mem hyδ ?_
    rw [Valuation.mem_integer_iff, map_inv₀]
    exact inv_le_one_of_one_le₀ hyx0
  · have e : (Z.δ p * (A.ιF (x0 : D.host.F))⁻¹)⁻¹ = A.ιF (t * (x0 : D.host.F)) * (Z.δ p * A.ιF t)⁻¹ := by
      rw [map_mul]
      field_simp
    rw [e]
    exact mul_mem htx0 hu2

theorem modK_delta (Z : Formalism.L2.SG.TermLoc.LocDat D) (p : PlF D) :
    A5.modK (Z.M p).R (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (Z.δ p)) =
      (((Ideal.absNorm (p.maxPowDividing (differentIdeal ℤ (𝓞 D.host.F))) : ℕ) : ℝ)⁻¹) ^ 2 := by
  have := (D.s.atP p).lf
  have := Formalism.MainNotions.LocalModelPeriodLattices.top_of_OK (Z.M p) (Z.agree p).1
  have hd := Formalism.MainNotions.LocalModelPeriodLattices.datum_of_OK (Z.M p) (Z.agree p).1
  obtain ⟨x0, hx0, hv⟩ := Formalism.L2.SG.Pf.NcVal.exists_mem_different_intValuation_eq (F := D.host.F) p
  obtain ⟨hι0, hu1, hu2⟩ := delta_unit Z p x0 hx0 hv
  set u := Z.δ p * ((D.s.atP p).ιF (x0 : D.host.F))⁻¹ with hudef
  have hu0 : u ≠ 0 := mul_ne_zero (Z.agree p).2.1 (inv_ne_zero hι0)
  have hmu : A5.modK (Z.M p).R (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep u) = 1 :=
    Formalism.FourierDecayAlt.P.OrbitalIntegralReduction.modK_unitR (alg_mem_R (M := Z.M) p hu1) (alg_mem_R (M := Z.M) p hu2)
      (by rw [← map_mul, mul_inv_cancel₀ hu0, map_one])
  have e : Z.δ p = u * (D.s.atP p).ιF (x0 : D.host.F) := by rw [hudef, mul_assoc, inv_mul_cancel₀ hι0, mul_one]
  have hx0ne : x0 ≠ 0 := by
    rintro rfl
    rw [map_zero] at hv
    exact WithZero.exp_ne_zero hv.symm
  rw [e, map_mul, Formalism.FourierDecayAlt.P.A5x5.modK_mul' hd ((isUnit_iff_ne_zero.2 hu0).map _) ((isUnit_iff_ne_zero.2 hι0).map _),
    hmu, one_mul, modK_alg Z p hι0, PI.ProdFormulaE.modF_localization_eq_adicAbv]

  have h3 := NumberField.HeightOneSpectrum.embedding_mul_absNorm D.host.F p hx0ne
  rw [NumberField.FinitePlace.norm_embedding] at h3
  have hcount : (Associates.mk p.asIdeal).count (Associates.mk (Ideal.span {x0})).factors =
      Formalism.L2.SG.Pf.NcVal.mDiff D.host.F p := by
    rw [HeightOneSpectrum.intValuation_if_neg p hx0ne] at hv
    have := WithZero.exp_injective hv
    omega
  have hmp : p.maxPowDividing (Ideal.span {x0}) = p.maxPowDividing (differentIdeal ℤ (𝓞 D.host.F)) := by
    unfold HeightOneSpectrum.maxPowDividing
    rw [hcount]
  rw [hmp] at h3
  have hN : ((Ideal.absNorm (p.maxPowDividing (differentIdeal ℤ (𝓞 D.host.F))) : ℕ) : ℝ) ≠ 0 := by
    intro h0; rw [h0, mul_zero] at h3; exact zero_ne_one h3
  have h4 : (NumberField.HeightOneSpectrum.adicAbv D.host.F p) (x0 : D.host.F) =
      ((Ideal.absNorm (p.maxPowDividing (differentIdeal ℤ (𝓞 D.host.F))) : ℕ) : ℝ)⁻¹ :=
    eq_inv_of_mul_eq_one_left h3
  rw [show ((x0 : D.host.F)) = algebraMap (𝓞 D.host.F) D.host.F x0 from rfl] at h4 ⊢
  rw [h4]

theorem prod_maxPow (I : Ideal (𝓞 D.host.F)) (hI : I ≠ 0) :
    (Function.mulSupport fun p : PlF D =>
      (((Ideal.absNorm (p.maxPowDividing I) : ℕ) : ℝ)⁻¹) ^ 2).Finite ∧
    ∏ᶠ p : PlF D, (((Ideal.absNorm (p.maxPowDividing I) : ℕ) : ℝ)⁻¹) ^ 2 = (((Ideal.absNorm I : ℕ) : ℝ)⁻¹) ^ 2 := by
  let φ : Ideal (𝓞 D.host.F) →* ℝ := (powMonoidHom 2).comp (invMonoidHom.comp
    ((Nat.castRingHom ℝ).toMonoidHom.comp (Ideal.absNorm : Ideal (𝓞 D.host.F) →*₀ ℕ).toMonoidHom))
  have hφ : ∀ J, φ J = (((Ideal.absNorm J : ℕ) : ℝ)⁻¹) ^ 2 := fun J => rfl
  have hfin := Ideal.hasFiniteMulSupport hI
  have hsub : (Function.mulSupport fun p : PlF D => φ (p.maxPowDividing I)) ⊆
      Function.mulSupport fun p : PlF D => p.maxPowDividing I :=
    Function.mulSupport_comp_subset (map_one φ) _
  refine ⟨?_, ?_⟩
  · simpa only [hφ] using hfin.subset hsub
  · have h1 := (MonoidHom.map_finprod φ hfin).symm
    simp only [hφ] at h1
    rw [h1, Ideal.finprod_heightOneSpectrum_factorization hI]

theorem deltaProd_holds (D : Formalism.BasicNotions.D7) : DeltaProd D := by
  intro δ M hA
  let Z : Formalism.L2.SG.TermLoc.LocDat D := ⟨δ, M, hA⟩
  have hI : differentIdeal ℤ (𝓞 D.host.F) ≠ 0 := differentIdeal_ne_bot
  have hfun : (fun p => A5.modK (M p).R (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p))) =
      fun p : PlF D => (((Ideal.absNorm (p.maxPowDividing (differentIdeal ℤ (𝓞 D.host.F))) : ℕ) : ℝ)⁻¹) ^ 2 :=
    funext fun p => modK_delta Z p
  obtain ⟨hfin, hval⟩ := prod_maxPow (D := D) _ hI
  rw [hfun]
  refine ⟨hfin, ?_⟩
  rw [hval, absNorm_differentIdeal D.host.F (𝓞 D.host.F)]
  have hf : Module.finrank ℚ D.host.E = 2 * D.R.f := by
    have := Formalism.MainNotions.LocalModelPeriodLattices.cmE D
    rw [(Formalism.FourierDecayAlt.P.degreeFacts_statement D.host.E).1, Formalism.MainNotions.LocalModelPeriodLattices.deg_eq]
  have hrd : D.host.rdE ^ (2 * D.R.f) = |(NumberField.discr D.host.E : ℝ)| := by
    unfold Formalism.BasicNotions.Host.rdE
    rw [← hf, one_div]
    exact Real.rpow_inv_natCast_pow (abs_nonneg _) Module.finrank_pos.ne'
  rw [hrd, Formalism.L2.SG.NGCut.LeadingMinorIntegrality.discr_sq, Nat.cast_natAbs, Int.cast_abs]
  push_cast
  rw [abs_pow, inv_pow]

end Formalism.L2.SG.Pf.LMK

namespace Formalism.L2.SG.Pf

theorem localModelS_holds (D : Formalism.BasicNotions.D7) : Formalism.L2.SG.DataCut.LocalModelS D := localModelS_of_delta (LMK.deltaProd_holds D)

theorem localModelAt_holds (D : Formalism.BasicNotions.D7) : Formalism.L2.SG.DataInst.LocalModelAt D :=
  Formalism.L2.SG.DataCut.localModelAt_of_KS (localModelK_holds D) (localModelS_holds D)

end Formalism.L2.SG.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocModelKSD =====
