module

public import Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqOf
public import Formalism.LocalToGlobal.CharacterGerms.RowTieCartAdd
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqSum2
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePGerm
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqDer
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqM2
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePAddCvSelf
public import Formalism.LocalToGlobal.CharacterGerms.RowTieSelf
import Formalism.LocalToGlobal.CharacterGerms.ConstMemTypeSetOfNonneg
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.CharacterGerms.RowTiePOActLog
import Formalism.FormalGroupLog.FormalGroupLogProofs.ChainRule
import Formalism.LocalToGlobal.CharacterGerms.RowTieCartFB

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.ExponentialPartialDerivatives.SumAtOf, Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqEx, Formalism.SharpRestriction.GrowthBounds.ExponentialPartialDerivatives.UnshiftEvalEqSubstRawUnit, Formalism.SharpRestriction.GrowthBounds.ExponentialPartialDerivatives

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ExponentialPartialDerivatives.SumAtOf =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ExponentialPartialDerivatives.SumAtOf", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqOf\nimport Formalism.LocalToGlobal.CharacterGerms.ConstMemTypeSetOfNonneg\nimport Formalism.LocalToGlobal.CharacterGerms.RowTieCartAdd\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqSum2\nimport Formalism.LocalToGlobal.CharacterGerms.RowTiePGerm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds
namespace CEqGen

open Formalism.IncomingBounds PartialDerivEval RowTiePCEq RowTiePCEqSum ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ

variable {C : Type} [Field C] {d : ℕ} {I : Fin 2 → Type} [∀ g, Fintype (I g)] {κ : Type} [Fintype κ]

def SumAt (V : VF C) (X : RawChart C d I κ) : Prop :=
  ∀ (g : Fin 2) (H : X.CartHyp V g) (S : Sys (RawChart.cart H))
    (t : I g → MvPowerSeries (I g) C), S.IsT t →
    ∃ Φ : κ → MvPowerSeries (I g) C, (∀ i, MvPowerSeries.constantCoeff (Φ i) = 0) ∧ (∀ i, IntS V (Φ i)) ∧
      (∀ i, MvPowerSeries.subst t (Φ i) = X.expG g i) ∧
      ∀ q : JJ I g, ∃ Λ : MvPowerSeries (I g) C, IntS V Λ ∧
        MvPowerSeries.subst (X.expG g) (X.sg (X.u (1 - g) q)) =
          S.ze t q + MvPowerSeries.subst t Λ + ∑ c : I g, if X.ty g c = X.ty (1 - g) q then
            X.sg1 (X.u g c) (X.u (1 - g) q) • (MvPowerSeries.X c : MvPowerSeries (I g) C) else 0

def DerAt (V : VF C) (X : RawChart C d I κ) : Prop :=
  ∀ (g : Fin 2) (k : I (1 - g)), ∃ J : MvPowerSeries (Fin 2 × κ) C, IntS V J ∧
    dVar (⟨1 - g, k⟩ : WV I) X.hRow =
      (X.k : C) • (MvPowerSeries.subst (fun q : Fin 2 × κ => X.expPt q.1 q.2) J -
        MvPowerSeries.subst (X.expPt g) (X.sg (X.u (1 - g) k)))

def IsCvK (V : VF C) {τ : Type} (γ : κ → MvPowerSeries τ C) : Prop :=
  ∀ i, MvPowerSeries.constantCoeff (γ i) = 0 ∧ IntS V (γ i)

