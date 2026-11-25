module

public import Formalism.HermitianCurvature.ThetaExistenceInductiveFromPieces
public import Mathlib.Analysis.Fourier.FiniteAbelian.Orthogonality
public import Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality
public import Mathlib.Analysis.InnerProductSpace.Positive
public import Mathlib.Analysis.Matrix.Order
public import Mathlib.Topology.MetricSpace.Sequences
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AddedBlockKernelSupport
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdicNeighbourhood
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AveragedKernelSums
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AveragedVectorChoices
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.EqZeroOfIdealCompact
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.FirstKernelProperties
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GaussIndexIndependentOfChoice
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GaussSumModulusOfLattice
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermSumLattices
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HenselRootsBounded
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.KernelScalingBack
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ModulusLocallyConstant
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralReduction
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PadicChangeOfVariables
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondVanishingOffRing
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SubmoduleMultiplication
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TwoBlockPoint
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CharacterOrthogonalityDual
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ColumnOperationTripleForm
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.FirstKernelExplicitFormula
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GramKernelHermitian
public import Formalism.HermitianCurvature.StatementPB
public import Formalism.HermitianCurvature.HeisenbergConjugationMeasurePreserving
public import Formalism.LatticeRigidity.HeightMinimum.SqrtAbsNormLeProd
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GrowthOfBasic
public import Formalism.LocalRingCardinality.DataHost
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralLatticeRefinementIdentity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.KernelQuotientFinite
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PsdFormConjRewrite
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.ParametersTermRelations
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.PoincareConstantEq
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.HidaSetting
import Formalism.SharpRestriction.CuspSpanNormBounds.Point

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.FiniteClassesPositiveSums, Formalism.HermitianCurvature.HermitianCurvatureProofs.FiniteSumSwap, Formalism.HermitianCurvature.HermitianCurvatureProofs.GermExpansionOfSteps, Formalism.HermitianCurvature.HermitianCurvatureProofs.HessianScalingIntegrals, Formalism.HermitianCurvature.HermitianCurvatureProofs.MeanNormSquaredBound, Formalism.HermitianCurvature.HermitianCurvatureProofs.MeanPositiveSemidefinite, Formalism.HermitianCurvature.HermitianCurvatureProofs.PartialMeansOrthogonal, Formalism.HermitianCurvature.HermitianCurvatureProofs.PosSemidefEntryBound, Formalism.HermitianCurvature.HermitianCurvatureProofs.RealPowerIdentities, Formalism.HermitianCurvature.HermitianCurvatureProofs.GermExpansionMatrixFunction, Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondDerivativeHolds, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.TheoremS

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FiniteClassesPositiveSums =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.FiniteClassesPositiveSums", "h": "module\n\npublic import Formalism.HermitianCurvature.ThetaExistenceInductiveFromPieces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Formalism.DoubleCosetMeasures Formalism.FourierDecayAlt.A5 Formalism.FourierDecayAlt.A6 Filter Topology Finset
open scoped ComplexConjugate

namespace Formalism.FourierDecayAlt.P.FiniteClassesPositiveSums

section gen

variable {α : Type}

