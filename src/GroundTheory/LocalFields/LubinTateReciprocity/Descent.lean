module

public import GroundTheory.LocalFields.MaximalUnramifiedIntegers
public import GroundTheory.LocalFields.SeparableClosure
public import GroundTheory.LocalFields.UnramifiedGalois
public import Mathlib.RingTheory.AdicCompletion.LocalRing
public import GroundTheory.PowerSubgroups.CountableNeighbourhoods.UnitMulPowAdic
public import GroundTheory.LocalFields.LubinTateTorsion
public import Mathlib.RingTheory.Polynomial.Eisenstein.Distinguished
public import GroundTheory.LocalFields.Eisenstein
public import GroundTheory.LocalFields.LubinTateReciprocity.TwistedPoint
public import GroundTheory.PowerSubgroups.CountableNeighbourhoods.DescentPowerSubgroups
public import GroundTheory.LocalFields.LubinTateReciprocity.RootEval
import GroundTheory.LocalFields.UnitsPowers
import GroundTheory.LocalFields.ExamplesLaurent

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.LocalFields.CompletedUnramified, GroundTheory.LocalFields.LubinTateReciprocity.Descent

-- ===== clump member: GroundTheory.LocalFields.CompletedUnramified =====
-- clump-header: {"m": "GroundTheory.LocalFields.CompletedUnramified", "h": "module\n\npublic import GroundTheory.LocalFields.MaximalUnramifiedIntegers\npublic import GroundTheory.LocalFields.SeparableClosure\npublic import GroundTheory.LocalFields.UnramifiedGalois\npublic import Mathlib.RingTheory.AdicCompletion.LocalRing\nimport GroundTheory.LocalFields.UnitsPowers\npublic import GroundTheory.PowerSubgroups.CountableNeighbourhoods.UnitMulPowAdic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.AdicCompletion.AsTensorProduct\nimport Mathlib.RingTheory.AdicCompletion.Noetherian\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GroundTheory.LocalField

open IsLocalRing ValuativeRel

section Lift

variable {R : Type*} [CommRing R] {I : Ideal R}

variable (I) in
theorem factorPow_evalₐ {k n : ℕ} (hle : k ≤ n) (x : AdicCompletion I R) :
    Ideal.Quotient.factorPow I hle (AdicCompletion.evalₐ I n x) = AdicCompletion.evalₐ I k x := by
  obtain ⟨x, rfl⟩ := AdicCompletion.mk_surjective I R x
  simp only [AdicCompletion.evalₐ_mk, Ideal.Quotient.factorPow, Ideal.Quotient.factor_mk]
  rw [Ideal.Quotient.eq]
  have h := x.2 hle
  rw [SModEq.sub_mem] at h
  have hI : (I ^ k • ⊤ : Submodule R R) = I ^ k := by ext; simp
  rw [← neg_sub]
  exact neg_mem (hI ▸ h)

theorem pow_le_comap_pow {θ : R →+* R} (hθ : I ≤ I.comap θ) (n : ℕ) : I ^ n ≤ (I ^ n).comap θ :=
  Ideal.map_le_iff_le_comap.mp (by
    rw [Ideal.map_pow]
    exact Ideal.pow_right_mono (Ideal.map_le_iff_le_comap.mpr hθ) n)

def adicCompletionQuotientMap (θ : R →+* R) (hθ : I ≤ I.comap θ) (n : ℕ) :
    AdicCompletion I R →+* R ⧸ I ^ n :=
  (Ideal.quotientMap (I ^ n) θ (pow_le_comap_pow hθ n)).comp
    (AdicCompletion.evalₐ I n : AdicCompletion I R →+* R ⧸ I ^ n)

theorem factorPow_comp_adicCompletionQuotientMap (θ : R →+* R) (hθ : I ≤ I.comap θ) {k n : ℕ}
    (hle : k ≤ n) :
    (Ideal.Quotient.factorPow I hle).comp (adicCompletionQuotientMap θ hθ n) =
      adicCompletionQuotientMap θ hθ k := by
  ext x
  obtain ⟨r, hr⟩ := Ideal.Quotient.mk_surjective (AdicCompletion.evalₐ I n x)
  have hk : AdicCompletion.evalₐ I k x = Ideal.Quotient.mk (I ^ k) r := by
    rw [← factorPow_evalₐ I hle, ← hr]
    rfl
  simp only [adicCompletionQuotientMap, RingHom.comp_apply, RingHom.coe_coe]
  rw [← hr, hk, Ideal.quotientMap_mk, Ideal.quotientMap_mk]
  rfl

def adicCompletionMap (θ : R →+* R) (hθ : I ≤ I.comap θ) :
    AdicCompletion I R →+* AdicCompletion I R :=
  AdicCompletion.liftRingHom I (adicCompletionQuotientMap θ hθ)
    (factorPow_comp_adicCompletionQuotientMap θ hθ)

theorem evalₐ_adicCompletionMap (θ : R →+* R) (hθ : I ≤ I.comap θ) (n : ℕ)
    (x : AdicCompletion I R) :
    AdicCompletion.evalₐ I n (adicCompletionMap θ hθ x) =
      Ideal.quotientMap (I ^ n) θ (pow_le_comap_pow hθ n) (AdicCompletion.evalₐ I n x) :=
  AdicCompletion.evalₐ_liftRingHom I _ (factorPow_comp_adicCompletionQuotientMap θ hθ) n x

@[simp]
theorem adicCompletionMap_of (θ : R →+* R) (hθ : I ≤ I.comap θ) (r : R) :
    adicCompletionMap θ hθ (AdicCompletion.of I R r) = AdicCompletion.of I R (θ r) := by
  refine AdicCompletion.ext_evalₐ fun n ↦ ?_
  rw [evalₐ_adicCompletionMap, AdicCompletion.evalₐ_of, AdicCompletion.evalₐ_of,
    Ideal.quotientMap_mk]

theorem adicCompletionMap_id :
    adicCompletionMap (RingHom.id R) (Ideal.comap_id I).ge = RingHom.id (AdicCompletion I R) := by
  ext1 x
  refine AdicCompletion.ext_evalₐ fun n ↦ ?_
  rw [evalₐ_adicCompletionMap, RingHom.id_apply]
  obtain ⟨r, hr⟩ := Ideal.Quotient.mk_surjective (AdicCompletion.evalₐ I n x)
  rw [← hr, Ideal.quotientMap_mk, RingHom.id_apply]

theorem adicCompletionMap_comp (θ₁ θ₂ : R →+* R) (h₁ : I ≤ I.comap θ₁) (h₂ : I ≤ I.comap θ₂) :
    (adicCompletionMap θ₁ h₁).comp (adicCompletionMap θ₂ h₂) =
      adicCompletionMap (θ₁.comp θ₂)
        (by rw [← Ideal.comap_comap]; exact h₂.trans (Ideal.comap_mono h₁)) := by
  ext1 x
  refine AdicCompletion.ext_evalₐ fun n ↦ ?_
  rw [RingHom.comp_apply, evalₐ_adicCompletionMap, evalₐ_adicCompletionMap,
    evalₐ_adicCompletionMap]
  obtain ⟨r, hr⟩ := Ideal.Quotient.mk_surjective (AdicCompletion.evalₐ I n x)
  rw [← hr, Ideal.quotientMap_mk, Ideal.quotientMap_mk, Ideal.quotientMap_mk, RingHom.comp_apply]

end Lift

section DVR

variable {R : Type*} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]

local notation "𝔅" => AdicCompletion (maximalIdeal R) R

variable (R) in
theorem algebraMap_adicCompletion_injective : Function.Injective (algebraMap R 𝔅) :=
  AdicCompletion.of_injective _ _

theorem maximalIdeal_adicCompletion_eq_span {ϖ : R} (hϖ : Irreducible ϖ) :
    maximalIdeal 𝔅 = Ideal.span {algebraMap R 𝔅 ϖ} := by
  rw [AdicCompletion.maximalIdeal_eq_map, hϖ.maximalIdeal_eq, Ideal.map_span, Set.image_singleton]

theorem algebraMap_pow_ne_zero {ϖ : R} (hϖ : Irreducible ϖ) (n : ℕ) :
    algebraMap R 𝔅 ϖ ^ n ≠ 0 := by
  rw [← map_pow, Ne, ← map_zero (algebraMap R 𝔅), (algebraMap_adicCompletion_injective R).eq_iff]
  exact pow_ne_zero n hϖ.ne_zero

instance isDomain_adicCompletion : IsDomain 𝔅 := by
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible R
  have : NoZeroDivisors 𝔅 := ⟨fun {x y} hxy ↦ by
    by_contra h
    push Not at h
    obtain ⟨m, u, rfl⟩ := _root_.GroundTheory.Variant₂.N1.exists_eq_unit_mul_pow_adicCompletion hϖ h.1
    obtain ⟨n, v, rfl⟩ := _root_.GroundTheory.Variant₂.N1.exists_eq_unit_mul_pow_adicCompletion hϖ h.2
    apply algebraMap_pow_ne_zero hϖ (m + n)
    have : ((u * v : 𝔅ˣ) : 𝔅) * algebraMap R 𝔅 ϖ ^ (m + n) = 0 := by
      rw [← hxy, Units.val_mul, pow_add]
      ring
    exact (Units.mul_right_eq_zero _).mp this⟩
  exact NoZeroDivisors.to_isDomain _

theorem irreducible_algebraMap_adicCompletion {ϖ : R} (hϖ : Irreducible ϖ) :
    Irreducible (algebraMap R 𝔅 ϖ) :=
  IsDiscreteValuationRing.irreducible_of_span_eq_maximalIdeal _
    (by simpa using algebraMap_pow_ne_zero hϖ 1) (maximalIdeal_adicCompletion_eq_span hϖ)

instance isDiscreteValuationRing_adicCompletion : IsDiscreteValuationRing 𝔅 := by
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible R
  exact IsDiscreteValuationRing.ofHasUnitMulPowIrreducibleFactorization
    ⟨_, irreducible_algebraMap_adicCompletion hϖ, fun hx ↦ by
      obtain ⟨n, u, hu⟩ := _root_.GroundTheory.Variant₂.N1.exists_eq_unit_mul_pow_adicCompletion hϖ hx
      exact ⟨n, u, by rw [hu, mul_comm]⟩⟩

theorem exists_sub_algebraMap_mem_pow (x : 𝔅) (n : ℕ) :
    ∃ r : R, x - algebraMap R 𝔅 r ∈ maximalIdeal 𝔅 ^ n := by
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible R
  have hm := maximalIdeal_adicCompletion_eq_span hϖ
  have hres : ∀ y : 𝔅, ∃ s : R, y - algebraMap R 𝔅 s ∈ maximalIdeal 𝔅 := by
    intro y
    obtain ⟨t, ht⟩ := (AdicCompletion.residueField_map_bijective R).2 (residue 𝔅 y)
    obtain ⟨s, rfl⟩ := residue_surjective t
    refine ⟨s, ?_⟩
    rw [← residue_eq_zero_iff, map_sub, ← ht, ResidueField.map_residue, sub_self]
  induction n with
  | zero => exact ⟨0, by simp⟩
  | succ n ih =>
    obtain ⟨r, hr⟩ := ih
    rw [hm, Ideal.span_singleton_pow, Ideal.mem_span_singleton'] at hr
    obtain ⟨c, hc⟩ := hr
    obtain ⟨s, hs⟩ := hres c
    rw [hm, Ideal.mem_span_singleton'] at hs
    obtain ⟨d, hd⟩ := hs
    refine ⟨r + ϖ ^ n * s, ?_⟩
    rw [hm, Ideal.span_singleton_pow, Ideal.mem_span_singleton']
    refine ⟨d, ?_⟩
    rw [map_add (f := _), map_mul, map_pow]
    linear_combination (algebraMap R 𝔅 ϖ) ^ n * hd + hc

section Automorphism

theorem maximalIdeal_le_comap_ringEquiv (θ : R ≃+* R) :
    maximalIdeal R ≤ (maximalIdeal R).comap (θ : R →+* R) := by
  intro x hx
  rw [Ideal.mem_comap]
  rw [mem_maximalIdeal, mem_nonunits_iff] at hx ⊢
  intro hu
  apply hx
  simpa using hu.map θ.symm

theorem adicCompletionMap_congr {θ₁ θ₂ : R →+* R} (h : θ₁ = θ₂)
    (h₁ : maximalIdeal R ≤ (maximalIdeal R).comap θ₁) (h₂ : maximalIdeal R ≤ (maximalIdeal R).comap θ₂) :
    adicCompletionMap θ₁ h₁ = adicCompletionMap θ₂ h₂ := by
  subst h
  rfl

theorem adicCompletionMap_eq_id {θ : R →+* R} (hθ : maximalIdeal R ≤ (maximalIdeal R).comap θ)
    (h : θ = RingHom.id R) : adicCompletionMap θ hθ = RingHom.id 𝔅 := by
  subst h
  exact adicCompletionMap_id

def adicCompletionRingEquiv (θ : R ≃+* R) : 𝔅 ≃+* 𝔅 :=
  RingEquiv.ofRingHom
    (adicCompletionMap (θ : R →+* R) (maximalIdeal_le_comap_ringEquiv θ))
    (adicCompletionMap (θ.symm : R →+* R) (maximalIdeal_le_comap_ringEquiv θ.symm))
    (by
      rw [adicCompletionMap_comp]
      exact adicCompletionMap_eq_id _ (by ext; simp))
    (by
      rw [adicCompletionMap_comp]
      exact adicCompletionMap_eq_id _ (by ext; simp))

variable {S : Type*} [CommRing S] [Algebra S R]

def adicCompletionAlgEquiv : (R ≃ₐ[S] R) →* (𝔅 ≃ₐ[S] 𝔅) where
  toFun θ :=
    AlgEquiv.ofRingEquiv (f := adicCompletionRingEquiv θ.toRingEquiv) (fun s ↦ by
      change adicCompletionMap _ _ (AdicCompletion.of _ R (algebraMap S R s)) =
        AdicCompletion.of _ R (algebraMap S R s)
      rw [adicCompletionMap_of]
      simp)
  map_one' := by
    ext1 x
    change adicCompletionMap _ _ x = x
    rw [adicCompletionMap_eq_id _ (by ext; simp)]
    rfl
  map_mul' θ₁ θ₂ := by
    ext1 x
    change adicCompletionMap _ _ x = adicCompletionMap _ _ (adicCompletionMap _ _ x)
    rw [← RingHom.comp_apply (adicCompletionMap _ _), adicCompletionMap_comp]
    exact congrArg (fun f : 𝔅 →+* 𝔅 ↦ f x) (adicCompletionMap_congr (by ext; simp) _ _)

@[simp]
theorem adicCompletionAlgEquiv_algebraMap (θ : R ≃ₐ[S] R) (r : R) :
    adicCompletionAlgEquiv θ (algebraMap R 𝔅 r) = algebraMap R 𝔅 (θ r) :=
  show adicCompletionMap _ _ (AdicCompletion.of _ R r) = _ from adicCompletionMap_of _ _ r

private theorem residue_adicCompletionAlgEquiv_eq_pow (θ : R ≃ₐ[S] R) (q : ℕ)
    (hθ : ∀ r : R, θ r - r ^ q ∈ maximalIdeal R) (x : 𝔅) :
    residue 𝔅 (adicCompletionAlgEquiv θ x) = residue 𝔅 x ^ q := by
  obtain ⟨r, hr⟩ := exists_sub_algebraMap_mem_pow x 1
  rw [pow_one] at hr
  set σ := adicCompletionAlgEquiv θ
  have h1 : residue 𝔅 x = residue 𝔅 (algebraMap R 𝔅 r) := by
    rw [← sub_eq_zero, ← map_sub, residue_eq_zero_iff]
    exact hr
  have h2 : residue 𝔅 (σ x) = residue 𝔅 (σ (algebraMap R 𝔅 r)) := by
    rw [← sub_eq_zero, ← map_sub, residue_eq_zero_iff, ← map_sub]
    rw [mem_maximalIdeal, mem_nonunits_iff] at hr ⊢
    exact fun hu ↦ hr (by simpa using hu.map σ.symm)
  rw [h2, h1, adicCompletionAlgEquiv_algebraMap, ← map_pow, ← sub_eq_zero, ← map_sub,
    residue_eq_zero_iff, ← map_pow, ← map_sub, AdicCompletion.maximalIdeal_eq_map]
  exact Ideal.mem_map_of_mem _ (hθ r)

end Automorphism

end DVR

section FixedRing

open Polynomial

theorem mem_range_of_pow_card_eq_self {F k : Type*} [Field F] [Finite F] [Field k] [Algebra F k]
    {y : k} (hy : y ^ Nat.card F = y) : y ∈ (algebraMap F k).range := by
  classical
  have := Fintype.ofFinite F
  have hq : 1 < Fintype.card F := Fintype.one_lt_card
  rw [Nat.card_eq_fintype_card] at hy
  have hs : Splits (X ^ Fintype.card F - X : F[X]) := by
    rw [splits_iff_card_roots, FiniteField.roots_X_pow_card_sub_X,
      Polynomial.natDegree_X_pow_sub_X (R := F) hq]
    exact Finset.card_univ
  refine hs.mem_range_of_isRoot (Polynomial.X_pow_sub_X_ne_zero hq) ?_
  simp only [Polynomial.map_sub, Polynomial.map_pow, map_X, IsRoot.def, eval_sub, eval_pow,
    eval_X, hy, sub_self]

variable {A B : Type*} [CommRing A] [IsDomain A] [IsDiscreteValuationRing A]
  [CommRing B] [IsDomain B] [IsDiscreteValuationRing B] [Algebra A B]

theorem isLocalHom_algebraMap_of_map_maximalIdeal
    (hunr : (maximalIdeal A).map (algebraMap A B) = maximalIdeal B) :
    IsLocalHom (algebraMap A B) := by
  refine ⟨fun a ha ↦ ?_⟩
  by_contra h
  have hm : a ∈ maximalIdeal A := (mem_maximalIdeal a).2 h
  have := Ideal.mem_map_of_mem (algebraMap A B) hm
  rw [hunr] at this
  exact (mem_maximalIdeal _).1 this ha

variable [IsAdicComplete (maximalIdeal A) A] [Finite (ResidueField A)]
  (hunr : (maximalIdeal A).map (algebraMap A B) = maximalIdeal B) (σ : B →ₐ[A] B)
  (hσ : ∀ x : B, residue B (σ x) = residue B x ^ Nat.card (ResidueField A))
include hunr hσ

omit [IsAdicComplete (maximalIdeal A) A] in
theorem exists_sub_algebraMap_mem_of_fixed {c : B} (hc : σ c = c) :
    ∃ d : A, c - algebraMap A B d ∈ maximalIdeal B := by
  have := isLocalHom_algebraMap_of_map_maximalIdeal hunr
  have hy : residue B c ^ Nat.card (ResidueField A) = residue B c := by rw [← hσ, hc]
  obtain ⟨t, ht⟩ := mem_range_of_pow_card_eq_self hy
  obtain ⟨d, rfl⟩ := residue_surjective t
  refine ⟨d, ?_⟩
  rw [← residue_eq_zero_iff, map_sub, ← ht, ResidueField.algebraMap_residue, sub_self]

theorem mem_range_algebraMap_iff_fixed (b : B) : b ∈ (algebraMap A B).range ↔ σ b = b := by
  refine ⟨fun ⟨a, ha⟩ ↦ by rw [← ha, σ.commutes], fun hb ↦ ?_⟩
  obtain ⟨π, hπ⟩ := IsDiscreteValuationRing.exists_irreducible A
  set ϖ := algebraMap A B π with hϖdef
  have hmB : maximalIdeal B = Ideal.span {ϖ} := by
    rw [← hunr, hπ.maximalIdeal_eq, Ideal.map_span, Set.image_singleton]
  have hϖ0 : ϖ ≠ 0 := by
    intro h0
    apply IsDiscreteValuationRing.not_a_field B
    rw [hmB, h0, Ideal.span_singleton_eq_bot]
  have hϖm : ϖ ∈ maximalIdeal B := hmB ▸ Ideal.mem_span_singleton_self ϖ
  have hπm : π ∈ maximalIdeal A := hπ.maximalIdeal_eq ▸ Ideal.mem_span_singleton_self π
  have hσϖ : σ ϖ = ϖ := σ.commutes π
  have step : ∀ c : B, σ c = c → ∃ d : A, ∃ c' : B, σ c' = c' ∧ c = algebraMap A B d + ϖ * c' := by
    intro c hc
    obtain ⟨d, hd⟩ := exists_sub_algebraMap_mem_of_fixed hunr σ hσ hc
    rw [hmB, Ideal.mem_span_singleton'] at hd
    obtain ⟨c', hc'⟩ := hd
    refine ⟨d, c', ?_, by rw [mul_comm, hc']; ring⟩
    have h1 := congrArg σ hc'
    rw [map_mul, hσϖ, map_sub, hc, σ.commutes, ← hc'] at h1
    exact mul_right_cancel₀ hϖ0 h1
  choose D N hN hDN using step
  let c : ℕ → {x : B // σ x = x} := fun n ↦
    Nat.rec ⟨b, hb⟩ (fun _ x ↦ ⟨N x.1 x.2, hN x.1 x.2⟩) n
  have hc_succ : ∀ n, (c (n + 1)).1 = N (c n).1 (c n).2 := fun _ ↦ rfl
  let d : ℕ → A := fun n ↦ D (c n).1 (c n).2
  let s : ℕ → A := fun n ↦ ∑ i ∈ Finset.range n, π ^ i * d i
  have hs : ∀ n, b = algebraMap A B (s n) + ϖ ^ n * (c n).1 := by
    intro n
    induction n with
    | zero => simp [s, c]
    | succ n ih =>
      have h := hDN (c n).1 (c n).2
      rw [← hc_succ] at h
      rw [ih, h]
      simp only [s, d, Finset.sum_range_succ, map_add (f := _), map_mul, map_pow]
      ring
  have hcauchy : ∀ {m n : ℕ}, m ≤ n → s m ≡ s n [SMOD (maximalIdeal A ^ m • ⊤ : Submodule A A)] := by
    intro m n hmn
    rw [SModEq.sub_mem, smul_eq_mul, Ideal.mul_top, ← neg_sub, neg_mem_iff]
    simp only [s]
    rw [← Finset.sum_Ico_eq_sub _ hmn]
    refine Ideal.sum_mem _ fun i hi ↦ ?_
    refine Ideal.mul_mem_right _ _ ?_
    exact Ideal.pow_le_pow_right (Finset.mem_Ico.mp hi).1 (Ideal.pow_mem_pow hπm i)
  obtain ⟨L, hL⟩ := IsPrecomplete.prec' (I := maximalIdeal A) s hcauchy
  refine ⟨L, ?_⟩
  rw [← sub_eq_zero]
  refine IsHausdorff.haus' (I := maximalIdeal B) _ fun n ↦ ?_
  rw [SModEq.zero, smul_eq_mul, Ideal.mul_top]
  have hLn := hL n
  rw [SModEq.sub_mem, smul_eq_mul, Ideal.mul_top] at hLn
  have h1 : algebraMap A B (s n - L) ∈ maximalIdeal B ^ n := by
    rw [← hunr, ← Ideal.map_pow]
    exact Ideal.mem_map_of_mem _ hLn
  have h2 : ϖ ^ n * (c n).1 ∈ maximalIdeal B ^ n :=
    Ideal.mul_mem_right _ _ (Ideal.pow_mem_pow hϖm n)
  have : algebraMap A B L - b = -(algebraMap A B (s n - L) + ϖ ^ n * (c n).1) := by
    rw [hs n, map_sub]
    ring
  rw [this, neg_mem_iff]
  exact add_mem h1 h2

end FixedRing

section Completed

variable (K : Type*) [Field K] [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K]
  (Ω : Type*) [Field Ω] [ValuativeRel Ω] [TopologicalSpace Ω] [IsValuativeTopology Ω]
  [Algebra K Ω] [ValuativeExtension K Ω] [Algebra.IsAlgebraic K Ω] [HasUnramifiedRoots K Ω]

local notation "𝔼" => maximalUnramifiedExtension K Ω

abbrev CompletedUnramifiedIntegers : Type _ :=
  AdicCompletion (maximalIdeal 𝒪[maximalUnramifiedExtension K Ω]) 𝒪[maximalUnramifiedExtension K Ω]

local notation "𝔹" => CompletedUnramifiedIntegers K Ω

instance isScalarTower_completedUnramifiedIntegers : IsScalarTower 𝒪[K] 𝒪[𝔼] 𝔹 :=
  IsScalarTower.of_algebraMap_eq fun _ ↦ rfl

theorem algebraMap_integer_completedUnramifiedIntegers_injective :
    Function.Injective (algebraMap 𝒪[𝔼] 𝔹) :=
  algebraMap_adicCompletion_injective _

theorem map_maximalIdeal_completedUnramifiedIntegers :
    (maximalIdeal 𝒪[K]).map (algebraMap 𝒪[K] 𝔹) = maximalIdeal 𝔹 := by
  rw [IsScalarTower.algebraMap_eq 𝒪[K] 𝒪[𝔼] 𝔹, ← Ideal.map_map, map_maximalIdeal_integer,
    AdicCompletion.maximalIdeal_eq_map]

instance isLocalHom_algebraMap_completedUnramifiedIntegers : IsLocalHom (algebraMap 𝒪[K] 𝔹) :=
  isLocalHom_algebraMap_of_map_maximalIdeal (map_maximalIdeal_completedUnramifiedIntegers K Ω)

def residueFieldCompletedUnramifiedIntegersEquiv :
    ResidueField 𝒪[𝔼] ≃+* ResidueField 𝔹 :=
  RingEquiv.ofBijective _ (AdicCompletion.residueField_map_bijective 𝒪[𝔼])

instance isAlgClosed_residueField_completedUnramifiedIntegers : IsAlgClosed (ResidueField 𝔹) :=
  IsAlgClosed.of_ringEquiv _ _ (residueFieldCompletedUnramifiedIntegersEquiv K Ω)

instance isAlgebraic_residueField_completedUnramifiedIntegers :
    Algebra.IsAlgebraic 𝓀[K] (ResidueField 𝔹) :=
  AlgEquiv.isAlgebraic (R := 𝓀[K]) (A := ResidueField 𝒪[𝔼])
    (AlgEquiv.ofRingEquiv (f := residueFieldCompletedUnramifiedIntegersEquiv K Ω) fun t ↦ by
      obtain ⟨a, rfl⟩ := residue_surjective t
      simp only [ResidueField.algebraMap_residue]
      rfl)

section Frobenius

def completedUnramifiedAlgEquiv : (𝔼 ≃ₐ[K] 𝔼) →* (𝔹 ≃ₐ[𝒪[K]] 𝔹) :=
  adicCompletionAlgEquiv.comp (integerAlgEquivOfIsAlgebraic K 𝔼)

variable {K Ω}

@[simp]
theorem completedUnramifiedAlgEquiv_algebraMap (ρ : 𝔼 ≃ₐ[K] 𝔼) (x : 𝒪[𝔼]) :
    completedUnramifiedAlgEquiv K Ω ρ (algebraMap 𝒪[𝔼] 𝔹 x) =
      algebraMap 𝒪[𝔼] 𝔹 (integerAlgEquivOfIsAlgebraic K 𝔼 ρ x) :=
  adicCompletionAlgEquiv_algebraMap _ x

variable [IsGalois K Ω]

variable (K Ω) in
def completedFrobenius : 𝔹 ≃ₐ[𝒪[K]] 𝔹 :=
  completedUnramifiedAlgEquiv K Ω (maximalUnramifiedExtensionFrobenius K Ω)

theorem completedFrobenius_algebraMap (x : 𝒪[𝔼]) :
    completedFrobenius K Ω (algebraMap 𝒪[𝔼] 𝔹 x) = algebraMap 𝒪[𝔼] 𝔹
      (integerAlgEquivOfIsAlgebraic K 𝔼 (maximalUnramifiedExtensionFrobenius K Ω) x) :=
  completedUnramifiedAlgEquiv_algebraMap _ x

theorem residue_completedFrobenius (x : 𝔹) :
    residue 𝔹 (completedFrobenius K Ω x) = residue 𝔹 x ^ Nat.card 𝓀[K] :=
  residue_adicCompletionAlgEquiv_eq_pow
    (integerAlgEquivOfIsAlgebraic K 𝔼 (maximalUnramifiedExtensionFrobenius K Ω))
    (Nat.card 𝓀[K]) frobenius_integer_sub_pow_mem_maximalIdeal x

end Frobenius

section Finite

def integerToCompleted {L : IntermediateField K Ω} (h : L ≤ 𝔼) : 𝒪[L] →ₐ[𝒪[K]] 𝔹 :=
  (IsScalarTower.toAlgHom 𝒪[K] 𝒪[𝔼] 𝔹).comp (integerInclusion h)

variable {K Ω}

@[simp]
theorem integerToCompleted_apply {L : IntermediateField K Ω} (h : L ≤ 𝔼) (x : 𝒪[L]) :
    integerToCompleted K Ω h x = algebraMap 𝒪[𝔼] 𝔹 (integerInclusion h x) :=
  rfl

theorem integerToCompleted_injective {L : IntermediateField K Ω} (h : L ≤ 𝔼) :
    Function.Injective (integerToCompleted K Ω h) :=
  (algebraMap_integer_completedUnramifiedIntegers_injective K Ω).comp (integerInclusion_injective h)

end Finite

section FiniteFrobenius

variable {K Ω} [IsGalois K Ω]

theorem maximalUnramifiedExtensionFrobenius_inclusion {L : IntermediateField K Ω}
    (hL : IsUnramifiedSubextension L) (y : L) :
    letI := hL.1
    ((maximalUnramifiedExtensionFrobenius K Ω
      (IntermediateField.inclusion hL.le_maximalUnramifiedExtension y) : 𝔼) : Ω) =
      ((frobenius K L hL.ramificationIndex_eq_one y : L) : Ω) := by
  have := hL.1
  have h := hL.ramificationIndex_eq_one
  have hle := hL.le_maximalUnramifiedExtension
  obtain ⟨ξ, hξ, htop⟩ := exists_isPrimitiveRoot_adjoin_eq_top_of_unramified K L h
  have hn : Module.finrank K L ≠ 0 := Module.finrank_pos.ne'
  rw [card_residueField_of_unramified K L h] at hξ
  have hm := natCast_card_pow_sub_one_ne_zero (K := K) hn
  have key : (maximalUnramifiedExtension K Ω).val.comp
      ((maximalUnramifiedExtensionFrobenius K Ω).toAlgHom.comp (IntermediateField.inclusion hle)) =
      L.val.comp (frobenius K L h).toAlgHom := by
    refine AlgHom.ext_of_adjoin_eq_top (algebra_adjoin_eq_top_of_adjoin_eq_top htop) ?_
    intro z hz
    rw [Set.mem_singleton_iff] at hz
    rw [hz]
    have h1 : (IntermediateField.inclusion hle ξ) ^ (Nat.card 𝓀[K] ^ Module.finrank K L - 1) = 1 := by
      rw [← map_pow, hξ.pow_eq_one, map_one]
    simp only [AlgHom.comp_apply, IntermediateField.coe_val, AlgEquiv.coe_toAlgHom]
    rw [maximalUnramifiedExtensionFrobenius_apply_of_pow_eq_one hm h1,
      frobenius_apply_of_pow_eq_one h hm hξ.pow_eq_one]
    simp
  have hk := congrArg (fun f : L →ₐ[K] Ω ↦ f y) key
  simpa only [AlgHom.comp_apply, IntermediateField.coe_val, AlgEquiv.coe_toAlgHom] using hk

theorem completedFrobenius_integerToCompleted {L : IntermediateField K Ω}
    (hL : IsUnramifiedSubextension L) (x : 𝒪[L]) :
    letI := hL.1
    completedFrobenius K Ω (integerToCompleted K Ω hL.le_maximalUnramifiedExtension x) =
      integerToCompleted K Ω hL.le_maximalUnramifiedExtension
        (integerAlgEquiv K L (frobenius K L hL.ramificationIndex_eq_one) x) := by
  have := hL.1
  rw [integerToCompleted_apply, integerToCompleted_apply, completedFrobenius_algebraMap]
  congr 1
  refine Subtype.ext (Subtype.ext ?_)
  exact maximalUnramifiedExtensionFrobenius_inclusion hL (x : L)

end FiniteFrobenius

end Completed

end GroundTheory.LocalField
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.LocalFields.CompletedUnramified =====

-- ===== clump member: GroundTheory.LocalFields.LubinTateReciprocity.Descent =====
-- clump-header: {"m": "GroundTheory.LocalFields.LubinTateReciprocity.Descent", "h": "module\n\npublic import GroundTheory.LocalFields.CompletedUnramified\npublic import GroundTheory.LocalFields.LubinTateTorsion\npublic import Mathlib.RingTheory.Polynomial.Eisenstein.Distinguished\npublic import GroundTheory.LocalFields.Eisenstein\nimport GroundTheory.LocalFields.ExamplesLaurent\npublic import GroundTheory.LocalFields.LubinTateReciprocity.TwistedPoint\nimport GroundTheory.LocalFields.UnitsPowers\npublic import GroundTheory.PowerSubgroups.CountableNeighbourhoods.DescentPowerSubgroups\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import GroundTheory.LocalFields.LubinTateReciprocity.RootEval\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open PowerSeries IsLocalRing ValuativeRel GroundTheory.LocalField.FormalGroup
open scoped Topology

namespace GroundTheory.LocalField

section PsEval

variable {K : Type*} [Field K] [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K]
  {Ω : Type*} [Field Ω] [ValuativeRel Ω] [TopologicalSpace Ω] [IsValuativeTopology Ω]
  [Algebra K Ω] [ValuativeExtension K Ω] [Algebra.IsAlgebraic K Ω]

theorem psEval_add' {σ : Type*} [Finite σ] (F G : MvPowerSeries σ 𝒪[K]) (x : σ → Ω)
    (hx : ∀ i, valuation Ω (x i) < 1) :
    psEval (F + G) x = psEval F x + psEval G x := by
  have := t2Space_of_isValuativeTopology Ω
  have h := (hasSum_psEval' F x hx).add (hasSum_psEval' G x hx)
  have e : (fun d => psTerm F x d + psTerm G x d) = psTerm (F + G) x := by
    funext d
    simp [psTerm, add_mul]
  rw [e] at h
  exact h.tsum_eq

theorem psEval_mul' {σ : Type*} [Finite σ] (F G : MvPowerSeries σ 𝒪[K]) (x : σ → Ω)
    (hx : ∀ i, valuation Ω (x i) < 1) :
    psEval (F * G) x = psEval F x * psEval G x := by
  let E := IntermediateField.adjoin K (Set.range x)
  have := finiteDimensional_adjoin_range (K := K) x
  let xE : σ → E := fun i => ⟨x i, IntermediateField.subset_adjoin K _ ⟨i, rfl⟩⟩
  let a : σ → 𝒪[E] := fun i => ⟨xE i, ((valuation_coe_lt_one_iff E (xE i)).mp (hx i)).le⟩
  have ha : ∀ i, a i ∈ 𝓂[E] := fun i =>
    mem_maximalIdeal_integer_iff.mpr ((valuation_coe_lt_one_iff E (xE i)).mp (hx i))
  have h1 : psEval (F * G) x = _ := psEval_coe E (F * G) xE hx
  have h2 : psEval F x = _ := psEval_coe E F xE hx
  have h3 : psEval G x = _ := psEval_coe E G xE hx
  rw [h1, h2, h3]
  change ((psEval (F * G) fun i => (a i : E) : E) : Ω) =
    ((psEval F fun i => (a i : E) : E) : Ω) * ((psEval G fun i => (a i : E) : E) : Ω)
  let _ : UniformSpace E := IsTopologicalAddGroup.rightUniformSpace E
  have _ : IsUniformAddGroup E := isUniformAddGroup_of_addCommGroup
  let _ : UniformSpace 𝒪[K] := ⊥
  have _ : DiscreteUniformity 𝒪[K] := ⟨rfl⟩
  have hφ : Continuous[(⊥ : UniformSpace 𝒪[K]).toTopologicalSpace, _]
      (algebraMap 𝒪[K] 𝒪[E]) := by
    rw [UniformSpace.toTopologicalSpace_bot]
    exact continuous_bot
  rw [psEval_eq_eval₂ _ a ha, psEval_eq_eval₂ _ a ha, psEval_eq_eval₂ _ a ha,
    ← MvPowerSeries.coe_eval₂Hom hφ (hasEval_of_mem_maximalIdeal ha), map_mul]
  push_cast
  rfl

theorem psEval_eq_aeval_of_sub_mem {P h : Polynomial 𝒪[K]} {G : 𝒪[K]⟦X⟧}
    (hG : G - (h : 𝒪[K]⟦X⟧) ∈ Ideal.span {(P : 𝒪[K]⟦X⟧)}) {x : Ω} (hx : valuation Ω x < 1)
    (hP : Polynomial.aeval x (P.map (algebraMap 𝒪[K] K)) = 0) :
    psEval G (fun _ => x) = Polynomial.aeval x (h.map (algebraMap 𝒪[K] K)) := by
  have := t2Space_of_isValuativeTopology Ω
  obtain ⟨D, hD⟩ := Ideal.mem_span_singleton'.mp hG
  have hGe : G = (h : 𝒪[K]⟦X⟧) + D * (P : 𝒪[K]⟦X⟧) := by rw [hD]; ring
  rw [hGe, psEval_add' _ _ _ fun _ => hx, psEval_mul' _ _ _ fun _ => hx, psEval_polynomial,
    psEval_polynomial, hP, mul_zero, add_zero]

end PsEval

section Weierstrass

variable {K : Type*} [Field K] [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K]
  {π : 𝒪[K]} (hπ : Irreducible π) (m : ℕ)


include hπ in
theorem isDistinguishedAt_ltEisenstein : (ltEisenstein π m).IsDistinguishedAt 𝓂[K] :=
  ⟨⟨fun hn => (isEisensteinAt_ltEisenstein hπ m).mem hn⟩, (ltEisenstein_monic π m).1⟩


include hπ in
theorem exists_sub_coe_mem_span_ltEisenstein (G : 𝒪[K]⟦X⟧) :
    ∃ h : Polynomial 𝒪[K], G - (h : 𝒪[K]⟦X⟧) ∈ Ideal.span {((ltEisenstein π m : Polynomial 𝒪[K]) :
      𝒪[K]⟦X⟧)} := by
  have := isAdicComplete_integer K
  have hP := isDistinguishedAt_ltEisenstein hπ m
  obtain ⟨h, hh⟩ := AdjoinRoot.mk_surjective (rootEval hP G)
  exact ⟨h, (rootEval_eq_rootEval_iff hP G h).mp (by rw [rootEval_coe, hh])⟩

variable {L : Type*} [Field L] [Algebra K L]


include hπ in
theorem ltEisenstein_dvd_of_aeval_eq_zero {x : L}
    (hx : Polynomial.aeval x ((ltEisenstein π m).map (algebraMap 𝒪[K] K)) = 0) {p : Polynomial 𝒪[K]}
    (hp : Polynomial.aeval x (p.map (algebraMap 𝒪[K] K)) = 0) : ltEisenstein π m ∣ p := by
  have hmon := (ltEisenstein_monic π m).1
  have hq := one_lt_card_residueField' K
  have hdeg : 0 < (ltEisenstein π m).natDegree := by
    rw [(ltEisenstein_monic π m).2]
    exact Nat.mul_pos (by omega) (pow_pos (by omega) m)
  have hirr := irreducible_map_of_isEisensteinAt (isEisensteinAt_ltEisenstein hπ m) hdeg
  have hint : IsIntegral K x := ⟨_, hmon.map _, hx⟩
  have hmin : minpoly K x = (ltEisenstein π m).map (algebraMap 𝒪[K] K) :=
    (minpoly.eq_of_irreducible_of_monic hirr hx (hmon.map _)).symm
  have hdvd : (ltEisenstein π m).map (algebraMap 𝒪[K] K) ∣ p.map (algebraMap 𝒪[K] K) :=
    hmin ▸ minpoly.dvd K x hp
  rw [← Polynomial.modByMonic_eq_zero_iff_dvd hmon]
  apply Polynomial.map_injective (algebraMap 𝒪[K] K) (IsFractionRing.injective 𝒪[K] K)
  rw [Polynomial.map_modByMonic _ hmon, Polynomial.map_zero,
    Polynomial.modByMonic_eq_zero_iff_dvd (hmon.map _)]
  exact hdvd

end Weierstrass

section Iterate

variable {K : Type*} [Field K] [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K]
  {Ω : Type*} [Field Ω] [ValuativeRel Ω] [TopologicalSpace Ω] [IsValuativeTopology Ω]
  [Algebra K Ω] [ValuativeExtension K Ω] [Algebra.IsAlgebraic K Ω]
  {π : 𝒪[K]} (hπ : Irreducible π)

theorem pow_apply_eq_psEval (σ : Ω ≃ₐ[K] Ω) (a : 𝒪[K]) {x : Ω} (hx : valuation Ω x < 1)
    (hσ : σ x = psEval (lubinTateHom hπ (isLubinTateSeries_ltPoly π) (isLubinTateSeries_ltPoly π)
      a).toPowerSeries fun _ => x) (k : ℕ) :
    (σ ^ k) x = psEval (lubinTateHom hπ (isLubinTateSeries_ltPoly π) (isLubinTateSeries_ltPoly π)
      (a ^ k)).toPowerSeries fun _ => x := by
  induction k with
  | zero =>
    rw [pow_zero, pow_zero, lubinTateHom_self_one, Hom.toPowerSeries_id, AlgEquiv.one_apply]
    exact (psEval_X (K := K) (fun _ : Unit => x) ()).symm
  | succ k ih =>
    rw [pow_succ', AlgEquiv.mul_apply, ih, algEquiv_psEval σ _ _ fun _ => hx, hσ, pow_succ,
      lubinTateHom_mul hπ (isLubinTateSeries_ltPoly π) (isLubinTateSeries_ltPoly π)
        (isLubinTateSeries_ltPoly π), Hom.toPowerSeries_comp, PowerSeries.subst_def,
      psEval_subst' (fun _ => Hom.constantCoeff_eq_zero' _) _ _ fun _ => hx]


end Iterate

section Maps

variable {K : Type*} [Field K] [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K]
  {B : Type*} [CommRing B] [Algebra 𝒪[K] B]


omit [TopologicalSpace K] [IsNonarchimedeanLocalField K] in
theorem map_sub_coe_mem_span {P h : Polynomial 𝒪[K]} {G : 𝒪[K]⟦X⟧}
    (hG : G - (h : 𝒪[K]⟦X⟧) ∈ Ideal.span {(P : 𝒪[K]⟦X⟧)}) :
    PowerSeries.map (algebraMap 𝒪[K] B) G - ((h.map (algebraMap 𝒪[K] B) : Polynomial B) : B⟦X⟧) ∈
      Ideal.span {((P.map (algebraMap 𝒪[K] B) : Polynomial B) : B⟦X⟧)} := by
  have := Ideal.mem_map_of_mem (PowerSeries.map (algebraMap 𝒪[K] B)) hG
  rwa [Ideal.map_span, Set.image_singleton, map_sub, map_coe_polynomial, map_coe_polynomial] at this

theorem adjoinRoot_ringHom_ext {R S : Type*} [CommRing R] [CommRing S] {p : Polynomial R}
    {f g : AdjoinRoot p →+* S} (hof : ∀ r : R, f (AdjoinRoot.of p r) = g (AdjoinRoot.of p r))
    (hroot : f (AdjoinRoot.root p) = g (AdjoinRoot.root p)) : f = g := by
  apply Ideal.Quotient.ringHom_ext
  apply Polynomial.ringHom_ext
  · intro r
    exact hof r
  · exact hroot

end Maps

section Unramified

variable {K : Type*} [Field K] [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K]
  {Ω : Type*} [Field Ω] [ValuativeRel Ω] [TopologicalSpace Ω] [IsValuativeTopology Ω]
  [Algebra K Ω] [ValuativeExtension K Ω] [Algebra.IsAlgebraic K Ω] [HasUnramifiedRoots K Ω]
  [IsGalois K Ω]

theorem apply_coe_eq_frobenius (σ : Ω ≃ₐ[K] Ω) (hσ : unramifiedDegree K Ω σ = Multiplicative.ofAdd 1)
    {L : IntermediateField K Ω} (hL : IsUnramifiedSubextension L) (y : L) :
    letI := hL.1
    σ (y : Ω) = ((frobenius K L hL.ramificationIndex_eq_one y : L) : Ω) := by
  have := hL.1
  have hr := (restrictNormal_eq_maximalUnramifiedExtensionFrobenius_iff σ).mpr hσ
  rw [← maximalUnramifiedExtensionFrobenius_inclusion hL y, ← hr]
  exact (AlgEquiv.restrictNormal_commutes σ (maximalUnramifiedExtension K Ω)
    (IntermediateField.inclusion hL.le_maximalUnramifiedExtension y)).symm

theorem completedFrobenius_iterate_integerToCompleted {L : IntermediateField K Ω}
    (hL : IsUnramifiedSubextension L) (k : ℕ) (c : 𝒪[L]) :
    letI := hL.1
    (completedFrobenius K Ω)^[k] (integerToCompleted K Ω hL.le_maximalUnramifiedExtension c) =
      integerToCompleted K Ω hL.le_maximalUnramifiedExtension
        (integerAlgEquiv K L (frobenius K L hL.ramificationIndex_eq_one ^ k) c) := by
  have := hL.1
  induction k with
  | zero => rw [Function.iterate_zero, id, pow_zero, map_one, AlgEquiv.one_apply]
  | succ k ih =>
    rw [Function.iterate_succ_apply', ih, completedFrobenius_integerToCompleted hL, pow_succ',
      map_mul, AlgEquiv.mul_apply]

theorem residue_completedFrobenius_iterate (k : ℕ) (x : CompletedUnramifiedIntegers K Ω) :
    residue _ ((completedFrobenius K Ω)^[k] x) = residue _ x ^ (Nat.card 𝓀[K] ^ k) := by
  induction k with
  | zero => rw [Function.iterate_zero, id, pow_zero, pow_one]
  | succ k ih =>
    rw [Function.iterate_succ_apply', residue_completedFrobenius, ih, ← pow_mul, ← pow_succ]

theorem exists_integerToCompleted_eq_of_iterate {L : IntermediateField K Ω}
    (hL : IsUnramifiedSubextension L) {b : CompletedUnramifiedIntegers K Ω}
    (hb : (completedFrobenius K Ω)^[Module.finrank K L] b = b) :
    ∃ c : 𝒪[L], integerToCompleted K Ω hL.le_maximalUnramifiedExtension c = b := by
  have := hL.1
  have h := hL.ramificationIndex_eq_one
  have := isAdicComplete_integer L
  set ι := integerToCompleted K Ω hL.le_maximalUnramifiedExtension with hι
  let _ : Algebra 𝒪[L] (CompletedUnramifiedIntegers K Ω) := ι.toRingHom.toAlgebra
  have hιa : ∀ c : 𝒪[L], algebraMap 𝒪[L] (CompletedUnramifiedIntegers K Ω) c = ι c := fun _ => rfl
  set N := Module.finrank K L with hN
  have hfrobN : frobenius K L h ^ N = 1 := by
    rw [hN, ← orderOf_frobenius K L h]
    exact pow_orderOf_eq_one _
  let T : CompletedUnramifiedIntegers K Ω →+* CompletedUnramifiedIntegers K Ω :=
    (completedFrobenius K Ω).toAlgHom.toRingHom ^ N
  have hT : ∀ x, T x = (completedFrobenius K Ω)^[N] x := fun x => by
    rw [RingHom.coe_pow]
    rfl
  have hTc : ∀ c : 𝒪[L], T (algebraMap 𝒪[L] (CompletedUnramifiedIntegers K Ω) c) =
      algebraMap 𝒪[L] (CompletedUnramifiedIntegers K Ω) c := fun c => by
    rw [hT, hιa, hι, completedFrobenius_iterate_integerToCompleted hL, hfrobN, map_one,
      AlgEquiv.one_apply]
  let σN : CompletedUnramifiedIntegers K Ω →ₐ[𝒪[L]] CompletedUnramifiedIntegers K Ω :=
    { toRingHom := T, commutes' := hTc }
  have hσN : ∀ x, σN x = (completedFrobenius K Ω)^[N] x := hT
  have hres : ∀ x, residue _ (σN x) = residue _ x ^ Nat.card (ResidueField 𝒪[L]) := fun x => by
    rw [hσN, residue_completedFrobenius_iterate, card_residueField_of_unramified K L h]
  have hunrL : (maximalIdeal 𝒪[L]).map (algebraMap 𝒪[L] (CompletedUnramifiedIntegers K Ω)) =
      maximalIdeal (CompletedUnramifiedIntegers K Ω) := by
    have hKL : (maximalIdeal 𝒪[K]).map (algebraMap 𝒪[K] 𝒪[L]) = maximalIdeal 𝒪[L] := by
      rw [map_maximalIdeal K L, ramificationIndex, h, pow_one]
    have hcomp : (algebraMap 𝒪[L] (CompletedUnramifiedIntegers K Ω)).comp (algebraMap 𝒪[K] 𝒪[L]) =
        algebraMap 𝒪[K] (CompletedUnramifiedIntegers K Ω) := ι.comp_algebraMap
    rw [← hKL, Ideal.map_map, hcomp, map_maximalIdeal_completedUnramifiedIntegers K Ω]
  obtain ⟨c, hc⟩ := (mem_range_algebraMap_iff_fixed hunrL σN hres b).mpr (by rw [hσN]; exact hb)
  exact ⟨c, hc⟩

end Unramified

section Descent

variable {R : Type*} [CommRing R]

theorem eval₂_of_mk (f p q : Polynomial R) :
    Polynomial.eval₂ (AdjoinRoot.of f) (AdjoinRoot.mk f q) p = AdjoinRoot.mk f (p.comp q) :=
  (Polynomial.hom_eval₂ p Polynomial.C (AdjoinRoot.mk f) q).symm

theorem adjoinRoot_map_mk {S : Type*} [CommRing S] (ι : R →+* S) (p : Polynomial R) (q : Polynomial S)
    (h : q ∣ p.map ι) (g : Polynomial R) :
    AdjoinRoot.map ι p q h (AdjoinRoot.mk p g) = AdjoinRoot.mk q (g.map ι) := by
  have key : (AdjoinRoot.map ι p q h).comp (AdjoinRoot.mk p) =
      (AdjoinRoot.mk q).comp (Polynomial.mapRingHom ι) := by
    apply Polynomial.ringHom_ext
    · intro c
      simp
    · simp
  exact congrArg (fun F : Polynomial R →+* AdjoinRoot q => F g) key

theorem adjoinRoot_map_injective {S : Type*} [CommRing S] {ι : R →+* S} (hι : Function.Injective ι)
    {p : Polynomial R} (hp : p.Monic) {q : Polynomial S} (hq : q ∣ p.map ι) (hpq : p.map ι = q) :
    Function.Injective (AdjoinRoot.map ι p q hq) := by
  subst hpq
  refine (injective_iff_map_eq_zero (AdjoinRoot.map ι p (p.map ι) hq)).mpr fun w hw => ?_
  obtain ⟨g, rfl⟩ := AdjoinRoot.mk_surjective w
  rw [adjoinRoot_map_mk, AdjoinRoot.mk_eq_zero, ← Polynomial.modByMonic_eq_zero_iff_dvd (hp.map ι),
    ← Polynomial.map_modByMonic ι hp] at hw
  rw [AdjoinRoot.mk_eq_zero, ← Polynomial.modByMonic_eq_zero_iff_dvd hp]
  exact Polynomial.map_injective ι hι (by rw [hw, Polynomial.map_zero])

theorem exists_adjoinRoot_twist (p : Polynomial R) (ψ : R →+* R) (hψ : p.map ψ = p) (g : Polynomial R)
    (hg : p ∣ p.comp g) :
    ∃ τ : AdjoinRoot p →+* AdjoinRoot p, (∀ c, τ (AdjoinRoot.of p c) = AdjoinRoot.of p (ψ c)) ∧
      τ (AdjoinRoot.root p) = AdjoinRoot.mk p g := by
  refine ⟨AdjoinRoot.lift ((AdjoinRoot.of p).comp ψ) (AdjoinRoot.mk p g) ?_,
    fun c => AdjoinRoot.lift_of _, AdjoinRoot.lift_root _⟩
  rw [← Polynomial.eval₂_map, hψ, eval₂_of_mk, AdjoinRoot.mk_eq_zero]
  exact hg

theorem exists_adjoinRoot_lift {S : Type*} [CommRing S] (p : Polynomial R) (jc : R →+* S) (x : S)
    (hx : p.eval₂ jc x = 0) :
    ∃ j : AdjoinRoot p →+* S, (∀ c, j (AdjoinRoot.of p c) = jc c) ∧ j (AdjoinRoot.root p) = x ∧
      ∀ g, j (AdjoinRoot.mk p g) = g.eval₂ jc x :=
  ⟨AdjoinRoot.lift jc x hx, fun _ => AdjoinRoot.lift_of _, AdjoinRoot.lift_root _,
    fun _ => AdjoinRoot.lift_mk _ _⟩

theorem exists_adjoinRoot_map_eq {S : Type*} [CommRing S] (ι : R →+* S) (p : Polynomial R)
    {q : Polynomial S} (hq : q ∣ p.map ι) (hqm : q.Monic) (z : AdjoinRoot q)
    (d : Fin (AdjoinRoot.powerBasis' hqm).dim → R)
    (hd : ∀ i, ι (d i) = (AdjoinRoot.powerBasis' hqm).basis.repr z i) :
    ∃ y : AdjoinRoot p, AdjoinRoot.map ι p q hq y = z := by
  refine ⟨∑ i, AdjoinRoot.of p (d i) * AdjoinRoot.root p ^ (i : ℕ), ?_⟩
  conv_rhs => rw [← (AdjoinRoot.powerBasis' hqm).basis.sum_repr z]

  rw [map_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [map_mul, map_pow, AdjoinRoot.map_of, AdjoinRoot.map_root, hd, Algebra.smul_def,
    PowerBasis.coe_basis, AdjoinRoot.powerBasis'_gen, AdjoinRoot.algebraMap_eq]

private theorem exists_fixed_root_descent {A R B Ω : Type*}
    [CommRing A] [CommRing R] [CommRing B] [CommRing Ω]
    {P Q h : Polynomial A} (hPmon : P.Monic) (hPcomp : P ∣ P.comp h)
    {ιAR : A →+* R} {ιRB : R →+* B} (hιRB : Function.Injective ιRB)
    {P_B : Polynomial B} (hPB : P.map (ιRB.comp ιAR) = P_B) (hPBm : P_B.Monic)
    {φR : R →+* R} (hφR : φR.comp ιAR = ιAR)
    {T : AdjoinRoot P_B →+* AdjoinRoot P_B}
    (hTof : ∀ c : R, T (AdjoinRoot.of P_B (ιRB c)) = AdjoinRoot.of P_B (ιRB (φR c)))
    (hTroot : T (AdjoinRoot.root P_B) = AdjoinRoot.mk P_B (h.map (ιRB.comp ιAR)))
    {z : AdjoinRoot P_B} (hzfix : T z = z)
    (hzroot : Polynomial.eval₂ (AdjoinRoot.of P_B) z (Q.map (ιRB.comp ιAR)) = 0)
    (d : Fin (AdjoinRoot.powerBasis' hPBm).dim → R)
    (hd : ∀ i, ιRB (d i) = (AdjoinRoot.powerBasis' hPBm).basis.repr z i)
    {jc : R →+* Ω} {l : Ω} (hl : (P.map ιAR).eval₂ jc l = 0)
    {σ : Ω →+* Ω} (hσc : ∀ c : R, σ (jc c) = jc (φR c))
    (hσl : σ l = (h.map ιAR).eval₂ jc l) :
    ∃ x : Ω, Polynomial.eval₂ (jc.comp ιAR) x Q = 0 ∧ σ x = x ∧
      ∀ τ : Ω →+* Ω, (∀ c : R, τ (jc c) = jc c) → τ l = l → τ x = x := by
  set P_L := P.map ιAR
  have hPLmap : P_L.map ιRB = P_B := by rw [Polynomial.map_map, hPB]
  have hdvd : P_B ∣ P_L.map ιRB := hPLmap ▸ dvd_rfl
  have hinj := adjoinRoot_map_injective hιRB (hPmon.map ιAR) hdvd hPLmap
  obtain ⟨y, hy⟩ := exists_adjoinRoot_map_eq ιRB P_L hdvd hPBm z d hd
  generalize hiM : AdjoinRoot.map ιRB P_L P_B hdvd = iM at hinj hy
  have hiMof : ∀ c : R, iM (AdjoinRoot.of P_L c) = AdjoinRoot.of P_B (ιRB c) := fun c => by
    rw [← hiM, AdjoinRoot.map_of]
  have hiMroot : iM (AdjoinRoot.root P_L) = AdjoinRoot.root P_B := by
    rw [← hiM, AdjoinRoot.map_root]
  have hiMmk : ∀ g : Polynomial R, iM (AdjoinRoot.mk P_L g) = AdjoinRoot.mk P_B (g.map ιRB) :=
    fun g => by rw [← hiM, adjoinRoot_map_mk]
  have hfrPL : P_L.map φR = P_L := by rw [Polynomial.map_map, hφR]
  have hPcompL : P_L ∣ P_L.comp (h.map ιAR) := by
    rw [← Polynomial.map_comp (f := ιAR)]
    exact Polynomial.map_dvd _ hPcomp
  obtain ⟨σL, hσLof, hσLroot⟩ := exists_adjoinRoot_twist P_L φR hfrPL (h.map ιAR) hPcompL
  have hsq1 : iM.comp σL = T.comp iM := by
    refine adjoinRoot_ringHom_ext (fun c => ?_) ?_
    · change iM (σL _) = T (iM _)
      rw [hσLof, hiMof, hiMof, hTof]
    · change iM (σL _) = T (iM _)
      rw [hσLroot, hiMmk, hiMroot, hTroot, Polynomial.map_map]
  have hσLy : σL y = y := by
    apply hinj
    change (iM.comp σL) y = iM y
    rw [hsq1]
    change T (iM y) = iM y
    rw [hy, hzfix]
  have hiMofc : iM.comp (AdjoinRoot.of P_L) = (AdjoinRoot.of P_B).comp ιRB := RingHom.ext hiMof
  have hy' : Polynomial.eval₂ (AdjoinRoot.of P_L) y (Q.map ιAR) = 0 := by
    apply hinj
    rw [map_zero, Polynomial.hom_eval₂, hiMofc, hy, ← Polynomial.eval₂_map, Polynomial.map_map]
    exact hzroot
  obtain ⟨j, hjof, hjroot, hjmk⟩ := exists_adjoinRoot_lift P_L jc l hl
  have hjc' : j.comp (AdjoinRoot.of P_L) = jc := RingHom.ext hjof
  have hsq2 : σ.comp j = j.comp σL := by
    refine adjoinRoot_ringHom_ext (fun c => ?_) ?_
    · change σ (j _) = j (σL _)
      rw [hσLof, hjof, hjof, hσc]
    · change σ (j _) = j (σL _)
      rw [hσLroot, hjmk, hjroot, hσl]
  refine ⟨j y, ?_, ?_, ?_⟩
  · rw [← Polynomial.eval₂_map, ← hjc', ← Polynomial.hom_eval₂, hy', map_zero]
  · change (σ.comp j) y = j y
    rw [hsq2]
    change j (σL y) = j y
    rw [hσLy]
  · intro τ hτc hτl
    have hτj : τ.comp j = j := by
      refine adjoinRoot_ringHom_ext (fun c => ?_) ?_
      · change τ (j _) = j _
        rw [hjof, hτc]
      · change τ (j _) = j _
        rw [hjroot, hτl]
    change (τ.comp j) y = j y
    rw [hτj]

variable {K : Type*} [Field K] [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K]
  {Ω : Type*} [Field Ω] [ValuativeRel Ω] [TopologicalSpace Ω] [IsValuativeTopology Ω]
  [Algebra K Ω] [ValuativeExtension K Ω] [Algebra.IsAlgebraic K Ω] [HasUnramifiedRoots K Ω]
  [IsGalois K Ω] [IsSepClosed Ω]
  {π : 𝒪[K]} (hπ : Irreducible π) (u : 𝒪[K]ˣ) (m : ℕ)



include hπ in
theorem exists_fixed_root_ltEisenstein (σ : Ω ≃ₐ[K] Ω)
    (hσ : unramifiedDegree K Ω σ = Multiplicative.ofAdd 1) {l : Ω}
    (hl : Polynomial.aeval l ((ltEisenstein π m).map (algebraMap 𝒪[K] K)) = 0)
    (hσl : σ l = psEval (lubinTateHom hπ (isLubinTateSeries_ltPoly π) (isLubinTateSeries_ltPoly π)
      ((u⁻¹ : 𝒪[K]ˣ) : 𝒪[K])).toPowerSeries fun _ => l) :
    ∃ x : Ω, Polynomial.aeval x ((ltEisenstein ((u : 𝒪[K]) * π) m).map (algebraMap 𝒪[K] K)) = 0 ∧
      σ x = x ∧ ∀ τ : Ω ≃ₐ[K] Ω, (∀ y ∈ maximalUnramifiedExtension K Ω, τ y = y) → τ l = l →
        τ x = x := by
  classical
  let P := ltEisenstein π m
  have hPmon : P.Monic := (ltEisenstein_monic π m).1

  have hlv : valuation Ω l < 1 := by
    refine valuation_lt_one_of_aeval_ltPolyIter_eq_zero hπ (m + 1) ?_
    rw [ltPolyIter_succ_eq_mul, Polynomial.map_mul, map_mul, hl, mul_zero]

  let ltPS : 𝒪[K] → 𝒪[K]⟦X⟧ := fun a =>
    (lubinTateHom hπ (isLubinTateSeries_ltPoly π) (isLubinTateSeries_ltPoly π) a).toPowerSeries
  obtain ⟨h, hh⟩ := exists_sub_coe_mem_span_ltEisenstein hπ m (ltPS ((u⁻¹ : 𝒪[K]ˣ) : 𝒪[K]))
  have hσl' : σ l = Polynomial.aeval l (h.map (algebraMap 𝒪[K] K)) :=
    hσl.trans (psEval_eq_aeval_of_sub_mem hh hlv hl)

  obtain ⟨N, hN0, hNl⟩ :=
    _root_.GroundTheory.Variant₂.N1.exists_pow_apply_eq_self_of_aeval_eq_zero σ
      ((hPmon.map (algebraMap 𝒪[K] K)).ne_zero) hl
  obtain ⟨hN', hhN'⟩ :=
    exists_sub_coe_mem_span_ltEisenstein hπ m (ltPS (((u⁻¹ : 𝒪[K]ˣ) : 𝒪[K]) ^ N))
  have haevalN : Polynomial.aeval l (hN'.map (algebraMap 𝒪[K] K)) = l := by
    rw [← psEval_eq_aeval_of_sub_mem hhN' hlv hl, ← pow_apply_eq_psEval hπ σ _ hlv hσl N, hNl]
  have hdvdN : P ∣ hN' - Polynomial.X := by
    refine ltEisenstein_dvd_of_aeval_eq_zero hπ m hl ?_
    rw [Polynomial.map_sub, Polynomial.map_X, map_sub, haevalN, Polynomial.aeval_X, sub_self]
  have hGN : ltPS (((u⁻¹ : 𝒪[K]ˣ) : 𝒪[K]) ^ N) -
      ((Polynomial.X : Polynomial 𝒪[K]) : 𝒪[K]⟦X⟧) ∈ Ideal.span {(P : 𝒪[K]⟦X⟧)} := by
    obtain ⟨q, hq⟩ := hdvdN
    have e : ltPS (((u⁻¹ : 𝒪[K]ˣ) : 𝒪[K]) ^ N) - ((Polynomial.X : Polynomial 𝒪[K]) : 𝒪[K]⟦X⟧) =
        (ltPS (((u⁻¹ : 𝒪[K]ˣ) : 𝒪[K]) ^ N) - (hN' : 𝒪[K]⟦X⟧)) +
          (P : 𝒪[K]⟦X⟧) * (q : 𝒪[K]⟦X⟧) := by
      rw [← Polynomial.coe_mul, ← hq, Polynomial.coe_sub]
      ring
    rw [e]
    exact add_mem hhN' (Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _))

  let B := CompletedUnramifiedIntegers K Ω
  have hunr := map_maximalIdeal_completedUnramifiedIntegers K Ω
  obtain ⟨z, hzfix, hzroot⟩ := exists_twistFrob_fixed_root hπ hunr m
    (completedFrobenius K Ω).toAlgHom residue_completedFrobenius u
  set T := twistFrob hπ hunr m (completedFrobenius K Ω).toAlgHom u with hT
  have hP := isDistinguishedAt_ltEisB hπ hunr m
  have hTN : T^[N] (AdjoinRoot.root (ltEisB π B m)) = AdjoinRoot.root (ltEisB π B m) := by
    rw [hT, twistFrob_iterate_root, ← rootEval_X hP, rootEval_eq_rootEval_iff]
    have := map_sub_coe_mem_span (B := B) hGN
    rwa [Polynomial.map_X, Polynomial.coe_X] at this

  have hzN : T^[N] z = z := Function.iterate_fixed hzfix N
  obtain ⟨L, ⟨hL, hLN⟩, -⟩ := existsUnique_isUnramifiedSubextension (K := K) (Ksep := Ω) hN0.ne'
  have := hL.1
  let ιA : 𝒪[L] →ₐ[𝒪[K]] B := integerToCompleted K Ω hL.le_maximalUnramifiedExtension
  let ι : 𝒪[L] →+* B := ιA.toRingHom
  have hι_comp : ι.comp (algebraMap 𝒪[K] 𝒪[L]) = algebraMap 𝒪[K] B := ιA.comp_algebraMap
  let φ_L : 𝒪[L] →+* 𝒪[L] :=
    (integerAlgEquiv K L (frobenius K L hL.ramificationIndex_eq_one)).toAlgHom.toRingHom
  have hcoord : ∀ i, ∃ d : 𝒪[L], ι d =
      (AdjoinRoot.powerBasis' (monic_ltEisB π B m)).basis.repr z i := fun i => by
    refine exists_integerToCompleted_eq_of_iterate hL ?_
    rw [hLN]
    have := repr_twistFrob_iterate hπ hunr m (completedFrobenius K Ω).toAlgHom u hTN z i
    rw [← hT, hzN] at this
    exact this.symm
  choose d hd using hcoord

  have hPcomp : P ∣ P.comp h := by
    refine ltEisenstein_dvd_of_aeval_eq_zero hπ m hl ?_
    rw [Polynomial.map_comp, Polynomial.aeval_comp, ← hσl']
    have e := Polynomial.aeval_algHom_apply (σ : Ω →ₐ[K] Ω) l (P.map (algebraMap 𝒪[K] K))
    change Polynomial.aeval (σ l) _ = 0
    rw [show ((σ : Ω →ₐ[K] Ω) l) = σ l from rfl] at e
    rw [e, hl, map_zero]
  have hφR : φ_L.comp (algebraMap 𝒪[K] 𝒪[L]) = algebraMap 𝒪[K] 𝒪[L] :=
    RingHom.ext fun c =>
      (integerAlgEquiv K L (frobenius K L hL.ramificationIndex_eq_one)).commutes c
  have hjc : ((algebraMap L Ω).comp (algebraMap 𝒪[L] L)).comp (algebraMap 𝒪[K] 𝒪[L]) =
      (algebraMap K Ω).comp (algebraMap 𝒪[K] K) := by
    refine RingHom.ext fun c => ?_
    change algebraMap L Ω (algebraMap K L (c : K)) = algebraMap K Ω (c : K)
    exact (IsScalarTower.algebraMap_apply K L Ω (c : K)).symm
  obtain ⟨x, hxroot, hxfix, hxinv⟩ := exists_fixed_root_descent
    (Q := ltEisenstein ((u : 𝒪[K]) * π) m) (h := h) hPmon hPcomp
    (integerToCompleted_injective hL.le_maximalUnramifiedExtension)
    (by rw [hι_comp]) (monic_ltEisB π B m) hφR
    (fun c => by
      rw [hT, twistFrob_of]
      exact congrArg (AdjoinRoot.of _) (completedFrobenius_integerToCompleted hL c))
    (by
      rw [hT, twistFrob_root, hι_comp, ← rootEval_coe hP]
      exact (rootEval_eq_rootEval_iff hP _ _).mpr (map_sub_coe_mem_span hh))
    hzfix (by rw [hι_comp]; exact hzroot) d hd
    (by rw [Polynomial.eval₂_map, hjc, ← Polynomial.eval₂_map]; exact hl)
    (σ := (σ : Ω →+* Ω))
    (fun c => by
      change σ ((c : L) : Ω) =
        (((integerAlgEquiv K L (frobenius K L hL.ramificationIndex_eq_one) c : 𝒪[L]) : L) : Ω)
      rw [coe_integerAlgEquiv_apply]
      exact apply_coe_eq_frobenius σ hσ hL (c : L))
    (by rw [Polynomial.eval₂_map, hjc, ← Polynomial.eval₂_map]; exact hσl')
  refine ⟨x, ?_, hxfix, fun τ hτ hτl => hxinv (τ : Ω →+* Ω) (fun c => ?_) hτl⟩
  · change Polynomial.eval₂ (algebraMap K Ω) x
      ((ltEisenstein ((u : 𝒪[K]) * π) m).map (algebraMap 𝒪[K] K)) = 0
    rwa [Polynomial.eval₂_map, ← hjc]
  · exact hτ _ (hL.le_maximalUnramifiedExtension (c : L).2)

end Descent

end GroundTheory.LocalField
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.LocalFields.LubinTateReciprocity.Descent =====
