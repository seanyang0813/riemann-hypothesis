module

public import Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPf
public import Mathlib.Algebra.Homology.HomotopyCategory.ShortExact

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPfCone, Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPfMono

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPfCone =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPfCone", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPf\npublic import Mathlib.Algebra.Homology.HomotopyCategory.ShortExact\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits

namespace LateralTheory.CohomologicalPurity.Thom.ExcSp

open GlobalTheory.EtC in
theorem leafConeCok : LeafConeCok := by
  intro R _ K L K' L' f f' a b comm hf hf' hi
  have hm : Mono f := HomologicalComplex.mono_of_mono_f _ hf
  have hm' : Mono f' := HomologicalComplex.mono_of_mono_f _ hf'
  let S₁ := ShortComplex.mk f (cokernel.π f) (cokernel.condition f)
  let S₂ := ShortComplex.mk f' (cokernel.π f') (cokernel.condition f')
  have h₁ : S₁.ShortExact := ShortComplex.ShortExact.mk' (ShortComplex.exact_of_g_is_cokernel _ (cokernelIsCokernel f)) hm inferInstance
  have h₂ : S₂.ShortExact := ShortComplex.ShortExact.mk' (ShortComplex.exact_of_g_is_cokernel _ (cokernelIsCokernel f')) hm' inferInstance
  let τ : S₁ ⟶ S₂ := { τ₁ := a, τ₂ := b, τ₃ := cokernel.map f f' a b comm.symm, comm₁₂ := comm.symm, comm₂₃ := by simp [S₁, S₂] }
  have iso3 : IsIso (cokernel.map f f' a b comm.symm) := by
    have : ∀ n, IsIso ((cokernel.map f f' a b comm.symm).f n) := by
      intro n
      have e₁ := (h₁.map_of_exact (HomologicalComplex.eval _ _ n)).gIsCokernel
      have e₂ := (h₂.map_of_exact (HomologicalComplex.eval _ _ n)).gIsCokernel
      let i₁ : cokernel (f.f n) ≅ (cokernel f).X n := (colimit.isColimit _).coconePointUniqueUpToIso e₁
      let i₂ : cokernel (f'.f n) ≅ (cokernel f').X n := (colimit.isColimit _).coconePointUniqueUpToIso e₂
      have key : (cokernel.map f f' a b comm.symm).f n = i₁.inv ≫ cokernel.map (f.f n) (f'.f n) (a.f n) (b.f n) (sqw comm n).symm ≫ i₂.hom := by
        rw [Iso.eq_inv_comp]
        refine (cancel_epi (cokernel.π (f.f n))).1 ?_
        have p₁ : cokernel.π (f.f n) ≫ i₁.hom = (cokernel.π f).f n :=
          (colimit.isColimit _).comp_coconePointUniqueUpToIso_hom e₁ WalkingParallelPair.one
        have p₂ : cokernel.π (f'.f n) ≫ i₂.hom = (cokernel.π f').f n :=
          (colimit.isColimit _).comp_coconePointUniqueUpToIso_hom e₂ WalkingParallelPair.one
        rw [← Category.assoc, p₁, cokernel.π_desc_assoc, Category.assoc, p₂, ← HomologicalComplex.comp_f,
          ← HomologicalComplex.comp_f, cokernel.π_desc]
      rw [key]; infer_instance
    exact HomologicalComplex.Hom.isIso_of_components _
  have q1 := CochainComplex.mappingCone.quasiIso_descShortComplex h₁
  have q2 := CochainComplex.mappingCone.quasiIso_descShortComplex h₂
  have e := CochainComplex.mappingCone.map_descShortComplex S₁ S₂ τ
  have : QuasiIso (CochainComplex.mappingCone.map f f' a b comm ≫ CochainComplex.mappingCone.descShortComplex S₂) := by
    rw [show CochainComplex.mappingCone.map f f' a b comm = CochainComplex.mappingCone.map S₁.f S₂.f τ.τ₁ τ.τ₂ τ.comm₁₂.symm from rfl, e]
    infer_instance
  exact (quasiIso_iff_comp_right _ (CochainComplex.mappingCone.descShortComplex S₂)).1 this

theorem etaleSplitExcision_of_mono_cokernel_relative (hM : LeafChainsMono) (hK : LeafCokIso) (hR : LeafHsRel) : LateralTheory.CohomologicalPurity.Thom.LeafExcSp :=
  leafExcSp_of' hM hK leafConeCok hR

end LateralTheory.CohomologicalPurity.Thom.ExcSp
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPfCone =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPfMono =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPfMono", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPfCone\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity.Thom.ExcSp

theorem free_mono (R : Type) [CommRing R] {A B : PSh} (g : A ⟶ B) [Mono g] : Mono ((free R).map g) := by
  have : Mono ((freeP R).map g) := by
    rw [NatTrans.mono_iff_mono_app]
    intro U
    have hg : Function.Injective (g.app U) := (mono_iff_injective _).1 (inferInstance)
    rw [ModuleCat.mono_iff_injective]
    change Function.Injective ((ModuleCat.free (ULift.{1} R)).map (uliftFunctor.{1}.map (g.app U))).hom
    have hu : Function.Injective (uliftFunctor.{1}.map (g.app U)) := by
      intro a b h
      exact ULift.ext (hg (congrArg ULift.down h))
    exact Finsupp.mapDomain_injective hu
  change Mono ((presheafToSheaf _ _).map ((freeP R).map g))
  infer_instance

theorem leafChainsMono : LeafChainsMono := by
  intro R _ E' E f hf n
  by_cases hn : ∃ p : ℕ, -(p : ℤ) = n
  · obtain ⟨p, rfl⟩ := hn
    have h : ComplexShape.embeddingDownNat.f p = -(p : ℤ) := rfl
    change Mono ((HomologicalComplex.extendMap ((chainsN R).map f) _).f _)
    rw [HomologicalComplex.extendMap_f _ _ h]
    have : Mono (f.app (op (SimplexCategory.mk p))) := by
      rw [NatTrans.mono_iff_mono_app] at hf
      exact hf _
    have : Mono (((chainsN R).map f).f p) := by
      change Mono ((AlgebraicTopology.AlternatingFaceMapComplex.map _).f p)
      rw [AlgebraicTopology.AlternatingFaceMapComplex.map_f]
      exact free_mono R _
    infer_instance
  · push Not at hn
    refine ⟨fun g h _ => ?_⟩
    exact (HomologicalComplex.isZero_extend_X _ _ _ (fun i => hn i)).eq_of_tgt _ _

theorem etaleSplitExcision_of_cokernel_relative (hK : LeafCokIso) (hR : LeafHsRel) : LateralTheory.CohomologicalPurity.Thom.LeafExcSp :=
  etaleSplitExcision_of_mono_cokernel_relative leafChainsMono hK hR

end LateralTheory.CohomologicalPurity.Thom.ExcSp
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPfMono =====
