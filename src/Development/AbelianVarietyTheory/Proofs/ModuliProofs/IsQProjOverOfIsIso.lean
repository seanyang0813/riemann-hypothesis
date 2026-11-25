module

public import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.SystemPrimesDistinctLevelsGeThree
import Development.AbelianVarietyTheory.Definitions.ArchimedeanThetaValues.IsCoprimeTwoSubRtTwoAddRt
public import Development.AbelianVarietyTheory.Definitions.ArchimedeanThetaValues.SqrtNegDiscMemCoeffField
public import Development.AbelianVarietyTheory.Definitions.Degenerations.IsNormalSchemeSp
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.IsAbelianSchemeAndExtendOfGenericHoms
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsCoreOfIsAbelianScheme
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.BijectiveRestrictPointsOfEtaleOfHenselian
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsReducedAlgebraOfSmoothOfIsNoetherianRing
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.CardTorsionAbelianVariety
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.CmModelCoefficientSubringDedekindCompatibleEmbed
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSabCancel
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsPullCubicalOfIso
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ConnectedSpaceOfSection
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ConnectedSpaceSpecOfIsLocalRing
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
public import Mathlib.Algebra.TrivSqZeroExt.Ideal
import Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale
import Mathlib.AlgebraicTopology.FundamentalGroupoid.SimplyConnected
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
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AmplePt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.Splits
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.ThetaMove

@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj TensorProduct Pointwise
open GlobalTheory.Models

noncomputable section

namespace GlobalTheory.Models.RankZero

def Triv {X : Scheme.{0}} (L : LB X) : Prop := ∃ t : LB.Gen L, t.IsGen

section Bundles

variable {X Y : Scheme.{0}}

