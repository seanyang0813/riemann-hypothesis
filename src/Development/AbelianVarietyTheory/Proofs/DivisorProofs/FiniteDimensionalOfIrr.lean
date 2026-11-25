module

public import Mathlib.Basic.Complex.Basic
public import Mathlib.LinearAlgebra.Dimension.Finrank
public import Mathlib.RingTheory.SimpleModule.Basic
public import Mathlib.LinearAlgebra.Dimension.Finite
public import Mathlib.LinearAlgebra.FiniteDimensional.Basic
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.BlockProductIsomorphism
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsCuspidalIffCompositions
public import Mathlib.RepresentationTheory.Maschke
public import Development.AbelianVarietyTheory.Definitions.Divisors.SplitDoublingNBlock
public import Mathlib.RepresentationTheory.Coinduced
public import Mathlib.RepresentationTheory.Character
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPermMatrixRepParabolicDoubleCoset
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Topology.Sheaves.Init
import Mathlib.RepresentationTheory.Irreducible
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.ImportsAlt
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Formalism.LocalToGlobal.Divisibility.DefGroup
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.Coalgebra.CoassocSimps
import Mathlib.LinearAlgebra.Matrix.Charpoly.Basic
import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.CharacterTheory.IsSimpleModuleOfFinrankEnd, Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockGLHomConjPermMatrixOfBlocksMatch, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspidalLeviDatumPermBlocksMatch, Development.AbelianVarietyTheory.Proofs.DivisorProofs.EquivOfNeZeroMapIsotypicSumOfCopies, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBlockDiagActEq, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInjectiveKernelCoindIntertwiningMap, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeviGeneratedCommutingBlockGLStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNeZeroCoindIntertwinerOfDoubleCoset, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNeZeroIntertwiningOfCommutingIsotypicFacto, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPermOfBlockSizeBijection, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteDimensionalOfIrr

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.CharacterTheory.IsSimpleModuleOfFinrankEnd =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.CharacterTheory.IsSimpleModuleOfFinrankEnd", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.Dimension.Finrank\npublic import Mathlib.RingTheory.SimpleModule.Basic\npublic import Mathlib.LinearAlgebra.Dimension.Finite\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.RepresentationTheory.Irreducible\nimport Development.AbelianVarietyTheory.Proofs.CharacterTheory.ImportsAlt\nimport Mathlib.LinearAlgebra.Matrix.Charpoly.Basic\nimport Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CuspCharCompare

open scoped MonoidAlgebra

section Group

variable {G : Type} [Group G]

