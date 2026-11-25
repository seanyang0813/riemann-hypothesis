module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ToNatLengthEqRangeAddRange
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PullbackAndTensorModule
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsRigidifiedIso
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniformBaseChange.PullGt
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FormalTwistingNeTrivial, Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RestrictionPoincareBundle

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FormalTwistingNeTrivial =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FormalTwistingNeTrivial", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ToNatLengthEqRangeAddRange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits TopologicalSpace
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.CechPic GlobalTheory.Vert

namespace GlobalTheory.FormalPic

section Iso

variable {X Y : Scheme.{0}} {A B C : LB X}

theorem isGen_iso_iff (u : LB.Iso A B) : u.IsGen ↔ ∀ (x : X) (p q : B.ι × A.ι), x ∈ B.U p.1 ⊓ A.U p.2 → x ∈ B.U q.1 ⊓ A.U q.2 →
    gm (𝟙 X) x (B.U p.1 ⊓ A.U p.2) (u.s p) =
      gm (𝟙 X) x _ (B.g p.1 q.1) * (gm (𝟙 X) x _ (A.g p.2 q.2))⁻¹ * gm (𝟙 X) x (B.U q.1 ⊓ A.U q.2) (u.s q) := by
  refine (isGen_iff_germ u).trans (forall₃_congr fun x p q => forall₂_congr fun hp hq => ?_)
  rw [gm_div' B A (𝟙 X) x p q hp hq]
  rfl

theorem gm_congr {U V : X.Opens} {a : Γ(X, U)ˣ} {b : Γ(X, V)ˣ} {W : X.Opens} {c : Γ(X, W)ˣ}
    (h : ∀ x ∈ U ⊓ V ⊓ W, gm (𝟙 X) x U a = gm (𝟙 X) x V b * gm (𝟙 X) x W c) (f : Y ⟶ X) (y : Y)
    (hy : f y ∈ U ⊓ V ⊓ W) : gm f y U a = gm f y V b * gm f y W c := by
  have e : res (inf_le_left.trans inf_le_left : U ⊓ V ⊓ W ≤ U) a =
      res (inf_le_left.trans inf_le_right : U ⊓ V ⊓ W ≤ V) b * res (inf_le_right : U ⊓ V ⊓ W ≤ W) c :=
    unit_ext fun x hx => by rw [map_mul, gm_res _ x _ hx, gm_res _ x _ hx, gm_res _ x _ hx]; exact h x hx
  have := congrArg (gm f y _) e
  rwa [map_mul, gm_res _ y _ hy, gm_res _ y _ hy, gm_res _ y _ hy] at this

theorem exists_trans (hA : A.IsLB) (hB : B.IsLB) (hC : C.IsLB) {u : LB.Iso A B} {v : LB.Iso B C} (hu : u.IsGen)
    (hv : v.IsGen) : ∃ w : LB.Iso A C, w.IsGen ∧ ∀ (Y : Scheme.{0}) (f : Y ⟶ X) (y : Y) (a : A.ι) (b : B.ι) (c : C.ι),
      f y ∈ A.U a → f y ∈ B.U b → f y ∈ C.U c → gm f y (C.U c ⊓ A.U a) (w.s (c, a)) =
        gm f y (C.U c ⊓ B.U b) (v.s (c, b)) * gm f y (B.U b ⊓ A.U a) (u.s (b, a)) := by
  rw [isGen_iso_iff] at hu hv
  have glue : ∀ (c : C.ι) (a : A.ι), ∃ s : Γ(X, C.U c ⊓ A.U a)ˣ, ∀ (x : X) (b : B.ι), x ∈ A.U a → x ∈ B.U b → x ∈ C.U c →
      gm (𝟙 X) x _ s = gm (𝟙 X) x (C.U c ⊓ B.U b) (v.s (c, b)) * gm (𝟙 X) x (B.U b ⊓ A.U a) (u.s (b, a)) := by
    intro c a
    have l₁ : ∀ b, C.U c ⊓ A.U a ⊓ B.U b ≤ C.U c ⊓ B.U b := fun b x hx => ⟨hx.1.1, hx.2⟩
    have l₂ : ∀ b, C.U c ⊓ A.U a ⊓ B.U b ≤ B.U b ⊓ A.U a := fun b x hx => ⟨hx.2, hx.1.2⟩
    have val : ∀ b, ∀ x ∈ C.U c ⊓ A.U a ⊓ B.U b, gm (𝟙 X) x _ (res (l₁ b) (v.s (c, b)) * res (l₂ b) (u.s (b, a))) =
        gm (𝟙 X) x (C.U c ⊓ B.U b) (v.s (c, b)) * gm (𝟙 X) x (B.U b ⊓ A.U a) (u.s (b, a)) := fun b x hx =>
      (map_mul _ _ _).trans (congrArg₂ (· * ·) (gm_res _ x _ hx _) (gm_res _ x _ hx _))
    obtain ⟨s, hs⟩ := glue_unit (C.U c ⊓ A.U a) (fun b => C.U c ⊓ A.U a ⊓ B.U b) (fun _ => inf_le_left)
      (fun x hx => by
        obtain ⟨b, hb⟩ := exists_chart hB x
        exact Opens.mem_iSup.2 ⟨b, hx, hb⟩)
      (fun b => res (l₁ b) (v.s (c, b)) * res (l₂ b) (u.s (b, a))) (fun b b' x hx => by
        rw [val b x hx.1, val b' x hx.2, hu x (b, a) (b', a) (l₂ b hx.1) (l₂ b' hx.2),
          hv x (c, b) (c, b') (l₁ b hx.1) (l₁ b' hx.2), gm_self hA (𝟙 X) x hx.1.1.2, gm_self hC (𝟙 X) x hx.1.1.1,
          inv_one, mul_one, one_mul, mul_mul_mul_comm, inv_mul_cancel, one_mul])
    refine ⟨s, fun x b ha hb hc => ?_⟩
    have hx : x ∈ C.U c ⊓ A.U a ⊓ B.U b := ⟨⟨hc, ha⟩, hb⟩
    exact (gm_res (𝟙 X) x inf_le_left hx s).symm.trans ((congrArg (gm (𝟙 X) x _) (hs b)).trans (val b x hx))
  choose s hs using glue
  refine ⟨⟨fun p => s p.1 p.2⟩, (isGen_iso_iff _).2 fun x p q hp hq => ?_, fun Y f y a b c ha hb hc =>
    gm_congr (fun x hx => hs c a x b hx.1.1.2 hx.2.1 hx.1.1.1) f y ⟨⟨⟨hc, ha⟩, hc, hb⟩, hb, ha⟩⟩
  obtain ⟨b, hb⟩ := exists_chart hB x
  refine (hs p.1 p.2 x b hp.2 hb hp.1).trans (Eq.trans ?_ (congrArg _ (hs q.1 q.2 x b hq.2 hb hq.1).symm))
  rw [hu x (b, p.2) (b, q.2) ⟨hb, hp.2⟩ ⟨hb, hq.2⟩, hv x (p.1, b) (q.1, b) ⟨hp.1, hb⟩ ⟨hq.1, hb⟩,
    gm_self hB (𝟙 X) x hb, inv_one, mul_one, one_mul, mul_mul_mul_comm]

end Iso

variable {X : ℕ → Scheme.{0}} (i : ∀ e, X e ⟶ X (e + 1))

structure FLB : Type 1 where

  ι : Type

  U : ∀ e, ι → (X e).Opens

  g : ∀ e a b, Γ(X e, U e a ⊓ U e b)ˣ
  isLB : ∀ e, LB.IsLB ⟨ι, U e, g e⟩
  U_eq : ∀ e a, U e a = i e ⁻¹ᵁ U (e + 1) a
  g_eq : ∀ e a b, g e a b = res (U := i e ⁻¹ᵁ (U (e + 1) a ⊓ U (e + 1) b))
    (le_inf (inf_le_left.trans (U_eq e a).le) (inf_le_right.trans (U_eq e b).le)) (pullU (i e) _ (g (e + 1) a b))

variable {i}

theorem eq_res_pullU_iff {Y Z : Scheme.{0}} (f : Z ⟶ Y) {U : Y.Opens} {V : Z.Opens} (h : V ≤ f ⁻¹ᵁ U) (a : Γ(Z, V)ˣ)
    (b : Γ(Y, U)ˣ) : a = res h (pullU f U b) ↔ ∀ z ∈ V, gm (𝟙 Z) z V a = gm f z U b := by
  have e : ∀ z ∈ V, gm (𝟙 Z) z V (res h (pullU f U b)) = gm f z U b := fun z hz =>
    (gm_res _ z h hz _).trans ((gm_pull (𝟙 Z) f z U (h hz) b).trans (by rw [Category.id_comp]))
  exact ⟨fun H z hz => H ▸ e z hz, fun H => unit_ext fun z hz => (H z hz).trans (e z hz).symm⟩

namespace FLB

abbrev lb (L : FLB i) (e : ℕ) : LB (X e) := ⟨L.ι, L.U e, L.g e⟩

theorem mem_succ (L : FLB i) {e : ℕ} {a : L.ι} {x : X e} (h : x ∈ L.U e a) : i e x ∈ L.U (e + 1) a := (L.U_eq e a).le h

def Compat {L M : FLB i} (u : ∀ e, LB.Iso (L.lb e) (M.lb e)) : Prop :=
  ∀ e (p : M.ι × L.ι), (u e).s p = res (U := i e ⁻¹ᵁ (M.U (e + 1) p.1 ⊓ L.U (e + 1) p.2))
    (le_inf (inf_le_left.trans (M.U_eq e p.1).le) (inf_le_right.trans (L.U_eq e p.2).le)) (pullU (i e) _ ((u (e + 1)).s p))

theorem compat_iff {L M : FLB i} (u : ∀ e, LB.Iso (L.lb e) (M.lb e)) : Compat u ↔ ∀ e (p : M.ι × L.ι), ∀ x ∈ M.U e p.1 ⊓ L.U e p.2,
    gm (𝟙 _) x (M.U e p.1 ⊓ L.U e p.2) ((u e).s p) = gm (i e) x (M.U (e + 1) p.1 ⊓ L.U (e + 1) p.2) ((u (e + 1)).s p) :=
  forall₂_congr fun _ _ => eq_res_pullU_iff _ _ _ _

def Iso (L M : FLB i) : Prop := ∃ u : ∀ e, LB.Iso (L.lb e) (M.lb e), (∀ e, (u e).IsGen) ∧ Compat u

def reindex (L : FLB i) {κ : Type} (j : κ → L.ι) (h : ∀ e (x : X e), ∃ k, x ∈ L.U e (j k)) : FLB i where
  ι := κ
  U e k := L.U e (j k)
  g e k l := L.g e (j k) (j l)
  isLB e := ⟨top_le_iff.1 fun x _ => Opens.mem_iSup.2 (h e x), fun _ => (L.isLB e).g_self _,
    fun _ _ _ => (L.isLB e).cocycle _ _ _⟩
  U_eq e k := L.U_eq e (j k)
  g_eq e k l := L.g_eq e (j k) (j l)

theorem reindex_iso (L : FLB i) {κ : Type} (j : κ → L.ι) (h : ∀ e (x : X e), ∃ k, x ∈ L.U e (j k)) :
    (L.reindex j h).Iso L := by
  refine ⟨fun e => ⟨fun p => L.g e p.1 (j p.2)⟩, fun e => (isGen_iso_iff _).2 fun x p q hp hq => ?_,
    fun e p => L.g_eq e p.1 (j p.2)⟩
  have a := gm_cocycle (L.isLB e) (𝟙 _) x hp.1 hq.1 hq.2
  have b := gm_cocycle (L.isLB e) (𝟙 _) x hp.1 hp.2 hq.2
  exact (eq_mul_inv_of_mul_eq (b.trans a.symm)).trans (mul_right_comm _ _ _)

theorem Iso.refl (L : FLB i) : L.Iso L := L.reindex_iso id fun e => exists_chart (L.isLB e)

theorem Iso.symm {L M : FLB i} (h : L.Iso M) : M.Iso L := by
  obtain ⟨u, hu, hc⟩ := h
  have le : ∀ e (p : L.ι × M.ι), L.U e p.1 ⊓ M.U e p.2 ≤ M.U e p.2 ⊓ L.U e p.1 := fun e p y hy => ⟨hy.2, hy.1⟩
  have v : ∀ e {Z : Scheme.{0}} (f : Z ⟶ X e) (z : Z) (p : L.ι × M.ι), f z ∈ L.U e p.1 ⊓ M.U e p.2 →
      gm f z (L.U e p.1 ⊓ M.U e p.2) (res (le e p) ((u e).s (p.2, p.1)))⁻¹ =
      (gm f z (M.U e p.2 ⊓ L.U e p.1) ((u e).s (p.2, p.1)))⁻¹ := fun e Z f z p hp =>
    (map_inv _ _).trans (congrArg (·⁻¹) (gm_res _ z _ hp _))
  refine ⟨fun e => ⟨fun p => (res (le e p) ((u e).s (p.2, p.1)))⁻¹⟩, fun e => (isGen_iso_iff _).2 fun x p q hp hq => ?_,
    (compat_iff _).2 fun e p x hx => ?_⟩
  · refine (v e _ x p hp).trans (Eq.trans ?_ (congrArg _ (v e _ x q hq).symm))
    refine (congrArg (·⁻¹) ((isGen_iso_iff _).1 (hu e) x (p.2, p.1) (q.2, q.1) (le e p hp) (le e q hq))).trans ?_
    simp only [mul_inv, inv_inv]
    exact congrArg (· * _) (mul_comm _ _)
  · exact (v e _ x p hx).trans ((congrArg (·⁻¹) ((compat_iff u).1 hc e (p.2, p.1) x (le e p hx))).trans
      (v (e + 1) _ x p ⟨L.mem_succ hx.1, M.mem_succ hx.2⟩).symm)

theorem Iso.trans {L M N : FLB i} (h : L.Iso M) (h' : M.Iso N) : L.Iso N := by
  obtain ⟨u, hu, hc⟩ := h
  obtain ⟨v, hv, hd⟩ := h'
  choose w hw hg using fun e => exists_trans (L.isLB e) (M.isLB e) (N.isLB e) (hu e) (hv e)
  refine ⟨w, hw, (compat_iff _).2 fun e p x hx => ?_⟩
  obtain ⟨b, hb⟩ := exists_chart (M.isLB e) x
  exact (hg e _ (𝟙 _) x p.2 b p.1 hx.2 hb hx.1).trans ((congrArg₂ (· * ·)
    ((compat_iff v).1 hd e (p.1, b) x ⟨hx.1, hb⟩) ((compat_iff u).1 hc e (b, p.2) x ⟨hb, hx.2⟩)).trans
    (hg (e + 1) _ (i e) x p.2 b p.1 (L.mem_succ hx.2) (M.mem_succ hb) (N.mem_succ hx.1)).symm)

instance setoid : Setoid (FLB i) := ⟨Iso, Iso.refl, Iso.symm, Iso.trans⟩

variable {Y Y' : Scheme.{0}} (q : ∀ e, X e ⟶ Y) (hq : ∀ e, i e ≫ q (e + 1) = q e)

def ofPull (L : LB Y) (hL : L.IsLB) : FLB i :=
  have hU : ∀ e (a : PUnit → L.ι), (L.pull (q e)).U a = i e ⁻¹ᵁ (L.pull (q (e + 1))).U a := fun e a => by
    ext x
    refine mem_pull.trans (Iff.trans ?_ (mem_pull (F := q (e + 1)) (x := i e x)).symm)
    rw [← hq e]; rfl
  { ι := PUnit → L.ι
    U e := (L.pull (q e)).U
    g e := (L.pull (q e)).g
    isLB e := pull_isLB hL (q e)
    U_eq := hU
    g_eq e a b := (eq_res_pullU_iff _ _ _ _).2 fun x hx => by
      refine (gm_pull_g L (q e) (𝟙 _) x a b hx.1 hx.2).trans
        (Eq.trans ?_ (gm_pull_g L (q (e + 1)) (i e) x a b ((hU e a).le hx.1) ((hU e b).le hx.2)).symm)
      rw [Category.id_comp, hq] }

theorem iso_of_chartPull {L M : FLB i} {A B : LB Y} (a : L.ι → A.ι) (b : M.ι → B.ι)
    (la : ∀ e k, L.U e k ≤ q e ⁻¹ᵁ A.U (a k)) (lb : ∀ e k, M.U e k ≤ q e ⁻¹ᵁ B.U (b k))
    (ga : ∀ e (x : X e) k l, x ∈ L.U e k → x ∈ L.U e l → gm (𝟙 _) x _ (L.g e k l) = gm (q e) x _ (A.g (a k) (a l)))
    (gb : ∀ e (x : X e) k l, x ∈ M.U e k → x ∈ M.U e l → gm (𝟙 _) x _ (M.g e k l) = gm (q e) x _ (B.g (b k) (b l)))
    (hq : ∀ e, i e ≫ q (e + 1) = q e) (h : LBIso A B) : L.Iso M := by
  obtain ⟨w, hw⟩ := h
  have le : ∀ e (p : M.ι × L.ι), M.U e p.1 ⊓ L.U e p.2 ≤ q e ⁻¹ᵁ (B.U (b p.1) ⊓ A.U (a p.2)) := fun e p y hy =>
    ⟨lb e _ hy.1, la e _ hy.2⟩
  have v : ∀ e {Z : Scheme.{0}} (f : Z ⟶ X e) (z : Z) (p : M.ι × L.ι), f z ∈ M.U e p.1 ⊓ L.U e p.2 →
      gm f z (M.U e p.1 ⊓ L.U e p.2) (res (le e p) (pullU (q e) _ (w.s (b p.1, a p.2)))) =
      gm (f ≫ q e) z (B.U (b p.1) ⊓ A.U (a p.2)) (w.s (b p.1, a p.2)) := fun e Z f z p hp =>
    (gm_res f z _ hp _).trans (gm_pull f (q e) z _ (le e p hp) _)
  refine ⟨fun e => ⟨fun p => res (le e p) (pullU (q e) _ (w.s (b p.1, a p.2)))⟩,
    fun e => (isGen_iso_iff _).2 fun x p r hp hr => ?_, (compat_iff _).2 fun e p x hx => ?_⟩
  · refine (v e _ x p hp).trans (Eq.trans ?_ (congrArg₂ (· * ·) (congrArg₂ (fun s t => s * t⁻¹)
      (gb e x _ _ hp.1 hr.1) (ga e x _ _ hp.2 hr.2)) (v e _ x r hr)).symm)
    rw [Category.id_comp]
    have hm : q e x ∈ B.U (b p.1) ⊓ A.U (a p.2) ⊓ (B.U (b r.1) ⊓ A.U (a r.2)) := ⟨le e p hp, le e r hr⟩
    have := congrArg (gm (q e) x (B.U (b p.1) ⊓ A.U (a p.2) ⊓ (B.U (b r.1) ⊓ A.U (a r.2))))
      (hw (b p.1, a p.2) (b r.1, a r.2))
    exact (gm_res _ x _ hm _).symm.trans (this.trans ((map_mul _ _ _).trans (congrArg₂ (· * ·)
      (gm_div A B (q e) x (b p.1, a p.2) (b r.1, a r.2) hm) (gm_res _ x _ hm _))))
  · refine (v e _ x p hx).trans (Eq.trans ?_ (v (e + 1) _ x p ⟨M.mem_succ hx.1, L.mem_succ hx.2⟩).symm)
    rw [Category.id_comp, hq]

theorem ofPull_iso {A B : LB Y} (hA : A.IsLB) (hB : B.IsLB) (h : LBIso A B) : (ofPull q hq A hA).Iso (ofPull q hq B hB) :=
  iso_of_chartPull q (fun J => J ⟨⟩) (fun J => J ⟨⟩) (fun _ _ _ hx => mem_pull.1 hx) (fun _ _ _ hx => mem_pull.1 hx)
    (fun e x k l hk hl => (Geo.Tor.chartPullPull A (q e) (q e) rfl).g x k l hk hl)
    (fun e x k l hk hl => (Geo.Tor.chartPullPull B (q e) (q e) rfl).g x k l hk hl) hq h

end FLB


variable (i) in
structure FLBOn (κ : Type) : Type where

  U : ∀ e, κ → (X e).Opens

  g : ∀ e a b, Γ(X e, U e a ⊓ U e b)ˣ
  isLB : ∀ e, LB.IsLB ⟨κ, U e, g e⟩
  U_eq : ∀ e a, U e a = i e ⁻¹ᵁ U (e + 1) a
  g_eq : ∀ e a b, g e a b = res (U := i e ⁻¹ᵁ (U (e + 1) a ⊓ U (e + 1) b))
    (le_inf (inf_le_left.trans (U_eq e a).le) (inf_le_right.trans (U_eq e b).le)) (pullU (i e) _ (g (e + 1) a b))

def FLBOn.toFLB {κ : Type} (L : FLBOn i κ) : FLB i := ⟨κ, L.U, L.g, L.isLB, L.U_eq, L.g_eq⟩

def FLB.toOn (L : FLB i) : FLBOn i L.ι := ⟨L.U, L.g, L.isLB, L.U_eq, L.g_eq⟩

instance small_quotient : Small.{0} (Quotient (FLB.setoid (i := i))) := by
  refine small_of_surjective (α := FLBOn i (Σ e, X e)) (f := fun p => Quotient.mk _ p.toFLB) fun c => ?_
  obtain ⟨L, rfl⟩ := Quotient.exists_rep c
  choose j hj using fun x : Σ e, X e => exists_chart (L.isLB x.1) x.2
  have h : ∀ e (x : X e), ∃ k, x ∈ L.U e (j k) := fun e x => ⟨⟨e, x⟩, hj ⟨e, x⟩⟩
  exact ⟨(L.reindex j h).toOn, Quotient.sound (L.reindex_iso j h)⟩


variable (i) in
def FPic : Type := Shrink.{0} (Quotient (FLB.setoid (i := i)))

def fcls (L : FLB i) : FPic i := equivShrink _ (Quotient.mk _ L)

theorem fcls_eq_iff {L M : FLB i} : fcls L = fcls M ↔ L.Iso M :=
  (equivShrink _).injective.eq_iff.trans (Quotient.eq (r := FLB.setoid))

def level (e : ℕ) (c : FPic i) : SmallPic (X e) :=
  Quotient.lift (s := FLB.setoid) (fun L : FLB i => smallCls (L.lb e) (L.isLB e))
    (fun _ _ h => (smallCls_eq_iff _ _).2 (h.elim fun u hu => ⟨u e, hu.1 e⟩)) ((equivShrink _).symm c)

theorem level_fcls (e : ℕ) (L : FLB i) : level e (fcls L) = smallCls (L.lb e) (L.isLB e) := by
  rw [level, fcls, Equiv.symm_apply_apply]; rfl

variable {Y Y' : Scheme.{0}} (q : ∀ e, X e ⟶ Y) (hq : ∀ e, i e ≫ q (e + 1) = q e)

def fpull (c : SmallPic Y) : FPic i :=
  Quotient.lift (s := CechPic.setoid Y) (fun A => fcls (FLB.ofPull q hq A.1 A.2))
    (fun A B h => fcls_eq_iff.2 (FLB.ofPull_iso q hq A.2 B.2 h)) (smallPicEquiv Y c)

theorem fpull_smallCls (L : LB Y) (hL : L.IsLB) : fpull q hq (smallCls L hL) = fcls (FLB.ofPull q hq L hL) := by
  rw [fpull, smallPicEquiv_smallCls]; rfl

theorem level_fpull (e : ℕ) (c : SmallPic Y) : level e (fpull q hq c) = smallPull (q e) c := by
  obtain ⟨L, hL, rfl⟩ := smallCls_surj c
  rw [fpull_smallCls, level_fcls, smallPull_smallCls _ _ (pull_isLB hL _)]
  rfl

section Projective

open GlobalTheory.ProjSpace

variable {R : Type} [CommRing R] (I : Ideal R) (N : ℕ)

end Projective

end GlobalTheory.FormalPic
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FormalTwistingNeTrivial =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RestrictionPoincareBundle =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RestrictionPoincareBundle", "h": "module\n\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PullbackAndTensorModule\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FormalTwistingNeTrivial\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsGrpPullbackAbVarModel\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsRigidifiedIso\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniformBaseChange.PullGt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField
open IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.Out (thick thickObj thickMap thickTrans)
open ReciprocityTheory.ChartRestriction.G.Out.PullGtPf (hMap sE)
open Formalism.MainNotions.DIV.Cons (SCF intO)
open GlobalTheory.Serre GlobalTheory.CechPic GlobalTheory.HermTensor GlobalTheory.Vert GlobalTheory.FormalPic
open scoped CategoryTheory.Obj

namespace GlobalTheory.LocM

section Classes

variable {S S' : Scheme.{0}} (G : Over S) [GrpObj G] [IsCommMonObj G]

def IsRigCls (c : SmallPic G.left) : Prop := smallPull (eSec G) c = 0

def IsSymCls (c : SmallPic G.left) : Prop := smallPull (GrpObj.inv (X := G)).left c = c

def IsPrincipalCls (c : SmallPic G.left) : Prop :=
  ∃ (L : LB G.left) (hL : L.IsLB), smallCls L hL = c ∧ Out.RelAmple G L ∧ Out.KTriv G L

def RigPic : Type := {c : SmallPic G.left // IsRigCls G c}

variable {G}


omit [GrpObj G] [IsCommMonObj G] in
theorem smallCls_eq_zero_iff {X : Scheme.{0}} {L : LB X} (hL : L.IsLB) : smallCls L hL = 0 ↔ ∃ t : LB.Gen L, t.IsGen :=
  (smallPicEquiv X).symm.map_eq_zero_iff.trans (cls_eq_zero_iff hL)


omit [GrpObj G] [IsCommMonObj G] in
theorem smallPull_comp {X Y Z : Scheme.{0}} (g : Z ⟶ Y) (f : Y ⟶ X) (c : SmallPic X) :
    smallPull (g ≫ f) c = smallPull g (smallPull f c) := by
  simp [smallPull, pull_comp]


omit [IsCommMonObj G] in
theorem isRigCls_iff {L : LB G.left} (hL : L.IsLB) : IsRigCls G (smallCls L hL) ↔ Out.Rigidified G L := by
  rw [IsRigCls, smallPull_smallCls _ hL (pull_isLB hL _), smallCls_eq_zero_iff]; rfl

def rigCls (L : RigLB G) : RigPic G := ⟨smallCls L.L L.isLB, (isRigCls_iff L.isLB).2 ⟨L.rig, L.rigGen⟩⟩

def IsBiextCls (P : RigPic (G ⊗ G)) : Prop := ∃ L : RigLB (G ⊗ G), rigCls L = P ∧ Nonempty (IsBiext G L.L)

def diagCls (w : G ⟶ G) (P : RigPic (G ⊗ G)) : SmallPic G.left := smallPull (lift (𝟙 G) w).left P.1

theorem isRigCls_diagCls (w : G ⟶ G) [IsMonHom w] (P : RigPic (G ⊗ G)) : IsRigCls G (diagCls w P) := by
  have e : η[G] ≫ lift (𝟙 G) w = η[G ⊗ G] := by
    apply CartesianMonoidalCategory.hom_ext <;> simp
  rw [IsRigCls, diagCls, ← smallPull_comp, eSec, ← Over.comp_left, e]
  exact P.2

variable {G' : Over S'} [GrpObj G'] [IsCommMonObj G'] {f : S' ⟶ S} {φ : G'.left ⟶ G.left} (h : IsGrpPullback G' G f φ)

omit [IsCommMonObj G] [IsCommMonObj G'] in
def sqMap : (G' ⊗ G').left ⟶ (G ⊗ G).left := (lift (pushHom h _ (fst G' G')) (pushHom h _ (snd G' G'))).left

omit [IsCommMonObj G] [IsCommMonObj G'] in
@[reassoc] theorem sqMap_fst : sqMap h ≫ (fst G G).left = (fst G' G').left ≫ φ :=
  congrArg (fun q => q.left) (lift_fst (pushHom h _ (fst G' G')) (pushHom h _ (snd G' G')))

omit [IsCommMonObj G] [IsCommMonObj G'] in
@[reassoc] theorem sqMap_snd : sqMap h ≫ (snd G G).left = (snd G' G').left ≫ φ :=
  congrArg (fun q => q.left) (lift_snd (pushHom h _ (fst G' G')) (pushHom h _ (snd G' G')))


omit [GrpObj G] [IsCommMonObj G] in
theorem sq_hom_ext {T : Scheme.{0}} {a b : T ⟶ (G ⊗ G).left} (h₁ : a ≫ (fst G G).left = b ≫ (fst G G).left)
    (h₂ : a ≫ (snd G G).left = b ≫ (snd G G).left) : a = b := pullback.hom_ext h₁ h₂

theorem eSec_sqMap : eSec (G' ⊗ G') ≫ sqMap h = f ≫ eSec (G ⊗ G) := by
  have e : η[G'].left ≫ φ = f ≫ η[G].left := (cubeMapOf h).e_comm
  refine sq_hom_ext ?_ ?_
  · rw [Category.assoc, sqMap_fst, eSec, eSec, ← Over.comp_left_assoc, Category.assoc, ← Over.comp_left,
      IsMonHom.one_hom, IsMonHom.one_hom, e]
  · rw [Category.assoc, sqMap_snd, eSec, eSec, ← Over.comp_left_assoc, Category.assoc, ← Over.comp_left,
      IsMonHom.one_hom, IsMonHom.one_hom, e]

def sqPull (P : RigPic (G ⊗ G)) : RigPic (G' ⊗ G') :=
  ⟨smallPull (sqMap h) P.1, by
    rw [IsRigCls, ← smallPull_comp, eSec_sqMap]
    exact (smallPull_comp _ _ _).trans ((congrArg _ P.2).trans (map_zero _))⟩

theorem smallPull_diagCls {w : G ⟶ G} {w' : G' ⟶ G'} (hw : w'.left ≫ φ = φ ≫ w.left) (P : RigPic (G ⊗ G)) :
    smallPull φ (diagCls w P) = diagCls w' (sqPull h P) := by
  refine (smallPull_comp _ _ _).symm.trans (Eq.trans (congrArg (smallPull · P.1) ?_) (smallPull_comp _ _ _))
  refine sq_hom_ext ?_ ?_
  · rw [Category.assoc, Category.assoc, sqMap_fst, ← Over.comp_left, ← Over.comp_left_assoc, lift_fst, lift_fst]
    simp
  · rw [Category.assoc, Category.assoc, sqMap_snd, ← Over.comp_left, ← Over.comp_left_assoc, lift_snd, lift_snd, hw]

end Classes

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

namespace tens

variable {X X' : Scheme.{0}} (t : SAB H X) (Λ : Unim E)

def ppCls : SmallPic (tens t Λ).G.left := smallCls (tens t Λ).PP.L (tens t Λ).PP.isLB

def poiCls : RigPic ((tens t Λ).G ⊗ (tens t Λ).G) := rigCls (poi t Λ)

def diag (P : RigPic ((tens t Λ).G ⊗ (tens t Λ).G)) : SmallPic (tens t Λ).G.left := diagCls ((tens t Λ).act.act H.w0) P

theorem diag_poiCls : diag t Λ (poiCls t Λ) = ppCls t Λ :=
  (smallPull_smallCls _ _ (pull_isLB (poi t Λ).isLB _)).trans ((smallCls_eq_iff _ _).2 (pp_iso_pull t Λ).symm)

variable {t} {t' : SAB H X'} {f : X' ⟶ X} (m : SABMap t' t f)

theorem smallPull_diag (P : RigPic ((tens t Λ).G ⊗ (tens t Λ).G)) :
    smallPull (map Λ m).φ (diag t Λ P) = diag t' Λ (sqPull (map Λ m).cart P) :=
  smallPull_diagCls _ ((map Λ m).act H.w0) P

end tens

section MapRight

variable {S S' : Scheme.{0}} {O : Type} [CommRing O] {M : Type} [AddCommGroup M] [Module O M]
  {G G' A A' : Over S} [GrpObj G] [IsCommMonObj G] [GrpObj G'] [IsCommMonObj G'] [GrpObj A] [IsCommMonObj A]
  [GrpObj A'] [IsCommMonObj A'] {G₁ G₁' A₁ A₁' : Over S'} [GrpObj G₁] [IsCommMonObj G₁] [GrpObj G₁'] [IsCommMonObj G₁']
  [GrpObj A₁] [IsCommMonObj A₁] [GrpObj A₁'] [IsCommMonObj A₁']
  {a : OAct O G} {a' : OAct O G'} {b : OAct O A} {b' : OAct O A'} {a₁ : OAct O G₁} {a₁' : OAct O G₁'} {b₁ : OAct O A₁}
  {b₁' : OAct O A₁'}

theorem mapRight_comm (t : IsTensor A b G a M) (t' : IsTensor A' b' G' a' M) (t₁ : IsTensor A₁ b₁ G₁ a₁ M)
    (t₁' : IsTensor A₁' b₁' G₁' a₁' M) {f : S' ⟶ S} {φ : G₁.left ⟶ G.left} {φ' : G₁'.left ⟶ G'.left} {ψ : A₁.left ⟶ A.left}
    {ψ' : A₁'.left ⟶ A'.left} (hψ : IsGrpPullback A₁ A f ψ) (hψ' : IsGrpPullback A₁' A' f ψ')
    (hm : ∀ m, (t₁.tmul m).left ≫ ψ = φ ≫ (t.tmul m).left) (hm' : ∀ m, (t₁'.tmul m).left ≫ ψ' = φ' ≫ (t'.tmul m).left)
    {q : G ⟶ G'} (hq : IsLinearHom a a' q) {q₁ : G₁ ⟶ G₁'} (hq₁ : IsLinearHom a₁ a₁' q₁) (e : q₁.left ≫ φ' = φ ≫ q.left) :
    (t₁.mapRight t₁' hq₁).left ≫ ψ' = ψ ≫ (t.mapRight t' hq).left := by
  have key : ∀ y : A₁ ⟶ A₁, pushHom hψ' A₁ (y ≫ t₁.mapRight t₁' hq₁) = pushHom hψ A₁ y ≫ t.mapRight t' hq := fun y => by
    refine t₁.induction_on (P := fun y => pushHom hψ' A₁ (y ≫ t₁.mapRight t₁' hq₁) =
      pushHom hψ A₁ y ≫ t.mapRight t' hq) y (by simp) (fun m x => Over.OverMorphism.ext ?_)
      (fun y z hy hz => by rw [MonObj.mul_comp, map_mul, map_mul, MonObj.mul_comp, hy, hz])
    rw [Category.assoc, IsTensor.tmul_mapRight]
    change (x.left ≫ _ ≫ _) ≫ ψ' = ((x.left ≫ _) ≫ ψ) ≫ _
    simp only [Category.assoc]
    rw [hm', reassoc_of% e, reassoc_of% hm, ← Over.comp_left _ _ _ (t.tmul m), IsTensor.tmul_mapRight, Over.comp_left]
  have e := congrArg (fun q => q.left) (key (𝟙 A₁))
  rw [Category.id_comp] at e
  exact e.trans (congrArg (· ≫ _) (Category.id_comp ψ))

end MapRight

section Thick

variable {R : Type} [CommRing R] (I : Ideal R) (e : ℕ)

@[reassoc] theorem thickMap_fst (G : Over (Sp R)) :
    thickMap R I e G ≫ pullback.fst G.hom (thick R I (e + 1)) = pullback.fst G.hom (thick R I e) :=
  (pullback.lift_fst _ _ _).trans (Category.comp_id _)

@[reassoc] theorem thickMap_snd (G : Over (Sp R)) :
    thickMap R I e G ≫ pullback.snd G.hom (thick R I (e + 1)) = pullback.snd G.hom (thick R I e) ≫ thickTrans R I e :=
  pullback.lift_snd _ _ _

theorem isGrpPullback_thickMap (G : Over (Sp R)) [GrpObj G] :
    IsGrpPullback (thickObj R I e G) (thickObj R I (e + 1) G) (thickTrans R I e) (thickMap R I e G) :=
  (isGrpPullback_pullback G (thick R I (e + 1))).cancel
    ((isGrpPullback_pullback G (thick R I e)).congr (Out.thickTrans_comp R I e).symm (thickMap_fst I e G).symm)
    (thickMap_snd I e G)

theorem map_thickMap {G G' : Over (Sp R)} (u : G ⟶ G') :
    ((Over.pullback (thick R I e)).map u).left ≫ thickMap R I e G' =
      thickMap R I e G ≫ ((Over.pullback (thick R I (e + 1))).map u).left := by
  have h₁ : ∀ e, ((Over.pullback (thick R I e)).map u).left ≫ pullback.fst _ _ = pullback.fst _ _ ≫ u.left :=
    fun _ => pullback.lift_fst _ _ _
  have h₂ : ∀ e, ((Over.pullback (thick R I e)).map u).left ≫ pullback.snd _ _ = pullback.snd _ _ :=
    fun _ => pullback.lift_snd _ _ _
  apply pullback.hom_ext
  · rw [Category.assoc, thickMap_fst, h₁, Category.assoc, h₁, thickMap_fst_assoc]
  · rw [Category.assoc, thickMap_snd, reassoc_of% h₂, Category.assoc, h₂, thickMap_snd]

end Thick

section Unif

variable {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {t : SAB H (Sp R)} (U : PELUnif I t) (Λ : Unim E)

def abPartAct : OAct (𝓞 E) U.D.toPre.P.A := letI := H.starRing; ofRingAct U.oD.onB.toRingAct

abbrev abTens : Over (Sp R) := Λ.obj (abPartAct U)

theorem isLinearHom_q (e : ℕ) : IsLinearHom (t.act.pullback (thick R I e) _) ((abPartAct U).pullback (thick R I e) _)
    (U.U.gt e).q :=
  letI := H.starRing
  ⟨(U.U.gt e).q_hom, fun c => U.lin.q_lin e c⟩

def qTens (e : ℕ) : thickObj R I e (tens t Λ).G ⟶ thickObj R I e (abTens U Λ) :=
  ((tens.isTensor t Λ).pullback (thick R I e)).mapRight ((Λ.isTensor (abPartAct U)).pullback (thick R I e))
    (isLinearHom_q U e)

theorem q_thickMap (e : ℕ) : (U.U.gt e).q.left ≫ thickMap R I e _ = thickMap R I e _ ≫ (U.U.gt (e + 1)).q.left := by
  apply pullback.hom_ext
  · rw [Category.assoc, thickMap_fst, Category.assoc]
    exact (U.U.gt_q e).symm
  · have h₁ : (U.U.gt e).q.left ≫ pullback.snd _ _ = pullback.snd _ _ := Over.w (U.U.gt e).q
    have h₂ : (U.U.gt (e + 1)).q.left ≫ pullback.snd _ _ = pullback.snd _ _ := Over.w (U.U.gt (e + 1)).q
    rw [Category.assoc, thickMap_snd, reassoc_of% h₁, Category.assoc, h₂, thickMap_snd]

theorem qTens_thickMap (e : ℕ) : (qTens U Λ e).left ≫ thickMap R I e _ = thickMap R I e _ ≫ (qTens U Λ (e + 1)).left :=
  mapRight_comm ((tens.isTensor t Λ).pullback (thick R I (e + 1))) ((Λ.isTensor (abPartAct U)).pullback (thick R I (e + 1)))
    ((tens.isTensor t Λ).pullback (thick R I e)) ((Λ.isTensor (abPartAct U)).pullback (thick R I e))
    (isGrpPullback_thickMap I e (tens t Λ).G) (isGrpPullback_thickMap I e (abTens U Λ))
    (fun m => by rw [IsTensor.pullback_tmul, IsTensor.pullback_tmul]; exact map_thickMap I e _)
    (fun m => by rw [IsTensor.pullback_tmul, IsTensor.pullback_tmul]; exact map_thickMap I e _)
    (isLinearHom_q U (e + 1)) (isLinearHom_q U e) (q_thickMap U e)

end Unif

section Point

variable {Dw : Datum H} {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}
  {Y : Model Xo c β} {p : ℕ} {C : SCF p} {P : PointsOfFlagModel.PtC Y C} (A : DatAt Y P) (Λ : Unim E)

def defIdeal : Ideal ↥(intO ↥C.S) := (maximalIdeal A.R).map A.f

abbrev gPt : Over (Sp ↥(intO ↥C.S)) := (Over.pullback (spMap A.f)).obj (tens A.t Λ).G

abbrev bPt : Over (Sp ↥(intO ↥C.S)) := (Over.pullback (spMap A.f)).obj (abTens A.U Λ)

abbrev gtLev (e : ℕ) : Over (Sp (↥(intO ↥C.S) ⧸ defIdeal A ^ (e + 1))) := thickObj _ (defIdeal A) e (gPt A Λ)

abbrev bLev (e : ℕ) : Over (Sp (↥(intO ↥C.S) ⧸ defIdeal A ^ (e + 1))) := thickObj _ (defIdeal A) e (bPt A Λ)

abbrev gtTrans (e : ℕ) : (gtLev A Λ e).left ⟶ (gtLev A Λ (e + 1)).left := thickMap _ (defIdeal A) e (gPt A Λ)

def levToDat (G : Over (Sp A.R)) (e : ℕ) : (thickObj _ (defIdeal A) e ((Over.pullback (spMap A.f)).obj G)).left ⟶
    (thickObj A.R (maximalIdeal A.R) e G).left := hMap (φ := A.f) (hφ := le_rfl) G _ (𝟙 _)

theorem isGrpPullback_levToDat (G : Over (Sp A.R)) [GrpObj G] (e : ℕ) :
    IsGrpPullback (thickObj _ (defIdeal A) e ((Over.pullback (spMap A.f)).obj G)) (thickObj A.R (maximalIdeal A.R) e G)
      (sE A.f le_rfl e) (levToDat A G e) :=
  @Out.PullGtPf.isGrpPullback_hMap _ _ _ _ _ _ _ _ A.f le_rfl e G _ _ _ (Iso.refl _) (inferInstanceAs (IsMonHom (𝟙 _)))

@[reassoc] theorem levToDat_fst (G : Over (Sp A.R)) (e : ℕ) :
    levToDat A G e ≫ pullback.fst _ _ = pullback.fst _ _ ≫ pullback.fst G.hom (spMap A.f) :=
  (Out.PullGtPf.hMap_fst _ _ _).trans (congrArg _ (Category.id_comp _))

def prLev (e : ℕ) : gtLev A Λ e ⟶ bLev A Λ e :=
  Over.homMk ((isGrpPullback_levToDat A (abTens A.U Λ) e).1.lift (levToDat A _ e ≫ (qTens A.U Λ e).left) (gtLev A Λ e).hom
    (by rw [Category.assoc, Over.w]; exact (isGrpPullback_levToDat A _ e).1.w))
    ((isGrpPullback_levToDat A (abTens A.U Λ) e).1.lift_snd _ _ _)

@[reassoc] theorem prLev_levToDat (e : ℕ) :
    (prLev A Λ e).left ≫ levToDat A _ e = levToDat A _ e ≫ (qTens A.U Λ e).left :=
  (isGrpPullback_levToDat A (abTens A.U Λ) e).1.lift_fst _ _ _

def prPt (e : ℕ) : (gtLev A Λ e).left ⟶ (bPt A Λ).left := (prLev A Λ e).left ≫ pullback.fst _ _

theorem prPt_fst (e : ℕ) : prPt A Λ e ≫ pullback.fst _ _ = levToDat A _ e ≫ (qTens A.U Λ e).left ≫ pullback.fst _ _ := by
  rw [prPt, Category.assoc, ← levToDat_fst, prLev_levToDat_assoc]

theorem prPt_hom (e : ℕ) : prPt A Λ e ≫ (bPt A Λ).hom = pullback.fst _ _ ≫ (gPt A Λ).hom := by
  have h : (prLev A Λ e).left ≫ pullback.snd _ _ = pullback.snd _ _ := Over.w (prLev A Λ e)
  rw [prPt, Category.assoc, pullback.condition, pullback.condition, reassoc_of% h]

theorem gtTrans_prPt (e : ℕ) : gtTrans A Λ e ≫ prPt A Λ (e + 1) = prPt A Λ e := by
  apply pullback.hom_ext
  · have h : gtTrans A Λ e ≫ levToDat A _ (e + 1) = levToDat A _ e ≫ thickMap _ _ e _ := Out.PullGtPf.hMap_thick _ _ _
    rw [Category.assoc, prPt_fst, prPt_fst, reassoc_of% h, ← reassoc_of% qTens_thickMap, thickMap_fst]
  · exact (Category.assoc _ _ _).trans ((congrArg _ (prPt_hom A Λ (e + 1))).trans
      ((thickMap_fst_assoc _ _ _ _).trans (prPt_hom A Λ e).symm))

abbrev GtPic : Type := FPic (X := fun e => (gtLev A Λ e).left) (gtTrans A Λ)

def prPullPt (M : SmallPic (bPt A Λ).left) : GtPic A Λ := fpull (prPt A Λ) (gtTrans_prPt A Λ) M

def completePt (L : SmallPic (gPt A Λ).left) : GtPic A Λ :=
  fpull (fun _ => pullback.fst _ _) (fun e => thickMap_fst _ e _) L

variable {X : Scheme.{0}} {π : X ⟶ Y.X} {t : SAB H X} (m : SABMap t Y.t π) (z : Sp ↥(intO ↥C.S) ⟶ X) (hz : z ≫ π = P.yt)


include hz in
theorem isGrpPullback_gPt_base : IsGrpPullback (gPt A Λ) (tens Y.t Λ).G (z ≫ π) (pullback.fst _ _ ≫ (tens.map Λ A.m).φ) :=
  ((isGrpPullback_pullback _ (spMap A.f)).comp (tens.map Λ A.m).cart).congr (A.fac.trans hz.symm) rfl

def gPtTo : (gPt A Λ).left ⟶ (tens t Λ).G.left :=
  (tens.map Λ m).cart.1.lift (pullback.fst _ _ ≫ (tens.map Λ A.m).φ) ((gPt A Λ).hom ≫ z)
    (by rw [(isGrpPullback_gPt_base A Λ z hz).1.w, Category.assoc])

end Point

section Generic

variable {Dw : Datum H} {Xo : ∀ l : Level H, Moduli Dw l} {p : ℕ} {W : ValuationSubring ℂ} {Y : LocalSystem Xo p W}
  {i₀ : Idx H p} (Z : Mdl Y i₀)

def Mdl.tQ : SAB H Z.genO.toScheme := (Geo.Tor.exists_sab Z.genO.ι Z.t).choose

def Mdl.tQMap : SABMap Z.tQ Z.t Z.genO.ι := (Geo.Tor.exists_sab Z.genO.ι Z.t).choose_spec.some

end Generic

section Record

open Formalism.BasicNotions Formalism.MainNotions GlobalTheory.ShFam

variable {D : D7} {A : Amb D} {N j : ℕ} {S : Sig A N j} {κ : Lv A} {p : ℕ}

def thbTrue (ct : At S κ p) : ThbSt ct (uniTrue ct) where
  LBG Λ := SmallPic (tens ct.Xm.t Λ).G.left
  LBGq Λ := SmallPic (tens ct.Xm.tQ Λ).G.left
  resQ {Λ} := smallPull (tens.map Λ ct.Xm.tQMap).φ
  PPq Λ := tens.ppCls ct.Xm.tQ Λ
  symmG := IsSymCls _
  rigG := IsRigCls _
  LBGt y Λ := GtPic (ct.dat y) Λ
  LBB y Λ := SmallPic (bPt (ct.dat y) Λ).left
  resGt {Λ} L y := completePt (ct.dat y) Λ (smallPull (gPtTo (ct.dat y) Λ ct.Xm.tMap y.z y.z_π) L)
  prPull {y Λ} := prPullPt (ct.dat y) Λ
  principal := IsPrincipalCls _
  StrictHenselianAcyclic Λ := RigPic ((tens ct.Xm.t Λ).G ⊗ (tens ct.Xm.t Λ).G)
  squareRootLineBundle Λ := RigPic ((tens ct.Xm.tQ Λ).G ⊗ (tens ct.Xm.tQ Λ).G)
  res2 {Λ} := sqPull (tens.map Λ ct.Xm.tQMap).cart
  PoiQ Λ := tens.poiCls ct.Xm.tQ Λ
  biext := IsBiextCls
  dg {Λ} := tens.diag ct.Xm.t Λ
  dgq {Λ} := tens.diag ct.Xm.tQ Λ
  dg_res {Λ} P := tens.smallPull_diag Λ ct.Xm.tQMap P
  PPq_def Λ := (tens.diag_poiCls ct.Xm.tQ Λ).symm

variable (ct : At S κ p) (Λ : (uniTrue ct).Unim)

end Record

end GlobalTheory.LocM
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RestrictionPoincareBundle =====
