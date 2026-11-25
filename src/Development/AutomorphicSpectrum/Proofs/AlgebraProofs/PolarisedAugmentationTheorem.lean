module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight
public import Mathlib.FieldTheory.IsAlgClosed.Basic
public import Development.WeilBound.CoreStatements.HodgeTatePoints.CntCoord
public import Development.WeilBound.CoreStatements.HodgeTatePoints.HasLenOfEquiv
public import Development.WeilBound.CoreStatements.HodgeTatePoints.FormMemLin
public import ReciprocityTheory.DualLattices.CotangentSurjective
public import Development.WeilBound.CoreStatements.HodgeTatePoints.DetUpdateRowDiagonal
public import Development.AutomorphicSpectrum.Statements.AlgebraStatements.PolarisedAFStatement
public import Mathlib.Basic.NNReal.Defs
public import Mathlib.Data.Matrix.ColumnRowPartitioned
public import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
public import Mathlib.RingTheory.Valuation.Integers
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SymplecticPeriodMatrixIntegrality
public import ReciprocityTheory.DualLattices.HasLenCokerDet
public import ReciprocityTheory.DualLattices.MemAugIdeal
public import ReciprocityTheory.DualLattices.PowMemCarrier
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.DualLattices.ProdDvdOfIso

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AugmentationLengthColengthBound, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AugmentationLengthsExist, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AugmentationQuotientEquivLattice, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeLengthMonoStrict, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PolarisedAugmentationTheorem

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AugmentationLengthColengthBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AugmentationLengthColengthBound", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.CntCoord\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

