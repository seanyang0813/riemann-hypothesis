module

public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBundleChain
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericFlagComparison
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.StatementsBundles
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericFlagDifference
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPullPreserve
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PTwinJoinPull
import Mathlib.Tactic.Linter.Style
import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.ClassListMapDomainPerm
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PPairNumberRelabel

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XRelabelBundle, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBaseExtension

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XRelabelBundle =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XRelabelBundle", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace PositivityTheory.Xgn.A_relabel_bundle

variable {K₁ K₂ : Type} {ι₁ : K₁ → Type} {ι₂ : K₂ → Type}

theorem exists_snd {K : Type} {ι : K → Type} (p : Σ k, ι k) (k : K) (h : p.1 = k) :
    ∃ i : ι k, p = ⟨k, i⟩ := by
  obtain ⟨a, i⟩ := p
  simp only at h
  subst h
  exact ⟨i, rfl⟩

theorem exists_down (e : K₁ ≃ K₂) (σ : (Σ k, ι₁ k) ≃ (Σ k, ι₂ k)) (hσ : ∀ v, (σ v).1 = e v.1)
    (s₂ : ∀ k, ι₂ k) : ∃ s₁ : ∀ k, ι₁ k, ∀ k, σ ⟨k, s₁ k⟩ = ⟨e k, s₂ (e k)⟩ := by
  have h : ∀ k, ∃ i : ι₁ k, σ.symm ⟨e k, s₂ (e k)⟩ = ⟨k, i⟩ := fun k => by
    apply exists_snd
    apply e.injective
    rw [← hσ, Equiv.apply_symm_apply]
  choose s₁ hs using h
  exact ⟨s₁, fun k => by rw [← hs k, Equiv.apply_symm_apply]⟩

theorem exists_up (e : K₁ ≃ K₂) (σ : (Σ k, ι₁ k) ≃ (Σ k, ι₂ k)) (hσ : ∀ v, (σ v).1 = e v.1)
    (s₁ : ∀ k, ι₁ k) : ∃ s₂ : ∀ k, ι₂ k, ∀ k, σ ⟨k, s₁ k⟩ = ⟨e k, s₂ (e k)⟩ := by
  have h : ∀ k, ∃ i : ι₂ k, σ ⟨e.symm k, s₁ (e.symm k)⟩ = ⟨k, i⟩ := fun k => by
    apply exists_snd
    rw [hσ, Equiv.apply_symm_apply]
  choose s₂ hs using h
  refine ⟨s₂, fun k => ?_⟩
  rw [← hs (e k)]
  exact congrArg (fun k => σ ⟨k, s₁ k⟩) (e.symm_apply_apply k).symm

theorem down_unique (e : K₁ ≃ K₂) (σ : (Σ k, ι₁ k) ≃ (Σ k, ι₂ k)) {s₂ : ∀ k, ι₂ k}
    {s₁ t₁ : ∀ k, ι₁ k} (hs : ∀ k, σ ⟨k, s₁ k⟩ = ⟨e k, s₂ (e k)⟩)
    (ht : ∀ k, σ ⟨k, t₁ k⟩ = ⟨e k, s₂ (e k)⟩) : s₁ = t₁ := by
  funext k
  have h := σ.injective ((hs k).trans (ht k).symm)
  exact eq_of_heq (Sigma.mk.inj_iff.1 h).2

variable {Ω : Type} [Field Ω]

theorem cone_rename (O : Type) [CommRing O] [Algebra O Ω] (e : K₁ ≃ K₂)
    (σ : (Σ k, ι₁ k) ≃ (Σ k, ι₂ k)) (hσ : ∀ v, (σ v).1 = e v.1) (y : (Σ k, ι₂ k) → Ω)
    (f : MvPolynomial (Σ k, ι₁ k) O) :
    pointConeMap O y (rename σ f) = rename e (pointConeMap O (y ∘ σ) f) := by
  have key : (pointConeMap O y).comp (rename σ) =
      ((rename e : MvPolynomial K₁ Ω →ₐ[Ω] MvPolynomial K₂ Ω).restrictScalars O).comp
        (pointConeMap O (y ∘ σ)) := by
    apply MvPolynomial.algHom_ext
    intro p
    simp [pointConeMap, hσ]
  exact congrArg (fun φ => φ f) key

