module

public import GroundTheory.AutomorphicForms.GKModules.GKModule
public import GroundTheory.AutomorphicForms.TensorProductTheorem.KFinite
public import GroundTheory.AutomorphicForms.TensorProductTheorem.GenWindow
public import GroundTheory.AutomorphicForms.TensorProductTheorem.OuterTensor
public import GroundTheory.AutomorphicForms.TensorProductTheorem.Existence
public import GroundTheory.AutomorphicForms.SmoothRep
public import Mathlib.Topology.Algebra.Group.Units
import GroundTheory.AutomorphicForms.LocallyProfinite
import GroundTheory.AutomorphicForms.TensorProductTheorem.Window

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.AutomorphicForms.TensorProductTheorem.CoeToRepresentationApply, GroundTheory.AutomorphicForms.TensorProductTheorem.KProjApplyEqSelfIff, GroundTheory.AutomorphicForms.TensorProductTheorem.TwoFactor, GroundTheory.AutomorphicForms.TensorProductTheorem.GKTensor

-- ===== clump member: GroundTheory.AutomorphicForms.TensorProductTheorem.CoeToRepresentationApply =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.TensorProductTheorem.CoeToRepresentationApply", "h": "module\n\npublic import GroundTheory.AutomorphicForms.GKModules.GKModule\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GroundTheory.Automorphic

attribute [local instance 100] LieRing.ofAssociativeRing

open Set Module

variable {𝔸 : Type*} [NormedRing 𝔸] [NormedAlgebra ℝ 𝔸] [CompleteSpace 𝔸] [FiniteDimensional ℝ 𝔸]
variable {G : Subgroup 𝔸ˣ} {𝔤 : Submodule ℝ 𝔸}

namespace IsExpLieAlgebra

variable {h : IsExpLieAlgebra G 𝔤} {K : Subgroup G} {V : Type*} [AddCommGroup V] [Module ℂ V]

def GKModule.rep (M : h.GKModule K V) :
    Representation ℂ (FreeMonoid (h.lieSubalgebra ⊕ K)) V :=
  FreeMonoid.lift (Sum.elim (fun X => M.ρ X) fun k => M.σ k)

@[simp] theorem GKModule.rep_of_inl (M : h.GKModule K V) (X : h.lieSubalgebra) :
    M.rep (FreeMonoid.of (Sum.inl X)) = M.ρ X :=
  rfl

@[simp] theorem GKModule.rep_of_inr (M : h.GKModule K V) (k : K) :
    M.rep (FreeMonoid.of (Sum.inr k)) = M.σ k :=
  rfl

def GKModule.IsIrreducible (M : h.GKModule K V) : Prop := M.rep.IsIrreducible

theorem GKModule.rep_comm (M : h.GKModule K V) {T : End ℂ V} (hρ : ∀ X, M.ρ X * T = T * M.ρ X)
    (hσ : ∀ k, M.σ k * T = T * M.σ k) (a : FreeMonoid (h.lieSubalgebra ⊕ K)) :
    M.rep a * T = T * M.rep a := by
  induction a using FreeMonoid.inductionOn' with
  | one => simp
  | of_mul x a ih =>
    rw [map_mul, mul_assoc, ih, ← mul_assoc, ← mul_assoc]
    congr 1
    rcases x with X | k
    · exact hρ X
    · exact hσ k

theorem GKModule.apply_σ_mem (M : h.GKModule K V) (Y : Subrepresentation M.rep) (k : K) {y : V}
    (hy : y ∈ Y.toSubmodule) : M.σ k y ∈ Y.toSubmodule :=
  Y.apply_mem_toSubmodule (FreeMonoid.of (Sum.inr k)) hy

section SubQuot

variable (M : h.GKModule K V) (U : Subrepresentation M.rep) (U₀ : Submodule ℂ U.toSubmodule)
  (hU₀ : ∀ a, U₀ ≤ U₀.comap (U.toRepresentation a))

abbrev quotRep : Representation ℂ (FreeMonoid (h.lieSubalgebra ⊕ K)) (U.toSubmodule ⧸ U₀) :=
  U.toRepresentation.quotient U₀ hU₀

theorem quotRep_mk (a : FreeMonoid (h.lieSubalgebra ⊕ K)) (u : U.toSubmodule) :
    quotRep M U U₀ hU₀ a (Submodule.Quotient.mk u) =
      Submodule.Quotient.mk (U.toRepresentation a u) :=
  rfl

theorem exists_form_extend (φ : Dual ℂ (U.toSubmodule ⧸ U₀)) :
    ∃ ψ : Dual ℂ V, ∀ u : U.toSubmodule, φ (Submodule.Quotient.mk u) = ψ u := by
  obtain ⟨ψ, hψ⟩ := LinearMap.exists_extend (φ ∘ₗ U₀.mkQ)
  exact ⟨ψ, fun u => (LinearMap.congr_fun hψ u).symm⟩

theorem coe_toRepresentation_apply (a : FreeMonoid (h.lieSubalgebra ⊕ K)) (u : U.toSubmodule) :
    ((U.toRepresentation a u : U.toSubmodule) : V) = M.rep a u :=
  rfl

def subQuotρ : h.lieSubalgebra →ₗ⁅ℝ⁆ Module.End ℂ (U.toSubmodule ⧸ U₀) where
  toFun X := quotRep M U U₀ hU₀ (FreeMonoid.of (Sum.inl X))
  map_add' X Y := by
    refine Submodule.linearMap_qext _ (LinearMap.ext fun u => ?_)
    simp only [LinearMap.comp_apply, Submodule.mkQ_apply, quotRep_mk, LinearMap.add_apply,
      ← Submodule.Quotient.mk_add]
    congr 1
    refine Subtype.ext ?_
    simp only [Submodule.coe_add, coe_toRepresentation_apply, GKModule.rep_of_inl, map_add (f := _),
      LinearMap.add_apply]
  map_smul' r X := by
    refine Submodule.linearMap_qext _ (LinearMap.ext fun u => ?_)
    simp only [LinearMap.comp_apply, Submodule.mkQ_apply, quotRep_mk, LinearMap.smul_apply,
      RingHom.id_apply]
    rw [← Submodule.Quotient.mk_smul]
    congr 1
    refine Subtype.ext ?_
    rw [Submodule.coe_smul_of_tower]
    simp only [coe_toRepresentation_apply, GKModule.rep_of_inl, map_smul, LinearMap.smul_apply]
  map_lie' {X Y} := by
    refine Submodule.linearMap_qext _ (LinearMap.ext fun u => ?_)
    simp only [LinearMap.comp_apply, Submodule.mkQ_apply, quotRep_mk,
      LieRing.of_associative_ring_bracket, LinearMap.sub_apply, Module.End.mul_apply,
      ← Submodule.Quotient.mk_sub]
    congr 1
    refine Subtype.ext ?_
    simp only [Submodule.coe_sub, coe_toRepresentation_apply, GKModule.rep_of_inl, LieHom.map_lie,
      LieRing.of_associative_ring_bracket, LinearMap.sub_apply, Module.End.mul_apply]