alias _root_.GlobalTheory.CompanionTheory.Relay.augmentation_length_colength_bound := _root_.PositivityTheory.HtPt.Ra.cnt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AugmentationLengthColengthBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AugmentationLengthsExist =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AugmentationLengthsExist", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.HasLenOfEquiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem lens_exist : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (N : Type) [AddCommGroup N] [Fintype N] [DecidableEq N], (∀ x : N, p • x = 0) → ∀ AA : HopfOrder (C := C) R N, ∃ cA cN cO : NNReal, cA ≠ 0 ∧ cN ≠ 0 ∧ cO ≠ 0 ∧ HasLen v R (AFQuot p AA.carrier) cA ∧ HasColen R v AA.carrier cN ∧ HasLen v R (OmAA AA.carrier) cO :=
  @PositivityTheory.HtPt.Rc.lens

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AugmentationLengthsExist =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AugmentationQuotientEquivLattice =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AugmentationQuotientEquivLattice", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.FormMemLin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem afQuot_equiv_coords : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (ι : Type) [Fintype ι] [DecidableEq ι] (AA : HopfOrder (C := C) R (ι → ZMod p)), Nonempty (AFQuot p AA.carrier ≃ₗ[R] ((ι → R) ⧸ afLat p AA.carrier)) :=
  PositivityTheory.HtPt.Rh.afquot

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AugmentationQuotientEquivLattice =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeLengthMonoStrict =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeLengthMonoStrict", "h": "module\n\npublic import ReciprocityTheory.DualLattices.CotangentSurjective\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.DetUpdateRowDiagonal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem submodule_eq_of_hasLen_eq : ∀ (C : Type) [Field C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → ∀ (ι : Type) [Fintype ι] (L L' : Submodule R (ι → R)), L ≤ L' → ∀ x y : NNReal, x ≠ 0 → HasLen v R ((ι → R) ⧸ L) x → HasLen v R ((ι → R) ⧸ L') y → x ≤ y ∧ (x = y → L = L') :=
  @PositivityTheory.HtPt.Rh.len_eq

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeLengthMonoStrict =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PolarisedAugmentationTheorem =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PolarisedAugmentationTheorem", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.AlgebraStatements.PolarisedAFStatement\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AugmentationLengthColengthBound\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AugmentationLengthsExist\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AugmentationQuotientEquivLattice\npublic import ReciprocityTheory.DualLattices.CotangentSurjective\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeLengthMonoStrict\npublic import Mathlib.Basic.NNReal.Defs\npublic import Mathlib.Data.Matrix.ColumnRowPartitioned\npublic import Mathlib.LinearAlgebra.Matrix.NonsingularInverse\npublic import Mathlib.RingTheory.Valuation.Integers\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SymplecticPeriodMatrixIntegrality\npublic import ReciprocityTheory.DualLattices.HasLenCokerDet\npublic import ReciprocityTheory.DualLattices.MemAugIdeal\npublic import ReciprocityTheory.DualLattices.PowMemCarrier\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.DualLattices.ProdDvdOfIso\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.GR.PolAF

variable {C : Type} [Field C] {R : Type} [CommRing R] [Algebra R C]

theorem hasLen_omAA_htd {p : ℕ} [Fact p.Prime] {g : ℕ} {v : Valuation C NNReal} [Algebra ℤ_[p] R]
    {O : Type} [CommRing O] [Algebra ℤ_[p] O] {σ : O ≃ₐ[ℤ_[p]] O} {cp : R}
    (H : HodgeTateDatum p g v R O σ cp) :
    HasLen v R (OmAA H.AA.carrier) (v (algebraMap R C (p : R)) ^ g) := by
  refine ⟨g, fun _ => (p : R), ⟨?_⟩, by simp⟩
  exact (Submodule.quotEquivOfEq _ _ H.cotangent_ker_eq.symm).trans
    ((LinearMap.quotKerEquivOfSurjective H.φ H.cotangent_surjective).trans (PullbackHopfOrder.qPi p g))

theorem mem_afLat_of_cong {p : ℕ} [Fact p.Prime] {g : ℕ} [Algebra ℤ_[p] R]
    (M : Submodule R (Nb p g → C)) (l : Ix g → R) (f : Nb p g → C) (hf : f ∈ M)
    (h : ∀ t : TT p g, ∃ r : R, algebraMap R C (∑ i, l i * algebraMap ℤ_[p] R (t i)) -
      f (red p g t) = algebraMap R C (p * r)) : l ∈ afLat p M := by
  refine ⟨f, hf, fun x => ?_⟩
  obtain ⟨r, hr⟩ := h (fun i => ((x i).val : ℤ_[p]))
  have hred : red p g (fun i => ((x i).val : ℤ_[p])) = x := by
    funext i; simp [red]
  have hsum : (∑ i, l i * algebraMap ℤ_[p] R (((x i).val : ℕ) : ℤ_[p])) =
      ∑ i, l i * ((x i).val : R) := by
    exact Finset.sum_congr rfl fun i _ => by rw [map_natCast]
  rw [hred, hsum] at hr
  have hx : f x - algebraMap R C (∑ i, l i * ((x i).val : R)) = -(algebraMap R C (p * r)) := by
    rw [← hr]; ring
  show _ ∈ Submodule.span R {(p : C)}
  rw [hx, Submodule.mem_span_singleton]
  refine ⟨-r, ?_⟩
  rw [Algebra.smul_def, map_mul, map_neg, map_natCast]
  ring

theorem rows_mem_afLat {p : ℕ} [Fact p.Prime] {g : ℕ} {v : Valuation C NNReal} [Algebra ℤ_[p] R]
    {O : Type} [CommRing O] [Algebra ℤ_[p] O] {σ : O ≃ₐ[ℤ_[p]] O} {cp : R}
    (H : HodgeTateDatum p g v R O σ cp) (k : Ix g) :
    Matrix.fromRows H.Ht H.Bt k ∈ afLat p H.AA.carrier := by
  rcases k with k | k
  · obtain ⟨f, hf, h⟩ := (H.h4 k).1
    exact mem_afLat_of_cong H.AA.carrier (H.Ht k) f hf h
  · obtain ⟨f, hf, h⟩ := (H.h4 k).2
    exact mem_afLat_of_cong H.AA.carrier (H.Bt k) f hf h

theorem span_rows_integral {g : ℕ} (v : Valuation C NNReal) (hv : v.Integers R)
    (Ht Bt : Matrix (Fin g) (Ix g) R) (x : Ix g → C) :
    (∀ l ∈ Submodule.span R (Set.range fun k => Matrix.fromRows Ht Bt k),
      v (∑ i, algebraMap R C (l i) * x i) ≤ 1) ↔
    (∀ k, v ((Ht.map (algebraMap R C) *ᵥ x) k) ≤ 1) ∧
      ∀ k, v ((Bt.map (algebraMap R C) *ᵥ x) k) ≤ 1 := by
  constructor
  · intro h
    refine ⟨fun k => ?_, fun k => ?_⟩
    · simpa [Matrix.mulVec, dotProduct] using h _ (Submodule.subset_span ⟨Sum.inl k, rfl⟩)
    · simpa [Matrix.mulVec, dotProduct] using h _ (Submodule.subset_span ⟨Sum.inr k, rfl⟩)
  · rintro ⟨h1, h2⟩ l hl
    induction hl using Submodule.span_induction with
    | mem l hl =>
      obtain ⟨k, rfl⟩ := hl
      rcases k with k | k
      · simpa [Matrix.mulVec, dotProduct] using h1 k
      · simpa [Matrix.mulVec, dotProduct] using h2 k
    | zero => simp
    | add a b _ _ ha hb =>
      simp only [Pi.add_apply, map_add (f := _), add_mul, Finset.sum_add_distrib]
      exact (v.map_add _ _).trans (max_le ha hb)
    | smul r a _ ha =>
      simp only [Pi.smul_apply, smul_eq_mul, map_mul, mul_assoc, ← Finset.mul_sum]
      exact mul_le_one' (hv.map_le_one r) ha

end GlobalTheory.CompanionTheory.Ar.GR.PolAF

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem polarisedAF : PolarisedAFStatement := by
  intro p _ g C _ _ _ v R _ _ _ O _ _ σ cp hS H
  intro φ AF H' hb
  classical
  have hv : v.Integers R := hS.integers
  have hp1 : v (p : C) < 1 := by simpa [map_natCast] using hS.p_lt
  have hp2 : 2 ≤ p := (Fact.out : p.Prime).two_le
  have hvcp : v (algebraMap R C cp) ≠ 0 := by
    intro h0
    have h := hS.cp_val
    rw [h0, zero_pow (by omega)] at h
    exact hS.p_ne h.symm
  have hcp : cp ≠ 0 := by rintro rfl; exact hvcp (by simp)
  have hEalt : (H.E.map (algebraMap ℤ_[p] R))ᵀ = -(H.E.map (algebraMap ℤ_[p] R)) := by
    ext i j
    have h := congrFun (congrFun H.E_alternating.1 j) i
    simp only [Matrix.transpose_apply, Matrix.neg_apply] at h
    simp [Matrix.transpose_apply, Matrix.map_apply, h]
  have hEu : IsUnit (H.E.map (algebraMap ℤ_[p] R)).det := by
    have : (H.E.map (algebraMap ℤ_[p] R)).det = algebraMap ℤ_[p] R H.E.det :=
      (RingHom.map_det _ _).symm
    rw [this]; exact H.isUnit_det_E.map _
  obtain ⟨hdet, hker, himg, hcpmem⟩ :=
    _root_.GlobalTheory.CompanionTheory.Ar.GR.gp_mat_lattice C v R hv g H.Ht H.Bt _ cp hcp hEalt hEu H.form_eq_alt

  set L := Submodule.span R (Set.range fun k => Matrix.fromRows H.Ht H.Bt k) with hL
  have hLle : L ≤ AF :=
    Submodule.span_le.2 (by rintro _ ⟨k, rfl⟩; exact PolAF.rows_mem_afLat H k)
  have hLlen : HasLen v R ((Ix g → R) ⧸ L) (v (algebraMap R C cp) ^ g) := by
    have h := hasLen_coker_det' v R hv (Ix g) (Matrix.fromRows H.Ht H.Bt)ᵀ
    rw [Matrix.det_transpose, hdet, Matrix.range_mulVecLin] at h
    exact h

  have hkill : ∀ x : Nb p g, p • x = 0 := by intro x; ext i; simp
  obtain ⟨cA, cN, cO, -, -, -, hA, hN, hO⟩ := _root_.GlobalTheory.CompanionTheory.Ar.GR.lens_exist p C v R hv hp1 (Nb p g) hkill H.AA
  have hcO : cO = v (algebraMap R C (p : R)) ^ g := hasLen_unique hv hO (PolAF.hasLen_omAA_htd H)
  have hdeg := u4 p C v R hv hp1 (Nb p g) hkill H.AA cN cO hN hO
  obtain ⟨hcnt, hgen⟩ := _root_.GlobalTheory.CompanionTheory.Relay.augmentation_length_colength_bound p C v R hv hp1 (Nb p g) hkill H.AA cA cN hA hN
  obtain ⟨eq⟩ := _root_.GlobalTheory.CompanionTheory.Ar.GR.afQuot_equiv_coords p C v R hv hp1 (Ix g) H.AA
  have hAF : HasLen v R ((Ix g → R) ⧸ AF) cA := hasLen_of_equiv eq.symm hA
  obtain ⟨hle, hLeq⟩ :=
    _root_.GlobalTheory.CompanionTheory.Ar.GR.submodule_eq_of_hasLen_eq C v R hv (Ix g) L AF hLle _ _ (pow_ne_zero _ hvcp) hLlen hAF
  have hn : Fintype.card (Nb p g) * (p - 1) ≠ 0 :=
    Nat.mul_ne_zero Fintype.card_ne_zero (by omega)
  have hOeq : cO ^ Fintype.card (Nb p g) =
      (v (algebraMap R C cp) ^ g) ^ (Fintype.card (Nb p g) * (p - 1)) := by
    rw [hcO, ← hS.cp_val, ← pow_mul, ← pow_mul, ← pow_mul]
    congr 1; ring
  have h1 : (v (algebraMap R C cp) ^ g) ^ (Fintype.card (Nb p g) * (p - 1)) ≤
      cA ^ (Fintype.card (Nb p g) * (p - 1)) := pow_le_pow_left₀ zero_le hle _
  have hAn : cA ^ (Fintype.card (Nb p g) * (p - 1)) = cN ^ 2 :=
    le_antisymm hcnt (hdeg.trans (hOeq ▸ h1))
  have hOn : cO ^ Fintype.card (Nb p g) = cN ^ 2 :=
    le_antisymm (hOeq ▸ h1.trans hAn.le) hdeg
  have hcA : cA = v (algebraMap R C cp) ^ g :=
    ((pow_left_inj₀ zero_le zero_le hn).1 (hAn.trans (hOn.symm.trans hOeq)))
  have hLAF : L = AF := hLeq hcA.symm

  have hmem : ∀ x, x ∈ H' ↔ (∀ k, v ((H.Ht.map φ *ᵥ x) k) ≤ 1) ∧
      ∀ k, v ((H.Bt.map φ *ᵥ x) k) ≤ 1 := by
    intro x
    show (∀ l ∈ AF, _) ↔ _
    rw [← hLAF]
    exact PolAF.span_rows_integral v hv H.Ht H.Bt x
  refine ⟨hLAF.symm, fun l => hLAF ▸ hcpmem l, hLAF ▸ hLlen, hcA ▸ hA, hmem, ?_, ?_,
    hgen hAn, ⟨cA, cN, cO, hA, hN, hO, hAn, hOn⟩⟩
  · intro x
    rw [← hker x, hmem]
    constructor
    · rintro ⟨⟨-, h2⟩, h0⟩; exact ⟨h0, h2⟩
    · rintro ⟨h0, h2⟩; exact ⟨⟨fun k => by rw [show H.Ht.map φ *ᵥ x = 0 from h0]; simp, h2⟩, h0⟩
  · intro w hw
    obtain ⟨x, hx1, hx2⟩ := himg w hw
    refine ⟨x, (hmem x).2 ⟨fun k => by rw [hx1]; exact hw k, fun k => by rw [show H.Bt.map φ *ᵥ x = 0 from hx2]; simp⟩, hx1⟩

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PolarisedAugmentationTheorem =====
