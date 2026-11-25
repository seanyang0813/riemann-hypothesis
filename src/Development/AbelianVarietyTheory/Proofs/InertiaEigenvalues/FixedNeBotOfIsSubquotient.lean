module

public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsSubquotientDetRepParInd
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientOfEquiv
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientRelativeJacquetBlockLevi
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JacquetModuleInStagesRefinedBlocks
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PiExteriorTensorFlattenedIndexEquivNested
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RelativeJacquetPiExteriorTensorEquivNormalized
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.PiExteriorTensorIsSubquotientOfForall
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsIrreducibleTensorOfJacquetSubquotient
public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HasFiniteLengthOfIsIrreducible
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivMultiProdOne
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SupercuspidalSupportUniqueGL
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ParabolicInductionTensorProductHasFiniteLength
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsReadingLaws
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.EmbedsLevelZeroDepthZero
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsJLeviMulJPlus
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IwahoriProjSurjective
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.DepthZeroInduction
import Mathlib.Algebra.Module.StablyFree.Basic
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
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivOfRangeEq
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ParIndJacPlacing
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.NotInSupportOfSubsingleton
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsCovBySubmodule
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SchurAdmissibleAlt
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SubsingletonJacquetOfPerm
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EmptyPiTensorIsSubquotientJacquetModuleDegreeZer, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientJacquetModuleRefineTensor, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientJacquetModuleSingleBlockSelf, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSubquotientJacquetModuleOfSupercuspidalSup, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JacquetProUnipotentRadicalFixedVectorsLift, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixedNeBotOfIsSubquotient

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EmptyPiTensorIsSubquotientJacquetModuleDegreeZer =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EmptyPiTensorIsSubquotientJacquetModuleDegreeZer", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsSubquotientDetRepParInd\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivOfRangeEq\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL ValuativeRel

namespace GlobalTheory

theorem piTensor_isSubquotient_jac_degZero : ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
    (N : ℕ), N = 0 → ∀ (V : Type) [AddCommGroup V] [Module ℂ V] [Nontrivial V]
    (π : Representation ℂ (GL (Fin N) k) V) (d : Fin 0 → ℕ) (X : Fin 0 → Type) [∀ a, AddCommGroup (X a)]
    [∀ a, Module ℂ (X a)] (ρ : ∀ a, Representation ℂ (GL (Fin (d a)) k) (X a)) (e : (Σ a, Fin (d a)) ≃ Fin N),
    IsSubquotient (piTensor ρ) (jac e π) := by
  intro k _ _ _ _ N hN V _ _ _ π d X _ _ ρ e
  subst hN
  have hK : twKer π (unipRad k e) 1 = ⊥ := by
    refine le_bot_iff.1 (Submodule.span_le.2 ?_)
    rintro w ⟨n, v, rfl⟩
    have h1 : (n : GL (Fin 0) k) = 1 := Subsingleton.elim _ _
    simp [h1]
  obtain ⟨v, hv⟩ := exists_ne (0 : V)
  have hx : (Submodule.Quotient.mk v : Jacquet π (unipRad k e)) ≠ 0 := by
    rw [Ne, Submodule.Quotient.mk_eq_zero, hK, Submodule.mem_bot]; exact hv
  obtain ⟨φ, hφ⟩ : ∃ φ : Module.Dual ℂ (Jacquet π (unipRad k e)),
      φ (Submodule.Quotient.mk v) ≠ 0 := by
    by_contra h
    push_neg at h
    exact hx ((Module.forall_dual_apply_eq_zero_iff ℂ _).1 h)
  let L : Jacquet π (unipRad k e) →ₗ[ℂ] PiTensorProduct ℂ X :=
    (PiTensorProduct.isEmptyEquiv (Fin 0)).symm.toLinearMap ∘ₗ φ
  refine IsSubquotient.of_surjective ⟨L, fun g => ?_⟩ ?_
  · have hg : g = 1 := Subsingleton.elim _ _
    subst hg
    rw [map_one, map_one]
    rfl
  · have hsurj : Function.Surjective φ := fun c =>
      ⟨(c / φ (Submodule.Quotient.mk v)) • Submodule.Quotient.mk v, by simp [hφ]⟩
    exact (PiTensorProduct.isEmptyEquiv (Fin 0)).symm.surjective.comp hsurj

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EmptyPiTensorIsSubquotientJacquetModuleDegreeZer =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientJacquetModuleRefineTensor =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientJacquetModuleRefineTensor", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsSubquotientDetRepParInd\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientOfEquiv\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientRelativeJacquetBlockLevi\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JacquetModuleInStagesRefinedBlocks\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PiExteriorTensorFlattenedIndexEquivNested\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RelativeJacquetPiExteriorTensorEquivNormalized\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.PiExteriorTensorIsSubquotientOfForall\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivOfRangeEq\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL ValuativeRel
open GlobalTheory.JacStages

namespace GlobalTheory.JacStages

