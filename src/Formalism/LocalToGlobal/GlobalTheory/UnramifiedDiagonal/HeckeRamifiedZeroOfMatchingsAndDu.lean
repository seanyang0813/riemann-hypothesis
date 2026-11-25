module

public import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.NaturalTranslateAdelicFunction
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DualSigmaApply
public import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.LocalUnitaryOfMatchingZero
public import Formalism.LocalToGlobal.GlobalTheory.GL6.PDnDil
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.Common
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DnkLkLocP
public import Formalism.LocalToGlobal.GroupLattices.DownNaturalLevelZero
public import Formalism.LocalToGlobal.GlobalTheory.EqGlobOfHat
public import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.TrpDia
public import Formalism.SharpRestriction.GlobalSchurBounds.LemmaBSecondBranchOfLength
import Formalism.SharpRestriction.GlobalSchurBounds.IntegralityOfRationalityLocal
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.GlobalTheory.GL6.PRLocW

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.Development, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DnDiaMatch0FHolds, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.UpF, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.UpMatch, Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.HeckeRamifiedZeroOfMatchingsAndDu

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.Development =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.Development", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.NaturalTranslateAdelicFunction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.GlobalSchurBounds.IntegralityOfRationalityLocal\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace CrossDiaZero

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.MainNotions.RT Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0

def DnMatchAll : Prop := ∀ (D : D7) (u : D.what₂.Word) (T : Forms0 D u), DnDiaMatch0F T

end CrossDiaZero

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.Development =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DnDiaMatch0FHolds =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DnDiaMatch0FHolds", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DualSigmaApply\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.Development\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.LocalUnitaryOfMatchingZero\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.PDnDil\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.Common\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DnkLkLocP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace CrossDiaZero

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 Formalism.UG
open NumberField IsDedekindDomain Matrix

variable {D : D7} {u : D.what₂.Word}




