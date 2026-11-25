module

public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Proportional
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.MonomialLinesPermutation
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.IsFieldIntersection
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.AdelicGroupAlgebraActionInjective
public import Development.AutomorphicSpectrum.Statements.GeometryStatements.CmpPair
public import Development.AutomorphicSpectrum.Statements.GeometryStatements.PadicIntegersHenselianFiniteResidue
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeLine
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.CmTypeHostAutPermutation
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.RootOnFund
public import Development.AbelianVarietyTheory.Proofs.HeightProofs.OpenImmersionCompStructureEqGeneric
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.GenPtSpecializes
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeCptInteriorGeneric
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.SplitComps
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.RootFundamentalWeightDuality
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsSncModel
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.TowerOrigin
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.RootModelOriginCompatibility
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ConjugateHermitianLineIsometries
import Development.AutomorphicSpectrum.Definitions.MetricPeriods.PairRelationOfScaledRatio
import ReciprocityTheory.AnalyticForms.LeviForms.IsRegFamilyInhabitStatement
import ReciprocityTheory.AnalyticForms.PotentialTheory.IsPotentialOfFun
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.RationalSections.IsRatSectionOn
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerSymmetryLimitCompat, Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsUniqueHostAutEmbedding, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.HodgeTieGalois, Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeTiesDistinctGeneric, Development.AutomorphicSpectrum.Proofs.GeometryProofs.PrimeDivisorsOfOmegaBundle, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerOriginVectorBundle

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerSymmetryLimitCompat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerSymmetryLimitCompat", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Proportional\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.MonomialLinesPermutation\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.IsFieldIntersection\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ConjugateHermitianLineIsometries\nimport Development.AutomorphicSpectrum.Definitions.MetricPeriods.PairRelationOfScaledRatio\nimport ReciprocityTheory.AnalyticForms.LeviForms.IsRegFamilyInhabitStatement\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.IsPotentialOfFun\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.RationalSections.IsRatSectionOn\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I2 ReciprocityTheory.ChartRestriction.G.AI.I4 ReciprocityTheory.AnForm.M ReciprocityTheory.AnForm.P GlobalTheory.CompanionTheory.Ar.Cmp GlobalTheory.CompanionTheory.Ar.PB Filter Topology
open ReciprocityTheory.ChartRestriction.G.AI.I1 (IsBlockMap pullDeg)

namespace GlobalTheory.CompanionTheory.Ar.Top.PermInv

theorem exists_word_multiset {α : Type} (s : Multiset α) :
    ∃ w : Fin (Multiset.card s) → α, ∑ k, ({w k} : Multiset α) = s := by
  induction s using Multiset.induction_on with
  | empty => exact ⟨Fin.elim0, by simp⟩
  | cons a s ih =>
    obtain ⟨w, hw⟩ := ih
    rw [Multiset.card_cons]
    refine ⟨Fin.cons a w, ?_⟩
    rw [Fin.sum_univ_succ]
    simp [hw, Multiset.singleton_add]

theorem degree_eq_card {α : Type} (μ : α →₀ ℕ) : μ.degree = Multiset.card (Finsupp.toMultiset μ) := by
  rw [Finsupp.card_toMultiset]
  rfl

theorem exists_word {α : Type} (μ : α →₀ ℕ) (d : ℕ) (h : μ.degree = d) :
    ∃ w : Fin d → α, ∑ k, Finsupp.single (w k) 1 = μ := by
  subst h
  have hc : Multiset.card (Finsupp.toMultiset μ) = μ.degree := (degree_eq_card μ).symm
  obtain ⟨w, hw⟩ := exists_word_multiset (Finsupp.toMultiset μ)
  refine ⟨fun k => w (Fin.cast hc.symm k), ?_⟩
  classical
  have H : Finsupp.toMultiset (∑ k, Finsupp.single (w (Fin.cast hc.symm k)) 1) = Finsupp.toMultiset μ := by

    rw [map_sum]
    simp only [Finsupp.toMultiset_single, one_smul]
    exact (Fintype.sum_equiv (finCongr hc.symm) _ _ (fun k => rfl)).trans hw
  simpa [Finsupp.toMultiset_toFinsupp] using congrArg Multiset.toFinsupp H

theorem degree_mapDomain {α β : Type} (f : α → β) (μ : α →₀ ℕ) :
    (Finsupp.mapDomain f μ).degree = μ.degree := by
  rw [degree_eq_card, degree_eq_card, ← Finsupp.toMultiset_map, Multiset.card_map]

variable {Ψ : Type} [Fintype Ψ] {N : ℕ}

theorem arMono_word (M : RootModel Ψ N) (II : IntersectionSystem) (hII : IsIntersectionSystem II) (t : ℝ)
    (w : Fin (dimFl Ψ N + 1) → Ψ × Fin N) :
    M.arMono II t (Finsupp.mapDomain some (∑ k, Finsupp.single (w k) 1)) =
      II _ _ M.P _ (fun j => M.x t (w j)) / (M.δ : ℝ) := by
  have e : Finsupp.mapDomain some (∑ k, Finsupp.single (w k) 1) =
      ∑ k, Finsupp.single (some (w k)) (1 : ℕ) := by
    simp [Finsupp.mapDomain_finsetSum]
  obtain ⟨hdeg, -, -, hv⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.monoLines_monomial_word II hII M.K M.ι M.P (dimFl Ψ N + 1) _ (M.line t) (fun k => some (w k))
    M.arith (by rintro (_ | r); exacts [M.A_smooth, M.x_smooth t r])
  have hnone : (∑ k, Finsupp.single (some (w k)) (1 : ℕ) : Option (Ψ × Fin N) →₀ ℕ) none = 0 := by
    simp [Finsupp.finsetSum_apply]
  rw [e, RootModel.arMono, if_pos hdeg, hnone, pow_zero, mul_one, hv]
  rfl

end GlobalTheory.CompanionTheory.Ar.Top.PermInv

namespace GlobalTheory.CompanionTheory.Ar.Top.PermInv

