module

public import Formalism.FlagUnipotentLattices.IdealCountLeW
public import Lemmata.GeneralBFactSecondMore.Imports
public import Mathlib.LinearAlgebra.Dimension.Torsion.Finite
public import Mathlib.RingTheory.DedekindDomain.Different
public import Mathlib.RingTheory.DedekindDomain.Factorization
public import Mathlib.RingTheory.Ideal.Norm.AbsNorm
public import Formalism.LocalToGlobal.Columns.HeckeSp
public import Formalism.LocalToGlobal.Columns.HeckeSpCount
public import Lemmata.GeneralBFactRightMore.Imports
public import Formalism.LocalToGlobal.Divisibility.Tuples
import Formalism.FlagUnipotentLattices.MemOfOrthogonalAnisotropic
import Formalism.HermitianLattices.HermitianLatticesProofs.DualBasic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.ColonCountWeighted, Formalism.FlagUnipotentLattices.IdealCountLeWAsm, Formalism.LocalToGlobal.Columns.WmpNatCardQuotEqPowFinrank

-- ===== clump member: Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.ColonCountWeighted =====
-- clump-header: {"m": "Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.ColonCountWeighted", "h": "module\n\npublic import Formalism.FlagUnipotentLattices.IdealCountLeW\npublic import Lemmata.GeneralBFactSecondMore.Imports\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Dimension.Torsion.Finite\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.DedekindDomain.Different\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Presheaf\nimport Formalism.FlagUnipotentLattices.MemOfOrthogonalAnisotropic\npublic import Mathlib.RingTheory.DedekindDomain.Factorization\npublic import Mathlib.RingTheory.Ideal.Norm.AbsNorm\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.HermitianLatticeCounting.S6
open scoped BigOperators
open NumberField

namespace Formalism.HermitianLatticeCounting.P

namespace DualLatticeIndexBis

end DualLatticeIndexBis

namespace DualLatticeIndexBis

end DualLatticeIndexBis

namespace DualLatticeIndexBis

end DualLatticeIndexBis

namespace DualLatticeIndexBis

end DualLatticeIndexBis

namespace DualLatticeIndexBis

lemma relIndex_ideal_smul {R U : Type*} [CommRing R] [IsDedekindDomain R] [AddCommGroup U] [Module R U]
    (htf : ∀ a : R, a ≠ 0 → ∀ x : U, a • x = 0 → x = 0) (M N : Submodule R U) (hNM : N ≤ M)
    (A J : Ideal R) (hA : A ≠ ⊥) (hJ : J ≠ ⊥) (hAM : A • M ≤ N) :
    (J • N).toAddSubgroup.relIndex (J • M).toAddSubgroup =
      N.toAddSubgroup.relIndex M.toAddSubgroup := by
  by_cases hMN : M ≤ N
  · have : N = M := le_antisymm hNM hMN
    rw [this, AddSubgroup.relIndex_self, AddSubgroup.relIndex_self]
  obtain ⟨a, ha⟩ := IsDedekindDomain.exists_sup_span_eq (I := A * J) (J := J) Ideal.mul_le_right
    (mul_ne_zero hA hJ)
  have haJ : Ideal.span {a} ≤ J := ha ▸ le_sup_right
  have ha0 : a ≠ 0 := by
    rintro rfl
    apply hMN
    have h1 : A * J = 1 * J := by
      rw [one_mul]
      simpa using ha
    have h2 : A = 1 := mul_right_cancel₀ hJ h1
    rw [h2, Ideal.one_eq_top, Submodule.top_smul] at hAM
    exact hAM
  obtain ⟨J', hJ'⟩ := Ideal.dvd_iff_le.mpr haJ
  have hcop : A ⊔ J' = ⊤ := by
    have h1 : J * (A ⊔ J') = J * 1 := by
      rw [Ideal.mul_sup, ← hJ', mul_comm J A, ha, mul_one]
    rw [← Ideal.one_eq_top]
    exact mul_left_cancel₀ hJ h1
  let φ : U →ₗ[R] U := LinearMap.lsmul R U a
  have hφ : Function.Injective φ := by
    intro x y hxy
    have h1 : a • (x - y) = 0 := by
      rw [smul_sub]; exact sub_eq_zero.mpr hxy
    exact sub_eq_zero.mp (htf a ha0 _ h1)
  have hmap : ∀ L : Submodule R U, L.map φ = Ideal.span {a} • L := by
    intro L
    rw [Submodule.ideal_span_singleton_smul]
    ext x
    simp [φ, Submodule.mem_smul_pointwise_iff_exists]
  have h1 : J • M = M.map φ ⊔ J • N := by
    apply le_antisymm
    · conv_lhs => rw [← ha]
      rw [Submodule.sup_smul, hmap M]
      refine sup_le ?_ le_sup_left
      rw [mul_comm, Submodule.mul_smul]
      exact (Submodule.smul_mono le_rfl hAM).trans le_sup_right
    · rw [hmap M]
      exact sup_le (Submodule.smul_mono_left haJ) (Submodule.smul_mono le_rfl hNM)
  have h2 : J • N ⊓ M.map φ = N.map φ := by
    apply le_antisymm
    · rintro x ⟨hx1, y, hy, rfl⟩
      refine ⟨y, ?_, rfl⟩
      have h1 : (1 : R) ∈ A ⊔ J' := by rw [hcop]; trivial
      obtain ⟨s, hs, t, ht, hst⟩ := Submodule.mem_sup.mp h1
      have hsy : s • y ∈ N := hAM (Submodule.smul_mem_smul hs hy)
      have hty : t • y ∈ N := by
        have h3 : t • φ y ∈ J' • (J • N) := Submodule.smul_mem_smul ht hx1
        rw [← Submodule.mul_smul, mul_comm J' J, ← hJ', ← hmap N] at h3
        obtain ⟨n, hn, hn'⟩ := h3
        have h4 : φ n = φ (t • y) := by rw [hn', map_smul]
        rw [← hφ h4]
        exact hn
      have : y = s • y + t • y := by rw [← add_smul, hst, one_smul]
      rw [this]
      exact N.add_mem hsy hty
    · refine le_inf ?_ (Submodule.map_mono hNM)
      rw [hmap N]
      exact Submodule.smul_mono_left haJ
  have h2' : (J • N).toAddSubgroup ⊓ (M.map φ).toAddSubgroup = (N.map φ).toAddSubgroup := by
    rw [← h2]; rfl
  rw [h1, Submodule.sup_toAddSubgroup, AddSubgroup.relIndex_sup_right, ← AddSubgroup.inf_relIndex_right,
    h2', Submodule.map_toAddSubgroup, Submodule.map_toAddSubgroup]
  exact AddSubgroup.relIndex_map_map_of_injective _ _ hφ

open TensorProduct

end DualLatticeIndexBis

namespace DualLatticeIndexBis

lemma exists_rat_basis {V ι : Type*} [Fintype ι] [AddCommGroup V] [Module ℚ V] (L : Submodule ℤ V)
    (c : Module.Basis ι ℤ L) (hL : ∀ x : V, ∃ n : ℤ, n ≠ 0 ∧ n • x ∈ L) :
    ∃ cb : Module.Basis ι ℚ V, (∀ i, cb i = (c i : V)) ∧ L = Submodule.span ℤ (Set.range cb) := by
  have hLv : L = Submodule.span ℤ (Set.range (fun i => (c i : V))) := by
    have : Set.range (fun i => (c i : V)) = L.subtype '' Set.range c := by
      rw [← Set.range_comp]; rfl
    rw [this, ← Submodule.map_span, c.span_eq, Submodule.map_top, Submodule.range_subtype]
  have hli : LinearIndependent ℚ (fun i => (c i : V)) :=
    (LinearIndependent.iff_fractionRing ℤ ℚ).mp
      (c.linearIndependent.map' L.subtype (Submodule.ker_subtype L))
  have hsp : ⊤ ≤ Submodule.span ℚ (Set.range (fun i => (c i : V))) := by
    intro x _
    obtain ⟨n, hn, hnx⟩ := hL x
    rw [hLv] at hnx
    have h1 : n • x ∈ Submodule.span ℚ (Set.range (fun i => (c i : V))) :=
      Submodule.span_subset_span ℤ ℚ _ hnx
    have h2 : x = (n : ℚ)⁻¹ • (n • x) := by
      rw [← Int.cast_smul_eq_zsmul ℚ n x, smul_smul, inv_mul_cancel₀ (by exact_mod_cast hn), one_smul]
    rw [h2]
    exact Submodule.smul_mem _ _ h1
  refine ⟨Module.Basis.mk hli hsp, fun i => by simp, ?_⟩
  rw [Module.Basis.coe_mk]
  exact hLv

lemma int_on_span {V ι : Type*} [AddCommGroup V] [Module ℚ V] (φ : V →ₗ[ℚ] ℚ) (v : ι → V) :
    (∀ y ∈ Submodule.span ℤ (Set.range v), ∃ n : ℤ, φ y = n) ↔ ∀ i, ∃ n : ℤ, φ (v i) = n := by
  constructor
  · intro h i
    exact h _ (Submodule.subset_span ⟨i, rfl⟩)
  · intro h y hy
    induction hy using Submodule.span_induction with
    | mem x hx => obtain ⟨i, rfl⟩ := hx; exact h i
    | zero => exact ⟨0, by simp⟩
    | add x y _ _ hx hy =>
      obtain ⟨n, hn⟩ := hx
      obtain ⟨m, hm⟩ := hy
      exact ⟨n + m, by rw [map_add (f := _), hn, hm]; push_cast; rfl⟩
    | smul a x _ hx =>
      obtain ⟨n, hn⟩ := hx
      exact ⟨a * n, by rw [← Int.cast_smul_eq_zsmul ℚ a x, map_smul, hn]; push_cast; rfl⟩

lemma zdual_relIndex {V : Type*} [AddCommGroup V] [Module ℚ V] [FiniteDimensional ℚ V]
    (t : V →ₗ[ℚ] V →ₗ[ℚ] ℚ) (hnd : ∀ x, (∀ y, t x y = 0) → x = 0)
    (A B : Submodule ℤ V) (hAB : A ≤ B) (hB : B.FG) (hA : ∀ x : V, ∃ n : ℤ, n ≠ 0 ∧ n • x ∈ A)
    (A' B' : AddSubgroup V)
    (hA' : ∀ x, x ∈ A' ↔ ∀ y ∈ A, ∃ n : ℤ, t x y = n)
    (hB' : ∀ x, x ∈ B' ↔ ∀ y ∈ B, ∃ n : ℤ, t x y = n) :
    B'.relIndex A' = A.toAddSubgroup.relIndex B.toAddSubgroup := by
  classical
  have : Module.Finite ℤ B := Module.Finite.iff_fg.mpr hB
  have : Module.IsTorsionFree ℤ V := Module.IsTorsionFree.trans_faithfulSMul ℤ ℚ V
  obtain ⟨ι, _, ⟨b⟩⟩ : ∃ (ι : Type _) (_ : Fintype ι), Nonempty (Module.Basis ι ℤ B) :=
    ⟨_, inferInstance, ⟨Module.Free.chooseBasis ℤ B⟩⟩
  let A₀ : Submodule ℤ B := A.comap B.subtype
  have hrank : Module.finrank ℤ A₀ = Module.finrank ℤ B := by
    have h1 := Submodule.finrank_quotient_add_finrank A₀
    have h2 : Module.finrank ℤ (B ⧸ A₀) = 0 := by
      rw [Module.finrank_eq_zero_iff_isTorsion]
      intro x
      obtain ⟨y, rfl⟩ := A₀.mkQ_surjective x
      obtain ⟨n, hn, hny⟩ := hA (y : V)
      refine ⟨⟨n, mem_nonZeroDivisors_of_ne_zero hn⟩, ?_⟩
      change n • A₀.mkQ y = 0
      rw [← map_smul, Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero]
      exact hny
    omega
  obtain ⟨b', a, ab', hab⟩ := Submodule.exists_smith_normal_form_of_rank_eq b hrank
  obtain ⟨vb, hvb, hBv⟩ := exists_rat_basis B b' (fun x => by
    obtain ⟨n, hn, hnx⟩ := hA x
    exact ⟨n, hn, hAB hnx⟩)
  obtain ⟨va, hva, hAv⟩ := exists_rat_basis A (ab'.map (Submodule.comapSubtypeEquivOfLe hAB)) hA
  have hvab : ∀ i, va i = (a i : ℚ) • vb i := by
    intro i
    rw [hva, hvb, Module.Basis.map_apply, Submodule.comapSubtypeEquivOfLe_apply_coe, hab,
      Int.cast_smul_eq_zsmul]
    rfl
  let S : V →ₗ[ℚ] V := ∑ i, LinearMap.smulRight (t.flip (va i)) (vb i)
  have hS1 : ∀ x, S x = ∑ i, t x (va i) • vb i := by
    intro x; simp [S, LinearMap.sum_apply]
  have hS2 : ∀ x, S x = ∑ i, t x (vb i) • va i := by
    intro x
    rw [hS1]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    rw [hvab, map_smul, smul_smul, smul_eq_mul, mul_comm]
  have hr1 : ∀ x i, vb.repr (S x) i = t x (va i) := by
    intro x i
    rw [hS1, Module.Basis.repr_sum_self]
  have hr2 : ∀ x i, va.repr (S x) i = t x (vb i) := by
    intro x i
    rw [hS2, Module.Basis.repr_sum_self]
  have hinj : Function.Injective S := by
    rw [injective_iff_map_eq_zero]
    intro x hx
    apply hnd
    have h0 : t x = 0 := by
      apply va.ext
      intro i
      rw [← hr1, hx]; simp
    intro y
    rw [h0]; rfl
  have hsurj : Function.Surjective S := LinearMap.injective_iff_surjective.mp hinj
  have hmem : ∀ (cb : Module.Basis ι ℚ V) (y : V), y ∈ Submodule.span ℤ (Set.range cb) ↔
      ∀ i, ∃ n : ℤ, cb.repr y i = n := by
    intro cb y
    rw [Module.Basis.mem_span_iff_repr_mem]
    refine forall_congr' (fun i => ?_)
    constructor
    · rintro ⟨n, hn⟩; exact ⟨n, hn.symm⟩
    · rintro ⟨n, hn⟩; exact ⟨n, hn.symm⟩
  have eA : A' = B.toAddSubgroup.comap S.toAddMonoidHom := by
    ext x
    rw [hA', hAv, int_on_span (t x) va, AddSubgroup.mem_comap]
    change _ ↔ S x ∈ B
    rw [hBv, hmem]
    simp only [hr1]
  have eB : B' = A.toAddSubgroup.comap S.toAddMonoidHom := by
    ext x
    rw [hB', hBv, int_on_span (t x) vb, AddSubgroup.mem_comap]
    change _ ↔ S x ∈ A
    rw [hAv, hmem]
    simp only [hr2]
  rw [eA, eB, AddSubgroup.relIndex_comap, AddSubgroup.map_comap_eq_self_of_surjective hsurj]

end DualLatticeIndexBis

namespace DualLatticeIndexBis


open scoped Pointwise in
lemma exists_codiff (E : Type) [Field E] [NumberField E] [StarRing E] :
    ∃ (δ : 𝓞 E) (K : Ideal (𝓞 E)), δ ≠ 0 ∧ K ≠ ⊥ ∧ ∀ z : E,
      (∃ o : 𝓞 E, (o : E) = (δ : E) * z) ↔
        ∀ a ∈ K, ∃ n : ℤ, Algebra.trace ℚ E (star (a : E) * z) = n := by
  let σ : 𝓞 E →+* 𝓞 E := RingOfIntegers.mapRingHom (starRingEnd E)
  have hσ : ∀ a : 𝓞 E, ((σ a : 𝓞 E) : E) = star (a : E) := fun a => rfl
  have hσσ : ∀ a : 𝓞 E, σ (σ a) = a := by
    intro a
    apply RingOfIntegers.ext
    rw [hσ, hσ, star_star]
  let Dd : FractionalIdeal (nonZeroDivisors (𝓞 E)) E :=
    FractionalIdeal.dual ℤ ℚ (1 : FractionalIdeal (nonZeroDivisors (𝓞 E)) E)
  have hDd0 : Dd ≠ 0 := FractionalIdeal.dual_ne_zero ℤ ℚ one_ne_zero
  let δ : 𝓞 E := (Dd.den : 𝓞 E)
  have hδ : δ ≠ 0 := nonZeroDivisors.ne_zero Dd.den.2
  have hδE : (δ : E) ≠ 0 := by
    intro h0
    exact hδ (RingOfIntegers.ext (by simpa using h0))
  have F1 : ∀ a₀ ∈ Dd.num, ∃ w ∈ Dd, (a₀ : E) = (δ : E) * w := by
    intro a₀ ha₀
    have h1 : (a₀ : E) ∈ Submodule.map (Algebra.linearMap (𝓞 E) E) Dd.num := ⟨a₀, ha₀, rfl⟩
    rw [← FractionalIdeal.den_mul_self_eq_num] at h1
    obtain ⟨w, hw, hw'⟩ := h1
    refine ⟨w, hw, ?_⟩
    rw [← hw']
    exact Algebra.smul_def δ w
  have F2 : ∀ w ∈ Dd, ∃ a₀ ∈ Dd.num, (a₀ : E) = (δ : E) * w := by
    intro w hw
    have h1 : δ • w ∈ Submodule.map (Algebra.linearMap (𝓞 E) E) Dd.num := by
      rw [← FractionalIdeal.den_mul_self_eq_num]
      exact ⟨w, hw, rfl⟩
    obtain ⟨a₀, ha₀, ha₀'⟩ := h1
    exact ⟨a₀, ha₀, ha₀'.trans (Algebra.smul_def δ w)⟩
  have hone : (1 : E) ∈ Dd := FractionalIdeal.one_le_dual_one ℤ ℚ (FractionalIdeal.one_mem_one _)
  refine ⟨δ, Ideal.comap σ Dd.num, hδ, ?_, ?_⟩
  · intro hbot
    obtain ⟨a₀, ha₀, ha₀'⟩ := F2 1 hone
    have h1 : σ a₀ ∈ Ideal.comap σ Dd.num := by
      rw [Ideal.mem_comap, hσσ]; exact ha₀
    rw [hbot, Ideal.mem_bot] at h1
    have h2 : a₀ = 0 := by rw [← hσσ a₀, h1, map_zero]
    rw [h2, mul_one] at ha₀'
    exact hδE (by simpa using ha₀'.symm)
  · intro z
    constructor
    · rintro ⟨o, ho⟩ a ha
      obtain ⟨w, hw, hw'⟩ := F1 (σ a) ha
      have h1 := (FractionalIdeal.mem_dual (A := ℤ) (K := ℚ)
        (one_ne_zero : (1 : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) ≠ 0)).mp hw (o : E)
        ((FractionalIdeal.mem_one_iff _).mpr ⟨o, rfl⟩)
      obtain ⟨n, hn⟩ := h1
      refine ⟨n, ?_⟩
      rw [← hσ, hw', mul_comm (δ : E) w, mul_assoc, ← ho]
      rw [Algebra.traceForm_apply] at hn
      exact hn.symm
    · intro H
      have h1 : (δ : E) * z ∈ FractionalIdeal.dual ℤ ℚ Dd := by
        rw [FractionalIdeal.mem_dual hDd0]
        intro w hw
        obtain ⟨a₀, ha₀, ha₀'⟩ := F2 w hw
        obtain ⟨n, hn⟩ := H (σ a₀) (by rw [Ideal.mem_comap, hσσ]; exact ha₀)
        refine ⟨n, ?_⟩
        rw [Algebra.traceForm_apply]
        rw [← hσ, hσσ, ha₀'] at hn
        rw [show (δ : E) * z * w = (δ : E) * w * z by ring, hn]
        rfl
      rw [FractionalIdeal.dual_dual, FractionalIdeal.mem_one_iff] at h1
      exact h1

lemma exists_int_smul_mem {E U : Type} [Field E] [NumberField E] [AddCommGroup U]
    [Module (𝓞 E) U] (L : Submodule (𝓞 E) U) (x : U) (d : 𝓞 E) (hd : d ≠ 0) (hx : d • x ∈ L) :
    ∃ n : ℤ, n ≠ 0 ∧ n • x ∈ L := by
  have h1 := Ideal.absNorm_mem (Ideal.span {d})
  obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.mp h1
  refine ⟨(Ideal.absNorm (Ideal.span {d}) : ℕ), ?_, ?_⟩
  · have : Ideal.absNorm (Ideal.span {d}) ≠ 0 := by
      rw [Ne, Ideal.absNorm_eq_zero_iff, Ideal.span_singleton_eq_bot]
      exact hd
    exact_mod_cast this
  · rw [natCast_zsmul, ← Nat.cast_smul_eq_nsmul (𝓞 E), ← hc, mul_smul]
    exact L.smul_mem c hx

lemma exists_smul_le {E U : Type} [Field E] [NumberField E] [AddCommGroup U] [Module E U]
    [Module (𝓞 E) U] [IsScalarTower (𝓞 E) E U] (N M : Submodule (𝓞 E) U)
    (hN : Submodule.span E (N : Set U) = ⊤) (hM : M.FG) :
    ∃ d : 𝓞 E, d ≠ 0 ∧ ∀ x ∈ M, d • x ∈ N := by
  induction M, hM using Submodule.fg_induction with
  | singleton x =>
    obtain ⟨d, hd, hdx⟩ := _root_.Bl.general_b_fact_second'.goal1 N hN x
    refine ⟨d, hd, fun y hy => ?_⟩
    obtain ⟨r, rfl⟩ := Submodule.mem_span_singleton.mp hy
    rw [smul_comm]
    exact N.smul_mem r hdx
  | sup M₁ M₂ _ _ h₁ h₂ =>
    obtain ⟨d, hd, hdx⟩ := h₁
    obtain ⟨e, he, hey⟩ := h₂
    refine ⟨d * e, mul_ne_zero hd he, fun z hz => ?_⟩
    obtain ⟨x, hx, y, hy, rfl⟩ := Submodule.mem_sup.mp hz
    rw [smul_add]
    refine N.add_mem ?_ ?_
    · rw [mul_comm, mul_smul]; exact N.smul_mem e (hdx x hx)
    · rw [mul_smul]; exact N.smul_mem d (hey y hy)

end DualLatticeIndexBis

namespace DualLatticeIndexBis

section Dual

variable {E U : Type} [Field E] [NumberField E] [StarRing E] [AddCommGroup U] [Module E U]
  [Module (𝓞 E) U] [IsScalarTower (𝓞 E) E U] [Module ℚ U] [IsScalarTower ℚ E U]

noncomputable def trForm (h : U →ₗ[E] U →ₗ⋆[E] E) : U →ₗ[ℚ] U →ₗ[ℚ] ℚ :=
  LinearMap.mk₂ ℚ (fun x y => Algebra.trace ℚ E (h x y))
    (fun x x' y => by simp only [map_add (f := _), LinearMap.add_apply])
    (fun q x y => by
      rw [← algebraMap_smul E q x, map_smul, LinearMap.smul_apply, smul_eq_mul, ← Algebra.smul_def, map_smul])
    (fun x y y' => by simp only [map_add (f := _)])
    (fun q x y => by
      rw [← algebraMap_smul E q y, LinearMap.map_smulₛₗ, RingHom.map_rat_algebraMap, smul_eq_mul,
        ← Algebra.smul_def, map_smul])

lemma trForm_apply (h : U →ₗ[E] U →ₗ⋆[E] E) (x y : U) :
    trForm h x y = Algebra.trace ℚ E (h x y) := rfl

lemma trForm_nondeg (h : U →ₗ[E] U →ₗ⋆[E] E) (hnd : ∀ x : U, (∀ y : U, h x y = 0) → x = 0) :
    ∀ x, (∀ y, trForm h x y = 0) → x = 0 := by
  intro x hx
  apply hnd
  intro y
  apply (traceForm_nondegenerate ℚ E).1
  intro e
  rw [Algebra.traceForm_apply]
  have h1 := hx (star e • y)
  rw [trForm_apply, LinearMap.map_smulₛₗ, starRingEnd_apply, star_star, smul_eq_mul, mul_comm] at h1
  exact h1

lemma dual_key (h : U →ₗ[E] U →ₗ⋆[E] E) (δ : 𝓞 E) (K : Ideal (𝓞 E))
    (hcod : ∀ z : E, (∃ o : 𝓞 E, (o : E) = (δ : E) * z) ↔
        ∀ a ∈ K, ∃ n : ℤ, Algebra.trace ℚ E (star (a : E) * z) = n)
    (L : Submodule (𝓞 E) U) (x : U) :
    ((δ : E) • x ∈ hdual h (algebraMap (𝓞 E) E).range L.toAddSubgroup) ↔
        ∀ y ∈ K • L, ∃ n : ℤ, trForm h x y = n := by
  have hsm : ∀ (a : 𝓞 E) (x : U), a • x = (a : E) • x := fun a x => (algebraMap_smul E a x).symm
  constructor
  · intro H y hy
    refine Submodule.smul_induction_on hy ?_ ?_
    · intro a ha y hy
      obtain ⟨o, ho⟩ := H y hy
      have h1 : (o : E) = (δ : E) * h x y := by
        rw [map_smul, LinearMap.smul_apply, smul_eq_mul] at ho
        exact ho
      obtain ⟨n, hn⟩ := (hcod (h x y)).mp ⟨o, h1⟩ a ha
      refine ⟨n, ?_⟩
      rw [trForm_apply, hsm, LinearMap.map_smulₛₗ, starRingEnd_apply, smul_eq_mul]
      exact hn
    · rintro y y' ⟨n, hn⟩ ⟨m, hm⟩
      exact ⟨n + m, by rw [map_add (f := _), hn, hm]; push_cast; rfl⟩
  · intro H y hy
    have h1 : ∃ o : 𝓞 E, (o : E) = (δ : E) * h x y := by
      rw [hcod]
      intro a ha
      obtain ⟨n, hn⟩ := H (a • y) (Submodule.smul_mem_smul ha hy)
      refine ⟨n, ?_⟩
      rw [trForm_apply, hsm, LinearMap.map_smulₛₗ, starRingEnd_apply, smul_eq_mul] at hn
      exact hn
    obtain ⟨o, ho⟩ := h1
    refine ⟨o, ?_⟩
    rw [map_smul, LinearMap.smul_apply, smul_eq_mul]
    exact ho

lemma fg_int (L : Submodule (𝓞 E) U) (hL : L.FG) : (L.restrictScalars ℤ).FG := by
  have h1 : Module.Finite (𝓞 E) ↥L := Module.Finite.iff_fg.mpr hL
  have h2 : Module.Finite ℤ ↥L := Module.Finite.trans (𝓞 E) _
  exact Module.Finite.iff_fg.mp h2

lemma relIndex_hermitian_dual_eq [FiniteDimensional ℚ U] (h : U →ₗ[E] U →ₗ⋆[E] E) (M N : Submodule (𝓞 E) U)
    (hnd : ∀ x : U, (∀ y : U, h x y = 0) → x = 0) (hNM : N ≤ M) (hM : M.FG)
    (hN : Submodule.span E (N : Set U) = ⊤) :
    (hdual h (algebraMap (𝓞 E) E).range M.toAddSubgroup).relIndex
          (hdual h (algebraMap (𝓞 E) E).range N.toAddSubgroup) =
        N.toAddSubgroup.relIndex M.toAddSubgroup := by
  obtain ⟨δ, K, hδ, hK, hcod⟩ := exists_codiff E
  have hδE : (δ : E) ≠ 0 := by
    intro h0
    exact hδ (RingOfIntegers.ext (by simpa using h0))
  have hsm : ∀ (a : 𝓞 E) (x : U), a • x = (a : E) • x := fun a x => (algebraMap_smul E a x).symm
  have htf : ∀ a : 𝓞 E, a ≠ 0 → ∀ x : U, a • x = 0 → x = 0 := by
    intro a ha x hx
    rw [hsm] at hx
    rcases smul_eq_zero.mp hx with h0 | h0
    · exact absurd (RingOfIntegers.ext (by simpa using h0)) ha
    · exact h0
  obtain ⟨d, hd, hdM⟩ := exists_smul_le N M hN hM
  obtain ⟨k, hkK, hk0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hK
  let mδ : U →+ U := (LinearMap.lsmul E U (δ : E)).toAddMonoidHom
  have hmδ : Function.Surjective mδ := by
    intro x
    refine ⟨(δ : E)⁻¹ • x, ?_⟩
    change (δ : E) • ((δ : E)⁻¹ • x) = x
    rw [smul_smul, mul_inv_cancel₀ hδE, one_smul]
  have hfgZ : ((K • M).restrictScalars ℤ).FG :=
    fg_int _ (Submodule.FG.of_le hM Submodule.smul_le_right)
  have hle : (K • N).restrictScalars ℤ ≤ (K • M).restrictScalars ℤ := by
    intro x hx
    exact Submodule.smul_mono (le_refl K) hNM hx
  have hfull : ∀ x : U, ∃ n : ℤ, n ≠ 0 ∧ n • x ∈ (K • N).restrictScalars ℤ := by
    intro x
    obtain ⟨e, he, hex⟩ := _root_.Bl.general_b_fact_second'.goal1 N hN x
    refine exists_int_smul_mem (K • N) x (k * e) (mul_ne_zero hk0 he) ?_
    rw [mul_smul]
    exact Submodule.smul_mem_smul hkK hex
  have hZ := zdual_relIndex (trForm h) (trForm_nondeg h hnd) ((K • N).restrictScalars ℤ)
    ((K • M).restrictScalars ℤ) hle hfgZ hfull
    ((hdual h (algebraMap (𝓞 E) E).range N.toAddSubgroup).comap mδ)
    ((hdual h (algebraMap (𝓞 E) E).range M.toAddSubgroup).comap mδ)
    (fun x => dual_key h δ K hcod N x) (fun x => dual_key h δ K hcod M x)
  rw [AddSubgroup.relIndex_comap, AddSubgroup.map_comap_eq_self_of_surjective hmδ] at hZ
  rw [hZ]
  refine relIndex_ideal_smul htf M N hNM (Ideal.span {d}) K ?_ hK ?_
  · rw [Ne, Ideal.span_singleton_eq_bot]; exact hd
  · rw [Submodule.smul_le]
    intro r hr x hx
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp hr
    rw [mul_smul]
    exact N.smul_mem c (hdM x hx)

end Dual

end DualLatticeIndexBis

theorem dual_lattice_index : DualIndex := by
  intro E _ _ _ U _ _ _ _ _ h M N hnd hNM hM hN
  let _ : Module ℚ U := Module.compHom U (algebraMap ℚ E)
  have hq : ∀ (q : ℚ) (x : U), q • x = (algebraMap ℚ E q) • x := fun _ _ => rfl
  have : IsScalarTower ℚ E U := ⟨fun q e x => by rw [hq, Algebra.smul_def, mul_smul]⟩
  have : FiniteDimensional ℚ U := Module.Finite.trans E U
  exact DualLatticeIndexBis.relIndex_hermitian_dual_eq h M N hnd hNM hM hN

end Formalism.HermitianLatticeCounting.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.ColonCountWeighted =====

-- ===== clump member: Formalism.FlagUnipotentLattices.IdealCountLeWAsm =====
-- clump-header: {"m": "Formalism.FlagUnipotentLattices.IdealCountLeWAsm", "h": "module\n\npublic import Formalism.FlagUnipotentLattices.IdealCountLeW\npublic import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.ColonCountWeighted\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.HermitianLatticeCounting.Final.S6

end Formalism.HermitianLatticeCounting.Final.S6
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.FlagUnipotentLattices.IdealCountLeWAsm =====

-- ===== clump member: Formalism.LocalToGlobal.Columns.WmpNatCardQuotEqPowFinrank =====
-- clump-header: {"m": "Formalism.LocalToGlobal.Columns.WmpNatCardQuotEqPowFinrank", "h": "module\n\npublic import Formalism.FlagUnipotentLattices.IdealCountLeW\npublic import Formalism.LocalToGlobal.Columns.HeckeSp\npublic import Formalism.FlagUnipotentLattices.IdealCountLeWAsm\nimport Formalism.HermitianLattices.HermitianLatticesProofs.DualBasic\npublic import Formalism.LocalToGlobal.Columns.HeckeSpCount\npublic import Lemmata.GeneralBFactRightMore.Imports\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.Divisibility.Tuples\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Col

open NumberField IsDedekindDomain Formalism.HermitianLatticesTheory Module

section WmPSym
variable {E : Type} [Field E] [NumberField E] [StarRing E] {n : ℕ}

theorem conjugatePrime_conjugatePrime (P : HeightOneSpectrum (𝓞 E)) : conjPrime₂ (conjPrime₂ P) = P := by
  apply HeightOneSpectrum.ext
  ext r
  rw [mem_conjP, mem_conjP, cO_cO]

theorem wmp_dual_toAddSubgroup (L : Submodule (𝓞 E) (Sp E n)) :
    (dual (hStd E n) L).toAddSubgroup =
      Formalism.HermitianLatticeCounting.S6.hdual (hStd E n).flip (algebraMap (𝓞 E) E).range L.toAddSubgroup := by
  ext x
  rw [Submodule.mem_toAddSubgroup, dualBasic_mem_dual]
  change _ ↔ ∀ y ∈ L, (hStd E n).flip x y ∈ (algebraMap (𝓞 E) E).range
  simp only [LinearMap.flip_apply, Submodule.mem_one, RingHom.mem_range]

theorem wmp_hStd_nondeg (x : Sp E n) (h : ∀ y, (hStd E n).flip x y = 0) : x = 0 := by
  funext i
  have := h (Pi.single i 1)
  rw [LinearMap.flip_apply, hStd_apply] at this
  simp only [Pi.single_apply, apply_ite (star : E → E), star_one, star_zero, ite_mul, one_mul, zero_mul,
    Finset.sum_ite_eq', Finset.mem_univ, if_true] at this
  exact this

theorem wmp_relIndex_dual {L M : Submodule (𝓞 E) (Sp E n)} (hLM : L ≤ M) (hM : M.FG)
    (hL : Submodule.span E (L : Set (Sp E n)) = ⊤) :
    (dual (hStd E n) M).toAddSubgroup.relIndex (dual (hStd E n) L).toAddSubgroup =
      L.toAddSubgroup.relIndex M.toAddSubgroup := by
  rw [wmp_dual_toAddSubgroup, wmp_dual_toAddSubgroup]
  exact _root_.Formalism.HermitianLatticeCounting.P.dual_lattice_index E (Sp E n) (hStd E n).flip M L wmp_hStd_nondeg hLM hM hL

theorem wmp_card_quot (B N : Submodule (𝓞 E) (Sp E n)) :
    Nat.card (N ⧸ B.comap N.subtype) = B.toAddSubgroup.relIndex N.toAddSubgroup := by
  rw [AddSubgroup.relIndex, AddSubgroup.index_eq_card]
  rfl

private theorem isFullLattice_of_unimodular {L : Submodule (𝓞 E) (Sp E n)}
    (hL : Submodule.IsLattice E L) (hu : IsUnimodular (hStd E n) L) :
    Submodule.IsFullLattice E L := by
  let := hL
  refine { span_eq_top := ?_ }
  let W := Submodule.span E (L : Set (Sp E n))
  change W = ⊤
  by_contra h
  let e : Sp E n ≃ₗ⋆[E] Sp E n := starLinearEquiv E
  let g : Sp E n →ₗ[E] Module.Dual E W :=
    (LinearMap.domRestrict' W).comp ((hStd E n).comp e.toLinearMap)
  have hdim : finrank E (Module.Dual E W) < finrank E (Sp E n) := by
    rw [Subspace.dual_finrank_eq]
    exact Submodule.finrank_lt h
  obtain ⟨x, hx, hx₀⟩ :=
    Submodule.exists_mem_ne_zero_of_ne_bot (LinearMap.ker_ne_bot_of_finrank_lt (f := g) hdim)
  -- Every multiple of the orthogonal vector lies in the self-dual lattice.
  have hsmul (a : E) : a • e x ∈ L := by
    rw [← hu, dualBasic_mem_dual]
    intro y hy
    apply hStd_mem_one_symm
    have hxy : hStd E n (e x) y = 0 :=
      congrArg (fun f : Module.Dual E W => f ⟨y, Submodule.subset_span hy⟩) (LinearMap.mem_ker.mp hx)
    simp [LinearMap.map_smulₛₗ, LinearMap.smul_apply, hxy]
  let i : E →ₗ[𝓞 E] L :=
    ((LinearMap.toSpanSingleton E _ (e x)).restrictScalars (𝓞 E)).codRestrict L hsmul
  let : Module.Finite (𝓞 E) L := Module.Finite.iff_fg.mpr hL.fg
  let : Module.Finite (𝓞 E) E := Module.Finite.of_injective i fun a b hab =>
    smul_left_injective E (fun hzero => hx₀ (e.map_eq_zero_iff.mp hzero)) (congrArg Subtype.val hab)
  exact RingOfIntegers.not_isField E
    (isField_of_isIntegral_of_isField (IsFractionRing.injective (𝓞 E) E) (Field.toIsField E))

theorem wmp_relIndex_inf_eq {N N₁ : Submodule (𝓞 E) (Sp E n)} (hN : Submodule.IsLattice E N)
    (hN₁ : Submodule.IsLattice E N₁) (hu : IsUnimodular (hStd E n) N) (hu₁ : IsUnimodular (hStd E n) N₁)
    (hB : Submodule.IsLattice E (N ⊓ N₁)) :
    (N ⊓ N₁).toAddSubgroup.relIndex N.toAddSubgroup = (N ⊓ N₁).toAddSubgroup.relIndex N₁.toAddSubgroup := by
  let := isFullLattice_of_unimodular hN hu
  let := isFullLattice_of_unimodular hN₁ hu₁
  let := hB
  have hBspan := Submodule.IsFullLattice.span_eq_top (A := E) (M := N ⊓ N₁)
  have key : ∀ M : Submodule (𝓞 E) (Sp E n), Submodule.IsLattice E M → IsUnimodular (hStd E n) M → N ⊓ N₁ ≤ M →
      (N ⊓ N₁).toAddSubgroup.relIndex (dual (hStd E n) (N ⊓ N₁)).toAddSubgroup =
        ((N ⊓ N₁).toAddSubgroup.relIndex M.toAddSubgroup) ^ 2 := by
    intro M hM huM hBM
    have hMD : M ≤ dual (hStd E n) (N ⊓ N₁) := by
      have := dual_anti hBM
      rwa [huM] at this
    rw [← AddSubgroup.relIndex_mul_relIndex _ M.toAddSubgroup _ hBM hMD, sq]
    congr 1
    have e := wmp_relIndex_dual hBM hM.fg hBspan
    rw [huM] at e
    exact e
  have e1 := key N hN hu inf_le_left
  have e2 := key N₁ hN₁ hu₁ inf_le_right
  rw [e1] at e2
  exact Nat.pow_left_injective (by norm_num : (2 : ℕ) ≠ 0) e2

theorem wmp_quot_equiv_of_card (Q : HeightOneSpectrum (𝓞 E)) (M : Type) [AddCommGroup M] [Module (𝓞 E) M]
    (hM : ∀ p ∈ Q.asIdeal, ∀ x : M, p • x = 0) {i : ℕ}
    (hc : Nat.card M = Nat.card (𝓞 E ⧸ Q.asIdeal) ^ i) :
    Nonempty (M ≃ₗ[𝓞 E] (Fin i → 𝓞 E ⧸ Q.asIdeal)) := by
  have := Q.isMaximal
  let _ : Field (𝓞 E ⧸ Q.asIdeal) := Ideal.Quotient.field Q.asIdeal
  have hfinQ : Finite (𝓞 E ⧸ Q.asIdeal) := Ideal.finiteQuotientOfFreeOfNeBot _ Q.ne_bot
  have hq : 1 < Nat.card (𝓞 E ⧸ Q.asIdeal) := Finite.one_lt_card
  have hfin : Finite M := Nat.finite_of_card_ne_zero (by rw [hc]; positivity)
  have ht : Module.IsTorsionBySet (𝓞 E) M (Q.asIdeal : Set (𝓞 E)) := fun x p => hM p.1 p.2 x
  let _ : Module (𝓞 E ⧸ Q.asIdeal) M := ht.module
  have : IsScalarTower (𝓞 E) (𝓞 E ⧸ Q.asIdeal) M := ht.isScalarTower
  have : FiniteDimensional (𝓞 E ⧸ Q.asIdeal) M := Module.Finite.of_finite
  let _ : Fintype M := Fintype.ofFinite M
  let _ : Fintype (𝓞 E ⧸ Q.asIdeal) := Fintype.ofFinite _
  have h1 := Module.card_eq_pow_finrank (K := 𝓞 E ⧸ Q.asIdeal) (V := M)
  rw [← Nat.card_eq_fintype_card, ← Nat.card_eq_fintype_card, hc] at h1
  have hd : finrank (𝓞 E ⧸ Q.asIdeal) M = i := (Nat.pow_right_injective hq h1).symm
  exact ⟨(LinearEquiv.ofFinrankEq M (Fin i → 𝓞 E ⧸ Q.asIdeal) (by rw [hd, finrank_fin_fun])).restrictScalars (𝓞 E)⟩

theorem wmp_isHeckeNbr_symm {P : HeightOneSpectrum (𝓞 E)} {i : ℕ} {N N₁ : Submodule (𝓞 E) (Sp E n)}
    (hN : Submodule.IsLattice E N) (hN₁ : Submodule.IsLattice E N₁) (hu : IsUnimodular (hStd E n) N)
    (hu₁ : IsUnimodular (hStd E n) N₁) (h : IsHeckeNbr P.asIdeal i N N₁) :
    IsHeckeNbr (conjPrime₂ P).asIdeal i N₁ N := by
  rw [isHeckeNbr_iff] at h ⊢
  obtain ⟨h1, h2, ⟨e⟩⟩ := h
  rw [conjugatePrime_conjugatePrime]
  refine ⟨h2, h1, ?_⟩
  obtain ⟨p, hp, hp0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot (conjPrime₂ P).ne_bot
  have hB : Submodule.IsLattice E (N ⊓ N₁) :=
    lattice_of_smul hN hN inf_le_left hp0 fun x hx => ⟨Submodule.smul_mem _ _ hx, h2 (Submodule.smul_mem_smul hp hx)⟩
  apply wmp_quot_equiv_of_card P
  · intro a ha x
    induction x using Submodule.Quotient.induction_on with
    | _ y =>
      rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero]
      exact ⟨h1 (Submodule.smul_mem_smul ha y.2), Submodule.smul_mem _ _ y.2⟩
  · rw [wmp_card_quot, ← wmp_relIndex_inf_eq hN hN₁ hu hu₁ hB, ← wmp_card_quot, inf_comm,
      Nat.card_congr e.toEquiv, Nat.card_fun, Nat.card_eq_fintype_card (α := Fin i), Fintype.card_fin, card_quot_conjP]

end WmPSym

open NumberField IsDedekindDomain Formalism.HermitianLatticesTheory Module Pointwise


section WmPK
variable {E : Type} [Field E] [NumberField E] [StarRing E]

def wmpToK (P : HeightOneSpectrum (𝓞 E)) {V : Type} [AddCommGroup V] [Module (𝓞 E) V] [Module (𝓞 E ⧸ P.asIdeal) V]
    [IsScalarTower (𝓞 E) (𝓞 E ⧸ P.asIdeal) V] (p : Submodule (𝓞 E) V) : Submodule (𝓞 E ⧸ P.asIdeal) V where
  carrier := p
  add_mem' := p.add_mem
  zero_mem' := p.zero_mem
  smul_mem' := fun c x hx => by
    obtain ⟨r, rfl⟩ := Ideal.Quotient.mk_surjective c
    rw [← Ideal.Quotient.algebraMap_eq, algebraMap_smul]
    exact p.smul_mem r hx

variable {P : HeightOneSpectrum (𝓞 E)} {V : Type} [AddCommGroup V] [Module (𝓞 E) V] [Module (𝓞 E ⧸ P.asIdeal) V]
    [IsScalarTower (𝓞 E) (𝓞 E ⧸ P.asIdeal) V]

theorem card_wmpToK (p : Submodule (𝓞 E) V) : Nat.card (wmpToK P p) = Nat.card p :=
  Nat.card_congr (Equiv.subtypeEquivRight fun _ => Iff.rfl)

end WmPK




end Formalism.L2.Col
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.Columns.WmpNatCardQuotEqPowFinrank =====
