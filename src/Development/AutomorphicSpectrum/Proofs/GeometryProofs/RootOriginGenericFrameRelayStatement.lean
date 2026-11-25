module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeLine
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsHomogeneousCompIdeal
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.GenMapFromSpecStalk
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.LieModel
public import Mathlib.NumberTheory.NumberField.Basic
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.CoordsAt
public import Development.WeilBound.CoreStatements.CommonZeroEvaluation.GenMapEqOfFactor
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.TwoWeightEqOneAddRoot
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.EigLat
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieLatticeEvalFractionField
public import Development.WeilBound.CoreStatements.CommonZeroEvaluation.ExistsCorr
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ConjEmbRtOfNe
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PushInvertible
public import Development.AbelianVarietyTheory.Counterexamples.ModuliSurvey.IsQProjOverOfIsProjOver
public import Development.AbelianVarietyTheory.Definitions.RegularCharts.Reframe
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsFrameVec
public import Development.AbelianVarietyTheory.Proofs.GenericRegularity.FrameNormsContinuousAlongEmbeddingFamilies
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.AbelianMapLieModelLatticeStatement
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginRootIndexBound
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.TriangularSpanCoeffRatio
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.DefiniteFormStabilizerFiniteAwayFromP
import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ModelSmall
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ReduceModChar
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AutomorphicSpectrum.Definitions.MetricPeriods.PairRelationOfScaledRatio
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.CommonZeroEvaluation.ConstantRegularAwayFibres, Development.WeilBound.CoreStatements.CommonZeroEvaluation.EigenLatticeDecomposition, Development.WeilBound.CoreStatements.CommonZeroEvaluation.ExistsLocalChartCentre, Development.WeilBound.CoreStatements.CommonZeroEvaluation.LieLatticeActionStable, Development.WeilBound.CoreStatements.CommonZeroEvaluation.LieLatticeLocalRing, Development.WeilBound.CoreStatements.CommonZeroEvaluation.LieModelLocalSubringAction, Development.WeilBound.CoreStatements.CommonZeroEvaluation.SubringSpecMorphismExt, Development.WeilBound.CoreStatements.CommonZeroEvaluation.GenericFrameRootOrigin, Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginGenericFrameRelay, Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginGenericFrameRelayStatement

-- ===== clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.ConstantRegularAwayFibres =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.CommonZeroEvaluation.ConstantRegularAwayFibres", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeLine\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsHomogeneousCompIdeal\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.GenMapFromSpecStalk\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.DefiniteFormStabilizerFiniteAwayFromP\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ModelSmall\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory
open NumberField IsDedekindDomain Filter Topology
open Formalism.L2.Pj ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.BasicNotions Formalism.MainNotions
open GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Rec GlobalTheory.CompanionTheory.Ar.Plug

noncomputable section

namespace ModelDimension

theorem mem_regAt_of_over {X : Scheme.{0}} {Ω : Type} [Field Ω] {ξ : Spec (CommRingCat.of Ω) ⟶ X}
    {R : Type} [CommRing R] (g : X ⟶ Spec (CommRingCat.of R)) (φ : R →+* Ω)
    (h : ξ ≫ g = Spec.map (CommRingCat.ofHom φ)) (q : Cpt ξ) (r : R) : φ r ∈ regAt ξ q := by
  obtain ⟨ψ, hψ⟩ := Spec.map_surjective (X.fromSpecStalk q.1 ≫ g)
  have h1 : Spec.map (ψ ≫ CommRingCat.ofHom (genMap ξ q)) = Spec.map (CommRingCat.ofHom φ) :=
    (Spec.map_comp _ _).trans ((congrArg (Spec.map (CommRingCat.ofHom (genMap ξ q)) ≫ ·) hψ).trans
      ((Category.assoc _ _ _).symm.trans ((congrArg (· ≫ g) (LieCarrier.genMap_fromSpecStalk q)).trans h)))
  have h2 := Spec.map_injective h1
  exact ⟨ψ.hom r, congrArg (fun t => t.hom r) h2⟩

theorem inv_natCast_mem_regAt {X : Scheme.{0}} {Ω : Type} [Field Ω] {ξ : Spec (CommRingCat.of Ω) ⟶ X}
    (q : Cpt ξ) (hq : ∀ p : ℕ, p.Prime → ¬ InFibre ξ p q) (n : ℕ) : ((n : Ω))⁻¹ ∈ regAt ξ q := by
  induction n using Nat.recOnMul with
  | zero => simp
  | one => simp
  | prime p hp => exact (not_not.1 (hq p hp)).2.2
  | mul a b ha hb => rw [Nat.cast_mul, mul_inv]; exact mul_mem ha hb

theorem constant_regular_away_fibres : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H) (Xo : Moduli Dw l) (c : Coeff l) (Y : Model Xo c (algebraMap (𝓞 c.F) c.F)) (S : Finset ℕ) (Ω : Type) [Field Ω] (K : Type) [Fintype K] (J : K → Type) (y : (Σ k, J k) → Ω) (𝔐 : HodgeCpt Y S y) (q : Cpt 𝔐.ξ), (∀ p : ℕ, p.Prime → ¬ InFibre 𝔐.ξ p q) → ∀ a : c.F, 𝔐.cst a ∈ regAt 𝔐.ξ q := by
  intro E _ _ _ H Dw l Xo c Y S Ω _ K _ J y 𝔐 q hq a
  have hfin := c.fin
  have halg : IsAlgebraic ℤ a :=
    (IsFractionRing.isAlgebraic_iff ℤ ℚ c.F).2 (Algebra.IsAlgebraic.isAlgebraic (R := ℚ) a)
  obtain ⟨n, o, hn, ho⟩ := halg.exists_nsmul_eq (𝓞 c.F)
  have h1 : 𝔐.cst (algebraMap (𝓞 c.F) c.F o) ∈ regAt 𝔐.ξ q :=
    mem_regAt_of_over (𝔐.f ≫ Y.s) (𝔐.cst.comp (algebraMap (𝓞 c.F) c.F)) 𝔐.cst_over q o
  have h0 : (n : Ω) ≠ 0 := by
    rw [← map_natCast 𝔐.cst]
    exact (map_ne_zero _).2 (Nat.cast_ne_zero.2 hn)
  have h2 : 𝔐.cst a = (n : Ω)⁻¹ * 𝔐.cst (algebraMap (𝓞 c.F) c.F o) := by
    rw [← ho, nsmul_eq_mul, map_mul, map_natCast, inv_mul_cancel_left₀ h0]
  rw [h2]
  exact mul_mem (inv_natCast_mem_regAt q hq n) h1

end ModelDimension
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.ConstantRegularAwayFibres =====

-- ===== clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.EigenLatticeDecomposition =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.CommonZeroEvaluation.EigenLatticeDecomposition", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.LieModel\npublic import Mathlib.NumberTheory.NumberField.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open NumberField
open GlobalTheory.CompanionTheory.Ar

noncomputable section

namespace ModelDimension

open scoped TensorProduct in
theorem chars_injective {E : Type} [Field E] [NumberField E] {Ω : Type} [Field Ω] {ι : Type} [Fintype ι]
    (emb : ι → (𝓞 E →+* Ω)) (hinj : Function.Injective emb) (hcard : Fintype.card ι = Module.finrank ℚ E)
    (Φ : Ω ⊗[ℤ] 𝓞 E →ₗ[Ω] (ι → Ω)) (hΦ : ∀ a j, Φ (1 ⊗ₜ a) j = emb j a) : Function.Injective Φ := by
  have hli : LinearIndependent Ω (fun j => (emb j : 𝓞 E → Ω)) :=
    (linearIndependent_monoidHom (𝓞 E) Ω).comp (fun j => (emb j : 𝓞 E →* Ω))
      (fun i j h => hinj (RingHom.ext fun a => DFunLike.congr_fun h a))
  have hsp := span_flip_eq_top_iff_linearIndependent.2 hli
  have hs : Function.Surjective Φ := by
    rw [← LinearMap.range_eq_top, eq_top_iff, ← hsp, Submodule.span_le]
    rintro _ ⟨a, rfl⟩
    exact ⟨1 ⊗ₜ a, funext fun j => hΦ a j⟩
  refine (LinearMap.injective_iff_surjective_of_finrank_eq_finrank ?_).2 hs
  rw [Module.finrank_baseChange, RingOfIntegers.rank, Module.finrank_fintype_fun_eq_card, hcard]

