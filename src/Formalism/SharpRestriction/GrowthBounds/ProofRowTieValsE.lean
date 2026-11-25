module

public import Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsDef
public import Formalism.LocalToGlobal.CharacterGerms.FirstPartialLawAtPoints
public import Formalism.LocalToGlobal.CharacterGerms.RowTieValCr
public import Formalism.LocalToGlobal.CharacterGerms.PullbackLogCoordsEvalZero
public import Formalism.LocalToGlobal.CharacterGerms.TripleSubstSecondCoordinate
public import Formalism.LocalToGlobal.CharacterGerms.ValuationEqPairOfLogUnitGerm
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
public import Formalism.LocalToGlobal.CharacterGerms.ConstantCoeffSinglePointZero
public import Formalism.LocalToGlobal.CharacterGerms.ConstantCoeffTripleSubstitution
public import Formalism.LocalToGlobal.CharacterGerms.ValuationEqPairOfUnitGerm
public import Formalism.LocalToGlobal.CharacterGerms.ValueEquationOfProjectors
public import Formalism.LocalToGlobal.CharacterGerms.RowTieValL
public import Formalism.LocalToGlobal.CharacterGerms.RowTieValK
import Formalism.LocalToGlobal.CharacterGerms.IntSProd
import Formalism.LocalToGlobal.CharacterGerms.RowTieCartAdd
import Formalism.LocalToGlobal.CharacterGerms.RowTieJet
import Formalism.LocalToGlobal.CharacterGerms.SubstSubst
import Formalism.LocalToGlobal.CharacterGerms.LemmaMLin
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.ProjectiveLattices.SubConstMemOrig

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsCg, Formalism.LocalToGlobal.CharacterGerms.LinearCoeffSubstChainRule, Formalism.LocalToGlobal.CharacterGerms.RowTieValBr, Formalism.LocalToGlobal.CharacterGerms.CoordinateChangeComp1IntertwinesAction, Formalism.LocalToGlobal.CharacterGerms.LinearCoeffExponentialEqIte, Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsE

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsCg =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsCg", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsDef\npublic import Formalism.LocalToGlobal.CharacterGerms.FirstPartialLawAtPoints\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieValCr\nimport Formalism.LocalToGlobal.CharacterGerms.IntSProd\npublic import Formalism.LocalToGlobal.CharacterGerms.PullbackLogCoordsEvalZero\nimport Formalism.LocalToGlobal.CharacterGerms.RowTieCartAdd\nimport Formalism.LocalToGlobal.CharacterGerms.RowTieJet\nimport Formalism.LocalToGlobal.CharacterGerms.SubstSubst\nimport Formalism.LocalToGlobal.CharacterGerms.TripleSubstSecondCoordinate\npublic import Formalism.LocalToGlobal.CharacterGerms.ValuationEqPairOfLogUnitGerm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

open Formalism.IncomingBounds ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ Formalism.L2.Pj

namespace VS

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ}
  {σ τ : Type} [Finite σ]

def UImg (V : VF C) (A : σ → MvPowerSeries τ C) (Φ : MvPowerSeries τ C) : Prop :=
  ∃ U : MvPowerSeries σ C, IsIU V U ∧ MvPowerSeries.subst A U = Φ

def GImg (V : VF C) (A : σ → MvPowerSeries τ C) (a : Fin dd → MvPowerSeries τ C) : Prop :=
  ∃ P : Fin dd → MvPowerSeries σ C, VP.GoodPt V P ∧ ∀ i, MvPowerSeries.subst A (P i) = a i

def Cg (V : VF C) (A : σ → MvPowerSeries τ C) (f g : MvPowerSeries τ C) : Prop :=
  MvPowerSeries.constantCoeff f = 0 ∧ MvPowerSeries.constantCoeff g = 0 ∧ UImg V A (mvExp (f - g))

variable {A : σ → MvPowerSeries τ C} (hA : ∀ s, MvPowerSeries.constantCoeff (A s) = 0)

include hA

theorem UImg.one : UImg V A 1 := ⟨1, IsIU.one, VP.subst_one hA⟩

