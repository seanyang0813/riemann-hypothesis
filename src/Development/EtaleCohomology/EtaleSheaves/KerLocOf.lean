module

public import Development.EtaleCohomology.EtaleSheaves.KernelLocalization.RangeOfBd
public import Development.EtaleCohomology.EtaleSheaves.EtaleBaseChangeFractionFieldIndEtaleOverPolynomi
public import Development.EtaleCohomology.EtaleSheaves.LocalDescent
public import Development.EtaleCohomology.EtaleSheaves.CokernelKilling.AssembleOf
public import Development.EtaleCohomology.EtaleSheaves.CokernelKilling.KillCokOf
public import Development.EtaleCohomology.EtaleSheaves.TruncKerPf
import Development.EtaleCohomology.EtaleSheaves.StalkCut
import Development.EtaleCohomology.EtaleSheaves.CokernelKilling.FiniteSubcover

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.PushColim, Development.EtaleCohomology.EtaleSheaves.BijOfIso, Development.EtaleCohomology.EtaleSheaves.KerLocOf

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.PushColim =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.PushColim", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.KernelLocalization.RangeOfBd\npublic import Development.EtaleCohomology.EtaleSheaves.EtaleBaseChangeFractionFieldIndEtaleOverPolynomi\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.EtaleCohomology.EtaleSheaves.LocalDescent\nimport Development.EtaleCohomology.EtaleSheaves.StalkCut\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry GlobalTheory.EtC LateralTheory.E.t_E3Cut LateralTheory.E.StalkCut LateralTheory.E.DescLocPf
open LateralTheory.E.LeafGhostCut

namespace LateralTheory.E.KernelLocalization

abbrev PP (q : ℕ) (i n : ℤ) {A B : CommRingCat.{0}} (f : A ⟶ B) := pull (ZMod q) (sch.map (Spec.map f)) (tw q i) n
theorem PP_comp (q : ℕ) (i n : ℤ) {A B C : CommRingCat.{0}} (f : A ⟶ B) (g : B ⟶ C) (x) :
    PP q i n (f ≫ g) x = PP q i n g (PP q i n f x) := by
  rw [PP, Spec.map_comp, Functor.map_comp, pull_comp]
theorem unit_of {q : ℕ} {A B : CommRingCat.{0}} (f : A ⟶ B) (h : IsUnit (q : A)) : IsUnit (q : B) := by
  simpa using h.map f.hom

abbrev HR (q : ℕ) (i n : ℤ) {D Y : CommRingCat.{0}} (φ : D ⟶ Y) := Hrel (ZMod q) (sch.map (Spec.map φ)) (tw q i) n

abbrev RP (q : ℕ) (i n : ℤ) {D Y E Z : CommRingCat.{0}} (φ : D ⟶ Y) (e : D ⟶ E) (u : Y ⟶ Z) (ψ : E ⟶ Z)
    (h : φ ≫ u = e ≫ ψ) : HR q i n φ →+ HR q i n ψ :=
  rpl q i (Spec.map φ) (Spec.map ψ) (Spec.map u) (Spec.map e) (by rw [← Spec.map_comp, ← Spec.map_comp, h]) n

