module

public import Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfB
public import Mathlib.Order.CompletePartialOrder
public import Development.EtaleCohomology.EtaleSheaves.LeafOrdInfLocalPf
public import Mathlib.RingTheory.DedekindDomain.Ideal.Lemmas
public import Mathlib.FieldTheory.PurelyInseparable.Basic
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation
public import Mathlib.RingTheory.DedekindDomain.IntegralClosure
public import Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfC
import Mathlib.Algebra.GroupWithZero.Submonoid.CancelMulZero

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfE, Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfF, Development.EtaleCohomology.EtaleSheaves.LeafFinInfPf, Development.EtaleCohomology.EtaleSheaves.LeafFinValPf, Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfD, Development.EtaleCohomology.EtaleSheaves.CurveUnitsOrderAtInfinity

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfE =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfE", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.E.E4

def LeafOrdInfHom : Prop := ∀ (k B : Type) [Field k] [IsAlgClosed k] [CommRing B] [IsDedekindDomain B]
  [Algebra k B] [Algebra.FiniteType k B] (g : Polynomial k →ₐ[k] B), Function.Injective g → g.Finite →
  ∃ (n : ℕ) (φ : Bˣ →* Multiplicative (Fin n → ℤ)), ∀ u : Bˣ, φ u = 1 →
    IsIntegral (Algebra.adjoin k {(algebraMap B (FractionRing B) (g Polynomial.X))⁻¹})
      (algebraMap B (FractionRing B) (u : B))

def LeafIntBoth : Prop := ∀ (k L : Type) [Field k] [Field L] [Algebra k L] (t : L), Transcendental k t → ∀ x : L,
  IsIntegral (Algebra.adjoin k {t}) x → IsIntegral (Algebra.adjoin k {t⁻¹}) x → IsIntegral k x

theorem LeafOrdAtInfinity_of (hV : LeafOrdInfHom) (hI : LeafIntBoth) : LeafOrdAtInfinity := by
  intro k B _ _ _ _ _ _ g hg hf
  obtain ⟨n, φ, hφ⟩ := hV k B g hg hf
  refine ⟨n, φ, fun u hu => ?_⟩
  set L := FractionRing B
  set T : L := algebraMap B L (g Polynomial.X)
  have hinjL : Function.Injective (algebraMap B L) := IsFractionRing.injective B L
  let G : Polynomial k →ₐ[k] L := (IsScalarTower.toAlgHom k B L).comp g
  have hG : Function.Injective G := hinjL.comp hg
  have hT : Transcendental k T := by
    intro ⟨p, hp0, hp⟩
    apply hp0
    apply hG
    rw [map_zero]
    have : G p = Polynomial.aeval T p := by
      rw [show G p = G (Polynomial.aeval Polynomial.X p) by simp, ← Polynomial.aeval_algHom_apply]; rfl
    rw [this]; exact hp
  have hint : IsIntegral (Algebra.adjoin k {T}) (algebraMap B L (u : B)) := by
    obtain ⟨p, hpm, hp⟩ := (RingHom.IsIntegral.of_finite hf) (u : B)
    let f : Polynomial k →ₐ[k] Algebra.adjoin k {T} := Polynomial.aeval ⟨T, Algebra.subset_adjoin rfl⟩
    have hfG : ((algebraMap (Algebra.adjoin k {T}) L).comp f.toRingHom) = (algebraMap B L).comp g.toRingHom := by
      have : (IsScalarTower.toAlgHom k (Algebra.adjoin k {T}) L).comp f = G := by
        apply Polynomial.algHom_ext; simp [f, G, T]
      exact congrArg AlgHom.toRingHom this
    refine ⟨p.map f.toRingHom, hpm.map _, ?_⟩
    rw [Polynomial.eval₂_map, hfG, ← Polynomial.hom_eval₂]
    change algebraMap B L (Polynomial.eval₂ g.toRingHom (u : B) p) = 0
    rw [hp, map_zero]
  have := hI k L T hT _ hint (hφ u hu)
  exact (isIntegral_algHom_iff (IsScalarTower.toAlgHom k B L) hinjL).mp this

end LateralTheory.E.E4
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfE =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfF =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfF", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfE\npublic import Mathlib.Order.CompletePartialOrder\nimport Mathlib.Algebra.AffineMonoid.UniqueSums\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.E.E4

open Polynomial

theorem mem_bot_of_mem_adjoin_inv {k L : Type} [Field k] [Field L] [Algebra k L] (t : L) (ht : Transcendental k t)
    (c : L) (h1 : c ∈ Algebra.adjoin k {t}) (h2 : c ∈ Algebra.adjoin k {t⁻¹}) : c ∈ (⊥ : Subalgebra k L) := by
  rw [Algebra.adjoin_singleton_eq_range_aeval] at h1 h2
  obtain ⟨p, rfl⟩ := h1
  obtain ⟨q, hq⟩ := h2
  have ht0 : t ≠ 0 := by
    rintro rfl; exact ht (isAlgebraic_zero)
  set N := q.natDegree
  have key : aeval t (X ^ N * p) = aeval t (reflect N q) := by
    let _ : Invertible t⁻¹ := invertibleOfNonzero (inv_ne_zero ht0)
    have h := eval₂_reflect_mul_pow (algebraMap k L) t⁻¹ N q le_rfl
    rw [invOf_eq_inv, inv_inv] at h
    have hq' : aeval t⁻¹ q = aeval t p := hq
    rw [aeval_def, aeval_def] at hq'
    rw [map_mul, map_pow, aeval_X, aeval_def, aeval_def, ← hq', ← h, mul_comm, mul_assoc, ← mul_pow,
      inv_mul_cancel₀ ht0, one_pow, mul_one]
  have hinj : Function.Injective (aeval t : k[X] →ₐ[k] L) := transcendental_iff_injective.mp ht
  have heq := hinj key
  by_cases hp : p = 0
  · simp [hp]
  have hdeg : (X ^ N * p).natDegree = N + p.natDegree := by
    rw [natDegree_mul (pow_ne_zero _ X_ne_zero) hp, natDegree_X_pow]
  have hle : (reflect N q).natDegree ≤ N := natDegree_reflect_le.trans (by simp [N])
  have hp0 : p.natDegree = 0 := by rw [heq] at hdeg; omega
  rw [eq_C_of_natDegree_eq_zero hp0]
  simp

def LeafMinpolyCoeff : Prop := ∀ (k L : Type) [Field k] [Field L] [Algebra k L] (s : L), Transcendental k s →
  ∀ (F : IntermediateField k L), F = IntermediateField.adjoin k {s} → ∀ x : L, IsIntegral (Algebra.adjoin k {s}) x →
  ∀ i : ℕ, ((minpoly F x).coeff i : L) ∈ Algebra.adjoin k {s}

theorem isIntegral_adjoin_of {k L : Type} [Field k] [Field L] [Algebra k L] (s : L) (x : L)
    (hx : IsIntegral (Algebra.adjoin k {s}) x) : IsIntegral (IntermediateField.adjoin k {s}) x := by
  obtain ⟨p, hm, hp⟩ := hx
  let ι : Algebra.adjoin k {s} →+* IntermediateField.adjoin k {s} :=
    Subalgebra.inclusion (IntermediateField.algebra_adjoin_le_adjoin k {s}) |>.toRingHom
  refine ⟨p.map ι, hm.map _, ?_⟩
  rw [eval₂_map]
  exact hp

theorem LeafIntBoth_of' (hM : LeafMinpolyCoeff) : ∀ (k L : Type) [Field k] [Field L] [Algebra k L] (t : L),
    Transcendental k t → ∀ x : L,
    IsIntegral (Algebra.adjoin k {t}) x → IsIntegral (Algebra.adjoin k {t⁻¹}) x → IsIntegral k x := by
  intro k L _ _ _ t ht x h1 h2
  have ht' : Transcendental k t⁻¹ := fun h => ht (by simpa using h.inv)
  set F := IntermediateField.adjoin k {t}
  have hEq : F = IntermediateField.adjoin k {t⁻¹} := by
    apply le_antisymm
    · rw [IntermediateField.adjoin_simple_le_iff]
      simpa using inv_mem (IntermediateField.mem_adjoin_simple_self k t⁻¹)
    · rw [IntermediateField.adjoin_simple_le_iff]
      exact inv_mem (IntermediateField.mem_adjoin_simple_self k t)
  have hxF : IsIntegral F x := isIntegral_adjoin_of t x h1
  have hc : ∀ i, ((minpoly F x).coeff i : L) ∈ (⊥ : Subalgebra k L) := fun i =>
    mem_bot_of_mem_adjoin_inv t ht _ (hM k L t ht F rfl x h1 i) (hM k L t⁻¹ ht' F hEq x h2 i)
  have hl : minpoly F x ∈ lifts (algebraMap k F) := by
    rw [lifts_iff_coeff_lifts]
    intro n
    obtain ⟨a, ha⟩ := Algebra.mem_bot.mp (hc n)
    exact ⟨a, Subtype.ext ha⟩
  obtain ⟨P, hP, -, hPm⟩ := lifts_and_natDegree_eq_and_monic hl (minpoly.monic hxF)
  refine ⟨P, hPm, ?_⟩
  have := minpoly.aeval F x
  rw [← hP, aeval_map_algebraMap] at this
  exact this

theorem LeafIntBoth_of (hM : LeafMinpolyCoeff) : LeafIntBoth := LeafIntBoth_of' hM

theorem LeafOrdAtInfinity_of_cut (hV : LeafOrdInfHom) (hM : LeafMinpolyCoeff) : LeafOrdAtInfinity :=
  LeafOrdAtInfinity_of hV (LeafIntBoth_of hM)

end LateralTheory.E.E4
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfF =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafFinInfPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafFinInfPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafOrdInfLocalPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.E.E4

open Polynomial

theorem finInf_comm {k B L : Type} [Field k] [CommRing B] [Field L] [Algebra k B] [Algebra k L]
    [Algebra B L] [IsScalarTower k B L] (g : Polynomial k →ₐ[k] B) (p : Polynomial k) :
    aeval (algebraMap B L (g X)) p = algebraMap B L (g p) := by
  have h : (aeval (algebraMap B L (g X)) : Polynomial k →ₐ[k] L) =
      (IsScalarTower.toAlgHom k B L).comp g := by
    apply Polynomial.algHom_ext
    simp
  rw [h]; rfl

theorem finInf_integral {k B L : Type} [Field k] [CommRing B] [Field L] [Algebra k B] [Algebra k L]
    [Algebra B L] [IsScalarTower k B L] (g : Polynomial k →ₐ[k] B) (hf : g.Finite)
    (K : IntermediateField k L) (hT : algebraMap B L (g X) ∈ K) (b : B) :
    IsIntegral K (algebraMap B L b) := by
  have hi : g.toRingHom.IsIntegral := RingHom.IsIntegral.of_finite hf
  obtain ⟨p, hp, hpb⟩ := hi b
  let φ : Polynomial k →ₐ[k] K := aeval (⟨_, hT⟩ : K)
  have hc : (algebraMap K L).comp φ.toRingHom = (algebraMap B L).comp g.toRingHom := by
    refine RingHom.ext fun q => ?_
    have h1 := finInf_comm (L := L) g q
    have h2 := Polynomial.aeval_algebraMap_apply L (⟨_, hT⟩ : K) q
    exact h2.symm.trans h1
  refine ⟨p.map φ.toRingHom, hp.map _, ?_⟩
  rw [eval₂_map, hc, ← Polynomial.hom_eval₂, hpb, map_zero]

theorem LeafFinInf_of : LeafFinInf := by
  intro k B _ _ _ _ _ hft g hg hf
  have hinj : Function.Injective (algebraMap B (FractionRing B)) := IsFractionRing.injective B _
  have htr : Transcendental k (algebraMap B (FractionRing B) (g X)) := by
    rw [transcendental_iff]
    intro p hp
    rw [finInf_comm] at hp
    apply hg
    apply hinj
    simpa using hp
  refine ⟨fun h => htr (IsAlgebraic.inv_iff.mp h), ?_⟩
  set K := IntermediateField.adjoin k {(algebraMap B (FractionRing B) (g X))⁻¹} with hK
  have hT : algebraMap B (FractionRing B) (g X) ∈ K := by
    have : (algebraMap B (FractionRing B) (g X))⁻¹ ∈ K :=
      IntermediateField.subset_adjoin k _ (Set.mem_singleton _)
    simpa using K.inv_mem this
  obtain ⟨S, hS⟩ := hft.out
  let S' : Set (FractionRing B) := algebraMap B (FractionRing B) '' (S : Set B)
  have : Finite S' := (S.finite_toSet.image _).to_subtype
  have hfd : FiniteDimensional K (IntermediateField.adjoin K S') :=
    IntermediateField.finiteDimensional_adjoin (by
      rintro _ ⟨b, -, rfl⟩
      exact finInf_integral g hf K hT b)
  have hB : ∀ b : B, algebraMap B (FractionRing B) b ∈ IntermediateField.adjoin K S' := by
    intro b
    have hb : b ∈ Algebra.adjoin k (S : Set B) := hS ▸ Algebra.mem_top
    induction hb using Algebra.adjoin_induction with
    | mem x hx => exact IntermediateField.subset_adjoin K S' ⟨x, hx, rfl⟩
    | algebraMap r =>
      rw [← IsScalarTower.algebraMap_apply, IsScalarTower.algebraMap_apply k K (FractionRing B)]
      exact IntermediateField.algebraMap_mem _ _
    | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
    | mul x y _ _ hx hy => rw [map_mul]; exact mul_mem hx hy
  have htop : IntermediateField.adjoin K S' = ⊤ := by
    rw [eq_top_iff]
    intro x _
    obtain ⟨a, b, -, rfl⟩ := IsFractionRing.div_surjective (A := B) x
    exact div_mem (hB a) (hB b)
  rw [htop] at hfd
  exact IntermediateField.topEquiv.toLinearEquiv.finiteDimensional

end LateralTheory.E.E4
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafFinInfPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafFinValPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafFinValPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafOrdInfLocalPf\npublic import Mathlib.RingTheory.DedekindDomain.Ideal.Lemmas\nimport Mathlib.Algebra.AffineMonoid.UniqueSums\nimport Mathlib.Algebra.GroupWithZero.Submonoid.CancelMulZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.FieldTheory.PurelyInseparable.Basic\npublic import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation\npublic import Mathlib.RingTheory.DedekindDomain.IntegralClosure\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.E.E4

open Polynomial IsDedekindDomain

theorem finVal_dedekind (D L : Type) [CommRing D] [IsDedekindDomain D] [Field L] [Algebra D L]
    [IsFractionRing D L] [Finite (HeightOneSpectrum D)] :
    ∃ (n : ℕ) (φ : Lˣ →* Multiplicative (Fin n → ℤ)), ∀ x : Lˣ, φ x = 1 →
      (x : L) ∈ (algebraMap D L).range := by
  obtain ⟨n, ⟨e⟩⟩ := Finite.exists_equiv_fin (HeightOneSpectrum D)
  refine ⟨n, MonoidHom.mk' (fun x => Multiplicative.ofAdd
    (fun i => WithZero.log ((e.symm i).valuation L (x : L)))) ?_, ?_⟩
  · intro x y
    rw [← ofAdd_add]
    congr 1
    funext i
    simp only [Units.val_mul, Pi.add_apply, map_mul]
    exact WithZero.log_mul ((Valuation.ne_zero_iff _).mpr x.ne_zero)
      ((Valuation.ne_zero_iff _).mpr y.ne_zero)
  · intro x hx
    apply HeightOneSpectrum.mem_integers_of_valuation_le_one
    intro v
    have h : WithZero.log ((e.symm (e v)).valuation L (x : L)) = 0 :=
      congrFun (congrArg Multiplicative.toAdd hx) (e v)
    rw [e.symm_apply_apply] at h
    exact WithZero.le_exp_of_log_le h.le

theorem finVal_finite (A D : Type) [CommRing A] [IsLocalRing A] [CommRing D] [IsDedekindDomain D]
    [Algebra A D] [Algebra.IsIntegral A D] [IsDomain A] [Module.IsTorsionFree A D] :
    Finite (HeightOneSpectrum D) := by
  have hf := IsDedekindDomain.primesOver_finite (IsLocalRing.maximalIdeal A) D
  have := hf.to_subtype
  refine Finite.of_injective (β := (IsLocalRing.maximalIdeal A).primesOver D)
    (fun v => ⟨v.asIdeal, v.isPrime, ⟨?_⟩⟩) ?_
  · have := v.isMaximal
    exact (IsLocalRing.eq_maximalIdeal
      (Ideal.isMaximal_under_of_isIntegral_of_isMaximal (R := A) v.asIdeal)).symm
  · intro v w h
    exact HeightOneSpectrum.ext (congrArg Subtype.val h)

theorem finVal_sep (A K L : Type) [CommRing A] [IsLocalRing A] [IsDedekindDomain A] [Field K] [Field L]
    [Algebra A K] [IsFractionRing A K] [Algebra K L] [Algebra A L] [IsScalarTower A K L]
    [FiniteDimensional K L] [Algebra.IsSeparable K L] :
    ∃ (n : ℕ) (φ : Lˣ →* Multiplicative (Fin n → ℤ)), ∀ x : Lˣ, φ x = 1 → IsIntegral A (x : L) := by
  have := integralClosure.isDedekindDomain A K L
  have := integralClosure.isFractionRing_of_finite_extension (A := A) K L
  have hinj : Function.Injective (algebraMap A L) := by
    rw [IsScalarTower.algebraMap_eq A K L]
    exact (algebraMap K L).injective.comp (IsFractionRing.injective A K)
  have : FaithfulSMul A (integralClosure A L) := by
    rw [faithfulSMul_iff_algebraMap_injective]
    intro a b h
    exact hinj (congrArg Subtype.val h)
  have := finVal_finite A (integralClosure A L)
  obtain ⟨n, φ, h⟩ := finVal_dedekind (integralClosure A L) L
  refine ⟨n, φ, fun x hx => ?_⟩
  obtain ⟨y, hy⟩ := h x hx
  rw [← hy]
  exact y.2

theorem finVal_gen (A K L : Type) [CommRing A] [IsLocalRing A] [IsDedekindDomain A] [Field K] [Field L]
    [Algebra A K] [IsFractionRing A K] [Algebra K L] [Algebra A L] [IsScalarTower A K L]
    [FiniteDimensional K L] :
    ∃ (n : ℕ) (φ : Lˣ →* Multiplicative (Fin n → ℤ)), ∀ x : Lˣ, φ x = 1 → IsIntegral A (x : L) := by
  obtain ⟨n, φ, h⟩ := finVal_sep A K (separableClosure K L)
  refine ⟨n, φ.comp (Units.map (Algebra.norm (separableClosure K L))), fun x hx => ?_⟩
  have h1 : IsIntegral A (Algebra.norm (separableClosure K L) (x : L)) := h _ hx
  obtain ⟨m, y, hy⟩ := IsPurelyInseparable.pow_mem (separableClosure K L)
    (ringExpChar (separableClosure K L)) (x : L)
  have hq : 0 < ringExpChar (separableClosure K L) ^ m := expChar_pow_pos (separableClosure K L) _ m
  have h2 : IsIntegral A (y ^ Module.finrank (separableClosure K L) L) := by
    rw [← Algebra.norm_algebraMap, hy, map_pow]
    exact h1.pow _
  have h3 : IsIntegral A y := h2.of_pow Module.finrank_pos
  have : IsScalarTower A (separableClosure K L) L := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
  have h4 : IsIntegral A (algebraMap (separableClosure K L) L y) := h3.algebraMap
  rw [hy] at h4
  exact h4.of_pow hq

theorem LeafFinVal_of : LeafFinVal := by
  intro k L _ _ _ _ s hs hfd
  have hne : ∀ p : Polynomial k, p ≠ 0 → aeval s p ≠ 0 := fun p hp h0 => hp ((transcendental_iff.mp hs) p h0)
  let P : Ideal k[X] := RingHom.ker (evalRingHom (0 : k))
  have hP : P.IsPrime := RingHom.ker_isPrime _
  let A := Localization.AtPrime P
  let K := IntermediateField.adjoin k {s}
  let t : K := ⟨s, IntermediateField.mem_adjoin_simple_self k s⟩
  have hval : ∀ p : k[X], ((aeval t p : K) : L) = aeval s p := fun p =>
    (aeval_algHom_apply K.val t p).symm
  have hne' : ∀ p : k[X], p ≠ 0 → aeval t p ≠ 0 := fun p hp h0 => hne p hp (by rw [← hval, h0]; rfl)
  have hu : ∀ y : P.primeCompl, IsUnit ((aeval t : k[X] →ₐ[k] K).toRingHom y) := by
    intro y
    refine (hne' y ?_).isUnit
    intro h0
    exact y.2 (by rw [h0]; exact P.zero_mem)
  let f : A →+* K := IsLocalization.lift (M := P.primeCompl) hu
  have hf : ∀ p : k[X], f (algebraMap k[X] A p) = aeval t p := fun p => IsLocalization.lift_eq hu p
  have hfrac : ∀ c : A, ∃ a b : k[X], b.eval 0 ≠ 0 ∧ f c = aeval t a / aeval t b := by
    intro c
    obtain ⟨⟨a, b⟩, hab⟩ := IsLocalization.surj P.primeCompl c
    refine ⟨a, b, b.2, ?_⟩
    have := congrArg f hab
    rw [map_mul, hf, hf] at this
    exact (eq_div_iff (hu b).ne_zero).mpr this
  have hinj : Function.Injective f := by
    rw [injective_iff_map_eq_zero]
    intro c hc
    obtain ⟨⟨a, b⟩, hab⟩ := IsLocalization.surj P.primeCompl c
    have h1 := congrArg f hab
    rw [map_mul, hc, zero_mul, hf] at h1
    have ha : a = 0 := by
      by_contra ha
      exact hne' a ha h1.symm
    simp only [ha, map_zero] at hab
    exact (IsLocalization.map_units A b).mul_left_eq_zero.mp hab
  let _ : Algebra A K := f.toAlgebra
  let _ : Algebra A L := ((algebraMap K L).comp f).toAlgebra
  have : IsScalarTower A K L := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
  have : FaithfulSMul A K := (faithfulSMul_iff_algebraMap_injective A K).mpr hinj
  have : IsFractionRing A K := by
    refine IsFractionRing.of_field A K (fun z => ?_)
    obtain ⟨r, q, hz⟩ := (IntermediateField.mem_adjoin_simple_iff k (z : L)).mp z.2
    refine ⟨algebraMap k[X] A r, algebraMap k[X] A q, ?_⟩
    change z = f _ / f _
    rw [hf, hf]
    apply Subtype.ext
    rw [hz, ← hval, ← hval]
    rfl
  obtain ⟨n, φ, h⟩ := finVal_gen A K L
  refine ⟨n, φ, fun x hx => ?_⟩
  obtain ⟨p, hp, hpx⟩ := h x hx
  choose a b hb hab using hfrac
  refine ⟨p.natDegree, fun i => a (p.coeff i), fun i => b (p.coeff i), fun i => hb _, ?_⟩
  rw [hp.as_sum, eval₂_add, eval₂_X_pow, eval₂_finsetSum] at hpx
  rw [← hpx]
  congr 1
  refine Finset.sum_congr rfl (fun i _ => ?_)
  rw [eval₂_mul, eval₂_C, eval₂_X_pow]
  congr 1
  change _ = ((f (p.coeff i) : K) : L)
  rw [hab, ← hval, ← hval]
  rfl

end LateralTheory.E.E4
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafFinValPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfD =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfD", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.E.E4

open MvPolynomial

noncomputable def killFirst (k : Type) [Field k] (s j : ℕ) :
    MvPolynomial (Fin s) k →ₐ[k] MvPolynomial (Fin s) k :=
  aeval (fun i => if i.val < j then 0 else X i)

lemma killFirst_X (k : Type) [Field k] (s j : ℕ) (i : Fin s) :
    killFirst k s j (X i) = if i.val < j then 0 else X i := by
  simp [killFirst]

lemma X_mem_ker_killFirst (k : Type) [Field k] (s j : ℕ) (i : Fin s) (hi : i.val < j) :
    (X i : MvPolynomial (Fin s) k) ∈ RingHom.ker (killFirst k s j) := by
  rw [RingHom.mem_ker]; erw [killFirst_X]; simp [hi]

lemma X_not_mem_ker_killFirst (k : Type) [Field k] (s j : ℕ) (i : Fin s) (hi : ¬ i.val < j) :
    (X i : MvPolynomial (Fin s) k) ∉ RingHom.ker (killFirst k s j) := by
  rw [RingHom.mem_ker]; erw [killFirst_X]; simp [hi, X_ne_zero]

theorem LeafNoetherDim_of : LeafNoetherDim := by
  intro k B _ _ _ _ _ _ hB s g hg hf
  let : Algebra (MvPolynomial (Fin s) k) B := g.toRingHom.toAlgebra
  have hint : Algebra.IsIntegral (MvPolynomial (Fin s) k) B := ⟨fun x => hf.to_isIntegral x⟩
  have hinj : Function.Injective (algebraMap (MvPolynomial (Fin s) k) B) := hg
  by_contra hs
  rcases Nat.lt_or_gt_of_ne hs with h0 | h2
  ·
    obtain rfl : s = 0 := by omega
    apply hB
    rw [← Algebra.IsIntegral.isField_iff_isField hinj]
    exact MulEquiv.isField (Field.toIsField k) (isEmptyAlgEquiv k (Fin 0)).toMulEquiv
  ·
    set A := MvPolynomial (Fin s) k
    let P1 : Ideal A := RingHom.ker (killFirst k s 1)
    let P2 : Ideal A := RingHom.ker (killFirst k s 2)
    have hP1 : P1.IsPrime := RingHom.ker_isPrime _
    have hP2 : P2.IsPrime := RingHom.ker_isPrime _
    let i0 : Fin s := ⟨0, by omega⟩
    let i1 : Fin s := ⟨1, by omega⟩
    have h12 : P1 ≤ P2 := by
      intro p hp
      simp only [P1, P2, RingHom.mem_ker] at hp ⊢
      have : killFirst k s 2 = (killFirst k s 2).comp (killFirst k s 1) := by
        apply MvPolynomial.algHom_ext; intro i
        simp only [AlgHom.comp_apply, killFirst_X]
        by_cases h : i.val < 1
        · simp [h, show i.val < 2 by omega]
        · simp [h, killFirst_X]
      rw [this, AlgHom.comp_apply]; erw [hp]; simp
    have x0P1 : (X i0 : A) ∈ P1 := X_mem_ker_killFirst k s 1 i0 (by simp [i0])
    have x1P2 : (X i1 : A) ∈ P2 := X_mem_ker_killFirst k s 2 i1 (by simp [i1])
    have x1P1 : (X i1 : A) ∉ P1 := X_not_mem_ker_killFirst k s 1 i1 (by simp [i1])
    have : (⊥ : Ideal B).IsPrime := Ideal.isPrime_bot
    have hc0 : Ideal.under A (⊥ : Ideal B) = ⊥ := by
      exact Ideal.comap_bot_of_injective _ hinj
    obtain ⟨Q1, -, hQ1, hcQ1⟩ :=
      Ideal.exists_ideal_over_prime_of_isIntegral_of_isPrime P1 (⊥ : Ideal B) (by rw [hc0]; exact bot_le)
    obtain ⟨Q2, hQ12, hQ2, hcQ2⟩ :=
      Ideal.exists_ideal_over_prime_of_isIntegral_of_isPrime P2 Q1 (by rw [hcQ1]; exact h12)
    have hQ1ne : Q1 ≠ ⊥ := by
      rintro rfl
      rw [hc0] at hcQ1
      apply X_ne_zero (R := k) i0
      have : (X i0 : A) ∈ (⊥ : Ideal A) := hcQ1 ▸ x0P1
      simp at this
    have hQ1max : Q1.IsMaximal := hQ1.isMaximal hQ1ne
    have hne : Q1 ≠ Q2 := by
      rintro rfl
      rw [hcQ1] at hcQ2
      exact x1P1 (hcQ2 ▸ x1P2)
    have := hQ1max.eq_of_le hQ2.ne_top hQ12
    exact hne this

end LateralTheory.E.E4
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfD =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.CurveUnitsOrderAtInfinity =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.CurveUnitsOrderAtInfinity", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfF\npublic import Development.EtaleCohomology.EtaleSheaves.LeafFinInfPf\npublic import Development.EtaleCohomology.EtaleSheaves.LeafFinValPf\npublic import Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.EtaleCohomology.EtaleSheaves.LeafUnitsPfC\n\n"}
section -- clump:auto
@[expose] public section

open Polynomial IntermediateField.algebraAdjoinAdjoin

namespace LateralTheory.E.CurveUnitsOrderAtInfinity

theorem minpolyCoeff : LateralTheory.E.E4.LeafMinpolyCoeff := by
  intro k L _ _ _ s hs F hF x hx i
  subst hF
  have : UniqueFactorizationMonoid (Algebra.adjoin k {s}) := hs.uniqueFactorizationMonoid_adjoin
  have : IsIntegrallyClosed (Algebra.adjoin k {s}) := inferInstance
  rw [minpoly.isIntegrallyClosed_eq_field_fractions' (IntermediateField.adjoin k {s}) hx, coeff_map]
  exact ((minpoly (Algebra.adjoin k {s}) x).coeff i).2

theorem ordInfHom : LateralTheory.E.E4.LeafOrdInfHom :=
  LateralTheory.E.E4.LeafOrdInfHom_of_local (LateralTheory.E.E4.LeafOrdInfLocal_of' LateralTheory.E.E4.LeafFinInf_of LateralTheory.E.E4.LeafFinVal_of)

theorem LeafUnits_of : LateralTheory.E.E4.LeafUnits :=
  LateralTheory.E.E4.LeafUnits_of (LateralTheory.E.E4.LeafUnitsFG_of_dim LateralTheory.E.E4.LeafNoetherDim_of
    (LateralTheory.E.E4.LeafOrdAtInfinity_of_cut ordInfHom minpolyCoeff))

end LateralTheory.E.CurveUnitsOrderAtInfinity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.CurveUnitsOrderAtInfinity =====
