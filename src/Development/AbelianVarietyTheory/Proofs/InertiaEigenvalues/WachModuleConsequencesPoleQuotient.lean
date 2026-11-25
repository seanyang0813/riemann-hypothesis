module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot
public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NBasisLoc
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionBasisDivisibility
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionsSpanFullLattice
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachWeierstrassTestAndDensity
public import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MkMemAdmissibleAtIffCocycle
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrystallineLatticeHodgeTateJumpsFinite
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemWachNIffExpansion
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PowerSeriesTwistedScalingTriangularLaurent
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProdGammaSubJumpUnitsAnnihilatesQuotient
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachInclusionXQFrobenius
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MemEurOfTeichmullerSeries
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DvrComplete
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GeomSumOneAddPrime
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RingsCyclotomic
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SaturatedAndIsogenyInvariant
public import Mathlib.RingTheory.PowerSeries.WeierstrassPreparation
public import Formalism.SharpRestriction.LevelLetterCocycles.GammaSemisimpleLocalOfConsequences
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCrystallineLetterOfHodgeJump
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedSubfieldLeCyclotomicExt
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeEqFiltrationSumAtLevel
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachNInvQPowGammaStable
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Basify
import Mathlib.Tactic.TypeStar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ConvXPowMul, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GammaEigenvalueOnWachLatticeQPowerQuotient, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachModuleInverseQuotientFreeFiniteCrystalline, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachModuleConsequencesPoleQuotient

-- Short-circuit expensive `OL LL` / `LetA` / `Submodule` typeclass backtracking.
public noncomputable local instance (priority := high) instAlgOLLetA {l : ℕ} [Fact l.Prime]
    (LL : Formalism.BasicNotions.Loc.FinExt l) (n : ℕ) :
    Algebra ↥(Formalism.BasicNotions.Loc.OL LL) (ZMod n → PowerSeries ↥(Formalism.BasicNotions.Loc.OL LL)) :=
  Pi.algebra _ _

public noncomputable local instance (priority := high) instModOLLetA {l : ℕ} [Fact l.Prime]
    (LL : Formalism.BasicNotions.Loc.FinExt l) (n : ℕ) :
    Module ↥(Formalism.BasicNotions.Loc.OL LL) (ZMod n → PowerSeries ↥(Formalism.BasicNotions.Loc.OL LL)) :=
  (instAlgOLLetA LL n).toModule

public noncomputable local instance (priority := high) instSMulOLLetA {l : ℕ} [Fact l.Prime]
    (LL : Formalism.BasicNotions.Loc.FinExt l) (n : ℕ) :
    SMul ↥(Formalism.BasicNotions.Loc.OL LL) (ZMod n → PowerSeries ↥(Formalism.BasicNotions.Loc.OL LL)) :=
  (instAlgOLLetA LL n).toSMul

public noncomputable local instance (priority := high) instHSMulOLLetA {l : ℕ} [Fact l.Prime]
    (LL : Formalism.BasicNotions.Loc.FinExt l) (n : ℕ) :
    HSMul ↥(Formalism.BasicNotions.Loc.OL LL)
      (ZMod n → PowerSeries ↥(Formalism.BasicNotions.Loc.OL LL))
      (ZMod n → PowerSeries ↥(Formalism.BasicNotions.Loc.OL LL)) :=
  @instHSMul _ _ (instAlgOLLetA LL n).toSMul

public noncomputable local instance (priority := high) instModOLSubmodLetA {l : ℕ} [Fact l.Prime]
    (LL : Formalism.BasicNotions.Loc.FinExt l) (n : ℕ) (M : Type*) [AddCommGroup M]
    [Module (ZMod n → PowerSeries ↥(Formalism.BasicNotions.Loc.OL LL)) M]
    [Module ↥(Formalism.BasicNotions.Loc.OL LL) M]
    [IsScalarTower ↥(Formalism.BasicNotions.Loc.OL LL) (ZMod n → PowerSeries ↥(Formalism.BasicNotions.Loc.OL LL)) M]
    (S : Submodule (ZMod n → PowerSeries ↥(Formalism.BasicNotions.Loc.OL LL)) M) :
    Module ↥(Formalism.BasicNotions.Loc.OL LL) ↥S :=
  Submodule.module' S