theorem eigen_lattice_decomposition : ∀ (E : Type) [Field E] [NumberField E] (Ω : Type) [Field Ω] [CharZero Ω] (F₀ : Subfield Ω) (B A : Subring Ω), (∀ x ∈ F₀, x ∈ B) → B ≤ A → ∀ (ι : Type) [Fintype ι] (emb : ι → (𝓞 E →+* Ω)), Function.Injective emb → Fintype.card ι = Module.finrank ℚ E → (∀ i a, emb i a ∈ F₀) → ∀ (Li : Type) [AddCommGroup Li] [Module Ω Li] (ρ : 𝓞 E →+* Module.End Ω Li) (L : Submodule B Li), (∀ a, ∀ e ∈ L, ρ a e ∈ L) → ∀ (i : ι) (e : Li), e ∈ Submodule.span A (L : Set Li) → e ∈ eigSp ρ (emb i) → e ∈ Submodule.span A ((L ⊓ (eigSp ρ (emb i)).restrictScalars B : Submodule B Li) : Set Li) := by
  intro E _ _ Ω _ _ F₀ B A hFB hBA ι _ emb hinj hcard hF Li _ _ ρ L hL i e he hei
  classical
  have hne : ∀ j, ∃ a, j ≠ i → emb i a ≠ emb j a := fun j => by
    by_contra h
    push Not at h
    exact (h 0).1 (hinj (RingHom.ext fun a => (h a).2.symm))
  choose a ha using hne
  let Φ : TensorProduct ℤ Ω (𝓞 E) →ₐ[Ω] (ι → Ω) :=
    Algebra.TensorProduct.lift (Algebra.ofId Ω _) (RingHom.pi emb).toIntAlgHom fun _ _ => Commute.all _ _
  let Ψ : TensorProduct ℤ Ω (𝓞 E) →ₐ[Ω] Module.End Ω Li :=
    Algebra.TensorProduct.lift (Algebra.ofId Ω _) ρ.toIntAlgHom fun x y => Algebra.commutes x _
  have hΦ : ∀ b j, Φ (1 ⊗ₜ b) j = emb j b := fun b j => by
    have := Algebra.TensorProduct.lift_tmul (Algebra.ofId Ω _) (RingHom.pi emb).toIntAlgHom
      (fun _ _ => Commute.all _ _) 1 b
    rw [map_one, one_mul] at this
    exact congrFun this j
  have hΨ : ∀ b, Ψ (1 ⊗ₜ b) = ρ b := fun b => by
    have := Algebra.TensorProduct.lift_tmul (Algebra.ofId Ω _) ρ.toIntAlgHom
      (fun x y => Algebra.commutes x _) 1 b
    rw [map_one, one_mul] at this
    exact this
  have hΦi : Function.Injective Φ := chars_injective emb hinj hcard Φ.toLinearMap hΦ
  let t : ι → TensorProduct ℤ Ω (𝓞 E) := fun j =>
    (emb i (a j) - emb j (a j))⁻¹ • (1 ⊗ₜ a j - algebraMap Ω _ (emb j (a j)))
  have ht : ∀ j x, Ψ (t j) x = (emb i (a j) - emb j (a j))⁻¹ • (ρ (a j) x - emb j (a j) • x) := fun j x => by
    simp only [t, map_smul, map_sub, hΨ, AlgHom.commutes, LinearMap.smul_apply, LinearMap.sub_apply,
      Module.algebraMap_end_apply]
  let p := ∏ j ∈ Finset.univ.erase i, t j
  have hmem : ∀ x, x ∈ eigSp ρ (emb i) ↔ ∀ b, ρ b x = emb i b • x := fun x => by
    simp [eigSp, sub_eq_zero]
  have h1 : ∀ x ∈ L, Ψ p x ∈ L := by
    refine Finset.prod_induction _ (fun q => ∀ x ∈ L, Ψ q x ∈ L) (fun q r hq hr x hx => ?_) (fun x hx => ?_)
      fun j _ x hx => ?_
    · rw [map_mul]; exact hq _ (hr x hx)
    · rw [map_one]; exact hx
    · rw [ht]
      exact L.smul_mem (⟨_, hFB _ (inv_mem (sub_mem (hF i _) (hF j _)))⟩ : B)
        (sub_mem (hL _ x hx) (L.smul_mem (⟨_, hFB _ (hF j _)⟩ : B) hx))
  have h2 : ∀ x ∈ eigSp ρ (emb i), Ψ p x = x := by
    refine Finset.prod_induction _ (fun q => ∀ x ∈ eigSp ρ (emb i), Ψ q x = x) (fun q r hq hr x hx => ?_)
      (fun x hx => ?_) fun j hj x hx => ?_
    · rw [map_mul, mul_apply_eq_comp, hr x hx, hq x hx]
    · rw [map_one]; rfl
    · rw [ht, (hmem x).1 hx, ← sub_smul, smul_smul,
        inv_mul_cancel₀ (sub_ne_zero.2 (ha j (Finset.ne_of_mem_erase hj))), one_smul]
  have h3 : ∀ x, Ψ p x ∈ eigSp ρ (emb i) := fun x => (hmem _).2 fun b => by
    have hz : (1 ⊗ₜ b - algebraMap Ω _ (emb i b)) * p = 0 := by
      apply hΦi
      rw [map_zero, map_mul]
      funext k
      rw [Pi.mul_apply, Pi.zero_apply]
      by_cases hk : k = i
      · subst hk
        rw [map_sub, Pi.sub_apply, hΦ, AlgHom.commutes]
        simp
      · apply mul_eq_zero_of_right
        simp only [p, map_prod, Finset.prod_apply]
        refine Finset.prod_eq_zero (Finset.mem_erase.2 ⟨hk, Finset.mem_univ k⟩) ?_
        simp only [t, map_smul, map_sub, AlgHom.commutes, Pi.smul_apply, Pi.sub_apply, hΦ]
        simp
    have h4 := congrArg (fun q => Ψ q x) hz
    simp only [map_mul, map_sub, hΨ, AlgHom.commutes, map_zero, mul_apply_eq_comp, LinearMap.sub_apply,
      Module.algebraMap_end_apply, LinearMap.zero_apply] at h4
    exact sub_eq_zero.1 h4
  rw [← h2 e hei]
  clear hei
  induction he using Submodule.span_induction with
  | mem x hx => exact Submodule.subset_span ⟨h1 x hx, h3 x⟩
  | zero => rw [map_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
  | smul r x _ hx => rw [LinearMap.map_smul_of_tower]; exact Submodule.smul_mem _ _ hx

end ModelDimension
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.EigenLatticeDecomposition =====

-- ===== clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.ExistsLocalChartCentre =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.CommonZeroEvaluation.ExistsLocalChartCentre", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.CoordsAt\npublic import Development.WeilBound.CoreStatements.CommonZeroEvaluation.GenMapEqOfFactor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory
open GlobalTheory.CompanionTheory.Ar

noncomputable section

namespace ModelDimension

theorem inv_mem_range_of_local {S Ω : Type} [CommRing S] [Field Ω] (A : Subring Ω) (ψ : S →+* A)
    (hψ : IsLocalHom ψ) (g : S →+* Ω) (hg : g = (algebraMap A Ω).comp ψ) :
    ∀ a ∈ g.range, a ≠ 0 → a⁻¹ ∈ A → a⁻¹ ∈ g.range := by
  rintro _ ⟨s, rfl⟩ h0 hi
  have hu : IsUnit (ψ s) := by
    refine IsUnit.of_mul_eq_one (⟨_, hi⟩ : A) (Subtype.ext ?_)
    have h1 := mul_inv_cancel₀ h0
    subst hg
    exact h1
  obtain ⟨s', hs'⟩ := (IsUnit.of_map ψ s hu).exists_right_inv
  refine ⟨s', ?_⟩
  have h2 := congrArg g hs'
  rw [map_mul, map_one] at h2
  exact eq_inv_of_mul_eq_one_right h2

theorem exists_local_chart_centre : ∀ (X : Scheme.{0}) (Ω : Type) [Field Ω] (ξ : Spec (CommRingCat.of Ω) ⟶ X) (κ : Type) (x : κ → Ω), CoordTie ℤ ξ x → ∀ (A : Subring Ω) [IsLocalRing A] (c : κ), x c ≠ 0 → (∀ c', x c' / x c ∈ A) → ∃ (zq : Spec (CommRingCat.of A) ⟶ X) (hc : genPt ξ ⤳ centre zq), Spec.map (CommRingCat.ofHom (algebraMap A Ω)) ≫ zq = ξ ∧ InChart ξ x c ⟨centre zq, hc⟩ ∧ (∀ a ∈ regAt ξ ⟨centre zq, hc⟩, a ∈ A) ∧ (∀ a ∈ regAt ξ ⟨centre zq, hc⟩, a ≠ 0 → a⁻¹ ∈ A → a⁻¹ ∈ regAt ξ ⟨centre zq, hc⟩) := by
  intro X Ω _ ξ κ x T A _ c hc hA
  obtain ⟨V, hV, hmem⟩ := T.affine c hc
  have hgV : genPt ξ ∈ V := by
    refine (hmem _).2 ⟨specializes_rfl, hc, fun j => ?_⟩
    obtain ⟨s, hs⟩ := T.gen.bij.2 (x j / x c)
    refine ⟨s, ?_⟩
    rw [← hs]
    simp only [genMap, TopCat.Presheaf.stalkSpecializes_refl]
    rfl
  let ρ : Γ(X, V) →+* Ω := (X.presheaf.germ V (genPt ξ) hgV ≫ Scheme.stalkClosedPointTo ξ).hom
  have hρ : ∀ (f : Γ(X, V)) (p : Cpt ξ) (hp : p.1 ∈ V), genMap ξ p (X.presheaf.germ V p.1 hp f) = ρ f :=
    fun f p hp => genMap_germ' V hgV f p hp
  have hρA : ∀ f, ρ f ∈ A := fun f => by
    have h1 : ρ f ∈ Algebra.adjoin ℤ (Set.range fun j => x j / x c) :=
      (T.ring c hc _).2 fun p hp => ⟨_, hρ f p ((hmem _).2 ⟨p.2, hp⟩)⟩
    generalize ρ f = t at h1
    induction h1 using Algebra.adjoin_induction with
    | mem a ha => obtain ⟨j, rfl⟩ := ha; exact hA j
    | algebraMap r => simpa using intCast_mem A r
    | add a b _ _ ha hb => exact add_mem ha hb
    | mul a b _ _ ha hb => exact mul_mem ha hb
  let φ : Γ(X, V) ⟶ CommRingCat.of A := CommRingCat.ofHom (ρ.codRestrict A hρA)
  have hz : centre (Spec.map φ ≫ hV.fromSpec) ∈ V := by
    change _ ∈ (V : Set X)
    rw [← hV.range_fromSpec]
    exact ⟨_, rfl⟩
  obtain ⟨hs, hin⟩ := (hmem _).1 hz
  have hfac : Spec.map (CommRingCat.ofHom (algebraMap A Ω)) ≫ Spec.map φ ≫ hV.fromSpec = ξ := by
    have e1 : φ ≫ CommRingCat.ofHom (algebraMap A Ω) =
        X.presheaf.germ V (genPt ξ) hgV ≫ Scheme.stalkClosedPointTo ξ := rfl
    have e2 : Spec.map (X.presheaf.germ V (genPt ξ) hgV) ≫ hV.fromSpec = X.fromSpecStalk (genPt ξ) :=
      hV.fromSpecStalk_eq_fromSpecStalk hgV
    rw [← Category.assoc, ← Spec.map_comp, e1]
    exact (congrArg (· ≫ hV.fromSpec) (Spec.map_comp _ _)).trans ((Category.assoc _ _ _).trans
      ((congrArg (Spec.map (Scheme.stalkClosedPointTo ξ) ≫ ·) e2).trans
        (Scheme.Spec_stalkClosedPointTo_fromSpecStalk ξ)))
  have hg := genMap_eq_of_factor (algebraMap A Ω) _ hfac hs
  refine ⟨Spec.map φ ≫ hV.fromSpec, hs, hfac, hin, ?_, ?_⟩
  · rintro _ ⟨s, rfl⟩
    rw [hg]
    exact Subtype.property _
  · exact inv_mem_range_of_local A (Scheme.stalkClosedPointTo (Spec.map φ ≫ hV.fromSpec)).hom
      (Scheme.isLocalHom_stalkClosedPointTo _) _ hg

end ModelDimension
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.ExistsLocalChartCentre =====

-- ===== clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.LieLatticeActionStable =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.CommonZeroEvaluation.LieLatticeActionStable", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.TwoWeightEqOneAddRoot\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.EigLat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory NumberField
open ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.CompanionTheory.Ar

noncomputable section

namespace ModelDimension

theorem lie_lattice_action_stable : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (X : Scheme.{0}) (tX : SAB H X) (Ω : Type) [Field Ω] (ξ : Spec (CommRingCat.of Ω) ⟶ X) (Li : Type) [AddCommGroup Li] [Module Ω Li] (M : LieModel tX.G ξ Li) (ρ : 𝓞 E →+* Module.End Ω Li), M.IsActOf tX.act.act ρ → ∀ (q : Cpt ξ) (a : 𝓞 E) (e : Li), e ∈ M.lat q → ρ a e ∈ M.lat q := by
  intro E _ _ _ H X tX Ω _ ξ Li _ _ M ρ hM q a e he
  unfold LieModel.lat at he ⊢
  induction he using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨v, hv1, hv2⟩ := hx
    apply Submodule.subset_span
    refine ⟨v ≫ tX.act.act a, ?_, ?_⟩
    · haveI := tX.act.hom a
      unfold IsTanAt at hv1 ⊢
      rw [Over.comp_left, ← Category.assoc, hv1, ← Over.comp_left, MonObj.one_comp]
    · rw [hM a x, Over.comp_left, hv2, Over.comp_left]
      exact Category.assoc _ _ _
  | zero => simp
  | add x y _ _ hx hy =>
    rw [map_add (f := _)]
    exact Submodule.add_mem _ hx hy
  | smul r x _ hx =>
    rw [Subring.smul_def, map_smul, ← Subring.smul_def]
    exact Submodule.smul_mem _ r hx

end ModelDimension
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.LieLatticeActionStable =====

-- ===== clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.LieLatticeLocalRing =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.CommonZeroEvaluation.LieLatticeLocalRing", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.EigLat\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieLatticeEvalFractionField\npublic import Development.WeilBound.CoreStatements.CommonZeroEvaluation.GenMapEqOfFactor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.GenMapFromSpecStalk\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory MonObj
open GlobalTheory.CompanionTheory.Ar

noncomputable section

namespace ModelDimension

theorem lie_lattice_local_ring : ∀ (X : Scheme.{0}) (G : CategoryTheory.Over X) [GrpObj G] [IsCommMonObj G] (Ω : Type) [Field Ω] (ξ : Spec (CommRingCat.of Ω) ⟶ X) (Li : Type) [AddCommGroup Li] [Module Ω Li] (M : LieModel G ξ Li) (A : Subring Ω) [IsLocalRing A], IsCptGen ξ → AlgebraicGeometry.Smooth G.hom → ∀ (zq : Spec (CommRingCat.of A) ⟶ X), Spec.map (CommRingCat.ofHom (algebraMap A Ω)) ≫ zq = ξ → ∀ (hc : genPt ξ ⤳ centre zq) (e : Li), e ∈ Submodule.span A (M.lat ⟨centre zq, hc⟩ : Set Li) ↔ ∃ v : GlobalTheory.CompanionTheory.Ar.epsAt zq ⟶ G, GlobalTheory.CompanionTheory.Ar.IsTanAt G zq v ∧ (M.pt e).left = Spec.map (CommRingCat.ofHom (GlobalTheory.CompanionTheory.Ar.dualMap (algebraMap A Ω))) ≫ v.left := by
  intro X G _ _ Ω _ ξ Li _ _ M A _ hξ hG zq hz hc e
  have hg := genMap_eq_of_factor (algebraMap A Ω) zq hz hc
  subst hz
  rw [← lieLat_fibAt_iff X G Ω _ Li M A zq Ω Li M hξ hG hc specializes_rfl e]
  unfold LieModel.fibAt
  refine Iff.of_eq (congrArg (fun s : Set Li => e ∈ Submodule.span A s) (Set.ext fun w => ⟨fun hw => ?_, ?_⟩))
  · obtain ⟨v, hv⟩ := ((lieLat_carrier X G Ω _ Li M _).1 w).1 hw
    refine ⟨hc, w, hw, LieFib.valAt_base M zq hc specializes_rfl v hv _
      (LieCarrier.epsHom (Scheme.stalkClosedPointTo zq).hom _ _ (Scheme.Spec_stalkClosedPointTo_fromSpecStalk zq) ≫ v)
      ?_ rfl⟩
    have e1 := LieFib.spec_dualMap_comp (Scheme.stalkClosedPointTo zq).hom (algebraMap A Ω)
    rw [← hg] at e1
    exact hv.2.trans ((congrArg (· ≫ v.left) e1).trans (Category.assoc _ _ _))
  · rintro ⟨_, e', he', h, v, hv, hw⟩
    have hg' := genMap_eq_of_factor (RingHom.id Ω) (Spec.map (CommRingCat.ofHom (algebraMap A Ω)) ≫ zq)
      (by rw [CommRingCat.ofHom_id, Spec.map_id, Category.id_comp]) h
    have h2 := hv.2
    rw [hg'] at h2
    have : w = e' := M.inj (Over.OverMorphism.ext (hw.trans h2.symm))
    rw [this]
    exact he'

end ModelDimension
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.LieLatticeLocalRing =====

-- ===== clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.LieModelLocalSubringAction =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.CommonZeroEvaluation.LieModelLocalSubringAction", "h": "module\n\npublic import Development.WeilBound.CoreStatements.CommonZeroEvaluation.ExistsCorr\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ConjEmbRtOfNe\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsHomogeneousCompIdeal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.DefiniteFormStabilizerFiniteAwayFromP\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ModelSmall\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory
open NumberField IsDedekindDomain Filter Topology
open Formalism.L2.Pj ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.BasicNotions Formalism.MainNotions
open GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Rec GlobalTheory.CompanionTheory.Ar.Plug

noncomputable section

namespace ModelDimension.Tan

open MonoidalCategory CartesianMonoidalCategory MonObj

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F} (Y : Model Xo c β)

theorem exists_basis {X : Scheme.{0}} (tX : SAB H X) (f : X ⟶ Y.X) (m : SABMap tX Y.t f) {S : Type} [CommRing S]
    [Algebra c.F S] (z : Spec (CommRingCat.of S) ⟶ X) (y : FrPt Xo c S) (hy : Small.ptY Y y = z ≫ f) (τ : E →+* ℂ) :
    ∃ ub : Fin (Dw.mult τ) → (GlobalTheory.CompanionTheory.Ar.epsAt z ⟶ tX.G), (∀ i, (ub i).left ≫ m.φ = Small.tanY Y y τ i) ∧
      (∀ i, GlobalTheory.CompanionTheory.Ar.IsTanAt tX.G z (ub i)) ∧
      (∀ i a, ub i ≫ tX.act.act a = sc z (algebraMap c.F S (embK c τ a)) ≫ ub i) ∧
      ∀ v : GlobalTheory.CompanionTheory.Ar.epsAt z ⟶ tX.G, GlobalTheory.CompanionTheory.Ar.IsTanAt tX.G z v →
        (∀ a, v ≫ tX.act.act a = sc z (algebraMap c.F S (embK c τ a)) ≫ v) →
        ∃ cf : Fin (Dw.mult τ) → S, v = (List.ofFn fun i => sc z (cf i) ≫ ub i).prod := by
  obtain ⟨C1, h1⟩ := exists_corr (a₁ := tX.act.act) (a₂ := Y.t.act.act) m.cart m.act hy.symm
  obtain ⟨C2, h2⟩ := exists_corr (a₁ := Y.oF.t.act.act) (a₂ := Y.t.act.act) (x₁ := Small.ptF y)
    (x₂ := Small.ptY Y y) Y.m.cart Y.m.act rfl
  obtain ⟨C3, h3⟩ := exists_corr (a₁ := Y.oF.t.act.act) (a₂ := Xo.univ.t.act.act) Y.m0.cart Y.m0.act
    (Small.ptF_fst y)
  let Θ := (C3.symm.trans C2).trans C1.symm
  let u : Fin (Dw.mult τ) → (GlobalTheory.CompanionTheory.Ar.epsAt y.x ⟶ Xo.univ.t.G) := fun i =>
    CategoryTheory.Over.homMk (y.u τ i) (y.tan τ i).1
  refine ⟨fun i => Θ.e (u i), fun i => ?_, fun i => (Θ.tan _).2 (y.tan τ i).2, fun i a => ?_, fun v hv hE => ?_⟩
  · have e1 : C1.e (Θ.e (u i)) = C2.e (C3.e.symm (u i)) := C1.e.apply_symm_apply _
    have e2 : (C3.e.symm (u i)).left = Small.tanF Y y τ i := by
      refine Small.eq_tanF Y y τ i _ ?_ (CategoryTheory.Over.w _)
      exact (h3 _).symm.trans (congrArg (fun q => q.left) (C3.e.apply_symm_apply (u i)))
    refine (h1 _).symm.trans ?_
    rw [e1, h2, e2]
    rfl
  · rw [← Θ.act, ← Θ.scale]
    exact congrArg Θ.e (CategoryTheory.Over.OverMorphism.ext (y.eig τ i a))
  · obtain ⟨p, rfl⟩ := Θ.e.surjective v
    have hp : Formalism.L2.Pj.IsTanAt y.x p.left := ⟨CategoryTheory.Over.w p, (Θ.tan p).1 hv⟩
    have hpE : Formalism.L2.Pj.IsEigAt c τ (Xo := Xo) p.left := fun a => by
      have e := hE a
      rw [← Θ.act, ← Θ.scale] at e
      exact congrArg (fun q => q.left) (Θ.e.injective e)
    obtain ⟨cf, ⟨U, hU, hp'⟩, -⟩ := y.basis τ _ hp hpE
    have e1 : p = (List.ofFn U).prod := CategoryTheory.Over.OverMorphism.ext hp'.symm
    refine ⟨cf, ?_⟩
    rw [e1, map_list_prod, List.map_ofFn]
    refine congrArg List.prod (congrArg List.ofFn (funext fun i => ?_))
    refine Eq.trans ?_ (Θ.scale (cf i) (u i))
    exact congrArg Θ.e (CategoryTheory.Over.OverMorphism.ext (hU i))

end ModelDimension.Tan

end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.LieModelLocalSubringAction =====

-- ===== clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.SubringSpecMorphismExt =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.CommonZeroEvaluation.SubringSpecMorphismExt", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PushInvertible\npublic import Development.AbelianVarietyTheory.Counterexamples.ModuliSurvey.IsQProjOverOfIsProjOver\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsHomogeneousCompIdeal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.DefiniteFormStabilizerFiniteAwayFromP\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ModelSmall\nimport Development.AutomorphicSpectrum.Definitions.MetricPeriods.PairRelationOfScaledRatio\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory
open NumberField IsDedekindDomain Filter Topology
open Formalism.L2.Pj ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.BasicNotions Formalism.MainNotions
open GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Rec GlobalTheory.CompanionTheory.Ar.Plug

noncomputable section

namespace ModelDimension

theorem subring_spec_morphism_ext : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H) (Xo : Moduli Dw l) (c : Coeff l) (O : Type) [CommRing O] (β : O →+* c.F) (Y : Model Xo c β) (Ω : Type) [Field Ω] (A : Subring Ω) (g₁ g₂ : Spec (CommRingCat.of A) ⟶ Y.X), Spec.map (CommRingCat.ofHom (algebraMap A Ω)) ≫ g₁ = Spec.map (CommRingCat.ofHom (algebraMap A Ω)) ≫ g₂ → g₁ = g₂ := by
  intro E _ _ _ H Dw l Xo c O _ β Y Ω _ A g₁ g₂ h
  have hpr : IsProper Y.s := GlobalTheory.SchemeWords.isProper_of_isProjOver Y.proj
  have hsep : Y.X.IsSeparated := by
    constructor
    rw [← Limits.terminal.comp_from Y.s]
    infer_instance
  have hdom : IsDominant (Spec.map (CommRingCat.ofHom (algebraMap A Ω))) := by
    constructor
    exact (PrimeSpectrum.denseRange_comap_iff_ker_le_nilRadical (algebraMap A Ω)).2 (by
      rw [(RingHom.injective_iff_ker_eq_bot _).1 (Subtype.val_injective)]
      exact bot_le)
  exact ext_of_isDominant _ h

