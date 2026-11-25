module

public import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EvalMod
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HasPeriods
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationLtOneOfEq
public import GroundTheory.LocalFields.LocalArtinBaseChange
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PadicIsNonarchimedeanLocalField
public import Development.WeilBound.CoreStatements.CrystallinePeriodRings.InstCommRingBcris
public import GroundTheory.PAdicHodge.FieldOfNormsCyclBase
public import GroundTheory.PAdicHodge.UnramifiedClosure
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemFiniteExtPadicRingOfIntegersIffNormLeOne
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniformizerGaloisAction
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalBridgeLubinTateField
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateUnramifiedDegreeOne
public import GroundTheory.LocalFields.ExplicitQp
public import Mathlib.NumberTheory.Padics.LocalField
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerNearPowerExists
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.HeckeLAdicCharacterDeRham
public import Development.WeilBound.CoreStatements.CrystallinePeriodRings.LocTied6
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateSeriesCommuteLinear
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemFBOfNear
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UniformizerPropertiesResidue
public import Development.WeilBound.CoreStatements.CrystallinePeriodRings.FilQuot
public import Development.WeilBound.CoreStatements.CrystallinePeriodRings.MaximalIdealEqSpanT
public import Development.WeilBound.CoreStatements.HeckeCharacterDeRham.DeRhamHeckeResults.LAdicHeckeDeRham.LAdicHeckeFields.Reduce
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.FieldTheory.Galois.Profinite
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LocalPrimeGaloisActionPeriodT
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TripleAtt
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder
import Formalism.ConjugateSelfDual.Statement
import Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf
import ReciprocityTheory.GaloisValuations.GlobalA
import ReciprocityTheory.NeutralLocalFields.Reciprocity
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed
import Mathlib.Algebra.Order.Star.Int

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CharacterValuesIntegral, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateCommutingSeriesUnique, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateEndomorphismSeriesExists, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateIterateEventuallyZero, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateIterateLimitCongruence, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateLimitKernelZero, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateNormCyclotomic, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateScaledIterateTends, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateSeriesDeRhamPeriod, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateTorsionApproximation, Development.WeilBound.CoreStatements.HeckeCharacterDeRham.DeRhamHeckeResults.LAdicHeckeDeRham.LAdicHeckeFields.FieldOfLeaves

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CharacterValuesIntegral =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CharacterValuesIntegral", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.FieldTheory.Galois.Profinite\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LocalPrimeGaloisActionPeriodT\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TripleAtt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EvalMod\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HasPeriods\nimport Formalism.ConjugateSelfDual.Statement\nimport Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf\nimport ReciprocityTheory.GaloisValuations.GlobalA\nimport ReciprocityTheory.NeutralLocalFields.Reciprocity\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField IsDedekindDomain Neutral.B1 Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.L2.Host Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations
open GlobalTheory.HeckeGal GlobalTheory.Pst GlobalTheory.TripleGal GlobalTheory.CompanionTheory.LTHodge GlobalTheory.CompanionTheory.LTPer
open scoped Classical

namespace GlobalTheory.CompanionTheory.LTPer.IntVal

open Polynomial

variable {l : ℕ} [Fact l.Prime]

theorem isIntegral_of_norm_le_one (z : Om l) (h : ‖z‖ ≤ 1) : IsIntegral ℤ_[l] z := by
  have hz : IsIntegral ℚ_[l] z := Algebra.IsIntegral.isIntegral z
  rw [← PadicAlgCl.spectralNorm_eq] at h
  unfold spectralNorm at h
  rw [spectralValue_le_one_iff (minpoly.monic hz)] at h
  have hlift : minpoly ℚ_[l] z ∈ lifts (algebraMap ℤ_[l] ℚ_[l]) := by
    rw [lifts_iff_coeff_lifts]
    intro n
    exact ⟨⟨_, h n⟩, rfl⟩
  obtain ⟨q, hq, -, hqm⟩ := lifts_and_natDegree_eq_and_monic hlift (minpoly.monic hz)
  refine ⟨q, hqm, ?_⟩
  rw [IsScalarTower.algebraMap_eq ℤ_[l] ℚ_[l] (Om l), ← eval₂_map, hq, ← aeval_def]
  exact minpoly.aeval ℚ_[l] z

theorem mem_OL_of_norm_le_one (K : FinExt l) (x : ↥K.1) (h : ‖((x : ↥K.1) : Om l)‖ ≤ 1) :
    x ∈ OL K := by
  change x ∈ integralClosure ℤ_[l] ↥K.1
  rw [mem_integralClosure_iff]
  haveI : IsScalarTower ℤ_[l] ↥K.1 (Om l) := IsScalarTower.of_algebraMap_eq fun z => by
    rw [IsScalarTower.algebraMap_apply ℤ_[l] ℚ_[l] (Om l),
      IsScalarTower.algebraMap_apply ℤ_[l] ℚ_[l] ↥K.1]
    rfl
  have hinj : Function.Injective (IsScalarTower.toAlgHom ℤ_[l] ↥K.1 (Om l)) :=
    (algebraMap ↥K.1 (Om l)).injective
  exact (isIntegral_algHom_iff _ hinj).1 (isIntegral_of_norm_le_one _ h)

theorem compactSpace_GK (K : FinExt l) : CompactSpace ↥(GK K) := by
  have := K.2
  exact isCompact_iff_compactSpace.mp (IntermediateField.fixingSubgroup_isClosed K.1).isCompact

theorem norm_le_one (K : FinExt l) (χ : ↥(GK K) →* (↥K.1)ˣ)
    (hc : Continuous (fun g => (((χ g : (↥K.1)ˣ) : ↥K.1) : Om l))) (g : ↥(GK K)) :
    ‖(((χ g : (↥K.1)ˣ) : ↥K.1) : Om l)‖ ≤ 1 := by
  haveI := compactSpace_GK K
  obtain ⟨M, hM⟩ := (isCompact_range hc).isBounded.exists_norm_le
  have hpow : ∀ n : ℕ, ‖(((χ g : (↥K.1)ˣ) : ↥K.1) : Om l)‖ ^ n ≤ M := fun n => by
    have := hM _ ⟨g ^ n, rfl⟩
    simpa [map_pow, norm_pow] using this
  by_contra h
  obtain ⟨n, hn⟩ := pow_unbounded_of_one_lt M (not_le.1 h)
  exact absurd (hpow n) (not_le.2 hn)

theorem integral_values {l : ℕ} [Fact l.Prime] (K : FinExt l) (χ : ↥(GK K) →* (↥K.1)ˣ) :
    Continuous (fun g => (((χ g : (↥K.1)ˣ) : ↥K.1) : Om l)) →
    ∀ g, ∃ a : ↥(OL K), (a : ↥K.1) = ((χ g : (↥K.1)ˣ) : ↥K.1) := fun hc g =>
  ⟨⟨_, mem_OL_of_norm_le_one K _ (norm_le_one K χ hc g)⟩, rfl⟩

end GlobalTheory.CompanionTheory.LTPer.IntVal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CharacterValuesIntegral =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateCommutingSeriesUnique =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateCommutingSeriesUnique", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EvalMod\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LocalPrimeGaloisActionPeriodT\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TripleAtt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder\nimport Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf\nimport ReciprocityTheory.NeutralLocalFields.Reciprocity\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField IsDedekindDomain Neutral.B1 Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.L2.Host Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations
open GlobalTheory.HeckeGal GlobalTheory.Pst GlobalTheory.TripleGal GlobalTheory.CompanionTheory.LTHodge GlobalTheory.CompanionTheory.LTPer
open scoped Classical

namespace GlobalTheory.CompanionTheory.LTPer.QGal

