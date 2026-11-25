module

public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionOfSingularities
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceBasic
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrongResolution.EmbeddedBlowupSequence
public import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.KernelFlatBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransformOffCenter
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictTransformFlatBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrongResolution.DetachedLocus
public import Mathlib.Order.Interval.Set.Monotone
import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupFlatBaseChange
import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupBasic
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceTransitions, Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.ChartFlatBaseChange

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceTransitions =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceTransitions", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionOfSingularities\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceBasic\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatBaseChange\nimport Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupFlatBaseChange\nimport Development.ResolutionOfSingularities.Foundations.Blowup.BlowupBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry CategoryTheory.Limits Opposite

namespace FunctorialResolution.EmbeddedResolution

namespace SequenceOfBlowups

variable {X : Scheme.{u}}

theorem pullbackTransitionMap_self_eq_id (s : SequenceOfBlowups X) {X' : Scheme.{u}} (φ : X' ⟶ X) {i : ℕ} (h : i ≤ i) :
    s.pullbackTransitionMap φ h = 𝟙 (pullback φ (s.projectionToBase i)) := by
  refine pullback.hom_ext ?_ ?_
  · rw [s.pullbackTransitionMap_fst, Category.id_comp]
  · rw [s.pullbackTransitionMap_snd, s.transitionMap_self_eq_id, Category.comp_id, Category.id_comp]

theorem pullbackTransitionMap_trans (s : SequenceOfBlowups X) {X' : Scheme.{u}} (φ : X' ⟶ X) {i j l : ℕ}
    (hij : i ≤ j) (hjl : j ≤ l) :
    s.pullbackTransitionMap φ hjl ≫ s.pullbackTransitionMap φ hij = s.pullbackTransitionMap φ (hij.trans hjl) := by
  refine pullback.hom_ext ?_ ?_
  · rw [Category.assoc, s.pullbackTransitionMap_fst, s.pullbackTransitionMap_fst, s.pullbackTransitionMap_fst]
  · rw [Category.assoc, s.pullbackTransitionMap_snd, ← Category.assoc, s.pullbackTransitionMap_snd, Category.assoc,
      s.transitionMap_trans, s.pullbackTransitionMap_snd]

private theorem isIso_pullbackTransitionMap_add (s : SequenceOfBlowups X) {X' : Scheme.{u}} (φ : X' ⟶ X) (n : ℕ) :
    ∀ (k : ℕ) (h : n ≤ n + k),
      (∀ m, n ≤ m → m < n + k → IsIso (s.pullbackTransitionMap φ (Nat.le_succ m))) →
      IsIso (s.pullbackTransitionMap φ h) := by
  intro k
  induction k with
  | zero =>
      intro h _
      have hid : s.pullbackTransitionMap φ h = 𝟙 (pullback φ (s.projectionToBase n)) := s.pullbackTransitionMap_self_eq_id φ h
      rw [hid]
      infer_instance
  | succ k ih =>
      intro h hstep
      have h1 : IsIso (s.pullbackTransitionMap φ (Nat.le_add_right n k)) :=
        ih (Nat.le_add_right n k) (fun m hm hmk => hstep m hm (by omega))
      have h2 : IsIso (s.pullbackTransitionMap φ (Nat.le_succ (n + k))) :=
        hstep (n + k) (Nat.le_add_right n k) (by omega)
      have key : IsIso (s.pullbackTransitionMap φ (Nat.le_succ (n + k)) ≫
          s.pullbackTransitionMap φ (Nat.le_add_right n k)) := inferInstance
      rw [s.pullbackTransitionMap_trans φ (Nat.le_add_right n k) (Nat.le_succ (n + k))] at key
      exact key

