module

public import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUAllOfParts
public import Formalism.LocalToGlobal.GlobalTheory.GL6.BwAValIntegralNonneg
public import Formalism.LocalToGlobal.GlobalTheory.GL6.PDnDil
public import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.DiaFun
public import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUPt0FOfVals
public import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.NatSmulInv
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.Common
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DnkLkLocP
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DualSigmaApply
public import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.MulLatSupSpan
public import Formalism.LocalToGlobal.GroupLattices.DownNaturalLevelZero
public import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.HeckeRamifiedZeroOfMatchingsAndDu
public import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.DiaSame
public import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.LocalUnitaryOfMatchingZero
public import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.DiaConj
public import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.TrpDia
public import Formalism.HermitianLattices.StatementLat
public import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.NaturalTranslateAdelicFunction
public import Formalism.LocalToGlobal.GlobalTheory.EqGlobOfHat
public import Formalism.SharpRestriction.GlobalSchurBounds.LemmaBSecondBranchOfLength
import Formalism.LocalToGlobal.GlobalTheory.GL6.PRLocV
import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.TripMem
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.GlobalTheory.GL4.BranchingNormalisedOfAdjoint
import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.AdelicFunctionRightTranslateDiamond
import Formalism.LocalToGlobal.GlobalTheory.GL6.Statement
import Formalism.LocalToGlobal.HermitianForms.IsLocBasis
import Formalism.SharpRestriction.CuspSpanNormBounds.Point
import Formalism.SharpRestriction.GlobalSchurBounds.ProductFirstZerothParts
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
import Formalism.LocalToGlobal.GlobalTheory.GL6.PRLocW

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.ProjectionKernelEqFunctional, Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.TNotinSq, Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUAllOfSameTe, Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.MulLatticeOne, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.DnDiaSame0FHolds, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.MatchGen, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.EqualDiagonalEntriesAll, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.SameCommon, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.UpFSame, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.UpSame, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DiamondSamePlaceMatchings, Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.HeckeRamifiedZeroAll

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.ProjectionKernelEqFunctional =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.ProjectionKernelEqFunctional", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUAllOfParts\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.BwAValIntegralNonneg\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.PDnDil\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.PRLocV\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.DiaFun\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUPt0FOfVals\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.NatSmulInv\nimport Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.TripMem\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.Common\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DnkLkLocP\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DualSigmaApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.MulLatSupSpan\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.UnramifiedTrace

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 NumberField IsDedekindDomain Matrix
  Formalism.UG
open scoped TensorProduct Classical

variable {D : D7} {u : D.what₂.Word}

theorem projection_kernel_eq_functional (T : Forms0 D u) (v : (D.mem u).A.vT) (c : (D.mem u).C.cls 0)
    (y : ↥(Ld D u 0 (Nat.zero_le _) c))
    (hy : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • y.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c) :
    T.lv0.prk v c ⟨_, hy⟩ = (D.fm u).fv 0 v c (T.lv0.pr v c y) • (D.fm u).te 0 v c := by
  obtain ⟨z0, hz0⟩ := CrossDiaZero.dni_exists_one T v c
  obtain ⟨e, he⟩ := T.atT.res_surj v ((D.fm u).fv 0 v c (T.lv0.pr v c y))
  have hT0 : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • z0.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c :=
    Submodule.mem_sup_left (CrossDiaZero.dnk_tld T c z0.1 z0.2)
  have hte := T.lv0.te v c z0 hz0 hT0
  have hk : (y - e • z0).1 ∈ Lk T.atT 0 (Nat.zero_le _) v c := by
    refine (T.lv0.fv_ker v c (y - e • z0)).1 ?_
    rw [map_sub, map_sub, T.lv0.pr_smul, map_smul, hz0, he, smul_eq_mul, mul_one, sub_self]
  have hTk : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • (y - e • z0).1 ∈
      T.atT.Pv v • Lk T.atT 0 (Nat.zero_le _) v c :=
    Submodule.smul_mem_smul (bwA_T_mem_Pv (D := D) (u := u) (A := T.atT) (v := v)) hk
  have h0 : T.lv0.prk v c ((⟨_, hy⟩ : ↥(Lk T.atT 0 (Nat.zero_le _) v c)) - e • ⟨_, hT0⟩) = 0 := by
    refine (T.lv0.prk_ker v c _).2 ?_
    show (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • y.1 - e • ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • z0.1) ∈ _
    rw [smul_comm e, ← smul_sub]
    exact hTk
  rw [map_sub, T.lv0.prk_smul, hte, he, sub_eq_zero] at h0
  exact h0

theorem ld_locP (T : Forms0 D u) (v : (D.mem u).A.vT) (c : (D.mem u).C.cls 0)
    (z3 : ↥(Ld D u 0 (Nat.zero_le _) c)) (hz3 : (D.fm u).fv 0 v c (T.lv0.pr v c z3) ≠ 0) :
    Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c ⊔ Submodule.span (𝓞 D.host.E) {z3.1}) := by
  apply le_antisymm
  · intro x hx
    obtain ⟨t, ht, htx⟩ := (rlv_mem_locP _ _ _).1 hx
    obtain ⟨e, he⟩ := T.atT.res_surj v ((D.fm u).fv 0 v c (T.lv0.pr v c ⟨_, htx⟩) *
      ((D.fm u).fv 0 v c (T.lv0.pr v c z3))⁻¹)
    have hk : ((⟨_, htx⟩ : ↥(Ld D u 0 (Nat.zero_le _) c)) - e • z3).1 ∈ Lk T.atT 0 (Nat.zero_le _) v c := by
      refine (T.lv0.fv_ker v c _).1 ?_
      rw [map_sub, map_sub, T.lv0.pr_smul, map_smul, he, smul_eq_mul, mul_assoc, inv_mul_cancel₀ hz3, mul_one,
        sub_self]
    have hl := CrossDiaZero.dnk_lk_locP T v c (mem_localization_of_mem₂ _ hk)
    obtain ⟨r, hr, hrl⟩ := (rlv_mem_locP _ _ _).1 hl
    refine (rlv_mem_locP _ _ _).2 ⟨r * t, fun h => (Ideal.IsPrime.mem_or_mem inferInstance h).elim hr ht, ?_⟩
    have e1 : (r * t) • x = r • (t • x - e • z3.1) + (r * e) • z3.1 := by
      rw [smul_sub, mul_smul, mul_smul, sub_add_cancel]
    rw [e1]
    exact Submodule.add_mem _ (Submodule.mem_sup_left hrl)
      (Submodule.mem_sup_right (Submodule.smul_mem _ _ (Submodule.mem_span_singleton_self _)))
  · exact localization_mono₂ _ (sup_le (CrossDiaZero.cls_le_ld T c)
      ((Submodule.span_singleton_le_iff_mem _ _).2 z3.2))



theorem ptz_val (T : Forms0 D u) {v : (D.mem u).A.vT} {c : (D.mem u).C.cls 0}
    {g : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c)}
    {γ : UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))}
    {η : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)} {κ : T.cls0.lev.U}
    (hD : DnMvL T v c g γ η κ) (z : ↥(Ld D u 0 (Nat.zero_le _) ((D.fm u).dn 0 v c g))) (y : (D.fm u).lk 0 v c)
    (hy : IsPtZ T v c g γ z y) : g y = (D.fm u).fv 0 v _ (T.lv0.pr v _ z) := by
  obtain ⟨s, hs, hz, hy⟩ := hy
  have hz' : γ.1.1 *ᵥ (s • z).1 ∈ Lk T.atT 0 (Nat.zero_le _) v c := by
    rw [Submodule.coe_smul, Matrix.mulVec_smul]; exact hz
  have h4 := hD.2.2.2.1 (s • z) hz'
  have e1 : T.lv0.prk v c ⟨_, hz'⟩ = T.lv0.prk v c ⟨_, hz⟩ := by
    congr 1
    apply Subtype.ext
    show γ.1.1 *ᵥ (s • z).1 = s • (γ.1.1 *ᵥ z.1)
    rw [Submodule.coe_smul, Matrix.mulVec_smul]
  rw [e1, hy, T.lv0.pr_smul, map_smul, map_smul, smul_eq_mul, smul_eq_mul] at h4
  exact (mul_left_cancel₀ (res_ne T hs) h4).symm

def PtLatF (T : Forms0 D u) : Prop :=
  ∀ (v : (D.mem u).A.vT) (c : (D.mem u).C.cls 0) (w1 w3 : Fin (D.R.N 0) → D.host.E) (s1 s3 : 𝓞 D.host.E)
    (hz1 : s1 • w1 ∈ Lk T.atT 0 (Nat.zero_le _) v c) (hz3 : s3 • w3 ∈ Lk T.atT 0 (Nat.zero_le _) v c),
    s1 ∉ T.atT.Pv v → s3 ∉ T.atT.Pv v → ∀ y : (D.fm u).lk 0 v c,
    T.lv0.prk v c ⟨_, hz1⟩ = T.atT.res v s1 • y → T.lv0.prk v c ⟨_, hz3⟩ = T.atT.res v s3 • y →
    Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c ⊔
              Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • w1}) ≤
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c ⊔
        Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • w3})



theorem valDia_of_lat (T : Forms0 D u) (hL : PtLatF T) : ValDia T := by
  intro v c
  refine ⟨Equiv.inv _, ?_⟩
  intro G hG a g η κ μ hP k hk δ hδ
  obtain ⟨_, γ, hD, z, γ', κ', hz1, hU, hpt⟩ := hP
  obtain ⟨u1, u2, u3, u4, u5, -⟩ := hU
  have H1 := comp_of_moves T v c g γ η κ hD.1 hD.2.1 hD.2.2.1 hD.2.2.2.1 z γ' μ κ' u1 u2 u3 u4 u5
  have hga := (ptz_val T hD z _ hpt).trans hz1
  have hkb : ((k : ℤ) : (D.mem u).A.Fv v) = ((a⁻¹ : ((D.mem u).A.Fv v)ˣ) : (D.mem u).A.Fv v) := hk
  have hgte : g ((D.fm u).te 0 v c) = ((k : ℤ) : (D.mem u).A.Fv v) := by
    rw [hkb, Units.val_inv_eq_inv_val]
    rw [map_smul, smul_eq_mul] at hga
    exact eq_inv_of_mul_eq_one_right hga

  have hcl := T.val0.dil v a⁻¹ k hkb c δ hδ
  obtain ⟨hh, hhH, κ0, hκK, e⟩ := (@DoubleCoset.eq _ _ _ _ _ _).1 hcl
  have hκ : κ0.1 ∈ T.cls0.lev.U := hκK
  obtain ⟨γd, hγd, hge⟩ := Subgroup.mem_map.1 (Subgroup.mem_subgroupOf.1 hhH)
  have hrel : (T.cls0.y c * δ).1 =
      bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γd *
        (T.cls0.y ((D.fm u).dil 0 v a⁻¹ c)).1 * κ0.1 := by
    rw [e]
    simp only [Subgroup.coe_mul]
    rw [← hge]
  obtain ⟨hLc, hLd⟩ := diamond_lattice_transport T v k δ hδ c ((D.fm u).dil 0 v a⁻¹ c) γd hγd ⟨κ0.1, hκ⟩ hrel
  obtain ⟨z0, hz0⟩ := CrossDiaZero.dni_exists_one T v c
  obtain ⟨ea, hea⟩ := T.atT.res_surj v (a : (D.mem u).A.Fv v)
  have hfz3 : (D.fm u).fv 0 v c (T.lv0.pr v c (ea • z0)) = (a : (D.mem u).A.Fv v) := by
    rw [T.lv0.pr_smul, map_smul, hz0, hea, smul_eq_mul, mul_one]
  have hTne : (((D.mem u).A.T : ℕ) : D.host.E) ≠ 0 := by exact_mod_cast (D.mem u).A.T_prime.ne_zero
  have hw3v : ((((D.mem u).A.T : ℕ) : D.host.E))⁻¹ • ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • (ea • z0).1) =
      (ea • z0).1 := by
    rw [Nat.cast_smul_eq_nsmul, ← Nat.cast_smul_eq_nsmul D.host.E, inv_smul_smul₀ hTne]
  have H3 : IsCompMv T v c ((D.fm u).dil 0 v a⁻¹ c) ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • (ea • z0).1) g
      ⟨γd, hγd⟩ δ (⟨κ0.1, hκ⟩⁻¹) := by
    refine ⟨hδ.1, ?_, congrArg _ hLc, ?_, ?_⟩
    · show bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γd *
          (T.cls0.y ((D.fm u).dil 0 v a⁻¹ c)).1 = (T.cls0.y c).1 * δ.1 * κ0.1⁻¹
      simp only [Subgroup.coe_mul] at hrel
      rw [hrel, mul_inv_cancel_right]
    · show Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)
          (Ld D u 0 (Nat.zero_le _) ((D.fm u).dil 0 v a⁻¹ c))) = _
      rw [hLd, hw3v]
      exact ld_locP T v c (ea • z0) (by rw [hfz3]; exact Units.ne_zero a)
    · intro x hx
      have hw : (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ x.1 ∈ Ld D u 0 (Nat.zero_le _) c :=
        CrossDiaZero.dni_mem_of _ hLd x.2
      have hz2 : ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ
          ((γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ x.1) ∈
          Ld D u 0 (Nat.zero_le _) ((D.fm u).dil 0 v a⁻¹ c) := by
        rw [inv_mv]; exact x.2
      have hdf := UnramifiedDiagonal.diaFun_same T v k δ hδ c _ γd ⟨κ0.1, hκ⟩ hrel _ hw hz2
      rw [CrossDiaZero.pr_congr T v _ ⟨_, hz2⟩ x (inv_mv γd x.1)] at hdf
      rw [hdf]
      have hp := projection_kernel_eq_functional T v c ⟨_, hw⟩ hx
      show _ = g (T.lv0.prk v c ⟨_, hx⟩)
      rw [hp, map_smul, hgte, smul_eq_mul, zsmul_eq_mul, mul_comm]

  have hw3 : (1 : 𝓞 D.host.E) • ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • (ea • z0).1) ∈
      Lk T.atT 0 (Nat.zero_le _) v c := by
    rw [one_smul]; exact Submodule.mem_sup_left (CrossDiaZero.dnk_tld T c _ (ea • z0).2)
  have hy3 : T.lv0.prk v c ⟨_, hw3⟩ = T.atT.res v 1 • ((a : (D.mem u).A.Fv v) • (D.fm u).te 0 v c) := by
    have hT3 : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • (ea • z0).1 ∈ Lk T.atT 0 (Nat.zero_le _) v c := by
      rw [← one_smul (𝓞 D.host.E) ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • (ea • z0).1)]; exact hw3
    have e3 : (⟨_, hw3⟩ : ↥(Lk T.atT 0 (Nat.zero_le _) v c)) = ⟨_, hT3⟩ := Subtype.ext (one_smul _ _)
    rw [e3, projection_kernel_eq_functional T v c (ea • z0) hT3, hfz3, map_one, one_smul]
  obtain ⟨s1, hs1, hw1, hy1⟩ := hpt
  have hlat := le_antisymm
    (hL v c _ _ s1 1 hw1 hw3 hs1 (one_nmem T) _ hy1 hy3)
    (hL v c _ _ 1 s1 hw3 hw1 (one_nmem T) hs1 _ hy3 hy1)
  have hm := comp_cmp T v c _ _ (γ.1.1 *ᵥ z.1) _ g g (γ * γ') ⟨γd, hγd⟩ (hcomp T η κ μ) δ (κ * κ')
    (⟨κ0.1, hκ⟩⁻¹) H1 H3 hlat (dn_fwd T hD z.1 z.2) (fun _ _ _ _ => rfl)
  exact val_of_mem T v (T.cls0.y c) δ (hcomp T η κ μ) hδ.1 H1.1 hm G hG

end Formalism.L2.GlobalTheoryTheory.UnramifiedTrace

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.ProjectionKernelEqFunctional =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.TNotinSq =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.TNotinSq", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.DownNaturalLevelZero\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.BwAValIntegralNonneg\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DnkLkLocP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.UnramifiedTrace

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 NumberField IsDedekindDomain Matrix Formalism.UG
open scoped TensorProduct Classical

variable {D : D7} {u : D.what₂.Word}




theorem t_notin_sq (T : Forms0 D u) (v : (D.mem u).A.vT) (c : (D.mem u).C.cls 0) :
    (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) ∉ T.atT.Pv v ^ 2 := by
  intro hT
  obtain ⟨x0, hx0⟩ : ∃ x0, (D.fm u).fv 0 v c x0 ≠ 0 := by
    by_contra h
    apply (D.fm u).fv_ne 0 v c
    ext x0
    by_contra hx
    exact h ⟨x0, by rwa [LinearMap.zero_apply] at hx⟩
  obtain ⟨z, hz⟩ := T.lv0.pr_surj v c (((D.fm u).fv 0 v c x0)⁻¹ • x0)
  have hx : (D.fm u).fv 0 v c (T.lv0.pr v c z) = 1 := by
    rw [hz, map_smul, smul_eq_mul, inv_mul_cancel₀ hx0]
  have hTz : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • z.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c :=
    Submodule.mem_sup_left (CrossDiaZero.dnk_tld T c z.1 z.2)
  have hte := T.lv0.te v c z hx hTz
  have hsq : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • z.1 ∈ T.atT.Pv v • Lk T.atT 0 (Nat.zero_le _) v c := by
    have h1 : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • z.1 ∈ (T.atT.Pv v ^ 2) • Ld D u 0 (Nat.zero_le _) c :=
      Submodule.smul_mem_smul hT z.2
    rw [pow_two, Submodule.mul_smul] at h1
    exact Submodule.smul_mono le_rfl le_sup_right h1
  have h0 := (T.lv0.prk_ker v c ⟨_, hTz⟩).2 hsq
  rw [hte] at h0
  exact (D.fm u).te_ne 0 v c h0




theorem exists_not_mem_Pv_mul_mem_span_T (T : Forms0 D u) (v : (D.mem u).A.vT) (c : (D.mem u).C.cls 0) :
    ∃ s : 𝓞 D.host.E, s ∉ T.atT.Pv v ∧ ∀ p ∈ T.atT.Pv v, ∃ e : 𝓞 D.host.E,
      s * p = e * (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) := by
  have hle : Ideal.span {(((D.mem u).A.T : ℕ) : 𝓞 D.host.E)} ≤ T.atT.Pv v :=
    (Ideal.span_singleton_le_iff_mem _).2 (bwA_T_mem_Pv (D := D) (u := u) (A := T.atT) (v := v))
  obtain ⟨J, hJ⟩ := Ideal.dvd_iff_le.2 hle
  have hJP : ¬ J ≤ T.atT.Pv v := by
    intro h
    apply t_notin_sq T v c
    have h2 : Ideal.span {(((D.mem u).A.T : ℕ) : 𝓞 D.host.E)} ≤ T.atT.Pv v ^ 2 := by
      rw [hJ, pow_two]; exact Ideal.mul_mono_right h
    exact h2 (Ideal.subset_span rfl)
  obtain ⟨s, hsJ, hsP⟩ := Set.not_subset.1 hJP
  refine ⟨s, hsP, fun p hp => ?_⟩
  have hm : s * p ∈ Ideal.span {(((D.mem u).A.T : ℕ) : 𝓞 D.host.E)} := by
    rw [hJ, mul_comm s p]; exact Ideal.mul_mem_mul hp hsJ
  obtain ⟨e, he⟩ := Ideal.mem_span_singleton'.1 hm
  exact ⟨e, he.symm⟩

end Formalism.L2.GlobalTheoryTheory.UnramifiedTrace

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.TNotinSq =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUAllOfSameTe =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUAllOfSameTe", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.ProjectionKernelEqFunctional\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.HeckeRamifiedZeroOfMatchingsAndDu\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.PDnDil\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.PRLocV\nimport Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUPt0FOfVals\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.TNotinSq\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DnkLkLocP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.UnramifiedTrace

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 NumberField IsDedekindDomain Matrix
  Formalism.UG
open scoped TensorProduct Classical

section Gen

variable {E : Type} [Field E] [NumberField E] {n : ℕ}

theorem natS_cancel (N : ℕ) (hN : (N : E) ≠ 0) (a b : Fin n → E)
    (h : ((N : ℕ) : 𝓞 E) • a = ((N : ℕ) : 𝓞 E) • b) : a = b := by
  funext i
  have hi := congrFun h i
  simp only [Pi.smul_apply, Algebra.smul_def, map_natCast] at hi
  exact mul_left_cancel₀ hN hi

theorem natS_inv (N : ℕ) (hN : (N : E) ≠ 0) (w : Fin n → E) : ((N : ℕ) : 𝓞 E) • ((N : E)⁻¹ • w) = w := by
  funext i
  simp [Algebra.smul_def, hN]

theorem smul_T_of (P : Ideal (𝓞 E)) (N : Submodule (𝓞 E) (Fin n → E)) (σ τ : 𝓞 E)
    (hσT : ∀ p ∈ P, ∃ e : 𝓞 E, σ * p = e * τ) (q : Fin n → E) (hq : q ∈ P • N) :
    ∃ d' ∈ N, σ • q = τ • d' := by
  refine Submodule.smul_induction_on (p := fun q => ∃ d' ∈ N, σ • q = τ • d') hq
    (fun p hp n hn => ?_) (fun x y hx hy => ?_)
  · obtain ⟨e, he⟩ := hσT p hp
    exact ⟨e • n, N.smul_mem e hn, by rw [smul_smul, he, mul_comm e τ, mul_smul]⟩
  · obtain ⟨d1, h1, e1⟩ := hx
    obtain ⟨d2, h2, e2⟩ := hy
    exact ⟨d1 + d2, N.add_mem h1 h2, by rw [smul_add, e1, e2, smul_add]⟩

end Gen

variable {D : D7} {u : D.what₂.Word}



