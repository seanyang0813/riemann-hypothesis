module

public import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
public import Mathlib.FieldTheory.Galois.Infinite
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ExistsIterateDerivative
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormPowRamifiedUniformizerFieldZpow
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.InvertibleSpanSingleton
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormPowLeNormFactorial
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.RealisesUnitPow
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinrankMulMinpolyNatDegreeLeOfPowEqNeg, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisDecompOfDisjoint, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LeAdjoinCompatibleRootsOfFiniteKummerTower, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormMinpolyCoeffZeroPowOfPowEqNeg, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisQlEqGaloisKPrimeMulGaloisKinfty, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisQlEqGaloisKPrimeMulGaloisKinftyStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinrankMulMinpolyNatDegreeLeOfPowEqNeg =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinrankMulMinpolyNatDegreeLeOfPowEqNeg", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.InvertibleSpanSingleton\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormPowLeNormFactorial\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.RealisesUnitPow\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per


open IntermediateField in
theorem GlobalTheory.finrank_mul_minpoly_natDegree_le_of_pow_eq_neg : ∀ (l : ℕ) [Fact l.Prime] (F : IntermediateField ℚ_[l] (Om l)) (N : ℕ) (x : Om l), 0 < N → x ^ N = -(l : Om l) → F ≤ IntermediateField.adjoin ℚ_[l] {x} → Module.finrank ℚ_[l] F * (minpoly F x).natDegree ≤ N := by
  intro l _ F N x hN hx hF
  have hp : (Polynomial.X ^ N + Polynomial.C (l : ℚ_[l])).Monic :=
    Polynomial.monic_X_pow_add_C _ hN.ne'
  have hroot : Polynomial.aeval x (Polynomial.X ^ N + Polynomial.C (l : ℚ_[l])) = 0 := by simp [hx]
  have hint : IsIntegral ℚ_[l] x := ⟨_, hp, hroot⟩
  have hdeg : (minpoly ℚ_[l] x).natDegree ≤ N := by
    have h1 := minpoly.min ℚ_[l] x hp hroot
    rw [Polynomial.degree_X_pow_add_C hN] at h1
    exact Polynomial.natDegree_le_of_degree_le h1
  have hintF : IsIntegral F x := hint.tower_top
  have key := Module.finrank_mul_finrank ℚ_[l] F (F⟮x⟯)
  have hE : (F⟮x⟯).restrictScalars ℚ_[l] = ℚ_[l]⟮x⟯ := by
    rw [restrictScalars_adjoin]
    apply le_antisymm
    · rw [adjoin_le_iff]
      rintro y (hy | hy)
      · exact hF hy
      · rw [Set.mem_singleton_iff.mp hy]; exact mem_adjoin_simple_self _ _
    · exact adjoin.mono _ _ _ (Set.subset_union_right)
  have h2 : Module.finrank ℚ_[l] (F⟮x⟯) = Module.finrank ℚ_[l] (ℚ_[l]⟮x⟯) := by
    rw [← hE]; rfl
  rw [← adjoin.finrank hintF, key, h2, adjoin.finrank hint]
  exact hdeg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinrankMulMinpolyNatDegreeLeOfPowEqNeg =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisDecompOfDisjoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisDecompOfDisjoint", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.InvertibleSpanSingleton\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormPowLeNormFactorial\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.RealisesUnitPow\npublic import Mathlib.FieldTheory.Galois.Infinite\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per
namespace GlobalTheory.InertiaEigenvalues