theorem isSubquotient_jac_refine : ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
    (n s : ℕ) (d : Fin s → ℕ) (e : (Σ a, Fin (d a)) ≃ Fin n) (V : Type) [AddCommGroup V] [Module ℂ V]
    (π : Representation ℂ (GL (Fin n) k) V), IsSmooth π →
    ∀ (X : Fin s → Type) [∀ a, AddCommGroup (X a)] [∀ a, Module ℂ (X a)]
    (ρ : ∀ a, Representation ℂ (GL (Fin (d a)) k) (X a)), (∀ a, IsSmooth (ρ a)) →
    IsSubquotient (piTensor ρ) (jac e π) →
    ∀ (t : Fin s → ℕ) (d' : ∀ a, Fin (t a) → ℕ) (e' : ∀ a, (Σ b, Fin (d' a b)) ≃ Fin (d a))
    (Y : ∀ a, Fin (t a) → Type) [∀ a b, AddCommGroup (Y a b)] [∀ a b, Module ℂ (Y a b)]
    (ρ' : ∀ a b, Representation ℂ (GL (Fin (d' a b)) k) (Y a b)),
    (∀ a, IsSubquotient (piTensor (ρ' a)) (jac (e' a) (ρ a))) →
    ∃ E : (Σ c : Fin (∑ a, t a), Fin (d' (finSigmaFinEquiv.symm c).1 (finSigmaFinEquiv.symm c).2)) ≃ Fin n,
      IsSubquotient (piTensor fun c => ρ' (finSigmaFinEquiv.symm c).1 (finSigmaFinEquiv.symm c).2) (jac E π) := by
  intro k _ _ _ _ n s d e V _ _ π hπ X _ _ ρ _ hsub t d' e' Y _ _ ρ' hρ'
  refine ⟨refinePlace e e', ?_⟩
  refine isSubquotient_of_comp (flatHom fun a b => GL (Fin (d' a b)) k) (flatHom_surjective _) ?_
  obtain ⟨φR⟩ := _root_.GlobalTheory.JacStages.piTensor_flatHom_equiv s t (fun a b => GL (Fin (d' a b)) k) Y ρ'
  obtain ⟨φT⟩ := _root_.GlobalTheory.JacStages.relJacD_piTensor_equiv k s d t d' e' X ρ
  obtain ⟨φS⟩ := _root_.GlobalTheory.JacStagesProof.jac_refinePlace_equiv k s n d e t d' e' V π
  have h1 : IsSubquotient (piTensor fun a => piTensor (ρ' a)) (piTensor fun a => jac (e' a) (ρ a)) :=
    GlobalTheory.piTensor_isSubquotient_of_forall _ _ _ _ _ _ hρ'
  have h3 := _root_.GlobalTheory.JacStagesExact.isSubquotient_relJacD k s d t d' e' _ _ (piTensor ρ) (jac e π) (isSmooth_jac e hπ) hsub
  exact (isSubquotient_of_equiv φR).trans (h1.trans ((isSubquotient_of_equiv φT.symm).trans
    (h3.trans (isSubquotient_of_equiv φS.symm))))

end GlobalTheory.JacStages
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientJacquetModuleRefineTensor =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientJacquetModuleSingleBlockSelf =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientJacquetModuleSingleBlockSelf", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsIrreducibleTensorOfJacquetSubquotient\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.ParIndJacPlacing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL ValuativeRel

noncomputable section

namespace GlobalTheory.SingleBlockJac

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

theorem leviEmb_oneBlock (N : ℕ) (g : Levi k fun _ : Fin 1 => Fin N) :
    leviEmb k (GlobalTheory.JacTensor.oneBlock N) g = g 0 := by
  ext i j
  exact leviEmb_apply_same k (GlobalTheory.JacTensor.oneBlock N) g 0 i j

theorem deltaHalf_one (N : ℕ) (g : Levi k fun _ : Fin 1 => Fin N) :
    deltaHalf k (fun _ : Fin 1 => Fin N) g = 1 := by
  rw [deltaHalf_apply]
  refine Finset.prod_eq_one fun a _ => ?_
  have hm : modExp (fun _ : Fin 1 => Fin N) a = 0 := by
    unfold modExp
    rw [Finset.sum_eq_zero, Finset.sum_eq_zero, sub_zero]
    · intro c hc
      exact absurd (Finset.mem_filter.1 hc).2 (by rw [Subsingleton.elim c a]; exact lt_irrefl a)
    · intro c hc
      exact absurd (Finset.mem_filter.1 hc).2 (by rw [Subsingleton.elim c a]; exact lt_irrefl a)
  rw [hm]
  simp

theorem eq_one_of_mem_unipRad_oneBlock {N : ℕ} (e : (Σ _ : Fin 1, Fin N) ≃ Fin N) {g : GL (Fin N) k}
    (hg : g ∈ unipRad k e) : g = 1 := by
  obtain ⟨-, h2⟩ := mem_unipRad.1 hg
  refine Units.ext (Matrix.ext fun x y => ?_)
  obtain ⟨⟨a, i⟩, rfl⟩ := e.surjective x
  obtain ⟨⟨b, j⟩, rfl⟩ := e.surjective y
  obtain rfl : a = b := Subsingleton.elim a b
  rw [h2 a i j]
  simp [Matrix.one_apply, e.injective.eq_iff]

theorem twKer_eq_bot {V : Type} [AddCommGroup V] [Module ℂ V] {N : ℕ} (e : (Σ _ : Fin 1, Fin N) ≃ Fin N)
    (π : Representation ℂ (GL (Fin N) k) V) : twKer π (unipRad k e) 1 = ⊥ := by
  refine (Submodule.span_eq_bot).2 ?_
  rintro w ⟨n, v, rfl⟩
  rw [eq_one_of_mem_unipRad_oneBlock e n.2]
  simp

def toJac {V : Type} [AddCommGroup V] [Module ℂ V] (N : ℕ) (π : Representation ℂ (GL (Fin N) k) V) :
    (piTensor fun _ : Fin 1 => π).IntertwiningMap (jac (GlobalTheory.JacTensor.oneBlock N) π) where
  toLinearMap := Submodule.mkQ _ ∘ₗ (PiTensorProduct.subsingletonEquiv (R := ℂ) (s := fun _ : Fin 1 => V) (0 : Fin 1)).toLinearMap
  isIntertwining' g := by
    refine LinearMap.ext fun x => ?_
    induction x using PiTensorProduct.induction_on with
    | smul_tprod c x =>
      simp only [LinearMap.comp_apply, map_smul, piTensor_tprod, LinearEquiv.coe_coe,
        PiTensorProduct.subsingletonEquiv_apply_tprod, Submodule.mkQ_apply]
      rw [jac_mk, deltaHalf_one, leviEmb_oneBlock]
      simp
    | add x y hx hy =>
      simp only [map_add (f := _)] at hx hy ⊢
      rw [hx, hy]

theorem toJac_injective {V : Type} [AddCommGroup V] [Module ℂ V] (N : ℕ) (π : Representation ℂ (GL (Fin N) k) V) :
    Function.Injective (toJac N π) := by
  intro x y h
  have h' : (Submodule.mkQ (twKer π (unipRad k (GlobalTheory.JacTensor.oneBlock N)) 1))
      (PiTensorProduct.subsingletonEquiv (R := ℂ) (s := fun _ : Fin 1 => V) (0 : Fin 1) x) =
      (Submodule.mkQ (twKer π (unipRad k (GlobalTheory.JacTensor.oneBlock N)) 1))
      (PiTensorProduct.subsingletonEquiv (R := ℂ) (s := fun _ : Fin 1 => V) (0 : Fin 1) y) := h
  rw [Submodule.mkQ_apply, Submodule.mkQ_apply, Submodule.Quotient.eq, twKer_eq_bot,
    Submodule.mem_bot, sub_eq_zero] at h'
  exact (PiTensorProduct.subsingletonEquiv (R := ℂ) (s := fun _ : Fin 1 => V) (0 : Fin 1)).injective h'

end GlobalTheory.SingleBlockJac

theorem GlobalTheory.SingleBlockJac.isSubquotient_piTensor_jac : ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
    (N : ℕ) (V : Type) [AddCommGroup V] [Module ℂ V] (π : Representation ℂ (GL (Fin N) k) V)
    (e : (Σ _ : Fin 1, Fin N) ≃ Fin N), IsSubquotient (piTensor fun _ : Fin 1 => π) (jac e π) := by
  intro k _ _ _ _ N V _ _ π e
  obtain ⟨φ⟩ := (GlobalTheory.SmGL.Placing.parInd_jac_placing k (Fin 1) (Fin N) (fun _ => Fin N)
    (GlobalTheory.JacTensor.oneBlock N) e V).2 π
  exact IsSubquotient.of_injective ((φ.toIntertwiningMap).comp (GlobalTheory.SingleBlockJac.toJac N π))
    (φ.toLinearEquiv.injective.comp (GlobalTheory.SingleBlockJac.toJac_injective N π))
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientJacquetModuleSingleBlockSelf =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSubquotientJacquetModuleOfSupercuspidalSup =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSubquotientJacquetModuleOfSupercuspidalSup", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HasFiniteLengthOfIsIrreducible\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivMultiProdOne\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsSubquotientDetRepParInd\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EmptyPiTensorIsSubquotientJacquetModuleDegreeZer\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientJacquetModuleRefineTensor\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientJacquetModuleSingleBlockSelf\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SupercuspidalSupportUniqueGL\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ParabolicInductionTensorProductHasFiniteLength\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsReadingLaws\nimport Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.NotInSupportOfSubsingleton\nimport Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsIrreducibleTensorOfJacquetSubquotient\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsCovBySubmodule\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.SchurAdmissibleAlt\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.SubsingletonJacquetOfPerm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL ValuativeRel

noncomputable section

namespace GlobalTheory.CuspQuot

theorem stage : ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
    (n s : ℕ) (d : Fin s → ℕ) (e : (Σ a, Fin (d a)) ≃ Fin n) (V : Type) [AddCommGroup V] [Module ℂ V]
    (π : Representation ℂ (GL (Fin n) k) V), IsSmooth π →
    ∀ (X : Fin s → Type) [∀ a, AddCommGroup (X a)] [∀ a, Module ℂ (X a)]
    (ρ : ∀ a, Representation ℂ (GL (Fin (d a)) k) (X a)), (∀ a, IsSmooth (ρ a)) →
    IsSubquotient (piTensor ρ) (jac e π) →
    ∀ (t : Fin s → ℕ) (d' : ∀ a, Fin (t a) → ℕ) (e' : ∀ a, (Σ b, Fin (d' a b)) ≃ Fin (d a))
    (Y : ∀ a, Fin (t a) → Type) [∀ a b, AddCommGroup (Y a b)] [∀ a b, Module ℂ (Y a b)]
    (ρ' : ∀ a b, Representation ℂ (GL (Fin (d' a b)) k) (Y a b)),
    (∀ a, IsSubquotient (piTensor (ρ' a)) (jac (e' a) (ρ a))) →
    ∃ E : (Σ c : Fin (∑ a, t a), Fin (d' (finSigmaFinEquiv.symm c).1 (finSigmaFinEquiv.symm c).2)) ≃ Fin n,
      IsSubquotient (piTensor fun c => ρ' (finSigmaFinEquiv.symm c).1 (finSigmaFinEquiv.symm c).2) (jac E π) := _root_.GlobalTheory.JacStages.isSubquotient_jac_refine

theorem oneBlock : ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
    (N : ℕ) (V : Type) [AddCommGroup V] [Module ℂ V] (π : Representation ℂ (GL (Fin N) k) V)
    (e : (Σ _ : Fin 1, Fin N) ≃ Fin N), IsSubquotient (piTensor fun _ : Fin 1 => π) (jac e π) := _root_.GlobalTheory.SingleBlockJac.isSubquotient_piTensor_jac

open GlobalTheory.Published GlobalTheory.LocGL.SupportUnique

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

theorem finiteRing_sq_sub_mul_sq_eq_of_card (hG : GeometricLemma) (hBZ : BernsteinZelevinskyFiniteness) (hZ : ZelevinskyPolynomialRing) (N : ℕ) :
    ∀ (x : IrrGL (k := k)), x.1 = N → ∀ s : Multiset (IrrGL (k := k)), HasSupport x.rep s →
      ∃ (r : ℕ) (u : Fin r → IrrGL (k := k)) (e : (Σ a, Fin (u a).1) ≃ Fin x.1),
        (∀ a, u a ∈ s) ∧ IsSubquotient (piTensor fun a => (u a).rep) (jac e x.rep) := by
  induction N using Nat.strong_induction_on with
  | _ N ih =>
    rintro x rfl s hs
    haveI := GlobalTheory.SmGL.Model.nontrivial_of_isIrreducible x.2.rep.irr
    rcases Nat.eq_zero_or_pos x.1 with h0 | hpos
    · haveI : IsEmpty (Fin x.1) := by rw [h0]; infer_instance
      exact ⟨0, Fin.elim0, Equiv.equivOfIsEmpty _ _, fun a => a.elim0,
        _root_.GlobalTheory.piTensor_isSubquotient_jac_degZero k x.1 h0 _ x.rep _ _ _ _⟩
    by_cases hc : IsCuspidal x.rep
    · rw [eq_singleton_of_isCusp ⟨hpos, hc⟩ hs]
      exact ⟨1, fun _ => x, GlobalTheory.JacTensor.oneBlock x.1, fun _ => Multiset.mem_singleton_self x,
        oneBlock k x.1 _ x.rep _⟩
    obtain ⟨r, d, e, hU, hJ⟩ : ∃ (r : ℕ) (d : Fin r → ℕ) (e : (Σ a, Fin (d a)) ≃ Fin x.1), unipRad k e ≠ ⊥ ∧
        ¬ Subsingleton (Jacquet x.rep (unipRad k e)) := by
      by_contra! hn
      exact hc ⟨x.2.rep.smooth, hn⟩
    obtain ⟨Y, _, _, τ, hτ, hτs⟩ := GlobalTheory.IrrSubquot.exists_irreducible_subquotient _ _ (jac e x.rep)
      (not_subsingleton_iff_nontrivial.1 hJ)
    have hτsm : IsSmooth τ := hτs.isSmooth (isSmooth_jac e x.2.rep.smooth)
    have hy : ∀ j, ∃ y : IrrRep (GL (Fin (d j)) k), IsSubquotient y.ρ
        (τ.comp (MonoidHom.mulSingle (fun j => GL (Fin (d j)) k) j) : Representation ℂ (GL (Fin (d j)) k) Y) := by
      intro j
      obtain ⟨X, _, _, υ, hυ, hυs⟩ := GlobalTheory.IrrSubquot.exists_irreducible_subquotient _ _
        (τ.comp (MonoidHom.mulSingle (fun j => GL (Fin (d j)) k) j))
        (GlobalTheory.SmGL.Model.nontrivial_of_isIrreducible hτ)
      exact ⟨⟨X, υ, hυs.isSmooth (isSmooth_comp hτsm _
        (continuous_mulSingle (A := fun j => GL (Fin (d j)) k) j)), hυ⟩, hυs⟩
    choose y hy using hy
    obtain ⟨t, ht, rfl⟩ := exists_sum_of_jac hG hZ hs e hτ hτs y hy
    have hlt : ∀ j, d j < x.1 := by
      intro j
      have hN : ∑ a, d a = x.1 := by simpa using Fintype.card_congr e
      obtain ⟨a, ha, hda⟩ : ∃ a, a ≠ j ∧ 0 < d a := by
        obtain ⟨p, q, hpq⟩ := GlobalTheory.SmGL.CuspMax.unipRad_ne_bot_iff.1 hU
        obtain ⟨⟨a, p⟩, rfl⟩ := e.surjective p
        obtain ⟨⟨b, q⟩, rfl⟩ := e.surjective q
        rw [blk_apply, blk_apply] at hpq
        by_cases haj : a = j
        · exact ⟨b, fun hb => hpq.ne (haj.trans hb.symm), q.pos⟩
        · exact ⟨a, haj, p.pos⟩
      have h1 := Finset.add_le_sum (s := Finset.univ) (f := d) (fun _ _ => Nat.zero_le _) (Finset.mem_univ a)
        (Finset.mem_univ j) ha
      omega
    let z : Fin r → IrrGL (k := k) := fun j => IrrGL.of (y j).ρ (y j).smooth (y j).irr
    have hrec := fun j => ih (d j) (hlt j) (z j) rfl (t j) ((ht j).of_equiv (IrrGL.equivOf _ _ _))
    choose T u E hu hsub using hrec

    let πI : GlobalTheory.SplitRead.Irr k x.1 := ⟨x.2.rep.V, x.rep, x.2.rep.smooth, x.2.rep.irr⟩
    obtain ⟨σ, hσ⟩ := GlobalTheory.JacTensor.exists_irr_tensor_of_isSubquotient_jac hG k x.1 πI r d e Y τ hτ hτs
    have hSch : ∀ a, ∀ φ : (σ a).V →ₗ[ℂ] (σ a).V, (∀ g v, φ ((σ a).π g v) = (σ a).π g (φ v)) →
        ∃ c : ℂ, φ = c • LinearMap.id := fun a =>
      _root_.GlobalTheory.SchurAdmissibility.schur_admissible _ (GlobalTheory.SplitWeil.KO k (Fin (d a))) GlobalTheory.SplitFlip.isOpen_KO
        GlobalTheory.SplitFlip.isCompact_KO (σ a).V (σ a).π (σ a).irr ((hBZ k).1 (Fin (d a)) (σ a).V (σ a).π (σ a).smooth (σ a).irr)
    have hirr : (piTensor fun a => (σ a).π).IsIrreducible :=
      GlobalTheory.ProdFiniteLength.piTensor_isIrreducible_of_schur _ (fun a => (σ a).irr) hSch
    obtain ⟨φ⟩ := nonempty_equiv_of_isSubquotient hτ hirr hσ
    have hyσ : ∀ j, Nonempty ((σ j).π.Equiv (y j).ρ) := fun j =>
      nonempty_equiv_of_isSubquotient (y j).irr (σ j).irr
        (isSubquotient_factor (fun a => (σ a).π) j (y j).irr ((hy j).trans
          (isSubquotient_comp (.of_injective φ.symm.toIntertwiningMap φ.symm.toLinearEquiv.injective) _)))
    have ψ := fun j => (hyσ j).some
    let χ : (piTensor fun j => (z j).rep).Equiv τ :=
      (piTensorEquiv fun j => ((ψ j).trans (IrrGL.equivOf (y j).ρ (y j).smooth (y j).irr)).symm).trans φ
    have hz : IsSubquotient (piTensor fun j => (z j).rep) (jac e x.rep) :=
      (IsSubquotient.of_injective χ.toIntertwiningMap χ.toLinearEquiv.injective).trans hτs
    obtain ⟨E', hE'⟩ := _root_.GlobalTheory.JacStages.isSubquotient_jac_refine k x.1 r d e _ x.rep x.2.rep.smooth _ (fun j => (z j).rep) (fun j => (z j).2.rep.smooth) hz
      T (fun a b => (u a b).1) E _ (fun a b => (u a b).rep) hsub
    refine ⟨∑ a, T a, fun c => u (finSigmaFinEquiv.symm c).1 (finSigmaFinEquiv.symm c).2, E', fun c => ?_, hE'⟩
    exact Multiset.mem_of_le (Finset.single_le_sum (f := t) (fun _ _ => Multiset.zero_le _)
      (Finset.mem_univ (finSigmaFinEquiv.symm c).1)) (hu _ _)

theorem exists_isSubquotient_jac_of_hasSupport : GlobalTheory.Published.GeometricLemma → GlobalTheory.Published.BernsteinZelevinskyFiniteness → GlobalTheory.Published.ZelevinskyPolynomialRing → ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] [CharZero k] (x : IrrGL (k := k)) (s : Multiset (IrrGL (k := k))), HasSupport x.rep s → ∃ (r : ℕ) (u : Fin r → IrrGL (k := k)) (e : (Σ a, Fin (u a).1) ≃ Fin x.1), (∀ a, u a ∈ s) ∧ IsSubquotient (piTensor fun a => (u a).rep) (jac e x.rep) :=
  fun hG hBZ hZ _ _ _ _ _ _ x s hs => finiteRing_sq_sub_mul_sq_eq_of_card hG hBZ hZ x.1 x rfl s hs

end GlobalTheory.CuspQuot
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSubquotientJacquetModuleOfSupercuspidalSup =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JacquetProUnipotentRadicalFixedVectorsLift =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JacquetProUnipotentRadicalFixedVectorsLift", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.EmbedsLevelZeroDepthZero\nimport Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsJLeviMulJPlus\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IwahoriProjSurjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL ValuativeRel Matrix Topology Filter

namespace GlobalTheory.LocGL.ProRadOnto

section Abstract

variable {G V : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [AddCommGroup V] [Module ℂ V]

theorem exists_fixed_mk_eq {π : Representation ℂ G V} (hπ : IsAdmissible π) {I N : Subgroup G}
    (ho : IsOpen (I : Set G)) (hc : IsCompact (I : Set G)) {M : Type} [Group M] (s : M →* G)
    (hs : ∀ m, s m ∈ Subgroup.normalizer (N : Set G)) (M₀ : Subgroup M) (hM₀ : ∀ d ∈ M₀, s d ∈ I)
    (C : Set G) (hfac : ∀ g ∈ I, ∃ d ∈ M₀, ∃ x ∈ N, ∃ c ∈ C, g = s d * x * c)
    (hcon : ∀ U ∈ 𝓝 (1 : G), ∃ t : M, (∀ d ∈ M₀, d * t = t * d) ∧ ∀ c ∈ C, (s t)⁻¹ * c * s t ∈ U)
    (y : Jacquet π N) (hy : y ∈ fixed (jacquet π N s hs) M₀) :
    ∃ v ∈ fixed π I, (twKer π N 1).mkQ v = y := by
  set p := (twKer π N 1).mkQ with hp
  set σ := jacquet π N s hs with hσ
  have hps : ∀ m v, p (π (s m) v) = σ m (p v) := fun _ _ => rfl
  have hpN : ∀ x ∈ N, ∀ v, p (π x v) = p v := fun x hx v =>
    (Submodule.Quotient.eq _).2 (Submodule.subset_span ⟨⟨x, hx⟩, v, by simp⟩)
  obtain ⟨u, rfl⟩ : ∃ u, p u = y := Submodule.mkQ_surjective _ y
  obtain ⟨t, htc, ht⟩ := hcon _ ((ho.inter (hπ.1 u)).mem_nhds ⟨one_mem I, by simp⟩)
  set Y := (fixed π I).map p with hY
  haveI := hπ.2 I ho hc
  have key : ∀ w, (∀ c ∈ C, π ((s t)⁻¹ * c * s t) w = w) → (∀ d ∈ M₀, σ d (p w) = p w) →
      σ t (p w) ∈ Y := by
    intro w h1 h2
    refine IwahoriOnto.exists_fixed_map_eq hπ.1 hc p (π (s t) w) fun g hg => ?_
    obtain ⟨d, hd, x, hx, c, hcC, rfl⟩ := hfac g hg
    have h3 : π c (π (s t) w) = π (s t) w := by
      conv_rhs => rw [← h1 c hcC]
      rw [← Module.End.mul_apply, ← map_mul, ← Module.End.mul_apply, ← map_mul]
      congr 2
      group
    rw [map_mul, map_mul, Module.End.mul_apply, Module.End.mul_apply, h3, hps, hpN x hx, hps,
      ← Module.End.mul_apply, ← map_mul, htc d hd, map_mul, Module.End.mul_apply, h2 d hd]
  have hinj : Function.Injective (σ t) := by
    intro a b hab
    have := congrArg (σ t⁻¹) hab
    simpa [← Module.End.mul_apply, ← map_mul] using this
  have hst : ∀ z ∈ Y, σ t z ∈ Y := by
    rintro _ ⟨w, hw, rfl⟩
    have hw' : ∀ g ∈ I, π g w = w := fun g hg => by simpa using hw ⟨g, hg⟩
    exact key w (fun c hcC => hw' _ (ht c hcC).1) fun d hd => by rw [← hps, hw' _ (hM₀ d hd)]
  have hsurj : Function.Surjective ((σ t).restrict hst) :=
    LinearMap.surjective_of_injective fun a b hab => Subtype.ext (hinj (congrArg Subtype.val hab))
  obtain ⟨z, hz⟩ := hsurj ⟨_, key u (fun c hcC => (ht c hcC).2) fun d hd => by simpa using hy ⟨d, hd⟩⟩
  have : (z : Jacquet π N) = p u := hinj (congrArg Subtype.val hz)
  exact this ▸ z.2

end Abstract

section Local

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
  {α n : Type} {m : α → Type} [Fintype α] [LinearOrder α] [∀ a, Fintype (m a)] [∀ a, DecidableEq (m a)]
  [Fintype n] [DecidableEq n]

theorem jMinus_contract (e : (Σ a, m a) ≃ n) : ∀ U ∈ 𝓝 (1 : GL n k), ∃ t : Levi k m,
    (∀ d : Levi k m, d * t = t * d) ∧ ∀ c ∈ jMinus k e, (leviEmb k e t)⁻¹ * c * leviEmb k e t ∈ U := by
  intro U hU
  let r : α → ℕ := fun a => (Finset.univ.filter fun b => b < a).card
  have hr : ∀ a b, b < a → r b < r a := fun a b hab =>
    Finset.card_lt_card ⟨fun l hl => by
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hl ⊢
      exact hl.trans hab, fun hs => by simpa using hs (show b ∈ _ by simpa using hab)⟩
  let S : kˣ → Levi k m := fun x a => Units.map (Matrix.scalar (m a)).toMonoidHom (x ^ r a)⁻¹
  let T : kˣ → n → kˣ := fun x i => (x ^ r (blk e i))⁻¹
  have hST : ∀ x, leviEmb k e (S x) = diagT k n (T x) := by
    intro x
    ext i j
    obtain ⟨⟨a, i⟩, rfl⟩ := e.surjective i
    obtain ⟨⟨b, j⟩, rfl⟩ := e.surjective j
    rw [val_diagT, diagonal_apply]
    by_cases h : a = b
    · subst h
      rw [leviEmb_apply_same]
      simp [S, T, Matrix.scalar_apply, diagonal_pow, diagonal_apply, inv_pow]
    · rw [leviEmb_apply_ne k e _ h, if_neg fun h' => h (congrArg Sigma.fst (e.injective h'))]
  have hcomm : ∀ x (d : Levi k m), d * S x = S x * d := fun x d => funext fun a => Units.ext
    ((Matrix.scalar_commute _ (fun _ => Commute.all _ _) _).eq).symm
  let F : Filter (kˣ × jMinus k e) := (comap (fun x : kˣ => (x : k)) (𝓝 0)) ×ˢ ⊤
  have hent : ∀ (x : kˣ) (c : GL n k) i j, ((diagT k n (T x))⁻¹ * c * diagT k n (T x)).val i j =
      (x : k) ^ r (blk e i) * c.val i j * ((x : k) ^ r (blk e j))⁻¹ := by
    intro x c i j
    rw [← map_inv, Units.val_mul, Units.val_mul, val_diagT, val_diagT, mul_diagonal, diagonal_mul]
    simp [T]
  have hT : Tendsto (fun p : kˣ × jMinus k e => (diagT k n (T p.1))⁻¹ * p.2.1 * diagT k n (T p.1)) F
      (𝓝 1) := by
    rw [SplitFlip.isEmbedding_val_GL.tendsto_nhds_iff]
    refine tendsto_pi_nhds.2 fun i => tendsto_pi_nhds.2 fun j => ?_
    simp only [Function.comp_def, hent]
    obtain ⟨⟨a, i⟩, rfl⟩ := e.surjective i
    obtain ⟨⟨b, j⟩, rfl⟩ := e.surjective j
    simp only [blk_apply, Units.val_one]
    rcases lt_trichotomy a b with hab | rfl | hab
    · have h0 : ∀ p : kˣ × jMinus k e, (p.2.1 : Matrix n n k) (e ⟨a, i⟩) (e ⟨b, j⟩) = 0 := fun p =>
        (mem_parabLower_iff k).1 ((mem_unipRadLower k).1 p.2.2.1).1 a b i j hab
      simp only [h0, mul_zero, zero_mul, IwahoriFactor.one_ne e hab.ne]
      exact tendsto_const_nhds
    · have h1 : ∀ p : kˣ × jMinus k e, (p.1 : k) ^ r a * (p.2.1 : Matrix n n k) (e ⟨a, i⟩) (e ⟨a, j⟩) *
          ((p.1 : k) ^ r a)⁻¹ = (1 : Matrix n n k) (e ⟨a, i⟩) (e ⟨a, j⟩) := fun p => by
        rw [((mem_unipRadLower k).1 p.2.2.1).2 a i j, IwahoriFactor.one_same, mul_comm, ← mul_assoc,
          inv_mul_cancel₀ (pow_ne_zero _ p.1.ne_zero), one_mul]
      simp only [h1]
      exact tendsto_const_nhds
    · rw [IwahoriFactor.one_ne e hab.ne', (IsValuativeTopology.hasBasis_nhds_zero k).tendsto_right_iff]
      intro γ _
      have h1 : {x : k | valuation k x < γ} ∈ 𝓝 (0 : k) :=
        (IsValuativeTopology.mem_nhds_zero_iff _).2 ⟨γ, fun _ h => h⟩
      have h2 : {x : k | valuation k x < 1} ∈ 𝓝 (0 : k) :=
        (IsValuativeTopology.mem_nhds_zero_iff _).2 ⟨1, fun _ h => h⟩
      filter_upwards [prod_mem_prod (preimage_mem_comap (inter_mem h1 h2)) univ_mem] with p hp
      obtain ⟨l, hl⟩ := Nat.exists_eq_add_of_lt (hr a b hab)
      have hint : valuation k ((p.2.1 : Matrix n n k) (e ⟨a, i⟩) (e ⟨b, j⟩)) ≤ 1 := by
        have := StepData.mem_KOne.1 p.2.2.2 (e ⟨a, i⟩) (e ⟨b, j⟩)
        rw [Matrix.sub_apply, IwahoriFactor.one_ne e hab.ne', sub_zero] at this
        exact this.le
      have : (p.1 : k) ^ r a * (p.2.1 : Matrix n n k) (e ⟨a, i⟩) (e ⟨b, j⟩) * ((p.1 : k) ^ r b)⁻¹ =
          p.1 * (p.1 ^ l * (p.2.1 : Matrix n n k) (e ⟨a, i⟩) (e ⟨b, j⟩)) := by
        rw [hl]; field_simp; ring
      show valuation k _ < _
      rw [this, map_mul, map_mul, map_pow]
      exact (mul_le_of_le_one_right' (mul_le_one' (pow_le_one' hp.1.2.le _) hint)).trans_lt hp.1.1
  haveI : (comap (fun x : kˣ => (x : k)) (𝓝 0)).NeBot := by
    refine comap_neBot fun s hs => ?_
    obtain ⟨γ, hγ⟩ := (IsValuativeTopology.mem_nhds_zero_iff s).1 hs
    obtain ⟨δ, hδ0, hδ⟩ : ∃ δ : ValueGroupWithZero k, δ ≠ 0 ∧ δ < γ :=
      ⟨uniformizer k * γ, by simp, mul_lt_of_lt_one_left γ.zero_lt uniformizer_lt_one⟩
    obtain ⟨x, rfl⟩ := valuation_surjective δ
    exact ⟨Units.mk0 x (by simpa using hδ0), hγ hδ⟩
  obtain ⟨x, hx⟩ := Filter.nonempty_of_mem (mem_prod_top.1 (hT hU))
  exact ⟨S x, hcomm x, fun c hc => by rw [hST]; exact hx ⟨c, hc⟩⟩

end Local

end GlobalTheory.LocGL.ProRadOnto


open GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL ValuativeRel in
theorem GlobalTheory.LocGL.ProRadOnto.exists_proRad_fixed_mk_eq : ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] {α n : Type} [Fintype α] [LinearOrder α] {m : α → Type} [∀ a, Fintype (m a)] [∀ a, DecidableEq (m a)] [Fintype n] [DecidableEq n] (e : (Σ a, m a) ≃ n) {V : Type} [AddCommGroup V] [Module ℂ V] (π : Representation ℂ (GL n k) V), IsAdmissible π → ∀ y : Jacquet π (unipRad k e), y ∈ fixed (jacU e π) (leviKOne k m) → ∃ v ∈ fixed π (proRad k e), (Submodule.Quotient.mk v : Jacquet π (unipRad k e)) = y := by
  intro k _ _ _ _ α n _ _ m _ _ _ _ e V _ _ π hπ y hy
  obtain ⟨v, hv, h⟩ := ProRadOnto.exists_fixed_mk_eq hπ (isOpen_levelPre _) (isCompact_levelPre _) (leviEmb k e)
    (N := unipRad k e) (leviEmb_mem_normalizer k e) (leviKOne k m)
    (fun d hd => jLevi_le_proRad e ⟨d, hd, rfl⟩) (jMinus k e) (fun g hg => by
      obtain ⟨d, ⟨d', hd', hd⟩, u, hu, c, hc, h⟩ := IwahoriFactor.levi_plus_minus e hg
      exact ⟨d', hd', u, hu.1, c, hc, h.trans (by rw [hd])⟩)
    (fun U hU => by
      obtain ⟨t, ht, h⟩ := ProRadOnto.jMinus_contract e U hU
      exact ⟨t, fun d _ => ht d, h⟩) y hy
  exact ⟨v, hv, h⟩
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JacquetProUnipotentRadicalFixedVectorsLift =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixedNeBotOfIsSubquotient =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixedNeBotOfIsSubquotient", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.DepthZeroInduction\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HasFiniteLengthOfIsIrreducible\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.EmbedsLevelZeroDepthZero\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivMultiProdOne\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSubquotientJacquetModuleOfSupercuspidalSup\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JacquetProUnipotentRadicalFixedVectorsLift\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.IwahoriProjSurjective\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL ValuativeRel
open GlobalTheory.Parabolic (mem_fixed)

namespace GlobalTheory.DepthZeroPass

theorem fixed_ne_bot_of_isSubquotient {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
    {V W : Type} [AddCommGroup V] [Module ℂ V] [AddCommGroup W] [Module ℂ W]
    {ρ : Representation ℂ G V} {τ : Representation ℂ G W} (hρ : IsSmooth ρ) (h : IsSubquotient τ ρ)
    {H : Subgroup G} (hH : IsCompact (H : Set G)) (hτ : fixed τ H ≠ ⊥) : fixed ρ H ≠ ⊥ := by
  obtain ⟨S, f, hf⟩ := h
  obtain ⟨w, hw, hw0⟩ := (Submodule.ne_bot_iff _).1 hτ
  obtain ⟨u, rfl⟩ := hf w
  have hS : IsSmooth S.toRepresentation := fun v => by
    have : {g : G | S.toRepresentation g v = v} = {g : G | ρ g (v : V) = v} := by
      ext g
      simp only [Set.mem_setOf_eq, Subtype.ext_iff]
      rfl
    rw [this]
    exact hρ v
  obtain ⟨v, hv, hfv⟩ := IwahoriOnto.exists_fixed_map_eq hS hH f.toLinearMap u fun g hg => by
    have h1 := mem_fixed.1 hw g hg
    show f (S.toRepresentation g u) = f u
    exact (f.isIntertwining _ _ g u).trans h1
  refine (Submodule.ne_bot_iff _).2 ⟨(v : V), mem_fixed.2 fun g hg => ?_, ?_⟩
  · have := mem_fixed.1 hv g hg
    exact congrArg Subtype.val this
  · intro h0
    apply hw0
    have hv0 : v = 0 := Subtype.ext h0
    have hfv' : f v = f u := hfv
    rw [← hfv', hv0, map_zero]

theorem fixed_piTensor_ne_bot {α : Type} [Fintype α] [DecidableEq α] {Γ X : α → Type} [∀ a, Group (Γ a)]
    [∀ a, AddCommGroup (X a)] [∀ a, Module ℂ (X a)] (ρ : ∀ a, Representation ℂ (Γ a) (X a))
    (H : ∀ a, Subgroup (Γ a)) (h : ∀ a, fixed (ρ a) (H a) ≠ ⊥) :
    fixed (piTensor ρ) (Subgroup.pi Set.univ H) ≠ ⊥ := by
  choose v hv hv0 using fun a => (Submodule.ne_bot_iff _).1 (h a)
  choose l hl using fun a => Module.Projective.exists_dual_eq_one ℂ (hv0 a)
  refine (Submodule.ne_bot_iff _).2 ⟨PiTensorProduct.tprod ℂ v, mem_fixed.2 fun g hg => ?_, fun h0 => ?_⟩
  · rw [piTensor_tprod]
    congr 1
    funext a
    exact mem_fixed.1 (hv a) (g a) (hg a trivial)
  · have := congrArg (PiTensorProduct.lift ((MultilinearMap.mkPiAlgebra ℂ α ℂ).compLinearMap l)) h0
    simp [hl] at this

theorem isCompact_leviKOne {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k]
    [IsNonarchimedeanLocalField k] {α : Type} {m : α → Type} [∀ a, Fintype (m a)] [∀ a, DecidableEq (m a)] :
    IsCompact (leviKOne k m : Set (Levi k m)) := by
  rw [leviKOne, Subgroup.coe_pi]
  exact isCompact_univ_pi fun a => levelPre_bot (k := k) (n := m a) ▸ isCompact_levelPre ⊥

theorem depthZeroInduction : GlobalTheory.Published.GeometricLemma → GlobalTheory.Published.BernsteinZelevinskyFiniteness →
    GlobalTheory.Published.ZelevinskyPolynomialRing → GlobalTheory.Published.DepthZeroInduction := by
  intro hG hBZ hZ k _ _ _ _ _ x s hs hfix
  obtain ⟨r, u, e, hu, hsq⟩ := _root_.GlobalTheory.CuspQuot.exists_isSubquotient_jac_of_hasSupport hG hBZ hZ k x s hs
  have hxs : IsSmooth x.rep := x.2.rep.smooth
  have h1 : fixed (piTensor fun a => (u a).rep) (leviKOne k fun a => Fin (u a).1) ≠ ⊥ :=
    fixed_piTensor_ne_bot _ _ fun a => hfix _ (hu a)
  have h2 := fixed_ne_bot_of_isSubquotient (isSmooth_jac e hxs) hsq isCompact_leviKOne h1
  obtain ⟨y, hy1, hy0⟩ := (Submodule.ne_bot_iff _).1 h2
  have hy2 : y ∈ fixed (jacU e x.rep) (leviKOne k fun a => Fin (u a).1) := mem_fixed.2 fun g hg => by
    have h3 := mem_fixed.1 hy1 g hg
    have h4 : deltaHalf k (fun a => Fin (u a).1) g = 1 :=
      deltaHalf_of_mem_leviK fun a _ => StepData.KOne_le_KO (hg a trivial)
    simpa [jac, twist_apply, h4] using h3
  obtain ⟨v, hv, rfl⟩ := _root_.GlobalTheory.LocGL.ProRadOnto.exists_proRad_fixed_mk_eq k e x.rep ((hBZ k).1 _ _ x.rep hxs x.2.rep.irr) y hy2
  refine (Submodule.ne_bot_iff _).2 ⟨v, mem_fixed.2 fun g hg => mem_fixed.1 hv g (KOne_le_proRad e hg), ?_⟩
  rintro rfl
  exact hy0 rfl

end GlobalTheory.DepthZeroPass

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixedNeBotOfIsSubquotient =====
