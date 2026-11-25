module

public import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.MemRangeCompIffOfIsClosedImmersion
public import Mathlib.Order.Filter.FilterProduct
public import Mathlib.AlgebraicGeometry.ValuativeCriterion
public import Development.AbelianVarietyTheory.Definitions.Divisors.DetJacMatCoordsEqTransitionJacobianDet
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsAffineOpenAndIsPushout
public import Development.AbelianVarietyTheory.Definitions.Divisors.NoCommonZeroCombVal
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousSectionPolynomialGrowth
public import Development.AbelianVarietyTheory.Definitions.Divisors.SecondCountableTopologyOfIsProjOver
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfEvEqOfSmoothOfRelativeDimension
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEqOfContinuousQuotientAlgHom
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMulEqOfPolynomialGrowth
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenIsDomainOfSmoothComplex
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsHolPeriods
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import Mathlib.Basic.Complex.Basic
public import Mathlib.Order.CompletePartialOrder
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.DimSplitPf
public import Development.AutomorphicSpectrum.PublishedTheorems.Geometry₂.GagaSections
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsAddEquivOfSurjectiveOfKerIff
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.ProjectiveValuations.CompactSpaceOfIsProper, Development.WeilBound.CoreStatements.ProjectiveValuations.CompactSpaceComplexPointsOfProper, Development.AutomorphicSpectrum.Proofs.GlobalProofs.CompactSpaceCxPtsOfIsProper, Development.AutomorphicSpectrum.Proofs.GlobalProofs.RegularFunctionPolynomialGrowth, Development.AutomorphicSpectrum.Proofs.GlobalProofs.HolomorphicSectionModerateGrowth, Development.AutomorphicSpectrum.Proofs.GlobalProofs.AnalyticSectionIsAlgebraic, Development.AutomorphicSpectrum.Proofs.GlobalProofs.HolomorphicGluingLocalFunctions, Development.AutomorphicSpectrum.Proofs.GlobalProofs.HolomorphicLocalSectionsCompatible, Development.AutomorphicSpectrum.Proofs.GlobalProofs.SmoothSchemeDecomposeRelativeDimension, Development.AutomorphicSpectrum.Proofs.GlobalProofs.GagaSections

-- ===== clump member: Development.WeilBound.CoreStatements.ProjectiveValuations.CompactSpaceOfIsProper =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.ProjectiveValuations.CompactSpaceOfIsProper", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.MemRangeCompIffOfIsClosedImmersion\npublic import Mathlib.Order.Filter.FilterProduct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.AlgebraicGeometry.QuasiAffine\npublic import Mathlib.AlgebraicGeometry.ValuativeCriterion\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace DifferentiableLines.Cpt

open AlgebraicGeometry CategoryTheory Topology Filter TopologicalSpace
open ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.Points

variable {B : Type} (𝒰 : Ultrafilter B)

abbrev K : Type := Germ (𝒰 : Filter B) ℂ

theorem exists_tendsto_of_bdd (f : B → ℂ) (h : ∀ᶠ b in (𝒰 : Filter B), ‖f b‖ ≤ 1) :
    ∃ a, Tendsto f 𝒰 (𝓝 a) := by
  obtain ⟨a, -, ha⟩ := (isCompact_closedBall (0 : ℂ) 1).ultrafilter_le_nhds (𝒰.map f)
    (le_principal_iff.2 (by
      show ∀ᶠ b in (𝒰 : Filter B), f b ∈ Metric.closedBall (0 : ℂ) 1
      simpa using h))
  exact ⟨a, ha⟩

def V : ValuationSubring (K 𝒰) where
  carrier := {g | ∃ a, g.Tendsto (𝓝 a)}
  mul_mem' := by
    rintro g h ⟨a, ha⟩ ⟨b, hb⟩
    induction g using Germ.inductionOn
    induction h using Germ.inductionOn
    exact ⟨a * b, Tendsto.mul ha hb⟩
  one_mem' := ⟨1, tendsto_const_nhds⟩
  add_mem' := by
    rintro g h ⟨a, ha⟩ ⟨b, hb⟩
    induction g using Germ.inductionOn
    induction h using Germ.inductionOn
    exact ⟨a + b, Tendsto.add ha hb⟩
  zero_mem' := ⟨0, tendsto_const_nhds⟩
  neg_mem' := by
    rintro g ⟨a, ha⟩
    induction g using Germ.inductionOn
    exact ⟨-a, Tendsto.neg ha⟩
  mem_or_inv_mem' g := by
    induction g using Germ.inductionOn with
    | h f =>
    rcases 𝒰.em (fun b => ‖f b‖ ≤ 1) with h | h
    · exact Or.inl (exists_tendsto_of_bdd 𝒰 f h)
    · refine Or.inr (exists_tendsto_of_bdd 𝒰 f⁻¹ (h.mono fun b hb => ?_))
      rw [Pi.inv_apply, norm_inv]
      exact inv_le_one_of_one_le₀ (not_le.1 hb).le

theorem tendsto_unique {g : K 𝒰} {a b : ℂ} (ha : g.Tendsto (𝓝 a)) (hb : g.Tendsto (𝓝 b)) : a = b := by
  induction g using Germ.inductionOn
  exact tendsto_nhds_unique (l := (𝒰 : Filter B)) ha hb

theorem tendsto_choose (g : V 𝒰) : (g : K 𝒰).Tendsto (𝓝 (Exists.choose g.2)) := Exists.choose_spec g.2

def st : V 𝒰 →+* ℂ where
  toFun g := Exists.choose g.2
  map_one' := tendsto_unique 𝒰 (tendsto_choose 𝒰 1) tendsto_const_nhds
  map_zero' := tendsto_unique 𝒰 (tendsto_choose 𝒰 0) tendsto_const_nhds
  map_mul' g h := tendsto_unique 𝒰 (tendsto_choose 𝒰 (g * h)) (by
    have ha := tendsto_choose 𝒰 g
    have hb := tendsto_choose 𝒰 h
    generalize Exists.choose g.2 = a at ha
    generalize Exists.choose h.2 = b at hb
    show ((g : K 𝒰) * h).Tendsto _
    generalize (g : K 𝒰) = g at ha
    generalize (h : K 𝒰) = h at hb
    induction g using Germ.inductionOn
    induction h using Germ.inductionOn
    exact Tendsto.mul ha hb)
  map_add' g h := tendsto_unique 𝒰 (tendsto_choose 𝒰 (g + h)) (by
    have ha := tendsto_choose 𝒰 g
    have hb := tendsto_choose 𝒰 h
    generalize Exists.choose g.2 = a at ha
    generalize Exists.choose h.2 = b at hb
    show ((g : K 𝒰) + h).Tendsto _
    generalize (g : K 𝒰) = g at ha
    generalize (h : K 𝒰) = h at hb
    induction g using Germ.inductionOn
    induction h using Germ.inductionOn
    exact Tendsto.add ha hb)

theorem tendsto_st (g : V 𝒰) : (g : K 𝒰).Tendsto (𝓝 (st 𝒰 g)) := tendsto_choose 𝒰 g

def cst : ℂ →+* V 𝒰 where
  toFun a := ⟨((fun _ => a : B → ℂ) : K 𝒰), a, tendsto_const_nhds⟩
  map_one' := rfl
  map_zero' := rfl
  map_mul' _ _ := rfl
  map_add' _ _ := rfl

theorem st_cst (a : ℂ) : st 𝒰 (cst 𝒰 a) = a := tendsto_unique 𝒰 (tendsto_st 𝒰 _) tendsto_const_nhds

instance : IsLocalHom (st 𝒰) := IsLocalHom.of_surjective _ fun a => ⟨_, st_cst 𝒰 a⟩

variable {X : Scheme.{0}} (e : B → (Sp ℂ ⟶ X))

def gm (W : X.Opens) (f : Γ(X, W)) : K 𝒰 := ((fun b => valR (e b) W f : B → ℂ) : K 𝒰)

def gmHom (W : X.Opens) (h : ∀ᶠ b in (𝒰 : Filter B), ⊤ ≤ e b ⁻¹ᵁ W) : Γ(X, W) →+* K 𝒰 where
  toFun := gm 𝒰 e W
  map_one' := Germ.coe_eq.2 (h.mono fun _ hb => valR_one _ _ hb)
  map_zero' := Germ.coe_eq.2 (h.mono fun _ hb => valR_zero _ _ hb)
  map_mul' f g := Germ.coe_eq.2 (h.mono fun _ hb => valR_mul _ _ hb f g)
  map_add' f g := Germ.coe_eq.2 (h.mono fun _ hb => valR_add _ _ hb f g)

