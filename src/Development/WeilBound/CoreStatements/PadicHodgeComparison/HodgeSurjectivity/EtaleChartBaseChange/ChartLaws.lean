module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.HodgeKill
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ChartGrConst
public import Mathlib.RingTheory.RingHom.Etale
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.FormLaws
public import Mathlib.RingTheory.Flat.TorsionFree
public import Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CosieveBot
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Topology.Sheaves.Presheaf
import Mathlib.LinearAlgebra.ExteriorPower.Basis
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.AlgebraicGeometry.Morphisms.Finite

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.ChartLawsA, Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.CLBAlg, Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.CLBGen, Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.CLBKer, Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.ChartLawsB, Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.ChartLaws

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.ChartLawsA =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.ChartLawsA", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.HodgeKill\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ChartGrConst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris

namespace CrystallineSemistableComparison.Onto

open Pb HT

theorem etale_reindex {R S : Type} [CommRing R] [CommRing S] {σ τ : Type} (f : R →+* S) (g : τ → S) (e : σ ≃ τ)
    (h : (MvPolynomial.eval₂Hom f g).Etale) : (MvPolynomial.eval₂Hom f (g ∘ e)).Etale := by
  have heq : MvPolynomial.eval₂Hom f (g ∘ e) =
      (MvPolynomial.eval₂Hom f g).comp (MvPolynomial.renameEquiv R e).toRingEquiv.toRingHom := by
    apply MvPolynomial.ringHom_ext
    · intro r
      simp
    · intro i
      simp
  rw [heq]
  exact RingHom.Etale.respectsIso.2 _ _ h

def BChart.coordV {K : Type} [CommRing K] {W Z Y : Scheme.{0}} {q : Z ⟶ Spec (CommRingCat.of K)} {i : W ⟶ Z}
    {π : Y ⟶ Z} {d : ℕ} {V : Z.Opens} (c : BChart q i π d V) : Coord q V (c.n + d) where
  affine := c.affine
  t := Sum.elim c.x c.t ∘ finSumFinEquiv.symm
  etale := etale_reindex _ _ _ c.etale

theorem etale_of_quot {A A' B B' : Type} [CommRing A] [CommRing A'] [CommRing B] [CommRing B']
    (φ : A →+* B) (ρ : A →+* A') (σ : B →+* B') (ψ : A' →+* B') (hφ : φ.Etale) (hρ : Function.Surjective ρ)
    (hσ : Function.Surjective σ) (hsq : σ.comp φ = ψ.comp ρ) (hker : RingHom.ker σ ≤ (RingHom.ker ρ).map φ) :
    ψ.Etale := by
  classical
  have hJ : RingHom.ker σ = (RingHom.ker ρ).map φ := by
    refine le_antisymm hker ?_
    rw [Ideal.map_le_iff_le_comap]
    intro a ha
    rw [RingHom.mem_ker] at ha
    rw [Ideal.mem_comap, RingHom.mem_ker, ← RingHom.comp_apply, hsq, RingHom.comp_apply, ha, map_zero]
  let _ := φ.toAlgebra
  have : Algebra.Etale A B := hφ
  let I := RingHom.ker ρ
  let eA : A ⧸ I ≃+* A' := RingHom.quotientKerEquivOfSurjective hρ
  let eB : B ⧸ I.map (algebraMap A B) ≃+* B' :=
    (Ideal.quotEquivOfEq hJ.symm).trans (RingHom.quotientKerEquivOfSurjective hσ)
  let T : TensorProduct A (A ⧸ I) B ≃+* B' :=
    ((Algebra.TensorProduct.comm A (A ⧸ I) B).toRingEquiv.trans
      (Algebra.TensorProduct.quotIdealMapEquivTensorQuot B I).symm.toRingEquiv).trans eB
  have hE : (algebraMap (A ⧸ I) (TensorProduct A (A ⧸ I) B)).Etale := by
    rw [RingHom.etale_algebraMap]
    infer_instance
  have key : ψ = (T.toRingHom.comp (algebraMap (A ⧸ I) (TensorProduct A (A ⧸ I) B))).comp eA.symm.toRingHom := by
    ext a'
    obtain ⟨a, rfl⟩ := hρ a'
    have h1 : eA.symm (ρ a) = Ideal.Quotient.mk I a := by
      rw [RingEquiv.symm_apply_eq]
      rfl
    simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom, h1]
    change ψ (ρ a) = eB ((Algebra.TensorProduct.quotIdealMapEquivTensorQuot B I).symm
      (TensorProduct.tmul A (1 : B) (Ideal.Quotient.mk I a)))
    rw [Algebra.TensorProduct.quotIdealMapEquivTensorQuot_symm_tmul, Algebra.smul_def, mul_one]
    have h2 : σ (φ a) = ψ (ρ a) := by
      rw [← RingHom.comp_apply, hsq, RingHom.comp_apply]
    rw [← h2]
    rfl
  rw [key]
  exact RingHom.Etale.respectsIso.2 _ _ (RingHom.Etale.respectsIso.1 _ _ hE)

theorem strV_comp {K : Type} [CommRing K] {W Z : Scheme.{0}} (q : Z ⟶ Spec (CommRingCat.of K)) (i : W ⟶ Z) (V : Z.Opens) :
    strV (i ≫ q) (i ⁻¹ᵁ V) = (i.app V).hom.comp (strV q V) := by
  simp only [strV]
  rw [← CommRingCat.hom_comp, Category.assoc, Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_comp_appLE]

def BChart.coordI {K : Type} [CommRing K] {W Z Y : Scheme.{0}} {q : Z ⟶ Spec (CommRingCat.of K)} {i : W ⟶ Z}
    [IsClosedImmersion i] {π : Y ⟶ Z} {d : ℕ} {V : Z.Opens} (c : BChart q i π d V) :
    Coord (i ≫ q) (i ⁻¹ᵁ V) c.n where
  affine := IsAffineHom.isAffine_preimage V c.affine
  t j := (i.app V).hom (c.x j)
  etale := by
    refine etale_of_quot (MvPolynomial.eval₂Hom (strV q V) (Sum.elim c.x c.t))
      (MvPolynomial.eval₂Hom MvPolynomial.C (Sum.elim MvPolynomial.X 0)) (i.app V).hom _ c.etale ?_
      (Scheme.Hom.app_surjective i V c.affine) ?_ ?_
    · intro p
      refine ⟨MvPolynomial.rename Sum.inl p, ?_⟩
      simp only [MvPolynomial.coe_eval₂Hom, MvPolynomial.eval₂_rename, Sum.elim_comp_inl]
      exact MvPolynomial.eval₂_eta p
    · have ht : ∀ j, (i.app V).hom (c.t j) = 0 := fun j => by
        rw [← RingHom.mem_ker, c.ker]; exact Ideal.subset_span ⟨j, rfl⟩
      apply MvPolynomial.ringHom_ext
      · intro a; simp [strV_comp]
      · rintro (j | j) <;> simp [ht]
    · rw [c.ker, Ideal.span_le]
      rintro _ ⟨j, rfl⟩
      refine Ideal.subset_span ⟨MvPolynomial.X (Sum.inr j), ?_, by simp⟩
      simp

