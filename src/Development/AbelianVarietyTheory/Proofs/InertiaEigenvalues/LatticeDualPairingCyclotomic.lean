module

public import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh
public import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
public import Mathlib.NumberTheory.Padics.PadicIntegers
public import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientRingIntegersCompactAdicProperties
public import Formalism.SharpRestriction.LevelLetterCocycles.LocalSituation
public import Mathlib.FieldTheory.Galois.Infinite
public import Mathlib.Basic.Finite.Defs
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCompatibleSeqOfFiniteNonempty
public import Formalism.GaloisCohomology.LocalTateDualityK
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteLatticeCocyclesModUniformizerPow
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TatePairingLatticeQuotientsNondegenerate
import Mathlib.Algebra.Module.StablyFree.Basic
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
import Mathlib.NumberTheory.Padics.LocalField
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Topology.Connected.Separation
import Mathlib.Topology.MetricSpace.Ultra.TotallySeparated
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.FieldTheory.Galois.Profinite

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsLimitCocycleOfCompatibleModPow, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsTorsionCocycleFiniteLevelLift, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TorsionCocycleUniformizerPowSmulMem, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDualPairingCyclotomic

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsLimitCocycleOfCompatibleModPow =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsLimitCocycleOfCompatibleModPow", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\npublic import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientRingIntegersCompactAdicProperties\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.Padics.LocalField\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module
open Filter Topology Pointwise

namespace GlobalTheory.LimCocycle

theorem eventually_smul_mem {LL W : Type} [Field LL] [TopologicalSpace LL] [AddCommGroup W] [Module LL W]
    [TopologicalSpace W] [ContinuousSMul LL W] (c : ℕ → LL) (hc : Tendsto c atTop (𝓝 0))
    {K : Set W} (hK : IsCompact K) {U : Set W} (hU : U ∈ 𝓝 (0 : W)) :
    ∀ᶠ m in atTop, ∀ y ∈ K, c m • y ∈ U := by
  have h : ∀ᶠ a in 𝓝 (0 : LL), ∀ y ∈ K, a • y ∈ U := by
    refine hK.eventually_forall_of_forall_eventually (fun y _ => ?_)
    have := (continuous_fst.smul continuous_snd : Continuous fun p : LL × W => p.1 • p.2).tendsto ((0 : LL), y)
    exact this.eventually_mem (by simpa using hU)
  exact hc.eventually h

theorem isCompact_of_fg {O LL V : Type} [CommRing O] [Field LL] [Algebra O LL] [TopologicalSpace LL]
    [AddCommGroup V] [Module LL V] [Module O V] [IsScalarTower O LL V] [TopologicalSpace V]
    [ContinuousAdd V] [ContinuousSMul LL V]
    (hc : IsCompact (Set.range (algebraMap O LL))) (T : Submodule O V) (hT : T.FG) :
    IsCompact (T : Set V) := by
  obtain ⟨n, s, hs⟩ := Submodule.fg_iff_exists_fin_generating_family.1 hT
  have heq : (T : Set V) = (fun c : Fin n → LL => ∑ i, c i • s i) ''
      (Set.univ.pi fun _ => Set.range (algebraMap O LL)) := by
    ext x
    constructor
    · intro hx
      rw [SetLike.mem_coe, ← hs] at hx
      obtain ⟨a, ha⟩ := (Submodule.mem_span_range_iff_exists_fun O).1 hx
      refine ⟨fun i => algebraMap O LL (a i), fun i _ => ⟨a i, rfl⟩, ?_⟩
      simp only [algebraMap_smul]
      exact ha
    · rintro ⟨c, hc', rfl⟩
      have : ∀ i, ∃ a : O, algebraMap O LL a = c i := fun i => hc' i (Set.mem_univ i)
      choose a ha using this
      rw [SetLike.mem_coe, ← hs]
      have : (∑ i, c i • s i) = ∑ i, a i • s i := by
        refine Finset.sum_congr rfl (fun i _ => ?_)
        rw [← ha i, algebraMap_smul]
      show ∑ i, c i • s i ∈ _
      rw [this]
      exact Submodule.sum_mem _ (fun i _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩))
  rw [heq]
  exact (isCompact_univ_pi fun _ => hc).image
    (continuous_finsetSum _ fun i _ => (continuous_apply i).smul continuous_const)

end GlobalTheory.LimCocycle

namespace GlobalTheory.LimCocycle

