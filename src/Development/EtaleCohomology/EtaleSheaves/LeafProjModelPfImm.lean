module

public import Development.EtaleCohomology.EtaleSheaves.LeafCloseBCut
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj
public import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverCompOfIsClosedImmersion
import Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Proper
import Mathlib.AlgebraicGeometry.QuasiAffine
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsSmulEqMapOfIsCompactOfIsQuasiSeparated

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.LeafProjModelPf, Development.EtaleCohomology.EtaleSheaves.LeafProjModelPfImm

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafProjModelPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafProjModelPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafCloseBCut\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory AlgebraicGeometry TopologicalSpace

namespace LateralTheory.E.LeafProjModelPf

theorem image_isReduced {X Y : Scheme.{0}} (f : X ⟶ Y) [QuasiCompact f] [IsReduced X] : IsReduced f.image := by
  have hB := Y.isBasis_affineOpens.of_isInducing f.imageι.isEmbedding.isInducing
  have hred : ∀ U : Y.affineOpens, _root_.IsReduced Γ(f.image, f.imageι ⁻¹ᵁ U) := fun U =>
    isReduced_of_injective _ (f.toImage_app_injective U)
  refine @isReduced_of_isReduced_stalk _ (fun z => ⟨?_⟩)
  rintro g ⟨n, e⟩
  obtain ⟨U, hzU, s, rfl⟩ := f.image.presheaf.exists_germ_eq g
  rw [← map_pow, ← map_zero (f.image.presheaf.germ _ z hzU).hom] at e
  obtain ⟨V, hzV, iU, iV, e'⟩ := f.image.presheaf.germ_eq z hzU hzU _ 0 e
  rw [map_pow, map_zero] at e'
  obtain ⟨_, ⟨W, hW, rfl⟩, hzW, hWV⟩ := Opens.isBasis_iff_nbhd.mp hB hzV
  have h0 : f.image.presheaf.map (homOfLE hWV).op (f.image.presheaf.map iU.op s) = 0 := by
    have hx := congrArg (f.image.presheaf.map (homOfLE hWV).op) e'
    rw [map_pow, map_zero] at hx
    exact (hred ⟨W, hW⟩).eq_zero _ ⟨n, hx⟩
  rw [← f.image.presheaf.germ_res iU z hzV, ← f.image.presheaf.germ_res (homOfLE hWV) z hzW]
  simp only [CommRingCat.comp_apply] at h0 ⊢
  rw [h0, map_zero]

theorem image_irreducible {X Y : Scheme.{0}} (f : X ⟶ Y) [QuasiCompact f] [IrreducibleSpace X] :
    IrreducibleSpace f.image := by
  have h1 : IsIrreducible (Set.range f.toImage) := by
    simpa [Set.image_univ] using (IrreducibleSpace.isIrreducible_univ X).image _ f.toImage.continuous.continuousOn
  have h2 := h1.closure
  rw [f.toImage.denseRange.closure_range] at h2
  exact (irreducibleSpace_def _).mpr h2

theorem leafImageIntegral {X Y : Scheme.{0}} (f : X ⟶ Y) [QuasiCompact f] (hX : IsIntegral X) :
    IsIntegral f.image := by
  have := image_isReduced f
  have := image_irreducible f
  exact isIntegral_of_irreducibleSpace_of_isReduced _

def LeafQProjImm : Prop := ∀ (k : Type) [Field k] (A : Type) [CommRing A] [Algebra k A]
    [Algebra.FiniteType k A], ∃ (N : ℕ) (φ : Spec (CommRingCat.of A) ⟶ ReciprocityTheory.ChartRestriction.G.Geo.Tor.PSpace k N),
    IsImmersion φ ∧ QuasiCompact φ ∧
    φ ≫ ReciprocityTheory.ChartRestriction.G.Geo.Tor.PSpace.str k N = Spec.map (CommRingCat.ofHom (algebraMap k A))

