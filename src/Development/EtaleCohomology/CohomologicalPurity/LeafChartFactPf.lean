module

public import Development.EtaleCohomology.CohomologicalPurity.LeafThomCut
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.CohomologicalPurity.LeafExcPPf, Development.EtaleCohomology.CohomologicalPurity.LeafChartFactPf

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafExcPPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafExcPPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafThomCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity.Thom.ExcP

def LeafFive : Prop := ∀ δ, IsBd δ → ∀ (q : ℕ) {P' P : Arrow Spc} (φ : P' ⟶ P), Mono P'.hom → Mono P.hom →
  (∀ i, Eqv _ φ.left (tw q i)) → (∀ i, Eqv _ φ.right (tw q i)) → Exc q φ

def LeafChartFact : Prop := Hyp → ∀ (q : ℕ) [NeZero q] (d : ℕ) (R : Type) [CommRing R]
  (I : Ideal (MvPolynomial (Fin d) R)), Ideal.span (Set.range MvPolynomial.X) = I → IsUnit (q : R) →
  ∀ Φ : opn (off (MvPolynomial (Fin d) R) I) ⟶ pr d R,
  Φ.right = (prod.lift (Pj.pt (vec1 MvPolynomial.X)) (spMap MvPolynomial.C) :
    sp (MvPolynomial (Fin d) R) ⟶ PR (d + 1) 0 R) →
  ∃ (P : Arrow Spc) (α : opn (off (MvPolynomial (Fin d) R) I) ⟶ P) (β : P ⟶ pr d R), α ≫ β = Φ ∧
    Mono (opn (off (MvPolynomial (Fin d) R) I)).hom ∧ Mono P.hom ∧
    (∀ i, Eqv _ α.left (tw q i)) ∧ (∀ i, Eqv _ α.right (tw q i)) ∧
    IsPullback P.hom β.left β.right (pr d R).hom ∧ Cover2 (ZMod q) β.right (pr d R).hom

theorem pull_comp_apply (q : ℕ) {P'' P' P : Arrow Spc} (α : P'' ⟶ P') (β : P' ⟶ P) (n i : ℤ) (x : Hs q P n i) :
    Hs.pull q (α ≫ β) n i x = Hs.pull q α n i (Hs.pull q β n i x) := by
  apply Subtype.ext
  change GlobalTheory.EtC.pull _ (dbl.map (α ≫ β)) _ n x.1 = GlobalTheory.EtC.pull _ (dbl.map α) _ n (GlobalTheory.EtC.pull _ (dbl.map β) _ n x.1)
  rw [_root_.LateralTheory.CohomologicalPurity.Thom.map_comp, pull_comp]

theorem exc_comp (q : ℕ) {P'' P' P : Arrow Spc} (α : P'' ⟶ P') (β : P' ⟶ P) (hα : Exc q α) (hβ : Exc q β) :
    Exc q (α ≫ β) := fun n i => by
  have : (Hs.pull q (α ≫ β) n i : Hs q P n i → Hs q P'' n i) = Hs.pull q α n i ∘ Hs.pull q β n i :=
    funext (pull_comp_apply q α β n i)
  rw [this]
  exact (hα n i).comp (hβ n i)

theorem fgt_pull (q : ℕ) {P' P : Arrow Spc} (φ : P' ⟶ P) (n i : ℤ) (x : Hs q P n i) :
    Hs.fgt q P' n i (Hs.pull q φ n i x) = GlobalTheory.EtC.pull _ φ.right _ n (Hs.fgt q P n i x) := by
  change GlobalTheory.EtC.pull _ (dbl.inl P') _ n (GlobalTheory.EtC.pull _ (dbl.map φ) _ n x.1) =
    GlobalTheory.EtC.pull _ φ.right _ n (GlobalTheory.EtC.pull _ (dbl.inl P) _ n x.1)
  rw [← pull_comp, inl_map, pull_comp]

theorem res_pull (q : ℕ) {P' P : Arrow Spc} (φ : P' ⟶ P) (n i : ℤ) (c : Ht q P.right n i) :
    GlobalTheory.EtC.pull _ P'.hom (tw q i) n (GlobalTheory.EtC.pull _ φ.right _ n c) =
      GlobalTheory.EtC.pull _ φ.left _ n (GlobalTheory.EtC.pull _ P.hom (tw q i) n c) := by
  rw [← pull_comp, ← pull_comp, Arrow.w φ]

theorem five (δ : ∀ (q : ℕ) (P : Arrow Spc) (n i : ℤ), Ht q P.left n i →+ Hs q P (n + 1) i) (hδ : IsBd δ)
    (q : ℕ) {P' P : Arrow Spc} (φ : P' ⟶ P) (h' : Mono P'.hom) (h : Mono P.hom)
    (hl : ∀ i, Eqv _ φ.left (tw q i)) (hr : ∀ i, Eqv _ φ.right (tw q i)) (m i : ℤ) :
    Function.Bijective (Hs.pull q φ (m + 1) i) := by
  obtain ⟨hex, hnat, -⟩ := hδ
  obtain ⟨-, e2, e3⟩ := hex q P h m i
  obtain ⟨-, e2', e3'⟩ := hex q P' h' m i
  obtain ⟨e1, -, -⟩ := hex q P h (m + 1) i
  obtain ⟨e1', -, -⟩ := hex q P' h' (m + 1) i
  constructor
  · rw [injective_iff_map_eq_zero]
    intro x hx
    have hf : Hs.fgt q P (m + 1) i x = 0 := by
      apply (hr i (m + 1)).1
      rw [← fgt_pull, hx, map_zero, map_zero]
    obtain ⟨u, rfl⟩ := (e3 x).1 hf
    have hu : δ q P' m i (GlobalTheory.EtC.pull _ φ.left _ m u) = 0 := by rw [← hnat q P' P φ h' h m i u]; exact hx
    obtain ⟨w', hw'⟩ := (e2' _).1 hu
    obtain ⟨w, rfl⟩ := (hr i m).2 w'
    rw [res_pull] at hw'
    have := (hl i m).1 hw'
    rw [← this]
    exact (e2 _).2 ⟨w, rfl⟩
  · intro y
    obtain ⟨c, hc⟩ := (hr i (m + 1)).2 (Hs.fgt q P' (m + 1) i y)
    have hc0 : GlobalTheory.EtC.pull _ P.hom (tw q i) (m + 1) c = 0 := by
      apply (hl i (m + 1)).1
      rw [← res_pull, hc, map_zero]
      exact (e1' _).2 ⟨y, rfl⟩
    obtain ⟨x, hx⟩ := (e1 c).1 hc0
    have hd : Hs.fgt q P' (m + 1) i (y - Hs.pull q φ (m + 1) i x) = 0 := by
      rw [map_sub, fgt_pull, hx, hc, sub_self]
    obtain ⟨u', hu'⟩ := (e3' _).1 hd
    obtain ⟨u, rfl⟩ := (hl i m).2 u'
    refine ⟨x + δ q P m i u, ?_⟩
    rw [map_add (f := _), hnat q P' P φ h' h m i u, hu', add_sub_cancel]

theorem leafFive : LeafFive := by
  intro δ hδ q P' P φ h' h hl hr n i
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by ring⟩
  exact five δ hδ q φ h' h hl hr m i

end LateralTheory.CohomologicalPurity.Thom.ExcP

namespace LateralTheory.CohomologicalPurity.Thom

theorem excision_of_thom_chart_factorization (hBd : LeafBd) (hSp : LeafExcSp) (hFact : ExcP.LeafChartFact) :
    LeafExcP := by
  intro hH q _ d R _ I hI hq Φ hΦ
  obtain ⟨δ, hδ⟩ := hBd
  obtain ⟨P, α, β, hαβ, hm1, hm2, hl, hr, hpb, hcov⟩ := hFact hH q d R I hI hq Φ hΦ
  rw [← hαβ]
  exact ExcP.exc_comp q α β (ExcP.leafFive δ hδ q α hm1 hm2 hl hr) (hSp hH.1 q β hpb hcov)

end LateralTheory.CohomologicalPurity.Thom
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafExcPPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafChartFactPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafChartFactPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExcPPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity.Thom.ExcP.Chart

def WVec (d : ℕ) (U : Scheme.{0}) : Type := {v : Vec (d + 1) 0 U // IsUnit (v.1 0)}

instance (d : ℕ) (U : Scheme.{0}) : SmallCategory (WVec d U) where
  Hom v w := v.1 ⟶ w.1
  id v := 𝟙 v.1
  comp f g := f ≫ g
  id_comp f := Category.id_comp (obj := Vec (d + 1) 0 U) f
  comp_id f := Category.comp_id (obj := Vec (d + 1) 0 U) f
  assoc f g h := Category.assoc (obj := Vec (d + 1) 0 U) f g h

def WVec.map (d : ℕ) {V U : Scheme.{0}} (f : V ⟶ U) : WVec d U ⥤ WVec d V where
  obj v := ⟨(Vec.map (d + 1) 0 f).obj v.1, v.2.map f.appTop.hom⟩
  map u := (Vec.map (d + 1) 0 f).map u
  map_id v := (Vec.map (d + 1) 0 f).map_id v.1
  map_comp p q := (Vec.map (d + 1) 0 f).map_comp p q

def wCat (d : ℕ) : Scheme.{0}ᵒᵖ ⥤ Cat.{0,0} where
  obj U := Cat.of (WVec d U.unop)
  map f := (WVec.map d f.unop).toCatHom
  map_id _ := rfl
  map_comp _ _ := rfl

def Wsp (d : ℕ) : Spc := (wCat d ⋙ nerveFunctor).flip

def WVec.incl (d : ℕ) (U : Scheme.{0}) : WVec d U ⥤ Vec (d + 1) 0 U where
  obj v := v.1
  map u := u

def Wincl (d : ℕ) : Wsp d ⟶ Pj (d + 1) 0 :=
  nerveMap { app := fun U => (WVec.incl d U.unop).toCatHom, naturality := fun _ _ _ => rfl }

def Wpt {d : ℕ} {X : Scheme.{0}} (v : WVec d X) : sch.obj X ⟶ Wsp d where
  app n :=
    { app := fun U => TypeCat.ofHom fun (f : U.unop ⟶ X) =>
        (Functor.const (Fin (n.unop.len + 1))).obj ((WVec.map d f).obj v)
      naturality := fun U U' g => by
        ext f
        refine CategoryTheory.Functor.hext (fun _ => rfl) (fun _ _ _ => heq_of_eq ?_)
        exact ((WVec.map d g.unop).map_id ((WVec.map d f).obj v)).symm }
  naturality n m f := rfl

theorem wpt_incl {d : ℕ} {X : Scheme.{0}} (v : WVec d X) : Wpt v ≫ Wincl d = Pj.pt v.1 := rfl

def wvec1 {d : ℕ} {A : Type} [CommRing A] (x : Fin d → A) : WVec d (Spec (CommRingCat.of A)) :=
  ⟨vec1 x, by
    show IsUnit ((Scheme.ΓSpecIso (CommRingCat.of A)).inv.hom ((Fin.cons 1 x : Fin (d + 1) → A) 0))
    rw [Fin.cons_zero, map_one]; exact isUnit_one⟩

abbrev W (d : ℕ) (R : Type) [CommRing R] : Spc := Wsp d ⨯ sp R

def wb (d : ℕ) (R : Type) [CommRing R] : W d R ⟶ PR (d + 1) 0 R := prod.map (Wincl d) (𝟙 _)

def wa (d : ℕ) (R : Type) [CommRing R] : sp (MvPolynomial (Fin d) R) ⟶ W d R :=
  prod.lift (Wpt (wvec1 MvPolynomial.X)) (spMap MvPolynomial.C)

theorem wa_wb (d : ℕ) (R : Type) [CommRing R] : wa d R ≫ wb d R =
    (prod.lift (Pj.pt (vec1 MvPolynomial.X)) (spMap MvPolynomial.C) :
      sp (MvPolynomial (Fin d) R) ⟶ PR (d + 1) 0 R) := by
  simp only [wa, wb, prod.lift_map, Category.comp_id, wpt_incl]
  rfl

theorem opn_mono {X : Scheme.{0}} (U : X.Opens) : Mono (opn U).hom := by
  change Mono (sch.map U.ι)
  have h : ∀ n, Mono ((sch.map U.ι).app n) := by
    intro n
    have : ∀ V, Mono (((sch.map U.ι).app n).app V) := by
      intro V
      rw [mono_iff_injective]
      intro f g h
      change f ≫ U.ι = g ≫ U.ι at h
      exact (cancel_mono U.ι).1 h
    exact NatTrans.mono_of_mono_app _
  exact NatTrans.mono_of_mono_app _

def LeafWCov : Prop := Hyp → ∀ (q : ℕ) [NeZero q] (d : ℕ) (R : Type) [CommRing R], IsUnit (q : R) →
  Cover2 (ZMod q) (wb d R) (pr d R).hom

theorem eqv_comp {R : Type} [CommRing R] {E E' E'' : Spc} {f : E ⟶ E'} {g : E' ⟶ E''} {F : Shv R}
    (hf : Eqv R f F) (hg : Eqv R g F) : Eqv R (f ≫ g) F := by
  intro n
  have : (pull R (f ≫ g) F n : _ → _) = pull R f F n ∘ pull R g F n := funext fun x => pull_comp R f g F n x
  rw [this]; exact (hf n).comp (hg n)

theorem eqv_of_section {R : Type} [CommRing R] {E E' : Spc} {f : E ⟶ E'} {r : E' ⟶ E} {F : Shv R}
    (h : f ≫ r = 𝟙 _) (hr : Eqv R r F) : Eqv R f F := by
  intro n
  have hc : (pull R f F n : _ → _) ∘ pull R r F n = id := by
    funext x; change pull R f F n (pull R r F n x) = x; rw [← pull_comp, h, pull_id]
  have : Function.Bijective ((pull R f F n : _ → _) ∘ pull R r F n) := by rw [hc]; exact Function.bijective_id
  exact (Function.Bijective.of_comp_iff _ (hr n)).1 this

def LeafWEqvR : Prop := Hyp → ∀ (q : ℕ) [NeZero q] (d : ℕ) (R : Type) [CommRing R], IsUnit (q : R) →
  ∀ i, Eqv _ (wa d R) (tw q i)

def LeafWEqvL : Prop := Hyp → ∀ (q : ℕ) [NeZero q] (d : ℕ) (R : Type) [CommRing R]
  (I : Ideal (MvPolynomial (Fin d) R)), Ideal.span (Set.range MvPolynomial.X) = I → IsUnit (q : R) →
  ∀ g : (opn (off (MvPolynomial (Fin d) R) I)).left ⟶ pullback (wb d R) (pr d R).hom,
  g ≫ pullback.fst _ _ = (opn (off (MvPolynomial (Fin d) R) I)).hom ≫ wa d R → ∀ i, Eqv _ g (tw q i)

end LateralTheory.CohomologicalPurity.Thom.ExcP.Chart

namespace LateralTheory.CohomologicalPurity.Thom.ExcP

open Chart in
theorem LeafChartFact_of (hG : LeafGeo) (hC : LeafWCov) (hR : LeafWEqvR) (hL : LeafWEqvL) :
    LeafChartFact := by
  intro hH q _ d R _ I hI hq Φ hΦ
  have := hG.1 d R
  have hab : wa d R ≫ wb d R = Φ.right := by rw [hΦ, wa_wb]
  have hw : ((opn (off (MvPolynomial (Fin d) R) I)).hom ≫ wa d R) ≫ wb d R = Φ.left ≫ (pr d R).hom := by
    erw [Category.assoc, hab]; exact (Arrow.w Φ).symm
  let P : Arrow Spc := Arrow.mk (pullback.fst (wb d R) (pr d R).hom)
  let β : P ⟶ pr d R := Arrow.homMk (pullback.snd _ _) (wb d R) pullback.condition.symm
  let α : opn (off (MvPolynomial (Fin d) R) I) ⟶ P :=
    Arrow.homMk (pullback.lift _ _ hw) (wa d R) (pullback.lift_fst _ _ _)
  refine ⟨P, α, β, ?_, opn_mono _, (IsPullback.of_hasPullback (wb d R) (pr d R).hom).mono_fst_of_mono this,
    hL hH q d R I hI hq _ (pullback.lift_fst _ _ _), hR hH q d R hq, IsPullback.of_hasPullback _ _, hC hH q d R hq⟩
  exact hom_ext (hG.1 d R) (by rw [Arrow.comp_right]; exact hab)

end LateralTheory.CohomologicalPurity.Thom.ExcP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafChartFactPf =====