theorem gm_res {W W' : X.Opens} (i : W' ≤ W) (h : ∀ᶠ b in (𝒰 : Filter B), ⊤ ≤ e b ⁻¹ᵁ W') (f : Γ(X, W)) :
    gm 𝒰 e W' ((X.presheaf.map (homOfLE i).op).hom f) = gm 𝒰 e W f :=
  Germ.coe_eq.2 (h.mono fun _ hb => valR_res _ i hb f)

theorem valR_eq_gm {U : X.Opens} (hU : IsAffineOpen U) (h : ∀ᶠ b in (𝒰 : Filter B), ⊤ ≤ e b ⁻¹ᵁ U)
    (z : Sp (K 𝒰) ⟶ X) (hz : ⊤ ≤ z ⁻¹ᵁ U) (H : ∀ f, valR z U f = gm 𝒰 e U f) (W : X.Opens) (hW : ⊤ ≤ z ⁻¹ᵁ W) :
    (∀ᶠ b in (𝒰 : Filter B), ⊤ ≤ e b ⁻¹ᵁ W) ∧ ∀ f, valR z W f = gm 𝒰 e W f := by
  obtain ⟨g, hgW, hg⟩ := hU.exists_basicOpen_le (V := W) ⟨_, (le_preimage_iff z W).1 hW⟩
    ((le_preimage_iff z U).1 hz)
  have hzg : ⊤ ≤ z ⁻¹ᵁ X.basicOpen g := (le_preimage_iff z _).2 hg
  have hu : gm 𝒰 e U g ≠ 0 := H g ▸ ((le_preimage_basicOpen_iff z hz g).1 hzg).ne_zero
  have hne : ∀ᶠ b in (𝒰 : Filter B), ¬ valR (e b) U g = 0 :=
    Ultrafilter.eventually_not.2 fun h0 => hu (Germ.coe_eq.2 h0)
  have hb : ∀ᶠ b in (𝒰 : Filter B), ⊤ ≤ e b ⁻¹ᵁ X.basicOpen g := by
    filter_upwards [h, hne] with b h1 h2 using (le_preimage_basicOpen_iff _ h1 g).2 (IsUnit.mk0 _ h2)
  refine ⟨hb.mono fun b => le_preimage_mono _ hgW, fun f => ?_⟩
  have := hU.isLocalization_basicOpen g
  obtain ⟨n, a, ha⟩ := IsLocalization.Away.surj g ((X.presheaf.map (homOfLE hgW).op).hom f)
  have ha' : (X.presheaf.map (homOfLE hgW).op).hom f *
      (X.presheaf.map (homOfLE (X.basicOpen_le g)).op).hom g ^ n =
      (X.presheaf.map (homOfLE (X.basicOpen_le g)).op).hom a := ha
  have e₁ := congrArg (valR z _) ha'
  rw [valR_mul _ _ hzg, valR_pow _ _ hzg, valR_res _ _ hzg, valR_res _ _ hzg, valR_res _ _ hzg, H, H] at e₁
  have e₂ := congrArg (gmHom 𝒰 e _ hb) ha'
  rw [map_mul, map_pow] at e₂
  change gm 𝒰 e _ _ * gm 𝒰 e _ _ ^ n = gm 𝒰 e _ _ at e₂
  rw [gm_res 𝒰 e _ hb, gm_res 𝒰 e _ hb, gm_res 𝒰 e _ hb] at e₂
  exact mul_right_cancel₀ (pow_ne_zero n hu) (e₁.trans e₂.symm)

theorem exists_tendsto {R : Type} [CommRing R] (p : X ⟶ Sp R) [IsProper p] (σ : R →+* ℂ)
    (he : ∀ b, e b ≫ p = spMap σ) : ∃ y : Sp ℂ ⟶ X, y ≫ p = spMap σ ∧ Tendsto e 𝒰 (𝓝 y) := by
  have : CompactSpace X := QuasiCompact.compactSpace_of_compactSpace p
  obtain ⟨t, ht⟩ := isCompact_univ.elim_finite_subcover (fun U : X.affineOpens => ((U : X.Opens) : Set X))
    (fun U => U.1.isOpen) fun x _ => by
      obtain ⟨U, hU, hx, -⟩ := exists_isAffineOpen_mem_and_subset (X := X) (x := x) (U := ⊤) trivial
      exact Set.mem_iUnion.2 ⟨⟨U, hU⟩, hx⟩
  obtain ⟨⟨U, hU⟩, -, h⟩ := (Ultrafilter.eventually_exists_mem_iff (f := 𝒰) (is := (t : Set X.affineOpens))
    (P := fun U b => ⊤ ≤ e b ⁻¹ᵁ U.1) t.finite_toSet).1 (Eventually.of_forall fun b => by
      obtain ⟨U, hU, hx⟩ := Set.mem_iUnion₂.1 (ht (Set.mem_univ (e b (IsLocalRing.closedPoint ℂ))))
      exact ⟨U, hU, (le_preimage_iff _ _).2 hx⟩)
  let φ : Γ(X, U) ⟶ CommRingCat.of (K 𝒰) := CommRingCat.ofHom (gmHom 𝒰 e U h)
  let z : Sp (K 𝒰) ⟶ X := Spec.map φ ≫ IsAffineOpen.fromSpec hU
  have hz : ⊤ ≤ z ⁻¹ᵁ U := le_preimage_specMap_fromSpec hU φ
  have H : ∀ f, valR z U f = gm 𝒰 e U f := fun f => by
    rw [valR_eq z U hz, valMap_specMap_fromSpec hU φ hz]; rfl
  have hw : z ≫ p = spMap (algebraMap (V 𝒰) (K 𝒰)) ≫ spMap ((cst 𝒰).comp σ) := by
    rw [← Spec.map_comp, ← Spec.map_preimage (z ≫ p)]
    congr 1
    ext a
    refine (valR_constFn p z U hz a).symm.trans ((H _).trans ?_)
    exact Germ.coe_eq.2 (h.mono fun b hb => valR_constFn_of_over p σ _ (he b) U hb a)
  have hex : ValuativeCriterion.Existence p :=
    (UniversallyClosed.eq_valuativeCriterion.le _ _ p inferInstance).1
  obtain ⟨l, hl₁, hl₂⟩ : ∃ l : Sp (V 𝒰) ⟶ X, spMap (algebraMap (V 𝒰) (K 𝒰)) ≫ l = z ∧
      l ≫ p = spMap ((cst 𝒰).comp σ) := by
    obtain ⟨⟨l, hl₁, hl₂⟩⟩ := (hex
      { R := V 𝒰, K := K 𝒰, i₁ := z, i₂ := spMap ((cst 𝒰).comp σ), commSq := ⟨hw⟩ }).exists_lift
    exact ⟨l, hl₁, hl₂⟩
  refine ⟨spMap (st 𝒰) ≫ l, ?_, tendsto_iff.2 fun W hW => ?_⟩
  · rw [Category.assoc, hl₂, ← Spec.map_comp]
    congr 1
    ext a
    exact st_cst 𝒰 _
  · have hl : ⊤ ≤ l ⁻¹ᵁ W := by
      have h₁ : l (spMap (st 𝒰) (IsLocalRing.closedPoint ℂ)) ∈ W := (le_preimage_iff _ W).1 hW
      have h₂ : spMap (st 𝒰) (IsLocalRing.closedPoint ℂ) = IsLocalRing.closedPoint (V 𝒰) :=
        IsLocalRing.comap_closedPoint (st 𝒰)
      exact (le_preimage_iff l W).2 (h₂ ▸ h₁)
    have hzW : ⊤ ≤ z ⁻¹ᵁ W := hl₁ ▸ fun s _ => hl (Set.mem_univ _)
    obtain ⟨h₁, h₂⟩ := valR_eq_gm 𝒰 e hU h z hz H W hzW
    refine ⟨h₁, fun f => ?_⟩
    have h₃ := tendsto_st 𝒰 (valR l W f)
    rw [← valR_spMap_comp (st 𝒰) l W hl] at h₃
    have h₄ := valR_spMap_comp (algebraMap (V 𝒰) (K 𝒰)) l W hl f
    rw [hl₁, h₂] at h₄
    have h₅ : ((valR l W f : V 𝒰) : K 𝒰) = gm 𝒰 e W f := h₄.symm
    rw [h₅] at h₃
    exact h₃

theorem compactSpace_of_isProper {R : Type} [CommRing R] (p : X ⟶ Sp R) [IsProper p] (σ : R →+* ℂ) :
    CompactSpace (PtsOver p (spMap σ)) :=
  ⟨isCompact_iff_ultrafilter_le_nhds.2 fun 𝒰 _ => by
    obtain ⟨y, hy, h⟩ := exists_tendsto 𝒰 (fun b : PtsOver p (spMap σ) => b.1) p σ fun b => b.2
    exact ⟨⟨y, hy⟩, trivial, (tendsto_subtype_rng (f := id) (x := ⟨y, hy⟩)).2 h⟩⟩

end DifferentiableLines.Cpt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.ProjectiveValuations.CompactSpaceOfIsProper =====

-- ===== clump member: Development.WeilBound.CoreStatements.ProjectiveValuations.CompactSpaceComplexPointsOfProper =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.ProjectiveValuations.CompactSpaceComplexPointsOfProper", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.DetJacMatCoordsEqTransitionJacobianDet\npublic import Development.WeilBound.CoreStatements.ProjectiveValuations.CompactSpaceOfIsProper\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry TopologicalSpace Set
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.CxPts

theorem DifferentiableLines.compactSpace_complex_points_of_proper : ∀ (Y : Scheme.{0}) (p : Y ⟶ Sp ℂ), IsProper p → CompactSpace (CxPts p (RingHom.id ℂ)) := fun _ p _ =>
  DifferentiableLines.Cpt.compactSpace_of_isProper p (RingHom.id ℂ)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.ProjectiveValuations.CompactSpaceComplexPointsOfProper =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.CompactSpaceCxPtsOfIsProper =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.CompactSpaceCxPtsOfIsProper", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.DetJacMatCoordsEqTransitionJacobianDet\npublic import Development.WeilBound.CoreStatements.ProjectiveValuations.CompactSpaceComplexPointsOfProper\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry TopologicalSpace Set
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.CxPts

namespace GlobalTheory.CompanionTheory.Gaga

theorem compactSpace_cxPts_of_isProper :
    ∀ (Y : Scheme.{0}) (p : Y ⟶ Sp ℂ), IsProper p → CompactSpace (CxPts p (RingHom.id ℂ)) :=
  DifferentiableLines.compactSpace_complex_points_of_proper

end GlobalTheory.CompanionTheory.Gaga
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.CompactSpaceCxPtsOfIsProper =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RegularFunctionPolynomialGrowth =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.RegularFunctionPolynomialGrowth", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.DetJacMatCoordsEqTransitionJacobianDet\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsAffineOpenAndIsPushout\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry TopologicalSpace Set
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.CxPts

open CategoryTheory.Limits ReciprocityTheory.ChartRestriction.G.DVR.FlatBC

noncomputable section

namespace GlobalTheory.CompanionTheory.Gaga

theorem mem_closure_of_isPushout {R A B C : CommRingCat.{0}} {f : R ⟶ A} {g : R ⟶ B} {i : A ⟶ C}
    {j : B ⟶ C} (h : IsPushout f g i j) (c : C) :
    c ∈ AddSubmonoid.closure {x : C | ∃ (a : A) (b : B), x = i a * j b} := by
  letI : Algebra R A := f.hom.toAlgebra
  letI : Algebra R B := g.hom.toAlgebra
  letI : Algebra A C := i.hom.toAlgebra
  letI : Algebra B C := j.hom.toAlgebra
  letI : Algebra R C := (f ≫ i).hom.toAlgebra
  haveI : IsScalarTower R A C := .of_algebraMap_eq fun r => rfl
  haveI : IsScalarTower R B C := .of_algebraMap_eq fun r => congr($(h.w) r)
  haveI : Algebra.IsPushout R B A C := CommRingCat.isPushout_iff_isPushout.mp h.flip
  obtain ⟨t, rfl⟩ := (Algebra.IsPushout.equiv R B A C).surjective c
  induction t with
  | tmul b a =>
    rw [Algebra.IsPushout.equiv_tmul]
    exact AddSubmonoid.subset_closure ⟨a, b, mul_comm _ _⟩
  | add x y hx hy =>
    rw [map_add (f := _)]
    exact add_mem hx hy

theorem appLE_surjective {X Z : Scheme.{0}} (d : X ⟶ Z) [IsClosedImmersion d] {O : Z.Opens}
    (hO : IsAffineOpen O) {D : X.Opens} (hD : D = d ⁻¹ᵁ O) (e : D ≤ d ⁻¹ᵁ O) :
    Function.Surjective (d.appLE O D e) := by
  subst hD
  rw [← Scheme.Hom.app_eq_appLE]
  exact d.app_surjective O hO

theorem mem_closure_inf {S Y : Scheme.{0}} [IsAffine S] (p : Y ⟶ S) [IsSeparated p] {V W : Y.Opens}
    (hV : IsAffineOpen V) (hW : IsAffineOpen W) (g : Γ(Y, V ⊓ W)) :
    g ∈ AddSubmonoid.closure {x : Γ(Y, V ⊓ W) | ∃ (a : Γ(Y, V)) (b : Γ(Y, W)),
      x = resG Y inf_le_left a * resG Y inf_le_right b} := by
  have H := IsPullback.of_hasPullback p p
  obtain ⟨hO, po⟩ := Conormal.isAffineOpen_and_isPushout H (U := ⊤) (T₀ := W) (W := V)
    (isAffineOpen_top _) hW hV le_top le_top
  have d1 : pullback.diagonal p ≫ pullback.fst p p = 𝟙 Y := pullback.diagonal_fst p
  have d2 : pullback.diagonal p ≫ pullback.snd p p = 𝟙 Y := pullback.diagonal_snd p
  have hD : V ⊓ W = pullback.diagonal p ⁻¹ᵁ (pullback.fst p p ⁻¹ᵁ V ⊓ pullback.snd p p ⁻¹ᵁ W) := by
    rw [Scheme.Hom.preimage_inf, ← Scheme.Hom.comp_preimage, ← Scheme.Hom.comp_preimage, d1, d2]
    simp
  obtain ⟨c, rfl⟩ := appLE_surjective (pullback.diagonal p) hO hD hD.le g
  have hc := mem_closure_of_isPushout po c
  induction hc using AddSubmonoid.closure_induction with
  | zero => simp
  | mem x hx =>
    obtain ⟨a, b, rfl⟩ := hx
    rw [map_mul]
    refine AddSubmonoid.subset_closure ⟨a, b, ?_⟩
    have e₁ := Conormal.appLE_appLE d1 (U := V) (V := pullback.fst p p ⁻¹ᵁ V ⊓ pullback.snd p p ⁻¹ᵁ W)
      (W := V ⊓ W) inf_le_left hD.le (by simpa using inf_le_left) a
    have e₂ := Conormal.appLE_appLE d2 (U := W) (V := pullback.fst p p ⁻¹ᵁ V ⊓ pullback.snd p p ⁻¹ᵁ W)
      (W := V ⊓ W) inf_le_right hD.le (by simpa using inf_le_right) b
    rw [e₁, e₂]
    exact congrArg₂ (· * ·) (Conormal.id_appLE _ a) (Conormal.id_appLE _ b)
  | add x y _ _ hx hy =>
    rw [map_add (f := _)]
    exact add_mem hx hy

variable {Y : Scheme.{0}} {p : Y ⟶ Sp ℂ}

def GensBdd (V W : Y.Opens) {n : ℕ} (u : Fin n → Γ(Y, V))
    (F : CxPts p (RingHom.id ℂ) → ℂ) : Prop :=
  ∃ (r m : ℕ) (w : Fin r → Γ(Y, W)), ∀ y ∈ ptsIn p (RingHom.id ℂ) (V ⊓ W),
    ‖F y‖ ≤ (∑ k, ‖ev p (RingHom.id ℂ) W (w k) y‖) *
      (1 + ∑ l, ‖ev p (RingHom.id ℂ) V (u l) y‖) ^ m

variable {V W : Y.Opens} {n : ℕ} {u : Fin n → Γ(Y, V)}

theorem GensBdd.add {F G : CxPts p (RingHom.id ℂ) → ℂ} (hF : GensBdd V W u F)
    (hG : GensBdd V W u G) : GensBdd V W u fun y => F y + G y := by
  obtain ⟨r₁, m₁, w₁, h₁⟩ := hF
  obtain ⟨r₂, m₂, w₂, h₂⟩ := hG
  refine ⟨r₁ + r₂, max m₁ m₂, Fin.append w₁ w₂, fun y hy => ?_⟩
  have hB : (1 : ℝ) ≤ 1 + ∑ l, ‖ev p (RingHom.id ℂ) V (u l) y‖ :=
    le_add_of_nonneg_right (Finset.sum_nonneg fun _ _ => norm_nonneg _)
  rw [Fin.sum_univ_add]
  simp only [Fin.append_left, Fin.append_right]
  have s₁ : 0 ≤ ∑ k, ‖ev p (RingHom.id ℂ) W (w₁ k) y‖ := Finset.sum_nonneg fun _ _ => norm_nonneg _
  have s₂ : 0 ≤ ∑ k, ‖ev p (RingHom.id ℂ) W (w₂ k) y‖ := Finset.sum_nonneg fun _ _ => norm_nonneg _
  calc ‖F y + G y‖ ≤ ‖F y‖ + ‖G y‖ := norm_add_le _ _
    _ ≤ _ := add_le_add (h₁ y hy) (h₂ y hy)
    _ ≤ (∑ k, ‖ev p (RingHom.id ℂ) W (w₁ k) y‖) *
            (1 + ∑ l, ‖ev p (RingHom.id ℂ) V (u l) y‖) ^ max m₁ m₂ +
          (∑ k, ‖ev p (RingHom.id ℂ) W (w₂ k) y‖) *
            (1 + ∑ l, ‖ev p (RingHom.id ℂ) V (u l) y‖) ^ max m₁ m₂ :=
        add_le_add (mul_le_mul_of_nonneg_left (pow_le_pow_right₀ hB (le_max_left _ _)) s₁)
          (mul_le_mul_of_nonneg_left (pow_le_pow_right₀ hB (le_max_right _ _)) s₂)
    _ = _ := by ring

theorem gensBdd_eval₂ (f : MvPolynomial (Fin n) ℂ) (b : Γ(Y, W)) :
    GensBdd V W u fun y => ev p (RingHom.id ℂ) V (MvPolynomial.eval₂Hom (algX p V) u f) y *
      ev p (RingHom.id ℂ) W b y := by
  induction f using MvPolynomial.induction_on generalizing b with
  | C a =>
    refine ⟨1, 0, fun _ => algX p W a * b, fun y hy => ?_⟩
    have hy' := mem_ptsIn_inf.1 hy
    simp [ev_mul, ev_algX hy'.1, ev_algX hy'.2]
  | add f g hf hg =>
    simpa only [map_add (f := _), ev_add, add_mul] using (hf b).add (hg b)
  | mul_X f l hf =>
    obtain ⟨r, m, w, h⟩ := hf b
    refine ⟨r, m + 1, w, fun y hy => ?_⟩
    have hB : ‖ev p (RingHom.id ℂ) V (u l) y‖ ≤ 1 + ∑ l, ‖ev p (RingHom.id ℂ) V (u l) y‖ :=
      (Finset.single_le_sum (f := fun l => ‖ev p (RingHom.id ℂ) V (u l) y‖)
        (fun _ _ => norm_nonneg _) (Finset.mem_univ l)).trans (le_add_of_nonneg_left zero_le_one)
    have s : 0 ≤ (∑ k, ‖ev p (RingHom.id ℂ) W (w k) y‖) *
        (1 + ∑ l, ‖ev p (RingHom.id ℂ) V (u l) y‖) ^ m :=
      (norm_nonneg _).trans (h y hy)
    have e : ev p (RingHom.id ℂ) V (MvPolynomial.eval₂Hom (algX p V) u (f * MvPolynomial.X l)) y *
        ev p (RingHom.id ℂ) W b y =
        (ev p (RingHom.id ℂ) V (MvPolynomial.eval₂Hom (algX p V) u f) y *
          ev p (RingHom.id ℂ) W b y) * ev p (RingHom.id ℂ) V (u l) y := by
      rw [map_mul, MvPolynomial.eval₂Hom_X', ev_mul]
      ring
    beta_reduce
    rw [e, norm_mul, pow_succ, ← mul_assoc]
    exact mul_le_mul (h y hy) hB (norm_nonneg _) s

theorem exists_gens_bound : ∀ (Y : Scheme.{0}) (p : Y ⟶ Sp ℂ), IsSeparated p → LocallyOfFiniteType p → ∀ (V : Y.Opens), IsAffineOpen V → ∃ (n : ℕ) (u : Fin n → Γ(Y, V)), ∀ (W : Y.Opens), IsAffineOpen W → ∀ g : Γ(Y, V ⊓ W), ∃ (r m : ℕ) (w : Fin r → Γ(Y, W)), ∀ y ∈ ptsIn p (RingHom.id ℂ) (V ⊓ W), ‖ev p (RingHom.id ℂ) (V ⊓ W) g y‖ ≤ (∑ k, ‖ev p (RingHom.id ℂ) W (w k) y‖) * (1 + ∑ l, ‖ev p (RingHom.id ℂ) V (u l) y‖) ^ m := by
  intro Y p hs hl V hV
  have hc : (algX p V).FiniteType :=
    (HasRingHomProperty.appLE @LocallyOfFiniteType p inferInstance ⟨⊤, isAffineOpen_top _⟩ ⟨V, hV⟩ _).comp
      (RingHom.FiniteType.of_surjective _
        (ConcreteCategory.bijective_of_isIso (Scheme.ΓSpecIso (CommRingCat.of ℂ)).inv).2)
  letI : Algebra ℂ Γ(Y, V) := (algX p V).toAlgebra
  haveI : Algebra.FiniteType ℂ Γ(Y, V) := hc
  obtain ⟨n, φ, hφ⟩ := Algebra.FiniteType.iff_quotient_mvPolynomial''.1
    (inferInstance : Algebra.FiniteType ℂ Γ(Y, V))
  have hφe (f : MvPolynomial (Fin n) ℂ) :
      φ f = MvPolynomial.eval₂Hom (algX p V) (fun l => φ (MvPolynomial.X l)) f := by
    conv_lhs => rw [MvPolynomial.aeval_unique φ]
    rfl
  refine ⟨n, fun l => φ (MvPolynomial.X l), fun W hW g => ?_⟩
  have key : GensBdd V W (p := p) (fun l => φ (MvPolynomial.X l))
      (ev p (RingHom.id ℂ) (V ⊓ W) g) := by
    induction mem_closure_inf p hV hW g using AddSubmonoid.closure_induction with
    | zero =>
      refine ⟨0, 0, Fin.elim0, fun y hy => ?_⟩
      simp [ev_eq hy]
    | mem x hx =>
      obtain ⟨a, b, rfl⟩ := hx
      obtain ⟨f, rfl⟩ := hφ a
      obtain ⟨r, m, w, h⟩ := gensBdd_eval₂ (V := V) (W := W) (p := p)
        (u := fun l => φ (MvPolynomial.X l)) f b
      refine ⟨r, m, w, fun y hy => ?_⟩
      have hy' := mem_ptsIn_inf.1 hy
      rw [ev_mul, ev_res _ hy, ev_res _ hy, hφe]
      exact h y hy
    | add x y _ _ hx hy =>
      have e : ev p (RingHom.id ℂ) (V ⊓ W) (x + y) =
          fun z => ev p (RingHom.id ℂ) (V ⊓ W) x z + ev p (RingHom.id ℂ) (V ⊓ W) y z :=
        funext fun z => ev_add x y z
      rw [e]
      exact hx.add hy
  exact key

end GlobalTheory.CompanionTheory.Gaga
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RegularFunctionPolynomialGrowth =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HolomorphicSectionModerateGrowth =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.HolomorphicSectionModerateGrowth", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NoCommonZeroCombVal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousSectionPolynomialGrowth\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CompactSpaceCxPtsOfIsProper\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.DetJacMatCoordsEqTransitionJacobianDet\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.RegularFunctionPolynomialGrowth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry TopologicalSpace Set Filter Topology
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.CxPts

namespace GlobalTheory.CompanionTheory.Gaga

theorem continuous_section_polynomial_growth_of_isProper : ∀ (Y : Scheme.{0}) (p : Y ⟶ Sp ℂ), IsProper p → ∀ (B : LB Y), B.IsLB → ∀ s ∈ fibSec p (RingHom.id ℂ) B, (∀ j, ContinuousOn (s j) (ptsIn p (RingHom.id ℂ) (B.U j))) → ∀ (i : B.ι) (V : Y.Opens), IsAffineOpen V → V ≤ B.U i → ∃ (n : ℕ) (u : Fin n → Γ(Y, V)) (C : ℝ) (m : ℕ), ∀ y ∈ ptsIn p (RingHom.id ℂ) V, ‖s i y‖ ≤ C * (1 + ∑ l, ‖ev p (RingHom.id ℂ) V (u l) y‖) ^ m := by
  intro Y p hp B hB s hs hc i V hVa hV
  have := compactSpace_cxPts_of_isProper Y p hp
  obtain ⟨n, u, hu⟩ := _root_.GlobalTheory.CompanionTheory.Gaga.exists_gens_bound Y p inferInstance inferInstance V hVa
  refine ⟨n, u, ?_⟩
  have h0 (y) : 0 ≤ ∑ l, ‖ev p (RingHom.id ℂ) V (u l) y‖ := Finset.sum_nonneg fun _ _ => norm_nonneg _
  refine SectionGrowth.global_bound _ (fun y => ‖s i y‖) _ (fun y => le_add_of_nonneg_right (h0 y)) fun y₀ => ?_
  obtain ⟨j, hj⟩ := exists_mem_ptsIn hB.cover y₀
  obtain ⟨W, hW, hxW, hle⟩ := exists_isAffineOpen_mem_and_subset (U := B.U j) (mem_ptsIn.1 hj)
  have h2 : W ≤ B.U j := hle
  have hW₀ : y₀ ∈ ptsIn p (RingHom.id ℂ) W := mem_ptsIn.2 hxW
  have h3 : V ⊓ W ≤ B.U i ⊓ B.U j := inf_le_inf hV h2
  obtain ⟨r, m, w, hb⟩ := hu W hW (resG Y h3 (B.g i j).val)
  have hn := (isOpen_ptsIn W).mem_nhds hW₀
  let F : CxPts p (RingHom.id ℂ) → ℝ := fun y => (∑ k, ‖ev p (RingHom.id ℂ) W (w k) y‖) * ‖s j y‖
  have hF : ContinuousAt F y₀ :=
    (tendsto_finsetSum _ fun k _ => ((continuousOn_ev (w k)).continuousAt hn).norm).mul
      ((hc j).continuousAt ((isOpen_ptsIn _).mem_nhds hj)).norm
  refine ⟨|F y₀| + 1, m, by positivity, ?_⟩
  filter_upwards [hn, hF.eventually (eventually_le_nhds (lt_of_le_of_lt (le_abs_self _) (lt_add_one |F y₀|)))]
    with y hy hFy hyV
  have hVW : y ∈ ptsIn p (RingHom.id ℂ) (V ⊓ W) := mem_ptsIn_inf.2 ⟨hyV, hy⟩
  have hb' := hb y hVW
  have hij : y ∈ ptsIn p (RingHom.id ℂ) (B.U i ⊓ B.U j) := ptsIn_mono h3 hVW
  have e : ev p (RingHom.id ℂ) (V ⊓ W) (resG Y h3 (B.g i j).val) y = ev p (RingHom.id ℂ) (B.U i ⊓ B.U j) (B.g i j).val y :=
    ev_res _ hVW _
  rw [e] at hb'
  rw [hs.1 i j y (ptsIn_mono hV hyV) (ptsIn_mono h2 hy), CxPts.gv, norm_mul]
  have hT : 0 ≤ (1 + ∑ l, ‖ev p (RingHom.id ℂ) V (u l) y‖) ^ m := pow_nonneg (add_nonneg zero_le_one (h0 y)) _
  calc _ ≤ ((∑ k, ‖ev p (RingHom.id ℂ) W (w k) y‖) * (1 + ∑ l, ‖ev p (RingHom.id ℂ) V (u l) y‖) ^ m) * ‖s j y‖ :=
        mul_le_mul_of_nonneg_right hb' (norm_nonneg _)
    _ = F y * (1 + ∑ l, ‖ev p (RingHom.id ℂ) V (u l) y‖) ^ m := by simp only [F]; ring
    _ ≤ _ := mul_le_mul_of_nonneg_right hFy hT

end GlobalTheory.CompanionTheory.Gaga
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HolomorphicSectionModerateGrowth =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AnalyticSectionIsAlgebraic =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.AnalyticSectionIsAlgebraic", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SecondCountableTopologyOfIsProjOver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfEvEqOfSmoothOfRelativeDimension\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEqOfContinuousQuotientAlgHom\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMulEqOfPolynomialGrowth\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenIsDomainOfSmoothComplex\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NoCommonZeroCombVal\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.HolomorphicSectionModerateGrowth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry TopologicalSpace Set
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.CxPts

namespace GlobalTheory.CompanionTheory.Gaga

theorem holomorphicSections_algebraic_of_isProper : ∀ (Y : Scheme.{0}) (p : Y ⟶ Sp ℂ) (D : ℕ), SmoothOfRelativeDimension D p → IsProper p → ∀ (R : AnRead p (RingHom.id ℂ) D) (B : LB Y), B.IsLB → ∀ s ∈ R.holSec B, ∃ t : B.Sec, secVal p (RingHom.id ℂ) t = s := by
  intro Y p D hs hp R B hB s hsec
  have hcont (j : B.ι) : ContinuousOn (s j) (ptsIn p (RingHom.id ℂ) (B.U j)) :=
    (hsec.2 j).continuousOn (isOpen_ptsIn _)
  have loc (i : B.ι) (x : B.U i) : ∃ V : Y.Opens, x.1 ∈ V ∧ V ≤ B.U i ∧ ∃ c : Γ(Y, V),
      ∀ y ∈ ptsIn p (RingHom.id ℂ) V, ev p (RingHom.id ℂ) V c y = s i y := by
    obtain ⟨U, hxU, hU⟩ := GlobalTheory.exists_open_isDomain_of_smooth_complex Y p D hs x
    obtain ⟨V, hVa, hx, hV⟩ := Opens.isBasis_iff_nbhd.1 Y.isBasis_affineOpens (U := U ⊓ B.U i) (x := x.1) ⟨hxU, x.2⟩
    have ha : IsAffineOpen V := hVa
    have hi := hV.trans inf_le_right
    have hd := hU V (hV.trans inf_le_left) hx
    have hh := (hsec.2 i).mono (ptsIn_mono hi)
    obtain ⟨n, u, C, m, hC⟩ := _root_.GlobalTheory.CompanionTheory.Gaga.continuous_section_polynomial_growth_of_isProper Y p hp B hB s hsec.1 hcont i V ha hi
    obtain ⟨a, b, hb, e⟩ := SerreSections.exists_mul_eq_of_polynomial_growth Y p D hs R V ha hd _ hh n u C m hC
    exact ⟨V, hx, hi, GlobalTheory.exists_ev_eq_of_continuousOn_quotient Y p D hs V ha hd _ (hh.continuousOn (isOpen_ptsIn _)) a b hb e⟩
  choose V hx hV c hc using loc
  have glue (i : B.ι) : ∃ f : Γ(Y, B.U i), ∀ y ∈ ptsIn p (RingHom.id ℂ) (B.U i),
      ev p (RingHom.id ℂ) _ f y = s i y := by
    obtain ⟨f, hf, -⟩ := TopCat.Sheaf.existsUnique_gluing' Y.sheaf (V i) (B.U i)
      (fun x => homOfLE (hV i x)) (fun x h => Opens.mem_iSup.2 ⟨⟨x, h⟩, hx i _⟩) (c i) fun x x' =>
        GlobalTheory.eq_of_ev_eq_of_smoothOfRelativeDimension Y p D hs (V i x ⊓ V i x') _ _ fun y hy =>
          ((ev_res inf_le_left hy _).trans (hc i x y (mem_ptsIn_inf.1 hy).1)).trans
            ((ev_res inf_le_right hy _).trans (hc i x' y (mem_ptsIn_inf.1 hy).2)).symm
    refine ⟨f, fun y hy => ?_⟩
    have hy' : y ∈ ptsIn p (RingHom.id ℂ) (V i ⟨_, mem_ptsIn.1 hy⟩) := mem_ptsIn.2 (hx i _)
    rw [← hc i _ y hy', ← hf]
    exact (ev_res _ hy' _).symm
  choose f hf using glue
  refine ⟨⟨f, fun i j => GlobalTheory.eq_of_ev_eq_of_smoothOfRelativeDimension Y p D hs _ _ _ fun y hy => ?_⟩, funext₂ fun i y => ?_⟩
  · have h := mem_ptsIn_inf.1 hy
    refine (ev_res inf_le_left hy _).trans (Eq.trans ?_ (ev_mul _ _ _).symm)
    rw [hf i y h.1, hsec.1.1 i j y h.1 h.2, ← hf j y h.2]
    exact congrArg _ (ev_res inf_le_right hy _).symm
  · by_cases h : y ∈ ptsIn p (RingHom.id ℂ) (B.U i)
    · exact hf i y h
    · exact (ev_of_notMem h _).trans (hsec.1.2 i y h).symm

end GlobalTheory.CompanionTheory.Gaga
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AnalyticSectionIsAlgebraic =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HolomorphicGluingLocalFunctions =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.HolomorphicGluingLocalFunctions", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SecondCountableTopologyOfIsProjOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry TopologicalSpace Set
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.CxPts

noncomputable section

namespace GlobalTheory.CompanionTheory.Gaga

open ReciprocityTheory.L2DbarEstimates (V)
open GlobalTheory.ChartGlue

variable {X : Scheme.{0}} {s : X ⟶ Sp ℂ} {D : ℕ}

theorem valAt'_eq_ev (U : X.Opens) (f : Γ(X, U)) (y : CxPts s (RingHom.id ℂ)) :
    valAt' y.1 U f = ev s (RingHom.id ℂ) U f y := rfl

theorem comp_eq_id (y : CxPts s (RingHom.id ℂ)) : y.1 ≫ s = 𝟙 _ := by
  rw [y.2]
  simp [spMap]

theorem isHolTo_chart (c : AlgChart s (RingHom.id ℂ) D) (W : X.Opens)
    (ψ : (Fin D → ℂ) ≃L[ℂ] V D) :
    IsHolTo (ψ ⁻¹' (c.e.target ∩ c.e.symm ⁻¹' ptsIn s (RingHom.id ℂ) W))
      (fun b => (c.e.symm (ψ b)).1) := by
  intro U f
  have hset : ψ ⁻¹' (c.e.target ∩ c.e.symm ⁻¹' (ptsIn s (RingHom.id ℂ) W ∩ ptsIn s (RingHom.id ℂ) U)) =
      {b | b ∈ ψ ⁻¹' (c.e.target ∩ c.e.symm ⁻¹' ptsIn s (RingHom.id ℂ) W) ∧
        ⊤ ≤ (Opens.map (c.e.symm (ψ b)).1.base).obj U} := by
    ext b
    constructor
    · rintro ⟨h1, h2, h3⟩
      exact ⟨⟨h1, h2⟩, h3⟩
    · rintro ⟨⟨h1, h2⟩, h3⟩
      exact ⟨h1, h2, h3⟩
  refine ⟨?_, ?_⟩
  · have ho := (c.e.isOpen_inter_preimage_symm
      ((isOpen_ptsIn (p := s) (σ := RingHom.id ℂ) W).inter (isOpen_ptsIn U))).preimage ψ.continuous
    rw [hset] at ho
    exact ho
  · have hd := (c.holo U f).comp
      (ψ.differentiableOn : DifferentiableOn ℂ ψ {b | b ∈ ψ ⁻¹' (c.e.target ∩ c.e.symm ⁻¹' ptsIn s (RingHom.id ℂ) W) ∧
        ⊤ ≤ (Opens.map (c.e.symm (ψ b)).1.base).obj U})
      (fun b hb => ⟨hb.1.1, hb.2⟩)
    refine hd.congr ?_
    intro b _
    exact valAt'_eq_ev U f _

theorem exists_mem_holSec : ∀ (X : Scheme.{0}) (s : X ⟶ Sp ℂ) (D : ℕ), SmoothOfRelativeDimension D s → ∀ (R : AnRead s (RingHom.id ℂ) D), ∀ (L : LB X), L.IsLB → ∀ h : L.ι → (Sp ℂ ⟶ X) → ℂ, (∀ (i : L.ι) (m : ℕ) (B : Set (Fin m → ℂ)) (y : (Fin m → ℂ) → (Sp ℂ ⟶ X)), IsOpen B → IsHolTo B y → (∀ b ∈ B, y b ≫ s = 𝟙 _ ∧ ⊤ ≤ y b ⁻¹ᵁ L.U i) → DifferentiableOn ℂ (fun b => h i (y b)) B) → (∀ (i j : L.ι) (x : Sp ℂ ⟶ X), x ≫ s = 𝟙 _ → ⊤ ≤ x ⁻¹ᵁ (L.U i ⊓ L.U j) → h i x = valAt' x (L.U i ⊓ L.U j) (L.g i j).val * h j x) → ∃ σ ∈ R.holSec L, ∀ (i : L.ι), ∀ y ∈ ptsIn s (RingHom.id ℂ) (L.U i), σ i y = h i y.1 := by
  intro X s D _ R L _ h hhol hcoc
  classical
  obtain ⟨ψ⟩ : Nonempty ((Fin D → ℂ) ≃L[ℂ] V D) := ⟨(EuclideanSpace.equiv (Fin D) ℂ).symm⟩
  refine ⟨fun i y => if y ∈ ptsIn s (RingHom.id ℂ) (L.U i) then h i y.1 else 0, ?_, ?_⟩
  · refine ⟨⟨?_, ?_⟩, ?_⟩
    · intro i j y hi hj
      have hij : y ∈ ptsIn s (RingHom.id ℂ) (L.U i ⊓ L.U j) := mem_ptsIn_inf.2 ⟨hi, hj⟩
      simp only [if_pos hi, if_pos hj]
      rw [hcoc i j y.1 (comp_eq_id y) hij, valAt'_eq_ev]
      rfl
    · intro i y hy
      simp only [if_neg hy]
    · intro i k
      have hB : IsOpen (ψ ⁻¹' ((R.chart k).e.target ∩
          (R.chart k).e.symm ⁻¹' ptsIn s (RingHom.id ℂ) (L.U i))) :=
        ((R.chart k).e.isOpen_inter_preimage_symm (isOpen_ptsIn _)).preimage ψ.continuous
      have hd := hhol i D _ (fun b => ((R.chart k).e.symm (ψ b)).1) hB
        (isHolTo_chart (R.chart k) (L.U i) ψ) (fun b hb => ⟨comp_eq_id _, hb.2⟩)
      have hd2 := hd.comp ψ.symm.differentiableOn (fun v hv => by
        show ψ (ψ.symm v) ∈ (R.chart k).e.target ∩
          (R.chart k).e.symm ⁻¹' ptsIn s (RingHom.id ℂ) (L.U i)
        rw [ψ.apply_symm_apply]
        exact hv)
      refine hd2.congr ?_
      intro v hv
      have hv2 : (R.chart k).e.symm v ∈ ptsIn s (RingHom.id ℂ) (L.U i) := hv.2
      simp [Function.comp, hv2]
  · intro i y hy
    simp only [if_pos hy]

end GlobalTheory.CompanionTheory.Gaga
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HolomorphicGluingLocalFunctions =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HolomorphicLocalSectionsCompatible =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.HolomorphicLocalSectionsCompatible", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsHolPeriods\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SecondCountableTopologyOfIsProjOver\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AnalyticSectionIsAlgebraic\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.HolomorphicGluingLocalFunctions\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.DetJacMatCoordsEqTransitionJacobianDet\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry TopologicalSpace Set
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.CxPts

namespace GlobalTheory.CompanionTheory.Gaga

theorem gagaSections_pure : ∀ (X : Scheme.{0}) (s : X ⟶ Sp ℂ) (D : ℕ), IsProper s → SmoothOfRelativeDimension D s → ∀ (L : LB X), L.IsLB → ∀ h : L.ι → (Sp ℂ ⟶ X) → ℂ, (∀ (i : L.ι) (m : ℕ) (B : Set (Fin m → ℂ)) (y : (Fin m → ℂ) → (Sp ℂ ⟶ X)), IsOpen B → IsHolTo B y → (∀ b ∈ B, y b ≫ s = 𝟙 _ ∧ ⊤ ≤ y b ⁻¹ᵁ L.U i) → DifferentiableOn ℂ (fun b => h i (y b)) B) → (∀ (i j : L.ι) (x : Sp ℂ ⟶ X), x ≫ s = 𝟙 _ → ⊤ ≤ x ⁻¹ᵁ (L.U i ⊓ L.U j) → h i x = valAt' x (L.U i ⊓ L.U j) (L.g i j).val * h j x) → ∃ σ : L.Sec, ∀ (i : L.ι) (x : Sp ℂ ⟶ X), x ≫ s = 𝟙 _ → ⊤ ≤ x ⁻¹ᵁ L.U i → valAt' x (L.U i) (σ.f i) = h i x := by
  intro X s D hp hs L hL h hh hg
  obtain ⟨σ, hσ, e⟩ := _root_.GlobalTheory.CompanionTheory.Gaga.exists_mem_holSec X s D hs (AnRead.all s (RingHom.id ℂ) D) L hL h hh hg
  obtain ⟨t, ht⟩ := _root_.GlobalTheory.CompanionTheory.Gaga.holomorphicSections_algebraic_of_isProper X s D hs hp (AnRead.all s (RingHom.id ℂ) D) L hL σ hσ
  refine ⟨t, fun i x hx hU => ?_⟩
  have hx' : x ≫ s = spMap (RingHom.id ℂ) := by
    rw [hx, spMap]; exact (by simp)
  let y : CxPts s (RingHom.id ℂ) := ⟨x, hx'⟩
  have hy : y ∈ ptsIn s (RingHom.id ℂ) (L.U i) := hU
  have h1 := e i y hy
  rw [← ht] at h1
  exact h1

end GlobalTheory.CompanionTheory.Gaga
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HolomorphicLocalSectionsCompatible =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.SmoothSchemeDecomposeRelativeDimension =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.SmoothSchemeDecomposeRelativeDimension", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.Order.CompletePartialOrder\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.DimSplitPf\nimport Development.AbelianVarietyTheory.Definitions.Divisors.DetJacMatCoordsEqTransitionJacobianDet\nimport Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsAddEquivOfSurjectiveOfKerIff\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry TopologicalSpace Set
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.CxPts

namespace GlobalTheory.CompanionTheory.Gaga

theorem dim_eq_of_mem_inf {X Y : Scheme.{0}} (f : X ⟶ Y) {U V : X.Opens} {n m : ℕ}
    (hU : SmoothOfRelativeDimension n (U.ι ≫ f)) (hV : SmoothOfRelativeDimension m (V.ι ≫ f))
    {x : X} (hxU : x ∈ U) (hxV : x ∈ V) : n = m := by
  have e₁ : SmoothOfRelativeDimension (0 + n) ((U ⊓ V).ι ≫ f) := by
    rw [← Scheme.homOfLE_ι _ (inf_le_left : U ⊓ V ≤ U), Category.assoc]; infer_instance
  have e₂ : SmoothOfRelativeDimension (0 + m) ((U ⊓ V).ι ≫ f) := by
    rw [← Scheme.homOfLE_ι _ (inf_le_right : U ⊓ V ≤ V), Category.assoc]; infer_instance
  simpa using ReciprocityTheory.ChartRestriction.G.H1.dim_unique _ e₁ e₂ ⟨x, hxU, hxV⟩

theorem smoothOfRelativeDimension_iSup {X Y : Scheme.{0}} (f : X ⟶ Y) (D : ℕ) {ι : Type*}
    (U : ι → X.Opens) (hU : ∀ i, SmoothOfRelativeDimension D ((U i).ι ≫ f)) :
    SmoothOfRelativeDimension D ((⨆ i, U i).ι ≫ f) := by
  have : IsZariskiLocalAtSource (@SmoothOfRelativeDimension.{0} D) :=
    HasRingHomProperty.instIsZariskiLocalAtSource
  refine IsZariskiLocalAtSource.of_iSup_eq_top (P := @SmoothOfRelativeDimension.{0} D)
    (fun i => (⨆ i, U i).ι ⁻¹ᵁ U i) ?_ fun i => ?_
  · refine top_le_iff.1 fun x _ => ?_
    obtain ⟨i, hi⟩ := Opens.mem_iSup.1 x.2
    exact Opens.mem_iSup.2 ⟨i, hi⟩
  · let j := ((⨆ i, U i).ι ⁻¹ᵁ U i).ι ≫ (⨆ i, U i).ι
    have hr : Set.range j ⊆ Set.range (U i).ι := by
      rintro _ ⟨y, rfl⟩
      rw [Scheme.Opens.range_ι]
      exact y.2
    let k := IsOpenImmersion.lift (U i).ι j hr
    have hk : k ≫ (U i).ι = j := IsOpenImmersion.lift_fac _ _ _
    have : IsOpenImmersion (k ≫ (U i).ι) := by rw [hk]; infer_instance
    have : IsOpenImmersion k := IsOpenImmersion.of_comp k (U i).ι
    have e : ((⨆ i, U i).ι ⁻¹ᵁ U i).ι ≫ (⨆ i, U i).ι ≫ f = k ≫ (U i).ι ≫ f := by
      rw [← Category.assoc, ← Category.assoc, hk]
    rw [e]
    exact IsZariskiLocalAtSource.comp (P := @SmoothOfRelativeDimension.{0} D) (hU i) k

theorem exists_clopen_smoothOfRelativeDimension :
    ∀ (X : Scheme.{0}) (s : X ⟶ Sp ℂ), Smooth s → ∃ W : ℕ → X.Opens, (∀ D, IsClosed (W D : Set X)) ∧ (∀ D, SmoothOfRelativeDimension D ((W D).ι ≫ s)) ∧ (⨆ D, W D) = ⊤ ∧ Pairwise fun D D' => W D ⊓ W D' = ⊥ := by
  intro X s hs
  let W : ℕ → X.Opens := fun D => ⨆ U : {U : X.Opens // SmoothOfRelativeDimension D (U.ι ≫ s)}, U.1
  have hsm : ∀ D, SmoothOfRelativeDimension D ((W D).ι ≫ s) := fun D =>
    smoothOfRelativeDimension_iSup s D _ fun U => U.2
  have hcov : (⨆ D, W D) = ⊤ := by
    refine top_le_iff.1 fun x _ => ?_
    obtain ⟨n, U, hx, hU⟩ := ReciprocityTheory.ChartRestriction.G.H1.exists_dim s x
    exact Opens.mem_iSup.2 ⟨n, Opens.mem_iSup.2 ⟨⟨U, hU⟩, hx⟩⟩
  have hdis : Pairwise fun D D' => W D ⊓ W D' = ⊥ := by
    intro D D' hne
    refine le_bot_iff.1 fun x hx => ?_
    obtain ⟨U, hU⟩ := Opens.mem_iSup.1 hx.1
    obtain ⟨V, hV⟩ := Opens.mem_iSup.1 hx.2
    exact (hne (dim_eq_of_mem_inf s U.2 V.2 hU hV)).elim
  refine ⟨W, fun D => ?_, hsm, hcov, hdis⟩
  have hc : (W D : Set X)ᶜ = ((⨆ D' : {D' // D' ≠ D}, W D'.1 : X.Opens) : Set X) := by
    ext x
    constructor
    · intro hx
      have hx' : x ∈ (⨆ D, W D) := hcov ▸ trivial
      obtain ⟨D', hD'⟩ := Opens.mem_iSup.1 hx'
      refine Opens.mem_iSup.2 ⟨⟨D', fun e => hx (e ▸ hD')⟩, hD'⟩
    · intro hx hxD
      obtain ⟨D', hD'⟩ := Opens.mem_iSup.1 hx
      have := hdis D'.2
      have hm : x ∈ W D'.1 ⊓ W D := ⟨hD', hxD⟩
      rw [this] at hm
      exact hm
  rw [← isOpen_compl_iff, hc]
  exact Opens.isOpen _

end GlobalTheory.CompanionTheory.Gaga
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.SmoothSchemeDecomposeRelativeDimension =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.GagaSections =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.GagaSections", "h": "module\n\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Geometry₂.GagaSections\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsHolPeriods\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.HolomorphicLocalSectionsCompatible\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.Order.CompletePartialOrder\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.SmoothSchemeDecomposeRelativeDimension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry TopologicalSpace Set
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.CxPts

noncomputable section

namespace GlobalTheory.CompanionTheory.Gaga

open Opposite

theorem val_comp {X Y : Scheme.{0}} (x : Sp ℂ ⟶ Y) (φ : Y ⟶ X) (U : X.Opens) (f : Γ(X, U)) :
    valAt' (x ≫ φ) U f = valAt' x (φ ⁻¹ᵁ U) ((φ.app U).hom f) := by
  unfold valAt'
  by_cases h : ⊤ ≤ x ⁻¹ᵁ (φ ⁻¹ᵁ U)
  · rw [dite_eq_left h, dite_eq_left (show ⊤ ≤ (x ≫ φ) ⁻¹ᵁ U from h)]
    unfold valAt
    congr 1
  · rw [dite_eq_right h, dite_eq_right (show ¬ ⊤ ≤ (x ≫ φ) ⁻¹ᵁ U from h)]

theorem app_res {X Y : Scheme.{0}} (φ : Y ⟶ X) {U V : X.Opens} (h : V ≤ U) (a : Γ(X, U)) :
    (φ.app V).hom ((X.presheaf.map (homOfLE h).op).hom a) =
      (Y.presheaf.map (homOfLE (show φ ⁻¹ᵁ V ≤ φ ⁻¹ᵁ U from fun _ hy => h hy)).op).hom ((φ.app U).hom a) :=
  congr($(φ.naturality (homOfLE h).op).hom a)

theorem res_pullU {X Y : Scheme.{0}} (φ : Y ⟶ X) {U V : X.Opens} (h : V ≤ U) (u : Γ(X, U)ˣ) :
    res (show φ ⁻¹ᵁ V ≤ φ ⁻¹ᵁ U from fun _ hy => h hy) (pullU φ U u) = pullU φ V (res h u) :=
  Units.ext (app_res φ h u.val).symm

def resLB {X Y : Scheme.{0}} (φ : Y ⟶ X) (L : LB X) : LB Y where
  ι := L.ι
  U i := φ ⁻¹ᵁ L.U i
  g i j := pullU φ (L.U i ⊓ L.U j) (L.g i j)

theorem isLB_resLB {X Y : Scheme.{0}} (φ : Y ⟶ X) {L : LB X} (hL : L.IsLB) : (resLB φ L).IsLB := {
  cover := by
    refine eq_top_iff.2 fun y _ => ?_
    have hy : φ y ∈ (⨆ i, L.U i) := by rw [hL.cover]; trivial
    obtain ⟨i, hi⟩ := Opens.mem_iSup.1 hy
    exact Opens.mem_iSup.2 ⟨i, hi⟩
  g_self i := by
    refine (res_pullU φ (le_inf le_rfl le_rfl : L.U i ≤ L.U i ⊓ L.U i) (L.g i i)).trans ?_
    exact (congrArg (pullU φ (L.U i)) (hL.g_self i)).trans (map_one _)
  cocycle i j k := by
    have h1 := res_pullU φ (inf_le_left : L.U i ⊓ L.U j ⊓ L.U k ≤ L.U i ⊓ L.U j) (L.g i j)
    have h2 := res_pullU φ (le_inf (inf_le_left.trans inf_le_right) inf_le_right :
      L.U i ⊓ L.U j ⊓ L.U k ≤ L.U j ⊓ L.U k) (L.g j k)
    have h3 := res_pullU φ (le_inf (inf_le_left.trans inf_le_left) inf_le_right :
      L.U i ⊓ L.U j ⊓ L.U k ≤ L.U i ⊓ L.U k) (L.g i k)
    have h4 := congrArg (pullU φ (L.U i ⊓ L.U j ⊓ L.U k)) (hL.cocycle i j k)
    rw [map_mul] at h4
    exact (congrArg₂ (· * ·) h1 h2).trans (h4.trans h3.symm) }

theorem glue {X : Scheme.{0}} (W : ℕ → X.Opens) (hc : ⨆ D, W D = ⊤)
    (hd : Pairwise fun D D' => W D ⊓ W D' = ⊥) (U : X.Opens)
    (a : ∀ D, Γ((W D).toScheme, (W D).ι ⁻¹ᵁ U)) :
    ∃! b : Γ(X, U), ∀ D, ((W D).ι.app U).hom b = a D := by
  let V : ℕ → X.Opens := fun D => (W D).ι ''ᵁ (W D).ι ⁻¹ᵁ U
  have hV : ∀ D, V D = W D ⊓ U := fun D => by simp [V, Scheme.Hom.image_preimage_eq_opensRange_inf]
  have hle : ∀ D, V D ≤ U := fun D => by rw [hV]; exact inf_le_right
  have hcov : U ≤ iSup V := by
    intro x hx
    have hy : x ∈ (⨆ D, W D) := by rw [hc]; trivial
    obtain ⟨D, hD⟩ := Opens.mem_iSup.1 hy
    refine Opens.mem_iSup.2 ⟨D, ?_⟩
    rw [hV]
    exact ⟨hD, hx⟩
  have hcomp : TopCat.Presheaf.IsCompatible X.sheaf.1 V a := by
    intro D D'
    by_cases e : D = D'
    · subst e
      rfl
    · have hb : V D ⊓ V D' = ⊥ := by
        refine eq_bot_iff.2 ?_
        rw [← hd e, hV, hV]
        exact inf_le_inf inf_le_left inf_le_left
      have : Subsingleton (X.sheaf.1.obj (op (V D ⊓ V D'))) := by
        rw [hb]
        exact CommRingCat.subsingleton_of_isTerminal X.sheaf.isTerminalOfEmpty
      exact Subsingleton.elim _ _
  obtain ⟨b, hb, hu⟩ := X.sheaf.existsUnique_gluing' V U (fun D => homOfLE (hle D)) hcov a hcomp
  refine ⟨b, fun D => ?_, fun c hc' => hu c fun D => ?_⟩
  · rw [Scheme.Opens.ι_app]
    exact hb D
  · rw [← hc' D, Scheme.Opens.ι_app]
    rfl

theorem exists_factor {X : Scheme.{0}} (W : ℕ → X.Opens) (hc : ⨆ D, W D = ⊤) (x : Sp ℂ ⟶ X) :
    ∃ (D : ℕ) (x' : Sp ℂ ⟶ (W D).toScheme), x' ≫ (W D).ι = x := by
  let p : Sp ℂ := IsLocalRing.closedPoint ℂ
  have hy : x p ∈ (⨆ D, W D) := by rw [hc]; trivial
  obtain ⟨D, hD⟩ := Opens.mem_iSup.1 hy
  have hr : Set.range x ⊆ Set.range (W D).ι := by
    rintro _ ⟨q, rfl⟩
    rw [Subsingleton.elim q p, Scheme.Opens.range_ι]
    exact hD
  exact ⟨D, IsOpenImmersion.lift (W D).ι x hr, IsOpenImmersion.lift_fac _ _ _⟩

theorem gagaSections : GlobalTheory.CompanionTheory.Ar.Flat.GagaSections := by
  intro X s hp hs L hL h hhol hcomp
  obtain ⟨W, hcl, hdim, hc, hd⟩ := _root_.GlobalTheory.CompanionTheory.Gaga.exists_clopen_smoothOfRelativeDimension X s hs
  have hprop : ∀ D, IsProper ((W D).ι ≫ s) := fun D => by
    haveI : IsClosedImmersion (W D).ι :=
      IsClosedImmersion.of_isPreimmersion _ (by rw [Scheme.Opens.range_ι]; exact hcl D)
    infer_instance
  have key : ∀ D, ∃ σ : (resLB (W D).ι L).Sec, ∀ (i : L.ι) (x : Sp ℂ ⟶ (W D).toScheme),
      x ≫ (W D).ι ≫ s = 𝟙 _ → ⊤ ≤ x ⁻¹ᵁ ((W D).ι ⁻¹ᵁ L.U i) →
      valAt' x ((W D).ι ⁻¹ᵁ L.U i) (σ.f i) = h i (x ≫ (W D).ι) := fun D => by
    refine _root_.GlobalTheory.CompanionTheory.Gaga.gagaSections_pure (W D).toScheme ((W D).ι ≫ s) D (hprop D) (hdim D) (resLB (W D).ι L)
      (isLB_resLB _ hL) (fun i x => h i (x ≫ (W D).ι)) ?_ ?_
    · intro i m B y hB hy hcond
      refine hhol i m B (fun b => y b ≫ (W D).ι) hB ?_ ?_
      · intro U f
        have := hy ((W D).ι ⁻¹ᵁ U) (((W D).ι.app U).hom f)
        simp only [val_comp]
        exact this
      · intro b hb
        refine ⟨by simpa using (hcond b hb).1, (hcond b hb).2⟩
    · intro i j x hx hU
      refine (hcomp i j (x ≫ (W D).ι) (by simpa using hx) hU).trans ?_
      rw [val_comp]
      rfl
  choose σ hσ using key
  have ex := fun i => glue W hc hd (L.U i) (fun D => (σ D).f i)
  choose b hb hbu using ex
  refine ⟨⟨b, fun i j => ?_⟩, fun i x hx hU => ?_⟩
  · refine (glue W hc hd (L.U i ⊓ L.U j) fun D => ((W D).ι.app _).hom
      ((X.presheaf.map (homOfLE inf_le_left).op).hom (b i))).unique (fun _ => rfl) fun D => ?_
    rw [map_mul, app_res, app_res, hb, hb]
    exact ((σ D).compat i j).symm
  · obtain ⟨D, x', rfl⟩ := exists_factor W hc x
    rw [val_comp, hb]
    exact hσ D i x' (by simpa using hx) hU

end GlobalTheory.CompanionTheory.Gaga
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.GagaSections =====