def subQuotσ : Representation ℂ K (U.toSubmodule ⧸ U₀) where
  toFun k := quotRep M U U₀ hU₀ (FreeMonoid.of (Sum.inr k))
  map_one' := by
    refine Submodule.linearMap_qext _ (LinearMap.ext fun u => ?_)
    simp only [LinearMap.comp_apply, Submodule.mkQ_apply, quotRep_mk, Module.End.one_apply]
    congr 1
    refine Subtype.ext ?_
    simp only [coe_toRepresentation_apply, GKModule.rep_of_inr, map_one, Module.End.one_apply]
  map_mul' k₁ k₂ := by
    refine Submodule.linearMap_qext _ (LinearMap.ext fun u => ?_)
    simp only [LinearMap.comp_apply, Submodule.mkQ_apply, quotRep_mk, Module.End.mul_apply]
    congr 1
    refine Subtype.ext ?_
    simp only [coe_toRepresentation_apply, GKModule.rep_of_inr, map_mul, Module.End.mul_apply]

theorem subQuotρ_mk (X : h.lieSubalgebra) (u : U.toSubmodule) :
    subQuotρ M U U₀ hU₀ X (Submodule.Quotient.mk u) =
      Submodule.Quotient.mk (U.toRepresentation (FreeMonoid.of (Sum.inl X)) u) :=
  rfl

theorem subQuotσ_mk (k : K) (u : U.toSubmodule) :
    subQuotσ M U U₀ hU₀ k (Submodule.Quotient.mk u) =
      Submodule.Quotient.mk (U.toRepresentation (FreeMonoid.of (Sum.inr k)) u) :=
  rfl

theorem subQuot_locallyFinite (q : U.toSubmodule ⧸ U₀) :
    FiniteDimensional ℂ (Submodule.span ℂ (range fun k : K => subQuotσ M U U₀ hU₀ k q)) := by
  obtain ⟨u, rfl⟩ := Submodule.Quotient.mk_surjective _ q
  have hfin := M.locallyFinite u
  set S : Submodule ℂ U.toSubmodule :=
    Submodule.span ℂ (range fun k : K => U.toRepresentation (FreeMonoid.of (Sum.inr k)) u)
  have hS : FiniteDimensional ℂ S := by
    have hle : S.map U.toSubmodule.subtype ≤ Submodule.span ℂ (range fun k : K => M.σ k u) := by
      rw [Submodule.map_span_le]
      rintro _ ⟨k, rfl⟩
      exact Submodule.subset_span ⟨k, rfl⟩
    have : FiniteDimensional ℂ (S.map U.toSubmodule.subtype) :=
      Submodule.finiteDimensional_of_le hle
    exact LinearEquiv.finiteDimensional
      (Submodule.equivMapOfInjective _ U.toSubmodule.injective_subtype S).symm
  have hle : Submodule.span ℂ (range fun k : K =>
      subQuotσ M U U₀ hU₀ k (Submodule.Quotient.mk u)) ≤ S.map U₀.mkQ := by
    rw [Submodule.span_le]
    rintro _ ⟨k, rfl⟩
    exact ⟨_, Submodule.subset_span ⟨k, rfl⟩, rfl⟩
  exact Submodule.finiteDimensional_of_le hle

theorem subQuot_hasContinuousCoeff : Representation.HasContinuousCoeff (subQuotσ M U U₀ hU₀) := by
  intro φ q
  obtain ⟨u, rfl⟩ := Submodule.Quotient.mk_surjective _ q
  obtain ⟨ψ, hψ⟩ := exists_form_extend M U U₀ φ
  have : (fun k : K => φ (subQuotσ M U U₀ hU₀ k (Submodule.Quotient.mk u))) =
      fun k => ψ (M.σ k u) := by
    funext k
    rw [subQuotσ_mk, hψ]
    rfl
  rw [this]
  exact M.hasContinuousCoeff ψ u

theorem subQuot_hasDerivAt (X : 𝔤) (hX : ∀ t : ℝ, h.expG (t • X) ∈ K)
    (φ : Dual ℂ (U.toSubmodule ⧸ U₀)) (q : U.toSubmodule ⧸ U₀) :
    HasDerivAt (fun t : ℝ => φ (subQuotσ M U U₀ hU₀ ⟨h.expG (t • X), hX t⟩ q))
      (φ (subQuotρ M U U₀ hU₀ (h.toLie X) q)) 0 := by
  obtain ⟨u, rfl⟩ := Submodule.Quotient.mk_surjective _ q
  obtain ⟨ψ, hψ⟩ := exists_form_extend M U U₀ φ
  have h1 : (fun t : ℝ => φ (subQuotσ M U U₀ hU₀ ⟨h.expG (t • X), hX t⟩
      (Submodule.Quotient.mk u))) = fun t => ψ (M.σ ⟨h.expG (t • X), hX t⟩ u) := by
    funext t
    rw [subQuotσ_mk, hψ]
    rfl
  have h2 : φ (subQuotρ M U U₀ hU₀ (h.toLie X) (Submodule.Quotient.mk u)) =
      ψ (M.ρ (h.toLie X) u) := by
    rw [subQuotρ_mk, hψ]
    rfl
  rw [h1, h2]
  exact M.hasDerivAt_coeff X hX ψ u

theorem subQuot_map_ρ (k : K) (X : 𝔤) (q : U.toSubmodule ⧸ U₀) :
    subQuotσ M U U₀ hU₀ k (subQuotρ M U U₀ hU₀ (h.toLie X) q) =
      subQuotρ M U U₀ hU₀ (h.toLie (h.Ad k X)) (subQuotσ M U U₀ hU₀ k q) := by
  obtain ⟨u, rfl⟩ := Submodule.Quotient.mk_surjective _ q
  rw [subQuotρ_mk, subQuotσ_mk, subQuotσ_mk, subQuotρ_mk]
  congr 1
  exact Subtype.ext (M.map_ρ k X u)

def GKModule.subQuot : h.GKModule K (U.toSubmodule ⧸ U₀) where
  ρ := subQuotρ M U U₀ hU₀
  σ := subQuotσ M U U₀ hU₀
  locallyFinite := subQuot_locallyFinite M U U₀ hU₀
  hasContinuousCoeff := subQuot_hasContinuousCoeff M U U₀ hU₀
  hasDerivAt_coeff := subQuot_hasDerivAt M U U₀ hU₀
  map_ρ := subQuot_map_ρ M U U₀ hU₀

theorem GKModule.subQuot_rep : (M.subQuot U U₀ hU₀).rep = quotRep M U U₀ hU₀ :=
  FreeMonoid.hom_eq fun x => by
    rcases x with X | k <;> rfl

end SubQuot

end IsExpLieAlgebra

end GroundTheory.Automorphic
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.TensorProductTheorem.CoeToRepresentationApply =====

-- ===== clump member: GroundTheory.AutomorphicForms.TensorProductTheorem.KProjApplyEqSelfIff =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.TensorProductTheorem.KProjApplyEqSelfIff", "h": "module\n\npublic import GroundTheory.AutomorphicForms.TensorProductTheorem.KFinite\npublic import GroundTheory.AutomorphicForms.TensorProductTheorem.GenWindow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GroundTheory.Automorphic

namespace CompactRep

open Module Set RestrictedTensor

variable {K : Type*} [Group K] [TopologicalSpace K] [IsTopologicalGroup K] [CompactSpace K]
  [T2Space K] {X : Type*} [AddCommGroup X] [Module ℂ X] {σ : Representation ℂ K X}

def kProj (hσ : IsKFinite σ) {c : Submodule (MonoidAlgebra ℂ K) σ.asModule}
    (hc : c ∈ isotypicComponents (MonoidAlgebra ℂ K) σ.asModule) : End ℂ X :=
  haveI := isSemisimpleModule_asModule hσ
  σ.asModuleEquiv.toLinearMap ∘ₗ (isoProj hc).restrictScalars ℂ ∘ₗ
    σ.asModuleEquiv.symm.toLinearMap

variable (hσ : IsKFinite σ) {c : Submodule (MonoidAlgebra ℂ K) σ.asModule}
  (hc : c ∈ isotypicComponents (MonoidAlgebra ℂ K) σ.asModule)

theorem kProj_apply_eq_self_iff {v : X} : kProj hσ hc v = v ↔ (v : σ.asModule) ∈ c := by
  haveI := isSemisimpleModule_asModule hσ
  constructor
  · intro h
    have : isoProj hc (v : σ.asModule) ∈ c := isoProj_mem_isotypicComponent hc _
    exact h ▸ this
  · intro h
    exact isoProj_apply_of_mem hc h

theorem kProj_mem_component (v : X) : (kProj hσ hc v : σ.asModule) ∈ c := by
  haveI := isSemisimpleModule_asModule hσ
  exact isoProj_mem_isotypicComponent hc _

theorem kProj_kProj (v : X) : kProj hσ hc (kProj hσ hc v) = kProj hσ hc v :=
  (kProj_apply_eq_self_iff hσ hc).2 (kProj_mem_component hσ hc v)

theorem kProj_comm {T : End ℂ X} (hT : ∀ k, T * σ k = σ k * T) (v : X) :
    kProj hσ hc (T v) = T (kProj hσ hc v) := by
  haveI := isSemisimpleModule_asModule hσ
  let f : Representation.IntertwiningMap σ σ := ⟨T, hT⟩
  exact isoProj_comm hc (Representation.IntertwiningMap.equivLinearMapAsModule σ σ f) v

theorem kProj_mem {Y : Submodule ℂ X} (hY : ∀ k, ∀ y ∈ Y, σ k y ∈ Y) {y : X} (hy : y ∈ Y) :
    kProj hσ hc y ∈ Y := by
  haveI := isSemisimpleModule_asModule hσ
  let P : Subrepresentation σ := ⟨Y, fun k y hy => hY k y hy⟩
  exact isoProj_mem hc (Subrepresentation.subrepresentationSubmoduleOrderIso P) hy

theorem isWinProj_kProj {M : Type*} [Monoid M] {ρ : Representation ℂ M X}
    (hsub : ∀ Y : Subrepresentation ρ, ∀ k, ∀ y ∈ Y.toSubmodule, σ k y ∈ Y.toSubmodule) :
    IsWinProj ρ (kProj hσ hc) :=
  ⟨kProj_kProj hσ hc, fun Y _ hy => kProj_mem hσ hc (hsub Y) hy⟩

theorem exists_kProj_eq_self {Y : Submodule ℂ X} (hY : ∀ k, ∀ y ∈ Y, σ k y ∈ Y) (hY0 : Y ≠ ⊥) :
    ∃ (c : Submodule (MonoidAlgebra ℂ K) σ.asModule)
      (hc : c ∈ isotypicComponents (MonoidAlgebra ℂ K) σ.asModule),
      ∃ y ∈ Y, y ≠ 0 ∧ kProj hσ hc y = y := by
  haveI := isSemisimpleModule_asModule hσ
  let P : Subrepresentation σ := ⟨Y, fun k y hy => hY k y hy⟩
  set N := Subrepresentation.subrepresentationSubmoduleOrderIso P
  have hN0 : N ≠ ⊥ := by
    intro h
    apply hY0
    have : P = ⊥ := by
      have := congrArg (Subrepresentation.subrepresentationSubmoduleOrderIso (ρ := σ)).symm h
      rwa [OrderIso.symm_apply_apply, OrderIso.map_bot] at this
    have := congrArg Subrepresentation.toSubmodule this
    exact this
  obtain ⟨S, hSatom, hSN⟩ := (eq_bot_or_exists_atom_le N).resolve_left hN0
  have hS : IsSimpleModule (MonoidAlgebra ℂ K) S := (isSimpleModule_iff_isAtom).2 hSatom
  obtain ⟨s, hs, hs0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hSatom.1
  refine ⟨isotypicComponent (MonoidAlgebra ℂ K) σ.asModule S, ⟨S, hS, rfl⟩, s, hSN hs, hs0, ?_⟩
  exact (kProj_apply_eq_self_iff hσ _).2 (Submodule.le_isotypicComponent S hs)

end CompactRep

end GroundTheory.Automorphic
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.TensorProductTheorem.KProjApplyEqSelfIff =====

-- ===== clump member: GroundTheory.AutomorphicForms.TensorProductTheorem.TwoFactor =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.TensorProductTheorem.TwoFactor", "h": "module\n\npublic import GroundTheory.AutomorphicForms.TensorProductTheorem.OuterTensor\npublic import GroundTheory.AutomorphicForms.TensorProductTheorem.GenWindow\npublic import GroundTheory.AutomorphicForms.TensorProductTheorem.Existence\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GroundTheory.Automorphic

namespace RestrictedTensor

open Module Set TensorProduct

open scoped TensorProduct

variable {M₁ M₂ : Type*} [Monoid M₁] [Monoid M₂] {V : Type*} [AddCommGroup V] [Module ℂ V]

def prodRep (ρ₁ : Representation ℂ M₁ V) (ρ₂ : Representation ℂ M₂ V)
    (hcomm : ∀ a b, ρ₁ a * ρ₂ b = ρ₂ b * ρ₁ a) : Representation ℂ (M₁ × M₂) V where
  toFun p := ρ₁ p.1 * ρ₂ p.2
  map_one' := by simp
  map_mul' p q := by
    simp only [Prod.fst_mul, Prod.snd_mul, map_mul]
    calc ρ₁ p.1 * ρ₁ q.1 * (ρ₂ p.2 * ρ₂ q.2) = ρ₁ p.1 * (ρ₁ q.1 * ρ₂ p.2) * ρ₂ q.2 := by
          simp only [mul_assoc]
      _ = ρ₁ p.1 * (ρ₂ p.2 * ρ₁ q.1) * ρ₂ q.2 := by rw [hcomm]
      _ = ρ₁ p.1 * ρ₂ p.2 * (ρ₁ q.1 * ρ₂ q.2) := by simp only [mul_assoc]

theorem prodRep_apply (ρ₁ : Representation ℂ M₁ V) (ρ₂ : Representation ℂ M₂ V) (hcomm)
    (p : M₁ × M₂) (v : V) : prodRep ρ₁ ρ₂ hcomm p v = ρ₁ p.1 (ρ₂ p.2 v) :=
  rfl

section Existence

variable {ρ₁ : Representation ℂ M₁ V} {ρ₂ : Representation ℂ M₂ V}
  {hcomm : ∀ a b, ρ₁ a * ρ₂ b = ρ₂ b * ρ₁ a} {e₁ e₂ : End ℂ V}

def tensorForm {V₁ V₂ : Type*} [AddCommGroup V₁] [Module ℂ V₁] [AddCommGroup V₂] [Module ℂ V₂]
    (φ : Dual ℂ V₁) (ψ : Dual ℂ V₂) : Dual ℂ (V₁ ⊗[ℂ] V₂) :=
  TensorProduct.lid ℂ ℂ ∘ₗ TensorProduct.map φ ψ

theorem tensorForm_tmul {V₁ V₂ : Type*} [AddCommGroup V₁] [Module ℂ V₁] [AddCommGroup V₂]
    [Module ℂ V₂] (φ : Dual ℂ V₁) (ψ : Dual ℂ V₂) (x : V₁) (y : V₂) :
    tensorForm φ ψ (x ⊗ₜ y) = φ x * ψ y := by
  simp [tensorForm]

theorem exists_equiv_outerTensor (hirr : (prodRep ρ₁ ρ₂ hcomm).IsIrreducible)
    (he₁ : IsWinProj ρ₁ e₁) (he₂ : IsWinProj ρ₂ e₂) (he₁₂ : ∀ b, e₁ * ρ₂ b = ρ₂ b * e₁)
    (he₂₁ : ∀ a, e₂ * ρ₁ a = ρ₁ a * e₂) (hee : e₁ * e₂ = e₂ * e₁)
    [FiniteDimensional ℂ (LinearMap.range (e₁ * e₂))] (hne : LinearMap.range (e₁ * e₂) ≠ ⊥) :
    ∃ (N₁ N₂ : Submodule ℂ V), N₁ ≤ LinearMap.range (e₁ * e₂) ∧ N₂ ≤ LinearMap.range (e₁ * e₂) ∧
      N₁ ≠ ⊥ ∧ N₂ ≠ ⊥ ∧ (∀ a, ∀ n ∈ N₁, e₁ (ρ₁ a n) ∈ N₁) ∧ (∀ b, ∀ n ∈ N₂, e₂ (ρ₂ b n) ∈ N₂) ∧
      (mGenQuotRep ρ₁ e₁ N₁).IsIrreducible ∧ (mGenQuotRep ρ₂ e₂ N₂).IsIrreducible ∧
      ((∀ T : End ℂ ((mGenSubrep ρ₂ N₂).toSubmodule ⧸ mGenKernel ρ₂ e₂ N₂),
          (∀ b, T * mGenQuotRep ρ₂ e₂ N₂ b = mGenQuotRep ρ₂ e₂ N₂ b * T) → ∃ c : ℂ, T = c • 1) →
        Nonempty ((prodRep ρ₁ ρ₂ hcomm).Equiv
          (outerTensor (mGenQuotRep ρ₁ e₁ N₁) (mGenQuotRep ρ₂ e₂ N₂)))) := by
  classical
  haveI := hirr
  set P := prodRep ρ₁ ρ₂ hcomm
  set W := LinearMap.range (e₁ * e₂)
  have hE1 : ∀ w ∈ W, e₁ w = w := by
    rintro _ ⟨x, rfl⟩
    show e₁ (e₁ (e₂ x)) = e₁ (e₂ x)
    exact he₁.idem _
  have hE2 : ∀ w ∈ W, e₂ w = w := by
    rintro _ ⟨x, rfl⟩
    show e₂ (e₁ (e₂ x)) = e₁ (e₂ x)
    rw [← Module.End.mul_apply e₂ e₁, ← hee, Module.End.mul_apply, he₂.idem]
  have hEw : ∀ w ∈ W, (e₁ * e₂) w = w := fun w hw => by
    show e₁ (e₂ w) = w
    rw [hE2 w hw, hE1 w hw]
  have hEidem : ∀ v, (e₁ * e₂) ((e₁ * e₂) v) = (e₁ * e₂) v := fun v => hEw _ ⟨v, rfl⟩

  let sub₁ : Subrepresentation P → Subrepresentation ρ₁ := fun Y =>
    ⟨Y.toSubmodule, fun a y hy => by
      have := Y.apply_mem_toSubmodule (a, 1) hy
      simpa [P, prodRep_apply] using this⟩
  let sub₂ : Subrepresentation P → Subrepresentation ρ₂ := fun Y =>
    ⟨Y.toSubmodule, fun b y hy => by
      have := Y.apply_mem_toSubmodule (1, b) hy
      simpa [P, prodRep_apply] using this⟩
  have hE : IsWinProj P (e₁ * e₂) :=
    ⟨hEidem, fun Y y hy => he₁.mem (sub₁ Y) _ (he₂.mem (sub₂ Y) _ hy)⟩

  let T₁ : M₁ → End ℂ W := fun a => winOp P (e₁ * e₂) (a, 1)
  let T₂ : M₂ → End ℂ W := fun b => winOp P (e₁ * e₂) (1, b)
  have hT₁ : ∀ a (w : W), (T₁ a w : V) = e₁ (ρ₁ a w) := fun a w => by
    show e₁ (e₂ (ρ₁ a (ρ₂ 1 w))) = _
    rw [map_one, Module.End.one_apply, ← Module.End.mul_apply e₂, he₂₁, Module.End.mul_apply,
      hE2 _ w.2]
  have hT₂ : ∀ b (w : W), (T₂ b w : V) = e₂ (ρ₂ b w) := fun b w => by
    show e₁ (e₂ (ρ₁ 1 (ρ₂ b w))) = _
    rw [map_one, Module.End.one_apply, ← Module.End.mul_apply e₁ e₂, hee, Module.End.mul_apply,
      ← Module.End.mul_apply e₁ (ρ₂ b), he₁₂, Module.End.mul_apply, hE1 _ w.2]
  have hT₁₂ : ∀ a b, T₁ a * T₂ b = winOp P (e₁ * e₂) (a, b) := fun a b => by
    ext w
    show (T₁ a (T₂ b w) : V) = e₁ (e₂ (ρ₁ a (ρ₂ b w)))
    rw [hT₁, hT₂, ← Module.End.mul_apply e₂ (ρ₁ a), he₂₁, Module.End.mul_apply]
  have hT₂₁ : ∀ a b, T₂ b * T₁ a = winOp P (e₁ * e₂) (a, b) := fun a b => by
    ext w
    show (T₂ b (T₁ a w) : V) = e₁ (e₂ (ρ₁ a (ρ₂ b w)))
    rw [hT₂, hT₁]
    show e₂ (ρ₂ b (e₁ (ρ₁ a w))) = e₁ (e₂ (ρ₁ a (ρ₂ b w)))
    rw [← Module.End.mul_apply (ρ₂ b) e₁, ← he₁₂, Module.End.mul_apply,
      ← Module.End.mul_apply e₂ e₁, ← hee, Module.End.mul_apply,
      ← Module.End.mul_apply (ρ₂ b) (ρ₁ a), ← hcomm, Module.End.mul_apply]
  set Tp : Bool → Set (End ℂ W) := fun i => if i then range T₁ else range T₂
  have hcommTp : ∀ i j, i ≠ j → ∀ s ∈ Tp i, ∀ t ∈ Tp j, Commute s t := by
    intro i j hij s hs t ht
    cases i <;> cases j <;> simp only [Tp, if_true] at hs ht
    · exact absurd rfl hij
    · obtain ⟨b, rfl⟩ := hs
      obtain ⟨a, rfl⟩ := ht
      exact (hT₂₁ a b).trans (hT₁₂ a b).symm
    · obtain ⟨a, rfl⟩ := hs
      obtain ⟨b, rfl⟩ := ht
      exact (hT₁₂ a b).trans (hT₂₁ a b).symm
    · exact absurd rfl hij
  have hsimple : IsSimpleUnder (⋃ i, Tp i) := by
    have h0 := isSimpleUnder_winOps hE hne
    refine ⟨h0.1, fun p hp => h0.2 p ?_⟩
    rintro _ ⟨⟨a, b⟩, rfl⟩
    have hmem : winOp P (e₁ * e₂) (a, b) ∈ Algebra.adjoin ℂ (⋃ i, Tp i) := by
      rw [← hT₁₂]
      refine Subalgebra.mul_mem _ (Algebra.subset_adjoin ?_) (Algebra.subset_adjoin ?_)
      · exact mem_iUnion.2 ⟨true, by simp [Tp]⟩
      · exact mem_iUnion.2 ⟨false, by simp [Tp]⟩
    exact IsStable.adjoin hp _ hmem
  have hvanish := fun i (N : Submodule ℂ W) (hN : N ≠ ⊥) (hNs : IsStable (Tp i) N)
      (a : End ℂ W) (ha : a ∈ Algebra.adjoin ℂ (Tp i)) (h0 : ∀ x ∈ N, a x = 0) =>
    eq_zero_of_place hsimple hcommTp i hN hNs ha h0
  have : Nontrivial W := Submodule.nontrivial_iff_ne_bot.2 hne
  have hdata := fun i => exists_rankOne_simple (Tp i)
  choose N hNst hN0 hNsimple p hp n hnN hn0 hpn hpN using hdata
  have hpp : ∀ i, p i * p i = p i := by
    intro i
    rw [← sub_eq_zero]
    refine hvanish i (N i) (hN0 i) (hNst i) _ (Subalgebra.sub_mem _
      (Subalgebra.mul_mem _ (hp i) (hp i)) (hp i)) fun x hx => ?_
    obtain ⟨d, hd⟩ := hpN i x hx
    rw [LinearMap.sub_apply, Module.End.mul_apply, hd, map_smul, hpn i, sub_self]
  have hcex : ∀ i, ∀ t ∈ Tp i, ∃ c : ℂ, p i (t (n i)) = c • n i :=
    fun i t ht => hpN i _ (hNst i t ht (n i) (hnN i))
  have hTpT : ∀ i, ∀ t ∈ Tp i, ∀ c : ℂ, p i (t (n i)) = c • n i → p i * t * p i = c • p i := by
    intro i t ht c hc
    rw [← sub_eq_zero]
    refine hvanish i (N i) (hN0 i) (hNst i) _ (Subalgebra.sub_mem _ (Subalgebra.mul_mem _
      (Subalgebra.mul_mem _ (hp i) (Algebra.subset_adjoin ht)) (hp i))
      (Subalgebra.smul_mem _ (hp i) _)) fun y hy => ?_
    obtain ⟨d, hd⟩ := hpN i y hy
    rw [LinearMap.sub_apply, Module.End.mul_apply, Module.End.mul_apply, hd, map_smul, map_smul,
      hc, LinearMap.smul_apply, hd, smul_comm, sub_self]
  have hcommp : Commute (p true) (p false) :=
    commute_adjoin hcommTp (by decide) (hp true) (hp false)
  have hT₁mem : ∀ a, T₁ a ∈ Tp true := fun a => by simp [Tp]
  have hT₂mem : ∀ b, T₂ b ∈ Tp false := fun b => by simp [Tp]
  choose c₁ hc₁ using fun a => hcex true (T₁ a) (hT₁mem a)
  choose c₂ hc₂ using fun b => hcex false (T₂ b) (hT₂mem b)
  have hT₁one : T₁ 1 = 1 := by
    ext w
    rw [hT₁, map_one, Module.End.one_apply, hE1 _ w.2]
    rfl
  have hT₂one : T₂ 1 = 1 := by
    ext w
    rw [hT₂, map_one, Module.End.one_apply, hE2 _ w.2]
    rfl

  obtain ⟨x₁, hx₁⟩ : ∃ y ∈ (⊤ : Submodule ℂ W), p true y ≠ 0 := by
    by_contra hcon
    push Not at hcon
    have := hvanish true ⊤ top_ne_bot (fun _ _ _ _ => trivial) (p true) (hp true)
      fun x _ => hcon x trivial
    apply hn0 true
    rw [← hpn true, this, LinearMap.zero_apply]
  set y₁ := p true x₁
  have hy₁ : p true y₁ = y₁ := by
    show p true (p true x₁) = p true x₁
    rw [← Module.End.mul_apply, hpp]
  let Y : Submodule ℂ W := LinearMap.ker (p true - 1)
  have hY : y₁ ∈ Y := by
    rw [LinearMap.mem_ker, LinearMap.sub_apply, hy₁, Module.End.one_apply, sub_self]
  have hY0 : Y ≠ ⊥ := fun h => hx₁.2 (by
    have : y₁ ∈ (⊥ : Submodule ℂ W) := h ▸ hY
    simpa using this)
  have hYs : IsStable (Tp false) Y := by
    intro t ht y hy
    rw [LinearMap.mem_ker, LinearMap.sub_apply, Module.End.one_apply, sub_eq_zero] at hy ⊢
    have hct : Commute (p true) t :=
      commute_adjoin hcommTp (by decide) (hp true) (Algebra.subset_adjoin ht)
    rw [← Module.End.mul_apply, hct.eq, Module.End.mul_apply, hy]
  obtain ⟨y₂, hy₂Y, hy₂⟩ : ∃ y ∈ Y, p false y ≠ 0 := by
    by_contra hcon
    push Not at hcon
    have := hvanish false Y hY0 hYs (p false) (hp false) hcon
    apply hn0 false
    rw [← hpn false, this, LinearMap.zero_apply]
  set xs := p false y₂
  have hxs0 : xs ≠ 0 := hy₂
  have hxs2 : p false xs = xs := by
    show p false (p false y₂) = p false y₂
    rw [← Module.End.mul_apply, hpp]
  have hxs1 : p true xs = xs := by
    have h := hy₂Y
    rw [LinearMap.mem_ker, LinearMap.sub_apply, Module.End.one_apply, sub_eq_zero] at h
    show p true (p false y₂) = p false y₂
    rw [← Module.End.mul_apply, hcommp.eq, Module.End.mul_apply, h]
  obtain ⟨φ₀, hφ₀⟩ : ∃ φ : Dual ℂ W, φ xs ≠ 0 := by
    by_contra hcon
    push Not at hcon
    exact hxs0 ((Module.forall_dual_apply_eq_zero_iff ℂ xs).1 hcon)
  set φ : Dual ℂ W := (φ₀ xs)⁻¹ • (φ₀ ∘ₗ p true ∘ₗ p false)
  have hφ1 : φ xs = 1 := by
    simp [φ, hxs2, hxs1, hφ₀]
  have hφp1 : ∀ w, φ (p true w) = φ w := fun w => by
    simp only [φ, LinearMap.smul_apply, LinearMap.comp_apply]
    rw [← Module.End.mul_apply (p false), ← hcommp.eq, Module.End.mul_apply,
      ← Module.End.mul_apply (p true) (p true), hpp]
  have hφp2 : ∀ w, φ (p false w) = φ w := fun w => by
    simp only [φ, LinearMap.smul_apply, LinearMap.comp_apply]
    rw [← Module.End.mul_apply (p false) (p false), hpp]

  have hcoefV : ∀ a b, φ (winOp P (e₁ * e₂) (a, b) xs) = c₁ a * c₂ b := by
    intro a b
    rw [← hT₁₂, Module.End.mul_apply]
    set z := T₂ b xs
    have hz1 : p true z = z := by
      have hct : Commute (p true) (T₂ b) :=
        commute_adjoin hcommTp (by decide) (hp true) (Algebra.subset_adjoin (hT₂mem b))
      show p true (T₂ b xs) = T₂ b xs
      rw [← Module.End.mul_apply, hct.eq, Module.End.mul_apply, hxs1]
    have h1 : φ (T₁ a z) = c₁ a * φ z := by
      rw [← hφp1, ← hz1]
      have := congrArg (fun F : End ℂ W => φ (F z)) (hTpT true (T₁ a) (hT₁mem a) (c₁ a) (hc₁ a))
      simp only [Module.End.mul_apply, LinearMap.smul_apply, map_smul, smul_eq_mul] at this
      rw [this, hz1]
    have h2 : φ z = c₂ b := by
      rw [← hφp2]
      have := congrArg (fun F : End ℂ W => φ (F xs)) (hTpT false (T₂ b) (hT₂mem b) (c₂ b) (hc₂ b))
      simp only [Module.End.mul_apply, LinearMap.smul_apply, map_smul, smul_eq_mul, hxs2] at this
      rw [this, hφ1, mul_one]
    rw [h1, h2]

  set N₁ : Submodule ℂ V := (N true).map W.subtype
  set N₂ : Submodule ℂ V := (N false).map W.subtype
  have hN₁W : N₁ ≤ W := by rintro _ ⟨w, -, rfl⟩; exact w.2
  have hN₂W : N₂ ≤ W := by rintro _ ⟨w, -, rfl⟩; exact w.2
  have hN₁e : N₁ ≤ LinearMap.range e₁ := fun x hx => ⟨x, hE1 x (hN₁W hx)⟩
  have hN₂e : N₂ ≤ LinearMap.range e₂ := fun x hx => ⟨x, hE2 x (hN₂W hx)⟩
  have hN₁st : ∀ a, ∀ x ∈ N₁, e₁ (ρ₁ a x) ∈ N₁ := by
    rintro a _ ⟨w, hw, rfl⟩
    exact ⟨T₁ a w, hNst true _ (hT₁mem a) w hw, hT₁ a w⟩
  have hN₂st : ∀ b, ∀ x ∈ N₂, e₂ (ρ₂ b x) ∈ N₂ := by
    rintro b _ ⟨w, hw, rfl⟩
    exact ⟨T₂ b w, hNst false _ (hT₂mem b) w hw, hT₂ b w⟩
  have hN₁0 : N₁ ≠ ⊥ := fun h => hn0 true (by
    have : ((n true : W) : V) ∈ N₁ := ⟨n true, hnN true, rfl⟩
    rw [h, Submodule.mem_bot] at this
    exact Subtype.ext this)
  have hN₂0 : N₂ ≠ ⊥ := fun h => hn0 false (by
    have : ((n false : W) : V) ∈ N₂ := ⟨n false, hnN false, rfl⟩
    rw [h, Submodule.mem_bot] at this
    exact Subtype.ext this)
  have hmin : ∀ i (M' : Submodule ℂ V), (∀ t ∈ Tp i, ∀ w : W, (w : V) ∈ M' → (t w : V) ∈ M') →
      M' ≤ (N i).map W.subtype → M' ≠ ⊥ → M' = (N i).map W.subtype := by
    intro i M' hst hle hne'
    set q : Submodule ℂ (N i) := (M'.comap W.subtype).comap (N i).subtype
    have hq : IsStable (restrictSet (Tp i) (N i) (hNst i)) q := by
      rintro _ ⟨⟨t, ht⟩, rfl⟩ y hy
      exact hst t ht y hy
    have hq0 : q ≠ ⊥ := by
      obtain ⟨u, hu, hu0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hne'
      obtain ⟨m, hm, rfl⟩ := hle hu
      intro h
      have : (⟨m, hm⟩ : N i) ∈ q := hu
      rw [h, Submodule.mem_bot] at this
      have hm0 : m = 0 := congrArg Subtype.val this
      exact hu0 (by simp [hm0])
    have hqt := ((hNsimple i).2 q hq).resolve_left hq0
    refine le_antisymm hle ?_
    rintro _ ⟨m, hm, rfl⟩
    have : (⟨m, hm⟩ : N i) ∈ q := hqt ▸ Submodule.mem_top
    exact this
  have hN₁min : ∀ N' : Submodule ℂ V, N' ≤ N₁ → N' ≠ ⊥ → (∀ a, ∀ x ∈ N', e₁ (ρ₁ a x) ∈ N') →
      N' = N₁ := fun N' hle hne' hst => hmin true N' (fun t ht w hw => by
        simp only [Tp, if_true] at ht
        obtain ⟨a, rfl⟩ := ht
        rw [hT₁]
        exact hst a w hw) hle hne'
  have hN₂min : ∀ N' : Submodule ℂ V, N' ≤ N₂ → N' ≠ ⊥ → (∀ b, ∀ x ∈ N', e₂ (ρ₂ b x) ∈ N') →
      N' = N₂ := fun N' hle hne' hst => hmin false N' (fun t ht w hw => by
        simp only [Tp, if_false, Bool.false_eq_true] at ht
        obtain ⟨b, rfl⟩ := ht
        rw [hT₂]
        exact hst b w hw) hle hne'
  have hπ₁ := isIrreducible_mGenQuotRep he₁ hN₁e hN₁st hN₁0 hN₁min
  have hπ₂ := isIrreducible_mGenQuotRep he₂ hN₂e hN₂st hN₂0 hN₂min
  refine ⟨N₁, N₂, hN₁W, hN₂W, hN₁0, hN₂0, hN₁st, hN₂st, hπ₁, hπ₂, fun hschur => ?_⟩
  haveI := hπ₁
  haveI := hπ₂
  haveI := isIrreducible_outerTensor hπ₁ hπ₂ hschur

  obtain ⟨ψ₁, hψ₁⟩ : ∃ ψ : Dual ℂ W, ψ (n true) = 1 := by
    obtain ⟨f, hf⟩ : ∃ f : Dual ℂ W, f (n true) ≠ 0 := by
      by_contra hcon
      push Not at hcon
      exact hn0 true ((Module.forall_dual_apply_eq_zero_iff ℂ _).1 hcon)
    exact ⟨(f (n true))⁻¹ • f, by simp [hf]⟩
  obtain ⟨ψ₂, hψ₂⟩ : ∃ ψ : Dual ℂ W, ψ (n false) = 1 := by
    obtain ⟨f, hf⟩ : ∃ f : Dual ℂ W, f (n false) ≠ 0 := by
      by_contra hcon
      push Not at hcon
      exact hn0 false ((Module.forall_dual_apply_eq_zero_iff ℂ _).1 hcon)
    exact ⟨(f (n false))⁻¹ • f, by simp [hf]⟩
  let E' : V →ₗ[ℂ] W := LinearMap.codRestrict W (e₁ * e₂) fun v => ⟨v, rfl⟩
  have hE' : ∀ w : W, E' w = w := fun w => Subtype.ext (hEw _ w.2)
  set l₁ : Dual ℂ V := ψ₁ ∘ₗ p true ∘ₗ E'
  set l₂ : Dual ℂ V := ψ₂ ∘ₗ p false ∘ₗ E'
  let n₁ : N₁ := ⟨(n true : V), ⟨n true, hnN true, rfl⟩⟩
  let n₂ : N₂ := ⟨(n false : V), ⟨n false, hnN false, rfl⟩⟩
  have hloc₁ : ∀ a, mGenQuotForm ρ₁ e₁ N₁ l₁ (mGenQuotRep ρ₁ e₁ N₁ a (mGenQuotMk ρ₁ e₁ N₁ n₁)) =
      c₁ a := by
    intro a
    rw [mGenQuotForm_apply]
    have : E' (e₁ (ρ₁ a n₁)) = T₁ a (n true) := by
      rw [← hT₁]
      exact hE' (T₁ a (n true))
    simp only [l₁, LinearMap.comp_apply]
    rw [this, hc₁, map_smul, hψ₁, smul_eq_mul, mul_one]
  have hloc₂ : ∀ b, mGenQuotForm ρ₂ e₂ N₂ l₂ (mGenQuotRep ρ₂ e₂ N₂ b (mGenQuotMk ρ₂ e₂ N₂ n₂)) =
      c₂ b := by
    intro b
    rw [mGenQuotForm_apply]
    have : E' (e₂ (ρ₂ b n₂)) = T₂ b (n false) := by
      rw [← hT₂]
      exact hE' (T₂ b (n false))
    simp only [l₂, LinearMap.comp_apply]
    rw [this, hc₂, map_smul, hψ₂, smul_eq_mul, mul_one]
  refine nonempty_equiv_of_matrixCoeff_eq' (v := (xs : V)) (l := φ ∘ₗ E')
    (w := mGenQuotMk ρ₁ e₁ N₁ n₁ ⊗ₜ mGenQuotMk ρ₂ e₂ N₂ n₂)
    (m := tensorForm (mGenQuotForm ρ₁ e₁ N₁ l₁) (mGenQuotForm ρ₂ e₂ N₂ l₂))
    (fun ⟨a, b⟩ => ?_) ⟨1, ?_⟩
  · rw [outerTensor_tmul, tensorForm_tmul, hloc₁, hloc₂, LinearMap.comp_apply]
    rw [← hcoefV a b]
    rfl
  · rw [LinearMap.comp_apply, map_one, Module.End.one_apply, hE', hφ1]
    exact one_ne_zero

end Existence

end RestrictedTensor

end GroundTheory.Automorphic
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.TensorProductTheorem.TwoFactor =====

-- ===== clump member: GroundTheory.AutomorphicForms.TensorProductTheorem.GKTensor =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.TensorProductTheorem.GKTensor", "h": "module\n\npublic import GroundTheory.AutomorphicForms.TensorProductTheorem.CoeToRepresentationApply\npublic import GroundTheory.AutomorphicForms.TensorProductTheorem.KProjApplyEqSelfIff\npublic import GroundTheory.AutomorphicForms.SmoothRep\npublic import GroundTheory.AutomorphicForms.TensorProductTheorem.TwoFactor\npublic import Mathlib.Topology.Algebra.Group.Units\nimport GroundTheory.AutomorphicForms.LocallyProfinite\nimport GroundTheory.AutomorphicForms.TensorProductTheorem.Window\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

universe u

namespace GroundTheory.Automorphic

attribute [local instance 100] LieRing.ofAssociativeRing

open Set Module RestrictedTensor CompactRep

variable {𝔸 : Type*} [NormedRing 𝔸] [NormedAlgebra ℝ 𝔸] [CompleteSpace 𝔸] [FiniteDimensional ℝ 𝔸]
variable {G : Subgroup 𝔸ˣ} {𝔤 : Submodule ℝ 𝔸}

namespace GKTensor

section FixedEnd

variable {L : Type*} [Group L] [TopologicalSpace L] [IsTopologicalGroup L] [LocallyCompactSpace L]
  [T2Space L] [TotallyDisconnectedSpace L]
  {V : Type*} [AddCommGroup V] [Module ℂ V] {τ : Representation ℂ L V} (hτ : IsSmooth τ)
  {H : Subgroup L} (hHc : IsCompact (H : Set L)) (hHo : IsOpen (H : Set L))

def fixedEnd : End ℂ V := (fixedVectors τ H).subtype ∘ₗ fixedProj τ hτ hHc hHo

theorem fixedEnd_apply_of_mem {v : V} (hv : v ∈ fixedVectors τ H) :
    fixedEnd hτ hHc hHo v = v :=
  fixedProj_apply_of_mem hτ hHc hHo hv

theorem fixedEnd_mem (v : V) : fixedEnd hτ hHc hHo v ∈ fixedVectors τ H :=
  (fixedProj τ hτ hHc hHo v).2

theorem fixedEnd_comm {T : End ℂ V} (hT : ∀ g, T * τ g = τ g * T) (v : V) :
    fixedEnd hτ hHc hHo (T v) = T (fixedEnd hτ hHc hHo v) := by
  let f : Representation.IntertwiningMap τ τ := ⟨T, hT⟩
  have := fixedProj_map hHc hHo hτ hτ f v
  exact congrArg Subtype.val this

theorem isWinProj_fixedEnd : IsWinProj τ (fixedEnd hτ hHc hHo) :=
  ⟨fun v => fixedEnd_apply_of_mem hτ hHc hHo (fixedEnd_mem hτ hHc hHo v),
    fun Y _ hy => fixedProj_mem hτ hHc hHo Y hy⟩

theorem range_fixedEnd : LinearMap.range (fixedEnd hτ hHc hHo) = fixedVectors τ H := by
  refine le_antisymm ?_ fun v hv => ⟨v, fixedEnd_apply_of_mem hτ hHc hHo hv⟩
  rintro _ ⟨v, rfl⟩
  exact fixedEnd_mem hτ hHc hHo v

end FixedEnd

variable {h : IsExpLieAlgebra G 𝔤} {K : Subgroup G} [CompactSpace K]

theorem _root_.GroundTheory.Automorphic.IsExpLieAlgebra.GKModule.isKFinite {V : Type*} [AddCommGroup V]
    [Module ℂ V] (M : h.GKModule K V) : IsKFinite M.σ :=
  ⟨M.locallyFinite, M.hasContinuousCoeff⟩


variable (h K) in
structure GKLModule (L : Type*) [Group L] (V : Type*) [AddCommGroup V] [Module ℂ V] where

  gk : h.GKModule K V

  τ : Representation ℂ L V
  comm_ρ : ∀ X g, gk.ρ X * τ g = τ g * gk.ρ X
  comm_σ : ∀ k g, gk.σ k * τ g = τ g * gk.σ k

namespace GKLModule

variable {L : Type*} [Group L] [TopologicalSpace L] [IsTopologicalGroup L] [LocallyCompactSpace L]
  [T2Space L] [TotallyDisconnectedSpace L] {V : Type u} [AddCommGroup V] [Module ℂ V]
  (Mx : GKLModule h K L V)

theorem rep_comm (a : FreeMonoid (h.lieSubalgebra ⊕ K)) (g : L) :
    Mx.gk.rep a * Mx.τ g = Mx.τ g * Mx.gk.rep a :=
  Mx.gk.rep_comm (fun X => Mx.comm_ρ X g) (fun k => Mx.comm_σ k g) a

def fullRep : Representation ℂ (FreeMonoid (h.lieSubalgebra ⊕ K) × L) V :=
  prodRep Mx.gk.rep Mx.τ Mx.rep_comm

def IsIrreducible : Prop := Mx.fullRep.IsIrreducible

def IsAdmissible : Prop :=
  IsSmooth Mx.τ ∧ ∀ (H : Subgroup L), IsCompact (H : Set L) → IsOpen (H : Set L) →
    ∀ (c : Submodule (MonoidAlgebra ℂ K) Mx.gk.σ.asModule)
      (hc : c ∈ isotypicComponents (MonoidAlgebra ℂ K) Mx.gk.σ.asModule),
      FiniteDimensional ℂ (LinearMap.range (kProj Mx.gk.isKFinite hc ∘ₗ (fixedVectors Mx.τ H).subtype))



theorem exists_equiv_outerTensor_gkl (hirr : Mx.IsIrreducible) (hadm : Mx.IsAdmissible) :
    ∃ (H : Subgroup L) (hHc : IsCompact (H : Set L)) (hHo : IsOpen (H : Set L))
      (c : Submodule (MonoidAlgebra ℂ K) Mx.gk.σ.asModule)
      (hc : c ∈ isotypicComponents (MonoidAlgebra ℂ K) Mx.gk.σ.asModule) (N₁ N₂ : Submodule ℂ V),
      N₁ ≤ fixedVectors Mx.τ H ∧ N₂ ≤ fixedVectors Mx.τ H ∧
      N₂ ≤ LinearMap.range (kProj Mx.gk.isKFinite hc) ∧ N₁ ≠ ⊥ ∧ N₂ ≠ ⊥ ∧
      (∀ b, ∀ n ∈ N₂, fixedEnd hadm.1 hHc hHo (Mx.τ b n) ∈ N₂) ∧
      (mGenQuotRep Mx.gk.rep (kProj Mx.gk.isKFinite hc) N₁).IsIrreducible ∧
      (mGenQuotRep Mx.τ (fixedEnd hadm.1 hHc hHo) N₂).IsIrreducible ∧
      ((∀ T : End ℂ ((mGenSubrep Mx.τ N₂).toSubmodule ⧸ mGenKernel Mx.τ (fixedEnd hadm.1 hHc hHo) N₂),
          (∀ b, T * mGenQuotRep Mx.τ (fixedEnd hadm.1 hHc hHo) N₂ b =
            mGenQuotRep Mx.τ (fixedEnd hadm.1 hHc hHo) N₂ b * T) → ∃ c : ℂ, T = c • 1) →
        Nonempty (Mx.fullRep.Equiv
          (outerTensor (mGenQuotRep Mx.gk.rep (kProj Mx.gk.isKFinite hc) N₁)
            (mGenQuotRep Mx.τ (fixedEnd hadm.1 hHc hHo) N₂)))) := by
  classical
  have hτ := hadm.1
  have hσK := Mx.gk.isKFinite
  have hVnt := nontrivial_of_irreducible hirr
  obtain ⟨x₀, hx₀⟩ := exists_ne (0 : V)
  obtain ⟨H', hH'c, hH'sub⟩ := exists_openSubgroup_isCompact_subset
    ((hτ x₀).mem_nhds (stabilizerOf Mx.τ x₀).one_mem)
  set H : Subgroup L := H'.toSubgroup
  have hHc : IsCompact (H : Set L) := hH'c
  have hHo : IsOpen (H : Set L) := H'.isOpen
  have hx₀H : x₀ ∈ fixedVectors Mx.τ H := fun g hg => hH'sub hg

  have hVHK : ∀ k, ∀ y ∈ fixedVectors Mx.τ H, Mx.gk.σ k y ∈ fixedVectors Mx.τ H := by
    intro k y hy g hg
    rw [← Module.End.mul_apply, ← Mx.comm_σ, Module.End.mul_apply, hy g hg]
  have hVH0 : fixedVectors Mx.τ H ≠ ⊥ := fun hb => hx₀ (by
    have : x₀ ∈ (⊥ : Submodule ℂ V) := hb ▸ hx₀H
    simpa using this)
  obtain ⟨c, hc, y, hyH, hy0, hyc⟩ := exists_kProj_eq_self hσK hVHK hVH0
  set e₁ := kProj hσK hc
  set e₂ := fixedEnd hτ hHc hHo
  have he₁ : IsWinProj Mx.gk.rep e₁ :=
    isWinProj_kProj hσK hc fun Y k y hy => Mx.gk.apply_σ_mem Y k hy
  have he₂ : IsWinProj Mx.τ e₂ := isWinProj_fixedEnd hτ hHc hHo
  have he₁₂ : ∀ g, e₁ * Mx.τ g = Mx.τ g * e₁ := fun g => LinearMap.ext fun v =>
    kProj_comm hσK hc (fun k => (Mx.comm_σ k g).symm) v
  have he₂₁ : ∀ a, e₂ * Mx.gk.rep a = Mx.gk.rep a * e₂ := fun a => LinearMap.ext fun v =>
    fixedEnd_comm hτ hHc hHo (fun g => Mx.rep_comm a g) v
  have hee : e₁ * e₂ = e₂ * e₁ := LinearMap.ext fun v =>
    (kProj_comm hσK hc (T := e₂) (fun k => LinearMap.ext fun w =>
      fixedEnd_comm hτ hHc hHo (fun g => Mx.comm_σ k g) w) v)
  have hW : LinearMap.range (e₁ * e₂) ≤
      LinearMap.range (kProj hσK hc ∘ₗ (fixedVectors Mx.τ H).subtype) := by
    rintro _ ⟨v, rfl⟩
    exact ⟨fixedProj Mx.τ hτ hHc hHo v, rfl⟩
  have hfin : FiniteDimensional ℂ (LinearMap.range (e₁ * e₂)) := by
    have := hadm.2 H hHc hHo c hc
    exact Submodule.finiteDimensional_of_le hW
  have hne : LinearMap.range (e₁ * e₂) ≠ ⊥ := by
    intro hb
    have : y ∈ LinearMap.range (e₁ * e₂) := ⟨y, by
      show e₁ (e₂ y) = y
      rw [fixedEnd_apply_of_mem hτ hHc hHo hyH, hyc]⟩
    rw [hb, Submodule.mem_bot] at this
    exact hy0 this
  obtain ⟨N₁, N₂, hN₁W, hN₂W, hN₁0, hN₂0, -, hN₂st, hπ₁, hπ₂, hequiv⟩ :=
    exists_equiv_outerTensor (hcomm := Mx.rep_comm) hirr he₁ he₂ he₁₂ he₂₁ hee hne
  have hWH : LinearMap.range (e₁ * e₂) ≤ fixedVectors Mx.τ H := by
    rintro _ ⟨v, rfl⟩
    show e₁ (e₂ v) ∈ fixedVectors Mx.τ H
    exact kProj_mem hσK hc hVHK (fixedEnd_mem hτ hHc hHo v)
  have hWc : LinearMap.range (e₁ * e₂) ≤ LinearMap.range (kProj hσK hc) := by
    rintro _ ⟨v, rfl⟩
    exact ⟨e₂ v, rfl⟩
  exact ⟨H, hHc, hHo, c, hc, N₁, N₂, hN₁W.trans hWH, hN₂W.trans hWH, hN₂W.trans hWc, hN₁0, hN₂0,
    hN₂st, hπ₁, hπ₂, hequiv⟩

end GKLModule

end GKTensor

end GroundTheory.Automorphic
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.TensorProductTheorem.GKTensor =====
