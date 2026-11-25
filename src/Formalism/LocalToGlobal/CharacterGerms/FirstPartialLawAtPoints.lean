module

public import Formalism.LocalToGlobal.CharacterGerms.IntSubst
public import Formalism.LocalToGlobal.CharacterGerms.RowTieCartAdd
public import Formalism.LocalToGlobal.CharacterGerms.ConstantCoeffTripleSubstitution
public import Formalism.LocalToGlobal.CharacterGerms.RowTieJet
public import Formalism.LocalToGlobal.CharacterGerms.TripleSubstSecondCoordinate
import Formalism.LocalToGlobal.ProjectiveLattices.SubConstMemOrig
import Formalism.LocalToGlobal.CharacterGerms.SubstSubst
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.CharacterGerms.RowTieValU, Formalism.LocalToGlobal.CharacterGerms.FirstPartialLawAtPoints

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieValU =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.RowTieValU", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.IntSubst\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieCartAdd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.ProjectiveLattices.SubConstMemOrig\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

open Formalism.IncomingBounds ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ Formalism.L2.Pj

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ} {d : ℕ} [NeZero d]
  {Orb : Type} [Fintype Orb] {I : Orb → Fin 2 → Type} [∀ o g, Fintype (I o g)]

def IsIU (V : VF C) {σ : Type} (U : MvPowerSeries σ C) : Prop :=
  IntS V U ∧ V.v (MvPowerSeries.constantCoeff U) = 0

theorem IsIU.one {σ : Type} : IsIU V (1 : MvPowerSeries σ C) := by
  refine ⟨fun μ => ?_, ?_⟩
  · unfold VF.Ge
    rw [MvPowerSeries.coeff_one]
    split_ifs
    · rw [AddValuation.map_one]; exact le_rfl
    · rw [AddValuation.map_zero]; exact le_top
  · rw [map_one, AddValuation.map_one]

theorem IsIU.mul {σ : Type} {U U' : MvPowerSeries σ C} (h : IsIU V U) (h' : IsIU V U') : IsIU V (U * U') :=
  ⟨IntS.mul h.1 h'.1, by rw [map_mul, AddValuation.map_mul, h.2, h'.2, add_zero]⟩

section Defs

variable (Y : FBChart C V O dd) (p : ∀ o, PairData Y d (I o))

end Defs

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieValU =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.FirstPartialLawAtPoints =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.FirstPartialLawAtPoints", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.ConstantCoeffTripleSubstitution\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieValU\nimport Formalism.LocalToGlobal.CharacterGerms.RowTieCartAdd\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieJet\nimport Formalism.LocalToGlobal.CharacterGerms.SubstSubst\npublic import Formalism.LocalToGlobal.CharacterGerms.TripleSubstSecondCoordinate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Presheaf\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.LocalToGlobal.ProjectiveLattices.SubConstMemOrig\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

open Formalism.IncomingBounds ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ Formalism.L2.Pj

namespace VP

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ} {τ : Type}

variable (Y : FBChart C V O dd)

section Three

variable {a b c : Fin dd → MvPowerSeries τ C} (ha : ∀ i, MvPowerSeries.constantCoeff (a i) = 0)
  (hb : ∀ i, MvPowerSeries.constantCoeff (b i) = 0) (hc : ∀ i, MvPowerSeries.constantCoeff (c i) = 0)

include ha hb hc