theorem psd_congr {F : Finset α} {k k' : α → α → ℂ} (h : IsPSD F k)
    (e : ∀ x ∈ F, ∀ y ∈ F, k x y = k' x y) : IsPSD F k' := by
  intro a
  have : ∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * k' x y = ∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * k x y :=
    sum_congr rfl fun x hx => sum_congr rfl fun y hy => by rw [e x hx y hy]
  rw [this]; exact h a

theorem psd_zero (F : Finset α) : IsPSD F (fun _ _ => (0 : ℂ)) := by
  intro a; simp

theorem psd_add {F : Finset α} {k k' : α → α → ℂ} (h : IsPSD F k) (h' : IsPSD F k') :
    IsPSD F (fun x y => k x y + k' x y) := by
  intro a
  have : ∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * (k x y + k' x y) =
      ∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * k x y + ∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * k' x y := by
    simp only [mul_add, sum_add_distrib]
  rw [this, Complex.add_im, Complex.add_re, (h a).1, (h' a).1]
  exact ⟨by simp, add_nonneg (h a).2 (h' a).2⟩

theorem psd_sum {ι : Type} {F : Finset α} (s : Finset ι) (k : ι → α → α → ℂ)
    (h : ∀ i ∈ s, IsPSD F (k i)) : IsPSD F (fun x y => ∑ i ∈ s, k i x y) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using psd_zero F
  | insert i s hi ih =>
    have := psd_add (h i (mem_insert_self i s)) (ih fun j hj => h j (mem_insert_of_mem hj))
    exact psd_congr this fun x _ y _ => by rw [sum_insert hi]

end gen

section classes

variable {K : Type} [CommRing K] (R : Subring K)

theorem out_mk (x : K) :
    ∃ r ∈ R, (Quotient.out ((x : K) : K ⧸ R.toAddSubgroup) : K) = x + r := by
  obtain ⟨r, hr⟩ := QuotientAddGroup.mk_out_eq_add R.toAddSubgroup x
  exact ⟨r.1, r.2, hr⟩

theorem periodic_out {β : Type} (f : K → β) (h1 : ∀ x, ∀ r ∈ R, f (x + r) = f x) (x : K) :
    f (Quotient.out ((x : K) : K ⧸ R.toAddSubgroup)) = f x := by
  obtain ⟨r, hr, e⟩ := out_mk R x
  rw [e, h1 x r hr]

theorem finite_classes [TopologicalSpace K] [IsTopologicalRing K] (hR : IsOpen (R : Set K))
    (Lc : Set K) (hLc : IsCompact Lc) :
    {y : K ⧸ R.toAddSubgroup | (Quotient.out y : K) ∈ Lc}.Finite := by
  have : DiscreteTopology (K ⧸ R.toAddSubgroup) := QuotientAddGroup.discreteTopology hR
  have h := (hLc.image (QuotientAddGroup.continuous_mk (N := R.toAddSubgroup))).finite_of_discrete
  refine h.subset ?_
  intro y hy
  exact ⟨Quotient.out y, hy, Quotient.out_eq' y⟩

variable {R} {F : Finset (Point K)} {Lc : Set K} {S : Finset (K ⧸ R.toAddSubgroup)}

theorem finsum_classes (hS : ∀ y : K ⧸ R.toAddSubgroup, (Quotient.out y : K) ∈ Lc → y ∈ S)
    {Θ : K → Point K → Point K → ℂ}
    (h3 : ∀ x, x ∉ Lc → ∀ h ∈ F, ∀ h' ∈ F, Θ x h h' = 0) {h h' : Point K} (hh : h ∈ F)
    (hh' : h' ∈ F) :
    ∑ᶠ y : K ⧸ R.toAddSubgroup, Θ (Quotient.out y) h h' = ∑ y ∈ S, Θ (Quotient.out y) h h' := by
  apply finsum_eq_sum_of_support_subset
  intro y hy
  by_contra hyS
  exact hy (h3 _ (fun hc => hyS (hS y hc)) h hh h' hh')

theorem psd_single (hS : ∀ y : K ⧸ R.toAddSubgroup, (Quotient.out y : K) ∈ Lc → y ∈ S)
    {M : Point K → Point K → ℂ} {Θ : K → Point K → Point K → ℂ}
    (h1 : ∀ x, ∀ r ∈ R, Θ (x + r) = Θ x) (h2 : ∀ x, IsPSD F (Θ x))
    (h3 : ∀ x, x ∉ Lc → ∀ h ∈ F, ∀ h' ∈ F, Θ x h h' = 0)
    (h5 : IsPSD F (fun h h' => M h h' - ∑ᶠ y : K ⧸ R.toAddSubgroup, Θ (Quotient.out y) h h'))
    (x : K) : IsPSD F (fun h h' => M h h' - Θ x h h') := by
  classical
  have key := psd_add h5 (psd_sum (S.erase ((x : K) : K ⧸ R.toAddSubgroup))
    (fun y => Θ (Quotient.out y)) (fun y _ => h2 _))
  refine psd_congr key ?_
  intro h hh h' hh'
  have e1 := finsum_classes hS h3 hh hh'
  have e2 : Θ (Quotient.out ((x : K) : K ⧸ R.toAddSubgroup)) = Θ x := periodic_out R Θ h1 x
  simp only [e1]
  by_cases hx : ((x : K) : K ⧸ R.toAddSubgroup) ∈ S
  · rw [← add_sum_erase S (fun y => Θ (Quotient.out y) h h') hx, e2]
    ring
  · rw [erase_eq_of_notMem hx]
    have : Θ x h h' = 0 := by
      rw [← e2]
      exact h3 _ (fun hc => hx (hS _ hc)) h hh h' hh'
    rw [this]; ring

theorem limit_core (hEntry : PSDEntryBound) (hSubseq : BoundedSubseq)
    (hS : ∀ y : K ⧸ R.toAddSubgroup, (Quotient.out y : K) ∈ Lc → y ∈ S)
    (M : Point K → Point K → ℂ) (Th : ℕ → K → Point K → Point K → ℂ)
    (h1 : ∀ j x, ∀ r ∈ R, Th j (x + r) = Th j x) (h2 : ∀ j x, IsPSD F (Th j x))
    (h3 : ∀ j x, x ∉ Lc → ∀ h ∈ F, ∀ h' ∈ F, Th j x h h' = 0)
    (h5 : ∀ j, IsPSD F (fun h h' => M h h' -
      ∑ᶠ y : K ⧸ R.toAddSubgroup, Th j (Quotient.out y) h h')) :
    ∃ (φ : ℕ → ℕ) (Θ : K → Point K → Point K → ℂ), StrictMono φ ∧
      (∀ x, ∀ r ∈ R, Θ (x + r) = Θ x) ∧
      ∀ x, ∀ h ∈ F, ∀ h' ∈ F, Tendsto (fun j => Th (φ j) x h h') atTop (𝓝 (Θ x h h')) := by
  classical
  let T : Finset ((K ⧸ R.toAddSubgroup) × Point K × Point K) := S ×ˢ F ×ˢ F
  let θ : ℕ → T → ℂ := fun j i => Th j (Quotient.out i.1.1) i.1.2.1 i.1.2.2
  let B : ℝ := ∑ h ∈ F, |(M h h).re|
  have hB0 : 0 ≤ B := sum_nonneg fun _ _ => abs_nonneg _
  have hBh : ∀ h ∈ F, |(M h h).re| ≤ B := fun h hh =>
    single_le_sum (f := fun h => |(M h h).re|) (fun _ _ => abs_nonneg _) hh
  have hb : ∀ j i, ‖θ j i‖ ≤ B := by
    rintro j ⟨⟨y, h, h'⟩, hi⟩
    simp only [T, mem_product] at hi
    have hE := hEntry _ F (Th j (Quotient.out y)) M (h2 j _)
      (psd_single hS (h1 j) (h2 j) (h3 j) (h5 j) _) h hi.2.1 h' hi.2.2
    have hle : (M h h).re * (M h' h').re ≤ B ^ 2 := by
      calc (M h h).re * (M h' h').re ≤ |(M h h).re * (M h' h').re| := le_abs_self _
        _ = |(M h h).re| * |(M h' h').re| := abs_mul _ _
        _ ≤ B * B := mul_le_mul (hBh h hi.2.1) (hBh h' hi.2.2) (abs_nonneg _) hB0
        _ = B ^ 2 := (sq B).symm
    exact (pow_le_pow_iff_left₀ (norm_nonneg _) hB0 two_ne_zero).1 (hE.trans hle)
  obtain ⟨φ, l, hφ, hl⟩ := hSubseq T θ B hb
  refine ⟨φ, fun x h h' => if hx : (((x : K) : K ⧸ R.toAddSubgroup), h, h') ∈ T then l ⟨_, hx⟩
    else 0, hφ, ?_, ?_⟩
  · intro x r hr
    have e : (((x + r : K)) : K ⧸ R.toAddSubgroup) = ((x : K) : K ⧸ R.toAddSubgroup) := by
      rw [QuotientAddGroup.eq]
      have : -(x + r) + x = -r := by ring
      rw [this]
      exact neg_mem hr
    funext h h'
    simp only [e]
  · intro x h hh h' hh'
    have e2 : ∀ j, Th j (Quotient.out ((x : K) : K ⧸ R.toAddSubgroup)) = Th j x :=
      fun j => periodic_out R (Th j) (h1 j) x
    by_cases hx : (((x : K) : K ⧸ R.toAddSubgroup), h, h') ∈ T
    · simp only [dif_pos hx]
      have := hl ⟨_, hx⟩
      simp only [θ, e2] at this
      exact this
    · simp only [dif_neg hx]
      have hxS : ((x : K) : K ⧸ R.toAddSubgroup) ∉ S := by
        intro hc
        exact hx (by simp only [T, mem_product]; exact ⟨hc, hh, hh'⟩)
      have : ∀ j, Th (φ j) x h h' = 0 := by
        intro j
        rw [← e2]
        exact h3 _ _ (fun hc => hxS (hS _ hc)) h hh h' hh'
      simp only [this]
      exact tendsto_const_nhds

end classes

end Formalism.FourierDecayAlt.P.FiniteClassesPositiveSums

namespace Formalism.FourierDecayAlt.P

open Formalism.FourierDecayAlt.P.FiniteClassesPositiveSums

theorem thetaExistsStepOfSteps : Formalism.FourierDecayAlt.A6.ThetaExistenceInductive := by
  intro hThOm hSupp hNsS hCOne hExh _hLF hEntry hClosed hSubseq hA2 hN1 K _ _ _ R ψ hD hch s hs hAt
    n₀ F hF
  classical
  obtain ⟨Lc, hcut, hGL⟩ := hSupp hNsS K R ψ hD (s + 1) F (by omega)
  obtain ⟨Om, hOm, hmono, hex⟩ := hExh K R ψ hD hch (s + 1) (by omega)
  choose Th hTh using fun j => hThOm hA2 hN1 K R ψ hD hch s hs hAt n₀ F Lc (Om j) hF hcut (hOm j)
  obtain ⟨hLo, hLk, -, -⟩ := hcut
  have hfin := finite_classes R hD.isOpen (Lc : Set K) hLk
  have hS : ∀ y : K ⧸ R.toAddSubgroup, (Quotient.out y : K) ∈ (Lc : Set K) → y ∈ hfin.toFinset :=
    fun y hy => hfin.mem_toFinset.2 hy
  let M : Point K → Point K → ℂ := fun h h' =>
    ((cSize R h ^ (s + 1) * cSize R h' ^ (s + 1) : ℝ) : ℂ) * N0 R ψ h h'
  obtain ⟨φ, Θ, hφ, h1, hlim⟩ := limit_core hEntry hSubseq hS M Th (fun j => (hTh j).1)
    (fun j => (hTh j).2.1) (fun j => (hTh j).2.2.1) (fun j => (hTh j).2.2.2.2.1)
  have h2 : ∀ x, IsPSD F (Θ x) := fun x =>
    hClosed _ F (fun j => Th (φ j) x) (Θ x) (fun j => (hTh _).2.1 x) (hlim x)
  have h3 : ∀ x, x ∉ (Lc : Set K) → ∀ h ∈ F, ∀ h' ∈ F, Θ x h h' = 0 := by
    intro x hx h hh h' hh'
    have := hlim x h hh h' hh'
    simp only [(hTh _).2.2.1 x hx h hh h' hh'] at this
    exact tendsto_nhds_unique tendsto_const_nhds this |>.symm
  have h4 : ∀ t : Kˣ, IsPSD F (fun h h' => Θ (t : K) h h' - Ns R ψ (s + 1) h h' t t) := by
    intro t
    obtain ⟨j0, hj0⟩ := hex t
    have hmono' : ∀ j, j0 ≤ j → (t : K) ∈ Om j := by
      intro j hj
      induction j, hj using Nat.le_induction with
      | base => exact hj0
      | succ j _ ih => exact hmono j ih
    refine hClosed _ F (fun j h h' => Th (φ (j + j0)) (t : K) h h' - Ns R ψ (s + 1) h h' t t) _
      (fun j => (hTh _).2.2.2.1 t (hmono' _ ((Nat.le_add_left _ _).trans hφ.le_apply))) ?_
    intro h hh h' hh'
    exact ((hlim (t : K) h hh h' hh').comp (tendsto_add_atTop_nat j0)).sub tendsto_const_nhds
  have h5 : IsPSD F (fun h h' => M h h' -
      ∑ᶠ y : K ⧸ R.toAddSubgroup, Θ (Quotient.out y) h h') := by
    refine hClosed _ F (fun j h h' => M h h' -
      ∑ᶠ y : K ⧸ R.toAddSubgroup, Th (φ j) (Quotient.out y) h h') _
      (fun j => (hTh _).2.2.2.2.1) ?_
    intro h hh h' hh'
    simp only [finsum_classes hS h3 hh hh', finsum_classes hS ((hTh _).2.2.1) hh hh']
    exact tendsto_const_nhds.sub (tendsto_finsetSum _ fun y _ => hlim _ h hh h' hh')
  have h6 : ∀ x, ∀ h ∈ F, ∀ h' ∈ F, modK R (pt h.1 h.2).det ≠ modK R (pt h'.1 h'.2).det →
      Θ x h h' = 0 := by
    intro x h hh h' hh' hne
    have := hlim x h hh h' hh'
    simp only [(hTh _).2.2.2.2.2 x h hh h' hh' hne] at this
    exact tendsto_nhds_unique tendsto_const_nhds this |>.symm
  refine ⟨Θ, h1, h2, ⟨Lc, hLo, hLk, h3⟩, h4, h5, h6, ?_⟩
  intro hG x
  by_cases hx : x ∈ R
  · simp only [if_pos hx]
    refine psd_congr (psd_single hS h1 h2 h3 h5 x) ?_
    intro h hh h' hh'
    simp only [M, hCOne K R ψ hD h (hG h hh), hCOne K R ψ hD h' (hG h' hh')]
    simp
  · simp only [if_neg hx]
    refine psd_congr (psd_zero F) ?_
    intro h hh h' hh'
    rw [h3 x (fun hc => hx ((hGL hG x).1 hc)) h hh h' hh']
    simp

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FiniteClassesPositiveSums =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FiniteSumSwap =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.FiniteSumSwap", "h": "module\n\npublic import Formalism.HermitianCurvature.ThetaExistenceInductiveFromPieces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Formalism.DoubleCosetMeasures Formalism.FourierDecayAlt.A5 Formalism.FourierDecayAlt.A6 Filter Topology
open scoped ComplexConjugate

namespace Formalism.FourierDecayAlt.P.FiniteSumSwap

theorem finsum_swap {I J : Type} (P : I → Prop) [DecidablePred P] (T : J → Prop) [DecidablePred T]
    (hP : {q | P q}.Finite) (hT : {z | T z}.Finite) (a : ℂ) (g : J → ℂ) (F : J → I → ℂ)
    (e : I → ℂ) :
    ∑ᶠ q : I, (if P q then a * ∑ᶠ z : J, (if T z then g z * F z q else 0) else 0) * e q =
      a * ∑ᶠ z : J, (if T z then g z * ∑ᶠ q : I, (if P q then F z q else 0) * e q else 0) := by
  have h1 : ∀ f : I → ℂ, ∑ᶠ q : I, (if P q then f q else 0) * e q =
      ∑ q ∈ hP.toFinset, f q * e q := by
    intro f
    rw [finsum_eq_sum_of_support_subset (s := hP.toFinset)]
    · refine Finset.sum_congr rfl fun q hq => ?_
      rw [if_pos (by simpa using hq)]
    · intro q hq
      by_contra hq'
      have : ¬ P q := by simpa using hq'
      simp [this] at hq
  have h2 : ∀ f : J → ℂ, ∑ᶠ z : J, (if T z then f z else 0) = ∑ z ∈ hT.toFinset, f z := by
    intro f
    rw [finsum_eq_sum_of_support_subset (s := hT.toFinset)]
    · refine Finset.sum_congr rfl fun z hz => ?_
      rw [if_pos (by simpa using hz)]
    · intro z hz
      by_contra hz'
      have : ¬ T z := by simpa using hz'
      simp [this] at hz
  rw [h1, h2]
  simp_rw [h1, h2]
  simp_rw [Finset.mul_sum, Finset.sum_mul]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun z _ => Finset.sum_congr rfl fun q _ => ?_
  ring

end Formalism.FourierDecayAlt.P.FiniteSumSwap

namespace Formalism.FourierDecayAlt.P

open Formalism.FourierDecayAlt.P.FiniteSumSwap

theorem germExpansionKernelOfSteps : Formalism.FourierDecayAlt.A6.GermKernelAssemble := by
  intro hGerm hKp hInt hRoots K _ _ _ R ψ hD hn m hm γ hγ h Q hQ hQu
  obtain ⟨V, hV, H⟩ := hGerm K R ψ hD hn m hm γ hγ h Q hQ hQu
  refine ⟨V, hV, fun t c ht hc w' => ?_⟩
  have := hD.artin
  have := hD.red
  have hT : {z : Kˣ | z ^ (m + 1) = (-t) ^ m * c}.Finite :=
    hRoots K (m + 1) (Nat.succ_le_succ (Nat.zero_le m)) ((-t) ^ m * c)
  have hP : {q : Cos R w' | IsInt R (orbZ w' (rep R q))}.Finite := hInt K R ψ hD w'
  rw [hKp K R ψ hD (pt2 h m t c) w']
  simp_rw [H t c ht hc]
  unfold germSum
  simp_rw [hKp K R ψ hD (addBlock h (m + 1) _) w']
  classical
  convert finsum_swap (fun q : Cos R w' => IsInt R (orbZ w' (rep R q)))
    (fun z : Kˣ => z ^ (m + 1) = (-t) ^ m * c) hP hT _ (germCoef R ψ m γ t)
    (fun z q => bbZ R ψ (addBlock h (m + 1) z) (orbZ w' (rep R q)))
    (fun q => conj (phase ψ (rep R q)))

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FiniteSumSwap =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.GermExpansionOfSteps =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.GermExpansionOfSteps", "h": "module\n\npublic import Formalism.HermitianCurvature.ThetaExistenceInductiveFromPieces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Formalism.DoubleCosetMeasures Formalism.FourierDecayAlt.A5 Formalism.FourierDecayAlt.A6 Filter Topology

namespace Formalism.FourierDecayAlt.P

theorem germExpansionOfSteps : Formalism.FourierDecayAlt.A6.GermAssemble := by
  intro hHead hPhi K _ _ _ R ψ hD hn m hm γ hγ h Q hQ hQu
  obtain ⟨L₀, Λ₀, hL₀, hΛ₀, hΦ⟩ := hHead K R ψ hD hn m h Q hQ hQu
  obtain ⟨V, hV, hG⟩ := hPhi K R ψ hD hn m hm γ hγ L₀ Λ₀ Q hL₀ hΛ₀ hQ hQu
  refine ⟨V, hV, fun t c ht hc n' Z' => ?_⟩
  obtain ⟨Φ, hyp, h1, h2⟩ := hΦ n' Z'
  rw [h1 t c, hG Φ hyp t c ht hc]
  congr 1
  funext z
  exact (h2 z).symm

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.GermExpansionOfSteps =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.HessianScalingIntegrals =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.HessianScalingIntegrals", "h": "module\n\npublic import Formalism.HermitianCurvature.ThetaExistenceInductiveFromPieces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Formalism.DoubleCosetMeasures Formalism.FourierDecayAlt.A5 Formalism.FourierDecayAlt.A6 Filter Topology Classical

namespace Formalism.FourierDecayAlt.P.HessianScalingIntegrals

variable {K : Type} [CommRing K]

theorem out_mk_sub (Λ : AddSubgroup K) (x : K) :
    (Quotient.out (x : K ⧸ Λ) : K) - x ∈ Λ := by
  obtain ⟨h, hh⟩ := QuotientAddGroup.mk_out_eq_add Λ x
  rw [hh]; simp

theorem fin_supp [TopologicalSpace K] [IsTopologicalRing K] (Λ L : AddSubgroup K)
    (hΛ : IsOpen (Λ : Set K)) (hL : IsCompact (L : Set K)) (d : ℕ) :
    {y : Fin d → K ⧸ Λ | ∀ i, (Quotient.out (y i) : K) ∈ L}.Finite := by
  have : DiscreteTopology (K ⧸ Λ) := QuotientAddGroup.discreteTopology hΛ
  have h1 : ((QuotientAddGroup.mk : K → K ⧸ Λ) '' (L : Set K)).Finite :=
    (hL.image QuotientAddGroup.continuous_mk).finite_of_discrete
  refine (Set.Finite.pi' (fun _ : Fin d => h1)).subset ?_
  intro y hy i
  exact ⟨_, hy i, QuotientAddGroup.out_eq' _⟩

theorem intK_eq_sum (R : Subring K) (Λ L : AddSubgroup K) (d : ℕ)
    (hfin : {y : Fin d → K ⧸ Λ | ∀ i, (Quotient.out (y i) : K) ∈ L}.Finite)
    (g : (Fin d → K) → ℂ) (hg : ∀ x, g x ≠ 0 → ∀ i, x i ∈ L) :
    intK R Λ d g = (volL R Λ : ℂ) ^ d * ∑ y ∈ hfin.toFinset, g (fun i => Quotient.out (y i)) := by
  unfold intK
  congr 1
  apply finsum_eq_sum_of_support_subset
  intro y hy
  simpa only [Set.Finite.coe_toFinset, Set.mem_ofPred_eq] using hg _ hy

theorem ball_piece (R : Subring K) (m : ℕ) (B Λ : AddSubgroup K) (hΛB : Λ ≤ B) (z : K)
    (φ : (Fin m → K) → (Fin m → K))
    (hbij : Set.BijOn φ {ξ | ∀ k, ξ k ∈ B} {ξ | ∀ k, ξ k ∈ B})
    (hcos : ∀ ξ η : Fin m → K, (∀ k, ξ k ∈ B) → (∀ k, η k ∈ B) →
      ((∀ k, φ ξ k - φ η k ∈ Λ) ↔ ∀ k, ξ k - η k ∈ Λ))
    (G G' : (Fin m → K) → ℂ) (hG : LatInvN Λ G)
    (hG0 : ∀ x, (¬ ∀ k, x k - z ∈ B) → G x = 0)
    (hG'0 : ∀ ξ, (¬ ∀ k, ξ k ∈ B) → G' ξ = 0)
    (hGG' : ∀ ξ, (∀ k, ξ k ∈ B) → G (fun k => z + φ ξ k) = G' ξ) :
    LatInvN Λ G' ∧ intK R Λ m G = intK R Λ m G' := by
  classical
  have hinv : ∀ x x' : Fin m → K, (∀ k, x k - x' k ∈ Λ) → G x = G x' := by
    intro x x' h
    have := hG x' (fun k => x k - x' k) h
    rw [← this]; congr 1; ext k; simp
  constructor
  · intro ξ l hl
    by_cases hξ : ∀ k, ξ k ∈ B
    · have hξl : ∀ k, (ξ + l) k ∈ B := fun k => B.add_mem (hξ k) (hΛB (hl k))
      rw [← hGG' _ hξl, ← hGG' _ hξ]
      apply hinv
      intro k
      have := (hcos (ξ + l) ξ hξl hξ).2 (fun k => by simpa using hl k) k
      simpa using this
    · have hξl : ¬ ∀ k, (ξ + l) k ∈ B := fun h => hξ fun k => by
        have := B.sub_mem (h k) (hΛB (hl k)); simpa using this
      rw [hG'0 _ hξl, hG'0 _ hξ]
  · unfold intK
    congr 1
    let o : (Fin m → K ⧸ Λ) → (Fin m → K) := fun y i => Quotient.out (y i)
    let e : (Fin m → K ⧸ Λ) → (Fin m → K ⧸ Λ) := fun y k => ((z + φ (o y) k : K) : K ⧸ Λ)
    have hoe : ∀ y k, o (e y) k - (z + φ (o y) k) ∈ Λ := fun y k => out_mk_sub Λ _
    have h1 : ∑ᶠ y, G (o y) = ∑ᶠ y ∈ {y | ∀ k, o y k - z ∈ B}, G (o y) := by
      refine finsum_congr fun y => ?_
      rw [finsum_eq_if]
      split_ifs with h
      · rfl
      · exact hG0 _ h
    have h2 : ∑ᶠ y, G' (o y) = ∑ᶠ y ∈ {y | ∀ k, o y k ∈ B}, G' (o y) := by
      refine finsum_congr fun y => ?_
      rw [finsum_eq_if]
      split_ifs with h
      · rfl
      · exact hG'0 _ h
    change ∑ᶠ y, G (o y) = ∑ᶠ y, G' (o y)
    rw [h1, h2]
    symm
    refine finsum_mem_eq_of_bijOn e ⟨?_, ?_, ?_⟩ ?_
    · intro y hy k
      have h3 : φ (o y) k ∈ B := hbij.mapsTo hy k
      have h4 := B.add_mem (hΛB (hoe y k)) h3
      have : o (e y) k - z = o (e y) k - (z + φ (o y) k) + φ (o y) k := by ring
      rw [this]; exact h4
    · intro y hy y' hy' hyy
      have h3 : ∀ k, φ (o y) k - φ (o y') k ∈ Λ := by
        intro k
        have := congrFun hyy k
        have h5 : ((z + φ (o y) k : K) : K ⧸ Λ) = ((z + φ (o y') k : K) : K ⧸ Λ) := this
        rw [QuotientAddGroup.eq] at h5
        have h6 := Λ.neg_mem h5
        have : φ (o y) k - φ (o y') k = -(-(z + φ (o y) k) + (z + φ (o y') k)) := by ring
        rw [this]; exact h6
      have h4 := (hcos _ _ hy hy').1 h3
      funext k
      have h5 : ((o y k : K) : K ⧸ Λ) = ((o y' k : K) : K ⧸ Λ) := by
        rw [QuotientAddGroup.eq]
        have h6 := Λ.neg_mem (h4 k)
        have : -o y k + o y' k = -(o y k - o y' k) := by ring
        rw [this]; exact h6
      simpa [o] using h5
    · intro y hy
      have hmem : (fun k => o y k - z) ∈ {ξ : Fin m → K | ∀ k, ξ k ∈ B} := hy
      obtain ⟨ξ, hξ, hξy⟩ := hbij.surjOn hmem
      let y' : Fin m → K ⧸ Λ := fun k => ((ξ k : K) : K ⧸ Λ)
      have h3 : ∀ k, o y' k - ξ k ∈ Λ := fun k => out_mk_sub Λ _
      have h4 : ∀ k, o y' k ∈ B := fun k => by
        have := B.add_mem (hΛB (h3 k)) (hξ k); simpa using this
      refine ⟨y', h4, ?_⟩
      funext k
      have h5 := (hcos _ _ h4 hξ).2 h3 k
      have h6 : ((z + φ (o y') k : K) : K ⧸ Λ) = ((o y k : K) : K ⧸ Λ) := by
        rw [QuotientAddGroup.eq]
        have h7 : φ ξ k = o y k - z := congrFun hξy k
        have : -(z + φ (o y') k) + o y k = -(φ (o y') k - φ ξ k) := by rw [h7]; ring
        rw [this]; exact Λ.neg_mem h5
      have h8 : ((o y k : K) : K ⧸ Λ) = y k := QuotientAddGroup.out_eq' _
      exact h6.trans h8
    · intro y hy
      rw [← hGG' _ hy]
      symm
      exact hinv _ _ (hoe y)

theorem hess_scale (m : ℕ) (z t : Kˣ) :
    hessM m (z * t) = ((t⁻¹ : Kˣ) : K) • hessM m z := by
  unfold hessM
  rw [smul_smul, mul_inv, Units.val_mul, mul_comm]

theorem psi_ne_zero (ψ : AddChar K ℂ) (a : K) : ψ a ≠ 0 := by
  exact (AddChar.val_isUnit ψ a).ne_zero

theorem amp_const (Λ₁ : AddSubgroup K) {m : ℕ} (A : (Fin m → K) → ℂ) (hA : LatInvN Λ₁ A) (z : K)
    (x : Fin m → K) (hx : ∀ k, x k - z ∈ Λ₁) : A x = A (fun _ => z) := by
  simpa only [show (fun _ => z) + (fun k => x k - z) = x by ext k; simp] using hA (fun _ => z) (fun k => x k - z) hx


open Classical in
theorem root_piece [TopologicalSpace K] (R : Subring K) (ψ : AddChar K ℂ) (m : ℕ) (γ : Kˣ → ℂ)
    (hγ : IsGamma R ψ m γ) (Λ₁ : AddSubgroup K) (B Λ : Submodule R K)
    (hB : IsLat B.toAddSubgroup) (hΛ : IsLat Λ.toAddSubgroup) (hΛB : Λ ≤ B)
    (hBΛ₁ : ∀ b ∈ B, b ∈ Λ₁)
    (A : (Fin m → K) → ℂ) (hA : LatInvN Λ₁ A) (t z : Kˣ) (D : K) (hD : (z : K) ^ (m + 1) = D)
    (hmod : 0 < modK R (z : K) ∧ 0 < modK R (t : K) ∧
      modK R ((z : K) * (t : K)) = modK R (z : K) * modK R (t : K))
    (hadm : GaussAdm ψ B.toAddSubgroup (hessM m (z * t)))
    (hmorse : ∃ φ : (Fin m → K) → (Fin m → K),
        Set.BijOn φ {ξ | ∀ k, ξ k ∈ B} {ξ | ∀ k, ξ k ∈ B} ∧
        (∀ Λ : Submodule R K, Λ ≤ B → ∀ ξ η : Fin m → K, (∀ k, ξ k ∈ B) → (∀ k, η k ∈ B) →
          ((∀ k, φ ξ k - φ η k ∈ Λ) ↔ ∀ k, ξ k - η k ∈ Λ)) ∧
        ∀ ξ : Fin m → K, (∀ k, ξ k ∈ B) →
          (∀ k, IsUnit ((z : K) + φ ξ k)) ∧
          g0 ((z : K) ^ (m + 1)) (fun k => (z : K) + φ ξ k) =
            ((m + 1 : ℕ) : K) * (z : K) + Ring.inverse 2 * (ξ ⬝ᵥ (hessM m z *ᵥ ξ)))
    (hinv : LatInvN Λ.toAddSubgroup (fun x : Fin m → K => if ∀ k, x k - (z : K) ∈ B then
      A x * ψ (g0 D x * ((t⁻¹ : Kˣ) : K)) else 0)) :
    intK R Λ.toAddSubgroup m (fun x : Fin m → K => if ∀ k, x k - (z : K) ∈ B then
      A x * ψ (g0 D x * ((t⁻¹ : Kˣ) : K)) else 0) =
      ((modK R (t : K) ^ ((m : ℝ) / 2) : ℝ) : ℂ) *
        (γ (z * t) * ((modK R ((m + 1 : ℕ) : K) ^ (-(1 : ℝ) / 2) *
            modK R (z : K) ^ ((m : ℝ) / 2) : ℝ) : ℂ) *
          ψ (((m + 1 : ℕ) : K) * (z : K) * ((t⁻¹ : Kˣ) : K)) * A (fun _ => (z : K))) := by
  subst hD
  by_cases hA0 : A (fun _ => (z : K)) = 0
  · have h0 : (fun x : Fin m → K => if ∀ k, x k - (z : K) ∈ B then
        A x * ψ (g0 ((z : K) ^ (m + 1)) x * ((t⁻¹ : Kˣ) : K)) else 0) = fun _ => 0 := by
      funext x
      split_ifs with h
      · rw [amp_const Λ₁ A hA z x (fun k => hBΛ₁ _ (h k)), hA0, zero_mul]
      · rfl
    rw [h0, hA0]
    simp [intK]
  · obtain ⟨φ, hbij, hcos, hval⟩ := hmorse
    set c : ℂ := A (fun _ => (z : K)) * ψ (((m + 1 : ℕ) : K) * (z : K) * ((t⁻¹ : Kˣ) : K)) with hc
    have hc0 : c ≠ 0 := mul_ne_zero hA0 (psi_ne_zero ψ _)
    obtain ⟨hi, he⟩ := ball_piece R m B.toAddSubgroup Λ.toAddSubgroup hΛB (z : K) φ hbij
      (hcos Λ hΛB) _ (fun ξ => c * gaussF ψ B.toAddSubgroup (hessM m (z * t)) ξ) hinv
      (fun x hx => if_neg hx)
      (fun ξ hξ => by
        have : gaussF ψ B.toAddSubgroup (hessM m (z * t)) ξ = 0 := if_neg hξ
        rw [this, mul_zero])
      (fun ξ hξ => by
        have h1 : ∀ k, (z : K) + φ ξ k - (z : K) ∈ B := fun k => by
          have : φ ξ k ∈ B := hbij.mapsTo hξ k
          simpa using this
        have h2 : gaussF ψ B.toAddSubgroup (hessM m (z * t)) ξ =
            ψ (Ring.inverse 2 * (ξ ⬝ᵥ (hessM m (z * t) *ᵥ ξ))) := if_pos hξ
        rw [h2]
        simp only []
        rw [if_pos h1, amp_const Λ₁ A hA z _ (fun k => hBΛ₁ _ (h1 k)), (hval ξ hξ).2, hc, mul_assoc,
          ← AddChar.map_add_eq_mul, hess_scale, Matrix.smul_mulVec, dotProduct_smul, smul_eq_mul]
        congr 2
        ring)
    have hi' : LatInvN Λ.toAddSubgroup (gaussF ψ B.toAddSubgroup (hessM m (z * t))) := by
      intro ξ l hl
      exact mul_left_cancel₀ hc0 (hi ξ l hl)
    rw [he]
    have h3 : intK R Λ.toAddSubgroup m (fun ξ => c * gaussF ψ B.toAddSubgroup (hessM m (z * t)) ξ) =
        c * intK R Λ.toAddSubgroup m (gaussF ψ B.toAddSubgroup (hessM m (z * t))) := by
      unfold intK
      rw [mul_left_comm]
      congr 1
      have := smul_finsum c (fun y : Fin m → K ⧸ Λ.toAddSubgroup =>
        gaussF ψ B.toAddSubgroup (hessM m (z * t)) (fun i => Quotient.out (y i)))
      simpa [smul_eq_mul] using this.symm
    rw [h3, hγ.2.2 (z * t) _ _ hB hΛ hadm hi', Units.val_mul, hmod.2.2,
      Real.mul_rpow hmod.1.le hmod.2.1.le, hc]
    push_cast
    ring

theorem ball_iff (B : AddSubgroup K) {m : ℕ} (x l : Fin m → K) (z : K) (hl : ∀ k, l k ∈ B) :
    (∀ k, (x + l) k - z ∈ B) ↔ ∀ k, x k - z ∈ B := by
  refine forall_congr' fun k => ?_
  rw [show (x + l) k - z = x k - z + l k by simp only [Pi.add_apply]; ring]
  exact B.add_mem_cancel_right (hl k)

end Formalism.FourierDecayAlt.P.HessianScalingIntegrals


open Formalism.FourierDecayAlt.P.HessianScalingIntegrals in
open Classical in
theorem Formalism.FourierDecayAlt.P.stationaryPhaseOfSteps : Formalism.FourierDecayAlt.A6.StationaryAssemble := by
  intro hNS hMorse hRef hMod hRF _ _ _ _ _ hRS hSM hGA _ K _ _ _ R ψ hD hn m hm γ hγ L₀ Λ₁ Q hL₀ hΛ₁
    hQ hQu
  obtain ⟨VM, hVM, hM⟩ := hMorse K R ψ hD hn m hm Q hQ hQu
  obtain ⟨VS, hVS, hS⟩ := hRS K R ψ hD hn (m + 1) (by omega) Q hQ hQu
  have hΛ₁n : (Λ₁ : Set K) ∈ 𝓝 (0 : K) := hΛ₁.1.mem_nhds Λ₁.zero_mem
  obtain ⟨B, hB, hBV⟩ := hSM K R ψ hD hn (VM ∩ VS ∩ (Λ₁ : Set K))
    (inter_mem (inter_mem hVM hVS) hΛ₁n)
  obtain ⟨VN, hVN, hN⟩ := hNS K R ψ hD hn m hm L₀ Λ₁ B.toAddSubgroup Q hL₀ hΛ₁ hB hQ hQu
  obtain ⟨VG, hVG, hG⟩ := hGA K R ψ hD hn m B.toAddSubgroup Q hB hQ hQu
  refine ⟨VN ∩ VG, inter_mem hVN hVG, ?_⟩
  intro t D' A ht hD' hA Λ hΛ hF

  have hΛn : (Λ : Set K) ∈ 𝓝 (0 : K) := hΛ.1.mem_nhds Λ.zero_mem
  have hBn : (B : Set K) ∈ 𝓝 (0 : K) := hB.1.mem_nhds B.zero_mem
  obtain ⟨Λ', hΛ', hΛ'V⟩ := hSM K R ψ hD hn ((Λ : Set K) ∩ (B : Set K)) (inter_mem hΛn hBn)
  have hΛ'Λ : Λ'.toAddSubgroup ≤ Λ := fun x hx => (hΛ'V hx).1
  have hΛ'B : Λ' ≤ B := fun x hx => (hΛ'V hx).2
  set F : (Fin m → K) → ℂ := fun x => A x * ψ (g0 (D' : K) x * ((t⁻¹ : Kˣ) : K)) with hFdef
  have hFsupp : ∀ x, F x ≠ 0 → ∀ i, x i ∈ L₀ := fun x hx i =>
    (hA.1 x (left_ne_zero_of_mul hx) i).1
  have hF' : LatInvN Λ'.toAddSubgroup F := fun x l hl => hF x l fun i => hΛ'Λ (hl i)
  rw [← hRef K R ψ hD Λ Λ'.toAddSubgroup L₀ m F hΛ hΛ' hL₀ hΛ'Λ hFsupp hF]

  have hfin : {z : Kˣ | z ^ (m + 1) = D'}.Finite :=
    @hRF K _ hD.artin hD.red (m + 1) (by omega) D'
  have hzQ : ∀ z : Kˣ, z ^ (m + 1) = D' → (z : K) ^ (m + 1) = (D' : K) := fun z hz => by
    rw [← hz, Units.val_pow_eq_pow_val]
  have hsep : ∀ z z' : Kˣ, z ^ (m + 1) = D' → z' ^ (m + 1) = D' → ∀ x : Fin m → K,
      (∀ k, x k - (z : K) ∈ B) → (∀ k, x k - (z' : K) ∈ B) → z = z' := by
    intro z z' hz hz' x hx hx'
    refine hS z z' (by rw [hzQ z hz]; exact hD') (hz.trans hz'.symm) ?_
    have h1 := B.sub_mem (hx' ⟨0, hm⟩) (hx ⟨0, hm⟩)
    have h2 : (z : K) - (z' : K) = x ⟨0, hm⟩ - (z' : K) - (x ⟨0, hm⟩ - (z : K)) := by ring
    rw [h2]
    exact (hBV h1).1.2
  set Foff : (Fin m → K) → ℂ := fun x =>
    if ∃ z : Kˣ, z ^ (m + 1) = D' ∧ ∀ k, x k - (z : K) ∈ B.toAddSubgroup then 0 else F x with hFoff
  set Fz : Kˣ → (Fin m → K) → ℂ := fun z x => if ∀ k, x k - (z : K) ∈ B then F x else 0 with hFz
  have hdec : ∀ x, F x = Foff x + ∑ z ∈ hfin.toFinset, Fz z x := by
    intro x
    by_cases h : ∃ z : Kˣ, z ^ (m + 1) = D' ∧ ∀ k, x k - (z : K) ∈ B.toAddSubgroup
    · obtain ⟨z0, hz0, hx0⟩ := h
      have h1 : Foff x = 0 := if_pos ⟨z0, hz0, hx0⟩
      rw [h1, zero_add, Finset.sum_eq_single z0]
      · exact (if_pos hx0).symm
      · intro z hz hne
        refine if_neg fun hx => hne ?_
        exact hsep z z0 (by simpa using hz) hz0 x hx hx0
      · intro hz
        exact absurd (by simpa using hz0) hz
    · have h1 : Foff x = F x := if_neg h
      rw [h1, Finset.sum_eq_zero, add_zero]
      intro z hz
      exact if_neg fun hx => h ⟨z, by simpa using hz, hx⟩
  have hFoffInv : LatInvN Λ'.toAddSubgroup Foff := by
    intro x l hl
    have h1 : (∃ z : Kˣ, z ^ (m + 1) = D' ∧ ∀ k, (x + l) k - (z : K) ∈ B.toAddSubgroup) ↔
        ∃ z : Kˣ, z ^ (m + 1) = D' ∧ ∀ k, x k - (z : K) ∈ B.toAddSubgroup :=
      exists_congr fun z => and_congr_right fun _ =>
        Formalism.FourierDecayAlt.P.HessianScalingIntegrals.ball_iff B.toAddSubgroup x l z fun k => hΛ'B (hl k)
    simp only [hFoff]
    rw [if_congr h1 rfl (hF' x l hl)]
  have hFzInv : ∀ z : Kˣ, LatInvN Λ'.toAddSubgroup (Fz z) := by
    intro z x l hl
    have h1 : (∀ k, (x + l) k - (z : K) ∈ B) ↔ ∀ k, x k - (z : K) ∈ B :=
      Formalism.FourierDecayAlt.P.HessianScalingIntegrals.ball_iff B.toAddSubgroup x l z fun k => hΛ'B (hl k)
    simp only [hFz]
    rw [if_congr h1 (hF' x l hl) rfl]
  have hFoffSupp : ∀ x, Foff x ≠ 0 → ∀ i, x i ∈ L₀ := by
    intro x hx
    apply hFsupp
    intro h0
    apply hx
    simp only [hFoff, h0, ite_self]
  have hFzSupp : ∀ z x, Fz z x ≠ 0 → ∀ i, x i ∈ L₀ := by
    intro z x hx
    apply hFsupp
    intro h0
    apply hx
    simp only [hFz, h0, ite_self]
  have hS0 := Formalism.FourierDecayAlt.P.HessianScalingIntegrals.fin_supp Λ'.toAddSubgroup L₀ hΛ'.1 hL₀.2 m
  have hsplit : intK R Λ'.toAddSubgroup m F = intK R Λ'.toAddSubgroup m Foff +
      ∑ z ∈ hfin.toFinset, intK R Λ'.toAddSubgroup m (Fz z) := by
    rw [Formalism.FourierDecayAlt.P.HessianScalingIntegrals.intK_eq_sum R _ L₀ m hS0 F hFsupp, Formalism.FourierDecayAlt.P.HessianScalingIntegrals.intK_eq_sum R _ L₀ m hS0 Foff hFoffSupp]
    simp_rw [fun z => Formalism.FourierDecayAlt.P.HessianScalingIntegrals.intK_eq_sum R _ L₀ m hS0 (Fz z) (hFzSupp z)]
    rw [← Finset.mul_sum, ← mul_add, Finset.sum_comm, ← Finset.sum_add_distrib]
    congr 1
    exact Finset.sum_congr rfl fun y _ => hdec _
  have hoff : intK R Λ'.toAddSubgroup m Foff = 0 :=
    hN t D' A ht.1 hD' hA Λ'.toAddSubgroup hΛ' hFoffInv
  rw [hsplit, hoff, zero_add]
  have hrhs : (∑ᶠ z : Kˣ, if z ^ (m + 1) = D' then
          γ (z * t) * ((modK R ((m + 1 : ℕ) : K) ^ (-(1 : ℝ) / 2) *
            modK R (z : K) ^ ((m : ℝ) / 2) : ℝ) : ℂ) *
          ψ (((m + 1 : ℕ) : K) * (z : K) * ((t⁻¹ : Kˣ) : K)) * A (fun _ => (z : K)) else 0) =
      ∑ z ∈ hfin.toFinset, γ (z * t) * ((modK R ((m + 1 : ℕ) : K) ^ (-(1 : ℝ) / 2) *
            modK R (z : K) ^ ((m : ℝ) / 2) : ℝ) : ℂ) *
          ψ (((m + 1 : ℕ) : K) * (z : K) * ((t⁻¹ : Kˣ) : K)) * A (fun _ => (z : K)) := by
    rw [finsum_eq_sum_of_support_subset (s := hfin.toFinset)]
    · refine Finset.sum_congr rfl fun z hz => if_pos (by simpa using hz)
    · intro z hz
      simp only [Set.Finite.coe_toFinset, Set.mem_ofPred_eq]
      by_contra h
      exact hz (if_neg h)
  rw [hrhs, Finset.mul_sum]
  refine Finset.sum_congr rfl fun z hz => ?_
  have hz' : z ^ (m + 1) = D' := by simpa using hz
  have hzq : (z : K) ^ (m + 1) ∈ Q := by rw [hzQ z hz']; exact hD'
  exact Formalism.FourierDecayAlt.P.HessianScalingIntegrals.root_piece R ψ m γ hγ Λ₁ B Λ' hB hΛ' hΛ'B (fun b hb => (hBV hb).2) A hA.2 t z (D' : K)
    (hzQ z hz') ⟨(hMod K R ψ hD z t).1, (hMod K R ψ hD t z).1, (hMod K R ψ hD z t).2⟩
    (hG t z ht.2 hzq) (hM B hB (fun b hb => (hBV hb).1.1) z hzq) (hFzInv z)
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.HessianScalingIntegrals =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.MeanNormSquaredBound =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.MeanNormSquaredBound", "h": "module\n\npublic import Formalism.HermitianCurvature.ThetaExistenceInductiveFromPieces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Formalism.DoubleCosetMeasures Formalism.FourierDecayAlt.A5 Formalism.FourierDecayAlt.A6 Filter Topology
open scoped ComplexConjugate

namespace Formalism.FourierDecayAlt.P

namespace MeanNormSquaredBound

section Abstract

variable {E : Type} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

lemma inner_sum_sum {ι κ : Type} (S : Finset ι) (S' : Finset κ) (c : ι → ℂ) (d : κ → ℂ)
    (v : ι → E) (v' : κ → E) :
    inner ℂ (∑ j ∈ S', d j • v' j) (∑ i ∈ S, c i • v i) =
      ∑ i ∈ S, ∑ j ∈ S', c i * conj (d j) * inner ℂ (v' j) (v i) := by
  rw [inner_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [sum_inner]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [inner_smul_left, inner_smul_right]
  ring

lemma normSq_sum {ι : Type} (S : Finset ι) (c : ι → ℂ) (v : ι → E) :
    ((‖∑ i ∈ S, c i • v i‖ ^ 2 : ℝ) : ℂ) =
      ∑ i ∈ S, ∑ j ∈ S, c i * conj (c j) * inner ℂ (v j) (v i) := by
  rw [← inner_sum_sum, inner_self_eq_norm_sq_to_K]
  push_cast
  rfl

lemma sum_sum_sum_sum_comm {α β M : Type} [AddCommMonoid M] (P : Finset α) (H : Finset β)
    (f : α → α → β → β → M) :
    ∑ p ∈ P, ∑ p' ∈ P, ∑ h ∈ H, ∑ h' ∈ H, f p p' h h' =
      ∑ h ∈ H, ∑ h' ∈ H, ∑ p ∈ P, ∑ p' ∈ P, f p p' h h' := by
  calc ∑ p ∈ P, ∑ p' ∈ P, ∑ h ∈ H, ∑ h' ∈ H, f p p' h h'
      = ∑ p ∈ P, ∑ h ∈ H, ∑ p' ∈ P, ∑ h' ∈ H, f p p' h h' :=
        Finset.sum_congr rfl fun p _ => Finset.sum_comm
    _ = ∑ h ∈ H, ∑ p ∈ P, ∑ p' ∈ P, ∑ h' ∈ H, f p p' h h' := Finset.sum_comm
    _ = ∑ h ∈ H, ∑ p ∈ P, ∑ h' ∈ H, ∑ p' ∈ P, f p p' h h' :=
        Finset.sum_congr rfl fun h _ => Finset.sum_congr rfl fun p _ => Finset.sum_comm
    _ = ∑ h ∈ H, ∑ h' ∈ H, ∑ p ∈ P, ∑ p' ∈ P, f p p' h h' :=
        Finset.sum_congr rfl fun h _ => Finset.sum_comm

lemma normSq_mean {X α : Type} (L : E →ₗ[ℂ] E) (k : ℂ) (hk : conj k = k) (P : Finset α)
    (c : α → ℂ) (F : Finset X) (a : X → ℂ) (u : X → α → E) :
    ((‖L (k • ∑ p ∈ P, c p • ∑ h ∈ F, a h • u h p)‖ ^ 2 : ℝ) : ℂ) =
      ∑ h ∈ F, ∑ h' ∈ F, a h * conj (a h') *
        (k ^ 2 * ∑ p ∈ P, ∑ p' ∈ P, c p * conj (c p') * inner ℂ (L (u h' p')) (L (u h p))) := by
  have h1 : L (k • ∑ p ∈ P, c p • ∑ h ∈ F, a h • u h p) =
      ∑ p ∈ P, (k * c p) • ∑ h ∈ F, a h • L (u h p) := by

    simp only [map_smul, map_sum, Finset.smul_sum, smul_smul, mul_assoc]
  rw [h1, normSq_sum]
  simp only [inner_sum_sum, Finset.mul_sum]
  rw [sum_sum_sum_sum_comm]
  refine Finset.sum_congr rfl fun h _ => Finset.sum_congr rfl fun h' _ =>
    Finset.sum_congr rfl fun p _ => Finset.sum_congr rfl fun p' _ => ?_
  rw [map_mul, hk]
  ring

lemma sum_sub_prod {α β M : Type} [AddCommMonoid M] (A : Finset α) (B : Finset β)
    (f : α × β → M) : ∑ p : ↥A × ↥B, f (p.1.1, p.2.1) = ∑ p ∈ A ×ˢ B, f p := by
  rw [Fintype.sum_prod_type, Finset.sum_product, ← Finset.sum_coe_sort A]
  refine Finset.sum_congr rfl fun ρ _ => ?_
  rw [← Finset.sum_coe_sort B]

lemma abstract_bound (AB : AvgBound) {X Y : Type} (F : Finset X) (a : X → ℂ) (A B : Finset Y)
    (u : X → Y × Y → E) (T : E →ₗ[ℂ] E) (hT : ∀ v, ‖T v‖ ≤ ‖v‖) (e₁ e₂ : Y → ℂ)
    (he₁ : ∀ ρ ∈ A, ‖e₁ ρ‖ = 1)
    (horth : ∀ h ∈ F, ∀ h' ∈ F, ∀ ρ ∈ A, ∀ ρ' ∈ A, ∀ b ∈ B, ∀ b' ∈ B, ρ ≠ ρ' →
      inner ℂ (u h (ρ, b)) (u h' (ρ', b')) = 0) :
    ∃ r₁ r₂ : ℝ, r₁ ≤ r₂ ∧
      (r₁ : ℂ) = ∑ h ∈ F, ∑ h' ∈ F, a h * conj (a h') *
        ((((A.card : ℂ) * (B.card : ℂ))⁻¹) ^ 2 * ∑ p ∈ A ×ˢ B, ∑ p' ∈ A ×ˢ B,
          (e₁ p.1 * e₂ p.2) * conj (e₁ p'.1 * e₂ p'.2) * inner ℂ (T (u h' p')) (T (u h p))) ∧
      (r₂ : ℂ) = ∑ h ∈ F, ∑ h' ∈ F, a h * conj (a h') *
        ((A.card : ℂ)⁻¹ * ((A.card : ℂ)⁻¹ * ∑ ρ ∈ A, ((B.card : ℂ)⁻¹) ^ 2 * ∑ b ∈ B, ∑ b' ∈ B,
          e₂ b * conj (e₂ b') * inner ℂ (u h' (ρ, b')) (u h (ρ, b)))) := by
  set w : Y × Y → E := fun p => ∑ h ∈ F, a h • u h p with hw
  have key := AB E ↥A ↥B (fun p => w (p.1.1, p.2.1)) T (fun ρ => e₁ ρ.1) (fun b => e₂ b.1) hT
    (fun ρ => he₁ ρ.1 ρ.2) (by
      intro ρ ρ' b b' hne
      have hne' : ρ.1 ≠ ρ'.1 := fun h => hne (Subtype.ext h)
      simp only [hw]
      rw [inner_sum_sum]
      refine Finset.sum_eq_zero fun h hh => Finset.sum_eq_zero fun h' hh' => ?_
      rw [horth h' hh' h hh ρ.1 ρ.2 ρ'.1 ρ'.2 b.1 b.2 b'.1 b'.2 hne', mul_zero])
  simp only [Fintype.card_coe] at key
  have e1 : (∑ p : ↥A × ↥B, (e₁ p.1.1 * e₂ p.2.1) • w (p.1.1, p.2.1)) =
      ∑ p ∈ A ×ˢ B, (e₁ p.1 * e₂ p.2) • w p :=
    sum_sub_prod A B (fun p => (e₁ p.1 * e₂ p.2) • w p)
  have e2 : (∑ ρ : ↥A, ‖(B.card : ℂ)⁻¹ • ∑ b : ↥B, e₂ b.1 • w (ρ.1, b.1)‖ ^ 2) =
      ∑ ρ ∈ A, ‖(B.card : ℂ)⁻¹ • ∑ b ∈ B, e₂ b • w (ρ, b)‖ ^ 2 := by
    rw [← Finset.sum_coe_sort A]
    refine Finset.sum_congr rfl fun ρ _ => ?_
    rw [← Finset.sum_coe_sort B]
  rw [e1, e2] at key
  refine ⟨_, _, key, ?_, ?_⟩
  · exact normSq_mean T _ (by simp) (A ×ˢ B) (fun p => e₁ p.1 * e₂ p.2) F a u
  · have h3 : ∀ ρ, ((‖(B.card : ℂ)⁻¹ • ∑ b ∈ B, e₂ b • w (ρ, b)‖ ^ 2 : ℝ) : ℂ) =
        ∑ h ∈ F, ∑ h' ∈ F, a h * conj (a h') * (((B.card : ℂ)⁻¹) ^ 2 * ∑ b ∈ B, ∑ b' ∈ B,
          e₂ b * conj (e₂ b') * inner ℂ (u h' (ρ, b')) (u h (ρ, b))) := fun ρ =>
      normSq_mean LinearMap.id _ (by simp) B e₂ F a (fun h b => u h (ρ, b))
    rw [Complex.ofReal_mul, Complex.ofReal_mul, Complex.ofReal_sum]
    simp only [h3, Complex.ofReal_inv, Complex.ofReal_natCast]
    rw [Finset.sum_comm]
    simp only [Finset.mul_sum]
    refine Finset.sum_congr rfl fun h _ => ?_
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun h' _ => Finset.sum_congr rfl fun ρ _ =>
      Finset.sum_congr rfl fun b _ => Finset.sum_congr rfl fun b' _ => ?_
    ring

end Abstract

lemma norm_psi {K : Type} [CommRing K] (ψ : AddChar K ℂ) (hu : ∀ x : K, conj (ψ x) = ψ (-x))
    (x : K) : ‖ψ x‖ = 1 := by
  have h1 : ψ x * conj (ψ x) = 1 := by
    rw [hu, ← AddChar.map_add_eq_mul, add_neg_cancel, AddChar.map_zero_eq_one]
  rw [Complex.mul_conj, Complex.normSq_eq_norm_sq] at h1
  have h2 : ‖ψ x‖ ^ 2 = 1 := by exact_mod_cast h1
  have h3 : (‖ψ x‖ - 1) * (‖ψ x‖ + 1) = 0 := by ring_nf; rw [h2]; ring
  rcases mul_eq_zero.mp h3 with h | h
  · linarith
  · have := norm_nonneg (ψ x); linarith

end MeanNormSquaredBound

open MeanNormSquaredBound in
theorem thetaAverageLower : Formalism.FourierDecayAlt.A6.ThxLower := by
  intro GI A2V UGE ExponentialIntegralMeasures CSA MM CPSD KG GRC AB CNE CM PL K _ _ _ R ψ hD hchar m hm n₀ F Om Lc hF hOm D
  classical
  set Sg : Finset K := (D.A ×ˢ D.B).image (fun p => p.1 + p.2) with hSg
  have hLat : IsLat (perp ψ D.L₂) := (PL K R ψ hD hchar D.L₂ D.lat₂).1
  have hAL : ∀ ρ ∈ D.A, ρ ∈ D.L₂ := D.repsA.1
  have hBR : ∀ b ∈ D.B, b ∈ R.toAddSubgroup := D.repsB.1
  have hmemSg : ∀ ρ ∈ D.A, ∀ b ∈ D.B, ρ + b ∈ Sg := by
    intro ρ hρ b hb
    exact Finset.mem_image.mpr ⟨(ρ, b), Finset.mem_product.mpr ⟨hρ, hb⟩, rfl⟩
  have hSgL : ∀ σ ∈ Sg, σ ∈ D.L₂ := by
    intro σ hσ
    obtain ⟨p, hp, rfl⟩ := Finset.mem_image.mp hσ
    obtain ⟨hp1, hp2⟩ := Finset.mem_product.mp hp
    exact D.L₂.add_mem (hAL _ hp1) (D.le₂ (hBR _ hp2))
  obtain ⟨V, hV, hGI⟩ := GI K R ψ hD hchar m hm n₀ F hF Om Sg (perp ψ D.L₂) hOm hLat D.omStable
    D.nsInv (by
      intro σ hσ σ' hσ' l hl
      exact hl _ (D.L₂.sub_mem (hSgL σ hσ) (hSgL σ' hσ')))
  refine ⟨V, hV, ?_⟩
  intro t τ cr ht hcr hsh z₁ hz₁ a

  set F' : Finset (Point K × Kˣ) := F ×ˢ Sg.image τ with hF'
  have hmemF' : ∀ h ∈ F, ∀ ρ ∈ D.A, ∀ b ∈ D.B, (h, τ (ρ + b)) ∈ F' := by
    intro h hh ρ hρ b hb
    exact Finset.mem_product.mpr ⟨hh, Finset.mem_image_of_mem τ (hmemSg ρ hρ b hb)⟩
  obtain ⟨hc1, hc2⟩ := CPSD KG ExponentialIntegralMeasures MM K R ψ hD m cr (cutSet m Om t) F' hcr (by
    intro p hp p' hp'
    rw [hF _ (Finset.mem_product.mp hp).1, hF _ (Finset.mem_product.mp hp').1])
  obtain ⟨n, u₀, T, hT, hG, hGc⟩ := GRC (Point K × Kˣ) F'
    (fun p p' => uGram R ψ m cr Set.univ p.1 p'.1 p.2 p'.2)
    (fun p p' => uGram R ψ m cr (cutSet m Om t) p.1 p'.1 p.2 p'.2) hc1 hc2

  obtain ⟨r₁, r₂, hr, hr₁, hr₂⟩ := abstract_bound AB F a D.A D.B
    (fun h p => u₀ (h, τ (p.1 + p.2))) T hT (fun ρ => ψ (-(z₁ * ρ))) (fun b => ψ (-(z₁ * b)))
    (fun ρ _ => norm_psi ψ hD.unitary _) (by
      intro h hh h' hh' ρ hρ ρ' hρ' b hb b' hb' hne
      simp only
      rw [hG _ (hmemF' h' hh' ρ' hρ' b' hb') _ (hmemF' h hh ρ hρ b hb)]
      simp only
      rw [UGE ExponentialIntegralMeasures CSA MM K R ψ hD m h' h _ _ cr (by rw [hF h hh, hF h' hh']) hcr]
      by_contra hcon
      have hNs : Ns R ψ m h' h (τ (ρ' + b')) (τ (ρ + b)) ≠ 0 := fun h0 => hcon (by rw [h0, mul_zero])
      have hmem := A2V K R ψ hD m hm h' h _ _ (by rw [hF h hh, hF h' hh']) hNs
      rw [hsh ρ' hρ' b' hb', hsh ρ hρ b hb] at hmem
      have h5 : ρ' - ρ ∈ R.toAddSubgroup := by
        have h6 : ρ' - ρ = (((t⁻¹ : Kˣ) : K) + (ρ' + b') - (((t⁻¹ : Kˣ) : K) + (ρ + b))) + (b - b') := by
          ring
        rw [h6]
        exact R.toAddSubgroup.add_mem hmem (R.toAddSubgroup.sub_mem (hBR b hb) (hBR b' hb'))
      obtain ⟨x, _, hx⟩ := D.repsA.2 ρ' (hAL ρ' hρ')
      have e1 := hx ρ ⟨hρ, h5⟩
      have e2 := hx ρ' ⟨hρ', by rw [sub_self]; exact R.toAddSubgroup.zero_mem⟩
      exact hne (e1.trans e2.symm))
  have hr₁' : (r₁ : ℂ) = ∑ h ∈ F, ∑ h' ∈ F, a h * conj (a h') *
      ((D.A.card : ℂ)⁻¹ * NsK R ψ (m + 1) h h' z₁) := by
    rw [hr₁]
    refine Finset.sum_congr rfl fun h hh => Finset.sum_congr rfl fun h' hh' => ?_
    congr 1
    rw [← CNE CM PL K R ψ hD hchar (m + 1) F Om Lc D hOm.2.1 z₁ hz₁ h hh h' hh']
    congr 1
    refine Finset.sum_congr rfl fun p hp => Finset.sum_congr rfl fun p' hp' => ?_
    obtain ⟨hp1, hp2⟩ := Finset.mem_product.mp hp
    obtain ⟨hp1', hp2'⟩ := Finset.mem_product.mp hp'
    rw [hGc _ (hmemF' h hh p.1 hp1 p.2 hp2) _ (hmemF' h' hh' p'.1 hp1' p'.2 hp2')]
    simp only
    rw [hGI t _ _ cr ht hcr _ (hmemSg p.1 hp1 p.2 hp2) _ (hmemSg p'.1 hp1' p'.2 hp2')
      (hsh p.1 hp1 p.2 hp2) (hsh p'.1 hp1' p'.2 hp2') h hh h' hh']
    rw [← AddChar.map_add_eq_mul, ← AddChar.map_add_eq_mul]
    have q1 : -(z₁ * p.1) + -(z₁ * p.2) = -(z₁ * (p.1 + p.2)) := by ring
    have q2 : -(z₁ * p'.1) + -(z₁ * p'.2) = -(z₁ * (p'.1 + p'.2)) := by ring
    rw [q1, q2]
  have hr₂' : (r₂ : ℂ) = ∑ h ∈ F, ∑ h' ∈ F, a h * conj (a h') *
      ((D.A.card : ℂ)⁻¹ * thx R ψ m cr D.A D.B τ z₁ h h') := by
    rw [hr₂]
    refine Finset.sum_congr rfl fun h hh => Finset.sum_congr rfl fun h' hh' => ?_
    congr 2
    unfold thx
    congr 1
    refine Finset.sum_congr rfl fun ρ hρ => ?_
    congr 1
    refine Finset.sum_congr rfl fun b hb => Finset.sum_congr rfl fun b' hb' => ?_
    simp only
    rw [hG _ (hmemF' h hh ρ hρ b hb) _ (hmemF' h' hh' ρ hρ b' hb')]
  have hApos : 0 < (D.A.card : ℝ) := by
    obtain ⟨x, hx, _⟩ := D.repsA.2 0 D.L₂.zero_mem
    exact_mod_cast Finset.card_pos.mpr ⟨x, hx.1⟩
  have hAne : (D.A.card : ℂ) ≠ 0 := by
    exact_mod_cast hApos.ne'
  have hfin : ∑ h ∈ F, ∑ h' ∈ F, a h * conj (a h') *
      (thx R ψ m cr D.A D.B τ z₁ h h' - NsK R ψ (m + 1) h h' z₁) =
      (((D.A.card : ℝ) * (r₂ - r₁) : ℝ) : ℂ) := by
    push_cast
    rw [hr₁', hr₂', ← Finset.sum_sub_distrib, Finset.mul_sum]
    refine Finset.sum_congr rfl fun h _ => ?_
    rw [← Finset.sum_sub_distrib, Finset.mul_sum]
    refine Finset.sum_congr rfl fun h' _ => ?_
    field_simp
  rw [hfin]
  refine ⟨Complex.ofReal_im _, ?_⟩
  rw [Complex.ofReal_re]
  exact mul_nonneg hApos.le (sub_nonneg.mpr hr)

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.MeanNormSquaredBound =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.MeanPositiveSemidefinite =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.MeanPositiveSemidefinite", "h": "module\n\npublic import Formalism.HermitianCurvature.ThetaExistenceInductiveFromPieces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Formalism.DoubleCosetMeasures Formalism.FourierDecayAlt.A5 Formalism.FourierDecayAlt.A6 Filter Topology
open scoped ComplexConjugate

namespace Formalism.FourierDecayAlt.P.MeanPositiveSemidefinite

section PSD

variable {X : Type}

theorem psd_congr {F : Finset X} {k k' : X → X → ℂ} (h : ∀ x ∈ F, ∀ y ∈ F, k x y = k' x y)
    (hk : IsPSD F k) : IsPSD F k' := by
  intro a
  have : ∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * k' x y =
      ∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * k x y :=
    Finset.sum_congr rfl fun x hx => Finset.sum_congr rfl fun y hy => by rw [h x hx y hy]
  rw [this]; exact hk a

theorem psd_zero (F : Finset X) : IsPSD F (fun _ _ => (0 : ℂ)) := by
  intro a; simp

theorem psd_add {F : Finset X} {k k' : X → X → ℂ} (hk : IsPSD F k) (hk' : IsPSD F k') :
    IsPSD F (fun x y => k x y + k' x y) := by
  intro a
  have : ∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * (k x y + k' x y) =
      (∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * k x y) +
        ∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * k' x y := by
    simp only [mul_add, Finset.sum_add_distrib]
  rw [this, Complex.add_im, Complex.add_re, (hk a).1, (hk' a).1]
  exact ⟨by simp, add_nonneg (hk a).2 (hk' a).2⟩

theorem psd_sum {ι : Type} (S : Finset ι) {F : Finset X} {k : ι → X → X → ℂ}
    (hk : ∀ i ∈ S, IsPSD F (k i)) : IsPSD F (fun x y => ∑ i ∈ S, k i x y) := by
  classical
  induction S using Finset.induction_on with
  | empty => simpa using psd_zero F
  | insert i S hi ih =>
    have := psd_add (hk i (Finset.mem_insert_self _ _))
      (ih fun j hj => hk j (Finset.mem_insert_of_mem hj))
    refine psd_congr ?_ this
    intro x _ y _; rw [Finset.sum_insert hi]

theorem psd_smul {F : Finset X} {k : X → X → ℂ} (c : ℝ) (hc : 0 ≤ c) (hk : IsPSD F k) :
    IsPSD F (fun x y => (c : ℂ) * k x y) := by
  intro a
  have : ∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * ((c : ℂ) * k x y) =
      (c : ℂ) * ∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * k x y := by
    simp only [Finset.mul_sum]
    exact Finset.sum_congr rfl fun x _ => Finset.sum_congr rfl fun y _ => by ring
  rw [this, Complex.re_ofReal_mul, Complex.im_ofReal_mul, (hk a).1]
  exact ⟨by simp, mul_nonneg hc (hk a).2⟩

end PSD

theorem finite_classes {K : Type} [AddCommGroup K] (R P : AddSubgroup K) (h : R.relIndex P ≠ 0) :
    {x : K ⧸ R | (Quotient.out x : K) ∈ P}.Finite := by
  have hfi : (R.addSubgroupOf P).FiniteIndex := ⟨h⟩
  have : Finite (P ⧸ R.addSubgroupOf P) := inferInstance
  refine (Set.finite_range
    (fun q : P ⧸ R.addSubgroupOf P => (((Quotient.out q : P) : K) : K ⧸ R))).subset ?_
  intro x hx
  refine ⟨((⟨Quotient.out x, hx⟩ : P) : P ⧸ R.addSubgroupOf P), ?_⟩
  have h1 : ((Quotient.out ((⟨Quotient.out x, hx⟩ : P) : P ⧸ R.addSubgroupOf P) : P) :
      P ⧸ R.addSubgroupOf P) = ((⟨Quotient.out x, hx⟩ : P) : P ⧸ R.addSubgroupOf P) :=
    QuotientAddGroup.out_eq' _
  rw [QuotientAddGroup.eq, AddSubgroup.mem_addSubgroupOf] at h1
  have h2 : (((Quotient.out ((⟨Quotient.out x, hx⟩ : P) : P ⧸ R.addSubgroupOf P) : P) : K) :
      K ⧸ R) = ((Quotient.out x : K) : K ⧸ R) := by
    rw [QuotientAddGroup.eq]; simpa using h1
  exact h2.trans (QuotientAddGroup.out_eq' x)

theorem finsum_ite_eq {α : Type} (S : Finset α) (p : α → Prop) [DecidablePred p] (f : α → ℂ)
    (hS : ∀ x, p x → x ∈ S) :
    ∑ᶠ x, (if p x then f x else 0) = ∑ x ∈ S, if p x then f x else 0 := by
  refine finsum_eq_sum_of_support_subset _ ?_
  intro x hx
  by_cases hp : p x
  · exact hS x hp
  · simp [hp] at hx

theorem mean_sub {K : Type} (A B : Finset K) (hA : A.card ≠ 0) (hB : B.card ≠ 0) (Y : ℂ)
    (u : K → K → ℂ) :
    Y - ((A.card : ℂ) * (B.card : ℂ))⁻¹ * ∑ ρ ∈ A, ∑ b ∈ B, u ρ b =
      ∑ ρ ∈ A, ∑ b ∈ B, ((((A.card : ℝ) * (B.card : ℝ))⁻¹ : ℝ) : ℂ) * (Y - u ρ b) := by
  have hA' : (A.card : ℂ) ≠ 0 := by exact_mod_cast hA
  have hB' : (B.card : ℂ) ≠ 0 := by exact_mod_cast hB
  simp only [mul_sub, Finset.sum_sub_distrib, Finset.sum_const, nsmul_eq_mul, ← Finset.mul_sum]
  push_cast
  field_simp

theorem reps_card_ne_zero {K : Type} [CommRing K] {S : Finset K} {L M : AddSubgroup K}
    (h : IsReps S L M) : S.card ≠ 0 := by
  obtain ⟨a, ha, _⟩ := h.2 0 L.zero_mem
  exact Finset.card_ne_zero_of_mem ha.1

end Formalism.FourierDecayAlt.P.MeanPositiveSemidefinite

open Formalism.FourierDecayAlt.P.MeanPositiveSemidefinite in
theorem Formalism.FourierDecayAlt.P.thetaOnDomainOfSteps : Formalism.FourierDecayAlt.A6.ThOmAssemble := by
  intro hGI hADE hLC hKH hMLC hLCh hLF hSU hSmU hUG hUNB hCP hUB hCSA hMM hKG hKBD hGRC hAB hPG hPD
    hPL hCM hCNE hTL hTB hTS hA2 hN1 K _ _ _ R ψ hD hch m hm hA13 n₀ F Lc Om hF hCut hOm
  classical
  obtain ⟨hLo, hLcpt, hRL, hNs0⟩ := hCut
  obtain ⟨D⟩ := hADE hLC hKH hMLC hLCh hLF K R ψ hD hch (m + 1) F Om (Lc : Set K) (by omega) hOm
    hLcpt
  obtain ⟨V₁, hV₁, hLow⟩ := hTL hGI hA2.2 hUG hN1 hCSA hMM hCP hKG hGRC hAB hCNE hCM hPL K R ψ hD hch
    m hm n₀ F Om (Lc : Set K) hF hOm D
  obtain ⟨V₂, hV₂, hSh⟩ := hSU K R ψ hD hch ((D.A ×ˢ D.B).image (fun p => p.1 + p.2))
  obtain ⟨t, ht⟩ := hSmU K R ψ hD hch (V₁ ∩ V₂) (Filter.inter_mem hV₁ hV₂)

  let τ : K → Kˣ := fun σ =>
    if h : IsUnit (((t⁻¹ : Kˣ) : K) + σ) then h.unit⁻¹ else 1
  have hmem : ∀ ρ ∈ D.A, ∀ b ∈ D.B, ρ + b ∈ (D.A ×ˢ D.B).image (fun p => p.1 + p.2) := by
    intro ρ hρ b hb
    exact Finset.mem_image.2 ⟨(ρ, b), Finset.mem_product.2 ⟨hρ, hb⟩, rfl⟩
  have hτ : ∀ ρ ∈ D.A, ∀ b ∈ D.B, IsShift t (τ (ρ + b)) (ρ + b) := by
    intro ρ hρ b hb
    have hu := (hSh t ht.2 _ (hmem ρ hρ b hb)).1
    simp only [IsShift, τ, dif_pos hu, inv_inv, IsUnit.unit_spec]
  have hτmod : ∀ ρ ∈ D.A, ∀ b ∈ D.B,
      modK R (τ (ρ + b) : K) * modK R ((t⁻¹ : Kˣ) : K) = modK R 1 := by
    intro ρ hρ b hb
    have h1 := (hSh t ht.2 _ (hmem ρ hρ b hb)).2
    have h2 := (hMM K R ψ hD (τ (ρ + b)) (τ (ρ + b))⁻¹).2
    rw [hτ ρ hρ b hb] at h2
    rw [← h1, ← h2, ← hτ ρ hρ b hb, Units.mul_inv]
  have htpos : 0 < modK R ((t⁻¹ : Kˣ) : K) := (hMM K R ψ hD t⁻¹ 1).1

  have hcrex : ∀ x : K ⧸ R.toAddSubgroup, ∃ u : Kˣ, ((u : K) : K ⧸ R.toAddSubgroup) = x := by
    intro x
    obtain ⟨r, hr, hu⟩ := hD.unitRep (Quotient.out x)
    refine ⟨hu.unit, ?_⟩
    rw [IsUnit.unit_spec, QuotientAddGroup.mk_add, QuotientAddGroup.out_eq',
      (QuotientAddGroup.eq_zero_iff r).2 hr, add_zero]
  choose cr hcr using hcrex
  have hcr' : IsCr R cr := hcr
  have hBR : ∀ b ∈ D.B, b ∈ R := fun b hb => D.repsB.1 b hb
  obtain ⟨hper, hpsd⟩ := hTB hCP hKG hN1 hMM K R ψ hD m n₀ F D.A D.B τ cr hF hcr' hBR
  obtain ⟨Θm, hΘm⟩ := hA13 n₀ F hF
  refine ⟨fun z h h' => if z ∈ Lc then thx R ψ m cr D.A D.B τ z h h' else 0, ?_, ?_, ?_, ?_, ?_, ?_⟩
  ·
    intro x r hr
    have hiff : x + r ∈ Lc ↔ x ∈ Lc := by
      constructor
      · intro h
        have := Lc.sub_mem h (hRL r hr)
        simpa using this
      · intro h; exact Lc.add_mem h (hRL r hr)
    funext h h'
    simp only [hiff, hper x r hr]
  ·
    intro x
    by_cases hx : x ∈ Lc
    · simpa only [hx, if_true] using hpsd x
    · simpa only [hx, if_false] using psd_zero F
  ·
    intro x hx h _ h' _
    simp only [hx, if_false]
  ·
    intro t' ht'
    by_cases hx : (t' : K) ∈ Lc
    · have := hLow t τ cr ht.1 hcr' hτ (t' : K) ht'
      refine psd_congr ?_ this
      intro h _ h' _
      have hu : IsUnit (t' : K) := t'.isUnit
      have hu' : hu.unit = t' := Units.ext rfl
      simp only [hx, if_true, NsK, dif_pos hu, hu']
    · refine psd_congr ?_ (psd_zero F)
      intro h hh h' hh'
      simp only [hx, if_false, hNs0 t' hx h hh h' hh', sub_zero]
  ·
    have hPlat := (hPL K R ψ hD hch D.L₁ D.lat₁).1
    have hRlat : IsLat R.toAddSubgroup := ⟨hD.isOpen, hD.isCompact⟩
    have hfin := finite_classes R.toAddSubgroup (perp ψ D.L₁)
      (hLF K (perp ψ D.L₁) R.toAddSubgroup hPlat hRlat)
    have hS : ∀ x : K ⧸ R.toAddSubgroup, (Quotient.out x : K) ∈ perp ψ D.L₁ → x ∈ hfin.toFinset :=
      fun x hx => hfin.mem_toFinset.2 hx
    have hAc := reps_card_ne_zero D.repsA
    have hBc := reps_card_ne_zero D.repsB
    have hp1 : IsPSD F (fun h h' => ∑ ρ ∈ D.A, ∑ b ∈ D.B,
        ((((D.A.card : ℝ) * (D.B.card : ℝ))⁻¹ : ℝ) : ℂ) *
          (((cSize R h ^ (m + 1) * cSize R h' ^ (m + 1) : ℝ) : ℂ) * N0 R ψ h h' -
            uGram R ψ m cr Set.univ h h' (τ (ρ + b)) (τ (ρ + b)))) := by
      refine psd_sum D.A fun ρ _ => psd_sum D.B fun b _ => psd_smul _ (by positivity) ?_
      exact hUNB hUG hN1 hCSA hMM hLF K R ψ hD m n₀ F Θm hF hΘm (τ (ρ + b)) cr hcr'
    have hp2 : IsPSD F (fun h h' => ∑ x ∈ hfin.toFinset,
        if (Quotient.out x : K) ∈ Lc then 0 else thx R ψ m cr D.A D.B τ (Quotient.out x) h h') := by
      refine psd_sum _ fun x _ => ?_
      by_cases hx : (Quotient.out x : K) ∈ Lc
      · simpa only [hx, if_true] using psd_zero F
      · simpa only [hx, if_false] using hpsd _
    refine psd_congr ?_ (psd_add hp1 hp2)
    intro h hh h' hh'
    have hsum := hTS hPG hPD hPL hLF hGRC hCP hKG hN1 hMM K R ψ hD hch m (m + 1) n₀ F Om (Lc : Set K) D
      τ cr hF hcr' h hh h' hh'
    rw [← mean_sub D.A D.B hAc hBc, ← hsum]
    rw [finsum_ite_eq hfin.toFinset (fun x : K ⧸ R.toAddSubgroup => (Quotient.out x : K) ∈ perp ψ D.L₁)
      (fun x => thx R ψ m cr D.A D.B τ (Quotient.out x) h h') hS]
    rw [finsum_ite_eq hfin.toFinset (fun x : K ⧸ R.toAddSubgroup => (Quotient.out x : K) ∈ Lc)
      (fun x => thx R ψ m cr D.A D.B τ (Quotient.out x) h h')
      (fun x hx => hS x (D.cutPerp _ hx))]
    rw [sub_add, ← Finset.sum_sub_distrib]
    congr 1
    refine Finset.sum_congr rfl fun x hx => ?_
    have hxP : (Quotient.out x : K) ∈ perp ψ D.L₁ := hfin.mem_toFinset.1 hx
    by_cases hxL : (Quotient.out x : K) ∈ Lc
    · simp only [hxP, hxL, if_true, sub_zero]
    · simp only [hxP, hxL, if_true, if_false, sub_self]
  ·
    intro x h _ h' _ hne
    by_cases hx : x ∈ Lc
    · simp only [hx, if_true, thx]
      have hz : ∀ ρ ∈ D.A, ∀ b ∈ D.B, ∀ b' ∈ D.B,
          uGram R ψ m cr Set.univ h h' (τ (ρ + b)) (τ (ρ + b')) = 0 := by
        intro ρ hρ b hb b' hb'
        refine hUB hKBD hCSA hMM K R ψ hD m cr Set.univ h h' _ _ ?_ hne
        exact mul_right_cancel₀ htpos.ne' ((hτmod ρ hρ b hb).trans (hτmod ρ hρ b' hb').symm)
      have : ∑ ρ ∈ D.A, ((D.B.card : ℂ)⁻¹) ^ 2 * ∑ b ∈ D.B, ∑ b' ∈ D.B,
          ψ (-(x * b)) * conj (ψ (-(x * b'))) *
            uGram R ψ m cr Set.univ h h' (τ (ρ + b)) (τ (ρ + b')) = 0 := by
        refine Finset.sum_eq_zero fun ρ hρ => ?_
        rw [Finset.sum_eq_zero fun b hb => Finset.sum_eq_zero fun b' hb' => by
          rw [hz ρ hρ b hb b' hb', mul_zero], mul_zero]
      rw [this, mul_zero]
    · simp only [hx, if_false]
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.MeanPositiveSemidefinite =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PartialMeansOrthogonal =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.PartialMeansOrthogonal", "h": "module\n\npublic import Formalism.HermitianCurvature.ThetaExistenceInductiveFromPieces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.FourierDecayAlt.A6

namespace Formalism.FourierDecayAlt.P

namespace A6x1

theorem norm_sq_sum_orth {E : Type} [NormedAddCommGroup E] [InnerProductSpace ℂ E] {A : Type}
    [Fintype A] (P : A → E) (e₁ : A → ℂ) (he : ∀ ρ, ‖e₁ ρ‖ = 1)
    (h : ∀ ρ ρ', ρ ≠ ρ' → inner ℂ (P ρ) (P ρ') = 0) :
    ‖∑ ρ, e₁ ρ • P ρ‖ ^ 2 = ∑ ρ, ‖P ρ‖ ^ 2 := by
  classical
  set_option synthInstance.maxHeartbeats 100000 in
    rw [← inner_self_eq_norm_sq (𝕜 := ℂ), sum_inner, map_sum]
  refine Finset.sum_congr rfl fun ρ _ => ?_
  rw [inner_sum, Finset.sum_eq_single ρ]
  · rw [inner_self_eq_norm_sq (𝕜 := ℂ), norm_smul, he ρ, one_mul]
  · intro ρ' _ hne
    rw [inner_smul_left, inner_smul_right, h ρ ρ' (Ne.symm hne), mul_zero, mul_zero]
  · intro hρ
    exact absurd (Finset.mem_univ ρ) hρ

end A6x1

theorem doubleMeanSplit : Formalism.FourierDecayAlt.A6.MeanSplit := by
  intro E _ _ A B _ _ u e₁ e₂
  rw [Fintype.sum_prod_type, mul_inv, mul_smul]
  congr 1
  rw [Finset.smul_sum]
  refine Finset.sum_congr rfl fun ρ _ => ?_
  rw [smul_comm, Finset.smul_sum (r := e₁ ρ)]
  congr 1
  refine Finset.sum_congr rfl fun b _ => ?_
  rw [mul_smul]

theorem partialMeansOrthogonal : Formalism.FourierDecayAlt.A6.POrth := by
  intro E _ _ A B _ _ u e₂ h ρ ρ' hne
  simp only [inner_smul_left, inner_smul_right, sum_inner, inner_sum]
  simp [h ρ ρ' _ _ hne]

theorem orthogonalMeanNorm : Formalism.FourierDecayAlt.A6.OrthNorm := by
  intro E _ _ A _ P e₁ he h
  rw [norm_smul, mul_pow, A6x1.norm_sq_sum_orth P e₁ he h, norm_inv, Complex.norm_natCast]

theorem averageBoundOfSteps : Formalism.FourierDecayAlt.A6.AvgBoundAssemble := by
  intro hM hP hO E _ _ A B _ _ u T e₁ e₂ hT he h
  rw [hM E A B u e₁ e₂]
  have h1 := hO E A (fun ρ => (Fintype.card B : ℂ)⁻¹ • ∑ b, e₂ b • u (ρ, b)) e₁ he
    (hP E A B u e₂ h)
  have h2 := hT ((Fintype.card A : ℂ)⁻¹ •
    ∑ ρ, e₁ ρ • ((Fintype.card B : ℂ)⁻¹ • ∑ b, e₂ b • u (ρ, b)))
  calc _ ≤ ‖(Fintype.card A : ℂ)⁻¹ •
        ∑ ρ, e₁ ρ • ((Fintype.card B : ℂ)⁻¹ • ∑ b, e₂ b • u (ρ, b))‖ ^ 2 := by
        gcongr
    _ = _ := by rw [h1]; ring

theorem averageBound : Formalism.FourierDecayAlt.A6.AvgBound :=
  averageBoundOfSteps doubleMeanSplit partialMeansOrthogonal orthogonalMeanNorm

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PartialMeansOrthogonal =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PosSemidefEntryBound =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.PosSemidefEntryBound", "h": "module\n\npublic import Formalism.HermitianCurvature.ThetaExistenceInductiveFromPieces\npublic import Mathlib.Analysis.Fourier.FiniteAbelian.Orthogonality\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality\npublic import Mathlib.Analysis.InnerProductSpace.Positive\npublic import Mathlib.Analysis.Matrix.Order\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\npublic import Mathlib.Topology.MetricSpace.Sequences\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Formalism.DoubleCosetMeasures Formalism.FourierDecayAlt.A5 Formalism.FourierDecayAlt.A6 Filter Topology
open scoped ComplexConjugate ComplexOrder

namespace Formalism.FourierDecayAlt.P.A6x2

lemma normsq_eq_inner {E : Type} [NormedAddCommGroup E] [InnerProductSpace ℂ E] (w : E) :
    ((‖w‖ : ℝ) : ℂ) ^ 2 = inner ℂ w w := (inner_self_eq_norm_sq_to_K (𝕜 := ℂ) w).symm

lemma sum_addChar_norm_sq (E : Type) [NormedAddCommGroup E] [InnerProductSpace ℂ E] (G : Type)
    [AddCommGroup G] [Fintype G] (v : G → E) :
    ∑ χ : AddChar G ℂ, ‖∑ g, χ (-g) • v g‖ ^ 2 = (Fintype.card G : ℝ) * ∑ g, ‖v g‖ ^ 2 := by
  classical
  have key : ((∑ χ : AddChar G ℂ, ‖∑ g, χ (-g) • v g‖ ^ 2 : ℝ) : ℂ) =
      (((Fintype.card G : ℝ) * ∑ g, ‖v g‖ ^ 2 : ℝ) : ℂ) := by
    push_cast
    have h1 : ∀ χ : AddChar G ℂ, ((‖∑ g, χ (-g) • v g‖ : ℂ)) ^ 2 =
        ∑ g, ∑ h, χ (g - h) * inner ℂ (v g) (v h) := by
      intro χ
      rw [normsq_eq_inner, sum_inner]
      refine Finset.sum_congr rfl fun g _ => ?_
      rw [inner_sum]
      refine Finset.sum_congr rfl fun h _ => ?_
      rw [inner_smul_left, inner_smul_right, AddChar.map_neg_eq_conj, Complex.conj_conj,
        sub_eq_add_neg, AddChar.map_add_eq_mul]
      ring
    simp_rw [h1]
    rw [Finset.sum_comm]
    have h2 : ∀ g : G, ∑ χ : AddChar G ℂ, ∑ h, χ (g - h) * inner ℂ (v g) (v h) =
        (Fintype.card G : ℂ) * (‖v g‖ : ℂ) ^ 2 := by
      intro g
      rw [Finset.sum_comm]
      simp_rw [← Finset.sum_mul, AddChar.sum_apply_eq_ite, sub_eq_zero]
      rw [Finset.sum_eq_single g]
      · rw [if_pos rfl, normsq_eq_inner]
      · intro b _ hb
        rw [if_neg (Ne.symm hb), zero_mul]
      · intro h; exact absurd (Finset.mem_univ g) h
    simp_rw [h2]
    rw [Finset.mul_sum]
  exact_mod_cast key

theorem parsevalGroup : ParsevalGroup := by
  intro E _ _ G _ _ v
  classical
  rw [finsum_eq_sum_of_fintype]
  have hN : (Fintype.card G : ℝ) ≠ 0 := by
    have : 0 < Fintype.card G := Fintype.card_pos_iff.2 ⟨0⟩
    positivity
  have h1 : ∀ χ : AddChar G ℂ, ‖(Fintype.card G : ℂ)⁻¹ • ∑ g, χ (-g) • v g‖ ^ 2 =
      ((Fintype.card G : ℝ)⁻¹) ^ 2 * ‖∑ g, χ (-g) • v g‖ ^ 2 := by
    intro χ
    rw [norm_smul, mul_pow, norm_inv, Complex.norm_natCast]
  simp_rw [h1]
  rw [← Finset.mul_sum, sum_addChar_norm_sq]
  field_simp

theorem pSDClosed : PSDClosed := by
  intro X F k l hk hl a
  have ht : Tendsto (fun j => ∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * k j x y) atTop
      (𝓝 (∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * l x y)) :=
    tendsto_finsetSum _ fun x hx => tendsto_finsetSum _ fun y hy => (hl x hx y hy).const_mul _
  constructor
  · have h1 := (Complex.continuous_im.tendsto _).comp ht
    have h2 : (fun j => (∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * k j x y).im) = fun _ => (0 : ℝ) := by
      funext j; exact (hk j a).1
    have h3 : Tendsto (fun j => (∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * k j x y).im) atTop
        (𝓝 ((∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * l x y).im)) := h1
    rw [h2] at h3
    exact (tendsto_nhds_unique h3 tendsto_const_nhds)
  · have h1 : Tendsto (fun j => (∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * k j x y).re) atTop
        (𝓝 ((∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * l x y).re)) :=
      (Complex.continuous_re.tendsto _).comp ht
    exact ge_of_tendsto' h1 fun j => (hk j a).2

theorem boundedSubseq : BoundedSubseq := by
  intro I _ θ C hC
  have := Fintype.ofFinite I
  have hb : ∀ j, θ j ∈ Metric.closedBall (0 : I → ℂ) (max C 0) := by
    intro j
    rw [mem_closedBall_zero_iff, pi_norm_le_iff_of_nonneg (le_max_right _ _)]
    exact fun i => (hC j i).trans (le_max_left _ _)
  obtain ⟨l, -, φ, hφ, hl⟩ := tendsto_subseq_of_bounded Metric.isBounded_closedBall hb
  exact ⟨φ, l, hφ, fun i => (tendsto_pi_nhds.1 hl) i⟩

lemma posSemidef_of_isPSD {X : Type} (F : Finset X) (k : X → X → ℂ) (h : IsPSD F k) :
    (Matrix.of fun x y : F => conj (k x y)).PosSemidef := by
  classical
  rw [← Matrix.isPositive_toEuclideanLin_iff, LinearMap.isPositive_iff_complex]
  intro v
  have hv : inner ℂ ((Matrix.of fun x y : F => conj (k x y)).toEuclideanLin v) v =
      ∑ x ∈ F, ∑ y ∈ F, (fun x => if hx : x ∈ F then v ⟨x, hx⟩ else 0) x *
        conj ((fun x => if hx : x ∈ F then v ⟨x, hx⟩ else 0) y) * k x y := by
    rw [← Finset.sum_coe_sort F]
    simp_rw [← Finset.sum_coe_sort F (fun y => _ * k _ y)]
    simp [EuclideanSpace.inner_eq_star_dotProduct, dotProduct, Matrix.mulVec, Finset.mul_sum]
    refine Finset.sum_congr rfl fun x _ => Finset.sum_congr rfl fun y _ => ?_
    ring
  rw [hv]
  obtain ⟨h1, h2⟩ := h (fun x => if hx : x ∈ F then v ⟨x, hx⟩ else 0)
  refine ⟨?_, h2⟩
  apply Complex.ext
  · simp
  · simpa using h1.symm

open scoped MatrixOrder in
lemma exists_factor {X : Type} (F : Finset X) (k : X → X → ℂ) (h : IsPSD F k) :
    ∃ S : F → F → ℂ, ∀ x y : F, k x y = ∑ j, S j x * conj (S j y) := by
  classical
  have h0 := (posSemidef_of_isPSD F k h).nonneg
  obtain ⟨B, hB⟩ := CStarAlgebra.nonneg_iff_eq_star_mul_self.1 h0
  refine ⟨fun j x => B j x, fun x y => ?_⟩
  have h1 := congrFun (congrFun hB x) y
  simp only [Matrix.of_apply, Matrix.mul_apply, Matrix.star_eq_conjTranspose,
    Matrix.conjTranspose_apply] at h1
  have h2 := congrArg conj h1

  rw [Complex.conj_conj, map_sum] at h2
  rw [h2]
  refine Finset.sum_congr rfl fun j _ => ?_
  simp

theorem gramRealiseCut : GramRealiseCut := by
  intro X F G Gc h1 h2
  classical
  obtain ⟨S1, hS1⟩ := exists_factor F Gc h1
  obtain ⟨S2, hS2⟩ := exists_factor F _ h2
  let e : (F ⊕ F) ≃ Fin (Fintype.card (F ⊕ F)) := Fintype.equivFin _
  let u : X → EuclideanSpace ℂ (Fin (Fintype.card (F ⊕ F))) := fun x =>
    WithLp.toLp 2 (fun i => if hx : x ∈ F then
      Sum.elim (fun j => S1 j ⟨x, hx⟩) (fun j => S2 j ⟨x, hx⟩) (e.symm i) else 0)
  let d : Fin (Fintype.card (F ⊕ F)) → ℂ := fun i => if (e.symm i).isLeft then 1 else 0
  let T : EuclideanSpace ℂ (Fin (Fintype.card (F ⊕ F))) →ₗ[ℂ]
      EuclideanSpace ℂ (Fin (Fintype.card (F ⊕ F))) :=
    { toFun := fun v => WithLp.toLp 2 (fun i => d i * v i)
      map_add' := by
        intro v w; ext i; simp [mul_add]
      map_smul' := by
        intro c v; ext i; simp; ring }
  refine ⟨_, u, T, ?_, ?_, ?_⟩
  · intro v
    rw [EuclideanSpace.norm_eq, EuclideanSpace.norm_eq]
    refine Real.sqrt_le_sqrt (Finset.sum_le_sum fun i _ => ?_)
    show ‖d i * v i‖ ^ 2 ≤ ‖v i‖ ^ 2
    by_cases hi : (e.symm i).isLeft
    · simp [d, hi]
    · simp [d, hi]
  · intro x hx y hy
    rw [PiLp.inner_apply, ← e.sum_comp, Fintype.sum_sum_type]
    have h3 := hS1 ⟨x, hx⟩ ⟨y, hy⟩
    have h4 := hS2 ⟨x, hx⟩ ⟨y, hy⟩
    simp only [Finset.univ_eq_attach] at h3 h4
    simp only [u, hx, hy, dite_true, Equiv.symm_apply_apply, Sum.elim_inl, Sum.elim_inr,
      RCLike.inner_apply, Finset.univ_eq_attach]
    rw [← h3, ← h4]
    ring
  · intro x hx y hy
    rw [PiLp.inner_apply, ← e.sum_comp, Fintype.sum_sum_type]
    have h3 := hS1 ⟨x, hx⟩ ⟨y, hy⟩
    simp only [Finset.univ_eq_attach] at h3
    simp [u, T, d, hx, hy]
    exact h3.symm

theorem pSDEntryBound : PSDEntryBound := by
  intro X F k M h1 h2 x hx y hy
  obtain ⟨n, u, T, hT, hG, hGc⟩ := gramRealiseCut X F M k h1 h2
  have hn : ∀ z ∈ F, ‖u z‖ ^ 2 = (M z z).re := by
    intro z hz
    rw [← hG z hz z hz]
    exact (inner_self_eq_norm_sq (𝕜 := ℂ) (u z)).symm
  rw [← hGc x hx y hy, ← hn x hx, ← hn y hy, ← mul_pow]
  have h3 : ‖inner ℂ (T (u y)) (T (u x))‖ ≤ ‖u x‖ * ‖u y‖ :=
    calc ‖inner ℂ (T (u y)) (T (u x))‖ ≤ ‖T (u y)‖ * ‖T (u x)‖ := norm_inner_le_norm _ _
      _ ≤ ‖u y‖ * ‖u x‖ := mul_le_mul (hT _) (hT _) (norm_nonneg _) (norm_nonneg _)
      _ = ‖u x‖ * ‖u y‖ := mul_comm _ _
  exact pow_le_pow_left₀ (norm_nonneg _) h3 2

end Formalism.FourierDecayAlt.P.A6x2

namespace Formalism.FourierDecayAlt.P

alias parsevalGroup_statement := _root_.Formalism.FourierDecayAlt.P.A6x2.parsevalGroup

alias gramRealisation := _root_.Formalism.FourierDecayAlt.P.A6x2.gramRealiseCut

alias posSemidefEntryBound := _root_.Formalism.FourierDecayAlt.P.A6x2.pSDEntryBound

alias posSemidefClosed := _root_.Formalism.FourierDecayAlt.P.A6x2.pSDClosed

alias boundedSubsequence := _root_.Formalism.FourierDecayAlt.P.A6x2.boundedSubseq

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PosSemidefEntryBound =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RealPowerIdentities =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.RealPowerIdentities", "h": "module\n\npublic import Formalism.HermitianCurvature.ThetaExistenceInductiveFromPieces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.DoubleCosetMeasures Formalism.FourierDecayAlt.A5 Formalism.FourierDecayAlt.A6 Filter Topology

namespace Formalism.FourierDecayAlt.P

namespace RealPowerIdentities

theorem inv_pow_triangle_mul_rpow_half {T : ℝ} (hT : 0 < T) (m : ℕ) :
    (T ^ (m * (m + 1) / 2))⁻¹ * T ^ ((m : ℝ) / 2) = T ^ (-((m : ℝ) ^ 2) / 2) := by
  have h2 : (2 : ℕ) ∣ m * (m + 1) := (Nat.even_mul_succ_self m).two_dvd
  have hc : ((m * (m + 1) / 2 : ℕ) : ℝ) = (m : ℝ) * ((m : ℝ) + 1) / 2 := by
    rw [Nat.cast_div h2 (by norm_num)]
    push_cast
    ring
  rw [← Real.rpow_natCast, hc, ← Real.rpow_neg hT.le, ← Real.rpow_add hT]
  congr 1
  ring

theorem rpow_half_mul_pow_triangle {Z : ℝ} (hZ : 0 < Z) {m : ℕ} (hm : 1 ≤ m) :
    Z ^ ((m : ℝ) / 2) * Z ^ (m * (m - 1) / 2) = Z ^ ((m : ℝ) ^ 2 / 2) := by
  have h2 : (2 : ℕ) ∣ m * (m - 1) := (Nat.even_mul_pred_self m).two_dvd
  have hc : ((m * (m - 1) / 2 : ℕ) : ℝ) = (m : ℝ) * ((m : ℝ) - 1) / 2 := by
    rw [Nat.cast_div h2 (by norm_num)]
    push_cast [Nat.cast_sub hm]
    ring
  rw [← Real.rpow_natCast, hc, ← Real.rpow_add hZ]
  congr 1
  ring

end RealPowerIdentities

open RealPowerIdentities in
theorem germExpansionOfTestFunction : Formalism.FourierDecayAlt.A6.GermPhiAssemble := by
  intro hOsc hSt hInv hMod K _ _ _ R ψ hd hn m hm γ hγ L₀ Λ₀ Q hL₀ hΛ₀ hQc hQu
  obtain ⟨L₁, Λ₁, hL₁, hΛ₁, V₁, hV₁, hO⟩ := hOsc K R ψ hd hn m hm L₀ Λ₀ Q hL₀ hΛ₀ hQc hQu
  have hQ'c : IsCompact ((fun d : K => (-1) ^ m * d) '' Q) :=
    hQc.image (continuous_const.mul continuous_id)
  have hQ'u : ∀ d ∈ (fun d : K => (-1) ^ m * d) '' Q, IsUnit d := by
    rintro _ ⟨d, hdQ, rfl⟩
    exact (isUnit_one.neg.pow m).mul (hQu d hdQ)
  obtain ⟨V₂, hV₂, hS⟩ := hSt K R ψ hd hn m hm γ hγ L₁ Λ₁ _ hL₁ hΛ₁ hQ'c hQ'u
  refine ⟨V₁ ∩ V₂, Filter.inter_mem hV₁ hV₂, ?_⟩
  intro Φ hΦ t c ht hc
  have hD : ((c * t ^ m : Kˣ) : K) ∈ Q := by simpa using hc
  obtain ⟨A, hA, hAz, hAo⟩ := hO Φ hΦ (c * t ^ m) hD
  obtain ⟨Λ, hΛ, hinv⟩ := hInv K R ψ hd hn m L₁ Λ₁ hL₁ hΛ₁ A ((t⁻¹ : Kˣ) : K)
    (((-1) ^ m * (c * t ^ m) : Kˣ) : K) hA
  have hD' : (((-1) ^ m * (c * t ^ m) : Kˣ) : K) ∈ (fun d : K => (-1) ^ m * d) '' Q :=
    ⟨_, hD, by simp⟩
  have hDeq : ((-1) ^ m * (c * t ^ m) : Kˣ) = (-t) ^ m * c := by
    rw [neg_pow t m]
    ac_rfl
  have hT : 0 < modK R (t : K) := (hMod K R ψ hd t t).1
  rw [hAo t c ht.1 rfl Λ hΛ hinv, hS t _ A ht.2 hD' hA Λ hΛ hinv]
  unfold germSum
  rw [← mul_assoc, ← Complex.ofReal_mul, inv_pow_triangle_mul_rpow_half hT m]
  congr 1
  refine finsum_congr fun z => ?_
  by_cases hz : z ^ (m + 1) = (-1) ^ m * (c * t ^ m)
  · have hZ : 0 < modK R (z : K) := (hMod K R ψ hd z z).1
    rw [if_pos hz, if_pos (hz.trans hDeq), hAz z hz]
    unfold germCoef
    rw [← rpow_half_mul_pow_triangle hZ hm]
    push_cast
    ring
  · rw [if_neg hz, if_neg (fun h => hz (h.trans hDeq.symm))]

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RealPowerIdentities =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.GermExpansionMatrixFunction =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.GermExpansionMatrixFunction", "h": "module\n\npublic import Formalism.HermitianCurvature.ThetaExistenceInductiveFromPieces\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AddedBlockKernelSupport\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdicNeighbourhood\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AveragedKernelSums\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AveragedVectorChoices\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.EqZeroOfIdealCompact\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FiniteClassesPositiveSums\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FiniteSumSwap\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FirstKernelProperties\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GaussIndexIndependentOfChoice\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GaussSumModulusOfLattice\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermExpansionOfSteps\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermSumLattices\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HenselRootsBounded\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HessianScalingIntegrals\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralLatticeRefinementIdentity\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.KernelQuotientFinite\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.KernelScalingBack\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MeanNormSquaredBound\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MeanPositiveSemidefinite\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ModulusLocallyConstant\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralReduction\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PadicChangeOfVariables\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PartialMeansOrthogonal\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PosSemidefEntryBound\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RealPowerIdentities\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondVanishingOffRing\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SubmoduleMultiplication\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TwoBlockPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CharacterOrthogonalityDual\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ColumnOperationTripleForm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FirstKernelExplicitFormula\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GramKernelHermitian\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

open Formalism.FourierDecayAlt.A5 Formalism.FourierDecayAlt.A6

theorem gauss_hessian_index_exists : Formalism.FourierDecayAlt.A6.GaussHess :=
  gauss_hessian_index_of_parts gauss_sum_modulus_of_lattice gauss_index_independent_of_choice
    phase_hessian_determinant modulus_positive_multiplicative volume_scaling_identity

theorem padic_stationary_phase : Formalism.FourierDecayAlt.A6.StationaryPhase :=
  stationaryPhaseOfSteps nonStationary morseLemma integral_field_refinement
    modulus_positive_multiplicative rootsFinite compactOpenChoice orthogonal_lattice_properties
    modulusLocallyConstant oscillatory_integral_invariant volume_scaling_identity rootsSeparated
    smallModules admissible_gauss_sum_small lattice_family_finite

theorem germ_expansion_matrix_function : Formalism.FourierDecayAlt.A6.GermPhi :=
  germExpansionOfTestFunction orbital_integral_change_of_variables padic_stationary_phase
    oscillatory_integral_invariant modulus_positive_multiplicative

theorem germ_expansion_with_head : Formalism.FourierDecayAlt.A6.Germ :=
  germExpansionOfSteps head_reduction_lemma germ_expansion_matrix_function

theorem germ_kernel_expansion : Formalism.FourierDecayAlt.A6.GermKernel :=
  germExpansionKernelOfSteps germ_expansion_with_head kernel_as_coset_sum integral_points_finite
    rootsFinite

theorem germ_identity_bis : Formalism.FourierDecayAlt.A6.GermIdentity :=
  germIdentityOfSteps gauss_hessian_index_exists germ_kernel_expansion gramKernelHermitian
    second_vanishing_off_ring modulus_positive_multiplicative rootsFinite shiftUnit_statement
    shiftSmall_statement rootCutStable rootCorrection square_near_unit phase_difference_estimate
    phase_locally_constant modulusLocallyConstant integral_lattice_refinement_identity
    padic_change_of_variables crossTermsVanish

theorem theta_omega_bound : Formalism.FourierDecayAlt.A6.ThOm :=
  thetaOnDomainOfSteps germ_identity_bis averaged_vector_choices_exist phase_locally_constant
    gramKernelHermitian modulusLocallyConstant compactOpenChoice lattice_family_finite
    shiftUnit_statement smallUnits gram_equality_of_vectors averaged_vector_norm_bound
    cut_posSemidef heads_distinct_determinant_orthogonal head_size_add_block
    modulus_positive_multiplicative kernel_gram_property kernel_block_diagonal_by_modulus
    gramRealisation averageBound parsevalGroup_statement annihilatorCharacters
    orthogonal_lattice_properties characterMean truncated_average_norm_formula thetaAverageLower
    averaged_kernel_periodic_psd averaged_kernel_parseval

theorem lattice_average_induction : Formalism.FourierDecayAlt.A5.ThetaExistsStep :=
  thetaExistsStepOfSteps theta_omega_bound finite_family_truncation_module
    added_block_kernel_support head_size_one_in_GL rootStableExhaustion lattice_family_finite
    posSemidefEntryBound posSemidefClosed boundedSubsequence

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.GermExpansionMatrixFunction =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondDerivativeHolds =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondDerivativeHolds", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementPB\npublic import Formalism.HermitianCurvature.HeisenbergConjugationMeasurePreserving\npublic import Formalism.LatticeRigidity.HeightMinimum.SqrtAbsNormLeProd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.HeisenbergConjugationMeasurePreserving\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PsdFormConjRewrite\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondVanishingOffRing\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.HilbertSchmidtNorm

open Formalism.FourierDecayAlt.PB Finset NumberField

open scoped ComplexOrder ComplexConjugate

open Classical

theorem localCores : Formalism.FourierDecayAlt.PB.LocalCores :=
  ⟨_root_.Formalism.FourierDecayAlt.P.Jx1.t_PSDAgree,
   _root_.Formalism.FourierDecayAlt.P.Jx7.t_SchurProduct,
   _root_.Formalism.FourierDecayAlt.P.Jx7.t_ProductDomination,
   _root_.Formalism.FourierDecayAlt.P.Jx7.t_DiagScale,
   _root_.Formalism.FourierDecayAlt.P.diagonal_phase_conj,
   _root_.Formalism.FourierDecayAlt.P.block_diagonal_psd,
   _root_.Formalism.FourierDecayAlt.P.Jx7.t_ProductLemma',
   _root_.Formalism.FourierDecayAlt.P.scaling_bound,
   _root_.Formalism.FourierDecayAlt.P.Jx8.t_PhaseOk,
   _root_.Formalism.FourierDecayAlt.P.Jx8.t_OutsideSysOk,
   _root_.Formalism.FourierDecayAlt.P.Jx8.t_OutsideDomination,
   _root_.Formalism.FourierDecayAlt.P.local_pullback,
   _root_.Formalism.FourierDecayAlt.P.local_unit_heads,
   _root_.Formalism.FourierDecayAlt.P.top_pullback,
   _root_.Formalism.FourierDecayAlt.P.top_unit_heads,
   _root_.Formalism.FourierDecayAlt.P.global_of_local,
   _root_.Formalism.FourierDecayAlt.P.Jx8.t_UniformMajorantOn,
   _root_.Formalism.FourierDecayAlt.P.axioms_from_systems,
   _root_.Formalism.FourierDecayAlt.P.axioms_from_families,
   _root_.Formalism.FourierDecayAlt.P.kernel_of_local,
   _root_.Formalism.FourierDecayAlt.P.local_kernel_psd,
   _root_.Formalism.FourierDecayAlt.P.RecursionWithDensities.B1.domMinOfText,
   _root_.Formalism.FourierDecayAlt.P.DensitySumsAndDomination.domAfterOfLocal,
   _root_.Formalism.FourierDecayAlt.P.second_gram_and_vanishing,
   _root_.Formalism.FourierDecayAlt.P.kernel_gram_property,
   _root_.Formalism.FourierDecayAlt.P.zero_kernel_all_ones,
   _root_.Formalism.FourierDecayAlt.P.first_kernel_parseval,
   _root_.Formalism.FourierDecayAlt.P.first_theta_kernel_equality,
   _root_.Formalism.FourierDecayAlt.P.first_theta_equals_first_kernel,
   _root_.Formalism.FourierDecayAlt.P.added_block_kernel_support,
   _root_.Formalism.FourierDecayAlt.P.added_block_kernel_block_diagonal,
   _root_.Formalism.FourierDecayAlt.P.lattice_average_lemma_from_parts⟩

theorem globalCores : Formalism.FourierDecayAlt.PB.GlobalCores :=
  ⟨_root_.Formalism.FourierDecayAlt.P.theorem_a_after,
   _root_.Formalism.FourierDecayAlt.P.RecursionWithDensities.J1.t_RecursionWithDens,
   _root_.Formalism.FourierDecayAlt.P.DensitySumsAndDomination.domScaleTop,
   _root_.Formalism.FourierDecayAlt.P.RecursionWithDensities.J1.t_SumBoundMax,
   _root_.Formalism.FourierDecayAlt.P.DensitySumsAndDomination.recHypScaleTop,
   _root_.Formalism.FourierDecayAlt.P.DensitySumsAndDomination.densSum,
   _root_.Formalism.FourierDecayAlt.P.RecursionWithDensities.J1.t_DensLeTwo,
   _root_.Formalism.FourierDecayAlt.P.RecursionWithDensities.J1.t_DensSize,
   _root_.Formalism.FourierDecayAlt.P.DensitySumsAndDomination.densChain,
   _root_.Formalism.FourierDecayAlt.P.poisson_summation_level_statement,
   _root_.Formalism.FourierDecayAlt.P.Jx3.t_PoissonJoint,
   _root_.Formalism.FourierDecayAlt.P.poisson_level_joint,
   Formalism.SA.P.smoothedSumBound,
   _root_.Formalism.FourierDecayAlt.P.lattice_facts_general,
   _root_.Formalism.FourierDecayAlt.P.dualIdealEqLiftIdeal,
   _root_.Formalism.FourierDecayAlt.P.scaledIdealNorm,
   _root_.Formalism.FourierDecayAlt.P.degreeFacts_statement,
   _root_.Formalism.FourierDecayAlt.P.frame_product_identities,
   _root_.Formalism.FourierDecayAlt.P.lattice_x_eq_lambda_one,
   _root_.Formalism.FourierDecayAlt.P.Jx2.t_LatticeSumsJoint,
   _root_.Formalism.FourierDecayAlt.P.instance_sizes,
   _root_.Formalism.FourierDecayAlt.P.instance_lattice_sums,
   _root_.Formalism.FourierDecayAlt.P.size_bounds_conclusion,
   _root_.Formalism.FourierDecayAlt.P.sizes_to_recursion,
   _root_.Formalism.FourierDecayAlt.P.global_positive,
   _root_.Formalism.FourierDecayAlt.P.mass_formula_constant_one,
   _root_.Formalism.FourierDecayAlt.P.form_gives_theorem_A⟩

end Formalism.FourierDecayAlt.P.HilbertSchmidtNorm

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondDerivativeHolds =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.TheoremS =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.TheoremS", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementPB\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermExpansionMatrixFunction\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GrowthOfBasic\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondDerivativeHolds\npublic import Formalism.LocalRingCardinality.DataHost\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.ParametersTermRelations\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.PoincareConstantEq\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.HidaSetting\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.FourierDecayAlt Formalism.L2.SG.HidaSetting Formalism.L2.SG.Full Formalism.L2.SG.PackageTie2

namespace Formalism.L2.SG.TheoremS

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem pbApplied : ∀ C₄ Cthr : ℝ, 1 ≤ C₄ →
    ∃ CA C : ℝ, Cthr ≤ CA ∧ 1 ≤ CA ∧ 0 ≤ C ∧ C ≤ CA ∧
    ∀ (C0 CG CDel cT Cb : ℝ), 1 ≤ C0 → 0 ≤ CG → 4 < CDel → 0 < cT → 0 < Cb → 1 < cT * Cb →
    ∃ k0 : ℕ, ∀ (E W : Type) [Field E] [NumberField E] [IsCMField E] (D : TB.Data E W)
      (e : Fin D.f ≃ InfinitePlace E) (G : Sz.Glob (InfinitePlace E)) (bb Cp Cf Th : ℝ)
      (de de' : ℕ → ℝ) (T T' : ℕ) (du du' : ℝ) (l : ℕ),
      k0 ≤ G.k → J.SzHyp G CA C0 CG CDel cT Cb bb Cp Th de de' T T' du du' l →
      16 ≤ Sz.cExp CDel cT Cb * Cf → Cf * Real.log bb ≤ G.f * Real.log G.k →
      S6.Unram E → J.Inst D e G CA de de' T T' l → PB.LocalModel D →
      ∀ (jn : ℝ) (H : Type) [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
        (Vt : TB.Pt E → H) (c : ℕ → TB.Pt E → ℂ) (sd : ℝ),
        PB.RealInputs D C₄ jn Vt → PB.DensInput G.k G.r G.f sd →
        ∀ (P : Type) [Fintype P] (B : S3.MassData P), PB.RowsInput D sd Vt c B → PB.MassDataHyp B →
          PB.EnergyLink B jn sd C Th D.r D.f →
          ∀ (τ Rw I HS H₁ : Type) [Fintype I] [NormedAddCommGroup HS] [InnerProductSpace ℂ HS]
            [NormedAddCommGroup H₁] [InnerProductSpace ℂ H₁] [CompleteSpace H₁]
            (X : PB.Terms τ Rw I HS H₁) (c5 Cn : ℝ),
            PB.Link X B G de T du du' → PB.SplitInputs X B.tt →
            PB.SizeNumbers G.k G.r G.f bb G.g1 G.g2 c5 Cn →
            X.RowBig (Real.exp (-(c5 * G.k * G.f * Real.log G.k))) (du * du' / (G.size de T du).Dstar) →
            X.RowNotScalar (Real.exp (-(c5 * G.k * G.f * Real.log G.k)))
              (du * du' / (G.size de T du).Dstar) →
            X.RowNG (((2 : ℝ) ^ (G.k - 2 * G.r - 5))⁻¹ *
              Real.exp (Cn * ((2 * G.r + 2 : ℕ) : ℝ) ^ 5 * G.f * Real.log bb))
              (du * du' / (G.size de T du).Dstar) →
            ‖X.K0‖ ^ 2 ≤ (1 + (bb ^ 6)⁻¹) * (du * du' / (G.size de T du).Dstar) := by
  open Formalism.FourierDecayAlt.P.GrowthPolynomialOperator in
  exact t_PairBoundFromLocal t_MainRow t_PairBound Formalism.FourierDecayAlt.P.HilbertSchmidtNorm.localCores
    Formalism.FourierDecayAlt.P.HilbertSchmidtNorm.globalCores t_LatticeLink t_AxiomsOfLocalModel Formalism.FourierDecayAlt.P.lattice_average_induction
    t_PairBoundAbstract t_PriceOfIota t_EqualIota t_PairSplit t_SubFamily t_NumPrice t_NumExp
    t_NumDens t_NumLoops t_NumNG t_NGExponent t_EtaZero

end Formalism.L2.SG.TheoremS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.TheoremS =====
