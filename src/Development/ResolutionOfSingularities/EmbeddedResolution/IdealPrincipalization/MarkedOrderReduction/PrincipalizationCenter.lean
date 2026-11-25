module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.Append
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReductionProperties
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.InvarianceUnderIsomorphism

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MarkedSchemeWithCenter, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.PrincipalizationCenter

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MarkedSchemeWithCenter =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MarkedSchemeWithCenter", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.Append\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

structure MarkedSchemeWithCenter (k : Type u) [Field k] where
  ambient : Scheme.{u}
  ideal : ambient.IdealSheafData
  boundary : List ambient.IdealSheafData
  structMap : ambient ⟶ Spec (CommRingCat.of k)
  center : ambient.IdealSheafData

private theorem comap_inv_comap_hom {X Y : Scheme.{u}} (e : X ≅ Y) (I : Y.IdealSheafData) :
    (I.comap e.hom).comap e.inv = I := by
  rw [← Scheme.IdealSheafData.comap_comp, e.inv_hom_id]
  simp

namespace MarkedSchemeWithCenter

variable {k : Type u} [Field k]

def transport (D : MarkedSchemeWithCenter k) {A : Scheme.{u}} (e : A ≅ D.ambient) : MarkedSchemeWithCenter k where
  ambient := A
  ideal := D.ideal.comap e.hom
  boundary := D.boundary.map (fun J => J.comap e.hom)
  structMap := e.hom ≫ D.structMap
  center := D.center.comap e.hom

@[simp]
theorem transport_ideal (D : MarkedSchemeWithCenter k) {A : Scheme.{u}} (e : A ≅ D.ambient) :
    (D.transport e).ideal = D.ideal.comap e.hom := rfl

@[simp]
theorem transport_projectionToBase (D : MarkedSchemeWithCenter k) {A : Scheme.{u}} (e : A ≅ D.ambient) :
    (D.transport e).structMap = e.hom ≫ D.structMap := rfl

@[simp]
theorem transport_center (D : MarkedSchemeWithCenter k) {A : Scheme.{u}} (e : A ≅ D.ambient) :
    (D.transport e).center = D.center.comap e.hom := rfl

private theorem mk_congr {K : Type u} [Field K] (A : Scheme.{u})
    (I I' : A.IdealSheafData) (B B' : List A.IdealSheafData)
    (f f' : A ⟶ Spec (CommRingCat.of K)) (C C' : A.IdealSheafData)
    (h1 : I = I') (h2 : B = B') (h3 : f = f') (h4 : C = C') :
    (MarkedSchemeWithCenter.mk A I B f C : MarkedSchemeWithCenter K) = MarkedSchemeWithCenter.mk A I' B' f' C' := by
  subst h1 h2 h3 h4
  rfl

theorem transport_refl (D : MarkedSchemeWithCenter k) : D.transport (Iso.refl D.ambient) = D := by
  obtain ⟨A, I, B, f, C⟩ := D
  have h1 : I.comap (𝟙 A) = I := by simp
  have h2 : B.map (fun J => J.comap (𝟙 A)) = B := by simp
  have h3 : 𝟙 A ≫ f = f := Category.id_comp f
  have h4 : C.comap (𝟙 A) = C := by simp
  exact mk_congr _ _ _ _ _ _ _ _ _ h1 h2 h3 h4

end MarkedSchemeWithCenter

def IsInvariantUnderIso {k : Type u} [Field k] (P : MarkedSchemeWithCenter.{u} k → Prop) : Prop :=
  ∀ (D : MarkedSchemeWithCenter.{u} k) (A : Scheme.{u}) (e : A ≅ D.ambient), P D → P (D.transport e)

namespace MarkedBlowupSequenceData

variable {k : Type u} [Field k] {X : Scheme.{u}} {p : X ⟶ Spec (CommRingCat.of k)}
  {I : X.IdealSheafData} {m : ℕ} {E : List X.IdealSheafData}

