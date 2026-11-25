module

public import Development.AbelianVarietyTheory.Definitions.Divisors.SecClass

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.TateTwists.EtaleComplexTensorPairingExists, Development.EtaleCohomology.TateTwists.EtaleTensorComplexExistsOfSheafTensorComplex

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleComplexTensorPairingExists =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleComplexTensorPairingExists", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SecClass\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

def LateralTheory.EtaleFoundations.EtaleComplexTensorPairingExists : Prop :=
  ∀ (R : Type) [CommRing R] (I J : Cx R), ∃ (K : Cx R) (τ : Pair I J K), τ.IsTensor
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleComplexTensorPairingExists =====

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleTensorComplexExistsOfSheafTensorComplex =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleTensorComplexExistsOfSheafTensorComplex", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.EtaleComplexTensorPairingExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC
open scoped TensorProduct DirectSum

noncomputable section

namespace LateralTheory.EtaleFoundations

def tensPure {R : Type} [CommRing R] {I J : Cx R} {U : Scheme.{0}} (s t w : ℤ) (h : s + t = w)
    (a : Sec (I.X s) U) (b : Sec (J.X t) U) : Tens I J U w :=
  DirectSum.lof (ULift.{1} R) {p : ℤ × ℤ // p.1 + p.2 = w}
    (fun p => Sec (I.X p.1.1) U ⊗[ULift.{1} R] Sec (J.X p.1.2) U) ⟨(s, t), h⟩ (a ⊗ₜ b)

def EtaleSheafTensorComplexExists : Prop :=
  ∀ (R : Type) [CommRing R] (I J : Cx R), ∃ (K : Cx R)
    (φ : ∀ (U : Scheme.{0}) (w : ℤ), Tens I J U w →ₗ[ULift.{1} R] Sec (K.X w) U),
    (∀ {V U : Scheme.{0}} (g : V ⟶ U) (w : ℤ) (x : Tens I J U w),
      Sec.res g (φ U w x) = φ V w (Tens.res g w x)) ∧
    (∀ (U : Scheme.{0}) (s t w : ℤ) (h : s + t = w) (a : Sec (I.X s) U) (b : Sec (J.X t) U),
      Sec.map (K.d w (w + 1)) (φ U w (tensPure s t w h a b)) =
        φ U (w + 1) (tensPure (s + 1) t (w + 1) (by omega) (Sec.map (I.d s (s + 1)) a) b) +
        s.negOnePow • φ U (w + 1) (tensPure s (t + 1) (w + 1) (by omega) a (Sec.map (J.d t (t + 1)) b))) ∧
    (∀ (U : Scheme.{0}) (w : ℤ) (y : Sec (K.X w) U), Loc U fun V g => ∃ x, φ V w x = Sec.res g y) ∧
    (∀ (U : Scheme.{0}) (w : ℤ) (x : Tens I J U w), φ U w x = 0 → Loc U fun _ g => Tens.res g w x = 0)

theorem etale_tensor_complex_exists_of_sheaf_tensor_complex (hS : EtaleSheafTensorComplexExists) : EtaleComplexTensorPairingExists := by
  intro R _ I J
  obtain ⟨K, φ, hnat, hd, hsurj, hinj⟩ := hS R I J
  let μ : Pair I J K :=
    { mul := fun U s t w h => (TensorProduct.mk (ULift.{1} R) _ _).compr₂
          ((φ U w).comp (DirectSum.lof (ULift.{1} R) {p : ℤ × ℤ // p.1 + p.2 = w}
            (fun p => Sec (I.X p.1.1) U ⊗[ULift.{1} R] Sec (J.X p.1.2) U) ⟨(s, t), h⟩))
      nat := by
        intro V U g s t w h a b
        have := hnat g w (tensPure s t w h a b)
        simpa [tensPure, Tens.res, DirectSum.lmap_lof] using this
      leibniz := by
        intro U s t w h a b
        simpa [tensPure] using hd U s t w h a b }
  have hlift : ∀ U w, μ.lift U w = φ U w := by
    intro U w
    apply DirectSum.linearMap_ext
    intro p
    apply TensorProduct.ext'
    intro a b
    simp [Pair.lift, μ]
  refine ⟨K, μ, ?_, ?_⟩
  · intro U w y
    simpa [hlift] using hsurj U w y
  · intro U w x hx
    exact hinj U w x (by simpa [hlift] using hx)

end LateralTheory.EtaleFoundations
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleTensorComplexExistsOfSheafTensorComplex =====