theorem pointIdeal_eq (O : Type) [CommRing O] [Algebra O Ω] (e : K₁ ≃ K₂)
    (σ : (Σ k, ι₁ k) ≃ (Σ k, ι₂ k)) (hσ : ∀ v, (σ v).1 = e v.1) (y : (Σ k, ι₂ k) → Ω) :
    pointIdeal O y = (pointIdeal O (y ∘ σ)).map (rename σ) := by
  apply le_antisymm
  · intro g hg
    obtain ⟨f, rfl⟩ := rename_surjective (R := O) σ σ.surjective g
    apply Ideal.mem_map_of_mem
    have h0 : pointConeMap O y (rename σ f) = 0 := hg
    rw [cone_rename O e σ hσ] at h0
    show pointConeMap O (y ∘ σ) f = 0
    apply rename_injective e e.injective
    rw [h0, map_zero]
  · rw [Ideal.map_le_iff_le_comap]
    intro f hf
    have h0 : pointConeMap O (y ∘ σ) f = 0 := hf
    show pointConeMap O y (rename σ f) = 0
    rw [cone_rename O e σ hσ, h0, map_zero]

theorem fnField_eq (O : Type) [CommRing O] [Algebra O Ω] (e : K₁ ≃ K₂)
    (σ : (Σ k, ι₁ k) ≃ (Σ k, ι₂ k)) (hσ : ∀ v, (σ v).1 = e v.1) (y : (Σ k, ι₂ k) → Ω) :
    fnField O y = fnField O (y ∘ σ) := by
  unfold fnField
  congr 2
  ext a
  constructor
  · rintro ⟨⟨k, i, j⟩, rfl⟩
    have h : ∀ i : ι₂ k, ∃ i' : ι₁ (e.symm k), σ.symm ⟨k, i⟩ = ⟨e.symm k, i'⟩ := fun i => by
      apply exists_snd
      apply e.injective
      rw [← hσ, Equiv.apply_symm_apply, Equiv.apply_symm_apply]
    obtain ⟨i', hi⟩ := h i
    obtain ⟨j', hj⟩ := h j
    refine ⟨⟨e.symm k, i', j'⟩, ?_⟩
    simp only [Function.comp]
    rw [← hi, ← hj, Equiv.apply_symm_apply, Equiv.apply_symm_apply]
  · rintro ⟨⟨k, i, j⟩, rfl⟩
    obtain ⟨i', hi⟩ := exists_snd (σ ⟨k, i⟩) (e k) (hσ _)
    obtain ⟨j', hj⟩ := exists_snd (σ ⟨k, j⟩) (e k) (hσ _)
    refine ⟨⟨e k, i', j'⟩, ?_⟩
    simp only [Function.comp]
    rw [hi, hj]

variable [Fintype K₁] [Fintype K₂] [∀ k, Fintype (ι₁ k)] [∀ k, Fintype (ι₂ k)]

theorem mseg_eq (e : K₁ ≃ K₂) (σ : (Σ k, ι₁ k) ≃ (Σ k, ι₂ k)) (y : (Σ k, ι₂ k) → Ω)
    {s₁ : ∀ k, ι₁ k} {s₂ : ∀ k, ι₂ k} (hs : ∀ k, σ ⟨k, s₁ k⟩ = ⟨e k, s₂ (e k)⟩) :
    mseg y s₂ = mseg (y ∘ σ) s₁ := by
  simp only [mseg, Function.comp, hs]
  exact (Equiv.prod_comp e (fun k => y ⟨k, s₂ k⟩)).symm

theorem mon_eq (e : K₁ ≃ K₂) (σ : (Σ k, ι₁ k) ≃ (Σ k, ι₂ k)) (y : (Σ k, ι₂ k) → Ω)
    {s₁ : ∀ k, ι₁ k} {s₂ : ∀ k, ι₂ k} (hs : ∀ k, σ ⟨k, s₁ k⟩ = ⟨e k, s₂ (e k)⟩) (a : K₂ → ℤ) :
    ∏ k, y ⟨k, s₂ k⟩ ^ a k = ∏ k, (y ∘ σ) ⟨k, s₁ k⟩ ^ (a ∘ e) k := by
  simp only [Function.comp, hs]
  exact (Equiv.prod_comp e (fun k => y ⟨k, s₂ k⟩ ^ a k)).symm

