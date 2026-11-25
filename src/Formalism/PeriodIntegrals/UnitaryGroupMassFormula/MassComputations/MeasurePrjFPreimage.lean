module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.UnfoldAbs
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.MassDataInst
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.BcTensMapInclR
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SemidirectVolume.EqZeroOfMemNbhdA
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SemidirectVolume.LocallyCompactAdelicUnitary
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.TopoAF
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.AdeleLC
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.InclusionInjective

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.UnfAbs, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.MeasurePrjFPreimage

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.UnfAbs =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.UnfAbs", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.UnfoldAbs\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.MassDataInst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Set
open scoped ENNReal Pointwise

namespace MassDataMassesW.Abs

variable {G Gf : Type} [Group G] [MeasurableSpace G] [MeasurableMul G]
  [Group Gf] [MeasurableSpace Gf] [MeasurableMul Gf]

theorem meas_eq_lint_cnt {Γ : Subgroup G} [Countable Γ] {μ : Measure G} [μ.IsMulLeftInvariant]
    {𝓕 : Set G} (h : IsFundamentalDomain Γ 𝓕 μ) {A : Set G} (hA : MeasurableSet A) :
    μ A = ∫⁻ g in 𝓕, PI.VolStabS.cntN Γ A g ∂μ := by
  rw [← lintegral_indicator_one hA, h.lintegral_eq_tsum'']
  unfold PI.VolStabS.cntN
  rw [lintegral_tsum]
  · rfl
  · intro γ
    exact ((measurable_const.indicator hA).comp (measurable_const_mul _)).aemeasurable

theorem meas_smul_set {s : Set Gf} (hs : MeasurableSet s) (x : Gf) : MeasurableSet (x • s) := by
  have : x • s = (fun y => x⁻¹ * y) ⁻¹' s := by
    ext y
    simp [mem_smul_set_iff_inv_smul_mem]
  rw [this]
  exact measurable_const_mul _ hs

