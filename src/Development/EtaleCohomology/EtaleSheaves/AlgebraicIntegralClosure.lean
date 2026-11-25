module

public import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul
public import Development.EtaleCohomology.EtaleSheaves.FibreEqvPf
public import Development.EtaleCohomology.EtaleSheaves.AICOpenPf
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.AlgebraicIntegralClosure.AicLoc, Development.EtaleCohomology.EtaleSheaves.AlgebraicIntegralClosure

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.AlgebraicIntegralClosure.AicLoc =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.AlgebraicIntegralClosure.AicLoc", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Polynomial GlobalTheory.EtC

namespace LateralTheory.E.BaseAICPf.Loc

theorem aic_loc {A L : Type} [CommRing A] [CommRing L] [Algebra A L] (M : Submonoid A) [IsLocalization M L]
    (hA : AIC A) : AIC L := by
  classical
  intro p hm hd
  set n := p.natDegree
  obtain ⟨b, hb⟩ := IsLocalization.exist_integer_multiples_of_finset M ((Finset.range (n + 1)).image p.coeff)
  set u := algebraMap A L b
  have hlift : p.scaleRoots u ∈ lifts (algebraMap A L) := by
    rw [lifts_iff_coeff_lifts]
    intro i
    rw [coeff_scaleRoots]
    rcases lt_trichotomy i n with h | h | h
    · obtain ⟨a, ha⟩ := hb (p.coeff i) (Finset.mem_image.2 ⟨i, Finset.mem_range.2 (by omega), rfl⟩)
      obtain ⟨k, hk⟩ : ∃ k, n - i = k + 1 := ⟨n - i - 1, by omega⟩
      refine ⟨a * (b : A) ^ k, ?_⟩
      rw [hk, map_mul, map_pow, ha, Algebra.smul_def, pow_succ]
      simp only [u]; ring
    · subst h; rw [tsub_self, pow_zero, mul_one]; exact ⟨1, by rw [map_one]; exact hm.symm⟩
    · rw [coeff_eq_zero_of_natDegree_lt h, zero_mul]; exact ⟨0, map_zero _⟩
  obtain ⟨q, hq, hqd, hqm⟩ := lifts_and_natDegree_eq_and_monic hlift ((monic_scaleRoots_iff u).2 hm)
  obtain ⟨a, ha⟩ := hA q hqm (by rw [hqd, natDegree_scaleRoots]; exact hd)
  have hu : IsUnit u := IsLocalization.map_units L b
  obtain ⟨v, hv⟩ := id hu
  refine ⟨(↑v⁻¹ : L) * algebraMap A L a, ?_⟩
  have h1 : (p.scaleRoots u).eval (algebraMap A L a) = 0 := by
    rw [← hq, eval_map, eval₂_at_apply, ha, map_zero]
  have h2 : (p.scaleRoots u).eval (u * ((↑v⁻¹ : L) * algebraMap A L a)) = u ^ n * p.eval ((↑v⁻¹ : L) * algebraMap A L a) :=
    scaleRoots_eval₂_mul (RingHom.id L) _ u
  have hur : u * ((↑v⁻¹ : L) * algebraMap A L a) = algebraMap A L a := by
    rw [← hv, ← mul_assoc, Units.mul_inv, one_mul]
  rw [hur, h1] at h2
  have hun : IsUnit (u ^ n) := hu.pow n
  exact (hun.mul_right_eq_zero).1 h2.symm

end LateralTheory.E.BaseAICPf.Loc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.AlgebraicIntegralClosure.AicLoc =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.AlgebraicIntegralClosure =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.AlgebraicIntegralClosure", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.FibreEqvPf\npublic import Development.EtaleCohomology.EtaleSheaves.AlgebraicIntegralClosure.AicLoc\npublic import Development.EtaleCohomology.EtaleSheaves.AICOpenPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry GlobalTheory.EtC Polynomial LateralTheory.E.t_E2Cut LateralTheory.E.AICOpenPf

namespace LateralTheory.E.BaseAICPf