theorem chartRing_eq (O : Type) [CommRing O] [Algebra O Ω] (e : K₁ ≃ K₂)
    (σ : (Σ k, ι₁ k) ≃ (Σ k, ι₂ k)) (hσ : ∀ v, (σ v).1 = e v.1) (y : (Σ k, ι₂ k) → Ω)
    {s₁ : ∀ k, ι₁ k} {s₂ : ∀ k, ι₂ k} (hs : ∀ k, σ ⟨k, s₁ k⟩ = ⟨e k, s₂ (e k)⟩) :
    chartRing O (mseg y) s₂ = chartRing O (mseg (y ∘ σ)) s₁ := by
  unfold chartRing
  congr 1
  ext a
  simp only [Set.mem_range]
  constructor
  · rintro ⟨t, rfl⟩
    obtain ⟨t₁, ht⟩ := exists_down e σ hσ t
    exact ⟨t₁, by rw [mseg_eq e σ y hs, mseg_eq e σ y ht]⟩
  · rintro ⟨t, rfl⟩
    obtain ⟨t₂, ht⟩ := exists_up e σ hσ t
    exact ⟨t₂, by rw [mseg_eq e σ y hs, mseg_eq e σ y ht]⟩

end PositivityTheory.Xgn.A_relabel_bundle