theorem isSimpleModule_of_finrank_end {R M : Type} [Ring R] [Algebra ℂ R] [AddCommGroup M] [Module R M]
    [Module ℂ M] [IsScalarTower ℂ R M] [SMulCommClass R ℂ M] [IsSemisimpleModule R M]
    (h : Module.finrank ℂ (Module.End R M) = 1) : IsSimpleModule R M := by
  have hE : Nontrivial (Module.End R M) := Module.nontrivial_of_finrank_eq_succ h
  have hM : Nontrivial M := by
    by_contra hM
    rw [not_nontrivial_iff_subsingleton] at hM
    exact not_subsingleton (Module.End R M) inferInstance
  have : Nontrivial (Submodule R M) := (Submodule.nontrivial_iff R).2 hM
  refine { eq_bot_or_eq_top := fun U => ?_ }
  obtain ⟨U', hU⟩ := exists_isCompl U
  obtain ⟨c, hc⟩ := (finrank_eq_one_iff_of_nonzero' (1 : Module.End R M) one_ne_zero).1 h
    (U.subtype ∘ₗ U.projectionOnto U' hU)
  by_cases h0 : c = 0
  · left
    rw [Submodule.eq_bot_iff]
    intro x hx
    have := LinearMap.congr_fun hc x
    rw [h0, zero_smul] at this
    have h2 : (U.subtype ∘ₗ U.projectionOnto U' hU) x = x := by
      simpa using congrArg Subtype.val (Submodule.projectionOnto_apply_left hU ⟨x, hx⟩)
    rw [← h2, ← this]; rfl
  · right
    rw [Submodule.eq_top_iff']
    intro x
    have := LinearMap.congr_fun hc (c⁻¹ • x)
    have h2 : (c • (1 : Module.End R M)) (c⁻¹ • x) = x := by
      simp [smul_smul, h0]
    rw [← h2, this]
    exact Subtype.property _

variable [Fintype G] {V : Type} [AddCommGroup V] [Module ℂ V] [FiniteDimensional ℂ V]

end Group

variable {F : Type} [Field F] [Fintype F] [DecidableEq F]

end GlobalTheory.CuspCharCompare
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.CharacterTheory.IsSimpleModuleOfFinrankEnd =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockGLHomConjPermMatrixOfBlocksMatch =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockGLHomConjPermMatrixOfBlocksMatch", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.BlockProductIsomorphism\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsCuspidalIffCompositions\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.L2.DIV GlobalTheory.FinGL GlobalTheory.Parabolic GlobalTheory.IndefiniteRowSideFullHecke.BlockProductIsomorphism

namespace GlobalTheory.Proof.BlockConj

theorem range_blockEnum {r d : ℕ} (b : Fin r → ℕ) (c : ℕ) (h : (block b c).card = d) (k : Fin r) :
    k ∈ Set.range (blockEnum b c h) ↔ b k = c := by
  have h1 : Set.range (blockEnum b c h) = (block b c : Set (Fin r)) :=
    Finset.range_orderEmbOfFin (block b c) h
  rw [h1]
  simp [block]

theorem blockHom_conj_permGL (F : Type) [Field F] (r : ℕ) (b b' : Fin r → ℕ) (w : Equiv.Perm (Fin r))
    (hw : ∀ i j : Fin r, b i = b j ↔ b' (w i) = b' (w j)) (i : Fin r) :
    (block b (b i)).card = (block b' (b' (w i))).card ∧
    ∀ (d : ℕ) (h : (block b (b i)).card = d) (h' : (block b' (b' (w i))).card = d),
      ∃ π : GL (Fin d) F, ∀ g : GL (Fin d) F,
        (blockHom F b' (b' (w i)) h' (π * g * π⁻¹) : GL (Fin r) F) * permGL F w =
          permGL F w * (blockHom F b (b i) h g : GL (Fin r) F) := by
  refine ⟨?_, fun d h h' => ?_⟩
  · refine Finset.card_equiv w fun k => ?_
    simp [block, hw k i]
  · set e := blockEnum b (b i) h with he
    set e' := blockEnum b' (b' (w i)) h' with he'
    have hr : ∀ k, k ∈ Set.range e ↔ w k ∈ Set.range e' := fun k => by
      rw [he, he', range_blockEnum, range_blockEnum, hw k i]
    have hex : ∀ a, ∃ a', e' a' = w (e a) := fun a => (hr (e a)).1 ⟨a, rfl⟩
    choose p hp using hex
    have hinj : Function.Injective p := fun a a' haa => by
      apply e.injective
      apply w.injective
      rw [← hp, ← hp, haa]
    let π₀ : Equiv.Perm (Fin d) := Equiv.ofBijective p (Finite.injective_iff_bijective.1 hinj)
    have hπ : ∀ a, e' (π₀ a) = w (e a) := hp
    refine ⟨permGL F π₀, fun g => ?_⟩
    refine eq_mul_inv_iff_mul_eq.1 ?_
    ext k l
    obtain ⟨k, rfl⟩ := w.surjective k
    obtain ⟨l, rfl⟩ := w.surjective l
    rw [conj_permGL_apply]
    show extendMat e' ((permGL F π₀ * g * (permGL F π₀)⁻¹ : GL (Fin d) F) : Matrix (Fin d) (Fin d) F) (w k) (w l)
      = extendMat e (g : Matrix (Fin d) (Fin d) F) k l
    by_cases hkl : k ∈ Set.range e ∧ l ∈ Set.range e
    · obtain ⟨⟨a, rfl⟩, ⟨a', rfl⟩⟩ := hkl
      rw [← hπ, ← hπ, extendMat_in, extendMat_in, conj_permGL_apply]
    · rw [not_and_or] at hkl
      rw [extendMat_out _ _ _ _ hkl, extendMat_out _ _ _ _ (by rwa [← hr, ← hr])]
      simp [Matrix.one_apply]

end GlobalTheory.Proof.BlockConj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockGLHomConjPermMatrixOfBlocksMatch =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspidalLeviDatumPermBlocksMatch =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspidalLeviDatumPermBlocksMatch", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsCuspidalIffCompositions\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.BlockProductIsomorphism\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.L2.DIV GlobalTheory.FinGL GlobalTheory.Parabolic GlobalTheory.IndefiniteRowSideFullHecke.BlockProductIsomorphism

namespace GlobalTheory.FinGL.BlockMatch

variable {F : Type} [Field F] {r : ℕ} {V W : Type} [AddCommGroup V] [Module ℂ V] [AddCommGroup W] [Module ℂ W]

theorem eq_zero_of_invariant [Finite F] {b : Fin r → ℕ} {σ : Representation ℂ (blockTri (κ := F) b) V}
    (hσ : IsCuspDatum b σ) (S : Finset (Fin r)) (hS : ∃ i j, b i = b j ∧ i ∈ S ∧ j ∉ S) (T : V →ₗ[ℂ] W)
    (hT : ∀ u : blockTri (κ := F) b, (∀ i j, ((u : GL (Fin r) F) : Matrix (Fin r) (Fin r) F) i j ≠
      (1 : Matrix (Fin r) (Fin r) F) i j → b i = b j ∧ i ∈ S ∧ j ∉ S) → T ∘ₗ σ u = T) : T = 0 := by
  classical
  let c : Fin r → ℕ := fun k => if k ∈ S then 0 else 1
  let U : Subgroup (blockTri (κ := F) b) :=
    (levi F b ⊓ GlobalTheory.FiniteGL.unipRadical F c).subgroupOf (blockTri b)
  have hU : ∀ u : blockTri (κ := F) b, u ∈ U ↔ ∀ i j, ((u : GL (Fin r) F) : Matrix (Fin r) (Fin r) F) i j ≠
      (1 : Matrix (Fin r) (Fin r) F) i j → b i = b j ∧ i ∈ S ∧ j ∉ S := by
    intro u
    simp only [U, Subgroup.mem_subgroupOf, Subgroup.mem_inf, mem_levi, GlobalTheory.FiniteGL.mem_unipRadical,
      Matrix.sub_apply, sub_eq_zero]
    constructor
    · rintro ⟨h1, h2⟩ i j hne
      refine ⟨?_, ?_⟩
      · by_contra h
        exact hne (by rw [h1 i j h, Matrix.one_apply_ne (fun e => h (congrArg b e))])
      · by_contra h
        refine hne (h2 i j ?_)
        by_cases hi : i ∈ S <;> by_cases hj : j ∈ S <;> simp_all [c]
    · intro h
      refine ⟨fun i j hij => ?_, fun i j hij => ?_⟩
      · by_contra h0
        exact hij (h i j (by rwa [Matrix.one_apply_ne (fun e => hij (congrArg b e))])).1
      · by_contra h0
        obtain ⟨-, hi, hj⟩ := h i j h0
        simp [c, hi, hj] at hij
  letI := Fintype.ofFinite U
  have hc : (Fintype.card U : ℂ) ≠ 0 := Nat.cast_ne_zero.2 Fintype.card_ne_zero
  ext v
  have h0 : ∑ u : U, σ u v = 0 := by
    refine hσ.cusp S hS _ fun n hn => ?_

    rw [map_sum]
    exact Fintype.sum_equiv (Equiv.mulLeft (⟨n, (hU n).2 hn⟩ : U)) _ _ fun u => by simp
  have h1 := congrArg T h0
  have h2 : ∀ u : U, T (σ u v) = T v := fun u => LinearMap.congr_fun (hT u ((hU u).1 u.2)) v

  rw [map_sum, map_zero, Finset.sum_congr rfl fun u _ => h2 u, Finset.sum_const, Finset.card_univ,
  ← Nat.cast_smul_eq_nsmul ℂ] at h1
  exact (smul_eq_zero.1 h1).resolve_left hc

theorem mem_blockTri_of_ne {b : Fin r → ℕ} {g : GL (Fin r) F}
    (h : ∀ i j, (g : Matrix (Fin r) (Fin r) F) i j ≠ (1 : Matrix (Fin r) (Fin r) F) i j → b i < b j) :
    g ∈ blockTri (κ := F) b := by
  refine mem_blockTri.2 fun i j hij => ?_
  by_contra h0
  have := h i j (by rwa [Matrix.one_apply_ne (fun e => by rw [e] at hij; exact lt_irrefl _ hij)])
  omega

theorem blocks_match : ∀ (F : Type) [Field F] [Finite F] (r : ℕ) (b b' : Fin r → ℕ) (V V' : Type) [AddCommGroup V] [Module ℂ V] [AddCommGroup V'] [Module ℂ V'] (σ : Representation ℂ (blockTri (κ := F) b) V) (σ' : Representation ℂ (blockTri (κ := F) b') V'), IsCuspDatum b σ → IsCuspDatum b' σ' → ∀ (w : Equiv.Perm (Fin r)) (T : V →ₗ[ℂ] V'), T ≠ 0 → (∀ (p : blockTri (κ := F) b) (p' : blockTri (κ := F) b'), (p' : GL (Fin r) F) * permGL F w = permGL F w * (p : GL (Fin r) F) → σ' p' ∘ₗ T = T ∘ₗ σ p) → ∀ i j : Fin r, b i = b j ↔ b' (w i) = b' (w j) := by
  intro F _ _ r b b' V V' _ _ _ _ σ σ' hσ hσ' w T hT hint
  have hone : ∀ k l : Fin r, (1 : Matrix (Fin r) (Fin r) F) (w k) (w l) = (1 : Matrix (Fin r) (Fin r) F) k l := by
    intro k l
    simp [Matrix.one_apply]
  have A : ∀ i j, b i = b j → ¬ b' (w i) < b' (w j) := by
    intro i j hij hlt
    refine hT (eq_zero_of_invariant hσ (Finset.univ.filter fun k => b' (w k) ≤ b' (w i))
      ⟨i, j, hij, by simp, by simpa using hlt⟩ T fun u hu => ?_)
    have key : ∀ k l, ((permGL F w * u * (permGL F w)⁻¹ : GL (Fin r) F) : Matrix (Fin r) (Fin r) F) k l ≠
        (1 : Matrix (Fin r) (Fin r) F) k l → b' k < b' l := by
      intro k l
      obtain ⟨k, rfl⟩ := w.surjective k
      obtain ⟨l, rfl⟩ := w.surjective l
      rw [conj_permGL_apply, hone]
      intro h
      obtain ⟨-, h1, h2⟩ := hu k l h
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at h1 h2
      omega
    have h1 := hint u ⟨_, mem_blockTri_of_ne key⟩ (by simp)
    rw [hσ'.infl ⟨_, mem_blockTri_of_ne key⟩ fun k l hkl => by
      by_contra h0
      have := key k l h0
      omega] at h1
    exact h1.symm
  have B : ∀ i j, b' (w i) = b' (w j) → ¬ b i < b j := by
    intro i j hij hlt
    apply hT
    ext v
    refine hσ'.cusp (Finset.univ.filter fun k => b (w.symm k) ≤ b i)
      ⟨w i, w j, hij, by simp, by simpa using hlt⟩ (T v) fun u hu => ?_
    have key : ∀ k l, (((permGL F w)⁻¹ * u * permGL F w : GL (Fin r) F) : Matrix (Fin r) (Fin r) F) k l ≠
        (1 : Matrix (Fin r) (Fin r) F) k l → b k < b l := by
      intro k l
      rw [← conj_permGL_apply w, ← hone]
      intro h
      obtain ⟨-, h1, h2⟩ := hu (w k) (w l) (by simpa [mul_assoc] using h)
      simp only [Finset.mem_filter, Finset.mem_univ, true_and, Equiv.symm_apply_apply] at h1 h2
      omega
    have h1 := hint ⟨_, mem_blockTri_of_ne key⟩ u (by simp [mul_assoc])
    rw [hσ.infl ⟨_, mem_blockTri_of_ne key⟩ fun k l hkl => by
      by_contra h0
      have := key k l h0
      omega] at h1
    exact LinearMap.congr_fun h1 v
  intro i j
  constructor
  · intro h
    have := A i j h
    have := A j i h.symm
    omega
  · intro h
    have := B i j h
    have := B j i h.symm
    omega

end GlobalTheory.FinGL.BlockMatch
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspidalLeviDatumPermBlocksMatch =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EquivOfNeZeroMapIsotypicSumOfCopies =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EquivOfNeZeroMapIsotypicSumOfCopies", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.BlockProductIsomorphism\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RepresentationTheory.Maschke\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsCuspidalIffCompositions\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.L2.DIV GlobalTheory.FinGL GlobalTheory.Parabolic GlobalTheory.IndefiniteRowSideFullHecke.BlockProductIsomorphism

namespace GlobalTheory.IsotypicMap

open Representation

variable {H V V' W : Type} [Group H] [AddCommGroup V] [Module ℂ V] [AddCommGroup V'] [Module ℂ V']
  [AddCommGroup W] [Module ℂ W]

theorem exists_comp_ne_zero {τ : Representation ℂ H V} {τ' : Representation ℂ H V'} {ρ : Representation ℂ H W}
    (h : IsIsotypicOf τ ρ) (T : IntertwiningMap τ τ') (hT : T ≠ 0) :
    ∃ f : IntertwiningMap ρ τ, T.comp f ≠ 0 := by
  by_contra hc
  push Not at hc
  apply hT
  apply IntertwiningMap.ext
  rw [IntertwiningMap.zero_toLinearMap, ← LinearMap.ker_eq_top, ← top_le_iff, ← (show _ = _ from h)]
  refine iSup_le fun f => ?_
  rintro _ ⟨w, rfl⟩
  exact congrArg (fun g : IntertwiningMap ρ τ' => g w) (hc f)

theorem exists_leftInverse [Finite H] {τ : Representation ℂ H V} {ρ : Representation ℂ H W}
    (f : IntertwiningMap ρ τ) (hf : Function.Injective f) :
    ∃ s : IntertwiningMap τ ρ, ∀ w, s (f w) = w := by
  have : NeZero (Nat.card H : ℂ) := ⟨Nat.cast_ne_zero.2 Nat.card_pos.ne'⟩
  obtain ⟨g, hg⟩ := MonoidAlgebra.exists_leftInverse_of_injective
    (IntertwiningMap.equivLinearMapAsModule ρ τ f) (LinearMap.ker_eq_bot.2 hf)
  exact ⟨(IntertwiningMap.equivLinearMapAsModule τ ρ).symm g, fun w => LinearMap.congr_fun hg w⟩

theorem equiv_of_isotypic_map : ∀ (H : Type) [Group H] [Finite H] (V V' W W' : Type) [AddCommGroup V] [Module ℂ V] [AddCommGroup V'] [Module ℂ V'] [AddCommGroup W] [Module ℂ W] [AddCommGroup W'] [Module ℂ W'] (τ : Representation ℂ H V) (τ' : Representation ℂ H V') (ρ : Representation ℂ H W) (ρ' : Representation ℂ H W'), ρ.IsIrreducible → ρ'.IsIrreducible → IsIsotypicOf τ ρ → IsIsotypicOf τ' ρ' → ∀ T : Representation.IntertwiningMap τ τ', T ≠ 0 → Nonempty (Representation.Equiv ρ ρ') := by
  intro H _ _ V V' W W' _ _ _ _ _ _ _ _ τ τ' ρ ρ' hρ hρ' h h' T hT
  obtain ⟨f, hf⟩ := exists_comp_ne_zero h T hT
  have hi := (Representation.IsIrreducible.injective_or_eq_zero (T.comp f)).resolve_right hf
  obtain ⟨s, hs⟩ := exists_leftInverse (T.comp f) hi
  have hs0 : s ≠ 0 := by
    rintro rfl
    apply hf
    apply IntertwiningMap.ext
    ext w
    have hw : w = 0 := (hs w).symm
    subst hw
    simp
  obtain ⟨f', hf'⟩ := exists_comp_ne_zero h' s hs0
  have hb := (Representation.IsIrreducible.bijective_or_eq_zero (s.comp f')).resolve_right hf'
  exact ⟨(IntertwiningMap.ofBijective _ hb).symm⟩

end GlobalTheory.IsotypicMap
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EquivOfNeZeroMapIsotypicSumOfCopies =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBlockDiagActEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBlockDiagActEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SplitDoublingNBlock\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsCuspidalIffCompositions\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.FinGL Formalism.L2.DIV Module

namespace GlobalTheory.FinGL

theorem IsCuspDatum.exists_blockDiag_act_eq (F : Type) [Field F] (r : ℕ) (V : Type) [AddCommGroup V] [Module ℂ V]
    (b : Fin r → ℕ) (σ : Representation ℂ (blockTri (κ := F) b) V) (hσ : IsCuspDatum b σ)
    (p : blockTri (κ := F) b) :
    ∃ m : blockTri (κ := F) b, σ m = σ p ∧ ∀ i k : Fin r, ((m : GL (Fin r) F) : Matrix (Fin r) (Fin r) F) i k =
      if b i = b k then ((p : GL (Fin r) F) : Matrix (Fin r) (Fin r) F) i k else 0 := by
  refine ⟨Subgroup.inclusion (GlobalTheory.Parabolic.levi_le_blockTri b) (GlobalTheory.Parabolic.leviProj b p), ?_,
    fun i k => GlobalTheory.Parabolic.leviProj_apply b p i k⟩
  set m := Subgroup.inclusion (GlobalTheory.Parabolic.levi_le_blockTri b) (GlobalTheory.Parabolic.leviProj b p) with hm
  have h1 : GlobalTheory.Parabolic.leviProj b (m⁻¹ * p) = 1 := by
    rw [map_mul, map_inv, hm, GlobalTheory.Parabolic.leviProj_inclusion, inv_mul_cancel]
  have h2 : σ (m⁻¹ * p) = 1 := by
    refine hσ.infl _ fun i j hij => ?_
    have e := GlobalTheory.Parabolic.leviProj_apply b (m⁻¹ * p) i j
    rw [h1, if_pos hij] at e
    rw [← e]
    simp
  calc σ m = σ m * σ (m⁻¹ * p) := by rw [h2, mul_one]
    _ = σ p := by rw [← map_mul, mul_inv_cancel_left]

end GlobalTheory.FinGL
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBlockDiagActEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInjectiveKernelCoindIntertwiningMap =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInjectiveKernelCoindIntertwiningMap", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.RepresentationTheory.Coinduced\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.BlockProductIsomorphism\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SplitDoublingNBlock\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsCuspidalIffCompositions\nimport Formalism.LocalToGlobal.Divisibility.DefGroup\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.L2.DIV GlobalTheory.FinGL GlobalTheory.Parabolic GlobalTheory.IndefiniteRowSideFullHecke.BlockProductIsomorphism

namespace GlobalTheory.CoindKernel

variable {G : Type} [Group G] (P : Subgroup G) {V : Type} [AddCommGroup V] [Module ℂ V]
  (σ : Representation ℂ P V)


open Classical in
noncomputable def delta : V →ₗ[ℂ] Representation.coindV P.subtype σ where
  toFun v := ⟨fun x => if h : x ∈ P then σ ⟨x, h⟩ v else 0, by
    intro p g
    by_cases hg : g ∈ P
    · have h1 : P.subtype p * g ∈ P := P.mul_mem p.2 hg
      simp only [dif_pos hg, dif_pos h1]
      have : (⟨P.subtype p * g, h1⟩ : P) = p * ⟨g, hg⟩ := rfl
      rw [this, map_mul]; rfl
    · have h1 : P.subtype p * g ∉ P := fun h => hg ((P.mul_mem_cancel_left p.2).1 h)
      simp only [dif_neg hg, dif_neg h1, map_zero]⟩
  map_add' v w := by
    ext x
    by_cases hx : x ∈ P <;> simp [hx]
  map_smul' c v := by
    ext x
    by_cases hx : x ∈ P <;> simp [hx]

open Classical in
theorem delta_apply (v : V) (x : G) :
    (delta P σ v).1 x = if h : x ∈ P then σ ⟨x, h⟩ v else 0 := rfl

theorem coind_val (g : G) (f : Representation.coindV P.subtype σ) (x : G) :
    (Representation.coind P.subtype σ g f).1 x = f.1 (x * g) := rfl

theorem coind_delta (p : P) (v : V) :
    Representation.coind P.subtype σ (p : G) (delta P σ v) = delta P σ (σ p v) := by
  ext x
  rw [coind_val, delta_apply, delta_apply]
  by_cases hx : x ∈ P
  · have h1 : x * (p : G) ∈ P := P.mul_mem hx p.2
    rw [dif_pos hx, dif_pos h1]
    have : (⟨x * (p : G), h1⟩ : P) = ⟨x, hx⟩ * p := rfl
    rw [this, map_mul]; rfl
  · have h1 : x * (p : G) ∉ P := fun h => hx ((P.mul_mem_cancel_right p.2).1 h)
    rw [dif_neg hx, dif_neg h1]

open Classical in
theorem sum_delta [Fintype G] (f : Representation.coindV P.subtype σ) :
    ∑ g : G, Representation.coind P.subtype σ g⁻¹ (delta P σ (f.1 g)) =
      ((Finset.univ.filter (· ∈ P)).card : ℂ) • f := by
  ext x
  have h : ∀ g : G, (Representation.coind P.subtype σ g⁻¹ (delta P σ (f.1 g))).1 x
      = if x * g⁻¹ ∈ P then f.1 x else 0 := by
    intro g
    rw [coind_val, delta_apply]
    by_cases hx : x * g⁻¹ ∈ P
    · rw [dif_pos hx, if_pos hx]
      have := f.2 ⟨x * g⁻¹, hx⟩ g
      rw [← this]
      simp
    · rw [dif_neg hx, if_neg hx]
  rw [Submodule.coe_sum, Finset.sum_apply, Finset.sum_congr rfl fun g _ => h g]
  have e := Equiv.sum_comp ((Equiv.inv G).trans (Equiv.mulLeft x))
    (fun y : G => if y ∈ P then f.1 x else 0)
  simp only [Equiv.trans_apply, Equiv.inv_apply, Equiv.coe_mulLeft] at e
  rw [e, ← Finset.sum_filter, Finset.sum_const, Submodule.coe_smul, Pi.smul_apply,
    Nat.cast_smul_eq_nsmul]

variable (P' : Subgroup G) {V' : Type} [AddCommGroup V'] [Module ℂ V']
  (σ' : Representation ℂ P' V')

noncomputable def kernel :
    Representation.IntertwiningMap (Representation.coind P.subtype σ)
      (Representation.coind P'.subtype σ') →ₗ[ℂ] (G → V →ₗ[ℂ] V') where
  toFun Φ g := (LinearMap.proj g ∘ₗ (Representation.coindV P'.subtype σ').subtype) ∘ₗ
    Φ.toLinearMap ∘ₗ delta P σ
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

theorem kernel_apply (Φ : Representation.IntertwiningMap (Representation.coind P.subtype σ)
      (Representation.coind P'.subtype σ')) (g : G) (v : V) :
    kernel P σ P' σ' Φ g v = (Φ (delta P σ v)).1 g := rfl

theorem exists_kernel : ∀ (G : Type) [Group G] [Finite G] (P P' : Subgroup G) (V V' : Type) [AddCommGroup V] [Module ℂ V] [AddCommGroup V'] [Module ℂ V'] (σ : Representation ℂ P V) (σ' : Representation ℂ P' V'), ∃ K : Representation.IntertwiningMap (Representation.coind P.subtype σ) (Representation.coind P'.subtype σ') →ₗ[ℂ] (G → V →ₗ[ℂ] V'), Function.Injective K ∧ ∀ (Φ : Representation.IntertwiningMap (Representation.coind P.subtype σ) (Representation.coind P'.subtype σ')) (p' : P') (g : G) (p : P), K Φ ((p' : G) * g * (p : G)) = σ' p' ∘ₗ K Φ g ∘ₗ σ p := by
  intro G _ _ P P' V V' _ _ _ _ σ σ'
  classical
  haveI := Fintype.ofFinite G
  refine ⟨kernel P σ P' σ', ?_, ?_⟩
  · rw [injective_iff_map_eq_zero]
    intro Φ hΦ
    have h0 : ∀ v, Φ (delta P σ v) = 0 := by
      intro v
      ext g
      have := kernel_apply P σ P' σ' Φ g v
      rw [hΦ] at this
      exact this.symm
    apply Representation.IntertwiningMap.ext
    ext1 f
    have h1 := congrArg Φ (sum_delta P σ f)

    rw [map_sum, map_smul, Finset.sum_eq_zero (fun g _ => by
    rw [Φ.isIntertwining, h0, map_zero])] at h1
    have hc : ((Finset.univ.filter (fun x : G => x ∈ P)).card : ℂ) ≠ 0 := by
      rw [Nat.cast_ne_zero, Finset.card_ne_zero]
      exact ⟨1, by simp [P.one_mem]⟩
    exact (smul_eq_zero.1 h1.symm).resolve_left hc
  · intro Φ p' g p
    ext v
    rw [LinearMap.comp_apply, LinearMap.comp_apply, kernel_apply, kernel_apply, ← coind_delta,
      Φ.isIntertwining, coind_val, mul_assoc]
    exact (Φ (delta P σ v)).2 p' (g * p)

end GlobalTheory.CoindKernel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInjectiveKernelCoindIntertwiningMap =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeviGeneratedCommutingBlockGLStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeviGeneratedCommutingBlockGLStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.BlockProductIsomorphism\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsCuspidalIffCompositions\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.L2.DIV GlobalTheory.FinGL GlobalTheory.Parabolic GlobalTheory.IndefiniteRowSideFullHecke.BlockProductIsomorphism
open Matrix in

theorem _root_.GlobalTheory.T.exists_levi_generated_commuting_blockGL :
    ∀ (F : Type) [Field F] (r : ℕ) (b : Fin r → ℕ) (d : Set.range b → ℕ)
      (h : ∀ c : Set.range b, (block b c).card = d c),
      ∃ f : ∀ c : Set.range b, GL (Fin (d c)) F →* levi (k := F) b,
        (∀ (c : Set.range b) (g : GL (Fin (d c)) F),
          (f c g : GL (Fin r) F) = (blockHom F b c (h c) g : GL (Fin r) F)) ∧
        (⨆ c, (f c).range) = ⊤ ∧
        ∀ c c' : Set.range b, c ≠ c' → ∀ (x : GL (Fin (d c)) F) (y : GL (Fin (d c')) F),
          Commute (f c x) (f c' y) := by
  classical
  intro F _ r b d h
  have mem_enum (c : Set.range b) (i : Fin r) :
      i ∈ Set.range (blockEnum b c (h c)) ↔ b i = c := by
    have hrange : Set.range (blockEnum b c (h c)) = (block b c : Set (Fin r)) :=
      Finset.range_orderEmbOfFin _ (h c)
    rw [hrange]
    simp [block]
  let f (c : Set.range b) : GL (Fin (d c)) F →* levi (k := F) b :=
    ((blockTri (κ := F) b).subtype.comp (blockHom F b c (h c))).codRestrict _ fun g => by
      refine mem_levi.2 fun i j hij => ?_
      show extendMat (blockEnum b c (h c)) (g : Matrix (Fin (d c)) (Fin (d c)) F) i j = 0
      rw [extendMat_out, Matrix.one_apply_ne (fun e => hij (congrArg b e))]
      simp only [mem_enum]
      omega
  let res (c : Set.range b) : levi (k := F) b →* GL (Fin (d c)) F :=
    leviBlock b (blockEnum b c (h c)) (blockEnum b c (h c)).injective fun i j hij => by
      rw [mem_enum, ← hij, blockEnum_mem b c (h c)]
  have f_apply (c : Set.range b) (g : GL (Fin (d c)) F) :
      ((f c g : GL (Fin r) F) : Matrix (Fin r) (Fin r) F) =
        extendMat (blockEnum b c (h c)) (g : Matrix (Fin (d c)) (Fin (d c)) F) := rfl
  have res_apply (c : Set.range b) (m : levi (k := F) b) (a a' : Fin (d c)) :
      (res c m : Matrix (Fin (d c)) (Fin (d c)) F) a a' =
        ((m : GL (Fin r) F) : Matrix (Fin r) (Fin r) F) (blockEnum b c (h c) a)
          (blockEnum b c (h c) a') := rfl
  have res_f (c : Set.range b) (g : GL (Fin (d c)) F) : res c (f c g) = g := by
    refine Units.ext (Matrix.ext fun a a' => ?_)
    rw [res_apply, f_apply, extendMat_in]
  have res_f_ne (c c' : Set.range b) (hc : c' ≠ c) (g : GL (Fin (d c)) F) :
      res c' (f c g) = 1 := by
    refine Units.ext (Matrix.ext fun a a' => ?_)
    rw [res_apply, f_apply, extendMat_out]
    · simp [Matrix.one_apply]
    · left
      rw [mem_enum, blockEnum_mem b c' (h c')]
      exact fun e => hc (Subtype.ext e)
  refine ⟨f, fun _ _ => rfl, ?_, ?_⟩
  · have generated : ∀ s : Finset (Set.range b), ∀ m : levi (k := F) b,
        (∀ c : Set.range b, c ∉ s → res c m = 1) → m ∈ ⨆ c : Set.range b, (f c).range := by
      intro s
      induction s using Finset.induction_on with
      | empty =>
        intro m hm
        have hm_one : m = 1 := by
          refine Subtype.ext (Units.ext (Matrix.ext fun i j => ?_))
          by_cases hij : b i = b j
          · let c : Set.range b := ⟨b i, i, rfl⟩
            obtain ⟨a, ha⟩ := (mem_enum c i).2 rfl
            obtain ⟨a', ha'⟩ := (mem_enum c j).2 hij.symm
            have hentry := res_apply c m a a'
            rw [hm c (Finset.notMem_empty _), ha, ha'] at hentry
            rw [← hentry]
            have heq : i = j ↔ a = a' := by
              rw [← (blockEnum b c (h c)).injective.eq_iff, ha, ha']
            simp [Matrix.one_apply, heq]
          · rw [m.2 i j hij]
            simp [Matrix.one_apply_ne (fun e => hij (congrArg b e))]
        rw [hm_one]
        exact Subgroup.one_mem _
      | insert c s _ ih =>
        intro m hm
        let g := f c (res c m)
        have hg : m = m * g⁻¹ * g := by simp
        rw [hg]
        refine Subgroup.mul_mem _ (ih _ fun c' hc' => ?_) (Subgroup.mem_iSup_of_mem c ⟨_, rfl⟩)
        change res c' (m * (f c (res c m))⁻¹) = 1
        by_cases hcc : c' = c
        · subst c'
          rw [map_mul, map_inv, res_f, mul_inv_cancel]
        · rw [map_mul, map_inv, res_f_ne c c' hcc, inv_one, mul_one]
          exact hm c' (by simp [hcc, hc'])
    let := Fintype.ofFinite (Set.range b)
    exact eq_top_iff.2 fun m _ => generated Finset.univ m fun c hc => absurd (Finset.mem_univ c) hc
  · intro c c' hc x y
    refine Subtype.ext (Units.ext ?_)
    change ((f c x : GL (Fin r) F) : Matrix (Fin r) (Fin r) F) *
        ((f c' y : GL (Fin r) F) : Matrix (Fin r) (Fin r) F) =
      ((f c' y : GL (Fin r) F) : Matrix (Fin r) (Fin r) F) *
        ((f c x : GL (Fin r) F) : Matrix (Fin r) (Fin r) F)
    rw [f_apply, f_apply]
    let e := blockEnum b c (h c)
    let e' := blockEnum b c' (h c')
    change extendMat e (x : Matrix (Fin (d c)) (Fin (d c)) F) *
        extendMat e' (y : Matrix (Fin (d c')) (Fin (d c')) F) =
      extendMat e' (y : Matrix (Fin (d c')) (Fin (d c')) F) *
        extendMat e (x : Matrix (Fin (d c)) (Fin (d c)) F)
    have disjoint (a : Fin (d c)) (a' : Fin (d c')) : e a ≠ e' a' := by
      intro he
      apply hc
      apply Subtype.ext
      rw [← blockEnum_mem b c (h c) a, ← blockEnum_mem b c' (h c') a']
      exact congrArg b he
    have hxy : (incl F e)ᵀ * incl F e' = 0 := by
      ext a a'
      simp [incl, Matrix.mul_apply, Matrix.one_apply, disjoint a a']
    have hyx : (incl F e')ᵀ * incl F e = 0 := by
      ext a' a
      simp [incl, Matrix.mul_apply, Matrix.one_apply, (disjoint a a').symm]
    let X := incl F e * ((x : Matrix (Fin (d c)) (Fin (d c)) F) - 1) * (incl F e)ᵀ
    let Y := incl F e' * ((y : Matrix (Fin (d c')) (Fin (d c')) F) - 1) * (incl F e')ᵀ
    have hXY : X * Y = 0 := by
      dsimp [X, Y]
      simp only [Matrix.mul_assoc]
      rw [← Matrix.mul_assoc (incl F e)ᵀ, hxy]
      simp
    have hYX : Y * X = 0 := by
      dsimp [X, Y]
      simp only [Matrix.mul_assoc]
      rw [← Matrix.mul_assoc (incl F e')ᵀ, hyx]
      simp
    change (1 + X) * (1 + Y) = (1 + Y) * (1 + X)
    simp only [add_mul, mul_add, hXY, hYX, one_mul, mul_one]
    abel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeviGeneratedCommutingBlockGLStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNeZeroCoindIntertwinerOfDoubleCoset =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNeZeroCoindIntertwinerOfDoubleCoset", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.RepresentationTheory.Coinduced\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.BlockProductIsomorphism\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SplitDoublingNBlock\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsCuspidalIffCompositions\nimport Formalism.LocalToGlobal.Divisibility.DefGroup\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.L2.DIV GlobalTheory.FinGL GlobalTheory.Parabolic GlobalTheory.IndefiniteRowSideFullHecke.BlockProductIsomorphism

namespace GlobalTheory

theorem exists_ne_zero_intertwiningMap_coind_of_doubleCoset :
    ∀ (G : Type) [Group G] [Finite G] (P P' : Subgroup G) (V V' : Type) [AddCommGroup V] [Module ℂ V] [AddCommGroup V'] [Module ℂ V'] (σ : Representation ℂ P V) (σ' : Representation ℂ P' V') (x : G) (T : V →ₗ[ℂ] V'), T ≠ 0 → (∀ (p : P) (p' : P'), (p' : G) * x = x * (p : G) → σ' p' ∘ₗ T = T ∘ₗ σ p) → ∃ Φ : Representation.IntertwiningMap (Representation.coind P.subtype σ) (Representation.coind P'.subtype σ'), Φ ≠ 0 := by
  intro G _ _ P P' V V' _ _ _ _ σ σ' x T hT h
  classical
  haveI : Fintype P' := Fintype.ofFinite _
  let L : Representation.coindV P.subtype σ →ₗ[ℂ] Representation.coindV P'.subtype σ' :=
    { toFun := fun f => ⟨fun y => ∑ p' : P', σ' p' (T (f.1 (x⁻¹ * (p' : G)⁻¹ * y))), by
        intro q y
        beta_reduce

        rw [map_sum, ← Equiv.sum_comp (Equiv.mulLeft q)
        (fun p' : P' => σ' p' (T (f.1 (x⁻¹ * (p' : G)⁻¹ * (P'.subtype q * y)))))]
        refine Finset.sum_congr rfl fun p' _ => ?_
        simp [mul_assoc]⟩
      map_add' := fun f g => by
        ext y
        simp [Finset.sum_add_distrib]
      map_smul' := fun c f => by
        ext y
        simp [Finset.smul_sum] }
  have hL : ∀ f y, (L f).1 y = ∑ p' : P', σ' p' (T (f.1 (x⁻¹ * (p' : G)⁻¹ * y))) :=
    fun _ _ => rfl
  refine ⟨⟨L, fun g => ?_⟩, fun h0 => ?_⟩
  · ext f y
    change (L (Representation.coind P.subtype σ g f)).1 y = (L f).1 (y * g)
    rw [hL, hL]
    refine Finset.sum_congr rfl fun p' _ => ?_
    change σ' p' (T (f.1 (x⁻¹ * (p' : G)⁻¹ * y * g))) = _
    rw [mul_assoc _ y g]
  · obtain ⟨v, hv⟩ : ∃ v, T v ≠ 0 := by
      by_contra hc
      push Not at hc
      exact hT (LinearMap.ext hc)
    let δ : Representation.coindV P.subtype σ :=
      ⟨fun y => if hy : y ∈ P then σ ⟨y, hy⟩ v else 0, by
        intro q y
        by_cases hy : y ∈ P
        · have hqy : P.subtype q * y ∈ P := P.mul_mem q.2 hy
          simp only [dif_pos hy, dif_pos hqy]
          rw [← Module.End.mul_apply, ← map_mul]
          rfl
        · have hqy : P.subtype q * y ∉ P := fun hh => hy ((P.mul_mem_cancel_left q.2).1 hh)
          simp only [dif_neg hy, dif_neg hqy, map_zero]⟩
    have hL0 : L = 0 := congrArg Representation.IntertwiningMap.toLinearMap h0
    have h1 : (L δ).1 x = 0 := by rw [hL0]; rfl
    have h2 : ∀ p' : P', σ' p' (T (δ.1 (x⁻¹ * (p' : G)⁻¹ * x))) =
        if x⁻¹ * (p' : G)⁻¹ * x ∈ P then T v else 0 := by
      intro p'
      by_cases hp : x⁻¹ * (p' : G)⁻¹ * x ∈ P
      · have hδ : δ.1 (x⁻¹ * (p' : G)⁻¹ * x) = σ ⟨_, hp⟩ v := dif_pos hp
        have := LinearMap.congr_fun (h ⟨_, hp⟩ p'⁻¹ (by simp [mul_assoc])) v
        simp only [LinearMap.comp_apply] at this
        rw [hδ, if_pos hp, ← this, ← Module.End.mul_apply, ← map_mul]
        simp
      · have hδ : δ.1 (x⁻¹ * (p' : G)⁻¹ * x) = 0 := dif_neg hp
        rw [hδ, if_neg hp]
        simp
    rw [hL, Finset.sum_congr rfl fun p' _ => h2 p', ← Finset.sum_filter, Finset.sum_const,
      ← Nat.cast_smul_eq_nsmul ℂ, smul_eq_zero] at h1
    rcases h1 with h1 | h1
    · have : (1 : P') ∈ Finset.univ.filter fun p' : P' => x⁻¹ * (p' : G)⁻¹ * x ∈ P := by
        simp [P.one_mem]
      exact (Finset.card_pos.2 ⟨_, this⟩).ne' (Nat.cast_eq_zero.1 h1)
    · exact hv h1

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNeZeroCoindIntertwinerOfDoubleCoset =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNeZeroIntertwiningOfCommutingIsotypicFacto =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNeZeroIntertwiningOfCommutingIsotypicFacto", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.BlockProductIsomorphism\npublic import Mathlib.RepresentationTheory.Character\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsCuspidalIffCompositions\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.L2.DIV GlobalTheory.FinGL GlobalTheory.Parabolic GlobalTheory.IndefiniteRowSideFullHecke.BlockProductIsomorphism

namespace GlobalTheory.IsotypicFactors

open Representation Module

section One

variable {H W V : Type} [Group H] [AddCommGroup W] [Module ℂ W] [AddCommGroup V] [Module ℂ V]

theorem finiteDimensional_of_isotypic [FiniteDimensional ℂ V] [Nontrivial V]
    (τ : Representation ℂ H V) (ρ : Representation ℂ H W) (hρ : ρ.IsIrreducible)
    (h : IsIsotypicOf τ ρ) : FiniteDimensional ℂ W := by
  have : ∃ g : IntertwiningMap ρ τ, g ≠ 0 := by
    by_contra hc
    push Not at hc
    have : (⨆ f : IntertwiningMap ρ τ, LinearMap.range f.toLinearMap) = ⊥ := by
      refine iSup_eq_bot.2 fun f => ?_
      rw [hc f]
      exact LinearMap.range_eq_bot.2 rfl
    exact bot_ne_top (this.symm.trans h)
  obtain ⟨g, hg⟩ := this
  have hi := (IsIrreducible.injective_or_eq_zero g).resolve_right hg
  exact FiniteDimensional.of_injective g.toLinearMap hi

theorem classSum_scalar [Fintype H] [FiniteDimensional ℂ W] (ρ : Representation ℂ H W)
    (hρ : ρ.IsIrreducible) (h : H) : ∃ s : ℂ, ∀ w, (∑ k, ρ (k * h * k⁻¹)) w = s • w := by
  have hT : ∀ g v, (∑ k, ρ (k * h * k⁻¹)) (ρ g v) = ρ g ((∑ k, ρ (k * h * k⁻¹)) v) := by
    intro g v

    simp only [LinearMap.sum_apply, map_sum]
    rw [← Equiv.sum_comp (Equiv.mulLeft g)]
    refine Finset.sum_congr rfl fun s _ => ?_
    rw [← Module.End.mul_apply, ← map_mul, ← Module.End.mul_apply, ← map_mul]
    simp [mul_assoc]
  obtain ⟨c, hc⟩ := (IsIrreducible.algebraMap_intertwiningMap_bijective_of_isAlgClosed (ρ := ρ)).2
    ((∑ k, ρ (k * h * k⁻¹)).intertwiningMap_of_isIntertwiningMap ρ ρ hT)
  refine ⟨c, fun v => ?_⟩
  have := congrArg (fun f : IntertwiningMap ρ ρ => f v) hc
  simpa using this.symm

theorem classSum_of_isotypic [Fintype H] (τ : Representation ℂ H V) (ρ : Representation ℂ H W)
    (hi : IsIsotypicOf τ ρ) (h : H) (s : ℂ) (hs : ∀ w, (∑ k, ρ (k * h * k⁻¹)) w = s • w) :
    (∑ k, τ (k * h * k⁻¹)) = s • (1 : Module.End ℂ V) := by
  have : (⊤ : Submodule ℂ V) ≤ LinearMap.eqLocus (∑ k, τ (k * h * k⁻¹)) (s • (1 : Module.End ℂ V)) := by
    rw [← (show _ = ⊤ from hi)]
    refine iSup_le fun f => ?_
    rintro _ ⟨w, rfl⟩
    rw [LinearMap.mem_eqLocus]
    have e := congrArg f.toLinearMap (hs w)

    simp only [LinearMap.sum_apply, map_sum, map_smul] at e
    simp only [LinearMap.sum_apply, LinearMap.smul_apply, Module.End.one_apply, ← e]
    exact Finset.sum_congr rfl fun k _ => (f.isIntertwining _ _ _ w).symm
  exact LinearMap.ext fun v => this Submodule.mem_top

theorem card_mul_character {M : Type} [Group M] [Fintype H] (τ : Representation ℂ M V) (f : H →* M)
    (h : H) (s : ℂ) (hs : (∑ k, τ (f (k * h * k⁻¹))) = s • (1 : Module.End ℂ V)) (a : M)
    (ha : ∀ k, Commute (f k) a) :
    (Fintype.card H : ℂ) * τ.character (f h * a) = s * τ.character a := by
  have e := congrArg (fun T => LinearMap.trace ℂ V (T * τ a)) hs

  simp only [Finset.sum_mul, map_sum, smul_mul_assoc, one_mul, map_smul, smul_eq_mul] at e
  have e2 : ∀ k, LinearMap.trace ℂ V (τ (f (k * h * k⁻¹)) * τ a) = τ.character (f h * a) := by
    intro k
    rw [← map_mul, ← char_conj τ (f h * a) (f k)]
    have : f (k * h * k⁻¹) * a = f k * (f h * a) * (f k)⁻¹ := by
      rw [map_mul, map_mul, mul_assoc, (ha k⁻¹).eq, map_inv]
      simp only [mul_assoc]
    rw [this]
    rfl
  simp only [e2, Finset.sum_const, Finset.card_univ, nsmul_eq_mul] at e
  exact e

end One

theorem exists_ne_zero {G V W : Type} [Group G] [Finite G] [AddCommGroup V] [Module ℂ V]
    [AddCommGroup W] [Module ℂ W] [FiniteDimensional ℂ V] [FiniteDimensional ℂ W] [Nontrivial V]
    [Nontrivial W] (ρ : Representation ℂ G V) (σ : Representation ℂ G W)
    (h : ∀ g, (finrank ℂ W : ℂ) * ρ.character g = (finrank ℂ V : ℂ) * σ.character g) :
    ∃ f : IntertwiningMap ρ σ, f ≠ 0 := by
  have := Fintype.ofFinite G
  have : Invertible (Nat.card G : ℂ) :=
    invertibleOfNonzero (by exact_mod_cast Nat.card_pos.ne')
  have h1 := card_inv_mul_sum_char_mul_char_eq_finrank ρ ρ
  have h2 := card_inv_mul_sum_char_mul_char_eq_finrank ρ σ
  have h4 : (finrank ℂ W : ℂ) * finrank ℂ (IntertwiningMap ρ ρ)
      = (finrank ℂ V : ℂ) * finrank ℂ (IntertwiningMap ρ σ) := by
    rw [← h1, ← h2, mul_left_comm, mul_left_comm (finrank ℂ V : ℂ),
      Finset.mul_sum _ _ (finrank ℂ V : ℂ), Finset.mul_sum _ _ (finrank ℂ W : ℂ)]
    congr 1
    refine Finset.sum_congr rfl fun g _ => ?_
    rw [← mul_assoc, ← mul_assoc, h]
  have : Nontrivial (IntertwiningMap ρ ρ) := by
    obtain ⟨v, hv⟩ := exists_ne (0 : V)
    exact ⟨⟨IntertwiningMap.id ρ, 0, fun e => hv (congrArg (fun f : IntertwiningMap ρ ρ => f v) e)⟩⟩
  have h5 : finrank ℂ W * finrank ℂ (IntertwiningMap ρ ρ)
      = finrank ℂ V * finrank ℂ (IntertwiningMap ρ σ) := by exact_mod_cast h4
  have h3 : 0 < finrank ℂ (IntertwiningMap ρ σ) := by
    have : 0 < finrank ℂ W * finrank ℂ (IntertwiningMap ρ ρ) :=
      Nat.mul_pos Module.finrank_pos Module.finrank_pos
    rw [h5] at this
    exact Nat.pos_of_mul_pos_left this
  have := Module.nontrivial_of_finrank_pos h3
  exact exists_ne 0

theorem exists_intertwining_ne_zero : ∀ (M : Type) [Group M] [Finite M] (ι : Type) [Finite ι] (H : ι → Type) [∀ c, Group (H c)] [∀ c, Finite (H c)] (f : ∀ c, H c →* M), (⨆ c, (f c).range) = ⊤ → (∀ c c', c ≠ c' → ∀ (x : H c) (y : H c'), Commute (f c x) (f c' y)) → ∀ (W : ι → Type) [∀ c, AddCommGroup (W c)] [∀ c, Module ℂ (W c)] (ρ : ∀ c, Representation ℂ (H c) (W c)), (∀ c, (ρ c).IsIrreducible) → ∀ (V V' : Type) [AddCommGroup V] [Module ℂ V] [FiniteDimensional ℂ V] [Nontrivial V] [AddCommGroup V'] [Module ℂ V'] [FiniteDimensional ℂ V'] [Nontrivial V'] (τ : Representation ℂ M V) (τ' : Representation ℂ M V'), (∀ c, IsIsotypicOf (show Representation ℂ (H c) V from τ.comp (f c)) (ρ c)) → (∀ c, IsIsotypicOf (show Representation ℂ (H c) V' from τ'.comp (f c)) (ρ c)) → ∃ T : Representation.IntertwiningMap τ τ', T ≠ 0 := by
  intro M _ _ ι _ H _ _ f htop hcomm W _ _ ρ hρ V V' _ _ _ _ _ _ _ _ τ τ' hτ hτ'
  classical
  have := Fintype.ofFinite ι
  have hcomm' : Pairwise fun i j : ι => ∀ (x : H i) (y : H j), Commute (f i x) (f j y) :=
    fun i j hij => hcomm i j hij
  refine exists_ne_zero τ τ' fun m => ?_
  obtain ⟨h, rfl⟩ : m ∈ (MonoidHom.noncommPiCoprod f hcomm').range := by
    rw [MonoidHom.noncommPiCoprod_range, htop]
    exact Subgroup.mem_top m
  have key : ∀ (S : Finset ι) (comm : (S : Set ι).Pairwise (Function.onFun Commute fun i => f i (h i))),
      (finrank ℂ V' : ℂ) * τ.character (S.noncommProd (fun i => f i (h i)) comm)
        = (finrank ℂ V : ℂ) * τ'.character (S.noncommProd (fun i => f i (h i)) comm) := by
    intro S
    induction S using Finset.induction_on with
    | empty => intro comm; simp [mul_comm]
    | insert c S hc ih =>
      intro comm
      have := Fintype.ofFinite (H c)
      have := finiteDimensional_of_isotypic _ _ (hρ c) (hτ c)
      obtain ⟨s, hs⟩ := classSum_scalar (ρ c) (hρ c) (h c)
      rw [Finset.noncommProd_insert_of_notMem _ _ _ _ hc]
      have ha : ∀ comm k, Commute (f c k) (S.noncommProd (fun i => f i (h i)) comm) := fun comm k =>
        Finset.noncommProd_commute _ _ _ _ fun i hi => hcomm c i (fun e => hc (e ▸ hi)) _ _
      have hcard : (Fintype.card (H c) : ℂ) ≠ 0 := by exact_mod_cast Fintype.card_ne_zero
      refine mul_left_cancel₀ hcard ?_
      rw [mul_left_comm, card_mul_character τ (f c) (h c) s (classSum_of_isotypic _ _ (hτ c) _ _ hs) _ (ha _),
        mul_left_comm (Fintype.card (H c) : ℂ),
        card_mul_character τ' (f c) (h c) s (classSum_of_isotypic _ _ (hτ' c) _ _ hs) _ (ha _),
        mul_left_comm, ih, mul_left_comm]
  exact key Finset.univ fun _ _ _ _ hij => hcomm' hij _ _

end GlobalTheory.IsotypicFactors
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNeZeroIntertwiningOfCommutingIsotypicFacto =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPermOfBlockSizeBijection =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPermOfBlockSizeBijection", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.BlockProductIsomorphism\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsCuspidalIffCompositions\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.L2.DIV GlobalTheory.FinGL GlobalTheory.Parabolic GlobalTheory.IndefiniteRowSideFullHecke.BlockProductIsomorphism

namespace GlobalTheory

theorem exists_perm_of_block_bijection : ∀ (r : ℕ) (b b' : Fin r → ℕ) (R : ℕ → ℕ → Prop), (∀ c ∈ Set.range b, ∃! c', c' ∈ Set.range b' ∧ R c c') → (∀ c' ∈ Set.range b', ∃! c, c ∈ Set.range b ∧ R c c') → (∀ c ∈ Set.range b, ∀ c' ∈ Set.range b', R c c' → (block b c).card = (block b' c').card) → ∃ w : Equiv.Perm (Fin r), (∀ i, R (b i) (b' (w i))) ∧ ∀ i j : Fin r, b i = b j ↔ b' (w i) = b' (w j) := by
  classical
  intro r b b' R h1 h2 h3
  have h1' : ∀ i : Fin r, ∃ c', c' ∈ Set.range b' ∧ R (b i) c' :=
    fun i => (h1 (b i) ⟨i, rfl⟩).exists
  choose f hf1 hf2 using h1'
  have hiff : ∀ i c c', c ∈ Set.range b → c' ∈ Set.range b' → R c c' → (f i = c' ↔ b i = c) := by
    intro i c c' hc hc' hR
    constructor
    · intro h
      exact (h2 c' hc').unique ⟨⟨i, rfl⟩, h ▸ hf2 i⟩ ⟨hc, hR⟩
    · intro h
      subst h
      exact (h1 (b i) hc).unique ⟨hf1 i, hf2 i⟩ ⟨hc', hR⟩
  have hcard : ∀ c' : ℕ, Fintype.card {i // f i = c'} = Fintype.card {i // b' i = c'} := by
    intro c'
    rw [Fintype.card_subtype, Fintype.card_subtype]
    by_cases hc' : c' ∈ Set.range b'
    · obtain ⟨c, hc, hR⟩ := (h2 c' hc').exists
      have h := h3 c hc c' hc' hR
      unfold block at h
      rw [← h]
      congr 1
      ext i
      simp [hiff i c c' hc hc' hR]
    · rw [Finset.filter_eq_empty_iff.2, Finset.filter_eq_empty_iff.2]
      · intro i _ h
        exact hc' ⟨i, h⟩
      · intro i _ h
        exact hc' (h ▸ hf1 i)
  let e : ∀ c' : ℕ, {i // f i = c'} ≃ {i // b' i = c'} := fun c' => Fintype.equivOfCardEq (hcard c')
  have hw : ∀ i, b' (Equiv.ofFiberEquiv e i) = f i := fun i => Equiv.ofFiberEquiv_map e i
  refine ⟨Equiv.ofFiberEquiv e, fun i => ?_, fun i j => ?_⟩
  · rw [hw]; exact hf2 i
  · rw [hw, hw]
    exact (hiff i (b j) (f j) ⟨j, rfl⟩ (hf1 j) (hf2 j)).symm

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPermOfBlockSizeBijection =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteDimensionalOfIrr =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteDimensionalOfIrr", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.BlockProductIsomorphism\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsCuspidalIffCompositions\npublic import Development.AbelianVarietyTheory.Proofs.CharacterTheory.IsSimpleModuleOfFinrankEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockGLHomConjPermMatrixOfBlocksMatch\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspidalLeviDatumPermBlocksMatch\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EquivOfNeZeroMapIsotypicSumOfCopies\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBlockDiagActEq\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.RepresentationTheory.Coinduced\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInjectiveKernelCoindIntertwiningMap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeviGeneratedCommutingBlockGLStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNeZeroCoindIntertwinerOfDoubleCoset\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNeZeroIntertwiningOfCommutingIsotypicFacto\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPermMatrixRepParabolicDoubleCoset\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPermOfBlockSizeBijection\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RepresentationTheory.Maschke\nimport Mathlib.RingTheory.Coalgebra.CoassocSimps\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.L2.DIV GlobalTheory.FinGL GlobalTheory.Parabolic GlobalTheory.IndefiniteRowSideFullHecke.BlockProductIsomorphism

noncomputable section

namespace GlobalTheory.FinGL.IrrProduct

section General

variable {G V V' W W' : Type} [Group G] [AddCommGroup V] [Module ℂ V] [AddCommGroup V'] [Module ℂ V']
  [AddCommGroup W] [Module ℂ W] [AddCommGroup W'] [Module ℂ W']

theorem nontrivial_of_irr {ρ : Representation ℂ G V} (h : ρ.IsIrreducible) : Nontrivial V := by
  rw [Representation.irreducible_iff_isSimpleModule_asModule] at h
  exact IsSimpleModule.nontrivial (MonoidAlgebra ℂ G) ρ.asModule

theorem finiteDimensional_of_irr [Finite G] {ρ : Representation ℂ G V} (h : ρ.IsIrreducible) :
    FiniteDimensional ℂ V := by
  have := nontrivial_of_irr h
  obtain ⟨v, hv⟩ := exists_ne (0 : V)
  let S : Subrepresentation ρ := ⟨Submodule.span ℂ (Set.range fun g => ρ g v), fun g x hx => by
    refine (Submodule.span_le (p := (Submodule.span ℂ (Set.range fun g => ρ g v)).comap (ρ g))).2 ?_ hx
    rintro _ ⟨k, rfl⟩
    exact Submodule.subset_span ⟨g * k, by simp⟩⟩
  rcases eq_bot_or_eq_top S with hS | hS
  · have h1 : v ∈ S.toSubmodule := Submodule.subset_span ⟨1, by simp⟩
    rw [hS] at h1
    exact absurd h1 hv
  · have h1 : Submodule.span ℂ (Set.range fun g => ρ g v) = ⊤ := congrArg Subrepresentation.toSubmodule hS
    exact ⟨Submodule.fg_def.2 ⟨_, Set.finite_range _, h1⟩⟩

theorem isotypic_of_equiv {τ : Representation ℂ G V} {ρ : Representation ℂ G W} {ρ' : Representation ℂ G W'}
    (e : ρ.Equiv ρ') (h : IsIsotypicOf τ ρ') : IsIsotypicOf τ ρ := by
  refine top_le_iff.1 (h.ge.trans (iSup_le fun f => le_iSup_of_le (f.comp e.toIntertwiningMap) ?_))
  rintro _ ⟨x, rfl⟩
  obtain ⟨y, rfl⟩ := e.toLinearEquiv.surjective x
  exact ⟨y, rfl⟩

theorem isotypic_conj {τ τ' : Representation ℂ G V} {ρ : Representation ℂ G W} (π : G)
    (hτ : ∀ g, τ' g = τ (π * g * π⁻¹)) (h : IsIsotypicOf τ ρ) : IsIsotypicOf τ' ρ := by
  refine top_le_iff.1 (h.ge.trans (iSup_le fun f => le_iSup_of_le ⟨f.toLinearMap ∘ₗ ρ π, fun g => ?_⟩ ?_))
  · ext x
    simp only [LinearMap.comp_apply, hτ]
    refine Eq.trans ?_ (f.isIntertwining _ _ _ _)
    simp only [← Module.End.mul_apply, ← map_mul, inv_mul_cancel_right]
    rfl
  · rintro _ ⟨x, rfl⟩
    refine ⟨ρ π⁻¹ x, ?_⟩
    simp only [LinearMap.comp_apply, ← Module.End.mul_apply, ← map_mul, mul_inv_cancel, map_one, Module.End.one_apply]

theorem coind_irreducible [Finite G] (P : Subgroup G) (σ : Representation ℂ P V) (hσ : σ.IsIrreducible)
    (h : ∀ K : G → V →ₗ[ℂ] V, (∀ (p' : P) (g : G) (p : P), K ((p' : G) * g * (p : G)) = σ p' ∘ₗ K g ∘ₗ σ p) →
      ∀ g, K g ≠ 0 → g ∈ P) : (Representation.coind P.subtype σ).IsIrreducible := by
  have := nontrivial_of_irr hσ
  have := finiteDimensional_of_irr hσ
  have : NeZero (Nat.card G : ℂ) := ⟨by exact_mod_cast Nat.card_pos.ne'⟩
  obtain ⟨K, hi, hK⟩ := _root_.GlobalTheory.CoindKernel.exists_kernel G P P V V σ σ
  obtain ⟨Φ, hΦ⟩ := _root_.GlobalTheory.exists_ne_zero_intertwiningMap_coind_of_doubleCoset G P P V V σ σ 1 LinearMap.id (fun e => by
    obtain ⟨v, hv⟩ := exists_ne (0 : V)
    exact hv (LinearMap.congr_fun e v)) (fun p p' e => by
      have : p' = p := Subtype.ext (by simpa using e)
      rw [this]; rfl)
  have hl : ∀ Ψ (p : P), K Ψ p = σ p ∘ₗ K Ψ 1 := fun Ψ p => by
    have := hK Ψ p 1 1
    simpa [Module.End.one_eq_id] using this
  have hr : ∀ Ψ (p : P), K Ψ p = K Ψ 1 ∘ₗ σ p := fun Ψ p => by
    have := hK Ψ 1 1 p
    simpa [Module.End.one_eq_id] using this
  let E : Representation.IntertwiningMap (Representation.coind P.subtype σ) (Representation.coind P.subtype σ) →ₗ[ℂ]
      Representation.IntertwiningMap σ σ :=
    { toFun := fun Ψ => ⟨K Ψ 1, fun p => (hr Ψ p).symm.trans (hl Ψ p)⟩
      map_add' := fun a b => Representation.IntertwiningMap.ext (by simp)
      map_smul' := fun a b => Representation.IntertwiningMap.ext (by simp) }
  have hE : Function.Injective E := by
    set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
    intro Ψ h0
    have h1 : K Ψ 1 = 0 := congrArg Representation.IntertwiningMap.toLinearMap h0
    apply hi
    rw [map_zero]
    funext g
    by_contra hg
    apply hg
    have := hl Ψ ⟨g, h _ (hK Ψ) g hg⟩
    rw [h1] at this
    simpa using this
  have hf : Module.Finite ℂ (Representation.IntertwiningMap σ σ) :=
    Module.finite_of_finrank_eq_succ (Representation.IsIrreducible.finrank_intertwiningMap_self σ)
  have hf2 := Module.Finite.of_injective E hE
  have h1 := LinearMap.finrank_le_finrank_of_injective hE
  rw [Representation.IsIrreducible.finrank_intertwiningMap_self σ] at h1
  have : Nontrivial (Representation.IntertwiningMap (Representation.coind P.subtype σ)
    (Representation.coind P.subtype σ)) := ⟨⟨Φ, 0, hΦ⟩⟩
  have hpos : 0 < Module.finrank ℂ (Representation.IntertwiningMap
      (Representation.coind P.subtype σ) (Representation.coind P.subtype σ)) := by
    let e := (Representation.IntertwiningMap.equivAlgEnd
      (ρ := Representation.coind P.subtype σ)).toLinearEquiv
    have := e.injective.nontrivial
    have := Module.Finite.equiv e
    rw [e.finrank_eq]
    exact Module.finrank_pos
  have h2 := le_antisymm h1 (Nat.succ_le_of_lt hpos)
  rw [Representation.irreducible_iff_isSimpleModule_asModule]
  refine GlobalTheory.CuspCharCompare.isSimpleModule_of_finrank_end ?_
  rw [← h2]
  exact (Representation.IntertwiningMap.equivAlgEnd
    (ρ := Representation.coind P.subtype σ)).toLinearEquiv.finrank_eq.symm

theorem kernel_twist {P P' : Subgroup G} {σ : Representation ℂ P V} {σ' : Representation ℂ P' V'}
    {K : G → V →ₗ[ℂ] V'} (hK : ∀ (p' : P') (g : G) (p : P), K ((p' : G) * g * (p : G)) = σ' p' ∘ₗ K g ∘ₗ σ p)
    (x : G) (p : P) (p' : P') (e : (p' : G) * x = x * (p : G)) : σ' p' ∘ₗ K x = K x ∘ₗ σ p := by
  have h1 := hK p' x 1
  have h2 := hK 1 x p
  simp only [OneMemClass.coe_one, mul_one, one_mul, map_one, Module.End.one_eq_id, LinearMap.comp_id,
    LinearMap.id_comp] at h1 h2
  rw [← h1, ← h2, e]

end General

variable {F : Type} [Field F] {r : ℕ} {V V' : Type} [AddCommGroup V] [Module ℂ V] [AddCommGroup V'] [Module ℂ V']

section Iso

variable {d d' d'' : ℕ} {W W' W'' : Type} [AddCommGroup W] [Module ℂ W] [AddCommGroup W'] [Module ℂ W']
  [AddCommGroup W''] [Module ℂ W''] {ρ : Representation ℂ (GL (Fin d) F) W}
  {ρ' : Representation ℂ (GL (Fin d') F) W'} {ρ'' : Representation ℂ (GL (Fin d'') F) W''}

theorem isoGL_symm (h : IsoGL ρ ρ') : IsoGL ρ' ρ := by
  obtain ⟨rfl, ⟨e⟩⟩ := h
  exact ⟨rfl, ⟨e.symm⟩⟩

theorem isoGL_trans (h : IsoGL ρ ρ') (h' : IsoGL ρ' ρ'') : IsoGL ρ ρ'' := by
  obtain ⟨rfl, ⟨e⟩⟩ := h
  obtain ⟨rfl, ⟨e'⟩⟩ := h'
  exact ⟨rfl, ⟨e.trans e'⟩⟩

theorem isFactor_of_iso {b : Fin r → ℕ} {σ : Representation ℂ (blockTri (κ := F) b) V} {c : ℕ}
    (h : IsoGL ρ ρ') (hf : IsFactor b σ c ρ') : IsFactor b σ c ρ := by
  obtain ⟨rfl, ⟨e⟩⟩ := h
  obtain ⟨hi, hc, ht⟩ := hf
  exact ⟨isIrreducible_of_equiv e.symm hi, hc, isotypic_of_equiv e ht⟩

theorem isoGL_of_twist [Finite F] {b b' : Fin r → ℕ} {σ : Representation ℂ (blockTri (κ := F) b) V}
    {σ' : Representation ℂ (blockTri (κ := F) b') V'} {w : Equiv.Perm (Fin r)}
    (hw : ∀ i j : Fin r, b i = b j ↔ b' (w i) = b' (w j)) {T : V →ₗ[ℂ] V'} (hT : T ≠ 0)
    (ht : ∀ (p : blockTri (κ := F) b) (p' : blockTri (κ := F) b'),
      (p' : GL (Fin r) F) * permGL F w = permGL F w * (p : GL (Fin r) F) → σ' p' ∘ₗ T = T ∘ₗ σ p)
    (i : Fin r) (hf : IsFactor b σ (b i) ρ) (hf' : IsFactor b' σ' (b' (w i)) ρ') : IsoGL ρ ρ' := by
  obtain ⟨hi, hc, hs⟩ := hf
  obtain ⟨hi', hc', hs'⟩ := hf'
  obtain ⟨h1, h2⟩ := _root_.GlobalTheory.Proof.BlockConj.blockHom_conj_permGL F r b b' w hw i
  obtain rfl : d = d' := hc.symm.trans (h1.trans hc')
  obtain ⟨π, hπ⟩ := h2 d hc hc'
  let τ' : Representation ℂ (GL (Fin d) F) V' :=
    (σ'.comp (blockHom F b' _ hc')).comp (MulAut.conj π).toMonoidHom
  refine (isoGL_iff _ _).2 (_root_.GlobalTheory.IsotypicMap.equiv_of_isotypic_map _ V V' W W' _ τ' ρ ρ' hi hi' hs (isotypic_conj π (fun g => rfl) hs')
    ⟨T, fun g => (ht _ _ (hπ g)).symm⟩ fun e => hT (congrArg Representation.IntertwiningMap.toLinearMap e))

end Iso

variable [Finite F] {b b' : Fin r → ℕ} {σ : Representation ℂ (blockTri (κ := F) b) V}
  {σ' : Representation ℂ (blockTri (κ := F) b') V'}
  {d : ℕ → ℕ} {W : ℕ → Type} [∀ c, AddCommGroup (W c)] [∀ c, Module ℂ (W c)]
  {ρ : ∀ c, Representation ℂ (GL (Fin (d c)) F) (W c)}
  {d' : ℕ → ℕ} {W' : ℕ → Type} [∀ c, AddCommGroup (W' c)] [∀ c, Module ℂ (W' c)]
  {ρ' : ∀ c, Representation ℂ (GL (Fin (d' c)) F) (W' c)}

theorem exists_perm_of_kernel (h : IsRegularCusp b σ d W ρ) (h' : IsRegularCusp b' σ' d' W' ρ')
    {K : GL (Fin r) F → V →ₗ[ℂ] V'}
    (hK : ∀ (p' : blockTri (κ := F) b') (g : GL (Fin r) F) (p : blockTri (κ := F) b),
      K ((p' : GL (Fin r) F) * g * (p : GL (Fin r) F)) = σ' p' ∘ₗ K g ∘ₗ σ p) {g : GL (Fin r) F} (hg : K g ≠ 0) :
    ∃ (w : Equiv.Perm (Fin r)) (p' : blockTri (κ := F) b') (p : blockTri (κ := F) b),
      g = (p' : GL (Fin r) F) * permGL F w * (p : GL (Fin r) F) ∧ ∀ i, IsoGL (ρ (b i)) (ρ' (b' (w i))) := by
  obtain ⟨w, p', p, rfl⟩ := _root_.GlobalTheory.FinGL.Bruhat.exists_perm_rep_blockTri F r b b' h.1.mono h'.1.mono g
  have h0 : K (permGL F w) ≠ 0 := fun e => hg (by rw [hK, e]; simp)
  have hw := _root_.GlobalTheory.FinGL.BlockMatch.blocks_match F r b b' V V' σ σ' h.1 h'.1 w _ h0 (kernel_twist hK _)
  exact ⟨w, p', p, rfl, fun i => isoGL_of_twist hw h0 (kernel_twist hK _) i (h.2.1 _ ⟨i, rfl⟩) (h'.2.1 _ ⟨w i, rfl⟩)⟩

theorem parInd_irreducible (h : IsRegularCusp b σ d W ρ) : (parInd b σ).IsIrreducible := by
  refine coind_irreducible _ σ h.1.irr fun K hK g hg => ?_
  obtain ⟨w, p', p, rfl, hw⟩ := exists_perm_of_kernel h h hK hg
  refine Subgroup.mul_mem _ (Subgroup.mul_mem _ p'.2 (mem_blockTri.2 fun i j hij => ?_)) p.2
  rw [permGL_apply, if_neg]
  rintro rfl
  exact h.2.2 _ ⟨j, rfl⟩ _ ⟨w j, rfl⟩ hij.ne (hw j)

theorem exists_twist (h : IsRegularCusp b σ d W ρ) (h' : IsRegularCusp b' σ' d' W' ρ') {w : Equiv.Perm (Fin r)}
    (hw : ∀ i j : Fin r, b i = b j ↔ b' (w i) = b' (w j)) (hρ : ∀ i, IsoGL (ρ (b i)) (ρ' (b' (w i)))) :
    ∃ T : V →ₗ[ℂ] V', T ≠ 0 ∧ ∀ (p : blockTri (κ := F) b) (p' : blockTri (κ := F) b'),
      (p' : GL (Fin r) F) * permGL F w = permGL F w * (p : GL (Fin r) F) → σ' p' ∘ₗ T = T ∘ₗ σ p := by
  have := nontrivial_of_irr h.1.irr
  have := nontrivial_of_irr h'.1.irr
  have := finiteDimensional_of_irr h.1.irr
  have := finiteDimensional_of_irr h'.1.irr
  have hf : ∀ c : Set.range b, IsFactor b σ c (ρ c) := fun c => h.2.1 c c.2
  obtain ⟨f, hf1, hf2, hf3⟩ := GlobalTheory.T.exists_levi_generated_commuting_blockGL F r b (fun c => d c) fun c => (hf c).2.1
  have hL : levi F b = levi F (b' ∘ w) := levi_congr hw
  let ι : levi F b →* blockTri (κ := F) b := Subgroup.inclusion (levi_le_blockTri b)
  let ι' : levi F b →* blockTri (κ := F) b' := (Subgroup.inclusion (levi_le_blockTri b')).comp
    ((leviConj b' w).toMonoidHom.comp (Subgroup.inclusion hL.le))
  have hι' : ∀ m, (ι' m : GL (Fin r) F) = permGL F w * m * (permGL F w)⁻¹ := fun _ => rfl
  obtain ⟨T, hT⟩ := _root_.GlobalTheory.IsotypicFactors.exists_intertwining_ne_zero (levi F b) (Set.range b) (fun c => GL (Fin (d c)) F) f hf2 hf3 (fun c => W c)
    (fun c => ρ c) (fun c => (hf c).1) V V' (σ.comp ι) (σ'.comp ι') (fun c => by
      have e : ι.comp (f c) = blockHom F b c (hf c).2.1 := MonoidHom.ext fun g => Subtype.ext (hf1 c g)
      have := (hf c).2.2
      rw [← e] at this
      exact this) (by
      rintro ⟨_, i, rfl⟩
      obtain ⟨-, hc', hs'⟩ := isFactor_of_iso (hρ i) (h'.2.1 _ ⟨w i, rfl⟩)
      obtain ⟨π, hπ⟩ := (_root_.GlobalTheory.Proof.BlockConj.blockHom_conj_permGL F r b b' w hw i).2 _ (hf ⟨_, i, rfl⟩).2.1 hc'
      refine isotypic_conj π (fun g => ?_) hs'
      refine congrArg σ' (Subtype.ext ?_)
      show (ι' (f ⟨_, i, rfl⟩ g) : GL (Fin r) F) = _
      rw [hι', hf1, ← hπ, mul_inv_cancel_right])
  refine ⟨T.toLinearMap, fun e => hT (Representation.IntertwiningMap.ext e), fun p p' e => ?_⟩
  have hp' : (p' : GL (Fin r) F) = permGL F w * p * (permGL F w)⁻¹ := eq_mul_inv_of_mul_eq e
  obtain ⟨m, hm, hm1⟩ := h.1.exists_blockDiag_act_eq F r V b σ p
  obtain ⟨m', hm', hm1'⟩ := h'.1.exists_blockDiag_act_eq F r V' b' σ' p'
  have hmL : (m : GL (Fin r) F) ∈ levi F b := fun i j hij => by rw [hm1, if_neg hij]
  have e' : m' = ι' ⟨m, hmL⟩ := by
    refine Subtype.ext (Units.ext (Matrix.ext fun i j => ?_))
    obtain ⟨i, rfl⟩ := w.surjective i
    obtain ⟨j, rfl⟩ := w.surjective j
    rw [hι', conj_permGL_apply, hm1', hp', conj_permGL_apply]
    simp only [hm1, hw]
  rw [← hm, ← hm', e']
  exact (T.isIntertwining' ⟨m, hmL⟩).symm

theorem irrPar : IrrPar := by
  refine ⟨fun F _ _ r b V _ _ σ d W _ _ ρ h => parInd_irreducible h, ?_⟩
  intro F _ _ r b V _ _ σ d W _ _ ρ b' V' _ _ σ' d' W' _ _ ρ' h h'
  have hi := parInd_irreducible h
  have hi' := parInd_irreducible h'
  constructor
  · rintro ⟨e⟩
    obtain ⟨K, hKi, hK⟩ := _root_.GlobalTheory.CoindKernel.exists_kernel _ _ _ V V' σ σ'
    have := nontrivial_of_irr hi
    have h0 : K e.toIntertwiningMap ≠ 0 := fun e0 => by
      have e1 := hKi (e0.trans (map_zero K).symm)
      obtain ⟨v, hv⟩ := exists_ne (0 : Representation.coindV (blockTri (κ := F) b).subtype σ)
      refine hv (e.toLinearEquiv.injective ?_)
      rw [map_zero]
      exact congrArg (fun f : Representation.IntertwiningMap (parInd b σ) (parInd b' σ') => f v) e1
    obtain ⟨g, hg⟩ := Function.ne_iff.1 h0
    obtain ⟨w, -, -, -, hw⟩ := exists_perm_of_kernel h h' (hK _) hg
    refine ⟨?_, ?_⟩
    · rintro _ ⟨i, rfl⟩
      exact ⟨_, ⟨w i, rfl⟩, hw i⟩
    · rintro _ ⟨j, rfl⟩
      obtain ⟨i, rfl⟩ := w.surjective j
      exact ⟨_, ⟨i, rfl⟩, hw i⟩
  · rintro ⟨h1, h2⟩
    obtain ⟨w, hρ, hw⟩ := _root_.GlobalTheory.exists_perm_of_block_bijection r b b' (fun c c' => IsoGL (ρ c) (ρ' c'))
      (fun c hc => by
        obtain ⟨c', hc', e⟩ := h1 c hc
        refine ⟨c', ⟨hc', e⟩, fun c'' ⟨hc'', e'⟩ => ?_⟩
        by_contra hne
        exact h'.2.2 _ hc'' _ hc' hne (isoGL_trans (isoGL_symm e') e))
      (fun c' hc' => by
        obtain ⟨c, hc, e⟩ := h2 c' hc'
        refine ⟨c, ⟨hc, e⟩, fun c'' ⟨hc'', e'⟩ => ?_⟩
        by_contra hne
        exact h.2.2 _ hc'' _ hc hne (isoGL_trans e' (isoGL_symm e)))
      (fun c hc c' hc' e => (h.2.1 c hc).2.1.trans (e.1.symm.trans (h'.2.1 c' hc').2.1.symm))
    obtain ⟨T, hT, ht⟩ := exists_twist h h' hw hρ
    obtain ⟨Φ, hΦ⟩ := _root_.GlobalTheory.exists_ne_zero_intertwiningMap_coind_of_doubleCoset _ _ _ V V' σ σ' _ T hT ht
    exact ⟨Φ.ofBijective ((Representation.IsIrreducible.bijective_or_eq_zero Φ).resolve_right hΦ)⟩

end GlobalTheory.FinGL.IrrProduct
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteDimensionalOfIrr =====
