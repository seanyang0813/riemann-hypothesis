module

public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.ShortIsot
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.ConcreteLevelAdelicSubset
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.IntegrableMulBc
public import Mathlib.MeasureTheory.Function.ContinuousMapDense
public import Formalism.PeriodIntegrals.AdelClassFin
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirVolumeRatios.VolumeClassRepresentatives.DensRat
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirVolumeRatios.VolumeClassRepresentatives.IwasawaBase
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdelClassFin
public import Mathlib.MeasureTheory.Function.AEEqOfIntegral
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.RowsDef
public import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.UnitaryRepUnimodularOfFiniteVolume
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.HeightBoundSetup
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.LocalPointData
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.LogBallEstimates
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.NilpotentSubgroupRepresentation
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.SecondOrderExpAtInfinitePlace
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.ConstructionA
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RightRegularIsometricMultiplicative
import Mathlib.Topology.Algebra.Group.Units
import Aesop.Main
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Dynamics.Ergodic.Action.Regular
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Topology.Compactness.Paracompact
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RrsSecondCountableAbs
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ModularCharacterEqOneOnExpHermitian
import Mathlib.Analysis.Matrix.Hermitian
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.RowsProj
import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.LogNormEstimates

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.CuspidalAtInfinityOf, CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.FiniteDimensionalFromLinearForms, CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.PBAdel, CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.ParabolicSubgroupDecomposition, CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.RealParabolicDecomposition, CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.RowsFinDimOf, CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.AutomorphicFormsFiniteDimensional