theorem first_partial_law_at_points : MvPowerSeries.subst (P3 a b c) Y.B.ph1 =
    mvExp (hAt Y a c + hAt Y b c - hAt Y (addAt Y a b) c) := by
  have h := Y.gauge.ph1
  rw [toK_eq, eval_two_points_eq_subst _ _ _, eval_two_points_eq_subst _ _ _, eval_two_points_eq_subst _ _ _, addOf_eq] at h
  have k0 := cc_pt (C := C) (dd := dd) (0 : Fin 3)
  have k1 := cc_pt (C := C) (dd := dd) (1 : Fin 3)
  have k2 := cc_pt (C := C) (dd := dd) (2 : Fin 3)
  have hcc : MvPowerSeries.constantCoeff (hAt Y (pt C dd (0 : Fin 3)) (pt C dd (2 : Fin 3)) +
      hAt Y (pt C dd (1 : Fin 3)) (pt C dd (2 : Fin 3)) -
      hAt Y (addAt Y (pt C dd (0 : Fin 3)) (pt C dd (1 : Fin 3))) (pt C dd (2 : Fin 3))) = 0 := by
    rw [map_sub, map_add (f := _), cc_hAt Y k0 k2, cc_hAt Y k1 k2, cc_hAt Y (cc_addAt Y k0 k1) k2]
    simp
  have h' : Y.B.ph1 = FB.expS C (hAt Y (pt C dd (0 : Fin 3)) (pt C dd (2 : Fin 3)) +
      hAt Y (pt C dd (1 : Fin 3)) (pt C dd (2 : Fin 3)) -
      hAt Y (addAt Y (pt C dd (0 : Fin 3)) (pt C dd (1 : Fin 3))) (pt C dd (2 : Fin 3))) := h
  have hP := constantCoeff_triple_substitution ha hb hc
  rw [h', expS_eq _ hcc, subst_exp hP hcc, subst_sub' hP, subst_add' hP, hAt_subst Y hP k0 k2, hAt_subst Y hP k1 k2,
    hAt_subst Y hP (cc_addAt Y k0 k1) k2, triple_subst_first_coordinate ha hb hc, triple_subst_second_coordinate ha hb hc, triple_subst_third_coordinate ha hb hc]
  congr 3
  funext i
  rw [addAt_subst Y hP k0 k1, triple_subst_first_coordinate ha hb hc, triple_subst_second_coordinate ha hb hc]

end Three

theorem hAt_zero_left {c : Fin dd → MvPowerSeries τ C} (hc : ∀ i, MvPowerSeries.constantCoeff (c i) = 0) :
    hAt Y (fun _ => 0) c = 0 := by
  have hA : MvPowerSeries.HasSubst (fun q : Fin 1 × Fin dd => c q.2) := by
    first
      | exact ⟨fun q => by rw [hc q.2]; exact IsNilpotent.zero,
          by first
            | exact fun d => Set.toFinite _
            | (simp; intro d; exact Set.toFinite _)⟩
  have h1 : MvPowerSeries.subst (P2 (0 : Pt C 1 dd) (pt C dd 0)) Y.h = 0 := by
    rw [← eval_two_points_eq_subst _ _ _]
    exact Y.gauge.ax0
  have h3 : hAt Y (fun _ => 0) c =
      MvPowerSeries.subst (fun q : Fin 1 × Fin dd => c q.2) (MvPowerSeries.subst (P2 (0 : Pt C 1 dd) (pt C dd 0)) Y.h) := by
    rw [subst_pair_substitution_comm]
    · unfold hAt
      congr 2
      · funext i
        rw [Pi.zero_apply, ← MvPowerSeries.coe_substAlgHom hA, map_zero]
      · funext i
        first
          | simp [pt, MvPowerSeries.subst_X hA]
    all_goals first
      | (intro i; simp [pt])
      | (intro i; rfl)
      | simp_all
  rw [h3, h1, ← MvPowerSeries.coe_substAlgHom hA, map_zero]

theorem hAt_zero_right {c : Fin dd → MvPowerSeries τ C} (hc : ∀ i, MvPowerSeries.constantCoeff (c i) = 0) :
    hAt Y c (fun _ => 0) = 0 := by
  have hA : MvPowerSeries.HasSubst (fun q : Fin 1 × Fin dd => c q.2) := by
    first
      | exact ⟨fun q => by rw [hc q.2]; exact IsNilpotent.zero,
          by first
            | exact fun d => Set.toFinite _
            | (simp; intro d; exact Set.toFinite _)⟩
  have h1 : MvPowerSeries.subst (P2 (pt C dd 0) (0 : Pt C 1 dd)) Y.h = 0 := by
    rw [← eval_two_points_eq_subst _ _ _]
    exact Y.gauge.ax1
  have h3 : hAt Y c (fun _ => 0) =
      MvPowerSeries.subst (fun q : Fin 1 × Fin dd => c q.2) (MvPowerSeries.subst (P2 (pt C dd 0) (0 : Pt C 1 dd)) Y.h) := by
    rw [subst_pair_substitution_comm]
    · unfold hAt
      congr 2
      · funext i
        first
          | simp [pt, MvPowerSeries.subst_X hA]
      · funext i
        rw [Pi.zero_apply, ← MvPowerSeries.coe_substAlgHom hA, map_zero]
    all_goals first
      | (intro i; simp [pt])
      | (intro i; rfl)
      | simp_all
  rw [h3, h1, ← MvPowerSeries.coe_substAlgHom hA, map_zero]

