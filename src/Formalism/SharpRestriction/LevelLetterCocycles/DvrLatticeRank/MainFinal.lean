module

public import Mathlib.LinearAlgebra.FiniteDimensional.Defs
public import Mathlib.LinearAlgebra.Dimension.Constructions
public import Mathlib.LinearAlgebra.Dimension.Finite
public import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
public import Formalism.SharpRestriction.LevelLetterCocycles.LamPS
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DvdCondition
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.GeneratorBoundOfHypotheses
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelQPfD
public import Mathlib.RingTheory.TensorProduct.IsBaseChangeFree
public import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FrMultVOfNotJump
public import Formalism.SharpRestriction.LevelLetterCocycles.DownSlotProposition
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfA
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfC
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.Imports
public import Formalism.SharpRestriction.LevelLetterCocycles.DdRFull
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfPt
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.KapPiPf
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfG
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3downPfFildRConst
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3upPfFilCAnti
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LevelValueSmul
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ConstantCoeffQZeroEqP
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DescentValuation
public import Formalism.SharpRestriction.LevelLetterCocycles.SecondPropositionHypothesis
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftFrame
public import Formalism.SharpRestriction.LevelLetterCocycles.ElementDenominator
public import Formalism.SharpRestriction.LevelLetterCocycles.FontExAll
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.MainPf
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowUniformizerFactorisation
import Formalism.SharpRestriction.LevelLetterCocycles.MapCompZero

attribute [-instance]
  NormedSpace.toModule Submodule.normedSpace Submodule.seminormedAddCommGroup
  Submodule.normedAddCommGroup SubalgebraClass.toNormedAlgebra
  Subalgebra.isScalarTower_left Subalgebra.isScalarTower_mid
  Submonoid.instIsScalarTowerSubtypeMem Submonoid.instSMulCommClassSubtypeMem_1
  Subalgebra.smulCommClass_right Subalgebra.smulCommClass_left
  MulSemiringAction.toDistribMulAction
  RingHomClass.toLinearMapClassNNRat RingHomClass.toLinearMapClassRat
  NonUnitalAlgHomClass.instLinearMapClass
  NonUnitalAlgHomClass.instSemilinearMapClassOfNonUnitalAlgSemiHomClassOfClassRingHom
  Algebra.TensorProduct.instNonUnitalSemiring Algebra.TensorProduct.instNonUnitalRing
attribute [local instance high]
  Submodule.module TensorProduct.leftModule Algebra.TensorProduct.leftAlgebra

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FinrankMapMkQ, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LatticeFinrank, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.OthDisj, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LVSmulA, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.SpanLeRange, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalFiltrationHolds, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftFiltration, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftRingMembership, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U1r2Basis, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftValuationPoints, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U1linkPf, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.MainFinal

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FinrankMapMkQ =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FinrankMapMkQ", "h": "module\n\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Dimension.Constructions\npublic import Mathlib.LinearAlgebra.Dimension.Finite\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.UniversalFiltration

open Module

variable {LL X : Type*} [Field LL] [AddCommGroup X] [Module LL X]

theorem finrank_map_mkQ (Oth S : Submodule LL X) (h : Disjoint S Oth) :
    finrank LL ↥(S.map Oth.mkQ) = finrank LL ↥S := by
  have hinj : Function.Injective (Oth.mkQ ∘ₗ S.subtype) := by
    intro x y hxy
    have hxy' : Oth.mkQ (x : X) = Oth.mkQ (y : X) := hxy
    simp only [Submodule.mkQ_apply] at hxy'
    rw [Submodule.Quotient.eq] at hxy'
    have h0 : (x : X) - y = 0 := (Submodule.disjoint_def.mp h) _ (sub_mem x.2 y.2) hxy'
    exact Subtype.ext (sub_eq_zero.mp h0)
  have hr : LinearMap.range (Oth.mkQ ∘ₗ S.subtype) = S.map Oth.mkQ := by
    rw [LinearMap.range_comp, Submodule.range_subtype]
  calc finrank LL ↥(S.map Oth.mkQ)
        = finrank LL ↥(LinearMap.range (Oth.mkQ ∘ₗ S.subtype)) := by rw [hr]
    _ = finrank LL ↥S := ((LinearEquiv.ofInjective _ hinj).finrank_eq).symm

theorem match_fil (I D Oth : Submodule LL X) [FiniteDimensional LL ↥I] [FiniteDimensional LL ↥D]
    (hDO : Disjoint D Oth) (hdim : finrank LL ↥I = finrank LL ↥D) (hDI : D ≤ I ⊔ Oth) :
    Disjoint I Oth ∧ ∀ F : Submodule LL X, F ≤ D → finrank LL ↥(I ⊓ (F ⊔ Oth)) = finrank LL ↥F := by
  have hsupmap : ∀ P : Submodule LL X, (P ⊔ Oth).map Oth.mkQ = P.map Oth.mkQ := by
    intro P
    first
      | rw [Submodule.map_sup, Submodule.mkQ_map_self, sup_bot_eq]
  have hmap : D.map Oth.mkQ ≤ I.map Oth.mkQ := by
    calc D.map Oth.mkQ ≤ (I ⊔ Oth).map Oth.mkQ := Submodule.map_mono hDI
      _ = I.map Oth.mkQ := hsupmap I
  haveI hfin : FiniteDimensional LL ↥(I.map Oth.mkQ) := by
    first
      | infer_instance
  have hDmap : finrank LL ↥(D.map Oth.mkQ) = finrank LL ↥D :=
    finrank_map_mkQ Oth D hDO
  have hIle : finrank LL ↥(I.map Oth.mkQ) ≤ finrank LL ↥I := by
    first
      | exact Submodule.finrank_map_le _ _
  have hle2 : finrank LL ↥(D.map Oth.mkQ) ≤ finrank LL ↥(I.map Oth.mkQ) := by
    first
      | exact LinearMap.finrank_le_finrank_of_injective (Submodule.inclusion_injective hmap)
  have hIeq : finrank LL ↥(I.map Oth.mkQ) = finrank LL ↥I := by omega
  have hrI : LinearMap.range (Oth.mkQ ∘ₗ I.subtype) = I.map Oth.mkQ := by
    rw [LinearMap.range_comp, Submodule.range_subtype]
  have hrn := LinearMap.finrank_range_add_finrank_ker (Oth.mkQ ∘ₗ I.subtype)
  have hr' : finrank LL ↥(LinearMap.range (Oth.mkQ ∘ₗ I.subtype)) = finrank LL ↥I := by
    rw [hrI]; exact hIeq
  have hk : finrank LL ↥(LinearMap.ker (Oth.mkQ ∘ₗ I.subtype)) = 0 := by omega
  have hkb : LinearMap.ker (Oth.mkQ ∘ₗ I.subtype) = ⊥ := by
    first
      | exact Submodule.finrank_eq_zero.mp hk
  have hinj : Function.Injective (Oth.mkQ ∘ₗ I.subtype) := LinearMap.ker_eq_bot.mp hkb
  have hdisj : Disjoint I Oth := by
    rw [Submodule.disjoint_def]
    intro x hxI hxO
    have h1 : (Oth.mkQ ∘ₗ I.subtype) ⟨x, hxI⟩ = (Oth.mkQ ∘ₗ I.subtype) 0 := by
      rw [map_zero]
      show Oth.mkQ x = 0
      first
        | (rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero]; exact hxO)
    have h2 := hinj h1
    first
      | exact congrArg Subtype.val h2
  refine ⟨hdisj, fun F hF => ?_⟩
  have hFO : Disjoint F Oth := hDO.mono_left hF
  have hJO : Disjoint (I ⊓ (F ⊔ Oth)) Oth := hdisj.mono_left inf_le_left
  have heq : (I ⊓ (F ⊔ Oth)).map Oth.mkQ = F.map Oth.mkQ := by
    apply le_antisymm
    · calc (I ⊓ (F ⊔ Oth)).map Oth.mkQ ≤ (F ⊔ Oth).map Oth.mkQ := Submodule.map_mono inf_le_right
        _ = F.map Oth.mkQ := hsupmap F
    · intro y hy
      obtain ⟨f, hfF, rfl⟩ := Submodule.mem_map.mp hy
      have hfD : Oth.mkQ f ∈ I.map Oth.mkQ := hmap (Submodule.mem_map.mpr ⟨f, hF hfF, rfl⟩)
      obtain ⟨i, hiI, hif⟩ := Submodule.mem_map.mp hfD
      have hsub : i - f ∈ Oth := by
        simp only [Submodule.mkQ_apply] at hif
        exact (Submodule.Quotient.eq Oth).mp hif
      have h3 : f + (i - f) ∈ F ⊔ Oth := Submodule.add_mem_sup hfF hsub
      have hi : i ∈ F ⊔ Oth := by
        first
          | simpa using h3
      exact Submodule.mem_map.mpr ⟨i, Submodule.mem_inf.mpr ⟨hiI, hi⟩, hif⟩
  calc finrank LL ↥(I ⊓ (F ⊔ Oth))
        = finrank LL ↥((I ⊓ (F ⊔ Oth)).map Oth.mkQ) :=
          (finrank_map_mkQ Oth _ hJO).symm
    _ = finrank LL ↥(F.map Oth.mkQ) := by rw [heq]
    _ = finrank LL ↥F := finrank_map_mkQ Oth F hFO

end Formalism.MainNotions.N.Ln34.UniversalFiltration

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FinrankMapMkQ =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LatticeFinrank =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LatticeFinrank", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LamPS\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DvdCondition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.GeneratorBoundOfHypotheses\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelQPfD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\npublic import Mathlib.RingTheory.TensorProduct.IsBaseChangeFree\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

set_option synthInstance.maxHeartbeats 400000

namespace Formalism.MainNotions.N.Ln34.UniversalFiltration

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.N.Ln34 Formalism.MainNotions.ElementDenominator Formalism.MainNotions.ElementDenominator.CongruenceModules

theorem lattice_finrank {O LL V : Type*} [CommRing O] [IsDomain O] [Field LL] [Algebra O LL]
    [IsFractionRing O LL] [AddCommGroup V] [Module LL V] [Module O V] [IsScalarTower O LL V]
    (T : Submodule O V) [Module.Free O T] [Module.Finite O T]
    (hspan : Submodule.span LL (T : Set V) = ⊤) : finrank O T = finrank LL V := by
  classical
  set bT := Module.Free.chooseBasis O T
  set v : Module.Free.ChooseBasisIndex O T → V := fun i => (bT i : V)
  have hli : LinearIndependent O v := bT.linearIndependent.map' T.subtype T.ker_subtype
  have hliLL : LinearIndependent LL v := (LinearIndependent.iff_fractionRing O LL).1 hli
  have hsp : Submodule.span LL (Set.range v) = ⊤ := by
    rw [eq_top_iff, ← hspan]
    refine Submodule.span_le.2 fun x hx => ?_
    have e : x = ∑ i, bT.repr ⟨x, hx⟩ i • v i := by
      conv_lhs => rw [show x = ((⟨x, hx⟩ : T) : V) from rfl, ← bT.sum_repr ⟨x, hx⟩]
      rw [Submodule.coe_sum]
      rfl
    rw [SetLike.mem_coe, e]
    exact Submodule.sum_mem _ fun i _ =>
      Submodule.smul_of_tower_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)
  rw [Module.finrank_eq_card_chooseBasisIndex, ← finrank_top LL V, ← hsp, finrank_span_eq_card hliLL]

