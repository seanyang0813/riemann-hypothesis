module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.IsFieldIntersection
public import Mathlib.RingTheory.KrullDimension.Field
public import Mathlib.RingTheory.KrullDimension.Polynomial
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.InhDivCycleOfSuppEmpty
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsChainFirst
public import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.GenericMinors
public import GroundTheory.HeightsAndTheta.Heights.HeightKernels.Assembly
public import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PFlagArithVar
public import GroundTheory.HeightsAndTheta.Heights.HeightComparison.GeoNum
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed
public import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PHFlProdLinear
public import GroundTheory.HeightsAndTheta.Heights.Intersections.ConservationDegreeFormOfExistence
public import GroundTheory.HeightsAndTheta.Heights.Intersections.PConsequences
public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.PairRelationOfScaledRatio
public import Mathlib.Tactic.Continuity
public import Mathlib.GroupTheory.Perm.DomMulAct
public import Mathlib.Data.Fintype.Perm
public import GroundTheory.HeightsAndTheta.Heights.Antisymmetric.Statements
public import Development.AutomorphicSpectrum.Statements.MetricStatements.AgreementIffGuarded
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeWeightFormula
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.GenericFibreLinearEquations
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LogIntegralMultilinear
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.WeightMapInjective
public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.IsPeriodOn
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagAnalyticDataUniformised
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagCoverDegreeOneRealisation
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagHeightPolynomialWeightForm
public import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FlagIndices.InstFintypeFlIdx
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagVarietyArithmetic
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagVarietyBoundaryDimensionDrop
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagVarietyModelBaseMetric
public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.MetricsProjectionFormulaNef
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.RealisationPotentialDegreeCompatibility
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.SamePotBlock
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.UniformisedDegreePolynomialAntisymmetric
public import Development.WeilBound.CoreStatements.PluriharmonicCharts.XCFlAn
public import GroundTheory.HeightsAndTheta.Heights.OrbitLimits.ExistsUnique
public import GroundTheory.HeightsAndTheta.Heights.OrbitLimits.PLiftGraphFactor
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FrameDefinitions.PermFinTwoUniv
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PFlagRatioTrdeg
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PGenLeadMinorNeZero
import GroundTheory.HeightsAndTheta.Heights.Intersections.PFlagPivotIdentity
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import GroundTheory.HeightsAndTheta.Heights.Intersections.IsSmoothHermFubiniStudyO1
import GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.IntNumRelabel
import GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.StatementsExamples
import Mathlib.Tactic.Linter.HaveILetI
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.SwapLoc

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FieldIntersectionLinearDegreeOne, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagChainArithVariety, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagChainUnitLogIntegral, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsBlockMapDrop, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RhoCoeffGapDeltaOne, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RhoFactorialProductEq, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.SymmetricFormPolynomialCoeff, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.WeightGapDeltaEqAntisymmetric, Development.WeilBound.CoreStatements.IntegralPointHeights.NegativeIntegralPoints.FlDegFree, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreePolynomialEval

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FieldIntersectionLinearDegreeOne =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FieldIntersectionLinearDegreeOne", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.IsFieldIntersection\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\npublic import Mathlib.RingTheory.KrullDimension.Field\npublic import Mathlib.RingTheory.KrullDimension.Polynomial\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.InhDivCycleOfSuppEmpty\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\nimport GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FrameDefinitions.PermFinTwoUniv\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Top.FlDeg.LinDeg

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1

section Forms

variable {σ : Type*} [Fintype σ] {F : Type*} [Field F]

def linForm : (σ → F) →ₗ[F] MvPolynomial σ F :=
  Fintype.linearCombination F (fun p => (X p : MvPolynomial σ F))

theorem linForm_apply (c : σ → F) : linForm c = ∑ p, c p • (X p : MvPolynomial σ F) := by
  simp [linForm, Fintype.linearCombination_apply]

def lin (U : Submodule F (σ → F)) : Ideal (MvPolynomial σ F) :=
  Ideal.span (linForm '' (U : Set (σ → F)))

theorem linForm_mem {U : Submodule F (σ → F)} {c : σ → F} (h : c ∈ U) : linForm c ∈ lin U :=
  Ideal.subset_span ⟨c, h, rfl⟩

variable [DecidableEq σ]

theorem linForm_single (p : σ) : linForm (Pi.single p (1 : F)) = (X p : MvPolynomial σ F) := by
  rw [linForm_apply, Finset.sum_eq_single p]
  · simp
  · intro b _ hb; simp [hb]
  · simp

theorem eq_sum_single (c : σ → F) : c = ∑ p, c p • (Pi.single p (1 : F) : σ → F) := by
  ext q
  simp [Finset.sum_apply, Pi.single_apply]

theorem eval_linForm (l : (σ → F) →ₗ[F] F) (c : σ → F) :
    eval (fun q => l (Pi.single q 1)) (linForm c) = l c := by

  conv_rhs => rw [eq_sum_single c, map_sum]

  rw [linForm_apply, map_sum]
  refine Finset.sum_congr rfl fun p _ => ?_
  simp [smul_eval]

theorem lin_le_ker {U : Submodule F (σ → F)} (l : (σ → F) →ₗ[F] F) (h : U ≤ LinearMap.ker l) :
    lin U ≤ RingHom.ker (eval fun q => l (Pi.single q 1)) := by
  refine Ideal.span_le.2 ?_
  rintro _ ⟨c, hc, rfl⟩
  change eval _ _ = 0
  rw [eval_linForm]
  exact h hc

theorem X_notMem_lin {U : Submodule F (σ → F)} {p : σ} (h : (Pi.single p (1 : F) : σ → F) ∉ U) :
    (X p : MvPolynomial σ F) ∉ lin U := by
  obtain ⟨l, hl, hU⟩ := Submodule.exists_le_ker_of_notMem h
  intro hX
  have := lin_le_ker l hU hX
  rw [RingHom.mem_ker, eval_X] at this
  exact hl this

theorem single_notMem {U : Submodule F (σ → F)} {p : σ} (h : (X p : MvPolynomial σ F) ∉ lin U) :
    (Pi.single p (1 : F) : σ → F) ∉ U := fun h' => h (linForm_single (F := F) p ▸ linForm_mem h')

theorem lin_sup (U : Submodule F (σ → F)) (p : σ) :
    lin (U ⊔ Submodule.span F {(Pi.single p (1 : F) : σ → F)}) = lin U ⊔ Ideal.span {X p} := by
  refine le_antisymm (Ideal.span_le.2 ?_) (sup_le (Ideal.span_mono (Set.image_mono ?_)) ?_)
  · rintro _ ⟨c, hc, rfl⟩
    obtain ⟨u, hu, v, hv, rfl⟩ := Submodule.mem_sup.1 hc
    obtain ⟨a, rfl⟩ := Submodule.mem_span_singleton.1 hv
    rw [map_add (f := _), map_smul, linForm_single, smul_eq_C_mul]
    exact add_mem (Ideal.mem_sup_left (linForm_mem hu))
      (Ideal.mul_mem_left _ _ (Ideal.mem_sup_right (Ideal.mem_span_singleton_self _)))
  · exact SetLike.coe_subset_coe.2 le_sup_left
  · rw [Ideal.span_singleton_le_iff_mem, ← linForm_single (F := F) p]
    exact linForm_mem (Submodule.mem_sup_right (Submodule.mem_span_singleton_self _))

theorem finrank_quot_succ (U : Submodule F (σ → F)) {e : σ → F} (h : e ∉ U) :
    Module.finrank F ((σ → F) ⧸ (U ⊔ Submodule.span F {e})) + 1 =
      Module.finrank F ((σ → F) ⧸ U) := by
  have he : e ≠ 0 := fun h0 => h (h0 ▸ U.zero_mem)
  have h1 := Submodule.finrank_quotient_add_finrank U
  have h2 := Submodule.finrank_quotient_add_finrank (U ⊔ Submodule.span F {e})
  have h3 := Submodule.finrank_sup_add_finrank_inf_eq U (Submodule.span F {e})
  have h4 : U ⊓ Submodule.span F {e} = ⊥ :=
    ((Submodule.disjoint_span_singleton' he).2 h).eq_bot
  rw [h4, finrank_bot, finrank_span_singleton he] at h3
  omega

end Forms

section Quot

variable {σ : Type*} [Fintype σ] [DecidableEq σ] {F : Type*} [Field F]
  (U : Submodule F (σ → F))

def qb : Module.Basis (Fin (Module.finrank F ((σ → F) ⧸ U))) F ((σ → F) ⧸ U) :=
  Module.finBasis F _

def toY : MvPolynomial σ F →ₐ[F] MvPolynomial (Fin (Module.finrank F ((σ → F) ⧸ U))) F :=
  aeval fun p => linForm ((qb U).equivFun (U.mkQ (Pi.single p 1)))

theorem toY_linForm (c : σ → F) : toY U (linForm c) = linForm ((qb U).equivFun (U.mkQ c)) := by

  rw [linForm_apply c, map_sum]
  conv_rhs => rw [eq_sum_single c]

  simp only [map_sum, map_smul, toY, aeval_X]

theorem toY_kill : ∀ a ∈ lin U, toY U a = 0 := by
  intro a ha
  have : lin U ≤ RingHom.ker (toY U) := by
    refine Ideal.span_le.2 ?_
    rintro _ ⟨c, hc, rfl⟩
    change toY U _ = 0
    have h0 : U.mkQ c = 0 := by simpa using hc
    rw [toY_linForm, h0]
    simp
  exact this ha

def sec (t : Fin (Module.finrank F ((σ → F) ⧸ U))) : σ → F :=
  Function.surjInv (Submodule.mkQ_surjective U) (qb U t)

theorem mkQ_sec (t : Fin (Module.finrank F ((σ → F) ⧸ U))) : U.mkQ (sec U t) = qb U t :=
  Function.surjInv_eq _ _

def fromY : MvPolynomial (Fin (Module.finrank F ((σ → F) ⧸ U))) F →ₐ[F] MvPolynomial σ F ⧸ lin U :=
  aeval fun t => Ideal.Quotient.mkₐ F (lin U) (linForm (sec U t))

theorem fromY_linForm (w : Fin (Module.finrank F ((σ → F) ⧸ U)) → F) :
    fromY U (linForm w) = Ideal.Quotient.mkₐ F (lin U) (linForm (∑ t, w t • sec U t)) := by

  rw [linForm_apply w, map_sum, map_sum, map_sum]
  refine Finset.sum_congr rfl fun t _ => ?_
  simp only [map_smul, fromY, aeval_X]

def quotEquiv :
    (MvPolynomial σ F ⧸ lin U) ≃ₐ[F] MvPolynomial (Fin (Module.finrank F ((σ → F) ⧸ U))) F :=
  AlgEquiv.ofAlgHom (Ideal.Quotient.liftₐ (lin U) (toY U) (toY_kill U)) (fromY U)
    (by
      apply MvPolynomial.algHom_ext
      intro t
      rw [AlgHom.comp_apply, fromY, aeval_X, AlgHom.id_apply]
      change toY U (linForm (sec U t)) = X t
      have h : (qb U).equivFun (qb U t) = Pi.single t 1 := by
        ext j
        simp [Pi.single_apply, eq_comm]
      rw [toY_linForm, mkQ_sec, h, linForm_single])
    (by
      apply Ideal.Quotient.algHom_ext
      apply MvPolynomial.algHom_ext
      intro p
      change fromY U (toY U (X p)) = Ideal.Quotient.mk (lin U) (X p)
      rw [show toY U (X p) = linForm ((qb U).equivFun (U.mkQ (Pi.single p 1))) by simp [toY],
        fromY_linForm]
      change Ideal.Quotient.mk (lin U) _ = _
      rw [Ideal.Quotient.eq, ← linForm_single (F := F) p, ← map_sub]
      refine linForm_mem ((Submodule.Quotient.eq U).1 ?_)
      change U.mkQ _ = U.mkQ _

      rw [map_sum]
      simp only [map_smul, mkQ_sec]
      exact (qb U).sum_equivFun _)

instance lin_isPrime : (lin U).IsPrime := by
  rw [← Ideal.Quotient.isDomain_iff_prime]
  exact (quotEquiv U).toRingEquiv.toMulEquiv.isDomain

theorem lin_dim :
    ringKrullDim (MvPolynomial σ F ⧸ lin U) = (Module.finrank F ((σ → F) ⧸ U) : WithBot ℕ∞) := by
  rw [ringKrullDim_eq_of_ringEquiv (quotEquiv U).toRingEquiv,
    MvPolynomial.ringKrullDim_of_isNoetherianRing, ringKrullDim_eq_zero_of_field, zero_add]
  simp

end Quot

section Block

variable {F : Type*} [Field F] {K : Type*} [Fintype K] {ι : K → Type*} [∀ k, Fintype (ι k)]

theorem homog_linForm (k₀ : K) (hK : ∀ a : K, a = k₀) (c : (Σ k, ι k) → F) :
    IsMultiHomog (linForm c : MRingOver F ι) fun _ => 1 := by
  classical
  intro m hm k
  rw [linForm_apply] at hm
  obtain ⟨q, -, hq⟩ := Finset.mem_biUnion.1 (MvPolynomial.support_sum hm)
  have hq' : m ∈ (X q : MRingOver F ι).support := support_smul hq
  have := inh_homog_X (F := F) q m hq' k
  rw [this, (hK k).trans (hK q.1).symm]
  simp

theorem eq_linForm (k₀ : K) (hK : ∀ a : K, a = k₀) {f : MRingOver F ι}
    (hf : IsMultiHomog f fun _ => 1) :
    f = linForm fun p => AddMonoidAlgebra.coeff f (Finsupp.single p 1) := by
  classical
  have hsupp : ∀ m ∈ f.support, ∃ q : Σ k, ι k, m = Finsupp.single q 1 := by
    intro m hm
    have hs : ∑ i, m ⟨k₀, i⟩ = 1 := hf m hm k₀
    obtain ⟨a, -, ha0⟩ := Finset.exists_ne_zero_of_sum_ne_zero (s := Finset.univ)
      (f := fun i => m ⟨k₀, i⟩) (by rw [hs]; exact one_ne_zero)
    have hsplit := Finset.add_sum_erase Finset.univ (fun i => m ⟨k₀, i⟩) (Finset.mem_univ a)
    have ha : m ⟨k₀, a⟩ = 1 := by omega
    have hrest : ∑ x ∈ Finset.univ.erase a, m ⟨k₀, x⟩ = 0 := by omega
    have h0 : ∀ b, b ≠ a → m ⟨k₀, b⟩ = 0 := fun b hb =>
      Finset.sum_eq_zero_iff.1 hrest b (Finset.mem_erase.2 ⟨hb, Finset.mem_univ _⟩)
    refine ⟨⟨k₀, a⟩, ?_⟩
    ext ⟨k, b⟩
    have hk := hK k
    subst hk
    by_cases hb : b = a
    · subst hb; simp [ha]
    · rw [h0 b hb, Finsupp.single_apply, if_neg]
      intro h
      exact hb (sigma_mk_injective h).symm
  ext m
  rw [linForm_apply, coeff_sum]
  simp only [MvPolynomial.coeff_smul, coeff_X', smul_eq_mul, mul_ite, mul_one, mul_zero]
  by_cases hm : m ∈ f.support
  · obtain ⟨q, rfl⟩ := hsupp m hm
    rw [Finset.sum_eq_single q]
    · simp
    · intro b _ hb
      rw [if_neg]
      intro h
      exact hb (Finsupp.single_left_injective one_ne_zero h)
    · simp
  · rw [notMem_support_iff.1 hm]
    symm
    refine Finset.sum_eq_zero fun p _ => ?_
    split_ifs with h
    · subst h
      exact notMem_support_iff.1 hm
    · rfl

theorem ptDeg_eq_one [DecidableEq (Σ k, ι k)] (k₀ : K) (hK : ∀ a : K, a = k₀)
    (U : Submodule F ((Σ k, ι k) → F))
    (hd : Module.finrank F (((Σ k, ι k) → F) ⧸ U) = 1) (i : ∀ k, ι k) (hi : IsChart (lin U) i) :
    ptDeg (lin U) i = 1 := by
  set p0 : Σ k, ι k := ⟨k₀, i k₀⟩ with hp0
  set e0 : (Σ k, ι k) → F := Pi.single p0 1 with he0
  have h0 : e0 ∉ U := single_notMem (hi k₀)
  obtain ⟨l, hl, hU⟩ := Submodule.exists_le_ker_of_notMem h0
  set l' : ((Σ k, ι k) → F) →ₗ[F] F := (l e0)⁻¹ • l with hl'
  have hl1 : l' e0 = 1 := by simp [hl', inv_mul_cancel₀ hl]
  have hU' : U ≤ LinearMap.ker l' := fun u hu => by
    have : l u = 0 := hU hu
    simp [hl', this]
  have hne : U.mkQ e0 ≠ 0 := by simpa using h0
  have hq : ∀ q : Σ k, ι k, ∃ c : F, c • e0 - Pi.single q 1 ∈ U := by
    intro q
    obtain ⟨c, hc⟩ := (finrank_eq_one_iff_of_nonzero' _ hne).1 hd (U.mkQ (Pi.single q 1))
    refine ⟨c, (Submodule.Quotient.eq U).1 ?_⟩
    change U.mkQ _ = U.mkQ _
    rw [map_smul, hc]
  have hrange : (X p0 - 1 : MRingOver F ι) ∈ chartIdeal (lin U) i :=
    Ideal.mem_sup_right (Ideal.subset_span ⟨k₀, rfl⟩)
  refine inh_finrank_quot (chartIdeal (lin U) i) (fun q => l' (Pi.single q 1)) ?_ ?_
  · refine sup_le (lin_le_ker l' hU') (Ideal.span_le.2 ?_)
    rintro _ ⟨k, rfl⟩
    have hk := hK k
    subst hk
    change eval _ _ = 0
    simpa [map_sub, eval_X] using sub_eq_zero.2 hl1
  · intro q
    obtain ⟨c, hc⟩ := hq q
    have hlc : l' (Pi.single q 1) = c := by
      have : l' (c • e0 - Pi.single q 1) = 0 := hU' hc
      rw [map_sub, map_smul, hl1, smul_eq_mul, mul_one, sub_eq_zero] at this
      exact this.symm
    rw [hlc]
    have hmem : (linForm (c • e0 - Pi.single q 1) : MRingOver F ι) ∈ chartIdeal (lin U) i :=
      Ideal.mem_sup_left (linForm_mem hc)
    have heq : (X q - C c : MRingOver F ι) =
        C c * (X p0 - 1) - linForm (c • e0 - Pi.single q 1) := by
      rw [map_sub, map_smul, linForm_single, linForm_single, smul_eq_C_mul]
      ring
    rw [heq]
    exact sub_mem (Ideal.mul_mem_left _ _ hrange) hmem

theorem exists_single_notMem [DecidableEq (Σ k, ι k)] (U : Submodule F ((Σ k, ι k) → F))
    (hd : 0 < Module.finrank F (((Σ k, ι k) → F) ⧸ U)) :
    ∃ q : Σ k, ι k, (Pi.single q (1 : F) : (Σ k, ι k) → F) ∉ U := by
  by_contra hcon
  push_neg at hcon
  have htop : U = ⊤ := by
    refine (Submodule.eq_top_iff').2 fun c => ?_
    rw [eq_sum_single c]
    exact U.sum_mem fun p _ => U.smul_mem _ (hcon p)
  subst htop
  have : Subsingleton (((Σ k, ι k) → F) ⧸ (⊤ : Submodule F ((Σ k, ι k) → F))) :=
    Submodule.Quotient.subsingleton_iff.2 rfl
  rw [Module.finrank_zero_of_subsingleton] at hd
  exact lt_irrefl _ hd

theorem degree_lin (k₀ : K) (hK : ∀ a : K, a = k₀) (J : IFamily F ι) (hJ : IsFieldIntersection J) :
    ∀ (r : ℕ) (U : Submodule F ((Σ k, ι k) → F)), IsProjVarF (lin U) r →
      J (lin U) r (fun _ _ => 1) = 1 := by
  classical
  have hcard : Fintype.card K = 1 := Fintype.card_eq_one_iff.2 ⟨k₀, hK⟩
  have hdim : ∀ (r : ℕ) (U : Submodule F ((Σ k, ι k) → F)), IsProjVarF (lin U) r →
      Module.finrank F (((Σ k, ι k) → F) ⧸ U) = r + 1 := by
    intro r U hV
    have h := hV.2
    rw [lin_dim, hcard] at h
    exact_mod_cast h
  intro r
  induction r with
  | zero =>
    intro U hV
    have hd := hdim 0 U hV
    choose i hi using hV.1.2.2
    rw [hJ.1 (lin U) _ i hV hi, ptDeg_eq_one k₀ hK U (by simpa using hd) i hi]
    rfl
  | succ r ih =>
    intro U hV
    have hd := hdim (r + 1) U hV
    obtain ⟨i0, hi0⟩ := hV.1.2.2 k₀
    set p : Σ k, ι k := ⟨k₀, i0⟩ with hp
    have he : (Pi.single p (1 : F) : (Σ k, ι k) → F) ∉ U := single_notMem hi0
    set U' := U ⊔ Submodule.span F {(Pi.single p (1 : F) : (Σ k, ι k) → F)} with hU'
    have hd' : Module.finrank F (((Σ k, ι k) → F) ⧸ U') = r + 1 := by
      have h1 : Module.finrank F (((Σ k, ι k) → F) ⧸ U') + 1 = _ := finrank_quot_succ U he
      omega
    have hsup : lin U ⊔ Ideal.span {(X p : MRingOver F ι)} = lin U' := (lin_sup U p).symm
    have hrel : IsRelevant (lin U') := by
      obtain ⟨q, hq⟩ := exists_single_notMem U' (by omega)
      obtain ⟨k', j⟩ := q
      intro k
      have hk : k = k' := (hK k).trans (hK k').symm
      subst hk
      exact ⟨j, X_notMem_lin hq⟩
    have hV' : IsProjVarF (lin U') r := by
      refine ⟨⟨inferInstance, ⟨_, ?_, rfl⟩, hrel⟩, ?_⟩
      · rintro _ ⟨c, -, rfl⟩
        exact ⟨_, homog_linForm k₀ hK c⟩
      · rw [lin_dim, hd', hcard]
    have hrat : IsRatSection (lin U) (fun _ => 1) (X p) 1 := by
      refine ⟨fun _ => 1, 0, ?_, inh_homog_one, hi0, ?_, fun k => by simp⟩
      · have := inh_homog_X (F := F) p
        have h1 : (Pi.single p.1 1 : K → ℕ) = fun _ => 1 := by
          ext k
          rw [(hK k).trans (hK p.1).symm]
          simp
        rwa [h1] at this
      · exact (Ideal.ne_top_iff_one _).1 hV.1.1.ne_top
    have hb := hJ.2 (lin U) r (fun _ _ => 1) (fun _ => 1) (X p) 1 hV hrat
    have hsn : Fin.snoc (α := fun _ => K → ℤ) (fun _ _ => (1 : ℤ)) (fun _ => 1) =
        fun (_ : Fin (r + 1)) _ => 1 := by
      funext j
      refine Fin.lastCases ?_ (fun j => ?_) j <;> simp
    rw [hsn] at hb
    rw [hb, ratDiv, inh_divCycle_prime (lin U) (X p) (lin U') hsup hrel, inh_divCycle_one]
    simp [Finsupp.mapRange_single, inh_cycEval_single, ih U' hV']

end Block

end GlobalTheory.CompanionTheory.Ar.Top.FlDeg.LinDeg

namespace GlobalTheory.CompanionTheory.Ar.Top.FlDeg

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I4
  GroundTheory.Heights₂.Heights.LowerBoundFree GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top

theorem linear_subspace_degree_one : ∀ (F : Type) [Field F] (K : Type) [Fintype K] (ι : K → Type)
    [∀ k, Fintype (ι k)] (k₀ : K), (∀ a : K, a = k₀) → ∀ (J : IFamily F ι), IsFieldIntersection J →
    ∀ (S : Set (MRingOver F ι)), (∀ f ∈ S, IsMultiHomog f fun _ => 1) → ∀ r : ℕ,
    IsProjVarF (Ideal.span S) r → J (Ideal.span S) r (fun _ _ => 1) = 1 := by
  intro F _ K _ ι _ k₀ hK J hJ S hS r hV
  set U : Submodule F ((Σ k, ι k) → F) :=
    ((Ideal.span S).restrictScalars F).comap LinDeg.linForm with hU
  have hlin : Ideal.span S = LinDeg.lin U := by
    refine le_antisymm (Ideal.span_le.2 fun f hf => ?_) (Ideal.span_le.2 ?_)
    · rw [LinDeg.eq_linForm k₀ hK (hS f hf)]
      refine LinDeg.linForm_mem ?_
      change LinDeg.linForm _ ∈ Ideal.span S
      rw [← LinDeg.eq_linForm k₀ hK (hS f hf)]
      exact Ideal.subset_span hf
    · rintro _ ⟨c, hc, rfl⟩
      exact hc
  rw [hlin] at hV ⊢
  exact LinDeg.degree_lin k₀ hK J hJ r U hV

end GlobalTheory.CompanionTheory.Ar.Top.FlDeg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FieldIntersectionLinearDegreeOne =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagChainArithVariety =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagChainArithVariety", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsChainFirst\npublic import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.GenericMinors\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.Assembly\npublic import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PFlagArithVar\nimport GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PFlagRatioTrdeg\nimport GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PGenLeadMinorNeZero\nimport GroundTheory.HeightsAndTheta.Heights.Intersections.PFlagPivotIdentity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport GroundTheory.HeightsAndTheta.Heights.Intersections.IsSmoothHermFubiniStudyO1\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Top.FlDeg

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I4
open GroundTheory.Heights₂.Heights.LowerBoundFree GroundTheory.Heights₂.Heights GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Inter
open GroundTheory.Heights₂.Heights.LowerBoundFree.FlagRatioTrdeg GroundTheory.Heights₂.Heights.LowerBoundFree.FlagArithVar

/-- Disambiguates from `GlobalTheory.CompanionTheory.Ar.leadMinor`. -/
local notation "LM" => GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Inter.leadMinor

theorem pivotRatio_algebraicIndependent (F : Type) [Field F] (Ψ : Type) (n : ℕ) :
    AlgebraicIndependent F (pivotRatio F Ψ n) := by
  classical
  have hy := pivot_indep F Ψ n
  let δ : PivotIdxLe Ψ n → PivotIdxLe Ψ n :=
    fun q => (q.1, ⟨q.2.1, ⟨Fin.castLE (Nat.sub_le n 1) q.2.1, by simp⟩⟩)
  have hz := ratio_indep F hy δ (fun q => rfl)
  let incl : PivotIdx Ψ n → PivotIdxLe Ψ n := fun q => (q.1, ⟨q.2.1, ⟨q.2.2.1, q.2.2.2.le⟩⟩)
  have hincl : Function.Injective incl := by
    rintro ⟨τ, a, b, hb⟩ ⟨τ', a', b', hb'⟩ h
    simp only [incl, Prod.mk.injEq, Sigma.mk.inj_iff] at h
    obtain ⟨h0, h1, h2⟩ := h
    subst h0 h1
    simp only [heq_eq_eq, Subtype.mk.injEq] at h2
    subst h2
    rfl
  have hrat : (fun q : PivotIdxLe Ψ n => if δ q = q then pivotMinor (genMatFr F Ψ n q.1) q.2.1 q.2.2.1 else
      pivotMinor (genMatFr F Ψ n q.1) q.2.1 q.2.2.1 / pivotMinor (genMatFr F Ψ n (δ q).1) (δ q).2.1 (δ q).2.2.1) ∘
        incl = pivotRatio F Ψ n := by
    funext q
    have hne : δ (incl q) ≠ incl q := by
      intro h
      have := congrArg (fun r : PivotIdxLe Ψ n => ((r.2.2.1 : Fin n) : ℕ)) h
      simp only [δ, incl, Fin.val_castLE] at this
      have := q.2.2.2
      omega
    simp only [Function.comp_apply, hne, if_false]
    rfl
  exact hrat ▸ hz.comp incl hincl

theorem flag_mem_of_le (F : Type) [Field F] {K : Type} [Field K] [Algebra F K] {m : ℕ}
    (g : Matrix (Fin m) (Fin m) K) (A : IntermediateField F K) (hL : ∀ a, LM g a ≠ 0)
    (j : Fin (m - 1))
    (hA : ∀ (a : Fin (m - 1)) (b : Fin m), (a : ℕ) ≤ j → (a : ℕ) < b → pivotMinor g a b / LM g a ∈ A)
    (S : PluckerBlocks m m j) : flagMinor g j S / LM g j ∈ A := by
  have hj : (j : ℕ) + 1 ≤ m := by have := j.2; omega
  have hent : ∀ (a : Fin (m - 1)) (b : Fin m), (a : ℕ) ≤ j → pivotMinor g a b / LM g a ∈ A := by
    intro a b haj
    rcases lt_trichotomy (b : ℕ) a with h | h | h
    · rw [pivotMinor_eq_zero g a b h, zero_div]
      exact A.zero_mem
    · have e : b = Fin.castLE (Nat.sub_le m 1) a := Fin.ext h
      subst e
      show LM g a / LM g a ∈ A
      rw [div_self (hL a)]
      exact A.one_mem
    · exact hA a b haj h
  let U : Matrix (Fin (j + 1)) (Fin (j + 1)) K := Matrix.of fun r s =>
    pivotMinor g ⟨r, by have := r.2; have := j.2; omega⟩ (S.1.orderEmbOfFin S.2 s) /
      LM g ⟨r, by have := r.2; have := j.2; omega⟩
  have hP : (pivotMatrix g).submatrix (Fin.castLE hj) (S.1.orderEmbOfFin S.2) =
      Matrix.diagonal (fun r : Fin (j + 1) => LM g ⟨r, by have := r.2; have := j.2; omega⟩) * U := by
    ext r s
    rw [Matrix.diagonal_mul]
    simp only [Matrix.submatrix_apply, pivotMatrix, Matrix.of_apply, U]
    rw [dite_eq_left (by simp only [Fin.val_castLE]; have := r.2; have := j.2; omega)]
    rw [mul_div_cancel₀ _ (hL _)]
    rfl
  have hdet : flagMinor (pivotMatrix g) j S =
      (∏ r : Fin (j + 1), LM g ⟨r, by have := r.2; have := j.2; omega⟩) * U.det := by
    unfold flagMinor
    rw [hP, Matrix.det_mul, Matrix.det_diagonal]
  have hid := FlagPivotIdentity.proof K m g j S
  rw [prod_Iic_fin, hdet] at hid
  have hne : (∏ r : Fin (j + 1), LM g ⟨r, by have := r.2; have := j.2; omega⟩) ≠ 0 :=
    Finset.prod_ne_zero_iff.2 fun r _ => hL _
  have hU : flagMinor g j S / LM g j = U.det := by
    rw [div_eq_iff (hL j)]
    apply mul_right_cancel₀ hne
    linear_combination hid
  rw [hU, Matrix.det_apply]
  refine A.sum_mem fun σ _ => ?_
  rw [Units.smul_def]
  exact zsmul_mem (A.prod_mem fun r _ => hent _ _ (by have := r.2; simp only; omega)) _

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ} {K : Type}

abbrev PivPos (j : K → FlBlock Ψ N) : Type := Σ k : K, {b : Fin N // ((j k).2 : ℕ) < b}

def pivPosIncl (j : K → FlBlock Ψ N) (x : PivPos j) : PivotIdx Ψ N := ((j x.1).1, ⟨(j x.1).2, x.2⟩)

theorem pivPosIncl_injective {j : K → FlBlock Ψ N} (hj : Function.Injective j) :
    Function.Injective (pivPosIncl j) := by
  rintro ⟨k, b, hb⟩ ⟨k', b', hb'⟩ h
  simp only [pivPosIncl, Prod.mk.injEq, Sigma.mk.inj_iff] at h
  obtain ⟨h0, h1, h2⟩ := h
  have hk : k = k' := hj (Prod.ext h0 h1)
  subst hk
  simp only [heq_eq_eq, Subtype.mk.injEq] at h2
  subst h2
  rfl

theorem card_pivPos [Fintype K] (j : K → FlBlock Ψ N) : Fintype.card (PivPos j) = cellDim j := by
  rw [Fintype.card_sigma, cellDim]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [Fintype.card_subtype]
  have : (Finset.univ.filter fun b : Fin N => ((j k).2 : ℕ) < b) =
      Finset.Ioi (Fin.castLE (Nat.sub_le N 1) (j k).2) := by
    ext b
    simp [Fin.lt_def]
  rw [this, Fin.card_Ioi]
  simp

theorem pivotRatio_algebraicIndependent_of_eq (Ψ : Type) (N : ℕ) (I : Algebra ℚ (ΩFl Ψ N))
    (hI : I = OreLocalization.instAlgebra) :
    @AlgebraicIndependent _ ℚ (ΩFl Ψ N) (pivotRatio ℚ Ψ N) _ _ I := by
  subst hI
  exact pivotRatio_algebraicIndependent ℚ Ψ N

theorem pivotRatio_rat_algebraicIndependent (Ψ : Type) (N : ℕ) :
    AlgebraicIndependent ℚ (pivotRatio ℚ Ψ N : PivotIdx Ψ N → ΩFl Ψ N) :=
  pivotRatio_algebraicIndependent_of_eq Ψ N _ (Subsingleton.elim _ _)

theorem isArithVar_pPart (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (K : Type) [Fintype K] [Nonempty K]
    (j : K → FlBlock Ψ N) (hj : IsChain j) : IsArithVar (PPart j) (cellDim j + 1) := by
  classical
  let e : PivPos j ≃ Fin (cellDim j) := Fintype.equivFinOfCardEq (card_pivPos j)
  let t : Fin (cellDim j) → ΩFl Ψ N := fun i => pivotRatio ℚ Ψ N (pivPosIncl j (e.symm i))
  let c : ∀ k, PIdx j k := fun k => leadIdx Ψ N (j k)
  have hL : ∀ (τ : Ψ) (a : Fin (N - 1)), LM (genMatFr ℚ Ψ N τ) a ≠ 0 := fun τ a =>
    GenLeadMinorNeZero.full ℚ Ψ N τ a
  have hc : ∀ k, yPart j ⟨k, c k⟩ ≠ 0 := fun k => by
    show yFl Ψ N ⟨j k, leadIdx Ψ N (j k)⟩ ≠ 0
    rw [yFl_lead]
    exact hL _ _
  have hind : AlgebraicIndependent ℚ t := by
    exact (pivotRatio_rat_algebraicIndependent Ψ N).comp _
      ((pivPosIncl_injective hj.inj).comp e.symm.injective)
  have hmem : ∀ i, t i ∈ IntermediateField.adjoin ℚ (coneRatios (yPart j) c) := by
    intro i
    refine IntermediateField.subset_adjoin ℚ _ ?_
    show pivotRatio ℚ Ψ N (pivPosIncl j (e.symm i)) ∈ coneRatios (yPart j) c
    obtain ⟨k, b, hb⟩ := e.symm i
    let S : PluckerBlocks N N (j k).2 := ⟨Finset.univ.image (pivotCols (j k).2 b), card_image_pivotCols _ b hb.le⟩
    refine ⟨⟨k, ⟨S.1.orderEmbOfFin S.2, (S.1.orderEmbOfFin S.2).strictMono⟩⟩, ?_⟩
    have h1 := flagMinor_eq_yFl Ψ N (j k).1 (j k).2 S
    have h2 := pivotMinor_eq_flagMinor (genMatFr ℚ Ψ N (j k).1) (j k).2 b hb.le
    have h3 := yFl_lead Ψ N (j k)
    show yFl Ψ N ⟨j k, ⟨S.1.orderEmbOfFin S.2, (S.1.orderEmbOfFin S.2).strictMono⟩⟩ /
      yFl Ψ N ⟨j k, leadIdx Ψ N (j k)⟩ = pivotMinor (genMatFr ℚ Ψ N (j k).1) (j k).2 b /
        LM (genMatFr ℚ Ψ N (j k).1) (j k).2
    rw [h3]
    congr 1
    exact h1.symm.trans h2.symm
  have halg : ∀ r ∈ coneRatios (yPart j) c, IsAlgebraic (IntermediateField.adjoin ℚ (Set.range t)) r := by
    rintro _ ⟨⟨k, A⟩, rfl⟩
    have hT : ∀ (k' : K) (b : Fin N) (h : ((j k').2 : ℕ) < b),
        pivotMinor (genMatFr ℚ Ψ N (j k').1) (j k').2 b / LM (genMatFr ℚ Ψ N (j k').1) (j k').2 ∈
          IntermediateField.adjoin ℚ (Set.range t) := fun k' b h =>
      IntermediateField.subset_adjoin ℚ _ ⟨e ⟨k', b, h⟩, by
        show pivotRatio ℚ Ψ N (pivPosIncl j (e.symm (e ⟨k', b, h⟩))) = _
        rw [e.symm_apply_apply]
        rfl⟩
    have hm : yPart j ⟨k, A⟩ / yPart j ⟨k, c k⟩ ∈ IntermediateField.adjoin ℚ (Set.range t) := by
      show yFl Ψ N ⟨j k, A⟩ / yFl Ψ N ⟨j k, leadIdx Ψ N (j k)⟩ ∈ _
      rw [yFl_lead, yFl_eq_flagMinor]
      refine flag_mem_of_le ℚ (genMatFr ℚ Ψ N (j k).1) _ (hL _) (j k).2 (fun a b ha hb => ?_) _
      obtain ⟨k', hk'⟩ := hj.down k ((j k).1, a) rfl ha
      have h := hT k' b (by rw [hk']; exact hb)
      rw [hk'] at h
      exact h
    exact isAlgebraic_algebraMap (⟨_, hm⟩ : IntermediateField.adjoin ℚ (Set.range t))
  exact CoordConeArithVar.full K (PIdx j) (ΩFl Ψ N) (yPart j) c (cellDim j) t ‹_› hc hind hmem halg

end GlobalTheory.CompanionTheory.Ar.Top.FlDeg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagChainArithVariety =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagChainUnitLogIntegral =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagChainUnitLogIntegral", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsChainFirst\npublic import GroundTheory.HeightsAndTheta.Heights.HeightComparison.GeoNum\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\nimport GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.IntNumRelabel\nimport GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.StatementsExamples\npublic import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PHFlProdLinear\npublic import GroundTheory.HeightsAndTheta.Heights.Intersections.ConservationDegreeFormOfExistence\npublic import GroundTheory.HeightsAndTheta.Heights.Intersections.PConsequences\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.KrullDimension.Field\nimport Mathlib.RingTheory.KrullDimension.Polynomial\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.InhDivCycleOfSuppEmpty\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Top.FlDeg.Base

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I2 ReciprocityTheory.ChartRestriction.G.AI.I4
open GroundTheory.Heights₂.Heights GroundTheory.Heights₂.Heights.LowerBoundFree

section Proj

variable {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]

def blockEquiv (k₀ : K) (hk : ∀ a : K, a = k₀) : Unit ≃ K :=
  Equiv.ofBijective (fun _ => k₀) ⟨fun _ _ _ => rfl, fun a => ⟨(), (hk a).symm⟩⟩

def coordEquiv (k₀ : K) (hk : ∀ a : K, a = k₀) {n : ℕ} (σ : ι k₀ ≃ Fin (n + 1)) :
    (Σ _ : Unit, Fin (n + 1)) ≃ (Σ k, ι k) :=
  Equiv.ofBijective (fun p => ⟨k₀, σ.symm p.2⟩) (by
    constructor
    · rintro ⟨⟨⟩, a⟩ ⟨⟨⟩, b⟩ h
      have h2 : σ.symm a = σ.symm b := by simpa using h
      rw [σ.symm.injective h2]
    · rintro ⟨k, i⟩
      obtain rfl := hk k
      exact ⟨⟨(), σ i⟩, by simp⟩)

variable (ι) in
theorem card_coords (k₀ : K) (hk : ∀ a : K, a = k₀) {n : ℕ} (σ : ι k₀ ≃ Fin (n + 1)) :
    Nat.card (Σ k, ι k) = n + 1 := by
  rw [← Nat.card_congr (coordEquiv k₀ hk σ)]
  simp

theorem card_blocks (k₀ : K) (hk : ∀ a : K, a = k₀) : Fintype.card K = 1 :=
  Fintype.card_eq_one_iff.2 ⟨k₀, hk⟩

variable (p : ℕ) [Fact p.Prime]

theorem span_eq_ker : (Ideal.span {C (p : ℤ)} : Ideal (MRing ι)) = RingHom.ker (Bridge.GeoNum.red (ι := ι) p) :=
  (Bridge.GeoNum.ker_red p).symm

theorem isPrime_span : (Ideal.span {C (p : ℤ)} : Ideal (MRing ι)).IsPrime := by
  rw [span_eq_ker]
  exact RingHom.ker_isPrime _

theorem isRelevant_span (k₀ : K) (hk : ∀ a : K, a = k₀) {n : ℕ} (σ : ι k₀ ≃ Fin (n + 1)) :
    IsRelevant (Ideal.span {C (p : ℤ)} : Ideal (MRing ι)) := by
  intro k
  obtain rfl := hk k
  refine ⟨σ.symm 0, ?_⟩
  rw [span_eq_ker, RingHom.mem_ker, Bridge.GeoNum.red, map_X]
  exact X_ne_zero _

theorem divSupp_bot (k₀ : K) (hk : ∀ a : K, a = k₀) {n : ℕ} (σ : ι k₀ ≃ Fin (n + 1)) :
    divSupp (⊥ : Ideal (MRing ι)) (C (p : ℤ)) = {Ideal.span {C (p : ℤ)}} := by
  have := isPrime_span (ι := ι) p
  ext W
  simp only [divSupp, bot_sup_eq, Ideal.minimalPrimes_eq_subsingleton_self, Set.mem_ofPred_eq,
    Set.mem_singleton_iff]
  constructor
  · exact fun h => h.1
  · rintro rfl
    exact ⟨rfl, isRelevant_span p k₀ hk σ⟩

theorem ringKrullDim_span (k₀ : K) (hk : ∀ a : K, a = k₀) {n : ℕ} (σ : ι k₀ ≃ Fin (n + 1)) :
    ringKrullDim (MRing ι ⧸ (Ideal.span {C (p : ℤ)} : Ideal (MRing ι))) =
      ((n + Fintype.card K : ℕ) : WithBot ℕ∞) := by
  rw [span_eq_ker, ringKrullDim_eq_of_ringEquiv
      (RingHom.quotientKerEquivOfSurjective (Bridge.GeoNum.red_surjective p)),
    MvPolynomial.ringKrullDim_of_isNoetherianRing, ringKrullDim_eq_zero_of_field, zero_add,
    ENat.card_eq_coe_natCard, card_coords ι k₀ hk σ, card_blocks k₀ hk]
  simp

theorem intNum_bot (k₀ : K) (hk : ∀ a : K, a = k₀) {n : ℕ} (σ : ι k₀ ≃ Fin (n + 1)) (a : K → ℤ) (ha : a k₀ = 1) :
    NumbersDVR.intNum (ZMod p) (⊥ : Ideal (NumbersDVR.MRing ι (ZMod p))) (fun _ : Fin n => a) = 1 := by
  have h := FieldNumbers.Relabel.intNum_map_rename (F := ZMod p) (blockEquiv k₀ hk)
    (coordEquiv k₀ hk σ) (fun _ => rfl)
    (⊥ : Ideal (NumbersDVR.MRing (FieldNumbers.ProjIdx n) (ZMod p))) (fun _ : Fin n => a)
  rw [Ideal.map_bot] at h
  rw [h]
  have hb : (fun _ : Fin n => a ∘ blockEquiv k₀ hk) = fun _ : Fin n => (1 : Unit → ℤ) := by
    funext _ u
    exact ha
  rw [hb]
  exact FieldNumbers.intNum_projectiveSpace (ZMod p) n

theorem geoNum_span (k₀ : K) (hk : ∀ a : K, a = k₀) {n : ℕ} (σ : ι k₀ ≃ Fin (n + 1)) (a : K → ℤ) (ha : a k₀ = 1) :
    geoNum n (Ideal.span {C (p : ℤ)} : Ideal (MRing ι)) (fun _ : Fin n => a) = 1 := by
  have hV : IsMultiProjPrime (Ideal.span {C (p : ℤ)} : Ideal (MRing ι)) :=
    ⟨isPrime_span p, ⟨{C (p : ℤ)}, fun f hf => ⟨0, by
      rw [Set.mem_singleton_iff.mp hf]
      exact Inter.Conservation.isMultiHomog_C _⟩, rfl⟩, isRelevant_span p k₀ hk σ⟩
  rw [← Bridge.intNum_map_eq_geoNum p n _ hV (Ideal.mem_span_singleton_self _) (ringKrullDim_span p k₀ hk σ)]
  have hb : (Ideal.span {C (p : ℤ)} : Ideal (MRing ι)).map
      (MvPolynomial.map (Int.castRingHom (ZMod p))) = ⊥ :=
    (Ideal.map_eq_bot_iff_le_ker _).mpr (span_eq_ker p).le
  rw [hb]
  exact intNum_bot p k₀ hk σ a ha

omit p in
theorem arithVar_bot (k₀ : K) (hk : ∀ a : K, a = k₀) {n : ℕ} (σ : ι k₀ ≃ Fin (n + 1)) :
    IsArithVar (⊥ : Ideal (MRing ι)) (n + 1) := by
  refine ⟨⟨k₀⟩, ⟨Ideal.isPrime_bot, ⟨∅, by simp, by simp⟩, fun k => ?_⟩, ?_, ?_⟩
  · obtain rfl := hk k
    refine ⟨σ.symm 0, ?_⟩
    rw [Ideal.mem_bot]
    exact X_ne_zero _
  · exact Ideal.comap_bot_of_injective _ (C_injective _ _)
  · rw [ringKrullDim_eq_of_ringEquiv (RingEquiv.quotientBot _),
      MvPolynomial.ringKrullDim_of_isNoetherianRing, IsPrincipalIdealRing.ringKrullDim_eq_one ℤ Int.not_isField,
      ENat.card_eq_coe_natCard, card_coords ι k₀ hk σ, card_blocks k₀ hk]
    push_cast
    exact add_comm _ _


omit p in
theorem ptsIntegral_bot (II : IntersectionSystem) (hII : IsIntersectionSystem II) (k₀ : K) (hk : ∀ a : K, a = k₀)
    {n : ℕ} (σ : ι k₀ ≃ Fin (n + 1)) (L : HermLine ι) (hL : IsSmoothHerm L) (ha : L.a k₀ = 1) :
    ptsIntegral (⊥ : Ideal (MRing ι)) (pot fun _ : Fin n => L) (fun _ => 1) = 1 := by
  have hP := arithVar_bot k₀ hk σ
  have : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩
  obtain ⟨h1, h2⟩ := (Inter.Conservation.proof : ConservationStatement) K ι (II K ι) (hII _ _) ⊥ n
    (fun _ => L) 2 hP (fun _ => hL) Nat.prime_two
  have hW : (Ideal.span {C ((2 : ℕ) : ℤ)} : Ideal (MRing ι)) ∈ divSupp (⊥ : Ideal (MRing ι)) (C ((2 : ℕ) : ℤ)) := by
    rw [divSupp_bot 2 k₀ hk σ]
    rfl
  have := isPrime_span (ι := ι) 2
  have hv : vertR (⊥ : Ideal (MRing ι)) (fun _ : Fin n => L) (C ((2 : ℕ) : ℤ)) = Real.log ((2 : ℕ) : ℝ) := by
    have hg : geoNum n (Ideal.span {C ((2 : ℕ) : ℤ)} : Ideal (MRing ι)) (fun j => ((fun _ : Fin n => L) j).a) = 1 :=
      geoNum_span 2 k₀ hk σ L.a ha
    unfold vertR
    rw [divSupp_bot 2 k₀ hk σ, finsum_mem_singleton, if_neg (Inter.Conservation.not_horizontal Nat.prime_two hW),
      Inter.Conservation.charOf_eq Nat.prime_two hW, bot_sup_eq, ReciprocityTheory.ChartRestriction.G.AI.I1.inh_multAt_self, hg]
    simp
  rw [h1, hv] at h2
  have hlog : Real.log ((2 : ℕ) : ℝ) ≠ 0 := (Real.log_pos (by norm_num)).ne'
  have h3 : Real.log ((2 : ℕ) : ℝ) * 1 =
      Real.log ((2 : ℕ) : ℝ) * ptsIntegral (⊥ : Ideal (MRing ι)) (pot fun _ : Fin n => L) (fun _ => 1) := by
    rw [mul_one]
    exact h2
  exact (mul_left_cancel₀ hlog h3).symm

end Proj

section First

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ} {K : Type} [Fintype K] [DecidableEq K]

theorem pPart_eq_bot (τ : Ψ) (h : 0 < N - 1) (k₀ : K) (hk : ∀ a : K, a = k₀) :
    PPart (fun _ : K => ((τ, ⟨0, h⟩) : FlBlock Ψ N)) = ⊥ := by
  set j : K → FlBlock Ψ N := fun _ => (τ, ⟨0, h⟩) with hj
  have hN : 0 < N := by omega
  let emb : (Σ k, PIdx j k) → Ψ × Fin N × Fin N := fun p => (τ, ⟨0, hN⟩, p.2.1 ⟨0, Nat.succ_pos _⟩)
  have hemb : Function.Injective emb := by
    rintro ⟨a, A⟩ ⟨b, B⟩ hab
    obtain rfl : a = b := (hk a).trans (hk b).symm
    have h3 : A.1 ⟨0, Nat.succ_pos _⟩ = B.1 ⟨0, Nat.succ_pos _⟩ := (Prod.ext_iff.1 (Prod.ext_iff.1 hab).2).2
    have hAB : A = B := by
      refine Subtype.ext (funext fun x => ?_)
      have hx : x = ⟨0, Nat.succ_pos _⟩ := Fin.ext (by have := x.2; simp [j] at this ⊢)
      rw [hx]
      exact h3
    rw [hAB]
  have hy : ∀ p, yPart j p = algebraMap (MvPolynomial (Ψ × Fin N × Fin N) ℚ) (ΩFl Ψ N) (X (emb p)) := by
    intro p
    unfold yPart yFl
    congr 1
    change Matrix.det (n := Fin 1) _ = _
    rw [Matrix.det_fin_one]
    rfl
  have hval : ∀ x : MRing (PIdx j), aeval (yPart j) x = algebraMap (MvPolynomial (Ψ × Fin N × Fin N) ℚ) (ΩFl Ψ N)
      (rename emb (map (Int.castRingHom ℚ) x)) := by
    intro x
    induction x using MvPolynomial.induction_on with
    | C a => simp
    | add f g hf hg => simp only [map_add (f := _), hf, hg]
    | mul_X f p hf => simp only [map_mul, hf, aeval_X, map_X, rename_X, hy]
  have hcomp : ∀ x : MRing (PIdx j), aeval (fun _ : K => (1 : ΩFl Ψ N)) (mConeMap (yPart j) x) = aeval (yPart j) x := by
    intro x
    induction x using MvPolynomial.induction_on with
    | C a => simp [mConeMap]
    | add f g hf hg => simp only [map_add (f := _), hf, hg]
    | mul_X f p hf => simp only [map_mul, hf]; simp [mConeMap]
  unfold PPart mCoordIdeal
  rw [← RingHom.injective_iff_ker_eq_bot]
  intro x y hxy
  have h1 := congrArg (aeval (fun _ : K => (1 : ΩFl Ψ N))) hxy
  rw [hcomp, hcomp, hval, hval] at h1
  have h2 := IsFractionRing.injective (MvPolynomial (Ψ × Fin N × Fin N) ℚ) (ΩFl Ψ N) h1
  exact map_injective _ (RingHom.injective_int _) (rename_injective _ hemb h2)

def incrOne (N : ℕ) : PlueckerData.Incr 1 N ≃ Fin N where
  toFun A := A.1 0
  invFun i := ⟨fun _ => i, Subsingleton.strictMono _⟩
  left_inv A := Subtype.ext (funext fun x => by rw [Subsingleton.elim x 0])
  right_inv _ := rfl

end First

theorem ptsIntegral_first : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (K : Type) [Fintype K] [DecidableEq K]
    (II : IntersectionSystem), IsFullIntersectionSystem II → ∀ k₀ : K, (∀ a : K, a = k₀) →
    ∀ j : K → FlBlock Ψ N, IsChain j →
      ptsIntegral (PPart j) (pot fun _ : Fin (N - 1) => unitLine j k₀) (fun _ => 1) = 1 := by
  intro Ψ _ _ N K _ _ II hII k₀ hk j hj
  obtain ⟨τ, h, rfl⟩ : ∃ (τ : Ψ) (h : 0 < N - 1), j = fun _ => ((τ, ⟨0, h⟩) : FlBlock Ψ N) := by
    have h : 0 < N - 1 := Nat.lt_of_le_of_lt (Nat.zero_le _) (j k₀).2.2
    refine ⟨(j k₀).1, h, ?_⟩
    obtain ⟨k, hk'⟩ := hj.down k₀ ((j k₀).1, ⟨0, h⟩) rfl (Nat.zero_le _)
    funext a
    rw [hk k] at hk'
    rw [hk a]
    exact hk'
  have hN : N - 1 + 1 = N := by omega
  rw [pPart_eq_bot τ h k₀ hk]
  refine ptsIntegral_bot II hII.1 k₀ hk (n := N - 1)
    ((incrOne N).trans (finCongr hN.symm)) _ (FlagHeightMultilinear.isSmoothHerm_fsHerm _) ?_
  simp [unitLine, fsHerm]

end GlobalTheory.CompanionTheory.Ar.Top.FlDeg.Base
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagChainUnitLogIntegral =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsBlockMapDrop =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsBlockMapDrop", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsChainFirst\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Top.FlDeg

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I4
open GroundTheory.Heights₂.Heights.LowerBoundFree

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ} {K : Type}

theorem isBlockMap_drop (j : K → FlBlock Ψ N) (k₀ : K) :
    IsBlockMap (Subtype.val : {k // k ≠ k₀} → K) (dropV j k₀) := by
  refine ⟨Subtype.val_injective, ?_, fun _ => rfl, ?_⟩
  · rintro ⟨⟨a, ha⟩, x⟩ ⟨⟨b, hb⟩, y⟩ h
    have h' : (⟨a, x⟩ : Σ k, PIdx j k) = ⟨b, y⟩ := h
    cases h'
    rfl
  · rintro ⟨k, x⟩ ⟨⟨k', hk⟩, rfl⟩
    exact ⟨⟨⟨k', hk⟩, x⟩, rfl⟩

theorem imageZ_drop [Fintype K] [DecidableEq K] (j : K → FlBlock Ψ N) (k₀ : K) :
    imageZ (dropV j k₀) (PPart j) = PPart (dropJ j k₀) := by
  have key : ∀ f : MRing (PIdx (dropJ j k₀)), mConeMap (yPart j) (rename (dropV j k₀) f) =
      rename Subtype.val (mConeMap (yPart (dropJ j k₀)) f) := by
    intro f
    induction f using MvPolynomial.induction_on with
    | C a => simp [mConeMap]
    | add p q hp hq => simp [hp, hq]
    | mul_X p n hp =>
      simp only [map_mul, hp, rename_X]
      congr 1
      simp [mConeMap, yPart, dropV, dropJ]
  ext f
  simp only [imageZ, PPart, mCoordIdeal, Ideal.mem_comap, RingHom.mem_ker]
  show mConeMap (yPart j) (rename (dropV j k₀) f) = 0 ↔ _
  rw [key]
  constructor
  · intro h
    exact rename_injective _ Subtype.val_injective (by rw [h, map_zero])
  · intro h
    have h' : mConeMap (yPart (dropJ j k₀)) f = 0 := h
    rw [h', map_zero]

end GlobalTheory.CompanionTheory.Ar.Top.FlDeg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsBlockMapDrop =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RhoCoeffGapDeltaOne =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RhoCoeffGapDeltaOne", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsChainFirst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.SwapLoc\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Top.FlDeg.CoeffDelta

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I4
open GroundTheory.Heights₂.Heights.LowerBoundFree GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top GlobalTheory.CompanionTheory.Ar.Top.FlDeg

theorem degree_prod_monic {σ ι : Type*} (m : MonomialOrder σ) (s : Finset ι)
    (P : ι → MvPolynomial σ ℝ) (d : ι → σ →₀ ℕ)
    (h : ∀ i ∈ s, m.degree (P i) = d i ∧ m.leadingCoeff (P i) = 1) :
    m.degree (∏ i ∈ s, P i) = ∑ i ∈ s, d i ∧ m.leadingCoeff (∏ i ∈ s, P i) = 1 := by
  classical
  induction s using Finset.induction_on with
  | empty => simp [m.degree_one]
  | insert a s has ih =>
    obtain ⟨ih1, ih2⟩ := ih fun i hi => h i (Finset.mem_insert_of_mem hi)
    obtain ⟨ha1, ha2⟩ := h a (Finset.mem_insert_self a s)
    have hne : ∀ f : MvPolynomial σ ℝ, m.leadingCoeff f = 1 → f ≠ 0 := fun f hf =>
      m.leadingCoeff_ne_zero_iff.mp (by rw [hf]; exact one_ne_zero)
    rw [Finset.prod_insert has, Finset.sum_insert has,
      m.degree_mul (hne _ ha2) (hne _ ih2), m.leadingCoeff_mul, ha1, ih1, ha2, ih2]
    simp

theorem lex_sum_Ico {σ : Type*} [LinearOrder σ] [WellFoundedGT σ] {n : ℕ} (v : Fin n → σ)
    (hv : StrictMono v) {a b : Fin n} (hab : a < b) :
    (MonomialOrder.lex : MonomialOrder σ).degree (∑ s ∈ Finset.Ico a b, (X (v s) : MvPolynomial σ ℝ))
        = Finsupp.single (v a) 1 ∧
      (MonomialOrder.lex : MonomialOrder σ).leadingCoeff
        (∑ s ∈ Finset.Ico a b, (X (v s) : MvPolynomial σ ℝ)) = 1 := by
  have hlt : ∀ s, a < s → (MonomialOrder.lex : MonomialOrder σ).toSyn (Finsupp.single (v s) 1) <
      (MonomialOrder.lex : MonomialOrder σ).toSyn (Finsupp.single (v a) 1) := fun s hs =>
    MonomialOrder.lex_lt_iff.mpr (Finsupp.Lex.single_strictAnti (hv hs))
  have hzero : (MonomialOrder.lex : MonomialOrder σ).toSyn 0 <
      (MonomialOrder.lex : MonomialOrder σ).toSyn (Finsupp.single (v a) 1) := by
    rw [map_zero, ← MonomialOrder.bot_eq_zero]
    refine bot_lt_iff_ne_bot.mpr fun h => ?_
    rw [MonomialOrder.bot_eq_zero] at h
    have h0 := (MonomialOrder.lex : MonomialOrder σ).toSyn.injective (h.trans (map_zero _).symm)
    simp at h0
  have hdegX : (MonomialOrder.lex : MonomialOrder σ).degree (X (v a) : MvPolynomial σ ℝ)
      = Finsupp.single (v a) 1 := MonomialOrder.degree_X
  have hrest : (MonomialOrder.lex : MonomialOrder σ).toSyn
      ((MonomialOrder.lex : MonomialOrder σ).degree
        (∑ s ∈ Finset.Ioo a b, (X (v s) : MvPolynomial σ ℝ))) <
      (MonomialOrder.lex : MonomialOrder σ).toSyn
        ((MonomialOrder.lex : MonomialOrder σ).degree (X (v a) : MvPolynomial σ ℝ)) := by
    rw [hdegX, MonomialOrder.degree_lt_iff hzero]
    intro c hc
    obtain ⟨s, hs, hcs⟩ := Finset.mem_biUnion.mp (MvPolynomial.support_sum hc)
    rw [X, support_monomial, if_neg one_ne_zero, Finset.mem_singleton] at hcs
    rw [hcs]
    exact hlt s (Finset.mem_Ioo.mp hs).1
  rw [← Finset.Ioo_insert_left hab, Finset.sum_insert (by simp)]
  refine ⟨?_, ?_⟩
  · rw [MonomialOrder.degree_add_of_lt hrest, hdegX]
  · rw [MonomialOrder.leadingCoeff_add_of_lt hrest, MonomialOrder.leadingCoeff_X]

end GlobalTheory.CompanionTheory.Ar.Top.FlDeg.CoeffDelta

namespace GlobalTheory.CompanionTheory.Ar.Top.FlDeg

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I4
open GroundTheory.Heights₂.Heights.LowerBoundFree GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top GlobalTheory.CompanionTheory.Ar.Top.FlDeg

theorem rhoM_eq_sum (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) :
    (∑ τ : Ψ, ∑ a : Fin N, ∑ _b ∈ Finset.Ioi a, Finsupp.single (τ, a) 1 : (Ψ × Fin N) →₀ ℕ)
      = rhoM Ψ N := by
  ext ⟨τ, a⟩
  simp only [Finset.sum_apply', Finsupp.single_apply, Prod.mk.injEq]
  rw [Finset.sum_eq_single τ, Finset.sum_eq_single a]
  · simp [rhoM, Fin.card_Ioi]
  · intro b _ hb; simp [hb]
  · simp
  · intro τ' _ h; simp [h]
  · simp

theorem coeff_rhoM_gapDelta (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) :
    AddMonoidAlgebra.coeff (gapDelta Ψ N) (rhoM Ψ N) = 1 := by
  let e := Fintype.equivFin Ψ
  letI : LinearOrder (Ψ × Fin N) :=
    LinearOrder.lift' (fun p => toLex (e p.1, p.2)) (fun p q h => by
      have h' : (e p.1, p.2) = (e q.1, q.2) := toLex.injective h
      obtain ⟨h1, h2⟩ := Prod.mk.inj h'
      exact Prod.ext (e.injective h1) h2)
  haveI : WellFoundedGT (Ψ × Fin N) := Finite.to_wellFoundedGT
  have hv : ∀ τ : Ψ, StrictMono (fun s : Fin N => (τ, s)) := fun τ s t hst => by
    show toLex (e τ, s) < toLex (e τ, t)
    exact Prod.Lex.toLex_lt_toLex.mpr (Or.inr ⟨rfl, hst⟩)
  have key := CoeffDelta.degree_prod_monic (MonomialOrder.lex : MonomialOrder (Ψ × Fin N))
    Finset.univ
    (fun τ : Ψ => ∏ a : Fin N, ∏ b ∈ Finset.Ioi a, ∑ s ∈ Finset.Ico a b, (X (τ, s) : MvPolynomial _ ℝ))
    (fun τ => ∑ a : Fin N, ∑ _b ∈ Finset.Ioi a, Finsupp.single (τ, a) 1)
    (fun τ _ => CoeffDelta.degree_prod_monic _ Finset.univ _ _ fun a _ =>
      CoeffDelta.degree_prod_monic _ _ _ _ fun b hb =>
        CoeffDelta.lex_sum_Ico (fun s => (τ, s)) (hv τ) (Finset.mem_Ioi.mp hb))
  have h2 := key.2
  rw [MonomialOrder.leadingCoeff, key.1, rhoM_eq_sum] at h2
  exact h2

end GlobalTheory.CompanionTheory.Ar.Top.FlDeg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RhoCoeffGapDeltaOne =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RhoFactorialProductEq =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RhoFactorialProductEq", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsChainFirst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.SwapLoc\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.Ar.Top.FlDeg

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I4
open GroundTheory.Heights₂.Heights.LowerBoundFree GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top

theorem prod_range_sub_eq_factorial (i n : ℕ) :
    ∏ k ∈ Finset.range n, (if i < k then ((k : ℝ) - (i : ℝ)) else 1) = (((n - 1 - i).factorial : ℕ) : ℝ) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Finset.prod_range_succ, ih]
    by_cases h : i < n
    · obtain ⟨t, rfl⟩ : ∃ t, n = i + 1 + t := ⟨n - (i + 1), by omega⟩
      have e1 : i + 1 + t - 1 - i = t := by omega
      have e2 : i + 1 + t + 1 - 1 - i = t + 1 := by omega
      rw [if_pos h, e1, e2, Nat.factorial_succ]
      push_cast
      ring
    · have e1 : n - 1 - i = 0 := by omega
      have e2 : n + 1 - 1 - i = 0 := by omega
      rw [if_neg h, e1, e2]
      simp

theorem prod_rhoM_factorial (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) :
    ∏ p, (((rhoM Ψ N) p).factorial : ℝ) =
      ∏ _τ : Ψ, ∏ i : Fin N, ∏ k : Fin N, (if i < k then ((k : ℝ) - (i : ℝ)) else 1) := by
  rw [Fintype.prod_prod_type]
  refine Finset.prod_congr rfl fun τ _ => Finset.prod_congr rfl fun i _ => ?_
  have h := prod_range_sub_eq_factorial (i : ℕ) N
  rw [← Fin.prod_univ_eq_prod_range (fun k => if (i : ℕ) < k then ((k : ℝ) - ((i : ℕ) : ℝ)) else 1) N] at h
  have hr : (rhoM Ψ N) (τ, i) = N - 1 - (i : ℕ) := rfl
  rw [hr, ← h]
  refine Finset.prod_congr rfl fun k _ => ?_
  simp only [Fin.lt_def]

end GlobalTheory.CompanionTheory.Ar.Top.FlDeg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RhoFactorialProductEq =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.SymmetricFormPolynomialCoeff =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.SymmetricFormPolynomialCoeff", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.PairRelationOfScaledRatio\npublic import Mathlib.Tactic.Continuity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.GroupTheory.Perm.DomMulAct\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Data.Fintype.Perm\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Top.FlDeg.CoeffSym

open MvPolynomial Finset

variable {σ : Type} [Fintype σ] [DecidableEq σ] {n : ℕ}

def letterCount (w : Fin n → σ) : σ →₀ ℕ :=
  Finsupp.equivFunOnFinite.symm fun p => (univ.filter fun r => w r = p).card

theorem letterCount_apply (w : Fin n → σ) (p : σ) :
    letterCount w p = (univ.filter fun r => w r = p).card := rfl

theorem prod_X_eq_monomial (w : Fin n → σ) :
    (∏ j, (X (w j) : MvPolynomial σ ℝ)) = monomial (letterCount w) 1 := by
  rw [MvPolynomial.monomial_eq, map_one, one_mul, Finsupp.prod_fintype _ _ (fun _ => pow_zero _),
    ← Finset.prod_fiberwise univ w]
  refine Finset.prod_congr rfl fun p _ => ?_
  rw [Finset.prod_congr rfl (g := fun _ => (X p : MvPolynomial σ ℝ))
    (fun j hj => by rw [(Finset.mem_filter.1 hj).2])]
  simp [letterCount_apply]

theorem letterCount_comp (w : Fin n → σ) (π : Equiv.Perm (Fin n)) :
    letterCount (w ∘ π) = letterCount w := by
  ext p
  rw [letterCount_apply, letterCount_apply]
  exact Finset.card_equiv π (fun r => by simp)

theorem exists_perm_of_letterCount_eq (w w₀ : Fin n → σ) (h : letterCount w = letterCount w₀) :
    ∃ π : Equiv.Perm (Fin n), w₀ ∘ π = w := by
  have e : ∀ p, {r // w r = p} ≃ {r // w₀ r = p} := fun p => Fintype.equivOfCardEq (by
    rw [Fintype.card_subtype, Fintype.card_subtype]
    exact DFunLike.congr_fun h p)
  exact ⟨Equiv.ofFiberEquiv e, funext fun r => Equiv.ofFiberEquiv_map e r⟩

theorem card_letterCount_mul (w₀ : Fin n → σ) :
    (univ.filter fun w : Fin n → σ => letterCount w = letterCount w₀).card *
      ∏ p, (letterCount w₀ p).factorial = n.factorial := by
  have hst : Fintype.card {g : Equiv.Perm (Fin n) // w₀ ∘ g = w₀} =
      ∏ p, (letterCount w₀ p).factorial := by
    rw [DomMulAct.stabilizer_card]
    exact Finset.prod_congr rfl fun p _ => by rw [Fintype.card_subtype, letterCount_apply]
  have hcard : (univ : Finset (Equiv.Perm (Fin n))).card = n.factorial := by
    simp [Finset.card_univ, Fintype.card_perm]
  have hfib : ∀ w ∈ univ.filter (fun w : Fin n → σ => letterCount w = letterCount w₀),
      (univ.filter fun π : Equiv.Perm (Fin n) => w₀ ∘ π = w).card =
        Fintype.card {g : Equiv.Perm (Fin n) // w₀ ∘ g = w₀} := by
    intro w hw
    obtain ⟨π₀, rfl⟩ := exists_perm_of_letterCount_eq w w₀ (Finset.mem_filter.1 hw).2
    rw [← Fintype.card_subtype]
    refine Fintype.card_congr (Equiv.subtypeEquiv (Equiv.mulRight π₀⁻¹) fun g => ?_)
    constructor
    · intro h
      funext r
      have := congrFun h (π₀⁻¹ r)
      simpa using this
    · intro h
      funext r
      have := congrFun h (π₀ r)
      simpa using this
  rw [← hst, ← hcard, Finset.card_eq_sum_card_fiberwise (s := univ)
    (f := fun π : Equiv.Perm (Fin n) => w₀ ∘ π)
    (t := univ.filter fun w : Fin n → σ => letterCount w = letterCount w₀)
    (fun π _ => by simp [letterCount_comp]), Finset.sum_congr rfl hfib, Finset.sum_const, smul_eq_mul]

theorem coeff_formPoly_mul (σ : Type) [Fintype σ] [DecidableEq σ] (n : ℕ) (a : (Fin n → σ) → ℝ)
    (hsym : ∀ (π : Equiv.Perm (Fin n)) (w : Fin n → σ), a (w ∘ π) = a w) (w₀ : Fin n → σ) (m : σ →₀ ℕ)
    (hm : ∀ p, m p = (Finset.univ.filter fun r => w₀ r = p).card) :
    AddMonoidAlgebra.coeff (PB.formPoly n a) m * ∏ p, ((m p).factorial : ℝ) = (n.factorial : ℝ) * a w₀ := by
  obtain rfl : m = letterCount w₀ := Finsupp.ext fun p => by rw [hm, letterCount_apply]
  have hc : AddMonoidAlgebra.coeff (PB.formPoly n a) (letterCount w₀) =
      ((univ.filter fun w : Fin n → σ => letterCount w = letterCount w₀).card : ℝ) * a w₀ := by
    unfold PB.formPoly
    rw [coeff_sum, ← nsmul_eq_mul, ← Finset.sum_const, Finset.sum_filter]
    refine Finset.sum_congr rfl fun w _ => ?_
    rw [prod_X_eq_monomial, coeff_C_mul, coeff_monomial]
    by_cases h : letterCount w = letterCount w₀
    · obtain ⟨π, rfl⟩ := exists_perm_of_letterCount_eq w w₀ h
      simp [letterCount_comp, hsym]
    · simp [h]
  rw [hc, ← card_letterCount_mul w₀]
  push_cast
  ring

end GlobalTheory.CompanionTheory.Ar.Top.FlDeg.CoeffSym
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.SymmetricFormPolynomialCoeff =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.WeightGapDeltaEqAntisymmetric =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.WeightGapDeltaEqAntisymmetric", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsChainFirst\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.PairRelationOfScaledRatio\npublic import GroundTheory.HeightsAndTheta.Heights.Antisymmetric.Statements\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.SwapLoc\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Top.FlDeg

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I4
open GroundTheory.Heights₂.Heights.LowerBoundFree GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top

def xAt {Ψ : Type} {N : ℕ} (τ : Ψ) (i : ℕ) : MvPolynomial (Ψ × Fin N) ℝ :=
  if h : i < N then X (τ, ⟨i, h⟩) else 0

theorem xAt_val {Ψ : Type} {N : ℕ} (τ : Ψ) (a : Fin N) :
    (xAt τ (a : ℕ) : MvPolynomial (Ψ × Fin N) ℝ) = X (τ, a) := by
  simp [xAt]

theorem gapX_eq_xAt_sub {Ψ : Type} {N : ℕ} (τ : Ψ) (s : Fin N) :
    PB.gapX (τ, s) = xAt τ (s : ℕ) - xAt τ ((s : ℕ) + 1) := by
  simp [PB.gapX, xAt]

theorem sum_gapX_Ico {Ψ : Type} {N : ℕ} (τ : Ψ) {a b : Fin N} (hab : a ≤ b) :
    ∑ s ∈ Finset.Ico a b, PB.gapX (τ, s) = X (τ, a) - X (τ, b) := by
  have h1 : ∑ s ∈ Finset.Ico a b, PB.gapX (τ, s)
      = ∑ i ∈ Finset.Ico (a : ℕ) (b : ℕ),
          ((xAt τ i : MvPolynomial (Ψ × Fin N) ℝ) - xAt τ (i + 1)) := by
    rw [← Fin.map_valEmbedding_Ico, Finset.sum_map]
    exact Finset.sum_congr rfl fun s _ => gapX_eq_xAt_sub τ s
  have hle : (a : ℕ) ≤ b := hab
  have h2 : ∀ n : ℕ, ∑ i ∈ Finset.Ico (a : ℕ) ((a : ℕ) + n),
      ((xAt τ i : MvPolynomial (Ψ × Fin N) ℝ) - xAt τ (i + 1))
        = xAt τ (a : ℕ) - xAt τ ((a : ℕ) + n) := by
    intro n
    induction n with
    | zero => simp
    | succ n ih =>
      rw [← add_assoc, Finset.sum_Ico_succ_top (Nat.le_add_right _ _), ih]
      ring
  obtain ⟨n, hn⟩ := Nat.exists_eq_add_of_le hle
  rw [h1, hn, h2, ← hn, xAt_val, xAt_val]

theorem toWt_gapDelta_eq_antisymDelta (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) :
    PB.toWt (gapDelta Ψ N) = GroundTheory.Heights₂.Heights.antisymDelta Ψ N := by
  unfold gapDelta GroundTheory.Heights₂.Heights.antisymDelta

  simp only [map_prod, map_sum]
  refine Finset.prod_congr rfl fun τ _ => Finset.prod_congr rfl fun a _ =>
    Finset.prod_congr rfl fun b hb => ?_
  have hab : a ≤ b := (Finset.mem_Ioi.1 hb).le
  rw [← sum_gapX_Ico τ hab]
  refine Finset.sum_congr rfl fun s _ => ?_
  simp [PB.toWt]

end GlobalTheory.CompanionTheory.Ar.Top.FlDeg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.WeightGapDeltaEqAntisymmetric =====

-- ===== clump member: Development.WeilBound.CoreStatements.IntegralPointHeights.NegativeIntegralPoints.FlDegFree =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.IntegralPointHeights.NegativeIntegralPoints.FlDegFree", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsChainFirst\npublic import Development.AutomorphicSpectrum.Statements.MetricStatements.AgreementIffGuarded\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.IsFieldIntersection\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FieldIntersectionLinearDegreeOne\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagChainArithVariety\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagChainUnitLogIntegral\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeWeightFormula\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.GenericFibreLinearEquations\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsBlockMapDrop\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LogIntegralMultilinear\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RhoCoeffGapDeltaOne\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RhoFactorialProductEq\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.PairRelationOfScaledRatio\npublic import Mathlib.Tactic.Continuity\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.SymmetricFormPolynomialCoeff\npublic import GroundTheory.HeightsAndTheta.Heights.Antisymmetric.Statements\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.WeightGapDeltaEqAntisymmetric\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.WeightMapInjective\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.IsPeriodOn\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagAnalyticDataUniformised\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagCoverDegreeOneRealisation\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagHeightPolynomialWeightForm\npublic import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FlagIndices.InstFintypeFlIdx\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagVarietyArithmetic\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagVarietyBoundaryDimensionDrop\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagVarietyModelBaseMetric\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.MetricsProjectionFormulaNef\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.RealisationPotentialDegreeCompatibility\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.SamePotBlock\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.UniformisedDegreePolynomialAntisymmetric\npublic import Development.WeilBound.CoreStatements.PluriharmonicCharts.XCFlAn\npublic import GroundTheory.HeightsAndTheta.Heights.OrbitLimits.ExistsUnique\npublic import GroundTheory.HeightsAndTheta.Heights.OrbitLimits.PLiftGraphFactor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Presheaf\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.IndefiniteRowSideFullHecke.FlDegC

open GlobalTheory.CompanionTheory.Ar.Top GlobalTheory.CompanionTheory.Ar.Top.FlDeg
open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I4
open GroundTheory.Heights₂.Heights.LowerBoundFree

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ} {K : Type}

theorem arith [Fintype K] [Nonempty K] (j : K → FlBlock Ψ N) (hj : IsChain j) :
    IsArithVar (PPart j) (cellDim j + 1) := _root_.GlobalTheory.CompanionTheory.Ar.Top.FlDeg.isArithVar_pPart Ψ N K j hj

theorem fibreLin [Fintype K] [DecidableEq K] (j : K → FlBlock Ψ N) (hj : IsChain j) (k₀ : K)
    (hmax : ∀ k, ((j k).2 : ℕ) ≤ (j k₀).2) (hne : ∃ k, k ≠ k₀) :
    ∃ G : GenFibre (dropV j k₀) (PPart j), ∃ S : Set (MRingOver G.Φ (fibreIdx (PIdx j) (Subtype.val : {k // k ≠ k₀} → K))),
      (∀ f ∈ S, IsMultiHomog f fun _ => 1) ∧ fibreIdeal (Subtype.val : {k // k ≠ k₀} → K) G = Ideal.span S :=
  _root_.GlobalTheory.CompanionTheory.Ar.Top.FlDeg.FibreLin.fibre_lin Ψ N K j hj k₀ hmax hne

theorem linDeg {F : Type} [Field F] {K : Type} [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (k₀ : K)
    (hK : ∀ a : K, a = k₀) (J : IFamily F ι) (hJ : IsFieldIntersection J) (S : Set (MRingOver F ι))
    (hS : ∀ f ∈ S, IsMultiHomog f fun _ => 1) (r : ℕ) (hV : IsProjVarF (Ideal.span S) r) :
    J (Ideal.span S) r (fun _ _ => 1) = 1 := _root_.GlobalTheory.CompanionTheory.Ar.Top.FlDeg.linear_subspace_degree_one F K ι k₀ hK J hJ S hS r hV

theorem base (II : IntersectionSystem) (hII : IsFullIntersectionSystem II) [Fintype K] [DecidableEq K] (k₀ : K)
    (hK : ∀ a : K, a = k₀) (j : K → FlBlock Ψ N) (hj : IsChain j) :
    ptsIntegral (PPart j) (pot fun _ : Fin (N - 1) => unitLine j k₀) (fun _ => 1) = 1 :=
  _root_.GlobalTheory.CompanionTheory.Ar.Top.FlDeg.Base.ptsIntegral_first Ψ N K II hII k₀ hK j hj

theorem coeff_formPoly_sym {σ : Type} [Fintype σ] [DecidableEq σ] (n : ℕ) (a : (Fin n → σ) → ℝ)
    (hsym : ∀ (π : Equiv.Perm (Fin n)) (w : Fin n → σ), a (w ∘ π) = a w) (w₀ : Fin n → σ) (m : σ →₀ ℕ)
    (hm : ∀ p, m p = (Finset.univ.filter fun r => w₀ r = p).card) :
    AddMonoidAlgebra.coeff (PB.formPoly n a) m * ∏ p, ((m p).factorial : ℝ) = (n.factorial : ℝ) * a w₀ :=
  _root_.GlobalTheory.CompanionTheory.Ar.Top.FlDeg.CoeffSym.coeff_formPoly_mul σ n a hsym w₀ m hm

theorem fsHerm_smooth {K : Type} [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (a : K → ℤ) :
    IsSmoothHerm (fsHerm ι a) := by
  refine ContDiffOn.congr (GroundTheory.Heights₂.Heights.Targets.LiftGraphFactor.isSmoothHerm_fsLineZ (ι := ι) a) ?_
  intro z _
  show refNorm a z = ∏ k, GroundTheory.Heights₂.Heights.Targets.LiftGraphFactor.blkNorm z k ^ a k
  unfold refNorm GroundTheory.Heights₂.Heights.Targets.LiftGraphFactor.blkNorm
  refine Finset.prod_congr rfl fun k _ => ?_
  have h0 : 0 ≤ ∑ i, ‖z ⟨k, i⟩‖ ^ 2 := Finset.sum_nonneg fun _ _ => by positivity
  rw [← sq_rpow_half (Real.sqrt_nonneg _), Real.sq_sqrt h0]

theorem constLine_smooth {K : Type} [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] :
    IsSmoothHerm (constLine ι) := by
  show ContDiffOn ℝ _ (fun _ => Real.exp (-(-1))) _
  exact contDiffOn_const

theorem ptsIntegral_neg_one {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] (P : Ideal (MRing ι)) {e : ℕ}
    (φ : Fin e → ((Σ k, ι k) → ℂ) → ℝ) :
    ptsIntegral P φ (fun _ => -1) = -ptsIntegral P φ (fun _ => 1) := by
  classical
  unfold ptsIntegral
  split_ifs with h
  · simp only [ptsIntegralAt]
    rw [← MeasureTheory.integral_neg]
    refine MeasureTheory.integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
    show ∑ᶠ w ∈ fibre P h.choose y, sheetDensity P h.choose φ (fun _ => -1) y w =
      -∑ᶠ w ∈ fibre P h.choose y, sheetDensity P h.choose φ (fun _ => 1) y w
    rw [← finsum_neg_distrib]
    refine finsum_congr fun w => ?_
    rw [← finsum_neg_distrib]
    refine finsum_congr fun _ => ?_
    unfold sheetDensity
    split_ifs <;> simp
  · simp

theorem tie (II : IntersectionSystem) (hII : IsIntersectionSystem II) {K : Type} [Fintype K] {ι : K → Type}
    [∀ k, Fintype (ι k)] (P : Ideal (MRing ι)) (e : ℕ) (L : Fin e → HermLine ι) (hP : IsArithVar P (e + 1))
    (hL : ∀ j, IsSmoothHerm (L j)) :
    II K ι P (e + 1) (Fin.cons (constLine ι) L) = ptsIntegral P (pot L) (fun _ => 1) := by
  obtain ⟨hs, -, hR⟩ := hII K ι
  have hT := constLine_smooth ι
  have hsm : ∀ i, IsSmoothHerm ((Fin.snoc L (constLine ι) : Fin (e + 1) → HermLine ι) i) := by
    intro i
    refine Fin.lastCases ?_ (fun i => ?_) i
    · simpa using hT
    · simpa using hL i
  have h1 : (1 : MRing ι) ∉ P := fun h => hP.2.1.1.ne_top ((Ideal.eq_top_iff_one P).2 h)
  have hsec := hR P e L (constLine ι) 1 (fun _ => 0) hP hL hT (fun k => by simp [constLine, HermLine.ofWeight])
    (fun m hm k => by
      classical
      have : m = 0 := by
        by_contra h0
        simp [MvPolynomial.support_one, h0] at hm
      simp [this]) h1
  have hperm := hs P (e + 1) (Fin.snoc L (constLine ι)) (finRotate (e + 1)).symm hP hsm
  have hc : (Fin.snoc L (constLine ι) : Fin (e + 1) → HermLine ι) ∘ (finRotate (e + 1)).symm =
      (Fin.cons (constLine ι) L : Fin (e + 1) → HermLine ι) := by
    rw [Fin.snoc_eq_cons_rotate]
    funext i
    simp
  rw [hc] at hperm
  rw [hperm, hsec]
  have hd : divSupp P (1 : MRing ι) = ∅ := by
    ext W
    simp only [divSupp, Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false, not_and]
    intro hW
    have : (P ⊔ Ideal.span {(1 : MRing ι)}) = ⊤ := by simp
    rw [this] at hW
    exact absurd (hW.1.2 ) (by
      intro h
      exact hW.1.1.ne_top (top_le_iff.1 h))
  have hlog : logNorm (constLine ι) (1 : MRing ι) = fun _ => -1 := by
    funext z
    simp [logNorm, constLine, HermLine.ofWeight]
  have hz : recR (II K ι) P L (constLine ι) 1 = -arInt P 1 (constLine ι) L := by
    unfold recR
    rw [hd]
    simp
  rw [hz]
  unfold arInt
  rw [hlog]
  show -ptsIntegral P (pot L) (fun _ => -1) = _
  rw [ptsIntegral_neg_one, neg_neg]

theorem unitLine_smooth [Fintype K] [DecidableEq K] (j : K → FlBlock Ψ N) (k : K) : IsSmoothHerm (unitLine j k) :=
  fsHerm_smooth _ _

theorem isPull_unit [Fintype K] [DecidableEq K] (j : K → FlBlock Ψ N) (k₀ : K) (k : {k // k ≠ k₀}) :
    IsPullHerm (Subtype.val : {k // k ≠ k₀} → K) (dropV j k₀) (unitLine (dropJ j k₀) k) (unitLine j k.1) := by
  constructor
  · funext k'
    show (if k' = k.1 then (1 : ℤ) else 0) = Function.extend _ _ _ k'
    by_cases h : k' = k₀
    · subst h
      rw [Function.extend_apply' _ _ _ (by rintro ⟨x, hx⟩; exact x.2 hx), if_neg (Ne.symm k.2)]
      rfl
    · rw [show k' = ((⟨k', h⟩ : {k // k ≠ k₀}) : K) from rfl, Subtype.val_injective.extend_apply]
      show _ = if (⟨k', h⟩ : {k // k ≠ k₀}) = k then (1 : ℤ) else 0
      simp only [Subtype.ext_iff]
  · intro z
    have h1 := GlobalTheory.CompanionTheory.Ar.PB.FA.BlockPot.refNorm_block (isBlockMap_drop j k₀)
      (a := fun k' => if k' = k.1 then (1 : ℤ) else 0) (by
      intro k' hk'
      have : k' ≠ k.1 := fun h => hk' ⟨k, h.symm⟩
      simp [this]) z
    have h2 : (fun k' : {k // k ≠ k₀} => if k'.1 = k.1 then (1 : ℤ) else 0) = fun k' => if k' = k then 1 else 0 := by
      funext k'
      simp [Subtype.ext_iff]
    rw [h2] at h1
    exact h1

theorem isPull_const [Fintype K] [DecidableEq K] (j : K → FlBlock Ψ N) (k₀ : K) :
    IsPullHerm (Subtype.val : {k // k ≠ k₀} → K) (dropV j k₀) (constLine (PIdx (dropJ j k₀))) (constLine (PIdx j)) := by
  constructor
  · funext k'
    show (0 : ℤ) = Function.extend _ _ _ k'
    by_cases h : k' ∈ Set.range (Subtype.val : {k // k ≠ k₀} → K)
    · obtain ⟨x, rfl⟩ := h
      rw [Subtype.val_injective.extend_apply]
      rfl
    · rw [Function.extend_apply' _ _ _ (by simpa using h)]
      rfl
  · intro _
    rfl

theorem cellDim_drop [Fintype K] [DecidableEq K] (j : K → FlBlock Ψ N) (k₀ : K) :
    cellDim j = cellDim (dropJ j k₀) + (N - 1 - ((j k₀).2 : ℕ)) := by
  unfold cellDim dropJ
  rw [Fintype.sum_eq_add_sum_subtype_ne _ k₀, add_comm]

theorem isChain_drop (j : K → FlBlock Ψ N) (hj : IsChain j) (k₀ : K) (hmax : ∀ k, ((j k).2 : ℕ) ≤ (j k₀).2) :
    IsChain (dropJ j k₀) := by
  refine ⟨fun a b h => Subtype.ext (hj.inj h), fun k q h1 h2 => ?_⟩
  obtain ⟨k', rfl⟩ := hj.down k.1 q h1 h2
  have hne : k' ≠ k₀ := by
    rintro rfl
    apply k.2
    apply hj.inj
    have e : ((j k.1).2 : ℕ) = (j k').2 := le_antisymm (hmax _) h2
    exact Prod.ext h1.symm (Fin.ext e)
  exact ⟨⟨k', hne⟩, rfl⟩

theorem append_cons_eq {α : Type*} {a b : ℕ} (x : α) (u : Fin a → α) (v : Fin b → α) :
    (Fin.append (Fin.cons x u : Fin (a + 1) → α) v) =
      (Fin.cons x (Fin.append u v) : Fin (a + b + 1) → α) ∘ Fin.cast (by omega) := by
  funext i
  refine Fin.addCases (fun i => ?_) (fun i => ?_) i
  · rw [Fin.append_left]
    refine Fin.cases ?_ (fun i => ?_) i
    · have : Fin.cast (by omega : a + 1 + b = a + b + 1) (Fin.castAdd b (0 : Fin (a + 1))) = 0 := by
        ext; simp
      simp [this]
    · have : Fin.cast (by omega : a + 1 + b = a + b + 1) (Fin.castAdd b i.succ) = ((Fin.castAdd b i).succ) := by
        ext; simp
      simp only [Function.comp_apply, this, Fin.cons_succ, Fin.append_left]
  · have : Fin.cast (by omega : a + 1 + b = a + b + 1) (Fin.natAdd (a + 1) i) = ((Fin.natAdd a i).succ) := by
      ext; simp; omega
    simp only [Fin.append_right, Function.comp_apply, this, Fin.cons_succ]

theorem step (hIn : PB.Inputs) (II : IntersectionSystem) (hII : IsFullIntersectionSystem II) [Fintype K] [DecidableEq K]
    (j : K → FlBlock Ψ N) (hj : IsChain j) (k₀ : K) (hmax : ∀ k, ((j k).2 : ℕ) ≤ (j k₀).2) (hne : ∃ k, k ≠ k₀)
    (e₀ : ℕ) (w₀ : Fin e₀ → {k // k ≠ k₀}) (r : ℕ) (he : e₀ = cellDim (dropJ j k₀)) (hr : r = N - 1 - ((j k₀).2 : ℕ)) :
    ptsIntegral (PPart j) (pot (Fin.append (fun i => unitLine j (w₀ i).1) (fun _ : Fin r => unitLine j k₀)))
        (fun _ => 1) =
      ptsIntegral (PPart (dropJ j k₀)) (pot fun i => unitLine (dropJ j k₀) (w₀ i)) (fun _ => 1) := by
  classical
  have hc₀ := isChain_drop j hj k₀ hmax
  obtain ⟨k₁, hk₁⟩ := hne
  haveI : Nonempty {k // k ≠ k₀} := ⟨⟨k₁, hk₁⟩⟩
  haveI : Nonempty K := ⟨k₀⟩
  have hA₀ : IsArithVar (PPart (dropJ j k₀)) (e₀ + 1) := he ▸ arith _ hc₀
  have hAe : IsArithVar (PPart j) (e₀ + r + 1) := by
    have := arith j hj
    rwa [cellDim_drop j k₀, ← he, ← hr] at this
  have hA : IsArithVar (PPart j) (e₀ + 1 + r) := by
    rw [show e₀ + 1 + r = e₀ + r + 1 by omega]; exact hAe
  have hImg := imageZ_drop j k₀
  have hB := isBlockMap_drop j k₀
  obtain ⟨G, S, hS, hG⟩ := fibreLin j hj k₀ hmax ⟨k₁, hk₁⟩
  obtain ⟨J, hJ, -⟩ := GroundTheory.Heights₂.Heights.Targets.ExistsUnique.full G.Φ
    (fibreIdx (PIdx j) (Subtype.val : {k // k ≠ k₀} → K))
  have hsm₀ : ∀ i, IsSmoothHerm ((Fin.cons (constLine _) (fun i => unitLine (dropJ j k₀) (w₀ i)) :
      Fin (e₀ + 1) → HermLine (PIdx (dropJ j k₀))) i) := by
    intro i
    refine Fin.cases ?_ (fun i => ?_) i
    · simpa using constLine_smooth _
    · simpa using unitLine_smooth _ _
  have hpl : ∀ i, IsPullHerm (Subtype.val : {k // k ≠ k₀} → K) (dropV j k₀)
      ((Fin.cons (constLine _) (fun i => unitLine (dropJ j k₀) (w₀ i)) :
        Fin (e₀ + 1) → HermLine (PIdx (dropJ j k₀))) i)
      ((Fin.cons (constLine _) (fun i => unitLine j (w₀ i).1) : Fin (e₀ + 1) → HermLine (PIdx j)) i) := by
    intro i
    refine Fin.cases ?_ (fun i => ?_) i
    · simpa using isPull_const j k₀
    · simpa using isPull_unit j k₀ (w₀ i)
  have hPF := hIn.projFormula II hII.1 {k // k ≠ k₀} (PIdx (dropJ j k₀)) K (PIdx j) Subtype.val (dropV j k₀)
    (PPart j) (e₀ + 1) r G _ _ _ (fun _ => unitLine j k₀) hB hA (hImg ▸ hA₀) hJ hsm₀ hpl
    (fun _ => unitLine_smooth _ _)
  have hV := hIn.fibreDim {k // k ≠ k₀} (PIdx (dropJ j k₀)) K (PIdx j) Subtype.val (dropV j k₀)
    (PPart j) (e₀ + 1) r G hB hA (hImg ▸ hA₀)
  have hone : ∃ b : FibreBlock (Subtype.val : {k // k ≠ k₀} → K), ∀ a, a = b := by
    refine ⟨⟨k₀, by rintro ⟨x, hx⟩; exact x.2 hx⟩, fun a => Subtype.ext ?_⟩
    by_contra h
    exact a.2 ⟨⟨a.1, h⟩, rfl⟩
  obtain ⟨b, hb⟩ := hone
  have hdeg : (fun _ : Fin r => fibreDeg (Subtype.val : {k // k ≠ k₀} → K) (unitLine j k₀).a) = fun _ _ => 1 := by
    funext _ a
    have ha : a.1 = k₀ := by
      by_contra h
      exact a.2 ⟨⟨a.1, h⟩, rfl⟩
    show (if a.1 = k₀ then (1 : ℤ) else 0) = 1
    simp [ha]
  rw [hG] at hV
  have hval := linDeg _ b hb _ hJ S hS r hV
  rw [hdeg, hG, hval, hImg] at hPF
  have hT₀ := tie II hII.1 (PPart (dropJ j k₀)) e₀ (fun i => unitLine (dropJ j k₀) (w₀ i)) hA₀
    (fun _ => unitLine_smooth _ _)
  have hT := tie II hII.1 (PPart j) (e₀ + r)
    (Fin.append (fun i => unitLine j (w₀ i).1) (fun _ : Fin r => unitLine j k₀)) hAe (by
      intro i
      refine Fin.addCases (fun i => ?_) (fun i => ?_) i
      · simpa using unitLine_smooth _ _
      · simpa using unitLine_smooth _ _)
  rw [← hT₀, ← hT]
  have hcast : ∀ {n m : ℕ} (h : n = m) (M : Fin m → HermLine (PIdx j)),
      II K (PIdx j) (PPart j) n (M ∘ Fin.cast h) = II K (PIdx j) (PPart j) m M := by
    intro n m h M
    subst h
    rfl
  rw [← hcast (by omega : e₀ + 1 + r = e₀ + r + 1), ← append_cons_eq, hPF]
  simp

theorem count_append {α : Type} [DecidableEq α] {a b : ℕ} (u : Fin a → α) (v : Fin b → α) (k : α) :
    (Finset.univ.filter fun r => Fin.append u v r = k).card =
      (Finset.univ.filter fun r => u r = k).card + (Finset.univ.filter fun r => v r = k).card := by
  simp only [Finset.card_filter]
  rw [Fin.sum_univ_add]
  simp [Fin.append_left, Fin.append_right]

theorem len_eq_cellDim [Fintype K] [DecidableEq K] (j : K → FlBlock Ψ N) {e : ℕ} (w : Fin e → K)
    (h : ∀ k, (Finset.univ.filter fun r => w r = k).card = N - 1 - ((j k).2 : ℕ)) : e = cellDim j := by
  have := Finset.card_eq_sum_card_fiberwise (s := (Finset.univ : Finset (Fin e))) (t := (Finset.univ : Finset K))
    (f := w) (fun _ _ => Finset.mem_coe.2 (Finset.mem_univ _))
  simp only [Finset.card_univ, Fintype.card_fin] at this
  rw [this]
  exact Finset.sum_congr rfl fun k _ => h k

theorem tower (hIn : PB.Inputs) (II : IntersectionSystem) (hII : IsFullIntersectionSystem II) :
    ∀ (n : ℕ) (K : Type) [Fintype K] [DecidableEq K], Fintype.card K = n + 1 → ∀ j : K → FlBlock Ψ N, IsChain j →
      ∃ (e : ℕ) (w : Fin e → K), (∀ k, (Finset.univ.filter fun r => w r = k).card = N - 1 - ((j k).2 : ℕ)) ∧
        ptsIntegral (PPart j) (pot fun r => unitLine j (w r)) (fun _ => 1) = 1 := by
  intro n
  induction n with
  | zero =>
    intro K _ _ hc j hj
    obtain ⟨k₀, hk⟩ := Fintype.card_eq_one_iff.1 hc
    have h0 : ((j k₀).2 : ℕ) = 0 := by
      obtain ⟨k, hk'⟩ := hj.down k₀ ((j k₀).1, ⟨0, by have := (j k₀).2.2; omega⟩) rfl (by simp)
      rw [hk k] at hk'
      rw [hk']
    refine ⟨N - 1, fun _ => k₀, fun k => ?_, base II hII k₀ hk j hj⟩
    rw [hk k, h0]
    simp
  | succ n ih =>
    intro K _ _ hc j hj
    haveI : Nonempty K := Fintype.card_pos_iff.1 (by omega)
    obtain ⟨k₀, hmax⟩ := Finite.exists_max (fun k => ((j k).2 : ℕ))
    have hcard : Fintype.card {k // k ≠ k₀} = n + 1 := by
      have h := Fintype.card_subtype_compl (α := K) (fun k => k = k₀)
      rw [Fintype.card_subtype_eq] at h
      have h' : Fintype.card {k // k ≠ k₀} = Fintype.card K - 1 := by convert h
      omega
    obtain ⟨e₀, w₀, hcnt, hval⟩ := ih {k // k ≠ k₀} hcard (dropJ j k₀) (isChain_drop j hj k₀ hmax)
    have hne : ∃ k, k ≠ k₀ := by
      obtain ⟨x⟩ : Nonempty {k // k ≠ k₀} := Fintype.card_pos_iff.1 (by omega)
      exact ⟨x.1, x.2⟩
    have he := len_eq_cellDim (dropJ j k₀) w₀ hcnt
    refine ⟨e₀ + (N - 1 - ((j k₀).2 : ℕ)), Fin.append (fun i => (w₀ i).1) (fun _ => k₀), fun k => ?_, ?_⟩
    · rw [count_append]
      by_cases hk : k = k₀
      · subst hk
        have h1 : (Finset.univ.filter fun r => (w₀ r).1 = k) = ∅ := by
          ext r
          simpa using (w₀ r).2
        rw [h1]
        simp
      · have h1 : (Finset.univ.filter fun r => (w₀ r).1 = k) = Finset.univ.filter fun r => w₀ r = ⟨k, hk⟩ := by
          ext r
          simp [Subtype.ext_iff]
        have h2 : (Finset.univ.filter fun _ : Fin (N - 1 - ((j k₀).2 : ℕ)) => k₀ = k) = ∅ :=
          Finset.filter_false_of_mem fun _ _ => Ne.symm hk
        rw [h1, h2, hcnt ⟨k, hk⟩]
        simp [dropJ]
    · have hs := step hIn II hII j hj k₀ hmax hne e₀ w₀ _ he rfl
      rw [hval] at hs
      have hfun : (fun r => unitLine j (Fin.append (fun i => (w₀ i).1) (fun _ : Fin (N - 1 - ((j k₀).2 : ℕ)) => k₀) r)) =
          Fin.append (fun i => unitLine j (w₀ i).1) (fun _ : Fin (N - 1 - ((j k₀).2 : ℕ)) => unitLine j k₀) := by
        funext i
        refine Fin.addCases (fun i => ?_) (fun i => ?_) i <;> simp
      rw [hfun]
      exact hs

theorem alg_const (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (D : ℕ)
    (a : (Fin D → Ψ × Fin N) → ℝ) (c : ℝ) (w₀ : Fin D → Ψ × Fin N)
    (hcnt : ∀ p : Ψ × Fin N, (Finset.univ.filter fun r => w₀ r = p).card = N - 1 - (p.2 : ℕ))
    (hsym : ∀ (π : Equiv.Perm (Fin D)) (w : Fin D → Ψ × Fin N), a (w ∘ π) = a w) (h1 : a w₀ = 1)
    (h : PB.toWt (PB.formPoly D a) = C c * GroundTheory.Heights₂.Heights.antisymDelta Ψ N) :
    c * ∏ _τ : Ψ, ∏ i : Fin N, ∏ k : Fin N, (if i < k then ((k : ℝ) - (i : ℝ)) else 1) = (D.factorial : ℝ) := by
  have hG : PB.formPoly D a = C c * gapDelta Ψ N := by
    apply _root_.GlobalTheory.CompanionTheory.Ar.Top.FlDeg.toWt_leftInverse_injective Ψ N
    rw [h, map_mul, _root_.GlobalTheory.CompanionTheory.Ar.Top.FlDeg.toWt_gapDelta_eq_antisymDelta]
    simp [PB.toWt]
  have h2 := coeff_formPoly_sym D a hsym w₀ (rhoM Ψ N) (fun p => by
    rw [hcnt p]
    rfl)
  rw [hG, coeff_C_mul, _root_.GlobalTheory.CompanionTheory.Ar.Top.FlDeg.coeff_rhoM_gapDelta, h1, _root_.GlobalTheory.CompanionTheory.Ar.Top.FlDeg.prod_rhoM_factorial] at h2
  simpa using h2

open GlobalTheory.CompanionTheory.Ar.PB GroundTheory.Heights₂.Heights in
theorem degFl_vand (hIn : PB.Inputs) (II : IntersectionSystem) (hII : IsFullIntersectionSystem II) (Ψ : Type) [Fintype Ψ]
    [DecidableEq Ψ] [Nonempty Ψ] (N : ℕ) (hN : 2 ≤ N) : ∃ c : ℝ, degFlPoly Ψ N = C c * antisymDelta Ψ N := by
  obtain ⟨M, BM, hhom, hfs, hbd⟩ := _root_.GlobalTheory.CompanionTheory.Ar.PB.flagModel_over_point Ψ N hN
  have hpos : 1 ≤ antisymDegree Ψ N := Nat.mul_pos Fintype.card_pos (Nat.choose_pos hN)
  obtain ⟨d, hd⟩ : ∃ d, d + 1 = antisymDegree Ψ N := ⟨antisymDegree Ψ N - 1, by omega⟩
  have harith : IsArithVar (mCoordIdeal (yFl Ψ N)) (d + 2) := by
    have := _root_.GlobalTheory.CompanionTheory.Ar.PB.pFl_isArithVar Ψ N hN
    rw [← hd] at this
    exact this
  have hdim : d + 1 = 0 + Fintype.card Ψ * (N.choose 2 + (N - N).choose 2) := by
    simpa [antisymDegree] using hd
  obtain ⟨FA, -⟩ := PositivityTheory.Xgp.t_c_fl_an _ _ _ (yFl Ψ N) Ψ N N M 0 d BM harith hdim hbd
    (fun p => (hhom p).trans (hfs p).symm)
  obtain ⟨Cv, CR, hdeg, href, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.PB.identity_cover _ _ _ (yFl Ψ N) Ψ N N M 0 d BM FA
  have hU := _root_.GlobalTheory.CompanionTheory.Relay.flag_analytic_data_uniformised _ _ _ (yFl Ψ N) Ψ N N M 0 d BM FA (by simp) hd
  have hdeg1 : CR.Re.deg = 1 := by rw [CR.deg_eq, hdeg]
  have href1 : ∀ p, CR.Re.ref p = yLineFl Ψ N p := fun p => by rw [href, FA.ref_some, hfs]
  have hP := (_root_.GlobalTheory.CompanionTheory.Ar.PB.flag_isArithVar_and_image Ψ N hN).1
  have hR := _root_.GlobalTheory.CompanionTheory.Ar.PB.re_pot hIn.2.1.1 _ _ _ _ (FA.S.comap some) _ CR.Re
  have hw : ∀ w : Fin (d + 1) → Ψ × Fin N,
      ptsIntegral (PFl Ψ N) (pot fun r => yLineFl Ψ N (w r)) (fun _ => 1) = (FA.S.comap some).degNum w := by
    intro w
    have := hR.2.1 w
    simp only [href1, hdeg1] at this
    simpa [PFl] using this
  obtain ⟨c, -, hc'⟩ := _root_.GlobalTheory.CompanionTheory.Ar.PB.anSys_proportional hIn Ψ N N (d + 1) (FA.S.comap some) le_rfl hd hU
  refine ⟨c, Eq.trans ?_ hc'⟩
  rw [(_root_.GlobalTheory.CompanionTheory.Ar.PB.flLines_polys hIn II hII Ψ N hN hP).2, AnSys.degPoly]
  congr 1
  rw [← hd]
  congr 1
  funext w
  exact hw w

end GlobalTheory.CompanionTheory.Ar.IndefiniteRowSideFullHecke.FlDegC

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top
open GroundTheory.Heights₂.Heights GroundTheory.Heights₂.Heights.LowerBoundFree GlobalTheory.CompanionTheory.Ar.Top.FlDeg GlobalTheory.CompanionTheory.Ar.IndefiniteRowSideFullHecke.FlDegC

namespace GlobalTheory.CompanionTheory.Ar.IndefiniteRowSideFullHecke

theorem degFlPoly_eval' : PB.Inputs → ∀ II : IntersectionSystem, IsFullIntersectionSystem II → ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) [Nonempty Ψ] (lam : Wt Ψ N), 2 ≤ N → eval (fun x => lam x.1 x.2) (PB.degFlPoly Ψ N) = flagDeg lam := by
  intro hIn II hII Ψ _ _ N _ lam hN
  obtain ⟨c, hC⟩ := degFl_vand hIn II hII Ψ N hN
  have hAr := (_root_.GlobalTheory.CompanionTheory.Ar.PB.flag_isArithVar_and_image Ψ N hN).1
  have hL := (_root_.GlobalTheory.CompanionTheory.Ar.PB.flLines_polys hIn II hII Ψ N hN hAr).2
  have hchain : IsChain (id : FlBlock Ψ N → FlBlock Ψ N) := ⟨Function.injective_id, fun _ q _ _ => ⟨q, rfl⟩⟩
  haveI hK : Nonempty (FlBlock Ψ N) := ⟨(Classical.arbitrary Ψ, ⟨0, by omega⟩)⟩
  obtain ⟨n, hn⟩ : ∃ n, Fintype.card (FlBlock Ψ N) = n + 1 :=
    ⟨Fintype.card (FlBlock Ψ N) - 1, by have := Fintype.card_pos (α := FlBlock Ψ N); omega⟩
  obtain ⟨e, w, hcnt, hval⟩ := tower hIn II hII n (FlBlock Ψ N) hn id hchain
  have he : e = antisymDegree Ψ N := by
    have h1 := (arith (id : FlBlock Ψ N → FlBlock Ψ N) hchain).2.2.2
    have h2 := hAr.2.2.2
    have h3 : ringKrullDim (MRing (FlIdx Ψ N) ⧸ PFl Ψ N) = ((cellDim (id : FlBlock Ψ N → FlBlock Ψ N) + 1 + Fintype.card (FlBlock Ψ N) : ℕ) : WithBot ℕ∞) := h1
    rw [h3] at h2
    have h4 : cellDim (id : FlBlock Ψ N → FlBlock Ψ N) + 1 + Fintype.card (FlBlock Ψ N) = antisymDegree Ψ N + 1 + Fintype.card (FlBlock Ψ N) := by
      exact_mod_cast h2
    rw [len_eq_cellDim id w hcnt]
    omega
  subst he
  let pr : FlBlock Ψ N → Ψ × Fin N := fun q => (q.1, ⟨q.2, by have := q.2.2; omega⟩)
  have hpr : ∀ q, PB.yLineFl Ψ N (pr q) = unitLine (id : FlBlock Ψ N → FlBlock Ψ N) q := by
    intro q
    show fsHerm _ _ = fsHerm _ _
    congr 1
    funext q'
    simp [pr, Prod.ext_iff, Fin.ext_iff]
  let a : (Fin (antisymDegree Ψ N) → Ψ × Fin N) → ℝ := fun w' =>
    ptsIntegral (PFl Ψ N) (pot fun r => PB.yLineFl Ψ N (w' r)) fun _ => 1
  have ha : a (fun r => pr (w r)) = 1 := by
    show ptsIntegral (PFl Ψ N) (pot fun r => PB.yLineFl Ψ N (pr (w r))) (fun _ => 1) = 1
    simp only [hpr]
    exact hval
  have hsmY : ∀ p, IsSmoothHerm (PB.yLineFl Ψ N p) := fun p => fsHerm_smooth _ _
  have hsym : ∀ (π : Equiv.Perm (Fin (antisymDegree Ψ N))) (w' : Fin (antisymDegree Ψ N) → Ψ × Fin N),
      a (w' ∘ π) = a w' := by
    intro π w'
    have := (_root_.GlobalTheory.CompanionTheory.Ar.Top.geo_multilin II hII (FlBlock Ψ N) (FlIdx Ψ N) (PFl Ψ N) (antisymDegree Ψ N) Unit
      (fun _ => fsHerm (FlIdx Ψ N) 0) (fun _ _ => 0) hAr (fun _ => fsHerm_smooth _ _)).2
      (fun r => PB.yLineFl Ψ N (w' r)) (fun r => PB.yLineFl Ψ N (w' (π r))) π (fun _ => hsmY _) (fun _ => hsmY _)
      (fun _ => rfl)
    exact this
  have hcnt' : ∀ p : Ψ × Fin N, (Finset.univ.filter fun r => pr (w r) = p).card = N - 1 - (p.2 : ℕ) := by
    rintro ⟨τ, i⟩
    by_cases hi : (i : ℕ) < N - 1
    · have : (Finset.univ.filter fun r => pr (w r) = (τ, i)) = Finset.univ.filter fun r => w r = (τ, ⟨i, hi⟩) := by
        ext r
        simp [pr, Prod.ext_iff, Fin.ext_iff]
      rw [this, hcnt]
      rfl
    · have : (Finset.univ.filter fun r => pr (w r) = (τ, i)) = ∅ := by
        ext r
        simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.notMem_empty, iff_false]
        intro h
        have h2 := congrArg (fun x : Ψ × Fin N => (x.2 : ℕ)) h
        have := (w r).2.2
        simp only [pr] at h2
        omega
      rw [this]
      simp
      omega
  have hcst := alg_const Ψ N (antisymDegree Ψ N) a c (fun r => pr (w r)) hcnt' hsym ha (hL ▸ hC)
  obtain ⟨hW, -, -⟩ := flagDeg_eq_weyl Ψ N lam
  have hdim : Top.dimFl Ψ N = antisymDegree Ψ N := by
    simp [Top.dimFl, antisymDegree, Nat.choose_two_right]
  have hΔ : eval (fun x : Ψ × Fin N => lam x.1 x.2) (antisymDelta Ψ N) =
      ∏ τ, ∏ a : Fin N, ∏ b ∈ Finset.Ioi a, (lam τ a - lam τ b) := by
    simp [antisymDelta, map_prod]
  have hsplit : ∏ τ, ∏ i : Fin N, ∏ k : Fin N, (if i < k then (lam τ i - lam τ k) / ((k : ℝ) - (i : ℝ)) else 1) =
      (∏ τ, ∏ a : Fin N, ∏ b ∈ Finset.Ioi a, (lam τ a - lam τ b)) /
        ∏ _τ : Ψ, ∏ i : Fin N, ∏ k : Fin N, (if i < k then ((k : ℝ) - (i : ℝ)) else 1) := by
    rw [← Finset.prod_div_distrib]
    refine Finset.prod_congr rfl fun τ _ => ?_
    rw [← Finset.prod_div_distrib]
    refine Finset.prod_congr rfl fun i _ => ?_
    have hI : Finset.Ioi i = Finset.univ.filter fun k => i < k := by
      ext k
      simp
    rw [hI, Finset.prod_filter, ← Finset.prod_div_distrib]
    refine Finset.prod_congr rfl fun k _ => ?_
    split_ifs <;> simp
  rw [hC, map_mul, eval_C, hW, hdim, hsplit, hΔ]
  have hPr : (∏ _τ : Ψ, ∏ i : Fin N, ∏ k : Fin N, (if i < k then ((k : ℝ) - (i : ℝ)) else 1)) ≠ 0 := by
    intro h0
    rw [h0, mul_zero] at hcst
    exact (Nat.cast_ne_zero.2 (Nat.factorial_ne_zero _)) hcst.symm
  rw [← hcst]
  field_simp

end GlobalTheory.CompanionTheory.Ar.IndefiniteRowSideFullHecke
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.IntegralPointHeights.NegativeIntegralPoints.FlDegFree =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreePolynomialEval =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreePolynomialEval", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.MetricStatements.AgreementIffGuarded\npublic import Development.WeilBound.CoreStatements.IntegralPointHeights.NegativeIntegralPoints.FlDegFree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top

alias _root_.GlobalTheory.CompanionTheory.Relay.flag_degree_polynomial_eval := _root_.GlobalTheory.CompanionTheory.Ar.IndefiniteRowSideFullHecke.degFlPoly_eval'
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreePolynomialEval =====
