module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.UniformisationConclusion
public import Formalism.LocalToGlobal.ProjectiveLattices.BetaAtSymm
public import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.CoeNonzeroLocusCanonicalEqComplRange
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ObjMapIdCompCancel
public import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.MvPowerSeries.Inverse
public import Development.AbelianVarietyTheory.Counterexamples.LevelGroupExamples.BetaAtClosedPoint
public import Development.AbelianVarietyTheory.Definitions.ArchimedeanThetaValues.IsCoprimeTwoSubRtTwoAddRt
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsRegularRingOfIsDiscreteValuationRing
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsRegularRingOfSmooth
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.PsiCoordExistsUniqueUpToUnitLocal
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Int
import Mathlib.AlgebraicGeometry.Modules.Sheaf
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
import Mathlib.RingTheory.PicardGroup
import Mathlib.RingTheory.PowerSeries.NoZeroDivisors
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
public import ReciprocityTheory.AnalyticForms.RegularLocalRings.WChartsC
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits NumberField IsLocalRing TopologicalSpace
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R Formalism.L2.Pj

namespace GlobalTheory.Toroidal

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

section Forms

variable (H : Host E) (N : ℕ) (X : Type) [AddCommGroup X] [Module (𝓞 E) X]

def levelForms : Submodule ℤ (LinearMap.BilinForm ℤ X) where
  carrier := {β | (∀ y z, β y z = β z y) ∧ (∀ (a : 𝓞 E) y z, β (a • y) z = β y (H.bar a • z)) ∧ ∀ y z, (N : ℤ) ∣ β y z}
  add_mem' := by
    rintro β γ ⟨h1, h2, h3⟩ ⟨k1, k2, k3⟩
    refine ⟨fun y z => ?_, fun a y z => ?_, fun y z => ?_⟩
    · simp only [LinearMap.add_apply, h1 y z, k1 y z]
    · simp only [LinearMap.add_apply, h2 a y z, k2 a y z]
    · exact dvd_add (h3 y z) (k3 y z)
  zero_mem' := by simp
  smul_mem' := by
    rintro n β ⟨h1, h2, h3⟩
    refine ⟨fun y z => ?_, fun a y z => ?_, fun y z => ?_⟩
    · simp only [LinearMap.smul_apply, h1 y z]
    · simp only [LinearMap.smul_apply, h2 a y z]
    · exact Dvd.dvd.mul_left (h3 y z) n

variable {H N X}

theorem mem_levelForms {β : LinearMap.BilinForm ℤ X} : β ∈ levelForms H N X ↔
    (∀ y z, β y z = β z y) ∧ (∀ (a : 𝓞 E) y z, β (a • y) z = β y (H.bar a • z)) ∧ ∀ y z, (N : ℤ) ∣ β y z := Iff.rfl

theorem mem_levelForms_iff_smul (hN : N ≠ 0) {β : LinearMap.BilinForm ℤ X} :
    β ∈ levelForms H N X ↔ ∃ γ ∈ levelForms H 1 X, β = (N : ℤ) • γ := by
  have hN' : (N : ℤ) ≠ 0 := by exact_mod_cast hN
  constructor
  · rintro ⟨h1, h2, h3⟩
    choose g hg using h3
    have inj : ∀ {a b : ℤ}, (N : ℤ) * a = N * b → a = b := fun h => mul_left_cancel₀ hN' h
    let γ : LinearMap.BilinForm ℤ X := LinearMap.mk₂ ℤ g
      (fun a b c => inj (by rw [mul_add, ← hg, ← hg, ← hg, map_add (f := _), LinearMap.add_apply]))
      (fun n a b => inj (by rw [smul_eq_mul, mul_left_comm, ← hg, ← hg, map_smul, LinearMap.smul_apply, smul_eq_mul]))
      (fun a b c => inj (by rw [mul_add, ← hg, ← hg, ← hg, map_add (f := _)]))
      (fun n a b => inj (by rw [smul_eq_mul, mul_left_comm, ← hg, ← hg, map_smul, smul_eq_mul]))
    refine ⟨γ, ⟨fun y z => inj ?_, fun a y z => inj ?_, fun y z => by simp⟩, ?_⟩
    · exact (hg y z).symm.trans ((h1 y z).trans (hg z y))
    · exact (hg _ z).symm.trans ((h2 a y z).trans (hg y _))
    · ext y z
      exact hg y z
  · rintro ⟨γ, hγ, rfl⟩
    obtain ⟨h1, h2, -⟩ := (levelForms H 1 X).smul_mem (N : ℤ) hγ
    exact ⟨h1, h2, fun y z => Dvd.intro _ rfl⟩

