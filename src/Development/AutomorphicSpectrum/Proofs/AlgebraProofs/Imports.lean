module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor
public import Mathlib.RingTheory.IsTensorProduct
public import Mathlib.Algebra.Module.Projective
public import Mathlib.LinearAlgebra.Dimension.Finrank
public import Mathlib.RingTheory.Finiteness.Defs
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeFiniteProjectiveBaseChange
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeOfFiniteProjective
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SumMemLoc
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeOfShortExact, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.Imports

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeOfShortExact =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeOfShortExact", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\npublic import Mathlib.RingTheory.IsTensorProduct\npublic import Mathlib.Algebra.Module.Projective\npublic import Mathlib.LinearAlgebra.Dimension.Finrank\npublic import Mathlib.RingTheory.Finiteness.Defs\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeFiniteProjectiveBaseChange\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeOfFiniteProjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.Ar.Num TensorProduct

namespace GlobalTheory.CompanionTheory.Ar.Num.LocFreeKernel

theorem isBaseChange_of_split {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]
    {M₁ M M₂ E₁ E E₂ : Type*} [AddCommGroup M₁] [Module R M₁] [AddCommGroup M] [Module R M]
    [AddCommGroup M₂] [Module R M₂] [AddCommGroup E₁] [Module R E₁] [Module S E₁]
    [IsScalarTower R S E₁] [AddCommGroup E] [Module R E] [Module S E] [IsScalarTower R S E]
    [AddCommGroup E₂] [Module R E₂] [Module S E₂] [IsScalarTower R S E₂]
    (j : M₁ →ₗ[R] M) (p : M →ₗ[R] M₁) (π : M →ₗ[R] M₂) (s : M₂ →ₗ[R] M)
    (hpj : p ∘ₗ j = LinearMap.id) (hsum : j ∘ₗ p + s ∘ₗ π = LinearMap.id)
    (f₁ : M₁ →ₗ[R] E₁) (f : M →ₗ[R] E) (f₂ : M₂ →ₗ[R] E₂)
    (i : E₁ →ₗ[S] E) (q : E →ₗ[S] E₂) (hi : Function.Injective i) (hqi : ∀ x, q (i x) = 0)
    (h₁ : ∀ x, i (f₁ x) = f (j x)) (h₂ : ∀ x, q (f x) = f₂ (π x))
    (hf : IsBaseChange S f) (hf₂ : IsBaseChange S f₂) : IsBaseChange S f₁ := by
  let φ : S ⊗[R] M₁ →ₗ[S] E₁ := LinearMap.liftBaseChange S f₁
  have c₁ : ∀ t, i (φ t) = hf.equiv (j.baseChange S t) := by
    intro t
    induction t using TensorProduct.induction_on with
    | zero => simp
    | tmul a x => simp [φ, IsBaseChange.equiv_tmul, h₁]
    | add a b ha hb => simp only [map_add (f := _), ha, hb]
  have c₂ : ∀ t, q (hf.equiv t) = hf₂.equiv (π.baseChange S t) := by
    intro t
    induction t using TensorProduct.induction_on with
    | zero => simp
    | tmul a x => simp [IsBaseChange.equiv_tmul, h₂]
    | add a b ha hb => simp only [map_add (f := _), ha, hb]
  have c₃ : ∀ t, p.baseChange S (j.baseChange S t) = t := by
    intro t
    rw [← LinearMap.comp_apply, ← LinearMap.baseChange_comp, hpj, LinearMap.baseChange_id]
    rfl
  have c₄ : ∀ t, j.baseChange S (p.baseChange S t) + s.baseChange S (π.baseChange S t) = t := by
    intro t
    rw [← LinearMap.comp_apply, ← LinearMap.comp_apply, ← LinearMap.baseChange_comp,
      ← LinearMap.baseChange_comp, ← LinearMap.add_apply, ← LinearMap.baseChange_add, hsum,
      LinearMap.baseChange_id]
    rfl
  have hinj : Function.Injective φ := by
    intro a b hab
    have : j.baseChange S a = j.baseChange S b := by
      apply hf.equiv.injective
      rw [← c₁, ← c₁, hab]
    rw [← c₃ a, this, c₃]
  have hsurj : Function.Surjective φ := by
    intro e
    obtain ⟨t, ht⟩ := hf.equiv.surjective (i e)
    have h0 : π.baseChange S t = 0 := by
      apply hf₂.equiv.injective
      rw [← c₂, ht, hqi, map_zero]
    refine ⟨p.baseChange S t, hi ?_⟩
    have := c₄ t
    rw [h0, map_zero, add_zero] at this
    rw [c₁, this, ht]
  exact IsBaseChange.of_equiv (LinearEquiv.ofBijective φ ⟨hinj, hsurj⟩) (by
    intro x
    show φ (1 ⊗ₜ[R] x) = f₁ x
    rw [LinearMap.liftBaseChange_tmul, one_smul])

