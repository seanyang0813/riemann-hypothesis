module

public import ReciprocityTheory.ReductiveGroups.TraceFormulas.LatDefs
public import Formalism.GaloisCohomology.LocalTateDualityK
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatInvIsoOfLocalTateDualityCyclotomicTwist
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
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.FieldTheory.Galois.Profinite
import Mathlib.Tactic.Linter.Style
import Mathlib.Topology.Connected.Separation
import Mathlib.Topology.Separation.CompletelyRegular

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPowPSmulMemOneFractionRing, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.H2TwistFromOpenUnion, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsFGTopPPowInverseLattice, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MapH2SubtypeInjective, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.InvIsoOfLocalTateDuality

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPowPSmulMemOneFractionRing =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPowPSmulMemOneFractionRing", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.TraceFormulas.LatDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.Gal Formalism.RepresentationBoundsCohomology.LOC ReciprocityTheory.ChartRestriction.T2
open Formalism.NG (KO)

namespace GlobalTheory

theorem padicCoeff_exists_pow_smul_mem_one :
    ∀ {p : ℕ} {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [TopologicalSpace O],
    PadicCoeff p O → ∀ y : FractionRing O,
    ∃ n, y ∈ (1 : Submodule O (FractionRing O)).comap (LinearMap.lsmul O _ ((p : O) ^ n)) := by
  intro p O _ _ _ _ hP y
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  have hdvd : ϖ ∣ (p : O) := by
    have h := hP.p_mem
    rw [hϖ.maximalIdeal_eq, Ideal.mem_span_singleton] at h
    exact h
  obtain ⟨⟨a, b⟩, rfl⟩ := IsLocalization.mk'_surjective (nonZeroDivisors O) y
  dsimp only
  have hb : (b : O) ≠ 0 := nonZeroDivisors.coe_ne_zero b
  obtain ⟨k, u, hu⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hb hϖ
  have hbk : (b : O) ∣ (p : O) ^ k := by
    rw [hu]
    exact (Units.mul_left_dvd).mpr (pow_dvd_pow_of_dvd hdvd k)
  obtain ⟨c, hc⟩ := hbk
  refine ⟨k, ?_⟩
  rw [Submodule.mem_comap, LinearMap.lsmul_apply, Submodule.mem_one]
  refine ⟨c * a, ?_⟩
  rw [Algebra.smul_def, hc, map_mul, map_mul, mul_assoc, mul_left_comm, IsLocalization.mk'_spec']

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPowPSmulMemOneFractionRing =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.H2TwistFromOpenUnion =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.H2TwistFromOpenUnion", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.TraceFormulas.LatDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.Gal Formalism.RepresentationBoundsCohomology.LOC ReciprocityTheory.ChartRestriction.T2
open Formalism.NG (KO)

namespace GlobalTheory

theorem h2_twist_exists_of_iUnion_open : ∀ {O : Type} [CommRing O] [TopologicalSpace O] {G : Type} [Group G] [TopologicalSpace G] [CompactSpace G]
    (ε : G →* Oˣ) {M : Type} [AddCommGroup M] [Module O M] [TopologicalSpace M] [IsTopologicalAddGroup M]
    [ContinuousSMul O M] (N : ℕ → Submodule O M), Monotone N → (∀ n, IsOpen (N n : Set M)) → (∀ x, ∃ n, x ∈ N n) →
    ∀ z : H2 (twist ε M), ∃ n, ∃ z' : H2 (twist ε (N n)),
      mapH2 (twist ε (N n)) (twist ε M) (N n).subtype continuous_subtype_val (twist_map ε (N n).subtype) z' = z := by
  intro O _ _ G _ _ _ ε M _ _ _ _ _ N hmono hopen hcov z
  obtain ⟨f, rfl⟩ := Submodule.Quotient.mk_surjective _ z
  have hK : IsCompact (Set.range f.1) := isCompact_range f.2.1
  have hmono' : Monotone (fun n => (N n : Set M)) := fun a b h => SetLike.coe_subset_coe.mpr (hmono h)
  obtain ⟨n, hn⟩ := hK.elim_directed_cover (fun n => (N n : Set M)) hopen
    (fun x _ => Set.mem_iUnion.mpr (hcov x)) hmono'.directed_le
  let f' : G × G → N n := fun x => ⟨f.1 x, hn ⟨x, rfl⟩⟩
  have hc : Continuous f' := f.2.1.subtype_mk _
  have hcoc : f' ∈ Z2 (twist ε (N n)) := by
    refine ⟨hc, fun g h k => ?_⟩
    apply Subtype.ext
    have e := f.2.2 g h k
    have key : ∀ x : N n, ((twist ε (N n) g x : N n) : M) = twist ε M g (x : M) := fun x => rfl
    simpa [f', key] using e
  refine ⟨n, Submodule.Quotient.mk ⟨f', hcoc⟩, ?_⟩
  rfl

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.H2TwistFromOpenUnion =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsFGTopPPowInverseLattice =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsFGTopPPowInverseLattice", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.TraceFormulas.LatDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.Gal Formalism.RepresentationBoundsCohomology.LOC ReciprocityTheory.ChartRestriction.T2
open Formalism.NG (KO)

namespace GlobalTheory

theorem fractionRing_t2_of_openEmbedding {O : Type} [CommRing O] [IsDomain O]
    [TopologicalSpace O] [T2Space O] [TopologicalSpace (FractionRing O)]
    [IsTopologicalAddGroup (FractionRing O)]
    (he : Topology.IsOpenEmbedding (algebraMap O (FractionRing O))) : T2Space (FractionRing O) := by
  apply IsTopologicalAddGroup.t2Space_of_zero_sep
  intro x hx
  set ι := algebraMap O (FractionRing O)
  have hsub : (ι ⁻¹' {x}).Subsingleton := fun a ha b hb => he.injective (ha.trans hb.symm)
  have hcl : IsClosed (ι ⁻¹' {x}) := hsub.isClosed
  refine ⟨ι '' (ι ⁻¹' {x})ᶜ, ?_, ?_⟩
  · refine (he.isOpenMap _ hcl.isOpen_compl).mem_nhds ⟨0, ?_, map_zero ι⟩
    simp only [Set.mem_compl_iff, Set.mem_preimage, Set.mem_singleton_iff, map_zero]
    exact fun h => hx h.symm
  · rintro ⟨a, ha, hax⟩
    exact ha hax

theorem isFGTop_comap_lsmul_one : ∀ {p : ℕ} {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    [TopologicalSpace O] [TopologicalSpace (FractionRing O)]
    [IsTopologicalAddGroup (FractionRing O)] [ContinuousSMul O (FractionRing O)],
    PadicCoeff p O → FracTop O → ∀ n : ℕ,
    IsFGTop O ((1 : Submodule O (FractionRing O)).comap (LinearMap.lsmul O _ ((p : O) ^ n))) := by
  intro p O _ _ _ _ _ _ _ hO hF n
  haveI := hO.t2
  haveI := fractionRing_t2_of_openEmbedding hF.emb
  set S := (1 : Submodule O (FractionRing O)).comap (LinearMap.lsmul O _ ((p : O) ^ n))
  refine ⟨?_, inferInstance, inferInstance⟩
  haveI : Module.Finite O (1 : Submodule O (FractionRing O)) := by
    rw [Module.Finite.iff_fg, Submodule.one_eq_span]
    exact Submodule.fg_span (Set.finite_singleton _)
  haveI : IsNoetherian O (1 : Submodule O (FractionRing O)) := inferInstance
  let f : S →ₗ[O] (1 : Submodule O (FractionRing O)) :=
    (LinearMap.lsmul O (FractionRing O) ((p : O) ^ n)).restrict (fun x hx => hx)
  refine Module.Finite.of_injective f ?_
  intro a b hab
  have h := congrArg Subtype.val hab
  simp only [f, LinearMap.restrict_apply, LinearMap.lsmul_apply] at h
  have hp : ((p : O) ^ n) ≠ 0 := pow_ne_zero _ hO.p_ne
  exact Subtype.ext (smul_right_injective (FractionRing O) hp h)

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsFGTopPPowInverseLattice =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MapH2SubtypeInjective =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MapH2SubtypeInjective", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.TraceFormulas.LatDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.Gal Formalism.RepresentationBoundsCohomology.LOC ReciprocityTheory.ChartRestriction.T2
open Formalism.NG (KO)

namespace GlobalTheory

theorem map_H2_subtype_injective_of_union : ∀ {O : Type} [CommRing O] [TopologicalSpace O] {G : Type} [Group G] [TopologicalSpace G] [CompactSpace G]
    {ε : G →* Oˣ} (Θ : NatInv ε (fun M _ _ _ => IsFGTop O M))
    {M : Type} [AddCommGroup M] [Module O M] [TopologicalSpace M] [IsTopologicalAddGroup M]
    [ContinuousSMul O M] (N : ℕ → Submodule O M), Monotone N → (∀ n, IsOpen (N n : Set M)) → (∀ x, ∃ n, x ∈ N n) →
    ∀ (hfg : ∀ n, IsFGTop O (N n)) (n : ℕ),
      Function.Injective (mapH2 (twist ε (N n)) (twist ε M) (N n).subtype continuous_subtype_val (twist_map ε (N n).subtype)) := by
  intro O _ _ G _ _ _ ε Θ M _ _ _ _ _ N hmono hopen hcov hfg n
  rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
  intro z hz
  induction z using Submodule.Quotient.induction_on with
  | H f =>
  unfold mapH2 at hz
  rw [Submodule.mapQ_apply, Submodule.Quotient.mk_eq_zero] at hz
  obtain ⟨c, hc, hcf⟩ := (separated_dvr_second_cohomology_mem _ _).1 hz

  have hK : IsCompact (Set.range c) := isCompact_range hc
  obtain ⟨i, hi⟩ := hK.elim_directed_cover (fun k => (N k : Set M)) hopen
    (fun x _ => Set.mem_iUnion.2 (hcov x)) (hmono.directed_le)
  set m := max n i with hm
  have hnm : N n ≤ N m := hmono (le_max_left n i)
  have him : ∀ g, c g ∈ N m := fun g => hmono (le_max_right n i) (hi ⟨g, rfl⟩)
  have hincl : Continuous (Submodule.inclusion hnm) := continuous_inclusion hnm
  have hzero : mapH2 (twist ε (N n)) (twist ε (N m)) (Submodule.inclusion hnm) hincl
      (twist_map ε (Submodule.inclusion hnm)) (Submodule.Quotient.mk f) = 0 := by
    unfold mapH2
    rw [Submodule.mapQ_apply, Submodule.Quotient.mk_eq_zero]
    refine (separated_dvr_second_cohomology_mem _ _).2 ⟨fun g => ⟨c g, him g⟩, hc.subtype_mk him, ?_⟩
    funext p
    apply Subtype.ext
    have e := congrFun hcf p
    simp [d1, twist] at e ⊢
    rw [e]
    rfl
  have hnat := Θ.nat (N n) (N m) (hfg n) (hfg m) (Submodule.inclusion hnm) hincl (Submodule.Quotient.mk f)
  rw [hzero, map_zero] at hnat
  have h0 : Θ.θ (N n) (hfg n) (Submodule.Quotient.mk f) = 0 := by
    have := hnat.symm
    rw [← (Submodule.inclusion hnm).map_zero] at this
    exact Submodule.inclusion_injective hnm this
  exact (LinearEquiv.map_eq_zero_iff _).1 h0

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MapH2SubtypeInjective =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.InvIsoOfLocalTateDuality =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.InvIsoOfLocalTateDuality", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.TraceFormulas.LatDefs\npublic import Formalism.GaloisCohomology.LocalTateDualityK\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPowPSmulMemOneFractionRing\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.H2TwistFromOpenUnion\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsFGTopPPowInverseLattice\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MapH2SubtypeInjective\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatInvIsoOfLocalTateDualityCyclotomicTwist\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.FieldTheory.Galois.Profinite\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.Gal Formalism.RepresentationBoundsCohomology.LOC ReciprocityTheory.ChartRestriction.T2
open Formalism.NG (KO)

noncomputable section

namespace GlobalTheory.InvColim

theorem colim_equiv {O : Type} [CommRing O] [TopologicalSpace O] {G : Type} [Group G] [TopologicalSpace G]
    [CompactSpace G] {ε : G →* Oˣ} (Θ : NatInv ε (fun M _ _ _ => IsFGTop O M))
    {M : Type} [AddCommGroup M] [Module O M] [TopologicalSpace M] [IsTopologicalAddGroup M]
    [ContinuousSMul O M] (N : ℕ → Submodule O M) (hmono : Monotone N)
    (hopen : ∀ n, IsOpen (N n : Set M)) (hcov : ∀ x, ∃ n, x ∈ N n) (hfg : ∀ n, IsFGTop O (N n)) :
    ∃ e : H2 (twist ε M) ≃ₗ[O] M, ∀ n (z : H2 (twist ε (N n))),
      e (mapH2 (twist ε (N n)) (twist ε M) (N n).subtype continuous_subtype_val
        (twist_map ε (N n).subtype) z) = Θ.θ (N n) (hfg n) z := by
  have hinj := _root_.GlobalTheory.map_H2_subtype_injective_of_union Θ N hmono hopen hcov hfg
  have hsurj := _root_.GlobalTheory.h2_twist_exists_of_iUnion_open ε N hmono hopen hcov
  let ι : ∀ n, H2 (twist ε (N n)) →ₗ[O] H2 (twist ε M) := fun n =>
    mapH2 (twist ε (N n)) (twist ε M) (N n).subtype continuous_subtype_val (twist_map ε (N n).subtype)
  let ψ : ∀ n, N n →ₗ[O] H2 (twist ε M) := fun n => ι n ∘ₗ (Θ.θ (N n) (hfg n)).symm.toLinearMap
  have hup : ∀ n m (h : n ≤ m) (y : N n), ψ m (Submodule.inclusion (hmono h) y) = ψ n y := by
    intro n m h y
    let inc := Submodule.inclusion (hmono h)
    have hinc : Continuous inc := continuous_subtype_val.subtype_mk _
    have hι : ∀ w, ι m (mapH2 (twist ε (N n)) (twist ε (N m)) inc hinc (twist_map ε inc) w) = ι n w := by
      intro w
      induction w using Submodule.Quotient.induction_on with
      | H w => rfl
    have hw : (Θ.θ (N m) (hfg m)).symm (inc y) = mapH2 (twist ε (N n)) (twist ε (N m)) inc hinc (twist_map ε inc)
        ((Θ.θ (N n) (hfg n)).symm y) := by
      rw [LinearEquiv.symm_apply_eq, Θ.nat _ _ (hfg n) (hfg m) inc hinc, LinearEquiv.apply_symm_apply]
    show ι m ((Θ.θ (N m) (hfg m)).symm (inc y)) = ι n ((Θ.θ (N n) (hfg n)).symm y)
    rw [hw, hι]
  have hind : ∀ n m (y : M) (hn : y ∈ N n) (hm : y ∈ N m), ψ n ⟨y, hn⟩ = ψ m ⟨y, hm⟩ := by
    intro n m y hn hm
    rw [← hup n (max n m) (le_max_left _ _), ← hup m (max n m) (le_max_right _ _)]
    rfl
  let nn : M → ℕ := fun y => (hcov y).choose
  have hnn : ∀ y, y ∈ N (nn y) := fun y => (hcov y).choose_spec
  let Ψ : M →ₗ[O] H2 (twist ε M) :=
    { toFun := fun y => ψ (nn y) ⟨y, hnn y⟩
      map_add' := fun y y' => by
        have hy : y ∈ N (max (nn y) (nn y')) := hmono (le_max_left _ _) (hnn y)
        have hy' : y' ∈ N (max (nn y) (nn y')) := hmono (le_max_right _ _) (hnn y')
        refine (hind _ _ (y + y') (hnn _) (add_mem hy hy')).trans ?_
        rw [hind _ _ y (hnn y) hy, hind _ _ y' (hnn y') hy', ← map_add (f := _)]
        rfl
      map_smul' := fun c y => by
        refine (hind _ (nn y) (c • y) (hnn _) (Submodule.smul_mem _ c (hnn y))).trans ?_
        rw [RingHom.id_apply, ← map_smul]
        rfl }
  have hΨ : ∀ n (y : N n), Ψ y = ψ n y := fun n y => hind _ n y (hnn _) y.2
  have hΨi : Function.Injective Ψ := by
    set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
    intro y hy
    obtain ⟨n, hn⟩ := hcov y
    have h1 : ψ n ⟨y, hn⟩ = 0 := (hΨ n ⟨y, hn⟩).symm.trans hy
    have h2 : (Θ.θ (N n) (hfg n)).symm ⟨y, hn⟩ = 0 := hinj n (by rw [map_zero]; exact h1)
    have h3 : (⟨y, hn⟩ : N n) = 0 := by simpa using h2
    exact congrArg Subtype.val h3
  have hΨs : Function.Surjective Ψ := by
    intro z
    obtain ⟨n, z', hz'⟩ := hsurj z
    refine ⟨(Θ.θ (N n) (hfg n) z' : M), ?_⟩
    rw [hΨ n]
    show ι n ((Θ.θ (N n) (hfg n)).symm (Θ.θ (N n) (hfg n) z')) = z
    rw [LinearEquiv.symm_apply_apply]
    exact hz'
  refine ⟨(LinearEquiv.ofBijective Ψ ⟨hΨi, hΨs⟩).symm, fun n z => ?_⟩
  rw [LinearEquiv.symm_apply_eq]
  show _ = Ψ _
  rw [hΨ n]
  show _ = ι n ((Θ.θ (N n) (hfg n)).symm (Θ.θ (N n) (hfg n) z))
  rw [LinearEquiv.symm_apply_apply]

section Lat
variable {p : ℕ} {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    [TopologicalSpace O] [TopologicalSpace (FractionRing O)]
    [IsTopologicalAddGroup (FractionRing O)] [ContinuousSMul O (FractionRing O)]

theorem frac_cover (hO : PadicCoeff p O) (y : FractionRing O) :
    ∃ n, y ∈ (1 : Submodule O (FractionRing O)).comap (LinearMap.lsmul O _ ((p : O) ^ n)) := _root_.GlobalTheory.padicCoeff_exists_pow_smul_mem_one hO y

theorem ko_discrete (hF : FracTop O) : DiscreteTopology (KO O) := by
  apply discreteTopology_of_isOpen_singleton_zero
  have h1 : ((1 : Submodule O (FractionRing O)) : Set (FractionRing O)) =
      Set.range (algebraMap O (FractionRing O)) := by
    ext y; simp [Submodule.mem_one]
  have h2 : ({0} : Set (KO O)) =
      (1 : Submodule O (FractionRing O)).mkQ '' ((1 : Submodule O (FractionRing O)) : Set (FractionRing O)) := by
    ext x
    constructor
    · rintro rfl
      exact ⟨0, zero_mem _, map_zero _⟩
    · rintro ⟨y, hy, rfl⟩
      exact (Submodule.Quotient.mk_eq_zero _).2 hy
  rw [h2]
  exact (Submodule.isOpenQuotientMap_mkQ _).isOpenMap _ (h1 ▸ hF.emb.isOpen_range)

end Lat

theorem inv_iso (hT : Formalism.GaloisCohomology.LocalTateDualityK) : InvIso := by
  intro p _ K O _ _ _ _ _ _ _ G _ _ hK hO hF i ε hε
  obtain ⟨Θ⟩ := _root_.GlobalTheory.natInvIso_of_localTateDuality hT hK hO i hε
  haveI : CompactSpace G := i.toHomeomorph.symm.compactSpace
  haveI := ko_discrete hF
  let F : ℕ → Submodule O (FractionRing O) := fun n =>
    (1 : Submodule O (FractionRing O)).comap (LinearMap.lsmul O _ ((p : O) ^ n))
  let T : ℕ → Submodule O (KO O) := fun n => LinearMap.ker (LinearMap.lsmul O (KO O) ((p : O) ^ n))
  have hFm : Monotone F := by
    refine monotone_nat_of_le_succ fun n y hy => ?_
    obtain ⟨a, ha⟩ := Submodule.mem_one.1 hy
    refine Submodule.mem_one.2 ⟨(p : O) * a, ?_⟩
    simp only [LinearMap.lsmul_apply] at ha ⊢
    rw [map_mul, ha, pow_succ, mul_comm _ (p : O), mul_smul, Algebra.smul_def (p : O) (((p : O) ^ n) • y)]
  have hFo : ∀ n, IsOpen (F n : Set (FractionRing O)) := fun n => by
    have : (F n : Set (FractionRing O)) =
        (fun y : FractionRing O => ((p : O) ^ n) • y) ⁻¹' Set.range (algebraMap O (FractionRing O)) := by
      ext y; simp [F, Submodule.mem_one]
    rw [this]
    exact hF.emb.isOpen_range.preimage (continuous_const_smul _)
  have hFfg := _root_.GlobalTheory.isFGTop_comap_lsmul_one hO hF
  have hred : ∀ n, ∀ y ∈ F n, toKO O y ∈ T n := fun n y hy => by
    simp only [T, LinearMap.mem_ker, LinearMap.lsmul_apply, F, Submodule.mem_comap] at hy ⊢
    rw [← map_smul]
    exact (Submodule.Quotient.mk_eq_zero _).2 hy
  have hTm : Monotone T := by
    refine monotone_nat_of_le_succ fun n x hx => ?_
    simp only [T, LinearMap.mem_ker, LinearMap.lsmul_apply] at hx ⊢
    rw [pow_succ, mul_comm, mul_smul, hx, smul_zero]
  have hTo : ∀ n, IsOpen (T n : Set (KO O)) := fun n => isOpen_discrete _
  have hTc : ∀ x, ∃ n, x ∈ T n := fun x => by
    obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective _ x
    obtain ⟨n, hn⟩ := frac_cover hO y
    exact ⟨n, hred n y hn⟩
  have hTsurj : ∀ n, (F n).map (toKO O) = T n := fun n => by
    refine le_antisymm (Submodule.map_le_iff_le_comap.2 fun y hy => hred n y hy) fun x hx => ?_
    obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective _ x
    refine ⟨y, ?_, rfl⟩
    simp only [T, LinearMap.mem_ker, LinearMap.lsmul_apply] at hx
    rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero] at hx
    exact hx
  have hTfg : ∀ n, IsFGTop O (T n) := fun n => by
    refine ⟨?_, inferInstance, inferInstance⟩
    have := (hFfg n).fg
    rw [← hTsurj n, Module.Finite.iff_fg]
    exact Submodule.FG.map _ (Module.Finite.iff_fg.1 this)
  obtain ⟨eF, heF⟩ := colim_equiv Θ F hFm hFo (frac_cover hO) hFfg
  obtain ⟨eT, heT⟩ := colim_equiv Θ T hTm hTo hTc hTfg
  refine ⟨eT, eF, fun z => ?_⟩
  obtain ⟨n, hn⟩ := frac_cover hO (eF z)
  set z' := (Θ.θ (F n) (hFfg n)).symm ⟨eF z, hn⟩
  have hz : mapH2 (twist ε (F n)) (twist ε (FractionRing O)) (F n).subtype continuous_subtype_val
      (twist_map ε (F n).subtype) z' = z := eF.injective (by rw [heF, LinearEquiv.apply_symm_apply])
  let red : F n →ₗ[O] T n := ((toKO O).comp (F n).subtype).codRestrict (T n) fun y => hred n y y.2
  have hredc : Continuous red := (toKO_cont.comp continuous_subtype_val).subtype_mk _
  have e3 : mapH2 (twist ε (FractionRing O)) (twist ε (KO O)) (toKO O) toKO_cont (toKO_equiv ε)
      (mapH2 (twist ε (F n)) (twist ε (FractionRing O)) (F n).subtype continuous_subtype_val (twist_map ε _) z') =
      mapH2 (twist ε (T n)) (twist ε (KO O)) (T n).subtype continuous_subtype_val (twist_map ε _)
        (mapH2 (twist ε (F n)) (twist ε (T n)) red hredc (twist_map ε red) z') := by
    induction z' using Submodule.Quotient.induction_on with
    | H w => rfl
  rw [← hz, e3, heT, Θ.nat _ _ (hFfg n) (hTfg n) red hredc]
  refine Eq.trans ?_ (congrArg (toKO O) (heF n z')).symm
  rfl

end GlobalTheory.InvColim
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.InvIsoOfLocalTateDuality =====
