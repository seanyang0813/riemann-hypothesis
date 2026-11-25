module

public import Mathlib.Algebra.Ring.Hom.Defs
public import Mathlib.Order.Defs.LinearOrder
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl
public import Mathlib.Data.Nat.Prime.Defs
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TensCompl
public import Mathlib.Algebra.Polynomial.AlgebraMap
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.CechTens
public import Mathlib.RingTheory.Valuation.ValuationRing
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLiftOfSurjKer, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ColimLift, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.PerfectoidProd, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.SpanMap, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TowerSeq, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TestOfPre

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLiftOfSurjKer =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLiftOfSurjKer", "h": "module\n\npublic import Mathlib.Algebra.Ring.Hom.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Order.Defs.LinearOrder\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.ColimLift

variable {G : ℕ → Type} [∀ n, CommRing (G n)] (f : ∀ n, G n →+* G (n + 1))
  {L : Type} [CommRing L] (ι : ∀ n, G n →+* L)
  (t : ∀ n k, G n → G (n + k))

theorem apply_iter {T : Type} (y : ∀ n, G n → T)
    (t0 : ∀ n x, t n 0 x = x) (tS : ∀ n k x, t n (k + 1) x = f (n + k) (t n k x))
    (hy : ∀ n x, y (n + 1) (f n x) = y n x) (n k : ℕ) (x : G n) :
    y (n + k) (t n k x) = y n x := by
  induction k with
  | zero => exact congrArg (y n) (t0 n x)
  | succ k ih =>
    have h : y (n + (k + 1)) (t n (k + 1) x) = y (n + k + 1) (f (n + k) (t n k x)) :=
      congrArg (y (n + k + 1)) (tS n k x)
    rw [h, hy, ih]

theorem eq_of_same_stage {T : Type} [CommRing T] (y : ∀ n, G n →+* T)
    (t0 : ∀ n x, t n 0 x = x) (tS : ∀ n k x, t n (k + 1) x = f (n + k) (t n k x))
    (ker : ∀ n x, ι n x = 0 → ∃ k, t n k x = 0)
    (hy : ∀ n x, y (n + 1) (f n x) = y n x) (n : ℕ) (a b : G n) (h : ι n a = ι n b) :
    y n a = y n b := by
  obtain ⟨k, hk⟩ := ker n (a - b) (by rw [map_sub, h, sub_self])
  have h1 := apply_iter f t (fun n => (y n : G n → T)) t0 tS hy n k (a - b)
  simp only [hk, map_zero, map_sub] at h1
  exact sub_eq_zero.mp h1.symm

theorem eq_of_iota_eq {T : Type} [CommRing T] (y : ∀ n, G n →+* T)
    (hι : ∀ n x, ι (n + 1) (f n x) = ι n x)
    (t0 : ∀ n x, t n 0 x = x) (tS : ∀ n k x, t n (k + 1) x = f (n + k) (t n k x))
    (ker : ∀ n x, ι n x = 0 → ∃ k, t n k x = 0)
    (hy : ∀ n x, y (n + 1) (f n x) = y n x) (n m : ℕ) (a : G n) (b : G m)
    (h : ι n a = ι m b) : y n a = y m b := by
  have up : ∀ (n m : ℕ), n ≤ m → ∀ a : G n, ∃ a' : G m, ι m a' = ι n a ∧ y m a' = y n a := by
    intro n m hnm a
    obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hnm
    exact ⟨t n k a, apply_iter f t (fun n => (ι n : G n → L)) t0 tS hι n k a,
      apply_iter f t (fun n => (y n : G n → T)) t0 tS hy n k a⟩
  obtain ⟨a', ha, hya⟩ := up n (max n m) (le_max_left _ _) a
  obtain ⟨b', hb, hyb⟩ := up m (max n m) (le_max_right _ _) b
  rw [← hya, ← hyb]
  exact eq_of_same_stage f ι t y t0 tS ker hy _ a' b' (by rw [ha, hb, h])

