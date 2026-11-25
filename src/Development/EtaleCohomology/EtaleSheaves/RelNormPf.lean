module

public import Development.EtaleCohomology.EtaleSheaves.RelNormPfGlue
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.RelNormPfAff, Development.EtaleCohomology.EtaleSheaves.RelNormPf

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.RelNormPfAff =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.RelNormPfAff", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.RelNormPfGlue\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry

namespace LateralTheory.E.RelNormPf

open AlgebraicGeometry.Scheme.Hom in
theorem closedAt_preimage {Z S : Scheme.{0}} (g : Z ⟶ S) [QuasiCompact g] [QuasiSeparated g]
    (U : S.Opens) (hU : IsAffineOpen U) : ClosedAt g.toNormalization (g.fromNormalization ⁻¹ᵁ U) := by
  intro b hb
  letI := (g.app U).hom.toAlgebra
  have hle : g ⁻¹ᵁ U ≤ g.toNormalization ⁻¹ᵁ g.fromNormalization ⁻¹ᵁ U := by
    simp [← Scheme.Hom.comp_preimage]
  have hle' : g.toNormalization ⁻¹ᵁ g.fromNormalization ⁻¹ᵁ U ≤ g ⁻¹ᵁ U := by
    simp [← Scheme.Hom.comp_preimage]
  set ρ := Z.presheaf.map (homOfLE hle).op with hρ
  have key := g.normalizationObjIso_hom_val hU
  have hρinj : Function.Injective ρ := by
    intro u v huv
    have := congrArg (Z.presheaf.map (homOfLE hle').op) huv
    have h1 : (homOfLE hle).op ≫ (homOfLE hle').op = 𝟙 (Opposite.op (g.toNormalization ⁻¹ᵁ g.fromNormalization ⁻¹ᵁ U)) :=
      Quiver.Hom.unop_inj (Subsingleton.elim _ _)
    simpa [hρ, ← CommRingCat.comp_apply, ← Functor.map_comp, h1] using this

  have hint : IsIntegral (integralClosure Γ(S, U) Γ(Z, g ⁻¹ᵁ U)) (ρ b) := by
    obtain ⟨p, hm, hp⟩ := hb
    refine ⟨p.map (g.normalizationObjIso hU).hom.hom, hm.map _, ?_⟩
    rw [Polynomial.eval₂_map]
    have e : (algebraMap (integralClosure Γ(S, U) Γ(Z, g ⁻¹ᵁ U)) Γ(Z, g ⁻¹ᵁ U)).comp
        (g.normalizationObjIso hU).hom.hom = ρ.hom.comp (g.toNormalization.app _).hom := by
      have := congrArg CommRingCat.Hom.hom key
      rw [Scheme.Hom.appLE] at this
      exact this
    rw [e, ← Polynomial.hom_eval₂, hp, map_zero]
  have hmem : ρ b ∈ (⊥ : Subalgebra (integralClosure Γ(S, U) Γ(Z, g ⁻¹ᵁ U)) Γ(Z, g ⁻¹ᵁ U)) := by
    rw [← integralClosure_idem]; exact hint
  obtain ⟨z, hz⟩ := Algebra.mem_bot.mp hmem
  refine ⟨(g.normalizationObjIso hU).inv z, hρinj ?_⟩
  have := congrArg (fun φ => φ ((g.normalizationObjIso hU).inv z)) (congrArg CommRingCat.Hom.hom key)
  simp only [Scheme.Hom.appLE, CommRingCat.hom_comp, RingHom.comp_apply] at this
  rw [← this, ← hz]
  simp

end LateralTheory.E.RelNormPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.RelNormPfAff =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.RelNormPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.RelNormPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.RelNormPfGlue\npublic import Development.EtaleCohomology.EtaleSheaves.RelNormPfAff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry

namespace LateralTheory.E.RelNormPf

theorem closedAt_comp {X N T : Scheme.{0}} (c' : X ⟶ N) (k' : N ⟶ T) (V : T.Opens)
    (h : ClosedAt c' (k' ⁻¹ᵁ V)) (hs : Function.Surjective (k'.app V)) : ClosedAt (c' ≫ k') V := by
  intro b hb
  obtain ⟨p, hm, hp⟩ := hb
  obtain ⟨a', ha'⟩ := h b ⟨p.map (k'.app V).hom, hm.map _, (Polynomial.eval₂_map (p := p) (k'.app V).hom (c'.app (k' ⁻¹ᵁ V)).hom b).trans hp⟩
  obtain ⟨a, rfl⟩ := hs a'
  exact ⟨a, ha'⟩

theorem normClosed : NormClosed := by
  intro Z S g _ _ _ V hV
  have H : g = g.toNormalization.toNormalization ≫
      (g.toNormalization.fromNormalization ≫ g.fromNormalization) := by
    rw [← Category.assoc, Scheme.Hom.toNormalization_fromNormalization,
      Scheme.Hom.toNormalization_fromNormalization]
  let h := g.normalizationDesc _ _ H
  have e1 : g.toNormalization ≫ h = g.toNormalization.toNormalization :=
    g.toNormalization_normalizationDesc _ _ H
  have e2 : h ≫ g.toNormalization.fromNormalization ≫ g.fromNormalization = g.fromNormalization :=
    g.normalizationDesc_comp _ _ H
  have i1 : h ≫ g.toNormalization.fromNormalization = 𝟙 _ :=
    Scheme.Hom.normalization.hom_ext g _ _ g.fromNormalization
      (by rw [reassoc_of% e1, Scheme.Hom.toNormalization_fromNormalization, Category.comp_id])
      (by rw [Category.assoc, e2]) (Category.id_comp _)
  have i2 : g.toNormalization.fromNormalization ≫ h = 𝟙 _ :=
    Scheme.Hom.normalization.hom_ext g.toNormalization _ _ g.toNormalization.fromNormalization
      (by rw [Scheme.Hom.toNormalization_fromNormalization_assoc, e1, Category.comp_id])
      (by rw [Category.assoc, i1, Category.comp_id]) (Category.id_comp _)
  have : IsIso g.toNormalization.fromNormalization := ⟨h, i2, i1⟩
  have e := g.toNormalization.toNormalization_fromNormalization
  rw [← e]
  exact closedAt_comp _ _ V (closedAt_preimage _ V hV)
    (ConcreteCategory.bijective_of_isIso (g.toNormalization.fromNormalization.app V)).2

theorem RelNorm_of : LateralTheory.E.SteinPf.RelNorm := RelNorm_of_closed normClosed

end LateralTheory.E.RelNormPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.RelNormPf =====