def AddM (V : VF C) (X : RawChart C d I κ) : Prop :=
  ∀ (τ : Type) [Finite τ] (γ γ' : κ → MvPowerSeries τ C), IsCvK V γ → IsCvK V γ' →
    ∃ γ'' : κ → MvPowerSeries τ C, IsCvK V γ'' ∧
      (∀ i, MvPowerSeries.subst γ'' (X.lg i) = MvPowerSeries.subst γ (X.lg i) + MvPowerSeries.subst γ' (X.lg i)) ∧
      ∀ v : κ → C, (∀ i, V.Ge 0 (v i)) →
        IntS V (MvPowerSeries.subst γ'' (X.sg v) - MvPowerSeries.subst γ (X.sg v) - MvPowerSeries.subst γ' (X.sg v))

theorem cEq_of {V : VF C} (X : RawChart C d I κ) (H : ∀ g, X.CartHyp V g) (hS : SumAt V X) (hD : DerAt V X) :
    RawChart.CEqSt H := by
  intro _ g a a' hodd S t ht k hk
  have ht0 : ∀ g' c, MvPowerSeries.constantCoeff (t g' c) = 0 := fun g' => (ht g').1
  have hT := MvPowerSeries.hasSubst_of_constantCoeff_zero (tW_const ht0)
  have hne : a ≠ a' := by
    intro h
    subst h
    rw [sub_self, ZMod.val_zero] at hodd
    have := Nat.odd_iff.mp hodd
    omega
  have hSg := fun g' => hS g' (H g') (S g') (t g') (ht g')
  choose Φ hΦ0 hΦI hΦt hΛ using hSg
  obtain ⟨Λ, hΛI, hσ⟩ := hΛ g k
  obtain ⟨J, hJI, hder⟩ := hD g k
  set Φ' : Fin 2 × κ → MvPowerSeries (WV I) C := fun q => upG q.1 (Φ q.1 q.2) with hΦ'
  have hΦ'0 : ∀ q, MvPowerSeries.constantCoeff (Φ' q) = 0 := fun q => upG_const _ (hΦ0 q.1 q.2)
  have hΦ'I : ∀ q, IntS V (Φ' q) := fun q => intS_upG _ (hΦI q.1 q.2)
  have hΨ : (fun q : Fin 2 × κ => X.expPt q.1 q.2) = fun q => MvPowerSeries.subst (tW t) (Φ' q) := by
    funext q
    rw [expPt_eq, ← hΦt q.1 q.2, subst_tW_upG ht0]
  have hJ' : MvPowerSeries.subst (fun q : Fin 2 × κ => X.expPt q.1 q.2) J =
      MvPowerSeries.subst (tW t) (MvPowerSeries.subst Φ' J) := by
    rw [hΨ, MvPowerSeries.subst_comp_subst_apply (MvPowerSeries.hasSubst_of_constantCoeff_zero hΦ'0) hT]
  have hexG0 : ∀ i, MvPowerSeries.constantCoeff (X.expG g i) = 0 := fun i => by
    rw [← hΦt g i]
    exact constantCoeff_subst_zero (ht0 g) (hΦ0 g i)
  have hsg : MvPowerSeries.subst (X.expPt g) (X.sg (X.u (1 - g) k)) =
      upG g (MvPowerSeries.subst (X.expG g) (X.sg (X.u (1 - g) k))) := by
    rw [upG_subst g hexG0]
    congr 1
    funext i
    exact expPt_eq X g i
  set sig0 : MvPowerSeries (I g) C := ∑ c : I g, if X.ty g c = X.ty (1 - g) k then
    X.sg1 (X.u g c) (X.u (1 - g) k) • (MvPowerSeries.X c : MvPowerSeries (I g) C) else 0 with hsig0
  set L := toLeafL (fun g => RawChart.cart (H g)) g a a' with hL
  have hsig : L (upG g sig0) = 0 := by

    rw [hsig0, upG_eq, map_sum, map_sum]
    refine Finset.sum_eq_zero fun c _ => ?_
    split_ifs with hc
    · rw [map_smul, map_smul, ← upG_eq, upG_X]
      have : L (MvPowerSeries.X (⟨g, c⟩ : WV I)) = 0 := by
        refine toLeaf_X_off _ g a a' _ ?_
        rintro (⟨-, h2⟩ | ⟨h1, -⟩)
        · exact hne (h2.symm.trans (hc.trans hk))
        · fin_cases g <;> simp at h1
      rw [this, smul_zero]
    · rw [map_zero, map_zero]
  refine ⟨MvPowerSeries.subst (tW t) ((X.k : C) • (MvPowerSeries.subst Φ' J - upG g Λ)),
    ⟨(X.k : C) • (MvPowerSeries.subst Φ' J - upG g Λ), fun μ => ?_, rfl⟩, ?_⟩
  · have hI : IntS V ((X.k : C) • (MvPowerSeries.subst Φ' J - upG g Λ)) := by
      intro ν
      rw [MvPowerSeries.coeff_smul, map_sub]
      exact (ge_natCast _).mul_int ((IntS.subst hΦ'0 hΦ'I hJI ν).sub (intS_upG g hΛI ν))
    exact hI μ
  · have hpair : (∑ q : JJ I g, X.pairK g q k • upG g ((S g).ze (t g) q)) =
        (-(X.k : C)) • upG g ((S g).ze (t g) k) := by
      rw [Finset.sum_eq_single k]
      · simp [RawChart.pairK]
      · intro q _ hq
        simp [RawChart.pairK, hq]
      · intro h
        exact absurd (Finset.mem_univ k) h
    have hw : X.OnLf g a a' (⟨1 - g, k⟩ : WV I) := Or.inr ⟨rfl, hk⟩
    rw [dVar_hLf X H g a a' _ hw, hpair, hder, hJ', hsg, hσ]
    have e1 : upG g ((S g).ze (t g) k + MvPowerSeries.subst (t g) Λ + sig0) =
        upG g ((S g).ze (t g) k) + MvPowerSeries.subst (tW t) (upG g Λ) + upG g sig0 := by
      rw [upG_eq, map_add (f := _), map_add (f := _), ← upG_eq, ← upG_eq, ← upG_eq, subst_tW_upG ht0]
    have e2 : MvPowerSeries.subst (tW t) ((X.k : C) • (MvPowerSeries.subst Φ' J - upG g Λ)) =
        (X.k : C) • (MvPowerSeries.subst (tW t) (MvPowerSeries.subst Φ' J) -
          MvPowerSeries.subst (tW t) (upG g Λ)) := by
      rw [← MvPowerSeries.coe_substAlgHom hT, map_smul, map_sub]
    rw [e1, e2]
    show L _ - L _ = L _
    simp only [map_smul, map_sub, map_add (f := _), hsig]
    module

theorem sumCvK {V : VF C} (X : RawChart C d I κ) (hA : AddM V X)
    (hlg0 : ∀ i, MvPowerSeries.constantCoeff (X.lg i) = 0)
    (hax : ∀ e : Fin 2 × κ →₀ ℕ, (∀ s ∈ e.support, s.1 ≠ 0) → MvPowerSeries.coeff e X.h = 0)
    {τ : Type} [Finite τ] {ι : Type} (s : Finset ι) (γ : ι → κ → MvPowerSeries τ C)
    (hγ : ∀ c, IsCvK V (γ c)) :
    ∃ Γ : κ → MvPowerSeries τ C, IsCvK V Γ ∧
      (∀ i, MvPowerSeries.subst Γ (X.lg i) = ∑ c ∈ s, MvPowerSeries.subst (γ c) (X.lg i)) ∧
      ∀ v : κ → C, (∀ i, V.Ge 0 (v i)) →
        IntS V (MvPowerSeries.subst Γ (X.sg v) - ∑ c ∈ s, MvPowerSeries.subst (γ c) (X.sg v)) := by
  induction s using Finset.induction_on with
  | empty =>
    refine ⟨fun _ => 0, fun _ => ⟨map_zero _, intS_zero⟩, fun i => ?_, fun v _ => ?_⟩
    · rw [Finset.sum_empty]
      exact subst_zero_const _ (hlg0 i)
    · rw [Finset.sum_empty, sub_zero, subst_zero_const _ (X.constantCoeff_sg hax v)]
      exact intS_zero
  | insert c s hc ih =>
    obtain ⟨Γ, hΓ, hL, hS⟩ := ih
    obtain ⟨Γ', hΓ', hL', hS'⟩ := hA τ Γ (γ c) hΓ (hγ c)
    refine ⟨Γ', hΓ', fun i => ?_, fun v hv => ?_⟩
    · rw [hL', hL, Finset.sum_insert hc]
      ring
    · rw [Finset.sum_insert hc]
      have := intS_add (hS' v hv) (hS v hv)
      convert this using 1
      ring

theorem sumAt_of {V : VF C} (X : RawChart C d I κ) (hA : AddM V X)
    (hlg0 : ∀ i, MvPowerSeries.constantCoeff (X.lg i) = 0)
    (hax : ∀ e : Fin 2 × κ →₀ ℕ, (∀ s ∈ e.support, s.1 ≠ 0) → MvPowerSeries.coeff e X.h = 0)
    (hexlg : ∀ i, MvPowerSeries.subst X.lg (X.ex i) = (MvPowerSeries.X i : MvPowerSeries κ C))
    (huI : ∀ g c i, V.Ge 0 (X.u g c i)) : SumAt V X := by
  intro g H S t ht
  have hl2 : 2 ≤ V.l := V.l_prime.two_le
  have ht0 : ∀ c, MvPowerSeries.constantCoeff (t c) = 0 := ht.1
  have htS := MvPowerSeries.hasSubst_of_constantCoeff_zero ht0
  have hmem : ∀ c, ∃ γ : κ → PowerSeries C, ∃ lam : JJ I g → PowerSeries C, IsCv V γ ∧ IsCv V lam ∧
      (∀ i, alongCv γ (X.lg i) =
        ∑ c' : I g, X.u g c' i • tyS V.l (fun s => S.cur c s (Sum.inl c'))) ∧
      ∀ q : JJ I g, tyS V.l (fun s => S.cur c s (Sum.inr q)) =
        lam q - alongCv γ (X.sg (X.u (1 - g) q)) +
          ∑ c' : I g, if X.ty g c' = X.ty (1 - g) q then
            X.sg1 (X.u g c') (X.u (1 - g) q) •
              tyS V.l (fun s => S.cur c s (Sum.inl c')) else 0 :=
    fun c => by
      obtain ⟨h, -, -⟩ := S.curve c
      exact h
  choose γ lam hγ hlam h1 h2 using hmem
  have be0 : ∀ c (q : JJ I g), S.cur c 0 (Sum.inr q) = 0 := fun c q => by
    obtain ⟨-, h0, -⟩ := S.curve c
    rw [h0]
    rfl
  have hc : ∀ c (a : ℕ → C) (μ : I g →₀ ℕ),
      MvPowerSeries.coeff μ (MvPowerSeries.subst (fun _ : Unit => t c) (tyS V.l a)) =
        ∑ s ∈ Finset.range (μ.degree + 1), a s * MvPowerSeries.coeff μ (t c ^ (V.l ^ s)) :=
    fun c a μ => coeff_subst_tyS hl2 (ht0 c) a μ
  have hC : ∀ x : I g, ∑ c, MvPowerSeries.subst (fun _ : Unit => t c) (tyS V.l (fun s => S.cur c s (Sum.inl x))) =
      MvPowerSeries.X x := by
    intro x
    ext μ

    rw [map_sum, MvPowerSeries.coeff_X]
    simp only [hc]
    rw [Finset.sum_comm]
    exact ht.2 x μ
  have hB : ∀ q : JJ I g, ∑ c, MvPowerSeries.subst (fun _ : Unit => t c) (tyS V.l (fun s => S.cur c s (Sum.inr q))) =
      -S.ze t q := by
    intro q
    ext μ

    rw [map_sum, map_neg]
    simp only [hc]
    rw [Finset.sum_comm]
    show _ = -(-(∑ s ∈ Finset.Icc 1 μ.degree, ∑ c : I g, S.be c s q * MvPowerSeries.coeff μ (t c ^ (V.l ^ s))))
    rw [neg_neg, show Finset.range (μ.degree + 1) = insert 0 (Finset.Icc 1 μ.degree) by ext s; simp; omega,
      Finset.sum_insert (by simp)]
    simp only [be0, zero_mul, Finset.sum_const_zero, zero_add]
    rfl
  set γt : I g → κ → MvPowerSeries (I g) C :=
    fun c i => MvPowerSeries.subst (fun _ : Unit => (MvPowerSeries.X c : MvPowerSeries (I g) C)) (γ c i) with hγtd
  have hγt : ∀ c, IsCvK V (γt c) := fun c i =>
    ⟨constantCoeff_subst_zero (fun _ => MvPowerSeries.constantCoeff_X _) (hγ c i).1,
      IntS.subst (fun _ => MvPowerSeries.constantCoeff_X _) (fun _ => intS_X _) (intS_ps.2 (hγ c i).2)⟩
  have key1 : ∀ c (f : MvPowerSeries (κ) C), MvPowerSeries.subst (γt c) f =
      MvPowerSeries.subst (fun _ : Unit => (MvPowerSeries.X c : MvPowerSeries (I g) C)) (alongCv (γ c) f) := by
    intro c f
    unfold alongCv
    rw [MvPowerSeries.subst_comp_subst_apply (MvPowerSeries.hasSubst_of_constantCoeff_zero fun i => (hγ c i).1)
      (hasSubst_unit (MvPowerSeries.constantCoeff_X c))]
  have key2 : ∀ c (F : PowerSeries C), MvPowerSeries.subst t
      (MvPowerSeries.subst (fun _ : Unit => (MvPowerSeries.X c : MvPowerSeries (I g) C)) F) =
      MvPowerSeries.subst (fun _ : Unit => t c) F := by
    intro c F
    rw [MvPowerSeries.subst_comp_subst_apply (hasSubst_unit (MvPowerSeries.constantCoeff_X c)) htS]
    congr 1
    funext _
    rw [MvPowerSeries.subst_X htS]
  have hlin : ∀ c (r : I g → C) (F : I g → PowerSeries C),
      MvPowerSeries.subst (fun _ : Unit => t c) (∑ c' : I g, r c' • F c') =
        ∑ c' : I g, r c' • MvPowerSeries.subst (fun _ : Unit => t c) (F c') :=
    fun c r F => subst_lin (hasSubst_unit (ht0 c)) _ r F
  obtain ⟨Γ, hΓ, hL, hSg⟩ := sumCvK X hA hlg0 hax Finset.univ γt hγt
  have hΓS := MvPowerSeries.hasSubst_of_constantCoeff_zero fun i => (hΓ i).1
  have hZ0 : ∀ j, MvPowerSeries.constantCoeff (MvPowerSeries.subst t (Γ j)) = 0 := fun j =>
    constantCoeff_subst_zero ht0 (hΓ j).1
  have hZS := MvPowerSeries.hasSubst_of_constantCoeff_zero hZ0
  have hsum : ∀ f : MvPowerSeries (κ) C, MvPowerSeries.subst (fun j => MvPowerSeries.subst t (Γ j)) f =
      MvPowerSeries.subst t (MvPowerSeries.subst Γ f) := fun f =>
    (MvPowerSeries.subst_comp_subst_apply hΓS htS f).symm
  have hpush : ∀ f : MvPowerSeries (κ) C, MvPowerSeries.subst t (∑ c, MvPowerSeries.subst (γt c) f) =
      ∑ c, MvPowerSeries.subst (fun _ : Unit => t c) (alongCv (γ c) f) := by
    intro f

    rw [← MvPowerSeries.coe_substAlgHom htS, map_sum, MvPowerSeries.coe_substAlgHom]
    refine Finset.sum_congr rfl fun c _ => ?_
    rw [key1, key2]
  have hlgZ : ∀ i, MvPowerSeries.subst (fun j => MvPowerSeries.subst t (Γ j)) (X.lg i) =
      ∑ c' : I g, X.u g c' i • (MvPowerSeries.X c' : MvPowerSeries (I g) C) := by
    intro i
    rw [hsum, hL i, hpush]
    simp only [h1, hlin]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun c' _ => ?_
    rw [← Finset.smul_sum, hC c']
  have hZ : ∀ i, MvPowerSeries.subst t (Γ i) = X.expG g i := by
    intro i
    have e1 : MvPowerSeries.subst (fun j => MvPowerSeries.subst t (Γ j))
        (MvPowerSeries.subst X.lg (X.ex i)) = MvPowerSeries.subst t (Γ i) := by
      rw [hexlg i, MvPowerSeries.subst_X hZS]
    rw [← e1, MvPowerSeries.subst_comp_subst_apply (MvPowerSeries.hasSubst_of_constantCoeff_zero hlg0) hZS]
    unfold RawChart.expG
    congr 1
    funext j
    exact hlgZ j
  refine ⟨Γ, fun i => (hΓ i).1, fun i => (hΓ i).2, hZ, fun q => ?_⟩
  set v := X.u (1 - g) q with hv
  have hvI : ∀ i, V.Ge 0 (v i) := fun i => huI (1 - g) q i
  refine ⟨(MvPowerSeries.subst Γ (X.sg v) - ∑ c, MvPowerSeries.subst (γt c) (X.sg v)) +
    ∑ c, MvPowerSeries.subst (fun _ : Unit => (MvPowerSeries.X c : MvPowerSeries (I g) C)) (lam c q), ?_, ?_⟩
  · refine intS_add (hSg v hvI) (intS_sum _ fun c _ => ?_)
    exact IntS.subst (fun _ => MvPowerSeries.constantCoeff_X _) (fun _ => intS_X _) (intS_ps.2 (hlam c q).2)
  · have hexp : X.expG g = fun j => MvPowerSeries.subst t (Γ j) := by
      funext j
      exact (hZ j).symm
    have hA : ∀ c, MvPowerSeries.subst (fun _ : Unit => t c) (alongCv (γ c) (X.sg v)) =
        MvPowerSeries.subst (fun _ : Unit => t c) (lam c q) -
          MvPowerSeries.subst (fun _ : Unit => t c) (tyS V.l (fun s => S.cur c s (Sum.inr q))) +
          ∑ c' : I g, if X.ty g c' = X.ty (1 - g) q then
            X.sg1 (X.u g c') v •
              MvPowerSeries.subst (fun _ : Unit => t c) (tyS V.l (fun s => S.cur c s (Sum.inl c'))) else 0 := by
      intro c
      have e : alongCv (γ c) (X.sg v) = lam c q - tyS V.l (fun s => S.cur c s (Sum.inr q)) +
          ∑ c' : I g, if X.ty g c' = X.ty (1 - g) q then
            X.sg1 (X.u g c') v • tyS V.l (fun s => S.cur c s (Sum.inl c')) else 0 := by
        rw [h2 c q]
        ring

      rw [e, ← MvPowerSeries.coe_substAlgHom (hasSubst_unit (ht0 c)), map_add (f := _), map_sub, map_sum]
      congr 1
      refine Finset.sum_congr rfl fun c' _ => ?_
      split_ifs
      · rw [map_smul]
      · rw [map_zero]
    have hAll : ∑ c, MvPowerSeries.subst (fun _ : Unit => t c) (alongCv (γ c) (X.sg v)) =
        S.ze t q + ∑ c, MvPowerSeries.subst (fun _ : Unit => t c) (lam c q) +
          ∑ c' : I g, if X.ty g c' = X.ty (1 - g) q then
            X.sg1 (X.u g c') v • (MvPowerSeries.X c' : MvPowerSeries (I g) C) else 0 := by
      simp only [hA]
      rw [Finset.sum_add_distrib, Finset.sum_sub_distrib, hB q, Finset.sum_comm (s := Finset.univ) (t := Finset.univ)]
      have hx : ∀ c' : I g, (∑ c : I g, if X.ty g c' = X.ty (1 - g) q then
            X.sg1 (X.u g c') v •
              MvPowerSeries.subst (fun _ : Unit => t c) (tyS V.l (fun s => S.cur c s (Sum.inl c'))) else 0) =
          if X.ty g c' = X.ty (1 - g) q then
            X.sg1 (X.u g c') v • (MvPowerSeries.X c' : MvPowerSeries (I g) C) else 0 := by
        intro c'
        split_ifs
        · rw [← Finset.smul_sum, hC c']
        · exact Finset.sum_const_zero
      rw [Finset.sum_congr rfl fun c' _ => hx c']
      ring
    have hsplit : MvPowerSeries.subst t ((MvPowerSeries.subst Γ (X.sg v) -
        ∑ c, MvPowerSeries.subst (γt c) (X.sg v)) +
          ∑ c, MvPowerSeries.subst (fun _ : Unit => (MvPowerSeries.X c : MvPowerSeries (I g) C)) (lam c q)) =
        MvPowerSeries.subst t (MvPowerSeries.subst Γ (X.sg v)) -
          ∑ c, MvPowerSeries.subst (fun _ : Unit => t c) (alongCv (γ c) (X.sg v)) +
          ∑ c, MvPowerSeries.subst (fun _ : Unit => t c) (lam c q) := by

      rw [← hpush, ← MvPowerSeries.coe_substAlgHom htS, map_add (f := _), map_sub, map_sum, map_sum]
      simp only [MvPowerSeries.coe_substAlgHom, key2]
    rw [hexp, hsum, hsplit, hAll]
    ring

end CEqGen
end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ExponentialPartialDerivatives.SumAtOf =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqEx =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqEx", "h": "module\n\nimport Formalism.LocalToGlobal.CharacterGerms.RowTiePOActLog\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqDer\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePGerm\nimport Formalism.FormalGroupLog.FormalGroupLogProofs.ChainRule\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieCartAdd\nimport Formalism.LocalToGlobal.CharacterGerms.RowTieCartFB\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqSum2\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqM2\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ

namespace Formalism.L2.FormalSeriesBounds

open PartialDerivEval RowTiePCEqM

namespace RowTiePCEqEx

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ}

theorem pderiv_eval_single {n : ℕ} {a : Fin 1 → Pt C n dd} (ha : Z0 a) (f : PS C 1 dd) (q : Fin n × Fin dd) :
    pderiv (R := C) q (ev a f) = ∑ j, ev a (pderiv (R := C) ((0 : Fin 1), j) f) * pderiv (R := C) q (a 0 j) := by
  unfold ev
  rw [Formalism.G.LogCR.pderiv_subst (a := fun p : Fin 1 × Fin dd => a p.1 p.2) (fun p => ha p.1 p.2) f q,
    Fintype.sum_prod_type, Fin.sum_univ_one]

theorem germEval_oneStandardPoint_self (f : PS C 1 dd) : ev (n := 1) ![pt C dd 0] f = f := by
  unfold ev
  have : (fun p : Fin 1 × Fin dd => (![pt C dd 0] : Fin 1 → Pt C 1 dd) p.1 p.2) = X := by
    funext p
    obtain ⟨k, j⟩ := p
    fin_cases k
    rfl
  rw [this, subst_self]
  rfl

theorem constantCoeff_pderiv {σ : Type} (q : σ) (f : MvPowerSeries σ C) :
    constantCoeff (pderiv (R := C) q f) = coeff (Finsupp.single q 1) f := by
  rw [← coeff_zero_eq_constantCoeff_apply, coeff_pderiv, zero_add]
  simp

theorem ev_zero_pt {n : ℕ} (f : PS C 1 dd) : ev (n := n) (![0] : Fin 1 → Pt C n dd) f = MvPowerSeries.C (constantCoeff f) := by
  apply Formalism.L2.FormalSeriesBounds.OActLog.ev_zero_pt

theorem ex_lin (Y : FBChart C V O dd) (i m : Fin dd) :
    constantCoeff (pderiv (R := C) ((0 : Fin 1), i) (Y.ex m)) = if i = m then 1 else 0 := by
  have hZ : Z0 (![Y.ex] : Fin 1 → Pt C 1 dd) := z0_1 _ Y.ex_const
  have h : constantCoeff (pderiv (R := C) ((0 : Fin 1), i) (comp1 Y.lg Y.ex m)) =
      constantCoeff (pderiv (R := C) ((0 : Fin 1), i) (pt C (n := 1) dd 0 m)) := by
    rw [Y.lg_ex]
  unfold comp1 at h

  rw [pderiv_eval_single hZ, map_sum] at h
  simp only [map_mul, constantCoeff_ev hZ, constantCoeff_pderiv] at h
  have hl : ∀ k, coeff (Finsupp.single ((0 : Fin 1), k) 1) (Y.lg m) = if k = m then 1 else 0 := by
    intro k
    rw [Y.lg_lin m _ (by simp), coeff_X]
    by_cases hk : k = m
    · rw [if_pos hk, if_pos (by rw [hk])]
    · rw [if_neg hk, if_neg]
      intro e
      exact hk (Prod.mk.inj (Finsupp.single_left_injective one_ne_zero e)).2
  simp only [hl, ite_mul, one_mul, zero_mul, Finset.sum_ite_eq', Finset.mem_univ, if_true] at h
  rw [← constantCoeff_pderiv] at h
  change constantCoeff (pderiv (R := C) ((0 : Fin 1), i) (Y.ex m)) =
    coeff (Finsupp.single ((0 : Fin 1), i) 1) (X ((0 : Fin 1), m) : PS C 1 dd) at h
  rw [h, coeff_X]
  by_cases him : i = m
  · rw [if_pos him, if_pos (by rw [him])]
  · rw [if_neg him, if_neg]
    intro e
    exact him (Prod.mk.inj (Finsupp.single_left_injective one_ne_zero e)).2

end RowTiePCEqEx

namespace RowTiePCEqEx

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ}

theorem ex_add (Y : FBChart C V O dd) (j : Fin dd) :
    ev (n := 2) ![fun m => pt C (n := 2) dd 0 m + pt C dd 1 m] (Y.ex j) =
      ev (n := 2) ![comp1 Y.ex (pt C (n := 2) dd 0), comp1 Y.ex (pt C (n := 2) dd 1)] (Y.B.G.F j) := by
  have hA0 : ∀ m, constantCoeff (comp1 Y.ex (pt C (n := 2) dd 0) m) = 0 := fun m =>
    const_ev (z0_1 _ (z0_pt 0)) (Y.ex_const m)
  have hB0 : ∀ m, constantCoeff (comp1 Y.ex (pt C (n := 2) dd 1) m) = 0 := fun m =>
    const_ev (z0_1 _ (z0_pt 1)) (Y.ex_const m)
  have hAB : Z0 (![comp1 Y.ex (pt C (n := 2) dd 0), comp1 Y.ex (pt C (n := 2) dd 1)] : Fin 2 → Pt C 2 dd) := by
    intro k i; fin_cases k
    · exact hA0 i
    · exact hB0 i
  have hZex : Z0 (![Y.ex] : Fin 1 → Pt C 1 dd) := z0_1 _ Y.ex_const
  have hlgk : ∀ (k : Fin 2) m, ev (n := 2) ![comp1 Y.ex (pt C (n := 2) dd k)] (Y.lg m) = pt C dd k m := by
    intro k m
    have e : ev (n := 2) ![comp1 Y.ex (pt C (n := 2) dd k)] (Y.lg m) =
        ev (n := 2) ![pt C dd k] (ev (n := 1) ![Y.ex] (Y.lg m)) := by
      rw [ev_ev hZex (z0_1 _ (z0_pt k))]
      congr 1
      funext k' i
      fin_cases k'
      rfl
    rw [e, show ev (n := 1) ![Y.ex] (Y.lg m) = comp1 Y.lg Y.ex m from rfl, Y.lg_ex,
      show (pt C (n := 1) dd 0 m) = X ((0 : Fin 1), m) from rfl, ev_X (z0_1 _ (z0_pt k))]
    rfl
  set P : Pt C 2 dd := fun j => ev (n := 2) ![comp1 Y.ex (pt C (n := 2) dd 0), comp1 Y.ex (pt C (n := 2) dd 1)]
    (Y.B.G.F j) with hP
  have hP0 : ∀ m, constantCoeff (P m) = 0 := fun m => const_ev hAB (Y.B.G.const m)
  have hZP : Z0 (![P] : Fin 1 → Pt C 2 dd) := z0_1 _ hP0
  have hPl : ∀ m, ev (n := 2) ![P] (Y.lg m) = pt C (n := 2) dd 0 m + pt C dd 1 m := by
    intro m
    have e1 : ev (n := 2) ![P] (Y.lg m) =
        ev (n := 2) ![comp1 Y.ex (pt C (n := 2) dd 0), comp1 Y.ex (pt C (n := 2) dd 1)]
          (ev (n := 2) ![addOf Y.B.G.F (pt C (n := 2) dd 0) (pt C dd 1)] (Y.lg m)) := by
      rw [ev_ev (z0_1 _ (const_addOf Y 0 1)) hAB]
      congr 1
      funext k i
      fin_cases k
      show P i = _
      rw [hP]
      exact congrArg _ (addOf_pts Y.B.G.F i).symm
    rw [e1, Y.lg_add m, ev_add hAB, ev_ev (z0_1 _ (z0_pt 0)) hAB, ev_ev (z0_1 _ (z0_pt 1)) hAB]
    have e2 : ∀ k : Fin 2, (fun k' i => ev (n := 2)
        (![comp1 Y.ex (pt C (n := 2) dd 0), comp1 Y.ex (pt C (n := 2) dd 1)] : Fin 2 → Pt C 2 dd)
        ((![pt C (n := 2) dd k] : Fin 1 → Pt C 2 dd) k' i)) = ![comp1 Y.ex (pt C (n := 2) dd k)] := by
      intro k
      funext k' i
      fin_cases k'
      show ev (n := 2) _ (X (k, i) : PS C 2 dd) = _
      rw [ev_X hAB]
      fin_cases k <;> rfl
    rw [e2 0, e2 1, hlgk 0, hlgk 1]
  have hPS : ∀ j, P j = ev (n := 2) ![fun m => pt C (n := 2) dd 0 m + pt C dd 1 m] (Y.ex j) := by
    intro j
    have e1 : ev (n := 2) ![P] (comp1 Y.ex Y.lg j) = P j := by
      rw [Y.ex_lg, show (pt C (n := 1) dd 0 j) = X ((0 : Fin 1), j) from rfl, ev_X hZP]
      rfl
    rw [← e1]
    unfold comp1
    rw [ev_ev (z0_1 _ Y.lg_const) hZP]
    congr 1
    funext k i
    fin_cases k
    exact hPl i
  exact (hPS j).symm

end RowTiePCEqEx


open RowTiePCEqEx in
theorem exDer_holds {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ}
    (Y : FBChart C V O dd) : ExDerSt Y := by
  intro v j
  have hZex : Z0 (![Y.ex] : Fin 1 → Pt C 1 dd) := z0_1 _ Y.ex_const
  have hQ : Z0 ((![pt C dd 0, 0] : Fin 2 → Pt C 1 dd)) := z0_p0 _ (z0_pt 0)
  have hS0 : ∀ m, constantCoeff (pt C (n := 2) dd 0 m + pt C dd 1 m) = 0 := fun m => by
    rw [map_add (f := _), z0_pt, z0_pt, add_zero]
  have hZS : Z0 (![fun m => pt C (n := 2) dd 0 m + pt C dd 1 m] : Fin 1 → Pt C 2 dd) := z0_1 _ hS0
  have hA0 : ∀ m, constantCoeff (comp1 Y.ex (pt C (n := 2) dd 0) m) = 0 := fun m =>
    const_ev (z0_1 _ (z0_pt 0)) (Y.ex_const m)
  have hB0 : ∀ m, constantCoeff (comp1 Y.ex (pt C (n := 2) dd 1) m) = 0 := fun m =>
    const_ev (z0_1 _ (z0_pt 1)) (Y.ex_const m)
  have hAB : Z0 (![comp1 Y.ex (pt C (n := 2) dd 0), comp1 Y.ex (pt C (n := 2) dd 1)] : Fin 2 → Pt C 2 dd) := by
    intro k i; fin_cases k
    · exact hA0 i
    · exact hB0 i
  have pderiv_pt_ne {k : Fin 2} (hk : k ≠ 1) (i m : Fin dd) :
      pderiv (R := C) ((1 : Fin 2), i) (pt C dd k m) = 0 :=
    pderiv_X_of_ne (fun e => hk (Prod.mk.inj e).1)
  have sum_pderiv_pt (i : Fin dd) (a : Fin dd → PS C 2 dd) :
      ∑ m, a m * pderiv (R := C) ((1 : Fin 2), i) (pt C dd 1 m) = a i := by
    rw [Finset.sum_eq_single i]
    · rw [show pt C dd 1 i = X ((1 : Fin 2), i) from rfl, pderiv_X_self, mul_one]
    · intro m _ hm
      rw [show pt C dd 1 m = X ((1 : Fin 2), m) from rfl,
        pderiv_X_of_ne (fun e => hm (Prod.mk.inj e).2), mul_zero]
    · intro hi
      exact (hi (Finset.mem_univ i)).elim
  have hdk : ∀ (k : Fin 2) (i m : Fin dd), pderiv (R := C) ((1 : Fin 2), i) (comp1 Y.ex (pt C (n := 2) dd k) m) =
      if k = 1 then ev (n := 2) ![pt C dd 1] (pderiv (R := C) ((0 : Fin 1), i) (Y.ex m)) else 0 := by
    intro k i m
    show pderiv (R := C) _ (ev (n := 2) ![pt C (n := 2) dd k] (Y.ex m)) = _
    rw [pderiv_eval_single (z0_1 _ (z0_pt k))]
    split_ifs with hk
    · subst hk
      exact sum_pderiv_pt i _
    · exact Finset.sum_eq_zero fun l _ => by
        rw [show ((![pt C (n := 2) dd k] : Fin 1 → Pt C 2 dd) 0 l) = pt C dd k l from rfl, pderiv_pt_ne hk i l,
          mul_zero]
  have hpt1 : ∀ k : Fin 2, (fun k' l => ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) ((![pt C (n := 2) dd k] : Fin 1 → Pt C 2 dd) k' l)) =
      ![((![pt C dd 0, 0] : Fin 2 → Pt C 1 dd)) k] := by
    intro k
    funext k' l
    fin_cases k'
    exact ev_X hQ k l
  have hL : ∀ i, ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) (pderiv (R := C) ((1 : Fin 2), i)
      (ev (n := 2) ![fun m => pt C (n := 2) dd 0 m + pt C dd 1 m] (Y.ex j))) = pderiv (R := C) ((0 : Fin 1), i) (Y.ex j) := by
    intro i
    rw [pderiv_eval_single hZS]
    have e0 : ∀ m, pderiv (R := C) ((1 : Fin 2), i)
        ((![fun m => pt C (n := 2) dd 0 m + pt C dd 1 m] : Fin 1 → Pt C 2 dd) 0 m) =
        pderiv (R := C) ((1 : Fin 2), i) (pt C (n := 2) dd 1 m) := fun m => by
      show pderiv (R := C) _ (pt C (n := 2) dd 0 m + pt C dd 1 m) = _
      rw [map_add (f := _), pderiv_pt_ne (by decide) i m, zero_add]
    simp only [e0]
    rw [sum_pderiv_pt i, ev_ev hZS hQ]
    have e : (fun k m => ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd)
        ((![fun m => pt C (n := 2) dd 0 m + pt C dd 1 m] : Fin 1 → Pt C 2 dd) k m)) = ![pt C (n := 1) dd 0] := by
      funext k m
      fin_cases k
      show ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) ((X ((0 : Fin 2), m) : PS C 2 dd) + X ((1 : Fin 2), m)) = pt C dd 0 m
      rw [ev_add hQ, ev_X hQ, ev_X hQ]
      show pt C dd 0 m + 0 = pt C dd 0 m
      rw [add_zero]
    rw [e, germEval_oneStandardPoint_self]
  have eB : ∀ g : PS C 1 dd, ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) (ev (n := 2) ![pt C dd 1] g) = MvPowerSeries.C (constantCoeff g) := by
    intro g
    rw [ev_ev (z0_1 _ (z0_pt 1)) hQ, hpt1 1]
    exact ev_zero_pt g
  have eAB : ∀ f : PS C 2 dd, ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd)
      (ev (n := 2) ![comp1 Y.ex (pt C (n := 2) dd 0), comp1 Y.ex (pt C (n := 2) dd 1)] f) =
      ev (n := 1) ![Y.ex, 0] f := by
    intro f
    rw [ev_ev hAB hQ]
    congr 1
    funext k m
    fin_cases k
    · show ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) (ev (n := 2) ![pt C dd 0] (Y.ex m)) = Y.ex m
      rw [ev_ev (z0_1 _ (z0_pt 0)) hQ, hpt1 0]
      exact germEval_oneStandardPoint_self _
    · show ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) (ev (n := 2) ![pt C dd 1] (Y.ex m)) = 0
      rw [eB, Y.ex_const, map_zero]
  have hR : ∀ i, ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) (pderiv (R := C) ((1 : Fin 2), i)
      (ev (n := 2) ![comp1 Y.ex (pt C (n := 2) dd 0), comp1 Y.ex (pt C (n := 2) dd 1)] (Y.B.G.F j))) =
      ev (n := 1) ![Y.ex] (ev (n := 1) ![pt C dd 0, 0] (pderiv (R := C) ((1 : Fin 2), i) (Y.B.G.F j))) := by
    intro i
    rw [pderiv_eval_pair hAB]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, hdk,
      ite_eq_right (by decide : (0 : Fin 2) ≠ 1), ite_true,
      mul_zero, Finset.sum_const_zero, zero_add]
    rw [ev_sum hQ]
    simp only [ev_mul hQ, eAB, eB, ex_lin]
    rw [Finset.sum_eq_single i]
    · rw [if_pos rfl, map_one, mul_one, ev_ev (z0_p0 _ (z0_pt 0)) hZex]
      congr 1
      funext k m
      fin_cases k
      · exact (ev_X hZex 0 m).symm
      · exact (ev_zero hZex).symm
    · intro m _ hm
      rw [if_neg (Ne.symm hm), map_zero, mul_zero]
    · intro h
      exact absurd (Finset.mem_univ i) h
  have key : ∀ i, pderiv (R := C) ((0 : Fin 1), i) (Y.ex j) =
      ev (n := 1) ![Y.ex] (ev (n := 1) ![pt C dd 0, 0] (pderiv (R := C) ((1 : Fin 2), i) (Y.B.G.F j))) := by
    intro i
    rw [← hL i, ex_add Y j, hR i]
  unfold FBChart.dF
  rw [ev_sum hZex]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [ev_mul hZex, ev_C, key i]

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqEx =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ExponentialPartialDerivatives.UnshiftEvalEqSubstRawUnit =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ExponentialPartialDerivatives.UnshiftEvalEqSubstRawUnit", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ExponentialPartialDerivatives.SumAtOf\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqDer\nimport Formalism.FormalGroupLog.FormalGroupLogProofs.ChainRule\nimport Formalism.LocalToGlobal.CharacterGerms.ConstMemTypeSetOfNonneg\nimport Formalism.LocalToGlobal.CharacterGerms.RowTieCartAdd\nimport Formalism.LocalToGlobal.CharacterGerms.RowTieCartFB\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePAddCvSelf\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqEx\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqM2\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds
namespace CEqGen

open Formalism.IncomingBounds PartialDerivEval RowTiePCEq RowTiePCEqSum RowTiePCEqDer ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ}
  (Y : FBChart C V O dd) (d : ℕ) {I : Fin 2 → Type} [∀ g, Fintype (I g)] (u : ∀ g, I g → Fin dd → C)

def rawU : RawChart C d I (Fin dd) where
  lg := fun i => un1 (Y.lg i)
  ex := fun i => un1 (Y.ex i)
  h := Y.h
  k := Y.k
  u := u
  ty := fun _ _ => 0
  n := 0
  j := 0
  j' := 0
  big := fun _ _ => False

theorem rawU_sg (v : Fin dd → C) : (rawU Y d u).sg v = un1 (Y.sgP v) := Y.rawCol_sg v

theorem constantCoeff_rawUnit_exp (i : Fin dd) : MvPowerSeries.constantCoeff ((rawU Y d u).ex i) = 0 := by
  show MvPowerSeries.constantCoeff (un1 (Y.ex i)) = 0
  rw [constantCoeff_uncurry, Y.ex_const i]

theorem unshift_eval_eq_subst_rawUnit (f : PS C 1 dd) :
    un1 (ev (n := 1) ![Y.ex] f) = MvPowerSeries.subst (rawU Y d u).ex (un1 f) := by
  show _ = MvPowerSeries.subst (fun j => un1 (Y.ex j)) (un1 f)
  rw [eval_single_eq_subst, subst_oneVariableUncurry_eq_subst (b := fun q : Fin 1 × Fin dd => Y.ex q.2) (fun q => Y.ex_const q.2),
    subst_singlePointUncurry (fun j => by rw [constantCoeff_uncurry, Y.ex_const j])]

theorem pderiv_expG_U (hE : ExDerSt Y) (g : Fin 2) (k : I g)
    (j : Fin dd) :
    MvPowerSeries.pderiv (R := C) k ((rawU Y d u).expG g j) =
      MvPowerSeries.subst ((rawU Y d u).expG g) (un1 (Y.dF ((rawU Y d u).u g k) j)) := by
  have hlin0 := lin_const (rawU Y d u) g
  have hL := MvPowerSeries.hasSubst_of_constantCoeff_zero hlin0
  have hx0 : ∀ i, MvPowerSeries.constantCoeff ((rawU Y d u).ex i) = 0 := constantCoeff_rawUnit_exp Y d u
  have e1 : MvPowerSeries.subst (rawU Y d u).ex (un1 (Y.dF ((rawU Y d u).u g k) j)) =
      ∑ i, MvPowerSeries.C ((rawU Y d u).u g k i) * MvPowerSeries.pderiv (R := C) i ((rawU Y d u).ex j) := by
    rw [← unshift_eval_eq_subst_rawUnit Y d u, ← hE, uncurry_linear_combination]
    simp only [← pderiv_uncurry]
    rfl
  unfold RawChart.expG
  rw [Formalism.G.LogCR.pderiv_subst hlin0,
    ← MvPowerSeries.subst_comp_subst_apply (MvPowerSeries.hasSubst_of_constantCoeff_zero hx0) hL]
  simp only [pderiv_lin]

  rw [e1, ← MvPowerSeries.coe_substAlgHom hL, map_sum, MvPowerSeries.coe_substAlgHom]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [MvPowerSeries.subst_mul hL, MvPowerSeries.subst_C, mul_comm]

theorem derAt_rawU (hu : ∀ g c i, V.Ge 0 (u g c i)) : DerAt V (rawU Y d u) := by
  intro g k
  have hvI : ∀ i, V.Ge 0 ((rawU Y d u).u (1 - g) k i) := fun i => hu (1 - g) k i
  have hE0 : ∀ q : Fin 2 × Fin dd, MvPowerSeries.constantCoeff ((rawU Y d u).expPt q.1 q.2) = 0 := fun q => by
    rw [expPt_eq]
    exact upG_const _ (constantCoeff_subst_zero (lin_const (rawU Y d u) q.1) (constantCoeff_rawUnit_exp Y d u q.2))
  have hES := MvPowerSeries.hasSubst_of_constantCoeff_zero hE0
  have hd : ∀ (g' : Fin 2) (j : Fin dd), MvPowerSeries.pderiv (R := C) (⟨1 - g, k⟩ : WV I) ((rawU Y d u).expPt g' j) =
      if g' = 1 - g then MvPowerSeries.subst ((rawU Y d u).expPt (1 - g)) (un1 (Y.dF ((rawU Y d u).u (1 - g) k) j))
      else 0 := by
    intro g' j
    split_ifs with hg
    · rw [hg, expPt_eq, pderiv_upG_same, pderiv_expG_U Y d u (exDer_holds Y) (1 - g) k j,
        upG_subst (1 - g) (a := (rawU Y d u).expG (1 - g))
          (fun i => constantCoeff_subst_zero (lin_const (rawU Y d u) (1 - g)) (constantCoeff_rawUnit_exp Y d u i))]
      congr 1
      funext i
      exact (expPt_eq _ _ _).symm
    · rw [expPt_eq, pderiv_upG_ne (1 - g) g' hg k]
  have hch : MvPowerSeries.pderiv (R := C) (⟨1 - g, k⟩ : WV I)
      (MvPowerSeries.subst (fun q : Fin 2 × Fin dd => (rawU Y d u).expPt q.1 q.2) Y.h) =
      ∑ j, MvPowerSeries.subst (fun q : Fin 2 × Fin dd => (rawU Y d u).expPt q.1 q.2)
          (MvPowerSeries.pderiv (R := C) ((1 - g : Fin 2), j) Y.h) *
        MvPowerSeries.subst ((rawU Y d u).expPt (1 - g)) (un1 (Y.dF ((rawU Y d u).u (1 - g) k) j)) := by
    rw [Formalism.G.LogCR.pderiv_subst hE0, Fintype.sum_prod_type, Finset.sum_eq_single (1 - g)]
    · simp only [hd, if_true]
    · intro g' _ hg'
      simp only [hd, if_neg hg', mul_zero, Finset.sum_const_zero]
    · intro h
      exact absurd (Finset.mem_univ _) h
  set J : PS C 2 dd := (∑ j, ev (n := 2) ![pt C dd (1 - g)] (Y.dF ((rawU Y d u).u (1 - g) k) j) *
      MvPowerSeries.pderiv (R := C) ((1 - g : Fin 2), j) Y.h) + ev (n := 2) ![pt C dd g] (Y.sgP ((rawU Y d u).u (1 - g) k))
    with hJd
  have hsubD : MvPowerSeries.subst (fun q : Fin 2 × Fin dd => (rawU Y d u).expPt q.1 q.2)
      (∑ j, ev (n := 2) ![pt C dd (1 - g)] (Y.dF ((rawU Y d u).u (1 - g) k) j) *
        MvPowerSeries.pderiv (R := C) ((1 - g : Fin 2), j) Y.h) =
      ∑ j, MvPowerSeries.subst (fun q : Fin 2 × Fin dd => (rawU Y d u).expPt q.1 q.2)
          (MvPowerSeries.pderiv (R := C) ((1 - g : Fin 2), j) Y.h) *
        MvPowerSeries.subst ((rawU Y d u).expPt (1 - g)) (un1 (Y.dF ((rawU Y d u).u (1 - g) k) j)) := by

    rw [← MvPowerSeries.coe_substAlgHom hES, map_sum, MvPowerSeries.coe_substAlgHom]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [MvPowerSeries.subst_mul hES, subst_exp_eval_two _ hE0, mul_comm]
  have hJ : IntS V J := by
    have hg2 : ∀ x : Fin 2, x = 0 ∨ x = 1 := by decide
    rcases hg2 g with rfl | rfl
    · have h := germII_holds Y _ hvI
      convert h using 2
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [ev_pt_dF]
      rfl
    · have h := germIIM_holds Y _ hvI
      convert h using 2
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [ev_pt_dF]
      rfl
  refine ⟨J, hJ, ?_⟩
  rw [dVar_eq]
  show MvPowerSeries.pderiv (R := C) _ (((Y.k : ℕ) : C) •
    MvPowerSeries.subst (fun q : Fin 2 × Fin dd => (rawU Y d u).expPt q.1 q.2) Y.h) = _
  rw [Derivation.map_smul, hch, ← hsubD, hJd, MvPowerSeries.subst_add hES, subst_exp_eval_two _ hE0, rawU_sg Y d u,
    add_sub_cancel_right]
  rfl

theorem addM_rawU : AddM V (rawU Y d u) := by
  intro τ _ γ γ' hγ hγ'
  set ρ : Fin 2 × Fin dd → MvPowerSeries τ C := fun q => ![γ, γ'] q.1 q.2 with hρ
  have hρ0 : ∀ q, MvPowerSeries.constantCoeff (ρ q) = 0 := by
    rintro ⟨b, j⟩
    fin_cases b
    · exact (hγ j).1
    · exact (hγ' j).1
  have hρI : ∀ q, IntS V (ρ q) := by
    rintro ⟨b, j⟩
    fin_cases b
    · exact (hγ j).2
    · exact (hγ' j).2
  have hρS := MvPowerSeries.hasSubst_of_constantCoeff_zero hρ0
  set γ'' : Fin dd → MvPowerSeries τ C := fun j => MvPowerSeries.subst ρ (Y.B.G.F j) with hγ''
  have hγ''0 : ∀ j, MvPowerSeries.constantCoeff (γ'' j) = 0 := fun j =>
    constantCoeff_subst_zero hρ0 (Y.B.G.const j)
  have hev : ∀ (a : Pt C 2 dd), (∀ j, MvPowerSeries.constantCoeff (a j) = 0) → ∀ f : PS C 1 dd,
      MvPowerSeries.subst ρ (ev ![a] f) = MvPowerSeries.subst (fun j => MvPowerSeries.subst ρ (a j)) (un1 f) := by
    intro a ha f
    rw [eval_single_eq_subst, MvPowerSeries.subst_comp_subst_apply
      (MvPowerSeries.hasSubst_of_constantCoeff_zero fun q : Fin 1 × Fin dd => ha q.2) hρS,
      subst_singlePointUncurry (fun j => constantCoeff_subst_zero hρ0 (ha j))]
  have hp0 : (fun j => MvPowerSeries.subst ρ (pt C (n := 2) dd 0 j)) = γ := by
    funext j
    show MvPowerSeries.subst ρ (MvPowerSeries.X ((0 : Fin 2), j)) = γ j
    rw [MvPowerSeries.subst_X hρS]
    rfl
  have hp1 : (fun j => MvPowerSeries.subst ρ (pt C (n := 2) dd 1 j)) = γ' := by
    funext j
    show MvPowerSeries.subst ρ (MvPowerSeries.X ((1 : Fin 2), j)) = γ' j
    rw [MvPowerSeries.subst_X hρS]
    rfl
  have hpa : (fun j => MvPowerSeries.subst ρ (addOf Y.B.G.F (pt C (n := 2) dd 0) (pt C (n := 2) dd 1) j)) = γ'' := by
    funext j
    rw [addOf_pts]
  have hc0 : ∀ j, MvPowerSeries.constantCoeff (pt C (n := 2) dd 0 j) = 0 := fun j => MvPowerSeries.constantCoeff_X _
  have hc1 : ∀ j, MvPowerSeries.constantCoeff (pt C (n := 2) dd 1 j) = 0 := fun j => MvPowerSeries.constantCoeff_X _
  have hca : ∀ j, MvPowerSeries.constantCoeff (addOf Y.B.G.F (pt C (n := 2) dd 0) (pt C (n := 2) dd 1) j) = 0 :=
    fun j => by rw [addOf_pts]; exact Y.B.G.const j
  refine ⟨γ'', fun j => ⟨hγ''0 j, IntS.subst hρ0 hρI (Y.intF j)⟩, ?_, ?_⟩
  · intro i
    have h := congrArg (MvPowerSeries.subst ρ) (Y.lg_add i)
    rw [← MvPowerSeries.coe_substAlgHom hρS, map_add (f := _), MvPowerSeries.coe_substAlgHom hρS, hev _ hca, hev _ hc0,
      hev _ hc1, hpa, hp0, hp1] at h
    exact h
  · intro v hv
    have h := IntS.subst hρ0 hρI (germI_holds Y v hv)
    rw [← MvPowerSeries.coe_substAlgHom hρS, map_sub, map_sub, MvPowerSeries.coe_substAlgHom hρS, hev _ hca,
      hev _ hc0, hev _ hc1, hpa, hp0, hp1, ← rawU_sg Y d u v] at h
    exact h

end CEqGen
end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ExponentialPartialDerivatives.UnshiftEvalEqSubstRawUnit =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ExponentialPartialDerivatives =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ExponentialPartialDerivatives", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ExponentialPartialDerivatives.UnshiftEvalEqSubstRawUnit\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieSelf\nimport Formalism.LocalToGlobal.CharacterGerms.ConstMemTypeSetOfNonneg\nimport Formalism.LocalToGlobal.CharacterGerms.RowTieCartAdd\nimport Formalism.LocalToGlobal.CharacterGerms.RowTiePAddCvSelf\nimport Formalism.LocalToGlobal.CharacterGerms.RowTiePGerm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds
namespace CEqGen

open Formalism.IncomingBounds PartialDerivEval RowTiePCEq RowTiePCEqSum RowTiePCEqDer ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ}
  (Y : FBChart C V O dd) {d : ℕ} {I0 : Type} [Fintype I0] (p : SelfData Y d I0)

def colU (col : Fin 2) : RawChart C d (fun _ => I0) (Fin dd) :=
  rawU Y d (fun g c i => (Y.rawSelf p).u g c (col, i))

theorem linW_const {I : Fin 2 → Type} [∀ g, Fintype (I g)] {κ : Type} (X : RawChart C d I κ) (g : Fin 2) (j : κ) :
    MvPowerSeries.constantCoeff
      (∑ c : I g, X.u g c j • (MvPowerSeries.X (⟨g, c⟩ : WV I) : MvPowerSeries (WV I) C)) = 0 := by

  rw [map_sum]
  refine Finset.sum_eq_zero fun c _ => ?_
  rw [← MvPowerSeries.coeff_zero_eq_constantCoeff_apply, MvPowerSeries.coeff_smul,
    MvPowerSeries.coeff_zero_eq_constantCoeff_apply, MvPowerSeries.constantCoeff_X, mul_zero]

theorem expPt_col (g col : Fin 2) (j : Fin dd) :
    (Y.rawSelf p).expPt g (col, j) = (colU Y p col).expPt g j := by
  show MvPowerSeries.subst _ (inCol col (un1 (Y.ex j))) = _
  rw [subst_inCol (linW_const (Y.rawSelf p) g)]
  rfl

theorem expPt_self0 (q : Fin 2 × (Fin 2 × Fin dd)) :
    MvPowerSeries.constantCoeff ((Y.rawSelf p).expPt q.1 q.2) = 0 :=
  constantCoeff_subst_zero (linW_const (Y.rawSelf p) q.1) (Y.self_chart_exp_constantCoeff p q.2)

theorem subst_hCol {τ : Type} {a : Fin 2 × (Fin 2 × Fin dd) → MvPowerSeries τ C}
    (ha : ∀ x, MvPowerSeries.constantCoeff (a x) = 0) (col : Fin 2) (f : PS C 2 dd) :
    MvPowerSeries.subst a (hCol col f) = MvPowerSeries.subst (fun q : Fin 2 × Fin dd => a (q.1, (col, q.2))) f := by
  have hS := MvPowerSeries.hasSubst_of_constantCoeff_zero ha
  unfold hCol
  rw [MvPowerSeries.subst_comp_subst_apply
    (MvPowerSeries.hasSubst_of_constantCoeff_zero fun _ => MvPowerSeries.constantCoeff_X _) hS]
  congr 1
  funext q
  rw [MvPowerSeries.subst_X hS]

theorem subst_E_hCol (col : Fin 2) (f : PS C 2 dd) :
    MvPowerSeries.subst (fun q : Fin 2 × (Fin 2 × Fin dd) => (Y.rawSelf p).expPt q.1 q.2) (hCol col f) =
      MvPowerSeries.subst (fun q : Fin 2 × Fin dd => (colU Y p col).expPt q.1 q.2) f := by
  rw [subst_hCol (expPt_self0 Y p)]
  congr 1
  funext q
  exact expPt_col Y p q.1 col q.2

theorem hRow_self : (Y.rawSelf p).hRow = ∑ col, (colU Y p col).hRow := by
  have hES := MvPowerSeries.hasSubst_of_constantCoeff_zero (expPt_self0 Y p)
  show ((Y.k : ℕ) : C) • MvPowerSeries.subst (fun q : Fin 2 × (Fin 2 × Fin dd) => (Y.rawSelf p).expPt q.1 q.2)
    (∑ col, hCol col Y.h) = ∑ col, ((Y.k : ℕ) : C) •
      MvPowerSeries.subst (fun q : Fin 2 × Fin dd => (colU Y p col).expPt q.1 q.2) Y.h

  rw [← MvPowerSeries.coe_substAlgHom hES, map_sum, Finset.smul_sum]
  refine Finset.sum_congr rfl fun col _ => ?_
  rw [MvPowerSeries.coe_substAlgHom, subst_E_hCol]

theorem subst_sg_self {τ : Type} {a : Fin 2 × Fin dd → MvPowerSeries τ C}
    (ha : ∀ x, MvPowerSeries.constantCoeff (a x) = 0) (v : Fin 2 × Fin dd → C) :
    MvPowerSeries.subst a ((Y.rawSelf p).sg v) =
      ∑ col, MvPowerSeries.subst (fun i => a (col, i)) ((colU Y p col).sg fun i => v (col, i)) := by
  have hS := MvPowerSeries.hasSubst_of_constantCoeff_zero ha

  rw [Y.rawSelf_sg p v, ← MvPowerSeries.coe_substAlgHom hS, map_sum]
  refine Finset.sum_congr rfl fun col _ => ?_
  rw [MvPowerSeries.coe_substAlgHom, subst_inCol ha]
  rfl

theorem derAt_self : DerAt V (Y.rawSelf p) := by
  intro g k
  have hES := MvPowerSeries.hasSubst_of_constantCoeff_zero (expPt_self0 Y p)
  have hcol := fun col : Fin 2 => derAt_rawU Y d (fun g c i => (Y.rawSelf p).u g c (col, i))
    (fun g c i => Y.rawSelf_u_integral p g c (col, i)) g k
  choose J hJI hJ using hcol
  refine ⟨∑ col, hCol col (J col), intS_sum _ fun col _ =>
    IntS.subst (fun _ => MvPowerSeries.constantCoeff_X _) (fun _ => intS_X _) (hJI col), ?_⟩
  have e1 : MvPowerSeries.subst (fun q : Fin 2 × (Fin 2 × Fin dd) => (Y.rawSelf p).expPt q.1 q.2)
      (∑ col, hCol col (J col)) =
      ∑ col, MvPowerSeries.subst (fun q : Fin 2 × Fin dd => (colU Y p col).expPt q.1 q.2) (J col) := by

    rw [← MvPowerSeries.coe_substAlgHom hES, map_sum]
    refine Finset.sum_congr rfl fun col _ => ?_
    rw [MvPowerSeries.coe_substAlgHom, subst_E_hCol]
  have e2 : MvPowerSeries.subst ((Y.rawSelf p).expPt g) ((Y.rawSelf p).sg ((Y.rawSelf p).u (1 - g) k)) =
      ∑ col, MvPowerSeries.subst ((colU Y p col).expPt g) ((colU Y p col).sg ((colU Y p col).u (1 - g) k)) := by
    rw [subst_sg_self Y p (fun x => expPt_self0 Y p (g, x))]
    refine Finset.sum_congr rfl fun col _ => ?_
    congr 1
    funext i
    exact expPt_col Y p g col i
  have e3 : dVar (⟨1 - g, k⟩ : WV fun _ : Fin 2 => I0) (Y.rawSelf p).hRow =
      ∑ col, dVar (⟨1 - g, k⟩ : WV fun _ : Fin 2 => I0) (colU Y p col).hRow := by

    rw [hRow_self, dVar_eq, map_sum]
    simp only [dVar_eq]
  rw [e3, e1, e2, ← Finset.sum_sub_distrib, Finset.smul_sum]
  exact Finset.sum_congr rfl fun col _ => hJ col

theorem addM_self : AddM V (Y.rawSelf p) := by
  intro τ _ γ γ' hγ hγ'
  have hcol := fun col : Fin 2 => addM_rawU Y d (fun g c i => (Y.rawSelf p).u g c (col, i)) τ
    (fun i => γ (col, i)) (fun i => γ' (col, i)) (fun i => hγ (col, i)) (fun i => hγ' (col, i))
  choose G hG hGlg hGsg using hcol
  have hG0 : ∀ x : Fin 2 × Fin dd, MvPowerSeries.constantCoeff (G x.1 x.2) = 0 := fun x => (hG x.1 x.2).1
  refine ⟨fun x => G x.1 x.2, fun x => hG x.1 x.2, ?_, ?_⟩
  · rintro ⟨col, i⟩
    show MvPowerSeries.subst _ (inCol col (un1 (Y.lg i))) =
      MvPowerSeries.subst γ (inCol col (un1 (Y.lg i))) + MvPowerSeries.subst γ' (inCol col (un1 (Y.lg i)))
    rw [subst_inCol hG0, subst_inCol (fun x => (hγ x).1), subst_inCol (fun x => (hγ' x).1)]
    exact hGlg col i
  · intro v hv
    rw [subst_sg_self Y p hG0, subst_sg_self Y p (fun x => (hγ x).1), subst_sg_self Y p (fun x => (hγ' x).1),
      ← Finset.sum_sub_distrib, ← Finset.sum_sub_distrib]
    exact intS_sum _ fun col _ => hGsg col _ fun i => hv (col, i)

end CEqGen


open CEqGen in
theorem cEqSelf_holds : CEqSelfSt := by
  intro C _ _ V O _ _ dd Y d _ I0 _ p _ H
  exact cEq_of (Y.rawSelf p) H
    (sumAt_of (Y.rawSelf p) (addM_self Y p) (Y.self_chart_log_constantCoeff p) (Y.rawSelf_axis0 p) (Y.rawSelf_exlg p)
      (Y.rawSelf_u_integral p))
    (derAt_self Y p)

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ExponentialPartialDerivatives =====