theorem apply_self_eq_two_mul {β : LinearMap.BilinForm ℤ X} (h : β ∈ levelForms H N X) (y : X) :
    β y y = 2 * β y (H.w0 • y) := by
  have e : β y (H.bar H.w0 • y) = β y (H.w0 • y) := (h.2.1 _ _ _).symm.trans (h.1 _ _)
  rw [HostModel.cmHost_bar_halfIntegerGenerator, sub_smul, one_smul, map_sub] at e
  linarith


end Forms

section Part

variable {L : Type} [AddCommGroup L] {m : ℕ}

def IsPartOfBasis (v : Fin m → L) : Prop :=
  ∃ (n : ℕ) (b : Module.Basis (Fin m ⊕ Fin n) ℤ L), ∀ i, b (Sum.inl i) = v i

theorem IsPartOfBasis.linearIndependent {v : Fin m → L} (h : IsPartOfBasis v) : LinearIndependent ℤ v := by
  obtain ⟨n, b, hb⟩ := h
  have := b.linearIndependent.comp Sum.inl Sum.inl_injective
  rwa [show b ∘ Sum.inl = v from funext hb] at this

theorem IsPartOfBasis.isUnit_of_smul {v : Fin m → L} (h : IsPartOfBasis v) {i : Fin m} {k : ℤ} {w : L}
    (hw : k • w = v i) : IsUnit k := by
  obtain ⟨n, b, hb⟩ := h
  have := congrArg (fun x => b.repr x (Sum.inl i)) (hw.trans (hb i).symm)
  simp only [map_smul, Finsupp.smul_apply, smul_eq_mul, Module.Basis.repr_self, Finsupp.single_eq_same] at this
  exact IsUnit.of_mul_eq_one _ this

theorem IsPartOfBasis.exists_dual {v : Fin m → L} (h : IsPartOfBasis v) :
    ∃ φ : Fin m → (L →ₗ[ℤ] ℤ), ∀ i j, φ i (v j) = if i = j then 1 else 0 := by
  obtain ⟨n, b, hb⟩ := h
  refine ⟨fun i => b.coord (Sum.inl i), fun i j => ?_⟩
  rw [← hb j, Module.Basis.coord_apply, Module.Basis.repr_self, Finsupp.single_apply]
  simp [eq_comm]

end Part

section Monomial

variable {R : Type} [CommRing R] [IsDomain R] {m : ℕ}

def IsMonomial (Dg : DegPre R) (t : Fin m → R) (β : Fin m → LinearMap.BilinForm ℤ Dg.X) : Prop :=
  ∀ y, ∃ (u : Rˣ) (n : Fin m → ℕ), (∀ i, β i y y = 2 * n i) ∧ PsiCoord Dg y (u * ∏ i, t i ^ n i)

variable {Dg : DegPre R} {t : Fin m → R} {β : Fin m → LinearMap.BilinForm ℤ Dg.X}

theorem IsMonomial.nonneg (h : IsMonomial Dg t β) (i : Fin m) (y : Dg.X) : 0 ≤ β i y y := by
  obtain ⟨u, n, hn, -⟩ := h y
  rw [hn]; positivity

theorem IsMonomial.coord (h : IsMonomial Dg t β) {y : Dg.X} {r : R} (hr : PsiCoord Dg y r) :
    ∃ (u : Rˣ) (n : Fin m → ℕ), (∀ i, β i y y = 2 * n i) ∧ r = u * ∏ i, t i ^ n i := by
  obtain ⟨u, n, hn, hc⟩ := h y
  obtain ⟨v, hv⟩ := PsiCoordLocal.exists_unit_of_coord hc hr
  exact ⟨v * u, n, hn, by rw [hv, Units.val_mul, mul_assoc]⟩

theorem IsMonomial.exists_pos {I : Ideal R} (hI : I ≠ ⊤) {Dd : DegData R I}
    {β : Fin m → LinearMap.BilinForm ℤ Dd.toPre.X} (h : IsMonomial Dd.toPre t β) {y : Dd.toPre.X} (hy : y ≠ 0) :
    ∃ i, 0 < β i y y := by
  obtain ⟨u, n, hn, hc⟩ := h y
  have hm := (PeriodFormEdge.psiIn_iff hc I).1 (Dd.psi_pos y hy)
  by_contra hne
  have h0 : ∀ i, n i = 0 := fun i => by
    have := not_exists.1 hne i
    rw [hn] at this
    omega
  simp only [h0, pow_zero, Finset.prod_const_one, mul_one] at hm
  exact hI (Ideal.eq_top_of_isUnit_mem _ hm u.isUnit)

theorem IsMonomial.tau (h : IsMonomial Dg t β) (hs : ∀ i y z, β i y z = β i z y) (ht : ∀ i, t i ≠ 0) {a b : Dg.X}
    {r r' r'' : R} (ha : PsiCoord Dg a r) (hb : PsiCoord Dg b r') (hab : PsiCoord Dg (a + b) r'') :
    ∃ u : Rˣ, algebraMap R (FractionRing R) r'' / (algebraMap R _ r * algebraMap R _ r') =
      algebraMap R _ u * ∏ i, algebraMap R (FractionRing R) (t i) ^ β i a b := by
  obtain ⟨u, n, hn, rfl⟩ := h.coord ha
  obtain ⟨u', n', hn', rfl⟩ := h.coord hb
  obtain ⟨u'', n'', hn'', rfl⟩ := h.coord hab
  have ne : ∀ {x : R}, x ≠ 0 → algebraMap R (FractionRing R) x ≠ 0 := fun hx =>
    (map_ne_zero_iff _ (IsFractionRing.injective R _)).2 hx
  have e : ∀ i, (n'' i : ℤ) = β i a b + n i + n' i := fun i => by
    have := hn'' i
    simp only [map_add (f := _), LinearMap.add_apply, hs i b a, hn i, hn' i] at this
    omega
  refine ⟨u'' * u⁻¹ * u'⁻¹, ?_⟩
  have hu := ne u.ne_zero
  have hu' := ne u'.ne_zero
  have hp : ∀ k : Fin m → ℕ, ∏ i, algebraMap R (FractionRing R) (t i) ^ k i ≠ 0 := fun k =>
    Finset.prod_ne_zero_iff.2 fun i _ => pow_ne_zero _ (ne (ht i))
  have e' : ∏ i, algebraMap R (FractionRing R) (t i) ^ n'' i = (∏ i, algebraMap R (FractionRing R) (t i) ^ β i a b) *
      (∏ i, algebraMap R (FractionRing R) (t i) ^ n i) * ∏ i, algebraMap R (FractionRing R) (t i) ^ n' i := by
    rw [← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun i _ => ?_
    rw [← zpow_natCast, e, zpow_add₀ (ne (ht i)), zpow_add₀ (ne (ht i)), zpow_natCast, zpow_natCast]
  simp only [map_mul, map_prod, map_pow, Units.val_mul, map_units_inv, e']
  have := hp n
  have := hp n'
  field_simp

theorem psiUnitOn_of_coord {y : Dg.X} {r : R} (hr : PsiCoord Dg y r) {U : Set (Sp R)}
    (hU : ∀ p ∈ U, r ∉ p.asIdeal) : PsiUnitOn Dg y U := by
  intro j' V hV hVU hj' h'
  obtain ⟨j, hj, h, e⟩ := hr
  have h₂ : V ≤ (Dg.c y).left ⁻¹ᵁ Dg.P.L.U (j PUnit.unit) := le_top.trans hj
  have k : ((jK R).app V).hom (DegPre.toOpen (R := R) V r) =
      ((TK R).left.presheaf.map (homOfLE (PsiCoordLocal.generic_le Dg y j h₂)).op).hom ((Dg.psi y).s j).val := by
    have := congrArg ((TK R).left.presheaf.map (homOfLE ((jK R).preimage_mono (le_top : V ≤ ⊤))).op).hom e
    rw [Cartier.resG_resG] at this
    rw [← this]
    refine Eq.trans ?_ (Cartier.app_resG (jK R) (le_top : V ≤ ⊤) _)
    exact congrArg _ (Cartier.resG_resG (X := Sp R) (le_top : (⊤ : (Sp R).Opens) ≤ ⊤) (le_top : V ≤ ⊤)
      ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom r)).symm
  obtain ⟨u, hu⟩ := PsiCoordLocal.exists_trans Dg y j' j hj' h₂ h' (PsiCoordLocal.generic_le Dg y j h₂)
  refine ⟨u * DegPre.toOpen (R := R) V r, u.isUnit.mul ?_, ?_⟩
  · refine (Sp R).toRingedSpace.isUnit_of_isUnit_germ V _ fun x hx => ?_
    refine ((Sp R).mem_basicOpen _ x hx).1 ?_
    have c : (Sp R).basicOpen (DegPre.toOpen (R := R) V r) =
        V ⊓ (Sp R).basicOpen ((Scheme.ΓSpecIso (CommRingCat.of R)).inv r) := (Sp R).basicOpen_res _ _
    rw [c, basicOpen_eq_of_affine]
    exact ⟨hx, hU x (hVU hx)⟩
  · rw [map_mul, k]
    exact (congrArg Units.val hu).symm

theorem IsMonomial.psiUnitOn (h : IsMonomial Dg t β) (y : Dg.X) {U : Set (Sp R)}
    (hU : ∀ p ∈ U, ∏ i, t i ∉ p.asIdeal) : PsiUnitOn Dg y U := by
  obtain ⟨u, n, -, hc⟩ := h y
  refine psiUnitOn_of_coord hc fun p hp hm => hU p hp ?_
  have hpr := p.isPrime
  rcases hpr.mem_or_mem hm with hm | hm
  · exact absurd (Ideal.eq_top_of_isUnit_mem _ hm u.isUnit) hpr.ne_top
  · obtain ⟨i, -, hi⟩ := (Ideal.IsPrime.prod_mem_iff).1 hm
    exact (Ideal.IsPrime.prod_mem_iff).2 ⟨i, Finset.mem_univ _, hpr.mem_of_pow_mem _ hi⟩

end Monomial

section Charts

def IsEtaleCompletion {A R : Type} [CommRing A] [IsLocalRing A] [CommRing R] [IsLocalRing R] (φ : A →+* R) : Prop :=
  φ.Flat ∧ (maximalIdeal A).map φ = maximalIdeal R ∧ ((residue R).comp φ).Finite

variable {H : Host E} {D : Datum H} {l : Level H} {Xo : Moduli D l} {c : Coeff l} {O : Type} [CommRing O]
  {β : O →+* c.F}

abbrev gen (Y : Model Xo c β) : Scheme.{0} := pullback Y.s (spMap β)

abbrev genι (Y : Model Xo c β) : gen Y ⟶ Y.X := pullback.fst Y.s (spMap β)

abbrev genStr (Y : Model Xo c β) : gen Y ⟶ Sp c.F := pullback.snd Y.s (spMap β)

def genBd (Y : Model Xo c β) : Closeds (gen Y) :=
  ⟨(Set.range Y.jQ)ᶜ, (haveI := Y.jQ_open; Y.jQ.isOpenEmbedding.isOpen_range).isClosed_compl⟩

abbrev genBdIdeal (Y : Model Xo c β) : (gen Y).IdealSheafData := Scheme.IdealSheafData.vanishingIdeal (genBd Y)

theorem mem_genBd {Y : Model Xo c β} {x : gen Y} : x ∈ genBd Y ↔ x ∉ Set.range Y.jQ := Iff.rfl

theorem mem_genBd_iff {Y : Model Xo c β} {x : gen Y} : x ∈ genBd Y ↔ genι Y x ∉ abLocus Y.t.G := by
  rw [mem_genBd, ← Y.ab_gen]; rfl

abbrev ChartRing (k : Type) [Field k] (m d : ℕ) : Type := MvPowerSeries (Fin m ⊕ Fin d) k

instance isDomain_chartRing (k : Type) [Field k] (m d : ℕ) : IsDomain (ChartRing k m d) := NoZeroDivisors.to_isDomain _

abbrev bdParam (k : Type) [Field k] (m d : ℕ) (i : Fin m) : ChartRing k m d := MvPowerSeries.X (Sum.inl i)

def IsToricChart (Z : Model Xo c β) {k : Type} [Field k] {m d : ℕ} (ξ : Sp (ChartRing k m d) ⟶ gen Z)
    {t : SAB H (Sp (ChartRing k m d))} (P : PELUnif (maximalIdeal (ChartRing k m d)) t)
    (γ : Fin m → levelForms H l.M' P.D.toPre.X) : Prop :=
  IsEtaleCompletion (Scheme.stalkClosedPointTo ξ).hom ∧
  (FinalTheorems.stalkId (genBdIdeal Z) (ξ (closedPoint _))).map (Scheme.stalkClosedPointTo ξ).hom =
    Ideal.span {∏ i, bdParam k m d i} ∧
  (∀ p : Sp (ChartRing k m d), ξ p ∈ genBd Z ↔ ∏ i, bdParam k m d i ∈ p.asIdeal) ∧
  Nonempty (SABMap t Z.t (ξ ≫ genι Z)) ∧ P.TorsionIso ∧
  IsMonomial P.D.toPre (bdParam k m d) (fun i => γ i) ∧ IsPartOfBasis γ

def HasToricChart (Z : Model Xo c β) (x : gen Z) : Prop :=
  ∃ (k : Type) (_ : Field k) (m d : ℕ) (ξ : Sp (ChartRing k m d) ⟶ gen Z) (t : SAB H (Sp (ChartRing k m d)))
    (P : PELUnif (maximalIdeal (ChartRing k m d)) t) (γ : Fin m → levelForms H l.M' P.D.toPre.X),
    ξ (closedPoint _) = x ∧ IsToricChart Z ξ P γ

namespace IsToricChart

variable {Z : Model Xo c β} {k : Type} [Field k] {m d : ℕ} {ξ : Sp (ChartRing k m d) ⟶ gen Z}
  {t : SAB H (Sp (ChartRing k m d))} {P : PELUnif (maximalIdeal (ChartRing k m d)) t}
  {γ : Fin m → levelForms H l.M' P.D.toPre.X}

end IsToricChart

end Charts

section Model

variable {H : Host E} {D : Datum H} {l : Level H} {Xo : Moduli D l} {c : Coeff l} {O : Type} [CommRing O]
  {β : O →+* c.F}

structure TorModel (Y : Model Xo c β) where

  Z : Model Xo c β

  b : Z.X ⟶ Y.X

  pull : SABMap Z.t Y.t b

  smooth : SmoothOfRelativeDimension D.dim (genStr Z)

  snc : FinalTheorems.Snc (genBdIdeal Z)

  BD : EffCartierData Z.X

  m0 : ℕ

theorem isProper_toroidalModel_structureMap (Y : Model Xo c β) : IsProper Y.s := by
  obtain ⟨N, i, hi, e⟩ := Y.proj
  have := isProper_str O N
  rw [← e]
  infer_instance

theorem isProper_genStr (Y : Model Xo c β) : IsProper (genStr Y) :=
  haveI := isProper_toroidalModel_structureMap Y
  inferInstance

namespace TorModel

variable {Y : Model Xo c β} (T : TorModel Y)

end TorModel

end Model

end GlobalTheory.Toroidal
