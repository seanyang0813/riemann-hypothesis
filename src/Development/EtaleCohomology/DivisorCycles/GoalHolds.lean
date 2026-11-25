module

public import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs
public import Development.EtaleCohomology.DivisorCycles.CycleCount
public import Mathlib.Topology.Algebra.MvPolynomial
public import Development.EtaleCohomology.DivisorCycles.DegPoly2
public import Mathlib.FieldTheory.IsAlgClosed.Spectrum
public import Mathlib.LinearAlgebra.Matrix.Charpoly.Eigs
public import Mathlib.RingTheory.SimpleRing.Principal
public import Mathlib.Algebra.Algebra.Spectrum.Basic
public import Development.EtaleCohomology.DivisorCycles.ChainPf
public import Development.EtaleCohomology.DivisorCycles.SepPolyProof
public import Mathlib.Algebra.MvPolynomial.PDeriv
public import Mathlib.Topology.Algebra.Group.Defs
public import Mathlib.RingTheory.Spectrum.Prime.Topology
public import Mathlib.Topology.Algebra.ConstMulAction
public import Development.EtaleCohomology.DivisorCycles.OpenCoset
public import Development.EtaleCohomology.DivisorCycles.MatUnitsOf
public import Development.EtaleCohomology.DivisorCycles.SemisPf
public import Development.EtaleCohomology.DivisorCycles.SpecPtPf
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.CocharacterLieDivisors.DivWCoreLacUseType
public import Development.EtaleCohomology.DivisorCycles.FinKey
public import Development.EtaleCohomology.DivisorCycles.FinStruct
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.NormalizedMatrixSpan, Development.EtaleCohomology.DivisorCycles.BigCorner2, Development.EtaleCohomology.DivisorCycles.FinBigCorner, Development.EtaleCohomology.DivisorCycles.EntriesCont, Development.EtaleCohomology.DivisorCycles.FinDegAll, Development.EtaleCohomology.DivisorCycles.DenseAlg2, Development.EtaleCohomology.DivisorCycles.FinDenseAlg, Development.EtaleCohomology.DivisorCycles.FinDensePf, Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CosetOfCover, Development.EtaleCohomology.DivisorCycles.OpenCosetPf, Development.EtaleCohomology.DivisorCycles.FinFinDense, Development.EtaleCohomology.DivisorCycles.FinEmbedPf, Development.EtaleCohomology.DivisorCycles.FinFinEmbed, Development.EtaleCohomology.DivisorCycles.FinPolyPf, Development.EtaleCohomology.DivisorCycles.FinFinPoly, Development.EtaleCohomology.DivisorCycles.FinSubOf, Development.EtaleCohomology.DivisorCycles.FinFinSub, Development.EtaleCohomology.DivisorCycles.FinMatUnits, Development.EtaleCohomology.DivisorCycles.MinCongr, Development.EtaleCohomology.DivisorCycles.FinRep, Development.EtaleCohomology.DivisorCycles.FinSemis, Development.EtaleCohomology.DivisorCycles.SpecLiePf, Development.EtaleCohomology.DivisorCycles.FinSpecLie, Development.EtaleCohomology.DivisorCycles.DivPlus, Development.EtaleCohomology.DivisorCycles.Imports, Development.EtaleCohomology.DivisorCycles.GoalHolds

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.NormalizedMatrixSpan =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.NormalizedMatrixSpan", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace UpperTheory.Reformulated.B.NormalizedMatrixSpan

@[reducible] noncomputable def Mat (C : Type) (N : ℕ) : Type := Matrix (Fin N) (Fin N) C

noncomputable def Normd {C : Type} [Field C] {N : ℕ} {Γ : Type} [Group Γ] (ρ : Γ →* GL (Fin N) C)
    (A : Subalgebra C (Mat C N)) : Prop :=
  ∀ g : Γ, ∀ a ∈ A,
    (ρ g : Matrix (Fin N) (Fin N) C) * a * (ρ g⁻¹ : Matrix (Fin N) (Fin N) C) ∈ A

noncomputable def gens {Γ C : Type} [Group Γ] [Field C] {N : ℕ} (ρ : Γ →* GL (Fin N) C)
    (A : Subalgebra C (Mat C N)) : Set (Mat C N) :=
  {x : Mat C N | ∃ a ∈ A, ∃ g : Γ, x = a * (ρ g : Matrix (Fin N) (Fin N) C)}

theorem span_mul {Γ C : Type} [Group Γ] [Field C] {N : ℕ} (ρ : Γ →* GL (Fin N) C)
    (A : Subalgebra C (Mat C N)) (hA : Normd ρ A) (x y : Mat C N)
    (hx : x ∈ Submodule.span C (gens ρ A)) (hy : y ∈ Submodule.span C (gens ρ A)) :
    x * y ∈ Submodule.span C (gens ρ A) := by
  have h := Submodule.mul_mem_mul hx hy
  rw [Submodule.span_mul_span] at h
  refine Submodule.span_mono ?_ h
  rintro _ ⟨_, ⟨a, ha, g, rfl⟩, _, ⟨b, hb, k, rfl⟩, rfl⟩
  refine ⟨a * ((ρ g : Matrix (Fin N) (Fin N) C) * b * (ρ g⁻¹ : Matrix (Fin N) (Fin N) C)),
    A.mul_mem ha (hA g b hb), g * k, ?_⟩
  have e : (ρ g⁻¹ : Matrix (Fin N) (Fin N) C) * (ρ (g * k) : Matrix (Fin N) (Fin N) C)
      = (ρ k : Matrix (Fin N) (Fin N) C) := by
    rw [← Units.val_mul, ← map_mul, inv_mul_cancel_left]
  simp only [mul_assoc, e]

end UpperTheory.Reformulated.B.NormalizedMatrixSpan
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.NormalizedMatrixSpan =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.BigCorner2 =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.BigCorner2", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.NormalizedMatrixSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix

namespace LateralTheory.DivDb.BigCorner₂
open LateralTheory.DivDb

variable {Γ C : Type} [Group Γ] [Field C] {N n : ℕ}

def gens (ρ : Γ →* GL (Fin N) C) (A : Subalgebra C (Mat C N)) : Set (Mat C N) :=
  {x | ∃ a ∈ A, ∃ g, x = a * (ρ g : Mat C N)}

lemma rmul (ρ : Γ →* GL (Fin N) C) (g h : Γ) : (ρ (g * h) : Mat C N) = ρ g * ρ h := by simp

lemma rone (ρ : Γ →* GL (Fin N) C) : (ρ 1 : Mat C N) = 1 := by simp

lemma rinv (ρ : Γ →* GL (Fin N) C) (g : Γ) : (ρ g : Mat C N) * ρ g⁻¹ = 1 := by
  rw [← rmul, mul_inv_cancel, rone]

lemma rinv' (ρ : Γ →* GL (Fin N) C) (g : Γ) : (ρ g⁻¹ : Mat C N) * ρ g = 1 := by
  rw [← rmul, inv_mul_cancel, rone]

lemma span_mul (ρ : Γ →* GL (Fin N) C) (A : Subalgebra C (Mat C N)) (hN : Normd ρ A)
    (x y : Mat C N) (hx : x ∈ Submodule.span C (gens ρ A)) (hy : y ∈ Submodule.span C (gens ρ A)) :
    x * y ∈ Submodule.span C (gens ρ A) :=
  _root_.UpperTheory.Reformulated.B.NormalizedMatrixSpan.span_mul ρ A hN x y hx hy

lemma one_mem_span (ρ : Γ →* GL (Fin N) C) (A : Subalgebra C (Mat C N)) :
    (1 : Mat C N) ∈ Submodule.span C (gens ρ A) :=
  Submodule.subset_span ⟨1, A.one_mem, 1, by rw [rone, one_mul]⟩

noncomputable def RR (ρ : Γ →* GL (Fin N) C) (A : Subalgebra C (Mat C N)) (hN : Normd ρ A) :
    Subalgebra C (Mat C N) :=
  (Submodule.span C (gens ρ A)).toSubalgebra (one_mem_span ρ A) (span_mul ρ A hN)

lemma mem_RR {ρ : Γ →* GL (Fin N) C} {A : Subalgebra C (Mat C N)} {hN : Normd ρ A} {x : Mat C N} :
    x ∈ RR ρ A hN ↔ x ∈ Submodule.span C (gens ρ A) := Iff.rfl

lemma corner_gen (ρ : Γ →* GL (Fin N) C) (A : Subalgebra C (Mat C N)) (p : Fin n → Mat C N)
    (hC : Corner A p) (hN : Normd ρ A)
    (hyp : ∀ g i, (∃ a ∈ A, p i * a * (ρ g : Mat C N) * p i ≠ 0) → ∃ w ∈ A, p i * (ρ g : Mat C N) = p i * w)
    (i : Fin n) {x : Mat C N} (hx : x ∈ gens ρ A) : ∃ c : C, p i * x * p i = c • p i := by
  obtain ⟨a, ha, g, rfl⟩ := hx
  by_cases h : p i * a * (ρ g : Mat C N) * p i = 0
  · exact ⟨0, by rw [zero_smul, ← mul_assoc, h]⟩
  · obtain ⟨w, hw, hpw⟩ := hyp g i ⟨a, ha, h⟩
    have ha' : (ρ g⁻¹ : Mat C N) * a * ρ g ∈ A := by simpa using hN g⁻¹ a ha
    have e1 : a * (ρ g : Mat C N) = ρ g * ((ρ g⁻¹ : Mat C N) * a * ρ g) := by
      simp only [← mul_assoc, rinv, one_mul]
    obtain ⟨c, hc⟩ := hC.2 _ (A.mul_mem hw ha') i
    refine ⟨c, ?_⟩
    rw [e1, ← mul_assoc, ← mul_assoc, hpw, ← hc]; simp only [mul_assoc]

lemma corner_span (ρ : Γ →* GL (Fin N) C) (A : Subalgebra C (Mat C N)) (p : Fin n → Mat C N)
    (hC : Corner A p) (hN : Normd ρ A)
    (hyp : ∀ g i, (∃ a ∈ A, p i * a * (ρ g : Mat C N) * p i ≠ 0) → ∃ w ∈ A, p i * (ρ g : Mat C N) = p i * w)
    (i : Fin n) {x : Mat C N} (hx : x ∈ Submodule.span C (gens ρ A)) : ∃ c : C, p i * x * p i = c • p i := by
  induction hx using Submodule.span_induction with
  | mem x hx' => exact corner_gen ρ A p hC hN hyp i hx'
  | zero => exact ⟨0, by simp⟩
  | add u v _ _ hu hv =>
    obtain ⟨c, hc⟩ := hu; obtain ⟨d, hd⟩ := hv
    exact ⟨c + d, by rw [mul_add, add_mul, hc, hd, add_smul]⟩
  | smul c u _ hu =>
    obtain ⟨d, hd⟩ := hu
    exact ⟨c * d, by rw [mul_smul_comm, smul_mul_assoc, hd, smul_smul]⟩

lemma normd_span (ρ : Γ →* GL (Fin N) C) (A : Subalgebra C (Mat C N)) (hN : Normd ρ A) (g : Γ)
    {x : Mat C N} (hx : x ∈ Submodule.span C (gens ρ A)) :
    (ρ g : Mat C N) * x * (ρ g⁻¹ : Mat C N) ∈ Submodule.span C (gens ρ A) := by
  induction hx using Submodule.span_induction with
  | mem x hx' =>
    obtain ⟨a, ha, h, rfl⟩ := hx'
    refine Submodule.subset_span ⟨(ρ g : Mat C N) * a * ρ g⁻¹, hN g a ha, g * h * g⁻¹, ?_⟩
    have key : (ρ g⁻¹ : Mat C N) * (ρ g * (ρ h * ρ g⁻¹)) = ρ h * ρ g⁻¹ := by
      rw [← mul_assoc, rinv', one_mul]
    rw [rmul, rmul]; simp only [mul_assoc, key]
  | zero => simp
  | add u v _ _ hu hv => rw [mul_add, add_mul]; exact Submodule.add_mem _ hu hv
  | smul c u _ hu => rw [mul_smul_comm, smul_mul_assoc]; exact Submodule.smul_mem _ c hu

lemma keeps_span (ρ : Γ →* GL (Fin N) C) (A : Subalgebra C (Mat C N)) (hK : Keeps ρ A)
    (W : Submodule C (Fin N → C)) (hW : ∀ g, ∀ v ∈ W, (ρ g : Mat C N) *ᵥ v ∈ W)
    {x : Mat C N} (hx : x ∈ Submodule.span C (gens ρ A)) : ∀ v ∈ W, x *ᵥ v ∈ W := by
  induction hx using Submodule.span_induction with
  | mem x hx' =>
    obtain ⟨a, ha, g, rfl⟩ := hx'
    intro v hv
    rw [← Matrix.mulVec_mulVec]
    exact hK W hW a ha _ (hW g v hv)
  | zero => intro v _; simp
  | add u v _ _ hu hv => intro w hw; rw [Matrix.add_mulVec]; exact W.add_mem (hu w hw) (hv w hw)
  | smul c u _ hu => intro w hw; rw [Matrix.smul_mulVec]; exact W.smul_mem c (hu w hw)

end LateralTheory.DivDb.BigCorner₂

open LateralTheory.DivDb.BigCorner₂ in
theorem LateralTheory.DivDb.BigCorner₂.BigCorner_of : LateralTheory.DivDb.BigCorner := by
  intro Γ C _ _ N n ρ A p hC hN hK hyp
  refine ⟨RR ρ A hN, fun g => ?_, ⟨fun i => ?_, fun a ha i => ?_⟩, fun g a ha => ?_, fun W hW a ha => ?_⟩
  · exact mem_RR.2 (Submodule.subset_span ⟨1, A.one_mem, g, (one_mul _).symm⟩)
  · exact mem_RR.2 (Submodule.subset_span ⟨p i, hC.1 i, 1, by rw [rone, mul_one]⟩)
  · exact corner_span ρ A p hC hN hyp i (mem_RR.1 ha)
  · exact mem_RR.2 (normd_span ρ A hN g (mem_RR.1 ha))
  · exact keeps_span ρ A hK W hW (mem_RR.1 ha)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.BigCorner2 =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.FinBigCorner =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.FinBigCorner", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\npublic import Development.EtaleCohomology.DivisorCycles.BigCorner2\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.BigCorner
end LateralTheory.Fin.BigCorner
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.FinBigCorner =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.EntriesCont =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.EntriesCont", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Mathlib.Topology.Algebra.MvPolynomial\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.AutomorphicGaloisHodgeTate.Div
namespace LateralTheory.DivDb.DegAll₂
open LateralTheory.DivDb

theorem entries_cont {Γ K : Type} [TopologicalSpace Γ] [TopologicalSpace K] {N : ℕ}
    {φ : Γ → Mat K N} (hφ : Continuous φ) :
    Continuous (fun g => fun p : Fin N × Fin N => φ g p.1 p.2) :=
  continuous_pi fun p => (hφ.matrix_elem p.1 p.2)

theorem poly_cont {Γ K : Type} [TopologicalSpace Γ] [Field K] [TopologicalSpace K]
    [IsTopologicalRing K] {N : ℕ} {φ : Γ → Mat K N} (hφ : Continuous φ) (f : MP K N) :
    Continuous (fun g => MvPolynomial.aeval (fun p : Fin N × Fin N => φ g p.1 p.2) f) := by
  refine ((MvPolynomial.continuous_eval f).comp (entries_cont hφ)).congr ?_
  intro g
  rw [MvPolynomial.aeval_eq_eval₂Hom, Algebra.algebraMap_self]
  rfl

end LateralTheory.DivDb.DegAll₂

namespace LateralTheory.DivDb

theorem DegAll_of (hP : DegPoly) : DegAll := by
  intro Γ K _ _ _ _ _ _ N n ρ hρ S hS hSd g
  obtain ⟨𝓕, h𝓕⟩ := hP K N n
  rw [h𝓕 K]
  intro f hf
  have key := Continuous.ext_on hS (DegAll₂.poly_cont hρ f) continuous_const
    (fun s hs => ((h𝓕 K _).1 (hSd s hs)) f hf)
  exact congrFun key g

end LateralTheory.DivDb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.EntriesCont =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.FinDegAll =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.FinDegAll", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\npublic import Development.EtaleCohomology.DivisorCycles.DegPoly2\npublic import Development.EtaleCohomology.DivisorCycles.EntriesCont\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.DegAll
theorem etale_rep_image_degree_bound_all_holds_assembled : LateralTheory.DivDb.DegAll := by
  apply LateralTheory.DivDb.DegAll_of <;> first | exact _root_.LateralTheory.DivDb.DegPoly₂.DegPoly_of
end LateralTheory.Fin.DegAll
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.FinDegAll =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.DenseAlg2 =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.DenseAlg2", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\npublic import Mathlib.FieldTheory.IsAlgClosed.Spectrum\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Charpoly.Eigs\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Algebra.Spectrum.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Polynomial PositivityTheory.AutomorphicGaloisHodgeTate.Div

namespace LateralTheory.DivDb.DenseAlg₂
open LateralTheory.DivDb

variable {C : Type} [Field C]

theorem pow_intertwine {N n : ℕ} (y : Mat C N) (z : Mat C n) (T : Matrix (Fin N) (Fin n) C)
    (h : y * T = T * z) : ∀ k : ℕ, y ^ k * T = T * z ^ k
  | 0 => by simp
  | k + 1 => by
    rw [pow_succ, pow_succ, Matrix.mul_assoc, h, ← Matrix.mul_assoc, pow_intertwine y z T h k,
      Matrix.mul_assoc]

theorem aeval_intertwine {N n : ℕ} (y : Mat C N) (z : Mat C n) (T : Matrix (Fin N) (Fin n) C)
    (h : y * T = T * z) (q : C[X]) : aeval y q * T = T * aeval z q := by
  rw [aeval_eq_sum_range, aeval_eq_sum_range, Matrix.sum_mul, Matrix.mul_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [Matrix.smul_mul, Matrix.mul_smul, pow_intertwine y z T h k]

theorem sep_of_roots {n : ℕ} (q : C[X]) (hm : q.Monic) (hd : q.natDegree = n) (l : Fin n → C)
    (hl : Function.Injective l) (hr : ∀ j, q.IsRoot (l j)) : q.Separable := by
  classical
  have hq0 : q ≠ 0 := hm.ne_zero
  have hnd : ((Finset.univ : Finset (Fin n)).val.map l).Nodup := Multiset.Nodup.map hl Finset.univ.nodup
  have hle : (Finset.univ : Finset (Fin n)).val.map l ≤ q.roots := (Multiset.le_iff_subset hnd).2 fun a ha => by
    obtain ⟨j, -, rfl⟩ := Multiset.mem_map.1 ha
    exact (mem_roots hq0).2 (hr j)
  have hcs : Multiset.card ((Finset.univ : Finset (Fin n)).val.map l) = n := by simp
  have heq : (Finset.univ : Finset (Fin n)).val.map l = q.roots :=
    Multiset.eq_of_le_of_card_le hle (by rw [hcs, ← hd]; exact card_roots' q)
  have hcard : Multiset.card q.roots = q.natDegree := by rw [← heq, hcs, hd]
  have hprod := prod_multiset_X_sub_C_of_monic_of_roots_card_eq hm hcard
  rw [← heq, Multiset.map_map] at hprod
  have e : (∏ j, (X - Polynomial.C (l j))) = q := by rw [← hprod, Finset.prod_eq_multiset_prod]; rfl
  exact e ▸ separable_prod_X_sub_C_iff.2 hl

theorem isRoot_of_aeval {N : ℕ} (y : Mat C N) (q : C[X]) (hq : aeval y q = 0) (l : C)
    (hl : y.charpoly.IsRoot l) : q.IsRoot l := by
  have h1 : l ∈ spectrum C y := Matrix.mem_spectrum_of_isRoot_charpoly hl
  have h2 := spectrum.subset_polynomial_aeval y q ⟨l, h1, rfl⟩
  rw [hq, spectrum.mem_iff, sub_zero] at h2
  by_contra hne
  exact h2 ((IsUnit.mk0 (q.eval l) hne).map (algebraMap C (Mat C N)))

theorem DenseAlg_of (hCh : Chain) (hSP : SepPoly) : DenseAlg := by
  intro Γ C _ _ _ N n ρ r A B hSub U g m hm hE
  obtain ⟨hBA, hint, hspan⟩ := hSub
  have hr : ∀ h : Γ, B * (ρ h : Mat C N) * A = (r h : Mat C n) := fun h => by
    rw [Matrix.mul_assoc, hint h, ← Matrix.mul_assoc, hBA, Matrix.one_mul]
  have hgu : ∀ u : Γ, (ρ g : Mat C N) * (ρ u : Mat C N) = (ρ (g * u) : Mat C N) := fun u => by
    rw [map_mul, Units.val_mul]
  by_contra hno
  push Not at hno
  obtain ⟨f, hf⟩ := hSP C n
  let φ : Mat C N →ₗ[C] Mat C n :=
    { toFun := fun x => B * (ρ g : Mat C N) * x * A
      map_add' := fun x y => by simp [Matrix.mul_add, Matrix.add_mul]
      map_smul' := fun c x => by simp [Matrix.mul_smul, Matrix.smul_mul] }
  obtain ⟨f', hf', -⟩ := hCh C N n φ f
  have hz : ¬ (φ m).charpoly.Separable := by
    rw [hf, not_not, ← hf']
    refine hm f' fun x hx => ?_
    obtain ⟨u, hu, rfl⟩ := Submonoid.mem_map.1 hx
    rw [hf']
    have hφu : φ (((Units.coeHom (Mat C N)).comp ρ) u) = (r (g * u) : Mat C n) := by
      show B * (ρ g : Mat C N) * (ρ u : Mat C N) * A = _
      rw [Matrix.mul_assoc B, hgu, hr]
    rw [hφu]
    by_contra h
    exact hno u hu ((hf _).2 h)
  have hyT : ∀ T : Matrix (Fin N) (Fin n) C, (∀ h, (ρ h : Mat C N) * T = T * (r h : Mat C n)) →
      ((ρ g : Mat C N) * m) * T = T * φ m := by
    intro T hT
    let ψ : Mat C N →ₗ[C] Mat C N :=
      { toFun := fun x => ((ρ g : Mat C N) * x * T - T * (B * (ρ g : Mat C N) * x * A)) * B
        map_add' := fun x y => by
          simp only [Matrix.mul_add, Matrix.add_mul, Matrix.sub_mul]; abel
        map_smul' := fun c x => by
          simp only [Matrix.mul_smul, Matrix.smul_mul, Matrix.sub_mul, RingHom.id_apply, smul_sub] }
    have hψ : ψ m = 0 := by
      ext i j
      obtain ⟨f2, hf2, -⟩ := hCh C N N ψ (MvPolynomial.X (i, j))
      have h0 : ev m f2 = 0 := by
        refine hm f2 fun x hx => ?_
        obtain ⟨u, hu, rfl⟩ := Submonoid.mem_map.1 hx
        rw [hf2]
        have hψu : ψ (((Units.coeHom (Mat C N)).comp ρ) u) = 0 := by
          show (((ρ g : Mat C N) * (ρ u : Mat C N) * T -
            T * (B * (ρ g : Mat C N) * (ρ u : Mat C N) * A)) * B) = 0
          rw [Matrix.mul_assoc B, hgu, hr, hT, sub_self, Matrix.zero_mul]
        rw [hψu]; simp [ev]
      rw [hf2] at h0
      simpa [ev] using h0
    have h2 : ((ρ g : Mat C N) * m * T - T * φ m) * B * A = 0 := by
      have e : ψ m = ((ρ g : Mat C N) * m * T - T * φ m) * B := rfl
      rw [← e, hψ, Matrix.zero_mul]
    rw [Matrix.mul_assoc, hBA, Matrix.mul_one] at h2
    exact sub_eq_zero.1 h2
  have hqy : aeval ((ρ g : Mat C N) * m) (φ m).charpoly = 0 := by
    apply hspan
    intro T hT
    rw [aeval_intertwine _ _ T (hyT T hT), Matrix.aeval_self_charpoly, Matrix.mul_zero]
  obtain ⟨l, hl, hlr⟩ := hE
  exact hz (sep_of_roots _ (Matrix.charpoly_monic _) (by simp [Matrix.charpoly_natDegree_eq_dim]) l hl
    fun j => isRoot_of_aeval _ _ hqy (l j) (hlr j))

end LateralTheory.DivDb.DenseAlg₂
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.DenseAlg2 =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.FinDenseAlg =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.FinDenseAlg", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\npublic import Development.EtaleCohomology.DivisorCycles.ChainPf\npublic import Development.EtaleCohomology.DivisorCycles.DenseAlg2\npublic import Development.EtaleCohomology.DivisorCycles.SepPolyProof\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.DenseAlg
theorem etale_rep_dense_algebraic_hull_holds_assembled : LateralTheory.DivDb.DenseAlg := by
  apply LateralTheory.DivDb.DenseAlg₂.DenseAlg_of <;> first | exact _root_.LateralTheory.DivDb.ChainPf.chain_of | exact _root_.LateralTheory.DivDb.SepPoly_of
end LateralTheory.Fin.DenseAlg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.FinDenseAlg =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.FinDensePf =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.FinDensePf", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Mathlib.Topology.Algebra.MvPolynomial\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.AutomorphicGaloisHodgeTate.Div

namespace LateralTheory.DivDb.FinDensePf

theorem cont_ev {Γ K : Type} [TopologicalSpace Γ] [Field K] [TopologicalSpace K] [IsTopologicalRing K]
    (n : ℕ) (x : Γ → Matrix (Fin n) (Fin n) K) (hx : Continuous x) (f : LateralTheory.DivDb.MP K n) :
    Continuous (fun g => LateralTheory.DivDb.ev (x g) f) := by
  have h1 : Continuous (fun g => (fun p : Fin n × Fin n => x g p.1 p.2)) :=
    continuous_pi fun p => hx.matrix_elem p.1 p.2
  exact (MvPolynomial.continuous_eval f).comp h1

end LateralTheory.DivDb.FinDensePf

namespace LateralTheory.DivDb

theorem FinDense_of (hSep : SepPoly) (hOC : OpenCoset) : FinDense := by
  intro Γ K _ _ _ _ _ _ _ _ _ n r hr hU
  obtain ⟨f, hf⟩ := hSep K n
  have hset : {g : Γ | (r g : Mat K n).charpoly.Separable} = {g | ev (r g : Mat K n) f ≠ 0} := by
    ext g; exact hf _
  rw [hset]
  have hc := LateralTheory.DivDb.FinDensePf.cont_ev n (fun g => (r g : Mat K n)) hr f
  refine ⟨isOpen_ne_fun hc continuous_const, ?_⟩
  rw [dense_iff_inter_open]
  intro O hO hne
  by_contra hemp
  have hz : ∀ g ∈ O, ev (r g : Mat K n) f = 0 := by
    intro g hg
    by_contra h
    exact hemp ⟨g, hg, h⟩
  obtain ⟨U, hUn, hUf, g, hg⟩ := hOC Γ K n r f O hO hne hz
  obtain ⟨u, hu, hs⟩ := hU U hUn hUf g
  exact (hf _).1 hs (hg u hu)

end LateralTheory.DivDb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.FinDensePf =====

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CosetOfCover =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CosetOfCover", "h": "module\n\npublic import Mathlib.Algebra.MvPolynomial.PDeriv\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\npublic import Mathlib.Topology.Algebra.Group.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Spectrum.Prime.Topology\npublic import Mathlib.Topology.Algebra.ConstMulAction\n\n"}
section -- clump:auto
@[expose] public section

namespace UpperTheory.Reformulated.B.Qn18

@[reducible] noncomputable def Mat : Type → ℕ → Type :=
  fun C N ↦ Matrix (Fin N) (Fin N) C

@[reducible] noncomputable def MP : (C : Type) → [Field C] → ℕ → Type :=
  fun C [Field C] N ↦ MvPolynomial (Fin N × Fin N) C

noncomputable def ev : {C : Type} → [inst : Field C] → {N : ℕ} → Mat C N → MP C N → C :=
  fun {C} [Field C] {N} x f ↦ MvPolynomial.eval (fun p ↦ x p.1 p.2) f

noncomputable def dAt :
    {C : Type} → [inst : Field C] → {N : ℕ} → MP C N → Mat C N → Mat C N → C :=
  fun {C} [Field C] {N} f x Y ↦
    ∑ p : Fin N × Fin N, ev x (MvPolynomial.pderiv p f) * Y p.1 p.2

noncomputable def Chain : Prop :=
  ∀ (C : Type) [inst : Field C] (N M : ℕ) (φ : Mat C N →ₗ[C] Mat C M) (f : MP C M),
    ∃ (f' : MP C N),
      (∀ (x : Mat C N), ev x f' = ev (φ x) f) ∧
      ∀ (x Y : Mat C N), dAt f' x Y = dAt f (φ x) (φ Y)

noncomputable def OpenCoset : Prop :=
  ∀ (Γ C : Type) [inst : Group Γ] [inst_1 : TopologicalSpace Γ] [IsTopologicalGroup Γ]
    [CompactSpace Γ] [inst_4 : Field C] (n : ℕ) (r : Γ →* GL (Fin n) C)
    (f : MP C n) (O : Set Γ), IsOpen O → O.Nonempty →
    (∀ g ∈ O, ev ↑(r g) f = 0) →
    ∃ (U : Subgroup Γ),
      U.Normal ∧ U.FiniteIndex ∧ ∃ (g : Γ), ∀ u ∈ U, ev ↑(r (g * u)) f = 0

open scoped Pointwise in
private theorem coset_of_cover {G : Type} [Group G] [TopologicalSpace G]
    [TopologicalSpace.NoetherianSpace G] (hc : ∀ h : G, Continuous fun x : G => h * x)
    (Z : Set G) (hZ : IsClosed Z) (s : Finset G) (hs : ∀ x : G, ∃ a ∈ s, a * x ∈ Z) :
    ∃ U : Subgroup G, U.Normal ∧ U.FiniteIndex ∧ ∃ g : G, ∀ u ∈ U, g * u ∈ Z := by
  classical
  haveI : ContinuousConstSMul G G := ⟨hc⟩
  set X : Set G := irreducibleComponent (1 : G) with hX
  have hXc : X ∈ irreducibleComponents G := irreducibleComponent_mem_irreducibleComponents _
  have horb : MulAction.orbit G X ⊆ irreducibleComponents G := by
    rintro _ ⟨h, rfl⟩
    refine ⟨?_, ?_⟩
    · exact hXc.1.image _ (hc h).continuousOn
    · intro Y hY hle
      have h1 : IsIrreducible (h⁻¹ • Y) := IsIrreducible.image hY _ (hc h⁻¹).continuousOn
      have h2 : X ⊆ h⁻¹ • Y := by
        have : h • X ⊆ Y := hle
        exact Set.smul_set_subset_iff_subset_inv_smul_set.mp this
      have h3 : h⁻¹ • Y ⊆ X := hXc.2 h1 h2
      have h4 : Y ⊆ h • X := by
        have := Set.smul_set_subset_iff_subset_inv_smul_set.mp h3
        simpa using this
      exact h4
  have hfin : (MulAction.orbit G X).Finite :=
    TopologicalSpace.NoetherianSpace.finite_irreducibleComponents.subset horb
  haveI : (MulAction.stabilizer G X).FiniteIndex := by
    refine ⟨?_⟩
    rw [MulAction.index_stabilizer]
    exact ((Set.ncard_pos hfin).mpr ⟨X, MulAction.mem_orbit_self X⟩).ne'
  obtain ⟨W, hW, hXW⟩ := isIrreducible_iff_sUnion_isClosed.mp hXc.1
    (s.image fun a => (fun x : G => a * x) ⁻¹' Z)
    (by
      intro z hz
      obtain ⟨a, -, rfl⟩ := Finset.mem_image.mp hz
      exact hZ.preimage (hc a))
    (by
      intro x _
      obtain ⟨a, ha, hx⟩ := hs x
      exact ⟨_, Finset.mem_coe.mpr (Finset.mem_image_of_mem _ ha), hx⟩)
  obtain ⟨a, -, rfl⟩ := Finset.mem_image.mp hW
  refine ⟨(MulAction.stabilizer G X).normalCore, inferInstance, inferInstance, a, ?_⟩
  intro u hu
  have hu' : u • X = X := Subgroup.normalCore_le _ hu
  have : u ∈ X := by
    rw [← hu']
    exact ⟨1, mem_irreducibleComponent, by simp⟩
  exact hXW this

private theorem finite_cover {G : Type} [Group G] [TopologicalSpace G]
    [IsTopologicalGroup G] [CompactSpace G] (O : Set G) (hO : IsOpen O) (hne : O.Nonempty) :
    ∃ s : Finset G, ∀ x : G, ∃ a ∈ s, a * x ∈ O := by
  obtain ⟨o, ho⟩ := hne
  obtain ⟨s, hs⟩ := isCompact_univ.elim_finite_subcover (fun a : G => (fun x : G => a * x) ⁻¹' O)
    (fun a => hO.preimage (continuous_const_mul a))
    (fun x _ => Set.mem_iUnion.mpr ⟨o * x⁻¹, by simpa using ho⟩)
  refine ⟨s, fun x => ?_⟩
  simpa using hs (Set.mem_univ x)

theorem main :
    Chain → OpenCoset := by
  intro hch Γ C _ _ _ _ _ n r f O hO hne hf
  obtain ⟨s, hs⟩ := finite_cover O hO hne
  let p : Γ → PrimeSpectrum (MvPolynomial (Fin n × Fin n) C) := fun g =>
    ⟨RingHom.ker (MvPolynomial.eval fun q : Fin n × Fin n =>
      (↑(r g) : Matrix (Fin n) (Fin n) C) q.1 q.2), RingHom.ker_isPrime _⟩
  have hp : ∀ (g : Γ) (S : Set (MvPolynomial (Fin n × Fin n) C)),
      p g ∈ PrimeSpectrum.zeroLocus S ↔
        ∀ k ∈ S, ev ↑(r g) k = 0 := by
    intro g S
    rw [PrimeSpectrum.mem_zeroLocus]
    exact Iff.rfl
  letI : TopologicalSpace Γ := TopologicalSpace.induced p inferInstance
  have hcl (k : MP C n) : IsClosed {g | ev ↑(r g) k = 0} := by
    refine (isClosed_induced_iff (f := p)).mpr ⟨_, PrimeSpectrum.isClosed_zeroLocus {k}, ?_⟩
    ext g
    simp [hp]
  haveI : TopologicalSpace.NoetherianSpace Γ :=
    (show Topology.IsInducing p from ⟨rfl⟩).noetherianSpace
  have hc (h : Γ) : Continuous fun x => h * x := by
    refine continuous_iff_isClosed.mpr ?_
    intro T hT
    obtain ⟨T', hT', rfl⟩ := (isClosed_induced_iff (f := p)).mp hT
    obtain ⟨S, rfl⟩ := (PrimeSpectrum.isClosed_iff_zeroLocus _).mp hT'
    choose F hF using fun k => hch C n n
      (LinearMap.mulLeft C (↑(r h) : Matrix (Fin n) (Fin n) C)) k
    have : (fun x => h * x) ⁻¹' (p ⁻¹' PrimeSpectrum.zeroLocus S) =
        ⋂ k ∈ S, {g | ev ↑(r g) (F k) = 0} := by
      ext g
      simp only [Set.mem_preimage, hp, Set.mem_iInter, Set.mem_setOf_eq, (hF _).1,
        LinearMap.mulLeft_apply, map_mul, Units.val_mul]
    rw [this]
    exact isClosed_biInter fun k _ => hcl (F k)
  exact coset_of_cover hc _ (hcl f) s fun x => by
    obtain ⟨a, ha, hx⟩ := hs x
    exact ⟨a, ha, hf _ hx⟩

end UpperTheory.Reformulated.B.Qn18
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CosetOfCover =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.OpenCosetPf =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.OpenCosetPf", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.OpenCoset\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CosetOfCover\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.AutomorphicGaloisHodgeTate.Div

namespace LateralTheory.DivDb.OpenCosetPf
open LateralTheory.DivDb

theorem main (hChain : Chain) : OpenCoset :=
  _root_.UpperTheory.Reformulated.B.Qn18.main hChain

end LateralTheory.DivDb.OpenCosetPf

namespace LateralTheory.DivDb
end LateralTheory.DivDb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.OpenCosetPf =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.FinFinDense =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.FinFinDense", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\npublic import Development.EtaleCohomology.DivisorCycles.ChainPf\npublic import Development.EtaleCohomology.DivisorCycles.FinDensePf\npublic import Development.EtaleCohomology.DivisorCycles.OpenCosetPf\npublic import Development.EtaleCohomology.DivisorCycles.SepPolyProof\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.FinDense
theorem etale_open_coset_condition_holds_assembled : LateralTheory.DivDb.OpenCoset := by
  apply _root_.LateralTheory.DivDb.OpenCosetPf.main <;> first | exact _root_.LateralTheory.DivDb.ChainPf.chain_of
theorem etale_finite_image_dense_holds_assembled : LateralTheory.DivDb.FinDense := by
  apply LateralTheory.DivDb.FinDense_of <;> first | exact _root_.LateralTheory.DivDb.SepPoly_of | exact etale_open_coset_condition_holds_assembled
end LateralTheory.Fin.FinDense
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.FinFinDense =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.FinEmbedPf =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.FinEmbedPf", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.AutomorphicGaloisHodgeTate.Div
namespace LateralTheory.DivDb.FinEmbedPf

section core
variable {K V U ι : Type} [Field K] [AddCommGroup V] [Module K V] [FiniteDimensional K V]
  [AddCommGroup U] [Module K U]

def SS {W : Type} [AddCommGroup W] [Module K W] (a : ι → W →ₗ[K] W) : Prop :=
  ∀ S : Submodule K W, (∀ i, ∀ v ∈ S, a i v ∈ S) → ∃ S' : Submodule K W, IsCompl S S' ∧ ∀ i, ∀ v ∈ S', a i v ∈ S'

def gens (a : ι → V →ₗ[K] V) (b : ι → U →ₗ[K] U) : Set (V →ₗ[K] V) :=
  {F | ∃ (t' : U →ₗ[K] V) (t : V →ₗ[K] U), (∀ i, a i ∘ₗ t' = t' ∘ₗ b i) ∧ (∀ i, t ∘ₗ a i = b i ∘ₗ t) ∧
    F = t' ∘ₗ t}

theorem proj_comm {E : Type} [AddCommGroup E] [Module K E] (p q : Submodule K E) (h : IsCompl p q)
    (φ : E →ₗ[K] E) (hp : ∀ v ∈ p, φ v ∈ p) (hq : ∀ v ∈ q, φ v ∈ q) (x : E) :
    p.projection q h (φ x) = φ (p.projection q h x) := by
  have hx := Submodule.projection_add_projection_eq_self h x
  conv_lhs => rw [← hx]
  rw [map_add (f := _), map_add (f := _), Submodule.projection_apply_of_mem_left h (hp _ (Submodule.projection_apply_mem h x)),
    Submodule.projection_apply_of_mem_right h (hq _ (Submodule.projection_apply_mem h.symm x)), add_zero]

theorem step (a : ι → V →ₗ[K] V) (b : ι → U →ₗ[K] U) (hV : SS a) (hU : SS b)
    (hspan : ∀ Z : V →ₗ[K] V, (∀ t : U →ₗ[K] V, (∀ i, a i ∘ₗ t = t ∘ₗ b i) → Z ∘ₗ t = 0) → Z = 0)
    (E : V →ₗ[K] V) (hE : E ∈ Submodule.span K (gens a b)) (hEi : ∀ x, E (E x) = E x)
    (hEc : ∀ i x, E (a i x) = a i (E x)) (hker : LinearMap.ker E ≠ ⊥) :
    ∃ E' : V →ₗ[K] V, E' ∈ Submodule.span K (gens a b) ∧ (∀ x, E' (E' x) = E' x) ∧
      (∀ i x, E' (a i x) = a i (E' x)) ∧ LinearMap.ker E' < LinearMap.ker E := by
  set P : V →ₗ[K] V := LinearMap.id - E with hPdef
  have hP : ∀ x, P x = x - E x := fun x => rfl
  have hEP : ∀ x, E (P x) = 0 := fun x => by rw [hP, map_sub, hEi, sub_self]
  have hPE : ∀ x, P (E x) = 0 := fun x => by rw [hP, hEi, sub_self]
  have hPP : ∀ x, P (P x) = P x := fun x => by rw [hP (P x), hEP, sub_zero]
  have hPc : ∀ i x, P (a i x) = a i (P x) := fun i x => by rw [hP, hP, hEc, map_sub]
  obtain ⟨t', ht', hPt'⟩ : ∃ t' : U →ₗ[K] V, (∀ i, a i ∘ₗ t' = t' ∘ₗ b i) ∧ P ∘ₗ t' ≠ 0 := by
    by_contra hcon
    push Not at hcon
    have h0 := hspan P hcon
    apply hker
    rw [LinearMap.ker_eq_bot']
    intro m hm
    have := congrArg (fun f => f m) h0
    simpa [hP, hm] using this
  set M : U →ₗ[K] V := P ∘ₗ t' with hMdef
  have hMc : ∀ i u, a i (M u) = M (b i u) := fun i u => by
    simp only [hMdef, LinearMap.comp_apply]
    rw [← hPc]; congr 1; exact congrArg (fun f => f u) (ht' i)
  have hEM : ∀ u, E (M u) = 0 := fun u => hEP _
  have hPM : ∀ u, P (M u) = M u := fun u => hPP _
  obtain ⟨Cc, hC, hCs⟩ := hU (LinearMap.ker M) (fun i v hv => by
    rw [LinearMap.mem_ker] at hv ⊢; rw [← hMc, hv, map_zero])
  have hinj : ∀ c ∈ Cc, M c = 0 → c = 0 := fun c hc h0 => by
    have : c ∈ LinearMap.ker M ⊓ Cc := ⟨h0, hc⟩
    rw [hC.inf_eq_bot] at this; exact this
  set R : Submodule K V := Submodule.map M Cc with hRdef
  obtain ⟨D, hD, hDs⟩ := hV R (fun i v hv => by
    obtain ⟨c, hc, rfl⟩ := hv
    exact ⟨b i c, hCs i c hc, (hMc i c).symm⟩)
  have hinj' : Function.Injective (M ∘ₗ Cc.subtype) := by
    intro x y hxy
    apply Subtype.ext
    have := hinj (x - y) (Cc.sub_mem x.2 y.2) (by simpa [sub_eq_zero] using hxy)
    exact sub_eq_zero.mp this
  have hRr : LinearMap.range (M ∘ₗ Cc.subtype) = R := by
    ext y; simp [hRdef, Submodule.mem_map]
  let e := LinearEquiv.ofInjective (M ∘ₗ Cc.subtype) hinj'
  let T : V →ₗ[K] U := Cc.subtype ∘ₗ e.symm.toLinearMap ∘ₗ
    (LinearEquiv.ofEq _ _ hRr.symm).toLinearMap ∘ₗ R.projectionOnto D hD
  have hTC : ∀ v, T v ∈ Cc := fun v => (e.symm _).2
  have hMT : ∀ v, M (T v) = R.projection D hD v := fun v => by
    have := congrArg Subtype.val (e.apply_symm_apply
      ((LinearEquiv.ofEq _ _ hRr.symm).toLinearMap (R.projectionOnto D hD v)))
    rw [LinearEquiv.ofInjective_apply] at this
    simpa [T] using this
  have hpc : ∀ i v, R.projection D hD (a i v) = a i (R.projection D hD v) := fun i v =>
    proj_comm R D hD (a i) (fun w hw => by
      obtain ⟨c, hc, rfl⟩ := hw
      exact ⟨b i c, hCs i c hc, (hMc i c).symm⟩) (hDs i) v
  have hTc : ∀ i v, T (a i v) = b i (T v) := fun i v => by
    have h1 := hinj (T (a i v) - b i (T v)) (Cc.sub_mem (hTC _) (hCs i _ (hTC v)))
      (by rw [map_sub, hMT, ← hMc, hMT, hpc, sub_self])
    exact sub_eq_zero.mp h1
  set H : V →ₗ[K] V := M ∘ₗ (T ∘ₗ P) with hHdef
  have hH : ∀ x, H x = R.projection D hD (P x) := fun x => hMT _
  have hHgen : H ∈ gens a b := ⟨M, T ∘ₗ P, fun i => LinearMap.ext fun u => by simp [hMc],
    fun i => LinearMap.ext fun v => by simp [hPc, hTc], rfl⟩
  have hprojR : ∀ x, R.projection D hD x ∈ R := fun x => Submodule.projection_apply_mem hD x
  have hER : ∀ y ∈ R, E y = 0 := fun y hy => by
    obtain ⟨c, _, rfl⟩ := hy; exact hEM c
  have hPR : ∀ y ∈ R, P y = y := fun y hy => by rw [hP, hER y hy, sub_zero]
  have hEH : ∀ x, E (H x) = 0 := fun x => by rw [hH]; exact hER _ (hprojR _)
  have hHE : ∀ x, H (E x) = 0 := fun x => by rw [hH, hPE, map_zero]
  have hHH : ∀ x, H (H x) = H x := fun x => by
    rw [hH (H x), hPR _ (by rw [hH]; exact hprojR _), hH,
      Submodule.projection_apply_of_mem_left hD (hprojR _)]
  refine ⟨E + H, Submodule.add_mem _ hE (Submodule.subset_span hHgen), fun x => ?_, fun i x => ?_, ?_⟩
  · simp only [LinearMap.add_apply, map_add (f := _), hEi, hEH, hHE, hHH, add_zero, zero_add]
  · simp only [LinearMap.add_apply, map_add (f := _), hEc, hH, hPc, hpc]
  · have hle : LinearMap.ker (E + H) ≤ LinearMap.ker E := fun x hx => by
      rw [LinearMap.mem_ker, LinearMap.add_apply] at hx
      have := congrArg E hx
      rw [map_add (f := _), hEi, hEH, add_zero, map_zero] at this
      exact this
    refine lt_of_le_of_ne hle (fun heq => ?_)
    have hRne : ∃ c ∈ Cc, M c ≠ 0 := by
      by_contra hc
      push Not at hc
      apply hPt'
      ext u
      have hu : u ∈ LinearMap.ker M ⊔ Cc := by rw [hC.sup_eq_top]; trivial
      obtain ⟨k, hk, c, hc', rfl⟩ := Submodule.mem_sup.mp hu
      show M (k + c) = 0
      rw [map_add (f := _), LinearMap.mem_ker.mp hk, hc c hc', add_zero]
    obtain ⟨c, hc, hne⟩ := hRne
    have hyR : M c ∈ R := ⟨c, hc, rfl⟩
    have hy : M c ∈ LinearMap.ker E := hEM c
    rw [← heq, LinearMap.mem_ker, LinearMap.add_apply, hEM, zero_add, hH, hPR _ hyR,
      Submodule.projection_apply_of_mem_left hD hyR] at hy
    exact hne hy

theorem main (a : ι → V →ₗ[K] V) (b : ι → U →ₗ[K] U) (hV : SS a) (hU : SS b)
    (hspan : ∀ Z : V →ₗ[K] V, (∀ t : U →ₗ[K] V, (∀ i, a i ∘ₗ t = t ∘ₗ b i) → Z ∘ₗ t = 0) → Z = 0) :
    (LinearMap.id : V →ₗ[K] V) ∈ Submodule.span K (gens a b) := by
  have key : ∀ d : ℕ, ∀ E : V →ₗ[K] V, E ∈ Submodule.span K (gens a b) → (∀ x, E (E x) = E x) →
      (∀ i x, E (a i x) = a i (E x)) → Module.finrank K (LinearMap.ker E) ≤ d →
      (LinearMap.id : V →ₗ[K] V) ∈ Submodule.span K (gens a b) := by
    have fin : ∀ E : V →ₗ[K] V, E ∈ Submodule.span K (gens a b) → (∀ x, E (E x) = E x) →
        LinearMap.ker E = ⊥ → (LinearMap.id : V →ₗ[K] V) ∈ Submodule.span K (gens a b) := by
      intro E hE hi hk
      have : E = LinearMap.id := by
        ext x
        have h1 : E (E x - x) = 0 := by rw [map_sub, hi, sub_self]
        have := (LinearMap.ker_eq_bot'.mp hk) _ h1
        simpa [sub_eq_zero] using this
      rw [← this]; exact hE
    intro d
    induction d with
    | zero =>
      intro E hE hi _ hd
      exact fin E hE hi (Submodule.finrank_eq_zero.mp (by omega))
    | succ d ih =>
      intro E hE hi hc hd
      by_cases hk : LinearMap.ker E = ⊥
      · exact fin E hE hi hk
      · obtain ⟨E', hE', hi', hc', hlt⟩ := step a b hV hU hspan E hE hi hc hk
        have := Submodule.finrank_lt_finrank_of_lt hlt
        exact ih E' hE' hi' hc' (by omega)
  exact key _ 0 (Submodule.zero_mem _) (fun x => by simp) (fun i x => by simp)
    (Submodule.finrank_le _)

end core

theorem FinEmbed_of : FinEmbed := by
  intro Γ K _ _ N n ρ r A B hSub hρ hr
  let a : Γ → (Fin N → K) →ₗ[K] (Fin N → K) := fun g => Matrix.toLin' (ρ g : Mat K N)
  let b : Γ → (Fin n → K) →ₗ[K] (Fin n → K) := fun g => Matrix.toLin' (r g : Mat K n)
  have hV : SS a := fun S hS => by
    obtain ⟨S', h1, h2⟩ := hρ S (fun g v hv => by simpa [a, Matrix.toLin'_apply] using hS g v hv)
    exact ⟨S', h1, fun g v hv => by simpa [a, Matrix.toLin'_apply] using h2 g v hv⟩
  have hU : SS b := fun S hS => by
    obtain ⟨S', h1, h2⟩ := hr S (fun g v hv => by simpa [b, Matrix.toLin'_apply] using hS g v hv)
    exact ⟨S', h1, fun g v hv => by simpa [b, Matrix.toLin'_apply] using h2 g v hv⟩
  have hspan : ∀ Z : (Fin N → K) →ₗ[K] (Fin N → K),
      (∀ t : (Fin n → K) →ₗ[K] (Fin N → K), (∀ g, a g ∘ₗ t = t ∘ₗ b g) → Z ∘ₗ t = 0) → Z = 0 := by
    intro Z hZ
    have h0 := hSub.2.2 (LinearMap.toMatrix' Z) (fun T hT => by
      have := hZ (Matrix.toLin' T) (fun g => by
        simp only [a, b, ← Matrix.toLin'_mul, hT g])
      have := congrArg LinearMap.toMatrix' this
      simpa [LinearMap.toMatrix'_comp] using this)
    have := congrArg Matrix.toLin' h0
    simpa using this
  have hid := main a b hV hU hspan
  obtain ⟨k, f, g, hsum⟩ := Submodule.mem_span_set'.mp hid
  have hg : ∀ j, ∃ (t' : (Fin n → K) →ₗ[K] (Fin N → K)) (t : (Fin N → K) →ₗ[K] (Fin n → K)),
      (∀ i, a i ∘ₗ t' = t' ∘ₗ b i) ∧ (∀ i, t ∘ₗ a i = b i ∘ₗ t) ∧ (g j : _) = t' ∘ₗ t := fun j => (g j).2
  choose t' t ht' ht hEq using hg
  refine ⟨k, fun j => LinearMap.toMatrix' (t j), fun j => f j • LinearMap.toMatrix' (t' j), ?_, ?_, ?_⟩
  · intro j g
    have := congrArg LinearMap.toMatrix' (ht j g)
    simpa [a, b, LinearMap.toMatrix'_comp] using this
  · intro j g
    have := congrArg LinearMap.toMatrix' (ht' j g)
    simp only [a, b, LinearMap.toMatrix'_comp, LinearMap.toMatrix'_toLin'] at this
    rw [Matrix.mul_smul, smul_mul, this]
  · have h1 : ∑ j, f j • (t' j ∘ₗ t j) = LinearMap.id := by
      rw [← hsum]; exact Finset.sum_congr rfl fun j _ => by rw [hEq]
    have h2 := congrArg LinearMap.toMatrix' h1

    rw [map_sum, LinearMap.toMatrix'_id] at h2
    rw [← h2]
    exact Finset.sum_congr rfl fun j _ => by
      rw [map_smul, LinearMap.toMatrix'_comp, smul_mul]

end LateralTheory.DivDb.FinEmbedPf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.FinEmbedPf =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.FinFinEmbed =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.FinFinEmbed", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\npublic import Development.EtaleCohomology.DivisorCycles.FinEmbedPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.FinEmbed
end LateralTheory.Fin.FinEmbed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.FinFinEmbed =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.FinPolyPf =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.FinPolyPf", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\npublic import Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\npublic import Mathlib.FieldTheory.IsAlgClosed.Spectrum\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Charpoly.Eigs\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Algebra.Spectrum.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Polynomial PositivityTheory.AutomorphicGaloisHodgeTate.Div
namespace LateralTheory.DivDb.FinPolyPf

variable {K : Type} [Field K] [IsAlgClosed K] {n : ℕ}

omit [IsAlgClosed K] in
theorem root_sub (x : Matrix (Fin n) (Fin n) K) (P : K[X]) (hP : P ≠ 0) (hx : aeval x P = 0) :
    x.charpoly.roots ⊆ P.roots := by
  intro a ha
  rw [Polynomial.mem_roots (Matrix.charpoly_monic x).ne_zero] at ha
  rw [Polynomial.mem_roots hP]
  cases n with
  | zero => simp [Matrix.charpoly, Matrix.det_fin_zero] at ha
  | succ m =>
    have hs : a ∈ spectrum K x := Matrix.mem_spectrum_of_isRoot_charpoly ha
    have h2 := spectrum.subset_polynomial_aeval x P ⟨a, hs, rfl⟩
    rw [hx, spectrum.zero_eq] at h2
    simpa using h2

theorem card_roots_eq (P : K[X]) : Multiset.card P.roots = P.natDegree :=
  IsAlgClosed.card_roots_eq_natDegree

theorem cp_card (x : Matrix (Fin n) (Fin n) K) : Multiset.card x.charpoly.roots = n := by
  rw [card_roots_eq, Matrix.charpoly_natDegree_eq_dim, Fintype.card_fin]

theorem eq_of_roots (x : Matrix (Fin n) (Fin n) K) (P : K[X]) (hm : P.Monic)
    (h : x.charpoly.roots = P.roots) : x.charpoly = P := by
  rw [← prod_multiset_X_sub_C_of_monic_of_roots_card_eq (Matrix.charpoly_monic x) (card_roots_eq _),
    ← prod_multiset_X_sub_C_of_monic_of_roots_card_eq hm (card_roots_eq _), h]

theorem FinPoly_of : FinPoly := by
  intro K _ _ n x P hm hd hx
  have hsub := root_sub x P hm.ne_zero hx
  have hPc : Multiset.card P.roots = n := by rw [card_roots_eq, hd]
  refine ⟨fun hsep => ?_, fun hpg hdet => ?_⟩
  · apply eq_of_roots x P hm
    have hle : x.charpoly.roots ≤ P.roots :=
      (Multiset.le_iff_subset (Polynomial.nodup_roots hsep)).2 hsub
    exact Multiset.eq_of_le_of_card_le hle (by rw [hPc, cp_card])
  · apply eq_of_roots x P hm
    by_contra hne
    refine hpg.2 _ (fun a ha => hsub ha) (cp_card x) hne ?_
    rw [← Matrix.det_eq_prod_roots_charpoly, hdet,
      (IsAlgClosed.splits P).coeff_zero_eq_prod_roots_of_monic hm, hd, ← mul_assoc, ← pow_add,
      Even.neg_one_pow ⟨n, rfl⟩, one_mul]

end LateralTheory.DivDb.FinPolyPf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.FinPolyPf =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.FinFinPoly =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.FinFinPoly", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\npublic import Development.EtaleCohomology.DivisorCycles.FinPolyPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.FinPoly
end LateralTheory.Fin.FinPoly
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.FinFinPoly =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.FinSubOf =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.FinSubOf", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.AutomorphicGaloisHodgeTate.Div

namespace LateralTheory.DivDb.FiniteSubrepresentation

variable {K : Type} [Field K] {N n : ℕ}

theorem pow_tw (X : Matrix (Fin N) (Fin N) K) (Y : Matrix (Fin n) (Fin n) K) (T : Matrix (Fin N) (Fin n) K)
    (h : X * T = T * Y) (k : ℕ) : X ^ k * T = T * Y ^ k := by
  induction k with
  | zero => simp
  | succ k ih => rw [pow_succ, pow_succ, Matrix.mul_assoc, h, ← Matrix.mul_assoc, ih, Matrix.mul_assoc]

theorem aeval_tw (X : Matrix (Fin N) (Fin N) K) (Y : Matrix (Fin n) (Fin n) K) (T : Matrix (Fin N) (Fin n) K)
    (h : X * T = T * Y) (q : Polynomial K) : Polynomial.aeval X q * T = T * Polynomial.aeval Y q := by
  induction q using Polynomial.induction_on' with
  | add p q hp hq => rw [map_add (f := _), map_add (f := _), Matrix.add_mul, Matrix.mul_add, hp, hq]
  | monomial k c =>
    rw [Polynomial.aeval_monomial, Polynomial.aeval_monomial, Algebra.algebraMap_eq_smul_one,
      Algebra.algebraMap_eq_smul_one, smul_mul_assoc, smul_mul_assoc, one_mul, one_mul, Matrix.smul_mul,
      Matrix.mul_smul, pow_tw X Y T h]

end LateralTheory.DivDb.FiniteSubrepresentation

theorem LateralTheory.DivDb.FiniteSubrepresentation.FinSub_of : LateralTheory.DivDb.FinSub := by
  intro Γ K _ _ N n ρ r A B hS hρ
  obtain ⟨hBA, hAr, hspan⟩ := hS
  have hinj : ∀ w : Fin n → K, A *ᵥ w = 0 → w = 0 := by
    intro w hw
    have := congrArg (B *ᵥ ·) hw
    simpa [Matrix.mulVec_mulVec, hBA] using this
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro W hW
    obtain ⟨W'', hc, hs⟩ := hρ (W.map (Matrix.mulVecLin A)) (by
      rintro g _ ⟨w, hw, rfl⟩
      refine ⟨(r g : Matrix (Fin n) (Fin n) K) *ᵥ w, hW g w hw, ?_⟩
      simp only [Matrix.mulVecLin_apply, Matrix.mulVec_mulVec, hAr g])
    refine ⟨W''.comap (Matrix.mulVecLin A), ?_, ?_⟩
    · constructor
      · rw [Submodule.disjoint_def]
        intro w hw hw'
        apply hinj
        have h1 : A *ᵥ w ∈ W.map (Matrix.mulVecLin A) := ⟨w, hw, rfl⟩
        exact (Submodule.disjoint_def.mp hc.disjoint) _ h1 hw'
      · rw [codisjoint_iff, eq_top_iff]
        intro v _
        have hv : A *ᵥ v ∈ W.map (Matrix.mulVecLin A) ⊔ W'' := by rw [hc.sup_eq_top]; trivial
        obtain ⟨y, ⟨w, hw, rfl⟩, z, hz, hyz⟩ := Submodule.mem_sup.mp hv
        rw [Submodule.mem_sup]
        refine ⟨w, hw, v - w, ?_, by abel⟩
        show A *ᵥ (v - w) ∈ W''
        rw [Matrix.mulVec_sub, ← hyz]
        simpa [Matrix.mulVecLin_apply] using hz
    · intro g v hv
      show A *ᵥ ((r g : Matrix (Fin n) (Fin n) K) *ᵥ v) ∈ W''
      rw [Matrix.mulVec_mulVec, ← hAr g, ← Matrix.mulVec_mulVec]
      exact hs g _ hv
  · apply le_antisymm
    · simpa using Matrix.rank_le_width A
    · have := Matrix.rank_mul_le_right B A
      rw [hBA, Matrix.rank_one] at this
      simpa using this
  · intro g
    rw [Matrix.mul_assoc, hAr g, ← Matrix.mul_assoc, hBA, Matrix.one_mul]
  · intro g q
    constructor
    · intro h
      have h2 := aeval_tw _ _ A (hAr g) q
      rw [h, Matrix.zero_mul] at h2
      have h3 := congrArg (B * ·) h2
      simpa [← Matrix.mul_assoc, hBA] using h3.symm
    · intro h
      apply hspan
      intro T hT
      rw [aeval_tw _ _ T (hT g) q, h, Matrix.mul_zero]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.FinSubOf =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.FinFinSub =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.FinFinSub", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\npublic import Development.EtaleCohomology.DivisorCycles.FinSubOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.FinSub
end LateralTheory.Fin.FinSub
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.FinFinSub =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.FinMatUnits =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.FinMatUnits", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\npublic import Development.EtaleCohomology.DivisorCycles.MatUnitsOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.MatrixUnits₂
end LateralTheory.Fin.MatrixUnits₂
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.FinMatUnits =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.MinCongr =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.MinCongr", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.AutomorphicGaloisHodgeTate.Div

namespace LateralTheory.DivDb.RepPf

variable {C : Type} [Field C] {N n : ℕ}

section
variable (p : Fin n → Mat C N) (E : Fin n → Fin n → Mat C N)

noncomputable def coef (a : Mat C N) (i j : Fin n) : C := by
  classical
  exact if h : ∃ c : C, E i j ≠ 0 ∧ p i * a * p j = c • E i j then h.choose else 0

lemma coef_zero {a : Mat C N} {i j : Fin n} (h : E i j = 0) : coef p E a i j = 0 := by
  unfold coef
  rw [dite_eq_right]
  rintro ⟨c, hc, -⟩
  exact hc h

variable {p E}

lemma coef_spec {R : Subalgebra C (Mat C N)} (hM : MUnits R p E) {a : Mat C N} (ha : a ∈ R)
    (i j : Fin n) : p i * a * p j = coef p E a i j • E i j := by
  obtain ⟨c, hc⟩ := hM.2.2.2.2.2 a ha i j
  by_cases hE : E i j = 0
  · rw [hc, hE, smul_zero, smul_zero]
  · have h : ∃ c : C, E i j ≠ 0 ∧ p i * a * p j = c • E i j := ⟨c, hE, hc⟩
    unfold coef
    rw [dite_eq_left h]
    exact h.choose_spec.2

lemma E_left {R : Subalgebra C (Mat C N)} (hp : Sys p) (hM : MUnits R p E) (i j : Fin n) :
    p i * E i j = E i j := by
  calc p i * E i j = p i * (p i * E i j * p j) := by rw [hM.2.2.1 i j]
    _ = (p i * p i) * E i j * p j := by simp only [mul_assoc]
    _ = E i j := by rw [(hp.1.idem i).eq, hM.2.2.1 i j]

lemma E_right {R : Subalgebra C (Mat C N)} (hp : Sys p) (hM : MUnits R p E) (i j : Fin n) :
    E i j * p j = E i j := by
  calc E i j * p j = (p i * E i j * p j) * p j := by rw [hM.2.2.1 i j]
    _ = p i * E i j * (p j * p j) := by simp only [mul_assoc]
    _ = E i j := by rw [(hp.1.idem j).eq, hM.2.2.1 i j]

lemma expand (hp : Sys p) (a b : Mat C N) (i k : Fin n) :
    p i * (a * b) * p k = ∑ j, (p i * a * p j) * (p j * b * p k) := by
  have h : ∀ j, (p i * a * p j) * (p j * b * p k) = p i * a * p j * b * p k := by
    intro j
    calc (p i * a * p j) * (p j * b * p k) = p i * a * (p j * p j) * b * p k := by
          simp only [mul_assoc]
      _ = _ := by rw [(hp.1.idem j).eq]
  simp only [h]
  rw [← Finset.sum_mul, ← Finset.sum_mul, ← Finset.mul_sum, hp.1.complete, mul_one]
  simp only [mul_assoc]

lemma coef_mul {R : Subalgebra C (Mat C N)} (hp : Sys p) (hM : MUnits R p E) {a b : Mat C N}
    (ha : a ∈ R) (hb : b ∈ R) (i k : Fin n) :
    coef p E (a * b) i k = ∑ j, coef p E a i j * coef p E b j k := by
  by_cases hik : E i k = 0
  · rw [coef_zero p E hik]
    symm
    refine Finset.sum_eq_zero fun j _ => ?_
    by_cases hij : E i j = 0
    · rw [coef_zero p E hij, zero_mul]
    by_cases hjk : E j k = 0
    · rw [coef_zero p E hjk, mul_zero]
    exact absurd hik (hM.2.2.2.2.1 i j k hij hjk).2
  · apply smul_left_injective C hik
    simp only
    rw [← coef_spec hM (R.mul_mem ha hb), expand hp, Finset.sum_smul]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [coef_spec hM ha, coef_spec hM hb, smul_mul_smul_comm]
    by_cases hij : E i j = 0
    · simp [hij, coef_zero p E hij]
    by_cases hjk : E j k = 0
    · simp [hjk, coef_zero p E hjk]
    rw [(hM.2.2.2.2.1 i j k hij hjk).1]

lemma coef_one {R : Subalgebra C (Mat C N)} (hp : Sys p) (hM : MUnits R p E) (i j : Fin n) :
    coef p E 1 i j = (1 : Matrix (Fin n) (Fin n) C) i j := by
  by_cases hij : i = j
  · subst hij
    rw [Matrix.one_apply_eq]
    have hE : E i i ≠ 0 := by rw [hM.2.1 i]; exact hp.2 i
    apply smul_left_injective C hE
    simp only
    rw [← coef_spec hM R.one_mem, one_smul, mul_one, (hp.1.idem i).eq, hM.2.1 i]
  · rw [Matrix.one_apply_ne hij]
    by_cases hE : E i j = 0
    · exact coef_zero p E hE
    apply smul_left_injective C hE
    simp only
    rw [← coef_spec hM R.one_mem, zero_smul, mul_one, hp.1.ortho hij]

end

section
variable {p : Fin n → Mat C N} {E : Fin n → Fin n → Mat C N}


variable (E) in
noncomputable def blk (j : Fin n) : Finset (Fin n) := by
  classical
  exact Finset.univ.filter fun i => E i j ≠ 0


variable (E) in
noncomputable def bb (j : Fin n) : Fin n :=
  if h : (blk E j).Nonempty then (blk E j).min' h else j

lemma mem_blk {i j : Fin n} : i ∈ blk E j ↔ E i j ≠ 0 := by
  classical
  unfold blk
  simp

lemma min'_congr {s t : Finset (Fin n)} (h : s.Nonempty) (h' : t.Nonempty) (e : s = t) :
    s.min' h = t.min' h' := by
  subst e; rfl

lemma bb_spec {R : Subalgebra C (Mat C N)} (hp : Sys p) (hM : MUnits R p E) (j : Fin n) :
    (blk E j).Nonempty ∧ E (bb E j) j ≠ 0 := by
  have hne : (blk E j).Nonempty := ⟨j, mem_blk.2 (by rw [hM.2.1 j]; exact hp.2 j)⟩
  refine ⟨hne, ?_⟩
  unfold bb
  rw [dite_eq_left hne]
  exact mem_blk.1 (Finset.min'_mem _ hne)

lemma bb_ne {R : Subalgebra C (Mat C N)} (hp : Sys p) (hM : MUnits R p E) (j : Fin n) :
    E j (bb E j) ≠ 0 := hM.2.2.2.1 _ _ (bb_spec hp hM j).2

lemma bb_congr {R : Subalgebra C (Mat C N)} (hp : Sys p) (hM : MUnits R p E) {i j : Fin n}
    (hij : E i j ≠ 0) : bb E i = bb E j := by
  have e : blk E i = blk E j := by
    ext k
    rw [mem_blk, mem_blk]
    constructor
    · intro hki; exact (hM.2.2.2.2.1 k i j hki hij).2
    · intro hkj; exact (hM.2.2.2.2.1 k j i hkj (hM.2.2.2.1 i j hij)).2
  unfold bb
  rw [dite_eq_left (bb_spec hp hM i).1, dite_eq_left (bb_spec hp hM j).1]
  exact min'_congr _ _ e

lemma mul_E {R : Subalgebra C (Mat C N)} (hp : Sys p) (hM : MUnits R p E) {a : Mat C N}
    (ha : a ∈ R) (j : Fin n) : a * E j (bb E j) = ∑ i, coef p E a i j • E i (bb E i) := by
  have h1 : a * E j (bb E j) = ∑ i, (p i * a * p j) * E j (bb E j) := by
    rw [← Finset.sum_mul, ← Finset.sum_mul, ← Finset.sum_mul, hp.1.complete, one_mul, mul_assoc,
      E_left hp hM]
  rw [h1]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [coef_spec hM ha, smul_mul_assoc]
  by_cases hij : E i j = 0
  · simp [hij, coef_zero p E hij]
  rw [(hM.2.2.2.2.1 i j (bb E j) hij (bb_ne hp hM j)).1, bb_congr hp hM hij]


variable (E) in
noncomputable def T (w : Fin N → C) : Matrix (Fin N) (Fin n) C := Matrix.of fun x j => (E j (bb E j) *ᵥ w) x

lemma mul_T (M : Mat C N) (w : Fin N → C) (x : Fin N) (j : Fin n) :
    (M * T E w) x j = ((M * E j (bb E j)) *ᵥ w) x := by
  rw [← Matrix.mulVec_mulVec]
  simp [T, Matrix.mul_apply, Matrix.mulVec, dotProduct]


variable (p E) in
noncomputable def rmat (a : Mat C N) : Matrix (Fin n) (Fin n) C := Matrix.of fun i j => coef p E a i j

lemma T_mul (w : Fin N → C) (a : Mat C N) (x : Fin N) (j : Fin n) :
    (T E w * rmat p E a) x j = ((∑ i, coef p E a i j • E i (bb E i)) *ᵥ w) x := by
  simp [T, rmat, Matrix.mul_apply, Matrix.sum_mulVec, Matrix.smul_mulVec, Finset.sum_apply, mul_comm]

lemma intertw {R : Subalgebra C (Mat C N)} (hp : Sys p) (hM : MUnits R p E) {a : Mat C N}
    (ha : a ∈ R) (w : Fin N → C) : a * T E w = T E w * rmat p E a := by
  ext x j
  rw [mul_T, T_mul, mul_E hp hM ha]

end

theorem Rep_of : Rep := by
  classical
  intro Γ C _ _ N n ρ R p E hp hM hρ
  let f : Γ →* Matrix (Fin n) (Fin n) C :=
    { toFun := fun g => rmat p E (ρ g : Mat C N)
      map_one' := by
        ext i j
        simp only [map_one, Units.val_one]
        exact coef_one hp hM i j
      map_mul' := by
        intro g h
        ext i k
        simp only [map_mul, Units.val_mul]
        rw [Matrix.mul_apply]
        exact coef_mul hp hM (hρ g) (hρ h) i k }
  let r : Γ →* GL (Fin n) C := f.toHomUnits
  have hcol : ∀ k, ∃ v : Fin N → C, p k *ᵥ v = v ∧ v ≠ 0 := by
    intro k
    by_contra hcon
    push_neg at hcon
    apply hp.2 k
    ext x c
    have h1 := hcon (p k *ᵥ Pi.single c 1) (by rw [Matrix.mulVec_mulVec, (hp.1.idem k).eq])
    have h2 := congrFun h1 x
    simpa [Matrix.mulVec_single_one] using h2
  choose v hv using hcol
  let w0 := ∑ k, v k
  have hw : ∀ k, p k *ᵥ w0 = v k := by
    intro k
    simp only [w0, Matrix.mulVec_sum]
    rw [Finset.sum_eq_single k]
    · exact (hv k).1
    · intro m _ hmk
      rw [← (hv m).1, Matrix.mulVec_mulVec, hp.1.ortho (Ne.symm hmk), Matrix.zero_mulVec]
    · simp
  have hu : ∀ k, ∃ u : Fin N → C, u ⬝ᵥ v k = 1 := by
    intro k
    obtain ⟨x, hx⟩ := Function.ne_iff.1 (hv k).2
    have hx' : v k x ≠ 0 := hx
    exact ⟨Pi.single x (v k x)⁻¹, by simp [hx']⟩
  choose u hu using hu
  let A := T E w0
  let B : Matrix (Fin n) (Fin N) C := Matrix.of fun j x => (u (bb E j) ᵥ* E (bb E j) j) x
  refine ⟨r, A, B, ?_, ?_, ?_⟩
  · ext j k
    have hprod : E (bb E j) j * E k (bb E k) = if j = k then p (bb E j) else 0 := by
      split_ifs with h
      · subst h
        rw [(hM.2.2.2.2.1 _ j _ (bb_spec hp hM j).2 (bb_ne hp hM j)).1, hM.2.1]
      · rw [← E_right hp hM (bb E j) j, ← E_left hp hM k (bb E k)]
        calc E (bb E j) j * p j * (p k * E k (bb E k))
            = E (bb E j) j * (p j * p k) * E k (bb E k) := by simp only [mul_assoc]
          _ = 0 := by rw [hp.1.ortho h, mul_zero, zero_mul]
    have hBA : (B * A) j k = (u (bb E j) ᵥ* E (bb E j) j) ⬝ᵥ (E k (bb E k) *ᵥ w0) := rfl
    rw [hBA, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec, hprod]
    split_ifs with h
    · rw [hw, hu, h, Matrix.one_apply_eq]
    · rw [Matrix.zero_mulVec, dotProduct_zero, Matrix.one_apply_ne h]
  · intro g
    exact intertw hp hM (hρ g) w0
  · intro Z hZ
    have hZE : ∀ j, Z * E j (bb E j) = 0 := by
      intro j
      rw [Matrix.ext_iff_mulVec]
      intro w
      have h1 := hZ (T E w) (fun g => intertw hp hM (hρ g) w)
      ext x
      have h2 := congrFun (congrFun h1 x) j
      rw [mul_T] at h2
      simpa using h2
    have hZp : ∀ j, Z * p j = 0 := by
      intro j
      have h3 : E j (bb E j) * E (bb E j) j = p j := by
        rw [(hM.2.2.2.2.1 j (bb E j) j (bb_ne hp hM j) (bb_spec hp hM j).2).1, hM.2.1 j]
      rw [← h3, ← mul_assoc, hZE j, zero_mul]
    calc Z = Z * ∑ j, p j := by rw [hp.1.complete, mul_one]
      _ = 0 := by
        rw [Finset.mul_sum]
        exact Finset.sum_eq_zero fun j _ => hZp j

end LateralTheory.DivDb.RepPf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.MinCongr =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.FinRep =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.FinRep", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\npublic import Development.EtaleCohomology.DivisorCycles.MinCongr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.Rep
end LateralTheory.Fin.Rep
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.FinRep =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.FinSemis =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.FinSemis", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\npublic import Development.EtaleCohomology.DivisorCycles.SemisPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.Semis
end LateralTheory.Fin.Semis
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.FinSemis =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.SpecLiePf =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.SpecLiePf", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.OpenCoset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.AutomorphicGaloisHodgeTate.Div
namespace LateralTheory.DivDb.SpecLiePf
open LateralTheory.DivDb

theorem SpecLie_of (hS : SpecPt) : SpecLie := by
  intro Γ K K' _ _ _ _ _ N n ρ X e hX hL hR
  classical
  let x : (Fin N × Fin N) ⊕ Fin n → K' := Sum.elim (fun p => X p.1 p.2) e
  let gAB : Finset (Fin n) → Finset (Fin n) → MvPolynomial ((Fin N × Fin N) ⊕ Fin n) K := fun A B =>
    MvPolynomial.C (B.card : K) * ∑ i ∈ A, MvPolynomial.X (Sum.inr i) -
      MvPolynomial.C (A.card : K) * ∑ i ∈ B, MvPolynomial.X (Sum.inr i)
  let G : Set (MvPolynomial ((Fin N × Fin N) ⊕ Fin n) K) :=
    {g | ∃ A B : Finset (Fin n), A.Nonempty ∧ B.Nonempty ∧ Disjoint A B ∧ g = gAB A B}
  have hGf : G.Finite :=
    (Set.finite_range (fun AB : Finset (Fin n) × Finset (Fin n) => gAB AB.1 AB.2)).subset
      (by rintro g ⟨A, B, -, -, -, rfl⟩; exact ⟨(A, B), rfl⟩)
  have haG : ∀ g ∈ G, MvPolynomial.aeval x g ≠ 0 := by
    rintro g ⟨A, B, hA, hB, hAB, rfl⟩

    simp only [gAB, map_sub, map_mul, map_sum, MvPolynomial.aeval_X, x, Sum.elim_inr, map_natCast]
    exact sub_ne_zero.mpr (hL A B hA hB hAB)
  obtain ⟨y, hy, hyG⟩ := hS K K' _ x G hGf haG
  refine ⟨Matrix.of fun a b => y (Sum.inl (a, b)), fun i => y (Sum.inr i), ?_, ?_, ?_⟩
  · change ∀ f ∈ Van (img ρ ⊤ : Set (Mat K N)), dAt f 1 _ = 0
    intro f hf
    have hf' : ∀ g : Γ, MvPolynomial.eval (fun p : Fin N × Fin N => (ρ g : Matrix (Fin N) (Fin N) K) p.1 p.2) f = 0 :=
      fun g => hf _ ⟨g, trivial, rfl⟩
    have h0 := hX f hf'
    let L : MvPolynomial ((Fin N × Fin N) ⊕ Fin n) K := ∑ p : Fin N × Fin N,
      MvPolynomial.C (MvPolynomial.eval (fun q : Fin N × Fin N => (1 : Matrix (Fin N) (Fin N) K) q.1 q.2)
        (MvPolynomial.pderiv p f)) * MvPolynomial.X (Sum.inl p)
    have hxL : MvPolynomial.aeval x L = 0 := by

      simpa only [L, map_sum, map_mul, MvPolynomial.aeval_C, MvPolynomial.aeval_X, x, Sum.elim_inl] using h0
    have h1 := hy L hxL

    simpa only [L, dAt, ev, map_sum, map_mul, MvPolynomial.eval_C, MvPolynomial.eval_X, Matrix.of_apply] using h1
  · intro A B hA hB hAB
    have h1 := hyG _ ⟨A, B, hA, hB, hAB, rfl⟩

    simp only [gAB, map_sub, map_mul, map_sum, MvPolynomial.eval_C, MvPolynomial.eval_X] at h1
    exact sub_ne_zero.mp h1
  · intro i
    let M : Matrix (Fin N) (Fin N) (MvPolynomial ((Fin N × Fin N) ⊕ Fin n) K) :=
      Matrix.scalar (Fin N) (MvPolynomial.X (Sum.inr i)) - Matrix.of (fun a b => MvPolynomial.X (Sum.inl (a, b)))
    have hx : MvPolynomial.aeval x M.det = 0 := by
      have e1 : MvPolynomial.aeval x M.det = ((MvPolynomial.aeval x).toRingHom.mapMatrix M).det := by
        rw [← RingHom.map_det]; rfl
      have e2 : (MvPolynomial.aeval x).toRingHom.mapMatrix M = Matrix.scalar (Fin N) (e i) - X := by
        ext a b
        by_cases h : a = b
        · subst h; simp [M, x]
        · simp [M, x, h]
      rw [e1, e2, ← Matrix.eval_charpoly]; exact hR i
    have h1 := hy _ hx
    have e1 : MvPolynomial.eval y M.det = ((MvPolynomial.eval y).mapMatrix M).det := by
      rw [← RingHom.map_det]
    have e2 : (MvPolynomial.eval y).mapMatrix M =
        Matrix.scalar (Fin N) (y (Sum.inr i)) - Matrix.of (fun a b => y (Sum.inl (a, b))) := by
      ext a b
      by_cases h : a = b
      · subst h; simp [M]
      · simp [M, h]
    rw [e1, e2] at h1
    change Polynomial.eval (y (Sum.inr i)) (Matrix.charpoly (Matrix.of fun a b => y (Sum.inl (a, b)))) = 0
    rw [Matrix.eval_charpoly]; exact h1

end LateralTheory.DivDb.SpecLiePf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.SpecLiePf =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.FinSpecLie =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.FinSpecLie", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.OpenCoset\npublic import Development.EtaleCohomology.DivisorCycles.SpecLiePf\npublic import Development.EtaleCohomology.DivisorCycles.SpecPtPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.SpecLie
theorem etale_spectrum_lie_algebra_instance : LateralTheory.DivDb.SpecLie := by
  apply LateralTheory.DivDb.SpecLiePf.SpecLie_of <;> first | exact _root_.LateralTheory.DivDb.SpecPtPf.SpecPt_of
end LateralTheory.Fin.SpecLie
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.FinSpecLie =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.DivPlus =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.DivPlus", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.AutomorphicGaloisHodgeTate.Div
namespace LateralTheory.DivDb


open Polynomial in
def DivPlus : Prop :=
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
      (∀ g : Γ, aeval (ρ g : Matrix (Fin N) (Fin N) K) (r g : Matrix (Fin n) (Fin n) K).charpoly = 0) ∧
      (∀ s ∈ S, aeval (r s : Matrix (Fin n) (Fin n) K) (P s) = 0) ∧
      (∀ g : Γ, ((r g : Matrix (Fin n) (Fin n) K).det) = ((ψ g : Kˣ) : K)) ∧
      IsOpen {g : Γ | (r g : Matrix (Fin n) (Fin n) K).charpoly.Separable} ∧
      Dense {g : Γ | (r g : Matrix (Fin n) (Fin n) K).charpoly.Separable} ∧
      (∀ s ∈ S, (r s : Matrix (Fin n) (Fin n) K).charpoly.Separable →
        (r s : Matrix (Fin n) (Fin n) K).charpoly = P s) ∧
      (∀ s ∈ S, ProdGen n (P s) → (r s : Matrix (Fin n) (Fin n) K).charpoly = P s) ∧
      ∃ (k : ℕ) (T : Fin k → Matrix (Fin n) (Fin N) K) (T' : Fin k → Matrix (Fin N) (Fin n) K),
        (∀ j g, T j * (ρ g : Mat K N) = (r g : Mat K n) * T j) ∧
        (∀ j g, (ρ g : Mat K N) * T' j = T' j * (r g : Mat K n)) ∧ ∑ j, T' j * T j = 1

theorem plus_of (hSpec : SpecLie) (hDeg : DegAll) (hStruct : Struct) (hKey : Key) (hBig : BigCorner)
    (hSemis : Semis) (hMU : MatrixUnits₂) (hRep : Rep) (hDA : DenseAlg) (hSub : FinSub) (hFD : FinDense)
    (hFP : FinPoly) (hEm : FinEmbed) : DivPlus := by
  intro Γ _ _ _ _ K K' _ _ _ _ _ _ _ _ _ N n ρ hρ hss S hS P hP hk X hX he ψ hψ hψS
  obtain ⟨e, -, hL, hr⟩ := he
  obtain ⟨X₀, e₀, hX₀, hL₀, hr₀⟩ := hSpec Γ K K' N n ρ X e hX hL hr
  have hd : ∀ g, Deg n (ρ g : Mat K N) := hDeg Γ K N n ρ hρ S hS fun s hs =>
    ⟨P s, (hP s hs).1.ne_zero, (hP s hs).2.le, hk s hs⟩
  obtain ⟨p, hG⟩ := hStruct Γ K N n ρ X₀ e₀ hss hd hX₀ hL₀ hr₀
  have key := hKey Γ K N n ρ e₀ p hd hL₀ hG
  obtain ⟨hsys, -, hC, -, hN, hK, -⟩ := hG
  obtain ⟨R, hR, hRC, hRN, hRK⟩ := hBig Γ K N n ρ (env ρ) p hC hN hK
    fun g => (key ⊤ inferInstance inferInstance g).2
  obtain ⟨E, hE⟩ := hMU K N n R p hsys hRC (hSemis Γ K N ρ R hss hRN hRK)
  obtain ⟨r, A, B, hsub⟩ := hRep Γ K N n ρ R p E hsys hE hR
  obtain ⟨h1, h2, h3, h4⟩ := hSub Γ K N n ρ r A B hsub hss
  have hc : Continuous (fun g => (r g : Mat K n)) := by
    simp only [h3]
    exact (continuous_const.matrix_mul hρ).matrix_mul continuous_const
  obtain ⟨ho, hD⟩ := hFD Γ K n r hc fun U hU hf g => by
    obtain ⟨m, hm, hE⟩ := (key U hU hf g).1
    exact hDA Γ K N n ρ r A B hsub U g m hm hE
  have hkr : ∀ s ∈ S, Polynomial.aeval (r s : Mat K n) (P s) = 0 := fun s hs => (h4 s _).1 (hk s hs)
  have hsep : ∀ s ∈ S, (r s : Mat K n).charpoly.Separable → (r s : Mat K n).charpoly = P s := fun s hs =>
    (hFP K n _ _ (hP s hs).1 (hP s hs).2 (hkr s hs)).1
  have hdet : ∀ g, (r g : Mat K n).det = ((ψ g : Kˣ) : K) := by
    have := Continuous.ext_on (hS.inter_of_isOpen_right hD ho) hc.matrix_det hψ (fun s hs => by
      show (r s : Mat K n).det = _
      rw [hψS s hs.1, Matrix.det_eq_sign_charpoly_coeff, hsep s hs.1 hs.2, Fintype.card_fin])
    exact fun g => congrFun this g
  refine ⟨r, hc, h1, ⟨A, h2, hsub.2.1⟩, fun g => (h4 g _).2 (Matrix.aeval_self_charpoly _), hkr, hdet, ho, hD,
    hsep, fun s hs hg => (hFP K n _ _ (hP s hs).1 (hP s hs).2 (hkr s hs)).2 hg ?_, hEm Γ K N n ρ r A B hsub hss h1⟩
  rw [hdet, hψS s hs]

end LateralTheory.DivDb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.DivPlus =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.Imports =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.Imports", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\npublic import Development.EtaleCohomology.DivisorCycles.DivPlus\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.AutomorphicGaloisHodgeTate.Div
namespace LateralTheory.DivDb

theorem goal_of (hSpec : SpecLie) (hDeg : DegAll) (hStruct : Struct) (hKey : Key) (hBig : BigCorner)
    (hSemis : Semis) (hMU : MatrixUnits₂) (hRep : Rep) (hDA : DenseAlg) (hSub : FinSub) (hFD : FinDense)
    (hFP : FinPoly) (hEm : FinEmbed) : DivWCoreLac := by
  intro Γ _ _ _ _ K K' _ _ _ _ _ _ _ _ _ N n ρ hρ hss S hS P hP hk X hX he ψ hψ hψS
  obtain ⟨r, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, k, T, T', hT, -, hs⟩ :=
    plus_of hSpec hDeg hStruct hKey hBig hSemis hMU hRep hDA hSub hFD hFP hEm
      Γ K K' N n ρ hρ hss S hS P hP hk X hX he ψ hψ hψS
  refine ⟨r, h1, h2, h3, ⟨k, Matrix.of fun q a => T q.2 q.1 a, ?_, fun g => ?_⟩, h4, h5, h6, h7, h8, h9, h10⟩
  · have hC : (Matrix.of fun a (q : Fin n × Fin k) => T' q.2 a q.1) *
        (Matrix.of fun (q : Fin n × Fin k) a => T q.2 q.1 a) = 1 := by
      rw [← hs]; ext a b
      simp only [Matrix.mul_apply, Matrix.of_apply, Matrix.sum_apply, Fintype.sum_prod_type_right]
    refine le_antisymm ((Matrix.rank_le_card_width _).trans (by simp)) ?_
    have := Matrix.rank_mul_le_right (Matrix.of fun a (q : Fin n × Fin k) => T' q.2 a q.1)
      (Matrix.of fun (q : Fin n × Fin k) a => T q.2 q.1 a)
    rw [hC] at this
    simpa using this
  · ext ⟨i, j⟩ a
    have := congrFun (congrFun (hT j g) i) a
    simp only [Matrix.mul_apply] at this
    simp [Matrix.mul_apply, Fintype.sum_prod_type, Matrix.one_apply, this]

end LateralTheory.DivDb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.Imports =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.GoalHolds =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.GoalHolds", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.CocharacterLieDivisors.DivWCoreLacUseType\npublic import Development.EtaleCohomology.DivisorCycles.FinBigCorner\npublic import Development.EtaleCohomology.DivisorCycles.FinDegAll\npublic import Development.EtaleCohomology.DivisorCycles.FinDenseAlg\npublic import Development.EtaleCohomology.DivisorCycles.FinFinDense\npublic import Development.EtaleCohomology.DivisorCycles.FinFinEmbed\npublic import Development.EtaleCohomology.DivisorCycles.FinFinPoly\npublic import Development.EtaleCohomology.DivisorCycles.FinFinSub\npublic import Development.EtaleCohomology.DivisorCycles.FinKey\npublic import Development.EtaleCohomology.DivisorCycles.FinMatUnits\npublic import Development.EtaleCohomology.DivisorCycles.FinRep\npublic import Development.EtaleCohomology.DivisorCycles.FinSemis\npublic import Development.EtaleCohomology.DivisorCycles.FinSpecLie\npublic import Development.EtaleCohomology.DivisorCycles.FinStruct\npublic import Development.EtaleCohomology.DivisorCycles.Imports\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.AutomorphicGaloisHodgeTate.Div
namespace LateralTheory.DivDb

theorem goal_holds : DivWCoreLac :=
  goal_of _root_.LateralTheory.Fin.SpecLie.etale_spectrum_lie_algebra_instance _root_.LateralTheory.Fin.DegAll.etale_rep_image_degree_bound_all_holds_assembled _root_.LateralTheory.Fin.Struct.etale_algebra_structure_theorem_of_components _root_.LateralTheory.Fin.Key.etale_divisibility_key_criterion_of_components _root_.LateralTheory.DivDb.BigCorner₂.BigCorner_of _root_.LateralTheory.DivDb.SemisPf.Semis_of _root_.LateralTheory.DivDb.MatrixUnitConstruction.MatUnits_of _root_.LateralTheory.DivDb.RepPf.Rep_of _root_.LateralTheory.Fin.DenseAlg.etale_rep_dense_algebraic_hull_holds_assembled _root_.LateralTheory.DivDb.FiniteSubrepresentation.FinSub_of _root_.LateralTheory.Fin.FinDense.etale_finite_image_dense_holds_assembled _root_.LateralTheory.DivDb.FinPolyPf.FinPoly_of _root_.LateralTheory.DivDb.FinEmbedPf.FinEmbed_of

end LateralTheory.DivDb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.GoalHolds =====
