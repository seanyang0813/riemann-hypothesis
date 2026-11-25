module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.HenselCount
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.CosDens
public import Mathlib.Analysis.InnerProductSpace.Basic
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Mathlib.MeasureTheory.Integral.Bochner.Set
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.FibOfTens
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.TensTop
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HaarFibreUniqueness.Development
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HaarFibreUniqueness.FibExGram
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.FibDis
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.HenselCountHolds
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.TensAll
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension
import Formalism.PeriodIntegrals.VolFromSW
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.DensFibV

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.DensVGlue, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.FibTop, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.MeasureEqOfCos, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HaarFibreUniqueness.GramMapFibreExistence

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.DensVGlue =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.DensVGlue", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.HenselCount\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.CosDens\npublic import Mathlib.Analysis.InnerProductSpace.Basic\npublic import Mathlib.MeasureTheory.Integral.Bochner.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.MeasureTheory.Integral.Bochner.Set\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.VolStabSW
open PI.VolStabS (CosDens HenselCount)

open MeasureTheory Topology Set

theorem densCos_of_filt (hP1 : HenselCount) (hP2 : CosDens) {V X Y : Type} [AddCommGroup V]
    [TopologicalSpace V] [IsTopologicalAddGroup V] [MeasurableSpace V] [BorelSpace V]
    [AddCommGroup X] [TopologicalSpace X] [IsTopologicalAddGroup X] [T2Space X]
    [MeasurableSpace X] [BorelSpace X] (μ : Measure V) (ν : Measure X) [μ.IsAddHaarMeasure]
    [ν.IsAddHaarMeasure] (f : V → Y) (ι : X → Y) (hι : Function.Injective ι) (G : V → X)
    (hG : Continuous G) (hfG : ∀ v, f v = ι (G v)) (y : V) (Λ : ℕ → AddSubgroup V)
    (H : ℕ → AddSubgroup X) (hΛo : ∀ n, IsOpen (Λ n : Set V)) (hΛc : ∀ n, IsCompact (Λ n : Set V))
    (hΛa : Antitone Λ) (hHo : ∀ n, IsOpen (H n : Set X)) (hHc : ∀ n, IsCompact (H n : Set X))
    (hHb : ∀ N ∈ 𝓝 (0 : X), ∃ n, (H n : Set X) ⊆ N) (D : V →+ X) (hD : ∀ n, (Λ n).map D = H n)
    (hyp : ∀ n, ∀ Z ∈ Λ 0, ∀ W ∈ Λ n, G (y + Z + W) - G (y + Z) - D W ∈ H (n + 1)) :
    ∃ g : X → ℝ, Continuous g ∧ ∀ S : Set X, IsCompact S →
      ∫ v in f ⁻¹' (ι '' S), {z | z - y ∈ Λ 0}.indicator (fun _ => (1 : ℝ)) v ∂μ =
        ∫ b in S, g b ∂ν := by
  classical
  have hHa : Antitone H := by
    intro a b hab
    rw [← hD a, ← hD b]
    exact AddSubgroup.map_mono (hΛa hab)
  have hΦ : Continuous (fun Z : V => G (y + Z)) := hG.comp (continuous_const.add continuous_id)
  have hΦm : Measurable (fun Z : V => G (y + Z)) := hΦ.measurable
  have hΛ0m : MeasurableSet (Λ 0 : Set V) := (hΛo 0).measurableSet
  set m : Measure X := (μ.restrict (Λ 0 : Set V)).map (fun Z : V => G (y + Z)) with hm
  haveI : IsFiniteMeasure (μ.restrict (Λ 0 : Set V)) :=
    isFiniteMeasure_restrict.mpr (hΛc 0).measure_lt_top.ne
  haveI : IsFiniteMeasure m := by rw [hm]; infer_instance
  have hmT : ∀ T : Set X, MeasurableSet T → m T = μ {Z | Z ∈ Λ 0 ∧ G (y + Z) ∈ T} := by
    intro T hT
    rw [hm, Measure.map_apply hΦm hT, Measure.restrict_apply' hΛ0m]
    congr 1
    ext Z
    simp [and_comm]
  have hopen : ∀ (h : X) (k : ℕ), IsOpen {z : X | z - h ∈ H k} := fun h k =>
    (hHo k).preimage (continuous_sub_right h)
  have hν0 : ν (H 0 : Set X) ≠ 0 := ((hHo 0).measure_pos ν ⟨0, (H 0).zero_mem⟩).ne'
  have hνt : ν (H 0 : Set X) ≠ ⊤ := (hHc 0).measure_lt_top.ne
  have htrans : ∀ (h : X) (k : ℕ), ν {z : X | z - h ∈ H k} = ν (H k : Set X) := by
    intro h k
    have he : {z : X | z - h ∈ H k} = (fun z => -h + z) ⁻¹' (H k : Set X) := by
      ext z
      simp [sub_eq_neg_add]
    rw [he, measure_preimage_add]
  set κ : ENNReal := μ (Λ 0 : Set V) / ν (H 0 : Set X) with hκ
  have hdens : ∀ k (h : X), h - G y ∈ H 0 →
      m {z | z - h ∈ H k} = κ * ν {z | z - h ∈ H k} := by
    intro k h hh
    have hH := hP1 V X μ ν inferInstance inferInstance Λ H hΛo hΛc hΛa hHo hHc D hD G y hyp k h hh
    rw [hmT _ (hopen h k).measurableSet, htrans, hκ, div_eq_mul_inv, mul_right_comm,
      ← div_eq_mul_inv, ENNReal.eq_div_iff hν0 hνt, mul_comm]
    exact hH
  have hcompl : m {z | z - G y ∈ H 0}ᶜ = 0 := by
    rw [hmT _ (hopen (G y) 0).measurableSet.compl]
    refine (congrArg (fun s : Set V => μ s) (Set.ext fun Z => ?_)).trans measure_empty
    constructor
    · rintro ⟨hZ, hZ'⟩
      have h1 := hyp 0 0 (Λ 0).zero_mem Z hZ
      simp only [add_zero, zero_add] at h1
      have h2 : D Z ∈ H 0 := by
        rw [← hD 0]
        exact AddSubgroup.mem_map_of_mem D hZ
      have hmem : G (y + Z) - G y ∈ H 0 := by
        simpa using (H 0).add_mem (hHa (Nat.zero_le 1) h1) h2
      exact hZ' hmem
    · intro hZ
      exact False.elim hZ
  have hcos := hP2 X ν m inferInstance H hHo hHc hHa hHb (G y) κ hcompl hdens
  set C : Set X := {z | z - G y ∈ H 0} with hC
  have hCo : IsOpen C := hopen (G y) 0
  have hCc : IsClosed C := (hHc 0).isClosed.preimage (continuous_sub_right (G y))
  refine ⟨C.indicator (fun _ => κ.toReal), ?_, ?_⟩
  · refine continuous_indicator ?_ continuousOn_const
    intro a ha
    rw [hCc.frontier_eq, hCo.interior_eq, Set.diff_self] at ha
    simp at ha
  · intro S hS
    have hSm : MeasurableSet S := hS.isClosed.measurableSet
    have hpre : f ⁻¹' (ι '' S) = G ⁻¹' S := by
      ext v
      simp [hfG, hι.mem_set_image]
    have hCV : MeasurableSet {z : V | z - y ∈ Λ 0} :=
      ((hΛo 0).preimage (continuous_sub_right y)).measurableSet
    have key : m S = μ ({z : V | z - y ∈ Λ 0} ∩ G ⁻¹' S) := by
      rw [hmT S hSm, ← measure_preimage_add μ y ({z : V | z - y ∈ Λ 0} ∩ G ⁻¹' S)]
      congr 1
      ext Z
      simp
    rw [hpre, integral_indicator_const _ hCV, integral_indicator_const _ hCo.measurableSet]
    simp only [Measure.real, smul_eq_mul, mul_one]
    rw [Measure.restrict_apply hCV, Measure.restrict_apply hCo.measurableSet, ← key, hcos S hS,
      ENNReal.toReal_mul, Set.inter_comm, mul_comm]

end PI.VolStabSW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.DensVGlue =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.FibTop =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.FibTop", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.FibOfTens\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.TensTop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.PeriodIntegrals.VolFromSW\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.VolStabSW

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes NumberField IsDedekindDomain MeasureTheory PI.VolFromSW Topology
open scoped TensorProduct

theorem tensFacts_of_fib {F E : Type} [Field F] [Field E] [Algebra F E] [FiniteDimensional F E]
    (σ : E →ₐ[F] E) (M : ℕ) (J : Matrix (Fin M) (Fin M) E) (a : ℕ) (R : Type) [CommRing R]
    [Algebra F R] [TopologicalSpace R] [IsTopologicalRing R] [LocallyCompactSpace R] [T2Space R]
    [SecondCountableTopology R] (hσ : ∀ x, σ (σ x) = x) (hJ : ∀ i j, σ (J j i) = J i j)
    (hfree : IsOpen {X : Fin a → Fin M → R ⊗[F] E | LinearIndependent (R ⊗[F] E) X}) :
    TensFacts F E σ M J a R := ⟨inferInstance, inferInstance, inferInstance, isClosed_HermR (R := R) σ a,
  continuous_gramR (R := R) σ J, fun X => gramR_mem (R := R) σ hσ J hJ X, hfree⟩

end PI.VolStabSW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.FibTop =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.MeasureEqOfCos =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.MeasureEqOfCos", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.CosDens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.VolStabSW
open PI.VolStabS (CosDens)

open MeasureTheory Topology Set Filter

section CosMeas

variable {X : Type} [AddCommGroup X] [TopologicalSpace X] [IsTopologicalAddGroup X]
  [MeasurableSpace X] [OpensMeasurableSpace X]


omit [MeasurableSpace X] [OpensMeasurableSpace X] in
def thick (S : Set X) (Λ : AddSubgroup X) : Set X := {x | ∃ s ∈ S, x - s ∈ Λ}

omit [MeasurableSpace X] [OpensMeasurableSpace X] in
theorem isOpen_thick (S : Set X) (Λ : AddSubgroup X) (hΛ : IsOpen (Λ : Set X)) :
    IsOpen (thick S Λ) := by
  have : thick S Λ = ⋃ s ∈ S, (fun x => x - s) ⁻¹' (Λ : Set X) := by
    ext x; simp [thick]
  rw [this]
  exact isOpen_biUnion fun s _ => hΛ.preimage (continuous_id.sub continuous_const)

theorem measure_thick_eq (m1 m2 : Measure X) (Λ : AddSubgroup X) (hΛ : IsOpen (Λ : Set X))
    (h : ∀ y, m1 {z | z - y ∈ Λ} = m2 {z | z - y ∈ Λ}) (S : Set X) (hS : IsCompact S) :
    m1 (thick S Λ) = m2 (thick S Λ) := by
  classical
  have hC : ∀ y, IsOpen {z : X | z - y ∈ Λ} := fun y =>
    hΛ.preimage (continuous_id.sub continuous_const)
  have hfin : ∀ t : Finset X,
      m1 (⋃ s ∈ t, {z | z - s ∈ Λ}) = m2 (⋃ s ∈ t, {z | z - s ∈ Λ}) := by
    intro t
    induction t using Finset.induction_on with
    | empty => simp
    | insert s0 t hs0 ih =>
      rw [Finset.set_biUnion_insert]
      by_cases hex : ∃ s ∈ t, s0 - s ∈ Λ
      · obtain ⟨s, hs, hss⟩ := hex
        have hsub : {z : X | z - s0 ∈ Λ} ⊆ ⋃ s ∈ t, {z | z - s ∈ Λ} := by
          intro z hz
          simp only [Set.mem_iUnion, Set.mem_setOf_eq]
          exact ⟨s, hs, by simpa [sub_add_sub_cancel] using Λ.add_mem hz hss⟩
        rw [Set.union_eq_right.2 hsub, ih]
      · push_neg at hex
        have hdisj : Disjoint {z : X | z - s0 ∈ Λ} (⋃ s ∈ t, {z | z - s ∈ Λ}) := by
          rw [Set.disjoint_left]
          intro z hz hz'
          simp only [Set.mem_iUnion, Set.mem_setOf_eq] at hz'
          obtain ⟨s, hs, hzs⟩ := hz'
          apply hex s hs
          simpa [sub_sub_sub_cancel_left] using Λ.sub_mem hzs hz
        have hmeas : MeasurableSet (⋃ s ∈ t, {z : X | z - s ∈ Λ}) :=
          (isOpen_biUnion fun s _ => hC s).measurableSet
        rw [measure_union hdisj hmeas, measure_union hdisj hmeas, h, ih]
  obtain ⟨t, htS, hcov⟩ := hS.elim_nhds_subcover (fun x => {z : X | z - x ∈ Λ})
    (fun x _ => (hC x).mem_nhds (by simp [Λ.zero_mem]))
  have heq : thick S Λ = ⋃ s ∈ t, {z : X | z - s ∈ Λ} := by
    ext x
    simp only [thick, Set.mem_setOf_eq, Set.mem_iUnion]
    constructor
    · rintro ⟨s, hs, hxs⟩
      obtain ⟨u, hu, hsu⟩ := Set.mem_iUnion₂.1 (hcov hs)
      exact ⟨u, hu, by simpa [sub_add_sub_cancel] using Λ.add_mem hxs hsu⟩
    · rintro ⟨u, hu, hxu⟩
      exact ⟨u, htS u hu, hxu⟩
  rw [heq]
  exact hfin t


omit [MeasurableSpace X] [OpensMeasurableSpace X] in
theorem iInter_thick (S : Set X) (hSc : IsClosed S) (Λ : ℕ → AddSubgroup X)
    (hb : ∀ N ∈ 𝓝 (0 : X), ∃ n, (Λ n : Set X) ⊆ N) : ⋂ n, thick S (Λ n) = S := by
  ext x
  simp only [Set.mem_iInter, thick, Set.mem_setOf_eq]
  constructor
  · intro hx
    by_contra hxS
    have hc : Continuous fun d : X => x - d := continuous_const.sub continuous_id
    have hN : (fun d : X => x - d) ⁻¹' Sᶜ ∈ 𝓝 (0 : X) :=
      hc.continuousAt.preimage_mem_nhds (hSc.isOpen_compl.mem_nhds (by simpa using hxS))
    obtain ⟨n, hn⟩ := hb _ hN
    obtain ⟨s, hs, hxs⟩ := hx n
    have h1 := hn hxs
    simp only [Set.mem_preimage, sub_sub_cancel, Set.mem_compl_iff] at h1
    exact h1 hs
  · intro hx n
    exact ⟨x, hx, by simp [(Λ n).zero_mem]⟩

theorem measure_eq_of_cos (m1 m2 : Measure X) [IsFiniteMeasure m1]
    (Λ : ℕ → AddSubgroup X) (hΛo : ∀ n, IsOpen (Λ n : Set X)) (hanti : Antitone Λ)
    (hb : ∀ N ∈ 𝓝 (0 : X), ∃ n, (Λ n : Set X) ⊆ N)
    (h : ∀ n y, m1 {z | z - y ∈ Λ n} = m2 {z | z - y ∈ Λ n})
    (S : Set X) (hS : IsCompact S) (hSc : IsClosed S) : m1 S = m2 S := by
  have hmono : Antitone fun n => thick S (Λ n) := by
    intro i j hij x hx
    obtain ⟨s, hs, hxs⟩ := hx
    exact ⟨s, hs, hanti hij hxs⟩
  have hmeas : ∀ n, MeasurableSet (thick S (Λ n)) := fun n =>
    (isOpen_thick S (Λ n) (hΛo n)).measurableSet
  have heq : ∀ n, m1 (thick S (Λ n)) = m2 (thick S (Λ n)) := fun n =>
    measure_thick_eq m1 m2 (Λ n) (hΛo n) (h n) S hS
  rw [← iInter_thick S hSc Λ hb,
    hmono.measure_iInter (fun n => (hmeas n).nullMeasurableSet) ⟨0, measure_ne_top _ _⟩,
    hmono.measure_iInter (fun n => (hmeas n).nullMeasurableSet)
      ⟨0, by rw [← heq 0]; exact measure_ne_top _ _⟩]
  simp_rw [heq]

end CosMeas

theorem cosDens_holds : CosDens := by
  intro X _ _ _ _ _ _ ν m _ hν H hHo hHc hanti hb c0 κ hm0 hcos S hS
  have hC : ∀ (n : ℕ) (y : X), IsOpen {z : X | z - y ∈ H n} := fun n y =>
    (hHo n).preimage (continuous_id.sub continuous_const)
  have hC0 : MeasurableSet {z : X | z - c0 ∈ H 0} := (hC 0 c0).measurableSet
  have hback : ∀ n y z, y - c0 ∉ H 0 → z - y ∈ H n → z - c0 ∉ H 0 := by
    intro n y z hy hz hz0
    apply hy
    have hz' : z - y ∈ H 0 := hanti (Nat.zero_le n) hz
    simpa [sub_sub_sub_cancel_left] using (H 0).sub_mem hz0 hz'
  have key := measure_eq_of_cos m (κ • ν.restrict {z : X | z - c0 ∈ H 0}) H hHo hanti hb ?_
    S hS hS.isClosed
  · rw [key, Measure.smul_apply, Measure.restrict_apply' hC0, smul_eq_mul]
  · intro n y
    rw [Measure.smul_apply, Measure.restrict_apply' hC0, smul_eq_mul]
    by_cases hy : y - c0 ∈ H 0
    · have hsub : {z : X | z - y ∈ H n} ⊆ {z : X | z - c0 ∈ H 0} := by
        intro z hz
        have hz0 : z - y ∈ H 0 := hanti (Nat.zero_le n) hz
        simpa [sub_add_sub_cancel] using (H 0).add_mem hz0 hy
      rw [Set.inter_eq_left.2 hsub]
      exact hcos n y hy
    · have hdisj : {z : X | z - y ∈ H n} ∩ {z : X | z - c0 ∈ H 0} = ∅ := by
        ext z
        simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false,
          not_and]
        exact hback n y z hy
      rw [hdisj, measure_empty, mul_zero]
      exact measure_mono_null (fun z hz => hback n y z hy hz) hm0

end PI.VolStabSW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.MeasureEqOfCos =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HaarFibreUniqueness.GramMapFibreExistence =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HaarFibreUniqueness.GramMapFibreExistence", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HaarFibreUniqueness.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.FibOfTens\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HaarFibreUniqueness.FibExGram\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.DensFibV\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.DensVGlue\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.FibDis\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.FibTop\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.HenselCountHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.MeasureEqOfCos\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.TensAll\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.PosNear\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.OmFibreUniq.W

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes MeasureTheory NumberField IsDedekindDomain Topology
open PI.OmFibreUniq PI.VolStabSW PI.VolStabSW.TensAllW PI.VolStabSW.OmFibG
open scoped TensorProduct

theorem densAll_gen {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (σ : E →ₐ[F] E) (hσ : ∀ x, σ (σ x) = x) {n : ℕ} (J : Matrix (Fin n) (Fin n) E)
    (hJ : ∀ i j, σ (J j i) = J i j) (hdet : J.det ≠ 0) (v : HeightOneSpectrum (𝓞 F)) (a : ℕ)
    (μ : Measure (Fin a → Fin n → Fv F v ⊗[F] E)) (ν : Measure (HermR (Fv F v) σ a))
    (hμ : μ.IsAddHaarMeasure) (hν : ν.IsAddHaarMeasure) :
    DensAll μ (gramR (Fv F v) σ J) Subtype.val ν
      {X : Fin a → Fin n → Fv F v ⊗[F] E | LinearIndependent (Fv F v ⊗[F] E) X} := by
  have : FiniteDimensional F E := Module.Finite.of_restrictScalars_finite ℚ F E
  have := secondCountable_Fv F v
  have := locallyCompact_Fv F v
  have hfree := isOpen_linIndep (Module.finBasis F E) (Fv F v) (isOpen_units_Fv F v) (lip_field _)
    (a := a) (M := n)
  obtain ⟨t1, t2, t3, t4, t5, _t6, t7⟩ := tensFacts_of_fib σ n J a (Fv F v) hσ hJ hfree
  have := hμ
  have := hν
  have : BorelSpace (Fv F v ⊗[F] E) := ⟨rfl⟩
  have : BorelSpace (HermR (Fv F v) σ a) := ⟨rfl⟩
  have : LocallyCompactSpace (Matrix (Fin a) (Fin a) (Fv F v ⊗[F] E)) :=
    inferInstanceAs (LocallyCompactSpace (Fin a → Fin a → Fv F v ⊗[F] E))
  have : T2Space (Matrix (Fin a) (Fin a) (Fv F v ⊗[F] E)) :=
    inferInstanceAs (T2Space (Fin a → Fin a → Fv F v ⊗[F] E))
  have : LocallyCompactSpace (HermR (Fv F v) σ a) :=
    t4.isClosedEmbedding_subtypeVal.locallyCompactSpace
  have : IsTopologicalAddGroup (Fv F v ⊗[F] E) :=
    IsModuleTopology.topologicalAddGroup (Fv F v) (Fv F v ⊗[F] E)
  have hNA : HasCOSub (Fin a → Fin n → Fv F v ⊗[F] E) := by
    obtain ⟨π, h0, hπ⟩ := exists_pow_tendsto_zero_Fv v
    exact hasCOSub_of_lat (latSub (Module.finBasis F E) v a n)
      (PI.VolStabS.PositiveNearLattice.isClopen_latV (Module.finBasis F E) v a n).isOpen
      (PI.VolStabS.PositiveNearLattice.isCompact_latV (Module.finBasis F E) v a n) π h0 hπ
  have hC : DensCosB (scaledB (Fv F v) (latSub (Module.finBasis F E) v a n)) μ
      (gramR (Fv F v) σ J) Subtype.val ν
      {X : Fin a → Fin n → Fv F v ⊗[F] E | LinearIndependent (Fv F v ⊗[F] E) X} := by
    intro x hx
    obtain ⟨N, hN, hd⟩ := gramFilt_all σ hσ n J hJ hdet a v _ (Module.finBasis F E) x hx
    refine ⟨N, hN, fun y hy Λ0 hB _ _ hsub => ?_⟩
    obtain ⟨Λ, H, D, h0, hΛo, hΛc, hΛa, hHo, hHc, hHb, hD, hyp⟩ := hd y hy Λ0 hB hsub
    subst h0
    exact densCos_of_filt henselCount_holds cosDens_holds μ ν (gramR (Fv F v) σ J) Subtype.val
      Subtype.val_injective (gramH (Fv F v) σ hσ J hJ) (Continuous.subtype_mk t5 _)
      (fun _ => rfl) y Λ H hΛo hΛc hΛa hHo hHc hHb D hD hyp
  have hLC := densLC_of_cosB _ _ (isCOBasis_latSub (Module.finBasis F E) v a n) hC
  exact (densAll_iff _ _ _ _ _).2 (densApprox_lc μ _ _ ν _ t7 hNA hLC)

theorem gram_map_fibre_existence : FibEx := by
  intro F E _ _ _ _ _ σ n J v a hCM hJ μ ν hμ hν
  have : FiniteDimensional F E := Module.finite_of_finrank_pos (by rw [hCM.2.2.1]; norm_num)
  have hσ : ∀ x, σ (σ x) = x := sigma_invol σ hCM.2.2.2
  have := secondCountable_Fv F v
  have := locallyCompact_Fv F v
  have hfree := isOpen_linIndep (Module.finBasis F E) (Fv F v) (isOpen_units_Fv F v) (lip_field _)
    (a := a) (M := n)
  exact fib_of_tens DiscreteGroups.fibOfDens_holds (tensFacts_of_fib σ n J a (Fv F v) hσ hJ.1 hfree) μ ν
    hμ hν (densAll_gen σ hσ J hJ.1 hJ.2 v a μ ν hμ hν)

end PI.OmFibreUniq.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HaarFibreUniqueness.GramMapFibreExistence =====