theorem LeafProjModel_of (h1 : LeafQProjImm) : LateralTheory.E.LeafCloseBCut.LeafProjModel := by
  intro k _ A _ _ _ _
  obtain ⟨N, φ, hi, hq, hc⟩ := h1 k A
  refine ⟨φ.image, φ.imageι ≫ ReciprocityTheory.ChartRestriction.G.Geo.Tor.PSpace.str k N, φ.toImage, leafImageIntegral φ inferInstance,
    ?_, inferInstance, ?_⟩
  · have := ReciprocityTheory.ChartRestriction.G.Geo.Tor.isProper_str k N
    infer_instance
  · rw [← Category.assoc, Scheme.Hom.toImage_imageι]; exact hc

end LateralTheory.E.LeafProjModelPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafProjModelPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafProjModelPfImm =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafProjModelPfImm", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafProjModelPf\npublic import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverCompOfIsClosedImmersion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Proper\nimport Mathlib.AlgebraicGeometry.QuasiAffine\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsSmulEqMapOfIsCompactOfIsQuasiSeparated\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory AlgebraicGeometry TopologicalSpace MvPolynomial
open ReciprocityTheory.ChartRestriction.G.Geo.Tor (Sp spMap PSpace resG)
open GlobalTheory.ProjSpace GlobalTheory.QCoh.Qcqs

namespace LateralTheory.E.LeafProjModelPfImm

theorem fnOn_top_eq_base {k A : Type} [CommRing k] [CommRing A] (c : k →+* A) (r : k) :
    (baseRingHom (spMap c) ⊤).hom r = fnOn ⊤ (c r) := by
  rw [baseRingHom_top]
  simp only [fnOn, RingHom.comp_apply]
  simp [resG]
  exact (congrArg (fun g => g.hom r) (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom c))).symm

theorem exists_finset_adjoin_laurent_preimage {k A : Type} [Field k] [CommRing A] [Algebra k A] {n : ℕ}
    (f : MvPolynomial (Fin n) k →ₐ[k] A) (hf : Function.Surjective f) (v : Fin (n + 1) → A) (hv0 : v 0 = 1)
    (hvs : ∀ j, v j.succ = f (X j)) (hv : Ideal.span (Set.range v) = ⊤) (W : (Sp A).Opens) (hW : W = ⊤)
    (h : W ≤ pt (algebraMap k A) v hv ⁻¹ᵁ chart k n 0) :
    Function.Surjective (eval₂Hom (baseRingHom (pt (algebraMap k A) v hv ≫ PSpace.str k n) W).hom
      (pullRatio (pt (algebraMap k A) v hv) W 0 h)) := by
  subst hW
  have hr : ∀ j, pullRatio (pt (algebraMap k A) v hv) ⊤ 0 h j = fnOn ⊤ (v j) := fun j => by
    have := pullRatio_pt_mul (algebraMap k A) v hv 0 j h
    rwa [hv0, map_one, mul_one] at this
  intro g
  obtain ⟨a, rfl⟩ := fnOn_top_bijective.2 g
  obtain ⟨p, rfl⟩ := hf a
  refine ⟨rename Fin.succ p, ?_⟩
  have hstr : pt (algebraMap k A) v hv ≫ PSpace.str k n = spMap (algebraMap k A) := by
    rw [pt, PSpace.str, GlobalTheory.ProjPoint.ofHom_toSpecZero_assoc, ← Spec.map_comp]
    congr 1
    ext1
    exact RingHom.ext fun r => MvPolynomial.eval₂Hom_C _ v r
  rw [coe_eval₂Hom, eval₂_rename, hstr]
  have hfx : f = aeval (fun j => f (X j)) := algHom_ext fun j => by simp
  conv_rhs => rw [hfx, aeval_def, MvPolynomial.hom_eval₂ ]
  congr 1
  · ext r; exact fnOn_top_eq_base _ r
  · funext j; simp [Function.comp, hr, hvs]