theorem aic_of_local {Z : Scheme.{0}} [IsIntegral Z]
    (hloc : ∀ (W : Z.Opens) (y : Z), y ∈ W → ∃ U : Z.Opens, y ∈ U ∧ U ≤ W ∧ AIC Γ(Z, U))
    (W : Z.Opens) (hW : (W : Set Z).Nonempty) : AIC Γ(Z, W) := by
  intro p hm hd
  have : Nonempty W := ⟨⟨_, hW.some_mem⟩⟩
  have hcov : ∀ x : W, ∃ U : Z.Opens, (x : Z) ∈ U ∧ U ≤ W ∧ AIC Γ(Z, U) := fun x => hloc W x x.2
  choose U hxU hUW hUa using hcov
  have hne : ∀ x : W, Nonempty (U x) := fun x => ⟨⟨_, hxU x⟩⟩
  let ψ := Z.germToFunctionField W
  have hroot : ∀ x : W, ∃ β : Z.functionField, (p.map ψ.hom).eval β = 0 := by
    intro x
    have := hne x
    have hA : AIC Γ(Z, U x) := hUa x
    let ρ := (Z.presheaf.map (homOfLE (hUW x)).op).hom
    obtain ⟨r, hr⟩ := hA (p.map ρ) (hm.map ρ) (by rw [hm.natDegree_map]; exact hd)
    refine ⟨Z.germToFunctionField (U x) r, ?_⟩
    rw [← gtf_res_hom (homOfLE (hUW x)), ← Polynomial.map_map, Polynomial.eval_map_apply, hr, map_zero]
  obtain ⟨β, hβ⟩ := hroot ⟨_, hW.some_mem⟩
  have hsec : ∀ x : W, ∃ t : Γ(Z, U x), Z.germToFunctionField (U x) t = β := by
    intro x
    have := hne x
    have hA : AIC Γ(Z, U x) := hUa x
    let ρ := (Z.presheaf.map (homOfLE (hUW x)).op).hom
    exact roots_in (Z.germToFunctionField (U x)).hom hA _ (p.map ρ) rfl (hm.map ρ) β
      (by rw [Polynomial.map_map, gtf_res_hom]; exact hβ)
  choose sf hsf using hsec
  have hcompat : TopCat.Presheaf.IsCompatible Z.sheaf.1 U sf := by
    intro i j
    have := hne i; have := hne j
    have hij : ((U i ⊓ U j : Z.Opens) : Set Z).Nonempty :=
      nonempty_preirreducible_inter (U i).isOpen (U j).isOpen ⟨_, hxU i⟩ ⟨_, hxU j⟩
    have : Nonempty (U i ⊓ U j : Z.Opens) := ⟨⟨_, hij.some_mem⟩⟩
    apply Z.germToFunctionField_injective (U i ⊓ U j)
    change Z.germToFunctionField _ (Z.presheaf.map _ (sf i)) = Z.germToFunctionField _ (Z.presheaf.map _ (sf j))
    rw [gtf_res, gtf_res, hsf, hsf]
  obtain ⟨s, hs, -⟩ := Z.sheaf.existsUnique_gluing' (U := U) (V := W) (iUV := fun x => homOfLE (hUW x))
    (hcover := fun y hy => TopologicalSpace.Opens.mem_iSup.mpr ⟨⟨y, hy⟩, hxU _⟩) (sf := sf) (h := hcompat)
  have hsβ : ψ s = β := by
    have h0 := hs ⟨_, hW.some_mem⟩
    have := hne ⟨_, hW.some_mem⟩
    rw [← hsf ⟨_, hW.some_mem⟩, ← gtf_res (homOfLE (hUW ⟨_, hW.some_mem⟩)) s]
    exact congrArg _ h0
  obtain ⟨t, ht⟩ : ∃ t : Γ(Z, W), ψ t = β := ⟨s, hsβ⟩
  refine ⟨t, Z.germToFunctionField_injective W ?_⟩
  rw [map_zero]
  have key : ψ.hom (p.eval t) = (p.map ψ.hom).eval (ψ.hom t) := by
    rw [Polynomial.eval_map, Polynomial.eval₂_hom]
  change ψ.hom (p.eval t) = 0
  rw [key]; change (p.map ψ.hom).eval (ψ t) = 0
  rw [ht]; exact hβ

def BaseInt : Prop := ∀ {Z S : Scheme.{0}} (c : Z ⟶ S) [QuasiCompact c] [QuasiSeparated c] [IsDominant c],
  AICSch Z → AICSch S → ∀ x : S, IsIntegral (Limits.pullback c (S.fromSpecStalk x) : Scheme.{0})

def BaseLoc : Prop := ∀ {Z S : Scheme.{0}} (c : Z ⟶ S) [QuasiCompact c] [QuasiSeparated c] [IsDominant c],
  AICSch Z → AICSch S → ∀ x : S, ∀ (W : (Limits.pullback c (S.fromSpecStalk x) : Scheme.{0}).Opens)
  (y : (Limits.pullback c (S.fromSpecStalk x) : Scheme.{0})), y ∈ W →
  ∃ U : (Limits.pullback c (S.fromSpecStalk x) : Scheme.{0}).Opens, y ∈ U ∧ U ≤ W ∧
    AIC Γ((Limits.pullback c (S.fromSpecStalk x) : Scheme.{0}), U)

def BaseLocLoc : Prop := ∀ {Z S : Scheme.{0}} (c : Z ⟶ S) [QuasiCompact c] [QuasiSeparated c] [IsDominant c],
  AICSch Z → AICSch S → ∀ x : S, ∀ (W : (Limits.pullback c (S.fromSpecStalk x) : Scheme.{0}).Opens)
  (y : (Limits.pullback c (S.fromSpecStalk x) : Scheme.{0})), y ∈ W →
  ∃ U : (Limits.pullback c (S.fromSpecStalk x) : Scheme.{0}).Opens, y ∈ U ∧ U ≤ W ∧
    ∃ V : Z.Opens, IsAffineOpen V ∧ (V : Set Z).Nonempty ∧
    ∃ f : Γ(Z, V) →+* Γ((Limits.pullback c (S.fromSpecStalk x) : Scheme.{0}), U), ∃ M : Submonoid Γ(Z, V),
      @IsLocalization _ _ M _ _ f.toAlgebra

theorem BaseLoc_of (h : BaseLocLoc) : BaseLoc := by
  intro Z S c _ _ _ hZ hS x W y hy
  obtain ⟨U, hyU, hUW, V, hV, hne, f, M, hM⟩ := h c hZ hS x W y hy
  letI := f.toAlgebra
  exact ⟨U, hyU, hUW, LateralTheory.E.BaseAICPf.Loc.aic_loc M (hZ.2 V hV hne)⟩

theorem BaseAIC_of (h1 : BaseInt) (h2 : BaseLoc) : LateralTheory.E.FibreEqvPf.BaseAIC := by
  intro Z S c _ _ _ hZ hS x
  have : IsIntegral (Limits.pullback c (S.fromSpecStalk x) : Scheme.{0}) := h1 c hZ hS x
  exact ⟨this, fun U _ hne => aic_of_local (h2 c hZ hS x) U hne⟩

end LateralTheory.E.BaseAICPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.AlgebraicIntegralClosure =====