public noncomputable local instance (priority := high) instSMulOLSubmodLetA {l : ℕ} [Fact l.Prime]
    (LL : Formalism.BasicNotions.Loc.FinExt l) (n : ℕ) (M : Type*) [AddCommGroup M]
    [Module (ZMod n → PowerSeries ↥(Formalism.BasicNotions.Loc.OL LL)) M]
    [Module ↥(Formalism.BasicNotions.Loc.OL LL) M]
    [IsScalarTower ↥(Formalism.BasicNotions.Loc.OL LL) (ZMod n → PowerSeries ↥(Formalism.BasicNotions.Loc.OL LL)) M]
    (S : Submodule (ZMod n → PowerSeries ↥(Formalism.BasicNotions.Loc.OL LL)) M) :
    SMul ↥(Formalism.BasicNotions.Loc.OL LL) ↥S :=
  (Submodule.module' S).toSMul

public noncomputable local instance (priority := high) instHSMulOLSubmodLetA {l : ℕ} [Fact l.Prime]
    (LL : Formalism.BasicNotions.Loc.FinExt l) (n : ℕ) (M : Type*) [AddCommGroup M]
    [Module (ZMod n → PowerSeries ↥(Formalism.BasicNotions.Loc.OL LL)) M]
    [Module ↥(Formalism.BasicNotions.Loc.OL LL) M]
    [IsScalarTower ↥(Formalism.BasicNotions.Loc.OL LL) (ZMod n → PowerSeries ↥(Formalism.BasicNotions.Loc.OL LL)) M]
    (S : Submodule (ZMod n → PowerSeries ↥(Formalism.BasicNotions.Loc.OL LL)) M) :
    HSMul ↥(Formalism.BasicNotions.Loc.OL LL) ↥S ↥S :=
  @instHSMul _ _ (Submodule.module' S).toSMul

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ConvXPowMul =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ConvXPowMul", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NBasisLoc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionBasisDivisibility\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionsSpanFullLattice\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachWeierstrassTestAndDensity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL Formalism.MainNotions.DeltaInvariantLattices

noncomputable section

namespace GlobalTheory.NL.Approx

section Series

variable {L M : Type} [Field L] [AddCommGroup M] [Module L M]

theorem conv_eq_sum (e : PowerSeries L) (f : ℤ → M) (k : ℤ) (N : ℕ)
    (hN : ∀ j : ℕ, N ≤ j → f (k - j) = 0) :
    conv e f k = ∑ j ∈ Finset.range N, PowerSeries.coeff j e • f (k - j) := by
  unfold conv
  apply finsum_eq_sum_of_support_subset
  intro j hj
  rw [Function.mem_support] at hj
  simp only [Finset.coe_range, Set.mem_Iio]
  by_contra hc
  exact hj (by rw [hN j (not_lt.1 hc), smul_zero])

theorem exists_bound {f : ℤ → M} {m₀ : ℤ} (hf : ∀ k < m₀, f k = 0) (k : ℤ) :
    ∃ N : ℕ, ∀ j : ℕ, N ≤ j → f (k - j) = 0 := by
  refine ⟨(k - m₀ + 1).toNat, fun j hj => hf _ ?_⟩
  have h1 := Int.self_le_toNat (k - m₀ + 1)
  have h2 : (((k - m₀ + 1).toNat : ℕ) : ℤ) ≤ (j : ℤ) := by exact_mod_cast hj
  omega

theorem conv_add {f : ℤ → M} {m₀ : ℤ} (hf : ∀ k < m₀, f k = 0) (e e' : PowerSeries L) :
    conv (e + e') f = conv e f + conv e' f := by
  funext k
  obtain ⟨N, hN⟩ := exists_bound hf k
  simp only [Pi.add_apply, conv_eq_sum _ f k N hN, map_add (f := _), add_smul, Finset.sum_add_distrib]

theorem conv_smul {f : ℤ → M} {m₀ : ℤ} (hf : ∀ k < m₀, f k = 0) (c : L) (e : PowerSeries L) :
    conv (c • e) f = c • conv e f := by
  funext k
  obtain ⟨N, hN⟩ := exists_bound hf k
  simp only [Pi.smul_apply, conv_eq_sum _ f k N hN, map_smul, smul_eq_mul, mul_smul, Finset.smul_sum]

theorem conv_smul_add {f : ℤ → M} {m₀ : ℤ} (hf : ∀ k < m₀, f k = 0) (c : L) (e e' : PowerSeries L) :
    conv (c • (e + e')) f = c • conv e f + c • conv e' f := by
  rw [conv_smul hf, conv_add hf, smul_add]

theorem conv_X_pow_mul {f : ℤ → M} {m₀ : ℤ} (hf : ∀ k < m₀, f k = 0) (m : ℕ) (p : PowerSeries L)
    (k : ℤ) : conv (PowerSeries.X ^ m * p) f k = conv p f (k - m) := by
  obtain ⟨N, hN⟩ := exists_bound hf (k - m)
  have hN' : ∀ j : ℕ, m + N ≤ j → f (k - j) = 0 := by
    intro j hj
    have := hN (j - m) (by omega)
    rwa [show k - (m : ℤ) - ((j - m : ℕ) : ℤ) = k - j by push_cast [show m ≤ j by omega]; ring] at this
  rw [conv_eq_sum _ f k _ hN', conv_eq_sum _ f (k - m) N hN, Finset.sum_range_add]
  rw [Finset.sum_eq_zero, zero_add]
  · refine Finset.sum_congr rfl fun j _ => ?_
    rw [PowerSeries.coeff_X_pow_mul', if_pos (by omega), show m + j - m = j by omega]
    congr 2
    push_cast
    ring
  · intro j hj
    rw [Finset.mem_range] at hj
    rw [PowerSeries.coeff_X_pow_mul', if_neg (by omega), zero_smul]

theorem combine {ι : Type} [Fintype ι] (F : ι → ℤ → M) (m₀ : ι → ℤ) (hbd : ∀ j, ∀ k < m₀ j, F j k = 0)
    (c : L) (e p : ι → PowerSeries L) (m : ℕ) (k : ℤ) :
    (∑ j, conv (c • (e j + PowerSeries.X ^ m * p j)) (F j)) k - c • (∑ j, conv (e j) (F j)) k =
      (∑ j, c • conv (p j) (F j)) (k - m) := by
  simp only [fun j => conv_smul_add (hbd j) c (e j) (PowerSeries.X ^ m * p j), Finset.sum_apply, Pi.add_apply,
    Pi.smul_apply, Finset.sum_add_distrib, Finset.smul_sum, fun j => conv_X_pow_mul (hbd j) m (p j) k]
  abel

end Series


set_option maxHeartbeats 4000000 in
set_option synthInstance.maxHeartbeats 400000 in
theorem approx : ∀ (D : Formalism.BasicNotions.D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F) (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL), let W := (HW l).W K s LL h; let C := Cm l; ∀ T : Lt K LL, IsCrys ((D.loc l).PD K) T.ρ → ∀ (i : Let K) (ζ : ↥LL.1), IsPrimitiveRoot ζ (l ^ s) → ∀ g ∈ Lat C h T i ζ, ∀ m : ℕ, ∃ (n : ↥(W.N T)) (c : ↥LL.1), c ≠ 0 ∧ ∃ f ∈ Lat C h T i ζ, ∀ j : ℤ, ex C h T i ζ n j - c • g j = f (j - m) := by
  intro D HW F Cm l _ K s LL h W C T hT i ζ hζ g hg m
  have hζ' : ∃ j : ℕ, IsPrimitiveRoot ζ (l ^ j) := ⟨s, hζ⟩
  obtain ⟨nb⟩ := GlobalTheory.NL.N_basis D.loc D.locA HW F l K s LL h T hT
  have hFull := GlobalTheory.NL.FullLevel.full_lat D.loc D.locA D.locT HW F Cm l K s LL h T hT i ζ hζ
  obtain ⟨hsm, hB⟩ := GlobalTheory.NL.LevInj.expansion_basis D.loc D.locA D.locT HW F Cm l K s LL h T hT i ζ hζ' hFull
  obtain ⟨-, hspan, -⟩ := hB _ nb
  obtain ⟨e, rfl⟩ := hspan g hg
  have hW := (GlobalTheory.NL.WDiv.weierstrass_dense D.loc HW l K s LL h).2.2.1 i ζ hζ'
  choose a c hc hdiv using fun j => hW (e j) m
  choose p hp using hdiv
  haveI := LL.2
  haveI : IsFractionRing ↥(OL LL) ↥LL.1 :=
    integralClosure.isFractionRing_of_finite_extension ℚ_[l] ↥LL.1
  obtain ⟨b, hb⟩ := IsLocalization.exist_integer_multiples_of_finite (nonZeroDivisors ↥(OL LL)) c
  have ho : ∀ j, ∃ o : ↥(OL LL), algebraMap ↥(OL LL) ↥LL.1 o = (b : ↥(OL LL)) • c j :=
    fun j => RingHom.mem_rangeS.1 (hb j)
  choose o ho using ho
  obtain ⟨cc, hccd⟩ : ∃ x : ↥LL.1, x = algebraMap ↥(OL LL) ↥LL.1 (b : ↥(OL LL)) := ⟨_, rfl⟩
  have hcc : cc ≠ 0 := hccd ▸ IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors b.2
  have ho' : ∀ j, algebraMap ↥(OL LL) ↥LL.1 (o j) = cc * c j := by
    intro j
    rw [ho j, hccd, Algebra.smul_def]
  choose m0 hm0 using fun j => (C.C K s LL h).tie.levB_supp T i ζ (nb j)
  have hlev : ∀ j, W.lev i ζ (o j • a j) = cc • (e j + PowerSeries.X ^ m * p j) := by
    intro j
    rw [map_smul, ← algebraMap_smul ↥LL.1 (o j), ho' j, mul_smul, ← hp j, add_sub_cancel]
  have hbd : ∀ j, ∀ k < m0 j, ex C h T i ζ (nb j) k = 0 := hm0
  have hexn : ex C h T i ζ (∑ j, (o j • a j) • nb j) =
      ∑ j, conv (cc • (e j + PowerSeries.X ^ m * p j)) (ex C h T i ζ (nb j)) := by
    have := map_sum ((C.C K s LL h).tie.levB T i ζ) (fun j => (o j • a j) • nb j) Finset.univ
    refine this.trans (Finset.sum_congr rfl fun j _ => ?_)
    rw [← hlev j]
    exact hsm _ _
  refine ⟨∑ j, (o j • a j) • nb j, cc, hcc, ∑ j, cc • conv (p j) (ex C h T i ζ (nb j)),
    Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨p j, nb j, rfl⟩),
    fun k => ?_⟩
  rw [hexn]
  exact combine _ m0 hbd cc e p m k

end GlobalTheory.NL.Approx
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ConvXPowMul =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GammaEigenvalueOnWachLatticeQPowerQuotient =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GammaEigenvalueOnWachLatticeQPowerQuotient", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MkMemAdmissibleAtIffCocycle\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ConvXPowMul\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrystallineLatticeHodgeTateJumpsFinite\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCrystallineLetterOfHodgeJump\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemWachNIffExpansion\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PowerSeriesTwistedScalingTriangularLaurent\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProdGammaSubJumpUnitsAnnihilatesQuotient\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedSubfieldLeCyclotomicExt\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionBasisDivisibility\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionsSpanFullLattice\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachInclusionXQFrobenius\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeEqFiltrationSumAtLevel\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachNInvQPowGammaStable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL Formalism.MainNotions.DeltaInvariantLattices

namespace GlobalTheory.NL.IntegralScalarUnits

def GoodP {L M : Type} [Field L] [AddCommGroup M] [Module L M] (Sub : ℤ → Submodule L M) (y : ℕ)
    (k : ℤ) (d : M) (f : ℤ → M) (lam : L) : Prop :=
  (∃ m : ℤ, ∀ j < m, f j = 0) ∧ (∀ j, f j ∈ Sub j) ∧ (∀ j < k, f j ∈ Sub (j - y)) ∧
    f k - lam • d ∈ Sub (k - y)

theorem goodP_conv_sub_smul {L M : Type} [Field L] [TopologicalSpace L] [AddCommGroup M] [Module L M]
    (w : PowerSeries L) (u : L) (Sub : ℤ → Submodule L M) (hS : Monotone Sub) (y : ℕ) (k : ℤ)
    (d : M) (f : ℤ → M) (lam c' : L) (hf : GoodP Sub y k d f lam) :
    GoodP Sub y k d (conv w (fun m => u ^ m • f m) - c' • f)
      ((PowerSeries.constantCoeff w * u ^ k - c') * lam) := by
  obtain ⟨hb, h1, h2, h3⟩ := hf
  obtain ⟨t1, t2, t3, t4⟩ := GlobalTheory.NL.Twist.tri w u Sub hS y f hb h1 k h2
  obtain ⟨m1, hm1⟩ := t1
  obtain ⟨m2, hm2⟩ := hb
  refine ⟨⟨min m1 m2, fun j hj => ?_⟩, fun j => ?_, fun j hj => ?_, ?_⟩
  · simp only [Pi.sub_apply, Pi.smul_apply]
    rw [hm1 j (lt_of_lt_of_le hj (min_le_left _ _)), hm2 j (lt_of_lt_of_le hj (min_le_right _ _)),
      smul_zero, sub_zero]
  · exact Submodule.sub_mem _ (t2 j) (Submodule.smul_mem _ _ (h1 j))
  · exact Submodule.sub_mem _ (t3 j hj) (Submodule.smul_mem _ _ (h2 j hj))
  · have e : (conv w (fun m => u ^ m • f m) - c' • f) k -
        ((PowerSeries.constantCoeff w * u ^ k - c') * lam) • d =
        (conv w (fun m => u ^ m • f m) k - (PowerSeries.constantCoeff w * u ^ k) • f k) +
          (PowerSeries.constantCoeff w * u ^ k - c') • (f k - lam • d) := by
      simp only [Pi.sub_apply, Pi.smul_apply]
      module
    rw [e]
    exact Submodule.add_mem _ t4 (Submodule.smul_mem _ _ h3)

theorem algebraMap_units_zpow {O LL : Type} [CommRing O] [Field LL] [Algebra O LL] (v : Oˣ) (m : ℤ) :
    algebraMap O LL ((v ^ m : Oˣ) : O) = (algebraMap O LL (v : O)) ^ m := by
  have e := map_zpow (Units.map (algebraMap O LL : O →* LL)) v m
  calc algebraMap O LL ((v ^ m : Oˣ) : O)
      = ((Units.map (algebraMap O LL : O →* LL) (v ^ m) : LLˣ) : LL) := rfl
    _ = (((Units.map (algebraMap O LL : O →* LL) v) ^ m : LLˣ) : LL) := by rw [e]
    _ = (algebraMap O LL (v : O)) ^ m := by rw [Units.val_zpow_eq_zpow_val]; rfl

theorem algebraMap_units_ne_zero {O LL : Type} [CommRing O] [Field LL] [Algebra O LL] (v : Oˣ) :
    algebraMap O LL (v : O) ≠ 0 :=
  (Units.map (algebraMap O LL : O →* LL) v).ne_zero


private theorem expansion_smul_scalar {O L A X M : Type}
    [CommRing O] [Field L] [TopologicalSpace L] [Algebra O L] [CommRing A] [Algebra O A]
    [AddCommGroup X] [Module O X] [Module A X] [IsScalarTower O A X]
    [AddCommGroup M] [Module L M] (lev : A →ₐ[O] PowerSeries L) (E : X → ℤ → M)
    (hE : ∀ a x, E (a • x) = conv (lev a) (E x)) (c : O) (x : X) :
    E (c • x) = algebraMap O L c • E x := by
  rw [← smul_one_smul A c x, hE, ← Algebra.algebraMap_eq_smul_one, lev.commutes,
    PowerSeries.algebraMap_apply]
  exact GlobalTheory.NL.LevInj.conv_C _ _


set_option synthInstance.maxHeartbeats 400000 in
theorem ex_smul_O (D : Formalism.BasicNotions.D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL) (T : Lt K LL)
    (hT : IsCrys ((D.loc l).PD K) T.ρ) (i : Let K) (ζ : ↥LL.1) (hprim : IsPrimitiveRoot ζ (l ^ s))
    (c' : ↥(OL LL)) (x : ↥(((HW l).W K s LL h).N T)) :
    ex (Cm l) h T i ζ (c' • x) = algebraMap ↥(OL LL) ↥LL.1 c' • ex (Cm l) h T i ζ x := by
  have hfull := GlobalTheory.NL.FullLevel.full_lat D.loc D.locA D.locT HW F Cm l K s LL h T hT i ζ hprim
  have hlin := (GlobalTheory.NL.LevInj.expansion_basis D.loc D.locA D.locT HW F Cm l K s LL h T hT i ζ ⟨s, hprim⟩ hfull).1
  exact expansion_smul_scalar (((HW l).W K s LL h).lev i ζ) (ex (Cm l) h T i ζ) hlin c' x

theorem goodP_prod {O L M X : Type} [CommRing O] [Field L] [TopologicalSpace L] [Algebra O L]
    [AddCommGroup M] [Module L M] [AddCommGroup X] [Module O X]
    (γ : X →ₗ[O] X) (P : Submodule O X) (hP : ∀ x ∈ P, γ x ∈ P) (E : X → ℤ → M)
    (w : PowerSeries L) (u : L)
    (hE : ∀ x ∈ P, ∀ c : O, E (γ x - c • x) = conv w (fun m => u ^ m • E x m) - algebraMap O L c • E x)
    (Sub : ℤ → Submodule L M) (hS : Monotone Sub) (y : ℕ) (k : ℤ) (d : M) (x₀ : X) (hx₀ : x₀ ∈ P)
    (lam₀ : L) (h₀ : GoodP Sub y k d (E x₀) lam₀) (S : Finset Oˣ) :
    Polynomial.aeval γ (∏ c ∈ S, ((Polynomial.X : Polynomial O) - Polynomial.C (c : O))) x₀ ∈ P ∧
    GoodP Sub y k d (E (Polynomial.aeval γ (∏ c ∈ S, ((Polynomial.X : Polynomial O) - Polynomial.C (c : O))) x₀))
      (lam₀ * ∏ c ∈ S, (PowerSeries.constantCoeff w * u ^ k - algebraMap O L (c : O))) := by
  classical
  induction S using Finset.induction_on with
  | empty => simpa using ⟨hx₀, h₀⟩
  | insert c S hc ih =>
    obtain ⟨hm, hg⟩ := ih
    have e : Polynomial.aeval γ (∏ c' ∈ insert c S, ((Polynomial.X : Polynomial O) - Polynomial.C (c' : O))) x₀ =
        γ (Polynomial.aeval γ (∏ c' ∈ S, ((Polynomial.X : Polynomial O) - Polynomial.C (c' : O))) x₀) -
          (c : O) • Polynomial.aeval γ (∏ c' ∈ S, ((Polynomial.X : Polynomial O) - Polynomial.C (c' : O))) x₀ := by
      rw [Finset.prod_insert hc, map_mul, Module.End.mul_apply]
      simp only [map_sub, Polynomial.aeval_X, Polynomial.aeval_C, LinearMap.sub_apply,
        Module.algebraMap_end_apply]
    rw [e, Finset.prod_insert hc, mul_left_comm, hE _ hm]
    exact ⟨P.sub_mem (hP _ hm) (P.smul_mem _ hm), goodP_conv_sub_smul w u Sub hS y k d _ _ _ hg⟩

theorem ex_sub {l : ℕ} [Fact l.Prime] {P : LocPrime l} {AI : LocAinf l P} {H : LocHW l P} {F : LocFon l P AI H}
    {K : FinExt l} {s : ℕ} {LL : FinExt l} (C : LocCmpT l P AI H F) (h : Good K s LL) (T : Lt K LL)
    (i : Let K) (ζ : ↥LL.1) (x x' : ↥((H.W K s LL h).N T)) :
    ex C h T i ζ (x - x') = ex C h T i ζ x - ex C h T i ζ x' :=
  ((C.C K s LL h).tie.levB T i ζ).map_sub x x'


private theorem tensor_range_mono {R L V B : Type} [CommSemiring R] [CommSemiring L]
    [Algebra R L] [AddCommMonoid V] [Module R V] [Module L V] [IsScalarTower R L V]
    [AddCommMonoid B] [Module R B] {U U' : Submodule R B} (h : U ≤ U') :
    LinearMap.range (AlgebraTensorModule.map (LinearMap.id : V →ₗ[L] V) U.subtype) ≤
      LinearMap.range (AlgebraTensorModule.map (LinearMap.id : V →ₗ[L] V) U'.subtype) := by
  rintro _ ⟨x, rfl⟩
  refine ⟨AlgebraTensorModule.map (LinearMap.id : V →ₗ[L] V) (Submodule.inclusion h) x, ?_⟩
  rw [← LinearMap.comp_apply, ← AlgebraTensorModule.map_comp]
  rfl

private theorem goodP_of_single_approx {L M : Type} [Field L] [AddCommGroup M] [Module L M]
    (Sub : ℤ → Submodule L M) (y : ℕ) (k : ℤ) (d : M) (c : L) (n f : ℤ → M)
    (hn : (∃ m : ℤ, ∀ j < m, n j = 0) ∧ ∀ j, n j ∈ Sub j)
    (hf : ∀ j, f j ∈ Sub j) (happrox : ∀ j, n j - c • (Pi.single k d : ℤ → M) j = f (j - y)) :
    GoodP Sub y k d n c := by
  refine ⟨hn.1, hn.2, fun j hj => ?_, ?_⟩
  · have e := happrox j
    rw [Pi.single_eq_of_ne hj.ne, smul_zero, sub_zero] at e
    exact e.symm ▸ hf (j - y)
  · have e := happrox k
    rw [Pi.single_eq_same] at e
    exact e.symm ▸ hf (k - y)

private theorem quotient_eigenvector_of_expansion {O L M X : Type}
    [CommRing O] [Field L] [TopologicalSpace L] [Algebra O L]
    [AddCommGroup M] [Module L M] [AddCommGroup X] [Module O X]
    (γ q : X →ₗ[O] X) (P N : Submodule O X) (hP : ∀ x, x ∈ P ↔ q x ∈ N)
    (hγ : ∀ x, q x ∈ N → q (γ x) ∈ N) (expansion : N → ℤ → M)
    (hsub : ∀ v v', expansion (v - v') = expansion v - expansion v')
    (hsmul : ∀ (c : O) v, expansion (c • v) = algebraMap O L c • expansion v)
    (w : PowerSeries L) (u : L)
    (htwist : ∀ x (hx : q x ∈ N) (hx' : q (γ x) ∈ N),
      expansion ⟨q (γ x), hx'⟩ = conv w (fun m => u ^ m • expansion ⟨q x, hx⟩ m))
    (Sub : ℤ → Submodule L M) (hMono : Monotone Sub) (y : ℕ) (k : ℤ) (d : M)
    (hd : d ∉ Sub (k - y))
    (hcoeff : ∀ z (hz : q z ∈ N), z ∈ N → expansion ⟨q z, hz⟩ k ∈ Sub (k - y))
    (x₀ : X) (n : N) (hq : q x₀ = (n : X)) (c : L) (hc : c ≠ 0)
    (hbase : GoodP Sub y k d (expansion n) c)
    (S : Finset Oˣ) (r : Oˣ) (hr : r ∈ S) (hinj : Function.Injective (algebraMap O L))
    (hu : PowerSeries.constantCoeff w * u ^ k = algebraMap O L (r : O))
    (hkill : Polynomial.aeval γ (∏ v ∈ S, ((Polynomial.X : Polynomial O) - Polynomial.C (v : O))) x₀ ∈ N) :
    ∃ z ∈ P, z ∉ N ∧ γ z - (r : O) • z ∈ N := by
  classical
  let E : X → ℤ → M := fun x => if hx : q x ∈ N then expansion ⟨q x, hx⟩ else 0
  have hEval (x : X) (hx : q x ∈ N) : E x = expansion ⟨q x, hx⟩ := dite_eq_left hx
  have hstep (x : X) (hx : x ∈ P) (v : O) :
      E (γ x - v • x) = conv w (fun m => u ^ m • E x m) - algebraMap O L v • E x := by
    have hx' := (hP x).1 hx
    have hγx := hγ x hx'
    have hm : q (γ x - v • x) ∈ N := by
      rw [map_sub, LinearMap.map_smul]
      exact N.sub_mem hγx (N.smul_mem v hx')
    have e : (⟨q (γ x - v • x), hm⟩ : N) = ⟨q (γ x), hγx⟩ - v • ⟨q x, hx'⟩ :=
      Subtype.ext (by simp only [map_sub, LinearMap.map_smul, Submodule.coe_sub, Submodule.coe_smul])
    rw [hEval _ hm, hEval _ hx', e, hsub, hsmul, htwist x hx' hγx]
  have hq₀ : q x₀ ∈ N := hq.symm ▸ n.2
  have hbase' : GoodP Sub y k d (E x₀) c := by
    rw [hEval x₀ hq₀, show (⟨q x₀, hq₀⟩ : N) = n from Subtype.ext hq]
    exact hbase
  let z := Polynomial.aeval γ (∏ v ∈ S.erase r, ((Polynomial.X : Polynomial O) - Polynomial.C (v : O))) x₀
  obtain ⟨hz, hzG⟩ := goodP_prod γ P (fun x hx => (hP _).2 (hγ x ((hP x).1 hx))) E w u
    hstep Sub hMono y k d x₀ ((hP x₀).2 hq₀) c hbase' (S.erase r)
  change z ∈ P at hz
  have hzq := (hP z).1 hz
  refine ⟨z, hz, ?_, ?_⟩
  · intro hzN
    change GoodP Sub y k d (E z) _ at hzG
    rw [hEval z hzq] at hzG
    have hd' := (Sub (k - y)).sub_mem (hcoeff z hzq hzN) hzG.2.2.2
    rw [sub_sub_cancel] at hd'
    let lam := c * ∏ v ∈ S.erase r, (PowerSeries.constantCoeff w * u ^ k - algebraMap O L (v : O))
    change lam • d ∈ Sub (k - y) at hd'
    have hlam : lam ≠ 0 := mul_ne_zero hc (Finset.prod_ne_zero_iff.2 fun v hv => by
      rw [hu, sub_ne_zero]
      exact fun he => Finset.ne_of_mem_erase hv (Units.ext (hinj he)).symm)
    have := (Sub (k - y)).smul_mem lam⁻¹ hd'
    rw [inv_smul_smul₀ hlam] at this
    exact hd this
  · rw [← Finset.mul_prod_erase S _ hr, map_mul, mul_apply_eq_comp] at hkill
    simpa only [map_sub, Polynomial.aeval_X, Polynomial.aeval_C, LinearMap.sub_apply,
      Module.algebraMap_end_apply] using hkill

set_option synthInstance.maxHeartbeats 400000 in
theorem occ : ∀ (D : Formalism.BasicNotions.D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F) (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL), let W := (HW l).W K s LL h; ∀ T : Lt K LL, IsCrys ((D.loc l).PD K) T.ρ → ∀ y : ℕ, 1 ≤ y → ∀ a ∈ Jumps (PD := (D.loc l).PD K) T, ∀ j : ℕ, 1 ≤ j → j ≤ y → ∃ x ∈ invN W T (W.Q ^ y), x ∉ W.N T ∧ W.γ T x - (((uU W ^ (-(a + j)) : (↥(OL LL))ˣ) : ↥(OL LL))) • x ∈ W.N T := by
  intro D HW F Cm l _ K s LL h W T hT y hy a ha j hj1 hjy
  classical
  obtain ⟨τ, hτ⟩ := ha
  have hpts := GlobalTheory.NL.Points.points D.loc HW l K s LL h
  obtain ⟨i, ζ, hPt⟩ := hpts.2.2.1 τ
  have hprim : IsPrimitiveRoot ζ (l ^ s) := (hpts.2.1 i ζ τ hPt).1
  obtain ⟨d, hdD, hdA, hdA1⟩ :=
    GlobalTheory.NL.JumpVec.exists_letter_of_jump D HW l K s LL h T hT i ζ τ hPt a hτ
  have hQ := ((GlobalTheory.NL.IoXQ.main D.loc D.locA HW F l K s LL h).2.2.2.2.2.2 0).2
  simp only [pow_zero, AlgHom.one_apply] at hQ
  have hJ := GlobalTheory.NL.JumpsFinite.jumps_finite D HW l K s LL h T hT
  let Fs : Finset (↥(OL LL))ˣ := (hJ.toFinset ×ˢ Finset.Icc 1 y).image
    (fun p : ℤ × ℕ => uU W ^ (-(p.1 + (p.2 : ℤ))))
  have hFs : ∀ a' ∈ Jumps (PD := (D.loc l).PD K) T, ∀ j' : ℕ, 1 ≤ j' → j' ≤ y →
      uU W ^ (-(a' + j')) ∈ Fs := by
    intro a' ha' j' h1 h2
    exact Finset.mem_image.2 ⟨(a', j'), Finset.mem_product.2
      ⟨hJ.mem_toFinset.2 ha', Finset.mem_Icc.2 ⟨h1, h2⟩⟩, rfl⟩
  have hFAnti : Antitone (FilAt ((D.loc l).PD K) T τ) := by
    apply antitone_int_of_succ_le
    intro b
    apply sup_le_sup_right
    apply inf_le_inf_left
    exact tensor_range_mono (V := T.V) (((D.loc l).PD K).Fil_anti b :
      (((D.loc l).PD K).Fil (b + 1)).restrictScalars ℚ_[l] ≤
        (((D.loc l).PD K).Fil b).restrictScalars ℚ_[l])
  let k : ℤ := (y : ℤ) - a - j
  let g : ℤ → T.V ⊗[ℚ_[l]] (D.loc l).R.B := Pi.single k d
  have hlat := GlobalTheory.NL.LatFil.lat_eq_fil D.loc D.locA D.locT HW F Cm l K s LL h T hT i ζ τ hPt
  have hg : g ∈ Lat (Cm l) h T i ζ := by
    refine (hlat g).2 ⟨⟨k, fun j' hj' => Pi.single_eq_of_ne hj'.ne _⟩, fun j' => ?_⟩
    by_cases hj' : j' = k
    · simp only [hj', g, Pi.single_eq_same]
      exact ⟨hdD, hFAnti (show -k ≤ a by dsimp [k]; omega) hdA⟩
    · rw [show g j' = 0 from Pi.single_eq_of_ne hj' _, map_zero]
      exact ⟨Submodule.zero_mem _, Submodule.zero_mem _⟩
  obtain ⟨n, c, hc, f, hf, hfe⟩ :=
    GlobalTheory.NL.Approx.approx D HW F Cm l K s LL h T hT i ζ hprim g hg y
  let q : W.DD T →ₗ[↥(OL LL)] W.DD T := (smulA W T (W.Q ^ y)).restrictScalars ↥(OL LL)
  let N := (W.N T).restrictScalars ↥(OL LL)
  let P := (invN W T (W.Q ^ y)).restrictScalars ↥(OL LL)
  let expansion : N → ℤ → T.V ⊗[ℚ_[l]] (D.loc l).R.B := ex (Cm l) h T i ζ
  have hP (x : W.DD T) : x ∈ P ↔ q x ∈ N := Iff.rfl
  have hgam := GlobalTheory.NL.GamQ.gam_Q_pow D HW F Cm l K s LL h T hT y
  obtain ⟨w, hw0, hwE⟩ := hgam.2 i ζ hprim
  let Sub : ℤ → Submodule ↥LL.1 (T.V ⊗[ℚ_[l]] (D.loc l).R.B) := fun m =>
    Di (HW l) h T i ⊓ (FilAt ((D.loc l).PD K) T τ (-m)).comap
      (ιV ((D.loc l).PD K) (LL := ↥LL.1) (V := T.V))
  have hSubMono : Monotone Sub := fun _ _ hmm =>
    inf_le_inf_left _ (Submodule.comap_mono (hFAnti (neg_le_neg hmm)))
  have hLatSub (v) (hv : v ∈ Lat (Cm l) h T i ζ) :
      (∃ m : ℤ, ∀ j < m, v j = 0) ∧ ∀ j, v j ∈ Sub j := (hlat v).1 hv
  have hn := hLatSub _ (Submodule.subset_span ⟨1, n, (GlobalTheory.NL.LatFil.conv_one _).symm⟩)
  have hbase : GoodP Sub y k d (expansion n) c :=
    goodP_of_single_approx Sub y k d c (expansion n) f hn (hLatSub f hf).2 hfe
  have hd : d ∉ Sub (k - y) := fun hmem =>
    hdA1 (hFAnti (show a + 1 ≤ -(k - (y : ℤ)) by dsimp [k]; omega) hmem.2)
  have hcoeff (z : W.DD T) (hz : q z ∈ N) (hzN : z ∈ N) :
      expansion ⟨q z, hz⟩ k ∈ Sub (k - y) := by
    obtain ⟨f', hf', he⟩ := (GlobalTheory.NL.WachModulePoleQuotient.mem_N_iff_expansion
      D HW F Cm l K s LL h T hT y z hz).1 hzN i ζ hprim
    rw [show expansion ⟨q z, hz⟩ k = f' (k - y) from he k]
    exact (hLatSub f' hf').2 (k - y)
  obtain ⟨e, he⟩ : ∃ e : W.EE, algebraMap (AA K LL) W.EE (W.Q ^ y) * e = 1 := by
    rw [map_pow]
    exact (hQ.pow y).exists_right_inv
  let x₀ : W.DD T := e • (n : W.DD T)
  have hx₀Q : q x₀ = (n : W.DD T) := by
    change W.Q ^ y • (e • (n : W.DD T)) = _
    rw [← smul_assoc, Algebra.smul_def, he, one_smul]
  let r : (↥(OL LL))ˣ := uU W ^ (-(a + j))
  have hr : r ∈ Fs := hFs a ⟨τ, hτ⟩ j hj1 hjy
  let u : ↥LL.1 := algebraMap ↥(OL LL) ↥LL.1 (W.χΓ W.gam : ↥(OL LL))
  have hu : PowerSeries.constantCoeff w * u ^ k = algebraMap ↥(OL LL) ↥LL.1 (r : ↥(OL LL)) := by
    have hune : u ≠ 0 := algebraMap_units_ne_zero (W.χΓ W.gam)
    have hexp : -(y : ℤ) + k = -(a + (j : ℤ)) := by dsimp [k]; omega
    calc
      PowerSeries.constantCoeff w * u ^ k = u ^ (-(y : ℤ) + k) :=
        (congrArg (· * u ^ k) hw0).trans (zpow_add₀ hune _ _).symm
      _ = u ^ (-(a + (j : ℤ))) := congrArg (u ^ ·) hexp
      _ = algebraMap ↥(OL LL) ↥LL.1 (r : ↥(OL LL)) :=
        (algebraMap_units_zpow (W.χΓ W.gam) (-(a + (j : ℤ)))).symm
  exact quotient_eigenvector_of_expansion (W.γ T) q P N hP hgam.1 expansion
    (ex_sub (Cm l) h T i ζ) (ex_smul_O D HW F Cm l K s LL h T hT i ζ hprim)
    w u (fun x hx hx' => funext (hwE x hx hx')) Sub hSubMono y k d hd hcoeff
    x₀ n hx₀Q c hc hbase Fs r hr Subtype.val_injective hu
    (GlobalTheory.NL.KillLevels.annihilate D HW F Cm l K s LL h T hT y hy
      Fs hFs x₀ ((hP x₀).2 (hx₀Q.symm ▸ n.2)))

end GlobalTheory.NL.IntegralScalarUnits
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GammaEigenvalueOnWachLatticeQPowerQuotient =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachModuleInverseQuotientFreeFiniteCrystalline =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachModuleInverseQuotientFreeFiniteCrystalline", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MemEurOfTeichmullerSeries\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MkMemAdmissibleAtIffCocycle\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DvrComplete\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GeomSumOneAddPrime\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RingsCyclotomic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SaturatedAndIsogenyInvariant\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachInclusionXQFrobenius\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.PowerSeries.WeierstrassPreparation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL Formalism.MainNotions.DeltaInvariantLattices

noncomputable section

namespace GlobalTheory.NL.QuoFree

theorem finite_of_killed {R A M : Type*} [CommRing R] [CommRing A] [Algebra R A] [AddCommGroup M]
    [Module A M] [Module R M] [IsScalarTower R A M] [hM : Module.Finite A M] (q : A)
    (hq : ∀ m : M, q • m = 0) (F : Finset A)
    (hF : ∀ a : A, ∃ c, a - q * c ∈ Submodule.span R (F : Set A)) : Module.Finite R M := by
  obtain ⟨Gs, hG⟩ := hM.fg_top
  set P := Submodule.span R (Set.image2 (· • ·) (F : Set A) (Gs : Set M)) with hPdef
  have key : ∀ b ∈ Submodule.span R (F : Set A), ∀ g ∈ Gs, b • g ∈ P := by
    intro b hb g hg
    induction hb using Submodule.span_induction with
    | mem f hf => exact Submodule.subset_span ⟨f, hf, g, hg, rfl⟩
    | zero => simp
    | add x y _ _ hx hy => rw [add_smul]; exact add_mem hx hy
    | smul r x _ hx => rw [smul_assoc]; exact Submodule.smul_mem _ r hx
  have hsplit : ∀ (a : A) (g : M), g ∈ Gs → a • g ∈ P := by
    intro a g hg
    obtain ⟨c, hc⟩ := hF a
    have : a • g = (a - q * c) • g := by
      rw [sub_smul, mul_comm, mul_smul, hq, smul_zero, sub_zero]
    rw [this]
    exact key _ hc g hg
  let P' : Submodule A M :=
    { carrier := P
      add_mem' := fun ha hb => P.add_mem ha hb
      zero_mem' := P.zero_mem
      smul_mem' := by
        intro a m hm
        induction hm using Submodule.span_induction with
        | mem x hx =>
          obtain ⟨f, hf, g, hg, rfl⟩ := hx
          change a • (f • g) ∈ P
          rw [← mul_smul]
          exact hsplit _ g hg
        | zero => simp
        | add x y _ _ hx hy => rw [smul_add]; exact P.add_mem hx hy
        | smul r x _ hx => rw [smul_comm]; exact P.smul_mem r hx }
  have htop : P = ⊤ := by
    refine eq_top_iff.2 fun m _ => ?_
    have hm : m ∈ Submodule.span A (Gs : Set M) := by rw [hG]; trivial
    have hle : Submodule.span A (Gs : Set M) ≤ P' := Submodule.span_le.2 fun g hg => by
      have := hsplit 1 g hg
      rwa [one_smul] at this
    exact hle hm
  refine ⟨?_⟩
  rw [← htop]
  exact Submodule.fg_span (Set.Finite.image2 _ F.finite_toSet Gs.finite_toSet)

theorem coe_poly_eq_sum {O : Type} [CommRing O] (D : ℕ) (r : Polynomial O) (hr : r.degree < D) :
    (r : PowerSeries O) = ∑ k ∈ Finset.range D, r.coeff k • (PowerSeries.X : PowerSeries O) ^ k := by
  ext m

  simp only [Polynomial.coeff_coe, map_sum, PowerSeries.coeff_smul, PowerSeries.coeff_X_pow, smul_eq_mul,
  mul_ite, mul_one, mul_zero, Finset.sum_ite_eq, Finset.mem_range]
  split_ifs with hm
  · rfl
  · exact Polynomial.coeff_eq_zero_of_degree_lt (lt_of_lt_of_le hr (by exact_mod_cast not_lt.1 hm))

theorem div_letters {O : Type} [CommRing O] [IsLocalRing O]
    [IsAdicComplete (IsLocalRing.maximalIdeal O) O] (n : ℕ) [NeZero n] (g : PowerSeries O)
    (hg : g.map (IsLocalRing.residue O) ≠ 0) :
    ∃ F : Finset (LetA O n), ∀ a : LetA O n, ∃ c,
      a - (fun _ => g) * c ∈ Submodule.span O (F : Set (LetA O n)) := by
  classical
  have H : g.IsWeierstrassDivisor := PowerSeries.IsWeierstrassDivisor.of_map_ne_zero hg
  set D := (g.map (Ideal.Quotient.mk (IsLocalRing.maximalIdeal O))).order.toNat
  refine ⟨(Finset.univ ×ˢ Finset.range D).image
    (fun p : ZMod n × ℕ => (Pi.single p.1 ((PowerSeries.X : PowerSeries O) ^ p.2) : LetA O n)), ?_⟩
  intro a
  refine ⟨fun i => H.div (a i), ?_⟩
  have hdecomp : a - (fun _ => g) * (fun i => H.div (a i)) =
      ∑ i : ZMod n, ∑ k ∈ Finset.range D,
        (H.mod (a i)).coeff k • (Pi.single i ((PowerSeries.X : PowerSeries O) ^ k) : LetA O n) := by
    funext j
    have hd := H.isWeierstrassDivisionAt_div_mod (a j)
    rw [Pi.sub_apply, Pi.mul_apply]
    rw [show a j - g * H.div (a j) = ((H.mod (a j) : Polynomial O) : PowerSeries O) from
      sub_eq_iff_eq_add'.2 hd.eq_mul_add]
    rw [coe_poly_eq_sum D _ hd.degree_lt, Finset.sum_apply,
      Finset.sum_eq_single j]
    · rw [Finset.sum_apply]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [Pi.smul_apply, Pi.single_eq_same]
    · intro b _ hb
      rw [Finset.sum_apply]
      refine Finset.sum_eq_zero fun k _ => ?_
      rw [Pi.smul_apply, Pi.single_eq_of_ne (Ne.symm hb), smul_zero]
    · simp
  rw [hdecomp]
  refine Submodule.sum_mem _ fun i _ => Submodule.sum_mem _ fun k hk =>
    Submodule.smul_mem _ _ (Submodule.subset_span ?_)
  simp only [Finset.coe_image, Finset.coe_product, Finset.coe_univ, Set.mem_image, Set.mem_prod,
    Set.mem_univ, true_and, Finset.mem_coe, Finset.mem_range]
  exact ⟨(i, k), Finset.mem_range.1 hk, rfl⟩

theorem dvd_pow_of_nonunit {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    {c p : O} (hc : c ≠ 0) (hp : ¬ IsUnit p) : ∃ k : ℕ, c ∣ p ^ k := by
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  obtain ⟨k, u, rfl⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hc hϖ
  have h1 : ϖ ∣ p := by
    have : p ∈ IsLocalRing.maximalIdeal O := (IsLocalRing.mem_maximalIdeal _).2 hp
    rw [hϖ.maximalIdeal_eq, Ideal.mem_span_singleton] at this
    exact this
  exact ⟨k, (Units.mul_left_dvd).2 (pow_dvd_pow_of_dvd h1 k)⟩

theorem QQ_pow_map_ne {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] [IsLocalRing O] [Algebra ℤ_[l] O]
    (hl : ¬ IsUnit ((l : ℕ) : O)) (s : ℕ) (hs : 1 ≤ s) (y : ℕ) :
    (GlobalTheory.Cyc.QQ l O s ^ y).map (IsLocalRing.residue O) ≠ 0 := by
  obtain ⟨b, hb⟩ := (GlobalTheory.Cyc.XX_QQ_properties l O s hs).2.2.2.1
  have hl0 : ((l : ℕ) : IsLocalRing.ResidueField O) = 0 := by
    rw [← map_natCast (IsLocalRing.residue O)]
    exact (IsLocalRing.residue_eq_zero_iff _).2 ((IsLocalRing.mem_maximalIdeal _).2 hl)
  have hl1 : ((l : ℕ) : PowerSeries (IsLocalRing.ResidueField O)) = 0 := by
    rw [← map_natCast (PowerSeries.C (R := IsLocalRing.ResidueField O)), hl0, map_zero]
  rw [map_pow, hb, map_add (f := _), map_mul, map_natCast, map_pow, PowerSeries.map_X, hl1, zero_mul, add_zero,
    ← pow_mul]
  exact pow_ne_zero _ PowerSeries.X_ne_zero

end GlobalTheory.NL.QuoFree

namespace GlobalTheory.NL.QuoFree

section Generic

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL]
    [CommRing O] [Algebra O LL] [TopologicalSpace LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n)

theorem torsionFree_quo [IsDomain O] [IsDiscreteValuationRing O] (hp : ¬ IsUnit ((PD.p : ℕ) : O))
    (T : LocLat G Qp LL O) (hsat : wachSaturated W T) (S : Submodule (LetA O n) (W.DD T)) :
    Module.IsTorsionFree O (quo W T S (W.N T)) := by
  refine Module.IsTorsionFree.of_smul_eq_zero fun c z hz => ?_
  rcases eq_or_ne c 0 with hc | hc
  · exact Or.inl hc
  right
  induction z using Submodule.Quotient.induction_on with
  | H x =>
  rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero] at hz
  rw [Submodule.Quotient.mk_eq_zero]
  simp only [Submodule.mem_comap, Submodule.subtype_apply, Submodule.coe_smul_of_tower] at hz ⊢
  obtain ⟨k, d, hd⟩ := dvd_pow_of_nonunit hc hp
  refine hsat (x : W.DD T) ⟨k, ?_⟩
  rw [GlobalTheory.NL.Isog.pow_smul_eq, hd, mul_comm, mul_smul, ← algebraMap_smul (LetA O n) d]
  exact (W.N T).smul_mem _ hz

theorem finite_quo (T : LocLat G Qp LL O) (q : LetA O n)
    (hq : IsUnit (algebraMap (LetA O n) W.EE q)) (F : Finset (LetA O n))
    (hF : ∀ a : LetA O n, ∃ c, a - q * c ∈ Submodule.span O (F : Set (LetA O n))) :
    Module.Finite O (quo W T (invN W T q) (W.N T)) := by
  set u : W.EE := ↑(hq.unit⁻¹)
  have hinv : ∀ x : W.DD T, q • (u • x) = x := by
    intro x
    rw [← algebraMap_smul W.EE q (u • x), smul_smul]
    have : algebraMap (LetA O n) W.EE q * u = 1 := hq.mul_val_inv
    rw [this, one_smul]
  let φu : W.DD T →ₗ[LetA O n] W.DD T := (LinearMap.lsmul W.EE (W.DD T) u).restrictScalars (LetA O n)
  have hS : invN W T q = (W.N T).map φu := by
    ext z
    constructor
    · intro hz
      refine ⟨q • z, hz, ?_⟩
      change u • (q • z) = z
      rw [← algebraMap_smul W.EE q z, smul_smul, mul_comm, hq.mul_val_inv, one_smul]
    · rintro ⟨x, hx, rfl⟩
      change q • (u • x) ∈ W.N T
      rw [hinv]
      exact hx
  haveI : Module.Finite (LetA O n) ↥(invN W T q) := by
    rw [hS]
    exact Module.Finite.iff_fg.2 ((W.N_fg T).map φu)
  haveI : Module.Finite (LetA O n) (quo W T (invN W T q) (W.N T)) :=
    Module.Finite.quotient (LetA O n) _
  refine finite_of_killed q (fun m => ?_) F hF
  induction m using Submodule.Quotient.induction_on with
  | H x =>
  rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero]
  simp only [Submodule.mem_comap, Submodule.subtype_apply, Submodule.coe_smul_of_tower]
  exact x.2

private theorem free_finite_of_Q [IsDomain O] [IsDiscreteValuationRing O]
    [IsAdicComplete (IsLocalRing.maximalIdeal O) O] {l : ℕ} [Fact l.Prime] [Algebra ℤ_[l] O]
    (hp : PD.p = l) (hl : ¬ IsUnit (l : O)) (T : LocLat G Qp LL O)
    (hsat : wachSaturated W T) (s : ℕ) (hs : 1 ≤ s) (y : ℕ)
    (hQ : ∀ i, W.Q i = GlobalTheory.Cyc.QQ l O s) :
    Module.Free O (quo W T (invN W T (W.Q ^ y)) (W.N T)) ∧
      Module.Finite O (quo W T (invN W T (W.Q ^ y)) (W.N T)) := by
  have := PD.finK₀
  have hn : NeZero (Module.finrank Qp K₀) := ⟨Module.finrank_pos.ne'⟩
  have : NeZero n := W.n_eq.symm ▸ hn
  have hQy : W.Q ^ y = fun _ => GlobalTheory.Cyc.QQ l O s ^ y := by
    funext i
    rw [Pi.pow_apply, hQ]
  have hunit : IsUnit (algebraMap (LetA O n) W.EE (W.Q ^ y)) := by
    rw [map_pow]
    exact (GlobalTheory.NL.IoXQ.isUnit_Q W).pow y
  obtain ⟨Fs, hFs⟩ := div_letters n (GlobalTheory.Cyc.QQ l O s ^ y) (QQ_pow_map_ne hl s hs y)
  have hfin := finite_quo W T (W.Q ^ y) hunit Fs (by rw [hQy]; exact hFs)
  have hnonunit : ¬ IsUnit (PD.p : O) := hp.symm ▸ hl
  have := torsionFree_quo W hnonunit T hsat (invN W T (W.Q ^ y))
  exact ⟨Module.free_of_finite_type_torsion_free', hfin⟩

end Generic


set_option synthInstance.maxHeartbeats 4000000 in
theorem quo_free_finite : ∀ (D : Formalism.BasicNotions.D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL), let W := (HW l).W K s LL h; ∀ T : Lt K LL, IsCrys ((D.loc l).PD K) T.ρ → ∀ y : ℕ, Module.Free ↥(OL LL) (quo W T (invN W T (W.Q ^ y)) (W.N T)) ∧ Module.Finite ↥(OL LL) (quo W T (invN W T (W.Q ^ y)) (W.N T)) := by
  intro D HW F l _ K s LL h W T hT y
  obtain ⟨hdvr, hcomp, hl⟩ := GlobalTheory.FinExtIntegers.dvr_complete LL
  have hQ : ∀ i, W.Q i = GlobalTheory.Cyc.QQ l ↥(OL LL) s := by
    obtain ⟨_, hχ⟩ := GlobalTheory.NL.CycRing.rings_cyclotomic D HW l K s LL h
    exact hχ.2.2.2.2.1
  have hsat : wachSaturated W T :=
    (GlobalTheory.NL.Isog.saturated_and_isogeny_invariant D HW F l K s LL h).1 T hT
  clear_value W
  exact free_finite_of_Q W ((D.loc l).PD_p K) hl T hsat s h.1 y hQ

end GlobalTheory.NL.QuoFree
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachModuleInverseQuotientFreeFiniteCrystalline =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachModuleConsequencesPoleQuotient =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachModuleConsequencesPoleQuotient", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.GammaSemisimpleLocalOfConsequences\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrystallineLatticeHodgeTateJumpsFinite\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GammaEigenvalueOnWachLatticeQPowerQuotient\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProdGammaSubJumpUnitsAnnihilatesQuotient\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachModuleInverseQuotientFreeFiniteCrystalline\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL Formalism.MainNotions.DeltaInvariantLattices

namespace GlobalTheory.NL.WachModulePoleQuotient



theorem wachModule_consequences_poleQuotient : ∀ (D : Formalism.BasicNotions.D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F), gammaSemisimpleQuotientGlobal D HW F := by
  intro D HW F Cm
  unfold gammaSemisimpleQuotientGlobal gammaSemisimpleLocal GammaSemisimpleQuotient
  intro l _ K s LL h T hT y hy
  classical
  have hfr := _root_.GlobalTheory.NL.QuoFree.quo_free_finite D HW F l K s LL h T hT y
  have hJ := _root_.GlobalTheory.NL.JumpsFinite.jumps_finite D HW l K s LL h T hT
  let Fs : Finset (↥(OL LL))ˣ := (hJ.toFinset ×ˢ Finset.Icc 1 y).image
    (fun p : ℤ × ℕ => uU ((HW l).W K s LL h) ^ (-(p.1 + (p.2 : ℤ))))
  have hmem : ∀ c, c ∈ Fs ↔ ∃ a ∈ Jumps (PD := (D.loc l).PD K) T, ∃ j : ℕ, 1 ≤ j ∧ j ≤ y ∧
      c = uU ((HW l).W K s LL h) ^ (-(a + j)) := by
    intro c
    simp only [Fs, Finset.mem_image, Finset.mem_product, Set.Finite.mem_toFinset, Finset.mem_Icc,
      Prod.exists]
    constructor
    · rintro ⟨a, j, ⟨ha, h1, h2⟩, rfl⟩
      exact ⟨a, ha, j, h1, h2, rfl⟩
    · rintro ⟨a, ha, j, h1, h2, rfl⟩
      exact ⟨a, j, ⟨ha, h1, h2⟩, rfl⟩
  refine ⟨hfr.1, hfr.2, Fs, ?_, ?_, ?_⟩
  · ext c
    exact hmem c
  · intro x hx
    exact _root_.GlobalTheory.NL.KillLevels.annihilate D HW F Cm l K s LL h T hT y hy Fs
      (fun a ha j h1 h2 => (hmem _).2 ⟨a, ha, j, h1, h2, rfl⟩) x hx
  · intro c hc
    obtain ⟨a, ha, j, h1, h2, rfl⟩ := (hmem c).1 hc
    obtain ⟨x, hx, hxN, hγ⟩ := _root_.GlobalTheory.NL.IntegralScalarUnits.occ D HW F Cm l K s LL h T hT y hy a ha j h1 h2
    exact ⟨x, hx, hxN, hγ⟩

end GlobalTheory.NL.WachModulePoleQuotient
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachModuleConsequencesPoleQuotient =====
