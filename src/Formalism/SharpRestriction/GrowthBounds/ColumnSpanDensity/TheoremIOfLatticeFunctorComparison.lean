module

public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FactorizationBoundMonoLattices
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.DensityNumericalFacts
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LocalHypothesisOfGlobal
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ColumnSpanNumericalFacts
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Mathlib.LinearAlgebra.FreeModule.PID
public import Mathlib.RingTheory.DiscreteValuationRing.TFAE
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudPropOfMapsRetractionBasis
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LatticeMapsOfFunctorComparison
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ProdSmulPowT
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.SingleWeightLatticeComparison
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FunctorComparisonOfSingleWeight
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.TensorKP
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.Tensor
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.EdgeLatRS
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.MeanDefs
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.InitialLevelFormula
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.SegStartSpec
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.NumBase
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FourDepthLtConductorOfBounds
public import Mathlib.Analysis.SpecialFunctions.Log.Basic
public import Mathlib.Analysis.Complex.ExponentialBounds
public import Formalism.PolynomialDimension.DigitClassCount
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThresholdFinalFacts
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.TwoHundredLeRadius
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ModelIdentificationOfExplicitMap
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ResidueClassCountOfTensorBasisInclusion
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RestOIso
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.TensorBoundOfOrderBound
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LpRingIndepOf
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LatticeCountPrimeMonoLevel
import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.SegmentStatementHolds
import Formalism.PolynomialDimension.WeylDim
import Formalism.SharpRestriction.GrowthBounds.UnramifiedQuadraticSetting
import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FinrankLetter
import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.InvariantSectionsTransportGL
import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RhoUpperBoundSmallDepth

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.MidMeanOf, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.BlockSplit, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudPropOfMapsBasis, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FunctorComparisonOfSingleWeightFacts, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RestTensor, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.TheoremIOfIntermediateBounds, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.OddTops, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThrLPOf, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.DensAbs, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThresholdDensityFacts, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThresholdFixedWeightFacts, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.TheoremIOfLatticeFunctorComparison

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.MidMeanOf =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.MidMeanOf", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FactorizationBoundMonoLattices\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.DensityNumericalFacts\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LocalHypothesisOfGlobal\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ColumnSpanNumericalFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.flipOneThree.Pf

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree

def FM (K : Cst) (X : Dat) : Prop := FixedWeightNumericalFacts K X ∧ DensityNumericalFacts K X ∧ MeanKappaNumericalFacts K X ∧ ColumnSpanNumericalFacts K X

theorem midMean_of (D : Formalism.BasicNotions.D7) (h61a : RhoSumLowerBoundEdge) (h60ab : RhoUpperBoundSmallDepth) (hE : RestEdge) (hD : RestDims) (K : Cst)
    (hK : K.Pos) : MidMean D K (FM K) := fun hA X hF R =>
  have hk := keyIneq_of D K hA h61a h60ab hE hD X hF.1 R
  mean_of K hK X hF.2.2.2 R (avg_of hD K X hF.2.1 R hk 0 (Nat.zero_le _)) (avg_of hD K X hF.2.1 R hk X.ccl le_rfl)
    (meanX_of D K hK hA X hF.2.2.1 R)

theorem TransportedAlt.and {K : Cst} {F G : ℝ → Dat → Prop} (hF : TransportedAlt K F) (hG : TransportedAlt K G) : TransportedAlt K fun C X => F C X ∧ G C X := by
  obtain ⟨T, Cn, hT, hCn, h⟩ := hF
  obtain ⟨T', Cn', _, _, h'⟩ := hG
  exact ⟨max T T', max Cn Cn', lt_max_of_lt_left hT, lt_max_of_lt_left hCn, fun CH hCH C hC X hX =>
    ⟨h CH (le_trans (le_max_left _ _) hCH) C (le_trans (le_max_left _ _) hC) X hX,
      h' CH (le_trans (le_max_right _ _) hCH) C (le_trans (le_max_right _ _) hC) X hX⟩⟩

end Formalism.MainNotions.flipOneThree.Pf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.MidMeanOf =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.BlockSplit =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.BlockSplit", "h": "module\n\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.FreeModule.PID\npublic import Mathlib.RingTheory.DiscreteValuationRing.TFAE\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.flipOneThree.Pf.KP

open Module

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

private noncomputable def bspZ (n : ℕ) (z : O) : Submodule O (Fin n → O) :=
  LinearMap.range (z • (LinearMap.id : (Fin n → O) →ₗ[O] (Fin n → O)))