open PositivityTheory.Xgn.A_relabel_bundle in
theorem PositivityTheory.Xgn.t_relabel_bundle : ∀ (O : Type) [CommRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K₁ : Type) [Fintype K₁] [DecidableEq K₁] (ι₁ : K₁ → Type) [∀ k, Fintype (ι₁ k)] (K₂ : Type) [Fintype K₂] [DecidableEq K₂] (ι₂ : K₂ → Type) [∀ k, Fintype (ι₂ k)] (e : K₁ ≃ K₂) (σ : (Σ k, ι₁ k) ≃ (Σ k, ι₂ k)), (∀ v, (σ v).1 = e v.1) → ∀ y : (Σ k, ι₂ k) → Ω, pointIdeal O y = (pointIdeal O (y ∘ σ)).map (rename σ) ∧ fnField O y = fnField O (y ∘ σ) ∧ ∀ (N : ℕ) (V : Type) [AddCommGroup V] [Module Ω V] (E₁ : ChartBundle O (mseg (y ∘ σ)) N V), ∃ E₂ : ChartBundle O (mseg y) N V, (∀ (s₁ : ∀ k, ι₁ k) (s₂ : ∀ k, ι₂ k), (∀ k, σ ⟨k, s₁ k⟩ = ⟨e k, s₂ (e k)⟩) → E₂.lat s₂ = E₁.lat s₁) ∧ ∀ (w : Module.Basis (Fin N) Ω V) (b : Fin N → K₂ → ℤ), IsFlagFrame (y ∘ σ) E₁ w (fun i => b i ∘ e) → IsFlagFrame y E₂ w b := by
  intro O _ Ω _ _ K₁ _ _ ι₁ _ K₂ _ _ ι₂ _ e σ hσ y
  refine ⟨pointIdeal_eq O e σ hσ y, fnField_eq O e σ hσ y, fun N V _ _ E₁ => ?_⟩
  choose d hd using exists_down e σ hσ
  have hm : ∀ s, mseg y s = mseg (y ∘ σ) (d s) := fun s => mseg_eq e σ y (hd s)
  have hc : ∀ s, chartRing O (mseg y) s = chartRing O (mseg (y ∘ σ)) (d s) :=
    fun s => chartRing_eq O e σ hσ y (hd s)
  refine ⟨{ lat := fun s => E₁.lat (d s)
            stable := fun s a ha v hv => E₁.stable (d s) a (by rw [← hc]; exact ha) v hv
            frame := fun s hs => by
              simp only [hc]
              exact E₁.frame (d s) (by rw [← hm]; exact hs)
            overlap := fun s t hs ht v hv => by
              simp only [hm]
              exact E₁.overlap (d s) (d t) (by rw [← hm]; exact hs) (by rw [← hm]; exact ht) v hv },
    fun s₁ s₂ h => ?_, fun w b h => ⟨fun s hs i => ?_⟩⟩
  · show E₁.lat (d s₂) = E₁.lat s₁
    rw [down_unique e σ (hd s₂) h]
  · have hs' : segreVec (y ∘ σ) (d s) ≠ 0 := by
      show mseg (y ∘ σ) (d s) ≠ 0
      rw [← hm]
      exact hs
    refine (h.graded (d s) hs' i).trans ?_
    have hc' : chartRing O (segreVec y) s = chartRing O (segreVec (y ∘ σ)) (d s) := hc s
    unfold degLat
    rw [hc', mon_eq e σ y (hd s) (b i)]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XRelabelBundle =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBaseExtension =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBaseExtension", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBundleChain\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericFlagComparison\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.StatementsBundles\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericFlagDifference\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPullPreserve\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XRelabelBundle\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PTwinJoinPull\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.ClassListMapDomainPerm\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PPairNumberRelabel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace GlobalTheory.CompanionTheory.Ar.CkPullBirat

open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (restrictChart)

section Numbers

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

theorem classNum_perm {K : Type} [DecidableEq K] {ι : K → Type} {S : Type} (cls : S → K → ℤ)
    (H : MvPolynomial S ℤ) {Q Q' : List (K → ℤ)} (p : Q.Perm Q') (W : Ideal (MRing ι O)) :
    classNum cls H Q W = classNum cls H Q' W := by
  unfold classNum
  refine Finset.sum_congr rfl fun μ _ => ?_
  rw [PairNumberRelabel.vNumL_perm W (p.append_left _)]

theorem classList_map_perm {K₁ K₂ : Type} {S : Type} (cls : S → K₂ → ℤ) (e : K₁ → K₂)
    (μ : S →₀ ℕ) :
    ((classList cls μ).map (· ∘ e)).Perm (classList (fun s => cls s ∘ e) μ) := by
  rw [← Multiset.coe_eq_coe]
  unfold classList
  rw [← Multiset.map_coe, Multiset.coe_toList, Multiset.coe_toList, Multiset.map_map]
  rfl

variable {K₁ K₂ : Type} [DecidableEq K₁] [DecidableEq K₂] {ι₁ : K₁ → Type} {ι₂ : K₂ → Type}
  (e : K₁ ≃ K₂) (σ : (Σ k, ι₁ k) ≃ (Σ k, ι₂ k))

theorem pairNum_relabel (hσ : ∀ v, (σ v).1 = e v.1) (P : Ideal (MRing ι₁ O)) {n : ℕ}
    (x x' : Fin n → K₂ → ℤ) (f g : Fin n → MRing ι₁ O)
    (Gs : Fin n → MvPolynomial (Fin n ⊕ Fin n) ℤ) {S : Type} (cls : S → K₂ → ℤ) (μ : S →₀ ℕ) :
    pairNum (P.map (rename σ)) x x' (fun i => rename σ (f i)) (fun i => rename σ (g i)) Gs
        (classList cls μ) =
      pairNum P (fun i => x i ∘ e) (fun i => x' i ∘ e) f g Gs
        (classList (fun s => cls s ∘ e) μ) := by
  rw [PairNumberRelabel.map_rename_eq, PairNumberRelabel.pairNum_map e σ hσ]
  unfold pairNum
  simp only [classNum_perm _ _ (classList_map_perm cls e μ)]

theorem rootTerm_relabel (hσ : ∀ v, (σ v).1 = e v.1) (P : Ideal (MRing ι₁ O)) {n : ℕ}
    (x : Fin n → K₂ → ℤ) (G : MvPolynomial (Fin n) ℤ) {S : Type} (cls : S → K₂ → ℤ)
    (μ : S →₀ ℕ) (a : O) :
    cycEval (fun W => classNum x G (classList cls μ) W) (divCycle (P.map (rename σ)) (C a)) =
      cycEval (fun W => classNum (fun i => x i ∘ e) G (classList (fun s => cls s ∘ e) μ) W)
        (divCycle P (C a)) := by
  rw [PairNumberRelabel.map_rename_eq]
  unfold cycEval
  rw [← finsum_comp_equiv (PairNumberRelabel.idealEquiv (R := O) σ)]
  refine finsum_congr fun W => ?_
  rw [PairNumberRelabel.idealEquiv_apply, ← rename_C σ a, PairNumberRelabel.divCycle_map σ e hσ]
  beta_reduce
  rw [PairNumberRelabel.classNum_map e σ hσ, classNum_perm _ _ (classList_map_perm cls e μ)]

end Numbers

section Assoc

variable {K K' K₁ : Type} (ι : K → Type) (ι' : K' → Type) (ι₁ : K₁ → Type)

def assocEquiv : (Σ k : (K ⊕ K') ⊕ K₁, Sum.elim (Sum.elim ι ι') ι₁ k) ≃
    (Σ k : K ⊕ (K' ⊕ K₁), Sum.elim ι (Sum.elim ι' ι₁) k) where
  toFun
    | ⟨.inl (.inl k), i⟩ => ⟨.inl k, i⟩
    | ⟨.inl (.inr k), i⟩ => ⟨.inr (.inl k), i⟩
    | ⟨.inr k, i⟩ => ⟨.inr (.inr k), i⟩
  invFun
    | ⟨.inl k, i⟩ => ⟨.inl (.inl k), i⟩
    | ⟨.inr (.inl k), i⟩ => ⟨.inl (.inr k), i⟩
    | ⟨.inr (.inr k), i⟩ => ⟨.inr k, i⟩
  left_inv := by rintro ⟨(k | k) | k, i⟩ <;> rfl
  right_inv := by rintro ⟨k | k | k, i⟩ <;> rfl

theorem assocEquiv_fst (v) : (assocEquiv ι ι' ι₁ v).1 = Equiv.sumAssoc K K' K₁ v.1 := by
  obtain ⟨(k | k) | k, i⟩ := v <;> rfl

variable {ι ι' ι₁}

theorem join_assoc {Ω : Type} (x : (Σ k, ι k) → Ω) (z : (Σ k, ι' k) → Ω) (z₁ : (Σ k, ι₁ k) → Ω) :
    joinCoord x (joinCoord z z₁) ∘ assocEquiv ι ι' ι₁ = joinCoord (joinCoord x z) z₁ := by
  funext v
  obtain ⟨(k | k) | k, i⟩ := v <;> rfl

theorem pullDeg_assoc (a : K → ℤ) :
    pullDeg (K' := K' ⊕ K₁) a ∘ Equiv.sumAssoc K K' K₁ =
      pullDeg (K' := K₁) (pullDeg (K' := K') a) := by
  funext k
  obtain (k | k) | k := k <;> rfl

def assocChart (s : ∀ k : K ⊕ (K' ⊕ K₁), Sum.elim ι (Sum.elim ι' ι₁) k) :
    ∀ k : (K ⊕ K') ⊕ K₁, Sum.elim (Sum.elim ι ι') ι₁ k
  | .inl (.inl k) => s (.inl k)
  | .inl (.inr k) => s (.inr (.inl k))
  | .inr k => s (.inr (.inr k))

theorem assocChart_spec (s : ∀ k : K ⊕ (K' ⊕ K₁), Sum.elim ι (Sum.elim ι' ι₁) k) (k) :
    assocEquiv ι ι' ι₁ ⟨k, assocChart s k⟩ =
      ⟨Equiv.sumAssoc K K' K₁ k, s (Equiv.sumAssoc K K' K₁ k)⟩ := by
  obtain (k | k) | k := k <;> rfl

end Assoc

theorem closure_closure {O : Type} [CommRing O] {Ω : Type} [Field Ω] [Algebra O Ω] {V : Type}
    [AddCommGroup V] [Module Ω V] (R R' : Subalgebra O Ω) (h : R ≤ R') (L : AddSubgroup V) :
    AddSubgroup.closure {v | ∃ a ∈ R', ∃ e ∈ AddSubgroup.closure {v | ∃ a ∈ R, ∃ e ∈ L, v = a • e},
      v = a • e} = AddSubgroup.closure {v | ∃ a ∈ R', ∃ e ∈ L, v = a • e} := by
  apply le_antisymm
  · rw [AddSubgroup.closure_le]
    rintro v ⟨a, ha, e, he, rfl⟩
    refine PositivityTheory.Xgn.A_pull_preserve.smul_mem R' L a ha e (AddSubgroup.closure_mono ?_ he)
    rintro v ⟨b, hb, e, he, rfl⟩
    exact ⟨b, h hb, e, he, rfl⟩
  · apply AddSubgroup.closure_mono
    rintro v ⟨a, ha, e, he, rfl⟩
    exact ⟨a, ha, e, AddSubgroup.subset_closure ⟨1, one_mem _, e, he, (one_smul _ _).symm⟩, rfl⟩

theorem relabel {O : Type} [CommRing O] {Ω : Type} [Field Ω] [Algebra O Ω] {K₁ : Type} [Fintype K₁]
    [DecidableEq K₁] {ι₁ : K₁ → Type} [∀ k, Fintype (ι₁ k)] {K₂ : Type} [Fintype K₂]
    [DecidableEq K₂] {ι₂ : K₂ → Type} [∀ k, Fintype (ι₂ k)] (e : K₁ ≃ K₂)
    (σ : (Σ k, ι₁ k) ≃ (Σ k, ι₂ k)) (hσ : ∀ v, (σ v).1 = e v.1) (y : (Σ k, ι₂ k) → Ω)
    (y₁ : (Σ k, ι₁ k) → Ω) (hy : y ∘ σ = y₁) :
    pointIdeal O y = (pointIdeal O y₁).map (rename σ) ∧ fnField O y = fnField O y₁ ∧
    (∀ (s₁ : ∀ k, ι₁ k) (s₂ : ∀ k, ι₂ k), (∀ k, σ ⟨k, s₁ k⟩ = ⟨e k, s₂ (e k)⟩) →
      mseg y s₂ = mseg y₁ s₁ ∧ chartRing O (mseg y) s₂ = chartRing O (mseg y₁) s₁) ∧
    ∀ (N : ℕ) (V : Type) [AddCommGroup V] [Module Ω V] (E₁ : ChartBundle O (mseg y₁) N V),
      ∃ E₂ : ChartBundle O (mseg y) N V,
        (∀ (s₁ : ∀ k, ι₁ k) (s₂ : ∀ k, ι₂ k), (∀ k, σ ⟨k, s₁ k⟩ = ⟨e k, s₂ (e k)⟩) →
          E₂.lat s₂ = E₁.lat s₁) ∧
        ∀ (w : Module.Basis (Fin N) Ω V) (b : Fin N → K₂ → ℤ),
          IsFlagFrame y₁ E₁ w (fun i => b i ∘ e) → IsFlagFrame y E₂ w b := by
  subst hy
  obtain ⟨h1, h2, h3⟩ := PositivityTheory.Xgn.t_relabel_bundle O Ω K₁ ι₁ K₂ ι₂ e σ hσ y
  exact ⟨h1, h2, fun s₁ s₂ hs => ⟨PositivityTheory.Xgn.A_relabel_bundle.mseg_eq e σ y hs,
    PositivityTheory.Xgn.A_relabel_bundle.chartRing_eq O e σ hσ y hs⟩, h3⟩

theorem pull_pull {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {Ω : Type}
    [Field Ω] [Algebra O Ω] {K K' K₁ : Type} [Fintype K] [Fintype K'] [Fintype K₁]
    {ι : K → Type} {ι' : K' → Type} {ι₁ : K₁ → Type} [∀ k, Fintype (ι k)] [∀ k, Fintype (ι' k)]
    [∀ k, Fintype (ι₁ k)] (x : (Σ k, ι k) → Ω) (z : (Σ k, ι' k) → Ω) (z₁ : (Σ k, ι₁ k) → Ω)
    {N : ℕ} {V : Type} [AddCommGroup V] [Module Ω V] (E : ChartBundle O (mseg x) N V)
    (EB : ChartBundle O (mseg (joinCoord x z)) N V)
    (E₁ : ChartBundle O (mseg (joinCoord (joinCoord x z) z₁)) N V)
    (E₂ : ChartBundle O (mseg (joinCoord x (joinCoord z z₁))) N V)
    (hp : IsPull O x z E EB) (hp₁ : IsPull O (joinCoord x z) z₁ EB E₁)
    (hc : ∀ s, mseg (joinCoord x (joinCoord z z₁)) s =
        mseg (joinCoord (joinCoord x z) z₁) (assocChart s) ∧
      chartRing O (mseg (joinCoord x (joinCoord z z₁))) s =
        chartRing O (mseg (joinCoord (joinCoord x z) z₁)) (assocChart s))
    (hl : ∀ s, E₂.lat s = E₁.lat (assocChart s)) :
    IsPull O x (joinCoord z z₁) E E₂ := by
  intro s hs
  have hs₁ : mseg (joinCoord (joinCoord x z) z₁) (assocChart s) ≠ 0 := (hc s).1 ▸ hs
  have hs₀ := PositivityTheory.Xgn.A_pull_preserve.below_ne _ _ _ hs₁
  rw [hl s, hp₁ _ hs₁, hp _ hs₀, (hc s).2,
    closure_closure _ _ (JoinPullbackAlt.chartRing_le_join O _ _ _ hs₁)]
  rfl

theorem main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → ∀ (N : ℕ) (V : Type) [AddCommGroup V] [Module Ω V] (E E' : ChartBundle O (mseg x) N V), SameGeneric O x E E' → ∀ (K' : Type) [Fintype K'] [DecidableEq K'] (ι' : K' → Type) [∀ k, Fintype (ι' k)] (z : (Σ k, ι' k) → Ω), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O (joinCoord x z)) d → fnField O (joinCoord x z) = fnField O x → ∀ EB E'B : ChartBundle O (mseg (joinCoord x z)) N V, IsPull O x z E EB → IsPull O x z E' E'B → (∀ (k : ℕ), 1 ≤ k → k ≤ d + 1 → ∀ (q : ℕ) (L : Fin q → K → ℤ) (Q : MvPolynomial (Fin q) ℤ), Q.IsHomogeneous (d + 1 - k) → ck O (joinCoord x z) d N EB E'B k (fun j => pullDeg (K' := K') (L j)) Q = ck O x d N E E' k L Q) ∧ (∀ (c : ℕ) (G : MvPolynomial (Fin N) ℤ), G.IsSymmetric → G.IsHomogeneous c → c ≤ d → ∀ (q : ℕ) (L : Fin q → K → ℤ) (Q : MvPolynomial (Fin q) ℤ), Q.IsHomogeneous (d - c) → ∀ a : O, a ≠ 0 → rootNum O (joinCoord x z) d N EB G (fun j => pullDeg (K' := K') (L j)) Q a = rootNum O x d N E G L Q a) := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x d hW N V _ _ E E' hEE' K' _ _ ι' _ z hm hb EB E'B hp hp'
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  have hsB : SameGeneric O (joinCoord x z) EB E'B :=
    (PositivityTheory.Xgn.t_pull_preserve O Ω K ι x N V E E' K' ι' z EB E'B hp hp').2.1 hEE'
  have hself : SameGeneric O (joinCoord x z) EB EB := fun s _ =>
    ⟨fun v hv => ⟨1, one_ne_zero, by simpa using hv⟩,
      fun v hv => ⟨1, one_ne_zero, by simpa using hv⟩⟩
  obtain ⟨K₁, _, _, ι₁, _, z₁, F, w, b, hm₁, hb₁, hF⟩ :=
    GlobalTheory.CompanionTheory.Ar.CommonFlag.main O Ω (K ⊕ K') (Sum.elim ι ι') (joinCoord x z) d hm N 1 V ![EB, E'B]
      (Fin.forall_fin_two.2 ⟨hself, hsB⟩)
  have hq : IsPull O (joinCoord x z) z₁ EB (F 0) := (hF 0).1
  have hq' : IsPull O (joinCoord x z) z₁ E'B (F 1) := (hF 1).1
  have hM₁ : IsModelOver (pointIdeal O (joinCoord (joinCoord x z) z₁)) d :=
    ((BundleExamples.isModelOver_iff O _ d).mp hm₁).2
  have hs₁ : SameGeneric O (joinCoord (joinCoord x z) z₁) (F 0) (F 1) :=
    (PositivityTheory.Xgn.t_pull_preserve O Ω _ _ _ N V EB E'B K₁ ι₁ z₁ (F 0) (F 1) hq hq').2.1 hsB
  obtain ⟨b₂, rfl⟩ : ∃ b₂ : Fin 2 → Fin N → K ⊕ (K' ⊕ K₁) → ℤ,
      b = fun j i => b₂ j i ∘ Equiv.sumAssoc K K' K₁ :=
    ⟨fun j i => b j i ∘ (Equiv.sumAssoc K K' K₁).symm, by
      funext j i k
      simp⟩
  obtain ⟨-, f, g, hfp⟩ := _root_.GlobalTheory.CompanionTheory.Ar.FlagPairOfFrames.main O Ω _ _ (joinCoord (joinCoord x z) z₁)
    ϖ hϖ d hM₁ N V (F 0) (F 1) hs₁ w w _ _ (hF 0).2 (hF 1).2 (fun i j hij => by
      simp [Finsupp.single_apply, hij.ne])
  have hσ := assocEquiv_fst ι ι' ι₁
  obtain ⟨hI, hK, hc, hE⟩ := relabel (O := O) (Equiv.sumAssoc K K' K₁) (assocEquiv ι ι' ι₁) hσ
    (joinCoord x (joinCoord z z₁)) _ (join_assoc x z z₁)
  obtain ⟨G, hG, hGf⟩ := hE N V (F 0)
  obtain ⟨G', hG', hGf'⟩ := hE N V (F 1)
  have hr : IsPull O x (joinCoord z z₁) E G := pull_pull x z z₁ E EB (F 0) G hp hq
    (fun s => hc _ _ (assocChart_spec s)) (fun s => hG _ _ (assocChart_spec s))
  have hr' : IsPull O x (joinCoord z z₁) E' G' := pull_pull x z z₁ E' E'B (F 1) G' hp' hq'
    (fun s => hc _ _ (assocChart_spec s)) (fun s => hG' _ _ (assocChart_spec s))
  have hM₂ : IsModelOver (pointIdeal O (joinCoord x (joinCoord z z₁))) d := by
    rw [hI]
    exact PairNumberRelabel.isModelOver_map _ _ hσ _ d hM₁
  have hm₂ : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O
      (mcIdeal O (joinCoord x (joinCoord z z₁))) d :=
    (BundleExamples.isModelOver_iff O _ d).mpr ⟨hW.1.map Sum.inl, hM₂⟩
  have hfp₂ : IsFlagPair ϖ (joinCoord x (joinCoord z z₁)) G G' w w (b₂ 0) (b₂ 1)
      (fun i => rename (assocEquiv ι ι' ι₁) (f i)) (fun i => rename (assocEquiv ι ι' ι₁) (g i)) := by
    refine ⟨hGf w _ hfp.flag, hGf' w _ hfp.flag', hfp.sameFlag, fun i => ?_, fun i => ?_⟩
    · rw [hI]
      exact PairNumberRelabel.isVerticalDivisor_map _ _ hσ _ ϖ _ _ _ (hfp.vertical i)
    · rw [aeval_rename, aeval_rename, join_assoc]
      exact hfp.generic i
  obtain ⟨A₁, B₁⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.ck_rootNum_eq_pairNum_on_flagPair O Ω _ _ (joinCoord x z) ϖ hϖ d hm N V EB E'B hsB
    K₁ ι₁ z₁ hm₁ hb₁ (F 0) (F 1) hq hq' w w _ _ f g hfp
  obtain ⟨A₂, B₂⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.ck_rootNum_eq_pairNum_on_flagPair O Ω K ι x ϖ hϖ d hW N V E E' hEE'
    (K' ⊕ K₁) (Sum.elim ι' ι₁) (joinCoord z z₁) hm₂ (hK.trans (hb₁.trans hb)) G G' hr hr'
    w w _ _ _ _ hfp₂
  refine ⟨fun k hk1 hk2 q L Q hQ => ?_, fun c P hsym hP hcd q L Q hQ a ha => ?_⟩
  · rw [A₁ k hk1 hk2 q _ Q hQ, A₂ k hk1 hk2 q L Q hQ]
    refine Finset.sum_congr rfl fun μ _ => ?_
    rw [hI, pairNum_relabel _ _ hσ]
    simp only [pullDeg_assoc]
  · rw [B₁ c P hsym hP hcd q _ Q hQ a ha, B₂ c P hsym hP hcd q L Q hQ a ha]
    refine Finset.sum_congr rfl fun μ _ => ?_
    rw [hI, rootTerm_relabel _ _ hσ]
    simp only [pullDeg_assoc]

end GlobalTheory.CompanionTheory.Ar.CkPullBirat
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBaseExtension =====