set_option maxHeartbeats 1000000 in
theorem r_eq (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hA : adm1 D HW F Cm) {l : ℕ} [Fact l.Prime] (hl : l ≠ 2) (K LL : FinExt l) (hG : Good K 1 LL)
    (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E)
    (T : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL)) (hT : IsCrys ((D.loc l).PD K) T.ρ)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) (r : ℕ)
    (bL : Basis (Fin r) ↥(OL LL) (LcQ ((HW l).W K 1 LL hG) T π' c)) : r = finrank ↥LL.1 T.V := by
  classical
  have : IsFractionRing ↥(OL LL) ↥LL.1 := GenPf.isFractionRing LL
  set W := (HW l).W K 1 LL hG
  have hs : W.s = 1 := (HW l).W_s K 1 LL hG
  have hp : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  obtain ⟨-, ⟨-, -, -, ⟨r0, b, hbΔ, hbu, hbe⟩, -⟩, -⟩ :=
    (hA l K 1 LL hG).2.2.2.2.2.2.2.2.1 T hT hs (by rw [hp]; exact hl)
  obtain ⟨-, huniq, ⟨w₁, hw₁⟩, -⟩ := hp9
  have hl2 : 2 ≤ l := (Fact.out : l.Prime).two_le
  have hd := Formalism.MainNotions.N.Ln34.DvdPf.dvdCondition l hl K LL hG
  have he : 0 < eK K := Nat.pos_of_ne_zero fun h0 => by
    rw [h0, zero_dvd_iff] at hd
    omega
  have hsK : 1 ≤ sK l K := Nat.div_pos (Nat.le_of_dvd (by omega) hd) he
  obtain ⟨bL0⟩ := MQ.basis_L W T π' (sK l K) hsK w₁ hw₁ huniq b hbΔ hbu hbe c
  have h1 : r = r0 := by
    have e1 := Module.finrank_eq_card_basis bL
    have e2 := Module.finrank_eq_card_basis bL0
    simp only [Fintype.card_fin] at e1 e2
    omega

  have hli : LinearIndependent (LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) (fun j => (⟨b j, (hbΔ j).1⟩ : W.N T)) := by
    refine Fintype.linearIndependent_iff.2 fun g hg => ?_
    have h1 : (∑ j, g j • b j) = 0 := by
      have := congrArg Subtype.val hg
      simpa using this
    obtain ⟨a0, _, hu⟩ := hbu 0 (W.N T).zero_mem
    have e1 := hu g h1.symm
    have e2 := hu 0 (by simp)
    intro i
    rw [e1, ← e2]
    rfl
  have hsp : ⊤ ≤ Submodule.span (LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K)))
      (Set.range fun j => (⟨b j, (hbΔ j).1⟩ : W.N T)) := by
    rintro ⟨x, hx⟩ _
    obtain ⟨a, ha, _⟩ := hbu x hx
    have : (⟨x, hx⟩ : W.N T) = ∑ j, a j • (⟨b j, (hbΔ j).1⟩ : W.N T) := by
      apply Subtype.ext
      simp [ha]
    rw [this]
    exact Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨j, rfl⟩)
  let bN := Module.Basis.mk hli hsp
  let bD := IsBaseChange.basis bN (W.N_base T hT)
  have : Nontrivial W.EE := by
    refine ⟨⟨0, 1, fun h => ?_⟩⟩
    have h' : algebraMap (LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) W.EE 0 =
        algebraMap (LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) W.EE 1 := by rw [map_zero, map_one]; exact h
    have h0 := congrFun (W.EE_inj h') 0
    exact zero_ne_one h0
  have h2 : r0 = finrank W.EE (W.DD T) := by
    rw [Module.finrank_eq_card_basis bD, Fintype.card_fin]
  have h3 := (W.DD_free T).2
  have : Module.Free ↥(OL LL) ↥T.L.T := T.L.free
  have : Module.Finite ↥(OL LL) ↥T.L.T := Module.Finite.iff_fg.2 T.L.fg
  rw [h1, h2, h3]
  exact lattice_finrank T.L.T T.L.span

end Formalism.MainNotions.N.Ln34.UniversalFiltration

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LatticeFinrank =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.OthDisj =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.OthDisj", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FrMultVOfNotJump\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.UniversalFiltration

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.N.Ln34
open scoped TensorProduct

section DiscreteGroups

variable {G : Type} [Group G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL : Type} [Field LL] [Algebra Qp LL]
    {V : Type} [AddCommGroup V] [Module LL V] [Module Qp V] [IsScalarTower Qp LL V]
    (ρ : Representation LL G V)

theorem oth_disj [CharZero Qp] [FiniteDimensional Qp K] (τ : K →ₐ[Qp] LL) :
    Disjoint (DdRE PD ρ τ) (⨆ (τ' : K →ₐ[Qp] LL) (_ : τ' ≠ τ), DdRE PD ρ τ') := by
  obtain ⟨α, hα⟩ := Field.exists_primitive_element Qp K
  have hint : IsIntegral Qp α := IsIntegral.of_finite Qp α
  have hadj : Algebra.adjoin Qp {α} = ⊤ := by
    rw [← IntermediateField.adjoin_simple_toSubalgebra_of_isAlgebraic hint.isAlgebraic, hα,
      IntermediateField.top_toSubalgebra]
  have hinj : Function.Injective (fun τ : K →ₐ[Qp] LL => τ α) := by
    intro τ₁ τ₂ h
    have hle := AlgHom.adjoin_le_equalizer τ₁ τ₂ (s := {α}) (by
      intro y hy
      rw [Set.mem_singleton_iff] at hy
      subst hy
      exact h)
    rw [hadj] at hle
    exact AlgHom.ext fun y => hle (Algebra.mem_top (x := y))
  set f : Module.End LL (V ⊗[Qp] BdR) := mulVdR (K := K) (BdR := BdR) (V := V) (LL := LL) α
  have hE : ∀ τ' : K →ₐ[Qp] LL, DdRE PD ρ τ' ≤ f.eigenspace (τ' α) := by
    intro τ' x hx
    rw [Module.End.mem_eigenspace_iff]
    have h := (Submodule.mem_iInf _).1 (Submodule.mem_inf.1 hx).2 α
    rw [LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply, LinearMap.id_apply,
      sub_eq_zero] at h
    exact h
  have hind := Module.End.eigenspaces_iSupIndep f (τ α)
  refine Disjoint.mono (hE τ) ?_ hind
  refine iSup₂_le fun τ' hτ' => ?_
  exact le_trans (hE τ') (le_iSup₂_of_le (τ' α) (fun h => hτ' (hinj h)) le_rfl)

end DiscreteGroups

section Pt

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (c : ZMod n)
    {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop}

theorem dR_le (hp4 : Formalism.MainNotions.DeltaInvariantLattices.p4 W Pt T) {ζ : LL} {τ : K →ₐ[Qp] LL} (hPt : Pt c ζ τ)
    [FiniteDimensional LL ↥(DdRE PD T.ρ τ)] :
    DdRE PD T.ρ τ ≤ Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c ⊔ ⨆ (τ' : K →ₐ[Qp] LL) (_ : τ' ≠ τ), DdRE PD T.ρ τ' := by
  obtain ⟨hi, hhi⟩ := fr_fildR_hi PD T.ρ τ
  obtain ⟨lo, hlo⟩ := fr_fildR_lo PD T.ρ τ
  have key : ∀ d : ℕ, FildR PD T.ρ τ (hi - d) ≤
      Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c ⊔ ⨆ (τ' : K →ₐ[Qp] LL) (_ : τ' ≠ τ), DdRE PD T.ρ τ' := by
    intro d
    induction d with
    | zero =>
      rw [Nat.cast_zero, sub_zero, hhi hi le_rfl]
      exact bot_le
    | succ d ih =>
      intro w hw
      have e1 : -(-(hi - ((d + 1 : ℕ) : ℤ))) = hi - ((d + 1 : ℕ) : ℤ) := neg_neg _
      obtain ⟨x, a, -, -, hx⟩ := (hp4.2 c ζ τ hPt).2.2 (-(hi - ((d + 1 : ℕ) : ℤ))) w (by rwa [e1])
      have e2 : -(-(hi - ((d + 1 : ℕ) : ℤ))) + 1 = hi - (d : ℤ) := by push_cast; ring
      rw [e2] at hx
      have hmem1 : a • W.levN T c ζ ((letE c : LetA O n) • x) (-(hi - ((d + 1 : ℕ) : ℤ))) ∈
          Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c ⊔ ⨆ (τ' : K →ₐ[Qp] LL) (_ : τ' ≠ τ), DdRE PD T.ρ τ' :=
        Submodule.mem_sup_left (Submodule.smul_mem _ _
          (Submodule.mem_inf.1 ((hp4.2 c ζ τ hPt).2.1 x (-(hi - ((d + 1 : ℕ) : ℤ))))).1)
      have hF : Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ (hi - (d : ℤ)) ≤
          Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c ⊔ ⨆ (τ' : K →ₐ[Qp] LL) (_ : τ' ≠ τ), DdRE PD T.ρ τ' := by
        unfold Formalism.MainNotions.DeltaInvariantLattices.FilC
        exact sup_le ih le_sup_right
      have := Submodule.sub_mem _ hmem1 (hF hx)
      rwa [sub_sub_cancel] at this
  have h := key (hi - lo).toNat
  rwa [hlo _ (by omega)] at h

end Pt

end Formalism.MainNotions.N.Ln34.UniversalFiltration

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.OthDisj =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LVSmulA =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LVSmulA", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DownSlotProposition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfA\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfC\nimport Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowUniformizerFactorisation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.UniversalFiltration

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.N.Ln34 Formalism.MainNotions.N.Ln34.ModelFPf
open scoped TensorProduct

section Span

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (c : ZMod n) (ζ : LL)

def LV (K : ℕ) (x : W.DD T) : T.V ⊗[Qp] BdR :=
  open Classical in
  if h : W.Q ^ K • W.φD T x ∈ W.N T then W.levN T c ζ ⟨_, h⟩ K else 0

theorem LV_eq (K : ℕ) (x : W.DD T) (h : W.Q ^ K • W.φD T x ∈ W.N T) :
    LV W T c ζ K x = W.levN T c ζ ⟨_, h⟩ K := by
  unfold LV
  rw [dite_eq_left h]

theorem LV_add (K : ℕ) (x y : W.DD T) (hx : W.Q ^ K • W.φD T x ∈ W.N T)
    (hy : W.Q ^ K • W.φD T y ∈ W.N T) : LV W T c ζ K (x + y) = LV W T c ζ K x + LV W T c ζ K y := by
  have hxy : W.Q ^ K • W.φD T (x + y) ∈ W.N T := by
    rw [map_add (f := _), smul_add]
    exact Submodule.add_mem _ hx hy
  rw [LV_eq W T c ζ K _ hxy, LV_eq W T c ζ K _ hx, LV_eq W T c ζ K _ hy]
  rw [show (⟨_, hxy⟩ : ↥(W.N T)) = ⟨_, hx⟩ + ⟨_, hy⟩ from
    Subtype.ext (by simp only [map_add (f := _), smul_add, Submodule.coe_add]), map_add (f := _)]
  rfl

theorem LV_smulA (K : ℕ) (a : LetA O n) (x : W.DD T) (hx : W.Q ^ K • W.φD T x ∈ W.N T)
    (hv : ∀ j : ℤ, j < K → W.levN T c ζ ⟨_, hx⟩ j = 0) :
    W.Q ^ K • W.φD T (a • x) ∈ W.N T ∧
      LV W T c ζ K (a • x) = PowerSeries.constantCoeff (W.lev c ζ (W.φA a)) • LV W T c ζ K x := by
  have e : W.Q ^ K • W.φD T (a • x) = W.φA a • (W.Q ^ K • W.φD T x) := by
    rw [Formalism.MainNotions.LiftingTheory.wmap_φD_smul, smul_comm]
  have hax : W.Q ^ K • W.φD T (a • x) ∈ W.N T := e ▸ Submodule.smul_mem _ _ hx
  refine ⟨hax, ?_⟩
  rw [LV_eq W T c ζ K _ hax, LV_eq W T c ζ K _ hx]
  have hs : (⟨_, hax⟩ : ↥(W.N T)) = W.φA a • (⟨_, hx⟩ : ↥(W.N T)) := Subtype.ext e
  rw [hs, levN_eq_serMul, serMul_eq_sum _ _ K hv K 1 (by omega), Finset.sum_range_one,
    PowerSeries.coeff_zero_eq_constantCoeff_apply]
  simp

theorem LV_smulO (K : ℕ) (o : O) (x : W.DD T) (hx : W.Q ^ K • W.φD T x ∈ W.N T) :
    W.Q ^ K • W.φD T (o • x) ∈ W.N T ∧
      LV W T c ζ K (o • x) = algebraMap O LL o • LV W T c ζ K x := by
  have e : W.Q ^ K • W.φD T (o • x) = algebraMap O (LetA O n) o • (W.Q ^ K • W.φD T x) := by
    rw [map_smul, smul_comm, algebraMap_smul]
  have hox : W.Q ^ K • W.φD T (o • x) ∈ W.N T := e ▸ Submodule.smul_mem _ _ hx
  refine ⟨hox, ?_⟩
  rw [LV_eq W T c ζ K _ hox, LV_eq W T c ζ K _ hx]
  have hs : (⟨_, hox⟩ : ↥(W.N T)) = algebraMap O (LetA O n) o • (⟨_, hx⟩ : ↥(W.N T)) := Subtype.ext e
  have hC : algebraMap O (PowerSeries LL) o = PowerSeries.C (algebraMap O LL o) := by
    rw [IsScalarTower.algebraMap_apply O LL (PowerSeries LL)]
    rfl
  rw [hs, levN_eq_serMul, AlgHom.commutes, hC]
  unfold serMul
  rw [finsum_eq_single _ 0]
  · simp
  · intro j hj
    rw [PowerSeries.coeff_C, if_neg hj, zero_smul]

variable {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop}

theorem levN_val (hp4 : Formalism.MainNotions.DeltaInvariantLattices.p4 W Pt T) {τ : K →ₐ[Qp] LL} (hPt : Pt c ζ τ)
    (hc0 : PowerSeries.constantCoeff (W.lev c ζ W.Q) = 0) (hc1 : PowerSeries.coeff 1 (W.lev c ζ W.Q) ≠ 0)
    (x : W.DD T) (hxN : x ∈ W.N T) (k : ℕ) (hk : W.Q ^ k • W.φD T x ∈ W.N T) :
    W.levN T c ζ ⟨_, hk⟩ k = PowerSeries.coeff 1 (W.lev c ζ W.Q) ^ k • valAt W T c ζ x := by
  classical
  have hex : ∃ k, W.Q ^ k • W.φD T x ∈ W.N T := ⟨k, hk⟩
  unfold valAt
  rw [dite_eq_left hex]
  have hk0 : Nat.find hex ≤ k := Nat.find_min' hex hk
  have hk0m := Nat.find_spec hex
  have hv : ∀ j : ℤ, j < (Nat.find hex : ℤ) → W.levN T c ζ ⟨_, hk0m⟩ j = 0 :=
    fun j hj => ((hp4.2 c ζ τ hPt).1.1 ⟨x, hxN⟩ _ hk0m j).2 hj
  have hs : (⟨_, hk⟩ : ↥(W.N T)) = W.Q ^ (k - Nat.find hex) • (⟨_, hk0m⟩ : ↥(W.N T)) :=
    Subtype.ext (by
      show W.Q ^ k • W.φD T x = W.Q ^ (k - Nat.find hex) • W.Q ^ Nat.find hex • W.φD T x
      rw [smul_smul, ← pow_add, Nat.sub_add_cancel hk0])
  obtain ⟨B', hB'⟩ := PowerSeries.X_dvd_iff.2 hc0
  have hB0 : PowerSeries.constantCoeff B' = PowerSeries.coeff 1 (W.lev c ζ W.Q) := by
    rw [hB', PowerSeries.coeff_succ_X_mul, PowerSeries.coeff_zero_eq_constantCoeff_apply]
  rw [hs, levN_eq_serMul, serMul_eq_sum _ _ _ hv k (k - Nat.find hex + 1) (by omega),
    Finset.sum_eq_single (k - Nat.find hex)]
  · have e1 : (k : ℤ) - ((k - Nat.find hex : ℕ) : ℤ) = (Nat.find hex : ℤ) := by
      rw [Nat.cast_sub hk0]
      ring
    have hcoef : PowerSeries.coeff (k - Nat.find hex) ((W.lev c ζ W.Q) ^ (k - Nat.find hex)) =
        PowerSeries.coeff 1 (W.lev c ζ W.Q) ^ (k - Nat.find hex) := by
      rw [hB', mul_pow, PowerSeries.coeff_X_pow_mul', if_pos le_rfl, Nat.sub_self,
        PowerSeries.coeff_zero_eq_constantCoeff_apply, map_pow, PowerSeries.coeff_succ_X_mul,
        PowerSeries.coeff_zero_eq_constantCoeff_apply]
    rw [e1, map_pow, hcoef, smul_smul, ← pow_sub₀ _ hc1 hk0]
  · intro j _ hj
    rcases lt_or_gt_of_ne hj with h | h
    · rw [map_pow, pow_vanish' _ hc0 _ j h, zero_smul]
    · rw [hv _ (by omega), smul_zero]
  · intro h
    exact absurd (Finset.mem_range.2 (by omega)) h

end Span

end Formalism.MainNotions.N.Ln34.UniversalFiltration

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LVSmulA =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.SpanLeRange =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.SpanLeRange", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LVSmulA\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.Imports\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfA\nimport Formalism.SharpRestriction.LevelLetterCocycles.MapCompZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.UniversalFiltration

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.N.Ln34 Formalism.MainNotions.N.Ln34.ModelFPf
open scoped TensorProduct

section Span2

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (c : ZMod n) (ζ : LL)

theorem N_φ' (x : W.DD T) (hx : x ∈ W.N T) : ∃ k : ℕ, W.Q ^ k • W.φD T x ∈ W.N T :=
  W.N_φ T x hx

theorem Qpow_mono {x : W.DD T} {k K : ℕ} (hk : W.Q ^ k • W.φD T x ∈ W.N T) (hK : k ≤ K) :
    W.Q ^ K • W.φD T x ∈ W.N T := by
  rw [show K = (K - k) + k by omega, pow_add, mul_smul]
  exact Submodule.smul_mem _ _ hk

theorem LV_zero (K : ℕ) : LV W T c ζ K 0 = 0 := by
  have h0 : W.Q ^ K • W.φD T 0 ∈ W.N T := by rw [map_zero, smul_zero]; exact Submodule.zero_mem _
  rw [LV_eq W T c ζ K _ h0]
  rw [show (⟨_, h0⟩ : ↥(W.N T)) = 0 from Subtype.ext (by simp), map_zero]
  rfl

theorem LV_sum {ι : Type} (K : ℕ) (s : Finset ι) (f : ι → W.DD T)
    (hf : ∀ i, W.Q ^ K • W.φD T (f i) ∈ W.N T) :
    W.Q ^ K • W.φD T (∑ i ∈ s, f i) ∈ W.N T ∧
      LV W T c ζ K (∑ i ∈ s, f i) = ∑ i ∈ s, LV W T c ζ K (f i) := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    refine ⟨by rw [Finset.sum_empty, map_zero, smul_zero]; exact Submodule.zero_mem _, ?_⟩
    rw [Finset.sum_empty, Finset.sum_empty, LV_zero]
  | insert a s ha ih =>
    rw [Finset.sum_insert ha, Finset.sum_insert ha]
    refine ⟨by rw [map_add (f := _), smul_add]; exact Submodule.add_mem _ (hf a) ih.1, ?_⟩
    rw [LV_add W T c ζ K _ _ (hf a) ih.1, ih.2]

variable {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop}

theorem span_le_range (hp4 : Formalism.MainNotions.DeltaInvariantLattices.p4 W Pt T) {τ : K →ₐ[Qp] LL} (hPt : Pt c ζ τ)
    (hc0 : PowerSeries.constantCoeff (W.lev c ζ W.Q) = 0) (hc1 : PowerSeries.coeff 1 (W.lev c ζ W.Q) ≠ 0)
    (π' : LetA O n) (hφπ : PowerSeries.constantCoeff (W.lev c ζ (W.φA π')) = 0)
    {r0 : ℕ} (b : Fin r0 → W.DD T) (hbΔ : ∀ j, b j ∈ W.NΔ T)
    (hbu : ∀ x ∈ W.N T, ∃! a : Fin r0 → LetA O n, x = ∑ j, a j • b j)
    {r : ℕ} (bL : Basis (Fin r) O (LcQ W T π' c)) (rep : Fin r → W.DD T)
    (hrep : ∀ k, rep k ∈ NcS W T (c - 1)) (hbrep : ∀ k, bL k = mkL W T π' c (rep k) (hrep k)) :
    Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c ≤ LinearMap.range (UniversalLiftFrames.Phi W T c ζ rep) := by
  classical
  set R := LinearMap.range (UniversalLiftFrames.Phi W T c ζ rep)
  set c1 := PowerSeries.coeff 1 (W.lev c ζ W.Q)
  have hvan : ∀ (x : W.DD T) (hx : x ∈ W.N T) (K : ℕ) (hK : W.Q ^ K • W.φD T x ∈ W.N T) (j : ℤ),
      j < K → W.levN T c ζ ⟨_, hK⟩ j = 0 :=
    fun x hx K hK j hj => ((hp4.2 c ζ τ hPt).1.1 ⟨x, hx⟩ K hK j).2 hj
  have hLV : ∀ (x : W.DD T) (hx : x ∈ W.N T) (K : ℕ) (hK : W.Q ^ K • W.φD T x ∈ W.N T),
      LV W T c ζ K x = c1 ^ K • valAt W T c ζ x := by
    intro x hx K hK
    rw [LV_eq W T c ζ K _ hK, levN_val W T c ζ hp4 hPt hc0 hc1 x hx K hK]
  have hcancel : ∀ (K : ℕ) (u : T.V ⊗[Qp] BdR), c1 ^ K • u ∈ R → u ∈ R := by
    intro K u hu
    have := Submodule.smul_mem R ((c1 ^ K)⁻¹) hu
    rwa [smul_smul, inv_mul_cancel₀ (pow_ne_zero _ hc1), one_smul] at this
  have hrepR : ∀ k, valAt W T c ζ (rep k) ∈ R := by
    intro k
    refine ⟨Pi.single k 1, ?_⟩
    rw [UniversalLiftFrames.Phi_apply]
    simp [Pi.single_apply]

  have hA : ∀ y (hy : y ∈ NcS W T (c - 1)), valAt W T c ζ y ∈ R := by
    intro y hy
    set p := (PiNS W T π' 1).comap (NcS W T (c - 1)).subtype
    set o := bL.repr (mkL W T π' c y hy)
    have h2 : (∑ k, o k • bL k) = p.mkQ (∑ k, o k • (⟨rep k, hrep k⟩ : ↥(NcS W T (c - 1)))) := by

      rw [map_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [map_smul, hbrep]
      rfl
    have h3 : (Submodule.Quotient.mk (⟨y, hy⟩ : ↥(NcS W T (c - 1))) : LcQ W T π' c) =
        Submodule.Quotient.mk (∑ k, o k • (⟨rep k, hrep k⟩ : ↥(NcS W T (c - 1)))) := by
      have := bL.sum_repr (mkL W T π' c y hy)
      rw [h2] at this
      exact this.symm
    have h4 := (Submodule.Quotient.eq p).1 h3
    rw [Submodule.mem_comap] at h4
    have hz : y - ∑ k, o k • rep k ∈ PiNS W T π' 1 := by simpa using h4
    obtain ⟨⟨y', hy'N, hy'⟩, -⟩ := (mem_PiNS W T π' 1 _).1 hz
    have hyeq : y = ∑ k, o k • rep k + π' • y' := by
      rw [pow_one] at hy'
      rw [hy']
      abel
    have hyN := ((mem_NcS W T _ y).1 hy).1
    have hrN : ∀ k, rep k ∈ W.N T := fun k => ((mem_NcS W T _ _).1 (hrep k)).1
    choose Kr hKr using fun k => N_φ' W T (rep k) (hrN k)
    obtain ⟨Ky, hKy⟩ := N_φ' W T y hyN
    obtain ⟨Kz, hKz⟩ := N_φ' W T y' hy'N
    set K := Ky + ∑ k, Kr k + Kz
    have hKk : ∀ k, W.Q ^ K • W.φD T (rep k) ∈ W.N T := fun k =>
      Qpow_mono W T (hKr k) (by
        have := Finset.single_le_sum (f := Kr) (fun _ _ => Nat.zero_le _) (Finset.mem_univ k)
        omega)
    have hKo : ∀ k, W.Q ^ K • W.φD T (o k • rep k) ∈ W.N T :=
      fun k => (LV_smulO W T c ζ K (o k) (rep k) (hKk k)).1
    have hKz' : W.Q ^ K • W.φD T y' ∈ W.N T := Qpow_mono W T hKz (by omega)
    have hKy' : W.Q ^ K • W.φD T y ∈ W.N T := Qpow_mono W T hKy (by omega)
    obtain ⟨hKπ, hLπ⟩ := LV_smulA W T c ζ K π' y' hKz' (hvan y' hy'N K hKz')
    obtain ⟨hKs, hLs⟩ := LV_sum W T c ζ K Finset.univ (fun k => o k • rep k) hKo
    apply hcancel K
    rw [← hLV y hyN K hKy']
    have e : LV W T c ζ K y = LV W T c ζ K (∑ k, o k • rep k + π' • y') := by rw [← hyeq]
    rw [e, LV_add W T c ζ K _ _ hKs hKπ, hLs, hLπ, hφπ, zero_smul, add_zero]
    refine Submodule.sum_mem _ fun k _ => ?_
    rw [(LV_smulO W T c ζ K (o k) (rep k) (hKk k)).2, hLV _ (hrN k) K (hKk k), smul_comm]
    exact Submodule.smul_mem _ _ (Submodule.smul_mem _ _ (hrepR k))

  rw [← (hp4.2 c ζ τ hPt).1.2]
  refine Submodule.span_le.2 ?_
  rintro _ ⟨x, k, hk, rfl⟩
  set d : ZMod n := c - 1
  have hx'N : (letE d : LetA O n) • (x : W.DD T) ∈ W.N T := Submodule.smul_mem _ _ x.2
  have ek : (letE c : LetA O n) • (W.Q ^ k • W.φD T x) = W.Q ^ k • W.φD T ((letE d : LetA O n) • (x : W.DD T)) := by
    rw [show d = c - 1 from rfl, φD_letE, smul_comm]
  have hk' : W.Q ^ k • W.φD T ((letE d : LetA O n) • (x : W.DD T)) ∈ W.N T := ek ▸ Submodule.smul_mem _ _ hk
  have hw : W.levN T c ζ ⟨_, hk⟩ k = W.levN T c ζ ⟨_, hk'⟩ k := by
    rw [← levN_letE W T c ζ ⟨_, hk⟩ k]
    rw [show (letE c : LetA O n) • (⟨_, hk⟩ : ↥(W.N T)) = ⟨_, hk'⟩ from
      Subtype.ext (by rw [Submodule.coe_smul]; exact ek)]
  rw [SetLike.mem_coe, hw, levN_val W T c ζ hp4 hPt hc0 hc1 _ hx'N k hk']
  refine Submodule.smul_mem _ _ ?_
  set x' := (letE d : LetA O n) • (x : W.DD T)
  obtain ⟨a, hax, -⟩ := hbu x' hx'N
  have hx'eq : x' = ∑ j, a j • ((letE d : LetA O n) • b j) := by
    have h1 : x' = (letE d : LetA O n) • x' := by
      show _ = (letE d : LetA O n) • ((letE d : LetA O n) • (x : W.DD T))
      rw [smul_smul, _root_.Formalism.MainNotions.LiftingTheory.letter_idempotent_sq]
    rw [h1, hax, Finset.smul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [smul_comm]
  have hebN : ∀ j, (letE d : LetA O n) • b j ∈ NcS W T (c - 1) := by
    intro j
    refine (mem_NcS W T _ _).2 ⟨Submodule.smul_mem _ _ (hbΔ j).1, fun δ hδ => ?_, ?_⟩
    · rw [γD_letE, (hbΔ j).2 δ hδ]
    · rw [smul_smul, _root_.Formalism.MainNotions.LiftingTheory.letter_idempotent_sq]
  have hebN' : ∀ j, (letE d : LetA O n) • b j ∈ W.N T := fun j => ((mem_NcS W T _ _).1 (hebN j)).1
  choose Kb hKb using fun j => N_φ' W T _ (hebN' j)
  set K := k + ∑ j, Kb j
  have hKb' : ∀ j, W.Q ^ K • W.φD T ((letE d : LetA O n) • b j) ∈ W.N T := fun j =>
    Qpow_mono W T (hKb j) (by
      have := Finset.single_le_sum (f := Kb) (fun _ _ => Nat.zero_le _) (Finset.mem_univ j)
      omega)
  have hKa : ∀ j, W.Q ^ K • W.φD T (a j • ((letE d : LetA O n) • b j)) ∈ W.N T :=
    fun j => (LV_smulA W T c ζ K (a j) _ (hKb' j) (hvan _ (hebN' j) K (hKb' j))).1
  have hKx : W.Q ^ K • W.φD T x' ∈ W.N T := Qpow_mono W T hk' (by omega)
  apply hcancel K
  rw [← hLV x' hx'N K hKx]
  have e : LV W T c ζ K x' = LV W T c ζ K (∑ j, a j • ((letE d : LetA O n) • b j)) := by
    rw [← hx'eq]
  rw [e, (LV_sum W T c ζ K Finset.univ _ hKa).2]
  refine Submodule.sum_mem _ fun j _ => ?_
  rw [(LV_smulA W T c ζ K (a j) _ (hKb' j) (hvan _ (hebN' j) K (hKb' j))).2,
    hLV _ (hebN' j) K (hKb' j)]
  exact Submodule.smul_mem _ _ (Submodule.smul_mem _ _ (hA _ (hebN j)))

end Span2

end Formalism.MainNotions.N.Ln34.UniversalFiltration

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.SpanLeRange =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalFiltrationHolds =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalFiltrationHolds", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DdRFull\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.Imports\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DvdCondition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FinrankMapMkQ\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FrMultVOfNotJump\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LatticeFinrank\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfA\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfC\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.OthDisj\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.SpanLeRange\nimport Formalism.SharpRestriction.LevelLetterCocycles.MapCompZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

set_option synthInstance.maxHeartbeats 400000

namespace Formalism.MainNotions.N.Ln34.UniversalFiltration

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.N.Ln34 Formalism.MainNotions.ElementDenominator Formalism.MainNotions.ElementDenominator.CongruenceModules PowerSeries
open scoped TensorProduct

theorem inj_of_range {LL X : Type*} [Field LL] [AddCommGroup X] [Module LL X] {r : ℕ}
    (Phi : (Fin r → LL) →ₗ[LL] X) (I : Submodule LL X) (hI : LinearMap.range Phi = I)
    (hdim : finrank LL ↥I = r) : Function.Injective Phi := by
  have h1 := LinearMap.finrank_range_add_finrank_ker Phi
  rw [hI, hdim, Module.finrank_fin_fun] at h1
  have h0 : finrank LL ↥(LinearMap.ker Phi) = 0 := by omega
  rw [← LinearMap.ker_eq_bot]
  exact Submodule.finrank_eq_zero.1 h0

theorem comap_finrank {LL X : Type*} [Field LL] [AddCommGroup X] [Module LL X] {r : ℕ}
    (Phi : (Fin r → LL) →ₗ[LL] X) (hinj : Function.Injective Phi) (S : Submodule LL X) :
    finrank LL ↥(S.comap Phi) = finrank LL ↥(LinearMap.range Phi ⊓ S) := by
  rw [← Submodule.map_comap_eq]
  exact (Submodule.equivMapOfInjective _ hinj _).finrank_eq

section Count

variable {G : Type} [Group G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL : Type} [Field LL] [Algebra Qp LL]
    {V : Type} [AddCommGroup V] [Module LL V] [Module Qp V] [IsScalarTower Qp LL V]
    (ρ : Representation LL G V)

theorem count (τ : K →ₐ[Qp] LL) [FiniteDimensional LL ↥(DdRE PD ρ τ)] {r : ℕ}
    (Phi : (Fin r → LL) →ₗ[LL] V ⊗[Qp] BdR) (hinj : Function.Injective Phi)
    (Oth : Submodule LL (V ⊗[Qp] BdR)) (hIO : Disjoint (LinearMap.range Phi) Oth)
    (hcomap : ∀ a : ℤ, finrank LL ↥((FildR PD ρ τ a ⊔ Oth).comap Phi) = finrank LL ↥(FildR PD ρ τ a))
    (hdR' : finrank LL ↥(DdRE PD ρ τ) = r) (FC : ℤ → Submodule LL (V ⊗[Qp] BdR))
    (hFC : ∀ a, FC a = FildR PD ρ τ a ⊔ Oth)
    (S η m : ℕ) (upτ : Bool) (bτ : ℕ)
    (hj : JumpsInV PD ρ τ (deep upτ bτ S ∪ Set.Icc (-(η : ℤ)) η)) (hηb : η < bτ)
    (hm : ∑ a ∈ Finset.Icc (-(η : ℤ)) η, multV PD ρ τ a ≤ m) :
    (upτ = true →
      (∀ i : ℤ, i < -((bτ : ℤ) + S) → ∀ d : Fin r → LL, Phi d ∈ FC (-i) → d = 0) ∧
      r ≤ finrank LL ↥((FC bτ).comap Phi) + m) ∧
    (upτ = false → finrank LL ↥((FC (-(bτ : ℤ) + 1)).comap Phi) ≤ m) := by
  classical
  have : ∀ a, FiniteDimensional LL ↥(FildR PD ρ τ a) :=
    fun a => Submodule.finiteDimensional_of_le (inf_le_left : FildR PD ρ τ a ≤ DdRE PD ρ τ)
  obtain ⟨hi, hhi⟩ := fr_fildR_hi PD ρ τ
  obtain ⟨lo, hlo⟩ := fr_fildR_lo PD ρ τ
  have hmult0 : ∀ a, a ∉ deep upτ bτ S → a ∉ Set.Icc (-(η : ℤ)) η → multV PD ρ τ a = 0 :=
    fun a h1 h2 => fr_multV_of_not_jump PD ρ τ a (fun hJ => (hj a hJ).elim h1 h2)
  refine ⟨fun hup => ⟨?_, ?_⟩, fun hdn => ?_⟩
  · intro i hi' d hd
    rw [hFC] at hd
    have htop : FildR PD ρ τ ((bτ : ℤ) + S + 1) = ⊥ := by
      have hsum := fr_sum_multV PD ρ τ ((bτ : ℤ) + S + 1) (max hi ((bτ : ℤ) + S + 1)) (le_max_right _ _)
      have h0 : ∑ a ∈ Finset.Ico ((bτ : ℤ) + S + 1) (max hi ((bτ : ℤ) + S + 1)), multV PD ρ τ a = 0 :=
        Finset.sum_eq_zero fun a ha => by
          rw [Finset.mem_Ico] at ha
          refine hmult0 a (fun h => ?_) (fun h => ?_)
          · rw [hup] at h
            simp only [deep, if_true, Set.mem_Icc] at h
            omega
          · rw [Set.mem_Icc] at h
            omega
      rw [hhi _ (le_max_left _ _), finrank_bot, h0] at hsum
      exact Submodule.finrank_eq_zero.1 (by omega)
    have h1 : FildR PD ρ τ (-i) ⊔ Oth ≤ Oth :=
      sup_le (le_trans (fr_fildR_anti PD ρ τ (by omega)) (htop ▸ bot_le)) le_rfl
    have h0 := Submodule.disjoint_def.1 hIO _ ⟨d, rfl⟩ (h1 hd)
    exact hinj (by rw [h0, map_zero])
  · rw [hFC, hcomap]
    have hsum := fr_sum_multV PD ρ τ (min lo (-(η : ℤ))) bτ (by omega)
    have hsub : ∑ a ∈ Finset.Icc (-(η : ℤ)) η, multV PD ρ τ a =
        ∑ a ∈ Finset.Ico (min lo (-(η : ℤ))) bτ, multV PD ρ τ a := by
      refine Finset.sum_subset (fun a ha => ?_) (fun a ha hna => hmult0 a (fun h => ?_) (fun h => ?_))
      · rw [Finset.mem_Icc] at ha
        rw [Finset.mem_Ico]
        omega
      · rw [hup] at h
        simp only [deep, if_true, Set.mem_Icc] at h
        rw [Finset.mem_Ico] at ha
        omega
      · exact hna (by rw [Finset.mem_Icc]; exact h)
    rw [hlo _ (min_le_left _ _), hdR'] at hsum
    omega
  · rw [hFC, hcomap]
    have hsum := fr_sum_multV PD ρ τ (-(bτ : ℤ) + 1) (max hi ((η : ℤ) + 1)) (by omega)
    have hsub : ∑ a ∈ Finset.Icc (-(η : ℤ)) η, multV PD ρ τ a =
        ∑ a ∈ Finset.Ico (-(bτ : ℤ) + 1) (max hi ((η : ℤ) + 1)), multV PD ρ τ a := by
      refine Finset.sum_subset (fun a ha => ?_) (fun a ha hna => hmult0 a (fun h => ?_) (fun h => ?_))
      · rw [Finset.mem_Icc] at ha
        rw [Finset.mem_Ico]
        omega
      · rw [hdn] at h
        simp only [deep, Bool.false_eq_true, if_false, Set.mem_Icc] at h
        rw [Finset.mem_Ico] at ha
        omega
      · exact hna (by rw [Finset.mem_Icc]; exact h)
    rw [hhi _ (le_max_left _ _), finrank_bot] at hsum
    omega

end Count

theorem pt_root (D : D7) (HW : HWOf D.loc) {l : ℕ} [Fact l.Prime] (K LL : FinExt l) (hG : Good K 1 LL)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) (τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (ζ : ↥LL.1)
    (hpt : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ) : ζ ^ ((D.loc l).PD K).p = 1 ∧ ζ ≠ 1 := by
  have hp : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  obtain ⟨τs, hIs, -⟩ := hpt
  have hz1 : (D.loc l).ζQ 1 ^ l = 1 := by
    rw [(D.loc l).ζQ_succ 0, (D.loc l).ζQ_zero]
  have hmem : (D.loc l).ζQ 1 ∈ Ks K 1 :=
    le_sup_right (a := K0 K) (IntermediateField.subset_adjoin _ _ (by rw [pow_one]; exact hz1))
  have hy := hIs.2 ⟨_, hmem⟩ rfl
  have hyl : (⟨_, hmem⟩ : ↥(Ks K 1)) ^ l = 1 := Subtype.ext (by simpa using hz1)
  refine ⟨?_, ?_⟩
  · rw [hp, ← hy, ← map_pow, hyl, map_one]
  · intro h1
    rw [← hy] at h1
    have : (⟨_, hmem⟩ : ↥(Ks K 1)) = 1 := τs.toRingHom.injective (by rw [map_one]; exact h1)
    exact (D.loc l).ζQ_one (congrArg Subtype.val this)

theorem phi_zero (D : D7) (HW : HWOf D.loc) {l : ℕ} [Fact l.Prime] (hl : l ≠ 2) (K LL : FinExt l) (hG : Good K 1 LL)
    (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E) (c : ZMod (finrank ℚ_[l] ↥(K0 K))) (ζ : ↥LL.1)
    (hζ : ζ ^ ((D.loc l).PD K).p = 1 ∧ ζ ≠ 1) : PowerSeries.constantCoeff (((HW l).W K 1 LL hG).lev c ζ (((HW l).W K 1 LL hG).φA π')) = 0 := by
  have hs : ((HW l).W K 1 LL hG).s = 1 := (HW l).W_s K 1 LL hG
  obtain ⟨-, -, -, -, ⟨w2, hw2⟩, ⟨w3, hw3⟩, -, -⟩ := hp9
  have hQ : ((HW l).W K 1 LL hG).Q = (w2 : LetA _ _) * Formalism.MainNotions.DeltaInvariantLattices.Eat E π' := by rw [ModelFPf.Q_eq_q ((HW l).W K 1 LL hG) hs]; exact hw2
  have hE0 := ModelFPf.levE_zero ((HW l).W K 1 LL hG) (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') c hs (Units.inv_mul w2) hQ ζ hζ.1 hζ.2
  have hs1 : 1 ≤ sK l K := by
    have hl2 : 2 ≤ l := (Fact.out : l.Prime).two_le
    have hd := Formalism.MainNotions.N.Ln34.DvdPf.dvdCondition l hl K LL hG
    have he : 0 < eK K := Nat.pos_of_ne_zero fun h0 => by
      rw [h0, zero_dvd_iff] at hd
      omega
    exact Nat.div_pos (Nat.le_of_dvd (by omega) hd) he
  rw [hw3, map_mul, map_mul, map_pow, map_mul, map_mul, map_pow, hE0, zero_pow (by omega), mul_zero]

set_option maxHeartbeats 1000000 in
theorem range_eq (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hA : adm1 D HW F Cm) (hdR : DdRFull D) (hDi : DiRank D HW F Cm) {l : ℕ} [Fact l.Prime] (hl : l ≠ 2)
    (K LL : FinExt l) (hG : Good K 1 LL)
    (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E)
    (T : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL)) (hT : IsCrys ((D.loc l).PD K) T.ρ)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) (τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (ζ : ↥LL.1)
    (hpt : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ)
    (r : ℕ) (bL : Basis (Fin r) ↥(OL LL) (LcQ ((HW l).W K 1 LL hG) T π' c)) (rep : Fin r → ((HW l).W K 1 LL hG).DD T)
    (hrep : ∀ k, rep k ∈ NcS ((HW l).W K 1 LL hG) T (c - 1)) (hbrep : ∀ k, bL k = mkL ((HW l).W K 1 LL hG) T π' c (rep k) (hrep k))
:
    LinearMap.range (UniversalLiftFrames.Phi ((HW l).W K 1 LL hG) T c ζ rep) = (Formalism.MainNotions.DeltaInvariantLattices.ιDi ((HW l).W K 1 LL hG) T c) := by
  classical
  have hs : ((HW l).W K 1 LL hG).s = 1 := (HW l).W_s K 1 LL hG
  have hp : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  have hp4 : Formalism.MainNotions.DeltaInvariantLattices.p4 ((HW l).W K 1 LL hG) (Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG) T := (hA l K 1 LL hG).2.2.2.1 T hT
  have hζ := pt_root D HW K LL hG c τ ζ hpt
  obtain ⟨hc0, hc1⟩ := ModelFPf.levQ_pt ((HW l).W K 1 LL hG) hs c ζ hζ.1 hζ.2
  have hφπ := phi_zero D HW hl K LL hG π' E hp9 c ζ hζ
  obtain ⟨-, ⟨-, -, -, ⟨r0, b, hbΔ, hbu, -⟩, -⟩, -⟩ :=
    (hA l K 1 LL hG).2.2.2.2.2.2.2.2.1 T hT hs (by rw [hp]; exact hl)
  have hrN : ∀ k, rep k ∈ ((HW l).W K 1 LL hG).N T := fun k => ((mem_NcS ((HW l).W K 1 LL hG) T _ _).1 (hrep k)).1
  refine le_antisymm ?_ (span_le_range ((HW l).W K 1 LL hG) T c ζ hp4 hpt hc0 hc1 π' hφπ b hbΔ hbu bL rep hrep hbrep)
  rintro _ ⟨d, rfl⟩
  rw [UniversalLiftFrames.Phi_apply]
  exact Submodule.sum_mem _ fun k _ =>
    Submodule.smul_mem _ _ (ModelFPf.valAt_mem ((HW l).W K 1 LL hG) T c hp4 hpt (hrN k))

set_option maxHeartbeats 1000000 in
theorem setup_fd (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hA : adm1 D HW F Cm) (hdR : DdRFull D) (hDi : DiRank D HW F Cm) {l : ℕ} [Fact l.Prime] (hl : l ≠ 2)
    (K LL : FinExt l) (hG : Good K 1 LL)
    (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E)
    (T : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL)) (hT : IsCrys ((D.loc l).PD K) T.ρ)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) (τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (ζ : ↥LL.1)
    (hpt : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ)
    (r : ℕ) (bL : Basis (Fin r) ↥(OL LL) (LcQ ((HW l).W K 1 LL hG) T π' c)) (rep : Fin r → ((HW l).W K 1 LL hG).DD T)
    (hrep : ∀ k, rep k ∈ NcS ((HW l).W K 1 LL hG) T (c - 1)) (hbrep : ∀ k, bL k = mkL ((HW l).W K 1 LL hG) T π' c (rep k) (hrep k))
    (hrpos : 0 < r) :
    FiniteDimensional ↥LL.1 ↥(Formalism.MainNotions.DeltaInvariantLattices.ιDi ((HW l).W K 1 LL hG) T c) ∧ FiniteDimensional ↥LL.1 ↥(DdRE ((D.loc l).PD K) T.ρ τ) ∧
      finrank ↥LL.1 ↥(Formalism.MainNotions.DeltaInvariantLattices.ιDi ((HW l).W K 1 LL hG) T c) = r ∧ finrank ↥LL.1 ↥(DdRE ((D.loc l).PD K) T.ρ τ) = r := by
  have hr : r = finrank ↥LL.1 T.V := r_eq D HW F Cm hA hl K LL hG π' E hp9 T hT c r bL
  have hDiR := hDi l K LL hG T hT c
  have hdRR := hdR l K LL ⟨1, hG⟩ T hT τ
  exact ⟨Module.finite_of_finrank_pos (by omega), Module.finite_of_finrank_pos (by omega), by omega,
    by omega⟩

set_option maxHeartbeats 1000000 in
theorem setup_inj (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hA : adm1 D HW F Cm) (hdR : DdRFull D) (hDi : DiRank D HW F Cm) {l : ℕ} [Fact l.Prime] (hl : l ≠ 2)
    (K LL : FinExt l) (hG : Good K 1 LL)
    (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E)
    (T : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL)) (hT : IsCrys ((D.loc l).PD K) T.ρ)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) (τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (ζ : ↥LL.1)
    (hpt : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ)
    (r : ℕ) (bL : Basis (Fin r) ↥(OL LL) (LcQ ((HW l).W K 1 LL hG) T π' c)) (rep : Fin r → ((HW l).W K 1 LL hG).DD T)
    (hrep : ∀ k, rep k ∈ NcS ((HW l).W K 1 LL hG) T (c - 1)) (hbrep : ∀ k, bL k = mkL ((HW l).W K 1 LL hG) T π' c (rep k) (hrep k))
    (hrpos : 0 < r) : Function.Injective (UniversalLiftFrames.Phi ((HW l).W K 1 LL hG) T c ζ rep) := by
  obtain ⟨-, -, hI, -⟩ := setup_fd D HW F Cm hA hdR hDi hl K LL hG π' E hp9 T hT c τ ζ hpt r bL rep hrep hbrep hrpos
  exact inj_of_range _ _ (range_eq D HW F Cm hA hdR hDi hl K LL hG π' E hp9 T hT c τ ζ hpt r bL rep hrep hbrep) hI

set_option maxHeartbeats 1000000 in
theorem setup_match (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hA : adm1 D HW F Cm) (hdR : DdRFull D) (hDi : DiRank D HW F Cm) {l : ℕ} [Fact l.Prime] (hl : l ≠ 2)
    (K LL : FinExt l) (hG : Good K 1 LL)
    (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E)
    (T : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL)) (hT : IsCrys ((D.loc l).PD K) T.ρ)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) (τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (ζ : ↥LL.1)
    (hpt : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ)
    (r : ℕ) (bL : Basis (Fin r) ↥(OL LL) (LcQ ((HW l).W K 1 LL hG) T π' c)) (rep : Fin r → ((HW l).W K 1 LL hG).DD T)
    (hrep : ∀ k, rep k ∈ NcS ((HW l).W K 1 LL hG) T (c - 1)) (hbrep : ∀ k, bL k = mkL ((HW l).W K 1 LL hG) T π' c (rep k) (hrep k))
    (hrpos : 0 < r) :
    Disjoint (Formalism.MainNotions.DeltaInvariantLattices.ιDi ((HW l).W K 1 LL hG) T c) (⨆ (τ' : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (_ : τ' ≠ τ), DdRE ((D.loc l).PD K) T.ρ τ') ∧ ∀ a : ℤ, finrank ↥LL.1 ↥((Formalism.MainNotions.DeltaInvariantLattices.ιDi ((HW l).W K 1 LL hG) T c) ⊓ (FildR ((D.loc l).PD K) T.ρ τ a ⊔ (⨆ (τ' : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (_ : τ' ≠ τ), DdRE ((D.loc l).PD K) T.ρ τ'))) = finrank ↥LL.1 ↥(FildR ((D.loc l).PD K) T.ρ τ a) := by
  obtain ⟨h1, h2, hI, hD⟩ := setup_fd D HW F Cm hA hdR hDi hl K LL hG π' E hp9 T hT c τ ζ hpt r bL rep hrep hbrep hrpos
  have hp4 : Formalism.MainNotions.DeltaInvariantLattices.p4 ((HW l).W K 1 LL hG) (Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG) T := (hA l K 1 LL hG).2.2.2.1 T hT
  have : FiniteDimensional ℚ_[l] ↥K.1 := ((D.loc l).PD K).finK
  have hDO := oth_disj ((D.loc l).PD K) T.ρ τ
  have hDI := dR_le ((HW l).W K 1 LL hG) T c hp4 hpt
  obtain ⟨hIO, hFil⟩ := match_fil _ _ _ hDO (by rw [hI, hD]) hDI
  exact ⟨hIO, fun a => hFil _ inf_le_left⟩

theorem comap_count {LL X : Type*} [Field LL] [AddCommGroup X] [Module LL X] {r : ℕ}
    (Phi : (Fin r → LL) →ₗ[LL] X) (hinj : Function.Injective Phi) (I : Submodule LL X)
    (hre : LinearMap.range Phi = I) (S : Submodule LL X) {k : ℕ} (h : finrank LL ↥(I ⊓ S) = k) :
    finrank LL ↥(S.comap Phi) = k := by
  rw [comap_finrank Phi hinj, hre]
  exact h

theorem jumps_sub {G : Type} [Group G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR) {LL : Type} [Field LL] [Algebra Qp LL]
    {V : Type} [AddCommGroup V] [Module LL V] [Module Qp V] [IsScalarTower Qp LL V]
    (ρ : Representation LL G V) (τ : K →ₐ[Qp] LL) (S η : ℕ) (bτ : ℕ)
    (hj : JumpsInV PD ρ τ (deep false bτ S ∪ Set.Icc (-(η : ℤ)) η)) (hηb : η < bτ) :
    JumpsInV PD ρ τ (Set.Icc (-((bτ + S : ℕ) : ℤ)) ((bτ + S : ℕ) : ℤ)) := by
  intro a hJ
  rcases hj a hJ with h | h
  · simp only [deep, Bool.false_eq_true, if_false, Set.mem_Icc] at h
    rw [Set.mem_Icc]
    push_cast
    omega
  · rw [Set.mem_Icc] at h ⊢
    push_cast
    omega

set_option maxHeartbeats 1000000 in
theorem down_d (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hA : adm1 D HW F Cm) (hdR : DdRFull D) (hDi : DiRank D HW F Cm) {l : ℕ} [Fact l.Prime] (hl : l ≠ 2)
    (K LL : FinExt l) (hG : Good K 1 LL)
    (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E)
    (T : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL)) (hT : IsCrys ((D.loc l).PD K) T.ρ)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) (τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (ζ : ↥LL.1)
    (hpt : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ)
    (r : ℕ) (bL : Basis (Fin r) ↥(OL LL) (LcQ ((HW l).W K 1 LL hG) T π' c)) (rep : Fin r → ((HW l).W K 1 LL hG).DD T)
    (hrep : ∀ k, rep k ∈ NcS ((HW l).W K 1 LL hG) T (c - 1)) (hbrep : ∀ k, bL k = mkL ((HW l).W K 1 LL hG) T π' c (rep k) (hrep k))
    (S bτ : ℕ)
    (hjm : JumpsInV ((D.loc l).PD K) T.ρ τ (Set.Icc (-((bτ + S : ℕ) : ℤ)) ((bτ + S : ℕ) : ℤ))) (d : Fin r → ↥LL.1) :
    (UniversalLiftFrames.Phi ((HW l).W K 1 LL hG) T c ζ rep) d ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := ((D.loc l).PD K)) T τ (-((bτ : ℤ) + S)) := by
  have hp4 : Formalism.MainNotions.DeltaInvariantLattices.p4 ((HW l).W K 1 LL hG) (Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG) T := (hA l K 1 LL hG).2.2.2.1 T hT
  have hre := range_eq D HW F Cm hA hdR hDi hl K LL hG π' E hp9 T hT c τ ζ hpt r bL rep hrep hbrep
  have hmem : (UniversalLiftFrames.Phi ((HW l).W K 1 LL hG) T c ζ rep) d ∈ (Formalism.MainNotions.DeltaInvariantLattices.ιDi ((HW l).W K 1 LL hG) T c) := hre ▸ LinearMap.mem_range_self _ d
  have := ModelFPf.ιDi_le_top ((HW l).W K 1 LL hG) T (bτ + S) c hp4 hpt hjm hmem
  convert this using 2
  push_cast
  ring

set_option maxHeartbeats 1000000 in
theorem universal_filtration_holds (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hA : adm1 D HW F Cm) (hdR : DdRFull D) (hDi : DiRank D HW F Cm) {l : ℕ} [Fact l.Prime] (hl : l ≠ 2)
    (K LL : FinExt l) (hG : Good K 1 LL)
    (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E)
    (T : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL)) (hT : IsCrys ((D.loc l).PD K) T.ρ)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) (τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (ζ : ↥LL.1)
    (hpt : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ)
    (r : ℕ) (bL : Basis (Fin r) ↥(OL LL) (LcQ ((HW l).W K 1 LL hG) T π' c)) (rep : Fin r → ((HW l).W K 1 LL hG).DD T)
    (hrep : ∀ k, rep k ∈ NcS ((HW l).W K 1 LL hG) T (c - 1)) (hbrep : ∀ k, bL k = mkL ((HW l).W K 1 LL hG) T π' c (rep k) (hrep k))
    (S η m : ℕ) (upτ : Bool) (bτ : ℕ)
    (hj : JumpsInV ((D.loc l).PD K) T.ρ τ (deep upτ bτ S ∪ Set.Icc (-(η : ℤ)) η)) (hηb : η < bτ)
    (hm : ∑ a ∈ Finset.Icc (-(η : ℤ)) η, multV ((D.loc l).PD K) T.ρ τ a ≤ m) :
    (upτ = true →
      (∀ i : ℤ, i < -((bτ : ℤ) + S) → ∀ d : Fin r → ↥LL.1,
        UniversalLiftFrames.Phi ((HW l).W K 1 LL hG) T c ζ rep d ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := (D.loc l).PD K) T τ (-i) → d = 0) ∧
      r ≤ finrank ↥LL.1 ((Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := (D.loc l).PD K) T τ bτ).comap (UniversalLiftFrames.Phi ((HW l).W K 1 LL hG) T c ζ rep)) + m) ∧
    (upτ = false →
      finrank ↥LL.1 ((Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := (D.loc l).PD K) T τ (-(bτ : ℤ) + 1)).comap
        (UniversalLiftFrames.Phi ((HW l).W K 1 LL hG) T c ζ rep)) ≤ m ∧
      ∀ d : Fin r → ↥LL.1,
        UniversalLiftFrames.Phi ((HW l).W K 1 LL hG) T c ζ rep d ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := (D.loc l).PD K) T τ (-((bτ : ℤ) + S))) := by
  classical
  rcases Nat.eq_zero_or_pos r with hr0 | hrpos
  · subst hr0
    refine ⟨fun _ => ⟨fun i _ d _ => funext fun k => k.elim0, by omega⟩, fun _ => ⟨?_, fun d => ?_⟩⟩
    · exact (Submodule.finrank_le _).trans (by simp)
    · rw [show d = 0 from funext fun k => k.elim0, map_zero]
      exact Submodule.zero_mem _
  obtain ⟨-, hfd, -, hD⟩ := setup_fd D HW F Cm hA hdR hDi hl K LL hG π' E hp9 T hT c τ ζ hpt r bL rep hrep hbrep hrpos
  have hinj := setup_inj D HW F Cm hA hdR hDi hl K LL hG π' E hp9 T hT c τ ζ hpt r bL rep hrep hbrep hrpos
  obtain ⟨hIO, hFil⟩ := setup_match D HW F Cm hA hdR hDi hl K LL hG π' E hp9 T hT c τ ζ hpt r bL rep hrep hbrep hrpos
  have hre := range_eq D HW F Cm hA hdR hDi hl K LL hG π' E hp9 T hT c τ ζ hpt r bL rep hrep hbrep
  obtain ⟨cu, cd⟩ := count ((D.loc l).PD K) T.ρ τ (UniversalLiftFrames.Phi ((HW l).W K 1 LL hG) T c ζ rep) hinj (⨆ (τ' : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (_ : τ' ≠ τ), DdRE ((D.loc l).PD K) T.ρ τ') (hre ▸ hIO)
    (fun a => comap_count (UniversalLiftFrames.Phi ((HW l).W K 1 LL hG) T c ζ rep) hinj (Formalism.MainNotions.DeltaInvariantLattices.ιDi ((HW l).W K 1 LL hG) T c) hre _ (hFil a)) hD (Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := ((D.loc l).PD K)) T τ)
    (fun a => rfl) S η m upτ bτ hj hηb hm
  refine ⟨cu, fun hdn => ⟨cd hdn, ?_⟩⟩
  subst hdn
  exact down_d D HW F Cm hA hdR hDi hl K LL hG π' E hp9 T hT c τ ζ hpt r bL rep hrep hbrep S bτ
    (jumps_sub ((D.loc l).PD K) T.ρ τ S η bτ hj hηb)

end Formalism.MainNotions.N.Ln34.UniversalFiltration

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalFiltrationHolds =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftFiltration =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftFiltration", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.Imports\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DdRFull\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalFiltrationHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

set_option synthInstance.maxHeartbeats 400000

namespace Formalism.MainNotions.N.Ln34.UniversalLiftFrames

end Formalism.MainNotions.N.Ln34.UniversalLiftFrames
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftFiltration =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftRingMembership =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftRingMembership", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LamPS\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DvdCondition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfPt\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.GeneratorBoundOfHypotheses\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.KapPiPf\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfC\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfG\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3downPfFildRConst\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3upPfFilCAnti\nimport Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowUniformizerFactorisation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.UniversalLiftFrames

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.N.Ln34 Formalism.MainNotions.ElementDenominator Formalism.MainNotions.ElementDenominator.CongruenceModules PowerSeries


open Formalism.MainNotions.N.Ln34.ModelFPf in
theorem universal_lift_ring_membership (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hA : adm1 D HW F Cm) {l : ℕ} [Fact l.Prime] (hl : l ≠ 2) (K LL : FinExt l) (hG : Good K 1 LL)
    (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E) :
    Formalism.MainNotions.DeltaInvariantLattices.Eat E π' ∈ ((HW l).W K 1 LL hG).AΔ ∧ π' ∈ ((HW l).W K 1 LL hG).AΔ ∧
    IsUnit (algebraMap (LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) ((HW l).W K 1 LL hG).EE (Formalism.MainNotions.DeltaInvariantLattices.Eat E π')) ∧
    IsUnit (algebraMap (LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) ((HW l).W K 1 LL hG).EE π') ∧
    ((HW l).W K 1 LL hG).gamK = ((HW l).W K 1 LL hG).gam ∧
    (∃ uE ∈ ((HW l).W K 1 LL hG).AΔ, ∃ uE' ∈ ((HW l).W K 1 LL hG).AΔ, uE' * uE = 1 ∧
      ((HW l).W K 1 LL hG).γA ((HW l).W K 1 LL hG).gam (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') = uE * Formalism.MainNotions.DeltaInvariantLattices.Eat E π') ∧
    (∃ uπ ∈ ((HW l).W K 1 LL hG).AΔ, ((HW l).W K 1 LL hG).γA ((HW l).W K 1 LL hG).gam π' = π' * uπ) := by
  have hs : ((HW l).W K 1 LL hG).s = 1 := (HW l).W_s K 1 LL hG
  have hp : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  obtain ⟨hπΔ, -, ⟨w0, hw0⟩, -, ⟨w, hw⟩, -, ⟨w2, hw2⟩, -⟩ := hp9
  have hl2 : 2 ≤ l := (Fact.out : l.Prime).two_le
  have hd := Formalism.MainNotions.N.Ln34.DvdPf.dvdCondition l hl K LL hG
  have he : 0 < eK K := Nat.pos_of_ne_zero fun h0 => by
    rw [h0, zero_dvd_iff] at hd
    omega
  have hsK : 1 ≤ sK l K := Nat.div_pos (Nat.le_of_dvd (by omega) hd) he
  have hEΔ : Formalism.MainNotions.DeltaInvariantLattices.Eat E π' ∈ ((HW l).W K 1 LL hG).AΔ := by
    intro δ hδ
    funext i
    show ((HW l).W K 1 LL hG).γ₀ δ (Polynomial.aeval (π' i) (E i)) = Polynomial.aeval (π' i) (E i)
    rw [← Polynomial.aeval_algHom_apply]
    exact congrArg (fun t => Polynomial.aeval t (E i)) (congrFun (hπΔ δ hδ) i)
  have hπu : IsUnit (algebraMap (LetA _ _) ((HW l).W K 1 LL hG).EE π') := by
    rw [hw0, map_mul, map_pow]
    exact (w0.isUnit.map _).mul (((HW l).W K 1 LL hG).EE_π.pow _)
  have hEu : IsUnit (algebraMap (LetA _ _) ((HW l).W K 1 LL hG).EE (Formalism.MainNotions.DeltaInvariantLattices.Eat E π')) := by
    have hq := Formalism.MainNotions.LiftingTheory.liftb_q_unit ((HW l).W K 1 LL hG)
    rw [hw, map_mul] at hq
    exact isUnit_of_mul_isUnit_right hq
  obtain ⟨u, hu, hγ⟩ := gam_unit ((HW l).W K 1 LL hG) π' E hsK w2 hw2 w0 hw0
  have hpO : (((D.loc l).PD K).p : ↥(OL LL)) ≠ 0 := fun h0 => by
    apply p_ne_zero ((HW l).W K 1 LL hG)
    rw [← map_natCast (algebraMap ↥(OL LL) ↥LL.1), h0, map_zero]
  have hnz := Eπ_nzd ((HW l).W K 1 LL hG) hw (q0_ne_two_and_ne_q_and_ne_d ((HW l).W K 1 LL hG) hpO)
  have huΔ := u_mem_AΔ ((HW l).W K 1 LL hG) hEΔ hnz hγ
  have hu'Δ := inv_mem_AΔ ((HW l).W K 1 LL hG) huΔ hu.val_inv_mul
  have hnzπ : ∀ a : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K)), a * π' = 0 → a = 0 := by
    intro a ha
    apply ((HW l).W K 1 LL hG).EE_inj
    have h1 := congrArg (algebraMap (LetA _ _) ((HW l).W K 1 LL hG).EE) ha
    rw [map_mul, map_zero] at h1
    rw [map_zero]
    exact hπu.mul_left_eq_zero.1 h1
  have hγπ : ((HW l).W K 1 LL hG).γA ((HW l).W K 1 LL hG).gam π' =
      (1 + (w2 : LetA _ _) * Formalism.MainNotions.DeltaInvariantLattices.Eat E π') * π' := by
    rw [sub_eq_iff_eq_add] at hw2
    rw [hw2]
    ring
  exact ⟨hEΔ, hπΔ, hEu, hπu, ((HW l).W K 1 LL hG).gamK_eq_one hs (by rw [hp]; exact hl),
    ⟨u, huΔ, _, hu'Δ, hu.val_inv_mul, hγ⟩,
    ⟨_, u_mem_AΔ ((HW l).W K 1 LL hG) hπΔ hnzπ hγπ, by rw [hγπ]; ring⟩⟩

theorem universal_lift_points (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hA : adm1 D HW F Cm) {l : ℕ} [Fact l.Prime] (hl : l ≠ 2) (K LL : FinExt l) (hG : Good K 1 LL)
    (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) (τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (ζ : ↥LL.1)
    (hpt : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ) :
    constantCoeff (((HW l).W K 1 LL hG).lev c ζ (Formalism.MainNotions.DeltaInvariantLattices.Eat E π')) = 0 ∧
    coeff 1 (((HW l).W K 1 LL hG).lev c ζ (Formalism.MainNotions.DeltaInvariantLattices.Eat E π')) ≠ 0 ∧
    constantCoeff (((HW l).W K 1 LL hG).lev c ζ π') ≠ 0 ∧
    ∀ a, ((HW l).W K 1 LL hG).lev c ζ (((HW l).W K 1 LL hG).γA ((HW l).W K 1 LL hG).gam a) =
      rescale (algebraMap ↥(OL LL) ↥LL.1 ((Formalism.MainNotions.DeltaInvariantLattices.uU ((HW l).W K 1 LL hG) : (↥(OL LL))ˣ) : ↥(OL LL)))
        (((HW l).W K 1 LL hG).lev c ζ a) := by
  have hs : ((HW l).W K 1 LL hG).s = 1 := (HW l).W_s K 1 LL hG
  have hp : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  have hζ : IsPrimitiveRoot ζ ((D.loc l).PD K).p := by
    rw [hp]
    exact framepf_pt_prim D HW hG c ζ τ hpt
  obtain ⟨-, -, ⟨w0, hw0⟩, -, ⟨w, hw⟩, -, -, -⟩ := hp9
  obtain ⟨e₁, he₁, he₁0⟩ :=
    DescentValuation.u3downPf_lev_E ((HW l).W K 1 LL hG) c ζ hζ (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') w hw
  refine ⟨?_, ?_, DescentValuation.u3downPf_cc_π' ((HW l).W K 1 LL hG) c ζ hζ π' (sK l K) w0 hw0, ?_⟩
  · rw [he₁]
    simp
  · rw [he₁, PowerSeries.coeff_succ_X_mul, PowerSeries.coeff_zero_eq_constantCoeff_apply]
    exact he₁0
  · intro a
    have hg := ((HW l).W K 1 LL hG).gam_gen
    exact ((Cm l).C K 1 LL hG).tie.lev_Γ _ c ζ ζ 1 1 (by rw [pow_one]; exact hζ)
      (le_of_eq (by simpa [hs] using hg.symm)) (pow_one ζ).symm a

theorem embeddings_card_le_degree (D : D7) (HW : HWOf D.loc) {l : ℕ} [Fact l.Prime] (K LL : FinExt l) (hG : Good K 1 LL)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) :
    ∃ τs : Finset (↥K.1 →ₐ[ℚ_[l]] ↥LL.1), (∀ τ ζ, Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ → τ ∈ τs) ∧
      τs.card ≤ finrank ↥(K0 K) ↥K.1 := by
  classical
  haveI : FiniteDimensional ℚ_[l] ↥K.1 := K.2
  haveI : Finite (↥K.1 →ₐ[ℚ_[l]] ↥LL.1) := by
    apply Nat.finite_of_card_ne_zero
    rw [GenPf.natCard_emb K LL hG]
    exact (Module.finrank_pos (R := ℚ_[l]) (M := ↥K.1)).ne'
  haveI := Fintype.ofFinite (↥K.1 →ₐ[ℚ_[l]] ↥LL.1)
  haveI : FiniteDimensional ↥(K0 K) ↥K.1 := Module.Finite.right ℚ_[l] ↥(K0 K) ↥K.1
  refine ⟨Finset.univ.filter (fun τ => Formalism.MainNotions.DeltaInvariantLattices.OverLetter ((HW l).W K 1 LL hG) τ c),
    fun τ ζ hpt => Finset.mem_filter.2 ⟨Finset.mem_univ _, u3upPf_pt_over D HW hG c ζ τ hpt⟩, ?_⟩
  have h := kapPiPf_card ((HW l).W K 1 LL hG) c
  rw [Nat.card_eq_fintype_card, Fintype.card_subtype] at h
  exact h

end Formalism.MainNotions.N.Ln34.UniversalLiftFrames
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftRingMembership =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U1r2Basis =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U1r2Basis", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LevelValueSmul\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ConstantCoeffQZeroEqP\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DescentValuation\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfPt\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelQPfD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

set_option synthInstance.maxHeartbeats 400000

namespace Formalism.MainNotions.N.Ln34.UniversalLiftFrames

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.N.Ln34 Formalism.MainNotions.ElementDenominator Formalism.MainNotions.ElementDenominator.CongruenceModules PowerSeries

theorem u1r2_pt (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hA : adm1 D HW F Cm) {l : ℕ} [Fact l.Prime] (K LL : FinExt l) (hG : Good K 1 LL)
    (T : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL)) (hT : IsCrys ((D.loc l).PD K) T.ρ)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) (τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (ζ : ↥LL.1)
    (hpt : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ) :
    LevelExpansions.V.PtHyp (W := (HW l).W K 1 LL hG) T c ζ := by
  have hs : ((HW l).W K 1 LL hG).s = 1 := (HW l).W_s K 1 LL hG
  have hpl : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  have hz : IsPrimitiveRoot ζ ((D.loc l).PD K).p := by
    rw [hpl]
    exact framepf_pt_prim D HW hG c ζ τ hpt
  obtain ⟨hQ0, hQ1⟩ := framepf_Q_at ((HW l).W K 1 LL hG) hs c ζ hz
  obtain ⟨-, -, -, p4, -⟩ := hA l K 1 LL hG
  have hone : ∃ j : ℕ, IsPrimitiveRoot (1 : ↥LL.1) (((D.loc l).PD K).p ^ j) := ⟨0, by simp⟩
  have hπ1 : ∀ i, PowerSeries.constantCoeff (((HW l).W K 1 LL hG).lev i 1 letπ) = 0 := fun i => by
    rw [CrystallineExponents.cc_lev_pi _ i 1 hone, sub_self]
  have hX : ((HW l).W K 1 LL hG).X = letπ := by simp [LocWach.X, hs]
  refine ⟨hT, ⟨1, by simpa using hz⟩, hz.pow_eq_one, hQ0, hQ1, fun x k hk => ?_,
    fun x hx => ((HW l).W K 1 LL hG).N_φ T x hx⟩
  exact (((p4 T hT).1 (c - 1) 1 ⟨0, one_pow _⟩ (by rw [hX]; exact hπ1 _)).1 x k).2 hk

theorem u1r2_basis (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hA : adm1 D HW F Cm) {l : ℕ} [Fact l.Prime] (hl : l ≠ 2) (K LL : FinExt l) (hG : Good K 1 LL)
    (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E)
    (T : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL)) (hT : IsCrys ((D.loc l).PD K) T.ρ)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) :
    ∃ (r : ℕ) (bL : Basis (Fin r) ↥(OL LL) (LcQ ((HW l).W K 1 LL hG) T π' c)) (rep : Fin r → ((HW l).W K 1 LL hG).DD T)
      (hrep : ∀ k, rep k ∈ NcS ((HW l).W K 1 LL hG) T (c - 1)), ∀ k, bL k = mkL ((HW l).W K 1 LL hG) T π' c (rep k) (hrep k) := by
  classical
  have hs : ((HW l).W K 1 LL hG).s = 1 := (HW l).W_s K 1 LL hG
  have hpl : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  have hp2 : ((D.loc l).PD K).p ≠ 2 := by rw [hpl]; exact hl
  have p9 := (hA l K 1 LL hG).2.2.2.2.2.2.2.2.1
  have h92 := (p9 T hT hs hp2).2.1
  obtain ⟨π₀, E₀, -, hm⟩ := h92
  obtain ⟨⟨r, b, hbΔ, hbu, hbe⟩, -⟩ := hm
  have hw := hp9.2.2.1
  obtain ⟨w₁, hw₁⟩ := hw
  have hs1 : 1 ≤ sK l K := DescentValuation.u3downPf_sK_pos hl K LL hG
  have hBL := MQ.basis_L ((HW l).W K 1 LL hG) T π' (sK l K) hs1 w₁ hw₁ hp9.2.1 b hbΔ hbu hbe c
  obtain ⟨bL⟩ := hBL
  have hsurj : ∀ k, ∃ y : ((HW l).W K 1 LL hG).DD T, ∃ hy : y ∈ NcS ((HW l).W K 1 LL hG) T (c - 1),
      bL k = mkL ((HW l).W K 1 LL hG) T π' c y hy := by
    intro k
    have hq := Submodule.Quotient.mk_surjective _ (bL k)
    obtain ⟨⟨y, hy⟩, hyk⟩ := hq
    exact ⟨y, hy, hyk.symm⟩
  choose rep hrep hbr using hsurj
  exact ⟨r, bL, rep, hrep, hbr⟩

end Formalism.MainNotions.N.Ln34.UniversalLiftFrames

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U1r2Basis =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftValuationPoints =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftValuationPoints", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DownSlotProposition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U1r2Basis\nimport Formalism.SharpRestriction.LevelLetterCocycles.MapCompZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LevelValueSmul\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

set_option synthInstance.maxHeartbeats 400000

namespace Formalism.MainNotions.N.Ln34.UniversalLiftFrames

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.N.Ln34 Formalism.MainNotions.ElementDenominator Formalism.MainNotions.ElementDenominator.CongruenceModules PowerSeries

theorem universal_lift_valuation (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hA : adm1 D HW F Cm) {l : ℕ} [Fact l.Prime] (hl : l ≠ 2) (K LL : FinExt l) (hG : Good K 1 LL)
    (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E)
    (T : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL)) (hT : IsCrys ((D.loc l).PD K) T.ρ)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) (τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (ζ : ↥LL.1)
    (hpt : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ) :
    (∀ x y, x ∈ NcS ((HW l).W K 1 LL hG) T (c - 1) → y ∈ NcS ((HW l).W K 1 LL hG) T (c - 1) →
      valAt ((HW l).W K 1 LL hG) T c ζ (x + y) = valAt ((HW l).W K 1 LL hG) T c ζ x + valAt ((HW l).W K 1 LL hG) T c ζ y) ∧
    (∀ (a : ↥(OL LL)) x, x ∈ NcS ((HW l).W K 1 LL hG) T (c - 1) →
      valAt ((HW l).W K 1 LL hG) T c ζ (a • x) = algebraMap ↥(OL LL) ↥LL.1 a • valAt ((HW l).W K 1 LL hG) T c ζ x) := by
  have hP := u1r2_pt D HW F Cm hA K LL hG T hT c τ ζ hpt
  exact ⟨fun x y hx hy => (LevelExpansions.V.valL ((Cm l).C K 1 LL hG).tie T hP).map_add ⟨x, hx⟩ ⟨y, hy⟩,
    fun a x hx => (LevelExpansions.V.valL ((Cm l).C K 1 LL hG).tie T hP).map_smul a ⟨x, hx⟩⟩

theorem universal_lift_valuation_points (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hA : adm1 D HW F Cm) {l : ℕ} [Fact l.Prime] (hl : l ≠ 2) (K LL : FinExt l) (hG : Good K 1 LL)
    (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E)
    (T : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL)) (hT : IsCrys ((D.loc l).PD K) T.ρ)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) (τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (ζ ζ' : ↥LL.1)
    (hpt : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ) (hpt' : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ' τ)
    (x : ((HW l).W K 1 LL hG).DD T) (hx : x ∈ NcS ((HW l).W K 1 LL hG) T (c - 1)) :
    valAt ((HW l).W K 1 LL hG) T c ζ x = valAt ((HW l).W K 1 LL hG) T c ζ' x := by
  have hP := u1r2_pt D HW F Cm hA K LL hG T hT c τ ζ hpt
  have hP' := u1r2_pt D HW F Cm hA K LL hG T hT c τ ζ' hpt'
  have hxN := ((mem_NcS _ T (c - 1) x).1 hx).1
  exact (LevelExpansions.V.valAt_eq ((Cm l).C K 1 LL hG).tie T hP ⟨x, hxN⟩).trans
    (LevelExpansions.V.valAt_eq ((Cm l).C K 1 LL hG).tie T hP' ⟨x, hxN⟩).symm

end Formalism.MainNotions.N.Ln34.UniversalLiftFrames
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftValuationPoints =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U1linkPf =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U1linkPf", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.SecondPropositionHypothesis\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.GeneratorBoundOfHypotheses\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3upPfFilCAnti\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftFiltration\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftFrame\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftRingMembership\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UniversalLiftValuationPoints\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section



namespace Formalism.MainNotions.N.Ln34

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.ElementDenominator Formalism.MainNotions.ElementDenominator.CongruenceModules


theorem u1link_pf : FirstFrameOfModels := by
  intro D HW F Cm hA hdR hDi hML hMF
  intro l _ hl K LL hG π' E hp9 T₁ T₂ Fm S η m h' up b c α β hIF hHyp
  have hc2 := hHyp.2.1
  have hj2 := hHyp.2.2.2.2.1
  have hηb := hHyp.2.2.2.2.2.1
  have hbS := hHyp.2.2.2.2.2.2.1
  have hh' := hHyp.2.2.2.2.2.2.2.1
  have hm := hHyp.2.2.2.2.2.2.2.2.1
  have hjI : ∀ τ, JumpsInV ((D.loc l).PD K) T₂.ρ τ (Set.Icc (-(h' : ℤ)) h') := by
    intro τ a ha
    have hd := hj2 τ a ha
    have hb := hbS τ
    have hη := hηb τ
    rw [Set.mem_Icc]
    rcases hd with hd | hd
    · unfold deep at hd
      split_ifs at hd <;> (rw [Set.mem_Icc] at hd; constructor <;> omega)
    · rw [Set.mem_Icc] at hd
      constructor <;> omega
  have hM := u3upPf_MK_pos hl K LL hG h' hh'
  have hMF2 := hMF l hl K LL hG π' E hp9 h' hh' c α β hIF T₂ hc2 hjI
  have hML2 := hML l hl K LL hG π' E hp9 h' hh' T₂ hc2 hjI c
  have hR := UniversalLiftFrames.universal_lift_ring_membership D HW F Cm hA hl K LL hG π' E hp9
  have hT := UniversalLiftFrames.embeddings_card_le_degree D HW K LL hG c
  have hτs := hT.choose_spec.1
  have hcard := hT.choose_spec.2
  have hB := _root_.Formalism.MainNotions.N.Ln34.UniversalLiftFrames.u1r2_basis D HW F Cm hA hl K LL hG π' E hp9 T₂ hc2 c
  have hrep := hB.choose_spec.choose_spec.choose_spec.choose
  have hbrep := hB.choose_spec.choose_spec.choose_spec.choose_spec
  refine UniversalLiftFrames.universal_lift_frame (W := (HW l).W K 1 LL hG) (PD := (D.loc l).PD K) (GenPf.isDVR (D.loc l) LL)
    (GenPf.isFractionRing LL) Fm (Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG) π'
    (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') h' (MK l K h') (sigA l (sK l K) h') c S η m up b α β hIF hc2 hjI hMF2 hML2 hM
    hR.1 hR.2.1 hR.2.2.1 hR.2.2.2.1 hR.2.2.2.2.1 hR.2.2.2.2.2.1 hR.2.2.2.2.2.2 hT.choose hτs hcard ?_ ?_ hbS ?_ ?_ ?_ hB.choose hB.choose_spec.choose hB.choose_spec.choose_spec.choose hrep hbrep ?_ ?_ ?_ ?_ ?_ ?_ ?_ hHyp
  · exact fun τ ζ hpt => u3upPf_pt_over D HW hG c ζ τ hpt
  · exact fun τ => Nat.lt_of_le_of_lt (Nat.zero_le _) (hηb τ)
  · exact fun τ ζ hpt => ⟨(UniversalLiftFrames.universal_lift_points D HW F Cm hA hl K LL hG π' E hp9 c τ ζ hpt).1,
      (UniversalLiftFrames.universal_lift_points D HW F Cm hA hl K LL hG π' E hp9 c τ ζ hpt).2.1⟩
  · exact fun τ ζ hpt => (UniversalLiftFrames.universal_lift_points D HW F Cm hA hl K LL hG π' E hp9 c τ ζ hpt).2.2.1
  · exact fun τ ζ hpt => (UniversalLiftFrames.universal_lift_points D HW F Cm hA hl K LL hG π' E hp9 c τ ζ hpt).2.2.2
  · exact fun τ ζ hpt => (UniversalLiftFrames.universal_lift_valuation D HW F Cm hA hl K LL hG π' E hp9 T₂ hc2 c τ ζ hpt).1
  · exact fun τ ζ hpt => (UniversalLiftFrames.universal_lift_valuation D HW F Cm hA hl K LL hG π' E hp9 T₂ hc2 c τ ζ hpt).2
  · exact fun τ ζ ζ' hpt hpt' k => UniversalLiftFrames.universal_lift_valuation_points D HW F Cm hA hl K LL hG π' E hp9 T₂ hc2 c τ ζ ζ' hpt hpt'
      (hB.choose_spec.choose_spec.choose k) (hrep k)
  · exact fun τ ζ hpt hup => ((_root_.Formalism.MainNotions.N.Ln34.UniversalFiltration.universal_filtration_holds D HW F Cm hA hdR hDi hl K LL hG π' E hp9 T₂ hc2 c τ ζ hpt
      hB.choose hB.choose_spec.choose hB.choose_spec.choose_spec.choose hrep hbrep S η m (up τ) (b τ) (hj2 τ) (hηb τ) (hm τ)).1 hup).1
  · exact fun τ ζ hpt hup => ((_root_.Formalism.MainNotions.N.Ln34.UniversalFiltration.universal_filtration_holds D HW F Cm hA hdR hDi hl K LL hG π' E hp9 T₂ hc2 c τ ζ hpt
      hB.choose hB.choose_spec.choose hB.choose_spec.choose_spec.choose hrep hbrep S η m (up τ) (b τ) (hj2 τ) (hηb τ) (hm τ)).1 hup).2
  · exact fun τ ζ hpt hup => ((_root_.Formalism.MainNotions.N.Ln34.UniversalFiltration.universal_filtration_holds D HW F Cm hA hdR hDi hl K LL hG π' E hp9 T₂ hc2 c τ ζ hpt
      hB.choose hB.choose_spec.choose hB.choose_spec.choose_spec.choose hrep hbrep S η m (up τ) (b τ) (hj2 τ) (hηb τ) (hm τ)).2 hup).1
  · exact fun τ ζ hpt hup => ((_root_.Formalism.MainNotions.N.Ln34.UniversalFiltration.universal_filtration_holds D HW F Cm hA hdR hDi hl K LL hG π' E hp9 T₂ hc2 c τ ζ hpt
      hB.choose hB.choose_spec.choose hB.choose_spec.choose_spec.choose hrep hbrep S η m (up τ) (b τ) (hj2 τ) (hηb τ) (hm τ)).2 hup).2

end Formalism.MainNotions.N.Ln34
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U1linkPf =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.MainFinal =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.MainFinal", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DdRFull\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ElementDenominator\npublic import Formalism.SharpRestriction.LevelLetterCocycles.FontExAll\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.MainPf\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U1linkPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.ElementDenominator Formalism.MainNotions.ElementDenominator.CongruenceModules

theorem integrality_from_metric_of_large_constant :
    ∀ (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
      (CA CB CK C : ℝ), 160 ≤ C → FontExAll D HW F → DdRFull D → DiRank D HW F Cm →
        IntegralityFromMetric D HW F Cm CA CB CK C :=
  lifting_theorem_of_uniform_link u1link_pf

end Formalism.MainNotions.N.Ln34

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.MainFinal =====