theorem isIso_ι_of_eq_top {X : Scheme.{0}} (W : X.Opens) (hW : W = ⊤) : IsIso W.ι := by
  subst hW
  exact ⟨⟨X.topIso.inv, by rw [← cancel_mono (Scheme.Opens.ι _), Category.assoc, Scheme.toIso_inv_ι]; simp, Scheme.toIso_inv_ι _⟩⟩

theorem leafQProjImm : LateralTheory.E.LeafProjModelPf.LeafQProjImm := by
  intro k _ A _ _ _
  obtain ⟨n, f, hf⟩ := Algebra.FiniteType.iff_quotient_mvPolynomial''.mp ‹_›
  let v : Fin (n + 1) → A := Fin.cons 1 (fun j => f (X j))
  have hv : Ideal.span (Set.range v) = ⊤ :=
    Ideal.eq_top_of_isUnit_mem _ (Ideal.subset_span ⟨0, rfl⟩) isUnit_one
  have hU : pt (algebraMap k A) v hv ⁻¹ᵁ chart k n 0 = ⊤ := by
    rw [pt_preimage_chart]; ext1; simp [v, spOpen]; rfl
  have hstr : pt (algebraMap k A) v hv ≫ PSpace.str k n = spMap (algebraMap k A) := by
    rw [pt, PSpace.str, GlobalTheory.ProjPoint.ofHom_toSpecZero_assoc, ← Spec.map_comp]
    congr 1
    ext1
    exact RingHom.ext fun r => MvPolynomial.eval₂Hom_C _ v r
  refine ⟨n, pt (algebraMap k A) v hv, ?_, ?_, hstr⟩
  · have h1 : IsAffine (chart k n 0) := isAffineOpen_chart k n 0
    have hWa : IsAffineOpen (pt (algebraMap k A) v hv ⁻¹ᵁ chart k n 0) := by rw [hU]; exact isAffineOpen_top _
    have : IsAffine (pt (algebraMap k A) v hv ⁻¹ᵁ chart k n 0) := hWa
    have hs : Function.Surjective ((pt (algebraMap k A) v hv).app (chart k n 0)).hom := by
      rw [Scheme.Hom.app_eq_appLE, surjective_appLE_chart_iff]
      exact exists_finset_adjoin_laurent_preimage f hf v rfl (fun j => rfl) hv _ hU _
    have hc : IsClosedImmersion (pt (algebraMap k A) v hv ∣_ chart k n 0) := by
      rw [MorphismProperty.arrow_mk_iso_iff @IsClosedImmersion
        (Arrow.isoMk hWa.isoSpec (isAffineOpen_chart k n 0).isoSpec (Scheme.Opens.toSpecΓ_naturality _ _) :
          Arrow.mk (pt (algebraMap k A) v hv ∣_ chart k n 0) ≅
            Arrow.mk (Spec.map ((pt (algebraMap k A) v hv).app (chart k n 0))))]
      exact IsClosedImmersion.spec_of_surjective _ hs
    have h2 : IsImmersion ((pt (algebraMap k A) v hv ⁻¹ᵁ chart k n 0).ι ≫ pt (algebraMap k A) v hv) := by
      rw [← morphismRestrict_ι]; infer_instance
    have := isIso_ι_of_eq_top _ hU
    have e : pt (algebraMap k A) v hv = inv (pt (algebraMap k A) v hv ⁻¹ᵁ chart k n 0).ι ≫
        ((pt (algebraMap k A) v hv ⁻¹ᵁ chart k n 0).ι ≫ pt (algebraMap k A) v hv) := by simp
    rw [e]; infer_instance
  · infer_instance

theorem LeafProjModel_of : LateralTheory.E.LeafCloseBCut.LeafProjModel :=
  LateralTheory.E.LeafProjModelPf.LeafProjModel_of leafQProjImm

end LateralTheory.E.LeafProjModelPfImm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafProjModelPfImm =====
