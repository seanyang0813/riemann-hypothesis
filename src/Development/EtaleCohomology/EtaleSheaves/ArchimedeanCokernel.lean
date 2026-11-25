module

public import Development.EtaleCohomology.EtaleSheaves.StalkCut
public import Mathlib.CategoryTheory.Limits.Shapes.Pullback.IsPullback.Defs
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Development.EtaleCohomology.EtaleSheaves.LocalDescent.DescLocOf
public import Development.EtaleCohomology.EtaleSheaves.FiltrationLevelInjectivity
public import Development.EtaleCohomology.EtaleSheaves.KernelLocalization.RangeOfBd
import Development.EtaleCohomology.EtaleSheaves.LocalDescent
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.TruncCokPf, Development.EtaleCohomology.EtaleSheaves.CechLevelsGeneration, Development.EtaleCohomology.EtaleSheaves.CechLevelsGeneration.CechLevelIso, Development.EtaleCohomology.EtaleSheaves.CechLevelIsomorphism.BaseChangeLimit, Development.EtaleCohomology.EtaleSheaves.CechLevelIsomorphism, Development.EtaleCohomology.EtaleSheaves.ArchimedeanCokernel

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.TruncCokPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.TruncCokPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.StalkCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.EtaleCohomology.EtaleSheaves.LocalDescent\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry GlobalTheory.EtC LateralTheory.E.t_E3Cut LateralTheory.E.StalkCut LateralTheory.E.DescLocPf Opposite

namespace LateralTheory.E.TruncCokPf

def sq {D E Y' Y'' : CommRingCat.{0}} (e : D ⟶ E) (φ' : D ⟶ Y') (u : Y' ⟶ Y'') (φ'' : E ⟶ Y'') (h : φ' ≫ u = e ≫ φ'') :
    Arrow.mk (yoneda.map (Spec.map u)) ⟶ Arrow.mk (yoneda.map (Spec.map e)) :=
  Arrow.homMk (yoneda.map (Spec.map φ'')) (yoneda.map (Spec.map φ')) (by
    simp only [Arrow.mk_left, Arrow.mk_right, Arrow.mk_hom]
    rw [← Functor.map_comp, ← Functor.map_comp, ← Spec.map_comp, ← Spec.map_comp, h])

def LevelLow (R : Type) [CommRing R] (F : Shv R) (n : ℤ) {D E Y' Y'' : CommRingCat.{0}} (e : D ⟶ E) (φ' : D ⟶ Y')
    (u : Y' ⟶ Y'') (φ'' : E ⟶ Y'') (h : φ' ≫ u = e ≫ φ'') : Prop :=
  ∀ (p : ℕ) (m : ℤ), m < n →
    (∀ k : ℤ, k + 1 = m → Function.Surjective (pull R (disc.map ((Arrow.mapCechNerve (sq e φ' u φ'' h)).app (op (SimplexCategory.mk p)))) F k)) ∧
    Function.Injective (pull R (disc.map ((Arrow.mapCechNerve (sq e φ' u φ'' h)).app (op (SimplexCategory.mk p)))) F m)

def Levels : Prop := Hyp → ∀ (q : ℕ) [NeZero q] (i n : ℤ) {A Y : CommRingCat.{0}} (φ : A ⟶ Y), IsUnit (q : A) →
  ∀ P : ∀ C : CommRingCat.{0}, (A ⟶ C) → Prop, PushClosed P → EtClosed P →
  (∀ m < n, ∀ (C : CommRingCat.{0}) (c : A ⟶ C), P C c → BCn q i m φ c) →
  ∀ (D : CommRingCat.{0}) (d : A ⟶ D), P D d →
  ∀ (Y' : CommRingCat.{0}) (w : Y ⟶ Y') (φ' : D ⟶ Y'), IsPushout φ d w φ' →
  ∀ (E : CommRingCat.{0}) (e : D ⟶ E) (Y'' : CommRingCat.{0}) (u : Y' ⟶ Y'') (φ'' : E ⟶ Y'')
    (hpo : IsPushout φ' e u φ''), Et e → SpS e → P E (d ≫ e) →
    LevelLow (ZMod q) (tw q i) n e φ' u φ'' hpo.w

end LateralTheory.E.TruncCokPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.TruncCokPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.CechLevelsGeneration =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.CechLevelsGeneration", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.TruncCokPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry GlobalTheory.EtC LateralTheory.E.t_E3Cut LateralTheory.E.StalkCut LateralTheory.E.TruncCokPf Opposite

namespace LateralTheory.E.LevelsPf

def CechLevel : Prop := ∀ (p : ℕ) {D E Y' Y'' : CommRingCat.{0}} (e : D ⟶ E) (φ' : D ⟶ Y') (u : Y' ⟶ Y'') (φ'' : E ⟶ Y'')
    (hpo : IsPushout φ' e u φ''),
    ∃ (Ep Yp : CommRingCat.{0}) (dp : D ⟶ Ep) (wp : Y' ⟶ Yp) (φp : Ep ⟶ Yp), IsPushout φ' dp wp φp ∧
      (∀ {A : CommRingCat.{0}} (d : A ⟶ D) (P : ∀ C : CommRingCat.{0}, (A ⟶ C) → Prop), PushClosed P → P D d →
        P E (d ≫ e) → P Ep (d ≫ dp)) ∧
      Nonempty (Arrow.mk ((Arrow.mapCechNerve (sq e φ' u φ'' hpo.w)).app (op (SimplexCategory.mk p))) ≅
        Arrow.mk (yoneda.map (Spec.map φp)))

theorem pull_iso_bij (R : Type) [CommRing R] {E E' : Spc} (a : E ≅ E') (F : Shv R) (n : ℤ) :
    Function.Bijective (pull R a.hom F n) := by
  have h1 : ∀ x, pull R a.inv F n (pull R a.hom F n x) = x := fun x => by
    rw [← pull_comp, Iso.inv_hom_id, pull_id]
  have h2 : ∀ x, pull R a.hom F n (pull R a.inv F n x) = x := fun x => by
    rw [← pull_comp, Iso.hom_inv_id, pull_id]
  exact ⟨Function.LeftInverse.injective h1, Function.RightInverse.surjective h2⟩

theorem transfer (R : Type) [CommRing R] (F : Shv R) {P Q P' Q' : PSh} (f : P ⟶ Q) (g : P' ⟶ Q')
    (α : Arrow.mk f ≅ Arrow.mk g) (n : ℤ) :
    (Function.Surjective (pull R (disc.map g) F n) → Function.Surjective (pull R (disc.map f) F n)) ∧
    (Function.Injective (pull R (disc.map g) F n) → Function.Injective (pull R (disc.map f) F n)) := by
  let αl : P ≅ P' := Arrow.leftFunc.mapIso α
  let αr : Q ≅ Q' := Arrow.rightFunc.mapIso α
  have hw : f ≫ αr.hom = αl.hom ≫ g := by
    exact (Arrow.w α.hom).symm
  have hf : f = αl.hom ≫ g ≫ αr.inv := by
    rw [← Category.assoc, Iso.eq_comp_inv]; exact hw
  have he : ⇑(pull R (disc.map f) F n) =
      pull R (disc.mapIso αl).hom F n ∘ pull R (disc.map g) F n ∘ pull R (disc.mapIso αr).symm.hom F n := by
    funext x
    rw [hf, Functor.map_comp, Functor.map_comp, pull_comp, pull_comp]; rfl
  have bl := pull_iso_bij R (disc.mapIso αl) F n
  have br := pull_iso_bij R (disc.mapIso αr).symm F n
  refine ⟨fun hs => ?_, fun hi => ?_⟩
  · rw [he]; exact bl.2.comp (hs.comp br.2)
  · rw [he]; exact bl.1.comp (hi.comp br.1)

theorem Levels_of (hC : CechLevel) : LateralTheory.E.TruncCokPf.Levels := by
  intro hH q _ i n A Y φ hq P hpush het hlow D d hD Y' w φ' hpo E e Y'' u φ'' hpo' he hs hE p m hm
  obtain ⟨Ep, Yp, dp, wp, φp, hpp, hP, ⟨α⟩⟩ := hC p e φ' u φ'' hpo'
  have hsq : IsPushout φ (d ≫ dp) (w ≫ wp) φp := hpo.paste_vert hpp
  have hrel : RelZ q i m φp := hlow m hm Ep (d ≫ dp) (hP d P hpush hD hE) Yp (w ≫ wp) φp hsq
  have ht := fun k => transfer (ZMod q) (tw q i) _ _ α k
  refine ⟨fun k hk => (ht k).1 (hrel.1 k hk), (ht m).2 hrel.2⟩

end LateralTheory.E.LevelsPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.CechLevelsGeneration =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.CechLevelsGeneration.CechLevelIso =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.CechLevelsGeneration.CechLevelIso", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.CechLevelsGeneration\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry GlobalTheory.EtC LateralTheory.E.t_E3Cut LateralTheory.E.StalkCut LateralTheory.E.TruncCokPf Opposite

namespace LateralTheory.E.LevelsPf.Tp

def tp {D E : CommRingCat.{0}} (e : D ⟶ E) : ℕ → Σ C : CommRingCat.{0}, (D ⟶ C)
  | 0 => ⟨E, e⟩
  | p + 1 => ⟨pushout (tp e p).2 e, (tp e p).2 ≫ pushout.inl _ _⟩

theorem tp_mem {A D E : CommRingCat.{0}} (d : A ⟶ D) (e : D ⟶ E) (P : ∀ C : CommRingCat.{0}, (A ⟶ C) → Prop)
    (hP : PushClosed P) (hD : P D d) (hE : P E (d ≫ e)) : ∀ p, P (tp e p).1 (d ≫ (tp e p).2)
  | 0 => hE
  | p + 1 => by
    have := hP d (tp e p).2 e (pushout.inl _ _) (pushout.inr _ _) (IsPushout.of_hasPushout _ _) hD (tp_mem d e P hP hD hE p) hE
    simpa [tp] using this

def CechLevelIso : Prop := ∀ (p : ℕ) {D E Y' Y'' : CommRingCat.{0}} (e : D ⟶ E) (φ' : D ⟶ Y') (u : Y' ⟶ Y'') (φ'' : E ⟶ Y'')
    (hpo : IsPushout φ' e u φ''),
    Nonempty (Arrow.mk ((Arrow.mapCechNerve (sq e φ' u φ'' hpo.w)).app (op (SimplexCategory.mk p))) ≅
      Arrow.mk (yoneda.map (Spec.map (pushout.inr φ' (tp e p).2))))

theorem CechLevel_of (h : CechLevelIso) : LateralTheory.E.LevelsPf.CechLevel := by
  intro p D E Y' Y'' e φ' u φ'' hpo
  exact ⟨(tp e p).1, pushout φ' (tp e p).2, (tp e p).2, pushout.inl _ _, pushout.inr _ _, IsPushout.of_hasPushout _ _,
    fun d P hP hD hE => tp_mem d e P hP hD hE p, h p e φ' u φ'' hpo⟩

theorem Levels_of' (h : CechLevelIso) : LateralTheory.E.TruncCokPf.Levels := Levels_of (CechLevel_of h)

end LateralTheory.E.LevelsPf.Tp
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.CechLevelsGeneration.CechLevelIso =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.CechLevelIsomorphism.BaseChangeLimit =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.CechLevelIsomorphism.BaseChangeLimit", "h": "module\n\npublic import Mathlib.CategoryTheory.Limits.Shapes.Pullback.IsPullback.Defs\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits

namespace LateralTheory.E.CechLevelIsoPf.Gen

universe v u
variable {C : Type u} [Category.{v} C]

def stepLimit {S X W W' : C} {f : X ⟶ S} {b : W ⟶ S} {n : ℕ} (π : Fin (n+1) → (W ⟶ X))
    (hπ : ∀ i, π i ≫ f = b) (hc : IsLimit (WidePullbackCone.mk (f := fun _ : Fin (n+1) => f) b π hπ))
    (q : W' ⟶ W) (r : W' ⟶ X) (hpb : IsPullback q r b f)
    (h' : ∀ i, (Fin.lastCases r (fun i => q ≫ π i) i : W' ⟶ X) ≫ f = q ≫ b) :
    IsLimit (WidePullbackCone.mk (f := fun _ : Fin (n+2) => f) (q ≫ b) (Fin.lastCases r (fun i => q ≫ π i)) h') := by
  have L : ∀ t : WidePullbackCone (fun _ : Fin (n+2) => f), ∃ l : t.pt ⟶ W,
      l ≫ b = t.base ∧ ∀ i : Fin (n+1), l ≫ π i = t.π (Fin.castSucc i) := fun t =>
    ⟨WidePullbackCone.IsLimit.lift hc t.base (fun i => t.π (Fin.castSucc i)) (fun i => by simp),
      WidePullbackCone.IsLimit.lift_base hc _ _ _, fun i => WidePullbackCone.IsLimit.lift_π hc _ _ _ i⟩
  choose l hl1 hl2 using L
  have hw : ∀ t : WidePullbackCone (fun _ : Fin (n+2) => f), l t ≫ b = t.π (Fin.last _) ≫ f := fun t => by
    rw [hl1]; simp
  refine WidePullbackCone.IsLimit.mk _ (fun t => hpb.lift (l t) (t.π (Fin.last _)) (hw t)) ?_ ?_ ?_
  · intro t
    have : (hpb.lift (l t) (t.π (Fin.last _)) (hw t) : t.pt ⟶ W') ≫ q ≫ b = t.base := by
      rw [IsPullback.lift_fst_assoc, hl1]
    exact this
  · intro t i
    have : (hpb.lift (l t) (t.π (Fin.last _)) (hw t) : t.pt ⟶ W') ≫ Fin.lastCases r (fun i => q ≫ π i) i = t.π i := by
      induction i using Fin.lastCases with
      | last => rw [Fin.lastCases_last, IsPullback.lift_snd]
      | cast i => rw [Fin.lastCases_castSucc, IsPullback.lift_fst_assoc, hl2]
    exact this
  · intro t m hb hπ'
    have key : ∀ m : t.pt ⟶ W', m ≫ q ≫ b = t.base → (∀ i, m ≫ Fin.lastCases r (fun i => q ≫ π i) i = t.π i) →
        m = hpb.lift (l t) (t.π (Fin.last _)) (hw t) := by
      intro m hb hπ'
      apply hpb.hom_ext
      · rw [IsPullback.lift_fst]
        apply WidePullbackCone.IsLimit.hom_ext hc
        · change (m ≫ q) ≫ b = l t ≫ b
          rw [Category.assoc, hb, hl1]
        · intro i
          change (m ≫ q) ≫ π i = l t ≫ π i
          rw [Category.assoc, hl2, ← hπ' (Fin.castSucc i), Fin.lastCases_castSucc]
      · rw [IsPullback.lift_snd, ← hπ' (Fin.last _), Fin.lastCases_last]
    exact key m hb hπ'

def baseChangeLimit {S S' X X' W W' : C} {f : X ⟶ S} {b : W ⟶ S} {ι : Type*} (π : ι → (W ⟶ X))
    (hπ : ∀ i, π i ≫ f = b) (hc : IsLimit (WidePullbackCone.mk (f := fun _ : ι => f) b π hπ))
    {g : S' ⟶ S} {f' : X' ⟶ S'} {gX : X' ⟶ X} (hX : IsPullback gX f' f g)
    {b' : W' ⟶ S'} {gW : W' ⟶ W} (hW : IsPullback gW b' b g) (π' : ι → (W' ⟶ X'))
    (hπ' : ∀ i, π' i ≫ f' = b') (hgi : ∀ i, π' i ≫ gX = gW ≫ π i) :
    IsLimit (WidePullbackCone.mk (f := fun _ : ι => f') b' π' hπ') := by
  have L : ∀ t : WidePullbackCone (fun _ : ι => f'), ∃ l : t.pt ⟶ W,
      l ≫ b = t.base ≫ g ∧ ∀ i, l ≫ π i = t.π i ≫ gX := fun t =>
    ⟨WidePullbackCone.IsLimit.lift hc (t.base ≫ g) (fun i => t.π i ≫ gX)
      (fun i => by rw [Category.assoc, hX.w, ← Category.assoc, WidePullbackCone.condition]),
      WidePullbackCone.IsLimit.lift_base hc _ _ _, fun i => WidePullbackCone.IsLimit.lift_π hc _ _ _ i⟩
  choose l hl1 hl2 using L
  refine WidePullbackCone.IsLimit.mk _ (fun t => hW.lift (l t) t.base (hl1 t)) ?_ ?_ ?_
  · intro t
    have : (hW.lift (l t) t.base (hl1 t) : t.pt ⟶ W') ≫ b' = t.base := IsPullback.lift_snd _ _ _ _
    exact this
  · intro t i
    have : (hW.lift (l t) t.base (hl1 t) : t.pt ⟶ W') ≫ π' i = t.π i := by
      apply hX.hom_ext
      · rw [Category.assoc, hgi, IsPullback.lift_fst_assoc, hl2]
      · rw [Category.assoc, hπ', IsPullback.lift_snd, WidePullbackCone.condition]
    exact this
  · intro t m hb hπ''
    have key : ∀ m : t.pt ⟶ W', m ≫ b' = t.base → (∀ i, m ≫ π' i = t.π i) → m = hW.lift (l t) t.base (hl1 t) := by
      intro m hb hπ''
      apply hW.hom_ext
      · rw [IsPullback.lift_fst]
        apply WidePullbackCone.IsLimit.hom_ext hc
        · change (m ≫ gW) ≫ b = l t ≫ b
          rw [Category.assoc, hW.w, ← Category.assoc, hb, hl1]
        · intro i
          change (m ≫ gW) ≫ π i = l t ≫ π i
          rw [Category.assoc, ← hgi, ← Category.assoc, hπ'', hl2]
      · rw [IsPullback.lift_snd, hb]
    exact key m hb hπ''

end LateralTheory.E.CechLevelIsoPf.Gen
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.CechLevelIsomorphism.BaseChangeLimit =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.CechLevelIsomorphism =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.CechLevelIsomorphism", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.CechLevelsGeneration.CechLevelIso\npublic import Development.EtaleCohomology.EtaleSheaves.CechLevelIsomorphism.BaseChangeLimit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry LateralTheory.E.TruncCokPf LateralTheory.E.LevelsPf.Tp Opposite LateralTheory.E.CechLevelIsoPf.Gen

namespace LateralTheory.E.CechLevelIsoPf

abbrev y {A B : CommRingCat.{0}} (f : A ⟶ B) := yoneda.map (Spec.map f)

lemma y_comp {A B C : CommRingCat.{0}} (f : A ⟶ B) (g : B ⟶ C) : y (f ≫ g) = y g ≫ y f := by
  simp [y]

lemma ypb {A B C P : CommRingCat.{0}} {f : A ⟶ B} {g : A ⟶ C} {inl : B ⟶ P} {inr : C ⟶ P}
    (h : IsPushout f g inl inr) : IsPullback (y inl) (y inr) (y f) (y g) :=
  (isPullback_SpecMap_of_isPushout f g inl inr h).map yoneda

lemma mk_congr {C : Type*} [Category C] {ι : Type*} {S X W : C} {f : X ⟶ S} {b b' : W ⟶ S}
    {π π' : ι → (W ⟶ X)} (hb : b = b') (hπ : π = π') (h : ∀ i, π i ≫ f = b) (h' : ∀ i, π' i ≫ f = b') :
    WidePullbackCone.mk (f := fun _ : ι => f) b π h = WidePullbackCone.mk (f := fun _ : ι => f) b' π' h' := by
  subst hb; subst hπ; rfl

def lim0 {C : Type*} [Category C] {S X : C} (f : X ⟶ S) :
    IsLimit (WidePullbackCone.mk (f := fun _ : Fin 1 => f) f (fun _ => 𝟙 X) (fun _ => Category.id_comp f)) := by
  refine WidePullbackCone.IsLimit.mk _ (fun t => t.π 0) ?_ ?_ ?_
  · intro t
    have : t.π 0 ≫ f = t.base := WidePullbackCone.condition t 0
    exact this
  · intro t i
    have : t.π 0 ≫ 𝟙 X = t.π i := by rw [Category.comp_id, Subsingleton.elim i 0]
    exact this
  · intro t m _ hπ
    have key : ∀ m : t.pt ⟶ X, m ≫ 𝟙 X = t.π 0 → m = t.π 0 := fun m h => by rwa [Category.comp_id] at h
    exact key m (hπ 0)

def ι {D E : CommRingCat.{0}} (e : D ⟶ E) : (p : ℕ) → Fin (p+1) → (E ⟶ (tp e p).1)
  | 0 => fun _ => 𝟙 E
  | p+1 => Fin.lastCases (pushout.inr (tp e p).2 e) (fun i => ι e p i ≫ pushout.inl (tp e p).2 e)

lemma ι_last {D E : CommRingCat.{0}} (e : D ⟶ E) (p : ℕ) :
    ι e (p+1) (Fin.last _) = pushout.inr (tp e p).2 e := by
  first | (dsimp only [ι]; exact Fin.lastCases_last)

lemma ι_cast {D E : CommRingCat.{0}} (e : D ⟶ E) (p : ℕ) (i : Fin (p+1)) :
    ι e (p+1) (Fin.castSucc i) = ι e p i ≫ pushout.inl (tp e p).2 e := by
  first | (dsimp only [ι]; exact Fin.lastCases_castSucc i)

lemma ι_w {D E : CommRingCat.{0}} (e : D ⟶ E) : ∀ (p : ℕ) (i : Fin (p+1)), e ≫ ι e p i = (tp e p).2
  | 0, i => Category.comp_id e
  | p+1, i => by
    induction i using Fin.lastCases with
    | last => rw [ι_last]; exact pushout.condition.symm
    | cast i =>
      rw [ι_cast]
      show e ≫ ι e p i ≫ pushout.inl _ _ = (tp e p).2 ≫ pushout.inl _ _
      rw [← Category.assoc, ι_w e p i]

lemma hπE {D E : CommRingCat.{0}} (e : D ⟶ E) (p : ℕ) (i : Fin (p+1)) : y (ι e p i) ≫ y e = y (tp e p).2 := by
  rw [← y_comp, ι_w]

def limE {D E : CommRingCat.{0}} (e : D ⟶ E) : ∀ p : ℕ,
    IsLimit (WidePullbackCone.mk (f := fun _ : Fin (p+1) => y e) (y (tp e p).2) (fun i => y (ι e p i)) (hπE e p))
  | 0 => cast (congrArg IsLimit (mk_congr rfl (funext fun i => (show y (𝟙 E) = 𝟙 _ by simp [y]).symm) _ _)) (lim0 (y e))
  | p+1 => by
    have hpb := ypb (IsPushout.of_hasPushout (tp e p).2 e)
    have h' : ∀ i, (Fin.lastCases (y (pushout.inr (tp e p).2 e)) (fun i => y (pushout.inl (tp e p).2 e) ≫ y (ι e p i)) i :
        _ ⟶ _) ≫ y e = y (pushout.inl (tp e p).2 e) ≫ y (tp e p).2 := by
      intro i
      induction i using Fin.lastCases with
      | last => rw [Fin.lastCases_last]; exact hpb.w.symm
      | cast i => rw [Fin.lastCases_castSucc, Category.assoc, hπE]
    have := stepLimit (fun i => y (ι e p i)) (hπE e p) (limE e p) _ _ hpb h'
    refine cast (congrArg IsLimit (mk_congr ?_ ?_ _ _)) this
    · exact (y_comp _ _).symm
    · funext i
      induction i using Fin.lastCases with
      | last => rw [Fin.lastCases_last, ι_last]; rfl
      | cast i => rw [Fin.lastCases_castSucc, ι_cast]; exact (y_comp _ _).symm

section Y
variable {D E Y' Y'' : CommRingCat.{0}} {e : D ⟶ E} {φ' : D ⟶ Y'} {u : Y' ⟶ Y''} {φ'' : E ⟶ Y''}

def κ (hpo : IsPushout φ' e u φ'') (p : ℕ) (i : Fin (p+1)) : Y'' ⟶ pushout φ' (tp e p).2 :=
  hpo.desc (pushout.inl _ _) (ι e p i ≫ pushout.inr _ _) (by rw [← Category.assoc, ι_w]; exact pushout.condition)

lemma hπY (hpo : IsPushout φ' e u φ'') (p : ℕ) (i : Fin (p+1)) :
    y (κ hpo p i) ≫ y u = y (pushout.inl φ' (tp e p).2) := by
  rw [← y_comp, κ, hpo.inl_desc]

lemma hgi (hpo : IsPushout φ' e u φ'') (p : ℕ) (i : Fin (p+1)) :
    y (κ hpo p i) ≫ y φ'' = y (pushout.inr φ' (tp e p).2) ≫ y (ι e p i) := by
  rw [← y_comp, κ, hpo.inr_desc, y_comp]

def limY (hpo : IsPushout φ' e u φ'') (p : ℕ) :
    IsLimit (WidePullbackCone.mk (f := fun _ : Fin (p+1) => y u) (y (pushout.inl φ' (tp e p).2))
      (fun i => y (κ hpo p i)) (hπY hpo p)) :=
  baseChangeLimit (fun i => y (ι e p i)) (hπE e p) (limE e p) (ypb hpo).flip
    (ypb (IsPushout.of_hasPushout φ' (tp e p).2)).flip (fun i => y (κ hpo p i)) (hπY hpo p) (hgi hpo p)

end Y

theorem CechLevelIso_of : LateralTheory.E.LevelsPf.Tp.CechLevelIso := by
  intro p D E Y' Y'' e φ' u φ'' hpo
  let R := (limE e p).conePointUniqueUpToIso (limit.isLimit _)
  let L := (limY hpo p).conePointUniqueUpToIso (limit.isLimit _)
  have hR : ∀ j, R.hom ≫ WidePullback.π (fun _ : Fin (p+1) => y e) j = y (ι e p j) := fun j =>
    (limE e p).conePointUniqueUpToIso_hom_comp (limit.isLimit _) (some j)
  have hRb : R.hom ≫ WidePullback.base (fun _ : Fin (p+1) => y e) = y (tp e p).2 :=
    (limE e p).conePointUniqueUpToIso_hom_comp (limit.isLimit _) none
  have hL : ∀ j, L.hom ≫ WidePullback.π (fun _ : Fin (p+1) => y u) j = y (κ hpo p j) := fun j =>
    (limY hpo p).conePointUniqueUpToIso_hom_comp (limit.isLimit _) (some j)
  have hLb : L.hom ≫ WidePullback.base (fun _ : Fin (p+1) => y u) = y (pushout.inl φ' (tp e p).2) :=
    (limY hpo p).conePointUniqueUpToIso_hom_comp (limit.isLimit _) none
  have hw : L.hom ≫ (Arrow.mapCechNerve (sq e φ' u φ'' hpo.w)).app (op (SimplexCategory.mk p)) =
      y (pushout.inr φ' (tp e p).2) ≫ R.hom := by
    apply WidePullback.hom_ext
    · intro j
      simp only [Arrow.mapCechNerve_app, Category.assoc, WidePullback.lift_π]
      have key : (L.hom ≫ WidePullback.π (fun _ : Fin (p+1) => y u) j) ≫ y φ'' =
          y (pushout.inr φ' (tp e p).2) ≫ R.hom ≫ WidePullback.π (fun _ : Fin (p+1) => y e) j := by
        exact (congrArg (· ≫ y φ'') (hL j)).trans ((hgi hpo p j).trans
          (congrArg (y (pushout.inr φ' (tp e p).2) ≫ ·) (hR j).symm))
      rw [← Category.assoc]
      exact key
    · simp only [Arrow.mapCechNerve_app, Category.assoc, WidePullback.lift_base]
      have key : (L.hom ≫ WidePullback.base (fun _ : Fin (p+1) => y u)) ≫ y φ' =
          y (pushout.inr φ' (tp e p).2) ≫ R.hom ≫ WidePullback.base (fun _ : Fin (p+1) => y e) := by
        exact (congrArg (· ≫ y φ') hLb).trans (((ypb (IsPushout.of_hasPushout φ' (tp e p).2)).w).trans
          (congrArg (y (pushout.inr φ' (tp e p).2) ≫ ·) hRb.symm))
      rw [← Category.assoc]
      exact key
  exact ⟨(Arrow.isoMk (f := Arrow.mk (y (pushout.inr φ' (tp e p).2)))
    (g := Arrow.mk ((Arrow.mapCechNerve (sq e φ' u φ'' hpo.w)).app (op (SimplexCategory.mk p)))) L R hw).symm⟩

end LateralTheory.E.CechLevelIsoPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.CechLevelIsomorphism =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.ArchimedeanCokernel =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.ArchimedeanCokernel", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LocalDescent.DescLocOf\npublic import Development.EtaleCohomology.EtaleSheaves.FiltrationLevelInjectivity\npublic import Development.EtaleCohomology.EtaleSheaves.CechLevelIsomorphism\npublic import Development.EtaleCohomology.EtaleSheaves.KernelLocalization.RangeOfBd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.EtC LateralTheory.E.t_E3Cut LateralTheory.E.StalkCut LateralTheory.E.LeafGhostCut
theorem LateralTheory.E.TruncationCokernelLevelRelations.TruncCok_of (hD : LateralTheory.E.TruncationKernel.RelDesc) : LateralTheory.E.DescLocPf.Fine.TruncCok := by
  intro hH q _ i n A Y φ hq P hpush het hlow D d hPD Y' w φ' hpo E e Y'' u φ'' he hs hE hpo' m hm y ⟨x, hx⟩
  have hinj := hD hH q i n φ hq P @hpush @het hlow D d hPD Y' w φ' hpo E e Y'' u φ'' he hs hE hpo'
  refine LateralTheory.E.KernelLocalization.range_of_bd _ _ _ m n (by omega) y ((injective_iff_map_eq_zero _).1 hinj _ ?_)
  refine (LateralTheory.E.KernelLocalization.rpull_bd ..).trans ?_
  rw [← hx]
  exact LateralTheory.E.KernelLocalization.bd_pull ..
theorem LateralTheory.E.TruncationCokernelLevelRelations.LvlRel_of : LateralTheory.E.FiltrationLevelInjectivity.LvlRel := by
  intro hH q _ i n A Y φ hq P hpush het hlow D d hPD Y' w φ' hpo E e Y'' u φ'' he hs hE hpo' p _ m hm
  have h := LateralTheory.E.LevelsPf.Tp.Levels_of' LateralTheory.E.CechLevelIsoPf.CechLevelIso_of hH q i n φ hq P @hpush @het hlow D d hPD Y' w φ' hpo E e Y'' u φ'' hpo' he hs hE p m hm
  exact ⟨h.2, h.1 (m - 1) (by omega)⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.ArchimedeanCokernel =====
