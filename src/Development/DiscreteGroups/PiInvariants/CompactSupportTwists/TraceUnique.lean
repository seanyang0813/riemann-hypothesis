module

public import Mathlib.Basic.Complex.Basic
public import Mathlib.LinearAlgebra.Matrix.Trace
public import Mathlib.Algebra.Algebra.Subalgebra.Basic
public import Mathlib.Algebra.Algebra.Subalgebra.Lattice
public import Mathlib.Algebra.Central.Defs
public import Mathlib.LinearAlgebra.Dual.Defs
public import Mathlib.LinearAlgebra.Dual.Lemmas
public import Mathlib.LinearAlgebra.Trace
public import Mathlib.LinearAlgebra.Eigenspace.Triangularizable
public import Mathlib.LinearAlgebra.Eigenspace.Basic
import Mathlib.Algebra.Azumaya.Basic
import Mathlib.Algebra.Central.Matrix
import Mathlib.LinearAlgebra.Matrix.FiniteDimensional
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.TotallySplit
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.TraceUniqueMatrix, Development.DiscreteGroups.PiInvariants.CompactSupportTwists.TraceUnique

-- ===== clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.TraceUniqueMatrix =====
-- clump-header: {"m": "Development.DiscreteGroups.PiInvariants.CompactSupportTwists.TraceUniqueMatrix", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Trace\nimport Mathlib.Algebra.Azumaya.Basic\nimport Mathlib.Algebra.Central.Matrix\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Algebra.Subalgebra.Basic\npublic import Mathlib.Algebra.Algebra.Subalgebra.Lattice\npublic import Mathlib.Algebra.Central.Defs\npublic import Mathlib.LinearAlgebra.Dual.Defs\npublic import Mathlib.LinearAlgebra.Dual.Lemmas\n\n"}
section -- clump:auto
@[expose] public section

namespace DiscreteGroups.T1.Desc.TraceUniqueU3

open Matrix

theorem trace_unique_matrix {n : ℕ} (g : Matrix (Fin n) (Fin n) ℂ →ₗ[ℂ] ℂ)
    (hg : ∀ A B, g (A * B) = g (B * A)) :
    ∃ c : ℂ, ∀ A, g A = c * A.trace := by
  classical
  let Φ : Matrix (Fin n) (Fin n) ℂ →ₗ[ℂ] Module.Dual ℂ (Matrix (Fin n) (Fin n) ℂ) :=
    LinearMap.mk₂ ℂ (fun C A => (A * C).trace)
      (fun C C' A => by simp only [Matrix.mul_add, Matrix.trace_add])
      (fun c C A => by simp only [Matrix.mul_smul, Matrix.trace_smul, smul_eq_mul])
      (fun C A A' => by simp only [Matrix.add_mul, Matrix.trace_add])
      (fun c C A => by simp only [Matrix.smul_mul, Matrix.trace_smul, smul_eq_mul])
  have hΦ : ∀ C A, Φ C A = (A * C).trace := fun _ _ => rfl
  have hinj : Function.Injective Φ := by
    intro C C' h
    rw [Matrix.ext_iff_trace_mul_left]
    intro X
    have h1 := LinearMap.congr_fun h X
    rw [hΦ, hΦ] at h1
    exact h1
  have hsurj : Function.Surjective Φ :=
    (LinearMap.injective_iff_surjective_of_finrank_eq_finrank
      Subspace.dual_finrank_eq.symm).1 hinj
  obtain ⟨C, hC⟩ := hsurj g
  have hgC : ∀ A, g A = (A * C).trace := fun A => by rw [← hC, hΦ]
  have hcomm : ∀ B, B * C = C * B := by
    intro B
    rw [Matrix.ext_iff_trace_mul_left]
    intro A
    calc (A * (B * C)).trace = (A * B * C).trace := by rw [Matrix.mul_assoc]
      _ = g (A * B) := (hgC _).symm
      _ = g (B * A) := hg A B
      _ = (B * A * C).trace := hgC _
      _ = (A * C * B).trace := (Matrix.trace_mul_cycle A C B).symm
      _ = (A * (C * B)).trace := by rw [Matrix.mul_assoc]
  have hcen : C ∈ Subalgebra.center ℂ (Matrix (Fin n) (Fin n) ℂ) := by
    rw [Subalgebra.mem_center_iff]
    exact hcomm
  obtain ⟨c, hc⟩ := Algebra.mem_bot.1 (Algebra.IsCentral.out hcen)
  refine ⟨c, fun A => ?_⟩
  rw [hgC, ← hc, Algebra.algebraMap_eq_smul_one, Matrix.mul_smul, Matrix.mul_one,
    Matrix.trace_smul, smul_eq_mul]

end DiscreteGroups.T1.Desc.TraceUniqueU3
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.TraceUniqueMatrix =====

-- ===== clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.TraceUnique =====
-- clump-header: {"m": "Development.DiscreteGroups.PiInvariants.CompactSupportTwists.TraceUnique", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.Trace\npublic import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.TraceUniqueMatrix\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Eigenspace.Triangularizable\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Eigenspace.Basic\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.unusedVariables false
set_option linter.style.longLine false
set_option linter.unusedSimpArgs false
set_option linter.style.haveILetI false

noncomputable section

namespace DiscreteGroups.T1.Desc.Swap3
open DiscreteGroups.T1.Desc.TraceUniqueU3

section Schur

variable {Y : Type} [AddCommGroup Y] [Module ℂ Y] [FiniteDimensional ℂ Y]

theorem schur [Nontrivial Y] (S : Set (Module.End ℂ Y))
    (hirr : ∀ W : Submodule ℂ Y, (∀ g ∈ S, ∀ y ∈ W, g y ∈ W) → W = ⊥ ∨ W = ⊤)
    (z : Module.End ℂ Y) (hz : ∀ g ∈ S, Commute z g) : ∃ μ : ℂ, ∀ y, z y = μ • y := by
  obtain ⟨μ, hμ⟩ := Module.End.exists_eigenvalue z
  obtain ⟨v, hv⟩ := hμ.exists_hasEigenvector
  refine ⟨μ, ?_⟩
  let W : Submodule ℂ Y := LinearMap.ker (z - μ • LinearMap.id)
  have hmem : ∀ y, y ∈ W ↔ z y = μ • y := fun y => by
    simp only [W, LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply, LinearMap.id_apply, sub_eq_zero]
  have hW : ∀ g ∈ S, ∀ y ∈ W, g y ∈ W := by
    intro g hg y hy
    rw [hmem] at hy ⊢
    have h := LinearMap.congr_fun (hz g hg).eq y
    simp only [Module.End.mul_apply] at h
    rw [h, hy, map_smul]
  rcases hirr W hW with h | h
  · exact absurd ((Submodule.eq_bot_iff W).1 h v ((hmem v).2 hv.apply_eq_smul)) hv.2
  · intro y
    exact (hmem y).1 (h ▸ Submodule.mem_top)

theorem burnside [Nontrivial Y] {R : Type} [Ring R] [Algebra ℂ R] (φ : R →ₐ[ℂ] Module.End ℂ Y)
    (hirr : ∀ W : Submodule ℂ Y, (∀ r, ∀ y ∈ W, φ r y ∈ W) → W = ⊥ ∨ W = ⊤) :
    Function.Surjective φ := by
  classical
  letI : Module R Y := Module.compHom Y φ.toRingHom
  have hsmul : ∀ (r : R) (y : Y), r • y = φ r y := fun r y => rfl
  have hc : ∀ (c : ℂ) (y : Y), (algebraMap ℂ R c) • y = c • y := fun c y => by
    rw [hsmul, AlgHom.commutes, Module.algebraMap_end_apply]
  have hnt : Nontrivial (Submodule R Y) := by
    refine ⟨⟨⊥, ⊤, fun h => ?_⟩⟩
    obtain ⟨y, hy⟩ := exists_ne (0 : Y)
    have : y ∈ (⊥ : Submodule R Y) := h ▸ Submodule.mem_top
    exact hy ((Submodule.mem_bot R).1 this)
  have hsimple : IsSimpleModule R Y := by
    refine { exists_pair_ne := hnt.exists_pair_ne, eq_bot_or_eq_top := fun W => ?_ }
    let W' : Submodule ℂ Y :=
      { carrier := W
        add_mem' := W.add_mem
        zero_mem' := W.zero_mem
        smul_mem' := fun c y hy => by
          rw [← hc]
          exact W.smul_mem _ hy }
    rcases hirr W' (fun r y hy => by
        rw [← hsmul]
        exact W.smul_mem r hy) with h | h
    · left
      exact (Submodule.eq_bot_iff W).2 fun y hy => (Submodule.eq_bot_iff W').1 h y hy
    · right
      exact Submodule.eq_top_iff'.2 fun y => Submodule.eq_top_iff'.1 h y
  have hsc : ∀ ψ : Module.End R Y, ∃ μ : ℂ, ∀ y, ψ y = μ • y := fun ψ => by
    let ψc : Module.End ℂ Y :=
      { toFun := ψ
        map_add' := ψ.map_add
        map_smul' := fun c y => by
          rw [RingHom.id_apply, ← hc, ψ.map_smul, hc] }
    refine schur (Set.range φ) (fun W hW => hirr W fun r y hy => hW _ ⟨r, rfl⟩ y hy) ψc ?_
    rintro _ ⟨r, rfl⟩
    refine LinearMap.ext fun y => ?_
    show ψ (φ r y) = φ r (ψ y)
    rw [← hsmul, ψ.map_smul, hsmul]
  intro g
  let G : Module.End (Module.End R Y) Y :=
    { toFun := g
      map_add' := g.map_add
      map_smul' := fun ψ y => by
        obtain ⟨μ, hμ⟩ := hsc ψ
        simp only [Module.End.smul_def, RingHom.id_apply]
        rw [hμ, hμ, g.map_smul] }
  let b := Module.finBasis ℂ Y
  obtain ⟨r, hr⟩ := jacobson_density G (Finset.univ.image b)
  refine ⟨r, (Module.Basis.ext b fun i => ?_).symm⟩
  exact hr (b i) (Finset.mem_image_of_mem b (Finset.mem_univ i))

end Schur

theorem trace_unique {V : Type} [AddCommGroup V] [Module ℂ V] [FiniteDimensional ℂ V]
    (g : Module.End ℂ V →ₗ[ℂ] ℂ) (hg : ∀ a b, g (a * b) = g (b * a)) :
    ∃ c : ℂ, ∀ z, g z = c * LinearMap.trace ℂ V z := by
  let b := Module.finBasis ℂ V
  let e := LinearMap.toMatrixAlgEquiv b
  let g' : Matrix (Fin (Module.finrank ℂ V)) (Fin (Module.finrank ℂ V)) ℂ →ₗ[ℂ] ℂ :=
    g.comp e.symm.toLinearMap
  obtain ⟨c, hc⟩ := trace_unique_matrix g' fun A B => by
    simp only [g', LinearMap.comp_apply, AlgEquiv.toLinearMap_apply, map_mul]
    exact hg _ _
  refine ⟨c, fun z => ?_⟩
  have := hc (e z)
  simp only [g', LinearMap.comp_apply, AlgEquiv.toLinearMap_apply, AlgEquiv.symm_apply_apply] at this
  rw [this, LinearMap.trace_eq_matrix_trace ℂ b]
  rfl

end DiscreteGroups.T1.Desc.Swap3

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.TraceUnique =====