theorem ltIter_succ {A : Type} [CommRing A] (w : A) (q n : ℕ) (x : A) :
    ltIter w q (n + 1) x = w * ltIter w q n x + ltIter w q n x ^ q := by
  simp only [ltIter, Function.iterate_succ_apply']

theorem map_ltIter {A A' : Type} [CommRing A] [CommRing A'] (g : A →+* A') (a : A) (q n : ℕ) (x : A) :
    g (ltIter a q n x) = ltIter (g a) q n (g x) := by
  induction n with
  | zero => simp [ltIter]
  | succ n ih => rw [ltIter_succ, ltIter_succ, map_add (f := _), map_mul, map_pow, ih]

theorem ltIter_congr {A : Type} [CommRing A] (w s : A) (q : ℕ) (hq : (q : A) = w * s) (a b c : A)
    (h : a - b = w * c) (n : ℕ) : ∃ d, ltIter w q n a - ltIter w q n b = w ^ (n + 1) * d := by
  induction n with
  | zero => exact ⟨c, by simpa [ltIter] using h⟩
  | succ n ih =>
    obtain ⟨d, hd⟩ := ih
    rw [ltIter_succ, ltIter_succ]
    generalize ltIter w q n a = x at hd ⊢
    generalize ltIter w q n b = y at hd ⊢
    have hx : x = y + w ^ (n + 1) * d := by linear_combination hd
    obtain ⟨k, hk⟩ := Polynomial.powAddExpansion y (w ^ (n + 1) * d) q
    refine ⟨d + s * y ^ (q - 1) * d + k * w ^ n * d ^ 2, ?_⟩
    rw [hx, hk, hq]
    ring

theorem nil_ltIter {A : Type} [CommRing A] (w : A) {q : ℕ} (hq : q ≠ 0) {y : A} (hy : IsNilpotent y) (n : ℕ) :
    IsNilpotent (ltIter w q n y) := by
  induction n with
  | zero => simpa [ltIter] using hy
  | succ n ih =>
    rw [ltIter_succ]
    rw [← mem_nilradical] at ih ⊢
    exact add_mem (Ideal.mul_mem_left _ _ ih) (Ideal.pow_mem_of_mem _ ih q (Nat.pos_of_ne_zero hq))

section Nil

variable {R C : Type} [CommRing R] [CommRing C] [Algebra R C]

def nev (y : C) (φ : PowerSeries R) : C :=
  PowerSeries.constantCoeff (PowerSeries.subst (PowerSeries.C y : PowerSeries C) φ : PowerSeries C)

theorem hasSubst_C {y : C} (hy : IsNilpotent y) : PowerSeries.HasSubst (PowerSeries.C y : PowerSeries C) := by
  have h : MvPowerSeries.constantCoeff (PowerSeries.C y : PowerSeries C) = y := PowerSeries.constantCoeff_C y
  simpa [PowerSeries.HasSubst, h] using hy

theorem subst_lt {a : PowerSeries C} (ha : PowerSeries.HasSubst a) (π : R) (q : ℕ) :
    (PowerSeries.subst a (PowerSeries.C π * PowerSeries.X + PowerSeries.X ^ q : PowerSeries R) : PowerSeries C)
      = PowerSeries.C (algebraMap R C π) * a + a ^ q := by
  rw [PowerSeries.subst_add ha, PowerSeries.subst_pow ha, PowerSeries.subst_X ha,
    ← PowerSeries.smul_eq_C_mul, PowerSeries.subst_smul ha, PowerSeries.subst_X ha,
    ← PowerSeries.smul_eq_C_mul, algebraMap_smul]

theorem nev_eq_sum {y : C} {N D : ℕ} (hy : y ^ N = 0) (hD : N ≤ D) (φ : PowerSeries R) :
    nev y φ = ∑ i ∈ Finset.range D, algebraMap R C (PowerSeries.coeff i φ) * y ^ i := by
  have hs := hasSubst_C (C := C) (y := y) ⟨N, hy⟩
  have h1 := PowerSeries.constantCoeff_subst (R := R) hs φ
  have h2 : ∀ d, MvPowerSeries.constantCoeff ((PowerSeries.C y : PowerSeries C) ^ d) = y ^ d := by
    intro d
    rw [map_pow]
    congr 1
  simp only [h2] at h1
  have h3 : nev y φ = ∑ᶠ d : ℕ, (PowerSeries.coeff d φ) • y ^ d := h1
  rw [h3, finsum_eq_sum_of_support_subset (s := Finset.range D)]
  · exact Finset.sum_congr rfl fun i _ => Algebra.smul_def _ _
  · intro d hd
    simp only [Function.mem_support] at hd
    simp only [Finset.coe_range, Set.mem_Iio]
    by_contra hlt
    exact hd (by rw [pow_eq_zero_of_le (by omega) hy, smul_zero])

theorem nev_step {y : C} (hy : IsNilpotent y) (π : R) (q : ℕ) (hq : q ≠ 0) {φ : PowerSeries R}
    (h0 : PowerSeries.constantCoeff φ = 0)
    (hc : PowerSeries.subst φ (PowerSeries.C π * PowerSeries.X + PowerSeries.X ^ q : PowerSeries R)
      = PowerSeries.subst (PowerSeries.C π * PowerSeries.X + PowerSeries.X ^ q : PowerSeries R) φ) :
    nev (algebraMap R C π * y + y ^ q) φ = algebraMap R C π * nev y φ + nev y φ ^ q := by
  have hs := hasSubst_C (C := C) hy
  have hφ : PowerSeries.HasSubst φ := PowerSeries.HasSubst.of_constantCoeff_zero' h0
  have hf : PowerSeries.HasSubst (PowerSeries.C π * PowerSeries.X + PowerSeries.X ^ q : PowerSeries R) := by
    apply PowerSeries.HasSubst.of_constantCoeff_zero'
    simp [hq]
  have e1 := PowerSeries.subst_comp_subst_apply (R := R) (S := R) (T := C) hφ hs
    (PowerSeries.C π * PowerSeries.X + PowerSeries.X ^ q : PowerSeries R)
  have e2 := PowerSeries.subst_comp_subst_apply (R := R) (S := R) (T := C) hf hs φ
  rw [hc, e2] at e1
  have hΦ : PowerSeries.HasSubst (PowerSeries.subst (PowerSeries.C y : PowerSeries C) φ : PowerSeries C) := by
    have := PowerSeries.HasSubst.comp hφ hs
    rwa [PowerSeries.coe_substAlgHom] at this
  rw [subst_lt hs, subst_lt hΦ] at e1
  have e3 : (PowerSeries.C (algebraMap R C π) * PowerSeries.C y + PowerSeries.C y ^ q : PowerSeries C)
      = PowerSeries.C (algebraMap R C π * y + y ^ q) := by
    simp only [map_add (f := _), map_mul, map_pow]
  rw [e3] at e1
  have e4 := congrArg (PowerSeries.constantCoeff (R := C)) e1
  simpa [nev] using e4

theorem nev_iter {y : C} (hy : IsNilpotent y) (π : R) (q : ℕ) (hq : q ≠ 0) {φ : PowerSeries R}
    (h0 : PowerSeries.constantCoeff φ = 0)
    (hc : PowerSeries.subst φ (PowerSeries.C π * PowerSeries.X + PowerSeries.X ^ q : PowerSeries R)
      = PowerSeries.subst (PowerSeries.C π * PowerSeries.X + PowerSeries.X ^ q : PowerSeries R) φ) (n : ℕ) :
    nev (ltIter (algebraMap R C π) q n y) φ = ltIter (algebraMap R C π) q n (nev y φ) := by
  induction n with
  | zero => simp [ltIter]
  | succ n ih =>
    rw [ltIter_succ, ltIter_succ, nev_step (nil_ltIter _ hq hy n) π q hq h0 hc, ih]

theorem nev_core {y u c s : C} (hy : IsNilpotent y) (π : R) (q : ℕ) (hq : q ≠ 0)
    (hqs : (q : C) = algebraMap R C π * s) {φ : PowerSeries R}
    (h0 : PowerSeries.constantCoeff φ = 0)
    (hc : PowerSeries.subst φ (PowerSeries.C π * PowerSeries.X + PowerSeries.X ^ q : PowerSeries R)
      = PowerSeries.subst (PowerSeries.C π * PowerSeries.X + PowerSeries.X ^ q : PowerSeries R) φ) (n : ℕ)
    (h1 : nev y φ - u = algebraMap R C π * c) (hw : algebraMap R C π ^ (n + 1) = 0) :
    nev (ltIter (algebraMap R C π) q n y) φ = ltIter (algebraMap R C π) q n u := by
  obtain ⟨d, hd⟩ := ltIter_congr _ s q hqs _ _ c h1 n
  rw [nev_iter hy π q hq h0 hc]
  rw [hw, zero_mul] at hd
  exact sub_eq_zero.1 hd

end Nil

section Main

variable {B : Type} [CommRing B] {S : Subring B} {F : ℕ → Ideal B} {ϖ : B}

theorem pow_mem_F (env : PerEnv S F ϖ) {x : B} (hx : x ∈ F 1) (k : ℕ) : x ^ k ∈ F k := by
  induction k with
  | zero => simp [env.top]
  | succ k ih => rw [pow_succ]; exact env.mul_le k 1 (Ideal.mul_mem_mul ih hx)

theorem exists_near_ideal (hϖ : ϖ ∈ S) (J : Ideal B) (m : ℕ) :
    ∃ I : Ideal S, ∀ x : S, x ∈ I ↔ Near S ϖ J m (x : B) := by
  refine ⟨Ideal.span {(⟨ϖ, hϖ⟩ : S) ^ m} ⊔ J.comap S.subtype, fun x => ⟨fun hx => ?_, ?_⟩⟩
  · obtain ⟨a, ha, b, hb, rfl⟩ := Submodule.mem_sup.1 hx
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 ha
    refine ⟨c, c.2, ?_⟩
    have hb' : (b : B) ∈ J := hb
    have e : (((c * (⟨ϖ, hϖ⟩ : S) ^ m + b : S)) : B) - ϖ ^ m * c = b := by
      push_cast; ring
    rwa [e]
  · rintro ⟨s, hs, hx⟩
    have e : x = (⟨s, hs⟩ : S) * (⟨ϖ, hϖ⟩ : S) ^ m + (x - (⟨ϖ, hϖ⟩ : S) ^ m * ⟨s, hs⟩) := by ring
    rw [e]
    refine Ideal.add_mem _ (Ideal.mem_sup_left (Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _))) ?_
    refine Ideal.mem_sup_right ?_
    show (((x - (⟨ϖ, hϖ⟩ : S) ^ m * ⟨s, hs⟩ : S)) : B) ∈ J
    push_cast
    exact hx

theorem finiteRing_sq_sub_mul_sq_eq_of_card {R C : Type} [CommRing R] [CommRing C] [Algebra R C] (env : PerEnv S F ϖ) (k m : ℕ) (mk : S →+* C)
    (hnear : ∀ x : S, mk x = 0 ↔ Near S ϖ (F k) m (x : B)) (h : R →+* B) (h' : R →+* S)
    (hh : ∀ c, (h' c : B) = h c) (hmk : ∀ c, mk (h' c) = algebraMap R C c)
    (π : R) (hπ : h π = ϖ) (q : ℕ) (hq2 : 2 ≤ q) (s : B) (hsS : s ∈ S) (hs : (q : B) = ϖ * s)
    (φ : PowerSeries R) (h0 : PowerSeries.constantCoeff φ = 0)
    (hc : PowerSeries.subst φ (PowerSeries.C π * PowerSeries.X + PowerSeries.X ^ q : PowerSeries R)
      = PowerSeries.subst (PowerSeries.C π * PowerSeries.X + PowerSeries.X ^ q : PowerSeries R) φ)
    (σ : B →+* B) (hσS : ∀ s ∈ S, σ s ∈ S) (hσϖ : σ ϖ = ϖ)
    (v : ℕ → B) (hvS : ∀ n, v n ∈ S) (hv : ∀ n, v (n + 1) ^ q = v n)
    (M : ℕ) (s0 : B) (hs0 : s0 ∈ S) (hf0 : v 0 ^ M - ϖ ^ 1 * s0 ∈ F 1)
    (Q : B) (hQS : Q ∈ S) (hQ : ∀ n, ∃ a ∈ S, Q - ltIter ϖ q n (v n) = ϖ ^ (n + 1) * a)
    (hE : ∀ n, EvalMod S F ϖ h φ (v n) (σ (v n)) 1) :
    ∃ D, ∀ D' ≥ D, Near S ϖ (F k) m
      ((∑ i ∈ Finset.range D', h (PowerSeries.coeff i φ) * Q ^ i) - σ Q) := by
  have hq0 : q ≠ 0 := by omega
  obtain ⟨ϖ', hϖ'⟩ : ∃ x : S, (x : B) = ϖ := ⟨⟨ϖ, env.mem⟩, rfl⟩
  obtain ⟨v', hv'⟩ : ∃ x : ℕ → S, ∀ n, (x n : B) = v n := ⟨fun n => ⟨v n, hvS n⟩, fun _ => rfl⟩
  obtain ⟨s', hs'⟩ : ∃ x : S, (x : B) = s := ⟨⟨s, hsS⟩, rfl⟩
  obtain ⟨s0', hs0'⟩ : ∃ x : S, (x : B) = s0 := ⟨⟨s0, hs0⟩, rfl⟩
  obtain ⟨Q', hQ'⟩ : ∃ x : S, (x : B) = Q := ⟨⟨Q, hQS⟩, rfl⟩
  obtain ⟨R', hR'⟩ : ∃ x : S, (x : B) = σ Q := ⟨⟨σ Q, hσS _ hQS⟩, rfl⟩
  obtain ⟨u', hu'⟩ : ∃ x : S, (x : B) = σ (v m) := ⟨⟨σ (v m), hσS _ (hvS m)⟩, rfl⟩
  have hπ' : h' π = ϖ' := Subtype.ext ((hh π).trans (hπ.trans hϖ'.symm))
  have hw : algebraMap R C π = mk ϖ' := by rw [← hmk, hπ']
  have hmF : ∀ x : S, (x : B) ∈ F k → mk x = 0 := fun x hx =>
    (hnear x).2 ⟨0, S.zero_mem, by simpa using hx⟩
  have hwm : mk ϖ' ^ m = 0 := by
    rw [← map_pow]
    refine (hnear _).2 ⟨1, S.one_mem, ?_⟩
    simp [hϖ']
  have hwm1 : mk ϖ' ^ (m + 1) = 0 := by rw [pow_succ, hwm, zero_mul]
  have hn0 : IsNilpotent (mk (v' 0)) := by
    have hf : ((v' 0 ^ M - ϖ' ^ 1 * s0' : S) : B) ∈ F 1 := by
      push_cast
      rw [hv', hϖ', hs0']
      exact hf0
    have hfk : mk (v' 0 ^ M - ϖ' ^ 1 * s0') ^ k = 0 := by
      rw [← map_pow]
      refine hmF _ ?_
      rw [SubmonoidClass.coe_pow]
      exact pow_mem_F env hf k
    have e : mk (v' 0) ^ M = mk (v' 0 ^ M - ϖ' ^ 1 * s0') + mk ϖ' * mk s0' := by
      simp only [map_sub, map_mul, map_pow, pow_one]
      ring
    have hnil : IsNilpotent (mk (v' 0) ^ M) := by
      rw [e, ← mem_nilradical]
      exact add_mem (mem_nilradical.2 ⟨k, hfk⟩) (Ideal.mul_mem_right _ _ (mem_nilradical.2 ⟨m, hwm⟩))
    obtain ⟨e', he⟩ := hnil
    exact ⟨M * e', by rw [pow_mul, he]⟩
  have hn : ∀ n, IsNilpotent (mk (v' n)) := by
    intro n
    induction n with
    | zero => exact hn0
    | succ n ih =>
      obtain ⟨e', he⟩ := ih
      have e : mk (v' (n + 1)) ^ q = mk (v' n) := by
        rw [← map_pow]
        congr 1
        apply Subtype.ext
        rw [SubmonoidClass.coe_pow, hv', hv', hv n]
      exact ⟨q * e', by rw [pow_mul, e, he]⟩
  have hsum : ∀ (y : S) (D : ℕ), ((∑ i ∈ Finset.range D, h' (PowerSeries.coeff i φ) * y ^ i : S) : B)
      = ∑ i ∈ Finset.range D, h (PowerSeries.coeff i φ) * (y : B) ^ i := by
    intro y D
    simp [hh]
  have hmsum : ∀ (y : S) {N D : ℕ}, mk y ^ N = 0 → N ≤ D →
      mk (∑ i ∈ Finset.range D, h' (PowerSeries.coeff i φ) * y ^ i) = nev (mk y) φ := by
    intro y N D hN hD
    rw [nev_eq_sum hN hD]

    simp [map_sum, hmk]
  obtain ⟨N, hN⟩ := hn m
  obtain ⟨D0, hD0⟩ := hE m k
  obtain ⟨c, hcS, hcF⟩ := hD0 (max D0 N) (le_max_left _ _)
  obtain ⟨c', hc'⟩ : ∃ x : S, (x : B) = c := ⟨⟨c, hcS⟩, rfl⟩
  have h1 : nev (mk (v' m)) φ - mk u' = algebraMap R C π * mk c' := by
    rw [← hmsum (v' m) hN (le_max_right D0 N), hw]
    have e := hmF ((∑ i ∈ Finset.range (max D0 N), h' (PowerSeries.coeff i φ) * v' m ^ i) - u' - ϖ' ^ 1 * c') (by
      rw [AddSubgroupClass.coe_sub, AddSubgroupClass.coe_sub, hsum, hv', hu']
      push_cast
      rw [hϖ', hc']
      exact hcF)
    rw [map_sub, map_sub, map_mul, map_pow, pow_one] at e
    linear_combination e
  have hqs : (q : C) = algebraMap R C π * mk s' := by
    rw [hw, ← map_mul, ← map_natCast mk q]
    congr 1
    apply Subtype.ext
    push_cast
    rw [hϖ', hs', hs]
  have key := nev_core (hn m) π q hq0 hqs h0 hc m h1 (by rw [hw]; exact hwm1)
  obtain ⟨a, haS, hQa⟩ := hQ m
  obtain ⟨a', ha'⟩ : ∃ x : S, (x : B) = a := ⟨⟨a, haS⟩, rfl⟩
  obtain ⟨b', hb'⟩ : ∃ x : S, (x : B) = σ a := ⟨⟨σ a, hσS _ haS⟩, rfl⟩
  have hcoe : ∀ x : S, ((ltIter ϖ' q m x : S) : B) = ltIter ϖ q m (x : B) := fun x => by
    have := map_ltIter S.subtype ϖ' q m x
    simpa [hϖ'] using this
  have e1 : mk Q' = ltIter (algebraMap R C π) q m (mk (v' m)) := by
    have e : Q' = ltIter ϖ' q m (v' m) + ϖ' ^ (m + 1) * a' := by
      apply Subtype.ext
      rw [AddMemClass.coe_add, hcoe]
      push_cast
      rw [hQ', hv', hϖ', ha']
      linear_combination hQa
    rw [e, map_add (f := _), map_mul, map_pow, hwm1, zero_mul, add_zero, map_ltIter, hw]
  have e2 : mk R' = ltIter (algebraMap R C π) q m (mk u') := by
    have e : R' = ltIter ϖ' q m u' + ϖ' ^ (m + 1) * b' := by
      apply Subtype.ext
      rw [AddMemClass.coe_add, hcoe]
      push_cast
      rw [hR', hu', hϖ', hb']
      have e3 : σ (ltIter ϖ q m (v m)) = ltIter ϖ q m (σ (v m)) := by rw [map_ltIter, hσϖ]
      have e4 := congrArg σ hQa
      rw [map_sub, map_mul, map_pow, hσϖ, e3] at e4
      linear_combination e4
    rw [e, map_add (f := _), map_mul, map_pow, hwm1, zero_mul, add_zero, map_ltIter, hw]
  have hfin : nev (mk Q') φ = mk R' := by rw [e1, e2]; exact key
  have hnQ : IsNilpotent (mk Q') := by rw [e1]; exact nil_ltIter _ hq0 (hn m) m
  obtain ⟨N2, hN2⟩ := hnQ
  refine ⟨N2, fun D' hD' => ?_⟩
  have hfinal := (hnear ((∑ i ∈ Finset.range D', h' (PowerSeries.coeff i φ) * Q' ^ i) - R')).1
    (by rw [map_sub, hmsum Q' hN2 hD', hfin, sub_self])
  rwa [AddSubgroupClass.coe_sub, hsum, hQ', hR'] at hfinal

end Main

end GlobalTheory.CompanionTheory.LTPer.QGal

theorem GlobalTheory.CompanionTheory.LTPer.evalMod_sigma_of_congr : ∀ {B : Type} [CommRing B] {S : Subring B} {F : ℕ → Ideal B} {ϖ : B} {R : Type} [CommRing R], PerEnv S F ϖ →
    ∀ (h : R →+* B), (∀ c, h c ∈ S) → ∀ (π : R), h π = ϖ → ∀ (q : ℕ), 2 ≤ q → (∃ s ∈ S, (q : B) = ϖ * s) →
    ∀ (φ : PowerSeries R), PowerSeries.constantCoeff φ = 0 →
      PowerSeries.subst φ (PowerSeries.C π * PowerSeries.X + PowerSeries.X ^ q : PowerSeries R) = PowerSeries.subst (PowerSeries.C π * PowerSeries.X + PowerSeries.X ^ q : PowerSeries R) φ →
    ∀ (σ : B →+* B), (∀ s ∈ S, σ s ∈ S) → (∀ k, ∀ x ∈ F k, σ x ∈ F k) → σ ϖ = ϖ →
    ∀ (v : ℕ → B), (∀ n, v n ∈ S) → (∀ n, v (n + 1) ^ q = v n) →
      (∃ M : ℕ, 0 < M ∧ Near S ϖ (F 1) 1 (v 0 ^ M)) →
    ∀ Q ∈ S, (∀ n, ∃ a ∈ S, Q - ltIter ϖ q n (v n) = ϖ ^ (n + 1) * a) →
      (∀ n, EvalMod S F ϖ h φ (v n) (σ (v n)) 1) → ∀ m, EvalMod S F ϖ h φ Q (σ Q) m := by
  intro B _ S F ϖ R _ env h hS π hπ q hq2 hqs φ h0 hc σ hσS _ hσϖ v hvS hv hM Q hQS hQ hE m k
  obtain ⟨s, hsS, hs⟩ := hqs
  obtain ⟨M, _, s0, hs0, hf0⟩ := hM
  obtain ⟨I, hI⟩ := GlobalTheory.CompanionTheory.LTPer.QGal.exists_near_ideal (S := S) env.mem (F k) m
  obtain ⟨h', hh⟩ : ∃ h' : R →+* S, ∀ c, (h' c : B) = h c := ⟨h.codRestrict S hS, fun _ => rfl⟩
  letI : Algebra R (S ⧸ I) := ((Ideal.Quotient.mk I).comp h').toAlgebra
  exact GlobalTheory.CompanionTheory.LTPer.QGal.finiteRing_sq_sub_mul_sq_eq_of_card env k m (Ideal.Quotient.mk I)
    (fun x => Ideal.Quotient.eq_zero_iff_mem.trans (hI x)) h h' hh (fun _ => rfl) π hπ q hq2 s hsS hs φ h0 hc
    σ hσS hσϖ v hvS hv M s0 hs0 hf0 Q hQS hQ hE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateCommutingSeriesUnique =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateEndomorphismSeriesExists =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateEndomorphismSeriesExists", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HasPeriods\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationLtOneOfEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LocalPrimeGaloisActionPeriodT\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TripleAtt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EvalMod\nimport Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf\nimport ReciprocityTheory.NeutralLocalFields.Reciprocity\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField IsDedekindDomain Neutral.B1 Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.L2.Host Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations
open GlobalTheory.HeckeGal GlobalTheory.Pst GlobalTheory.TripleGal GlobalTheory.CompanionTheory.LTHodge GlobalTheory.CompanionTheory.LTPer
open scoped Classical
open scoped GroundTheory.PAdicHodge.LocalBridge
set_option maxSynthPendingDepth 1

namespace GlobalTheory.CompanionTheory.LTPer

theorem map_subst_comm {A B : Type} [CommRing A] [CommRing B] (h : A →+* B) {F G : PowerSeries A}
    {F' : PowerSeries B} (hF' : PowerSeries.map h F = F')
    (hF : PowerSeries.constantCoeff F = 0) (hG : PowerSeries.constantCoeff G = 0)
    (hs : PowerSeries.subst G F = PowerSeries.subst F G) :
    PowerSeries.subst (PowerSeries.map h G) F' = PowerSeries.subst F' (PowerSeries.map h G) := by
  subst hF'
  have h2 := congrArg (MvPowerSeries.map h) hs
  rw [PowerSeries.map_subst (PowerSeries.HasSubst.of_constantCoeff_zero hG),
    PowerSeries.map_subst (PowerSeries.HasSubst.of_constantCoeff_zero hF)] at h2
  exact h2


open GlobalTheory.CompanionTheory.LTHodge.CharEx GroundTheory.LocalField GroundTheory.LocalField.FormalGroup ValuativeRel in
theorem exists_series_comm : ∀ {l : ℕ} [Fact l.Prime] (K : FinExt l) (π : ↥(OL K)), Irreducible π → ∀ a : ↥(OL K),
    ∃ φ : PowerSeries ↥(OL K), PowerSeries.constantCoeff φ = 0 ∧ PowerSeries.coeff 1 φ = a ∧
      PowerSeries.subst φ (ltSeries π) = PowerSeries.subst (ltSeries π) φ := by
  intro l _ K π hπ a
  have : FiniteDimensional ℚ_[l] ↥K.1 := K.2
  let e : ↥(OL K) ≃+* 𝒪[↥K.1] := intEquiv K
  let es : 𝒪[↥K.1] →+* ↥(OL K) := (e.symm : 𝒪[↥K.1] →+* ↥(OL K))
  have hp : Irreducible (e π) := (MulEquiv.irreducible_iff e).mpr hπ
  have hf := isLubinTateSeries_ltPoly (e π)
  have hm := map_ltSeries K hp
  have hes : (intEquiv K).symm (e π) = π := e.symm_apply_apply π
  rw [hes] at hm
  have hF : PowerSeries.map es (ltPoly (e π) : PowerSeries 𝒪[↥K.1]) = ltSeries π := by
    rw [← hm]
    refine PowerSeries.ext fun n => ?_
    rw [PowerSeries.coeff_map, PowerSeries.coeff_map]
    exact e.symm_apply_apply _
  have hF0 : PowerSeries.constantCoeff (ltPoly (e π) : PowerSeries 𝒪[↥K.1]) = 0 :=
    hf.constantCoeff_eq_zero
  let h := lubinTateHom hp hf hf (e a)
  have h0 : PowerSeries.constantCoeff h.toPowerSeries = 0 := h.constantCoeff_eq_zero
  have h1 : PowerSeries.coeff 1 h.toPowerSeries = e a := coeff_one_lubinTateHom hp hf hf (e a)
  have hs := subst_lubinTateHom hp hf hf (e a)
  refine ⟨PowerSeries.map es h.toPowerSeries, ?_, ?_, ?_⟩
  · rw [← PowerSeries.coeff_zero_eq_constantCoeff_apply, PowerSeries.coeff_map,
      PowerSeries.coeff_zero_eq_constantCoeff_apply, h0, map_zero]
  · rw [PowerSeries.coeff_map, h1]
    exact e.symm_apply_apply a
  · exact map_subst_comm es hF hF0 h0 hs

end GlobalTheory.CompanionTheory.LTPer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateEndomorphismSeriesExists =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateIterateEventuallyZero =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateIterateEventuallyZero", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EvalMod\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LocalPrimeGaloisActionPeriodT\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TripleAtt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder\nimport Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf\nimport ReciprocityTheory.NeutralLocalFields.Reciprocity\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField IsDedekindDomain Neutral.B1 Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.L2.Host Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations
open GlobalTheory.HeckeGal GlobalTheory.Pst GlobalTheory.TripleGal GlobalTheory.CompanionTheory.LTHodge GlobalTheory.CompanionTheory.LTPer
open scoped Classical

namespace GlobalTheory.CompanionTheory.LTPer.Nonv

theorem ltIter_succ_eq {B : Type} [CommRing B] (ϖ : B) (q n : ℕ) (x : B) :
    ltIter ϖ q (n + 1) x = ϖ * ltIter ϖ q n x + ltIter ϖ q n x ^ q := by
  simp only [ltIter, Function.iterate_succ_apply']

theorem norm_step_eq {C : Type} [NormedField C] [IsUltrametricDist C] (a c : C) (q : ℕ) (hq : 2 ≤ q)
    (h : ‖c‖ ^ (q - 1) < ‖a‖) : ‖a * c + c ^ q‖ = ‖a‖ * ‖c‖ := by
  by_cases hc : c = 0
  · subst hc
    have : q ≠ 0 := by omega
    simp [this]
  · have hcpos : 0 < ‖c‖ := norm_pos_iff.mpr hc
    have hlt : ‖c ^ q‖ < ‖a * c‖ := by
      obtain ⟨r, rfl⟩ : ∃ r, q = r + 1 := ⟨q - 1, by omega⟩
      rw [norm_pow, norm_mul, pow_succ]
      simp only [Nat.add_sub_cancel] at h
      exact mul_lt_mul_of_pos_right h hcpos
    rw [IsUltrametricDist.norm_add_eq_max_of_norm_ne_norm (ne_of_gt hlt), max_eq_left hlt.le, norm_mul]

theorem norm_step_le {C : Type} [NormedField C] [IsUltrametricDist C] (a c : C) (q : ℕ) (hq : 2 ≤ q) :
    ‖a * c + c ^ q‖ ≤ max ‖a‖ (‖c‖ ^ (q - 1)) * ‖c‖ := by
  refine (IsUltrametricDist.norm_add_le_max _ _).trans ?_
  obtain ⟨r, rfl⟩ : ∃ r, q = r + 1 := ⟨q - 1, by omega⟩
  simp only [Nat.add_sub_cancel]
  rw [norm_mul, norm_pow, pow_succ, max_mul_of_nonneg _ _ (norm_nonneg c)]

theorem exists_norm_geometric {C : Type} [NormedField C] [IsUltrametricDist C] (a : C) (q : ℕ) (hq : 2 ≤ q)
    (ha0 : a ≠ 0) (ha : ‖a‖ < 1) (c : ℕ → C) (hc : ∀ n, c (n + 1) = a * c n + c n ^ q)
    (h0 : ‖c 0‖ < 1) : ∃ n, ∀ j, ‖c (n + j)‖ = ‖a‖ ^ j * ‖c n‖ := by
  have hapos : 0 < ‖a‖ := norm_pos_iff.mpr ha0
  set ρ := max ‖a‖ (‖c 0‖ ^ (q - 1)) with hρ
  have hρ1 : ρ < 1 := max_lt ha (pow_lt_one₀ (norm_nonneg _) h0 (by omega))
  have hρ0 : 0 ≤ ρ := hapos.le.trans (le_max_left _ _)
  have hdec : ∀ n, ‖c n‖ ≤ ρ ^ n * ‖c 0‖ := by
    intro n
    induction n with
    | zero => simp
    | succ n ih =>
      have hle : ‖c n‖ ≤ ‖c 0‖ :=
        ih.trans (mul_le_of_le_one_left (norm_nonneg _) (pow_le_one₀ hρ0 hρ1.le))
      have hm : max ‖a‖ (‖c n‖ ^ (q - 1)) ≤ ρ :=
        max_le_max le_rfl (pow_le_pow_left₀ (norm_nonneg _) hle _)
      rw [hc n]
      calc ‖a * c n + c n ^ q‖ ≤ max ‖a‖ (‖c n‖ ^ (q - 1)) * ‖c n‖ := norm_step_le a _ q hq
        _ ≤ ρ * (ρ ^ n * ‖c 0‖) := mul_le_mul hm ih (norm_nonneg _) hρ0
        _ = ρ ^ (n + 1) * ‖c 0‖ := by ring
  obtain ⟨n, hn⟩ := exists_pow_lt_of_lt_one hapos hρ1
  have hcn : ‖c n‖ < ‖a‖ :=
    ((hdec n).trans (mul_le_of_le_one_right (pow_nonneg hρ0 n) h0.le)).trans_lt hn
  have hsmall : ∀ x : C, ‖x‖ ≤ ‖c n‖ → ‖x‖ ^ (q - 1) < ‖a‖ := by
    intro x hx
    have hx1 : ‖x‖ ≤ 1 := hx.trans (hcn.trans ha).le
    exact ((pow_le_of_le_one (norm_nonneg _) hx1 (by omega)).trans hx).trans_lt hcn
  refine ⟨n, fun j => ?_⟩
  induction j with
  | zero => simp
  | succ j ih =>
    have hle : ‖c (n + j)‖ ≤ ‖c n‖ := by
      rw [ih]
      exact mul_le_of_le_one_left (norm_nonneg _) (pow_le_one₀ hapos.le ha.le)
    rw [← add_assoc, hc (n + j), norm_step_eq a _ q hq (hsmall _ hle), ih]
    ring

variable {B : Type} [CommRing B] {S : Subring B} {F : ℕ → Ideal B} {ϖ : B}

theorem ltIter_mem (hE : PerEnv S F ϖ) (q : ℕ) {Q : B} (hQ : Q ∈ S) (n : ℕ) : ltIter ϖ q n Q ∈ S := by
  induction n with
  | zero => simpa [ltIter] using hQ
  | succ n ih =>
    rw [ltIter_succ_eq]
    exact S.add_mem (S.mul_mem hE.mem ih) (S.pow_mem ih q)

theorem ltIter_mem_succ (hE : PerEnv S F ϖ) (ϖ' : B) (hϖ : ϖ * ϖ' = 1) (q : ℕ) (hq : 2 ≤ q) {Q : B} (hQ : Q ∈ S)
    (hT : Tends S F ϖ (fun n => ϖ' ^ n * ltIter ϖ q n Q) 0) (n m : ℕ) (hm : 1 ≤ m)
    (hy : ltIter ϖ q n Q ∈ F m) : ltIter ϖ q n Q ∈ F (m + 1) := by
  have hanti : Antitone F := antitone_nat_of_succ_le hE.anti
  have hD : ∀ j, ltIter ϖ q (n + j) Q - ϖ ^ j * ltIter ϖ q n Q ∈ F (m + 1) := by
    intro j
    induction j with
    | zero => simp
    | succ j ih =>
      have hym : ltIter ϖ q (n + j) Q ∈ F m := by
        have h1 := (F m).add_mem (hE.anti m ih) ((F m).mul_mem_left (ϖ ^ j) hy)
        simpa using h1
      have hsq : ltIter ϖ q (n + j) Q * ltIter ϖ q (n + j) Q ∈ F (m + 1) :=
        hanti (by omega : m + 1 ≤ m + m) (hE.mul_le m m (Ideal.mul_mem_mul hym hym))
      obtain ⟨r, rfl⟩ : ∃ r, q = r + 2 := ⟨q - 2, by omega⟩
      have he : ltIter ϖ (r + 2) (n + (j + 1)) Q - ϖ ^ (j + 1) * ltIter ϖ (r + 2) n Q =
          ϖ * (ltIter ϖ (r + 2) (n + j) Q - ϖ ^ j * ltIter ϖ (r + 2) n Q) +
            ltIter ϖ (r + 2) (n + j) Q ^ r * (ltIter ϖ (r + 2) (n + j) Q * ltIter ϖ (r + 2) (n + j) Q) := by
        rw [← add_assoc, ltIter_succ_eq]
        ring
      rw [he]
      exact (F (m + 1)).add_mem ((F (m + 1)).mul_mem_left _ ih) ((F (m + 1)).mul_mem_left _ hsq)
  obtain ⟨c, hc⟩ := hT (m + 1)
  refine hE.closed (m + 1) _ (ltIter_mem hE q hQ n) fun M => ?_
  obtain ⟨N, hN⟩ := hc (M + c)
  obtain ⟨s, hs, hd⟩ := hN (n + N) (by omega)
  refine ⟨ϖ ^ n * s, S.mul_mem (S.pow_mem hE.mem n) hs, ?_⟩
  have h1 : ϖ ^ c * ϖ' ^ c = 1 := by rw [← mul_pow, hϖ, one_pow]
  have h2 : ϖ ^ n * ϖ' ^ n = 1 := by rw [← mul_pow, hϖ, one_pow]
  have h3 : ϖ ^ N * ϖ' ^ N = 1 := by rw [← mul_pow, hϖ, one_pow]
  have he : ltIter ϖ q n Q - ϖ ^ M * (ϖ ^ n * s) =
      ϖ ^ n * ϖ' ^ c * (ϖ ^ c * (ϖ' ^ (n + N) * ltIter ϖ q (n + N) Q - 0) - ϖ ^ (M + c) * s) -
        ϖ' ^ N * (ltIter ϖ q (n + N) Q - ϖ ^ N * ltIter ϖ q n Q) := by
    linear_combination (-ltIter ϖ q n Q) * h3 +
      (ϖ ^ M * ϖ ^ n * s - ϖ' ^ N * ltIter ϖ q (n + N) Q * (ϖ ^ n * ϖ' ^ n)) * h1 -
      ϖ' ^ N * ltIter ϖ q (n + N) Q * h2
  rw [he]
  exact (F (m + 1)).sub_mem ((F (m + 1)).mul_mem_left _ hd) ((F (m + 1)).mul_mem_left _ (hD N))

variable {C : Type} [NormedField C] [IsUltrametricDist C]

theorem exists_ltIter_mem_one (ϖ' : B) (hϖ : ϖ * ϖ' = 1) (θ : B →+* C) (hθ : ∀ x, θ x = 0 ↔ x ∈ F 1)
    (hS : ∀ s ∈ S, ‖θ s‖ ≤ 1) (ha : ‖θ ϖ‖ < 1) (q : ℕ) (hq : 2 ≤ q) (Q : B) (hQ : Q ∈ S)
    (hQM : ∃ M : ℕ, 0 < M ∧ Near S ϖ (F 1) 1 (Q ^ M))
    (hT : Tends S F ϖ (fun n => ϖ' ^ n * ltIter ϖ q n Q) 0) : ∃ n, ltIter ϖ q n Q ∈ F 1 := by
  have haa : θ ϖ * θ ϖ' = 1 := by rw [← map_mul, hϖ, map_one]
  have ha0 : θ ϖ ≠ 0 := left_ne_zero_of_mul_eq_one haa
  have hapos : 0 < ‖θ ϖ‖ := norm_pos_iff.mpr ha0
  have hnn : ‖θ ϖ‖ * ‖θ ϖ'‖ = 1 := by rw [← norm_mul, haa, norm_one]
  have hpos' : 0 < ‖θ ϖ'‖ := by
    have := right_ne_zero_of_mul_eq_one haa
    exact norm_pos_iff.mpr this
  have h0 : ‖θ (ltIter ϖ q 0 Q)‖ < 1 := by
    obtain ⟨M, hM, s, hs, hd⟩ := hQM
    have e : θ Q ^ M = θ ϖ * θ s := by
      have := (hθ _).mpr hd
      simp only [map_sub, map_mul, map_pow, pow_one] at this
      exact sub_eq_zero.mp this
    by_contra hcon
    have h1 : (1 : ℝ) ≤ ‖θ Q‖ := by simpa [ltIter] using hcon
    have h2 : (1 : ℝ) ≤ ‖θ Q‖ ^ M := one_le_pow₀ h1
    have h3 : ‖θ Q‖ ^ M = ‖θ ϖ‖ * ‖θ s‖ := by rw [← norm_pow, e, norm_mul]
    have h4 : ‖θ ϖ‖ * ‖θ s‖ < 1 :=
      (mul_le_of_le_one_right hapos.le (hS s hs)).trans_lt ha
    linarith
  obtain ⟨n, hn⟩ := exists_norm_geometric (θ ϖ) q hq ha0 ha (fun n => θ (ltIter ϖ q n Q))
    (fun n => by simp only [ltIter_succ_eq, map_add (f := _), map_mul, map_pow]) h0
  refine ⟨n, (hθ _).mp ?_⟩
  by_contra hne
  have hcpos : 0 < ‖θ (ltIter ϖ q n Q)‖ := norm_pos_iff.mpr hne
  obtain ⟨c, hc⟩ := hT 1
  have hK : 0 < ‖θ ϖ‖ ^ c * ‖θ ϖ'‖ ^ n * ‖θ (ltIter ϖ q n Q)‖ := by positivity
  obtain ⟨m, hm⟩ := exists_pow_lt_of_lt_one hK ha
  obtain ⟨N, hN⟩ := hc m
  obtain ⟨s, hs, hd⟩ := hN (n + N) (by omega)
  have e := (hθ _).mpr hd
  simp only [map_sub, map_mul, map_pow, sub_zero] at e
  have e2 : ‖θ ϖ‖ ^ c * (‖θ ϖ'‖ ^ (n + N) * ‖θ (ltIter ϖ q (n + N) Q)‖) = ‖θ ϖ‖ ^ m * ‖θ s‖ := by
    have := congrArg norm (sub_eq_zero.mp e)
    simpa only [norm_mul, norm_pow] using this
  have hNN : ‖θ ϖ‖ ^ N * ‖θ ϖ'‖ ^ N = 1 := by rw [← mul_pow, hnn, one_pow]
  have e3 : ‖θ ϖ‖ ^ c * ‖θ ϖ'‖ ^ n * ‖θ (ltIter ϖ q n Q)‖ = ‖θ ϖ‖ ^ m * ‖θ s‖ := by
    rw [← e2, hn N, pow_add]
    linear_combination (-(‖θ ϖ‖ ^ c * ‖θ ϖ'‖ ^ n * ‖θ (ltIter ϖ q n Q)‖)) * hNN
  have h5 : ‖θ ϖ‖ ^ m * ‖θ s‖ ≤ ‖θ ϖ‖ ^ m :=
    mul_le_of_le_one_right (pow_nonneg hapos.le m) (hS s hs)
  linarith

end GlobalTheory.CompanionTheory.LTPer.Nonv

namespace GlobalTheory.CompanionTheory.LTPer


open GlobalTheory.CompanionTheory.LTPer.Nonv in
theorem exists_ltIter_eq_zero_of_tends : ∀ {B : Type} [CommRing B] {S : Subring B} {F : ℕ → Ideal B} {ϖ : B} {C : Type} [NormedField C] [IsUltrametricDist C], PerEnv S F ϖ → ∀ (ϖ' : B), ϖ * ϖ' = 1 →
    ∀ (θ : B →+* C), (∀ x, θ x = 0 ↔ x ∈ F 1) → (∀ s ∈ S, ‖θ s‖ ≤ 1) → ‖θ ϖ‖ < 1 → ∀ (q : ℕ), 2 ≤ q →
    ∀ Q ∈ S, (∃ M : ℕ, 0 < M ∧ Near S ϖ (F 1) 1 (Q ^ M)) →
      Tends S F ϖ (fun n => ϖ' ^ n * ltIter ϖ q n Q) 0 → ∃ n, ltIter ϖ q n Q = 0 := by
  intro B _ S F ϖ C _ _ hE ϖ' hϖ θ hθ hS ha q hq Q hQ hQM hT
  obtain ⟨n, hn⟩ := exists_ltIter_mem_one ϖ' hϖ θ hθ hS ha q hq Q hQ hQM hT
  refine ⟨n, hE.sep _ fun k => ?_⟩
  have hall : ∀ m, 1 ≤ m → ltIter ϖ q n Q ∈ F m := by
    intro m hm
    induction m, hm using Nat.le_induction with
    | base => exact hn
    | succ m hm ih => exact ltIter_mem_succ hE ϖ' hϖ q hq hQ hT n m hm ih
  rcases Nat.eq_zero_or_pos k with rfl | hk
  · rw [hE.top]; exact Submodule.mem_top
  · exact hall k hk

end GlobalTheory.CompanionTheory.LTPer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateIterateEventuallyZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateIterateLimitCongruence =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateIterateLimitCongruence", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EvalMod\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LocalPrimeGaloisActionPeriodT\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TripleAtt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder\nimport Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf\nimport ReciprocityTheory.NeutralLocalFields.Reciprocity\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField IsDedekindDomain Neutral.B1 Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.L2.Host Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations
open GlobalTheory.HeckeGal GlobalTheory.Pst GlobalTheory.TripleGal GlobalTheory.CompanionTheory.LTHodge GlobalTheory.CompanionTheory.LTPer
open scoped Classical

namespace GlobalTheory.CompanionTheory.LTPer.QLim

theorem map_mem {B : Type} [CommRing B] {S : Subring B} {ϖ : B} (hϖ : ϖ ∈ S) (q : ℕ) {x : B}
    (hx : x ∈ S) : ϖ * x + x ^ q ∈ S :=
  S.add_mem (S.mul_mem hϖ hx) (S.pow_mem hx q)

theorem step_congr {B : Type} [CommRing B] {S : Subring B} {ϖ : B} (hϖ : ϖ ∈ S) {q : ℕ}
    (hq : ∃ s ∈ S, (q : B) = ϖ * s) {a b c : B} (hb : b ∈ S) (hc : c ∈ S) {m : ℕ} (hm : 1 ≤ m)
    (hab : a - b = ϖ ^ m * c) :
    ∃ c' ∈ S, (ϖ * a + a ^ q) - (ϖ * b + b ^ q) = ϖ ^ (m + 1) * c' := by
  obtain ⟨s, hs, hqs⟩ := hq
  have hy : ϖ ^ m * c ∈ S := S.mul_mem (S.pow_mem hϖ m) hc
  obtain ⟨k, hk⟩ := Polynomial.binomExpansion (Polynomial.X ^ q : Polynomial S)
    (⟨b, hb⟩ : S) (⟨ϖ ^ m * c, hy⟩ : S)
  have hk' : (b + ϖ ^ m * c) ^ q =
      b ^ q + (q : B) * b ^ (q - 1) * (ϖ ^ m * c) + (k : B) * (ϖ ^ m * c) ^ 2 := by
    have h := congrArg (Subtype.val) hk
    simpa [Polynomial.derivative_X_pow] using h
  have ha : a = b + ϖ ^ m * c := by linear_combination hab
  obtain ⟨m', rfl⟩ : ∃ m', m = m' + 1 := ⟨m - 1, by omega⟩
  refine ⟨c + s * b ^ (q - 1) * c + (k : B) * ϖ ^ m' * c ^ 2, ?_, ?_⟩
  · exact S.add_mem (S.add_mem hc (S.mul_mem (S.mul_mem hs (S.pow_mem hb _)) hc))
      (S.mul_mem (S.mul_mem k.2 (S.pow_mem hϖ _)) (S.pow_mem hc _))
  · rw [ha, hk', hqs]; ring

theorem iter_congr {B : Type} [CommRing B] {S : Subring B} {ϖ : B} (hϖ : ϖ ∈ S) {q : ℕ}
    (hq : ∃ s ∈ S, (q : B) = ϖ * s) (n : ℕ) :
    ∀ {a b c : B} {m : ℕ}, a ∈ S → b ∈ S → c ∈ S → 1 ≤ m → a - b = ϖ ^ m * c →
      ∃ c' ∈ S, ltIter ϖ q n a - ltIter ϖ q n b = ϖ ^ (m + n) * c' := by
  induction n with
  | zero =>
    intro a b c m _ _ hc _ hab
    exact ⟨c, hc, by simpa [ltIter] using hab⟩
  | succ n ih =>
    intro a b c m ha hb hc hm hab
    obtain ⟨c₁, hc₁, h₁⟩ := step_congr hϖ hq hb hc hm hab
    obtain ⟨c₂, hc₂, h₂⟩ := ih (map_mem hϖ q ha) (map_mem hϖ q hb) hc₁ (by omega) h₁
    refine ⟨c₂, hc₂, ?_⟩
    have e : m + (n + 1) = m + 1 + n := by omega
    rw [e]
    exact h₂

theorem exists_limit : ∀ {B : Type} [CommRing B] {S : Subring B} {F : ℕ → Ideal B} {ϖ : B}, PerEnv S F ϖ → ∀ (q : ℕ), 2 ≤ q → (∃ s ∈ S, (q : B) = ϖ * s) →
    ∀ (v : ℕ → B), (∀ n, v n ∈ S) → (∀ n, v (n + 1) ^ q = v n) →
      ∃ Q ∈ S, ∀ n, ∃ a ∈ S, Q - ltIter ϖ q n (v n) = ϖ ^ (n + 1) * a := by
  intro B _ S F ϖ E q _ hq v hv hvq
  have hd : ∀ n, ∃ e ∈ S, ltIter ϖ q (n + 1) (v (n + 1)) - ltIter ϖ q n (v n) = ϖ ^ (n + 1) * e := by
    intro n
    have h1 : (ϖ * v (n + 1) + v (n + 1) ^ q) - v n = ϖ ^ 1 * v (n + 1) := by
      rw [hvq]; ring
    obtain ⟨c, hc, h⟩ := iter_congr E.mem hq n (map_mem E.mem q (hv (n + 1))) (hv n) (hv (n + 1))
      le_rfl h1
    refine ⟨c, hc, ?_⟩
    have e : ltIter ϖ q (n + 1) (v (n + 1)) = ltIter ϖ q n (ϖ * v (n + 1) + v (n + 1) ^ q) := rfl
    rw [e, h, add_comm n 1]
  choose e he hde using hd
  let s : ℕ → B := fun n => Nat.casesOn n (v 0) e
  have hs : ∀ n, s n ∈ S := by
    intro n
    cases n with
    | zero => exact hv 0
    | succ n => exact he n
  obtain ⟨r, hr, hsum⟩ := E.sumS s hs
  have tel : ∀ N, ∑ n ∈ Finset.range (N + 1), ϖ ^ n * s n = ltIter ϖ q N (v N) := by
    intro N
    induction N with
    | zero => simp [s, ltIter]
    | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      have hN : s (N + 1) = e N := rfl
      rw [hN, ← hde N]
      ring
  refine ⟨r, hr, fun n => ?_⟩
  obtain ⟨a, ha, h⟩ := hsum (n + 1)
  rw [tel n] at h
  exact ⟨a, ha, h⟩

end GlobalTheory.CompanionTheory.LTPer.QLim
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateIterateLimitCongruence =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateLimitKernelZero =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateLimitKernelZero", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EvalMod\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LocalPrimeGaloisActionPeriodT\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TripleAtt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder\nimport Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf\nimport ReciprocityTheory.NeutralLocalFields.Reciprocity\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField IsDedekindDomain Neutral.B1 Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.L2.Host Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations
open GlobalTheory.HeckeGal GlobalTheory.Pst GlobalTheory.TripleGal GlobalTheory.CompanionTheory.LTHodge GlobalTheory.CompanionTheory.LTPer
open scoped Classical

namespace GlobalTheory.CompanionTheory.LTPer

theorem theta_period_eq_zero_of_theta_eq_zero :
    ∀ {B : Type} [CommRing B] {S : Subring B} {F : ℕ → Ideal B} {ϖ : B} {C : Type} [NormedField C], PerEnv S F ϖ → ∀ (ϖ' : B), ϖ * ϖ' = 1 →
    ∀ (θ : B →+* C), (∀ x, θ x = 0 ↔ x ∈ F 1) → (∀ s ∈ S, ‖θ s‖ ≤ 1) → ‖θ ϖ‖ < 1 → ∀ (q : ℕ), 2 ≤ q →
    ∀ Q, θ Q = 0 → ∀ t, Tends S F ϖ (fun n => ϖ' ^ n * ltIter ϖ q n Q) t → θ t = 0 := by
  intro B _ S F ϖ C _ _ ϖ' hϖ θ hker hS hlt q hq Q hQ t ht
  have hy : ∀ n, θ (ltIter ϖ q n Q) = 0 := by
    intro n
    induction n with
    | zero => simpa [ltIter] using hQ
    | succ n ih =>
      have hs : ltIter ϖ q (n + 1) Q = ϖ * ltIter ϖ q n Q + (ltIter ϖ q n Q) ^ q := by
        simp only [ltIter, Function.iterate_succ_apply']
      rw [hs, map_add (f := _), map_mul, map_pow, ih]
      simp [show q ≠ 0 by omega]
  have hne : θ ϖ ≠ 0 := by
    intro h0
    have h1 : θ ϖ * θ ϖ' = 1 := by rw [← map_mul, hϖ, map_one]
    rw [h0, zero_mul] at h1
    exact zero_ne_one h1
  have hapos : 0 < ‖θ ϖ‖ := norm_pos_iff.mpr hne
  obtain ⟨c, hc⟩ := ht 1
  have hbound : ∀ m : ℕ, ‖θ ϖ‖ ^ c * ‖θ t‖ ≤ ‖θ ϖ‖ ^ m := by
    intro m
    obtain ⟨N, hN⟩ := hc m
    obtain ⟨s, hsS, hs⟩ := hN N le_rfl
    have h0 := (hker _).mpr hs
    simp only [map_sub, map_mul, map_pow, hy, mul_zero, zero_sub] at h0
    have h1 : θ ϖ ^ c * θ t = -(θ ϖ ^ m * θ s) := by linear_combination -h0
    have h2 : ‖θ ϖ‖ ^ c * ‖θ t‖ = ‖θ ϖ‖ ^ m * ‖θ s‖ := by
      have := congrArg norm h1
      simpa [norm_mul, norm_pow, norm_neg] using this
    rw [h2]
    exact mul_le_of_le_one_right (pow_nonneg hapos.le m) (hS s hsS)
  have hlim : Filter.Tendsto (fun m : ℕ => ‖θ ϖ‖ ^ m) Filter.atTop (nhds 0) :=
    tendsto_pow_atTop_nhds_zero_of_lt_one hapos.le hlt
  have hle : ‖θ ϖ‖ ^ c * ‖θ t‖ ≤ 0 := ge_of_tendsto' hlim hbound
  have hz : ‖θ t‖ ≤ 0 := by
    by_contra hcon
    have : 0 < ‖θ ϖ‖ ^ c * ‖θ t‖ := mul_pos (pow_pos hapos c) (not_le.mp hcon)
    linarith
  exact norm_le_zero_iff.mp hz

end GlobalTheory.CompanionTheory.LTPer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateLimitKernelZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateNormCyclotomic =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateNormCyclotomic", "h": "module\n\npublic import GroundTheory.LocalFields.LocalArtinBaseChange\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PadicIsNonarchimedeanLocalField\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HasPeriods\npublic import Development.WeilBound.CoreStatements.CrystallinePeriodRings.InstCommRingBcris\npublic import GroundTheory.PAdicHodge.FieldOfNormsCyclBase\npublic import GroundTheory.PAdicHodge.UnramifiedClosure\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemFiniteExtPadicRingOfIntegersIffNormLeOne\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniformizerGaloisAction\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalBridgeLubinTateField\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateUnramifiedDegreeOne\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationLtOneOfEq\npublic import GroundTheory.LocalFields.ExplicitQp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TripleAtt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EvalMod\nimport Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf\nimport ReciprocityTheory.NeutralLocalFields.Reciprocity\npublic import Mathlib.NumberTheory.Padics.LocalField\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField IsDedekindDomain Neutral.B1 Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.L2.Host Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations
open GlobalTheory.HeckeGal GlobalTheory.Pst GlobalTheory.TripleGal GlobalTheory.CompanionTheory.LTHodge GlobalTheory.CompanionTheory.LTPer
open scoped Classical
open ValuativeRel GroundTheory.LocalField GroundTheory.LocalField.FormalGroup
open scoped GroundTheory.PAdicHodge.CyclNorms

namespace GlobalTheory.CompanionTheory.LTNorm

variable {l : ℕ} [Fact l.Prime]

theorem unramifiedDegree_eq_one_of_fix (K : FinExt l) [FiniteDimensional ℚ_[l] ↥K.1] (g : Om l ≃ₐ[↥K.1] Om l)
    (h : ∀ u ∈ GroundTheory.PAdicHodge.unramifiedClosure l, g u = u) :
    unramifiedDegree ↥K.1 (Om l) g = 1 := by
  rw [unramifiedDegree_eq_one_iff]
  intro ζ hζ
  obtain ⟨m, hm, hζm⟩ := mem_unramifiedRoots_iff.1 hζ
  have hm0 : m ≠ 0 := by
    rintro rfl
    simp at hm
  have hcop : ¬ l ∣ m := by
    rintro ⟨k, rfl⟩
    apply hm
    rw [Nat.cast_mul, GlobalTheory.CompanionTheory.LTLink.natCast_residue_eq_zero (l := l) (F := ↥K.1), zero_mul]
  exact h _ (GroundTheory.PAdicHodge.mem_unramifiedClosure_of_pow_eq_one (Nat.pos_of_ne_zero hm0)
    (((Nat.Prime.coprime_iff_not_dvd (Fact.out : l.Prime)).2 hcop).symm) hζm)

theorem exists_norm_unit (K : FinExt l) [FiniteDimensional ℚ_[l] ↥K.1] (u : 𝒪[↥K.1]ˣ) :
    ∃ v : ℤ_[l]ˣ, ((v : ℤ_[l]) : ℚ_[l]) = Algebra.norm ℚ_[l] ((u : 𝒪[↥K.1]) : ↥K.1) := by
  have hint : ∀ a : 𝒪[↥K.1], ∃ y : ℤ_[l], (y : ℚ_[l]) = Algebra.norm ℚ_[l] (a : ↥K.1) := by
    intro a
    have h1 : IsIntegral ℤ_[l] (a : ↥K.1) :=
      (GlobalTheory.IntNormFinExt.mem_OL_iff_norm_le_one l K _).mpr
        ((GlobalTheory.CompanionTheory.LTHodge.UnitAct.valuation_le_one_iff (a : ↥K.1)).mp a.2)
    have h2 : IsIntegral ℤ_[l] (Algebra.norm ℚ_[l] (a : ↥K.1)) := Algebra.isIntegral_norm ℚ_[l] h1
    obtain ⟨y, hy⟩ := IsIntegrallyClosed.isIntegral_iff.mp h2
    exact ⟨y, hy⟩
  obtain ⟨y, hy⟩ := hint (u : 𝒪[↥K.1])
  obtain ⟨y', hy'⟩ := hint ((u⁻¹ : 𝒪[↥K.1]ˣ) : 𝒪[↥K.1])
  have hm : ((y * y' : ℤ_[l]) : ℚ_[l]) = 1 := by
    rw [PadicInt.coe_mul, hy, hy', ← map_mul, ← MulMemClass.coe_mul, Units.mul_inv]
    simp
  have hm1 : y * y' = 1 := by
    apply Subtype.ext
    exact hm
  exact ⟨⟨y, y', hm1, by rw [mul_comm]; exact hm1⟩, hy⟩

theorem toZModPow_eq_of_pow (a b : ℤ_[l])
    (h : ∀ (n : ℕ) (ζ : Om l), ζ ^ l ^ n = 1 →
      ζ ^ (PadicInt.toZModPow n a).val = ζ ^ (PadicInt.toZModPow n b).val) : a = b := by
  refine PadicInt.ext_of_toZModPow.mp fun n => ?_
  have hl : 0 < l ^ n := pow_pos (Fact.out : l.Prime).pos n
  have : NeZero (l ^ n) := ⟨hl.ne'⟩
  have : NeZero ((l ^ n : ℕ) : Om l) := ⟨Nat.cast_ne_zero.mpr hl.ne'⟩
  obtain ⟨ζ, hζ⟩ : ∃ z : Om l, IsPrimitiveRoot z (l ^ n) :=
    HasEnoughRootsOfUnity.exists_primitiveRoot (Om l) (l ^ n)
  have h1 := h n ζ hζ.pow_eq_one
  have h2 := hζ.pow_inj (ZMod.val_lt _) (ZMod.val_lt _) h1
  exact ZMod.val_injective _ h2

theorem mem_maximalAbelian {n : ℕ} {ζ : Om l} (hζ : ζ ^ l ^ n = 1) :
    ζ ∈ maximalAbelianExtension ℚ_[l] (Om l) := by
  rw [GroundTheory.LocalField.Padic.maximalAbelianExtension_eq_adjoin_rootsOfUnity l (Om l)]
  exact IntermediateField.subset_adjoin _ _ ⟨l ^ n, pow_pos (Fact.out : l.Prime).pos n, hζ⟩

theorem norm_eq_cyclo : ∀ {l : ℕ} [Fact l.Prime] (K : FinExt l) (χ : ↥(GK K) →* (↥K.1)ˣ), IsLTChar K χ →
    Continuous (fun g => (((χ g : (↥K.1)ˣ) : ↥K.1) : Om l)) →
    ∀ (g : GQ l) (hg : g ∈ GK K), (∀ u ∈ GroundTheory.PAdicHodge.unramifiedClosure l, g u = u) →
      Algebra.norm ℚ_[l] ((χ ⟨g, hg⟩ : (↥K.1)ˣ) : ↥K.1) =
        (((GroundTheory.PAdicHodge.cycloChar ⊥ (Formalism.Per6.toBot g) : ℤ_[l]ˣ) : ℤ_[l]) : ℚ_[l]) := by
  intro l _ K χ hχ _ g hg hfix
  have : FiniteDimensional ℚ_[l] ↥K.1 := K.2
  have hR : Set.range (algebraMap ↥K.1 (Om l)) = (K.1 : Set (Om l)) := Subtype.range_coe
  obtain ⟨π, hπ, hmain⟩ := GlobalTheory.CompanionTheory.LTHodge.UnitAct.main hχ (F := ↥K.1) hR
  let g' : ↥(GK K) := ⟨g, hg⟩
  let τ : Om l ≃ₐ[↥K.1] Om l := GlobalTheory.CompanionTheory.LTHodge.CharEx.gal K g'
  obtain ⟨u, huχ, hact⟩ := hmain τ g' (fun y => rfl)
  have hdeg : unramifiedDegree ↥K.1 (Om l) τ = 1 := unramifiedDegree_eq_one_of_fix K τ hfix
  have hart := GlobalTheory.CompanionTheory.LTLink.lt_local_artin_inertia hπ (isLubinTateSeries_ltPoly π) u τ hdeg hact
  obtain ⟨v, hv⟩ := exists_norm_unit K u
  have hχu : ((χ g' : (↥K.1)ˣ) : ↥K.1) = ((u : 𝒪[↥K.1]) : ↥K.1) := Subtype.ext huχ.symm
  change Algebra.norm ℚ_[l] ((χ g' : (↥K.1)ˣ) : ↥K.1) = _
  rw [hχu, ← hv]

  let x : (↥K.1)ˣ := unitsIncl ↥K.1 u⁻¹
  let w : ℚ_[l]ˣ := normUnits ℚ_[l] ↥K.1 x
  have hw : (w : ℚ_[l]) = (((v⁻¹ : ℤ_[l]ˣ) : ℤ_[l]) : ℚ_[l]) * (l : ℚ_[l]) ^ (0 : ℤ) := by
    have e1 : (w : ℚ_[l]) = Algebra.norm ℚ_[l] ((x : (↥K.1)ˣ) : ↥K.1) := coe_normUnits x
    have e2 : ((x : (↥K.1)ˣ) : ↥K.1) * ((u : 𝒪[↥K.1]) : ↥K.1) = 1 := by
      have h := congrArg (fun c : 𝒪[↥K.1] => (c : ↥K.1)) (Units.inv_mul u)
      simpa [x, unitsIncl] using h
    have e3 : (w : ℚ_[l]) * ((v : ℤ_[l]) : ℚ_[l]) = 1 := by
      rw [e1, hv, ← map_mul, e2, map_one]
    have e4 : ((v : ℤ_[l]) : ℚ_[l]) * (((v⁻¹ : ℤ_[l]ˣ) : ℤ_[l]) : ℚ_[l]) = 1 := by
      rw [← PadicInt.coe_mul, Units.mul_inv, PadicInt.coe_one]
    rw [zpow_zero, mul_one]
    calc (w : ℚ_[l]) = (w : ℚ_[l]) * (((v : ℤ_[l]) : ℚ_[l]) * (((v⁻¹ : ℤ_[l]ˣ) : ℤ_[l]) : ℚ_[l])) := by
          rw [e4, mul_one]
      _ = _ := by rw [← mul_assoc, e3, one_mul]
  obtain ⟨σ, hσ⟩ := QuotientGroup.mk_surjective (localReciprocityLimit ℚ_[l] (Om l) w)
  have key : ∀ (n : ℕ) (ζ : Om l), ζ ^ l ^ n = 1 → g ζ = σ ζ := by
    intro n ζ hζ
    have hy := mem_maximalAbelian hζ
    have h1 := hart ζ (maximalAbelianExtension_le_restrictScalars K.1 hy)
    have h2 := localArtinMap_apply_of_mem K.1 x hy
    have h3 : localArtinMap ℚ_[l] (Om l) (normUnits ℚ_[l] ↥K.1 x) =
        topologicalAbelianizationEquiv ℚ_[l] (Om l) (σ : TopologicalAbelianization (Om l ≃ₐ[ℚ_[l]] Om l)) := by
      rw [localArtinMap_apply]
      exact congrArg _ hσ.symm
    rw [h3, topologicalAbelianizationEquiv_mk_apply] at h2
    exact h1.symm.trans h2
  have hfin : (v : ℤ_[l]) = ((GroundTheory.PAdicHodge.cycloChar ⊥ (Formalism.Per6.toBot g) : ℤ_[l]ˣ) : ℤ_[l]) := by
    refine toZModPow_eq_of_pow _ _ fun n ζ hζ => ?_
    have h1 := GroundTheory.PAdicHodge.cycloChar_spec (K := ⊥) (Formalism.Per6.toBot g) hζ
    have h2 := GroundTheory.LocalField.Padic.apply_of_pow_eq_one_of_prime_pow l w v⁻¹ 0 hw hσ hζ
    rw [inv_inv] at h2
    rw [← h2, ← key n ζ hζ]
    exact h1
  rw [hfin]

end GlobalTheory.CompanionTheory.LTNorm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateNormCyclotomic =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateScaledIterateTends =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateScaledIterateTends", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EvalMod\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LocalPrimeGaloisActionPeriodT\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TripleAtt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder\nimport Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf\nimport ReciprocityTheory.NeutralLocalFields.Reciprocity\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField IsDedekindDomain Neutral.B1 Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.L2.Host Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations
open GlobalTheory.HeckeGal GlobalTheory.Pst GlobalTheory.TripleGal GlobalTheory.CompanionTheory.LTHodge GlobalTheory.CompanionTheory.LTPer
open scoped Classical

namespace GlobalTheory.CompanionTheory.LTPer.LogConv

variable {B : Type} [CommRing B] {S : Subring B} {ϖ : B} {J : Ideal B}


theorem near_mul {a b : ℕ} {x y : B} (hx : Near S ϖ J a x) (hy : Near S ϖ J b y) :
    Near S ϖ J (a + b) (x * y) := by
  obtain ⟨s, hs, h⟩ := hx
  obtain ⟨s', hs', h'⟩ := hy
  refine ⟨s * s', S.mul_mem hs hs', ?_⟩
  have := J.add_mem (J.mul_mem_right y h) (J.mul_mem_left (ϖ ^ a * s) h')
  convert this using 1; ring

theorem near_mono (hϖ : ϖ ∈ S) {a b : ℕ} (hab : a ≤ b) {x : B} (h : Near S ϖ J b x) :
    Near S ϖ J a x := by
  obtain ⟨s, hs, h⟩ := h
  refine ⟨ϖ ^ (b - a) * s, S.mul_mem (S.pow_mem hϖ _) hs, ?_⟩
  have e : ϖ ^ a * (ϖ ^ (b - a) * s) = ϖ ^ b * s := by
    rw [← mul_assoc, ← pow_add, Nat.add_sub_cancel' hab]
  rwa [e]

theorem near_of_mem {s : B} (hs : s ∈ S) : Near S ϖ J 0 s := ⟨s, hs, by simp⟩

theorem near_pow {a : ℕ} {x : B} (h : Near S ϖ J a x) (e : ℕ) : Near S ϖ J (a * e) (x ^ e) := by
  induction e with
  | zero => exact ⟨1, S.one_mem, by simp⟩
  | succ e ih =>
    rw [pow_succ, Nat.mul_succ]
    exact near_mul ih h

theorem near_anti {J' : Ideal B} (hJ : J ≤ J') {m : ℕ} {x : B} (h : Near S ϖ J m x) :
    Near S ϖ J' m x := by
  obtain ⟨s, hs, h⟩ := h
  exact ⟨s, hs, hJ h⟩

variable {F : ℕ → Ideal B}

theorem near_all (E : PerEnv S F ϖ) (k : ℕ) {x : B} (h : ∀ m, Near S ϖ (F k) m x) : x ∈ F k := by
  obtain ⟨s, hs, h0⟩ := h 0
  have hs' : s ∈ F k := E.closed k s hs (fun m => by
    obtain ⟨s', hs', h'⟩ := h m
    refine ⟨s', hs', ?_⟩
    have := (F k).sub_mem h' h0
    convert this using 1; ring)
  have := (F k).add_mem h0 hs'
  convert this using 1; ring

theorem near_Qpow (E : PerEnv S F ϖ) {Q : B} (hQ : Q ∈ S) {M : ℕ}
    (h : Near S ϖ (F 1) 1 (Q ^ M)) (k : ℕ) : Near S ϖ (F k) 1 (Q ^ (M * k)) := by
  induction k with
  | zero => exact ⟨0, S.zero_mem, by rw [E.top]; trivial⟩
  | succ k ih =>
    obtain ⟨s, hs, h1⟩ := ih
    obtain ⟨s', hs', h2⟩ := h
    refine ⟨Q ^ (M * k) * s' + s * (Q ^ M - ϖ ^ 1 * s'),
      S.add_mem (S.mul_mem (S.pow_mem hQ _) hs')
        (S.mul_mem hs (S.sub_mem (S.pow_mem hQ _) (S.mul_mem (S.pow_mem E.mem _) hs'))), ?_⟩
    have := E.mul_le k 1 (Ideal.mul_mem_mul h1 h2)
    convert this using 1; ring

theorem iter_mem (hϖ : ϖ ∈ S) {Q : B} (hQ : Q ∈ S) (q n : ℕ) : ltIter ϖ q n Q ∈ S := by
  induction n with
  | zero => simpa [ltIter] using hQ
  | succ n ih =>
    rw [GlobalTheory.CompanionTheory.LTPer.QGal.ltIter_succ]
    exact S.add_mem (S.mul_mem hϖ ih) (S.pow_mem ih _)

theorem pow_congr' {y z : B} (hy : y ∈ S) (hz : z ∈ S) (h : ∃ s ∈ S, y - z = ϖ * s) (e : ℕ) :
    ∃ s ∈ S, y ^ e - z ^ e = ϖ * s := by
  induction e with
  | zero => exact ⟨0, S.zero_mem, by simp⟩
  | succ e ih =>
    obtain ⟨s, hs, hh⟩ := h
    obtain ⟨u, hu, ih⟩ := ih
    refine ⟨y ^ e * s + u * z, S.add_mem (S.mul_mem (S.pow_mem hy _) hs) (S.mul_mem hu hz), ?_⟩
    linear_combination (y ^ e) * hh + z * ih

theorem iter_congr (hϖ : ϖ ∈ S) {Q : B} (hQ : Q ∈ S) (q n : ℕ) :
    ∃ s ∈ S, ltIter ϖ q n Q - Q ^ (q ^ n) = ϖ * s := by
  induction n with
  | zero => exact ⟨0, S.zero_mem, by simp [ltIter]⟩
  | succ n ih =>
    have hy := iter_mem hϖ hQ q n
    obtain ⟨u, hu, h2⟩ := pow_congr' hy (S.pow_mem hQ (q ^ n)) ih q
    refine ⟨ltIter ϖ q n Q + u, S.add_mem hy hu, ?_⟩
    rw [GlobalTheory.CompanionTheory.LTPer.QGal.ltIter_succ, pow_succ q n, pow_mul]
    linear_combination h2

theorem near_iter (E : PerEnv S F ϖ) {q : ℕ} (hq : 2 ≤ q) {Q : B} (hQ : Q ∈ S) {M : ℕ}
    (h : Near S ϖ (F 1) 1 (Q ^ M)) (k : ℕ) : Near S ϖ (F k) 1 (ltIter ϖ q (M * k) Q) := by
  have hL : M * k ≤ q ^ (M * k) := (Nat.lt_pow_self hq).le
  obtain ⟨s, hs, hy⟩ := iter_congr E.mem hQ q (M * k)
  have e : Q ^ (q ^ (M * k)) = Q ^ (M * k) * Q ^ (q ^ (M * k) - M * k) := by
    rw [← pow_add, Nat.add_sub_cancel' hL]
  have h1 : Near S ϖ (F k) 1 (Q ^ (q ^ (M * k))) := by
    rw [e]
    exact near_mul (near_Qpow E hQ h k) (near_of_mem (S.pow_mem hQ _))
  obtain ⟨s1, hs1, h1'⟩ := h1
  refine ⟨s1 + s, S.add_mem hs1 hs, ?_⟩
  convert h1' using 1
  linear_combination hy

theorem near_step (hϖ : ϖ ∈ S) {q : ℕ} (hq : 2 ≤ q) {b : ℕ} (hb : 1 ≤ b) {y : B}
    (h : Near S ϖ J b y) : Near S ϖ J (b + 1) (ϖ * y + y ^ q) := by
  have h0 : Near S ϖ J 1 ϖ := ⟨1, S.one_mem, by simp⟩
  have h1 : Near S ϖ J (b + 1) (ϖ * y) := by
    rw [add_comm]; exact near_mul h0 h
  have h2 : Near S ϖ J (b + 1) (y ^ q) :=
    near_mono hϖ (by nlinarith) (near_pow h q)
  exact GlobalTheory.CompanionTheory.LTPer.LogGal.near_add h1 h2

theorem near_iter_add (E : PerEnv S F ϖ) {q : ℕ} (hq : 2 ≤ q) {Q : B} {k n0 : ℕ}
    (h : Near S ϖ (F k) 1 (ltIter ϖ q n0 Q)) (j : ℕ) :
    Near S ϖ (F k) (1 + j) (ltIter ϖ q (n0 + j) Q) := by
  induction j with
  | zero => simpa using h
  | succ j ih =>
    rw [show n0 + (j + 1) = n0 + j + 1 from rfl, GlobalTheory.CompanionTheory.LTPer.QGal.ltIter_succ]
    exact near_step (b := 1 + j) E.mem hq (by omega) ih

theorem iter_diff {ϖ' : B} (hu : ϖ * ϖ' = 1) (q n : ℕ) (Q : B) :
    ϖ' ^ (n + 1) * ltIter ϖ q (n + 1) Q - ϖ' ^ n * ltIter ϖ q n Q =
      ϖ' ^ (n + 1) * ltIter ϖ q n Q ^ q := by
  rw [GlobalTheory.CompanionTheory.LTPer.QGal.ltIter_succ]
  linear_combination (ϖ' ^ n * ltIter ϖ q n Q) * hu

theorem near_diff (E : PerEnv S F ϖ) {ϖ' : B} (hu : ϖ * ϖ' = 1) {q : ℕ} (hq : 2 ≤ q) {Q : B}
    {k n0 : ℕ} (h : Near S ϖ (F k) 1 (ltIter ϖ q n0 Q)) (j : ℕ) :
    Near S ϖ (F k) (1 + j) (ϖ ^ n0 * (ϖ' ^ (n0 + j + 1) * ltIter ϖ q (n0 + j + 1) Q -
      ϖ' ^ (n0 + j) * ltIter ϖ q (n0 + j) Q)) := by
  have h1 : Near S ϖ (F k) (2 * j + 2) (ltIter ϖ q (n0 + j) Q ^ q) :=
    near_mono E.mem (by nlinarith) (near_pow (near_iter_add E hq h j) q)
  obtain ⟨s, hs, hf⟩ := h1
  refine ⟨s, hs, ?_⟩
  have hU : ϖ ^ (n0 + j + 1) * ϖ' ^ (n0 + j + 1) = 1 := by rw [← mul_pow, hu, one_pow]
  have e : ϖ ^ n0 * (ϖ' ^ (n0 + j + 1) * ltIter ϖ q (n0 + j + 1) Q -
      ϖ' ^ (n0 + j) * ltIter ϖ q (n0 + j) Q) - ϖ ^ (1 + j) * s =
      (ϖ ^ n0 * ϖ' ^ (n0 + j + 1)) * (ltIter ϖ q (n0 + j) Q ^ q - ϖ ^ (2 * j + 2) * s) := by
    rw [iter_diff hu]
    linear_combination (ϖ ^ (1 + j) * s) * hU
  rw [e]
  exact (F k).mul_mem_left _ hf

theorem level_limit (E : PerEnv S F ϖ) {ϖ' : B} (hu : ϖ * ϖ' = 1) (x : ℕ → B) {k : ℕ} (c n0 : ℕ)
    (h : ∀ j, Near S ϖ (F k) (1 + j) (ϖ ^ c * (x (n0 + j + 1) - x (n0 + j)))) :
    ∃ t, ∀ m, ∃ N, ∀ n ≥ N, Near S ϖ (F k) m (ϖ ^ c * (x n - t)) := by
  choose s hs hf using h
  obtain ⟨r, hr, hsum⟩ := E.sumS s hs
  have tel : ∀ J, ϖ ^ c * (x (n0 + J) - x n0) -
      ∑ i ∈ Finset.range J, ϖ ^ (1 + i) * s i ∈ F k := by
    intro J
    induction J with
    | zero => simp
    | succ J ih =>
      have := (F k).add_mem ih (hf J)
      rw [Finset.sum_range_succ, show n0 + (J + 1) = n0 + J + 1 from rfl]
      convert this using 1; ring
  have hc : ϖ ^ c * ϖ' ^ c = 1 := by rw [← mul_pow, hu, one_pow]
  refine ⟨x n0 + ϖ' ^ c * (ϖ * r), fun m => ⟨n0 + m, fun n hn => ?_⟩⟩
  obtain ⟨J, rfl⟩ : ∃ J, n = n0 + J := ⟨n - n0, by omega⟩
  have hJ : m ≤ J + 1 := by omega
  obtain ⟨a, ha, hae⟩ := hsum J
  refine near_mono E.mem hJ ⟨-a, S.neg_mem ha, ?_⟩
  have hmul : ∑ i ∈ Finset.range J, ϖ ^ (1 + i) * s i =
      ϖ * ∑ i ∈ Finset.range J, ϖ ^ i * s i := by
    rw [Finset.mul_sum]
    exact Finset.sum_congr rfl fun i _ => by ring
  have e : ϖ ^ c * (x (n0 + J) - (x n0 + ϖ' ^ c * (ϖ * r))) - ϖ ^ (J + 1) * (-a) =
      ϖ ^ c * (x (n0 + J) - x n0) - ∑ i ∈ Finset.range J, ϖ ^ (1 + i) * s i := by
    rw [hmul]
    linear_combination (-(ϖ * r)) * hc - ϖ * hae
  rw [e]
  exact tel J

theorem glue (E : PerEnv S F ϖ) {ϖ' : B} (hu : ϖ * ϖ' = 1) (x : ℕ → B)
    (h : ∀ k, ∃ (c : ℕ) (t : B), ∀ m, ∃ N, ∀ n ≥ N, Near S ϖ (F k) m (ϖ ^ c * (x n - t))) :
    ∃ t, Tends S F ϖ x t := by
  choose c t h using h
  have key : ∀ k, t (k + 1) - t k ∈ F k := fun k => by
    have hall : ∀ m, Near S ϖ (F k) m (ϖ ^ (c k + c (k + 1)) * (t (k + 1) - t k)) := fun m => by
      obtain ⟨N1, h1⟩ := h k m
      obtain ⟨N2, h2⟩ := h (k + 1) m
      have a1 := h1 (max N1 N2) (le_max_left _ _)
      have a2 := near_anti (E.anti k) (h2 (max N1 N2) (le_max_right _ _))
      have b1 := near_mul (near_of_mem (S.pow_mem E.mem (c (k + 1)))) a1
      have b2 := near_mul (near_of_mem (S.pow_mem E.mem (c k))) a2
      have b := GlobalTheory.CompanionTheory.LTPer.LogGal.near_sub b1 b2
      rw [zero_add] at b
      convert b using 1; ring
    have := (F k).mul_mem_left (ϖ' ^ (c k + c (k + 1))) (near_all E k hall)
    convert this using 1
    rw [← mul_assoc, ← mul_pow, mul_comm ϖ', hu, one_pow, one_mul]
  obtain ⟨T, hT⟩ := E.complete t key
  refine ⟨T, fun k => ⟨c k, fun m => ?_⟩⟩
  obtain ⟨N, hN⟩ := h k m
  refine ⟨N, fun n hn => ?_⟩
  obtain ⟨s, hs, hf⟩ := hN n hn
  refine ⟨s, hs, ?_⟩
  have := (F k).sub_mem hf ((F k).mul_mem_left (ϖ ^ c k) (hT k))
  convert this using 1; ring

theorem log_converges : ∀ {B : Type} [CommRing B] {S : Subring B} {F : ℕ → Ideal B} {ϖ : B}, PerEnv S F ϖ → ∀ (ϖ' : B), ϖ * ϖ' = 1 → ∀ (q : ℕ), 2 ≤ q →
    ∀ Q ∈ S, (∃ M : ℕ, 0 < M ∧ Near S ϖ (F 1) 1 (Q ^ M)) →
      ∃ t, Tends S F ϖ (fun n => ϖ' ^ n * ltIter ϖ q n Q) t := by
  rintro B _ S F ϖ E ϖ' hu q hq Q hQ ⟨M, -, hN⟩
  refine glue E hu _ fun k => ?_
  obtain ⟨t, ht⟩ := level_limit E hu (fun n => ϖ' ^ n * ltIter ϖ q n Q) (M * k) (M * k)
    (near_diff E hu hq (near_iter E hq hQ hN k))
  exact ⟨M * k, t, ht⟩

end GlobalTheory.CompanionTheory.LTPer.LogConv
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateScaledIterateTends =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateSeriesDeRhamPeriod =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateSeriesDeRhamPeriod", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EvalMod\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerNearPowerExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LocalPrimeGaloisActionPeriodT\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TripleAtt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder\nimport Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf\nimport ReciprocityTheory.NeutralLocalFields.Reciprocity\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField IsDedekindDomain Neutral.B1 Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.L2.Host Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations
open GlobalTheory.HeckeGal GlobalTheory.Pst GlobalTheory.TripleGal GlobalTheory.CompanionTheory.LTHodge GlobalTheory.CompanionTheory.LTPer
open scoped Classical

namespace GlobalTheory.CompanionTheory.LTPer.Glue

section Abs

variable {B : Type} [CommRing B]

def InMul (S : Subring B) (ϖ z : B) : Prop := ∃ s ∈ S, z = ϖ * s

theorem InMul.add {S : Subring B} {ϖ z w : B} (hz : InMul S ϖ z) (hw : InMul S ϖ w) :
    InMul S ϖ (z + w) := by
  obtain ⟨s, hs, rfl⟩ := hz
  obtain ⟨t, ht, rfl⟩ := hw
  exact ⟨s + t, S.add_mem hs ht, by ring⟩

theorem InMul.sub {S : Subring B} {ϖ z w : B} (hz : InMul S ϖ z) (hw : InMul S ϖ w) :
    InMul S ϖ (z - w) := by
  obtain ⟨s, hs, rfl⟩ := hz
  obtain ⟨t, ht, rfl⟩ := hw
  exact ⟨s - t, S.sub_mem hs ht, by ring⟩

theorem InMul.mul {S : Subring B} {ϖ z w : B} (hz : InMul S ϖ z) (hw : w ∈ S) :
    InMul S ϖ (z * w) := by
  obtain ⟨s, hs, rfl⟩ := hz
  exact ⟨s * w, S.mul_mem hs hw, by ring⟩

theorem inMul_zero (S : Subring B) (ϖ : B) : InMul S ϖ 0 :=
  ⟨0, S.zero_mem, by ring⟩

theorem pow_sub_pow_inMul {S : Subring B} {ϖ T f s : B} (hϖ : ϖ ∈ S) (hT : T ∈ S) (hs : s ∈ S)
    (h : T = ϖ * s + f) (k : ℕ) : InMul S ϖ (T ^ k - f ^ k) := by
  have hf : f ∈ S := by
    have : f = T - ϖ * s := by rw [h]; ring
    rw [this]
    exact S.sub_mem hT (S.mul_mem hϖ hs)
  induction k with
  | zero => simpa using inMul_zero S ϖ
  | succ k ih =>
    have e : T ^ (k + 1) - f ^ (k + 1) = (T ^ k - f ^ k) * T + (ϖ * s) * f ^ k := by
      rw [pow_succ, pow_succ]
      have : f ^ k * f = f ^ k * (T - ϖ * s) := by rw [h]; ring
      rw [this]; ring
    rw [e]
    exact (ih.mul hT).add ⟨s * f ^ k, S.mul_mem hs (S.pow_mem hf k), by ring⟩

theorem evalMod_of_lift {R T : Type} [CommRing R] [CommRing T] (S : Subring B) (F : ℕ → Ideal B)
    (ϖ : B) (h : R →+* B) (τ : T →* B) (r : R →+* T) (hτ0 : τ 0 = 0) (hτS : ∀ a, τ a ∈ S)
    (hϖ : ϖ ∈ S) (hadd : ∀ a b, InMul S ϖ (τ (a + b) - τ a - τ b))
    (hcoef : ∀ c, InMul S ϖ (h c - τ (r c))) (hF : ∀ k, ∀ f ∈ F 1, f ^ k ∈ F k)
    (x y : T) (φ : PowerSeries R)
    (hy : ∀ D, x ^ D ∣ y - ∑ i ∈ Finset.range D, r (PowerSeries.coeff i φ) * x ^ i)
    (M : ℕ) (s : B) (hs : s ∈ S) (hM : τ x ^ M - ϖ * s ∈ F 1) (k : ℕ) :
    ∃ D, ∀ D' ≥ D, Near S ϖ (F k) 1
      ((∑ i ∈ Finset.range D', h (PowerSeries.coeff i φ) * τ x ^ i) - τ y) := by
  have hsum : ∀ D, InMul S ϖ ((∑ i ∈ Finset.range D, h (PowerSeries.coeff i φ) * τ x ^ i) -
      τ (∑ i ∈ Finset.range D, r (PowerSeries.coeff i φ) * x ^ i)) := by
    intro D
    induction D with
    | zero => simpa [hτ0] using inMul_zero S ϖ
    | succ D ih =>
      rw [Finset.sum_range_succ, Finset.sum_range_succ]
      generalize hA : (∑ i ∈ Finset.range D, r (PowerSeries.coeff i φ) * x ^ i) = A at ih ⊢
      generalize hP : (∑ i ∈ Finset.range D, h (PowerSeries.coeff i φ) * τ x ^ i) = P at ih ⊢
      have e1 : P + h (PowerSeries.coeff D φ) * τ x ^ D -
          τ (A + r (PowerSeries.coeff D φ) * x ^ D) =
          (P - τ A) + (h (PowerSeries.coeff D φ) - τ (r (PowerSeries.coeff D φ))) * τ x ^ D -
          (τ (A + r (PowerSeries.coeff D φ) * x ^ D) - τ A -
            τ (r (PowerSeries.coeff D φ) * x ^ D)) := by
        rw [map_mul τ, map_pow τ]; ring
      rw [e1]
      exact (ih.add ((hcoef _).mul (S.pow_mem (hτS x) D))).sub (hadd _ _)
  refine ⟨M * k, fun D' hD' => ?_⟩
  obtain ⟨b, hb⟩ := hy D'
  have hP := hsum D'
  generalize (∑ i ∈ Finset.range D', r (PowerSeries.coeff i φ) * x ^ i) = A at hb hP
  generalize (∑ i ∈ Finset.range D', h (PowerSeries.coeff i φ) * τ x ^ i) = P at hP ⊢
  have hyA : y = A + x ^ D' * b := by rw [← hb]; ring
  obtain ⟨a, ha, hT⟩ := pow_sub_pow_inMul hϖ (S.pow_mem (hτS x) M) hs
    (f := τ x ^ M - ϖ * s) (by ring) k
  obtain ⟨u, hu, hPu⟩ := hP
  obtain ⟨v, hv, hv'⟩ := hadd A (x ^ D' * b)
  have hg : (τ x ^ M - ϖ * s) ^ k ∈ F k := hF k _ hM
  set g := (τ x ^ M - ϖ * s) ^ k with hgdef
  have hpow : τ x ^ D' = (τ x ^ M) ^ k * τ x ^ (D' - M * k) := by
    rw [← pow_mul, ← pow_add]
    congr 1
    omega
  have hw : τ x ^ (D' - M * k) * τ b ∈ S := S.mul_mem (S.pow_mem (hτS x) _) (hτS b)
  obtain ⟨w, hwdef⟩ : ∃ w, w = τ x ^ (D' - M * k) * τ b := ⟨_, rfl⟩
  rw [← hwdef] at hw
  have hC : τ (x ^ D' * b) = (τ x ^ M) ^ k * w := by
    rw [map_mul τ, map_pow τ, hpow, hwdef]; ring
  refine ⟨u - v - a * w, S.sub_mem (S.sub_mem hu hv) (S.mul_mem ha hw), ?_⟩
  have e : P - τ y - ϖ ^ 1 * (u - v - a * w) = -(g * w) := by
    rw [hyA]
    linear_combination hPu - hv' - hC - w * hT
  rw [e]
  exact (F k).neg_mem (Ideal.mul_mem_right w (F k) hg)

end Abs

section Conc

variable (l : ℕ) [Fact l.Prime]

def tchHom : Tl l →* Formalism.Per6.BdRp l :=
  ((wB l : Wl l →+* Formalism.Per6.BdRp l) : Wl l →* Formalism.Per6.BdRp l).comp (WittVector.teichmuller l)

theorem tchHom_apply (a : Tl l) : tchHom l a = tch l a := rfl

theorem tchHom_zero : tchHom l 0 = 0 := by
  simp [tchHom]

theorem teichmuller_add_sub (a b : Tl l) : ∃ w : Wl l,
    WittVector.teichmuller l (a + b) - WittVector.teichmuller l a - WittVector.teichmuller l b
      = w * (l : Wl l) := by
  set z : Wl l := WittVector.teichmuller l (a + b) - WittVector.teichmuller l a -
    WittVector.teichmuller l b with hz
  have h0 : z.coeff 0 = 0 := by
    have : WittVector.constantCoeff z = 0 := by
      simp [hz, map_sub]
    simpa using this
  have h1 : z = WittVector.verschiebung (z.shift 1) := by
    have := WittVector.eq_iterate_verschiebung (n := 1) (x := z) (by
      intro i hi
      obtain rfl : i = 0 := by omega
      exact h0)
    simpa using this
  obtain ⟨u, hu⟩ := (WittVector.frobenius_bijective l (Tl l)).2 (z.shift 1)
  refine ⟨u, ?_⟩
  rw [h1, ← hu, WittVector.verschiebung_frobenius]

end Conc

theorem evalMod_teichmuller : ∀ {l : ℕ} [Fact l.Prime] (K : FinExt l) (μ : ↥K.1 →ₐ[ℚ_[l]] Om l) (π : ↥(OL K)) (S : Subring (Formalism.Per6.BdRp l)),
    (∀ a, wB l a ∈ S) → (∀ c, oB K μ c ∈ S) → PerEnv S (FB l) (oB K μ π) → π ∣ (l : ↥(OL K)) →
    ∀ (r : ↥(OL K) →+* Tl l), (∀ c, ∃ c', tch l (r c) = oB K μ (c + π * c')) →
    ∀ (x y : Tl l), ‖thB l (tch l x)‖ < 1 → ∀ (φ : PowerSeries ↥(OL K)),
      (∀ D, x ^ D ∣ y - ∑ i ∈ Finset.range D, r (PowerSeries.coeff i φ) * x ^ i) →
      EvalMod S (FB l) (oB K μ π) (oB K μ) φ (tch l x) (tch l y) 1 := by
  intro l _ K μ π S hw ho env hπ r hr x y hx φ hy k
  obtain ⟨e, he⟩ := hπ
  have hl : ((l : ℕ) : Formalism.Per6.BdRp l) = oB K μ π * oB K μ e := by
    rw [← map_mul, ← he, map_natCast]
  have hadd : ∀ a b, InMul S (oB K μ π) (tchHom l (a + b) - tchHom l a - tchHom l b) := by
    intro a b
    obtain ⟨w, hw'⟩ := teichmuller_add_sub l a b
    refine ⟨wB l w * oB K μ e, S.mul_mem (hw _) (ho _), ?_⟩
    have := congrArg (wB l) hw'
    simp only [map_sub, map_mul, map_natCast] at this
    simp only [tchHom_apply, tch]
    rw [this, hl]; ring
  have hcoef : ∀ c, InMul S (oB K μ π) (oB K μ c - tchHom l (r c)) := by
    intro c
    obtain ⟨c', hc'⟩ := hr c
    refine ⟨- oB K μ c', S.neg_mem (ho _), ?_⟩
    rw [tchHom_apply, hc', map_add (f := _), map_mul]; ring
  have hϖ0 : thB l (oB K μ π) ≠ 0 := (env.unit.map (thB l)).ne_zero
  obtain ⟨M, -, s, hs, hM⟩ := _root_.GlobalTheory.CompanionTheory.LTPer.TopNil.main S hw (oB K μ π) hϖ0 x hx
  rw [pow_one] at hM
  exact evalMod_of_lift S (FB l) (oB K μ π) (oB K μ) (tchHom l) r (tchHom_zero l)
    (fun a => hw _) env.mem hadd hcoef
    (fun k f hf => Ideal.pow_mem_pow (by simpa [FB] using hf) k) x y φ hy M s hs hM k

end GlobalTheory.CompanionTheory.LTPer.Glue
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateSeriesDeRhamPeriod =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateTorsionApproximation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateTorsionApproximation", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EvalMod\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LocalPrimeGaloisActionPeriodT\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TripleAtt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder\nimport Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf\nimport ReciprocityTheory.NeutralLocalFields.Reciprocity\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField IsDedekindDomain Neutral.B1 Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.L2.Host Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations
open GlobalTheory.HeckeGal GlobalTheory.Pst GlobalTheory.TripleGal GlobalTheory.CompanionTheory.LTHodge GlobalTheory.CompanionTheory.LTPer
open scoped Classical

namespace GlobalTheory.CompanionTheory.LTPer

section ThQ

variable {C : Type} [NormedField C] [IsUltrametricDist C]

theorem thq_add_le {x y : C} {r : ℝ} (hx : ‖x‖ ≤ r) (hy : ‖y‖ ≤ r) : ‖x + y‖ ≤ r :=
  (IsUltrametricDist.norm_add_le_max x y).trans (max_le hx hy)

theorem thq_pow_sub (b d : C) (hb : ‖b‖ ≤ 1) (hbd : ‖b + d‖ ≤ 1) (m : ℕ) :
    ∃ e : C, ‖e‖ ≤ ‖d‖ ∧ (b + d) ^ (m + 1) - b ^ (m + 1) = d * (((m + 1 : ℕ) : C) * b ^ m + e) := by
  induction m with
  | zero => exact ⟨0, by simp, by simp⟩
  | succ m ih =>
    obtain ⟨e, he, h⟩ := ih
    refine ⟨d * ((m + 1 : ℕ) : C) * b ^ m + (b + d) * e, ?_, ?_⟩
    · apply thq_add_le
      · rw [norm_mul, norm_mul, norm_pow]
        have h1 : ‖((m + 1 : ℕ) : C)‖ ≤ 1 := IsUltrametricDist.norm_natCast_le_one C (m + 1)
        have h2 : ‖b‖ ^ m ≤ 1 := pow_le_one₀ (norm_nonneg _) hb
        calc ‖d‖ * ‖((m + 1 : ℕ) : C)‖ * ‖b‖ ^ m ≤ ‖d‖ * 1 * 1 := by gcongr
          _ = ‖d‖ := by ring
      · rw [norm_mul]
        calc ‖b + d‖ * ‖e‖ ≤ 1 * ‖d‖ := by gcongr
          _ = ‖d‖ := one_mul _
    · have h3 : (b + d) ^ (m + 1 + 1) - b ^ (m + 1 + 1)
          = (b + d) * ((b + d) ^ (m + 1) - b ^ (m + 1)) + d * b ^ (m + 1) := by ring
      rw [h3, h]
      push_cast
      ring

theorem thq_step {P : C} {q : ℕ} (hq : 2 ≤ q) (hqP : ‖(q : C)‖ ≤ ‖P‖) {a b : C}
    (ha : ‖a‖ ≤ 1) (hb : ‖b‖ ≤ 1) {r : ℝ} (hab : ‖a - b‖ ≤ r) (hr : r ≤ ‖P‖) :
    ‖(P * a + a ^ q) - (P * b + b ^ q)‖ ≤ ‖P‖ * r := by
  obtain ⟨m, rfl⟩ : ∃ m, q = m + 1 := ⟨q - 1, by omega⟩
  have hr0 : 0 ≤ r := (norm_nonneg _).trans hab
  obtain ⟨e, he, h⟩ := thq_pow_sub b (a - b) hb (by simpa using ha) m
  rw [add_sub_cancel] at h
  have h1 : (P * a + a ^ (m + 1)) - (P * b + b ^ (m + 1))
      = P * (a - b) + (a - b) * (((m + 1 : ℕ) : C) * b ^ m + e) := by
    rw [← h]; ring
  rw [h1]
  apply thq_add_le
  · rw [norm_mul]; gcongr
  · have h2 : ‖((m + 1 : ℕ) : C) * b ^ m + e‖ ≤ ‖P‖ := by
      apply thq_add_le
      · rw [norm_mul, norm_pow]
        have h3 : ‖b‖ ^ m ≤ 1 := pow_le_one₀ (norm_nonneg _) hb
        calc ‖((m + 1 : ℕ) : C)‖ * ‖b‖ ^ m ≤ ‖P‖ * 1 := by gcongr
          _ = ‖P‖ := mul_one _
      · exact he.trans (hab.trans hr)
    rw [norm_mul, mul_comm]
    gcongr

theorem thq_ball {P : C} {q : ℕ} (hP : ‖P‖ ≤ 1) {a : C} (ha : ‖a‖ ≤ 1) : ‖P * a + a ^ q‖ ≤ 1 := by
  apply thq_add_le
  · rw [norm_mul]
    calc ‖P‖ * ‖a‖ ≤ 1 * 1 := by gcongr
      _ = 1 := one_mul _
  · rw [norm_pow]; exact pow_le_one₀ (norm_nonneg _) ha

theorem thq_iter {P : C} {q : ℕ} (hq : 2 ≤ q) (hqP : ‖(q : C)‖ ≤ ‖P‖) (hP : ‖P‖ ≤ 1) (n : ℕ) :
    ∀ (a b : C) (r : ℝ), ‖a‖ ≤ 1 → ‖b‖ ≤ 1 → ‖a - b‖ ≤ r → r ≤ ‖P‖ →
      ‖ltIter P q n a - ltIter P q n b‖ ≤ ‖P‖ ^ n * r := by
  induction n with
  | zero => intro a b r _ _ hab _; simpa [ltIter] using hab
  | succ n ih =>
    intro a b r ha hb hab hr
    have hr0 : 0 ≤ r := (norm_nonneg _).trans hab
    have h1 := thq_step hq hqP ha hb hab hr
    have h2 : ‖P‖ * r ≤ ‖P‖ := by
      calc ‖P‖ * r ≤ 1 * r := by gcongr
        _ = r := one_mul _
        _ ≤ ‖P‖ := hr
    have h3 := ih _ _ _ (thq_ball hP ha) (thq_ball hP hb) h1 h2
    have e1 : ∀ x : C, ltIter P q (n + 1) x = ltIter P q n (P * x + x ^ q) := fun x => by
      simp only [ltIter, Function.iterate_succ_apply]
    rw [e1, e1]
    calc _ ≤ ‖P‖ ^ n * (‖P‖ * r) := h3
      _ = ‖P‖ ^ (n + 1) * r := by ring

theorem thq_map {B : Type} [CommRing B] (θ : B →+* C) (ϖ : B) (q n : ℕ) (x : B) :
    θ (ltIter ϖ q n x) = ltIter (θ ϖ) q n (θ x) := by
  induction n generalizing x with
  | zero => simp [ltIter]
  | succ n ih =>
    have e1 : ltIter ϖ q (n + 1) x = ltIter ϖ q n (ϖ * x + x ^ q) := by
      simp only [ltIter, Function.iterate_succ_apply]
    have e2 : ltIter (θ ϖ) q (n + 1) (θ x) = ltIter (θ ϖ) q n (θ ϖ * θ x + θ x ^ q) := by
      simp only [ltIter, Function.iterate_succ_apply]
    rw [e1, e2, ih]
    simp

theorem thq_tower {P : C} {q : ℕ} {w : ℕ → C} (h0 : w 0 = 0)
    (hw : ∀ n, w (n + 1) ^ q + P * w (n + 1) = w n) (n : ℕ) : ltIter P q n (w n) = 0 := by
  induction n with
  | zero => simpa [ltIter] using h0
  | succ n ih =>
    have e1 : ltIter P q (n + 1) (w (n + 1)) = ltIter P q n (P * w (n + 1) + w (n + 1) ^ q) := by
      simp only [ltIter, Function.iterate_succ_apply]
    rw [e1, add_comm, hw, ih]

end ThQ

theorem theta_eq_zero_of_congr_torsion : ∀ {B : Type} [CommRing B] {S : Subring B} {F : ℕ → Ideal B} {ϖ : B} {C : Type} [NormedField C] [IsUltrametricDist C], PerEnv S F ϖ →
    ∀ (θ : B →+* C), (∀ s ∈ S, ‖θ s‖ ≤ 1) → θ ϖ ≠ 0 → ‖θ ϖ‖ < 1 → ∀ (q : ℕ), 2 ≤ q → ‖(q : C)‖ ≤ ‖θ ϖ‖ →
    ∀ (v : ℕ → B), (∀ n, v n ∈ S) → ∀ (w : ℕ → C), w 0 = 0 → (∀ n, w (n + 1) ^ q + θ ϖ * w (n + 1) = w n) →
      (∀ n, ‖θ (v n) - w n‖ ≤ ‖θ ϖ‖) →
    ∀ Q ∈ S, (∀ n, ∃ a ∈ S, Q - ltIter ϖ q n (v n) = ϖ ^ (n + 1) * a) → θ Q = 0 := by
  intro B _ S F ϖ C _ _ _ θ hS _ hlt q hq hqP v hv w h0 hw hvw Q hQ hQn
  have hP : ‖θ ϖ‖ ≤ 1 := hlt.le
  have hwb : ∀ n, ‖w n‖ ≤ 1 := fun n => by
    have h1 : w n = θ (v n) + -(θ (v n) - w n) := by ring
    rw [h1]
    exact thq_add_le (hS _ (hv n)) (by rw [norm_neg]; exact (hvw n).trans hP)
  have hb : ∀ n, ‖θ Q‖ ≤ ‖θ ϖ‖ ^ (n + 1) := fun n => by
    obtain ⟨a, ha, hQa⟩ := hQn n
    have h1 : θ Q = ltIter (θ ϖ) q n (θ (v n)) + θ ϖ ^ (n + 1) * θ a := by
      have h2 : θ (Q - ltIter ϖ q n (v n)) = θ (ϖ ^ (n + 1) * a) := congrArg θ hQa
      rw [map_sub, thq_map, map_mul, map_pow] at h2
      rw [← h2]; ring
    have h3 := thq_iter hq hqP hP n (θ (v n)) (w n) _ (hS _ (hv n)) (hwb n) (hvw n) le_rfl
    rw [thq_tower h0 hw n, sub_zero] at h3
    rw [h1]
    apply thq_add_le
    · calc _ ≤ ‖θ ϖ‖ ^ n * ‖θ ϖ‖ := h3
        _ = ‖θ ϖ‖ ^ (n + 1) := by ring
    · rw [norm_mul, norm_pow]
      calc ‖θ ϖ‖ ^ (n + 1) * ‖θ a‖ ≤ ‖θ ϖ‖ ^ (n + 1) * 1 := by
            gcongr
            exact hS _ ha
        _ = ‖θ ϖ‖ ^ (n + 1) := mul_one _
  have hlim : Filter.Tendsto (fun n : ℕ => ‖θ ϖ‖ ^ (n + 1)) Filter.atTop (nhds 0) :=
    (tendsto_pow_atTop_nhds_zero_of_lt_one (norm_nonneg _) hlt).comp (Filter.tendsto_add_atTop_nat 1)
  have h0' : ‖θ Q‖ ≤ 0 := ge_of_tendsto' hlim hb
  exact norm_le_zero_iff.mp h0'

end GlobalTheory.CompanionTheory.LTPer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateTorsionApproximation =====

-- ===== clump member: Development.WeilBound.CoreStatements.HeckeCharacterDeRham.DeRhamHeckeResults.LAdicHeckeDeRham.LAdicHeckeFields.FieldOfLeaves =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HeckeCharacterDeRham.DeRhamHeckeResults.LAdicHeckeDeRham.LAdicHeckeFields.FieldOfLeaves", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.HeckeLAdicCharacterDeRham\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EvalMod\npublic import Development.WeilBound.CoreStatements.CrystallinePeriodRings.LocTied6\npublic import GroundTheory.PAdicHodge.UnramifiedClosure\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CharacterValuesIntegral\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateCommutingSeriesUnique\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HasPeriods\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateEndomorphismSeriesExists\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateIterateEventuallyZero\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateIterateLimitCongruence\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateLimitKernelZero\npublic import Development.WeilBound.CoreStatements.CrystallinePeriodRings.InstCommRingBcris\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateNormCyclotomic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateScaledIterateTends\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateSeriesCommuteLinear\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateSeriesDeRhamPeriod\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LubinTateTorsionApproximation\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemFBOfNear\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UniformizerPropertiesResidue\npublic import Development.WeilBound.CoreStatements.CrystallinePeriodRings.FilQuot\npublic import Development.WeilBound.CoreStatements.CrystallinePeriodRings.MaximalIdealEqSpanT\npublic import Development.WeilBound.CoreStatements.HeckeCharacterDeRham.DeRhamHeckeResults.LAdicHeckeDeRham.LAdicHeckeFields.Reduce\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerNearPowerExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TripleAtt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField IsDedekindDomain Neutral.B1 Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.L2.Host Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations
open GlobalTheory.HeckeGal GlobalTheory.Pst GlobalTheory.TripleGal GlobalTheory.CompanionTheory.LTHodge GlobalTheory.CompanionTheory.LTPer
open scoped Classical

namespace PositivityTheory.SecR.Hladr2

def TiltLeaf : Prop :=  ∀ {l : ℕ} [Fact l.Prime] (K : FinExt l) (χ : ↥(GK K) →* (↥K.1)ˣ) (π : ↥(OL K)) (z : ℕ → Om l),
    LTData K χ π z → ∀ μ : ↥K.1 →ₐ[ℚ_[l]] Om l,
    ∃ (r : ↥(OL K) →+* Tl l) (v : ℕ → Tl l),
      (∀ n, v (n + 1) ^ qOf π = v n) ∧ v 0 ≠ 0 ∧ ‖thB l (tch l (v 0))‖ < 1 ∧
      (∀ c, ∃ c', tch l (r c) = oB K μ (c + π * c')) ∧
      (∀ (g : GQ l) (hg : g ∈ GK K) (φ : PowerSeries ↥(OL K)), PowerSeries.constantCoeff φ = 0 →
        ((PowerSeries.coeff 1 φ : ↥(OL K)) : ↥K.1) = ((χ ⟨g, hg⟩ : (↥K.1)ˣ) : ↥K.1) →
        PowerSeries.subst φ (ltSeries π) = PowerSeries.subst (ltSeries π) φ →
        ∀ n D, v n ^ D ∣ actT g (v n) - ∑ i ∈ Finset.range D, r (PowerSeries.coeff i φ) * v n ^ i) ∧
      (μ = K.1.val → ∀ n, ‖thB l (tch l (v n)) - ((z n : Om l) : ℂ_[l])‖ ≤ ‖(((π : ↥K.1) : Om l) : ℂ_[l])‖)

def ProductLeaf : Prop :=  ∀ {l : ℕ} [Fact l.Prime] (K : FinExt l) (χ : ↥(GK K) →* (↥K.1)ˣ),
    (∀ (g : GQ l) (hg : g ∈ GK K), (∀ u ∈ GroundTheory.PAdicHodge.unramifiedClosure l, g u = u) →
      Algebra.norm ℚ_[l] ((χ ⟨g, hg⟩ : (↥K.1)ˣ) : ↥K.1) =
        (((GroundTheory.PAdicHodge.cycloChar ⊥ (Formalism.Per6.toBot g) : ℤ_[l]ˣ) : ℤ_[l]) : ℚ_[l])) →
    ∀ t : (↥K.1 →ₐ[ℚ_[l]] Om l) → Formalism.Per6.BdRp l, (∀ μ, PrePer K χ μ (t μ)) →
      ∀ μ, (μ = K.1.val → t μ ∉ FB l 2) ∧ (μ ≠ K.1.val → t μ ∉ FB l 1)

variable {l : ℕ} [Fact l.Prime]

theorem actB_rB (g : GQ l) (x : Om l) : actB g (rB l x) = rB l (g x) :=
  GroundTheory.PAdicHodge.gal_smul_algClToBdR (Formalism.Per6.toBot g) x

theorem actB_tch (g : GQ l) (x : Tl l) : actB g (tch l x) = tch l (actT g x) := by
  change Formalism.Per6.toBot g • (GroundTheory.PAdicHodge.wittToBDeRhamPlus _ l (WittVector.teichmuller l x)) = _
  rw [GroundTheory.PAdicHodge.gal_smul_wittToBDeRhamPlus, GroundTheory.PAdicHodge.AInf.gal_smul_teichmuller]
  rfl

theorem thB_rB (x : Om l) : thB l (rB l x) = ((x : Om l) : ℂ_[l]) :=
  GroundTheory.PAdicHodge.thetaAlgHom_algClToBdR l x

theorem thB_actB_zero (g : GQ l) {x : Formalism.Per6.BdRp l} (hx : thB l x = 0) : thB l (actB g x) = 0 := by
  have h := GroundTheory.PAdicHodge.thetaBDeRhamPlusField_gal_smul (Formalism.Per6.toBot g) x
  have h2 : GroundTheory.PAdicHodge.IsPerfectoidField.thetaBDeRhamPlusField l x = 0 := by
    rw [← hx]; exact (GroundTheory.PAdicHodge.thetaAlgHom_apply l x).symm
  rw [h2, smul_zero] at h
  rw [← h]
  exact GroundTheory.PAdicHodge.thetaAlgHom_apply l _

theorem actB_FB (g : GQ l) (k : ℕ) (x : Formalism.Per6.BdRp l) (hx : x ∈ FB l k) : actB g x ∈ FB l k := by
  have h1 : Ideal.map (actB g) (RingHom.ker (thB l)) ≤ RingHom.ker (thB l) :=
    Ideal.map_le_iff_le_comap.2 fun y hy => thB_actB_zero g hy
  have h2 := Ideal.mem_map_of_mem (actB g) hx
  rw [FB, Ideal.map_pow] at h2
  exact Ideal.pow_right_mono h1 k h2

theorem tch_pow (x : Tl l) (n : ℕ) : tch l (x ^ n) = tch l x ^ n := by
  simp only [tch, map_pow]

theorem iter_near {B : Type} [CommRing B] {S : Subring B} {ϖ : B} (hϖ : ϖ ∈ S) (q : ℕ) {Q b : B} (hQ : Q ∈ S)
    (hb : b ∈ S) (h : ∃ s ∈ S, Q - b = ϖ * s) (n : ℕ) :
    ltIter ϖ q n Q ∈ S ∧ ∃ s ∈ S, ltIter ϖ q n Q - b ^ (q ^ n) = ϖ * s := by
  induction n with
  | zero => simpa [ltIter] using ⟨hQ, h⟩
  | succ n ih =>
    obtain ⟨h1, h2⟩ := ih
    have e : ltIter ϖ q (n + 1) Q = ϖ * ltIter ϖ q n Q + ltIter ϖ q n Q ^ q := by
      simp only [ltIter, Function.iterate_succ_apply']
    have hbn : b ^ (q ^ n) ∈ S := S.pow_mem hb _
    obtain ⟨s, hs, e2⟩ := _root_.GlobalTheory.CompanionTheory.LTPer.LogConv.pow_congr' h1 hbn h2 q
    refine ⟨by rw [e]; exact S.add_mem (S.mul_mem hϖ h1) (S.pow_mem h1 _), ltIter ϖ q n Q + s,
      S.add_mem h1 hs, ?_⟩
    rw [e, pow_succ q n, pow_mul]
    linear_combination e2

end PositivityTheory.SecR.Hladr2

namespace PositivityTheory.SecR.Hladr2
variable {l : ℕ} [Fact l.Prime]

theorem pre_period (HT : TiltLeaf) (K : FinExt l) (χ : ↥(GK K) →* (↥K.1)ˣ) (π : ↥(OL K)) (z : ℕ → Om l)
    (hD : LTData K χ π z) (hc : Continuous (fun g => (((χ g : (↥K.1)ˣ) : ↥K.1) : Om l)))
    (μ : ↥K.1 →ₐ[ℚ_[l]] Om l) : ∃ t, PrePer K χ μ t := by
  have hπ : Irreducible π := hD.1
  obtain ⟨hq2, hlq, hπl, hnπ, hnμ⟩ := _root_.GlobalTheory.CompanionTheory.LTPer.uniformiser_facts K π hπ
  haveI : FiniteDimensional ℚ_[l] ↥K.1 := K.2
  let K' : IntermediateField ℚ_[l] (Om l) := IntermediateField.normalClosure ℚ_[l] ↥K.1 (Om l)
  haveI : FiniteDimensional ℚ_[l] K' := inferInstance
  haveI : Normal ℚ_[l] K' := inferInstance
  obtain ⟨S, hW, hO, hG, hI, hE⟩ := GlobalTheory.CompanionTheory.LTPer.lattice_main K'
  have hμK : ∀ x, μ x ∈ K' := fun x => AlgHom.fieldRange_le_normalClosure μ ⟨x, rfl⟩
  have hint : ∀ c : ↥(OL K), IsIntegral ℤ_[l] (μ (c : ↥K.1)) := fun c =>
    IsIntegral.map (μ.restrictScalars ℤ_[l]) c.2
  have hoB : ∀ c, oB K μ c ∈ S := fun c => hO _ (hμK _) (hint c)
  have hne : μ (π : ↥K.1) ≠ 0 := by
    have h0 : (π : ↥K.1) ≠ 0 := fun h => hπ.ne_zero (Subtype.ext h)
    exact (map_ne_zero_iff μ μ.toRingHom.injective).2 h0
  obtain ⟨E, hnot⟩ := hE _ (hμK _) (hint π) hne (hnμ μ)
  have hϖe : rB l (μ (π : ↥K.1)) = oB K μ π := rfl
  rw [hϖe] at E hnot
  obtain ⟨ϖ', hϖ'⟩ := E.unit.exists_right_inv
  set ϖ := oB K μ π with hϖ
  obtain ⟨r, v, hvq, hv0, hv1, hr, hrg, hrz⟩ := HT K χ π z hD μ
  set q := qOf π with hq
  have hqd : ∃ s ∈ S, (q : Formalism.Per6.BdRp l) = ϖ * s := by
    obtain ⟨d, hd⟩ := hπl
    obtain ⟨q', hq'⟩ := hlq
    refine ⟨oB K μ (d * (q' : ↥(OL K))), hoB _, ?_⟩
    rw [hϖ, ← map_mul, ← mul_assoc, ← hd, hq']
    simp
  have hvS : ∀ n, tch l (v n) ∈ S := fun n => hW _
  have hvB : ∀ n, tch l (v (n + 1)) ^ q = tch l (v n) := fun n => by rw [← tch_pow, hvq]
  obtain ⟨Q, hQS, hQ⟩ := _root_.GlobalTheory.CompanionTheory.LTPer.QLim.exists_limit E q hq2 hqd (fun n => tch l (v n)) hvS hvB
  have hθϖ : ‖thB l ϖ‖ < 1 := by
    rw [← hϖe, thB_rB]; exact hnμ μ
  have hθϖ0 : thB l ϖ ≠ 0 := by
    rw [← hϖe, thB_rB]
    exact (map_ne_zero_iff (UniformSpace.Completion.coeRingHom : Om l →+* ℂ_[l])
      (RingHom.injective _)).2 hne
  have hnil0 := _root_.GlobalTheory.CompanionTheory.LTPer.TopNil.main S hW ϖ hθϖ0 (v 0) hv1
  have hQ0 : ∃ s ∈ S, Q - tch l (v 0) = ϖ * s := by
    obtain ⟨a, ha, e⟩ := hQ 0
    exact ⟨a, ha, by simpa [ltIter] using e⟩
  have hnilQ : ∃ M : ℕ, 0 < M ∧ Near S ϖ (FB l 1) 1 (Q ^ M) := by
    obtain ⟨M, hM, s, hs, e⟩ := hnil0
    obtain ⟨s', hs', e'⟩ := _root_.GlobalTheory.CompanionTheory.LTPer.LogConv.pow_congr' hQS (hvS 0) hQ0 M
    refine ⟨M, hM, s + s', S.add_mem hs hs', ?_⟩
    have : Q ^ M - ϖ ^ 1 * (s + s') = tch l (v 0) ^ M - ϖ ^ 1 * s := by
      rw [pow_one] at *
      linear_combination e'
    rwa [this]
  obtain ⟨t, ht⟩ := _root_.GlobalTheory.CompanionTheory.LTPer.LogConv.log_converges E ϖ' hϖ' q hq2 Q hQS hnilQ
  have hkerF : ∀ x, thB l x = 0 ↔ x ∈ FB l 1 := fun x => by
    rw [FB, pow_one, RingHom.mem_ker]
  refine ⟨t, ?_, ?_, ?_⟩
  · rintro rfl
    obtain ⟨n, hn⟩ := _root_.GlobalTheory.CompanionTheory.LTPer.exists_ltIter_eq_zero_of_tends E ϖ' hϖ' (thB l) hkerF hI hθϖ q hq2 Q hQS hnilQ ht
    obtain ⟨-, s, hs, e⟩ := iter_near E.mem q hQS (hvS 0) hQ0 n
    rw [hn, zero_sub, ← tch_pow] at e
    refine hnot (v 0 ^ (q ^ n)) (pow_ne_zero _ hv0) (-s) (S.neg_mem hs) ?_
    rw [mul_neg, ← e, neg_neg]
  · intro g hg hfix
    obtain ⟨a, ha⟩ := _root_.GlobalTheory.CompanionTheory.LTPer.IntVal.integral_values K χ hc ⟨g, hg⟩
    obtain ⟨φ, hφ0, hφ1, hφc⟩ := _root_.GlobalTheory.CompanionTheory.LTPer.exists_series_comm K π hπ a
    have hφ1' : ((PowerSeries.coeff 1 φ : ↥(OL K)) : ↥K.1) = ((χ ⟨g, hg⟩ : (↥K.1)ˣ) : ↥K.1) := by
      rw [hφ1, ha]
    have hσϖ : actB g ϖ = ϖ := by
      rw [← hϖe, actB_rB, hfix]
    have hnil : ∀ n, ‖thB l (tch l (v n))‖ < 1 := fun n => by
      have h1 : ∀ n, tch l (v n) ^ (q ^ n) = tch l (v 0) := by
        intro n
        induction n with
        | zero => simp
        | succ n ih => rw [pow_succ', pow_mul, hvB, ih]
      have h2 : ‖thB l (tch l (v n))‖ ^ (q ^ n) < 1 := by
        rw [← norm_pow, ← map_pow, h1]; exact hv1
      by_contra h3
      exact absurd h2 (not_lt.2 (one_le_pow₀ (not_lt.1 h3)))
    have hev1 : ∀ n, EvalMod S (FB l) ϖ (oB K μ) φ (tch l (v n)) (actB g (tch l (v n))) 1 := fun n => by
      rw [actB_tch]
      exact _root_.GlobalTheory.CompanionTheory.LTPer.Glue.evalMod_teichmuller K μ π S hW hoB E hπl r hr (v n) (actT g (v n)) (hnil n) φ
        (fun D => hrg g hg φ hφ0 hφ1' hφc n D)
    have hevQ := _root_.GlobalTheory.CompanionTheory.LTPer.evalMod_sigma_of_congr E (oB K μ) hoB π rfl q hq2 hqd φ hφ0 hφc (actB g) (hG g) (fun k x hx => actB_FB g k x hx)
      hσϖ (fun n => tch l (v n)) hvS hvB hnil0 Q hQS hQ hev1
    have := _root_.GlobalTheory.CompanionTheory.LTPer.galois_log E ϖ' hϖ' (oB K μ) hoB π rfl q hq2 hqd φ hφ0 hφc (actB g) (hG g)
      (fun k x hx => actB_FB g k x hx) hσϖ Q hQS hnilQ hevQ t ht
    rw [this]
    congr 1
    change rB l (μ (algebraMap ↥(OL K) ↥K.1 (PowerSeries.coeff 1 φ))) = _
    congr 2
  · intro hμ
    have hθQ : thB l Q = 0 := by
      refine _root_.GlobalTheory.CompanionTheory.LTPer.theta_eq_zero_of_congr_torsion E (thB l) hI hθϖ0 hθϖ q hq2 ?_ (fun n => tch l (v n)) hvS (fun n => ((z n : Om l) : ℂ_[l])) ?_ ?_ ?_ Q hQS hQ
      · obtain ⟨s, hs, e⟩ := hqd
        rw [← map_natCast (thB l), e, map_mul, norm_mul]
        exact mul_le_of_le_one_right (norm_nonneg _) (hI s hs)
      · have := hD.2.1
        rw [this]; simp
      · intro n
        have h := hD.2.2.2.1 n
        have h2 := congrArg (UniformSpace.Completion.coeRingHom : Om l →+* ℂ_[l]) h
        rw [map_add (f := _), map_mul, map_pow] at h2
        have e : thB l ϖ = (((π : ↥K.1) : Om l) : ℂ_[l]) := by
          rw [← hϖe, thB_rB, hμ]; rfl
        rw [e]
        exact h2
      · intro n
        have e : thB l ϖ = (((π : ↥K.1) : Om l) : ℂ_[l]) := by
          rw [← hϖe, thB_rB, hμ]; rfl
        rw [e]
        exact hrz hμ n
    exact _root_.GlobalTheory.CompanionTheory.LTPer.theta_period_eq_zero_of_theta_eq_zero E ϖ' hϖ' (thB l) hkerF hI hθϖ q hq2 Q hθQ t ht

end PositivityTheory.SecR.Hladr2

namespace PositivityTheory.SecR.Hladr2
variable {l : ℕ} [Fact l.Prime]

theorem ker_thB : RingHom.ker (thB l) = RingHom.ker (Formalism.Per6.θD l) := by
  ext x
  rw [RingHom.mem_ker, RingHom.mem_ker]
  exact iff_of_eq (congrArg (· = (0 : ℂ_[l])) (GroundTheory.PAdicHodge.thetaAlgHom_apply l x))

theorem σD_algebraMap (g : GQ l) (y : Formalism.Per6.BdRp l) :
    Formalism.Per6.σD g (algebraMap (Formalism.Per6.BdRp l) (Formalism.Per6.BdR l) y) =
      algebraMap (Formalism.Per6.BdRp l) (Formalism.Per6.BdR l) (actB g y) :=
  GroundTheory.PAdicHodge.galBdRField_algebraMap (Formalism.Per6.toBot g) y

theorem fil_iff {P : LocPrime l} {AI : LocAinf l P} (T : LocTied6 l P AI) (K : FinExt l) (n : ℕ) {x : P.R.BdR}
    {y : Formalism.Per6.BdRp l} (h : T.eD x = algebraMap (Formalism.Per6.BdRp l) (Formalism.Per6.BdR l) y) :
    x ∈ (P.PD K).Fil (n : ℤ) ↔ y ∈ FB l n := by
  rw [PositivityTheory.LocInh.filq_tie_fil T K n h, FB, ker_thB]

theorem hasPeriods_main (HT : TiltLeaf) (HP : ProductLeaf) {l : ℕ} [Fact l.Prime] (P : LocPrime l) (AI : LocAinf l P) (hT : Nonempty (LocTied6 l P AI))
    (K : FinExt l) (χ : ↥(GK K) →* (↥K.1)ˣ) (hLT : IsLTChar K χ)
    (hc : Continuous (fun g => (((χ g : (↥K.1)ˣ) : ↥K.1) : Om l))) : HasPeriods P K χ := by
  obtain ⟨T⟩ := hT
  have hN := _root_.GlobalTheory.CompanionTheory.LTNorm.norm_eq_cyclo K χ hLT hc
  obtain ⟨π, z, hD⟩ := hLT
  choose t ht using fun μ => pre_period HT K χ π z hD hc μ
  have hP := HP K χ hN t ht
  intro μ
  obtain ⟨y, hy⟩ : ∃ y : P.R.BdR, T.eD y = algebraMap (Formalism.Per6.BdRp l) (Formalism.Per6.BdR l) (t μ) :=
    ⟨_, T.eD.apply_symm_apply _⟩
  have f1 := fil_iff T K 1 hy
  have f2 := fil_iff T K 2 hy
  have f0 := fil_iff T K 0 hy
  rw [Nat.cast_one] at f1
  rw [Nat.cast_ofNat] at f2
  rw [Nat.cast_zero] at f0
  have hF1 : thB l (t μ) = 0 → t μ ∈ FB l 1 := fun h => by
    rw [FB, pow_one]; exact h
  refine ⟨y, ?_, ?_, ?_⟩
  · intro g hg hfix
    apply T.eD.injective
    rw [T.actD, map_mul, hy, PositivityTheory.LocInh.tie_o, σD_algebraMap, (ht μ).2.1 g hg hfix, map_mul]
    rfl
  · intro hμ
    exact ⟨f1.2 (hF1 ((ht μ).2.2 hμ)), fun h => (hP μ).1 hμ (f2.1 h)⟩
  · intro hμ
    refine ⟨f0.2 ?_, fun h => (hP μ).2 hμ (f1.1 h)⟩
    rw [FB, pow_zero, Ideal.one_eq_top]; exact Submodule.mem_top

end PositivityTheory.SecR.Hladr2

theorem PositivityTheory.SecR.Hladr2.field_of_leaves (HT : PositivityTheory.SecR.Hladr2.TiltLeaf) (HP : PositivityTheory.SecR.Hladr2.ProductLeaf) :
    GlobalTheory.Published.HeckeLAdicCharacterDeRham :=
  PositivityTheory.SecR.Hladr.field_of_ltPeriods fun P AI hT K χ hLT hc => PositivityTheory.SecR.Hladr2.hasPeriods_main HT HP P AI hT K χ hLT hc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HeckeCharacterDeRham.DeRhamHeckeResults.LAdicHeckeDeRham.LAdicHeckeFields.FieldOfLeaves =====
