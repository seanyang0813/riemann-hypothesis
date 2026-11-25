module

public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.MassLandA
public import Mathlib.RingTheory.ClassGroup.Basic
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsNeZeroOfIsLattice
public import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLemVR
public import Formalism.FlagUnipotentLattices.LatticeDeterminantIndexSq
public import Mathlib.NumberTheory.NumberField.Units.Basic
public import Mathlib.NumberTheory.NumberField.Units.DirichletTheorem
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.FiniteDimensionalOfOrtho
public import Mathlib.NumberTheory.NumberField.ClassNumber
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.DifferentIdealEqTop
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsMassConstOne
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.IsClassRepsMap
import Mathlib.Order.CompletePartialOrder
import Formalism.FlagUnipotentLattices.DetIndexProductHyperbolicInequality
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.ComplexMultiplicationRoot
import Formalism.HermitianLattices.HermitianLatticesProofs.MassBasic
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLemVC, Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.IntegerGroupLocalParametrization, Formalism.FlagUnipotentLattices.ArithmeticIdentityEntries, Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLemVN

-- ===== clump member: Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLemVC =====
-- clump-header: {"m": "Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLemVC", "h": "module\n\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.MassLandA\npublic import Mathlib.RingTheory.ClassGroup.Basic\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsNeZeroOfIsLattice\nimport Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.IsClassRepsMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLemVR\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.BridgeLemVC

open NumberField Formalism.HermitianLatticesTheory Formalism.ThetaLiftIndependence Formalism.HermitianLattices.Ext.L3 Formalism.HermitianLattices.Ext.L3.RankOne Formalism.MainNotions.BridgeLemVR nonZeroDivisors

variable {K : Type} [Field K] [NumberField K] [StarRing K]

theorem isFrac {M : Submodule (𝓞 K) K} (hM : Submodule.IsFullLattice K M) : IsFractional (𝓞 K)⁰ M :=
  FractionalIdeal.isFractional_of_fg hM.toIsLattice.fg

def fracI {M : Submodule (𝓞 K) K} (hM : Submodule.IsFullLattice K M) : FractionalIdeal (𝓞 K)⁰ K :=
  ⟨M, isFrac hM⟩

theorem coe_fracI {M : Submodule (𝓞 K) K} (hM : Submodule.IsFullLattice K M) :
    ((fracI hM : FractionalIdeal (𝓞 K)⁰ K) : Submodule (𝓞 K) K) = M :=
  FractionalIdeal.coeToSubmodule_mk _ _

theorem frac_ne_zero {M : Submodule (𝓞 K) K} (hM : Submodule.IsFullLattice K M) : fracI hM ≠ 0 := by
  obtain ⟨a, ha, h0⟩ := exists_ne_zero_of_isLattice hM
  intro e
  have h1 : a ∈ fracI hM := by rw [← FractionalIdeal.mem_coeToSubmodule, coe_fracI]; exact ha
  rw [e] at h1
  exact h0 ((FractionalIdeal.mem_zero_iff _).1 h1)

def fracU {M : Submodule (𝓞 K) K} (hM : Submodule.IsFullLattice K M) : (FractionalIdeal (𝓞 K)⁰ K)ˣ :=
  Units.mk0 _ (frac_ne_zero hM)

theorem coe_fracU {M : Submodule (𝓞 K) K} (hM : Submodule.IsFullLattice K M) :
    (((fracU hM : (FractionalIdeal (𝓞 K)⁰ K)ˣ) : FractionalIdeal (𝓞 K)⁰ K) : Submodule (𝓞 K) K) = M :=
  coe_fracI hM

theorem exists_eq_span_mul {M M' : Submodule (𝓞 K) K} (hM : Submodule.IsFullLattice K M)
    (hM' : Submodule.IsFullLattice K M')
    (he : ClassGroup.mk K (fracU hM) = ClassGroup.mk K (fracU hM')) :
    ∃ a : K, a ≠ 0 ∧ M = Submodule.span (𝓞 K) {a} * M' := by
  have h1 : ClassGroup.mk K (fracU hM * (fracU hM')⁻¹) = 1 := by
    rw [map_mul, map_inv, he, mul_inv_cancel]
  rw [ClassGroup.mk_eq_one_iff] at h1
  obtain ⟨⟨a, ha⟩⟩ := h1
  have hMa : M = Submodule.span (𝓞 K) {a} * M' := by
    calc M = (((fracU hM * (fracU hM')⁻¹ * fracU hM' : (FractionalIdeal (𝓞 K)⁰ K)ˣ) :
          FractionalIdeal (𝓞 K)⁰ K) : Submodule (𝓞 K) K) := by rw [inv_mul_cancel_right, coe_fracU]
      _ = Submodule.span (𝓞 K) {a} * M' := by
          rw [Units.val_mul, FractionalIdeal.coeToSubmodule_mul, ha, coe_fracU]
  refine ⟨a, fun h0 => ?_, hMa⟩
  obtain ⟨x, hx, hx0⟩ := exists_ne_zero_of_isLattice hM
  rw [hMa, h0, Submodule.mem_span_singleton_mul] at hx
  obtain ⟨y, -, hy⟩ := hx
  rw [zero_mul] at hy
  exact hx0 hy.symm

theorem exists_unitF {u : K} (hu0 : u ≠ 0) (hu : u ∈ (1 : Submodule (𝓞 K) K))
    (hu' : u⁻¹ ∈ (1 : Submodule (𝓞 K) K)) (hs : star u = u) :
    ∃ t : (𝓞 (cmF K))ˣ, (((t : 𝓞 (cmF K)) : cmF K) : K) = u := by
  have intF : ∀ x : cmF K, (x : K) ∈ (1 : Submodule (𝓞 K) K) → IsIntegral ℤ x := by
    intro x hx
    obtain ⟨r, hr⟩ := Submodule.mem_one.1 hx
    have hK : IsIntegral ℤ (x : K) := by rw [← hr]; exact RingOfIntegers.isIntegral_coe r
    exact (isIntegral_algHom_iff ((cmF K).val.toRingHom.toIntAlgHom) Subtype.val_injective).1 hK
  have hs' : star u⁻¹ = u⁻¹ := by rw [star_inv₀, hs]
  let x : cmF K := ⟨u, (mem_cmF_iff K u).2 hs⟩
  let y : cmF K := ⟨u⁻¹, (mem_cmF_iff K _).2 hs'⟩
  let t0 : 𝓞 (cmF K) := ⟨x, intF x hu⟩
  let t1 : 𝓞 (cmF K) := ⟨y, intF y hu'⟩
  have hxy : t0 * t1 = 1 := by
    apply RingOfIntegers.ext
    apply Subtype.ext
    show u * u⁻¹ = 1
    exact mul_inv_cancel₀ hu0
  exact ⟨⟨t0, t1, hxy, by rw [mul_comm]; exact hxy⟩, rfl⟩

def iota (K : Type) [Field K] [NumberField K] [StarRing K] : (𝓞 (cmF K))ˣ →* K :=
  ((cmF K).val.toRingHom.comp (algebraMap (𝓞 (cmF K)) (cmF K))).toMonoidHom.comp (Units.coeHom _)

theorem exists_unitK (v : (𝓞 (cmF K))ˣ) : ∃ w : (𝓞 K)ˣ, algebraMap (𝓞 K) K (w : 𝓞 K) = iota K v :=
  ⟨Units.map (RingOfIntegers.mapRingHom ((cmF K).val.toRingHom)).toMonoidHom v, rfl⟩

theorem gmap_smul {b : K} (hb : b ≠ 0) (N : Submodule (𝓞 K) K) :
    gmap (LinearEquiv.smulOfNeZero K K b hb) N = Submodule.span (𝓞 K) {b} * N := by
  ext y
  rw [mem_gmap, Submodule.mem_span_singleton_mul]
  have hs : ∀ z, (LinearEquiv.smulOfNeZero K K b hb).symm z = b⁻¹ * z := fun z => rfl
  constructor
  · intro hy
    refine ⟨b⁻¹ * y, by rw [← hs]; exact hy, ?_⟩
    rw [← mul_assoc, mul_inv_cancel₀ hb, one_mul]
  · rintro ⟨n, hn, rfl⟩
    rw [hs, ← mul_assoc, inv_mul_cancel₀ hb, one_mul]
    exact hn

theorem gmap_one (N : Submodule (𝓞 K) K) : gmap (1 : K ≃ₗ[K] K) N = N := by
  ext y
  rw [mem_gmap]
  rfl

theorem span_unit_mul (w : (𝓞 K)ˣ) (N : Submodule (𝓞 K) K) :
    Submodule.span (𝓞 K) {algebraMap (𝓞 K) K (w : 𝓞 K)} * N = N := by
  ext y
  rw [Submodule.mem_span_singleton_mul]
  constructor
  · rintro ⟨n, hn, rfl⟩
    rw [← Algebra.smul_def]
    exact N.smul_mem _ hn
  · intro hy
    refine ⟨((w⁻¹ : (𝓞 K)ˣ) : 𝓞 K) • y, N.smul_mem _ hy, ?_⟩
    rw [Algebra.smul_def, ← mul_assoc, ← map_mul, Units.mul_inv, map_one, one_mul]

end Formalism.MainNotions.BridgeLemVC

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLemVC =====

-- ===== clump member: Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.IntegerGroupLocalParametrization =====
-- clump-header: {"m": "Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.IntegerGroupLocalParametrization", "h": "module\n\npublic import Formalism.FlagUnipotentLattices.LatticeDeterminantIndexSq\npublic import Mathlib.NumberTheory.NumberField.Units.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.NumberField.Units.DirichletTheorem\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.FlagUnipotentLattices.DetIndexProductHyperbolicInequality\nimport Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.ComplexMultiplicationRoot\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField nonZeroDivisors Finset

noncomputable section

namespace Formalism.HermitianLatticeCounting.P
open Formalism.HermitianLatticeCounting.LocalIntegralStructure Formalism.HermitianLatticeCounting.P.IntegralityLocalGlobal
set_option linter.all false

set_option backward.isDefEq.respectTransparency false in
open NumberField.Units in
theorem s5a4_torsion_real {F : Type} [Field F] [NumberField F]
    (hr : ∀ w : InfinitePlace F, w.IsReal) (x : (𝓞 F)ˣ) (hx : x ∈ torsion F) :
    x = 1 ∨ x = -1 := by
  by_cases hc : 2 < orderOf x
  · exfalso
    rw [← orderOf_units, ← orderOf_submonoid] at hc
    have h0 := NumberField.InfinitePlace.IsPrimitiveRoot.nrRealPlaces_eq_zero_of_two_lt hc
      (IsPrimitiveRoot.orderOf ((x : 𝓞 F) : F))
    obtain ⟨w0⟩ : Nonempty (InfinitePlace F) := inferInstance
    haveI : Nonempty {w : InfinitePlace F // w.IsReal} := ⟨⟨w0, hr w0⟩⟩
    rw [InfinitePlace.nrRealPlaces] at h0
    exact ((@Fintype.card_eq_zero_iff _ (_)).1 h0).false ⟨w0, hr w0⟩
  · have hc' : orderOf x ≤ 2 := not_lt.mp hc
    interval_cases hi : orderOf x
    · exact absurd ((CommGroup.mem_torsion x).1 hx) (orderOf_eq_zero_iff.mp hi)
    · exact Or.inl (orderOf_eq_one_iff.1 hi)
    · right
      rw [← orderOf_units, CharP.orderOf_eq_two_iff 0 (by decide)] at hi
      simp [← Units.val_inj, Units.val_neg, Units.val_one, hi]

open NumberField.Units in
theorem units_square_index : UnitsSquareIndex := by
  intro F _ _ hr
  classical
  set S : Subgroup (𝓞 F)ˣ := (powMonoidHom 2 : (𝓞 F)ˣ →* (𝓞 F)ˣ).range with hS
  obtain ⟨θ, hθd⟩ : ∃ θ : (𝓞 F)ˣ →* Multiplicative (Fin (rank F) → ZMod 2), ∀ x, θ x =
      Multiplicative.ofAdd (fun i =>
        (((basisModTorsion F).repr (Additive.ofMul (x : (𝓞 F)ˣ ⧸ torsion F)) i : ℤ) : ZMod 2)) :=
   ⟨{ toFun := fun x => Multiplicative.ofAdd (fun i =>
        (((basisModTorsion F).repr (Additive.ofMul (x : (𝓞 F)ˣ ⧸ torsion F)) i : ℤ) : ZMod 2))
      map_one' := by
        simp only [QuotientGroup.mk_one, ofMul_one, map_zero, Finsupp.coe_zero, Pi.zero_apply,
          Int.cast_zero]; rfl
      map_mul' := by
        intro x y
        simp only [QuotientGroup.mk_mul, ofMul_mul, map_add (f := _), Finsupp.coe_add, Pi.add_apply,
          Int.cast_add]; rfl }, fun _ => rfl⟩
  have hθ : ∀ (x ζ : (𝓞 F)ˣ) (e : Fin (rank F) → ℤ), ζ ∈ torsion F →
      x = ζ * ∏ i, (fundSystem F i) ^ (e i) →
      θ x = Multiplicative.ofAdd (fun i => ((e i : ℤ) : ZMod 2)) := by
    intro x ζ e hζ hx
    have := fun_eq_repr F hζ hx
    rw [hθd, ← this]
  have hsurj : Function.Surjective θ := by
    intro v
    refine ⟨1 * ∏ i, (fundSystem F i) ^ (((Multiplicative.toAdd v i).val : ℕ) : ℤ), ?_⟩
    rw [hθ _ 1 _ (one_mem _) rfl]
    apply Multiplicative.toAdd.injective
    funext i
    simp
  have hsq : ∀ a : Multiplicative (Fin (rank F) → ZMod 2), a ^ 2 = 1 := by
    intro a
    apply Multiplicative.toAdd.injective
    funext i
    rw [sq]
    show Multiplicative.toAdd a i + Multiplicative.toAdd a i = 0
    exact CharTwo.add_self_eq_zero _
  have hker : θ.ker = S ⊔ torsion F := by
    apply le_antisymm
    · intro x hx
      obtain ⟨⟨ζ, e⟩, hxe, _⟩ := exist_unique_eq_mul_prod F x
      simp only at hxe
      rw [MonoidHom.mem_ker, hθ x ζ e ζ.2 hxe] at hx
      have h2 : ∀ i, (2 : ℤ) ∣ e i := by
        intro i
        have := congrFun (congrArg Multiplicative.toAdd hx) i
        exact (ZMod.intCast_zmod_eq_zero_iff_dvd (e i) 2).mp this
      choose e' he' using h2
      have : x = (∏ i, (fundSystem F i) ^ (e' i)) ^ 2 * ζ := by
        rw [hxe, mul_comm, ← Finset.prod_pow]
        congr 1
        refine Finset.prod_congr rfl (fun i _ => ?_)
        rw [he' i, mul_comm, zpow_mul]; rfl
      rw [this]
      exact Subgroup.mul_mem_sup ⟨_, rfl⟩ ζ.2
    · apply sup_le
      · rintro _ ⟨y, rfl⟩
        rw [MonoidHom.mem_ker, powMonoidHom_apply, map_pow, hsq]
      · intro ζ hζ
        rw [MonoidHom.mem_ker, hθ ζ ζ (fun _ => 0) hζ (by simp)]
        simp; rfl
  have hST : S ⊓ torsion F = ⊥ := by
    rw [eq_bot_iff]
    rintro x ⟨⟨y, rfl⟩, hx⟩
    have hx' : y ^ 2 ∈ torsion F := hx
    have hy : y ∈ torsion F := by
      rw [torsion, CommGroup.mem_torsion] at hx' ⊢
      exact hx'.of_pow (by norm_num)
    show y ^ 2 ∈ (⊥ : Subgroup (𝓞 F)ˣ)
    rw [Subgroup.mem_bot]
    rcases s5a4_torsion_real hr y hy with h | h <;> simp [h]
  have hT : Nat.card (torsion F) = 2 := by
    rw [Nat.card_eq_two_iff]
    refine ⟨1, ⟨-1, neg_one_mem_torsion⟩, ?_, ?_⟩
    · intro h
      have h1 : (1 : (𝓞 F)ˣ) = -1 := congrArg Subtype.val h
      have h2 : ((1 : 𝓞 F) : F) = -1 := by
        have := congrArg (fun u : (𝓞 F)ˣ => ((u : 𝓞 F) : F)) h1
        simpa using this
      norm_num at h2
    · apply Set.eq_univ_of_forall
      intro x
      rcases s5a4_torsion_real hr x.1 x.2 with h | h
      · left; exact Subtype.ext h
      · right; exact Subtype.ext h
  have hrank : rank F + 1 = finrank ℚ F := by
    have h1 := InfinitePlace.card_add_two_mul_card_eq_rank F
    have h2 := InfinitePlace.card_eq_nrRealPlaces_add_nrComplexPlaces F
    have h3 : InfinitePlace.nrComplexPlaces F = 0 := by
      rw [InfinitePlace.nrComplexPlaces, Fintype.card_eq_zero_iff]
      exact ⟨fun w => (InfinitePlace.not_isReal_iff_isComplex.mpr w.2) (hr w.1)⟩
    have h4 : 0 < Fintype.card (InfinitePlace F) := Fintype.card_pos
    rw [rank]; omega
  show S.index = _
  rw [← Subgroup.relIndex_mul_index (le_sup_left : S ≤ S ⊔ torsion F), Subgroup.relIndex_sup_left,
    ← Subgroup.inf_relIndex_right, hST, Subgroup.relIndex_bot_left, hT, ← hker, Subgroup.index_ker,
    MonoidHom.range_eq_top.mpr hsurj, Subgroup.card_top, Nat.card_congr Multiplicative.toAdd,
    Nat.card_eq_fintype_card, Fintype.card_fun, ZMod.card, Fintype.card_fin, ← hrank, pow_succ,
    mul_comm]



end Formalism.HermitianLatticeCounting.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.IntegerGroupLocalParametrization =====

-- ===== clump member: Formalism.FlagUnipotentLattices.ArithmeticIdentityEntries =====
-- clump-header: {"m": "Formalism.FlagUnipotentLattices.ArithmeticIdentityEntries", "h": "module\n\npublic import Formalism.FlagUnipotentLattices.LatticeDeterminantIndexSq\npublic import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.IntegerGroupLocalParametrization\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.HermitianLatticeCounting.Final.LocalIntegralStructure

end Formalism.HermitianLatticeCounting.Final.LocalIntegralStructure
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.FlagUnipotentLattices.ArithmeticIdentityEntries =====

-- ===== clump member: Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLemVN =====
-- clump-header: {"m": "Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLemVN", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLemVC\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.FiniteDimensionalOfOrtho\npublic import Mathlib.NumberTheory.NumberField.ClassNumber\npublic import Formalism.FlagUnipotentLattices.ArithmeticIdentityEntries\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.DifferentIdealEqTop\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsMassConstOne\nimport Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsNeZeroOfIsLattice\nimport Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.IsClassRepsMap\nimport Formalism.HermitianLattices.HermitianLatticesProofs.MassBasic\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLemVR\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.BridgeLemVN

open NumberField Formalism.HermitianLatticesTheory Formalism.ThetaLiftIndependence Formalism.HermitianLattices.Ext.L3 Formalism.HermitianLattices.Ext.L3.RankOne Formalism.MainNotions.BridgeLemVR
  Formalism.MainNotions.BridgeLemVC

variable {K : Type} [Field K] [NumberField K] [StarRing K]

theorem fixF (K : Type) [Field K] [NumberField K] [StarRing K] :
    ∀ a : K, star a = a ↔ a ∈ Set.range (algebraMap (cmF K) K) := by
  intro a
  constructor
  · intro h
    exact ⟨⟨a, (mem_cmF_iff K a).2 h⟩, rfl⟩
  · rintro ⟨x, rfl⟩
    exact star_coe_cmF K x

theorem card_quot (hK : IsCMUnram K) :
    Nat.card ((𝓞 (cmF K))ˣ ⧸ (powMonoidHom 2 : (𝓞 (cmF K))ˣ →* (𝓞 (cmF K))ˣ).range) = 2 ^ fDeg K := by
  rw [_root_.Formalism.HermitianLatticeCounting.P.units_square_index (cmF K) (isReal_cmF hK),
    (discrTower K (cmF K) hK (fixF K)).2.1]

theorem span_mul_span1 (x y : K) :
    Submodule.span (𝓞 K) {x} * Submodule.span (𝓞 K) {y} = Submodule.span (𝓞 K) {x * y} := by
  rw [Submodule.span_mul_span, Set.singleton_mul_singleton]

theorem iota_inv (x : (𝓞 (cmF K))ˣ) : iota K x⁻¹ = (iota K x)⁻¹ :=
  eq_inv_of_mul_eq_one_left (by rw [← map_mul, inv_mul_cancel, map_one])

theorem iota_ne_zero (x : (𝓞 (cmF K))ˣ) : iota K x ≠ 0 := by
  intro h0
  have := congrArg (iota K) (mul_inv_cancel x)
  rw [map_mul, h0, zero_mul, map_one] at this
  exact zero_ne_one this

theorem star_iota (x : (𝓞 (cmF K))ˣ) : star (iota K x) = iota K x := star_coe_cmF K _

theorem card_classReps_le (hK : IsCMUnram K) (h : K →ₗ⋆[K] K →ₗ[K] K) (h1 : h 1 1 ≠ 0)
    (s : Finset (Submodule (𝓞 K) K)) (hs : IsClassReps h (1 : Submodule (𝓞 K) K) s) :
    s.card ≤ classNumber K * 2 ^ fDeg K := by
  classical
  have hlat : ∀ M : s, Submodule.IsFullLattice K (M : Submodule (𝓞 K) K) := by
    intro M
    have := (hs.1 M M.2).1
    obtain ⟨p, hp, -⟩ := Ideal.exists_le_maximal (⊥ : Ideal (𝓞 K)) bot_ne_top
    obtain ⟨z, hz, hzloc⟩ := exists_local h h1 (hs.1 M M.2) hp
    have hz0 : z ≠ 0 := by
      intro e
      simp [e] at hz
    have hzm : z ∈ loc (K := K) p (M : Submodule (𝓞 K) K) :=
      (hzloc z).2 ⟨1, one_mem_locR p, one_mul z |>.symm⟩
    obtain ⟨r, hr, hrz⟩ := hzm
    have hr0 : algebraMap (𝓞 K) K r ≠ 0 := by
      intro e
      have : r = 0 := (FaithfulSMul.algebraMap_injective (𝓞 K) K) (by simpa using e)
      subst r
      exact (hcompl_le_primeCompl hp hr) (Ideal.zero_mem p)
    exact ⟨span_eq_top_of_ne_zero hrz (by simpa [Algebra.smul_def] using mul_ne_zero hr0 hz0)⟩
  let cl : s → ClassGroup (𝓞 K) := fun M => ClassGroup.mk K (fracU (hlat M))
  let base : s → s := fun M => Classical.choose (⟨M, rfl⟩ : ∃ B : s, cl B = cl M)
  have hbase : ∀ M, cl (base M) = cl M := fun M =>
    Classical.choose_spec (⟨M, rfl⟩ : ∃ B : s, cl B = cl M)
  have gen : ∀ (γ γ' : ClassGroup (𝓞 K)) (hγ : ∃ B : s, cl B = γ) (hγ' : ∃ B : s, cl B = γ'),
      γ = γ' → Classical.choose hγ = Classical.choose hγ' := by
    intro γ γ' hγ hγ' e
    subst e
    rfl
  have hbase_eq : ∀ M M', cl M = cl M' → base M = base M' := fun M M' e => gen _ _ _ _ e
  have hex : ∀ M : s, ∃ a : K, a ≠ 0 ∧
      (M : Submodule (𝓞 K) K) = Submodule.span (𝓞 K) {a} * ((base M : s) : Submodule (𝓞 K) K) :=
    fun M => exists_eq_span_mul (hlat M) (hlat (base M)) (hbase M).symm
  choose a ha0 haM using hex
  have hu : ∀ M : s, ∃ t : (𝓞 (cmF K))ˣ, iota K t = a M * star (a M) := by
    intro M
    obtain ⟨i1, i2⟩ := norm_unit h h1 (hs.1 M M.2) (hs.1 _ (base M).2) (haM M)
    exact exists_unitF (mul_ne_zero (ha0 M) (star_ne_zero.2 (ha0 M))) i1 i2
      (by rw [star_mul', star_star, mul_comm])
  choose t ht using hu
  let Q := (𝓞 (cmF K))ˣ ⧸ (powMonoidHom 2 : (𝓞 (cmF K))ˣ →* (𝓞 (cmF K))ˣ).range
  let Ψ : s → ClassGroup (𝓞 K) × Q := fun M => (cl M, ((t M : (𝓞 (cmF K))ˣ) : Q))
  have hinj : Function.Injective Ψ := by
    intro M M' e
    have ecl : cl M = cl M' := congrArg Prod.fst e
    have eB : base M = base M' := hbase_eq M M' ecl
    have eq : ((t M : (𝓞 (cmF K))ˣ) : Q) = ((t M' : (𝓞 (cmF K))ˣ) : Q) := congrArg Prod.snd e
    rw [QuotientGroup.eq] at eq
    obtain ⟨v, hv⟩ := eq
    set ν : K := iota K v with hνdef
    have hν0 : ν ≠ 0 := iota_ne_zero v
    have hνs : star ν = ν := star_iota v
    have hv' : ν ^ 2 = (iota K (t M))⁻¹ * iota K (t M') := by
      rw [hνdef, ← map_pow, ← iota_inv, ← map_mul, ← hv, powMonoidHom_apply]
    have hu0 : a M * star (a M) ≠ 0 := mul_ne_zero (ha0 M) (star_ne_zero.2 (ha0 M))
    have key : a M' * star (a M') = a M * star (a M) * ν ^ 2 := by
      rw [← ht M, ← ht M', hv', mul_inv_cancel_left₀ (iota_ne_zero _)]
    set b : K := a M' * (a M * ν)⁻¹ with hbdef
    have hb0 : b ≠ 0 := mul_ne_zero (ha0 M') (inv_ne_zero (mul_ne_zero (ha0 M) hν0))
    have hb : star b * b = 1 := by
      have e : star b * b = (a M' * star (a M')) * (a M * star (a M) * ν ^ 2)⁻¹ := by
        rw [hbdef, star_mul', star_inv₀, star_mul', hνs]
        have hsa : star (a M) ≠ 0 := star_ne_zero.2 (ha0 M)
        field_simp
      rw [e, key, mul_inv_cancel₀ (mul_ne_zero hu0 (pow_ne_zero 2 hν0))]
    let g : K ≃ₗ[K] K := LinearEquiv.smulOfNeZero K K b hb0
    have hg : g ∈ isom h := by
      refine (mem_isom_iff h1 g).2 ?_
      show star (b • (1 : K)) * (b • (1 : K)) = 1
      rw [smul_eq_mul, mul_one]
      exact hb
    obtain ⟨w, hw⟩ := exists_unitK v
    have hwinv : algebraMap (𝓞 K) K ((w⁻¹ : (𝓞 K)ˣ) : 𝓞 K) = ν⁻¹ := by
      rw [hνdef, ← hw]
      exact eq_inv_of_mul_eq_one_left (by rw [← map_mul, Units.inv_mul, map_one])
    have hgM : gmap g (M : Submodule (𝓞 K) K) = M' := by
      rw [gmap_smul, haM M, haM M', ← eB, ← mul_assoc, span_mul_span1]
      have e : b * a M = a M' * ν⁻¹ := by
        rw [hbdef]
        field_simp
        exact mul_div_cancel_right₀ _ (ha0 M)
      rw [e, ← span_mul_span1, mul_assoc, ← hwinv, span_unit_mul]
    have hU := hs.2 M' (hs.1 M' M'.2)
    exact Subtype.ext (hU.unique ⟨M.2, g, hg, hgM⟩ ⟨M'.2, 1, (isom h).one_mem, gmap_one _⟩)
  have hQ : Nat.card Q = 2 ^ fDeg K := card_quot hK
  have : Finite Q := Nat.finite_of_card_ne_zero (by rw [hQ]; positivity)
  have hc := Nat.card_le_card_of_injective Ψ hinj
  rw [Nat.card_prod, hQ, Nat.card_eq_fintype_card (α := ClassGroup (𝓞 K)), Nat.card_eq_fintype_card,
    Fintype.card_coe] at hc
  exact hc

theorem mass_le (hK : IsCMUnram K) (h : K →ₗ⋆[K] K →ₗ[K] K) (h1 : h 1 1 ≠ 0) :
    mass h (1 : Submodule (𝓞 K) K) ≤ ((classNumber K * 2 ^ fDeg K : ℕ) : ℝ) := by
  unfold mass
  split_ifs with hex
  · refine le_trans ?_ (Nat.cast_le.2 (card_classReps_le hK h h1 _ hex.choose_spec))
    calc ∑ M ∈ hex.choose, ((Nat.card (autL h M) : ℕ) : ℝ)⁻¹ ≤ ∑ _M ∈ hex.choose, (1 : ℝ) := by
          refine Finset.sum_le_sum fun M _ => ?_
          rcases Nat.eq_zero_or_pos (Nat.card (autL h M)) with h0 | hpos
          · rw [h0]; simp
          · exact inv_le_one_of_one_le₀ (by exact_mod_cast hpos)
      _ = (hex.choose.card : ℝ) := by simp
  · positivity

theorem mass_std_one_le (hK : IsCMUnram K) :
    mass (stdForm K 1) (stdLat K 1) ≤ ((classNumber K * 2 ^ fDeg K : ℕ) : ℝ) := by
  have hs := stdForm_isSymm K 1
  have ho := stdLat_isOrtho K 1
  have := finiteDimensional_of_ortho ho
  let φ := LinearEquiv.funUnique (Fin 1) K K
  let h' : K →ₗ⋆[K] K →ₗ[K] K :=
    ((stdForm K 1).comp φ.symm.toLinearMap).compl₂ φ.symm.toLinearMap
  have hφ (x y : Fin 1 → K) : h' (φ x) (φ y) = stdForm K 1 x y := by
    simp [h']
  have hn : h' 1 1 ≠ 0 := by
    simp [h', φ, stdForm_apply]
  have hmap : mapE φ (stdLat K 1) = (1 : Submodule (𝓞 K) K) := by
    change (stdLat K 1).map (φ.restrictScalars (𝓞 K)).toLinearMap = 1
    rw [stdLat, Submodule.map_span, Submodule.one_eq_span, ← Set.range_comp]
    have he : (φ.restrictScalars (𝓞 K)).toLinearMap ∘
        (fun i : Fin 1 => (Pi.single i 1 : Fin 1 → K)) = fun _ => (1 : K) := by
      funext i
      have hi : i = (0 : Fin 1) := Subsingleton.elim _ _
      subst i
      change (Pi.single (0 : Fin 1) 1 : Fin 1 → K) 0 = 1
      exact Pi.single_eq_same _ _
    rw [he, Set.range_const]
  obtain ⟨hex, -, -⟩ := massBasic K (Fin 1 → K) (stdForm K 1) hs
    (trace_pos (isTotPosDef_of_ortho hK hs ho)) (stdLat K 1) (isFullLattice_of_ortho ho)
  have e := (mass_mapE φ hφ hex).2
  rw [hmap] at e
  rw [← e]
  exact mass_le hK h' hn

end Formalism.MainNotions.BridgeLemVN

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLemVN =====