def dataAt (s : MarkedBlowupSequenceData p I m E) (i : ℕ) : MarkedSchemeWithCenter.{u} k where
  ambient := s.toBlowupSequenceData.obj i
  ideal := s.ideal i
  boundary := s.boundary i
  structMap := s.proj i ≫ p
  center := s.toBlowupSequenceData.center i

@[simp]
theorem dataAt_ideal (s : MarkedBlowupSequenceData p I m E) (i : ℕ) :
    (s.dataAt i).ideal = s.ideal i := rfl

@[simp]
theorem dataAt_boundary (s : MarkedBlowupSequenceData p I m E) (i : ℕ) :
    (s.dataAt i).boundary = s.boundary i := rfl

@[simp]
theorem dataAt_structMap (s : MarkedBlowupSequenceData p I m E) (i : ℕ) :
    (s.dataAt i).structMap = s.proj i ≫ p := rfl

@[simp]
theorem dataAt_center (s : MarkedBlowupSequenceData p I m E) (i : ℕ) :
    (s.dataAt i).center = s.toBlowupSequenceData.center i := rfl

private theorem transport_dataAt_congr {K : Type u} [Field K] {Y : Scheme.{u}}
    {q : Y ⟶ Spec (CommRingCat.of K)} {J : Y.IdealSheafData} {n : ℕ}
    {F : List Y.IdealSheafData} (d : MarkedBlowupSequenceData q J n F) {a b : ℕ} (hab : a = b)
    {Z : Scheme.{u}} (h1 : Z = d.toBlowupSequenceData.obj a) (h2 : Z = d.toBlowupSequenceData.obj b) :
    (d.dataAt a).transport (eqToIso h1) = (d.dataAt b).transport (eqToIso h2) := by
  subst hab
  rfl

variable (s : MarkedBlowupSequenceData p I m E)
  (t : MarkedBlowupSequenceData (s.proj s.toBlowupSequenceData.length ≫ p) (s.ideal s.toBlowupSequenceData.length) m
    (s.boundary s.toBlowupSequenceData.length))

theorem append_dataAt_of_lt_length (hinv : ComapIsoInvariance.{u}) {i : ℕ} (h : i < s.toBlowupSequenceData.length) :
    (s.append t hinv).dataAt i =
      (s.dataAt i).transport (eqToIso (appendToBlowupSequenceData_schemeAt_of_le_length s t (le_of_lt h))) := by
  have hle : i ≤ s.toBlowupSequenceData.length := le_of_lt h
  have h1 : s.appendIdeal t i =
      (s.ideal i).comap (eqToHom (appendToBlowupSequenceData_schemeAt_of_le_length s t hle)) :=
    appendIdeal_of_le_length s t hle
  have h2 : s.appendBoundary t i =
      (s.boundary i).map (fun J => J.comap (eqToHom (appendToBlowupSequenceData_schemeAt_of_le_length s t hle))) :=
    appendBoundary_of_le_length s t hle
  have h3 : s.appendProjectionToBase t i ≫ p =
      eqToHom (appendToBlowupSequenceData_schemeAt_of_le_length s t hle) ≫ (s.proj i ≫ p) := by
    rw [appendProjectionToBase_of_le_length s t hle, Category.assoc]
  have h4 : (s.appendToBlowupSequenceData t).center i =
      (s.toBlowupSequenceData.center i).comap (eqToHom (appendToBlowupSequenceData_schemeAt_of_le_length s t hle)) :=
    appendToBlowupSequenceData_center_of_lt_length s t h
  exact MarkedSchemeWithCenter.mk_congr _ _ _ _ _ _ _ _ _ h1 h2 h3 h4