theorem exists_lift_of_surj_ker
    (hι : ∀ n x, ι (n + 1) (f n x) = ι n x)
    (t0 : ∀ n x, t n 0 x = x) (tS : ∀ n k x, t n (k + 1) x = f (n + k) (t n k x))
    (surj : ∀ (m : ℕ) (v : Fin m → L), ∃ n, ∃ w : Fin m → G n, ∀ i, ι n (w i) = v i)
    (ker : ∀ n x, ι n x = 0 → ∃ k, t n k x = 0)
    {T : Type} [CommRing T] (y : ∀ n, G n →+* T) (hy : ∀ n x, y (n + 1) (f n x) = y n x) :
    ∃ z : L →+* T, ∀ n x, z (ι n x) = y n x := by
  classical
  have key := eq_of_iota_eq f ι t y hι t0 tS ker hy
  have rep : ∀ l : L, ∃ n, ∃ a : G n, ι n a = l := fun l => by
    obtain ⟨n, w, hw⟩ := surj 1 (fun _ => l)
    exact ⟨n, w 0, hw 0⟩
  choose r s hs using rep
  let z : L → T := fun l => y (r l) (s l)
  have hz : ∀ n x, z (ι n x) = y n x := fun n x => key _ _ _ _ (hs _)
  have two : ∀ l₁ l₂ : L, ∃ n, ∃ a b : G n, ι n a = l₁ ∧ ι n b = l₂ := fun l₁ l₂ => by
    obtain ⟨n, w, hw⟩ := surj 2 ![l₁, l₂]
    exact ⟨n, w 0, w 1, hw 0, hw 1⟩
  refine ⟨{ toFun := z, map_one' := ?_, map_zero' := ?_, map_mul' := ?_, map_add' := ?_ }, hz⟩
  · have := hz 0 1
    simpa using this
  · intro l₁ l₂
    obtain ⟨n, a, b, rfl, rfl⟩ := two l₁ l₂
    rw [← map_mul, hz, hz, hz, map_mul]
  · have := hz 0 0
    simpa using this
  · intro l₁ l₂
    obtain ⟨n, a, b, rfl, rfl⟩ := two l₁ l₂
    rw [← map_add (f := _), hz, hz, hz, map_add (f := _)]

end GlobalTheory.CompanionTheory.ColimLift
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLiftOfSurjKer =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ColimLift =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ColimLift", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLiftOfSurjKer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace CrystallineSemistableComparison.D

theorem colim_lift : ∀ (A : Type) [CommRing A](G : ℕ → Type) [∀ n, CommRing (G n)] [∀ n, Algebra A (G n)] (f : ∀ n, G n →ₐ[A] G (n + 1))(L : Type) [CommRing L] [Algebra A L] (ι : ∀ n, G n →ₐ[A] L), IsColim f ι → ∀ (T : Type) [CommRing T] (y : ∀ n, G n →+* T), (∀ n x, y (n + 1) (f n x) = y n x) → ∃ z : L →+* T, ∀ n x, z (ι n x) = y n x := by
  intro A _ G _ _ f L _ _ ι hc T _ y hy
  rcases hc with ⟨h1, h2, h3⟩
  refine GlobalTheory.CompanionTheory.ColimLift.exists_lift_of_surj_ker (fun n => (f n).toRingHom) (fun n => (ι n).toRingHom)
    (fun n k x => tr f n k x) h1 (fun _ _ => rfl) (fun _ _ _ => rfl) h2 (fun n x hx => ?_) y hy
  obtain ⟨k, hk⟩ := h3 n 1 (fun _ => x) (fun _ => hx)
  exact ⟨k, hk 0⟩

end CrystallineSemistableComparison.D
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ColimLift =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.PerfectoidProd =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.PerfectoidProd", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Data.Nat.Prime.Defs\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TensCompl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace CrystallineSemistableComparison.D

theorem perfectoid_prod (p : ℕ) (B₁ B₂ : Type) [CommRing B₁] [CommRing B₂] (h₁ : Pf p B₁) (h₂ : Pf p B₂) :
    Pf p (B₁ × B₂) := by
  refine ⟨Prod.ext (by simp [h₁.char]) (by simp [h₂.char]), fun x y hxy => ?_, fun y => ?_⟩
  · have h1 : x.1 ^ p = y.1 ^ p := congrArg Prod.fst hxy
    have h2 : x.2 ^ p = y.2 ^ p := congrArg Prod.snd hxy
    exact Prod.ext (h₁.bij.1 h1) (h₂.bij.1 h2)
  · obtain ⟨a, ha⟩ := h₁.bij.2 y.1
    obtain ⟨b, hb⟩ := h₂.bij.2 y.2
    exact ⟨(a, b), Prod.ext ha hb⟩

