module

public import Formalism.LocalRingCardinality.DataCD
public import Formalism.LocalRingCardinality.SpanPowerMembership.HaarDensityNeZero
public import Formalism.LocalToGlobal.BesselHermitianTheta.MinfDensity
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HaarScaling.MapEqSelfOfIterate
public import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply
public import Formalism.LocalToGlobal.IndefiniteReal.HaarTransfer.UnimodP
public import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.UnimodGA
public import Formalism.LocalRingCardinality.SpanPowerMembership.ExistsOmegaLeb
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Upqcpt

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.IndefiniteReal.HaarTransfer.MinfUniqueP, Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.MinfLev, Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.MeasUpq

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.HaarTransfer.MinfUniqueP =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.HaarTransfer.MinfUniqueP", "h": "module\n\npublic import Formalism.LocalRingCardinality.DataCD\npublic import Formalism.LocalRingCardinality.SpanPowerMembership.HaarDensityNeZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.IndefR.Leaf.Proofs
open Formalism.IndefR.Leaf MeasureTheory Formalism.BasicNotions

theorem exists_haar_measure_with_density (p q : ℕ) (c : ENNReal) (hc0 : c ≠ 0) (hct : c ≠ ⊤) :
    ∃ m : Measure (UpqT p q), m.IsHaarMeasure ∧ OmegaDensity m c := by
  obtain ⟨c', hc'0, hc't, hd⟩ :=
    Formalism.BasicNotions.Examples₂.CD.omegaDensity_haar p q (MeasureTheory.Measure.haar : Measure (UpqT p q))
  refine ⟨(c / c') • MeasureTheory.Measure.haar, ?_, ?_⟩
  · exact MeasureTheory.Measure.IsHaarMeasure.smul _ (ENNReal.div_pos_iff.mpr ⟨hc0, hc't⟩).ne'
      (ENNReal.div_lt_top hct hc'0).ne
  · have h := Formalism.BasicNotions.Examples₂.CD.omegaDensity_smul p q hd (c / c') (ENNReal.div_lt_top hct hc'0).ne
    rwa [ENNReal.div_mul_cancel hc'0 hc't] at h

end Formalism.IndefR.Leaf.Proofs
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.HaarTransfer.MinfUniqueP =====

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.MinfLev =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.MinfLev", "h": "module\n\npublic import Formalism.LocalToGlobal.BesselHermitianTheta.MinfDensity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions MeasureTheory

namespace Formalism.IndefR.Eqv

theorem minfDensity_ne_zero (N : ℕ) : Formalism.L2.Theta.minfDensity N ≠ 0 := by
  unfold Formalism.L2.Theta.minfDensity
  exact ENNReal.inv_ne_zero.mpr (ENNReal.pow_ne_top ENNReal.ofNat_ne_top)

theorem minfDensity_ne_top (N : ℕ) : Formalism.L2.Theta.minfDensity N ≠ ⊤ := by
  unfold Formalism.L2.Theta.minfDensity
  exact ENNReal.inv_ne_top.mpr (pow_ne_zero _ two_ne_zero)

end Formalism.IndefR.Eqv

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.MinfLev =====

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.MeasUpq =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.MeasUpq", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HaarScaling.MapEqSelfOfIterate\npublic import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply\nimport Formalism.LocalRingCardinality.SpanPowerMembership.HaarDensityNeZero\npublic import Formalism.LocalToGlobal.IndefiniteReal.HaarTransfer.MinfUniqueP\npublic import Formalism.LocalToGlobal.IndefiniteReal.HaarTransfer.UnimodP\npublic import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.MinfLev\npublic import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.UnimodGA\nimport Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Upqcpt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalRingCardinality.SpanPowerMembership.ExistsOmegaLeb\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Filter Topology Formalism.BasicNotions

namespace Formalism.IndefR.Eqv.MU

def epsPQ (p q : ℕ) : Fin (p + q) → Bool := fun i => (finSumFinEquiv.symm i).isLeft

def phiPQ (p q : ℕ) : UpqT p q ≃ₜ* Formalism.REAL.UJ (epsPQ p q) :=
  PI.UnitaryGroupMassFormula.CdHaarScale.Main.phi finSumFinEquiv (fun i => by simp [epsPQ]) (fun j => by simp [epsPQ])

instance instSCUpq (p q : ℕ) : SecondCountableTopology (UpqT p q) :=
  (phiPQ p q).toHomeomorph.secondCountableTopology

instance instTGUpq (p q : ℕ) : IsTopologicalGroup (UpqT p q) :=
  inferInstanceAs (IsTopologicalGroup (Formalism.UG.Upq p q))

instance instBorelUpq (p q : ℕ) : BorelSpace (UpqT p q) := ⟨rfl⟩

instance instT2SpaceIndefiniteUnitary (p q : ℕ) : T2Space (UpqT p q) := inferInstanceAs (T2Space (Formalism.UG.Upq p q))

theorem upq_rightInv (p q : ℕ) (μ : Measure (UpqT p q)) (hμ : μ.IsHaarMeasure) : μ.IsMulRightInvariant :=
  Leaf.Proofs.transferStatement_holds (Formalism.REAL.UJ (epsPQ p q)) (UpqT p q) (phiPQ p q).symm
    (fun ν hν => uJ_rightInv (epsPQ p q) ν hν) μ hμ

theorem map_conj_upq {p q : ℕ} (m : Measure (UpqT p q)) [m.IsHaarMeasure] (u : UpqT p q) :
    m.map (fun c => u⁻¹ * c * u) = m := by
  have hR := upq_rightInv p q m inferInstance
  have e : (fun c : UpqT p q => u⁻¹ * c * u) = (fun c => c * u) ∘ (fun c => u⁻¹ * c) := rfl
  rw [e, ← Measure.map_map (measurable_mul_const u) (measurable_const_mul u⁻¹),
    Measure.IsMulLeftInvariant.map_mul_left_eq_self (μ := m) u⁻¹, hR.map_mul_right_eq_self]

theorem omegaLeb_unique {p q : ℕ} {lam lam' : Measure (lieU p q)} (h : IsOmegaLeb lam) (h' : IsOmegaLeb lam') :
    lam' = lam := by
  have := h.1
  have := h'.1
  set a := Measure.addHaarScalarFactor lam' lam
  have hs : lam' = (a : ENNReal) • lam := by
    rw [← ENNReal.smul_def]; exact Measure.isAddLeftInvariant_eq_smul lam' lam
  have hmeas := (Examples₂.CD.psiE p q).continuous.measurable
  rw [Examples₂.CD.psiE_coe] at hmeas
  have e2 := h'.2
  rw [hs, Measure.prod_smul_left, Measure.prod_smul_right, smul_smul,
    Measure.map_smul _ hmeas.aemeasurable, h.2] at e2
  have hpos : 0 < (volume : Measure ((Fin p ⊕ Fin q) × (Fin p ⊕ Fin q) → ℂ)) (Metric.ball 0 1) :=
    Metric.isOpen_ball.measure_pos _ ⟨0, Metric.mem_ball_self one_pos⟩
  have hfin : (volume : Measure ((Fin p ⊕ Fin q) × (Fin p ⊕ Fin q) → ℂ)) (Metric.ball 0 1) ≠ ⊤ :=
    measure_ball_lt_top.ne
  have e3 := congrArg (fun ν : Measure ((Fin p ⊕ Fin q) × (Fin p ⊕ Fin q) → ℂ) => ν (Metric.ball 0 1)) e2
  simp only [Measure.smul_apply, smul_eq_mul] at e3
  have e4 : (a : ENNReal) * a = 1 := (ENNReal.mul_left_inj hpos.ne' hfin).mp (e3.trans (one_mul _).symm)
  have e5 : a = 1 := by
    have h2 : a ^ 2 = 1 := by
      rw [sq]; exact_mod_cast e4
    exact (pow_eq_one_iff_of_nonneg (by positivity) two_ne_zero).mp h2
  rw [hs, e5, ENNReal.coe_one, one_smul]

theorem isMinf_unique {p q : ℕ} {m m' : Measure (UpqT p q)} (h : Lev.IsMinf m) (h' : Lev.IsMinf m') : m' = m := by
  obtain ⟨hm, lam, hlam, hl⟩ := h
  obtain ⟨hm', lam', hlam', hl'⟩ := h'
  rw [omegaLeb_unique hlam hlam'] at hl'
  set k := Measure.haarScalarFactor m' m
  have hs : m' = (k : ENNReal) • m := by
    rw [← ENNReal.smul_def]; exact Measure.isMulLeftInvariant_eq_smul m' m
  have h2 := ENNReal.Tendsto.const_mul hl (Or.inr (ENNReal.coe_ne_top (r := k)))
  have h3 : Tendsto (fun r : ℝ => m' {g | ∃ X ∈ ballU p q r, UpqT.mat g =
      NormedSpace.exp (X : Matrix (Fin p ⊕ Fin q) (Fin p ⊕ Fin q) ℂ)} / lam (ballU p q r)) (𝓝[>] 0)
      (𝓝 ((k : ENNReal) * Formalism.L2.Theta.minfDensity (p + q))) := by
    refine h2.congr fun r => ?_
    rw [hs, Measure.smul_apply, smul_eq_mul, mul_div_assoc]
  have e := tendsto_nhds_unique hl' h3
  have hk : (k : ENNReal) = 1 :=
    (ENNReal.mul_left_inj (minfDensity_ne_zero (p + q)) (minfDensity_ne_top (p + q))).mp
      (e.symm.trans (one_mul _).symm)
  rw [hs, hk, one_smul]

theorem isMinf_exists (p q : ℕ) : ∃ m : Measure (UpqT p q), Lev.IsMinf m :=
  Leaf.Proofs.exists_haar_measure_with_density p q _ (minfDensity_ne_zero (p + q)) (minfDensity_ne_top (p + q))

theorem Jpq_zero_left (q : ℕ) : Formalism.UG.Jpq 0 q = -1 := by
  ext i j
  rcases i with i | i <;> rcases j with j | j
  · exact i.elim0
  · exact i.elim0
  · exact j.elim0
  · simp [Formalism.UG.Jpq, Matrix.one_apply, Matrix.neg_apply]

instance instCompactUpq0 (q : ℕ) : CompactSpace (UpqT 0 q) := by
  have hc := Formalism.UG.P.isCompact_units_of_unitary (n := Fin 0 ⊕ Fin q)
    (T := {M : Matrix (Fin 0 ⊕ Fin q) (Fin 0 ⊕ Fin q) ℂ | star M * M = 1})
    (isClosed_eq (continuous_star.mul continuous_id) continuous_const) (fun _ h => h)
  have e : (Formalism.UG.Upq 0 q : Set (GL (Fin 0 ⊕ Fin q) ℂ)) =
      {g : GL (Fin 0 ⊕ Fin q) ℂ | (g : Matrix _ _ ℂ) ∈ {M : Matrix (Fin 0 ⊕ Fin q) (Fin 0 ⊕ Fin q) ℂ | star M * M = 1}} := by
    ext g
    simp only [SetLike.mem_coe, Set.mem_setOf_eq]
    rw [Formalism.UG.P.mem_Upq_iff, Jpq_zero_left]
    constructor
    · intro h
      have := congrArg Neg.neg h
      simpa [Matrix.mul_neg] using this
    · intro h
      simp [h]
  rw [← e] at hc
  exact isCompact_iff_compactSpace.mp hc

theorem prob_exists {p q : ℕ} [CompactSpace (UpqT p q)] :
    ∃ m : Measure (UpqT p q), m.IsHaarMeasure ∧ IsProbabilityMeasure m := by
  refine ⟨(Measure.haar (G := UpqT p q) Set.univ)⁻¹ • Measure.haar, ?_, ?_⟩
  · have h0 : (Measure.haar (G := UpqT p q) Set.univ) ≠ 0 := (Measure.measure_univ_pos.mpr (NeZero.ne _)).ne'
    have ht : (Measure.haar (G := UpqT p q) Set.univ) ≠ ⊤ := measure_ne_top _ _
    exact Measure.IsHaarMeasure.smul _ (ENNReal.inv_ne_zero.mpr ht) (ENNReal.inv_ne_top.mpr h0)
  · constructor
    rw [Measure.smul_apply, smul_eq_mul, ENNReal.inv_mul_cancel]
    · exact (Measure.measure_univ_pos.mpr (NeZero.ne _)).ne'
    · exact measure_ne_top _ _

theorem prob_unique {p q : ℕ} {m m' : Measure (UpqT p q)} (h : m.IsHaarMeasure ∧ IsProbabilityMeasure m)
    (h' : m'.IsHaarMeasure ∧ IsProbabilityMeasure m') : m' = m := by
  obtain ⟨hm, hp⟩ := h
  obtain ⟨hm', hp'⟩ := h'
  have hs : m' = (Measure.haarScalarFactor m' m : ENNReal) • m := by
    rw [← ENNReal.smul_def]; exact Measure.isMulLeftInvariant_eq_smul m' m
  have e := congrArg (fun ν : Measure (UpqT p q) => ν Set.univ) hs
  simp only [Measure.smul_apply, smul_eq_mul, measure_univ, mul_one] at e
  rw [hs, ← e, one_smul]

end Formalism.IndefR.Eqv.MU

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.MeasUpq =====
