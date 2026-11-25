module

public import Mathlib.Algebra.MvPolynomial.PDeriv
public import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs
public import Mathlib.FieldTheory.IsAlgClosed.Basic
public import Mathlib.LinearAlgebra.Matrix.Rank
public import Mathlib.Topology.Instances.Matrix

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.CocharacterLieDivisors.MeetsOpenCosets, Development.WeilBound.CoreStatements.PadicHodgeComparison.CocharacterLieDivisors.DivWCoreLacUseType

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.CocharacterLieDivisors.MeetsOpenCosets =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.CocharacterLieDivisors.MeetsOpenCosets", "h": "module\n\npublic import Mathlib.Algebra.MvPolynomial.PDeriv\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Polynomial

namespace PositivityTheory.AutomorphicGaloisHodgeTate.Div

def IsSSMat {Γ K ι : Type} [Group Γ] [Field K] [Fintype ι] [DecidableEq ι]
    (ρ : Γ →* GL ι K) : Prop :=
  ∀ W : Submodule K (ι → K), (∀ g : Γ, ∀ v ∈ W, (ρ g : Matrix ι ι K).mulVec v ∈ W) →
    ∃ W' : Submodule K (ι → K), IsCompl W W' ∧
      ∀ g : Γ, ∀ v ∈ W', (ρ g : Matrix ι ι K).mulVec v ∈ W'

def InLieZar {Γ K K' ι : Type} [Group Γ] [Field K] [Field K'] [Algebra K K']
    [Fintype ι] [DecidableEq ι] (ρ : Γ →* GL ι K) (X : Matrix ι ι K') : Prop :=
  ∀ f : MvPolynomial (ι × ι) K,
    (∀ g : Γ, MvPolynomial.eval (fun p : ι × ι => (ρ g : Matrix ι ι K) p.1 p.2) f = 0) →
      ∑ p : ι × ι, algebraMap K K'
          (MvPolynomial.eval (fun q : ι × ι => (1 : Matrix ι ι K) q.1 q.2)
            (MvPolynomial.pderiv p f)) * X p.1 p.2 = 0

end PositivityTheory.AutomorphicGaloisHodgeTate.Div
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.CocharacterLieDivisors.MeetsOpenCosets =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.CocharacterLieDivisors.DivWCoreLacUseType =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.CocharacterLieDivisors.DivWCoreLacUseType", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.CocharacterLieDivisors.MeetsOpenCosets\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Rank\npublic import Mathlib.Topology.Instances.Matrix\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Polynomial

namespace PositivityTheory.AutomorphicGaloisHodgeTate.Div

def WGen {K : Type} [Field K] (n : ℕ) (P : K[X]) : Prop :=
  P.Separable ∧
  (∀ x ∈ P.roots, ∀ y ∈ P.roots, x ≠ y → ∀ c : ℕ, 0 < c → c ≤ n → (x / y) ^ c ≠ 1) ∧
  (∀ x ∈ P.roots, ∀ y ∈ P.roots, ∀ z ∈ P.roots, x ≠ y → z ≠ y → x ≠ z → x * z ≠ y ^ 2) ∧
  (∀ M : Multiset K, (∀ x ∈ M, x ∈ P.roots) → Multiset.card M = n → M ≠ P.roots →
    M.prod ≠ P.roots.prod)

def ProdGen {K : Type} [Field K] (n : ℕ) (P : K[X]) : Prop :=
  P.Separable ∧ ∀ M : Multiset K, (∀ x ∈ M, x ∈ P.roots) → Multiset.card M = n → M ≠ P.roots →
    M.prod ≠ P.roots.prod

def IsLac {K : Type} [Field K] {n : ℕ} (e : Fin n → K) : Prop :=
  ∀ A B : Finset (Fin n), A.Nonempty → B.Nonempty → Disjoint A B →
    (B.card : K) * (∑ i ∈ A, e i) ≠ (A.card : K) * (∑ i ∈ B, e i)

def DivWCoreLac : Prop :=
  ∀ (Γ : Type) [Group Γ] [TopologicalSpace Γ] [IsTopologicalGroup Γ] [CompactSpace Γ]
    (K K' : Type) [Field K] [IsAlgClosed K] [CharZero K] [TopologicalSpace K]
    [IsTopologicalRing K] [T2Space K] [Field K'] [IsAlgClosed K'] [Algebra K K']
    (N n : ℕ) (ρ : Γ →* GL (Fin N) K),
      Continuous (fun g : Γ => (ρ g : Matrix (Fin N) (Fin N) K)) → IsSSMat ρ →
    ∀ (S : Set Γ), Dense S →
    ∀ (P : Γ → K[X]), (∀ s ∈ S, (P s).Monic ∧ (P s).natDegree = n) →
      (∀ s ∈ S, aeval (ρ s : Matrix (Fin N) (Fin N) K) (P s) = 0) →
    ∀ (X : Matrix (Fin N) (Fin N) K'), InLieZar ρ X →
      (∃ e : Fin n → K', Function.Injective e ∧ IsLac e ∧ ∀ i, X.charpoly.IsRoot (e i)) →
    ∀ (ψ : Γ →* Kˣ), Continuous (fun g : Γ => ((ψ g : Kˣ) : K)) →
      (∀ s ∈ S, ((ψ s : Kˣ) : K) = (-1) ^ n * (P s).coeff 0) →
    ∃ r : Γ →* GL (Fin n) K,
      Continuous (fun g : Γ => (r g : Matrix (Fin n) (Fin n) K)) ∧ IsSSMat r ∧
      (∃ A : Matrix (Fin N) (Fin n) K, A.rank = n ∧
        ∀ g : Γ, (ρ g : Matrix (Fin N) (Fin N) K) * A = A * (r g : Matrix (Fin n) (Fin n) K)) ∧
      (∃ (k : ℕ) (B : Matrix (Fin n × Fin k) (Fin N) K), B.rank = N ∧
        ∀ g : Γ, Matrix.kronecker (r g : Matrix (Fin n) (Fin n) K) (1 : Matrix (Fin k) (Fin k) K) * B =
          B * (ρ g : Matrix (Fin N) (Fin N) K)) ∧
      (∀ g : Γ, aeval (ρ g : Matrix (Fin N) (Fin N) K) (r g : Matrix (Fin n) (Fin n) K).charpoly = 0) ∧
      (∀ s ∈ S, aeval (r s : Matrix (Fin n) (Fin n) K) (P s) = 0) ∧
      (∀ g : Γ, ((r g : Matrix (Fin n) (Fin n) K).det) = ((ψ g : Kˣ) : K)) ∧
      IsOpen {g : Γ | (r g : Matrix (Fin n) (Fin n) K).charpoly.Separable} ∧
      Dense {g : Γ | (r g : Matrix (Fin n) (Fin n) K).charpoly.Separable} ∧
      (∀ s ∈ S, (r s : Matrix (Fin n) (Fin n) K).charpoly.Separable →
        (r s : Matrix (Fin n) (Fin n) K).charpoly = P s) ∧
      (∀ s ∈ S, ProdGen n (P s) → (r s : Matrix (Fin n) (Fin n) K).charpoly = P s)

end PositivityTheory.AutomorphicGaloisHodgeTate.Div
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.CocharacterLieDivisors.DivWCoreLacUseType =====