-- ===== clump member: CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.CuspidalAtInfinityOf =====
-- clump-header: {"m": "CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.CuspidalAtInfinityOf", "h": "module\n\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.ShortIsot\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.ConcreteLevelAdelicSubset\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.ConstructionA\nimport Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RightRegularIsometricMultiplicative\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Topology Filter Set Matrix NumberField
open scoped ENNReal Pointwise

noncomputable section

namespace CompanionTheory.D.gk.RF

open Formalism.MainNotions.S Formalism.L2.SG.ProjRows Formalism.MainNotions.LeviCoordinates

theorem cuspidal_at_infinity_of : Sel → Avg → NWSub → RealPar → ParPi → Transp → GamSub → GeoInf → CuspInf := by
  classical
  intro hSel hAvg hNW hRP hPi hT hGam hGeo I M hM ph hph hconv U hU
  obtain ⟨K, hKn, hKU, hK⟩ := local_compact_nhds hU
  obtain ⟨C, hC, hy⟩ := hGeo I M hM (interior K) (interior_mem_nhds.2 hKn)
  refine ⟨C, hC, fun y => (hy y).imp_right ?_⟩
  rintro ⟨W, hW0, hWi, hcov⟩
  obtain ⟨-, -, -, hperp, hne, -⟩ := hT I
  have hiso : ∀ v, Isot (Formalism.REAL.Jm (I.ε v)) (Wv I W v) := fun v => by
    unfold Isot
    rw [← hperp]
    exact Submodule.span_mono (image_mono hWi)
  choose Nv hNv using fun v => (hNW _ _ _ (hiso v)).2
  let N : Subgroup I.Ginf := Subgroup.pi univ Nv
  have hNm : ∀ g, g ∈ N ↔ g ∈ NInf I W := fun g => by
    simp only [N, Subgroup.mem_pi, mem_univ, forall_true_left, NInf, mem_ofPred_eq, ← hNv, SetLike.mem_coe]
  have hNc : IsClosed (N : Set I.Ginf) := by
    rw [Subgroup.coe_pi]
    exact isClosed_set_pi fun v _ => by rw [hNv]; exact (hNW _ _ _ (hiso v)).1
  obtain ⟨Γ, hΓ, hΓd⟩ := hGam I M
  have hc : Continuous fun m : I.Ginf => y⁻¹ * m * y := by fun_prop
  have hcK : IsCompact ((fun m : I.Ginf => y⁻¹ * m * y) ⁻¹' K) :=
    (((Homeomorph.mulLeft y⁻¹).trans (Homeomorph.mulRight y)).isCompact_preimage).2 hK
  obtain ⟨ν, hν, hνV, hinv⟩ := hAvg I.Ginf N (Γ ⊓ N) hNc inf_le_right
    (fun B hB => (hΓd B hB).subset fun x hx => ⟨hx.1, hx.2.1⟩) ((fun m => y⁻¹ * m * y) ⁻¹' interior K)
    (isOpen_interior.preimage hc)
    (hcK.of_isClosed_subset isClosed_closure (closure_minimal (preimage_mono interior_subset) hcK.isClosed))
    fun m hm => by
      obtain ⟨γ, hγ, hγN, h⟩ := hcov m ((hNm m).1 hm)
      exact ⟨γ, ⟨hΓ.ge hγ, (hNm γ).2 hγN⟩, h⟩
  refine ⟨ν, hν, hνV.mono fun m hm => hKU (interior_subset hm), fun u hu huΓ hrep x => ?_⟩
  obtain ⟨huc, B, hB⟩ := id hu
  have hc2 : Continuous fun p : I.Ginf × I.Ginf => u (p.1 * p.2) := huc.comp continuous_mul
  let F : I.Ginf → ℂ := fun x => ∫ m, u (m * x) ∂ν
  have hFb : BC F := ⟨continuous_of_dominated (bound := fun _ => B)
      (fun x => (hc2.comp (continuous_id.prodMk continuous_const)).aestronglyMeasurable)
      (fun x => Eventually.of_forall fun _ => hB _) (integrable_const _)
      (Eventually.of_forall fun m => hc2.comp (continuous_const.prodMk continuous_id)),
    B, fun x => by simpa using norm_integral_le_of_norm_le_const (μ := ν) (Eventually.of_forall fun m => hB (m * x))⟩
  have hFN : LInv N F := fun m hm x => hinv u hu (fun γ hγ => huΓ γ (by rw [← hΓ]; exact hγ.1)) m hm x
  obtain ⟨v₀⟩ : Nonempty (InfinitePlace I.F) := inferInstance
  obtain ⟨a, Ht, P⟩ := hRP _ _ _ (hne v₀ W hW0) (hiso v₀) (Nv v₀) (hNv v₀)
  have h0 := hSel I.Ginf (muInf I) ph hph hconv _ _ _ (hPi _ _ v₀ _ a Ht P) F hFb (by
    rintro _ ⟨m, hm, rfl⟩
    refine hFN _ fun v _ => ?_
    by_cases hv : v = v₀
    · subst hv; simpa using hm
    · simp [Pi.mulSingle_eq_of_ne hv]) x
  have hI : Integrable (fun p : I.Ginf × I.Ginf => ph p.2 * u (p.1 * x * p.2)) (ν.prod (muInf I)) :=
    (hph.comp_snd ν).mul_bdd
      (huc.comp (by fun_prop) : Continuous fun p : I.Ginf × I.Ginf => u (p.1 * x * p.2)).aestronglyMeasurable
      (Eventually.of_forall fun _ => hB _)
  rw [← h0, integral_congr_ae (Eventually.of_forall fun m => hrep (m * x)), integral_integral_swap hI]
  simp only [F, integral_const_mul, mul_assoc]

theorem level_structure_of : LevelOf := by
  intro I e hlc hs
  let K : Subgroup I.Gf := (Formalism.UG.stabGL I.Lf).comap (Formalism.UG.UPts I.cm.sig I.J (Af I.F)).subtype
  have hK : IsCompact (K : Set I.Gf) := PI.WAU.maximal_compact_isCompact I
  have hKo : IsOpen (K : Set I.Gf) := Formalism.L2.SG.Pf.kset_open I
  let Kp : Subgroup I.Gf :=
    { carrier := {k | k ∈ K ∧ ∀ x, e (k * x) = e x}
      mul_mem' := fun ha hb => ⟨K.mul_mem ha.1 hb.1, fun x => by rw [mul_assoc, ha.2, hb.2]⟩
      one_mem' := ⟨K.one_mem, fun x => by rw [one_mul]⟩
      inv_mem' := fun {k} hk => ⟨K.inv_mem hk.1, fun x => by rw [← hk.2 (k⁻¹ * x), mul_inv_cancel_left]⟩ }
  have h1 : ∀ᶠ k in 𝓝 (1 : I.Gf), ∀ x ∈ (K : Set I.Gf), e (k * x) = e x := by
    refine hK.eventually_forall_of_forall_eventually fun x _ => ?_
    have a1 := (hlc.comp_continuous (continuous_mul (M := I.Gf))).eventually_eq (1, x)
    have a2 := (hlc.comp_continuous (continuous_snd (X := I.Gf))).eventually_eq (1, x)
    filter_upwards [a1, a2] with p h1 h2
    simp only [Function.comp_apply, one_mul] at h1 h2
    rw [h1, h2]
  have hop : IsOpen (Kp : Set I.Gf) := by
    refine Kp.isOpen_of_mem_nhds (g := 1) ?_
    filter_upwards [h1, hKo.mem_nhds K.one_mem] with k hk hkK
    refine ⟨hkK, fun x => ?_⟩
    by_cases hx : x ∈ K
    · exact hk x hx
    · have a1 : e x = 0 := by by_contra h; exact hx (hs x h)
      have a2 : e (k * x) = 0 := by by_contra h; exact hx ((K.mul_mem_cancel_left hkK).1 (hs _ h))
      rw [a1, a2]
  exact ⟨Kp, hop, hK.of_isClosed_subset (Kp.isClosed_of_isOpen hop) fun k hk => hk.1, fun k hk => hk.2⟩

end CompanionTheory.D.gk.RF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.CuspidalAtInfinityOf =====

-- ===== clump member: CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.FiniteDimensionalFromLinearForms =====
-- clump-header: {"m": "CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.FiniteDimensionalFromLinearForms", "h": "module\n\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.ShortIsot\nimport Aesop.Main\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.IntegrableMulBc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Dynamics.Ergodic.Action.Regular\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Function.ContinuousMapDense\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Compactness.Paracompact\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Topology Filter Set
open scoped ENNReal Pointwise

noncomputable section

namespace CompanionTheory.D.gk.RF

theorem sq_lintegral_le {X : Type} [MeasurableSpace X] (μ : Measure X) {θ f : X → ℝ≥0∞} (hθ : AEMeasurable θ μ)
    (hf : AEMeasurable f μ) : (∫⁻ y, θ y * f y ∂μ) ^ 2 ≤ (∫⁻ y, θ y ∂μ) * ∫⁻ y, θ y * f y ^ 2 ∂μ := by
  have h := ENNReal.lintegral_mul_le_Lp_mul_Lq μ Real.HolderConjugate.two_two
    (f := fun y => θ y ^ (1 / 2 : ℝ)) (g := fun y => θ y ^ (1 / 2 : ℝ) * f y) (hθ.pow_const _) ((hθ.pow_const _).mul hf)
  have e0 : ∀ a : ℝ≥0∞, (a ^ (1 / 2 : ℝ)) ^ (2 : ℝ) = a := fun a => by rw [← ENNReal.rpow_mul]; norm_num
  have e1 : ∀ a : ℝ≥0∞, a ^ (1 / 2 : ℝ) * a ^ (1 / 2 : ℝ) = a := fun a => by
    rw [← _root_.sq, ← ENNReal.rpow_two, e0]
  simp only [Pi.mul_apply, ← mul_assoc, e1, e0, ENNReal.mul_rpow_of_nonneg _ _ (zero_le_two : (0 : ℝ) ≤ 2),
    ENNReal.rpow_two] at h
  have e2 : ∀ a : ℝ≥0∞, (a ^ (1 / 2 : ℝ)) ^ 2 = a := fun a => by rw [← ENNReal.rpow_two, e0]
  refine (pow_le_pow_left' h 2).trans (le_of_eq ?_)
  rw [mul_pow, e2, e2]

section

variable {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [LocallyCompactSpace G]
  [SecondCountableTopology G] [T2Space G] [MeasurableSpace G] [BorelSpace G] {μ : Measure G} [μ.IsHaarMeasure]
  {Γ : Subgroup G} [Countable Γ] {D : Set G}

theorem setLIntegral_right [μ.IsMulRightInvariant] (hD : IsFundamentalDomain Γ D μ) {f : G → ℝ≥0∞}
    (hΓ : LInv Γ f) (y : G) : ∫⁻ x in D, f (x * y) ∂μ = ∫⁻ x in D, f x ∂μ := by
  have hmp := measurePreserving_mul_right μ y⁻¹
  have hD' : IsFundamentalDomain Γ ((fun x => x * y⁻¹) ⁻¹' D) μ :=
    hD.preimage_of_equiv (e := id) hmp.quasiMeasurePreserving Function.bijective_id fun g x => by
      show ((g : G) * x) * y⁻¹ = (g : G) * (x * y⁻¹)
      rw [mul_assoc]
  rw [← hD'.setLIntegral_eq hD f fun g x => hΓ g g.2 x,
    ← hmp.setLIntegral_comp_preimage_emb (measurableEmbedding_mulRight y⁻¹) (fun x => f (x * y)) D]
  simp

end

theorem young_convolution_inequality : Young := by
  intro G _ _ _ _ _ _ _ _ μ _ _ Γ _ D hD f θ hf hθ hΓ
  have hm : Measurable fun p : G × G => f (p.1 * p.2) := hf.comp measurable_mul
  calc ∫⁻ x in D, (∫⁻ y, θ y * f (x * y) ∂μ) ^ 2 ∂μ
      ≤ ∫⁻ x in D, (∫⁻ y, θ y ∂μ) * ∫⁻ y, θ y * f (x * y) ^ 2 ∂μ ∂μ :=
        lintegral_mono fun x => sq_lintegral_le μ hθ (hf.comp (measurable_const_mul x)).aemeasurable
    _ = (∫⁻ y, θ y ∂μ) * ∫⁻ x in D, ∫⁻ y, θ y * f (x * y) ^ 2 ∂μ ∂μ :=
        lintegral_const_mul'' _ (AEMeasurable.lintegral_prod_right' (f := fun p : G × G => θ p.2 * f (p.1 * p.2) ^ 2)
          (hθ.comp_snd.mul (hm.pow_const 2).aemeasurable))
    _ = (∫⁻ y, θ y ∂μ) * ∫⁻ y, (∫⁻ x in D, θ y * f (x * y) ^ 2 ∂μ) ∂μ := by
        rw [lintegral_lintegral_swap (hθ.comp_snd.mul (hm.pow_const 2).aemeasurable)]
    _ = (∫⁻ y, θ y ∂μ) * ∫⁻ y, θ y * ∫⁻ x in D, f x ^ 2 ∂μ ∂μ := by
        congr 2
        funext y
        rw [lintegral_const_mul (f := fun x => f (x * y) ^ 2) _ ((hf.comp (measurable_mul_const y)).pow_const 2),
          setLIntegral_right hD (f := fun x => f x ^ 2) (fun g hg x => by simp only [hΓ g hg]) y]
    _ = _ := by rw [lintegral_mul_const'' _ hθ, _root_.sq, mul_assoc]

theorem compact_integral_quotient_bound : CompactIntegralBoundedByQuotientNorm := by
  classical
  intro G _ _ _ _ _ _ _ _ μ _ Γ _ D hD hd B hB
  have hfin := hd _ (hB.mul hB.inv)
  refine ⟨μ B * hfin.toFinset.card, ENNReal.mul_ne_top hB.measure_lt_top.ne (by simp), fun f hf hΓ => ?_⟩
  have h1 := sq_lintegral_le (μ.restrict B) (θ := fun _ => 1) aemeasurable_const hf.aemeasurable
  simp only [one_mul, lintegral_const, Measure.restrict_apply_univ] at h1
  refine h1.trans ?_
  rw [mul_assoc]
  gcongr
  have hm : Measurable (B.indicator fun x => f x ^ 2) := (hf.pow_const 2).indicator hB.measurableSet
  rw [← lintegral_indicator hB.measurableSet, hD.lintegral_eq_tsum'', ← lintegral_tsum (f := fun (g : Γ) x => B.indicator (fun y => f y ^ 2) (g • x)) fun g =>
    (hm.comp (measurable_const_smul g)).aemeasurable, ← lintegral_const_mul _ (hf.pow_const 2)]
  refine lintegral_mono fun x => ?_
  by_cases h : ∃ g₀ : Γ, g₀ • x ∈ B
  · obtain ⟨g₀, h₀⟩ := h
    let s : Finset Γ := hfin.toFinset.preimage (fun g : Γ => (g : G) * (g₀ : G)⁻¹)
      ((mul_left_injective _).comp Subtype.val_injective).injOn
    rw [tsum_eq_sum (s := s) fun g hg => indicator_of_notMem (fun hgB => hg ?_) _]
    · refine (Finset.sum_le_card_nsmul _ _ (f x ^ 2) fun g _ => (indicator_le_self _ _ _).trans
        (le_of_eq (by rw [show g • x = (g : G) * x from rfl, hΓ g g.2]))).trans ?_
      rw [nsmul_eq_mul]
      gcongr
      exact Finset.card_le_card_of_injOn (fun g : Γ => (g : G) * (g₀ : G)⁻¹) (fun g hg => by
        simpa only [s, Finset.mem_coe, Finset.mem_preimage] using hg)
        ((mul_left_injective _).comp Subtype.val_injective).injOn
    · rw [Finset.mem_preimage, Set.Finite.mem_toFinset]
      refine ⟨⟨_, hgB, _, Set.inv_mem_inv.2 h₀, ?_⟩, Γ.mul_mem g.2 (Γ.inv_mem g₀.2)⟩
      show (g : G) * x * ((g₀ : G) * x)⁻¹ = _
      group
  · push Not at h
    simp [indicator_of_notMem (h _)]

theorem near_cusp_measure_estimate : NearMeas := by
  intro G _ _ _ _ _ _ _ _ μ _ Γ _ D hD C hC
  have e : {x | ∃ γ ∈ Γ, γ * x ∈ C} = ⋃ g : Γ, (fun x => (g : G) * x) ⁻¹' C := by
    ext x; simp
  rw [e]
  refine ⟨MeasurableSet.iUnion fun g => measurable_const_mul _ hC.measurableSet, ?_⟩
  rw [inter_iUnion, hD.measure_eq_tsum C, ← (Equiv.inv Γ).tsum_eq]
  refine (measure_iUnion_le _).trans (le_of_eq ?_)
  refine tsum_congr fun g => ?_
  rw [inter_comm]
  congr 2
  ext x
  simp only [Equiv.inv_apply, inv_inv, mem_preimage, Set.mem_smul_set_iff_inv_smul_mem]
  rfl

theorem uniform_continuity_estimate : UnifC := by
  intro G _ _ _ _ _ α hc hs
  obtain ⟨U₀, hU₀, hU₀c⟩ := exists_compact_mem_nhds (1 : G)
  refine ⟨U₀ * tsupport α, hU₀.mul hs, fun e he => ?_⟩
  have h1 : ∀ᶠ u in 𝓝 (1 : G), ∀ y ∈ U₀ * tsupport α, ‖α (u⁻¹ * y) - α y‖ ≤ e := by
    refine (hU₀.mul hs).eventually_forall_of_forall_eventually fun y _ => ?_
    have : Continuous fun p : G × G => ‖α (p.1⁻¹ * p.2) - α p.2‖ := by fun_prop
    exact (this.tendsto (1, y)).eventually (ge_mem_nhds (by simpa using he))
  refine ⟨_, inter_mem h1 hU₀c, fun u hu y => ?_⟩
  have h2 : y ∉ U₀ * tsupport α → α (u⁻¹ * y) = 0 ∧ α y = 0 := fun hy =>
    ⟨image_eq_zero_of_notMem_tsupport fun h => hy ⟨u, hu.2, _, h, by simp⟩,
      image_eq_zero_of_notMem_tsupport fun h => hy ⟨1, mem_of_mem_nhds hU₀c, _, h, by simp⟩⟩
  refine ⟨?_, h2⟩
  by_cases hy : y ∈ U₀ * tsupport α
  · exact hu.1 y hy
  · rw [(h2 hy).1, (h2 hy).2]; simpa using he.le

theorem approximation_of_square_identity : Approx := by
  intro G _ _ _ _ _ _ _ _ μ _ φ O hφ hO h0 e he
  obtain ⟨g, hgs, hge, hgc, hgi⟩ := hφ.exists_hasCompactSupport_integral_sub_le he
  refine ⟨O.indicator g, hO.continuous_indicator hgc, hgs.mono (fun y hy h => hy (by simp [indicator, h])), fun y hy =>
    indicator_of_notMem hy _, le_trans (integral_mono_of_nonneg (Eventually.of_forall fun _ => norm_nonneg _)
      (hφ.sub hgi).norm (Eventually.of_forall fun y => ?_)) hge⟩
  by_cases hy : y ∈ O
  · simp [indicator_of_mem hy]
  · simp [indicator_of_notMem hy, h0 y hy]

section

variable {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [LocallyCompactSpace G]
  [SecondCountableTopology G] [T2Space G] [MeasurableSpace G] [BorelSpace G] {μ : Measure G} [μ.IsHaarMeasure]

theorem diff_est {α h : G → ℂ} (hα : Integrable α μ) (hh : BC h) {B : Set G} (hB : IsCompact B) {e : ℝ} {u : G}
    (hu : ∀ y, ‖α (u⁻¹ * y) - α y‖ ≤ e ∧ (y ∉ B → α (u⁻¹ * y) = 0 ∧ α y = 0)) (x : G) :
    ‖∫ y, α y * h (x * u * y) ∂μ - ∫ y, α y * h (x * y) ∂μ‖ₑ ≤ ENNReal.ofReal e * ∫⁻ y in B, ‖h (x * y)‖ₑ ∂μ := by
  obtain ⟨hc, M, hM⟩ := hh
  have hc' : Continuous fun y => h (x * y) := hc.comp (continuous_const.mul continuous_id)
  have e1 : ∫ y, α y * h (x * u * y) ∂μ = ∫ y, α (u⁻¹ * y) * h (x * y) ∂μ := by
    rw [← integral_mul_left_eq_self (fun y => α (u⁻¹ * y) * h (x * y)) u]
    simp only [inv_mul_cancel_left, mul_assoc]
  rw [e1, ← integral_sub (integrable_mul_bc (hα.comp_mul_left _) hc' fun _ => hM _)
    (integrable_mul_bc hα hc' fun _ => hM _), ← lintegral_indicator hB.measurableSet,
    ← lintegral_const_mul' _ _ ENNReal.ofReal_ne_top]
  refine (enorm_integral_le_lintegral_enorm _).trans (lintegral_mono fun y => ?_)
  by_cases hy : y ∈ B
  · rw [indicator_of_mem hy, ← sub_mul, enorm_mul]
    gcongr
    rw [← ofReal_norm]
    exact ENNReal.ofReal_le_ofReal (hu y).1
  · simp [((hu y).2 hy).1, ((hu y).2 hy).2]

end

theorem far_from_cusp_estimate : FarEst := by
  intro G _ _ _ _ _ _ _ _ μ _ φ α Γ O U B e hc hs h0 hB hU x ⟨ν, hν, hνU, hv⟩ h hh
  have hα : Integrable α μ := hc.integrable_of_hasCompactSupport hs
  obtain ⟨hhc, M, hM⟩ := hh.1
  have hI : Integrable (fun p : G × G => α p.2 * h (p.1 * x * p.2)) (ν.prod μ) :=
    (hα.comp_snd ν).mul_bdd (by fun_prop : Continuous fun p : G × G => h (p.1 * x * p.2)).aestronglyMeasurable
      (Eventually.of_forall fun _ => hM _)
  have h1 : ∫ m, ∫ y, α y * h (m * x * y) ∂μ ∂ν = 0 := by
    rw [integral_integral_swap hI]
    refine integral_eq_zero_of_ae (Eventually.of_forall fun y => ?_)
    beta_reduce
    rw [integral_const_mul]
    by_cases hy : y ∈ O
    · simp [hv h hh y hy]
    · simp [h0 y hy]
  have h2 : ∫ y, α y * h (x * y) ∂μ = -∫ m, (∫ y, α y * h (m * x * y) ∂μ - ∫ y, α y * h (x * y) ∂μ) ∂ν := by
    rw [integral_sub hI.integral_prod_left (integrable_const _), h1]
    simp
  rw [h2, enorm_neg]
  refine (enorm_integral_le_lintegral_enorm _).trans ((lintegral_mono_ae ?_).trans
    (le_of_eq (by rw [lintegral_const, measure_univ, mul_one])))
  filter_upwards [hνU] with m hm
  have := diff_est hα hh.1 hB (hU _ hm) x
  rwa [show x * (x⁻¹ * m * x) = m * x by group] at this

theorem near_cusp_estimate : NearEst := by
  intro G _ _ _ _ _ _ _ _ μ _ Γ _ D hD hd α hc hs C hC e he
  have hα : Integrable α μ := hc.integrable_of_hasCompactSupport hs
  obtain ⟨B, hB, hU⟩ := uniform_continuity_estimate G α hc hs
  obtain ⟨M, hM, hL⟩ := compact_integral_quotient_bound G μ Γ D hD hd _ (hC.mul hB)
  obtain ⟨d, hd0, hde⟩ : ∃ d : ℝ, 0 < d ∧ ENNReal.ofReal d ^ 2 * M ≤ e := by
    have ht : Tendsto (fun d : ℝ => ENNReal.ofReal d ^ 2 * M) (𝓝[>] 0) (𝓝 (ENNReal.ofReal 0 ^ 2 * M)) :=
      ENNReal.Tendsto.mul_const (((ENNReal.continuous_pow 2).comp ENNReal.continuous_ofReal).continuousWithinAt)
        (Or.inr hM)
    rw [ENNReal.ofReal_zero, zero_pow two_ne_zero, zero_mul] at ht
    exact ((eventually_mem_nhdsWithin (s := Ioi (0 : ℝ))).and (ht.eventually (ge_mem_nhds he))).exists
  obtain ⟨U, hU1, hUe⟩ := hU d hd0
  obtain ⟨t, htC, ht⟩ := hC.elim_nhds_subcover (fun p => (fun x => p⁻¹ * x) ⁻¹' U) fun p _ =>
    (continuous_const.mul continuous_id).continuousAt.preimage_mem_nhds (by simpa using hU1)
  refine ⟨t.card, fun i => t.equivFin.symm i, fun h hh hΓ h0 x hx => ?_⟩
  obtain ⟨p, hp, hxp⟩ := mem_iUnion₂.1 (ht hx)
  have h1 := diff_est hα hh hB (hUe _ hxp) p
  have h2 := h0 (t.equivFin ⟨p, hp⟩)
  simp only [Equiv.symm_apply_apply] at h2
  rw [mul_inv_cancel_left, h2, sub_zero] at h1
  have h3 : ∫⁻ y in B, ‖h (p * y)‖ₑ ∂μ ≤ ∫⁻ y in C * B, ‖h y‖ₑ ∂μ := by
    rw [← (measurePreserving_mul_left μ p).setLIntegral_comp_preimage_emb (measurableEmbedding_mulLeft p)
      (fun y => ‖h y‖ₑ) (C * B)]
    exact lintegral_mono_set fun y hy => ⟨p, htC p hp, y, hy, rfl⟩
  have h4 := hL (fun y => ‖h y‖ₑ) hh.1.measurable.enorm fun g hg y => by simp only [hΓ g hg]
  calc _ ≤ (ENNReal.ofReal d * ∫⁻ y in C * B, ‖h y‖ₑ ∂μ) ^ 2 := by gcongr; exact h1.trans (by gcongr)
    _ ≤ ENNReal.ofReal d ^ 2 * (M * sq μ D h) := by rw [mul_pow]; gcongr; exact h4
    _ ≤ _ := by rw [← mul_assoc]; gcongr

theorem exists_small {M : ℝ≥0∞} (hM : M ≠ ∞) : ∃ d : ℝ, 0 < d ∧ ENNReal.ofReal d * M ≤ 8⁻¹ := by
  have ht : Tendsto (fun d : ℝ => ENNReal.ofReal d * M) (𝓝[>] 0) (𝓝 (ENNReal.ofReal 0 * M)) :=
    ENNReal.Tendsto.mul_const ENNReal.continuous_ofReal.continuousWithinAt (Or.inr hM)
  rw [ENNReal.ofReal_zero, zero_mul] at ht
  exact ((eventually_mem_nhdsWithin (s := Ioi (0 : ℝ))).and (ht.eventually (ge_mem_nhds (by simp)))).exists

theorem add_sq_le (a b : ℝ≥0∞) : (a + b) ^ 2 ≤ 2 * (a ^ 2 + b ^ 2) := by
  have := ENNReal.rpow_add_le_mul_rpow_add_rpow a b (p := 2) one_le_two
  norm_num at this
  exact this

theorem discrete_series_bound_of_inputs : Core := by
  intro G _ _ _ _ _ _ _ _ μ _ _ Γ _ D hD hd φ O hφ hO h0 hcusp
  obtain ⟨α, hc, hs, hα0, hap⟩ := approximation_of_square_identity G μ φ O hφ hO h0 8⁻¹ (by norm_num)
  have hα : Integrable α μ := hc.integrable_of_hasCompactSupport hs
  obtain ⟨B, hB, hU⟩ := uniform_continuity_estimate G α hc hs
  obtain ⟨e, he, heB⟩ := exists_small (hB.measure_lt_top (μ := μ)).ne
  obtain ⟨U, hU1, hUe⟩ := hU e he
  obtain ⟨C, hC, hCx⟩ := hcusp U hU1
  obtain ⟨e₂, he₂, he₂C⟩ := exists_small (hC.measure_lt_top (μ := μ)).ne
  obtain ⟨m, p, hp⟩ := near_cusp_estimate G μ Γ D hD hd α hc hs C hC (ENNReal.ofReal e₂) (by simpa using he₂)
  refine ⟨m, α, p, hc, hs, fun h hh hfin hz => ?_⟩
  obtain ⟨hhc, M, hM⟩ := hh.1
  obtain ⟨hZm, hZ⟩ := near_cusp_measure_estimate G μ Γ D hD C hC
  set Z := {x | ∃ γ ∈ Γ, γ * x ∈ C}
  set S := sq μ D h with hS
  have hf : Measurable fun y => ‖h y‖ₑ := hhc.measurable.enorm
  have hfΓ : LInv Γ fun y => ‖h y‖ₑ := fun g hg y => by simp only [hh.2.1 g hg]
  have hm2 : Measurable fun p : G × G => ‖h (p.1 * p.2)‖ₑ := hf.comp measurable_mul
  let θ₁ : G → ℝ≥0∞ := fun y => ‖φ y - α y‖ₑ
  let θ₂ : G → ℝ≥0∞ := B.indicator fun _ => ENNReal.ofReal e
  have hθ₁ : AEMeasurable θ₁ μ := (hφ.sub hα).aestronglyMeasurable.enorm
  have hθ₂ : Measurable θ₂ := measurable_const.indicator hB.measurableSet
  have i₁ : ∫⁻ y, θ₁ y ∂μ ≤ 8⁻¹ := by
    refine (ofReal_integral_norm_eq_lintegral_enorm (hφ.sub hα)).symm.trans_le ?_
    refine (ENNReal.ofReal_le_ofReal hap).trans (le_of_eq ?_)
    rw [ENNReal.ofReal_inv_of_pos (by norm_num)]; simp
  have i₂ : ∫⁻ y, θ₂ y ∂μ ≤ 8⁻¹ := by
    rw [lintegral_indicator_const hB.measurableSet]; exact heB
  let r₁ : G → ℝ≥0∞ := fun x => (∫⁻ y, θ₁ y * ‖h (x * y)‖ₑ ∂μ) ^ 2
  let r₂ : G → ℝ≥0∞ := fun x => (∫⁻ y, θ₂ y * ‖h (x * y)‖ₑ ∂μ) ^ 2
  have y₁ : ∫⁻ x in D, r₁ x ∂μ ≤ 8⁻¹ ^ 2 * S := (young_convolution_inequality G μ Γ D hD _ θ₁ hf hθ₁ hfΓ).trans (by gcongr; rfl)
  have y₂ : ∫⁻ x in D, r₂ x ∂μ ≤ 8⁻¹ ^ 2 * S :=
    (young_convolution_inequality G μ Γ D hD _ θ₂ hf hθ₂.aemeasurable hfΓ).trans (by gcongr; rfl)
  have hr₂ : Measurable r₂ := (((hθ₂.comp measurable_snd).mul hm2).lintegral_prod_right').pow_const 2
  have pt : ∀ x, ‖h x‖ₑ ^ 2 ≤ 2 * (Z.indicator (fun _ => ENNReal.ofReal e₂ * S) x + r₂ x + r₁ x) := by
    intro x
    have hc' : Continuous fun y => h (x * y) := hhc.comp (continuous_const.mul continuous_id)
    have e1 : h x = ∫ y, α y * h (x * y) ∂μ + ∫ y, (φ y - α y) * h (x * y) ∂μ := by
      rw [← integral_add (integrable_mul_bc hα hc' fun _ => hM _) (integrable_mul_bc (φ := fun y => φ y - α y) (hφ.sub hα) hc' fun _ => hM _),
        hh.2.2 x]
      congr 1; funext y; ring
    have b1 : ‖∫ y, (φ y - α y) * h (x * y) ∂μ‖ₑ ^ 2 ≤ r₁ x := by
      refine pow_le_pow_left' ?_ 2
      exact (enorm_integral_le_lintegral_enorm _).trans (le_of_eq (by simp only [enorm_mul, θ₁]))
    have b2 : ‖∫ y, α y * h (x * y) ∂μ‖ₑ ^ 2 ≤ Z.indicator (fun _ => ENNReal.ofReal e₂ * S) x + r₂ x := by
      rcases hCx x with hx | hx
      · rw [indicator_of_mem (show x ∈ Z from hx)]
        obtain ⟨γ, hγ, hγx⟩ := hx
        have := hp h hh.1 hh.2.1 hz _ hγx
        simp only [mul_assoc, hh.2.1 γ hγ] at this
        exact this.trans le_self_add
      · refine le_trans ?_ le_add_self
        refine pow_le_pow_left' ?_ 2
        refine (far_from_cusp_estimate G μ φ α Γ O U B e hc hs hα0 hB hUe x hx h hh).trans (le_of_eq ?_)
        rw [← lintegral_const_mul' _ _ ENNReal.ofReal_ne_top, ← lintegral_indicator hB.measurableSet]
        congr 1; funext y
        by_cases hy : y ∈ B <;> simp [θ₂, hy]
    rw [e1]
    refine (pow_le_pow_left' (enorm_add_le _ _) 2).trans ((add_sq_le _ _).trans ?_)
    gcongr
  have tot : S ≤ 2 * (8⁻¹ * S + 8⁻¹ ^ 2 * S + 8⁻¹ ^ 2 * S) := by
    refine (lintegral_mono pt).trans ?_
    rw [lintegral_const_mul' _ _ (by simp), lintegral_add_left
      (f := fun a => Z.indicator (fun _ => ENNReal.ofReal e₂ * S) a + r₂ a) ((measurable_const.indicator hZm).add hr₂),
      lintegral_add_left (measurable_const.indicator hZm), lintegral_indicator_const hZm,
      Measure.restrict_apply hZm, inter_comm]
    refine mul_le_mul_right (add_le_add (add_le_add ?_ y₂) y₁) 2
    calc ENNReal.ofReal e₂ * S * μ (D ∩ Z) ≤ ENNReal.ofReal e₂ * S * μ C := by gcongr
      _ = ENNReal.ofReal e₂ * μ C * S := by ring
      _ ≤ _ := by gcongr
  lift S to NNReal using hfin with S' hS'
  have tot' : (S' : ℝ) ≤ 2 * (8⁻¹ * S' + 8⁻¹ ^ 2 * S' + 8⁻¹ ^ 2 * S') := by
    have := ENNReal.toReal_mono (by finiteness) tot
    rw [ENNReal.toReal_mul, ENNReal.toReal_add (by finiteness) (by finiteness),
      ENNReal.toReal_add (by finiteness) (by finiteness)] at this
    simpa using this
  have : (S' : ℝ) = 0 := le_antisymm (by nlinarith [S'.2]) S'.2
  exact_mod_cast this

theorem finite_dimensional_from_linear_forms : FiniteDimensionalFromLinearForms := by
  intro G _ _ _ _ _ _ _ _ μ _ Γ D φ hφ ⟨m, α, p, hc, hs, hdet⟩ S hS
  have hα : Integrable α μ := hc.integrable_of_hasCompactSupport hs
  have hi : ∀ {θ h : G → ℂ}, Integrable θ μ → BC h → ∀ x, Integrable (fun y => θ y * h (x * y)) μ :=
    fun hθ ⟨h1, _, hM⟩ x => integrable_mul_bc hθ (h1.comp (continuous_const.mul continuous_id)) fun _ => hM _
  let H₂ : Submodule ℂ (G → ℂ) :=
    { carrier := {h | IsRep μ φ Γ h ∧ MemLp h 2 (μ.restrict D)}
      add_mem' := fun {a b} ha hb => by
        obtain ⟨M, hM⟩ := ha.1.1.2
        obtain ⟨M', hM'⟩ := hb.1.1.2
        refine ⟨⟨⟨ha.1.1.1.add hb.1.1.1, M + M', fun x => norm_add_le_of_le (hM x) (hM' x)⟩,
          fun g hg x => by simp only [Pi.add_apply, ha.1.2.1 g hg, hb.1.2.1 g hg], fun x => ?_⟩, ha.2.add hb.2⟩
        simp only [Pi.add_apply, mul_add]
        rw [integral_add (hi hφ ha.1.1 x) (hi hφ hb.1.1 x), ← ha.1.2.2, ← hb.1.2.2]
      zero_mem' := ⟨⟨⟨continuous_const, 0, by simp⟩, fun _ _ _ => rfl, by simp⟩, MemLp.zero⟩
      smul_mem' := fun c a ha => by
        obtain ⟨M, hM⟩ := ha.1.1.2
        refine ⟨⟨⟨ha.1.1.1.const_smul c, ‖c‖ * M, fun x => by
          rw [Pi.smul_apply, norm_smul]; exact mul_le_mul_of_nonneg_left (hM x) (norm_nonneg _)⟩,
          fun g hg x => by simp only [Pi.smul_apply, ha.1.2.1 g hg], fun x => ?_⟩, ha.2.const_smul c⟩
        simp only [Pi.smul_apply, smul_eq_mul, mul_left_comm _ c]
        rw [integral_const_mul, ← ha.1.2.2] }
  let r : H₂ →ₗ[ℂ] Lp ℂ 2 (μ.restrict D) :=
    { toFun := fun h => h.2.2.toLp _
      map_add' := fun a b => MemLp.toLp_add _ _
      map_smul' := fun c a => MemLp.toLp_const_smul c _ }
  let l : H₂ →ₗ[ℂ] (Fin m → ℂ) :=
    { toFun := fun h i => ∫ y, α y * h.1 (p i * y) ∂μ
      map_add' := fun a b => funext fun i => by
        simp only [Submodule.coe_add, Pi.add_apply, mul_add]
        exact integral_add (hi hα a.2.1.1 _) (hi hα b.2.1.1 _)
      map_smul' := fun c a => funext fun i => by
        simp only [Submodule.coe_smul, Pi.smul_apply, smul_eq_mul, mul_left_comm _ c, RingHom.id_apply]
        exact integral_const_mul _ _ }
  have hker : LinearMap.ker l ≤ LinearMap.ker r := fun h hh => by
    have hfin : sq μ D h.1 ≠ ∞ := by
      have := (lintegral_rpow_enorm_lt_top_of_eLpNorm_lt_top two_ne_zero (by simp) h.2.2).ne
      simpa [sq] using this
    have h0 := hdet h.1 h.2.1 hfin fun i => congrFun hh i
    rw [sq, lintegral_eq_zero_iff (h.2.1.1.1.measurable.enorm.pow_const 2)] at h0
    refine (Lp.eq_zero_iff_ae_eq_zero).2 (h.2.2.coeFn_toLp.trans ?_)
    filter_upwards [h0] with x hx
    simpa using hx
  have hfd : FiniteDimensional ℂ (LinearMap.range r) := by
    have : FiniteDimensional ℂ (H₂ ⧸ LinearMap.ker l) := l.quotKerEquivRange.symm.finiteDimensional
    rw [← Submodule.range_liftQ _ r hker]
    infer_instance
  refine Submodule.finiteDimensional_of_le (S₂ := LinearMap.range r) fun F hF => ?_
  refine (LinearMap.range r).closed_of_finiteDimensional.closure_subset_iff.2 ?_ (hS F hF)
  rintro F' ⟨h, hh, hae⟩
  exact ⟨⟨h, hh, (memLp_congr_ae hae).1 (Lp.memLp F')⟩, Lp.ext ((MemLp.coeFn_toLp
    ((memLp_congr_ae hae).1 (Lp.memLp F'))).trans hae.symm)⟩

theorem representation_of_convolution : RepOfConv := by
  intro G _ _ _ _ _ _ _ _ μ _ Γ φ φ₀ s hφ hφ₀ hconv hs ⟨M, hM⟩ hΓ
  have hi : ∀ {θ : G → ℂ}, Integrable θ μ → ∀ x, Integrable (fun y => θ y * s (x * y)) μ := fun hθ x =>
    hθ.mul_bdd (hs.comp (measurable_const_mul x)).aestronglyMeasurable (Eventually.of_forall fun _ => hM _)
  have hb : ∀ {θ : G → ℂ}, Integrable θ μ → ∀ x, ‖∫ y, θ y * s (x * y) ∂μ‖ ≤ (∫ y, ‖θ y‖ ∂μ) * M := fun hθ x => by
    rw [← integral_mul_const]
    exact norm_integral_le_of_norm_le (hθ.norm.mul_const _) (Eventually.of_forall fun y => by
      rw [norm_mul]; exact mul_le_mul_of_nonneg_left (hM _) (norm_nonneg _))
  refine ⟨⟨continuous_iff_continuousAt.2 fun x₀ => tendsto_iff_norm_sub_tendsto_zero.2 ?_, _, hb hφ₀⟩,
    fun g hg x => ?_, fun x => ?_⟩
  · have ht : Tendsto (fun x : G => x⁻¹ * x₀) (𝓝 x₀) (𝓝 1) := by
      have h : Continuous fun x : G => x⁻¹ * x₀ := by fun_prop
      simpa using h.tendsto x₀
    refine squeeze_zero (fun _ => norm_nonneg _) (fun x => ?_)
      (by simpa using ((tendsto_transl hφ₀).comp ht).mul_const M)
    have e2 : ∫ y, φ₀ y * s (x * y) ∂μ = ∫ y, φ₀ (x⁻¹ * x₀ * y) * s (x₀ * y) ∂μ := by
      rw [← integral_mul_left_eq_self (fun y => φ₀ y * s (x * y)) (x⁻¹ * x₀)]
      simp only [← mul_assoc, mul_inv_cancel, one_mul]
    rw [norm_sub_rev, e2, ← integral_sub (hi hφ₀ x₀) (hi (hφ₀.comp_mul_left _) x₀)]
    simp only [← sub_mul]
    exact hb (hφ₀.sub (hφ₀.comp_mul_left _)) x₀
  · beta_reduce
    refine integral_congr_ae ?_
    filter_upwards [(measurePreserving_mul_left μ x).quasiMeasurePreserving.ae (hΓ g hg)] with y hy
    rw [mul_assoc, hy]
  · have h1 : Integrable (fun p : G × G => φ p.1 * φ₀ (p.1⁻¹ * p.2)) (μ.prod μ) :=
      (measurePreserving_prod_inv_mul μ μ).integrable_comp_of_integrable (hφ.mul_prod hφ₀)
    have h2 : Integrable (fun p : G × G => φ p.1 * φ₀ (p.1⁻¹ * p.2) * s (x * p.2)) (μ.prod μ) :=
      h1.mul_bdd (hs.comp (measurable_snd.const_mul x)).aestronglyMeasurable (Eventually.of_forall fun p => hM _)
    symm
    calc ∫ y, φ y * ∫ z, φ₀ z * s (x * y * z) ∂μ ∂μ = ∫ y, ∫ w, φ y * φ₀ (y⁻¹ * w) * s (x * w) ∂μ ∂μ := by
          refine integral_congr_ae (Eventually.of_forall fun y => ?_)
          beta_reduce
          rw [← integral_mul_left_eq_self (fun w => φ y * φ₀ (y⁻¹ * w) * s (x * w)) y, ← integral_const_mul]
          simp only [inv_mul_cancel_left, mul_assoc]
      _ = ∫ w, ∫ y, φ y * φ₀ (y⁻¹ * w) * s (x * w) ∂μ ∂μ := integral_integral_swap h2
      _ = _ := by simp only [integral_mul_const, hconv]

end CompanionTheory.D.gk.RF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.FiniteDimensionalFromLinearForms =====

-- ===== clump member: CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.PBAdel =====
-- clump-header: {"m": "CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.PBAdel", "h": "module\n\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.ShortIsot\npublic import Formalism.PeriodIntegrals.AdelClassFin\nimport Aesop.Main\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirVolumeRatios.VolumeClassRepresentatives.DensRat\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirVolumeRatios.VolumeClassRepresentatives.IwasawaBase\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.ConcreteLevelAdelicSubset\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdelClassFin\nimport Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RightRegularIsometricMultiplicative\nimport Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RrsSecondCountableAbs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Function.AEEqOfIntegral\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Topology Filter Set Matrix NumberField
open scoped ENNReal Pointwise InnerProductSpace

noncomputable section

namespace CompanionTheory.D.gk.RF

open Formalism.MainNotions.S Formalism.L2.SG.ProjRows Formalism.MainNotions.LeviCoordinates

theorem exists_GF (I : AutInst) (x : I.Gf) (hx : x ∈ PI.AdelClassFin.GFf I) : ∃ g : I.Ginf, (g, x) ∈ I.GFset := by
  obtain ⟨γ, hγ, h⟩ := hx
  exact ⟨fun v => Formalism.L2.S.S7.DensRat.ratReal I γ hγ v, γ, hγ, fun _ => rfl, h⟩

theorem adelic_cusp_of_infinite_cusp : CuspInf → CongK → CuspAdel := by
  intro hCI hCK I μf _ _ Γ hΓ Kp hKo hKc ph hph hconv U hU
  have : SecondCountableTopology I.Gf := rr_secondCountable I μf
  have : (I.muA μf).IsMulLeftInvariant := rr_muA_left I μf
  have : T2Space I.Gf := Formalism.L2.SG.Pf.finite_adeles_group_t2 I
  have hmem : ∀ {g : I.GA}, g ∈ I.GFset → g ∈ Γ := fun h => by rw [← SetLike.mem_coe, hΓ]; exact h
  obtain ⟨S, hS⟩ := _root_.adelic_class_set_finite I Kp hKo
  have hU' : (fun g : I.Ginf => ((g, 1) : I.GA)) ⁻¹' U ∈ 𝓝 1 :=
    (continuous_id.prodMk continuous_const).continuousAt.preimage_mem_nhds hU
  have hs : ∀ s : I.Gf, ∃ M : ℕ, 1 ≤ M ∧ ∀ g ∈ GamSet I M, ∃ x, s⁻¹ * x * s ∈ Kp ∧ (g, x) ∈ I.GFset := fun s =>
    hCK I ((fun x => s⁻¹ * x * s) ⁻¹' Kp) ((hKo.preimage (by fun_prop)).mem_nhds (by simp))
  choose M hM hMK using hs
  choose C hC hCy using fun s => hCI I (M s) (hM s) ph hph hconv _ hU'
  refine ⟨⋃ s ∈ S, C s ×ˢ ((fun k => s * k) '' Kp), S.isCompact_biUnion fun s _ =>
    (hC s).prod (hKc.image (continuous_const.mul continuous_id)), fun x => ?_⟩
  obtain ⟨γf, hγf, s, hsS, k, hk, hx⟩ := hS x.2
  obtain ⟨g₀, hg₀⟩ := exists_GF I γf hγf
  obtain ⟨y, hxe⟩ : ∃ y : I.Ginf, x = (g₀, γf) * (y, s * k) :=
    ⟨g₀⁻¹ * x.1, Prod.ext (by simp) (by simp [hx, mul_assoc])⟩
  generalize ((g₀, γf) : I.GA) = γ₀ at hxe hg₀
  rcases hCy s y with ⟨γ, hγ, hγy⟩ | ⟨ν, hν, hνU, hv⟩
  · obtain ⟨xf, hxf, hGF⟩ := hMK s γ hγ
    refine Or.inl ⟨(γ, xf) * γ₀⁻¹, Γ.mul_mem (hmem hGF) (Γ.inv_mem (hmem hg₀)), mem_iUnion₂.2 ⟨s, hsS, ?_⟩⟩
    rw [hxe, mul_assoc, inv_mul_cancel_left]
    exact ⟨hγy, s⁻¹ * xf * s * k, Kp.mul_mem hxf hk, by simp [mul_assoc]⟩
  right
  let j : I.Ginf → I.GA := fun m => γ₀ * (m, 1) * γ₀⁻¹
  have hjE : MeasurableEmbedding j :=
    (measurableEmbedding_mulRight γ₀⁻¹).comp ((measurableEmbedding_mulLeft γ₀).comp
      (measurableEmbedding_prod_mk_right 1))
  refine ⟨ν.map j, (Measure.isProbabilityMeasure_map_iff hjE.measurable.aemeasurable).2 hν, hjE.ae_map_iff.2 (hνU.mono fun m hm => ?_),
    fun h hh z hz => ?_⟩
  · have : x⁻¹ * j m * x = (y⁻¹ * m * y, 1) := by
      rw [hxe]
      refine Prod.ext ?_ ?_ <;> simp [j, mul_assoc]
    rw [this]
    exact hm
  have hK0 : μf Kp ≠ 0 := (hKo.measure_pos μf ⟨1, Kp.one_mem⟩).ne'
  have hK1 : μf Kp ≠ ∞ := hKc.measure_lt_top.ne
  obtain ⟨hhc, B, hB⟩ := hh.1
  have hright : ∀ k ∈ Kp, ∀ g f, h (g, f * k) = h (g, f) := fun k hk g f => by
    rw [hh.2.2 (g, f * k), hh.2.2 (g, f),
      ← integral_mul_left_eq_self (fun w => phK I μf ph Kp w * h ((g, f) * w)) ((1, k) : I.GA)]
    congr 1
    funext w
    have e1 : phK I μf ph Kp ((1, k) * w) = phK I μf ph Kp w := by
      simp only [phK, Prod.fst_mul, Prod.snd_mul, one_mul]
      congr 1
      by_cases hw : w.2 ∈ Kp
      · rw [indicator_of_mem (show w.2 ∈ (Kp : Set I.Gf) from hw),
          indicator_of_mem (show k * w.2 ∈ (Kp : Set I.Gf) from Kp.mul_mem hk hw)]
      · rw [indicator_of_notMem (show w.2 ∉ (Kp : Set I.Gf) from hw), indicator_of_notMem
          (show k * w.2 ∉ (Kp : Set I.Gf) from fun h => hw ((Kp.mul_mem_cancel_left hk).1 h))]
    rw [e1, ← mul_assoc ((g, f) : I.GA), show ((g, f) : I.GA) * (1, k) = (g, f * k) by simp]
  have hind : Integrable ((Kp : Set I.Gf).indicator fun _ => (((μf Kp).toReal⁻¹ : ℝ) : ℂ)) μf :=
    (integrable_indicator_iff hKo.measurableSet).2 (integrableOn_const hK1)
  have h0 := hv (fun g => h (g, s)) ⟨hhc.comp (by fun_prop), B, fun _ => hB _⟩
    (fun γ hγ g => by
      obtain ⟨xf, hxf, hGF⟩ := hMK s γ hγ
      have := hh.2.1 _ (hmem hGF) (g, s)
      rw [Prod.mk_mul_mk, show xf * s = s * (s⁻¹ * xf * s) by group, hright _ hxf] at this
      exact this)
    (fun g => by
      have e1 : (fun w : I.GA => phK I μf ph Kp w * h ((g, s) * w)) = fun w => (ph w.1 * h (g * w.1, s)) *
          (Kp : Set I.Gf).indicator (fun _ => (((μf Kp).toReal⁻¹ : ℝ) : ℂ)) w.2 := by
        funext w
        by_cases hw : w.2 ∈ Kp
        · have : h ((g, s) * w) = h (g * w.1, s) := hright _ hw _ _
          rw [this, phK]; ring
        · simp only [phK, indicator_of_notMem (show w.2 ∉ (Kp : Set I.Gf) from hw), mul_zero, zero_mul]
      rw [hh.2.2 (g, s), e1]
      refine (integral_prod_mul (μ := muInf I) (ν := μf) (fun z => ph z * h (g * z, s)) _).trans ?_
      rw [integral_indicator_const _ hKo.measurableSet, Measure.real, Complex.real_smul, ← Complex.ofReal_mul,
        mul_inv_cancel₀ (ENNReal.toReal_pos hK0 hK1).ne', Complex.ofReal_one, mul_one]) (y * z.1)
  rw [hjE.integral_map, ← h0]
  congr 1
  funext m
  have : j m * x * z = γ₀ * (m * (y * z.1), s * (k * z.2)) := by
    rw [hxe]
    refine Prod.ext ?_ ?_ <;> simp [j, mul_assoc]
  rw [this, hh.2.1 _ (hmem hg₀), hright _ (Kp.mul_mem hk hz)]

theorem convolution_operator_representation : ConvRep := by
  intro I μf _ _ fund hfund R hR φ₀ T hT Fv ⟨M, hM⟩
  have : SecondCountableTopology I.Gf := rr_secondCountable I μf
  have : (I.muA μf).IsMulLeftInvariant := rr_muA_left I μf
  have : (I.muA μf).IsMulRightInvariant := Formalism.L2.S.S7.IwasawaBase.muA_right I μf
  have : SigmaFinite (I.muA μf) := rr_muA_sigmaFinite I μf
  set μ := I.muA μf
  have hFD := rr_FD_of I μf fund hfund
  obtain ⟨r, hrm, hr⟩ := rr_exists_meas_rep hFD
  let f₀ := (Lp.aestronglyMeasurable Fv).mk
  have hf₀ : Measurable f₀ := (Lp.aestronglyMeasurable Fv).stronglyMeasurable_mk.measurable
  let f : I.GA → ℂ := {x | ‖f₀ x‖ ≤ M}.indicator f₀
  have hf : Measurable f := hf₀.indicator (measurableSet_le hf₀.norm measurable_const)
  have hfb : ∀ x, ‖f x‖ ≤ |M| := fun x => by
    by_cases hx : x ∈ {x | ‖f₀ x‖ ≤ M}
    · rw [show f x = f₀ x from indicator_of_mem hx _]; exact hx.trans (le_abs_self M)
    · rw [show f x = 0 from indicator_of_notMem hx _, norm_zero]; exact abs_nonneg M
  have hfe : ∀ᵐ x ∂μ, x ∈ fund → (Fv : I.GA → ℂ) x = f x := by
    rw [← ae_restrict_iff' hfund.1]
    filter_upwards [hM, (Lp.aestronglyMeasurable Fv).ae_eq_mk] with x h1 h2
    rw [show f x = f₀ x from indicator_of_mem (show x ∈ {x | ‖f₀ x‖ ≤ M} from (congrArg norm h2).ge.trans h1) _]
    exact h2
  have hN : ∀ᵐ x ∂μ, x ∉ rr_N (rr_GF I) fund := compl_mem_ae_iff.2 (rr_N_null hFD)
  have hrep : ∀ x, x ∉ rr_N (rr_GF I) fund → I.rep fund x = r x := fun x hx => by
    obtain ⟨γ, h1, h2, h3⟩ := hr x
    rw [h2]; exact rr_rep_eq hFD hx h1 h3
  have hse : ∀ᵐ x ∂μ, I.ext Fv x = f (r x) := by
    have h1 : ∀ᵐ x ∂μ, ∀ γ : rr_GF I, (γ : I.GA) * x ∈ fund → (Fv : I.GA → ℂ) (γ * x) = f (γ * x) :=
      ae_all_iff.2 fun γ => (measurePreserving_mul_left μ (γ : I.GA)).quasiMeasurePreserving.ae hfe
    filter_upwards [h1, hN] with x a b
    obtain ⟨γ, h1, h2, h3⟩ := hr x
    show (Fv : I.GA → ℂ) (I.rep fund x) = _
    rw [hrep x b, h2]
    exact a ⟨γ, h1⟩ h3
  have hs : Measurable fun x => f (r x) := hf.comp hrm
  refine ⟨fun x => f (r x), hs, ⟨_, fun _ => hfb _⟩, fun γ hγ => ?_, ?_⟩
  · filter_upwards [hN] with x hx
    rw [← hrep x hx, ← hrep _ (rr_N_smul (Γ := rr_GF I) hγ hx)]
    exact congrArg f (rr_rep_smul hFD hγ hx)
  have hm2 : Measurable fun p : I.GA × I.GA => f (r (p.1 * p.2)) := hs.comp measurable_mul
  have hI : ∀ A : Set I.GA, (μ.restrict fund) A < ∞ →
      Integrable (fun p : I.GA × I.GA => φ₀ p.2 * f (r (p.1 * p.2))) (((μ.restrict fund).restrict A).prod μ) :=
    fun A hA => by
      have : IsFiniteMeasure ((μ.restrict fund).restrict A) := ⟨by rwa [Measure.restrict_apply_univ]⟩
      exact (hT.1.comp_snd _).mul_bdd hm2.aestronglyMeasurable (Eventually.of_forall fun _ => hfb _)
  refine ae_eq_of_forall_setIntegral_eq_of_sigmaFinite
    (fun A _ hA => integrableOn_Lp_of_measure_ne_top _ one_le_two hA.ne)
    (fun A _ hA => (hI A hA).integral_prod_left) fun A hAm hA => ?_
  rw [← L2.inner_indicatorConstLp_one hAm hA.ne, hT.2, integral_integral_swap (hI A hA)]
  congr 1
  funext y
  rw [L2.inner_indicatorConstLp_one, integral_const_mul]
  congr 1
  refine integral_congr_ae (ae_restrict_of_ae ?_)
  filter_upwards [hR y Fv, ae_restrict_of_ae ((measurePreserving_mul_right μ y).quasiMeasurePreserving.ae hse)]
    with x a b
  rw [a, b]

end CompanionTheory.D.gk.RF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.PBAdel =====

-- ===== clump member: CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.ParabolicSubgroupDecomposition =====
-- clump-header: {"m": "CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.ParabolicSubgroupDecomposition", "h": "module\n\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.ShortIsot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Dynamics.Ergodic.Action.Regular\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Topology Filter Set
open scoped ENNReal Pointwise

noncomputable section

namespace CompanionTheory.D.gk.RF

theorem Disc.countable {G : Type} [Group G] [TopologicalSpace G] [LocallyCompactSpace G] [SecondCountableTopology G]
    {Λ : Subgroup G} (h : Disc Λ) : Countable Λ := by
  have : (Λ : Set G).Countable := by
    have e : (Λ : Set G) = ⋃ n, compactCovering G n ∩ Λ := by rw [← iUnion_inter, iUnion_compactCovering, univ_inter]
    rw [e]
    exact countable_iUnion fun n => (h _ (isCompact_compactCovering G n)).countable
  exact this.to_subtype

theorem Disc.exists_nhds {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [LocallyCompactSpace G]
    [T2Space G] {Λ : Subgroup G} (h : Disc Λ) :
    ∃ O ∈ 𝓝 (1 : G), ∀ a ∈ O, ∀ b ∈ O, a * b⁻¹ ∈ Λ → a = b := by
  obtain ⟨K, hK, hK1⟩ := exists_compact_mem_nhds (1 : G)
  have hcl : IsClosed ((K ∩ Λ) \ {1}) := ((h K hK).subset sdiff_subset).isClosed
  have hW : K ∩ ((K ∩ Λ) \ {1})ᶜ ∈ 𝓝 (1 : G) := inter_mem hK1 (hcl.isOpen_compl.mem_nhds fun h => h.2 rfl)
  obtain ⟨O, hO, hOW⟩ := exists_nhds_split_inv hW
  refine ⟨O, hO, fun a ha b hb hab => ?_⟩
  have := hOW a ha b hb
  rw [div_eq_mul_inv] at this
  by_contra hne
  exact this.2 ⟨⟨this.1, hab⟩, fun e => hne (mul_inv_eq_one.1 e)⟩

theorem fundamental_domain_inclusion : FundIn := by
  classical
  intro N _ _ _ _ _ _ _ _ Λ hd V hV hcov
  obtain ⟨O, hO, hinj⟩ := hd.exists_nhds
  obtain ⟨T, hTc, hT⟩ := TopologicalSpace.countable_cover_nhds
    (f := fun p : N => interior ((fun x => x * p⁻¹) ⁻¹' O)) fun p =>
      interior_mem_nhds.2 ((continuous_id.mul continuous_const).continuousAt.preimage_mem_nhds (by simpa using hO))
  have hTne : T.Nonempty := by
    have : (1 : N) ∈ ⋃ x ∈ T, interior ((fun y => y * x⁻¹) ⁻¹' O) := hT ▸ mem_univ _
    obtain ⟨p, hp, -⟩ := mem_iUnion₂.1 this
    exact ⟨p, hp⟩
  obtain ⟨p, rfl⟩ := hTc.exists_eq_range hTne
  let W : ℕ → Set N := fun i => V ∩ interior ((fun x => x * (p i)⁻¹) ⁻¹' O)
  have hWo : ∀ i, IsOpen (W i) := fun i => hV.inter isOpen_interior
  let S : ℕ → Set N := fun i => {m | ∃ l ∈ Λ, l * m ∈ W i}
  have hSo : ∀ i, IsOpen (S i) := fun i => by
    have : S i = ⋃ l ∈ Λ, (fun m => l * m) ⁻¹' W i := by ext m; simp [S]
    rw [this]
    exact isOpen_biUnion fun l _ => (hWo i).preimage (continuous_const.mul continuous_id)
  have hSi : ∀ i, ∀ l ∈ Λ, ∀ m, l * m ∈ S i ↔ m ∈ S i := fun i l hl m =>
    ⟨fun ⟨l', hl', h⟩ => ⟨l' * l, Λ.mul_mem hl' hl, by rwa [mul_assoc]⟩,
      fun ⟨l', hl', h⟩ => ⟨l' * l⁻¹, Λ.mul_mem hl' (Λ.inv_mem hl), by simpa [mul_assoc] using h⟩⟩
  have hex : ∀ m, ∃ i, m ∈ S i := fun m => by
    obtain ⟨l, hl, hlm⟩ := hcov m
    have : l * m ∈ ⋃ x ∈ range p, interior ((fun y => y * x⁻¹) ⁻¹' O) := hT ▸ mem_univ _
    obtain ⟨_, ⟨i, rfl⟩, hi⟩ := mem_iUnion₂.1 this
    exact ⟨i, l, hl, hlm, hi⟩
  refine ⟨⋃ i, W i \ ⋃ j < i, S j, MeasurableSet.iUnion fun i => (hWo i).measurableSet.diff
    (isOpen_biUnion (s := {j : ℕ | j < i}) fun j _ => hSo j).measurableSet,
    iUnion_subset fun i => sdiff_subset.trans inter_subset_left,
    fun m => ?_⟩
  have key : ∀ l : Λ, ∀ i, (l : N) * m ∈ W i \ ⋃ j < i, S j → i = Nat.find (hex m) := fun l i h => by
    refine ((Nat.find_eq_iff (hex m)).2 ⟨⟨l, l.2, h.1⟩, fun j hj hm => h.2 ?_⟩).symm
    exact mem_iUnion₂.2 ⟨j, hj, (hSi j l l.2 m).2 hm⟩
  obtain ⟨l, hl, hlm⟩ := Nat.find_spec (hex m)
  refine ⟨⟨l, hl⟩, mem_iUnion.2 ⟨_, hlm, fun h => ?_⟩, fun l' hl' => ?_⟩
  · obtain ⟨j, hj, hm⟩ := mem_iUnion₂.1 h
    exact Nat.find_min (hex m) hj ((hSi j l hl m).1 hm)
  · obtain ⟨i, hi⟩ := mem_iUnion.1 hl'
    obtain rfl := key l' i hi
    have a1 := mem_preimage.1 (interior_subset hi.1.2)
    have a2 := mem_preimage.1 (interior_subset hlm.2)
    have := hinj _ a1 _ a2 (by
      simpa [mul_assoc] using Λ.mul_mem l'.2 (Λ.inv_mem hl))
    exact Subtype.ext (mul_right_cancel (mul_right_cancel this))

theorem averaging_of_fundamental_domain : FundIn → Avg := by
  intro hF G _ _ _ _ _ _ _ _ N Λ hN hle hd V hV hVc hcov
  have : LocallyCompactSpace N := hN.locallyCompactSpace
  have : SecondCountableTopology N := TopologicalSpace.Subtype.secondCountableTopology _
  let Λ' : Subgroup N := Λ.subgroupOf N
  have hd' : Disc Λ' := fun C hC =>
    ((hd _ (hC.image continuous_subtype_val)).preimage Subtype.val_injective.injOn).subset
      fun x hx => ⟨mem_image_of_mem _ hx.1, hx.2⟩
  have := hd'.countable
  obtain ⟨D, hDm, hDV, hD⟩ := hF N Λ' hd' (Subtype.val ⁻¹' V) (hV.preimage continuous_subtype_val) fun m => by
    obtain ⟨l, hl, h⟩ := hcov m m.2
    exact ⟨⟨l, hle hl⟩, hl, h⟩
  let μ : Measure N := Measure.haar
  have hFD : ∀ g : N, IsFundamentalDomain Λ' ((fun x => x * g) ⁻¹' D) μ := fun g =>
    IsFundamentalDomain.mk' (measurable_mul_const g hDm).nullMeasurableSet fun m => by
      simpa [Subgroup.smul_def, mul_assoc] using hD (m * g)
  have hFD1 : IsFundamentalDomain Λ' D μ := by simpa using hFD 1
  have hfin : μ D ≠ ∞ := ((measure_mono (hDV.trans (preimage_mono subset_closure))).trans_lt
    (hN.isClosedEmbedding_subtypeVal.isCompact_preimage hVc).measure_lt_top).ne
  have hpos : μ D ≠ 0 := hFD1.measure_ne_zero (NeZero.ne μ)
  have hR : ∀ g : N, μ.map (fun x => x * g) = μ := fun g => by
    have h1 := Measure.isMulLeftInvariant_eq_smul (μ.map fun x => x * g) μ
    have h2 := congrArg (fun m : Measure N => m D) h1
    simp only [Measure.map_apply (measurable_mul_const g) hDm, Measure.smul_apply] at h2
    rw [(hFD g).measure_eq hFD1, ENNReal.smul_def, smul_eq_mul] at h2
    have h3 : ((μ.map fun x => x * g).haarScalarFactor μ : ℝ≥0∞) = 1 :=
      (ENNReal.mul_left_inj hpos hfin).1 (h2.symm.trans (one_mul _).symm)
    rw [h1, show (μ.map fun x => x * g).haarScalarFactor μ = 1 by exact_mod_cast h3, one_smul]
  have hE : MeasurableEmbedding (Subtype.val : N → G) := MeasurableEmbedding.subtype_coe hN.measurableSet
  have hP : IsProbabilityMeasure ((μ D)⁻¹ • μ.restrict D) :=
    ⟨by rw [Measure.smul_apply, Measure.restrict_apply_univ, smul_eq_mul, ENNReal.inv_mul_cancel hpos hfin]⟩
  refine ⟨((μ D)⁻¹ • μ.restrict D).map Subtype.val, (Measure.isProbabilityMeasure_map_iff hE.measurable.aemeasurable).2 hP,
    hE.ae_map_iff.2 (Measure.ae_smul_measure ((ae_restrict_mem hDm).mono fun x hx => hDV hx) _),
    fun u _ hu m₀ hm₀ y => ?_⟩
  rw [hE.integral_map, hE.integral_map, integral_smul_measure, integral_smul_measure]
  congr 1
  let g : N := ⟨m₀, hm₀⟩
  have hmp : MeasurePreserving (fun x : N => x * g⁻¹) μ μ := ⟨measurable_mul_const _, hR _⟩
  rw [← (hFD g⁻¹).setIntegral_eq hFD1 (f := fun m : N => u (m * y)) fun l x => by
      show u (((l : N) : G) * x * y) = _
      rw [mul_assoc]; exact hu _ l.2 _,
    ← hmp.setIntegral_preimage_emb (measurableEmbedding_mulRight g⁻¹) (fun m : N => u (m * (m₀ * y))) D]
  congr 1
  funext x
  simp [g]

theorem parabolic_subgroup_decomposition : ParPi := by
  intro ι _ _ G _ _ _ i₀ N a Ht P
  refine ⟨(continuous_mulSingle i₀).comp P.cont, fun s t => by rw [P.add, Pi.mulSingle_mul], ?_,
    P.hcont.comp (continuous_apply i₀), ?_, fun t g => by simp [P.ha], ?_, fun U hU => ?_⟩
  · rintro t _ ⟨m, hm, rfl⟩
    refine ⟨_, P.norm t m hm, ?_⟩
    simp [Pi.mulSingle_mul, Pi.mulSingle_inv]
  · rintro _ ⟨m, hm, rfl⟩ g
    simp [P.hN m hm]
  · obtain ⟨c, hc, hb⟩ := P.bd
    exact ⟨fun y => c (y i₀), hc.comp (continuous_apply i₀), fun x y => hb _ _⟩
  · obtain ⟨τ, hτ, h⟩ := P.small (Pi.mulSingle i₀ ⁻¹' U)
      ((continuous_mulSingle i₀).continuousAt.preimage_mem_nhds (by simpa using hU))
    refine ⟨τ, hτ, fun t ht x => ?_⟩
    obtain ⟨m, hm, hx⟩ := h t ht (x i₀)
    refine ⟨_, ⟨m, hm, rfl⟩, ?_⟩
    refine (congrArg (· ∈ U) ?_).mpr (mem_preimage.1 hx)
    funext i
    by_cases hi : i = i₀
    · subst hi; simp
    · simp [Pi.mulSingle_eq_of_ne hi]

end CompanionTheory.D.gk.RF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.ParabolicSubgroupDecomposition =====

-- ===== clump member: CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.RealParabolicDecomposition =====
-- clump-header: {"m": "CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.RealParabolicDecomposition", "h": "module\n\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.ShortIsot\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.ModularCharacterEqOneOnExpHermitian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Matrix.Hermitian\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Topology Filter
open scoped ComplexOrder

noncomputable section

namespace CompanionTheory.D.gk.RF

open Formalism.MainNotions.S Formalism.REAL

variable {n : ℕ} {J : Matrix (Fin n) (Fin n) ℂ} {W : Submodule ℂ (Fin n → ℂ)}

def Sc (J : Matrix (Fin n) (Fin n) ℂ) (W : Submodule ℂ (Fin n → ℂ)) (l m : ℂ) (g : Matrix (Fin n) (Fin n) ℂ) : Prop :=
  (∀ w ∈ W, g *ᵥ w = l • w) ∧ (∀ z ∈ perp J W, g *ᵥ z - z ∈ W) ∧ ∀ z, g *ᵥ z - m • z ∈ perp J W

theorem lowers_iff {g : Matrix (Fin n) (Fin n) ℂ} : Lowers J W (g - 1) ↔ Sc J W 1 1 g := by
  simp only [Lowers, Sc, sub_mulVec, one_mulVec, one_smul, sub_eq_zero]

theorem Sc.mul (hW : Isot J W) {l m l' m' : ℂ} {g h : Matrix (Fin n) (Fin n) ℂ} (hg : Sc J W l m g)
    (hh : Sc J W l' m' h) : Sc J W (l * l') (m * m') (g * h) := by
  have gW : ∀ w ∈ W, g *ᵥ w ∈ W := fun w hw => by rw [hg.1 w hw]; exact W.smul_mem _ hw
  have gP : ∀ z ∈ perp J W, g *ᵥ z ∈ perp J W := fun z hz => by
    simpa using (perp J W).add_mem (hW (hg.2.1 z hz)) hz
  refine ⟨fun w hw => ?_, fun z hz => ?_, fun z => ?_⟩
  · rw [← mulVec_mulVec, hh.1 w hw, mulVec_smul, hg.1 w hw, smul_smul, mul_comm]
  · have := W.add_mem (gW _ (hh.2.1 z hz)) (hg.2.1 z hz)
    rwa [mulVec_sub, sub_add_sub_cancel, mulVec_mulVec] at this
  · have := (perp J W).add_mem (gP _ (hh.2.2 z)) ((perp J W).smul_mem m' (hg.2.2 z))
    rwa [mulVec_sub, mulVec_smul, smul_sub, sub_add_sub_cancel, mulVec_mulVec, smul_smul, mul_comm m'] at this

theorem Sc.inv (hW : Isot J W) {g h : Matrix (Fin n) (Fin n) ℂ} (hg : Sc J W 1 1 g) (e : h * g = 1) :
    Sc J W 1 1 h := by
  have e' : ∀ z, h *ᵥ (g *ᵥ z) = z := fun z => by rw [mulVec_mulVec, e, one_mulVec]
  have h1 : ∀ w ∈ W, h *ᵥ w = w := fun w hw => by
    have := e' w
    rwa [hg.1 w hw, one_smul] at this
  have h0 : ∀ z, h *ᵥ z - z = -(h *ᵥ (g *ᵥ z - z)) := fun z => by rw [mulVec_sub, e', neg_sub]
  have h2 : ∀ z ∈ perp J W, h *ᵥ z - z ∈ W := fun z hz => by
    rw [h0, h1 _ (hg.2.1 z hz)]; exact W.neg_mem (hg.2.1 z hz)
  refine ⟨fun w hw => by rw [h1 w hw, one_smul], h2, fun z => ?_⟩
  have h3 := hg.2.2 z
  rw [one_smul] at h3 ⊢
  rw [h0]
  simpa using (perp J W).neg_mem ((perp J W).add_mem (hW (h2 _ h3)) h3)

theorem uMat_mul {ε : Fin n → Bool} (g h : UJ ε) : uMat (g * h) = uMat g * uMat h := rfl

theorem uMat_inv_mulF {ε : Fin n → Bool} (g : UJ ε) : uMat g⁻¹ * uMat g = 1 := by
  rw [← uMat_mul, inv_mul_cancel]; rfl

theorem uMat_mul_invF {ε : Fin n → Bool} (g : UJ ε) : uMat g * uMat g⁻¹ = 1 := by
  rw [← uMat_mul, mul_inv_cancel]; rfl

theorem continuous_uMat {ε : Fin n → Bool} : Continuous (uMat : UJ ε → _) := (isClosedEmbeddingMatrix n ε).1.continuous

theorem unipotent_radical_subgroup : NWSub := by
  intro n ε W hW
  constructor
  · have hc : ∀ z, Continuous fun g : UJ ε => (uMat g - 1) *ᵥ z := fun z =>
      (continuous_uMat.sub continuous_const).matrix_mulVec continuous_const
    have : NWset ε W = (⋂ w ∈ W, {g | (uMat g - 1) *ᵥ w = 0}) ∩
        ((⋂ z ∈ perp (Jm ε) W, (fun g : UJ ε => (uMat g - 1) *ᵥ z) ⁻¹' (W : Set _)) ∩
          ⋂ z, (fun g : UJ ε => (uMat g - 1) *ᵥ z) ⁻¹' (perp (Jm ε) W : Set _)) := by
      ext g; simp [NWset, Lowers]
    rw [this]
    exact (isClosed_biInter fun w _ => isClosed_eq (hc w) continuous_const).inter
      ((isClosed_biInter fun z _ => W.closed_of_finiteDimensional.preimage (hc z)).inter
        (isClosed_iInter fun z => (perp (Jm ε) W).closed_of_finiteDimensional.preimage (hc z)))
  · exact ⟨{ carrier := NWset ε W
             mul_mem' := fun {a b} ha hb => lowers_iff.2 (by
               simpa [uMat_mul] using (lowers_iff.1 ha).mul hW (lowers_iff.1 hb))
             one_mem' := by
               show Lowers _ _ ((1 : Matrix (Fin n) (Fin n) ℂ) - 1)
               rw [sub_self]
               exact ⟨fun _ _ => zero_mulVec _, fun _ _ => by rw [zero_mulVec]; exact W.zero_mem,
                 fun _ => by rw [zero_mulVec]; exact Submodule.zero_mem _⟩
             inv_mem' := fun {a} ha => lowers_iff.2 ((lowers_iff.1 ha).inv hW (uMat_inv_mulF a)) }, rfl⟩

def IsPr (W : Submodule ℂ (Fin n → ℂ)) (p : Matrix (Fin n) (Fin n) ℂ) : Prop :=
  pᴴ = p ∧ (∀ z, p *ᵥ z ∈ W) ∧ ∀ w ∈ W, p *ᵥ w = w

theorem exists_isPr (W : Submodule ℂ (Fin n → ℂ)) : ∃ p, IsPr W p := by
  let e := WithLp.linearEquiv 2 ℂ (Fin n → ℂ)
  let K : Submodule ℂ (EuclideanSpace ℂ (Fin n)) := W.comap (e : EuclideanSpace ℂ (Fin n) →ₗ[ℂ] (Fin n → ℂ))
  let P : EuclideanSpace ℂ (Fin n) →ₗ[ℂ] EuclideanSpace ℂ (Fin n) := K.starProjection
  have hP : ∀ z, Matrix.toEuclideanLin.symm P *ᵥ z = (P (WithLp.toLp 2 z)).ofLp := fun z => by
    conv_rhs => rw [← Matrix.toEuclideanLin.apply_symm_apply P]
    rfl
  refine ⟨Matrix.toEuclideanLin.symm P, ?_, fun z => ?_, fun w hw => ?_⟩
  · refine Matrix.isSymmetric_toEuclideanLin_iff.mp ?_
    rw [LinearEquiv.apply_symm_apply]
    exact K.starProjection_isSymmetric
  · rw [hP]; exact K.starProjection_apply_mem _
  · rw [hP]
    exact congrArg WithLp.ofLp (Submodule.starProjection_eq_self_iff.2 (show WithLp.toLp 2 w ∈ K from hw))

theorem mat_extF {A B : Matrix (Fin n) (Fin n) ℂ} (h : ∀ z, A *ᵥ z = B *ᵥ z) : A = B :=
  Matrix.toLin'.injective (LinearMap.ext h)

theorem IsPr.sq {p : Matrix (Fin n) (Fin n) ℂ} (hp : IsPr W p) : p * p = p :=
  mat_extF fun z => by rw [← mulVec_mulVec, hp.2.2 _ (hp.2.1 z)]

theorem IsPr.dot {p : Matrix (Fin n) (Fin n) ℂ} (hp : IsPr W p) (y z : Fin n → ℂ) :
    star y ⬝ᵥ (p *ᵥ z) = star (p *ᵥ y) ⬝ᵥ z := by
  rw [star_mulVec, hp.1, dotProduct_mulVec]

theorem IsPr.kill {p : Matrix (Fin n) (Fin n) ℂ} (hp : IsPr W p) {z : Fin n → ℂ} (hz : z ∈ perp J W) :
    p *ᵥ (J *ᵥ z) = 0 := by
  refine dotProduct_star_self_eq_zero.1 ?_
  rw [hp.dot]
  exact hz _ (hp.2.1 _)

theorem IsPr.entry {p : Matrix (Fin n) (Fin n) ℂ} (hp : IsPr W p) (i j : Fin n) : ‖p i j‖ ≤ 1 := by
  have h : ∀ j, ((∑ k, ‖p k j‖ ^ 2 : ℝ) : ℂ) = p j j := fun j => by
    conv_rhs => rw [← hp.sq, ← hp.1]
    rw [hp.1]
    conv_rhs => rw [show p * p = pᴴ * p by rw [hp.1]]
    simp only [Matrix.mul_apply, conjTranspose_apply, Complex.ofReal_sum, Complex.ofReal_pow, Complex.star_def,
      Complex.conj_mul']
  have h1 : ∀ k, ‖p k j‖ ^ 2 ≤ ‖p j j‖ := fun k => by
    rw [← h j, Complex.norm_real, Real.norm_of_nonneg (Finset.sum_nonneg fun _ _ => sq_nonneg _)]
    exact Finset.single_le_sum (f := fun k => ‖p k j‖ ^ 2) (fun _ _ => sq_nonneg _) (Finset.mem_univ k)
  have h2 : ‖p j j‖ ≤ 1 := by nlinarith [h1 j, norm_nonneg (p j j)]
  nlinarith [h1 i, norm_nonneg (p i j)]

def am (J p : Matrix (Fin n) (Fin n) ℂ) (t : ℝ) : Matrix (Fin n) (Fin n) ℂ :=
  1 + ((Real.exp t - 1 : ℝ) : ℂ) • p + ((Real.exp (-t) - 1 : ℝ) : ℂ) • (J * p * J)

theorem expand {p q : Matrix (Fin n) (Fin n) ℂ} (hp : p * p = p) (hq : q * q = q) (hpq : p * q = 0) (hqp : q * p = 0)
    (a b c d : ℂ) : (1 + a • p + b • q) * (1 + c • p + d • q) =
      1 + (a + c + a * c) • p + (b + d + b * d) • q := by
  simp only [Matrix.add_mul, Matrix.mul_add, Matrix.one_mul, Matrix.mul_one, Matrix.smul_mul, Matrix.mul_smul, hp, hq,
    hpq, hqp, smul_zero, add_smul]
  module

section Am

variable {ε : Fin n → Bool} {p : Matrix (Fin n) (Fin n) ℂ}

alias Jm_sq := _root_.Formalism.REAL.Jm_mul_self

theorem pJp (hW : Isot (Jm ε) W) (hp : IsPr W p) : p * Jm ε * p = 0 :=
  mat_extF fun z => by rw [← mulVec_mulVec, ← mulVec_mulVec, hp.kill (hW (hp.2.1 z)), zero_mulVec]

theorem q_facts (hW : Isot (Jm ε) W) (hp : IsPr W p) :
    (Jm ε * p * Jm ε) * (Jm ε * p * Jm ε) = Jm ε * p * Jm ε ∧ p * (Jm ε * p * Jm ε) = 0 ∧
      (Jm ε * p * Jm ε) * p = 0 := by
  refine ⟨?_, ?_, ?_⟩
  · calc _ = Jm ε * p * (Jm ε * Jm ε) * p * Jm ε := by simp only [Matrix.mul_assoc]
      _ = _ := by rw [Jm_sq, Matrix.mul_one, Matrix.mul_assoc (Jm ε), hp.sq]
  · rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, pJp hW hp, Matrix.zero_mul]
  · rw [Matrix.mul_assoc, Matrix.mul_assoc, ← Matrix.mul_assoc p, pJp hW hp, Matrix.mul_zero]

theorem am_add (hW : Isot (Jm ε) W) (hp : IsPr W p) (s t : ℝ) : am (Jm ε) p (s + t) = am (Jm ε) p s * am (Jm ε) p t := by
  obtain ⟨h1, h2, h3⟩ := q_facts hW hp
  rw [am, am, am, expand hp.sq h1 h2 h3, neg_add, Real.exp_add, Real.exp_add]
  congr 2
  · congr 1; push_cast; ring
  · push_cast; ring

theorem am_mem (hW : Isot (Jm ε) W) (hp : IsPr W p) (t : ℝ) : inUJ ε (am (Jm ε) p t) := by
  have hH : (am (Jm ε) p t)ᴴ = am (Jm ε) p t := by
    simp only [am, conjTranspose_add, conjTranspose_one, conjTranspose_smul, conjTranspose_mul, hp.1, _root_.Formalism.REAL.Jm_conjTranspose,
      Complex.star_def, Complex.conj_ofReal, Matrix.mul_assoc]
  have hJ : am (Jm ε) p t * Jm ε = Jm ε * am (Jm ε) p (-t) := by
    simp only [am, neg_neg, Matrix.add_mul, Matrix.mul_add, Matrix.one_mul, Matrix.mul_one, Matrix.smul_mul,
      Matrix.mul_smul, Matrix.mul_assoc, Jm_sq]
    rw [← Matrix.mul_assoc (Jm ε) (Jm ε), Jm_sq, Matrix.one_mul]
    abel
  rw [inUJ, hH, hJ, Matrix.mul_assoc, ← am_add hW hp, neg_add_cancel]
  simp [am]

theorem am_sc (hW : Isot (Jm ε) W) (hp : IsPr W p) (t : ℝ) :
    Sc (Jm ε) W (Real.exp t) (Real.exp (-t)) (am (Jm ε) p t) := by
  have hv : ∀ z, am (Jm ε) p t *ᵥ z = z + ((Real.exp t - 1 : ℝ) : ℂ) • p *ᵥ z +
      ((Real.exp (-t) - 1 : ℝ) : ℂ) • Jm ε *ᵥ (p *ᵥ (Jm ε *ᵥ z)) := fun z => by
    simp only [am, add_mulVec, one_mulVec, smul_mulVec, mulVec_mulVec, Matrix.mul_assoc]
  refine ⟨fun w hw => ?_, fun z hz => ?_, fun z => ?_⟩
  · rw [hv, hp.kill (hW hw), hp.2.2 w hw, mulVec_zero]
    push_cast
    module
  · rw [hv, hp.kill hz, mulVec_zero, smul_zero, add_zero, add_sub_cancel_left]
    exact W.smul_mem _ (hp.2.1 z)
  · have h1 : Jm ε *ᵥ (p *ᵥ (Jm ε *ᵥ z)) - z ∈ perp (Jm ε) W := fun w hw => by
      rw [hf, mulVec_sub, mulVec_mulVec, Jm_sq, one_mulVec, dotProduct_sub, hp.dot, hp.2.2 w hw, sub_self]
    have := (perp (Jm ε) W).add_mem ((perp (Jm ε) W).smul_mem ((Real.exp t - 1 : ℝ) : ℂ) (hW (hp.2.1 z)))
      ((perp (Jm ε) W).smul_mem ((Real.exp (-t) - 1 : ℝ) : ℂ) h1)
    convert this using 1
    rw [hv]
    push_cast
    module

theorem hf_uMatF (x : UJ ε) (y z : Fin n → ℂ) : hf (Jm ε) (uMat x *ᵥ y) (uMat x *ᵥ z) = hf (Jm ε) y z := by
  have hx : (uMat x)ᴴ * Jm ε * uMat x = Jm ε := x.2
  rw [hf, hf, star_mulVec, ← dotProduct_mulVec, mulVec_mulVec, mulVec_mulVec, hx]

end Am

theorem norm_mulVec_le (M : Matrix (Fin n) (Fin n) ℂ) (v : Fin n → ℂ) :
    ‖M *ᵥ v‖ ≤ (1 + ∑ i, ∑ j, ‖M i j‖) * ‖v‖ := by
  refine (pi_norm_le_iff_of_nonneg (by positivity)).2 fun i => ?_
  calc ‖(M *ᵥ v) i‖ ≤ ∑ j, ‖M i j‖ * ‖v‖ :=
        (norm_sum_le Finset.univ fun j => M i j * v j).trans (Finset.sum_le_sum fun j _ => by
        rw [norm_mul]; exact mul_le_mul_of_nonneg_left (norm_le_pi_norm v j) (norm_nonneg _))
    _ ≤ _ := by
        rw [← Finset.sum_mul]
        refine mul_le_mul_of_nonneg_right (le_add_of_nonneg_of_le zero_le_one ?_) (norm_nonneg _)
        exact Finset.single_le_sum (f := fun i => ∑ j, ‖M i j‖)
          (fun _ _ => Finset.sum_nonneg fun _ _ => norm_nonneg _) (Finset.mem_univ i)

theorem real_parabolic_decomposition : RealPar := by
  intro n ε W hW0 hW N hN
  have hmem : ∀ g, g ∈ N ↔ Sc (Jm ε) W 1 1 (uMat g) := fun g => by
    rw [← lowers_iff, ← SetLike.mem_coe, hN]; rfl
  obtain ⟨w₀, hw₀, hw0⟩ := (Submodule.ne_bot_iff W).1 hW0
  obtain ⟨p, hp⟩ := exists_isPr W
  let a : ℝ → UJ ε := fun t => indefiniteUnitaryMk ε _ (am_mem hW hp t)
  have hadd : ∀ s t, a (s + t) = a s * a t := fun s t => indefinite_unitary_ext (am_add hW hp s t)
  have ha0 : a 0 = 1 := indefinite_unitary_ext (by show am _ _ 0 = 1; simp [am])
  have hinv : ∀ t, (a t)⁻¹ = a (-t) := fun t => inv_eq_of_mul_eq_one_right (by rw [← hadd, add_neg_cancel, ha0])
  have hee : ∀ t : ℝ, ((Real.exp t : ℝ) : ℂ) * (Real.exp (-t) : ℝ) = 1 := fun t => by
    rw [← Complex.ofReal_mul, ← Real.exp_add, add_neg_cancel, Real.exp_zero, Complex.ofReal_one]
  have hne : ∀ g : UJ ε, uMat g⁻¹ *ᵥ w₀ ≠ 0 := fun g h => hw0 (by
    rw [← one_mulVec w₀, ← uMat_mul_invF g, ← mulVec_mulVec, h, mulVec_zero])
  have hamc : Continuous fun q : ℝ × Matrix (Fin n) (Fin n) ℂ => am (Jm ε) q.2 q.1 := by
    unfold am
    have c1 : Continuous fun q : ℝ × Matrix (Fin n) (Fin n) ℂ => ((Real.exp q.1 - 1 : ℝ) : ℂ) := by fun_prop
    have c2 : Continuous fun q : ℝ × Matrix (Fin n) (Fin n) ℂ => ((Real.exp (-q.1) - 1 : ℝ) : ℂ) := by fun_prop
    exact (continuous_const.add (c1.smul continuous_snd)).add
      (c2.smul ((continuous_const.matrix_mul continuous_snd).matrix_mul continuous_const))
  let S : UJ ε → ℝ := fun g => 1 + ∑ i, ∑ j, ‖uMat g i j‖
  have hS1 : ∀ g, 1 ≤ S g := fun g => le_add_of_nonneg_right
    (Finset.sum_nonneg fun _ _ => Finset.sum_nonneg fun _ _ => norm_nonneg _)
  have hSc : Continuous fun g => Real.log (S g) :=
    (continuous_const.add (continuous_finsetSum _ fun i _ => continuous_finsetSum _ fun j _ =>
      (continuous_uMat.matrix_elem i j).norm)).log fun g => (one_pos.trans_le (hS1 g)).ne'
  refine ⟨a, fun g => -Real.log ‖uMat g⁻¹ *ᵥ w₀‖, ?_, hadd, fun t m hm => ?_, ?_, fun m hm g => ?_, fun t g => ?_,
    ⟨fun y => Real.log (S y) + Real.log (S y⁻¹), hSc.add (hSc.comp continuous_inv), fun x y => ?_⟩, fun U hU => ?_⟩
  · exact (isClosedEmbeddingMatrix n ε).1.isInducing.continuous_iff.2 (hamc.comp (continuous_id.prodMk continuous_const))
  · rw [hmem, hinv]
    have := ((am_sc hW hp t).mul hW ((hmem m).1 hm)).mul hW (am_sc hW hp (-t))
    rwa [mul_one, mul_one, neg_neg, hee, mul_comm, hee] at this
  · exact (((continuous_uMat.comp continuous_inv).matrix_mulVec continuous_const).norm.log
      fun g => norm_ne_zero_iff.2 (hne g)).neg
  · rw [_root_.mul_inv_rev, uMat_mul, ← mulVec_mulVec, ((hmem _).1 (N.inv_mem hm)).1 w₀ hw₀, one_smul]
  · rw [_root_.mul_inv_rev, uMat_mul, ← mulVec_mulVec, hinv]
    have : uMat (a (-t)) *ᵥ w₀ = ((Real.exp (-t) : ℝ) : ℂ) • w₀ := (am_sc hW hp (-t)).1 w₀ hw₀
    rw [this, mulVec_smul, norm_smul, Complex.norm_real, Real.norm_of_nonneg (Real.exp_pos _).le,
      Real.log_mul (Real.exp_pos _).ne' (norm_ne_zero_iff.2 (hne g)), Real.log_exp]
    ring
  · have p1 := norm_pos_iff.2 (hne x)
    have p2 := norm_pos_iff.2 (hne (x * y))
    have e1 : uMat (x * y)⁻¹ *ᵥ w₀ = uMat y⁻¹ *ᵥ (uMat x⁻¹ *ᵥ w₀) := by
      rw [_root_.mul_inv_rev, uMat_mul, mulVec_mulVec]
    have e2 : uMat x⁻¹ *ᵥ w₀ = uMat y *ᵥ (uMat (x * y)⁻¹ *ᵥ w₀) := by
      rw [e1, mulVec_mulVec _ (uMat y), uMat_mul_invF, one_mulVec]
    have b1 : Real.log ‖uMat (x * y)⁻¹ *ᵥ w₀‖ ≤ Real.log (S y⁻¹) + Real.log ‖uMat x⁻¹ *ᵥ w₀‖ := by
      rw [← Real.log_mul (one_pos.trans_le (hS1 _)).ne' p1.ne']
      exact Real.log_le_log p2 (by rw [e1]; exact norm_mulVec_le _ _)
    have b2 : Real.log ‖uMat x⁻¹ *ᵥ w₀‖ ≤ Real.log (S y) + Real.log ‖uMat (x * y)⁻¹ *ᵥ w₀‖ := by
      rw [← Real.log_mul (one_pos.trans_le (hS1 _)).ne' p2.ne']
      exact Real.log_le_log p1 (by nth_rewrite 1 [e2]; exact norm_mulVec_le _ _)
    have c1 := Real.log_nonneg (hS1 y)
    have c2 := Real.log_nonneg (hS1 y⁻¹)
    rw [abs_le]
    constructor <;> linarith
  · rw [(isClosedEmbeddingMatrix n ε).1.isInducing.nhds_eq_comap, mem_comap] at hU
    obtain ⟨V, hV, hVU⟩ := hU
    have hK : IsCompact (Set.univ.pi fun _ : Fin n => Set.univ.pi fun _ : Fin n => Metric.closedBall (0 : ℂ) 1) :=
      isCompact_univ_pi fun _ => isCompact_univ_pi fun _ => isCompact_closedBall _ _
    have hev := hK.eventually_forall_of_forall_eventually (x₀ := (0 : ℝ))
      (P := fun t q => am (Jm ε) (Matrix.of q) t ∈ V) fun q _ =>
        hamc.continuousAt (x := (0, Matrix.of q)) (by
          show V ∈ 𝓝 (am (Jm ε) (Matrix.of q) 0)
          simpa [am] using hV)
    obtain ⟨τ, hτ, hb⟩ := Metric.eventually_nhds_iff.1 hev
    refine ⟨τ, hτ, fun t ht x => ?_⟩
    let W' : Submodule ℂ (Fin n → ℂ) := W.comap (Matrix.toLin' (uMat x))
    have hxx : ∀ z, uMat x *ᵥ (uMat x⁻¹ *ᵥ z) = z := fun z => by rw [mulVec_mulVec, uMat_mul_invF, one_mulVec]
    have hP' : ∀ z, z ∈ perp (Jm ε) W' ↔ uMat x *ᵥ z ∈ perp (Jm ε) W := fun z =>
      ⟨fun h w hw => by
        rw [← hxx w, hf_uMatF]
        exact h _ (show uMat x *ᵥ _ ∈ W by rwa [hxx]),
       fun h w hw => by rw [← hf_uMatF x]; exact h _ hw⟩
    have hW' : Isot (Jm ε) W' := fun z hz => (hP' z).2 (hW hz)
    obtain ⟨p', hp'⟩ := exists_isPr W'
    let a' : UJ ε := indefiniteUnitaryMk ε _ (am_mem hW' hp' t)
    have hs' : Sc (Jm ε) W' (Real.exp t) (Real.exp (-t)) (uMat a') := am_sc hW' hp' t
    have hs : Sc (Jm ε) W (Real.exp t) (Real.exp (-t)) (uMat (x * a' * x⁻¹)) := by
      have hv : ∀ z, uMat (x * a' * x⁻¹) *ᵥ z = uMat x *ᵥ (uMat a' *ᵥ (uMat x⁻¹ *ᵥ z)) := fun z => by
        rw [uMat_mul, uMat_mul, mulVec_mulVec, mulVec_mulVec]
      refine ⟨fun w hw => ?_, fun z hz => ?_, fun z => ?_⟩
      · rw [hv, hs'.1 _ (show uMat x *ᵥ _ ∈ W by rwa [hxx]), mulVec_smul, hxx]
      · have : uMat x *ᵥ _ ∈ W := hs'.2.1 (uMat x⁻¹ *ᵥ z) ((hP' _).2 (by rwa [hxx]))
        rwa [mulVec_sub, hxx, ← hv] at this
      · have := (hP' _).1 (hs'.2.2 (uMat x⁻¹ *ᵥ z))
        rwa [mulVec_sub, mulVec_smul, hxx, ← hv] at this
    refine ⟨x * a' * x⁻¹ * a (-t), (hmem _).2 ?_, ?_⟩
    · have := hs.mul hW (am_sc hW hp (-t))
      rwa [neg_neg, hee, mul_comm, hee] at this
    · rw [← hinv, inv_mul_cancel_right, show x⁻¹ * (x * a' * x⁻¹) * x = a' by group]
      exact hVU (hb (by simpa using ht) (fun i j => p' i j) fun i _ j _ => by simpa using hp'.entry i j)

end CompanionTheory.D.gk.RF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.RealParabolicDecomposition =====

-- ===== clump member: CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.RowsFinDimOf =====
-- clump-header: {"m": "CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.RowsFinDimOf", "h": "module\n\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.ShortIsot\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.RowsDef\nimport Aesop.Main\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirVolumeRatios.VolumeClassRepresentatives.IwasawaBase\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.ConcreteLevelAdelicSubset\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.RowsProj\nimport Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RrsSecondCountableAbs\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.UnitaryRepUnimodularOfFiniteVolume\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Compactness.Paracompact\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory NumberField Topology
open scoped ENNReal InnerProductSpace

noncomputable section

namespace CompanionTheory.D.gk.RF

open Formalism.MainNotions.S Formalism.L2.SG.ProjRows Formalism.L2.SG.RowsDef Formalism.L2.SG.Pf Formalism.MainNotions.LeviCoordinates

theorem dense_bdd {X : Type} [MeasurableSpace X] (μ : Measure X) :
    Dense {F : Lp ℂ 2 μ | ∃ M : ℝ, ∀ᵐ x ∂μ, ‖(F : X → ℂ) x‖ ≤ M} := by
  refine (Lp.simpleFunc.dense (E := ℂ) (μ := μ) (p := 2) (by simp)).mono fun F hF => ?_
  let f : Lp.simpleFunc ℂ 2 μ := ⟨F, hF⟩
  obtain ⟨M, hM⟩ := (Lp.simpleFunc.toSimpleFunc f).exists_forall_norm_le
  refine ⟨M, ?_⟩
  filter_upwards [Lp.simpleFunc.toSimpleFunc_eq_toFun f] with x hx
  rw [show (F : X → ℂ) x = Lp.simpleFunc.toSimpleFunc f x from hx.symm]
  exact hM x

theorem rowsFinDim_of (hCore : Core) (hFin : FiniteDimensionalFromLinearForms) (hCA : CuspAdel) (hD : GFDisc) (hLev : LevelOf)
    (hCR : ConvRep) (hRC : RepOfConv) : RowsFinDim := by
  intro I μf _ _ fund hfund R hR e Re hlc hsupp hRe H _ _ _ σ dv w hU _ hF hw hL T hT
  have : LocallyCompactSpace I.Gf := gf_locallyCompact I
  have : T2Space I.Gf := finite_adeles_group_t2 I
  have : SecondCountableTopology I.Gf := rr_secondCountable I μf
  have hright : (I.muA μf).IsMulRightInvariant := Formalism.L2.S.S7.IwasawaBase.muA_right I μf
  have : (I.muA μf).IsHaarMeasure := by
    have h1 : (I.muA μf).IsOpenPosMeasure := by unfold AutInst.muA; infer_instance
    have h2 : (I.muA μf).IsMulLeftInvariant := rr_muA_left I μf
    have h3 : IsLocallyFiniteMeasure (I.muA μf) := by unfold AutInst.muA; infer_instance
    exact {}
  have hlf : IsLocallyFiniteMeasure μf := inferInstance
  let X : Formalism.MainNotions.BridgeLemma.CData :=
    { I := I, μf := μf, fund := fund, R := R }
  have hd : RegData X := ⟨‹_›, hfund, hR⟩
  have hu : UnimodA X := hright
  obtain ⟨hmul, -, hiso, -⟩ := adelic_regular_rep_unitary_continuous X hd hu hlf
  have hmeas := regular_rep_coeff_measurable X hd hu
  set ph := phInf I σ w dv with hph
  have hphI : Integrable ph (muInf I) := phInf_int I hL
  have hconv := phInf_conv I hU hF hw
  have hφ₀ : Integrable (fun p : I.GA => ph p.1 * e p.2) (I.muA μf) := hphI.mul_prod hRe.1
  have hpr := prod_op_eq (muInf I) μf R hmul hiso (fun x y => (hmeas x y).aestronglyMeasurable) ph e hφ₀ T Re hT hRe.2
  have hRT : I.IsRConv μf fund R (fun p => ph p.1 * e p.2) (Re.comp T) := ⟨hφ₀, fun x y => (hpr x y).2.symm⟩
  obtain ⟨Kp, hKo, hKc, hKe⟩ := hLev I e hlc hsupp
  have hK0 : μf Kp ≠ 0 := (hKo.measure_pos μf ⟨1, Kp.one_mem⟩).ne'
  have hK1 : μf Kp ≠ ∞ := hKc.measure_lt_top.ne
  have hind : Integrable ((Kp : Set I.Gf).indicator fun _ => (((μf Kp).toReal⁻¹ : ℝ) : ℂ)) μf :=
    (integrable_indicator_iff hKo.measurableSet).2 (integrableOn_const hK1)
  have hφ : Integrable (phK I μf ph Kp) (I.muA μf) := hphI.mul_prod hind
  have hφφ₀ : ∀ z : I.GA, ∫ y, phK I μf ph Kp y * (ph (y⁻¹ * z).1 * e (y⁻¹ * z).2) ∂(I.muA μf) = ph z.1 * e z.2 := by
    intro z
    have e1 : (fun y : I.GA => phK I μf ph Kp y * (ph (y⁻¹ * z).1 * e (y⁻¹ * z).2)) = fun y =>
        (ph y.1 * ph (y.1⁻¹ * z.1)) *
          (Kp : Set I.Gf).indicator (fun _ => (((μf Kp).toReal⁻¹ : ℝ) : ℂ) * e z.2) y.2 := by
      funext y
      by_cases hy : y.2 ∈ Kp
      · have hy' : y.2 ∈ (Kp : Set I.Gf) := hy
        simp only [phK, Set.indicator_of_mem hy', Prod.fst_mul, Prod.snd_mul, Prod.fst_inv, Prod.snd_inv,
          hKe _ (Kp.inv_mem hy)]
        ring
      · have hy' : y.2 ∉ (Kp : Set I.Gf) := hy
        simp only [phK, Set.indicator_of_notMem hy', mul_zero, zero_mul]
    rw [e1]
    refine (integral_prod_mul (μ := muInf I) (ν := μf) (fun g => ph g * ph (g⁻¹ * z.1)) _).trans ?_
    rw [hconv, integral_indicator_const _ hKo.measurableSet, Measure.real, Complex.real_smul, ← mul_assoc ((μf Kp).toReal : ℂ),
      ← Complex.ofReal_mul, mul_inv_cancel₀ (ENNReal.toReal_pos hK0 hK1).ne', Complex.ofReal_one, one_mul]
  have hFD := rr_isFD (rr_FD_of I μf fund hfund)
  have hO : IsClopen {g : I.GA | g.2 ∈ Kp} :=
    IsClopen.preimage (s := (Kp : Set I.Gf)) ⟨Kp.isClosed_of_isOpen hKo, hKo⟩ continuous_snd
  have hdet := hCore I.GA (I.muA μf) (rr_GF I) fund hFD (fun C hC => hD I C hC) (phK I μf ph Kp) _ hφ hO
    (fun y hy => by
      have hy' : y.2 ∉ (Kp : Set I.Gf) := hy
      simp only [phK, Set.indicator_of_notMem hy', mul_zero])
    (hCA I μf (rr_GF I) rfl Kp hKo hKc ph hphI hconv)
  refine hFin I.GA (I.muA μf) (rr_GF I) fund _ hφ hdet _ ?_
  rintro _ ⟨F₀, rfl⟩
  refine map_mem_closure (f := Re.comp T) (Re.comp T).continuous (dense_bdd _ F₀) fun F hFb => ?_
  obtain ⟨s, hs, hsb, hsi, hae⟩ := hCR I μf fund hfund R hR _ _ hRT F hFb
  exact ⟨_, hRC I.GA (I.muA μf) (rr_GF I) _ _ s hφ hφ₀ hφφ₀ hs hsb hsi, hae⟩

end CompanionTheory.D.gk.RF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.RowsFinDimOf =====

-- ===== clump member: CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.AutomorphicFormsFiniteDimensional =====
-- clump-header: {"m": "CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.AutomorphicFormsFiniteDimensional", "h": "module\n\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.ShortIsot\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.RowsDef\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.CuspidalAtInfinityOf\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.FiniteDimensionalFromLinearForms\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.HeightBoundSetup\nimport CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.IntegrableMulBc\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.LocalPointData\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.LogBallEstimates\nimport CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.LogNormEstimates\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.NilpotentSubgroupRepresentation\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.PBAdel\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.ParabolicSubgroupDecomposition\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.RealParabolicDecomposition\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.RowsFinDimOf\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.SecondOrderExpAtInfinitePlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace CompanionTheory.D.gk.RF

theorem gamSub : GamSub := by
  exact arithmetic_subgroup_of_transport transport_to_standard_form

theorem geoInf : GeoInf := by
  have hT : Transp := transport_to_standard_form
  have hG : GamSub := arithmetic_subgroup_of_transport hT
  exact reduction_geometry_at_infinity successive_minima_gap (short_isotropic_vector_of hT) covolume_span (covolume_orthogonal_complement hT)
    (mahler_compactness_of hT hG) (nilpotent_cover_of hT hG nilpotent_lie_algebra nilpotent_subgroup_representation)

theorem cuspInf : CuspInf :=
  cuspidal_at_infinity_of selP (averaging_of_fundamental_domain fundamental_domain_inclusion) unipotent_radical_subgroup real_parabolic_decomposition parabolic_subgroup_decomposition transport_to_standard_form gamSub geoInf

theorem automorphic_forms_finite_dimensional : Formalism.L2.SG.RowsDef.RowsFinDim := by
  exact rowsFinDim_of discrete_series_bound_of_inputs finite_dimensional_from_linear_forms (adelic_cusp_of_infinite_cusp cuspInf congruence_subgroup_compact_open)
    (fundamental_domain_discrete_of gamSub) level_structure_of convolution_operator_representation representation_of_convolution

end CompanionTheory.D.gk.RF
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.FundamentalDomainCusps.AutomorphicFormsFiniteDimensional =====