theorem UImg.mul {Φ Ψ : MvPowerSeries τ C} (h : UImg V A Φ) (h' : UImg V A Ψ) : UImg V A (Φ * Ψ) := by
  obtain ⟨U, hU, rfl⟩ := h
  obtain ⟨U', hU', rfl⟩ := h'
  exact ⟨U * U', hU.mul hU', VP.subst_mul hA _ _⟩

theorem UImg.pow {Φ : MvPowerSeries τ C} (h : UImg V A Φ) (k : ℕ) : UImg V A (Φ ^ k) := by
  obtain ⟨U, hU, rfl⟩ := h
  exact ⟨U ^ k, ⟨hU.1.pow k, by rw [map_pow, V.v.map_pow, hU.2, smul_zero]⟩, VP.subst_pow' hA _ _⟩

theorem UImg.exp_neg {f : MvPowerSeries τ C} (hf : MvPowerSeries.constantCoeff f = 0) (h : UImg V A (mvExp f)) :
    UImg V A (mvExp (-f)) := by
  obtain ⟨U, hU, e⟩ := h
  obtain ⟨U', hU'i, hUU⟩ := VP.intInv hU.1 hU.2
  have hU'0 : V.v (MvPowerSeries.constantCoeff U') = 0 := by
    have h1 := congrArg (fun x => V.v (MvPowerSeries.constantCoeff x)) hUU
    simp only [map_mul, map_one, V.v.map_mul, V.v.map_one, hU.2, add_zero] at h1
    exact h1
  refine ⟨U', ⟨hU'i, hU'0⟩, ?_⟩
  have h2 : MvPowerSeries.subst A U' * mvExp f = 1 := by
    rw [← e, ← VP.subst_mul hA, hUU, VP.subst_one hA]
  have h3 : mvExp (-f) * mvExp f = 1 := by
    rw [← VP.exp_add (by rw [map_neg, hf, neg_zero]) hf, neg_add_cancel, rtj_mvExp_zero]
  calc MvPowerSeries.subst A U' = MvPowerSeries.subst A U' * (mvExp (-f) * mvExp f) := by rw [h3, mul_one]
    _ = (MvPowerSeries.subst A U' * mvExp f) * mvExp (-f) := by ring
    _ = mvExp (-f) := by rw [h2, one_mul]

theorem Cg.refl {f : MvPowerSeries τ C} (hf : MvPowerSeries.constantCoeff f = 0) : Cg V A f f :=
  ⟨hf, hf, by rw [sub_self, rtj_mvExp_zero]; exact UImg.one hA⟩

theorem Cg.symm {f g : MvPowerSeries τ C} (h : Cg V A f g) : Cg V A g f :=
  ⟨h.2.1, h.1, by
    have := UImg.exp_neg hA (by rw [map_sub, h.1, h.2.1, sub_zero]) h.2.2
    rwa [neg_sub] at this⟩

theorem Cg.trans {f g k : MvPowerSeries τ C} (h : Cg V A f g) (h' : Cg V A g k) : Cg V A f k :=
  ⟨h.1, h'.2.1, by
    have := UImg.mul hA h.2.2 h'.2.2
    rw [← VP.exp_add (by rw [map_sub, h.1, h.2.1, sub_zero]) (by rw [map_sub, h'.1, h'.2.1, sub_zero])] at this
    rwa [sub_add_sub_cancel] at this⟩

theorem Cg.add {f g f' g' : MvPowerSeries τ C} (h : Cg V A f g) (h' : Cg V A f' g') : Cg V A (f + f') (g + g') :=
  ⟨by rw [map_add (f := _), h.1, h'.1, add_zero], by rw [map_add (f := _), h.2.1, h'.2.1, add_zero], by
    have := UImg.mul hA h.2.2 h'.2.2
    rw [← VP.exp_add (by rw [map_sub, h.1, h.2.1, sub_zero]) (by rw [map_sub, h'.1, h'.2.1, sub_zero])] at this
    rwa [show f - g + (f' - g') = f + f' - (g + g') by ring] at this⟩

theorem Cg.sum {ι : Type} (s : Finset ι) {f g : ι → MvPowerSeries τ C} (h : ∀ i ∈ s, Cg V A (f i) (g i)) :
    Cg V A (∑ i ∈ s, f i) (∑ i ∈ s, g i) := by
  induction s using Finset.induction_on with
  | empty => simpa using (Cg.refl hA (map_zero _) : Cg V A (0 : MvPowerSeries τ C) 0)
  | @insert a s ha ih =>
    rw [Finset.sum_insert ha, Finset.sum_insert ha]
    exact Cg.add hA (h a (Finset.mem_insert_self a s)) (ih fun i hi => h i (Finset.mem_insert_of_mem hi))

theorem Cg.nsmul {f g : MvPowerSeries τ C} (h : Cg V A f g) (k : ℕ) : Cg V A ((k : C) • f) ((k : C) • g) :=
  ⟨VP.cc_smul _ h.1, VP.cc_smul _ h.2.1, by
    rw [← smul_sub, VP.exp_nsmul (by rw [map_sub, h.1, h.2.1, sub_zero])]
    exact UImg.pow hA h.2.2 k⟩

theorem Cg.unit {f g : MvPowerSeries τ C} (h : Cg V A f g) :
    ∃ U : MvPowerSeries σ C, IsIU V U ∧ mvExp f = MvPowerSeries.subst A U * mvExp g := by
  obtain ⟨U, hU, e⟩ := h.2.2
  refine ⟨U, hU, ?_⟩
  rw [e, ← VP.exp_add (by rw [map_sub, h.1, h.2.1, sub_zero]) h.2.1, sub_add_cancel]

theorem cg_of {F G : MvPowerSeries σ C} (hF : MvPowerSeries.constantCoeff F = 0)
    (hG : MvPowerSeries.constantCoeff G = 0) (hi : IntS V (mvExp (F - G))) :
    Cg V A (MvPowerSeries.subst A F) (MvPowerSeries.subst A G) :=
  ⟨VP.cc_subst hA hF, VP.cc_subst hA hG, mvExp (F - G), VP.isIU_of_exp hi rfl, by
    rw [VP.subst_exp hA (by rw [map_sub, hF, hG, sub_zero]), VP.subst_sub' hA]⟩

theorem GImg.zero : GImg V A (fun _ : Fin dd => (0 : MvPowerSeries τ C)) :=
  ⟨fun _ => 0, VP.GoodPt.zero, fun _ => VP.subst_zero' hA⟩

variable (Y : FBChart C V O dd)

theorem GImg.add {a b : Fin dd → MvPowerSeries τ C} (ha : GImg V A a) (hb : GImg V A b) :
    GImg V A (VP.addAt Y a b) := by
  obtain ⟨P, hP, e⟩ := ha
  obtain ⟨Q, hQ, e'⟩ := hb
  obtain rfl : (fun i => MvPowerSeries.subst A (P i)) = a := funext e
  obtain rfl : (fun i => MvPowerSeries.subst A (Q i)) = b := funext e'
  exact ⟨VP.addAt Y P Q, hP.add Y hQ, fun i => VP.addAt_subst Y hA hP.1 hQ.1 i⟩

theorem GImg.act (x : O) {a : Fin dd → MvPowerSeries τ C} (ha : GImg V A a) : GImg V A (VP.actAt Y x a) := by
  obtain ⟨P, hP, e⟩ := ha
  obtain rfl : (fun i => MvPowerSeries.subst A (P i)) = a := funext e
  exact ⟨VP.actAt Y x P, hP.act Y x, fun i => VP.actAt_subst Y hA hP.1 x i⟩

omit Y in
theorem GImg.map {Y : FBChart C V O dd} {φ : Pt C 1 dd} (hφ : IsEndo Y φ) {a : Fin dd → MvPowerSeries τ C}
    (ha : GImg V A a) : GImg V A (VP.mapAt φ a) := by
  obtain ⟨P, hP, e⟩ := ha
  obtain rfl : (fun i => MvPowerSeries.subst A (P i)) = a := funext e
  exact ⟨VP.mapAt φ P, ⟨VP.cc_mapAt hφ.cc hP.1, fun i =>
    IntS.subst (a := fun q : Fin 1 × Fin dd => P q.2) (fun q => hP.1 q.2) (fun q => hP.2 q.2) (hφ.int i)⟩,
    fun i => VP.mapAt_subst hA φ hP.1 i⟩

theorem gauge_congr_additive_left {a b c : Fin dd → MvPowerSeries τ C} (ha : GImg V A a) (hb : GImg V A b) (hc : GImg V A c) :
    Cg V A (VP.hAt Y (VP.addAt Y a b) c) (VP.hAt Y a c + VP.hAt Y b c) := by
  obtain ⟨P, hP, e⟩ := ha
  obtain ⟨Q, hQ, e'⟩ := hb
  obtain ⟨R, hR, e''⟩ := hc
  obtain rfl : (fun i => MvPowerSeries.subst A (P i)) = a := funext e
  obtain rfl : (fun i => MvPowerSeries.subst A (Q i)) = b := funext e'
  obtain rfl : (fun i => MvPowerSeries.subst A (R i)) = c := funext e''
  have c1 := VP.cc_hAt Y hP.1 hR.1
  have c2 := VP.cc_hAt Y hQ.1 hR.1
  have c3 := VP.cc_hAt Y (VP.cc_addAt Y hP.1 hQ.1) hR.1
  have h := cg_of (V := V) hA (F := VP.hAt Y P R + VP.hAt Y Q R) (G := VP.hAt Y (VP.addAt Y P Q) R)
    (by rw [map_add (f := _), c1, c2, add_zero]) c3 (by
      rw [← VP.first_partial_law_at_points Y hP.1 hQ.1 hR.1]
      exact IntS.subst (VP.constantCoeff_triple_substitution hP.1 hQ.1 hR.1) (VP.integral_triple_substitution hP.2 hQ.2 hR.2) Y.intPh1)
  rw [VP.subst_add' hA, VP.hAt_subst Y hA hP.1 hR.1, VP.hAt_subst Y hA hQ.1 hR.1,
    VP.hAt_subst Y hA (VP.cc_addAt Y hP.1 hQ.1) hR.1, funext (VP.addAt_subst Y hA hP.1 hQ.1)] at h
  exact Cg.symm hA h

theorem gauge_congr_additive_right {a b c : Fin dd → MvPowerSeries τ C} (ha : GImg V A a) (hb : GImg V A b) (hc : GImg V A c) :
    Cg V A (VP.hAt Y a (VP.addAt Y b c)) (VP.hAt Y a b + VP.hAt Y a c) := by
  obtain ⟨P, hP, e⟩ := ha
  obtain ⟨Q, hQ, e'⟩ := hb
  obtain ⟨R, hR, e''⟩ := hc
  obtain rfl : (fun i => MvPowerSeries.subst A (P i)) = a := funext e
  obtain rfl : (fun i => MvPowerSeries.subst A (Q i)) = b := funext e'
  obtain rfl : (fun i => MvPowerSeries.subst A (R i)) = c := funext e''
  have c1 := VP.cc_hAt Y hP.1 hQ.1
  have c2 := VP.cc_hAt Y hP.1 hR.1
  have c3 := VP.cc_hAt Y hP.1 (VP.cc_addAt Y hQ.1 hR.1)
  have h := cg_of (V := V) hA (F := VP.hAt Y P Q + VP.hAt Y P R) (G := VP.hAt Y P (VP.addAt Y Q R))
    (by rw [map_add (f := _), c1, c2, add_zero]) c3 (by
      rw [← VP.second_partial_law_at_points Y hP.1 hQ.1 hR.1]
      exact IntS.subst (VP.constantCoeff_triple_substitution hP.1 hQ.1 hR.1) (VP.integral_triple_substitution hP.2 hQ.2 hR.2) Y.intPh2)
  rw [VP.subst_add' hA, VP.hAt_subst Y hA hP.1 hQ.1, VP.hAt_subst Y hA hP.1 hR.1,
    VP.hAt_subst Y hA hP.1 (VP.cc_addAt Y hQ.1 hR.1), funext (VP.addAt_subst Y hA hQ.1 hR.1)] at h
  exact Cg.symm hA h

theorem cg_sy {a b : Fin dd → MvPowerSeries τ C} (ha : GImg V A a) (hb : GImg V A b) :
    Cg V A (VP.hAt Y b a) (VP.hAt Y a b) := by
  obtain ⟨P, hP, e⟩ := ha
  obtain ⟨Q, hQ, e'⟩ := hb
  obtain rfl : (fun i => MvPowerSeries.subst A (P i)) = a := funext e
  obtain rfl : (fun i => MvPowerSeries.subst A (Q i)) = b := funext e'
  have h := cg_of (V := V) hA (F := VP.hAt Y Q P) (G := VP.hAt Y P Q) (VP.cc_hAt Y hQ.1 hP.1) (VP.cc_hAt Y hP.1 hQ.1) (by
      rw [← VP.sy_at Y hP.1 hQ.1]
      exact IntS.subst (VP.constantCoeff_pair_substitution hP.1 hQ.1) (VP.integral_pair_substitution hP.2 hQ.2) Y.intSy)
  rwa [VP.hAt_subst Y hA hQ.1 hP.1, VP.hAt_subst Y hA hP.1 hQ.1] at h

theorem cg_ad (x : O) {a b : Fin dd → MvPowerSeries τ C} (ha : GImg V A a) (hb : GImg V A b) :
    Cg V A (VP.hAt Y (VP.actAt Y x a) b) (VP.hAt Y a (VP.actAt Y (star x) b)) := by
  obtain ⟨P, hP, e⟩ := ha
  obtain ⟨Q, hQ, e'⟩ := hb
  obtain rfl : (fun i => MvPowerSeries.subst A (P i)) = a := funext e
  obtain rfl : (fun i => MvPowerSeries.subst A (Q i)) = b := funext e'
  have h := cg_of (V := V) hA (F := VP.hAt Y (VP.actAt Y x P) Q) (G := VP.hAt Y P (VP.actAt Y (star x) Q))
    (VP.cc_hAt Y (VP.cc_actAt Y x hP.1) hQ.1) (VP.cc_hAt Y hP.1 (VP.cc_actAt Y _ hQ.1)) (by
      rw [← VP.ad_at Y hP.1 hQ.1]
      exact IntS.subst (VP.constantCoeff_pair_substitution hP.1 hQ.1) (VP.integral_pair_substitution hP.2 hQ.2) (Y.intAd x))
  rwa [VP.hAt_subst Y hA (VP.cc_actAt Y x hP.1) hQ.1, VP.hAt_subst Y hA hP.1 (VP.cc_actAt Y _ hQ.1),
    funext (VP.actAt_subst Y hA hP.1 x), funext (VP.actAt_subst Y hA hQ.1 (star x))] at h

theorem cg_adj {φ φ' : Pt C 1 dd} (hφ : ∀ i, MvPowerSeries.constantCoeff (φ i) = 0)
    (hφ' : ∀ i, MvPowerSeries.constantCoeff (φ' i) = 0)
    (hadj : IntS V (FB.expS C (ev (n := 2) ![comp1 φ (pt C dd 0), pt C dd 1] Y.h -
      ev (n := 2) ![pt C dd 0, comp1 φ' (pt C dd 1)] Y.h)))
    {a b : Fin dd → MvPowerSeries τ C} (ha : GImg V A a) (hb : GImg V A b) :
    Cg V A (VP.hAt Y (VP.mapAt φ a) b) (VP.hAt Y a (VP.mapAt φ' b)) := by
  obtain ⟨P, hP, e⟩ := ha
  obtain ⟨Q, hQ, e'⟩ := hb
  obtain rfl : (fun i => MvPowerSeries.subst A (P i)) = a := funext e
  obtain rfl : (fun i => MvPowerSeries.subst A (Q i)) = b := funext e'
  have h := cg_of (V := V) hA (F := VP.hAt Y (VP.mapAt φ P) Q) (G := VP.hAt Y P (VP.mapAt φ' Q))
    (VP.cc_hAt Y (VP.cc_mapAt hφ hP.1) hQ.1) (VP.cc_hAt Y hP.1 (VP.cc_mapAt hφ' hQ.1)) (by
      rw [← VP.cmp_at Y hφ hφ' hP.1 hQ.1]
      exact IntS.subst (VP.constantCoeff_pair_substitution hP.1 hQ.1) (VP.integral_pair_substitution hP.2 hQ.2) hadj)
  rwa [VP.hAt_subst Y hA (VP.cc_mapAt hφ hP.1) hQ.1, VP.hAt_subst Y hA hP.1 (VP.cc_mapAt hφ' hQ.1),
    funext (VP.mapAt_subst hA φ hP.1), funext (VP.mapAt_subst hA φ' hQ.1)] at h

end VS

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsCg =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.LinearCoeffSubstChainRule =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.LinearCoeffSubstChainRule", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\npublic import Formalism.LocalToGlobal.CharacterGerms.ConstantCoeffSinglePointZero\npublic import Formalism.LocalToGlobal.CharacterGerms.ConstantCoeffTripleSubstitution\nimport Formalism.LocalToGlobal.CharacterGerms.LemmaMLin\nimport Formalism.LocalToGlobal.CharacterGerms.SubstSubst\npublic import Formalism.LocalToGlobal.CharacterGerms.ValuationEqPairOfUnitGerm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import Formalism.LocalToGlobal.CharacterGerms.PullbackLogCoordsEvalZero\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

open Formalism.IncomingBounds ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ Formalism.L2.Pj

namespace VP

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ} {τ τ' : Type}

def lin1 {σ : Type} (f : MvPowerSeries σ C) (j : σ) : C := MvPowerSeries.constantCoeff (MvPowerSeries.pderiv (R := C) j f)

theorem linear_coeff_eq_coeff_single {σ : Type} (f : MvPowerSeries σ C) (j : σ) : lin1 f j = MvPowerSeries.coeff (Finsupp.single j 1) f := by
  unfold lin1
  rw [← MvPowerSeries.coeff_zero_eq_constantCoeff_apply, MvPowerSeries.coeff_pderiv]
  simp

theorem linear_coeff_subst_chain_rule {σ : Type} [Fintype σ] {A : σ → MvPowerSeries τ C}
    (hA : ∀ s, MvPowerSeries.constantCoeff (A s) = 0) (f : MvPowerSeries σ C) (j : τ) :
    lin1 (MvPowerSeries.subst A f) j = ∑ k, lin1 (A k) j * lin1 f k := by
  have hs : MvPowerSeries.HasSubst A := by
    first
      | exact MvPowerSeries.hasSubst_of_constantCoeff_zero hA

  have hmul : ∀ P R : MvPowerSeries τ C, MvPowerSeries.constantCoeff P = 0 →
      MvPowerSeries.constantCoeff R = 0 → MvPowerSeries.coeff (Finsupp.single j 1) (P * R) = 0 := by
    intro P R hP hR
    rw [MvPowerSeries.coeff_mul]
    refine Finset.sum_eq_zero fun ab hab => ?_
    first
      | rw [Finset.HasAntidiagonal.mem_antidiagonal] at hab
    by_cases ha : ab.1 = 0
    · rw [ha, MvPowerSeries.coeff_zero_eq_constantCoeff_apply, hP, zero_mul]
    · have hb : ab.2 = 0 := by
        obtain ⟨i, hi⟩ : ∃ i, ab.1 i ≠ 0 := by
          by_contra h
          push_neg at h
          exact ha (Finsupp.ext h)
        have hij : i = j := by
          by_contra hne
          have := congrArg (fun d => d i) hab
          simp only [Finsupp.add_apply, Finsupp.single_apply, Ne.symm hne, if_false] at this
          omega
        subst hij
        ext t
        have := congrArg (fun d => d t) hab
        by_cases ht : t = i
        · subst ht
          simp only [Finsupp.add_apply, Finsupp.single_eq_same] at this
          simp only [Finsupp.coe_zero, Pi.zero_apply]
          omega
        · simp only [Finsupp.add_apply, Finsupp.single_apply, Ne.symm ht, if_false] at this
          simp only [Finsupp.coe_zero, Pi.zero_apply]
          omega
      rw [hb, MvPowerSeries.coeff_zero_eq_constantCoeff_apply, hR, mul_zero]

  have hpow : ∀ (a : σ) (b : ℕ), b ≠ 0 → MvPowerSeries.constantCoeff (A a ^ b) = 0 := by
    intro a b hb
    rw [map_pow, hA a, zero_pow hb]
  have hprod : ∀ d : σ →₀ ℕ, d ≠ 0 → MvPowerSeries.constantCoeff (d.prod fun s e => A s ^ e) = 0 ∧
      ((∀ k, d ≠ Finsupp.single k 1) →
        MvPowerSeries.coeff (Finsupp.single j 1) (d.prod fun s e => A s ^ e) = 0) := by
    intro d
    refine Finsupp.induction d ?_ ?_
    · intro h
      exact absurd rfl h
    · intro a b g hag hb ih _
      have hP : (Finsupp.single a b + g).prod (fun s e => A s ^ e) = A a ^ b * g.prod (fun s e => A s ^ e) := by
        rw [Finsupp.prod_add_index' (fun _ => pow_zero _) (fun _ _ _ => pow_add _ _ _),
          show (Finsupp.single a b).prod (fun s e => A s ^ e) = A a ^ b from Finsupp.prod_single_index (pow_zero _)]
      rw [hP]
      refine ⟨by rw [map_mul, hpow a b hb, zero_mul], fun hnot => ?_⟩
      by_cases hg : g = 0
      · subst hg
        rw [Finsupp.prod_zero_index, mul_one]
        have hb1 : b ≠ 1 := by
          intro h1
          subst h1
          exact hnot a (add_zero _)
        obtain ⟨c, rfl⟩ : ∃ c, b = c + 1 := ⟨b - 1, by omega⟩
        rw [pow_succ]
        exact hmul _ _ (hpow a c (by omega)) (hA a)
      · exact hmul _ _ (hpow a b hb) (ih hg).1
  rw [linear_coeff_eq_coeff_single, MvPowerSeries.coeff_subst hs]
  have hsupp : (Function.support fun d : σ →₀ ℕ => MvPowerSeries.coeff d f •
      MvPowerSeries.coeff (Finsupp.single j 1) (d.prod fun s e => A s ^ e)) ⊆
      ↑(Finset.univ.image fun k : σ => Finsupp.single k 1) := by
    intro d hd
    rw [Function.mem_support] at hd
    simp only [Finset.coe_image, Finset.coe_univ, Set.image_univ, Set.mem_range]
    by_contra hne
    push_neg at hne
    apply hd
    by_cases h0 : d = 0
    · subst h0
      rw [Finsupp.prod_zero_index, MvPowerSeries.coeff_one, if_neg (Finsupp.single_ne_zero.mpr one_ne_zero),
        smul_zero]
    · rw [(hprod d h0).2 (fun k h => hne k h.symm), smul_zero]
  rw [finsum_eq_sum_of_support_subset _ hsupp,
    Finset.sum_image (fun k _ l _ h => Finsupp.single_left_injective one_ne_zero h)]
  refine Finset.sum_congr rfl fun k _ => ?_
  dsimp only
  rw [show (Finsupp.single k 1).prod (fun s e => A s ^ e) = A k ^ 1 from Finsupp.prod_single_index (pow_zero _),
    pow_one, smul_eq_mul, linear_coeff_eq_coeff_single, linear_coeff_eq_coeff_single, mul_comm]

theorem linear_coeff_X_eq_ite {σ : Type} (m j : σ) : lin1 (MvPowerSeries.X m : MvPowerSeries σ C) j = if m = j then 1 else 0 := by
  rw [linear_coeff_eq_coeff_single, MvPowerSeries.coeff_X]
  by_cases h : m = j
  · subst h
    simp
  · rw [if_neg h, if_neg]
    intro h'
    exact h ((Finsupp.single_left_inj one_ne_zero).mp h').symm

theorem lin_of_add (f : MvPowerSeries (Fin dd) C) (h0 : MvPowerSeries.constantCoeff f = 0)
    (hadd : MvPowerSeries.subst (fun m : Fin dd => (MvPowerSeries.X ((0 : Fin 2), m) + MvPowerSeries.X ((1 : Fin 2), m) : PS C 2 dd)) f =
      MvPowerSeries.subst (fun m : Fin dd => (MvPowerSeries.X ((0 : Fin 2), m) : PS C 2 dd)) f +
        MvPowerSeries.subst (fun m : Fin dd => (MvPowerSeries.X ((1 : Fin 2), m) : PS C 2 dd)) f) :
    f = ∑ j, lin1 f j • (MvPowerSeries.X j : MvPowerSeries (Fin dd) C) := by
  have cS : ∀ m : Fin dd, MvPowerSeries.constantCoeff
      (MvPowerSeries.X ((0 : Fin 2), m) + MvPowerSeries.X ((1 : Fin 2), m) : PS C 2 dd) = 0 := fun m => by
    rw [map_add (f := _), cc_X, cc_X, add_zero]
  set K : Fin 2 × Fin dd → MvPowerSeries (Fin dd) C := P2 MvPowerSeries.X (fun _ => 0) with hK
  have cK : ∀ q, MvPowerSeries.constantCoeff (K q) = 0 := constantCoeff_pair_substitution (fun _ => cc_X _) (fun _ => map_zero _)
  have hder : ∀ i, MvPowerSeries.pderiv (R := C) i f = MvPowerSeries.C (lin1 f i) := by
    intro i
    have h := congrArg (fun G => MvPowerSeries.subst K (MvPowerSeries.pderiv (R := C) ((1 : Fin 2), i) G)) hadd
    beta_reduce at h
    rw [map_add (f := _), pderiv_subst (og cS), pderiv_subst (og fun _ => cc_X _), pderiv_subst (og fun _ => cc_X _),
      subst_add' cK, subst_sum cK, subst_sum cK, subst_sum cK] at h
    have h1 : ∀ m, MvPowerSeries.subst K (MvPowerSeries.pderiv (R := C) ((1 : Fin 2), i)
        (MvPowerSeries.X ((0 : Fin 2), m) + MvPowerSeries.X ((1 : Fin 2), m) : PS C 2 dd) *
        MvPowerSeries.subst (fun m : Fin dd => (MvPowerSeries.X ((0 : Fin 2), m) + MvPowerSeries.X ((1 : Fin 2), m) : PS C 2 dd))
          (MvPowerSeries.pderiv (R := C) m f)) = if m = i then MvPowerSeries.pderiv (R := C) i f else 0 := by
      intro m
      rw [map_add (f := _), MvPowerSeries.pderiv_X_of_ne (fun hh => by simpa using (Prod.ext_iff.1 hh).1), zero_add]
      by_cases hm : m = i
      · subst hm
        rw [MvPowerSeries.pderiv_X_self, one_mul, subst_subst cS cK, if_pos rfl]
        have : (fun s : Fin dd => MvPowerSeries.subst K
            (MvPowerSeries.X ((0 : Fin 2), s) + MvPowerSeries.X ((1 : Fin 2), s) : PS C 2 dd)) = MvPowerSeries.X := by
          funext s
          rw [subst_add' cK, subst_X cK, subst_X cK]
          show MvPowerSeries.X s + 0 = _
          rw [add_zero]
        rw [this, MvPowerSeries.subst_self]
        rfl
      · rw [MvPowerSeries.pderiv_X_of_ne (fun hh => hm (Prod.ext_iff.1 hh).2), zero_mul, subst_zero' cK, if_neg hm]
    have h2 : ∀ m, MvPowerSeries.subst K (MvPowerSeries.pderiv (R := C) ((1 : Fin 2), i)
        (MvPowerSeries.X ((0 : Fin 2), m) : PS C 2 dd) *
        MvPowerSeries.subst (fun m : Fin dd => (MvPowerSeries.X ((0 : Fin 2), m) : PS C 2 dd))
          (MvPowerSeries.pderiv (R := C) m f)) = 0 := by
      intro m
      rw [MvPowerSeries.pderiv_X_of_ne (fun hh => by simpa using (Prod.ext_iff.1 hh).1), zero_mul, subst_zero' cK]
    have h3 : ∀ m, MvPowerSeries.subst K (MvPowerSeries.pderiv (R := C) ((1 : Fin 2), i)
        (MvPowerSeries.X ((1 : Fin 2), m) : PS C 2 dd) *
        MvPowerSeries.subst (fun m : Fin dd => (MvPowerSeries.X ((1 : Fin 2), m) : PS C 2 dd))
          (MvPowerSeries.pderiv (R := C) m f)) = if m = i then MvPowerSeries.C (lin1 f i) else 0 := by
      intro m
      by_cases hm : m = i
      · subst hm
        rw [MvPowerSeries.pderiv_X_self, one_mul, subst_subst (fun _ => cc_X _) cK, if_pos rfl]
        have : (fun s : Fin dd => MvPowerSeries.subst K (MvPowerSeries.X ((1 : Fin 2), s) : PS C 2 dd)) = fun _ => 0 := by
          funext s
          rw [subst_X cK]
          rfl
        rw [this, subst_zeroPt]
        rfl
      · rw [MvPowerSeries.pderiv_X_of_ne (fun hh => hm (Prod.ext_iff.1 hh).2), zero_mul, subst_zero' cK, if_neg hm]
    rw [Finset.sum_congr rfl fun m _ => h1 m, Finset.sum_congr rfl fun m _ => h2 m,
      Finset.sum_congr rfl fun m _ => h3 m, Finset.sum_const_zero, zero_add, Finset.sum_ite_eq', Finset.sum_ite_eq'] at h
    simpa using h
  ext μ

  rw [map_sum]
  simp only [map_smul, smul_eq_mul, MvPowerSeries.coeff_X]
  by_cases hμ : μ = 0
  · subst hμ
    rw [MvPowerSeries.coeff_zero_eq_constantCoeff_apply, h0]
    symm
    refine Finset.sum_eq_zero fun j _ => ?_
    rw [if_neg (fun h => by simpa using congrArg (fun x => x j) h), mul_zero]
  · obtain ⟨i, hi⟩ : ∃ i, μ i ≠ 0 := by
      by_contra hcon
      simp only [not_exists, not_not] at hcon
      exact hμ (Finsupp.ext hcon)
    obtain ⟨ν, rfl⟩ : ∃ ν : Fin dd →₀ ℕ, μ = ν + Finsupp.single i 1 :=
      ⟨μ - Finsupp.single i 1, (tsub_add_cancel_of_le (Finsupp.single_le_iff.2 (Nat.one_le_iff_ne_zero.2 hi))).symm⟩
    have hc := congrArg (MvPowerSeries.coeff ν) (hder i)
    rw [MvPowerSeries.coeff_pderiv, MvPowerSeries.coeff_C] at hc
    have hne : ((ν i : C) + 1) ≠ 0 := by exact_mod_cast Nat.succ_ne_zero (ν i)
    by_cases hν : ν = 0
    · subst hν
      rw [zero_add, Finset.sum_eq_single i]
      · rw [if_pos rfl, mul_one, linear_coeff_eq_coeff_single]
      · intro j _ hj
        rw [if_neg fun h => hj (Finsupp.single_left_injective one_ne_zero h).symm, mul_zero]
      · intro h; exact absurd (Finset.mem_univ _) h
    · rw [if_neg hν] at hc
      rw [(mul_eq_zero.1 hc).resolve_right hne]
      symm
      refine Finset.sum_eq_zero fun j _ => ?_
      rw [if_neg, mul_zero]
      intro h
      have hd := congrArg Finsupp.degree h
      rw [map_add (f := _), Finsupp.degree_single, Finsupp.degree_single] at hd
      exact hν ((Finsupp.degree_eq_zero_iff _).1 (by omega))

end VP

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.LinearCoeffSubstChainRule =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieValBr =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.RowTieValBr", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.ValueEquationOfProjectors\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

open Formalism.IncomingBounds ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ Formalism.L2.Pj

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ} {d : ℕ} [NeZero d]
  {Orb : Type} [Fintype Orb] {I : Orb → Fin 2 → Type} [∀ o g, Fintype (I o g)]

def EndoLogSt (Y : FBChart C V O dd) : Prop :=
  ∀ ε : Pt C 1 dd, (∀ i, MvPowerSeries.constantCoeff (ε i) = 0) →
    comp1 ε (addOf Y.B.G.F (pt C (n := 2) dd 0) (pt C (n := 2) dd 1)) =
      addOf Y.B.G.F (comp1 ε (pt C (n := 2) dd 0)) (comp1 ε (pt C (n := 2) dd 1)) →
    ∀ (τ : Type) [Finite τ] (a : Fin dd → MvPowerSeries τ C), (∀ i, MvPowerSeries.constantCoeff (a i) = 0) →
    ∀ i, MvPowerSeries.subst (fun q : Fin 1 × Fin dd => VP.exAt Y a q.2) (ε i) =
      VP.exAt Y (fun m => ∑ j, MvPowerSeries.coeff (Finsupp.single ((0 : Fin 1), j) 1) (ε m) • a j) i

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieValBr =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.CoordinateChangeComp1IntertwinesAction =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.CoordinateChangeComp1IntertwinesAction", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.ConstantCoeffTripleSubstitution\npublic import Formalism.LocalToGlobal.CharacterGerms.TripleSubstSecondCoordinate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.ProjectiveLattices.SubConstMemOrig\n\n"}
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

theorem addOf_eq' {n : ℕ} (a b : Pt C n dd) : addOf Y.B.G.F a b = addAt Y a b := by
  unfold addAt
  unfold addOf
  funext i
  unfold ev
  first
  | (congr 1; funext q; unfold P2; rfl)
  | (congr 1; funext q; unfold P2; obtain ⟨j, k⟩ := q; fin_cases j <;> simp)

end VP

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ} {d : ℕ} [NeZero d]
  {Orb : Type} [Fintype Orb] {I : Orb → Fin 2 → Type} [∀ o g, Fintype (I o g)]

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.CoordinateChangeComp1IntertwinesAction =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.LinearCoeffExponentialEqIte =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.LinearCoeffExponentialEqIte", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.LinearCoeffSubstChainRule\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieValBr\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieValCr\nimport Formalism.LocalToGlobal.CharacterGerms.ConstantCoeffSinglePointZero\npublic import Formalism.LocalToGlobal.CharacterGerms.CoordinateChangeComp1IntertwinesAction\nimport Formalism.LocalToGlobal.CharacterGerms.SubstSubst\nimport Formalism.LocalToGlobal.CharacterGerms.TripleSubstSecondCoordinate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

open Formalism.IncomingBounds ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ Formalism.L2.Pj

namespace VP

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ} {τ τ' : Type}

variable (Y : FBChart C V O dd)

theorem mapAt_addAt {ε : Pt C 1 dd} (hε : ∀ i, MvPowerSeries.constantCoeff (ε i) = 0)
    (hadd : comp1 ε (addOf Y.B.G.F (pt C (n := 2) dd 0) (pt C (n := 2) dd 1)) =
      addOf Y.B.G.F (comp1 ε (pt C (n := 2) dd 0)) (comp1 ε (pt C (n := 2) dd 1)))
    {a b : Fin dd → MvPowerSeries τ C} (ha : ∀ i, MvPowerSeries.constantCoeff (a i) = 0)
    (hb : ∀ i, MvPowerSeries.constantCoeff (b i) = 0) :
    mapAt ε (addAt Y a b) = addAt Y (mapAt ε a) (mapAt ε b) := by
  have h := hadd
  rw [addOf_eq', addOf_eq', comp_eq_map_at, comp_eq_map_at, comp_eq_map_at] at h
  have k0 := cc_pt (C := C) (dd := dd) (0 : Fin 2)
  have k1 := cc_pt (C := C) (dd := dd) (1 : Fin 2)
  have hP := constantCoeff_pair_substitution ha hb
  have e0 : (fun i => MvPowerSeries.subst (P2 a b) (pt C dd (0 : Fin 2) i)) = a := funext fun i => pair_subst_coordinate ha hb 0 i
  have e1 : (fun i => MvPowerSeries.subst (P2 a b) (pt C dd (1 : Fin 2) i)) = b := funext fun i => pair_subst_coordinate ha hb 1 i
  funext i
  have h2 := congrArg (MvPowerSeries.subst (P2 a b)) (congrFun h i)
  rw [mapAt_subst hP ε (cc_addAt Y k0 k1), addAt_subst Y hP (cc_mapAt hε k0) (cc_mapAt hε k1)] at h2
  have e2 : (fun i => MvPowerSeries.subst (P2 a b) (addAt Y (pt C dd (0 : Fin 2)) (pt C dd (1 : Fin 2)) i)) =
      addAt Y a b := by
    funext j
    rw [addAt_subst Y hP k0 k1, e0, e1]
  have e3 : (fun i => MvPowerSeries.subst (P2 a b) (mapAt ε (pt C dd (0 : Fin 2)) i)) = mapAt ε a := by
    funext j
    rw [mapAt_subst hP ε k0, e0]
  have e4 : (fun i => MvPowerSeries.subst (P2 a b) (mapAt ε (pt C dd (1 : Fin 2)) i)) = mapAt ε b := by
    funext j
    rw [mapAt_subst hP ε k1, e1]
  rw [e2, e3, e4] at h2
  exact h2

def PhiAt (ε : Pt C 1 dd) (a : Fin dd → MvPowerSeries τ C) (m : Fin dd) : MvPowerSeries τ C :=
  MvPowerSeries.subst (mapAt ε (exAt Y a)) (l Y m)

theorem exAt_subst [Finite τ] {A : τ → MvPowerSeries τ' C} (hA : ∀ s, MvPowerSeries.constantCoeff (A s) = 0)
    {u : Fin dd → MvPowerSeries τ C} (hu : ∀ i, MvPowerSeries.constantCoeff (u i) = 0) (i : Fin dd) :
    MvPowerSeries.subst A (exAt Y u i) = exAt Y (fun i => MvPowerSeries.subst A (u i)) i := subst_subst hu hA _

variable {ε : Pt C 1 dd} (hε : ∀ i, MvPowerSeries.constantCoeff (ε i) = 0)

include hε in
theorem PhiAt_subst [Finite τ] {A : τ → MvPowerSeries τ' C} (hA : ∀ s, MvPowerSeries.constantCoeff (A s) = 0)
    {u : Fin dd → MvPowerSeries τ C} (hu : ∀ i, MvPowerSeries.constantCoeff (u i) = 0) (m : Fin dd) :
    MvPowerSeries.subst A (PhiAt Y ε u m) = PhiAt Y ε (fun i => MvPowerSeries.subst A (u i)) m := by
  unfold PhiAt
  rw [subst_subst (cc_mapAt hε (cc_exAt Y hu)) hA]
  congr 1
  funext k
  rw [mapAt_subst hA ε (cc_exAt Y hu)]
  congr 1
  funext i
  exact exAt_subst Y hA hu i

include hε in
theorem PhiAt_add (hadd : comp1 ε (addOf Y.B.G.F (pt C (n := 2) dd 0) (pt C (n := 2) dd 1)) =
      addOf Y.B.G.F (comp1 ε (pt C (n := 2) dd 0)) (comp1 ε (pt C (n := 2) dd 1)))
    {a b : Fin dd → MvPowerSeries τ C} (ha : ∀ i, MvPowerSeries.constantCoeff (a i) = 0)
    (hb : ∀ i, MvPowerSeries.constantCoeff (b i) = 0) (m : Fin dd) :
    PhiAt Y ε (fun i => a i + b i) m = PhiAt Y ε a m + PhiAt Y ε b m := by
  unfold PhiAt
  rw [ex_add Y ha hb, mapAt_addAt Y hε hadd (cc_exAt Y ha) (cc_exAt Y hb),
    l_add_at Y (cc_mapAt hε (cc_exAt Y ha)) (cc_mapAt hε (cc_exAt Y hb))]

theorem linear_coeff_logarithm_eq_ite (m k : Fin dd) : lin1 (l Y m) k = if m = k then 1 else 0 := pderiv_l_zero Y m k

theorem linear_coeff_exponential_eq_ite (m j : Fin dd) : lin1 (e Y m) j = if m = j then 1 else 0 := by
  have h := congrArg (fun f => lin1 f j) (lgex Y m)
  beta_reduce at h
  rw [linear_coeff_subst_chain_rule (cc_e Y), linear_coeff_X_eq_ite] at h
  have h' : ∑ k, lin1 (e Y k) j * lin1 (l Y m) k = lin1 (e Y m) j := by
    simp only [linear_coeff_logarithm_eq_ite, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq, Finset.mem_univ, if_true]
  rw [h'] at h
  convert h

theorem exAt_X : exAt Y (MvPowerSeries.X : Fin dd → MvPowerSeries (Fin dd) C) = e Y := by
  funext i
  unfold exAt
  rw [MvPowerSeries.subst_self]
  rfl

include hε in
theorem linear_coeff_formal_law_at_X (m j : Fin dd) :
    lin1 (PhiAt Y ε (MvPowerSeries.X : Fin dd → MvPowerSeries (Fin dd) C) m) j =
      MvPowerSeries.coeff (Finsupp.single ((0 : Fin 1), j) 1) (ε m) := by
  unfold PhiAt
  rw [linear_coeff_subst_chain_rule (cc_mapAt hε (cc_exAt Y fun _ => cc_X _))]
  simp only [linear_coeff_logarithm_eq_ite, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq, Finset.mem_univ, if_true]
  rw [exAt_X]
  unfold mapAt
  rw [linear_coeff_subst_chain_rule (A := fun q : Fin 1 × Fin dd => e Y q.2) (fun q => cc_e Y q.2), Finset.sum_eq_single ((0 : Fin 1), j)]
  · rw [linear_coeff_exponential_eq_ite, if_pos rfl, one_mul, linear_coeff_eq_coeff_single]
  · intro q _ hq
    rw [linear_coeff_exponential_eq_ite, if_neg, zero_mul]
    intro h
    apply hq
    obtain ⟨q1, q2⟩ := q
    have : q1 = 0 := Subsingleton.elim _ _
    subst this
    exact Prod.ext rfl h
  · intro h; exact absurd (Finset.mem_univ _) h

end VP

theorem endoLog_holds {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ}
    (Y : FBChart C V O dd) : EndoLogSt Y := by
  intro ε hε hadd τ _ a ha i
  have cX : ∀ i : Fin dd, MvPowerSeries.constantCoeff (MvPowerSeries.X i : MvPowerSeries (Fin dd) C) = 0 :=
    fun _ => VP.cc_X _
  set φ : Fin dd → MvPowerSeries (Fin dd) C := VP.PhiAt Y ε MvPowerSeries.X with hφ
  have cφ : ∀ m, MvPowerSeries.constantCoeff (φ m) = 0 := fun m =>
    VP.cc_subst (VP.cc_mapAt hε (VP.cc_exAt Y cX)) (VP.cc_l Y m)
  have hsub : ∀ {τ' : Type} (b : Fin dd → MvPowerSeries τ' C), (∀ i, MvPowerSeries.constantCoeff (b i) = 0) →
      ∀ m, MvPowerSeries.subst b (φ m) = VP.PhiAt Y ε b m := by
    intro τ' b hb m
    rw [hφ, VP.PhiAt_subst Y hε hb cX]
    congr 1
    funext i
    exact VP.subst_X hb i
  have hlin : ∀ m, φ m = ∑ j, VP.lin1 (φ m) j • (MvPowerSeries.X j : MvPowerSeries (Fin dd) C) := by
    intro m
    refine VP.lin_of_add (φ m) (cφ m) ?_
    rw [hsub _ (fun k => by rw [map_add (f := _), VP.cc_X, VP.cc_X, add_zero]) m, hsub _ (fun _ => VP.cc_X _) m,
      hsub _ (fun _ => VP.cc_X _) m]
    exact VP.PhiAt_add Y hε hadd (fun _ => VP.cc_X _) (fun _ => VP.cc_X _) m
  have hP := VP.cc_mapAt hε (VP.cc_exAt Y ha)
  show VP.mapAt ε (VP.exAt Y a) i = _
  rw [← VP.e_lAt Y hP i]
  show VP.exAt Y (fun m => VP.PhiAt Y ε a m) i = _
  congr 1
  funext m
  rw [← hsub a ha m, hlin m, VP.subst_sum ha]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [VP.subst_smul ha, VP.subst_X ha]
  show VP.lin1 (VP.PhiAt Y ε MvPowerSeries.X m) j • a j = _
  rw [VP.linear_coeff_formal_law_at_X Y hε]

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.LinearCoeffExponentialEqIte =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsE =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsE", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsCg\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieValL\npublic import Formalism.LocalToGlobal.CharacterGerms.ValueEquationOfProjectors\nimport Formalism.LocalToGlobal.CharacterGerms.ConstantCoeffSinglePointZero\nimport Formalism.LocalToGlobal.CharacterGerms.IntSProd\npublic import Formalism.LocalToGlobal.CharacterGerms.LinearCoeffExponentialEqIte\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieValK\nimport Formalism.LocalToGlobal.CharacterGerms.SubstSubst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
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

section Defs

variable (Y : FBChart C V O dd) (p : ∀ o, SelfData Y d (I0 o))

def eW (w : WVO (IS I0)) : Fin dd → C := (p w.1).e w.2.2

def tyW (w : WVO (IS I0)) : ZMod d := (p w.1).ty0 w.2.2

def zeK (κ : WVO (IS I0) → C) (m : Fin dd) : MvPowerSeries (WVO (IS I0)) C :=
  ∑ w, (κ w * eW Y p w m) • (MvPowerSeries.X w : MvPowerSeries (WVO (IS I0)) C)

def EK (κ : WVO (IS I0) → C) : Fin dd → MvPowerSeries (WVO (IS I0)) C := VP.exAt Y (zeK Y p κ)

def AA : Fin 2 × Fin dd → MvPowerSeries (WVO (IS I0)) C := VP.linPt Y (uS Y p)

def GK (κ : WVO (IS I0) → C) : Prop := GImg V (AA Y p) (EK Y p κ)

def HK (κ κ' : WVO (IS I0) → C) : MvPowerSeries (WVO (IS I0)) C := VP.hAt Y (EK Y p κ) (EK Y p κ')

def kCol (col : Fin 2) (w : WVO (IS I0)) : C := (p w.1).gm (tyW Y p w) col w.2.1

def lamAct (x : O) (w : WVO (IS I0)) : C := (p w.1).em (tyW Y p w) x

def lamG (o : Orb) (r s : Fin 2) (w : WVO (IS I0)) : C := if w.1 = o then (p w.1).gm (tyW Y p w) r s else 0

def lamG' (o : Orb) (r s : Fin 2) (w : WVO (IS I0)) : C :=
  if w.1 = o then (p w.1).gm (tyW Y p w + (p w.1).hd) r s else 0

end Defs

def ind (s : Orb × Fin 2) (w : WVO (IS I0)) : C := if (w.1, w.2.1) = s then 1 else 0

variable (Y : FBChart C V O dd) (p : ∀ o, SelfData Y d (I0 o))

theorem cc_zeK (κ : WVO (IS I0) → C) (m : Fin dd) : MvPowerSeries.constantCoeff (zeK Y p κ m) = 0 := by
  simp [zeK]

theorem cc_EK (κ : WVO (IS I0) → C) (i : Fin dd) : MvPowerSeries.constantCoeff (EK Y p κ i) = 0 := by
  apply VP.cc_exAt
  intro m
  exact cc_zeK Y p κ m

theorem cc_AA (s : Fin 2 × Fin dd) : MvPowerSeries.constantCoeff (AA Y p s) = 0 := by
  obtain ⟨col, i⟩ := s
  exact cc_EK Y p (kCol Y p col) i

theorem cc_HK (κ κ' : WVO (IS I0) → C) : MvPowerSeries.constantCoeff (HK Y p κ κ') = 0 := by
  apply VP.cc_hAt <;> intro i <;> exact cc_EK Y p _ i

theorem AA_eq (col : Fin 2) (i : Fin dd) : AA Y p (col, i) = EK Y p (kCol Y p col) i := rfl

theorem GK_col (col : Fin 2) : GK Y p (kCol Y p col) :=
  ⟨fun i => MvPowerSeries.X (col, i), ⟨fun _ => VP.cc_X _, fun _ => VP.IntS_X _⟩, fun i => by
    rw [VP.subst_X (cc_AA Y p)]; rfl⟩

theorem zeK_add (κ κ' : WVO (IS I0) → C) (m : Fin dd) : zeK Y p (κ + κ') m = zeK Y p κ m + zeK Y p κ' m := by
  simp only [zeK, Pi.add_apply, add_mul, add_smul, Finset.sum_add_distrib]

theorem EK_add (κ κ' : WVO (IS I0) → C) : VP.addAt Y (EK Y p κ) (EK Y p κ') = EK Y p (κ + κ') := by
  unfold EK
  rw [← VP.ex_add Y (cc_zeK Y p κ) (cc_zeK Y p κ')]
  congr 1
  funext m
  exact (zeK_add Y p κ κ' m).symm

theorem EK_zero : EK Y p 0 = fun _ => 0 := by
  have hz : zeK Y p 0 = fun _ => 0 := by
    funext m
    simp [zeK]
  unfold EK
  rw [hz, VP.exAt_zero]

theorem EK_map {φ : Pt C 1 dd} (hφ : IsEndo Y φ) {lam : WVO (IS I0) → C}
    (hl : ∀ w, linAct φ (eW Y p w) = lam w • eW Y p w) (κ : WVO (IS I0) → C) :
    VP.mapAt φ (EK Y p κ) = EK Y p (lam * κ) := by
  funext i
  rw [show VP.mapAt φ (EK Y p κ) i = _ from
    endoLog_holds Y φ hφ.cc hφ.add (WVO (IS I0)) (zeK Y p κ) (cc_zeK Y p κ) i]
  show VP.exAt Y _ i = VP.exAt Y _ i
  congr 1
  funext m
  unfold zeK
  simp only [Finset.smul_sum, smul_smul]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun w _ => ?_
  rw [← Finset.sum_smul]
  congr 1
  have h := congrFun (hl w) m
  unfold linAct at h
  rw [Pi.smul_apply, smul_eq_mul] at h
  rw [Pi.mul_apply, mul_right_comm, ← h, Finset.sum_mul]
  exact Finset.sum_congr rfl fun j _ => by ring

theorem isEndo_act (x : O) : IsEndo Y (Y.B.A.act x) :=
  ⟨Y.intAct x, Y.B.A.const x, Y.B.A.hom x⟩

theorem EK_act (x : O) (κ : WVO (IS I0) → C) : VP.actAt Y x (EK Y p κ) = EK Y p (lamAct Y p x * κ) :=
  EK_map Y p (isEndo_act Y x) (fun w => (p w.1).e_eig w.2.2 x) κ

theorem GK.add {κ κ' : WVO (IS I0) → C} (h : GK Y p κ) (h' : GK Y p κ') : GK Y p (κ + κ') := by
  have h2 : GImg V (AA Y p) (VP.addAt Y (EK Y p κ) (EK Y p κ')) := by
    first
      | exact GImg.add (Y := Y) (cc_AA Y p) h h'
  rw [EK_add] at h2
  exact h2

theorem GK.zero : GK Y p 0 := by
  unfold GK
  rw [EK_zero]
  first
    | exact GImg.zero (V := V) (A := AA Y p) (cc_AA Y p)

theorem GK.sum {ι : Type} (s : Finset ι) {κ : ι → WVO (IS I0) → C} (h : ∀ i ∈ s, GK Y p (κ i)) :
    GK Y p (∑ i ∈ s, κ i) := by
  exact Finset.sum_induction κ (GK Y p) (fun a b ha hb => GK.add Y p ha hb) (GK.zero Y p) h

theorem GK.map {φ : Pt C 1 dd} (hφ : IsEndo Y φ) {lam : WVO (IS I0) → C}
    (hl : ∀ w, linAct φ (eW Y p w) = lam w • eW Y p w) {κ : WVO (IS I0) → C} (h : GK Y p κ) :
    GK Y p (lam * κ) := by
  have h2 : GImg V (AA Y p) (VP.mapAt φ (EK Y p κ)) := by
    first
      | exact GImg.map (cc_AA Y p) hφ h
  rw [EK_map Y p hφ hl] at h2
  exact h2

theorem GK.act (x : O) {κ : WVO (IS I0) → C} (h : GK Y p κ) : GK Y p (lamAct Y p x * κ) := by
  have h2 : GImg V (AA Y p) (VP.actAt Y x (EK Y p κ)) := by
    first
      | exact GImg.act (Y := Y) (cc_AA Y p) x h
  rw [EK_act] at h2
  exact h2

theorem kill_self (hs : SelfSep Y p) (o : Orb) (φ : Pt C 1 dd) (hφ : ∀ i, MvPowerSeries.constantCoeff (φ i) = 0)
    (hcomm : ∀ a, comp1 φ (Y.B.A.act a) = comp1 (Y.B.A.act a) φ)
    (himg : ∀ v : Fin dd → C, ∃ b : I0 o → C, linAct φ v = ∑ c, b c • (p o).e c)
    (o' : Orb) (c' : I0 o') (ho : o' ≠ o) : linAct φ ((p o').e c') = 0 := by
  obtain ⟨b, hb⟩ := himg ((p o').e c')
  have h1 : ∀ a, linAct (Y.B.A.act a) (linAct φ ((p o').e c')) =
      (p o').em ((p o').ty0 c') a • linAct φ ((p o').e c') := by
    intro a
    rw [← VP.linAct_comp1 _ _ hφ, ← hcomm a, VP.linAct_comp1 _ _ (Y.B.A.const a), (p o').e_eig, VP.linAct_smul]
  have h2 : ∀ a, ∑ c, (b c * ((p o).em ((p o).ty0 c) a - (p o').em ((p o').ty0 c') a)) • (p o).e c = 0 := by
    intro a
    have h3 := h1 a
    rw [hb, VP.linAct_sum, Finset.smul_sum] at h3
    have h4 : ∀ c, linAct (Y.B.A.act a) (b c • (p o).e c) = (b c * (p o).em ((p o).ty0 c) a) • (p o).e c := by
      intro c
      rw [VP.linAct_smul, (p o).e_eig, smul_smul]
    rw [Finset.sum_congr rfl fun c _ => h4 c] at h3
    rw [← sub_eq_zero, ← Finset.sum_sub_distrib] at h3
    rw [← h3]
    refine Finset.sum_congr rfl fun c _ => ?_
    rw [smul_smul, ← sub_smul]
    congr 1
    ring
  obtain ⟨W, -, hW⟩ := (p o).e_sat
  have hb0 : ∀ c, b c = 0 := by
    intro c
    obtain ⟨a, ha⟩ := hs (o, (p o).ty0 c) (o', (p o').ty0 c') (fun h => ho (Prod.mk.inj h).1.symm)
    have hne : (p o).em ((p o).ty0 c) a - (p o').em ((p o').ty0 c') a ≠ 0 := by
      intro h
      have h6 : V.v ((p o).em ((p o).ty0 c) a - (p o').em ((p o').ty0 c') a) = 0 := ha
      rw [h, V.v.map_zero] at h6
      exact WithTop.top_ne_zero h6
    have h7 : ∑ x, (∑ c'', (b c'' * ((p o).em ((p o).ty0 c'') a - (p o').em ((p o').ty0 c') a)) • (p o).e c'') x *
        W x c = 0 := by
      rw [h2 a]
      simp
    simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Finset.sum_mul] at h7
    rw [Finset.sum_comm] at h7
    have h8 : ∀ c'', ∑ x, b c'' * ((p o).em ((p o).ty0 c'') a - (p o').em ((p o').ty0 c') a) * (p o).e c'' x * W x c =
        if c'' = c then b c'' * ((p o).em ((p o).ty0 c'') a - (p o').em ((p o').ty0 c') a) else 0 := by
      intro c''
      have := hW c'' c
      simp only [mul_assoc]
      rw [← Finset.mul_sum, ← Finset.mul_sum, this]
      split_ifs <;> simp
    rw [Finset.sum_congr rfl fun c'' _ => h8 c'', Finset.sum_ite_eq'] at h7
    simp only [Finset.mem_univ, if_true] at h7
    exact (mul_eq_zero.1 h7).resolve_right hne
  rw [hb]
  exact Finset.sum_eq_zero fun c _ => by rw [hb0 c, zero_smul]

section Pack

variable {Y p} {γ γ' : Orb → Fin 2 → Fin 2 → Pt C 1 dd} (hs : SelfSep Y p) (hG : ∀ o, GmPack Y (p o) (γ o) (γ' o))

include hs hG

theorem diagG (o : Orb) (r s : Fin 2) (w : WVO (IS I0)) :
    linAct (γ o r s) (eW Y p w) = lamG Y p o r s w • eW Y p w := by
  obtain ⟨o', g, c⟩ := w
  by_cases h : o' = o
  · subst h
    show _ = (if o' = o' then _ else _) • _
    rw [if_pos rfl]
    exact (hG o').lin r s c
  · show _ = (if o' = o then _ else _) • _
    rw [if_neg h, zero_smul]
    exact kill_self Y p hs o (γ o r s) ((hG o).endo r s).cc ((hG o).comm r s) ((hG o).img r s) o' c h

theorem diagG' (o : Orb) (r s : Fin 2) (w : WVO (IS I0)) :
    linAct (γ' o r s) (eW Y p w) = lamG' Y p o r s w • eW Y p w := by
  obtain ⟨o', g, c⟩ := w
  by_cases h : o' = o
  · subst h
    show _ = (if o' = o' then _ else _) • _
    rw [if_pos rfl]
    exact (hG o').lin' r s c
  · show _ = (if o' = o then _ else _) • _
    rw [if_neg h, zero_smul]
    exact kill_self Y p hs o (γ' o r s) ((hG o).endo' r s).cc ((hG o).comm' r s) ((hG o).img' r s) o' c h

theorem GK.mulG (o : Orb) (r s : Fin 2) {κ : WVO (IS I0) → C} (h : GK Y p κ) : GK Y p (lamG Y p o r s * κ) :=
  GK.map Y p ((hG o).endo r s) (diagG hs hG o r s) h

theorem GK.mulG' (o : Orb) (r s : Fin 2) {κ : WVO (IS I0) → C} (h : GK Y p κ) : GK Y p (lamG' Y p o r s * κ) :=
  GK.map Y p ((hG o).endo' r s) (diagG' hs hG o r s) h

end Pack

theorem fin_two_ne_one_sub : ∀ g g' : Fin 2, g' = g ↔ ¬ (1 - g = g') := by
  decide

theorem kCol_eq (col : Fin 2) : kCol Y p col = ∑ s : Orb × Fin 2, lamG Y p s.1 col s.2 * ind s := by
  funext w
  simp only [Finset.sum_apply, Pi.mul_apply, lamG, ind, kCol]
  rw [Finset.sum_eq_single (w.1, w.2.1)]
  · simp
  · intro b _ hb
    rw [if_neg (Ne.symm hb), mul_zero]
  · intro h
    exact absurd (Finset.mem_univ _) h

theorem ind_eq (s : Orb × Fin 2) : (ind s : WVO (IS I0) → C) = ∑ r, lamG' Y p s.1 r (1 - s.2) * kCol Y p r := by
  obtain ⟨o, g⟩ := s
  funext w
  rw [Finset.sum_apply]
  show (if (w.1, w.2.1) = (o, g) then (1 : C) else 0) =
    ∑ r, (if w.1 = o then (p w.1).gm (tyW Y p w + (p w.1).hd) r (1 - g) else 0) * (p w.1).gm (tyW Y p w) r w.2.1
  by_cases h : w.1 = o
  · simp only [if_pos h]
    rw [(p w.1).gm_hyp]
    by_cases hg : w.2.1 = g
    · rw [if_pos (Prod.ext h hg), if_neg ((fin_two_ne_one_sub g w.2.1).1 hg)]
    · rw [if_neg fun e => hg (Prod.mk.inj e).2, if_pos (not_not.1 fun e => hg ((fin_two_ne_one_sub g w.2.1).2 e))]
  · simp only [if_neg h, zero_mul, Finset.sum_const_zero]
    rw [if_neg fun e => h (Prod.mk.inj e).1]

theorem gram_eq (o o' : Orb) (g g' : Fin 2) (μ : WVO (IS I0) → C) :
    ∑ col, lamG' Y p o col g * (lamG Y p o' col g' * (μ * ind (o', g'))) =
      if (o', g') = (o, 1 - g) then μ * ind (o', g') else 0 := by
  funext w
  rw [Finset.sum_apply]
  simp only [Pi.mul_apply]
  by_cases hw : (w.1, w.2.1) = (o', g')
  · have h1 : w.1 = o' := (Prod.mk.inj hw).1
    by_cases ho : o' = o
    · have h2 : w.1 = o := h1.trans ho
      have e : ∀ col, lamG' Y p o col g w * (lamG Y p o' col g' w * (μ w * ind (o', g') w)) =
          ((p w.1).gm (tyW Y p w + (p w.1).hd) col g * (p w.1).gm (tyW Y p w) col g') * (μ w * ind (o', g') w) := by
        intro col
        unfold lamG' lamG
        rw [if_pos h2, if_pos h1]
        ring
      rw [Finset.sum_congr rfl fun col _ => e col, ← Finset.sum_mul, (p w.1).gm_hyp]
      by_cases hg : g = g'
      · rw [if_pos hg, zero_mul, if_neg fun h => (fin_two_ne_one_sub g g').1 hg.symm (Prod.mk.inj h).2.symm]
        rfl
      · rw [if_neg hg, one_mul, if_pos (Prod.ext ho (not_not.1 fun e => hg ((fin_two_ne_one_sub g g').2 fun e' => e e'.symm).symm))]
        rfl
    · have e : ∀ col, lamG' Y p o col g w * (lamG Y p o' col g' w * (μ w * ind (o', g') w)) = 0 := by
        intro col
        unfold lamG'
        rw [if_neg fun h => ho (h1.symm.trans h), zero_mul]
      rw [Finset.sum_eq_zero fun col _ => e col, if_neg fun h => ho (Prod.mk.inj h).1]
      rfl
  · have e : (ind (o', g') : WVO (IS I0) → C) w = 0 := if_neg hw
    simp only [e, mul_zero, Finset.sum_const_zero]
    split_ifs
    · rw [Pi.mul_apply, e, mul_zero]
    · rfl

section Pack2

variable {Y p} {γ γ' : Orb → Fin 2 → Fin 2 → Pt C 1 dd} (hs : SelfSep Y p) (hG : ∀ o, GmPack Y (p o) (γ o) (γ' o))

include hs hG

theorem GK_ind (s : Orb × Fin 2) : GK Y p (ind s) := by
  rw [ind_eq Y p s]
  exact GK.sum Y p Finset.univ fun r _ => GK.mulG' hs hG s.1 r (1 - s.2) (GK_col Y p r)

end Pack2

theorem toAllS_expPtS (o : Orb) (g col : Fin 2) (i : Fin dd) :
    toAllS (I := IS I0) o ((Y.rawSelf (p o)).expPt g (col, i)) = EK Y p (lamG Y p o col g * ind (o, g)) i := by
  unfold toAllS RawChart.expPt
  have h0 : ∀ x : Fin 2 × Fin dd, MvPowerSeries.constantCoeff (∑ c : I0 o, (Y.rawSelf (p o)).u g c x •
      (MvPowerSeries.X (⟨g, c⟩ : WV (IS I0 o)) : MvPowerSeries (WV (IS I0 o)) C)) = 0 := by
    intro m

    rw [map_sum]
    refine Finset.sum_eq_zero fun c _ => ?_
    rw [MvPowerSeries.smul_eq_C_mul, map_mul, MvPowerSeries.constantCoeff_X, mul_zero]
  show MvPowerSeries.subst _ (MvPowerSeries.subst _ (MvPowerSeries.subst
    (fun x : Fin dd => (MvPowerSeries.X (col, x) : MvPowerSeries (Fin 2 × Fin dd) C)) (VP.e Y i))) = _
  rw [VP.subst_subst (fun _ => VP.cc_X _) h0, VP.subst_subst (fun m => by rw [VP.subst_X h0]; exact h0 _) (fun _ => VP.cc_X _)]
  show _ = MvPowerSeries.subst _ (VP.e Y i)
  congr 1
  funext m
  rw [VP.subst_X h0, VP.subst_sum (fun _ => VP.cc_X _)]
  unfold zeK
  rw [Fintype.sum_sigma, Finset.sum_eq_single o]
  · rw [Fintype.sum_sigma, Finset.sum_eq_single g]
    · refine Finset.sum_congr rfl fun c _ => ?_
      rw [VP.subst_smul (fun _ => VP.cc_X _), VP.subst_X (fun _ => VP.cc_X _)]
      congr 1
      rw [Pi.mul_apply]
      unfold lamG ind
      rw [if_pos rfl, if_pos rfl, mul_one]
      rfl
    · intro g' _ hg'
      refine Finset.sum_eq_zero fun c _ => ?_
      have : (ind (o, g) : WVO (IS I0) → C) ⟨o, ⟨g', c⟩⟩ = 0 := if_neg fun h => hg' (Prod.mk.inj h).2
      rw [Pi.mul_apply, this, mul_zero, zero_mul, zero_smul]
    · intro h; exact absurd (Finset.mem_univ _) h
  · intro o' _ ho'
    refine Finset.sum_eq_zero fun x _ => ?_
    have : (ind (o, g) : WVO (IS I0) → C) ⟨o', x⟩ = 0 := if_neg fun h => ho' (Prod.mk.inj h).1
    rw [Pi.mul_apply, this, mul_zero, zero_mul, zero_smul]
  · intro h; exact absurd (Finset.mem_univ _) h

end VS

theorem projSelf_of {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ} {d : ℕ}
    [NeZero d] {Orb : Type} [Fintype Orb] {I0 : Orb → Type} [∀ o, Fintype (I0 o)]
    (Y : FBChart C V O dd) (p : ∀ o, SelfData Y d (I0 o)) (hG : ∀ o, GmPackSt Y (p o)) : ProjSelfSt Y p := by
  intro hs o g
  choose γ γ' hG using hG
  have h : ∀ col : Fin 2, VS.GK Y p (VS.lamG Y p o col g * VS.ind (o, g)) := fun col =>
    VS.GK.mulG hs hG o col g (VS.GK_ind hs hG (o, g))
  choose P hP hPe using h
  refine ⟨fun x => P x.1 x.2, fun x => (hP x.1).2 x.2, fun x => (hP x.1).1 x.2, fun x => ?_⟩
  obtain ⟨col, i⟩ := x
  rw [VS.toAllS_expPtS]
  exact hPe col i

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ProofRowTieValsE =====
