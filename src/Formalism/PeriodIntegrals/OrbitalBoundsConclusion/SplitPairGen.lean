module

public import Formalism.PeriodIntegrals.SqPair
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SquarePairGluing.ExistsDenLe
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SquarePairGluing.ConjTransposeMemLam
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PiNonunit
public import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
public import Mathlib.CategoryTheory.Category.Basic
public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import Mathlib.RingTheory.LocalRing.Defs
public import Mathlib.RingTheory.Ideal.BigOperators
public import Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic
public import Mathlib.RingTheory.Henselian
public import Formalism.HermitianLattices.HermitianLatticesProofs.UnimodUnramUnique
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SquarePairLocal.SqPairLocalOf
public import Formalism.LocalToGlobal.PairingIndexBounds.SplitPairEquations.SplitPairGen
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SquarePairGluing.SqPairGlueMain, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.CmpPair, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SplPlane, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SplOff, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.CmpSplit, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.FiniteAdeleIdempotentOfFMulSelf, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PairBaseOfLag, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PlaneIsUnitOfSubOneMem, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.HyperbolicPlane, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PairDichotomy, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SelCore, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SelMain, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PairSelection, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.StepGlue, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocCartanPair, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SqPairLocal, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SplitPairGen

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SquarePairGluing.SqPairGlueMain =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SquarePairGluing.SqPairGlueMain", "h": "module\n\npublic import Formalism.PeriodIntegrals.SqPair\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SquarePairGluing.ExistsDenLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SquarePairGluing.ConjTransposeMemLam\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Matrix

namespace PI.SqPairW

open Formalism.L2.PairingIndexBounds.Eq.SqG

variable {E : Type} [Field E] [NumberField E] [StarRing E] {N : ℕ}

theorem crt_exists (R : Subring (Matrix (Fin N) (Fin N) E)) (f : ℕ → Matrix (Fin N) (Fin N) E) (K : ℕ)
    (S : Finset ℕ) : (∀ p ∈ S, p.Prime) → (∀ p ∈ S, f p ∈ R) →
    ∃ e ∈ R, ∀ p ∈ S, ∃ d ∈ R, e = f p + ((p : ℤ) ^ K) • d := by
  intro hprime hf
  classical
  obtain ⟨Q, hQdef⟩ : ∃ Q : ℕ → ℤ, Q = fun p => ∏ q ∈ S.erase p, ((q : ℤ) ^ K) := ⟨_, rfl⟩
  have hcop : ∀ p ∈ S, ∃ a b : ℤ, a * (p : ℤ) ^ K + b * Q p = 1 := by
    intro p hp
    have h : IsCoprime ((p : ℤ) ^ K) (Q p) := by
      rw [hQdef]
      apply IsCoprime.prod_right
      intro q hq
      apply IsCoprime.pow
      exact Nat.isCoprime_iff_coprime.2 ((Nat.coprime_primes (hprime p hp)
        (hprime q (Finset.mem_of_mem_erase hq))).2 (Finset.ne_of_mem_erase hq).symm)
    exact h
  choose! a b hab using hcop
  refine ⟨∑ q ∈ S, (b q * Q q) • f q, ?_, ?_⟩
  · exact sum_mem fun q hq => zsmul_mem (hf q hq) _
  · intro p hp
    have hdiv : ∀ q ∈ S.erase p, ∃ t : ℤ, Q q = (p : ℤ) ^ K * t := by
      intro q hq
      have hm : p ∈ S.erase q := Finset.mem_erase.2 ⟨(Finset.ne_of_mem_erase hq).symm, hp⟩
      have hd := Finset.dvd_prod_of_mem (fun r : ℕ => ((r : ℤ) ^ K)) hm
      rw [hQdef]
      exact hd
    choose! t ht using hdiv
    refine ⟨(-a p) • f p + ∑ q ∈ S.erase p, (b q * t q) • f q,
      add_mem (zsmul_mem (hf p hp) _)
        (sum_mem fun q hq => zsmul_mem (hf q (Finset.mem_of_mem_erase hq)) _), ?_⟩
    have hsplit := Finset.add_sum_erase S (fun q => (b q * Q q) • f q) hp
    rw [← hsplit]
    have e1 : b p * Q p = 1 + (p : ℤ) ^ K * (-a p) := by linear_combination hab p hp
    have e2 : ∑ q ∈ S.erase p, (b q * Q q) • f q
        = ((p : ℤ) ^ K) • ∑ q ∈ S.erase p, (b q * t q) • f q := by
      rw [Finset.smul_sum]
      refine Finset.sum_congr rfl fun q hq => ?_
      rw [smul_smul, ht q hq]
      congr 1
      ring
    rw [e2, e1, add_smul, one_smul, smul_add, smul_smul, add_assoc]

