module

public import Formalism.SharpRestriction.GrowthBounds.UnramifiedQuadraticSetting
public import Formalism.GradedWeylDivisibility.DualWeylDominanceOf
public import Formalism.GradedWeylDivisibility.FinalD
public import Formalism.GradedWeylDivisibility.FockSpaceTableaux.NablaLTwist
public import Formalism.SharpRestriction.GrowthBounds.LatticeSystems
public import Formalism.LocalToGlobal.GroupLattices.FockModels.MkP
public import Formalism.SharpRestriction.GrowthBounds.AevalValuation.PlDefs
public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RestPlOf
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.FrMemLetters
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.PosULeIff
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ValuationOneEqZero
public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.ProdRangeZmod
public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RenameMemSupported
public import Formalism.SharpRestriction.GrowthBounds.AevalValuation.ValGen
public import Formalism.SharpRestriction.GrowthBounds.MonomialSupport.GeZSum
public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients
public import Formalism.SharpRestriction.GrowthBounds.PlaneCountTheoremWithConstants
public import Formalism.SharpRestriction.GrowthBounds.Joints
public import Formalism.LocalToGlobal.GroupLattices.FockModels.Cartan
public import Formalism.LocalToGlobal.GroupLattices.FockModels.DualInclusionLattices
public import Formalism.LocalToGlobal.GroupLattices.FockModels.FlatModels.LetterWtAnti
public import Formalism.LocalToGlobal.GroupLattices.FockModels.LoBlockActComp
public import Formalism.LocalToGlobal.GroupLattices.FockModels.OperatorsPreserveLattices
public import Formalism.LocalToGlobal.GroupLattices.FockModels.Sandwich
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TestSideFinal
public import Formalism.PeriodIntegrals.AdmissibleModel.WeylDim
public import Formalism.SharpRestriction.GlobalSchurBounds.CMFieldLemmas
public import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.ThickExists
public import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.GenericFramesLetters
public import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.LemmaOneEightHolds
public import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.PointsPropertyOfD7
public import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.RamificationTwoAndConjugationAtQAndD
public import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.SecondPropositionEveryLocalisation
public import Formalism.SharpRestriction.GrowthBounds.FockGramWindow
public import Formalism.SharpRestriction.GrowthBounds.HermitianTensor
public import Formalism.SharpRestriction.GrowthBounds.InitialMinorTransposeMemHighestWeight
public import Formalism.SharpRestriction.GrowthBounds.JointsLit
public import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.StabilizerCount
public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree
public import Formalism.SharpRestriction.GrowthBounds.SizesAtRecord
public import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials
public import Formalism.SharpRestriction.GrowthBounds.TruncatedChains
public import Formalism.SharpRestriction.GrowthBounds.WittIdentPI
public import Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.YvRatOfValRat
public import Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.TiedRec
public import Formalism.LocalToGlobal.GroupLattices.StdSubAtOfRing
public import Formalism.LocalToGlobal.GroupLattices.TrivialTransfer.GramTotallyDefinite
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LDlatLemmas
import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.Tensor
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.FrRevInj
import Formalism.SharpRestriction.GrowthBounds.RootWeights.DerivativeValuationBounds
import Formalism.SharpRestriction.GrowthBounds.ValuationLowestDegreeMapFractionField
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.SharpRestriction.GrowthBounds.AevalValuation.RestSpec
import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.TensZeroRight
import Formalism.LocalToGlobal.GroupLattices.FockModels.ElementaryDivisorBasis
import Formalism.LocalToGlobal.GroupLattices.FockModels.MulMemRiemannRochSpaceAdd
import Formalism.SharpRestriction.GrowthBounds.TopChoiceBounds

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.GroupLattices.FockModels.NablaLTwEqMap, Formalism.LocalToGlobal.GroupLattices.FockModels.LPBase, Formalism.SharpRestriction.GrowthBounds.AevalValuation.MemSupportedOf, Formalism.SharpRestriction.GrowthBounds.MonomialSupport.PhMonomialMul, Formalism.SharpRestriction.GrowthBounds.AevalValuation, Formalism.LocalToGlobal.GroupLattices.AdmissibleFamilyNoKernel, Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.NpDescOfValRat, Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.NpDescFOfValRatF, Formalism.LocalToGlobal.GroupLattices.LinkGConcreteNoKer

-- ===== clump member: Formalism.LocalToGlobal.GroupLattices.FockModels.NablaLTwEqMap =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GroupLattices.FockModels.NablaLTwEqMap", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.UnramifiedQuadraticSetting\npublic import Formalism.GradedWeylDivisibility.DualWeylDominanceOf\npublic import Formalism.GradedWeylDivisibility.FinalD\nimport Formalism.GradedWeylDivisibility.FockSpaceTableaux.LDlatLemmas\npublic import Formalism.GradedWeylDivisibility.FockSpaceTableaux.NablaLTwist\npublic import Formalism.SharpRestriction.GrowthBounds.LatticeSystems\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.G.Model

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.G.LatticeSystems

def BC {R R' X X' : Type*} [CommRing R] [CommRing R'] [AddCommGroup X] [Module R X] [AddCommGroup X']
    [Module R' X'] (μ : X → X') (A : Submodule R X) (A' : Submodule R' X') : Prop :=
  A' = Submodule.span R' (μ '' (A : Set X))