theorem append_dataAt_length (hinv : ComapIsoInvariance.{u}) :
    (s.append t hinv).dataAt s.toBlowupSequenceData.length =
      ((t.dataAt 0).transport t.toBlowupSequenceData.isoZero.symm).transport
        (eqToIso (appendToBlowupSequenceData_schemeAt_of_le_length s t (le_refl s.toBlowupSequenceData.length))) := by
  have h1 : s.appendIdeal t s.toBlowupSequenceData.length =
      ((t.ideal 0).comap t.toBlowupSequenceData.isoZero.inv).comap
        (eqToHom (appendToBlowupSequenceData_schemeAt_of_le_length s t (le_refl s.toBlowupSequenceData.length))) := by
    rw [appendIdeal_of_le_length s t (le_refl s.toBlowupSequenceData.length), t.ideal_zero, comap_inv_comap_hom]
  have h2 : s.appendBoundary t s.toBlowupSequenceData.length =
      ((t.boundary 0).map (fun J => J.comap t.toBlowupSequenceData.isoZero.inv)).map
        (fun J => J.comap (eqToHom (appendToBlowupSequenceData_schemeAt_of_le_length s t (le_refl s.toBlowupSequenceData.length)))) := by
    rw [appendBoundary_of_le_length s t (le_refl s.toBlowupSequenceData.length), t.boundary_zero]
    simp only [List.map_map, Function.comp_def, comap_inv_comap_hom]
  have h3 : s.appendProjectionToBase t s.toBlowupSequenceData.length ≫ p =
      eqToHom (appendToBlowupSequenceData_schemeAt_of_le_length s t (le_refl s.toBlowupSequenceData.length)) ≫
        (t.toBlowupSequenceData.isoZero.inv ≫
          (t.proj 0 ≫ (s.proj s.toBlowupSequenceData.length ≫ p))) := by
    rw [appendProjectionToBase_of_le_length s t (le_refl s.toBlowupSequenceData.length), t.proj_zero]
    simp
  have h4 : (s.appendToBlowupSequenceData t).center s.toBlowupSequenceData.length =
      ((t.toBlowupSequenceData.center 0).comap t.toBlowupSequenceData.isoZero.inv).comap
        (eqToHom (appendToBlowupSequenceData_schemeAt_of_le_length s t (le_refl s.toBlowupSequenceData.length))) :=
    appendToBlowupSequenceData_center_length s t
  exact MarkedSchemeWithCenter.mk_congr _ _ _ _ _ _ _ _ _ h1 h2 h3 h4

theorem append_dataAt_of_length_lt (hinv : ComapIsoInvariance.{u}) {i : ℕ} (h : s.toBlowupSequenceData.length < i) :
    (s.append t hinv).dataAt i =
      (t.dataAt (i - s.toBlowupSequenceData.length)).transport
        (eqToIso (appendToBlowupSequenceData_schemeAt_of_length_lt s t h)) := by
  have h1 : s.appendIdeal t i =
      (t.ideal (i - s.toBlowupSequenceData.length)).comap (eqToHom (appendToBlowupSequenceData_schemeAt_of_length_lt s t h)) :=
    appendIdeal_of_length_lt s t h
  have h2 : s.appendBoundary t i =
      (t.boundary (i - s.toBlowupSequenceData.length)).map
        (fun J => J.comap (eqToHom (appendToBlowupSequenceData_schemeAt_of_length_lt s t h))) :=
    appendBoundary_of_length_lt s t h
  have h3 : s.appendProjectionToBase t i ≫ p =
      eqToHom (appendToBlowupSequenceData_schemeAt_of_length_lt s t h) ≫
        (t.proj (i - s.toBlowupSequenceData.length) ≫ (s.proj s.toBlowupSequenceData.length ≫ p)) := by
    rw [appendProjectionToBase_of_length_lt s t h]
    simp only [Category.assoc]
  have h4 : (s.appendToBlowupSequenceData t).center i =
      (t.toBlowupSequenceData.center (i - s.toBlowupSequenceData.length)).comap
        (eqToHom (appendToBlowupSequenceData_schemeAt_of_length_lt s t h)) :=
    appendToBlowupSequenceData_center_of_length_lt s t h
  exact MarkedSchemeWithCenter.mk_congr _ _ _ _ _ _ _ _ _ h1 h2 h3 h4

