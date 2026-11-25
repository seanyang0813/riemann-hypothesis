module

public import Development.AbelianVarietyTheory.Definitions.QuasicoherentCohomology.LengthCommensurableMapIffOfInjective
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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
public import Mathlib.RingTheory.OrderOfVanishing.Noetherian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open Pointwise

namespace GlobalTheory

section General

variable {R : Type*} [CommRing R] {M : Type*} [AddCommGroup M] [Module R M]

theorem nonempty_quotient_smul_top_equiv_pi {ι : Type*} [Finite ι] (b : Module.Basis ι R M)
    (a : R) :
    Nonempty ((M ⧸ (a • ⊤ : Submodule R M)) ≃ₗ[R] (ι → R ⧸ Ideal.span {a})) := by
  let g : M →ₗ[R] (ι → R ⧸ Ideal.span {a}) :=
    LinearMap.pi fun i => (Ideal.span {a} : Ideal R).mkQ ∘ₗ b.coord i
  have hg : ∀ x i, g x i = Ideal.Quotient.mk (Ideal.span {a}) (b.repr x i) := fun _ _ => rfl
  have hs : Function.Surjective g := by
    intro y
    choose c hc using fun i => Ideal.Quotient.mk_surjective (y i)
    refine ⟨b.equivFun.symm c, funext fun i => ?_⟩
    rw [hg, ← hc i, ← b.equivFun_apply, LinearEquiv.apply_symm_apply]
  have hk : (a • ⊤ : Submodule R M) = LinearMap.ker g := by
    ext x
    rw [Submodule.mem_smul_pointwise_iff_exists, LinearMap.mem_ker, funext_iff]
    simp only [hg, Pi.zero_apply, Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton']
    constructor
    · rintro ⟨y, -, rfl⟩ i
      exact ⟨b.repr y i, by simp [mul_comm]⟩
    · intro h
      choose c hc using h
      refine ⟨b.equivFun.symm c, trivial, b.equivFun.injective (funext fun i => ?_)⟩
      rw [map_smul, LinearEquiv.apply_symm_apply, b.equivFun_apply, ← hc i, Pi.smul_apply,
        smul_eq_mul, mul_comm]
  exact ⟨Submodule.quotEquivOfEq _ _ hk ≪≫ₗ g.quotKerEquivOfSurjective hs⟩

theorem length_quotient_smul_top_of_free [Nontrivial R] [Module.Free R M] [Module.Finite R M]
    (a : R) :
    Module.length R (M ⧸ (a • ⊤ : Submodule R M)) =
      Module.length R (R ⧸ Ideal.span {a}) * (Module.finrank R M : ℕ∞) := by
  rw [(nonempty_quotient_smul_top_equiv_pi (Module.finBasis R M) a).some.length_eq,
    Module.length_pi, mul_comm]
  simp

theorem submoduleOf_smul_self (A : Submodule R M) (a : R) :
    (a • A).submoduleOf A = (a • ⊤ : Submodule R A) := by
  ext x
  rw [Submodule.submoduleOf, Submodule.mem_comap, Submodule.mem_smul_pointwise_iff_exists,
    Submodule.mem_smul_pointwise_iff_exists]
  constructor
  · rintro ⟨y, hy, h⟩
    exact ⟨⟨y, hy⟩, trivial, Subtype.ext h⟩
  · rintro ⟨y, -, rfl⟩
    exact ⟨y, y.2, rfl⟩

theorem relLength_smul_self_eq_length (A : Submodule R M) (a : R) :
    relLength A (a • A) = Module.length R (A ⧸ (a • ⊤ : Submodule R A)) := by
  rw [relLength_def, submoduleOf_smul_self]

end General

section DVR

open IsDiscreteValuationRing

variable {R : Type*} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]

theorem length_quotient_span_singleton_dvr (a : R) :
    Module.length R (R ⧸ Ideal.span {a}) = addVal R a :=
  Ring.ord_eq_addVal a

section Free

variable (M : Type*) [AddCommGroup M] [Module R M] [Module.Free R M] [Module.Finite R M]

theorem length_quotient_smul_top_dvr (a : R) :
    Module.length R (M ⧸ (a • ⊤ : Submodule R M)) = addVal R a * (Module.finrank R M : ℕ∞) := by
  rw [length_quotient_smul_top_of_free, length_quotient_span_singleton_dvr]

end Free

variable {V : Type*} [AddCommGroup V] [Module R V] [Module.IsTorsionFree R V]
  {A : Submodule R V}

theorem relLength_smul_self (hA : A.FG) (a : R) :
    relLength A (a • A) = addVal R a * (Module.finrank R A : ℕ∞) := by
  have : Module.Finite R A := Module.Finite.iff_fg.mpr hA
  rw [relLength_smul_self_eq_length, length_quotient_smul_top_dvr]

theorem relLength_smul_self_of_addVal_eq (hA : A.FG) {a : R} {n : ℕ} (hn : addVal R a = n) :
    relLength A (a • A) = ((n * Module.finrank R A : ℕ) : ℕ∞) := by
  rw [relLength_smul_self hA, hn, Nat.cast_mul]

theorem relLength_smul_self_ne_top (hA : A.FG) {a : R} (ha : a ≠ 0) :
    relLength A (a • A) ≠ ⊤ := by
  rw [relLength_smul_self hA]
  exact WithTop.mul_ne_top (addVal_eq_top_iff.not.mpr ha) (ENat.coe_ne_top _)

theorem lengthCommensurable_smul_self (hA : A.FG) {a : R} (ha : a ≠ 0) :
    LengthCommensurable A (a • A) :=
  (lengthCommensurable_iff_of_ge (Submodule.smul_le_self_of_tower a A)).mpr
    (relLength_smul_self_ne_top hA ha)

theorem signedLength_smul_self_of_addVal_eq (hA : A.FG) {a : R} {n : ℕ} (hn : addVal R a = n) :
    signedLength A (a • A) = (n : ℤ) * (Module.finrank R A : ℤ) := by
  have ha : a ≠ 0 := addVal_eq_top_iff.not.mp (hn ▸ ENat.coe_ne_top n)
  rw [← Nat.cast_mul, (lengthCommensurable_smul_self hA ha).signedLength_eq_natCast_iff_of_ge
    (Submodule.smul_le_self_of_tower a A), relLength_smul_self_of_addVal_eq hA hn]

theorem signedLength_smul_self (hA : A.FG) {a : R} (ha : a ≠ 0) :
    signedLength A (a • A) = ((addVal R a).toNat : ℤ) * (Module.finrank R A : ℤ) :=
  signedLength_smul_self_of_addVal_eq hA (ENat.coe_toNat (addVal_eq_top_iff.not.mpr ha)).symm

end DVR

end GlobalTheory
