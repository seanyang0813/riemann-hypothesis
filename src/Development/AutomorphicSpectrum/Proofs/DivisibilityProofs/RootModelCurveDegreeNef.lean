module

public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.FlagImmersions.RootModelCurveDegreeNef, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelCurveDegreeNef

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.RootModelCurveDegreeNef =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.RootModelCurveDegreeNef", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace RootFieldNumerics

theorem geoNum_one_linear_in_degree {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] (W : Ideal (MRing ι)) :
    ∃ c : K → ℤ, ∀ a : K → ℤ, geoNum 1 W (fun _ => a) = ∑ k, a k * c k := by
  classical
  refine ⟨fun k => geoNum 1 W (fun _ => Pi.single k 1), fun a => ?_⟩
  have hs : ∀ b : K → ℤ, (Fin.init (fun _ : Fin 1 => b) : Fin 0 → K → ℤ) = fun i => i.elim0 :=
    fun b => Subsingleton.elim _ _
  rw [geoNum.eq_2 (n := 0)]
  simp only [geoNum.eq_2 (n := 0), hs]
  split_ifs with h
  · simp [Pi.single_apply]
  · simp

theorem geoNum_linear_combination {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] (W : Ideal (MRing ι))
    {J : Type} [Fintype J] (n : J → ℤ) (b : J → K → ℤ) :
    geoNum 1 W (fun _ => ∑ j, n j • b j) = ∑ j, n j * geoNum 1 W (fun _ => b j) := by
  obtain ⟨c, hc⟩ := geoNum_one_linear_in_degree (K := K) W
  rw [hc]
  simp only [hc, Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Finset.sum_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun k _ => ?_
  ring

theorem char_prime_of_prime_ideal {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] (W : Ideal (MRing ι))
    (hW : W.IsPrime) (h : charOf W ≠ 0) : (charOf W).Prime := by
  classical
  set I : Ideal ℤ := Ideal.comap (C : ℤ →+* MRing ι) W with hI
  have hp : I.IsPrime := Ideal.IsPrime.comap _
  have hne : I ≠ ⊥ := by
    intro hb
    apply h
    have : Submodule.IsPrincipal.generator I = 0 :=
      (Submodule.IsPrincipal.eq_bot_iff_generator_eq_zero I).mp hb
    simp [charOf, ← hI, this]
  have hg := Submodule.IsPrincipal.prime_generator_of_isPrime I hne
  have : charOf W = (Submodule.IsPrincipal.generator I).natAbs := by
    simp [charOf, ← hI]
  rw [this]
  exact Int.prime_iff_natAbs_prime.mp hg

theorem root_line_a_independent {Ψ : Type} [Fintype Ψ] {N : ℕ} (M : RootModel Ψ N) (t : ℝ) (j : Option (Ψ × Fin N)) :
    (M.line t j).a = (M.line 1 j).a := by
  cases j with
  | none => rfl
  | some r => simp only [RootModel.line, M.x_deg]

end RootFieldNumerics

theorem RootFieldNumerics.curveDeg_eq_and_nefOnFibres_of_coef : ∀ (Ψ : Type) [Fintype Ψ] (N : ℕ) (M : RootModel Ψ N) (t : ℝ) (lam : Wt Ψ N) (s : ℝ) (q : ℕ) (n : Option (Ψ × Fin N) → ℤ), (∀ j, (n j : ℝ) = q * M.coef lam s j) → (∀ W : Ideal (MRing M.ι), (geoNum 1 W (fun _ => (combLine (M.line t) n).a) : ℝ) = q * M.curveDeg lam s W) ∧ (M.NefFib lam s → NefOnFibres M.P (combLine (M.line t) n).a) := by
  intro Ψ _ N M t lam s q n hn
  have key : ∀ W : Ideal (MRing M.ι),
      (geoNum 1 W (fun _ => (combLine (M.line t) n).a) : ℝ) = q * M.curveDeg lam s W := by
    intro W
    rw [show (combLine (M.line t) n).a = ∑ j, n j • (M.line t j).a from rfl,
      geoNum_linear_combination W n (fun j => (M.line t j).a)]
    push_cast
    rw [RootModel.curveDeg, Finset.mul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [root_line_a_independent M t j, hn j]
    ring
  refine ⟨key, fun hN W hWp hPW hc hd => ?_⟩
  have hpr := char_prime_of_prime_ideal W hWp.1 hc
  have h0 := hN _ hpr W ⟨hWp, hPW, rfl, hd⟩
  have h1 : (0:ℝ) ≤ geoNum 1 W (fun _ => (combLine (M.line t) n).a) := by
    rw [key]
    exact mul_nonneg (Nat.cast_nonneg _) h0
  exact_mod_cast h1
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.RootModelCurveDegreeNef =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelCurveDegreeNef =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelCurveDegreeNef", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\npublic import Development.WeilBound.CoreStatements.FlagImmersions.RootModelCurveDegreeNef\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

alias nefFib_integral_multiple := _root_.RootFieldNumerics.curveDeg_eq_and_nefOnFibres_of_coef

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelCurveDegreeNef =====