theorem unfold_mass {Γ : Subgroup G} [Countable Γ] {μ : Measure G} [μ.IsMulLeftInvariant]
    {𝓕 : Set G} (h𝓕 : IsFundamentalDomain Γ 𝓕 μ)
    (p : G →* Gf) (hp : Measurable p) (Γf U : Subgroup Gf)
    (himg : Γ.map p = Γf) (hinj : ∀ γ ∈ Γ, p γ = 1 → γ = 1)
    (hU : MeasurableSet (U : Set Gf)) (hfin : Formalism.L2.SG.TypedSets.MassFinite Γf U)
    (c0 : ℝ≥0∞) (hc0 : ∀ x : Gf, μ (p ⁻¹' (x • (U : Set Gf))) = c0) :
    μ 𝓕 = c0 * ENNReal.ofReal (Formalism.L2.SG.TypedSets.massCl Γf U) := by
  classical
  obtain ⟨hC, hS⟩ := hfin
  haveI := Fintype.ofFinite (DoubleCoset.Quotient (Γf : Set Gf) (U : Set Gf))

  haveI : Countable Γf := by
    have hsurj : Function.Surjective (fun γ : Γ => (⟨p γ, himg ▸ Subgroup.mem_map_of_mem p γ.2⟩ : Γf)) := by
      rintro ⟨y, hy⟩
      rw [← himg] at hy
      obtain ⟨γ, hγ, rfl⟩ := Subgroup.mem_map.1 hy
      exact ⟨⟨γ, hγ⟩, rfl⟩
    exact hsurj.countable
  let cl : Gf → DoubleCoset.Quotient (Γf : Set Gf) (U : Set Gf) := DoubleCoset.mk Γf U
  let xo : DoubleCoset.Quotient (Γf : Set Gf) (U : Set Gf) → Gf := fun c => Quotient.out c
  let Nc : DoubleCoset.Quotient (Γf : Set Gf) (U : Set Gf) → ℕ := fun c =>
    Nat.card ↥(Γf ⊓ U.map (MulAut.conj (xo c)).toMonoidHom)

  have hcl : ∀ c, cl ⁻¹' {c} = ⋃ δ : Γf, (δ : Gf) • (xo c • (U : Set Gf)) := by
    intro c
    ext y
    simp only [mem_preimage, mem_singleton_iff, mem_iUnion]
    constructor
    · intro hy
      have h1 := (@DoubleCoset.eq _ _ Γf U (xo c) y).1 (by
        show DoubleCoset.mk Γf U (Quotient.out c) = DoubleCoset.mk Γf U y
        rw [DoubleCoset.out_eq']; exact hy.symm)
      obtain ⟨h, hh, k, hk, rfl⟩ := h1
      refine ⟨⟨h, hh⟩, ?_⟩
      rw [smul_smul]
      exact ⟨k, hk, by simp [smul_eq_mul]⟩
    · rintro ⟨δ, k, hk, hy⟩
      obtain ⟨k', hk', rfl⟩ := hk
      simp only [smul_eq_mul] at hy
      show DoubleCoset.mk Γf U y = c
      rw [← DoubleCoset.out_eq' c, DoubleCoset.eq]
      exact ⟨δ⁻¹, Γf.inv_mem δ.2, k'⁻¹, U.inv_mem hk', by rw [← hy]; simp [xo, mul_assoc]⟩
  have hDm : ∀ c, MeasurableSet (cl ⁻¹' {c}) := by
    intro c
    rw [hcl c]
    exact MeasurableSet.iUnion fun δ => meas_smul_set (meas_smul_set hU _) _

  have hcnt : ∀ c g, PI.VolStabS.cntN Γ (p ⁻¹' (xo c • (U : Set Gf))) g =
      (cl ⁻¹' {c}).indicator (fun _ => (Nc c : ℝ≥0∞)) (p g) := by
    intro c g
    unfold PI.VolStabS.cntN
    by_cases hg : cl (p g) = c
    · rw [indicator_of_mem (show p g ∈ cl ⁻¹' {c} from hg)]
      have h1 := (@DoubleCoset.eq _ _ Γf U (xo c) (p g)).1 (by
        show DoubleCoset.mk Γf U (Quotient.out c) = DoubleCoset.mk Γf U (p g)
        rw [DoubleCoset.out_eq']; exact hg.symm)
      obtain ⟨h, hh, k, hk, hpg⟩ := h1
      rw [← himg] at hh
      obtain ⟨γ0, hγ0, rfl⟩ := Subgroup.mem_map.1 hh
      let V : Subgroup Gf := U.map (MulAut.conj (xo c)).toMonoidHom
      have hiff : ∀ γ : Γ, ((γ : G) * g ∈ p ⁻¹' (xo c • (U : Set Gf))) ↔ p ((γ : G) * γ0) ∈ V := by
        intro γ
        simp only [mem_preimage, map_mul, hpg]
        rw [mem_smul_set_iff_inv_smul_mem, smul_eq_mul]
        simp only [V, Subgroup.mem_map, MulEquiv.coe_toMonoidHom, MulAut.conj_apply, SetLike.mem_coe]
        constructor
        · intro hm
          refine ⟨(xo c)⁻¹ * (p γ * p γ0) * xo c, ?_, by group⟩
          have := U.mul_mem hm (U.inv_mem hk)
          convert this using 1
          group
        · rintro ⟨v, hv, hv'⟩
          have e : (xo c)⁻¹ * (p γ * (p γ0 * xo c * k)) = v * k := by
            calc _ = (xo c)⁻¹ * ((p γ * p γ0) * xo c * k) := by group
              _ = (xo c)⁻¹ * ((xo c * v * (xo c)⁻¹) * xo c * k) := by rw [hv']
              _ = v * k := by group
          rw [e]
          exact U.mul_mem hv hk
      have hsum1 : ∑' γ : Γ, (p ⁻¹' (xo c • (U : Set Gf))).indicator (fun _ => (1 : ℝ≥0∞)) ((γ : G) * g) =
          ∑' γ : Γ, {γ : Γ | p (γ : G) ∈ V}.indicator (fun _ => (1 : ℝ≥0∞)) (γ * ⟨γ0, hγ0⟩) := by
        refine tsum_congr fun γ => ?_
        by_cases hm : (γ : G) * g ∈ p ⁻¹' (xo c • (U : Set Gf))
        · rw [indicator_of_mem hm, indicator_of_mem]
          exact (hiff γ).1 hm
        · rw [indicator_of_notMem hm, indicator_of_notMem]
          exact fun h' => hm ((hiff γ).2 h')
      have hsh : ∑' γ : Γ, {γ : Γ | p (γ : G) ∈ V}.indicator (fun _ => (1 : ℝ≥0∞)) (γ * ⟨γ0, hγ0⟩) =
          ∑' γ : Γ, {γ : Γ | p (γ : G) ∈ V}.indicator (fun _ => (1 : ℝ≥0∞)) γ :=
        (Equiv.mulRight (⟨γ0, hγ0⟩ : Γ)).tsum_eq
          (fun γ => {γ : Γ | p (γ : G) ∈ V}.indicator (fun _ => (1 : ℝ≥0∞)) γ)
      rw [hsum1, hsh]
      rw [← tsum_subtype, ENNReal.tsum_one]
      let φ : {γ : Γ | p (γ : G) ∈ V} → ↥(Γf ⊓ V) := fun t =>
        ⟨p ((t : Γ) : G), Subgroup.mem_inf.2 ⟨by rw [← himg]; exact Subgroup.mem_map_of_mem p (t : Γ).2, t.2⟩⟩
      have hφi : Function.Injective φ := by
        intro t t' htt
        have e1 : p ((t : Γ) : G) = p ((t' : Γ) : G) := congrArg Subtype.val htt
        have e2 : ((t : Γ) : G)⁻¹ * ((t' : Γ) : G) = 1 := by
          apply hinj _ (Γ.mul_mem (Γ.inv_mem (t : Γ).2) (t' : Γ).2)
          rw [map_mul, map_inv, e1, inv_mul_cancel]
        exact Subtype.ext (Subtype.ext (inv_mul_eq_one.1 e2))
      have hφs : Function.Surjective φ := by
        rintro ⟨y, hy⟩
        obtain ⟨hy1, hy2⟩ := Subgroup.mem_inf.1 hy
        rw [← himg] at hy1
        obtain ⟨γ, hγ, rfl⟩ := Subgroup.mem_map.1 hy1
        exact ⟨⟨⟨γ, hγ⟩, hy2⟩, rfl⟩
      haveI : Finite ↥(Γf ⊓ V) := hS (xo c)
      haveI : Finite {γ : Γ | p (γ : G) ∈ V} := Finite.of_injective φ hφi
      have hT : Nat.card {γ : Γ | p (γ : G) ∈ V} = Nc c :=
        Nat.card_congr (Equiv.ofBijective φ ⟨hφi, hφs⟩)
      rw [ENat.card_eq_coe_natCard, hT]
      simp
    · rw [indicator_of_notMem (show p g ∉ cl ⁻¹' {c} from hg)]
      refine ENNReal.tsum_eq_zero.2 fun γ => indicator_of_notMem (fun hm => hg ?_) _
      rw [mem_preimage, mem_smul_set] at hm
      obtain ⟨k, hk, hk'⟩ := hm
      show DoubleCoset.mk Γf U (p g) = c
      rw [← DoubleCoset.out_eq' c, DoubleCoset.eq]
      refine ⟨p γ, by rw [← himg]; exact Subgroup.mem_map_of_mem p γ.2, k⁻¹, U.inv_mem hk, ?_⟩
      rw [map_mul, smul_eq_mul] at hk'
      rw [← hk']
      simp [xo]

  have hpiece : ∀ c, (Nc c : ℝ≥0∞) * μ (𝓕 ∩ p ⁻¹' (cl ⁻¹' {c})) = c0 := by
    intro c
    rw [← hc0 (xo c), meas_eq_lint_cnt h𝓕 (hp (meas_smul_set hU _))]
    simp_rw [hcnt c]
    have : (fun g => (cl ⁻¹' {c}).indicator (fun _ => (Nc c : ℝ≥0∞)) (p g)) =
        (p ⁻¹' (cl ⁻¹' {c})).indicator (fun _ => (Nc c : ℝ≥0∞)) := by
      ext g; simp [indicator]
    rw [this, lintegral_indicator_const (hp (hDm c)), Measure.restrict_apply (hp (hDm c)), inter_comm]
  have hNpos : ∀ c, 0 < Nc c := by
    intro c
    haveI := hS (xo c)
    haveI : Nonempty ↥(Γf ⊓ U.map (MulAut.conj (xo c)).toMonoidHom) := ⟨1⟩
    exact Nat.card_pos

  have hsum : μ 𝓕 = ∑ c, μ (𝓕 ∩ p ⁻¹' (cl ⁻¹' {c})) := by
    have e1 : μ 𝓕 = μ.restrict 𝓕 univ := by rw [Measure.restrict_apply_univ]
    have e2 : (univ : Set G) = ⋃ c ∈ (Finset.univ : Finset (DoubleCoset.Quotient (Γf : Set Gf) (U : Set Gf))),
        p ⁻¹' (cl ⁻¹' {c}) := by
      ext g; simp
    rw [e1, e2, measure_biUnion_finset]
    · refine Finset.sum_congr rfl fun c _ => ?_
      rw [Measure.restrict_apply (hp (hDm c)), inter_comm]
    · intro c _ c' _ hne
      exact Set.disjoint_left.2 fun g h1 h2 => hne (h1.symm.trans h2)
    · intro c _
      exact hp (hDm c)
  rw [hsum]
  have hm : Formalism.L2.SG.TypedSets.massCl Γf U = ∑ c, ((Nc c : ℕ) : ℝ)⁻¹ := by
    unfold Formalism.L2.SG.TypedSets.massCl
    rw [finsum_eq_sum_of_fintype]
  rw [hm, ENNReal.ofReal_sum_of_nonneg (fun c _ => by positivity), Finset.mul_sum]
  refine Finset.sum_congr rfl fun c _ => ?_
  have hN0 : (Nc c : ℝ≥0∞) ≠ 0 := by exact_mod_cast (hNpos c).ne'
  rw [ENNReal.ofReal_inv_of_pos (by exact_mod_cast hNpos c), ENNReal.ofReal_natCast, ← div_eq_mul_inv,
    ENNReal.eq_div_iff hN0 (ENNReal.natCast_ne_top _)]
  exact hpiece c

end MassDataMassesW.Abs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.UnfAbs =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.MeasurePrjFPreimage =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.MeasurePrjFPreimage", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.MassDataInst\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.AdeleLC\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.BcTensMapInclR\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.UnfAbs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SemidirectVolume.EqZeroOfMemNbhdA\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SemidirectVolume.LocallyCompactAdelicUnitary\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.TopoAF\nimport Formalism.SatakeDualWeyl.AdelicIwasawaHecke.InclusionInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory NumberField IsDedekindDomain Set
open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures
open scoped TensorProduct ENNReal Pointwise Matrix

namespace MassDataMassesW

section Gen

variable {F E : Type} [Field F] [NumberField F] [Field E] [Algebra F E] (σ : E →ₐ[F] E) {n : ℕ}
  (J : Matrix (Fin n) (Fin n) E) {r : ℕ} (P : Frame E n r)

def prjF : Hsub (AF F) σ J P →* Hsub (Af F) σ J P :=
  ((haMap σ J (sndA F)).comp (Hsub (AF F) σ J P).subtype).codRestrict (Hsub (Af F) σ J P)
    (fun g => haMap_stabT σ J (sndA F) (tupH P) g g.2)

theorem prjF_val (g : Hsub (AF F) σ J P) :
    ((prjF σ J P g : Hsub (Af F) σ J P) : HA (Af F) σ J) = (splitA σ J (g : HA (AF F) σ J)).2 := rfl

theorem nonempty_hos (F : Type) [Field F] [NumberField F] : Nonempty (HeightOneSpectrum (𝓞 F)) := by
  obtain ⟨p, hp0, hp⟩ :=
    Ring.not_isField_iff_exists_prime.mp (NumberField.RingOfIntegers.not_isField F)
  exact ⟨⟨p, hp, hp0⟩⟩

theorem nontrivial_Af (F : Type) [Field F] [NumberField F] : Nontrivial (Af F) := by
  first
  | (obtain ⟨v⟩ := nonempty_hos F
     refine ⟨⟨0, 1, fun h => ?_⟩⟩
     have h2 : Subtype.val (0 : Af F) v = Subtype.val (1 : Af F) v := by rw [h]
     have h0 : Subtype.val (0 : Af F) v = 0 := by first | rfl
     have h1 : Subtype.val (1 : Af F) v = 1 := by first | rfl
     exact zero_ne_one (h0.symm.trans (h2.trans h1)))

theorem inj_Af (F : Type) [Field F] [NumberField F] : Function.Injective (algebraMap F (Af F)) := by
  haveI := nontrivial_Af F
  exact (algebraMap F (Af F)).injective

theorem inclR_injective (R : Type) [CommRing R] [Algebra F R] (h : Function.Injective (algebraMap F R)) :
    Function.Injective (inclR (F := F) (E := E) R) := by
  intro x y hxy
  have key : ∀ e : E, inclR (F := F) (E := E) R e =
      ((Algebra.linearMap F R).rTensor E) ((TensorProduct.lid F E).symm e) := by
    intro e
    simp [inclR, Algebra.TensorProduct.includeRight_apply]
  have hinj : Function.Injective ((Algebra.linearMap F R).rTensor E) :=
    Module.Flat.rTensor_preserves_injective_linearMap (M := E) _ (by exact h)
  rw [key, key] at hxy
  exact (TensorProduct.lid F E).symm.injective (hinj hxy)

private theorem actTup_bc (R : Type) [CommRing R] [Algebra F R] (u : GL (Fin n) E) {a : ℕ}
    (X : Fin a → Fin n → E) :
    actTup R (Formalism.UG.bc (inclR (F := F) (E := E) R) u) (ratTup (F := F) R X) =
      ratTup (F := F) R (fun b => (u : Matrix (Fin n) (Fin n) E).mulVec (X b)) := by
  funext b i
  first
  | simp [actTup, ratTup, Formalism.UG.bc, Matrix.mulVec, dotProduct, map_sum]

theorem prjF_map_ratOf :
    (ratOf (K := Hsub (AF F) σ J P)).map (prjF σ J P) =
      (HFinIn (Af F) σ J : Subgroup (HA (Af F) σ J)).subgroupOf (Hsub (Af F) σ J P) := by
  ext δ
  constructor
  · intro hδ
    obtain ⟨γ, hγ, rfl⟩ := Subgroup.mem_map.mp hδ
    have hmem : HA.mat (AF F) σ J (γ : HA (AF F) σ J) ∈ HFin (AF F) σ J := hγ
    obtain ⟨u, hu, hγu⟩ := Subgroup.mem_map.mp hmem
    show HA.mat (Af F) σ J (prjF σ J P γ : HA (Af F) σ J) ∈ HFin (Af F) σ J
    refine Subgroup.mem_map.mpr ⟨u, hu, ?_⟩
    show Formalism.UG.bc (inclR (F := F) (E := E) (Af F)) u =
      Formalism.UG.bc (tensMap (E := E) (sndA F)) (HA.mat (AF F) σ J (γ : HA (AF F) σ J))
    rw [← hγu]
    ext i j
    simp [Formalism.UG.bc, tensMap_inclR]
  · intro hδ
    have hmem : HA.mat (Af F) σ J (δ : HA (Af F) σ J) ∈ HFin (Af F) σ J := hδ
    obtain ⟨u, hu, hδu⟩ := Subgroup.mem_map.mp hmem
    have hcomm : (inclR (F := F) (E := E) (AF F)).comp (σ : E →+* E) =
        (sigR (AF F) σ).comp (inclR (F := F) (E := E) (AF F)) := by
      ext e
      simp [inclR, sigR]
    have hHR : Formalism.UG.bc (inclR (F := F) (E := E) (AF F)) u ∈ HR (AF F) σ J :=
      Formalism.UG.P.bc_mem _ _ _ hcomm J u hu
    let g : HA (AF F) σ J := ⟨_, hHR⟩
    have hX : (fun b => (u : Matrix (Fin n) (Fin n) E).mulVec (tupH P b)) = tupH P := by
      have hst : actTup (Af F) (HA.mat (Af F) σ J (δ : HA (Af F) σ J))
          (ratTup (F := F) (Af F) (tupH P)) = ratTup (F := F) (Af F) (tupH P) := δ.2
      rw [← hδu, actTup_bc] at hst
      funext b i
      have := congrFun (congrFun hst b) i
      first
      | exact inclR_injective (E := E) (Af F) (inj_Af F) this
    have hg : g ∈ Hsub (AF F) σ J P := by
      show actTup (AF F) (Formalism.UG.bc (inclR (F := F) (E := E) (AF F)) u)
        (ratTup (F := F) (AF F) (tupH P)) = ratTup (F := F) (AF F) (tupH P)
      rw [actTup_bc, hX]
    refine Subgroup.mem_map.mpr ⟨⟨g, hg⟩, ?_, ?_⟩
    · show HA.mat (AF F) σ J g ∈ HFin (AF F) σ J
      exact Subgroup.mem_map.mpr ⟨u, hu, rfl⟩
    · apply Subtype.ext
      apply Subtype.ext
      show Formalism.UG.bc (tensMap (E := E) (sndA F)) (Formalism.UG.bc (inclR (F := F) (E := E) (AF F)) u) =
        HA.mat (Af F) σ J (δ : HA (Af F) σ J)
      rw [← hδu]
      ext i j
      simp [Formalism.UG.bc, tensMap_inclR]

theorem prjF_inj (γ : Hsub (AF F) σ J P) (hγ : γ ∈ ratOf (K := Hsub (AF F) σ J P))
    (h1 : prjF σ J P γ = 1) : γ = 1 := by
  have hmem : HA.mat (AF F) σ J (γ : HA (AF F) σ J) ∈ HFin (AF F) σ J := hγ
  obtain ⟨u, -, hγu⟩ := Subgroup.mem_map.mp hmem
  have hh : Formalism.UG.bc (tensMap (E := E) (sndA F)) (HA.mat (AF F) σ J (γ : HA (AF F) σ J)) = 1 := by
    have := congrArg (fun x : Hsub (Af F) σ J P => HA.mat (Af F) σ J (x : HA (Af F) σ J)) h1
    exact this
  have hcomp : Formalism.UG.bc (inclR (F := F) (E := E) (Af F)) u =
      Formalism.UG.bc (tensMap (E := E) (sndA F)) (Formalism.UG.bc (inclR (F := F) (E := E) (AF F)) u) := by
    ext i j
    simp [Formalism.UG.bc, tensMap_inclR]
  have hb : Formalism.UG.bc (inclR (F := F) (E := E) (Af F)) u = 1 := by
    rw [hcomp, hγu]
    exact hh
  have hu1 : u = 1 := by
    ext i j
    apply inclR_injective (E := E) (Af F) (inj_Af F)
    have := congrArg (fun g : GL (Fin n) (Af F ⊗[F] E) => (Units.val g) i j) hb
    simpa [Formalism.UG.bc, Matrix.one_apply, apply_ite] using this
  apply Subtype.ext
  apply Subtype.ext
  show HA.mat (AF F) σ J (γ : HA (AF F) σ J) = 1
  rw [← hγu, hu1, map_one]

variable [FiniteDimensional F E]

theorem continuous_prjF : Continuous (prjF σ J P) := by
  have hs : Continuous (sndA F) := by
    first
    | exact continuous_snd
  have hm := continuous_haMap (σ := σ) (J := J) (sndA F) hs
  exact continuous_induced_rng.2 (hm.comp continuous_subtype_val)

theorem continuous_splitA_u : Continuous (splitA σ J) := by
  have hs : Continuous (sndA F) := by
    first
    | exact continuous_snd
  have hf : Continuous (fstA F) := by
    first
    | exact continuous_fst
  have h1 := continuous_haMap (σ := σ) (J := J) (fstA F) hf
  have h2 := continuous_haMap (σ := σ) (J := J) (sndA F) hs
  first
  | exact h1.prodMk h2

theorem isClosed_stabT' (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R] [IsTopologicalRing R]
    [LocallyCompactSpace R] [T2Space R] {a : ℕ} (X0 : Fin a → Fin n → E) :
    IsClosed ((stabT R σ J X0 : Subgroup (HA R σ J)) : Set (HA R σ J)) := by
  have hmat : Continuous (fun g : HA R σ J => (HA.mat R σ J g : Matrix (Fin n) (Fin n) (R ⊗[F] E))) :=
    Units.continuous_val.comp continuous_subtype_val
  have hc : Continuous (fun g : HA R σ J => actTup R (HA.mat R σ J g) (ratTup (F := F) R X0)) := by
    unfold actTup
    refine continuous_pi fun b => ?_
    refine continuous_pi fun i => ?_
    first
    | simp only [Matrix.mulVec, dotProduct]
    refine continuous_finsetSum _ fun j _ => ?_
    exact ((continuous_apply j).comp ((continuous_apply i).comp hmat)).mul continuous_const
  have hset : ((stabT R σ J X0 : Subgroup (HA R σ J)) : Set (HA R σ J)) =
      {g | actTup R (HA.mat R σ J g) (ratTup (F := F) R X0) = ratTup (F := F) R X0} := by
    ext g
    exact Iff.rfl
  rw [hset]
  exact isClosed_eq hc continuous_const

theorem measure_prjF_preimage (M : MeasW σ J P) (hM : M.IsTextNorm) (S : Set (Hsub (Af F) σ J P))
    (hS : MeasurableSet S) : M.μH (prjF σ J P ⁻¹' S) = M.μHinf univ * M.μHf S := by
  have hcl : IsClosed ((Hsub (Af F) σ J P : Subgroup (HA (Af F) σ J)) : Set (HA (Af F) σ J)) :=
    isClosed_stabT' σ J (Af F) (tupH P)
  have hHf : MeasurableSet ((Hsub (Af F) σ J P : Subgroup (HA (Af F) σ J)) : Set (HA (Af F) σ J)) :=
    hcl.measurableSet
  haveI : SecondCountableTopology (HA (Af F) σ J) := PI.VolStabSW.TopoAF.secondCountable_HA_of (Af F) σ J
  haveI : LocallyCompactSpace (Hsub (Af F) σ J P) := hcl.isClosedEmbedding_subtypeVal.locallyCompactSpace
  haveI := hM.2.2.1
  haveI : SecondCountableTopology (Hsub (Af F) σ J P) :=
    TopologicalSpace.Subtype.secondCountableTopology _
  haveI : SigmaCompactSpace (Hsub (Af F) σ J P) := inferInstance
  haveI : SigmaFinite M.μHf := inferInstance
  have hmeas : Measurable (splitA σ J) := (continuous_splitA_u σ J).measurable
  let T : Set (HA (Ainf F) σ J × HA (Af F) σ J) := univ ×ˢ (Subtype.val '' S)
  have hT : MeasurableSet T := MeasurableSet.univ.prod (hHf.subtype_image hS)
  have hpre : prjF σ J P ⁻¹' S = Subtype.val ⁻¹' (splitA σ J ⁻¹' T) := by
    ext g
    constructor
    · intro h
      exact ⟨trivial, prjF σ J P g, h, rfl⟩
    · rintro ⟨-, s, hs, hse⟩
      have : s = prjF σ J P g := Subtype.ext hse
      show prjF σ J P g ∈ S
      rwa [← this]
  rw [hpre, ← Measure.map_apply measurable_subtype_coe (hmeas hT), ← Measure.map_apply hmeas hT,
    hM.2.2.2.2.2.2.2.2.1, Measure.prod_prod]
  have hIm : MeasurableSet (Subtype.val '' S : Set (HA (Af F) σ J)) := hHf.subtype_image hS
  have e1 : (amb M.μHinf) univ = M.μHinf univ := by
    rw [Measure.map_apply measurable_subtype_coe MeasurableSet.univ, preimage_univ]
  have e2 : (amb M.μHf) (Subtype.val '' S) = M.μHf S := by
    rw [Measure.map_apply measurable_subtype_coe hIm, Subtype.val_injective.preimage_image]
  rw [e1, e2]

theorem massUnfold_gen [NumberField E] (hCM : IsCMExt F E σ) (hJ : IsHermND σ J) (M : MeasW σ J P)
    (hM : M.IsTextNorm) (U : Subgroup (Hsub (Af F) σ J P)) (hU : MeasurableSet (U : Set (Hsub (Af F) σ J P)))
    (hfin : Formalism.L2.SG.TypedSets.MassFinite (G := ↥(Hsub (Af F) σ J P)) ((HFinIn (Af F) σ J : Subgroup (HA (Af F) σ J)).subgroupOf (Hsub (Af F) σ J P)) U)
    (𝓕 : Set (Hsub (AF F) σ J P)) (h𝓕 : IsFundamentalDomain (ratOf (K := Hsub (AF F) σ J P)) 𝓕 M.μH) :
    M.μH 𝓕 = M.μHinf univ * M.μHf U *
      ENNReal.ofReal (Formalism.L2.SG.TypedSets.massCl (G := ↥(Hsub (Af F) σ J P)) ((HFinIn (Af F) σ J : Subgroup (HA (Af F) σ J)).subgroupOf (Hsub (Af F) σ J P)) U) := by
  haveI : Countable (HFinIn (AF F) σ J) :=
    ((PI.VolSemiDirect.W.discHA_of PI.VolSemiDirect.W.Lc.tensor_adele_topology_holds) F E σ hCM n J hJ).1
  haveI : Countable (ratOf (K := Hsub (AF F) σ J P)) := by
    let f : ratOf (K := Hsub (AF F) σ J P) → HFinIn (AF F) σ J := fun x =>
      ⟨((x : Hsub (AF F) σ J P) : HA (AF F) σ J), Subgroup.mem_comap.1 x.2⟩
    have hinj : Function.Injective f := by
      intro x y hxy
      have e := congrArg Subtype.val hxy
      exact Subtype.ext (Subtype.ext e)
    exact hinj.countable
  haveI := hM.1
  haveI := hM.2.2.1
  exact Abs.unfold_mass h𝓕 (prjF σ J P) (continuous_prjF σ J P).measurable _ U (prjF_map_ratOf σ J P)
    (prjF_inj σ J P) hU hfin _ (fun x => by
      rw [measure_prjF_preimage σ J P M hM _ (Abs.meas_smul_set hU x), measure_smul])

end Gen

end MassDataMassesW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.MeasurePrjFPreimage =====