theorem pushout_res {X Y : Scheme.{0}} (f : X ⟶ Y) {U U' : Y.Opens} {V : X.Opens} (hU : IsAffineOpen U)
    (hU' : IsAffineOpen U') (hV : IsAffineOpen V) (h : U' ≤ U) (e : V ≤ f ⁻¹ᵁ U) :
    IsAffineOpen (V ⊓ f ⁻¹ᵁ U') ∧
    IsPushout (f.appLE U V e) (Y.presheaf.map (homOfLE h).op)
      (X.presheaf.map (homOfLE (inf_le_left : V ⊓ f ⁻¹ᵁ U' ≤ V)).op)
      (f.appLE U' (V ⊓ f ⁻¹ᵁ U') inf_le_right) := by
  have H : IsPullback (𝟙 X) f f (𝟙 Y) := IsPullback.of_horiz_isIso ⟨by simp⟩
  have hpb0 := Scheme.Hom.isPullback_resLE H (US := U) (UT := U') (UX := V)
    (by simpa using h) e (UY := V ⊓ f ⁻¹ᵁ U') (by simp)
  simp only [Scheme.Hom.resLE_id] at hpb0
  have hpb : IsPullback (X.homOfLE (inf_le_left : V ⊓ f ⁻¹ᵁ U' ≤ V))
      (f.resLE U' (V ⊓ f ⁻¹ᵁ U') inf_le_right) (f.resLE U V e) (Y.homOfLE h) := hpb0
  have : IsAffine V.toScheme := hV
  have : IsAffine U.toScheme := hU
  have : IsAffine U'.toScheme := hU'
  have hW : IsAffineOpen (V ⊓ f ⁻¹ᵁ U') := IsAffine.of_isIso hpb.isoPullback.hom
  refine ⟨hW, ?_⟩
  have : IsAffine (V ⊓ f ⁻¹ᵁ U').toScheme := hW
  have hS : IsPullback (Spec.map (X.homOfLE (inf_le_left : V ⊓ f ⁻¹ᵁ U' ≤ V)).appTop)
      (Spec.map (f.resLE U' (V ⊓ f ⁻¹ᵁ U') inf_le_right).appTop)
      (Spec.map (f.resLE U V e).appTop) (Spec.map (Y.homOfLE h).appTop) :=
    hpb.of_iso (Scheme.isoSpec _) (Scheme.isoSpec _) (Scheme.isoSpec _) (Scheme.isoSpec _)
      (Scheme.isoSpec_hom_naturality _).symm (Scheme.isoSpec_hom_naturality _).symm
      (Scheme.isoSpec_hom_naturality _).symm (Scheme.isoSpec_hom_naturality _).symm
  have hR : IsPullback (X.homOfLE (inf_le_left : V ⊓ f ⁻¹ᵁ U' ≤ V)).appTop.op
      (f.resLE U' (V ⊓ f ⁻¹ᵁ U') inf_le_right).appTop.op (f.resLE U V e).appTop.op
      (Y.homOfLE h).appTop.op := by
    refine IsPullback.of_map Scheme.Spec ?_ hS
    rw [← op_comp, ← op_comp, ← Scheme.Hom.comp_appTop, ← Scheme.Hom.comp_appTop, hpb.w]
  have hP := hR.unop.flip
  refine hP.of_iso U.topIso V.topIso U'.topIso (V ⊓ f ⁻¹ᵁ U').topIso ?_ ?_ ?_ ?_
  · simp only [Scheme.Opens.topIso, Functor.mapIso_hom, Iso.op_hom, eqToIso.hom, Quiver.Hom.unop_op,
      Scheme.Hom.app_eq_appLE, Scheme.Hom.resLE_appLE, Scheme.Hom.appLE_map, Scheme.Hom.map_appLE]
  · simp only [Scheme.Opens.topIso, Functor.mapIso_hom, Iso.op_hom, eqToIso.hom, Quiver.Hom.unop_op,
      Scheme.homOfLE_appTop, ← Functor.map_comp]
    rfl
  · simp only [Scheme.Opens.topIso, Functor.mapIso_hom, Iso.op_hom, eqToIso.hom, Quiver.Hom.unop_op,
      Scheme.homOfLE_appTop, ← Functor.map_comp]
    rfl
  · simp only [Scheme.Opens.topIso, Functor.mapIso_hom, Iso.op_hom, eqToIso.hom, Quiver.Hom.unop_op,
      Scheme.Hom.app_eq_appLE, Scheme.Hom.resLE_appLE, Scheme.Hom.appLE_map, Scheme.Hom.map_appLE]

theorem pres_base_change {R S R' S' : CommRingCat.{0}} {φ : R ⟶ S} {g : R ⟶ R'} {g' : S ⟶ S'} {φ' : R' ⟶ S'}
    (hP : IsPushout φ g g' φ') {ι : Type} (u : ι → S) (hs : Function.Surjective (MvPolynomial.eval₂Hom φ.hom u)) :
    Function.Surjective (MvPolynomial.eval₂Hom φ'.hom (g'.hom ∘ u)) ∧
      RingHom.ker (MvPolynomial.eval₂Hom φ'.hom (g'.hom ∘ u)) =
        (RingHom.ker (MvPolynomial.eval₂Hom φ.hom u)).map (MvPolynomial.map g.hom) := by
  classical
  set e := MvPolynomial.eval₂Hom φ.hom u with he
  set e' := MvPolynomial.eval₂Hom φ'.hom (g'.hom ∘ u) with he'
  set K' := (RingHom.ker e).map (MvPolynomial.map g.hom) with hK'
  have hw : ∀ r, g'.hom (φ.hom r) = φ'.hom (g.hom r) := fun r =>
    RingHom.congr_fun (congrArg CommRingCat.Hom.hom hP.w) r
  have hcomm : e'.comp (MvPolynomial.map g.hom) = g'.hom.comp e := by
    apply MvPolynomial.ringHom_ext
    · intro r
      simp [he, he', hw]
    · intro i
      simp [he, he']
  have hKle : K' ≤ RingHom.ker e' := by
    rw [hK', Ideal.map_le_iff_le_comap]
    intro p hp
    rw [RingHom.mem_ker] at hp
    rw [Ideal.mem_comap, RingHom.mem_ker, ← RingHom.comp_apply, hcomm, RingHom.comp_apply, hp, map_zero]
  let sQ : S →+* MvPolynomial ι R' ⧸ K' :=
    (Ideal.quotientMap K' (MvPolynomial.map g.hom) Ideal.le_comap_map).comp
      (RingHom.quotientKerEquivOfSurjective hs).symm.toRingHom
  have hsQ : ∀ p, sQ (e p) = Ideal.Quotient.mk K' (MvPolynomial.map g.hom p) := by
    intro p
    have h1 : (RingHom.quotientKerEquivOfSurjective hs).symm (e p) =
        Ideal.Quotient.mk (RingHom.ker e) p := by
      rw [RingEquiv.symm_apply_eq]
      rfl
    simp only [sQ, RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom, h1,
      Ideal.quotientMap_mk]
  let rQ : R' →+* MvPolynomial ι R' ⧸ K' := (Ideal.Quotient.mk K').comp MvPolynomial.C
  have w' : φ ≫ CommRingCat.ofHom sQ = g ≫ CommRingCat.ofHom rQ := by
    ext r
    change sQ (φ.hom r) = rQ (g.hom r)
    have hr : φ.hom r = e (MvPolynomial.C r) := by simp [he]
    rw [hr, hsQ]
    simp [rQ]
  let h := hP.desc (CommRingCat.ofHom sQ) (CommRingCat.ofHom rQ) w'
  have hl : ∀ s, h.hom (g'.hom s) = sQ s := fun s =>
    RingHom.congr_fun (congrArg CommRingCat.Hom.hom (hP.inl_desc _ _ w')) s
  have hr : ∀ r, h.hom (φ'.hom r) = rQ r := fun r =>
    RingHom.congr_fun (congrArg CommRingCat.Hom.hom (hP.inr_desc _ _ w')) r
  let eb : MvPolynomial ι R' ⧸ K' →+* S' := Ideal.Quotient.lift K' e' (fun a ha => hKle ha)
  have heb : ∀ s', eb (h.hom s') = s' := by
    have hid : h ≫ CommRingCat.ofHom eb = 𝟙 S' := by
      apply hP.hom_ext
      · ext s
        change eb (h.hom (g'.hom s)) = g'.hom s
        rw [hl]
        obtain ⟨p, rfl⟩ := hs s
        rw [hsQ]
        change e' (MvPolynomial.map g.hom p) = g'.hom (e p)
        rw [← RingHom.comp_apply, hcomm, RingHom.comp_apply]
      · ext r
        change eb (h.hom (φ'.hom r)) = φ'.hom r
        rw [hr]
        simp [rQ, eb, he']
    intro s'
    exact RingHom.congr_fun (congrArg CommRingCat.Hom.hom hid) s'
  have hbe : (h.hom.comp eb).comp (Ideal.Quotient.mk K') = Ideal.Quotient.mk K' := by
    apply MvPolynomial.ringHom_ext
    · intro r
      change h.hom (e' (MvPolynomial.C r)) = _
      rw [show e' (MvPolynomial.C r) = φ'.hom r by simp [he'], hr]
      rfl
    · intro i
      change h.hom (e' (MvPolynomial.X i)) = _
      rw [show e' (MvPolynomial.X i) = g'.hom (u i) by simp [he'], hl,
        show u i = e (MvPolynomial.X i) by simp [he], hsQ]
      simp
  refine ⟨fun s' => ?_, ?_⟩
  · obtain ⟨p, hp⟩ := Ideal.Quotient.mk_surjective (h.hom s')
    refine ⟨p, ?_⟩
    rw [← heb s', ← hp]
    rfl
  · refine le_antisymm (fun p hp => ?_) hKle
    rw [RingHom.mem_ker] at hp
    rw [← Ideal.Quotient.eq_zero_iff_mem]
    have hpp := RingHom.congr_fun hbe p
    simp only [RingHom.comp_apply] at hpp
    rw [← hpp]
    change h.hom (e' p) = 0
    rw [hp, map_zero]

def BChart.resC {K : Type} [CommRing K] {W Z Y : Scheme.{0}} {q : Z ⟶ Spec (CommRingCat.of K)} {i : W ⟶ Z}
    [IsClosedImmersion i] {π : Y ⟶ Z} {d : ℕ} {V : Z.Opens} (c : BChart q i π d V) (V' : Z.Opens) (h : V' ≤ V)
    (hV' : IsAffineOpen V') : BChart q i π d V' where
  affine := hV'
  n := c.n
  x j := rs h (c.x j)
  t j := rs h (c.t j)
  etale := by
    obtain ⟨c'', hc''⟩ := coord_res c.coordV h hV'
    have := etale_reindex (strV q V') c''.t finSumFinEquiv c''.etale
    convert this using 3
    funext j
    rcases j with j | j <;> simp [hc'', BChart.coordV]
  ker := by
    have e3 := (i.ker).map_ideal (U := ⟨V', hV'⟩) (V := ⟨V, c.affine⟩) h
    rw [Scheme.Hom.ker_apply, Scheme.Hom.ker_apply, c.ker, Ideal.map_span] at e3
    rw [← e3, ← Set.range_comp]
    rfl
  C k := c.C k ⊓ π ⁻¹ᵁ V'
  C_aff k := (pushout_res π c.affine hV' (c.C_aff k) h (c.C_le k)).1
  C_le k := inf_le_right
  C_cover := by
    calc π ⁻¹ᵁ V' ≤ (⨆ k, c.C k) ⊓ π ⁻¹ᵁ V' := le_inf (fun x hx => c.C_cover (h hx)) le_rfl
      _ = ⨆ k, (c.C k ⊓ π ⁻¹ᵁ V') := iSup_inf_eq _ _
  u k j := rs (inf_le_left : c.C k ⊓ π ⁻¹ᵁ V' ≤ c.C k) (c.u k j)
  surj k := (pres_base_change (pushout_res π c.affine hV' (c.C_aff k) h (c.C_le k)).2 (c.u k) (c.surj k)).1
  rel k := by
    refine (pres_base_change (pushout_res π c.affine hV' (c.C_aff k) h (c.C_le k)).2 (c.u k) (c.surj k)).2.trans ?_
    rw [c.rel k, Ideal.map_span, Set.image_insert_eq, ← Set.range_comp]
    simp only [Function.comp_def, RingHom.map_sub, RingHom.map_mul, RingHom.map_one,
      MvPolynomial.map_X, MvPolynomial.map_C, rs]
  inter k j := by
    simp only [rs]
    rw [Scheme.basicOpen_res, ← c.inter k j]
    simp only [← SetLike.coe_set_eq, TopologicalSpace.Opens.coe_inf]
    ext x
    simp only [Set.mem_inter_iff]
    tauto

theorem chartLaws_A (K : Type) [Field K] (W Z Y : Scheme.{0}) (q : Z ⟶ Spec (CommRingCat.of K)) (i : W ⟶ Z)
    [IsClosedImmersion i] (π : Y ⟶ Z) (d : ℕ) (V : Z.Opens) (c : BChart q i π d V) :
    (∀ V' : Z.Opens, ∀ h : V' ≤ V, IsAffineOpen V' → ∃ c' : BChart q i π d V', (∀ j, c'.t j = rs h (c.t j)) ∧
      ∀ k, c'.C k = c.C k ⊓ π ⁻¹ᵁ V') ∧
    Nonempty (Coord q V (c.n + d)) ∧ Nonempty (Coord (i ≫ q) (i ⁻¹ᵁ V) c.n) := by
  exact ⟨fun V' h hV' => ⟨c.resC V' h hV', fun j => rfl, fun k => rfl⟩, ⟨c.coordV⟩, ⟨c.coordI⟩⟩

end CrystallineSemistableComparison.Onto

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.ChartLawsA =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.CLBAlg =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.CLBAlg", "h": "module\n\npublic import Mathlib.RingTheory.RingHom.Etale\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits AlgebraicGeometry

namespace CrystallineSemistableComparison.Onto.CLB

theorem chart_etale_of_univ {R A S B : Type} [CommRing R] [CommRing A] [CommRing S] [CommRing B]
    (f : R →+* A) (g : R →+* S) (φ : A →+* B) (h : S →+* B) (hf : f.Etale) (hsq : φ.comp f = h.comp g)
    (hU : ∀ (T : Type) [CommRing T] (α : A →+* T) (β : S →+* T), α.comp f = β.comp g →
      ∃ γ : B →+* T, γ.comp φ = α ∧ γ.comp h = β)
    (hE : ∀ (T : Type) [CommRing T] (γ γ' : B →+* T), γ.comp φ = γ'.comp φ → γ.comp h = γ'.comp h → γ = γ') :
    h.Etale := by
  letI : Algebra R A := f.toAlgebra
  letI : Algebra R S := g.toAlgebra
  letI : Algebra R B := (φ.comp f).toAlgebra
  haveI : Algebra.Etale R A := RingHom.etale_algebraMap.1 hf
  haveI : Algebra.Etale S (TensorProduct R S A) := Algebra.Etale.baseChange R A S
  let hA : S →ₐ[R] B := { h with commutes' := fun r => (RingHom.congr_fun hsq r).symm }
  let φA : A →ₐ[R] B := { φ with commutes' := fun r => rfl }
  let e : TensorProduct R S A →ₐ[R] B := Algebra.TensorProduct.lift hA φA (fun _ _ => Commute.all _ _)
  have he1 : e.toRingHom.comp Algebra.TensorProduct.includeLeftRingHom = h := by
    ext s; simp [e, hA]
  have he2 : e.toRingHom.comp (Algebra.TensorProduct.includeRight (R := R) (A := S) (B := A)).toRingHom = φ := by
    ext a; simp [e, φA]
  obtain ⟨γ, hγ1, hγ2⟩ := hU (TensorProduct R S A) (Algebra.TensorProduct.includeRight (R := R) (A := S) (B := A)).toRingHom
    Algebra.TensorProduct.includeLeftRingHom (by
      ext r
      simp only [RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe, Algebra.TensorProduct.includeRight_apply,
        Algebra.TensorProduct.includeLeftRingHom_apply]
      have h1 : f r = r • (1 : A) := Algebra.algebraMap_eq_smul_one r
      have h2 : g r = r • (1 : S) := Algebra.algebraMap_eq_smul_one r
      rw [h1, h2, TensorProduct.smul_tmul])
  have hinv1 : ∀ b, e (γ b) = b := by
    intro b
    have := hE B (e.toRingHom.comp γ) (RingHom.id B)
      (by rw [RingHom.comp_assoc, hγ1, he2]; rfl) (by rw [RingHom.comp_assoc, hγ2, he1]; rfl)
    exact RingHom.congr_fun this b
  have hinv2 : ∀ z, γ (e z) = z := by
    intro z
    induction z using TensorProduct.induction_on with
    | zero => simp
    | tmul s a =>
      rw [Algebra.TensorProduct.lift_tmul, map_mul]
      have e1 := RingHom.congr_fun hγ2 s
      have e2 := RingHom.congr_fun hγ1 a
      simp only [RingHom.comp_apply] at e1 e2
      change γ (h s) * γ (φ a) = _
      rw [e1, e2]
      simp [Algebra.TensorProduct.tmul_mul_tmul]
    | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]
  have hb : Function.Bijective e := Function.bijective_iff_has_inverse.2 ⟨γ, hinv2, hinv1⟩
  rw [← he1]
  exact RingHom.Etale.stableUnderComposition _ _ (RingHom.etale_algebraMap.2 inferInstance)
    (RingHom.Etale.of_bijective (f := e.toRingHom) hb)

def chartMapKXT {K : Type} [CommRing K] {n d : ℕ} (k : Fin d) :
    MvPolynomial (Fin n ⊕ Fin d) K →+* MvPolynomial (Fin n ⊕ Fin d) K :=
  MvPolynomial.eval₂Hom MvPolynomial.C (Sum.elim (fun i => MvPolynomial.X (Sum.inl i))
    (fun j => if j = k then MvPolynomial.X (Sum.inr k) else MvPolynomial.X (Sum.inr k) * MvPolynomial.X (Sum.inr j)))

theorem chart_etale {K A B : Type} [CommRing K] [CommRing A] [CommRing B] {n d : ℕ} (s : K →+* A) (x : Fin n → A)
    (t : Fin d → A) (het : (MvPolynomial.eval₂Hom s (Sum.elim x t) : MvPolynomial (Fin n ⊕ Fin d) K →+* A).Etale)
    (φ : A →+* B) (u : Fin d → B) (k : Fin d) (hs : Function.Surjective (MvPolynomial.eval₂Hom φ u))
    (hr : RingHom.ker (MvPolynomial.eval₂Hom φ u) = Ideal.span (insert (MvPolynomial.X k - 1)
      (Set.range fun j => MvPolynomial.C (t j) - MvPolynomial.C (t k) * MvPolynomial.X j))) :
    (MvPolynomial.eval₂Hom (φ.comp s) (Sum.elim (φ ∘ x) (fun j => if j = k then φ (t k) else u j)) :
      MvPolynomial (Fin n ⊕ Fin d) K →+* B).Etale := by
  have hk1 : u k = 1 := by
    have hm : MvPolynomial.X k - 1 ∈ RingHom.ker (MvPolynomial.eval₂Hom φ u) := by
      rw [hr]; exact Ideal.subset_span (Set.mem_insert _ _)
    have := (RingHom.mem_ker).1 hm
    simpa [sub_eq_zero] using this
  have htj : ∀ j, φ (t j) = φ (t k) * u j := by
    intro j
    have hm : MvPolynomial.C (t j) - MvPolynomial.C (t k) * MvPolynomial.X j ∈ RingHom.ker (MvPolynomial.eval₂Hom φ u) := by
      rw [hr]; exact Ideal.subset_span (Set.mem_insert_of_mem _ ⟨j, rfl⟩)
    have := (RingHom.mem_ker).1 hm
    simpa [sub_eq_zero] using this
  refine chart_etale_of_univ (MvPolynomial.eval₂Hom s (Sum.elim x t)) (chartMapKXT (K := K) (n := n) k) φ _ het ?_ ?_ ?_
  · refine MvPolynomial.ringHom_ext (fun r => by simp [chartMapKXT]) (fun v => ?_)
    rcases v with i | j
    · simp [chartMapKXT]
    · by_cases hj : j = k
      · subst hj; simp [chartMapKXT]
      · simp [chartMapKXT, hj, htj j]
  · intro T _ α β hαβ
    have hX : ∀ v, α (MvPolynomial.eval₂Hom s (Sum.elim x t) (MvPolynomial.X v)) =
        β (chartMapKXT (K := K) (n := n) k (MvPolynomial.X v)) := fun v => RingHom.congr_fun hαβ _
    have hC : ∀ c, α (s c) = β (MvPolynomial.C c) := by
      intro c
      have := RingHom.congr_fun hαβ (MvPolynomial.C c)
      simpa [chartMapKXT] using this
    have hXk : α (t k) = β (MvPolynomial.X (Sum.inr k)) := by
      have := hX (Sum.inr k); simpa [chartMapKXT] using this
    have hXj : ∀ j, j ≠ k → α (t j) = β (MvPolynomial.X (Sum.inr k)) * β (MvPolynomial.X (Sum.inr j)) := by
      intro j hj; have := hX (Sum.inr j); simpa [chartMapKXT, hj] using this
    have hXi : ∀ i, α (x i) = β (MvPolynomial.X (Sum.inl i)) := by
      intro i; have := hX (Sum.inl i); simpa [chartMapKXT] using this
    let γ0 : MvPolynomial (Fin d) A →+* T :=
      MvPolynomial.eval₂Hom α (fun j => if j = k then 1 else β (MvPolynomial.X (Sum.inr j)))
    have hle : RingHom.ker (MvPolynomial.eval₂Hom φ u) ≤ RingHom.ker γ0 := by
      rw [hr, Ideal.span_le]
      rintro p (rfl | ⟨j, rfl⟩)
      · simp [γ0]
      · by_cases hj : j = k
        · subst hj; simp [γ0]
        · simp [γ0, hj, hXj j hj, hXk]
    let γ := (RingHom.liftOfSurjective (MvPolynomial.eval₂Hom φ u) hs) ⟨γ0, hle⟩
    have hγ : ∀ p, γ (MvPolynomial.eval₂Hom φ u p) = γ0 p := fun p =>
      RingHom.liftOfRightInverse_comp_apply _ _ _ _ p
    refine ⟨γ, ?_, ?_⟩
    · ext a
      have := hγ (MvPolynomial.C a)
      simpa [γ0] using this
    · refine MvPolynomial.ringHom_ext (fun c => ?_) (fun v => ?_)
      · have := hγ (MvPolynomial.C (s c))
        simp only [MvPolynomial.eval₂Hom_C, γ0] at this
        simp [this, hC]
      · rcases v with i | j
        · have := hγ (MvPolynomial.C (x i))
          simp only [MvPolynomial.eval₂Hom_C, γ0] at this
          simp [this, hXi]
        · by_cases hj : j = k
          · subst hj
            have := hγ (MvPolynomial.C (t j))
            simp only [MvPolynomial.eval₂Hom_C, γ0] at this
            simp [this, hXk]
          · have := hγ (MvPolynomial.X j)
            simpa [γ0, hj] using this
  · intro T _ γ γ' h1 h2
    have hc : γ.comp (MvPolynomial.eval₂Hom φ u) = γ'.comp (MvPolynomial.eval₂Hom φ u) := by
      refine MvPolynomial.ringHom_ext (fun a => ?_) (fun j => ?_)
      · simpa using RingHom.congr_fun h1 a
      · by_cases hj : j = k
        · subst hj; simp [hk1]
        · have := RingHom.congr_fun h2 (MvPolynomial.X (Sum.inr j))
          simpa [hj] using this
    ext b
    obtain ⟨p, rfl⟩ := hs b
    exact RingHom.congr_fun hc p

end CrystallineSemistableComparison.Onto.CLB

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.CLBAlg =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.CLBGen =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.CLBGen", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.FormLaws\npublic import Mathlib.RingTheory.RingHom.Etale\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.ExteriorPower.Basis\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Flat.TorsionFree\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.style.haveILetI false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry

namespace CrystallineSemistableComparison.Onto.CLB

theorem etale_comp {A B C : Type} [CommRing A] [CommRing B] [CommRing C] (f : A →+* B) (g : B →+* C)
    (hf : f.Etale) (hg : g.Etale) : (g.comp f).Etale :=
  RingHom.Etale.stableUnderComposition f g hf hg

theorem etale_reindex {K B σ τ : Type} [CommRing K] [CommRing B] (s : K →+* B) (y : σ → B) (e : τ ≃ σ)
    (h : (MvPolynomial.eval₂Hom s y : MvPolynomial σ K →+* B).Etale) :
    (MvPolynomial.eval₂Hom s (y ∘ e) : MvPolynomial τ K →+* B).Etale := by
  have heq : (MvPolynomial.eval₂Hom s (y ∘ e) : MvPolynomial τ K →+* B) =
      (MvPolynomial.eval₂Hom s y).comp (MvPolynomial.rename (R := K) e).toRingHom :=
    RingHom.ext fun p => (MvPolynomial.eval₂Hom_rename s e y p).symm
  rw [heq]
  exact etale_comp _ _ (RingHom.Etale.of_bijective (MvPolynomial.renameEquiv K e).bijective) h

theorem coord_nzd {K B σ : Type} [Field K] [CommRing B] [Algebra K B] (y : σ → B)
    (h : (MvPolynomial.eval₂Hom (algebraMap K B) y : MvPolynomial σ K →+* B).Etale) (j : σ) :
    ∀ (a : ℕ) (ω : Om K B a), y j • ω = 0 → ω = 0 := by
  intro a ω hω
  letI : Algebra (MvPolynomial σ K) B := (MvPolynomial.eval₂Hom (algebraMap K B) y).toAlgebra
  haveI : Algebra.Etale (MvPolynomial σ K) B := h.toAlgebra
  haveI : IsScalarTower K (MvPolynomial σ K) B := IsScalarTower.of_algebraMap_eq fun r => by
    change _ = MvPolynomial.eval₂Hom (algebraMap K B) y (MvPolynomial.C r)
    simp
  haveI : Module.Free (MvPolynomial σ K) Ω[MvPolynomial σ K⁄K] :=
    Module.Free.of_basis (KaehlerDifferential.mvPolynomialBasis K σ)
  haveI : Module.Free B Ω[B⁄K] :=
    Module.Free.of_equiv (KaehlerDifferential.tensorKaehlerEquivOfFormallyEtale K (MvPolynomial σ K) B)
  have hX : IsSMulRegular (MvPolynomial σ K) (MvPolynomial.X j : MvPolynomial σ K) :=
    (MvPolynomial.isRegular_X (R := K) (n := j)).left
  have hB : IsSMulRegular B (algebraMap (MvPolynomial σ K) B (MvPolynomial.X j)) := IsSMulRegular.of_flat hX
  have hy : algebraMap (MvPolynomial σ K) B (MvPolynomial.X j) = y j := by
    change MvPolynomial.eval₂Hom (algebraMap K B) y (MvPolynomial.X j) = y j
    simp
  rw [hy] at hB
  have hmem : y j ∈ nonZeroDivisors B := by
    rw [mem_nonZeroDivisors_iff_right]
    intro z hz
    exact hB (by simpa [smul_eq_mul, mul_comm] using hz)
  exact Module.Flat.isSMulRegular_of_nonZeroDivisors hmem (show y j • ω = y j • (0 : Om K B a) by rw [hω, smul_zero])

theorem quot_etale {K B C σ : Type} [CommRing K] [CommRing B] [CommRing C] (s : K →+* B) (y : σ → B) (j0 : σ)
    (h : (MvPolynomial.eval₂Hom s y : MvPolynomial σ K →+* B).Etale) (ψ : B →+* C) (hψ : Function.Surjective ψ)
    (hk : RingHom.ker ψ = Ideal.span {y j0}) :
    (MvPolynomial.eval₂Hom (ψ.comp s) (fun j : {j // j ≠ j0} => ψ (y j)) : MvPolynomial {j // j ≠ j0} K →+* C).Etale := by
  classical
  let f : MvPolynomial σ K →+* B := MvPolynomial.eval₂Hom s y
  let g : MvPolynomial σ K →+* MvPolynomial {j // j ≠ j0} K :=
    MvPolynomial.eval₂Hom MvPolynomial.C (fun j => if hj : j = j0 then 0 else MvPolynomial.X ⟨j, hj⟩)
  let e : MvPolynomial {j // j ≠ j0} K →+* C := MvPolynomial.eval₂Hom (ψ.comp s) (fun j => ψ (y j))
  have hy0 : ψ (y j0) = 0 := by
    rw [← RingHom.mem_ker, hk]; exact Ideal.subset_span rfl
  have heg : e.comp g = ψ.comp f := by
    apply MvPolynomial.ringHom_ext
    · intro r; simp [e, g, f]
    · intro j
      by_cases hj : j = j0
      · subst hj; simp [e, g, f, hy0]
      · simp [e, g, f, hj]
  have hg : Function.Surjective g := by
    have hid : g.comp (MvPolynomial.rename (R := K) (Subtype.val : {j // j ≠ j0} → σ)).toRingHom = RingHom.id _ := by
      apply MvPolynomial.ringHom_ext
      · intro r; simp [g]
      · intro j; simp [g, j.2]
    intro p
    exact ⟨MvPolynomial.rename Subtype.val p, RingHom.congr_fun hid p⟩
  letI : Algebra (MvPolynomial σ K) B := f.toAlgebra
  letI : Algebra (MvPolynomial σ K) (MvPolynomial {j // j ≠ j0} K) := g.toAlgebra
  letI : Algebra (MvPolynomial σ K) C := (ψ.comp f).toAlgebra
  haveI : Algebra.Etale (MvPolynomial σ K) B := h.toAlgebra
  haveI := Algebra.Etale.baseChange (MvPolynomial σ K) B (MvPolynomial {j // j ≠ j0} K)
  let eA : MvPolynomial {j // j ≠ j0} K →ₐ[MvPolynomial σ K] C :=
    { e with commutes' := fun p => RingHom.congr_fun heg p }
  let ψA : B →ₐ[MvPolynomial σ K] C := { ψ with commutes' := fun p => rfl }
  let Φ := Algebra.TensorProduct.lift eA ψA (fun _ _ => Commute.all _ _)
  have key : ∀ t : TensorProduct (MvPolynomial σ K) (MvPolynomial {j // j ≠ j0} K) B, ∃ b : B, t = 1 ⊗ₜ b := by
    intro t
    induction t using TensorProduct.induction_on with
    | zero => exact ⟨0, by simp⟩
    | tmul q b =>
      obtain ⟨p, rfl⟩ := hg q
      refine ⟨f p * b, ?_⟩
      have h1 : (g p : MvPolynomial {j // j ≠ j0} K) = p • (1 : MvPolynomial {j // j ≠ j0} K) := by
        rw [Algebra.smul_def, mul_one]; rfl
      rw [h1, TensorProduct.smul_tmul, Algebra.smul_def]; rfl
    | add a b ha hb =>
      obtain ⟨x, rfl⟩ := ha
      obtain ⟨z, rfl⟩ := hb
      exact ⟨x + z, by rw [TensorProduct.tmul_add]⟩
  have hΦ : Function.Bijective Φ := by
    constructor
    · rw [injective_iff_map_eq_zero]
      intro t ht
      obtain ⟨b, rfl⟩ := key t
      have hb : ψ b = 0 := by simpa [Φ, eA, ψA] using ht
      rw [← RingHom.mem_ker, hk, Ideal.mem_span_singleton'] at hb
      obtain ⟨c, rfl⟩ := hb
      have h2 : c * y j0 = (MvPolynomial.X j0 : MvPolynomial σ K) • c := by
        rw [Algebra.smul_def, mul_comm]
        change _ = MvPolynomial.eval₂Hom s y (MvPolynomial.X j0) * c
        simp
      have h3 : (MvPolynomial.X j0 : MvPolynomial σ K) • (1 : MvPolynomial {j // j ≠ j0} K) = 0 := by
        rw [Algebra.smul_def, mul_one]
        change g (MvPolynomial.X j0) = 0
        simp [g]
      rw [h2, ← TensorProduct.smul_tmul, h3, TensorProduct.zero_tmul]
    · intro c
      obtain ⟨b, rfl⟩ := hψ c
      exact ⟨1 ⊗ₜ b, by simp [Φ, eA, ψA]⟩
  have hcomp : e = (Φ : TensorProduct (MvPolynomial σ K) (MvPolynomial {j // j ≠ j0} K) B →+* C).comp
      (algebraMap (MvPolynomial {j // j ≠ j0} K) (TensorProduct (MvPolynomial σ K) (MvPolynomial {j // j ≠ j0} K) B)) := by
    ext q
    · simp [Φ, eA, ψA, e, Algebra.TensorProduct.algebraMap_apply]
    · simp [Φ, eA, ψA, e, Algebra.TensorProduct.algebraMap_apply]
  change e.Etale
  rw [hcomp]
  exact etale_comp _ _ (RingHom.etale_algebraMap.2 inferInstance) (RingHom.Etale.of_bijective hΦ)

end CrystallineSemistableComparison.Onto.CLB

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.CLBGen =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.CLBKer =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.CLBKer", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.AlgebraicGeometry.Morphisms.Finite\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry

namespace CrystallineSemistableComparison.Onto.CLB

theorem app_surj {X Y : Scheme.{0}} (f : X ⟶ Y) [IsClosedImmersion f] (U : Y.Opens) (hU : IsAffineOpen U) :
    Function.Surjective (f.app U).hom :=
  f.app_surjective U hU

theorem fromSpec_appLE_top {Y : Scheme.{0}} {D : Y.Opens} (hD : IsAffineOpen D)
    (e : (⊤ : (Spec Γ(Y, D)).Opens) ≤ hD.fromSpec ⁻¹ᵁ D) :
    hD.fromSpec.appLE D ⊤ e = (Scheme.ΓSpecIso Γ(Y, D)).inv := by
  unfold Scheme.Hom.appLE
  rw [hD.fromSpec_app_self]
  simp [← Functor.map_comp]

theorem SpecMap_appLE_top {R S : CommRingCat.{0}} (f : R ⟶ S) (e : (⊤ : (Spec S).Opens) ≤ Spec.map f ⁻¹ᵁ ⊤) :
    (Spec.map f).appLE ⊤ ⊤ e = (Scheme.ΓSpecIso R).hom ≫ f ≫ (Scheme.ΓSpecIso S).inv := by
  rw [← Scheme.ΓSpecIso_naturality_assoc, Iso.hom_inv_id, Category.comp_id]
  rfl

theorem appLE_fromSpec_quot {Y : Scheme.{0}} {D : Y.Opens} (hD : IsAffineOpen D) (J : Ideal Γ(Y, D))
    (e : (⊤ : (Spec (CommRingCat.of (Γ(Y, D) ⧸ J))).Opens) ≤
      (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk J)) ≫ hD.fromSpec) ⁻¹ᵁ D) (x : Γ(Y, D)) :
    ((Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk J)) ≫ hD.fromSpec).appLE D ⊤ e).hom x =
      (Scheme.ΓSpecIso (CommRingCat.of (Γ(Y, D) ⧸ J))).inv.hom (Ideal.Quotient.mk J x) := by
  rw [← Scheme.Hom.appLE_comp_appLE _ _ D ⊤ ⊤ (by simp [hD.fromSpec_preimage_self]) (by simp)]
  rw [fromSpec_appLE_top, SpecMap_appLE_top]
  change (Scheme.ΓSpecIso (CommRingCat.of (Γ(Y, D) ⧸ J))).inv.hom (Ideal.Quotient.mk J
    ((Scheme.ΓSpecIso Γ(Y, D)).hom.hom ((Scheme.ΓSpecIso Γ(Y, D)).inv.hom x))) = _
  rw [← CommRingCat.comp_apply, Iso.inv_hom_id, CommRingCat.id_apply]

theorem ker_snd {W Z Y : Scheme.{0}} (i : W ⟶ Z) [IsClosedImmersion i] (π : Y ⟶ Z) (V : Z.Opens) (hV : IsAffineOpen V)
    (D : Y.Opens) (hD : IsAffineOpen D) (hDV : D ≤ π ⁻¹ᵁ V) :
    RingHom.ker ((pullback.snd i π).app D).hom = Ideal.map (π.appLE V D hDV).hom (RingHom.ker (i.app V).hom) := by
  apply le_antisymm
  · set I := RingHom.ker (i.app V).hom
    set J := Ideal.map (π.appLE V D hDV).hom I
    have hI' : IsAffineOpen (i ⁻¹ᵁ V) := hV.preimage i
    have hsurj := i.app_surjective V hV
    let e := RingHom.quotientKerEquivOfSurjective hsurj
    have hIJ : I ≤ J.comap (π.appLE V D hDV).hom := Ideal.le_comap_map
    let ψ : Γ(W, i ⁻¹ᵁ V) →+* Γ(Y, D) ⧸ J := (Ideal.quotientMap J (π.appLE V D hDV).hom hIJ).comp e.symm.toRingHom
    let a : Spec (CommRingCat.of (Γ(Y, D) ⧸ J)) ⟶ Y := Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk J)) ≫ hD.fromSpec
    let w : Spec (CommRingCat.of (Γ(Y, D) ⧸ J)) ⟶ W := Spec.map (CommRingCat.ofHom ψ) ≫ hI'.fromSpec
    have hring : i.appLE V (i ⁻¹ᵁ V) le_rfl ≫ CommRingCat.ofHom ψ =
        π.appLE V D hDV ≫ CommRingCat.ofHom (Ideal.Quotient.mk J) := by
      ext x
      simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom]
      rw [← Scheme.Hom.app_eq_appLE]
      have : e.symm ((i.app V).hom x) = Ideal.Quotient.mk I x := by
        rw [RingEquiv.symm_apply_eq]; rfl
      change Ideal.quotientMap J (π.appLE V D hDV).hom hIJ (e.symm ((i.app V).hom x)) = _
      rw [this, Ideal.quotientMap_mk]
    have hw : w ≫ i = a ≫ π := by
      simp only [w, a, Category.assoc]
      rw [← IsAffineOpen.SpecMap_appLE_fromSpec i hV hI' le_rfl,
        ← IsAffineOpen.SpecMap_appLE_fromSpec π hV hD hDV, ← Spec.map_comp_assoc, ← Spec.map_comp_assoc, hring]
    let c := pullback.lift w a hw
    intro x hx
    rw [RingHom.mem_ker] at hx
    have he : (⊤ : (Spec (CommRingCat.of (Γ(Y, D) ⧸ J))).Opens) ≤ a ⁻¹ᵁ D := by
      simp [a, hD.fromSpec_preimage_self]
    have h0 : (a.appLE D ⊤ he).hom x = 0 := by
      have hca : c ≫ pullback.snd i π = a := pullback.lift_snd _ _ _
      have key : ∀ (b : Spec (CommRingCat.of (Γ(Y, D) ⧸ J)) ⟶ Y) (hb : c ≫ pullback.snd i π = b) (e' : ⊤ ≤ b ⁻¹ᵁ D),
          (b.appLE D ⊤ e').hom x = 0 := by
        rintro b rfl e'
        rw [← Scheme.Hom.appLE_comp_appLE _ _ D ((pullback.snd i π) ⁻¹ᵁ D) ⊤ le_rfl (by simpa using e'),
          ← Scheme.Hom.app_eq_appLE]
        simp [hx]
      exact key a hca he
    rw [appLE_fromSpec_quot hD J he x] at h0
    have h1 : Ideal.Quotient.mk J x = 0 := by
      have h2 := congrArg (Scheme.ΓSpecIso (CommRingCat.of (Γ(Y, D) ⧸ J))).hom.hom h0
      rw [← CommRingCat.comp_apply, Iso.inv_hom_id, CommRingCat.id_apply, map_zero] at h2
      exact h2
    exact Ideal.Quotient.eq_zero_iff_mem.1 h1
  · rw [Ideal.map_le_iff_le_comap]
    intro g hg
    rw [RingHom.mem_ker] at hg
    rw [Ideal.mem_comap, RingHom.mem_ker]
    have h1 : ∀ (f : pullback i π ⟶ Z) (hf : pullback.fst i π ≫ i = f) (e : (pullback.snd i π) ⁻¹ᵁ D ≤ f ⁻¹ᵁ V),
        (f.appLE V _ e).hom g = 0 := by
      rintro f rfl e
      rw [Scheme.Hom.comp_appLE]
      simp [hg]
    rw [← CommRingCat.comp_apply, Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_comp_appLE]
    exact h1 _ pullback.condition _

end CrystallineSemistableComparison.Onto.CLB

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.CLBKer =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.ChartLawsB =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.ChartLawsB", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CosieveBot\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ChartGrConst\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.CLBAlg\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.CLBGen\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.CLBKer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry

namespace CrystallineSemistableComparison.Onto

open Pb CLB

variable {K : Type} [CommRing K] {W Z Y : Scheme.{0}}

theorem strV_appLE (q : Z ⟶ Spec (CommRingCat.of K)) (π : Y ⟶ Z) (V : Z.Opens) (U : Y.Opens) (h : U ≤ π ⁻¹ᵁ V) :
    strV (π ≫ q) U = (π.appLE V U h).hom.comp (strV q V) := by
  unfold strV
  rw [← Scheme.Hom.appLE_comp_appLE π q ⊤ V U le_top h]
  rfl

theorem strV_app (q : Z ⟶ Spec (CommRingCat.of K)) (π : Y ⟶ Z) (U : Z.Opens) :
    strV (π ≫ q) (π ⁻¹ᵁ U) = (π.app U).hom.comp (strV q U) := by
  rw [strV_appLE q π U (π ⁻¹ᵁ U) le_rfl, Scheme.Hom.app_eq_appLE]

theorem rs_appLE (π : Y ⟶ Z) (V : Z.Opens) (U U' : Y.Opens) (hU : U ≤ π ⁻¹ᵁ V) (h : U' ≤ U) (a : Γ(Z, V)) :
    rs h ((π.appLE V U hU).hom a) = (π.appLE V U' (h.trans hU)).hom a := by
  unfold rs
  rw [← CommRingCat.comp_apply, Scheme.Hom.appLE_map]

theorem card_ne (m : ℕ) (j0 : Fin m) : Fintype.card {j : Fin m // j ≠ j0} = m - 1 := by
  simp [Fintype.card_subtype_compl]

theorem chartLaws_B : ∀ (K : Type) [Field K] (W Z Y : Scheme.{0}) (q : Z ⟶ Spec (CommRingCat.of K)) (i : W ⟶ Z)
    [IsClosedImmersion i] (π : Y ⟶ Z) (d : ℕ) (V : Z.Opens) (c : BChart q i π d V),
    ∀ (k : Fin d) (D : Y.Opens) (h : D ≤ c.C k), IsAffineOpen D → Nonempty (Coord (π ≫ q) D (c.n + d)) ∧
      Nonempty (Coord (pullback.snd i π ≫ π ≫ q) (pullback.snd i π ⁻¹ᵁ D) (c.n + d - 1)) ∧
      RingHom.ker ((pullback.snd i π).app D).hom = Ideal.span {(π.appLE V D (h.trans (c.C_le k))).hom (c.t k)} ∧
      ∀ (a : ℕ) (ω : Om K (Sec (π ≫ q) D) a),
        (show Sec (π ≫ q) D from (π.appLE V D (h.trans (c.C_le k))).hom (c.t k)) • ω = 0 → ω = 0 := by
  intro K _ W Z Y q i _ π d V c k D h hD
  have hDV : D ≤ π ⁻¹ᵁ V := h.trans (c.C_le k)
  set φ := (π.appLE V (c.C k) (c.C_le k)).hom with hφ
  set yC : Fin c.n ⊕ Fin d → Γ(Y, c.C k) := Sum.elim (φ ∘ c.x) (fun j => if j = k then φ (c.t k) else c.u k j) with hyC
  have hC := chart_etale (strV q V) c.x c.t c.etale φ (c.u k) k (c.surj k) (c.rel k)
  let cC : Coord (π ≫ q) (c.C k) (c.n + d) :=
    ⟨c.C_aff k, yC ∘ finSumFinEquiv.symm, by
      rw [strV_appLE q π V (c.C k) (c.C_le k)]
      exact etale_reindex _ _ _ hC⟩
  obtain ⟨cD, hcD⟩ := coord_res cC h hD
  set j0 : Fin (c.n + d) := finSumFinEquiv (Sum.inr k) with hj0
  set τ := (π.appLE V D hDV).hom (c.t k) with hτ
  have ht : cD.t j0 = τ := by
    rw [hcD]
    change rs h (yC (finSumFinEquiv.symm (finSumFinEquiv (Sum.inr k)))) = _
    rw [Equiv.symm_apply_apply]
    simp only [hyC, Sum.elim_inr, hφ]
    exact rs_appLE π V (c.C k) D (c.C_le k) h (c.t k)

  have hrel : ∀ j, φ (c.t j) = φ (c.t k) * c.u k j := by
    intro j
    have hm : MvPolynomial.C (c.t j) - MvPolynomial.C (c.t k) * MvPolynomial.X j ∈
        RingHom.ker (MvPolynomial.eval₂Hom φ (c.u k)) := by
      rw [c.rel k]
      exact Ideal.subset_span (Set.mem_insert_of_mem _ ⟨j, rfl⟩)
    rw [RingHom.mem_ker] at hm
    simpa [sub_eq_zero] using hm
  have hker : RingHom.ker ((pullback.snd i π).app D).hom = Ideal.span {τ} := by
    rw [ker_snd i π V c.affine D hD hDV, c.ker, Ideal.map_span]
    apply le_antisymm
    · rw [Ideal.span_le]
      rintro _ ⟨_, ⟨j, rfl⟩, rfl⟩
      rw [SetLike.mem_coe, Ideal.mem_span_singleton']
      refine ⟨rs h (c.u k j), ?_⟩
      rw [hτ, ← rs_appLE π V (c.C k) D (c.C_le k) h, ← rs_appLE π V (c.C k) D (c.C_le k) h, ← map_mul, ← hφ,
        hrel j, mul_comm]
    · rw [Ideal.span_le, Set.singleton_subset_iff]
      exact Ideal.subset_span ⟨c.t k, ⟨k, rfl⟩, rfl⟩
  refine ⟨⟨cD⟩, ?_, hker, ?_⟩
  · have hsurj := app_surj (pullback.snd i π) D hD
    have hq := quot_etale (strV (π ≫ q) D) cD.t j0 cD.etale ((pullback.snd i π).app D).hom hsurj (by rw [hker, ht])
    let e : Fin (c.n + d - 1) ≃ {j : Fin (c.n + d) // j ≠ j0} :=
      (Fintype.equivFinOfCardEq (card_ne (c.n + d) j0)).symm
    refine ⟨⟨hD.preimage (pullback.snd i π), (fun j : {j : Fin (c.n + d) // j ≠ j0} =>
      ((pullback.snd i π).app D).hom (cD.t j)) ∘ e, ?_⟩⟩
    rw [strV_app (π ≫ q) (pullback.snd i π) D]
    exact etale_reindex _ _ _ hq
  · intro a ω hω
    have hal : algebraMap K (Sec (π ≫ q) D) = strV (π ≫ q) D := rfl
    have he : (MvPolynomial.eval₂Hom (algebraMap K (Sec (π ≫ q) D)) (cD.t : Fin (c.n + d) → Sec (π ≫ q) D)).Etale := by
      rw [hal]; exact cD.etale
    have key : ∀ ω' : Om K (Sec (π ≫ q) D) a, (cD.t j0 : Sec (π ≫ q) D) • ω' = 0 → ω' = 0 :=
      coord_nzd (K := K) (B := Sec (π ≫ q) D) _ he j0 a
    apply key
    rw [ht]
    exact hω

end CrystallineSemistableComparison.Onto

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.ChartLawsB =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.ChartLaws =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.ChartLaws", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CosieveBot\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.ChartLawsA\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.ChartLawsB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace CrystallineSemistableComparison.Onto

theorem chartLaws_pf : ChartLaws := by
  intro K _ W Z Y q i _ π d V c
  obtain ⟨h1, h2, h3⟩ := chartLaws_A K W Z Y q i π d V c
  exact ⟨h1, h2, h3, fun k D h hD => chartLaws_B K W Z Y q i π d V c k D h hD⟩

end CrystallineSemistableComparison.Onto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.EtaleChartBaseChange.ChartLaws =====
