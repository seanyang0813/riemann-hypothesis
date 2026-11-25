module

public import Mathlib.RingTheory.QuasiFinite.Weakly
public import Mathlib.RingTheory.ZariskisMainTheorem
public import Mathlib.Algebra.CharP.Algebra
public import Mathlib.FieldTheory.IntermediateField.Adjoin.Basic
public import Mathlib.RingTheory.DedekindDomain.IntegralClosure
public import Mathlib.RingTheory.Jacobson.Ring
public import Mathlib.RingTheory.NoetherNormalization
public import Mathlib.Algebra.Algebra.ZMod
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsDiscreteValuationRingIntegralClosurePadicInt

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.IntegralModels.FiniteIntegralClosureLocal, GroundTheory.HeightsAndTheta.Heights.IntegralModels.FiniteIntegralClosureCharZero

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.IntegralModels.FiniteIntegralClosureLocal =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.IntegralModels.FiniteIntegralClosureLocal", "h": "module\n\npublic import Mathlib.RingTheory.QuasiFinite.Weakly\nimport Mathlib.Algebra.AffineMonoid.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\npublic import Mathlib.RingTheory.ZariskisMainTheorem\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.CharP.Algebra\npublic import Mathlib.FieldTheory.IntermediateField.Adjoin.Basic\npublic import Mathlib.RingTheory.DedekindDomain.IntegralClosure\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

open scoped nonZeroDivisors

namespace GroundTheory.Heights₂.Heights.Model

theorem module_finite_of_forall_isMaximal {A M : Type*} [CommRing A] [AddCommGroup M] [Module A M]
    (h : ∀ 𝔪 : Ideal A, 𝔪.IsMaximal →
      ∃ r ∉ 𝔪, ∃ N : Submodule A M, N.FG ∧ ∀ x : M, ∃ n : ℕ, r ^ n • x ∈ N) :
    Module.Finite A M := by
  classical
  choose! r hr N hN hx using h
  set s : Set A := r '' {𝔪 | 𝔪.IsMaximal}
  have hs : Ideal.span s = ⊤ := by
    by_contra hne
    obtain ⟨𝔪, h𝔪, hle⟩ := Ideal.exists_le_maximal _ hne
    exact hr 𝔪 h𝔪 (hle (Ideal.subset_span ⟨𝔪, h𝔪, rfl⟩))
  obtain ⟨t, hts, ht⟩ := (Ideal.span_eq_top_iff_finite s).mp hs
  have hmt : ∀ a ∈ t, ∃ 𝔪 : Ideal A, 𝔪.IsMaximal ∧ r 𝔪 = a := fun a ha => hts ha
  choose! m hm hrm using hmt
  let P : Submodule A M := ⨆ a ∈ t, N (m a)
  have hP : P.FG := Submodule.fg_biSup t _ fun a ha => hN (m a) (hm a ha)
  suffices hPt : P = ⊤ from ⟨hPt ▸ hP⟩
  rw [eq_top_iff]
  rintro x -
  refine Submodule.mem_of_span_eq_top_of_smul_pow_mem P (t : Set A) ht x ?_
  rintro ⟨a, ha⟩
  obtain ⟨n, hn⟩ := hx (m a) (hm a ha) x
  refine ⟨n, ?_⟩
  have hle : N (m a) ≤ P := le_iSup₂ (f := fun a (_ : a ∈ t) => N (m a)) a ha
  show a ^ n • x ∈ P
  rw [← hrm a ha]
  exact hle hn

theorem exists_pow_smul_mem_of_weaklyQuasiFiniteAt
    (A : Type*) [CommRing A] [IsDomain A] [CharZero A]
    (K : Type*) [Field K] [Algebra A K] [IsFractionRing A K]
    (d : ℕ) [Algebra (MvPolynomial (Fin d) ℤ) A]
    (hinj : Function.Injective (algebraMap (MvPolynomial (Fin d) ℤ) A))
    [Algebra.FiniteType (MvPolynomial (Fin d) ℤ) A]
    (𝔪 : Ideal A) [𝔪.IsPrime] [Algebra.WeaklyQuasiFiniteAt (MvPolynomial (Fin d) ℤ) 𝔪] :
    ∃ r ∉ 𝔪, ∃ N : Submodule A (integralClosure A K), N.FG ∧
      ∀ x : integralClosure A K, ∃ n : ℕ, r ^ n • x ∈ N := by
  classical
  set C := MvPolynomial (Fin d) ℤ
  have hZ := Algebra.ZariskisMainProperty.of_finiteType_of_weaklyQuasiFiniteAt (R := C) 𝔪
  obtain ⟨r, hr𝔪, hrint, hm⟩ := Algebra.zariskisMainProperty_iff.mp hZ
  choose m hm using hm
  let _ : Algebra C K := ((algebraMap A K).comp (algebraMap C A)).toAlgebra
  have : IsScalarTower C A K := IsScalarTower.of_algebraMap_eq' rfl
  have hinjCK : Function.Injective (algebraMap C K) := (IsFractionRing.injective A K).comp hinj
  have : FaithfulSMul C K := (faithfulSMul_iff_algebraMap_injective C K).mpr hinjCK
  let _ : Algebra (FractionRing C) K := FractionRing.liftAlgebra C K
  have hr0 : algebraMap A K r ≠ 0 := by
    rw [map_ne_zero_iff _ (IsFractionRing.injective A K)]
    exact fun h => hr𝔪 (h ▸ 𝔪.zero_mem)
  have hintK : ∀ a : A, IsIntegral C a → IsIntegral (FractionRing C) (algebraMap A K a) :=
    fun a ha => (ha.map (IsScalarTower.toAlgHom C A K)).tower_top
  have : FiniteDimensional (FractionRing C) K := by
    obtain ⟨t, ht⟩ := Algebra.FiniteType.out (R := C) (A := A)
    let T : Set K := insert (algebraMap A K r) ((fun x => algebraMap A K (r ^ m x * x)) '' t)
    have hTint : ∀ z ∈ T, IsIntegral (FractionRing C) z := by
      rintro z (rfl | ⟨x, -, rfl⟩)
      · exact hintK r hrint
      · exact hintK _ (hm x)
    have : Finite T := ((t.finite_toSet.image _).insert _).to_subtype
    have hfd := IntermediateField.finiteDimensional_adjoin hTint
    have htop : IntermediateField.adjoin (FractionRing C) T = ⊤ := by
      rw [eq_top_iff]
      rintro z -
      have hA : ∀ a : A, algebraMap A K a ∈ IntermediateField.adjoin (FractionRing C) T := by
        intro a
        have ha : a ∈ Algebra.adjoin C (t : Set A) := ht ▸ Algebra.mem_top
        induction ha using Algebra.adjoin_induction with
        | mem x hx =>
          have hr' : algebraMap A K r ∈ IntermediateField.adjoin (FractionRing C) T :=
            IntermediateField.subset_adjoin _ _ (Set.mem_insert _ _)
          have hx' : algebraMap A K (r ^ m x * x) ∈ IntermediateField.adjoin (FractionRing C) T :=
            IntermediateField.subset_adjoin _ _ (Set.mem_insert_of_mem _ ⟨x, hx, rfl⟩)
          have : algebraMap A K x = algebraMap A K (r ^ m x * x) / algebraMap A K r ^ m x := by
            rw [map_mul, map_pow, mul_div_cancel_left₀ _ (pow_ne_zero _ hr0)]
          rw [this]
          exact div_mem hx' (pow_mem hr' _)
        | algebraMap c =>
          rw [← IsScalarTower.algebraMap_apply C A K, IsScalarTower.algebraMap_apply C (FractionRing C) K]
          exact IntermediateField.algebraMap_mem _ _
        | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
        | mul x y _ _ hx hy => rw [map_mul]; exact mul_mem hx hy
      obtain ⟨a, b, -, rfl⟩ := IsFractionRing.div_surjective (A := A) z
      exact div_mem (hA a) (hA b)
    rw [htop] at hfd
    exact (IntermediateField.topEquiv (F := FractionRing C) (E := K)).toLinearEquiv.finiteDimensional
  have : CharZero (FractionRing C) :=
    charZero_of_injective_algebraMap (IsFractionRing.injective C (FractionRing C))
  have : Algebra.IsSeparable (FractionRing C) K := Algebra.IsSeparable.of_integral _ _
  have : Module.Finite C (integralClosure C K) :=
    IsIntegralClosure.finite C (FractionRing C) K (integralClosure C K)
  obtain ⟨g, hg⟩ := (Module.Finite.fg_top : (⊤ : Submodule C (integralClosure C K)).FG)
  let ι : integralClosure C K → integralClosure A K := fun y => ⟨y.1, y.2.tower_top⟩
  let N : Submodule A (integralClosure A K) := Submodule.span A (ι '' g)
  have hN : ∀ y : integralClosure C K, ι y ∈ N := by
    intro y
    have hy : y ∈ Submodule.span C (g : Set (integralClosure C K)) := hg ▸ Submodule.mem_top
    induction hy using Submodule.span_induction with
    | mem y hy => exact Submodule.subset_span ⟨y, hy, rfl⟩
    | zero => exact N.zero_mem
    | add y z _ _ hy hz =>
      have : ι (y + z) = ι y + ι z := rfl
      rw [this]; exact N.add_mem hy hz
    | smul c y _ hy =>
      have : ι (c • y) = algebraMap C A c • ι y := by
        apply Subtype.ext
        change c • (y : K) = algebraMap C A c • (y : K)
        rw [Algebra.smul_def, Algebra.smul_def, ← IsScalarTower.algebraMap_apply]
      rw [this]; exact N.smul_mem _ hy
  refine ⟨r, hr𝔪, N, Submodule.fg_span (g.finite_toSet.image ι), fun x => ?_⟩
  obtain ⟨P, hPm, hPx⟩ := x.2
  set D := P.natDegree
  set M := (Finset.range (D + 1)).sup fun i => m (P.coeff i)
  let A₀ := integralClosure C A
  have hcoeff : ∀ i, IsIntegral C ((P.scaleRoots (r ^ M)).coeff i) := by
    intro i
    rw [Polynomial.coeff_scaleRoots]
    rcases lt_trichotomy i D with hi | hi | hi
    · have hmi : m (P.coeff i) ≤ M :=
        Finset.le_sup (f := fun i => m (P.coeff i)) (Finset.mem_range.mpr (by omega))
      obtain ⟨k, hk⟩ : ∃ k, D - i = k + 1 := ⟨D - i - 1, by omega⟩
      have : P.coeff i * (r ^ M) ^ (D - i) =
          (r ^ m (P.coeff i) * P.coeff i) * (r ^ (M - m (P.coeff i)) * (r ^ M) ^ k) := by
        rw [hk, pow_succ]
        rw [show (r ^ M) = r ^ m (P.coeff i) * r ^ (M - m (P.coeff i)) by
          rw [← pow_add, Nat.add_sub_cancel' hmi]]
        ring
      rw [this]
      exact (hm _).mul ((hrint.pow _).mul ((hrint.pow _).pow _))
    · rw [hi, Nat.sub_self, pow_zero, mul_one, ← Polynomial.leadingCoeff, hPm.leadingCoeff]
      exact isIntegral_one
    · rw [Polynomial.coeff_eq_zero_of_natDegree_lt hi, zero_mul]
      exact isIntegral_zero
  have hlifts : P.scaleRoots (r ^ M) ∈ Polynomial.lifts (algebraMap A₀ A) := by
    rw [Polynomial.lifts_iff_coeff_lifts]
    intro i
    exact ⟨⟨_, hcoeff i⟩, rfl⟩
  have hmonic : (P.scaleRoots (r ^ M)).Monic := by
    rw [Polynomial.Monic, Polynomial.leadingCoeff, Polynomial.natDegree_scaleRoots,
      Polynomial.coeff_scaleRoots_natDegree, hPm.leadingCoeff]
  obtain ⟨Q, hQ, -, hQm⟩ := Polynomial.lifts_and_degree_eq_and_monic hlifts hmonic
  have hint : IsIntegral C (algebraMap A K (r ^ M) * (x : K)) := by
    have h0 : Polynomial.aeval (algebraMap A K (r ^ M) * (x : K)) (P.scaleRoots (r ^ M)) = 0 :=
      Polynomial.scaleRoots_aeval_eq_zero (by rw [Polynomial.aeval_def]; exact hPx)
    have h1 : IsIntegral A₀ (algebraMap A K (r ^ M) * (x : K)) := by
      refine ⟨Q, hQm, ?_⟩
      rw [← Polynomial.aeval_def, ← Polynomial.aeval_map_algebraMap A, hQ]
      exact h0
    exact isIntegral_trans (R := C) (A := A₀) _ h1
  refine ⟨M, ?_⟩
  have : r ^ M • x = ι ⟨_, hint⟩ := by
    apply Subtype.ext
    change r ^ M • (x : K) = _
    rw [Algebra.smul_def]
  rw [this]
  exact hN _

end GroundTheory.Heights₂.Heights.Model
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.IntegralModels.FiniteIntegralClosureLocal =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.IntegralModels.FiniteIntegralClosureCharZero =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.IntegralModels.FiniteIntegralClosureCharZero", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsDiscreteValuationRingIntegralClosurePadicInt\npublic import Mathlib.RingTheory.Jacobson.Ring\npublic import GroundTheory.HeightsAndTheta.Heights.IntegralModels.FiniteIntegralClosureLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\npublic import Mathlib.RingTheory.NoetherNormalization\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Algebra.ZMod\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

open scoped nonZeroDivisors

namespace GroundTheory.Heights₂.Heights.Model

theorem isJacobsonRing_int : IsJacobsonRing ℤ := by
  rw [isJacobsonRing_iff_prime_eq]
  intro P hP
  by_cases h0 : P = ⊥
  · subst h0
    refine le_antisymm (fun x hx => ?_) Ideal.le_jacobson
    rw [Ideal.mem_jacobson_iff] at hx
    obtain ⟨z₁, hz₁⟩ := hx 1
    obtain ⟨z₂, hz₂⟩ := hx 2
    rw [Ideal.mem_bot] at hz₁ hz₂ ⊢
    have e1 : (x + 1) * z₁ = 1 := by linear_combination hz₁
    have e2 : (2 * x + 1) * z₂ = 1 := by linear_combination hz₂
    have h1 : IsUnit (x + 1) := ⟨⟨x + 1, z₁, e1, (mul_comm _ _).trans e1⟩, rfl⟩
    have h2 : IsUnit (2 * x + 1) := ⟨⟨2 * x + 1, z₂, e2, (mul_comm _ _).trans e2⟩, rfl⟩
    rw [Int.isUnit_iff] at h1 h2
    omega
  · have : P.IsMaximal := IsPrime.to_maximal_ideal h0
    exact Ideal.jacobson_eq_self_of_isMaximal

theorem exists_prime_mem_of_isMaximal (A : Type*) [CommRing A] [Algebra.FiniteType ℤ A]
    (𝔪 : Ideal A) [𝔪.IsMaximal] : ∃ p : ℕ, p.Prime ∧ (p : A) ∈ 𝔪 := by
  apply GlobalTheory.exists_prime_natCast_mem_of_finiteType_int

theorem exists_pow_smul_mem_of_isMaximal
    (A : Type*) [CommRing A] [IsDomain A] [CharZero A] [Algebra.FiniteType ℤ A]
    (K : Type*) [Field K] [Algebra A K] [IsFractionRing A K]
    (𝔪 : Ideal A) [𝔪.IsMaximal] :
    ∃ r ∉ 𝔪, ∃ N : Submodule A (integralClosure A K), N.FG ∧
      ∀ x : integralClosure A K, ∃ n : ℕ, r ^ n • x ∈ N := by
  classical
  obtain ⟨p, hp, hp𝔪⟩ := exists_prime_mem_of_isMaximal A 𝔪
  have : Fact p.Prime := ⟨hp⟩
  set I : Ideal A := Ideal.span {(p : A)}
  have hI𝔪 : I ≤ 𝔪 := (Ideal.span_singleton_le_iff_mem _).mpr hp𝔪
  have : Nontrivial (A ⧸ I) :=
    Ideal.Quotient.nontrivial_iff.mpr (ne_top_of_le_ne_top (Ideal.IsMaximal.ne_top ‹_›) hI𝔪)
  have : CharP (A ⧸ I) p := (CharP.charP_iff_prime_eq_zero hp).mpr (by
    rw [← map_natCast (Ideal.Quotient.mk I), Ideal.Quotient.eq_zero_iff_mem]
    exact Ideal.subset_span rfl)
  let _ : Algebra (ZMod p) (A ⧸ I) := ZMod.algebra (A ⧸ I) p
  have : Algebra.FiniteType (ZMod p) (A ⧸ I) :=
    Algebra.FiniteType.of_restrictScalars_finiteType ℤ (ZMod p) (A ⧸ I)
  obtain ⟨d, g, hginj, hgfin⟩ := exists_finite_inj_algHom_of_fg (ZMod p) (A ⧸ I)
  have hy : ∀ i, ∃ y : A, Ideal.Quotient.mk I y = g (MvPolynomial.X i) :=
    fun i => Ideal.Quotient.mk_surjective _
  choose y hy using hy
  set C := MvPolynomial (Fin d) ℤ
  let φ : C →ₐ[ℤ] A := MvPolynomial.aeval y
  let red : C →+* MvPolynomial (Fin d) (ZMod p) := MvPolynomial.map (Int.castRingHom (ZMod p))
  have hkey : ∀ F : C, Ideal.Quotient.mk I (φ F) = g (red F) := by
    intro F
    have : (Ideal.Quotient.mk I).comp φ.toRingHom = g.toRingHom.comp red :=
      MvPolynomial.ringHom_ext (fun n => by simp [φ, red]) (fun i => by
        change Ideal.Quotient.mk I (MvPolynomial.aeval y (MvPolynomial.X i)) =
          g (MvPolynomial.map _ (MvPolynomial.X i))
        rw [MvPolynomial.aeval_X, MvPolynomial.map_X, hy])
    exact congrArg (fun f => f F) this
  have hp0 : (p : A) ≠ 0 := Nat.cast_ne_zero.mpr hp.ne_zero
  have hstep : ∀ F : C, φ F = 0 → ∃ G, F = MvPolynomial.C (p : ℤ) * G ∧ φ G = 0 := by
    intro F hF
    have h1 : red F = 0 := hginj (by rw [← hkey, hF, map_zero, map_zero])
    have h2 : F ∈ RingHom.ker red := h1
    rw [MvPolynomial.ker_map, ZMod.ker_intCastRingHom, Ideal.map_span, Set.image_singleton] at h2
    obtain ⟨G, hG⟩ := Ideal.mem_span_singleton'.mp h2
    refine ⟨G, by rw [← hG, mul_comm], ?_⟩
    rw [← hG, map_mul, MvPolynomial.aeval_C, algebraMap_int_eq, eq_intCast, Int.cast_natCast] at hF
    exact (mul_eq_zero.mp hF).resolve_right hp0
  have hpow : ∀ k : ℕ, ∀ F : C, φ F = 0 → ∃ G, F = MvPolynomial.C ((p : ℤ) ^ k) * G := by
    intro k
    induction k with
    | zero => intro F _; exact ⟨F, by simp⟩
    | succ k ih =>
      intro F hF
      obtain ⟨G, rfl, hG⟩ := hstep F hF
      obtain ⟨H, rfl⟩ := ih G hG
      exact ⟨H, by rw [pow_succ, map_mul, mul_assoc, mul_left_comm]⟩
  have hφinj : Function.Injective φ := by
    rw [injective_iff_map_eq_zero]
    intro F hF
    ext m
    rw [MvPolynomial.coeff_zero]
    by_contra hc
    obtain ⟨G, hG⟩ := hpow (AddMonoidAlgebra.coeff F m).natAbs F hF
    have hdvd : (p : ℤ) ^ (AddMonoidAlgebra.coeff F m).natAbs ∣ AddMonoidAlgebra.coeff F m :=
      ⟨AddMonoidAlgebra.coeff G m, by
        conv_lhs => rw [hG]
        rw [MvPolynomial.coeff_C_mul]⟩
    have h1 := Int.natAbs_dvd_natAbs.mpr hdvd
    rw [Int.natAbs_pow, Int.natAbs_natCast] at h1
    have h2 := Nat.le_of_dvd (Int.natAbs_pos.mpr hc) h1
    exact absurd h2 (not_le.mpr (Nat.lt_pow_self hp.one_lt))
  let _ : Algebra C A := φ.toRingHom.toAlgebra
  have : IsScalarTower ℤ C A := IsScalarTower.of_algebraMap_eq fun n => by simp
  have : Algebra.FiniteType C A := Algebra.FiniteType.of_restrictScalars_finiteType ℤ C A
  have : Algebra.WeaklyQuasiFiniteAt C 𝔪 := by
    rw [Algebra.weaklyQuasiFiniteAt_iff]
    let _ : Algebra (MvPolynomial (Fin d) (ZMod p)) (A ⧸ I) := g.toRingHom.toAlgebra
    have : Module.Finite (MvPolynomial (Fin d) (ZMod p)) (A ⧸ I) := hgfin
    let _ : Algebra C (MvPolynomial (Fin d) (ZMod p)) := red.toAlgebra
    have : IsScalarTower C (MvPolynomial (Fin d) (ZMod p)) (A ⧸ I) :=
      IsScalarTower.of_algebraMap_eq fun F => hkey F
    have : Module.Finite C (MvPolynomial (Fin d) (ZMod p)) :=
      Module.Finite.of_surjective (Algebra.linearMap C _)
        (MvPolynomial.map_surjective _ (ZMod.intCast_surjective))
    have : Module.Finite C (A ⧸ I) := Module.Finite.trans (MvPolynomial (Fin d) (ZMod p)) (A ⧸ I)
    set L := Localization.AtPrime 𝔪
    set J := (𝔪.under C).map (algebraMap C L)
    have hpJ : ((p : ℕ) : L) ∈ J := by
      have hmem : ((p : ℕ) : C) ∈ 𝔪.under C := by
        change algebraMap C A (p : C) ∈ 𝔪
        rw [map_natCast]
        exact hp𝔪
      have := Ideal.mem_map_of_mem (algebraMap C L) hmem
      rwa [map_natCast] at this
    let f₀ : A →ₐ[C] L ⧸ J := (Ideal.Quotient.mkₐ C J).comp (IsScalarTower.toAlgHom C A L)
    have hf₀ : ∀ a ∈ I, f₀ a = 0 := by
      intro a ha
      obtain ⟨b, rfl⟩ := Ideal.mem_span_singleton'.mp ha
      simp only [f₀, AlgHom.comp_apply, IsScalarTower.toAlgHom_apply, Ideal.Quotient.mkₐ_eq_mk,
        map_mul, map_natCast]
      have hp' : ((p : ℕ) : L ⧸ J) = 0 := by
        rw [← map_natCast (Ideal.Quotient.mk J), Ideal.Quotient.eq_zero_iff_mem]
        exact hpJ
      rw [hp', mul_zero]
    let f : (A ⧸ I) →ₐ[C] L ⧸ J := Ideal.Quotient.liftₐ I f₀ hf₀
    refine Algebra.QuasiFinite.of_forall_exists_mul_mem_range f fun x => ?_
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
    obtain ⟨⟨a, s⟩, rfl⟩ := IsLocalization.mk'_surjective 𝔪.primeCompl x
    refine ⟨Ideal.Quotient.mk I s, ?_, ⟨Ideal.Quotient.mk I a, ?_⟩⟩
    · exact (IsLocalization.map_units L s).map (Ideal.Quotient.mk J)
    · change f₀ a = _ * f₀ s
      simp only [f₀, AlgHom.comp_apply, IsScalarTower.toAlgHom_apply, Ideal.Quotient.mkₐ_eq_mk]
      rw [← map_mul, IsLocalization.mk'_spec]
  exact exists_pow_smul_mem_of_weaklyQuasiFiniteAt A K d hφinj 𝔪

theorem finite_integralClosure_fractionRing_of_charZero
    (A : Type*) [CommRing A] [IsDomain A] [CharZero A] [Algebra.FiniteType ℤ A]
    (K : Type*) [Field K] [Algebra A K] [IsFractionRing A K] :
    Module.Finite A (integralClosure A K) :=
  module_finite_of_forall_isMaximal fun 𝔪 _ => exists_pow_smul_mem_of_isMaximal A K 𝔪

theorem finite_integralClosure_of_charZero
    (A : Type*) [CommRing A] [IsDomain A] [CharZero A] [Algebra.FiniteType ℤ A]
    (K : Type*) [Field K] [Algebra A K] [IsFractionRing A K]
    (L : Type*) [Field L] [Algebra K L] [FiniteDimensional K L] [Algebra A L]
    [IsScalarTower A K L] :
    Module.Finite A (integralClosure A L) := by
  have : Module.Finite A (integralClosure A K) :=
    finite_integralClosure_fractionRing_of_charZero A K
  set A' := integralClosure A K
  have : IsNoetherianRing A := Algebra.FiniteType.isNoetherianRing ℤ A
  have : IsNoetherianRing A' := IsNoetherianRing.of_finite A A'
  have : IsIntegrallyClosed A' := integralClosure.isIntegrallyClosedOfFiniteExtension K (L := K)
  have : IsFractionRing A' K := integralClosure.isFractionRing_of_finite_extension K K
  have : CharZero K := charZero_of_injective_algebraMap (IsFractionRing.injective A K)
  have : Algebra.IsSeparable K L := Algebra.IsSeparable.of_integral K L
  have : IsScalarTower A' K L := inferInstance
  have : IsScalarTower A A' L := inferInstance
  have : Module.Finite A' (integralClosure A' L) :=
    IsIntegralClosure.finite A' K L (integralClosure A' L)
  have : Module.Finite A (integralClosure A' L) := Module.Finite.trans A' _
  have hle : (integralClosure A L).toSubmodule ≤
      (integralClosure A' L).toSubmodule.restrictScalars A := fun y hy => hy.tower_top
  have : IsNoetherian A ((integralClosure A' L).toSubmodule.restrictScalars A) :=
    isNoetherian_of_isNoetherianRing_of_finite A (integralClosure A' L)
  have : IsNoetherian A (integralClosure A L).toSubmodule := isNoetherian_of_le hle
  exact Module.IsNoetherian.finite A (integralClosure A L).toSubmodule

end GroundTheory.Heights₂.Heights.Model
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.IntegralModels.FiniteIntegralClosureCharZero =====
