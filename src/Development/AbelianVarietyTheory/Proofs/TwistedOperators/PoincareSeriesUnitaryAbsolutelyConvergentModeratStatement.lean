module

public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.DepthPays
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNsmulMemOfSpan
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuotientHeightLowerBoundShortIsotropicVector
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsHeightLeTwoMulQuotHeight
public import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.ExistsInfFamAndStdChar
public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsFinNormComparison
public import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.LevelPlusSubgroup
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.PackingGeometricMeanSeparated
public import Formalism.LocalToGlobal.Columns.Adelic
public import Development.AbelianVarietyTheory.Proofs.HeightProofs.UnitaryAdelicHeightCosetLeNormInfPow
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HeckeCharInfinityEqCoeffMulHalfNormPow
public import Formalism.LocalToGlobal.Columns.TiedTilA
import Formalism.LocalToGlobal.Columns.AdelicLemmas
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.HeightProofs.UnitaryLatticeDenominatorHeightBoundProof
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt
import Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral
import Development.AbelianVarietyTheory.Definitions.Divisors.CmHostImaginaryGeneratorNeZero
import Development.AbelianVarietyTheory.Definitions.Divisors.NatCastSmulMemHatL
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsVacFOfIsVacVec
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.OffQOfSizeRows
import Mathlib.Algebra.Ring.IsFormallyReal
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsModGrowthExpLeNormInfPow
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsCommonDenominatorSelfDualLevel, Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsCommonDenominatorSelfDualLevelStatement, Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsFinitePartDenominatorLeHeightPow, Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsFinitePartDenominatorLeHeightPowStatement, Development.AbelianVarietyTheory.Proofs.TwistedOperators.SumProductWeightsLeOfSeparatedGeometricMean, Development.AbelianVarietyTheory.Proofs.TwistedOperators.PoincareSeriesUnitaryAbsolutelyConvergentModerat, Development.AbelianVarietyTheory.Proofs.TwistedOperators.PoincareSeriesUnitaryAbsolutelyConvergentModeratStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsCommonDenominatorSelfDualLevel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsCommonDenominatorSelfDualLevel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.DepthPays\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNsmulMemOfSpan\nimport Formalism.LocalToGlobal.Columns.AdelicLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.Grow
open GlobalTheory.IndefiniteRowSideFullHecke.LevelPlusSubgroup (coefPlus Cols SizeRows)
open GlobalTheory.ChainFr GlobalTheory.SepRows GlobalTheory.SepPer Matrix
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.LevelDenom

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n : ℕ}

theorem natCast_smul_mem_hatL_std (Λ : Submodule (𝓞 E) (Fin n → E)) (c : ℕ)
    (hc : ∀ y ∈ Λ, c • y ∈ Formalism.L2.Col.stdLat E n) (x : Fin n → E ⊗[F] Formalism.L2.Herm.Af F)
    (hx : x ∈ Formalism.L2.Herm.hatL (F := F) Λ) :
    (c : E ⊗[F] Formalism.L2.Herm.Af F) • x ∈ Formalism.UG.latS (F := F) (Formalism.L2.Herm.Af F) (Formalism.L2.Herm.intAf F E) (Formalism.L2.Col.stdLat E n) := by
  unfold Formalism.L2.Herm.hatL Formalism.UG.latS at hx
  induction hx using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨l, hl, rfl⟩ := hy
    apply Submodule.subset_span
    refine ⟨c • l, hc l hl, ?_⟩
    funext i
    simp [nsmul_eq_mul, map_mul, map_natCast]
  | zero => simp
  | add a b _ _ ha hb => rw [smul_add]; exact add_mem ha hb
  | smul a y _ hy =>
    rw [smul_comm]
    exact Submodule.smul_mem _ a hy

theorem exists_nsmul_le_std (Λ : Submodule (𝓞 E) (Fin n → E)) (hfg : Λ.FG) :
    ∃ c : ℕ, 0 < c ∧ ∀ y ∈ Λ, c • y ∈ Formalism.L2.Col.stdLat E n := by
  obtain ⟨S, hS⟩ := hfg
  obtain ⟨c, hc, h⟩ := GlobalTheory.LatSandwich.exists_nsmul_le S (Formalism.L2.Pj.stdLat E n)
    (fun x _ => GlobalTheory.LatSandwich.exists_nsmul_mem_stdLat x)
  exact ⟨c, hc, fun y hy => h y (by rw [hS]; exact hy)⟩

theorem exists_nsmul_single_mem (Λ : Submodule (𝓞 E) (Fin n → E)) (hsp : Submodule.span E (Λ : Set (Fin n → E)) = ⊤) :
    ∃ c : ℕ, 0 < c ∧ ∀ j, c • (Pi.single j (1 : E) : Fin n → E) ∈ Λ := by
  classical
  obtain ⟨c, hc, h⟩ := GlobalTheory.LatSandwich.exists_nsmul_le (Finset.univ.image fun j : Fin n => (Pi.single j (1 : E) : Fin n → E)) Λ
    (fun x _ => _root_.GlobalTheory.NatMulMemUnitaryExistence.main Λ hsp x)
  exact ⟨c, hc, fun j => h _ (Submodule.subset_span (by simp))⟩

end GlobalTheory.LevelDenom

namespace GlobalTheory.LevelDenom

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E] [Algebra F E] {n : ℕ}

theorem exists_denom_stab (hc : Formalism.BasicNotions.CMData F E) (J : Matrix (Fin n) (Fin n) E) (Λ : Submodule (𝓞 E) (Fin n → E))
    (hfg : Λ.FG) (hsp : Submodule.span E (Λ : Set (Fin n → E)) = ⊤) :
    ∃ b : ℕ, 0 < b ∧ ∀ k ∈ congLev hc J Λ ⊤, ∀ i j,
      (b : E ⊗[F] Formalism.L2.Herm.Af F) * k.1 i j ∈ Formalism.L2.Herm.intAf F E := by
  classical
  obtain ⟨a, ha, hae⟩ := exists_nsmul_single_mem Λ hsp
  obtain ⟨c, hc0, hce⟩ := exists_nsmul_le_std Λ hfg
  refine ⟨a * c, Nat.mul_pos ha hc0, fun k hk i j => ?_⟩
  have hs := hk.2.1
  have hzmem : (fun l => Formalism.UG.inclE (Formalism.L2.Herm.Af F) ((a • (Pi.single j (1 : E) : Fin n → E)) l)) ∈
      Formalism.L2.Herm.hatL (F := F) Λ := Submodule.subset_span ⟨_, hae j, rfl⟩
  have ez : (fun l => Formalism.UG.inclE (Formalism.L2.Herm.Af F) ((a • (Pi.single j (1 : E) : Fin n → E)) l)) =
      (a : E ⊗[F] Formalism.L2.Herm.Af F) • (Pi.single j 1 : Fin n → E ⊗[F] Formalism.L2.Herm.Af F) := by
    funext l
    by_cases e : l = j
    · subst e; simp [nsmul_eq_mul]
    · simp [Pi.single_eq_of_ne e]
  rw [ez] at hzmem
  have hkz := (hs _).1 hzmem
  have h2 := natCast_smul_mem_hatL_std Λ c hce _ hkz
  rw [Formalism.L2.Col.mem_latS_std] at h2
  have h3 := h2 i
  rw [Matrix.mulVec_smul] at h3
  convert h3 using 1
  simp [mul_left_comm, mul_assoc]

end GlobalTheory.LevelDenom

namespace GlobalTheory.LevelDenom

theorem exists_denom_congLev : ∀ (D : D7) (V : HSp D) (Λ : Lat V), IsSelfDualC V Λ → ∃ b : ℕ, 0 < b ∧ ∀ k ∈ congLev D.sp.cm V.gram Λ ⊤, ∀ i j, (b : Lev.EAf D) * k.1 i j ∈ Formalism.L2.Herm.intAf D.host.F D.host.E := by
  intro D V Λ hΛ
  classical
  haveI := hΛ.1
  obtain ⟨c, hc, hcΛ⟩ := exists_nsmul_le_std Λ (Submodule.IsLattice.fg D.host.E Λ)
  have hsp : Submodule.span D.host.E (Λ : Set (Fin V.rank → D.host.E)) = ⊤ := by
    apply top_unique
    intro y _
    let t : Fin V.rank → D.host.E := fun i => ∑ j, V.gram i j * y j
    obtain ⟨d, hd, hdt⟩ := GlobalTheory.LatSandwich.exists_nsmul_mem_stdLat t
    have hy : (c * d) • y ∈ Λ := by
      apply (hΛ.2 _).2
      intro x hx
      have hcx := (GlobalTheory.LatSandwich.mem_stdLat_iff _).1 (hcΛ x hx)
      have hdt' := (GlobalTheory.LatSandwich.mem_stdLat_iff _).1 hdt
      have hint : IsIntegral ℤ (∑ i, star ((c • x) i) * (d • t) i) := by
        apply IsIntegral.sum
        intro i _
        exact ((hcx i).map (starRingEnd D.host.E).toIntAlgHom).mul (hdt' i)
      refine ⟨⟨_, hint⟩, ?_⟩
      change (∑ i, star ((c • x) i) * (d • t) i) = _
      simp only [t, Pi.smul_apply, nsmul_eq_mul, Nat.cast_mul, star_mul, star_natCast,
        Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      apply Finset.sum_congr rfl
      intro j _
      ring
    have hm : (c * d) • y ∈ Submodule.span D.host.E (Λ : Set (Fin V.rank → D.host.E)) :=
      Submodule.subset_span hy
    have hn : (c * d : D.host.E) ≠ 0 := by
      exact mul_ne_zero (Nat.cast_ne_zero.mpr (Nat.ne_of_gt hc))
        (Nat.cast_ne_zero.mpr (Nat.ne_of_gt hd))
    have hm' : (c * d : D.host.E) • y ∈ Submodule.span D.host.E (Λ : Set (Fin V.rank → D.host.E)) := by
      simpa [Nat.cast_mul, ← Nat.cast_smul_eq_nsmul D.host.E] using hm
    have := Submodule.smul_mem (Submodule.span D.host.E (Λ : Set (Fin V.rank → D.host.E))) (c * d : D.host.E)⁻¹ hm'
    simpa only [smul_smul, inv_mul_cancel₀ hn, one_smul] using this
  exact exists_denom_stab D.sp.cm V.gram Λ (Submodule.IsLattice.fg D.host.E Λ)
    hsp

end GlobalTheory.LevelDenom
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsCommonDenominatorSelfDualLevel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsCommonDenominatorSelfDualLevelStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsCommonDenominatorSelfDualLevelStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.DepthPays\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsCommonDenominatorSelfDualLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.Grow
open GlobalTheory.IndefiniteRowSideFullHecke.LevelPlusSubgroup (coefPlus Cols SizeRows)
open GlobalTheory.ChainFr GlobalTheory.SepRows GlobalTheory.SepPer Matrix
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsCommonDenominatorSelfDualLevelStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsFinitePartDenominatorLeHeightPow =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsFinitePartDenominatorLeHeightPow", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuotientHeightLowerBoundShortIsotropicVector\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsHeightLeTwoMulQuotHeight\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.UnitaryLatticeDenominatorHeightBoundProof\npublic import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.ExistsInfFamAndStdChar\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsFinNormComparison\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt\nimport Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR
open IsDedekindDomain NumberField Matrix
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.PointDenom

open GlobalTheory.HolDict.ShortVec (intRing)

section
variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

local notation "𝔸" => Af F

theorem tmul_mem {x : E} (hx : IsIntegral ℤ x) {a : 𝔸} (ha : a ∈ intRing F) :
    x ⊗ₜ[F] a ∈ Formalism.L2.Herm.intAf F E := by
  have e1 : x ⊗ₜ[F] a = (x ⊗ₜ[F] (1 : 𝔸)) * ((1 : E) ⊗ₜ[F] a) := by
    rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
  rw [e1]
  exact mul_mem (Subring.subset_closure (Or.inl ⟨⟨x, ⟨⟨_, hx⟩, rfl⟩⟩, rfl⟩))
    (Subring.subset_closure (Or.inr ⟨⟨a, fun v => Subring.mem_iInf.1 ha v⟩, rfl⟩))

theorem natCast_mul_tmul (c e : ℕ) (x : E) (a : 𝔸) :
    ((c * e : ℕ) : E ⊗[F] 𝔸) * (x ⊗ₜ[F] a) = ((c : E) * x) ⊗ₜ[F] ((e : 𝔸) * a) := by
  rw [← nsmul_eq_mul, ← nsmul_eq_mul, ← nsmul_eq_mul, mul_smul, TensorProduct.tmul_smul, TensorProduct.smul_tmul',
    ← TensorProduct.smul_tmul', ← TensorProduct.smul_tmul', smul_comm]

theorem comm_eq_sum {m : ℕ} (b : Module.Basis (Fin m) F E) (z : 𝔸 ⊗[F] E) :
    Algebra.TensorProduct.comm F 𝔸 E z = ∑ k, b k ⊗ₜ[F] (Algebra.TensorProduct.basis 𝔸 b).repr z k := by
  conv_lhs => rw [← (Algebra.TensorProduct.basis 𝔸 b).sum_repr z]

  rw [map_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [Algebra.TensorProduct.basis_apply, TensorProduct.smul_tmul', smul_eq_mul, mul_one,
    Algebra.TensorProduct.comm_tmul]

theorem exists_denom_comm {m : ℕ} (b : Module.Basis (Fin m) F E) : ∃ c : ℕ, 0 < c ∧ ∀ (e : ℕ) (z : 𝔸 ⊗[F] E),
      (∀ k, (e : 𝔸) * (Algebra.TensorProduct.basis 𝔸 b).repr z k ∈ intRing F) →
      ((c * e : ℕ) : E ⊗[F] 𝔸) * Algebra.TensorProduct.comm F 𝔸 E z ∈ Formalism.L2.Herm.intAf F E := by
  obtain ⟨c, hc, h⟩ := GlobalTheory.HolDict.ShortVec.exists_common_denom (integralClosure ℤ E).toSubring b fun k => by
    obtain ⟨k, hk, r, hr⟩ := _root_.GlobalTheory.NatMulMemRingOfIntegers.exists_nat_mul_mem_ringOfIntegers (b k)
    exact ⟨k, hk, hr ▸ r.2⟩
  refine ⟨c, hc, fun e z hz => ?_⟩
  rw [comm_eq_sum b, Finset.mul_sum]
  refine Subring.sum_mem _ fun k _ => ?_
  rw [natCast_mul_tmul]
  exact tmul_mem (h k) (hz k)

end

theorem exists_denom_le_height_pow : ∀ (D : D7) (V : HSp D), ∃ (C : ℝ) (A : ℕ), ∀ g : GA D V, ∃ d : ℕ, 0 < d ∧
    (d : ℝ) ≤ C * GlobalTheory.Grow.height V g ^ A ∧
    ∀ i j, (d : Lev.EAf D) * (Lev.finE V g).1 i j ∈ Formalism.L2.Herm.intAf D.host.F D.host.E := by
  intro D V
  obtain ⟨θ, hθ⟩ := (GlobalTheory.Ker.exists_infFam_and_stdChar D).1
  obtain ⟨C, -, hC⟩ := GlobalTheory.Grow.height_comparison V hθ
  obtain ⟨c, hc, h⟩ := exists_denom_comm (Module.finBasis D.host.F D.host.E)
  refine ⟨c * C, 1, fun g => ?_⟩
  obtain ⟨d, hd, hdH, hint⟩ := GlobalTheory.HolDict.ShortVec.exists_denom_le_height θ (V := V) g
  refine ⟨c * d, Nat.mul_pos hc hd, ?_, fun i j => h d _ (hint i j)⟩
  rw [pow_one, Nat.cast_mul, mul_assoc]
  exact mul_le_mul_of_nonneg_left (hdH.trans (hC g).1) (Nat.cast_nonneg c)

end GlobalTheory.PointDenom
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsFinitePartDenominatorLeHeightPow =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsFinitePartDenominatorLeHeightPowStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsFinitePartDenominatorLeHeightPowStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsHeightLeTwoMulQuotHeight\npublic import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsFinitePartDenominatorLeHeightPow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.LevelPlusSubgroup\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CmHostImaginaryGeneratorNeZero\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NatCastSmulMemHatL\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.DepthPays\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsVacFOfIsVacVec\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.OffQOfSizeRows\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.Grow
open GlobalTheory.IndefiniteRowSideFullHecke.LevelPlusSubgroup (coefPlus Cols SizeRows)
open GlobalTheory.ChainFr GlobalTheory.SepRows GlobalTheory.SepPer Matrix
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsFinitePartDenominatorLeHeightPowStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.SumProductWeightsLeOfSeparatedGeometricMean =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.SumProductWeightsLeOfSeparatedGeometricMean", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.DepthPays\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.PackingGeometricMeanSeparated\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.SepPer Finset

namespace GlobalTheory.SepSum

attribute [local instance] Matrix.frobeniusNormedAddCommGroup Matrix.frobeniusNormedSpace

theorem hsn_eq_norm {n : ℕ} (X : Matrix (Fin n) (Fin n) ℂ) : hsn X = ‖X‖ := by
  rw [Matrix.frobenius_norm_def, hsn, Real.sqrt_eq_rpow]
  congr 1
  simp only [Real.rpow_two]

theorem hsn_nonneg {n : ℕ} (X : Matrix (Fin n) (Fin n) ℂ) : 0 ≤ hsn X := Real.sqrt_nonneg _

theorem finrank_mat (n : ℕ) : Module.finrank ℝ (Matrix (Fin n) (Fin n) ℂ) = 2 * n ^ 2 := by
  rw [Module.finrank_matrix, Complex.finrank_real_complex]
  simp only [Fintype.card_fin]
  ring

theorem dyadic (x : ℝ) (hx : 0 ≤ x) :
    (2 : ℝ) ^ Nat.log 2 ⌊1 + x⌋₊ ≤ 1 + x ∧ 1 + x < (2 : ℝ) ^ (Nat.log 2 ⌊1 + x⌋₊ + 1) := by
  have h0 : ⌊1 + x⌋₊ ≠ 0 := (Nat.floor_pos.mpr (by linarith)).ne'
  constructor
  · have h1 := Nat.pow_log_le_self 2 h0
    have h2 : ((2 ^ Nat.log 2 ⌊1 + x⌋₊ : ℕ) : ℝ) ≤ (⌊1 + x⌋₊ : ℝ) := by exact_mod_cast h1
    push_cast at h2
    exact h2.trans (Nat.floor_le (by linarith))
  · have h1 := Nat.lt_pow_succ_log_self (by norm_num : 1 < 2) ⌊1 + x⌋₊
    have h2 : ((⌊1 + x⌋₊ + 1 : ℕ) : ℝ) ≤ ((2 ^ (Nat.log 2 ⌊1 + x⌋₊).succ : ℕ) : ℝ) := by exact_mod_cast h1
    push_cast at h2
    exact (Nat.lt_floor_add_one _).trans_le h2

theorem sum_prod_inv_two_le {ι : Type} [Fintype ι] [DecidableEq ι] (T : Finset (ι → ℕ)) :
    ∑ j ∈ T, ∏ v, ((2 : ℝ) ^ j v)⁻¹ ≤ 2 ^ Fintype.card ι := by
  set M := T.sup fun j => univ.sup j
  have hsub : T ⊆ Fintype.piFinset fun _ : ι => range (M + 1) := by
    intro j hj
    rw [Fintype.mem_piFinset]
    intro v
    rw [mem_range, Nat.lt_succ_iff]
    exact (le_sup (f := j) (mem_univ v)).trans (le_sup (f := fun j => univ.sup j) hj)
  refine (sum_le_sum_of_subset_of_nonneg hsub fun j _ _ => by positivity).trans ?_
  rw [← Finset.prod_univ_sum (fun _ : ι => range (M + 1)) (fun _ k => ((2 : ℝ) ^ k)⁻¹)]
  calc ∏ v : ι, ∑ k ∈ range (M + 1), ((2 : ℝ) ^ k)⁻¹ ≤ ∏ _v : ι, (2 : ℝ) :=
        prod_le_prod₀ (fun _ _ => by positivity) fun v _ => by
          have := sum_geometric_two_le (M + 1)
          simpa [one_div, inv_pow] using this
    _ = 2 ^ Fintype.card ι := by simp

theorem card_box_le {ι : Type} [Fintype ι] [Nonempty ι] (n : ℕ) (hn : n ≠ 0) (la : ℝ) (hla : 0 < la) (hla1 : la ≤ 1)
    (T : Finset (ι → Matrix (Fin n) (Fin n) ℂ))
    (hT : ∀ s ∈ T, ∀ s' ∈ T, s ≠ s' → la ^ Fintype.card ι ≤ ∏ v, hsn (s v - s' v))
    (j : ι → ℕ) (hj : ∀ s ∈ T, ∀ v, hsn (s v) ≤ (2 : ℝ) ^ (j v + 1)) :
    (T.card : ℝ) ≤ 6 ^ (2 * n ^ 2 * Fintype.card ι) * la⁻¹ ^ (2 * n ^ 2 * Fintype.card ι) *
      (∏ v, (2 : ℝ) ^ j v) ^ (2 * n ^ 2) := by
  set f := Fintype.card ι with hf
  set N := 2 * n ^ 2 with hN
  have hf0 : f ≠ 0 := Fintype.card_ne_zero
  have hN1 : 1 ≤ N := by have : 1 ≤ n ^ 2 := Nat.one_le_iff_ne_zero.mpr (pow_ne_zero _ hn); omega
  have hP := GlobalTheory.packing_geometric_mean_separated ι (fun _ => Matrix (Fin n) (Fin n) ℂ) N hN1
    (fun _ => finrank_mat n) la (T : Set _) (fun v => (2 : ℝ) ^ (j v + 1)) hla (fun v => by positivity) ?sep
  case sep =>
    intro s hs s' hs' hne
    have h := hT s hs s' hs' hne
    simp only [← hsn_eq_norm]
    calc la = (la ^ f) ^ ((1 : ℝ) / f) := by rw [one_div, Real.pow_rpow_inv_natCast hla.le hf0]
      _ ≤ _ := Real.rpow_le_rpow (by positivity) h (by positivity)
  have hset : {s ∈ (T : Set (ι → Matrix (Fin n) (Fin n) ℂ)) | ∀ v, ‖s v‖ ≤ (2 : ℝ) ^ (j v + 1)} = (T : Set _) := by
    ext s
    simp only [Set.mem_setOf_eq, Finset.mem_coe, and_iff_left_iff_imp]
    intro hs v
    rw [← hsn_eq_norm]
    exact hj s hs v
  have hc := hP.2
  rw [hset, Set.ncard_coe_finset] at hc
  set Pr : ℝ := ∏ v, (2 : ℝ) ^ (j v + 1) with hPr
  have hPr' : Pr = (∏ v, (2 : ℝ) ^ j v) * 2 ^ f := by
    simp only [hPr, pow_succ, Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ, hf]
  have hPr1 : 1 ≤ Pr := by
    rw [hPr, Finset.prod_pow_eq_pow_sum]
    exact one_le_pow₀ (by norm_num)
  have hPr0 : 0 ≤ Pr := by linarith
  set G : ℝ := Pr ^ ((1 : ℝ) / f) with hG
  have hGf : G ^ f = Pr := by rw [hG, one_div, Real.rpow_inv_natCast_pow hPr0 hf0]
  have hG1 : 1 ≤ G := Real.one_le_rpow hPr1 (by positivity)
  have h3 : 1 + 2 * G / la ≤ 3 * G / la := by
    have : G ≤ G / la := le_div_self (by linarith) hla hla1
    have e : 3 * G / la = G / la + 2 * G / la := by ring
    rw [e]; linarith
  calc (T.card : ℝ) ≤ (1 + 2 * G / la) ^ (N * f) := hc
    _ ≤ (3 * G / la) ^ (N * f) := pow_le_pow_left₀ (by positivity) h3 _
    _ = 3 ^ (N * f) * la⁻¹ ^ (N * f) * (G ^ f) ^ N := by
      rw [div_eq_mul_inv, mul_pow, mul_pow, ← pow_mul, mul_comm f N]; ring
    _ = 3 ^ (N * f) * la⁻¹ ^ (N * f) * Pr ^ N := by rw [hGf]
    _ = _ := by
      rw [hPr', show (6 : ℝ) = 3 * 2 by norm_num, mul_pow, mul_pow, ← pow_mul]
      ring

theorem sum_weights_le_of_separated : ∀ (ι : Type) [Fintype ι] [Nonempty ι] (n : ℕ), ∃ C : ℝ, 0 ≤ C ∧
    ∀ la : ℝ, 0 < la → la ≤ 1 → ∀ S : Finset (ι → Matrix (Fin n) (Fin n) ℂ),
      (∀ s ∈ S, ∀ s' ∈ S, s ≠ s' → la ^ Fintype.card ι ≤ ∏ v, hsn (s v - s' v)) →
      ∑ s ∈ S, ∏ v, ((1 + hsn (s v)) ^ (2 * n ^ 2 + 1))⁻¹ ≤ C * la⁻¹ ^ (2 * n ^ 2 * Fintype.card ι) := by
  intro ι _ _ n
  classical
  refine ⟨6 ^ (2 * n ^ 2 * Fintype.card ι) * 2 ^ Fintype.card ι, by positivity, ?_⟩
  intro la hla hla1 S hS
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · have hcard : S.card ≤ 1 :=
      Finset.card_le_one.mpr fun a _ b _ => funext fun v => Matrix.ext fun i _ => i.elim0
    have hterm : ∀ s ∈ S, ∏ v, ((1 + hsn (s v)) ^ (2 * 0 ^ 2 + 1))⁻¹ ≤ (1 : ℝ) := fun s _ =>
      Finset.prod_le_one₀ (fun v _ => by have := hsn_nonneg (s v); positivity)
        fun v _ => inv_le_one_of_one_le₀ (one_le_pow₀ (by linarith [hsn_nonneg (s v)]))
    calc _ ≤ ∑ s ∈ S, (1 : ℝ) := sum_le_sum hterm
      _ = S.card := by simp
      _ ≤ 1 := by exact_mod_cast hcard
      _ ≤ _ := by
        have : (1 : ℝ) ≤ 2 ^ Fintype.card ι := one_le_pow₀ (by norm_num)
        simpa using this
  · set N := 2 * n ^ 2 with hN
    set f := Fintype.card ι with hf
    let jf : (ι → Matrix (Fin n) (Fin n) ℂ) → ι → ℕ := fun s v => Nat.log 2 ⌊1 + hsn (s v)⌋₊
    rw [← Finset.sum_fiberwise_of_maps_to (g := jf) (t := S.image jf) (fun s hs => Finset.mem_image_of_mem jf hs)]
    have hbox : ∀ j ∈ S.image jf, ∑ s ∈ S.filter (fun s => jf s = j), ∏ v, ((1 + hsn (s v)) ^ (N + 1))⁻¹ ≤
        6 ^ (N * f) * la⁻¹ ^ (N * f) * ∏ v, ((2 : ℝ) ^ j v)⁻¹ := by
      intro j _
      have hb : ∀ s ∈ S.filter (fun s => jf s = j),
          ∏ v, ((1 + hsn (s v)) ^ (N + 1))⁻¹ ≤ ∏ v, (((2 : ℝ) ^ j v) ^ (N + 1))⁻¹ := by
        intro s hs
        rw [Finset.mem_filter] at hs
        refine prod_le_prod₀ (fun v _ => by have := hsn_nonneg (s v); positivity) fun v _ => ?_
        have hd := (dyadic _ (hsn_nonneg (s v))).1
        rw [← hs.2]
        exact inv_anti₀ (by positivity) (pow_le_pow_left₀ (by positivity) hd _)
      have hcard := card_box_le n hn.ne' la hla hla1 (S.filter (fun s => jf s = j))
        (fun s hs s' hs' hne => hS s (mem_filter.1 hs).1 s' (mem_filter.1 hs').1 hne) j (by
          intro s hs v
          rw [mem_filter] at hs
          have hd := (dyadic _ (hsn_nonneg (s v))).2
          rw [← hs.2]
          linarith)
      calc _ ≤ ∑ s ∈ S.filter (fun s => jf s = j), ∏ v, (((2 : ℝ) ^ j v) ^ (N + 1))⁻¹ := sum_le_sum hb
        _ = (S.filter (fun s => jf s = j)).card * ∏ v, (((2 : ℝ) ^ j v) ^ (N + 1))⁻¹ := by
          rw [sum_const, nsmul_eq_mul]
        _ ≤ (6 ^ (N * f) * la⁻¹ ^ (N * f) * (∏ v, (2 : ℝ) ^ j v) ^ N) * ∏ v, (((2 : ℝ) ^ j v) ^ (N + 1))⁻¹ :=
          mul_le_mul_of_nonneg_right hcard (by positivity)
        _ = _ := by
          rw [mul_assoc, ← Finset.prod_pow, ← Finset.prod_mul_distrib]
          congr 1
          refine Finset.prod_congr rfl fun v _ => ?_
          have h2 : ((2 : ℝ) ^ j v) ≠ 0 := by positivity
          rw [pow_succ, mul_inv, ← mul_assoc, mul_inv_cancel₀ (pow_ne_zero _ h2), one_mul]
    calc _ ≤ ∑ j ∈ S.image jf, 6 ^ (N * f) * la⁻¹ ^ (N * f) * ∏ v, ((2 : ℝ) ^ j v)⁻¹ := sum_le_sum hbox
      _ = 6 ^ (N * f) * la⁻¹ ^ (N * f) * ∑ j ∈ S.image jf, ∏ v, ((2 : ℝ) ^ j v)⁻¹ := by rw [mul_sum]
      _ ≤ 6 ^ (N * f) * la⁻¹ ^ (N * f) * 2 ^ f :=
        mul_le_mul_of_nonneg_left (sum_prod_inv_two_le _) (by positivity)
      _ = _ := by ring

end GlobalTheory.SepSum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.SumProductWeightsLeOfSeparatedGeometricMean =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.PoincareSeriesUnitaryAbsolutelyConvergentModerat =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.PoincareSeriesUnitaryAbsolutelyConvergentModerat", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.DepthPays\npublic import Formalism.LocalToGlobal.Columns.Adelic\npublic import Development.AbelianVarietyTheory.Proofs.HeightProofs.UnitaryAdelicHeightCosetLeNormInfPow\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HeckeCharInfinityEqCoeffMulHalfNormPow\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsCommonDenominatorSelfDualLevelStatement\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsFinitePartDenominatorLeHeightPowStatement\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SumProductWeightsLeOfSeparatedGeometricMean\npublic import Formalism.LocalToGlobal.Columns.TiedTilA\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsModGrowthExpLeNormInfPow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.Grow
open GlobalTheory.IndefiniteRowSideFullHecke.LevelPlusSubgroup (coefPlus Cols SizeRows)
open GlobalTheory.ChainFr GlobalTheory.SepRows GlobalTheory.SepPer Matrix
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.PoinCount

variable {D : D7}

theorem norm_entry_le_hsn {n : ℕ} (X : Matrix (Fin n) (Fin n) ℂ) (i j : Fin n) : ‖X i j‖ ≤ hsn X := by
  unfold hsn
  rw [← Real.sqrt_sq (norm_nonneg (X i j))]
  apply Real.sqrt_le_sqrt
  calc ‖X i j‖ ^ 2 ≤ ∑ j', ‖X i j'‖ ^ 2 :=
        Finset.single_le_sum (f := fun j' => ‖X i j'‖ ^ 2) (fun _ _ => by positivity) (Finset.mem_univ j)
    _ ≤ ∑ i', ∑ j', ‖X i' j'‖ ^ 2 :=
        Finset.single_le_sum (f := fun i' => ∑ j', ‖X i' j'‖ ^ 2) (fun _ _ => by positivity) (Finset.mem_univ i)

theorem hsn_le_sum {n : ℕ} (X : Matrix (Fin n) (Fin n) ℂ) : hsn X ≤ ∑ i, ∑ j, ‖X i j‖ := by
  unfold hsn
  refine Real.sqrt_le_iff.2 ⟨by positivity, ?_⟩
  calc ∑ i, ∑ j, ‖X i j‖ ^ 2 ≤ ∑ i, (∑ j, ‖X i j‖) ^ 2 :=
        Finset.sum_le_sum fun i _ => Finset.sum_sq_le_sq_sum_of_nonneg fun j _ => norm_nonneg _
    _ ≤ (∑ i, ∑ j, ‖X i j‖) ^ 2 :=
        Finset.sum_sq_le_sq_sum_of_nonneg fun i _ => Finset.sum_nonneg fun j _ => norm_nonneg _

theorem hsn_mul_le {n : ℕ} (X Y : Matrix (Fin n) (Fin n) ℂ) : hsn (X * Y) ≤ hsn X * hsn Y := by
  letI := Matrix.frobeniusSeminormedAddCommGroup (m := Fin n) (n := Fin n) (α := ℂ)
  have e : ∀ Z : Matrix (Fin n) (Fin n) ℂ, hsn Z = ‖Z‖ := fun Z => by
    rw [Matrix.frobenius_norm_def, hsn, Real.sqrt_eq_rpow]
    congr 1
    simp only [Real.rpow_two]
  rw [e, e, e]
  exact Matrix.frobenius_norm_mul X Y

theorem one_le_prod_tauE (D : D7) {y : D.host.E} (hy : y ≠ 0) (hi : IsIntegral ℤ y) : 1 ≤ ∏ τ, ‖tauE D τ y‖ := by
  have hnorm : ∏ τ, ‖tauE D τ y‖ ^ 2 = |((Algebra.norm ℚ y : ℚ) : ℝ)| := by
    rw [← Rat.cast_abs, ← NumberField.InfinitePlace.prod_eq_abs_norm]
    refine (Fintype.prod_bijective _ (_root_.GlobalTheory.CMTypePlaces.mk_tauE_bijective D) _ _ (fun τ => ?_))
    rw [NumberField.InfinitePlace.mult, if_neg (GlobalTheory.LevelSeries.mk_tauE_complex D τ)]
    rfl
  have h1 : (1 : ℝ) ≤ |((Algebra.norm ℚ y : ℚ) : ℝ)| := by
    let z : 𝓞 D.host.E := ⟨y, hi⟩
    have hz : z ≠ 0 := fun h => hy (congrArg Subtype.val h)
    have e : ((Algebra.norm ℤ z : ℤ) : ℚ) = Algebra.norm ℚ y := Algebra.coe_norm_int z
    have hn : Algebra.norm ℤ z ≠ 0 := Algebra.norm_ne_zero_iff.2 hz
    rw [← e]
    have := Int.one_le_abs hn
    push_cast
    exact_mod_cast this
  rw [← hnorm, Finset.prod_pow] at h1
  have h0 : 0 ≤ ∏ τ, ‖tauE D τ y‖ := Finset.prod_nonneg fun _ _ => norm_nonneg _
  nlinarith

theorem exists_rat (V : HSp D) (γ : GQ V) :
    ∃ δ : GL (Fin V.rank) D.host.E, Formalism.UG.bc (inclR (AF D.host.F)) δ = matHom V (γ : GA D V) := by
  have h1 := γ.2
  simp only [GQ, HFinIn, HFin] at h1
  obtain ⟨δ, -, hδ⟩ := h1
  exact ⟨δ, hδ⟩

theorem cmp_rat {θ : InfFam D} (hθ : IsInfFam θ) (V : HSp D) (γ : GA D V) (δ : GL (Fin V.rank) D.host.E)
    (h : Formalism.UG.bc (inclR (AF D.host.F)) δ = matHom V γ) (τ : D.what₂.Tau) :
    cmp θ τ γ = (δ : Matrix (Fin V.rank) (Fin V.rank) D.host.E).map (tauE D τ) := by
  ext i j
  have e : (HA.mat (AF D.host.F) D.sp.cm.sig V.gram γ).1 i j =
      inclR (AF D.host.F) ((δ : Matrix (Fin V.rank) (Fin V.rank) D.host.E) i j) := by
    rw [show HA.mat (AF D.host.F) D.sp.cm.sig V.gram γ = matHom V γ from rfl, ← h]
    rfl
  show infMat D.sp.cm.sig V.gram (θ τ) γ i j = _
  simp only [infMat, Matrix.map_apply, e]
  simp [inclR, (hθ τ).1]

end GlobalTheory.PoinCount

namespace GlobalTheory.PoinCount

variable {D : D7}

theorem finE_rat (V : HSp D) (γ : GA D V) (δ : GL (Fin V.rank) D.host.E)
    (h : Formalism.UG.bc (inclR (AF D.host.F)) δ = matHom V γ) (i j : Fin V.rank) :
    (Lev.finE V γ).1 i j =
      Formalism.L2.Col.iA D.host.F D.host.E ((δ : Matrix (Fin V.rank) (Fin V.rank) D.host.E) i j) := by
  simp only [Lev.finE, finHom, MonoidHom.comp_apply, ← h]
  rfl

end GlobalTheory.PoinCount

namespace GlobalTheory.PoinCount

variable {D : D7}

theorem mem_mul_of_mem {n : ℕ} {S : Subring (Lev.EAf D)} (X Y : Matrix (Fin n) (Fin n) (Lev.EAf D))
    (hX : ∀ i j, X i j ∈ S) (hY : ∀ i j, Y i j ∈ S) (i j : Fin n) : (X * Y) i j ∈ S := by
  rw [Matrix.mul_apply]
  exact Subring.sum_mem _ fun k _ => Subring.mul_mem _ (hX i k) (hY k j)



theorem exists_den (D : D7) (V : HSp D) (Λ : Lat V) (hΛ : IsSelfDualC V Λ) (c : GA D V) :
    ∃ (C : ℝ) (A : ℕ), ∀ g : GA D V, ∃ m : ℕ, 0 < m ∧ (m : ℝ) ≤ C * height V g ^ A ∧
      ∀ γ : GA D V, Lev.finE V (c * γ * g) ∈ congLev D.sp.cm V.gram Λ ⊤ →
        ∀ δ : GL (Fin V.rank) D.host.E, Formalism.UG.bc (inclR (AF D.host.F)) δ = matHom V γ →
          ∀ i j, IsIntegral ℤ ((m : D.host.E) * (δ : Matrix (Fin V.rank) (Fin V.rank) D.host.E) i j) := by
  obtain ⟨b, hb0, hb⟩ := _root_.GlobalTheory.LevelDenom.exists_denom_congLev D V Λ hΛ
  obtain ⟨C, A, hg⟩ := _root_.GlobalTheory.PointDenom.exists_denom_le_height_pow D V
  obtain ⟨dc, hdc0, -, hdc⟩ := hg c⁻¹
  refine ⟨(dc : ℝ) * b * C, A, fun g => ?_⟩
  obtain ⟨dg, hdg0, hdgH, hdg⟩ := hg g⁻¹
  rw [GlobalTheory.Grow.height_inv] at hdgH
  refine ⟨dc * b * dg, by positivity, ?_, fun γ hk δ hδ i j => ?_⟩
  · push_cast
    calc (dc : ℝ) * b * dg ≤ dc * b * (C * height V g ^ A) :=
          mul_le_mul_of_nonneg_left hdgH (by positivity)
      _ = dc * b * C * height V g ^ A := by ring
  · have e : (Lev.finE V γ).1 = (Lev.finE V c⁻¹).1 * (Lev.finE V (c * γ * g)).1 * (Lev.finE V g⁻¹).1 := by
      rw [← Units.val_mul, ← Units.val_mul, ← map_mul, ← map_mul]
      congr 2
      group
    have hP : ∀ i j, ((dc : Lev.EAf D) • (Lev.finE V c⁻¹).1) i j ∈ Formalism.L2.Herm.intAf D.host.F D.host.E :=
      fun i j => by rw [Matrix.smul_apply, smul_eq_mul]; exact hdc i j
    have hK : ∀ i j, ((b : Lev.EAf D) • (Lev.finE V (c * γ * g)).1) i j ∈ Formalism.L2.Herm.intAf D.host.F D.host.E :=
      fun i j => by rw [Matrix.smul_apply, smul_eq_mul]; exact hb _ hk i j
    have hQ : ∀ i j, ((dg : Lev.EAf D) • (Lev.finE V g⁻¹).1) i j ∈ Formalism.L2.Herm.intAf D.host.F D.host.E :=
      fun i j => by rw [Matrix.smul_apply, smul_eq_mul]; exact hdg i j
    have hmem := mem_mul_of_mem _ _ (mem_mul_of_mem _ _ hP hK) hQ i j
    have e2 : ((dc : Lev.EAf D) • (Lev.finE V c⁻¹).1 * ((b : Lev.EAf D) • (Lev.finE V (c * γ * g)).1) *
        ((dg : Lev.EAf D) • (Lev.finE V g⁻¹).1)) i j = ((dc * b * dg : ℕ) : Lev.EAf D) * (Lev.finE V γ).1 i j := by
      rw [e]
      simp only [Matrix.smul_mul, Matrix.mul_smul, Matrix.smul_apply, smul_eq_mul, Nat.cast_mul]
      ring
    rw [e2, finE_rat V γ δ hδ i j] at hmem
    have e3 : Formalism.L2.Col.iA D.host.F D.host.E (((dc * b * dg : ℕ) : D.host.E) *
        (δ : Matrix (Fin V.rank) (Fin V.rank) D.host.E) i j) =
        ((dc * b * dg : ℕ) : Lev.EAf D) * Formalism.L2.Col.iA D.host.F D.host.E ((δ : Matrix (Fin V.rank) (Fin V.rank) D.host.E) i j) := by
      rw [map_mul, map_natCast]
    rw [← e3] at hmem
    obtain ⟨r, hr⟩ := Formalism.L2.Col.til_tmv_int_of_iA hmem
    rw [← hr]
    exact RingOfIntegers.isIntegral_coe r

end GlobalTheory.PoinCount

namespace GlobalTheory.PoinCount

variable {D : D7}

theorem hsn_cmp_le {θ : InfFam D} (hθ : IsInfFam θ) (V : HSp D) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ (g : GA D V) τ, hsn (cmp θ τ g) ≤ C * height V g := by
  obtain ⟨C, hC⟩ := GlobalTheory.Grow.normInf_le_height V hθ
  refine ⟨max C 0, le_max_right _ _, fun g τ => ?_⟩
  have h1 : hsn (cmp θ τ g) ≤ normInf θ V g := by
    refine (hsn_le_sum _).trans ?_
    unfold normInf
    refine le_trans ?_ (Finset.single_le_sum (f := fun τ => ∑ i, ∑ j,
      (‖infMat D.sp.cm.sig V.gram (θ τ) g i j‖ + ‖infMat D.sp.cm.sig V.gram (θ τ) g⁻¹ i j‖))
      (fun _ _ => by positivity) (Finset.mem_univ τ))
    exact Finset.sum_le_sum fun i _ => Finset.sum_le_sum fun j _ => le_add_of_nonneg_right (norm_nonneg _)
  exact h1.trans ((hC g).trans (mul_le_mul_of_nonneg_right (le_max_left _ _) (GlobalTheory.Grow.height_pos V g).le))

theorem poincare_count : ∀ (D : D7) (θ : InfFam D), IsInfFam θ → ∀ (V : HSp D) (Λ : Lat V), IsSelfDualC V Λ → ∀ c : GA D V,
    ∃ (C : ℝ) (A : ℕ), ∀ (g : GA D V) (s : Finset (GQ V)),
      (∀ γ ∈ s, Lev.finE V (c * (γ : GA D V) * g) ∈ congLev D.sp.cm V.gram Λ ⊤) →
      ∑ γ ∈ s, ∏ τ, ((1 + hsn (GlobalTheory.SepPer.cmp θ τ (c * (γ : GA D V) * g))) ^ (2 * V.rank ^ 2 + 1))⁻¹ ≤
        C * height V g ^ A := by
  intro D θ hθ V Λ hΛ c
  haveI : Nonempty D.what₂.Tau := ⟨((_root_.GlobalTheory.CMTypePlaces.mk_tauE_bijective D).2 (Classical.arbitrary _)).choose⟩
  obtain ⟨C3, A3, h3⟩ := exists_den D V Λ hΛ c
  obtain ⟨C4, hC4, h4⟩ := hsn_cmp_le hθ V
  obtain ⟨C5, hC5, h5⟩ := _root_.GlobalTheory.SepSum.sum_weights_le_of_separated D.what₂.Tau V.rank
  set N := 2 * V.rank ^ 2 + 1 with hN
  set f := Fintype.card D.what₂.Tau with hf
  set Kc : ℝ := ∑ τ, hsn (cmp θ τ c⁻¹) with hKc
  have hKc0 : 0 ≤ Kc := Finset.sum_nonneg fun _ _ => Real.sqrt_nonneg _
  set B : ℝ := 1 + Kc * C4 with hB
  have hB1 : 1 ≤ B := le_add_of_nonneg_right (mul_nonneg hKc0 hC4)
  refine ⟨B ^ (N * f) * C5 * (max C3 1) ^ (2 * V.rank ^ 2 * f), N * f + A3 * (2 * V.rank ^ 2 * f),
    fun g s hs => ?_⟩
  obtain ⟨m, hm0, hmH, hm⟩ := h3 g
  set H := height V g with hHdef
  have hH : 1 ≤ H := GlobalTheory.Grow.one_le_height V g
  choose δ hδ using fun γ : GQ V => exists_rat V γ
  let x : GQ V → D.what₂.Tau → Matrix (Fin V.rank) (Fin V.rank) ℂ := fun γ τ => cmp θ τ (γ : GA D V)
  have hx : ∀ γ τ, x γ τ = (δ γ : Matrix (Fin V.rank) (Fin V.rank) D.host.E).map (tauE D τ) :=
    fun γ τ => cmp_rat hθ V γ (δ γ) (hδ γ) τ
  have hinj : Set.InjOn x s := by
    intro γ _ γ' _ e
    have e1 : (δ γ : Matrix (Fin V.rank) (Fin V.rank) D.host.E) = δ γ' := by
      obtain ⟨τ⟩ := ‹Nonempty D.what₂.Tau›
      have := congrFun e τ
      rw [hx, hx] at this
      exact Matrix.ext fun i j => (tauE D τ).injective (congrFun (congrFun this i) j)
    have e2 : δ γ = δ γ' := Units.ext e1
    have e3 : matHom V (γ : GA D V) = matHom V (γ' : GA D V) := by rw [← hδ, ← hδ, e2]
    have e4 : (γ : GA D V) = γ' := by
      unfold Formalism.L2.Theta.matHom at e3
      exact Subgroup.subtype_injective _ e3
    exact Subtype.ext e4
  have hsep : ∀ y ∈ s.image x, ∀ y' ∈ s.image x, y ≠ y' →
      ((m : ℝ)⁻¹) ^ f ≤ ∏ τ, hsn (y τ - y' τ) := by
    intro y hy y' hy' hne
    obtain ⟨γ, hγ, rfl⟩ := Finset.mem_image.1 hy
    obtain ⟨γ', hγ', rfl⟩ := Finset.mem_image.1 hy'
    have hδne : (δ γ : Matrix (Fin V.rank) (Fin V.rank) D.host.E) ≠ δ γ' := by
      intro e; apply hne; funext τ; rw [hx, hx, e]
    obtain ⟨i, j, hij⟩ : ∃ i j, (δ γ : Matrix (Fin V.rank) (Fin V.rank) D.host.E) i j ≠
        (δ γ' : Matrix (Fin V.rank) (Fin V.rank) D.host.E) i j := by
      by_contra hc; push_neg at hc; exact hδne (Matrix.ext hc)
    set z := (δ γ : Matrix (Fin V.rank) (Fin V.rank) D.host.E) i j -
      (δ γ' : Matrix (Fin V.rank) (Fin V.rank) D.host.E) i j with hz
    have hz0 : z ≠ 0 := sub_ne_zero.2 hij
    have hint : IsIntegral ℤ ((m : D.host.E) * z) := by
      rw [hz, mul_sub]
      exact (hm _ (hs γ hγ) _ (hδ γ) i j).sub (hm _ (hs γ' hγ') _ (hδ γ') i j)
    have h1 := one_le_prod_tauE D (mul_ne_zero (Nat.cast_ne_zero.2 hm0.ne') hz0) hint
    have h2 : ∀ τ, ‖tauE D τ ((m : D.host.E) * z)‖ ≤ m * hsn (x γ τ - x γ' τ) := by
      intro τ
      have ez : (x γ τ - x γ' τ) i j = tauE D τ z := by
        rw [hx, hx, Matrix.sub_apply, Matrix.map_apply, Matrix.map_apply, hz, map_sub]
      rw [map_mul, norm_mul, map_natCast, Complex.norm_natCast, ← ez]
      exact mul_le_mul_of_nonneg_left (norm_entry_le_hsn _ i j) (Nat.cast_nonneg _)
    have h3 : (1 : ℝ) ≤ (m : ℝ) ^ f * ∏ τ, hsn (x γ τ - x γ' τ) := by
      calc (1 : ℝ) ≤ ∏ τ, ‖tauE D τ ((m : D.host.E) * z)‖ := h1
        _ ≤ ∏ τ, ((m : ℝ) * hsn (x γ τ - x γ' τ)) :=
          Finset.prod_le_prod₀ (fun _ _ => norm_nonneg _) fun τ _ => h2 τ
        _ = (m : ℝ) ^ f * ∏ τ, hsn (x γ τ - x γ' τ) := by
          rw [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ]
    have hmpos : (0 : ℝ) < (m : ℝ) ^ f := by positivity
    rw [inv_pow, inv_le_iff_one_le_mul₀' hmpos]
    exact h3
  have hterm : ∀ γ ∈ s, ∏ τ, ((1 + hsn (cmp θ τ (c * (γ : GA D V) * g))) ^ N)⁻¹ ≤
      (B * H) ^ (N * f) * ∏ τ, ((1 + hsn (x γ τ)) ^ N)⁻¹ := by
    intro γ _
    rw [pow_mul, hf, ← Finset.card_univ, ← Finset.prod_const, ← Finset.prod_mul_distrib]
    refine Finset.prod_le_prod₀ (fun τ _ => inv_nonneg.2 (pow_nonneg (add_nonneg zero_le_one (Real.sqrt_nonneg _)) _)) fun τ _ => ?_
    set h := hsn (cmp θ τ (c * (γ : GA D V) * g)) with hh
    have hh0 : 0 ≤ h := Real.sqrt_nonneg _
    have e : (γ : GA D V) = c⁻¹ * (c * (γ : GA D V) * g) * g⁻¹ := by group
    have hx' : x γ τ = cmp θ τ c⁻¹ * cmp θ τ (c * (γ : GA D V) * g) * cmp θ τ g⁻¹ := by
      show infMat D.sp.cm.sig V.gram (θ τ) (γ : GA D V) = _
      conv_lhs => rw [e]
      rw [GlobalTheory.SmoothForms.HeightCoset.infMat_mul', GlobalTheory.SmoothForms.HeightCoset.infMat_mul']
    have hg : hsn (cmp θ τ g⁻¹) ≤ C4 * H := by
      have := h4 g⁻¹ τ; rwa [GlobalTheory.Grow.height_inv] at this
    have hc : hsn (cmp θ τ c⁻¹) ≤ Kc :=
      Finset.single_le_sum (f := fun τ => hsn (cmp θ τ c⁻¹)) (fun _ _ => Real.sqrt_nonneg _) (Finset.mem_univ τ)
    have hb : hsn (x γ τ) ≤ Kc * C4 * H * h := by
      rw [hx']
      calc _ ≤ hsn (cmp θ τ c⁻¹ * cmp θ τ (c * (γ : GA D V) * g)) * hsn (cmp θ τ g⁻¹) := hsn_mul_le _ _
        _ ≤ (hsn (cmp θ τ c⁻¹) * h) * (C4 * H) :=
          mul_le_mul (hsn_mul_le _ _) hg (Real.sqrt_nonneg _) (mul_nonneg (Real.sqrt_nonneg _) hh0)
        _ ≤ (Kc * h) * (C4 * H) := by gcongr
        _ = Kc * C4 * H * h := by ring
    have hK : 0 ≤ Kc * C4 := mul_nonneg hKc0 hC4
    have hH0 : 0 ≤ H := zero_le_one.trans hH
    have t1 : 0 ≤ H * h := mul_nonneg hH0 hh0
    have t2 : 0 ≤ Kc * C4 * H := mul_nonneg hK hH0
    have t3 : 0 ≤ Kc * C4 * H * h := mul_nonneg t2 hh0
    have eB : B * H * (1 + h) = H + H * h + Kc * C4 * H + Kc * C4 * H * h := by rw [hB]; ring
    have hle : 1 + hsn (x γ τ) ≤ B * H * (1 + h) := by rw [eB]; linarith
    have hp : 0 < (1 + hsn (x γ τ)) ^ N := pow_pos (add_pos_of_pos_of_nonneg zero_lt_one (Real.sqrt_nonneg _)) _
    have hq : 0 < (1 + h) ^ N := pow_pos (add_pos_of_pos_of_nonneg zero_lt_one hh0) _
    rw [← div_eq_mul_inv, le_div_iff₀ hp, ← div_eq_inv_mul, div_le_iff₀ hq, ← mul_pow]
    exact pow_le_pow_left₀ (add_nonneg zero_le_one (Real.sqrt_nonneg _)) hle N
  have hla : (0 : ℝ) < (m : ℝ)⁻¹ := by positivity
  have hla1 : (m : ℝ)⁻¹ ≤ 1 := inv_le_one_of_one_le₀ (by exact_mod_cast hm0)
  have hsum := h5 _ hla hla1 (s.image x) hsep
  rw [inv_inv] at hsum
  have hmle : (m : ℝ) ≤ max C3 1 * H ^ A3 :=
    hmH.trans (mul_le_mul_of_nonneg_right (le_max_left _ _) (by positivity))
  calc ∑ γ ∈ s, ∏ τ, ((1 + hsn (cmp θ τ (c * (γ : GA D V) * g))) ^ N)⁻¹
      ≤ ∑ γ ∈ s, (B * H) ^ (N * f) * ∏ τ, ((1 + hsn (x γ τ)) ^ N)⁻¹ := Finset.sum_le_sum hterm
    _ = (B * H) ^ (N * f) * ∑ y ∈ s.image x, ∏ τ, ((1 + hsn (y τ)) ^ N)⁻¹ := by
      rw [← Finset.mul_sum, Finset.sum_image hinj]
    _ ≤ (B * H) ^ (N * f) * (C5 * (m : ℝ) ^ (2 * V.rank ^ 2 * f)) :=
      mul_le_mul_of_nonneg_left hsum (by positivity)
    _ ≤ (B * H) ^ (N * f) * (C5 * (max C3 1 * H ^ A3) ^ (2 * V.rank ^ 2 * f)) := by
      gcongr
    _ = B ^ (N * f) * C5 * (max C3 1) ^ (2 * V.rank ^ 2 * f) * H ^ (N * f + A3 * (2 * V.rank ^ 2 * f)) := by
      rw [mul_pow, mul_pow, ← pow_mul, pow_add]; ring

end GlobalTheory.PoinCount
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.PoincareSeriesUnitaryAbsolutelyConvergentModerat =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.PoincareSeriesUnitaryAbsolutelyConvergentModeratStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.PoincareSeriesUnitaryAbsolutelyConvergentModeratStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.DepthPays\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PoincareSeriesUnitaryAbsolutelyConvergentModerat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.Grow
open GlobalTheory.IndefiniteRowSideFullHecke.LevelPlusSubgroup (coefPlus Cols SizeRows)
open GlobalTheory.ChainFr GlobalTheory.SepRows GlobalTheory.SepPer Matrix
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.poincareSeries_unitary_absolutelyConvergent_moderateGrowth : ∀ (D : D7) (θ : InfFam D), IsInfFam θ → ∀ (V : HSp D) (Λ : Lat V), IsSelfDualC V Λ → ∀ c : GA D V, ∃ (C : ℝ) (A : ℕ), ∀ (g : GA D V) (s : Finset (GQ V)), (∀ γ ∈ s, Lev.finE V (c * (γ : GA D V) * g) ∈ congLev D.sp.cm V.gram Λ ⊤) → ∑ γ ∈ s, ∏ τ, ((1 + hsn (GlobalTheory.SepPer.cmp θ τ (c * (γ : GA D V) * g))) ^ (2 * V.rank ^ 2 + 1))⁻¹ ≤ C * height V g ^ A := by
  first | exact @GlobalTheory.PoinCount.poincare_count
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.PoincareSeriesUnitaryAbsolutelyConvergentModeratStatement =====