theorem galois_decomp_of_disjoint : ∀ (l : ℕ) [Fact l.Prime] (K M : IntermediateField ℚ_[l] (Om l)), FiniteDimensional ℚ_[l] K → IsGalois ℚ_[l] K → K ⊓ M = ⊥ → ∀ g : GQ l, ∃ h ∈ K.fixingSubgroup, ∃ k ∈ M.fixingSubgroup, g = h * k := by
  intro l _ K M _ _ hKM g
  let r : GQ l →* (K ≃ₐ[ℚ_[l]] K) := AlgEquiv.restrictNormalHom (F := ℚ_[l]) (K₁ := Om l) K
  have hr : ∀ (σ : GQ l) (y : K), ((r σ y : K) : Om l) = σ (y : Om l) := fun σ y =>
    AlgEquiv.restrictNormal_commutes σ K y
  let H : Subgroup (K ≃ₐ[ℚ_[l]] K) := M.fixingSubgroup.map r
  have hfix : IntermediateField.fixedField H = ⊥ := by
    rw [eq_bot_iff]
    intro x hx
    have hxM : (x : Om l) ∈ M := by
      rw [← InfiniteGalois.fixedField_fixingSubgroup M]
      intro k
      have := hx ⟨r k, Subgroup.mem_map_of_mem r k.2⟩
      have h2 := congrArg (fun z : K => (z : Om l)) this
      change (k : GQ l) (x : Om l) = x
      simpa [hr] using h2
    have hxKM : (x : Om l) ∈ K ⊓ M := ⟨x.2, hxM⟩
    rw [hKM, IntermediateField.mem_bot] at hxKM
    obtain ⟨c, hc⟩ := hxKM
    rw [IntermediateField.mem_bot]
    refine ⟨c, ?_⟩
    apply Subtype.ext
    simpa using hc
  have hH : H = ⊤ := by
    rw [← IntermediateField.fixingSubgroup_fixedField H, hfix, IntermediateField.fixingSubgroup_bot]
  have hg : r g ∈ H := by rw [hH]; exact Subgroup.mem_top _
  obtain ⟨k, hk, hkg⟩ := Subgroup.mem_map.mp hg
  refine ⟨g * k⁻¹, ?_, k, hk, by group⟩
  rw [IntermediateField.mem_fixingSubgroup_iff]
  intro x hx
  have h1 : r (g * k⁻¹) = 1 := by rw [map_mul, map_inv, ← hkg, mul_inv_cancel]
  have := hr (g * k⁻¹) ⟨x, hx⟩
  rw [h1] at this
  simpa using this.symm

end GlobalTheory.InertiaEigenvalues
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisDecompOfDisjoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LeAdjoinCompatibleRootsOfFiniteKummerTower =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LeAdjoinCompatibleRootsOfFiniteKummerTower", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormPowLeNormFactorial\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

noncomputable section

namespace GlobalTheory.KinfFin