theorem RP_comp (q : ℕ) (i n : ℤ) {D Y E Z E' Z' : CommRingCat.{0}} (φ : D ⟶ Y) (e : D ⟶ E) (u : Y ⟶ Z) (ψ : E ⟶ Z)
    (h : φ ≫ u = e ≫ ψ) (e' : E ⟶ E') (u' : Z ⟶ Z') (ψ' : E' ⟶ Z') (h' : ψ ≫ u' = e' ≫ ψ') (e2 : D ⟶ E') (u2 : Y ⟶ Z')
    (h2 : φ ≫ u2 = e2 ≫ ψ') (he : e ≫ e' = e2) (hu : u ≫ u' = u2) (z : HR q i n φ) :
    RP q i n φ e2 u2 ψ' h2 z = RP q i n ψ e' u' ψ' h' (RP q i n φ e u ψ h z) :=
  rpull_comp _ _ _ _ _ _ _ _ _ _ _ _ _ _ (by rw [← hu, Spec.map_comp, Functor.map_comp])
    (by rw [← he, Spec.map_comp, Functor.map_comp]) n z

theorem RP_bd (q : ℕ) (i m n : ℤ) (hm : 1 + m = n) {D Y E Z : CommRingCat.{0}} (φ : D ⟶ Y) (e : D ⟶ E) (u : Y ⟶ Z)
    (ψ : E ⟶ Z) (h : φ ≫ u = e ≫ ψ) (y) :
    RP q i n φ e u ψ h (bd _ _ _ m n hm y) = bd _ _ _ m n hm (PP q i m u y) := rpull_bd ..

theorem fgt_RP (q : ℕ) (i n : ℤ) {D Y E Z : CommRingCat.{0}} (φ : D ⟶ Y) (e : D ⟶ E) (u : Y ⟶ Z)
    (ψ : E ⟶ Z) (h : φ ≫ u = e ≫ ψ) (z : HR q i n φ) :
    fgt _ _ _ n (RP q i n φ e u ψ h z) = PP q i n e (fgt _ _ _ n z) := relNat _ _ _ _ _ _ _ n z

theorem pushColim {A Y C Y' : CommRingCat.{0}} (φ : A ⟶ Y) (c : A ⟶ C) (w : Y ⟶ Y') (φ' : C ⟶ Y')
    (hpo : IsPushout φ c w φ') {J : Type} [SmallCategory J] [IsFiltered J] (D : J ⥤ CommRingCat.{0})
    (t : (Functor.const J).obj A ⟶ D) (s : D ⟶ (Functor.const J).obj C) (hc : IsColimit (Cocone.mk _ s))
    (ht : ∀ j, t.app j ≫ s.app j = c) :
    ∃ (E : J ⥤ CommRingCat.{0}) (p : D ⟶ E) (e : E ⟶ (Functor.const J).obj Y') (v : ∀ j, Y ⟶ E.obj j),
      Nonempty (IsColimit (Cocone.mk _ e)) ∧ (∀ j, IsPushout φ (t.app j) (v j) (p.app j)) ∧
      (∀ j, p.app j ≫ e.app j = s.app j ≫ φ') ∧ ∀ j k (f : j ⟶ k), v j ≫ E.map f = v k := by
  have : IsConnected J := IsFiltered.isConnected J
  let F : J ⥤ Under A := D.toUnder A (fun j => t.app j) (fun {j k} g => by
    have := t.naturality g
    simp only [Functor.const_obj_obj, Functor.const_obj_map, Category.id_comp] at this
    exact this.symm)
  let cU : Cocone F :=
    { pt := Under.mk c
      ι := { app := fun j => Under.homMk (s.app j) (ht j)
             naturality := fun j k g => by
               apply Under.UnderMorphism.ext
               exact s.naturality g } }
  have hcU : IsColimit cU := isColimitOfReflects (Under.forget A) (by exact hc)
  have h2 := isColimitOfPreserves (Under.pushout φ ⋙ Under.forget Y) hcU
  let E : J ⥤ CommRingCat.{0} := F ⋙ Under.pushout φ ⋙ Under.forget Y
  let e : E ⟶ (Functor.const J).obj Y' :=
    ((Under.pushout φ ⋙ Under.forget Y).mapCocone cU).ι ≫ (Functor.const J).map hpo.flip.isoPushout.inv
  have hE : IsColimit (Cocone.mk _ e) :=
    h2.ofIsoColimit (Cocone.ext hpo.flip.isoPushout.symm (fun j => rfl))
  let p : D ⟶ E :=
    { app := fun j => (pushout.inl (t.app j) φ : D.obj j ⟶ pushout (t.app j) φ)
      naturality := fun j k g => by
        exact (pushout.inl_desc _ _ _).symm }
  refine ⟨E, p, e, fun j => pushout.inr (t.app j) φ, ⟨hE⟩, fun j => (IsPushout.of_hasPushout (t.app j) φ).flip,
    fun j => ?_, fun j k f => pushout.inr_desc _ _ _⟩
  have key : ∀ h, pushout.inl (t.app j) φ ≫ (pushout.desc (s.app j ≫ pushout.inl c φ) (pushout.inr c φ) h ≫
      hpo.flip.isoPushout.inv) = s.app j ≫ φ' := by
    intro h; rw [← Category.assoc, pushout.inl_desc, Category.assoc, hpo.flip.inl_isoPushout_inv]
  exact key _

theorem relAt (hB1 : B1) (q : ℕ) (i n : ℤ) {D Y' O : CommRingCat.{0}} (φ' : D ⟶ Y') (hq : IsUnit (q : D)) (o : D ⟶ O)
    (hIE : IE o) (hBC : BC q i φ' o) (z : HR q i n φ') (hz : PP q i n φ' (fgt _ _ _ n z) = 0) :
    ∃ (E : CommRingCat.{0}) (e : D ⟶ E) (s : E ⟶ O) (Z : CommRingCat.{0}) (u : Y' ⟶ Z) (ψ : E ⟶ Z)
      (h : IsPushout φ' e u ψ), Et e ∧ e ≫ s = o ∧ RP q i n φ' e u ψ h.w z = 0 := by
  obtain ⟨J, _, _, F, t, s, hc, hts⟩ := hIE
  have hZ := IsPushout.of_hasPushout φ' o
  set ψ := pushout.inr φ' o
  have hRE := hBC _ _ _ hZ
  obtain ⟨G, p, e, v, ⟨hG⟩, hpo, hpe, hv⟩ := pushColim φ' o _ ψ hZ F t s hc (fun j => (hts j).2)
  have hnat : ∀ {j k} (f : j ⟶ k), t.app j ≫ F.map f = t.app k := fun f => by simpa using (t.naturality f).symm
  have hs : ∀ {j k} (f : j ⟶ k), F.map f ≫ s.app k = s.app j := fun f => by simpa using s.naturality f
  have he : ∀ {j k} (f : j ⟶ k), G.map f ≫ e.app k = e.app j := fun f => by simpa using e.naturality f
  have hxO : PP q i n o (fgt _ _ _ n z) = 0 := by
    apply (hRE n).1
    change PP q i n ψ _ = _
    rw [map_zero, ← PP_comp, ← hZ.w, PP_comp, hz, map_zero]
  obtain ⟨j0⟩ : Nonempty J := IsFiltered.nonempty
  obtain ⟨k, f, hk⟩ := (hB1 q F _ hc n i).2 j0 (PP q i n (t.app j0) (fgt _ _ _ n z)) (unit_of (t.app j0) hq) (by
    change PP q i n (s.app j0) _ = 0
    rw [← PP_comp, (hts j0).2, hxO])
  change PP q i n (F.map f) _ = 0 at hk
  rw [← PP_comp, hnat] at hk
  have hm : 1 + (n - 1) = n := by omega
  obtain ⟨y, hy⟩ := exists_bd _ _ _ (n - 1) n hm (RP q i n φ' (t.app k) (v k) (p.app k) (hpo k).w z)
    (by rw [fgt_RP]; exact hk)
  obtain ⟨a, ha⟩ := (hRE (n - 1)).2 (PP q i (n - 1) (e.app k) y)
  obtain ⟨j, b, rfl⟩ := (hB1 q F _ hc (n - 1) i).1 a (unit_of o hq)
  change PP q i (n - 1) ψ (PP q i (n - 1) (s.app j) b) = _ at ha
  obtain ⟨l, g, hl⟩ := (hB1 q G _ hG (n - 1) i).2 (IsFiltered.max j k)
    (PP q i (n - 1) (G.map (IsFiltered.rightToMax j k)) y -
      PP q i (n - 1) (F.map (IsFiltered.leftToMax j k) ≫ p.app _) b) (unit_of (t.app _ ≫ p.app _) hq) (by
    change PP q i (n - 1) (e.app _) _ = 0
    rw [map_sub, ← PP_comp, ← PP_comp, he, Category.assoc, hpe, ← Category.assoc, hs, PP_comp, ha, sub_self])
  change PP q i (n - 1) (G.map g) _ = 0 at hl
  rw [map_sub, sub_eq_zero, ← PP_comp, ← PP_comp, ← G.map_comp, Category.assoc, ← p.naturality g,
    ← Category.assoc, PP_comp q i (n - 1) _ (p.app l)] at hl
  refine ⟨F.obj l, t.app l, s.app l, G.obj l, v l, p.app l, hpo l, (hts l).1, (hts l).2, ?_⟩
  rw [RP_comp q i n φ' (t.app k) (v k) (p.app k) (hpo k).w (F.map (IsFiltered.rightToMax j k ≫ g))
    (G.map (IsFiltered.rightToMax j k ≫ g)) (p.app l) (p.naturality _).symm _ _ _ (hnat _) (hv _ _ _), ← hy, RP_bd, hl]
  exact bd_pull ..

end LateralTheory.E.KernelLocalization
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.PushColim =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.BijOfIso =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.BijOfIso", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.PushColim\npublic import Development.EtaleCohomology.EtaleSheaves.CokernelKilling.AssembleOf\nimport Development.EtaleCohomology.EtaleSheaves.CokernelKilling.FiniteSubcover\npublic import Development.EtaleCohomology.EtaleSheaves.CokernelKilling.KillCokOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry GlobalTheory.EtC LateralTheory.E.t_E3Cut LateralTheory.E.StalkCut LateralTheory.E.DescLocPf
open LateralTheory.E.LeafGhostCut LateralTheory.E.KillCokPf.Asm

namespace LateralTheory.E.KernelLocalization

theorem bij_of_iso (R : Type) [CommRing R] (F : Shv R) {X Y : Scheme.{0}} (f : X ⟶ Y) [IsIso f] (n : ℤ) :
    Function.Bijective (pull R (sch.map f) F n) := by
  have h1 : ∀ x, pull R (sch.map (inv f)) F n (pull R (sch.map f) F n x) = x := fun x => by
    rw [← pull_comp, ← Functor.map_comp, IsIso.inv_hom_id, CategoryTheory.Functor.map_id, pull_id]
  have h2 : ∀ x, pull R (sch.map f) F n (pull R (sch.map (inv f)) F n x) = x := fun x => by
    rw [← pull_comp, ← Functor.map_comp, IsIso.hom_inv_id, CategoryTheory.Functor.map_id, pull_id]
  exact ⟨Function.LeftInverse.injective h1, Function.RightInverse.surjective h2⟩

theorem cover_bij (hC : Coprod) (R : Type) [CommRing R] (F : Shv R) {ι : Type} {X : ι → Scheme.{0}} {S : Scheme.{0}}
    (π : ∀ j, X j ⟶ S) [IsIso (Sigma.desc π)] (n : ℤ) :
    Function.Bijective fun (x : H R (sch.obj S) F n) (j : ι) => pull R (sch.map (π j)) F n x := by
  have := (hC R F X n).comp (bij_of_iso R F (Sigma.desc π) n)
  convert this using 1
  funext x j
  simp only [Function.comp]
  rw [← pull_comp, ← Functor.map_comp, Sigma.ι_desc]

abbrev pr {ι : Type} (E : ι → CommRingCat.{0}) (j : ι) : CommRingCat.of (∀ k, E k) ⟶ E j :=
  CommRingCat.ofHom (Pi.evalRingHom (fun k => E k) j)

theorem pi_bij (hC : Coprod) (q : ℕ) (i n : ℤ) {ι : Type} [Finite ι] (E : ι → CommRingCat.{0}) :
    Function.Bijective fun x (j : ι) => PP q i n (pr E j) x := by
  have : IsIso (Sigma.desc fun j => Spec.map (pr E j)) := inferInstanceAs (IsIso (sigmaSpec E))
  exact cover_bij hC _ _ _ n

theorem push_inj (hC : Coprod) (q : ℕ) (i n : ℤ) {ι : Type} [Finite ι] (E : ι → CommRingCat.{0}) {Z : CommRingCat.{0}}
    (ψ : CommRingCat.of (∀ k, E k) ⟶ Z) (y : H (ZMod q) (sch.obj (Spec Z)) (tw q i) n)
    (hy : ∀ j, PP q i n (pushout.inl ψ (pr E j)) y = 0) : y = 0 := by
  have h0 : IsIso (Sigma.desc fun j => Spec.map (pr E j)) := inferInstanceAs (IsIso (sigmaSpec E))
  have := FinitaryPreExtensive.isIso_sigmaDesc_fst (fun j => Spec.map (pr E j)) (Spec.map ψ) h0
  apply (cover_bij hC (ZMod q) (tw q i) (fun j => pullback.fst (Spec.map ψ) (Spec.map (pr E j))) n).1
  funext j
  have hp := isPullback_SpecMap_of_isPushout _ _ _ _ (IsPushout.of_hasPushout ψ (pr E j))
  simp only [map_zero]
  rw [← hp.isoPullback_inv_fst, Functor.map_comp, pull_comp]
  change pull _ _ _ _ (PP q i n _ y) = 0
  rw [hy, map_zero]

theorem rel_pi (hC : Coprod) (q : ℕ) (i n : ℤ) {D Y : CommRingCat.{0}} (φ : D ⟶ Y) {ι : Type} [Finite ι]
    (E : ι → CommRingCat.{0}) (e : ∀ j, D ⟶ E j) (z : HR q i n φ)
    (hz : ∀ j, ∃ (Z : CommRingCat.{0}) (u : Y ⟶ Z) (ψ : E j ⟶ Z) (h : IsPushout φ (e j) u ψ), RP q i n φ (e j) u ψ h.w z = 0)
    {Z : CommRingCat.{0}} (u : Y ⟶ Z) (ψ : CommRingCat.of (∀ k, E k) ⟶ Z) (h : IsPushout φ (piMap E e) u ψ) :
    RP q i n φ (piMap E e) u ψ h.w z = 0 := by
  have hpr : ∀ j, piMap E e ≫ pr E j = e j := fun j => by ext a; rfl
  have hw : ∀ j, φ ≫ u ≫ pushout.inl ψ (pr E j) = e j ≫ pushout.inr ψ (pr E j) := fun j => by
    rw [h.w_assoc, pushout.condition, ← Category.assoc, hpr]
  have hj : ∀ j, RP q i n ψ (pr E j) (pushout.inl ψ (pr E j)) (pushout.inr ψ (pr E j)) pushout.condition
      (RP q i n φ (piMap E e) u ψ h.w z) = 0 := fun j => by
    obtain ⟨Z', u', ψ', h', h0⟩ := hz j
    rw [← RP_comp q i n φ _ u ψ h.w _ _ _ _ (e j) _ (hw j) (hpr j) rfl,
      RP_comp q i n φ (e j) u' ψ' h'.w (𝟙 _) (h'.desc _ _ (hw j)) _ (by simp) (e j) _ (hw j) (by simp) (by simp),
      h0, map_zero]
  set z' := RP q i n φ (piMap E e) u ψ h.w z
  have hm : 1 + (n - 1) = n := by omega
  have hf : fgt _ _ _ n z' = 0 := by
    apply (pi_bij hC q i n E).1
    funext j
    simp only [map_zero]
    rw [← fgt_RP q i n ψ (pr E j) _ _ pushout.condition, hj, map_zero]
  obtain ⟨y, hy⟩ := exists_bd _ _ _ (n - 1) n hm z' hf
  have hb : ∀ j, ∃ w, PP q i (n - 1) (pushout.inr ψ (pr E j)) w = PP q i (n - 1) (pushout.inl ψ (pr E j)) y := fun j => by
    refine range_of_bd _ _ _ (n - 1) n hm _ ?_
    rw [← RP_bd q i (n - 1) n hm ψ (pr E j) _ _ pushout.condition, hy, hj]
  choose w hw' using hb
  obtain ⟨a, ha⟩ := (pi_bij hC q i (n - 1) E).2 w
  have hya : y - PP q i (n - 1) ψ a = 0 := push_inj hC q i (n - 1) E ψ _ fun j => by
    rw [map_sub, ← PP_comp, pushout.condition, PP_comp, ← hw' j, ← congrFun ha j, sub_self]
  rw [← hy, sub_eq_zero.1 hya]
  exact bd_pull ..

theorem relKill (hB1 : B1) (hC : Coprod) (q : ℕ) (i n : ℤ) {A Y D Y' : CommRingCat.{0}} (φ : A ⟶ Y) (hq : IsUnit (q : A))
    (d : A ⟶ D) (hpts : LocPts q i φ d) (w : Y ⟶ Y') (φ' : D ⟶ Y') (hpo : IsPushout φ d w φ') (z : HR q i n φ')
    (hz : PP q i n φ' (fgt _ _ _ n z) = 0) :
    ∃ (E : CommRingCat.{0}) (e : D ⟶ E) (Z : CommRingCat.{0}) (u : Y' ⟶ Z) (ψ : E ⟶ Z) (h : IsPushout φ' e u ψ),
      Et e ∧ SpS e ∧ RP q i n φ' e u ψ h.w z = 0 := by
  have h' : ∀ x : PrimeSpectrum D, ∃ (E : CommRingCat.{0}) (e : D ⟶ E), Et e ∧
      x ∈ Set.range (PrimeSpectrum.comap e.hom) ∧
      ∃ (Z : CommRingCat.{0}) (u : Y' ⟶ Z) (ψ : E ⟶ Z) (h : IsPushout φ' e u ψ), RP q i n φ' e u ψ h.w z = 0 := by
    intro x
    obtain ⟨O, o, Q, hIE, hQ, hQr, hBC⟩ := hpts x.asIdeal x.isPrime
    obtain ⟨E, e, s, Z, u, ψ, h, he, hes, h0⟩ := relAt hB1 q i n φ' (unit_of d hq) o hIE
      (fun Z u ψ h => hBC Z (w ≫ u) ψ (hpo.paste_vert h)) z hz
    refine ⟨E, e, he, ⟨⟨Q.comap s.hom, inferInstance⟩, PrimeSpectrum.ext ?_⟩, Z, u, ψ, h, h0⟩
    change (Q.comap s.hom).comap e.hom = _
    rw [Ideal.comap_comap, ← CommRingCat.hom_comp, hes, hQr]
  choose E e he hx hY using h'
  obtain ⟨s, hs⟩ := LateralTheory.E.KillCokPf.Lem.finite_subcover E e he hx
  refine ⟨_, piMap (fun k : s => E k.1) (fun k => e k.1), _, _, _, IsPushout.of_hasPushout _ _,
    LateralTheory.E.KillCokPf.Glue.et_pi _ _ (fun k => he k.1), sps_pi _ _ fun x => ?_,
    rel_pi hC q i n φ' _ _ z (fun k => hY k.1) _ _ (IsPushout.of_hasPushout _ _)⟩
  obtain ⟨r, hr, hxr⟩ := hs x
  exact ⟨⟨r, hr⟩, hxr⟩

end LateralTheory.E.KernelLocalization
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.BijOfIso =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.KerLocOf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.KerLocOf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.TruncKerPf\npublic import Development.EtaleCohomology.EtaleSheaves.LocalDescent\npublic import Development.EtaleCohomology.EtaleSheaves.BijOfIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry GlobalTheory.EtC LateralTheory.E.t_E3Cut LateralTheory.E.StalkCut LateralTheory.E.DescLocPf
open LateralTheory.E.LeafGhostCut

namespace LateralTheory.E.KernelLocalization

theorem KerLoc_of (hC : Coprod) (hD : LateralTheory.E.TruncationKernel.RelDesc) : KerLoc := by
  intro hH q _ i n A Y φ hq P hpush het hlow _ D d hPD hpts Y' w φ' hpo
  rw [injective_iff_map_eq_zero]
  intro x hx
  obtain ⟨z, rfl⟩ := relExact _ _ _ n x hx
  obtain ⟨E, e, Z, u, ψ, h, he, hs, h0⟩ := relKill hH.2.2.2.2.2.2.1 hC q i n φ hq d hpts w φ' hpo z hx
  have hz : z = 0 := (injective_iff_map_eq_zero _).1
    (hD hH q i n φ hq P hpush het hlow D d hPD Y' w φ' hpo E e Z u ψ he hs (het d e hPD he) h) z h0
  rw [hz, map_zero]

end LateralTheory.E.KernelLocalization
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.KerLocOf =====
