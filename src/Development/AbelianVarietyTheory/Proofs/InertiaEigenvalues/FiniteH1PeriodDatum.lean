module

public import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh
public import Mathlib.NumberTheory.Padics.PadicNumbers
public import Mathlib.NumberTheory.Padics.PadicIntegers
public import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientRingIntegersCompactAdicProperties
public import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
public import Formalism.GaloisCohomology.LocalTateDualityK
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteH1H2Local
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixingSubgroupEquivBicontinuous
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsOpenOfFgOfSpanEqTop
public import Mathlib.LinearAlgebra.Quotient.Defs
public import Mathlib.RingTheory.Finiteness.Defs
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteQuotientOfCompleteNakayama
public import Mathlib.LinearAlgebra.FreeModule.Basic
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FreeModuleAdicCompleteSeparated
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
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.ReduceModChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodCoefficientsExplicitSums, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeCocyclesFinitelyGeneratedModPrime, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteH1PeriodDatum

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodCoefficientsExplicitSums =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodCoefficientsExplicitSums", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Mathlib.NumberTheory.Padics.PadicNumbers\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\npublic import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientRingIntegersCompactAdicProperties\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

namespace GlobalTheory

theorem adicSpan_smul_top_mem_iff {O : Type} [CommRing O] (ϖ : O) (n : ℕ) (x : O) :
    x ∈ (Ideal.span {ϖ}) ^ n • (⊤ : Submodule O O) ↔ ∃ b : O, x = ϖ ^ n * b := by
  rw [Ideal.smul_eq_mul, Ideal.mul_top, Ideal.span_singleton_pow, Ideal.mem_span_singleton']
  constructor
  · rintro ⟨a, rfl⟩; exact ⟨a, mul_comm _ _⟩
  · rintro ⟨b, rfl⟩; exact ⟨b, mul_comm _ _⟩

theorem adicComplete_explicit_sums {O : Type} [CommRing O] (ϖ : O)
    [h : IsAdicComplete (Ideal.span {ϖ}) O] :
    (∀ x : ℕ → O, ∃ a : O, ∀ n : ℕ, ∃ b : O, a - ∑ j ∈ Finset.range n, ϖ ^ j * x j = ϖ ^ n * b) ∧
    (∀ a : O, (∀ n : ℕ, ∃ b : O, a = ϖ ^ n * b) → a = 0) := by
  refine ⟨fun x => ?_, fun a ha => ?_⟩
  · obtain ⟨L, hL⟩ := IsPrecomplete.prec' (I := Ideal.span {ϖ}) (M := O)
      (fun n => ∑ j ∈ Finset.range n, ϖ ^ j * x j) (by
        intro m n hmn
        rw [SModEq.sub_mem, adicSpan_smul_top_mem_iff]
        refine ⟨-∑ j ∈ Finset.Ico m n, ϖ ^ (j - m) * x j, ?_⟩
        rw [← Finset.sum_range_add_sum_Ico _ hmn, mul_neg, Finset.mul_sum]
        have : ∑ j ∈ Finset.Ico m n, ϖ ^ m * (ϖ ^ (j - m) * x j)
            = ∑ j ∈ Finset.Ico m n, ϖ ^ j * x j := by
          refine Finset.sum_congr rfl fun j hj => ?_
          rw [← mul_assoc, ← pow_add, Nat.add_sub_cancel' (Finset.mem_Ico.mp hj).1]
        rw [this]; ring)
    refine ⟨L, fun n => ?_⟩
    have h1 := (SModEq.sub_mem.mp (hL n))
    rw [adicSpan_smul_top_mem_iff] at h1
    obtain ⟨b, hb⟩ := h1
    exact ⟨-b, by rw [mul_neg, ← hb]; ring⟩
  · refine IsHausdorff.haus' (I := Ideal.span {ϖ}) a fun n => ?_
    rw [SModEq.zero, adicSpan_smul_top_mem_iff]
    exact ha n

theorem goodO_coeff_explicit_sums : ∀ (l : ℕ) [Fact l.Prime] (LL : Type) [Field LL] [Algebra ℚ_[l] LL]
    [TopologicalSpace LL] (O : Type) [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O →
    (∀ x : ℕ → O, ∃ a : O, ∀ n : ℕ, ∃ b : O,
      a - ∑ j ∈ Finset.range n, ((l : ℕ) : O) ^ j * x j = ((l : ℕ) : O) ^ n * b) ∧
    (∀ a : O, (∀ n : ℕ, ∃ b : O, a = ((l : ℕ) : O) ^ n * b) → a = 0) := by
  intro l _ LL _ _ _ O _ _ hG
  have hc := (_root_.GlobalTheory.PowerImageOpen.main l LL O hG).2.2.2
  exact adicComplete_explicit_sums (h := hc) ((l : ℕ) : O)

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodCoefficientsExplicitSums =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeCocyclesFinitelyGeneratedModPrime =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeCocyclesFinitelyGeneratedModPrime", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Formalism.GaloisCohomology.LocalTateDualityK\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\npublic import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientRingIntegersCompactAdicProperties\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteH1H2Local\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixingSubgroupEquivBicontinuous\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsOpenOfFgOfSpanEqTop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

noncomputable section

namespace GlobalTheory.LatRed

section Red

variable {O V : Type} [CommRing O] [AddCommGroup V] [Module O V]

def Red (T : Submodule O V) (ϖ : O) : Type :=
  ↥T ⧸ LinearMap.range (ϖ • LinearMap.id : ↥T →ₗ[O] ↥T)

variable (T : Submodule O V) (ϖ : O)

instance : AddCommGroup (Red T ϖ) :=
  inferInstanceAs (AddCommGroup (↥T ⧸ LinearMap.range (ϖ • LinearMap.id : ↥T →ₗ[O] ↥T)))

instance : Module O (Red T ϖ) :=
  inferInstanceAs (Module O (↥T ⧸ LinearMap.range (ϖ • LinearMap.id : ↥T →ₗ[O] ↥T)))

instance : TopologicalSpace (Red T ϖ) := ⊥

instance : DiscreteTopology (Red T ϖ) := ⟨rfl⟩

def mk : ↥T →ₗ[O] Red T ϖ := Submodule.mkQ _

variable {T ϖ}

theorem mk_surjective : Function.Surjective (mk T ϖ) := Submodule.mkQ_surjective _

theorem mk_eq_zero_iff (t : ↥T) : mk T ϖ t = 0 ↔ ∃ u : ↥T, ϖ • u = t := by
  change Submodule.Quotient.mk t = 0 ↔ _
  rw [Submodule.Quotient.mk_eq_zero, LinearMap.mem_range]
  rfl

def act (ϖ : O) (σ : V →ₗ[O] V) (hσ : ∀ x ∈ T, σ x ∈ T) : Red T ϖ →ₗ[O] Red T ϖ :=
  Submodule.mapQ _ _ (σ.restrict hσ) (by
    rintro _ ⟨u, rfl⟩
    exact ⟨σ.restrict hσ u, by simp⟩)

theorem act_mk (σ : V →ₗ[O] V) (hσ : ∀ x ∈ T, σ x ∈ T) (t : ↥T) :
    act ϖ σ hσ (mk T ϖ t) = mk T ϖ (σ.restrict hσ t) := rfl

end Red

section Top

variable {O V LL : Type} [CommRing O] [AddCommGroup V] [Module O V] [Field LL] [Algebra O LL]
  [Module LL V] [IsScalarTower O LL V] [TopologicalSpace V] [ContinuousAdd V]
  [ContinuousConstSMul LL V] {T : Submodule O V} {ϖ : O}

theorem isOpen_smul (hT : IsOpen (T : Set V)) (hϖ : algebraMap O LL ϖ ≠ 0) :
    IsOpen {v : V | ∃ u : ↥T, ϖ • (u : V) = v} := by
  have : {v : V | ∃ u : ↥T, ϖ • (u : V) = v} =
      (fun v => (algebraMap O LL ϖ)⁻¹ • v) ⁻¹' (T : Set V) := by
    ext v
    simp only [Set.mem_setOf_eq, Set.mem_preimage, SetLike.mem_coe]
    constructor
    · rintro ⟨u, rfl⟩
      rw [← algebraMap_smul LL ϖ (u : V), smul_smul, inv_mul_cancel₀ hϖ, one_smul]
      exact u.2
    · intro h
      refine ⟨⟨_, h⟩, ?_⟩
      change ϖ • ((algebraMap O LL ϖ)⁻¹ • v) = v
      rw [← algebraMap_smul LL ϖ, smul_smul, mul_inv_cancel₀ hϖ, one_smul]
  rw [this]
  exact hT.preimage (continuous_const_smul _)


omit [Field LL] [Algebra O LL] [Module LL V] [IsScalarTower O LL V] [ContinuousConstSMul LL V] in
theorem isLocallyConstant_mk {X : Type} [TopologicalSpace X]
    (hS : IsOpen {v : V | ∃ u : ↥T, ϖ • (u : V) = v}) (f : X → V) (hf : Continuous f)
    (hfT : ∀ x, f x ∈ T) : IsLocallyConstant fun x => mk T ϖ ⟨f x, hfT x⟩ := by
  rw [IsLocallyConstant.iff_eventually_eq]
  intro x
  have hU : IsOpen ((fun y => f y + -f x) ⁻¹' {v : V | ∃ u : ↥T, ϖ • (u : V) = v}) :=
    hS.preimage (hf.add continuous_const)
  have hx : x ∈ (fun y => f y + -f x) ⁻¹' {v : V | ∃ u : ↥T, ϖ • (u : V) = v} :=
    ⟨0, by simp⟩
  filter_upwards [hU.mem_nhds hx] with y hy
  obtain ⟨u, hu⟩ := hy
  rw [← sub_eq_zero, ← map_sub (mk T ϖ), mk_eq_zero_iff]
  refine ⟨u, Subtype.ext ?_⟩
  simp [hu, sub_eq_add_neg]

end Top

end GlobalTheory.LatRed

namespace GlobalTheory.LatRed

def ofAction (N : ℕ) {G M : Type} [Monoid G] [AddCommGroup M] [Module (ZMod N) M]
    (a : G → M →+ M) (h1 : ∀ m, a 1 m = m) (hmul : ∀ g h m, a (g * h) m = a g (a h m)) :
    Representation (ZMod N) G M where
  toFun g := AddMonoidHom.toZModLinearMap N (a g)
  map_one' := LinearMap.ext h1
  map_mul' g h := LinearMap.ext (hmul g h)

section Lift

variable {G : Type} [Group G] [TopologicalSpace G] {LL O V : Type} [Field LL] [CommRing O]
  [Algebra O LL] [AddCommGroup V] [Module LL V] [Module O V] [IsScalarTower O LL V]
  [TopologicalSpace V] [ContinuousAdd V] [ContinuousConstSMul LL V] {ρ : Representation LL G V}

omit [TopologicalSpace G] [TopologicalSpace V] [ContinuousAdd V] [ContinuousConstSMul LL V] in
theorem cob_apply (x : V) (g : G) : Formalism.WeaklyAdmissibleFiltrations.cob ρ x g = ρ g x - x := rfl

theorem representationCoboundary_mem_continuousCocycles (hcont : ∀ x, Continuous fun g => ρ g x) (x : V) :
    Formalism.WeaklyAdmissibleFiltrations.cob ρ x ∈ Formalism.WeaklyAdmissibleFiltrations.continuousCocycles ρ := by
  refine ⟨?_, fun g h => ?_⟩
  · have : Formalism.WeaklyAdmissibleFiltrations.cob ρ x = fun g => ρ g x + -x :=
      funext fun g => by rw [cob_apply, sub_eq_add_neg]
    rw [this]
    exact (hcont x).add continuous_const
  · simp only [cob_apply, map_mul, Module.End.mul_apply, map_sub]
    abel

theorem lift_of_mod (L : Formalism.WeaklyAdmissibleFiltrations.Lattice (O := O) ρ) (hcont : ∀ x, Continuous fun g => ρ g x)
    (ϖ : O) (hϖ : algebraMap O LL ϖ ≠ 0) (d : ↥(Formalism.WeaklyAdmissibleFiltrations.latticeCocycles L)) (x : V) (hx : x ∈ L.T)
    (hd : ∀ g, ∃ u : ↥L.T, ϖ • (u : V) = (d : G → V) g - (ρ g x - x)) :
    ∃ c' : ↥(Formalism.WeaklyAdmissibleFiltrations.latticeCocycles L), ((d : G → V) - ϖ • (c' : G → V)) ∈ Formalism.WeaklyAdmissibleFiltrations.latticeCoboundaries L := by
  have hdZ : (d : G → V) ∈ Formalism.WeaklyAdmissibleFiltrations.continuousCocycles ρ := (Submodule.mem_inf.1 d.2).1
  let f : G → V := (algebraMap O LL ϖ)⁻¹ • ((d : G → V) - Formalism.WeaklyAdmissibleFiltrations.cob ρ x)
  have hf : ∀ g, f g = (algebraMap O LL ϖ)⁻¹ • ((d : G → V) g - (ρ g x - x)) := fun g => rfl
  have hfZ : f ∈ Formalism.WeaklyAdmissibleFiltrations.continuousCocycles ρ :=
    (Formalism.WeaklyAdmissibleFiltrations.continuousCocycles ρ).smul_mem _ ((Formalism.WeaklyAdmissibleFiltrations.continuousCocycles ρ).sub_mem hdZ (representationCoboundary_mem_continuousCocycles hcont x))
  have hfT : ∀ g, f g ∈ L.T := by
    intro g
    obtain ⟨u, hu⟩ := hd g
    rw [hf, ← hu, ← algebraMap_smul LL ϖ (u : V), smul_smul, inv_mul_cancel₀ hϖ, one_smul]
    exact u.2
  refine ⟨⟨f, Submodule.mem_inf.2 ⟨hfZ, Submodule.mem_pi.2 fun g _ => hfT g⟩⟩, ?_⟩
  refine Submodule.mem_map.2 ⟨x, hx, funext fun g => ?_⟩
  change Formalism.WeaklyAdmissibleFiltrations.cob ρ x g = (d : G → V) g - ϖ • f g
  rw [hf, ← algebraMap_smul LL ϖ, smul_smul, mul_inv_cancel₀ hϖ, one_smul, cob_apply]
  abel

end Lift

end GlobalTheory.LatRed

namespace GlobalTheory.LatRed

theorem cocycles_fg_mod_l : Formalism.GaloisCohomology.LocalTateDualityK → ∀ (l : ℕ) [Fact l.Prime] (K : FinExt l) (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL] (O : Type) [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O → ∀ (A : GRep ↥(GK K) ℚ_[l] LL O) (LA : Lattice (O := O) A.ρ), ∃ s : Finset ↥(latticeCocycles LA), ∀ c : ↥(latticeCocycles LA), ∃ (a : ↥(latticeCocycles LA) → O) (c' : ↥(latticeCocycles LA)), ((c : ↥(GK K) → A.V) - ∑ i ∈ s, a i • (i : ↥(GK K) → A.V) - ((l : ℕ) : O) • (c' : ↥(GK K) → A.V)) ∈ latticeCoboundaries LA := by
  intro hT l _ K LL _ _ _ O _ _ hO A LA
  classical
  haveI : IsTopologicalRing LL := hO.2.2.2.1
  haveI hK : FiniteDimensional ℚ_[l] ↥K.1 := K.2
  set ϖ : O := ((l : ℕ) : O) with hϖdef
  have hϖ : algebraMap O LL ϖ ≠ 0 := by
    rw [hϖdef, map_natCast, ← map_natCast (algebraMap ℚ_[l] LL) l]
    exact (map_ne_zero _).2 (Nat.cast_ne_zero.2 (Fact.out : l.Prime).ne_zero)
  have hTo : IsOpen (LA.T : Set A.V) :=
    GlobalTheory.Cyc.isOpen_of_fg_of_span_eq_top hO.2.2.2.2 LA.T LA.fg LA.span
  have hS := isOpen_smul (LL := LL) (ϖ := ϖ) hTo hϖ
  have hl1 : ∀ m : Red LA.T ϖ, (l ^ 1) • m = 0 := by
    intro m
    obtain ⟨t, rfl⟩ := mk_surjective m
    rw [pow_one, ← map_nsmul, mk_eq_zero_iff]
    exact ⟨t, by rw [hϖdef, Nat.cast_smul_eq_nsmul]⟩
  haveI : NeZero (l ^ 1) := ⟨pow_ne_zero _ (Fact.out : l.Prime).ne_zero⟩
  letI : Module (ZMod (l ^ 1)) (Red LA.T ϖ) := AddCommGroup.zmodModule hl1
  haveI hfin : Finite (Red LA.T ϖ) := by
    haveI : Module.Finite O ↥LA.T := Module.Finite.iff_fg.2 LA.fg
    obtain ⟨n, f, hf⟩ := Module.Finite.exists_fin' O ↥LA.T
    haveI : Finite (O ⧸ Ideal.span {ϖ}) := by
      have := (_root_.GlobalTheory.PowerImageOpen.main l LL O hO).2.2.1 1
      simpa [pow_one] using this
    have hqs : Function.Surjective (Ideal.Quotient.mk (Ideal.span {ϖ})) :=
      Ideal.Quotient.mk_surjective
    refine Finite.of_surjective
      (fun v : Fin n → O ⧸ Ideal.span {ϖ} => mk LA.T ϖ (f (fun k => Function.surjInv hqs (v k)))) ?_
    intro m
    obtain ⟨t, rfl⟩ := mk_surjective m
    obtain ⟨c, rfl⟩ := hf t
    refine ⟨fun k => Ideal.Quotient.mk (Ideal.span {ϖ}) (c k), ?_⟩
    show mk LA.T ϖ (f _) = mk LA.T ϖ (f c)
    rw [← sub_eq_zero, ← map_sub (mk LA.T ϖ), ← map_sub f, mk_eq_zero_iff]
    have he : ∀ k, ∃ e, Function.surjInv hqs (Ideal.Quotient.mk (Ideal.span {ϖ}) (c k)) - c k = ϖ * e := by
      intro k
      have h0 : Ideal.Quotient.mk (Ideal.span {ϖ})
          (Function.surjInv hqs (Ideal.Quotient.mk (Ideal.span {ϖ}) (c k)) - c k) = 0 := by
        rw [map_sub, Function.surjInv_eq hqs, sub_self]
      obtain ⟨e, he⟩ := Ideal.mem_span_singleton'.1 (Ideal.Quotient.eq_zero_iff_mem.1 h0)
      exact ⟨e, by rw [← he, mul_comm]⟩
    choose e he using he
    refine ⟨f e, ?_⟩
    rw [← map_smul]
    congr 1
    funext k
    simp [he]
  let Φ : ↥(GK K) ≃* Formalism.GaloisCohomology.GK l K.1 := IntermediateField.fixingSubgroupEquiv K.1
  have hΦ : Continuous Φ ∧ Continuous Φ.symm :=
    GlobalTheory.fixingSubgroupEquiv_bicontinuous ℚ_[l] (Om l) K.1
  let ρT : ↥(GK K) → A.V →ₗ[O] A.V := fun g => (A.ρ g).restrictScalars O
  have hρT : ∀ g, ∀ x ∈ LA.T, ρT g x ∈ LA.T := LA.stable
  let a : Formalism.GaloisCohomology.GK l K.1 → Red LA.T ϖ →+ Red LA.T ϖ :=
    fun g' => (act ϖ (ρT (Φ.symm g')) (hρT _)).toAddMonoidHom
  have ha1 : ∀ m, a 1 m = m := by
    intro m
    obtain ⟨t, rfl⟩ := mk_surjective m
    change act ϖ (ρT (Φ.symm 1)) (hρT _) (mk LA.T ϖ t) = mk LA.T ϖ t
    rw [act_mk]
    congr 1
    apply Subtype.ext
    simp [ρT]
  have hamul : ∀ g h m, a (g * h) m = a g (a h m) := by
    intro g h m
    obtain ⟨t, rfl⟩ := mk_surjective m
    change act ϖ (ρT (Φ.symm (g * h))) (hρT _) (mk LA.T ϖ t) =
      act ϖ (ρT (Φ.symm g)) (hρT _) (act ϖ (ρT (Φ.symm h)) (hρT _) (mk LA.T ϖ t))
    rw [act_mk, act_mk, act_mk]
    congr 1
    apply Subtype.ext
    simp [ρT, map_mul]
  let ρb : Representation (ZMod (l ^ 1)) (Formalism.GaloisCohomology.GK l K.1) (Red LA.T ϖ) :=
    ofAction (l ^ 1) a ha1 hamul
  have hρb : ReciprocityTheory.Gal.ContAction ρb := by
    refine continuous_prod_of_discrete_right.2 fun m => ?_
    obtain ⟨t, rfl⟩ := mk_surjective m
    exact (isLocallyConstant_mk hS (fun g => A.ρ g t) (A.cont _)
      (fun g => hρT g t t.2)).continuous.comp hΦ.2
  have hH1 : Finite (ReciprocityTheory.Gal.H1 ρb) :=
    (_root_.GlobalTheory.finite_H1_H2_of_localTateDuality hT l K.1 K.2 1 (Red LA.T ϖ) ρb one_pos hρb).1
  have hcT : ∀ (c : ↥(latticeCocycles LA)) (g : ↥(GK K)), (c : ↥(GK K) → A.V) g ∈ LA.T :=
    fun c g => Submodule.mem_pi.1 (Submodule.mem_inf.1 c.2).2 g (Set.mem_univ g)
  let ev : ↥(latticeCocycles LA) → ↥(GK K) → ↥LA.T := fun c g => ⟨(c : ↥(GK K) → A.V) g, hcT c g⟩
  have hred : ∀ c : ↥(latticeCocycles LA), (fun g' => mk LA.T ϖ (ev c (Φ.symm g'))) ∈ ReciprocityTheory.Gal.Z1 ρb := by
    intro c
    have hcZ : (c : ↥(GK K) → A.V) ∈ continuousCocycles A.ρ := (Submodule.mem_inf.1 c.2).1
    refine ⟨(isLocallyConstant_mk hS _ hcZ.1 (hcT c)).continuous.comp hΦ.2, fun g h => ?_⟩
    change mk LA.T ϖ (ev c (Φ.symm (g * h))) = mk LA.T ϖ (ev c (Φ.symm g)) +
      act ϖ (ρT (Φ.symm g)) (hρT _) (mk LA.T ϖ (ev c (Φ.symm h)))
    rw [act_mk, ← map_add (f := _)]
    congr 1
    apply Subtype.ext
    simp [ev, ρT, map_mul, hcZ.2]
  let F : ↥(latticeCocycles LA) → ReciprocityTheory.Gal.H1 ρb := fun c => Submodule.Quotient.mk ⟨_, hred c⟩
  haveI : Nonempty ↥(latticeCocycles LA) := ⟨0⟩
  have hfr : (Set.range F).Finite := Set.toFinite _
  refine ⟨hfr.toFinset.image (Function.invFun F), fun c => ?_⟩
  set i := Function.invFun F (F c) with hi
  have hFi : F i = F c := Function.invFun_eq ⟨c, rfl⟩
  have hmem : i ∈ hfr.toFinset.image (Function.invFun F) :=
    Finset.mem_image_of_mem _ ((Set.Finite.mem_toFinset _).2 ⟨c, rfl⟩)
  have hB := (Submodule.Quotient.eq _).1 hFi.symm
  have hB' : (((⟨_, hred c⟩ : ReciprocityTheory.Gal.Z1 ρb) - ⟨_, hred i⟩ : ReciprocityTheory.Gal.Z1 ρb) :
      Formalism.GaloisCohomology.GK l K.1 → Red LA.T ϖ) ∈ ReciprocityTheory.Gal.B1 ρb := hB
  obtain ⟨m, hm⟩ := (ReciprocityTheory.Gal.mem_coboundaries1 ρb _).1 hB'
  obtain ⟨t, rfl⟩ := mk_surjective m
  have hd : ∀ g, ∃ u : ↥LA.T, ϖ • (u : A.V) =
      ((c - i : ↥(latticeCocycles LA)) : ↥(GK K) → A.V) g - (A.ρ g t - t) := by
    intro g
    have h1 := hm (Φ g)
    change mk LA.T ϖ (ev c (Φ.symm (Φ g))) - mk LA.T ϖ (ev i (Φ.symm (Φ g))) =
      act ϖ (ρT (Φ.symm (Φ g))) (hρT _) (mk LA.T ϖ t) - mk LA.T ϖ t at h1
    rw [MulEquiv.symm_apply_apply, act_mk, ← map_sub (mk LA.T ϖ), ← map_sub (mk LA.T ϖ),
      ← sub_eq_zero, ← map_sub (mk LA.T ϖ), mk_eq_zero_iff] at h1
    obtain ⟨u, hu⟩ := h1
    refine ⟨u, ?_⟩
    have := congrArg Subtype.val hu
    simpa [ev, ρT] using this
  obtain ⟨c', hc'⟩ := lift_of_mod LA A.cont ϖ hϖ (c - i) t t.2 hd
  refine ⟨fun j => if j = i then 1 else 0, c', ?_⟩
  have hsum : ∑ j ∈ hfr.toFinset.image (Function.invFun F),
      (if j = i then (1 : O) else 0) • (j : ↥(GK K) → A.V) = (i : ↥(GK K) → A.V) := by
    rw [Finset.sum_eq_single_of_mem i hmem (fun j _ hj => by rw [if_neg hj, zero_smul]), if_pos rfl,
      one_smul]
  rw [hsum]
  simpa using hc'

end GlobalTheory.LatRed
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeCocyclesFinitelyGeneratedModPrime =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteH1PeriodDatum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteH1PeriodDatum", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Formalism.GaloisCohomology.LocalTateDualityK\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Mathlib.LinearAlgebra.Quotient.Defs\npublic import Mathlib.RingTheory.Finiteness.Defs\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteQuotientOfCompleteNakayama\npublic import Mathlib.LinearAlgebra.FreeModule.Basic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FreeModuleAdicCompleteSeparated\npublic import Mathlib.NumberTheory.Padics.PadicNumbers\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodCoefficientsExplicitSums\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeCocyclesFinitelyGeneratedModPrime\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

namespace GlobalTheory.TateFiniteH1

theorem tate_finH1 (hT : Formalism.GaloisCohomology.LocalTateDualityK) :
    ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (K : FinExt l), TateFiniteness (P.PD K) := by
  intro l _ P K LL _ _ _ O _ _ hO A LA
  obtain ⟨hR, hRs⟩ := _root_.GlobalTheory.goodO_coeff_explicit_sums l LL O hO
  haveI : Module.Free O ↥LA.T := LA.free
  haveI : Module.Finite O ↥LA.T := Module.Finite.iff_fg.2 LA.fg
  obtain ⟨hTc, hTs⟩ := _root_.GlobalTheory.freeModule_adicComplete_separated ((l : ℕ) : O) hR hRs ↥LA.T
  have hmemT : ∀ c : ↥(latticeCocycles LA), ∀ g, (c : ↥(GK K) → A.V) g ∈ LA.T := fun c g =>
    (Submodule.mem_pi.1 (Submodule.mem_inf.1 c.2).2) g (Set.mem_univ g)
  have hd : ∀ t : ↥LA.T, ((cob A.ρ).restrictScalars O) (t : A.V) ∈ latticeCocycles LA := fun t => by
    refine Submodule.mem_inf.2 ⟨⟨?_, fun g h => ?_⟩, Submodule.mem_pi.2 fun g _ => ?_⟩
    · change Continuous fun g => A.ρ g (t : A.V) - (t : A.V)
      simp only [sub_eq_add_neg]
      exact (A.cont _).add continuous_const
    · change A.ρ (g * h) (t : A.V) - (t : A.V) = (A.ρ g (t : A.V) - (t : A.V)) + A.ρ g (A.ρ h (t : A.V) - (t : A.V))
      rw [map_mul, Module.End.mul_apply, map_sub]
      abel
    · change A.ρ g (t : A.V) - (t : A.V) ∈ LA.T
      exact LA.T.sub_mem (LA.stable g _ t.2) t.2
  let d : ↥LA.T →ₗ[O] ↥(latticeCocycles LA) :=
    LinearMap.codRestrict (latticeCocycles LA) (((cob A.ρ).restrictScalars O).comp LA.T.subtype) hd
  have hdN : LinearMap.range d ≤ (latticeCoboundaries LA).comap (latticeCocycles LA).subtype := by
    rintro _ ⟨t, rfl⟩
    exact ⟨t, t.2, rfl⟩
  have hZ : ∀ c : ↥(latticeCocycles LA), (∀ n : ℕ, ∃ z : ↥(latticeCocycles LA), c = ((l : ℕ) : O) ^ n • z) → c = 0 := by
    intro c hc
    apply Subtype.ext
    funext g
    have h0 := hTs ⟨_, hmemT c g⟩ fun n => by
      obtain ⟨z, hz⟩ := hc n
      refine ⟨⟨_, hmemT z g⟩, Subtype.ext ?_⟩
      change (c : ↥(GK K) → A.V) g = ((l : ℕ) : O) ^ n • (z : ↥(GK K) → A.V) g
      rw [hz]
      rfl
    exact congrArg Subtype.val h0
  obtain ⟨s, hs⟩ := _root_.GlobalTheory.LatRed.cocycles_fg_mod_l hT l K LL O hO A LA
  refine _root_.GlobalTheory.finite_quotient_of_complete_nakayama ((l : ℕ) : O) hR hTc hZ d _ hdN s fun c => ?_
  obtain ⟨a, c', hm⟩ := hs c
  obtain ⟨x, hx, hxe⟩ := hm
  refine ⟨a, c', ⟨x, hx⟩, Subtype.ext ?_⟩
  have e : ((d ⟨x, hx⟩ : ↥(latticeCocycles LA)) : ↥(GK K) → A.V) = ((cob A.ρ).restrictScalars O) x := rfl
  simp only [Submodule.coe_add, Submodule.coe_sum, Submodule.coe_smul, e, hxe]
  abel

end GlobalTheory.TateFiniteH1
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteH1PeriodDatum =====
