module

public import Formalism.LocalToGlobal.CharacterGerms.RowTieValL
public import Formalism.LocalToGlobal.CharacterGerms.GeneralGermZero
public import Formalism.LocalToGlobal.CharacterGerms.UncurryLogConstantCoeff
public import Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsDef
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePKeyDef
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePStartSelf
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePKeyEig2
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePProjLieSelf
public import Formalism.LocalToGlobal.CharacterGerms.RowTieValK
public import Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsE
public import Formalism.LocalToGlobal.CharacterGerms.ValuationEqSelfOfUnitGerm
import Formalism.LocalToGlobal.CharacterGerms.AbstractGermZeroCondition
import Formalism.LocalToGlobal.CharacterGerms.CoeffSingleSubstOfLowDegree
import Formalism.LocalToGlobal.CharacterGerms.ConstMemTypeSetOfNonneg
import Formalism.LocalToGlobal.CharacterGerms.RowTieCartAdd
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.CharacterGerms.EndomorphismLimitIntegral
import Formalism.LocalToGlobal.CharacterGerms.RowTiePLSmallMain
import Formalism.LocalToGlobal.CharacterGerms.IntSProd
import Formalism.LocalToGlobal.CharacterGerms.LogCoordOfDpull
import Formalism.LocalToGlobal.CharacterGerms.SubstSubst
import Formalism.LocalToGlobal.CharacterGerms.TripleSubstSecondCoordinate
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.CharacterGerms.RowTieP_TCoord, Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsPack, Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsU, Formalism.SharpRestriction.GrowthBounds.ProofRowTieVals

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieP_TCoord =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.RowTieP_TCoord", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieValL\npublic import Formalism.LocalToGlobal.CharacterGerms.GeneralGermZero\nimport Formalism.LocalToGlobal.CharacterGerms.AbstractGermZeroCondition\nimport Formalism.LocalToGlobal.CharacterGerms.CoeffSingleSubstOfLowDegree\nimport Formalism.LocalToGlobal.CharacterGerms.ConstMemTypeSetOfNonneg\nimport Formalism.LocalToGlobal.CharacterGerms.RowTieCartAdd\npublic import Formalism.LocalToGlobal.CharacterGerms.UncurryLogConstantCoeff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds
namespace TCoord

open Formalism.IncomingBounds FormalGermZero GeneralGermZero

variable {C : Type} [Field C] {κ : Type} [Fintype κ]

theorem tcoord_abs {V : VF C} {d : ℕ} {I : Fin 2 → Type} [∀ g, Fintype (I g)] (X : RawChart C d I κ) (g : Fin 2)
    (w : κ → I g → C) (hwI : ∀ x c, V.Ge 0 (w x c))
    (hw : ∀ c c' : I g, ∑ x, X.u g c x * w x c' = if c = c' then 1 else 0)
    (tan : I g → I g → C) (hun : V.v (Matrix.of tan).det = 0)
    (P : κ → MvPowerSeries (I g) C) (hP0 : ∀ j, MvPowerSeries.constantCoeff (P j) = 0) (hPI : ∀ j, IntS V (P j))
    (hPlin : ∀ j c, MvPowerSeries.coeff (Finsupp.single c 1) (P j) = ∑ c', X.u g c' j * tan c c')
    (t : I g → MvPowerSeries (I g) C) (ht0 : ∀ c, MvPowerSeries.constantCoeff (t c) = 0)
    (hPt : ∀ j, MvPowerSeries.subst t (P j) =
      MvPowerSeries.subst (fun i => ∑ c', X.u g c' i • (MvPowerSeries.X c' : MvPowerSeries (I g) C)) (X.ex j))
    (c : I g) :
    ∃ T : MvPowerSeries κ C, IntS V T ∧ MvPowerSeries.constantCoeff T = 0 ∧
      MvPowerSeries.subst (fun x => X.expPt g x) T = upG g (t c) := by

  set E : κ → MvPowerSeries (I g) C := fun j =>
    MvPowerSeries.subst (fun i => ∑ c', X.u g c' i • (MvPowerSeries.X c' : MvPowerSeries (I g) C)) (X.ex j) with hE
  have hE0 : ∀ j, MvPowerSeries.constantCoeff (E j) = 0 := fun j => by
    rw [hE]; simp only; rw [← hPt j]; exact constantCoeff_subst_zero ht0 (hP0 j)
  have hlin0 : ∀ i : κ, MvPowerSeries.constantCoeff
      (∑ c', X.u g c' i • (MvPowerSeries.X c' : MvPowerSeries (I g) C)) = 0 := fun i => by

    rw [map_sum]
    exact Finset.sum_eq_zero fun c' _ => by
      rw [MvPowerSeries.constantCoeff_smul, MvPowerSeries.constantCoeff_X, smul_zero]
  have hXg : MvPowerSeries.HasSubst
      (fun x : I g => (MvPowerSeries.X (⟨g, x⟩ : WV I) : MvPowerSeries (WV I) C)) :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero fun x => MvPowerSeries.constantCoeff_X _
  have hupE : ∀ j, X.expPt g j = upG g (E j) := by
    intro j
    show _ = MvPowerSeries.subst (fun x : I g => (MvPowerSeries.X (⟨g, x⟩ : WV I) : MvPowerSeries (WV I) C)) (E j)
    rw [hE]
    simp only
    rw [MvPowerSeries.subst_comp_subst_apply (MvPowerSeries.hasSubst_of_constantCoeff_zero hlin0) hXg]
    unfold RawChart.expPt
    congr 1
    funext i

    rw [← MvPowerSeries.coe_substAlgHom hXg, map_sum]
    simp only [map_smul, MvPowerSeries.coe_substAlgHom hXg, MvPowerSeries.subst_X hXg]

  set φ : I g → MvPowerSeries (I g) C := fun k => ∑ j, w j k • P j with hφ
  set t₂ : I g → MvPowerSeries (I g) C := fun k => ∑ j, w j k • E j with ht₂
  have hφ0 : ∀ k, MvPowerSeries.constantCoeff (φ k) = 0 := fun k => by

    rw [hφ]; simp only; rw [map_sum]
    exact Finset.sum_eq_zero fun j _ => by rw [MvPowerSeries.constantCoeff_smul, hP0 j, smul_zero]
  have ht₂0 : ∀ k, MvPowerSeries.constantCoeff (t₂ k) = 0 := fun k => by

    rw [ht₂]; simp only; rw [map_sum]
    exact Finset.sum_eq_zero fun j _ => by rw [MvPowerSeries.constantCoeff_smul, hE0 j, smul_zero]
  have hφI : ∀ k, IntS V (φ k) := fun k μ => by

    rw [hφ]; simp only; rw [map_sum]
    exact VF.Ge.sum fun j _ => by rw [MvPowerSeries.coeff_smul]; exact (hwI j k).mul_int (hPI j μ)
  have hL : (Matrix.of fun k c : I g => MvPowerSeries.coeff (Finsupp.single c 1) (φ k)) = (Matrix.of tan).transpose := by
    ext k c
    rw [Matrix.transpose_apply, Matrix.of_apply, Matrix.of_apply, hφ]
    simp only

    rw [map_sum]
    simp only [MvPowerSeries.coeff_smul, hPlin]
    have e : ∑ j, w j k * ∑ c', X.u g c' j * tan c c' = ∑ c', tan c c' * ∑ j, X.u g c' j * w j k := by
      simp only [Finset.mul_sum]
      rw [Finset.sum_comm]
      exact Finset.sum_congr rfl fun c' _ => Finset.sum_congr rfl fun j _ => by ring
    rw [e]
    simp only [hw, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  have hts := MvPowerSeries.hasSubst_of_constantCoeff_zero ht0
  have ht₂s := MvPowerSeries.hasSubst_of_constantCoeff_zero ht₂0
  have heq : ∀ k, MvPowerSeries.subst t (φ k) = MvPowerSeries.subst t₂ (MvPowerSeries.X k : MvPowerSeries (I g) C) := by
    intro k
    rw [MvPowerSeries.subst_X ht₂s, hφ, ht₂]
    simp only

    rw [← MvPowerSeries.coe_substAlgHom hts, map_sum]
    simp only [map_smul, MvPowerSeries.coe_substAlgHom hts, hPt]
    rfl
  obtain ⟨h, hh0, hhI, hth⟩ := AbstractGermZero.one_group V t t₂ φ (fun k => MvPowerSeries.X k) ht₂0 ht0 hφ0 hφI
    (by rw [hL, Matrix.det_transpose]; exact hun) (fun k => MvPowerSeries.constantCoeff_X k) (fun k => intS_X k) heq

  set ℓ : I g → MvPowerSeries κ C := fun k => ∑ j, w j k • (MvPowerSeries.X j : MvPowerSeries κ C) with hℓ
  have hℓ0 : ∀ k, MvPowerSeries.constantCoeff (ℓ k) = 0 := fun k => by

    rw [hℓ]; simp only; rw [map_sum]
    exact Finset.sum_eq_zero fun j _ => by
      rw [MvPowerSeries.constantCoeff_smul, MvPowerSeries.constantCoeff_X, smul_zero]
  have hℓI : ∀ k, IntS V (ℓ k) := fun k μ => by

    rw [hℓ]; simp only; rw [map_sum]
    exact VF.Ge.sum fun j _ => by rw [MvPowerSeries.coeff_smul]; exact (hwI j k).mul_int (intS_X j μ)
  have hpt0 : ∀ x, MvPowerSeries.constantCoeff (X.expPt g x) = 0 := fun x => by
    rw [hupE x]
    exact constantCoeff_subst_zero (fun _ => MvPowerSeries.constantCoeff_X _) (hE0 x)
  have hpts := MvPowerSeries.hasSubst_of_constantCoeff_zero hpt0
  refine ⟨MvPowerSeries.subst ℓ (h c), IntS.subst hℓ0 hℓI (hhI c), constantCoeff_subst_zero hℓ0 (hh0 c), ?_⟩
  rw [MvPowerSeries.subst_comp_subst_apply (MvPowerSeries.hasSubst_of_constantCoeff_zero hℓ0) hpts, hth c]
  show _ = MvPowerSeries.subst (fun x : I g => (MvPowerSeries.X (⟨g, x⟩ : WV I) : MvPowerSeries (WV I) C))
    (MvPowerSeries.subst t₂ (h c))
  rw [MvPowerSeries.subst_comp_subst_apply ht₂s hXg]
  congr 1
  funext k
  rw [hℓ, ht₂]
  simp only

  rw [← MvPowerSeries.coe_substAlgHom hpts, map_sum, ← MvPowerSeries.coe_substAlgHom hXg, map_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [map_smul, map_smul, MvPowerSeries.coe_substAlgHom hpts, MvPowerSeries.subst_X hpts,
    MvPowerSeries.coe_substAlgHom hXg, hupE j]
  rfl

theorem tcoord_gen {V : VF C} {d : ℕ} {I : Fin 2 → Type} [∀ g, Fintype (I g)] (X : RawChart C d I κ)
    (F : κ → MvPowerSeries (Fin 2 × κ) C) (hF0 : ∀ k, MvPowerSeries.constantCoeff (F k) = 0)
    (hFI : ∀ k, IntS V (F k)) (hadd : LgAdd F X.lg)
    (hlin : ∀ k (μ : κ →₀ ℕ), μ.degree ≤ 1 →
      MvPowerSeries.coeff μ (X.lg k) = MvPowerSeries.coeff μ (MvPowerSeries.X k))
    (hexlg : ∀ k, MvPowerSeries.subst X.lg (X.ex k) = (MvPowerSeries.X k : MvPowerSeries κ C))
    (hsat : ∀ g, ∃ w : κ → I g → C, (∀ x c, V.Ge 0 (w x c)) ∧
      ∀ c c' : I g, ∑ x, X.u g c x * w x c' = if c = c' then 1 else 0)
    (H : ∀ g, X.CartHyp V g) : RawChart.TCoordSt H := by
  intro S t ht g c
  obtain ⟨w, hwI, hw⟩ := hsat g
  obtain ⟨P, hP0, hPI, hPlin, hPt⟩ := sysK_P X F hF0 hFI hadd hlin hexlg (H g) (S g)
  exact tcoord_abs X g w hwI hw (S g).tan (S g).unimod P hP0 hPI hPlin (t g) (ht g).1 (hPt (t g) (ht g)) c

end TCoord

def TCoordSelfSt : Prop := AllSelf fun _ _ V _ _ _ _ X => ∀ Hc : ∀ g, X.CartHyp V g, RawChart.TCoordSt Hc

theorem tcoordSelf_holds : TCoordSelfSt := by
  unfold TCoordSelfSt AllSelf
  intro C _ _ V O _ _ dd Y d _ I0 _ p H
  exact TCoord.tcoord_gen (Y.rawSelf p) (SelfConjugateGermZero.lawS Y) (SelfConjugateGermZero.lawS_const Y) (SelfConjugateGermZero.lawS_int Y) (SelfConjugateGermZero.lgS_add Y p)
    (SelfConjugateGermZero.lgS_lin Y p) (SelfConjugateGermZero.exS_lg Y p) (SelfConjugateGermZero.sat_self Y p) H

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieP_TCoord =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsPack =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsPack", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsDef\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePKeyDef\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePStartSelf\nimport Formalism.LocalToGlobal.CharacterGerms.EndomorphismLimitIntegral\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePKeyEig2\nimport Formalism.LocalToGlobal.CharacterGerms.RowTiePLSmallMain\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePProjLieSelf\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieValK\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

open Formalism.IncomingBounds ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ RowTiePE0 RowTiePProj

namespace GmPackP

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd d : ℕ}

theorem half [NeZero d] (hLie : ProjLieSelfSt) (Y : FBChart C V O dd) {I0 : Type} [Fintype I0] (p : SelfData Y d I0) (ε : O)
    (hε : ∃ y, ε * ε - ε = (V.l : O) * y) (hε1 : ∀ a, V.MM (p.em a ε - 1))
    (hεx : ∀ x : O, (∀ a, V.MM (p.em a x)) → ∃ y, ε * x = (V.l : O) * y) (M : ℕ → O) (φ : Pt C 1 dd)
    (hT : ∀ i, TendsS V (fun n => Y.B.A.act (M n * ε ^ V.l ^ n) i) (φ i)) :
    (∀ a, comp1 φ (Y.B.A.act a) = comp1 (Y.B.A.act a) φ) ∧
      ∀ v : Fin dd → C, ∃ b : I0 → C, linAct φ v = ∑ c, b c • p.e c := by
  have hφ0 : ∀ i, MvPowerSeries.constantCoeff (φ i) = 0 := const_of_lim Y hT
  have act0 : ∀ x i, MvPowerSeries.constantCoeff (Y.B.A.act x i) = 0 := Y.B.A.const
  refine ⟨?_, ?_⟩
  · intro a
    funext i
    have L := TendsS.comp1 (φ := fun n => Y.B.A.act (M n * ε ^ V.l ^ n)) (b := fun _ => Y.B.A.act a)
      (fun _ => act0 a) (act0 a) hT (fun _ => TendsS.const _) i
    have R := TendsS.comp1 (φ := fun _ => Y.B.A.act a) (b := fun n => Y.B.A.act (M n * ε ^ V.l ^ n))
      (fun n => act0 _) hφ0 (fun _ => TendsS.const _) hT i
    have eq : (fun n => comp1 (Y.B.A.act (M n * ε ^ V.l ^ n)) (Y.B.A.act a) i) =
        fun n => comp1 (Y.B.A.act a) (Y.B.A.act (M n * ε ^ V.l ^ n)) i := funext fun n => by
      rw [← Y.B.A.mul_act, ← Y.B.A.mul_act, mul_comm]
    rw [eq] at L
    exact L.unique R
  · obtain ⟨E, -, -, -, hET⟩ := StartSelf.lim_endo Y p.em p.em_int p.hd p.em_conj ε hε hεx (fun _ => 1)
      (fun N a => by rw [sub_self, map_zero]; exact VF.Ge.zero _)
    have hElim : ∀ (N : ℕ) i μ, ∃ n0 : ℕ, ∀ n ≥ n0,
        V.Ge N (MvPowerSeries.coeff μ (E i) - MvPowerSeries.coeff μ (Y.B.A.act (ε ^ V.l ^ n) i)) := by
      intro N i μ
      obtain ⟨n0, h⟩ := hET i μ N
      exact ⟨n0, fun n hn => by simpa only [one_mul] using h n hn⟩
    have hEspan := hLie C V O dd Y d I0 p ε hε hε1 hεx E hElim
    have hEφ : comp1 E φ = φ := by
      funext i
      have L := TendsS.comp1 (φ := fun n => Y.B.A.act (1 * ε ^ V.l ^ n)) (b := fun n => Y.B.A.act (M n * ε ^ V.l ^ n))
        (fun n => act0 _) hφ0 hET hT i
      have hdiv : ∀ n, ((V.l : O) ^ (n + 1)) ∣ (1 * ε ^ V.l ^ n) * (M n * ε ^ V.l ^ n) - M n * ε ^ V.l ^ n := by
        intro n
        have e1 : (1 * ε ^ V.l ^ n) * (M n * ε ^ V.l ^ n) - M n * ε ^ V.l ^ n =
            M n * (ε ^ V.l ^ n * ε ^ V.l ^ n - ε ^ V.l ^ n) := by ring
        rw [e1]
        exact dvd_mul_of_dvd_right (sq_cong hε n) _
      have R := tendsS_of_small RowTiePLSmall.lSmall_holds Y
        (x := fun n => (1 * ε ^ V.l ^ n) * (M n * ε ^ V.l ^ n)) (x' := fun n => M n * ε ^ V.l ^ n) hdiv hT i
      have eq : (fun n => comp1 (Y.B.A.act (1 * ε ^ V.l ^ n)) (Y.B.A.act (M n * ε ^ V.l ^ n)) i) =
          fun n => Y.B.A.act ((1 * ε ^ V.l ^ n) * (M n * ε ^ V.l ^ n)) i := funext fun n => by
        rw [Y.B.A.mul_act (1 * ε ^ V.l ^ n) (M n * ε ^ V.l ^ n)]
      rw [eq] at L
      exact L.unique R
    intro v
    obtain ⟨b, hb⟩ := hEspan (linAct φ v)
    exact ⟨b, by rw [← hb, ← VP.linAct_comp1 E φ hφ0, hEφ]⟩

theorem one_entry [NeZero d] (hLie : ProjLieSelfSt) (Y : FBChart C V O dd) {I0 : Type} [Fintype I0] (p : SelfData Y d I0)
    (M : ℕ → O) (t : ZMod d → C) (hMt : ∀ (N : ℕ) a, V.Ge ((N + 1 : ℕ) : ℝ) (t a - p.em a (M N))) :
    ∃ γ γ' : Pt C 1 dd, IsEndo Y γ ∧ IsEndo Y γ' ∧
      (∀ a, comp1 γ (Y.B.A.act a) = comp1 (Y.B.A.act a) γ) ∧
      (∀ a, comp1 γ' (Y.B.A.act a) = comp1 (Y.B.A.act a) γ') ∧
      (∀ c, linAct γ (p.e c) = t (p.ty0 c) • p.e c) ∧
      (∀ c, linAct γ' (p.e c) = t (p.ty0 c + p.hd) • p.e c) ∧
      (∀ v : Fin dd → C, ∃ b : I0 → C, linAct γ v = ∑ c, b c • p.e c) ∧
      (∀ v : Fin dd → C, ∃ b : I0 → C, linAct γ' v = ∑ c, b c • p.e c) ∧
      IntS V (FB.expS C (ev (n := 2) ![comp1 γ (pt C dd 0), pt C dd 1] Y.h -
        ev (n := 2) ![pt C dd 0, comp1 γ' (pt C dd 1)] Y.h)) := by
  obtain ⟨ε, hε, hε1, hεx⟩ := p.em_unr
  have hM : ∀ (N : ℕ) a, V.Ge ((N + 1 : ℕ) : ℝ) (p.em a (M (N + 1) - M N)) := by
    intro N a
    have e2 : p.em a (M (N + 1) - M N) = (t a - p.em a (M N)) - (t a - p.em a (M (N + 1))) := by
      rw [map_sub]; ring
    rw [e2]
    exact (hMt N a).sub ((hMt (N + 1) a).mono (by push_cast; linarith))
  have ht : ∀ a, Tends V (fun n => p.em a (M n)) (t a) := fun a =>
    tends_of_nat fun N => ⟨N, fun n hn => (hMt n a).mono (by
      have : (N : ℝ) ≤ n := by exact_mod_cast hn
      push_cast; linarith)⟩
  have hεs := star_rel hε
  have hεs1 : ∀ a, V.MM (p.em a (star ε) - 1) := fun a => by rw [p.em_conj]; exact hε1 _
  have hεsx : ∀ x : O, (∀ a, V.MM (p.em a x)) → ∃ y, star ε * x = (V.l : O) * y := by
    intro x hx
    obtain ⟨y, hy⟩ := hεx (star x) fun a => by rw [p.em_conj]; exact hx (a + p.hd)
    refine ⟨star y, ?_⟩
    have h := congrArg star hy
    simp only [star_mul, star_star, star_natCast] at h
    rw [mul_comm, h, mul_comm]
  have hMs : ∀ (N : ℕ) a, V.Ge ((N + 1 : ℕ) : ℝ) (p.em a (star (M (N + 1)) - star (M N))) := fun N a => by
    rw [← star_sub, p.em_conj]; exact hM N (a + p.hd)
  have cvA := StartSelf.actCv_of Y p.em ε hε (fun a => p.em_int a ε) hεx M hM
  have cvB := StartSelf.actCv_of Y p.em (star ε) hεs (fun a => p.em_int a _) hεsx (fun N => star (M N)) hMs
  have sA : (fun n => star (M n * ε ^ V.l ^ n)) = fun n => star (M n) * star ε ^ V.l ^ n :=
    funext fun n => by rw [star_mul', star_pow]
  have sB : (fun n => star (star (M n) * star ε ^ V.l ^ n)) = fun n => M n * ε ^ V.l ^ n :=
    funext fun n => by rw [star_mul', star_pow, star_star, star_star]
  obtain ⟨γ, γb, hγI, -, hγl, hγbl, hhom, hexp⟩ := endomorphism_limit_integral Y (fun n => M n * ε ^ V.l ^ n) cvA (by rw [sA]; exact cvB)
  obtain ⟨γ2, -, hγ2I, -, hγ2l, -, hhom2, -⟩ := endomorphism_limit_integral Y (fun n => star (M n) * star ε ^ V.l ^ n) cvB
    (by rw [sB]; exact cvA)
  have hT : ∀ i, TendsS V (fun n => Y.B.A.act (M n * ε ^ V.l ^ n) i) (γ i) := tends_of_endomorphism_limit Y hγl
  have hTb : ∀ i, TendsS V (fun n => Y.B.A.act (star (M n) * star ε ^ V.l ^ n) i) (γb i) := by
    have h := tends_of_endomorphism_limit Y hγbl
    simpa only [star_mul', star_pow] using h
  have hT2 : ∀ i, TendsS V (fun n => Y.B.A.act (star (M n) * star ε ^ V.l ^ n) i) (γ2 i) := tends_of_endomorphism_limit Y hγ2l
  have heq : γ2 = γb := funext fun i => (hT2 i).unique (hTb i)
  subst heq
  obtain ⟨hc, hi⟩ := half hLie Y p ε hε hε1 hεx M γ hT
  obtain ⟨hc', hi'⟩ := half hLie Y p (star ε) hεs hεs1 hεsx (fun N => star (M N)) γ2 hT2
  refine ⟨γ, γ2, ⟨hγI, const_of_lim Y hT, hhom⟩, ⟨hγ2I, const_of_lim Y hT2, hhom2⟩, hc, hc', ?_, ?_, hi, hi', hexp⟩
  · exact fun c => StartSelf.lin_of_lim Y p M ε hε1 t ht γ hT c
  · exact fun c => StartSelf.lin_of_lim Y p (fun N => star (M N)) (star ε) hεs1 (fun a => t (a + p.hd))
      (fun a => by simp only [p.em_conj]; exact ht (a + p.hd)) γ2 hT2 c

end GmPackP

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd d : ℕ}

theorem gmPack_of_lie [NeZero d] (hLie : ProjLieSelfSt) (Y : FBChart C V O dd) {I0 : Type} [Fintype I0]
    (p : SelfData Y d I0) : GmPackSt Y p := by
  choose Mm hMm using fun N : ℕ => p.gm_lim (N + 1)
  have h := fun r s : Fin 2 => GmPackP.one_entry hLie Y p (fun N => Mm N r s) (fun a => p.gm a r s)
    (fun N a => hMm N a r s)
  choose γ γ' h1 h2 h3 h4 h5 h6 h7 h8 h9 using h
  exact ⟨γ, γ', ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9⟩⟩

theorem gmPack_of [NeZero d] (hE : RowTiePKey.KeyEigSt) (Y : FBChart C V O dd) {I0 : Type} [Fintype I0]
    (p : SelfData Y d I0) : GmPackSt Y p := gmPack_of_lie (projLieSelf_of hE) Y p

theorem gmPack_holds [NeZero d] (Y : FBChart C V O dd) {I0 : Type} [Fintype I0] (p : SelfData Y d I0) :
    GmPackSt Y p := gmPack_of RowTiePKey.keyEig_holds Y p

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsPack =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsU =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsU", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsE\nimport Formalism.LocalToGlobal.CharacterGerms.IntSProd\nimport Formalism.LocalToGlobal.CharacterGerms.LogCoordOfDpull\nimport Formalism.LocalToGlobal.CharacterGerms.SubstSubst\nimport Formalism.LocalToGlobal.CharacterGerms.TripleSubstSecondCoordinate\npublic import Formalism.LocalToGlobal.CharacterGerms.ValuationEqSelfOfUnitGerm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

open Formalism.IncomingBounds ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ Formalism.L2.Pj

namespace VS

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ} {d : ℕ} [NeZero d]
  {Orb : Type} [Fintype Orb] {I0 : Orb → Type} [∀ o, Fintype (I0 o)]

theorem exp_sum {σ ι : Type} (s : Finset ι) {f : ι → MvPowerSeries σ C}
    (h : ∀ i ∈ s, MvPowerSeries.constantCoeff (f i) = 0) : mvExp (∑ i ∈ s, f i) = ∏ i ∈ s, mvExp (f i) := by
  classical
  revert h
  refine Finset.induction_on s ?_ ?_
  · intro _
    simp only [Finset.sum_empty, Finset.prod_empty]
    ext m
    rw [MvPowerSeries.coeff_one]
    change ∑ k ∈ Finset.range (m.degree + 1),
      MvPowerSeries.coeff m ((0 : MvPowerSeries σ C) ^ k) / (k.factorial : C) = _
    rw [Finset.sum_range_succ']
    simp [MvPowerSeries.coeff_one]
  · intro a t ha ih h
    have ht : ∀ i ∈ t, MvPowerSeries.constantCoeff (f i) = 0 := fun i hi => h i (Finset.mem_insert_of_mem hi)
    rw [Finset.sum_insert ha, Finset.prod_insert ha, VP.exp_add (h a (Finset.mem_insert_self a t)), ih ht]

    rw [map_sum]
    exact Finset.sum_eq_zero ht

variable (Y : FBChart C V O dd) (p : ∀ o, SelfData Y d (I0 o))

theorem HK_zeroR (κ : WVO (IS I0) → C) : HK Y p κ 0 = 0 := by
  show VP.hAt Y (EK Y p κ) (EK Y p 0) = 0
  rw [EK_zero]
  exact VP.hAt_zero_right (Y := Y) (cc_EK Y p κ)

theorem HK_zeroL (κ : WVO (IS I0) → C) : HK Y p 0 κ = 0 := by
  show VP.hAt Y (EK Y p 0) (EK Y p κ) = 0
  rw [EK_zero]
  exact VP.hAt_zero_left (Y := Y) (cc_EK Y p κ)

theorem HK_addL {κ₁ κ₂ κ' : WVO (IS I0) → C} (h₁ : GK Y p κ₁) (h₂ : GK Y p κ₂) (h' : GK Y p κ') :
    Cg V (AA Y p) (HK Y p (κ₁ + κ₂) κ') (HK Y p κ₁ κ' + HK Y p κ₂ κ') := by
  have e := gauge_congr_additive_left (Y := Y) (cc_AA Y p) h₁ h₂ h'
  rw [EK_add] at e
  exact e

theorem HK_addR {κ κ₁ κ₂ : WVO (IS I0) → C} (h : GK Y p κ) (h₁ : GK Y p κ₁) (h₂ : GK Y p κ₂) :
    Cg V (AA Y p) (HK Y p κ (κ₁ + κ₂)) (HK Y p κ κ₁ + HK Y p κ κ₂) := by
  have e := gauge_congr_additive_right (Y := Y) (cc_AA Y p) h h₁ h₂
  rw [EK_add] at e
  exact e

theorem HK_sumL {ι : Type} (s : Finset ι) {κ : ι → WVO (IS I0) → C} (h : ∀ i ∈ s, GK Y p (κ i))
    {κ' : WVO (IS I0) → C} (h' : GK Y p κ') :
    Cg V (AA Y p) (HK Y p (∑ i ∈ s, κ i) κ') (∑ i ∈ s, HK Y p (κ i) κ') := by
  classical
  have hG : ∀ t : Finset ι, (∀ i ∈ t, GK Y p (κ i)) → GK Y p (∑ i ∈ t, κ i) := by
    intro t
    refine Finset.induction_on t ?_ ?_
    · intro _
      show GImg V (AA Y p) (EK Y p (∑ i ∈ (∅ : Finset ι), κ i))
      rw [Finset.sum_empty, EK_zero]
      exact GImg.zero (cc_AA Y p)
    · intro a t ha ih ht
      show GImg V (AA Y p) (EK Y p (∑ i ∈ insert a t, κ i))
      rw [Finset.sum_insert ha, ← EK_add]
      exact GImg.add (Y := Y) (cc_AA Y p) (ht a (Finset.mem_insert_self a t))
        (ih fun i hi => ht i (Finset.mem_insert_of_mem hi))
  revert h
  refine Finset.induction_on s ?_ ?_
  · intro _
    simp only [Finset.sum_empty]
    rw [HK_zeroL]
    exact Cg.refl (cc_AA Y p) (map_zero _)
  · intro a t ha ih h
    have ht : ∀ i ∈ t, GK Y p (κ i) := fun i hi => h i (Finset.mem_insert_of_mem hi)
    rw [Finset.sum_insert ha, Finset.sum_insert ha]
    exact Cg.trans (cc_AA Y p) (HK_addL Y p (h a (Finset.mem_insert_self a t)) (hG t ht) h')
      (Cg.add (cc_AA Y p) (Cg.refl (cc_AA Y p) (cc_HK Y p _ _)) (ih ht))

theorem HK_sumR {ι : Type} (s : Finset ι) {κ : ι → WVO (IS I0) → C} (h : ∀ i ∈ s, GK Y p (κ i))
    {κ' : WVO (IS I0) → C} (h' : GK Y p κ') :
    Cg V (AA Y p) (HK Y p κ' (∑ i ∈ s, κ i)) (∑ i ∈ s, HK Y p κ' (κ i)) := by
  classical
  have hG : ∀ t : Finset ι, (∀ i ∈ t, GK Y p (κ i)) → GK Y p (∑ i ∈ t, κ i) := by
    intro t
    refine Finset.induction_on t ?_ ?_
    · intro _
      show GImg V (AA Y p) (EK Y p (∑ i ∈ (∅ : Finset ι), κ i))
      rw [Finset.sum_empty, EK_zero]
      exact GImg.zero (cc_AA Y p)
    · intro a t ha ih ht
      show GImg V (AA Y p) (EK Y p (∑ i ∈ insert a t, κ i))
      rw [Finset.sum_insert ha, ← EK_add]
      exact GImg.add (Y := Y) (cc_AA Y p) (ht a (Finset.mem_insert_self a t))
        (ih fun i hi => ht i (Finset.mem_insert_of_mem hi))
  revert h
  refine Finset.induction_on s ?_ ?_
  · intro _
    simp only [Finset.sum_empty]
    rw [HK_zeroR]
    exact Cg.refl (cc_AA Y p) (map_zero _)
  · intro a t ha ih h
    have ht : ∀ i ∈ t, GK Y p (κ i) := fun i hi => h i (Finset.mem_insert_of_mem hi)
    rw [Finset.sum_insert ha, Finset.sum_insert ha]
    exact Cg.trans (cc_AA Y p) (HK_addR Y p h' (h a (Finset.mem_insert_self a t)) (hG t ht))
      (Cg.add (cc_AA Y p) (Cg.refl (cc_AA Y p) (cc_HK Y p _ _)) (ih ht))

theorem HK_sy {κ κ' : WVO (IS I0) → C} (h : GK Y p κ) (h' : GK Y p κ') :
    Cg V (AA Y p) (HK Y p κ' κ) (HK Y p κ κ') :=
  cg_sy (Y := Y) (cc_AA Y p) h h'

theorem HK_ad (x : O) {κ κ' : WVO (IS I0) → C} (h : GK Y p κ) (h' : GK Y p κ') :
    Cg V (AA Y p) (HK Y p (lamAct Y p x * κ) κ') (HK Y p κ (lamAct Y p (star x) * κ')) := by
  have e := cg_ad (Y := Y) (cc_AA Y p) x h h'
  simp only [EK_act] at e
  exact e

theorem lamAct_tr : lamAct Y p Y.w0 + lamAct Y p (star Y.w0) = 1 := by
  funext w
  simp only [Pi.add_apply, Pi.one_apply, lamAct]
  rw [← map_add (f := _), Y.halfIntegralGenerator_add_conj_eq_one, map_one]

theorem HK_pair {a b : WVO (IS I0) → C} (ha : GK Y p a) (hb : GK Y p b) :
    Cg V (AA Y p) (HK Y p a (lamAct Y p Y.w0 * b) + HK Y p b (lamAct Y p Y.w0 * a)) (HK Y p a b) := by
  have hA := cc_AA Y p
  have e1 : Cg V (AA Y p) (HK Y p b (lamAct Y p Y.w0 * a)) (HK Y p a (lamAct Y p (star Y.w0) * b)) :=
    Cg.trans hA (HK_sy Y p (GK.act Y p Y.w0 ha) hb) (HK_ad Y p Y.w0 ha hb)
  have e3 := HK_addR Y p ha (GK.act Y p Y.w0 hb) (GK.act Y p (star Y.w0) hb)
  have e4 : lamAct Y p Y.w0 * b + lamAct Y p (star Y.w0) * b = b := by
    rw [← add_mul, lamAct_tr, one_mul]
  rw [e4] at e3
  exact Cg.trans hA (Cg.add hA (Cg.refl hA (cc_HK Y p _ _)) e1) (Cg.symm hA e3)

section Pack

variable {Y p} {γ γ' : Orb → Fin 2 → Fin 2 → Pt C 1 dd} (hs : SelfSep Y p) (hG : ∀ o, GmPack Y (p o) (γ o) (γ' o))

include hs hG

theorem HK_adj (o : Orb) (r s : Fin 2) {κ κ' : WVO (IS I0) → C} (h : GK Y p κ) (h' : GK Y p κ') :
    Cg V (AA Y p) (HK Y p (lamG Y p o r s * κ) κ') (HK Y p κ (lamG' Y p o r s * κ')) := by
  have hA := cc_AA Y p
  have e := cg_adj (Y := Y) hA ((hG o).endo r s).cc ((hG o).endo' r s).cc ((hG o).adj r s) h h'
  rw [EK_map Y p ((hG o).endo r s) (diagG hs hG o r s) κ,
    EK_map Y p ((hG o).endo' r s) (diagG' hs hG o r s) κ'] at e
  exact e

theorem HK_key (o o' : Orb) (g g' : Fin 2) {κ κ' : WVO (IS I0) → C} (h : GK Y p κ) (h' : GK Y p κ') :
    Cg V (AA Y p) (∑ col, HK Y p (lamG Y p o col g * κ) (lamG Y p o' col g' * κ'))
      (HK Y p κ (∑ col, lamG' Y p o col g * (lamG Y p o' col g' * κ'))) := by
  have hA := cc_AA Y p
  refine Cg.trans hA (Cg.sum hA Finset.univ fun col _ =>
    HK_adj hs hG o col g h (GK.mulG hs hG o' col g' h')) ?_
  exact Cg.symm hA (HK_sumR Y p Finset.univ
    (fun col _ => GK.mulG' hs hG o col g (GK.mulG hs hG o' col g' h')) h)

theorem HK_gram (o o' : Orb) (g g' : Fin 2) {μ : WVO (IS I0) → C} (hμ : GK Y p (μ * ind (o', g'))) :
    Cg V (AA Y p) (∑ col, HK Y p (lamG Y p o col g * ind (o, g)) (lamG Y p o' col g' * (μ * ind (o', g'))))
      (HK Y p (ind (o, g)) (if (o', g') = (o, 1 - g) then μ * ind (o', g') else 0)) := by
  have e := HK_key hs hG o o' g g' (GK_ind hs hG (o, g)) hμ
  rw [gram_eq] at e
  exact e

theorem main_cg :
    Cg V (AA Y p) (∑ col, HK Y p (kCol Y p col) (lamAct Y p Y.w0 * kCol Y p col))
      (∑ o, ∑ col, HK Y p (lamG Y p o col 0 * ind (o, 0)) (lamG Y p o col 1 * ind (o, 1))) := by
  classical
  have hA := cc_AA Y p
  have ha : ∀ (col : Fin 2) (s : Orb × Fin 2), GK Y p (lamG Y p s.1 col s.2 * ind s) :=
    fun col s => GK.mulG hs hG s.1 col s.2 (GK_ind hs hG s)
  have e1 : ∀ col : Fin 2, Cg V (AA Y p) (HK Y p (kCol Y p col) (lamAct Y p Y.w0 * kCol Y p col))
      (∑ s : Orb × Fin 2, ∑ t : Orb × Fin 2, HK Y p (lamG Y p s.1 col s.2 * ind s)
        (lamG Y p t.1 col t.2 * (lamAct Y p Y.w0 * ind t))) := by
    intro col
    have hK : GK Y p (lamAct Y p Y.w0 * kCol Y p col) := GK.act Y p Y.w0 (GK_col Y p col)
    have hsum := HK_sumL Y p Finset.univ (κ := fun s : Orb × Fin 2 => lamG Y p s.1 col s.2 * ind s)
      (fun s _ => ha col s) hK
    beta_reduce at hsum
    rw [← kCol_eq] at hsum
    refine Cg.trans hA hsum (Cg.sum hA Finset.univ fun s _ => ?_)
    have hR := HK_sumR Y p Finset.univ
      (κ := fun t : Orb × Fin 2 => lamG Y p t.1 col t.2 * (lamAct Y p Y.w0 * ind t))
      (fun t _ => GK.mulG hs hG t.1 col t.2 (GK.act Y p Y.w0 (GK_ind hs hG t))) (ha col s)
    beta_reduce at hR
    have hE : (∑ t : Orb × Fin 2, lamG Y p t.1 col t.2 * (lamAct Y p Y.w0 * ind t)) =
        lamAct Y p Y.w0 * kCol Y p col := by
      rw [kCol_eq, Finset.mul_sum]
      exact Finset.sum_congr rfl fun t _ => by ring
    rw [hE] at hR
    exact hR
  have e2 : Cg V (AA Y p) (∑ col : Fin 2, HK Y p (kCol Y p col) (lamAct Y p Y.w0 * kCol Y p col))
      (∑ s : Orb × Fin 2, ∑ t : Orb × Fin 2,
        HK Y p (ind s) (if t = (s.1, 1 - s.2) then lamAct Y p Y.w0 * ind t else 0)) := by
    refine Cg.trans hA (Cg.sum hA Finset.univ fun col _ => e1 col) ?_
    rw [Finset.sum_comm]
    refine Cg.sum hA Finset.univ fun s _ => ?_
    rw [Finset.sum_comm]
    exact Cg.sum hA Finset.univ fun t _ =>
      HK_gram hs hG s.1 t.1 s.2 t.2 (GK.act Y p Y.w0 (GK_ind hs hG t))
  have e3 : ∀ s : Orb × Fin 2, (∑ t : Orb × Fin 2,
      HK Y p (ind s) (if t = (s.1, 1 - s.2) then lamAct Y p Y.w0 * ind t else 0)) =
      HK Y p (ind s) (lamAct Y p Y.w0 * ind (s.1, 1 - s.2)) := by
    intro s
    simp only [apply_ite (HK Y p (ind s)), HK_zeroR, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  have e4 : (∑ s : Orb × Fin 2, HK Y p (ind s) (lamAct Y p Y.w0 * ind (s.1, 1 - s.2))) =
      ∑ o : Orb, (HK Y p (ind (o, 0)) (lamAct Y p Y.w0 * ind (o, 1)) +
        HK Y p (ind (o, 1)) (lamAct Y p Y.w0 * ind (o, 0))) := by
    rw [Fintype.sum_prod_type]
    refine Finset.sum_congr rfl fun o _ => ?_
    rw [Fin.sum_univ_two]
    simp
  have e5 : Cg V (AA Y p) (∑ o : Orb, (HK Y p (ind (o, 0)) (lamAct Y p Y.w0 * ind (o, 1)) +
      HK Y p (ind (o, 1)) (lamAct Y p Y.w0 * ind (o, 0)))) (∑ o : Orb, HK Y p (ind (o, 0)) (ind (o, 1))) :=
    Cg.sum hA Finset.univ fun o _ => HK_pair Y p (GK_ind hs hG (o, 0)) (GK_ind hs hG (o, 1))
  have e6 : Cg V (AA Y p)
      (∑ o, ∑ col, HK Y p (lamG Y p o col 0 * ind (o, 0)) (lamG Y p o col 1 * ind (o, 1)))
      (∑ o : Orb, HK Y p (ind (o, 0)) (ind (o, 1))) := by
    refine Cg.sum hA Finset.univ fun o _ => ?_
    have hμ : GK Y p (1 * ind (o, 1)) := by rw [one_mul]; exact GK_ind hs hG (o, 1)
    have e := HK_gram hs hG o o 0 1 hμ
    have hc : ((o, (1 : Fin 2)) = (o, 1 - 0)) := by simp
    rw [if_pos hc] at e
    simp only [one_mul] at e
    exact e
  have e23 := e2
  simp only [e3] at e23
  rw [e4] at e23
  exact Cg.trans hA e23 (Cg.trans hA e5 (Cg.symm hA e6))

end Pack

theorem pullback_exp_column (col : Fin 2) :
    pull2 Y p (ev (n := 2) ![pt C dd col] (FB.expS C ((Y.k : C) • Y.B.hL C Y.h Y.w0))) =
      mvExp ((Y.k : C) • HK Y p (kCol Y p col) (lamAct Y p Y.w0 * kCol Y p col)) := by
  have hAA0 : ∀ q : Fin 2 × Fin dd, MvPowerSeries.constantCoeff (VP.linPt Y (uS Y p) q) = 0 :=
    fun q => cc_AA Y p q
  have hAA : MvPowerSeries.HasSubst (VP.linPt Y (uS Y p)) := by
    first
      | exact MvPowerSeries.hasSubst_of_constantCoeff_zero hAA0
  have hb0 : ∀ q : Fin 1 × Fin dd, MvPowerSeries.constantCoeff (AA Y p (col, q.2)) = 0 :=
    fun q => cc_AA Y p _
  have hb : MvPowerSeries.HasSubst (fun q : Fin 1 × Fin dd => AA Y p (col, q.2)) := by
    first
      | exact MvPowerSeries.hasSubst_of_constantCoeff_zero hb0
  have hpc0 : ∀ q : Fin 1 × Fin dd,
      MvPowerSeries.constantCoeff ((![pt C dd col] : Fin 1 → Pt C 2 dd) q.1 q.2) = 0 := by
    rintro ⟨j, i⟩
    fin_cases j
    exact MvPowerSeries.constantCoeff_X _
  have hpc : MvPowerSeries.HasSubst
      (fun q : Fin 1 × Fin dd => (![pt C dd col] : Fin 1 → Pt C 2 dd) q.1 q.2) := by
    first
      | exact MvPowerSeries.hasSubst_of_constantCoeff_zero hpc0
  have hp00 : ∀ q : Fin 1 × Fin dd,
      MvPowerSeries.constantCoeff ((![pt C dd 0] : Fin 1 → Pt C 1 dd) q.1 q.2) = 0 := by
    rintro ⟨j, i⟩
    fin_cases j
    exact MvPowerSeries.constantCoeff_X _
  have hp0 : MvPowerSeries.HasSubst
      (fun q : Fin 1 × Fin dd => (![pt C dd 0] : Fin 1 → Pt C 1 dd) q.1 q.2) := by
    first
      | exact MvPowerSeries.hasSubst_of_constantCoeff_zero hp00
  have hbX : ∀ i : Fin dd, MvPowerSeries.subst (fun q : Fin 1 × Fin dd => AA Y p (col, q.2))
      (MvPowerSeries.X ((0 : Fin 1), i) : MvPowerSeries (Fin 1 × Fin dd) C) = EK Y p (kCol Y p col) i := by
    intro i
    rw [MvPowerSeries.subst_X hb]
    exact AA_eq Y p col i
  have hF : MvPowerSeries.constantCoeff ((Y.k : C) • Y.B.hL C Y.h Y.w0) = 0 := by
    rw [MvPowerSeries.smul_eq_C_mul, map_mul, VP.cc_hL, mul_zero]
  have s1 : pull2 Y p (ev (n := 2) ![pt C dd col] (FB.expS C ((Y.k : C) • Y.B.hL C Y.h Y.w0))) =
      MvPowerSeries.subst (fun q : Fin 1 × Fin dd => AA Y p (col, q.2))
        (FB.expS C ((Y.k : C) • Y.B.hL C Y.h Y.w0)) := by
    unfold pull2 VP.linPull ev
    rw [MvPowerSeries.subst_comp_subst_apply hpc hAA]
    congr 1
    funext q
    rcases q with ⟨j, i⟩
    fin_cases j
    show MvPowerSeries.subst (VP.linPt Y (uS Y p)) (MvPowerSeries.X (col, i)) = _
    rw [MvPowerSeries.subst_X hAA]
    rfl
  rw [s1, VP.expS_eq _ hF, VP.subst_exp hb0 hF]
  congr 1
  rw [← MvPowerSeries.coe_substAlgHom hb, map_smul, MvPowerSeries.coe_substAlgHom]
  congr 1
  unfold FB.hL
  rw [VP.eval_two_points_eq_subst _ _ _]
  change MvPowerSeries.subst _ (VP.hAt Y (pt C dd 0) (comp1 (Y.B.actK C Y.w0) (pt C dd 0))) = _
  rw [VP.hAt_subst (u := pt C dd 0) (v := comp1 (Y.B.actK C Y.w0) (pt C dd 0)) (hA := hb0)
    (hu := fun i => by exact MvPowerSeries.constantCoeff_X _) (hv := fun i => by
    show MvPowerSeries.constantCoeff (MvPowerSeries.subst
      (fun q : Fin 1 × Fin dd => (![pt C dd 0] : Fin 1 → Pt C 1 dd) q.1 q.2) (Y.B.A.act Y.w0 i)) = 0
    rw [VP.cc_subst_eq hp00]
    exact (isEndo_act Y Y.w0).cc i)]
  show VP.hAt Y _ _ = VP.hAt Y (EK Y p (kCol Y p col)) (EK Y p (lamAct Y p Y.w0 * kCol Y p col))
  rw [← EK_act]
  congr 1
  · funext i
    exact hbX i
  · funext i
    show MvPowerSeries.subst (fun q : Fin 1 × Fin dd => AA Y p (col, q.2))
        (ev ![pt C dd 0] (Y.B.actK C Y.w0 i)) =
      MvPowerSeries.subst (fun q : Fin 1 × Fin dd => EK Y p (kCol Y p col) q.2) (Y.B.A.act Y.w0 i)
    unfold ev
    rw [MvPowerSeries.subst_comp_subst_apply hp0 hb]
    have hfun : (fun q : Fin 1 × Fin dd => MvPowerSeries.subst (fun q : Fin 1 × Fin dd => AA Y p (col, q.2))
        ((![pt C dd 0] : Fin 1 → Pt C 1 dd) q.1 q.2)) = fun q => EK Y p (kCol Y p col) q.2 := by
      funext q
      rcases q with ⟨j, i⟩
      fin_cases j
      exact hbX i
    rw [hfun]
    congr 1

theorem cc_expPtS (o : Orb) (g : Fin 2) (x : Fin 2 × Fin dd) :
    MvPowerSeries.constantCoeff ((Y.rawSelf (p o)).expPt g x) = 0 := by
  obtain ⟨col, i⟩ := x
  have h0 : MvPowerSeries.constantCoeff (toAllS (I := IS I0) o ((Y.rawSelf (p o)).expPt g (col, i))) = 0 := by
    rw [toAllS_expPtS]
    exact cc_EK Y p _ _
  rw [toAllS, VP.cc_subst_eq] at h0
  · exact h0
  · intro w
    exact MvPowerSeries.constantCoeff_X _

theorem hRow_eqS (o : Orb) : (Y.rawSelf (p o)).hRow = (Y.k : C) • ∑ col : Fin 2,
    VP.hAt Y (fun i => (Y.rawSelf (p o)).expPt 0 (col, i)) (fun i => (Y.rawSelf (p o)).expPt 1 (col, i)) := by
  have hS : MvPowerSeries.HasSubst
      (fun q : Fin 2 × (Fin 2 × Fin dd) => (Y.rawSelf (p o)).expPt q.1 q.2) :=
    by first
      | exact MvPowerSeries.hasSubst_of_constantCoeff_zero fun q => cc_expPtS Y p o q.1 q.2
  unfold RawChart.hRow
  congr 1
  show MvPowerSeries.subst (fun q : Fin 2 × (Fin 2 × Fin dd) => (Y.rawSelf (p o)).expPt q.1 q.2)
    (∑ col, hCol col Y.h) = _

  rw [← MvPowerSeries.coe_substAlgHom hS, map_sum]
  refine Finset.sum_congr rfl fun col _ => ?_
  have hX : MvPowerSeries.HasSubst (fun q : Fin 2 × Fin dd =>
      (MvPowerSeries.X (q.1, (col, q.2)) : MvPowerSeries (Fin 2 × (Fin 2 × Fin dd)) C)) :=
    by first
      | exact MvPowerSeries.hasSubst_of_constantCoeff_zero fun q => MvPowerSeries.constantCoeff_X _
  rw [MvPowerSeries.coe_substAlgHom, hCol, MvPowerSeries.subst_comp_subst_apply hX hS]
  simp only [MvPowerSeries.subst_X hS]
  unfold VP.hAt
  congr 1
  funext q
  rcases q with ⟨g, i⟩
  fin_cases g <;> first | rfl

theorem toAllS_hRow (o : Orb) : toAllS (I := IS I0) o (mvExp (Y.rawSelf (p o)).hRow) =
    mvExp ((Y.k : C) • ∑ col, HK Y p (lamG Y p o col 0 * ind (o, 0)) (lamG Y p o col 1 * ind (o, 1))) := by
  have hX : ∀ w : WV (IS I0 o), MvPowerSeries.constantCoeff
      ((MvPowerSeries.X (⟨o, w⟩ : WVO (IS I0))) : MvPowerSeries (WVO (IS I0)) C) = 0 :=
    fun w => MvPowerSeries.constantCoeff_X _
  have hcc : MvPowerSeries.constantCoeff (Y.rawSelf (p o)).hRow = 0 := by

    rw [hRow_eqS, MvPowerSeries.smul_eq_C_mul, map_mul, map_sum,
    Finset.sum_eq_zero fun col _ => VP.cc_hAt (Y := Y) (fun i => cc_expPtS Y p o 0 (col, i))
      (fun i => cc_expPtS Y p o 1 (col, i)), mul_zero]
  have hS : MvPowerSeries.HasSubst (fun w : WV (IS I0 o) =>
      ((MvPowerSeries.X (⟨o, w⟩ : WVO (IS I0))) : MvPowerSeries (WVO (IS I0)) C)) := by
    first
      | exact MvPowerSeries.hasSubst_of_constantCoeff_zero hX
  unfold toAllS
  rw [VP.subst_exp hX hcc, hRow_eqS]
  congr 1

  rw [← MvPowerSeries.coe_substAlgHom hS, map_smul, map_sum]
  congr 1
  refine Finset.sum_congr rfl fun col _ => ?_
  rw [MvPowerSeries.coe_substAlgHom, VP.hAt_subst (hA := hX) (hu := fun i => cc_expPtS Y p o 0 (col, i))
    (hv := fun i => cc_expPtS Y p o 1 (col, i))]
  show VP.hAt Y _ _ = VP.hAt Y (EK Y p _) (EK Y p _)
  congr 1 <;> funext i <;> exact toAllS_expPtS Y p o _ col i

end VS

theorem unitSelf_of {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ} {d : ℕ}
    [NeZero d] {Orb : Type} [Fintype Orb] {I0 : Orb → Type} [∀ o, Fintype (I0 o)]
    (Y : FBChart C V O dd) (p : ∀ o, SelfData Y d (I0 o)) (hG : ∀ o, GmPackSt Y (p o)) : UnitSelfSt Y p := by
  intro hs
  choose γ γ' hγ using hG
  have hA := VS.cc_AA Y p
  have hk := VS.Cg.nsmul hA (VS.main_cg hs hγ) Y.k
  obtain ⟨U, hU, hE⟩ := VS.Cg.unit hA hk
  refine ⟨U, hU.1, hU.2, ?_⟩
  have hL : pull2 Y p (∏ col : Fin 2, ev (n := 2) ![pt C dd col] (FB.expS C ((Y.k : C) • Y.B.hL C Y.h Y.w0))) =
      mvExp ((Y.k : C) • ∑ col : Fin 2,
        VS.HK Y p (VS.kCol Y p col) (VS.lamAct Y p Y.w0 * VS.kCol Y p col)) := by
    rw [VP.pullback_two_var_prod]
    simp only [VS.pullback_exp_column]
    rw [Finset.smul_sum, VS.exp_sum]
    intro col _
    exact (VS.Cg.nsmul hA (VS.Cg.refl (V := V) hA (VS.cc_HK Y p _ _)) Y.k).1
  have hR : ∏ o, toAllS (I := IS I0) o (mvExp (Y.rawSelf (p o)).hRow) =
      mvExp ((Y.k : C) • ∑ o, ∑ col, VS.HK Y p (VS.lamG Y p o col 0 * VS.ind (o, 0))
        (VS.lamG Y p o col 1 * VS.ind (o, 1))) := by
    simp only [VS.toAllS_hRow]
    rw [Finset.smul_sum, VS.exp_sum]
    intro o _
    have h0 : MvPowerSeries.constantCoeff (∑ col, VS.HK Y p (VS.lamG Y p o col 0 * VS.ind (o, 0))
        (VS.lamG Y p o col 1 * VS.ind (o, 1))) = 0 := by

      rw [map_sum]
      exact Finset.sum_eq_zero fun _ _ => VS.cc_HK Y p _ _
    exact (VS.Cg.nsmul hA (VS.Cg.refl (V := V) hA h0) Y.k).1
  rw [hL, hR]
  exact hE

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsU =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ProofRowTieVals =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ProofRowTieVals", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieValL\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieP_TCoord\npublic import Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsPack\npublic import Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsU\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsE\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.FormalSeriesBounds

open Formalism.IncomingBounds ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ Formalism.L2.Pj

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ} {d : ℕ} [NeZero d]
  {Orb : Type} [Fintype Orb] {I0 : Orb → Type} [∀ o, Fintype (I0 o)]

theorem unitSelf_holds (Y : FBChart C V O dd) (p : ∀ o, SelfData Y d (I0 o)) : UnitSelfSt Y p :=
  unitSelf_of Y p fun o => gmPack_holds Y (p o)

theorem projSelf_holds (Y : FBChart C V O dd) (p : ∀ o, SelfData Y d (I0 o)) : ProjSelfSt Y p :=
  projSelf_of Y p fun o => gmPack_holds Y (p o)

theorem germLiftSelf_holds (Y : FBChart C V O dd) (p : ∀ o, SelfData Y d (I0 o))
    (H : ∀ o, (Y.rawSelf (p o)).Hyps V) : GermLiftSelfSt Y p H :=
  germLiftSelf_of Y p H (projSelf_holds Y p) fun o => tcoordSelf_holds C V O dd Y d (I0 o) (p o) (H o).cartH

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ProofRowTieVals =====