end ModelDimension
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.SubringSpecMorphismExt =====

-- ===== clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.GenericFrameRootOrigin =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.CommonZeroEvaluation.GenericFrameRootOrigin", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.RegularCharts.Reframe\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsFrameVec\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsHomogeneousCompIdeal\npublic import Development.AbelianVarietyTheory.Proofs.GenericRegularity.FrameNormsContinuousAlongEmbeddingFamilies\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.AbelianMapLieModelLatticeStatement\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginRootIndexBound\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.TriangularSpanCoeffRatio\npublic import Development.WeilBound.CoreStatements.CommonZeroEvaluation.ConstantRegularAwayFibres\npublic import Development.WeilBound.CoreStatements.CommonZeroEvaluation.EigenLatticeDecomposition\npublic import Development.WeilBound.CoreStatements.CommonZeroEvaluation.ExistsLocalChartCentre\npublic import Development.WeilBound.CoreStatements.CommonZeroEvaluation.LieLatticeActionStable\npublic import Development.WeilBound.CoreStatements.CommonZeroEvaluation.LieLatticeLocalRing\npublic import Development.WeilBound.CoreStatements.CommonZeroEvaluation.LieModelLocalSubringAction\npublic import Development.WeilBound.CoreStatements.CommonZeroEvaluation.SubringSpecMorphismExt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.DefiniteFormStabilizerFiniteAwayFromP\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ModelSmall\npublic import Development.WeilBound.CoreStatements.CommonZeroEvaluation.ExistsCorr\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Filter Topology
open Formalism.L2.Pj ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.BasicNotions Formalism.MainNotions
open GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Rec GlobalTheory.CompanionTheory.Ar.Plug

