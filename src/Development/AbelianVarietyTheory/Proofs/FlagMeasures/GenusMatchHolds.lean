module

public import Mathlib.Algebra.Module.Lattice.Full
public import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.SelfDualAt
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.CmFieldSplitCompletelyPlaceStructure
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.DualLatticeLocalCharacterization
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianLatticeLevelLocalDualQuotientLengthOne
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.DualOfDualFrames
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsEqTransposeMulMapOfIdempotent
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.FiniteResidueFieldAdicCompletionIntegers
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IsPrincipalIdealRingSemiLoc
public import Mathlib.NumberTheory.NumberField.Basic
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.AdelicLatticeCarryIffForallPlace
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsAdelicUnitaryOfFiniteSupport
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.IsLocallySelfDualOfHermitianLatticeOfLevel
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LevelMatchIff
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.AdelicColumnLatticeEqSpanPartTransportedFrameStatement
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.StepLevelTLat
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.TransportedColumnLatticeHasLevelAndDualGeneratorStatement
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.FrLink
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
import Mathlib.RingTheory.Coalgebra.CoassocSimps
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.TotallySplit
import Mathlib.RingTheory.WittVector.IsPoly
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Formalism.LocalToGlobal.HermitianForms.IsLocBasis
import Formalism.SatakeDualWeyl.Statement
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.SplitPlaceLatticeComponents
import Formalism.PeriodIntegrals.SplitIntLoc
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SplitPrimeIntegers.ExistsUnitDiff
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsIsUnitFormSelfOfNotMem
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.OmVSDBwdHolds
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.UnitaryDatumLevelPrimeSplitDegreeGramFacts

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsGLConjLatticePairsCovByDvr, Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsLocalUnitaryLatticesOfLevel, Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsLocalUnitaryOfSelfDualAtPlace, Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIntSmulIsIntegral, Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalSpanOfLatticeAtPlaceEqForAlmostAllPlaces, Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianLatticesLevelOneGenus, Development.AbelianVarietyTheory.Proofs.FlagMeasures.GenusMatchHolds

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsGLConjLatticePairsCovByDvr =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsGLConjLatticePairsCovByDvr", "h": "module\n\npublic import Mathlib.Algebra.Module.Lattice.Full\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.CoassocSimps\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.SemilocalFrames.SelfDualAt\nimport Formalism.LocalToGlobal.HermitianForms.IsLocBasis\nimport Formalism.SatakeDualWeyl.Statement\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.UG Formalism.L2.Forms NumberField IsDedekindDomain Matrix GlobalTheory.St.G
open scoped TensorProduct

namespace GlobalTheory.St.G

theorem exists_equiv_ker_prod {O M : Type} [CommRing O] [AddCommGroup M] [Module O M]
    (ψ : M →ₗ[O] O) (hψ : Function.Surjective ψ) :
    ∃ E : M ≃ₗ[O] (LinearMap.ker ψ × O), ∀ x, (E x).2 = ψ x := by
  obtain ⟨x₀, hx₀⟩ := hψ 1
  let p : M →ₗ[O] LinearMap.ker ψ :=
    LinearMap.codRestrict _ (LinearMap.id - LinearMap.toSpanSingleton O M x₀ ∘ₗ ψ)
      (fun x => by simp [hx₀])
  refine ⟨LinearEquiv.ofLinearMap (p.prod ψ)
    ((LinearMap.ker ψ).subtype.coprod (LinearMap.toSpanSingleton O M x₀)) ?_ ?_, fun x => rfl⟩
  · apply LinearMap.prod_ext
    · ext y
      · simp [p]
      · simp
    · ext
      · simp [p, hx₀]
      · simp [hx₀]
  · ext x
    simp [p]

theorem exists_equiv_comp_eq_of_surjective {O M M' : Type} [CommRing O] [IsDomain O]
    [IsPrincipalIdealRing O] [AddCommGroup M] [Module O M] [AddCommGroup M'] [Module O M']
    [Module.Free O M] [Module.Finite O M] [Module.Free O M'] [Module.Finite O M']
    (h : Module.finrank O M = Module.finrank O M')
    (ψ : M →ₗ[O] O) (hψ : Function.Surjective ψ)
    (ψ' : M' →ₗ[O] O) (hψ' : Function.Surjective ψ') :
    ∃ e : M ≃ₗ[O] M', ∀ x, ψ' (e x) = ψ x := by
  obtain ⟨E, hE⟩ := exists_equiv_ker_prod ψ hψ
  obtain ⟨E', hE'⟩ := exists_equiv_ker_prod ψ' hψ'
  have hk : Module.finrank O (LinearMap.ker ψ) = Module.finrank O (LinearMap.ker ψ') := by
    have h₁ := E.finrank_eq
    have h₂ := E'.finrank_eq
    rw [Module.finrank_prod, Module.finrank_self] at h₁ h₂
    omega
  obtain ⟨k⟩ := FiniteDimensional.nonempty_linearEquiv_of_finrank_eq hk
  refine ⟨E.trans ((k.prodCongr (LinearEquiv.refl O O)).trans E'.symm), fun x => ?_⟩
  rw [← hE', ← hE]
  simp

theorem exists_form_of_covBy {O V : Type} [CommRing O] [IsLocalRing O] [AddCommGroup V]
    [Module O V] (A B : Submodule O V) [Module.Projective O B] (h : A ⋖ B) :
    ∃ ψ : B →ₗ[O] O, Function.Surjective ψ ∧
      ∀ x : B, (x : V) ∈ A ↔ ψ x ∈ IsLocalRing.maximalIdeal O := by
  have hs := (covBy_iff_quot_is_simple h.le).1 h
  obtain ⟨I, hI, ⟨f⟩⟩ := isSimpleModule_iff_quot_maximal.1 hs
  obtain rfl := IsLocalRing.eq_maximalIdeal hI
  set m := IsLocalRing.maximalIdeal O
  obtain ⟨ψ, hψ⟩ := Module.projective_lifting_property m.mkQ
    (f.toLinearMap ∘ₗ (A.comap B.subtype).mkQ) m.mkQ_surjective
  have key : ∀ x, m.mkQ (ψ x) = f ((A.comap B.subtype).mkQ x) := fun x =>
    LinearMap.congr_fun hψ x
  have hmem : ∀ x : B, (x : V) ∈ A ↔ ψ x ∈ m := by
    intro x
    rw [← Submodule.Quotient.mk_eq_zero m, ← Submodule.mkQ_apply, key,
      LinearEquiv.map_eq_zero_iff, Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero,
      Submodule.mem_comap, Submodule.subtype_apply]
  refine ⟨ψ, ?_, hmem⟩
  obtain ⟨y, hy⟩ := f.surjective (m.mkQ 1)
  obtain ⟨x, rfl⟩ := Submodule.mkQ_surjective _ y
  have hu : IsUnit (ψ x) := by
    rw [← IsLocalRing.notMem_maximalIdeal]
    intro hx
    have h1 : m.mkQ 1 = 0 := by
      rw [← hy, ← key, Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero]
      exact hx
    rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero] at h1
    exact (IsLocalRing.maximalIdeal.isMaximal O).ne_top ((Ideal.eq_top_iff_one _).2 h1)
  intro r
  refine ⟨(r * hu.unit⁻¹.1) • x, ?_⟩
  rw [map_smul, smul_eq_mul, mul_assoc, hu.val_inv_mul, mul_one]

theorem exists_extend_latticeEquiv {O K V : Type} [CommRing O] [IsDomain O]
    [IsPrincipalIdealRing O] [Field K] [Algebra O K] [IsFractionRing O K]
    [AddCommGroup V] [Module K V] [Module O V] [IsScalarTower O K V]
    (B B' : Submodule O V) [B.IsFullLattice K] [B'.IsLattice K] (e : B ≃ₗ[O] B') :
    ∃ g : V ≃ₗ[K] V, ∀ x : B, g x = e x := by
  have := Submodule.IsLattice.finite K B
  have := Submodule.IsLattice.free K B
  have : B'.IsFullLattice K := Submodule.IsFullLattice.of_rank_le K B' (by
    rw [← Submodule.IsFullLattice.rank_eq K B, e.rank_eq])
  let b := Module.Free.chooseBasis O B
  let c := b.map e
  let g := (b.extendOfIsFullLattice K).equiv (c.extendOfIsFullLattice K) (Equiv.refl _)
  refine ⟨g, fun x => ?_⟩
  have key : (g.toLinearMap.restrictScalars O) ∘ₗ B.subtype = B'.subtype ∘ₗ e.toLinearMap := by
    refine b.ext fun i => ?_
    simp only [LinearMap.coe_comp, Function.comp_apply, LinearMap.coe_restrictScalars,
      LinearEquiv.coe_coe, Submodule.coe_subtype, g, c]
    rw [← Module.Basis.extendOfIsFullLattice_apply K b i, Module.Basis.equiv_apply]
    simp
  exact LinearMap.congr_fun key x

theorem exists_conj_of_covBy : ∀ (O K : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field K] [Algebra O K] [IsFractionRing O K] (n : ℕ) (A B A' B' : Submodule O (Fin n → K)), B.FG → B'.FG → Submodule.span K (A : Set (Fin n → K)) = ⊤ → Submodule.span K (A' : Set (Fin n → K)) = ⊤ → A ⋖ B → A' ⋖ B' → ∃ g : GL (Fin n) K, (∀ x, x ∈ A ↔ g.1 *ᵥ x ∈ A') ∧ ∀ x, x ∈ B ↔ g.1 *ᵥ x ∈ B' := by
  intro O K _ _ _ _ _ _ n A B A' B' hB hB' hA hA' h h'
  have : B.IsLattice K := Submodule.IsLattice.of_fg K hB
  have : B'.IsLattice K := Submodule.IsLattice.of_fg K hB'
  have : B.IsFullLattice K :=
    ⟨eq_top_iff.2 (hA ▸ Submodule.span_mono (show (A : Set (Fin n → K)) ⊆ B from h.le))⟩
  have : B'.IsFullLattice K :=
    ⟨eq_top_iff.2 (hA' ▸ Submodule.span_mono (show (A' : Set (Fin n → K)) ⊆ B' from h'.le))⟩
  have : Module.Free O B := Submodule.IsLattice.free K B
  have : Module.Free O B' := Submodule.IsLattice.free K B'
  have : Module.Finite O B := Submodule.IsLattice.finite K B
  have : Module.Finite O B' := Submodule.IsLattice.finite K B'
  have hr : Module.finrank O B = Module.finrank O B' := by
    rw [((Submodule.IsFullLattice.finrank_eq K B).trans (Module.finrank_fintype_fun_eq_card K)), ((Submodule.IsFullLattice.finrank_eq K B').trans (Module.finrank_fintype_fun_eq_card K))]
  obtain ⟨ψ, hψs, hψ⟩ := exists_form_of_covBy A B h
  obtain ⟨ψ', hψs', hψ'⟩ := exists_form_of_covBy A' B' h'
  obtain ⟨e, he⟩ := exists_equiv_comp_eq_of_surjective hr ψ hψs ψ' hψs'
  obtain ⟨g, hg⟩ := exists_extend_latticeEquiv (K := K) B B' e
  have hBg : ∀ x, x ∈ B ↔ g x ∈ B' := by
    intro x
    constructor
    · intro hx
      rw [show g x = e ⟨x, hx⟩ from hg ⟨x, hx⟩]
      exact (e ⟨x, hx⟩).2
    · intro hx
      have hy : ((e.symm ⟨g x, hx⟩ : B) : Fin n → K) = x :=
        g.injective (by rw [hg]; simp)
      rw [← hy]
      exact (e.symm _).2
  have hpt : ∀ x (hx : x ∈ B), (⟨g x, (hBg x).1 hx⟩ : B') = e ⟨x, hx⟩ := fun x hx =>
    Subtype.ext (hg ⟨x, hx⟩)
  let G : GL (Fin n) K :=
    ⟨LinearMap.toMatrix' g.toLinearMap, LinearMap.toMatrix' g.symm.toLinearMap,
      by rw [← LinearMap.toMatrix'_comp]; simp, by rw [← LinearMap.toMatrix'_comp]; simp⟩
  have hG : ∀ x, G.1 *ᵥ x = g x := fun x => LinearMap.toMatrix'_mulVec _ x
  refine ⟨G, fun x => ?_, fun x => ?_⟩
  · rw [hG]
    constructor
    · intro hx
      have hxB := h.le hx
      have hgB := (hBg x).1 hxB
      rw [hψ' ⟨g x, hgB⟩, hpt x hxB, he]
      exact (hψ ⟨x, hxB⟩).1 hx
    · intro hx
      have hgB := h'.le hx
      have hxB := (hBg x).2 hgB
      rw [hψ ⟨x, hxB⟩, ← he, ← hpt x hxB]
      exact (hψ' ⟨g x, hgB⟩).1 hx
  · rw [hG]
    exact hBg x

end GlobalTheory.St.G
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsGLConjLatticePairsCovByDvr =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsLocalUnitaryLatticesOfLevel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsLocalUnitaryLatticesOfLevel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.SelfDualAt\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.CmFieldSplitCompletelyPlaceStructure\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.DualLatticeLocalCharacterization\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsGLConjLatticePairsCovByDvr\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianLatticeLevelLocalDualQuotientLengthOne\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.DualOfDualFrames\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.SplitPlaceLatticeComponents\nimport Formalism.PeriodIntegrals.SplitIntLoc\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SplitPrimeIntegers.ExistsUnitDiff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.UG Formalism.L2.Forms NumberField IsDedekindDomain Matrix GlobalTheory.St.G
open scoped TensorProduct

namespace GlobalTheory.St.G.LevelConj

section General

variable {O K : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field K] [Algebra O K]
  [IsFractionRing O K] {n : ℕ}

omit [IsFractionRing O K] in
theorem covBy_of_cyclic {A B : Submodule O (Fin n → K)} (hle : A ≤ B) (hne : A ≠ B) (d : Fin n → K)
    (hx : ∀ x ∈ B, ∃ a : O, x - a • d ∈ A)
    (hm : ∀ a ∈ IsLocalRing.maximalIdeal O, a • d ∈ A) : A ⋖ B := by
  refine ⟨lt_of_le_of_ne hle hne, fun C hAC hCB => ?_⟩
  obtain ⟨x, hxC, hxA⟩ := SetLike.exists_of_lt hAC
  obtain ⟨a, ha⟩ := hx x (hCB.le hxC)
  have hu : IsUnit a := by
    by_contra h
    exact hxA (by simpa using add_mem ha (hm a h))
  have h1 : a • d ∈ C := by simpa using sub_mem hxC (hAC.le ha)
  have h2 : d ∈ C := (Submodule.smul_mem_iff_of_isUnit C hu).1 h1
  refine hCB.not_ge fun y hy => ?_
  obtain ⟨b, hb⟩ := hx y hy
  simpa using add_mem (hAC.le hb) (C.smul_mem b h2)

theorem bidual (B : LinearMap.BilinForm K (Fin n → K)) (hB : B.Nondegenerate)
    (N : Submodule O (Fin n → K)) (hfg : N.FG) (hsp : Submodule.span K (N : Set (Fin n → K)) = ⊤)
    (u : Fin n → K)
    (hu : ∀ w, (∀ u' ∈ N, B u' w ∈ (1 : Submodule O K)) → B u w ∈ (1 : Submodule O K)) : u ∈ N := by
  classical
  haveI : N.IsFullLattice K := { toIsLattice := Submodule.IsLattice.of_fg K hfg, span_eq_top := hsp }
  have := Submodule.IsLattice.finite K N
  have := Submodule.IsLattice.free K N
  let b := Module.Free.chooseBasis O N
  have h : Submodule.span O (Set.range (b.extendOfIsFullLattice K)) = N := by
    have h1 : Set.range (b.extendOfIsFullLattice K) = N.subtype '' Set.range b := by
      rw [← Set.range_comp]
      congr 1
      exact funext fun i => b.extendOfIsFullLattice_apply K i
    rw [h1, ← Submodule.map_span, b.span_eq, Submodule.map_subtype_top]
  have e := LinearMap.BilinForm.dualSubmodule_dualSubmodule_flip_of_basis (R := O) B hB
    (b.extendOfIsFullLattice K)
  rw [h] at e
  rw [← e]
  exact fun w hw => hu w hw

end General

section Comp

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n : ℕ}
  {v : HeightOneSpectrum (𝓞 F)}

noncomputable def cmp (π : E ⊗[F] v.adicCompletion F →+* v.adicCompletion F) (L : Submodule (𝓞 E) (Fin n → E)) :
    Submodule (v.adicCompletionIntegers F) (Fin n → v.adicCompletion F) :=
  Submodule.span _ ((fun x i => π (inclE (F := F) _ (x i))) '' (L : Set (Fin n → E)))

variable {π : E ⊗[F] v.adicCompletion F →+* v.adicCompletion F}

theorem mem_cmp (hπ : ∀ a, π ((1 : E) ⊗ₜ[F] a) = a)
    (hint : ∀ t ∈ intV E v, π t ∈ v.adicCompletionIntegers F) (L : Submodule (𝓞 E) (Fin n → E))
    (a : Fin n → v.adicCompletion F) :
    a ∈ cmp π L ↔ ∃ y ∈ loc v L, (fun b => π (y b)) = a := by
  constructor
  · intro ha
    induction ha using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨y, hy, rfl⟩ := hx
      exact ⟨_, Submodule.subset_span ⟨y, hy, rfl⟩, rfl⟩
    | zero => exact ⟨0, zero_mem _, by funext b; simp⟩
    | add x y _ _ hx hy =>
      obtain ⟨x, hx, rfl⟩ := hx
      obtain ⟨y, hy, rfl⟩ := hy
      exact ⟨x + y, add_mem hx hy, by funext b; simp⟩
    | smul c x _ hx =>
      obtain ⟨x, hx, rfl⟩ := hx
      have hc : (1 : E) ⊗ₜ[F] (c : v.adicCompletion F) ∈ intV E v :=
        Subring.subset_closure (Or.inr ⟨⟨c.1, c.2⟩, rfl⟩)
      refine ⟨_, (loc v L).smul_mem ⟨_, hc⟩ hx, ?_⟩
      funext b
      change π ((1 : E) ⊗ₜ[F] (c : v.adicCompletion F) * x b) = (c : v.adicCompletion F) * π (x b)
      rw [map_mul, hπ]
  · rintro ⟨y, hy, rfl⟩
    induction hy using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨y, hy, rfl⟩ := hx
      exact Submodule.subset_span ⟨y, hy, rfl⟩
    | zero => simp only [Pi.zero_apply, map_zero]; exact zero_mem _
    | add x y _ _ hx hy =>
      simp only [Pi.add_apply, map_add (f := _)]; exact add_mem hx hy
    | smul c x _ hx =>
      have := (cmp π L).smul_mem ⟨_, hint _ c.2⟩ hx
      convert this using 1
      funext b
      exact map_mul π (c : E ⊗[F] v.adicCompletion F) (x b)

theorem cmp_fg (hint : ∀ t ∈ intV E v, π t ∈ v.adicCompletionIntegers F)
    {L : Submodule (𝓞 E) (Fin n → E)} (hL : IsLat L) : (cmp π L).FG := by
  obtain ⟨s, hs⟩ := (Module.Finite.iff_fg).1 hL.1
  refine Submodule.fg_def.2 ⟨(fun x i => π (inclE (F := F) _ (x i))) '' (s : Set (Fin n → E)),
    s.finite_toSet.image _, le_antisymm (Submodule.span_mono (Set.image_mono ?_)) ?_⟩
  · rw [← hs]; exact Submodule.subset_span
  · rw [cmp, Submodule.span_le]
    rintro _ ⟨x, hx, rfl⟩
    rw [← hs] at hx
    induction hx using Submodule.span_induction with
    | mem x hx => exact Submodule.subset_span ⟨x, hx, rfl⟩
    | zero => simp only [Pi.zero_apply, map_zero]; exact zero_mem _
    | add x y _ _ hx hy =>
      simp only [Pi.add_apply, map_add (f := _)]; exact add_mem hx hy
    | smul c x _ hx =>
      have hc : inclE (F := F) (v.adicCompletion F) (c : E) ∈ intV E v :=
        Subring.subset_closure (Or.inl ⟨⟨c, c, rfl⟩, rfl⟩)
      have := Submodule.smul_mem _ (⟨_, hint _ hc⟩ : v.adicCompletionIntegers F) hx
      refine Set.mem_of_eq_of_mem ?_ this
      funext b
      change π (inclE _ ((c : E) * x b)) = π _ * π _
      rw [map_mul, map_mul]

theorem cmp_span {L : Submodule (𝓞 E) (Fin n → E)} (hL : IsLat L) :
    Submodule.span (v.adicCompletion F) (cmp π L : Set (Fin n → v.adicCompletion F)) = ⊤ := by
  have key : ∀ x : Fin n → E, (fun i => π (inclE (F := F) _ (x i))) ∈
      Submodule.span (v.adicCompletion F) (cmp π L : Set (Fin n → v.adicCompletion F)) := by
    intro x
    have hx : x ∈ Submodule.span E (L : Set (Fin n → E)) := hL.2 ▸ Submodule.mem_top
    induction hx using Submodule.span_induction with
    | mem x hx => exact Submodule.subset_span (Submodule.subset_span ⟨x, hx, rfl⟩)
    | zero => simp only [Pi.zero_apply, map_zero]; exact zero_mem _
    | add x y _ _ hx hy =>
      simp only [Pi.add_apply, map_add (f := _)]; exact add_mem hx hy
    | smul c x _ hx =>
      have := Submodule.smul_mem _ (π (inclE (F := F) _ c)) hx
      convert this using 1
      funext b
      change π (inclE _ ((c : E) * x b)) = π _ * π _
      rw [map_mul, map_mul]
  rw [eq_top_iff, ← (Pi.basisFun (v.adicCompletion F) (Fin n)).span_eq, Submodule.span_le]
  rintro _ ⟨i, rfl⟩
  refine Set.mem_of_eq_of_mem ?_ (key (Pi.single i 1))
  funext j
  by_cases h : j = i
  · subst h; simp
  · simp [h]

theorem cmp_nsmul (T : ℕ) {L M : Submodule (𝓞 E) (Fin n → E)} (h : ∀ y ∈ M, T • y ∈ L) :
    ∀ y ∈ cmp π M, T • y ∈ cmp π L := by
  intro y hy
  induction hy using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨y, hy, rfl⟩ := hx
    refine Submodule.subset_span ⟨_, h y hy, ?_⟩
    funext b
    simp only [Pi.smul_apply, map_nsmul]
  | zero => simp
  | add x y _ _ hx hy => rw [smul_add]; exact add_mem hx hy
  | smul c x _ hx => rw [smul_comm]; exact Submodule.smul_mem _ _ hx

end Comp

section Split

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E] [Algebra F E]
  {n : ℕ} {v : HeightOneSpectrum (𝓞 F)}
  (sp : E ⊗[F] v.adicCompletion F ≃+* v.adicCompletion F × v.adicCompletion F)

noncomputable abbrev p₁ : E ⊗[F] v.adicCompletion F →+* v.adicCompletion F :=
  (RingHom.fst _ _).comp sp.toRingHom

noncomputable abbrev p₂ : E ⊗[F] v.adicCompletion F →+* v.adicCompletion F :=
  (RingHom.snd _ _).comp sp.toRingHom

noncomputable def pairing (J : Matrix (Fin n) (Fin n) E) :
    LinearMap.BilinForm (v.adicCompletion F) (Fin n → v.adicCompletion F) :=
  Matrix.toBilin' (J.map ((p₁ sp).comp (inclE (F := F) (v.adicCompletion F))))

omit [StarRing E] in
theorem pairing_nondegenerate {J : Matrix (Fin n) (Fin n) E} (hdet : J.det ≠ 0) :
    (pairing sp J).Nondegenerate := by
  apply LinearMap.BilinForm.nondegenerate_toBilin'_of_det_ne_zero'
  rw [← RingHom.mapMatrix_apply, ← RingHom.map_det]
  exact (map_ne_zero _).2 hdet

theorem mem_one_iff (a : v.adicCompletion F) :
    a ∈ (1 : Submodule (v.adicCompletionIntegers F) (v.adicCompletion F)) ↔
      a ∈ v.adicCompletionIntegers F := by
  rw [Submodule.mem_one]
  exact ⟨fun ⟨y, hy⟩ => hy ▸ y.2, fun h => ⟨⟨a, h⟩, rfl⟩⟩

variable {sp} {cm : CMData F E} {J : Matrix (Fin n) (Fin n) E}
  (hJ : IsHerm (cm.sig : E →+* E) J) (hdet : J.det ≠ 0)
  (hsig : ∀ x, sp (sigR cm.sig (v.adicCompletion F) x) = swapR _ (sp x))
  (hdiag : ∀ a : v.adicCompletion F, sp ((1 : E) ⊗ₜ[F] a) = (a, a))

include hsig in
theorem fst_hR (x y : Fin n → E ⊗[F] v.adicCompletion F) :
    p₁ sp (hR cm.sig J (v.adicCompletion F) x y) =
      pairing sp J (fun b => p₂ sp (x b)) (fun b => p₁ sp (y b)) := by

  rw [pairing, Matrix.toBilin'_apply, hR, hform, map_sum]
  refine Finset.sum_congr rfl fun i _ => ?_

  rw [map_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [map_mul, map_mul]
  have : p₁ sp (sigR cm.sig (v.adicCompletion F) (x i)) = p₂ sp (x i) := congrArg Prod.fst (hsig _)
  rw [this]
  rfl

include hsig hJ in
theorem snd_hR (x y : Fin n → E ⊗[F] v.adicCompletion F) :
    p₂ sp (hR cm.sig J (v.adicCompletion F) x y) =
      pairing sp J (fun b => p₂ sp (y b)) (fun b => p₁ sp (x b)) := by
  rw [← fst_hR hsig]
  have hτ : ∀ a, sigR cm.sig (v.adicCompletion F) (sigR cm.sig (v.adicCompletion F) a) = a :=
    fun a => sp.injective (by rw [hsig, hsig]; rfl)
  have hJ' : IsHerm (sigR cm.sig (v.adicCompletion F))
      (J.map (inclE (F := F) (v.adicCompletion F))) := by
    funext i j
    exact congrArg (inclE (F := F) (v.adicCompletion F)) (congrFun (congrFun hJ i) j)
  have := GlobalTheory.DualFrames.hform_swap _ hτ _ hJ' x y
  rw [hR, hR, ← this]
  exact (congrArg Prod.fst (hsig _)).symm

omit [StarRing E] in
include hdiag in
theorem int_iff (t : E ⊗[F] v.adicCompletion F) : t ∈ intV E v ↔
    p₁ sp t ∈ v.adicCompletionIntegers F ∧ p₂ sp t ∈ v.adicCompletionIntegers F :=
  _root_.PI.SplitIntLoc.Proof.main F E v sp hdiag t

omit [StarRing E] in
include hdiag in
theorem mem_cmp₁ (L : Submodule (𝓞 E) (Fin n → E)) (a : Fin n → v.adicCompletion F) :
    a ∈ cmp (p₁ sp) L ↔ ∃ y ∈ loc v L, (fun b => p₁ sp (y b)) = a :=
  mem_cmp (fun a => congrArg Prod.fst (hdiag a)) (fun t ht => ((int_iff hdiag t).1 ht).1) L a

omit [StarRing E] in
include hdiag in
theorem mem_cmp₂ (L : Submodule (𝓞 E) (Fin n → E)) (a : Fin n → v.adicCompletion F) :
    a ∈ cmp (p₂ sp) L ↔ ∃ y ∈ loc v L, (fun b => p₂ sp (y b)) = a :=
  mem_cmp (fun a => congrArg Prod.snd (hdiag a)) (fun t ht => ((int_iff hdiag t).1 ht).2) L a

include hJ hdet hsig hdiag

theorem mem_loc_iff (L : Submodule (𝓞 E) (Fin n → E)) (y : Fin n → E ⊗[F] v.adicCompletion F) :
    y ∈ loc v L ↔ (fun b => p₁ sp (y b)) ∈ cmp (p₁ sp) L ∧ (fun b => p₂ sp (y b)) ∈ cmp (p₂ sp) L := by
  rw [(split_components F E cm n J hJ hdet v sp hsig hdiag).1 L y, mem_cmp₁ hdiag, mem_cmp₂ hdiag]
  simp only [funext_iff]
  rfl

theorem mem_cmp₂_iff {L : Submodule (𝓞 E) (Fin n → E)} (hL : IsLat L)
    (u : Fin n → v.adicCompletion F) :
    u ∈ cmp (p₂ sp) L ↔
      ∀ w ∈ cmp (p₁ sp) (dualL cm.sig J L), pairing sp J u w ∈ v.adicCompletionIntegers F := by
  have hD := (_root_.GlobalTheory.St.G.dualL_local_adelic F E cm n J hJ hdet L hL).2.1 v
  constructor
  · intro hu w hw
    obtain ⟨z, hz, rfl⟩ := (mem_cmp₂ hdiag _ _).1 hu
    obtain ⟨x, hx, rfl⟩ := (mem_cmp₁ hdiag _ _).1 hw
    rw [← fst_hR hsig]
    exact ((int_iff hdiag _).1 ((hD x).1 hx z hz)).1
  · intro hu
    refine bidual _ (pairing_nondegenerate sp hdet) _
      (cmp_fg (fun t ht => ((int_iff hdiag t).1 ht).2) hL) (cmp_span hL) u fun w hw => ?_
    rw [mem_one_iff]
    refine hu w ((mem_cmp₁ hdiag _ _).2 ⟨fun b => sp.symm (w b, 0), ?_, ?_⟩)
    · refine (hD _).2 fun z hz => (int_iff hdiag _).2 ⟨?_, ?_⟩
      · rw [fst_hR hsig, ← mem_one_iff]
        have := hw _ ((mem_cmp₂ hdiag _ _).2 ⟨z, hz, rfl⟩)
        simpa [p₁] using this
      · rw [snd_hR hJ hsig]
        have : (fun b => p₂ sp (sp.symm (w b, 0))) = 0 := by funext b; simp [p₂]
        rw [this, map_zero, LinearMap.zero_apply]
        exact zero_mem _
    · funext b; simp [p₁]

theorem cmp₁_covBy {T f : ℕ} {L : Submodule (𝓞 E) (Fin n → E)} (hT : T.Prime) (hs : SplitsIn E T)
    (hf : Module.finrank ℚ E = 2 * f) (hL : TLat cm.sig J T f L) (hv : (T : 𝓞 F) ∈ v.asIdeal) :
    cmp (p₁ sp) L ⋖ cmp (p₁ sp) (dualL cm.sig J L) := by
  have hD := (_root_.GlobalTheory.St.G.dualL_local_adelic F E cm n J hJ hdet L hL.1).2.1 v
  obtain ⟨-, d, hd, hcyc⟩ := _root_.GlobalTheory.St.G.tLat_local_index F E cm n J hJ hdet T f L hT hs hf hL v hv
  have hmax := ((SplitPrime.split_place F E cm T hT hs).2 v hv).2.1
  have hd' := (mem_cmp₁ hdiag _ _).2 ⟨d, hd, rfl⟩
  refine covBy_of_cyclic ?_ ?_ (fun b => p₁ sp (d b)) ?_ ?_
  · exact Submodule.span_mono (Set.image_mono fun x hx => Submodule.subset_span (hL.2.1 x hx))
  · intro hAB
    obtain ⟨x, hx, hxL⟩ := hL.2.2.2.2 v hv
    refine hxL ((mem_loc_iff hJ hdet hsig hdiag L x).2
      ⟨hAB ▸ (mem_cmp₁ hdiag _ _).2 ⟨x, hx, rfl⟩, (mem_cmp₂_iff hJ hdet hsig hdiag hL.1 _).2 ?_⟩)
    rw [← hAB]
    intro w hw
    obtain ⟨z, hz, rfl⟩ := (mem_cmp₁ hdiag _ _).1 hw
    rw [← snd_hR hJ hsig]
    exact ((int_iff hdiag _).1 ((hD x).1 hx z hz)).2
  · intro w hw
    obtain ⟨x, hx, rfl⟩ := (mem_cmp₁ hdiag _ _).1 hw
    obtain ⟨a, ha, hxa⟩ := hcyc x hx
    refine ⟨⟨_, ((int_iff hdiag _).1 ha).1⟩, (mem_cmp₁ hdiag _ _).2 ⟨_, hxa, ?_⟩⟩
    funext b
    change p₁ sp (x b - a * d b) = p₁ sp (x b) - p₁ sp a * p₁ sp (d b)
    rw [map_sub, map_mul]
  · intro a ha
    rw [hmax, Ideal.mem_span_singleton'] at ha
    obtain ⟨c, rfl⟩ := ha
    rw [mul_smul, Nat.cast_smul_eq_nsmul]
    refine Submodule.smul_mem _ _ (cmp_nsmul T ?_ _ hd')
    intro y hy
    induction hy using Submodule.span_induction with
    | mem x hx => rw [← Nat.cast_smul_eq_nsmul E]; exact hL.2.2.1 x hx
    | zero => simp
    | add x y _ _ hx hy => rw [smul_add]; exact add_mem hx hy
    | smul c x _ hx => rw [smul_comm]; exact Submodule.smul_mem _ _ hx

end Split

end GlobalTheory.St.G.LevelConj

namespace GlobalTheory.St.G

open LevelConj

theorem exists_unitary_of_TLat :
    ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E] [Algebra F E] (cm : CMData F E) (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHerm (cm.sig : E →+* E) J → J.det ≠ 0 → ∀ (T f : ℕ) (L M : Submodule (𝓞 E) (Fin n → E)), T.Prime → SplitsIn E T → Module.finrank ℚ E = 2 * f → TLat cm.sig J T f L → TLat cm.sig J T f M → ∀ (v : HeightOneSpectrum (𝓞 F)), (T : 𝓞 F) ∈ v.asIdeal → ∃ h ∈ UPts cm.sig J (v.adicCompletion F), ∀ x, x ∈ loc v L ↔ h.1 *ᵥ x ∈ loc v M := by
  intro F E _ _ _ _ _ _ cm n J hJ hdet T f L M hT hs hf hL hM v hv
  obtain ⟨sp, hsig, hdiag⟩ := ((SplitPrime.split_place F E cm T hT hs).2 v hv).2.2
  have hint : ∀ t ∈ intV E v, p₁ sp t ∈ v.adicCompletionIntegers F :=
    fun t ht => ((int_iff hdiag t).1 ht).1
  obtain ⟨g, hA, hB⟩ := _root_.GlobalTheory.St.G.exists_conj_of_covBy (v.adicCompletionIntegers F) (v.adicCompletion F) n _ _ _ _
    (cmp_fg hint (_root_.GlobalTheory.St.G.dualL_local_adelic F E cm n J hJ hdet L hL.1).1)
    (cmp_fg hint (_root_.GlobalTheory.St.G.dualL_local_adelic F E cm n J hJ hdet M hM.1).1) (cmp_span hL.1) (cmp_span hM.1)
    (cmp₁_covBy hJ hdet hsig hdiag hT hs hf hL hv) (cmp₁_covBy hJ hdet hsig hdiag hT hs hf hM hv)
  obtain ⟨⟨h, hh⟩, hg, -⟩ := (split_components F E cm n J hJ hdet v sp hsig hdiag).2.1 g
  have hg' : ∀ x, (fun b => p₁ sp ((h.1 *ᵥ x) b)) = g.1 *ᵥ fun b => p₁ sp (x b) := by
    intro x
    funext b
    rw [← hg]
    exact RingHom.map_mulVec (p₁ sp) h.1 x b
  have hinv : ∀ x y, hR cm.sig J (v.adicCompletion F) (h.1 *ᵥ x) (h.1 *ᵥ y) =
      hR cm.sig J (v.adicCompletion F) x y := by
    intro x y
    have h0 : cT (sigR cm.sig (v.adicCompletion F)) h.1 * J.map (inclE (F := F) (v.adicCompletion F)) * h.1 =
      J.map (inclE (F := F) (v.adicCompletion F)) := hh
    have h1 : sigR cm.sig (v.adicCompletion F) ∘ (h.1 *ᵥ x) =
        (h.1.map (sigR cm.sig (v.adicCompletion F))) *ᵥ (sigR cm.sig (v.adicCompletion F) ∘ x) := by
      funext i
      exact RingHom.map_mulVec _ h.1 x i
    rw [hR, hR, GlobalTheory.DualFrames.hform_eq_dot, GlobalTheory.DualFrames.hform_eq_dot, h1, ← vecMul_transpose,
      ← dotProduct_mulVec, mulVec_mulVec, mulVec_mulVec]
    exact congrArg (fun N => _ ⬝ᵥ N *ᵥ y) h0
  have hp : ∀ x w, pairing sp J (fun b => p₂ sp ((h.1 *ᵥ x) b)) (g.1 *ᵥ w) =
      pairing sp J (fun b => p₂ sp (x b)) w := by
    intro x w
    have hw : w = fun b => p₁ sp (sp.symm (w b, 0)) := by funext b; simp [p₁]
    rw [hw, ← hg', ← fst_hR hsig, ← fst_hR hsig, hinv]
  refine ⟨h, hh, fun x => ?_⟩
  rw [mem_loc_iff hJ hdet hsig hdiag, mem_loc_iff hJ hdet hsig hdiag, hg', ← hA,
    mem_cmp₂_iff hJ hdet hsig hdiag hL.1, mem_cmp₂_iff hJ hdet hsig hdiag hM.1]
  refine and_congr Iff.rfl ⟨fun H w' hw' => ?_, fun H w hw => ?_⟩
  · obtain ⟨w, rfl⟩ := GlobalTheory.DualFrames.exists_mulVec g w'
    rw [hp]
    exact H w ((hB w).2 hw')
  · rw [← hp]
    exact H _ ((hB w).1 hw)

end GlobalTheory.St.G
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsLocalUnitaryLatticesOfLevel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsLocalUnitaryOfSelfDualAtPlace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsLocalUnitaryOfSelfDualAtPlace", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.SelfDualAt\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsEqTransposeMulMapOfIdempotent\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsIsUnitFormSelfOfNotMem\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.FiniteResidueFieldAdicCompletionIntegers\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IsPrincipalIdealRingSemiLoc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.HermitianForms.IsLocBasis\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.UG Formalism.L2.Forms NumberField IsDedekindDomain Matrix GlobalTheory.St.G
open scoped TensorProduct nonZeroDivisors

namespace GlobalTheory.St.G.Unimod

section Abstract

variable {A : Type} [CommRing A] {n : ℕ} (c : A →+* A)

theorem hform_eq (J : Matrix (Fin n) (Fin n) A) (x y : Fin n → A) :
    hform c J x y = ∑ i, c (x i) * (J *ᵥ y) i := by
  simp only [hform, Matrix.mulVec, dotProduct, Finset.mul_sum, mul_assoc]

theorem hform_mulVec (J g : Matrix (Fin n) (Fin n) A) (x y : Fin n → A) :
    hform c J (g *ᵥ x) (g *ᵥ y) = hform c (cT c g * J * g) x y := by
  have h : (fun i => c ((g *ᵥ x) i)) = g.map c *ᵥ fun i => c (x i) :=
    funext fun i => RingHom.map_mulVec c g x i
  rw [hform_eq, hform_eq]
  change (fun i => c ((g *ᵥ x) i)) ⬝ᵥ _ = (fun i => c (x i)) ⬝ᵥ _
  rw [h, cT, Matrix.mul_assoc, ← Matrix.mulVec_mulVec, Matrix.dotProduct_mulVec _ (g.map c)ᵀ,
    Matrix.vecMul_transpose, Matrix.mulVec_mulVec]

theorem mulVec_mem {O : Subring A} {P : Matrix (Fin n) (Fin n) A} (hP : ∀ i j, P i j ∈ O)
    {x : Fin n → A} (hx : ∀ i, x i ∈ O) (i : Fin n) : (P *ᵥ x) i ∈ O := by
  rw [Matrix.mulVec, dotProduct]
  exact O.sum_mem fun j _ => mul_mem (hP i j) (hx j)

theorem single_mem (O : Subring A) (j i : Fin n) : (Pi.single j 1 : Fin n → A) i ∈ O := by
  rw [Pi.single_apply]
  split_ifs
  exacts [one_mem _, zero_mem _]

theorem exists_orthonormal (hc : ∀ x, c (c x) = x) (O : Subring A) (hO : ∀ x ∈ O, c x ∈ O)
    (hnf : ∀ G : Matrix (Fin n) (Fin n) O, (∀ a b, c.restrict O O hO (G a b) = G b a) → IsUnit G.det →
      ∃ P : Matrix (Fin n) (Fin n) O, IsUnit P.det ∧ G = Pᵀ * P.map (c.restrict O O hO))
    {J : Matrix (Fin n) (Fin n) A} (hJ : IsHerm c J) (hd : IsUnit J.det)
    (Λ : Set (Fin n → A)) (g : GL (Fin n) A) (hg : ∀ x, x ∈ Λ ↔ ∀ i, ((g⁻¹).1 *ᵥ x) i ∈ O)
    (hsd : ∀ y, y ∈ Λ ↔ ∀ z ∈ Λ, hform c J z y ∈ O) :
    ∃ k : GL (Fin n) A, cT c k.1 * J * k.1 = 1 ∧ ∀ x, x ∈ Λ ↔ ∀ i, ((k⁻¹).1 *ᵥ x) i ∈ O := by
  have hg' : ∀ x, g.1 *ᵥ x ∈ Λ ↔ ∀ i, x i ∈ O := fun x => by
    rw [hg, Matrix.mulVec_mulVec, Units.inv_mul, Matrix.one_mulVec]
  set G := cT c g.1 * J * g.1 with hG
  have hGd : IsUnit G.det := by
    have h1 := (Matrix.isUnit_iff_isUnit_det _).1 g.isUnit
    rw [hG, cT, det_mul, det_mul, det_transpose, ← RingHom.mapMatrix_apply, ← RingHom.map_det]
    exact ((h1.map c).mul hd).mul h1
  have hcc : ∀ M : Matrix (Fin n) (Fin n) A, cT c (cT c M) = M := fun M => by
    ext i j; exact hc _
  have hGh : cT c G = G := by
    rw [hG, cT_mul, cT_mul, hcc, hJ, Matrix.mul_assoc]
  have h1 : ∀ i j, G i j ∈ O := fun i j => by
    have := (hsd _).1 ((hg' _).2 (single_mem O j)) _ ((hg' _).2 (single_mem O i))
    rw [hform_mulVec, ← hG, hform_eq] at this
    simpa [Pi.single_apply, apply_ite c] using this
  have h2 : ∀ i j, G⁻¹ i j ∈ O := fun i j => by
    have := (hg' (G⁻¹ *ᵥ Pi.single j 1)).1 ((hsd _).2 fun z hz => by
      have e : z = g.1 *ᵥ ((g⁻¹).1 *ᵥ z) := by
        rw [Matrix.mulVec_mulVec, Units.mul_inv, Matrix.one_mulVec]
      rw [e, hform_mulVec, ← hG, hform_eq, Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ hGd,
        Matrix.one_mulVec]
      exact O.sum_mem fun k _ => mul_mem (hO _ ((hg z).1 hz k)) (single_mem O j k)) i
    simpa using this
  let M' : Matrix (Fin n) (Fin n) O := Matrix.of fun i j => ⟨G i j, h1 i j⟩
  let N' : Matrix (Fin n) (Fin n) O := Matrix.of fun i j => ⟨G⁻¹ i j, h2 i j⟩
  have h3 : M' * N' = 1 := by
    apply Matrix.map_injective (f := O.subtype) Subtype.val_injective
    change (M' * N').map O.subtype = Matrix.map 1 O.subtype
    rw [Matrix.map_mul, Matrix.map_one _ (map_zero _) (map_one _)]
    exact Matrix.mul_nonsing_inv _ hGd
  obtain ⟨P, hP, h⟩ := hnf M' (fun i j => Subtype.ext (congrFun (congrFun hGh j) i))
    (Matrix.isUnit_det_of_right_inverse h3)
  obtain ⟨P, rfl⟩ := (Matrix.isUnit_iff_isUnit_det P).2 hP
  let φ : O →+* A := c.comp O.subtype
  let Q : GL (Fin n) A := Matrix.GeneralLinearGroup.map φ P
  have hQ : ∀ i j, Q.1 i j ∈ O := fun i j => hO _ (P.1 i j).2
  have hQ' : ∀ i j, (Q⁻¹).1 i j ∈ O := fun i j => by
    rw [← map_inv]; exact hO _ ((P⁻¹).1 i j).2
  have hGQ : G = cT c Q.1 * Q.1 := by
    have := congrArg (fun X => Matrix.map X O.subtype) h
    simp only [Matrix.map_mul] at this
    refine this.trans ?_
    congr 1
    ext i j
    exact (hc _).symm
  refine ⟨g * Q⁻¹, ?_, fun x => ?_⟩
  · rw [Units.val_mul, cT_mul]
    calc _ = cT c (Q⁻¹).1 * G * (Q⁻¹).1 := by rw [hG]; simp only [Matrix.mul_assoc]
      _ = cT c (Q.1 * (Q⁻¹).1) * (Q.1 * (Q⁻¹).1) := by
        rw [hGQ, cT_mul]; simp only [Matrix.mul_assoc]
      _ = 1 := by rw [Units.mul_inv, cT_one, Matrix.one_mul]
  · rw [hg, _root_.mul_inv_rev, inv_inv, Units.val_mul, ← Matrix.mulVec_mulVec]
    refine ⟨fun h => mulVec_mem hQ h, fun h i => ?_⟩
    have := mulVec_mem hQ' h i
    rwa [Matrix.mulVec_mulVec, Units.inv_mul, Matrix.one_mulVec] at this

theorem exists_unitary {O : Subring A} {J : Matrix (Fin n) (Fin n) A} {Λ Λ' : Set (Fin n → A)}
    {k k' : GL (Fin n) A} (hk : cT c k.1 * J * k.1 = 1) (hk' : cT c k'.1 * J * k'.1 = 1)
    (h : ∀ x, x ∈ Λ ↔ ∀ i, ((k⁻¹).1 *ᵥ x) i ∈ O) (h' : ∀ x, x ∈ Λ' ↔ ∀ i, ((k'⁻¹).1 *ᵥ x) i ∈ O) :
    ∃ u ∈ UJ c J, ∀ x, x ∈ Λ ↔ u.1 *ᵥ x ∈ Λ' := by
  refine ⟨k' * k⁻¹, ?_, fun x => ?_⟩
  · change cT c (k' * k⁻¹).1 * J * (k' * k⁻¹).1 = J
    rw [Units.val_mul, cT_mul]
    calc _ = cT c (k⁻¹).1 * (cT c k'.1 * J * k'.1) * (k⁻¹).1 := by simp only [Matrix.mul_assoc]
      _ = cT c (k.1 * (k⁻¹).1) * J * (k.1 * (k⁻¹).1) := by
        rw [hk', ← hk, cT_mul]; simp only [Matrix.mul_assoc]
      _ = J := by rw [Units.mul_inv, cT_one, Matrix.one_mul, Matrix.mul_one]
  · rw [h, h', Matrix.mulVec_mulVec, ← Units.val_mul, inv_mul_cancel_left]

end Abstract

section Local

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  (v : HeightOneSpectrum (𝓞 F))

theorem inclE_mem (x : 𝓞 E) : inclE (F := F) (v.adicCompletion F) (x : E) ∈ intV E v :=
  Subring.subset_closure (Or.inl ⟨⟨x, x, rfl⟩, rfl⟩)

theorem one_tmul_mem (a : v.adicCompletionIntegers F) :
    (1 : E) ⊗ₜ[F] (a : v.adicCompletion F) ∈ intV E v :=
  Subring.subset_closure (Or.inr ⟨⟨a, a.2⟩, rfl⟩)


variable (E) in
def baseMap : v.adicCompletionIntegers F →+* intV E v :=
  (((Algebra.TensorProduct.includeRight : v.adicCompletion F →ₐ[F] E ⊗[F] v.adicCompletion F) :
    v.adicCompletion F →+* E ⊗[F] v.adicCompletion F).comp
      (v.adicCompletionIntegers F).subtype).codRestrict (intV E v) (one_tmul_mem v)

theorem coe_baseMap_algebraMap (s : 𝓞 F) :
    (baseMap E v (algebraMap (𝓞 F) _ s) : E ⊗[F] v.adicCompletion F) =
      inclE (F := F) (v.adicCompletion F) (algebraMap F E (s : F)) := by
  change (1 : E) ⊗ₜ[F] (algebraMap F (v.adicCompletion F) (s : F)) = algebraMap F E (s : F) ⊗ₜ[F] 1
  rw [Algebra.algebraMap_eq_smul_one, Algebra.algebraMap_eq_smul_one, TensorProduct.smul_tmul]

theorem exists_inv {s : 𝓞 F} (hs : s ∉ v.asIdeal) : ∃ t ∈ intV E v,
    t * inclE (F := F) (v.adicCompletion F) (algebraMap F E (s : F)) = 1 := by
  obtain ⟨t, ht⟩ :=
    (((SelfDualGenus.isUnit_algebraMap_iff v s).2 hs).map (baseMap E v)).exists_left_inv
  exact ⟨t, t.2, by rw [← coe_baseMap_algebraMap]; exact congrArg Subtype.val ht⟩

theorem exists_frame {n : ℕ} {L : Submodule (𝓞 E) (Fin n → E)} (hL : IsLat L) :
    ∃ g : GL (Fin n) (E ⊗[F] v.adicCompletion F),
      ∀ x, x ∈ loc v L ↔ ∀ i, ((g⁻¹).1 *ᵥ x) i ∈ intV E v := by
  obtain ⟨B, s, hs, h1, h2⟩ := SemiLocalFrame.exists_frame_denominator F E n L hL.1 hL.2 v
  obtain ⟨t, ht, hts⟩ := exists_inv (E := E) v hs
  let g := Matrix.GeneralLinearGroup.map (inclE (F := F) (E := E) (v.adicCompletion F)) B
  refine ⟨g, fun x => ⟨fun hx i => ?_, fun hx => ?_⟩⟩
  · induction hx using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨y, hy, rfl⟩ := hx
      obtain ⟨a, ha⟩ := h1 y hy i
      have h3 := mul_mem ht (inclE_mem v a)
      have ha' : (a : E) = _ := ha
      rw [ha', map_mul, ← mul_assoc, hts, one_mul, RingHom.map_mulVec] at h3
      rw [← map_inv]
      exact h3
    | zero => simp
    | add x y _ _ hx hy => rw [Matrix.mulVec_add]; exact add_mem hx hy
    | smul a x _ hx =>
      rw [Subring.smul_def, Matrix.mulVec_smul]; exact mul_mem a.2 hx
  · have e : x = g.1 *ᵥ ((g⁻¹).1 *ᵥ x) := by
      rw [Matrix.mulVec_mulVec, Units.mul_inv, Matrix.one_mulVec]
    rw [e, Matrix.mulVec_eq_sum]
    refine Submodule.sum_mem _ fun j _ => ?_
    have := Submodule.smul_mem (loc v L) ⟨_, mul_mem (hx j) ht⟩
      (Submodule.subset_span ⟨_, h2 j, rfl⟩)
    convert this using 1
    funext k
    change g.1 k j * ((g⁻¹).1 *ᵥ x) j = (((g⁻¹).1 *ᵥ x) j * t) * inclE (F := F) _ (_ * B.1 k j)
    rw [map_mul, mul_assoc, ← mul_assoc t, hts, one_mul, mul_comm]
    rfl

variable (σ : E →ₐ[F] E)

omit [NumberField E] in
theorem sigR_tmul (x : E) (a : v.adicCompletion F) :
    sigR σ (v.adicCompletion F) (x ⊗ₜ[F] a) = σ x ⊗ₜ[F] a := rfl

omit [NumberField E] in
theorem sigR_sigR (hσ : ∀ x, σ (σ x) = x) (z : E ⊗[F] v.adicCompletion F) :
    sigR σ (v.adicCompletion F) (sigR σ (v.adicCompletion F) z) = z := by
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul x a => rw [sigR_tmul, sigR_tmul, hσ]
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]

theorem intV_induction {p : E ⊗[F] v.adicCompletion F → Prop} (h0 : p 0)
    (h1 : ∀ (x : 𝓞 E) (a : v.adicCompletionIntegers F), p ((x : E) ⊗ₜ[F] (a : v.adicCompletion F)))
    (h2 : ∀ x y, p x → p y → p (x + y)) {z : E ⊗[F] v.adicCompletion F} (hz : z ∈ intV E v) :
    p z := by
  let φ := Algebra.TensorProduct.productMap
    ((inclE (F := F) (E := E) (v.adicCompletion F)).comp (algebraMap (𝓞 E) E)).toIntAlgHom
    ((intV E v).subtype.comp (baseMap E v)).toIntAlgHom
  have hφ : ∀ (x : 𝓞 E) (a : v.adicCompletionIntegers F),
      φ (x ⊗ₜ[ℤ] a) = (x : E) ⊗ₜ[F] (a : v.adicCompletion F) := fun x a => by
    change ((x : E) ⊗ₜ[F] (1 : v.adicCompletion F)) * ((1 : E) ⊗ₜ[F] (a : v.adicCompletion F)) = _
    rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
  have hle : intV E v ≤ φ.toRingHom.range := by
    refine Subring.closure_le.2 ?_
    rintro _ (⟨⟨_, x, rfl⟩, rfl⟩ | ⟨⟨a, ha⟩, rfl⟩)
    · exact ⟨x ⊗ₜ 1, hφ x 1⟩
    · exact ⟨1 ⊗ₜ ⟨a, ha⟩, hφ 1 ⟨a, ha⟩⟩
  obtain ⟨y, rfl⟩ := hle hz
  clear hz
  induction y using TensorProduct.induction_on with
  | zero => rwa [map_zero]
  | tmul x a => exact (hφ x a).symm ▸ h1 x a
  | add x y hx hy => rw [map_add (f := _)]; exact h2 _ _ hx hy

theorem sigR_mem (z : E ⊗[F] v.adicCompletion F) (hz : z ∈ intV E v) :
    sigR σ (v.adicCompletion F) z ∈ intV E v := by
  refine intV_induction v (p := fun z => sigR σ (v.adicCompletion F) z ∈ intV E v) (by simp)
    (fun x a => ?_) (fun x y hx hy => by rw [map_add]; exact add_mem hx hy) hz
  have := mul_mem (inclE_mem v ⟨σ x, map_isIntegral_int σ x.isIntegral_coe⟩) (one_tmul_mem v a)
  convert this using 1
  change _ = (σ x ⊗ₜ[F] (1 : v.adicCompletion F)) * ((1 : E) ⊗ₜ[F] (a : v.adicCompletion F))
  rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul, sigR_tmul]

omit [NumberField F] [NumberField E] in
theorem exists_int_of_fixed (hfix : ∀ x, σ x = x → x ∈ (algebraMap F E).range) {x : E}
    (hx : IsIntegral ℤ x) (h : σ x = x) : ∃ s : 𝓞 F, algebraMap F E (s : F) = x := by
  obtain ⟨a, rfl⟩ := hfix x h
  exact ⟨⟨a, (isIntegral_algHom_iff (algebraMap F E).toIntAlgHom (algebraMap F E).injective).1 hx⟩,
    rfl⟩

theorem exists_trace (hσ : ∀ x, σ (σ x) = x) (hfix : ∀ x, σ x = x → x ∈ (algebraMap F E).range)
    {z : E ⊗[F] v.adicCompletion F} (hz : z ∈ intV E v) :
    ∃ a, (baseMap E v a : E ⊗[F] v.adicCompletion F) = z + sigR σ (v.adicCompletion F) z := by
  refine intV_induction v (p := fun z => ∃ a, (baseMap E v a : E ⊗[F] v.adicCompletion F) =
    z + sigR σ (v.adicCompletion F) z) ⟨0, by simp⟩ (fun x a => ?_) ?_ hz
  · obtain ⟨s, hs⟩ := exists_int_of_fixed σ hfix (x := (x : E) + σ x)
      (x.isIntegral_coe.add (map_isIntegral_int σ x.isIntegral_coe)) (by rw [map_add (f := _), hσ, add_comm])
    refine ⟨algebraMap (𝓞 F) _ s * a, ?_⟩
    rw [map_mul, Subring.coe_mul, coe_baseMap_algebraMap, hs, sigR_tmul, ← TensorProduct.add_tmul]
    change (((x : E) + σ x) ⊗ₜ[F] (1 : v.adicCompletion F)) *
      ((1 : E) ⊗ₜ[F] (a : v.adicCompletion F)) = _
    rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
  · rintro x y ⟨a, ha⟩ ⟨b, hb⟩
    exact ⟨a + b, by rw [map_add (f := _), Subring.coe_add, ha, hb, map_add (f := _)]; ring⟩

theorem exists_isUnit_sub (hσ : ∀ x, σ (σ x) = x)
    (hfix : ∀ x, σ x = x → x ∈ (algebraMap F E).range)
    (hun : ∀ P : Ideal (𝓞 E), P.IsMaximal → ∃ θ t : 𝓞 E, (t : E) = σ θ ∧ θ - t ∉ P) :
    ∃ ω : intV E v, IsUnit (ω - (sigR σ (v.adicCompletion F)).restrict _ _ (sigR_mem v σ) ω) := by
  haveI := v.isMaximal
  obtain ⟨w, hw, hwv⟩ := Ideal.exists_ideal_over_maximal_of_isIntegral (S := 𝓞 E) v.asIdeal (by
    rw [(RingHom.injective_iff_ker_eq_bot (algebraMap (𝓞 F) (𝓞 E))).1
      (FaithfulSMul.algebraMap_injective _ _)]
    exact bot_le)
  obtain ⟨θ, t, ht, hθ⟩ := hun w hw
  obtain ⟨s, hs⟩ := exists_int_of_fixed σ hfix (x := (((θ - t) * (θ - t) : 𝓞 E) : E))
    (RingOfIntegers.isIntegral_coe _) (by
      change σ (((θ : E) - (t : E)) * ((θ : E) - (t : E))) = ((θ : E) - (t : E)) * ((θ : E) - (t : E))
      rw [ht, map_mul, map_sub, hσ]; ring)
  have hsv : s ∉ v.asIdeal := fun h => by
    rw [← hwv, Ideal.mem_comap,
      show algebraMap (𝓞 F) (𝓞 E) s = (θ - t) * (θ - t) from RingOfIntegers.ext hs] at h
    exact hθ ((hw.isPrime.mem_or_mem h).elim id id)
  refine ⟨⟨_, inclE_mem v θ⟩, isUnit_of_mul_isUnit_left (y := ⟨_, inclE_mem v (θ - t)⟩) ?_⟩
  convert ((SelfDualGenus.isUnit_algebraMap_iff v s).2 hsv).map (baseMap E v)
  apply Subtype.ext
  rw [coe_baseMap_algebraMap, hs]
  change (inclE (F := F) _ (θ : E) - inclE (F := F) _ (σ θ)) * inclE (F := F) _ ((θ - t : 𝓞 E) : E) = _
  rw [← map_sub, ← map_mul, ← ht]
  rfl

theorem normal_form (hσ : ∀ x, σ (σ x) = x) (hfix : ∀ x, σ x = x → x ∈ (algebraMap F E).range)
    (hun : ∀ P : Ideal (𝓞 E), P.IsMaximal → ∃ θ t : 𝓞 E, (t : E) = σ θ ∧ θ - t ∉ P) {n : ℕ}
    (G : Matrix (Fin n) (Fin n) (intV E v))
    (hG : ∀ a b, (sigR σ (v.adicCompletion F)).restrict _ _ (sigR_mem v σ) (G a b) = G b a)
    (hd : IsUnit G.det) : ∃ P : Matrix (Fin n) (Fin n) (intV E v), IsUnit P.det ∧
      G = Pᵀ * P.map ((sigR σ (v.adicCompletion F)).restrict _ _ (sigR_mem v σ)) := by
  haveI := SelfDualGenus.isAdicComplete_adicCompletionIntegers v
  haveI := SelfDualGenus.finite_residueField_adicCompletionIntegers v
  letI := (baseMap E v).toAlgebra
  have hc : ∀ x : intV E v, (sigR σ (v.adicCompletion F)).restrict _ _ (sigR_mem v σ)
      ((sigR σ (v.adicCompletion F)).restrict _ _ (sigR_mem v σ) x) = x :=
    fun x => Subtype.ext (sigR_sigR v σ hσ x)
  have hgal := exists_isUnit_sub v σ hσ hfix hun
  refine UnramifiedHermitian.exists_eq_transpose_mul_map_of_henselian
    (R₀ := v.adicCompletionIntegers F) _ hc (fun a => Subtype.ext ?_) (fun x hx => ?_) hgal hG hd
  · change σ 1 ⊗ₜ[F] (a : v.adicCompletion F) = 1 ⊗ₜ[F] (a : v.adicCompletion F)
    rw [map_one]
  · obtain ⟨w, hw⟩ := QuadraticEtale.exists_add_eq_one _ hc hgal
    obtain ⟨a, ha⟩ := exists_trace v σ hσ hfix (x * w).2
    refine ⟨a, ?_⟩
    have : baseMap E v a = x * w +
        (sigR σ (v.adicCompletion F)).restrict _ _ (sigR_mem v σ) (x * w) := Subtype.ext ha
    rw [map_mul, hx, ← mul_add, hw, mul_one] at this
    exact this

end Local

theorem exists_unitary_of_selfDualAt : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E] [Algebra F E] (cm : CMData F E) (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHerm (cm.sig : E →+* E) J → J.det ≠ 0 → ∀ (L M : Submodule (𝓞 E) (Fin n → E)), IsLat L → IsLat M → ∀ (v : HeightOneSpectrum (𝓞 F)), SelfDualAt cm.sig J v L → SelfDualAt cm.sig J v M → ∃ h ∈ UPts cm.sig J (v.adicCompletion F), ∀ x, x ∈ loc v L ↔ h.1 *ᵥ x ∈ loc v M := by
  intro F E _ _ _ _ _ _ cm n J hJ hd L M hL hM v sL sM
  have hσ : ∀ x, cm.sig (cm.sig x) = x := fun x => star_star x
  have hnf := normal_form v cm.sig hσ (fun x hx => (cm.fixed x).1 hx) cm.cmUnram.2.2 (n := n)
  have hJ' : IsHerm (sigR cm.sig (v.adicCompletion F))
      (J.map (inclE (F := F) (v.adicCompletion F))) := by
    ext i j
    exact congrArg (inclE (F := F) (v.adicCompletion F)) (congrFun (congrFun hJ i) j)
  have hd' : IsUnit (J.map (inclE (F := F) (v.adicCompletion F))).det := by
    rw [← RingHom.mapMatrix_apply, ← RingHom.map_det]
    exact hd.isUnit.map _
  obtain ⟨g, hg⟩ := exists_frame v hL
  obtain ⟨g', hg'⟩ := exists_frame v hM
  obtain ⟨k, hk, h⟩ := exists_orthonormal _ (sigR_sigR v _ hσ) _ (sigR_mem v _) hnf hJ' hd'
    (loc v L) g hg sL
  obtain ⟨k', hk', h'⟩ := exists_orthonormal _ (sigR_sigR v _ hσ) _ (sigR_mem v _) hnf hJ' hd'
    (loc v M) g' hg' sM
  exact exists_unitary _ hk hk' h h'

end GlobalTheory.St.G.Unimod

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsLocalUnitaryOfSelfDualAtPlace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIntSmulIsIntegral =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIntSmulIsIntegral", "h": "module\n\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.OmVSDBwdHolds\npublic import Mathlib.NumberTheory.NumberField.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.IntSmulIsIntegral

theorem exists_int_smul_isIntegral {E : Type} [Field E] [NumberField E] (a : E) :
    ∃ d : ℤ, d ≠ 0 ∧ IsIntegral ℤ (d • a) := by
  have h : IsAlgebraic ℤ a :=
    (IsFractionRing.isAlgebraic_iff ℤ ℚ E).2 (Algebra.IsAlgebraic.isAlgebraic a)
  exact h.exists_integral_multiple

theorem exists_int_smul_mem {E : Type} [inst : Field E] [NumberField E] {n : ℕ}
    (M : Submodule (NumberField.RingOfIntegers E) (Fin n → E))
    (hM : Submodule.span E (↑M : Set (Fin n → E)) = ⊤) (x : Fin n → E) :
    ∃ (c : ℤ), c ≠ (0 : ℤ) ∧ c • x ∈ M := by
  apply Formalism.L2.SG.Pf.NcVal.OmVSt.OmX.exists_int_smul_mem <;> assumption

end GlobalTheory.IntSmulIsIntegral
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIntSmulIsIntegral =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalSpanOfLatticeAtPlaceEqForAlmostAllPlaces =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalSpanOfLatticeAtPlaceEqForAlmostAllPlaces", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.SelfDualAt\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIntSmulIsIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.LocalToGlobal.HermitianForms.IsLocBasis\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.UG Formalism.L2.Forms NumberField IsDedekindDomain Matrix GlobalTheory.St.G
open scoped TensorProduct

namespace GlobalTheory.St.G

section Global

variable {E : Type} [Field E] [NumberField E] {n : ℕ}

theorem exists_zsmul_le (L M : Submodule (𝓞 E) (Fin n → E)) (hL : Module.Finite (𝓞 E) L)
    (hM : Submodule.span E (M : Set (Fin n → E)) = ⊤) :
    ∃ c : ℤ, c ≠ 0 ∧ ∀ x ∈ L, c • x ∈ M := by
  obtain ⟨S, hS⟩ : L.FG := Module.Finite.iff_fg.mp hL
  have hfin : ∀ T : Finset (Fin n → E), ∃ c : ℤ, c ≠ 0 ∧ ∀ x ∈ T, c • x ∈ M := by
    classical
    intro T
    induction T using Finset.induction_on with
    | empty => exact ⟨1, one_ne_zero, by simp⟩
    | insert a T _ ih =>
      obtain ⟨c, hc, hcT⟩ := ih
      obtain ⟨d, hd, hda⟩ := _root_.GlobalTheory.IntSmulIsIntegral.exists_int_smul_mem M hM a
      refine ⟨d * c, mul_ne_zero hd hc, fun x hx => ?_⟩
      rcases Finset.mem_insert.mp hx with rfl | hx
      · rw [mul_comm, mul_smul]
        exact zsmul_mem hda c
      · rw [mul_smul]
        exact zsmul_mem (hcT x hx) d
  obtain ⟨c, hc, hcS⟩ := hfin S
  refine ⟨c, hc, fun x hx => ?_⟩
  rw [← hS] at hx
  induction hx using Submodule.span_induction with
  | mem x hx => exact hcS x hx
  | zero => simp
  | add a b _ _ ha hb =>
    rw [smul_add]
    exact M.add_mem ha hb
  | smul a y _ hy =>
    rw [smul_comm]
    exact M.smul_mem a hy

end Global

section Local

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n : ℕ}

theorem int_inv_mem_adicCompletionIntegers (v : HeightOneSpectrum (𝓞 F)) (c : ℤ)
    (hv : (c : 𝓞 F) ∉ v.asIdeal) :
    (algebraMap F (v.adicCompletion F) (c : F))⁻¹ ∈ v.adicCompletionIntegers F := by
  have h1 : Valued.v (algebraMap F (v.adicCompletion F) (c : F)) = 1 := by
    have h2 : (c : F) = algebraMap (𝓞 F) F (c : 𝓞 F) := by simp
    have h3 : Valued.v (algebraMap F (v.adicCompletion F) (c : F)) = v.valuation F (c : F) :=
      HeightOneSpectrum.valuedAdicCompletion_eq_valuation' v (c : F)
    rw [h3, h2, HeightOneSpectrum.valuation_of_algebraMap]
    exact HeightOneSpectrum.intValuation_eq_one_iff.mpr hv
  rw [HeightOneSpectrum.mem_adicCompletionIntegers, map_inv₀, h1, inv_one]

theorem loc_le_of_zsmul (v : HeightOneSpectrum (𝓞 F)) (L M : Submodule (𝓞 E) (Fin n → E)) (c : ℤ)
    (hc : c ≠ 0) (hv : (c : 𝓞 F) ∉ v.asIdeal) (h : ∀ x ∈ L, c • x ∈ M) : loc v L ≤ loc v M := by
  have hu := int_inv_mem_adicCompletionIntegers v c hv
  set u : v.adicCompletion F := (algebraMap F (v.adicCompletion F) (c : F))⁻¹ with hudef
  have hne : algebraMap F (v.adicCompletion F) (c : F) ≠ 0 := by
    rw [Ne, map_eq_zero]
    exact_mod_cast hc
  have hs : (1 : E) ⊗ₜ[F] u ∈ intV E v :=
    Subring.subset_closure (Or.inr ⟨⟨u, hu⟩, rfl⟩)
  refine Submodule.span_le.mpr ?_
  rintro _ ⟨x, hx, rfl⟩
  have hgen : (fun i => inclE (F := F) (v.adicCompletion F) ((c • x) i)) ∈ loc (F := F) v M :=
    Submodule.subset_span ⟨c • x, h x hx, rfl⟩
  have hm := (loc (F := F) v M).smul_mem ⟨_, hs⟩ hgen
  suffices heq : (fun i => inclE (F := F) (v.adicCompletion F) (x i)) =
      (⟨(1 : E) ⊗ₜ[F] u, hs⟩ : intV E v) • (fun i => inclE (F := F) (v.adicCompletion F) ((c • x) i)) by
    show (fun i => inclE (F := F) (v.adicCompletion F) (x i)) ∈ loc (F := F) v M
    rw [heq]
    exact hm
  funext i
  have hci : (c • x) i = (c : F) • x i := by
    simp [Int.cast_smul_eq_zsmul]
  have hone : (c : F) • u = 1 := by
    rw [Algebra.smul_def, hudef, mul_inv_cancel₀ hne]
  show (x i) ⊗ₜ[F] (1 : v.adicCompletion F) = ((1 : E) ⊗ₜ[F] u) * ((c • x) i ⊗ₜ[F] (1 : v.adicCompletion F))
  rw [Algebra.TensorProduct.tmul_mul_tmul, hci, one_mul, mul_one, TensorProduct.smul_tmul, hone]

end Local

theorem loc_eq_almost_all : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (n : ℕ) (L M : Submodule (𝓞 E) (Fin n → E)), IsLat L → IsLat M →
    {v : HeightOneSpectrum (𝓞 F) | loc v L ≠ loc v M}.Finite := by
  intro F E _ _ _ _ _ n L M hL hM
  obtain ⟨c, hc, hcLM⟩ := exists_zsmul_le L M hL.1 hM.2
  obtain ⟨d, hd, hdML⟩ := exists_zsmul_le M L hM.1 hL.2
  have hcd : (((c * d : ℤ) : 𝓞 F)) ≠ 0 := by
    exact_mod_cast mul_ne_zero hc hd
  have hI : Ideal.span {(((c * d : ℤ) : 𝓞 F))} ≠ 0 := by
    simpa [Ideal.zero_eq_bot, Ideal.span_singleton_eq_bot] using hcd
  refine (Ideal.finite_factors hI).subset fun v hv => ?_
  show v.asIdeal ∣ _
  rw [Ideal.dvd_span_singleton]
  by_contra hn
  have hcv : (c : 𝓞 F) ∉ v.asIdeal := fun h => hn (by
    rw [Int.cast_mul]
    exact Ideal.mul_mem_right _ _ h)
  have hdv : (d : 𝓞 F) ∉ v.asIdeal := fun h => hn (by
    rw [Int.cast_mul]
    exact Ideal.mul_mem_left _ _ h)
  exact hv (le_antisymm (loc_le_of_zsmul v L M c hc hcv hcLM) (loc_le_of_zsmul v M L d hd hdv hdML))

end GlobalTheory.St.G

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalSpanOfLatticeAtPlaceEqForAlmostAllPlaces =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianLatticesLevelOneGenus =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianLatticesLevelOneGenus", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.SelfDualAt\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.AdelicLatticeCarryIffForallPlace\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsAdelicUnitaryOfFiniteSupport\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsLocalUnitaryLatticesOfLevel\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsLocalUnitaryOfSelfDualAtPlace\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.IsLocallySelfDualOfHermitianLatticeOfLevel\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalSpanOfLatticeAtPlaceEqForAlmostAllPlaces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.UG Formalism.L2.Forms NumberField IsDedekindDomain Matrix GlobalTheory.St.G
open scoped TensorProduct

namespace GlobalTheory.St.G

theorem tlat_one_genus : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E] [Algebra F E] (cm : CMData F E) (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHerm (cm.sig : E →+* E) J → J.det ≠ 0 → ∀ (T f : ℕ) (L M : Submodule (𝓞 E) (Fin n → E)), T.Prime → SplitsIn E T → Module.finrank ℚ E = 2 * f → TLat cm.sig J T f L → TLat cm.sig J T f M → ∃ h : UPts cm.sig J (Ad F), ∀ x, (h⁻¹).1.1 *ᵥ x ∈ hat F L ↔ x ∈ hat F M := by
  intro F E _ _ _ _ _ _ cm n J hJ hdet T f L M hT hS hf hL hM
  classical
  have hLat : IsLat L := hL.1
  have hMat : IsLat M := hM.1

  have hloc : ∀ v : HeightOneSpectrum (𝓞 F), ∃ g ∈ UPts cm.sig J (v.adicCompletion F),
      ∀ x, x ∈ loc v L ↔ g.1 *ᵥ x ∈ loc v M := by
    intro v
    by_cases hv : (T : 𝓞 F) ∈ v.asIdeal
    · exact _root_.GlobalTheory.St.G.exists_unitary_of_TLat F E cm n J hJ hdet T f L M hT hS hf hL hM v hv
    · exact _root_.GlobalTheory.St.G.Unimod.exists_unitary_of_selfDualAt F E cm n J hJ hdet L M hLat hMat v
        (_root_.GlobalTheory.St.G.selfDualAt_of_tLat F E cm n J hJ hdet T f L hL v hv)
        (_root_.GlobalTheory.St.G.selfDualAt_of_tLat F E cm n J hJ hdet T f M hM v hv)
  choose g hgU hg using hloc

  let k : ∀ v : HeightOneSpectrum (𝓞 F), GL (Fin n) (E ⊗[F] v.adicCompletion F) :=
    fun v => if loc v L = loc v M then 1 else g v
  have hkU : ∀ v, k v ∈ UPts cm.sig J (v.adicCompletion F) := by
    intro v
    by_cases hv : loc v L = loc v M
    · simp only [k, if_pos hv]; exact one_mem _
    · simp only [k, if_neg hv]; exact hgU v
  have hfin : {v | k v ≠ 1}.Finite := by
    refine (_root_.GlobalTheory.St.G.loc_eq_almost_all F E n L M hLat hMat).subset ?_
    intro v hv heq
    exact hv (by simp only [k, if_pos heq])
  obtain ⟨y, hyU, hy⟩ := _root_.GlobalTheory.St.G.exists_adelic_of_finite_support F E n cm.sig J k hkU hfin
  have hglob : ∀ x, x ∈ hat F L ↔ y.1 *ᵥ x ∈ hat F M := by
    rw [_root_.GlobalTheory.St.G.Carry.carry_iff F E n L M hLat hMat y]
    intro v x
    rw [hy v]
    by_cases hv : loc v L = loc v M
    · simp only [k, if_pos hv, Units.val_one, Matrix.one_mulVec, hv]
    · simp only [k, if_neg hv]; exact hg v x
  refine ⟨⟨y, hyU⟩, fun x => ?_⟩
  rw [hglob, Matrix.mulVec_mulVec]
  have hinv : ((⟨y, hyU⟩ : UPts cm.sig J (Ad F))⁻¹).1 = y⁻¹ := rfl
  rw [hinv, ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.one_mulVec]

end GlobalTheory.St.G
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianLatticesLevelOneGenus =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.GenusMatchHolds =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.GenusMatchHolds", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LevelMatchIff\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.AdelicColumnLatticeEqSpanPartTransportedFrameStatement\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.SelfDualAt\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianLatticesLevelOneGenus\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.StepLevelTLat\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.TransportedColumnLatticeHasLevelAndDualGeneratorStatement\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.FrLink\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.UnitaryDatumLevelPrimeSplitDegreeGramFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory NumberField IsDedekindDomain Matrix Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.ColDict GlobalTheory.St GlobalTheory.St.G
open scoped TensorProduct InnerProductSpace

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.St.G

theorem genusMatch_holds : ∀ (D : D7) (F : ∀ u, Formalism.L2.Forms.Forms0 D u), GenusMatch D F := by
  intro D F X u wt ιA hW hA
  obtain ⟨hT, -, -, hdeg, -, hH, hdet⟩ := record_facts D u
  have hM := (_root_.GlobalTheory.St.G.mlat_main D X u wt hW).1
  have hL := stepLevel_tLat (S := (F u).cls0.lev)
  have hE := (GlobalTheory.T.adelicColumnLattice_eq_spanPart_transportedFrame D X u wt ιA hW hA).1
  obtain ⟨h, hh⟩ := _root_.GlobalTheory.St.G.tlat_one_genus D.host.F D.host.E D.sp.cm (D.R.N 0) _ hH hdet (D.mem u).A.T D.R.f
    (F u).cls0.lev.Lb (Mq wt) (D.mem u).A.T_prime hT hdeg hL hM
  exact ⟨h, fun x => (hh x).trans (hE x)⟩

end GlobalTheory.St.G
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.GenusMatchHolds =====