theorem dn_match_one (T : Forms0 D u) (v v' : (D.mem u).A.vT) (hvv : v ≠ v') (k : ℤ) (δ : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F))
    (hδ : IsDia T.cls0.lev (T.atT.eV v').1 (T.atT.eV v').2 k δ) (c c2 c1 c3 : (D.mem u).C.cls 0)
    (γd : GL (Fin (D.R.N 0)) D.host.E) (hγd : γd ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))) (κd : T.cls0.lev.U)
    (hrel : (T.cls0.y c).1 * δ.1 = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γd * (T.cls0.y c2).1 * κd.1)
    (hLc : mulLat (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (clsCrd D u 0 (Nat.zero_le _) c2) = clsCrd D u 0 (Nat.zero_le _) c)
    (hLd : mulLat (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c2) = Ld D u 0 (Nat.zero_le _) c)
    (x : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c)) (x2 : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c2))
    (hxy : ∀ w, x2 w = x (dniEquiv T v c2 c γd hLc hLd w))
    (γ γ2 : UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))) (η η2 : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (κ κ2 : T.cls0.lev.U)
    (hs1 : ∀ w, w ≠ (T.atT.eV v).1 → bc (prV (E := D.host.E) w) η.1 = 1)
    (hs2 : ∀ w, w ≠ (T.atT.eV v).1 → bc (prV (E := D.host.E) w) η2.1 = 1)
    (h1 : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ.1 * (T.cls0.y c1).1 = (T.cls0.y c).1 * η.1 * κ.1)
    (h2 : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ2.1 * (T.cls0.y c3).1 = (T.cls0.y c2).1 * η2.1 * κ2.1)
    (hl1 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat γ.1.1 (Ld D u 0 (Nat.zero_le _) c1)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c))
    (hl2 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat γ2.1.1 (Ld D u 0 (Nat.zero_le _) c3)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c2))
    (hf1 : ∀ (w : ↥(Ld D u 0 (Nat.zero_le _) c1)) (hw : γ.1.1 *ᵥ w.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c),
      (D.fm u).fv 0 v c1 (T.lv0.pr v c1 w) = x (T.lv0.prk v c ⟨_, hw⟩))
    (hf2 : ∀ (w : ↥(Ld D u 0 (Nat.zero_le _) c3)) (hw : γ2.1.1 *ᵥ w.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c2),
      (D.fm u).fv 0 v c3 (T.lv0.pr v c3 w) = x2 (T.lv0.prk v c2 ⟨_, hw⟩)) :
    η2.1⁻¹ * κd.1 * η.1 ∈ T.cls0.lev.U := by
  classical
  have hne : (T.atT.eV v).1 ≠ (T.atT.eV v').1 := fun e => hvv (T.atT.eV.injective (Subtype.ext e))
  have hδv : bc (prV (E := D.host.E) (T.atT.eV v).1) δ.1 = 1 := hδ.1 _ hne
  set g' : GL (Fin (D.R.N 0)) D.host.E := γd * γ2.1 with hg'
  have hl' : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (g' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c3)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c) := by
    rw [hg', Units.val_mul]
    exact rlv_chainP _ _ _ (by rw [hLc]) hl2
  have hLkinv : mulLat ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Lk T.atT 0 (Nat.zero_le _) v c) = Lk T.atT 0 (Nat.zero_le _) v c2 :=
    dni_inv_eq γd (dni_lk T v c2 c _ hLc hLd)
  have hf' : ∀ (w : ↥(Ld D u 0 (Nat.zero_le _) c3)) (hw : (g' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c),
      (D.fm u).fv 0 v c3 (T.lv0.pr v c3 w) = x (T.lv0.prk v c ⟨_, hw⟩) := by
    intro w hw
    have e1 : ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((g' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w.1) = γ2.1.1 *ᵥ w.1 := by
      rw [hg', Matrix.mulVec_mulVec, ← Units.val_mul, ← mul_assoc, inv_mul_cancel, one_mul]
    have hw2 : γ2.1.1 *ᵥ w.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c2 := by
      rw [← e1]; exact dni_mem_of _ hLkinv hw
    rw [hf2 w hw2, hxy, dniEquiv_prk]
    refine congrArg x (congrArg (T.lv0.prk v c) (Subtype.ext ?_))
    show (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (γ2.1.1 *ᵥ w.1) = (g' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w.1
    rw [hg', Units.val_mul, Matrix.mulVec_mulVec]
  have hPc := dnk_latP T v c c1 c3 x γ.1 g' hl1 hf1 hl' hf'
  set Γ : GL (Fin (D.R.N 0)) D.host.E := γ2.1⁻¹ * γd⁻¹ * γ.1 with hΓdef
  have hPΓ : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (Γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (clsCrd D u 0 (Nat.zero_le _) c1)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c3) := by
    have e2 : (γ.1⁻¹ * g')⁻¹ = Γ := by rw [hg', hΓdef]; group
    have := localization_inv_smul_eq _ (γ.1⁻¹ * g') hPc
    rwa [e2] at this
  have hPdΓ : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (Γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c1)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c3) := by
    have e3 : g'⁻¹ * γ.1 = Γ := by rw [hg', hΓdef]; group
    have := localization_smul_cancel _ g' γ.1 (hl1.trans hl'.symm)
    rwa [e3] at this
  have hΓU : Γ ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _)) := mul_mem (mul_mem (inv_mem γ2.2) (inv_mem hγd)) γ.2
  have hUΓ := matching_unitary_eq T.cls0 c c1 c2 c3 γ.1 γ2.1 γd η η2 δ κ κ2 κd h1 h2 hrel
  have hQd : Formalism.HermitianLatticesTheory.localization₂ (rlvQ T.atT v) (mulLat (Γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c1)) =
      Formalism.HermitianLatticesTheory.localization₂ (rlvQ T.atT v) (Ld D u 0 (Nat.zero_le _) c3) :=
    local_dual_Q_eq_of_P T.atT v c3 c1 Γ hΓU hPΓ
  have eΓ : ∀ z, (g' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((Γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z) = γ.1.1 *ᵥ z := by
    intro z
    have e4 : g' * Γ = γ.1 := by rw [hg', hΓdef]; group
    rw [Matrix.mulVec_mulVec, ← Units.val_mul, e4]
  have hF : ∀ z (hz : z ∈ Ld D u 0 (Nat.zero_le _) c1), ∃ a : 𝓞 D.host.F, a ∉ (T.atT.eV v).1.asIdeal ∧
      ∃ h : (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) a) • ((Γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z) ∈ Ld D u 0 (Nat.zero_le _) c3,
        (D.fm u).fv 0 v c3 (T.lv0.pr v c3 ⟨_, h⟩) =
          (D.fm u).fv 0 v c1 (T.lv0.pr v c1 ⟨(algebraMap (𝓞 D.host.F) (𝓞 D.host.E) a) • z,
            Submodule.smul_mem _ _ hz⟩) := by
    intro z hz
    obtain ⟨b, hbP, hbQ, hb⟩ := rlv_two (T.atT.Pv v) (rlvQ T.atT v) hPdΓ.le hQd.le
      (x := (Γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z) ⟨z, hz, rfl⟩
    obtain ⟨r, hr, b', hb'⟩ := rlv_norm T.atT v b hbP hbQ
    have hmem : (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • ((Γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z) ∈ Ld D u 0 (Nat.zero_le _) c3 := by
      rw [hb', mul_smul]; exact Submodule.smul_mem _ _ hb
    refine ⟨r, hr, hmem, ?_⟩
    have hγz : γ.1.1 *ᵥ z ∈ Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c) := by
      rw [← hl1]; exact mem_localization_of_mem₂ _ ⟨z, hz, rfl⟩
    obtain ⟨s, hs, hsz⟩ := (rlv_mem_locP _ _ _).1 hγz
    set R := algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r with hR
    have e4 : (g' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (s • (R • ((Γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z))) = R • (s • (γ.1.1 *ᵥ z)) := by
      rw [Matrix.mulVec_smul, Matrix.mulVec_smul, eΓ, smul_comm]
    have e5 : γ.1.1 *ᵥ (s • (R • z)) = R • (s • (γ.1.1 *ᵥ z)) := by
      rw [Matrix.mulVec_smul, Matrix.mulVec_smul, smul_comm]
    have hin : R • (s • (γ.1.1 *ᵥ z)) ∈ Lk T.atT 0 (Nat.zero_le _) v c := Submodule.mem_sup_left (Submodule.smul_mem _ R hsz)
    have hRz : R • z ∈ Ld D u 0 (Nat.zero_le _) c1 := Submodule.smul_mem _ _ hz
    obtain ⟨w3, hw3def⟩ : ∃ w3 : ↥(Ld D u 0 (Nat.zero_le _) c3), w3.1 = s • (R • ((Γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z)) :=
      ⟨s • (⟨_, hmem⟩ : ↥(Ld D u 0 (Nat.zero_le _) c3)), rfl⟩
    obtain ⟨w1, hw1def⟩ : ∃ w1 : ↥(Ld D u 0 (Nat.zero_le _) c1), w1.1 = s • (R • z) :=
      ⟨s • (⟨R • z, hRz⟩ : ↥(Ld D u 0 (Nat.zero_le _) c1)), rfl⟩
    have hw3 : (g' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w3.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c := by rw [hw3def, e4]; exact hin
    have hw1 : γ.1.1 *ᵥ w1.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c := by rw [hw1def, e5]; exact hin
    have hA := hf' w3 hw3
    have hB := hf1 w1 hw1
    have ew3 : w3 = s • (⟨_, hmem⟩ : ↥(Ld D u 0 (Nat.zero_le _) c3)) := Subtype.ext hw3def
    have ew1 : w1 = s • (⟨R • z, hRz⟩ : ↥(Ld D u 0 (Nat.zero_le _) c1)) := Subtype.ext hw1def
    have pA : T.lv0.pr v c3 w3 = T.atT.res v s • T.lv0.pr v c3 ⟨_, hmem⟩ := by rw [ew3, T.lv0.pr_smul]
    have pB : T.lv0.pr v c1 w1 = T.atT.res v s • T.lv0.pr v c1 ⟨R • z, hRz⟩ := by rw [ew1, T.lv0.pr_smul]
    rw [pA, map_smul] at hA
    rw [pB, map_smul] at hB
    have hres : T.atT.res v s ≠ 0 := fun h0 => hs (RingHom.mem_ker.2 h0)
    have key : T.atT.res v s • (D.fm u).fv 0 v c3 (T.lv0.pr v c3 ⟨_, hmem⟩) =
        T.atT.res v s • (D.fm u).fv 0 v c1 (T.lv0.pr v c1 ⟨R • z, hRz⟩) := by
      refine hA.trans (Eq.trans ?_ hB.symm)
      refine congrArg x (congrArg (T.lv0.prk v c) (Subtype.ext ?_))
      show (g' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w3.1 = γ.1.1 *ᵥ w1.1
      rw [hw3def, hw1def, e4, e5]
    exact smul_right_injective _ hres key
  have hloc := local_unitary_of_matching_zero T v c3 c1 Γ hΓU hUΓ hPΓ hPdΓ hF
  exact matching_move_mem_level_zero T v c c1 c2 c3 γ.1 γ2.1 γd η η2 δ κ κ2 κd hs1 hs2 hδv h1 h2 hrel hloc




theorem dnDiaMatch0F_holds (T : Forms0 D u) : DnDiaMatch0F T := by
  intro v v' hvv a k hk δ hδ c γd hγd κd hrel
  obtain ⟨hLc, hLd⟩ := diamond_lattice_transport T v' k δ hδ c ((D.fm u).dil 0 v' a c) γd hγd κd hrel
  obtain ⟨z, hz⟩ := dni_exists_one T v c
  have e : (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z.1) = z.1 := by
    rw [Matrix.mulVec_mulVec, ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.one_mulVec]
  have hz2 : ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z.1 ∈ Ld D u 0 (Nat.zero_le _) ((D.fm u).dil 0 v' a c) :=
    dni_mem_of _ (dni_inv_eq γd hLd) z.2
  have hz2' : (D.fm u).fv 0 v ((D.fm u).dil 0 v' a c) (T.lv0.pr v ((D.fm u).dil 0 v' a c) ⟨_, hz2⟩) = 1 :=
    (diamond_class_function T v v' hvv k δ hδ c ((D.fm u).dil 0 v' a c) γd κd hrel z.1 z.2 hz2).trans hz
  have hgz : (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (⟨_, hz2⟩ : ↥(Ld D u 0 (Nat.zero_le _) ((D.fm u).dil 0 v' a c))).1 ∈ Ld D u 0 (Nat.zero_le _) c := by
    show (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z.1) ∈ _
    rw [e]; exact z.2
  have hgz' : (D.fm u).fv 0 v c (T.lv0.pr v c ⟨_, hgz⟩) = 1 := by
    rw [pr_congr T v c ⟨_, hgz⟩ z e]; exact hz
  have hte := dniEquiv_te T v ((D.fm u).dil 0 v' a c) c γd hLc hLd ⟨_, hz2⟩ hz2' hgz hgz'
  have hne0 : ∀ {c0 : (D.mem u).C.cls 0} (x : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c0)),
      x ((D.fm u).te 0 v c0) = 1 → x ≠ 0 := by
    intro c0 x hx h0
    rw [h0, LinearMap.zero_apply] at hx
    exact zero_ne_one hx
  choose γ1 η1 κ1 hs1 hr1 hl1 hf1 ht1 using fun x : {x : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c) //
    x ((D.fm u).te 0 v c) = 1} => T.down_natural_level_zero v c x.1 (hne0 x.1 x.2)
  choose γ2 η2 κ2 hs2 hr2 hl2 hf2 ht2 using fun x : {x : Module.Dual ((D.mem u).A.Fv v)
    ((D.fm u).lk 0 v ((D.fm u).dil 0 v' a c)) // x ((D.fm u).te 0 v ((D.fm u).dil 0 v' a c)) = 1} =>
    T.down_natural_level_zero v ((D.fm u).dil 0 v' a c) x.1 (hne0 x.1 x.2)
  refine ⟨dualSigma (dniEquiv T v ((D.fm u).dil 0 v' a c) c γd hLc hLd) _ _ hte, η1, η2,
    fun x => ⟨γ1 x, κ1 x, hs1 x, hr1 x, fun h => ?_⟩, fun x => ⟨γ2 x, κ2 x, hs2 x, hr2 x, fun h => ?_⟩, fun x => ?_⟩
  · funext s
    rw [ht1 x h s _ (is_translate_inverse T (γ1 x) s), Units.val_inv_eq_inv_val]
    rfl
  · funext s
    rw [ht2 x h s _ (is_translate_inverse T (γ2 x) s), Units.val_inv_eq_inv_val]
    rfl
  · exact dn_match_one T v v' hvv k δ hδ c _ _ _ γd hγd κd hrel hLc hLd x.1 _
      (fun w => dualSigma_apply _ _ _ hte x w) (γ1 x) (γ2 _) (η1 x) (η2 _) (κ1 x) (κ2 _) (hs1 x) (hs2 _)
      (hr1 x) (hr2 _) (hl1 x) (hl2 _) (hf1 x) (hf2 _)

theorem dnMatchAll_holds : DnMatchAll := fun _ _ T => dnDiaMatch0F_holds T

end CrossDiaZero

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DnDiaMatch0FHolds =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.UpF =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.UpF", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.DownNaturalLevelZero\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.LocalUnitaryOfMatchingZero\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.NaturalTranslateAdelicFunction\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.PRLocW\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.Common\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.GlobalTheory.EqGlobOfHat\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace CrossDiaZero

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 Formalism.UG
open NumberField IsDedekindDomain Matrix

variable {D : D7} {u : D.what₂.Word}




theorem upF (T : Forms0 D u) (v v' : (D.mem u).A.vT) (hvv : v ≠ v') (k : ℤ)
    (δ : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F))
    (hδ : IsDia T.cls0.lev (T.atT.eV v').1 (T.atT.eV v').2 k δ)
    (c c1 c2 c3 : (D.mem u).C.cls 0)
    (γd : GL (Fin (D.R.N 0)) D.host.E) (hγd : γd ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _)))
    (κd : T.cls0.lev.U)
    (hx : (T.cls0.y c * δ).1 = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γd *
      (T.cls0.y c2).1 * κd.1)
    (γ γ2 : GL (Fin (D.R.N 0)) D.host.E) (hγ : γ ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _)))
    (hγ2 : γ2 ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _)))
    (z : Fin (D.R.N 0) → D.host.E) (hz : z ∈ Ld D u 0 (Nat.zero_le _) c)
    (h3 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (clsCrd D u 0 (Nat.zero_le _) c1)) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c))
    (h4 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c1)) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c ⊔
        Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • z}))
    (h5 : ∀ (x : ↥(Ld D u 0 (Nat.zero_le _) c1))
        (hx : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • ((γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ x.1) ∈ Ld D u 0 (Nat.zero_le _) c),
        (D.fm u).fv 0 v c1 (T.lv0.pr v c1 x) = (D.fm u).fv 0 v c (T.lv0.pr v c ⟨_, hx⟩))
    (g5 : ∀ (x : ↥(Ld D u 0 (Nat.zero_le _) c3))
        (hx : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • ((γ2 : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ x.1) ∈ Ld D u 0 (Nat.zero_le _) c2),
        (D.fm u).fv 0 v c3 (T.lv0.pr v c3 x) = (D.fm u).fv 0 v c2 (T.lv0.pr v c2 ⟨_, hx⟩))
    (hP : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat ((γ2⁻¹ * γd⁻¹ * γ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)
        (clsCrd D u 0 (Nat.zero_le _) c1)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c3))
    (hPd : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat ((γ2⁻¹ * γd⁻¹ * γ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)
        (Ld D u 0 (Nat.zero_le _) c1)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c3)) :
    ∀ w (hw : w ∈ Ld D u 0 (Nat.zero_le _) c1), ∃ a : 𝓞 D.host.F, a ∉ (T.atT.eV v).1.asIdeal ∧
      ∃ h : (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) a) •
          (((γ2⁻¹ * γd⁻¹ * γ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w) ∈
          Ld D u 0 (Nat.zero_le _) c3,
        (D.fm u).fv 0 v c3 (T.lv0.pr v c3 ⟨_, h⟩) =
          (D.fm u).fv 0 v c1 (T.lv0.pr v c1 ⟨(algebraMap (𝓞 D.host.F) (𝓞 D.host.E) a) • w,
            Submodule.smul_mem _ _ hw⟩) := by
  intro w hw
  have hT0 : (((D.mem u).A.T : ℕ) : D.host.E) ≠ 0 := Nat.cast_ne_zero.2 (D.mem u).A.T_prime.ne_zero
  obtain ⟨hdd, hfg, hH⟩ := rlv_coordFacts (D := D) (u := u) 0 (Nat.zero_le _)
  have hLat := diamond_lattice_transport T v' k δ hδ c c2 γd hγd κd hx
  have memInv : ∀ y ∈ Ld D u 0 (Nat.zero_le _) c,
      ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ y ∈
        Ld D u 0 (Nat.zero_le _) c2 := by
    intro y hy
    rw [← hLat.2, mem_mul_lattice_iff] at hy
    exact hy
  have hΓU : (γ2⁻¹ * γd⁻¹ * γ : GL (Fin (D.R.N 0)) D.host.E) ∈
      UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _)) :=
    mul_mem (mul_mem (inv_mem hγ2) (inv_mem hγd)) hγ
  have hne1 : (1 : 𝓞 D.host.E) ∉ T.atT.Pv v := (T.atT.Pv v).ne_top_iff_one.1 (Ideal.IsPrime.ne_top inferInstance)

  have hQd := local_dual_Q_eq_of_P T.atT v c3 c1 _ hΓU hP
  obtain ⟨a1, ha1P, ha1Q, ha1⟩ := rlv_two (T.atT.Pv v) (rlvQ T.atT v) hPd.le hQd.le
    (x := ((γ2⁻¹ * γd⁻¹ * γ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w)
    ⟨w, hw, rfl⟩

  have hPw : (γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w ∈
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c1)) :=
    (rlv_mem_locP _ _ _).2 ⟨1, hne1, by rw [one_smul]; exact ⟨w, hw, rfl⟩⟩
  rw [h4, rlv_mem_locP] at hPw
  obtain ⟨s, hs, hsw⟩ := hPw
  have hs' : s • ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • ((γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w)) ∈
      Ld D u 0 (Nat.zero_le _) c := by
    rw [smul_comm]; exact natSmul_mem_of_sup _ _ hT0 z hz _ hsw
  have e1 : Formalism.L2.GlobalTheoryTheory.Comp.dl (sigD D) (gramN D 0 (Nat.zero_le _)) (Ld D u 0 (Nat.zero_le _) c1) =
      clsCrd D u 0 (Nat.zero_le _) c1 := hdd c1
  have hQ : Formalism.HermitianLatticesTheory.localization₂ (rlvQ T.atT v) (mulLat (γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c1)) ≤
      Formalism.HermitianLatticesTheory.localization₂ (rlvQ T.atT v) (clsCrd D u 0 (Nat.zero_le _) c) := by
    have hg1 : cT (sigD D : D.host.E →+* D.host.E) (γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *
        gramN D 0 (Nat.zero_le _) * (γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) = gramN D 0 (Nat.zero_le _) := hγ
    refine rlv_dualQ (sigD D) rlv_sig_sig (gramN D 0 (Nat.zero_le _)) hH _ hg1 (T.atT.Pv v) (hfg c) (hdd c).le ?_
    rw [e1]; exact h3.ge
  have hne1Q : (1 : 𝓞 D.host.E) ∉ rlvQ T.atT v := (rlvQ T.atT v).ne_top_iff_one.1 (Ideal.IsPrime.ne_top inferInstance)
  have hQw := hQ ((rlv_mem_locP _ _ _).2 ⟨1, hne1Q, by rw [one_smul]; exact ⟨w, hw, rfl⟩⟩)
  obtain ⟨t, ht, htw⟩ := (rlv_mem_locP _ _ _).1 hQw
  have ht' : t • ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • ((γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w)) ∈
      Ld D u 0 (Nat.zero_le _) c := by
    rw [smul_comm]; exact Submodule.smul_mem _ _ (cls_le_ld T c htw)
  obtain ⟨a2, ha2P, ha2Q, ha2⟩ := avoid_two _ _ _ _ s t hs ht hs' ht'

  have haP : a1 * a2 ∉ T.atT.Pv v := fun h => (Ideal.IsPrime.mem_or_mem inferInstance h).elim ha1P ha2P
  have haQ : a1 * a2 ∉ rlvQ T.atT v := fun h => (Ideal.IsPrime.mem_or_mem inferInstance h).elim ha1Q ha2Q
  obtain ⟨r, hr, b, hb⟩ := rlv_norm T.atT v (a1 * a2) haP haQ
  have m1 : (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) •
      (((γ2⁻¹ * γd⁻¹ * γ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w) ∈
      Ld D u 0 (Nat.zero_le _) c3 := by
    rw [hb, show b * (a1 * a2) = (b * a2) * a1 by ring, mul_smul]
    exact Submodule.smul_mem _ _ ha1
  have m2 : (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) •
      ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • ((γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w)) ∈ Ld D u 0 (Nat.zero_le _) c := by
    rw [hb, show b * (a1 * a2) = (b * a1) * a2 by ring, mul_smul]
    exact Submodule.smul_mem _ _ ha2
  refine ⟨r, hr, m1, ?_⟩
  have eV1 : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • ((γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ
      ((algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • w)) =
      (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) •
        ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • ((γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w)) := by
    rw [Matrix.mulVec_smul, smul_comm]
  have hB : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • ((γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ
      ((algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • w)) ∈ Ld D u 0 (Nat.zero_le _) c := by
    rw [eV1]; exact m2
  have eV2 : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • ((γ2 : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ
      ((algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) •
        (((γ2⁻¹ * γd⁻¹ * γ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w))) =
      ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ
        ((algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) •
          ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • ((γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w))) := by
    have eg : (γ2 : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ
        (((γ2⁻¹ * γd⁻¹ * γ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w) =
        ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ
          ((γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w) := by
      rw [Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, ← Units.val_mul, ← Units.val_mul, ← mul_assoc, ← mul_assoc,
        mul_inv_cancel, one_mul]
    rw [Matrix.mulVec_smul, eg, Matrix.mulVec_smul, Matrix.mulVec_smul, smul_comm]
  have hA : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • ((γ2 : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ
      ((algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) •
        (((γ2⁻¹ * γd⁻¹ * γ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w))) ∈
      Ld D u 0 (Nat.zero_le _) c2 := by
    rw [eV2]; exact memInv _ m2
  calc (D.fm u).fv 0 v c3 (T.lv0.pr v c3 ⟨_, m1⟩)
      = (D.fm u).fv 0 v c2 (T.lv0.pr v c2 ⟨_, hA⟩) := g5 ⟨_, m1⟩ hA
    _ = (D.fm u).fv 0 v c2 (T.lv0.pr v c2 ⟨_, memInv _ m2⟩) := congrArg _ (pr_congr T v c2 ⟨_, hA⟩ ⟨_, memInv _ m2⟩ eV2)
    _ = (D.fm u).fv 0 v c (T.lv0.pr v c ⟨_, m2⟩) :=
        diamond_class_function T v v' hvv k δ hδ c c2 γd κd hx _ m2 (memInv _ m2)
    _ = (D.fm u).fv 0 v c (T.lv0.pr v c ⟨_, hB⟩) := congrArg _ (pr_congr T v c ⟨_, m2⟩ ⟨_, hB⟩ eV1.symm)
    _ = _ := (h5 ⟨_, Submodule.smul_mem _ _ hw⟩ hB).symm

end CrossDiaZero

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.UpF =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.UpMatch =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.UpMatch", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.NaturalTranslateAdelicFunction\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.LocalUnitaryOfMatchingZero\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.Common\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.UpF\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace CrossDiaZero

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 Formalism.UG
open NumberField IsDedekindDomain Matrix

variable {D : D7} {u : D.what₂.Word}




theorem upMatch (T : Forms0 D u) : UpDiaMatch0F T := by
  intro v v' hvv a k hk δ hδ c γd hγd κd hx
  set c2 := (D.fm u).dil 0 v' a c with hc2
  have hLat := diamond_lattice_transport T v' k δ hδ c c2 γd hγd κd hx
  have hInv : mulLat ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c) = Ld D u 0 (Nat.zero_le _) c2 := by
    rw [← hLat.2, rlv_mulLat_inv]
  have memInv : ∀ y ∈ Ld D u 0 (Nat.zero_le _) c, ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ y ∈ Ld D u 0 (Nat.zero_le _) c2 := by
    intro y hy
    rw [← hLat.2, mem_mul_lattice_iff] at hy
    exact hy
  have memFwd : ∀ y ∈ Ld D u 0 (Nat.zero_le _) c2, (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ y ∈ Ld D u 0 (Nat.zero_le _) c := by
    intro y hy
    rw [← hLat.2]
    exact ⟨y, hy, rfl⟩
  have eInvFwd : ∀ y : Fin (D.R.N 0) → D.host.E, ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ y) = y := by
    intro y
    rw [Matrix.mulVec_mulVec, ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.one_mulVec]
  have eFwdInv : ∀ y : Fin (D.R.N 0) → D.host.E, (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ y) = y := by
    intro y
    rw [Matrix.mulVec_mulVec, ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.one_mulVec]
  have hne : (T.atT.eV v).1 ≠ (T.atT.eV v').1 := fun h => hvv (T.atT.eV.injective (Subtype.ext h))
  have hδv : bc (prV (E := D.host.E) (T.atT.eV v).1) δ.1 = 1 := hδ.1 _ hne
  have h3d : (T.cls0.y c).1 * δ.1 = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γd *
      (T.cls0.y c2).1 * κd.1 := hx

  choose zf hzf using fun x : {x : (D.fm u).lv 0 v c // (D.fm u).fv 0 v c x = 1} => T.lv0.pr_surj v c x.1
  have hz1 : ∀ x, (D.fm u).fv 0 v c (T.lv0.pr v c (zf x)) = 1 := fun x => by rw [hzf x]; exact x.2
  choose γ η κ h1 h2 h3 h4 h5 h6 using fun x => T.up_natural_level_zero v c (zf x) (hz1 x)

  let z2 : {x : (D.fm u).lv 0 v c // (D.fm u).fv 0 v c x = 1} → ↥(Ld D u 0 (Nat.zero_le _) c2) :=
    fun x => ⟨((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zf x).1, memInv _ (zf x).2⟩
  have hz2 : ∀ x, (D.fm u).fv 0 v c2 (T.lv0.pr v c2 (z2 x)) = 1 := fun x =>
    (diamond_class_function T v v' hvv k δ hδ c c2 γd κd hx (zf x).1 (zf x).2 (memInv _ (zf x).2)).trans (hz1 x)
  choose γ2 η2 κ2 g1 g2 g3 g4 g5 g6 using fun x => T.up_natural_level_zero v c2 (z2 x) (hz2 x)

  choose zl hzl using fun y : {y : (D.fm u).lv 0 v c2 // (D.fm u).fv 0 v c2 y = 1} => T.lv0.pr_surj v c2 y.1
  have hinvf : ∀ y, (D.fm u).fv 0 v c (T.lv0.pr v c ⟨(γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zl y).1, memFwd _ (zl y).2⟩) = 1 := by
    intro y
    have hm : ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zl y).1) ∈ Ld D u 0 (Nat.zero_le _) c2 := by
      rw [eInvFwd]; exact (zl y).2
    rw [← diamond_class_function T v v' hvv k δ hδ c c2 γd κd hx _ (memFwd _ (zl y).2) hm,
      pr_congr T v c2 ⟨_, hm⟩ (zl y) (eInvFwd _), hzl y]
    exact y.2
  let σ : {x : (D.fm u).lv 0 v c // (D.fm u).fv 0 v c x = 1} ≃
      {y : (D.fm u).lv 0 v c2 // (D.fm u).fv 0 v c2 y = 1} :=
    { toFun := fun x => ⟨T.lv0.pr v c2 (z2 x), hz2 x⟩
      invFun := fun y => ⟨T.lv0.pr v c ⟨(γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zl y).1, memFwd _ (zl y).2⟩, hinvf y⟩
      left_inv := by
        intro x
        apply Subtype.ext
        have hzz : T.lv0.pr v c2 (zl ⟨T.lv0.pr v c2 (z2 x), hz2 x⟩) = T.lv0.pr v c2 (z2 x) := hzl _
        have hm : (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (z2 x).1 ∈ Ld D u 0 (Nat.zero_le _) c := by
          show (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zf x).1) ∈ _
          rw [eFwdInv]; exact (zf x).2
        exact (pr_tr T v c2 c (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) hLat.2 _ (z2 x) hzz (memFwd _ (zl _).2) hm).trans
          ((pr_congr T v c ⟨_, hm⟩ (zf x) (eFwdInv _)).trans (hzf x))
      right_inv := by
        intro y
        apply Subtype.ext
        have hzz := hzf ⟨T.lv0.pr v c ⟨(γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zl y).1, memFwd _ (zl y).2⟩, hinvf y⟩
        have hm : ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zl y).1) ∈ Ld D u 0 (Nat.zero_le _) c2 := by
          rw [eInvFwd]; exact (zl y).2
        exact (pr_tr T v c c2 _ hInv _ ⟨_, memFwd _ (zl y).2⟩ hzz (memInv _ (zf _).2) hm).trans
          ((pr_congr T v c2 ⟨_, hm⟩ (zl y) (eInvFwd _)).trans (hzl y)) }
  refine ⟨σ, η, fun y => η2 (σ.symm y), ?_, ?_, ?_⟩
  · intro x
    have hmv : IsUpMvF T v c (T.lv0.pr v c (zf x)) (η x) :=
      ⟨γ x, κ x, h1 x, h2 x, fun h => by
        funext s
        rw [h6 x h s _ (is_translate_inverse T (γ x) s), Units.val_inv_eq_inv_val]
        rfl⟩
    rw [hzf x] at hmv
    exact hmv
  · intro y
    have hmv : IsUpMvF T v c2 (T.lv0.pr v c2 (z2 (σ.symm y))) (η2 (σ.symm y)) :=
      ⟨γ2 _, κ2 _, g1 _, g2 _, fun h => by
        funext s
        rw [g6 _ h s _ (is_translate_inverse T (γ2 _) s), Units.val_inv_eq_inv_val]
        rfl⟩
    have e : T.lv0.pr v c2 (z2 (σ.symm y)) = y.1 := congrArg Subtype.val (σ.apply_symm_apply y)
    rw [e] at hmv
    exact hmv
  · intro x
    show (η2 (σ.symm (σ x))).1⁻¹ * κd.1 * (η x).1 ∈ T.cls0.lev.U
    rw [σ.symm_apply_apply]
    have hΓU : ((γ2 x).1⁻¹ * γd⁻¹ * (γ x).1 : GL (Fin (D.R.N 0)) D.host.E) ∈
        UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _)) :=
      mul_mem (mul_mem (inv_mem (γ2 x).2) (inv_mem hγd)) (γ x).2
    have eΓ : (((γ2 x).1⁻¹ * γd⁻¹ * (γ x).1 : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) =
        (((γ2 x).1⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) * ((((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)) * ((γ x).1 : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)) := by
      rw [Units.val_mul, Units.val_mul, mul_assoc]

    have stepB : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c)) =
        Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c2) := by rw [hInv]
    have ch1 := rlv_chainP (T.atT.Pv v) ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) ((γ x).1 : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) stepB (h3 x)
    have ch2 := rlv_chainP (T.atT.Pv v) (((γ2 x).1⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) _ (use₄ (T.atT.Pv v) (γ2 x).1 (g3 x)) ch1
    have hP : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (((γ2 x).1⁻¹ * γd⁻¹ * (γ x).1 : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)
        (clsCrd D u 0 (Nat.zero_le _) ((D.fm u).up 0 v c (T.lv0.pr v c (zf x))))) =
        Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) ((D.fm u).up 0 v c2 (T.lv0.pr v c2 (z2 x)))) := by
      rw [eΓ]; exact ch2

    have eG : mulLat ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c ⊔ Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • (zf x).1}) =
        Ld D u 0 (Nat.zero_le _) c2 ⊔ Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • (z2 x).1} := by
      rw [show mulLat ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c ⊔ Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • (zf x).1}) =
          mulLat ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c) ⊔
            mulLat ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • (zf x).1}) from
          Submodule.map_sup _ _ _, hInv]
      congr 1
      unfold mulLat
      rw [Submodule.map_span, Set.image_singleton]
      congr 2
      show ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • (zf x).1) = (((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • (((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zf x).1)
      rw [Matrix.mulVec_smul]
    have stepB' : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)
        (Ld D u 0 (Nat.zero_le _) c ⊔ Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • (zf x).1})) =
        Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c2 ⊔ Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • (z2 x).1}) := by rw [eG]
    have ch1' := rlv_chainP (T.atT.Pv v) ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) ((γ x).1 : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) stepB' (h4 x)
    have ch2' := rlv_chainP (T.atT.Pv v) (((γ2 x).1⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) _ (use₄ (T.atT.Pv v) (γ2 x).1 (g4 x)) ch1'
    have hPd : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (((γ2 x).1⁻¹ * γd⁻¹ * (γ x).1 : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)
        (Ld D u 0 (Nat.zero_le _) ((D.fm u).up 0 v c (T.lv0.pr v c (zf x))))) =
        Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) ((D.fm u).up 0 v c2 (T.lv0.pr v c2 (z2 x)))) := by
      rw [eΓ]; exact ch2'
    have hF := upF T v v' hvv k δ hδ c _ c2 _ γd hγd κd hx (γ x).1 (γ2 x).1 (γ x).2 (γ2 x).2 (zf x).1 (zf x).2
      (h3 x) (h4 x) (h5 x) (g5 x) hP hPd
    have hU := matching_unitary_eq T.cls0 c _ c2 _ (γ x).1 (γ2 x).1 γd (η x) (η2 x) δ (κ x) (κ2 x) κd (h2 x) (g2 x) h3d
    exact matching_move_mem_level_zero T v c _ c2 _ (γ x).1 (γ2 x).1 γd (η x) (η2 x) δ (κ x) (κ2 x) κd (h1 x) (g1 x) hδv
      (h2 x) (g2 x) h3d (local_unitary_of_matching_zero T v _ _ _ hΓU hU hP hPd hF)

end CrossDiaZero

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.UpMatch =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.HeckeRamifiedZeroOfMatchingsAndDu =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.HeckeRamifiedZeroOfMatchingsAndDu", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.TrpDia\npublic import Formalism.SharpRestriction.GlobalSchurBounds.LemmaBSecondBranchOfLength\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DnDiaMatch0FHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.UpMatch\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0

variable {D : D7} {u : D.what₂.Word}

theorem hecke_ramified_zero_of_same_place (T : Forms0 D u) (hU : UpDiaSame0F T) (hD : DnDiaSame0F T) (hE : EDiaSame0F T)
    (h6 : DUFormulaLevelZero D u) : HeckeRamifiedLevelZero D u :=
  hecke_ramified_zero_of_matchings T (CrossDiaZero.upMatch T) (CrossDiaZero.dnMatchAll_holds D u T) (diamond_same_place_of_matchings T hU hD)
    (trpDia0_of T hU hE) h6

def SameAll : Prop := ∀ (D : D7) (u : D.what₂.Word) (T : Forms0 D u), UpDiaSame0F T ∧ DnDiaSame0F T ∧ EDiaSame0F T

def DUAll : Prop := ∀ (D : D7) (u : D.what₂.Word), Forms0 D u → DUFormulaLevelZero D u

theorem hecke_ramified_zero_of_matchings_and_du (hS : SameAll) (h6 : DUAll) :
    ∀ (D : D7) (u : D.what₂.Word), HidaSetting D u → RT.ConcreteFormsLevelZero D u → HeckeRamifiedLevelZero D u := by
  intro D u hs ht
  obtain ⟨hf, -⟩ := ht
  obtain ⟨Ch, chOf, T, -⟩ := hf
  let F : Forms0 D u :=
    { atT := T.atT
      cls0 := T.cls 0 (Nat.zero_le _) (Or.inl rfl)
      val0 := T.val 0 (Nat.zero_le _) (Or.inl rfl)
      gl := T.gl
      gl_K := T.gl_K
      glev0 := T.glev0
      lv0 := T.lv 0 (Nat.zero_le _)
      fMe0 := T.fMe 0 (Nat.zero_le _) (Or.inl rfl)
      fv0 := T.fv 0 (Nat.zero_le _) (Or.inl rfl)
      up_natural_level_zero := T.upN 0 (Nat.zero_le _) (Or.inl rfl)
      down_natural_level_zero := T.dnN 0 (Nat.zero_le _) (Or.inl rfl)
      norm0 := T.norm 0 (Nat.zero_le _) (Or.inl rfl)
      bw0 := T.bw 0 (Nat.zero_le _) (Or.inl rfl) }
  obtain ⟨hU, hD, hE⟩ := hS D u F
  exact hecke_ramified_zero_of_same_place F hU hD hE (h6 D u F)

end Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.HeckeRamifiedZeroOfMatchingsAndDu =====
