module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight
public import Mathlib.FieldTheory.IsAlgClosed.Basic
public import Development.WeilBound.CoreStatements.HodgeTatePoints.EqOfProdEq
public import ReciprocityTheory.DualLattices.ExistsSmulMemOfMemSpan
public import ReciprocityTheory.DualLattices.MemDualLat
public import ReciprocityTheory.DualLattices.MemMapAugmentationIdealComapPullbackQuotient
public import ReciprocityTheory.DualLattices.MemSupOfRestrictToSubgroupMemSq
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsFinFlatSub
public import Mathlib.Basic.NNReal.Defs
public import Mathlib.RingTheory.Valuation.Integers
public import Mathlib.RingTheory.Flat.TorsionFree
public import ReciprocityTheory.DualLattices.TensorSpan
public import Development.WeilBound.CoreStatements.HodgeTatePoints.RfTors
public import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.QuotientByFiniteFlatStatement
public import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.ZarhinStatement
public import Development.AutomorphicSpectrum.Statements.AlgebraStatements.HodgeTateDatumStatement
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsAddEquiv
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsHopfOrderStatement
public import Development.AutomorphicSpectrum.Statements.AlgebraStatements.OrdinaryCurveStatement
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderRetractRestriction
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.DualLattices.CotangentSurjective
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.HodgeTatePoints.RhPull, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GenerationAlongInvariants, Development.WeilBound.CoreStatements.HodgeTatePoints.TensorSpanLe, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderPullbackAlongHom, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFiniteFlatSubgroup, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFiniteFlatSubgroupStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsHomomorphismCompatible, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsHomomorphismCompatibleStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsIsogenyHopfOrder, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsIsogenyHopfOrderStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianSchemeTorsionAugmentation, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianSchemeTorsionAugmentationStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFinite, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFiniteStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientZarhinHodgeTateSubquotient, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientZarhinHodgeTateSubquotientStatement

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.RhPull =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.RhPull", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace PositivityTheory.HtPt.Rh