open AlgebraicGeometry CategoryTheory
noncomputable section
namespace GlobalTheory.CompanionTheory.Ar.Plug.KeyRootZ

theorem diag_unit {Ω Li : Type} [Field Ω] [AddCommGroup Li] [Module Ω Li] (A : Subring Ω) {n : ℕ} (u w b : Fin n → Li)
    (dd tt : Fin n → Ω) (hu : LinearIndependent Ω u) (hw : FinRd.Roots.TriIn u dd w) (hb : FinRd.Roots.TriIn u tt b)
    (hd : ∀ i, dd i ≠ 0) (ht : ∀ i, tt i ≠ 0)
    (hs : Submodule.span A (Set.range w) = Submodule.span A (Set.range b)) (i : Fin n) :
    ∃ c ∈ A, ∃ c' ∈ A, dd i = c * tt i ∧ tt i = c' * dd i := by
  obtain ⟨c, hc⟩ := FinRd.Roots.diag_compare_of_triIn A Ω Li n u w b dd tt 1 hu hw hb ht
    (fun x hx => by rw [one_smul, ← hs]; exact hx) i
  obtain ⟨c', hc'⟩ := FinRd.Roots.diag_compare_of_triIn A Ω Li n u b w tt dd 1 hu hb hw hd
    (fun x hx => by rw [one_smul, hs]; exact hx) i
  refine ⟨c, c.2, c', c'.2, ?_, ?_⟩
  · have e := hc
    rw [map_one, one_mul] at e
    exact e
  · have e := hc'
    rw [map_one, one_mul] at e
    exact e