theorem seq_add_pow {l : ℕ} [Fact l.Prime] {e : ℕ} (ϖ : PiSys l e) (m k : ℕ) :
    ϖ.seq (m + k) ^ l ^ k = ϖ.seq m := by
  induction k with
  | zero => simp
  | succ k ih => rw [← add_assoc, pow_succ', pow_mul, ϖ.seq_succ, ih]

theorem adjoin_mono {l : ℕ} [Fact l.Prime] {e : ℕ} (ϖ : PiSys l e) :
    Monotone fun n => IntermediateField.adjoin ℚ_[l] {ϖ.seq n ^ e} := by
  intro m n hmn
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hmn
  refine IntermediateField.adjoin_simple_le_iff.2 ?_
  have : ϖ.seq m ^ e = (ϖ.seq (m + k) ^ e) ^ l ^ k := by
    rw [← pow_mul, mul_comm, pow_mul, seq_add_pow]
  rw [this]
  exact pow_mem (IntermediateField.mem_adjoin_simple_self _ _) _

theorem Kinf_eq_iSup {l : ℕ} [Fact l.Prime] {e : ℕ} (ϖ : PiSys l e) :
    ϖ.Kinf = ⨆ n, IntermediateField.adjoin ℚ_[l] {ϖ.seq n ^ e} := by
  rw [PiSys.Kinf, ← IntermediateField.biSup_adjoin_simple, iSup_range]

theorem exists_mem_of_mem_Kinf {l : ℕ} [Fact l.Prime] {e : ℕ} (ϖ : PiSys l e) {x : Om l}
    (hx : x ∈ ϖ.Kinf) : ∃ n, x ∈ IntermediateField.adjoin ℚ_[l] {ϖ.seq n ^ e} := by
  rw [Kinf_eq_iSup, ← SetLike.mem_coe,
    IntermediateField.coe_iSup_of_directed (adjoin_mono ϖ).directed_le, Set.mem_iUnion] at hx
  exact hx

theorem main : ∀ (l : ℕ) [Fact l.Prime] (e : ℕ) (ϖ : PiSys l e) (F : IntermediateField ℚ_[l] (Om l)),
    FiniteDimensional ℚ_[l] F → F ≤ ϖ.Kinf → ∃ n : ℕ, F ≤ IntermediateField.adjoin ℚ_[l] {ϖ.seq n ^ e} := by
  intro l _ e ϖ F hF hle
  classical
  let b := Module.finBasis ℚ_[l] F
  choose N hN using fun i => exists_mem_of_mem_Kinf ϖ (hle (b i).2)
  refine ⟨Finset.univ.sup N, fun x hx => ?_⟩
  change ((⟨x, hx⟩ : F) : Om l) ∈ _
  rw [← b.sum_repr ⟨x, hx⟩, IntermediateField.coe_sum]
  refine sum_mem fun i _ => ?_
  rw [IntermediateField.coe_smul]
  refine IntermediateField.smul_mem _ ?_
  exact adjoin_mono ϖ (Finset.le_sup (f := N) (Finset.mem_univ i)) (hN i)

end GlobalTheory.KinfFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LeAdjoinCompatibleRootsOfFiniteKummerTower =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormMinpolyCoeffZeroPowOfPowEqNeg =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormMinpolyCoeffZeroPowOfPowEqNeg", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.InvertibleSpanSingleton\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormPowLeNormFactorial\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.RealisesUnitPow\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

namespace GlobalTheory

open Polynomial

theorem norm_minpoly_coeff_zero_pow_of_pow_eq_neg :
    ∀ (l : ℕ) [Fact l.Prime] (F : IntermediateField ℚ_[l] (Om l)) (N : ℕ) (x : Om l), 0 < N →
      x ^ N = -(l : Om l) →
      ‖(((minpoly F x).coeff 0 : F) : Om l)‖ ^ N = ((l : ℝ)⁻¹) ^ (minpoly F x).natDegree := by
  intro l _ F N x hN hx
  set P : F[X] := Polynomial.X ^ N + Polynomial.C (l : F) with hP
  have hPm : P.Monic := monic_X_pow_add_C _ hN.ne'
  have hPx : aeval x P = 0 := by
    simp [hP, hx]
  have hint : IsIntegral F x := ⟨P, hPm, by simpa [aeval_def] using hPx⟩
  have hm : (minpoly F x).Monic := minpoly.monic hint
  have hdvd : minpoly F x ∣ P := minpoly.dvd F x hPx
  set q : (Om l)[X] := (minpoly F x).map (algebraMap F (Om l)) with hq
  have hqm : q.Monic := hm.map _
  have hs : q.Splits := IsAlgClosed.splits q
  have hc : q.coeff 0 = (((minpoly F x).coeff 0 : F) : Om l) := by
    rw [hq, Polynomial.coeff_map]; rfl
  have hdeg : q.natDegree = (minpoly F x).natDegree := natDegree_map _
  have hroot : ∀ r ∈ q.roots, ‖r‖ ^ N = (l : ℝ)⁻¹ := by
    intro r hr
    have hr0 : aeval r (minpoly F x) = 0 := by
      rw [mem_roots hqm.ne_zero, IsRoot, hq, eval_map] at hr
      simpa [aeval_def] using hr
    obtain ⟨g, hg⟩ := hdvd
    have hPr : aeval r P = 0 := by rw [hg, map_mul, hr0, zero_mul]
    have hrN : r ^ N = -(l : Om l) := by
      have : r ^ N + (l : Om l) = 0 := by simpa [hP] using hPr
      exact eq_neg_of_add_eq_zero_left this
    rw [← norm_pow, hrN, norm_neg, ← map_natCast (algebraMap ℚ_[l] (Om l)),
      PadicAlgCl.norm_extends, Padic.norm_p]
  have hprod : ‖q.roots.prod‖ ^ N = (q.roots.map fun r => ‖r‖ ^ N).prod := by
    have := map_multiset_prod ((powMonoidHom N : ℝ →* ℝ).comp (normHom : Om l →*₀ ℝ).toMonoidHom) q.roots
    simpa [Function.comp_def] using this
  rw [← hc, hs.coeff_zero_eq_prod_roots_of_monic hqm, norm_mul, mul_pow, norm_pow, norm_neg,
    norm_one, one_pow, one_pow, one_mul, hprod, Multiset.map_congr rfl hroot, Multiset.map_const',
    Multiset.prod_replicate, ← hs.natDegree_eq_card_roots, hdeg]

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormMinpolyCoeffZeroPowOfPowEqNeg =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisQlEqGaloisKPrimeMulGaloisKinfty =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisQlEqGaloisKPrimeMulGaloisKinfty", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ExistsIterateDerivative\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinrankMulMinpolyNatDegreeLeOfPowEqNeg\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisDecompOfDisjoint\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LeAdjoinCompatibleRootsOfFiniteKummerTower\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormMinpolyCoeffZeroPowOfPowEqNeg\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormPowRamifiedUniformizerFieldZpow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

namespace GlobalTheory.NgalDecomp

theorem galQ_eq_GK_mul_GKinf : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (ϖ : PiSys l e), e + 1 = l ^ a → ∀ g : GQ l, ∃ h ∈ GK (ϖ.field a), ∃ k ∈ ϖ.GKinf, g = h * k := by
  intro l _ a e _ _ ϖ hea g
  have hl := (Fact.out : l.Prime)
  have hdvd : e ∣ l ^ a - 1 := ⟨1, by omega⟩
  have hG := ϖ.isGalois_field a hdvd
  have hK : FiniteDimensional ℚ_[l] (ϖ.field a).1 := (ϖ.field a).2
  have hcop : Nat.Coprime l e := by
    refine (Nat.Prime.coprime_iff_not_dvd hl).2 fun h => ?_
    have h2 : l ∣ l ^ a := dvd_pow_self l (NeZero.ne a)
    rw [← hea] at h2
    exact hl.one_lt.ne' (Nat.dvd_one.1 ((Nat.dvd_add_right h).1 h2))
  have hbot : (ϖ.field a).1 ⊓ ϖ.Kinf = ⊥ := by
    set F := (ϖ.field a).1 ⊓ ϖ.Kinf with hF
    haveI : FiniteDimensional ℚ_[l] F := FiniteDimensional.of_injective (IntermediateField.inclusion (inf_le_left : F ≤ (ϖ.field a).1)).toLinearMap (IntermediateField.inclusion (inf_le_left : F ≤ (ϖ.field a).1)).toRingHom.injective
    obtain ⟨n, hn⟩ := _root_.GlobalTheory.KinfFin.main l e ϖ F inferInstance inf_le_right
    have hN : 0 < l ^ n := pow_pos hl.pos n
    have hx : (ϖ.seq n ^ e) ^ (l ^ n) = -(l : Om l) := by rw [← pow_mul, mul_comm]; exact ϖ.seq_pow_mul n
    have hx0 : ϖ.seq n ^ e ≠ 0 := pow_ne_zero _ (ϖ.seq_ne_zero n)
    have hint : IsIntegral F (ϖ.seq n ^ e) := (Algebra.IsIntegral.isIntegral (R := ℚ_[l]) (ϖ.seq n ^ e)).tower_top
    have hc0 : (minpoly F (ϖ.seq n ^ e)).coeff 0 ≠ 0 := minpoly.coeff_zero_ne_zero hint hx0
    have hcF : (((minpoly F (ϖ.seq n ^ e)).coeff 0 : F) : Om l) ∈ F := ((minpoly F (ϖ.seq n ^ e)).coeff 0).2
    have hc : (((minpoly F (ϖ.seq n ^ e)).coeff 0 : F) : Om l) ≠ 0 := by
      simpa using hc0
    obtain ⟨j, hj⟩ := _root_.GlobalTheory.ValGroupKprime.norm_pow_field l a e ϖ _ (IntermediateField.mem_inf.1 hcF).1 hc
    have h2 := _root_.GlobalTheory.norm_minpoly_coeff_zero_pow_of_pow_eq_neg l F (l ^ n) (ϖ.seq n ^ e) hN hx
    have h4 := _root_.GlobalTheory.finrank_mul_minpoly_natDegree_le_of_pow_eq_neg l F (l ^ n) (ϖ.seq n ^ e) hN hx hn
    have hm : 0 < (minpoly F (ϖ.seq n ^ e)).natDegree := minpoly.natDegree_pos hint
    set m := (minpoly F (ϖ.seq n ^ e)).natDegree with hmdef
    set c : Om l := (((minpoly F (ϖ.seq n ^ e)).coeff 0 : F) : Om l) with hcdef
    have hl0 : (0 : ℝ) < l := by exact_mod_cast hl.pos
    have hl1 : (l : ℝ) ≠ 1 := by exact_mod_cast hl.one_lt.ne'
    have key : (l : ℝ) ^ (j * ((l ^ n : ℕ) : ℤ)) = (l : ℝ) ^ (-((m * e : ℕ) : ℤ)) := by
      have e1 : ‖c‖ ^ (e * l ^ n) = ((l : ℝ) ^ j) ^ (l ^ n) := by rw [pow_mul, hj]
      have e2 : ‖c‖ ^ (e * l ^ n) = (((l : ℝ)⁻¹) ^ m) ^ e := by rw [mul_comm, pow_mul, h2]
      rw [_root_.zpow_mul, zpow_natCast, ← e1, e2, _root_.zpow_neg, zpow_natCast, ← pow_mul, inv_pow]
    have key2 : j * ((l ^ n : ℕ) : ℤ) = -((m * e : ℕ) : ℤ) := zpow_right_injective₀ hl0 hl1 key
    have hdv : l ^ n ∣ m * e := by
      have : ((l ^ n : ℕ) : ℤ) ∣ ((m * e : ℕ) : ℤ) := ⟨-j, by linarith⟩
      exact Int.natCast_dvd_natCast.1 this
    have hdm : l ^ n ∣ m := (Nat.Coprime.pow_left n hcop).dvd_of_dvd_mul_right hdv
    have hle : l ^ n ≤ m := Nat.le_of_dvd hm hdm
    have hfr : Module.finrank ℚ_[l] F = 1 := by
      have hpos : 0 < Module.finrank ℚ_[l] F := Module.finrank_pos
      by_contra hne
      have : 2 * m ≤ Module.finrank ℚ_[l] F * m := Nat.mul_le_mul_right _ (by omega)
      omega
    exact IntermediateField.finrank_eq_one_iff.1 hfr
  exact _root_.GlobalTheory.InertiaEigenvalues.galois_decomp_of_disjoint l (ϖ.field a).1 ϖ.Kinf hK hG hbot g

end GlobalTheory.NgalDecomp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisQlEqGaloisKPrimeMulGaloisKinfty =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisQlEqGaloisKPrimeMulGaloisKinftyStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisQlEqGaloisKPrimeMulGaloisKinftyStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisQlEqGaloisKPrimeMulGaloisKinfty\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisQlEqGaloisKPrimeMulGaloisKinftyStatement =====