theorem Triv.linComb {L : LB X} (h : Triv L) {K : Type} [Fintype K] (φ : K → (Y ⟶ X)) (ε : K → ℤ) :
    Triv (LB.LinComb L φ ε) := by
  obtain ⟨t, ht⟩ := h
  refine ⟨⟨fun j => ∏ k, res (LB.wchart_le L φ j k) (pullU (φ k) _ (t.s (j k))) ^ ε k⟩, fun i j => ?_⟩
  refine unit_ext fun y hy => ?_
  have v : ∀ j : K → L.ι, y ∈ LB.wchart L φ j →
      gm (𝟙 Y) y (LB.wchart L φ j) (∏ k, res (LB.wchart_le L φ j k) (pullU (φ k) _ (t.s (j k))) ^ ε k) =
        ∏ k, gm (φ k) y (L.U (j k)) (t.s (j k)) ^ ε k := fun j hj =>
    (map_prod _ _ _).trans (Finset.prod_congr rfl fun k _ => (map_zpow _ _ _).trans (congrArg (· ^ ε k)
      (gm_rp₁ (φ k) y _ _ (LB.wchart_le L φ j k) hj _)))
  refine ((gm_res _ y _ hy _).trans (v i hy.1)).trans (Eq.symm ((map_mul _ _ _).trans ((congrArg₂ (· * ·)
    (gm_linComb L φ ε (𝟙 Y) y i j hy.1 hy.2) ((gm_res _ y _ hy _).trans (v j hy.2))).trans ?_)))
  rw [← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl fun k _ => ?_
  have hm : φ k y ∈ L.U (i k) ⊓ L.U (j k) := ⟨LB.wchart_le L φ i k hy.1, LB.wchart_le L φ j k hy.2⟩
  rw [← mul_zpow, Category.id_comp]
  exact congrArg (· ^ ε k) (((gm_res (φ k) y _ hm _).symm.trans ((congrArg (gm (φ k) y _) (ht (i k) (j k))).trans
    ((map_mul _ _ _).trans (congrArg₂ (· * ·) rfl (gm_res (φ k) y _ hm _))))).symm)

theorem Triv.of_pull {L : LB X} {F : Y ⟶ X} (h : Triv (L.pull F)) (ρ : X ⟶ Y) (e : ρ ≫ F = 𝟙 X) : Triv L := by
  obtain ⟨t, ht⟩ := h
  exact gen_chartPull (chartPullSec L F ρ e) t ht

theorem Triv.lbIso {L M : LB X} (h : Triv L) (h' : Triv M) : LBIso L M := by
  obtain ⟨t, ht⟩ := h
  obtain ⟨u, hu⟩ := h'
  refine ⟨⟨fun p => res inf_le_left (u.s p.1) * (res inf_le_right (t.s p.2))⁻¹⟩, fun p q => unit_ext fun y hy => ?_⟩
  have v : ∀ p : M.ι × L.ι, y ∈ M.U p.1 ⊓ L.U p.2 →
      gm (𝟙 X) y (M.U p.1 ⊓ L.U p.2) (res inf_le_left (u.s p.1) * (res inf_le_right (t.s p.2))⁻¹) =
        gm (𝟙 X) y _ (u.s p.1) * (gm (𝟙 X) y _ (t.s p.2))⁻¹ := fun p hp =>
    (map_mul _ _ _).trans (congrArg₂ (· * ·) (gm_res _ y _ hp _) ((map_inv _ _).trans
      (congrArg (·⁻¹) (gm_res _ y _ hp _))))
  have w : ∀ {N : LB X} (s : LB.Gen N), s.IsGen → ∀ i j, y ∈ N.U i ⊓ N.U j →
      gm (𝟙 X) y _ (s.s i) = gm (𝟙 X) y _ (N.g i j) * gm (𝟙 X) y _ (s.s j) := fun s hs i j hm =>
    (gm_res _ y _ hm _).symm.trans ((congrArg (gm (𝟙 X) y _) (hs i j)).trans
      ((map_mul _ _ _).trans (congrArg₂ (· * ·) rfl (gm_res _ y _ hm _))))
  refine ((gm_res _ y _ hy _).trans (v p hy.1)).trans (Eq.symm ((map_mul _ _ _).trans ((congrArg₂ (· * ·)
    (gm_div L M (𝟙 X) y p q hy) ((gm_res _ y _ hy _).trans (v q hy.2))).trans ?_)))
  rw [w u hu p.1 q.1 ⟨hy.1.1, hy.2.1⟩, w t ht p.2 q.2 ⟨hy.1.2, hy.2.2⟩, mul_inv, _root_.mul_mul_mul_comm]

end Bundles

section Groups

variable {S S' : Scheme.{0}}

theorem hom_unique {G : Over S} (hG : IsIso G.hom) {T : Over S} (x y : T ⟶ G) : x = y :=
  Over.OverMorphism.ext (by rw [← cancel_mono G.hom, Over.w, Over.w])

theorem left_unique {G : Over S} (hG : IsIso G.hom) {T : Scheme.{0}} {x y : T ⟶ G.left} (h : x ≫ G.hom = y ≫ G.hom) :
    x = y := (cancel_mono G.hom).1 h

theorem isIso_unit (S : Scheme.{0}) : IsIso (𝟙_ (Over S)).hom := inferInstanceAs (IsIso (𝟙 S))

theorem isIso_left {G G' : Over S} (hG : IsIso G.hom) (hG' : IsIso G'.hom) (x : G ⟶ G') : IsIso x.left :=
  IsIso.of_isIso_fac_right (Over.w x)

theorem section_w {G : Over S} (x : 𝟙_ (Over S) ⟶ G) : x.left ≫ G.hom = 𝟙 S := Over.w x

theorem triv_of_pull {G G' : Over S} (hG : IsIso G.hom) (hG' : IsIso G'.hom) (x : G ⟶ G') {L : LB G'.left}
    (h : Triv (L.pull x.left)) : Triv L :=
  have := isIso_left hG hG' x
  h.of_pull (inv x.left) (IsIso.inv_hom_id _)

theorem triv_rig {G : Over S} [GrpObj G] (hG : IsIso G.hom) (L : RigLB G) : Triv L.L :=
  triv_of_pull (isIso_unit S) hG η[G] ⟨L.rig, L.rigGen⟩

def zmap {G' : Over S'} {G : Over S} (hG : IsIso G.hom) (f : S' ⟶ S) : G'.left ⟶ G.left := G'.hom ≫ f ≫ inv G.hom

theorem zmap_w {G' : Over S'} {G : Over S} (hG : IsIso G.hom) (f : S' ⟶ S) :
    zmap (G' := G') hG f ≫ G.hom = G'.hom ≫ f := by simp [zmap]

theorem isGrpPullback_zero {G' : Over S'} {G : Over S} [GrpObj G'] [GrpObj G] (hG' : IsIso G'.hom) (hG : IsIso G.hom)
    (f : S' ⟶ S) : IsGrpPullback G' G f (zmap hG f) :=
  ⟨IsPullback.of_vert_isIso ⟨zmap_w hG f⟩, fun T x y x₀ y₀ _ _ => left_unique hG (by
    rw [Over.w, Category.assoc, zmap_w, ← Category.assoc, Over.w]; rfl)⟩

theorem isAbelianScheme_zero {G : Over S} [GrpObj G] [IsCommMonObj G] (hG : IsIso G.hom) : IsAbelianScheme G :=
  ⟨inferInstance, inferInstance, inferInstance, MorphismProperty.of_isPullback (P := @GeometricallyConnected)
    (isGrpPullback_zero hG (isIso_unit S) (𝟙 S)).1 (UU.isAbelianScheme_unit S).geomConnected⟩

theorem sec_comm {G' : Over S'} {G : Over S} (hG : IsIso G.hom) {f : S' ⟶ S} {φ : G'.left ⟶ G.left}
    (w : φ ≫ G.hom = G'.hom ≫ f) (x' : 𝟙_ (Over S') ⟶ G') (x : 𝟙_ (Over S) ⟶ G) : x'.left ≫ φ = f ≫ x.left :=
  left_unique hG ((Category.assoc _ _ _).trans ((congrArg (x'.left ≫ ·) w).trans ((Category.assoc _ _ _).symm.trans
    ((congrArg (· ≫ f) (section_w x')).trans ((Category.id_comp f).trans ((Category.comp_id f).symm.trans
      ((congrArg (f ≫ ·) (section_w x).symm).trans (Category.assoc _ _ _).symm)))))))

theorem weilIs_zero {G : Over S} [GrpObj G] (hG : IsIso G.hom) {L : LB G.left} (hL : L.IsLB) (h : Triv L) (k : ℤ)
    {T : Over S} (x y : T ⟶ G) : Out.WeilIs G L k x y 1 := by
  intro p
  refine ⟨⊤, trivial, ?_, fun θx θy _ _ => corr_of_val hL fun z J hJ => ?_⟩
  · obtain ⟨a, ha⟩ := h.linComb ![(snd _ G).left, (Out.translPt G (Out.overResι ⊤ ≫ x)).left] ![k, -k]
    obtain ⟨b, hb⟩ := h.linComb ![(snd _ G).left, (Out.translPt G (Out.overResι ⊤ ≫ y)).left] ![k, -k]
    exact ⟨⟨_, a, ha⟩, ⟨_, b, hb⟩, rfl, rfl⟩
  · have e : ∀ u : Out.overRes (T := T) ⊤ ⟶ G, Out.translT G u = 𝟙 _ := fun u =>
      CartesianMonoidalCategory.hom_ext _ _ (by simp [Out.translT]) (hom_unique hG _ _)
    refine ((val_mul hJ _ _ _).trans (congrArg₂ (· * ·) rfl (val_pull hJ _ _ _))).trans (Eq.symm
      (((val_mul hJ _ _ _).trans (congrArg₂ (· * ·) ((val_mul hJ _ _ _).trans
        (congrArg₂ (· * ·) rfl (val_pull hJ _ _ _))) (H1.val_constGen _ _ _ _ _))).trans ?_))
    rw [e, e, Out.unitRes, map_one, map_one, _root_.mul_one, Over.id_left, Category.comp_id]
    exact mul_comm _ _

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem nonempty_sabMap {t' : SAB H S'} {t : SAB H S} (h' : IsIso t'.G.hom) (h : IsIso t.G.hom) (f : S' ⟶ S) :
    Nonempty (SABMap t' t f) := by
  obtain ⟨t₁, ⟨m⟩⟩ := Inhab.exists_pull f t
  have h₁ : IsIso t₁.G.hom := MorphismProperty.of_isPullback (P := MorphismProperty.isomorphisms _) m.cart.1 h
  let α : t'.G ⟶ t₁.G := Over.homMk (zmap h₁ (𝟙 _)) (by simp [zmap_w])
  have : IsMonHom α := ⟨hom_unique h₁ _ _, hom_unique h₁ _ _⟩
  let n : SABMap t' t₁ (𝟙 _) := ⟨CubeMap.ofHom α, isGrpPullback_zero h' h₁ _, rfl,
    fun a => congrArg (fun q => q.left) (hom_unique h₁ (t'.act.act a ≫ α) (α ≫ t₁.act.act a)),
    HeckePoint.isPullCubical_of_iso globalFns_holds (isAbelianScheme_zero h') α _ _
      ((triv_rig h' _).lbIso ((triv_rig h₁ _).linComb _ _))⟩
  obtain ⟨r, -⟩ := ObjMaps.exists_sab_comp m n
  exact ⟨Category.id_comp f ▸ r⟩

end Groups

theorem surjective_unit
    (hc : ∀ (k : Type) [Field k] [IsAlgClosed k] (B : Over (Sp k)) [GrpObj B] (g N : ℕ), IsAbelianScheme B →
      SmoothOfRelativeDimension g B.hom → (N : k) ≠ 0 → Nat.card {x : 𝟙_ (Over (Sp k)) ⟶ B // x ^ N = 1} = N ^ (2 * g))
    {k : Type} [Field k] [IsAlgClosed k] (B : Over (Sp k)) [GrpObj B] (hB : IsAbelianScheme B) {N : ℕ} (h₁ : 1 < N)
    (hN : (N : k) ≠ 0) (h : ∀ x : 𝟙_ (Over (Sp k)) ⟶ B, x ^ N = 1 → x = 1) : Function.Surjective (eSec B) := by
  obtain ⟨g, hg⟩ := AbelianDim.exists_relDim k B hB
  have h1 : Nat.card {x : 𝟙_ (Over (Sp k)) ⟶ B // x ^ N = 1} = 1 := by
    rw [Nat.card_eq_one_iff_exists]
    exact ⟨⟨1, one_pow N⟩, fun x => Subtype.ext (h x.1 x.2)⟩
  rw [hc k B g N hB hg hN] at h1
  obtain rfl : g = 0 := by
    rcases (Nat.pow_eq_one.1 h1) with h | h <;> omega
  have := hB.proper
  have := hB.geomConnected
  have := hB.smooth
  have : Etale B.hom := (Etale.iff_smoothOfRelativeDimension_zero _).2 hg
  obtain ⟨ho, hcl⟩ := isOpenImmersion_and_isClosedImmersion_of_section_of_etale B.hom (eSec B) (section_w η[B])
  have : ConnectedSpace B.left := (GroupConn.connectedSpace_group _ B).1
  have hne : (Set.range (eSec B)).Nonempty := ⟨_, (default : PrimeSpectrum k), rfl⟩
  exact Set.range_eq_univ.1 (IsClopen.eq_univ ⟨(eSec B).isClosedEmbedding.isClosed_range,
    (eSec B).isOpenEmbedding.isOpen_range⟩ hne)

theorem isIso_of_no_torsion
    (hc : ∀ (k : Type) [Field k] [IsAlgClosed k] (B : Over (Sp k)) [GrpObj B] (g N : ℕ), IsAbelianScheme B →
      SmoothOfRelativeDimension g B.hom → (N : k) ≠ 0 → Nat.card {x : 𝟙_ (Over (Sp k)) ⟶ B // x ^ N = 1} = N ^ (2 * g))
    {S : Scheme.{0}} [IsReduced S] (G : Over S) [GrpObj G] (hG : IsAbelianScheme G)
    (h : ∀ (k : Type) [Field k] [IsAlgClosed k] (x : Sp k ⟶ S), ∃ N : ℕ, 1 < N ∧ (N : k) ≠ 0 ∧
      ∀ g : Over.mk x ⟶ G, g ^ N = 1 → g = 1) : IsIso G.hom := by
  have := hG.proper
  have := hG.smooth
  have := hG.comm
  have : IsReduced G.left := isReduced_of_smooth_of_isReduced G.hom
  have hcl := isClosedImmersion_of_section_of_isSeparated G.hom (eSec G) (section_w η[G])
  have hs : Surjective (eSec G) := by
    refine ⟨fun y => ?_⟩
    let k := AlgebraicClosure (G.left.residueField y)
    let u : Sp k ⟶ G.left := Spec.map (CommRingCat.ofHom (algebraMap (G.left.residueField y) k)) ≫
      G.left.fromSpecResidueField y
    have hu : ∀ p, u p = y := fun p => Scheme.fromSpecResidueField_apply y _
    let x := u ≫ G.hom
    have hp := isGrpPullback_pullback G x
    have hB := isAbelianScheme_pullback_obj x G hG
    have := hB.comm
    obtain ⟨N, h₁, hN, ht⟩ := h k ((𝟙_ (Over (Sp k))).hom ≫ x)
    have hsB := surjective_unit hc _ hB h₁ hN fun g hg => by
      have e := ht (pushHom hp _ g) (by rw [← map_pow, hg, map_one])
      rw [← map_one (pushHom hp (𝟙_ _))] at e
      exact Over.OverMorphism.ext (hp.1.hom_ext (congrArg (fun q => q.left) e) (by rw [Over.w, Over.w]))
    obtain ⟨p, hp'⟩ := hsB (hp.1.lift u (𝟙 _) (Category.id_comp _).symm (default : PrimeSpectrum k))
    refine ⟨x p, ?_⟩
    have e₁ := congrArg (fun q => q p) (cubeMapOf hp).e_comm
    have e₂ := congrArg (fun q => q (default : PrimeSpectrum k)) (hp.1.lift_fst u (𝟙 _) (Category.id_comp _).symm)
    exact e₁.symm.trans ((congrArg (pullback.fst G.hom x) hp').trans (e₂.trans (hu _)))
  have : IsIso (eSec G) := isIso_of_isClosedImmersion_of_surjective _
  have : IsIso (eSec G ≫ G.hom) := by
    rw [show eSec G ≫ G.hom = 𝟙 S from section_w η[G]]
    exact inferInstanceAs (IsIso (𝟙 S))
  exact IsIso.of_isIso_comp_left (eSec G) G.hom

abbrev Count : Prop := ∀ (k : Type) [Field k] [IsAlgClosed k] (B : Over (Sp k)) [GrpObj B] (g N : ℕ),
  IsAbelianScheme B → SmoothOfRelativeDimension g B.hom → (N : k) ≠ 0 →
    Nat.card {x : 𝟙_ (Over (Sp k)) ⟶ B // x ^ N = 1} = N ^ (2 * g)

theorem spMap_comp {R R' R'' : Type} [CommRing R] [CommRing R'] [CommRing R''] (f : R →+* R') (g : R' →+* R'') :
    spMap g ≫ spMap f = spMap (g.comp f) := (Spec.map_comp _ _).symm

theorem exists_spMap {R R' : Type} [CommRing R] [CommRing R'] (x : Sp R' ⟶ Sp R) : ∃ β : R →+* R', x = spMap β := by
  obtain ⟨φ, rfl⟩ := Spec.map_surjective x
  exact ⟨φ.hom, rfl⟩

theorem isQProjOver_of_isIso {R : Type} [CommRing R] {X : Scheme.{0}} (f : X ⟶ Sp R) (hf : IsIso f) :
    IsQProjOver f := by
  obtain ⟨N, i, hi, h⟩ := Inhab.isProjOver_id R
  exact ⟨N, f ≫ i, inferInstance, inferInstance, by rw [Category.assoc, h, Category.comp_id]⟩

theorem eq_constPt_of {R k : Type} [CommRing R] [Field k] (x : Sp (DualNumber k) ⟶ Sp R)
    (h : ∀ β : R →+* DualNumber k,
      β = ((algebraMap k (DualNumber k)).comp (TrivSqZeroExt.fstHom k k k).toRingHom).comp β) : x = constPt x := by
  obtain ⟨β, rfl⟩ := exists_spMap x
  rw [constPt, spMap_comp, spMap_comp]
  exact congrArg spMap (h β)

theorem eq_constPt_field {F k : Type} [Field F] [CharZero F] [Algebra.IsAlgebraic ℚ F] [Field k]
    (x : Sp (DualNumber k) ⟶ Sp F) : x = constPt x := by
  refine eq_constPt_of x fun φ => ?_
  letI : Algebra ℚ (DualNumber k) := (φ.comp (algebraMap ℚ F)).toAlgebra
  have : Algebra.FormallyUnramified ℚ F := Algebra.FormallyUnramified.of_isSeparable ℚ F
  have := Algebra.FormallyUnramified.ext' (R := ℚ) (A := F) (B := DualNumber k)
    (TrivSqZeroExt.fstHom k k k).toRingHom ⟨2, TrivSqZeroExt.kerIdeal_sq k k⟩ φ.toRatAlgHom
    ((algebraMap k (DualNumber k)).comp ((TrivSqZeroExt.fstHom k k k).toRingHom.comp φ)).toRatAlgHom
    (fun a => by simp [TrivSqZeroExt.algebraMap_eq_inl])
  exact RingHom.ext fun a => DFunLike.congr_fun this a

section Objects

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H}

theorem subsingleton_La (hD : D.p + D.q = 0) : Subsingleton D.La := by
  have := D.fin
  have := D.proj
  have : Module.Flat (𝓞 E) D.La := inferInstance
  exact Module.finrank_zero_iff.mp (D.rank.trans hD)

theorem isIso_zeroTriple (S : Scheme.{0}) : IsIso (Inhab.zeroTriple H S).G.hom := isIso_unit S

theorem lieMult_zero {S : Scheme.{0}} {O k : Type} [CommRing O] [Field k] {G : Over S} [GrpObj G] (hG : IsIso G.hom)
    (act : OAct O G) (t : Sp k ⟶ S) (τ : O →+* k) {n : ℕ} (hn : n = 0) : LieMult act t τ n := by
  subst hn
  exact ⟨Fin.elim0, fun i => i.elim0, fun w _ => ⟨Fin.elim0, ⟨Fin.elim0, fun i => i.elim0, hom_unique hG _ _⟩,
    fun _ _ => Subsingleton.elim _ _⟩⟩

def zeroObj (hD : D.p + D.q = 0) (l : Level H) {S : Scheme.{0}} (s : S ⟶ Sp (KA l)) : Obj D l (baseKA l) s where
  t := Inhab.zeroTriple H S
  proper := Inhab.isProper_zeroTriple S
  ample := (Out.Inh.zeroPolAV S).ample
  ktriv := fun _ _ _ _ _ => hom_unique (isIso_zeroTriple S) _ _
  eta := fun _ => 1
  eta_add := fun _ _ => (_root_.mul_one _).symm
  eta_ker := fun _ _ => rfl
  etaA := fun _ => 1
  etaA_add := fun _ _ => (_root_.mul_one _).symm
  etaA_ker := fun _ => rfl
  geom := fun k _ _ x β _ => by
    have hz := isIso_zeroTriple (H := H) S
    have := subsingleton_La hD
    have := BaseRing.finiteDimensional_KA l
    obtain ⟨ζ, h₁, h₂, h₃⟩ := HostModel.exists_roots (KA l) k β
    refine ⟨fun τ => ⟨fun _ => lieMult_zero hz _ _ _ (by omega), fun _ => lieMult_zero hz _ _ _ (by omega)⟩,
      ⟨ζ, h₁, h₂, fun _ _ => 1, fun _ _ _ => hom_unique hz _ _, fun _ _ _ => hom_unique hz _ _,
        fun _ _ _ => ⟨fun _ => ⟨0, Subsingleton.elim _ _⟩, fun _ => rfl⟩,
        fun _ _ _ => ⟨fun _ => ⟨0, hom_unique hz _ _⟩, fun _ => hom_unique hz _ _⟩,
        fun _ _ _ _ _ => hom_unique hz _ _, fun n _ a b => ?_⟩,
      h₃ _ l.A_pos _ rfl, fun _ => hom_unique hz _ _, fun _ _ => hom_unique hz _ _⟩
    have e : unitOn (ζ n ^ D.EF a b) = 1 := by
      rw [Subsingleton.elim b 0, map_zero, zpow_zero, unitOn, map_one]
    rw [e]
    exact weilIs_zero hz (Inhab.zeroTriple H S).PP.isLB (triv_rig hz _) _ _ _

theorem isIso_obj (hc : Count) (hD : D.p + D.q = 0) {l : Level H} {B : Type} [CommRing B] {b : Base l B}
    {S : Scheme.{0}} [IsReduced S] {s : S ⟶ Sp B} (o : Obj D l b s) : IsIso o.t.G.hom := by
  refine isIso_of_no_torsion hc _ ⟨o.t.semi.comm, o.t.semi.smooth, o.proper, o.t.semi.geomConnected⟩ fun k _ _ x => ?_
  obtain ⟨β, hβ⟩ := exists_spMap (x ≫ s)
  obtain ⟨-, I, -⟩ := o.geom k x β hβ
  have := subsingleton_La hD
  refine ⟨2, one_lt_two, ?_, fun g hg => ?_⟩
  · have := ((b.unit 2 two_pos).map β).ne_zero
    rwa [map_natCast] at this
  · obtain ⟨a, rfl⟩ := (I.onto 2 two_pos g).1 hg
    exact (I.ker 2 two_pos a).2 ⟨0, Subsingleton.elim _ _⟩

theorem nonempty_objMap {l : Level H} {B B' : Type} [CommRing B] [CommRing B'] {b : Base l B} {b' : Base l B'}
    {S S' : Scheme.{0}} {s : S ⟶ Sp B} {s' : S' ⟶ Sp B'} {o' : Obj D l b' s'} {o : Obj D l b s}
    (h' : IsIso o'.t.G.hom) (h : IsIso o.t.G.hom) (f : S' ⟶ S) : Nonempty (ObjMap o' o f) := by
  obtain ⟨m⟩ := nonempty_sabMap h' h f
  exact ⟨⟨m, fun _ => sec_comm h m.cart.1.w _ _, fun _ => sec_comm h m.cart.1.w _ _⟩⟩

def zeroModuli (hc : Count) (hD : D.p + D.q = 0) (l : Level H) : Moduli D l where
  X := Sp (KA l)
  s := 𝟙 _
  qproj := isQProjOver_of_isIso _ inferInstance
  smooth := by
    have : D.dim = 0 := by rw [Datum.dim, show D.q = 0 by omega, mul_zero]
    rw [this]
    infer_instance
  univ := zeroObj hD l _
  rep := fun S s' _ o => ⟨s', ⟨Category.comp_id _, nonempty_objMap (isIso_obj hc hD o) (isIso_zeroTriple _) _⟩,
    fun f hf => (Category.comp_id f).symm.trans hf.1⟩
  unram := fun k _ x _ _ _ =>
    have := BaseRing.finiteDimensional_KA l
    eq_constPt_field x

theorem isIso_moduli (hc : Count) (hD : D.p + D.q = 0) {l : Level H} (Xo : Moduli D l) :
    IsIso Xo.s ∧ IsIso Xo.univ.t.G.hom := by
  have := Xo.smooth
  have : Smooth Xo.s := SmoothOfRelativeDimension.smooth D.dim Xo.s
  have hr : IsReduced Xo.X := isReduced_of_smooth_of_isReduced Xo.s
  have h := isIso_obj hc hD Xo.univ
  obtain ⟨g, ⟨hg, -⟩, -⟩ := Xo.rep (Sp (KA l)) (𝟙 _) inferInstance (zeroObj hD l _)
  refine ⟨⟨g, (Xo.rep _ Xo.s hr Xo.univ).unique ⟨?_, nonempty_objMap h h _⟩ ⟨Category.id_comp _, nonempty_objMap h h _⟩,
    hg⟩, h⟩
  rw [Category.assoc, hg, Category.comp_id]

end Objects

theorem main : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H), D.p + D.q = 0 → Nonempty (∀ l : Level H, Moduli D l) :=
  fun _ _ _ _ _ _ hD => ⟨zeroModuli GlobalTheory.card_torsion_abelianVariety hD⟩

end GlobalTheory.Models.RankZero

end