private theorem bsp_one (n : ℕ) (z : O) (A : Matrix (Fin n) (Fin n) O) :
    ∃ (ν : ℕ) (v : Fin ν → (Fin n → O)),
      LinearMap.range (Matrix.mulVecLin A) ≤
        Submodule.span O (Set.range v) ⊔ IsLocalRing.maximalIdeal O • bspZ n z ∧
      ∃ (P : Matrix (Fin ν) (Fin n) O) (Q : Matrix (Fin n) (Fin ν) O),
        P * A * Q = z • (1 : Matrix (Fin ν) (Fin ν) O) := by
  classical
  haveI : ValuationRing O :=
    ((IsDiscreteValuationRing.TFAE O (IsDiscreteValuationRing.not_isField O)).out 1 2).mp
      (inferInstance : IsDiscreteValuationRing O)
  obtain ⟨m, S⟩ := Submodule.smithNormalForm (Pi.basisFun O (Fin n))
    (LinearMap.range (Matrix.mulVecLin A))
  let T : Finset (Fin m) := Finset.univ.filter (fun k => S.a k ∣ z)
  let e : Fin T.card ≃ T := T.equivFin.symm
  choose x hx using fun k : Fin m => (S.bN k).2
  have hc : ∀ t : T, ∃ c, z = S.a t.1 * c := fun t => (Finset.mem_filter.mp t.2).2
  choose c hc' using hc
  let w : Fin T.card → (Fin n → O) := fun i => c (e i) • x (e i).1
  have hAw : ∀ i, Matrix.mulVec A (w i) = z • S.bM (S.f (e i).1) := by
    intro i
    have h1 := hx (e i).1
    rw [Matrix.mulVecLin_apply] at h1
    show Matrix.mulVec A (c (e i) • x (e i).1) = _
    rw [Matrix.mulVec_smul, h1, S.snf, smul_smul, hc' (e i), mul_comm]
  refine ⟨T.card, fun i => S.bM (S.f (e i).1), ?_, ?_⟩
  · intro y hy
    have e2 := congrArg Subtype.val (S.bN.sum_repr ⟨y, hy⟩)
    simp only [Submodule.coe_sum, Submodule.coe_smul] at e2
    rw [← e2]
    refine Submodule.sum_mem _ fun k _ => Submodule.smul_mem _ _ ?_
    rw [S.snf]
    by_cases hk : S.a k ∣ z
    · apply Submodule.mem_sup_left
      apply Submodule.smul_mem
      apply Submodule.subset_span
      exact ⟨e.symm ⟨k, Finset.mem_filter.mpr ⟨Finset.mem_univ _, hk⟩⟩, by simp⟩
    · apply Submodule.mem_sup_right
      obtain ⟨d, hd⟩ := (ValuationRing.dvd_total (S.a k) z).resolve_left hk
      have hdm : d ∈ IsLocalRing.maximalIdeal O := by
        rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
        intro hu
        exact hk ⟨↑hu.unit⁻¹, by rw [hd, mul_assoc, IsUnit.mul_val_inv, mul_one]⟩
      rw [hd, mul_comm, ← smul_smul]
      exact Submodule.smul_mem_smul hdm ⟨S.bM (S.f k), rfl⟩
  · refine ⟨Matrix.of fun i r => S.bM.coord (S.f (e i).1) (fun j => if r = j then 1 else 0),
      Matrix.of fun r i => w i r, ?_⟩
    ext i i'
    rw [Matrix.mul_assoc, Matrix.mul_apply]
    have hcol : ∀ r, (A * Matrix.of fun r i => w i r) r i' = (z • S.bM (S.f (e i').1)) r := by
      intro r
      rw [← hAw i']
      simp [Matrix.mul_apply, Matrix.mulVec, dotProduct]
    simp only [hcol, Matrix.of_apply]
    have hφ : ∑ r, S.bM.coord (S.f (e i).1) (fun j => if r = j then 1 else 0) *
        (z • S.bM (S.f (e i').1)) r = S.bM.coord (S.f (e i).1) (z • S.bM (S.f (e i').1)) := by
      rw [LinearMap.pi_apply_eq_sum_univ (S.bM.coord (S.f (e i).1)) (z • S.bM (S.f (e i').1))]
      refine Finset.sum_congr rfl fun r _ => ?_
      rw [smul_eq_mul, mul_comm]
    rw [hφ, map_smul, Module.Basis.coord_apply, Module.Basis.repr_self, Matrix.smul_apply,
      Matrix.one_apply, smul_eq_mul, smul_eq_mul]
    by_cases hii : i = i'
    · subst hii
      simp
    · have hne : S.f (e i).1 ≠ S.f (e i').1 := fun h =>
        hii (e.injective (Subtype.ext (S.f.injective h)))
      simp [hne, hii]

theorem blockSplit {J : Type} [Fintype J] (n : ℕ) (z : O) (hz : z ≠ 0)
    (A : J → Matrix (Fin n) (Fin n) O) (h : ∑ j, A j = z • (1 : Matrix (Fin n) (Fin n) O)) :
    ∃ ν : J → ℕ, n ≤ ∑ j, ν j ∧ ∀ j, ∃ (P : Matrix (Fin (ν j)) (Fin n) O)
      (Q : Matrix (Fin n) (Fin (ν j)) O), P * A j * Q = z • (1 : Matrix _ _ O) := by
  classical
  choose ν v hv P Q hPQ using fun j => bsp_one n z (A j)
  refine ⟨ν, ?_, fun j => ⟨P j, Q j, hPQ j⟩⟩
  let V : (Σ j, Fin (ν j)) → (Fin n → O) := fun jk => v jk.1 jk.2
  let W : Submodule O (Fin n → O) := Submodule.span O (Set.range V)
  have hvW : ∀ j, Submodule.span O (Set.range (v j)) ≤ W := by
    intro j
    apply Submodule.span_mono
    rintro _ ⟨k, rfl⟩
    exact ⟨⟨j, k⟩, rfl⟩
  have hsum : ∀ (s : Finset J) (x : Fin n → O), Matrix.mulVec (∑ j ∈ s, A j) x = ∑ j ∈ s, Matrix.mulVec (A j) x := by
    intro s x
    induction s using Finset.induction_on with
    | empty => simp
    | insert j s hj ih => rw [Finset.sum_insert hj, Finset.sum_insert hj, Matrix.add_mulVec, ih]
  have hZ : bspZ n z ≤ W ⊔ IsLocalRing.maximalIdeal O • bspZ n z := by
    rintro _ ⟨x, rfl⟩
    have hx : (z • (LinearMap.id : (Fin n → O) →ₗ[O] (Fin n → O))) x = ∑ j, Matrix.mulVec (A j) x := by
      rw [LinearMap.smul_apply, LinearMap.id_apply, ← hsum, h, Matrix.smul_mulVec,
        Matrix.one_mulVec]
    rw [hx]
    refine Submodule.sum_mem _ fun j _ => ?_
    exact sup_le_sup_right (hvW j) _ (hv j ⟨x, rfl⟩)
  have hfg : (bspZ n z).FG := by
    unfold bspZ
    rw [LinearMap.range_eq_map]
    exact Module.Finite.fg_top.map _
  have hjac : IsLocalRing.maximalIdeal O ≤ Ideal.jacobson ⊥ := by
    rw [IsLocalRing.jacobson_eq_maximalIdeal ⊥ bot_ne_top]
  have hZW : bspZ n z ≤ W := Submodule.le_of_le_smul_of_le_jacobson_bot hfg hjac hZ
  let f := z • (LinearMap.id : (Fin n → O) →ₗ[O] (Fin n → O))
  have hinj : LinearMap.ker f = ⊥ := by
    rw [LinearMap.ker_eq_bot]
    intro x y hxy
    exact smul_right_injective _ hz hxy
  have hli : LinearIndependent O (fun i : Fin n => f (Pi.basisFun O (Fin n) i)) :=
    (Pi.basisFun O (Fin n)).linearIndependent.map' f hinj
  have hle := linearIndependent_le_span' _ hli (Set.range V) (by
    rintro _ ⟨i, rfl⟩
    exact hZW ⟨_, rfl⟩)
  calc n = Fintype.card (Fin n) := (Fintype.card_fin n).symm
    _ ≤ Fintype.card (Set.range V) := by
        rw [Cardinal.mk_fintype] at hle
        exact_mod_cast hle
    _ ≤ Fintype.card (Σ j, Fin (ν j)) := Fintype.card_range_le V
    _ = ∑ j, ν j := by simp [Fintype.card_sigma]

end Formalism.MainNotions.flipOneThree.Pf.KP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.BlockSplit =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudPropOfMapsBasis =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudPropOfMapsBasis", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudPropOfMapsRetractionBasis\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.flipOneThree.Pf

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree

theorem latRetract : LatRetract := by
  unfold LatRetract
  intro O K V V' _ _ _ _ _ _ _ _ _ _ _ _ _ _ ι ι' _ _ b b' io hio
  classical
  set L := Submodule.span O (Set.range b) with hL
  set L' := Submodule.span O (Set.range b') with hL'
  have hcoord : ∀ x ∈ L, ∀ i, ∃ a : O, algebraMap O K a = b.repr x i := by
    intro x hx i
    exact ⟨(b.restrictScalars O).repr ⟨x, hx⟩ i, Module.Basis.restrictScalars_repr_apply O b ⟨x, hx⟩ i⟩
  have hinj : Function.Injective io := by
    rw [← LinearMap.ker_eq_bot, Submodule.eq_bot_iff]
    intro F hF
    rw [LinearMap.mem_ker] at hF
    by_contra hne
    obtain ⟨i, hi⟩ : ∃ i, b.repr F i ≠ 0 := by
      by_contra h
      push_neg at h
      exact hne (b.ext_elem (fun j => by simp [h j]))
    obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
    have hϖ0 : algebraMap O K ϖ ≠ 0 := fun h0 =>
      hϖ.ne_zero (IsFractionRing.injective O K (by rw [h0, map_zero]))
    have hmem : ((algebraMap O K ϖ)⁻¹ * (b.repr F i)⁻¹) • F ∈ L := by
      rw [← hio, map_smul, hF, smul_zero]
      exact Submodule.zero_mem _
    obtain ⟨a, ha⟩ := hcoord _ hmem i
    rw [map_smul, Finsupp.smul_apply, smul_eq_mul, mul_assoc, inv_mul_cancel₀ hi, mul_one] at ha
    apply hϖ.not_isUnit
    refine isUnit_iff_exists_inv.mpr ⟨a, ?_⟩
    apply IsFractionRing.injective O K
    rw [map_mul, ha, map_one, mul_inv_cancel₀ hϖ0]
  let φ : L →ₗ[O] L' :=
    LinearMap.codRestrict L' ((io.restrictScalars O).domRestrict L) (fun x => (hio x).2 x.2)
  have hφ : Function.Injective φ := fun x y h => Subtype.ext (hinj (congrArg Subtype.val h))
  haveI : Module.Finite O L' := Module.Finite.span_of_finite O (Set.finite_range b')
  haveI : NoZeroSMulDivisors O (L' ⧸ LinearMap.range φ) := by
    refine ⟨fun {a q} h => ?_⟩
    obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective _ q
    rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero] at h
    rcases eq_or_ne a 0 with ha | ha
    · exact Or.inl ha
    right
    rw [Submodule.Quotient.mk_eq_zero]
    obtain ⟨x, hx⟩ := h
    have hx' : io (x : V) = a • (y : V') := congrArg Subtype.val hx
    have hK : algebraMap O K a ≠ 0 := fun h0 =>
      ha (IsFractionRing.injective O K (by rw [h0, map_zero]))
    have hyio : (y : V') = io ((algebraMap O K a)⁻¹ • (x : V)) := by
      rw [map_smul, hx', ← algebraMap_smul K a (y : V'), smul_smul, inv_mul_cancel₀ hK, one_smul]
    have hmem : (algebraMap O K a)⁻¹ • (x : V) ∈ L := (hio _).1 (hyio ▸ y.2)
    exact ⟨⟨_, hmem⟩, Subtype.ext hyio.symm⟩
  haveI : Module.Free O (L' ⧸ LinearMap.range φ) := Module.free_of_finite_type_torsion_free'
  obtain ⟨s, hs⟩ := Module.projective_lifting_property (LinearMap.range φ).mkQ LinearMap.id
    (Submodule.mkQ_surjective _)
  let pr : L' →ₗ[O] L' := LinearMap.id - s ∘ₗ (LinearMap.range φ).mkQ
  have hpr : ∀ y, pr y ∈ LinearMap.range φ := by
    intro y
    have h2 := LinearMap.congr_fun hs ((LinearMap.range φ).mkQ y)
    simp only [LinearMap.comp_apply, LinearMap.id_apply] at h2
    rw [← Submodule.ker_mkQ (LinearMap.range φ), LinearMap.mem_ker]
    simp only [pr, LinearMap.sub_apply, LinearMap.id_apply, LinearMap.comp_apply, map_sub, h2, sub_self]
  let e := LinearEquiv.ofInjective φ hφ
  let r0 : L' →ₗ[O] L := e.symm.toLinearMap ∘ₗ LinearMap.codRestrict (LinearMap.range φ) pr hpr
  have hr0 : ∀ x : L, r0 (φ x) = x := by
    intro x
    have h1 : (LinearMap.range φ).mkQ (φ x) = 0 := by
      rw [← LinearMap.mem_ker, Submodule.ker_mkQ]
      exact LinearMap.mem_range_self φ x
    show e.symm (LinearMap.codRestrict _ pr hpr (φ x)) = x
    rw [LinearEquiv.symm_apply_eq]
    apply Subtype.ext
    simp [LinearMap.codRestrict_apply, h1, e, pr, LinearEquiv.ofInjective_apply]
  let ret : V' →ₗ[K] V := b'.constr K (fun j => ((r0 ⟨b' j, Submodule.subset_span ⟨j, rfl⟩⟩ : L) : V))
  have hA : ∀ y : L', ret (y : V') = (r0 y : V) := by
    have h3 : (ret.restrictScalars O) ∘ₗ L'.subtype = L.subtype ∘ₗ r0 := by
      refine (b'.restrictScalars O).ext (fun j => ?_)
      have hj : (b'.restrictScalars O) j = ⟨b' j, Submodule.subset_span ⟨j, rfl⟩⟩ :=
        Subtype.ext (Module.Basis.restrictScalars_apply _ _ _)
      rw [hj]
      simp [ret]
    intro y
    exact LinearMap.congr_fun h3 y
  refine ⟨ret, ?_, ?_⟩
  · have h4 : ret ∘ₗ io = LinearMap.id := by
      refine b.ext (fun i => ?_)
      have hbi : b i ∈ L := Submodule.subset_span ⟨i, rfl⟩
      rw [LinearMap.comp_apply, LinearMap.id_apply]
      have h5 := hA (φ ⟨b i, hbi⟩)
      rw [hr0] at h5
      exact h5
    intro F
    exact LinearMap.congr_fun h4 F
  · intro G hG
    rw [hA ⟨G, hG⟩]
    exact (r0 ⟨G, hG⟩).2

theorem cloud_prop_of_maps_basis (hC : RestCloudMaps) (hBP : BePerfect) (hD3 : DualHeightBasis) : CloudLowerBoundWeyl :=
  cloud_prop_of_maps_retraction_basis hC latRetract hBP hD3

theorem cloud_bound_of_maps (hC : RestCloudMaps) (hBP : BePerfect) (hD3 : DualHeightBasis) (hW : WeylV) : CloudWeightLowerBound :=
  cloud_bound_of_prop_and_weyl_dimension (cloud_prop_of_maps_basis hC hBP hD3) hW

end Formalism.MainNotions.flipOneThree.Pf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudPropOfMapsBasis =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FunctorComparisonOfSingleWeightFacts =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FunctorComparisonOfSingleWeightFacts", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LatticeMapsOfFunctorComparison\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ProdSmulPowT\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.SingleWeightLatticeComparison\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FunctorComparisonOfSingleWeight\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.TensorKP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.flipOneThree.Pf

private theorem exists_linearMap_prod_rename_eq {K : Type} [Field K] (I β γ : Type) [Fintype I] [DecidableEq I]
    (f : I → MvPolynomial β K →ₗ[K] MvPolynomial γ K) :
    ∃ Φ : MvPolynomial (I × β) K →ₗ[K] MvPolynomial (I × γ) K,
      ∀ P : I → MvPolynomial β K,
        Φ (∏ i, MvPolynomial.rename (fun v : β => (i, v)) (P i)) =
          ∏ i, MvPolynomial.rename (fun v : γ => (i, v)) (f i (P i)) := by
  classical
  let Φ : MvPolynomial (I × β) K →ₗ[K] MvPolynomial (I × γ) K :=
    (MvPolynomial.basisMonomials (I × β) K).constr K
      (fun m => ∏ i, MvPolynomial.rename (fun v : γ => (i, v))
        (f i (MvPolynomial.monomial (m.curry i) 1)))
  have hΦb : ∀ m, Φ (MvPolynomial.basisMonomials (I × β) K m) =
      ∏ i, MvPolynomial.rename (fun v : γ => (i, v))
        (f i (MvPolynomial.monomial (m.curry i) 1)) :=
    fun m => Module.Basis.constr_basis _ _ _ _
  have hcur : ∀ (g : I → β →₀ ℕ) (i : I),
      (∑ j, Finsupp.mapDomain (fun v : β => (j, v)) (g j)).curry i = g i := by
    intro g i
    ext b
    rw [Finsupp.curry_apply, Finsupp.finsetSum_apply, Finset.sum_eq_single i]
    · exact Finsupp.mapDomain_apply_of_injective (fun a c h => (Prod.ext_iff.1 h).2) _ _
    · intro j _ hj
      apply Finsupp.mapDomain_notin_range
      rintro ⟨c, hc⟩
      exact hj (congrArg Prod.fst hc)
    · intro h
      exact absurd (Finset.mem_univ i) h
  refine ⟨Φ, fun P => ?_⟩
  let L : (I → MvPolynomial β K) →ₘₗ[K] MvPolynomial (I × γ) K :=
    Φ.compMultilinearMap ((MultilinearMap.mkPiAlgebra K I (MvPolynomial (I × β) K)).compLinearMap
      (fun i => (MvPolynomial.rename (fun v : β => (i, v))).toLinearMap))
  let M : (I → MvPolynomial β K) →ₘₗ[K] MvPolynomial (I × γ) K :=
    (MultilinearMap.mkPiAlgebra K I (MvPolynomial (I × γ) K)).compLinearMap
      (fun i => (MvPolynomial.rename (fun v : γ => (i, v))).toLinearMap ∘ₗ f i)
  have hLM : L = M := by
    refine Module.Basis.ext_multilinear (fun _ => MvPolynomial.basisMonomials β K) fun g => ?_
    simp only [L, M, LinearMap.compMultilinearMap_apply, MultilinearMap.compLinearMap_apply,
      MultilinearMap.mkPiAlgebra_apply, MvPolynomial.coe_basisMonomials, AlgHom.toLinearMap_apply,
      LinearMap.comp_apply, MvPolynomial.rename_monomial]
    rw [← MvPolynomial.monomial_sum_one]
    have hb : (MvPolynomial.monomial (∑ i, Finsupp.mapDomain (fun v : β => (i, v)) (g i)) (1 : K)) =
        MvPolynomial.basisMonomials (I × β) K (∑ i, Finsupp.mapDomain (fun v : β => (i, v)) (g i)) := by
      rw [MvPolynomial.coe_basisMonomials]
    rw [hb, hΦb]
    refine Finset.prod_congr rfl fun i _ => ?_
    rw [hcur]
  have h := congrArg (fun F => F P) hLM
  simpa [L, M] using h

theorem existsIO' : ExistsIO := by
  intro K _ S α _ _ TT i
  classical
  let f : S → MvPolynomial α K →ₗ[K] MvPolynomial (Bool × α) K := fun s =>
    if h : s ∈ TT then i ⟨s, h⟩
    else (MvPolynomial.aeval (fun _ : α => (0 : MvPolynomial (Bool × α) K))).toLinearMap
  obtain ⟨Φ, hΦ⟩ := exists_linearMap_prod_rename_eq (K := K) S α (Bool × α) f
  let ψ : MvPolynomial (S × (Bool × α)) K →ₐ[K] MvPolynomial ((TT × Bool) × α) K :=
    MvPolynomial.aeval (fun x : S × (Bool × α) =>
      if h : x.1 ∈ TT then (MvPolynomial.X ((⟨x.1, h⟩, x.2.1), x.2.2) : MvPolynomial ((TT × Bool) × α) K)
      else 0)
  refine ⟨ψ.toLinearMap ∘ₗ Φ, fun P hP => ?_⟩
  rw [LinearMap.comp_apply, hΦ, AlgHom.toLinearMap_apply, map_prod]
  have key : ∀ s : S, ψ (MvPolynomial.rename (fun v : Bool × α => (s, v)) (f s (P s))) =
      if h : s ∈ TT then
        MvPolynomial.rename (fun v : Bool × α => (((⟨s, h⟩ : TT), v.1), v.2)) (i ⟨s, h⟩ (P s))
      else 1 := by
    intro s
    by_cases h : s ∈ TT
    · rw [dif_pos h]
      have hf : f s = i ⟨s, h⟩ := by simp only [f, dif_pos h]
      rw [hf]
      have hc : ψ.comp (MvPolynomial.rename (fun v : Bool × α => (s, v))) =
          MvPolynomial.rename (fun v : Bool × α => (((⟨s, h⟩ : TT), v.1), v.2)) := by
        apply MvPolynomial.algHom_ext
        intro v
        simp [ψ, h]
      exact congrArg (fun F : MvPolynomial (Bool × α) K →ₐ[K] MvPolynomial ((TT × Bool) × α) K =>
        F (i ⟨s, h⟩ (P s))) hc
    · rw [dif_neg h]
      have hf : f s = (MvPolynomial.aeval (fun _ : α => (0 : MvPolynomial (Bool × α) K))).toLinearMap := by
        simp only [f, dif_neg h]
      rw [hf, hP s h]
      simp
  rw [Finset.prod_congr rfl fun s _ => key s]
  rw [← Finset.prod_subset (Finset.subset_univ TT) (fun s _ hs => dif_neg hs)]
  rw [← Finset.prod_coe_sort TT]
  refine Finset.prod_congr rfl fun s _ => ?_
  rw [dif_pos s.2]

theorem existsPR' : ExistsPR := by
  intro K _ S α _ _ TT pr
  obtain ⟨Φ, hΦ⟩ := exists_linearMap_prod_rename_eq (K := K) TT (Bool × α) α pr
  refine ⟨(MvPolynomial.rename (fun x : TT × α => ((x.1 : S), x.2))).toLinearMap ∘ₗ Φ ∘ₗ
    (MvPolynomial.rename (fun x : (TT × Bool) × α => (x.1.1, (x.1.2, x.2)))).toLinearMap, fun Y => ?_⟩
  have h1 : (MvPolynomial.rename (fun x : (TT × Bool) × α => (x.1.1, (x.1.2, x.2))))
      (∏ s : TT, MvPolynomial.rename (fun v : Bool × α => ((s, v.1), v.2)) (Y s)) =
      ∏ s : TT, MvPolynomial.rename (fun v : Bool × α => (s, v)) (Y s) := by
    rw [map_prod]
    exact Finset.prod_congr rfl fun s _ => (MvPolynomial.rename_rename _ _ _).trans rfl
  have h2 : ∀ s : TT, MvPolynomial.rename (fun x : TT × α => ((x.1 : S), x.2))
      (MvPolynomial.rename (fun v : α => (s, v)) (pr s (Y s))) =
      MvPolynomial.rename (fun v : α => ((s : S), v)) (pr s (Y s)) :=
    fun s => (MvPolynomial.rename_rename _ _ _).trans rfl
  simp only [LinearMap.comp_apply, AlgHom.toLinearMap_apply]
  rw [h1, hΦ, map_prod]
  exact Finset.prod_congr rfl fun s _ => h2 s

theorem regroupP : RegroupP := fun _ _ _ _ _ _ _ _ _ N y hy => KP.regroup N y hy

theorem functor_comparison_of_single_weight_facts (h : SingleWeightLatticeComparison) : LatticeFunctorComparison := functor_comparison_of_single_weight existsIO' existsPR' regroupP h

end Formalism.MainNotions.flipOneThree.Pf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FunctorComparisonOfSingleWeightFacts =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RestTensor =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RestTensor", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.Tensor\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.EdgeLatRS\nimport Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LatticeCountPrimeMonoLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.flipOneThree.Pf

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree Formalism.MainNotions.G.LatticeSystems

theorem restLeLat : RestLeLat := by
  intro p n' R m e he s
  obtain ⟨gs, hgs, -, h2, -⟩ := edgeLat_RS R e he
  refine ⟨_, ?_, h2 s⟩
  rw [Matrix.det_mul]
  exact (hgs s).mul (lb_D_det (m + 1) 1 _ (RS.w_ne R))

theorem restTensor : RestTensor := restTensor_of restLeLat

end Formalism.MainNotions.flipOneThree.Pf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RestTensor =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.TheoremIOfIntermediateBounds =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.TheoremIOfIntermediateBounds", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.MeanDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.flipOneThree.Pf

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree

theorem kF_nonneg (X : Dat) (K : Cst) (R : RS X.p X.n') (al be : X.TT → ℕ) : 0 ≤ X.kF K R al be :=
  Real.sInf_nonneg fun _ h => h.1

open Classical in
theorem kText_nonneg (X : Dat) (K : Cst) (R : RS X.p X.n') (hb : 0 < X.b') (aa bb : X.TT → ℤ) :
    0 ≤ X.kText K R aa bb := by
  unfold Dat.kText
  have h1 : 0 ≤ (if X.Inside aa bb then
      X.kF K R (fun s => (aa s - X.ccl).toNat) (fun s => (bb s - X.ccl).toNat) else 1) := by
    split_ifs
    · exact kF_nonneg _ _ _ _ _
    · exact zero_le_one
  have h2 := kF_nonneg X K R (fun s => (aa s + X.ccl).toNat) (fun s => (bb s + X.ccl).toNat)
  have h3 : 0 ≤ 12 * (X.N : ℝ) * X.k * X.ccl / X.b' := by
    unfold Dat.k
    positivity
  linarith

theorem theorem_I_of_intermediate_bounds (D : Formalism.BasicNotions.D7) (FM : Cst → Dat → Prop) (hR : LPRingIndep) (hLP : ∀ K C, MidLP K C)
    (hMean : ∀ K : Cst, K.Pos → MidMean D K (FM K)) (hN1 : ∀ K : Cst, K.Pos → TransportedAlt K (FactsLP K))
    (hN2 : ∀ K : Cst, K.Pos → TransportedAlt K (fun _ => FM K)) : SecondPartClosed D := by
  intro hA
  obtain ⟨T0, hT0, h0⟩ := hA 4 (by norm_num)
  refine ⟨T0, hT0, fun C₀ hC₀ => ?_⟩
  obtain ⟨T1, hT1, h1⟩ := h0 C₀ hC₀
  obtain ⟨T2, hT2, h2⟩ := h1 T1 T1 T1 le_rfl le_rfl le_rfl
  obtain ⟨CA, Ckap, Ct, Cs, hCA, hCkap, hCt, hCs, hAdm⟩ := h2 T2 le_rfl
  let K : Cst := ⟨C₀, T2, CA, T1, T1, T1, Ckap, Ct, Cs⟩
  have hK : K.Pos := ⟨lt_of_lt_of_le hT0 hC₀, hT2, hCA, hT1, hT1, hT1, hCkap, hCt, hCs⟩
  obtain ⟨Ta, Ca, hTa, hCa, hFa⟩ := hN1 K hK
  obtain ⟨Tb, Cb, hTb, hCb, hFb⟩ := hN2 K hK
  refine ⟨max Ta Tb, max (max Ca Cb) K.Cmean, lt_max_of_lt_left hTa,
    lt_max_of_lt_left (lt_max_of_lt_left hCa), fun CH hCH => ?_⟩
  intro p n' m TT G' N₁ Y Yb a b' bl bu ccl Dp cStar hH
  have hm : m ≠ 0 := by
    have := hH.2.2.2.2.2.2.1
    omega
  have hY : 1 ≤ Y := hH.1
  let X : Dat := ⟨p, n', m, hm, TT, G', N₁, Y, Yb, a, b', bl, bu, ccl, Dp, cStar⟩
  have hX : X.Hyp K.C₀ CH := hH
  have hLPf : FactsLP K (max (max Ca Cb) K.Cmean) X :=
    hFa CH (le_trans (le_max_left _ _) hCH) _ (le_trans (le_max_left _ _) (le_max_left _ _)) X hX
  have hMf : FM K X :=
    hFb CH (le_trans (le_max_right _ _) hCH) (max (max Ca Cb) K.Cmean)
      (le_trans (le_max_right _ _) (le_max_left _ _)) X hX
  have hnn : 0 ≤ (TT.card : ℝ) * N₁ / Y := by positivity
  by_cases hne : Nonempty (RS p n')
  · obtain ⟨R₀⟩ := hne
    refine ⟨X.kText K R₀, kText_nonneg X K R₀ hLPf.bpos, ?_, ?_⟩
    · have h := hMean K hK hAdm X hMf R₀
      have h' : K.Cmean * (TT.card : ℝ) * N₁ / Y ≤ max (max Ca Cb) K.Cmean * (TT.card : ℝ) * N₁ / Y := by
        have := mul_le_mul_of_nonneg_right (le_max_right (max Ca Cb) K.Cmean) hnn
        calc K.Cmean * (TT.card : ℝ) * N₁ / Y = K.Cmean * ((TT.card : ℝ) * N₁ / Y) := by ring
          _ ≤ max (max Ca Cb) K.Cmean * ((TT.card : ℝ) * N₁ / Y) := this
          _ = _ := by ring
      exact le_trans h h'
    · intro W Qq O Kf _ _ _ _ _ _ _ _ _ _ ι σ j w hstd aw bw lam0 hW t ht
      let R : RS p n' := ⟨W, Qq, O, Kf, ι, σ, j, w, hstd⟩
      exact hR p n' R₀ R m 1 lam0 t Dp _ cStar (hLP K _ X hLPf R₀ aw bw lam0 hW t ht)
  · refine ⟨fun _ _ => 0, fun _ _ => le_rfl, ?_, ?_⟩
    · have h0 : meanKap TT m Y a bl bu (fun _ _ => (0 : ℝ)) = 0 := by simp [meanKap]
      rw [h0]
      have hC : 0 ≤ max (max Ca Cb) K.Cmean := le_of_lt (lt_max_of_lt_left (lt_max_of_lt_left hCa))
      have := mul_nonneg hC hnn
      calc (0 : ℝ) ≤ max (max Ca Cb) K.Cmean * ((TT.card : ℝ) * N₁ / Y) := this
        _ = _ := by ring
    · intro W Qq O Kf _ _ _ _ _ _ _ _ _ _ ι σ j w hstd
      exact absurd ⟨(⟨W, Qq, O, Kf, ι, σ, j, w, hstd⟩ : RS p n')⟩ hne

end Formalism.MainNotions.flipOneThree.Pf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.TheoremIOfIntermediateBounds =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.OddTops =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.OddTops", "h": "module\n\nimport Formalism.SharpRestriction.GrowthBounds.BinomialRatio.SegmentStatementHolds\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.InitialLevelFormula\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.SegStartSpec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.flipOneThree.Pf

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree

theorem mod2 {a n : ℕ} (h : a < 2 * n) : (a < n ∧ a % n = a) ∨ (n ≤ a ∧ a % n = a - n) := by
  rcases lt_or_ge a n with h1 | h1
  · exact Or.inl ⟨h1, Nat.mod_eq_of_lt h1⟩
  · right
    refine ⟨h1, ?_⟩
    rw [Nat.mod_eq_sub_mod h1, Nat.mod_eq_of_lt (by omega)]

theorem ar1 {n x d y : ℕ} (hx : x < n) (hd : d < n) (h : (x + d) % n = y) : (y + n - x) % n = d := by
  rcases mod2 (a := x + d) (n := n) (by omega) with ⟨a1, a2⟩ | ⟨a1, a2⟩ <;>
  rcases mod2 (a := y + n - x) (n := n) (by omega) with ⟨b1, b2⟩ | ⟨b1, b2⟩ <;> omega

theorem ar2 {n x d y : ℕ} (hx : x < n) (hd : d < n) (h : (x + d) % n = y) : (y + (n - d)) % n = x := by
  rcases mod2 (a := x + d) (n := n) (by omega) with ⟨a1, a2⟩ | ⟨a1, a2⟩ <;>
  rcases mod2 (a := y + (n - d)) (n := n) (by omega) with ⟨b1, b2⟩ | ⟨b1, b2⟩ <;> omega

theorem ar3 {n x x' d d' y : ℕ} (hx : x < n) (hx' : x' < n) (hd : d < n) (hd' : d' < d) (h : (x + d) % n = y)
    (h' : (x' + d') % n = y) : (x' + n - x) % n = d - d' := by
  rcases mod2 (a := x + d) (n := n) (by omega) with ⟨a1, a2⟩ | ⟨a1, a2⟩ <;>
  rcases mod2 (a := x' + d') (n := n) (by omega) with ⟨c1, c2⟩ | ⟨c1, c2⟩ <;>
  rcases mod2 (a := x' + n - x) (n := n) (by omega) with ⟨b1, b2⟩ | ⟨b1, b2⟩ <;> omega

theorem ar4 {n x g d nx y : ℕ} (hx : x < n) (hd : d < n) (hg : g ≤ d) (h1 : (x + g) % n = nx)
    (h : (x + d) % n = y) : (nx + (d - g)) % n = y := by
  rcases mod2 (a := x + d) (n := n) (by omega) with ⟨a1, a2⟩ | ⟨a1, a2⟩ <;>
  rcases mod2 (a := x + g) (n := n) (by omega) with ⟨c1, c2⟩ | ⟨c1, c2⟩ <;>
  rcases mod2 (a := nx + (d - g)) (n := n) (by omega) with ⟨b1, b2⟩ | ⟨b1, b2⟩ <;> omega

section

variable {n' : ℕ}

theorem evenTops_mono (TT : Finset (Fin n')) : StrictMono (evenTops TT).get :=
  (Finset.sortedLT_sort _).strictMono_get

theorem segDists_mono (TT : Finset (Fin n')) (j : Fin (numSeg TT)) : StrictMono (segDists TT j).get :=
  (Finset.sortedLT_sort _).strictMono_get

theorem next_min (TT : Finset (Fin n')) (j : Fin (numSeg TT)) (e : Fin n') (he : e ∈ TT)
    (hev : Even e.val) (hne : e ≠ segStart TT j) :
    0 < cdist (segStart TT j) (segNext TT j) ∧
      cdist (segStart TT j) (segNext TT j) ≤ cdist (segStart TT j) e := by
  apply Formalism.MainNotions.ColumnSystems.Pf.next_min <;> assumption

theorem segNext_spec (TT : Finset (Fin n')) (j : Fin (numSeg TT)) :
    segNext TT j ∈ TT ∧ Even (segNext TT j).val :=
  (mem_evenTops TT _).1 (List.get_mem _ _)

theorem other_even (TT : Finset (Fin n')) (h2 : 2 ≤ numSeg TT) (j : Fin (numSeg TT)) :
    ∃ e ∈ TT, Even e.val ∧ e ≠ segStart TT j := by
  have hj := j.isLt
  let j' : Fin (numSeg TT) := if j.val = 0 then ⟨1, by omega⟩ else ⟨0, by omega⟩
  have hne : j' ≠ j := by
    intro h
    have hv : j'.val = j.val := congrArg Fin.val h
    by_cases h0 : j.val = 0
    · have e : j'.val = 1 := by simp [j', h0]
      omega
    · have e : j'.val = 0 := by simp [j', h0]
      omega
  refine ⟨segStart TT j', (segStart_spec TT j').1, (segStart_spec TT j').2, fun h => hne ?_⟩
  exact (evenTops_mono TT).injective h

theorem segG_eq (TT : Finset (Fin n')) (h2 : 2 ≤ numSeg TT) (j : Fin (numSeg TT)) :
    segG TT j = cdist (segStart TT j) (segNext TT j) ∧ 0 < segG TT j ∧ segG TT j < n' := by
  obtain ⟨e, he, hev, hne⟩ := other_even TT h2 j
  have h := (next_min TT j e he hev hne).1
  have e1 : segG TT j = cdist (segStart TT j) (segNext TT j) := by
    unfold segG
    rw [if_neg (by omega)]
  refine ⟨e1, by omega, ?_⟩
  rw [e1]
  exact Nat.mod_lt _ (segStart TT j).pos

theorem prev_segPos (TT : Finset (Fin n')) (h2 : 2 ≤ numSeg TT) (j : Fin (numSeg TT)) (i : Fin (segS TT j)) :
    dPrev TT (segPos TT j i) = (segDists TT j).get i ∧ yPrev TT (segPos TT j i) = segStart TT j := by
  obtain ⟨hy, hodd, hcd, hd0, hdG⟩ := segPos_spec TT j i
  obtain ⟨hG, -, hGn⟩ := segG_eq TT h2 j
  set d := (segDists TT j).get i with hd
  set x := segStart TT j with hx
  set y := segPos TT j i with hyy
  have hxy : (x.val + d) % n' = y.val := rfl
  have hdn : d < n' := by omega
  have h1 : dPrev TT y = d := by
    unfold dPrev
    apply le_antisymm
    · exact Nat.sInf_le ⟨hd0, x, (segStart_spec TT j).1, (segStart_spec TT j).2, rfl⟩
    · have hne0 : ({d : ℕ | 1 ≤ d ∧ ∃ x ∈ TT, IsTypeV x ∧ posAdd x d = y}).Nonempty :=
        ⟨d, hd0, x, (segStart_spec TT j).1, (segStart_spec TT j).2, rfl⟩
      apply le_csInf hne0
      rintro d' ⟨hd'1, x', hx', hx'e, hx'y⟩
      by_contra hlt
      have hlt' : d' < d := by omega
      have hx'y' : (x'.val + d') % n' = y.val := congrArg Fin.val hx'y
      have hc : cdist x x' = d - d' := ar3 x.isLt x'.isLt hdn hlt' hxy hx'y'
      have hne : x' ≠ x := by
        intro hxx
        rw [hxx] at hc
        have : cdist x x = 0 := by
          show (x.val + n' - x.val) % n' = 0
          have : x.val + n' - x.val = n' := by omega
          rw [this, Nat.mod_self]
        omega
      have := (next_min TT j x' hx' hx'e hne).2
      rw [← hx] at this
      omega
  refine ⟨h1, ?_⟩
  apply Fin.ext
  show (y.val + (n' - dPrev TT y % n')) % n' = x.val
  rw [h1, Nat.mod_eq_of_lt hdn]
  exact ar2 x.isLt hdn hxy

theorem odd_in_seg (TT : Finset (Fin n')) (h2 : 2 ≤ numSeg TT) (y : Fin n') (hy : y ∈ TT) (hodd : ¬ Even y.val) :
    ∃ (j : Fin (numSeg TT)) (i : Fin (segS TT j)), segPos TT j i = y := by
  let j0 : Fin (numSeg TT) := ⟨0, by omega⟩
  have hx0 := segStart_spec TT j0
  set x0 := segStart TT j0 with hx0d
  have hd0 : 1 ≤ cdist x0 y := by
    by_contra h
    have h0 : cdist x0 y = 0 := by omega
    have := posAdd_cdist x0 y
    rw [h0] at this
    have hv : (x0.val + 0) % n' = y.val := congrArg Fin.val this
    rw [Nat.add_zero, Nat.mod_eq_of_lt x0.isLt] at hv
    exact hodd (hv ▸ hx0.2)
  have hmem0 : cdist x0 y ∈ {d : ℕ | 1 ≤ d ∧ ∃ x ∈ TT, IsTypeV x ∧ posAdd x d = y} :=
    ⟨hd0, x0, hx0.1, hx0.2, posAdd_cdist x0 y⟩
  have hmem : dPrev TT y ∈ {d : ℕ | 1 ≤ d ∧ ∃ x ∈ TT, IsTypeV x ∧ posAdd x d = y} := Nat.sInf_mem ⟨_, hmem0⟩
  have hle : dPrev TT y ≤ cdist x0 y := Nat.sInf_le hmem0
  have hmin : ∀ d', 1 ≤ d' → (∃ x ∈ TT, IsTypeV x ∧ posAdd x d' = y) → dPrev TT y ≤ d' :=
    fun d' h1 h3 => Nat.sInf_le ⟨h1, h3⟩
  obtain ⟨hd1, x, hx, hxe, hxy⟩ := hmem
  set d := dPrev TT y with hd
  have hdn : d < n' := lt_of_le_of_lt hle (Nat.mod_lt _ x0.pos)
  have hxy' : (x.val + d) % n' = y.val := congrArg Fin.val hxy
  obtain ⟨j, hj⟩ := List.mem_iff_get.mp ((mem_evenTops TT x).mpr ⟨hx, hxe⟩)
  have hjx : segStart TT j = x := hj
  obtain ⟨hG, -, hGn⟩ := segG_eq TT h2 j
  have hcd : cdist (segStart TT j) y = d := by
    rw [hjx]
    exact ar1 x.isLt hdn hxy'
  have hlt : d < segG TT j := by
    by_contra hge
    have hge' : cdist x (segNext TT j) ≤ d := by
      rw [← hjx, ← hG]
      omega
    have hn := segNext_spec TT j
    have hnx : (x.val + cdist x (segNext TT j)) % n' = (segNext TT j).val :=
      congrArg Fin.val (posAdd_cdist x (segNext TT j))
    have h4 : ((segNext TT j).val + (d - cdist x (segNext TT j))) % n' = y.val := ar4 x.isLt hdn hge' hnx hxy'
    rcases Nat.eq_or_lt_of_le hge' with heq | hlt'
    · rw [heq, Nat.sub_self, Nat.add_zero, Nat.mod_eq_of_lt (segNext TT j).isLt] at h4
      exact hodd (h4 ▸ hn.2)
    · have := hmin (d - cdist x (segNext TT j)) (by omega) ⟨segNext TT j, hn.1, hn.2, Fin.ext h4⟩
      have hpos : 0 < cdist x (segNext TT j) := by
        rw [← hjx, ← hG]
        exact (segG_eq TT h2 j).2.1
      omega
  have hdm : d ∈ segDists TT j := (mem_segDists TT j d).2 ⟨y, hy, hodd, by omega, by omega, hcd⟩
  obtain ⟨i, hi⟩ := List.mem_iff_get.mp hdm
  refine ⟨j, i, ?_⟩
  unfold segPos
  rw [hi, hjx]
  exact hxy

end

open Classical in
theorem restOddTops : RestOddTops := by
  intro n' TT h2 f
  rw [Finset.sum_sigma']
  refine Finset.sum_bij (fun (x : Σ j : Fin (numSeg TT), Fin (segS TT j)) _ => segPos TT x.1 x.2) ?_ ?_ ?_ ?_
  · rintro ⟨j, i⟩ _
    exact Finset.mem_filter.2 ⟨(segPos_spec TT j i).1, (segPos_spec TT j i).2.1⟩
  · rintro ⟨j, i⟩ _ ⟨j', i'⟩ _ h
    have h' : segPos TT j i = segPos TT j' i' := h
    have a1 := prev_segPos TT h2 j i
    have a2 := prev_segPos TT h2 j' i'
    have hj : j = j' := (evenTops_mono TT).injective (by
      show segStart TT j = segStart TT j'
      rw [← a1.2, ← a2.2, h'])
    subst hj
    have hi : i = i' := (segDists_mono TT j).injective (by rw [← a1.1, ← a2.1, h'])
    subst hi
    rfl
  · intro y hy
    obtain ⟨hy1, hy2⟩ := Finset.mem_filter.1 hy
    obtain ⟨j, i, hji⟩ := odd_in_seg TT h2 y hy1 hy2
    exact ⟨⟨j, i⟩, Finset.mem_sigma.2 ⟨Finset.mem_univ _, Finset.mem_univ _⟩, hji⟩
  · rintro ⟨j, i⟩ _
    have a1 := prev_segPos TT h2 j i
    show f (segPos TT j i) (segStart TT j) ((segDists TT j).get i) = _
    rw [a1.1, a1.2]

end Formalism.MainNotions.flipOneThree.Pf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.OddTops =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThrLPOf =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThrLPOf", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.InitialLevelFormula\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.NumBase\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FourDepthLtConductorOfBounds\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.OddTops\nimport Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.SegStartSpec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.flipOneThree.Pf

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree

theorem TLP_pos (K : Cst) : 0 < K.TLP := by
  unfold Cst.TLP
  exact lt_of_lt_of_le (by norm_num : (0 : ℝ) < 108) (le_trans (le_max_left _ _) (le_max_left _ _))

theorem thrLP_of (hO : RestOddTops) (K : Cst) (hK : K.Pos) : TransportedAlt K (FactsLP K) := by
  have hK' := hK
  unfold Cst.Pos at hK'
  have hCt : 0 < K.Ct := hK'.2.2.2.2.2.2.2.1
  refine ⟨K.TLP, 4 * K.Ct + 4, TLP_pos K, by linarith, ?_⟩
  intro CH hCH C hC X h
  have B := base_of K hK CH hCH X h
  have h' := h
  unfold Dat.Hyp HypI at h'
  obtain ⟨-, -, -, -, -, -, hm, -, hb, -, -, -, -, -, -, -, -, -, -, -, -, -, hcs, -⟩ := h'
  have hd := dle_of hK hCH h B
  have hp := B.hp25
  exact
    { cst := hcs
      bpos := hb
      ppos := by exact_mod_cast (show (0 : ℝ) < X.p by linarith)
      m2 := by omega
      D1nn := D1nn_of hK B
      four_depth_lt_conductor := four_depth_lt_conductor_of_bounds hd hcs
      dle := hd
      a8 := second_moment_of_columns hCH B
      eps := eps_of hCH B
      lowa := lowa_of B
      lowb := lowb_of h
      tle := fun aw bw hw => tle_of hO hK hC h B aw bw hw }

theorem thrLP (K : Cst) (hK : K.Pos) : TransportedAlt K (FactsLP K) := by
  exact thrLP_of restOddTops K hK

end Formalism.MainNotions.flipOneThree.Pf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThrLPOf =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.DensAbs =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.DensAbs", "h": "module\n\npublic import Mathlib.Analysis.SpecialFunctions.Log.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\npublic import Mathlib.Analysis.Complex.ExponentialBounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.PolynomialDimension.WeylDim\nimport Formalism.SharpRestriction.GrowthBounds.UnramifiedQuadraticSetting\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.flipOneThree.Pf

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree Formalism.CountingSumsFrames

theorem dens_abs (N : ℕ) (hN : 1 ≤ N) (x1 x2 wa wb e : ℝ) (h1 : 0 ≤ x1) (h2 : 0 ≤ x2) (hwa : 0 < wa) (hwb : 0 < wb)
    (he : 0 ≤ e) (hs : (N : ℝ) * (x1 + x2 + e / wa + e / wb) ≤ 1 / 2) :
    (wa + e) ^ N * (wb + e) ^ N ≤ 2 * ((1 - x1) * (1 - x2)) ^ N * (wa ^ N * wb ^ N) := by
  set u := e / wa with hu
  set v := e / wb with hv
  have hu0 : 0 ≤ u := div_nonneg he hwa.le
  have hv0 : 0 ≤ v := div_nonneg he hwb.le
  have hN1 : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hs' : (N : ℝ) * x1 + N * x2 + N * u + N * v ≤ 1 / 2 := by nlinarith
  have hp1 : 0 ≤ (N : ℝ) * u := by positivity
  have hp2 : 0 ≤ (N : ℝ) * v := by positivity
  have hp3 : 0 ≤ (N : ℝ) * x1 := by positivity
  have hp4 : 0 ≤ (N : ℝ) * x2 := by positivity
  have hu1 : u ≤ 1 := by nlinarith
  have hv1 : v ≤ 1 := by nlinarith
  have hx1 : x1 ≤ 1 := by nlinarith
  have hx2 : x2 ≤ 1 := by nlinarith
  have hwa' : wa + e = wa * (1 + u) := by rw [hu]; field_simp
  have hwb' : wb + e = wb * (1 + v) := by rw [hv]; field_simp
  rw [hwa', hwb', mul_pow, mul_pow, mul_pow]

  have hB : ∀ z : ℝ, 0 ≤ z → z ≤ 1 → (1 + z) ^ N * (1 - N * z) ≤ 1 := by
    intro z hz0 hz1
    have hb := one_add_mul_le_pow (a := -z) (by linarith) N
    have hzz : (1 + -z) ^ N = (1 - z) ^ N := by ring
    have h1 : (1 + z) ^ N * (1 - z) ^ N ≤ 1 := by
      rw [← mul_pow]; exact pow_le_one₀ (by nlinarith) (by nlinarith)
    have h2 : 0 ≤ (1 + z) ^ N := by positivity
    calc (1 + z) ^ N * (1 - N * z) ≤ (1 + z) ^ N * (1 - z) ^ N :=
          mul_le_mul_of_nonneg_left (by linarith) h2
      _ ≤ 1 := h1
  have hC : ∀ x : ℝ, x ≤ 1 → 1 - N * x ≤ (1 - x) ^ N := by
    intro x hx1
    have hb := one_add_mul_le_pow (a := -x) (by linarith) N
    have hxx : (1 + -x) ^ N = (1 - x) ^ N := by ring
    linarith
  have ha := hB u hu0 hu1
  have hb := hB v hv0 hv1
  have hc := hC x1 hx1
  have hd := hC x2 hx2
  have hA0 : 0 ≤ (1 + u) ^ N := by positivity
  have hB0 : 0 ≤ (1 + v) ^ N := by positivity

  have e1 : 1 - N * u - N * v ≤ (1 - N * u) * (1 - N * v) := by nlinarith [mul_nonneg hp1 hp2]
  have e2 : 1 - N * x1 - N * x2 ≤ (1 - N * x1) * (1 - N * x2) := by nlinarith [mul_nonneg hp3 hp4]
  have e3 : (1 - N * u - N * v) * (1 - N * x1 - N * x2) ≤
      (1 - N * u) * (1 - N * v) * ((1 - N * x1) * (1 - N * x2)) :=
    mul_le_mul e1 e2 (by linarith) (by nlinarith)
  have e4 : 1 - (N * u + N * v) - (N * x1 + N * x2) ≤ (1 - N * u - N * v) * (1 - N * x1 - N * x2) := by
    nlinarith [mul_nonneg (add_nonneg hp1 hp2) (add_nonneg hp3 hp4)]
  have hprod : 1 ≤ 2 * ((1 - N * u) * (1 - N * v) * ((1 - N * x1) * (1 - N * x2))) := by linarith
  have hAB : (1 + u) ^ N * (1 + v) ^ N * ((1 - N * u) * (1 - N * v)) ≤ 1 := by
    have := mul_le_one₀ ha (mul_nonneg hB0 (by linarith)) hb
    calc (1 + u) ^ N * (1 + v) ^ N * ((1 - N * u) * (1 - N * v))
        = (1 + u) ^ N * (1 - N * u) * ((1 + v) ^ N * (1 - N * v)) := by ring
      _ ≤ 1 := this
  have hCD : (1 - N * x1) * (1 - N * x2) ≤ (1 - x1) ^ N * (1 - x2) ^ N :=
    mul_le_mul hc hd (by linarith) (le_trans (by linarith) hc)
  have key : (1 + u) ^ N * (1 + v) ^ N ≤ 2 * ((1 - x1) ^ N * (1 - x2) ^ N) := by
    have hγδ : 0 ≤ (1 - N * x1) * (1 - N * x2) := by nlinarith
    calc (1 + u) ^ N * (1 + v) ^ N
        ≤ (1 + u) ^ N * (1 + v) ^ N *
            (2 * ((1 - N * u) * (1 - N * v) * ((1 - N * x1) * (1 - N * x2)))) :=
          le_mul_of_one_le_right (mul_nonneg hA0 hB0) hprod
      _ = 2 * ((1 - N * x1) * (1 - N * x2)) *
            ((1 + u) ^ N * (1 + v) ^ N * ((1 - N * u) * (1 - N * v))) := by ring
      _ ≤ 2 * ((1 - N * x1) * (1 - N * x2)) * 1 :=
          mul_le_mul_of_nonneg_left hAB (by linarith)
      _ ≤ 2 * ((1 - x1) ^ N * (1 - x2) ^ N) := by linarith
  have hw : 0 ≤ wa ^ N * wb ^ N := by positivity
  calc wa ^ N * (1 + u) ^ N * (wb ^ N * (1 + v) ^ N)
      = (1 + u) ^ N * (1 + v) ^ N * (wa ^ N * wb ^ N) := by ring
    _ ≤ 2 * ((1 - x1) ^ N * (1 - x2) ^ N) * (wa ^ N * wb ^ N) := mul_le_mul_of_nonneg_right key hw

theorem Nexp_le (N Y La : ℝ) (hN : 2 ≤ N) (hY : 1 ≤ Y) (hLa : 8 * Real.log (N * Y) ≤ La) :
    N * Real.exp (-La / 3) ≤ 0.36 := by
  have hNY : 2 ≤ N * Y := by nlinarith
  have hL2 : Real.log 2 ≤ Real.log (N * Y) := Real.log_le_log (by norm_num) hNY
  have hlog2 := Real.log_two_gt_d9
  set L := Real.log (N * Y) with hL
  have hexpL : Real.exp L = N * Y := Real.exp_log (by linarith)
  have h1 : N ^ 2 ≤ Real.exp (2 * L) := by
    have hNY1 : N ≤ N * Y := by nlinarith
    rw [show 2 * L = L + L by ring, Real.exp_add, hexpL, sq]
    exact mul_le_mul hNY1 hNY1 (by linarith) (by linarith)
  have h2 : 1 + 2 * L / 3 ≤ Real.exp (2 * L / 3) := by linarith [Real.add_one_le_exp (2 * L / 3)]
  have h3 : Real.exp (2 * L) * Real.exp (2 * L / 3) ≤ Real.exp (La / 3) := by
    rw [← Real.exp_add]; exact Real.exp_le_exp.mpr (by linarith)
  have h4 : N ^ 2 * (1 + 2 * L / 3) ≤ Real.exp (La / 3) :=
    le_trans (mul_le_mul h1 h2 (by linarith) (Real.exp_pos _).le) h3
  have h5 : N ^ 2 * 1.46 ≤ Real.exp (La / 3) :=
    le_trans (mul_le_mul_of_nonneg_left (by linarith) (sq_nonneg N)) h4
  have hpos : 0 < Real.exp (La / 3) := Real.exp_pos _
  rw [show -La / 3 = -(La / 3) by ring, Real.exp_neg, ← div_eq_mul_inv, div_le_iff₀ hpos]
  nlinarith

end Formalism.MainNotions.flipOneThree.Pf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.DensAbs =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThresholdDensityFacts =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThresholdDensityFacts", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.DensityNumericalFacts\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.NumBase\npublic import Formalism.PolynomialDimension.DigitClassCount\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.DensAbs\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FourDepthLtConductorOfBounds\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThresholdFinalFacts\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.TwoHundredLeRadius\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.PolynomialDimension.WeylDim\nimport Formalism.PolynomialDimension.DigitClassCount\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.flipOneThree.Pf

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree Formalism.CountingSumsFrames

def Cst.TM2 (K : Cst) : ℝ := max K.TLP 400

theorem div_small (x w Yb c : ℝ) (hw : 0 < w) (hYb : 400 ≤ Yb) (h : x * Yb ≤ c * w) : x / w ≤ c / Yb := by
  rw [div_le_div_iff₀ hw (by linarith)]
  linarith


theorem threshold_density_facts (K : Cst) (hK : K.Pos) : TransportedAlt K (fun _ => DensityNumericalFacts K) := by
  refine ⟨K.TM2, 1, lt_of_lt_of_le (by norm_num) (le_max_right _ _), one_pos, fun CH hCH _ _ X h => ?_⟩
  have hTLP : K.TLP ≤ CH := le_trans (le_max_left _ _) hCH
  have h400 : (400 : ℝ) ≤ CH := le_trans (le_max_right _ _) hCH
  have B := base_of K hK CH hTLP X h
  have Wf := winFacts_of K hK CH hTLP X h
  obtain ⟨l1, l2, -⟩ := La_round hK B
  obtain ⟨hY, hp, hev, hseg2, hgap, hN1, hm, hLa8, hb, hbl, hbu, hIb1, hIb2, hYb, hk2, hab, hde, hpab, hkLa, hband,
    hccl, hD, hcs, hsize⟩ := h
  have hYb400 : (400 : ℝ) ≤ X.Yb := le_trans h400 hYb
  have hN2 : (2 : ℝ) ≤ (X.N : ℝ) := B.hN2
  have hN0 : (0 : ℝ) < (X.N : ℝ) := by linarith
  have hk5 : (5 : ℝ) ≤ X.k := B.hk5
  have hk0 : (0 : ℝ) < X.k := by linarith
  have hLa1 : 1 ≤ LaI K.C₀ X.N₁ X.ar := B.hLa1
  have h200 := two_hundred_le_radius B
  have ha200 : (200 : ℝ) ≤ X.a := le_trans h200 B.haa
  obtain ⟨La, hLa⟩ : ∃ La, La = LaI K.C₀ X.N₁ X.ar := ⟨_, rfl⟩
  obtain ⟨La', hLa'⟩ : ∃ La', La' = LaI K.C₀ X.N₁ (X.a : ℝ) := ⟨_, rfl⟩
  rw [← hLa] at hLa1 l1 l2 hccl hkLa hab hLa8
  rw [← hLa'] at l1 l2
  have hwa := Wf.wa_ge
  have hwb := Wf.wb_ge
  rw [← hLa] at hwa hwb
  have hJ0 : X.J0 K = La' * X.b' / X.k := by rw [hLa']; rfl
  obtain ⟨Z, hZ⟩ : ∃ Z, Z = La * X.b' / X.k := ⟨_, rfl⟩
  have hZk : Z * X.k = La * X.b' := by rw [hZ]; exact div_mul_cancel₀ _ hk0.ne'
  have hcclZ : (X.ccl : ℝ) ≤ Z := by rw [hZ]; exact hccl
  have hJ0Z : X.J0 K ≤ 2 * Z := by
    rw [hJ0, hZ]
    have := div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_right l2 hb.le) hk0.le
    calc La' * X.b' / X.k ≤ 2 * La * X.b' / X.k := this
      _ = _ := by ring
  have hLa'0 : 0 ≤ La' := by linarith
  have hJ00 : 0 ≤ X.J0 K := by rw [hJ0]; positivity

  have hkLa' : CH * (X.N : ℝ) * La ^ 2 ≤ X.k := hkLa
  have hLaLa : La ≤ La ^ 2 := le_self_pow₀ hLa1 (by norm_num)
  have hCHN : 0 ≤ CH * (X.N : ℝ) := by positivity
  have hkbig : CH * (X.N : ℝ) * La ≤ X.k := le_trans (mul_le_mul_of_nonneg_left hLaLa hCHN) hkLa'
  have hk800 : (800 : ℝ) ≤ X.k := by
    have a1 : (400 : ℝ) * 2 * 1 ≤ CH * (X.N : ℝ) * La := by gcongr
    linarith
  have hm5 : 5 ≤ X.m := by
    have : (5 : ℝ) ≤ (X.m : ℝ) := by
      have : X.k = (X.m : ℝ) + 1 := rfl
      linarith
    exact_mod_cast this

  have hZb : CH * (X.N : ℝ) * Z ≤ X.b' := by
    have a1 : CH * (X.N : ℝ) * La * X.b' ≤ X.k * X.b' := mul_le_mul_of_nonneg_right hkbig hb.le
    have a2 : CH * (X.N : ℝ) * Z * X.k ≤ X.b' * X.k := by
      calc CH * (X.N : ℝ) * Z * X.k = CH * (X.N : ℝ) * (Z * X.k) := by ring
        _ = CH * (X.N : ℝ) * La * X.b' := by rw [hZk]; ring
        _ ≤ X.k * X.b' := a1
        _ = _ := by ring
    exact le_of_mul_le_mul_right a2 hk0
  have hZ0 : 0 ≤ Z := by rw [hZ]; positivity
  have hZ800 : 800 * Z ≤ X.b' := by
    have : (400 : ℝ) * 2 * Z ≤ CH * (X.N : ℝ) * Z := by gcongr
    linarith
  have hkb : CH * X.k * 8 ≤ X.b' := B.hsz X.k 8 hk0.le (k_le_G B) (by norm_num) (by
    have h1 : (0 : ℝ) ≤ (X.N : ℝ) * X.ccl := by positivity
    have h2 : (0 : ℝ) ≤ (X.n' : ℝ) * X.ccl := by positivity
    have h3 : (8 : ℝ) ≤ X.cStar := by
      have : 8 ≤ X.cStar := by omega
      exact_mod_cast this
    linarith)
  have hkb' : 3200 * X.k ≤ X.b' := by
    have : (400 : ℝ) * X.k * 8 ≤ CH * X.k * 8 := by gcongr
    linarith
  have hZ1 : 1 ≤ Z := by
    have a1 : 1 * X.k ≤ Z * X.k := by
      rw [hZk]
      have : 1 * X.b' ≤ La * X.b' := mul_le_mul_of_nonneg_right hLa1 hb.le
      linarith
    exact le_of_mul_le_mul_right a1 hk0

  have hYNZ : 800 ≤ X.Yb * (X.N : ℝ) * Z := by
    have : (400 : ℝ) * 2 * 1 ≤ X.Yb * (X.N : ℝ) * Z := by gcongr
    linarith
  have hwb2 : X.Yb * (X.N : ℝ) * Z / 2 ≤ ((X.Wb 0).card : ℝ) := by
    have : X.Yb * (X.N : ℝ) * La * X.b' / X.k = X.Yb * (X.N : ℝ) * Z := by rw [hZ]; ring
    rw [this] at hwb
    linarith
  have hwa2 : X.Yb * (X.N : ℝ) * Z / 2 ≤ ((X.Wa 0).card : ℝ) := by
    have e1 : X.Yb * (X.N : ℝ) * La * X.b' = X.Yb * (X.N : ℝ) * Z * X.k := by
      rw [mul_assoc (X.Yb * (X.N : ℝ)) Z, hZk]; ring
    have e2 : X.Yb * (X.N : ℝ) * Z * 1 ≤ X.Yb * (X.N : ℝ) * Z * X.k :=
      mul_le_mul_of_nonneg_left (by linarith) (by linarith)
    rw [e1] at hwa
    linarith
  have hwaR : (0 : ℝ) < ((X.Wa 0).card : ℝ) := by linarith
  have hwbR : (0 : ℝ) < ((X.Wb 0).card : ℝ) := by linarith
  have hwaN : 0 < (X.Wa 0).card := by exact_mod_cast hwaR
  have hwbN : 0 < (X.Wb 0).card := by exact_mod_cast hwbR
  have cA : (X.WaP K).card = (X.Wa 0).card + (X.Jn K + X.ccl) := by
    have := card_first_window X
    simp only [Dat.WaP, Nat.card_Icc]
    omega
  have cB : (X.WbP K).card = (X.Wb 0).card + (X.Jn K + X.ccl) := by
    have := card_second_window X
    simp only [Dat.WbP, Nat.card_Icc]
    omega
  have hJn : (X.Jn K : ℝ) ≤ X.J0 K := Nat.floor_le hJ00
  have he3 : ((X.Jn K + X.ccl : ℕ) : ℝ) ≤ 3 * Z := by
    push_cast
    linarith
  have he0 : (0 : ℝ) ≤ ((X.Jn K + X.ccl : ℕ) : ℝ) := Nat.cast_nonneg _

  have hmk : (X.m : ℝ) ≤ X.k := by
    have : X.k = (X.m : ℝ) + 1 := rfl
    linarith
  have hmJ : (X.m : ℝ) * X.J0 K ≤ 2 * (La * X.b') := by
    have a1 : (X.m : ℝ) * X.J0 K ≤ X.k * X.J0 K := mul_le_mul_of_nonneg_right hmk hJ00
    have a2 : X.k * X.J0 K ≤ X.k * (2 * Z) := mul_le_mul_of_nonneg_left hJ0Z hk0.le
    have a3 : X.k * (2 * Z) = 2 * (La * X.b') := by rw [← hZk]; ring
    linarith
  have hG : X.Yb * (X.N : ℝ) * (La * X.b') ≤ X.a := by
    rw [le_div_iff₀ hb] at hab
    have hnn : 0 ≤ X.Yb * (X.N : ℝ) * (La * X.b') := by positivity
    have h1 : (1 : ℝ) ≤ X.k * X.Y ^ 2 * Real.log X.ar :=
      one_le_mul_of_one_le_of_one_le (one_le_mul_of_one_le_of_one_le (by linarith) (one_le_pow₀ hY)) B.hlog1
    have h2 := mul_le_mul_of_nonneg_left h1 hnn
    have h3 : X.Yb * (X.N : ℝ) * (La * X.b') * (X.k * X.Y ^ 2 * Real.log X.ar) =
        ((X.m : ℝ) + 1) * X.Y ^ 2 * X.Yb * X.TT.card * La * Real.log X.ar * X.b' := by
      unfold Dat.k Dat.N; ring
    linarith [B.haa]
  have hmJ0 : 0 ≤ (X.m : ℝ) * X.J0 K := by positivity
  have ha0 : (0 : ℝ) < X.a := by linarith
  have hx1 : (X.N : ℝ) * ((X.m : ℝ) * X.J0 K / X.a) ≤ 0.005 := by
    have a1 : (X.N : ℝ) * ((X.m : ℝ) * X.J0 K) / X.a ≤ 2 / X.Yb := by
      apply div_small _ _ _ _ ha0 hYb400
      have b1 : (X.N : ℝ) * ((X.m : ℝ) * X.J0 K) * X.Yb ≤ (X.N : ℝ) * (2 * (La * X.b')) * X.Yb := by gcongr
      linarith
    have a2 : 2 / X.Yb ≤ 0.005 := by
      rw [div_le_iff₀ (by linarith)]
      linarith
    calc (X.N : ℝ) * ((X.m : ℝ) * X.J0 K / X.a) = (X.N : ℝ) * ((X.m : ℝ) * X.J0 K) / X.a := by ring
      _ ≤ 0.005 := le_trans a1 a2
  have hx2 : (X.N : ℝ) * Real.exp (-La' / 3) ≤ 0.36 := by
    have a1 : Real.exp (-La' / 3) ≤ Real.exp (-La / 3) := Real.exp_le_exp.2 (by linarith)
    have a2 := Nexp_le (X.N : ℝ) X.Y La hN2 hY hLa8
    have a3 := mul_le_mul_of_nonneg_left a1 hN0.le
    linarith
  have h6 : 6 / X.Yb ≤ 0.015 := by
    rw [div_le_iff₀ (by linarith)]
    linarith
  have hx3 : (X.N : ℝ) * (((X.Jn K + X.ccl : ℕ) : ℝ) / ((X.Wa 0).card : ℝ)) ≤ 0.015 := by
    have a1 : (X.N : ℝ) * ((X.Jn K + X.ccl : ℕ) : ℝ) / ((X.Wa 0).card : ℝ) ≤ 6 / X.Yb := by
      apply div_small _ _ _ _ hwaR hYb400
      have b1 : (X.N : ℝ) * ((X.Jn K + X.ccl : ℕ) : ℝ) * X.Yb ≤ (X.N : ℝ) * (3 * Z) * X.Yb := by gcongr
      linarith
    calc _ = (X.N : ℝ) * ((X.Jn K + X.ccl : ℕ) : ℝ) / ((X.Wa 0).card : ℝ) := by ring
      _ ≤ 0.015 := le_trans a1 h6
  have hx4 : (X.N : ℝ) * (((X.Jn K + X.ccl : ℕ) : ℝ) / ((X.Wb 0).card : ℝ)) ≤ 0.015 := by
    have a1 : (X.N : ℝ) * ((X.Jn K + X.ccl : ℕ) : ℝ) / ((X.Wb 0).card : ℝ) ≤ 6 / X.Yb := by
      apply div_small _ _ _ _ hwbR hYb400
      have b1 : (X.N : ℝ) * ((X.Jn K + X.ccl : ℕ) : ℝ) * X.Yb ≤ (X.N : ℝ) * (3 * Z) * X.Yb := by gcongr
      linarith
    calc _ = (X.N : ℝ) * ((X.Jn K + X.ccl : ℕ) : ℝ) / ((X.Wb 0).card : ℝ) := by ring
      _ ≤ 0.015 := le_trans a1 h6
  have hx10 : 0 ≤ (X.m : ℝ) * X.J0 K / X.a := by positivity
  have hx11 : (X.m : ℝ) * X.J0 K / X.a ≤ 1 := by
    have := mul_le_mul_of_nonneg_right (by linarith : (1 : ℝ) ≤ (X.N : ℝ)) hx10
    linarith
  have hx20 : 0 ≤ Real.exp (-La' / 3) := (Real.exp_pos _).le
  have hx21 : Real.exp (-La' / 3) ≤ 1 := Real.exp_le_one_iff.2 (by linarith)
  have hN1n : 1 ≤ X.N := by
    have : (1 : ℝ) ≤ (X.N : ℝ) := by linarith
    exact_mod_cast this
  refine ⟨by omega, ⟨by omega, by omega⟩,
    (1 - (X.m : ℝ) * X.J0 K / X.a) * (1 - Real.exp (-La' / 3)), mul_nonneg (by linarith) (by linarith), ?_, ?_⟩
  · intro τ hτ al hal be hbe
    obtain ⟨hal1, -⟩ := Finset.mem_Icc.1 hal
    obtain ⟨-, hbe2⟩ := Finset.mem_Icc.1 hbe
    have hala : (X.a : ℝ) ≤ al := by
      have : X.a ≤ al := by omega
      exact_mod_cast this
    have hal0 : 0 < al := by
      have : (0 : ℝ) < al := by linarith
      exact_mod_cast this
    have hbeR : (be : ℝ) ≤ X.bu + Z := by
      have a1 : (be : ℝ) ≤ (X.ub : ℝ) + τ := by exact_mod_cast hbe2
      have a2 : (X.ub : ℝ) ≤ X.bu := Nat.floor_le Wf.bunn
      have a3 : (τ : ℝ) ≤ X.ccl := by exact_mod_cast hτ
      linarith
    have hcond : (be : ℝ) + ((⌊La' * X.b' / ((X.m : ℝ) + 1)⌋₊ + 1 : ℕ) : ℝ) + (X.m : ℝ) + 1 ≤ 2 * X.b' := by
      have a1 : ((⌊La' * X.b' / ((X.m : ℝ) + 1)⌋₊ : ℕ) : ℝ) ≤ 2 * Z := by
        have : ((⌊La' * X.b' / ((X.m : ℝ) + 1)⌋₊ : ℕ) : ℝ) = (X.Jn K : ℝ) := by
          unfold Dat.Jn
          rw [hJ0]
          rfl
        rw [this]
        linarith
      push_cast
      have := Wf.bule
      linarith
    have key := _root_.Formalism.CountingSumsFrames.density_lower_bound X.m al be La' X.b' hm5 hal0 hb hLa'0 hcond
    have e1 : (X.m : ℝ) * (La' * X.b' / ((X.m : ℝ) + 1)) = (X.m : ℝ) * X.J0 K := by rw [hJ0]; rfl
    have e2 : ⌊La' * X.b' / ((X.m : ℝ) + 1)⌋₊ = X.Jn K := by
      unfold Dat.Jn
      rw [hJ0]
      rfl
    rw [e1, e2] at key
    refine le_trans ?_ key
    apply mul_le_mul_of_nonneg_right _ (by linarith)
    have : (X.m : ℝ) * X.J0 K / al ≤ (X.m : ℝ) * X.J0 K / X.a := div_le_div_of_nonneg_left hmJ0 ha0 hala
    linarith
  · rw [cA, cB]
    push_cast
    have := dens_abs X.N hN1n ((X.m : ℝ) * X.J0 K / X.a) (Real.exp (-La' / 3)) ((X.Wa 0).card : ℝ)
      ((X.Wb 0).card : ℝ) ((X.Jn K + X.ccl : ℕ) : ℝ) hx10 hx20 hwaR hwbR he0 (by
        have e : (X.N : ℝ) * ((X.m : ℝ) * X.J0 K / X.a + Real.exp (-La' / 3) +
            ((X.Jn K + X.ccl : ℕ) : ℝ) / ((X.Wa 0).card : ℝ) + ((X.Jn K + X.ccl : ℕ) : ℝ) / ((X.Wb 0).card : ℝ)) =
            (X.N : ℝ) * ((X.m : ℝ) * X.J0 K / X.a) + (X.N : ℝ) * Real.exp (-La' / 3) +
            (X.N : ℝ) * (((X.Jn K + X.ccl : ℕ) : ℝ) / ((X.Wa 0).card : ℝ)) +
            (X.N : ℝ) * (((X.Jn K + X.ccl : ℕ) : ℝ) / ((X.Wb 0).card : ℝ)) := by ring
        rw [e]
        linarith)
    push_cast at this
    exact this

end Formalism.MainNotions.flipOneThree.Pf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThresholdDensityFacts =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThresholdFixedWeightFacts =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThresholdFixedWeightFacts", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.TwoHundredLeRadius\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FactorizationBoundMonoLattices\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LocalHypothesisOfGlobal\nimport Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FourDepthLtConductorOfBounds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.flipOneThree.Pf

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree

structure JFacts (K : Cst) (X : Dat) : Prop where
  j3 : 3 ≤ X.J0 K
  jb : X.J0 K ≤ X.b' / 216
  cj : (X.ccl : ℝ) ≤ X.J0 K
  jn3 : (3 : ℝ) ≤ X.Jn K
  jnle : (X.Jn K : ℝ) ≤ X.J0 K
  uale : (X.ua : ℝ) ≤ X.ar + X.ar / (((X.m : ℝ) + 1) * X.Y)
  ualt : X.ar + X.ar / (((X.m : ℝ) + 1) * X.Y) < X.ua + 1
  uble : (X.ub : ℝ) ≤ X.bu
  blge : X.b' / 2 ≤ X.bl
  bule : X.bu ≤ 3 * X.b' / 2
  lbge : X.bl ≤ X.lb

theorem jFacts_of {K : Cst} (hK : K.Pos) {CH : ℝ} (hCH : K.TM ≤ CH) {X : Dat} (h : X.Hyp K.C₀ CH) (B : Base K CH X) :
    JFacts K X := by
  have H' := hyp_round hK hCH h B
  obtain ⟨hY, -, -, -, -, -, -, -, hb, hbl, hbu, -, hIb2, hYb, hk2, -, -, -, -, -, hccl, -, -, -⟩ := H'
  obtain ⟨l1, -, -⟩ := La_round hK B
  have hT : K.TLP ≤ CH := le_trans (le_max_left _ _) hCH
  have h108 : (108 : ℝ) ≤ CH := le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) hT
  have hYbC : CH ≤ X.Yb := h.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have hk5 : (5 : ℝ) ≤ (X.m : ℝ) + 1 := B.hk5
  have hk0 : (0 : ℝ) < (X.m : ℝ) + 1 := by linarith
  have hN2 : (2 : ℝ) ≤ (X.TT.card : ℝ) := B.hN2
  have hLa1 : 1 ≤ LaI K.C₀ X.N₁ X.ar := B.hLa1
  have hLa' : 1 ≤ LaI K.C₀ X.N₁ (X.a : ℝ) := le_trans hLa1 l1
  have h200 := two_hundred_le_radius B
  have hJ : X.J0 K = LaI K.C₀ X.N₁ (X.a : ℝ) * X.b' / ((X.m : ℝ) + 1) := rfl
  have hbk : 24 * ((X.m : ℝ) + 1) ≤ X.b' := by
    have h1 := B.hsz X.k 8 (by linarith [B.hk5]) (k_le_G B) (by norm_num) (by
      have h8 : 8 ≤ X.cStar := by
        have := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
        omega
      have h8' : (8 : ℝ) ≤ X.cStar := by exact_mod_cast h8
      have h1 : (0 : ℝ) ≤ (X.N : ℝ) * X.ccl := by positivity
      have h2 : (0 : ℝ) ≤ (X.n' : ℝ) * X.ccl := by positivity
      linarith)
    have h2 : 108 * (X.k * 8) ≤ CH * (X.k * 8) := mul_le_mul_of_nonneg_right h108 (by linarith [B.hk5])
    have h3 : X.k = (X.m : ℝ) + 1 := rfl
    rw [h3] at h1 h2
    linarith
  have j3 : 3 ≤ X.J0 K := by
    rw [hJ, le_div_iff₀ hk0]
    have : 1 * X.b' ≤ LaI K.C₀ X.N₁ (X.a : ℝ) * X.b' := mul_le_mul_of_nonneg_right hLa' hb.le
    linarith
  have jb : X.J0 K ≤ X.b' / 216 := by
    rw [hJ, div_le_div_iff₀ hk0 (by norm_num)]
    have h1 : 216 * LaI K.C₀ X.N₁ (X.a : ℝ) ≤ (X.m : ℝ) + 1 := by
      have e1 : (108 : ℝ) * 2 ≤ X.Yb * X.TT.card := mul_le_mul (by linarith) hN2 (by norm_num) (by linarith)
      have e2 : 108 * 2 * LaI K.C₀ X.N₁ (X.a : ℝ) ≤ X.Yb * X.TT.card * LaI K.C₀ X.N₁ (X.a : ℝ) :=
        mul_le_mul_of_nonneg_right e1 (by linarith)
      linarith
    have h2 := mul_le_mul_of_nonneg_right h1 hb.le
    linarith
  have hx0 : 0 ≤ X.ar + X.ar / (((X.m : ℝ) + 1) * X.Y) := by
    have : 0 ≤ X.ar := by linarith
    positivity
  refine ⟨j3, jb, hccl, ?_, Nat.floor_le (by linarith), Nat.floor_le hx0, Nat.lt_floor_add_one _,
    Nat.floor_le (by linarith), by linarith, by linarith, Nat.le_ceil _⟩
  have : 3 ≤ X.Jn K := Nat.le_floor (by exact_mod_cast j3)
  exact_mod_cast this

theorem cb_of {K : Cst} {CH : ℝ} {X : Dat} (B : Base K CH X) : CBoundI 4 X.p X.m X.TT X.a X.ccl X.cStar X.c4 := by
  obtain ⟨-, -, h3, -⟩ := logs_of B
  unfold CBoundI Dat.c4 Dat.N
  push_cast
  have h1 : (0 : ℝ) ≤ (X.TT.card : ℝ) * ((X.m : ℝ) + 1) * Real.logb X.p X.a := by positivity
  have h2 : (0 : ℝ) ≤ (X.TT.card : ℝ) * X.ccl := by positivity
  have h4 : (0 : ℝ) ≤ (X.n' : ℝ) * X.ccl := by positivity
  have h5 : (0 : ℝ) ≤ (X.cStar : ℝ) := by positivity
  linarith

theorem D0nn_of {K : Cst} (hK : K.Pos) {CH : ℝ} {X : Dat} (B : Base K CH X) : 0 ≤ X.D0 K := by
  obtain ⟨h1, -, h3, -⟩ := logs_of B
  rw [D0_eq_numSeg_mul_add]
  have hCA : 0 < K.CA := hK.2.2.1
  have hk : 0 ≤ X.k := by linarith [B.hk5]
  have hlg : 0 ≤ lgA X.p X.a X.m := by linarith
  positivity

theorem small_depth_le_large_depth (K : Cst) (X : Dat) : X.D0 K ≤ X.D1 K := by
  unfold Dat.D1
  have : (0 : ℝ) ≤ 4 * (X.N : ℝ) * X.u0c := by positivity
  linarith

theorem window_lower_bound_of_base {K : Cst} {CH : ℝ} {X : Dat} (B : Base K CH X) (J : JFacts K X) :
    (X.a : ℝ) + X.a / (((X.m : ℝ) + 1) * X.Y) ≤ ((X.ua + X.Jn K + X.ccl : ℕ) : ℝ) := by
  have hk5 : (5 : ℝ) ≤ (X.m : ℝ) + 1 := B.hk5
  have hkY : 1 ≤ ((X.m : ℝ) + 1) * X.Y := one_le_mul_of_one_le_of_one_le (by linarith) B.hY
  have hkY0 : 0 < ((X.m : ℝ) + 1) * X.Y := by linarith
  have h1 : (X.a : ℝ) / (((X.m : ℝ) + 1) * X.Y) ≤ X.ar / (((X.m : ℝ) + 1) * X.Y) + 1 := by
    have e1 : (X.a : ℝ) / (((X.m : ℝ) + 1) * X.Y) ≤ (X.ar + 1) / (((X.m : ℝ) + 1) * X.Y) :=
      div_le_div_of_nonneg_right B.haa1.le hkY0.le
    have e2 : 1 / (((X.m : ℝ) + 1) * X.Y) ≤ 1 := (div_le_one hkY0).2 hkY
    rw [add_div] at e1
    linarith
  push_cast
  have := J.ualt
  have := J.jn3
  have := B.haa1
  have : (0 : ℝ) ≤ X.ccl := by positivity
  linarith

theorem winA_of {K : Cst} {CH : ℝ} {X : Dat} (B : Base K CH X) (J : JFacts K X) :
    ((X.ua + X.Jn K + X.ccl : ℕ) : ℝ) ≤ X.a + X.a / (((X.m : ℝ) + 1) * X.Y) + 2 * X.J0 K := by
  have hk5 : (5 : ℝ) ≤ (X.m : ℝ) + 1 := B.hk5
  have hkY0 : 0 < ((X.m : ℝ) + 1) * X.Y := mul_pos (by linarith) (by linarith [B.hY])
  have e1 : X.ar / (((X.m : ℝ) + 1) * X.Y) ≤ (X.a : ℝ) / (((X.m : ℝ) + 1) * X.Y) :=
    div_le_div_of_nonneg_right B.haa hkY0.le
  push_cast
  linarith [J.uale, J.jnle, J.cj, B.haa]

theorem winB_of {K : Cst} {X : Dat} (J : JFacts K X) :
    ((X.ub + X.Jn K + X.ccl : ℕ) : ℝ) ≤ X.bu + 2 * X.J0 K := by
  push_cast
  linarith [J.uble, J.jnle, J.cj]

theorem jA_of {K : Cst} {CH : ℝ} {X : Dat} (B : Base K CH X) (J : JFacts K X) : X.Jn K ≤ X.a := by
  have h : (X.Jn K : ℝ) ≤ X.a := by linarith [J.jnle, J.jb, b_le_a B, B.hb8]
  exact_mod_cast h

theorem jB_of {K : Cst} {CH : ℝ} {X : Dat} (B : Base K CH X) (J : JFacts K X) : X.Jn K ≤ X.lb := by
  have h : (X.Jn K : ℝ) ≤ X.lb := by linarith [J.jnle, J.jb, J.blge, J.lbge, B.hb8]
  exact_mod_cast h

theorem degree_sum_le_eight_mul {K : Cst} {CH : ℝ} {X : Dat} (B : Base K CH X) (J : JFacts K X) :
    (X.ua + X.Jn K + X.ccl) + (X.ub + X.Jn K + X.ccl) + 1 ≤ 8 * X.a := by
  have hk5 : (5 : ℝ) ≤ (X.m : ℝ) + 1 := B.hk5
  have hkY : 1 ≤ ((X.m : ℝ) + 1) * X.Y := one_le_mul_of_one_le_of_one_le (by linarith) B.hY
  have h200 := two_hundred_le_radius B
  have e1 : X.ar / (((X.m : ℝ) + 1) * X.Y) ≤ X.ar := div_le_self (by linarith) hkY
  have h : ((X.ua : ℝ) + X.Jn K + X.ccl) + ((X.ub : ℝ) + X.Jn K + X.ccl) + 1 ≤ 8 * (X.a : ℝ) := by
    linarith [J.uale, J.jnle, J.cj, J.jb, J.uble, J.bule, b_le_a B, B.haa, B.hb8]
  exact_mod_cast h

theorem logl_of {K : Cst} (hK : K.Pos) {CH : ℝ} (hCH : K.TM ≤ CH) {X : Dat} (h : X.Hyp K.C₀ CH) (B : Base K CH X) :
    ((X.m : ℝ) + 1) * X.Y ^ 2 * Real.log X.a ≤ X.a / X.b' := by
  have H' := hyp_round hK hCH h B
  have h16 := H'.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  obtain ⟨l1, -, -⟩ := La_round hK B
  obtain ⟨g1, -⟩ := log_round B
  have hT : K.TLP ≤ CH := le_trans (le_max_left _ _) hCH
  have h108 : (108 : ℝ) ≤ CH := le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) hT
  have hYbC : CH ≤ X.Yb := h.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have hk5 : (5 : ℝ) ≤ (X.m : ℝ) + 1 := B.hk5
  have hN2 : (2 : ℝ) ≤ (X.TT.card : ℝ) := B.hN2
  have hLa' : 1 ≤ LaI K.C₀ X.N₁ (X.a : ℝ) := le_trans B.hLa1 l1
  have hl : 0 ≤ Real.log (X.a : ℝ) := by linarith [B.hlog1]
  refine le_trans ?_ h16
  have e1 : (1 : ℝ) ≤ X.Yb / 2 * X.TT.card * LaI K.C₀ X.N₁ (X.a : ℝ) :=
    one_le_mul_of_one_le_of_one_le (one_le_mul_of_one_le_of_one_le (by linarith) (by linarith)) hLa'
  have hP : 0 ≤ ((X.m : ℝ) + 1) * X.Y ^ 2 * Real.log X.a := by positivity
  have e2 := mul_le_mul_of_nonneg_left e1 hP
  calc _ = ((X.m : ℝ) + 1) * X.Y ^ 2 * Real.log X.a * 1 := by ring
    _ ≤ _ := e2
    _ = _ := by ring

theorem multiplicity_bound_nonneg (K : Cst) (hK : K.Pos) (X : Dat) : 0 ≤ m0I K.Cm X.p X.m X.G' X.N₁ X.c4 := by
  unfold m0I m0G4 m1G4
  have : 0 < K.Cm := hK.2.2.2.2.2.1
  positivity

theorem multiplicity_bound_abstract (Cm CH k N1 Q Y N c S b' : ℝ) (hCm : 0 < Cm) (hCH : 2 * Cm + 24 ≤ CH) (hk : 1 ≤ k) (hN1 : 1 ≤ N1)
    (hQ : 1 ≤ Q) (hY : 1 ≤ Y) (hc0 : 0 ≤ c)
    (hsz : CH * (k ^ 2 * N1 * Q ^ 2 * Y) * (c / 2) ≤ b') :
    (Cm * k * N1 * Q * c + 12 * c) * (k * Q * Y) ≤ b' := by
  refine le_trans ?_ hsz
  have hP : 0 ≤ k ^ 2 * N1 * Q ^ 2 * Y * (c / 2) := by positivity
  have e1 := mul_le_mul_of_nonneg_right hCH hP
  have e2 : k * Q * Y * c ≤ k ^ 2 * N1 * Q ^ 2 * Y * c := by
    have a1 : (1 : ℝ) ≤ k * N1 * Q := one_le_mul_of_one_le_of_one_le (one_le_mul_of_one_le_of_one_le hk hN1) hQ
    have a2 : 0 ≤ k * Q * Y * c := by positivity
    have := mul_le_mul_of_nonneg_right a1 a2
    calc k * Q * Y * c = 1 * (k * Q * Y * c) := by ring
      _ ≤ k * N1 * Q * (k * Q * Y * c) := this
      _ = _ := by ring
  calc (Cm * k * N1 * Q * c + 12 * c) * (k * Q * Y) = Cm * (k ^ 2 * N1 * Q ^ 2 * Y * c) + 12 * (k * Q * Y * c) := by
        ring
    _ ≤ Cm * (k ^ 2 * N1 * Q ^ 2 * Y * c) + 12 * (k ^ 2 * N1 * Q ^ 2 * Y * c) := by linarith
    _ = (2 * Cm + 24) * (k ^ 2 * N1 * Q ^ 2 * Y * (c / 2)) := by ring
    _ ≤ CH * (k ^ 2 * N1 * Q ^ 2 * Y * (c / 2)) := e1
    _ = _ := by ring

theorem multiplicity_bound_le_ratio {K : Cst} (hK : K.Pos) {CH : ℝ} (hCH : K.TM ≤ CH) {X : Dat} (B : Base K CH X) :
    m0I K.Cm X.p X.m X.G' X.N₁ X.c4 ≤ X.b' / (((X.m : ℝ) + 1) * (X.p : ℝ) ^ X.G' * X.Y) := by
  have hk5 : (5 : ℝ) ≤ (X.m : ℝ) + 1 := B.hk5
  have hk1 : (1 : ℝ) ≤ X.k := by linarith [B.hk5]
  have hQ := B.hQ
  have hY := B.hY
  have hpos : 0 < ((X.m : ℝ) + 1) * (X.p : ℝ) ^ X.G' * X.Y := by
    have : (0 : ℝ) < (X.p : ℝ) ^ X.G' := by linarith
    have : (0 : ℝ) < X.Y := by linarith
    positivity
  rw [le_div_iff₀ hpos]
  unfold m0I m0G4 m1G4
  have hCm : 2 * K.Cm + 24 ≤ CH := le_trans (le_trans (le_max_right _ _) (le_max_right _ _)) hCH
  have sq_level_le_degree : (X.N₁ : ℝ) ≤ X.k := le_trans (le_self_pow₀ B.hN1 (by norm_num)) B.sq_level_le_degree
  have hw : X.k ^ 2 * X.N₁ * ((X.p : ℝ) ^ X.G') ^ 2 * X.Y ≤ X.k ^ 3 * X.N * ((X.p : ℝ) ^ X.G') ^ 4 * X.Y := by
    have a1 : X.k ^ 2 * X.N₁ ≤ X.k ^ 3 * X.N := by
      have : X.k ^ 2 * X.N₁ ≤ X.k ^ 2 * X.k := mul_le_mul_of_nonneg_left sq_level_le_degree (by positivity)
      have h2 : X.k ^ 3 * 1 ≤ X.k ^ 3 * X.N := mul_le_mul_of_nonneg_left (by linarith [B.hN2]) (by positivity)
      calc X.k ^ 2 * X.N₁ ≤ X.k ^ 2 * X.k := this
        _ = X.k ^ 3 * 1 := by ring
        _ ≤ _ := h2
    have a2 : ((X.p : ℝ) ^ X.G') ^ 2 ≤ ((X.p : ℝ) ^ X.G') ^ 4 := pow_le_pow_right₀ hQ (by norm_num)
    have a3 : X.k ^ 2 * X.N₁ * ((X.p : ℝ) ^ X.G') ^ 2 ≤ X.k ^ 3 * X.N * ((X.p : ℝ) ^ X.G') ^ 4 :=
      mul_le_mul a1 a2 (by positivity) (by positivity)
    exact mul_le_mul_of_nonneg_right a3 (by linarith)
  have hu : (X.c4 : ℝ) / 2 ≤ (X.cStar : ℝ) + X.N * X.ccl + X.n' * X.ccl := by
    unfold Dat.c4
    push_cast
    have : (0 : ℝ) ≤ X.cStar := by positivity
    linarith
  have hsz := B.hsz _ _ (by positivity) hw (by positivity) hu
  exact multiplicity_bound_abstract K.Cm CH X.k X.N₁ ((X.p : ℝ) ^ X.G') X.Y X.N X.c4 0 X.b' hK.2.2.2.2.2.1 hCm hk1 B.hN1 hQ hY
    (by positivity) hsz

theorem fixed_weight_facts_of_hyp {K : Cst} (hK : K.Pos) {CH : ℝ} (hCH : K.TM ≤ CH) {X : Dat} (h : X.Hyp K.C₀ CH) : FixedWeightNumericalFacts K X := by
  have hT : K.TLP ≤ CH := le_trans (le_max_left _ _) hCH
  have B := base_of K hK CH hT X h
  have J := jFacts_of hK hCH h B
  have hd := dle_of hK hT h B
  have hcs : 8 * (X.Dp + 1) ≤ X.cStar := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have h4 := four_depth_lt_conductor_of_bounds hd hcs
  have h1nn := D1nn_of hK B
  have hm : 2 * X.N₁ + 2 ≤ X.m := h.2.2.2.2.2.2.1
  exact ⟨hyp_round hK hCH h B, cb_of B, by linarith [small_depth_le_large_depth K X], D0nn_of hK B, by linarith, by linarith [J.j3],
    winA_of B J, winB_of J, jA_of B J, jB_of B J, degree_sum_le_eight_mul B J, by omega⟩

theorem mean_kappa_facts_of_hyp {K : Cst} (hK : K.Pos) {CH : ℝ} (hCH : K.TM ≤ CH) {X : Dat} (h : X.Hyp K.C₀ CH) : MeanKappaNumericalFacts K X := by
  have hT : K.TLP ≤ CH := le_trans (le_max_left _ _) hCH
  have B := base_of K hK CH hT X h
  have J := jFacts_of hK hCH h B
  exact ⟨hyp_round hK hCH h B, cb_of B, by linarith [J.j3], window_lower_bound_of_base B J, winA_of B J, winB_of J,
    logl_of hK hCH h B, multiplicity_bound_nonneg K hK X, multiplicity_bound_le_ratio hK hCH B⟩

theorem threshold_fixed_weight_facts (K : Cst) (hK : K.Pos) : TransportedAlt K (fun _ => FixedWeightNumericalFacts K) :=
  ⟨K.TM, 1, TM_pos K, one_pos, fun _ hCH _ _ _ h => fixed_weight_facts_of_hyp hK hCH h⟩

theorem threshold_mean_kappa_facts (K : Cst) (hK : K.Pos) : TransportedAlt K (fun _ => MeanKappaNumericalFacts K) :=
  ⟨K.TM, 1, TM_pos K, one_pos, fun _ hCH _ _ _ h => mean_kappa_facts_of_hyp hK hCH h⟩

end Formalism.MainNotions.flipOneThree.Pf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThresholdFixedWeightFacts =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.TheoremIOfLatticeFunctorComparison =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.TheoremIOfLatticeFunctorComparison", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.MidMeanOf\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LatticeMapsOfFunctorComparison\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ModelIdentificationOfExplicitMap\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudPropOfMapsRetractionBasis\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.BlockSplit\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudPropOfMapsBasis\nimport Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FinrankLetter\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FunctorComparisonOfSingleWeightFacts\nimport Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.InvariantSectionsTransportGL\nimport Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LatticeCountPrimeMonoLevel\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ResidueClassCountOfTensorBasisInclusion\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RestOIso\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RestTensor\nimport Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RhoUpperBoundSmallDepth\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.TensorBoundOfOrderBound\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.TheoremIOfIntermediateBounds\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThrLPOf\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThresholdDensityFacts\nimport Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThresholdFinalFacts\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.ThresholdFixedWeightFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LpRingIndepOf\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.flipOneThree.Pf

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree

theorem tools_of_admitted_statements (D : Formalism.BasicNotions.D7) (hA : AdmBE D) : AdmT D := by
  obtain ⟨T0, _, h0⟩ := hA 4 (by norm_num)
  obtain ⟨T1, _, h1⟩ := h0 T0 le_rfl
  obtain ⟨T2, _, h2⟩ := h1 T1 T1 T1 le_rfl le_rfl le_rfl
  obtain ⟨CA, Ckap, Ct, Cs, _, _, _, _, hAdm⟩ := h2 T2 le_rfl
  exact hAdm.2.2.2.2

theorem thrFM (K : Cst) (hK : K.Pos) : TransportedAlt K (fun _ => FM K) :=
  (threshold_fixed_weight_facts K hK).and ((threshold_density_facts K hK).and ((threshold_mean_kappa_facts K hK).and (threshold_final_facts K hK)))

theorem restEdge : RestEdge := restEdge_of restFunct

theorem blockSplit' : BlockSplit := fun _ _ _ _ _ _ n z hz A h => KP.blockSplit n z hz A h

theorem second_estimate_of_restrictions (D : Formalism.BasicNotions.D7) (hR : LPRingIndep) (h61a : RhoSumLowerBoundEdge) (h62 : CloudWeightLowerBound) (h63 : ResidueClassCount) :
    SecondPartClosed D := by
  intro hA
  have hT := tools_of_admitted_statements D hA
  have h16 : PairedPathIndependence D := hT.2.2.2.2.2.2.2.2.2.2.2
  have hD : RestDims := restDims_of D h16.1 h16.2
  exact theorem_I_of_intermediate_bounds D FM hR (midLP_of rho_lower_bound_large_conductor h62 h63)
    (fun K hK => midMean_of D h61a rho_upper_bound_small_depth restEdge hD K hK) thrLP thrFM hA

theorem theorem_I_of_finer_open_statements (D : Formalism.BasicNotions.D7) (hR : LPRingIndep) (h61 : LatticeFunctorComparison) (hC : RestCloudMaps) : SecondPartClosed D := by
  intro hA
  have hT := tools_of_admitted_statements D hA
  have h16 : PairedPathIndependence D := hT.2.2.2.2.2.2.2.2.2.2.2
  have h13 : TypeDecompositionsCommute D := hT.2.2.2.2.2.2.2.2.1
  exact second_estimate_of_restrictions D hR (rho_sum_bound_of_maps_splitting (lattice_maps_of_functor_comparison h61) blockSplit') (cloud_bound_of_maps hC h13.2.2.1 h13.1 h16.2)
    (tensor_bound_of_order_bound restTensor restOrdBound h13.1 h13.2.1) hA

theorem theorem_I_of_lattice_functor_comparison (D : Formalism.BasicNotions.D7) (h61 : LatticeFunctorComparison) (hC : RestCloudMaps) : SecondPartClosed D := by
  intro hA
  have h12 : NestedTypeBound D := (tools_of_admitted_statements D hA).2.2.2.2.2.2.2.1
  exact theorem_I_of_finer_open_statements D (lpRingIndep_of'' h12.1 restOIso) h61 hC hA

theorem theorem_I_of_model_identification (D : Formalism.BasicNotions.D7) (hTie : TwoLetterModelIdentification) (hC : RestCloudMaps) : SecondPartClosed D :=
  theorem_I_of_lattice_functor_comparison D (functor_comparison_of_single_weight_facts (single_weight_of_model_identification hTie)) hC

theorem theorem_I_of_explicit_minor_map (D : Formalism.BasicNotions.D7) (hPsi : TiePsi) (hC : RestCloudMaps) : SecondPartClosed D :=
  theorem_I_of_model_identification D (model_identification_of_explicit_map hPsi) hC

end Formalism.MainNotions.flipOneThree.Pf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.TheoremIOfLatticeFunctorComparison =====