def GoodPt (V : VF C) (a : Fin dd → MvPowerSeries τ C) : Prop :=
  (∀ i, MvPowerSeries.constantCoeff (a i) = 0) ∧ ∀ i, IntS V (a i)

private theorem intS_subst_of_intS {σ : Type} [Finite σ] {a : σ → MvPowerSeries τ C}
    (ha0 : ∀ s, MvPowerSeries.constantCoeff (a s) = 0) (ha : ∀ s, IntS V (a s)) {f : MvPowerSeries σ C}
    (hf : IntS V f) : IntS V (MvPowerSeries.subst a f) := by
  first
    | exact IntS.subst ha0 ha hf

theorem GoodPt.add {a b : Fin dd → MvPowerSeries τ C} (ha : GoodPt V a) (hb : GoodPt V b) : GoodPt V (addAt Y a b) := by
  have h0 : ∀ q, MvPowerSeries.constantCoeff (P2 a b q) = 0 := by
    intro q
    unfold P2
    split_ifs
    · exact ha.1 _
    · exact hb.1 _
  have hI : ∀ q, IntS V (P2 a b q) := by
    intro q
    unfold P2
    split_ifs
    · exact ha.2 _
    · exact hb.2 _
  refine ⟨fun i => cc_addAt Y ha.1 hb.1 i, fun i => ?_⟩
  show IntS V (MvPowerSeries.subst (P2 a b) (Y.B.G.F i))
  exact intS_subst_of_intS h0 hI (Y.intF i)

theorem GoodPt.zero : GoodPt V (fun _ : Fin dd => (0 : MvPowerSeries τ C)) := by
  refine ⟨fun _ => map_zero _, fun _ => ?_⟩
  unfold IntS
  intro μ
  rw [map_zero]
  unfold VF.Ge
  first
    | simp

theorem GoodPt.act (x : O) {a : Fin dd → MvPowerSeries τ C} (ha : GoodPt V a) : GoodPt V (actAt Y x a) := by
  refine ⟨fun i => cc_actAt Y x ha.1 i, fun i => ?_⟩
  show IntS V (MvPowerSeries.subst (fun q : Fin 1 × Fin dd => a q.2) (Y.B.A.act x i))
  exact intS_subst_of_intS (a := fun q : Fin 1 × Fin dd => a q.2) (fun q => ha.1 q.2) (fun q => ha.2 q.2)
    (Y.intAct x i)

def sumL : List (Fin dd → MvPowerSeries τ C) → (Fin dd → MvPowerSeries τ C)
  | [] => fun _ => 0
  | a :: l => addAt Y a (sumL l)

theorem good_sumL : ∀ l : List (Fin dd → MvPowerSeries τ C), (∀ a ∈ l, GoodPt V a) → GoodPt V (sumL Y l)
  | [], _ => GoodPt.zero
  | a :: l, h => (h a List.mem_cons_self).add Y (good_sumL l fun b hb => h b (List.mem_cons_of_mem _ hb))

theorem isIU_of_exp {U f : MvPowerSeries τ C} (hi : IntS V U) (he : U = mvExp f) : IsIU V U := by
  refine ⟨hi, ?_⟩
  subst he
  unfold mvExp
  have h1 : (MvPowerSeries.constantCoeff fun m : τ →₀ ℕ =>
      ∑ k ∈ Finset.range (Finsupp.degree m + 1), (MvPowerSeries.coeff m) (f ^ k) / (k.factorial : C)) = 1 := by
    show (∑ k ∈ Finset.range (Finsupp.degree (0 : τ →₀ ℕ) + 1),
      (MvPowerSeries.coeff (0 : τ →₀ ℕ)) (f ^ k) / (k.factorial : C)) = 1
    simp
  rw [h1]
  first
    | simp

end VP

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.FirstPartialLawAtPoints =====