theorem ptLat_holds (T : Forms0 D u) : PtLatF T := by
  intro v c w1 w3 s1 s3 hz1 hz3 hs1 hs3 y hy1 hy3
  have hTne : (((D.mem u).A.T : ℕ) : D.host.E) ≠ 0 := by exact_mod_cast (D.mem u).A.T_prime.ne_zero
  have hdm : s3 • (s1 • w1) - s1 • (s3 • w3) ∈ Lk T.atT 0 (Nat.zero_le _) v c :=
    sub_mem (Submodule.smul_mem _ _ hz1) (Submodule.smul_mem _ _ hz3)
  have hd0 : T.lv0.prk v c ⟨_, hdm⟩ = 0 := by
    have e0 : (⟨_, hdm⟩ : ↥(Lk T.atT 0 (Nat.zero_le _) v c)) =
        s3 • (⟨_, hz1⟩ : ↥(Lk T.atT 0 (Nat.zero_le _) v c)) - s1 • (⟨_, hz3⟩ : ↥(Lk T.atT 0 (Nat.zero_le _) v c)) :=
      Subtype.ext rfl
    rw [e0, map_sub, T.lv0.prk_smul, T.lv0.prk_smul, hy1, hy3, smul_smul, smul_smul, mul_comm, sub_self]
  have hdP : s3 • (s1 • w1) - s1 • (s3 • w3) ∈ T.atT.Pv v • Lk T.atT 0 (Nat.zero_le _) v c :=
    (T.lv0.prk_ker v c _).1 hd0
  obtain ⟨σ, hσ, hσT⟩ := exists_not_mem_Pv_mul_mem_span_T T v c
  obtain ⟨d', hd'L, hd'⟩ := smul_T_of _ _ σ _ hσT _ hdP
  have hW : (σ * s1 * s3) • ((((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • w1) =
      d' + (σ * s1 * s3) • ((((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • w3) := by
    rw [← sub_eq_iff_eq_add]
    apply natS_cancel _ hTne
    rw [← hd', smul_sub, smul_comm (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) (σ * s1 * s3),
      smul_comm (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) (σ * s1 * s3), natS_inv _ hTne, natS_inv _ hTne, smul_sub,
      smul_smul, smul_smul, smul_smul, smul_smul, mul_right_comm σ s3 s1]
  have hd'loc := CrossDiaZero.dnk_lk_locP T v c (mem_localization_of_mem₂ _ hd'L)
  obtain ⟨t', ht', ht'd⟩ := (rlv_mem_locP _ _ _).1 hd'loc
  intro x hx
  obtain ⟨t, ht, htx⟩ := (rlv_mem_locP _ _ _).1 hx
  obtain ⟨l, hl, m, hm, em⟩ := Submodule.mem_sup.1 htx
  obtain ⟨e, rfl⟩ := Submodule.mem_span_singleton.1 hm
  have hP : (T.atT.Pv v).IsPrime := inferInstance
  refine (rlv_mem_locP _ _ _).2 ⟨t' * (σ * s1 * s3) * t, ?_, ?_⟩
  · intro h
    rcases hP.mem_or_mem h with h | h
    · rcases hP.mem_or_mem h with h | h
      · exact ht' h
      · rcases hP.mem_or_mem h with h | h
        · rcases hP.mem_or_mem h with h | h
          · exact hσ h
          · exact hs1 h
        · exact hs3 h
    · exact ht h
  · rw [mul_smul, ← em, smul_add]
    refine add_mem (Submodule.mem_sup_left (Submodule.smul_mem _ _ hl)) ?_
    rw [smul_comm (t' * (σ * s1 * s3)) e, mul_smul t' (σ * s1 * s3), hW, smul_add, smul_add]
    exact add_mem (Submodule.mem_sup_left (Submodule.smul_mem _ _ ht'd))
      (Submodule.mem_sup_right (Submodule.smul_mem _ _ (Submodule.smul_mem _ _ (Submodule.smul_mem _ _
        (Submodule.mem_span_singleton_self _)))))

theorem valDia_holds (T : Forms0 D u) : ValDia T :=
  valDia_of_lat T (ptLat_holds T)

theorem dUAll_of_same_te (h : ∀ (D : D7) (u : D.what₂.Word) (T : Forms0 D u), ValSame T ∧ ValTe T) :
    Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal.DUAll :=
  dUAll_of_vals fun D u T => ⟨(h D u T).1, (h D u T).2, valDia_holds T⟩

end Formalism.L2.GlobalTheoryTheory.UnramifiedTrace

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUAllOfSameTe =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.MulLatticeOne =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.MulLatticeOne", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.HeckeRamifiedZeroOfMatchingsAndDu\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUAllOfParts\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.BwAValIntegralNonneg\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUAllOfSameTe\nimport Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUPt0FOfVals\nimport Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.NatSmulInv\nimport Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.TripMem\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DnkLkLocP\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DualSigmaApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.UnramifiedTrace

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 NumberField IsDedekindDomain Matrix
  Formalism.UG
open scoped TensorProduct Classical

variable {D : D7} {u : D.what₂.Word}



theorem pt_agree1 (T : Forms0 D u) (v : (D.mem u).A.vT) (c : (D.mem u).C.cls 0)
    (w1 : Fin (D.R.N 0) → D.host.E) (s1 : 𝓞 D.host.E)
    (hz1 : s1 • w1 ∈ Lk T.atT 0 (Nat.zero_le _) v c) (hs1 : s1 ∉ T.atT.Pv v) (y : (D.fm u).lk 0 v c)
    (hy1 : T.lv0.prk v c ⟨_, hz1⟩ = T.atT.res v s1 • y)
    (g1 g3 : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c)) (h1 : g1 y = 1) (h3 : g3 y = 1) :
    ∀ l ∈ clsCrd D u 0 (Nat.zero_le _) c, ∀ (e : 𝓞 D.host.E)
      (hY : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • l + e • w1 ∈ Lk T.atT 0 (Nat.zero_le _) v c),
      g1 (T.lv0.prk v c ⟨_, hY⟩) = g3 (T.lv0.prk v c ⟨_, hY⟩) := by
  intro l hl e hY
  have hl' : s1 • l ∈ Lk T.atT 0 (Nat.zero_le _) v c := Submodule.mem_sup_left (Submodule.smul_mem _ _ hl)
  have hTl : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • (s1 • l) ∈ Lk T.atT 0 (Nat.zero_le _) v c :=
    Submodule.smul_mem _ _ hl'
  have hTl0 : T.lv0.prk v c ⟨_, hTl⟩ = 0 :=
    (T.lv0.prk_ker v c _).2 (Submodule.smul_mem_smul (bwA_T_mem_Pv (D := D) (u := u) (A := T.atT) (v := v)) hl')
  have e0 : s1 • (⟨_, hY⟩ : ↥(Lk T.atT 0 (Nat.zero_le _) v c)) =
      (⟨_, hTl⟩ : ↥(Lk T.atT 0 (Nat.zero_le _) v c)) + e • (⟨_, hz1⟩ : ↥(Lk T.atT 0 (Nat.zero_le _) v c)) := by
    apply Subtype.ext
    show s1 • ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • l + e • w1) =
      (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • (s1 • l) + e • (s1 • w1)
    rw [smul_add, smul_comm s1 (((D.mem u).A.T : ℕ) : 𝓞 D.host.E), smul_comm s1 e]
  have hp : T.lv0.prk v c ⟨_, hY⟩ = T.atT.res v e • y := by
    have h := congrArg (T.lv0.prk v c) e0
    rw [T.lv0.prk_smul, map_add (f := _), T.lv0.prk_smul, hTl0, zero_add, hy1, smul_comm] at h
    exact smul_right_injective _ (res_ne T hs1) h
  rw [hp, map_smul, map_smul, h1, h3]




theorem valSame_pt (T : Forms0 D u) : ValSame T := by
  intro v c G hG g η κ μ g' η' κ' μ' y hP hP'
  obtain ⟨_, γ, hD, z, γ1, κ1, hz1, hU, hpt⟩ := hP
  obtain ⟨_, γ', hD', z', γ1', κ1', hz1', hU', hpt'⟩ := hP'
  obtain ⟨u1, u2, u3, u4, u5, -⟩ := hU
  obtain ⟨u1', u2', u3', u4', u5', -⟩ := hU'
  have H1 := comp_of_moves T v c g γ η κ hD.1 hD.2.1 hD.2.2.1 hD.2.2.2.1 z γ1 μ κ1 u1 u2 u3 u4 u5
  have H3 := comp_of_moves T v c g' γ' η' κ' hD'.1 hD'.2.1 hD'.2.2.1 hD'.2.2.2.1 z' γ1' μ' κ1' u1' u2' u3' u4' u5'
  have hg1 := (ptz_val T hD z _ hpt).trans hz1
  have hg3 := (ptz_val T hD' z' _ hpt').trans hz1'
  obtain ⟨s1, hs1, hw1, hy1⟩ := hpt
  obtain ⟨s3, hs3, hw3, hy3⟩ := hpt'
  have hlat := le_antisymm (ptLat_holds T v c _ _ s1 s3 hw1 hw3 hs1 hs3 y hy1 hy3)
    (ptLat_holds T v c _ _ s3 s1 hw3 hw1 hs3 hs1 y hy3 hy1)
  have hm := comp_cmp T v c _ _ _ _ g g' _ _ (hcomp T η κ μ) (hcomp T η' κ' μ') _ _ H1 H3 hlat
    (dn_fwd T hD z.1 z.2) (pt_agree1 T v c _ s1 hw1 hs1 y hy1 g g' hg1 hg3)
  exact val_of_mem T v (T.cls0.y c) (hcomp T η' κ' μ') (hcomp T η κ μ) H3.1 H1.1 hm G hG




theorem valTe_pt (T : Forms0 D u) : ValTe T := by
  intro v c G hG g η κ μ hP
  obtain ⟨_, γ, hD, z, γ1, κ1, hz1, hU, hpt⟩ := hP
  obtain ⟨u1, u2, u3, u4, u5, -⟩ := hU
  have H1 := comp_of_moves T v c g γ η κ hD.1 hD.2.1 hD.2.2.1 hD.2.2.2.1 z γ1 μ κ1 u1 u2 u3 u4 u5
  have hg1 := (ptz_val T hD z _ hpt).trans hz1
  obtain ⟨z0, hz0⟩ := CrossDiaZero.dni_exists_one T v c
  have hTne : (((D.mem u).A.T : ℕ) : D.host.E) ≠ 0 := by exact_mod_cast (D.mem u).A.T_prime.ne_zero
  have hT0 : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • z0.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c :=
    Submodule.mem_sup_left (CrossDiaZero.dnk_tld T c z0.1 z0.2)
  have e1 : ((1 : UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))).1.1 :
      Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) = 1 := by simp
  have hw3v : ((((D.mem u).A.T : ℕ) : D.host.E))⁻¹ • ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • z0.1) = z0.1 := by
    rw [Nat.cast_smul_eq_nsmul, ← Nat.cast_smul_eq_nsmul D.host.E, inv_smul_smul₀ hTne]
  have H3 : IsCompMv T v c c ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • z0.1) g 1 1 1 := by
    refine ⟨fun v' _ => by simp, by simp, ?_, ?_, ?_⟩
    · rw [e1, _root_.Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.ddl_mulLat_one]
    · rw [e1, _root_.Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.ddl_mulLat_one, hw3v]
      exact ld_locP T v c z0 (by rw [hz0]; exact one_ne_zero)
    · intro x hx
      have hx' : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • x.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c :=
        Submodule.mem_sup_left (CrossDiaZero.dnk_tld T c x.1 x.2)
      have e2 : (⟨_, hx⟩ : ↥(Lk T.atT 0 (Nat.zero_le _) v c)) = ⟨_, hx'⟩ := by
        apply Subtype.ext
        show (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) •
            ((1 : UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))).1.1 *ᵥ x.1) =
          (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • x.1
        rw [e1, Matrix.one_mulVec]
      rw [e2, projection_kernel_eq_functional T v c x hx', map_smul, hg1, smul_eq_mul, mul_one]
  have hw3 : (1 : 𝓞 D.host.E) • ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • z0.1) ∈ Lk T.atT 0 (Nat.zero_le _) v c := by
    rw [one_smul]; exact hT0
  have hy3 : T.lv0.prk v c ⟨_, hw3⟩ = T.atT.res v 1 • (D.fm u).te 0 v c := by
    have e3 : (⟨_, hw3⟩ : ↥(Lk T.atT 0 (Nat.zero_le _) v c)) = ⟨_, hT0⟩ := Subtype.ext (one_smul _ _)
    rw [e3, T.lv0.te v c z0 hz0 hT0, map_one, one_smul]
  obtain ⟨s1, hs1, hw1, hy1⟩ := hpt
  have hlat := le_antisymm
    (ptLat_holds T v c _ _ s1 1 hw1 hw3 hs1 (one_nmem T) _ hy1 hy3)
    (ptLat_holds T v c _ _ 1 s1 hw3 hw1 (one_nmem T) hs1 _ hy3 hy1)
  have hm := comp_cmp T v c _ _ (γ.1.1 *ᵥ z.1) _ g g (γ * γ1) 1 (hcomp T η κ μ) 1 (κ * κ1) 1 H1 H3 hlat
    (dn_fwd T hD z.1 z.2) (fun _ _ _ _ => rfl)
  have h := val_of_mem T v (T.cls0.y c) 1 (hcomp T η κ μ) H3.1 H1.1 hm G hG
  rw [mul_one] at h
  exact h

theorem dUAll_holds : Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal.DUAll :=
  dUAll_of_same_te fun _ _ T => ⟨valSame_pt T, valTe_pt T⟩

end Formalism.L2.GlobalTheoryTheory.UnramifiedTrace

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.MulLatticeOne =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.DnDiaSame0FHolds =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.DnDiaSame0FHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.DiaSame\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DualSigmaApply\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.LocalUnitaryOfMatchingZero\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.PDnDil\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.DiaConj\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.DiaFun\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.Common\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DnkLkLocP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace SameDiaZero

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 Formalism.UG
open Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal CrossDiaZero
open NumberField IsDedekindDomain Matrix

variable {D : D7} {u : D.what₂.Word}

theorem inv_mulVec_self {E : Type} [Field E] {n : ℕ} (g : GL (Fin n) E) (z : Fin n → E) :
    ((g⁻¹ : GL (Fin n) E) : Matrix (Fin n) (Fin n) E) *ᵥ ((g : Matrix (Fin n) (Fin n) E) *ᵥ z) = z := by
  rw [Matrix.mulVec_mulVec, ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.one_mulVec]




theorem dnk_latP_smul (T : Forms0 D u) (v : (D.mem u).A.vT) (c c1 c2 : (D.mem u).C.cls 0)
    (g : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c)) (μ : (D.mem u).A.Fv v) (hμ : μ ≠ 0)
    (γ γ' : GL (Fin (D.R.N 0)) D.host.E)
    (hl : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c1)) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c))
    (hfun : ∀ (x : ↥(Ld D u 0 (Nat.zero_le _) c1)) (hx : (γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ x.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c),
      (D.fm u).fv 0 v c1 (T.lv0.pr v c1 x) = g (T.lv0.prk v c ⟨_, hx⟩))
    (hl' : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c2)) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c))
    (hfun' : ∀ (x : ↥(Ld D u 0 (Nat.zero_le _) c2)) (hx : (γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ x.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c),
      (D.fm u).fv 0 v c2 (T.lv0.pr v c2 x) = μ • g (T.lv0.prk v c ⟨_, hx⟩)) :
    Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat ((γ⁻¹ * γ' : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)
      (clsCrd D u 0 (Nat.zero_le _) c2)) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c1) := by
  have hfun2 : ∀ (x : ↥(Ld D u 0 (Nat.zero_le _) c2)) (hx : (γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ x.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c),
      (D.fm u).fv 0 v c2 (T.lv0.pr v c2 x) = (μ • g) (T.lv0.prk v c ⟨_, hx⟩) := fun x hx =>
    (hfun' x hx).trans (LinearMap.smul_apply μ g _).symm
  have eq1 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Lk T.atT 0 (Nat.zero_le _) v c2)) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Lk T.atT 0 (Nat.zero_le _) v c1)) := by
    ext y
    rw [dnk_char T v c c2 (μ • g) γ' hl' hfun2 y, dnk_char T v c c1 g γ hl hfun y]
    simp only [LinearMap.smul_apply, smul_eq_zero, hμ, false_or]
  have L1 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Lk T.atT 0 (Nat.zero_le _) v c1) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c1) :=
    le_antisymm (dnk_lk_locP T v c1) (localization_mono₂ _ le_sup_left)
  have L2 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Lk T.atT 0 (Nat.zero_le _) v c2) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c2) :=
    le_antisymm (dnk_lk_locP T v c2) (localization_mono₂ _ le_sup_left)
  have M1 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Lk T.atT 0 (Nat.zero_le _) v c1)) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (clsCrd D u 0 (Nat.zero_le _) c1)) :=
    le_antisymm (rlv_locP_mulLat_le _ _ L1.le) (rlv_locP_mulLat_le _ _ L1.ge)
  have M2 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Lk T.atT 0 (Nat.zero_le _) v c2)) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (clsCrd D u 0 (Nat.zero_le _) c2)) :=
    le_antisymm (rlv_locP_mulLat_le _ _ L2.le) (rlv_locP_mulLat_le _ _ L2.ge)
  rw [M1, M2] at eq1
  exact localization_smul_cancel _ γ γ' eq1




theorem dn_same_loc (T : Forms0 D u) (v : (D.mem u).A.vT) (k : ℤ) (hμ : ((k : ℤ) : (D.mem u).A.Fv v) ≠ 0)
    (c c2 c1 c3 c1' : (D.mem u).C.cls 0) (γd : GL (Fin (D.R.N 0)) D.host.E) (hγd : γd ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _)))
    (hLc : mulLat (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (clsCrd D u 0 (Nat.zero_le _) c2) = clsCrd D u 0 (Nat.zero_le _) c)
    (hLd : mulLat (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c2) = Ld D u 0 (Nat.zero_le _) c)
    (x : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c)) (x2 : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c2))
    (hxy : ∀ w, x2 w = ((k : ℤ) : (D.mem u).A.Fv v) • x (dniEquiv T v c2 c γd hLc hLd w))
    (γ γ2 : UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _)))
    (hl1 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat γ.1.1 (Ld D u 0 (Nat.zero_le _) c1)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c))
    (hl2 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat γ2.1.1 (Ld D u 0 (Nat.zero_le _) c3)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c2))
    (hf1 : ∀ (w : ↥(Ld D u 0 (Nat.zero_le _) c1)) (hw : γ.1.1 *ᵥ w.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c),
      (D.fm u).fv 0 v c1 (T.lv0.pr v c1 w) = x (T.lv0.prk v c ⟨_, hw⟩))
    (hf2 : ∀ (w : ↥(Ld D u 0 (Nat.zero_le _) c3)) (hw : γ2.1.1 *ᵥ w.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c2),
      (D.fm u).fv 0 v c3 (T.lv0.pr v c3 w) = x2 (T.lv0.prk v c2 ⟨_, hw⟩))
    (γe : GL (Fin (D.R.N 0)) D.host.E) (hγe : γe ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _)))
    (hLc1 : mulLat (γe : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (clsCrd D u 0 (Nat.zero_le _) c1') = clsCrd D u 0 (Nat.zero_le _) c1)
    (hLd1 : mulLat (γe : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c1') = Ld D u 0 (Nat.zero_le _) c1)
    (hdf : ∀ z (hz : z ∈ Ld D u 0 (Nat.zero_le _) c1)
      (hz2 : ((γe⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z ∈ Ld D u 0 (Nat.zero_le _) c1'),
      (D.fm u).fv 0 v c1' (T.lv0.pr v c1' ⟨_, hz2⟩) = k • (D.fm u).fv 0 v c1 (T.lv0.pr v c1 ⟨z, hz⟩))
    (hU : (T.cls0.y c3).1⁻¹ * bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (γ2.1⁻¹ * 1⁻¹ * (γd⁻¹ * γ.1 * γe)) * (T.cls0.y c1').1 ∈ UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) :
    bc (prV (E := D.host.E) (T.atT.eV v).1) ((T.cls0.y c3).1⁻¹ * bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (γ2.1⁻¹ * 1⁻¹ * (γd⁻¹ * γ.1 * γe)) *
      (T.cls0.y c1').1) ∈ T.cls0.lev.Uloc (T.atT.eV v).1 := by
  classical
  set g' : GL (Fin (D.R.N 0)) D.host.E := γd * γ2.1 with hg'
  have hl' : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (g' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c3)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c) := by
    rw [hg', Units.val_mul]
    exact rlv_chainP _ _ _ (by rw [hLc]) hl2
  have hLkinv : mulLat ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Lk T.atT 0 (Nat.zero_le _) v c) = Lk T.atT 0 (Nat.zero_le _) v c2 :=
    dni_inv_eq γd (dni_lk T v c2 c _ hLc hLd)
  have hf' : ∀ (w : ↥(Ld D u 0 (Nat.zero_le _) c3)) (hw : (g' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c),
      (D.fm u).fv 0 v c3 (T.lv0.pr v c3 w) = ((k : ℤ) : (D.mem u).A.Fv v) • x (T.lv0.prk v c ⟨_, hw⟩) := by
    intro w hw
    have e1 : ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((g' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w.1) = γ2.1.1 *ᵥ w.1 := by
      rw [hg', Matrix.mulVec_mulVec, ← Units.val_mul, ← mul_assoc, inv_mul_cancel, one_mul]
    have hw2 : γ2.1.1 *ᵥ w.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c2 := by
      rw [← e1]; exact dni_mem_of _ hLkinv hw
    rw [hf2 w hw2, hxy, dniEquiv_prk]
    refine congrArg (fun t => ((k : ℤ) : (D.mem u).A.Fv v) • x (T.lv0.prk v c t)) (Subtype.ext ?_)
    show (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (γ2.1.1 *ᵥ w.1) = (g' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w.1
    rw [hg', Units.val_mul, Matrix.mulVec_mulVec]
  have hPc := dnk_latP_smul T v c c1 c3 x ((k : ℤ) : (D.mem u).A.Fv v) hμ γ.1 g' hl1 hf1 hl' hf'
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
  have hQd : Formalism.HermitianLatticesTheory.localization₂ (rlvQ T.atT v) (mulLat (Γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c1)) =
      Formalism.HermitianLatticesTheory.localization₂ (rlvQ T.atT v) (Ld D u 0 (Nat.zero_le _) c3) :=
    local_dual_Q_eq_of_P T.atT v c3 c1 Γ hΓU hPΓ
  have eΓ : ∀ z, (g' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((Γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z) = γ.1.1 *ᵥ z := by
    intro z
    have e4 : g' * Γ = γ.1 := by rw [hg', hΓdef]; group
    rw [Matrix.mulVec_mulVec, ← Units.val_mul, e4]
  have hFc : ∀ z (hz : z ∈ Ld D u 0 (Nat.zero_le _) c1), ∃ r : 𝓞 D.host.F, r ∉ (T.atT.eV v).1.asIdeal ∧
      ∃ h : (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • ((Γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z) ∈ Ld D u 0 (Nat.zero_le _) c3,
        (D.fm u).fv 0 v c3 (T.lv0.pr v c3 ⟨_, h⟩) =
          ((k : ℤ) : (D.mem u).A.Fv v) • (D.fm u).fv 0 v c1 (T.lv0.pr v c1 ⟨(algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • z, Submodule.smul_mem _ _ hz⟩) := by
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
    set R := (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) with hR
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
        T.atT.res v s • (((k : ℤ) : (D.mem u).A.Fv v) • (D.fm u).fv 0 v c1 (T.lv0.pr v c1 ⟨R • z, hRz⟩)) := by
      rw [smul_comm (T.atT.res v s) ((k : ℤ) : (D.mem u).A.Fv v), hB]
      refine hA.trans ?_
      refine congrArg (fun t => ((k : ℤ) : (D.mem u).A.Fv v) • x (T.lv0.prk v c t)) (Subtype.ext ?_)
      show (g' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w3.1 = γ.1.1 *ᵥ w1.1
      rw [hw3def, hw1def, e4, e5]
    exact smul_right_injective _ hres key
  have eΓ2 : γ2.1⁻¹ * 1⁻¹ * (γd⁻¹ * γ.1 * γe) = Γ * γe := by rw [hΓdef]; group
  have hΓ2 : γ2.1⁻¹ * 1⁻¹ * (γd⁻¹ * γ.1 * γe) ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _)) := by rw [eΓ2]; exact mul_mem hΓU hγe
  have hP2 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat ((γ2.1⁻¹ * 1⁻¹ * (γd⁻¹ * γ.1 * γe) : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (clsCrd D u 0 (Nat.zero_le _) c1')) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c3) := by
    rw [eΓ2, Units.val_mul, rlv_mulLat_mul, hLc1]; exact hPΓ
  have hPd2 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat ((γ2.1⁻¹ * 1⁻¹ * (γd⁻¹ * γ.1 * γe) : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c1')) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c3) := by
    rw [eΓ2, Units.val_mul, rlv_mulLat_mul, hLd1]; exact hPdΓ
  refine local_unitary_of_matching_zero T v c3 c1' _ hΓ2 hU hP2 hPd2 ?_
  intro z hz
  have hz1 : (γe : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z ∈ Ld D u 0 (Nat.zero_le _) c1 := dni_mem_of _ hLd1 hz
  obtain ⟨r, hr, hmem, hval⟩ := hFc _ hz1
  have eΓz : ((γ2.1⁻¹ * 1⁻¹ * (γd⁻¹ * γ.1 * γe) : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z = (Γ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((γe : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z) := by
    rw [eΓ2, Units.val_mul, Matrix.mulVec_mulVec]
  have hmem2 : (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • (((γ2.1⁻¹ * 1⁻¹ * (γd⁻¹ * γ.1 * γe) : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z) ∈ Ld D u 0 (Nat.zero_le _) c3 := by
    rw [eΓz]; exact hmem
  refine ⟨r, hr, hmem2, ?_⟩
  have hRz1 : (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • ((γe : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z) ∈ Ld D u 0 (Nat.zero_le _) c1 := Submodule.smul_mem _ _ hz1
  have eback : ((γe⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • ((γe : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z)) = (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • z := by
    rw [Matrix.mulVec_smul, inv_mulVec_self]
  have hz2 : ((γe⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • ((γe : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z)) ∈ Ld D u 0 (Nat.zero_le _) c1' := by
    rw [eback]; exact Submodule.smul_mem _ _ hz
  have hd := hdf _ hRz1 hz2
  rw [← Int.cast_smul_eq_zsmul ((D.mem u).A.Fv v)] at hd
  rw [pr_congr T v c3 ⟨_, hmem2⟩ ⟨_, hmem⟩ (congrArg (fun t => (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • t) eΓz), hval, pr_congr T v c1' ⟨(algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • z, Submodule.smul_mem _ _ hz⟩ ⟨_, hz2⟩ eback.symm, hd]




theorem dn_same_one (T : Forms0 D u) (v : (D.mem u).A.vT) (a : ((D.mem u).A.Fv v)ˣ) (k : ℤ)
    (hk : (k : (D.mem u).A.Fv v) = a) (δ : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F))
    (hδ : IsDia T.cls0.lev (T.atT.eV v).1 (T.atT.eV v).2 k δ) (c c2 c1 c3 : (D.mem u).C.cls 0)
    (γd : GL (Fin (D.R.N 0)) D.host.E) (hγd : γd ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))) (κd : T.cls0.lev.U)
    (hrel : (T.cls0.y c).1 * δ.1 = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γd * (T.cls0.y c2).1 * κd.1)
    (hLc : mulLat (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (clsCrd D u 0 (Nat.zero_le _) c2) = clsCrd D u 0 (Nat.zero_le _) c)
    (hLd : mulLat (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c2) = Ld D u 0 (Nat.zero_le _) c)
    (x : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c)) (x2 : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c2))
    (hxy : ∀ w, x2 w = ((k : ℤ) : (D.mem u).A.Fv v) • x (dniEquiv T v c2 c γd hLc hLd w))
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
    η2.1⁻¹ * κd.1 * (δ.1⁻¹ * η.1 * δ.1) ∈ T.cls0.lev.U := by
  classical
  have hμ : ((k : ℤ) : (D.mem u).A.Fv v) ≠ 0 := by rw [hk]; exact a.ne_zero

  have hδ' := isDia_conj T.cls0.lev (T.atT.eV v).1 (T.atT.eV v).2 hδ κ
  have hcl := T.val0.dil v a k hk c1 _ hδ'
  obtain ⟨c1', hc1'⟩ : ∃ c1', (D.fm u).dil 0 v a c1 = c1' := ⟨_, rfl⟩
  rw [hc1'] at hcl
  obtain ⟨hh, hhH, κ0, hκK, e⟩ := (@DoubleCoset.eq _ _ _ _ _ _).1 hcl
  have hκ0 : κ0.1 ∈ T.cls0.lev.U := hκK
  obtain ⟨γe, hγe, hge⟩ := Subgroup.mem_map.1 (Subgroup.mem_subgroupOf.1 hhH)
  have hx1 : (T.cls0.y c1 * conjPt T.cls0.lev δ κ).1 = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γe * (T.cls0.y c1').1 * κ0.1 := by
    rw [e]
    simp only [Subgroup.coe_mul]
    rw [← hge]
  obtain ⟨hLc1, hLd1⟩ := diamond_lattice_transport T v k _ hδ' c1 c1' γe hγe ⟨κ0.1, hκ0⟩ hx1
  have hdf : ∀ z (hz : z ∈ Ld D u 0 (Nat.zero_le _) c1)
      (hz2 : ((γe⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z ∈ Ld D u 0 (Nat.zero_le _) c1'),
      (D.fm u).fv 0 v c1' (T.lv0.pr v c1' ⟨_, hz2⟩) = k • (D.fm u).fv 0 v c1 (T.lv0.pr v c1 ⟨z, hz⟩) :=
    fun z hz hz2 => diaFun_same T v k _ hδ' c1 c1' γe ⟨κ0.1, hκ0⟩ hx1 z hz hz2

  have hκdU : κd.1 ∈ UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F) := ((T.cls0.lev.U_eq _).1 κd.2).1
  obtain ⟨η', hη'⟩ : ∃ η' : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F), η'.1 = κd.1 * (δ.1⁻¹ * η.1 * δ.1) * κd.1⁻¹ :=
    ⟨⟨_, mul_mem (mul_mem hκdU (mul_mem (mul_mem (inv_mem δ.2) η.2) δ.2)) (inv_mem hκdU)⟩, rfl⟩
  obtain ⟨κ', hκ'⟩ : ∃ κ' : T.cls0.lev.U, κ'.1 = κd.1 * κ.1 * κ0.1⁻¹ :=
    ⟨κd * κ * (⟨κ0.1, hκ0⟩ : T.cls0.lev.U)⁻¹, rfl⟩
  have hs' : ∀ w, w ≠ (T.atT.eV v).1 → bc (prV (E := D.host.E) w) η'.1 = 1 := by
    intro w hw
    rw [hη']
    simp only [map_mul, map_inv, hs1 w hw, hδ.1 w hw, inv_one, mul_one, mul_inv_cancel]
  have ey2 : (T.cls0.y c2).1 = (bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γd)⁻¹ * ((T.cls0.y c).1 * δ.1) * κd.1⁻¹ := by
    rw [hrel]; group
  have ey1 : (T.cls0.y c1').1 = (bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γe)⁻¹ * ((T.cls0.y c1).1 * (κ.1⁻¹ * δ.1 * κ.1)) * κ0.1⁻¹ := by
    have h := hx1
    simp only [Subgroup.coe_mul, conjPt_coe] at h
    rw [h]; group
  have ey : (T.cls0.y c).1 = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ.1 * (T.cls0.y c1).1 * κ.1⁻¹ * η.1⁻¹ := by
    rw [h1]; group
  have h1' : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (γd⁻¹ * γ.1 * γe) * (T.cls0.y c1').1 = (T.cls0.y c2).1 * η'.1 * κ'.1 := by
    rw [hη', hκ', ey1, ey2, ey]
    simp only [map_mul, map_inv]
    group
  have h3 : (T.cls0.y c2).1 * (1 : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)).1 = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (1 : GL (Fin (D.R.N 0)) D.host.E) * (T.cls0.y c2).1 * (1 : T.cls0.lev.U).1 := by
    simp only [OneMemClass.coe_one, map_one, one_mul, mul_one]
  have hU := matching_unitary_eq T.cls0 c2 c1' c2 c3 (γd⁻¹ * γ.1 * γe) γ2.1 1 η' η2 1 κ' κ2 1 h1' h2 h3
  have hloc := dn_same_loc T v k hμ c c2 c1 c3 c1' γd hγd hLc hLd x x2 hxy γ γ2 hl1 hl2 hf1 hf2 γe hγe hLc1 hLd1 hdf hU
  have hm := matching_move_mem_level_zero T v c2 c1' c2 c3 (γd⁻¹ * γ.1 * γe) γ2.1 1 η' η2 1 κ' κ2 1 hs' hs2
    (by simp only [OneMemClass.coe_one, map_one]) h1' h2 h3 hloc
  have e2 : η2.1⁻¹ * κd.1 * (δ.1⁻¹ * η.1 * δ.1) = (η2.1⁻¹ * (1 : T.cls0.lev.U).1 * η'.1) * κd.1 := by
    rw [hη', OneMemClass.coe_one]; group
  rw [e2]
  exact mul_mem hm κd.2




theorem dnDiaSame0F_holds (T : Forms0 D u) : DnDiaSame0F T := by
  intro v a k hk δ hδ c γd hγd κd hrel
  obtain ⟨hLc, hLd⟩ := diamond_lattice_transport T v k δ hδ c ((D.fm u).dil 0 v a c) γd hγd κd hrel

  obtain ⟨z, hz⟩ := dni_exists_one T v ((D.fm u).dil 0 v a c)
  have hw : (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z.1 ∈ Ld D u 0 (Nat.zero_le _) c := dni_mem_of _ hLd z.2
  have hz2 : ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z.1) ∈ Ld D u 0 (Nat.zero_le _) ((D.fm u).dil 0 v a c) := by
    rw [inv_mulVec_self]; exact z.2
  have hdf := diaFun_same T v k δ hδ c _ γd κd hrel _ hw hz2
  rw [pr_congr T v _ ⟨_, hz2⟩ z (inv_mulVec_self γd z.1), hz] at hdf
  set φ : (D.fm u).lk 0 v ((D.fm u).dil 0 v a c) ≃ₗ[(D.mem u).A.Fv v] (D.fm u).lk 0 v c :=
    (dniEquiv T v ((D.fm u).dil 0 v a c) c γd hLc hLd).trans (LinearEquiv.smulOfUnit a) with hφdef
  have hφ : ∀ w, φ w = ((k : ℤ) : (D.mem u).A.Fv v) • dniEquiv T v ((D.fm u).dil 0 v a c) c γd hLc hLd w := by
    intro w; rw [hk]; rfl
  have h1 : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • z.1 ∈ Lk T.atT 0 (Nat.zero_le _) v ((D.fm u).dil 0 v a c) :=
    Submodule.mem_sup_left (dnk_tld T _ z.1 z.2)
  have hTw : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • ((γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z.1) ∈ Lk T.atT 0 (Nat.zero_le _) v c :=
    Submodule.mem_sup_left (dnk_tld T c _ hw)
  have hkw : (D.fm u).fv 0 v c (T.lv0.pr v c (k • (⟨_, hw⟩ : ↥(Ld D u 0 (Nat.zero_le _) c)))) = 1 := by
    rw [map_zsmul, map_zsmul]; exact hdf.symm
  have hTkw : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • (k • (⟨_, hw⟩ : ↥(Ld D u 0 (Nat.zero_le _) c))).1 ∈
      Lk T.atT 0 (Nat.zero_le _) v c :=
    Submodule.mem_sup_left (dnk_tld T c _ (k • (⟨_, hw⟩ : ↥(Ld D u 0 (Nat.zero_le _) c))).2)
  have hte : φ ((D.fm u).te 0 v ((D.fm u).dil 0 v a c)) = (D.fm u).te 0 v c := by
    rw [← T.lv0.te v _ z hz h1, ← T.lv0.te v c _ hkw hTkw, hφ, dniEquiv_prk]
    have e : (⟨(((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • (k • (⟨_, hw⟩ : ↥(Ld D u 0 (Nat.zero_le _) c))).1, hTkw⟩ :
        ↥(Lk T.atT 0 (Nat.zero_le _) v c)) = k • (⟨_, hTw⟩ : ↥(Lk T.atT 0 (Nat.zero_le _) v c)) := by
      apply Subtype.ext
      show (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • (k • ((γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z.1)) =
        k • ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • ((γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z.1))
      exact smul_comm _ _ _
    rw [e, map_zsmul, ← Int.cast_smul_eq_zsmul ((D.mem u).A.Fv v)]
    refine congrArg (fun t => ((k : ℤ) : (D.mem u).A.Fv v) • T.lv0.prk v c t) (Subtype.ext ?_)
    show (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • z.1) =
      (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • ((γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z.1)
    exact Matrix.mulVec_smul _ _ _
  have hne0 : ∀ {c0 : (D.mem u).C.cls 0} (x : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c0)),
      x ((D.fm u).te 0 v c0) = 1 → x ≠ 0 := by
    intro c0 x hx h0
    rw [h0, LinearMap.zero_apply] at hx
    exact zero_ne_one hx
  choose γ1 η1 κ1 hs1 hr1 hl1 hf1 ht1 using fun x : {x : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c) //
    x ((D.fm u).te 0 v c) = 1} => T.down_natural_level_zero v c x.1 (hne0 x.1 x.2)
  choose γ2 η2 κ2 hs2 hr2 hl2 hf2 ht2 using fun x : {x : Module.Dual ((D.mem u).A.Fv v)
    ((D.fm u).lk 0 v ((D.fm u).dil 0 v a c)) // x ((D.fm u).te 0 v ((D.fm u).dil 0 v a c)) = 1} =>
    T.down_natural_level_zero v ((D.fm u).dil 0 v a c) x.1 (hne0 x.1 x.2)
  refine ⟨dualSigma φ _ _ hte, η1, η2,
    fun x => ⟨γ1 x, κ1 x, hs1 x, hr1 x, fun h => ?_⟩, fun x => ⟨γ2 x, κ2 x, hs2 x, hr2 x, fun h => ?_⟩, fun x => ?_⟩
  · funext s
    rw [ht1 x h s _ (is_translate_inverse T (γ1 x) s), Units.val_inv_eq_inv_val]
    rfl
  · funext s
    rw [ht2 x h s _ (is_translate_inverse T (γ2 x) s), Units.val_inv_eq_inv_val]
    rfl
  · exact dn_same_one T v a k hk δ hδ c _ _ _ γd hγd κd hrel hLc hLd x.1 _
      (fun w => by rw [dualSigma_apply, hφ, map_smul]) (γ1 x) (γ2 _) (η1 x) (η2 _) (κ1 x) (κ2 _) (hs1 x) (hs2 _)
      (hr1 x) (hr2 _) (hl1 x) (hl2 _) (hf1 x) (hf2 _)

end SameDiaZero

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.DnDiaSame0FHolds =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.MatchGen =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.MatchGen", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DualSigmaApply\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.LocalUnitaryOfMatchingZero\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.PDnDil\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DnkLkLocP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace SameDiaZero

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 Formalism.UG
open NumberField IsDedekindDomain Matrix CrossDiaZero

variable {D : D7} {u : D.what₂.Word}




theorem dn_match_gen (T : Forms0 D u) (v : (D.mem u).A.vT) (δ : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F))
    (hδv : bc (prV (E := D.host.E) (T.atT.eV v).1) δ.1 = 1) (c c2 c1 c3 : (D.mem u).C.cls 0)
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

end SameDiaZero

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.MatchGen =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.EqualDiagonalEntriesAll =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.EqualDiagonalEntriesAll", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.TrpDia\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.PRLocV\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.DiaConj\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.DiaFun\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.Common\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.MatchGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DualSigmaApply\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace SameDiaZero

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 Formalism.UG
open NumberField IsDedekindDomain Matrix CrossDiaZero

variable {D : D7} {u : D.what₂.Word}

theorem mulLat_one_GL {n : ℕ} (L : Submodule (𝓞 D.host.E) (Fin n → D.host.E)) :
    mulLat ((1 : GL (Fin n) D.host.E) : Matrix (Fin n) (Fin n) D.host.E) L = L := by
  unfold mulLat
  simp




theorem eSame_one (T : Forms0 D u) (v : (D.mem u).A.vT) (a : ((D.mem u).A.Fv v)ˣ) (k : ℤ)
    (hk : (k : (D.mem u).A.Fv v) = a) (δ : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F))
    (hδ : IsDia T.cls0.lev (T.atT.eV v).1 (T.atT.eV v).2 k δ) (c c1 c3 : (D.mem u).C.cls 0)
    (g : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c))
    (γ γ2 : UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))) (η η2 : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (κ κ2 : T.cls0.lev.U)
    (h1 : ∀ v', v' ≠ (T.atT.eV v).1 → bc (prV (E := D.host.E) v') η.1 = 1)
    (h2 : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ.1 * (T.cls0.y c1).1 = (T.cls0.y c).1 * η.1 * κ.1)
    (hl : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat γ.1.1 (Ld D u 0 (Nat.zero_le _) c1)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c))
    (hf : ∀ (w : ↥(Ld D u 0 (Nat.zero_le _) c1)) (hw : γ.1.1 *ᵥ w.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c),
      (D.fm u).fv 0 v c1 (T.lv0.pr v c1 w) = g (T.lv0.prk v c ⟨_, hw⟩))
    (g1 : ∀ v', v' ≠ (T.atT.eV v).1 → bc (prV (E := D.host.E) v') η2.1 = 1)
    (g2 : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ2.1 * (T.cls0.y c3).1 = (T.cls0.y c).1 * η2.1 * κ2.1)
    (gl : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat γ2.1.1 (Ld D u 0 (Nat.zero_le _) c3)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c))
    (gf : ∀ (w : ↥(Ld D u 0 (Nat.zero_le _) c3)) (hw : γ2.1.1 *ᵥ w.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c),
      (D.fm u).fv 0 v c3 (T.lv0.pr v c3 w) = ((a : (D.mem u).A.Fv v) • g) (T.lv0.prk v c ⟨_, hw⟩)) :
    η2.1⁻¹ * (η.1 * δ.1) ∈ T.cls0.lev.U := by

  have hδ' := Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal.isDia_conj T.cls0.lev (T.atT.eV v).1 (T.atT.eV v).2 hδ κ
  have hcl := T.val0.dil v a k hk c1 _ hδ'
  obtain ⟨hh, hhH, κ0, hκK, e⟩ := (@DoubleCoset.eq _ _ _ _ _ _).1 hcl
  have hκ0 : κ0.1 ∈ T.cls0.lev.U := hκK
  obtain ⟨γ', hγ', hge⟩ := Subgroup.mem_map.1 (Subgroup.mem_subgroupOf.1 hhH)
  have hx1 : (T.cls0.y c1 * Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal.conjPt T.cls0.lev δ κ).1 =
      bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ' * (T.cls0.y ((D.fm u).dil 0 v a c1)).1 * κ0.1 := by
    rw [e]
    simp only [Subgroup.coe_mul]
    rw [← hge]
  generalize hc1' : (D.fm u).dil 0 v a c1 = c1' at hx1
  have hLat1 := diamond_lattice_transport T v k _ hδ' c1 c1' γ' hγ' ⟨κ0.1, hκ0⟩ hx1

  obtain ⟨ε, hε1⟩ : ∃ ε : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F), ε.1 = η.1 * δ.1 := ⟨η * δ, rfl⟩
  obtain ⟨κε, hκε⟩ : ∃ κε : T.cls0.lev.U, κε.1 = κ.1 * κ0.1⁻¹ := ⟨⟨_, mul_mem κ.2 (inv_mem hκ0)⟩, rfl⟩
  obtain ⟨γε, hγε⟩ : ∃ γε : UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _)), γε.1 = γ.1 * γ' := ⟨⟨_, mul_mem γ.2 hγ'⟩, rfl⟩
  have hε : ∀ v', v' ≠ (T.atT.eV v).1 → bc (prV (E := D.host.E) v') ε.1 = 1 := by
    intro v' hv'
    rw [hε1, map_mul, h1 v' hv', hδ.1 v' hv', one_mul]
  have h1ε : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γε.1 * (T.cls0.y c1').1 = (T.cls0.y c).1 * ε.1 * κε.1 := by
    have eγ : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ.1 = (T.cls0.y c).1 * η.1 * κ.1 * (T.cls0.y c1).1⁻¹ := by rw [← h2]; group
    have hx1' : (T.cls0.y c1).1 * (κ.1⁻¹ * δ.1 * κ.1) = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ' * (T.cls0.y c1').1 * κ0.1 := hx1
    have eγ' : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ' = (T.cls0.y c1).1 * (κ.1⁻¹ * δ.1 * κ.1) * κ0.1⁻¹ * (T.cls0.y c1').1⁻¹ := by
      rw [hx1']; group
    rw [hγε, hε1, hκε, map_mul, eγ, eγ']
    group
  have hlε : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat γε.1.1 (Ld D u 0 (Nat.zero_le _) c1')) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c) := by
    rw [hγε, Units.val_mul]
    exact rlv_chainP _ _ _ hl (by rw [hLat1.2])
  have hfε : ∀ (w : ↥(Ld D u 0 (Nat.zero_le _) c1')) (hw : γε.1.1 *ᵥ w.1 ∈ Lk T.atT 0 (Nat.zero_le _) v c),
      (D.fm u).fv 0 v c1' (T.lv0.pr v c1' w) = ((a : (D.mem u).A.Fv v) • g) (T.lv0.prk v c ⟨_, hw⟩) := by
    intro w hw
    have hw1 : (γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w.1 ∈ Ld D u 0 (Nat.zero_le _) c1 := by rw [← hLat1.2]; exact ⟨w.1, w.2, rfl⟩
    have eback : ((γ'⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w.1) = w.1 := by
      rw [Matrix.mulVec_mulVec, ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.one_mulVec]
    have hz2 : ((γ'⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w.1) ∈ Ld D u 0 (Nat.zero_le _) c1' := by rw [eback]; exact w.2
    have ew : γε.1.1 *ᵥ w.1 = γ.1.1 *ᵥ ((γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w.1) := by
      rw [hγε, Units.val_mul, Matrix.mulVec_mulVec]
    have hw' : γ.1.1 *ᵥ (⟨_, hw1⟩ : ↥(Ld D u 0 (Nat.zero_le _) c1)).1 ∈ Lk T.atT 0 (Nat.zero_le _) v c := by
      show γ.1.1 *ᵥ ((γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w.1) ∈ _
      rw [← ew]; exact hw
    have d := Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal.diaFun_same T v k _ hδ' c1 c1' γ' ⟨κ0.1, hκ0⟩ hx1 _ hw1 hz2
    rw [pr_congr T v c1' w ⟨_, hz2⟩ eback.symm, d, hf ⟨_, hw1⟩ hw', LinearMap.smul_apply, zsmul_eq_mul, hk,
      smul_eq_mul]
    have ep : T.lv0.prk v c ⟨_, hw'⟩ = T.lv0.prk v c ⟨_, hw⟩ := congrArg (T.lv0.prk v c) (Subtype.ext ew.symm)
    rw [ep]

  have hL1 := mulLat_one_GL (D := D) (clsCrd D u 0 (Nat.zero_le _) c)
  have hLd1 := mulLat_one_GL (D := D) (Ld D u 0 (Nat.zero_le _) c)
  have hxy : ∀ w, ((a : (D.mem u).A.Fv v) • g) w = ((a : (D.mem u).A.Fv v) • g) (dniEquiv T v c c 1 hL1 hLd1 w) := by
    intro w
    obtain ⟨z, rfl⟩ := T.lv0.prk_surj v c w
    rw [dniEquiv_prk]
    congr 2
    apply Subtype.ext
    show z.1 = ((1 : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z.1
    rw [Units.val_one, Matrix.one_mulVec]
  have htriv : (T.cls0.y c).1 * (1 : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)).1 = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (1 : GL (Fin (D.R.N 0)) D.host.E) * (T.cls0.y c).1 * (1 : T.cls0.lev.U).1 := by
    simp only [OneMemClass.coe_one, map_one, mul_one, one_mul]
  have hm := dn_match_gen T v 1 (by simp only [OneMemClass.coe_one, map_one]) c c c1' c3 1 (one_mem _) 1 htriv
    hL1 hLd1 ((a : (D.mem u).A.Fv v) • g) ((a : (D.mem u).A.Fv v) • g) hxy γε γ2 ε η2 κε κ2 hε g1 h1ε g2 hlε gl hfε gf
  have efin : η2.1⁻¹ * (η.1 * δ.1) = η2.1⁻¹ * (1 : T.cls0.lev.U).1 * ε.1 := by
    rw [hε1, OneMemClass.coe_one, mul_one]
  rw [efin]
  exact hm




theorem eSame (T : Forms0 D u) : Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal.EDiaSame0F T := by
  intro v a k hk δ hδ c
  classical
  choose γ1 η1 κ1 hs1 hr1 hl1 hf1 ht1 using fun x : {x : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c) // x ≠ 0} => T.down_natural_level_zero v c x.1 x.2
  let σ : {x : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c) // x ≠ 0} ≃ {x : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c) // x ≠ 0} :=
    { toFun := fun x => ⟨(a : (D.mem u).A.Fv v) • x.1, smul_ne_zero (Units.ne_zero a) x.2⟩
      invFun := fun x => ⟨((a⁻¹ : ((D.mem u).A.Fv v)ˣ) : (D.mem u).A.Fv v) • x.1, smul_ne_zero (Units.ne_zero _) x.2⟩
      left_inv := fun x => Subtype.ext (by
        show ((a⁻¹ : ((D.mem u).A.Fv v)ˣ) : (D.mem u).A.Fv v) • ((a : (D.mem u).A.Fv v) • x.1) = x.1
        rw [smul_smul, Units.inv_mul, one_smul])
      right_inv := fun x => Subtype.ext (by
        show (a : (D.mem u).A.Fv v) • (((a⁻¹ : ((D.mem u).A.Fv v)ˣ) : (D.mem u).A.Fv v) • x.1) = x.1
        rw [smul_smul, Units.mul_inv, one_smul]) }
  refine ⟨σ, η1, fun x => ⟨γ1 x, κ1 x, hs1 x, hr1 x, fun h => ?_⟩, fun x => ?_⟩
  · funext s
    rw [ht1 x h s _ (is_translate_inverse T (γ1 x) s), Units.val_inv_eq_inv_val]
    rfl
  · exact eSame_one T v a k hk δ hδ c _ _ x.1 (γ1 x) (γ1 (σ x)) (η1 x) (η1 (σ x)) (κ1 x) (κ1 (σ x))
      (hs1 x) (hr1 x) (hl1 x) (hf1 x) (hs1 (σ x)) (hr1 (σ x)) (hl1 (σ x)) (hf1 (σ x))

end SameDiaZero

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.EqualDiagonalEntriesAll =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.SameCommon =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.SameCommon", "h": "module\n\npublic import Formalism.HermitianLattices.StatementLat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.GlobalTheory.GL4.BranchingNormalisedOfAdjoint\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.AdelicFunctionRightTranslateDiamond\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.Statement\nimport Formalism.LocalToGlobal.HermitianForms.IsLocBasis\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.Common\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\nimport Formalism.SharpRestriction.GlobalSchurBounds.ProductFirstZerothParts\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace SameDiaZero

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 Formalism.UG
open NumberField IsDedekindDomain Matrix CrossDiaZero

theorem smul_comm_OE {E : Type} [Field E] [NumberField E] {n : ℕ} (t : E) (m : 𝓞 E) (w : Fin n → E) :
    t • (m • w) = m • (t • w) := by
  exact smul_comm t m w

theorem localization_LshKer_eq_localization_sup {R W : Type} [CommRing R] [AddCommGroup W] [Module R W] (P : Ideal R) [P.IsPrime]
    (L : Submodule R W) (y : W) (s : R) (hs : s ∉ P) :
    Formalism.HermitianLatticesTheory.localization₂ P (L ⊔ Submodule.span R {s • y}) = Formalism.HermitianLatticesTheory.localization₂ P (L ⊔ Submodule.span R {y}) := by
  have hS : s ∈ P.primeCompl := hs
  ext x
  change (∃ t ∈ P.primeCompl, t • x ∈ L ⊔ Submodule.span R {s • y}) ↔
    ∃ t ∈ P.primeCompl, t • x ∈ L ⊔ Submodule.span R {y}
  constructor
  · rintro ⟨t, ht, hx⟩
    refine ⟨t, ht, (sup_le_sup_left ?_ L) hx⟩
    rw [Submodule.span_le, Set.singleton_subset_iff]
    exact Submodule.smul_mem _ s (Submodule.mem_span_singleton_self y)
  · rintro ⟨t, ht, hx⟩
    refine ⟨s * t, P.primeCompl.mul_mem hS ht, ?_⟩
    obtain ⟨l, hl, z, hz, he⟩ := Submodule.mem_sup.mp hx
    obtain ⟨c, rfl⟩ := Submodule.mem_span_singleton.mp hz
    rw [mul_smul, ← he, smul_add, smul_comm s c y]
    exact Submodule.add_mem_sup (L.smul_mem s hl)
      (Submodule.smul_mem _ c (Submodule.mem_span_singleton_self _))

end SameDiaZero

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.SameCommon =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.UpFSame =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.UpFSame", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.DownNaturalLevelZero\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.LocalUnitaryOfMatchingZero\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.NaturalTranslateAdelicFunction\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.PRLocW\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.DiaFun\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.Common\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.GlobalTheory.EqGlobOfHat\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace SameDiaZero

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 Formalism.UG
open NumberField IsDedekindDomain Matrix CrossDiaZero

variable {D : D7} {u : D.what₂.Word}




theorem upFSame (T : Forms0 D u) (v : (D.mem u).A.vT) (k : ℤ)
    (δ : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F))
    (hδ : IsDia T.cls0.lev (T.atT.eV v).1 (T.atT.eV v).2 k δ)
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
          k • (D.fm u).fv 0 v c1 (T.lv0.pr v c1 ⟨(algebraMap (𝓞 D.host.F) (𝓞 D.host.E) a) • w,
            Submodule.smul_mem _ _ hw⟩) := by
  intro w hw
  have hT0 : (((D.mem u).A.T : ℕ) : D.host.E) ≠ 0 := Nat.cast_ne_zero.2 (D.mem u).A.T_prime.ne_zero
  obtain ⟨hdd, hfg, hH⟩ := rlv_coordFacts (D := D) (u := u) 0 (Nat.zero_le _)
  have hLat := diamond_lattice_transport T v k δ hδ c c2 γd hγd κd hx
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
    _ = k • (D.fm u).fv 0 v c (T.lv0.pr v c ⟨_, m2⟩) :=
        Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal.diaFun_same T v k δ hδ c c2 γd κd hx _ m2 (memInv _ m2)
    _ = k • (D.fm u).fv 0 v c (T.lv0.pr v c ⟨_, hB⟩) := by
        rw [pr_congr T v c ⟨_, m2⟩ ⟨_, hB⟩ eV1.symm]
    _ = _ := congrArg (fun t => k • t) (h5 ⟨_, Submodule.smul_mem _ _ hw⟩ hB).symm

end SameDiaZero

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.UpFSame =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.UpSame =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.UpSame", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.DiaSame\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.LocalUnitaryOfMatchingZero\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.DiaConj\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.DiaFun\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.Common\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.SameCommon\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.UpFSame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace SameDiaZero

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 Formalism.UG
open NumberField IsDedekindDomain Matrix CrossDiaZero

variable {D : D7} {u : D.what₂.Word}




theorem upSame_one (T : Forms0 D u) (v : (D.mem u).A.vT) (a : ((D.mem u).A.Fv v)ˣ) (k : ℤ)
    (hk : (k : (D.mem u).A.Fv v) = a) (δ : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F))
    (hδ : IsDia T.cls0.lev (T.atT.eV v).1 (T.atT.eV v).2 k δ) (c c2 : (D.mem u).C.cls 0)
    (γd : GL (Fin (D.R.N 0)) D.host.E) (hγd : γd ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))) (κd : T.cls0.lev.U)
    (hx : (T.cls0.y c * δ).1 = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γd * (T.cls0.y c2).1 * κd.1)
    (c1 c3 : (D.mem u).C.cls 0) (z : Fin (D.R.N 0) → D.host.E) (hz : z ∈ Ld D u 0 (Nat.zero_le _) c)
    (m : 𝓞 D.host.E) (hmP : m ∉ T.atT.Pv v)
    (γ γ2 : UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))) (η η2 : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (κ κ2 : T.cls0.lev.U)
    (h1 : ∀ v', v' ≠ (T.atT.eV v).1 → bc (prV (E := D.host.E) v') η.1 = 1)
    (h2 : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ.1 * (T.cls0.y c1).1 = (T.cls0.y c).1 * η.1 * κ.1)
    (h3 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat γ.1.1 (clsCrd D u 0 (Nat.zero_le _) c1)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c))
    (h4 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat γ.1.1 (Ld D u 0 (Nat.zero_le _) c1)) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c ⊔ Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • z}))
    (h5 : ∀ (x : ↥(Ld D u 0 (Nat.zero_le _) c1)) (hx : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • (γ.1.1 *ᵥ x.1) ∈ Ld D u 0 (Nat.zero_le _) c),
      (D.fm u).fv 0 v c1 (T.lv0.pr v c1 x) = (D.fm u).fv 0 v c (T.lv0.pr v c ⟨_, hx⟩))
    (g1 : ∀ v', v' ≠ (T.atT.eV v).1 → bc (prV (E := D.host.E) v') η2.1 = 1)
    (g2 : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ2.1 * (T.cls0.y c3).1 = (T.cls0.y c2).1 * η2.1 * κ2.1)
    (g3 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat γ2.1.1 (clsCrd D u 0 (Nat.zero_le _) c3)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c2))
    (g4 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat γ2.1.1 (Ld D u 0 (Nat.zero_le _) c3)) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c2 ⊔ Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • (m • (((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z))}))
    (g5 : ∀ (x : ↥(Ld D u 0 (Nat.zero_le _) c3)) (hx : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • (γ2.1.1 *ᵥ x.1) ∈ Ld D u 0 (Nat.zero_le _) c2),
      (D.fm u).fv 0 v c3 (T.lv0.pr v c3 x) = (D.fm u).fv 0 v c2 (T.lv0.pr v c2 ⟨_, hx⟩)) :
    η2.1⁻¹ * κd.1 * (δ.1⁻¹ * η.1 * δ.1) ∈ T.cls0.lev.U := by

  have hδ' := Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal.isDia_conj T.cls0.lev (T.atT.eV v).1 (T.atT.eV v).2 hδ κ
  have hcl := T.val0.dil v a k hk c1 _ hδ'
  obtain ⟨hh, hhH, κ0, hκK, e⟩ := (@DoubleCoset.eq _ _ _ _ _ _).1 hcl
  have hκ0 : κ0.1 ∈ T.cls0.lev.U := hκK
  obtain ⟨γ', hγ', hge⟩ := Subgroup.mem_map.1 (Subgroup.mem_subgroupOf.1 hhH)
  have hx1 : (T.cls0.y c1 * Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal.conjPt T.cls0.lev δ κ).1 =
      bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ' * (T.cls0.y ((D.fm u).dil 0 v a c1)).1 * κ0.1 := by
    rw [e]
    simp only [Subgroup.coe_mul]
    rw [← hge]
  generalize hc1' : (D.fm u).dil 0 v a c1 = c1' at hx1
  have hLat1 := diamond_lattice_transport T v k _ hδ' c1 c1' γ' hγ' ⟨κ0.1, hκ0⟩ hx1
  have hLat := diamond_lattice_transport T v k δ hδ c c2 γd hγd κd hx
  have hInv : mulLat ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c) = Ld D u 0 (Nat.zero_le _) c2 := by
    rw [← hLat.2, rlv_mulLat_inv]

  have hκdP := ((T.cls0.lev.U_eq _).1 κd.2).1
  obtain ⟨ε, hε1⟩ : ∃ ε : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F), ε.1 = κd.1 * δ.1⁻¹ * η.1 * δ.1 * κd.1⁻¹ :=
    ⟨⟨_, mul_mem (mul_mem (mul_mem (mul_mem hκdP (inv_mem δ.2)) η.2) δ.2) (inv_mem hκdP)⟩, rfl⟩
  obtain ⟨κε, hκε⟩ : ∃ κε : T.cls0.lev.U, κε.1 = κd.1 * κ.1 * κ0.1⁻¹ :=
    ⟨⟨_, mul_mem (mul_mem κd.2 κ.2) (inv_mem hκ0)⟩, rfl⟩
  have hγε : (γd⁻¹ * γ.1 * γ' : GL (Fin (D.R.N 0)) D.host.E) ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _)) := mul_mem (mul_mem (inv_mem hγd) γ.2) hγ'
  have hε : ∀ v', v' ≠ (T.atT.eV v).1 → bc (prV (E := D.host.E) v') ε.1 = 1 := by
    intro v' hv'
    rw [hε1]
    simp only [map_mul, map_inv, h1 v' hv', hδ.1 v' hv', inv_one, mul_one, mul_inv_cancel]
  have h1ε : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (γd⁻¹ * γ.1 * γ') * (T.cls0.y c1').1 = (T.cls0.y c2).1 * ε.1 * κε.1 := by
    have eγ : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ.1 = (T.cls0.y c).1 * η.1 * κ.1 * (T.cls0.y c1).1⁻¹ := by rw [← h2]; group
    have hx' : (T.cls0.y c).1 * δ.1 = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γd * (T.cls0.y c2).1 * κd.1 := hx
    have eγd : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γd = (T.cls0.y c).1 * δ.1 * κd.1⁻¹ * (T.cls0.y c2).1⁻¹ := by rw [hx']; group
    have hx1' : (T.cls0.y c1).1 * (κ.1⁻¹ * δ.1 * κ.1) = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ' * (T.cls0.y c1').1 * κ0.1 := hx1
    have eγ' : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ' = (T.cls0.y c1).1 * (κ.1⁻¹ * δ.1 * κ.1) * κ0.1⁻¹ * (T.cls0.y c1').1⁻¹ := by
      rw [hx1']; group
    rw [hε1, hκε, map_mul, map_mul, map_inv, eγ, eγd, eγ']
    group
  have htriv : (T.cls0.y c2).1 * (1 : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)).1 = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (1 : GL (Fin (D.R.N 0)) D.host.E) * (T.cls0.y c2).1 * (1 : T.cls0.lev.U).1 := by
    simp only [OneMemClass.coe_one, map_one, mul_one, one_mul]

  have s1 := use₄ (T.atT.Pv v) γ2.1 g3
  have s2 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c2) := by rw [hInv]
  have hP0 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat ((γ2.1⁻¹ * γd⁻¹ * γ.1 : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (clsCrd D u 0 (Nat.zero_le _) c1)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c3) := by
    rw [Units.val_mul, Units.val_mul]
    exact rlv_chainP (T.atT.Pv v) _ _ (rlv_chainP (T.atT.Pv v) _ _ s1 s2) h3
  have t1 := use₄ (T.atT.Pv v) γ2.1 g4
  have eG : mulLat ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c ⊔ Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • z}) =
      Ld D u 0 (Nat.zero_le _) c2 ⊔ Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • (((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z)} := by
    rw [show mulLat ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c ⊔ Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • z}) =
        mulLat ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c) ⊔
          mulLat ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • z}) from
        Submodule.map_sup _ _ _, hInv]
    congr 1
    unfold mulLat
    rw [Submodule.map_span, Set.image_singleton]
    congr 2
    show ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • z) = (((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • (((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z)
    rw [Matrix.mulVec_smul]
  have sc : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c2 ⊔ Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • (m • (((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z))}) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c2 ⊔ Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • (((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z)}) := by
    rw [smul_comm_OE]
    exact localization_LshKer_eq_localization_sup _ _ _ m hmP
  have s2' : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c ⊔ Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • z})) =
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c2 ⊔ Submodule.span (𝓞 D.host.E) {(((D.mem u).A.T : ℕ) : D.host.E)⁻¹ • (m • (((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z))}) := by
    rw [eG, sc]
  have hPd0 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat ((γ2.1⁻¹ * γd⁻¹ * γ.1 : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c1)) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c3) := by
    rw [Units.val_mul, Units.val_mul]
    exact rlv_chainP (T.atT.Pv v) _ _ (rlv_chainP (T.atT.Pv v) _ _ t1 s2') h4
  have eΓ : ((γ2.1⁻¹ * 1⁻¹ * (γd⁻¹ * γ.1 * γ') : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) =
      ((γ2.1⁻¹ * γd⁻¹ * γ.1 : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) * (γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) := by
    simp only [inv_one, mul_one, Units.val_mul, mul_assoc]
  have s3 : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (clsCrd D u 0 (Nat.zero_le _) c1')) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c1) := by rw [hLat1.1]
  have s3' : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat (γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c1')) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c1) := by rw [hLat1.2]
  have hP : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat ((γ2.1⁻¹ * 1⁻¹ * (γd⁻¹ * γ.1 * γ') : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (clsCrd D u 0 (Nat.zero_le _) c1')) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c3) := by
    rw [eΓ]; exact rlv_chainP (T.atT.Pv v) _ _ hP0 s3
  have hPd : Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat ((γ2.1⁻¹ * 1⁻¹ * (γd⁻¹ * γ.1 * γ') : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (Ld D u 0 (Nat.zero_le _) c1')) = Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) c3) := by
    rw [eΓ]; exact rlv_chainP (T.atT.Pv v) _ _ hPd0 s3'

  have hF : ∀ w (hw : w ∈ Ld D u 0 (Nat.zero_le _) c1'), ∃ r : 𝓞 D.host.F, r ∉ (T.atT.eV v).1.asIdeal ∧
      ∃ h : (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • (((γ2.1⁻¹ * 1⁻¹ * (γd⁻¹ * γ.1 * γ') : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w) ∈ Ld D u 0 (Nat.zero_le _) c3,
        (D.fm u).fv 0 v c3 (T.lv0.pr v c3 ⟨_, h⟩) =
          (D.fm u).fv 0 v c1' (T.lv0.pr v c1' ⟨(algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • w, Submodule.smul_mem _ _ hw⟩) := by
    intro w hw
    have hw1 : (γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w ∈ Ld D u 0 (Nat.zero_le _) c1 := by rw [← hLat1.2]; exact ⟨w, hw, rfl⟩
    obtain ⟨r, hr, hmem, hf⟩ := upFSame T v k δ hδ c c1 c2 c3 γd hγd κd hx γ.1 γ2.1 γ.2 γ2.2 z hz h3 h4 h5 g5
      hP0 hPd0 _ hw1
    have eΓw : (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • (((γ2.1⁻¹ * 1⁻¹ * (γd⁻¹ * γ.1 * γ') : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w) =
        (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • (((γ2.1⁻¹ * γd⁻¹ * γ.1 : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w)) := by
      rw [Matrix.mulVec_mulVec, eΓ]
    have h : (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • (((γ2.1⁻¹ * 1⁻¹ * (γd⁻¹ * γ.1 * γ') : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w) ∈ Ld D u 0 (Nat.zero_le _) c3 := by
      rw [eΓw]; exact hmem
    refine ⟨r, hr, h, ?_⟩
    have hz1 : (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • ((γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w) ∈ Ld D u 0 (Nat.zero_le _) c1 := Submodule.smul_mem _ _ hw1
    have eback : ((γ'⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • ((γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w)) = (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • w := by
      rw [Matrix.mulVec_smul, Matrix.mulVec_mulVec, ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.one_mulVec]
    have hz2 : ((γ'⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((algebraMap (𝓞 D.host.F) (𝓞 D.host.E) r) • ((γ' : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ w)) ∈ Ld D u 0 (Nat.zero_le _) c1' := by
      rw [eback]; exact Submodule.smul_mem _ _ hw
    have d := Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal.diaFun_same T v k _ hδ' c1 c1' γ' ⟨κ0.1, hκ0⟩ hx1 _ hz1 hz2
    rw [pr_congr T v c3 ⟨_, h⟩ ⟨_, hmem⟩ eΓw, hf, ← d,
      pr_congr T v c1' ⟨_, hz2⟩ ⟨_, Submodule.smul_mem _ _ hw⟩ eback]

  have hΓ : (γ2.1⁻¹ * 1⁻¹ * (γd⁻¹ * γ.1 * γ') : GL (Fin (D.R.N 0)) D.host.E) ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _)) :=
    mul_mem (mul_mem (inv_mem γ2.2) (inv_mem (one_mem _))) hγε
  have hU := matching_unitary_eq T.cls0 c2 c1' c2 c3 _ γ2.1 1 ε η2 1 κε κ2 1 h1ε g2 htriv
  have hloc := local_unitary_of_matching_zero T v c3 c1' _ hΓ hU hP hPd hF
  have hmm := matching_move_mem_level_zero T v c2 c1' c2 c3 _ γ2.1 1 ε η2 1 κε κ2 1 hε g1
    (by simp only [OneMemClass.coe_one, map_one]) h1ε g2 htriv hloc
  have efin : η2.1⁻¹ * κd.1 * (δ.1⁻¹ * η.1 * δ.1) = η2.1⁻¹ * (1 : T.cls0.lev.U).1 * ε.1 * κd.1 := by
    rw [hε1, OneMemClass.coe_one]
    group
  rw [efin]
  exact mul_mem hmm κd.2




theorem upSame (T : Forms0 D u) : Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal.UpDiaSame0F T := by
  intro v a k hk δ hδ c γd hγd κd hx
  set c2 := (D.fm u).dil 0 v a c with hc2
  have hLat := diamond_lattice_transport T v k δ hδ c c2 γd hγd κd hx
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

  obtain ⟨m, hm⟩ := T.atT.res_surj v ((a⁻¹ : ((D.mem u).A.Fv v)ˣ) : (D.mem u).A.Fv v)
  have hmP : m ∉ T.atT.Pv v := by
    intro h
    rw [AtTTied.Pv, RingHom.mem_ker, hm] at h
    exact Units.ne_zero _ h
  have hkm : T.atT.res v (k : 𝓞 D.host.E) * T.atT.res v m = 1 := by
    rw [map_intCast, hk, hm, Units.mul_inv]
  have hmk : T.atT.res v m * T.atT.res v (k : 𝓞 D.host.E) = 1 := by
    rw [mul_comm]; exact hkm
  have hDFz : ∀ y : ↥(Ld D u 0 (Nat.zero_le _) c), (D.fm u).fv 0 v c2 (T.lv0.pr v c2 ⟨((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ y.1, memInv _ y.2⟩) =
      k • (D.fm u).fv 0 v c (T.lv0.pr v c y) :=
    fun y => Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal.diaFun_same T v k δ hδ c c2 γd κd hx y.1 y.2 (memInv _ y.2)

  choose zf hzf using fun x : {x : (D.fm u).lv 0 v c // (D.fm u).fv 0 v c x = 1} => T.lv0.pr_surj v c x.1
  have hz1 : ∀ x, (D.fm u).fv 0 v c (T.lv0.pr v c (zf x)) = 1 := fun x => by rw [hzf x]; exact x.2
  choose γ η κ h1 h2 h3 h4 h5 h6 using fun x => T.up_natural_level_zero v c (zf x) (hz1 x)

  let z2 : {x : (D.fm u).lv 0 v c // (D.fm u).fv 0 v c x = 1} → ↥(Ld D u 0 (Nat.zero_le _) c2) :=
    fun x => m • (⟨((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zf x).1, memInv _ (zf x).2⟩ : ↥(Ld D u 0 (Nat.zero_le _) c2))
  have hz2 : ∀ x, (D.fm u).fv 0 v c2 (T.lv0.pr v c2 (z2 x)) = 1 := by
    intro x
    show (D.fm u).fv 0 v c2 (T.lv0.pr v c2 (m • (⟨((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zf x).1, memInv _ (zf x).2⟩ :
      ↥(Ld D u 0 (Nat.zero_le _) c2)))) = 1
    rw [T.lv0.pr_smul, map_smul, hDFz (zf x), hz1 x, smul_eq_mul, zsmul_eq_mul, mul_one, hk, hm, Units.inv_mul]
  choose γ2 η2 κ2 g1 g2 g3 g4 g5 g6 using fun x => T.up_natural_level_zero v c2 (z2 x) (hz2 x)

  choose zl hzl using fun y : {y : (D.fm u).lv 0 v c2 // (D.fm u).fv 0 v c2 y = 1} => T.lv0.pr_surj v c2 y.1
  let w1 : {y : (D.fm u).lv 0 v c2 // (D.fm u).fv 0 v c2 y = 1} → ↥(Ld D u 0 (Nat.zero_le _) c) :=
    fun y => (k : 𝓞 D.host.E) • (⟨(γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zl y).1, memFwd _ (zl y).2⟩ : ↥(Ld D u 0 (Nat.zero_le _) c))
  have hinvf : ∀ y, (D.fm u).fv 0 v c (T.lv0.pr v c (w1 y)) = 1 := by
    intro y
    have e := hDFz ⟨(γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zl y).1, memFwd _ (zl y).2⟩
    rw [pr_congr T v c2 ⟨_, memInv _ (memFwd _ (zl y).2)⟩ (zl y) (eInvFwd _), hzl y, y.2] at e
    show (D.fm u).fv 0 v c (T.lv0.pr v c ((k : 𝓞 D.host.E) •
      (⟨(γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zl y).1, memFwd _ (zl y).2⟩ : ↥(Ld D u 0 (Nat.zero_le _) c)))) = 1
    rw [T.lv0.pr_smul, map_smul, smul_eq_mul, map_intCast, ← zsmul_eq_mul]
    exact e.symm
  let σ : {x : (D.fm u).lv 0 v c // (D.fm u).fv 0 v c x = 1} ≃
      {y : (D.fm u).lv 0 v c2 // (D.fm u).fv 0 v c2 y = 1} :=
    { toFun := fun x => ⟨T.lv0.pr v c2 (z2 x), hz2 x⟩
      invFun := fun y => ⟨T.lv0.pr v c (w1 y), hinvf y⟩
      left_inv := by
        intro x
        apply Subtype.ext
        have hm1 : (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (z2 x).1 ∈ Ld D u 0 (Nat.zero_le _) c := memFwd _ (z2 x).2
        have e1 := pr_tr T v c2 c (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) hLat.2 (zl ⟨T.lv0.pr v c2 (z2 x), hz2 x⟩) (z2 x) (hzl _)
          (memFwd _ (zl _).2) hm1
        have e2 : (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (z2 x).1 = (m • zf x).1 := by
          show (γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (m • (((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zf x).1)) = m • (zf x).1
          rw [Matrix.mulVec_smul, eFwdInv]
        show T.lv0.pr v c ((k : 𝓞 D.host.E) • (⟨(γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zl ⟨T.lv0.pr v c2 (z2 x), hz2 x⟩).1,
          memFwd _ (zl _).2⟩ : ↥(Ld D u 0 (Nat.zero_le _) c))) = x.1
        rw [T.lv0.pr_smul, e1, pr_congr T v c ⟨_, hm1⟩ (m • zf x) e2, T.lv0.pr_smul, hzf x, smul_smul, hkm,
          one_smul]
      right_inv := by
        intro y
        apply Subtype.ext
        have hm1 : ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (w1 y).1 ∈ Ld D u 0 (Nat.zero_le _) c2 := memInv _ (w1 y).2
        have e1 := pr_tr T v c c2 ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) hInv (zf ⟨T.lv0.pr v c (w1 y), hinvf y⟩) (w1 y) (hzf _)
          (memInv _ (zf _).2) hm1
        have e2 : ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (w1 y).1 = ((k : 𝓞 D.host.E) • zl y).1 := by
          show ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ ((k : 𝓞 D.host.E) • ((γd : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zl y).1)) = (k : 𝓞 D.host.E) • (zl y).1
          rw [Matrix.mulVec_smul, eInvFwd]
        show T.lv0.pr v c2 (m • (⟨((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ (zf ⟨T.lv0.pr v c (w1 y), hinvf y⟩).1,
          memInv _ (zf _).2⟩ : ↥(Ld D u 0 (Nat.zero_le _) c2))) = y.1
        rw [T.lv0.pr_smul, e1, pr_congr T v c2 ⟨_, hm1⟩ ((k : 𝓞 D.host.E) • zl y) e2, T.lv0.pr_smul, hzl y,
          smul_smul, hmk, one_smul] }
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
    show (η2 (σ.symm (σ x))).1⁻¹ * κd.1 * (δ.1⁻¹ * (η x).1 * δ.1) ∈ T.cls0.lev.U
    rw [σ.symm_apply_apply]
    exact upSame_one T v a k hk δ hδ c c2 γd hγd κd hx _ _ (zf x).1 (zf x).2 m hmP (γ x) (γ2 x) (η x) (η2 x)
      (κ x) (κ2 x) (h1 x) (h2 x) (h3 x) (h4 x) (h5 x) (g1 x) (g2 x) (g3 x) (g4 x) (g5 x)

end SameDiaZero

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.UpSame =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DiamondSamePlaceMatchings =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DiamondSamePlaceMatchings", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.HeckeRamifiedZeroOfMatchingsAndDu\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.DnDiaSame0FHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.EqualDiagonalEntriesAll\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnramifiedSameDiagonal.UpSame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace SameDiaZero

theorem diamond_same_place_matchings : Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal.SameAll := by
  intro D u T
  refine ⟨?_, ?_, ?_⟩
  · apply upSame
  · apply dnDiaSame0F_holds
  · first
      | (apply eSame <;> assumption)

end SameDiaZero
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DiamondSamePlaceMatchings =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.HeckeRamifiedZeroAll =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.HeckeRamifiedZeroAll", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.LemmaBSecondBranchOfLength\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.MulLatticeOne\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DiamondSamePlaceMatchings\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.HeckeRamifiedZeroOfMatchingsAndDu\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.UnramifiedTrace

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0

theorem hecke_ramified_zero_all : ∀ (D : D7) (u : D.what₂.Word), HidaSetting D u → RT.ConcreteFormsLevelZero D u → HeckeRamifiedLevelZero D u :=
  Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal.hecke_ramified_zero_of_matchings_and_du SameDiaZero.diamond_same_place_matchings dUAll_holds

end Formalism.L2.GlobalTheoryTheory.UnramifiedTrace

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.HeckeRamifiedZeroAll =====