theorem cov_blow : ∀ (p : ℕ) [Fact p.Prime] (A : Type) [CommRing A] (r : ℕ → A) (f g : A) (N : ℕ), Pf p A → IsRt p r → r 0 ^ N ∈ Ideal.span {f, g} → ∃ (B : Type) (_ : CommRing B) (_ : Algebra A B), Pf p B ∧ Cov p r B ∧ ∃ e u v : B, e * e = e ∧ e * algebraMap A B f = u * algebraMap A B g ∧ (1 - e) * algebraMap A B g = v * algebraMap A B f := by
  intro p _ A _ r f g N hA hr hN
  have hpA : ((p : Polynomial A)) = 0 := by
    rw [← map_natCast Polynomial.C, hA.char, map_zero]
  have hpL : ((p : A[T;T⁻¹])) = 0 := by
    rw [← map_natCast LaurentPolynomial.C, hA.char, map_zero]
  obtain ⟨T₁, _, i₁, hP1⟩ := _root_.GlobalTheory.CompanionTheory.PerfClos.exists_PQ p (Polynomial A)
    (Ideal.span {Polynomial.C f - Polynomial.X * Polynomial.C g}) hpA
  obtain ⟨T₂, _, i₂, hP2⟩ := _root_.GlobalTheory.CompanionTheory.PerfClos.exists_PQ p (Polynomial A)
    (Ideal.span {Polynomial.C g - Polynomial.X * Polynomial.C f}) hpA
  obtain ⟨T₃, _, i₃, hP3⟩ := _root_.GlobalTheory.CompanionTheory.PerfClos.exists_PQ p A[T;T⁻¹]
    (Ideal.span {LaurentPolynomial.C f - LaurentPolynomial.T 1 * LaurentPolynomial.C g}) hpL
  have k1 : i₁ (Polynomial.C f - Polynomial.X * Polynomial.C g) = 0 :=
    (hP1.ker _).2 ⟨0, by rw [pow_zero, pow_one]; exact Ideal.subset_span (Set.mem_singleton _)⟩
  have k2 : i₂ (Polynomial.C g - Polynomial.X * Polynomial.C f) = 0 :=
    (hP2.ker _).2 ⟨0, by rw [pow_zero, pow_one]; exact Ideal.subset_span (Set.mem_singleton _)⟩
  have k3 : i₃ (LaurentPolynomial.C f - LaurentPolynomial.T 1 * LaurentPolynomial.C g) = 0 :=
    (hP3.ker _).2 ⟨0, by rw [pow_zero, pow_one]; exact Ideal.subset_span (Set.mem_singleton _)⟩
  have k1' : i₁ (Polynomial.C f) = i₁ Polynomial.X * i₁ (Polynomial.C g) := by
    rwa [map_sub, map_mul, sub_eq_zero] at k1
  have k2' : i₂ (Polynomial.C g) = i₂ Polynomial.X * i₂ (Polynomial.C f) := by
    rwa [map_sub, map_mul, sub_eq_zero] at k2
  have e1 : Polynomial.toLaurent (Polynomial.C f - Polynomial.X * Polynomial.C g) =
      LaurentPolynomial.C f - LaurentPolynomial.T 1 * LaurentPolynomial.C g := by
    rw [map_sub, map_mul, Polynomial.toLaurent_C, Polynomial.toLaurent_C, Polynomial.toLaurent_X]
  have e2 : LaurentPolynomial.invert (Polynomial.toLaurent (Polynomial.C g - Polynomial.X * Polynomial.C f)) =
      -LaurentPolynomial.T (-1) * (LaurentPolynomial.C f - LaurentPolynomial.T 1 * LaurentPolynomial.C g) := by
    have hT : (LaurentPolynomial.T (-1) : A[T;T⁻¹]) * LaurentPolynomial.T 1 = 1 := by
      rw [← LaurentPolynomial.T_add]; simp
    rw [map_sub, map_mul, Polynomial.toLaurent_C, Polynomial.toLaurent_C, Polynomial.toLaurent_X, map_sub, map_mul,
      LaurentPolynomial.invert_C, LaurentPolynomial.invert_C, LaurentPolynomial.invert_T]
    linear_combination (-(LaurentPolynomial.C g : A[T;T⁻¹])) * hT
  let φ₁ : Polynomial A →+* T₃ := i₃.comp Polynomial.toLaurent
  let φ₂ : Polynomial A →+* T₃ :=
    i₃.comp ((RingHomClass.toRingHom (LaurentPolynomial.invert (R := A))).comp Polynomial.toLaurent)
  have hs1 : ∀ x ∈ Ideal.span {Polynomial.C f - Polynomial.X * Polynomial.C g}, φ₁ x = 0 := by
    intro x hx
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 hx
    have : φ₁ (Polynomial.C f - Polynomial.X * Polynomial.C g) = 0 := by
      show i₃ (Polynomial.toLaurent _) = 0
      rw [e1, k3]
    rw [map_mul, this, mul_zero]
  have hs2 : ∀ x ∈ Ideal.span {Polynomial.C g - Polynomial.X * Polynomial.C f}, φ₂ x = 0 := by
    intro x hx
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 hx
    have : φ₂ (Polynomial.C g - Polynomial.X * Polynomial.C f) = 0 := by
      show i₃ (LaurentPolynomial.invert (Polynomial.toLaurent _)) = 0
      rw [e2, map_mul, k3, mul_zero]
    rw [map_mul, this, mul_zero]
  obtain ⟨ψ₁, hψ₁, -⟩ := _root_.GlobalTheory.CompanionTheory.PerfectRing.pq_lift p (Polynomial A) T₁ T₃ i₁ _ φ₁ hP1 hP3.pf hs1
  obtain ⟨ψ₂, hψ₂, -⟩ := _root_.GlobalTheory.CompanionTheory.PerfectRing.pq_lift p (Polynomial A) T₂ T₃ i₂ _ φ₂ hP2 hP3.pf hs2
  have hρ1 : ∀ α, ψ₁ (i₁ α) = i₃ (Polynomial.toLaurent α) := fun α => RingHom.congr_fun hψ₁ α
  have hρ2 : ∀ β, ψ₂ (i₂ β) = i₃ (LaurentPolynomial.invert (Polynomial.toLaurent β)) :=
    fun β => RingHom.congr_fun hψ₂ β
  letI : Algebra A T₁ := (i₁.comp Polynomial.C).toAlgebra
  letI : Algebra A T₂ := (i₂.comp Polynomial.C).toAlgebra
  letI : Algebra A T₃ := (i₃.comp LaurentPolynomial.C).toAlgebra
  have c1' : ∀ a : A, i₁ (algebraMap A (Polynomial A) a) = algebraMap A T₁ a := fun a => by
    rw [Polynomial.algebraMap_eq]; rfl
  have c2' : ∀ a : A, i₂ (algebraMap A (Polynomial A) a) = algebraMap A T₂ a := fun a => by
    rw [Polynomial.algebraMap_eq]; rfl
  have c3' : ∀ a : A, i₃ (algebraMap A A[T;T⁻¹] a) = algebraMap A T₃ a := fun a => by
    rw [LaurentPolynomial.algebraMap_apply]; rfl
  have d1' : ∀ a : A, ψ₁ (algebraMap A T₁ a) = algebraMap A T₃ a := fun a => by
    show ψ₁ (i₁ (Polynomial.C a)) = i₃ (LaurentPolynomial.C a)
    rw [hρ1, Polynomial.toLaurent_C]
  have d2' : ∀ a : A, ψ₂ (algebraMap A T₂ a) = algebraMap A T₃ a := fun a => by
    show ψ₂ (i₂ (Polynomial.C a)) = i₃ (LaurentPolynomial.C a)
    rw [hρ2, Polynomial.toLaurent_C, LaurentPolynomial.invert_C]
  let i₁' : Polynomial A →ₐ[A] T₁ := { i₁ with commutes' := c1' }
  let i₂' : Polynomial A →ₐ[A] T₂ := { i₂ with commutes' := c2' }
  let i₃' : A[T;T⁻¹] →ₐ[A] T₃ := { i₃ with commutes' := c3' }
  let ρ₁ : T₁ →ₐ[A] T₃ := { ψ₁ with commutes' := d1' }
  let ρ₂ : T₂ →ₐ[A] T₃ := { ψ₂ with commutes' := d2' }
  refine ⟨T₁ × T₂, inferInstance, inferInstance, perfectoid_prod p T₁ T₂ hP1.pf hP2.pf, ?_,
    (1, 0), (i₁ Polynomial.X, 0), (0, i₂ Polynomial.X), ?_, ?_, ?_⟩
  · refine _root_.GlobalTheory.CompanionTheory.SnakeCov.mv_prod p A T₁ T₂ T₃ r ρ₁ ρ₂ hr hP3.pf
      (_root_.GlobalTheory.CompanionTheory.PerfectRing.b_surj p A T₁ T₂ T₃ f g i₁ i₂ i₃ ψ₁ ψ₂ hA hP1 hP2 hP3 hρ1 hρ2) ?_
    intro K _ _ hK
    obtain ⟨j₁, hj1, hj1C, hj1X⟩ := _root_.GlobalTheory.CompanionTheory.Perfection.pq_baseChange_polynomial p A T₁ K i₁'
      (Polynomial.C f - Polynomial.X * Polynomial.C g) hA hK hP1
    obtain ⟨j₂, hj2, hj2C, hj2X⟩ := _root_.GlobalTheory.CompanionTheory.Perfection.pq_baseChange_polynomial p A T₂ K i₂'
      (Polynomial.C g - Polynomial.X * Polynomial.C f) hA hK hP2
    obtain ⟨j₃, hj3, hj3C, hj3T⟩ := _root_.GlobalTheory.CompanionTheory.PerfBC.bc_laur p A T₃ K i₃' f g hA hK hP3
    rw [Polynomial.map_sub, Polynomial.map_mul, Polynomial.map_C, Polynomial.map_C, Polynomial.map_X] at hj1 hj2
    refine ⟨fun a h1 h2 k => ?_, fun w₁ w₂ hw => ?_⟩
    · have hr' : IsRt p (fun k => algebraMap A K (r k)) := fun k => by
        show algebraMap A K (r (k + 1)) ^ p = algebraMap A K (r k)
        rw [← map_pow, hr k]
      have hN' : algebraMap A K (r 0) ^ N ∈ Ideal.span {algebraMap A K f, algebraMap A K g} := by
        have := Ideal.mem_map_of_mem (algebraMap A K) hN
        rwa [Ideal.map_span, Set.image_pair, map_pow] at this
      rw [Algebra.smul_def]
      exact _root_.GlobalTheory.CompanionTheory.PerfectRing.b_inj p K _ _ _ _ j₁ j₂ (fun k => algebraMap A K (r k)) N hK hr' hN' hj1 hj2 a
        (by rw [hj1C]; exact h1) (by rw [hj2C]; exact h2) k
    · let σ₁ : T₁ ⊗[A] K →+* T₃ ⊗[A] K := (Algebra.TensorProduct.map ρ₁ (AlgHom.id A K)).toRingHom
      let σ₂ : T₂ ⊗[A] K →+* T₃ ⊗[A] K := (Algebra.TensorProduct.map ρ₂ (AlgHom.id A K)).toRingHom
      have c1 : ∀ α, σ₁ (j₁ α) = j₃ (Polynomial.toLaurent α) := by
        have : σ₁.comp j₁ = j₃.comp Polynomial.toLaurent := by
          refine Polynomial.ringHom_ext (fun a => ?_) ?_
          · show Algebra.TensorProduct.map ρ₁ (AlgHom.id A K) (j₁ (Polynomial.C a)) =
              j₃ (Polynomial.toLaurent (Polynomial.C a))
            rw [hj1C, Polynomial.toLaurent_C, hj3C, Algebra.TensorProduct.map_tmul, map_one, AlgHom.id_apply]
          · show Algebra.TensorProduct.map ρ₁ (AlgHom.id A K) (j₁ Polynomial.X) =
              j₃ (Polynomial.toLaurent Polynomial.X)
            rw [hj1X, Polynomial.toLaurent_X, hj3T, Algebra.TensorProduct.map_tmul, AlgHom.id_apply]
            congr 1
            exact (hρ1 _).trans (congrArg i₃ Polynomial.toLaurent_X)
        exact fun α => RingHom.congr_fun this α
      have c2 : ∀ β, σ₂ (j₂ β) = j₃ (LaurentPolynomial.invert (Polynomial.toLaurent β)) := by
        have : σ₂.comp j₂ =
            j₃.comp ((RingHomClass.toRingHom (LaurentPolynomial.invert (R := K))).comp Polynomial.toLaurent) := by
          refine Polynomial.ringHom_ext (fun a => ?_) ?_
          · show Algebra.TensorProduct.map ρ₂ (AlgHom.id A K) (j₂ (Polynomial.C a)) =
              j₃ (LaurentPolynomial.invert (Polynomial.toLaurent (Polynomial.C a)))
            rw [hj2C, Polynomial.toLaurent_C, LaurentPolynomial.invert_C, hj3C, Algebra.TensorProduct.map_tmul,
              map_one, AlgHom.id_apply]
          · show Algebra.TensorProduct.map ρ₂ (AlgHom.id A K) (j₂ Polynomial.X) =
              j₃ (LaurentPolynomial.invert (Polynomial.toLaurent Polynomial.X))
            rw [hj2X, Polynomial.toLaurent_X, LaurentPolynomial.invert_T, hj3T, Algebra.TensorProduct.map_tmul,
              AlgHom.id_apply]
            congr 1
            exact (hρ2 _).trans (by rw [Polynomial.toLaurent_X, LaurentPolynomial.invert_T]; rfl)
        exact fun β => RingHom.congr_fun this β
      obtain ⟨a, ha1, ha2⟩ := _root_.GlobalTheory.CompanionTheory.BMid.exists_const_of_rho_eq p K _ _ _ _ _ j₁ j₂ j₃ σ₁ σ₂ hK hj1 hj2 hj3 c1 c2 w₁ w₂ hw
      exact ⟨a, by rw [← ha1, hj1C], by rw [← ha2, hj2C]⟩
  · ext <;> simp
  · refine Prod.ext ?_ ?_
    · show 1 * i₁ (Polynomial.C f) = i₁ Polynomial.X * i₁ (Polynomial.C g)
      rw [one_mul, k1']
    · show (0 : T₂) * i₂ (Polynomial.C f) = 0 * i₂ (Polynomial.C g)
      rw [zero_mul, zero_mul]
  · refine Prod.ext ?_ ?_
    · show (1 - 1 : T₁) * i₁ (Polynomial.C g) = 0 * i₁ (Polynomial.C f)
      rw [sub_self, zero_mul, zero_mul]
    · show (1 - 0 : T₂) * i₂ (Polynomial.C g) = i₂ Polynomial.X * i₂ (Polynomial.C f)
      rw [sub_zero, one_mul, k2']

end CrystallineSemistableComparison.D
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.PerfectoidProd =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.SpanMap =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.SpanMap", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Algebra.Polynomial.AlgebraMap\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.CechTens\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.PerfectoidProd\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TensCompl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace CrystallineSemistableComparison.D

open MvPolynomial (X C)

open MvPolynomial in
noncomputable def eqA {A : Type} [CommRing A] (P : Polynomial A) : Set (MvPolynomial (Fin 3) A) := {Polynomial.aeval (X 0) P}


open MvPolynomial in
noncomputable def eqB {A : Type} [CommRing A] (f g : A) : Set (MvPolynomial (Fin 3) A) :=
  {X 0 * X 0 - X 0, X 0 * C f - X 1 * C g, (1 - X 0) * C g - X 2 * C f}

theorem pt_eqA {A B : Type} [CommRing A] [CommRing B] (φ : A →+* B) (P : Polynomial A) :
    Pt φ (eqA P) ↔ ∃ x, (P.map φ).IsRoot x := by
  have e : ∀ y : Fin 3 → B, MvPolynomial.eval₂ φ y (Polynomial.aeval (MvPolynomial.X 0) P) = (P.map φ).eval (y 0) := by
    intro y
    induction P using Polynomial.induction_on' with
    | add a b ha hb => simp [ha, hb]
    | monomial n a => simp [Polynomial.aeval_monomial]
  constructor
  · rintro ⟨y, hy⟩
    exact ⟨y 0, (e y).symm.trans (hy _ rfl)⟩
  · rintro ⟨x, hx⟩
    exact ⟨fun _ => x, fun q hq => by rw [show q = _ from hq, e]; exact hx⟩

theorem pt_eqB {A B : Type} [CommRing A] [CommRing B] (φ : A →+* B) (f g : A) :
    Pt φ (eqB f g) ↔ ∃ e : B, IsIdempotentElem e ∧ e * φ f ∈ Ideal.span {φ g} ∧ (1 - e) * φ g ∈ Ideal.span {φ f} := by
  constructor
  · rintro ⟨y, hy⟩
    have h1 := hy _ (Or.inl rfl)
    have h2 := hy _ (Or.inr (Or.inl rfl))
    have h3 := hy _ (Or.inr (Or.inr rfl))
    simp only [MvPolynomial.eval₂_sub, MvPolynomial.eval₂_mul, MvPolynomial.eval₂_X, MvPolynomial.eval₂_C,
      MvPolynomial.eval₂_one, sub_eq_zero] at h1 h2 h3
    exact ⟨y 0, h1, Ideal.mem_span_singleton'.2 ⟨_, h2.symm⟩, Ideal.mem_span_singleton'.2 ⟨_, h3.symm⟩⟩
  · rintro ⟨e, h1, h2, h3⟩
    obtain ⟨u, hu⟩ := Ideal.mem_span_singleton'.1 h2
    obtain ⟨v, hv⟩ := Ideal.mem_span_singleton'.1 h3
    refine ⟨![e, u, v], ?_⟩
    rintro q (rfl | rfl | rfl) <;>
      simp [MvPolynomial.eval₂_sub, MvPolynomial.eval₂_mul, hu, hv, h1.eq]

theorem root_map {A B : Type} [CommRing A] [CommRing B] (φ : A →+* B) (h : AIC B) : AICm φ := by
  intro P hP hd
  rcases subsingleton_or_nontrivial B with _ | _
  · exact ⟨0, Subsingleton.elim _ _⟩
  · exact h _ (hP.map φ) (by rwa [hP.natDegree_map])

theorem span_map {A B : Type} [CommRing A] [CommRing B] (φ : A →+* B) {π f g : A} {N : ℕ} (h : π ^ N ∈ Ideal.span {f, g}) :
    φ π ^ N ∈ Ideal.span {φ f, φ g} := by
  obtain ⟨a, b, e⟩ := Ideal.mem_span_pair.1 h
  exact Ideal.mem_span_pair.2 ⟨φ a, φ b, by rw [← map_pow, ← e, map_add (f := _), map_mul, map_mul]⟩

theorem cov_step : ∀ (p : ℕ) [Fact p.Prime] (A : Type) [CommRing A] (r : ℕ → A), Pf p A → IsRt p r → ∃ (B : Type) (_ : CommRing B) (_ : Algebra A B), Pf p B ∧ Cov p r B ∧ AICm (algebraMap A B) ∧ VALm (r 0) (algebraMap A B) ∧ Splits p (r 0) (algebraMap A B) := by
  intro p _ A _ r hA hr
  let 𝓔 : Set (Set (MvPolynomial (Fin 3) A)) := {E | (∃ P : Polynomial A, P.Monic ∧ 0 < P.natDegree ∧ E = eqA P) ∨
    ∃ f g : A, (∃ N : ℕ, r 0 ^ N ∈ Ideal.span {f, g}) ∧ E = eqB f g}
  obtain ⟨B, _, _, hB, hc, hE, hs⟩ := _root_.GlobalTheory.CompanionTheory.BigStep.big_step p A r 𝓔 hA (fin_step p A r 𝓔 hA hr (by
    rintro E (⟨P, hP, hd, rfl⟩ | ⟨f, g, ⟨N, hN⟩, rfl⟩) B _ _ hB
    · rcases subsingleton_or_nontrivial B with _ | _
      · exact ⟨B, inferInstance, inferInstance, hB, (_root_.GlobalTheory.CompanionTheory.CovMono.cov_mono p B _).1, (pt_eqA _ _).2 ⟨0, Subsingleton.elim _ _⟩⟩
      · obtain ⟨B₁, _, _, h1, h2, x, hx⟩ := _root_.GlobalTheory.CompanionTheory.CovRoot.cov_root p B (fun k => algebraMap A B (r k)) (P.map (algebraMap A B)) hB
          (hP.map _) (by rwa [hP.natDegree_map])
        refine ⟨B₁, inferInstance, inferInstance, h1, h2, (pt_eqA _ _).2 ⟨x, ?_⟩⟩
        rw [← Polynomial.map_map, Polynomial.IsRoot, Polynomial.eval_map, ← Polynomial.aeval_def]
        exact hx
    · obtain ⟨B₁, _, _, h1, h2, e, u, v, he, hu, hv⟩ := cov_blow p B (fun k => algebraMap A B (r k)) (algebraMap A B f)
        (algebraMap A B g) N hB (fun k => by rw [← map_pow, hr k]) (span_map _ hN)
      exact ⟨B₁, inferInstance, inferInstance, h1, h2, (pt_eqB _ _ _).2
        ⟨e, he, Ideal.mem_span_singleton'.2 ⟨u, hu.symm⟩, Ideal.mem_span_singleton'.2 ⟨v, hv.symm⟩⟩⟩))
  refine ⟨B, inferInstance, inferInstance, hB, hc, fun P hP hd => (pt_eqA _ _).1 (hE _ (Or.inl ⟨P, hP, hd, rfl⟩)),
    fun f g h => (pt_eqB _ _ _).1 (hE _ (Or.inr ⟨f, g, h, rfl⟩)), fun T _ x hT h1 h2 => hs T x hT ?_⟩
  rintro E (⟨P, hP, hd, rfl⟩ | ⟨f, g, ⟨N, hN⟩, rfl⟩)
  · exact (pt_eqA _ _).2 (root_map x h1 P hP hd)
  · exact (pt_eqB _ _ _).2 (h2 _ _ ⟨N, span_map x hN⟩)

end CrystallineSemistableComparison.D
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.SpanMap =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TowerSeq =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TowerSeq", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Data.Nat.Prime.Defs\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ColimLift\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.SpanMap\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TensCompl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace CrystallineSemistableComparison.D

structure St (p : ℕ) {A : Type} [CommRing A] (r : ℕ → A) : Type 1 where
  G : Type
  [ring : CommRing G]
  [alg : Algebra A G]
  pf : Pf p G
  cov : Cov p r G

attribute [instance] St.ring St.alg

theorem St.next (p : ℕ) [Fact p.Prime] {A : Type} [CommRing A] {r : ℕ → A} (hA : Pf p A) (hr : IsRt p r) (s : St p r) :
    ∃ (s' : St p r) (f : s.G →ₐ[A] s'.G), AICm (f : s.G →+* s'.G) ∧ VALm (algebraMap A s.G (r 0)) (f : s.G →+* s'.G) ∧
      Splits p (algebraMap A s.G (r 0)) (f : s.G →+* s'.G) := by
  obtain ⟨B, _, _, hB, hc, h1, h2, h3⟩ := cov_step p s.G (fun k => algebraMap A s.G (r k)) s.pf
    (fun k => by rw [← map_pow, hr k])
  letI : Algebra A B := ((algebraMap s.G B).comp (algebraMap A s.G)).toAlgebra
  haveI : IsScalarTower A s.G B := IsScalarTower.of_algebraMap_eq fun _ => rfl
  exact ⟨⟨B, hB, _root_.GlobalTheory.CompanionTheory.CovComp.cov_comp p A s.G B r hA s.pf hr s.cov hc⟩, IsScalarTower.toAlgHom A s.G B, h1, h2, h3⟩

theorem tower_seq : ∀ (p : ℕ) [Fact p.Prime] (A : Type) [CommRing A] (r : ℕ → A), Pf p A → IsRt p r → ∃ (G : ℕ → Type) (_ : ∀ n, CommRing (G n)) (_ : ∀ n, Algebra A (G n)) (f : ∀ n, G n →ₐ[A] G (n + 1)), (∀ n, Pf p (G n) ∧ Cov p r (G n) ∧ AICm (f n : G n →+* G (n + 1)) ∧ VALm (algebraMap A (G n) (r 0)) (f n : G n →+* G (n + 1)) ∧ Splits p (algebraMap A (G n) (r 0)) (f n : G n →+* G (n + 1))) ∧ Function.Bijective (algebraMap A (G 0)) := by
  intro p _ A _ r hA hr
  choose nx f h using St.next p hA hr
  let s : ℕ → St p r := fun n => Nat.rec ⟨A, hA, (_root_.GlobalTheory.CompanionTheory.CovMono.cov_mono p A r).1⟩ (fun _ t => nx t) n
  exact ⟨fun n => (s n).G, fun n => (s n).ring, fun n => (s n).alg, fun n => f (s n),
    fun n => ⟨(s n).pf, (s n).cov, h (s n)⟩, Function.bijective_id⟩

theorem cov_tower : ∀ (p : ℕ) [Fact p.Prime] (A : Type) [CommRing A] (r : ℕ → A), Pf p A → IsRt p r → ∃ (B : Type) (_ : CommRing B) (_ : Algebra A B), Pf p B ∧ Cov p r B ∧ AIC B ∧ VAL (algebraMap A B (r 0)) ∧ Splits p (r 0) (algebraMap A B) := by
  intro p _ A _ r hA hr
  obtain ⟨G, _, _, f, h, h0⟩ := tower_seq p A r hA hr
  obtain ⟨L, _, _, ι, hι⟩ := _root_.GlobalTheory.CompanionTheory.ColimEx.exists_isColim A G f
  have hp := _root_.GlobalTheory.CompanionTheory.colim_pf p A G f L ι hι
  have ht := _root_.GlobalTheory.CompanionTheory.Colim.aic_val_of_isColim A (r 0) G f L ι hι (fun n => (h n).2.2.1) (fun n => (h n).2.2.2.1)
  refine ⟨L, inferInstance, inferInstance, hp.1 fun n => (h n).1, _root_.GlobalTheory.CompanionTheory.CovCmp.cov_of_solv p A L r fun m n a c hs => ?_, ht.1, ht.2, ?_⟩
  · obtain ⟨N, hN⟩ := hp.2 m n a c hs
    exact ⟨G N, inferInstance, inferInstance, (h N).2.1, hN⟩
  · intro T _ x hT h1 h2
    have step : ∀ n (y : {y : G n →+* T // y.comp (algebraMap A (G n)) = x}),
        ∃ y' : {y : G (n + 1) →+* T // y.comp (algebraMap A (G (n + 1))) = x}, ∀ z, y'.1 (f n z) = y.1 z := by
      intro n y
      obtain ⟨y', hy'⟩ := (h n).2.2.2.2 T y.1 hT h1 (by rw [← RingHom.comp_apply, y.2]; exact h2)
      have e : ∀ z, y' (f n z) = y.1 z := fun z => RingHom.congr_fun hy' z
      refine ⟨⟨y', RingHom.ext fun a => ?_⟩, e⟩
      rw [RingHom.comp_apply, ← (f n).commutes, e, ← RingHom.comp_apply, y.2]
    choose nx hnx using step
    let e0 := RingEquiv.ofBijective (algebraMap A (G 0)) h0
    let y : ∀ n, {y : G n →+* T // y.comp (algebraMap A (G n)) = x} := fun n =>
      Nat.rec ⟨x.comp e0.symm.toRingHom, RingHom.ext fun a => congrArg x (e0.symm_apply_apply a)⟩ (fun n t => nx n t) n
    obtain ⟨z, hz⟩ := colim_lift A G f L ι hι T (fun n => (y n).1) (fun n => hnx n (y n))
    refine ⟨z, RingHom.ext fun a => ?_⟩
    rw [RingHom.comp_apply, ← (ι 0).commutes, hz, ← RingHom.comp_apply, (y 0).2]

end CrystallineSemistableComparison.D
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TowerSeq =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TestOfPre =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TestOfPre", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Data.Nat.Prime.Defs\npublic import Mathlib.RingTheory.Valuation.ValuationRing\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.CechTens\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TowerSeq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial
namespace CrystallineSemistableComparison.D.Leaf

end CrystallineSemistableComparison.D.Leaf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TestOfPre =====
