module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TopRankPowers
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulBoundAtBaseChange
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulBoundAtOfNotIsReal
public import Development.AbelianVarietyTheory.Definitions.Divisors.WellChosen
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsHeightIffOfDegreeEq
public import Mathlib.NumberTheory.NumberField.ProductFormula
public import Development.AbelianVarietyTheory.Definitions.Divisors.PointHeight
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalizedPointHeightLatticeAlgebraMap
public import Development.AbelianVarietyTheory.Definitions.Divisors.IntegralBound
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFinrankLineBundleSectionsFiniteEtale
public import Development.AbelianVarietyTheory.Definitions.Divisors.HermSysHypOneLeLambdaZero
public import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.IsWeaklyRegularIffIsQuasiRegularSeqOfIsLocalRing
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictedSectionChartCoords
public import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiRegularAlongOfEtale
public import Development.AbelianVarietyTheory.Definitions.Divisors.HasBoundedPolesGlobalData
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasisRegularSequenceOfCommonZeros
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemNonzeroLocusFormMap
public import Development.AbelianVarietyTheory.Definitions.Divisors.InclEquiv
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelSectionShiftCommSingleMonomial
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
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
import Mathlib.Algebra.GroupWithZero.Submonoid.CancelMulZero
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.TotallySplit
import Development.AbelianVarietyTheory.Definitions.Divisors.IsFrameOfForallExists
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.SumNegOnePowFinrankEqZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGlobalCombinationOfLocalRegularIdeal
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Definitions.Divisors.DetJacMatCoordsEqTransitionJacobianDet
import Development.AbelianVarietyTheory.Definitions.Divisors.LinearIndependentBasisCoords
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverIffIsProperAndExistsIsAmpleLB
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KawamataViehwegVanishingNumberFieldTwist
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NefIsPsEffAndBigTensNef
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonemptyHomologyEquiv
import Mathlib.Tactic.Basify
import Mathlib.Algebra.AffineMonoid.UniqueSums

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComplexifyStatement, Development.AbelianVarietyTheory.Definitions.Divisors.ExistsCoordAtPoints, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCoordinatesSpecialisedFormProdLinearForms, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FilMonoOfKerRes, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLiftSectionsZeroSchemeRegularSequenceLineB, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalLiftSectionsOnClosedSubscheme, Development.AbelianVarietyTheory.Proofs.DivisorProofs.VanishesToOneOfStalkMap, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelDegreeZeroResiduesRangeEqTop, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralLiftSymbol, Development.AbelianVarietyTheory.Definitions.Divisors.ExistsDataOfPositivity, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProductOfVectorMultiplicationsGlobalResidues, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelFiltrationSymbolMonomialProduct, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelSectionBaseChangeProperties, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FilSpaceVEqSpaceP, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulPowMemAndSpaceVLe, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelVanishingFiltrationDeepestStepSpan, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSubPtsIffOfToBaseEq, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NefBigBaseChange, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NefBigSecondBaseChange, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FilVSymVKer, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotFilTotSymKer, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelFiltrationAtGoodSections

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComplexifyStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComplexifyStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TopRankPowers\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulBoundAtBaseChange\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulBoundAtOfNotIsReal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.WellChosen\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory

namespace GlobalTheory.HilbertSamuel.Data

theorem complexify_statement : Complexify := by
  intro F _ _ X β hF _ hS hB
  haveI := hF
  exact ⟨fun σ => hB.mulBoundAt σ, fun E _ _ _ => hS.baseChange E⟩

end GlobalTheory.HilbertSamuel.Data
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComplexifyStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.Divisors.ExistsCoordAtPoints =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.Divisors.ExistsCoordAtPoints", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IntegralBound\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFinrankLineBundleSectionsFiniteEtale\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryOfFrameNormConj\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsHeightIffOfDegreeEq\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.PointHeight\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalizedPointHeightLatticeAlgebraMap\npublic import Mathlib.NumberTheory.NumberField.ProductFormula\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers

namespace GlobalTheory.HSCore

variable {K : Type} [Field K] [NumberField K]

abbrev RatPt (G : Geo K) (s : Fin G.D → Fin G.N → K) : Type := PtsOver K ((G.ideal s).subschemeι ≫ G.str)

namespace RatPt

variable {G : Geo K} {s : Fin G.D → Fin G.N → K} (x : RatPt G s)

def pt : G.Pt K := ⟨x.1 ≫ (G.ideal s).subschemeι, (Category.assoc _ _ _).trans x.2⟩

def along {Ω : Type} [Field Ω] (φ : K →+* Ω) : Points.PtsOver ((G.ideal s).subschemeι ≫ G.str) (spMap φ) :=
  ⟨spMap φ ≫ x.1, by rw [Category.assoc, x.2, spMap, spMap, ← Spec.map_comp]; rfl⟩

def gen (k : Fin G.n) : K := ∑ j, G.w j k * G.coords x.pt.1 j

def c₁ (τ : K →+* ℂ) : ℝ := archSize (G.A τ) fun j => τ (G.coords x.pt.1 j)

def c₂ (τ : K →+* ℂ) : ℝ := archSize (G.A₂ τ) fun j => τ (G.second.coords x.pt.1 j)

def ht : ℝ := vecHt x.gen x.c₁

theorem le_chart (j : ℤ) : ⊤ ≤ (x.1 ≫ (G.ideal s).subschemeι) ⁻¹ᵁ (tw G.L₂ G.L j).U
    (twIdx j (G.second.chartAt (ptOf x.pt.1)) (G.chartAt (ptOf x.pt.1))) :=
  fun _ hw => mem_tw_U.2 ⟨G.second.le_chartAt x.pt.1 hw, G.le_chartAt x.pt.1 hw⟩

def val (j : ℕ) : G.SecOn s j →ₗ[K] K where
  toFun g := valOn x.1 _ (x.le_chart j) g
  map_add' f g := map_add _ f g
  map_smul' c g := valOn_smul x.1 x.2 _ _ c g

theorem val_mulSecOn (j : ℕ) (u : Fin G.N → K) (g : G.SecOn s j) :
    x.val (j + 1) (mulSecOn G.isLB₂ G.isLB (G.comb u) (Nat.cast_succ j).symm g) =
      (∑ k, u k * G.coords x.pt.1 k) * x.val j g := by
  refine (valOn_mulSecOn G.isLB₂ G.isLB (G.comb u) _ g x.1 _ _ (G.le_chartAt x.pt.1) (x.le_chart j)
    (x.le_chart _)).trans (congrArg (· * _) ?_)
  refine (Points.valR_eq _ _ (G.le_chartAt x.pt.1) _).symm.trans ((G.val_comb x.pt.1 u).trans ?_)
  rw [LinSys.baseHom_ptOver]
  rfl