theorem append_dataAt_last (hinv : ComapIsoInvariance.{u}) (h : 0 < t.toBlowupSequenceData.length) :
    (s.append t hinv).dataAt ((s.append t hinv).toBlowupSequenceData.length) =
      (t.dataAt t.toBlowupSequenceData.length).transport
        (eqToIso (appendToBlowupSequenceData_schemeAt_length_add_length s t h)) := by
  have hgt : s.toBlowupSequenceData.length < s.toBlowupSequenceData.length + t.toBlowupSequenceData.length := by omega
  have key : (s.append t hinv).dataAt (s.toBlowupSequenceData.length + t.toBlowupSequenceData.length) =
      (t.dataAt t.toBlowupSequenceData.length).transport
        (eqToIso (appendToBlowupSequenceData_schemeAt_length_add_length s t h)) := by
    rw [append_dataAt_of_length_lt s t hinv hgt]
    exact transport_dataAt_congr t (by omega) _ _
  exact key

theorem append_dataAt_of_forall (hinv : ComapIsoInvariance.{u}) (P : MarkedSchemeWithCenter.{u} k → Prop)
    (hP : IsInvariantUnderIso P)
    (hs : ∀ i < s.toBlowupSequenceData.length, P (s.dataAt i))
    (ht : ∀ i < t.toBlowupSequenceData.length, P (t.dataAt i))
    (i : ℕ) (hi : i < (s.append t hinv).toBlowupSequenceData.length) :
    P ((s.append t hinv).dataAt i) := by
  have hN : i < s.toBlowupSequenceData.length + t.toBlowupSequenceData.length := hi
  rcases lt_trichotomy i s.toBlowupSequenceData.length with hlt | heq | hgt
  · rw [append_dataAt_of_lt_length s t hinv hlt]
    exact hP (s.dataAt i) _ _ (hs i hlt)
  · subst heq
    rw [append_dataAt_length s t hinv]
    exact hP _ _ _ (hP (t.dataAt 0) _ _ (ht 0 (by omega)))
  · rw [append_dataAt_of_length_lt s t hinv hgt]
    exact hP (t.dataAt (i - s.toBlowupSequenceData.length)) _ _
      (ht (i - s.toBlowupSequenceData.length) (by omega))

end MarkedBlowupSequenceData

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MarkedSchemeWithCenter =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.PrincipalizationCenter =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.PrincipalizationCenter", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReductionProperties\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.InvarianceUnderIsomorphism\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MarkedSchemeWithCenter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace MarkedSchemeWithCenter

variable {k : Type u} [Field k]

def boundarySupport (D : MarkedSchemeWithCenter.{u} k) : Set ↥D.ambient :=
  {x : ↥D.ambient | ∃ J ∈ D.boundary, x ∈ (↑J.support : Set ↥D.ambient)}

theorem mem_boundarySupport_iff (D : MarkedSchemeWithCenter.{u} k) (x : ↥D.ambient) :
    x ∈ D.boundarySupport ↔ ∃ J ∈ D.boundary, x ∈ (↑J.support : Set ↥D.ambient) :=
  Iff.rfl

end MarkedSchemeWithCenter

theorem mem_comap_support_iff_base_mem_support {X Y : Scheme.{u}} (f : X ⟶ Y)
    (J : Y.IdealSheafData) (x : ↥X) :
    x ∈ (J.comap f).support ↔ f.base x ∈ J.support := by
  simp only [Scheme.IdealSheafData.support_comap]
  exact Iff.rfl

namespace MarkedSchemeWithCenter

variable {k : Type u} [Field k]

theorem boundarySupport_transport (D : MarkedSchemeWithCenter.{u} k) {A : Scheme.{u}} (e : A ≅ D.ambient) :
    (D.transport e).boundarySupport = e.hom.base ⁻¹' D.boundarySupport := by
  ext x
  constructor
  · rintro ⟨J, hJ, hx⟩
    obtain ⟨K, hK, rfl⟩ := List.mem_map.1 hJ
    exact ⟨K, hK, (mem_comap_support_iff_base_mem_support e.hom K x).1 hx⟩
  · rintro ⟨K, hK, hx⟩
    exact ⟨K.comap e.hom, List.mem_map.2 ⟨K, hK, rfl⟩,
      (mem_comap_support_iff_base_mem_support e.hom K x).2 hx⟩

end MarkedSchemeWithCenter

namespace MarkedBlowupSequenceData

variable {k : Type u} [Field k] {X : Scheme.{u}} {p : X ⟶ Spec (CommRingCat.of k)}
  {I : X.IdealSheafData} {m : ℕ} {E : List X.IdealSheafData}

theorem boundarySupport_dataAt (s : MarkedBlowupSequenceData p I m E) (i : ℕ) :
    (s.dataAt i).boundarySupport = s.toMarkedSequenceOfBlowups.boundaryLocus i := by
  ext x
  refine Iff.trans (MarkedSchemeWithCenter.mem_boundarySupport_iff (s.dataAt i) x) ?_
  exact (MarkedSequenceOfBlowups.mem_boundaryLocus_iff s.toMarkedSequenceOfBlowups i x).symm

end MarkedBlowupSequenceData

structure HasPrincipalizationCenter {k : Type u} [Field k] (μ : ℕ) (D : MarkedSchemeWithCenter.{u} k) : Prop where
  center_nonempty : (↑D.center.support : Set ↥D.ambient).Nonempty
  cert : PrincipalizationCertificate D.ambient D.structMap D.ideal μ D.boundarySupport D.center

theorem isInvariantUnderIso_hasPrincipalizationCenter {k : Type u} [Field k] (hT : OrderCertificateIsoInvariantOfMaxContact.{u}) (μ : ℕ) :
    IsInvariantUnderIso (fun D : MarkedSchemeWithCenter.{u} k => HasPrincipalizationCenter μ D) := by
  intro D A e hD
  refine ⟨?_, ?_⟩
  · obtain ⟨x, hx⟩ := hD.center_nonempty
    refine ⟨e.inv.base x, ?_⟩
    have key : e.hom.base (e.inv.base x) = x := by
      simp
    have hmem : e.hom.base (e.inv.base x) ∈ D.center.support := by
      rw [key]; exact hx
    exact (mem_comap_support_iff_base_mem_support e.hom D.center (e.inv.base x)).2 hmem
  · have hcert := PrincipalizationCertificate.comap_iso hT e hD.cert
    rw [MarkedSchemeWithCenter.boundarySupport_transport]
    exact hcert

namespace MarkedBlowupSequenceData

variable {k : Type u} [Field k] {X : Scheme.{u}} {p : X ⟶ Spec (CommRingCat.of k)}
  {I : X.IdealSheafData} {m : ℕ} {E : List X.IdealSheafData}

theorem nonempty_center_and_certificate_of_hasPrincipalizationCenter (s : MarkedBlowupSequenceData p I m E) (μ : ℕ)
    (hs : ∀ i < s.toBlowupSequenceData.length, HasPrincipalizationCenter μ (s.dataAt i)) :
    (∀ i < s.toMarkedSequenceOfBlowups.length,
        (↑(s.toMarkedSequenceOfBlowups.center i).support : Set ↥(s.toMarkedSequenceOfBlowups.schemeAt i)).Nonempty) ∧
      (∀ i < s.toMarkedSequenceOfBlowups.length,
        PrincipalizationCertificate (s.toMarkedSequenceOfBlowups.schemeAt i) (s.toMarkedSequenceOfBlowups.projectionToSpec i) (s.toMarkedSequenceOfBlowups.ideal i) μ
          (s.toMarkedSequenceOfBlowups.boundaryLocus i) (s.toMarkedSequenceOfBlowups.center i)) := by
  constructor
  · intro i hi
    have hi' : i < s.toBlowupSequenceData.length := by
      rw [← s.toMarkedSequence_length]; exact hi
    exact (hs i hi').center_nonempty
  · intro i hi
    have hi' : i < s.toBlowupSequenceData.length := by
      rw [← s.toMarkedSequence_length]; exact hi
    have h := (hs i hi').cert
    rw [s.boundarySupport_dataAt i] at h
    rw [toMarkedSequence_projectionToSpec]
    exact h

end MarkedBlowupSequenceData

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.PrincipalizationCenter =====