theorem BC.mem {R R' X X' : Type*} [CommRing R] [CommRing R'] [AddCommGroup X] [Module R X] [AddCommGroup X']
    [Module R' X'] {μ : X → X'} {A : Submodule R X} {A' : Submodule R' X'} (h : BC μ A A') {x : X} (hx : x ∈ A) :
    μ x ∈ A' := by
  rw [h]; exact Submodule.subset_span ⟨x, hx, rfl⟩

theorem bc_span {R R' X X' : Type*} [CommRing R] [CommRing R'] [AddCommGroup X] [Module R X] [AddCommGroup X']
    [Module R' X'] {φ : R →+* R'} (μ : X →ₛₗ[φ] X') (S : Set X) :
    BC μ (Submodule.span R S) (Submodule.span R' (μ '' S)) := by
  unfold BC
  apply le_antisymm
  · exact Submodule.span_mono (Set.image_mono Submodule.subset_span)
  · rw [Submodule.span_le]
    rintro _ ⟨x, hx, rfl⟩
    have h : Submodule.span R S ≤ (Submodule.span R' (μ '' S)).comap μ := by
      rw [Submodule.span_le]
      intro y hy
      exact Submodule.subset_span ⟨y, hy, rfl⟩
    exact h hx

section Maps

variable {R K R' K' : Type} [CommRing R] [CommRing K] [Algebra R K] [CommRing R'] [CommRing K'] [Algebra R' K']
  (φ : R →+* R') (φK : K →+* K') (hφ : ∀ x : R, φK (algebraMap R K x) = algebraMap R' K' (φ x))

def muS (τ : Type) : MvPolynomial τ K →ₛₗ[φ] MvPolynomial τ K' where
  toFun := MvPolynomial.map φK
  map_add' := map_add _
  map_smul' := by
    intro c P
    rw [← algebraMap_smul K c P, ← algebraMap_smul K' (φ c), smul_eq_C_mul, smul_eq_C_mul, map_mul, map_C, hφ]

theorem muS_coe (τ : Type) : (muS φ φK hφ τ : MvPolynomial τ K → MvPolynomial τ K') = MvPolynomial.map φK := rfl

def vecS (k : ℕ) : (Fin k → K) →ₛₗ[φ] (Fin k → K') where
  toFun := fun v i => φK (v i)
  map_add' := by intro x y; funext i; simp
  map_smul' := by
    intro c x; funext i
    simp only [Pi.smul_apply, Algebra.smul_def, map_mul, hφ]

theorem map_smulK {τ : Type} (c : K) (P : MvPolynomial τ K) :
    MvPolynomial.map φK (c • P) = φK c • MvPolynomial.map φK P := by
  rw [smul_eq_C_mul, smul_eq_C_mul, map_mul, map_C]

end Maps

theorem bc_dualWeyl {R R' : Type} [CommRing R] [CommRing R'] [IsDomain R'] (φ : R →+* R') (k n : ℕ)
    (ν : Fin n → ℕ) : BC (MvPolynomial.map φ) (dualWeyl R k n ν) (dualWeyl R' k n ν) := by
  unfold BC
  apply le_antisymm
  · obtain ⟨b', hb', h2⟩ := sSBasis R' k n ν
    rw [← hb'.2.1, Submodule.span_le]
    rintro _ ⟨i, rfl⟩
    obtain ⟨-, -, K, sz, hsz, I, hshape, -, hbm⟩ := h2 i
    rw [hbm]
    apply Submodule.subset_span
    refine ⟨bideterminant R sz hsz I, ?_, ldlat_map_bidet φ sz hsz I⟩
    have := bidetMem R k n K sz hsz I
    rw [hshape] at this
    exact this
  · rw [Submodule.span_le]
    rintro _ ⟨f, hf, rfl⟩
    exact dualWeylMap R R' φ k n ν f hf

section Fields

variable {R K R' K' : Type} [CommRing R] [Field K] [Algebra R K] [CommRing R'] [IsDomain R'] [Field K']
  [Algebra R' K'] (φ : R →+* R') (φK : K →+* K')
  (hφ : ∀ x : R, φK (algebraMap R K x) = algebraMap R' K' (φ x))

include hφ in
theorem map_map_alg {τ : Type} (f : MvPolynomial τ R) :
    MvPolynomial.map (algebraMap R' K') (MvPolynomial.map φ f) =
      MvPolynomial.map φK (MvPolynomial.map (algebraMap R K) f) := by
  have h : (algebraMap R' K').comp φ = φK.comp (algebraMap R K) := RingHom.ext fun x => (hφ x).symm
  rw [MvPolynomial.map_map, MvPolynomial.map_map, h]

theorem det_map {k : ℕ} (g : Matrix (Fin k) (Fin k) K) : (g.map φK).det = φK g.det :=
  (RingHom.map_det φK g).symm

theorem inv_map {k : ℕ} (g : Matrix (Fin k) (Fin k) K) (hg : IsUnit g.det) : (g.map φK)⁻¹ = (g⁻¹).map φK := by
  apply Matrix.inv_eq_right_inv
  have h1 : g.map φK * (g⁻¹).map φK = (g * g⁻¹).map φK := (Matrix.map_mul).symm
  rw [h1, Matrix.mul_nonsing_inv g hg]
  exact Matrix.map_one φK (map_zero _) (map_one _)

def psiL (R K : Type) [CommRing R] [Field K] [Algebra R K] (m : ℕ) (lam : Fin (m + 1) → ℤ)
    (g : Matrix (Fin (m + 1)) (Fin (m + 1)) K) :
    MvPolynomial (Fin (m + 1) × Fin (m + 1)) R →ₗ[R] MvPolynomial (Fin (m + 1) × Fin (m + 1)) K where
  toFun := fun f => g.det ^ (-(lam (Fin.last m))) • rowAct K g⁻¹ (MvPolynomial.map (algebraMap R K) f)
  map_add' := by intro x y; rw [map_add (f := _), map_add (f := _), smul_add]
  map_smul' := by
    intro c x
    have h1 : MvPolynomial.map (algebraMap R K) (c • x) =
        algebraMap R K c • MvPolynomial.map (algebraMap R K) x := by
      rw [smul_eq_C_mul, smul_eq_C_mul, map_mul, map_C]
    rw [RingHom.id_apply, h1, map_smul, smul_comm, algebraMap_smul]

theorem psiL_apply (R K : Type) [CommRing R] [Field K] [Algebra R K] (m : ℕ) (lam : Fin (m + 1) → ℤ)
    (g : Matrix (Fin (m + 1)) (Fin (m + 1)) K) (f : MvPolynomial (Fin (m + 1) × Fin (m + 1)) R) :
    psiL R K m lam g f =
      g.det ^ (-(lam (Fin.last m))) • rowAct K g⁻¹ (MvPolynomial.map (algebraMap R K) f) := rfl

theorem nablaLTw_eq_map (R K : Type) [CommRing R] [Field K] [Algebra R K] (m : ℕ) (lam : Fin (m + 1) → ℤ)
    (g : Matrix (Fin (m + 1)) (Fin (m + 1)) K) (hg : IsUnit g.det) :
    nablaLTw R K m lam g =
      (dualWeyl R (m + 1) (m + 1) (fun t => (lam t - lam (Fin.last m)).toNat)).map (psiL R K m lam g) := by
  ext F
  rw [nablaLTwMem R K m lam g hg, Submodule.mem_map, Submodule.mem_map]
  constructor
  · rintro ⟨f, hf, hfe⟩
    refine ⟨f, hf, ?_⟩
    have h2 : (mapAlgHom (Algebra.ofId R K)).toLinearMap f = MvPolynomial.map (algebraMap R K) f := rfl
    rw [psiL_apply, ← h2, hfe, map_smul, ldlat_rowAct_inv_right rowActMul _ hg, smul_smul,
      ← zpow_add₀ hg.ne_zero, neg_add_cancel, zpow_zero, one_smul]
  · rintro ⟨f, hf, rfl⟩
    refine ⟨f, hf, ?_⟩
    have h2 : (mapAlgHom (Algebra.ofId R K)).toLinearMap f = MvPolynomial.map (algebraMap R K) f := rfl
    rw [psiL_apply, map_smul, ldlat_rowAct_inv_left rowActMul _ hg, smul_smul,
      ← zpow_add₀ hg.ne_zero, add_neg_cancel, zpow_zero, one_smul, h2]

theorem bc_map {R R' X X' Y Y' : Type*} [CommRing R] [CommRing R'] [AddCommGroup X] [Module R X] [AddCommGroup X']
    [Module R' X'] [AddCommGroup Y] [Module R Y] [AddCommGroup Y'] [Module R' Y'] {μ₁ : X → X'} {μ₂ : Y → Y'}
    {A : Submodule R X} {A' : Submodule R' X'} (h : BC μ₁ A A') (T : X →ₗ[R] Y) (T' : X' →ₗ[R'] Y')
    (hT : ∀ a, μ₂ (T a) = T' (μ₁ a)) : BC μ₂ (A.map T) (A'.map T') := by
  unfold BC at h ⊢
  rw [h, Submodule.map_span, Submodule.map_coe, ← Set.image_comp, ← Set.image_comp]
  congr 1
  exact Set.image_congr fun a _ => (hT a).symm


include hφ in
theorem bc_nablaLTw (m : ℕ) (lam : Fin (m + 1) → ℤ) (g : Matrix (Fin (m + 1)) (Fin (m + 1)) K)
    (hg : IsUnit g.det) :
    BC (MvPolynomial.map φK) (nablaLTw R K m lam g) (nablaLTw R' K' m lam (g.map φK)) := by
  have hg' : IsUnit (g.map φK).det := by rw [det_map]; exact hg.map φK
  rw [nablaLTw_eq_map R K m lam g hg, nablaLTw_eq_map R' K' m lam _ hg']
  refine bc_map (bc_dualWeyl φ (m + 1) (m + 1) _) _ _ fun f => ?_
  rw [psiL_apply, psiL_apply, map_map_alg φ φK hφ, map_smulK, ldtwist_map_rowAct, map_zpow₀, det_map,
    inv_map φK g hg]

theorem map_blockEmb {S : Type} {k n : ℕ} (s : S) (F : MvPolynomial (Fin k × Fin n) K) :
    MvPolynomial.map φK (blockEmb K s F) = blockEmb K' s (MvPolynomial.map φK F) := by
  unfold blockEmb
  exact (MvPolynomial.map_rename φK _ F)


include hφ in
theorem bc_tensorLat {S : Type} [Fintype S] {k n : ℕ} (M : S → Submodule R (MvPolynomial (Fin k × Fin n) K))
    (M' : S → Submodule R' (MvPolynomial (Fin k × Fin n) K'))
    (h : ∀ s, BC (MvPolynomial.map φK) (M s) (M' s)) :
    BC (MvPolynomial.map φK) (tensorLat R K M) (tensorLat R' K' M') := by
  classical
  have h0 := bc_span (muS φ φK hφ (S × (Fin k × Fin n)))
    {P | ∃ F : S → MvPolynomial (Fin k × Fin n) K, (∀ s, F s ∈ M s) ∧ P = ∏ s, blockEmb K s (F s)}
  rw [muS_coe] at h0
  unfold BC at h0 ⊢
  unfold tensorLat
  rw [← h0]
  apply le_antisymm
  · rw [Submodule.span_le]
    rintro _ ⟨F', hF', rfl⟩
    set T : S → Set (MvPolynomial (S × (Fin k × Fin n)) K') :=
      fun s => (fun F => blockEmb K' s (MvPolynomial.map φK F)) '' (M s : Set _) with hT
    have h1 : ∀ s, blockEmb K' s (F' s) ∈ Submodule.span R' (T s) := by
      intro s
      have h2 : M' s ≤ (Submodule.span R' (T s)).comap ((blockEmb K' (k := k) (n := n) s).toLinearMap.restrictScalars R') := by
        rw [h s, Submodule.span_le]
        rintro _ ⟨F, hF, rfl⟩
        exact Submodule.subset_span ⟨F, hF, rfl⟩
      exact h2 (hF' s)
    have h3 := fn_prod_mem (R := R') Finset.univ (fun s => Submodule.span R' (T s))
      (fun s => blockEmb K' s (F' s)) (fun s _ => h1 s)
    rw [Submodule.prod_span] at h3
    refine Submodule.span_mono ?_ h3
    intro P hP
    rw [Set.mem_finsetProd] at hP
    obtain ⟨gf, hgf, rfl⟩ := hP
    have h4 : ∀ s, ∃ F, F ∈ M s ∧ blockEmb K' s (MvPolynomial.map φK F) = gf s := by
      intro s
      obtain ⟨F, hF, hFe⟩ := hgf (Finset.mem_univ s)
      exact ⟨F, hF, hFe⟩
    choose F hF hFe using h4
    refine ⟨∏ s, blockEmb K s (F s), ⟨F, hF, rfl⟩, ?_⟩
    rw [map_prod]
    exact Finset.prod_congr rfl fun s _ => by rw [map_blockEmb, hFe]
  · rw [Submodule.span_le]
    rintro _ ⟨_, ⟨F, hF, rfl⟩, rfl⟩
    apply Submodule.subset_span
    refine ⟨fun s => MvPolynomial.map φK (F s), fun s => (h s).mem (hF s), ?_⟩
    rw [map_prod]
    exact Finset.prod_congr rfl fun s _ => map_blockEmb φK s (F s)


include hφ in
theorem bc_colSpan {k : ℕ} (g : Matrix (Fin k) (Fin k) K) :
    BC (vecS φ φK hφ k) (colSpan R g) (colSpan R' (g.map φK)) := by
  have h0 := bc_span (vecS φ φK hφ k) (Set.range fun c : Fin k => fun i => g i c)
  have h1 : (vecS φ φK hφ k) '' (Set.range fun c : Fin k => fun i => g i c) =
      Set.range fun c : Fin k => fun i => (g.map φK) i c := by
    rw [← Set.range_comp]; rfl
  rw [h1] at h0
  exact h0


include hφ in
theorem base_change_H0 (hinj : Function.Injective (algebraMap R K)) (hinj' : Function.Injective (algebraMap R' K'))
    (m : ℕ) (lam : Fin (m + 1) → ℤ) (hlam : Antitone lam)
    (Λ : Submodule R (Fin (m + 1) → K)) (Λ' : Submodule R' (Fin (m + 1) → K')) (hΛ : IsLattice R Λ)
    (hb : BC (vecS φ φK hφ (m + 1)) Λ Λ') :
    BC (MvPolynomial.map φK) (H0 R m lam Λ) (H0 R' m lam Λ') := by
  obtain ⟨g, hg, rfl⟩ := hΛ
  have h1 : Λ' = colSpan R' (g.map φK) := hb.trans (bc_colSpan φ φK hφ g).symm
  have hg' : IsUnit (g.map φK).det := by rw [det_map]; exact hg.map φK
  rw [h1, H0_eq_twisted_nabla (la_indep hinj) m lam hlam g hg, H0_eq_twisted_nabla (la_indep hinj') m lam hlam _ hg']
  exact bc_nablaLTw φ φK hφ m lam g hg

end Fields

end Formalism.L2.G.Model
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GroupLattices.FockModels.NablaLTwEqMap =====

-- ===== clump member: Formalism.LocalToGlobal.GroupLattices.FockModels.LPBase =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GroupLattices.FockModels.LPBase", "h": "module\n\nimport Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.Tensor\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.NablaLTwEqMap\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.MkP\nimport Formalism.SharpRestriction.GrowthBounds.LatticeSystems\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.G.Model

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.G.LatticeSystems

section Sub

variable {R K R' K' : Type} [CommRing R] [Field K] [Algebra R K] [CommRing R'] [Field K'] [Algebra R' K']
  {φK : K →+* K'}
  {X X' : Type} [AddCommGroup X] [Module K X] [Module R X] [IsScalarTower R K X]
  [AddCommGroup X'] [Module K' X'] [Module R' X'] [IsScalarTower R' K' X']
  (μ : X →ₛₗ[φK] X') (Vs : Submodule K X) (Vs' : Submodule K' X') (hV : ∀ z ∈ Vs, μ z ∈ Vs')

def muV : Vs →ₛₗ[φK] Vs' where
  toFun := fun x => ⟨μ x.1, hV _ x.2⟩
  map_add' := by intro x y; exact Subtype.ext (map_add μ x.1 y.1)
  map_smul' := by intro c x; exact Subtype.ext (map_smulₛₗ μ c x.1)

theorem bc_comap (A : Submodule R X) (A' : Submodule R' X') (hA : ∀ z ∈ A, z ∈ Vs) (h : BC μ A A') :
    BC (muV μ Vs Vs' hV) (A.comap (Vs.subtype.restrictScalars R)) (A'.comap (Vs'.subtype.restrictScalars R')) := by
  unfold BC
  apply le_antisymm
  · intro v' hv'
    have hv2 : (v' : X') ∈ A' := hv'
    have hmap : (Submodule.span R' (muV μ Vs Vs' hV '' ((A.comap (Vs.subtype.restrictScalars R) :
        Submodule R Vs) : Set Vs))).map (Vs'.subtype.restrictScalars R') = A' := by
      rw [h, Submodule.map_span, ← Set.image_comp]
      congr 1
      ext y
      constructor
      · rintro ⟨x, hx, rfl⟩
        exact ⟨x.1, hx, rfl⟩
      · rintro ⟨z, hz, rfl⟩
        exact ⟨⟨z, hA z hz⟩, hz, rfl⟩
    rw [← hmap] at hv2
    obtain ⟨y, hy, hye⟩ := hv2
    have : y = v' := Subtype.ext hye
    rw [← this]
    exact hy
  · rw [Submodule.span_le]
    rintro _ ⟨x, hx, rfl⟩
    exact h.mem hx

theorem span_muV_top (h : BC μ Vs Vs') {I : Type} (x : Module.Basis I K Vs) :
    ⊤ ≤ Submodule.span K' (Set.range fun i => muV μ Vs Vs' hV (x i)) := by
  intro v' _
  have hv : (v' : X') ∈ Submodule.span K' (μ '' (Vs : Set X)) := by
    have h2 : Vs' ≤ Submodule.span K' (μ '' (Vs : Set X)) := le_of_eq h
    exact h2 v'.2
  have hle : Submodule.span K' (μ '' (Vs : Set X)) ≤
      (Submodule.span K' (Set.range fun i => muV μ Vs Vs' hV (x i))).map Vs'.subtype := by
    rw [Submodule.span_le]
    rintro _ ⟨z, hz, rfl⟩
    refine ⟨muV μ Vs Vs' hV ⟨z, hz⟩, ?_, rfl⟩
    have h1 : (⟨z, hz⟩ : Vs) ∈ Submodule.span K (Set.range x) := by rw [x.span_eq]; trivial
    have h2 := (bc_span (muV μ Vs Vs' hV) (Set.range x)).mem h1
    rw [← Set.range_comp] at h2
    exact h2
  obtain ⟨y, hy, hye⟩ := hle hv
  have : y = v' := Subtype.ext hye
  rw [← this]
  exact hy

end Sub

section Dual

variable {R K R' K' : Type} [CommRing R] [Field K] [Algebra R K] [CommRing R'] [Field K'] [Algebra R' K']
  (φ : R →+* R') (φK : K →+* K') (hφ : ∀ x : R, φK (algebraMap R K x) = algebraMap R' K' (φ x))
  {V V' : Type} [AddCommGroup V] [Module K V] [Module R V] [IsScalarTower R K V]
  [AddCommGroup V'] [Module K' V'] [Module R' V'] [IsScalarTower R' K' V']
  (ν : V →ₛₗ[φK] V') {I : Type} [Fintype I] (x : Module.Basis I K V) (x' : Module.Basis I K' V')
  (hx : ∀ i, x' i = ν (x i))

def deltaS : Module.Dual K V →ₛₗ[φK] Module.Dual K' V' where
  toFun := fun G => x'.constr K' fun i => φK (G (x i))
  map_add' := by
    intro a b
    apply x'.ext
    intro i
    rw [LinearMap.add_apply, Module.Basis.constr_basis, Module.Basis.constr_basis, Module.Basis.constr_basis,
      LinearMap.add_apply, map_add]
  map_smul' := by
    intro c a
    apply x'.ext
    intro i
    rw [LinearMap.smul_apply, Module.Basis.constr_basis, Module.Basis.constr_basis, LinearMap.smul_apply,
      smul_eq_mul, smul_eq_mul, map_mul]

include hx in
theorem deltaS_apply (G : Module.Dual K V) (F : V) : deltaS φK x x' G (ν F) = φK (G F) := by
  have h1 : ν F = ∑ i, φK (x.repr F i) • x' i := by
    conv_lhs => rw [← x.sum_repr F]

    rw [map_sum]
    exact Finset.sum_congr rfl fun i _ => by rw [map_smulₛₗ, hx]
  have h2 : G F = ∑ i, x.repr F i * G (x i) := by
    conv_lhs => rw [← x.sum_repr F]

    rw [map_sum]
    exact Finset.sum_congr rfl fun i _ => by rw [map_smul, smul_eq_mul]

  rw [h1, h2, map_sum, map_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [map_smul, smul_eq_mul, map_mul]
  congr 1
  exact Module.Basis.constr_basis x' K' _ i

include hφ hx in
theorem dual_mem (A : Submodule R V) (A' : Submodule R' V') (h : BC ν A A') (G : Module.Dual K V)
    (hG : G ∈ dualLat R K A) : deltaS φK x x' G ∈ dualLat R' K' A' := by
  intro v' hv'
  rw [h] at hv'
  induction hv' using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨z, hz, rfl⟩ := hy
    obtain ⟨a, ha⟩ := hG z hz
    exact ⟨φ a, by rw [deltaS_apply φK ν x x' hx, ← ha, hφ]⟩
  | zero => exact ⟨0, by simp⟩
  | add y z _ _ hy hz =>
    obtain ⟨a, ha⟩ := hy
    obtain ⟨b, hb⟩ := hz
    exact ⟨a + b, by rw [map_add (f := _), map_add (f := _), ha, hb]⟩
  | smul c y _ hy =>
    obtain ⟨a, ha⟩ := hy
    exact ⟨c * a, by rw [LinearMap.map_smul_of_tower, map_mul, ha, Algebra.smul_def]⟩

theorem scale_mem {A : Submodule R V} {A' : Submodule R' V'} (h : ∀ y ∈ A, ν y ∈ A') (c : K) {y : V}
    (hy : y ∈ scale c A) : ν y ∈ scale (φK c) A' := by
  obtain ⟨z, hz, rfl⟩ := hy
  exact ⟨ν z, h z hz, (map_smulₛₗ ν c z).symm⟩

end Dual

section Lat

variable {W Qq O Kf O' Kf' : Type} [CommRing W] [Field Qq] [Algebra W Qq] [CommRing O] [Field Kf] [Algebra O Kf]
  [CommRing O'] [IsDomain O'] [Field Kf'] [Algebra O' Kf']
  (ι : Qq →+* Kf) (σ : Qq ≃+* Qq) (φ : O →+* O') (φK : Kf →+* Kf')
  (hφ : ∀ x : O, φK (algebraMap O Kf x) = algebraMap O' Kf' (φ x))

theorem bc_extO (s : ℕ) {k : ℕ} (L : Submodule W (Fin k → Qq)) :
    BC (vecS φ φK hφ k) (extO O ι σ s L) (extO O' (φK.comp ι) σ s L) := by
  have h0 := bc_span (vecS φ φK hφ k) (twistVec ι σ s '' (L : Set (Fin k → Qq)))
  rw [Set.image_image] at h0
  exact h0

theorem bc_LeAt (p : ℕ) (w : O) (s : ℕ) {k : ℕ} (e : Edge W Qq k) :
    BC (vecS φ φK hφ k) (LeAt p ι σ w s e) (LeAt p (φK.comp ι) σ (φ w) s e) := by
  have h0 := bc_span (vecS φ φK hφ k) (twistVec ι σ s '' (e.src : Set (Fin k → Qq)) ∪
    (fun v => (algebraMap O Kf w)⁻¹ • twistVec ι σ s ((p : W) • v)) '' (e.tgt : Set (Fin k → Qq)))
  rw [Set.image_union, Set.image_image, Set.image_image, Submodule.span_union, Submodule.span_union] at h0
  have h1 : ∀ v : Fin k → Qq, vecS φ φK hφ k ((algebraMap O Kf w)⁻¹ • twistVec ι σ s ((p : W) • v)) =
      (algebraMap O' Kf' (φ w))⁻¹ • twistVec (φK.comp ι) σ s ((p : W) • v) := by
    intro v
    funext i
    show φK ((algebraMap O Kf w)⁻¹ * twistVec ι σ s ((p : W) • v) i) = _
    rw [map_mul, map_inv₀, hφ]
    rfl
  simp only [h1] at h0
  exact h0

theorem bc_Hten (hinj : Function.Injective (algebraMap O Kf)) (hinj' : Function.Injective (algebraMap O' Kf'))
    {n' m : ℕ} (lam0 : Fin n' → Fin (m + 1) → ℤ) (hd : IsDominant lam0)
    (Λ : Fin n' → Submodule O (Fin (m + 1) → Kf)) (Λ' : Fin n' → Submodule O' (Fin (m + 1) → Kf'))
    (hΛ : ∀ s, IsLattice O (Λ s)) (hb : ∀ s, BC (vecS φ φK hφ (m + 1)) (Λ s) (Λ' s)) :
    BC (MvPolynomial.map φK) (Hten O lam0 Λ) (Hten O' lam0 Λ') :=
  bc_tensorLat φ φK hφ
    (fun s => H0 O m (lamAt lam0 s) (Λ s))
    (fun s => H0 O' m (lamAt lam0 s) (Λ' s)) fun s =>
      base_change_H0 φ φK hφ hinj hinj' m (lamAt lam0 s) (kp_lamAt_antitone lam0 hd s)
        (Λ s) (Λ' s) (hΛ s) (hb s)

theorem Hten_le_V {n' m : ℕ} (lam0 : Fin n' → Fin (m + 1) → ℤ) (hd : IsDominant lam0)
    (Λ : Fin n' → Submodule O (Fin (m + 1) → Kf)) (hΛ : ∀ s, IsLattice O (Λ s)) :
    ∀ z ∈ Hten O lam0 Λ, z ∈ Vsp Kf lam0 := by
  apply Formalism.MainNotions.flipOneThree.Pf.tn_Hten_le <;> assumption

theorem bc_Vsp {n' m : ℕ} (lam0 : Fin n' → Fin (m + 1) → ℤ) (hd : IsDominant lam0) :
    BC (MvPolynomial.map φK) (Vsp Kf lam0) (Vsp Kf' lam0) := by
  unfold Vsp
  refine bc_tensorLat φK φK (fun _ => rfl) (S := Fin n') (k := m + 1) (n := m + 1) _ _ ?_
  intro s
  have hanti := kp_lamAt_antitone lam0 hd s
  beta_reduce
  rw [if_pos hanti, if_pos hanti]
  exact bc_dualWeyl φK _ _ _

end Lat

theorem Vsp_bot (K : Type) [Field K] {n' m : ℕ} (lam0 : Fin n' → Fin (m + 1) → ℤ) (hd : ¬ IsDominant lam0) :
    Vsp K lam0 = ⊥ := by
  unfold IsDominant at hd
  push Not at hd
  obtain ⟨s, hs⟩ := hd
  have hs' : ¬ Antitone (lamAt lam0 s) := by
    unfold lamAt
    split_ifs with he
    · exact hs
    · intro ha
      apply hs
      intro a b hab
      have h1 := ha (Fin.rev_le_rev.2 hab)
      simp only [Fin.rev_rev] at h1
      exact neg_le_neg_iff.1 h1
  unfold Vsp tensorLat
  rw [Submodule.span_eq_bot]
  rintro _ ⟨F, hF, rfl⟩
  have h2 := hF s
  beta_reduce at h2
  rw [if_neg hs'] at h2
  apply Finset.prod_eq_zero (Finset.mem_univ s)
  rw [(Submodule.mem_bot _).1 h2, map_zero]

theorem be_sum {Kf O : Type} [Field Kf] [CommRing O] [Algebra O Kf] {n' m : ℕ} (p r : ℕ)
    (lam0 : Fin n' → Fin (m + 1) → ℤ) (F : Vsp Kf lam0) {n : ℕ} (c : Fin n → O)
    (G : Fin n → Module.Dual Kf (Vsp Kf lam0)) :
    be p r lam0 F (∑ l, c l • G l) = ∑ l, algebraMap O Kf (c l) * be p r lam0 F (G l) := by
  unfold be
  rw [LinearMap.sum_apply]
  exact Finset.sum_congr rfl fun l _ => by rw [LinearMap.smul_apply, Algebra.smul_def]

section Main

variable {p n' : ℕ} {W Qq O Kf O' Kf' : Type} [CommRing W] [IsDomain W] [IsDiscreteValuationRing W] [Field Qq]
  [Algebra W Qq] [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
  [CommRing O'] [IsDomain O'] [IsDiscreteValuationRing O'] [Field Kf'] [Algebra O' Kf']
  {ι : Qq →+* Kf} {σ : Qq ≃+* Qq} {j : W →+* O} {w : O} {φ : O →+* O'} {φK : Kf →+* Kf'}

theorem lpAt_nondom (m r : ℕ) (lam0 : Fin n' → Fin (m + 1) → ℤ) (hd : ¬ IsDominant lam0) (t D : ℕ) (κ : ℝ)
    (cStar : ℕ) (L : Submodule W (Fin (m + 1) → Qq)) :
    LPprimeAt (O := O) p n' ι σ w r lam0 t D κ cStar L := by
  refine ⟨0, Fin.elim0, Fin.elim0, fun i => i.elim0, fun i => i.elim0, fun i => i.elim0, 0, ?_, 0, 0,
    fun _ j => j.elim0⟩
  have h0 : dimV Kf lam0 = 0 := by
    unfold dimV
    rw [Vsp_bot Kf lam0 hd]
    exact finrank_bot _ _
  rw [h0]
  simp

theorem lpAt_dom (hφ : ∀ x : O, φK (algebraMap O Kf x) = algebraMap O' Kf' (φ x))
    (hS : HidaSetting p n' W Qq O Kf ι σ j w) (hS' : HidaSetting p n' W Qq O' Kf' (φK.comp ι) σ (φ.comp j) (φ w))
    (m r : ℕ) (lam0 : Fin n' → Fin (m + 1) → ℤ) (hd : IsDominant lam0) (t D : ℕ) (κ : ℝ) (cStar : ℕ)
    (L : Submodule W (Fin (m + 1) → Qq)) (hL : IsLattice W L)
    (h : LPprimeAt (O := O) p n' ι σ w r lam0 t D κ cStar L) :
    LPprimeAt (O := O') p n' (φK.comp ι) σ (φ w) r lam0 t D κ cStar L := by
  classical
  have hinj : Function.Injective (algebraMap O Kf) := haveI := hS.frac_O; IsFractionRing.injective O Kf
  have hinj' : Function.Injective (algebraMap O' Kf') := haveI := hS'.frac_O; IsFractionRing.injective O' Kf'
  have bV := bc_Vsp φK lam0 hd
  set μ : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf →ₛₗ[φK]
      MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf' := muS φK φK (fun _ => rfl) _ with hμ
  have hV : ∀ z ∈ Vsp Kf lam0, μ z ∈ Vsp Kf' lam0 := fun z hz => bV.mem hz
  set ν := muV μ (Vsp Kf lam0) (Vsp Kf' lam0) hV with hν
  have hlatE : ∀ (s : ℕ) (A : Submodule W (Fin (m + 1) → Qq)), IsLattice W A → IsLattice O (extO O ι σ s A) :=
    fun s A hA => je_extO_lat (mkG hS m r lam0 hd) (0 : Fin 1) s A hA
  have hlatL : ∀ (s : ℕ) (e : Edge W Qq (m + 1)), IsEdge p n' r e → IsLattice O (LeAt p ι σ w s e) :=
    fun s e he => je_LeAt_lat (mkG hS m r lam0 hd) (0 : Fin 1) s e he
  have hHL : ∀ A : Submodule W (Fin (m + 1) → Qq), IsLattice W A →
      BC ν (HL (O := O) ι σ lam0 A) (HL (O := O') (φK.comp ι) σ lam0 A) := fun A hA =>
    bc_comap μ _ _ hV _ _ (Hten_le_V lam0 hd _ fun s => hlatE s.val A hA)
      (bc_Hten φ φK hφ hinj hinj' lam0 hd _ _ (fun s => hlatE s.val A hA) fun s => bc_extO ι σ φ φK hφ s.val A)
  have hHLe : ∀ e : Edge W Qq (m + 1), IsEdge p n' r e →
      BC ν (HLe (O := O) p ι σ w lam0 e) (HLe (O := O') p (φK.comp ι) σ (φ w) lam0 e) := fun e he =>
    bc_comap μ _ _ hV _ _ (Hten_le_V lam0 hd _ fun s => hlatL s.val e he)
      (bc_Hten φ φK hφ hinj hinj' lam0 hd _ _ (fun s => hlatL s.val e he)
        fun s => bc_LeAt ι σ φ φK hφ p w s.val e)
  obtain ⟨I0, hI0, b0, -⟩ := jm_HL_basis (mkG hS m r lam0 hd) (0 : Fin 1) L hL
  have : Module.Finite Kf (Vsp Kf lam0) := Module.Finite.of_basis b0
  have hdim : dimV Kf' lam0 = dimV Kf lam0 :=
    (jr_dim (mkG hS' m r lam0 hd) (0 : Fin 1)).symm.trans (jr_dim (mkG hS m r lam0 hd) (0 : Fin 1))
  have hcard : Fintype.card (Fin (Module.finrank Kf (Vsp Kf lam0))) = Module.finrank Kf' (Vsp Kf' lam0) := by
    rw [Fintype.card_fin]; exact hdim.symm
  set x := Module.finBasis Kf (Vsp Kf lam0) with hxdef
  set x' := basisOfTopLeSpanOfCardEqFinrank (fun i => ν (x i)) (span_muV_top μ _ _ hV bV x) hcard with hx'def
  have hx : ∀ i, x' i = ν (x i) := fun i =>
    congrFun (coe_basisOfTopLeSpanOfCardEqFinrank (fun i => ν (x i)) (span_muV_top μ _ _ hV bV x) hcard) i
  set δ := deltaS φK x x' with hδ
  have hwz : ∀ z : ℤ, φK (algebraMap O Kf w ^ z) = algebraMap O' Kf' (φ w) ^ z := fun z => by
    rw [map_zpow₀, hφ]
  have hRe : ∀ e : Edge W Qq (m + 1), IsEdge p n' r e → ∀ y ∈ Re (O := O) p ι σ w r lam0 e,
      ν y ∈ Re (O := O') p (φK.comp ι) σ (φ w) r lam0 e := by
    intro e he y hy
    have h1 := scale_mem φK ν (fun y hy => (hHLe e he).mem hy) _ hy
    rw [hwz] at h1
    exact h1
  have hRe' : ∀ e : Edge W Qq (m + 1), IsEdge p n' r e → ∀ G ∈ Re' (O := O) p ι σ w r lam0 e,
      δ G ∈ Re' (O := O') p (φK.comp ι) σ (φ w) r lam0 e := by
    intro e he G hG
    have h1 := scale_mem φK δ (fun G hG => dual_mem φ φK hφ ν x x' hx _ _ (hHLe e he) G hG) _ hG
    rw [hwz] at h1
    exact h1
  have hN : ∀ A : Submodule W (Fin (m + 1) → Qq), IsLattice W A → ∀ y ∈ Nsrc (O := O) p n' ι σ w r lam0 t A,
      ν y ∈ Nsrc (O := O') p n' (φK.comp ι) σ (φ w) r lam0 t A := by
    intro A hA y hy
    refine Submodule.mem_inf.2 ⟨?_, ?_⟩
    · have h1 := scale_mem φK ν (fun y hy => (hHL A hA).mem hy) _ (Submodule.mem_inf.1 hy).1
      rw [hwz] at h1
      exact h1
    · rw [Submodule.mem_iInf]
      intro e
      rw [Submodule.mem_iInf]
      intro he
      exact hRe e he.1 y ((Submodule.mem_iInf _).1 ((Submodule.mem_iInf _).1 (Submodule.mem_inf.1 hy).2 e) he)
  have hN' : ∀ A : Submodule W (Fin (m + 1) → Qq), IsLattice W A → ∀ G ∈ Ntgt (O := O) p n' ι σ w r lam0 t A,
      δ G ∈ Ntgt (O := O') p n' (φK.comp ι) σ (φ w) r lam0 t A := by
    intro A hA G hG
    refine Submodule.mem_inf.2 ⟨?_, ?_⟩
    · have h1 := scale_mem φK δ (fun G hG => dual_mem φ φK hφ ν x x' hx _ _ (hHL A hA) G hG) _
        (Submodule.mem_inf.1 hG).1
      rw [hwz] at h1
      exact h1
    · rw [Submodule.mem_iInf]
      intro e
      rw [Submodule.mem_iInf]
      intro he
      exact hRe' e he.1 G ((Submodule.mem_iInf _).1 ((Submodule.mem_iInf _).1 (Submodule.mem_inf.1 hG).2 e) he)
  obtain ⟨M, e, F, h1, h2, h3, n, hn, u, Mat, hu⟩ := h
  refine ⟨M, e, fun i => ν (F i), h1, fun i => hN _ (h1 i).1.1 _ (h2 i), ?_, n, ?_, ?_⟩
  · intro i e' he' hs hne
    have h4 := scale_mem φK ν (hRe e' he') _ (h3 i e' he' hs hne)
    rw [hwz] at h4
    exact h4
  · rw [hdim]; exact hn
  · have hbe : ∀ (i : Fin M) (Gd : Module.Dual Kf (Vsp Kf lam0)),
        be p r lam0 (ν (F i)) (δ Gd) = φK (be p r lam0 (F i) Gd) := by
      intro i Gd
      unfold be
      have h5 : ((p : Kf') ^ Ar r lam0) • ν (F i) = ν (((p : Kf) ^ Ar r lam0) • F i) := by
        rw [map_smulₛₗ, map_zpow₀, map_natCast]
      rw [h5]
      exact deltaS_apply φK ν x x' hx Gd _
    refine ⟨Fintype.linearCombination O' (fun l : Fin n =>
      (⟨δ (u (Pi.single l 1)).1, hN' L hL _ (u (Pi.single l 1)).2⟩ :
        ↥(Ntgt (O := O') p n' (φK.comp ι) σ (φ w) r lam0 t L))), Mat.map φ, ?_⟩
    intro y jj
    have e1 : ∀ i : Fin M, be p r lam0 (ν (F i)) ((Fintype.linearCombination O' (fun l : Fin n =>
        (⟨δ (u (Pi.single l 1)).1, hN' L hL _ (u (Pi.single l 1)).2⟩ :
          ↥(Ntgt (O := O') p n' (φK.comp ι) σ (φ w) r lam0 t L))) y :
          ↥(Ntgt (O := O') p n' (φK.comp ι) σ (φ w) r lam0 t L)) : Module.Dual Kf' (Vsp Kf' lam0)) =
        ∑ l, algebraMap O' Kf' (y l) * φK (be p r lam0 (F i) (u (Pi.single l 1)).1) := by
      intro i
      rw [Fintype.linearCombination_apply, Submodule.coe_sum]
      simp only [Submodule.coe_smul]
      rw [be_sum]
      exact Finset.sum_congr rfl fun l _ => by rw [hbe]
    have e2 : ∀ l : Fin n, ∑ i, algebraMap O' Kf' (φ (Mat jj i)) * φK (be p r lam0 (F i) (u (Pi.single l 1)).1) =
        algebraMap O' Kf' (φ ((p : O) ^ D * (Pi.single l (1 : O) : Fin n → O) jj)) := by
      intro l

      rw [← hφ, ← hu (Pi.single l 1) jj, map_sum]
      exact Finset.sum_congr rfl fun i _ => by rw [map_mul, hφ]
    simp only [e1, Matrix.map_apply]
    calc ∑ i, algebraMap O' Kf' (φ (Mat jj i)) *
          ∑ l, algebraMap O' Kf' (y l) * φK (be p r lam0 (F i) (u (Pi.single l 1)).1)
        = ∑ l, algebraMap O' Kf' (y l) *
          ∑ i, algebraMap O' Kf' (φ (Mat jj i)) * φK (be p r lam0 (F i) (u (Pi.single l 1)).1) := by
          simp only [Finset.mul_sum]
          rw [Finset.sum_comm]
          exact Finset.sum_congr rfl fun l _ => Finset.sum_congr rfl fun i _ => by ring
      _ = ∑ l, algebraMap O' Kf' (y l) *
          algebraMap O' Kf' (φ ((p : O) ^ D * (Pi.single l (1 : O) : Fin n → O) jj)) := by
          simp only [e2]
      _ = algebraMap O' Kf' ((p : O') ^ D * y jj) := by
          rw [Finset.sum_eq_single jj]
          · rw [Pi.single_eq_same, mul_one, map_pow, map_natCast, ← map_mul, mul_comm]
          · intro l _ hl
            rw [Pi.single_eq_of_ne hl.symm, mul_zero, map_zero, map_zero, mul_zero]
          · intro hjj
            exact absurd (Finset.mem_univ jj) hjj

end Main

theorem lpBaseChange : Formalism.MainNotions.G.LPBaseChange := by
  intro p n' W Qq O Kf O' Kf' _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ι σ j w φ φK hφ _ hS hS' m r lam0 t D κ cStar h
  refine ⟨h.1, fun L hL => ?_⟩
  by_cases hd : IsDominant lam0
  · exact lpAt_dom hφ hS hS' m r lam0 hd t D κ cStar L hL (h.2 L hL)
  · exact lpAt_nondom m r lam0 hd t D κ cStar L

end Formalism.L2.G.Model
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GroupLattices.FockModels.LPBase =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.AevalValuation.MemSupportedOf =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.AevalValuation.MemSupportedOf", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.AevalValuation.PlDefs\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RestPlOf\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.FrMemLetters\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.PosULeIff\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ValuationOneEqZero\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.ProdRangeZmod\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RenameMemSupported\nimport Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.FrRevInj\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.DerivativeValuationBounds\nimport Formalism.SharpRestriction.GrowthBounds.ValuationLowestDegreeMapFractionField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.TraceSpectra

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords Formalism.MainNotions.PairMembershipBlocks
open Formalism.MainNotions.TestSideWords.TwistedFiltration.G3 Formalism.MainNotions.G.GLWeightTheory

theorem ceil_le_of_geZ {x : WithTop ℤ} {t : ℝ} (h : geZ x t) : ((⌈t⌉ : ℤ) : WithTop ℤ) ≤ x := by
  cases x with
  | top => exact le_top
  | coe k => exact WithTop.coe_le_coe.2 (Int.ceil_le.2 (h k rfl))

theorem geZ_of_ceil_le {x : WithTop ℤ} {t : ℝ} (h : ((⌈t⌉ : ℤ) : WithTop ℤ) ≤ x) : geZ x t := by
  intro k hk
  subst hk
  exact Int.ceil_le.1 (WithTop.coe_le_coe.1 h)

theorem le_valS_sum {Kf : Type} [Field Kf] {ι : Type} {n : ℕ} [NeZero n] (LL : Letters ι) (S : Set ι) {α : Type}
    (s : Finset α) (f : α → MvPolynomial (ι × Fin n) Kf) (a : WithTop ℤ) (h : ∀ i ∈ s, a ≤ valS LL S (f i)) :
    a ≤ valS LL S (∑ i ∈ s, f i) := by
  refine Finset.sum_induction f (fun F => a ≤ valS LL S F) (fun F G hF hG => ?_) ?_ h
  · exact le_trans (le_min hF hG) (flt_valS_add LL S F G)
  · rw [valS_zero_eq_top]; exact le_top

theorem mem_supported_of {R σ : Type*} [CommSemiring R] (F : MvPolynomial σ R) (s : Set σ)
    (h : ∀ mo ∈ F.support, ∀ v ∈ mo.support, v ∈ s) : F ∈ supported R s := by
  rw [mem_supported]
  intro v hv
  obtain ⟨mo, hmo, hv'⟩ := (mem_vars_iff_mem_support v).1 (Finset.mem_coe.1 hv)
  exact h mo hmo v hv'

theorem of_mem_supported {R σ : Type*} [CommSemiring R] {F : MvPolynomial σ R} {s : Set σ} (hF : F ∈ supported R s)
    {mo : σ →₀ ℕ} (hmo : mo ∈ F.support) {v : σ} (hv : v ∈ mo.support) : v ∈ s :=
  (mem_supported.1 hF) (Finset.mem_coe.2 ((mem_vars_iff_mem_support v).2 ⟨mo, hmo, hv⟩))

theorem coeff_filtQ {Kf : Type} [Field Kf] {ι : Type} {n : ℕ} (Q : (ι → ℕ) → Prop) (F : MvPolynomial (ι × Fin n) Kf)
    (mo : ι × Fin n →₀ ℕ) : (filtQ Q F).coeff mo = if Q (fun i => multideg mo i) then F.coeff mo else 0 := by
  unfold filtQ
  rw [MvPolynomial.coeff_sum]
  simp only [coeff_monomial]
  rw [Finset.sum_ite_eq']
  by_cases hq : Q (fun i => multideg mo i)
  · by_cases hs : mo ∈ F.support
    · simp [Finset.mem_filter, hs, hq]
    · simp [Finset.mem_filter, hs, hq, notMem_support_iff.1 hs]
  · simp [Finset.mem_filter, hq]

theorem support_filtQ {Kf : Type} [Field Kf] {ι : Type} {n : ℕ} (Q : (ι → ℕ) → Prop) (F : MvPolynomial (ι × Fin n) Kf)
    {mo : ι × Fin n →₀ ℕ} (h : mo ∈ (filtQ Q F).support) : mo ∈ F.support := by
  rw [mem_support_iff, coeff_filtQ] at h
  rw [mem_support_iff]
  split_ifs at h
  · exact h
  · exact absurd rfl h

section Geo

variable {n' r : ℕ} [NeZero n'] [NeZero r] {Fr : Frames n' r} {L₁ N₁ : ℕ} {p : ℕ} {O : Type} [CommRing O]
  [IsDomain O] [IsDiscreteValuationRing O] {J : ℕ} [NeZero J] (Dt : SignedChainData p O r J)

theorem mlOf_ne_tp (j : ZMod J) (y : ℤ) (j' : ZMod J) (m : Fin r) (h : 1 ≤ m.val) :
    mlOf Fr Dt.nL j y ≠ ML.tp j' m h := by
  unfold mlOf
  split_ifs <;> simp

theorem chain_mem (hT : TieS Fr Dt) (j : ZMod J) (i : Fin (Dt.nch j)) (x : ML J Dt.nL r) :
    x ∈ Dt.chainML j i ↔ (∃ m : Fin r, x = ML.wc (j - 1) m) ∨
      (∃ l : Fin (Dt.nL j), x = ML.ll j l ∧ l.val < i.val) := by
  unfold SignedChainData.chainML
  rw [hT.2.2.2.2.2 j i]
  constructor
  · rintro ⟨y, hy, rfl⟩
    cases y with
    | inl l =>
      rcases hy with hy | ⟨l', hl', hlt⟩
      · simp at hy
      · have e := Sum.inl_injective hl'
        subst e
        exact Or.inr ⟨_, rfl, hlt⟩
    | inr m => exact Or.inl ⟨m, rfl⟩
  · rintro (⟨m, rfl⟩ | ⟨l, rfl, hlt⟩)
    · exact ⟨Sum.inr m, Or.inl (by simp), rfl⟩
    · exact ⟨Sum.inl l, Or.inr ⟨l, rfl, hlt⟩, rfl⟩

theorem posU_bounds (hV : Fr.Valid L₁ N₁) (hT : TieS Fr Dt) (j : ZMod J) (i : Fin (Dt.nch j)) :
    Fr.fr (segZ j - 1) (r - 1) < posU Fr (Dt.nL j) (segZ j) i.val ∧
      posU Fr (Dt.nL j) (segZ j) i.val ≤ Fr.fr (segZ j) 0 := by
  have hi : i.val < Dt.nL j + 1 := by have := i.isLt; have h2 := hT.2.2.2.2.1 j; omega
  unfold posU
  split_ifs with h
  · have := Formalism.MainNotions.NormalSetCounting.ll_between (Fr := Fr) (nL := Dt.nL) hT.2.1 j ⟨i.val, h⟩
    exact ⟨this.1, this.2.le⟩
  · rw [show i.val - Dt.nL j = 0 by omega]
    exact ⟨Formalism.MainNotions.Proposition5Numerics.frame_end_lt_next_start hV (segZ j), le_rfl⟩

theorem geo_chain (hV : Fr.Valid L₁ N₁) (hT : TieS Fr Dt) (j : ZMod J) (i : Fin (Dt.nch j)) (y : ℤ)
    (hy : y ∈ Fr.letters (segZ j)) :
    (y < posU Fr (Dt.nL j) (segZ j) i.val ↔ mlOf Fr Dt.nL j y ∈ Dt.chainML j i) ∧
      Dt.modelLet.vec (mlOf Fr Dt.nL j y) = LZ.vec y := by
  have hi : i.val < Dt.nL j + 1 := by have := i.isLt; have h2 := hT.2.2.2.2.1 j; omega
  have hpU := posU_bounds Dt hV hT j i
  have hcard := hT.2.1 j
  rcases restSpec n' r Fr L₁ N₁ hV J Dt.nL hT.2.1 j y hy with ⟨l, rfl, hm⟩ | ⟨m, rfl, hm⟩ | ⟨m, rfl, hm⟩
  · rw [hm, chain_mem Dt hT]
    have hl := l.isLt
    refine ⟨⟨fun h => Or.inr ⟨l, rfl, ?_⟩, ?_⟩, ?_⟩
    · by_contra hc
      push_neg at hc
      have hi' : i.val < Dt.nL j := lt_of_le_of_lt hc hl
      rw [Formalism.MainNotions.Proposition5Numerics.posU_ll' (Fr := Fr) (segZ j) (Dt.nL j) i.val hi'] at h
      rcases Nat.eq_or_lt_of_le hc with he | hlt
      · rw [he] at h
        exact lt_irrefl _ h
      · exact lt_asymm h (Formalism.MainNotions.Proposition5Numerics.llPos_lt (Fr := Fr) (segZ j) i.val l.val hlt (by rw [← hcard]; exact hl))
    · rintro (⟨m, hm'⟩ | ⟨l', hl', hlt⟩)
      · cases hm'
      · have hll : l = l' := eq_of_heq (ML.ll.inj hl').2
        subst hll
        by_cases hi' : i.val < Dt.nL j
        · rw [Formalism.MainNotions.Proposition5Numerics.posU_ll' (Fr := Fr) (segZ j) (Dt.nL j) i.val hi']
          exact Formalism.MainNotions.Proposition5Numerics.llPos_lt (Fr := Fr) (segZ j) l.val i.val hlt (by rw [← hcard]; exact hi')
        · have he : posU Fr (Dt.nL j) (segZ j) i.val = Fr.fr (segZ j) 0 := by
            unfold posU
            rw [if_neg hi', show i.val - Dt.nL j = 0 by omega]
          rw [he]
          exact (Formalism.MainNotions.NormalSetCounting.ll_between (Fr := Fr) (nL := Dt.nL) hT.2.1 j l).2
    · show Dt.sgn j l = decide (Even (llPos Fr (segZ j) l.val))
      exact hT.2.2.1 j l
  · rw [hm, chain_mem Dt hT]
    have hmr := m.isLt
    refine ⟨⟨fun h => absurd h (not_lt.2 ?_), fun h => ?_⟩, ?_⟩
    · exact le_trans hpU.2 (Formalism.MainNotions.Proposition5Numerics.dg_fr_le hV (segZ j) (Nat.zero_le _) (by omega))
    · rcases h with ⟨m', h'⟩ | ⟨l', h', _⟩ <;> cases h'
    · show true = decide (Even (Fr.fr (segZ j) (r - 1 - m.val)))
      exact (decide_eq_true (hV.2.2.2.2.1 _ _ (by omega)).2).symm
  · rw [hm, chain_mem Dt hT]
    have hmr := m.isLt
    refine ⟨⟨fun _ => Or.inl ⟨m, rfl⟩, fun _ => ?_⟩, ?_⟩
    · exact lt_of_le_of_lt (Formalism.MainNotions.Proposition5Numerics.dg_fr_le hV (segZ j - 1) (by omega) (by omega)) hpU.1
    · show true = decide (Even (Fr.fr (segZ j - 1) (r - 1 - m.val)))
      exact (decide_eq_true (hV.2.2.2.2.1 _ _ (by omega)).2).symm

theorem chi_out (hV : Fr.Valid L₁ N₁) (hT : TieS Fr Dt) (j j' : ZMod J) (hj : j' ≠ j) (i : Fin (Dt.nch j)) (y : ℤ)
    (hy : y ∈ Fr.letters (segZ j')) : mlOf Fr Dt.nL j' y ∉ Dt.chainML j i := by
  rw [chain_mem Dt hT]
  rcases restSpec n' r Fr L₁ N₁ hV J Dt.nL hT.2.1 j' y hy with ⟨l, _, hm⟩ | ⟨m, _, hm⟩ | ⟨m, _, hm⟩ <;> rw [hm]
  · rintro (⟨m', h⟩ | ⟨l', h, _⟩)
    · cases h
    · exact hj (ML.ll.inj h).1
  · rintro (⟨m', h⟩ | ⟨l', h, _⟩) <;> cases h
  · rintro (⟨m', h⟩ | ⟨l', h, _⟩)
    · exact hj (sub_left_inj.1 (ML.wc.inj h).1)
    · cases h

theorem chi_supp (j' : ZMod J) (F : MvPolynomial (ℤ × Fin r) (KK O)) (s : Set (ML J Dt.nL r × Fin r))
    (h : ∀ y ∈ Fr.letters (segZ j'), ∀ a : Fin r, (mlOf Fr Dt.nL j' y, a) ∈ s) :
    chi Fr Dt.nL (KK O) j' F ∈ supported (KK O) s := by
  refine Formalism.MainNotions.PairMembershipBlocks.T5.algHom_mem_supported _ s (fun v => ?_) F
  unfold chi
  rw [aeval_X]
  split_ifs with hv
  · exact X_mem_supported.2 (h v.1 hv v.2)
  · exact Subalgebra.zero_mem _

theorem val_chi (hVA : ValAeval) (hV : Fr.Valid L₁ N₁) (hT : TieS Fr Dt) (j : ZMod J) (i : Fin (Dt.nch j))
    (F : MvPolynomial (ℤ × Fin r) (KK O))
    (hF : F ∈ supported (KK O) {v : ℤ × Fin r | v.1 ∈ Fr.letters (segZ j)}) :
    valS LZ {y | y < posU Fr (Dt.nL j) (segZ j) i.val} F ≤
      valS Dt.modelLet (Dt.chainML j i) (chi Fr Dt.nL (KK O) j F) := by
  unfold chi
  refine hVA (KK O) ℤ (ML J Dt.nL r) r LZ Dt.modelLet {y | y < posU Fr (Dt.nL j) (segZ j) i.val}
    {y | y ∈ Fr.letters (segZ j)} (Dt.chainML j i) (mlOf Fr Dt.nL j) _ F hF ?_ ?_
  · intro v hvL hvS
    have hvL' : v.1 ∈ Fr.letters (segZ j) := hvL
    have hg := geo_chain Dt hV hT j i v.1 hvL'
    exact ⟨if_pos hvL', hg.1.1 hvS, hg.2⟩
  · intro v hvL hvS
    have hvL' : v.1 ∈ Fr.letters (segZ j) := hvL
    rw [if_pos hvL']
    exact X_mem_supported.2 (fun h => hvS ((geo_chain Dt hV hT j i v.1 hvL').1.2 h))

end Geo

section Core

variable {p : ℕ} {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {r J : ℕ} [NeZero J] [NeZero r]
  (Dt : SignedChainData p O r J)

theorem chain_core (hNN : ValNN) (hPM : PhMon) (hFP : FdigPh) (hFS : FdigSum) (hP : ∀ j m, 0 < Dt.P j m)
    (j : ZMod J) (i : Fin (Dt.nch j))
    (hch : ∀ x, x ∈ Dt.chainML j i ↔ (∃ m : Fin r, x = ML.wc (j - 1) m) ∨
      (∃ l : Fin (Dt.nL j), x = ML.ll j l ∧ l.val < i.val))
    (rho : (ZMod J × Fin r) × Fin r → ℕ) (b : TL J Dt.nL r × Fin r →₀ ℕ)
    (hb : ∀ (l : Fin (Dt.nL j)) (a : Fin r), Dt.sgn j l = false → b (⟨j, Sum.inl l⟩, a) = 0)
    (Pi' : MvPolynomial (ML J Dt.nL r × Fin r) (KK O))
    (hsupp : Pi' ∈ supported (KK O) {v | ∀ (j' : ZMod J) (m : Fin r) (h : 1 ≤ m.val), v.1 ≠ ML.tp j' m h})
    (T : WithTop ℤ) (hval : T ≤ valS Dt.modelLet (Dt.chainML j i) Pi') :
    T ≤ valS Dt.modelLet (Dt.chainML j i) (Dt.Fdig rho (monomial b 1 * Dt.ph Pi')) := by
  obtain ⟨w, hw⟩ : ∃ w : Set (ML J Dt.nL r), w = {x | ∃ (j' : ZMod J) (m : Fin r), x = ML.lab j' m} := ⟨_, rfl⟩
  have hdisj : Disjoint (Dt.chainML j i) w := by
    rw [Set.disjoint_left]
    intro x hx hxw
    rw [hw] at hxw
    obtain ⟨j', m', rfl⟩ := hxw
    rcases (hch _).1 hx with ⟨m, h⟩ | ⟨l, h, _⟩ <;> cases h
  have e1 : Dt.ph Pi' = ∑ M ∈ Pi'.support.image (fun μ => μ.filter (fun v => v.1 ∈ w)),
      Dt.ph (monomial M 1) * Dt.ph (wCoeff w M Pi') := by
    conv_lhs => rw [sum_wCoeff w Pi']

    rw [map_sum]
    exact Finset.sum_congr rfl fun M _ => map_mul _ _ _
  rw [e1, Finset.mul_sum, hFS]
  refine le_valS_sum _ _ _ _ _ fun M hM => ?_
  have hsM : wCoeff w M Pi' ∈ supported (KK O) {v | IsLW v.1} := by
    refine mem_supported_of _ _ fun ν hν v hv => ?_
    rw [mem_support_iff, coeff_wCoeff] at hν
    split_ifs at hν with hc
    · have hnw : v.1 ∉ w := by
        intro hvw
        have h1 : (ν.filter (fun v => v.1 ∈ w)) v = ν v := Finsupp.filter_apply_pos _ _ hvw
        rw [hc.1] at h1
        exact (Finsupp.mem_support_iff.1 hv) h1.symm
      have hMν : M + ν ∈ Pi'.support := mem_support_iff.2 hν
      have hvM : v ∈ (M + ν).support := by
        rw [Finsupp.mem_support_iff, Finsupp.add_apply]
        have := Finsupp.mem_support_iff.1 hv
        omega
      have htp := of_mem_supported hsupp hMν hvM
      obtain ⟨x, a⟩ := v
      cases x with
      | ll j' l => trivial
      | lab j' m => exact absurd (show ML.lab j' m ∈ w by rw [hw]; exact ⟨j', m, rfl⟩) hnw
      | wc j' m => trivial
      | tp j' m h => exact absurd rfl (htp j' m h)
    · exact absurd rfl hν
  rw [hPM, ← mul_assoc, monomial_mul, one_mul, hFP p O r J Dt hP rho _ _ _ hsM]
  split_ifs with hd
  · refine le_trans ?_ (flt_valS_mul_ge _ _ _ _)
    have h0 : (0 : WithTop ℤ) ≤
        valS Dt.modelLet (Dt.chainML j i) (monomial (liftMon Dt (b + phExp Dt M)) (1 : KK O)) := by
      refine hNN (KK O) _ r Dt.modelLet _ _ fun v hv hvS => ?_
      rw [vars_monomial one_ne_zero] at hv
      obtain ⟨x, a⟩ := v
      rcases (hch x).1 hvS with ⟨m, rfl⟩ | ⟨l, rfl, _⟩
      · rfl
      · show Dt.sgn j l = true
        by_contra hs
        have hs' : Dt.sgn j l = false := by simpa using hs
        have h1 := liftMon_w Dt (b + phExp Dt M) (⟨j, Sum.inl l⟩, a)
        have h2 : Dt.liftVar (⟨j, Sum.inl l⟩, a) = (ML.ll j l, a) := rfl
        have h3 : Pof Dt (⟨j, Sum.inl l⟩, a) = 1 := rfl
        have h4 : phExp Dt M (⟨j, Sum.inl l⟩, a) = M (ML.ll j l, a) := rfl
        have h5 : M (ML.ll j l, a) = 0 := by
          obtain ⟨μ, _, rfl⟩ := Finset.mem_image.1 hM
          refine Finsupp.filter_apply_neg _ _ ?_
          rw [hw]
          rintro ⟨j', m', h⟩
          cases h
        rw [h2, h3, Nat.div_one, Finsupp.add_apply, h4, h5, hb l a hs', add_zero] at h1
        exact (Finsupp.mem_support_iff.1 hv) h1
    have h1 : T ≤ valS Dt.modelLet (Dt.chainML j i) (wCoeff w M Pi') :=
      le_trans hval (valS_wCoeff_of_disj _ _ w hdisj Pi' M)
    calc T = 0 + T := (zero_add T).symm
      _ ≤ _ := add_le_add h0 h1
  · rw [valS_zero_eq_top]; exact le_top

end Core

theorem restChain_of (hVA : ValAeval) (hVF : ValFilt) (hNN : ValNN) (hPM : PhMon) (hCP : CompPh)
    (hFP : FdigPh) (hFS : FdigSum) : RestChain := by
  intro p _ n' r K m _ _ _ O _ _ _ _ hk Fr L₁ N₁ hV hn J _ Dt hT hJ A hA l hl ga hga t ht dPl rho' j i
  have hr : 1 ≤ r := NeZero.one_le
  obtain ⟨hTr1, hTr2⟩ := restTr p n' r K m O hk Fr L₁ N₁ hV hn J Dt hT A hA l hl ga hga
  obtain ⟨b, hb⟩ : ∃ b, b = plMon Fr p hk Dt.nL (l.mapDomain (castV hk) + ga) := ⟨_, rfl⟩
  rw [← hb] at hTr1 hTr2
  obtain ⟨Pi, hPi⟩ : ∃ Pi, Pi = ∏ j' : ZMod J,
      chi Fr Dt.nL (KK O) j' (MvPolynomial.map (algebraMap O (KK O)) (A (segZ j'))) := ⟨_, rfl⟩
  have hH : levP Fr p hk Dt.nL (zPl p O hk Fr A l ga) = monomial b 1 * Dt.ph Pi := by
    rw [hTr1, hPi, map_prod]
  rw [hH, hCP p O r J Dt dPl b 1 Pi]
  have hsuppA : ∀ j' : ZMod J, MvPolynomial.map (algebraMap O (KK O)) (A (segZ j')) ∈
      supported (KK O) {v : ℤ × Fin r | v.1 ∈ Fr.letters (segZ j')} := by
    intro j'
    have hlt : j'.val < Fr.J := by rw [← hT.1]; exact ZMod.val_lt j'
    have h1 : A (segZ j') ∈ supported O {v : ℤ × Fin r | v.1 ∈ Fr.letters (segZ j')} := hA j'.val hlt
    rw [mem_supported] at h1 ⊢
    intro v hv
    exact h1 (Finset.mem_coe.2 ((vars_map _ _) (Finset.mem_coe.1 hv)))
  have hPisupp : Pi ∈ supported (KK O) {v | ∀ (j' : ZMod J) (m : Fin r) (h : 1 ≤ m.val), v.1 ≠ ML.tp j' m h} := by
    rw [hPi]
    exact Subalgebra.prod_mem _ fun j' _ => chi_supp (Fr := Fr) Dt j' _ _ fun y _ a =>
      show ∀ (j'' : ZMod J) (m : Fin r) (h : 1 ≤ m.val), (mlOf Fr Dt.nL j' y, a).1 ≠ ML.tp j'' m h from
        fun j'' m h => mlOf_ne_tp (Fr := Fr) Dt j' y j'' m h
  have hu : i.val < Dt.nL j + r := by
    have := i.isLt
    have h2 := hT.2.2.2.2.1 j
    omega
  have hPival : ((⌈t j i.val⌉ : ℤ) : WithTop ℤ) ≤ valS Dt.modelLet (Dt.chainML j i) Pi := by
    rw [hPi, ← Finset.mul_prod_erase Finset.univ _ (Finset.mem_univ j)]
    refine le_trans ?_ (flt_valS_mul_ge _ _ _ _)
    have h1 : ((⌈t j i.val⌉ : ℤ) : WithTop ℤ) ≤ valS Dt.modelLet (Dt.chainML j i)
        (chi Fr Dt.nL (KK O) j (MvPolynomial.map (algebraMap O (KK O)) (A (segZ j)))) := by
      refine le_trans (ceil_le_of_geZ (ht j i.val hu)) ?_
      rw [← Formalism.MainNotions.G.Joints.StandardMonomialSpace.valS_map (algebraMap O (KK O)) (IsFractionRing.injective O (KK O))]
      exact val_chi Dt hVA hV hT j i _ (hsuppA j)
    have h2 : (0 : WithTop ℤ) ≤ valS Dt.modelLet (Dt.chainML j i) (∏ j' ∈ Finset.univ.erase j,
        chi Fr Dt.nL (KK O) j' (MvPolynomial.map (algebraMap O (KK O)) (A (segZ j')))) := by
      have hs : (∏ j' ∈ Finset.univ.erase j,
          chi Fr Dt.nL (KK O) j' (MvPolynomial.map (algebraMap O (KK O)) (A (segZ j')))) ∈
          supported (KK O) {v : ML J Dt.nL r × Fin r | v.1 ∉ Dt.chainML j i} :=
        Subalgebra.prod_mem _ fun j' hj' => chi_supp Dt j' _ _ fun y hy a =>
          chi_out Dt hV hT j j' (Finset.ne_of_mem_erase hj') i y hy
      refine hNN (KK O) _ r Dt.modelLet _ _ fun v hv hvS => ?_
      exact absurd hvS ((mem_supported.1 hs) (Finset.mem_coe.2 hv))
    calc ((⌈t j i.val⌉ : ℤ) : WithTop ℤ) = ((⌈t j i.val⌉ : ℤ) : WithTop ℤ) + 0 := (add_zero _).symm
      _ ≤ _ := add_le_add h1 h2
  refine geZ_of_ceil_le (chain_core Dt hNN hPM hFP hFS ?_ j i (chain_mem Dt hT j i) rho' b
    (hTr2 j) _ ?_ _ (le_trans hPival (hVF _ _ _ _ _ _ _)))
  · intro j' m'
    exact pow_pos (Fact.out : p.Prime).pos _
  · exact mem_supported_of _ _ fun mo hmo v hv => of_mem_supported hPisupp (support_filtQ _ _ hmo) hv

end Formalism.MainNotions.TraceSpectra
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.AevalValuation.MemSupportedOf =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialSupport.PhMonomialMul =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialSupport.PhMonomialMul", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.AevalValuation.PlDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.Finsupp.Pointwise\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.SharpRestriction.GrowthBounds.AevalValuation.RestSpec\nimport Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.TensZeroRight\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.LetterSubstitution

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords Formalism.MainNotions.PairMembershipBlocks Formalism.MainNotions.TraceSpectra

section Ph

variable {p : ℕ} {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {r J : ℕ} [NeZero J]
  (Dt : SignedChainData p O r J)

def phV : ML J Dt.nL r × Fin r → TL J Dt.nL r × Fin r
  | (ML.ll j l, a) => (⟨j, Sum.inl l⟩, a)
  | (ML.lab j m, a) => (⟨j, Sum.inr m⟩, a)
  | (ML.wc j m, a) => (⟨j, Sum.inr m⟩, a)
  | (ML.tp j m _, a) => (⟨j, Sum.inr m⟩, a)

def phW : ML J Dt.nL r × Fin r → ℕ
  | (ML.wc j m, _) => Dt.P j m
  | _ => 1

theorem ph_X (v : ML J Dt.nL r × Fin r) : Dt.ph (X v) = X (phV Dt v) ^ phW Dt v := by
  obtain ⟨w, a⟩ := v
  cases w <;> simp [SignedChainData.ph, phV, phW]

theorem phExp_zero : phExp Dt 0 = 0 := by
  ext ⟨⟨j, x⟩, a⟩
  rcases x with l | m
  · simp [phExp]
  · simp [phExp]

theorem phExp_add (M N : ML J Dt.nL r × Fin r →₀ ℕ) : phExp Dt (M + N) = phExp Dt M + phExp Dt N := by
  ext ⟨⟨j, l | m⟩, a⟩
  · simp [phExp]
  · simp only [phExp, Finsupp.coe_equivFunOnFinite_symm, Finsupp.coe_add, Pi.add_apply]
    split_ifs <;> ring

theorem phExp_single (v : ML J Dt.nL r × Fin r) (k : ℕ) :
    phExp Dt (Finsupp.single v k) = Finsupp.single (phV Dt v) (phW Dt v * k) := by
  ext ⟨⟨j, l | m⟩, a⟩ <;> rcases v with ⟨⟨j', l'⟩ | ⟨j', m'⟩ | ⟨j', m'⟩ | ⟨j', m', h'⟩, b⟩ <;>
    simp [phExp, phV, phW, Finsupp.single_apply]
  all_goals by_cases hj : j' = j
  all_goals first | (subst hj; simp_all) | simp_all
  all_goals (rintro h1 rfl rfl; omega)

end Ph

theorem phMon : PhMon := by
  intro p O _ _ _ r J _ Dt M c
  refine Finsupp.induction M ?_ ?_
  · simp [phExp_zero, SignedChainData.ph]
  · intro v k N _ _ ih
    rw [monomial_single_add, map_mul, map_pow, ih, ph_X, phExp_add, phExp_single, monomial_single_add, pow_mul]

section Alg2

variable {p : ℕ} {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {r J : ℕ} [NeZero J]
  (Dt : SignedChainData p O r J)

theorem ph_monomial_mul (β : TL J Dt.nL r × Fin r →₀ ℕ) (c : KK O) (M : ML J Dt.nL r × Fin r →₀ ℕ) (a : KK O) :
    monomial β c * Dt.ph (monomial M a) = monomial (β + phExp Dt M) (c * a) := by
  have h := phMon p O r J Dt M a
  rw [h, monomial_mul]

theorem multideg_add' {ι : Type} {n : ℕ} (a b : ι × Fin n →₀ ℕ) (x : ι) :
    multideg (a + b) x = multideg a x + multideg b x := by
  unfold multideg
  simp [Finset.sum_add_distrib]

theorem phExp_inl (M : ML J Dt.nL r × Fin r →₀ ℕ) (j : ZMod J) (l : Fin (Dt.nL j)) (a : Fin r) :
    phExp Dt M (⟨j, Sum.inl l⟩, a) = M (ML.ll j l, a) := by
  simp [phExp]

theorem phExp_inr (M : ML J Dt.nL r × Fin r →₀ ℕ) (j : ZMod J) (m : Fin r) (a : Fin r) :
    phExp Dt M (⟨j, Sum.inr m⟩, a) = M (ML.lab j m, a) + Dt.P j m * M (ML.wc j m, a) +
      (if h : 1 ≤ m.val then M (ML.tp j m h, a) else 0) := by
  simp [phExp]

theorem multideg_phExp (M : ML J Dt.nL r × Fin r →₀ ℕ) (x : TL J Dt.nL r) :
    multideg (phExp Dt M) x = phDeg Dt (fun y => multideg M y) x := by
  rcases x with ⟨j, l | m⟩
  · simp only [multideg, phDeg, phExp_inl]
  · simp only [multideg, phDeg, phExp_inr, Finset.sum_add_distrib, Finset.mul_sum]
    by_cases h : 1 ≤ (m : ℕ) <;> simp [h]

end Alg2

private theorem coeff_compD {Kf : Type} [Field Kf] {ι : Type} {s : ℕ} (d : ι → ℕ)
    (H : MvPolynomial (ι × Fin s) Kf) (m : ι × Fin s →₀ ℕ) :
    AddMonoidAlgebra.coeff (compD d H) m = if (∀ x, multideg m x = d x) then AddMonoidAlgebra.coeff H m else 0 := by
  unfold compD
  rw [coeff_sum]
  simp only [coeff_monomial]
  rw [Finset.sum_ite_eq']
  simp only [Finset.mem_filter, mem_support_iff]
  by_cases h : ∀ x, multideg m x = d x
  · by_cases h0 : AddMonoidAlgebra.coeff H m = 0 <;> simp [h, h0]
  · simp [h]

theorem compD_sum {Kf : Type} [Field Kf] {ι : Type} {s : ℕ} (d : ι → ℕ) {κ : Type*} (S : Finset κ)
    (f : κ → MvPolynomial (ι × Fin s) Kf) : compD d (∑ k ∈ S, f k) = ∑ k ∈ S, compD d (f k) := by
  ext m
  simp only [coeff_compD, coeff_sum]
  by_cases h : ∀ x, multideg m x = d x <;> simp [h]

theorem compPh : CompPh := by
  intro p O _ _ _ r J _ Dt d β c F
  have key : ∀ mo : ML J Dt.nL r × Fin r →₀ ℕ, ((∀ x, multideg (β + phExp Dt mo) x = d x) ↔
      ∀ x, multideg β x + phDeg Dt (fun y => multideg mo y) x = d x) := by
    intro mo
    simp only [multideg_add', multideg_phExp]
  unfold filtQ
  conv_lhs => rw [F.as_sum]

  rw [map_sum, Finset.mul_sum, compD_sum, map_sum, Finset.mul_sum, Finset.sum_filter]
  refine Finset.sum_congr rfl (fun mo _ => ?_)
  rw [ph_monomial_mul, _root_.Formalism.MainNotions.PairMembershipBlocks.T5.compD_monomial]
  simp only [key]
  split_ifs <;> rfl

theorem fdigSum : FdigSum := by
  intro p O _ _ _ r J Dt rho α s f
  classical
  refine Finset.induction_on s ?_ ?_
  · simp [SignedChainData.Fdig]
  · intro a s ha ih
    rw [Finset.sum_insert ha, Finset.sum_insert ha, _root_.Formalism.MainNotions.TestSideWords.Fdig_add, ih]

section Dig

variable {p : ℕ} {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {r J : ℕ} [NeZero J]
  (Dt : SignedChainData p O r J)

theorem lw_zero (M : ML J Dt.nL r × Fin r →₀ ℕ) (hM : ∀ v ∈ M.support, IsLW v.1) :
    (∀ j m a, M (ML.lab j m, a) = 0) ∧ (∀ j m h a, M (ML.tp j m h, a) = 0) := by
  refine ⟨fun j m a => ?_, fun j m h a => ?_⟩
  · by_contra hne
    exact hM _ (Finsupp.mem_support_iff.2 hne)
  · by_contra hne
    exact hM _ (Finsupp.mem_support_iff.2 hne)

theorem digOK_phExp (hP : ∀ j m, 0 < Dt.P j m) (rho : (ZMod J × Fin r) × Fin r → ℕ) (β : TL J Dt.nL r × Fin r →₀ ℕ)
    (M : ML J Dt.nL r × Fin r →₀ ℕ) (hM : ∀ v ∈ M.support, IsLW v.1) :
    Dt.digOK rho (β + phExp Dt M) ↔ Dt.digOK rho β := by
  obtain ⟨h1, h2⟩ := lw_zero Dt M hM
  unfold SignedChainData.digOK
  refine forall_congr' (fun j => forall_congr' (fun m => forall_congr' (fun a => ?_)))
  rw [Finsupp.add_apply, phExp_inr, h1, zero_add]
  split_ifs with h
  · rw [h2, add_zero, Nat.add_mul_mod_self_left]
  · rw [add_zero, Nat.add_mul_mod_self_left]

theorem liftMon_notin (mo : TL J Dt.nL r × Fin r →₀ ℕ) (w : ML J Dt.nL r × Fin r)
    (hw : w ∉ Set.range Dt.liftVar) : liftMon Dt mo w = 0 :=
  Finsupp.mapDomain_notin_range _ _ hw

theorem liftMon_phExp (hP : ∀ j m, 0 < Dt.P j m) (β : TL J Dt.nL r × Fin r →₀ ℕ) (M : ML J Dt.nL r × Fin r →₀ ℕ)
    (hM : ∀ v ∈ M.support, IsLW v.1) : liftMon Dt (β + phExp Dt M) = liftMon Dt β + M := by
  obtain ⟨h1, h2⟩ := lw_zero Dt M hM
  ext w
  by_cases hw : w ∈ Set.range Dt.liftVar
  · obtain ⟨x, rfl⟩ := hw
    simp only [liftMon, Finsupp.add_apply, Finsupp.mapDomain_apply_of_injective (_root_.Formalism.MainNotions.PairMembershipBlocks.liftVar_inj Dt)]
    rcases x with ⟨⟨j, l | m⟩, a⟩
    · simp [liftE, Pof, phExp_inl, SignedChainData.liftVar]
    · simp only [liftE, Finsupp.onFinset_apply, Pof, Finsupp.add_apply, phExp_inr, h1, zero_add,
        SignedChainData.liftVar]
      split_ifs with h
      · rw [h2, add_zero, Nat.add_mul_div_left _ _ (hP j m)]
      · rw [add_zero, Nat.add_mul_div_left _ _ (hP j m)]
  · rw [Finsupp.add_apply, liftMon_notin Dt _ w hw, liftMon_notin Dt _ w hw, zero_add]
    rcases w with ⟨v, a⟩
    cases v with
    | ll j l => exact absurd ⟨(⟨j, Sum.inl l⟩, a), rfl⟩ hw
    | wc j m => exact absurd ⟨(⟨j, Sum.inr m⟩, a), rfl⟩ hw
    | lab j m => exact (h1 j m a).symm
    | tp j m h => exact (h2 j m h a).symm

end Dig

theorem fdigPh : FdigPh := by
  intro p O _ _ _ r J _ Dt hP rho β c F hF
  have hsupp : ∀ mo ∈ F.support, ∀ v ∈ mo.support, IsLW v.1 := by
    intro mo hmo v hv
    exact (mem_supported.1 hF) (Finset.mem_coe.2 ((mem_vars_iff_mem_support v).2 ⟨mo, hmo, hv⟩))
  have hs := fdigSum p O r J Dt rho _ F.support
    (fun mo => monomial β c * Dt.ph (monomial mo (AddMonoidAlgebra.coeff F mo)))
  conv_lhs => rw [F.as_sum]

  rw [map_sum, Finset.mul_sum, hs]
  simp only [ph_monomial_mul, _root_.Formalism.MainNotions.PairMembershipBlocks.Fdig_mono]
  by_cases hd : Dt.digOK rho β
  · rw [if_pos hd]
    conv_rhs => rw [F.as_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl (fun mo hmo => ?_)
    rw [if_pos ((digOK_phExp Dt hP rho β mo (hsupp mo hmo)).2 hd),
      liftMon_phExp Dt hP β mo (hsupp mo hmo), monomial_mul]
  · rw [if_neg hd]
    refine Finset.sum_eq_zero (fun mo hmo => ?_)
    rw [if_neg (fun h => hd ((digOK_phExp Dt hP rho β mo (hsupp mo hmo)).1 h))]

end Formalism.MainNotions.LetterSubstitution
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialSupport.PhMonomialMul =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.AevalValuation =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.AevalValuation", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.AevalValuation.MemSupportedOf\npublic import Formalism.SharpRestriction.GrowthBounds.AevalValuation.ValGen\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialSupport.GeZSum\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialSupport.PhMonomialMul\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.TraceSpectra

theorem restChain : Formalism.MainNotions.PairMembershipBlocks.RestChain :=
  restChain_of valAeval valFilt Formalism.MainNotions.LetterSubstitution.valNN Formalism.MainNotions.LetterSubstitution.phMon Formalism.MainNotions.LetterSubstitution.compPh Formalism.MainNotions.LetterSubstitution.fdigPh
    Formalism.MainNotions.LetterSubstitution.fdigSum

theorem stmtE (D : Formalism.BasicNotions.D7) : tableLineDegreeFive.ClosedFormOfAdmitted D := Formalism.MainNotions.PairMembershipBlocks.stmtE_of_chain D restChain

end Formalism.MainNotions.TraceSpectra
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.AevalValuation =====

-- ===== clump member: Formalism.LocalToGlobal.GroupLattices.AdmissibleFamilyNoKernel =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GroupLattices.AdmissibleFamilyNoKernel", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCountTheoremWithConstants\npublic import Formalism.SharpRestriction.GrowthBounds.Joints\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.Cartan\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.DualInclusionLattices\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.ElementaryDivisorBasis\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.FlatModels.LetterWtAnti\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.LPBase\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.LoBlockActComp\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.MulMemRiemannRochSpaceAdd\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.OperatorsPreserveLattices\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.Sandwich\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TestSideFinal\npublic import Formalism.PeriodIntegrals.AdmissibleModel.WeylDim\npublic import Formalism.SharpRestriction.GlobalSchurBounds.CMFieldLemmas\npublic import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.ThickExists\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.GenericFramesLetters\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.LemmaOneEightHolds\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.PointsPropertyOfD7\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.RamificationTwoAndConjugationAtQAndD\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.SecondPropositionEveryLocalisation\npublic import Formalism.SharpRestriction.GrowthBounds.AevalValuation\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow\npublic import Formalism.SharpRestriction.GrowthBounds.HermitianTensor\npublic import Formalism.SharpRestriction.GrowthBounds.InitialMinorTransposeMemHighestWeight\npublic import Formalism.SharpRestriction.GrowthBounds.JointsLit\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.StabilizerCount\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree\npublic import Formalism.SharpRestriction.GrowthBounds.SizesAtRecord\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials\nimport Formalism.SharpRestriction.GrowthBounds.TopChoiceBounds\npublic import Formalism.SharpRestriction.GrowthBounds.TruncatedChains\npublic import Formalism.SharpRestriction.GrowthBounds.WittIdentPI\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.G

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.G

structure Loc : Prop where

  p14R : ∀ D : D7, SecondTheoremReduced D

theorem extremal_projector_tools_of_loc (h : Loc) : ExtremalProjectorTools where
  extremalProjectorAlt := ExtremalProjector.extremal_projector_statement

theorem local_model_results (h : Loc) : Loc6 := {
  p14R := h.p14R
  p39B := SelectionLemmas.Pf.secondPartClosed
  rationalPlanesClauseThree := Joints.Lit.weyl_dimension_formula_index_sets
  rationalPlanesClauseFour := Joints.Lit.branching_rule_count_form
  rationalPlanesClauseFive := Joints.Lit.pieri_rule_count_form
  dualInclusionLattices := Model.dualInclusionLattices
  bePerfect := Model.bePerfect
  lpOneEvery := Model.lPOneEvery
  flatTop := Model.flatTop
  dualHeightBasis := Model.dualHeightBasis
  hlSpans := Model.hlSpans
  testSide := Model.testSide
  wittIdent := WittPI.wittIdentity_holds
  criterionClauseElevenB := Joints.joint_types_corollary_sentences
  criterionClauseTwentyTwo := Joints.coarse_units_lemma
  criterionClauseThirtyFive := Model.fewBadOrbits
  criterionClauseThirtySix := Model.products_sections_integral }

theorem local_flatness_results (h : Loc) : Loc8 := {
  p13B := flipOneThree.Pf.theorem_I_closed_form_holds
  p13A := GramWindowAlt.theorem_A_closed_form_holds
  p15 := ColumnSystems.Pf.extendedClosedForm
  windowClauseTwo := Model.gl_branching_dimension
  windowClauseThree := Model.weyl_dual_weight_admissible
  lWeylV := Model.weylV_proved
  tFlatHH := Model.flatHH
  tCartanDomain := Model.cartanDomain_proved
  tCartanOnto := Model.cartanOnto_proved
  tKP2 := Joints.saturated_restriction_holds
  tKP3 := Joints.restriction_dimension_holds
  tRES := CountingStatementReduction.residue_division_transfer }

def LocalDataSystem {D : D7} {L : SizeData₂ D} (X : Inst D L) (Y : LatInst D) (low : D.what₂.Word → D.what₂.places.Pl → ℝ) : Prop :=
  ∀ hT : GatTies D, LatTied hT X Y → ∀ (u : D.what₂.Word) (w : D.what₂.places.Pl)
    (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)),
    ∃ (_ : Fact (D.what₂.places.resChar w).Prime) (std : _) (vp : _) (unif : _) (eO : _) (eO_spec : _) (dG : _)
      (dG_spec : _) (om : _) (Y5 : FormalGroupSystem.Pend (FormalGroupSystem.Sys.mk (D.gat u w hg) (Y.Fl u w hg) (Y.Lv u w hg)
        (Y.Ch u w hg) std vp unif eO eO_spec dG dG_spec om)),
      (FormalGroupSystem.adm1 D → FormalGroupSystem.adm6 D _ Y5 → FormalGroupSystem.admitted D _ Y5) ∧
      ∃ Fn : Fin (D.gat u w hg).P.nV → ℕ → ℝ,
        (∀ v, v ∉ (reps X (D.what₂.places.resChar w)).image (Y.vOf u w hg) → ∀ j < D.R.m, Y5.LowAt j v (Fn v (j + 1))) ∧
        low u w ≤ (∑ j ∈ Finset.Icc 1 D.R.m,
          ∑ v ∈ Finset.univ \ (reps X (D.what₂.places.resChar w)).image (Y.vOf u w hg), Fn v j) -
            ∑ j ∈ Finset.range D.R.m, (dG j : ℝ)

theorem hypIAt_ev {eps : ℝ} (Fm : FamP eps) (hLa : 0 < Fm.GK.La) (hCN : CornerGLContinuity.FamilyWindowLogBound Fm) :
    Ev Fm fun x i => Joints.HypIAt (Fm.D x i) (Fm.L x i) (Fm.Gx x i) Fm.GK := by
  obtain ⟨i0⟩ := Fm.Ix_zero
  have heps : 0 < eps := by
    simpa [Fm.L_eps] using (Fm.L 0 i0).sc.eps_pos
  obtain ⟨C31, _, h1⟩ := TopChoiceBounds.family_uniform_constant_holds Fm
  have h1' : Ev Fm fun x i => AuxBlock8.adm1 (Fm.D x i) (Fm.L x i) (Fm.Gx x i) C31 := h1
  have h4 : Ev Fm fun x i => AuxBlock8.ArchimedeanSignatureMatching (Fm.D x i) (Fm.L x i) Fm.GK := TopChoiceBounds.family_band_ratio_statement Fm hCN
  have h5 := family_sizes_bound Fm hLa (eps / 48) (by positivity)
  have hx31 : Ev Fm fun x i => CornerGLContinuity.LargeScaleConditions (Fm.D x i) (Fm.L x i) := TopChoiceBounds.family_large_scale_conditions_hold Fm
  obtain ⟨xa, hA⟩ := Filter.eventually_atTop.1 ((AuxBlock8.Pf.numMean_ev eps Fm.GK Fm.GK_nonneg 0 le_rfl).and
    (AuxBlock8.Pf.restHypI_ev eps Fm.GK Fm.GK_nonneg 0 C31))
  obtain ⟨x0, h⟩ := ((((h1'.and h4).and h5).and hx31).and (eventually_sizes_admitted Fm)).and (Ev.x1 Fm)
  refine ⟨max x0 xa, fun x hx i => ?_⟩
  obtain ⟨⟨⟨⟨⟨a1, a4⟩, a5⟩, a31⟩, aSz⟩, hx1⟩ := h x (le_trans (le_max_left _ _) hx) i
  obtain ⟨hNM, hRH⟩ := hA x (le_trans (le_max_right _ _) hx)
  have hxx := Fm.L_x x i hx1
  have hee := Fm.L_eps x i
  have NM := hNM (Fm.D x i) (Fm.L x i) hxx hee aSz.1 a5
  have ZetaZeros := hRH (Fm.D x i) (Fm.L x i) (Fm.Gx x i) hxx hee aSz a5 a4 a1 NM
  obtain ⟨w⟩ := exists_place (Fm.D x i)
  obtain ⟨_, _, _, _, _, _, hLaG⟩ := Fm.fills x hx1 i w
  intro p hc hp0 t0 ht0
  exact ⟨a31.1, a31.2.2 _ hc.2.2.2.1, ZetaZeros p hc hp0 t0 ht0, windows_of Fm.GK (Fm.params x hx1 i) hLaG p t0⟩

structure Fam {eps : ℝ} (Fm : FamP eps) : Prop where

  gatE : Ev Fm fun x i => TrivialStabiliserFiniteClasses (Fm.D x i)

  stdSub : Ev Fm fun x i => Joints.StdSubAt (Fm.D x i)

  localSystemLowTerm : Ev Fm fun x i => LocalDataSystem (Fm.Gx x i) (Fm.Gy x i) (AuxBlock8.lowU (Fm.D x i))

  localSystemSizeLowTerm : Ev Fm fun x i => LocalDataSystem (Fm.Gx x i) (Fm.Gy x i) (lowFE (Fm.L x i))

section NoKer

variable {D : D7} {L : SizeData₂ D}

def zeroCh (Y : LatInst D) : LatInst D where
  vOf := Y.vOf
  Fl := Y.Fl
  Lv := Y.Lv
  Ch := fun _ _ _ => ⟨fun _ => 0⟩
  Vram := Y.Vram

theorem chainK_zero {p : ℕ} {G : GAtP p} {Fl : Fills G} (Lv : Levels Fl) :
    ∀ m : ℕ, 1 ≤ m → ∀ F : Lv.Fm 0, (⟨fun _ => 0⟩ : Chain Lv).chainK m F = 0
  | 0, h, _ => absurd h (by omega)
  | n + 1, _, F => by simp [Chain.chainK]

theorem vKge_zero (Y : LatInst D) (hm : 1 ≤ D.R.m) (u : D.what₂.Word) (w : D.what₂.places.Pl)
    (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)) (F : (D.gat u w hg).Fn) (g : ℝ) :
    (zeroCh Y).vKge u w hg F g := by
  have h0 : ((zeroCh Y).Ch u w hg).chainK D.R.m F = 0 := chainK_zero _ D.R.m hm F
  unfold LatInst.vKge vGeLat
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible (D.gat u w hg).O
  refine ⟨ϖ, hϖ, ?_⟩
  rw [h0]
  exact Submodule.zero_mem _

theorem admissible_family_no_kernel {eps : ℝ} (Fm : FamP eps)
    (h1 : Adm1F Fm) (h4 : Adm4F Fm) (h5 : Adm5F Fm) (h6 : Adm6F Fm) (h7 : Adm7F Fm)
    (h8 : Adm8F Fm) (h9 : Adm9F Fm)
    (hE : Ev Fm fun x i => TrivialStabiliserFiniteClasses (Fm.D x i)) (hY : Ev Fm fun x i => OperatorsPreserveLattices (Fm.D x i))
    (hLP : Ev Fm fun x i => CornerGLContinuity.OrbitLatticeBounds (Fm.D x i) (Fm.L x i) (Fm.Gx x i) (Fm.Gy x i) Fm.GK)
    (hEp : Ev Fm fun x i => CornerGLContinuity.LatticeSandwich (Fm.D x i) (Fm.L x i) (Fm.Gx x i))
    (hd : NPDescF Fm) : AuxBlock8.AdmF Fm Fm.GK Fm.Gx (fun x i => zeroCh (Fm.Gy x i)) ∧
    Ev Fm fun x i => AuxBlock8.unitBoundAtTwistedPlaces (Fm.D x i) (Fm.L x i) (Fm.Gx x i) (zeroCh (Fm.Gy x i)) Fm.GK ∧
      AuxBlock8.admG1 (Fm.D x i) (Fm.L x i) (Fm.Gx x i) (zeroCh (Fm.Gy x i)) Fm.GK := by
  have hG1 : Ev Fm fun x i => AuxBlock8.unitBoundAtTwistedPlaces (Fm.D x i) (Fm.L x i) (Fm.Gx x i) (zeroCh (Fm.Gy x i)) Fm.GK ∧
      AuxBlock8.admG1 (Fm.D x i) (Fm.L x i) (Fm.Gx x i) (zeroCh (Fm.Gy x i)) Fm.GK := by
    obtain ⟨x0, h⟩ := ((((hE.and hY).and hLP).and hEp).and (eventually_large_scale_bound Fm)).and (Ev.x1 Fm)
    refine ⟨x0, fun x hx i => ?_⟩
    obtain ⟨⟨⟨⟨⟨hE, hY⟩, hLP⟩, hEp⟩, hB⟩, hx1⟩ := h x hx i
    have hU : AuxBlock8.unitBoundAtTwistedPlaces (Fm.D x i) (Fm.L x i) (Fm.Gx x i) (zeroCh (Fm.Gy x i)) Fm.GK := by
      intro _ _ u w hg _ _ _ _ _ _ _
      exact vKge_zero _ hB.1 u w hg _ _
    have hS1 : CornerGLContinuity.ServiceLowerValuation (Fm.D x i) (Fm.L x i) (Fm.Gx x i) (zeroCh (Fm.Gy x i)) Fm.GK := by
      intro _ _ u w hg _ _
      exact vKge_zero _ hB.1 u w hg _ _
    exact ⟨hU, TopChoiceBounds.gluing_statement_of_proof _ _ _ (TopChoiceBounds.gluing_statement_holds Fm.GK (Fm.Gx x i) (zeroCh (Fm.Gy x i))
      ⟨hU, stability_of_trivial_stabilisers hE, service_statement_of_stability _ _ _ (FormalGroupSystem.Pf.stmt6G _ _ _ _ _) hE hY, hLP, hEp,
        saturated_ramified_lattice _ (Fm.ex x hx1 i).cmp (Fm.ex x hx1 i).lat.vram, hB, hS1⟩).1⟩
  have hA : AuxBlock8.AdmF Fm Fm.GK Fm.Gx (fun x i => zeroCh (Fm.Gy x i)) := by
    obtain ⟨C31, hC31, h1⟩ := h1
    obtain ⟨Cm, hCm, h8⟩ := h8
    obtain ⟨Ce, hCe, h9⟩ := h9
    refine ⟨C31, Ce, Cm, hC31, hCe, hCm, fun δ hδ => ?_⟩
    obtain ⟨x0, h⟩ := ((((((((h1.and h4).and (h5 δ hδ)).and h6).and h7).and h8).and h9).and
      hG1).and (eventually_sizes_admitted Fm))
    refine ⟨max x0 2, lt_of_lt_of_le one_lt_two (le_max_right _ _), fun x hx i => ?_⟩
    obtain ⟨⟨⟨⟨⟨⟨⟨⟨a1, a4⟩, a5⟩, a6⟩, a7⟩, a8⟩, a9⟩, aU, aG⟩, aS⟩ :=
      h x (le_trans (le_max_left _ _) hx) i
    exact ⟨a1, a4, a5, a6, a7, a8, a9, aU, aG, aS⟩
  exact ⟨hA, hG1⟩

theorem linkG_without_kernels {eps : ℝ} (Fm : FamP eps)
    (h1 : Adm1F Fm) (h4 : Adm4F Fm) (h5 : Adm5F Fm) (h6 : Adm6F Fm) (h7 : Adm7F Fm)
    (h8 : Adm8F Fm) (h9 : Adm9F Fm)
    (hE : Ev Fm fun x i => TrivialStabiliserFiniteClasses (Fm.D x i)) (hY : Ev Fm fun x i => OperatorsPreserveLattices (Fm.D x i))
    (hLP : Ev Fm fun x i => CornerGLContinuity.OrbitLatticeBounds (Fm.D x i) (Fm.L x i) (Fm.Gx x i) (Fm.Gy x i) Fm.GK)
    (hEp : Ev Fm fun x i => CornerGLContinuity.LatticeSandwich (Fm.D x i) (Fm.L x i) (Fm.Gx x i))
    (hd : NPDescF Fm) : LinkG Fm := by
  obtain ⟨hA, hG1⟩ := admissible_family_no_kernel Fm h1 h4 h5 h6 h7 h8 h9 hE hY hLP hEp hd
  obtain ⟨C, δ, hδ, hP'⟩ := AuxBlock8.Pf.stmtF Fm Fm.GK Fm.GK_nonneg Fm.Gx _ hA
  have hP'' : Ev Fm fun x i => AuxBlock8.Conclusion₂ (Fm.D x i) (Fm.L x i) (Fm.Gx x i) Fm.GK C ((Fm.L x i).sc.b ^ δ x) := hP'
  obtain ⟨x0, h⟩ := (((((hP''.and hG1).and (servedGIdx_ev Fm)).and (svBound_ev Fm)).and (nuServed_ev Fm)).and
    (sizeDataLat_ev Fm hd)).and (Ev.x1 Fm)
  refine ⟨4 * |C| + 1, x0, δ, hδ, fun x hx i => ?_⟩
  obtain ⟨⟨⟨⟨⟨⟨hp, hg⟩, hs⟩, hv⟩, hi⟩, hf⟩, hx1⟩ := h x hx i
  exact linkG_at_of (Fm.Gx x i) (zeroCh (Fm.Gy x i)) Fm.GK Fm.GK_nonneg C _ (Fm.gatT x i) (Fm.fills x hx1 i)
    hf (Fm.supp_sat x hx1 i) (Fm.latTied x hx1 i) (Fm.nuDef x hx1 i) hp.1 hp.2.1 hp.2.2 hg.2 hs hv hi

theorem linkG_fam_noKer {eps : ℝ} (Fm : FamP eps) (h14 : SecondTheoremAtFamily Fm) (h13 : FirstTheoremAtFamily Fm)
    (hLa : 0 < Fm.GK.La) (hCe : 1 ≤ Fm.cX.Ce) (hCb : Ev Fm fun x i => CbLarge Fm.GK (Fm.L x i).sc)
    (hE : Ev Fm fun x i => TrivialStabiliserFiniteClasses (Fm.D x i)) (hS : Ev Fm fun x i => Joints.StdSubAt (Fm.D x i))
    (hd : NPDescF Fm) (hCN : CornerGLContinuity.FamilyWindowLogBound Fm) : LinkG Fm := by
  obtain ⟨C, hC0, a1, a2, a3, a4, a5, a6, hp14⟩ := h14
  obtain ⟨CH, C', b0, b1, b2, b3, b4, b5, b6, hp13⟩ := h13
  have h6 := family_second_bound_of_theorem Fm C hC0 a1 a2 a3 a4 a5 a6 hp14
  have h7 := family_kappa_bound Fm (kapIDefF Fm)
  have h8 := family_first_bound_of_theorem Fm CH C' (kapIDefF Fm) b0 b1 b2 b3 b4 b5 b6 hp13
  have hCe0 : 0 ≤ Fm.cX.Ce := le_trans zero_le_one hCe
  have h9 : Adm9F Fm := by
    obtain ⟨x1, hx1⟩ := Ev.x1 Fm
    exact ⟨Fm.cX.Ce, hCe0, x1, fun x hx i => Joints.weyl_sandwich_of_factors _ _ _ Fm.cX.Ce hCe0 (Fm.ex x (hx1 x hx i) i).ep_def
      (Joints.weylSandwich_of_model _ (Model.modelSandwichG_of_ties _ (Fm.gatT x i)))
      (Joints.expBound_of _ _ _ Fm.cX.Ce hCe (Fm.ex x (hx1 x hx i) i).ep_def (Fm.params x (hx1 x hx i) i)
        (Fm.gatT x i))⟩
  have hLP : Ev Fm fun x i => CornerGLContinuity.OrbitLatticeBounds (Fm.D x i) (Fm.L x i) (Fm.Gx x i) (Fm.Gy x i) Fm.GK := by
    obtain ⟨x0, h⟩ := ((((h6.and h7).and hS).and (hypIAt_ev Fm hLa hCN)).and
      (Joints.hypIIAt_fam Fm hCN)).and hCb
    exact ⟨x0, fun x hx i => Joints.linear_programming_input_of_hypotheses _ _ _ _ _ (h x hx i).1.1.1.1.1 (h x hx i).1.1.1.1.2
        (h x hx i).1.1.1.2 Model.lpBaseChange (h x hx i).1.1.2 (h x hx i).1.2
        (rho_le_rhoB _ _ _ Fm.GK_nonneg.2.1 (La_nonneg Fm.GK_nonneg.1 _) (h x hx i).2)⟩
  have hEp : Ev Fm fun x i => CornerGLContinuity.LatticeSandwich (Fm.D x i) (Fm.L x i) (Fm.Gx x i) := by
    obtain ⟨Ce, _, x0, h⟩ := id h9
    exact ⟨x0, fun x hx i => TopChoiceBounds.sandwich_of_exponent_clause _ Ce (Fm.gatT x i) (h x hx i)⟩
  exact linkG_without_kernels Fm (family_first_lemma Fm)
    (family_orders_bound_of_lemma Fm (TopChoiceBounds.family_band_ratio_holds Fm) hCN) (family_sizes_bound Fm hLa) h6 h7 h8 h9 hE
    ⟨0, fun x _ i u w hg => Model.operators_preserve_lattices _ _⟩ hLP hEp hd

theorem link_of_local_closed (𝒞 : FamClass) (h : Loc)
    (hE : Closed 𝒞 fun Fm _ => Ev Fm fun x i => TrivialStabiliserFiniteClasses (Fm.D x i))
    (hS : Closed 𝒞 fun Fm _ => Ev Fm fun x i => Joints.StdSubAt (Fm.D x i))
    (hd : Closed 𝒞 fun Fm _ => NPDescF Fm) :
    Closed 𝒞 fun Fm _ => LinkG Fm :=
  (((((((((second_theorem_closed_form 𝒞 (second_theorem_absolute_constant (extremal_projector_tools_of_loc h) (local_model_results h))).and
    (first_theorem_closed_form 𝒞 (first_theorem_threshold_functions (extremal_projector_tools_of_loc h)
      (loc8All_of (extremal_projector_tools_of_loc h) (local_model_results h) (local_flatness_results h))))).and (signs_closed 𝒞)).and
    (ones_closed 𝒞)).and (cb_closed 𝒞)).and hE).and hS).and hd).and (TopChoiceBounds.family_log_bound_closed 𝒞)).imp
    fun Fm _ _ h => linkG_fam_noKer Fm h.1.1.1.1.1.1.1.1 h.1.1.1.1.1.1.1.2 h.1.1.1.1.1.1.2.1
      h.1.1.1.1.1.2.2.2 h.1.1.1.1.2 h.1.1.1.2 h.1.1.2 h.1.2 h.2

theorem loc_proved : Loc := by
  exact ⟨fun D => Formalism.MainNotions.G.criterion_restricted_of_closed D (Formalism.MainNotions.TraceSpectra.stmtE D)⟩

end NoKer

end Formalism.L2.G

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GroupLattices.AdmissibleFamilyNoKernel =====

-- ===== clump member: Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.NpDescOfValRat =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.NpDescOfValRat", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.YvRatOfValRat\npublic import Formalism.SharpRestriction.GrowthBounds.JointsLit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.G.Cmp

open Formalism.MainNotions.G Formalism.BasicNotions

variable {D : D7} (c : LatCmp D)

theorem yvRat (h : ValRat c) : Formalism.MainNotions.G.Joints.Lit.YvRat c :=
  fun u w hg v => yvRat_of_valRat c h u w hg v

theorem npDesc_of_valRat {L : SizeData₂ D} (hT : GatTies D) (X : Inst D L) (Y : LatInst D) (K : Consts)
    (hv : c.VramDef Y) (h : ValRat c) : c.NPDesc X Y K :=
  Formalism.MainNotions.G.Joints.Lit.NPDesc_of c hT X Y K hv (yvRat c h)

end Formalism.L2.G.Cmp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.NpDescOfValRat =====

-- ===== clump member: Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.NpDescFOfValRatF =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.NpDescFOfValRatF", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.TiedRec\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCountTheoremWithConstants\npublic import Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.YvRatOfValRat\npublic import Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.NpDescOfValRat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.G.Cmp

open Formalism.MainNotions Formalism.MainNotions.G Formalism.BasicNotions Formalism.L2.Forms

def ValRatF {eps : ℝ} (Fm : FamP eps) : Prop :=
  Ev Fm fun x i => ∀ hx : Fm.x1 < x, ValRat (Fm.ex x hx i).cmp

theorem npDescF_of_valRatF {eps : ℝ} (Fm : FamP eps) (h : ValRatF Fm) : NPDescF Fm := by
  obtain ⟨x0, hx0⟩ := h
  exact ⟨x0, fun x hx i hx1 => npDesc_of_valRat _ (Fm.gatT x i) (Fm.Gx x i) (Fm.Gy x i) Fm.GK
    (Fm.ex x hx1 i).lat.vram (hx0 x hx i hx1)⟩

theorem CmpTied.valRat {D : D7} {X : Formalism.L2.Herm.Herm0 D} {T : ∀ u : D.what₂.Word, Forms0 D u} {Gt : GatTies D}
    {c : LatCmp D} (K : CmpTied D X T Gt c) : ValRat c := by
  exact fun u w hg x i L hL => ⟨_, ((K.tie u w hg).val_cmp x i L hL).symm⟩

end Formalism.L2.G.Cmp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.NpDescFOfValRatF =====

-- ===== clump member: Formalism.LocalToGlobal.GroupLattices.LinkGConcreteNoKer =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GroupLattices.LinkGConcreteNoKer", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.StdSubAtOfRing\npublic import Formalism.LocalToGlobal.GroupLattices.AdmissibleFamilyNoKernel\npublic import Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.NpDescFOfValRatF\npublic import Formalism.LocalToGlobal.GroupLattices.TrivialTransfer.GramTotallyDefinite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.G

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.G

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem stdSubF_of_tied {eps : ℝ} (Fm : FamP eps) (h : GroupCompatibilityFamily Fm) : Ev Fm fun x i => Joints.StdSubAt (Fm.D x i) := by
  obtain ⟨x0, h0⟩ := h.and (Ev.x1 Fm)
  refine ⟨x0, fun x hx i => ?_⟩
  obtain ⟨ht, hx1⟩ := h0 x hx i
  obtain ⟨G⟩ := ht hx1
  exact stdSubAt_of_ring _ G.ring

theorem gatEF_of_tied {eps : ℝ} (Fm : FamP eps) (h : GroupCompatibilityFamily Fm) : Ev Fm fun x i => TrivialStabiliserFiniteClasses (Fm.D x i) := by
  obtain ⟨x0, h0⟩ := h.and (Ev.x1 Fm)
  refine ⟨x0, fun x hx i => ?_⟩
  obtain ⟨ht, hx1⟩ := h0 x hx i
  obtain ⟨G⟩ := ht hx1
  exact gatE_of_gatIs _ G.herm.lev0
    (fun u => Triv.trivStabU (G.herm.lev0 u) (Fm.D x i).host.g_prime (Fm.D x i).host.g_ne) G.gat

theorem npDescF_of_tied {eps : ℝ} (Fm : FamP eps) (h : GroupCompatibilityFamily Fm) : NPDescF Fm := by
  refine Cmp.npDescF_of_valRatF Fm ?_
  obtain ⟨x0, h0⟩ := h
  exact ⟨x0, fun x hx i hx1 => by
    obtain ⟨G⟩ := h0 x hx i hx1
    exact Cmp.CmpTied.valRat G.cmp⟩

theorem linkG_concrete_noKer (𝒞 : FamClass) (h : Loc)
    (hT : Closed 𝒞 fun Fm _ => GroupCompatibilityFamily Fm) :
    Closed 𝒞 fun Fm _ => LinkG Fm :=
  link_of_local_closed 𝒞 h (hT.imp fun Fm _ _ ht => gatEF_of_tied Fm ht) (hT.imp fun Fm _ _ ht => stdSubF_of_tied Fm ht)
    (hT.imp fun Fm _ _ ht => npDescF_of_tied Fm ht)

theorem linkG_concrete5 (𝒞 : FamClass) (hT : Closed 𝒞 fun Fm _ => GroupCompatibilityFamily Fm) :
    Closed 𝒞 fun Fm _ => LinkG Fm :=
  linkG_concrete_noKer 𝒞 loc_proved hT

end Formalism.L2.G
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GroupLattices.LinkGConcreteNoKer =====