theorem sqPairGlue_main : PI.SqPair.PLocalAll → SplitPairGen := by
  intro hP E _ _ _ hCM N L' L'' hN hL' hL'' n hn
  have hloc := hP E hCM N L' L'' hN hL' hL'' n hn
  unfold PI.SqPair.PLocal at hloc
  choose! f hf1 hf2 hf3 using hloc
  have hstar : ∀ x ∈ lam L' L'', xᴴ ∈ lam L' L'' := fun x hx => conjTranspose_mem_lam hL' hL'' hx
  obtain ⟨D, hD0, hD⟩ := exists_den hL' hL'' hn
  obtain ⟨e, heR, he⟩ := crt_exists (lam L' L'') f D D.primeFactors
    (fun p hp => Nat.prime_of_mem_primeFactors hp) (fun p hp => ⟨hf1 p (Nat.prime_of_mem_primeFactors hp),
      hf2 p (Nat.prime_of_mem_primeFactors hp)⟩)
  refine ⟨e, heR.1, heR.2, ?_⟩
  intro M hM y hy

  have himg : ∀ r ∈ lam L' L'', r *ᵥ y ∈ L' ∨ r *ᵥ y ∈ L'' := by
    intro r hr
    rcases hy with hy | hy
    · exact Or.inl (hr.1 y hy)
    · exact Or.inr (hr.2 y hy)
  have key : M *ᵥ y ∈ yg L' L'' n := by
    apply mem_of_local
    intro p hp
    by_cases hpD : p ∣ D
    · have hpS : p ∈ D.primeFactors := Nat.mem_primeFactors.mpr ⟨hp, hpD, hD0.ne'⟩
      obtain ⟨d, hdR, hed⟩ := he p hpS
      rw [hed] at hM
      obtain ⟨M', hM', r, hrR, hMr⟩ := mset_cong hstar ⟨hf1 p hp, hf2 p hp⟩ hdR ((p : ℤ) ^ D) M hM
      obtain ⟨s, hps, m, hm1, hm2, hsm⟩ := hf3 p hp M' hM' y hy
      have hs : s • (M' *ᵥ y) ∈ yg L' L'' n := by
        rw [← Int.cast_smul_eq_zsmul E, hsm]
        exact ⟨m, hm1, hm2, rfl⟩
      have hr : (D : ℤ) • (r *ᵥ y) ∈ yg L' L'' n := hD _ (himg r hrR)
      obtain ⟨a, D', hpD', hDa⟩ := Nat.exists_eq_pow_mul_and_not_dvd hD0.ne' p hp.ne_one
      have ha : a ≤ D := by
        have h1 : p ^ a ≤ D := Nat.le_of_dvd hD0 ⟨D', hDa⟩
        have h2 : a < p ^ a := Nat.lt_pow_self hp.one_lt
        omega
      have hpZ : Prime (p : ℤ) := Nat.prime_iff_prime_int.mp hp
      refine ⟨s * D', ?_, ?_⟩
      · intro hdvd
        rcases hpZ.dvd_or_dvd hdvd with h | h
        · exact hps h
        · exact hpD' (Int.natCast_dvd_natCast.mp h)
      · have e1 : (s * (D' : ℤ)) • (M *ᵥ y) =
            (D' : ℤ) • (s • (M' *ᵥ y)) + (s * (p : ℤ) ^ (D - a)) • ((D : ℤ) • (r *ᵥ y)) := by
          have hpow : (p : ℤ) ^ D = (p : ℤ) ^ (D - a) * (p : ℤ) ^ a := by
            rw [← pow_add, Nat.sub_add_cancel ha]
          have hDZ : (D : ℤ) = (p : ℤ) ^ a * (D' : ℤ) := by rw [hDa]; push_cast; ring
          rw [hMr, add_mulVec, smul_mulVec, hpow, hDZ]
          module
        rw [e1]
        exact (yg L' L'' n).add_mem ((yg L' L'' n).zsmul_mem hs _) ((yg L' L'' n).zsmul_mem hr _)
    · refine ⟨D, fun h => hpD (Int.natCast_dvd_natCast.mp h), ?_⟩
      exact hD _ (himg M (mset_sub hstar heR M hM))
  obtain ⟨m, h1, h2, h3⟩ := key
  exact ⟨m, h1, h2, h3⟩

end PI.SqPairW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SquarePairGluing.SqPairGlueMain =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.CmpPair =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.CmpPair", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PiNonunit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.LinearAlgebra.Matrix.NonsingularInverse\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Matrix

namespace PI.SqPair.LocCartanPairW

variable {R : Type*} [CommRing R] (σ : R ≃+* R)

theorem cmp_map_mulVec {ι : Type*} [Fintype ι] (h : Matrix ι ι R) (v : ι → R) :
    (fun i => σ ((h *ᵥ v) i)) = h.map σ *ᵥ (fun i => σ (v i)) := by
  funext i

  simp [Matrix.mulVec, dotProduct, map_sum, map_mul, Matrix.map_apply]

theorem cmp_gram_pull {ι : Type*} [Fintype ι] (A h : Matrix ι ι R) (v w : ι → R) :
    (fun i => σ ((h *ᵥ v) i)) ⬝ᵥ (A *ᵥ (h *ᵥ w)) =
      (fun i => σ (v i)) ⬝ᵥ (((h.map σ)ᵀ * A * h) *ᵥ w) := by
  rw [cmp_map_mulVec σ h v, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec,
    Matrix.dotProduct_mulVec _ (h.map σ)ᵀ, Matrix.vecMul_transpose]

theorem cmp_gram_smul {ι : Type*} [Fintype ι] (A : Matrix ι ι R) (a b : R) (v w : ι → R) :
    (fun i => σ ((a • v) i)) ⬝ᵥ (A *ᵥ (b • w)) = σ a * b * ((fun i => σ (v i)) ⬝ᵥ (A *ᵥ w)) := by
  have h1 : (fun i => σ ((a • v) i)) = σ a • fun i => σ (v i) := by
    funext i; simp [map_mul]
  rw [h1, Matrix.mulVec_smul, dotProduct_smul, smul_eq_mul]
  have h2 : (fun i => σ a * σ (v i)) ⬝ᵥ (A *ᵥ w) = σ a * ((fun i => σ (v i)) ⬝ᵥ (A *ᵥ w)) := by
    simp only [dotProduct, Finset.mul_sum, mul_assoc]
  have h3 : (σ a • fun i => σ (v i)) = fun i => σ a * σ (v i) := by
    funext i; simp
  rw [h3, h2]; ring

private lemma smulMulVec_lemma {ι : Type*} [Fintype ι] (a : R) (M : Matrix ι ι R) (v : ι → R) :
    (a • M) *ᵥ v = a • (M *ᵥ v) := by
  ext i
  simp [Matrix.mulVec, dotProduct, Finset.mul_sum, mul_assoc]

theorem cmp_gram_pre [IsDomain R] {ι : Type*} [Fintype ι] (A A' h : Matrix ι ι R) (s : R)
    (hs : s ≠ 0) (hh : (h.map σ)ᵀ * A * h = s • A') (v w x y : ι → R) (c d t : R)
    (hv : h *ᵥ v = c • x) (hw : h *ᵥ w = d • y)
    (hxy : (fun i => σ (x i)) ⬝ᵥ (A *ᵥ y) * (σ c * d) = s * t) :
    (fun i => σ (v i)) ⬝ᵥ (A' *ᵥ w) = t := by
  have key : s • ((fun i => σ (v i)) ⬝ᵥ (A' *ᵥ w)) =
      (fun i => σ (x i)) ⬝ᵥ (A *ᵥ y) * (σ c * d) := by
    rw [← dotProduct_smul, ← smulMulVec_lemma, ← hh, ← cmp_gram_pull σ A h v w, hv, hw,
      cmp_gram_smul σ A c d x y]
    ring
  rw [hxy, smul_eq_mul] at key
  exact mul_left_cancel₀ hs key

theorem cmp_hyp [IsDomain R] {ι : Type*} [Fintype ι] (A A' h : Matrix ι ι R) (s : R) (hs : s ≠ 0)
    (hh : (h.map σ)ᵀ * A * h = s • A') (c₁ c₂ : R) (hc : σ c₁ * c₂ = s)
    (x₁ y₁ v₁ w₁ : ι → R) (hv : h *ᵥ v₁ = c₁ • x₁) (hw : h *ᵥ w₁ = c₂ • y₁)
    (hxx : (fun i => σ (x₁ i)) ⬝ᵥ (A *ᵥ x₁) = 0) (hyy : (fun i => σ (y₁ i)) ⬝ᵥ (A *ᵥ y₁) = 0)
    (hxy : (fun i => σ (x₁ i)) ⬝ᵥ (A *ᵥ y₁) = 1) :
    (fun i => σ (v₁ i)) ⬝ᵥ (A' *ᵥ v₁) = 0 ∧ (fun i => σ (w₁ i)) ⬝ᵥ (A' *ᵥ w₁) = 0 ∧
      (fun i => σ (v₁ i)) ⬝ᵥ (A' *ᵥ w₁) = 1 := by
  refine ⟨cmp_gram_pre σ A A' h s hs hh v₁ v₁ x₁ x₁ c₁ c₁ 0 hv hv (by rw [hxx]; ring),
    cmp_gram_pre σ A A' h s hs hh w₁ w₁ y₁ y₁ c₂ c₂ 0 hw hw (by rw [hyy]; ring),
    cmp_gram_pre σ A A' h s hs hh v₁ w₁ x₁ y₁ c₁ c₂ 1 hv hw (by rw [hxy, hc]; ring)⟩

private lemma mapMul_lemma_2 {α β γ : Type*} [Fintype β] (X : Matrix α β R) (Y : Matrix β γ R) :
    (X * Y).map σ = X.map σ * Y.map σ := by
  ext i j

  simp [Matrix.mul_apply, map_sum, map_mul]

theorem cmp_split [IsDomain R] {ι κ : Type*} [Fintype ι] [DecidableEq ι] [Fintype κ]
    [DecidableEq κ] (A A' h : Matrix ι ι R) (s : R) (hh : (h.map σ)ᵀ * A * h = s • A')
    (c₁ c₂ : R) (hc₁ : c₁ ≠ 0) (hc₂ : c₂ ≠ 0) (x y v₁ w₁ : ι → R)
    (hv : h *ᵥ v₁ = c₁ • x) (hw : h *ᵥ w₁ = c₂ • y)
    (u u' : Matrix ι (Fin 2 ⊕ κ) R) (v : Matrix (Fin 2 ⊕ κ) ι R) (A₁ A₁' : Matrix κ κ R)
    (huv : u * v = 1) (hvu : v * u = 1)
    (hu0 : ∀ i, u i (.inl 0) = x i) (hu1 : ∀ i, u i (.inl 1) = y i)
    (hu0' : ∀ i, u' i (.inl 0) = v₁ i) (hu1' : ∀ i, u' i (.inl 1) = w₁ i)
    (hG : (u.map σ)ᵀ * A * u = fromBlocks !![0, 1; 1, 0] 0 0 A₁)
    (hG' : (u'.map σ)ᵀ * A' * u' = fromBlocks !![0, 1; 1, 0] 0 0 A₁') :
    ∃ h₂ : Matrix κ κ R, v * h * u' = fromBlocks (diagonal ![c₁, c₂]) 0 0 h₂ ∧
      (h₂.map σ)ᵀ * A₁ * h₂ = s • A₁' := by
  obtain ⟨M, hMdef⟩ : ∃ M, M = v * h * u' := ⟨_, rfl⟩
  have hcol : ∀ b : Fin 2, ∀ i, (h * u') i (.inl b) = ![c₁, c₂] b * u i (.inl b) := by
    rw [Fin.forall_fin_two]
    constructor
    · intro i
      have e := congrFun hv i
      simp only [Matrix.mulVec, dotProduct, Pi.smul_apply, smul_eq_mul] at e
      simp [Matrix.mul_apply, hu0', hu0, e]
    · intro i
      have e := congrFun hw i
      simp only [Matrix.mulVec, dotProduct, Pi.smul_apply, smul_eq_mul] at e
      simp [Matrix.mul_apply, hu1', hu1, e]
  have hM1 : ∀ a (b : Fin 2), M a (.inl b) =
      ![c₁, c₂] b * (1 : Matrix (Fin 2 ⊕ κ) (Fin 2 ⊕ κ) R) a (.inl b) := by
    intro a b
    rw [hMdef, Matrix.mul_assoc, Matrix.mul_apply, ← hvu, Matrix.mul_apply, Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [hcol b i]
    ring
  have hUM : u * M = h * u' := by
    rw [hMdef, ← Matrix.mul_assoc, ← Matrix.mul_assoc, huv, Matrix.one_mul]
  have hGram : (M.map σ)ᵀ * fromBlocks !![0, 1; 1, 0] 0 0 A₁ * M =
      s • fromBlocks !![0, 1; 1, 0] 0 0 A₁' := by
    rw [← hG, ← hG']
    calc (M.map σ)ᵀ * ((u.map σ)ᵀ * A * u) * M = ((u * M).map σ)ᵀ * A * (u * M) := by
          rw [mapMul_lemma_2 σ, Matrix.transpose_mul]
          simp only [Matrix.mul_assoc]
      _ = ((h * u').map σ)ᵀ * A * (h * u') := by rw [hUM]
      _ = (u'.map σ)ᵀ * ((h.map σ)ᵀ * A * h) * u' := by
          rw [mapMul_lemma_2 σ, Matrix.transpose_mul]
          simp only [Matrix.mul_assoc]
      _ = s • ((u'.map σ)ᵀ * A' * u') := by
          rw [hh, Matrix.mul_smul, Matrix.smul_mul]
  have hMb : M = fromBlocks (diagonal ![c₁, c₂]) M.toBlocks₁₂ 0 M.toBlocks₂₂ := by
    ext a b
    rcases a with a | a <;> rcases b with b | b
    · rw [hM1 (.inl a) b]
      by_cases hab : a = b
      · subst hab
        simp
      · simp [hab]
    · simp [Matrix.toBlocks₁₂]
    · rw [hM1 (.inr a) b]
      simp
    · simp [Matrix.toBlocks₂₂]
  rw [hMb] at hGram
  simp only [Matrix.fromBlocks_map, Matrix.fromBlocks_transpose, Matrix.fromBlocks_multiply,
    Matrix.fromBlocks_smul, Matrix.map_zero, map_zero, Matrix.transpose_zero, Matrix.zero_mul,
    Matrix.mul_zero, add_zero, zero_add, smul_zero] at hGram
  obtain ⟨-, hQ, -, hS⟩ := Matrix.fromBlocks_inj.mp hGram
  have hc₁' : σ c₁ ≠ 0 := by simpa using hc₁
  have hc₂' : σ c₂ ≠ 0 := by simpa using hc₂
  have hB : M.toBlocks₁₂ = 0 := by
    ext a l
    have e0 := congrFun (congrFun hQ 0) l
    have e1 := congrFun (congrFun hQ 1) l
    simp [Matrix.mul_apply, Fin.sum_univ_two, Matrix.diagonal_apply, hc₁', hc₂'] at e0 e1
    fin_cases a
    · simpa using e1
    · simpa using e0
  refine ⟨M.toBlocks₂₂, ?_, ?_⟩
  · rw [← hMdef]
    nth_rewrite 1 [hMb]
    rw [hB]
  · rw [hB] at hS
    simpa using hS

end PI.SqPair.LocCartanPairW

namespace PI.SqPair.LCP

open PI.SqPair.LocCartanPairW

theorem inert_isLocalRing {R : Type} [CommRing R] [StarRing R] {R₀ : Subring R} {ϖ : R}
    (hI : Inert R₀ ϖ) : IsLocalRing R := by
  haveI := hI.dom
  have key : ∀ x : R, ¬ IsUnit x → ϖ ∣ x := by
    intro x hx
    by_cases h0 : x = 0
    · exact ⟨0, by rw [h0, mul_zero]⟩
    · obtain ⟨m, u, hu, rfl⟩ := hI.val x h0
      cases m with
      | zero => exact absurd (by simpa using hu) hx
      | succ k => exact ⟨ϖ ^ k * u, by ring⟩
  have back : ∀ x : R, ϖ ∣ x → ¬ IsUnit x := by
    rintro x ⟨c, rfl⟩ hu
    exact hI.pi_nonunit (isUnit_of_mul_isUnit_left hu)
  refine IsLocalRing.of_nonunits_add ?_
  intro a b ha hb
  exact back _ (dvd_add (key a ha) (key b hb))

theorem split_of (hS : SplitOff) : Split := by
  intro R _ _ R₀ ϖ hI κ _ _ A A' h k a hP hak x y v w hxx hyy hxy hv hw
  have := hI.dom
  have : IsLocalRing R := inert_isLocalRing hI
  obtain ⟨⟨hAh, -⟩, ⟨hAh', -⟩, hh⟩ := hP
  have hϖ : star ϖ = ϖ := (hI.fix ϖ).mp hI.pi_mem
  have hcard : Fintype.card κ + 2 = Fintype.card (Fin 2 ⊕ κ) := by
    simp [Fintype.card_sum, add_comm]
  obtain ⟨u, ui, A₁, huv, hvu, hu0, hu1, hG⟩ := hS R (Fin 2 ⊕ κ) κ hcard A hAh x y hxx hyy hxy
  have hs : ϖ ^ (2 * k) ≠ 0 := pow_ne_zero _ hI.pi_ne
  have hc : (starRingAut : R ≃+* R) (ϖ ^ (k - a)) * ϖ ^ (k + a) = ϖ ^ (2 * k) := by
    rw [map_pow, starRingAut_apply, hϖ, ← pow_add]
    congr 1
    omega
  obtain ⟨h1, h2, h3⟩ := cmp_hyp (starRingAut : R ≃+* R) A A' h _ hs hh (ϖ ^ (k - a)) (ϖ ^ (k + a))
    hc x y v w hv hw hxx hyy hxy
  obtain ⟨u', ui', A₁', huv', -, hu0', hu1', hG'⟩ :=
    hS R (Fin 2 ⊕ κ) κ hcard A' hAh' v w h1 h2 h3
  obtain ⟨h₂, hM, -⟩ := cmp_split (starRingAut : R ≃+* R) A A' h _ hh (ϖ ^ (k - a)) (ϖ ^ (k + a))
    (pow_ne_zero _ hI.pi_ne) (pow_ne_zero _ hI.pi_ne) x y v w hv hw u u' ui A₁ A₁' huv hvu hu0 hu1
    hu0' hu1' hG hG'
  refine ⟨u, u', A₁, A₁', h₂, ![ϖ ^ (k - a), ϖ ^ (k + a)], isUnit_det_of_right_inverse huv,
    isUnit_det_of_right_inverse huv', hG, hG', ?_⟩
  rw [← hM, ← Matrix.mul_assoc, ← Matrix.mul_assoc, huv, Matrix.one_mul]

end PI.SqPair.LCP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.CmpPair =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SplPlane =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SplPlane", "h": "module\n\npublic import Mathlib.CategoryTheory.Category.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\npublic import Mathlib.RingTheory.LocalRing.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Matrix.NonsingularInverse\npublic import Mathlib.RingTheory.Ideal.BigOperators\npublic import Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix

namespace PI.LocCartanPair

variable {R : Type} [CommRing R] [StarRing R]

theorem splPlane_entry {ι m n : Type} [Fintype ι] (A : Matrix ι ι R) (M : Matrix ι m R)
    (N : Matrix ι n R) (r : m) (s : n) :
    (Mᴴ * A * N) r s = star (fun i => M i r) ⬝ᵥ (A *ᵥ fun i => N i s) := by
  rw [Matrix.mul_assoc]; rfl

theorem splPlane_herm {ι : Type} [Fintype ι] (A : Matrix ι ι R) (hA : Aᴴ = A) (a b : ι → R) :
    star (star a ⬝ᵥ (A *ᵥ b)) = star b ⬝ᵥ (A *ᵥ a) := by
  rw [star_dotProduct, star_star, star_mulVec, ← dotProduct_mulVec, hA]

theorem splPlane_unitEntry [IsLocalRing R] {ι : Type} [Fintype ι] (w z : ι → R)
    (h : w ⬝ᵥ z = 1) : ∃ i, IsUnit (z i) := by
  by_contra hn
  push Not at hn
  have hm : w ⬝ᵥ z ∈ IsLocalRing.maximalIdeal R :=
    Ideal.sum_mem _ fun i _ => Ideal.mul_mem_left _ _ ((IsLocalRing.mem_maximalIdeal _).2 (hn i))
  rw [h] at hm
  exact (IsLocalRing.mem_maximalIdeal _).1 hm isUnit_one

variable {ι κ : Type} [Fintype ι] [DecidableEq ι] [Fintype κ] [DecidableEq κ]

def splBasis (E : Fin 2 ⊕ κ ≃ ι) (x y : ι → R) : Matrix ι (Fin 2 ⊕ κ) R :=
  fun i c => Sum.elim (fun a => ![x, y] a i) (fun j => (1 : Matrix ι ι R) i (E (.inr j))) c

def splCorr (E : Fin 2 ⊕ κ ≃ ι) (A : Matrix ι ι R) (x y : ι → R) : Matrix (Fin 2) κ R :=
  fun a j => ![-(star y ⬝ᵥ (A *ᵥ fun i => (1 : Matrix ι ι R) i (E (.inr j)))),
    -(star x ⬝ᵥ (A *ᵥ fun i => (1 : Matrix ι ι R) i (E (.inr j))))] a

theorem splPlane_core (E : Fin 2 ⊕ κ ≃ ι) (A : Matrix ι ι R) (hA : Aᴴ = A) (x y : ι → R)
    (hxx : star x ⬝ᵥ (A *ᵥ x) = 0) (hyy : star y ⬝ᵥ (A *ᵥ y) = 0)
    (hxy : star x ⬝ᵥ (A *ᵥ y) = 1)
    (hdet : IsUnit (x (E (.inl 0)) * y (E (.inl 1)) - y (E (.inl 0)) * x (E (.inl 1)))) :
    ∃ (u : Matrix ι (Fin 2 ⊕ κ) R) (v : Matrix (Fin 2 ⊕ κ) ι R) (A₁ : Matrix κ κ R),
      u * v = 1 ∧ v * u = 1 ∧ (∀ i, u i (.inl 0) = x i) ∧ (∀ i, u i (.inl 1) = y i) ∧
      uᴴ * A * u = fromBlocks !![0, 1; 1, 0] 0 0 A₁ ∧ A₁ᴴ = A₁ ∧
      (IsUnit A.det → IsUnit A₁.det) := by
  have hyx : star y ⬝ᵥ (A *ᵥ x) = 1 := by rw [← splPlane_herm A hA x y, hxy, star_one]
  set u₀ := splBasis E x y with hu₀def
  set B := splCorr E A x y with hBdef
  set T : Matrix (Fin 2 ⊕ κ) (Fin 2 ⊕ κ) R := fromBlocks 1 B 0 1 with hTdef
  set T' : Matrix (Fin 2 ⊕ κ) (Fin 2 ⊕ κ) R := fromBlocks 1 (-B) 0 1 with hT'def
  have hTT' : T * T' = 1 := by simp [hTdef, hT'def, fromBlocks_multiply, fromBlocks_one]
  have hT'T : T' * T = 1 := by simp [hTdef, hT'def, fromBlocks_multiply, fromBlocks_one]
  set S : Matrix (Fin 2 ⊕ κ) (Fin 2 ⊕ κ) R := u₀.submatrix E id with hSdef
  have hS : S = fromBlocks S.toBlocks₁₁ 0 S.toBlocks₂₁ 1 := by
    conv_lhs => rw [← fromBlocks_toBlocks S]
    congr 1
    · ext a j; simp [hSdef, hu₀def, splBasis, toBlocks₁₂]
    · ext k j; simp [hSdef, hu₀def, splBasis, toBlocks₂₂, Matrix.one_apply]
  have hSdet : IsUnit S.det := by
    rw [hS, det_fromBlocks_zero₁₂, det_one, mul_one, det_fin_two]
    simpa [hSdef, hu₀def, splBasis, toBlocks₁₁] using hdet
  set v₀ : Matrix (Fin 2 ⊕ κ) ι R := S⁻¹.submatrix id E.symm with hv₀def
  have hu₀S : u₀ = S.submatrix E.symm id := by ext i c; simp [hSdef]
  have huv₀ : u₀ * v₀ = 1 := by
    rw [hu₀S, hv₀def, ← Matrix.submatrix_mul _ _ _ _ _ Function.bijective_id,
      mul_nonsing_inv _ hSdet, submatrix_one_equiv]
  have hvu₀ : v₀ * u₀ = 1 := by
    rw [hu₀S, hv₀def, submatrix_mul_equiv, nonsing_inv_mul _ hSdet, submatrix_id_id]
  set u := u₀ * T with hudef
  set v := T' * v₀ with hvdef
  have huv : u * v = 1 := by
    rw [hudef, hvdef, Matrix.mul_assoc, ← Matrix.mul_assoc T, hTT', Matrix.one_mul, huv₀]
  have hvu : v * u = 1 := by
    rw [hudef, hvdef, Matrix.mul_assoc, ← Matrix.mul_assoc v₀, hvu₀, Matrix.one_mul, hT'T]
  have hc0 : (fun i => u i (.inl 0)) = x := by
    funext i; simp [hudef, hTdef, hu₀def, splBasis, Matrix.mul_apply, Fintype.sum_sum_type,
      Fin.sum_univ_two]
  have hc1 : (fun i => u i (.inl 1)) = y := by
    funext i; simp [hudef, hTdef, hu₀def, splBasis, Matrix.mul_apply, Fintype.sum_sum_type,
      Fin.sum_univ_two]
  have hcj : ∀ j, (fun i => u i (.inr j)) = (fun i => (1 : Matrix ι ι R) i (E (.inr j)))
      + B 0 j • x + B 1 j • y := by
    intro j; funext i
    simp [hudef, hTdef, hu₀def, splBasis, Matrix.mul_apply, Fintype.sum_sum_type,
      Fin.sum_univ_two, Matrix.one_apply, mul_ite]
    ring
  set G := uᴴ * A * u with hGdef
  have hG : ∀ r s, G r s = star (fun i => u i r) ⬝ᵥ (A *ᵥ fun i => u i s) :=
    fun r s => splPlane_entry A u u r s
  have h12 : G.toBlocks₁₂ = 0 := by
    ext a j
    simp only [toBlocks₁₂, of_apply, hG, hcj, Matrix.zero_apply]
    fin_cases a
    · simp only [Fin.zero_eta, Fin.isValue, hc0, mulVec_add, mulVec_smul, dotProduct_add,
        dotProduct_smul, smul_eq_mul, hxx, hxy, hBdef, splCorr]
      simp
    · simp only [Fin.mk_one, Fin.isValue, hc1, mulVec_add, mulVec_smul, dotProduct_add,
        dotProduct_smul, smul_eq_mul, hyx, hyy, hBdef, splCorr]
      simp
  have h21 : G.toBlocks₂₁ = 0 := by
    ext j a
    have := congrFun (congrFun h12 a) j
    simp only [toBlocks₁₂, toBlocks₂₁, of_apply, Matrix.zero_apply] at this ⊢
    rw [hG, ← splPlane_herm A hA, ← hG, this, star_zero]
  have h11 : G.toBlocks₁₁ = !![0, 1; 1, 0] := by
    ext a b
    fin_cases a <;> fin_cases b <;>
      simp [toBlocks₁₁, hG, hc0, hc1, hxx, hyy, hxy, hyx]
  have hGe : G = fromBlocks !![0, 1; 1, 0] 0 0 G.toBlocks₂₂ := by
    conv_lhs => rw [← fromBlocks_toBlocks G]
    rw [h11, h12, h21]
  refine ⟨u, v, G.toBlocks₂₂, huv, hvu, fun i => congrFun hc0 i, fun i => congrFun hc1 i,
    hGe, ?_, ?_⟩
  · ext i j
    simp only [conjTranspose_apply, toBlocks₂₂, of_apply]
    rw [hG, hG, splPlane_herm A hA]
  · intro hAdet
    set U : Matrix (Fin 2 ⊕ κ) (Fin 2 ⊕ κ) R := u.submatrix E id with hUdef
    have hUv : U * v.submatrix id E = 1 := by
      rw [hUdef, ← Matrix.submatrix_mul _ _ _ _ _ Function.bijective_id, huv,
        submatrix_one_equiv]
    have hU : IsUnit U.det := isUnit_det_of_right_inverse hUv
    have hGU : G = Uᴴ * A.submatrix E E * U := by
      rw [hUdef, conjTranspose_submatrix, submatrix_mul_equiv, submatrix_mul_equiv,
        submatrix_id_id]
    have hGdet : IsUnit G.det := by
      rw [hGU, det_mul, det_mul, det_conjTranspose, det_submatrix_equiv_self]
      exact (hU.star.mul hAdet).mul hU
    rw [hGe, det_fromBlocks_zero₁₂] at hGdet
    exact isUnit_of_mul_isUnit_right hGdet

section Local

variable {R : Type} [CommRing R] [StarRing R]

theorem splPlane_pair [IsLocalRing R] {ι : Type} [Fintype ι] [DecidableEq ι] (A : Matrix ι ι R)
    (hA : Aᴴ = A) (x y : ι → R) (hxx : star x ⬝ᵥ (A *ᵥ x) = 0)
    (hxy : star x ⬝ᵥ (A *ᵥ y) = 1) :
    ∃ i₀ j₀, i₀ ≠ j₀ ∧ IsUnit (x i₀ * y j₀ - y i₀ * x j₀) := by
  have hyx : star y ⬝ᵥ (A *ᵥ x) = 1 := by rw [← splPlane_herm A hA x y, hxy, star_one]
  rw [dotProduct_mulVec] at hyx
  obtain ⟨i₀, hi₀⟩ := splPlane_unitEntry _ _ hyx
  obtain ⟨xi, hxi⟩ := hi₀.exists_right_inv
  set y' := y - (y i₀ * xi) • x with hy'
  have hy'i : y' i₀ = 0 := by
    simp only [hy', Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
    linear_combination (-(y i₀)) * hxi
  have hxy' : (star x ᵥ* A) ⬝ᵥ y' = 1 := by
    rw [← dotProduct_mulVec, hy', mulVec_sub, mulVec_smul, dotProduct_sub, dotProduct_smul, hxx,
      hxy, smul_eq_mul, mul_zero, sub_zero]
  obtain ⟨j₀, hj₀⟩ := splPlane_unitEntry _ _ hxy'
  have hne : i₀ ≠ j₀ := by
    rintro rfl; rw [hy'i] at hj₀; exact not_isUnit_zero hj₀
  refine ⟨i₀, j₀, hne, ?_⟩
  have e : x i₀ * y j₀ - y i₀ * x j₀ = x i₀ * y' j₀ := by
    simp only [hy', Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
    linear_combination (y i₀ * x j₀) * hxi
  rw [e]; exact hi₀.mul hj₀

def splEquiv {ι : Type} [DecidableEq ι] (i₀ j₀ : ι) (hne : i₀ ≠ j₀) :
    Fin 2 ⊕ {j // j ≠ i₀ ∧ j ≠ j₀} ≃ ι where
  toFun := Sum.elim ![i₀, j₀] Subtype.val
  invFun j := if h0 : j = i₀ then .inl 0 else if h1 : j = j₀ then .inl 1 else .inr ⟨j, h0, h1⟩
  left_inv := by
    rintro (a | ⟨j, h0, h1⟩)
    · fin_cases a
      · simp
      · simp [hne.symm]
    · simp [h0, h1]
  right_inv := by
    intro j
    by_cases h0 : j = i₀
    · subst h0; simp
    · by_cases h1 : j = j₀
      · subst h1; simp [h0]
      · simp [h0, h1]

theorem splPlane [IsLocalRing R] {ι κ : Type} [Fintype ι] [DecidableEq ι] [Fintype κ]
    [DecidableEq κ] (hc : Fintype.card κ + 2 = Fintype.card ι) (A : Matrix ι ι R) (hA : Aᴴ = A)
    (x y : ι → R) (hxx : star x ⬝ᵥ (A *ᵥ x) = 0) (hyy : star y ⬝ᵥ (A *ᵥ y) = 0)
    (hxy : star x ⬝ᵥ (A *ᵥ y) = 1) :
    ∃ (u : Matrix ι (Fin 2 ⊕ κ) R) (v : Matrix (Fin 2 ⊕ κ) ι R) (A₁ : Matrix κ κ R),
      u * v = 1 ∧ v * u = 1 ∧ (∀ i, u i (.inl 0) = x i) ∧ (∀ i, u i (.inl 1) = y i) ∧
      uᴴ * A * u = fromBlocks !![0, 1; 1, 0] 0 0 A₁ ∧ A₁ᴴ = A₁ ∧
      (IsUnit A.det → IsUnit A₁.det) := by
  obtain ⟨i₀, j₀, hne, hu⟩ := splPlane_pair A hA x y hxx hxy
  have hc₀ : Fintype.card {j // j ≠ i₀ ∧ j ≠ j₀} = Fintype.card κ := by
    have := Fintype.card_congr (splEquiv i₀ j₀ hne)
    simp only [Fintype.card_sum, Fintype.card_fin] at this
    omega
  let E : Fin 2 ⊕ κ ≃ ι :=
    (Equiv.sumCongr (Equiv.refl _) (Fintype.equivOfCardEq hc₀).symm).trans (splEquiv i₀ j₀ hne)
  have h0 : E (.inl 0) = i₀ := by simp [E, splEquiv]
  have h1 : E (.inl 1) = j₀ := by simp [E, splEquiv]
  exact splPlane_core E A hA x y hxx hyy hxy (by rw [h0, h1]; exact hu)

end Local

end PI.LocCartanPair
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SplPlane =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SplOff =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SplOff", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PiNonunit\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SplPlane\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.SqPair.LCP

theorem split_off_hyperbolic : SplitOff := by
  intro R _ _ _ ι κ _ _ _ _ hc A hA x y hxx hyy hxy
  obtain ⟨u, v, A₁, h1, h2, h3, h4, h5, -, -⟩ := PI.LocCartanPair.splPlane hc A hA x y hxx hyy hxy
  exact ⟨u, v, A₁, h1, h2, h3, h4, h5⟩

end PI.SqPair.LCP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SplOff =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.CmpSplit =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.CmpSplit", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PiNonunit\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.CmpPair\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SplOff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.SqPair.LCP

theorem pair_split' : Split := split_of split_off_hyperbolic

end PI.SqPair.LCP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.CmpSplit =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.FiniteAdeleIdempotentOfFMulSelf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.FiniteAdeleIdempotentOfFMulSelf", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PiNonunit\npublic import Formalism.PeriodIntegrals.SqPair\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Matrix

namespace PI.SqPair.LCP

section Alg
variable {R : Type} [CommRing R] [StarRing R]

def e0 : Matrix (Fin 2) (Fin 2) R := diagonal ![1, 0]

theorem finiteAdeleIdempotentOfF_mul_self : (e0 : Matrix (Fin 2) (Fin 2) R) * e0 = e0 := by
  ext i j; fin_cases i <;> fin_cases j <;> simp [e0]

theorem elementary_hyperbolic : (e0 : Matrix (Fin 2) (Fin 2) R)ᴴ * hyp = hyp - hyp * e0 := by
  ext i j; fin_cases i <;> fin_cases j <;>
    simp [e0, hyp, Matrix.mul_apply, vecMul, dotProduct, diagonal_apply]

theorem elementary_commutes_diagonal (d : Fin 2 → R) :
    (e0 : Matrix (Fin 2) (Fin 2) R) * diagonal d = diagonal d * e0 := by
  rw [e0, diagonal_mul_diagonal, diagonal_mul_diagonal]; congr 1; ext i; ring

theorem isUnit_ct {ι : Type} [Fintype ι] [DecidableEq ι] {u : Matrix ι ι R} (hu : IsUnit u.det) :
    IsUnit uᴴ := (Matrix.isUnit_iff_isUnit_det _).2 (by rw [det_conjTranspose]; exact hu.star)

theorem cancel_conj {ι : Type} [Fintype ι] [DecidableEq ι] {u X Y : Matrix ι ι R}
    (hu : IsUnit u.det) (h : uᴴ * X * u = uᴴ * Y * u) : X = Y := by
  have hU : IsUnit u := (Matrix.isUnit_iff_isUnit_det _).2 hu
  have h2 : uᴴ * X = uᴴ * Y := hU.mul_right_cancel h
  exact (isUnit_ct hu).mul_left_cancel h2

theorem assemble {κ : Type} [Fintype κ] [DecidableEq κ]
    (A h u u' : Matrix (Fin 2 ⊕ κ) (Fin 2 ⊕ κ) R) (A₁ h₂ : Matrix κ κ R) (d : Fin 2 → R)
    (hu : IsUnit u.det) (hu' : IsUnit u'.det)
    (hA : uᴴ * A * u = fromBlocks hyp 0 0 A₁)
    (hh : h * u' = u * fromBlocks (diagonal d) 0 0 h₂)
    (e₂ f₂ : Matrix κ κ R) (he : e₂ * e₂ = e₂) (heA : e₂ᴴ * A₁ = A₁ * (1 - e₂))
    (hef : e₂ * h₂ = h₂ * f₂) : PConcl A h := by
  set E : Matrix (Fin 2 ⊕ κ) (Fin 2 ⊕ κ) R := fromBlocks e0 0 0 e₂ with hEdef
  set F : Matrix (Fin 2 ⊕ κ) (Fin 2 ⊕ κ) R := fromBlocks e0 0 0 f₂ with hFdef
  set D : Matrix (Fin 2 ⊕ κ) (Fin 2 ⊕ κ) R := fromBlocks (diagonal d) 0 0 h₂ with hDdef
  set B : Matrix (Fin 2 ⊕ κ) (Fin 2 ⊕ κ) R := fromBlocks hyp 0 0 A₁ with hBdef
  have hi : u⁻¹ * u = 1 := nonsing_inv_mul u hu
  have hi' : u'⁻¹ * u' = 1 := nonsing_inv_mul u' hu'
  have hE : E * E = E := by simp [hEdef, fromBlocks_multiply, finiteAdeleIdempotentOfF_mul_self, he]
  have hED : E * D = D * F := by simp [hEdef, hDdef, hFdef, fromBlocks_multiply, elementary_commutes_diagonal, hef]
  have heA' : e₂ᴴ * A₁ = A₁ - A₁ * e₂ := by rw [heA, Matrix.mul_sub, Matrix.mul_one]
  have hEB : Eᴴ * B = B - B * E := by
    rw [hEdef, hBdef, fromBlocks_conjTranspose, fromBlocks_multiply, fromBlocks_multiply]
    ext (i | i) (j | j) <;>
      simp [elementary_hyperbolic, heA', Matrix.sub_apply]
  refine ⟨u * E * u⁻¹, u' * F * u'⁻¹, ?_, ?_, ?_⟩
  · calc u * E * u⁻¹ * (u * E * u⁻¹) = u * (E * (u⁻¹ * u) * E) * u⁻¹ := by
          simp only [Matrix.mul_assoc]
      _ = u * E * u⁻¹ := by rw [hi, Matrix.mul_one, hE]
  · apply cancel_conj hu
    have hct : uᴴ * (u⁻¹)ᴴ = 1 := by rw [← conjTranspose_mul, hi, conjTranspose_one]
    calc uᴴ * ((u * E * u⁻¹)ᴴ * A) * u = (uᴴ * (u⁻¹)ᴴ) * Eᴴ * (uᴴ * A * u) := by
          simp only [conjTranspose_mul, Matrix.mul_assoc]
      _ = Eᴴ * B := by rw [hct, Matrix.one_mul, hA]
      _ = B - B * E * (u⁻¹ * u) := by rw [hi, Matrix.mul_one, hEB]
      _ = uᴴ * (A * (1 - u * E * u⁻¹)) * u := by
          rw [← hA]; simp only [Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_one, Matrix.mul_assoc]
  · have hh' : h = u * D * u'⁻¹ := by
      rw [← hh, Matrix.mul_assoc, mul_nonsing_inv u' hu', Matrix.mul_one]
    rw [hh']
    calc u * E * u⁻¹ * (u * D * u'⁻¹) = u * (E * (u⁻¹ * u) * D) * u'⁻¹ := by
          simp only [Matrix.mul_assoc]
      _ = u * (D * (u'⁻¹ * u') * F) * u'⁻¹ := by rw [hi, hi', Matrix.mul_one, Matrix.mul_one, hED]
      _ = u * D * u'⁻¹ * (u' * F * u'⁻¹) := by simp only [Matrix.mul_assoc]

theorem blk_unimod {κ : Type} [Fintype κ] [DecidableEq κ]
    {A u : Matrix (Fin 2 ⊕ κ) (Fin 2 ⊕ κ) R} {A₁ : Matrix κ κ R} (hu : IsUnit u.det)
    (hA : Unimod A) (h : uᴴ * A * u = fromBlocks hyp 0 0 A₁) : Unimod A₁ := by
  constructor
  · have h1 : (uᴴ * A * u)ᴴ = uᴴ * A * u := by
      simp only [conjTranspose_mul, conjTranspose_conjTranspose, hA.1, Matrix.mul_assoc]
    rw [h, fromBlocks_conjTranspose] at h1
    exact (fromBlocks_inj.1 h1).2.2.2
  · have h1 : IsUnit (uᴴ * A * u).det := by
      rw [det_mul, det_mul, det_conjTranspose]; exact (hu.star.mul hA.2).mul hu
    rw [h, det_fromBlocks_zero₂₁] at h1
    exact isUnit_of_mul_isUnit_right h1

theorem blk_rel {κ : Type} [Fintype κ] [DecidableEq κ] (ϖ : R) (k : ℕ)
    (A A' h u u' : Matrix (Fin 2 ⊕ κ) (Fin 2 ⊕ κ) R) (A₁ A₁' h₂ : Matrix κ κ R) (d : Fin 2 → R)
    (hrel : hᴴ * A * h = (ϖ ^ (2 * k)) • A')
    (hA : uᴴ * A * u = fromBlocks hyp 0 0 A₁) (hA' : u'ᴴ * A' * u' = fromBlocks hyp 0 0 A₁')
    (hh : h * u' = u * fromBlocks (diagonal d) 0 0 h₂) :
    h₂ᴴ * A₁ * h₂ = (ϖ ^ (2 * k)) • A₁' := by
  have e1 : (h * u')ᴴ * A * (h * u') = (ϖ ^ (2 * k)) • fromBlocks hyp 0 0 A₁' := by
    rw [← hA', conjTranspose_mul]
    calc u'ᴴ * hᴴ * A * (h * u') = u'ᴴ * (hᴴ * A * h) * u' := by simp only [Matrix.mul_assoc]
      _ = _ := by rw [hrel, Matrix.mul_smul, Matrix.smul_mul]
  have e2 : (h * u')ᴴ * A * (h * u') = (fromBlocks (diagonal d) 0 0 h₂)ᴴ *
      (uᴴ * A * u) * fromBlocks (diagonal d) 0 0 h₂ := by
    rw [hh, conjTranspose_mul]; simp only [Matrix.mul_assoc]
  rw [e2, hA, fromBlocks_conjTranspose, fromBlocks_multiply, fromBlocks_multiply,
    fromBlocks_smul] at e1
  have := (fromBlocks_inj.1 e1).2.2.2
  simpa using this

theorem phyp_reindex {κ ι : Type} [Fintype κ] [DecidableEq κ] [Fintype ι] [DecidableEq ι]
    (s : κ ≃ ι) {ϖ : R} {A A' h : Matrix ι ι R} {k : ℕ} (hP : PHyp ϖ A A' h k) :
    PHyp ϖ (A.submatrix s s) (A'.submatrix s s) (h.submatrix s s) k := by
  obtain ⟨⟨hA, hAd⟩, ⟨hA', hA'd⟩, hr⟩ := hP
  refine ⟨⟨by rw [conjTranspose_submatrix, hA], by rw [det_submatrix_equiv_self]; exact hAd⟩,
    ⟨by rw [conjTranspose_submatrix, hA'], by rw [det_submatrix_equiv_self]; exact hA'd⟩, ?_⟩
  rw [conjTranspose_submatrix, submatrix_mul_equiv, submatrix_mul_equiv, hr, submatrix_smul]; rfl

theorem isBase_reindex {κ ι : Type} [Fintype κ] [DecidableEq κ] [Fintype ι] [DecidableEq ι]
    (s : κ ≃ ι) {ϖ : R} {h : Matrix ι ι R} {k : ℕ} (hb : IsBase ϖ (h.submatrix s s) k) :
    IsBase ϖ h k := by
  obtain ⟨h₁, hu, he⟩ := hb
  refine ⟨h₁.submatrix s.symm s.symm, by rw [det_submatrix_equiv_self]; exact hu, ?_⟩
  have : h = (h.submatrix s s).submatrix s.symm s.symm := by simp
  rw [this, he, submatrix_smul]; rfl

theorem pconcl_reindex {κ ι : Type} [Fintype κ] [DecidableEq κ] [Fintype ι] [DecidableEq ι]
    (s : κ ≃ ι) {A h : Matrix ι ι R} (hc : PConcl (A.submatrix s s) (h.submatrix s s)) :
    PConcl A h := by
  obtain ⟨e, f, he, heA, hef⟩ := hc
  have hA : A = (A.submatrix s s).submatrix s.symm s.symm := by simp
  have hh : h = (h.submatrix s s).submatrix s.symm s.symm := by simp
  refine ⟨e.submatrix s.symm s.symm, f.submatrix s.symm s.symm, ?_, ?_, ?_⟩
  · rw [submatrix_mul_equiv, he]
  · rw [hA, conjTranspose_submatrix, submatrix_mul_equiv, heA, ← submatrix_one_equiv s.symm]
    rw [show ((1 : Matrix κ κ R).submatrix s.symm s.symm) - e.submatrix s.symm s.symm
      = (1 - e).submatrix s.symm s.symm from rfl, submatrix_mul_equiv]
  · rw [hh, submatrix_mul_equiv, submatrix_mul_equiv, hef]

end Alg

theorem pgen_main (hB : BaseLag) (hS : Step) {R : Type} [CommRing R] [StarRing R]
    (R₀ : Subring R) [HenselianLocalRing R₀] [Finite (IsLocalRing.ResidueField R₀)] (ϖ : R)
    (hI : Inert R₀ ϖ) (n : ℕ) : ∀ (ι : Type) [Fintype ι] [DecidableEq ι],
      Fintype.card ι = n → Even n → PGen ϖ ι := by
  induction n using Nat.strong_induction_on with
  | _ n ih =>
  intro ι _ _ hc hev A A' h k hP
  by_cases hb : IsBase ϖ h k
  · obtain ⟨h₁, hh₁, rfl⟩ := hb
    obtain ⟨e, he, heA⟩ := hB R R₀ ϖ hI ι (hc ▸ hev) A hP.1
    refine ⟨e, h₁⁻¹ * e * h₁, he, heA, ?_⟩
    rw [Matrix.mul_smul, Matrix.smul_mul]
    congr 1
    simp only [← Matrix.mul_assoc, mul_nonsing_inv h₁ hh₁, Matrix.one_mul]
  · match n, ih, hc, hev with
    | 0, _, hc, _ =>
      have : IsEmpty ι := Fintype.card_eq_zero_iff.1 hc
      exact absurd ⟨1, by simp, by ext i; exact isEmptyElim i⟩ hb
    | 1, _, _, hev => exact absurd hev (by decide)
    | m + 2, ih, hc, hev =>
      let s : Fin 2 ⊕ Fin m ≃ ι := Fintype.equivOfCardEq (by simp [hc]; omega)
      apply pconcl_reindex s
      have hP' := phyp_reindex s hP
      have hb' : ¬ IsBase ϖ (h.submatrix s s) k := fun hb' => hb (isBase_reindex s hb')
      obtain ⟨u, u', A₁, A₁', h₂, d, hu, hu', hA, hA', hh⟩ := hS R R₀ ϖ hI (Fin m) _ _ _ k hP' hb'
      have hU₁ := blk_unimod hu hP'.1 hA
      have hU₁' := blk_unimod hu' hP'.2.1 hA'
      have hr := blk_rel ϖ k _ _ _ u u' A₁ A₁' h₂ d hP'.2.2 hA hA' hh
      have hevm : Even m := by
        obtain ⟨r, hr⟩ := hev; exact ⟨r - 1, by omega⟩
      obtain ⟨e₂, f₂, he, heA, hef⟩ :=
        ih m (by omega) (Fin m) (Fintype.card_fin m) hevm A₁ A₁' h₂ k ⟨hU₁, hU₁', hr⟩
      exact assemble _ _ u u' A₁ h₂ d hu hu' hA hh e₂ f₂ he heA hef

theorem locCartanPair_of (h1 : Dichotomy) (hB : BaseLag) (hS : Step) :
    PI.SqPair.LocCartanPair := by
  intro R _ σ hσ R₀ hR₀ _ _ _ _ hθ ϖ hϖ N hN k h hh
  let _ : StarRing R :=
    { star := σ
      star_involutive := hσ
      star_mul := fun a b => by rw [map_mul, mul_comm]
      star_add := fun a b => map_add σ a b }
  have hR₀' : ∀ x, x ∈ R₀ ↔ star x = x := hR₀
  have hθ' : ∃ θ : R, IsUnit (θ - star θ) := hθ
  have hh' : hᴴ * 1 * h = ((ϖ : R) ^ (2 * k)) • (1 : Matrix (Fin N) (Fin N) R) := by
    rw [Matrix.mul_one]; exact hh
  rcases h1 R R₀ hR₀' hθ' ϖ hϖ with ⟨ε, hε, hεs⟩ | hI
  · refine ⟨ε • 1, ε • 1, ?_, ?_, ?_⟩
    · simp [smul_smul, hε]
    · change (ε • (1 : Matrix (Fin N) (Fin N) R))ᴴ = _
      rw [conjTranspose_smul, conjTranspose_one, hεs, sub_smul, one_smul]
    · simp
  · obtain ⟨e, f, he, heA, hef⟩ := pgen_main hB hS R₀ (ϖ : R) hI N (Fin N) (Fintype.card_fin N) hN
      1 1 h k ⟨⟨conjTranspose_one, by simp⟩, ⟨conjTranspose_one, by simp⟩, hh'⟩
    refine ⟨e, f, he, ?_, hef⟩
    rw [Matrix.mul_one, Matrix.one_mul] at heA
    exact heA

end PI.SqPair.LCP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.FiniteAdeleIdempotentOfFMulSelf =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PairBaseOfLag =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PairBaseOfLag", "h": "module\n\npublic import Mathlib.CategoryTheory.Category.Basic\npublic import Mathlib.LinearAlgebra.Matrix.NonsingularInverse\npublic import Mathlib.RingTheory.Henselian\npublic import Formalism.HermitianLattices.HermitianLatticesProofs.UnimodUnramUnique\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.LocCartanPair

open Matrix IsLocalRing

section Lag

variable {R : Type} [CommRing R] [StarRing R]

theorem lag_congr {ι : Type} [Fintype ι] [DecidableEq ι] (A B P e : Matrix ι ι R)
    (hP : IsUnit P.det) (hPAB : Pᴴ * A * P = B) (he : e * e = e)
    (heB : eᴴ * B = B * (1 - e)) :
    (P * e * P⁻¹) * (P * e * P⁻¹) = P * e * P⁻¹ ∧
      (P * e * P⁻¹)ᴴ * A = A * (1 - P * e * P⁻¹) := by
  have h1 : P⁻¹ * P = 1 := nonsing_inv_mul P hP
  have h2 : P * P⁻¹ = 1 := mul_nonsing_inv P hP
  have hPX : ∀ X : Matrix ι ι R, P⁻¹ * (P * X) = X := fun X => by
    rw [← Matrix.mul_assoc, h1, Matrix.one_mul]
  have h3 : (P⁻¹)ᴴ * Pᴴ = 1 := by rw [← conjTranspose_mul, h2, conjTranspose_one]
  have h4 : Pᴴ * (P⁻¹)ᴴ = 1 := by rw [← conjTranspose_mul, h1, conjTranspose_one]
  have hQX : ∀ X : Matrix ι ι R, Pᴴ * ((P⁻¹)ᴴ * X) = X := fun X => by
    rw [← Matrix.mul_assoc, h4, Matrix.one_mul]
  have hA : A = (P⁻¹)ᴴ * B * P⁻¹ := by
    rw [← hPAB]
    simp only [Matrix.mul_assoc]
    rw [h2, Matrix.mul_one, ← Matrix.mul_assoc, h3, Matrix.one_mul]
  constructor
  · simp only [Matrix.mul_assoc, hPX]
    rw [← Matrix.mul_assoc e e, he]
  · calc (P * e * P⁻¹)ᴴ * A = (P⁻¹)ᴴ * (eᴴ * B) * P⁻¹ := by
          rw [hA]
          simp only [conjTranspose_mul, Matrix.mul_assoc, hQX]
      _ = (P⁻¹)ᴴ * (B * (1 - e)) * P⁻¹ := by rw [heB]
      _ = A * (1 - P * e * P⁻¹) := by
          rw [hA]
          simp only [Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_one, Matrix.mul_assoc, hPX]

theorem lag_reindex {ι β : Type} [Fintype ι] [DecidableEq ι] [Fintype β] [DecidableEq β]
    (s : β ≃ ι) (A : Matrix ι ι R) (E : Matrix β β R) (hE : E * E = E)
    (hEA : Eᴴ * A.submatrix s s = A.submatrix s s * (1 - E)) :
    E.submatrix s.symm s.symm * E.submatrix s.symm s.symm = E.submatrix s.symm s.symm ∧
      (E.submatrix s.symm s.symm)ᴴ * A = A * (1 - E.submatrix s.symm s.symm) := by
  have hA : A = (A.submatrix s s).submatrix s.symm s.symm := by simp
  constructor
  · rw [submatrix_mul_equiv, hE]
  · have h1 : (1 : Matrix ι ι R) - E.submatrix s.symm s.symm = (1 - E).submatrix s.symm s.symm := by
      ext i j
      simp [Matrix.one_apply]
    rw [h1, conjTranspose_submatrix]
    conv_lhs => rw [hA]
    conv_rhs => rw [hA]
    rw [submatrix_mul_equiv, submatrix_mul_equiv, hEA]

variable (κ : Type) [Fintype κ] [DecidableEq κ]

def hypJ : Matrix (κ ⊕ κ) (κ ⊕ κ) R := fromBlocks 0 1 1 0

def hypE : Matrix (κ ⊕ κ) (κ ⊕ κ) R := fromBlocks 1 0 0 0

theorem hypJ_herm : (hypJ κ : Matrix (κ ⊕ κ) (κ ⊕ κ) R)ᴴ = hypJ κ := by
  simp [hypJ, fromBlocks_conjTranspose]

theorem hypJ_sq : (hypJ κ : Matrix (κ ⊕ κ) (κ ⊕ κ) R) * hypJ κ = 1 := by
  simp [hypJ, fromBlocks_multiply]

theorem hypJ_det : IsUnit (hypJ κ : Matrix (κ ⊕ κ) (κ ⊕ κ) R).det := by
  refine IsUnit.of_mul_eq_one (hypJ κ : Matrix (κ ⊕ κ) (κ ⊕ κ) R).det ?_
  rw [← det_mul, hypJ_sq, det_one]

theorem hypE_idem : (hypE κ : Matrix (κ ⊕ κ) (κ ⊕ κ) R) * hypE κ = hypE κ := by
  simp [hypE, fromBlocks_multiply]

theorem hypE_lag : (hypE κ : Matrix (κ ⊕ κ) (κ ⊕ κ) R)ᴴ * hypJ κ = hypJ κ * (1 - hypE κ) := by
  have h1 : (1 : Matrix (κ ⊕ κ) (κ ⊕ κ) R) - hypE κ = fromBlocks 0 0 0 1 := by
    rw [← fromBlocks_one, hypE, sub_eq_add_neg, fromBlocks_neg, fromBlocks_add]
    simp
  rw [h1]
  simp [hypE, hypJ, fromBlocks_conjTranspose, fromBlocks_multiply]

end Lag

section Main

variable {R : Type} [CommRing R] [StarRing R] {R₀ : Subring R}
  [HenselianLocalRing R₀] [Finite (ResidueField R₀)]

theorem lag_exists_sum (hR₀ : ∀ x, x ∈ R₀ ↔ star x = x) {θ : R} (hθ : IsUnit (θ - star θ))
    (κ : Type) [Fintype κ] [DecidableEq κ] (A : Matrix (κ ⊕ κ) (κ ⊕ κ) R) (hA : Aᴴ = A)
    (hdet : IsUnit A.det) :
    ∃ e : Matrix (κ ⊕ κ) (κ ⊕ κ) R, e * e = e ∧ eᴴ * A = A * (1 - e) := by
  obtain ⟨g, hg, hgA⟩ := Formalism.HermitianLatticesTheory.unimodUnramUnique_main hR₀ hθ _ (κ ⊕ κ) rfl A hA hdet
  obtain ⟨c, hc, hcJ⟩ := Formalism.HermitianLatticesTheory.unimodUnramUnique_main hR₀ hθ _ (κ ⊕ κ) rfl
    (hypJ κ) (hypJ_herm κ) (hypJ_det κ)
  have hc1 : c * c⁻¹ = 1 := mul_nonsing_inv c hc
  have hc2 : (c⁻¹)ᴴ * cᴴ = 1 := by rw [← conjTranspose_mul, hc1, conjTranspose_one]
  have hcX : ∀ X : Matrix (κ ⊕ κ) (κ ⊕ κ) R, (c⁻¹)ᴴ * (cᴴ * X) = X := fun X => by
    rw [← Matrix.mul_assoc, hc2, Matrix.one_mul]
  have hP : IsUnit (g * c⁻¹).det := by
    rw [det_mul]; exact hg.mul (isUnit_nonsing_inv_det c hc)
  have hPA : (g * c⁻¹)ᴴ * A * (g * c⁻¹) = hypJ κ := by
    calc (g * c⁻¹)ᴴ * A * (g * c⁻¹) = (c⁻¹)ᴴ * (gᴴ * A * g) * c⁻¹ := by
          simp only [conjTranspose_mul, Matrix.mul_assoc]
      _ = (c⁻¹)ᴴ * (cᴴ * hypJ κ * c) * c⁻¹ := by rw [hgA, hcJ]
      _ = hypJ κ := by simp only [Matrix.mul_assoc, hc1, Matrix.mul_one, hcX]
  exact ⟨_, lag_congr A (hypJ κ) (g * c⁻¹) (hypE κ) hP hPA (hypE_idem κ) (hypE_lag κ)⟩

theorem lag_exists (hR₀ : ∀ x, x ∈ R₀ ↔ star x = x) {θ : R} (hθ : IsUnit (θ - star θ))
    {ι : Type} [Fintype ι] [DecidableEq ι] (hι : Even (Fintype.card ι)) (A : Matrix ι ι R)
    (hA : Aᴴ = A) (hdet : IsUnit A.det) :
    ∃ e : Matrix ι ι R, e * e = e ∧ eᴴ * A = A * (1 - e) := by
  obtain ⟨m, hm⟩ := hι
  let s : Fin m ⊕ Fin m ≃ ι := Fintype.equivOfCardEq (by simp [hm])
  have hB : (A.submatrix s s)ᴴ = A.submatrix s s := by rw [conjTranspose_submatrix, hA]
  have hBdet : IsUnit (A.submatrix s s).det := by rw [det_submatrix_equiv_self]; exact hdet
  obtain ⟨E, hE, hEA⟩ := lag_exists_sum hR₀ hθ (Fin m) _ hB hBdet
  exact ⟨_, lag_reindex s A E hE hEA⟩

end Main

end PI.LocCartanPair
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PairBaseOfLag =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PlaneIsUnitOfSubOneMem =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PlaneIsUnitOfSubOneMem", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\npublic import Mathlib.RingTheory.Henselian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.SqPair.LCP

open Polynomial IsLocalRing Matrix

theorem plane_isUnit_of_sub_one_mem {A : Type*} [CommRing A] [IsLocalRing A] {x : A}
    (h : x - 1 ∈ maximalIdeal A) : IsUnit x := by
  by_contra hx
  have hxm : x ∈ maximalIdeal A := (mem_maximalIdeal x).2 hx
  have h1 : (1 : A) ∈ maximalIdeal A := by
    have h2 := sub_mem hxm h
    rwa [sub_sub_cancel] at h2
  exact (maximalIdeal.isMaximal A).ne_top ((Ideal.eq_top_iff_one _).2 h1)

theorem plane_core {R : Type*} [CommRing R] (σ : R ≃+* R) (α β t s c : R)
    (hα : σ α = α) (h1 : β + t + σ t + t * σ t * α = 0)
    (h2 : s * (1 + t * α) + σ s * (1 + σ t * α) = -α) (h3 : c * (1 + t * α) = 1) :
    ((!![1 + s * t, c * t; s, c] : Matrix (Fin 2) (Fin 2) R).map σ)ᵀ * !![α, 1; 1, β]
        * !![1 + s * t, c * t; s, c] = !![0, 1; 1, 0] ∧
      (!![1 + s * t, c * t; s, c] : Matrix (Fin 2) (Fin 2) R).det = c := by
  have h3σ : σ c * (1 + σ t * α) = 1 := by
    have h4 := congrArg σ h3
    simpa only [map_mul, map_add (f := _), map_one, hα] using h4
  refine ⟨?_, ?_⟩
  · ext i j
    fin_cases i <;> fin_cases j <;>
      simp [Matrix.mul_apply, Fin.sum_univ_two, map_add (f := _), map_mul, map_one]
    · linear_combination h2 + σ s * s * h1
    · linear_combination h3 + σ s * c * h1
    · linear_combination h3σ + σ c * s * h1
    · linear_combination σ c * c * h1
  · simp [Matrix.det_fin_two]
    ring

theorem plane_exists {R : Type*} [CommRing R] (σ : R ≃+* R) (hσ : ∀ x, σ (σ x) = x)
    (R₀ : Subring R) (hR₀ : ∀ x, x ∈ R₀ ↔ σ x = x) [HenselianLocalRing R₀]
    (τ : R) (hτ : τ + σ τ = 1) (α β : R₀) (hα : α ∈ maximalIdeal R₀) :
    ∃ t s c : R, β + t + σ t + t * σ t * α = 0 ∧
      s * (1 + t * α) + σ s * (1 + σ t * α) = -α ∧ c * (1 + t * α) = 1 ∧ ∃ s', s = α * s' := by
  have hfix : ∀ x : R₀, σ (x : R) = x := fun x => (hR₀ x).1 x.2
  have hNfix : σ (τ * σ τ) = τ * σ τ := by rw [map_mul, hσ, mul_comm]
  let N : R₀ := ⟨τ * σ τ, (hR₀ _).2 hNfix⟩
  have hN : (N : R) = τ * σ τ := rfl
  obtain ⟨w, hwroot, hw1⟩ := HenselianLocalRing.is_henselian (X ^ 2 - X + C (α * N * β))
    (by monicity!) 1
    (by
      simp only [eval_add, eval_sub, eval_pow, eval_X, eval_C, one_pow, sub_self, zero_add]
      exact Ideal.mul_mem_right _ _ (Ideal.mul_mem_right _ _ hα))
    (by
      simp only [derivative_add, derivative_sub, derivative_X_pow, derivative_X, derivative_C,
        eval_add, eval_sub, eval_mul, eval_C, eval_pow, eval_X, eval_one, eval_zero]
      norm_num)
  have hr : w ^ 2 - w + α * N * β = 0 := by
    have h0 := hwroot.eq_zero
    simpa only [eval_add, eval_sub, eval_pow, eval_X, eval_C] using h0
  obtain ⟨wu, rfl⟩ := plane_isUnit_of_sub_one_mem hw1
  have hwv : (wu : R₀) * ↑wu⁻¹ = 1 := wu.mul_inv
  let x : R₀ := -β * ↑wu⁻¹
  have hx : β + x + α * N * x ^ 2 = 0 := by
    linear_combination (β * (↑wu⁻¹ : R₀) ^ 2) * hr -
      (β + β * ↑wu⁻¹ * ↑wu - β * ↑wu⁻¹) * hwv
  have hxR : (β : R) + x + α * (τ * σ τ) * (x : R) ^ 2 = 0 := by
    have h0 := congrArg (fun y : R₀ => (y : R)) hx
    simpa only [Subring.coe_add, Subring.coe_mul, Subring.coe_pow, hN, ZeroMemClass.coe_zero]
      using h0
  let nR : R₀ := 1 + x * α + N * x ^ 2 * α ^ 2
  have hnm : nR - 1 ∈ maximalIdeal R₀ := by
    have e : nR - 1 = α * (x + N * x ^ 2 * α) := by ring
    rw [e]
    exact Ideal.mul_mem_right _ _ hα
  obtain ⟨nu, hnu⟩ := plane_isUnit_of_sub_one_mem hnm
  have hninv : ((nR : R₀) : R) * ((↑nu⁻¹ : R₀) : R) = 1 := by
    have h0 := congrArg (fun y : R₀ => (y : R)) nu.mul_inv
    simpa only [hnu, Subring.coe_mul, OneMemClass.coe_one] using h0
  set t : R := τ * x with ht
  have hσt : σ t = σ τ * x := by rw [ht, map_mul, hfix]
  have hnR : (1 + t * α) * (1 + σ t * α) = ((nR : R₀) : R) := by
    rw [hσt, ht]
    simp only [nR]
    push_cast
    linear_combination ((x : R) * α) * hτ - ((x : R) ^ 2 * (α : R) ^ 2) * hN
  set c : R := (1 + σ t * α) * ((↑nu⁻¹ : R₀) : R) with hc
  have h3 : c * (1 + t * α) = 1 := by
    rw [hc]
    linear_combination ((↑nu⁻¹ : R₀) : R) * hnR + hninv
  have hσc : σ c = (1 + t * α) * ((↑nu⁻¹ : R₀) : R) := by
    rw [hc, map_mul, map_add (f := _), map_one, map_mul, hσ, hfix, hfix]
  refine ⟨t, -((α : R) * τ * c), c, ?_, ?_, h3, -(τ * c), by ring⟩
  · rw [hσt, ht]
    linear_combination hxR + (x : R) * hτ
  · rw [map_neg, map_mul, map_mul, hfix, hσc]
    linear_combination (-((α : R) * τ)) * h3 + (-((α : R) * σ τ * ((↑nu⁻¹ : R₀) : R))) * hnR +
      (-((α : R) * σ τ)) * hninv + (-(α : R)) * hτ

theorem plane_w {R : Type*} [CommRing R] (σ : R ≃+* R) (hσ : ∀ x, σ (σ x) = x)
    (R₀ : Subring R) (hR₀ : ∀ x, x ∈ R₀ ↔ σ x = x) [HenselianLocalRing R₀]
    (τ : R) (hτ : τ + σ τ = 1) (α β : R₀) (hα : α ∈ maximalIdeal R₀) :
    ∃ w : Matrix (Fin 2) (Fin 2) R, IsUnit w.det ∧
      (w.map σ)ᵀ * !![(α : R), 1; 1, (β : R)] * w = !![0, 1; 1, 0] ∧ ∃ s', w 1 0 = (α : R) * s' := by
  obtain ⟨t, s, c, h1, h2, h3, s', hs'⟩ := plane_exists σ hσ R₀ hR₀ τ hτ α β hα
  obtain ⟨hform, hdet⟩ := plane_core σ (α : R) (β : R) t s c ((hR₀ _).1 α.2) h1 h2 h3
  refine ⟨!![1 + s * t, c * t; s, c], ?_, hform, s', ?_⟩
  · rw [hdet]
    exact IsUnit.of_mul_eq_one _ h3
  · simp [hs']

theorem tau_of_theta {R : Type*} [CommRing R] (σ : R ≃+* R) (hσ : ∀ x, σ (σ x) = x) (θ : R)
    (hθ : IsUnit (θ - σ θ)) : ∃ τ : R, τ + σ τ = 1 := by
  obtain ⟨u, hu⟩ := hθ
  refine ⟨θ * ↑u⁻¹, ?_⟩
  have hσu : σ (↑u : R) = -↑u := by rw [hu, map_sub, hσ]; ring
  have h2 : (↑u : R) * ↑u⁻¹ = 1 := Units.mul_inv u
  have hσinv : σ (↑u⁻¹ : R) = -↑u⁻¹ := by
    have h1 : σ (↑u : R) * σ (↑u⁻¹ : R) = 1 := by rw [← map_mul, Units.mul_inv, map_one]
    rw [hσu] at h1
    linear_combination (-σ (↑u⁻¹ : R)) * h2 + (-(↑u⁻¹ : R)) * h1
  rw [map_mul, hσinv]
  rw [hu] at h2
  linear_combination h2

end PI.SqPair.LCP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PlaneIsUnitOfSubOneMem =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.HyperbolicPlane =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.HyperbolicPlane", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PiNonunit\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PairBaseOfLag\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PlaneIsUnitOfSubOneMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Matrix

namespace PI.SqPair.LCP

theorem base_lagrangian : BaseLag := by
  intro R _ _ R₀ _ _ ϖ hI κ _ _ hev A hA
  obtain ⟨θ, hθ⟩ := hI.unr
  exact PI.LocCartanPair.lag_exists hI.fix hθ hev A hA.1 hA.2

theorem hyperbolic_plane : Plane := by
  intro R _ _ R₀ _ ϖ hI α β hα
  obtain ⟨θ, hθ⟩ := hI.unr
  have hσ : ∀ x : R, (starRingAut : R ≃+* R) ((starRingAut : R ≃+* R) x) = x := fun x => by
    simp [starRingAut_apply]
  have hR₀ : ∀ x, x ∈ R₀ ↔ (starRingAut : R ≃+* R) x = x := fun x => by
    rw [starRingAut_apply]
    exact hI.fix x
  have hθ' : IsUnit (θ - (starRingAut : R ≃+* R) θ) := by
    rw [starRingAut_apply]
    exact hθ
  obtain ⟨τ, hτ⟩ := tau_of_theta (starRingAut : R ≃+* R) hσ θ hθ'
  obtain ⟨w, hw1, hw2, hw3⟩ := plane_w (starRingAut : R ≃+* R) hσ R₀ hR₀ τ hτ α β hα
  refine ⟨w, hw1, ?_, hw3⟩
  have hct : wᴴ = (w.map (starRingAut : R ≃+* R))ᵀ := by
    ext i j
    simp [Matrix.conjTranspose_apply, starRingAut_apply]
  rw [hct, hw2]
  rfl

end PI.SqPair.LCP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.HyperbolicPlane =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PairDichotomy =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PairDichotomy", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PiNonunit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.SqPair.LCP

open Polynomial IsLocalRing

theorem pair_dichotomy : Dichotomy := by
  intro R _ _ R₀ hfix _ _ _ _ hunr ϖ hϖ
  obtain ⟨θ, hθ⟩ := hunr
  have hst : ∀ r : R₀, star (r : R) = r := fun r => (hfix _).mp r.2
  have unit_of : ∀ {M : Type} [CommMonoid M] (a b : M), a * b = 1 → IsUnit a :=
    fun a b h => ⟨⟨a, b, h, (mul_comm b a).trans h⟩, rfl⟩
  obtain ⟨Di, hDi⟩ : ∃ Di : R, (θ - star θ) * Di = 1 := hθ.exists_right_inv
  have hDis : star Di = -Di := by
    have h2 := congrArg star hDi
    simp only [star_mul', star_sub, star_star, star_one] at h2
    linear_combination (-star Di) * hDi + (-Di) * h2
  have coord : ∀ x : R, ∃ a b : R₀, x = a + b * θ := by
    intro x
    have hb : (x - star x) * Di ∈ R₀ := by
      rw [hfix]
      simp only [star_mul', star_sub, star_star, hDis]
      ring
    have ha : x - (x - star x) * Di * θ ∈ R₀ := by
      rw [hfix]
      simp only [star_mul', star_sub, star_star, hDis]
      linear_combination (x - star x) * hDi
    exact ⟨⟨_, ha⟩, ⟨_, hb⟩, by simp⟩
  have hT : θ + star θ ∈ R₀ := by rw [hfix, star_add, star_star, add_comm]
  have hN : θ * star θ ∈ R₀ := by rw [hfix, star_mul', star_star, mul_comm]
  obtain ⟨T, hTc⟩ : ∃ T : R₀, (T : R) = θ + star θ := ⟨⟨_, hT⟩, rfl⟩
  obtain ⟨Nn, hNc⟩ : ∃ Nn : R₀, (Nn : R) = θ * star θ := ⟨⟨_, hN⟩, rfl⟩
  obtain ⟨E, hEc⟩ : ∃ E : R₀, (E : R) = Di ^ 2 :=
    ⟨⟨Di ^ 2, by rw [hfix, star_pow, hDis, neg_sq]⟩, rfl⟩
  have h4 : ((4 : R₀) : R) = 4 := map_ofNat R₀.subtype 4
  have hd : IsUnit (T ^ 2 - 4 * Nn) :=
    unit_of _ E (Subtype.ext (by
      push_cast [hTc, hNc, hEc, h4]
      linear_combination (θ * Di - star θ * Di + 1) * hDi))
  by_cases hs : ∃ c : R₀, ¬ IsUnit (c ^ 2 + T * c + Nn)
  · left
    obtain ⟨c, hc⟩ := hs
    have hu : IsUnit (2 * c + T) := by
      by_contra hn
      have h1 : (2 * c + T) ^ 2 ∈ maximalIdeal R₀ :=
        Ideal.pow_mem_of_mem _ ((mem_maximalIdeal _).mpr hn) 2 two_pos
      have h2 : 4 * (c ^ 2 + T * c + Nn) ∈ maximalIdeal R₀ :=
        Ideal.mul_mem_left _ _ ((mem_maximalIdeal _).mpr hc)
      have h3 := Ideal.sub_mem _ h1 h2
      rw [show (2 * c + T) ^ 2 - 4 * (c ^ 2 + T * c + Nn) = T ^ 2 - 4 * Nn by ring] at h3
      exact (mem_maximalIdeal _).mp h3 hd
    obtain ⟨r, hr, -⟩ := HenselianLocalRing.is_henselian (X ^ 2 + C T * X + C Nn) (by monicity!) c
      (by simpa [mem_maximalIdeal, mem_nonunits_iff] using hc)
      (by rw [show (derivative (X ^ 2 + C T * X + C Nn)).eval c = 2 * c + T by
        simp only [derivative_add, derivative_X_pow, derivative_C_mul_X, derivative_C, eval_add,
          eval_mul, eval_C, eval_pow, eval_X, add_zero] <;> norm_num]; exact hu)
    have hr' : r ^ 2 + T * r + Nn = 0 := by simpa using hr
    have hrR : (r : R) ^ 2 + (θ + star θ) * r + θ * star θ = 0 := by
      have h4 := congrArg (fun z : R₀ => (z : R)) hr'
      push_cast [hTc, hNc] at h4
      exact h4
    refine ⟨(r + θ) * Di, ?_, ?_⟩
    · linear_combination Di ^ 2 * hrR + (r + θ) * Di * hDi
    · simp only [star_mul', star_add, hst, hDis]
      linear_combination hDi
  · right
    push_neg at hs
    have hcoe : ∀ z : R₀, IsUnit z → IsUnit (z : R) := fun z hz => hz.map R₀.subtype
    have key : ∀ a b : R₀, IsUnit a ∨ IsUnit b → IsUnit ((a : R) + b * θ) := by
      intro a b hab
      have hNab : IsUnit (a ^ 2 + T * a * b + Nn * b ^ 2) := by
        rcases em (IsUnit b) with hb | hb
        · obtain ⟨bu, rfl⟩ := hb
          have hbb : (bu : R₀) * ↑bu⁻¹ = 1 := bu.mul_inv
          have e : a ^ 2 + T * a * bu + Nn * (bu : R₀) ^ 2 =
              (bu : R₀) ^ 2 * ((a * ↑bu⁻¹) ^ 2 + T * (a * ↑bu⁻¹) + Nn) := by
            linear_combination (-(a ^ 2) * ((bu : R₀) * ↑bu⁻¹ + 1) - T * a * bu) * hbb
          rw [e]
          exact (bu.isUnit.pow 2).mul (hs _)
        · have ha := hab.resolve_right hb
          by_contra hn
          have h1 : a ^ 2 + T * a * b + Nn * b ^ 2 ∈ maximalIdeal R₀ := (mem_maximalIdeal _).mpr hn
          have h2 : b * (T * a + Nn * b) ∈ maximalIdeal R₀ :=
            Ideal.mul_mem_right _ _ ((mem_maximalIdeal _).mpr hb)
          have h3 := Ideal.sub_mem _ h1 h2
          rw [show a ^ 2 + T * a * b + Nn * b ^ 2 - b * (T * a + Nn * b) = a ^ 2 by ring] at h3
          exact (mem_maximalIdeal _).mp h3 (ha.pow 2)
      have e : ((a : R) + b * θ) * (a + b * star θ) = ((a ^ 2 + T * a * b + Nn * b ^ 2 : R₀) : R) := by
        push_cast
        rw [hTc, hNc]
        ring
      exact isUnit_of_mul_isUnit_left (x := (a : R) + b * θ) (y := (a : R) + b * star θ)
        (by rw [e]; exact hcoe _ hNab)
    have hne : (ϖ : R) ≠ 0 := fun h => hϖ.ne_zero (Subtype.ext h)
    have hnu : ¬ IsUnit (ϖ : R) := by
      intro h
      obtain ⟨w, hw⟩ := h.exists_right_inv
      have hw' : (ϖ : R) * star w = 1 := by
        have h5 := congrArg star hw
        rwa [star_mul', hst, star_one] at h5
      have hws : star w = w := by linear_combination w * hw' - star w * hw
      exact hϖ.not_isUnit (unit_of ϖ ⟨w, (hfix w).mpr hws⟩ (Subtype.ext hw))
    have hval : ∀ x : R, x ≠ 0 → ∃ n : ℕ, ∃ u : R, IsUnit u ∧ x = ϖ ^ n * u := by
      intro x hx
      obtain ⟨a, b, rfl⟩ := coord x
      by_cases ha : a = 0
      · subst ha
        have hb : b ≠ 0 := by
          rintro rfl
          simp at hx
        obtain ⟨j, v, rfl⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hb hϖ
        refine ⟨j, ((v : R₀) : R) * θ, ?_, ?_⟩
        · simpa using key 0 v (Or.inr v.isUnit)
        · push_cast
          ring
      by_cases hb : b = 0
      · subst hb
        obtain ⟨i, u, rfl⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible ha hϖ
        refine ⟨i, ((u : R₀) : R), hcoe _ u.isUnit, ?_⟩
        push_cast
        ring
      obtain ⟨i, u, rfl⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible ha hϖ
      obtain ⟨j, v, rfl⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hb hϖ
      rcases le_total i j with hij | hij
      · obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hij
        refine ⟨i, ((u : R₀) : R) + ((v * ϖ ^ k : R₀) : R) * θ, key _ _ (Or.inl u.isUnit), ?_⟩
        push_cast
        ring
      · obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hij
        refine ⟨j, ((u * ϖ ^ k : R₀) : R) + ((v : R₀) : R) * θ, key _ _ (Or.inr v.isUnit), ?_⟩
        push_cast
        ring
    have hdom : IsDomain R := by
      haveI : Nontrivial R := nontrivial_of_ne _ _ hne
      haveI : NoZeroDivisors R := by
        refine ⟨fun {x y} hxy => ?_⟩
        by_contra hc
        push_neg at hc
        obtain ⟨m, u, hu, rfl⟩ := hval x hc.1
        obtain ⟨n, v, hv, rfl⟩ := hval y hc.2
        have h1 : (ϖ : R) ^ (m + n) * (u * v) = 0 := by
          rw [← hxy]
          ring
        have h2 := (hu.mul hv).mul_left_eq_zero.mp h1
        exact pow_ne_zero (m + n) hϖ.ne_zero (Subtype.ext (by push_cast; exact h2))
      exact NoZeroDivisors.to_isDomain R
    exact ⟨hfix, ⟨θ, hθ⟩, ϖ.2, hne, hnu, hdom, hval⟩

end PI.SqPair.LCP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PairDichotomy =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SelCore =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SelCore", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.NonsingularInverse\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Matrix

namespace PI.SqPair.LCP

variable {R : Type} [CommRing R] [IsDomain R]

theorem sel_factor (ϖ : R) (hϖ0 : ϖ ≠ 0)
    (hval : ∀ x : R, x ≠ 0 → ∃ n : ℕ, ∃ u : R, IsUnit u ∧ x = ϖ ^ n * u)
    {ι κ : Type} (h : Matrix ι κ R) (hh : h ≠ 0) :
    ∃ (m : ℕ) (h₁ : Matrix ι κ R) (i : ι) (j : κ), h = ϖ ^ m • h₁ ∧ IsUnit (h₁ i j) := by
  classical
  have hex : ∃ n : ℕ, ∃ i j, h i j ≠ 0 ∧ ∃ u : R, IsUnit u ∧ h i j = ϖ ^ n * u := by
    by_contra hne
    apply hh
    ext i j
    rw [Matrix.zero_apply]
    by_contra hij
    obtain ⟨n, u, hu, he⟩ := hval _ hij
    exact hne ⟨n, i, j, hij, u, hu, he⟩
  obtain ⟨i₀, j₀, _, u₀, hu₀, he₀⟩ := Nat.find_spec hex
  have hdiv : ∀ i j, ∃ z : R, h i j = ϖ ^ Nat.find hex * z := by
    intro i j
    by_cases hij : h i j = 0
    · exact ⟨0, by rw [hij, mul_zero]⟩
    · obtain ⟨n, u, hu, he⟩ := hval _ hij
      have hmn : Nat.find hex ≤ n := Nat.find_min' hex ⟨i, j, hij, u, hu, he⟩
      refine ⟨ϖ ^ (n - Nat.find hex) * u, ?_⟩
      rw [he, ← mul_assoc, ← pow_add, Nat.add_sub_cancel' hmn]
  choose h₁ hh₁ using hdiv
  refine ⟨Nat.find hex, Matrix.of h₁, i₀, j₀, ?_, ?_⟩
  · ext i j
    simp only [Matrix.smul_apply, smul_eq_mul, Matrix.of_apply]
    exact hh₁ i j
  · have e : h₁ i₀ j₀ = u₀ :=
      mul_left_cancel₀ (pow_ne_zero _ hϖ0) ((hh₁ i₀ j₀).symm.trans he₀)
    simp only [Matrix.of_apply, e]
    exact hu₀

theorem sel_star_smul (σ : R ≃+* R) (ϖ : R) (hσϖ : σ ϖ = ϖ) (m : ℕ) {ι κ : Type}
    (h : Matrix ι κ R) : ((ϖ ^ m • h).map σ)ᵀ = ϖ ^ m • (h.map σ)ᵀ := by
  ext i j
  simp [Matrix.map_apply, Matrix.transpose_apply, Matrix.smul_apply, smul_eq_mul, map_mul, map_pow, hσϖ]

theorem sel_smul_cancel {ι κ : Type} {c : R} (hc : c ≠ 0) {X Y : Matrix ι κ R}
    (h : c • X = c • Y) : X = Y := by
  ext i j
  have h' := congrFun (congrFun h i) j
  simp only [Matrix.smul_apply, smul_eq_mul] at h'
  exact mul_left_cancel₀ hc h'

theorem sel_le (σ : R ≃+* R) (ϖ : R) (hϖ0 : ϖ ≠ 0) (hϖ : ¬ IsUnit ϖ) (hσϖ : σ ϖ = ϖ)
    {ι : Type} [Fintype ι] [DecidableEq ι] [Nonempty ι]
    (A A' h₁ : Matrix ι ι R) (hA' : IsUnit A'.det) (m k : ℕ)
    (hrel : ((ϖ ^ m • h₁).map σ)ᵀ * A * (ϖ ^ m • h₁) = ϖ ^ (2 * k) • A') :
    m ≤ k ∧ (h₁.map σ)ᵀ * A * h₁ = ϖ ^ (2 * (k - m)) • A' := by
  have hB : ϖ ^ (2 * m) • ((h₁.map σ)ᵀ * A * h₁) = ϖ ^ (2 * k) • A' := by
    rw [← hrel, sel_star_smul σ ϖ hσϖ]
    simp only [Matrix.smul_mul, Matrix.mul_smul, smul_smul, ← pow_add, two_mul]
  have hp0 : ∀ t : ℕ, ϖ ^ t ≠ 0 := fun t => pow_ne_zero _ hϖ0
  by_cases hmk : m ≤ k
  · refine ⟨hmk, sel_smul_cancel (hp0 (2 * m)) ?_⟩
    rw [hB, smul_smul, ← pow_add]
    congr 2
    omega
  · exfalso
    push_neg at hmk
    have h2 : ϖ ^ (2 * k) • (ϖ ^ (2 * (m - k)) • ((h₁.map σ)ᵀ * A * h₁)) = ϖ ^ (2 * k) • A' := by
      rw [smul_smul, ← pow_add, ← hB]
      congr 2
      omega
    have h3 := sel_smul_cancel (hp0 (2 * k)) h2
    have h4 := congrArg Matrix.det h3
    rw [Matrix.det_smul] at h4
    rw [← h4] at hA'
    have h5 : IsUnit ((ϖ ^ (2 * (m - k))) ^ Fintype.card ι) := isUnit_of_mul_isUnit_left hA'
    rw [← pow_mul] at h5
    have hpos : 2 * (m - k) * Fintype.card ι ≠ 0 :=
      Nat.pos_iff_ne_zero.mp (Nat.mul_pos (by omega) Fintype.card_pos)
    exact hϖ ((isUnit_pow_iff hpos).mp h5)

theorem sel_unit_of_rel (σ : R ≃+* R) {ι : Type} [Fintype ι] [DecidableEq ι]
    (A A' h₁ : Matrix ι ι R) (hA' : IsUnit A'.det)
    (hrel : (h₁.map σ)ᵀ * A * h₁ = A') : IsUnit h₁.det := by
  have e := congrArg Matrix.det hrel
  rw [Matrix.det_mul, Matrix.det_mul] at e
  rw [← e] at hA'
  exact isUnit_of_mul_isUnit_right hA'

theorem sel_comm {ι : Type} [Fintype ι] [DecidableEq ι] {c : R} (hc : c ≠ 0)
    (g h : Matrix ι ι R) (hgh : g * h = c • 1) : h * g = c • 1 := by
  have hdet : g.det * h.det = c ^ Fintype.card ι := by
    rw [← Matrix.det_mul, hgh, Matrix.det_smul, Matrix.det_one, mul_one]
  have hh0 : h.det ≠ 0 := by
    intro h0
    rw [h0, mul_zero] at hdet
    exact pow_ne_zero _ hc hdet.symm
  have key : (h * g - c • 1) * h = 0 := by
    rw [Matrix.sub_mul, Matrix.mul_assoc, hgh, Matrix.mul_smul, Matrix.smul_mul, Matrix.mul_one,
      Matrix.one_mul, sub_self]
  have key2 : h.det • (h * g - c • 1) = 0 := by
    have e := congrArg (· * h.adjugate) key
    simp only [Matrix.zero_mul] at e
    rw [Matrix.mul_assoc, Matrix.mul_adjugate, Matrix.mul_smul, Matrix.mul_one] at e
    exact e
  have e0 : h * g - c • 1 = 0 := by
    ext i j
    have e := congrFun (congrFun key2 i) j
    simp only [Matrix.smul_apply, smul_eq_mul, Matrix.zero_apply] at e ⊢
    exact (mul_eq_zero.mp e).resolve_left hh0
  exact sub_eq_zero.mp e0

theorem sel_inv (σ : R ≃+* R) {ι : Type} [Fintype ι] [DecidableEq ι]
    (A A' h₁ : Matrix ι ι R) (hA' : IsUnit A'.det) {c : R} (hc : c ≠ 0)
    (hrel : (h₁.map σ)ᵀ * A * h₁ = c • A') :
    (A'⁻¹ * (h₁.map σ)ᵀ * A) * h₁ = c • 1 ∧ h₁ * (A'⁻¹ * (h₁.map σ)ᵀ * A) = c • 1 := by
  have h1 : (A'⁻¹ * (h₁.map σ)ᵀ * A) * h₁ = c • 1 := by
    rw [Matrix.mul_assoc, Matrix.mul_assoc, ← Matrix.mul_assoc _ A h₁, hrel, Matrix.mul_smul,
      Matrix.nonsing_inv_mul _ hA']
  exact ⟨h1, sel_comm hc _ _ h1⟩

theorem sel_dual (σ : R ≃+* R) {ι : Type} [Fintype ι] [DecidableEq ι]
    (A : Matrix ι ι R) (hA : IsUnit A.det) (x : ι → R) (i : ι) (hx : IsUnit (x i)) :
    ∃ y : ι → R, (fun l => σ (x l)) ⬝ᵥ (A *ᵥ y) = 1 := by
  obtain ⟨u, hu⟩ := hx.map σ
  refine ⟨A⁻¹ *ᵥ Pi.single i (↑u⁻¹ : R), ?_⟩
  rw [Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ hA, Matrix.one_mulVec, dotProduct_single]
  simp [← hu]

theorem sel_form (σ : R ≃+* R) {ι κ : Type} [Fintype ι] [Fintype κ]
    (A : Matrix ι ι R) (M : Matrix ι κ R) (v w : κ → R) :
    (fun l => σ ((M *ᵥ v) l)) ⬝ᵥ (A *ᵥ (M *ᵥ w)) =
      (fun l => σ (v l)) ⬝ᵥ (((M.map σ)ᵀ * A * M) *ᵥ w) := by
  have e : (fun l => σ ((M *ᵥ v) l)) = (M.map σ) *ᵥ (fun l => σ (v l)) := by
    funext l
    exact RingHom.map_mulVec (σ : R →+* R) M v l
  rw [e, ← Matrix.vecMul_transpose, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec]

end PI.SqPair.LCP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SelCore =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SelMain =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SelMain", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SelCore\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Matrix

namespace PI.SqPair.LCP

variable {R : Type} [CommRing R] [IsDomain R]

theorem sel_main (σ : R ≃+* R) (ϖ : R) (hϖ0 : ϖ ≠ 0) (hϖ : ¬ IsUnit ϖ) (hσϖ : σ ϖ = ϖ)
    (hval : ∀ x : R, x ≠ 0 → ∃ n : ℕ, ∃ u : R, IsUnit u ∧ x = ϖ ^ n * u)
    {ι : Type} [Fintype ι] [DecidableEq ι] [Nonempty ι]
    (A A' h : Matrix ι ι R) (hA : IsUnit A.det) (hA' : IsUnit A'.det) (k : ℕ)
    (hrel : (h.map σ)ᵀ * A * h = ϖ ^ (2 * k) • A') :
    ∃ (m : ℕ) (h₁ : Matrix ι ι R), h = ϖ ^ m • h₁ ∧ m ≤ k ∧
      (h₁.map σ)ᵀ * A * h₁ = ϖ ^ (2 * (k - m)) • A' ∧
      ((m = k ∧ IsUnit h₁.det) ∨
       (m < k ∧ ∃ (g₁ : Matrix ι ι R) (j : ι) (y : ι → R),
          g₁ * h₁ = ϖ ^ (2 * (k - m)) • 1 ∧ h₁ * g₁ = ϖ ^ (2 * (k - m)) • 1 ∧
          (∃ i, IsUnit ((h₁ *ᵥ Pi.single j 1) i)) ∧
          (fun l => σ ((h₁ *ᵥ Pi.single j 1) l)) ⬝ᵥ (A *ᵥ y) = 1 ∧
          (fun l => σ ((h₁ *ᵥ Pi.single j 1) l)) ⬝ᵥ (A *ᵥ (h₁ *ᵥ Pi.single j 1)) =
            ϖ ^ (2 * (k - m)) * A' j j ∧
          ϖ ^ (2 * (k - m)) • y = h₁ *ᵥ (g₁ *ᵥ y))) := by
  have hc : ∀ n : ℕ, ϖ ^ n ≠ 0 := fun n => pow_ne_zero n hϖ0
  have hh : h ≠ 0 := by
    rintro rfl
    have h0 : ϖ ^ (2 * k) • A' = 0 := by rw [← hrel]; simp
    rcases smul_eq_zero.1 h0 with h2 | h2
    · exact hc _ h2
    · rw [h2, Matrix.det_zero] at hA'
      exact not_isUnit_zero hA'
  obtain ⟨m, h₁, i, j, rfl, hu⟩ := sel_factor ϖ hϖ0 hval h hh
  obtain ⟨hmk, hrel₁⟩ := sel_le σ ϖ hϖ0 hϖ hσϖ A A' h₁ hA' m k hrel
  refine ⟨m, h₁, rfl, hmk, hrel₁, ?_⟩
  rcases Nat.lt_or_ge m k with hlt | hge
  · right
    refine ⟨hlt, ?_⟩
    obtain ⟨hg1, hg2⟩ := sel_inv σ A A' h₁ hA' (hc _) hrel₁
    have hxi : IsUnit ((h₁ *ᵥ Pi.single j 1) i) := by simpa [Matrix.mulVec_single] using hu
    obtain ⟨y, hy⟩ := sel_dual σ A hA (h₁ *ᵥ Pi.single j 1) i hxi
    refine ⟨A'⁻¹ * (h₁.map σ)ᵀ * A, j, y, hg1, hg2, ⟨i, hxi⟩, hy, ?_, ?_⟩
    · rw [sel_form σ A h₁ (Pi.single j 1) (Pi.single j 1), hrel₁]
      have hs : (fun l : ι => σ ((Pi.single j (1 : R) : ι → R) l)) = (Pi.single j 1 : ι → R) := by
        funext l
        by_cases hl : l = j
        · subst hl
          simp
        · simp [hl]
      rw [hs]
      simp [Matrix.mulVec_single, dotProduct, Pi.single_apply]
    · rw [Matrix.mulVec_mulVec, hg2, Matrix.smul_mulVec, Matrix.one_mulVec]
  · left
    have hm : m = k := le_antisymm hmk hge
    subst hm
    refine ⟨rfl, ?_⟩
    rw [Nat.sub_self, mul_zero, pow_zero, one_smul] at hrel₁
    exact sel_unit_of_rel σ A A' h₁ hA' hrel₁

end PI.SqPair.LCP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SelMain =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PairSelection =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PairSelection", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PiNonunit\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.SelMain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Matrix

namespace PI.SqPair.LCP

theorem pair_selection : Select := by
  intro R _ _ R₀ ϖ hI ι _ _ A A' h k hP hNB
  have := hI.dom
  obtain ⟨⟨_, hA⟩, ⟨_, hA'⟩, hrel⟩ := hP
  have hne : Nonempty ι := by
    by_contra hne
    rw [not_nonempty_iff] at hne
    exact hNB ⟨1, by simp, by ext i; exact (IsEmpty.false i).elim⟩
  let σ : R ≃+* R := starRingAut
  have hct : ∀ M : Matrix ι ι R, (M.map σ)ᵀ = Mᴴ := by
    intro M; ext i j; simp [σ, Matrix.conjTranspose_apply]
  have hs : ∀ x : ι → R, star x = fun l => σ (x l) := by
    intro x; ext l; simp [σ]
  have hσϖ : σ ϖ = ϖ := by simpa [σ] using (hI.fix ϖ).mp hI.pi_mem
  have hrel' : (h.map σ)ᵀ * A * h = ϖ ^ (2 * k) • A' := by rw [hct]; exact hrel
  obtain ⟨m, h₁, rfl, hle, _, hcase⟩ :=
    sel_main σ ϖ hI.pi_ne hI.pi_nonunit hσϖ hI.val A A' h hA hA' k hrel'
  rcases hcase with ⟨hmk, hu⟩ | ⟨hlt, g₁, j, y, _, _, _, hxy, hxx, hy⟩
  · exact absurd ⟨h₁, hu, by rw [hmk]⟩ hNB
  · refine ⟨k - m, h₁ *ᵥ Pi.single j 1, y, by omega, by omega, ?_, ⟨A' j j, ?_⟩,
      ⟨Pi.single j 1, ?_⟩, ⟨g₁ *ᵥ y, ?_⟩⟩
    · unfold hf; rw [hs]; exact hxy
    · unfold hf; rw [hs]; exact hxx
    · rw [Matrix.smul_mulVec, show k - (k - m) = m by omega]
    · rw [Matrix.smul_mulVec, ← hy, smul_smul, ← pow_add]
      congr 2
      omega

end PI.SqPair.LCP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PairSelection =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.StepGlue =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.StepGlue", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PiNonunit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Matrix

namespace PI.SqPair.LCP

section Lin
variable {R : Type} [CommRing R] [StarRing R] {ι : Type} [Fintype ι]

lemma sg_hf_add_left (A : Matrix ι ι R) (x x' y : ι → R) :
    hf A (x + x') y = hf A x y + hf A x' y := by
  simp only [hf, star_add, add_dotProduct]

lemma sg_hf_add_right (A : Matrix ι ι R) (x y y' : ι → R) :
    hf A x (y + y') = hf A x y + hf A x y' := by
  simp only [hf, mulVec_add, dotProduct_add]

lemma sg_hf_smul_left (A : Matrix ι ι R) (c : R) (x y : ι → R) :
    hf A (c • x) y = star c * hf A x y := by
  simp only [hf, dotProduct, mulVec, Pi.star_apply, Pi.smul_apply, smul_eq_mul, star_mul', Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  ring_nf

lemma sg_hf_smul_right (A : Matrix ι ι R) (c : R) (x y : ι → R) :
    hf A x (c • y) = c * hf A x y := by
  simp only [hf, mulVec_smul, dotProduct_smul, smul_eq_mul]

lemma sg_hf_star {A : Matrix ι ι R} (hA : Aᴴ = A) (x y : ι → R) :
    star (hf A x y) = hf A y x := by
  conv_rhs => rw [← hA]
  simp only [hf, dotProduct, mulVec, Pi.star_apply, star_sum, star_mul', star_star, conjTranspose_apply,
    Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  ring

end Lin

theorem step_of (h5 : Select) (h8 : Plane) (h6 : Split) : Step := by
  intro R _ _ R₀ _ ϖ hin κ _ _ A A' h k hP hnb
  haveI := hin.dom
  obtain ⟨a, x, y, ha0, hak, hxy, ⟨c, hc⟩, ⟨v, hv⟩, ⟨w, hw⟩⟩ := h5 R R₀ ϖ hin (Fin 2 ⊕ κ) A A' h k hP hnb
  have hA : Aᴴ = A := hP.1.1
  have hsϖ : star ϖ = ϖ := (hin.fix ϖ).1 hin.pi_mem
  have hyx : hf A y x = 1 := by rw [← sg_hf_star hA x y, hxy, star_one]
  have hpow0 : ϖ ^ (2 * a) ≠ 0 := pow_ne_zero _ hin.pi_ne
  have hcR : c ∈ R₀ := by
    rw [hin.fix]
    have h1 := sg_hf_star hA x x
    rw [hc, star_mul, star_pow, hsϖ] at h1
    exact mul_left_cancel₀ hpow0 (by rw [mul_comm, h1])
  have hβR : hf A y y ∈ R₀ := (hin.fix _).2 (sg_hf_star hA y y)
  have hϖm : (⟨ϖ, hin.pi_mem⟩ : R₀) ∈ IsLocalRing.maximalIdeal R₀ := by
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    intro hu
    exact hin.pi_nonunit (hu.map R₀.subtype)
  have hmα : ϖ ^ (2 * a) * c ∈ R₀ := R₀.mul_mem (R₀.pow_mem hin.pi_mem _) hcR
  have hαm : (⟨ϖ ^ (2 * a) * c, hmα⟩ : R₀) ∈ IsLocalRing.maximalIdeal R₀ := by
    have e : (⟨ϖ ^ (2 * a) * c, hmα⟩ : R₀) = ⟨ϖ, hin.pi_mem⟩ ^ (2 * a) * ⟨c, hcR⟩ := Subtype.ext (by simp)
    rw [e]
    exact Ideal.mul_mem_right _ _ (Ideal.pow_mem_of_mem _ hϖm _ (by omega))
  obtain ⟨W, hWdet, hW, s', hs'⟩ := h8 R R₀ ϖ hin ⟨ϖ ^ (2 * a) * c, hmα⟩ ⟨hf A y y, hβR⟩ hαm
  have e00 := congrFun (congrFun hW 0) 0
  have e11 := congrFun (congrFun hW 1) 1
  have e01 := congrFun (congrFun hW 0) 1
  simp [Matrix.mul_apply, Fin.sum_univ_two, hyp, conjTranspose_apply] at e00 e11 e01 hs'
  have hk : ϖ ^ (k + a) = ϖ ^ (2 * a) * ϖ ^ (k - a) := by rw [← pow_add]; congr 1; omega

  refine h6 R R₀ ϖ hin κ A A' h k a hP hak (W 0 0 • x + W 1 0 • y) (W 0 1 • x + W 1 1 • y) (W 0 0 • v + (s' * c) • w) ((W 0 1 * ϖ ^ (2 * a)) • v + W 1 1 • w) ?_ ?_ ?_ ?_ ?_
  · simp only [sg_hf_add_left, sg_hf_add_right, sg_hf_smul_left, sg_hf_smul_right, hxy, hyx, hc]
    linear_combination e00
  · simp only [sg_hf_add_left, sg_hf_add_right, sg_hf_smul_left, sg_hf_smul_right, hxy, hyx, hc]
    linear_combination e11
  · simp only [sg_hf_add_left, sg_hf_add_right, sg_hf_smul_left, sg_hf_smul_right, hxy, hyx, hc]
    linear_combination e01
  · rw [mulVec_add, mulVec_smul, mulVec_smul, hv, hw, hk, hs']
    simp only [smul_add, smul_smul]
    congr 1 <;> congr 1 <;> ring
  · rw [mulVec_add, mulVec_smul, mulVec_smul, hv, hw, hk]
    simp only [smul_add, smul_smul]
    congr 1 <;> congr 1 <;> ring

end PI.SqPair.LCP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.StepGlue =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocCartanPair =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocCartanPair", "h": "module\n\npublic import Formalism.PeriodIntegrals.SqPair\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.CmpSplit\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.FiniteAdeleIdempotentOfFMulSelf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.HyperbolicPlane\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PairDichotomy\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.PairSelection\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalCartanPairs.StepGlue\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem local_cartan_pair : PI.SqPair.LocCartanPair :=
  PI.SqPair.LCP.locCartanPair_of PI.SqPair.LCP.pair_dichotomy PI.SqPair.LCP.base_lagrangian
    (PI.SqPair.LCP.step_of PI.SqPair.LCP.pair_selection PI.SqPair.LCP.hyperbolic_plane
      PI.SqPair.LCP.pair_split')
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocCartanPair =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SqPairLocal =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SqPairLocal", "h": "module\n\npublic import Formalism.PeriodIntegrals.SqPair\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocCartanPair\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SquarePairLocal.SqPairLocalOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem square_pair_local : PI.SqPair.PLocalAll := PI.SqPairLocal.sqPairLocal_of local_cartan_pair
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SqPairLocal =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SplitPairGen =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SplitPairGen", "h": "module\n\npublic import Formalism.LocalToGlobal.PairingIndexBounds.SplitPairEquations.SplitPairGen\npublic import Formalism.PeriodIntegrals.SqPair\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SquarePairGluing.SqPairGlueMain\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SqPairLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem split_pair_generation : Formalism.L2.PairingIndexBounds.Eq.SqG.SplitPairGen := _root_.PI.SqPairW.sqPairGlue_main square_pair_local
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SplitPairGen =====
