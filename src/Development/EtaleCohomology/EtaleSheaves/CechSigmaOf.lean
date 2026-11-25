module

public import Development.EtaleCohomology.EtaleSheaves.EtaleBaseChangeFractionFieldIndEtaleOverPolynomi
public import Mathlib.Order.CompletePartialOrder

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.ZariskiLocalCech, Development.EtaleCohomology.EtaleSheaves.EqvOfCompRight, Development.EtaleCohomology.EtaleSheaves.CechSigmaOf

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.ZariskiLocalCech =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.ZariskiLocalCech", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.EtaleBaseChangeFractionFieldIndEtaleOverPolynomi\npublic import Mathlib.Order.CompletePartialOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.ZariskiLocalCech

def CechSigma : Prop := t_E3Cut.Hyp → ∀ (R : Type) [CommRing R] (F : Shv R) {Y X : Scheme.{0}} (g : Y ⟶ X) (O : X.Opens)
  {ι : Type} (V : ι → X.Opens), (∀ j, V j ≤ O) → O ≤ ⨆ j, V j →
  (∀ n : ℕ, Eqv R (sch.map (Limits.Sigma.map fun j : Fin (n + 1) → ι => g ∣_ (⨅ k, V (j k)))) F) →
  Eqv R (sch.map (g ∣_ O)) F

section
variable {R : Type} [CommRing R] {F : Shv R}

