module

public import Formalism.GaussValuationBounds.Statement
public import Formalism.WindowSums.PowerSeriesRelationList
public import Formalism.SharpRestriction.LevelLetterCocycles.CrystallineMapLemmas
public import Formalism.TruncatedSeriesCounting.TruncatedSeriesProofs.ColTwoStep
public import Formalism.WeaklyAdmissibleFiltrations.CrystallineStableLifts.Galois
public import Formalism.TruncatedSeriesCounting.AprimeArith
public import Formalism.SharpRestriction.LevelLetterCocycles.WachCoordinates
public import Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.AevalApplySubEvalOneMem
public import Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.AprimeCuts
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.GaussValuationBounds.GaussValueContraction.KapBoundProof, Formalism.SharpRestriction.LevelLetterCocycles.ArcIffLocalOfAdmissible, Formalism.TruncatedSeriesCounting.TruncatedSeriesProofs.RrBound, Formalism.TruncatedSeriesCounting.TruncatedSeriesProofs.ThmEExp, Formalism.SharpRestriction.LevelLetterCocycles.BoundedNumeratorPowerSummability

-- ===== clump member: Formalism.GaussValuationBounds.GaussValueContraction.KapBoundProof =====
-- clump-header: {"m": "Formalism.GaussValuationBounds.GaussValueContraction.KapBoundProof", "h": "module\n\npublic import Formalism.GaussValuationBounds.Statement\npublic import Formalism.WindowSums.PowerSeriesRelationList\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.NOK

theorem kapBound_proof : KapBound := by
  intro ℓ _ hℓ χ hχ ell g h a JJ hJJ hbd
  obtain ⟨hne, hval⟩ := Formalism.WindowSums.arc_KillerVal ℓ hℓ χ hχ ell JJ
  refine ⟨hne, ?_⟩

  have hcard : (JJ.erase 0).card ≤ 20 * g := by
    calc (JJ.erase 0).card ≤ JJ.card := Finset.card_le_card (Finset.erase_subset _ _)
      _ ≤ (Finset.univ.biUnion (fun t : Fin 5 => Finset.Ico (a t) (a t + 4 * (g : ℤ)))).card :=
          Finset.card_le_card hJJ
      _ ≤ ∑ t : Fin 5, (Finset.Ico (a t) (a t + 4 * (g : ℤ))).card := Finset.card_biUnion_le
      _ = ∑ t : Fin 5, 4 * g := by
          apply Finset.sum_congr rfl
          intro t _
          rw [Int.card_Ico, add_sub_cancel_left]
          omega
      _ = 20 * g := by
          rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, smul_eq_mul]
          ring

  have hsumv : ((∑ i ∈ JJ.erase 0, padicValInt ℓ i : ℕ) : ℝ) ≤
      5 * (4 * (g : ℝ) / ((ℓ : ℝ) - 1) + Real.logb ℓ (2 * (h : ℝ))) := by
    have hle : (∑ i ∈ JJ.erase 0, padicValInt ℓ i) ≤
        ∑ t : Fin 5, ∑ i ∈ (JJ.erase 0).filter (fun i => i ∈ Finset.Ico (a t) (a t + 4 * (g : ℤ))),
          padicValInt ℓ i := by
      calc (∑ i ∈ JJ.erase 0, padicValInt ℓ i)
          ≤ ∑ i ∈ JJ.erase 0, ∑ t : Fin 5,
              (if i ∈ Finset.Ico (a t) (a t + 4 * (g : ℤ)) then padicValInt ℓ i else 0) := by
            apply Finset.sum_le_sum
            intro i hi
            obtain ⟨t, -, ht⟩ := Finset.mem_biUnion.mp (hJJ (Finset.mem_of_mem_erase hi))
            calc padicValInt ℓ i
                = (if i ∈ Finset.Ico (a t) (a t + 4 * (g : ℤ)) then padicValInt ℓ i else 0) :=
                  (if_pos ht).symm
              _ ≤ ∑ t' : Fin 5,
                    (if i ∈ Finset.Ico (a t') (a t' + 4 * (g : ℤ)) then padicValInt ℓ i else 0) :=
                  Finset.single_le_sum
                    (f := fun t' => if i ∈ Finset.Ico (a t') (a t' + 4 * (g : ℤ)) then padicValInt ℓ i else 0)
                    (fun _ _ => Nat.zero_le _) (Finset.mem_univ t)
        _ = ∑ t : Fin 5, ∑ i ∈ JJ.erase 0,
              (if i ∈ Finset.Ico (a t) (a t + 4 * (g : ℤ)) then padicValInt ℓ i else 0) :=
            Finset.sum_comm
        _ = ∑ t : Fin 5, ∑ i ∈ (JJ.erase 0).filter (fun i => i ∈ Finset.Ico (a t) (a t + 4 * (g : ℤ))),
              padicValInt ℓ i := by
            apply Finset.sum_congr rfl
            intro t _
            rw [Finset.sum_filter]
    have hwin : ∀ t : Fin 5,
        ((∑ i ∈ (JJ.erase 0).filter (fun i => i ∈ Finset.Ico (a t) (a t + 4 * (g : ℤ))),
            padicValInt ℓ i : ℕ) : ℝ) ≤ 4 * (g : ℝ) / ((ℓ : ℝ) - 1) + Real.logb ℓ (2 * (h : ℝ)) := by
      intro t
      have hw := _root_.Formalism.WindowSums.sum_padicValInt_le ℓ (a t) (4 * g) (2 * h)
        ((JJ.erase 0).filter (fun i => i ∈ Finset.Ico (a t) (a t + 4 * (g : ℤ)))) ?_ ?_ ?_
      · push_cast at hw ⊢
        exact hw
      · intro i hi
        rw [Finset.mem_filter] at hi
        push_cast
        exact hi.2
      · intro h0
        rw [Finset.mem_filter] at h0
        exact (Finset.mem_erase.mp h0.1).1 rfl
      · intro i hi
        rw [Finset.mem_filter] at hi
        push_cast
        exact hbd i (Finset.mem_of_mem_erase hi.1)
    calc ((∑ i ∈ JJ.erase 0, padicValInt ℓ i : ℕ) : ℝ)
        ≤ ((∑ t : Fin 5, ∑ i ∈ (JJ.erase 0).filter
              (fun i => i ∈ Finset.Ico (a t) (a t + 4 * (g : ℤ))), padicValInt ℓ i : ℕ) : ℝ) := by
          exact_mod_cast hle
      _ = ∑ t : Fin 5, ((∑ i ∈ (JJ.erase 0).filter
              (fun i => i ∈ Finset.Ico (a t) (a t + 4 * (g : ℤ))), padicValInt ℓ i : ℕ) : ℝ) := by
          rw [Nat.cast_sum]
      _ ≤ ∑ _t : Fin 5, (4 * (g : ℝ) / ((ℓ : ℝ) - 1) + Real.logb ℓ (2 * (h : ℝ))) :=
          Finset.sum_le_sum (fun t _ => hwin t)
      _ = 5 * (4 * (g : ℝ) / ((ℓ : ℝ) - 1) + Real.logb ℓ (2 * (h : ℝ))) := by
          rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
          norm_num
  have hsplit : (∑ i ∈ JJ.erase 0, (1 + ell + padicValInt ℓ i)) =
      (JJ.erase 0).card * (1 + ell) + ∑ i ∈ JJ.erase 0, padicValInt ℓ i := by
    rw [Finset.sum_add_distrib, Finset.sum_const, smul_eq_mul]
  have hc : (((JJ.erase 0).card * (1 + ell) : ℕ) : ℝ) ≤ 20 * (g : ℝ) * (1 + (ell : ℝ)) := by
    have h1 : (JJ.erase 0).card * (1 + ell) ≤ 20 * g * (1 + ell) := Nat.mul_le_mul_right _ hcard
    exact_mod_cast h1
  rw [hval, hsplit]
  push_cast at hc hsumv ⊢
  linarith

end Formalism.NOK
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.GaussValuationBounds.GaussValueContraction.KapBoundProof =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.ArcIffLocalOfAdmissible =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.ArcIffLocalOfAdmissible", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CrystallineMapLemmas\npublic import Formalism.TruncatedSeriesCounting.TruncatedSeriesProofs.ColTwoStep\npublic import Formalism.WeaklyAdmissibleFiltrations.CrystallineStableLifts.Galois\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.LocalTheoryWindows

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module

section Gen

variable {G : Type} [Group G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL : Type} [Field LL] [Algebra Qp LL] {O : Type} [CommRing O] [Algebra O LL]
    {V : Type} [AddCommGroup V] [Module LL V] [Module Qp V] [IsScalarTower Qp LL V]
    [Module O V] [IsScalarTower O LL V] {ρ : Representation LL G V}
    [TopologicalSpace G] [TopologicalSpace V] [ContinuousAdd V] [ContinuousConstSMul LL V]
    {V' : Type} [AddCommGroup V'] [Module LL V'] [Module Qp V'] [IsScalarTower Qp LL V']
    [Module O V'] [IsScalarTower O LL V'] {ρ' : Representation LL G V'}
    [TopologicalSpace V'] [ContinuousAdd V'] [ContinuousConstSMul LL V']
    {L : Lattice (O := O) ρ} {L' : Lattice (O := O) ρ'} (F : LatHom L L')

abbrev clsZ (L' : Lattice (O := O) ρ') : ↥(latticeCocycles L') →ₗ[O] LatticeCohomology L' := Submodule.mkQ _

theorem mem_H1fT_iff (x : LatticeCohomology L') :
    x ∈ latticeFiniteCohomology PD L' ↔ ∃ c : ↥(latticeCocycles L'), (c : G → V') ∈ latticeFiniteCocycles PD L' ∧ clsZ L' c = x := by
  unfold latticeFiniteCohomology
  rw [Submodule.mem_map]
  rfl

theorem clsZ_eq_zero (c : ↥(latticeCocycles L')) : clsZ L' c = 0 ↔ (c : G → V') ∈ latticeCoboundaries L' := by
  unfold clsZ
  rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero]
  rfl

theorem H1map_clsZ (c : ↥(latticeCocycles L)) :
    F.H1map (clsZ L c) = clsZ L' ⟨F.post c, F.post_Z1T c c.2⟩ := rfl

theorem mem_ImF_of_cls (p : ↥(latticeCocycles L')) (h : clsZ L' p ∈ (latticeFiniteCohomology PD L).map F.H1map) :
    (p : G → V') ∈ F.ImF PD := by
  obtain ⟨x, hx, hxp⟩ := h
  obtain ⟨c, hc, rfl⟩ := (mem_H1fT_iff PD x).1 hx
  rw [H1map_clsZ] at hxp
  have h0 : clsZ L' (p - ⟨F.post c, F.post_Z1T c c.2⟩) = 0 := by rw [map_sub, hxp, sub_self]
  have h1 := (clsZ_eq_zero _).1 h0
  have h2 : (p : G → V') = F.post c + ((p - ⟨F.post c, F.post_Z1T c c.2⟩ : ↥(latticeCocycles L')) : G → V') := by
    simp
  rw [h2]
  exact Submodule.add_mem_sup (Submodule.mem_map_of_mem hc) h1

theorem cls_mem_of_ImF (p : ↥(latticeCocycles L')) (h : (p : G → V') ∈ F.ImF PD) :
    clsZ L' p ∈ (latticeFiniteCohomology PD L).map F.H1map := by
  obtain ⟨a, ha, b, hb, hab⟩ := Submodule.mem_sup.1 h
  obtain ⟨c, hc, rfl⟩ := ha
  have hcZ : c ∈ latticeCocycles L := hc.1
  refine ⟨clsZ L ⟨c, hcZ⟩, (mem_H1fT_iff PD _).2 ⟨⟨c, hcZ⟩, hc, rfl⟩, ?_⟩
  rw [H1map_clsZ]
  have h0 : clsZ L' (p - ⟨F.post c, F.post_Z1T c hcZ⟩) = 0 := by
    rw [clsZ_eq_zero]
    have : ((p - ⟨F.post c, F.post_Z1T c hcZ⟩ : ↥(latticeCocycles L')) : G → V') = b := by
      simp [← hab]
    rw [this]; exact hb
  rw [map_sub, sub_eq_zero] at h0
  exact h0.symm

def liftZ (x : LatticeCohomology L') : ↥(latticeCocycles L') :=
  if h : x ∈ latticeFiniteCohomology PD L' then ((mem_H1fT_iff PD x).1 h).choose else 0

theorem liftZ_mem {x : LatticeCohomology L'} (h : x ∈ latticeFiniteCohomology PD L') : ((liftZ PD x : ↥(latticeCocycles L')) : G → V') ∈ latticeFiniteCocycles PD L' := by
  unfold liftZ; rw [dite_eq_left h]; exact ((mem_H1fT_iff PD x).1 h).choose_spec.1

theorem liftZ_cls {x : LatticeCohomology L'} (h : x ∈ latticeFiniteCohomology PD L') : clsZ L' (liftZ PD x) = x := by
  unfold liftZ; rw [dite_eq_left h]; exact ((mem_H1fT_iff PD x).1 h).choose_spec.2

def liftS (A : Finset (LatticeCohomology L')) : Finset (G → V') := A.image fun x => ((liftZ PD x : ↥(latticeCocycles L')) : G → V')

theorem exists_lift_span (A : Finset (LatticeCohomology L')) (hA : (↑A : Set (LatticeCohomology L')) ⊆ latticeFiniteCohomology PD L') (a : LatticeCohomology L')
    (ha : a ∈ Submodule.span O (↑A : Set (LatticeCohomology L'))) :
    ∃ y : ↥(latticeCocycles L'), (y : G → V') ∈ Submodule.span O (↑(liftS PD A) : Set (G → V')) ∧ clsZ L' y = a := by
  induction ha using Submodule.span_induction with
  | mem x hx =>
    refine ⟨liftZ PD x, Submodule.subset_span ?_, liftZ_cls PD (hA hx)⟩
    exact Finset.mem_coe.2 (Finset.mem_image_of_mem _ hx)
  | zero => exact ⟨0, Submodule.zero_mem _, map_zero _⟩
  | add x y _ _ hx hy =>
    obtain ⟨u, hu, rfl⟩ := hx
    obtain ⟨w, hw, rfl⟩ := hy
    exact ⟨u + w, Submodule.add_mem _ hu hw, map_add _ _ _⟩
  | smul c x _ hx =>
    obtain ⟨u, hu, rfl⟩ := hx
    exact ⟨c • u, Submodule.smul_mem _ c hu, map_smul _ _ _⟩

theorem mem_span_sup_ImF (A : Finset (LatticeCohomology L')) (hA : (↑A : Set (LatticeCohomology L')) ⊆ latticeFiniteCohomology PD L')
    (p : ↥(latticeCocycles L'))
    (hp : clsZ L' p ∈ Submodule.span O (↑A : Set (LatticeCohomology L')) ⊔ (latticeFiniteCohomology PD L).map F.H1map) :
    (p : G → V') ∈ Submodule.span O (↑(liftS PD A) : Set (G → V')) ⊔ F.ImF PD := by
  obtain ⟨a, ha, b, hb, hab⟩ := Submodule.mem_sup.1 hp
  obtain ⟨y, hy, rfl⟩ := exists_lift_span PD A hA a ha
  have h1 : clsZ L' (p - y) ∈ (latticeFiniteCohomology PD L).map F.H1map := by
    rw [map_sub, ← hab, add_sub_cancel_left]; exact hb
  have h2 := mem_ImF_of_cls PD F _ h1
  have h3 : (p : G → V') = (y : G → V') + ((p - y : ↥(latticeCocycles L')) : G → V') := by simp
  rw [h3]
  exact Submodule.add_mem_sup hy h2

theorem col_le_of_span (hI : F.ImF PD ≤ latticeFiniteCocycles PD L') (gens cls : Finset (LatticeCohomology L')) (g e e' : ℕ)
    (hgens : Submodule.span O (↑gens : Set (LatticeCohomology L')) = latticeFiniteCohomology PD L') (hg : gens.card ≤ g)
    (hcls : (↑cls : Set (LatticeCohomology L')) ⊆ latticeFiniteCohomology PD L')
    (h1 : ∀ x ∈ latticeFiniteCohomology PD L', (((PD.p : ℕ) : O) ^ e) • x ∈
      Submodule.span O (↑cls : Set (LatticeCohomology L')) ⊔ (latticeFiniteCohomology PD L).map F.H1map)
    (h2 : ∀ x ∈ cls, (((PD.p : ℕ) : O) ^ e') • x ∈ (latticeFiniteCohomology PD L).map F.H1map) :
    F.col PD ≤ ((g * e + cls.card * e' : ℕ) : ℕ∞) * lenOl PD (O := O) := by
  have hgs : (↑gens : Set (LatticeCohomology L')) ⊆ latticeFiniteCohomology PD L' := by
    rw [← hgens]; exact Submodule.subset_span
  have hsub : ∀ (A : Finset (LatticeCohomology L')), (↑A : Set (LatticeCohomology L')) ⊆ latticeFiniteCohomology PD L' →
      (↑(liftS PD A) : Set (G → V')) ⊆ latticeFiniteCocycles PD L' := by
    intro A hA p hp
    obtain ⟨x, hx, rfl⟩ := Finset.mem_image.1 (Finset.mem_coe.1 hp)
    exact liftZ_mem PD (hA hx)
  have hnat : ∀ (k : ℕ) (p : G → V'), (PD.p ^ k : ℕ) • p = (((PD.p : ℕ) : O) ^ k) • p := by
    intro k p
    rw [← Nat.cast_pow, Nat.cast_smul_eq_nsmul]
  refine Formalism.TruncatedSeriesCounting.TruncatedSeriesCountingBounds.length_quotient_le_of_two_step O (G → V') PD.p g cls.card e e' (latticeFiniteCocycles PD L') (F.ImF PD)
    (liftS PD gens) (liftS PD cls) hI (le_trans Finset.card_image_le hg) Finset.card_image_le
    (hsub cls hcls) ?_ ?_ ?_
  · apply le_antisymm
    · exact sup_le (Submodule.span_le.2 (hsub gens hgs)) hI
    · intro p hp
      have hpZ : p ∈ latticeCocycles L' := hp.1
      refine mem_span_sup_ImF PD F gens hgs ⟨p, hpZ⟩ (Submodule.mem_sup_left ?_)
      rw [hgens]
      exact (mem_H1fT_iff PD _).2 ⟨⟨p, hpZ⟩, hp, rfl⟩
  · intro p hp
    have hpZ : p ∈ latticeCocycles L' := hp.1
    rw [hnat]
    refine mem_span_sup_ImF PD F cls hcls ((((PD.p : ℕ) : O) ^ e) • (⟨p, hpZ⟩ : ↥(latticeCocycles L'))) ?_
    rw [map_smul]
    exact h1 _ ((mem_H1fT_iff PD _).2 ⟨⟨p, hpZ⟩, hp, rfl⟩)
  · intro p hp
    rw [hnat]
    have hle : Submodule.span O (↑(liftS PD cls) : Set (G → V')) ≤
        (F.ImF PD).comap ((((PD.p : ℕ) : O) ^ e') • (LinearMap.id : (G → V') →ₗ[O] (G → V'))) := by
      rw [Submodule.span_le]
      intro q hq
      obtain ⟨x, hx, rfl⟩ := Finset.mem_image.1 (Finset.mem_coe.1 hq)
      have := mem_ImF_of_cls PD F ((((PD.p : ℕ) : O) ^ e') • liftZ PD x) (by
        rw [map_smul, liftZ_cls PD (hcls hx)]; exact h2 x hx)
      exact this
    exact hle hp

theorem cls_of_LiftF {e' : ℕ} (hL : F.LiftF PD e') (x : LatticeCohomology L') (hx : x ∈ latticeFiniteCohomology PD L') :
    (((PD.p : ℕ) : O) ^ e') • x ∈ (latticeFiniteCohomology PD L).map F.H1map := by
  obtain ⟨c, hc, rfl⟩ := (mem_H1fT_iff PD x).1 hx
  rw [← map_smul]
  exact cls_mem_of_ImF PD F _ (hL c hc)

end Gen

section Core

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

theorem ImF_le (PD : PeriodData G Qp K₀ K B BdR) {T₁ T₂ : LocLat G Qp LL O}
    (F : LatHom T₁.L T₂.L) : F.ImF PD ≤ latticeFiniteCocycles PD T₂.L := by
  have : IsTopologicalAddGroup T₁.V := IsModuleTopology.topologicalAddGroup LL T₁.V
  have : IsTopologicalAddGroup T₂.V := IsModuleTopology.topologicalAddGroup LL T₂.V
  exact (finiteCocycles_properties.2.2.2 G Qp K₀ K B BdR PD LL O T₁.V T₂.V T₁.ρ T₂.ρ T₁.L T₂.L F T₂.cont).1

theorem colLeR_of_span (PD : PeriodData G Qp K₀ K B BdR) {T₁ T₂ : LocLat G Qp LL O}
    (F : LatHom T₁.L T₂.L) (gens cls : Finset (LatticeCohomology T₂.L)) (g e e' k : ℕ)
    (hk : lenOl PD (O := O) = (k : ℕ∞))
    (hgens : Submodule.span O (↑gens : Set (LatticeCohomology T₂.L)) = latticeFiniteCohomology PD T₂.L) (hg : gens.card ≤ g)
    (hcls : (↑cls : Set (LatticeCohomology T₂.L)) ⊆ latticeFiniteCohomology PD T₂.L)
    (h1 : ∀ x ∈ latticeFiniteCohomology PD T₂.L, (((PD.p : ℕ) : O) ^ e) • x ∈
      Submodule.span O (↑cls : Set (LatticeCohomology T₂.L)) ⊔ (latticeFiniteCohomology PD T₁.L).map F.H1map)
    (h2 : ∀ x ∈ cls, (((PD.p : ℕ) : O) ^ e') • x ∈ (latticeFiniteCohomology PD T₁.L).map F.H1map) :
    Formalism.MainNotions.TruncatedSeriesCountingBounds.ColLeR PD F ((g : ℝ) * e + cls.card * e') := by
  have h := col_le_of_span PD F (ImF_le PD F) gens cls g e e' hgens hg hcls h1 h2
  rw [hk] at h
  have h' : F.col PD ≤ (((g * e + cls.card * e') * k : ℕ) : ℕ∞) := by
    rw [Nat.cast_mul]; exact h
  obtain ⟨mm, hmm⟩ := ENat.ne_top_iff_exists.1 (ne_top_of_le_ne_top (ENat.natCast_ne_top _) h')
  refine ⟨mm, k, hmm.symm, hk, ?_⟩
  rw [← hmm] at h'
  have h3 : mm ≤ (g * e + cls.card * e') * k := by exact_mod_cast h'
  have h4 : (mm : ℝ) ≤ (((g * e + cls.card * e') * k : ℕ) : ℝ) := by exact_mod_cast h3
  push_cast at h4
  exact h4

theorem colLeR_of_liftF (PD : PeriodData G Qp K₀ K B BdR) {T₁ T₂ : LocLat G Qp LL O}
    (F : LatHom T₁.L T₂.L) (gens : Finset (LatticeCohomology T₂.L)) (g e k : ℕ)
    (hk : lenOl PD (O := O) = (k : ℕ∞))
    (hgens : Submodule.span O (↑gens : Set (LatticeCohomology T₂.L)) = latticeFiniteCohomology PD T₂.L) (hg : gens.card ≤ g)
    (hL : F.LiftF PD e) :
    Formalism.MainNotions.TruncatedSeriesCountingBounds.ColLeR PD F ((g : ℝ) * e) := by
  have h := colLeR_of_span PD F gens ∅ g e 0 k hk hgens hg (by simp)
    (fun x hx => Submodule.mem_sup_right (cls_of_LiftF PD F hL x hx)) (by simp)
  simpa using h

end Core

section Fin

variable {l : ℕ} [Fact l.Prime]

theorem OL_finite (LL : FinExt l) : Module.Finite ℤ_[l] ↥(OL LL) := by
  have : FiniteDimensional ℚ_[l] ↥LL.1 := LL.2
  exact IsIntegralClosure.finite ℤ_[l] ℚ_[l] ↥LL.1 ↥(integralClosure ℤ_[l] ↥LL.1)

theorem OL_quot_finite (LL : FinExt l) :
    Finite (↥(OL LL) ⧸ Ideal.span {((l : ℕ) : ↥(OL LL))}) := by
  have := OL_finite LL
  obtain ⟨n, f, hf⟩ := Module.Finite.exists_fin' ℤ_[l] ↥(OL LL)
  let g : (Fin n → Fin l) → (↥(OL LL) ⧸ Ideal.span {((l : ℕ) : ↥(OL LL))}) :=
    fun r => Ideal.Quotient.mk _ (f fun i => ((r i : ℕ) : ℤ_[l]))
  apply Finite.of_surjective g
  intro x
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
  obtain ⟨a, rfl⟩ := hf y
  have hrep : ∀ i, ∃ b : ℤ_[l], a i = ((a i).zmodRepr : ℤ_[l]) + (l : ℤ_[l]) * b := by
    intro i
    have h := PadicInt.sub_zmodRepr_mem (a i)
    rw [PadicInt.maximalIdeal_eq_span_p, Ideal.mem_span_singleton] at h
    obtain ⟨b, hb⟩ := h
    exact ⟨b, by rw [← hb]; ring⟩
  choose b hb using hrep
  refine ⟨fun i => ⟨(a i).zmodRepr, PadicInt.zmodRepr_lt_p _⟩, ?_⟩
  have ha : a = (fun i => (((a i).zmodRepr : ℕ) : ℤ_[l])) + (l : ℕ) • b := by
    funext i
    rw [Pi.add_apply, Pi.smul_apply, nsmul_eq_mul]
    exact hb i
  have hfa : f a = f (fun i => (((a i).zmodRepr : ℕ) : ℤ_[l])) + ((l : ℕ) : ↥(OL LL)) * f b := by
    conv_lhs => rw [ha]
    rw [map_add (f := _), map_nsmul, nsmul_eq_mul]
  show Ideal.Quotient.mk _ (f fun i => (((a i).zmodRepr : ℕ) : ℤ_[l])) = Ideal.Quotient.mk _ (f a)
  rw [Ideal.Quotient.eq, Ideal.mem_span_singleton]
  refine ⟨- f b, ?_⟩
  rw [hfa]
  ring

theorem len_finite_of_finite (R : Type) [CommRing R] (I : Ideal R) [Finite (R ⧸ I)] :
    ∃ k : ℕ, Module.length R (R ⧸ I) = (k : ℕ∞) := by
  have h1 : IsFiniteLength R (R ⧸ I) :=
    isFiniteLength_iff_isNoetherian_isArtinian.2 ⟨inferInstance, inferInstance⟩
  obtain ⟨k, hk⟩ := ENat.ne_top_iff_exists.1 (Module.length_ne_top_iff.2 h1)
  exact ⟨k, hk.symm⟩

theorem lenOl_finite (P : LocPrime l) (K LL : FinExt l) :
    ∃ k : ℕ, lenOl (P.PD K) (O := ↥(OL LL)) = (k : ℕ∞) := by
  unfold lenOl
  rw [P.PD_p K]
  have := OL_quot_finite LL
  exact len_finite_of_finite _ _

end Fin

section Words

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

end Words

end Formalism.MainNotions.LocalTheoryWindows
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.ArcIffLocalOfAdmissible =====

-- ===== clump member: Formalism.TruncatedSeriesCounting.TruncatedSeriesProofs.RrBound =====
-- clump-header: {"m": "Formalism.TruncatedSeriesCounting.TruncatedSeriesProofs.RrBound", "h": "module\n\npublic import Formalism.TruncatedSeriesCounting.AprimeArith\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.TruncatedSeriesCounting.WachCoordinates

open Finset

private theorem geom_sum_range_mul_one_sub (x : ℝ) :
    ∀ n : ℕ, Finset.sum (range n) (fun i => x ^ i) * (1 - x) = 1 - x ^ n := fun
  | 0 => by simp
  | n + 1 => by rw [sum_range_succ, add_mul, geom_sum_range_mul_one_sub x n, pow_succ]; ring

theorem tsum_le_two_level (x A B D : ℝ) (j : ℕ) (f : ℕ → ℝ) (hx0 : 0 ≤ x) (hx1 : x < 1)
    (hA0 : 0 ≤ A) (hf0 : ∀ a, 0 ≤ f a) (hfB : ∀ a, f a ≤ (B + D) * x ^ a)
    (hfA : ∀ a, a < j → f a ≤ (A + D) * x ^ a) :
    ∑' a, f a ≤ (A + B * x ^ j + D) * (1 - x)⁻¹ := by
  have hx1' : 0 < 1 - x := by linarith
  have hgeo : Summable (fun a : ℕ => (B + D) * x ^ a) :=
    (summable_geometric_of_lt_one hx0 hx1).mul_left (B + D)
  have hsum : Summable f := Summable.of_nonneg_of_le hf0 hfB hgeo
  have hsplit : Finset.sum (range j) f + ∑' a, f (a + j) = ∑' a, f a := by
    exact hsum.sum_add_tsum_nat_add j
  have hshift : Summable (fun a => f (a + j)) := by
    exact (summable_nat_add_iff j).mpr hsum
  have hg2 : HasSum (fun a : ℕ => (B + D) * x ^ j * x ^ a) ((B + D) * x ^ j * (1 - x)⁻¹) :=
    (hasSum_geometric_of_lt_one hx0 hx1).mul_left _
  have h2 : ∑' a, f (a + j) ≤ (B + D) * x ^ j * (1 - x)⁻¹ :=
    hasSum_le (fun a => by
      calc f (a + j) ≤ (B + D) * x ^ (a + j) := hfB (a + j)
        _ = (B + D) * x ^ j * x ^ a := by rw [pow_add]; ring) hshift.hasSum hg2
  have h1 : Finset.sum (range j) f ≤ (A + D) * Finset.sum (range j) (fun a => x ^ a) := by
    rw [mul_sum]
    exact sum_le_sum fun a ha => hfA a (mem_range.mp ha)
  have hS' : Finset.sum (range j) (fun a => x ^ a) = (1 - x ^ j) * (1 - x)⁻¹ := by
    rw [← geom_sum_range_mul_one_sub x j, mul_assoc, mul_inv_cancel₀ hx1'.ne', mul_one]
  have hpos : 0 ≤ A * x ^ j * (1 - x)⁻¹ :=
    mul_nonneg (mul_nonneg hA0 (pow_nonneg hx0 _)) (inv_nonneg.mpr hx1'.le)
  rw [← hsplit]
  calc Finset.sum (range j) f + ∑' a, f (a + j)
      ≤ (A + D) * Finset.sum (range j) (fun a => x ^ a) + (B + D) * x ^ j * (1 - x)⁻¹ :=
        add_le_add h1 h2
    _ = (A + B * x ^ j + D) * (1 - x)⁻¹ - A * x ^ j * (1 - x)⁻¹ := by rw [hS']; ring
    _ ≤ (A + B * x ^ j + D) * (1 - x)⁻¹ := by linarith

theorem rr_arith (l d G h y C L s r q : ℝ) (hld : l = d + 1) (hd2 : 2 ≤ d) (hG0 : 0 ≤ G)
    (hh0 : 0 ≤ h) (hy0 : 0 ≤ y) (hC0 : 0 ≤ C) (hCL : C ≤ 3 + L) (hL0 : 0 ≤ L)
    (hq : q = d / (d - 1)) (hsA : s ≤ (2 * G + 2 * h * y + C + 3) * q)
    (hr : r ≤ s * l / d ^ 2 + C) : r ≤ 20 * (G / l + h * y / d + L + 1) := by
  subst hld
  subst hq
  have hd1 : 0 < d - 1 := by linarith
  have hd0 : 0 < d := by linarith
  have hl0 : 0 < d + 1 := by linarith
  have hdd : 0 < (d - 1) * d := mul_pos hd1 hd0
  have hst : s * (d + 1) / d ^ 2 ≤ (2 * G + 2 * h * y + C + 3) * ((d + 1) / ((d - 1) * d)) := by
    have h1 : s * (d + 1) / d ^ 2 ≤ (2 * G + 2 * h * y + C + 3) * (d / (d - 1)) * (d + 1) / d ^ 2 := by
      have e : (2 * G + 2 * h * y + C + 3) * (d / (d - 1)) * (d + 1) / d ^ 2 - s * (d + 1) / d ^ 2
          = ((2 * G + 2 * h * y + C + 3) * (d / (d - 1)) - s) * ((d + 1) / d ^ 2) := by ring
      have : 0 ≤ ((2 * G + 2 * h * y + C + 3) * (d / (d - 1)) - s) * ((d + 1) / d ^ 2) :=
        mul_nonneg (by linarith) (div_nonneg hl0.le (sq_nonneg d))
      linarith
    have h2 : (2 * G + 2 * h * y + C + 3) * (d / (d - 1)) * (d + 1) / d ^ 2
        = (2 * G + 2 * h * y + C + 3) * ((d + 1) / ((d - 1) * d)) := by
      have hd1' : d - 1 ≠ 0 := hd1.ne'
      have hd0' : d ≠ 0 := hd0.ne'
      field_simp
    linarith
  have ht0 : 0 ≤ (d + 1) / ((d - 1) * d) := div_nonneg hl0.le hdd.le
  have htc : (d + 1) / ((d - 1) * d) ≤ 3 / 2 := by
    have key : d + 1 ≤ 3 / 2 * ((d - 1) * d) := by
      nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ d - 2) (by linarith : (0:ℝ) ≤ 3 * d + 1)]
    exact (div_le_iff₀ hdd).mpr key
  have htG : (d + 1) / ((d - 1) * d) ≤ 10 / (d + 1) := by
    have key : (d + 1) * (d + 1) ≤ 10 * ((d - 1) * d) := by
      nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ d - 2) (by linarith : (0:ℝ) ≤ 9 * d + 6)]
    exact (div_le_div_iff₀ hdd hl0).mpr key
  have hth : (d + 1) / ((d - 1) * d) ≤ 3 / d := by
    have key : (d + 1) * d ≤ 3 * ((d - 1) * d) := by
      nlinarith [mul_nonneg hd0.le (by linarith : (0:ℝ) ≤ d - 2)]
    exact (div_le_div_iff₀ hdd hd0).mpr key
  have e1 : 2 * G * ((d + 1) / ((d - 1) * d)) ≤ 20 * (G / (d + 1)) := by
    calc 2 * G * ((d + 1) / ((d - 1) * d)) ≤ 2 * G * (10 / (d + 1)) :=
          mul_le_mul_of_nonneg_left htG (by linarith)
      _ = 20 * (G / (d + 1)) := by ring
  have hhy : 0 ≤ h * y := mul_nonneg hh0 hy0
  have e2 : 2 * h * y * ((d + 1) / ((d - 1) * d)) ≤ 20 * (h * y / d) := by
    have hq0 : 0 ≤ h * y / d := div_nonneg hhy hd0.le
    calc 2 * h * y * ((d + 1) / ((d - 1) * d)) = 2 * (h * y) * ((d + 1) / ((d - 1) * d)) := by ring
      _ ≤ 2 * (h * y) * (3 / d) := mul_le_mul_of_nonneg_left hth (by linarith)
      _ = 6 * (h * y / d) := by ring
      _ ≤ 20 * (h * y / d) := by linarith
  have e3 : (C + 3) * ((d + 1) / ((d - 1) * d)) ≤ (C + 3) * (3 / 2) :=
    mul_le_mul_of_nonneg_left htc (by linarith)
  have expand : (2 * G + 2 * h * y + C + 3) * ((d + 1) / ((d - 1) * d)) + C
      = 2 * G * ((d + 1) / ((d - 1) * d)) + 2 * h * y * ((d + 1) / ((d - 1) * d))
        + (C + 3) * ((d + 1) / ((d - 1) * d)) + C := by ring
  linarith

theorem remainder_bound_of_tsum : RrBound := by
  intro ℓ hℓ n _ H G h j cut s r hh hH hG hs hr
  have hL3 : (3:ℝ) ≤ (ℓ:ℝ) := by exact_mod_cast hℓ
  have hb : (1:ℝ) < (ℓ:ℝ) := by linarith
  have hh1 : (1:ℝ) ≤ (h:ℝ) := by exact_mod_cast hh
  have hlog0 : 0 ≤ Real.logb ℓ (2 * h + 1) := Real.logb_nonneg hb (by linarith)
  have hceil := Nat.ceil_lt_add_one (R := ℝ) (a := 1 + Real.logb ℓ (2 * h + 1)) (by linarith)
  have hlog3 : Real.logb ℓ 3 ≤ 1 := by
    rw [← Real.logb_self_eq_one hb]
    exact (Real.logb_le_logb hb (by norm_num) (by linarith)).mpr hL3
  have hlogmul : Real.logb ℓ (2 * h + 1) ≤ Real.logb ℓ 3 + Real.logb ℓ h := by
    rw [← Real.logb_mul (by norm_num) (by linarith)]
    exact (Real.logb_le_logb hb (by linarith) (by nlinarith)).mpr (by linarith)
  have hL0 : 0 ≤ Real.logb ℓ h := Real.logb_nonneg hb hh1
  have hC0 : (0:ℝ) ≤ (⌈1 + Real.logb ℓ (2 * h + 1)⌉₊ : ℝ) := Nat.cast_nonneg _
  have hCL : (⌈1 + Real.logb ℓ (2 * h + 1)⌉₊ : ℝ) ≤ 3 + Real.logb ℓ h := by linarith
  have hd2 : (2:ℝ) ≤ (ℓ:ℝ) - 1 := by linarith
  have hdpos : (0:ℝ) < (ℓ:ℝ) - 1 := by linarith
  have hx0 : (0:ℝ) ≤ 1 / ((ℓ:ℝ) - 1) := by positivity
  have hx1 : 1 / ((ℓ:ℝ) - 1) < 1 := by rw [div_lt_one hdpos]; linarith
  have hser := tsum_le_two_level (1 / ((ℓ:ℝ) - 1)) (2 * G) (2 * h)
    ((⌈1 + Real.logb ℓ (2 * h + 1)⌉₊ : ℝ) + 3) j
    (fun a : ℕ => ((H (cut + ((a + 1 : ℕ) : ZMod n)) : ℝ) +
        (⌈1 + Real.logb ℓ (2 * h + 1)⌉₊ : ℝ) + 3) / ((ℓ : ℝ) - 1) ^ a)
    hx0 hx1 (by positivity) (fun a => by positivity)
    (fun a => by
      have h' : ((H (cut + ((a + 1 : ℕ) : ZMod n)) : ℝ)) ≤ 2 * h := by
        exact_mod_cast hH (cut + ((a + 1 : ℕ) : ZMod n))
      rw [one_div, inv_pow, ← div_eq_mul_inv]
      exact div_le_div_of_nonneg_right (by linarith) (pow_nonneg hdpos.le a))
    (fun a ha => by
      have h' : ((H (cut + ((a + 1 : ℕ) : ZMod n)) : ℝ)) ≤ 2 * G := by
        exact_mod_cast hG (a + 1) (by omega) (by omega)
      rw [one_div, inv_pow, ← div_eq_mul_inv]
      exact div_le_div_of_nonneg_right (by linarith) (pow_nonneg hdpos.le a))
  have hsA := hs.trans hser
  have hq : (1 - 1 / ((ℓ:ℝ) - 1))⁻¹ = ((ℓ:ℝ) - 1) / ((ℓ:ℝ) - 1 - 1) := by
    have hd0 : (ℓ:ℝ) - 1 ≠ 0 := by linarith
    have hd1 : (ℓ:ℝ) - 1 - 1 ≠ 0 := by linarith
    field_simp
  have hyd : (h:ℝ) / ((ℓ:ℝ) - 1) ^ (j + 1) =
      (h:ℝ) * (1 / ((ℓ:ℝ) - 1)) ^ j / ((ℓ:ℝ) - 1) := by
    have hd0 : (ℓ:ℝ) - 1 ≠ 0 := by linarith
    rw [pow_succ, one_div_pow]
    field_simp
  rw [hyd]
  have key := rr_arith (ℓ:ℝ) ((ℓ:ℝ) - 1) (G:ℝ) (h:ℝ) ((1 / ((ℓ:ℝ) - 1)) ^ j)
    (⌈1 + Real.logb ℓ (2 * h + 1)⌉₊ : ℝ) (Real.logb ℓ h) s r
    (1 - 1 / ((ℓ:ℝ) - 1))⁻¹ (by ring) hd2 (Nat.cast_nonneg _) (by linarith)
    (pow_nonneg hx0 j) hC0 hCL hL0 hq (by linarith) hr
  exact key

end Formalism.TruncatedSeriesCounting.WachCoordinates
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.TruncatedSeriesCounting.TruncatedSeriesProofs.RrBound =====

-- ===== clump member: Formalism.TruncatedSeriesCounting.TruncatedSeriesProofs.ThmEExp =====
-- clump-header: {"m": "Formalism.TruncatedSeriesCounting.TruncatedSeriesProofs.ThmEExp", "h": "module\n\npublic import Formalism.TruncatedSeriesCounting.AprimeArith\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.TruncatedSeriesCounting.WachCoordinates

private lemma sigma_exponent_le_real (ℓ : ℕ) (hℓ : 3 ≤ ℓ) (g h j : ℕ) (hj : 1 ≤ j) :
    (sigE ℓ g h j : ℝ) ≤
      3 / 2 * ((h : ℝ) + 2 * g) / ((ℓ : ℝ) - 1) ^ (j + 1) + 9 / 4 * g + 11 / 4 := by
  obtain ⟨m, rfl⟩ : ∃ m, j = m + 1 := ⟨j - 1, by omega⟩
  have hjm : m + 1 - 1 = m := by omega
  unfold sigE
  rw [hjm]
  have hL : (3 : ℝ) ≤ ℓ := by exact_mod_cast hℓ
  have hq : (2 : ℝ) ≤ (ℓ : ℝ) - 1 := by linarith
  have hq0 : (0 : ℝ) < (ℓ : ℝ) - 1 := by linarith
  have hq2 : (0 : ℝ) < ((ℓ : ℝ) - 1) ^ 2 := by positivity
  have hg0 : (0 : ℝ) ≤ g := by positivity
  have hA0 : (0 : ℝ) ≤ (h : ℝ) + 2 * g := by positivity
  have hP1 : (1 : ℝ) ≤ (ℓ : ℝ) ^ m := one_le_pow₀ (by linarith)
  have hPq : ((ℓ : ℝ) - 1) ^ m ≤ (ℓ : ℝ) ^ m := pow_le_pow_left₀ hq0.le (by linarith) m
  have hP0 : (0 : ℝ) < (ℓ : ℝ) ^ m := by linarith
  have hM : (Mpar ℓ g h : ℝ) ≤ ((h : ℝ) + 2 * g) / ((ℓ : ℝ) - 1) + 1 := by
    unfold Mpar
    push_cast
    have hc : (((ℓ - 1 : ℕ)) : ℝ) = (ℓ : ℝ) - 1 := by
      rw [Nat.cast_sub (by omega)]
      simp
    have := Nat.cast_div_le (α := ℝ) (m := h + 2 * g) (n := ℓ - 1)
    rw [hc] at this
    push_cast at this
    linarith
  have hM0 : (0 : ℝ) ≤ (Mpar ℓ g h : ℝ) := by positivity
  have hr : (ℓ : ℝ) / ((ℓ : ℝ) - 1) ^ 2 ≤ 3 / 4 := by
    rw [div_le_iff₀ hq2]
    linarith [hq, mul_nonneg (show (0 : ℝ) ≤ 3 * ℓ - 1 by linarith) (sub_nonneg.mpr hL)]
  have hr0 : (0 : ℝ) ≤ (ℓ : ℝ) / ((ℓ : ℝ) - 1) ^ 2 := by positivity
  have hX0 : (0 : ℝ) ≤ ((3 * g : ℝ) + (Mpar ℓ g h : ℝ) / (ℓ : ℝ) ^ m) * ℓ / ((ℓ : ℝ) - 1) ^ 2 + 1 := by
    positivity
  have hceil := Nat.ceil_lt_add_one hX0
  have e1 : ((3 * g : ℝ) + (Mpar ℓ g h : ℝ) / (ℓ : ℝ) ^ m) * ℓ / ((ℓ : ℝ) - 1) ^ 2 =
      3 * g * ((ℓ : ℝ) / ((ℓ : ℝ) - 1) ^ 2) +
        (Mpar ℓ g h : ℝ) * ((ℓ : ℝ) / ((ℓ : ℝ) - 1) ^ 2) / (ℓ : ℝ) ^ m := by
    field_simp
  have t1 : 3 * g * ((ℓ : ℝ) / ((ℓ : ℝ) - 1) ^ 2) ≤ 9 / 4 * g := by linarith [mul_le_mul_of_nonneg_left hr hg0]
  have t2 : (Mpar ℓ g h : ℝ) * ((ℓ : ℝ) / ((ℓ : ℝ) - 1) ^ 2) / (ℓ : ℝ) ^ m ≤
      3 / 2 * ((h : ℝ) + 2 * g) / ((ℓ : ℝ) - 1) ^ (m + 1 + 1) + 3 / 4 := by
    have hB : (0 : ℝ) < ((ℓ : ℝ) - 1) ^ (m + 1 + 1) := by positivity
    have s1 : (Mpar ℓ g h : ℝ) * ((ℓ : ℝ) / ((ℓ : ℝ) - 1) ^ 2) / (ℓ : ℝ) ^ m ≤
        (((h : ℝ) + 2 * g) / ((ℓ : ℝ) - 1) + 1) * ((ℓ : ℝ) / ((ℓ : ℝ) - 1) ^ 2) / (ℓ : ℝ) ^ m := by
      gcongr
    have s2 : (((h : ℝ) + 2 * g) / ((ℓ : ℝ) - 1) + 1) * ((ℓ : ℝ) / ((ℓ : ℝ) - 1) ^ 2) / (ℓ : ℝ) ^ m =
        ((h : ℝ) + 2 * g) * ℓ / (((ℓ : ℝ) - 1) ^ 3 * (ℓ : ℝ) ^ m) +
          ((ℓ : ℝ) / ((ℓ : ℝ) - 1) ^ 2) / (ℓ : ℝ) ^ m := by
      field_simp
    have s3 : ((h : ℝ) + 2 * g) * ℓ / (((ℓ : ℝ) - 1) ^ 3 * (ℓ : ℝ) ^ m) ≤
        3 / 2 * ((h : ℝ) + 2 * g) / ((ℓ : ℝ) - 1) ^ (m + 1 + 1) := by
      rw [div_le_div_iff₀ (by positivity) hB]
      have k1 : (ℓ : ℝ) * ((ℓ : ℝ) - 1) ^ m ≤ 3 / 2 * ((ℓ : ℝ) - 1) * (ℓ : ℝ) ^ m := by
        have : (ℓ : ℝ) ≤ 3 / 2 * ((ℓ : ℝ) - 1) := by linarith
        calc (ℓ : ℝ) * ((ℓ : ℝ) - 1) ^ m ≤ 3 / 2 * ((ℓ : ℝ) - 1) * ((ℓ : ℝ) - 1) ^ m :=
              mul_le_mul_of_nonneg_right this (by positivity)
          _ ≤ 3 / 2 * ((ℓ : ℝ) - 1) * (ℓ : ℝ) ^ m :=
              mul_le_mul_of_nonneg_left hPq (by positivity)
      have k2 := mul_le_mul_of_nonneg_left k1 (mul_nonneg hA0 hq2.le)
      have e2 : ((ℓ : ℝ) - 1) ^ (m + 1 + 1) = ((ℓ : ℝ) - 1) ^ m * ((ℓ : ℝ) - 1) ^ 2 := by ring
      rw [e2]
      linarith [k2]
    have s4 : ((ℓ : ℝ) / ((ℓ : ℝ) - 1) ^ 2) / (ℓ : ℝ) ^ m ≤ 3 / 4 := by
      rw [div_le_iff₀ hP0]
      linarith [hM0, hr0, le_mul_of_one_le_right (by norm_num : (0 : ℝ) ≤ 3 / 4) hP1]
    linarith
  rw [e1] at hceil ⊢
  linarith

theorem total_exponent_le_eight_hundred : ExponentBoundOfRankAndKappaBounds := by
  intro ℓ hℓ G g h j ell rr kap hj hG hg hgh hell hrr hkap
  have hσ := sigma_exponent_le_real ℓ hℓ g h j hj
  unfold eE a0E
  have hL : (3 : ℝ) ≤ ℓ := by exact_mod_cast hℓ
  have hq : (2 : ℝ) ≤ (ℓ : ℝ) - 1 := by linarith
  have hB4 : (4 : ℝ) ≤ ((ℓ : ℝ) - 1) ^ (j + 1) := by
    have := pow_le_pow_right₀ (by linarith : (1 : ℝ) ≤ (ℓ : ℝ) - 1) (by omega : 2 ≤ j + 1)
    linarith [pow_le_pow_left₀ (by norm_num) hq 2]
  have hB0 : (0 : ℝ) < ((ℓ : ℝ) - 1) ^ (j + 1) := by linarith
  have hg1 : (1 : ℝ) ≤ g := by exact_mod_cast hg
  have hGg : (G : ℝ) ≤ g := by exact_mod_cast hG
  have hgh' : (g : ℝ) ≤ h := by exact_mod_cast hgh
  have hh1 : (1 : ℝ) ≤ h := by linarith
  have hell1 : (1 : ℝ) ≤ ell := by exact_mod_cast hell
  have hT : (0 : ℝ) ≤ (h : ℝ) / ((ℓ : ℝ) - 1) ^ (j + 1) := by positivity
  have hΛ : (0 : ℝ) ≤ Real.logb ℓ h := Real.logb_nonneg (by linarith) hh1
  have hlog2 : Real.logb ℓ (2 * h) = Real.logb ℓ 2 + Real.logb ℓ h :=
    Real.logb_mul (by norm_num) (by positivity)
  have hl2 : Real.logb ℓ 2 ≤ 1 := by
    have := Real.logb_le_logb_of_le (by linarith : (1 : ℝ) < ℓ) (by norm_num : (0 : ℝ) < 2)
      (by linarith : (2 : ℝ) ≤ ℓ)
    rwa [Real.logb_self_eq_one (by linarith)] at this
  have hGL : (G : ℝ) / ℓ ≤ g / 3 := by
    rw [div_le_div_iff₀ (by positivity) (by norm_num)]
    exact mul_le_mul hGg hL (by norm_num) (by linarith)
  have hgB : (g : ℝ) / ((ℓ : ℝ) - 1) ^ (j + 1) ≤ g / 4 :=
    div_le_div_of_nonneg_left (by positivity) (by norm_num) hB4
  have h4g : 4 * (g : ℝ) / ((ℓ : ℝ) - 1) ≤ 2 * g := by
    rw [div_le_iff₀ (by linarith)]
    linarith [mul_le_mul_of_nonneg_left hq (show (0 : ℝ) ≤ g by linarith)]
  have eσ : 3 / 2 * ((h : ℝ) + 2 * g) / ((ℓ : ℝ) - 1) ^ (j + 1) =
      3 / 2 * ((h : ℝ) / ((ℓ : ℝ) - 1) ^ (j + 1)) + 3 * ((g : ℝ) / ((ℓ : ℝ) - 1) ^ (j + 1)) := by
    ring
  rw [eσ] at hσ
  rw [hlog2] at hkap
  have hge : (g : ℝ) ≤ g * ell := le_mul_of_one_le_right (by linarith) hell1
  have hee : (ell : ℝ) ≤ g * ell := le_mul_of_one_le_left (by linarith) hg1
  have h1e : (1 : ℝ) ≤ g * ell := one_le_mul_of_one_le_of_one_le hg1 hell1
  linarith [hB0, hgh', hT, hΛ, hl2, hGL, hgB, h4g, hrr, hkap]

end Formalism.TruncatedSeriesCounting.WachCoordinates
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.TruncatedSeriesCounting.TruncatedSeriesProofs.ThmEExp =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.BoundedNumeratorPowerSummability =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.BoundedNumeratorPowerSummability", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.WachCoordinates\npublic import Formalism.TruncatedSeriesCounting.AprimeArith\npublic import Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.AevalApplySubEvalOneMem\npublic import Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.AprimeCuts\npublic import Formalism.GaussValuationBounds.GaussValueContraction.KapBoundProof\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcIffLocalOfAdmissible\npublic import Formalism.TruncatedSeriesCounting.TruncatedSeriesProofs.RrBound\npublic import Formalism.TruncatedSeriesCounting.TruncatedSeriesProofs.ThmEExp\nimport Formalism.WindowSums.PowerSeriesRelationList\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.WachCoordinates

theorem exists_chi (l : ℕ) [Fact l.Prime] :
    ∃ χ : ℤ_[l]ˣ, PadicInt.valuation ((χ : ℤ_[l]) - 1) = 1 := by
  have hu : IsUnit (1 + (l : ℤ_[l])) := by
    rw [PadicInt.isUnit_iff]
    have h1 : ‖(l : ℤ_[l])‖ < 1 := by
      rw [PadicInt.norm_p]
      apply inv_lt_one_of_one_lt₀
      exact_mod_cast (Fact.out : l.Prime).one_lt
    have h2 : ‖(1 : ℤ_[l]) + l‖ = max ‖(1 : ℤ_[l])‖ ‖(l : ℤ_[l])‖ :=
      PadicInt.norm_add_eq_max_of_ne (by rw [norm_one]; exact h1.ne')
    rw [h2, norm_one]; exact max_eq_left h1.le
  refine ⟨hu.unit, ?_⟩
  have : ((hu.unit : ℤ_[l]ˣ) : ℤ_[l]) - 1 = (l : ℤ_[l]) := by
    rw [IsUnit.unit_spec]; ring
  rw [this]; exact PadicInt.valuation_p

theorem cast_sup_le {ι : Type*} (s : Finset ι) (f : ι → ℕ) (B : ℝ) (hB : 0 ≤ B)
    (h : ∀ x ∈ s, (f x : ℝ) ≤ B) : ((s.sup f : ℕ) : ℝ) ≤ B := by
  have h1 : s.sup f ≤ ⌊B⌋₊ := Finset.sup_le fun x hx => Nat.le_floor (h x hx)
  exact le_trans (by exact_mod_cast h1) (Nat.floor_le hB)

theorem exists_eq_Ico_of_mem_windows {g h : ℕ} {w : Finset ℤ} (hw : w ∈ wins g h) :
    ∃ (a : ℤ) (k : ℕ), w = Finset.Ico a (a + (k : ℤ)) ∧ -(2 * h : ℤ) ≤ a ∧ k ≤ 3 * g ∧
      a + (k : ℤ) ≤ 2 * h + 1 := by
  unfold wins at hw
  rw [Finset.mem_image] at hw
  obtain ⟨p, hp, rfl⟩ := hw
  rw [Finset.mem_filter, Finset.mem_product, Finset.mem_Icc, Finset.mem_range] at hp
  exact ⟨p.1, p.2, rfl, hp.1.1.1, by omega, hp.2⟩

theorem vPP1_le (l : ℕ) (hl : l.Prime) (h2 : l ≠ 2) (ell g h : ℕ) (w₁ w₂ w₃ : Finset ℤ)
    (h₁ : w₁ ∈ wins g h) (h₂ : w₂ ∈ wins g h) (h₃ : w₃ ∈ wins g h) :
    (vPP1 l ell (w₁ ∪ w₂ ∪ w₃) : ℝ) ≤
      ell + 20 * g * (1 + ell) + 5 * (4 * g / ((l : ℝ) - 1) + Real.logb l (2 * h)) := by
  have : Fact l.Prime := ⟨hl⟩
  obtain ⟨χ, hχ⟩ := exists_chi l
  obtain ⟨a₁, k₁, rfl, ha₁, hk₁, hb₁⟩ := exists_eq_Ico_of_mem_windows h₁
  obtain ⟨a₂, k₂, rfl, ha₂, hk₂, hb₂⟩ := exists_eq_Ico_of_mem_windows h₂
  obtain ⟨a₃, k₃, rfl, ha₃, hk₃, hb₃⟩ := exists_eq_Ico_of_mem_windows h₃
  set JJ : Finset ℤ := Finset.Ico a₁ (a₁ + (k₁ : ℤ)) ∪ Finset.Ico a₂ (a₂ + (k₂ : ℤ)) ∪
    Finset.Ico a₃ (a₃ + (k₃ : ℤ)) with hJJ
  have hK := Formalism.NOK.kapBound_proof l h2 χ hχ ell g h ![a₁, a₂, a₃, a₁, a₁] JJ
    (by
      intro i hi
      rw [hJJ, Finset.mem_union, Finset.mem_union, Finset.mem_Ico, Finset.mem_Ico,
        Finset.mem_Ico] at hi
      rw [Finset.mem_biUnion]
      rcases hi with (hi | hi) | hi
      · exact ⟨0, Finset.mem_univ _, by
          simp only [Matrix.cons_val_zero, Finset.mem_Ico]; omega⟩
      · exact ⟨1, Finset.mem_univ _, by
          simp only [Matrix.cons_val_one, Matrix.cons_val_zero, Finset.mem_Ico]; omega⟩
      · exact ⟨2, Finset.mem_univ _, by
          simp only [Matrix.cons_val, Finset.mem_Ico]; omega⟩)
    (by
      intro i hi
      rw [hJJ, Finset.mem_union, Finset.mem_union, Finset.mem_Ico, Finset.mem_Ico,
        Finset.mem_Ico] at hi
      rw [abs_le]
      omega)
  have hV := (Formalism.WindowSums.arc_KillerVal l h2 χ hχ ell JJ).2
  have hE : vPP1 l ell JJ = PadicInt.valuation ((Formalism.WindowSums.PP l χ ell JJ).eval 1) := by
    rw [hV]; unfold vPP1
    rw [add_comm]
    congr 1
    exact Finset.sum_congr rfl fun i _ => by ring
  rw [hE]
  exact hK.2

theorem summable_nine_pow_mul_inv_sq_succ (l : ℕ) (hl : 3 ≤ l) (n : ℕ) (H : ZMod n → ℕ) (h : ℕ) (c : ZMod n) (K : ℝ)
    (hK : 0 ≤ K) (hH : ∀ x, H x ≤ 2 * h) :
    Summable fun a : ℕ => ((H (c + ((a + 1 : ℕ) : ZMod n)) : ℝ) + K + 3) / ((l : ℝ) - 1) ^ a := by
  have hl' : (3 : ℝ) ≤ l := by exact_mod_cast hl
  have hgeo : Summable fun a : ℕ => ((2 * h : ℝ) + K + 3) * (((l : ℝ) - 1)⁻¹) ^ a := by
    apply Summable.mul_left
    apply summable_geometric_of_lt_one
    · apply inv_nonneg.mpr; linarith
    · apply inv_lt_one_of_one_lt₀; linarith
  refine Summable.of_nonneg_of_le (fun a => ?_) (fun a => ?_) hgeo
  · apply div_nonneg
    · positivity
    · apply pow_nonneg; linarith
  · rw [inv_pow, ← div_eq_mul_inv]
    apply div_le_div_of_nonneg_right
    · have : (H (c + ((a + 1 : ℕ) : ZMod n)) : ℝ) ≤ 2 * h := by exact_mod_cast hH _
      linarith
    · apply pow_nonneg; linarith

theorem rF_le (l : ℕ) (hl : 3 ≤ l) (n : ℕ) [NeZero n] (H : ZMod n → ℕ) (G h j : ℕ) (c : ZMod n)
    (h1 : 1 ≤ h) (hH : ∀ x, H x ≤ 2 * h)
    (hG : ∀ k : ℕ, 1 ≤ k → k ≤ j → H (c + (k : ZMod n)) ≤ 2 * G) :
    (rF l n H c : ℝ) ≤
      20 * ((G : ℝ) / l + (h : ℝ) / ((l : ℝ) - 1) ^ (j + 1) + Real.logb l h + 1) := by
  have hl' : (3 : ℝ) ≤ l := by exact_mod_cast hl
  have hHm : Hmax n H ≤ 2 * h := Finset.sup_le fun x _ => hH x
  have hcc : ccPar l (Hmax n H) ≤ ⌈1 + Real.logb l (2 * (h : ℝ) + 1)⌉₊ := by
    unfold ccPar
    apply Nat.ceil_mono
    have : Real.logb l ((Hmax n H : ℝ) + 1) ≤ Real.logb l (2 * (h : ℝ) + 1) := by
      apply Real.logb_le_logb_of_le (by linarith) (by positivity)
      have : (Hmax n H : ℝ) ≤ 2 * h := by exact_mod_cast hHm
      linarith
    linarith
  have hccR : (ccPar l (Hmax n H) : ℝ) ≤ (⌈1 + Real.logb l (2 * (h : ℝ) + 1)⌉₊ : ℝ) := by
    exact_mod_cast hcc
  have hs0 : 0 ≤ sBd l n H c := by
    unfold sBd
    apply tsum_nonneg
    intro a
    apply div_nonneg
    · positivity
    · apply pow_nonneg; linarith
  have hs : sBd l n H c ≤ ∑' a : ℕ, ((H (c + ((a + 1 : ℕ) : ZMod n)) : ℝ) +
        (⌈1 + Real.logb l (2 * (h : ℝ) + 1)⌉₊ : ℝ) + 3) / ((l : ℝ) - 1) ^ a := by
    unfold sBd
    apply Summable.tsum_le_tsum _ (summable_nine_pow_mul_inv_sq_succ l hl n H h c _ (by positivity) hH)
      (summable_nine_pow_mul_inv_sq_succ l hl n H h c _ (by positivity) hH)
    intro a
    apply div_le_div_of_nonneg_right
    · linarith
    · apply pow_nonneg; linarith
  refine Formalism.TruncatedSeriesCounting.WachCoordinates.remainder_bound_of_tsum l hl n H G h j c (sBd l n H c) (rF l n H c) h1 hH hG hs ?_
  unfold rF
  push_cast
  have hq : 0 ≤ (l : ℝ) / ((l : ℝ) - 1) ^ 2 := by positivity
  have hm0 : 0 ≤ min (⌊sBd l n H c⌋₊ : ℝ) (Hmax n H : ℝ) := le_min (by positivity) (by positivity)
  have hm : min (⌊sBd l n H c⌋₊ : ℝ) (Hmax n H : ℝ) ≤ sBd l n H c :=
    le_trans (min_le_left _ _) (Nat.floor_le hs0)
  have hfl : (⌊min (⌊sBd l n H c⌋₊ : ℝ) (Hmax n H : ℝ) * l / ((l : ℝ) - 1) ^ 2⌋₊ : ℝ) ≤
      min (⌊sBd l n H c⌋₊ : ℝ) (Hmax n H : ℝ) * l / ((l : ℝ) - 1) ^ 2 := by
    apply Nat.floor_le
    rw [mul_div_assoc]; exact mul_nonneg hm0 hq
  have hmul : min (⌊sBd l n H c⌋₊ : ℝ) (Hmax n H : ℝ) * l / ((l : ℝ) - 1) ^ 2 ≤
      sBd l n H c * l / ((l : ℝ) - 1) ^ 2 := by
    rw [mul_div_assoc, mul_div_assoc]; exact mul_le_mul_of_nonneg_right hm hq
  linarith

theorem sigPar_eq (l g h j : ℕ) : sigPar l g h j = Formalism.TruncatedSeriesCounting.WachCoordinates.sigE l g h j := by
  unfold sigPar Formalism.TruncatedSeriesCounting.WachCoordinates.sigE Mpar Formalism.TruncatedSeriesCounting.WachCoordinates.Mpar
  push_cast
  rfl

theorem thmEBound_holds : ThmEBound 800 := by
  intro l hlp hl2 n _ j G S η h ty cuts arcLen H₁ H₂ hcuts hgh hH hHG
  have hl : 3 ≤ l := by
    have := hlp.two_le
    omega
  have hl' : (3 : ℝ) ≤ l := by exact_mod_cast hl
  obtain ⟨hne, hj, harc, -, -⟩ := hcuts
  have hg1 : 1 ≤ gPar G S η := le_max_right _ _
  have hGg : G ≤ gPar G S η :=
    le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) (le_max_left _ _)
  have hh1 : 1 ≤ h := le_trans hg1 hgh
  have hell : 1 ≤ ellMax cuts arcLen := by
    obtain ⟨c, hc⟩ := hne
    exact le_trans (harc c hc).1 (Finset.le_sup (f := arcLen) hc)
  have hlog : 0 ≤ Real.logb l h := by
    apply Real.logb_nonneg (by linarith)
    exact_mod_cast hh1
  have hrr : ((rrPar l n H₁ H₂ cuts : ℕ) : ℝ) ≤
      20 * ((G : ℝ) / l + (h : ℝ) / ((l : ℝ) - 1) ^ (j + 1) + Real.logb l h + 1) := by
    unfold rrPar
    apply cast_sup_le
    · have : 0 ≤ (h : ℝ) / ((l : ℝ) - 1) ^ (j + 1) := by
        apply div_nonneg (by positivity); apply pow_nonneg; linarith
      positivity
    · intro c hc
      rw [Nat.cast_max]
      apply max_le
      · exact rF_le l hl n H₁ G h j c hh1 (fun x => (hH x).1) fun k h1 h2 => (hHG c hc k h1 h2).1
      · exact rF_le l hl n H₂ G h j c hh1 (fun x => (hH x).2) fun k h1 h2 => (hHG c hc k h1 h2).2
  have hkap : ((kapPar l (gPar G S η) h (ellMax cuts arcLen) : ℕ) : ℝ) ≤
      (ellMax cuts arcLen : ℝ) + 20 * (gPar G S η : ℝ) * (1 + (ellMax cuts arcLen : ℝ)) +
        5 * (4 * (gPar G S η : ℝ) / ((l : ℝ) - 1) + Real.logb l (2 * h)) := by
    unfold kapPar
    apply cast_sup_le
    · have h1 : 0 ≤ Real.logb l (2 * (h : ℝ)) := by
        apply Real.logb_nonneg (by linarith)
        have : (1 : ℝ) ≤ h := by exact_mod_cast hh1
        linarith
      have h2 : 0 ≤ 4 * (gPar G S η : ℝ) / ((l : ℝ) - 1) := by
        apply div_nonneg (by positivity); linarith
      positivity
    · intro w hw
      rw [Finset.mem_product, Finset.mem_product] at hw
      exact vPP1_le l hlp (by omega) _ _ _ _ _ _ hw.1 hw.2.1 hw.2.2
  have hE := Formalism.TruncatedSeriesCounting.WachCoordinates.total_exponent_le_eight_hundred l hl G (gPar G S η) h j (ellMax cuts arcLen)
    (rrPar l n H₁ H₂ cuts : ℝ) (kapPar l (gPar G S η) h (ellMax cuts arcLen) : ℝ)
    hj hGg hg1 hgh hell hrr hkap
  have heq : (ePar l n j (gPar G S η) h H₁ H₂ cuts arcLen : ℝ) =
      Formalism.TruncatedSeriesCounting.WachCoordinates.eE l (gPar G S η) h j (ellMax cuts arcLen) (rrPar l n H₁ H₂ cuts : ℝ)
        (kapPar l (gPar G S η) h (ellMax cuts arcLen) : ℝ) := by
    unfold ePar initialExponentBound Formalism.TruncatedSeriesCounting.WachCoordinates.eE Formalism.TruncatedSeriesCounting.WachCoordinates.a0E
    rw [sigPar_eq]
    push_cast
    ring
  rw [heq]
  exact hE

end Formalism.MainNotions.WachCoordinates

namespace Formalism.MainNotions.WachCoordinates

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc

section KillerBridge

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR}
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} (W : LocWach PD LL O v n)

theorem γD_smulA (T : LocLat G Qp LL O) (g : W.Gam) (a : LetA O n) (x : W.DD T) :
    W.γD T g (a • x) = W.γA g a • W.γD T g x := by
  rw [← algebraMap_smul W.EE a x, W.γD_smul, W.γE_ext, algebraMap_smul]
  rfl

def Pi0Stable : Prop := ∀ g : W.Gam, ∃ u ∈ W.AΔ, W.γA g W.π₀ = W.π₀ * u

theorem NΔ_stable (T : LocLat G Qp LL O) (g : W.Gam) (u : LetA O n) (hu : u ∈ W.AΔ)
    (y : W.DD T) (hy : y ∈ W.NΔ T) : u • W.γD T g y ∈ W.NΔ T := by
  refine ⟨(W.N T).smul_mem _ (W.N_Γ T g y hy.1), fun δ hδ => ?_⟩
  rw [γD_smulA, hu δ hδ, ← W.γD_mul, mul_comm, W.γD_mul, hy.2 δ hδ]

def piN (T : LocLat G Qp LL O) : Submodule O (W.DD T) where
  carrier := mulSet W T W.π₀ (W.NΔ T)
  zero_mem' := ⟨0, (W.NΔ T).zero_mem, (smul_zero _).symm⟩
  add_mem' := by
    rintro _ _ ⟨y₁, h₁, rfl⟩ ⟨y₂, h₂, rfl⟩
    exact ⟨y₁ + y₂, (W.NΔ T).add_mem h₁ h₂, (smul_add _ _ _).symm⟩
  smul_mem' := by
    rintro c _ ⟨y, h, rfl⟩
    exact ⟨c • y, (W.NΔ T).smul_mem c h, smul_comm _ _ _⟩

theorem killerModule_of_stable (h : Pi0Stable W) : KillerMod W := by
  intro T c γ χ ell JS w _ _ _ hw
  have hst : ∀ u ∈ piN W T, W.γD T γ u ∈ piN W T := by
    rintro _ ⟨y, hy, rfl⟩
    obtain ⟨u, hu, hπ⟩ := h γ
    refine ⟨u • W.γD T γ y, NΔ_stable W T γ u hu y hy, ?_⟩
    rw [γD_smulA, hπ, mul_smul]
  exact Formalism.ExponentWindows.aeval_sub_eval_one_smul_mem O (W.DD T) (W.γD T γ) (piN W T) hst (PPO PD.p χ ell JS) w hw

end KillerBridge

theorem killer_conditions_of_stable (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW)
    (h : AtCaseA fun l _ K LL h => Pi0Stable ((HW l).W K 1 LL h.2.2)) : adm11 D HW F :=
  ⟨Formalism.WindowSums.arc_KillerVal, _root_.Formalism.WindowSums.annihilatorPoly_kills,
    fun l _ K LL hc h5 => killerModule_of_stable _ (h l K LL hc h5)⟩

end Formalism.MainNotions.WachCoordinates

namespace Formalism.MainNotions.WachCoordinates

def tyA {n : ℕ} (b η : ℕ) (typ : ZMod n → Bool) (sz : ZMod n → ℕ) (i : ZMod n) : LT :=
  if b ≤ sz i ∧ sz i ≤ b + η then (if typ i then LT.up (sz i) else LT.down (sz i)) else LT.thin

def hA {n : ℕ} (b w S η : ℕ) (sz : ZMod n → ℕ) : ℕ := max (hCor b w S η sz) 1

def bdA {n : ℕ} (b w S η : ℕ) (sz : ZMod n → ℕ) (i : ZMod n) : ℕ :=
  if b ≤ sz i ∧ sz i ≤ b + η then hA b w S η sz else w + S + η

theorem gPar_A (w S η : ℕ) : gPar (w + S + η) S η = max (w + S + η) 1 := by
  unfold gPar; omega

theorem hCor_pos {n : ℕ} {b w S η : ℕ} {sz : ZMod n → ℕ} (hex : ∃ i, b ≤ sz i ∧ sz i ≤ b + η) :
    hCor b w S η sz = b + η + S := by
  unfold hCor; exact if_pos hex

theorem hCor_neg {n : ℕ} {b w S η : ℕ} {sz : ZMod n → ℕ} (hex : ¬ ∃ i, b ≤ sz i ∧ sz i ≤ b + η) :
    hCor b w S η sz = w + S + η := by
  unfold hCor; exact if_neg hex

theorem tyA_thick {n : ℕ} (b η : ℕ) (typ : ZMod n → Bool) (sz : ZMod n → ℕ) (i : ZMod n) :
    (tyA b η typ sz i).thick = true ↔ (b ≤ sz i ∧ sz i ≤ b + η) := by
  unfold tyA
  by_cases ht : b ≤ sz i ∧ sz i ≤ b + η
  · rw [if_pos ht]
    cases typ i <;> simp [LT.thick, ht]
  · rw [if_neg ht]
    simp [LT.thick, ht]

theorem tyA_thin {n : ℕ} {b η : ℕ} {typ : ZMod n → Bool} {sz : ZMod n → ℕ} {i : ZMod n}
    (ht : ¬ (b ≤ sz i ∧ sz i ≤ b + η)) : tyA b η typ sz i = LT.thin := by
  unfold tyA; exact if_neg ht

theorem tyA_size {n : ℕ} {b η : ℕ} {typ : ZMod n → Bool} {sz : ZMod n → ℕ} {i : ZMod n} {x : ℕ}
    (h : tyA b η typ sz i = LT.up x ∨ tyA b η typ sz i = LT.down x) :
    (b ≤ sz i ∧ sz i ≤ b + η) ∧ sz i = x := by
  unfold tyA at h
  by_cases ht : b ≤ sz i ∧ sz i ≤ b + η
  · refine ⟨ht, ?_⟩
    rw [if_pos ht] at h
    generalize typ i = t at h
    cases t <;> simpa using h
  · rw [if_neg ht] at h
    simp at h

theorem winA_subset {n : ℕ} (b w S η : ℕ) (typ : ZMod n → Bool) (sz : ZMod n → ℕ) (i : ZMod n)
    (h : Thick b η sz i ∨ sz i ≤ w) :
    (if typ i then (LT.up (sz i)).win 0 S η else (LT.down (sz i)).win 0 S η) ⊆
      (tyA b η typ sz i).win (w + S + η) S η := by
  unfold tyA
  by_cases ht : b ≤ sz i ∧ sz i ≤ b + η
  · rw [if_pos ht]
    generalize typ i = t
    intro x hx
    cases t <;> simpa [LT.win] using hx
  · rw [if_neg ht]
    have hw : sz i ≤ w := h.resolve_left ht
    generalize typ i = t
    intro x hx
    cases t <;>
      · simp only [Bool.false_eq_true, if_false, if_true, LT.win, Set.mem_union, Set.mem_Icc] at hx ⊢
        push_cast
        omega

theorem tyA_win_subset {n : ℕ} (b w S η : ℕ) (typ : ZMod n → Bool) (sz : ZMod n → ℕ) (i : ZMod n) :
    (tyA b η typ sz i).win (w + S + η) S η ⊆
      Set.Icc (-(bdA b w S η sz i : ℤ)) (bdA b w S η sz i) := by
  unfold tyA bdA
  by_cases ht : b ≤ sz i ∧ sz i ≤ b + η
  · rw [if_pos ht, if_pos ht]
    have h1 : b + η + S ≤ hA b w S η sz := by
      unfold hA; rw [hCor_pos ⟨i, ht⟩]; exact le_max_left _ _
    generalize typ i = t
    intro x hx
    cases t <;>
      · simp only [Bool.false_eq_true, if_false, if_true, LT.win, Set.mem_union, Set.mem_Icc] at hx ⊢
        omega
  · rw [if_neg ht, if_neg ht]
    intro x hx
    simpa [LT.win] using hx

theorem clusters_sep {n : ℕ} {j : ℕ} {thick : ZMod n → Prop} (h : Clusters j thick) :
    ∀ a : ZMod n, thick a → ∀ k : ℕ, 1 ≤ k → k ≤ j → thick (a - k) →
      ∀ k' : ℕ, 1 ≤ k' → k' ≤ j → ¬ thick (a - k - k') := by
  intro a ha k hk1 hkj hak k' hk1' hkj'
  rcases h a ha with h0 | ⟨d, hd1, hdj, -, hrest⟩
  · exact absurd hak (h0 k hk1 hkj)
  · have hkd : k = d := by
      by_contra hne
      exact hrest k hk1 (by omega) hne hak
    subst hkd
    have := hrest (k + k') (by omega) (by omega) (by omega)
    rwa [Nat.cast_add, ← sub_sub] at this

def AprimeConfig (C : ℝ) : Prop :=
  ∀ l : ℕ, 11 ≤ l →
    ∀ (n : ℕ) [NeZero n] (j b w S η : ℕ) (typ : ZMod n → Bool) (sz : ZMod n → ℕ),
      1 ≤ j → j + 1 ≤ n → (∀ i, Thick b η sz i ∨ sz i ≤ w) →
      C * ((j : ℝ) + 1) * (((w + S + η : ℕ) : ℝ) + 1) ≤ b → Clusters j (Thick b η sz) →
      ∃ (cuts : Finset (ZMod n)) (arcLen : ZMod n → ℕ),
        gPar (w + S + η) S η ≤ hA b w S η sz ∧
        SizesOK (gPar (w + S + η) S η) S (hA b w S η sz) (tyA b η typ sz) ∧
        CutsOK n j (tyA b η typ sz) cuts arcLen ∧
        ThickLe2 (tyA b η typ sz) cuts arcLen ∧
        ellMax cuts arcLen ≤ 3 * j + 1 ∧
        ∀ H₁ H₂ : ZMod n → ℕ,
          (∀ i, H₁ i ≤ 2 * hA b w S η sz ∧ H₂ i ≤ 2 * hA b w S η sz) →
          (∀ i, ¬ Thick b η sz i → H₁ i ≤ 2 * (w + S + η) ∧ H₂ i ≤ 2 * (w + S + η)) →
          WordOK l (initialExponentBound l n j (gPar (w + S + η) S η) (hA b w S η sz) H₁ H₂ cuts arcLen)
            (tyA b η typ sz) cuts arcLen

theorem aprimeConfig_holds : ∃ C : ℝ, 1 ≤ C ∧ AprimeConfig C := by
  obtain ⟨C₀, hC₀, hcore⟩ := Formalism.ExponentWindows.exists_cuts_exponent_bounds
  refine ⟨max C₀ 1, le_max_right _ _, ?_⟩
  intro l hl n _ j b w S η typ sz hj hn hthick hCb hclus
  have hjR : (1 : ℝ) ≤ j := by exact_mod_cast hj
  have hGpos : (0 : ℝ) ≤ ((w + S + η : ℕ) : ℝ) + 1 := by positivity
  have hCb0 : C₀ * ((j : ℝ) + 1) * (((w + S + η : ℕ) : ℝ) + 1) ≤ b := by
    refine le_trans ?_ hCb
    apply mul_le_mul_of_nonneg_right _ hGpos
    apply mul_le_mul_of_nonneg_right (le_max_left _ _)
    linarith
  have hb2R : (2 : ℝ) * (((w + S + η : ℕ) : ℝ) + 1) ≤ b := by
    refine le_trans ?_ hCb
    apply mul_le_mul_of_nonneg_right _ hGpos
    have h1 : (1 : ℝ) ≤ max C₀ 1 := le_max_right _ _
    nlinarith
  have hb2 : 2 * (w + S + η + 1) ≤ b := by exact_mod_cast hb2R
  obtain ⟨cuts, ell, hne, hc⟩ := hcore l hl n j sz b w S η
    (20 * (((w + S + η : ℕ) : ℝ) / l + ((b + η + S : ℕ) : ℝ) / ((l : ℝ) - 1) ^ (j + 1) +
        Real.logb l (b + η + S : ℕ) + 1)) hj hn hthick hCb0 (clusters_sep hclus) le_rfl
  have hg : gPar (w + S + η) S η = max (w + S + η) 1 := gPar_A w S η
  have hhA : ∀ i, (b ≤ sz i ∧ sz i ≤ b + η) → hA b w S η sz = b + η + S := by
    intro i hi
    unfold hA; rw [hCor_pos ⟨i, hi⟩]; omega
  have hell : ellMax cuts ell ≤ 3 * j + 1 := Finset.sup_le fun c hc' => (hc c hc').2.2.1
  refine ⟨cuts, ell, ?_, ?_, ?_, ?_, hell, ?_⟩
  · rw [hg]
    by_cases hex : ∃ i, b ≤ sz i ∧ sz i ≤ b + η
    · obtain ⟨i, hi⟩ := hex
      rw [hhA i hi]; omega
    · unfold hA; rw [hCor_neg hex]
  · intro i
    by_cases ht : b ≤ sz i ∧ sz i ≤ b + η
    · left
      rw [hg, hhA i ht]
      unfold tyA
      rw [if_pos ht]
      generalize typ i = t
      cases t <;> simp only [Bool.false_eq_true, if_false, if_true, LT.ok, LT.size] <;> omega
    · right
      exact tyA_thin ht
  · refine ⟨hne, hj, ?_, fun c hc' => (hc c hc').2.1, ?_⟩
    · intro c hc'
      obtain ⟨-, hjl, -, hmem, hno, -⟩ := hc c hc'
      refine ⟨le_trans hj hjl, ?_, hmem, hno⟩
      by_contra hlt
      have h0 := hno n (Nat.pos_of_ne_zero (NeZero.ne n)) (by omega)
      rw [ZMod.natCast_self, sub_zero] at h0
      exact h0 hc'
    · intro c hc' k hk1 hkj
      exact tyA_thin ((hc c hc').1 k hk1 hkj)
  · intro c hc'
    have hcard := (hc c hc').2.2.2.2.2.1
    have heq : thickLv (tyA b η typ sz) ell c = (Finset.range (ell c)).filter
        (fun k : ℕ => b ≤ sz (c - (k : ZMod n)) ∧ sz (c - (k : ZMod n)) ≤ b + η) :=
      Finset.filter_congr fun s _ => tyA_thick b η typ sz _
    unfold ro
    rw [heq]
    exact hcard
  · intro H₁ H₂ hH hHG c hc' s₀ s₁ hs01 hs1 b₀ b₁
    obtain ⟨-, -, -, -, -, -, -, hword⟩ := hc c hc'
    have key : ∀ x y : ℕ,
        (tyA b η typ sz (c - (s₁ : ZMod n)) = LT.up x ∨ tyA b η typ sz (c - (s₁ : ZMod n)) = LT.down x) →
        (tyA b η typ sz (c - (s₀ : ZMod n)) = LT.up y ∨ tyA b η typ sz (c - (s₀ : ZMod n)) = LT.down y) →
        y < l * x ∧ 2 * y ≤ l * x ∧
          2 * initialExponentBound l n j (gPar (w + S + η) S η) (hA b w S η sz) H₁ H₂ cuts ell < x := by
      intro x y hx hy
      obtain ⟨ht1, rfl⟩ := tyA_size hx
      obtain ⟨ht0, rfl⟩ := tyA_size hy
      obtain ⟨w1, w2, w3⟩ := hword s₁ s₀ hs1 hs01 ht1 ht0
      refine ⟨by exact_mod_cast w1, ?_, ?_⟩
      · have : (2 : ℝ) * sz (c - (s₀ : ZMod n)) ≤ l * sz (c - (s₁ : ZMod n)) := by linarith
        exact_mod_cast this
      · have hl3 : 3 ≤ l := by omega
        have hl' : (3 : ℝ) ≤ l := by exact_mod_cast hl3
        have hh := hhA _ ht1
        have hh1 : 1 ≤ b + η + S := by omega
        have hrr : ((rrPar l n H₁ H₂ cuts : ℕ) : ℝ) ≤
            20 * (((w + S + η : ℕ) : ℝ) / l + ((b + η + S : ℕ) : ℝ) / ((l : ℝ) - 1) ^ (j + 1) +
              Real.logb l (b + η + S : ℕ) + 1) := by
          unfold rrPar
          apply cast_sup_le
          · have h1 : 0 ≤ ((b + η + S : ℕ) : ℝ) / ((l : ℝ) - 1) ^ (j + 1) := by
              apply div_nonneg (by positivity); apply pow_nonneg; linarith
            have h2 : 0 ≤ Real.logb l ((b + η + S : ℕ) : ℝ) := by
              apply Real.logb_nonneg (by linarith)
              exact_mod_cast hh1
            positivity
          · intro c₁ hc₁
            rw [Nat.cast_max]
            apply max_le
            · exact rF_le l hl3 n H₁ (w + S + η) (b + η + S) j c₁ hh1
                (fun x => hh ▸ (hH x).1)
                (fun k h1 h2 => (hHG _ ((hc c₁ hc₁).1 k h1 h2)).1)
            · exact rF_le l hl3 n H₂ (w + S + η) (b + η + S) j c₁ hh1
                (fun x => hh ▸ (hH x).2)
                (fun k h1 h2 => (hHG _ ((hc c₁ hc₁).1 k h1 h2)).2)
        have hellR : ((ellMax cuts ell : ℕ) : ℝ) ≤ ((3 * j + 1 : ℕ) : ℝ) := by exact_mod_cast hell
        have ha : ((initialExponentBound l n j (gPar (w + S + η) S η) (hA b w S η sz) H₁ H₂ cuts ell : ℕ) : ℝ) ≤
            Formalism.TruncatedSeriesCounting.WachCoordinates.a0E l (max (w + S + η) 1) (b + η + S) j (3 * j + 1)
              (20 * (((w + S + η : ℕ) : ℝ) / l +
                ((b + η + S : ℕ) : ℝ) / ((l : ℝ) - 1) ^ (j + 1) +
                Real.logb l (b + η + S : ℕ) + 1)) := by
          unfold initialExponentBound Formalism.TruncatedSeriesCounting.WachCoordinates.a0E
          rw [hg, hh, sigPar_eq]
          push_cast at hellR hrr ⊢
          have hgn : (0 : ℝ) ≤ 2 * max ((w : ℝ) + S + η) 1 := by positivity
          nlinarith [mul_le_mul_of_nonneg_left hellR hgn]
        have : (2 : ℝ) * (initialExponentBound l n j (gPar (w + S + η) S η) (hA b w S η sz) H₁ H₂ cuts ell : ℕ) <
            sz (c - (s₁ : ZMod n)) := by linarith
        exact_mod_cast this
    refine ⟨fun h1 h0 => (key b₁ b₀ (Or.inr h1) (Or.inl h0)).1, fun h1 h0 => ?_⟩
    exact (key b₁ b₀ (Or.inl h1) (Or.inr h0)).2

theorem bdA_le {n : ℕ} {b w S η : ℕ} {sz : ZMod n → ℕ} (hG : w + S + η ≤ hA b w S η sz)
    (i : ZMod n) : bdA b w S η sz i ≤ hA b w S η sz := by
  unfold bdA
  split_ifs
  · exact le_rfl
  · exact hG

theorem bdA_thin {n : ℕ} {b w S η : ℕ} {sz : ZMod n → ℕ} {i : ZMod n}
    (ht : ¬ Thick b η sz i) : bdA b w S η sz i = w + S + η := by
  unfold bdA; exact if_neg ht

theorem eA_le (C₁ : ℝ) (hC₁ : 0 ≤ C₁) (hE : ThmEBound C₁) (l : ℕ) (hlp : l.Prime) (hl : 11 ≤ l)
    (n : ℕ) [NeZero n] (j b w S η : ℕ) (typ : ZMod n → Bool) (sz : ZMod n → ℕ)
    (cuts : Finset (ZMod n)) (arcLen : ZMod n → ℕ) (H₁ H₂ : ZMod n → ℕ)
    (hg : gPar (w + S + η) S η ≤ hA b w S η sz)
    (hcuts : CutsOK n j (tyA b η typ sz) cuts arcLen) (hell : ellMax cuts arcLen ≤ 3 * j + 1)
    (hH : ∀ i, H₁ i ≤ 2 * hA b w S η sz ∧ H₂ i ≤ 2 * hA b w S η sz)
    (hHG : ∀ i, ¬ Thick b η sz i → H₁ i ≤ 2 * (w + S + η) ∧ H₂ i ≤ 2 * (w + S + η)) :
    (ePar l n j (gPar (w + S + η) S η) (hA b w S η sz) H₁ H₂ cuts arcLen : ℝ) ≤
      4 * C₁ * ((hCor b w S η sz : ℝ) / ((l : ℝ) - 1) ^ (j + 1) +
        (((w + S + η : ℕ) : ℝ) + 1) * ((j : ℝ) + 1) + Real.logb l (hCor b w S η sz : ℝ)) := by
  have h0 := hE l hlp (by omega) n j (w + S + η) S η (hA b w S η sz) (tyA b η typ sz) cuts arcLen
    H₁ H₂ hcuts hg hH
    (fun c hc k hk1 hkj => hHG _ (fun ht => by
      have h1 := hcuts.2.2.2.2 c hc k hk1 hkj
      have h2 := (tyA_thick b η typ sz (c + (k : ZMod n))).2 ht
      rw [h1] at h2
      simp [LT.thick] at h2))
  refine le_trans h0 ?_
  have hl' : (11 : ℝ) ≤ l := by exact_mod_cast hl
  have hgle : ((gPar (w + S + η) S η : ℕ) : ℝ) ≤ ((w + S + η : ℕ) : ℝ) + 1 := by
    have : gPar (w + S + η) S η ≤ w + S + η + 1 := by rw [gPar_A]; omega
    exact_mod_cast this
  have hellR : ((ellMax cuts arcLen : ℕ) : ℝ) ≤ 3 * ((j : ℝ) + 1) := by
    have : ellMax cuts arcLen ≤ 3 * (j + 1) := by omega
    exact_mod_cast this
  have hprod : ((gPar (w + S + η) S η : ℕ) : ℝ) * ((ellMax cuts arcLen : ℕ) : ℝ) ≤
      3 * ((((w + S + η : ℕ) : ℝ) + 1) * ((j : ℝ) + 1)) := by
    calc ((gPar (w + S + η) S η : ℕ) : ℝ) * ((ellMax cuts arcLen : ℕ) : ℝ)
        ≤ (((w + S + η : ℕ) : ℝ) + 1) * (3 * ((j : ℝ) + 1)) :=
          mul_le_mul hgle hellR (by positivity) (by positivity)
      _ = 3 * ((((w + S + η : ℕ) : ℝ) + 1) * ((j : ℝ) + 1)) := by ring
  have hone : (1 : ℝ) ≤ (((w + S + η : ℕ) : ℝ) + 1) * ((j : ℝ) + 1) := by
    have h1 : (0 : ℝ) ≤ ((w + S + η : ℕ) : ℝ) := by positivity
    have h2 : (0 : ℝ) ≤ (j : ℝ) := by positivity
    nlinarith
  have hX1 : (1 : ℝ) ≤ ((l : ℝ) - 1) ^ (j + 1) := one_le_pow₀ (by linarith)
  have hAdef : hA b w S η sz = max (hCor b w S η sz) 1 := rfl
  rw [hAdef]
  generalize hCor b w S η sz = hc
  generalize ((l : ℝ) - 1) ^ (j + 1) = X at hX1 ⊢
  have hlog : Real.logb l ((max hc 1 : ℕ) : ℝ) = Real.logb l (hc : ℝ) := by
    rcases Nat.eq_zero_or_pos hc with h | h
    · rw [h]; simp
    · rw [max_eq_left h]
  have hlog0 : 0 ≤ Real.logb l (hc : ℝ) := by
    rcases Nat.eq_zero_or_pos hc with h | h
    · rw [h]; simp
    · apply Real.logb_nonneg (by linarith)
      exact_mod_cast h
  have hAle : ((max hc 1 : ℕ) : ℝ) ≤ (hc : ℝ) + 1 := by
    have : max hc 1 ≤ hc + 1 := by omega
    exact_mod_cast this
  have hdiv : ((max hc 1 : ℕ) : ℝ) / X ≤ (hc : ℝ) / X + 1 := by
    calc ((max hc 1 : ℕ) : ℝ) / X ≤ ((hc : ℝ) + 1) / X :=
          div_le_div_of_nonneg_right hAle (by linarith)
      _ = (hc : ℝ) / X + 1 / X := add_div _ _ _
      _ ≤ (hc : ℝ) / X + 1 := by
          have : 1 / X ≤ 1 := by rw [div_le_one (by linarith)]; exact hX1
          linarith
  have hq : 0 ≤ (hc : ℝ) / X := div_nonneg (by positivity) (by linarith)
  rw [hlog]
  have hsum : ((max hc 1 : ℕ) : ℝ) / X +
      ((gPar (w + S + η) S η : ℕ) : ℝ) * ((ellMax cuts arcLen : ℕ) : ℝ) + Real.logb l (hc : ℝ) ≤
      4 * ((hc : ℝ) / X + (((w + S + η : ℕ) : ℝ) + 1) * ((j : ℝ) + 1) + Real.logb l (hc : ℝ)) := by
    linarith
  calc C₁ * (((max hc 1 : ℕ) : ℝ) / X +
        ((gPar (w + S + η) S η : ℕ) : ℝ) * ((ellMax cuts arcLen : ℕ) : ℝ) + Real.logb l (hc : ℝ))
      ≤ C₁ * (4 * ((hc : ℝ) / X + (((w + S + η : ℕ) : ℝ) + 1) * ((j : ℝ) + 1) +
          Real.logb l (hc : ℝ))) := mul_le_mul_of_nonneg_left hsum hC₁
    _ = 4 * C₁ * ((hc : ℝ) / X + (((w + S + η : ℕ) : ℝ) + 1) * ((j : ℝ) + 1) +
          Real.logb l (hc : ℝ)) := by ring

section Apply

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]

theorem JumpsAtE.mono {T : LocLat G Qp LL O} {n : ℕ} {emb : ZMod n → (K₀ →ₐ[Qp] LL)} {i : ZMod n}
    {A A' : Set ℤ} (h : JumpsAtE PD T emb i A) (hA : A ⊆ A') : JumpsAtE PD T emb i A' :=
  fun τ hτ a ha => hA (h τ hτ a ha)

variable [Fintype (K →ₐ[Qp] LL)]

theorem liftA_of_thmE (C : ℝ) (hcfg : AprimeConfig C) (C₁ : ℝ) (hC₁ : 0 ≤ C₁)
    (hE : ThmEBound C₁) :
    ∀ (n : ℕ) [NeZero n] (emb : ZMod n → (K₀ →ₐ[Qp] LL)) (v : AddValuation LL (WithTop ℚ)),
    ThmELiftAt PD (O := O) n emb v → Letters PD LL v emb → 11 ≤ PD.p →
    ∀ (T₁ T₂ : LocLat G Qp LL O) (F : LatHom T₁.L T₂.L),
      GoodCoeffs (K := K) (Qp := Qp) (LL := LL) (O := O) (V := T₁.V) →
      CrysLat PD T₁ → CrysLat PD T₂ → F.Onto →
      (∀ (i : ZMod n) (A : Set ℤ), JumpsAtE PD T₁ emb i A → JumpsAtE PD T₂ emb i A) →
      ∀ (b w S η j : ℕ) (typ : ZMod n → Bool) (sz : ZMod n → ℕ),
        1 ≤ j → j + 1 ≤ n →
        (∀ i, JumpsAtE PD T₁ emb i (if typ i then (LT.up (sz i)).win 0 S η
          else (LT.down (sz i)).win 0 S η)) →
        (∀ i, Thick b η sz i ∨ sz i ≤ w) →
        C * ((j : ℝ) + 1) * (((w + S + η : ℕ) : ℝ) + 1) ≤ b →
        Clusters j (Thick b η sz) →
        ∃ e : ℕ, F.LiftF PD e ∧ (e : ℝ) ≤ 4 * C₁ *
          ((hCor b w S η sz : ℝ) / ((PD.p : ℝ) - 1) ^ (j + 1) +
            (((w + S + η : ℕ) : ℝ) + 1) * ((j : ℝ) + 1) + Real.logb PD.p (hCor b w S η sz : ℝ)) := by
  intro n _ emb v hLift hLet hp T₁ T₂ F hGood hT₁ hT₂ hOn hsub b w S η j typ sz hj hn hwin
    hthick hCb hclus
  obtain ⟨cuts, arcLen, hg, hsz, hcuts, hle2, hell, hword⟩ :=
    hcfg PD.p hp n j b w S η typ sz hj hn hthick hCb hclus
  have hGh : w + S + η ≤ hA b w S η sz :=
    le_trans (le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) (le_max_left _ _)) hg
  have hkind : KindJumps PD T₁ emb (w + S + η) S η (tyA b η typ sz) := fun i =>
    (hwin i).mono PD (winA_subset b w S η typ sz i (hthick i))
  have hbd₁ : ∀ i, JumpsAtE PD T₁ emb i
      (Set.Icc (-(bdA b w S η sz i : ℤ)) (bdA b w S η sz i)) := fun i =>
    (hkind i).mono PD (tyA_win_subset b w S η typ sz i)
  have hall : ∀ τ : K →ₐ[Qp] LL, JumpsInV PD T₁.ρ τ
      (Set.Icc (-(hA b w S η sz : ℤ)) (hA b w S η sz)) := by
    intro τ a ha
    obtain ⟨i, hi⟩ := hLet.2.2.2.1.2 (τ.comp (IsScalarTower.toAlgHom Qp K₀ K))
    have h1 := hbd₁ i τ hi.symm a ha
    have h2 : bdA b w S η sz i ≤ hA b w S η sz := bdA_le hGh i
    rw [Set.mem_Icc] at h1 ⊢
    omega
  have hH : ∀ i, (bdA b w S η sz + bdA b w S η sz) i ≤ 2 * hA b w S η sz ∧
      (bdA b w S η sz + bdA b w S η sz) i ≤ 2 * hA b w S η sz := by
    intro i
    have h2 : bdA b w S η sz i ≤ hA b w S η sz := bdA_le hGh i
    simp only [Pi.add_apply]
    omega
  have hHG : ∀ i, ¬ Thick b η sz i → (bdA b w S η sz + bdA b w S η sz) i ≤ 2 * (w + S + η) ∧
      (bdA b w S η sz + bdA b w S η sz) i ≤ 2 * (w + S + η) := by
    intro i ht
    simp only [Pi.add_apply, bdA_thin ht]
    omega
  refine ⟨_, hLift hLet (by omega) T₁ T₂ F hGood hT₁ hT₂ hOn j (w + S + η) S η (hA b w S η sz)
    (tyA b η typ sz) cuts arcLen (bdA b w S η sz) (bdA b w S η sz) (bdA b w S η sz)
    (bdA b w S η sz) hkind hall hg hsz hcuts hle2 hbd₁ (fun i => hsub i _ (hbd₁ i))
    (hword _ _ hH hHG), ?_⟩
  exact eA_le C₁ hC₁ hE PD.p PD.hp hp n j b w S η typ sz cuts arcLen _ _ hg hcuts hell hH hHG

end Apply

end Formalism.MainNotions.WachCoordinates

namespace Formalism.MainNotions.WachCoordinates

section CorA

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Module

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]

def JumpsSub (O : Type) [CommRing O] [Algebra O LL] {n : ℕ} (emb : ZMod n → (K₀ →ₐ[Qp] LL)) : Prop :=
  ∀ (T₁ T₂ : LocLat G Qp LL O) (F : LatHom T₁.L T₂.L), CrysLat PD T₁ → CrysLat PD T₂ → F.Onto →
    ∀ (i : ZMod n) (A : Set ℤ), JumpsAtE PD T₁ emb i A → JumpsAtE PD T₂ emb i A

variable [Fintype (K →ₐ[Qp] LL)]

theorem corAAt_of (C : ℝ) (hcfg : AprimeConfig C) (C₁ : ℝ) (hC₁ : 0 ≤ C₁) (hE : ThmEBound C₁)
    (n : ℕ) [NeZero n] (emb : ZMod n → (K₀ →ₐ[Qp] LL)) (v : AddValuation LL (WithTop ℚ))
    (hLift : ThmELiftAt PD (O := O) n emb v) (hsub : JumpsSub PD O emb)
    (hgen : Formalism.MainNotions.LocalTheoryWindows.H1fGeneratorBound PD LL O) (hk : ∃ k : ℕ, lenOl PD (O := O) = (k : ℕ∞)) :
    CorAAt PD (O := O) n emb v (max C (4 * C₁)) := by
  intro hLet hp T₁ T₂ F hGood hT₁ hT₂ hOn r b w S η j typ sz hr hj hn hwin hthick hCb hclus
  have hjR : (0 : ℝ) ≤ (j : ℝ) + 1 := by positivity
  have hGR : (0 : ℝ) ≤ ((w + S + η : ℕ) : ℝ) + 1 := by positivity
  have hCb' : C * ((j : ℝ) + 1) * (((w + S + η : ℕ) : ℝ) + 1) ≤ b :=
    le_trans (mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right (le_max_left _ _) hjR) hGR) hCb
  obtain ⟨e, hL, he⟩ := liftA_of_thmE PD C hcfg C₁ hC₁ hE n emb v hLift hLet hp T₁ T₂ F hGood hT₁
    hT₂ hOn (hsub T₁ T₂ F hT₁ hT₂ hOn) b w S η j typ sz hj hn hwin hthick hCb' hclus
  obtain ⟨gens, hspan, hcard⟩ := hgen hLet.1 T₂ hT₂.2.2.2
  obtain ⟨k, hk⟩ := hk
  obtain ⟨mm, k', h1, h2, h3⟩ := Formalism.MainNotions.LocalTheoryWindows.colLeR_of_liftF PD F gens _ e k hk hspan hcard hL
  refine ⟨mm, k', h1, h2, le_trans h3 (mul_le_mul_of_nonneg_right ?_ (Nat.cast_nonneg k'))⟩
  have hpR : (1 : ℝ) < PD.p := by
    have : (11 : ℝ) ≤ PD.p := by exact_mod_cast hp
    linarith
  set X : ℝ := (hCor b w S η sz : ℝ) / ((PD.p : ℝ) - 1) ^ (j + 1) +
    (((w + S + η : ℕ) : ℝ) + 1) * ((j : ℝ) + 1) + Real.logb PD.p (hCor b w S η sz : ℝ) with hX
  have hlog : 0 ≤ Real.logb PD.p (hCor b w S η sz : ℝ) := by
    rcases Nat.eq_zero_or_pos (hCor b w S η sz) with h0 | h0
    · rw [h0]; simp
    · exact Real.logb_nonneg hpR (by exact_mod_cast h0)
  have hX0 : 0 ≤ X := by
    have : 0 ≤ (hCor b w S η sz : ℝ) / ((PD.p : ℝ) - 1) ^ (j + 1) :=
      div_nonneg (Nat.cast_nonneg _) (pow_nonneg (by linarith) _)
    positivity
  rw [← hLet.2.2.1, hr]
  push_cast
  have hnr : (0 : ℝ) ≤ ((n : ℝ) + 1) * r := by positivity
  calc ((n : ℝ) + 1) * r * e ≤ ((n : ℝ) + 1) * r * (4 * C₁ * X) :=
        mul_le_mul_of_nonneg_left he hnr
    _ = 4 * C₁ * (((n : ℝ) + 1) * r * X) := by ring
    _ ≤ max C (4 * C₁) * (((n : ℝ) + 1) * r * X) :=
        mul_le_mul_of_nonneg_right (le_max_right _ _) (mul_nonneg hnr hX0)
    _ = max C (4 * C₁) * ((n : ℝ) + 1) * r * X := by ring

end CorA

section RecordA

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc

def JumpsSubL (LT : LocTheory) : Prop :=
  ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (n : ℕ) [NeZero n]
    (emb : ZMod n → (↥(K0 K) →ₐ[ℚ_[l]] ↥LL.1)), JumpsSub ((LT l).PD K) ↥(OL LL) emb

theorem corollary_of_Theorem_E : ∃ C : ℝ, 1 ≤ C ∧ ∀ (D : D7) (C₁ : ℝ), 0 ≤ C₁ → Conclusion1 D C₁ →
    Formalism.MainNotions.LocalTheoryWindows.H1fGeneratorBoundAll D.loc → JumpsSubL D.loc → Conclusion2 D (max C (4 * C₁)) := by
  obtain ⟨C, hC, hcfg⟩ := aprimeConfig_holds
  refine ⟨C, hC, fun D C₁ hC₁ h1 hgen hsub l _ K LL n _ emb => ?_⟩
  haveI : FiniteDimensional ℚ_[l] ↥K.1 := K.2
  letI : Fintype (↥K.1 →ₐ[ℚ_[l]] ↥LL.1) := Fintype.ofFinite _
  exact corAAt_of _ C hcfg C₁ hC₁ h1.2 n emb _ (h1.1 l K LL n emb) (hsub l K LL n emb)
    (hgen l K LL) (Formalism.MainNotions.LocalTheoryWindows.lenOl_finite (D.loc l) K LL)

end RecordA

end Formalism.MainNotions.WachCoordinates
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.BoundedNumeratorPowerSummability =====