theorem limit_cocycle : ∀ (l : ℕ) [Fact l.Prime] (K : FinExt l) (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL] (O : Type) [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O → ∀ (A : GRep ↥(GK K) ℚ_[l] LL O) (LA : Lattice (O := O) A.ρ) (ϖ : O), Irreducible ϖ → ∀ (hI : ∀ n : ℕ, StableSub LA (Ideal.span {ϖ ^ n} • ⊤ : Submodule O ↥LA.T)) (w : ℕ → ↥(GK K) → ↥LA.T), (∀ n, (fun g => (Submodule.Quotient.mk (w n g) : ↥LA.T ⧸ (Ideal.span {ϖ ^ n} • ⊤ : Submodule O ↥LA.T))) ∈ quotientCocycles LA _ (hI n)) → (∀ n g, w (n + 1) g - w n g ∈ (Ideal.span {ϖ ^ n} • ⊤ : Submodule O ↥LA.T)) → ∃ d ∈ latticeCocycles LA, ∀ n g, ∃ t ∈ (Ideal.span {ϖ ^ n} • ⊤ : Submodule O ↥LA.T), d g = (w n g : A.V) + (t : A.V) := by
  intro l _ K LL _ _ _ O _ _ hG A LA ϖ hϖ hI w hw hstep
  have hcO : IsCompact (Set.range (algebraMap O LL)) := (_root_.GlobalTheory.PowerImageOpen.main l LL O hG).2.1
  obtain ⟨⟨hD, hDVR, hFr⟩, hfin, hmod, htop, hopen⟩ := hG
  haveI := hD
  haveI := hDVR
  haveI := hFr
  haveI : FiniteDimensional ℚ_[l] LL := hfin
  haveI := hmod
  haveI := htop
  haveI : ContinuousSMul ℚ_[l] LL := IsModuleTopology.toContinuousSMul ℚ_[l] LL
  haveI : ContinuousSMul LL A.V := IsModuleTopology.toContinuousSMul LL A.V
  haveI : IsTopologicalAddGroup A.V := IsModuleTopology.topologicalAddGroup LL A.V
  haveI : T2Space LL := by
    let e := (Module.finBasis ℚ_[l] LL).equivFun
    exact T2Space.of_injective_continuous e.injective (IsModuleTopology.continuous_of_linearMap e.toLinearMap)
  haveI : T2Space A.V := by
    let e := (Module.finBasis LL A.V).equivFun
    exact T2Space.of_injective_continuous e.injective (IsModuleTopology.continuous_of_linearMap e.toLinearMap)

  have hlpr : l.Prime := Fact.out
  let c : ℕ → LL := fun m => algebraMap O LL (((l : ℕ) : O) ^ m)
  have hc : Tendsto c atTop (𝓝 0) := by
    have hcont : Continuous (algebraMap ℚ_[l] LL) := by
      have h : (algebraMap ℚ_[l] LL : ℚ_[l] → LL) = fun a => a • (1 : LL) :=
        funext Algebra.algebraMap_eq_smul_one
      rw [h]
      exact continuous_id.smul continuous_const
    have h1 := (hcont.tendsto 0).comp (tendsto_pow_atTop_nhds_zero_of_norm_lt_one (Padic.norm_p_lt_one (p := l)))
    rw [map_zero] at h1
    refine h1.congr (fun m => ?_)
    simp [c, Function.comp, map_pow, map_natCast]

  have hl0 : ((l : ℕ) : O) ≠ 0 := by
    intro h
    have h2 := congrArg (algebraMap O LL) h
    rw [map_natCast, map_zero, ← map_natCast (algebraMap ℚ_[l] LL),
      map_eq_zero_iff _ (algebraMap ℚ_[l] LL).injective, Nat.cast_eq_zero] at h2
    exact hlpr.ne_zero h2
  have hlnu : ¬ IsUnit ((l : ℕ) : O) := by
    intro hu
    obtain ⟨a, ha⟩ := hu.exists_right_inv
    have hU : ({1}ᶜ : Set LL) ∈ 𝓝 (0 : LL) := isOpen_compl_singleton.mem_nhds (by simp)
    obtain ⟨m, hm⟩ := (eventually_smul_mem c hc hcO hU).exists
    apply hm (algebraMap O LL (a ^ m)) ⟨_, rfl⟩
    simp only [c, smul_eq_mul, ← map_mul, ← mul_pow, ha, one_pow, map_one, Set.mem_singleton_iff]
  obtain ⟨v, u, hlu⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hl0 hϖ

  let Q : ℕ → Submodule O A.V := fun n => ϖ ^ n • LA.T
  have hQT : ∀ n, Q n ≤ LA.T := by
    intro n x hx
    obtain ⟨y, hy, rfl⟩ := (Submodule.mem_smul_pointwise_iff_exists _ _ _).1 hx
    exact LA.T.smul_mem _ hy
  have hQmono : ∀ m n, m ≤ n → Q n ≤ Q m := by
    intro m n hmn x hx
    obtain ⟨y, hy, rfl⟩ := (Submodule.mem_smul_pointwise_iff_exists _ _ _).1 hx
    refine (Submodule.mem_smul_pointwise_iff_exists _ _ _).2 ⟨ϖ ^ (n - m) • y, LA.T.smul_mem _ hy, ?_⟩
    rw [smul_smul, ← pow_add, Nat.add_sub_cancel' hmn]
  have hmem : ∀ n (t : ↥LA.T), t ∈ (Ideal.span {ϖ ^ n} • ⊤ : Submodule O ↥LA.T) ↔ (t : A.V) ∈ Q n := by
    intro n t
    rw [Submodule.ideal_span_singleton_smul, Submodule.mem_smul_pointwise_iff_exists,
      Submodule.mem_smul_pointwise_iff_exists]
    constructor
    · rintro ⟨b, -, hb⟩
      exact ⟨b, b.2, by rw [← hb]; rfl⟩
    · rintro ⟨b, hbT, hb⟩
      exact ⟨⟨b, hbT⟩, trivial, Subtype.ext hb⟩
  have hTc : IsCompact (LA.T : Set A.V) := isCompact_of_fg hcO LA.T LA.fg
  have hQc : ∀ n, IsCompact (Q n : Set A.V) := by
    intro n
    have h : (Q n : Set A.V) = (fun x => algebraMap O LL (ϖ ^ n) • x) '' (LA.T : Set A.V) := by
      simp only [Q, Submodule.coe_pointwise_smul, algebraMap_smul]
      rfl
    rw [h]
    exact hTc.image (continuous_const_smul _)
  have hQρ : ∀ n g, ∀ x ∈ Q n, A.ρ g x ∈ Q n := by
    intro n g x hx
    obtain ⟨y, hy, rfl⟩ := (Submodule.mem_smul_pointwise_iff_exists _ _ _).1 hx
    refine (Submodule.mem_smul_pointwise_iff_exists _ _ _).2 ⟨A.ρ g y, LA.stable g y hy, ?_⟩
    rw [LinearMap.map_smul_of_tower]

  have hshrink : ∀ U ∈ 𝓝 (0 : A.V), ∃ N, ∀ x ∈ Q N, x ∈ U := by
    intro U hU
    obtain ⟨M, hM⟩ := (eventually_smul_mem c hc hTc hU).exists
    refine ⟨v * M, fun x hx => ?_⟩
    obtain ⟨y, hy, rfl⟩ := (Submodule.mem_smul_pointwise_iff_exists _ _ _).1 hx
    have hpow : ϖ ^ (v * M) = ((l : ℕ) : O) ^ M * (↑u⁻¹ : O) ^ M := by
      rw [← mul_pow, hlu, pow_mul, mul_comm (↑u : O), mul_assoc, Units.mul_inv, mul_one]
    have h := hM (((↑u⁻¹ : O) ^ M) • y) (LA.T.smul_mem _ hy)
    rw [hpow, mul_smul]
    simpa only [c, algebraMap_smul] using h
  have hsep : ∀ x : A.V, (∀ n, x ∈ Q n) → x = 0 := by
    intro x hx
    by_contra hne
    obtain ⟨N, hN⟩ := hshrink {x}ᶜ (isOpen_compl_singleton.mem_nhds (Ne.symm hne))
    exact hN x (hx N) rfl

  have hlim : ∀ g, ∃ x : A.V, ∀ n, x - (w n g : A.V) ∈ Q n := by
    intro g
    let C : ℕ → Set A.V := fun n => (fun x => x - (w n g : A.V)) ⁻¹' (Q n : Set A.V)
    have hne := IsCompact.nonempty_iInter_of_sequence_nonempty_isCompact_isClosed C
      (fun n x hx => by
        have h1 : x - (w (n + 1) g : A.V) ∈ Q n := hQmono n (n + 1) (Nat.le_succ n) hx
        have h2 : ((w (n + 1) g : A.V) - (w n g : A.V)) ∈ Q n := by
          have := (hmem n _).1 (hstep n g)
          simpa using this
        show x - (w n g : A.V) ∈ Q n
        have := (Q n).add_mem h1 h2
        simpa using this)
      (fun n => ⟨w n g, by simp [C]⟩)
      (by
        have : C 0 = (Homeomorph.subRight (w 0 g : A.V)) ⁻¹' (Q 0 : Set A.V) := rfl
        rw [this]
        exact (Homeomorph.subRight (w 0 g : A.V)).isCompact_preimage.2 (hQc 0))
      (fun n => (hQc n).isClosed.preimage (continuous_sub_right _))
    obtain ⟨x, hx⟩ := hne
    exact ⟨x, fun n => Set.mem_iInter.1 hx n⟩
  choose d hd using hlim
  have hdT : ∀ g, d g ∈ LA.T := by
    intro g
    have := LA.T.add_mem (hQT 0 (hd g 0)) (w 0 g).2
    simpa using this

  have hcocn : ∀ n g h, (w n (g * h) : A.V) - w n g - A.ρ g (w n h) ∈ Q n := by
    intro n g h
    have h1 := (hw n).2 g h
    simp only [actQ, Submodule.mapQ_apply] at h1
    rw [← Submodule.Quotient.mk_add, Submodule.Quotient.eq] at h1
    have := (hmem n _).1 h1
    simp only [Submodule.coe_sub, Submodule.coe_add] at this
    rw [sub_sub]
    exact this
  have hcoc : ∀ g h, d (g * h) = d g + A.ρ g (d h) := by
    intro g h
    have : d (g * h) - d g - A.ρ g (d h) = 0 := by
      refine hsep _ (fun n => ?_)
      have e : d (g * h) - d g - A.ρ g (d h) = (d (g * h) - w n (g * h)) - (d g - w n g)
          - A.ρ g (d h - w n h) + ((w n (g * h) : A.V) - w n g - A.ρ g (w n h)) := by
        rw [map_sub]; abel
      rw [e]
      exact (Q n).add_mem ((Q n).sub_mem ((Q n).sub_mem (hd _ n) (hd g n)) (hQρ n g _ (hd h n)))
        (hcocn n g h)
    exact sub_eq_zero.1 (by rw [← sub_sub]; exact this)

  have hcont : Continuous d := by
    rw [continuous_iff_continuousAt]
    intro g₀
    rw [ContinuousAt, ← tendsto_sub_nhds_zero_iff]
    intro U hU
    obtain ⟨N, hN⟩ := hshrink U hU
    have hlc := (IsLocallyConstant.iff_eventually_eq _).1 (hw N).1 g₀
    refine Filter.mem_map.2 ?_
    filter_upwards [hlc] with g hg
    show d g - d g₀ ∈ U
    apply hN
    rw [Submodule.Quotient.eq] at hg
    have h3 := (hmem N _).1 hg
    simp only [Submodule.coe_sub] at h3
    have e : d g - d g₀ = (d g - w N g) - (d g₀ - w N g₀) + ((w N g : A.V) - w N g₀) := by abel
    rw [e]
    exact (Q N).add_mem ((Q N).sub_mem (hd g N) (hd g₀ N)) h3
  refine ⟨d, ⟨⟨hcont, hcoc⟩, fun g _ => hdT g⟩, fun n g => ?_⟩
  refine ⟨⟨d g - w n g, hQT n (hd g n)⟩, (hmem n _).2 (hd g n), ?_⟩
  simp

end GlobalTheory.LimCocycle
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsLimitCocycleOfCompatibleModPow =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsTorsionCocycleFiniteLevelLift =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsTorsionCocycleFiniteLevelLift", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocalSituation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

namespace GlobalTheory.TorsionLevel

theorem exists_cocycle_level : ∀ (l : ℕ) [Fact l.Prime] (K : FinExt l) (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL] (O : Type) [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O → ∀ (A' : GRep ↥(GK K) ℚ_[l] LL O) (LA' : Lattice (O := O) A'.ρ) (ϖ : O), Irreducible ϖ → ∀ c ∈ divisibleCocycles LA', c ∉ BD LA' → ∀ r : ℕ, (∀ g, (algebraMap O LL ϖ) ^ r • liftD LA' (c g) ∈ LA'.T) → ∀ n : ℕ, r ≤ n → ∀ hI' : StableSub LA' (Ideal.span {ϖ ^ n} • ⊤ : Submodule O ↥LA'.T), ∃ c' ∈ quotientCocycles LA' _ hI', c' ∉ BQ LA' _ hI' ∧ ∀ h, ∃ t ∈ LA'.T, Formalism.MainNotions.LocalSituation.liftQ LA' _ (c' h) = (algebraMap O LL ϖ) ^ n • liftD LA' (c h) + (algebraMap O LL ϖ) ^ n • t := by
  intro l _ K LL _ _ _ O _ _ hgood A' LA' ϖ hϖ c hc hcB r hr n hn hI'
  classical
  obtain ⟨⟨_, _, _⟩, -⟩ := hgood
  set p0 : LL := algebraMap O LL ϖ with hp0
  have hp0ne : p0 ≠ 0 :=
    (map_ne_zero_iff _ (IsFractionRing.injective O LL)).mpr hϖ.ne_zero
  have memI : ∀ x : ↥LA'.T, x ∈ (Ideal.span {ϖ ^ n} • ⊤ : Submodule O ↥LA'.T) ↔
      ∃ y : ↥LA'.T, ϖ ^ n • y = x := by
    intro x
    rw [Submodule.ideal_span_singleton_smul, Submodule.mem_smul_pointwise_iff_exists]
    simp
  have smulp : ∀ (j : ℕ) (w : A'.V), p0 ^ j • w = ϖ ^ j • w := by
    intro j w; rw [hp0, ← map_pow, algebraMap_smul]
  have hmem : ∀ g, p0 ^ n • liftD LA' (c g) ∈ LA'.T := by
    intro g
    have : p0 ^ n • liftD LA' (c g) = ϖ ^ (n - r) • (p0 ^ r • liftD LA' (c g)) := by
      rw [← smulp, smul_smul, ← pow_add, Nat.sub_add_cancel hn]
    rw [this]; exact LA'.T.smul_mem _ (hr g)
  have hlift : ∀ v : A'.V ⧸ LA'.T, Submodule.Quotient.mk (p := LA'.T) (liftD LA' v) = v :=
    fun v => (Submodule.Quotient.mk_surjective _ v).choose_spec
  let F : A'.V ⧸ LA'.T → ↥LA'.T ⧸ (Ideal.span {ϖ ^ n} • ⊤ : Submodule O ↥LA'.T) := fun v =>
    if h : p0 ^ n • liftD LA' v ∈ LA'.T then Submodule.Quotient.mk ⟨_, h⟩ else 0
  have hc' : ∀ g, (F ∘ c) g = Submodule.Quotient.mk ⟨_, hmem g⟩ := by
    intro g; simp only [F, Function.comp_apply, dif_pos (hmem g)]
  refine ⟨fun g => Submodule.Quotient.mk ⟨_, hmem g⟩, ⟨?_, ?_⟩, ?_, ?_⟩
  · have : (fun g => (Submodule.Quotient.mk ⟨_, hmem g⟩ :
        ↥LA'.T ⧸ (Ideal.span {ϖ ^ n} • ⊤ : Submodule O ↥LA'.T))) = F ∘ c :=
      funext fun g => (hc' g).symm
    rw [this]; exact hc.1.comp F
  · intro g h
    simp only
    rw [actQ, Submodule.mapQ_apply, ← Submodule.Quotient.mk_add, Submodule.Quotient.eq, memI]
    have hd : liftD LA' (c (g * h)) - liftD LA' (c g) - A'.ρ g (liftD LA' (c h)) ∈ LA'.T := by
      rw [← Submodule.Quotient.mk_eq_zero, Submodule.Quotient.mk_sub, Submodule.Quotient.mk_sub,
        hlift, hlift, hc.2 g h]
      have : Submodule.Quotient.mk (p := LA'.T) (A'.ρ g (liftD LA' (c h))) = actD LA' g (c h) := by
        conv_rhs => rw [← hlift (c h)]
        rfl
      rw [this]; abel
    refine ⟨⟨_, hd⟩, Subtype.ext ?_⟩
    rw [Submodule.coe_smul, ← smulp]
    show p0 ^ n • (liftD LA' (c (g * h)) - liftD LA' (c g) - A'.ρ g (liftD LA' (c h))) =
      p0 ^ n • liftD LA' (c (g * h)) - (p0 ^ n • liftD LA' (c g) + A'.ρ g (p0 ^ n • liftD LA' (c h)))
    rw [map_smul, smul_sub, smul_sub]; abel
  · rintro ⟨x, hx⟩
    apply hcB
    obtain ⟨t, rfl⟩ := Submodule.Quotient.mk_surjective _ x
    refine ⟨Submodule.Quotient.mk ((p0 ^ n)⁻¹ • (t : A'.V)), funext fun g => ?_⟩
    have hxg := congrFun hx g
    simp only [LinearMap.pi_apply, LinearMap.sub_apply, LinearMap.id_apply] at hxg ⊢
    change Submodule.Quotient.mk (actT LA' g t) - Submodule.Quotient.mk t = _ at hxg
    rw [← Submodule.Quotient.mk_sub, Submodule.Quotient.eq, memI] at hxg
    obtain ⟨s, hs⟩ := hxg
    have key : A'.ρ g (t : A'.V) - t - p0 ^ n • liftD LA' (c g) = p0 ^ n • (s : A'.V) := by
      rw [smulp n (s : A'.V)]
      have := congrArg Subtype.val hs
      rw [Submodule.coe_smul] at this
      rw [this]; rfl
    conv_rhs => rw [← hlift (c g)]
    change Submodule.Quotient.mk (p := LA'.T) (A'.ρ g ((p0 ^ n)⁻¹ • (t : A'.V))) - _ = _
    rw [← Submodule.Quotient.mk_sub, Submodule.Quotient.eq]
    have : (A'.ρ g) ((p0 ^ n)⁻¹ • (t : A'.V)) - (p0 ^ n)⁻¹ • (t : A'.V) - liftD LA' (c g) = s := by
      apply smul_right_injective A'.V (pow_ne_zero n hp0ne)
      simp only [map_smul, ← smul_sub]
      rw [smul_sub, smul_inv_smul₀ (pow_ne_zero n hp0ne), key]
    rw [this]; exact s.2
  · intro h
    have key : ∀ x q : ↥LA'.T,
        Submodule.Quotient.mk (p := (Ideal.span {ϖ ^ n} • ⊤ : Submodule O ↥LA'.T)) q =
          Submodule.Quotient.mk x → ∃ t ∈ LA'.T, (q : A'.V) = (x : A'.V) + p0 ^ n • t := by
      intro x q hq
      rw [Submodule.Quotient.eq, memI] at hq
      obtain ⟨y, hy⟩ := hq
      refine ⟨y, y.2, ?_⟩
      rw [smulp n (y : A'.V), ← Submodule.coe_smul, hy, Submodule.coe_sub]; abel
    exact key _ _ (Submodule.Quotient.mk_surjective _ _).choose_spec

end GlobalTheory.TorsionLevel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsTorsionCocycleFiniteLevelLift =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TorsionCocycleUniformizerPowSmulMem =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TorsionCocycleUniformizerPowSmulMem", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.FieldTheory.Galois.Profinite\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.FieldTheory.Galois.Infinite\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

noncomputable section

namespace GlobalTheory.TorsCoc

theorem exists_pow_smul_mem {LL : Type} [Field LL] {O : Type} [CommRing O] [IsDomain O]
    [IsDiscreteValuationRing O] [Algebra O LL] [IsFractionRing O LL]
    {V : Type} [AddCommGroup V] [Module LL V] [Module O V] [IsScalarTower O LL V]
    (T : Submodule O V) (hT : Submodule.span LL (T : Set V) = ⊤) (ϖ : O) (hϖ : Irreducible ϖ)
    (v : V) : ∃ k : ℕ, ∀ j, k ≤ j → (algebraMap O LL ϖ) ^ j • v ∈ T := by
  have hv : v ∈ Submodule.span LL (T : Set V) := hT ▸ Submodule.mem_top

  have up : ∀ (x : V) (k j : ℕ), k ≤ j → (algebraMap O LL ϖ) ^ k • x ∈ T →
      (algebraMap O LL ϖ) ^ j • x ∈ T := by
    intro x k j hkj hx
    obtain ⟨i, rfl⟩ := Nat.exists_eq_add_of_le hkj
    rw [pow_add, mul_comm, mul_smul, ← map_pow, algebraMap_smul]
    exact T.smul_mem _ hx
  induction hv using Submodule.span_induction with
  | mem x hx => exact ⟨0, fun j _ => by rw [← map_pow, algebraMap_smul]; exact T.smul_mem _ hx⟩
  | zero => exact ⟨0, fun j _ => by simp⟩
  | add x y _ _ hx hy =>
    obtain ⟨a, ha⟩ := hx
    obtain ⟨b, hb⟩ := hy
    exact ⟨max a b, fun j hj => by
      rw [smul_add]
      exact T.add_mem (ha j (le_trans (le_max_left _ _) hj)) (hb j (le_trans (le_max_right _ _) hj))⟩
  | smul a x _ hx =>
    obtain ⟨k, hk⟩ := hx
    obtain ⟨b, s, hs, rfl⟩ := IsFractionRing.div_surjective (A := O) a
    have hs0 : s ≠ 0 := nonZeroDivisors.ne_zero hs
    obtain ⟨n, u, hu⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hs0 hϖ
    refine ⟨n + k, fun j hj => up _ (n + k) j hj ?_⟩
    have key : (algebraMap O LL ϖ) ^ n * (algebraMap O LL b / algebraMap O LL s) =
        algebraMap O LL (b * ((u⁻¹ : Oˣ) : O)) := by
      have hsne : algebraMap O LL s ≠ 0 :=
        IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors hs
      rw [mul_div_assoc', div_eq_iff hsne, hu]
      simp only [map_mul, map_pow]
      have hu1 : algebraMap O LL ((u⁻¹ : Oˣ) : O) * algebraMap O LL (u : O) = 1 := by
        rw [← map_mul, Units.inv_mul, map_one]
      linear_combination (-(algebraMap O LL b * algebraMap O LL ϖ ^ n)) * hu1
    have e : (algebraMap O LL ϖ) ^ (n + k) • ((algebraMap O LL b / algebraMap O LL s) • x) =
        ((algebraMap O LL ϖ) ^ n * (algebraMap O LL b / algebraMap O LL s)) •
          ((algebraMap O LL ϖ) ^ k • x) := by
      rw [pow_add, mul_smul, mul_smul, smul_comm (algebraMap O LL b / algebraMap O LL s)]
    rw [e, key, algebraMap_smul]
    exact T.smul_mem _ (hk k le_rfl)

theorem cocycle_pow_smul_mem : ∀ (l : ℕ) [Fact l.Prime] (K : FinExt l) (LL : Type) [Field LL]
    [Algebra ℚ_[l] LL] [TopologicalSpace LL] (O : Type) [CommRing O] [Algebra O LL],
    GoodO (Qp := ℚ_[l]) LL O → ∀ (A' : GRep ↥(GK K) ℚ_[l] LL O) (LA' : Lattice (O := O) A'.ρ)
    (ϖ : O), Irreducible ϖ → ∀ c ∈ divisibleCocycles LA', ∃ r : ℕ, ∀ g,
    (algebraMap O LL ϖ) ^ r • liftD LA' (c g) ∈ LA'.T := by
  intro l _ K LL _ _ _ O _ _ hO A' LA' ϖ hϖ c hc
  obtain ⟨⟨hD, hDVR, hFR⟩, -⟩ := hO
  haveI : CompactSpace ↥(GK K) := by
    haveI := K.2
    exact isCompact_iff_compactSpace.1 (InfiniteGalois.fixingSubgroup_isClosed K.1).isCompact
  have hfin : (Set.range c).Finite := hc.1.range_finite
  choose f hf using fun y : A'.V ⧸ LA'.T =>
    exists_pow_smul_mem LA'.T LA'.span ϖ hϖ (liftD LA' y)
  refine ⟨hfin.toFinset.sup f, fun g => hf (c g) _ ?_⟩
  exact Finset.le_sup (f := f) (hfin.mem_toFinset.2 ⟨g, rfl⟩)

end GlobalTheory.TorsCoc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TorsionCocycleUniformizerPowSmulMem =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDualPairingCyclotomic =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDualPairingCyclotomic", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocalSituation\npublic import Mathlib.Basic.Finite.Defs\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCompatibleSeqOfFiniteNonempty\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsLimitCocycleOfCompatibleModPow\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsTorsionCocycleFiniteLevelLift\npublic import Formalism.GaloisCohomology.LocalTateDualityK\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteLatticeCocyclesModUniformizerPow\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TatePairingLatticeQuotientsNondegenerate\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TorsionCocycleUniformizerPowSmulMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

namespace GlobalTheory.TateOrth

section Gen
variable {G : Type} [Group G] {LL : Type} [Field LL] {O : Type} [CommRing O] [Algebra O LL]
  {V : Type} [AddCommGroup V] [Module LL V] [Module O V] [IsScalarTower O LL V]
  {ρ : Representation LL G V}

theorem mem_span_smul_top (L : Lattice (O := O) ρ) (a : O) (x : ↥L.T) :
    x ∈ (Ideal.span {a} • ⊤ : Submodule O ↥L.T) ↔ ∃ y : ↥L.T, x = a • y := by
  rw [Submodule.ideal_span_singleton_smul, Submodule.mem_smul_pointwise_iff_exists]
  constructor
  · rintro ⟨y, -, rfl⟩; exact ⟨y, rfl⟩
  · rintro ⟨y, rfl⟩; exact ⟨y, Submodule.mem_top, rfl⟩

theorem stable_span_smul_top (L : Lattice (O := O) ρ) (a : O) :
    StableSub L (Ideal.span {a} • ⊤ : Submodule O ↥L.T) := by
  intro g x hx
  rw [mem_span_smul_top] at hx ⊢
  obtain ⟨y, rfl⟩ := hx
  exact ⟨actT L g y, map_smul _ _ _⟩

theorem factor_actQ (L : Lattice (O := O) ρ) {I J : Submodule O ↥L.T} (hI : StableSub L I)
    (hJ : StableSub L J) (hIJ : I ≤ J) (g : G) (x : ↥L.T ⧸ I) :
    Submodule.factor hIJ (actQ L I hI g x) = actQ L J hJ g (Submodule.factor hIJ x) := by
  obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective I x
  rfl

theorem factor_mem_Z1Q [TopologicalSpace G] (L : Lattice (O := O) ρ) {I J : Submodule O ↥L.T}
    (hI : StableSub L I) (hJ : StableSub L J) (hIJ : I ≤ J) {z : G → ↥L.T ⧸ I}
    (hz : z ∈ quotientCocycles L I hI) : (fun g => Submodule.factor hIJ (z g)) ∈ quotientCocycles L J hJ := by
  refine ⟨hz.1.comp _, fun g h => ?_⟩
  simp only [hz.2 g h, map_add (f := _), factor_actQ L hI hJ hIJ]

end Gen

theorem mem_BD_of_orthogonal : Formalism.GaloisCohomology.LocalTateDualityK → ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (K : FinExt l) (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL] (O : Type) [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O → ∀ L1 : Lattice (O := O) (charRep (cycLL (P.PD K) LL)), L1.T = LinearMap.range (Algebra.linearMap O LL) → ∀ (A A' : GRep ↥(GK K) ℚ_[l] LL O) (LA : Lattice (O := O) A.ρ) (LA' : Lattice (O := O) A'.ρ) (m : A.V →ₗ[LL] A'.V →ₗ[LL] LL), IsDualLat1 (P.PD K) LA LA' m → ∀ c ∈ divisibleCocycles LA', (∀ d ∈ latticeCocycles LA, CobO (P.PD K) L1 (cupLD LA' m d c)) → c ∈ BD LA' := by
  intro hT l _ P K LL _ _ _ O _ _ hO L1 hL1 A A' LA LA' m hm c hc horth
  obtain ⟨hDom, hDVR, hFrac⟩ := hO.1
  haveI := hDom; haveI := hDVR; haveI := hFrac
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  set π := algebraMap O LL ϖ with hπdef
  have hπ : π ≠ 0 := by
    intro h
    exact hϖ.ne_zero (IsFractionRing.injective O LL (by rw [← hπdef, h, map_zero]))
  by_contra hcB
  obtain ⟨r, hr⟩ := _root_.GlobalTheory.TorsCoc.cocycle_pow_smul_mem l K LL O hO A' LA' ϖ hϖ c hc
  let I : ℕ → Submodule O ↥LA.T := fun k => Ideal.span {ϖ ^ (r + k)} • ⊤
  have hI : ∀ k, StableSub LA (I k) := fun k => stable_span_smul_top LA _
  let Φ : ∀ k, (↥(GK K) → ↥LA.T ⧸ I k) → ↥(GK K) × ↥(GK K) → LL := fun k z x =>
    m (Formalism.MainNotions.LocalSituation.liftQ LA (I k) (z x.1)) (A'.ρ x.1 (liftD LA' (c x.2)))
  let Y : ∀ k, Set (↥(GK K) → ↥LA.T ⧸ I k) := fun k =>
    {z | z ∈ quotientCocycles LA (I k) (hI k) ∧ ¬ CobO (P.PD K) L1 (Φ k z)}
  have hle : ∀ k, I (k + 1) ≤ I k := fun k =>
    Submodule.smul_mono_left (Ideal.span_singleton_le_span_singleton.2 (pow_dvd_pow ϖ (by omega)))
  have hle0 : ∀ k, I k ≤ I 0 := fun k =>
    Submodule.smul_mono_left (Ideal.span_singleton_le_span_singleton.2 (pow_dvd_pow ϖ (by omega)))
  let f : ∀ k, (↥(GK K) → ↥LA.T ⧸ I (k + 1)) → (↥(GK K) → ↥LA.T ⧸ I k) := fun k z g =>
    Submodule.factor (hle k) (z g)

  have hmemPow : ∀ (j : ℕ) (x : ↥LA.T), x ∈ (Ideal.span {ϖ ^ j} • ⊤ : Submodule O ↥LA.T) →
      ∃ t ∈ LA.T, (x : A.V) = π ^ j • t := by
    intro j x hx
    obtain ⟨y, rfl⟩ := (mem_span_smul_top LA _ x).1 hx
    exact ⟨y, y.2, by rw [Submodule.coe_smul, hπdef, ← map_pow, algebraMap_smul]⟩
  have hliftMem : ∀ (J : Submodule O ↥LA.T) (x : ↥LA.T ⧸ J), Formalism.MainNotions.LocalSituation.liftQ LA J x ∈ LA.T :=
    fun J x => (Submodule.Quotient.mk_surjective J x).choose.2
  have hspec : ∀ (J : Submodule O ↥LA.T) (x : ↥LA.T ⧸ J), ∃ y : ↥LA.T,
      (y : A.V) = Formalism.MainNotions.LocalSituation.liftQ LA J x ∧ Submodule.Quotient.mk y = x := fun J x =>
    ⟨_, rfl, (Submodule.Quotient.mk_surjective J x).choose_spec⟩
  have hlift2 : ∀ k (x : ↥LA.T ⧸ I k) (y : ↥LA.T), x = Submodule.Quotient.mk y →
      ∃ t ∈ LA.T, Formalism.MainNotions.LocalSituation.liftQ LA (I k) x - (y : A.V) = π ^ (r + k) • t := by
    intro k x y hxy
    obtain ⟨y0, hy0, hmk0⟩ := hspec (I k) x
    have hmem : y0 - y ∈ I k := (Submodule.Quotient.eq _).1 (hmk0.trans hxy)
    obtain ⟨t, ht, he⟩ := hmemPow (r + k) _ hmem
    exact ⟨t, ht, by rw [← hy0, ← he, Submodule.coe_sub]⟩
  have hcong : ∀ (k : ℕ) (a b : A.V) (y : A'.V) (t : A.V), t ∈ LA.T → a - b = π ^ k • t →
      π ^ k • y ∈ LA'.T → m a y - m b y ∈ Set.range (algebraMap O LL) := by
    intro k a b y t ht hab hy
    obtain ⟨e, he⟩ := (hm.2 _).1 hy t ht
    have : m a y - m b y = m t (π ^ k • y) := by
      rw [← LinearMap.sub_apply, ← map_sub, hab, LinearMap.map_smul₂, (m t).map_smul]
    exact ⟨e, by rw [this, he]⟩
  have hcobO : ∀ z z' : ↥(GK K) × ↥(GK K) → LL, (∀ x, z x - z' x ∈ Set.range (algebraMap O LL)) →
      (CobO (P.PD K) L1 z → CobO (P.PD K) L1 z') := by
    intro z z' hzz hz
    have : (fun x => (Submodule.Quotient.mk (z x) : LL ⧸ L1.T)) =
        fun x => Submodule.Quotient.mk (z' x) := by
      funext x
      rw [Submodule.Quotient.eq, hL1]
      obtain ⟨e, he⟩ := hzz x
      exact ⟨e, he⟩
    unfold CobO at hz ⊢
    rwa [← this]
  have hT'pow : ∀ (k : ℕ) (g h : ↥(GK K)), π ^ (r + k) • A'.ρ g (liftD LA' (c h)) ∈ LA'.T := by
    intro k g h
    rw [← map_smul, add_comm, pow_add, mul_smul]
    apply LA'.stable
    rw [hπdef, ← map_pow, algebraMap_smul]
    exact LA'.T.smul_mem _ (hr h)

  have hfin : ∀ k, (Y k).Finite := fun k =>
    (_root_.GlobalTheory.CocycleModPow.finite_Z1Q hT l K LL O hO A LA ϖ hϖ (r + k) (hI k)).subset (fun z hz => hz.1)
  have hne : ∀ k, (Y k).Nonempty := by
    intro k
    have hI' : StableSub LA' (Ideal.span {ϖ ^ (r + k)} • ⊤ : Submodule O ↥LA'.T) :=
      stable_span_smul_top LA' _
    obtain ⟨c', hc'Z, hc'B, hc'l⟩ :=
      _root_.GlobalTheory.TorsionLevel.exists_cocycle_level l K LL O hO A' LA' ϖ hϖ c hc hcB r hr (r + k) (by omega) hI'
    have h2 := (_root_.GlobalTheory.TateFin.tate_pairing_nondegenerate hT l P K LL O hO L1 hL1 A A' LA LA' m hm ϖ hϖ (r + k) (hI k) hI').2 c' hc'Z
    by_contra hemp
    rw [Set.not_nonempty_iff_eq_empty] at hemp
    apply hc'B
    apply h2
    intro z hz
    have hzY : z ∉ Y k := by rw [hemp]; exact fun h => h
    have hC : CobO (P.PD K) L1 (Φ k z) := by
      by_contra hn; exact hzY ⟨hz, hn⟩
    refine hcobO _ _ ?_ hC
    intro x
    obtain ⟨t, ht, hteq⟩ := hc'l x.2
    obtain ⟨e, he⟩ := (hm.2 _).1 (LA'.stable x.1 t ht) _ (hliftMem (I k) (z x.1))
    refine ⟨-e, ?_⟩
    rw [map_neg, ← he]
    simp only [Φ, hteq, map_add (f := _), map_smul, smul_eq_mul, ← hπdef]
    rw [inv_pow]
    field_simp
    ring
  have hmap : ∀ k, ∀ z ∈ Y (k + 1), f k z ∈ Y k := by
    rintro k z ⟨hz, hnc⟩
    refine ⟨factor_mem_Z1Q LA (hI (k + 1)) (hI k) (hle k) hz, fun hc' => hnc (hcobO _ _ ?_ hc')⟩
    intro x
    obtain ⟨t, ht, hteq⟩ := hlift2 k (f k z x.1) ⟨_, hliftMem (I (k + 1)) (z x.1)⟩ (by
      obtain ⟨y0, hy0, hmk0⟩ := hspec (I (k + 1)) (z x.1)
      have hy : (⟨_, hliftMem (I (k + 1)) (z x.1)⟩ : ↥LA.T) = y0 := Subtype.ext hy0.symm
      rw [hy]
      show Submodule.factor (hle k) (z x.1) = _
      rw [← hmk0]
      rfl)
    exact hcong (r + k) _ _ _ t ht hteq (hT'pow k x.1 x.2)
  obtain ⟨s, hs⟩ := _root_.GlobalTheory.exists_compatible_seq_of_finite_nonempty (fun k => ↥(GK K) → ↥LA.T ⧸ I k) f Y hfin hne hmap
  let w : ℕ → ↥(GK K) → ↥LA.T := fun k g => (Submodule.Quotient.mk_surjective (I k) (s k g)).choose
  have hwk : ∀ k g, (Submodule.Quotient.mk (w k g) : ↥LA.T ⧸ I k) = s k g := fun k g =>
    (Submodule.Quotient.mk_surjective (I k) (s k g)).choose_spec
  have hI'I : ∀ k, I k ≤ (Ideal.span {ϖ ^ k} • ⊤ : Submodule O ↥LA.T) := fun k =>
    Submodule.smul_mono_left (Ideal.span_singleton_le_span_singleton.2 (pow_dvd_pow ϖ (by omega)))
  have hI' : ∀ n : ℕ, StableSub LA (Ideal.span {ϖ ^ n} • ⊤ : Submodule O ↥LA.T) := fun n =>
    stable_span_smul_top LA _
  have hwZ : ∀ n, (fun g => (Submodule.Quotient.mk (w n g) :
      ↥LA.T ⧸ (Ideal.span {ϖ ^ n} • ⊤ : Submodule O ↥LA.T))) ∈ quotientCocycles LA _ (hI' n) := by
    intro n
    have := factor_mem_Z1Q LA (hI n) (hI' n) (hI'I n) (hs n).1.1
    convert this using 1
    funext g
    rw [← hwk n g]
    rfl
  have hstep : ∀ k g, w (k + 1) g - w k g ∈ I k := by
    intro k g
    apply (Submodule.Quotient.eq _).1
    rw [hwk k g, ← (hs k).2]
    show _ = Submodule.factor (hle k) (s (k + 1) g)
    rw [← hwk (k + 1) g]
    rfl
  obtain ⟨d, hdZ, hd⟩ := _root_.GlobalTheory.LimCocycle.limit_cocycle l K LL O hO A LA ϖ hϖ hI' w hwZ (fun n g => hI'I n (hstep n g))
  have htele : ∀ n g, w n g - w 0 g ∈ I 0 := by
    intro n g
    induction n with
    | zero => simp
    | succ n ih =>
      have := (I 0).add_mem (hle0 n (hstep n g)) ih
      rwa [sub_add_sub_cancel] at this
  apply (hs 0).1.2
  refine hcobO _ _ ?_ (horth d hdZ)
  intro x
  obtain ⟨t1, ht1, hdt⟩ := hd r x.1
  have he : t1 + (w r x.1 - w 0 x.1) ∈ I 0 := (I 0).add_mem ht1 (htele r x.1)
  obtain ⟨u, hu, hue⟩ := hmemPow (r + 0) _ he
  obtain ⟨t3, ht3, ht3e⟩ := hlift2 0 (s 0 x.1) (w 0 x.1) (hwk 0 x.1).symm
  refine hcong (r + 0) _ _ _ (u - t3) (LA.T.sub_mem hu ht3) ?_ (hT'pow 0 x.1 x.2)
  rw [smul_sub, ← hue, ← ht3e, hdt]
  simp only [Submodule.coe_add, Submodule.coe_sub]
  abel

end GlobalTheory.TateOrth
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDualPairingCyclotomic =====