theorem isIso_pullbackTransitionMap (s : SequenceOfBlowups X) {X' : Scheme.{u}} (φ : X' ⟶ X) {n n' : ℕ}
    (h : n ≤ n') (hstep : ∀ m, n ≤ m → m < n' → IsIso (s.pullbackTransitionMap φ (Nat.le_succ m))) :
    IsIso (s.pullbackTransitionMap φ h) := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le h
  exact isIso_pullbackTransitionMap_add s φ n k h hstep

end SequenceOfBlowups

private theorem idealSheafData_eq_top_of_support_empty {X : Scheme.{u}} (I : X.IdealSheafData)
    (h : ∀ x : X, x ∉ I.support) : I = ⊤ := by
  rw [← Scheme.IdealSheafData.support_eq_bot_iff]
  ext x
  simp [h x]

private theorem isPullback_of_iso_pullback {P Z A A' : Scheme.{u}} (f : A' ⟶ A) (h : Z ⟶ A)
    (ε : P ≅ pullback f h) {a : P ⟶ Z} {b : P ⟶ A'}
    (ha : ε.hom ≫ pullback.snd f h = a) (hb : ε.hom ≫ pullback.fst f h = b) :
    IsPullback a b h f := by
  refine (IsPullback.of_iso_pullback ⟨?_⟩ ε hb ha).flip
  rw [← ha, ← hb, Category.assoc, Category.assoc, pullback.condition]

theorem IsPullbackBlowupSequence.exists_reindexing_of_flat {A A' : Scheme.{u}} (f : A' ⟶ A)
    [AlgebraicGeometry.Flat f] {t' : SequenceOfBlowups A'} {t : SequenceOfBlowups A}
    (hpb : IsPullbackBlowupSequence f t' t) :
    ∃ (σ : ℕ → ℕ) (g : ∀ j, j ≤ t'.length → (t'.schemeAt j ⟶ t.schemeAt (σ j))),
      (∀ j, j < t'.length → σ j < t.length) ∧
      (∀ j, j < t'.length → σ j < σ (j + 1)) ∧
      σ t'.length = t.length ∧
      (∀ (j : ℕ) (hj : j ≤ t'.length),
        IsPullback (g j hj) (t'.projectionToBase j) (t.projectionToBase (σ j)) f) ∧
      (∀ (j : ℕ) (hj : j ≤ t'.length) (i : ℕ) (hi : i ≤ σ j),
        (∀ m, i ≤ m → m < σ j → ∀ j', j' < t'.length → σ j' ≠ m) →
        IsPullback (g j hj ≫ t.transitionMap hi) (t'.projectionToBase j) (t.projectionToBase i) f) ∧
      (∀ (j : ℕ) (hj : j < t'.length) (hσ : σ j + 1 ≤ σ (j + 1)),
        IsPullback (g (j + 1) (Nat.succ_le_of_lt hj) ≫ t.transitionMap hσ) (t'.transitionMapSucc j)
          (t.transitionMapSucc (σ j)) (g j (Nat.le_of_lt hj))) ∧
      (∀ (j : ℕ) (hj : j < t'.length),
        t'.center j = (t.center (σ j)).comap (g j (Nat.le_of_lt hj))) ∧
      (∀ i, i < t.length → (∀ j, j < t'.length → σ j ≠ i) →
        ∀ (P : Scheme.{u}) (q : P ⟶ t.schemeAt i) (p : P ⟶ A'),
          IsPullback q p (t.projectionToBase i) f → (t.center i).comap q = ⊤) := by
  obtain ⟨r, e, hrlt, hrmono, hrlen, hsupp, hfst, hblow, hcen⟩ := hpb
  have hmono : ∀ i j : ℕ, j ≤ t'.length → i ≤ j → r i ≤ r j := by
    intro i j hj hij
    rcases eq_or_lt_of_le hij with rfl | hlt
    · exact le_rfl
    · exact (hrmono i j hj hlt).le
  have hrle : ∀ j : ℕ, j ≤ t'.length → r j ≤ t.length := by
    intro j hj
    rcases eq_or_lt_of_le hj with rfl | hlt
    · exact le_of_eq hrlen
    · exact (hrlt j hlt).le
  have htop : ∀ m : ℕ, m < t.length → (∀ j', j' < t'.length → r j' ≠ m) →
      (t.center m).comap (pullback.snd f (t.projectionToBase m)) = ⊤ := by
    intro m hm hskip
    refine idealSheafData_eq_top_of_support_empty _ ?_
    intro x hx
    obtain ⟨j', hj', hrj'⟩ := (hsupp m hm).mp ⟨x, hx⟩
    exact hskip j' hj' hrj'
  have hiso : ∀ m : ℕ, m < t.length → (∀ j', j' < t'.length → r j' ≠ m) →
      IsIso (t.pullbackTransitionMap f (Nat.le_succ m)) := by
    intro m hm hskip
    have hsq : IsPullback (pullback.snd f (t.projectionToBase (m + 1)))
        (t.pullbackTransitionMap f (Nat.le_succ m)) (t.transitionMapSucc m)
        (pullback.snd f (t.projectionToBase m)) := by
      have hbase : IsPullback (pullback.snd f (t.projectionToBase m))
          (pullback.fst f (t.projectionToBase m)) (t.projectionToBase m) f :=
        (IsPullback.of_hasPullback f (t.projectionToBase m)).flip
      have hsnd : pullback.snd f (t.projectionToBase (m + 1)) ≫ t.transitionMapSucc m =
          t.pullbackTransitionMap f (Nat.le_succ m) ≫ pullback.snd f (t.projectionToBase m) := by
        rw [t.pullbackTransitionMap_snd, t.blowupMorphism_eq_transitionMap]
      have hsquare : IsPullback (pullback.snd f (t.projectionToBase (m + 1)))
          (t.pullbackTransitionMap f (Nat.le_succ m) ≫ pullback.fst f (t.projectionToBase m))
          (t.transitionMapSucc m ≫ t.projectionToBase m) f := by
        rw [t.pullbackTransitionMap_fst, t.blowupMorphism_eq_transitionMap,
          t.transitionMap_comp_projectionToBase]
        exact (IsPullback.of_hasPullback f (t.projectionToBase (m + 1))).flip
      exact hsquare.of_bot hsnd hbase
    have hb := (t.isBlowupAlongIdealSheaf_blowupMorphism m hm).of_isPullback_of_flat
      (pullback.snd f (t.projectionToBase m)) hsq
    rw [htop m hm hskip] at hb
    exact hb.isIso_of_top
  have hD : ∀ (j : ℕ) (hj : j ≤ t'.length),
      IsPullback ((e j hj).hom ≫ pullback.snd f (t.projectionToBase (r j))) (t'.projectionToBase j)
        (t.projectionToBase (r j)) f := fun j hj =>
    isPullback_of_iso_pullback f (t.projectionToBase (r j)) (e j hj) rfl (hfst j hj)
  have hE : ∀ (j : ℕ) (hj : j ≤ t'.length) (i : ℕ) (hi : i ≤ r j),
      (∀ m, i ≤ m → m < r j → ∀ j', j' < t'.length → r j' ≠ m) →
      IsPullback (((e j hj).hom ≫ pullback.snd f (t.projectionToBase (r j))) ≫ t.transitionMap hi)
        (t'.projectionToBase j) (t.projectionToBase i) f := by
    intro j hj i hi hskip
    have hiso' : IsIso (t.pullbackTransitionMap f hi) := by
      refine SequenceOfBlowups.isIso_pullbackTransitionMap t f hi ?_
      intro m him hmrj
      exact hiso m (lt_of_lt_of_le hmrj (hrle j hj)) (fun j' hj' => hskip m him hmrj j' hj')
    refine isPullback_of_iso_pullback f (t.projectionToBase i) ((e j hj) ≪≫ asIso (t.pullbackTransitionMap f hi)) ?_ ?_
    · show ((e j hj).hom ≫ t.pullbackTransitionMap f hi) ≫ pullback.snd f (t.projectionToBase i) = _
      rw [Category.assoc, t.pullbackTransitionMap_snd, ← Category.assoc]
    · show ((e j hj).hom ≫ t.pullbackTransitionMap f hi) ≫ pullback.fst f (t.projectionToBase i) = _
      rw [Category.assoc, t.pullbackTransitionMap_fst]
      exact hfst j hj
  have hF : ∀ (j : ℕ) (hj : j < t'.length) (hsig : r j + 1 ≤ r (j + 1)),
      IsPullback
        (((e (j + 1) (Nat.succ_le_of_lt hj)).hom ≫ pullback.snd f (t.projectionToBase (r (j + 1))))
          ≫ t.transitionMap hsig)
        (t'.transitionMapSucc j) (t.transitionMapSucc (r j))
        ((e j (Nat.le_of_lt hj)).hom ≫ pullback.snd f (t.projectionToBase (r j))) := by
    intro j hj hsig
    have hskip : ∀ m, r j + 1 ≤ m → m < r (j + 1) → ∀ j', j' < t'.length → r j' ≠ m := by
      intro m hm1 hm2 j' hj' hrj'
      rcases Nat.lt_or_ge j j' with hlt | hle
      · have h1 := hmono (j + 1) j' (le_of_lt hj') (Nat.succ_le_of_lt hlt)
        omega
      · have h1 := hmono j' j (le_of_lt hj) hle
        omega
    have s0 := hE (j + 1) (Nat.succ_le_of_lt hj) (r j + 1) hsig hskip
    rw [t'.projectionToBase_succ j, t.projectionToBase_succ (r j)] at s0
    have hdown : t.transitionMap hsig ≫ t.transitionMapSucc (r j) = t.transitionMap ((Nat.le_succ (r j)).trans hsig) :=
      t.transitionMap_trans (Nat.le_succ (r j)) hsig
    have hp : (((e (j + 1) (Nat.succ_le_of_lt hj)).hom ≫
          pullback.snd f (t.projectionToBase (r (j + 1)))) ≫ t.transitionMap hsig) ≫ t.transitionMapSucc (r j)
        = t'.transitionMapSucc j ≫ ((e j (Nat.le_of_lt hj)).hom ≫
          pullback.snd f (t.projectionToBase (r j))) := by
      simp only [Category.assoc]
      rw [hdown, ← Category.assoc (t'.transitionMapSucc j),
        hblow j hj ((Nat.le_succ (r j)).trans hsig), Category.assoc, t.pullbackTransitionMap_snd]
    exact IsPullback.of_bot s0 hp (hD j (Nat.le_of_lt hj))
  have hH : ∀ i, i < t.length → (∀ j, j < t'.length → r j ≠ i) →
      ∀ (P : Scheme.{u}) (q : P ⟶ t.schemeAt i) (p : P ⟶ A'),
        IsPullback q p (t.projectionToBase i) f → (t.center i).comap q = ⊤ := by
    intro i hi hskip P q p hsq
    have hw : p ≫ f = q ≫ t.projectionToBase i := hsq.w.symm
    let u : P ⟶ pullback f (t.projectionToBase i) := pullback.lift p q hw
    have hu2 : u ≫ pullback.snd f (t.projectionToBase i) = q := pullback.lift_snd _ _ _
    have hcomp : (t.center i).comap q
        = ((t.center i).comap (pullback.snd f (t.projectionToBase i))).comap u := by
      rw [← hu2]
      simp [Scheme.IdealSheafData.comap_comp]
    rw [hcomp, htop i hi hskip]
    exact Scheme.IdealSheafData.comap_top u
  exact ⟨r, fun j hj => (e j hj).hom ≫ pullback.snd f (t.projectionToBase (r j)),
    hrlt, fun j hj => hrmono j (j + 1) hj (Nat.lt_succ_self j), hrlen, hD, hE, hF, hcen, hH⟩

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceTransitions =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.ChartFlatBaseChange =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.ChartFlatBaseChange", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrongResolution.EmbeddedBlowupSequence\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.KernelFlatBaseChange\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceBasic\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransformOffCenter\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceTransitions\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictTransformFlatBaseChange\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrongResolution.DetachedLocus\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Mathlib.Order.Interval.Set.Monotone\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry TopologicalSpace Opposite

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

variable {k : Type u} [Field k] [CharZero k] {Y : Scheme.{u}} [AlgebraicGeometry.IsAffine Y]
  {pY : Y ⟶ Spec (CommRingCat.of k)} [AlgebraicGeometry.LocallyOfFiniteType pY]
  {k' : Type u} [Field k'] [CharZero k'] {Y' : Scheme.{u}} [AlgebraicGeometry.IsAffine Y']
  {pY' : Y' ⟶ Spec (CommRingCat.of k')} [AlgebraicGeometry.LocallyOfFiniteType pY']

structure ChartFlatBaseChange (S : EmbeddedBlowupSequence k Y pY) (S' : EmbeddedBlowupSequence k' Y' pY') where
  ambientMap : S'.ambient ⟶ S.ambient
  flat_ambientMap : AlgebraicGeometry.Flat ambientMap
  baseMap : Y' ⟶ Y
  isPullback_emb : IsPullback baseMap S'.emb S.emb ambientMap
  reindex : ℕ → ℕ
  levelMap : ∀ j : ℕ, j ≤ S'.length → (S'.schemeAt j ⟶ S.schemeAt (reindex j))
  reindex_lt : ∀ j : ℕ, j < S'.length → reindex j < S.length
  reindex_lt_succ : ∀ j : ℕ, j < S'.length → reindex j < reindex (j + 1)
  reindex_len : reindex S'.length = S.length
  isPullback_level : ∀ (j : ℕ) (hj : j ≤ S'.length),
    IsPullback (levelMap j hj) (S'.ambientSeq.projectionToBase j)
      (S.ambientSeq.projectionToBase (reindex j)) ambientMap
  isPullback_down : ∀ (j : ℕ) (hj : j ≤ S'.length) (i : ℕ) (hi : i ≤ reindex j),
    (∀ m, i ≤ m → m < reindex j → ∀ j', j' < S'.length → reindex j' ≠ m) →
    IsPullback (levelMap j hj ≫ S.ambientSeq.transitionMap hi) (S'.ambientSeq.projectionToBase j)
      (S.ambientSeq.projectionToBase i) ambientMap
  isPullback_step : ∀ (j : ℕ) (hj : j < S'.length) (hσ : reindex j + 1 ≤ reindex (j + 1)),
    IsPullback (levelMap (j + 1) (Nat.succ_le_of_lt hj) ≫ S.ambientSeq.transitionMap hσ)
      (S'.blowdown j) (S.blowdown (reindex j)) (levelMap j (Nat.le_of_lt hj))
  center_eq : ∀ (j : ℕ) (hj : j < S'.length),
    S'.ambientCenter j = (S.ambientCenter (reindex j)).comap (levelMap j (Nat.le_of_lt hj))
  comap_center_skipped : ∀ i, i < S.length → (∀ j, j < S'.length → reindex j ≠ i) →
    ∀ (P : Scheme.{u}) (q : P ⟶ S.schemeAt i) (p : P ⟶ S'.ambient),
      IsPullback q p (S.ambientSeq.projectionToBase i) ambientMap → (S.ambientCenter i).comap q = ⊤

namespace ChartFlatBaseChange

variable {S : EmbeddedBlowupSequence k Y pY} {S' : EmbeddedBlowupSequence k' Y' pY'}

instance instFlatAmbientMap (F : ChartFlatBaseChange S S') :
    AlgebraicGeometry.Flat F.ambientMap := F.flat_ambientMap

private theorem apply_lt_apply_of_forall_lt_succ
    {σ : ℕ → ℕ} {N : ℕ} (h : ∀ j, j < N → σ j < σ (j + 1)) :
    ∀ j, j ≤ N → ∀ i, i < j → σ i < σ j := by
  intro j hj i hij
  exact strictMonoOn_Iic_of_lt_succ h (Set.mem_Iic.mpr (le_trans (le_of_lt hij) hj))
    (Set.mem_Iic.mpr hj) hij

theorem reindex_lt_reindex_of_lt (F : ChartFlatBaseChange S S') {i j : ℕ} (hij : i < j) (hj : j ≤ S'.length) :
    F.reindex i < F.reindex j :=
  apply_lt_apply_of_forall_lt_succ (σ := F.reindex) (N := S'.length)
    F.reindex_lt_succ j hj i hij

theorem reindex_le_length (F : ChartFlatBaseChange S S') {j : ℕ} (hj : j ≤ S'.length) :
    F.reindex j ≤ S.length := by
  rcases eq_or_lt_of_le hj with h | h
  · subst h
    exact le_of_eq F.reindex_len
  · exact le_of_lt (F.reindex_lt j h)

theorem flat_levelMap (F : ChartFlatBaseChange S S') (j : ℕ) (hj : j ≤ S'.length) :
    AlgebraicGeometry.Flat (F.levelMap j hj) := by
  have hst : MorphismProperty.IsStableUnderBaseChange
      (@AlgebraicGeometry.Flat : MorphismProperty Scheme.{u}) := inferInstance
  exact hst.of_isPullback (F.isPullback_level j hj).flip F.flat_ambientMap

theorem reindex_ne_of_lt_reindex_zero (F : ChartFlatBaseChange S S') (m : ℕ)
    (hm : m < F.reindex 0) (j : ℕ) (hj : j < S'.length) : F.reindex j ≠ m := by
  have h : F.reindex 0 ≤ F.reindex j := by
    rcases Nat.eq_zero_or_pos j with h0 | h0
    · subst h0
      exact le_rfl
    · exact le_of_lt (F.reindex_lt_reindex_of_lt h0 (le_of_lt hj))
  omega

theorem reindex_ne_of_reindex_lt_of_lt_reindex_succ (F : ChartFlatBaseChange S S') (j : ℕ) (hj : j < S'.length) (m : ℕ)
    (h1 : F.reindex j < m) (h2 : m < F.reindex (j + 1)) (j' : ℕ) (hj' : j' < S'.length) :
    F.reindex j' ≠ m := by
  intro hEq
  rcases Nat.lt_or_ge j' (j + 1) with hlt | hge
  · have hle : F.reindex j' ≤ F.reindex j := by
      rcases Nat.lt_or_ge j' j with h | h
      · exact le_of_lt (F.reindex_lt_reindex_of_lt h (le_of_lt hj))
      · have hjj : j' = j := le_antisymm (Nat.lt_succ_iff.mp hlt) h
        subst hjj
        exact le_rfl
    omega
  · have hle : F.reindex (j + 1) ≤ F.reindex j' := by
      rcases Nat.eq_or_lt_of_le hge with h | h
      · exact le_of_eq (congrArg F.reindex h)
      · exact le_of_lt (F.reindex_lt_reindex_of_lt h (le_of_lt hj'))
    omega

private theorem strictTransformIdeal_comap_transitionMap_eq (F : ChartFlatBaseChange S S') (j : ℕ) (hj : j ≤ S'.length) :
    ∀ (n i : ℕ) (hi : i ≤ F.reindex j), i + n = F.reindex j →
      (∀ m, i ≤ m → m < F.reindex j → ∀ j', j' < S'.length → F.reindex j' ≠ m) →
      (S.strictTransformIdeal i).comap (F.levelMap j hj ≫ S.ambientSeq.transitionMap hi)
        = (S.strictTransformIdeal (F.reindex j)).comap (F.levelMap j hj) := by
  intro n
  induction n with
  | zero =>
      intro i hi hsum _
      have hie : i = F.reindex j := by omega
      subst hie
      rw [S.ambientSeq.transitionMap_self hi, Category.comp_id]
  | succ n ih =>
      intro i hi hsum hskip
      have hi1 : i + 1 ≤ F.reindex j := by omega
      have hlen : F.reindex j ≤ S.length := F.reindex_le_length hj
      have hiS : i + 1 ≤ S.length := le_trans hi1 hlen
      have := S.isNoetherian_schemeAt (i + 1) hiS
      have hIH := ih (i + 1) hi1 (by omega)
        (fun m hm hm2 j' hj' => hskip m (by omega) hm2 j' hj')
      have hdown : S.ambientSeq.transitionMap hi1 ≫ S.blowdown i = S.ambientSeq.transitionMap hi := by
        have h := S.ambientSeq.transitionMap_trans (Nat.le_succ i) hi1
        rw [← S.ambientSeq.blowupMorphism_eq_transitionMap] at h
        exact h
      have htop : (S.ambientCenter i).comap (F.levelMap j hj ≫ S.ambientSeq.transitionMap hi) = ⊤ :=
        F.comap_center_skipped i (by omega) (fun j' hj' => hskip i le_rfl (by omega) j' hj')
          (S'.schemeAt j) (F.levelMap j hj ≫ S.ambientSeq.transitionMap hi)
          (S'.ambientSeq.projectionToBase j) (F.isPullback_down j hj i hi hskip)
      have hg : ((S.ambientCenter i).comap (S.blowdown i)).comap
          (F.levelMap j hj ≫ S.ambientSeq.transitionMap hi1) = ⊤ := by
        rw [← Scheme.IdealSheafData.comap_comp, Category.assoc, hdown]
        exact htop
      have hst := strictTransform_comap_of_comap_center_eq_top (S.blowdown i)
        (S.ambientCenter i) (S.strictTransformIdeal i) (F.levelMap j hj ≫ S.ambientSeq.transitionMap hi1) hg
      rw [← hIH, S.strictTransformIdeal_succ i, hst, ← Scheme.IdealSheafData.comap_comp, Category.assoc,
        hdown]

theorem strictTransformIdeal_eq_comap (F : ChartFlatBaseChange S S') (j : ℕ) (hj : j ≤ S'.length) :
    S'.strictTransformIdeal j = (S.strictTransformIdeal (F.reindex j)).comap (F.levelMap j hj) := by
  revert hj
  induction j with
  | zero =>
      intro hj
      have h0 : (0 : ℕ) ≤ F.reindex 0 := Nat.zero_le _
      have hskip : ∀ m, 0 ≤ m → m < F.reindex 0 → ∀ j', j' < S'.length → F.reindex j' ≠ m :=
        fun m _ hm j' hj' => F.reindex_ne_of_lt_reindex_zero m hm j' hj'
      have hkey := strictTransformIdeal_comap_transitionMap_eq F 0 hj (F.reindex 0) 0 h0 (by omega) hskip
      have hlev : IsPullback (F.levelMap 0 hj ≫ S.ambientSeq.transitionMap h0)
          (S'.ambientSeq.projectionToBase 0) (S.ambientSeq.projectionToBase 0) F.ambientMap :=
        F.isPullback_down 0 hj 0 h0 hskip
      have hcomm : S'.ambientSeq.isoZero.inv ≫ (F.levelMap 0 hj ≫ S.ambientSeq.transitionMap h0)
          = F.ambientMap ≫ S.ambientSeq.isoZero.inv := by
        have h1 := hlev.w
        rw [S.ambientSeq.projectionToBase_zero, S'.ambientSeq.projectionToBase_zero] at h1
        have h2 : (S'.ambientSeq.isoZero.inv ≫ (F.levelMap 0 hj ≫ S.ambientSeq.transitionMap h0)) ≫
            S.ambientSeq.isoZero.hom
            = (F.ambientMap ≫ S.ambientSeq.isoZero.inv) ≫ S.ambientSeq.isoZero.hom := by
          simp only [Category.assoc] at h1 ⊢
          rw [h1]
          simp
        exact (cancel_mono S.ambientSeq.isoZero.hom).mp h2
      have hD : IsPullback F.ambientMap S'.ambientSeq.isoZero.inv S.ambientSeq.isoZero.inv
          (F.levelMap 0 hj ≫ S.ambientSeq.transitionMap h0) :=
        (IsPullback.of_horiz_isIso ⟨hcomm⟩).flip
      have hC : IsPullback F.baseMap (S'.emb ≫ S'.ambientSeq.isoZero.inv)
          (S.emb ≫ S.ambientSeq.isoZero.inv) (F.levelMap 0 hj ≫ S.ambientSeq.transitionMap h0) :=
        F.isPullback_emb.paste_vert hD
      have : AlgebraicGeometry.QuasiCompact (S.emb ≫ S.ambientSeq.isoZero.inv) := inferInstance
      have : AlgebraicGeometry.QuasiCompact (S'.emb ≫ S'.ambientSeq.isoZero.inv) :=
        quasiCompact_of_isPullback hC
      have : AlgebraicGeometry.Flat (F.levelMap 0 hj ≫ S.ambientSeq.transitionMap h0) :=
        MorphismProperty.IsStableUnderBaseChange.of_isPullback
          (P := @AlgebraicGeometry.Flat) hlev.flip inferInstance
      rw [← hkey, S'.strictTransformIdeal_zero, S.strictTransformIdeal_zero]
      exact ker_eq_comap_ker_of_isPullback_of_flat hC
  | succ n ih =>
      intro hj
      have hn : n < S'.length := Nat.lt_of_succ_le hj
      have hnle : n ≤ S'.length := Nat.le_of_lt hn
      have hσ : F.reindex n + 1 ≤ F.reindex (n + 1) := F.reindex_lt_succ n hn
      have hlen : F.reindex (n + 1) ≤ S.length := F.reindex_le_length hj
      have hIH := ih hnle
      have hcenter : S'.ambientCenter n
          = (S.ambientCenter (F.reindex n)).comap (F.levelMap n hnle) := F.center_eq n hn
      have : AlgebraicGeometry.Flat (F.levelMap n hnle) := F.flat_levelMap n hnle
      have := S.isNoetherian_schemeAt (F.reindex n + 1) (le_trans hσ hlen)
      have := S'.isNoetherian_schemeAt (n + 1) hj
      have hst := comap_strictTransform_of_flat_of_isLocallyNoetherian
        (S.blowdown (F.reindex n)) (F.levelMap n hnle) (S'.blowdown n)
        (F.levelMap (n + 1) hj ≫ S.ambientSeq.transitionMap hσ)
        (F.isPullback_step n hn hσ) (S.ambientCenter (F.reindex n))
        (S.strictTransformIdeal (F.reindex n))
        (S.ambientSeq.isBlowupAlongIdealSheaf_blowupMorphism (F.reindex n) (F.reindex_lt n hn))
      have hbet : ∀ m, F.reindex n + 1 ≤ m → m < F.reindex (n + 1) →
          ∀ j', j' < S'.length → F.reindex j' ≠ m :=
        fun m h1 h2 j' hj' => F.reindex_ne_of_reindex_lt_of_lt_reindex_succ n hn m (by omega) h2 j' hj'
      have hkey := strictTransformIdeal_comap_transitionMap_eq F (n + 1) hj
        (F.reindex (n + 1) - (F.reindex n + 1)) (F.reindex n + 1) hσ (by omega) hbet
      rw [← hkey, S.strictTransformIdeal_succ (F.reindex n), hst, ← hIH, ← hcenter]
      exact S'.strictTransformIdeal_succ n

private theorem exists_isPullback_subscheme_of_ker_eq
    {A B : Scheme.{u}} (f : A ⟶ B) (I : B.IdealSheafData) (J : A.IdealSheafData)
    (hJ : J = Scheme.Hom.ker (pullback.fst f I.subschemeι)) :
    ∃ g : J.subscheme ⟶ I.subscheme,
      g ≫ I.subschemeι = J.subschemeι ≫ f ∧
        IsPullback g J.subschemeι I.subschemeι f := by
  subst hJ
  let e : (I.comap f).subscheme ≅ pullback I.subschemeι f :=
    I.comapIso f ≪≫ pullbackSymmetry f I.subschemeι
  have hsnd : e.hom ≫ pullback.snd I.subschemeι f = (I.comap f).subschemeι := by
    rw [Iso.trans_hom, Category.assoc, pullbackSymmetry_hom_comp_snd,
      Scheme.IdealSheafData.comapIso_hom_fst]
  have hcomm : (e.hom ≫ pullback.fst I.subschemeι f) ≫ I.subschemeι =
      (I.comap f).subschemeι ≫ f := by
    rw [Category.assoc, pullback.condition, ← Category.assoc, hsnd]
  exact ⟨e.hom ≫ pullback.fst I.subschemeι f, hcomm,
    IsPullback.of_iso_pullback ⟨hcomm⟩ e rfl hsnd⟩

theorem exists_isPullback_strictTransformι (F : ChartFlatBaseChange S S') (j : ℕ) (hj : j ≤ S'.length) :
    ∃ g : S'.strictTransform j ⟶ S.strictTransform (F.reindex j),
      g ≫ S.strictTransformι (F.reindex j) = S'.strictTransformι j ≫ F.levelMap j hj ∧
        IsPullback g (S'.strictTransformι j) (S.strictTransformι (F.reindex j)) (F.levelMap j hj) := by
  have hJ : S'.strictTransformIdeal j
      = Scheme.Hom.ker (pullback.fst (F.levelMap j hj)
          (S.strictTransformIdeal (F.reindex j)).subschemeι) := F.strictTransformIdeal_eq_comap j hj
  exact exists_isPullback_subscheme_of_ker_eq (F.levelMap j hj)
    (S.strictTransformIdeal (F.reindex j)) (S'.strictTransformIdeal j) hJ

def strictTransformComparison (F : ChartFlatBaseChange S S') (j : ℕ) (hj : j ≤ S'.length) :
    S'.strictTransform j ⟶ S.strictTransform (F.reindex j) :=
  (F.exists_isPullback_strictTransformι j hj).choose

theorem strictTransformComparison_comp_strictTransformι (F : ChartFlatBaseChange S S') (j : ℕ) (hj : j ≤ S'.length) :
    F.strictTransformComparison j hj ≫ S.strictTransformι (F.reindex j) = S'.strictTransformι j ≫ F.levelMap j hj :=
  (F.exists_isPullback_strictTransformι j hj).choose_spec.1

theorem isPullback_strictTransformComparison_strictTransformι (F : ChartFlatBaseChange S S') (j : ℕ) (hj : j ≤ S'.length) :
    IsPullback (F.strictTransformComparison j hj) (S'.strictTransformι j) (S.strictTransformι (F.reindex j))
      (F.levelMap j hj) :=
  (F.exists_isPullback_strictTransformι j hj).choose_spec.2

theorem flat_strictTransformComparison (F : ChartFlatBaseChange S S') (j : ℕ) (hj : j ≤ S'.length) :
    AlgebraicGeometry.Flat (F.strictTransformComparison j hj) := by
  have hst : MorphismProperty.IsStableUnderBaseChange
      (@AlgebraicGeometry.Flat : MorphismProperty Scheme.{u}) := inferInstance
  exact hst.of_isPullback (F.isPullback_strictTransformComparison_strictTransformι j hj).flip (F.flat_levelMap j hj)

end ChartFlatBaseChange

def chartFlatBaseChangeOfIsPullbackSeq (S : EmbeddedBlowupSequence k Y pY) (S' : EmbeddedBlowupSequence k' Y' pY')
    (f : S'.ambient ⟶ S.ambient) [AlgebraicGeometry.Flat f] (b : Y' ⟶ Y)
    (hb : IsPullback b S'.emb S.emb f)
    (hpb : IsPullbackBlowupSequence f S'.ambientSeq S.ambientSeq) :
    ChartFlatBaseChange S S' where
  ambientMap := f
  flat_ambientMap := inferInstance
  baseMap := b
  isPullback_emb := hb
  reindex := (IsPullbackBlowupSequence.exists_reindexing_of_flat f hpb).choose
  levelMap := (IsPullbackBlowupSequence.exists_reindexing_of_flat f hpb).choose_spec.choose
  reindex_lt := (IsPullbackBlowupSequence.exists_reindexing_of_flat f hpb).choose_spec.choose_spec.1
  reindex_lt_succ := (IsPullbackBlowupSequence.exists_reindexing_of_flat f hpb).choose_spec.choose_spec.2.1
  reindex_len := (IsPullbackBlowupSequence.exists_reindexing_of_flat f hpb).choose_spec.choose_spec.2.2.1
  isPullback_level := (IsPullbackBlowupSequence.exists_reindexing_of_flat f hpb).choose_spec.choose_spec.2.2.2.1
  isPullback_down := (IsPullbackBlowupSequence.exists_reindexing_of_flat f hpb).choose_spec.choose_spec.2.2.2.2.1
  isPullback_step :=
    (IsPullbackBlowupSequence.exists_reindexing_of_flat f hpb).choose_spec.choose_spec.2.2.2.2.2.1
  center_eq :=
    (IsPullbackBlowupSequence.exists_reindexing_of_flat f hpb).choose_spec.choose_spec.2.2.2.2.2.2.1
  comap_center_skipped :=
    (IsPullbackBlowupSequence.exists_reindexing_of_flat f hpb).choose_spec.choose_spec.2.2.2.2.2.2.2

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.ChartFlatBaseChange =====