theorem limUnder_arMono_perm {Ψ : Type} [Fintype Ψ] {N : ℕ} (M M' : RootModel Ψ N) (II : IntersectionSystem)
    (hII : IsIntersectionSystem II) (hM : M.Converges II) (hM' : M'.Converges II) (σ : Equiv.Perm Ψ)
    (hlim : ∀ w : Fin (dimFl Ψ N + 1) → Ψ × Fin N, Tendsto (fun t => II _ _ M.P _ (fun j => M.x t (σ (w j).1, (w j).2)) /
      (M.δ : ℝ) - II _ _ M'.P _ (fun j => M'.x t (w j)) / (M'.δ : ℝ)) (𝓝[>] 0) (𝓝 0))
    (μ : Ψ × Fin N →₀ ℕ) :
    (limUnder (𝓝[>] (0 : ℝ)) fun t => M.arMono II t
        (Finsupp.mapDomain some (Finsupp.mapDomain (fun x : Ψ × Fin N => (σ x.1, x.2)) μ))) =
      limUnder (𝓝[>] (0 : ℝ)) fun t => M'.arMono II t (Finsupp.mapDomain some μ) := by
  by_cases hd : μ.degree = dimFl Ψ N + 1
  · obtain ⟨w, rfl⟩ := exists_word μ _ hd
    have e : Finsupp.mapDomain (fun x : Ψ × Fin N => (σ x.1, x.2)) (∑ k, Finsupp.single (w k) 1) =
        ∑ k, Finsupp.single (σ (w k).1, (w k).2) (1 : ℕ) := by
      simp [Finsupp.mapDomain_finsetSum]
    have hf : (fun t => M.arMono II t (Finsupp.mapDomain some
        (Finsupp.mapDomain (fun x : Ψ × Fin N => (σ x.1, x.2)) (∑ k, Finsupp.single (w k) 1)))) =
        fun t => II _ _ M.P _ (fun j => M.x t (σ (w j).1, (w j).2)) / (M.δ : ℝ) := by
      funext t
      rw [e]
      exact arMono_word M II hII t (fun k => (σ (w k).1, (w k).2))
    have hg : (fun t => M'.arMono II t (Finsupp.mapDomain some (∑ k, Finsupp.single (w k) 1))) =
        fun t => II _ _ M'.P _ (fun j => M'.x t (w j)) / (M'.δ : ℝ) := by
      funext t
      exact arMono_word M' II hII t w
    obtain ⟨L1, h1⟩ := hM (Finsupp.mapDomain some
        (Finsupp.mapDomain (fun x : Ψ × Fin N => (σ x.1, x.2)) (∑ k, Finsupp.single (w k) 1)))
    obtain ⟨L2, h2⟩ := hM' (Finsupp.mapDomain some (∑ k, Finsupp.single (w k) 1))
    rw [h1.limUnder_eq, h2.limUnder_eq]
    rw [hf] at h1
    rw [hg] at h2
    exact sub_eq_zero.1 (tendsto_nhds_unique (h1.sub h2) (hlim w))
  · have h0 : ∀ (K : RootModel Ψ N) (m : Ψ × Fin N →₀ ℕ), m.degree = μ.degree →
        (fun t => K.arMono II t (Finsupp.mapDomain some m)) = fun _ => 0 := by
      intro K m hm
      funext t
      rw [RootModel.arMono, if_neg (by rw [degree_mapDomain, hm]; exact hd)]
    rw [h0 M _ (degree_mapDomain _ μ), h0 M' μ rfl]

theorem propA_of_limits : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (T : GlobalTheory.CompanionTheory.Ar.Top.RootTower Ψ N)
    (II : IntersectionSystem) (Γ : Subgroup (Equiv.Perm Ψ)), T.Conv II → (∀ τ τ' : Ψ, ∃ s ∈ Γ, s τ = τ') →
    (∀ s ∈ Γ, ∀ B : ℕ, 2 ≤ B → ∃ π : Equiv.Perm T.Comp, ∀ (c : T.Comp)
      (w : Fin (GlobalTheory.CompanionTheory.Ar.Top.dimFl Ψ N + 1) → Ψ × Fin N),
      Tendsto (fun t => II _ _ (T.M B c).P _ (fun j => (T.M B c).x t (s (w j).1, (w j).2)) / (T.M B c).δ -
        II _ _ (T.M B (π c)).P _ (fun j => (T.M B (π c)).x t (w j)) / (T.M B (π c)).δ) (𝓝[>] 0) (𝓝 0)) →
    IsIntersectionSystem II → T.PropA II := by
  intro Ψ _ _ N T II Γ hC htr hlim hII
  refine ⟨Γ, htr, fun σ hσ B hB F => ?_⟩
  obtain ⟨π, hπ⟩ := hlim σ hσ B hB
  have hb : ∀ (m : Option (Ψ × Fin N) →₀ ℕ) (a : ℝ),
      (monomial m a : RPA Ψ N) = a • (basisMonomials (Option (Ψ × Fin N)) ℝ) m := by
    intro m a
    simp [coe_basisMonomials, smul_monomial]
  have hmono : ∀ (c : T.Comp) (μ : Ψ × Fin N →₀ ℕ) (a : ℝ),
      T.PPc II B c (rename (fun x : Ψ × Fin N => (σ x.1, x.2)) (monomial μ a)) =
        T.PPc II B (π c) (monomial μ a) := by
    intro c μ a
    simp only [RootTower.PPc, toA, rename_monomial]
    rw [hb, hb, map_smul, map_smul, RootModel.PP, RootModel.PP, Module.Basis.constr_basis,
      Module.Basis.constr_basis,
      limUnder_arMono_perm (T.M B c) (T.M B (π c)) II hII (hC B c) (hC B (π c)) σ (hπ c) μ]
  have hsum : ∀ (c : T.Comp) (f : RP Ψ N →ₐ[ℝ] RP Ψ N),
      T.PPc II B c (f F) = ∑ μ ∈ F.support, T.PPc II B c (f (monomial μ (F.coeff μ))) := by
    intro c f
    conv_lhs => rw [F.as_sum]

    simp only [RootTower.PPc, toA, map_sum]
  calc T.PPt II B (rename (fun x : Ψ × Fin N => (σ x.1, x.2)) F)
      = ∑ c, ∑ μ ∈ F.support, T.PPc II B (π c) (monomial μ (F.coeff μ)) := by
        unfold RootTower.PPt
        refine Finset.sum_congr rfl fun c _ => ?_
        rw [hsum c (rename (fun x : Ψ × Fin N => (σ x.1, x.2)))]
        exact Finset.sum_congr rfl fun μ _ => hmono c μ _
    _ = ∑ c, ∑ μ ∈ F.support, T.PPc II B c (monomial μ (F.coeff μ)) :=
        Equiv.sum_comp π (fun c => ∑ μ ∈ F.support, T.PPc II B c (monomial μ (F.coeff μ)))
    _ = T.PPt II B F := by
        unfold RootTower.PPt
        refine Finset.sum_congr rfl fun c _ => ?_
        have := hsum c (AlgHom.id ℝ (RP Ψ N))
        simpa using this.symm

end GlobalTheory.CompanionTheory.Ar.Top.PermInv
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerSymmetryLimitCompat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsUniqueHostAutEmbedding =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsUniqueHostAutEmbedding", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.AdelicGroupAlgebraActionInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar

namespace GlobalTheory.CompanionTheory.Ar.HostAutTrans

theorem existsUnique_hostAut_comp : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) [IsGalois ℚ E] (τ τ' : E →+* ℂ), τ (H.rt : E) = H.rt0 → τ' (H.rt : E) = H.rt0 → ∃! g : HostAut H, τ' = τ.comp g.σ.toRingHom := by
  intro E _ _ _ H _ τ τ' hτ hτ'
  obtain ⟨σ, hσ⟩ := NumberField.ComplexEmbedding.exists_comp_symm_eq_of_comp_eq (k := ℚ) τ τ'
    (Subsingleton.elim _ _)
  have key : ∀ x, τ' x = τ (σ.symm x) := fun x => by rw [← hσ]; rfl
  refine ⟨⟨σ.symm.toRingEquiv, τ.injective ((key _).symm.trans (hτ'.trans hτ.symm))⟩, ?_, ?_⟩
  · exact RingHom.ext fun x => key x
  · rintro ⟨g₀, hfix⟩ hg
    have hx : ∀ x, g₀ x = σ.symm x := fun x =>
      τ.injective ((RingHom.congr_fun hg x).symm.trans (key x))
    have h0 : g₀ = σ.symm.toRingEquiv := RingEquiv.ext fun x => hx x
    subst h0
    rfl

end GlobalTheory.CompanionTheory.Ar.HostAutTrans
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsUniqueHostAutEmbedding =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.HodgeTieGalois =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.HodgeTieGalois", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.GeometryStatements.CmpPair\npublic import Development.AutomorphicSpectrum.Statements.GeometryStatements.PadicIntegersHenselianFiniteResidue\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Proportional\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerSymmetryLimitCompat\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.AdelicGroupAlgebraActionInjective\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeLine\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.CmTypeHostAutPermutation\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsUniqueHostAutEmbedding\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial AlgebraicGeometry CategoryTheory NumberField Filter Topology ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cmp
open ReciprocityTheory.ChartRestriction.G.AI.I1 (IsBlockMap pullDeg)
open ReciprocityTheory.ChartRestriction.G.AI.I4 (IsPullHerm imageZ blockFnField)

namespace GlobalTheory.CompanionTheory.Ar.Cmp.HodgeA

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

def relabGroup (H : Host E) : Subgroup (Equiv.Perm (CMType H)) where
  carrier := {s | ∃ g : HostAut H, ∀ τ, (s τ).1 = τ.1.comp g.σ.toRingHom}
  one_mem' := ⟨HostAut.refl H, fun τ => by ext x; rfl⟩
  mul_mem' := by
    rintro s₁ s₂ ⟨g₁, h₁⟩ ⟨g₂, h₂⟩
    refine ⟨⟨g₁.σ.trans g₂.σ, by simp [g₁.fix, g₂.fix]⟩, fun τ => ?_⟩
    rw [Equiv.Perm.mul_apply, h₁, h₂]
    ext x; rfl
  inv_mem' := by
    rintro s ⟨g, h⟩
    refine ⟨g.symm, fun τ => ?_⟩
    have e := h (s⁻¹ τ)
    rw [show s (s⁻¹ τ) = τ from Equiv.apply_symm_apply s τ] at e
    rw [e]
    ext x
    show _ = (s⁻¹ τ).1 (g.σ (g.σ.symm x))
    rw [RingEquiv.apply_symm_apply]

end GlobalTheory.CompanionTheory.Ar.Cmp.HodgeA

open GlobalTheory.CompanionTheory.Ar.Cmp.HodgeA in
theorem GlobalTheory.CompanionTheory.Ar.Cmp.HodgeA.propA_of_hodgeTower : CmpPair → TwistAut → ∀ (II : IntersectionSystem), IsFullIntersectionSystem II → ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (l : Level H) (Xo : Moduli D l) (c : Coeff l) (O : Type) [CommRing O] (β : O →+* c.F) (Y : Model Xo c β) [DecidableEq (CMType H)] (T : Top.RootTower (CMType H) (D.p + D.q)) (S : ℕ → Finset ℕ) (n : ℕ) (tie : ∀ B k, HodgeTie Y (S B) n (T.M B k)), IsGalois ℚ E → Mono (spMap β) → T.Conv II → (∀ B k k', ∀ p ∈ S B, (tie B k').A.R p = (tie B k).A.R p) → (∀ (B : ℕ) (Φ : Xo.X ≅ Xo.X), Φ.hom ≫ Xo.s = Xo.s → ∃ π : Equiv.Perm T.Comp, ∀ k, IsImageCpt Φ (tie B k).A (tie B (π k)).A) → T.PropA II := by
  intro hCmp hTw II hII E _ _ _ H D l Xo c O _ β Y _ T S n tie hGal hMono hConv hR hPerm
  refine _root_.GlobalTheory.CompanionTheory.Ar.Top.PermInv.propA_of_limits (CMType H) (D.p + D.q) T II (relabGroup H) hConv ?_ ?_ hII.1
  · intro τ τ'
    obtain ⟨g, hg, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.HostAutTrans.existsUnique_hostAut_comp E H τ.1 τ'.1 τ.2 τ'.2
    obtain ⟨π, hπ, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Label.automorphism_permutes_labels E H l c g
    exact ⟨π, ⟨g, hπ⟩, Subtype.ext ((hπ τ).trans hg.symm)⟩
  · intro s hs B _
    obtain ⟨g₀, hg₀⟩ := hs
    have hinv : ∀ τ, (s⁻¹ τ).1 = τ.1.comp g₀.symm.σ.toRingHom := by
      intro τ
      have e := hg₀ (s⁻¹ τ)
      rw [show s (s⁻¹ τ) = τ from Equiv.apply_symm_apply s τ] at e
      rw [e]
      ext x
      show _ = (s⁻¹ τ).1 (g₀.σ (g₀.σ.symm x))
      rw [RingEquiv.apply_symm_apply]
    obtain ⟨⟨a⟩, hA⟩ := hTw E H D l Xo g₀.symm
    obtain ⟨h, Φ, hΦ, ⟨m⟩⟩ := hA a
    obtain ⟨πc, himg⟩ := hPerm B Φ hΦ
    refine ⟨πc, fun k w => ?_⟩
    have key := hCmp II hII E H D l Xo c O β Y g₀.symm Φ m.toSABMap s⁻¹ (S B) n (T.M B k) (T.M B (πc k))
      (tie B k) (tie B (πc k)) hMono hΦ hinv (himg k) (fun p hp => hR B k (πc k) p hp)
      (fun j => (s (w j).1, (w j).2))
    have e2 : ∀ x, s⁻¹ (s x) = x := fun x => Equiv.symm_apply_apply s x
    simpa only [e2, Prod.mk.eta] using key
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.HodgeTieGalois =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeTiesDistinctGeneric =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeTiesDistinctGeneric", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.RootOnFund\npublic import Development.AbelianVarietyTheory.Proofs.HeightProofs.OpenImmersionCompStructureEqGeneric\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.GenPtSpecializes\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeCptInteriorGeneric\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial AlgebraicGeometry CategoryTheory NumberField Filter Topology ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cmp
open ReciprocityTheory.ChartRestriction.G.AI.I1 (IsBlockMap pullDeg)
open ReciprocityTheory.ChartRestriction.G.AI.I4 (IsPullHerm imageZ blockFnField)

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Cmp.PermCpt

open Limits

theorem surjectiveOnStalks_spMap {O F : Type} [CommRing O] [Field F] [CharZero F] [FiniteDimensional ℚ F]
    (β : O →+* F) (h : Mono (spMap β)) : SurjectiveOnStalks (spMap β) := by
  rw [SurjectiveOnStalks.Spec_iff]
  have g := (GlobalTheory.OneArcCompare.mono_spMap_iff β).1 h
  refine RingHom.surjectiveOnStalks_iff_forall_maximal'.2 fun I hI s => ?_
  have hb : I = ⊥ := (Ideal.eq_bot_or_top I).resolve_right hI.ne_top
  subst hb
  obtain ⟨p, q, hq, e⟩ := g s
  refine ⟨p, q, 1, by simp, by simpa using hq, ?_⟩
  simpa [mul_comm] using e

theorem isEmbedding_fst {X : Scheme.{0}} {O F : Type} [CommRing O] [Field F] (s : X ⟶ Sp O) (β : O →+* F)
    [SurjectiveOnStalks (spMap β)] : IsEmbedding (pullback.fst s (spMap β)) := by
  have hL := SurjectiveOnStalks.isEmbedding_pullback s (spMap β)
  let t₀ : Sp F := IsLocalRing.closedPoint F
  have e : (fun x => (pullback.fst s (spMap β) x, pullback.snd s (spMap β) x)) =
      (fun a : X => (a, t₀)) ∘ (pullback.fst s (spMap β)) := by
    funext x
    exact Prod.ext rfl (Subsingleton.elim (α := PrimeSpectrum F) _ _)
  rw [e] at hL
  exact (IsEmbedding.of_comp_iff (isEmbedding_prodMkLeft t₀)).1 hL

theorem exists_maximal_generisation {P : Type} [TopologicalSpace P] [T0Space P] [QuasiSober P] (x : P) :
    ∃ m, m ⤳ x ∧ ∀ m', m' ⤳ m → m' = m := by
  have hCi : IsIrreducible (irreducibleComponent x) := isIrreducible_irreducibleComponent
  have hCc : IsClosed (irreducibleComponent x) := isClosed_irreducibleComponent
  have hgen := hCi.isGenericPoint_genericPoint_closure
  rw [hCc.closure_eq] at hgen
  refine ⟨hCi.genericPoint, hgen.specializes mem_irreducibleComponent, fun m' hm' => ?_⟩
  have hmax := irreducibleComponent_mem_irreducibleComponents x
  have hsub : irreducibleComponent x ⊆ closure {m'} := by
    rw [← hgen.def]
    exact closure_minimal (by simpa using specializes_iff_mem_closure.1 hm') isClosed_closure
  have hle := hmax.2 (isIrreducible_singleton.closure) hsub
  have hm'C : m' ∈ irreducibleComponent x := hle (subset_closure rfl)
  exact (hm'.antisymm (hgen.specializes hm'C)).eq

theorem exists_equiv_of_pts {X : Scheme.{0}} {K₁ K₂ : Type} [Field K₁] [Field K₂] (x₁ : Sp K₁ ⟶ X) (x₂ : Sp K₂ ⟶ X)
    (h : genPt x₁ = genPt x₂) (b₁ : Function.Bijective (Scheme.stalkClosedPointTo x₁).hom)
    (b₂ : Function.Bijective (Scheme.stalkClosedPointTo x₂).hom) :
    ∃ ψ : K₂ ≃+* K₁, spMap ψ.toRingHom ≫ x₂ = x₁ := by
  have key : ∀ p, genPt x₁ = p → ∃ a : X.presheaf.stalk p ⟶ CommRingCat.of K₁,
      Function.Bijective a.hom ∧ Spec.map a ≫ X.fromSpecStalk p = x₁ := by
    rintro _ rfl
    exact ⟨_, b₁, Scheme.Spec_stalkClosedPointTo_fromSpecStalk x₁⟩
  obtain ⟨a, ha, ea⟩ := key _ h
  let e₁ := RingEquiv.ofBijective a.hom ha
  let e₂ := RingEquiv.ofBijective (Scheme.stalkClosedPointTo x₂).hom b₂
  refine ⟨e₂.symm.trans e₁, ?_⟩
  have e : Scheme.stalkClosedPointTo x₂ ≫ CommRingCat.ofHom (e₂.symm.trans e₁).toRingHom = a := by
    ext t
    show e₁ (e₂.symm (e₂ t)) = a.hom t
    rw [RingEquiv.symm_apply_apply]
    rfl
  calc spMap (e₂.symm.trans e₁).toRingHom ≫ x₂
      = spMap (e₂.symm.trans e₁).toRingHom ≫ Spec.map (Scheme.stalkClosedPointTo x₂) ≫
          X.fromSpecStalk (genPt x₂) := by
        rw [show Spec.map (Scheme.stalkClosedPointTo x₂) ≫ X.fromSpecStalk (genPt x₂) = x₂ from
          Scheme.Spec_stalkClosedPointTo_fromSpecStalk x₂]
    _ = Spec.map a ≫ X.fromSpecStalk (genPt x₂) := by
        refine Eq.trans ?_ (congrArg (· ≫ X.fromSpecStalk (genPt x₂)) (congrArg Spec.map e))
        exact (Category.assoc _ _ _).symm.trans (congrArg (· ≫ X.fromSpecStalk (genPt x₂)) (Spec.map_comp _ _).symm)
    _ = x₁ := ea

theorem bijective_of_comp {W X : Scheme.{0}} (j : W ⟶ X) [SurjectiveOnStalks j] {K : Type} [Field K] (x : Sp K ⟶ W)
    (h : Function.Bijective (Scheme.stalkClosedPointTo (x ≫ j)).hom) :
    Function.Bijective (Scheme.stalkClosedPointTo x).hom := by
  have e : Scheme.stalkClosedPointTo (x ≫ j) = j.stalkMap _ ≫ Scheme.stalkClosedPointTo x :=
    Scheme.stalkClosedPointTo_comp x j
  rw [e] at h
  refine ⟨fun a b hab => ?_, fun t => ?_⟩
  · obtain ⟨a', rfl⟩ := j.stalkMap_surjective _ a
    obtain ⟨b', rfl⟩ := j.stalkMap_surjective _ b
    exact congrArg _ (h.1 hab)
  · obtain ⟨a, rfl⟩ := h.2 t
    exact ⟨_, rfl⟩

theorem bijective_comp_iso {W W' : Scheme.{0}} (r : W ⟶ W') [IsIso r] {K : Type} [Field K] (x : Sp K ⟶ W)
    (h : Function.Bijective (Scheme.stalkClosedPointTo x).hom) :
    Function.Bijective (Scheme.stalkClosedPointTo (x ≫ r)).hom := by
  have e : Scheme.stalkClosedPointTo (x ≫ r) = r.stalkMap _ ≫ Scheme.stalkClosedPointTo x :=
    Scheme.stalkClosedPointTo_comp x r
  rw [e]
  exact h.comp (ConcreteCategory.bijective_of_isIso (r.stalkMap _))

theorem exists_perm {W X : Scheme.{0}} (j : W ⟶ X) (hj : IsEmbedding j) {C : Type} [Finite C] (pt : C → W)
    (hinj : Function.Injective fun k => j (pt k)) (hmax : ∀ k (q : X), q ⤳ j (pt k) → q = j (pt k))
    (hall : ∀ q : X, (∀ q', q' ⤳ q → q' = q) → ∃ k, j (pt k) = q) (r : W ≅ W) :
    ∃ π : Equiv.Perm C, ∀ k, pt (π k) = r.hom (pt k) := by
  have hi : ∀ w, r.inv (r.hom w) = w := fun w => by
    rw [← Scheme.Hom.comp_apply, r.hom_inv_id]
    rfl
  have hi' : ∀ w, r.hom (r.inv w) = w := fun w => by
    rw [← Scheme.Hom.comp_apply, r.inv_hom_id]
    rfl
  have hW : ∀ k (u : W), u ⤳ pt k → u = pt k := fun k u hu =>
    hj.injective (hmax k _ (hu.map j.continuous))
  have hex : ∀ k, ∃ k', pt k' = r.hom (pt k) := by
    intro k
    obtain ⟨m, hm, hm'⟩ := exists_maximal_generisation (j (r.hom (pt k)))
    obtain ⟨k', rfl⟩ := hall m hm'
    refine ⟨k', ?_⟩
    have h1 : pt k' ⤳ r.hom (pt k) := hj.isInducing.specializes_iff.1 hm
    have h2 : r.inv (pt k') ⤳ pt k := by
      have := h1.map r.inv.continuous
      rwa [hi] at this
    have h3 := hW k _ h2
    rw [← h3, hi']
  choose π hπ using hex
  have hπi : Function.Injective π := by
    intro a b hab
    have h1 : r.hom (pt a) = r.hom (pt b) := by rw [← hπ a, ← hπ b, hab]
    have h2 : pt a = pt b := by
      have := congrArg r.inv h1
      rwa [hi, hi] at this
    exact hinj (congrArg j h2)
  exact ⟨Equiv.ofBijective π (Finite.injective_iff_bijective.1 hπi), hπ⟩

theorem exists_lift {X : Scheme.{0}} {O F : Type} [CommRing O] [Field F] [CharZero F] [FiniteDimensional ℚ F]
    (s : X ⟶ Sp O) (hs : IsProjOver s) (β : O →+* F) (hβ : Mono (spMap β))
    {W : Scheme.{0}} (jQ : W ⟶ pullback s (spMap β)) [IsOpenImmersion jQ] (hd : Dense (Set.range jQ))
    {Ω₀ Ω : Type} [Field Ω₀] [Field Ω] (ξ₀ : Sp Ω₀ ⟶ X) (h₀ : IsCptGen ξ₀) (fn : Ω₀ →+* Ω) (cst : F →+* Ω)
    (hover : spMap fn ≫ ξ₀ ≫ s = spMap (cst.comp β)) :
    ∃ x : Sp Ω₀ ⟶ W, x ≫ jQ ≫ pullback.fst _ _ = ξ₀ ∧ spMap fn ≫ x ≫ jQ ≫ pullback.snd _ _ = spMap cst ∧
      Function.Bijective (Scheme.stalkClosedPointTo x).hom := by
  have hsurj := surjectiveOnStalks_spMap β hβ
  have hgen := (GlobalTheory.OneArcCompare.mono_spMap_iff β).1 hβ
  let g : O →+* Ω₀ := (Spec.preimage (ξ₀ ≫ s)).hom
  have hs' : ξ₀ ≫ s = spMap g := by
    show _ = Spec.map (CommRingCat.ofHom (Spec.preimage (ξ₀ ≫ s)).hom)
    rw [CommRingCat.ofHom_hom, Spec.map_preimage]
  have hcomp : fn.comp g = cst.comp β := by
    have h1 : spMap (fn.comp g) = spMap (cst.comp β) := by
      rw [← hover, hs']
      simp only [spMap, CommRingCat.ofHom_comp, Spec.map_comp]
    exact congrArg CommRingCat.Hom.hom (Spec.map_injective h1)
  have hc : ∀ t, fn (g t) = cst (β t) := fun t => RingHom.congr_fun hcomp t
  have hr : ∀ u, cst u ∈ fn.range := by
    intro u
    obtain ⟨p, q, hq, e⟩ := hgen u
    have hq' : cst (β q) ≠ 0 := fun h0 => hq (cst.injective (by rw [h0, map_zero]))
    refine ⟨g p / g q, ?_⟩
    rw [map_div₀, hc, hc, ← e, map_mul, mul_div_cancel_right₀ _ hq']
  let eq : Ω₀ ≃+* fn.range := RingEquiv.ofBijective fn.rangeRestrict
    ⟨fun a b hab => fn.injective (congrArg Subtype.val hab), fn.rangeRestrict_surjective⟩
  let γ : F →+* Ω₀ := eq.symm.toRingHom.comp (cst.codRestrict fn.range hr)
  have hγ : ∀ u, fn (γ u) = cst u := fun u =>
    congrArg Subtype.val (eq.apply_symm_apply (cst.codRestrict fn.range hr u))
  have hγg : γ.comp β = g := RingHom.ext fun t => fn.injective (by
    show fn (γ (β t)) = fn (g t)
    rw [hγ, hc])
  have hγc : fn.comp γ = cst := RingHom.ext hγ
  let w : Sp Ω₀ ⟶ pullback s (spMap β) := pullback.lift ξ₀ (spMap γ) (by
    rw [hs', ← hγg]
    simp only [spMap, CommRingCat.ofHom_comp, Spec.map_comp])
  have hwf : w ≫ pullback.fst _ _ = ξ₀ := pullback.lift_fst _ _ _
  have hws : w ≫ pullback.snd _ _ = spMap γ := pullback.lift_snd _ _ _
  have hemb := isEmbedding_fst s β
  have hnoeth := HodgeBasic.noetherianSpace_pullback hs β
  have hran : Set.range w ⊆ Set.range jQ := by
    rintro _ ⟨t, rfl⟩
    have hfw : pullback.fst s (spMap β) (w t) = genPt ξ₀ := by
      rw [← Scheme.Hom.comp_apply, hwf]
      exact congrArg ξ₀ (Subsingleton.elim (α := PrimeSpectrum Ω₀) _ _)
    refine HodgeBasic.mem_of_dense_of_maximal jQ.isOpenEmbedding.isOpen_range hd fun y' h' => ?_
    have h2 : pullback.fst s (spMap β) y' ⤳ genPt ξ₀ := hfw ▸ h'.map (pullback.fst s (spMap β)).continuous
    exact hemb.injective ((GlobalTheory.CompanionTheory.Ar.CptInh.nogen ξ₀ h₀ _ h2).trans hfw.symm)
  have hfac : IsOpenImmersion.lift jQ w hran ≫ jQ = w := IsOpenImmersion.lift_fac _ _ _
  have e₁ : IsOpenImmersion.lift jQ w hran ≫ jQ ≫ pullback.fst _ _ = ξ₀ := by
    rw [reassoc_of% hfac, hwf]
  refine ⟨IsOpenImmersion.lift jQ w hran, e₁, ?_, ?_⟩
  · rw [reassoc_of% hfac, hws, ← hγc]
    simp only [spMap, CommRingCat.ofHom_comp, Spec.map_comp]
  · have hfs : SurjectiveOnStalks (pullback.fst s (spMap β)) :=
      MorphismProperty.of_isPullback (P := @SurjectiveOnStalks) (IsPullback.of_hasPullback s (spMap β)).flip hsurj
    refine bijective_of_comp (jQ ≫ pullback.fst _ _) _ ?_
    rw [e₁]
    exact h₀.bij

theorem exists_perm_isImageCpt : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (l : Level H) (Xo : Moduli D l) (c : Coeff l) (O : Type) [CommRing O] (β : O →+* c.F) (Y : Model Xo c β) (S : Finset ℕ) (n : ℕ) (C : Type) [Fintype C] (M : C → Top.RootModel (CMType H) (D.p + D.q)) (tie : ∀ k, HodgeTie Y S n (M k)), Mono (spMap β) → Function.Injective (fun k => genPt (tie k).A.ξ₀) → (∀ q : Y.X, (∀ q' : Y.X, q' ⤳ q → q' = q) → ∃ k, genPt (tie k).A.ξ₀ = q) → ∀ Φ : Xo.X ≅ Xo.X, Φ.hom ≫ Xo.s = Xo.s → ∃ π : Equiv.Perm C, ∀ k, IsImageCpt Φ (tie k).A (tie (π k)).A := by
  intro E _ _ _ H D l Xo c O _ β Y S n C _ M tie hβ hinj hall Φ hΦ
  have hfin := c.fin
  have hopen := Y.jQ_open
  have hsurj := surjectiveOnStalks_spMap β hβ
  have hfst := isEmbedding_fst Y.s β
  have hlift : ∀ k, ∃ x : Sp (tie k).A.Ω₀ ⟶ Xo.XF c, x ≫ Y.j = (tie k).A.ξ₀ ∧
      spMap (tie k).A.fn ≫ x ≫ pullback.snd _ _ = spMap (tie k).A.cst ∧
      Function.Bijective (Scheme.stalkClosedPointTo x).hom := fun k => by
    have hover : spMap (tie k).A.fn ≫ (tie k).A.ξ₀ ≫ Y.s = spMap ((tie k).A.cst.comp β) := by
      have h1 : (tie k).A.ξ ≫ (tie k).A.f = spMap (tie k).A.fn ≫ (tie k).A.ξ₀ := (tie k).A.fn_over
      rw [← Category.assoc, ← h1, Category.assoc]
      exact (tie k).A.cst_over
    obtain ⟨x, h1, h2, h3⟩ := exists_lift Y.s Y.proj β hβ Y.jQ Y.jQ_dense (tie k).A.ξ₀ (tie k).A.gen₀
      (tie k).A.fn (tie k).A.cst hover
    rw [Y.jQ_over] at h2
    exact ⟨x, h1, h2, h3⟩
  choose x hx hcs hb using hlift
  obtain ⟨r, hr1, hr2⟩ : ∃ r : Xo.XF c ≅ Xo.XF c, r.hom ≫ pullback.fst _ _ = pullback.fst _ _ ≫ Φ.hom ∧
      r.hom ≫ pullback.snd _ _ = pullback.snd _ _ := by
    have hΦ' : Φ.inv ≫ Xo.s = Xo.s := by rw [Iso.inv_comp_eq, hΦ]
    let a : Xo.XF c ⟶ Xo.XF c := pullback.lift (pullback.fst _ _ ≫ Φ.hom) (pullback.snd _ _) (by
      rw [Category.assoc, hΦ, pullback.condition])
    let b : Xo.XF c ⟶ Xo.XF c := pullback.lift (pullback.fst _ _ ≫ Φ.inv) (pullback.snd _ _) (by
      rw [Category.assoc, hΦ', pullback.condition])
    have a1 : a ≫ pullback.fst _ _ = pullback.fst _ _ ≫ Φ.hom := pullback.lift_fst _ _ _
    have a2 : a ≫ pullback.snd _ _ = pullback.snd _ _ := pullback.lift_snd _ _ _
    have b1 : b ≫ pullback.fst _ _ = pullback.fst _ _ ≫ Φ.inv := pullback.lift_fst _ _ _
    have b2 : b ≫ pullback.snd _ _ = pullback.snd _ _ := pullback.lift_snd _ _ _
    refine ⟨⟨a, b, ?_, ?_⟩, a1, a2⟩
    · refine pullback.hom_ext ?_ ?_
      · rw [Category.assoc, b1, reassoc_of% a1, Φ.hom_inv_id, Category.comp_id, Category.id_comp]
      · rw [Category.assoc, b2, a2, Category.id_comp]
    · refine pullback.hom_ext ?_ ?_
      · rw [Category.assoc, a1, reassoc_of% b1, Φ.inv_hom_id, Category.comp_id, Category.id_comp]
      · rw [Category.assoc, a2, b2, Category.id_comp]
  have hjemb : IsEmbedding Y.j := by
    have h := hfst.comp Y.jQ.isOpenEmbedding.isEmbedding
    have e : (Y.j : Xo.XF c → Y.X) = pullback.fst Y.s (spMap β) ∘ Y.jQ := by
      funext t
      exact Scheme.Hom.comp_apply _ _ _
    rw [e]
    exact h
  have hpt : ∀ k, Y.j (genPt (x k)) = genPt (tie k).A.ξ₀ := fun k => by
    show Y.j ((x k) _) = (tie k).A.ξ₀ _
    rw [← hx k]
    exact (Scheme.Hom.comp_apply _ _ _).symm
  obtain ⟨π, hπ⟩ := exists_perm Y.j hjemb (fun k => genPt (x k))
    (fun a b hab => hinj (by simpa only [hpt] using hab))
    (fun k q hq => by
      rw [hpt] at hq ⊢
      exact GlobalTheory.CompanionTheory.Ar.CptInh.nogen _ (tie k).A.gen₀ _ hq)
    (fun q hq => by
      obtain ⟨k, hk⟩ := hall q hq
      exact ⟨k, (hpt k).trans hk⟩) r
  refine ⟨π, fun k => ?_⟩
  have hsame : genPt (x k ≫ r.hom) = genPt (x (π k)) := by
    refine Eq.trans ?_ (hπ k).symm
    exact Scheme.Hom.comp_apply _ _ _
  obtain ⟨ψ, hψ⟩ := exists_equiv_of_pts (x k ≫ r.hom) (x (π k)) hsame (bijective_comp_iso r.hom (x k) (hb k)) (hb (π k))
  unfold IsImageCpt
  refine ⟨x k, x (π k), ψ, (hx k).symm, (hx (π k)).symm, ?_, ?_, hcs k, hcs (π k)⟩
  · rw [reassoc_of% hψ, hr1]
  · rw [reassoc_of% hψ, hr2]

end GlobalTheory.CompanionTheory.Ar.Cmp.PermCpt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeTiesDistinctGeneric =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.PrimeDivisorsOfOmegaBundle =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.PrimeDivisorsOfOmegaBundle", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.SplitComps\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.RootOnFund\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.RootFundamentalWeightDuality\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial AlgebraicGeometry CategoryTheory NumberField Filter Topology ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cmp
open ReciprocityTheory.ChartRestriction.G.AI.I1 (IsBlockMap pullDeg)
open ReciprocityTheory.ChartRestriction.G.AI.I4 (IsPullHerm imageZ blockFnField)

namespace GlobalTheory.CompanionTheory.Ar.TieOfOrigin

theorem sum_fundOnRoot {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ} {G : Type} [AddCommGroup G]
    (f : Ψ × Fin N → G) (a : Ψ × Fin N) :
    ∑ r, fundOnRoot a r • f r = -∑ k ∈ Finset.Iic a.2, f (a.1, k) := by
  rw [Fintype.sum_prod_type, Finset.sum_eq_single a.1]
  · rw [← Finset.sum_neg_distrib, ← Finset.sum_subset (Finset.subset_univ (Finset.Iic a.2))]
    · refine Finset.sum_congr rfl fun k hk => ?_
      simp [fundOnRoot, Finset.mem_Iic.mp hk]
    · intro k _ hk
      have hk' : ¬ k ≤ a.2 := fun h => hk (Finset.mem_Iic.mpr h)
      simp [fundOnRoot, hk']
  · intro τ _ hτ
    simp [fundOnRoot, hτ]
  · simp

theorem log_combLine {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] {J : Type} [Fintype J]
    (ℓ : J → HermLine ι) (n : J → ℤ) (z : (Σ k, ι k) → ℂ) (hz : ∀ k, ∃ i, z ⟨k, i⟩ ≠ 0) :
    Real.log ((Top.combLine ℓ n).h z) = ∑ j, n j • Real.log ((ℓ j).h z) := by
  show Real.log (∏ j, (ℓ j).h z ^ n j) = _
  rw [Real.log_prod fun j _ => (zpow_pos ((ℓ j).pos z hz) _).ne']
  simp [Real.log_zpow]

theorem sum_rootOnFund {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ} (f g : Ψ × Fin N → ℝ)
    (h : ∀ a, g a = -∑ k ∈ Finset.Iic a.2, f (a.1, k)) (r : Ψ × Fin N) :
    ∑ a, rootOnFund r a • g a = f r := by
  have h1 : ∀ a, g a = ∑ r', fundOnRoot a r' • f r' := fun a => by rw [h, sum_fundOnRoot]
  simp only [h1, Finset.smul_sum, smul_smul]
  rw [Finset.sum_comm]
  simp only [← Finset.sum_smul, (rootOnFund_mul_fundOnRoot_inverse Ψ N r _).1]
  simp

end GlobalTheory.CompanionTheory.Ar.TieOfOrigin

open GlobalTheory.CompanionTheory.Ar.TieOfOrigin in
theorem GlobalTheory.CompanionTheory.Ar.hodgeTie_of_rootOrigin : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (l : Level H) (Xo : Moduli D l) (c : Coeff l) (O : Type) [CommRing O] (β : O →+* c.F) (Y : Model Xo c β) (S : Finset ℕ) (RM : Top.RootModel (CMType H) (D.p + D.q)) (Sys : PB.AnSys (Top.dimFl (CMType H) (D.p + D.q)) (Option (RootIx D))) (Fx : FixedData Y Sys) (Or : RootOrigin Y S RM Fx), Or.𝔐.OmVB → (∀ p : ℕ, p.Prime → (p : ℤ) ∣ NumberField.discr E → p ∈ S) → AlgOver (Or.Re.comap some) → ∃ T : HodgeTie Y S (Module.finrank ℚ c.F) RM, T.A = Or.𝔐 := by
  intro E _ _ _ H D l Xo c O _ β Y S RM Sys Fx Or hvb hdiscr halg
  refine ⟨{ A := Or.𝔐, Fl := Or.Fl, e := Or.e, roots := Or.lines, sing := Or.sing, sing_deg := Or.sing_deg
            hodge := Or.hodge, Sy := Sys.comap some, Re := Or.Re.comap some, alg := halg
            ref_deg := ?_, sing_eq := ?_, line_eq := ?_, δ_eq := Or.δ_eq, discr := hdiscr
            ht_vb := fun p hp s => (hvb p hp).2 s }, rfl⟩
  · rintro ⟨τ, i⟩
    refine (Or.fund_deg τ i).trans ?_
    refine Eq.trans ?_ (@sum_fundOnRoot _ _ (_) _ _ _ (fun r => (Or.sing r).a) (τ, i)).symm
    simp only [Or.sing_deg]
  · rintro ⟨τ, i⟩ x hx
    have hz := (Or.Re.R.mem x x (Or.Re.R.mem_U x)).1
    refine (log_combLine _ _ _ hz).trans ?_
    refine (@sum_fundOnRoot _ _ (_) _ _ _ (fun r => Real.log ((Or.sing r).h (Or.Re.R.lift x x))) (τ, i)).trans ?_
    exact (Or.fund_sing τ i x hx).symm
  · have h0 : 0 < Sys.t₀ := (Sys.reg none).1
    filter_upwards [Ioc_mem_nhdsGT h0] with t ht r z hz
    refine Real.log_injOn_pos ((RM.x t r).pos z hz.1) (HermLine.pos _ z hz.1) ?_
    refine Eq.trans ?_ (log_combLine _ _ _ hz.1).symm
    exact (@sum_rootOnFund _ _ (_) _ (fun r => Real.log ((RM.x t r).h z))
      (fun a => Real.log ((Or.Re.line (some a) t).h z))
      (fun a => Or.fund_reg a.1 a.2 t ht.1 ht.2 z hz) r).symm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.PrimeDivisorsOfOmegaBundle =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerOriginVectorBundle =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerOriginVectorBundle", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.GeometryStatements.CmpPair\npublic import Development.AutomorphicSpectrum.Statements.GeometryStatements.PadicIntegersHenselianFiniteResidue\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.SplitComps\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Proportional\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.HodgeTieGalois\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeCptInteriorGeneric\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.RootOnFund\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeTiesDistinctGeneric\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.PrimeDivisorsOfOmegaBundle\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsSncModel\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.TowerOrigin\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.RootModelOriginCompatibility\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial AlgebraicGeometry CategoryTheory NumberField Filter Topology ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cmp
open ReciprocityTheory.ChartRestriction.G.AI.I1 (IsBlockMap pullDeg)
open ReciprocityTheory.ChartRestriction.G.AI.I4 (IsPullHerm imageZ blockFnField)

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.TowerPropA

theorem mono_spMap_ringOfIntegers (F : Type) [Field F] [NumberField F] :
    Mono (spMap (algebraMap (𝓞 F) F)) := by
  have := IsPreimmersion.of_isLocalization (S := F) (nonZeroDivisors (𝓞 F))
  exact inferInstanceAs (Mono (Spec.map (CommRingCat.ofHom (algebraMap (𝓞 F) F))))

theorem genPt_eq_of_factor {X : Scheme.{0}} {Ω Ω₁ Ω₂ : Type} [Field Ω] [Field Ω₁] [Field Ω₂]
    {a : Spec (CommRingCat.of Ω) ⟶ X} {ξ₁ : Spec (CommRingCat.of Ω₁) ⟶ X} {ξ₂ : Spec (CommRingCat.of Ω₂) ⟶ X}
    {g₁ : Ω₁ →+* Ω} {g₂ : Ω₂ →+* Ω}
    (h₁ : a = Spec.map (CommRingCat.ofHom g₁) ≫ ξ₁) (h₂ : a = Spec.map (CommRingCat.ofHom g₂) ≫ ξ₂) :
    genPt ξ₁ = genPt ξ₂ := by
  have e₁ : ∀ w : Spec (CommRingCat.of Ω), genPt ξ₁ = a w := by
    intro w
    rw [h₁, Scheme.Hom.comp_apply]
    exact congrArg ξ₁ (Subsingleton.elim (α := PrimeSpectrum Ω₁) _ _)
  have e₂ : ∀ w : Spec (CommRingCat.of Ω), genPt ξ₂ = a w := by
    intro w
    rw [h₂, Scheme.Hom.comp_apply]
    exact congrArg ξ₂ (Subsingleton.elim (α := PrimeSpectrum Ω₂) _ _)
  exact (e₁ (IsLocalRing.closedPoint Ω)).trans (e₂ (IsLocalRing.closedPoint Ω)).symm

theorem propA_of_origin : CmpPair → TwistAut → ∀ (II : IntersectionSystem), IsFullIntersectionSystem II → ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (l : Level H) (Xo : Moduli D l) (c : Coeff l) (Y : Model Xo c (algebraMap (𝓞 c.F) c.F)) [DecidableEq (CMType H)] (T : Top.RootTower (CMType H) (D.p + D.q)) (o : TowerOrigin Y T), IsGalois ℚ E → (∀ B a, (o.Or B a).𝔐.OmVB) → (∀ a, (∀ x : (o.Sys a).X, ∃ (U : Set (o.Sys a).X) (lam : (o.Sys a).X → Fin ((o.Fx a).m + 1) → ℂ), IsOpen U ∧ x ∈ U ∧ (∀ i, (o.Sys a).A.HoloOn U fun y => lam y i) ∧ (∀ y ∈ U, ∃ a₀ : ℂ, a₀ ≠ 0 ∧ lam y = a₀ • (o.Fx a).pt y) ∧ ∀ p, lam x p ≠ 0 → ∀ j, x ∈ ((o.Sys a).A.chart j).source → (fderiv ℂ (fun z i => lam (((o.Sys a).A.chart j).symm z) i / lam (((o.Sys a).A.chart j).symm z) p) ((o.Sys a).A.chart j x)).ker = ⊥)) → (∀ B a a', ∀ p ∈ o.S B, (o.Or B a').𝔐.R p = (o.Or B a).𝔐.R p) → T.Conv II → T.PropA II := by
  intro hpair htw II hII E _ _ _ H D l Xo c Y _ T o hgal hOm hhol hR hconv
  have : FiniteDimensional ℚ c.F := c.fin
  have : NumberField c.F := ⟨⟩
  have hmono : Mono (spMap (algebraMap (𝓞 c.F) c.F)) := mono_spMap_ringOfIntegers c.F
  have hinj : Function.Injective (algebraMap (𝓞 c.F) c.F) := RingOfIntegers.coe_injective
  have hdisc : ∀ B, ∀ p : ℕ, p.Prime → (p : ℤ) ∣ NumberField.discr E → p ∈ o.S B := by
    intro B p hp hd
    rw [o.S_iff]
    refine ⟨hp, Or.inr ?_⟩
    rw [o.bad_iff]
    exact ⟨hp, Dvd.dvd.mul_right (Dvd.dvd.mul_left hd 2) _⟩
  have hex : ∀ B a, ∃ t : HodgeTie Y (o.S B) (Module.finrank ℚ c.F) (T.M B a), t.A = (o.Or B a).𝔐 := by
    intro B a
    obtain ⟨-, ⟨x, hx⟩, -⟩ := HodgeCpt.basic _ _ _ _ _ _ _ _ Y _ _ _ _ _ (o.Or B a).𝔐 hinj
    exact _root_.GlobalTheory.CompanionTheory.Ar.hodgeTie_of_rootOrigin E H D l Xo c (𝓞 c.F) _ Y (o.S B) (T.M B a) (o.Sys a) (o.Fx a) (o.Or B a) (hOm B a)
      (hdisc B) (_root_.GlobalTheory.CompanionTheory.Ar.RootAlg.algOver_of_immersion E H D l Xo c (𝓞 c.F) _ Y (o.S B) (T.M B a) (o.Sys a) (o.Fx a) (o.Or B a) x hx
        hmono (hhol a))
  choose tie htie using hex
  have hgen : ∀ B a, genPt (tie B a).A.ξ₀ = genPt (o.Fx a).ξf := by
    intro B a
    rw [htie B a]
    exact genPt_eq_of_factor (o.Or B a).𝔐.fn_over (o.Or B a).g_over
  refine _root_.GlobalTheory.CompanionTheory.Ar.Cmp.HodgeA.propA_of_hodgeTower hpair htw II hII E H D l Xo c (𝓞 c.F) (algebraMap (𝓞 c.F) c.F) Y T o.S
    (Module.finrank ℚ c.F) tie hgal hmono hconv ?_ ?_
  · intro B k k' p hp
    rw [htie B k', htie B k]
    exact hR B k k' p hp
  · intro B Φ hΦ
    refine _root_.GlobalTheory.CompanionTheory.Ar.Cmp.PermCpt.exists_perm_isImageCpt E H D l Xo c (𝓞 c.F) _ Y (o.S B) _ T.Comp (T.M B) (tie B) hmono ?_ ?_ Φ hΦ
    · intro k k' h
      apply o.comp_inj
      simpa only [hgen] using h
    · intro q hq
      obtain ⟨a, ha⟩ := o.comp_onto q hq
      exact ⟨a, (hgen B a).trans ha⟩

end GlobalTheory.CompanionTheory.Ar.TowerPropA
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerOriginVectorBundle =====