theorem main : ∀ {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (R : Subalgebra o Ω) {E E₁ E₂ : Type} [AddCommGroup E] [Module Ω E] [AddCommGroup E₁] [Module Ω E₁] [AddCommGroup E₂] [Module Ω E₂] (i : E₁ →ₗ[Ω] E) (q : E →ₗ[Ω] E₂), Function.Injective i → Function.Surjective q → LinearMap.range i = LinearMap.ker q → ∀ (L : AddSubgroup E) (r₁ r₂ : ℕ), LocFree R (r₁ + r₂) L → LocFree R r₂ (L.map q.toAddMonoidHom) → LocFree R r₁ (L.comap i.toAddMonoidHom) := by
  intro o Ω _ _ _ R E E₁ E₂ _ _ _ _ _ _ i q hi hq hex L r₁ r₂ hL hL₂
  let M : Submodule R E :=
    { L with smul_mem' := fun a e he => hL.1 a a.2 e he }
  let M₁ : Submodule R E₁ := M.comap (i.restrictScalars R)
  let M₂ : Submodule R E₂ := M.map (q.restrictScalars R)
  obtain ⟨hfin, hproj, hrk, hbc⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.LocFreeProj.main R (r₁ + r₂) M hL
  obtain ⟨hfin₂, hproj₂, hrk₂, hbc₂⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.LocFreeProj.main R r₂ M₂ hL₂
  have hqi : ∀ x, q (i x) = 0 := fun x => by
    rw [← LinearMap.mem_ker, ← hex]; exact LinearMap.mem_range_self i x
  let j : M₁ →ₗ[R] M := (i.restrictScalars R).restrict (fun x hx => hx)
  let π : M →ₗ[R] M₂ := (q.restrictScalars R).restrict (fun x hx => ⟨x, hx, rfl⟩)
  have hπ : Function.Surjective π := by
    rintro ⟨_, x, hx, rfl⟩
    exact ⟨⟨x, hx⟩, rfl⟩
  have hj : Function.Injective j := by
    intro a b hab
    exact Subtype.ext (hi (congrArg Subtype.val hab))
  obtain ⟨s, hs⟩ := Module.projective_lifting_property π LinearMap.id hπ
  have hmem : ∀ x : M, (LinearMap.id - s ∘ₗ π : M →ₗ[R] M) x ∈ LinearMap.range j := by
    intro x
    have h0 : π (x - s (π x)) = 0 := by
      have := LinearMap.congr_fun hs (π x)
      simp only [LinearMap.comp_apply, LinearMap.id_apply] at this
      rw [map_sub, this, sub_self]
    have h1 : ((x - s (π x) : M) : E) ∈ LinearMap.range i := by
      rw [hex]; exact congrArg Subtype.val h0
    obtain ⟨y, hy⟩ := h1
    refine ⟨⟨y, ?_⟩, Subtype.ext hy⟩
    show i y ∈ M
    rw [hy]; exact (x - s (π x) : M).2
  let p : M →ₗ[R] M₁ := (LinearEquiv.ofInjective j hj).symm.toLinearMap ∘ₗ
    LinearMap.codRestrict _ (LinearMap.id - s ∘ₗ π : M →ₗ[R] M) hmem
  have hjp : ∀ x, j (p x) = x - s (π x) := by
    intro x
    exact congrArg Subtype.val ((LinearEquiv.ofInjective j hj).apply_symm_apply
      (LinearMap.codRestrict _ (LinearMap.id - s ∘ₗ π : M →ₗ[R] M) hmem x))
  have hπj : ∀ x, π (j x) = 0 := fun x => Subtype.ext (hqi x)
  have hpj : p ∘ₗ j = LinearMap.id := by
    ext1 x
    apply hj
    rw [LinearMap.comp_apply, hjp, hπj, map_zero, sub_zero, LinearMap.id_apply]
  have hsum : j ∘ₗ p + s ∘ₗ π = LinearMap.id := by
    ext1 x
    simp only [LinearMap.add_apply, LinearMap.comp_apply, hjp, LinearMap.id_apply, sub_add_cancel]
  have hbc₁ : IsBaseChange Ω M₁.subtype :=
    isBaseChange_of_split j p π s hpj hsum M₁.subtype M.subtype M₂.subtype i q hi hqi
      (fun _ => rfl) (fun _ => rfl) hbc hbc₂
  have hfin₁ : Module.Finite R M₁ :=
    Module.Finite.of_surjective p (fun x => ⟨j x, LinearMap.congr_fun hpj x⟩)
  have hproj₁ : Module.Projective R M₁ := Module.Projective.of_split j p hpj
  have : Module.Finite Ω E := Module.Finite.equiv hbc.equiv
  have hrk₁ : Module.finrank Ω E₁ = r₁ := by
    have h1 := LinearMap.finrank_range_add_finrank_ker q
    rw [LinearMap.range_eq_top.2 hq, finrank_top, ← hex, LinearMap.finrank_range_of_inj hi,
      hrk, hrk₂] at h1
    omega
  exact _root_.GlobalTheory.CompanionTheory.Ar.Num.LocFreeProj.locFree_of_projective R r₁ M₁ hfin₁ hproj₁ hrk₁ hbc₁

end GlobalTheory.CompanionTheory.Ar.Num.LocFreeKernel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeOfShortExact =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.Imports =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.Imports", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeOfShortExact\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SumMemLoc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.Ar.Num

namespace GlobalTheory.CompanionTheory.Ar.Num.LocFreeSchanuel

theorem main : ∀ {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (R : Subalgebra o Ω) {E E₂ : Type} [AddCommGroup E] [Module Ω E] [AddCommGroup E₂] [Module Ω E₂] (r r₂ : ℕ) (L : AddSubgroup E) (C C' : AddSubgroup E₂) (Δ : AddSubgroup (E × E₂)), LocFree R r L → LocFree R r₂ C → LocFree R r₂ C' → (∀ a ∈ R, ∀ v ∈ Δ, a • v ∈ Δ) → (∀ v w, (v, w) ∈ Δ → v ∈ L ∧ w ∈ C) → (∀ v ∈ L, ∃ w, (v, w) ∈ Δ) → (∀ w, (0, w) ∈ Δ ↔ w ∈ C') → (∀ w ∈ C, ∃ v, (v, w) ∈ Δ) → LocFree R (r + r₂) Δ ∧ LocFree R r (Δ.comap (AddMonoidHom.inl E E₂)) := by
  intro o Ω _ _ _ R E E₂ _ _ _ _ r r₂ L C C' Δ hL hC hC' hsm hsub hliftL hker hliftC
  have hC'eq : AddSubgroup.comap (LinearMap.inr Ω E E₂).toAddMonoidHom Δ = C' := by
    ext w
    change (0, w) ∈ Δ ↔ w ∈ C'
    exact hker w
  have hLeq : AddSubgroup.map (LinearMap.fst Ω E E₂).toAddMonoidHom Δ = L := by
    ext v
    constructor
    · rintro ⟨⟨v', w⟩, h, rfl⟩
      exact (hsub v' w h).1
    · intro hv
      obtain ⟨w, hw⟩ := hliftL v hv
      exact ⟨(v, w), hw, rfl⟩
  have hCeq : AddSubgroup.map (LinearMap.snd Ω E E₂).toAddMonoidHom Δ = C := by
    ext w
    constructor
    · rintro ⟨⟨v, w'⟩, h, rfl⟩
      exact (hsub v w' h).2
    · intro hw
      obtain ⟨v, hv⟩ := hliftC w hw
      exact ⟨(v, w), hv, rfl⟩
  have hΔ : LocFree R (r + r₂) Δ := by
    have h := GlobalTheory.CompanionTheory.Ar.Num.LocFreeExt.main R (LinearMap.inr Ω E E₂) (LinearMap.fst Ω E E₂)
      LinearMap.inr_injective LinearMap.fst_surjective
      (LinearMap.range_inr (R := Ω) (M := E) (M₂ := E₂)) Δ r₂ r hsm
      (by rw [hC'eq]; exact hC') (by rw [hLeq]; exact hL)
    rwa [Nat.add_comm] at h
  refine ⟨hΔ, ?_⟩
  have h := _root_.GlobalTheory.CompanionTheory.Ar.Num.LocFreeKernel.main R (LinearMap.inl Ω E E₂) (LinearMap.snd Ω E E₂)
    LinearMap.inl_injective LinearMap.snd_surjective
    (LinearMap.range_inl (R := Ω) (M := E) (M₂ := E₂)) Δ r r₂ hΔ (by rw [hCeq]; exact hC)
  have he : (LinearMap.inl Ω E E₂).toAddMonoidHom = AddMonoidHom.inl E E₂ := by
    ext x <;> simp
  rw [he] at h
  exact h

end GlobalTheory.CompanionTheory.Ar.Num.LocFreeSchanuel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.Imports =====
