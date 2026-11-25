module

public import Development.EtaleCohomology.EtaleSheaves.BuildCut
public import Development.EtaleCohomology.EtaleSheaves.SysFMPf
import Mathlib.AlgebraicGeometry.Morphisms.Immersion
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.SysFMPfAlg, Development.EtaleCohomology.EtaleSheaves.SysFMPfSys

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.SysFMPfAlg =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.SysFMPfAlg", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.BuildCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.AlgebraicGeometry.Morphisms.Immersion\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.E.SysFMPfAlg

open LateralTheory.E.BuildCut

theorem prime_of_filter {W : Type} [CommRing W] (hW : ProdACF W) (F : Set W)
    (h0 : (0 : W) ∉ F) (hu : ∀ e, IsIdempotentElem e → e ∈ F ∨ 1 - e ∈ F) (hm : ∀ e ∈ F, ∀ f ∈ F, e * f ∈ F) :
    ∃ q : PrimeSpectrum W, ∀ e, IsIdempotentElem e → (e ∉ q.asIdeal ↔ e ∈ F) := by
  have h1 : (1 : W) ∈ F := by
    rcases hu 0 IsIdempotentElem.zero with h | h
    · exact absurd h h0
    · simpa using h
  let I : Ideal W :=
    { carrier := {a | ∃ f ∈ F, a * f = 0}
      add_mem' := by
        rintro a b ⟨f, hf, ha⟩ ⟨g, hg, hb⟩
        exact ⟨f * g, hm f hf g hg, by linear_combination g * ha + f * hb⟩
      zero_mem' := ⟨1, h1, by simp⟩
      smul_mem' := by
        rintro c a ⟨f, hf, ha⟩
        exact ⟨f, hf, by simp only [smul_eq_mul]; linear_combination c * ha⟩ }
  have key : ∀ e, IsIdempotentElem e → (e ∈ I ↔ e ∉ F) := by
    intro e he
    constructor
    · rintro ⟨f, hf, hef⟩ heF
      exact h0 (hef ▸ hm e heF f hf)
    · intro heF
      rcases hu e he with h | h
      · exact absurd h heF
      · exact ⟨1 - e, h, by rw [mul_sub, mul_one, he.eq, sub_self]⟩
  have hI : I.IsPrime := by
    refine ⟨?_, ?_⟩
    · rw [Ne, Ideal.eq_top_iff_one]
      rintro ⟨f, hf, h⟩
      rw [one_mul] at h
      exact h0 (h ▸ hf)
    · intro a b hab
      obtain ⟨e, u, he, hu', rfl⟩ := hW.2 a
      obtain ⟨e', u', he', hu'', rfl⟩ := hW.2 b
      by_contra hn
      push Not at hn
      have ha : e ∈ F := by
        by_contra h
        exact hn.1 ⟨1 - e, (hu e he).resolve_left h, by
          rw [mul_assoc, mul_comm u, ← mul_assoc, mul_sub, mul_one, he.eq, sub_self, zero_mul]⟩
      have hb : e' ∈ F := by
        by_contra h
        exact hn.2 ⟨1 - e', (hu e' he').resolve_left h, by
          rw [mul_assoc, mul_comm u', ← mul_assoc, mul_sub, mul_one, he'.eq, sub_self, zero_mul]⟩
      obtain ⟨f, hf, h⟩ := hab
      have hz : e * e' * f = 0 := by
        obtain ⟨v, hv⟩ := hu'.exists_left_inv
        obtain ⟨v', hv'⟩ := hu''.exists_left_inv
        linear_combination (v * v') * h - (e * e' * f) * hv - (e * e' * f * v * u) * hv'
      exact h0 (hz ▸ hm _ (hm e ha e' hb) f hf)
  refine ⟨⟨I, hI⟩, fun e he => ?_⟩
  rw [show (⟨I, hI⟩ : PrimeSpectrum W).asIdeal = I from rfl, key e he, not_not]


open AlgebraicGeometry in
theorem isClosed_basicOpen_idem {X : Scheme.{0}} {s : Γ(X, ⊤)} (hs : IsIdempotentElem s) :
    IsClosed (X.basicOpen s : Set X) := by
  have : (X.basicOpen s : Set X)ᶜ = (X.basicOpen (1 - s) : Set X) := by
    ext x
    simp only [Set.mem_compl_iff, SetLike.mem_coe, Scheme.mem_basicOpen_top, map_sub, map_one]
    have he : IsIdempotentElem (X.presheaf.germ ⊤ x trivial s) := hs.map _
    constructor
    · intro h
      exact (IsLocalRing.isUnit_or_isUnit_one_sub_self _).resolve_left h
    · intro h h'
      have hz : X.presheaf.germ ⊤ x trivial s * (1 - X.presheaf.germ ⊤ x trivial s) = 0 := by
        rw [mul_sub, mul_one, he.eq, sub_self]
      exact not_isUnit_zero (hz ▸ h'.mul h)
  rw [← isOpen_compl_iff, this]
  exact (X.basicOpen (1 - s)).isOpen

open AlgebraicGeometry in
theorem isClosedImmersion_basicOpen_idem {X : Scheme.{0}} {s : Γ(X, ⊤)} (hs : IsIdempotentElem s) :
    IsClosedImmersion (X.basicOpen s).ι :=
  IsClosedImmersion.of_isPreimmersion _ (by rw [Scheme.Opens.range_ι]; exact isClosed_basicOpen_idem hs)

end LateralTheory.E.SysFMPfAlg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.SysFMPfAlg =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.SysFMPfSys =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.SysFMPfSys", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.SysFMPf\npublic import Development.EtaleCohomology.EtaleSheaves.SysFMPfAlg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry LateralTheory.E.BuildCut LateralTheory.E.SysFMPf LateralTheory.E.SysFMPfAlg

namespace LateralTheory.E.SysFMPfSys

def IdemSec : Prop := ∀ {P : Scheme.{0}} [CompactSpace P] [QuasiSeparatedSpace P] (W : Type) [CommRing W]
  (w : Spec (CommRingCat.of W) ⟶ P), Function.Injective (phi w) ∧ ∀ e : W, IsIdempotentElem e → ∃ s, phi w s = e

theorem basicOpen_one_sub {X : Scheme.{0}} {s : Γ(X, ⊤)} (hs : IsIdempotentElem s) (x : X) :
    x ∉ X.basicOpen s ↔ x ∈ X.basicOpen (1 - s) := by
  simp only [Scheme.mem_basicOpen_top, map_sub, map_one]
  have he : IsIdempotentElem (X.presheaf.germ ⊤ x trivial s) := hs.map _
  constructor
  · intro h
    exact (IsLocalRing.isUnit_or_isUnit_one_sub_self _).resolve_left h
  · intro h h'
    have hz : X.presheaf.germ ⊤ x trivial s * (1 - X.presheaf.germ ⊤ x trivial s) = 0 := by
      rw [mul_sub, mul_one, he.eq, sub_self]
    exact not_isUnit_zero (hz ▸ h'.mul h)

theorem Sys_of (hI : IdemSec) : Sys := by
  intro P _ _ W _ w hW y
  obtain ⟨hinj, hrg⟩ := hI W w
  have hid : ∀ s, IsIdempotentElem (phi w s) → IsIdempotentElem s := fun s h =>
    hinj (by rw [map_mul]; exact h.eq)
  let F : Set W := {e | IsIdempotentElem e ∧ ∃ s, phi w s = e ∧ y ∈ w.normalization.basicOpen s}
  have hF0 : (0 : W) ∉ F := by
    rintro ⟨-, s, hs, hy⟩
    have : s = 0 := hinj (by rw [hs, map_zero])
    subst this
    simp at hy
  have hFu : ∀ e, IsIdempotentElem e → e ∈ F ∨ 1 - e ∈ F := by
    intro e he
    obtain ⟨s, rfl⟩ := hrg e he
    by_cases hy : y ∈ w.normalization.basicOpen s
    · exact Or.inl ⟨he, s, rfl, hy⟩
    · exact Or.inr ⟨he.one_sub, 1 - s, by rw [map_sub, map_one], (basicOpen_one_sub (hid s he) y).1 hy⟩
  have hFm : ∀ e ∈ F, ∀ f ∈ F, e * f ∈ F := by
    rintro e ⟨he, s, rfl, hs⟩ f ⟨hf, t, rfl, ht⟩
    exact ⟨he.mul hf, s * t, map_mul _ _ _, by rw [Scheme.basicOpen_mul]; exact ⟨hs, ht⟩⟩
  obtain ⟨q, hq⟩ := prime_of_filter hW F hF0 hFu hFm
  let J : Type := {s : Γ(w.normalization, ⊤) // IsIdempotentElem (phi w s) ∧ phi w s ∉ q.asIdeal}
  letI : Preorder J := Preorder.lift (fun s : J => w.normalization.basicOpen s.1)
  have hmono : Monotone (fun s : J => w.normalization.basicOpen s.1) := fun _ _ h => h
  have hne : Nonempty J := ⟨⟨1, by rw [map_one]; exact IsIdempotentElem.one, by rw [map_one]; exact (Ideal.ne_top_iff_one _).1 q.2.ne_top⟩⟩
  haveI : IsCodirectedOrder J := by
    refine ⟨?_⟩
    rintro ⟨s, hs1, hs2⟩ ⟨t, ht1, ht2⟩
    refine ⟨⟨s * t, by rw [map_mul]; exact hs1.mul ht1, by rw [map_mul]; exact q.2.mul_notMem hs2 ht2⟩, ?_, ?_⟩
    · show w.normalization.basicOpen (s * t) ≤ w.normalization.basicOpen s
      rw [Scheme.basicOpen_mul]; exact inf_le_left
    · show w.normalization.basicOpen (s * t) ≤ w.normalization.basicOpen t
      rw [Scheme.basicOpen_mul]; exact inf_le_right
  haveI : IsCofiltered J := { nonempty := hne }
  let D : J ⥤ Scheme.{0} := hmono.functor ⋙ w.normalization.restrictFunctor ⋙ Over.forget _
  have hDι : ∀ {j k : J} (f : j ⟶ k), D.map f ≫ (w.normalization.basicOpen k.1).ι = (w.normalization.basicOpen j.1).ι :=
    fun f => Over.w (w.normalization.restrictFunctor.map (hmono.functor.map f))
  let ι : ∀ j : J, D.obj j ⟶ w.normalization := fun j => (w.normalization.basicOpen j.1).ι
  have hr : ∀ j : J, Set.range (ι j) = (w.normalization.basicOpen j.1 : Set w.normalization) := fun j =>
    Scheme.Opens.range_ι _
  refine ⟨q, J, inferInstance, inferInstance, D, ι, fun j => ⟨show IsOpenImmersion (w.normalization.basicOpen j.1).ι from
    inferInstance, isClosedImmersion_basicOpen_idem (hid _ j.2.1), ?_⟩, fun {j k} f => ⟨hDι f, ?_⟩, ?_⟩
  · rw [hr]
    obtain ⟨-, s, hs, hy⟩ := (hq _ j.2.1).1 j.2.2
    rwa [hinj hs] at hy
  · have hk : IsClosedImmersion (ι k) := isClosedImmersion_basicOpen_idem (hid _ k.2.1)
    have hc : IsClosedImmersion (D.map f ≫ ι k) := by
      rw [hDι f]; exact isClosedImmersion_basicOpen_idem (hid _ j.2.1)
    have := @IsClosedImmersion.of_comp_isClosedImmersion _ _ _ (D.map f) (ι k) hk hc
    infer_instance
  · ext x
    simp only [Set.mem_iInter, hr, RR, Set.mem_setOf_eq, SetLike.mem_coe]
    exact ⟨fun h s h1 h2 => h ⟨s, h1, h2⟩, fun h j => h j.1 j.2.1 j.2.2⟩

theorem SysFM_of (hI : IdemSec) (hE : FMex) (hR : FMrange) : LateralTheory.E.NbIsoPf.SysFM :=
  LateralTheory.E.SysFMPf.SysFM_of (Sys_of hI) hE hR

end LateralTheory.E.SysFMPfSys
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.SysFMPfSys =====