theorem sub_pull : ∀ (p : ℕ) (C : Type) [Field C] (R : Type) [CommRing R] [Algebra R C] (N N' : Type) [AddCommGroup N] [AddCommGroup N'] (M : Submodule R (N → C)) (M' : Submodule R (N' → C)) (j : N →+ N') (K : AddSubgroup N), M'.map (LinearMap.funLeft R C (j : N → N')) = invFun M K → GenAF p M' ⊥ → GenAF p M K := by
  intro p C _ R _ _ N N' _ _ M M' j K hM hG g hg
  rw [← hM] at hg
  obtain ⟨g', hg', rfl⟩ := hg
  have hinv : g' ∈ invFun M' ⊥ := ⟨hg', fun x k hk => by rw [AddSubgroup.mem_bot.1 hk, add_zero]⟩
  have h1 : g' ∈ Algebra.adjoin R ((afFun p (invFun M' ⊥) : Submodule R (N' → C)) : Set (N' → C)) :=
    hG hinv
  change (fun x => g' (j x)) ∈
    Algebra.adjoin R ((afFun p (invFun M K) : Submodule R (N → C)) : Set (N → C))
  clear hg' hinv
  induction h1 using Algebra.adjoin_induction with
  | mem f hf =>
    refine Algebra.subset_adjoin ⟨?_, fun x y => ?_⟩
    · rw [← hM]
      exact ⟨f, hf.1.1, rfl⟩
    · have := hf.2 (j x) (j y)
      simpa only [map_add (f := _)] using this
  | algebraMap r => exact Subalgebra.algebraMap_mem _ r
  | add f f' _ _ h h' => exact Subalgebra.add_mem _ h h'
  | mul f f' _ _ h h' => exact Subalgebra.mul_mem _ h h'

end PositivityTheory.HtPt.Rh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.RhPull =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GenerationAlongInvariants =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GenerationAlongInvariants", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RhPull\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem genAF_of_map_eq_invFun : ∀ (p : ℕ) (C : Type) [Field C] (R : Type) [CommRing R] [Algebra R C] (N N' : Type) [AddCommGroup N] [AddCommGroup N'] (M : Submodule R (N → C)) (M' : Submodule R (N' → C)) (j : N →+ N') (K : AddSubgroup N), M'.map (LinearMap.funLeft R C (j : N → N')) = invFun M K → GenAF p M' ⊥ → GenAF p M K :=
  PositivityTheory.HtPt.Rh.sub_pull

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GenerationAlongInvariants =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.TensorSpanLe =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.TensorSpanLe", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.EqOfProdEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.DualLattices.ExistsSmulMemOfMemSpan\npublic import ReciprocityTheory.DualLattices.MemDualLat\npublic import ReciprocityTheory.DualLattices.MemMapAugmentationIdealComapPullbackQuotient\npublic import ReciprocityTheory.DualLattices.MemSupOfRestrictToSubgroupMemSq\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace PositivityTheory.HtPt.Rh

open scoped TensorProduct Kronecker

theorem tmul_move {A B : Type} [CommRing A] [CommRing B] [Algebra A B] (a : A) (y : B) :
    algebraMap A B a ⊗ₜ[A] y = (1 : B) ⊗ₜ[A] (algebraMap A B a * y) := by
  rw [← Algebra.smul_def, ← TensorProduct.smul_tmul, Algebra.algebraMap_eq_smul_one]

section
variable {C : Type} [Field C] {R : Type} [CommRing R] [Algebra R C]
  {Q : Type} [AddCommGroup Q] [Fintype Q] [DecidableEq Q]

def subalg (A : HopfOrder (C := C) R Q) : Subalgebra R (Q → C) :=
  A.carrier.toSubalgebra A.one_mem A.mul_mem

noncomputable def ev (A : HopfOrder (C := C) R Q) : subalg A ⊗[R] subalg A →ₐ[R] (Q × Q → C) :=
  Algebra.TensorProduct.lift
    ((AlgHom.pi fun p : Q × Q => Pi.evalAlgHom R (fun _ : Q => C) p.1).comp
      (subalg A).val)
    ((AlgHom.pi fun p : Q × Q => Pi.evalAlgHom R (fun _ : Q => C) p.2).comp
      (subalg A).val)
    fun _ _ => Commute.all _ _

theorem ev_tmul (A : HopfOrder (C := C) R Q) (g h : subalg A) :
    ev A (g ⊗ₜ h) = fun p => g.1 p.1 * h.1 p.2 := rfl

theorem ev_injective (hinj : Function.Injective (algebraMap R C)) (A : HopfOrder (C := C) R Q) :
    Function.Injective (ev A) := by
  obtain ⟨β, hβ, hA⟩ := A.lat
  let w : Q → subalg A := fun j => ⟨fun x => β x j, by
    change _ ∈ A.carrier
    rw [hA]
    exact Submodule.subset_span ⟨j, rfl⟩⟩
  have hw : Submodule.span R (Set.range w) = ⊤ := by
    apply Submodule.map_injective_of_injective (f := (subalg A).val.toLinearMap) Subtype.val_injective
    rw [Submodule.map_span, ← Set.range_comp, Submodule.map_top]
    refine Eq.trans hA.symm ?_
    ext f
    exact ⟨fun hf => ⟨⟨f, hf⟩, rfl⟩, by rintro ⟨g, rfl⟩; exact g.2⟩
  have hsp : Submodule.span R (Set.range fun p : Q × Q => w p.1 ⊗ₜ[R] w p.2) = ⊤ := by
    rw [eq_top_iff]
    intro t ht
    clear ht
    induction t using TensorProduct.induction_on with
    | zero => exact Submodule.zero_mem _
    | add a b ha hb => exact Submodule.add_mem _ ha hb
    | tmul a b =>
      have ha : a ∈ Submodule.span R (Set.range w) := hw ▸ Submodule.mem_top
      have hb : b ∈ Submodule.span R (Set.range w) := hw ▸ Submodule.mem_top
      obtain ⟨r, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun R).1 ha
      obtain ⟨s, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun R).1 hb
      rw [TensorProduct.sum_tmul]
      refine Submodule.sum_mem _ fun i _ => ?_
      rw [TensorProduct.tmul_sum]
      refine Submodule.sum_mem _ fun j _ => ?_
      rw [TensorProduct.tmul_smul, ← TensorProduct.smul_tmul']
      exact Submodule.smul_mem _ _ (Submodule.smul_mem _ _ (Submodule.subset_span ⟨(i, j), rfl⟩))
  refine LinearMap.injective_of_linearIndependent (f := (ev A).toLinearMap) hsp ?_
  have hu : IsUnit (β ⊗ₖ β) := by
    rw [Matrix.isUnit_iff_isUnit_det, Matrix.det_kronecker]
    exact (hβ.pow _).mul (hβ.pow _)
  have hli := Matrix.linearIndependent_cols_iff_isUnit.2 hu
  have : FaithfulSMul R C := (faithfulSMul_iff_algebraMap_injective R C).2 hinj
  exact hli.restrict_scalars' R

theorem tensorSpan_le (A : HopfOrder (C := C) R Q) {F : Q × Q → C} (hF : F ∈ tensorSpan R A.carrier) :
    (fun p : Q × Q => F (p.1, -p.2)) ∈ (ev A).range := by
  induction hF using Submodule.span_induction with
  | mem F hF =>
    obtain ⟨g, hg, h, hh, rfl⟩ := hF
    exact ⟨(⟨g, hg⟩ : subalg A) ⊗ₜ (⟨_, A.antipode h hh⟩ : subalg A), rfl⟩
  | zero => exact Subalgebra.zero_mem _
  | add F G _ _ hF hG => exact Subalgebra.add_mem _ hF hG
  | smul c F _ hF => exact Subalgebra.smul_mem _ hF c

theorem pull_eq (hinj : Function.Injective (algebraMap R C)) (A : HopfOrder (C := C) R Q)
    {N' : Type} [AddCommGroup N'] [Fintype N'] [DecidableEq N'] (A' : HopfOrder (C := C) R N')
    (i : Q →+ N') (h1 : ∀ g ∈ A'.carrier, (fun x => g (i x)) ∈ A.carrier)
    (h2 : ∀ g ∈ A.carrier, g 0 = 0 →
      g ∈ (augIdeal A'.carrier).map (LinearMap.funLeft R C (i : Q → N')) * A.carrier) :
    A.carrier ≤ A'.carrier.map (LinearMap.funLeft R C (i : Q → N')) := by
  let B' : Subalgebra R (subalg A) :=
    ((subalg A').map (AlgHom.pi fun x : Q =>
      Pi.evalAlgHom R (fun _ : N' => C) (i x))).comap (subalg A).val
  have : Module.Finite R (subalg A) := Module.Finite.iff_fg.2 (SecondCohomologyLattice.fg_of_isLat A.lat)
  have : Module.Finite B' (subalg A) := Module.Finite.of_restrictScalars_finite R _ _
  let π : subalg A ⊗[R] subalg A →ₐ[R] subalg A ⊗[B'] subalg A :=
    Algebra.TensorProduct.lift (Algebra.TensorProduct.includeLeft)
      (Algebra.TensorProduct.includeRight.restrictScalars R) fun _ _ => Commute.all _ _
  have hπ : ∀ a b : subalg A, π (a ⊗ₜ b) = a ⊗ₜ b := by
    intro a b
    simp [π]
  let S : Submodule R (Q × Q → C) := (LinearMap.ker π.toLinearMap).map (ev A).toLinearMap
  have hS : ∀ F ∈ S, ∀ G ∈ (ev A).range, F * G ∈ S := by
    rintro _ ⟨t, ht, rfl⟩ _ ⟨u, rfl⟩
    refine ⟨t * u, ?_, map_mul (ev A) t u⟩
    have ht' : π t = 0 := ht
    change π (t * u) = 0
    rw [map_mul, ht', zero_mul]
  have hA : ∀ c ∈ A.carrier, (fun p : Q × Q => c (p.1 - p.2)) ∈ (ev A).range := by
    intro c hc
    have := tensorSpan_le A (A.comul c hc)
    simp only [sub_eq_add_neg]
    exact this
  have hB0 : ∀ F ∈ tensorSpan R A'.carrier,
      (fun p : Q × Q => F (i p.1, -i p.2) - F (i p.2, -i p.2)) ∈ S := by
    intro F hF
    induction hF using Submodule.span_induction with
    | mem F hF =>
      obtain ⟨g, hg, h, hh, rfl⟩ := hF
      let g' : subalg A := ⟨_, h1 g hg⟩
      let h' : subalg A := ⟨_, h1 _ (A'.antipode h hh)⟩
      refine ⟨g' ⊗ₜ h' - 1 ⊗ₜ (g' * h'), ?_, ?_⟩
      · change π (g' ⊗ₜ h' - 1 ⊗ₜ (g' * h')) = 0
        let b : B' := ⟨g', g, hg, rfl⟩
        rw [map_sub, hπ, hπ, sub_eq_zero]
        exact tmul_move b h'
      · change ev A (g' ⊗ₜ h' - 1 ⊗ₜ (g' * h')) = _
        rw [map_sub, ev_tmul, ev_tmul]
        funext p
        simp [g', h']
    | zero => convert S.zero_mem using 1; funext p; simp
    | add F G _ _ hF hG => convert S.add_mem hF hG using 1; funext p; simp only [Pi.add_apply]; ring
    | smul c F _ hF => convert S.smul_mem c hF using 1; funext p; simp only [Pi.smul_apply, smul_sub]
  have hC : ∀ c ∈ (augIdeal A'.carrier).map (LinearMap.funLeft R C (i : Q → N')) * A.carrier,
      (fun p : Q × Q => c (p.1 - p.2)) ∈ S := by
    intro c hc
    refine Submodule.mul_induction_on hc ?_ fun a b ha hb => S.add_mem ha hb
    rintro _ ⟨g, hg, rfl⟩ c hc
    have hg0 : g 0 = 0 := hg.2
    have := hS _ (hB0 _ (A'.comul g hg.1)) _ (hA c hc)
    convert this using 1
    funext p
    simp [addPull, LinearMap.funLeft_apply, hg0, sub_eq_add_neg]
  have hD : ∀ F ∈ tensorSpan R A.carrier,
      (fun p : Q × Q => F (p.1 - p.2, p.2) - F (0, p.2)) ∈ S := by
    intro F hF
    induction hF using Submodule.span_induction with
    | mem F hF =>
      obtain ⟨g, hg, h, hh, rfl⟩ := hF
      obtain ⟨r, hr⟩ := A.le_int hg 0
      have hm := hC _ (h2 (g - r • 1) (A.carrier.sub_mem hg (A.carrier.smul_mem r A.one_mem))
        (by simp [Algebra.smul_def, hr]))
      have := hS _ hm _ ⟨1 ⊗ₜ (⟨h, hh⟩ : subalg A), rfl⟩
      convert this using 1
      funext p
      simp [ev_tmul, Algebra.smul_def, hr, sub_mul]
    | zero => convert S.zero_mem using 1; funext p; simp
    | add F G _ _ hF hG => convert S.add_mem hF hG using 1; funext p; simp only [Pi.add_apply]; ring
    | smul c F _ hF => convert S.smul_mem c hF using 1; funext p; simp only [Pi.smul_apply, smul_sub]
  have hsurj := epi B' (subalg A) fun b => by
    obtain ⟨t, ht, e⟩ := hD _ (A.comul b.1 b.2)
    have : t = b ⊗ₜ 1 - 1 ⊗ₜ b := by
      apply ev_injective hinj A
      refine e.trans ?_
      rw [map_sub, ev_tmul, ev_tmul]
      funext p
      simp [addPull, LinearMap.funLeft_apply]
    have ht' : π t = 0 := ht
    rwa [this, map_sub, hπ, hπ, sub_eq_zero] at ht'
  intro g hg
  obtain ⟨⟨b, g', hg', e⟩, hb⟩ := hsurj ⟨g, hg⟩
  have hb' : b.1 = g := congrArg Subtype.val hb
  exact ⟨g', hg', hb' ▸ e⟩

end

theorem sub_closed : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (N : Type) [AddCommGroup N] [Fintype N] [DecidableEq N], ∀ AA : HopfOrder (C := C) R N, ∀ (N' : Type) [AddCommGroup N'] [Fintype N'] [DecidableEq N'], ∀ (A' : HopfOrder (C := C) R N') (j : N →+ N'), (∀ g ∈ A'.carrier, (fun x => g (j x)) ∈ AA.carrier) → (∀ g ∈ AA.carrier, (∀ k ∈ j.ker, g k = 0) → g ∈ (augIdeal A'.carrier).map (LinearMap.funLeft R C (j : N → N')) * AA.carrier) → A'.carrier.map (LinearMap.funLeft R C (j : N → N')) = invFun AA.carrier j.ker := by
  intro p _ C _ _ _ v R _ _ hv _ N _ _ _ AA N' _ _ _ A' j h1 hker
  classical
  apply le_antisymm
  · rintro _ ⟨g, hg, rfl⟩
    refine ⟨h1 g hg, fun x k hk => ?_⟩
    change g (j (x + k)) = g (j x)
    rw [map_add (f := _), AddMonoidHom.mem_ker.1 hk, add_zero]
  have : Fintype (N ⧸ j.ker) := Fintype.ofFinite _
  obtain ⟨-, ⟨AQ, hAQ⟩, -⟩ := h2 C R v hv N j.ker AA
  obtain ⟨f, hf, hfree⟩ := exists_coset_basis hv AA j.ker
  rw [← hAQ] at hfree
  let J := (augIdeal A'.carrier).map
    (LinearMap.funLeft R C (QuotientAddGroup.kerLift j : N ⧸ j.ker → N')) * AQ.carrier
  have hi1 : ∀ g ∈ A'.carrier, (fun x => g (QuotientAddGroup.kerLift j x)) ∈ AQ.carrier := by
    intro g hg
    rw [hAQ]
    exact h1 g hg
  have hJ : J ≤ AQ.carrier := by
    refine Submodule.mul_le.2 ?_
    rintro _ ⟨g, hg, rfl⟩ c hc
    exact AQ.mul_mem _ _ (hi1 g hg.1) hc
  have hco : ∀ g ∈ (augIdeal A'.carrier).map (LinearMap.funLeft R C (j : N → N')) * AA.carrier,
      ∃ b : j.ker → (N ⧸ j.ker → C), (∀ k, b k ∈ J) ∧
        g = ∑ k, pullQ (R := R) j.ker (b k) * f k := by
    intro g hg
    refine Submodule.mul_induction_on hg ?_ ?_
    · rintro _ ⟨g, hg, rfl⟩ c hc
      obtain ⟨b, ⟨hb, rfl⟩, -⟩ := hfree c hc
      choose b' hb' e using hb
      refine ⟨fun k => _ * b' k, fun k => Submodule.mul_mem_mul ⟨g, hg, rfl⟩ (hb' k), ?_⟩
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [← e k, ← mul_assoc]
      rfl
    · rintro _ _ ⟨a, ha, rfl⟩ ⟨b, hb, rfl⟩
      refine ⟨a + b, fun k => J.add_mem (ha k) (hb k), ?_⟩
      simp only [Pi.add_apply, map_add (f := _), add_mul, Finset.sum_add_distrib]
  have hmain := pull_eq hv.hom_inj AQ A' (QuotientAddGroup.kerLift j) hi1 (by
    intro g hg hg0
    have hg' : pullQ (R := R) j.ker g ∈ AA.carrier := by rw [hAQ] at hg; exact hg
    have hm := AA.mul_mem _ _ hg' (hf 0)
    obtain ⟨b, hb, e⟩ := hco _ (hker _ hm fun k hk => by
      change g (k : N ⧸ j.ker) * _ = 0
      rw [(QuotientAddGroup.eq_zero_iff _).2 hk, hg0, zero_mul])
    have hu := (hfree _ hm).unique
      (y₁ := fun k => pullQ (R := R) j.ker (b k))
      (y₂ := fun k => if k = 0 then pullQ (R := R) j.ker g else 0)
      ⟨fun k => ⟨_, hJ (hb k), rfl⟩, e⟩
      ⟨fun k => by
        by_cases hk : k = 0
        · rw [if_pos hk]; exact ⟨g, hg, rfl⟩
        · rw [if_neg hk]; exact Submodule.zero_mem _, by simp⟩
    have h0 := congrFun hu 0
    rw [if_pos rfl] at h0
    have : b 0 = g := by
      funext q
      obtain ⟨x, rfl⟩ := QuotientAddGroup.mk_surjective q
      exact congrFun h0 x
    exact this ▸ hb 0)
  intro g hg
  obtain ⟨g', hg', rfl⟩ := mem_map_comap_pullbackQuotient AA j.ker hg.1 fun x k => hg.2 x k k.2
  rw [← hAQ] at hg'
  obtain ⟨a, ha, rfl⟩ := hmain hg'
  exact ⟨a, ha, rfl⟩

end PositivityTheory.HtPt.Rh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.TensorSpanLe =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderPullbackAlongHom =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderPullbackAlongHom", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.TensorSpanLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

alias _root_.GlobalTheory.CompanionTheory.Relay.hopf_order_pullback_along_hom := _root_.PositivityTheory.HtPt.Rh.sub_closed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderPullbackAlongHom =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFiniteFlatSubgroup =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFiniteFlatSubgroup", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsFinFlatSub\npublic import Mathlib.Basic.NNReal.Defs\npublic import Mathlib.RingTheory.Valuation.Integers\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\npublic import Mathlib.RingTheory.Flat.TorsionFree\nimport ReciprocityTheory.DualLattices.CotangentSurjective\nimport ReciprocityTheory.DualLattices.TensorSpan\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.CompanionTheory.Relay.torsion_points_finite_flat_subgroup : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (G : Over (Spec (CommRingCat.of R))) [GrpObj G] [IsCommMonObj G], ∀ (T : TorsRep G p) (N : Type) [AddCommGroup N] [Fintype N] [DecidableEq N] (pt : N → (sp (R₀ := R) R ⟶ G)), IsTorsPts G p pt → ∀ K : AddSubgroup N, IsFinFlatSub G (T.A ⧸ vanIdeal T pt K) (spMap (Ideal.Quotient.mkₐ R (vanIdeal T pt K)) ≫ T.y) := by
  classical
  intro p _ C _ _ _ v R _ _ hv hp G _ _ T N _ _ _ pt hpt K
  haveI : IsDomain R := Function.Injective.isDomain (algebraMap R C) hv.hom_inj
  haveI : ValuationRing R := ValuationRing.iff_dvd_total.mpr ⟨fun a b => by
    rcases le_total (v (algebraMap R C a)) (v (algebraMap R C b)) with h | h
    · exact Or.inr (hv.dvd_of_le h)
    · exact Or.inl (hv.dvd_of_le h)⟩
  haveI : IsLocalRing R := ValuationRing.isLocalRing R
  haveI : IsBezout R := ValuationRing.instIsBezout
  haveI : Module.Finite R T.A := T.fin
  set I : Ideal T.A := vanIdeal T pt (K : Set N) with hI
  have hpts : ∀ x : N, pt x ^ p = 1 := fun x => (hpt.range (pt x)).mpr ⟨x, rfl⟩
  choose ev hev using fun x : N => (T.univ R (pt x) (hpts x)).exists
  have huniq : ∀ (x : N) (φ : T.A →ₐ[R] R), spMap φ ≫ T.y = pt x → φ = ev x :=
    fun x φ h => (T.univ R (pt x) (hpts x)).unique h (hev x)
  have memI : ∀ a : T.A, a ∈ I ↔ ∀ k ∈ K, ev k a = 0 := by
    intro a
    constructor
    · intro ha k hk
      have ha' : ∀ k ∈ (K : Set N), ∀ φ : T.A →ₐ[R] R, spMap φ ≫ T.y = pt k → φ a = 0 := ha
      exact ha' k hk (ev k) (hev k)
    · intro ha
      show ∀ k ∈ (K : Set N), ∀ φ : T.A →ₐ[R] R, spMap φ ≫ T.y = pt k → φ a = 0
      intro k hk φ hφ
      rw [huniq k φ hφ]
      exact ha k hk
  obtain ⟨evbar, hevbar⟩ : ∃ e : K → ((T.A ⧸ I) →ₐ[R] R),
      ∀ k, (e k).comp (Ideal.Quotient.mkₐ R I) = ev k :=
    ⟨fun k => Ideal.Quotient.liftₐ I (ev k) (fun a ha => (memI a).mp ha k k.2),
      fun k => Ideal.Quotient.liftₐ_comp _ _ _⟩
  have hsep1 : ∀ b : T.A ⧸ I, (∀ k : K, evbar k b = 0) → b = 0 := by
    intro b hb
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mkₐ_surjective R I b
    rw [Ideal.Quotient.mkₐ_eq_mk, Ideal.Quotient.eq_zero_iff_mem, memI]
    intro k hk
    have h1 := hb ⟨k, hk⟩
    rw [← AlgHom.comp_apply, hevbar] at h1
    exact h1
  have htors : Submodule.torsion R (T.A ⧸ I) = ⊥ := by
    rw [eq_bot_iff]
    intro b hb
    obtain ⟨r, hr⟩ := (Submodule.mem_torsion_iff b).mp hb
    rw [Submodule.mem_bot]
    refine hsep1 b fun k => ?_
    have h1 := congrArg (evbar k) hr
    rw [map_zero, Submonoid.smul_def, map_smul, smul_eq_mul] at h1
    exact (mul_eq_zero.mp h1).resolve_left (nonZeroDivisors.coe_ne_zero r)
  haveI : Module.Flat R (T.A ⧸ I) := (Module.Flat.flat_iff_torsion_eq_bot_of_isBezout).mpr htors
  haveI : Module.Finite R (T.A ⧸ I) :=
    Module.Finite.of_surjective (Ideal.Quotient.mkₐ R I).toLinearMap (Ideal.Quotient.mkₐ_surjective R I)
  haveI : Module.Free R (T.A ⧸ I) := Module.free_of_flat_of_isLocalRing
  have h0 : pt 0 = 1 := mul_left_cancel (a := pt 0) (by rw [_root_.mul_one, ← hpt.add, add_zero])
  have hneg : ∀ x, pt (-x) = (pt x)⁻¹ := fun x =>
    eq_inv_of_mul_eq_one_left (by rw [← hpt.add, neg_add_cancel, h0])
  have hE : ∀ k : K, spMap (evbar k) ≫ spMap (Ideal.Quotient.mkₐ R I) ≫ T.y = pt k := by
    intro k
    rw [← Category.assoc, ReciprocityTheory.ChartRestriction.G.Chart.spMap_comp, hevbar, hev]
  have hpowA : ∀ {X : Over (Spec (CommRingCat.of R))} (f : X ⟶ sp (R₀ := R) T.A), (f ≫ T.y) ^ p = 1 :=
    fun f => by rw [← CategoryTheory.MonObj.comp_pow, T.y_p, CategoryTheory.MonObj.comp_one]
  have hu : (spMap (Ideal.Quotient.mkₐ R I) ≫ T.y) ^ p = 1 := hpowA _
  have hpowc : ∀ {X : Over (Spec (CommRingCat.of R))} (f : X ⟶ sp (R₀ := R) (T.A ⧸ I)),
      (f ≫ spMap (Ideal.Quotient.mkₐ R I) ≫ T.y) ^ p = 1 :=
    fun f => by rw [← CategoryTheory.MonObj.comp_pow, hu, CategoryTheory.MonObj.comp_one]
  obtain ⟨Λ, hΛt⟩ : ∃ L : K → K → (TensorProduct R (T.A ⧸ I) (T.A ⧸ I) →ₐ[R] R),
      ∀ k1 k2 x y, L k1 k2 (TensorProduct.tmul R x y) = evbar k1 x * evbar k2 y :=
    ⟨fun k1 k2 => Algebra.TensorProduct.lift (evbar k1) (evbar k2) (fun _ _ => Commute.all _ _),
      fun _ _ _ _ => Algebra.TensorProduct.lift_tmul _ _ _ _ _⟩
  have hΛL : ∀ k1 k2, (Λ k1 k2).comp Algebra.TensorProduct.includeLeft = evbar k1 := fun k1 k2 =>
    AlgHom.ext fun b => by simp [hΛt]
  have hΛR : ∀ k1 k2, (Λ k1 k2).comp Algebra.TensorProduct.includeRight = evbar k2 := fun k1 k2 =>
    AlgHom.ext fun b => by simp [hΛt]
  have hι : Function.Injective (Pi.algHom R (fun _ : K => R) evbar).toLinearMap := by
    set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
    intro b hb
    exact hsep1 b fun k => by simpa using congrFun hb k
  have key : ∀ (w : TensorProduct R (T.A ⧸ I) (T.A ⧸ I)) (k1 k2 : K),
      (Pi.algHom R (fun _ : K => R) evbar).toLinearMap
        (TensorProduct.piScalarRight R R (T.A ⧸ I) K
          (((Pi.algHom R (fun _ : K => R) evbar).toLinearMap.lTensor (T.A ⧸ I)) w) k2) k1 =
        Λ k1 k2 w := by
    intro w k1 k2
    induction w using TensorProduct.induction_on with
    | zero => simp
    | tmul x y => simp [hΛt, TensorProduct.piScalarRight_apply, mul_comm]
    | add x y hx hy => simp only [map_add (f := _), Pi.add_apply, hx, hy]
  have hsep2 : ∀ w : TensorProduct R (T.A ⧸ I) (T.A ⧸ I), (∀ k1 k2 : K, Λ k1 k2 w = 0) → w = 0 := by
    intro w hw
    have h1 : TensorProduct.piScalarRight R R (T.A ⧸ I) K
        (((Pi.algHom R (fun _ : K => R) evbar).toLinearMap.lTensor (T.A ⧸ I)) w) = 0 := by
      funext k2
      apply hι
      funext k1
      rw [key, hw]
      simp
    rw [LinearEquiv.map_eq_zero_iff] at h1
    exact (injective_iff_map_eq_zero _).mp
      (Module.Flat.lTensor_preserves_injective_linearMap _ hι) w h1
  refine ⟨inferInstance, inferInstance, ?_, ?_, ?_, ?_⟩
  · intro S _ _ φ φ' hφ
    have e1 : spMap (φ.comp (Ideal.Quotient.mkₐ R I)) ≫ T.y =
        spMap (φ'.comp (Ideal.Quotient.mkₐ R I)) ≫ T.y := by
      rw [← ReciprocityTheory.ChartRestriction.G.Chart.spMap_comp, ← ReciprocityTheory.ChartRestriction.G.Chart.spMap_comp, Category.assoc,
        Category.assoc, hφ]
    have e2 := (T.univ S _ (hpowA (spMap (φ.comp (Ideal.Quotient.mkₐ R I))))).unique rfl e1.symm
    refine AlgHom.ext fun b => ?_
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mkₐ_surjective R I b
    exact DFunLike.congr_fun e2 a
  · intro S _ _
    refine ⟨(Algebra.ofId R S).comp (evbar 0), ?_⟩
    rw [← ReciprocityTheory.ChartRestriction.G.Chart.spMap_comp, Category.assoc, hE]
    show spMap (Algebra.ofId R S) ≫ pt 0 = 1
    rw [h0, CategoryTheory.MonObj.comp_one]
  · have hm : ((spMap (Algebra.TensorProduct.includeLeft : (T.A ⧸ I) →ₐ[R] TensorProduct R (T.A ⧸ I) (T.A ⧸ I)) ≫
          spMap (Ideal.Quotient.mkₐ R I) ≫ T.y) *
        (spMap (Algebra.TensorProduct.includeRight : (T.A ⧸ I) →ₐ[R] TensorProduct R (T.A ⧸ I) (T.A ⧸ I)) ≫
          spMap (Ideal.Quotient.mkₐ R I) ≫ T.y)) ^ p = 1 := by
      rw [mul_pow, hpowc, hpowc, _root_.one_mul]
    obtain ⟨ψ0, hψ0⟩ := (T.univ _ _ hm).exists
    have hψI : ∀ a ∈ I, ψ0 a = 0 := by
      intro a ha
      refine hsep2 _ fun k1 k2 => ?_
      have e : spMap ((Λ k1 k2).comp ψ0) ≫ T.y = pt ((k1 : N) + k2) := by
        rw [← ReciprocityTheory.ChartRestriction.G.Chart.spMap_comp, Category.assoc, hψ0, CategoryTheory.MonObj.comp_mul,
          ← Category.assoc (spMap (Λ k1 k2)) (spMap Algebra.TensorProduct.includeLeft),
          ReciprocityTheory.ChartRestriction.G.Chart.spMap_comp, hΛL, hE,
          ← Category.assoc (spMap (Λ k1 k2)) (spMap Algebra.TensorProduct.includeRight),
          ReciprocityTheory.ChartRestriction.G.Chart.spMap_comp, hΛR, hE, hpt.add]
      rw [← AlgHom.comp_apply, huniq _ _ e]
      exact (memI a).mp ha _ (K.add_mem k1.2 k2.2)
    intro S _ _ φ φ'
    have hLR : (Algebra.TensorProduct.lift φ φ' (fun _ _ => Commute.all _ _)).comp
        Algebra.TensorProduct.includeRight = φ' := AlgHom.ext fun b => by simp
    refine ⟨(Algebra.TensorProduct.lift φ φ' (fun _ _ => Commute.all _ _)).comp
      (Ideal.Quotient.liftₐ I ψ0 hψI), ?_⟩
    rw [← ReciprocityTheory.ChartRestriction.G.Chart.spMap_comp, Category.assoc,
      ← Category.assoc (spMap (Ideal.Quotient.liftₐ I ψ0 hψI)), ReciprocityTheory.ChartRestriction.G.Chart.spMap_comp,
      Ideal.Quotient.liftₐ_comp, hψ0, CategoryTheory.MonObj.comp_mul]
    rw [← Category.assoc (spMap (Algebra.TensorProduct.lift φ φ' (fun _ _ => Commute.all _ _)))
        (spMap Algebra.TensorProduct.includeLeft),
      ReciprocityTheory.ChartRestriction.G.Chart.spMap_comp, Algebra.TensorProduct.lift_comp_includeLeft,
      ← Category.assoc (spMap (Algebra.TensorProduct.lift φ φ' (fun _ _ => Commute.all _ _)))
        (spMap Algebra.TensorProduct.includeRight),
      ReciprocityTheory.ChartRestriction.G.Chart.spMap_comp, hLR]
  · have hinv : ((spMap (Ideal.Quotient.mkₐ R I) ≫ T.y)⁻¹) ^ p = 1 := by rw [inv_pow, hu, inv_one]
    obtain ⟨ψ0, hψ0⟩ := (T.univ (T.A ⧸ I) _ hinv).exists
    have hψI : ∀ a ∈ I, ψ0 a = 0 := by
      intro a ha
      refine hsep1 _ fun k => ?_
      have e : spMap ((evbar k).comp ψ0) ≫ T.y = pt (-(k : N)) := by
        rw [← ReciprocityTheory.ChartRestriction.G.Chart.spMap_comp, Category.assoc, hψ0, CategoryTheory.GrpObj.comp_inv,
          hE, hneg]
      rw [← AlgHom.comp_apply, huniq _ _ e]
      exact (memI a).mp ha _ (K.neg_mem k.2)
    intro S _ _ φ
    refine ⟨φ.comp (Ideal.Quotient.liftₐ I ψ0 hψI), ?_⟩
    rw [← ReciprocityTheory.ChartRestriction.G.Chart.spMap_comp, Category.assoc,
      ← Category.assoc (spMap (Ideal.Quotient.liftₐ I ψ0 hψI)), ReciprocityTheory.ChartRestriction.G.Chart.spMap_comp,
      Ideal.Quotient.liftₐ_comp, hψ0, CategoryTheory.GrpObj.comp_inv, inv_mul_cancel]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFiniteFlatSubgroup =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFiniteFlatSubgroupStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFiniteFlatSubgroupStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsFinFlatSub\npublic import Mathlib.Basic.NNReal.Defs\npublic import Mathlib.RingTheory.Valuation.Integers\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFiniteFlatSubgroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\nimport ReciprocityTheory.DualLattices.CotangentSurjective\nimport ReciprocityTheory.DualLattices.TensorSpan\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.T.torsion_points_finite_flat_subgroup : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (G : Over (Spec (CommRingCat.of R))) [GrpObj G] [IsCommMonObj G], ∀ (T : TorsRep G p) (N : Type) [AddCommGroup N] [Fintype N] [DecidableEq N] (pt : N → (sp (R₀ := R) R ⟶ G)), IsTorsPts G p pt → ∀ K : AddSubgroup N, IsFinFlatSub G (T.A ⧸ vanIdeal T pt K) (spMap (Ideal.Quotient.mkₐ R (vanIdeal T pt K)) ≫ T.y) := by
  first | exact @GlobalTheory.CompanionTheory.Relay.torsion_points_finite_flat_subgroup
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFiniteFlatSubgroupStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsHomomorphismCompatible =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsHomomorphismCompatible", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsFinFlatSub\npublic import Mathlib.RingTheory.Valuation.Integers\npublic import ReciprocityTheory.DualLattices.TensorSpan\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RfTors\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\nimport ReciprocityTheory.DualLattices.CotangentSurjective\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.CompanionTheory.Relay.torsion_points_homomorphism_compatible : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (G : Over (Spec (CommRingCat.of R))) [GrpObj G] [IsCommMonObj G], ∀ (G' : Over (Spec (CommRingCat.of R))) [GrpObj G'] [IsCommMonObj G'], ∀ (T : TorsRep G p) (N : Type) [AddCommGroup N] [Fintype N] [DecidableEq N] (pt : N → (sp (R₀ := R) R ⟶ G)), IsTorsPts G p pt → ∀ (T' : TorsRep G' p) (N' : Type) [AddCommGroup N'] [Fintype N'] [DecidableEq N'] (pt' : N' → (sp (R₀ := R) R ⟶ G')), IsTorsPts G' p pt' → ∀ j : G ⟶ G', IsMonHom j → ∀ K : AddSubgroup N, (∀ (S : Type) [CommRing S] [Algebra R S] (z : sp (R₀ := R) S ⟶ G), z ≫ j = 1 ↔ ∃ φ : (T.A ⧸ vanIdeal T pt K) →ₐ[R] S, spMap φ ≫ (spMap (Ideal.Quotient.mkₐ R (vanIdeal T pt K)) ≫ T.y) = z) → ∀ jN : N →+ N', (∀ x, pt' (jN x) = pt x ≫ j) → jN.ker = K ∧ ∀ g ∈ torsFun C T pt, (∀ k ∈ jN.ker, g k = 0) → g ∈ (augIdeal (torsFun C T' pt')).map (LinearMap.funLeft R C (jN : N → N')) * torsFun C T pt := by
  intro p _ C _ _ _ v R _ _ hv _ G _ _ G' _ _ T N _ _ _ pt hpt T' N' _ _ _ pt' hpt' j hj K hK jN hjN
  haveI := hj
  classical
  have hinj : Function.Injective (algebraMap R C) := hv.hom_inj
  have hpow : ∀ x, (pt x) ^ p = 1 := fun x => (hpt.range _).2 ⟨x, rfl⟩
  have hpow' : ∀ x, (pt' x) ^ p = 1 := fun x => (hpt'.range _).2 ⟨x, rfl⟩
  choose φ hφ hφu using fun x => T.univ R (pt x) (hpow x)
  choose φ' hφ' hφu' using fun x => T'.univ R (pt' x) (hpow' x)
  have h0' : pt' 0 = 1 := by
    have h := hpt'.add 0 0
    rw [add_zero] at h
    simpa using h.symm
  have hyp : (T.y ≫ j) ^ p = 1 := by
    rw [← MonObj.pow_comp, T.y_p, MonObj.one_comp]
  obtain ⟨ψ, hψ, -⟩ := T'.univ T.A (T.y ≫ j) hyp
  have hcomp : ∀ x, (φ x).comp ψ = φ' (jN x) := by
    intro x
    apply hφu'
    rw [← Chart.spMap_comp ψ (φ x), Category.assoc, hψ, ← Category.assoc, hφ x, hjN]
  have hker : ∀ x, jN x = 0 ↔ pt x ≫ j = 1 := by
    intro x
    rw [← hjN, ← h0']
    exact hpt'.inj.eq_iff.symm
  have hfac : ∀ x, pt x ≫ j = 1 ↔ ∀ a ∈ vanIdeal T pt (K : Set N), φ x a = 0 := by
    intro x
    rw [hK R (pt x)]
    constructor
    · rintro ⟨χ, hχ⟩ a ha
      have e : χ.comp (Ideal.Quotient.mkₐ R (vanIdeal T pt (K : Set N))) = φ x := by
        apply hφu
        rw [← Chart.spMap_comp, Category.assoc]
        exact hχ
      rw [← e, AlgHom.comp_apply, Ideal.Quotient.mkₐ_eq_mk, Ideal.Quotient.eq_zero_iff_mem.mpr ha, map_zero]
    · intro h
      refine ⟨Ideal.Quotient.liftₐ _ (φ x) h, ?_⟩
      rw [← Category.assoc, Chart.spMap_comp, Ideal.Quotient.liftₐ_comp]
      exact hφ x
  have hK1 : jN.ker = K := by
    ext x
    rw [AddMonoidHom.mem_ker, hker, hfac]
    constructor
    · intro h
      by_contra hx
      have hne : ∀ k ∈ K, ∃ c : T.A, φ k c ≠ φ x c := by
        intro k hk
        by_contra hall
        push_neg at hall
        have e1 : φ k = φ x := AlgHom.ext hall
        have e2 : pt k = pt x := by rw [← hφ k, ← hφ x, e1]
        exact hx (hpt.inj e2 ▸ hk)
      choose! c hc using hne
      let a : T.A := ∏ k ∈ Finset.univ.filter (· ∈ K), (c k - algebraMap R T.A (φ k (c k)))
      have ha : a ∈ vanIdeal T pt (K : Set N) := by
        rw [PositivityTheory.HtPt.Rf.mem_vanIdeal T hφ]
        intro k hk
        simp only [a, map_prod]
        apply Finset.prod_eq_zero (i := k)
        · simpa using hk
        · simp
      have h1 := h a ha
      apply_fun algebraMap R C at h1
      simp only [a, map_prod, map_sub, AlgHom.commutes, map_zero] at h1
      rw [Finset.prod_eq_zero_iff] at h1
      obtain ⟨k, hk, hk0⟩ := h1
      rw [sub_eq_zero] at hk0
      exact hc k (by simpa using hk) (hinj (by simpa using hk0)).symm
    · intro hx a ha
      exact (PositivityTheory.HtPt.Rf.mem_vanIdeal T hφ _ a).1 ha x hx
  refine ⟨hK1, ?_⟩
  intro g hg hgK
  rw [PositivityTheory.HtPt.Rf.mem_torsFun T hφ] at hg
  obtain ⟨a, rfl⟩ := hg
  have haI : a ∈ vanIdeal T pt (K : Set N) := by
    rw [PositivityTheory.HtPt.Rf.mem_vanIdeal T hφ]
    intro k hk
    have h3 := hgK k (by rw [hK1]; exact hk)
    exact hinj (by rw [map_zero]; exact h3)
  obtain ⟨J, hJ⟩ : ∃ J : Ideal T.A, J = Ideal.map ψ (RingHom.ker (φ' 0)) := ⟨_, rfl⟩
  have hIJ : vanIdeal T pt (K : Set N) ≤ J := by
    have hzp : (spMap (Ideal.Quotient.mkₐ R J) ≫ T.y) ^ p = 1 := by
      rw [← MonObj.comp_pow, T.y_p, MonObj.comp_one]
    have hqψ : (Ideal.Quotient.mkₐ R J).comp ψ = (Algebra.ofId R (T.A ⧸ J)).comp (φ' 0) := by
      apply AlgHom.ext
      intro b
      have hb : b - algebraMap R T'.A (φ' 0 b) ∈ RingHom.ker (φ' 0) := by
        simp [RingHom.mem_ker]
      rw [AlgHom.comp_apply, AlgHom.comp_apply, Ideal.Quotient.mkₐ_eq_mk, Algebra.ofId_apply,
        ← Ideal.Quotient.mk_algebraMap, Ideal.Quotient.eq, ← AlgHom.commutes ψ, ← map_sub, hJ]
      exact Ideal.mem_map_of_mem _ hb
    have hz1 : (spMap (Ideal.Quotient.mkₐ R J) ≫ T.y) ≫ j = 1 := by
      calc (spMap (Ideal.Quotient.mkₐ R J) ≫ T.y) ≫ j
          = spMap (Ideal.Quotient.mkₐ R J) ≫ spMap ψ ≫ T'.y := by rw [Category.assoc, hψ]
        _ = spMap ((Ideal.Quotient.mkₐ R J).comp ψ) ≫ T'.y := by
          rw [← Category.assoc, Chart.spMap_comp]
        _ = spMap ((Algebra.ofId R (T.A ⧸ J)).comp (φ' 0)) ≫ T'.y := by rw [hqψ]
        _ = spMap (Algebra.ofId R (T.A ⧸ J)) ≫ pt' 0 := by
          rw [← Chart.spMap_comp, Category.assoc, hφ' 0]
        _ = 1 := by rw [h0', MonObj.comp_one]
    obtain ⟨χ, hχ⟩ := (hK (T.A ⧸ J) (spMap (Ideal.Quotient.mkₐ R J) ≫ T.y)).1 hz1
    obtain ⟨w, -, hu⟩ := T.univ (T.A ⧸ J) (spMap (Ideal.Quotient.mkₐ R J) ≫ T.y) hzp
    have e : χ.comp (Ideal.Quotient.mkₐ R (vanIdeal T pt (K : Set N))) = Ideal.Quotient.mkₐ R J := by
      rw [hu _ rfl]
      apply hu
      rw [← Chart.spMap_comp, Category.assoc]
      exact hχ
    intro b hb
    have h2 := AlgHom.congr_fun e b
    simp only [AlgHom.comp_apply, Ideal.Quotient.mkₐ_eq_mk] at h2
    rw [Ideal.Quotient.eq_zero_iff_mem.mpr hb, map_zero] at h2
    exact Ideal.Quotient.eq_zero_iff_mem.mp h2.symm
  have ha : a ∈ J := hIJ haI
  rw [hJ] at ha
  change a ∈ Submodule.span T.A (⇑ψ '' (RingHom.ker (φ' 0) : Set T'.A)) at ha
  clear hgK haI hIJ hJ
  suffices H : ∀ c : T.A, (fun x => algebraMap R C (φ x (c * a))) ∈
      (augIdeal (torsFun C T' pt')).map (LinearMap.funLeft R C (jN : N → N')) * torsFun C T pt by
    have H1 := H 1
    rwa [_root_.one_mul] at H1
  induction ha using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨b, hb, rfl⟩ := hx
    intro c
    have e : (fun y => algebraMap R C (φ y (c * ψ b))) =
        (fun y => algebraMap R C (φ y (ψ b))) * (fun y => algebraMap R C (φ y c)) := by
      funext y
      simp [map_mul, mul_comm]
    rw [e]
    apply Submodule.mul_mem_mul
    · rw [Submodule.mem_map]
      refine ⟨fun y => algebraMap R C (φ' y b), ?_, ?_⟩
      · rw [augIdeal, Submodule.mem_inf, LinearMap.mem_ker, LinearMap.proj_apply]
        refine ⟨(PositivityTheory.HtPt.Rf.mem_torsFun T' hφ' _).2 ⟨b, rfl⟩, ?_⟩
        rw [SetLike.mem_coe, RingHom.mem_ker] at hb
        simp only [hb, map_zero]
      · funext y
        rw [LinearMap.funLeft_apply, ← hcomp y, AlgHom.comp_apply]
    · exact (PositivityTheory.HtPt.Rf.mem_torsFun T hφ _).2 ⟨c, rfl⟩
  | zero =>
    intro c
    simp only [mul_zero, map_zero]
    exact Submodule.zero_mem _
  | add x y _ _ hx hy =>
    intro c
    have h4 := Submodule.add_mem _ (hx c) (hy c)
    convert h4 using 1
    funext z
    simp [mul_add]
  | smul r x _ hx =>
    intro c
    convert hx (c * r) using 1
    funext z
    rw [smul_eq_mul, _root_.mul_assoc]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsHomomorphismCompatible =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsHomomorphismCompatibleStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsHomomorphismCompatibleStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsFinFlatSub\npublic import Mathlib.RingTheory.Valuation.Integers\npublic import ReciprocityTheory.DualLattices.TensorSpan\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsHomomorphismCompatible\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\nimport ReciprocityTheory.DualLattices.CotangentSurjective\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.T.torsion_points_homomorphism_compatible : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (G : Over (Spec (CommRingCat.of R))) [GrpObj G] [IsCommMonObj G], ∀ (G' : Over (Spec (CommRingCat.of R))) [GrpObj G'] [IsCommMonObj G'], ∀ (T : TorsRep G p) (N : Type) [AddCommGroup N] [Fintype N] [DecidableEq N] (pt : N → (sp (R₀ := R) R ⟶ G)), IsTorsPts G p pt → ∀ (T' : TorsRep G' p) (N' : Type) [AddCommGroup N'] [Fintype N'] [DecidableEq N'] (pt' : N' → (sp (R₀ := R) R ⟶ G')), IsTorsPts G' p pt' → ∀ j : G ⟶ G', IsMonHom j → ∀ K : AddSubgroup N, (∀ (S : Type) [CommRing S] [Algebra R S] (z : sp (R₀ := R) S ⟶ G), z ≫ j = 1 ↔ ∃ φ : (T.A ⧸ vanIdeal T pt K) →ₐ[R] S, spMap φ ≫ (spMap (Ideal.Quotient.mkₐ R (vanIdeal T pt K)) ≫ T.y) = z) → ∀ jN : N →+ N', (∀ x, pt' (jN x) = pt x ≫ j) → jN.ker = K ∧ ∀ g ∈ torsFun C T pt, (∀ k ∈ jN.ker, g k = 0) → g ∈ (augIdeal (torsFun C T' pt')).map (LinearMap.funLeft R C (jN : N → N')) * torsFun C T pt := by
  first | exact @GlobalTheory.CompanionTheory.Relay.torsion_points_homomorphism_compatible
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsHomomorphismCompatibleStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsIsogenyHopfOrder =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsIsogenyHopfOrder", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsFinFlatSub\npublic import Mathlib.Basic.NNReal.Defs\npublic import Mathlib.RingTheory.Valuation.Integers\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\nimport ReciprocityTheory.DualLattices.CotangentSurjective\nimport ReciprocityTheory.DualLattices.TensorSpan\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.CompanionTheory.Relay.torsion_points_isogeny_hopf_order : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (G : Over (Spec (CommRingCat.of R))) [GrpObj G] [IsCommMonObj G], ∀ (G' : Over (Spec (CommRingCat.of R))) [GrpObj G'] [IsCommMonObj G'], ∀ (T : TorsRep G p) (N : Type) [AddCommGroup N] [Fintype N] [DecidableEq N] (pt : N → (sp (R₀ := R) R ⟶ G)), IsTorsPts G p pt → ∀ (T' : TorsRep G' p) (N' : Type) [AddCommGroup N'] [Fintype N'] [DecidableEq N'] (pt' : N' → (sp (R₀ := R) R ⟶ G')), IsTorsPts G' p pt' → ∀ j : G ⟶ G', IsMonHom j → ∃ (jN : N →+ N') (ψ : T'.A →ₐ[R] T.A), (∀ x, pt' (jN x) = pt x ≫ j) ∧ spMap ψ ≫ T'.y = T.y ≫ j ∧ ∀ g ∈ torsFun C T' pt', (fun x => g (jN x)) ∈ torsFun C T pt := by
  intro p _ C _ _ _ v R _ _ _ _ G _ _ G' _ _ T N _ _ _ pt hpt T' N' _ _ _ pt' hpt' j hj
  haveI := hj
  have hex : ∀ x : N, ∃ y : N', pt' y = pt x ≫ j := by
    intro x
    apply (hpt'.range _).1
    have hx : (pt x) ^ p = 1 := (hpt.range _).2 ⟨x, rfl⟩
    rw [← MonObj.pow_comp, hx, MonObj.one_comp]
  choose f hf using hex
  have hadd : ∀ x y : N, f (x + y) = f x + f y := by
    intro x y
    apply hpt'.inj
    rw [hpt'.add, hf, hf, hf, hpt.add, MonObj.mul_comp]
  let jN : N →+ N' :=
    { toFun := f
      map_zero' := by
        have h := hadd 0 0
        rw [add_zero] at h
        simpa using h.symm
      map_add' := hadd }
  have hyp : (T.y ≫ j) ^ p = 1 := by
    rw [← MonObj.pow_comp, T.y_p, MonObj.one_comp]
  obtain ⟨ψ, hψ, -⟩ := T'.univ T.A (T.y ≫ j) hyp
  refine ⟨jN, ψ, fun x => hf x, hψ, ?_⟩
  intro g hg
  obtain ⟨a, ha⟩ := hg
  refine ⟨ψ a, ?_⟩
  intro x φ hφ
  have key : spMap (φ.comp ψ) ≫ T'.y = pt' (jN x) := by
    rw [← Chart.spMap_comp ψ φ]
    change (spMap φ ≫ spMap ψ) ≫ T'.y = pt' (f x)
    rw [Category.assoc, hψ, ← Category.assoc, hφ, hf]
  exact ha (jN x) (φ.comp ψ) key
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsIsogenyHopfOrder =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsIsogenyHopfOrderStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsIsogenyHopfOrderStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsFinFlatSub\npublic import Mathlib.Basic.NNReal.Defs\npublic import Mathlib.RingTheory.Valuation.Integers\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsIsogenyHopfOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\nimport ReciprocityTheory.DualLattices.CotangentSurjective\nimport ReciprocityTheory.DualLattices.TensorSpan\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.T.torsion_points_isogeny_hopf_order : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (G : Over (Spec (CommRingCat.of R))) [GrpObj G] [IsCommMonObj G], ∀ (G' : Over (Spec (CommRingCat.of R))) [GrpObj G'] [IsCommMonObj G'], ∀ (T : TorsRep G p) (N : Type) [AddCommGroup N] [Fintype N] [DecidableEq N] (pt : N → (sp (R₀ := R) R ⟶ G)), IsTorsPts G p pt → ∀ (T' : TorsRep G' p) (N' : Type) [AddCommGroup N'] [Fintype N'] [DecidableEq N'] (pt' : N' → (sp (R₀ := R) R ⟶ G')), IsTorsPts G' p pt' → ∀ j : G ⟶ G', IsMonHom j → ∃ (jN : N →+ N') (ψ : T'.A →ₐ[R] T.A), (∀ x, pt' (jN x) = pt x ≫ j) ∧ spMap ψ ≫ T'.y = T.y ≫ j ∧ ∀ g ∈ torsFun C T' pt', (fun x => g (jN x)) ∈ torsFun C T pt := by
  first | exact @GlobalTheory.CompanionTheory.Relay.torsion_points_isogeny_hopf_order
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsIsogenyHopfOrderStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianSchemeTorsionAugmentation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianSchemeTorsionAugmentation", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.QuotientByFiniteFlatStatement\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.ZarhinStatement\npublic import Development.AutomorphicSpectrum.Statements.AlgebraStatements.HodgeTateDatumStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsAddEquiv\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GenerationAlongInvariants\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderPullbackAlongHom\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFiniteFlatSubgroupStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsHomomorphismCompatibleStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsHopfOrderStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsIsogenyHopfOrderStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem one_comp_monHom {S : Scheme.{0}} {T G H : Over S} [GrpObj G] [GrpObj H] (f : G ⟶ H)
    [IsMonHom f] : (1 : T ⟶ G) ≫ f = 1 := by
  simp [Hom.one_def]

theorem sub_abelianScheme : QuotientByFiniteFlatStatement → ZarhinStatement →
    HodgeTateDatumStatement → ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C]
    [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R →
    v (p : C) < 1 → IsAdicComplete (Ideal.span {(p : R)}) R →
    ∀ (A : Over (Spec (CommRingCat.of R))) [GrpObj A] (L : LB A.left), IsAbelianScheme A →
    L.IsLB → Out.RelAmple A L → ∀ (T : TorsRep A p) (N : Type) [AddCommGroup N] [Fintype N]
    [DecidableEq N] (pt : N → (sp (R₀ := R) R ⟶ A)), IsTorsPts A p pt →
    ∀ K : AddSubgroup N, GenAF p (torsFun C T pt) K := by
  intro hQ hZ hD p _ C _ _ _ v R _ _ hint hp hc A _ L hA hL hamp T N _ _ _ pt hpt K
  haveI : IsCommMonObj A := hA.comm
  have hsub := GlobalTheory.T.torsion_points_finite_flat_subgroup p C v R hint hp A T N pt hpt K
  obtain ⟨A', _, L', q, hA', hL', hamp', hq, -, -, -, hker⟩ := hQ R A L hA hL hamp _ _ hsub
  obtain ⟨P, i, r, hi, hr, hir⟩ := hZ C v R hint A' L' hA' hL' hamp'
  haveI : IsCommMonObj P.A := P.isAb.comm
  haveI := hq
  haveI := hi
  haveI := hr
  have hj : ∀ (S : Type) [CommRing S] [Algebra R S] (z : sp (R₀ := R) S ⟶ A),
      z ≫ (q ≫ i) = 1 ↔ ∃ φ : (T.A ⧸ vanIdeal T pt K) →ₐ[R] S,
        spMap φ ≫ (spMap (Ideal.Quotient.mkₐ R (vanIdeal T pt K)) ≫ T.y) = z := by
    intro S _ _ z
    rw [← hker S z]
    constructor
    · intro h
      have h1 : (z ≫ q ≫ i) ≫ r = z ≫ q := by simp [hir]
      rw [← h1, h, one_comp_monHom]
    · intro h
      rw [← Category.assoc, h, one_comp_monHom]
  letI : Algebra ℤ_[p] R := (Av.zpLift p R hc).toAlgebra
  obtain ⟨⟨T'⟩, cp, -, -, pt', hpt', -⟩ := hD p C v R hint hp hc P
  have hjm : IsMonHom (q ≫ i) := inferInstance
  obtain ⟨jN, -, hjN, -, hpull⟩ := GlobalTheory.T.torsion_points_isogeny_hopf_order p C v R hint hp A P.A T N pt hpt T' _ pt' hpt'
    (q ≫ i) hjm
  obtain ⟨hK, hid⟩ := GlobalTheory.T.torsion_points_homomorphism_compatible p C v R hint hp A P.A T N pt hpt T' _ pt' hpt' (q ≫ i) hjm K
    hj jN hjN
  obtain ⟨⟨AA, hAA⟩, -⟩ := GlobalTheory.T.torsion_points_hopf_order p C v R hint hp A T N pt hpt
  obtain ⟨⟨AP, hAP⟩, -⟩ := GlobalTheory.T.torsion_points_hopf_order p C v R hint hp P.A T' _ pt' hpt'
  have hinv := _root_.GlobalTheory.CompanionTheory.Relay.hopf_order_pullback_along_hom p C v R hint hp N AA _ AP jN
    (by rw [hAA, hAP]; exact hpull) (by rw [hAA, hAP]; exact hid)
  rw [hAA, hAP, hK] at hinv
  exact _root_.GlobalTheory.CompanionTheory.Ar.GR.genAF_of_map_eq_invFun p C R N _ _ _ jN K hinv (gp_polAV hD p C v R hint hp hc P T' _ pt' hpt').1

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianSchemeTorsionAugmentation =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianSchemeTorsionAugmentationStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianSchemeTorsionAugmentationStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.QuotientByFiniteFlatStatement\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.ZarhinStatement\npublic import Development.AutomorphicSpectrum.Statements.AlgebraStatements.HodgeTateDatumStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianSchemeTorsionAugmentation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.T.abelian_scheme_torsion_augmentation : QuotientByFiniteFlatStatement → ZarhinStatement → HodgeTateDatumStatement → ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → IsAdicComplete (Ideal.span {(p : R)}) R → ∀ (A : Over (Spec (CommRingCat.of R))) [GrpObj A] (L : LB A.left), IsAbelianScheme A → L.IsLB → Out.RelAmple A L → ∀ (T : TorsRep A p) (N : Type) [AddCommGroup N] [Fintype N] [DecidableEq N] (pt : N → (sp (R₀ := R) R ⟶ A)), IsTorsPts A p pt → ∀ K : AddSubgroup N, GenAF p (torsFun C T pt) K := by
  first | exact @GlobalTheory.CompanionTheory.Ar.GR.sub_abelianScheme
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianSchemeTorsionAugmentationStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFinite =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFinite", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsFinFlatSub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\nimport ReciprocityTheory.DualLattices.CotangentSurjective\nimport ReciprocityTheory.DualLattices.TensorSpan\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem tors_pts_finite : ∀ (R : Type) [CommRing R] [IsDomain R] (p : ℕ) (G : Over (Spec (CommRingCat.of R))) [GrpObj G] (T : TorsRep G p) (N : Type) [AddCommGroup N] (pt : N → (sp (R₀ := R) R ⟶ G)), IsTorsPts G p pt → Finite N := by
  intro R _ _ p G _ T N _ pt h
  haveI := T.free
  haveI := T.fin
  have hx : ∀ x, ∃ φ : T.A →ₐ[R] R, spMap φ ≫ T.y = pt x := fun x =>
    (T.univ R (pt x) ((h.range _).2 ⟨x, rfl⟩)).exists
  choose f hf using hx
  refine Finite.of_injective f fun x y e => h.inj ?_
  rw [← hf x, ← hf y, e]

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFinite =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFiniteStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFiniteStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsFinFlatSub\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFinite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\nimport ReciprocityTheory.DualLattices.CotangentSurjective\nimport ReciprocityTheory.DualLattices.TensorSpan\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.T.torsion_points_finite : ∀ (R : Type) [CommRing R] [IsDomain R] (p : ℕ) (G : Over (Spec (CommRingCat.of R))) [GrpObj G] (T : TorsRep G p) (N : Type) [AddCommGroup N] (pt : N → (sp (R₀ := R) R ⟶ G)), IsTorsPts G p pt → Finite N := by
  first | exact @GlobalTheory.CompanionTheory.Ar.GR.tors_pts_finite
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFiniteStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientZarhinHodgeTateSubquotient =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientZarhinHodgeTateSubquotient", "h": "module\n\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.QuotientByFiniteFlatStatement\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.ZarhinStatement\npublic import Development.AutomorphicSpectrum.Statements.AlgebraStatements.HodgeTateDatumStatement\npublic import Development.AutomorphicSpectrum.Statements.AlgebraStatements.OrdinaryCurveStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianSchemeTorsionAugmentationStatement\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderRetractRestriction\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsFiniteStatement\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsHopfOrderStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem subquotientStatement_of_quotient_zarhin_hodgeTate
    (hQ : QuotientByFiniteFlatStatement) (hZ : ZarhinStatement) (hH : HodgeTateDatumStatement) :
    SubquotientStatement := by
  intro p _ C _ _ _ v R _ _ hv hp hc N _ M hM K
  obtain ⟨A, _, L, hA, hL, hamp, T, N', _, pt, hpt, i, π, hiπ, hst, rfl⟩ := hM
  classical
  haveI : IsDomain R := Function.Injective.isDomain (algebraMap R C) hv.hom_inj
  haveI : IsCommMonObj A := hA.comm
  haveI : Finite N' := GlobalTheory.T.torsion_points_finite R p A T N' pt hpt
  letI : Fintype N' := Fintype.ofFinite N'
  have hi : Function.Injective i := Function.LeftInverse.injective (g := π) hiπ
  haveI : Finite N := Finite.of_injective i hi
  letI : Fintype N := Fintype.ofFinite N
  obtain ⟨⟨AA, hAA⟩, -⟩ := GlobalTheory.T.torsion_points_hopf_order p C v R hv hp A T N' pt hpt
  have hgen := GlobalTheory.T.abelian_scheme_torsion_augmentation hQ hZ hH p C v R hv hp hc A L hA hL hamp T N' pt hpt (K.map i)
  have hret := _root_.GlobalTheory.CompanionTheory.Ar.GR.ret_hopf_factor p C v R hv hp N' AA N i π hiπ (by rw [hAA]; exact hst)
  rw [← hAA]
  exact hret.2.2 K (by rw [hAA]; exact hgen)

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientZarhinHodgeTateSubquotient =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientZarhinHodgeTateSubquotientStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientZarhinHodgeTateSubquotientStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.QuotientByFiniteFlatStatement\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.ZarhinStatement\npublic import Development.AutomorphicSpectrum.Statements.AlgebraStatements.HodgeTateDatumStatement\npublic import Development.AutomorphicSpectrum.Statements.AlgebraStatements.OrdinaryCurveStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientZarhinHodgeTateSubquotient\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.QuotientZarhinHodgeTateSubquotientStatement =====