theorem span_mono_subring {Ω Li : Type} [Field Ω] [AddCommGroup Li] [Module Ω Li] {B A : Subring Ω} (hBA : B ≤ A)
    {T : Set Li} {x : Li} (hx : x ∈ Submodule.span B T) : x ∈ Submodule.span A T := by
  induction hx using Submodule.span_induction with
  | mem x hx => exact Submodule.subset_span hx
  | zero => exact Submodule.zero_mem _
  | add x y _ _ hx hy => exact Submodule.add_mem _ hx hy
  | smul a x _ hx => exact Submodule.smul_mem _ (⟨a, hBA a.2⟩ : A) hx

theorem emb_injective {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {l : Level H}
    (c : Coeff l) {Ω : Type} [Field Ω] (cst : c.F →+* Ω) :
    Function.Injective fun s : CMType H ⊕ CMType H => cst.comp (labelEmb c s) := by
  intro s s' h
  apply (Small.labelC_bijective H).1
  have h1 : ∀ a : 𝓞 E, embK c (Small.labelC s) a = embK c (Small.labelC s') a := fun a => by
    rw [Small.embK_labelC, Small.embK_labelC]
    exact cst.injective (congrArg (fun f : 𝓞 E →+* Ω => f a) h)
  have h2 : ∀ a : 𝓞 E, Small.labelC s (a : E) = Small.labelC s' (a : E) := fun a =>
    congrArg (fun x : c.F => (x : ℂ)) (h1 a)
  exact IsLocalization.ringHom_ext (nonZeroDivisors (𝓞 E)) (RingHom.ext fun a => h2 a)

theorem zpow_unit_mem {Ω : Type} [Field Ω] (A : Subring Ω) {a a' : Ω} (ha : a ∈ A) (ha' : a' ∈ A) (h : a * a' = 1)
    {n : ℤ} (hn : n = 1 ∨ n = -1) : a ^ n ∈ A ∧ (a ^ n)⁻¹ ∈ A := by
  have e : a⁻¹ = a' := (eq_inv_of_mul_eq_one_right h).symm
  rcases hn with rfl | rfl
  · rw [zpow_one]
    exact ⟨ha, e ▸ ha'⟩
  · rw [zpow_neg_one, inv_inv]
    exact ⟨e ▸ ha', ha⟩

theorem rootSgn_eq {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} (Dw : Datum H)
    (r : RootIx Dw) : HodgeCpt.rootSgn Dw r = 1 ∨ HodgeCpt.rootSgn Dw r = -1 := by
  unfold HodgeCpt.rootSgn
  split_ifs <;> simp

theorem final_unit {Ω : Type} [Field Ω] (V : ValuationSubring Ω) {D t m c₁ c₂ : Ω} {n : ℤ} (hn : n = 1 ∨ n = -1)
    (hD : D ≠ 0) (ht : t ≠ 0) (hm : m ≠ 0) (e₁ : D = c₁ * t) (e₂ : t = c₂ * D) (h₁ : c₁ ∈ V) (h₂ : c₂ ∈ V)
    (u₁ : m * t ^ (-n) ∈ V) (u₂ : (m * t ^ (-n))⁻¹ ∈ V) : ∃ v : Vˣ, D ^ n = ((v : V) : Ω) * m := by
  have hc : c₁ * c₂ = 1 := by
    have h : (c₁ * c₂) * D = 1 * D := by
      rw [one_mul, mul_assoc, ← e₂, ← e₁]
    exact mul_right_cancel₀ hD h
  obtain ⟨p₁, p₂⟩ := zpow_unit_mem V.toSubring h₁ h₂ hc hn
  have p₁' : c₁ ^ n ∈ V := p₁
  have p₂' : (c₁ ^ n)⁻¹ ∈ V := p₂
  have hc0 : c₁ ≠ 0 := left_ne_zero_of_mul_eq_one hc
  have hv : c₁ ^ n * (m * t ^ (-n))⁻¹ ≠ 0 :=
    mul_ne_zero (zpow_ne_zero _ hc0) (inv_ne_zero (mul_ne_zero hm (zpow_ne_zero _ ht)))
  have m₁ : c₁ ^ n * (m * t ^ (-n))⁻¹ ∈ V := mul_mem p₁' u₂
  have m₂ : (c₁ ^ n * (m * t ^ (-n))⁻¹)⁻¹ ∈ V := by
    rw [mul_inv, inv_inv]
    exact mul_mem p₂' u₁
  refine ⟨⟨⟨_, m₁⟩, ⟨_, m₂⟩, Subtype.ext (mul_inv_cancel₀ hv), Subtype.ext (inv_mul_cancel₀ hv)⟩, ?_⟩
  show D ^ n = c₁ ^ n * (m * t ^ (-n))⁻¹ * m
  rw [e₁, mul_zpow, mul_inv, zpow_neg, inv_inv, mul_assoc, mul_comm m⁻¹, mul_assoc, inv_mul_cancel₀ hm, mul_one]

theorem tangent_span : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H) (Xo : Moduli Dw l) (c : Coeff l) (O : Type) [CommRing O] (β : O →+* c.F) (Y : Model Xo c β) (X : Scheme.{0}) (tX : SAB H X) (f : X ⟶ Y.X) (m : SABMap tX Y.t f) (Ω : Type) [Field Ω] [Algebra c.F Ω] (A : Subring Ω) [IsLocalRing A] [Algebra c.F A] [IsScalarTower c.F A Ω] (ξ : Spec (CommRingCat.of Ω) ⟶ X), IsCptGen ξ → ∀ (Li : Type) [AddCommGroup Li] [Module Ω Li] (M : LieModel tX.G ξ Li) (ρ : 𝓞 E →+* Module.End Ω Li), M.IsActOf tX.act.act ρ → ∀ (zq : Spec (CommRingCat.of A) ⟶ X), Spec.map (CommRingCat.ofHom (algebraMap A Ω)) ≫ zq = ξ → ∀ (hc : genPt ξ ⤳ centre zq) (y : FrPt Xo c A), Small.ptY Y y = zq ≫ f → ∀ yΩ : FrPt Xo c Ω, yΩ.x = spMap (algebraMap A Ω) ≫ y.x → (∀ τ i, yΩ.u τ i = spMap (Formalism.L2.Pj.dualMap (algebraMap A Ω)) ≫ y.u τ i) → ∀ (τ : E →+* ℂ) (r : ℕ) (hr : r = Dw.mult τ), ∃ w : Fin r → Li, (∀ i, (M.pt (w i)).left ≫ m.φ = Small.tanY Y yΩ τ (Fin.cast hr i)) ∧ ∀ e : Li, (e ∈ Submodule.span A (M.lat ⟨centre zq, hc⟩ : Set Li) ∧ e ∈ eigSp ρ ((algebraMap c.F Ω).comp (embK c τ))) ↔ e ∈ Submodule.span A (Set.range w) := by
  intro E _ _ _ H Dw l Xo c O _ β Y X tX f m Ω _ _ A _ _ _ ξ hξ Li _ _ M ρ hρ zq hz hc y hpt yΩ hx hu τ r hr
  subst hr
  obtain ⟨ub, hb1, hb2, hb3, hb4⟩ := ModelDimension.Tan.exists_basis Y tX f m zq y hpt τ
  obtain ⟨w, hw1, hw2⟩ := ModelDimension.Tan.span_eig (R := A) (F := Ω) Subtype.val_injective zq ξ hz M tX.act.act tX.act.hom ρ hρ
    ((algebraMap c.F A).comp (embK c τ)) ((algebraMap c.F Ω).comp (embK c τ))
    (fun a => IsScalarTower.algebraMap_apply c.F A Ω _) ub hb2 hb3 hb4
  refine ⟨w, ?_, fun e => ?_⟩
  · intro i
    rw [hw1, Category.assoc, hb1]
    simp only [Fin.cast_refl]
    symm
    have hF : Small.ptF yΩ = spMap (algebraMap A Ω) ≫ Small.ptF y := by
      apply Limits.pullback.hom_ext
      · rw [Category.assoc, Small.ptF_fst, Small.ptF_fst, hx]
      · rw [Category.assoc, Small.ptF_snd, Small.ptF_snd, ← Spec.map_comp, ← CommRingCat.ofHom_comp,
          ← IsScalarTower.algebraMap_eq]
    rw [Small.tanY, Small.tanY, ← Category.assoc,
      Small.eq_tanF Y yΩ τ i (spMap (GlobalTheory.CompanionTheory.Ar.dualMap (algebraMap A Ω)) ≫ Small.tanF Y y τ i)]
    · rfl
    · rw [Category.assoc, Small.tanF_φ, hu]
      rfl
    · rw [Category.assoc, Small.tanF_hom, hF, ← Category.assoc, ← Category.assoc, ← Spec.map_comp, ← Spec.map_comp,
        ← CommRingCat.ofHom_comp, ← CommRingCat.ofHom_comp]
      congr 3
      ext a <;> simp [GlobalTheory.CompanionTheory.Ar.dualMap, TrivSqZeroExt.algebraMap_eq_inl]
  · rw [ModelDimension.lie_lattice_local_ring X tX.G Ω ξ Li M A hξ tX.semi.smooth zq hz hc e]
    exact hw2 e

attribute [local instance 1100] Subalgebra.algebra in
attribute [local instance 100] IntermediateField.instAlgebraSubtypeMem in
theorem diag_root_line : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H) (Xo : Moduli Dw l) (c : Coeff l) (Y : Model Xo c (algebraMap (𝓞 c.F) c.F)) (S : Finset ℕ) (RM : Top.RootModel (CMType H) (Dw.p + Dw.q)) (Sys : PB.AnSys (Top.dimFl (CMType H) (Dw.p + Dw.q)) (Option (RootIx Dw))) (Fx : FixedData Y Sys) (Or : RootOrigin Y S RM Fx) (Fr : Small.GenFrame Or) (h : GenFrEx Xo c) (C : GlobalTheory.Reg.FChart h) (V : ValuationSubring RM.Ω), letI := Small.cstAlg Or; ∀ (ψ : C.R →ₐ[c.F] RM.Ω) (z : FrPt Xo c RM.Ω) (d : Ix Dw → (RM.Ω)ˣ), FrMap ψ C.y z → FrBor d Fr.y₀ z → (∀ x, ψ x ∈ V) → ∀ cc : (k : RM.K) → RM.ι k, (∀ k, RM.y ⟨k, cc k⟩ ≠ 0) → (∀ k i, RM.y ⟨k, i⟩ / RM.y ⟨k, cc k⟩ ∈ V) → ∀ r : RootIx Dw, ∃ v : Vˣ, ((d (Small.rootFrameIx Dw r) ^ HodgeCpt.rootSgn Dw r : (RM.Ω)ˣ) : RM.Ω) = ((v : V) : RM.Ω) * ((∏ k, RM.y ⟨k, cc k⟩ ^ RM.xdeg r k) * Or.e r) := by
  intro E _ _ _ H Dw l Xo c Y S RM Sys Fx Or Fr h C V
  letI := Small.cstAlg Or
  intro ψ z d hmap hbor hψ cc hy hrat r
  let A : Subring RM.Ω := V.toSubring
  haveI : IsLocalRing A := inferInstanceAs (IsLocalRing V)
  have hmemA : ∀ a : RM.Ω, a ∈ A ↔ a ∈ V := fun a => Iff.rfl
  have hcst : ∀ a : c.F, Or.𝔐.cst a ∈ A := fun a => by
    have h1 := hψ (algebraMap c.F C.R a)
    rw [ψ.commutes] at h1
    exact h1
  letI algA : Algebra c.F A := (Or.𝔐.cst.codRestrict A hcst).toAlgebra
  haveI towA : IsScalarTower c.F A RM.Ω := .of_algebraMap_eq fun _ => rfl
  have hxc : (∏ k, RM.y ⟨k, cc k⟩) ≠ 0 := Finset.prod_ne_zero_iff.2 fun k _ => hy k
  have hxr : ∀ c' : (k : RM.K) → RM.ι k, (∏ k, RM.y ⟨k, c' k⟩) / (∏ k, RM.y ⟨k, cc k⟩) ∈ A := fun c' => by
    rw [← Finset.prod_div_distrib]
    exact prod_mem fun k _ => hrat k (c' k)
  obtain ⟨zq, hc, hz, hch, hreg, hloc⟩ := ModelDimension.exists_local_chart_centre _ _ Or.𝔐.ξ _ _ Or.𝔐.tie A cc hxc hxr
  let q : Cpt Or.𝔐.ξ := ⟨centre zq, hc⟩
  haveI : CharZero RM.Ω := charZero_of_injective_ringHom Or.𝔐.cst.injective
  have hchar : ∀ p : ℕ, p.Prime → ¬ InFibre Or.𝔐.ξ p q := by
    intro p hp hf
    apply hf
    have hp0 : (p : RM.Ω) ≠ 0 := Nat.cast_ne_zero.2 hp.ne_zero
    have hpr : (p : RM.Ω) ∈ regAt Or.𝔐.ξ q := natCast_mem _ p
    have hinv : (p : RM.Ω)⁻¹ ∈ A := by
      have e : (p : RM.Ω)⁻¹ = Or.𝔐.cst ((p : c.F)⁻¹) := by simp
      rw [e]
      exact hcst _
    exact ⟨hp0, hpr, hloc _ hpr hp0 hinv⟩
  have hVq : ∀ s, Or.𝔐.V s q = Or.𝔐.dR s q := fun s =>
    Lat.patch_of_not _ _ _ fun p hp => hchar p (Or.𝔐.S_prime p hp)
  let ψA : C.R →ₐ[c.F] A :=
    { toRingHom := ψ.toRingHom.codRestrict A hψ
      commutes' := fun a => Subtype.ext (ψ.commutes a) }
  obtain ⟨y, hy1⟩ := GlobalTheory.FrameNorm.exists_frMap_along ψA C.y
  have hzx : z.x = spMap (algebraMap A RM.Ω) ≫ y.x := by
    rw [hmap.1, hy1.1, ← Category.assoc]
    congr 1
    simp only [spMap]
    rw [← Spec.map_comp, ← CommRingCat.ofHom_comp]
    rfl
  have hzu : ∀ τ i, z.u τ i = spMap (Formalism.L2.Pj.dualMap (algebraMap A RM.Ω)) ≫ y.u τ i := fun τ i => by
    rw [hmap.2.1, hy1.2.1, ← Category.assoc]
    congr 1
    simp only [spMap]
    rw [← Spec.map_comp, ← CommRingCat.ofHom_comp, ← _root_.GlobalTheory.FramedBaseChange.dual_comp]
    rfl
  have hptz : Small.ptY Y z = Small.ptY Y Fr.y₀ := by
    rw [Small.ptY, Small.ptY]
    congr 1
    apply Limits.pullback.hom_ext
    · rw [Small.ptF_fst, Small.ptF_fst, hbor.1]
    · rw [Small.ptF_snd, Small.ptF_snd]
  have hgy : spMap (algebraMap A RM.Ω) ≫ Small.ptY Y y = Small.ptY Y z := by
    rw [Small.ptY, Small.ptY, ← Category.assoc]
    congr 1
    apply Limits.pullback.hom_ext
    · rw [Category.assoc, Small.ptF_fst, Small.ptF_fst, hzx]
    · rw [Category.assoc, Small.ptF_snd, Small.ptF_snd]
      simp only [spMap]
      rw [← Spec.map_comp, ← CommRingCat.ofHom_comp]
      congr 2
  have hpt : Small.ptY Y y = zq ≫ Or.𝔐.f := by
    apply ModelDimension.subring_spec_morphism_ext E H Dw l Xo c _ _ Y RM.Ω A
    rw [← Category.assoc, hz, ← Fr.pt_eq, ← hptz]
    exact hgy
  have hreg' : regAt Or.𝔐.ξ q ≤ A := fun a ha => hreg a ha
  have core : ∀ (s : CMType H ⊕ CMType H) (b : Fin (labelRk Dw s) → Or.𝔐.Li),
      (∀ i : ℕ, flagStep RM.Ω b i = flagStep RM.Ω (Or.Fl.b s) i) → (Or.𝔐.V s).IsFrameAt b q →
      ∀ Tm : Matrix (Fin (labelRk Dw s)) (Fin (labelRk Dw s)) RM.Ω, (∀ i, b i = ∑ j, Tm i j • Or.Fl.b s j) →
      (∀ i, Tm i i ≠ 0) ∧ ∀ i, ∃ c₁ ∈ A, ∃ c₂ ∈ A, (d (Small.labelIx Dw ⟨s, i⟩) : RM.Ω) = c₁ * Tm i i ∧
        Tm i i = c₂ * (d (Small.labelIx Dw ⟨s, i⟩) : RM.Ω) := by
    intro s b hfl hfr Tm hT
    obtain ⟨hind, htri⟩ := FinRd.Roots.RootUnit.flag_change hfr.1 hfl hT
    have hTne : ∀ i, Tm i i ≠ 0 := by
      intro i h0
      have hmem : b i ∈ flagStep RM.Ω (Or.Fl.b s) i := by
        rw [hT i]
        refine Submodule.sum_mem _ fun j _ => ?_
        rcases lt_trichotomy j i with h | h | h
        · exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨j, h, rfl⟩)
        · rw [h, h0, zero_smul]
          exact Submodule.zero_mem _
        · rw [htri i j h, zero_smul]
          exact Submodule.zero_mem _
      rw [← hfl] at hmem
      exact hfr.1.notMem_span_image (s := {k : Fin (labelRk Dw s) | (k : ℕ) < i}) (x := i) (by simp) hmem
    refine ⟨hTne, fun i => ?_⟩
    obtain ⟨w, hw, hsp⟩ := tangent_span E H Dw l Xo c _ _ Y Or.𝔐.X Or.𝔐.t Or.𝔐.f Or.𝔐.m RM.Ω A Or.𝔐.ξ Or.𝔐.tie.gen
      Or.𝔐.Li Or.𝔐.M Or.𝔐.ρ Or.𝔐.act zq hz hc y hpt z hzx hzu (Small.labelC s) (labelRk Dw s) (Small.mult_labelC Dw s).symm
    have hσ : (algebraMap c.F RM.Ω).comp (embK c (Small.labelC s)) = Or.𝔐.emb s := by
      rw [Small.embK_labelC]
      rfl
    rw [hσ] at hsp
    have hdRs : Or.𝔐.dR s q = Submodule.span (regAt Or.𝔐.ξ q) (Set.range b) := (hVq s).symm.trans hfr.2
    have h1 : Submodule.span A (Set.range b) ≤ Submodule.span A (Set.range w) := by
      refine Submodule.span_le.2 ?_
      rintro _ ⟨k, rfl⟩
      have hb : b k ∈ Or.𝔐.dR s q := by
        rw [hdRs]
        exact Submodule.subset_span ⟨k, rfl⟩
      exact (hsp _).1 ⟨Submodule.subset_span hb.1, hb.2⟩
    letI : Fintype (CMType H ⊕ CMType H) := Fintype.ofEquiv _ (Small.labelEquiv H).symm
    have h2 : Submodule.span A (Set.range w) ≤ Submodule.span A (Set.range b) := by
      refine Submodule.span_le.2 ?_
      rintro _ ⟨k, rfl⟩
      obtain ⟨ha, he⟩ := (hsp _).2 (Submodule.subset_span ⟨k, rfl⟩)
      have h3 := ModelDimension.eigen_lattice_decomposition E RM.Ω Or.𝔐.cst.fieldRange (regAt Or.𝔐.ξ q) A
        (fun x hx => by
          obtain ⟨a, rfl⟩ := hx
          exact ModelDimension.constant_regular_away_fibres E H Dw l Xo c Y S RM.Ω _ _ _ Or.𝔐 q hchar a)
        hreg' (CMType H ⊕ CMType H) (fun s' => Or.𝔐.emb s') (emb_injective c Or.𝔐.cst)
        (by rw [Fintype.card_congr (Small.labelEquiv H), NumberField.Embeddings.card])
        (fun s' a => ⟨_, rfl⟩) Or.𝔐.Li Or.𝔐.ρ (Or.𝔐.M.lat q)
        (fun a e he => ModelDimension.lie_lattice_action_stable E H Or.𝔐.X Or.𝔐.t RM.Ω Or.𝔐.ξ Or.𝔐.Li Or.𝔐.M Or.𝔐.ρ Or.𝔐.act q a e he) s _ ha he
      refine (Submodule.span_le.2 ?_ : _ ≤ Submodule.span A (Set.range b)) h3
      intro x hx
      have hx' : x ∈ Or.𝔐.dR s q := hx
      rw [hdRs] at hx'
      exact span_mono_subring hreg' hx'
    have htw := GlobalTheory.T.abelian_map_lie_model_lattice E H Dw l Xo c _ _ Y Or.𝔐.X Or.𝔐.t Or.𝔐.f Or.𝔐.m RM.Ω Or.𝔐.ξ Or.𝔐.Li Or.𝔐.M Fr.y₀ Fr.pt_eq z d
      hbor (Small.labelC s) (labelRk Dw s) (Small.mult_labelC Dw s).symm (Or.Fl.b s) w
      (fun k => (Fr.tan_eq s k).symm) hw
    have htb : FinRd.Roots.TriIn (Or.Fl.b s) (fun k => Tm k k) b := fun k => ⟨Tm k, rfl, htri k, hT k⟩
    exact diag_unit A (Or.Fl.b s) w b _ _ hind htw htb (fun k => Units.ne_zero _) hTne (le_antisymm h2 h1) i
  obtain ⟨U, hU, b, hfl, hfr⟩ := Or.Fl.sub (HodgeCpt.rootIdx Dw r).1 q trivial
  have hb := hfr q trivial hU
  have hT : ∀ i, ∃ f : Fin (labelRk Dw (HodgeCpt.rootIdx Dw r).1) → RM.Ω,
      b i = ∑ j, f j • Or.Fl.b (HodgeCpt.rootIdx Dw r).1 j := by
    intro i
    have hm : b i ∈ flagStep RM.Ω (Or.Fl.b (HodgeCpt.rootIdx Dw r).1) ((i : ℕ) + 1) := by
      rw [← hfl]
      exact Submodule.subset_span ⟨i, by simp, rfl⟩
    obtain ⟨f, -, e⟩ := FinRd.Roots.RootUnit.exists_coeff_of_mem hm
    exact ⟨f, e⟩
  choose Tm hT using hT
  obtain ⟨hne, hall⟩ := core _ b hfl hb Tm hT
  obtain ⟨c₁, hc₁, c₂, hc₂, e₁, e₂⟩ := hall (HodgeCpt.rootIdx Dw r).2
  obtain ⟨u₁, u₂⟩ := FinRd.Roots.RootUnit.root_unit E H Dw l Xo c _ _ Y S RM Sys Fx Or r q cc hch b Tm hfl hb hT hne
  have hD : (d (Small.rootFrameIx Dw r) : RM.Ω) ≠ 0 := Units.ne_zero _
  have e₁' : (d (Small.rootFrameIx Dw r) : RM.Ω) = c₁ * Tm (HodgeCpt.rootIdx Dw r).2 (HodgeCpt.rootIdx Dw r).2 := e₁
  have e₂' : Tm (HodgeCpt.rootIdx Dw r).2 (HodgeCpt.rootIdx Dw r).2 = c₂ * (d (Small.rootFrameIx Dw r) : RM.Ω) := e₂
  have hm : (∏ k, RM.y ⟨k, cc k⟩ ^ RM.xdeg r k) * Or.e r ≠ 0 :=
    mul_ne_zero (Finset.prod_ne_zero_iff.2 fun k _ => zpow_ne_zero _ (hy k)) (Or.lines r).1
  obtain ⟨v, hv⟩ := final_unit V (rootSgn_eq Dw r) hD (hne _) hm e₁' e₂' hc₁ hc₂ (hreg _ u₁) (hreg _ u₂)
  refine ⟨v, ?_⟩
  rw [Units.val_zpow_eq_zpow_val]
  exact hv

end GlobalTheory.CompanionTheory.Ar.Plug.KeyRootZ

end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.GenericFrameRootOrigin =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginGenericFrameRelay =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginGenericFrameRelay", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.RegularCharts.Reframe\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ConjEmbRtOfNe\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsHomogeneousCompIdeal\npublic import Development.WeilBound.CoreStatements.CommonZeroEvaluation.GenericFrameRootOrigin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.DefiniteFormStabilizerFiniteAwayFromP\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ModelSmall\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Filter Topology
open Formalism.L2.Pj ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.BasicNotions Formalism.MainNotions
open GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Rec GlobalTheory.CompanionTheory.Ar.Plug

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginGenericFrameRelay =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginGenericFrameRelayStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginGenericFrameRelayStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.RegularCharts.Reframe\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ConjEmbRtOfNe\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsHomogeneousCompIdeal\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginGenericFrameRelay\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.DefiniteFormStabilizerFiniteAwayFromP\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ModelSmall\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Filter Topology
open Formalism.L2.Pj ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.BasicNotions Formalism.MainNotions
open GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Rec GlobalTheory.CompanionTheory.Ar.Plug

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginGenericFrameRelayStatement =====
