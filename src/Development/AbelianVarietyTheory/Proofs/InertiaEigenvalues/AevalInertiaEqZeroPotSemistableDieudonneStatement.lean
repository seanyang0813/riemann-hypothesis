module

public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FinrankLetterHomComp
public import Formalism.LocalRingCardinality.AdicCompletionLocal.LocTied
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.CommuteIsNilpotentOfUnipotent
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FiniteDimensionalWdSpace
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.LinearAlgebra.Eigenspace.Minpoly
import Mathlib.LinearAlgebra.Eigenspace.Semisimple
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation
import Mathlib.RingTheory.Radical.NatInt
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.RingTheory.PicardGroup
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.TypeStar
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsReadingLaws
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.RankOneUnitary
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ThetaMod
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.CoeffRingsHaveRootsOfUnity
import Formalism.AlgebraicWeights.IsAlgWeight
import Formalism.LocalToGlobal.NormalizedHeckeFactors.TypesDefs
import Formalism.LocalToGlobal.PairingIndexBounds.ModelLatticeMoves.IsBichar
import Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf
import ReciprocityTheory.Automorphisms.PlaceA

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqZeroOfForallLetterTypeFunctional, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AevalInertiaEqZeroPotSemistableDieudonne, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AevalInertiaEqZeroPotSemistableDieudonneStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqZeroOfForallLetterTypeFunctional =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqZeroOfForallLetterTypeFunctional", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FinrankLetterHomComp\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Eigenspace.Minpoly\nimport Mathlib.LinearAlgebra.Eigenspace.Semisimple\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.RingTheory.PicardGroup\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Polynomial Module

namespace GlobalTheory.LetterSep

theorem eq_zero_of_forall_letterHom {L U D F k : Type} [Field L] [Field U] [AddCommGroup D] [Module L D]
    (m : U →+* Module.End L D) [Field F] [Field k] [Algebra k L] [Algebra k U] [Algebra k F]
    [Algebra U F] [IsScalarTower k U F] [IsAlgClosed F] [FiniteDimensional k L]
    [Algebra.IsSeparable k L] [Module U D] [FiniteDimensional U D]
    (hm : ∀ (c : U) (x : D), c • x = m c x)
    (hk : ∀ (c : k) (x : D), m (algebraMap k U c) x = algebraMap k L c • x) (x : D)
    (hx : ∀ s : L →ₐ[k] F, ∀ f ∈ GlobalTheory.Pst.LetterDim.letterHom m (s : L →+* F) (algebraMap U F),
      f x = 0) :
    x = 0 := by
  classical
  let sm : L → D →ₗ[U] D := fun a =>
    { toFun := fun x => a • x, map_add' := smul_add a
      map_smul' := fun c x => by rw [hm, RingHom.id_apply, hm, map_smul] }
  let r : L →+* Module.End F (D →ₗ[U] F) :=
    { toFun := fun a =>
        { toFun := fun f => f ∘ₗ sm a, map_add' := fun _ _ => rfl, map_smul' := fun _ _ => rfl }
      map_one' := by ext f x; simp [sm]
      map_mul' := fun a b => by ext f x; simp [sm, smul_smul, mul_comm]
      map_zero' := by ext f x; simp [sm]
      map_add' := fun a b => by ext f x; simp [sm, add_smul] }
  have hr : ∀ a f y, r a f y = f (a • y) := fun _ _ _ => rfl
  have hrk : ∀ c : k, r (algebraMap k L c) =
      algebraMap F (Module.End F (D →ₗ[U] F)) (algebraMap k F c) := fun c => by
    ext f y
    rw [hr, ← hk, ← hm, map_smul, Module.algebraMap_end_apply, LinearMap.smul_apply, Algebra.smul_def,
      ← IsScalarTower.algebraMap_apply, smul_eq_mul]
  obtain ⟨α, hα⟩ := Field.exists_primitive_element k L
  have hint : IsIntegral k α := Algebra.IsIntegral.isIntegral α
  have hpoly : ∀ a : L, ∃ q : k[X], a = aeval α q := fun a => by
    have : a ∈ (IntermediateField.adjoin k {α}).toSubalgebra := by rw [hα]; trivial
    rw [IntermediateField.adjoin_simple_toSubalgebra_of_isAlgebraic hint.isAlgebraic,
      Algebra.adjoin_singleton_eq_range_aeval] at this
    obtain ⟨q, hq⟩ := this
    exact ⟨q, hq.symm⟩
  have hev : ∀ q : k[X], r (aeval α q) = aeval (r α) (q.map (algebraMap k F)) := fun q => by
    rw [aeval_def, aeval_def, hom_eval₂, eval₂_map]
    congr 1
    exact RingHom.ext hrk
  have hE : ∀ s : L →ₐ[k] F, (⨅ a, (r a).eigenspace (s a)) = (r α).eigenspace (s α) := fun s => by
    refine le_antisymm (iInf_le _ α) (le_iInf fun a y hy => ?_)
    obtain ⟨q, rfl⟩ := hpoly a
    rw [End.mem_eigenspace_iff] at hy ⊢
    rw [hev, End.aeval_apply_of_mem_apply_eq_smul hy, eval_map_algebraMap, aeval_algHom_apply]
  have h0 : aeval (r α) ((minpoly k α).map (algebraMap k F)) = 0 := by
    rw [← hev, minpoly.aeval, map_zero]
  have hss : (r α).IsSemisimple := End.isSemisimple_of_squarefree_aeval_eq_zero
    (Polynomial.Separable.map (Algebra.IsSeparable.isSeparable k α)).squarefree h0
  have htop : ⊤ ≤ ⨆ s : L →ₐ[k] F, ⨅ a, (r a).eigenspace (s a) := by
    rw [← hss.iSup_eigenspace_eq_top]
    refine iSup_le fun μ y hy => ?_
    rcases eq_or_ne y 0 with rfl | hy0
    · exact zero_mem _
    have h1 := End.aeval_apply_of_mem_apply_eq_smul (p := (minpoly k α).map (algebraMap k F))
      (End.mem_eigenspace_iff.mp hy)
    rw [h0, LinearMap.zero_apply, eq_comm, smul_eq_zero_iff_left hy0, eval_map_algebraMap] at h1
    have h2 : μ ∈ Set.range fun s : L →ₐ[k] F => s α := by
      rw [Algebra.IsAlgebraic.range_eval_eq_rootSet_minpoly F α, mem_rootSet]
      exact ⟨minpoly.ne_zero hint, h1⟩
    obtain ⟨s, rfl⟩ := h2
    exact Submodule.mem_iSup_of_mem s (by rw [hE s]; exact hy)
  by_contra hx0
  obtain ⟨φ, hφ⟩ : ∃ φ : Module.Dual U D, φ x ≠ 0 := by
    by_contra h
    push_neg at h
    exact hx0 ((Module.forall_dual_apply_eq_zero_iff U x).mp h)
  let f : D →ₗ[U] F := (Algebra.linearMap U F) ∘ₗ φ
  have hf : f x ≠ 0 := by
    simp only [f, LinearMap.comp_apply, Algebra.linearMap_apply]
    exact (_root_.map_ne_zero _).mpr hφ
  apply hf
  refine Submodule.iSup_induction (motive := fun g : D →ₗ[U] F => g x = 0) _ (htop (Submodule.mem_top (x := f)))
    (fun s g hg => ?_) rfl (fun g h hg hh => by simp [hg, hh])
  have h1 : ∀ a y, g (a • y) = s a * g y := by
    intro a y
    have := (Submodule.mem_iInf _).mp hg a
    rw [End.mem_eigenspace_iff] at this
    have := LinearMap.congr_fun this y
    simpa [hr] using this
  have h2 : ∀ c y, g (m c y) = algebraMap U F c * g y := by
    intro c y
    rw [← hm, g.map_smul, Algebra.smul_def]
  exact hx s g.toAddMonoidHom ⟨h1, h2⟩

end GlobalTheory.LetterSep
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqZeroOfForallLetterTypeFunctional =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AevalInertiaEqZeroPotSemistableDieudonne =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AevalInertiaEqZeroPotSemistableDieudonne", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FinrankLetterHomComp\npublic import Formalism.LocalRingCardinality.AdicCompletionLocal.LocTied\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqZeroOfForallLetterTypeFunctional\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.CommuteIsNilpotentOfUnipotent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsReadingLaws\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.RankOneUnitary\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ThetaMod\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.CoeffRingsHaveRootsOfUnity\nimport Formalism.AlgebraicWeights.IsAlgWeight\nimport Formalism.LocalToGlobal.NormalizedHeckeFactors.TypesDefs\nimport Formalism.LocalToGlobal.PairingIndexBounds.ModelLatticeMoves.IsBichar\nimport Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf\nimport ReciprocityTheory.Automorphisms.PlaceA\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT NumberField IsDedekindDomain Polynomial GlobalTheory.HeightCounting GlobalTheory.RowTie GlobalTheory.SplitRead GlobalTheory.NPin GlobalTheory.PendOf
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations

noncomputable section

open GlobalTheory.Pst GlobalTheory.Pst.LetterDim GlobalTheory.WeilDeligne TensorProduct Module

namespace GlobalTheory.IneKillsDpst

section General

variable {L U D : Type} [Field L] [Field U] [AddCommGroup D] [Module L D] (m : U →+* Module.End L D)

def Kills {F : Type} [Field F] (s : L →+* F) (τ : U →+* F) (T : D → D) : Prop :=
  ∀ f ∈ letterHom m s τ, ∀ y, f (T y) = 0

theorem kills_comp {F F' : Type} [Field F] [Field F'] (g : F ≃+* F') (s : L →+* F) (τ : U →+* F)
    (s' : L →+* F') (τ' : U →+* F') (hs : ∀ a, g (s a) = s' a) (hτ : ∀ a, g (τ a) = τ' a) (T : D → D)
    (h : Kills m s τ T) : Kills m s' τ' T := by
  intro f hf y
  let f0 : D →+ F := g.symm.toAddMonoidHom.comp f
  have hf0 : f0 ∈ letterHom m s τ :=
    ⟨fun a x => by simp [f0, hf.1, ← hs], fun c x => by simp [f0, hf.2, ← hτ]⟩
  have := h f0 hf0 y
  simpa [f0] using this

theorem kills_comp_iff {F F' : Type} [Field F] [Field F'] (g : F ≃+* F') (s : L →+* F) (τ : U →+* F)
    (s' : L →+* F') (τ' : U →+* F') (hs : ∀ a, g (s a) = s' a) (hτ : ∀ a, g (τ a) = τ' a) (T : D → D) :
    Kills m s τ T ↔ Kills m s' τ' T :=
  ⟨kills_comp m g s τ s' τ' hs hτ T, kills_comp m g.symm s' τ' s τ
    (fun a => by rw [← hs, RingEquiv.symm_apply_apply]) (fun a => by rw [← hτ, RingEquiv.symm_apply_apply]) T⟩

theorem kills_frob {F : Type} [Field F] (φ : Module.End L D) (hφ : Function.Bijective φ) (σ : U → U)
    (hσ : ∀ c, φ * m c = m (σ c) * φ) (hσ' : Function.Surjective σ) (s : L →+* F) (τ τ' : U →+* F)
    (hτ : ∀ c, τ' c = τ (σ c)) (T : D → D) (hT : ∀ y, φ (T y) = T (φ y)) :
    Kills m s τ T ↔ Kills m s τ' T := by
  have h1 : ∀ c x, φ (m c x) = m (σ c) (φ x) := fun c x => LinearMap.congr_fun (hσ c) x
  let e := LinearEquiv.ofBijective φ hφ
  have h2 : ∀ c x, e.symm (m (σ c) x) = m c (e.symm x) := fun c x => by
    obtain ⟨x, rfl⟩ := e.surjective x
    rw [e.symm_apply_apply, e.symm_apply_eq]
    exact (h1 c x).symm
  constructor
  · intro h f hf y
    let f0 : D →+ F := f.comp e.symm.toLinearMap.toAddMonoidHom
    have hf0 : f0 ∈ letterHom m s τ := by
      refine ⟨fun a x => by simp [f0, hf.1], fun c x => ?_⟩
      obtain ⟨c, rfl⟩ := hσ' c
      simp [f0, h2, hf.2, hτ]
    have := h f0 hf0 (φ y)
    rwa [← hT, show f0 (φ (T y)) = f (T y) from congrArg f (e.symm_apply_apply (T y))] at this
  · intro h f hf y
    obtain ⟨z, rfl⟩ := hφ.2 y
    let f0 : D →+ F := f.comp φ.toAddMonoidHom
    have hf0 : f0 ∈ letterHom m s τ' :=
      ⟨fun a x => by simp [f0, hf.1], fun c x => by simp [f0, h1, hf.2, hτ]⟩
    have := h f0 hf0 z
    rwa [show f0 (T z) = f (φ (T z)) from rfl, hT] at this

theorem commute_aeval_right {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M] {A B : Module.End R M}
    (h : Commute A B) (p : R[X]) : Commute A (Polynomial.aeval B p) := by
  induction p using Polynomial.induction_on' with
  | add p r hp hr => rw [map_add (f := _)]; exact hp.add_right hr
  | monomial k c =>
    rw [Polynomial.aeval_monomial]
    exact (show Commute (algebraMap R (Module.End R M) c) A from Algebra.commutes c A).symm.mul_right (h.pow_right k)

end General

theorem coe_aeval_of_coe {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M] {p : Submodule R M}
    (A : Module.End R p) (f : Module.End R M) (hA : ∀ x : p, ((A x : p) : M) = f x) (q : R[X]) (x : p) :
    ((Polynomial.aeval A q x : p) : M) = Polynomial.aeval f q (x : M) := by
  have hpow : ∀ (n : ℕ) (x : p), (((A ^ n) x : p) : M) = (f ^ n) x := by
    intro n
    induction n with
    | zero => intro x; rfl
    | succ n ih => intro x; rw [pow_succ, pow_succ, Module.End.mul_apply, Module.End.mul_apply, ih, hA]
  induction q using Polynomial.induction_on' with
  | add p q hp hq => simp only [map_add (f := _), LinearMap.add_apply, Submodule.coe_add, hp, hq]
  | monomial n a =>
    simp only [Polynomial.aeval_monomial, Module.End.mul_apply, Module.algebraMap_end_apply,
      Submodule.coe_smul, hpow]

section Local

variable {l : ℕ} [Fact l.Prime] (P : LocPrime l) (ι : Om l ≃+* ℂ) {LL K : FinExt l} {V : Type}
  [AddCommGroup V] [Module ↥LL.1 V] [Module ℚ_[l] V] [IsScalarTower ℚ_[l] ↥LL.1 V]
  (ρ : Representation ↥LL.1 ↥(GK K) V)

theorem mk_aeval {K F D W : Type} [Field K] [Field F] [AddCommGroup D] [Module K D] [AddCommGroup W] [Module F W]
    (φ : K →+* F) (mk : D →+ W) (hmk : ∀ a x, mk (a • x) = φ a • mk x) (A : Module.End K D)
    (R : Module.End F W) (hR : ∀ y, R (mk y) = mk (A y)) (q : K[X]) (x : D) :
    Polynomial.aeval R (q.map φ) (mk x) = mk (Polynomial.aeval A q x) := by
  have hpow : ∀ (n : ℕ) (x : D), (R ^ n) (mk x) = mk ((A ^ n) x) := by
    intro n
    induction n with
    | zero => intro x; rfl
    | succ n ih => intro x; rw [pow_succ, pow_succ, Module.End.mul_apply, Module.End.mul_apply, hR, ih]
  induction q using Polynomial.induction_on' with
  | add p q hp hq => rw [Polynomial.map_add (f := _), map_add (f := _), map_add (f := _), LinearMap.add_apply, LinearMap.add_apply, hp, hq,
      map_add]
  | monomial n a =>
    rw [Polynomial.map_monomial, Polynomial.aeval_monomial, Polynomial.aeval_monomial, Module.End.mul_apply,
      Module.End.mul_apply, Module.algebraMap_end_apply, Module.algebraMap_end_apply, hpow, hmk]

end Local

section Local2
variable {l : ℕ} [Fact l.Prime] (P : LocPrime l) (ι : Om l ≃+* ℂ) {LL K : FinExt l} {V : Type}
  [AddCommGroup V] [Module ↥LL.1 V] [Module ℚ_[l] V] [IsScalarTower ℚ_[l] ↥LL.1 V]
  (ρ : Representation ↥LL.1 ↥(GK K) V)


set_option maxHeartbeats 2000000 in
theorem letterHom_eq_zero (f : ↥(Dpst P ρ) →+ Om l)
    (hf : f ∈ letterHom (mulD P ρ) ((LL.1.val : ↥LL.1 →ₐ[ℚ_[l]] Om l) : ↥LL.1 →+* Om l)
      (algebraMap ↥(MaximalUnramifiedExtension l) (Om l))) (y : ↥(Dpst P ρ)) (hy : wdMk P ι ρ y = 0) : f y = 0 := by
  have hfm : ∀ (c : ↥(MaximalUnramifiedExtension l)) (x : ↥(Dpst P ρ)), f (mulD P ρ c x) = algebraMap ↥(MaximalUnramifiedExtension l) (Om l) c * f x := hf.2
  letI := algC ι LL
  obtain ⟨f2, hf2⟩ : ∃ f2 : ℂ ⊗[↥LL.1] ↥(Dpst P ρ) →ₗ[ℂ] ℂ, ∀ (a : ℂ) (x : ↥(Dpst P ρ)),
      f2 (a ⊗ₜ x) = a * ι (f x) := by
    let f1 : ↥(Dpst P ρ) →ₗ[↥LL.1] ℂ :=
      { toFun := fun x => ι (f x), map_add' := fun x y => by rw [map_add (f := _), map_add (f := _)]
        map_smul' := fun a x => by
          rw [hf.1, map_mul, RingHom.id_apply, Algebra.smul_def]; rfl }
    exact ⟨LinearMap.liftBaseChange ℂ f1, fun a x => by simp [f1, LinearMap.liftBaseChange_tmul]⟩
  have h2 : letterKer (mulD P ρ) ℂ (urC ι) ≤ LinearMap.ker f2 := by
    refine iSup_le fun c => ?_
    rw [LinearMap.range_le_ker_iff]
    refine AlgebraTensorModule.ext fun a x => ?_
    have e1 : (f2 ∘ₗ (LinearMap.baseChange ℂ ((mulD P ρ) c) - (urC ι) c • LinearMap.id)) (a ⊗ₜ[↥LL.1] x) =
        f2 (a ⊗ₜ[↥LL.1] (mulD P ρ c x)) - urC ι c * f2 (a ⊗ₜ[↥LL.1] x) := by
      simp only [LinearMap.comp_apply, LinearMap.sub_apply, LinearMap.baseChange_tmul, LinearMap.smul_apply,
        LinearMap.id_apply, map_sub, map_smul, smul_eq_mul]
    have e2 : ι (algebraMap ↥(MaximalUnramifiedExtension l) (Om l) c) = urC ι c := rfl
    have e3 : f2 (a ⊗ₜ[↥LL.1] (mulD P ρ c x)) = a * (ι (algebraMap ↥(MaximalUnramifiedExtension l) (Om l) c) * ι (f x)) := by
      rw [hf2, hfm, map_mul]
    have e4 := hf2 a x
    rw [e1, LinearMap.zero_apply]
    linear_combination e3 - urC ι c * e4 + a * ι (f x) * e2
  have hmem : (1 : ℂ) ⊗ₜ[↥LL.1] y ∈ letterKer (mulD P ρ) ℂ (urC ι) := by
    have h0 : letterQ (mulD P ρ) ℂ (urC ι) ((1 : ℂ) ⊗ₜ[↥LL.1] y) = 0 := hy
    rwa [← LinearMap.mem_ker, ker_letterQ] at h0
  have h3 := h2 hmem
  rw [LinearMap.mem_ker, hf2, one_mul] at h3
  exact (map_eq_zero_iff ι ι.injective).mp h3
end Local2


set_option synthInstance.maxHeartbeats 200000 in
open Classical in
theorem aeval_stRep_eq_zero : ∀ {l : ℕ} [Fact l.Prime] (P : LocPrime l) (AI : LocAinf l P), LocTied l P AI → ∀ (ι : Om l ≃+* ℂ) {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω] {A : ValuationSubring Ω} {w : HeightOneSpectrum (𝓞 E)} {O : Type} [CommRing O] [Algebra ℤ_[l] O] [TopologicalSpace O] (Bw : LocBridge l E Ω (Dec (F := E) A) O) (h : IsPlaceOver A w) (hj : GlobalTheory.Pst.Induces Bw) {LL : FinExt l} {V : Type} [AddCommGroup V] [Module ↥LL.1 V] [Module ℚ_[l] V] [IsScalarTower ℚ_[l] ↥LL.1 V] [FiniteDimensional ↥LL.1 V] (ρ : Representation ↥LL.1 ↥(GK Bw.Kw) V), GlobalTheory.Pst.IsPst P ρ → ∀ (σ : ↥(Ine (F := E) A)) (q : (↥LL.1)[X]), q.map (ι.toRingHom.comp (algebraMap ↥LL.1 (Om l))) = (GlobalTheory.Pst.wdPst P ι Bw h hj ρ).charPol (GlobalTheory.WeilDeligne.ineIncl h σ) → ∀ x ∈ GlobalTheory.Pst.Dpst P ρ, Polynomial.aeval (GlobalTheory.Pst.stRep P ρ (GlobalTheory.Pst.weilToGK Bw h (GlobalTheory.WeilDeligne.ineIncl h σ))) q x = 0 := by
  intro l _ P AI _ ι E Ω _ _ _ _ _ A w O _ _ _ Bw h hj LL V _ _ _ _ _ ρ hV σ q hq x hx
  haveI hfin := hV.finite
  haveI := LL.2
  set g := weilToGK Bw h (ineIncl h σ) with hg
  set T : Module.End ↥LL.1 ↥(Dpst P ρ) := Polynomial.aeval (actD P ρ g) q with hTdef

  have hR : ∀ y, wdRho P ι Bw h hj ρ (ineIncl h σ) (wdMk P ι ρ y) = wdMk P ι ρ (actD P ρ g y) := fun y => by
    rw [wdRho_mk, weilD_ineIncl]
  have hlet : ∀ y, wdMk P ι ρ (T y) = 0 := fun y => by
    have := mk_aeval (ι.toRingHom.comp (algebraMap ↥LL.1 (Om l)))
      (AddMonoidHom.mk' (wdMk P ι ρ) (wdMk_add P ι ρ)) (fun a x => wdMk_smul P ι ρ a x)
      (actD P ρ g) (wdRho P ι Bw h hj ρ (ineIncl h σ)) hR q y
    rw [hq, GlobalTheory.Pst.DpstMap.charPol_wdPst P ι Bw h hj ρ hV,
      LinearMap.aeval_self_charpoly, LinearMap.zero_apply] at this
    exact this.symm

  have hφc : Commute (phiD P ρ) T := commute_aeval_right (phiD_actD P ρ g) q
  have hφT : ∀ y, phiD P ρ (T y) = T (phiD P ρ y) := fun y => LinearMap.congr_fun hφc.eq y

  let d : (↥LL.1 →ₐ[ℚ_[l]] Om l) → ℕ := fun s =>
    if Kills (mulD P ρ) (s : ↥LL.1 →+* Om l) (algebraMap ↥(MaximalUnramifiedExtension l) (Om l)) T then 1 else 0
  have hd : ∀ s t, d s = d t := GlobalTheory.Pst.LetterDim.const_of_invariant d
    (fun g' hg' s => by
      have key := kills_comp_iff (mulD P ρ) g'.toRingEquiv (s : ↥LL.1 →+* Om l) (algebraMap ↥(MaximalUnramifiedExtension l) (Om l))
        (((g' : Om l →ₐ[ℚ_[l]] Om l).comp s : ↥LL.1 →ₐ[ℚ_[l]] Om l) : ↥LL.1 →+* Om l)
        (algebraMap ↥(MaximalUnramifiedExtension l) (Om l)) (fun _ => rfl) (fun c => hg' c) T
      simp only [d, key])
    (fun g' hg' s => by
      have key1 := kills_comp_iff (mulD P ρ) g'.toRingEquiv (s : ↥LL.1 →+* Om l) (algebraMap ↥(MaximalUnramifiedExtension l) (Om l))
        (((g' : Om l →ₐ[ℚ_[l]] Om l).comp s : ↥LL.1 →ₐ[ℚ_[l]] Om l) : ↥LL.1 →+* Om l)
        ((algebraMap ↥(MaximalUnramifiedExtension l) (Om l)).comp (frobUr l : ↥(MaximalUnramifiedExtension l) →+* ↥(MaximalUnramifiedExtension l))) (fun _ => rfl) (fun c => hg' c) T
      have key2 := kills_frob (mulD P ρ) (phiD P ρ) phiD_bijective (frobUr l) (phiD_mulD P ρ)
        frobUr_bijective.2 (((g' : Om l →ₐ[ℚ_[l]] Om l).comp s : ↥LL.1 →ₐ[ℚ_[l]] Om l) : ↥LL.1 →+* Om l)
        (algebraMap ↥(MaximalUnramifiedExtension l) (Om l)) ((algebraMap ↥(MaximalUnramifiedExtension l) (Om l)).comp (frobUr l : ↥(MaximalUnramifiedExtension l) →+* ↥(MaximalUnramifiedExtension l)))
        (fun _ => rfl) T hφT
      simp only [d, key1, key2])
  have h0 : Kills (mulD P ρ) ((LL.1.val : ↥LL.1 →ₐ[ℚ_[l]] Om l) : ↥LL.1 →+* Om l)
      (algebraMap ↥(MaximalUnramifiedExtension l) (Om l)) T :=
    fun f hf y => letterHom_eq_zero P ι ρ f hf (T y) (hlet y)
  have hall : ∀ s : ↥LL.1 →ₐ[ℚ_[l]] Om l, Kills (mulD P ρ) (s : ↥LL.1 →+* Om l) (algebraMap ↥(MaximalUnramifiedExtension l) (Om l)) T := by
    intro s
    have e := hd s LL.1.val
    have e1 : d LL.1.val = 1 := if_pos h0
    rw [e1] at e
    by_contra hs
    have : d s = 0 := if_neg hs
    omega

  have hT0 : T ⟨x, hx⟩ = 0 := by
    letI : Module ↥(MaximalUnramifiedExtension l) ↥(Dpst P ρ) := inferInstanceAs (Module ↥(MaximalUnramifiedExtension l) (DpstUr P ρ))
    haveI : FiniteDimensional ↥(MaximalUnramifiedExtension l) ↥(Dpst P ρ) := hfin
    refine _root_.GlobalTheory.LetterSep.eq_zero_of_forall_letterHom (k := ℚ_[l]) (F := Om l) (mulD P ρ) (fun _ _ => rfl) (fun c x => Subtype.ext (by
      have : mulV P ↥LL.1 V (algebraMap ℚ_[l] ↥(MaximalUnramifiedExtension l) c) = algebraMap ℚ_[l] ↥LL.1 c • LinearMap.id :=
        end_ext P fun v b => by
          rw [mulV_tmul, ← IsScalarTower.algebraMap_apply, ← Algebra.smul_def, tmul_smul,
            LinearMap.smul_apply, algebraMap_smul, LinearMap.id_apply]
      rw [coe_mulD, this]
      rfl)) (T ⟨x, hx⟩) fun s f hf => hall s f hf ⟨x, hx⟩
  have := coe_aeval_of_coe (p := Dpst P ρ) (actD P ρ g) (stRep P ρ g) (fun _ => rfl) q ⟨x, hx⟩
  rw [← this]
  exact congrArg Subtype.val hT0

end GlobalTheory.IneKillsDpst
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AevalInertiaEqZeroPotSemistableDieudonne =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AevalInertiaEqZeroPotSemistableDieudonneStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AevalInertiaEqZeroPotSemistableDieudonneStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FiniteDimensionalWdSpace\npublic import Formalism.LocalRingCardinality.AdicCompletionLocal.LocTied\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AevalInertiaEqZeroPotSemistableDieudonne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsReadingLaws\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.RankOneUnitary\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ThetaMod\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.CoeffRingsHaveRootsOfUnity\nimport Formalism.AlgebraicWeights.IsAlgWeight\nimport Formalism.LocalToGlobal.NormalizedHeckeFactors.TypesDefs\nimport Formalism.LocalToGlobal.PairingIndexBounds.ModelLatticeMoves.IsBichar\nimport Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf\nimport ReciprocityTheory.Automorphisms.PlaceA\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT NumberField IsDedekindDomain Polynomial GlobalTheory.HeightCounting GlobalTheory.RowTie GlobalTheory.SplitRead GlobalTheory.NPin GlobalTheory.PendOf
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AevalInertiaEqZeroPotSemistableDieudonneStatement =====
