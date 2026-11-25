module

public import Development.EtaleCohomology.CohomologicalPurity.OffContStepPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafHsContPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafExcDegPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafIndExcPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafOffContPf
public import Development.EtaleCohomology.CohomologicalPurity.FreePMapMk
public import Development.EtaleCohomology.CohomologicalPurity.LeafDeltaPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafExactPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafExcIdentPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafFreeCokInjPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafGoodPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafImgHomPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafImgPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafInjGeoPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafMonoPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafSurjGeoPf
public import Development.EtaleCohomology.CohomologicalPurity.PresSheafify
public import Development.EtaleCohomology.CohomologicalPurity.LeafExcSheafCut
public import Development.EtaleCohomology.CohomologicalPurity.LeafBdCut
public import Development.EtaleCohomology.CohomologicalPurity.LeafExcFormalPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafFreeCokPf
import Mathlib.CategoryTheory.Abelian.FreydMitchell
import Development.EtaleCohomology.CohomologicalPurity.LeafFreeCokPfSurj

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.CohomologicalPurity.EtalePurityContinuityOffClosedOfLocalAndChase, Development.EtaleCohomology.CohomologicalPurity.LeafHsContPfFive, Development.EtaleCohomology.CohomologicalPurity.LeafNbhdExcPf, Development.EtaleCohomology.CohomologicalPurity.OffContBasicPfR, Development.EtaleCohomology.CohomologicalPurity.OffContLocKnxPf, Development.EtaleCohomology.CohomologicalPurity.OffChaseGeoOf, Development.EtaleCohomology.CohomologicalPurity.ResLECompIsoOpenInfPreimageHomNaturality, Development.EtaleCohomology.CohomologicalPurity.FixLeafIndExc, Development.EtaleCohomology.CohomologicalPurity.FinLeafIndExc

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.EtalePurityContinuityOffClosedOfLocalAndChase =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.EtalePurityContinuityOffClosedOfLocalAndChase", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.OffContStepPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity

theorem pairFiveS_surj (bd : LeafBd) (q : ℕ) {J : Type} [SmallCategory J] [IsFiltered J] (F : Jᵒᵖ ⥤ Arrow Spc)
    (P : Arrow Spc) (c : ∀ j, P ⟶ F.obj (op j)) (hc : ∀ j k (f : j ⟶ k), c k ≫ F.map f.op = c j)
    (hm : ∀ j, Mono (F.obj (op j)).hom) (hP : Mono P.hom) (i : ℤ) (hL : ∀ m, ContL q F P c m i)
    (hR : ∀ m, ContR q F P c m i) (m : ℤ) (x : Hs q P (m + 1) i) :
    ∃ j, ∃ y, Hs.pull q (c j) (m + 1) i y = x := by
  obtain ⟨δ, hex, hnat, -⟩ := bd
  obtain ⟨j, y, hy⟩ := (hR (m + 1)).1 (Hs.fgt q P (m + 1) i x)
  have h0 : pull _ (c j).left (tw q i) (m + 1) (pull _ (F.obj (op j)).hom (tw q i) (m + 1) y) = 0 := by
    rw [← GlobalTheory.EtC.pull_comp, Arrow.w (c j), GlobalTheory.EtC.pull_comp, hy]
    exact ((hex q P hP (m + 1) i).1 _).mpr ⟨x, rfl⟩
  obtain ⟨k, f, hk⟩ := (hL (m + 1)).2 j _ h0
  have hk' : pull _ (F.obj (op k)).hom (tw q i) (m + 1) (pull _ (F.map f.op).right (tw q i) (m + 1) y) = 0 := by
    rw [← GlobalTheory.EtC.pull_comp, ← Arrow.w (F.map f.op), GlobalTheory.EtC.pull_comp, hk]
  obtain ⟨s, hs⟩ := ((hex q _ (hm k) (m + 1) i).1 _).mp hk'
  have hv : Hs.fgt q P (m + 1) i (x - Hs.pull q (c k) _ _ s) = 0 := by
    rw [map_sub, Hs.fgt_pull, hs, ← GlobalTheory.EtC.pull_comp, ← Arrow.comp_right, hc, hy, sub_self]
  obtain ⟨u, hu⟩ := ((hex q P hP m i).2.2 _).mp hv
  obtain ⟨l, a, ha⟩ := (hL m).1 u
  rw [← ha, ← hnat q _ _ (c l) hP (hm l)] at hu
  obtain ⟨M, g1, g2, -⟩ := IsFilteredOrEmpty.cocone_objs k l
  refine ⟨M, Hs.pull q (F.map g1.op) _ _ s + Hs.pull q (F.map g2.op) _ _ (δ q _ m i a), ?_⟩
  rw [map_add (f := _), ← _root_.LateralTheory.CohomologicalPurity.Hs.pull_comp', ← _root_.LateralTheory.CohomologicalPurity.Hs.pull_comp', hc, hc, hu, add_sub_cancel]

theorem pairFiveS_inj (bd : LeafBd) (q : ℕ) {J : Type} [SmallCategory J] [IsFiltered J] (F : Jᵒᵖ ⥤ Arrow Spc)
    (P : Arrow Spc) (c : ∀ j, P ⟶ F.obj (op j)) (hc : ∀ j k (f : j ⟶ k), c k ≫ F.map f.op = c j)
    (hm : ∀ j, Mono (F.obj (op j)).hom) (hP : Mono P.hom) (i : ℤ) (hL : ∀ m, ContL q F P c m i)
    (hR : ∀ m, ContR q F P c m i) (m : ℤ) (j : J) (y : Hs q (F.obj (op j)) (m + 1) i)
    (hy : Hs.pull q (c j) (m + 1) i y = 0) :
    ∃ (k : J) (f : j ⟶ k), Hs.pull q (F.map f.op) (m + 1) i y = 0 := by
  obtain ⟨δ, hex, hnat, -⟩ := bd
  have h0 : pull _ (c j).right (tw q i) (m + 1) (Hs.fgt q _ (m + 1) i y) = 0 := by
    rw [← Hs.fgt_pull, hy, map_zero]
  obtain ⟨k, f, hk⟩ := (hR (m + 1)).2 j _ h0
  rw [← Hs.fgt_pull] at hk
  obtain ⟨a, ha⟩ := ((hex q _ (hm k) m i).2.2 _).mp hk
  have hz : δ q P m i (pull _ (c k).left (tw q i) m a) = 0 := by
    rw [← hnat q _ _ (c k) hP (hm k), ha, ← _root_.LateralTheory.CohomologicalPurity.Hs.pull_comp', hc, hy]
  obtain ⟨b, hb⟩ := ((hex q P hP m i).2.1 _).mp hz
  obtain ⟨l, e, he⟩ := (hR m).1 b
  obtain ⟨M, g1, g2, -⟩ := IsFilteredOrEmpty.cocone_objs k l
  have hd : pull _ (c M).left (tw q i) m (pull _ (F.map g1.op).left (tw q i) m a -
      pull _ (F.obj (op M)).hom (tw q i) m (pull _ (F.map g2.op).right (tw q i) m e)) = 0 := by
    rw [map_sub, ← GlobalTheory.EtC.pull_comp, ← Arrow.comp_left, hc, ← hb, ← he, ← GlobalTheory.EtC.pull_comp,
      ← GlobalTheory.EtC.pull_comp, ← GlobalTheory.EtC.pull_comp, Category.assoc, ← Arrow.w (F.map g2.op), ← Category.assoc, ← Arrow.comp_left, hc,
      Arrow.w (c l), sub_self]
  obtain ⟨p, h, hp⟩ := (hL m).2 M _ hd
  rw [map_sub, sub_eq_zero, ← GlobalTheory.EtC.pull_comp, ← Arrow.comp_left, ← F.map_comp, ← op_comp,
    ← GlobalTheory.EtC.pull_comp, Arrow.w (F.map h.op), GlobalTheory.EtC.pull_comp] at hp
  refine ⟨p, f ≫ g1 ≫ h, ?_⟩
  have e1 : F.map (f ≫ g1 ≫ h).op = F.map (g1 ≫ h).op ≫ F.map f.op := by rw [op_comp, F.map_comp]
  rw [e1, _root_.LateralTheory.CohomologicalPurity.Hs.pull_comp', ← ha, hnat q _ _ _ (hm p) (hm k), hp]
  exact ((hex q _ (hm p) m i).2.1 _).mpr ⟨_, rfl⟩

theorem pairFiveS : PairFiveS := by
  intro bd q J _ _ F P c hc hm hP i hL hR n
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by ring⟩
  exact ⟨pairFiveS_surj bd q F P c hc hm hP i hL hR m,
    fun j y hy => pairFiveS_inj bd q F P c hc hm hP i hL hR m j y hy⟩

theorem etale_purity_continuity_off_closed_of_local_and_chase (hL : OffContLoc) (hG : OffChaseGeo) : OffContStep :=
  etale_complement_continuity_induction_of_localization_and_pair_lemmas hL pairFiveS hG

end LateralTheory.CohomologicalPurity
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.EtalePurityContinuityOffClosedOfLocalAndChase =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafHsContPfFive =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafHsContPfFive", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafHsContPf\nimport Development.EtaleCohomology.CohomologicalPurity.LeafExcDegPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity

theorem opnMap_tri {X'' X' X : Scheme.{0}} {g : X'' ⟶ X} (a : X'' ⟶ X') (b : X' ⟶ X) (e : g = a ≫ b)
    (U'' : X''.Opens) (U' : X'.Opens) (U : X.Opens) (h : U'' ≤ g ⁻¹ᵁ U) (h1 : U'' ≤ a ⁻¹ᵁ U') (h2 : U' ≤ b ⁻¹ᵁ U) :
    opnMap g U'' U h = opnMap a U'' U' h1 ≫ opnMap b U' U h2 := by
  subst e; exact opnMap_comp _ _ _ _ _ h1 h2 h

theorem fgt_pull (q : ℕ) {P' P : Arrow Spc} (φ : P' ⟶ P) (n i : ℤ) (x : Hs q P n i) :
    Hs.fgt q P' n i (Hs.pull q φ n i x) = pull _ φ.right (tw q i) n (Hs.fgt q P n i x) := by
  change pull _ (dbl.inl P') _ n (pull _ (dbl.map φ) _ n x.1) = pull _ φ.right _ n (pull _ (dbl.inl P) _ n x.1)
  rw [← pull_comp, ← pull_comp, dbl.inl_map']

theorem res_pull (q : ℕ) {P' P : Arrow Spc} (φ : P' ⟶ P) (n i : ℤ) (y : Ht q P.right n i) :
    pull _ P'.hom (tw q i) n (pull _ φ.right (tw q i) n y) = pull _ φ.left (tw q i) n (pull _ P.hom (tw q i) n y) := by
  rw [← pull_comp, ← pull_comp, ← Arrow.w φ]

theorem pull_left_comp (q : ℕ) {P'' P' P : Arrow Spc} (φ : P'' ⟶ P') (ψ : P' ⟶ P) (n i : ℤ) (y : Ht q P.left n i) :
    pull _ (φ ≫ ψ).left (tw q i) n y = pull _ φ.left (tw q i) n (pull _ ψ.left (tw q i) n y) := by
  rw [Arrow.comp_left, pull_comp]

theorem pull_right_comp (q : ℕ) {P'' P' P : Arrow Spc} (φ : P'' ⟶ P') (ψ : P' ⟶ P) (n i : ℤ) (y : Ht q P.right n i) :
    pull _ (φ ≫ ψ).right (tw q i) n y = pull _ φ.right (tw q i) n (pull _ ψ.right (tw q i) n y) := by
  rw [Arrow.comp_right, pull_comp]

theorem leafHsFive : LeafHsFive := by
  intro a1 b1 hBd q A B _ _ φ I hq J _ _ D s t hc he i hO n
  obtain ⟨δ, hδ⟩ := hBd
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by ring⟩
  have hqB : IsUnit (q : B) := by simpa using hq.map φ
  have hqj : ∀ j, IsUnit (q : D.obj j) := fun j => by simpa using hq.map (s.app j).hom
  have hsn : ∀ {j k : J} (f : j ⟶ k), s.app k = s.app j ≫ D.map f := fun f => by simpa using s.naturality f
  have htn : ∀ {j k : J} (f : j ⟶ k), D.map f ≫ t.app k = t.app j := fun f => by simpa using t.naturality f
  have hD : ∀ {j k : J} (f : j ⟶ k), off (D.obj k) (I.map (s.app k).hom) ≤
      Spec.map (D.map f) ⁻¹ᵁ off (D.obj j) (I.map (s.app j).hom) := by
    intro j k f
    have e1 := off_map (s.app k).hom I
    have e2 := off_map (s.app j).hom I
    simp only [CommRingCat.ofHom_hom] at e1 e2
    rw [e1, e2, hsn f, Spec.map_comp]
    intro x hx; exact hx
  have hT : ∀ j, off B (I.map φ) ≤ Spec.map (t.app j) ⁻¹ᵁ off (D.obj j) (I.map (s.app j).hom) := by
    intro j
    have e1 := off_map φ I
    have e2 := off_map (s.app j).hom I
    simp only [CommRingCat.ofHom_hom] at e2
    rw [e1, e2, ← he j, Spec.map_comp]
    intro x hx; exact hx
  have eT : ∀ {j k : J} (f : j ⟶ k), Spec.map (t.app j) = Spec.map (t.app k) ≫ Spec.map (D.map f) := fun f => by
    rw [← Spec.map_comp, htn f]
  have eD : ∀ {j k l : J} (f : j ⟶ k) (g : k ⟶ l), Spec.map (D.map (f ≫ g)) = Spec.map (D.map g) ≫ Spec.map (D.map f) :=
    fun f g => by rw [← Spec.map_comp, ← Functor.map_comp]
  have sc : ∀ k : ℤ, (∀ x : Ht q (opn (off B (I.map φ))).right k i, ∃ j, ∃ y : Ht q (opn (off (D.obj j) (I.map (s.app j).hom))).right k i,
      pull _ (opnMap (Spec.map (t.app j)) _ _ (hT j)).right (tw q i) k y = x) ∧
      ∀ j (y : Ht q (opn (off (D.obj j) (I.map (s.app j).hom))).right k i),
        pull _ (opnMap (Spec.map (t.app j)) _ _ (hT j)).right (tw q i) k y = 0 →
        ∃ (l : J) (f : j ⟶ l), pull _ (opnMap (Spec.map (D.map f)) _ _ (hD f)).right (tw q i) k y = 0 :=
    fun k => spec_cont b1 q D t hc hqB hqj k i
  have ex := fun {X : Scheme.{0}} (V : X.Opens) (k : ℤ) => hδ.1 q (opn V) (opn_mono V) k i
  constructor
  · intro x
    obtain ⟨j1, y1, hy1'⟩ := (sc (m + 1)).1 (Hs.fgt q _ (m + 1) i x)
    have h2 : pull _ (opnMap (Spec.map (t.app j1)) _ _ (hT j1)).left (tw q i) (m + 1)
        (pull _ (opn (off (D.obj j1) (I.map (s.app j1).hom))).hom (tw q i) (m + 1) y1) = 0 := by
      rw [← res_pull, hy1']
      exact (ex _ (m + 1)).1.apply_apply_eq_zero x
    obtain ⟨k, f, h', hk⟩ := (hO (m + 1)).2 j1 (hT j1) _ h2
    have h3 : pull _ (opn (off (D.obj k) (I.map (s.app k).hom))).hom (tw q i) (m + 1)
        (pull _ (opnMap (Spec.map (D.map f)) _ _ h').right (tw q i) (m + 1) y1) = 0 := by
      rw [res_pull]; exact hk
    obtain ⟨z, hz⟩ := ((ex (off (D.obj k) (I.map (s.app k).hom)) (m + 1)).1 _).1 h3
    have h4 : Hs.fgt q _ (m + 1) i (x - Hs.pull q (opnMap (Spec.map (t.app k)) _ _ (hT k)) (m + 1) i z) = 0 := by
      rw [map_sub, fgt_pull, hz, ← pull_right_comp,
        ← opnMap_tri (Spec.map (t.app k)) (Spec.map (D.map f)) (eT f) _ _ _ (hT j1) (hT k) h', hy1', sub_self]
    obtain ⟨w, hw⟩ := ((ex (off B (I.map φ)) m).2.2 _).1 h4
    obtain ⟨j2, h2', w2, hw2⟩ := (hO m).1 w
    refine ⟨IsFiltered.max k j2, hT _,
      Hs.pull q (opnMap (Spec.map (D.map (IsFiltered.leftToMax k j2))) _ _ (hD _)) (m + 1) i z +
      δ q _ m i (pull _ (opnMap (Spec.map (D.map (IsFiltered.rightToMax k j2))) _ _ (hD _)).left (tw q i) m w2), ?_⟩
    rw [map_add (f := _), ← Hs.pull_comp',
      ← opnMap_tri (Spec.map (t.app _)) (Spec.map (D.map (IsFiltered.leftToMax k j2))) (eT _) _ _ _ (hT k) (hT _) (hD _),
      hδ.2.1 q _ _ _ (opn_mono _) (opn_mono _), ← pull_left_comp,
      ← opnMap_tri (Spec.map (t.app _)) (Spec.map (D.map (IsFiltered.rightToMax k j2))) (eT _) _ _ _ h2' (hT _) (hD _),
      hw2, hw]
    abel
  · intro j h y hy
    have hf : pull _ (opnMap (Spec.map (t.app j)) _ _ h).right (tw q i) (m + 1) (Hs.fgt q _ (m + 1) i y) = 0 := by
      rw [← fgt_pull, hy, map_zero]
    obtain ⟨k, f, hk⟩ := (sc (m + 1)).2 j _ (by exact hf)
    have h5 : Hs.fgt q _ (m + 1) i (Hs.pull q (opnMap (Spec.map (D.map f)) _ _ (hD f)) (m + 1) i y) = 0 := by
      rw [fgt_pull]; exact hk
    obtain ⟨w, hw⟩ := ((ex (off (D.obj k) (I.map (s.app k).hom)) m).2.2 _).1 h5
    have h6 : δ q _ m i (pull _ (opnMap (Spec.map (t.app k)) _ _ (hT k)).left (tw q i) m w) = 0 := by
      rw [← hδ.2.1 q _ _ (opnMap (Spec.map (t.app k)) _ _ (hT k)) (opn_mono _) (opn_mono _), hw, ← Hs.pull_comp',
        ← opnMap_tri (Spec.map (t.app k)) (Spec.map (D.map f)) (eT f) _ _ _ h (hT k) (hD f), hy]
    obtain ⟨v, hv⟩ := ((ex (off B (I.map φ)) m).2.1 _).1 h6
    obtain ⟨j3, v3, hv3'⟩ := (sc m).1 v
    have h7 : pull _ (opnMap (Spec.map (t.app (IsFiltered.max k j3))) _ _ (hT _)).left (tw q i) m
        (pull _ (opnMap (Spec.map (D.map (IsFiltered.leftToMax k j3))) _ _ (hD _)).left (tw q i) m w -
          pull _ (opn (off (D.obj (IsFiltered.max k j3)) (I.map (s.app _).hom))).hom (tw q i) m
            (pull _ (opnMap (Spec.map (D.map (IsFiltered.rightToMax k j3))) _ _ (hD _)).right (tw q i) m v3)) = 0 := by
      rw [map_sub, sub_eq_zero, ← pull_left_comp,
        ← opnMap_tri (Spec.map (t.app _)) (Spec.map (D.map (IsFiltered.leftToMax k j3))) (eT _) _ _ _ (hT k) (hT _) (hD _),
        ← res_pull, ← pull_right_comp,
        ← opnMap_tri (Spec.map (t.app _)) (Spec.map (D.map (IsFiltered.rightToMax k j3))) (eT _) _ _ _ (hT j3) (hT _) (hD _),
        hv3', hv]
    obtain ⟨r, g, h8, hr⟩ := (hO m).2 _ (hT _) _ h7
    refine ⟨r, f ≫ IsFiltered.leftToMax k j3 ≫ g, hD _, ?_⟩
    rw [map_sub, sub_eq_zero] at hr
    rw [opnMap_tri (Spec.map (D.map (IsFiltered.leftToMax k j3 ≫ g))) (Spec.map (D.map f)) (eD _ _) _ _ _ _ (hD _) (hD f),
      Hs.pull_comp', ← hw,
      opnMap_tri (Spec.map (D.map g)) (Spec.map (D.map (IsFiltered.leftToMax k j3))) (eD _ _) _ _ _ _ h8 (hD _),
      Hs.pull_comp', hδ.2.1 q _ _ _ (opn_mono _) (opn_mono _), hδ.2.1 q _ _ _ (opn_mono _) (opn_mono _), hr,
      ← res_pull]
    exact (ex _ m).2.1.apply_apply_eq_zero _

theorem leafHsCont_of' (hB : LeafBd) (hE : LeafExc) (hO : LeafOffCont) : LeafHsCont :=
  leafHsCont_of hB hE hO leafHsFive

end LateralTheory.CohomologicalPurity
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafHsContPfFive =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafNbhdExcPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafNbhdExcPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafIndExcPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity

def nbhdRet {A B : Type} [CommRing A] [CommRing B] (φ : A →+* B) (I : Ideal A) (hb : Function.Bijective
    (Ideal.quotientMap (I.map φ) φ Ideal.le_comap_map)) : B →+* A ⧸ I :=
  ((RingEquiv.ofBijective _ hb).symm : (B ⧸ I.map φ) →+* A ⧸ I).comp (Ideal.Quotient.mk (I.map φ))

theorem nbhdRet_comp {A B : Type} [CommRing A] [CommRing B] (φ : A →+* B) (I : Ideal A) (hb : Function.Bijective
    (Ideal.quotientMap (I.map φ) φ Ideal.le_comap_map)) (a : A) :
    nbhdRet φ I hb (φ a) = Ideal.Quotient.mk I a := by
  unfold nbhdRet
  simp only [RingHom.coe_comp, Function.comp_apply]
  rw [RingEquiv.coe_toRingHom, RingEquiv.symm_apply_eq]
  simp [Ideal.quotientMap_mk]

theorem nbhd_isPushout {A B : Type} [CommRing A] [CommRing B] (φ : A →+* B) (I : Ideal A) (hb : Function.Bijective
    (Ideal.quotientMap (I.map φ) φ Ideal.le_comap_map)) :
    IsPushout (CommRingCat.ofHom φ) (CommRingCat.ofHom (Ideal.Quotient.mk I))
      (CommRingCat.ofHom (nbhdRet φ I hb)) (𝟙 (CommRingCat.of (A ⧸ I))) := by
  have w : CommRingCat.ofHom φ ≫ CommRingCat.ofHom (nbhdRet φ I hb) =
      CommRingCat.ofHom (Ideal.Quotient.mk I) ≫ 𝟙 (CommRingCat.of (A ⧸ I)) := by
    ext a; simp [nbhdRet_comp]
  refine IsPushout.of_isColimit' ⟨w⟩ (PushoutCocone.IsColimit.mk _ (fun s => s.inr) ?_ ?_ ?_)
  · intro s
    ext b
    obtain ⟨x, hx⟩ := hb.2 (Ideal.Quotient.mk (I.map φ) b)
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective x
    rw [Ideal.quotientMap_mk, Ideal.Quotient.eq] at hx
    have hker : ∀ y ∈ I.map φ, s.inl y = 0 := by
      intro y hy
      have hle : I.map φ ≤ RingHom.ker s.inl.hom := by
        rw [Ideal.map_le_iff_le_comap]
        intro i hi
        have := congrArg (fun g => g.hom i) s.condition
        simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at this
        simp only [Ideal.mem_comap, RingHom.mem_ker, this, Ideal.Quotient.eq_zero_iff_mem.2 hi, map_zero]
      exact hle hy
    have h1 : s.inl b = s.inl (φ a) := by
      have := hker _ hx
      rw [map_sub, sub_eq_zero] at this
      exact this.symm
    have h2 := congrArg (fun g => g.hom a) s.condition
    simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at h2
    have h3 : nbhdRet φ I hb b = Ideal.Quotient.mk I a := by
      unfold nbhdRet
      simp only [RingHom.coe_comp, Function.comp_apply]
      rw [RingEquiv.coe_toRingHom, RingEquiv.symm_apply_eq, RingEquiv.ofBijective_apply, Ideal.quotientMap_mk]
      exact (Ideal.Quotient.eq.2 hx).symm
    simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom]
    rw [h3, h1, h2]
  · intro s; simp
  · intro s m h1 h2
    simpa using h2

theorem nbhd_isPullback {A B : Type} [CommRing A] [CommRing B] (φ : A →+* B) (I : Ideal A) (hb : Function.Bijective
    (Ideal.quotientMap (I.map φ) φ Ideal.le_comap_map)) :
    IsPullback (Spec.map (CommRingCat.ofHom (nbhdRet φ I hb))) (𝟙 _) (Spec.map (CommRingCat.ofHom φ))
      (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I))) := by
  have := isPullback_SpecMap_of_isPushout _ _ _ _ (nbhd_isPushout φ I hb)
  simpa using this

theorem range_spec_quot {A : Type} [CommRing A] (I : Ideal A) :
    (off A I : Set (Spec (CommRingCat.of A))) = (Set.range (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I))))ᶜ := by
  ext x
  change x ∈ (PrimeSpectrum.zeroLocus (I : Set A))ᶜ ↔ x ∈ (Set.range (PrimeSpectrum.comap (Ideal.Quotient.mk I)))ᶜ
  rw [range_comap_of_surjective _ _ (Ideal.Quotient.mk_surjective (I := I)), Ideal.mk_ker]

theorem leafNbhdExc_of (hE : LeafExc) : LeafNbhdExc := by
  intro a1 q A B _ _ φ I hN hq h
  obtain ⟨het, hb⟩ := hN
  have : Etale (Spec.map (CommRingCat.ofHom φ)) := HasRingHomProperty.Spec_iff.2 het
  have : IsClosedImmersion (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I))) :=
    IsClosedImmersion.spec_of_surjective _ Ideal.Quotient.mk_surjective
  exact hE a1 q (Spec.map (CommRingCat.ofHom φ)) (Spec.map (CommRingCat.ofHom (nbhdRet φ I hb)))
    (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I))) (nbhd_isPullback φ I hb) _ _ (range_spec_quot I)
    (off_map φ I)

end LateralTheory.CohomologicalPurity
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafNbhdExcPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.OffContBasicPfR =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.OffContBasicPfR", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafOffContPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity


set_option backward.isDefEq.respectTransparency.types false in
def opIso {R : CommRingCat.{0}} (g : R) (U : (Spec R).Opens)
    (hU : U = PrimeSpectrum.basicOpen g) : U.toScheme ≅ Spec (CommRingCat.of (Localization.Away g)) :=
  IsOpenImmersion.isoOfRangeEq (Scheme.Opens.ι U) (Spec.map (CommRingCat.ofHom (algebraMap R _)))
    (by
      subst hU
      simp only [Scheme.Opens.range_ι]
      exact (PrimeSpectrum.localization_away_comap_range (Localization.Away g) g).symm)

theorem opIso_hom {R : CommRingCat.{0}} (g : R) (U : (Spec R).Opens)
    (hU : U = PrimeSpectrum.basicOpen g) :
    (opIso g U hU).hom ≫ Spec.map (CommRingCat.ofHom (algebraMap R _)) = U.ι := by
  simp [opIso]

theorem opIso_inv {R : CommRingCat.{0}} (g : R) (U : (Spec R).Opens)
    (hU : U = PrimeSpectrum.basicOpen g) :
    (opIso g U hU).inv ≫ U.ι = Spec.map (CommRingCat.ofHom (algebraMap R _)) := by
  rw [← opIso_hom g U hU, Iso.inv_hom_id_assoc]

def awMap {R S : Type} [CommRing R] [CommRing S] (ψ : R →+* S) (g : R) (g' : S) (hg : ψ g = g') :
    Localization.Away g →+* Localization.Away g' :=
  IsLocalization.map (M := Submonoid.powers g) (T := Submonoid.powers g') _ ψ
    (by rw [Submonoid.powers_le]; exact ⟨1, by simp [hg]⟩)

theorem awMap_alg {R S : Type} [CommRing R] [CommRing S] (ψ : R →+* S) (g : R) (g' : S) (hg : ψ g = g') :
    (awMap ψ g g' hg).comp (algebraMap R _) = (algebraMap S _).comp ψ := by
  ext x; simp [awMap]

theorem opIso_sq {R S : CommRingCat.{0}} (ψ : R ⟶ S) (g : R) (g' : S) (hg : ψ.hom g = g')
    (U : (Spec R).Opens) (hU : U = PrimeSpectrum.basicOpen g)
    (U' : (Spec S).Opens) (hU' : U' = PrimeSpectrum.basicOpen g')
    (h : U' ≤ Spec.map ψ ⁻¹ᵁ U) :
    (Spec.map ψ).resLE U U' h =
      (opIso g' U' hU').hom ≫ Spec.map (CommRingCat.ofHom (awMap ψ.hom g g' hg)) ≫ (opIso g U hU).inv := by
  refine (cancel_mono U.ι).1 ?_
  rw [Category.assoc, Category.assoc, opIso_inv, Scheme.Hom.resLE_comp_ι, ← Spec.map_comp, ← CommRingCat.ofHom_comp,
    awMap_alg, CommRingCat.ofHom_comp, Spec.map_comp, ← Category.assoc, opIso_hom]
  rfl

theorem awMap_eq {R S : Type} [CommRing R] [CommRing S] (ψ : R →+* S) (g : R) (g' : S) (hg : ψ g = g') (x : R) :
    awMap ψ g g' hg (algebraMap R _ x) = algebraMap S _ (ψ x) := by
  simp [awMap]

theorem awMap_mk' {R S : Type} [CommRing R] [CommRing S] (ψ : R →+* S) (g : R) (g' : S) (hg : ψ g = g') (x : R)
    (y : Submonoid.powers g) :
    awMap ψ g g' hg (IsLocalization.mk' _ x y) = IsLocalization.mk' (Localization.Away g') (ψ x)
      (⟨ψ y, by obtain ⟨n, hn⟩ := y.2; exact ⟨n, by rw [← hn, map_pow, hg]⟩⟩ : Submonoid.powers g') := by
  simp only [awMap, IsLocalization.map_mk']

theorem awMap_ext {R S : Type} [CommRing R] [CommRing S] (g : R) {u v : Localization.Away g →+* S}
    (h : ∀ x, u (algebraMap R _ x) = v (algebraMap R _ x)) : u = v :=
  IsLocalization.ringHom_ext (Submonoid.powers g) (RingHom.ext h)

section
variable {A B : Type} [CommRing A] [CommRing B] (f : A) {J : Type} [SmallCategory J]
  (D : J ⥤ CommRingCat.{0}) (s : (Functor.const J).obj (CommRingCat.of A) ⟶ D)

theorem ocb_s_nat {j k : J} (g : j ⟶ k) : (D.map g).hom ((s.app j).hom f) = (s.app k).hom f := by
  have := s.naturality g
  simp only [Functor.const_obj_obj, Functor.const_obj_map, Category.id_comp] at this
  rw [this]; rfl

def locD : J ⥤ CommRingCat.{0} where
  obj j := CommRingCat.of (Localization.Away ((s.app j).hom f))
  map {j k} g := CommRingCat.ofHom (awMap (D.map g).hom ((s.app j).hom f) ((s.app k).hom f) (ocb_s_nat f D s g))
  map_id j := by
    ext1; apply awMap_ext; intro x
    simp [awMap_eq]
  map_comp {j k l} g h := by
    ext1; apply awMap_ext; intro x
    simp [awMap_eq]

variable (φ : A →+* B) (t : D ⟶ (Functor.const J).obj (CommRingCat.of B))
  (he : ∀ j, s.app j ≫ t.app j = CommRingCat.ofHom φ)

include he in
theorem t_eq (j : J) (a : A) : (t.app j).hom ((s.app j).hom a) = φ a := by
  rw [← CommRingCat.comp_apply, he j]; rfl

def locT : locD f D s ⟶ (Functor.const J).obj (CommRingCat.of (Localization.Away (φ f))) where
  app j := CommRingCat.ofHom (awMap (t.app j).hom ((s.app j).hom f) (φ f) (t_eq D s φ t he j f))
  naturality {j k} g := by
    ext1; apply awMap_ext; intro x
    simp only [locD, Functor.const_obj_obj, Functor.const_obj_map, Category.comp_id, CommRingCat.hom_comp,
      CommRingCat.hom_ofHom, RingHom.coe_comp, Function.comp_apply, awMap_eq]
    rw [← CommRingCat.comp_apply, t.naturality g]; simp

end

section
variable {A B : Type} [CommRing A] [CommRing B] (f : A) {J : Type} [SmallCategory J]
  (D : J ⥤ CommRingCat.{0}) (s : (Functor.const J).obj (CommRingCat.of A) ⟶ D)
  (φ : A →+* B) (t : D ⟶ (Functor.const J).obj (CommRingCat.of B))
  (he : ∀ j, s.app j ≫ t.app j = CommRingCat.ofHom φ)

theorem locT_app (j : J) (c : Localization.Away ((s.app j).hom f)) :
    (locT f D s φ t he).app j c = awMap (t.app j).hom _ _ (t_eq D s φ t he j f) c := rfl

omit [CommRing B] in
theorem locD_map {j k : J} (g : j ⟶ k) (c : Localization.Away ((s.app j).hom f)) :
    (locD f D s).map g c = awMap (D.map g).hom _ _ (ocb_s_nat f D s g) c := rfl

theorem locT_zero [IsFiltered J] (hc : IsColimit (Cocone.mk _ t)) (j : J)
    (c : Localization.Away ((s.app j).hom f)) (hc0 : (locT f D s φ t he).app j c = 0) :
    ∃ (k : J) (g : j ⟶ k), (locD f D s).map g c = 0 := by
  have hc' := isColimitOfPreserves (forget CommRingCat) hc
  obtain ⟨⟨x, ⟨_, n, rfl⟩⟩, rfl⟩ := IsLocalization.mk'_surjective (Submonoid.powers ((s.app j).hom f)) c
  rw [locT_app, awMap_mk'] at hc0
  obtain ⟨⟨_, p, rfl⟩, hp⟩ := (IsLocalization.mk'_eq_zero_iff (R := B) (M := Submonoid.powers (φ f)) (S := Localization.Away (φ f)) _ _).1 hc0
  have h1 : (t.app j).hom ((s.app j).hom f ^ p * x) = (t.app j).hom 0 := by
    rw [map_mul, map_pow, t_eq D s φ t he, map_zero]; exact hp
  obtain ⟨k, g, hg⟩ := (Types.FilteredColimit.isColimit_eq_iff' hc' _ _).1 h1
  refine ⟨k, g, ?_⟩
  rw [locD_map, awMap_mk']
  refine (IsLocalization.mk'_eq_zero_iff (S := Localization.Away ((s.app k).hom f)) _ _).2 ⟨⟨_, pow_mem (Submonoid.mem_powers _) p⟩, ?_⟩
  change (D.map g).hom ((s.app j).hom f ^ p * x) = (D.map g).hom 0 at hg
  rw [map_mul, map_pow, ocb_s_nat f D s g] at hg
  simpa using hg

theorem locT_isColimit [IsFiltered J] (hc : IsColimit (Cocone.mk _ t)) :
    Nonempty (IsColimit (Cocone.mk _ (locT f D s φ t he))) := by
  have hc' := isColimitOfPreserves (forget CommRingCat) hc
  haveI : ReflectsColimitsOfShape J (forget CommRingCat.{0}) := reflectsColimitsOfShape_of_reflectsIsomorphisms
  refine ⟨isColimitOfReflects (forget CommRingCat) (Types.FilteredColimit.isColimitOf' _ _ ?_ ?_)⟩
  · intro (z : Localization.Away (φ f))
    obtain ⟨⟨x, ⟨_, n, rfl⟩⟩, rfl⟩ := IsLocalization.mk'_surjective (Submonoid.powers (φ f)) z
    obtain ⟨j, x', hx'⟩ := Types.jointly_surjective_of_isColimit hc' x
    change (t.app j).hom x' = x at hx'
    refine ⟨j, IsLocalization.mk' (Localization.Away ((s.app j).hom f)) x' (⟨_, pow_mem (Submonoid.mem_powers _) n⟩ : Submonoid.powers ((s.app j).hom f)), ?_⟩
    change _ = (locT f D s φ t he).app j _
    rw [locT_app, awMap_mk']
    subst hx'
    show IsLocalization.mk' (R := B) (M := Submonoid.powers (φ f)) (Localization.Away (φ f)) ((t.app j).hom x') _ = _
    congr 1
    apply Subtype.ext; simp [t_eq D s φ t he]
  · intro j a b hab
    have hab' : (locT f D s φ t he).app j (a - b) = 0 := by
      rw [map_sub, sub_eq_zero]; exact hab
    obtain ⟨k, g, hg⟩ := locT_zero f D s φ t he hc j _ hab'
    refine ⟨k, g, ?_⟩
    change (locD f D s).map g a = (locD f D s).map g b
    rw [map_sub, sub_eq_zero] at hg; exact hg

end

theorem off_span_map {R S : CommRingCat.{0}} (ψ : R ⟶ S) (f : R) :
    off S ((Ideal.span {f}).map ψ.hom) = PrimeSpectrum.basicOpen (ψ.hom f) := by
  rw [Ideal.map_span, Set.image_singleton]
  exact TopologicalSpace.Opens.ext (off_span_singleton S (ψ.hom f))

theorem pull_sq (q : ℕ) (n i : ℤ) {R S : CommRingCat.{0}} (ψ : R ⟶ S) (g : R) (g' : S) (hg : ψ.hom g = g')
    (U : (Spec R).Opens) (hU : U = PrimeSpectrum.basicOpen g)
    (U' : (Spec S).Opens) (hU' : U' = PrimeSpectrum.basicOpen g')
    (h : U' ≤ Spec.map ψ ⁻¹ᵁ U) (y : Ht q (sch.obj U.toScheme) n i) :
    pull _ (opnMap (Spec.map ψ) U' U h).left (tw q i) n y =
      pull _ (sch.map (opIso g' U' hU').hom) _ _ (pull _ (sch.map (Spec.map (CommRingCat.ofHom (awMap ψ.hom g g' hg))))
        _ _ (pull _ (sch.map (opIso g U hU).inv) _ _ y)) := by
  change pull _ (sch.map ((Spec.map ψ).resLE U U' h)) _ _ y = _
  rw [opIso_sq ψ g g' hg U hU U' hU' h, Functor.map_comp, Functor.map_comp, pull_comp, pull_comp]

theorem pull_hom_inv (q : ℕ) (n i : ℤ) {X Y : Scheme.{0}} (e : X ≅ Y) (y : Ht q (sch.obj X) n i) :
    pull _ (sch.map e.hom) (tw q i) n (pull _ (sch.map e.inv) (tw q i) n y) = y := by
  rw [← pull_comp, ← Functor.map_comp, e.hom_inv_id, CategoryTheory.Functor.map_id, pull_id]

theorem pull_inv_hom (q : ℕ) (n i : ℤ) {X Y : Scheme.{0}} (e : X ≅ Y) (y : Ht q (sch.obj Y) n i) :
    pull _ (sch.map e.inv) (tw q i) n (pull _ (sch.map e.hom) (tw q i) n y) = y := by
  rw [← pull_comp, ← Functor.map_comp, e.inv_hom_id, CategoryTheory.Functor.map_id, pull_id]

theorem pull_sq' (q : ℕ) (n i : ℤ) {R S : CommRingCat.{0}} (ψ : R ⟶ S) (g : R) (g' : S) (hg : ψ.hom g = g')
    (U : (Spec R).Opens) (hU : U = PrimeSpectrum.basicOpen g)
    (U' : (Spec S).Opens) (hU' : U' = PrimeSpectrum.basicOpen g')
    (h : U' ≤ Spec.map ψ ⁻¹ᵁ U) (y : Ht q (sch.obj (Spec (CommRingCat.of (Localization.Away g)))) n i) :
    pull _ (opnMap (Spec.map ψ) U' U h).left (tw q i) n (pull _ (sch.map (opIso g U hU).hom) _ _ y) =
      pull _ (sch.map (opIso g' U' hU').hom) _ _ (pull _ (sch.map (Spec.map (CommRingCat.ofHom (awMap ψ.hom g g' hg))))
        _ _ y) := by
  rw [pull_sq q n i ψ g g' hg U hU U' hU' h, pull_inv_hom]

theorem pull_hom_zero (q : ℕ) (n i : ℤ) {X Y : Scheme.{0}} (e : X ≅ Y) (y : Ht q (sch.obj Y) n i)
    (hy : pull _ (sch.map e.hom) (tw q i) n y = 0) : y = 0 := by
  rw [← pull_inv_hom q n i e y, hy, map_zero]

theorem offContBasic_of : OffContBasic := by
  intro a1 a4 b1 q A B _ _ φ f hq J _ _ D s t hc he n i
  obtain ⟨hc2⟩ := locT_isColimit f D s φ t he hc
  have hqB : IsUnit (q : Localization.Away (φ f)) := by
    have := (hq.map ((algebraMap B (Localization.Away (φ f))).comp φ)); simpa using this
  have hqj : ∀ j, IsUnit (q : (locD f D s).obj j) := fun j => by
    have := (hq.map ((algebraMap _ (Localization.Away ((s.app j).hom f))).comp (s.app j).hom))
    exact (by simpa using this : IsUnit ((q : ℕ) : Localization.Away ((s.app j).hom f)))
  obtain ⟨hS, hI⟩ := spec_cont b1 q (locD f D s) (locT f D s φ t he) hc2 hqB hqj n i
  have hUB : off B ((Ideal.span {f}).map φ) = PrimeSpectrum.basicOpen (φ f) :=
    off_span_map (R := CommRingCat.of A) (S := CommRingCat.of B) (CommRingCat.ofHom φ) f
  have hUj : ∀ j, off (D.obj j) ((Ideal.span {f}).map (s.app j).hom) = PrimeSpectrum.basicOpen ((s.app j).hom f) :=
    fun j => off_span_map (R := CommRingCat.of A) (s.app j) f
  have hB : ∀ j, off B ((Ideal.span {f}).map φ) ≤ Spec.map (t.app j) ⁻¹ᵁ off (D.obj j) ((Ideal.span {f}).map (s.app j).hom) := fun j => by
    intro x hx
    have e := off_map (t.app j).hom ((Ideal.span {f}).map (s.app j).hom)
    simp only [CommRingCat.ofHom_hom] at e
    rw [← e, Ideal.map_map]
    have : (t.app j).hom.comp (s.app j).hom = φ := by
      rw [← CommRingCat.hom_comp, he j]; rfl
    rw [this]; exact hx
  have hD : ∀ {j k : J} (g : j ⟶ k), off (D.obj k) ((Ideal.span {f}).map (s.app k).hom) ≤
      Spec.map (D.map g) ⁻¹ᵁ off (D.obj j) ((Ideal.span {f}).map (s.app j).hom) := fun {j k} g => by
    intro x hx
    have e := off_map (D.map g).hom ((Ideal.span {f}).map (s.app j).hom)
    simp only [CommRingCat.ofHom_hom] at e
    rw [← e, Ideal.map_map]
    have : (D.map g).hom.comp (s.app j).hom = (s.app k).hom := by
      have := s.naturality g
      simp only [Functor.const_obj_obj, Functor.const_obj_map, Category.id_comp] at this
      rw [this]; rfl
    rw [this]; exact hx
  constructor
  · intro x
    obtain ⟨j, y', hy'⟩ := hS (pull (ZMod q) (sch.map (opIso (R := CommRingCat.of B) (φ f) (off B ((Ideal.span {f}).map φ)) hUB).inv) (tw q i) n x)
    refine ⟨j, hB j, pull _ (sch.map (opIso (R := D.obj j) ((s.app j).hom f) (off (D.obj j) ((Ideal.span {f}).map (s.app j).hom)) (hUj j)).hom) _ _ y', ?_⟩
    exact (pull_sq' q n i (t.app j) ((s.app j).hom f) (φ f) (t_eq D s φ t he j f) _ (hUj j) _ hUB (hB j) y').trans
      ((congrArg (pull _ (sch.map (opIso (R := CommRingCat.of B) (φ f) (off B ((Ideal.span {f}).map φ)) hUB).hom) (tw q i) n) hy').trans
        (pull_hom_inv q n i _ x))
  · intro j h y hy
    replace hy := (pull_sq q n i (t.app j) ((s.app j).hom f) (φ f) (t_eq D s φ t he j f) _ (hUj j) _ hUB h y).symm.trans hy
    have hy2 := pull_hom_zero q n i _ _ hy
    obtain ⟨k, g, hk⟩ := hI j _ hy2
    refine ⟨k, g, hD g, ?_⟩
    exact (pull_sq q n i (D.map g) ((s.app j).hom f) ((s.app k).hom f) (ocb_s_nat f D s g) _ (hUj j) _ (hUj k) (hD g) y).trans
      ((congrArg (pull _ (sch.map (opIso (R := D.obj k) ((s.app k).hom f) (off (D.obj k) ((Ideal.span {f}).map (s.app k).hom)) (hUj k)).hom) (tw q i) n) hk).trans
        (map_zero _))

end LateralTheory.CohomologicalPurity
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.OffContBasicPfR =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.OffContLocKnxPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.OffContLocKnxPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.OffContStepPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity

theorem span_range_mul_span_singleton {A : Type} [CommRing A] {r : ℕ} (x : Fin r → A) (f : A) :
    Ideal.span (Set.range x) * Ideal.span {f} = Ideal.span (Set.range (fun k => x k * f)) := by
  rw [Ideal.span_mul_span', Set.mul_singleton, ← Set.range_comp]
  rfl

theorem OffContLoc_of : OffContLoc := by
  intro _ r hN q A B _ _ φ x f hq J _ _ D s t hc he n i
  rw [span_range_mul_span_singleton]
  exact hN q φ (fun k => x k * f) hq J D s t hc he n i

end LateralTheory.CohomologicalPurity
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.OffContLocKnxPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.OffChaseGeoOf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.OffChaseGeoOf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.OffContStepPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity

theorem contS_exc (q : ℕ) {J : Type} [SmallCategory J] (FA FB : Jᵒᵖ ⥤ Arrow Spc) (PA PB : Arrow Spc)
    (cA : ∀ j, PA ⟶ FA.obj (op j)) (cB : ∀ j, PB ⟶ FB.obj (op j)) (e : FA ⟶ FB) (e0 : PA ⟶ PB)
    (he : ∀ j, cA j ≫ e.app (op j) = e0 ≫ cB j) (hE : ∀ j, Exc q (e.app (op j))) (hE0 : Exc q e0) (n i : ℤ)
    (hS : ContS q FA PA cA n i) : ContS q FB PB cB n i := by
  refine ⟨fun x => ?_, fun j y hy => ?_⟩
  · obtain ⟨j, y, hy⟩ := hS.1 (Hs.pull q e0 n i x)
    obtain ⟨z, rfl⟩ := (hE j n i).2 y
    refine ⟨j, z, (hE0 n i).1 ?_⟩
    rw [← hy, ← Hs.pull_comp', ← Hs.pull_comp', he]
  · have h0 : Hs.pull q (cA j) n i (Hs.pull q (e.app (op j)) n i y) = 0 := by
      rw [← Hs.pull_comp', he, Hs.pull_comp', hy, map_zero]
    obtain ⟨k, f, hk⟩ := hS.2 j _ h0
    refine ⟨k, f, (hE k n i).1 ?_⟩
    rw [map_zero, ← Hs.pull_comp', ← e.naturality, Hs.pull_comp', hk]

theorem chase_abs (hS5 : PairFiveS) (hR5 : PairFiveR) (bd : LeafBd) (q : ℕ) {J : Type} [SmallCategory J] [IsFiltered J]
    (FA FB : Jᵒᵖ ⥤ Arrow Spc) (PA PB : Arrow Spc)
    (cA : ∀ j, PA ⟶ FA.obj (op j)) (cB : ∀ j, PB ⟶ FB.obj (op j))
    (hcA : ∀ j k (f : j ⟶ k), cA k ≫ FA.map f.op = cA j) (hcB : ∀ j k (f : j ⟶ k), cB k ≫ FB.map f.op = cB j)
    (hmA : ∀ j, Mono (FA.obj (op j)).hom) (hmB : ∀ j, Mono (FB.obj (op j)).hom) (hPA : Mono PA.hom) (hPB : Mono PB.hom)
    (e : FA ⟶ FB) (e0 : PA ⟶ PB)
    (he : ∀ j, cA j ≫ e.app (op j) = e0 ≫ cB j) (hE : ∀ j, Exc q (e.app (op j))) (hE0 : Exc q e0) (i : ℤ)
    (hAL : ∀ m, ContL q FA PA cA m i) (hAR : ∀ m, ContR q FA PA cA m i) (hBL : ∀ m, ContL q FB PB cB m i) :
    ∀ n, ContR q FB PB cB n i :=
  hR5 bd q FB PB cB hcB hmB hPB i hBL
    (fun m => contS_exc q FA FB PA PB cA cB e e0 he hE hE0 m i (hS5 bd q FA PA cA hcA hmA hPA i hAL hAR m))

theorem resLE_id' {X : Scheme.{0}} (U : X.Opens) (h : U ≤ (𝟙 X) ⁻¹ᵁ U) : Scheme.Hom.resLE (𝟙 X) U U h = 𝟙 _ := by
  rw [← cancel_mono U.ι, Scheme.Hom.resLE_comp_ι, Category.comp_id, Category.id_comp]

theorem opnMap_id {X : Scheme.{0}} (U : X.Opens) (h : U ≤ (𝟙 X) ⁻¹ᵁ U) : opnMap (𝟙 X) U U h = 𝟙 _ := by
  apply Arrow.hom_ext
  · change sch.map _ = 𝟙 _
    rw [resLE_id']; exact sch.map_id _
  · exact sch.map_id X

theorem mapA_le {X' X : Scheme.{0}} (f : X' ⟶ X) (U V : X.Opens) (U' V' : X'.Opens) (hU : U' ≤ f ⁻¹ᵁ U)
    (hV : V' ≤ f ⁻¹ᵁ V) : V'.ι ⁻¹ᵁ U' ≤ (f.resLE V V' hV) ⁻¹ᵁ (V.ι ⁻¹ᵁ U) := by
  intro x hx
  change V.ι ((f.resLE V V' hV) x) ∈ U
  rw [← Scheme.Hom.comp_apply, Scheme.Hom.resLE_comp_ι, Scheme.Hom.comp_apply]
  exact hU hx

def mapA {X' X : Scheme.{0}} (f : X' ⟶ X) (U V : X.Opens) (U' V' : X'.Opens) (hU : U' ≤ f ⁻¹ᵁ U)
    (hV : V' ≤ f ⁻¹ᵁ V) : opn (V'.ι ⁻¹ᵁ U') ⟶ opn (V.ι ⁻¹ᵁ U) :=
  opnMap (f.resLE V V' hV) _ _ (mapA_le f U V U' V' hU hV)

theorem mapA_congr {X' X : Scheme.{0}} {f g : X' ⟶ X} (e : f = g) (U V : X.Opens) (U' V' : X'.Opens)
    (hU : U' ≤ f ⁻¹ᵁ U) (hV : V' ≤ f ⁻¹ᵁ V) (hU' : U' ≤ g ⁻¹ᵁ U) (hV' : V' ≤ g ⁻¹ᵁ V) :
    mapA f U V U' V' hU hV = mapA g U V U' V' hU' hV' := by
  subst e; rfl

theorem mapA_id {X : Scheme.{0}} (U V : X.Opens) (hU : U ≤ (𝟙 X) ⁻¹ᵁ U) (hV : V ≤ (𝟙 X) ⁻¹ᵁ V) :
    mapA (𝟙 X) U V U V hU hV = 𝟙 _ := by
  unfold mapA
  rw [opnMap_congr (resLE_id' V hV), ← opnMap_id]
  · rfl

theorem mapA_comp {X'' X' X : Scheme.{0}} (g : X'' ⟶ X') (f : X' ⟶ X) (U V : X.Opens) (U' V' : X'.Opens)
    (U'' V'' : X''.Opens) (hU : U' ≤ f ⁻¹ᵁ U) (hV : V' ≤ f ⁻¹ᵁ V) (hU' : U'' ≤ g ⁻¹ᵁ U') (hV' : V'' ≤ g ⁻¹ᵁ V')
    (hU2 : U'' ≤ (g ≫ f) ⁻¹ᵁ U) (hV2 : V'' ≤ (g ≫ f) ⁻¹ᵁ V) :
    mapA g U' V' U'' V'' hU' hV' ≫ mapA f U V U' V' hU hV = mapA (g ≫ f) U V U'' V'' hU2 hV2 := by
  have e : g.resLE V' V'' hV' ≫ f.resLE V V' hV = (g ≫ f).resLE V V'' hV2 := by
    rw [Scheme.Hom.resLE_comp_resLE]
  have h : V''.ι ⁻¹ᵁ U'' ≤ (g.resLE V' V'' hV' ≫ f.resLE V V' hV) ⁻¹ᵁ (V.ι ⁻¹ᵁ U) := by
    rw [e]; exact mapA_le (g ≫ f) U V U'' V'' hU2 hV2
  unfold mapA
  rw [← opnMap_comp _ _ _ _ _ _ _ h]
  exact opnMap_congr e _ _ _ _

section Sys
variable {A : Type} [CommRing A] {J : Type} [SmallCategory J] (D : J ⥤ CommRingCat.{0})
  (s : (Functor.const J).obj (CommRingCat.of A) ⟶ D)

def oj (I : Ideal A) (j : J) : (Spec (D.obj j)).Opens := off (D.obj j) (I.map (s.app j).hom)

theorem s_nat {j k : J} (f : j ⟶ k) : s.app k = s.app j ≫ D.map f := by
  have := s.naturality f
  simp only [Functor.const_obj_obj, Functor.const_obj_map, Category.id_comp] at this
  exact this

theorem oj_pre (I : Ideal A) {j k : J} (f : j ⟶ k) : oj D s I k = Spec.map (D.map f) ⁻¹ᵁ oj D s I j := by
  unfold oj
  rw [s_nat D s f, CommRingCat.hom_comp]
  exact off_map_comp I (s.app j).hom (D.map f).hom

theorem ojsup_pre (I1 I2 : Ideal A) {j k : J} (f : j ⟶ k) :
    oj D s I1 k ⊔ oj D s I2 k ≤ Spec.map (D.map f) ⁻¹ᵁ (oj D s I1 j ⊔ oj D s I2 j) := by
  intro x hx
  rw [oj_pre D s I1 f, oj_pre D s I2 f] at hx
  exact hx

def sysU (U V : ∀ j, (Spec (D.obj j)).Opens) (hU : ∀ j k (f : j ⟶ k), U k ≤ Spec.map (D.map f) ⁻¹ᵁ U j)
    (hV : ∀ j k (f : j ⟶ k), V k ≤ Spec.map (D.map f) ⁻¹ᵁ V j) : Jᵒᵖ ⥤ Arrow Spc where
  obj j := opn ((V j.unop).ι ⁻¹ᵁ U j.unop)
  map f := mapA (Spec.map (D.map f.unop)) _ _ _ _ (hU _ _ f.unop) (hV _ _ f.unop)
  map_id j := by
    have e : Spec.map (D.map (𝟙 j).unop) = 𝟙 _ := by rw [unop_id, D.map_id, Spec.map_id]
    exact (mapA_congr e _ _ _ _ _ _ (fun x hx => hx) (fun x hx => hx)).trans (mapA_id _ _ _ _)
  map_comp {a b c} f g := by
    have e : Spec.map (D.map (f ≫ g).unop) = Spec.map (D.map f.unop) ≫ Spec.map (D.map g.unop) := by
      rw [unop_comp, D.map_comp, Spec.map_comp]
    exact (mapA_congr e _ _ _ _ _ _ (fun x hx => hU _ _ g.unop (hU _ _ f.unop hx))
      (fun x hx => hV _ _ g.unop (hV _ _ f.unop hx))).trans (mapA_comp _ _ _ _ _ _ _ _ _ _ _ _ _ _).symm

end Sys

theorem exc_nat {X' X : Scheme.{0}} (f : X' ⟶ X) (U V : X.Opens) (U' V' : X'.Opens) (hU : U' ≤ f ⁻¹ᵁ U)
    (hV : V' ≤ f ⁻¹ᵁ V) (hW : U' ⊔ V' ≤ f ⁻¹ᵁ (U ⊔ V)) :
    mapA f U V U' V' hU hV ≫ excMap U V = excMap U' V' ≫ mapA f U (U ⊔ V) U' (U' ⊔ V') hU hW := by
  apply Arrow.hom_ext
  · change sch.map _ ≫ sch.map _ = sch.map _ ≫ sch.map _
    rw [← Functor.map_comp, ← Functor.map_comp]
    congr 1
    rw [← cancel_mono (Scheme.Opens.ι _), ← cancel_mono (Scheme.Opens.ι _)]
    simp only [Category.assoc, Scheme.Hom.resLE_comp_ι, Scheme.homOfLE_ι, Scheme.Hom.resLE_comp_ι_assoc,
      Scheme.homOfLE_ι_assoc]
  · change sch.map _ ≫ sch.map _ = sch.map _ ≫ sch.map _
    rw [← Functor.map_comp, ← Functor.map_comp]
    congr 1
    rw [← cancel_mono (Scheme.Opens.ι _)]
    simp only [Category.assoc, Scheme.Hom.resLE_comp_ι, Scheme.homOfLE_ι, Scheme.homOfLE_ι_assoc]

section Glue
variable {A B : Type} [CommRing A] [CommRing B] (φ : A →+* B) (I1 I2 : Ideal A) {J : Type} [SmallCategory J]
  (D : J ⥤ CommRingCat.{0}) (s : (Functor.const J).obj (CommRingCat.of A) ⟶ D)
  (t : D ⟶ (Functor.const J).obj (CommRingCat.of B))

theorem oinf_pre (I : Ideal A) (he : ∀ j, s.app j ≫ t.app j = CommRingCat.ofHom φ) (j : J) :
    off B (I.map φ) = Spec.map (t.app j) ⁻¹ᵁ oj D s I j := by
  have h : φ = (t.app j).hom.comp (s.app j).hom := by rw [← CommRingCat.hom_comp, he]; rfl
  unfold oj
  rw [h]
  exact off_map_comp I (s.app j).hom (t.app j).hom

def sysA : Jᵒᵖ ⥤ Arrow Spc :=
  sysU D (oj D s I1) (oj D s I2) (fun _ _ f => (oj_pre D s I1 f).le) (fun _ _ f => (oj_pre D s I2 f).le)

def sysB : Jᵒᵖ ⥤ Arrow Spc :=
  sysU D (oj D s I1) (fun j => oj D s I1 j ⊔ oj D s I2 j) (fun _ _ f => (oj_pre D s I1 f).le)
    (fun _ _ f => ojsup_pre D s I1 I2 f)

def limA : Arrow Spc := opn ((off B (I2.map φ)).ι ⁻¹ᵁ off B (I1.map φ))
def limB : Arrow Spc := opn ((off B (I1.map φ) ⊔ off B (I2.map φ)).ι ⁻¹ᵁ off B (I1.map φ))

def conA (he : ∀ j, s.app j ≫ t.app j = CommRingCat.ofHom φ) (j : J) : limA φ I1 I2 ⟶ (sysA I1 I2 D s).obj (op j) :=
  mapA (Spec.map (t.app j)) _ _ _ _ (oinf_pre φ D s t I1 he j).le (oinf_pre φ D s t I2 he j).le

theorem oinfsup_pre (he : ∀ j, s.app j ≫ t.app j = CommRingCat.ofHom φ) (j : J) :
    off B (I1.map φ) ⊔ off B (I2.map φ) ≤ Spec.map (t.app j) ⁻¹ᵁ (oj D s I1 j ⊔ oj D s I2 j) := by
  intro x hx
  rw [oinf_pre φ D s t I1 he j, oinf_pre φ D s t I2 he j] at hx
  exact hx

def conB (he : ∀ j, s.app j ≫ t.app j = CommRingCat.ofHom φ) (j : J) : limB φ I1 I2 ⟶ (sysB I1 I2 D s).obj (op j) :=
  mapA (Spec.map (t.app j)) _ _ _ _ (oinf_pre φ D s t I1 he j).le (oinfsup_pre φ I1 I2 D s t he j)

def excAB : sysA I1 I2 D s ⟶ sysB I1 I2 D s where
  app j := excMap (oj D s I1 j.unop) (oj D s I2 j.unop)
  naturality a b f := exc_nat _ _ _ _ _ (oj_pre D s I1 f.unop).le (oj_pre D s I2 f.unop).le _

theorem t_nat {j k : J} (f : j ⟶ k) : D.map f ≫ t.app k = t.app j := by
  have := t.naturality f
  simpa using this

theorem conA_comp (he : ∀ j, s.app j ≫ t.app j = CommRingCat.ofHom φ) (j k : J) (f : j ⟶ k) :
    conA φ I1 I2 D s t he k ≫ (sysA I1 I2 D s).map f.op = conA φ I1 I2 D s t he j := by
  have e : Spec.map (t.app k) ≫ Spec.map (D.map f) = Spec.map (t.app j) := by
    rw [← Spec.map_comp, t_nat D t f]
  exact (mapA_comp (Spec.map (t.app k)) (Spec.map (D.map f)) (oj D s I1 j) (oj D s I2 j) (oj D s I1 k) (oj D s I2 k)
    (off B (I1.map φ)) (off B (I2.map φ)) (oj_pre D s I1 f).le ((oj_pre D s I2 f).le) (oinf_pre φ D s t I1 he k).le ((oinf_pre φ D s t I2 he k).le)
    (by rw [e]; exact (oinf_pre φ D s t I1 he j).le) (by rw [e]; exact (oinf_pre φ D s t I2 he j).le)).trans (mapA_congr e _ _ _ _ _ _ _ _)

theorem conB_comp (he : ∀ j, s.app j ≫ t.app j = CommRingCat.ofHom φ) (j k : J) (f : j ⟶ k) :
    conB φ I1 I2 D s t he k ≫ (sysB I1 I2 D s).map f.op = conB φ I1 I2 D s t he j := by
  have e : Spec.map (t.app k) ≫ Spec.map (D.map f) = Spec.map (t.app j) := by
    rw [← Spec.map_comp, t_nat D t f]
  exact (mapA_comp (Spec.map (t.app k)) (Spec.map (D.map f)) (oj D s I1 j) (oj D s I1 j ⊔ oj D s I2 j) (oj D s I1 k) (oj D s I1 k ⊔ oj D s I2 k)
    (off B (I1.map φ)) (off B (I1.map φ) ⊔ off B (I2.map φ)) (oj_pre D s I1 f).le (ojsup_pre D s I1 I2 f) (oinf_pre φ D s t I1 he k).le (oinfsup_pre φ I1 I2 D s t he k)
    (by rw [e]; exact (oinf_pre φ D s t I1 he j).le) (by rw [e]; exact oinfsup_pre φ I1 I2 D s t he j)).trans (mapA_congr e _ _ _ _ _ _ _ _)

theorem conAB (he : ∀ j, s.app j ≫ t.app j = CommRingCat.ofHom φ) (j : J) :
    conA φ I1 I2 D s t he j ≫ (excAB I1 I2 D s).app (op j) =
      excMap (off B (I1.map φ)) (off B (I2.map φ)) ≫ conB φ I1 I2 D s t he j :=
  exc_nat _ _ _ _ _ _ _ _

end Glue

section Leaves

theorem contR_A (q : ℕ) {A B : Type} [CommRing A] [CommRing B] (φ : A →+* B) (I1 I2 : Ideal A) {J : Type}
    [SmallCategory J] (D : J ⥤ CommRingCat.{0}) (s : (Functor.const J).obj (CommRingCat.of A) ⟶ D)
    (t : D ⟶ (Functor.const J).obj (CommRingCat.of B)) (he : ∀ j, s.app j ≫ t.app j = CommRingCat.ofHom φ)
    (m i : ℤ) (H : HtOffCont q φ I2 D s t m i) :
    ContR q (sysA I1 I2 D s) (limA φ I1 I2) (conA φ I1 I2 D s t he) m i := by
  refine ⟨fun x => ?_, fun j y hy => ?_⟩
  · obtain ⟨j, _h, y, hy⟩ := H.1 x
    exact ⟨j, y, hy⟩
  · obtain ⟨k, f, _h, hk⟩ := H.2 j (oinf_pre φ D s t I2 he j).le y hy
    exact ⟨k, f, hk⟩

def OCG_AL : Prop := ∀ (q : ℕ) {A B : Type} [CommRing A] [CommRing B] (φ : A →+* B) (I1 I2 : Ideal A) (J : Type)
  [SmallCategory J] [IsFiltered J] (D : J ⥤ CommRingCat.{0}) (s : (Functor.const J).obj (CommRingCat.of A) ⟶ D)
  (t : D ⟶ (Functor.const J).obj (CommRingCat.of B)), IsColimit (Cocone.mk _ t) →
  ∀ (he : ∀ j, s.app j ≫ t.app j = CommRingCat.ofHom φ) (m i : ℤ), HtOffCont q φ (I1 * I2) D s t m i →
  ContL q (sysA I1 I2 D s) (limA φ I1 I2) (conA φ I1 I2 D s t he) m i

def OCG_BL : Prop := ∀ (q : ℕ) {A B : Type} [CommRing A] [CommRing B] (φ : A →+* B) (I1 I2 : Ideal A) (J : Type)
  [SmallCategory J] [IsFiltered J] (D : J ⥤ CommRingCat.{0}) (s : (Functor.const J).obj (CommRingCat.of A) ⟶ D)
  (t : D ⟶ (Functor.const J).obj (CommRingCat.of B)), IsColimit (Cocone.mk _ t) →
  ∀ (he : ∀ j, s.app j ≫ t.app j = CommRingCat.ofHom φ) (m i : ℤ), HtOffCont q φ I1 D s t m i →
  ContL q (sysB I1 I2 D s) (limB φ I1 I2) (conB φ I1 I2 D s t he) m i

def OCG_BR : Prop := ∀ (q : ℕ) {A B : Type} [CommRing A] [CommRing B] (φ : A →+* B) (I1 I2 : Ideal A) (J : Type)
  [SmallCategory J] [IsFiltered J] (D : J ⥤ CommRingCat.{0}) (s : (Functor.const J).obj (CommRingCat.of A) ⟶ D)
  (t : D ⟶ (Functor.const J).obj (CommRingCat.of B)), IsColimit (Cocone.mk _ t) →
  ∀ (he : ∀ j, s.app j ≫ t.app j = CommRingCat.ofHom φ) (n i : ℤ),
  ContR q (sysB I1 I2 D s) (limB φ I1 I2) (conB φ I1 I2 D s t he) n i → HtOffCont q φ (I1 ⊔ I2) D s t n i

end Leaves

theorem OffChaseGeo_of (hAL : OCG_AL) (hBL : OCG_BL) (hBR : OCG_BR) : OffChaseGeo := by
  intro hS5 hR5 bd exc q A B _ _ φ I1 I2 _ J _ _ D s t hc he i h1 h2 h12 n
  exact hBR q φ I1 I2 J D s t hc he n i
    (chase_abs hS5 hR5 bd q (sysA I1 I2 D s) (sysB I1 I2 D s) (limA φ I1 I2) (limB φ I1 I2)
      (conA φ I1 I2 D s t he) (conB φ I1 I2 D s t he) (conA_comp φ I1 I2 D s t he) (conB_comp φ I1 I2 D s t he)
      (fun _ => opn_mono _) (fun _ => opn_mono _) (opn_mono _) (opn_mono _) (excAB I1 I2 D s)
      (excMap (off B (I1.map φ)) (off B (I2.map φ))) (conAB φ I1 I2 D s t he)
      (fun j => exc q _ _ _) (exc q _ _ _) i
      (fun m => hAL q φ I1 I2 J D s t hc he m i (h12 m))
      (fun m => contR_A q φ I1 I2 D s t he m i (h2 m))
      (fun m => hBL q φ I1 I2 J D s t hc he m i (h1 m)) n)

end LateralTheory.CohomologicalPurity
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.OffChaseGeoOf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.ResLECompIsoOpenInfPreimageHomNaturality =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.ResLECompIsoOpenInfPreimageHomNaturality", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.OffChaseGeoOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity

theorem ht_transport (q : ℕ) {J : Type} [SmallCategory J] (X Y : J → Spc) (X0 Y0 : Spc) (a : ∀ j, X0 ⟶ X j)
    (b : ∀ j, Y0 ⟶ Y j) (ma : ∀ {j k : J} (_ : j ⟶ k), X k ⟶ X j) (mb : ∀ {j k : J} (_ : j ⟶ k), Y k ⟶ Y j)
    (α : ∀ j, X j ≅ Y j) (α0 : X0 ≅ Y0) (hab : ∀ j, a j ≫ (α j).hom = α0.hom ≫ b j)
    (hm : ∀ j k (f : j ⟶ k), ma f ≫ (α j).hom = (α k).hom ≫ mb f) (n i : ℤ)
    (H : (∀ x : Ht q X0 n i, ∃ j, ∃ y, pull _ (a j) (tw q i) n y = x) ∧
      ∀ j y, pull _ (a j) (tw q i) n y = 0 → ∃ (k : J) (f : j ⟶ k), pull _ (ma f) (tw q i) n y = 0) :
    (∀ x : Ht q Y0 n i, ∃ j, ∃ y, pull _ (b j) (tw q i) n y = x) ∧
      ∀ j y, pull _ (b j) (tw q i) n y = 0 → ∃ (k : J) (f : j ⟶ k), pull _ (mb f) (tw q i) n y = 0 := by
  have hba : ∀ j, b j ≫ (α j).inv = α0.inv ≫ a j := fun j => by
    rw [Iso.comp_inv_eq, Category.assoc, hab, Iso.inv_hom_id_assoc]
  refine ⟨fun x => ?_, fun j y hy => ?_⟩
  · obtain ⟨j, y, hy⟩ := H.1 (pull _ α0.hom (tw q i) n x)
    refine ⟨j, pull _ (α j).inv (tw q i) n y, ?_⟩
    rw [← pull_comp, hba, pull_comp, hy, ← pull_comp, Iso.inv_hom_id, pull_id]
  · have h0 : pull _ (a j) (tw q i) n (pull _ (α j).hom (tw q i) n y) = 0 := by
      rw [← pull_comp, hab, pull_comp, hy, map_zero]
    obtain ⟨k, f, hk⟩ := H.2 j _ h0
    refine ⟨k, f, ?_⟩
    have : pull _ (mb f) (tw q i) n y = pull _ (α k).inv (tw q i) n (pull _ (ma f) (tw q i) n (pull _ (α j).hom (tw q i) n y)) := by
      rw [← pull_comp, ← pull_comp, Category.assoc, hm, Iso.inv_hom_id_assoc]
    rw [this, hk, map_zero]

theorem oj_sup_eq {A : Type} [CommRing A] {J : Type} [SmallCategory J] (D : J ⥤ CommRingCat.{0})
    (s : (Functor.const J).obj (CommRingCat.of A) ⟶ D) (I1 I2 : Ideal A) (j : J) :
    oj D s I1 j ⊔ oj D s I2 j = oj D s (I1 ⊔ I2) j := by
  unfold oj; rw [Ideal.map_sup, off_sup]

theorem sq_iso {X' X : Scheme.{0}} (f : X' ⟶ X) (V W : X.Opens) (V' W' : X'.Opens) (e : V = W) (e' : V' = W')
    (h1 : V' ≤ f ⁻¹ᵁ V) (h2 : W' ≤ f ⁻¹ᵁ W) :
    sch.map (f.resLE V V' h1) ≫ sch.map (X.isoOfEq e).hom = sch.map (X'.isoOfEq e').hom ≫ sch.map (f.resLE W W' h2) := by
  rw [← Functor.map_comp, ← Functor.map_comp]
  congr 1
  rw [← cancel_mono W.ι]
  simp only [Category.assoc, Scheme.isoOfEq_hom_ι, Scheme.Hom.resLE_comp_ι, Scheme.isoOfEq_hom_ι_assoc]

theorem ocg_BR : OCG_BR := by
  intro q A B _ _ φ I1 I2 J _ _ D s t hc he n i H
  have T := ht_transport q (fun j => sch.obj (oj D s I1 j ⊔ oj D s I2 j).toScheme)
    (fun j => sch.obj (oj D s (I1 ⊔ I2) j).toScheme)
    (sch.obj (off B (I1.map φ) ⊔ off B (I2.map φ)).toScheme) (sch.obj (off B ((I1 ⊔ I2).map φ)).toScheme)
    (fun j => (conB φ I1 I2 D s t he j).right)
    (fun j => (opnMap (Spec.map (t.app j)) _ _ (oinf_pre φ D s t (I1 ⊔ I2) he j).le).left)
    (fun f => ((sysB I1 I2 D s).map f.op).right)
    (fun f => (opnMap (Spec.map (D.map f)) _ _ (oj_pre D s (I1 ⊔ I2) f).le).left)
    (fun j => sch.mapIso (Scheme.isoOfEq _ (oj_sup_eq D s I1 I2 j)))
    (sch.mapIso (Scheme.isoOfEq _ (by rw [Ideal.map_sup, off_sup])))
    (fun j => sq_iso _ _ _ _ _ _ _ _ _) (fun j k f => sq_iso _ _ _ _ _ _ _ _ _) n i H
  refine ⟨fun x => ?_, fun j h y hy => ?_⟩
  · obtain ⟨j, y, hy⟩ := T.1 x
    exact ⟨j, (oinf_pre φ D s t (I1 ⊔ I2) he j).le, y, hy⟩
  · obtain ⟨k, f, hk⟩ := T.2 j y hy
    exact ⟨k, f, (oj_pre D s (I1 ⊔ I2) f).le, hk⟩

theorem sq_le {X' X : Scheme.{0}} (f : X' ⟶ X) (U V : X.Opens) (U' V' : X'.Opens) (hUV : U ≤ V) (hUV' : U' ≤ V')
    (h1 : U' ≤ f ⁻¹ᵁ U) (hV : V' ≤ f ⁻¹ᵁ V) (h3 : V'.ι ⁻¹ᵁ U' ≤ (f.resLE V V' hV) ⁻¹ᵁ (V.ι ⁻¹ᵁ U)) :
    sch.map (f.resLE U U' h1) ≫ sch.map (Scheme.Opens.isoOfLE hUV).inv =
      sch.map (Scheme.Opens.isoOfLE hUV').inv ≫ sch.map ((f.resLE V V' hV).resLE (V.ι ⁻¹ᵁ U) (V'.ι ⁻¹ᵁ U') h3) := by
  rw [← Functor.map_comp, ← Functor.map_comp]
  congr 1
  rw [← cancel_mono (Scheme.Opens.ι _), ← cancel_mono (Scheme.Opens.ι _)]
  simp only [Category.assoc, Scheme.Hom.resLE_comp_ι, Scheme.Opens.isoOfLE_inv_ι,
    Scheme.Opens.isoOfLE_inv_ι_assoc]

theorem ocg_BL : OCG_BL := by
  intro q A B _ _ φ I1 I2 J _ _ D s t hc he m i H
  have T := ht_transport q (fun j => sch.obj (oj D s I1 j).toScheme)
    (fun j => ((sysB I1 I2 D s).obj (op j)).left)
    (sch.obj (off B (I1.map φ)).toScheme) (limB φ I1 I2).left
    (fun j => (opnMap (Spec.map (t.app j)) _ _ (oinf_pre φ D s t I1 he j).le).left)
    (fun j => (conB φ I1 I2 D s t he j).left)
    (fun f => (opnMap (Spec.map (D.map f)) _ _ (oj_pre D s I1 f).le).left)
    (fun f => ((sysB I1 I2 D s).map f.op).left)
    (fun j => sch.mapIso (Scheme.Opens.isoOfLE (le_sup_left : oj D s I1 j ≤ oj D s I1 j ⊔ oj D s I2 j)).symm)
    (sch.mapIso (Scheme.Opens.isoOfLE (le_sup_left : off B (I1.map φ) ≤ off B (I1.map φ) ⊔ off B (I2.map φ))).symm)
    (fun j => sq_le _ _ _ _ _ le_sup_left le_sup_left _ _ _) (fun j k f => sq_le _ _ _ _ _ le_sup_left le_sup_left _ _ _) m i
    ⟨fun x => let ⟨j, _, y, hy⟩ := H.1 x; ⟨j, y, hy⟩, fun j y hy => let ⟨k, f, _, hk⟩ := H.2 j _ y hy; ⟨k, f, hk⟩⟩
  exact T

theorem pre_inf {X : Scheme.{0}} (U V : X.Opens) : V.ι ⁻¹ᵁ (U ⊓ V) = V.ι ⁻¹ᵁ U := by
  apply le_antisymm
  · intro x hx; exact hx.1
  · intro x hx
    refine ⟨hx, ?_⟩
    change V.ι x ∈ (V : Set X)
    rw [← Scheme.Opens.range_ι]
    exact ⟨x, rfl⟩

theorem oj_mul_eq {A : Type} [CommRing A] {J : Type} [SmallCategory J] (D : J ⥤ CommRingCat.{0})
    (s : (Functor.const J).obj (CommRingCat.of A) ⟶ D) (I1 I2 : Ideal A) (j : J) :
    oj D s (I1 * I2) j = oj D s I1 j ⊓ oj D s I2 j := by
  unfold oj; rw [Ideal.map_mul, off_mul]

def isoW {X : Scheme.{0}} (U V W : X.Opens) (e : W = U ⊓ V) : W.toScheme ≅ (V.ι ⁻¹ᵁ U).toScheme :=
  X.isoOfEq e ≪≫ (Scheme.Opens.isoOfLE (inf_le_right : U ⊓ V ≤ V)).symm ≪≫ Scheme.isoOfEq _ (pre_inf U V)

theorem isoW_ι {X : Scheme.{0}} (U V W : X.Opens) (e : W = U ⊓ V) :
    (isoW U V W e).hom ≫ (V.ι ⁻¹ᵁ U).ι ≫ V.ι = W.ι := by
  simp [isoW]

theorem resLE_comp_isoOpenInfPreimage_hom_naturality {X' X : Scheme.{0}} (f : X' ⟶ X) (U V W : X.Opens) (U' V' W' : X'.Opens) (e : W = U ⊓ V)
    (e' : W' = U' ⊓ V') (h1 : W' ≤ f ⁻¹ᵁ W) (hV : V' ≤ f ⁻¹ᵁ V) (h3 : V'.ι ⁻¹ᵁ U' ≤ (f.resLE V V' hV) ⁻¹ᵁ (V.ι ⁻¹ᵁ U)) :
    sch.map (f.resLE W W' h1) ≫ sch.map (isoW U V W e).hom =
      sch.map (isoW U' V' W' e').hom ≫ sch.map ((f.resLE V V' hV).resLE (V.ι ⁻¹ᵁ U) (V'.ι ⁻¹ᵁ U') h3) := by
  rw [← Functor.map_comp, ← Functor.map_comp]
  congr 1
  rw [← cancel_mono (Scheme.Opens.ι _), ← cancel_mono (Scheme.Opens.ι _)]
  simp only [Category.assoc, Scheme.Hom.resLE_comp_ι, isoW_ι]
  rw [← Category.assoc (isoW U' V' W' e').hom, ← Category.assoc ((isoW U' V' W' e').hom ≫ _), Category.assoc (isoW U' V' W' e').hom, isoW_ι]

theorem ocg_AL : OCG_AL := by
  intro q A B _ _ φ I1 I2 J _ _ D s t hc he m i H
  have T := ht_transport q (fun j => sch.obj (oj D s (I1 * I2) j).toScheme)
    (fun j => ((sysA I1 I2 D s).obj (op j)).left)
    (sch.obj (off B ((I1 * I2).map φ)).toScheme) (limA φ I1 I2).left
    (fun j => (opnMap (Spec.map (t.app j)) _ _ (oinf_pre φ D s t (I1 * I2) he j).le).left)
    (fun j => (conA φ I1 I2 D s t he j).left)
    (fun f => (opnMap (Spec.map (D.map f)) _ _ (oj_pre D s (I1 * I2) f).le).left)
    (fun f => ((sysA I1 I2 D s).map f.op).left)
    (fun j => sch.mapIso (isoW _ _ _ (oj_mul_eq D s I1 I2 j)))
    (sch.mapIso (isoW _ _ _ (by rw [Ideal.map_mul, off_mul])))
    (fun j => resLE_comp_isoOpenInfPreimage_hom_naturality _ _ _ _ _ _ _ _ _ _ _ _) (fun j k f => resLE_comp_isoOpenInfPreimage_hom_naturality _ _ _ _ _ _ _ _ _ _ _ _) m i
    ⟨fun x => let ⟨j, _, y, hy⟩ := H.1 x; ⟨j, y, hy⟩, fun j y hy => let ⟨k, f, _, hk⟩ := H.2 j _ y hy; ⟨k, f, hk⟩⟩
  exact T

theorem OffChaseGeo_full : OffChaseGeo := OffChaseGeo_of ocg_AL ocg_BL ocg_BR

end LateralTheory.CohomologicalPurity
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.ResLECompIsoOpenInfPreimageHomNaturality =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.FixLeafIndExc =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.FixLeafIndExc", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafHsContPf\npublic import Development.EtaleCohomology.CohomologicalPurity.EtalePurityContinuityOffClosedOfLocalAndChase\npublic import Development.EtaleCohomology.CohomologicalPurity.FreePMapMk\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafDeltaPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExactPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExcDegPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExcIdentPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafFreeCokInjPf\nimport Development.EtaleCohomology.CohomologicalPurity.LeafFreeCokPfSurj\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafGoodPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafHsContPfFive\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafImgHomPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafImgPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafInjGeoPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafMonoPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafNbhdExcPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafSurjGeoPf\npublic import Development.EtaleCohomology.CohomologicalPurity.OffContBasicPfR\npublic import Development.EtaleCohomology.CohomologicalPurity.OffContLocKnxPf\npublic import Development.EtaleCohomology.CohomologicalPurity.PresSheafify\npublic import Development.EtaleCohomology.CohomologicalPurity.ResLECompIsoOpenInfPreimageHomNaturality\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExcSheafCut\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fix.LeafIndExc
open LateralTheory.CohomologicalPurity

theorem bd : LeafBd :=
  Bd.goal_of Bd.LeafMono_of Bd.LeafPush_of Bd.LeafGood_of Bd.LeafDelta_of Bd.LeafExact_of
    (Bd.LeafImg_of (Bd.LeafImgHom_of Bd.LeafGen_of))

theorem exc : LeafExc :=
  LeafExc_of (LeafExcFormal_of EtaleExcIdent LeafExcDeg_of)
    (LeafExcSheaf_of (LeafFreeCok_of_inj LeafFreeCokInj_of) LeafSurjGeo_of LeafInjGeo_of)

theorem offCont : LeafOffCont :=
  leafOffCont_of offContBasic_of (etale_purity_continuity_off_closed_of_local_and_chase OffContLoc_of OffChaseGeo_full)

theorem intersectionNumber_baseChange : LeafIndExc :=
  leafIndExc_of (leafNbhdExc_of exc) (leafHsCont_of' bd exc offCont)

end LateralTheory.Fix.LeafIndExc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.FixLeafIndExc =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.FinLeafIndExc =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.FinLeafIndExc", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafBdCut\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExcFormalPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafFreeCokPf\npublic import Development.EtaleCohomology.CohomologicalPurity.FixLeafIndExc\nimport Development.EtaleCohomology.CohomologicalPurity.FreePMapMk\nimport Development.EtaleCohomology.CohomologicalPurity.LeafDeltaPf\nimport Development.EtaleCohomology.CohomologicalPurity.LeafExactPf\nimport Development.EtaleCohomology.CohomologicalPurity.LeafExcDegPf\nimport Development.EtaleCohomology.CohomologicalPurity.LeafExcIdentPf\nimport Development.EtaleCohomology.CohomologicalPurity.LeafFreeCokInjPf\nimport Development.EtaleCohomology.CohomologicalPurity.LeafFreeCokPfSurj\nimport Development.EtaleCohomology.CohomologicalPurity.LeafGoodPf\nimport Development.EtaleCohomology.CohomologicalPurity.LeafImgHomPf\nimport Development.EtaleCohomology.CohomologicalPurity.LeafImgPf\nimport Development.EtaleCohomology.CohomologicalPurity.LeafInjGeoPf\nimport Development.EtaleCohomology.CohomologicalPurity.LeafMonoPf\nimport Development.EtaleCohomology.CohomologicalPurity.LeafSurjGeoPf\nimport Development.EtaleCohomology.CohomologicalPurity.PresSheafify\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.LeafIndExc
theorem etale_boundary_monomorphism_of_thom_isomorphism : LateralTheory.CohomologicalPurity.Bd.LeafMono := by
  apply LateralTheory.CohomologicalPurity.Bd.LeafMono_of
theorem etale_relative_boundary_pushout_property_holds : LateralTheory.CohomologicalPurity.Bd.LeafPush := by
  apply LateralTheory.CohomologicalPurity.Bd.LeafPush_of
theorem etale_boundary_good_pair_of_thom_isomorphism : LateralTheory.CohomologicalPurity.Bd.LeafGood := by
  apply LateralTheory.CohomologicalPurity.Bd.LeafGood_of
theorem etale_boundary_connecting_of_thom_isomorphism : LateralTheory.CohomologicalPurity.Bd.LeafDelta := by
  apply LateralTheory.CohomologicalPurity.Bd.LeafDelta_of
theorem etale_boundary_exact_of_thom_isomorphism : LateralTheory.CohomologicalPurity.Bd.LeafExact := by
  apply LateralTheory.CohomologicalPurity.Bd.LeafExact_of
theorem etale_boundary_generator_of_thom_isomorphism : LateralTheory.CohomologicalPurity.Bd.LeafGen := by
  apply LateralTheory.CohomologicalPurity.Bd.LeafGen_of
theorem etale_boundary_image_hom_of_thom_isomorphism : LateralTheory.CohomologicalPurity.Bd.LeafImgHom := by
  apply LateralTheory.CohomologicalPurity.Bd.LeafImgHom_of <;> first | exact etale_boundary_generator_of_thom_isomorphism
theorem etale_boundary_image_of_thom_isomorphism : LateralTheory.CohomologicalPurity.Bd.LeafImg := by
  apply LateralTheory.CohomologicalPurity.Bd.LeafImg_of <;> first | exact etale_boundary_image_hom_of_thom_isomorphism
theorem etale_boundary_map_of_thom_isomorphism : LateralTheory.CohomologicalPurity.LeafBd := by
  apply LateralTheory.CohomologicalPurity.Bd.goal_of <;> first | exact etale_boundary_monomorphism_of_thom_isomorphism | exact etale_relative_boundary_pushout_property_holds | exact etale_boundary_good_pair_of_thom_isomorphism | exact etale_boundary_connecting_of_thom_isomorphism | exact etale_boundary_exact_of_thom_isomorphism | exact etale_boundary_generator_of_thom_isomorphism | exact etale_boundary_image_hom_of_thom_isomorphism | exact etale_boundary_image_of_thom_isomorphism
alias intersectionNumber_baseChange := _root_.LateralTheory.Fix.LeafIndExc.intersectionNumber_baseChange
end LateralTheory.Fin.LeafIndExc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.FinLeafIndExc =====
