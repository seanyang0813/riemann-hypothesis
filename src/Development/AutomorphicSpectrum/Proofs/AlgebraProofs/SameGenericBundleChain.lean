module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.PluckerCoord
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim
public import GroundTheory.HeightsAndTheta.Heights.IntegralModels.ChartGlueSat
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor
public import Mathlib.Algebra.BigOperators.Field
public import Mathlib.LinearAlgebra.Basis.Basic
public import Mathlib.LinearAlgebra.Matrix.Adjugate
public import Mathlib.RingTheory.Ideal.Basic
public import Mathlib.RingTheory.Ideal.Operations
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XBundleOfFamily
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleBaseExtension
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.X_join_model
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PTwistedDualGensExist
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemSpanOfTwistedDualGens, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XMinorGraded, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPluckerFrame, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBundleChain

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemSpanOfTwistedDualGens =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemSpanOfTwistedDualGens", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.PluckerCoord\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import GroundTheory.HeightsAndTheta.Heights.IntegralModels.ChartGlueSat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace GlobalTheory.CompanionTheory.Ar.Num.PluckerBirat

theorem exists_minor_ne_zero {Ω : Type*} [Field Ω] {M i : ℕ} (A : Fin M → Fin i → Ω)
    (hA : ∀ t : Fin i → Ω, t ∈ Submodule.span Ω (Set.range A)) :
    ∃ I : Fin i → Fin M, Matrix.det (Matrix.of fun a b : Fin i => A (I a) b) ≠ 0 := by
  classical
  obtain ⟨b, hb, hspan, hli⟩ := exists_linearIndependent Ω (Set.range A)
  have htop : (⊤ : Submodule Ω (Fin i → Ω)) ≤ Submodule.span Ω (Set.range ((↑) : b → Fin i → Ω)) := by
    rw [Subtype.range_coe, hspan]
    exact fun t _ => hA t
  let bas := Module.Basis.mk hli htop
  have e : b ≃ Fin i := bas.indexEquiv (Pi.basisFun Ω (Fin i))
  have hI : ∀ a : Fin i, ∃ l, A l = (e.symm a : Fin i → Ω) := fun a => hb (e.symm a).2
  choose I hI using hI
  refine ⟨I, ?_⟩
  have hrow : LinearIndependent Ω (Matrix.of fun a b : Fin i => A (I a) b).row := by
    have : (Matrix.of fun a b : Fin i => A (I a) b).row = ((↑) : b → Fin i → Ω) ∘ e.symm := by
      funext a
      exact hI a
    rw [this]
    exact hli.comp _ e.symm.injective
  have hu := Matrix.linearIndependent_rows_iff_isUnit.1 hrow
  exact ((Matrix.isUnit_iff_isUnit_det _).1 hu).ne_zero

theorem chartRing_le_fnField (O : Type*) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    {Ω : Type*} [Field Ω] [Algebra O Ω] {K : Type} [Fintype K] {ι : K → Type}
    (x : (Σ k, ι k) → Ω) (s : ∀ k, ι k) {r : Ω} (hr : r ∈ chartRing O (mseg x) s) :
    r ∈ fnField O x := by
  rw [chartRing] at hr
  induction hr using Algebra.adjoin_induction with
  | mem y hy =>
    obtain ⟨t, rfl⟩ := hy
    show (∏ k, x ⟨k, t k⟩) / (∏ k, x ⟨k, s k⟩) ∈ fnField O x
    rw [← Finset.prod_div_distrib]
    exact prod_mem fun k _ => Subfield.subset_closure (Or.inr ⟨⟨k, (t k, s k)⟩, rfl⟩)
  | algebraMap c => exact Subfield.subset_closure (Or.inl ⟨c, rfl⟩)
  | add a b _ _ ha hb => exact add_mem ha hb
  | mul a b _ _ ha hb => exact mul_mem ha hb

variable {O : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
  {Ω : Type*} [Field Ω] [Algebra O Ω] {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]
  {x : (Σ k, ι k) → Ω} {N : ℕ} {V : Type*} [AddCommGroup V] [Module Ω V]

theorem mem_span_of_twistedDualGens (E : ChartBundle O (mseg x) N V) {M : ℕ} {a : K → ℤ}
    {φ : Fin M → Module.Dual Ω V} (hg : IsTwistedDualGens x E a φ) {s₀ : ∀ k, ι k}
    (hs : mseg x s₀ ≠ 0) (ψ : Module.Dual Ω V) : ψ ∈ Submodule.span Ω (Set.range φ) := by
  classical
  obtain ⟨k, f, c, hf, hc, hsum, hb⟩ := E.frame s₀ hs
  have hne : ∃ l, f l ≠ 0 := by
    by_contra h
    push_neg at h
    simp [h] at hsum
  obtain ⟨l, hl⟩ := hne
  obtain ⟨b, hli, hsp, hiff⟩ := hb l
  let bas := Module.Basis.mk hli hsp.ge
  obtain ⟨kg, G, hG, hgen⟩ := GroundTheory.Heights₂.Heights.Model.chartBundle_exists_gens E hs
  have hcoord : ∀ q, bas.coord q ∈ Submodule.span Ω (Set.range φ) := by
    intro q
    have h1 : ∀ g, ∃ n : ℕ, f l ^ n * bas.coord q (G g) ∈ chartRing O (mseg x) s₀ := by
      intro g
      obtain ⟨a', ha', he⟩ := (hiff (G g)).1 ⟨0, by simpa using hG g⟩
      have : bas.coord q (G g) = a' q := by

        rw [he, map_sum]
        simp only [map_smul]
        have hbq : ∀ q', bas.coord q (b q') = if q' = q then 1 else 0 := by
          intro q'
          have : b q' = bas q' := (Module.Basis.mk_apply hli hsp.ge q').symm
          rw [this, Module.Basis.coord_apply, Module.Basis.repr_self, Finsupp.single_apply]
        simp [hbq]
      rw [this]
      exact ha' q
    choose n hn using h1
    set n₀ := Finset.univ.sup n with hn₀
    have h2 : ∀ g, f l ^ n₀ * bas.coord q (G g) ∈ chartRing O (mseg x) s₀ := by
      intro g
      have hle : n g ≤ n₀ := Finset.le_sup (Finset.mem_univ g)
      rw [← pow_sub_mul_pow _ hle, mul_assoc]
      exact mul_mem (pow_mem (hf l) _) (hn g)
    have h3 : ∀ v ∈ E.lat s₀, (f l ^ n₀ • bas.coord q) v ∈ chartRing O (mseg x) s₀ := by
      intro v hv
      obtain ⟨β, hβ, rfl⟩ := hgen v hv

      simp only [LinearMap.smul_apply, map_sum, map_smul, smul_eq_mul]
      refine sum_mem fun g _ => ?_
      exact mul_mem (hβ g) (h2 g)
    obtain ⟨u, -, hu⟩ := hg.generate s₀ hs _ h3
    have h4 : f l ^ n₀ • bas.coord q ∈ Submodule.span Ω (Set.range φ) := by
      rw [hu]
      exact sum_mem fun m _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨m, rfl⟩)
    have h5 := Submodule.smul_mem _ (f l ^ n₀)⁻¹ h4
    rwa [smul_smul, inv_mul_cancel₀ (pow_ne_zero _ hl), one_smul] at h5
  rw [← bas.sum_dual_apply_smul_coord ψ]
  exact sum_mem fun q _ => Submodule.smul_mem _ _ (hcoord q)

theorem exists_flagMinor_ne_zero {M : ℕ} {φ : Fin M → Module.Dual Ω V}
    (hφ : ∀ ψ : Module.Dual Ω V, ψ ∈ Submodule.span Ω (Set.range φ))
    (w : Module.Basis (Fin N) Ω V) (i : ℕ) (hi : i ≤ N) :
    ∃ I : Fin i → Fin M, flagMinor φ w i hi I ≠ 0 := by
  classical
  let L : Module.Dual Ω V →ₗ[Ω] (Fin i → Ω) :=
    LinearMap.pi fun b => Module.Dual.eval Ω V (w (Fin.castLE hi b))
  refine exists_minor_ne_zero (fun l b => φ l (w (Fin.castLE hi b))) fun t => ?_
  let ψ : Module.Dual Ω V := ∑ b, t b • w.coord (Fin.castLE hi b)
  have hL : L ψ = t := by
    funext b
    simp [L, ψ, Module.Dual.eval_apply, Finsupp.single_apply, Fin.castLE_inj]
  have h := Submodule.mem_map_of_mem (f := L) (hφ ψ)
  rw [Submodule.map_span, ← Set.range_comp, hL] at h
  exact h

theorem flagMinor_div_mem (E : ChartBundle O (mseg x) N V) {M : ℕ} {a : K → ℤ}
    {φ : Fin M → Module.Dual Ω V} (hg : IsTwistedDualGens x E a φ) {s₀ : ∀ k, ι k}
    (hs : mseg x s₀ ≠ 0) (w : Module.Basis (Fin N) Ω V)
    (hw : ∀ i, ∃ c : O, algebraMap O Ω c ≠ 0 ∧ algebraMap O Ω c • w i ∈ E.lat s₀)
    (i : ℕ) (hi : i ≤ N) (I I' : Fin i → Fin M) :
    flagMinor φ w i hi I / flagMinor φ w i hi I' ∈ fnField O x := by
  classical
  choose c hc0 hc using hw
  have hr : ∀ l b, ∃ r ∈ chartRing O (mseg x) s₀,
      φ l (algebraMap O Ω (c b) • w b) = r * ∏ k, x ⟨k, s₀ k⟩ ^ a k :=
    fun l b => hg.sections s₀ hs l _ (hc b)
  choose r hrm hr using hr
  set T : Ω := ∏ k, x ⟨k, s₀ k⟩ ^ a k with hT
  let D : Fin i → Ω := fun b => (algebraMap O Ω (c (Fin.castLE hi b)))⁻¹ * T
  have hφw : ∀ l b, φ l (w b) = (algebraMap O Ω (c b))⁻¹ * T * r l b := by
    intro l b
    have := hr l b
    rw [map_smul, smul_eq_mul] at this
    field_simp [hc0 b]
    linear_combination this
  have hdet : ∀ J : Fin i → Fin M, flagMinor φ w i hi J = (∏ b, D b) *
      Matrix.det (Matrix.of fun a' b : Fin i => r (J a') (Fin.castLE hi b)) := by
    intro J
    rw [← Matrix.det_mul_row]
    unfold flagMinor
    congr 1
    ext a' b
    simp [hφw, D]
  have hmem : ∀ J : Fin i → Fin M,
      Matrix.det (Matrix.of fun a' b : Fin i => r (J a') (Fin.castLE hi b)) ∈ fnField O x := by
    intro J
    rw [Matrix.det_apply']
    refine sum_mem fun σ _ => mul_mem (intCast_mem _ _) (prod_mem fun b _ => ?_)
    exact chartRing_le_fnField O x s₀ (hrm _ _)
  rw [hdet I, hdet I']
  by_cases hD : ∏ b, D b = 0
  · simp [hD, zero_mem]
  · rw [mul_div_mul_left _ _ hD]
    exact div_mem (hmem I) (hmem I')

end GlobalTheory.CompanionTheory.Ar.Num.PluckerBirat

open GlobalTheory.CompanionTheory.Ar.Num.PluckerBirat in
theorem GlobalTheory.CompanionTheory.Ar.Num.plucker_birat : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (N : ℕ) (V : Type) [AddCommGroup V] [Module Ω V] (J : Type) [Fintype J] [DecidableEq J] (E : J → ChartBundle O (mseg x) N V) (M : J → ℕ) (a : J → K → ℤ) (φ : ∀ j, Fin (M j) → Module.Dual Ω V), (∀ j, IsTwistedDualGens x (E j) (a j) (φ j)) → ∀ (w : Module.Basis (Fin N) Ω V) (s₀ : ∀ k, ι k), mseg x s₀ ≠ 0 → (∀ k, ∃ I, pluckerCoord φ w ⟨k, I⟩ ≠ 0) ∧ ((∀ j i, ∃ c : O, algebraMap O Ω c ≠ 0 ∧ algebraMap O Ω c • w i ∈ (E j).lat s₀) → fnField O (joinCoord x (pluckerCoord φ w)) = fnField O x) := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x N V _ _ J _ _ E M a φ hg w s₀ hs
  refine ⟨fun k => ?_, fun hw => le_antisymm ?_ ?_⟩
  · exact exists_flagMinor_ne_zero (mem_span_of_twistedDualGens (E k.1) (hg k.1) hs) w k.2
      (Nat.lt_succ_iff.mp k.2.2)
  · refine (Subfield.closure_le).2 ?_
    rintro _ (⟨c, rfl⟩ | ⟨⟨k, p, q⟩, rfl⟩)
    · exact Subfield.subset_closure (Or.inl ⟨c, rfl⟩)
    · rcases k with k | k
      · exact Subfield.subset_closure (Or.inr ⟨⟨k, (p, q)⟩, rfl⟩)
      · exact flagMinor_div_mem (E k.1) (hg k.1) hs w (hw k.1) k.2 (Nat.lt_succ_iff.mp k.2.2) p q
  · refine (Subfield.closure_le).2 ?_
    rintro _ (⟨c, rfl⟩ | ⟨⟨k, p, q⟩, rfl⟩)
    · exact Subfield.subset_closure (Or.inl ⟨c, rfl⟩)
    · exact Subfield.subset_closure (Or.inr ⟨⟨Sum.inl k, (p, q)⟩, rfl⟩)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemSpanOfTwistedDualGens =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XMinorGraded =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XMinorGraded", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Algebra.BigOperators.Field\npublic import Mathlib.LinearAlgebra.Basis.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Adjugate\npublic import Mathlib.RingTheory.Ideal.Basic\npublic import Mathlib.RingTheory.Ideal.Operations\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.Ar.Num

namespace PositivityTheory.Xgn.A_minor_graded

theorem mem_span_iff {Ω : Type} [Field Ω] {E : Type} [AddCommGroup E] [Module Ω E] {N : ℕ}
    (w : Module.Basis (Fin N) Ω E) (i : Fin N) (v : E) :
    v ∈ Submodule.span Ω (Set.range fun b : Fin ((i : ℕ) + 1) => w (Fin.castLE i.2 b)) ↔
      ∀ j, i < j → w.repr v j = 0 := by
  have hrange : (Set.range fun b : Fin ((i : ℕ) + 1) => w (Fin.castLE i.2 b)) = w '' {j | j ≤ i} := by
    ext x
    constructor
    · rintro ⟨b, rfl⟩
      refine ⟨Fin.castLE i.2 b, ?_, rfl⟩
      show Fin.castLE i.2 b ≤ i
      rw [Fin.le_iff_val_le_val]
      simp only [Fin.coe_castLE]
      omega
    · rintro ⟨j, hj, rfl⟩
      refine ⟨⟨j, by rw [Set.mem_setOf_eq, Fin.le_iff_val_le_val] at hj; omega⟩, ?_⟩
      rfl
  rw [hrange, w.mem_span_image]
  constructor
  · intro h j hj
    by_contra hne
    have hmem : j ∈ ((w.repr v).support : Set (Fin N)) := by simpa using hne
    have := h hmem
    simp only [Set.mem_setOf_eq] at this
    exact absurd this (not_le.mpr hj)
  · intro h j hj
    by_contra hne
    have hne' : w.repr v j ≠ 0 := by simpa using hj
    exact hne' (h j (not_le.mp hne))

end PositivityTheory.Xgn.A_minor_graded

private theorem unit_lemma' {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (R : Subalgebra o Ω)
    {k : ℕ} (f c : Fin k → Ω) (hf : ∀ l, f l ∈ R) (hc : ∀ l, c l ∈ R) (hs : ∑ l, c l * f l = 1)
    (n : ℕ) : ∃ d : Fin k → Ω, (∀ l, d l ∈ R) ∧ ∑ l, d l * f l ^ n = 1 := by
  let fR : Fin k → R := fun l => ⟨f l, hf l⟩
  have htop : Ideal.span (Set.range fR) = ⊤ := by
    rw [Ideal.eq_top_iff_one, Ideal.mem_span_range_iff_exists_fun]
    refine ⟨fun l => ⟨c l, hc l⟩, ?_⟩
    apply Subtype.ext
    simp [fR, hs]
  have h2 := Ideal.span_pow_eq_top _ htop n
  rw [← Set.range_comp] at h2
  have h3 : (1 : R) ∈ Ideal.span (Set.range ((fun x : R => x ^ n) ∘ fR)) := by
    rw [h2]
    trivial
  rw [Ideal.mem_span_range_iff_exists_fun] at h3
  obtain ⟨d, hd⟩ := h3
  refine ⟨fun l => (d l : Ω), fun l => (d l).2, ?_⟩
  have := congrArg (fun x : R => (x : Ω)) hd
  simpa [fR] using this

private theorem mem_of_loc_lemma_2 {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (R : Subalgebra o Ω)
    {k : ℕ} (f c : Fin k → Ω) (hf : ∀ l, f l ∈ R) (hc : ∀ l, c l ∈ R) (hs : ∑ l, c l * f l = 1)
    (t : Ω) (ht : ∀ l, ∃ n, f l ^ n * t ∈ R) : t ∈ R := by
  choose n hn using ht
  obtain ⟨d, hd, hsum⟩ := unit_lemma' R f c hf hc hs (Finset.univ.sup n)
  have key : t = ∑ l, d l * f l ^ (Finset.univ.sup n - n l) * (f l ^ n l * t) := by
    calc t = (∑ l, d l * f l ^ (Finset.univ.sup n)) * t := by rw [hsum, one_mul]
    _ = _ := by
      rw [Finset.sum_mul]
      refine Finset.sum_congr rfl fun l _ => ?_
      rw [← pow_sub_mul_pow (f l) (Finset.le_sup (Finset.mem_univ l))]
      ring
  rw [key]
  exact Subalgebra.sum_mem _ fun l _ =>
    Subalgebra.mul_mem _ (Subalgebra.mul_mem _ (hd l) (Subalgebra.pow_mem _ (hf l) _)) (hn l)

private theorem vmem_of_loc_lemma_3 {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (R : Subalgebra o Ω)
    {E : Type} [AddCommGroup E] [Module Ω E] (L : AddSubgroup E) (hsm : ∀ a ∈ R, ∀ e ∈ L, a • e ∈ L)
    {k : ℕ} (f c : Fin k → Ω) (hf : ∀ l, f l ∈ R) (hc : ∀ l, c l ∈ R) (hs : ∑ l, c l * f l = 1)
    (x : E) (hx : ∀ l, ∃ n, f l ^ n • x ∈ L) : x ∈ L := by
  choose n hn using hx
  obtain ⟨d, hd, hsum⟩ := unit_lemma' R f c hf hc hs (Finset.univ.sup n)
  have key : x = ∑ l, (d l * f l ^ (Finset.univ.sup n - n l)) • (f l ^ n l • x) := by
    calc x = (∑ l, d l * f l ^ (Finset.univ.sup n)) • x := by rw [hsum, one_smul]
    _ = _ := by
      rw [Finset.sum_smul]
      refine Finset.sum_congr rfl fun l _ => ?_
      rw [smul_smul, mul_assoc, pow_sub_mul_pow (f l) (Finset.le_sup (Finset.mem_univ l))]
  rw [key]
  exact AddSubgroup.sum_mem _ fun l _ =>
    hsm _ (Subalgebra.mul_mem _ (hd l) (Subalgebra.pow_mem _ (hf l) _)) _ (hn l)

private theorem refl_lemma_4 {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (R : Subalgebra o Ω)
    {E : Type} [AddCommGroup E] [Module Ω E] (N M : ℕ) (L : AddSubgroup E) (hL : LocFree R N L)
    (φ : Fin M → Module.Dual Ω E) (hφ : GenDual R L φ) (x : E) (hx : ∀ l, φ l x ∈ R) : x ∈ L := by
  obtain ⟨hsm, k, f, c, hf, hc, hs, hch⟩ := hL
  have hdual : ∀ ψ : Module.Dual Ω E, (∀ v ∈ L, ψ v ∈ R) → ψ x ∈ R := by
    intro ψ hψ
    obtain ⟨u, hu, rfl⟩ := hφ.2 ψ hψ
    simp only [LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul]
    exact Subalgebra.sum_mem _ fun l _ => Subalgebra.mul_mem _ (hu l) (hx l)
  choose b hbli hbsp hbiff using hch
  let B : ∀ l, Module.Basis (Fin N) Ω E := fun l => Module.Basis.mk (hbli l) (by rw [hbsp l])
  have hB : ∀ l q, B l q = b l q := fun l q => Module.Basis.mk_apply _ _ _
  have hcoord : ∀ l (a : Fin N → Ω) q, (B l).repr (∑ q', a q' • b l q') q = a q := by
    intro l a q
    have h1 : (∑ q', a q' • b l q') = ∑ q', a q' • B l q' := by simp only [hB]
    rw [h1, Module.Basis.repr_sum_self]
  have hloc : ∀ l, ∀ e ∈ L, ∀ q, ∃ n, f l ^ n * (B l).repr e q ∈ R := by
    intro l e he q
    obtain ⟨a, ha, he'⟩ := (hbiff l e).1 ⟨0, by simpa using he⟩
    rw [he', hcoord]
    exact ha q
  have hgen : ∀ l' q', ∃ n, f l' ^ n • b l' q' ∈ L := by
    intro l' q'
    refine (hbiff l' (b l' q')).2 ⟨Pi.single q' 1, fun q => ⟨0, ?_⟩, ?_⟩
    · by_cases h : q = q'
      · subst h
        simpa using R.one_mem
      · simp [h]
    · simp [Pi.single_apply]
  choose n₁ hn₁ using hgen
  have h2 : ∀ l l' q' q, ∃ n, f l ^ n * (B l).repr (f l' ^ n₁ l' q' • b l' q') q ∈ R :=
    fun l l' q' q => hloc l _ (hn₁ l' q') q
  choose n₂ hn₂ using h2
  let m : Fin k → ℕ := fun l => Finset.univ.sup (fun p : Fin k × Fin N × Fin N => n₂ l p.1 p.2.1 p.2.2)
  have hbound : ∀ l l' q' q, f l ^ m l * (B l).repr (f l' ^ n₁ l' q' • b l' q') q ∈ R := by
    intro l l' q' q
    have hle : n₂ l l' q' q ≤ m l :=
      Finset.le_sup (f := fun p : Fin k × Fin N × Fin N => n₂ l p.1 p.2.1 p.2.2) (Finset.mem_univ (l', q', q))
    rw [← pow_sub_mul_pow (f l) hle, mul_assoc]
    exact Subalgebra.mul_mem _ (Subalgebra.pow_mem _ (hf l) _) (hn₂ l l' q' q)
  have hunif : ∀ l, ∀ e ∈ L, ∀ q, f l ^ m l * (B l).repr e q ∈ R := by
    intro l e he q
    apply mem_of_loc_lemma_2 R f c hf hc hs
    intro l'
    obtain ⟨a, ha, he'⟩ := (hbiff l' e).1 ⟨0, by simpa using he⟩
    choose n₃ hn₃ using ha
    refine ⟨Finset.univ.sup n₃ + Finset.univ.sup (n₁ l'), ?_⟩
    have hexp : f l' ^ (Finset.univ.sup n₃ + Finset.univ.sup (n₁ l')) * (f l ^ m l * (B l).repr e q) =
        ∑ q', (f l' ^ (Finset.univ.sup n₃ - n₃ q') * (f l' ^ n₃ q' * a q')) *
          (f l' ^ (Finset.univ.sup (n₁ l') - n₁ l' q') *
            (f l ^ m l * (B l).repr (f l' ^ n₁ l' q' • b l' q') q)) := by
      rw [he']

      simp only [map_sum, map_smul, Finsupp.coe_finsetSum, Finset.sum_apply, Finsupp.coe_smul,
      Pi.smul_apply, smul_eq_mul]
      rw [Finset.mul_sum, Finset.mul_sum]
      refine Finset.sum_congr rfl fun q' _ => ?_
      have e1 := pow_sub_mul_pow (f l') (Finset.le_sup (f := n₃) (Finset.mem_univ q'))
      have e2 := pow_sub_mul_pow (f l') (Finset.le_sup (f := n₁ l') (Finset.mem_univ q'))
      rw [pow_add, ← e1, ← e2]
      ring
    rw [hexp]
    exact Subalgebra.sum_mem _ fun q' _ => Subalgebra.mul_mem _
      (Subalgebra.mul_mem _ (Subalgebra.pow_mem _ (hf l') _) (hn₃ q'))
      (Subalgebra.mul_mem _ (Subalgebra.pow_mem _ (hf l') _) (hbound l l' q' q))
  apply vmem_of_loc_lemma_3 R L hsm f c hf hc hs x
  intro l
  refine (hbiff l x).2 ⟨fun q => (B l).repr x q, fun q => ⟨m l, ?_⟩, ?_⟩
  · have := hdual (f l ^ m l • (B l).coord q) (fun v hv => by
      simpa [Module.Basis.coord_apply] using hunif l v hv q)
    simpa [Module.Basis.coord_apply] using this
  · conv_lhs => rw [← (B l).sum_repr x]
    simp only [hB]

private theorem combo_lemma_5 {Ω : Type} [Field Ω] {E : Type} [AddCommGroup E] [Module Ω E] {N : ℕ}
    (w : Module.Basis (Fin N) Ω E) (i : Fin N) (c : Fin ((i : ℕ) + 1) → Ω) :
    (∀ j, i < j → w.repr (∑ b, c b • w (Fin.castLE i.2 b)) j = 0) ∧
      w.repr (∑ b, c b • w (Fin.castLE i.2 b)) i = c (Fin.last i) := by
  have h : ∀ j, w.repr (∑ b, c b • w (Fin.castLE i.2 b)) j =
      ∑ b, if Fin.castLE i.2 b = j then c b else 0 := by
    intro j

    simp [map_sum, Finsupp.single_apply]
  constructor
  · intro j hj
    rw [h]
    apply Finset.sum_eq_zero
    intro b _
    rw [if_neg]
    intro heq
    rw [← heq, Fin.lt_iff_val_lt_val] at hj
    simp only [Fin.coe_castLE] at hj
    have := b.2
    omega
  · rw [h, Finset.sum_eq_single (Fin.last _)]
    · rw [if_pos]
      ext
      simp
    · intro b _ hb
      rw [if_neg]
      intro heq
      apply hb
      ext
      have := congrArg Fin.val heq
      simp only [Fin.coe_castLE] at this
      simp [this]
    · intro hh
      exact absurd (Finset.mem_univ _) hh

open PositivityTheory.Xgn.A_minor_graded in
theorem PositivityTheory.Xgn.t_minor_graded : ∀ {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (R : Subalgebra o Ω) {E : Type} [AddCommGroup E] [Module Ω E] (N M : ℕ) (L : AddSubgroup E), LocFree R N L → ∀ (φ : Fin M → Module.Dual Ω E), GenDual R L φ → ∀ (w : Module.Basis (Fin N) Ω E) (i : Fin N) (I : Fin (i : ℕ) → Fin M) (J : Fin ((i : ℕ) + 1) → Fin M), flagMinor φ w i i.2.le I ≠ 0 → (∀ I', flagMinor φ w i i.2.le I' / flagMinor φ w i i.2.le I ∈ R) → flagMinor φ w ((i : ℕ) + 1) i.2 J ≠ 0 → (∀ J', flagMinor φ w ((i : ℕ) + 1) i.2 J' / flagMinor φ w ((i : ℕ) + 1) i.2 J ∈ R) → {s : Ω | ∃ v ∈ L, (∀ j, i < j → w.repr v j = 0) ∧ w.repr v i = s} = {s : Ω | ∃ a ∈ R, s = a * (flagMinor φ w i i.2.le I / flagMinor φ w ((i : ℕ) + 1) i.2 J)} := by
  intro o Ω _ _ _ R E _ _ N M L hL φ hφ w i I J hI hIdiv hJ hJdiv
  ext s
  constructor
  · rintro ⟨v, hvL, hv0, rfl⟩
    have hspan := (mem_span_iff w i v).2 hv0
    obtain ⟨c, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun Ω).1 hspan
    rw [(combo_lemma_5 w i c).2]
    set v := ∑ b, c b • w (Fin.castLE i.2 b) with hv
    set A : Matrix (Fin ((i : ℕ) + 1)) (Fin ((i : ℕ) + 1)) Ω :=
      Matrix.of fun a b => φ (J a) (w (Fin.castLE i.2 b)) with hA
    have hdetA : flagMinor φ w ((i : ℕ) + 1) i.2 J = A.det := rfl
    have hy : Matrix.mulVec A c = fun a => φ (J a) v := by
      ext a

      simp [Matrix.mulVec, dotProduct, A, v, map_sum, mul_comm]
    have hcr : Matrix.cramer A (Matrix.mulVec A c) = A.det • c := by
      rw [Matrix.cramer_eq_adjugate_mulVec, Matrix.mulVec_mulVec, Matrix.adjugate_mul,
        Matrix.smul_mulVec, Matrix.one_mulVec]
    have key := congrFun hcr (Fin.last _)
    rw [Matrix.cramer_apply, Matrix.det_succ_column _ (Fin.last _), hy] at key
    simp only [Pi.smul_apply, smul_eq_mul, Matrix.updateCol_self, Fin.succAbove_last] at key
    have hsub : ∀ a : Fin ((i : ℕ) + 1), (Matrix.submatrix (A.updateCol (Fin.last _)
        (fun a => φ (J a) v)) a.succAbove Fin.castSucc).det =
        flagMinor φ w (i : ℕ) i.2.le (J ∘ a.succAbove) := by
      intro a
      unfold flagMinor
      congr 1
      ext r d
      simp [A]
    simp only [hsub] at key
    have hA0 : A.det ≠ 0 := hdetA ▸ hJ
    refine ⟨∑ x : Fin ((i : ℕ) + 1), (-1) ^ ((x : ℕ) + ((Fin.last (i : ℕ) : Fin ((i : ℕ) + 1)) : ℕ)) *
        φ (J x) v * (flagMinor φ w (i : ℕ) i.2.le (J ∘ x.succAbove) / flagMinor φ w (i : ℕ) i.2.le I),
      Subalgebra.sum_mem _ fun x _ => Subalgebra.mul_mem _ (Subalgebra.mul_mem _
        (Subalgebra.pow_mem _ (Subalgebra.neg_mem _ (Subalgebra.one_mem _)) _) (hφ.1 _ _ hvL)) (hIdiv _), ?_⟩
    have hc : c (Fin.last _) = (A.det * c (Fin.last _)) / A.det := by field_simp
    rw [hc, ← key, Finset.sum_div, hdetA, Finset.sum_mul]
    refine Finset.sum_congr rfl fun x _ => ?_
    field_simp
  · rintro ⟨a, ha, rfl⟩
    let sub : Fin ((i : ℕ) + 1) → Ω := fun j =>
      (Matrix.of fun (r d : Fin (i : ℕ)) => φ (I r) (w (Fin.castLE i.2 (j.succAbove d)))).det
    let cf : Fin ((i : ℕ) + 1) → Ω := fun j => a / flagMinor φ w ((i : ℕ) + 1) i.2 J *
      ((-1) ^ (((Fin.last (i : ℕ) : Fin ((i : ℕ) + 1)) : ℕ) + (j : ℕ)) * sub j)
    have hφv : ∀ l, φ l (∑ j, cf j • w (Fin.castLE i.2 j)) = a / flagMinor φ w ((i : ℕ) + 1) i.2 J *
        flagMinor φ w ((i : ℕ) + 1) i.2 (Fin.snoc (α := fun _ => Fin M) I l) := by
      intro l
      have hdet : flagMinor φ w ((i : ℕ) + 1) i.2 (Fin.snoc (α := fun _ => Fin M) I l) =
          ∑ j : Fin ((i : ℕ) + 1), (-1) ^ (((Fin.last (i : ℕ) : Fin ((i : ℕ) + 1)) : ℕ) + (j : ℕ)) *
            φ l (w (Fin.castLE i.2 j)) * sub j := by
        unfold flagMinor
        rw [Matrix.det_succ_row _ (Fin.last _)]
        refine Finset.sum_congr rfl fun j _ => ?_
        simp [sub, Fin.snoc_last, Fin.succAbove_last]
        left
        congr 1
        ext r d
        simp

      rw [hdet, map_sum, Finset.mul_sum]
      refine Finset.sum_congr rfl fun j _ => ?_
      simp only [map_smul, smul_eq_mul, cf]
      ring
    refine ⟨∑ j, cf j • w (Fin.castLE i.2 j), refl_lemma_4 R N M L hL φ hφ _ (fun l => ?_),
      (combo_lemma_5 w i cf).1, ?_⟩
    · rw [hφv, show ∀ x y z : Ω, x / y * z = x * (z / y) from fun x y z => by ring]
      exact Subalgebra.mul_mem _ ha (hJdiv _)
    · rw [(combo_lemma_5 w i cf).2]
      have h1 : ((-1 : Ω) ^ (((Fin.last (i : ℕ) : Fin ((i : ℕ) + 1)) : ℕ) +
          ((Fin.last (i : ℕ) : Fin ((i : ℕ) + 1)) : ℕ))) = 1 := by
        rw [← two_mul, pow_mul]
        simp
      have h2 : sub (Fin.last _) = flagMinor φ w (i : ℕ) i.2.le I := by
        simp only [sub, Fin.succAbove_last]
        rfl
      show a / flagMinor φ w ((i : ℕ) + 1) i.2 J * ((-1) ^ (((Fin.last (i : ℕ) : Fin ((i : ℕ) + 1)) : ℕ) +
          ((Fin.last (i : ℕ) : Fin ((i : ℕ) + 1)) : ℕ)) * sub (Fin.last _)) = _
      rw [h1, h2]
      ring
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XMinorGraded =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPluckerFrame =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPluckerFrame", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.PluckerCoord\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XBundleOfFamily\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XMinorGraded\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace PositivityTheory.Xgn.A_plucker_frame
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (restrictChart)
open ReciprocityTheory.ChartRestriction.G.Geo (div_mem_chartRing)

private theorem unit_lemma' {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (R : Subalgebra o Ω)
    {k : ℕ} (f c : Fin k → Ω) (hf : ∀ l, f l ∈ R) (hc : ∀ l, c l ∈ R) (hs : ∑ l, c l * f l = 1)
    (n : ℕ) : ∃ d : Fin k → Ω, (∀ l, d l ∈ R) ∧ ∑ l, d l * f l ^ n = 1 := by
  let fR : Fin k → R := fun l => ⟨f l, hf l⟩
  have htop : Ideal.span (Set.range fR) = ⊤ := by
    rw [Ideal.eq_top_iff_one, Ideal.mem_span_range_iff_exists_fun]
    refine ⟨fun l => ⟨c l, hc l⟩, ?_⟩
    apply Subtype.ext
    simp [fR, hs]
  have h2 := Ideal.span_pow_eq_top _ htop n
  rw [← Set.range_comp] at h2
  have h3 : (1 : R) ∈ Ideal.span (Set.range ((fun x : R => x ^ n) ∘ fR)) := by
    rw [h2]
    trivial
  rw [Ideal.mem_span_range_iff_exists_fun] at h3
  obtain ⟨d, hd⟩ := h3
  refine ⟨fun l => (d l : Ω), fun l => (d l).2, ?_⟩
  have := congrArg (fun x : R => (x : Ω)) hd
  simpa [fR] using this

private theorem mem_of_loc_lemma_2 {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (R : Subalgebra o Ω)
    {k : ℕ} (f c : Fin k → Ω) (hf : ∀ l, f l ∈ R) (hc : ∀ l, c l ∈ R) (hs : ∑ l, c l * f l = 1)
    (t : Ω) (ht : ∀ l, ∃ n, f l ^ n * t ∈ R) : t ∈ R := by
  choose n hn using ht
  obtain ⟨d, hd, hsum⟩ := unit_lemma' R f c hf hc hs (Finset.univ.sup n)
  have key : t = ∑ l, d l * f l ^ (Finset.univ.sup n - n l) * (f l ^ n l * t) := by
    calc t = (∑ l, d l * f l ^ (Finset.univ.sup n)) * t := by rw [hsum, one_mul]
    _ = _ := by
      rw [Finset.sum_mul]
      refine Finset.sum_congr rfl fun l _ => ?_
      rw [← pow_sub_mul_pow (f l) (Finset.le_sup (Finset.mem_univ l))]
      ring
  rw [key]
  exact Subalgebra.sum_mem _ fun l _ =>
    Subalgebra.mul_mem _ (Subalgebra.mul_mem _ (hd l) (Subalgebra.pow_mem _ (hf l) _)) (hn l)

private theorem exists_pow_mul_basis_repr_mem {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (R : Subalgebra o Ω)
    {E : Type} [AddCommGroup E] [Module Ω E] (N : ℕ) (L : AddSubgroup E)
    {k : ℕ} (f c : Fin k → Ω) (hf : ∀ l, f l ∈ R) (hc : ∀ l, c l ∈ R) (hs : ∑ l, c l * f l = 1)
    (b : Fin k → Fin N → E) (hbli : ∀ l, LinearIndependent Ω (b l))
    (hbsp : ∀ l, Submodule.span Ω (Set.range (b l)) = ⊤)
    (hbiff : ∀ l (e : E), (∃ n : ℕ, f l ^ n • e ∈ L) ↔
      ∃ a : Fin N → Ω, (∀ q, ∃ n : ℕ, f l ^ n * a q ∈ R) ∧ e = ∑ q, a q • b l q) (l : Fin k) :
    ∃ m : ℕ, ∀ e ∈ L, ∀ q, f l ^ m * (Module.Basis.mk (hbli l) (hbsp l).ge).repr e q ∈ R := by
  let B : ∀ l, Module.Basis (Fin N) Ω E := fun l => Module.Basis.mk (hbli l) (hbsp l).ge
  have hB : ∀ l q, B l q = b l q := fun l q => Module.Basis.mk_apply _ _ _
  have hcoord : ∀ l (a : Fin N → Ω) q, (B l).repr (∑ q', a q' • b l q') q = a q := by
    intro l a q
    have h1 : (∑ q', a q' • b l q') = ∑ q', a q' • B l q' := by simp only [hB]
    rw [h1, Module.Basis.repr_sum_self]
  have hloc : ∀ l, ∀ e ∈ L, ∀ q, ∃ n, f l ^ n * (B l).repr e q ∈ R := by
    intro l e he q
    obtain ⟨a, ha, he'⟩ := (hbiff l e).1 ⟨0, by simpa using he⟩
    rw [he', hcoord]
    exact ha q
  have hgen : ∀ l' q', ∃ n, f l' ^ n • b l' q' ∈ L := by
    intro l' q'
    refine (hbiff l' (b l' q')).2 ⟨Pi.single q' 1, fun q => ⟨0, ?_⟩, ?_⟩
    · by_cases h : q = q'
      · subst h
        simpa using R.one_mem
      · simp [h]
    · simp [Pi.single_apply]
  choose n₁ hn₁ using hgen
  have h2 : ∀ l l' q' q, ∃ n, f l ^ n * (B l).repr (f l' ^ n₁ l' q' • b l' q') q ∈ R :=
    fun l l' q' q => hloc l _ (hn₁ l' q') q
  choose n₂ hn₂ using h2
  let m : Fin k → ℕ := fun l => Finset.univ.sup (fun p : Fin k × Fin N × Fin N => n₂ l p.1 p.2.1 p.2.2)
  have hbound : ∀ l l' q' q, f l ^ m l * (B l).repr (f l' ^ n₁ l' q' • b l' q') q ∈ R := by
    intro l l' q' q
    have hle : n₂ l l' q' q ≤ m l :=
      Finset.le_sup (f := fun p : Fin k × Fin N × Fin N => n₂ l p.1 p.2.1 p.2.2) (Finset.mem_univ (l', q', q))
    rw [← pow_sub_mul_pow (f l) hle, mul_assoc]
    exact Subalgebra.mul_mem _ (Subalgebra.pow_mem _ (hf l) _) (hn₂ l l' q' q)
  refine ⟨m l, fun e he q => ?_⟩
  show f l ^ m l * (B l).repr e q ∈ R
  apply mem_of_loc_lemma_2 R f c hf hc hs
  intro l'
  obtain ⟨a, ha, he'⟩ := (hbiff l' e).1 ⟨0, by simpa using he⟩
  choose n₃ hn₃ using ha
  refine ⟨Finset.univ.sup n₃ + Finset.univ.sup (n₁ l'), ?_⟩
  have hexp : f l' ^ (Finset.univ.sup n₃ + Finset.univ.sup (n₁ l')) * (f l ^ m l * (B l).repr e q) =
      ∑ q', (f l' ^ (Finset.univ.sup n₃ - n₃ q') * (f l' ^ n₃ q' * a q')) *
        (f l' ^ (Finset.univ.sup (n₁ l') - n₁ l' q') *
          (f l ^ m l * (B l).repr (f l' ^ n₁ l' q' • b l' q') q)) := by
    rw [he']

    simp only [map_sum, map_smul, Finsupp.coe_finsetSum, Finset.sum_apply, Finsupp.coe_smul,
    Pi.smul_apply, smul_eq_mul]
    rw [Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun q' _ => ?_
    have e1 := pow_sub_mul_pow (f l') (Finset.le_sup (f := n₃) (Finset.mem_univ q'))
    have e2 := pow_sub_mul_pow (f l') (Finset.le_sup (f := n₁ l') (Finset.mem_univ q'))
    rw [pow_add, ← e1, ← e2]
    ring
  rw [hexp]
  exact Subalgebra.sum_mem _ fun q' _ => Subalgebra.mul_mem _
    (Subalgebra.mul_mem _ (Subalgebra.pow_mem _ (hf l') _) (hn₃ q'))
    (Subalgebra.mul_mem _ (Subalgebra.pow_mem _ (hf l') _) (hbound l l' q' q))

theorem genDual_span {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (R₀ R : Subalgebra o Ω)
    (hle : ∀ r ∈ R₀, r ∈ R) {V : Type} [AddCommGroup V] [Module Ω V] {N M : ℕ} (L₀ : AddSubgroup V)
    (hL : LocFree R₀ N L₀) (φ : Fin M → Module.Dual Ω V) (hφ : GenDual R₀ L₀ φ) :
    GenDual R (AddSubgroup.closure {v | ∃ a ∈ R, ∃ e ∈ L₀, v = a • e}) φ := by
  obtain ⟨hsm, k, f, c, hf, hc, hs, hch⟩ := hL
  choose b hbli hbsp hbiff using hch
  refine ⟨fun l v hv => ?_, fun ψ hψ => ?_⟩
  · induction hv using AddSubgroup.closure_induction with
    | mem x hx =>
      obtain ⟨a, ha, e, he, rfl⟩ := hx
      rw [map_smul, smul_eq_mul]
      exact R.mul_mem ha (hle _ (hφ.1 l e he))
    | zero =>
      rw [map_zero]
      exact R.zero_mem
    | add x y _ _ hx hy =>
      rw [map_add (f := _)]
      exact R.add_mem hx hy
    | neg x _ hx =>
      rw [map_neg]
      exact R.neg_mem hx
  · have hψ0 : ∀ e ∈ L₀, ψ e ∈ R := fun e he =>
      hψ e (AddSubgroup.subset_closure ⟨1, R.one_mem, e, he, (one_smul _ _).symm⟩)
    have hchart : ∀ l, ∃ n : ℕ, ∃ u : Fin M → Ω, (∀ m, u m ∈ R) ∧ f l ^ n • ψ = ∑ m, u m • φ m := by
      intro l
      obtain ⟨m, hm⟩ := exists_pow_mul_basis_repr_mem R₀ N L₀ f c hf hc hs b hbli hbsp hbiff l
      set B := Module.Basis.mk (hbli l) (hbsp l).ge with hBdef
      have hB : ∀ q, B q = b l q := fun q => Module.Basis.mk_apply _ _ _
      have hχ : ∀ q, ∃ u : Fin M → Ω, (∀ m', u m' ∈ R₀) ∧ f l ^ m • B.coord q = ∑ m', u m' • φ m' := by
        intro q
        exact hφ.2 _ (fun v hv => by simpa [Module.Basis.coord_apply] using hm v hv q)
      choose u hu hχeq using hχ
      have hgen : ∀ q, ∃ n, f l ^ n • b l q ∈ L₀ := by
        intro q
        refine (hbiff l (b l q)).2 ⟨Pi.single q 1, fun q' => ⟨0, ?_⟩, ?_⟩
        · by_cases h : q' = q
          · subst h
            simpa using R₀.one_mem
          · simp [h]
        · simp [Pi.single_apply]
      choose n₁ hn₁ using hgen
      have hψb : ∀ q, f l ^ Finset.univ.sup n₁ * ψ (b l q) ∈ R := by
        intro q
        have h1 := hψ0 _ (hn₁ q)
        rw [map_smul, smul_eq_mul] at h1
        rw [← pow_sub_mul_pow (f l) (Finset.le_sup (f := n₁) (Finset.mem_univ q)), mul_assoc]
        exact R.mul_mem (R.pow_mem (hle _ (hf l)) _) h1
      refine ⟨m + Finset.univ.sup n₁, fun m' => ∑ q, f l ^ Finset.univ.sup n₁ * ψ (b l q) * u q m',
        fun m' => R.sum_mem fun q _ => R.mul_mem (hψb q) (hle _ (hu q m')), ?_⟩
      ext v
      have hχv : ∀ q, f l ^ m * B.repr v q = ∑ m', u q m' * φ m' v := by
        intro q
        have := congrArg (fun χ : Module.Dual Ω V => χ v) (hχeq q)
        simpa [Module.Basis.coord_apply] using this
      have hv := B.sum_repr v
      simp only [LinearMap.smul_apply, LinearMap.sum_apply, smul_eq_mul, Finset.sum_mul]
      conv_lhs => rw [← hv]

      rw [map_sum]
      simp only [map_smul, smul_eq_mul, hB]
      rw [Finset.sum_comm, Finset.mul_sum]
      refine Finset.sum_congr rfl fun q _ => ?_
      calc _ = f l ^ Finset.univ.sup n₁ * ψ (b l q) * (f l ^ m * B.repr v q) := by ring
      _ = _ := by
        rw [hχv q, Finset.mul_sum]
        exact Finset.sum_congr rfl fun m' _ => by ring
    choose n u hu hueq using hchart
    obtain ⟨d, hd, hsum⟩ := unit_lemma' R₀ f c hf hc hs (Finset.univ.sup n)
    refine ⟨fun m' => ∑ l, d l * f l ^ (Finset.univ.sup n - n l) * u l m',
      fun m' => R.sum_mem fun l _ => R.mul_mem (R.mul_mem (hle _ (hd l)) (R.pow_mem (hle _ (hf l)) _)) (hu l m'), ?_⟩
    calc ψ = (∑ l, d l * f l ^ (Finset.univ.sup n)) • ψ := by rw [hsum, one_smul]
    _ = ∑ l, (d l * f l ^ (Finset.univ.sup n - n l)) • (f l ^ n l • ψ) := by
      rw [Finset.sum_smul]
      refine Finset.sum_congr rfl fun l _ => ?_
      rw [smul_smul, mul_assoc, pow_sub_mul_pow (f l) (Finset.le_sup (Finset.mem_univ l))]
    _ = _ := by
      simp only [hueq, Finset.smul_sum, smul_smul, Finset.sum_smul]
      rw [Finset.sum_comm]

theorem flagMinor_smul {Ω : Type} [Field Ω] {V : Type} [AddCommGroup V] [Module Ω V] {N M : ℕ}
    (φ : Fin M → Module.Dual Ω V) (w : Fin N → V) (c : Ω) (n : ℕ) (hn : n ≤ N) (I : Fin n → Fin M) :
    flagMinor (fun l => c • φ l) w n hn I = c ^ n * flagMinor φ w n hn I := by
  unfold flagMinor
  have h : (Matrix.of fun (a b : Fin n) => ((fun l => c • φ l) (I a)) (w (Fin.castLE hn b))) =
      c • Matrix.of fun (a b : Fin n) => φ (I a) (w (Fin.castLE hn b)) := by
    ext a b
    simp
  rw [h, Matrix.det_smul, Fintype.card_fin]

theorem ne_zero_of_mseg {Ω : Type} [Field Ω] {K : Type} [Fintype K] {ι : K → Type}
    (y : (Σ k, ι k) → Ω) (s : ∀ k, ι k) (hs : mseg y s ≠ 0) (k : K) : y ⟨k, s k⟩ ≠ 0 :=
  Finset.prod_ne_zero_iff.1 hs k (Finset.mem_univ k)

theorem ratio_mem {O Ω : Type} [CommRing O] [Field Ω] [Algebra O Ω] {K : Type} [Fintype K]
    {ι : K → Type} (y : (Σ k, ι k) → Ω) (s : ∀ k, ι k) (hs : mseg y s ≠ 0) (k : K) (i : ι k) :
    y ⟨k, i⟩ / y ⟨k, s k⟩ ∈ chartRing O (mseg y) s := by
  classical
  have hall : ∀ k', y ⟨k', s k'⟩ ≠ 0 := fun k' => ne_zero_of_mseg y s hs k'
  have key : mseg y (Function.update s k i) / mseg y s = y ⟨k, i⟩ / y ⟨k, s k⟩ := by
    unfold mseg
    rw [← Finset.mul_prod_erase _ _ (Finset.mem_univ k),
      ← Finset.mul_prod_erase _ (fun k' => y ⟨k', s k'⟩) (Finset.mem_univ k)]
    have hrest : ∏ x ∈ Finset.univ.erase k, y ⟨x, Function.update s k i x⟩ =
        ∏ x ∈ Finset.univ.erase k, y ⟨x, s x⟩ :=
      Finset.prod_congr rfl fun x hx => by rw [Function.update_of_ne (Finset.ne_of_mem_erase hx)]
    have hne : ∏ x ∈ Finset.univ.erase k, y ⟨x, s x⟩ ≠ 0 :=
      Finset.prod_ne_zero_iff.mpr fun x _ => hall x
    rw [hrest, Function.update_self]
    have hk := hall k
    field_simp
  rw [← key]
  exact Algebra.subset_adjoin ⟨_, rfl⟩

theorem prod_zpow_single {Ω : Type} [Field Ω] {K : Type} [Fintype K] [DecidableEq K] (z : K → Ω)
    (p : K) : ∏ k, z k ^ (Pi.single p 1 : K → ℤ) k = z p := by
  rw [Finset.prod_eq_single p]
  · simp
  · intro b _ hb
    simp [hb]
  · intro h
    exact absurd (Finset.mem_univ p) h

theorem prod_zpow_sub {Ω : Type} [Field Ω] {K : Type} [Fintype K] [DecidableEq K] (z : K → Ω)
    (hz : ∀ k, z k ≠ 0) (p q : K) :
    ∏ k, z k ^ ((Pi.single p 1 : K → ℤ) - Pi.single q 1 : K → ℤ) k = z p / z q := by
  simp only [Pi.sub_apply]
  rw [Finset.prod_congr rfl (fun k _ => zpow_sub₀ (hz k) _ _), Finset.prod_div_distrib,
    prod_zpow_single, prod_zpow_single]

end PositivityTheory.Xgn.A_plucker_frame

theorem PositivityTheory.Xgn.t_plucker_frame : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (N : ℕ) (V : Type) [AddCommGroup V] [Module Ω V] (J : Type) [Fintype J] [DecidableEq J] (E : J → ChartBundle O (mseg x) N V) (M : J → ℕ) (a : J → K → ℤ) (φ : ∀ j, Fin (M j) → Module.Dual Ω V), (∀ j, IsTwistedDualGens x (E j) (a j) (φ j)) → ∀ (w : Module.Basis (Fin N) Ω V) (j : J) (EB : ChartBundle O (mseg (joinCoord x (pluckerCoord φ w))) N V), IsPull O x (pluckerCoord φ w) (E j) EB → IsFlagFrame (joinCoord x (pluckerCoord φ w)) EB w (pluckerDeg (a j) j) := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x N V _ _ J _ _ E M a φ hE w j EB hpull
  letI hfin : ∀ k, Fintype (Sum.elim ι (pluckerIdx N M) k) := fun k =>
    match k with
    | Sum.inl k => inferInstanceAs (Fintype (ι k))
    | Sum.inr k => inferInstanceAs (Fintype (Fin (k.2 : ℕ) → Fin (M k.1)))
  refine ⟨fun c hc i => ?_⟩
  have hc' : mseg (joinCoord x (pluckerCoord φ w)) c ≠ 0 := hc
  set c0 : ∀ k, ι k := GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.restrictChart c with hc0def
  have hx0 : ∀ k, x ⟨k, c0 k⟩ ≠ 0 := fun k => PositivityTheory.Xgn.A_plucker_frame.ne_zero_of_mseg (joinCoord x (pluckerCoord φ w)) c hc' (Sum.inl k)
  have hz0 : ∀ p : J × Fin (N + 1), (joinCoord x (pluckerCoord φ w)) ⟨Sum.inr p, c (Sum.inr p)⟩ ≠ 0 :=
    fun p => PositivityTheory.Xgn.A_plucker_frame.ne_zero_of_mseg (joinCoord x (pluckerCoord φ w)) c hc' (Sum.inr p)
  have hc0 : mseg x c0 ≠ 0 := Finset.prod_ne_zero_iff.mpr fun k _ => hx0 k
  have hle : ∀ r ∈ chartRing O (mseg x) c0, r ∈ chartRing O (mseg (joinCoord x (pluckerCoord φ w))) c := by
    intro r hr
    refine (Algebra.adjoin_le ?_) hr
    rintro _ ⟨t, rfl⟩
    let t' : ∀ k, Sum.elim ι (pluckerIdx N M) k := fun k =>
      Sum.rec (motive := fun k => Sum.elim ι (pluckerIdx N M) k) t (fun p => c (Sum.inr p)) k
    have hZ : ∏ p : J × Fin (N + 1), (joinCoord x (pluckerCoord φ w)) ⟨Sum.inr p, c (Sum.inr p)⟩ ≠ 0 :=
      Finset.prod_ne_zero_iff.mpr fun p _ => hz0 p
    have heq : mseg (joinCoord x (pluckerCoord φ w)) t' / mseg (joinCoord x (pluckerCoord φ w)) c = mseg x t / mseg x c0 := by
      unfold mseg
      rw [Fintype.prod_sum_type, Fintype.prod_sum_type]
      show ((∏ k, x ⟨k, t k⟩) * ∏ p : J × Fin (N + 1), (joinCoord x (pluckerCoord φ w)) ⟨Sum.inr p, c (Sum.inr p)⟩) /
        ((∏ k, x ⟨k, c0 k⟩) * ∏ p : J × Fin (N + 1), (joinCoord x (pluckerCoord φ w)) ⟨Sum.inr p, c (Sum.inr p)⟩) = _
      rw [mul_div_mul_right _ _ hZ]
    show mseg x t / mseg x c0 ∈ _
    rw [← heq]
    exact Algebra.subset_adjoin ⟨t', rfl⟩
  have hL0 : LocFree (chartRing O (mseg x) c0) N ((E j).lat c0) :=
    ((t_bundle_of_family O Ω K ι x N V).2 (E j)).2 c0 hc0
  have hL : LocFree (chartRing O (mseg (joinCoord x (pluckerCoord φ w))) c) N (EB.lat c) :=
    ((t_bundle_of_family O Ω (K ⊕ (J × Fin (N + 1))) (Sum.elim ι (pluckerIdx N M)) (joinCoord x (pluckerCoord φ w)) N V).2 EB).2 c hc'
  set t : Ω := ∏ k, x ⟨k, c0 k⟩ ^ (-(a j k)) with ht
  set P : Ω := ∏ k, x ⟨k, c0 k⟩ ^ (a j k) with hP
  have htP : t * P = 1 := by
    rw [ht, hP, ← Finset.prod_mul_distrib]
    exact Finset.prod_eq_one fun k _ => by rw [zpow_neg, inv_mul_cancel₀ (zpow_ne_zero _ (hx0 k))]
  have ht0 : t ≠ 0 := left_ne_zero_of_mul_eq_one htP
  have hgd0 : GenDual (chartRing O (mseg x) c0) ((E j).lat c0) (fun l => t • φ j l) := by
    refine ⟨fun l v hv => ?_, fun ψ hψ => ?_⟩
    · obtain ⟨r, hr, hrv⟩ := (hE j).sections c0 hc0 l v hv
      rw [LinearMap.smul_apply, hrv, smul_eq_mul]
      show t * (r * P) ∈ _
      rw [mul_left_comm, htP, mul_one]
      exact hr
    · obtain ⟨u, hu, hψeq⟩ := (hE j).generate c0 hc0 ψ hψ
      refine ⟨u, hu, ?_⟩
      rw [hψeq]
      refine Finset.sum_congr rfl fun l _ => ?_
      show _ = u l • t • φ j l
      rw [smul_smul]
  have hgd : GenDual (chartRing O (mseg (joinCoord x (pluckerCoord φ w))) c) (EB.lat c) (fun l => t • φ j l) := by
    rw [hpull c hc']
    exact PositivityTheory.Xgn.A_plucker_frame.genDual_span (chartRing O (mseg x) c0) (chartRing O (mseg (joinCoord x (pluckerCoord φ w))) c) hle ((E j).lat c0) hL0 _ hgd0
  have hsm : ∀ (n : ℕ) (hn : n ≤ N) (I : Fin n → Fin (M j)),
      flagMinor (fun l => t • φ j l) w n hn I = t ^ n * flagMinor (φ j) w n hn I :=
    fun n hn I => PositivityTheory.Xgn.A_plucker_frame.flagMinor_smul (φ j) w t n hn I
  have hI := PositivityTheory.Xgn.A_plucker_frame.ne_zero_of_mseg (joinCoord x (pluckerCoord φ w)) c hc' (Sum.inr (j, i.castSucc))
  have hJ := PositivityTheory.Xgn.A_plucker_frame.ne_zero_of_mseg (joinCoord x (pluckerCoord φ w)) c hc' (Sum.inr (j, i.succ))
  have key := t_minor_graded (chartRing O (mseg (joinCoord x (pluckerCoord φ w))) c) N (M j) (EB.lat c) hL (fun l => t • φ j l) hgd w i
    (c (Sum.inr (j, i.castSucc)) : Fin (i : ℕ) → Fin (M j))
    (c (Sum.inr (j, i.succ)) : Fin ((i : ℕ) + 1) → Fin (M j))
    (by
      rw [hsm (i : ℕ) _ (c (Sum.inr (j, i.castSucc)))]
      exact mul_ne_zero (pow_ne_zero _ ht0) hI)
    (fun I' => by
      rw [hsm _ _ I', hsm (i : ℕ) _ (c (Sum.inr (j, i.castSucc))), mul_div_mul_left _ _ (pow_ne_zero _ ht0)]
      exact PositivityTheory.Xgn.A_plucker_frame.ratio_mem (joinCoord x (pluckerCoord φ w)) c hc' (Sum.inr (j, i.castSucc)) I')
    (by
      rw [hsm ((i : ℕ) + 1) _ (c (Sum.inr (j, i.succ)))]
      exact mul_ne_zero (pow_ne_zero _ ht0) hJ)
    (fun J' => by
      rw [hsm _ _ J', hsm ((i : ℕ) + 1) _ (c (Sum.inr (j, i.succ))), mul_div_mul_left _ _ (pow_ne_zero _ ht0)]
      exact PositivityTheory.Xgn.A_plucker_frame.ratio_mem (joinCoord x (pluckerCoord φ w)) c hc' (Sum.inr (j, i.succ)) J')
  rw [key]
  unfold degLat
  have hQ : ∀ {A B : Ω}, A = B → ({s : Ω | ∃ r ∈ chartRing O (mseg (joinCoord x (pluckerCoord φ w))) c, s = r * A} =
      {s : Ω | ∃ r ∈ chartRing O (mseg (joinCoord x (pluckerCoord φ w))) c, s = r * B}) := fun h => by rw [h]
  apply hQ
  rw [hsm (i : ℕ) _ (c (Sum.inr (j, i.castSucc))), hsm ((i : ℕ) + 1) _ (c (Sum.inr (j, i.succ))), Fintype.prod_sum_type]
  simp only [pluckerDeg, Sum.elim_inl, Sum.elim_inr]
  rw [PositivityTheory.Xgn.A_plucker_frame.prod_zpow_sub (fun p => (joinCoord x (pluckerCoord φ w)) ⟨Sum.inr p, c (Sum.inr p)⟩) hz0]
  have hPt : P = t⁻¹ := eq_inv_of_mul_eq_one_left (by rw [mul_comm]; exact htP)
  show t ^ (i : ℕ) * (joinCoord x (pluckerCoord φ w)) ⟨Sum.inr (j, i.castSucc), c (Sum.inr (j, i.castSucc))⟩ /
      (t ^ ((i : ℕ) + 1) * (joinCoord x (pluckerCoord φ w)) ⟨Sum.inr (j, i.succ), c (Sum.inr (j, i.succ))⟩) =
    P * ((joinCoord x (pluckerCoord φ w)) ⟨Sum.inr (j, i.castSucc), c (Sum.inr (j, i.castSucc))⟩ /
      (joinCoord x (pluckerCoord φ w)) ⟨Sum.inr (j, i.succ), c (Sum.inr (j, i.succ))⟩)
  rw [hPt, pow_succ]
  field_simp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPluckerFrame =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBundleChain =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBundleChain", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleBaseExtension\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemSpanOfTwistedDualGens\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPluckerFrame\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.X_join_model\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PTwistedDualGensExist\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.PluckerCoord\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace GlobalTheory.CompanionTheory.Ar.CommonFlag

theorem exists_basis_mem {O Ω τ V : Type} [CommRing O] [Field Ω] [Algebra O Ω] [AddCommGroup V]
    [Module Ω V] {N : ℕ} {y : τ → Ω} (B : ChartBundle O y N V) {c : τ} (hc : y c ≠ 0) :
    ∃ w : Module.Basis (Fin N) Ω V, ∀ i, w i ∈ B.lat c := by
  classical
  obtain ⟨k, f, cc, hf, hcc, hsum, hb⟩ := B.frame c hc
  obtain ⟨l, hl⟩ : ∃ l, f l ≠ 0 := by
    by_contra h
    push Not at h
    simp [h] at hsum
  obtain ⟨b, hli, hsp, hiff⟩ := hb l
  have hbl : ∀ q, ∃ n : ℕ, f l ^ n • b q ∈ B.lat c := fun q =>
    (hiff (b q)).2 ⟨Pi.single q 1, fun q' => ⟨0, by by_cases h : q' = q <;> simp [h]⟩,
      by simp [Pi.single_apply]⟩
  choose n hn using hbl
  refine ⟨(Module.Basis.mk hli hsp.ge).unitsSMul fun q => Units.mk0 (f l ^ n q) (pow_ne_zero _ hl),
    fun q => ?_⟩
  rw [Module.Basis.unitsSMul_apply, Module.Basis.mk_apply]
  exact hn q

theorem main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → ∀ (N n : ℕ) (V : Type) [AddCommGroup V] [Module Ω V] (E : Fin (n + 1) → ChartBundle O (mseg x) N V), (∀ j, SameGeneric O x (E 0) (E j)) → ∃ (K' : Type) (_ : Fintype K') (_ : DecidableEq K') (ι' : K' → Type) (_ : ∀ k, Fintype (ι' k)) (z : (Σ k, ι' k) → Ω) (EB : Fin (n + 1) → ChartBundle O (mseg (joinCoord x z)) N V) (w : Module.Basis (Fin N) Ω V) (b : Fin (n + 1) → Fin N → K ⊕ K' → ℤ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O (joinCoord x z)) d ∧ fnField O (joinCoord x z) = fnField O x ∧ ∀ j, IsPull O x z (E j) (EB j) ∧ IsFlagFrame (joinCoord x z) (EB j) w (b j) := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x d hx N n V _ _ E hE
  obtain ⟨hK, hx0, hinj, hT⟩ := (PositivityTheory.Xgn.A_join_model.isModelOver_iff x d).1 hx
  choose s₀ hs₀ using hx0
  have hs : mseg x s₀ ≠ 0 := Finset.prod_ne_zero_iff.2 fun k _ => hs₀ k
  obtain ⟨w, hw⟩ := exists_basis_mem (E 0) hs
  have hgen : ∀ j, ∃ (a : K → ℤ) (M : ℕ) (φ : Fin M → Module.Dual Ω V),
      IsTwistedDualGens x (E j) a φ := fun j => by
    obtain ⟨a, ha⟩ := TwistedDualGensExist.proof O Ω K ι x N V (E j)
    exact ⟨a, ha a le_rfl⟩
  choose a M φ hφ using hgen
  obtain ⟨hz, hfn⟩ := GlobalTheory.CompanionTheory.Ar.Num.plucker_birat O Ω K ι x N V (Fin (n + 1)) E M a φ hφ w s₀ hs
  have hfn' := hfn fun j i => by
    obtain ⟨c, hc, hcw⟩ := (hE j s₀ hs).1 (w i) (hw i)
    exact ⟨c, (map_ne_zero_iff _ hinj).2 hc, hcw⟩
  have hpull : ∀ j, ∃ EB : ChartBundle O (mseg (joinCoord x (pluckerCoord φ w))) N V,
      IsPull O x (pluckerCoord φ w) (E j) EB := fun j =>
    (GlobalTheory.CompanionTheory.Ar.Num.PullExists.main O Ω K ι x N V (E j)).1 _ _ (pluckerCoord φ w)
  choose EB hEB using hpull
  refine ⟨Fin (n + 1) × Fin (N + 1), inferInstance, inferInstance, pluckerIdx N M, inferInstance,
    pluckerCoord φ w, EB, w, fun j => pluckerDeg (a j) j, ?_, hfn', fun j => ⟨hEB j,
      PositivityTheory.Xgn.t_plucker_frame O Ω K ι x N V (Fin (n + 1)) E M a φ hφ w j (EB j) (hEB j)⟩⟩
  refine (PositivityTheory.Xgn.A_join_model.isModelOver_iff _ d).2 ⟨inferInstance, ?_, hinj, ?_⟩
  · rintro (k | k)
    · exact ⟨s₀ k, hs₀ k⟩
    · exact hz k
  · rw [hfn', hT]

end GlobalTheory.CompanionTheory.Ar.CommonFlag
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBundleChain =====