theorem along_injective (hs : G.IsGood s) {Ω : Type} [Field Ω] (φ : K →+* Ω) :
    Function.Injective fun x : RatPt G s => x.along φ := fun x x' h => by
  have := hs.finite
  have : IsAffine (G.ideal s).subscheme := isAffine_of_isAffineHom ((G.ideal s).subschemeι ≫ G.str)
  have e : spMap φ ≫ x.1 = spMap φ ≫ x'.1 := congrArg Subtype.val h
  refine Subtype.ext (ext_evalPt (isAffineOpen_top _) le_top le_top (RingHom.ext fun f => φ.injective ?_))
  rw [← evalPt_spMap_comp φ x.1 ⊤ le_top le_top, ← evalPt_spMap_comp φ x'.1 ⊤ le_top le_top]
  simp only [e]

end RatPt

variable {G : Geo K} {s : Fin G.D → Fin G.N → K}

def Coord.AtPoints {hs : G.IsGood s} {δ : ℕ} (Co : Coord G hs δ) (x : Fin δ ≃ RatPt G s) : Prop :=
  ∀ p, (∀ j g, Co.ev j g p = (x p).val j g) ∧ Co.y p = G.coords (x p).pt.1 ∧ ∀ τ, Co.c₂ τ p = (x p).c₂ τ

theorem exists_coord_atPoints (hs : G.IsGood s)
    (h : Function.Surjective fun x : RatPt G s => x.along (algebraMap K (AlgebraicClosure K)))
    {δ : ℕ} (x : Fin δ ≃ RatPt G s) : ∃ Co : Coord G hs δ, Co.AtPoints x := by
  have := hs.finite
  have := hs.etale
  let φ (j : ℕ) : G.SecOn s j →ₗ[K] (Fin δ → K) := LinearMap.pi fun p => (x p).val j
  have bij (j : ℕ) : Function.Bijective (φ j) := by
    have hB := isLB_tw G.isLB₂ G.isLB (j : ℤ)
    choose r hr using h
    have inj : Function.Injective (φ j) := (injective_iff_map_eq_zero _).2 fun g hg => by
      have hr' (w : PtsOver (AlgebraicClosure K) ((G.ideal s).subschemeι ≫ G.str)) :
          w.1 = spMap (algebraMap K (AlgebraicClosure K)) ≫ (r w).1 := (congrArg Subtype.val (hr w)).symm
      refine eq_zero_of_forall_valOn_eq_zero (Ω := AlgebraicClosure K) hB
        (fun w => twIdx j (G.second.chartAt (ptOf (r w).pt.1)) (G.chartAt (ptOf (r w).pt.1)))
        (fun w => by rw [hr' w]; exact fun _ _ => (r w).le_chart j (Set.mem_univ _)) fun w => ?_
      have e : (r w).val j g = 0 := by simpa [φ] using congrFun hg (x.symm (r w))
      have key : ∀ (z : Sp (AlgebraicClosure K) ⟶ (G.ideal s).subscheme) (hz),
          z = spMap (algebraMap K (AlgebraicClosure K)) ≫ (r w).1 →
          valOn z (twIdx j (G.second.chartAt (ptOf (r w).pt.1)) (G.chartAt (ptOf (r w).pt.1))) hz g = 0 := by
        rintro _ hz rfl
        exact (evalPt_spMap_comp _ (r w).1 _ _ _ _).trans ((congrArg _ e).trans (map_zero _))
      exact key _ _ (hr' w)
    have := finite_H0On (p := G.str) (I := G.ideal s) hB
    refine ⟨inj, (LinearMap.injective_iff_surjective_of_finrank_eq_finrank ?_).1 inj⟩
    rw [finrank_H0On hB (AlgebraicClosure K), Module.finrank_fin_fun, ← Nat.card_fin δ, Nat.card_congr x]
    exact (Nat.card_eq_of_bijective _ ⟨RatPt.along_injective hs _, fun w => ⟨r w, hr w⟩⟩).symm
  exact ⟨⟨fun j => LinearEquiv.ofBijective (φ j) (bij j), fun p => G.coords (x p).pt.1, fun σ p => (x p).c₂ σ,
    fun _ => G.geom.alg.bpf.coords_ne_zero _, fun j u g => funext fun p => (x p).val_mulSecOn j u g⟩,
    fun p => ⟨fun _ _ => rfl, rfl, fun _ => rfl⟩⟩

section Split

variable {F : Type} [Field F] [NumberField F] (G : Geo F) (E : Type) [Field E] [NumberField E] [Algebra F E]
  (s : Fin G.D → Fin G.N → E)

def RatPt.geomPt (x : RatPt (G.baseChange E) s) : (G.toLinSys.baseChange E).Pt (AlgebraicClosure E) :=
  Points.PtsOver.map ((G.baseChange E).ideal s).subschemeι rfl _ (x.along (algebraMap E (AlgebraicClosure E)))

variable {G E s}

theorem Split.along_surjective (h : Split G.toTuple E s) :
    Function.Surjective fun x : RatPt (G.baseChange E) s => x.along (algebraMap E (AlgebraicClosure E)) := fun w => by
  obtain ⟨x₀, e⟩ := h w.1 w.2
  refine ⟨⟨x₀, ?_⟩, Subtype.ext e.symm⟩
  have h₁ := (G.baseChange E).comp_str (x₀ ≫ ((G.baseChange E).ideal s).subschemeι)
  have h₃ := (Category.assoc _ _ _).symm.trans h₁
  have h₂ := (Spec.map_comp _ _).trans ((congrArg (spMap (algebraMap E (AlgebraicClosure E)) ≫ ·) h₃).symm.trans
    ((Category.assoc _ _ _).symm.trans ((congrArg (· ≫ _) e).symm.trans w.2)))
  refine h₃.trans (congrArg spMap (RingHom.ext fun a => (algebraMap E (AlgebraicClosure E)).injective ?_))
  exact congrArg (fun f => f.hom a) (Spec.map_injective h₂)

theorem Split.geomPts_eq (h : Split G.toTuple E s) :
    G.geomPts E (G.linSection E s) = Set.range (RatPt.geomPt G E s) := by
  refine Set.ext fun y => ⟨fun ⟨z, hz⟩ => ?_, fun ⟨x, hx⟩ => ⟨_, congrArg Subtype.val hx⟩⟩
  obtain ⟨x, hx⟩ := h.along_surjective ⟨z, (Category.assoc _ _ _).symm.trans ((congrArg (· ≫ _) hz).trans y.2)⟩
  exact ⟨x, Subtype.ext ((congrArg (fun t => t.1 ≫ _) hx).trans hz)⟩

theorem RatPt.geomPt_injective (hs : (G.baseChange E).IsGood s) : Function.Injective (RatPt.geomPt G E s) :=
  fun _ _ h => RatPt.along_injective hs _ (Subtype.ext ((cancel_mono ((G.baseChange E).ideal s).subschemeι).1
    (congrArg Subtype.val h)))

theorem Split.exists_coord (h : Split G.toTuple E s) (hs : (G.baseChange E).IsGood s) :
    ∃ (x : Fin (G.geomPts E (G.linSection E s)).ncard ≃ RatPt (G.baseChange E) s)
      (Co : Coord (G.baseChange E) hs (G.geomPts E (G.linSection E s)).ncard),
      Co.AtPoints x := by
  have hfin := (Geo.isGood_baseChange_iff.1 hs).finite_geomPts
  have : Finite (RatPt (G.baseChange E) s) :=
    (Set.finite_range_iff (RatPt.geomPt_injective hs)).1 (h.geomPts_eq ▸ hfin)
  have e : Nat.card (RatPt (G.baseChange E) s) = (G.geomPts E (G.linSection E s)).ncard := by
    rw [h.geomPts_eq, Set.ncard_range_of_injective (RatPt.geomPt_injective hs)]
  let x := (Finite.equivFinOfCardEq e).symm
  obtain ⟨Co, hCo⟩ := exists_coord_atPoints hs h.along_surjective x
  exact ⟨x, Co, hCo⟩

end Split

end GlobalTheory.HSCore
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.Divisors.ExistsCoordAtPoints =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCoordinatesSpecialisedFormProdLinearForms =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCoordinatesSpecialisedFormProdLinearForms", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HermSysHypOneLeLambdaZero\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.WellChosen\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsCoordAtPoints\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory
open GlobalTheory.HSShort GlobalTheory.HSChoice MvPolynomial

namespace GlobalTheory.HSShort.SplitCoord

theorem map_spec {F E K : Type} [CommRing F] [CommRing E] [CommRing K] [Algebra F E] [Algebra E K] [Algebra F K]
    [IsScalarTower F E K] {D N : ℕ} (s : Fin D → Fin N → E) (f : MvPolynomial (Fin (D + 1) × Fin N) F) :
    map (algebraMap E K) (spec s f) = spec (fun i j => algebraMap E K (s i j)) f := by
  unfold spec
  induction f using MvPolynomial.induction_on with
  | C a => simp [← IsScalarTower.algebraMap_apply, MvPolynomial.algebraMap_apply]
  | add p q hp hq => simp only [map_add (f := _), hp, hq]
  | mul_X p i hp =>
    simp only [map_mul, hp, aeval_X]
    congr 1
    obtain ⟨a, b⟩ := i
    refine Fin.lastCases ?_ (fun a => ?_) a <;> simp [join]

theorem map_lin_smul {E K : Type} [CommRing E] [CommRing K] (φ : E →+* K) {N : ℕ} (c : E) (y : Fin N → E) :
    map φ (lin (c • y)) = C (φ c) * lin fun j => φ (y j) := by

  simp only [lin, map_sum, map_mul, map_X, map_C, Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
  exact Finset.sum_congr rfl fun j _ => by ring

theorem exists_eq_C_mul {E K σ : Type} [Field E] [Field K] (φ : E →+* K) {P Q : MvPolynomial σ E} (hP : P ≠ 0) {c : K}
    (hc : c ≠ 0) (h : map φ Q = C c * map φ P) : ∃ c₀ : E, c₀ ≠ 0 ∧ Q = C c₀ * P := by
  obtain ⟨m, hm⟩ := ne_zero_iff.1 hP
  have e : φ (AddMonoidAlgebra.coeff Q m) = c * φ (AddMonoidAlgebra.coeff P m) := by
    simpa only [coeff_map, coeff_C_mul] using congrArg (AddMonoidAlgebra.coeff · m) h
  have e' : φ (AddMonoidAlgebra.coeff Q m / AddMonoidAlgebra.coeff P m) = c := by
    rw [map_div₀, e, mul_div_cancel_right₀ _ ((map_ne_zero φ).2 hm)]
  refine ⟨AddMonoidAlgebra.coeff Q m / AddMonoidAlgebra.coeff P m, fun h0 => hc (by rw [← e', h0, map_zero]), map_injective φ φ.injective ?_⟩
  rw [map_mul, map_C, e', h]

theorem exists_eq_C_mul_prod {E K ι : Type} [Field E] [Field K] [Fintype ι] (φ : E →+* K) {N : ℕ}
    {Q : MvPolynomial (Fin 1 × Fin N) E} {y v : ι → Fin N → E} {z : ι → Fin N → K} {a : ι → E} (hy : ∀ p, y p ≠ 0)
    (ha : ∀ p, a p ≠ 0) (ea : ∀ p, y p = a p • v p) (hz : ∀ p, z p = fun j => φ (v p j)) {c : K} (hc : c ≠ 0)
    (h : map φ Q = C c * ∏ p, lin (z p)) : ∃ c₀ : E, c₀ ≠ 0 ∧ Q = C c₀ * ∏ p, lin (y p) := by
  have hA : (∏ p, φ (a p)) ≠ 0 := Finset.prod_ne_zero_iff.2 fun p _ => (map_ne_zero _).2 (ha p)
  refine exists_eq_C_mul φ (Finset.prod_ne_zero_iff.2 fun p _ => Check.lin_ne (hy p)) (div_ne_zero hc hA) ?_
  rw [h, map_prod]
  simp only [ea, hz, map_lin_smul]
  rw [Finset.prod_mul_distrib, ← map_prod C, ← mul_assoc, ← map_mul, div_mul_cancel₀ _ hA]

theorem exists_coord_spec_eq : ∀ (F : Type) [Field F] [NumberField F] (G : Geo F) (E : Type) [Field E] [NumberField E] [Algebra F E] (s : Fin G.D → Fin G.N → E) (hs : (G.baseChange E).IsGood s) (δ : ℕ) (f : MvPolynomial (Fin (G.D + 1) × Fin G.N) F), Split G.toTuple E s → SimpleAt G.toTuple δ f E s → ∃ (Co : Coord (G.baseChange E) hs δ) (c : E), c ≠ 0 ∧ spec s f = C c * ∏ p, lin (Co.y p) := by
  intro F _ _ G E _ _ _ s hs δ f h hS
  obtain rfl := hS.card
  obtain ⟨x, Co, hCo⟩ := h.exists_coord hs
  obtain ⟨c, hc, e⟩ := hS.fac
  choose a ha ea using fun p => G.exists_coords_baseChange E (x p).pt.1
  have h₅ (p) : G.coords (LinSys.toBase (RatPt.geomPt G E s (x p))).1 =
      fun j => algebraMap E (AlgebraicClosure E) (G.coords ((x p).pt.1 ≫ G.bcFst E) j) := by
    rw [← LinSys.coords_spMap_comp]
    exact congrArg G.coords ((congrArg (· ≫ G.bcFst E) (Category.assoc _ _ _)).trans (Category.assoc _ _ _))
  have h₇ : ∏ᶠ z ∈ G.geomPts E (G.linSection E s), lin (G.coords (LinSys.toBase z : G.Pt (AlgebraicClosure E)).1) =
      ∏ p, lin (G.coords (LinSys.toBase (RatPt.geomPt G E s (x p)) : G.Pt (AlgebraicClosure E)).1) := by
    refine (finprod_mem_congr h.geomPts_eq fun _ _ => rfl).trans ?_
    rw [finprod_mem_range (RatPt.geomPt_injective hs), ← finprod_comp_equiv x, finprod_eq_prod_of_fintype]
  obtain ⟨c₀, h₀, e₀⟩ := exists_eq_C_mul_prod (N := G.N) (algebraMap E (AlgebraicClosure E)) (Q := spec s f) (y := Co.y)
    (fun p h0 => (G.baseChange E).geom.alg.bpf.coords_ne_zero _ ((hCo p).2.1.symm.trans h0)) ha
    (fun p => (hCo p).2.1.trans (ea p)) h₅ hc ((map_spec s f).trans (e.trans (congrArg (C c * ·) h₇)))
  exact ⟨Co, c₀, h₀, e₀⟩

end GlobalTheory.HSShort.SplitCoord
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCoordinatesSpecialisedFormProdLinearForms =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FilMonoOfKerRes =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FilMonoOfKerRes", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.WellChosen\npublic import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.IsWeaklyRegularIffIsQuasiRegularSeqOfIsLocalRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory

namespace GlobalTheory.HSCore

theorem mulPow_mulVar {K : Type} [Field K] [NumberField K] (G : Geo K) (s : Fin G.D → Fin G.N → K) {a j l : ℕ}
    (h : j + (a + 1) = l) (h' : (j + 1) + a = l) (α : MonoDeg (Fin G.D) a) (i : Fin G.D) (m : G.Sec j) :
    mulPow G s h (MonoDeg.mulVar i α) m = mulPow G s h' α (G.mulW j (s i) m) := by
  rw [G.mulW_apply]
  unfold mulPow
  refine tw_ext (isLB_tens G.K.isLB G.isLBA) G.isLB fun c k y hy hc hk => ?_
  rw [germ_mulMono _ _ _ _ _ _ _ _ _ _ hc hk, germ_mulMono _ _ _ _ _ _ _ _ _ _ hc hk,
    germ_mulSec _ _ _ _ _ _ _ _ _ hc hk, monoVal_mulVar, mul_comm (secGer _ _ _ _ _), mul_assoc]

theorem filMono_of_kerRes : KerRes → FilMono := by
  intro H K _ _ G hnef hbig s hs a
  induction a with
  | zero =>
    intro j l h _ f hf
    obtain rfl : j = l := h
    have : Subsingleton (MonoDeg (Fin G.D) 0) := ⟨fun α β => Subtype.ext
      (((Finsupp.degree_eq_zero_iff _).1 α.2).trans ((Finsupp.degree_eq_zero_iff _).1 β.2).symm)⟩
    refine ⟨fun _ => f, fun _ => hf.1, ?_⟩
    rw [Fintype.sum_subsingleton _ (⟨0, rfl⟩ : MonoDeg (Fin G.D) 0)]
    exact (mulMono_zero _ _ _ _ _ f).symm
  | succ a ih =>
    classical
    intro j l h hj f hf
    have h' : (j + 1) + a = l := by omega
    have hfa : f ∈ Fil (G.ideal s) a (G.global l) := Fil_anti (Nat.le_succ a) hf
    obtain ⟨m, hm, e⟩ := ih (j + 1) l h' (by omega) f hfa
    have h0 : hs.sym h' (G.global l) ⟨f, hfa⟩ = 0 := (sym_eq_zero_iff _ _ _ _ _ _ _ _ _ _ _).2 hf
    have h1 : hs.sym h' (G.global l) ⟨f, hfa⟩ = fun α => hs.res (j + 1) (m α) :=
      sym_sum _ _ _ _ _ _ _ _ _ _ m _ e
    have hv : ∀ α, m α ∈ Fil (G.ideal s) 1 (G.global (j + 1)) := fun α =>
      ⟨hm α, (Res_eq_zero_iff _ _ _ _ _ _ _ _ _ _).1 (congrFun (h1.symm.trans h0) α)⟩
    choose m' hm' e' using fun α => H K G hnef hbig s hs j (by omega) (m α) (hv α)
    refine ⟨fun γ => ∑ p ∈ Finset.univ.filter (fun p : MonoDeg (Fin G.D) a × Fin G.D => MonoDeg.mulVar p.2 p.1 = γ),
      m' p.1 p.2, fun γ => sum_mem fun p _ => hm' _ _, ?_⟩
    have key : ∀ γ : MonoDeg (Fin G.D) (a + 1), mulPow G s h γ
        (∑ p ∈ Finset.univ.filter (fun p : MonoDeg (Fin G.D) a × Fin G.D => MonoDeg.mulVar p.2 p.1 = γ), m' p.1 p.2) =
        ∑ p ∈ Finset.univ.filter (fun p : MonoDeg (Fin G.D) a × Fin G.D => MonoDeg.mulVar p.2 p.1 = γ),
          mulPow G s h' p.1 (G.mulW j (s p.2) (m' p.1 p.2)) := fun γ => by

      rw [map_sum]
      refine Finset.sum_congr rfl fun p hp => ?_
      rw [← (Finset.mem_filter.1 hp).2, mulPow_mulVar G s h h']
    rw [Finset.sum_congr rfl fun γ _ => key γ, Finset.sum_fiberwise, Fintype.sum_prod_type, e]
    refine Finset.sum_congr rfl fun α _ => ?_

    rw [e' α, map_sum]

end GlobalTheory.HSCore
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FilMonoOfKerRes =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLiftSectionsZeroSchemeRegularSequenceLineB =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLiftSectionsZeroSchemeRegularSequenceLineB", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictedSectionChartCoords\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsFrameOfForallExists\nimport Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.SumNegOnePowFinrankEqZero\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGlobalCombinationOfLocalRegularIdeal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory

noncomputable section

namespace GlobalTheory.HSCore.RegSeqGlue

open GlobalTheory.Twist

variable {Y : Scheme.{0}} {L : LB Y}

def LocSpan (F : Y.Modules) {d : ℕ} (t : Fin d → L.Sec) {l m : ℤ} (h : l + 1 = m) {O : Y.Opens}
    (x : Γ(twistZ F L m, O)) : Prop :=
  ∀ y ∈ O, ∃ (V : Y.Opens) (hV : V ≤ O), y ∈ V ∧ ∃ c : Fin d → Γ(twistZ F L l, V),
    (twistZ F L m).presheaf.map (homOfLE hV).op x = ∑ i, (mulSecOfEq F (zofSec (t i)) h).app V (c i)

theorem res_res (G : Y.Modules) {U V W : Y.Opens} (h₁ : W ≤ V) (h₂ : V ≤ U) (x : Γ(G, U)) :
    G.presheaf.map (homOfLE h₁).op (G.presheaf.map (homOfLE h₂).op x) =
      G.presheaf.map (homOfLE (h₁.trans h₂)).op x := by
  rw [← ConcreteCategory.comp_apply, ← Functor.map_comp]
  rfl

theorem eq_zero_of_locSpan (F : Y.Modules) (t : Fin 0 → L.Sec) {l m : ℤ} (h : l + 1 = m) {O : Y.Opens}
    (x : Γ(twistZ F L m, O)) (hx : LocSpan F t h x) : x = 0 :=
  section_eq_zero_of_germ x fun y hy => by
    obtain ⟨V, hV, hyV, c, e⟩ := hx y hy
    rw [← TopCat.Presheaf.germ_res_apply _ (homOfLE hV) y hyV, e, Finset.univ_eq_empty, Finset.sum_empty, map_zero]

variable (hL : L.IsLB)

theorem π_mul (F : Y.Modules) (s a : L.Sec) {l m : ℤ} (h : l + 1 = m) (V : Y.Opens) (u : Γ(twistZ F L l, V)) :
    (Twist.map (lbZPow L m) (cutπ F hL s)).app V ((mulSecOfEq F (zofSec a) h).app V u) =
      (mulSecOfEq (cut F hL s) (zofSec a) h).app V ((Twist.map (lbZPow L l) (cutπ F hL s)).app V u) := by
  rw [app_app, app_app, mulSecOfEq_naturality]

theorem map_locSpan (F : Y.Modules) {d : ℕ} (t : Fin (d + 1) → L.Sec) [Mono (cutHom F hL (t 0))] {l m : ℤ}
    (h : l + 1 = m) {O : Y.Opens} {x : Γ(twistZ F L m, O)} (hx : LocSpan F t h x) :
    LocSpan (cut F hL (t 0)) (fun i => t i.succ) h ((Twist.map (lbZPow L m) (cutπ F hL (t 0))).app O x) :=
  fun y hy => by
    obtain ⟨V, hV, hyV, c, e⟩ := hx y hy
    refine ⟨V, hV, hyV, fun i => (Twist.map (lbZPow L l) (cutπ F hL (t 0))).app V (c i.succ), ?_⟩
    have := (RegSeqKer.shortExact_twistComplex hL F (t 0) h).mono_f
    have hex : Function.Exact ((mulSecOfEq F (zofSec (t 0)) h).app V)
        ((Twist.map (lbZPow L m) (cutπ F hL (t 0))).app V) :=
      exact_app_of_exact_of_mono (RegSeqKer.shortExact_twistComplex hL F (t 0) h).exact V

    rw [← app_res, e, Fin.sum_univ_succ, map_add (f := _), hex.apply_apply_eq_zero, zero_add, map_sum]
    exact Finset.sum_congr rfl fun i _ => π_mul hL F _ _ h V _

theorem exists_glue (d : ℕ) : ∀ (t : Fin d → L.Sec) (F : Y.Modules) [F.IsQuasicoherent] (j₀ l m : ℤ)
    (h : l + 1 = m), RegSeq hL F (List.ofFn t) → VanishFrom L F j₀ → j₀ + d ≤ m →
    ∀ (W : Y → Y.Opens) (b : ∀ y, Γ(twistZ F L m, W y)), (∀ y, y ∈ W y) →
    (∀ y z, LocSpan F t h ((twistZ F L m).presheaf.map (homOfLE (inf_le_left : W y ⊓ W z ≤ W y)).op (b y) -
      (twistZ F L m).presheaf.map (homOfLE (inf_le_right : W y ⊓ W z ≤ W z)).op (b z))) →
    ∃ σ : Γ(twistZ F L m, ⊤), ∀ y, LocSpan F t h ((twistZ F L m).presheaf.map (homOfLE le_top).op σ - b y) := by
  induction d with
  | zero =>
    intro t F _ j₀ l m h _ _ _ W b hW hb
    have hc : ∀ y z, (twistZ F L m).presheaf.map (homOfLE (inf_le_left : W y ⊓ W z ≤ W y)).op (b y) =
        (twistZ F L m).presheaf.map (homOfLE (inf_le_right : W y ⊓ W z ≤ W z)).op (b z) := fun y z =>
      sub_eq_zero.1 (eq_zero_of_locSpan F t h _ (hb y z))
    obtain ⟨σ, hσ, -⟩ := TopCat.Sheaf.existsUnique_gluing' ⟨(twistZ F L m).presheaf, (twistZ F L m).isSheaf⟩ W ⊤
      (fun y => homOfLE le_top) (fun y _ => TopologicalSpace.Opens.mem_iSup.2 ⟨y, hW y⟩) b (fun y z => hc y z)
    refine ⟨σ, fun y z hz => ⟨W y, le_rfl, hz, fun i => i.elim0, ?_⟩⟩
    rw [hσ y, sub_self, map_zero, Finset.univ_eq_empty, Finset.sum_empty]
  | succ d ih =>
    intro t F _ j₀ l m h hr hv hj W b hW hb
    rw [List.ofFn_succ, regSeq_cons] at hr
    obtain ⟨hm0, hr⟩ := hr
    have hS := RegSeqKer.shortExact_twistComplex hL F (t 0) h
    have := hS.mono_f
    have hex : ∀ V : Y.Opens, Function.Exact ((mulSecOfEq F (zofSec (t 0)) h).app V)
        ((Twist.map (lbZPow L m) (cutπ F hL (t 0))).app V) := fun V =>
      exact_app_of_exact_of_mono hS.exact V
    obtain ⟨σ', hσ'⟩ := ih (fun i => t i.succ) (cut F hL (t 0)) (j₀ + 1) l m h hr
      (RegSeqKer.vanishFrom_cut hL F (t 0) hv) (by push_cast at hj; omega) W
      (fun y => (Twist.map (lbZPow L m) (cutπ F hL (t 0))).app (W y) (b y)) hW fun y z => by
        have := map_locSpan hL F t h (hb y z)
        rwa [map_sub, app_res, app_res] at this
    obtain ⟨σ, hσ⟩ := cohOn.app_surjective hS ⊤ (hv l (by push_cast at hj; omega) 1 one_pos) σ'
    change (Twist.map (lbZPow L m) (cutπ F hL (t 0))).app ⊤ σ = σ' at hσ
    have hEpi : Epi (Twist.map (lbZPow L l) (cutπ F hL (t 0))) :=
      (RegSeqKer.shortExact_twistComplex hL F (t 0) (l := l - 1) (m := l) (by omega)).epi_g
    have := isQuasicoherent_twist (F := F) (isLB_lbZPow hL l)
    have := isQuasicoherent_twist (F := cut F hL (t 0)) (isLB_lbZPow hL l)
    refine ⟨σ, fun y z hz => ?_⟩
    obtain ⟨V, hV, hzV, c', e⟩ := hσ' y z hz
    obtain ⟨A, hzA, hAV⟩ := exists_affine hzV
    have hlift : ∀ i, ∃ u : Γ(twistZ F L l, A.1), (Twist.map (lbZPow L l) (cutπ F hL (t 0))).app A.1 u =
        (twistZ (cut F hL (t 0)) L l).presheaf.map (homOfLE hAV).op (c' i) := fun i =>
      surjective_app_of_epi _ A.2 _
    choose u hu using hlift
    obtain ⟨v, hv'⟩ := (hex A.1 ((twistZ F L m).presheaf.map (homOfLE (hAV.trans hV)).op
        ((twistZ F L m).presheaf.map (homOfLE le_top).op σ - b y) -
        ∑ i, (mulSecOfEq F (zofSec (t i.succ)) h).app A.1 (u i))).1 (by

      rw [map_sub, map_sum, sub_eq_zero]
      erw [app_res, map_sub, app_res, hσ]
      rw [← res_res _ hAV hV]
      erw [e]

      rw [map_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [π_mul, hu]
      exact (app_res _ _ _).symm)
    refine ⟨A.1, hAV.trans hV, hzA, Fin.cons v u, ?_⟩
    rw [Fin.sum_univ_succ]
    simp only [Fin.cons_zero, Fin.cons_succ]
    rw [hv', sub_add_cancel]

end GlobalTheory.HSCore.RegSeqGlue

namespace GlobalTheory.HSCore.RegSeqGlue

open GlobalTheory.Twist GlobalTheory.HSKerRes

variable {k : Type} [CommRing k] {Y : Scheme.{0}} (p : Y ⟶ Sp k) {M L : LB Y} (hM : M.IsLB) (hL : L.IsLB)


include hM hL in
theorem toH0_res {n : ℤ} {O O' : Y.Opens} (h : O' ≤ O) (s : Γ(twistZ (LB.toMod M) L n, O)) :
    toH0 p ((twistZ (LB.toMod M) L n).presheaf.map (homOfLE h).op s) = H0.restr h (toH0 p s) :=
  tw_ext hM hL fun i j y hy hi hj => by
    rw [H0.germ_restr, germ_of_global_section p _ i j y _ hi hj, germ_of_global_section p _ i j y _ hi hj]
    erw [Twist.zcoord_resM]
    rw [HSKerRes.coord_resM, ger_resG]


include hM in
theorem vanishesTo_mulSec {d : ℕ} (t : Fin d → L.Sec) (a : Fin d) {n l : ℤ} (h : n + 1 = l) {O : Y.Opens}
    (f : Vanishing.H0 p (tw M L n) O) : VanishesTo (cutIdeal hL t) 1 (mulSec hM hL (t a) h f) :=
  vanishesTo_of_exists fun y _ hy => by
    obtain ⟨i, hi⟩ := exists_chart hM y
    obtain ⟨j, hj⟩ := exists_chart hL y
    refine ⟨twIdx l i j, mem_tw_U.2 ⟨hi, hj⟩, ?_⟩
    rw [germ_mulSec _ _ _ _ _ _ _ _ _ hi hj, pow_one, stalkId_cutIdeal hL t j y hj]
    exact Ideal.mul_mem_right _ _ (Ideal.subset_span ⟨a, rfl⟩)


include hM in
theorem vanishesTo_of_locSpan {d : ℕ} (t : Fin d → L.Sec) {l m : ℤ} (h : l + 1 = m) {O : Y.Opens}
    (x : Γ(twistZ (LB.toMod M) L m, O)) (hx : LocSpan (LB.toMod M) t h x) :
    VanishesTo (cutIdeal hL t) 1 (toH0 p x) := fun y hs hy i hi => by
  obtain ⟨V, hV, hyV, c, e⟩ := hx y hy
  have hv : VanishesTo (cutIdeal hL t) 1 (H0.restr hV (toH0 p x)) := by

    rw [← toH0_res p hM hL, e, map_sum]
    show _ ∈ filTop p _ V (cutIdeal hL t) 1
    refine Submodule.sum_mem _ fun a _ => ?_
    rw [mem_filTop, global_section_mul p hM hL (t a) h]
    exact vanishesTo_mulSec p hM hL t a h _
  have := hv y hs hyV i hi
  rwa [H0.germ_restr] at this


include hM in
theorem locSpan_of_vanishesTo {d : ℕ} (t : Fin d → L.Sec) {l m : ℤ} (h : l + 1 = m) {O : Y.Opens}
    (s : Γ(twistZ (LB.toMod M) L m, O)) (hs : VanishesTo (cutIdeal hL t) 1 (toH0 p s)) :
    LocSpan (LB.toMod M) t h s := fun y hy => by
  obtain ⟨i, hi⟩ := exists_chart hM y
  obtain ⟨j, hj⟩ := exists_chart hL y
  obtain ⟨V, hV, e⟩ := exists_affine (memInf (memInf hy hi) hj)
  have hVO : V.1 ≤ O := e.trans (inf_le_left.trans inf_le_left)
  have hVi : V.1 ≤ M.U i := e.trans (inf_le_left.trans inf_le_right)
  have hVj : V.1 ≤ L.U j := e.trans inf_le_right
  have h₁ : V.1 ≤ O ⊓ (tw M L m).U (twIdx m i j) := fun _ hz => ⟨hVO hz, mem_tw_U.2 ⟨hVi hz, hVj hz⟩⟩
  have h₂ := vanishesTo_iff_affine.1 hs V _ h₁
  rw [pow_one, ideal_cutIdeal hL t V j hVj, restricted_section_chart_coords p s i j h₁ (le_inf (le_inf hVO hVj) hVi)] at h₂
  obtain ⟨c, hc⟩ := Ideal.mem_span_range_iff_exists_fun.1 h₂
  refine ⟨V.1, hVO, hV, fun a => (Twist.zchartEquiv hL l j hVj).symm ((LB.chartEquiv hM i hVi).symm (c a)), ?_⟩
  refine (Twist.zchartEquiv hL m j hVj).injective ((LB.chartEquiv hM i hVi).injective ?_)

  simp only [map_sum, Twist.zchartEquiv_mulSecOfEq_app, map_smul, LinearEquiv.apply_symm_apply, Twist.zfun_zofSec,
  smul_eq_mul]
  rw [LB.chartEquiv_apply, Twist.zchartEquiv_apply]
  refine Eq.trans ?_ (hc.symm.trans (Finset.sum_congr rfl fun a _ => mul_comm _ _))
  rw [HSKerRes.coord_resM]
  erw [Twist.zcoord_resM]
  rw [HSKerRes.coord_resM, LB.resG_resG, LB.resG_resG]

end GlobalTheory.HSCore.RegSeqGlue

theorem GlobalTheory.HSCore.exists_glue_mod_regSeq : ∀ (k : Type) [Field k] (Y : Scheme.{0}) [Algebra k Γ(Y, ⊤)], IsProjOver (GlobalTheory.strHom k (X := Y)) → ∀ (p : Y ⟶ Sp k) (M L : LB Y), M.IsLB → ∀ (hL : L.IsLB) (d : ℕ) (t : Fin d → L.Sec) (l : ℤ), RegSeq hL (GlobalTheory.LB.toMod M) (List.ofFn t) → VanishFrom L (GlobalTheory.LB.toMod M) 0 → (d : ℤ) ≤ l → ∀ (W : Y → Y.Opens) (b : ∀ y, Vanishing.H0 p (tw M L l) (W y)), (∀ y, y ∈ W y) → (∀ y z, VanishesTo (cutIdeal hL t) 1 (Vanishing.H0.restr inf_le_left (b y) - Vanishing.H0.restr inf_le_right (b z) : Vanishing.H0 p (tw M L l) (W y ⊓ W z))) → ∃ σ : Vanishing.H0 p (tw M L l) ⊤, ∀ y, VanishesTo (cutIdeal hL t) 1 (Vanishing.H0.restr le_top σ - b y) := by
  intro k _ Y _ _ p M L hM hL d t l hreg hvan hd W b hW hb
  have hl : l - 1 + 1 = l := by omega
  have := (VB.isVB_toMod hM).isFiniteQC
  have hs : ∀ y, ∃ β : Γ(twistZ (LB.toMod M) L l, W y), HSKerRes.toH0 p β = b y := fun y =>
    HSKerRes.surjective_ofTwist hM (Twist.isLB_lbZPow hL _) (b y)
  choose β hβ using hs
  obtain ⟨σ, hσ⟩ := RegSeqGlue.exists_glue hL d t (LB.toMod M) 0 (l - 1) l hl hreg hvan (by omega) W β hW
    fun y z => RegSeqGlue.locSpan_of_vanishesTo p hM hL t hl _ (by
      rw [map_sub, RegSeqGlue.toH0_res p hM hL, RegSeqGlue.toH0_res p hM hL, hβ, hβ]
      exact hb y z)
  refine ⟨HSKerRes.toH0 p σ, fun y => ?_⟩
  have := RegSeqGlue.vanishesTo_of_locSpan p hM hL t hl _ (hσ y)
  rwa [map_sub, RegSeqGlue.toH0_res p hM hL, hβ] at this
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLiftSectionsZeroSchemeRegularSequenceLineB =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalLiftSectionsOnClosedSubscheme =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalLiftSectionsOnClosedSubscheme", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiRegularAlongOfEtale\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TopRankPowers\nimport Development.AbelianVarietyTheory.Definitions.Divisors.DetJacMatCoordsEqTransitionJacobianDet\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasBoundedPolesGlobalData\nimport Development.AbelianVarietyTheory.Definitions.Divisors.LinearIndependentBasisCoords\nimport Development.AbelianVarietyTheory.Definitions.Divisors.WellChosen\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory

noncomputable section

namespace GlobalTheory.Vanishing

open TopologicalSpace Opposite H0

theorem exists_local_lift_H0On : ∀ (k : Type) [Field k] (Y : Scheme.{0}) (p : Y ⟶ Sp k) (B : LB Y), B.IsLB → ∀ (I : Y.IdealSheafData) (g : sectionsOnClosedSubscheme p B I) (y : Y), ∃ (W : Y.Opens) (_ : y ∈ W) (b : Vanishing.H0 p B W), ∀ (z : I.subscheme) (hz : I.subschemeι z ∈ W) (j : (B.pull I.subschemeι).ι) (hj : z ∈ (B.pull I.subschemeι).U j), Vanishing.H0.germ j z (TopologicalSpace.Opens.mem_top z) hj g = (I.subschemeι.stalkMap z).hom (Vanishing.H0.germ (j PUnit.unit) (I.subschemeι z) hz (mem_pull.1 hj) b) := by
  intro k _ Y p B hB I g y
  obtain ⟨i, hi⟩ := exists_chart hB y
  obtain ⟨W, hyW, hWi⟩ := exists_affine hi
  obtain ⟨J, rfl⟩ : ∃ J : (B.pull I.subschemeι).ι, J PUnit.unit = i := ⟨fun _ => i, rfl⟩
  have hJ (z : I.subscheme) (hz : I.subschemeι z ∈ W.1) : z ∈ (B.pull I.subschemeι).U J :=
    mem_pull.2 (hWi hz)
  have hle : I.subschemeι ⁻¹ᵁ W.1 ≤ ⊤ ⊓ (B.pull I.subschemeι).U J :=
    fun z hz => ⟨trivial, hJ z hz⟩
  obtain ⟨a, ha⟩ := I.subschemeι_app_surjective W (resG I.subscheme hle (g.loc J))
  let b : H0 p B W.1 := (LB.chartEquiv hB (J PUnit.unit) hWi).symm a
  have hb (x : Y) (hx : x ∈ W.1) : germ (J PUnit.unit) x hx (hWi hx) b = ger x hx a := by
    conv_rhs =>
      rw [← (LB.chartEquiv hB (J PUnit.unit) hWi).apply_symm_apply a, LB.chartEquiv_apply,
        ger_resG]
    rfl
  refine ⟨W.1, hyW, b, fun z hz j hj => ?_⟩
  have h0 : germ J z (Opens.mem_top z) (hJ z hz) g =
      (I.subschemeι.stalkMap z).hom (germ (J PUnit.unit) (I.subschemeι z) hz (hWi hz) b) := by
    rw [hb, germ_apply, ← ger_resG hle z hz, ← ha]
    exact (Scheme.Hom.germ_stalkMap_apply _ _ z hz a).symm
  rw [germ_change j J z _ hj (hJ z hz), h0,
    germ_change (j PUnit.unit) (J PUnit.unit) _ hz (mem_pull.1 hj) (hWi hz), map_mul,
    tr_pull B I.subschemeι z hj (hJ z hz), Units.coe_map]
  rfl

end GlobalTheory.Vanishing
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalLiftSectionsOnClosedSubscheme =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.VanishesToOneOfStalkMap =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.VanishesToOneOfStalkMap", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IntegralBound\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasisRegularSequenceOfCommonZeros\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLiftSectionsZeroSchemeRegularSequenceLineB\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiRegularAlongOfEtale\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalLiftSectionsOnClosedSubscheme\nimport Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverIffIsProperAndExistsIsAmpleLB\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.KawamataViehwegVanishingNumberFieldTwist\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemNonzeroLocusFormMap\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.NefIsPsEffAndBigTensNef\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonemptyHomologyEquiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory

noncomputable section

namespace GlobalTheory.HSResOnto

open GlobalTheory.HSCore.VanishNumberField

theorem vanishFrom_adj_of_nef_big : Quoted → ∀ (K : Type) [Field K] [NumberField K] (G : Geo K) (B₀ : LB G.Y), B₀.IsLB →
    IsNef K B₀ → IsBig K B₀ → VanishFrom G.L (GlobalTheory.LB.toMod (tens G.K.bundle B₀)) 0 := by
  intro Q K _ _ G B₀ hB₀ hnef hbig j hj q hq
  lift j to ℕ using hj
  let Ω := AlgebraicClosure K
  let S := G.toLinSys
  have hV : S.IsVariety := G.geom.alg.variety
  have hV' := hV.baseChange Ω
  have hH := S.isPullback_baseChange Ω
  haveI : IsIntegral (S.baseChange Ω).Y := hV'.isIntegral
  haveI : SmoothOfRelativeDimension G.D (S.baseChange Ω).str := hV'.smooth
  obtain ⟨hprop, A₀, hA₀⟩ := (isProjOver_iff_isProper_and_exists_isAmpleLB _).1 hV.proj
  haveI := hprop
  have hstr : strHom K G.Y = G.str := strHom_eq fun _ => rfl
  have hproj : IsProjOver (strHom K (X := G.Y)) := hstr ▸ hV.proj
  haveI : IsProper (strHom K (X := G.Y)) := hstr ▸ hprop

  have hLnef : IsNef K G.L := IsGenerated.isNef_of_isProjOver (L := G.L) ⟨G.N, G.b, G.geom.alg.bpf⟩ hV.proj
  have hLj : IsNef K (lbPow G.L j) := hLnef.pow hA₀ j
  have hNnef : IsNef K (tens B₀ (lbPow G.L j)) := hnef.tens_of_isProjOver hLj hV.proj
  have hNbig : IsBig K (tens B₀ (lbPow G.L j)) := hbig.tens_nef Q.nef hproj hnef hLj

  haveI : IsIntegralHom (spMap (algebraMap K Ω)) :=
    IsIntegralHom.SpecMap_iff.2 fun x => Algebra.IsIntegral.isIntegral x
  haveI : IsIntegralHom (S.bcFst Ω) := MorphismProperty.of_isPullback (P := @IsIntegralHom) hH.flip ‹_›
  let π := S.bcFst Ω

  have hN'nef : IsNef Ω ((tens B₀ (lbPow G.L j)).pull π) :=
    PosBaseChange.isNef_pull hNnef hA₀ (hA₀.pull_of_isAffineHom π) π π.isClosedMap
  have hN'big : IsBig Ω ((tens B₀ (lbPow G.L j)).pull π) := by
    obtain ⟨D₀, hD₀, c, hc, hm⟩ := hNbig.3
    have hD : topologicalKrullDim G.Y = G.D := topologicalKrullDim_eq_of_smooth G.str G.D hV.smooth
    obtain rfl : D₀ = G.D := by exact_mod_cast hD₀.symm.trans hD
    have hL := LB.isLB_pull hNbig.1 π
    refine (isBig_iff (f := (S.baseChange Ω).str) (fun _ => rfl) hV'.proj
      (topologicalKrullDim_eq_of_smooth _ G.D hV'.smooth)).2 ⟨hL, c, hc, hm.mono fun m hm => hm.trans_eq (congrArg _ ?_)⟩
    rw [lineBundleGlobalSectionsDim_congr_picardClass (isLB_lbPow hL m) (LB.isLB_pull (isLB_lbPow hNbig.1 m) π)
      (by rw [cls_lbPow hL, cls_pull hNbig.1, cls_pull (isLB_lbPow hNbig.1 m), cls_lbPow hNbig.1, map_nsmul])]
    exact (FieldChangeInter.hdim_pull hH (isLB_lbPow hNbig.1 m) 0).symm

  have hM' := LB.isLB_pull (isLB_tw (isLB_tens G.K.isLB hB₀) G.isLB j) π
  have hKV : Subsingleton (coh (twist (structureModule (S.baseChange Ω).Y) ((tw (tens G.K.bundle B₀) G.L j).pull π)) q) :=
    Q.kv.twist (k := Ω) (p := (S.baseChange Ω).str) (fun _ => rfl) hV'.proj (G.K.baseChange hH) hN'nef hN'big hM'
      (by
        rw [cls_pull (isLB_tw (isLB_tens G.K.isLB hB₀) G.isLB j) π]
        erw [cls_pull G.K.isLB π, cls_pull hNnef.isLB π]
        rw [← map_add (f := _)]
        congr 1
        erw [cls_tens (isLB_tens G.K.isLB hB₀) (Twist.isLB_lbZPow G.isLB j), cls_tens G.K.isLB hB₀,
          cls_tens hB₀ (isLB_lbPow G.isLB j)]
        exact add_assoc _ _ _) hq

  have hY : Subsingleton (coh (twist (structureModule G.Y) (tw (tens G.K.bundle B₀) G.L j)) q) :=
    subsingleton_coh_of_pull (f := G.str) (f' := (S.baseChange Ω).str) hH (isLB_tw (isLB_tens G.K.isLB hB₀) G.isLB j) q hKV
  have hB : (tens G.K.bundle B₀).IsLB := isLB_tens G.K.isLB hB₀
  obtain ⟨i⟩ := nonempty_twist_twist_iso_of_cls_eq (structureModule G.Y) hB (Twist.isLB_lbZPow G.isLB j)
    (isLB_tw (isLB_tens G.K.isLB hB₀) G.isLB j) rfl
  exact (cohOn.mapIso Γ(G.Y, ⊤) ⊤ q
    ((twistFunctor (lbZPow G.L j)).mapIso (Twist.unitTwistIso (tens G.K.bundle B₀)).symm ≪≫ i)).toEquiv.subsingleton_congr.2 hY

section Germs
variable {k : Type} [CommRing k] {Y : Scheme.{0}} {p : Y ⟶ Sp k} {B : LB Y} {O : Y.Opens} {I : Y.IdealSheafData}

theorem vanishesTo_one_of_stalkMap {f : Vanishing.H0 p B O}
    (h : ∀ (z : I.subscheme) (hz : I.subschemeι z ∈ O) (j : (B.pull I.subschemeι).ι)
      (hj : z ∈ (B.pull I.subschemeι).U j),
      (I.subschemeι.stalkMap z).hom (Vanishing.H0.germ (j PUnit.unit) (I.subschemeι z) hz (mem_pull.1 hj) f) = 0) :
    VanishesTo I 1 f := by
  intro y hs hy i hi
  obtain ⟨z, rfl⟩ := exists_ι_eq hs
  rw [pow_one, ← ker_stalkMap]
  exact RingHom.mem_ker.2 (h z hy (fun _ => i) (mem_pull.2 hi))

theorem stalkMap_germ_eq_zero {f : Vanishing.H0 p B O} (hf : VanishesTo I 1 f) (z : I.subscheme)
    (hz : I.subschemeι z ∈ O) (i : B.ι) (hi : I.subschemeι z ∈ B.U i) :
    (I.subschemeι.stalkMap z).hom (Vanishing.H0.germ i (I.subschemeι z) hz hi f) = 0 := by
  have := hf _ (ι_mem_support I z) hz i hi
  rw [pow_one, ← ker_stalkMap] at this
  exact RingHom.mem_ker.1 this

end Germs

theorem res_onto : Quoted → ∀ (K : Type) [Field K] [NumberField K] (G : Geo K), IsNef K G.L₂ → IsBig K G.L₂ →
    ∀ (s : Fin G.D → Fin G.N → K) (hs : G.IsGood s), Function.Surjective fun f => hs.res 0 (G.mulE 0 f) := by
  intro Q K _ _ G hnef hbig s hs
  have hB : (tens G.K.bundle G.L₂).IsLB := isLB_tens G.K.isLB G.isLB₂
  have hB' : (G.adj₂ 0).IsLB := isLB_tw hB G.isLB _
  obtain ⟨g, hg, hreg⟩ := _root_.GlobalTheory.RegBasis.exists_regular_basis K G s hs _ hB
  have hproj : IsProjOver (GlobalTheory.strHom K (X := G.Y)) := by
    rw [GlobalTheory.strHom_eq (f := G.str) fun _ => rfl]
    exact G.geom.alg.variety.proj
  have hinv : ∀ {O : G.Y.Opens} {f : Vanishing.H0 G.str (G.adj₂ 0) O},
      VanishesTo (G.ideal fun i => ∑ j, g i j • s j) 1 f → VanishesTo (G.ideal s) 1 f := by
    intro O f hf
    have e : (fun a => ∑ i, g⁻¹ a i • ∑ j, g i j • s j) = s := funext fun a => by
      simp only [Finset.smul_sum, smul_smul]
      rw [Finset.sum_comm]
      simp only [← Finset.sum_smul, ← Matrix.mul_apply, Matrix.nonsing_inv_mul g hg, Matrix.one_apply, ite_smul,
        one_smul, zero_smul, Finset.sum_ite_eq, Finset.mem_univ, if_true]
    have h := _root_.GlobalTheory.HSKerRes.vanishesTo_of_isUnit G (fun i => ∑ j, g i j • s j) g⁻¹ (Matrix.isUnit_nonsing_inv_det g hg) hf
    rwa [e] at h
  have key : ∀ y₀ : sectionsOnClosedSubscheme G.str (G.adj₂ 0) (G.ideal s), ∃ f, resTo suppIn_top f = y₀ := by
    intro y₀
    choose W hW b hb using fun y => _root_.GlobalTheory.Vanishing.exists_local_lift_H0On K G.Y G.str (G.adj₂ 0) hB' (G.ideal s) y₀ y
    have hcomp : ∀ y z, VanishesTo (G.ideal s) 1 (Vanishing.H0.restr inf_le_left (b y) -
        Vanishing.H0.restr inf_le_right (b z) : Vanishing.H0 G.str (G.adj₂ 0) (W y ⊓ W z)) := by
      intro y z
      refine vanishesTo_one_of_stalkMap fun z' hz' j hj => ?_
      rw [map_sub, Vanishing.H0.germ_restr, Vanishing.H0.germ_restr, map_sub, ← hb y z' hz'.1 j hj,
        ← hb z z' hz'.2 j hj, sub_self]
    obtain ⟨σ, hσ⟩ := _root_.GlobalTheory.HSCore.exists_glue_mod_regSeq K G.Y hproj G.str _ G.L hB G.isLB G.D _ _ hreg
      (vanishFrom_adj_of_nef_big Q K G G.L₂ G.isLB₂ hnef hbig) (by simp) W b hW
      fun y z => _root_.GlobalTheory.HSKerRes.vanishesTo_of_isUnit G s g hg (hcomp y z)
    refine ⟨σ, Vanishing.H0.ext_germ fun z _ => ?_⟩
    obtain ⟨c, hc⟩ := exists_chart hB' ((G.ideal s).subschemeι z)
    refine ⟨fun _ => c, mem_pull.2 hc, ?_⟩
    have h₁ := stalkMap_germ_eq_zero (hinv (hσ ((G.ideal s).subschemeι z))) z (hW _) c hc
    rw [map_sub, Vanishing.H0.germ_restr, map_sub, sub_eq_zero] at h₁
    refine (germ_resTo suppIn_top (fun _ => c) z (mem_pull.2 hc) σ).trans ?_
    rw [hb _ z (hW _) (fun _ => c) (mem_pull.2 hc)]
    exact h₁
  intro y₀
  obtain ⟨f, hf⟩ := key (Vanishing.mulDs G.K G.isLB G.isLB₂ (G.sec s) hs.etale rfl y₀)
  refine ⟨f, ?_⟩
  change hs.res 0 (G.mulE 0 f) = y₀
  rw [hs.res_mulE]
  exact (Vanishing.resDs_eq_iff G.K G.isLB G.isLB₂ (G.sec s) hs.etale suppIn_top rfl f y₀).2 hf

end GlobalTheory.HSResOnto
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.VanishesToOneOfStalkMap =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelDegreeZeroResiduesRangeEqTop =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelDegreeZeroResiduesRangeEqTop", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.InclEquiv\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.VanishesToOneOfStalkMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory
open GlobalTheory.HSShort GlobalTheory.HSChoice MvPolynomial

noncomputable section

namespace GlobalTheory.HSShort

theorem totRes_incl_zero {K : Type} [Field K] [NumberField K] {X : Data K} {s : Fin X.D → Fin X.N → K} {hs : X.IsGood s} {δ : ℕ}
    (Co : Coord X.toGeo hs δ) (x : X.V 0) : totRes Co (incl X 0 x) = Co.ev 0 (hs.res 0 x.1) := by
  have h : incl X 0 x 0 = x.1 := Pi.single_eq_same (M := fun j => X.toGeo.Sec j) 0 x.1
  simp only [totRes, LinearMap.comp_apply, LinearMap.proj_apply, h, LinearEquiv.coe_coe]

theorem map_totRes_range_incl_zero : Quoted → ∀ (K : Type) [Field K] [NumberField K] (X : Data K) (s : Fin X.D → Fin X.N → K) (hs : X.IsGood s) (δ : ℕ) (Co : Coord X.toGeo hs δ), IsNef K X.L₂ → IsBig K X.L₂ → (LinearMap.range (incl X 0)).map (totRes Co) = ⊤ := by
  intro Q K _ _ X s hs δ Co hnef hbig
  refine eq_top_iff.2 fun v _ => ?_
  obtain ⟨f, hf⟩ := GlobalTheory.HSResOnto.res_onto Q K X.toGeo hnef hbig s hs ((Co.ev 0).symm v)
  have hf' : hs.res 0 (X.toGeo.mulE 0 f) = (Co.ev 0).symm v := hf
  have hm : X.toGeo.mulE 0 f ∈ X.V 0 := X.global_le 0 (Nat.zero_le _) (X.toGeo.mulE_mem_global 0 f)
  refine Submodule.mem_map.2 ⟨incl X 0 ⟨_, hm⟩, LinearMap.mem_range_self _ _, ?_⟩
  rw [totRes_incl_zero, hf', LinearEquiv.apply_symm_apply]

end GlobalTheory.HSShort
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelDegreeZeroResiduesRangeEqTop =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralLiftSymbol =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralLiftSymbol", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TopRankPowers\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.WellChosen\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory

namespace GlobalTheory.HSCore.IntLift

variable {K : Type} [Field K] [NumberField K]

theorem mulPow_mem_global (G : Geo K) (s : Fin G.D → Fin G.N → K) {a j l : ℕ} (h : j + a = l)
    (α : MonoDeg (Fin G.D) a) {m : G.Sec j} (hm : m ∈ G.global j) : mulPow G s h α m ∈ G.global l := by
  obtain ⟨F, rfl⟩ := hm
  refine ⟨(Vanishing.powChart (isLB_tens G.K.isLB G.isLBA) G.isLB ((Nat.cast_add j a).symm.trans (congrArg _ h))).mul
    (H0.ofSec G.str ⊤ (monoSec (G.sec s) α)) F, ?_⟩
  rw [ProdChart.restr_mul, H0.restr_ofSec]
  rfl

end GlobalTheory.HSCore.IntLift
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralLiftSymbol =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.Divisors.ExistsDataOfPositivity =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.Divisors.ExistsDataOfPositivity", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasBoundedPolesGlobalData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory AlgebraicGeometry TopologicalSpace NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open ReciprocityTheory.ChartRestriction.G.Out (nonzeroLocus)
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.ChowHt GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory

namespace GlobalTheory.HilbertSamuel.Model

variable {F : Type} [Field F] [NumberField F] (G : Geo F)

theorem mulW_mem_global (j : ℕ) (u : Fin G.N → F) {f : G.Sec j} (hf : f ∈ G.global j) :
    G.mulW j u f ∈ G.global (j + 1) := by
  obtain ⟨f, rfl⟩ := hf
  refine ⟨(oneChart (isLB_tens G.K.isLB G.isLBA) G.isLB (Nat.cast_succ j).symm).mul
    (H0.ofSec G.str ⊤ (G.comb u)) f, ?_⟩
  rw [ProdChart.restr_mul, H0.restr_ofSec, G.ofSec_comb]
  simp [Geo.mulW, Fintype.linearCombination_apply]

variable {T : ℕ} (hT : G.D + 1 ≤ T) (β J : ℝ) (hβ : 1 ≤ β)





end GlobalTheory.HilbertSamuel.Model
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.Divisors.ExistsDataOfPositivity =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProductOfVectorMultiplicationsGlobalResidues =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProductOfVectorMultiplicationsGlobalResidues", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.InclEquiv\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsDataOfPositivity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory
open GlobalTheory.HSShort GlobalTheory.HSChoice MvPolynomial

namespace GlobalTheory.HSShort.GlobWord

theorem shift_single {K : Type} [Field K] [NumberField K] (G : Geo K) (j : ℕ) (u : Fin G.N → K) (m : G.Sec j) :
    shift G u (Pi.single j m) = Pi.single (j + 1) (G.mulW j u m) := by
  funext i
  cases i with
  | zero => rw [Pi.single_eq_of_ne (Nat.succ_ne_zero j).symm]; rfl
  | succ i =>
    show G.mulW i u ((Pi.single j m : Tot G) i) = _
    by_cases h : i = j
    · subst h; rw [Pi.single_eq_same, Pi.single_eq_same]
    · rw [Pi.single_eq_of_ne h, Pi.single_eq_of_ne (fun h' => h (Nat.succ_injective h')), map_zero]

theorem word_global : ∀ (K : Type) [Field K] [NumberField K] (G : Geo K) (t j : ℕ) (u : Fin t → Fin G.N → K), ∀ x ∈ G.global j, ∃ x' ∈ G.global (j + t), word (shift G) u (Pi.single j x) = Pi.single (j + t) x' ∧ ∀ (s : Fin G.D → Fin G.N → K) (hs : G.IsGood s) (δ : ℕ) (Co : Coord G hs δ) (p : Fin δ), Co.ev (j + t) (hs.res (j + t) x') p = (∏ q, ∑ k, u q k * Co.y p k) * Co.ev j (hs.res j x) p := by
  intro K _ _ G t j
  induction t with
  | zero =>
    intro u x hx
    exact ⟨x, hx, by simp [word], fun s hs δ Co p => by simp⟩
  | succ t ih =>
    intro u x hx
    obtain ⟨x', hx', hw, hr⟩ := ih (fun q => u q.succ) x hx
    refine ⟨G.mulW (j + t) (u 0) x', GlobalTheory.HilbertSamuel.Model.mulW_mem_global G (j + t) _ hx', ?_, fun s hs δ Co p => ?_⟩
    · unfold word at hw ⊢
      rw [List.ofFn_succ, List.prod_cons, Module.End.mul_apply, hw]
      exact shift_single G (j + t) (u 0) x'
    · show Co.ev (j + t + 1) (hs.res (j + t + 1) (G.mulW (j + t) (u 0) x')) p = _
      rw [hs.res_mulW, Co.mul]
      beta_reduce
      rw [hr, Fin.prod_univ_succ, mul_assoc]

end GlobalTheory.HSShort.GlobWord
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProductOfVectorMultiplicationsGlobalResidues =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelFiltrationSymbolMonomialProduct =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelFiltrationSymbolMonomialProduct", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.InclEquiv\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelSectionShiftCommSingleMonomial\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralLiftSymbol\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProductOfVectorMultiplicationsGlobalResidues\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory
open GlobalTheory.HSShort GlobalTheory.HSChoice MvPolynomial

namespace GlobalTheory.HSShort

theorem exists_filV_mulPow {K : Type} [Field K] [NumberField K] (X : Data K) {s : Fin X.D → Fin X.N → K} {hs : X.IsGood s}
    {δ : ℕ} (Co : Coord X.toGeo hs δ) {a : ℕ} (haT : a ≤ X.T) (α : MonoDeg (Fin X.D) a)
    (m : X.Sec (X.T - a)) (hg : m ∈ X.global (X.T - a)) :
    ∃ f : filV X s a, (f.1 : X.Sec X.T) = mulPow X.toGeo s (Nat.sub_add_cancel haT) α m ∧
      ∀ α' p, symV Co a f (α', p) = if α'.1 = α.1 then Co.ev (X.T - a) (hs.res (X.T - a) m) p else 0 := by
  have hh : X.T - a + a = X.T := Nat.sub_add_cancel haT
  have hgl := GlobalTheory.HSCore.IntLift.mulPow_mem_global X.toGeo s hh α hg
  obtain ⟨f, hfeq⟩ : ∃ f : X.V X.T, (f : X.Sec X.T) = mulPow X.toGeo s hh α m := ⟨⟨_, X.global_le _ le_rfl hgl⟩, rfl⟩
  have hfF : (f : X.Sec X.T) ∈ Fil (X.ideal s) a (spaceV X s) := by
    refine (mem_Fil).2 ⟨Submodule.mem_sup_left ?_, ?_⟩
    · rw [hfeq]; exact hgl
    · rw [hfeq]; exact vanishesTo_mulMono _ _ _ _ _ _
  refine ⟨⟨f, hfF⟩, hfeq, fun α' p => ?_⟩
  have key : hs.sym hh (spaceV X s) ((X.V X.T).subtype.restrict (p := filV X s a) (q := Fil (X.ideal s) a (spaceV X s))
      (fun _ hx => hx) ⟨f, hfF⟩) = Pi.single α (hs.res (X.T - a) m) :=
    Vanishing.sym_mulMono _ _ _ _ _ _ _ _ _ _ α (m : X.Sec (X.T - a)) _ hfeq
  unfold symV
  rw [dite_eq_left haT]
  simp only [LinearMap.coe_comp, Function.comp_apply, LinearMap.pi_apply, LinearEquiv.coe_coe, LinearMap.coe_proj,
    Function.eval]
  rw [key]
  by_cases hα : α' = α
  · subst hα; simp
  · rw [if_neg (fun h => hα (Subtype.ext h)), Pi.single_eq_of_ne hα, map_zero]; rfl

theorem totSym_incl {K : Type} [Field K] [NumberField K] {X : Data K} {s : Fin X.D → Fin X.N → K} {hs : X.IsGood s}
    {δ : ℕ} (Co : Coord X.toGeo hs δ) (a : ℕ) (f : filV X s a) (y : totFil X s a) (h : y.1 = incl X X.T f.1) :
    totSym Co a y = symV Co a f := by
  have : y = Submodule.equivMapOfInjective _ (incl_injective X X.T) (filV X s a) f := Subtype.ext h
  rw [this]
  exact congrArg (symV Co a) (LinearEquiv.symm_apply_apply _ f)

theorem totSym_mono : ∀ (K : Type) [Field K] [NumberField K] (X : Data K) (s : Fin X.D → Fin X.N → K) (hs : X.IsGood s) (δ : ℕ) (Co : Coord X.toGeo hs δ), X.MulStable → ∀ a < X.T - X.D, ∀ (α : MonoDeg (Fin X.D) a) (l : Fin (X.T - a) → Fin X.N → K), ∀ m ∈ LinearMap.range (incl X 0), ∃ h : pw (shift X.toGeo) s α.1 (word (shift X.toGeo) l m) ∈ totFil X s a, ∀ α' p, totSym Co a ⟨_, h⟩ (α', p) = if α'.1 = α.1 then (∏ q, ∑ k, l q k * Co.y p k) * totRes Co m p else 0 := by
  intro K _ _ X s hs δ Co _ a ha α l m hm
  obtain ⟨m₀, rfl⟩ := hm
  have haT : a ≤ X.T := by omega
  have hm₀ : (m₀ : X.Sec 0) ∈ X.global 0 := (SetLike.ext_iff.1 X.V_zero _).1 m₀.2
  have H : ∀ (t k : ℕ) (_ : 0 + t = k) (u : Fin t → Fin X.N → K), ∃ x' ∈ X.global k,
      word (shift X.toGeo) u (Pi.single 0 (m₀ : X.Sec 0)) = Pi.single k x' ∧ ∀ p,
        Co.ev k (hs.res k x') p = (∏ q, ∑ j, u q j * Co.y p j) * Co.ev 0 (hs.res 0 m₀) p := by
    intro t k h u
    subst h
    obtain ⟨x', h1, h2, h3⟩ := _root_.GlobalTheory.HSShort.GlobWord.word_global K X.toGeo t 0 u _ hm₀
    exact ⟨x', h1, h2, h3 s hs δ Co⟩
  obtain ⟨x', h1, h2, h3⟩ := H _ _ (Nat.zero_add _) l
  obtain ⟨f, hf, hsym⟩ := exists_filV_mulPow X Co haT α x' h1
  have e : pw (shift X.toGeo) s α.1 (word (shift X.toGeo) l (incl X 0 m₀)) = incl X X.T f.1 := by
    change pw (shift X.toGeo) s α.1 (word (shift X.toGeo) l (Pi.single 0 (m₀ : X.Sec 0))) =
      Pi.single X.T (f.1 : X.Sec X.T)
    rw [h2, hf]
    exact (_root_.GlobalTheory.HSShort.shift_comm_single_mono K X.toGeo).2.2 s a _ _ _ α x'
  refine ⟨⟨f.1, f.2, e.symm⟩, fun α' p => ?_⟩
  rw [totSym_incl Co a f _ e, hsym, h3]
  have : totRes Co (incl X 0 m₀) = Co.ev 0 (hs.res 0 m₀) := by simp [totRes, incl]
  rw [this]

end GlobalTheory.HSShort
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelFiltrationSymbolMonomialProduct =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelSectionBaseChangeProperties =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelSectionBaseChangeProperties", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.InclEquiv\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulBoundAtBaseChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory
open GlobalTheory.HSShort GlobalTheory.HSChoice MvPolynomial

noncomputable section

namespace GlobalTheory.HSShort

section Lemmas

variable {F : Type} [Field F] [NumberField F] (G : Geo F)

theorem shift_apply_zero (u : Fin G.N → F) (x : Tot G) : shift G u x 0 = 0 := rfl

theorem shift_apply_succ (u : Fin G.N → F) (x : Tot G) (j : ℕ) : shift G u x (j + 1) = G.mulW j u (x j) := rfl

variable (E : Type) [Field E] [NumberField E] [Algebra F E]

theorem totExt_apply (x : Tot G) (j : ℕ) : totExt G E x j = G.toExt E j (x j) := rfl

theorem totExt_single (j : ℕ) (s : G.Sec j) :
    totExt G E (Pi.single j s) = Pi.single j (G.toExt E j s) := by
  funext k
  rw [totExt_apply]
  by_cases h : k = j
  · subst h
    rw [Pi.single_eq_same, Pi.single_eq_same]
  · rw [Pi.single_eq_of_ne h, Pi.single_eq_of_ne h, map_zero]

theorem shift_totExt (u : Fin G.N → F) (x : Tot G) :
    shift (G.baseChange E) (fun k => algebraMap F E (u k)) (totExt G E x) = totExt G E (shift G u x) := by
  funext j
  cases j with
  | zero => rw [shift_apply_zero, totExt_apply, shift_apply_zero, map_zero]
  | succ j =>
    rw [shift_apply_succ, totExt_apply, totExt_apply, shift_apply_succ, Geo.toExt_mulW]
    rfl

end Lemmas

theorem totExt_props : ∀ (F : Type) [Field F] [NumberField F] (X : Data F) (Λ₀ : ℝ) (E : Type) [Field E] [NumberField E] [Algebra F E], (∀ (m : ℕ) (v : Fin m → (sysOf X Λ₀).V X.T), LinearIndependent F v → LinearIndependent E fun i => totExt X.toGeo E (v i)) ∧ (∀ u x, shift (X.toGeo.baseChange E) (fun k => algebraMap F E (u k)) (totExt X.toGeo E x) = totExt X.toGeo E (shift X.toGeo u x)) ∧ ∀ j, Submodule.span E (totExt X.toGeo E '' (sysOf X Λ₀).V j) = LinearMap.range (incl (X.baseChange E) j) := by
  intro F _ _ X Λ₀ E _ _ _
  refine ⟨?_, fun u x => shift_totExt X.toGeo E u x, ?_⟩
  · intro m v hv
    have hv' := hv.map' ((sysOf X Λ₀).V X.T).subtype (Submodule.ker_subtype _)
    have hform : ∀ i, ∃ y : X.toGeo.Sec X.T, (v i : Tot X.toGeo) = Pi.single X.T y := by
      intro i
      obtain ⟨y, hy⟩ := (v i).2
      exact ⟨y, hy.symm⟩
    choose f hf using hform
    have h1 : LinearIndependent F (LinearMap.single F (fun k => X.toGeo.Sec k) X.T ∘ f) := by
      have e : (LinearMap.single F (fun k => X.toGeo.Sec k) X.T ∘ f) = ((sysOf X Λ₀).V X.T).subtype ∘ v :=
        funext fun i => (hf i).symm
      rw [e]
      exact hv'
    have h2 := X.toGeo.linearIndependent_toExt E X.T m f h1.of_comp
    have h3 := h2.map' (LinearMap.single E (fun k => (X.toGeo.baseChange E).Sec k) X.T)
      (LinearMap.ker_eq_bot.2 (Pi.single_injective _))
    have e2 : (fun i => totExt X.toGeo E (v i)) =
        (LinearMap.single E (fun k => (X.toGeo.baseChange E).Sec k) X.T ∘ fun i => X.toGeo.toExt E X.T (f i)) := by
      funext i
      rw [hf i, totExt_single]
      rfl
    rw [e2]
    exact h3
  · intro j
    have hset : (totExt X.toGeo E '' ((sysOf X Λ₀).V j : Set (Tot X.toGeo))) =
        (LinearMap.single E (fun k => (X.toGeo.baseChange E).Sec k) j) ''
          (X.toGeo.toExt E j '' (X.V j : Set (X.toGeo.Sec j))) := by
      ext z
      constructor
      · rintro ⟨_, ⟨y, rfl⟩, rfl⟩
        exact ⟨_, ⟨y, y.2, rfl⟩, (totExt_single X.toGeo E j y).symm⟩
      · rintro ⟨_, ⟨y, hy, rfl⟩, rfl⟩
        exact ⟨_, ⟨⟨y, hy⟩, rfl⟩, totExt_single X.toGeo E j y⟩
    rw [hset, ← Submodule.map_span]
    refine Eq.trans ?_ (LinearMap.range_comp ((X.baseChange E).V j).subtype (LinearMap.single E _ j)).symm
    rw [Submodule.range_subtype]
    rfl

end GlobalTheory.HSShort
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelSectionBaseChangeProperties =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FilSpaceVEqSpaceP =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FilSpaceVEqSpaceP", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.WellChosen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory

noncomputable section

namespace GlobalTheory.HSCore

theorem spaceP_le_filTop {K : Type} [Field K] [NumberField K] (X : Data K) (s : Fin X.D → Fin X.N → K) :
    spaceP X s ≤ filTop X.str (X.adj X.T) X.U (X.ideal s) (X.T - X.D) := by
  unfold spaceP
  refine iSup_le fun α => ?_
  rintro _ ⟨m, -, rfl⟩
  exact vanishesTo_mulMono _ _ _ α _ m

theorem fil_spaceV_eq_spaceP (hF : FilMono) (K : Type) [Field K] [NumberField K] (X : Data K)
    (s : Fin X.D → Fin X.N → K) (hs : X.IsGood s) (hn : IsNef K X.LA) (hb : IsBig K X.LA) :
    Fil (X.ideal s) (X.T - X.D) (spaceV X s) = spaceP X s := by
  apply le_antisymm
  · rintro f ⟨hfV, hfv⟩
    obtain ⟨g, hg, p, hp, rfl⟩ := Submodule.mem_sup.1 hfV
    have hpv : VanishesTo (X.ideal s) (X.T - X.D) p := spaceP_le_filTop X s hp
    have hgv : VanishesTo (X.ideal s) (X.T - X.D) g := by
      have : g = (g + p) - p := by abel
      rw [this]
      exact (filTop X.str (X.adj X.T) X.U (X.ideal s) (X.T - X.D)).sub_mem hfv hpv
    obtain ⟨m, hm, hgm⟩ := hF K X.toGeo hn hb s hs (X.T - X.D) X.D X.T (add_sub_D X) (Nat.le_refl _) g ⟨hg, hgv⟩
    refine (spaceP X s).add_mem ?_ hp
    rw [hgm]
    refine Submodule.sum_mem _ fun α _ => ?_
    unfold spaceP
    exact Submodule.mem_iSup_of_mem α ⟨m α, X.global_le X.D (by have := X.le_T; omega) (hm α), rfl⟩
  · intro f hf
    exact ⟨Submodule.mem_sup_right hf, spaceP_le_filTop X s hf⟩

alias filP := _root_.GlobalTheory.HSCore.fil_spaceV_eq_spaceP

end GlobalTheory.HSCore
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FilSpaceVEqSpaceP =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulPowMemAndSpaceVLe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulPowMemAndSpaceVLe", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TopRankPowers\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.WellChosen\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory

namespace GlobalTheory.HSCore

variable {K : Type} [Field K] [NumberField K]

theorem monoDeg_succ_split {ι : Type} [Fintype ι] {a : ℕ} (β : MonoDeg ι (a + 1)) :
    ∃ (i : ι) (α : MonoDeg ι a), β.1 = α.1 + Finsupp.single i 1 := by
  have hne : β.1 ≠ 0 := fun h0 => by
    have := β.2
    rw [h0, Finsupp.degree_eq_sum] at this
    simp at this
  obtain ⟨i, hi⟩ := Finsupp.ne_iff.1 hne
  have hle : Finsupp.single i 1 ≤ β.1 := by
    rw [Finsupp.single_le_iff]
    simp only [Finsupp.coe_zero, Pi.zero_apply] at hi
    omega
  have e : β.1 = (β.1 - Finsupp.single i 1) + Finsupp.single i 1 := (tsub_add_cancel_of_le hle).symm
  refine ⟨i, ⟨β.1 - Finsupp.single i 1, ?_⟩, e⟩
  have h2 := β.2
  rw [e, Finsupp.degree_eq_sum, Finset.sum_congr rfl (fun x _ => Finsupp.add_apply _ _ x),
    Finset.sum_add_distrib, ← Finsupp.degree_eq_sum, ← Finsupp.degree_eq_sum, Finsupp.degree_single] at h2
  omega

theorem mulPow_mem (X : Data K) (s : Fin X.D → Fin X.N → K) (hX : X.MulStable) :
    ∀ (a j l : ℕ) (h : j + a = l), l ≤ X.T → ∀ (α : MonoDeg (Fin X.D) a), ∀ m ∈ X.V j,
      mulPow X.toGeo s h α m ∈ X.V l := by
  intro a
  induction a with
  | zero =>
    intro j l h _ α m hm
    subst h
    have : mulPow X.toGeo s (rfl : j + 0 = j + 0) α m = m := by
      unfold mulPow
      exact mulMono_zero _ _ _ _ _ _
    rw [this]
    exact hm
  | succ a ih =>
    intro j l h hl β m hm
    subst h
    obtain ⟨i, α, e⟩ := monoDeg_succ_split β
    have hk : j + a < X.T := by omega
    have key : mulPow X.toGeo s (rfl : j + (a + 1) = j + (a + 1)) β m =
        X.mulW (j + a) (s i) (mulPow X.toGeo s (rfl : j + a = j + a) α m) := by
      unfold mulPow
      rw [Geo.mulW_apply]
      exact mulMono_succ _ _ _ α β i e _ _ _ m
    rw [key]
    exact hX.mem hk (s i) ⟨_, ih j (j + a) rfl (by omega) α m hm⟩

theorem mulPow_mem_and_spaceV_le : ∀ (K : Type) [Field K] [NumberField K] (X : Data K) (s : Fin X.D → Fin X.N → K),
    X.MulStable → (∀ (a j l : ℕ) (h : j + a = l), l ≤ X.T → ∀ (α : MonoDeg (Fin X.D) a), ∀ m ∈ X.V j,
      mulPow X.toGeo s h α m ∈ X.V l) ∧ spaceV X s ≤ X.V X.T := by
  intro K _ _ X s hX
  refine ⟨mulPow_mem X s hX, ?_⟩
  refine sup_le (X.global_le X.T le_rfl) (iSup_le fun α => ?_)
  rintro _ ⟨m, hm, rfl⟩
  exact mulPow_mem X s hX _ _ _ _ le_rfl α m hm

end GlobalTheory.HSCore
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulPowMemAndSpaceVLe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelVanishingFiltrationDeepestStepSpan =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelVanishingFiltrationDeepestStepSpan", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.InclEquiv\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FilSpaceVEqSpaceP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelSectionShiftCommSingleMonomial\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulPowMemAndSpaceVLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory
open GlobalTheory.HSShort GlobalTheory.HSChoice MvPolynomial

namespace GlobalTheory.HSShort

theorem totFil_deepest : FilMono → ∀ (K : Type) [Field K] [NumberField K] (X : Data K) (s : Fin X.D → Fin X.N → K), X.IsGood s → IsNef K X.LA → IsBig K X.LA → X.MulStable → totFil X s (X.T - X.D) = ⨆ α : MonoDeg (Fin X.D) (X.T - X.D), (LinearMap.range (incl X X.D)).map (pw (shift X.toGeo) s α.1) := by
  intro hF K _ _ X s hs hn hb hm
  have hP := filP hF K X s hs hn hb
  have hVT : spaceP X s ≤ X.V X.T := le_sup_right.trans (mulPow_mem_and_spaceV_le K X s hm).2
  have hL : totFil X s (X.T - X.D) = (spaceP X s).map (LinearMap.single K (fun j => X.Sec j) X.T) := by
    show ((Fil (X.ideal s) (X.T - X.D) (spaceV X s)).comap (X.V X.T).subtype).map
        (LinearMap.single K _ X.T ∘ₗ (X.V X.T).subtype) = _
    rw [hP, Submodule.map_comp, Submodule.map_comap_subtype, inf_of_le_right hVT]
  have hR : ∀ α : MonoDeg (Fin X.D) (X.T - X.D),
      (LinearMap.range (incl X X.D)).map (pw (shift X.toGeo) s α.1) =
        ((X.V X.D).map (mulPow X.toGeo s (add_sub_D X) α)).map (LinearMap.single K (fun j => X.Sec j) X.T) := by
    intro α
    have he : pw (shift X.toGeo) s α.1 ∘ₗ LinearMap.single K (fun j => X.Sec j) X.D =
        LinearMap.single K (fun j => X.Sec j) X.T ∘ₗ mulPow X.toGeo s (add_sub_D X) α := by
      refine LinearMap.ext fun m => ?_
      simp only [LinearMap.comp_apply, LinearMap.coe_single]
      exact (_root_.GlobalTheory.HSShort.shift_comm_single_mono K X.toGeo).2.2 s (X.T - X.D) X.D X.T (add_sub_D X) α m
    rw [show incl X X.D = LinearMap.single K (fun j => X.Sec j) X.D ∘ₗ (X.V X.D).subtype from rfl,
      LinearMap.range_comp, Submodule.range_subtype, ← Submodule.map_comp, he, Submodule.map_comp]
  rw [hL, iSup_congr hR, ← Submodule.map_iSup]
  rfl

end GlobalTheory.HSShort
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelVanishingFiltrationDeepestStepSpan =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSubPtsIffOfToBaseEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSubPtsIffOfToBaseEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.WellChosen\nimport Mathlib.Algebra.AffineMonoid.UniqueSums\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory

namespace GlobalTheory.HSCore.SplitField

theorem exists_algHom_factor (E A : Type) [Field E] [CommRing A] [Algebra E A] [Module.Finite E A] :
    ∃ p : Polynomial E, ∀ (Ω : Type) [Field Ω] [Algebra E Ω] [Algebra p.SplittingField Ω]
      [IsScalarTower E p.SplittingField Ω] (φ : A →ₐ[E] Ω),
      ∃ φ₀ : A →ₐ[E] p.SplittingField, ∀ a, φ a = algebraMap p.SplittingField Ω (φ₀ a) := by
  classical
  obtain ⟨t, ht⟩ := Module.Finite.fg_top (R := E) (M := A)
  obtain ⟨p, hp⟩ : ∃ p : Polynomial E, p = ∏ a ∈ t, minpoly E a := ⟨_, rfl⟩
  refine ⟨p, fun Ω _ _ _ _ φ => ?_⟩
  have hp0 : p ≠ 0 := hp ▸ Finset.prod_ne_zero_iff.2 fun a _ => minpoly.ne_zero (Algebra.IsIntegral.isIntegral a)
  let j : p.SplittingField →ₐ[E] Ω := IsScalarTower.toAlgHom E p.SplittingField Ω
  have hj : Function.Injective j := j.toRingHom.injective
  have hgen : ∀ a ∈ t, φ a ∈ j.range := fun a ha => by
    have h0 : Polynomial.aeval (φ a) p = 0 := by
      rw [Polynomial.aeval_algHom_apply, hp, map_prod, Finset.prod_eq_zero ha (minpoly.aeval E a), map_zero]
    have hs := Polynomial.SplittingField.splits p
    have hr : φ a ∈ ((p.map (algebraMap E p.SplittingField)).map (algebraMap p.SplittingField Ω)).roots := by
      rw [Polynomial.map_map, ← IsScalarTower.algebraMap_eq, Polynomial.mem_roots (Polynomial.map_ne_zero hp0),
        Polynomial.IsRoot.def, Polynomial.eval_map_algebraMap]
      exact h0
    rw [hs.roots_map] at hr
    obtain ⟨b, -, hb⟩ := Multiset.mem_map.1 hr
    exact ⟨b, hb⟩
  have hall : ∀ a, φ a ∈ j.range := fun a => by
    have ha : a ∈ Submodule.span E (t : Set A) := ht ▸ trivial
    induction ha using Submodule.span_induction with
    | mem x hx => exact hgen x hx
    | zero => rw [map_zero]; exact zero_mem _
    | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
    | smul c x _ hx => rw [map_smul]; exact Subalgebra.smul_mem _ hx c
  refine ⟨(AlgEquiv.ofInjective j hj).symm.toAlgHom.comp (φ.codRestrict j.range hall), fun a => ?_⟩
  exact (congrArg Subtype.val ((AlgEquiv.ofInjective j hj).apply_symm_apply ⟨φ a, hall a⟩)).symm

theorem exists_point_factor (E : Type) [Field E] {Z : Scheme.{0}} (f : Z ⟶ Sp E) [IsFinite f] :
    ∃ p : Polynomial E, ∀ (Ω : Type) [Field Ω] [Algebra E Ω] [Algebra p.SplittingField Ω]
      [IsScalarTower E p.SplittingField Ω] (z : Sp Ω ⟶ Z), z ≫ f = spMap (algebraMap E Ω) →
      ∃ z₀ : Sp p.SplittingField ⟶ Z, z₀ ≫ f = spMap (algebraMap E p.SplittingField) ∧
        z = spMap (algebraMap p.SplittingField Ω) ≫ z₀ := by
  have : IsAffine Z := isAffine_of_isAffineHom f
  obtain ⟨g, hg⟩ := Spec.map_surjective (R := CommRingCat.of E) (Z.isoSpec.inv ≫ f)
  have hfin : g.hom.Finite := (IsFinite.SpecMap_iff g).1 (hg ▸ inferInstance)
  let : Algebra E Γ(Z, ⊤) := g.hom.toAlgebra
  have : Module.Finite E Γ(Z, ⊤) := hfin
  obtain ⟨p, hp⟩ := exists_algHom_factor E Γ(Z, ⊤)
  refine ⟨p, fun Ω _ _ _ _ z hz => ?_⟩
  obtain ⟨ψ, hψ⟩ := Spec.map_surjective (S := CommRingCat.of Ω) (z ≫ Z.isoSpec.hom)
  have hc : g ≫ ψ = CommRingCat.ofHom (algebraMap E Ω) := Spec.map_injective (by
    rw [Spec.map_comp, hg, hψ, Category.assoc, Iso.hom_inv_id_assoc, hz])
  obtain ⟨φ₀, h₀⟩ := hp Ω { ψ.hom with commutes' := fun a => congrArg (fun q => q.hom a) hc }
  refine ⟨Spec.map (CommRingCat.ofHom φ₀.toRingHom) ≫ Z.isoSpec.inv, ?_, ?_⟩
  · rw [Category.assoc, ← hg, ← Spec.map_comp]
    exact congrArg Spec.map (CommRingCat.hom_ext (RingHom.ext fun a => φ₀.commutes a))
  · rw [← Category.assoc, Iso.eq_comp_inv, ← hψ, ← Spec.map_comp]
    exact congrArg Spec.map (CommRingCat.hom_ext (RingHom.ext fun a => h₀ a))

theorem mem_subPts_iff_of_toBase_eq {F : Type} [Field F] (S : LinSys F) (E E' : Type) [Field E] [Field E'] [Algebra F E]
    [Algebra F E'] [Algebra E E'] {ι : Type} (s : ι → Fin S.N → E)
    {Ω : Type} [Field Ω] [Algebra E Ω] [Algebra E' Ω] [Algebra F Ω] [IsScalarTower F E Ω] [IsScalarTower F E' Ω]
    [IsScalarTower E E' Ω] (x : (S.baseChange E).Pt Ω) (x' : (S.baseChange E').Pt Ω)
    (h : LinSys.toBase x = LinSys.toBase x') :
    x ∈ (S.baseChange E).subPts ((S.baseChange E).cut s) Ω ↔
      x' ∈ (S.baseChange E').subPts ((S.baseChange E').cut fun i k => algebraMap E E' (s i k)) Ω := by
  refine (S.mem_subPts_cut_baseChange_iff E s x).trans
    (Iff.trans ?_ (S.mem_subPts_cut_baseChange_iff E' (fun i k => algebraMap E E' (s i k)) x').symm)
  rw [h]
  simp only [← IsScalarTower.algebraMap_apply]

end GlobalTheory.HSCore.SplitField

namespace GlobalTheory.HSCore


open SplitField in
theorem exists_split : ∀ (F : Type) [Field F] [NumberField F] (T : Tuple F) (E : Type) [Field E] [NumberField E] [Algebra F E] (s : Fin T.D → Fin T.N → E), T.IsGoodSection E s → ∃ (E' : Type) (_ : Field E') (_ : NumberField E') (_ : Algebra F E') (_ : Algebra E E') (_ : IsScalarTower F E E'), Split T E' fun i k => algebraMap E E' (s i k) := by
  intro F _ _ T E _ _ _ s hs
  have hfin : IsFinite ((T.linSection E s).subschemeι ≫ (T.toLinSys.baseChange E).str) := hs.finiteEtale.finite
  obtain ⟨p, hp⟩ := exists_point_factor E ((T.linSection E s).subschemeι ≫ (T.toLinSys.baseChange E).str)
  refine ⟨p.SplittingField, inferInstance, NumberField.of_module_finite E _, inferInstance, inferInstance,
    inferInstance, fun x hx => ?_⟩
  let x' : (T.toLinSys.baseChange p.SplittingField).Pt (AlgebraicClosure p.SplittingField) :=
    ⟨x ≫ Scheme.IdealSheafData.subschemeι _, (Category.assoc _ _ _).trans hx⟩
  obtain ⟨y, hy⟩ := (T.toLinSys.toBase_bijective E (AlgebraicClosure p.SplittingField)).2 (LinSys.toBase x')
  obtain ⟨z, hz⟩ := (mem_subPts_iff_of_toBase_eq T.toLinSys E p.SplittingField s y x' hy).2 ⟨x, rfl⟩
  obtain ⟨z₀, h₀, h₁⟩ := hp (AlgebraicClosure p.SplittingField) z (by
    rw [← Category.assoc]; exact (congrArg (· ≫ _) hz).trans y.2)
  let y₀ : (T.toLinSys.baseChange E).Pt p.SplittingField :=
    ⟨z₀ ≫ Scheme.IdealSheafData.subschemeι _, (Category.assoc _ _ _).trans h₀⟩
  obtain ⟨x₁, hx₁⟩ := (T.toLinSys.toBase_bijective p.SplittingField p.SplittingField).2 (LinSys.toBase y₀)
  obtain ⟨x₀, hx₀⟩ := (mem_subPts_iff_of_toBase_eq T.toLinSys E p.SplittingField s y₀ x₁ hx₁.symm).1 ⟨z₀, rfl⟩
  refine ⟨x₀, ?_⟩
  refine (cancel_mono (Scheme.IdealSheafData.subschemeι _)).1 ?_
  refine Eq.trans ?_ ((Category.assoc _ _ _).trans (congrArg (_ ≫ ·) hx₀)).symm
  refine (T.toLinSys.isPullback_baseChange p.SplittingField).hom_ext ?_ ?_
  · have e₁ : x₁.1 ≫ T.toLinSys.bcFst _ = y₀.1 ≫ T.toLinSys.bcFst _ := congrArg Subtype.val hx₁
    have e₂ : y.1 ≫ T.toLinSys.bcFst _ = x'.1 ≫ T.toLinSys.bcFst _ := congrArg Subtype.val hy
    refine e₂.symm.trans ?_
    rw [Category.assoc, e₁, ← hz, h₁, Category.assoc, Category.assoc]
    rfl
  · refine x'.2.trans ?_
    rw [Category.assoc, x₁.2, ← Spec.map_comp]
    rfl

end GlobalTheory.HSCore
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSubPtsIffOfToBaseEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NefBigBaseChange =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NefBigBaseChange", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasBoundedPolesGlobalData\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemNonzeroLocusFormMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TopRankPowers\nimport Development.AbelianVarietyTheory.Definitions.Divisors.WellChosen\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory

namespace GlobalTheory.HSCore

theorem nef_big_baseChange : ∀ (F : Type) [Field F] [NumberField F] (X : Data F) (E : Type) [Field E] [NumberField E] [Algebra F E], IsNef F X.LA → IsBig F X.LA → IsNef E (X.baseChange E).LA ∧ IsBig E (X.baseChange E).LA := by
  intro F _ _ X E _ _ _ hn hb
  exact ⟨GlobalTheory.HilbertSamuel.Geo.isNef_baseChange X.toGeo E hn, GlobalTheory.HilbertSamuel.Geo.isBig_baseChange X.toGeo E hb⟩

end GlobalTheory.HSCore
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NefBigBaseChange =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NefBigSecondBaseChange =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NefBigSecondBaseChange", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasBoundedPolesGlobalData\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemNonzeroLocusFormMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TopRankPowers\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HermSysHypOneLeLambdaZero\nimport Development.AbelianVarietyTheory.Definitions.Divisors.WellChosen\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory
open GlobalTheory.HSShort GlobalTheory.HSChoice MvPolynomial

namespace GlobalTheory.HSShort

theorem nef_big_second_baseChange : ∀ (F : Type) [Field F] [NumberField F] (X : Data F) (E : Type) [Field E] [NumberField E] [Algebra F E], IsNef F X.L₂ → IsBig F X.L₂ → IsNef E (X.baseChange E).L₂ ∧ IsBig E (X.baseChange E).L₂ := by
  intro F _ _ X E _ _ _ hn hb
  exact ⟨PosBaseChange.isNef_baseChange (X.toGeo.isPullback_fst E) X.geom.alg.variety.proj hn,
    PosBaseChange.isBig_baseChange (X.toGeo.isPullback_fst E) X.geom.alg.variety.proj hb⟩

end GlobalTheory.HSShort
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NefBigSecondBaseChange =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FilVSymVKer =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FilVSymVKer", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IntegralBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory

namespace GlobalTheory.HSCore

theorem filV_symV_ker : ∀ (K : Type) [Field K] [NumberField K] (X : Data K) (s : Fin X.D → Fin X.N → K) (hs : X.IsGood s) (δ : ℕ) (Co : Coord X.toGeo hs δ), ∀ a < X.T - X.D, filV X s (a + 1) ≤ filV X s a ∧ ∀ x : filV X s a, symV Co a x = 0 ↔ x.1 ∈ filV X s (a + 1) := by
  intro K _ _ X s hs δ Co a ha
  have haT : a ≤ X.T := by omega
  refine ⟨Submodule.comap_mono (Vanishing.Fil_anti (Nat.le_succ a)), fun x => ?_⟩
  have key : symV Co a x = 0 ↔ hs.sym (Nat.sub_add_cancel haT) (spaceV X s)
      ((X.V X.T).subtype.restrict (fun _ hx => hx) x) = 0 := by
    unfold symV
    rw [dite_eq_left haT]
    constructor
    · intro h
      funext α
      apply (Co.ev (X.T - a)).injective
      funext p
      have := congrFun h (α, p)
      simpa using this
    · intro h
      funext q
      simp [h]
  rw [key]
  exact Vanishing.sym_eq_zero_iff _ _ _ _ _ _ _ _ _ _ _

end GlobalTheory.HSCore
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FilVSymVKer =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotFilTotSymKer =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotFilTotSymKer", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.InclEquiv\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FilVSymVKer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory
open GlobalTheory.HSShort GlobalTheory.HSChoice MvPolynomial

namespace GlobalTheory.HSShort

theorem totFil_totSym_ker : ∀ (K : Type) [Field K] [NumberField K] (X : Data K) (s : Fin X.D → Fin X.N → K) (hs : X.IsGood s) (δ : ℕ) (Co : Coord X.toGeo hs δ), ∀ a < X.T - X.D, totFil X s (a + 1) ≤ totFil X s a ∧ ∀ x : totFil X s a, totSym Co a x = 0 ↔ x.1 ∈ totFil X s (a + 1) := by
  intro K _ _ X s hs δ Co a ha
  obtain ⟨hle, hker⟩ := GlobalTheory.HSCore.filV_symV_ker K X s hs δ Co a ha
  refine ⟨Submodule.map_mono hle, fun x => ?_⟩
  let e := Submodule.equivMapOfInjective _ (incl_injective X X.T) (filV X s a)
  let y : filV X s a := e.symm x
  have hxy : e y = x := e.apply_symm_apply x
  have hx1 : x.1 = incl X X.T y.1 := by rw [← hxy]; rfl
  have : totSym Co a x = symV Co a y := rfl
  rw [this, hker y, hx1]
  constructor
  · intro h
    exact ⟨y.1, h, rfl⟩
  · rintro ⟨z, hz, hzy⟩
    rwa [← incl_injective X X.T hzy]

end GlobalTheory.HSShort
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotFilTotSymKer =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelFiltrationAtGoodSections =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelFiltrationAtGoodSections", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.InclEquiv\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComplexifyStatement\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HermSysHypOneLeLambdaZero\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.WellChosen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCoordinatesSpecialisedFormProdLinearForms\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FilMonoOfKerRes\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelDegreeZeroResiduesRangeEqTop\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelFiltrationSymbolMonomialProduct\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelSectionBaseChangeProperties\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelVanishingFiltrationDeepestStepSpan\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSubPtsIffOfToBaseEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NefBigBaseChange\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NefBigSecondBaseChange\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotFilTotSymKer\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelSectionShiftCommSingleMonomial\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictedSectionChartCoords\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.HermTools GlobalTheory.Vanishing GlobalTheory.Adelic GlobalTheory.HilbertSamuel GlobalTheory.ChowHt GlobalTheory.TangentOrigin
open GlobalTheory.IndefiniteRowSideFullHecke.RadicalPowers
open GlobalTheory.HSCore GlobalTheory.QCoh
open GlobalTheory
open GlobalTheory.HSShort GlobalTheory.HSChoice MvPolynomial

namespace GlobalTheory.HSShort

theorem flatAt_of_simpleAt : Quoted → ∀ (F : Type) [Field F] [NumberField F] (X : Data F) (Λ₀ : ℝ), GeoHyp X Λ₀ →
    ∀ (δ : ℕ) (f : MvPolynomial (Fin (X.D + 1) × Fin X.N) F) (Q : MvPolynomial (Fin X.D × Fin X.N) F),
      (∀ (E : Type) [Field E] [NumberField E] [Algebra F E] (s : Fin X.D → Fin X.N → E),
        aeval (fun p : Fin X.D × Fin X.N => s p.1 p.2) Q ≠ 0 → SimpleAt X.toTuple δ f E s) →
      ∀ s : Fin X.D → Fin X.N → F, eval (fun p : Fin X.D × Fin X.N => s p.1 p.2) Q ≠ 0 → (sysOf X Λ₀).FlatAt δ f s := by
  intro hQ F _ _ X Λ₀ hX δ f Q hS s hs
  have hF : SimpleAt X.toTuple δ f F s := hS F s (by simpa [MvPolynomial.coe_aeval_eq_eval] using hs)
  obtain ⟨E, iE, nE, iFE, iEE, htow, hsp⟩ := GlobalTheory.HSCore.exists_split F X.toTuple F s hF.good
  have heq : (fun i k => @algebraMap F E _ _ iEE (s i k)) = fun i k => @algebraMap F E _ _ iFE (s i k) := by
    funext i k
    rw [@IsScalarTower.algebraMap_apply F F E _ _ _ _ iEE iFE htow (s i k)]
    rfl
  rw [heq] at hsp
  clear heq htow iEE
  have hval : aeval (fun p : Fin X.D × Fin X.N => algebraMap F E (s p.1 p.2)) Q =
      algebraMap F E (eval (fun p : Fin X.D × Fin X.N => s p.1 p.2) Q) := by
    exact (MvPolynomial.eval₂_comp_left (algebraMap F E) (RingHom.id F) _ Q).symm
  have hSE : SimpleAt X.toTuple δ f E (fun i k => algebraMap F E (s i k)) :=
    hS E _ (by rw [hval]; exact (map_ne_zero _).2 hs)
  have hgood : (X.baseChange E).IsGood (fun i k => algebraMap F E (s i k)) := Geo.isGood_baseChange_iff.2 hSE.good
  obtain ⟨Co, c, hc, hspec⟩ := _root_.GlobalTheory.HSShort.SplitCoord.exists_coord_spec_eq F X.toGeo E _ hgood δ f hsp hSE
  have hnef₂ := nef_big_second_baseChange F X E hX.nef₂ hX.big₂
  have hnefA := GlobalTheory.HSCore.nef_big_baseChange F X E hX.nef hX.big
  have hms : (X.baseChange E).MulStable :=
    (GlobalTheory.HilbertSamuel.Data.complexify_statement F X (fun _ => X.beta) hX.totallyComplex
      (fun _ => one_pos.trans_le X.one_le_beta) hX.mulStable hX.mulBound).2 E
  have hFM : FilMono := GlobalTheory.HSCore.filMono_of_kerRes (GlobalTheory.HSKerRes.kerRes hQ)
  obtain ⟨hind, hmul, hspan⟩ := _root_.GlobalTheory.HSShort.totExt_props F X Λ₀ E
  obtain ⟨hcomm, -, -⟩ := _root_.GlobalTheory.HSShort.shift_comm_single_mono E (X.toGeo.baseChange E)
  have honto := _root_.GlobalTheory.HSShort.map_totRes_range_incl_zero hQ E (X.baseChange E) _ hgood δ Co hnef₂.1 hnef₂.2
  have hker := totFil_totSym_ker E (X.baseChange E) _ hgood δ Co
  have hmono := _root_.GlobalTheory.HSShort.totSym_mono E (X.baseChange E) _ hgood δ Co hms
  have hdiv := _root_.GlobalTheory.HSShort.totFil_deepest hFM E (X.baseChange E) _ hgood hnefA.1 hnefA.2 hms
  let Φ : (sysOf X Λ₀).Flat E (Tot (X.toGeo.baseChange E)) (fun i k => algebraMap F E (s i k)) δ :=
    { ι := totExt X.toGeo E
      indep := hind
      mul := shift (X.toGeo.baseChange E)
      comm := hcomm
      mul_ι := hmul
      y := Co.y
      y_ne := Co.y_ne
      res := totRes (X := X.baseChange E) Co
      onto := by rw [hspan 0]; exact honto
      U := totFil (X.baseChange E) (fun i k => algebraMap F E (s i k))
      sym := totSym (X := X.baseChange E) Co
      le := fun a ha => (hker a ha).1
      ker := fun a ha => (hker a ha).2
      mono := fun a ha α l m hm => hmono a ha α l m (by rw [hspan 0] at hm; exact hm)
      div := by rw [hspan]; exact hdiv }
  exact ⟨E, Tot (X.toGeo.baseChange E), inferInstance, inferInstance, inferInstance, inferInstance, Φ, c, hc, hspec⟩

end GlobalTheory.HSShort
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HilbertSamuelFiltrationAtGoodSections =====