theorem eqv_comp {E E' E'' : Spc} {f : E ⟶ E'} {g : E' ⟶ E''} (hf : Eqv R f F) (hg : Eqv R g F) :
    Eqv R (f ≫ g) F := fun n => by
  have h : ⇑(pull R (f ≫ g) F n) = pull R f F n ∘ pull R g F n := funext fun x => pull_comp R f g F n x
  rw [h]; exact (hf n).comp (hg n)

theorem eqv_iso {E E' : Spc} (f : E ⟶ E') [IsIso f] : Eqv R f F := fun n => by
  have h1 : ∀ x, pull R (inv f) F n (pull R f F n x) = x := fun x => by
    rw [← pull_comp, IsIso.inv_hom_id, pull_id]
  have h2 : ∀ x, pull R f F n (pull R (inv f) F n x) = x := fun x => by
    rw [← pull_comp, IsIso.hom_inv_id, pull_id]
  exact ⟨Function.LeftInverse.injective h1, Function.RightInverse.surjective h2⟩

theorem sigmaEqv (hC : t_E3Cut.Coprod) {ι : Type} {Y X : ι → Scheme.{0}} (f : ∀ j, Y j ⟶ X j)
    (hf : ∀ j, Eqv R (sch.map (f j)) F) : Eqv R (sch.map (Limits.Sigma.map f)) F := fun n => by
  have key : (fun (x : H R (sch.obj (∐ X)) F n) (j : ι) => pull R (sch.map (Sigma.ι Y j)) F n
      (pull R (sch.map (Limits.Sigma.map f)) F n x)) =
      Pi.map (fun j => pull R (sch.map (f j)) F n) ∘
        (fun (x : H R (sch.obj (∐ X)) F n) (j : ι) => pull R (sch.map (Sigma.ι X j)) F n x) := by
    funext x j
    simp only [Function.comp_apply, Pi.map_apply]
    rw [← pull_comp, ← pull_comp, ← Functor.map_comp, ← Functor.map_comp, Sigma.ι_map]
  have hb := (Function.Bijective.piMap (fun j => hf j n)).comp (hC R F X n)
  rw [← key] at hb
  exact (Function.Bijective.of_comp_iff' (hC R F Y n) _).1 hb

theorem eqv_of_top {Y X : Scheme.{0}} (g : Y ⟶ X) (h : Eqv R (sch.map (g ∣_ ⊤)) F) : Eqv R (sch.map g) F := by
  have : IsIso (⊤ : X.Opens).ι := isIso_of_isOpenImmersion_of_opensRange_eq_top _ (by simp)
  have : IsIso (g ⁻¹ᵁ ⊤).ι := isIso_of_isOpenImmersion_of_opensRange_eq_top _ (by simp)
  have e : g = inv (g ⁻¹ᵁ ⊤).ι ≫ (g ∣_ ⊤) ≫ (⊤ : X.Opens).ι := by
    rw [morphismRestrict_ι, IsIso.inv_hom_id_assoc]
  rw [e, Functor.map_comp, Functor.map_comp]
  exact eqv_comp (eqv_iso _) (eqv_comp h (eqv_iso _))

end

theorem inf_basicOpen {X : Scheme.{0}} {A : X.Opens} {κ : Type} [DecidableEq κ] (f : κ → Γ(X, A)) (s : Finset κ) :
    (s.inf fun k => X.basicOpen (f k)) ⊓ A = X.basicOpen (∏ k ∈ s, f k) := by
  induction s using Finset.induction_on with
  | empty => simp [X.basicOpen_of_isUnit isUnit_one]
  | insert a s ha ih =>
    rw [Finset.inf_insert, Finset.prod_insert ha, Scheme.basicOpen_mul, ← ih, inf_assoc]

theorem iInf_basicOpen {X : Scheme.{0}} {A : X.Opens} {n : ℕ} (f : Fin (n + 1) → Γ(X, A)) :
    (⨅ k, X.basicOpen (f k)) = X.basicOpen (∏ k, f k) := by
  rw [← inf_basicOpen f Finset.univ, Finset.inf_univ_eq_iInf]
  exact (inf_eq_left.2 ((iInf_le (fun k => X.basicOpen (f k)) 0).trans (X.basicOpen_le (f 0)))).symm

theorem ZarLocal_of (hCop : t_E3Cut.Coprod) (hCS : CechSigma) : t_E3Cut.ZarLocal := by
  intro hH R _ F Y X g hU
  choose U hxU hUe using hU
  have hA : ∀ x : X, ∃ A : X.Opens, IsAffineOpen A ∧ x ∈ A ∧ A ≤ U x := fun x => by
    obtain ⟨_, ⟨V, hV, rfl⟩, hxV, hVU⟩ := X.isBasis_affineOpens.exists_subset_of_mem_open (hxU x) (U x).2
    exact ⟨V, hV, hxV, hVU⟩
  choose A hAaff hxA hAU using hA
  have st1 : ∀ (x : X) (O : X.Opens), O ≤ A x → Eqv R (sch.map (g ∣_ O)) F := by
    intro x O hO
    refine hCS hH R F g O (ι := {f : Γ(X, A x) // X.basicOpen f ≤ O}) (fun f => X.basicOpen f.1) (fun f => f.2) ?_ ?_
    · intro y hy
      obtain ⟨f, hfO, hyf⟩ := (hAaff x).exists_basicOpen_le ⟨y, hy⟩ (hO hy)
      exact TopologicalSpace.Opens.mem_iSup.2 ⟨⟨f, hfO⟩, hyf⟩
    · intro n
      apply sigmaEqv hCop
      intro j
      have e := iInf_basicOpen (X := X) (A := A x) (fun k => (j k).1)
      apply hUe x
      · rw [e]; exact (hAaff x).basicOpen _
      · exact (iInf_le _ 0).trans ((X.basicOpen_le _).trans (hAU x))
  refine eqv_of_top g (hCS hH R F g ⊤ A (fun _ => le_top) ?_ ?_)
  · intro y _
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨y, hxA y⟩
  · exact fun n => sigmaEqv hCop _ fun j => st1 (j 0) _ (iInf_le _ 0)

end LateralTheory.E.ZariskiLocalCech
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.ZariskiLocalCech =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.EqvOfCompRight =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.EqvOfCompRight", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.ZariskiLocalCech\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.CechSigmaProof

abbrev cov {X : Scheme.{0}} (O : X.Opens) {ι : Type} (V : ι → X.Opens) (hV : ∀ j, V j ≤ O) :
    (∐ fun j => (V j).toScheme) ⟶ O.toScheme :=
  Sigma.desc fun j => X.homOfLE (hV j)

theorem pre_le {Y X : Scheme.{0}} (g : Y ⟶ X) {A B : X.Opens} (h : A ≤ B) : g ⁻¹ᵁ A ≤ g ⁻¹ᵁ B :=
  fun _ hx => h hx

theorem sq_cov {Y X : Scheme.{0}} (g : Y ⟶ X) (O : X.Opens) {ι : Type} (V : ι → X.Opens) (hV : ∀ j, V j ≤ O) :
    Limits.Sigma.map (fun j => g ∣_ V j) ≫ cov O V hV = cov (g ⁻¹ᵁ O) (fun j => g ⁻¹ᵁ V j) (fun j => pre_le g (hV j)) ≫ g ∣_ O := by
  refine Sigma.hom_ext _ _ fun j => ?_
  rw [← cancel_mono O.ι]
  simp [cov, morphismRestrict_ι]

theorem cov_surj {X : Scheme.{0}} (O : X.Opens) {ι : Type} (V : ι → X.Opens) (hV : ∀ j, V j ≤ O)
    (hc : O ≤ ⨆ j, V j) : Surjective (cov O V hV) := by
  apply Surjective.sigmaDesc_of_union_range_eq_univ
  refine Set.eq_univ_iff_forall.2 fun x => ?_
  obtain ⟨j, hj⟩ := TopologicalSpace.Opens.mem_iSup.1 (hc x.2)
  refine Set.mem_iUnion.2 ⟨j, ⟨⟨x.1, hj⟩, ?_⟩⟩
  apply Subtype.ext
  exact congr($(X.homOfLE_ι (hV j)) ⟨x.1, hj⟩)

instance cov_smooth {X : Scheme.{0}} (O : X.Opens) {ι : Type} (V : ι → X.Opens) (hV : ∀ j, V j ≤ O) :
    Smooth (cov O V hV) :=
  haveI : IsZariskiLocalAtSource @Smooth.{0} :=
    HasRingHomProperty.instIsZariskiLocalAtSource (P := @Smooth.{0}) (Q := RingHom.Smooth)
  IsZariskiLocalAtSource.sigmaDesc (P := @Smooth.{0}) fun _ => inferInstance

def arr {Y X : Scheme.{0}} (g : Y ⟶ X) (O : X.Opens) {ι : Type} (V : ι → X.Opens) (hV : ∀ j, V j ≤ O) :
    Arrow.mk (yoneda.map (cov (g ⁻¹ᵁ O) (fun j => g ⁻¹ᵁ V j) (fun j => pre_le g (hV j)))) ⟶
      Arrow.mk (yoneda.map (cov O V hV)) :=
  Arrow.homMk (yoneda.map (Limits.Sigma.map fun j => g ∣_ V j)) (yoneda.map (g ∣_ O))
    (by simp only [Arrow.mk_hom]; rw [← Functor.map_comp, ← Functor.map_comp, sq_cov g O V hV])

def LevelIso : Prop := ∀ {Y X : Scheme.{0}} (g : Y ⟶ X) (O : X.Opens) {ι : Type} (V : ι → X.Opens) (hV : ∀ j, V j ≤ O)
  (n : ℕ), Nonempty (Arrow.mk ((Arrow.mapCechNerve (arr g O V hV)).app (op (SimplexCategory.mk n))) ≅
    Arrow.mk (yoneda.map (Limits.Sigma.map fun j : Fin (n + 1) → ι => g ∣_ (⨅ k, V (j k)))))

section
variable {R : Type} [CommRing R] {F : Shv R}

theorem eqv_of_arrowIso {E E' E₁ E₁' : Spc} {f : E ⟶ E'} {f' : E₁ ⟶ E₁'} (e : Arrow.mk f ≅ Arrow.mk f')
    (h : Eqv R f' F) : Eqv R f F := by
  have w : f = e.hom.left ≫ f' ≫ e.inv.right := by
    have := Arrow.w e.hom
    simp only [Arrow.mk_hom] at this
    rw [← Category.assoc, this, Category.assoc, ← Arrow.comp_right, e.hom_inv_id, Arrow.id_right]
    simp
  rw [w]
  exact ZariskiLocalCech.eqv_comp (ZariskiLocalCech.eqv_iso _) (ZariskiLocalCech.eqv_comp h (ZariskiLocalCech.eqv_iso _))

theorem eqv_of_comp_left {E E' E'' : Spc} {f : E ⟶ E'} {g : E' ⟶ E''} (hf : Eqv R f F) (hfg : Eqv R (f ≫ g) F) :
    Eqv R g F := fun n => by
  have h : ⇑(pull R (f ≫ g) F n) = pull R f F n ∘ pull R g F n := funext fun x => pull_comp R f g F n x
  have := hfg n
  rw [h] at this
  exact (Function.Bijective.of_comp_iff' (hf n) _).1 this

end

theorem CechSigma_of (hL : LevelIso) : ZariskiLocalCech.CechSigma := by
  unfold LevelIso at hL
  intro hH R _ F Y X g O ι V hV hc hn
  obtain ⟨_, hA2, hA3, -⟩ := hH
  have hc' : g ⁻¹ᵁ O ≤ ⨆ j, g ⁻¹ᵁ V j := by
    rw [← Scheme.Hom.preimage_iSup]; exact pre_le g hc
  have := cov_surj O V hV hc
  have := cov_surj (g ⁻¹ᵁ O) (fun j => g ⁻¹ᵁ V j) (fun j => pre_le g (hV j)) hc'
  have e1 : Eqv R (cechAug (cov O V hV)) F := hA2 R _ F
  have e2 : Eqv R (cechAug (cov (g ⁻¹ᵁ O) (fun j => g ⁻¹ᵁ V j) (fun j => pre_le g (hV j)))) F := hA2 R _ F
  have e3 : Eqv R (Arrow.mapCechNerve (arr g O V hV)) F := by
    refine hA3 R _ F fun m => ?_
    obtain ⟨e⟩ := hL g O V hV m.unop.len
    have e' : Arrow.mk (disc.map ((Arrow.mapCechNerve (arr g O V hV)).app m)) ≅
        Arrow.mk (sch.map (Limits.Sigma.map fun j : Fin (m.unop.len + 1) → ι => g ∣_ (⨅ k, V (j k)))) :=
      (disc.mapArrow).mapIso e
    exact eqv_of_arrowIso e' (hn _)
  have w : Arrow.mapCechNerve (arr g O V hV) ≫ cechAug (cov O V hV) =
      cechAug (cov (g ⁻¹ᵁ O) (fun j => g ⁻¹ᵁ V j) (fun j => pre_le g (hV j))) ≫ sch.map (g ∣_ O) := by
    have h := (Arrow.mapAugmentedCechNerve (arr g O V hV)).w
    exact h
  have h4 : Eqv R (cechAug (cov (g ⁻¹ᵁ O) (fun j => g ⁻¹ᵁ V j) (fun j => pre_le g (hV j))) ≫ sch.map (g ∣_ O)) F := by
    rw [← w]; exact ZariskiLocalCech.eqv_comp e3 e1
  exact eqv_of_comp_left e2 h4

end LateralTheory.E.CechSigmaProof
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.EqvOfCompRight =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.CechSigmaOf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.CechSigmaOf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.EqvOfCompRight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.CechSigma_xy1Pf_Lev
open LateralTheory.E.CechSigmaProof

def sqS {Y X : Scheme.{0}} (g : Y ⟶ X) (O : X.Opens) {ι : Type} (V : ι → X.Opens) (hV : ∀ j, V j ≤ O) :
    Arrow.mk (cov (g ⁻¹ᵁ O) (fun j => g ⁻¹ᵁ V j) (fun j => pre_le g (hV j))) ⟶ Arrow.mk (cov O V hV) :=
  Arrow.homMk (Limits.Sigma.map fun j => g ∣_ V j) (g ∣_ O) (sq_cov g O V hV)

def wpMap {A B C D : Scheme.{0}} {p : A ⟶ B} {q : C ⟶ D} (s : Arrow.mk p ⟶ Arrow.mk q) (n : ℕ) :
    widePullback B (fun _ : Fin (n + 1) => A) (fun _ => p) ⟶ widePullback D (fun _ : Fin (n + 1) => C) (fun _ => q) :=
  WidePullback.lift (WidePullback.base _ ≫ s.right) (fun i => WidePullback.π _ i ≫ s.left)
    (fun i => by have := Arrow.w s; simp only [Arrow.mk_hom] at this; simp [this])

def CechYoneda : Prop := ∀ {A B C D : Scheme.{0}} {p : A ⟶ B} {q : C ⟶ D} (s : Arrow.mk p ⟶ Arrow.mk q) (n : ℕ),
  Nonempty (Arrow.mk ((Arrow.mapCechNerve (yoneda.mapArrow.map s)).app (op (SimplexCategory.mk n))) ≅
    Arrow.mk (yoneda.map (wpMap s n)))

def SchemeLevel : Prop := ∀ {Y X : Scheme.{0}} (g : Y ⟶ X) (O : X.Opens) {ι : Type} (V : ι → X.Opens) (hV : ∀ j, V j ≤ O)
  (n : ℕ), Nonempty (Arrow.mk (wpMap (sqS g O V hV) n) ≅
    Arrow.mk (Limits.Sigma.map fun j : Fin (n + 1) → ι => g ∣_ (⨅ k, V (j k))))

theorem LevelIso_of (hY : CechYoneda) (hS : SchemeLevel) : LevelIso := by
  intro Y X g O ι V hV n
  obtain ⟨e1⟩ := hY (sqS g O V hV) n
  obtain ⟨e2⟩ := hS g O V hV n
  exact ⟨e1 ≪≫ yoneda.mapArrow.mapIso e2⟩

theorem CechSigma_of (hY : CechYoneda) (hS : SchemeLevel) : ZariskiLocalCech.CechSigma :=
  LateralTheory.E.CechSigmaProof.CechSigma_of (LevelIso_of hY hS)

end LateralTheory.E.CechSigma_xy1Pf_Lev
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.CechSigmaOf =====
