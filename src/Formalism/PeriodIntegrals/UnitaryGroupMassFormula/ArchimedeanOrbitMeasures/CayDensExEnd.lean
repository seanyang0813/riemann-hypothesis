module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExCayH
public import Mathlib.MeasureTheory.Measure.Haar.Unique
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExHua
public import Mathlib.Analysis.Matrix.Normed
public import Mathlib.RingTheory.Complex
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExCayK
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExTop
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayleyInverseMeasurable
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ContinuousAdelicGL2Det
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExCayS
public import Mathlib.MeasureTheory.Measure.WithDensity
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.SumLPresHolds
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PsiInv
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ExpProdSt
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExOm
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PsiSmoothHolds
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ChartChg

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExLHU, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.HasFDerivAtTauR, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.HuaInvOfTauDeriv, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PreimageSubsetImage, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExHaar, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensEx, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayValId, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ExpTop, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExEnd

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExLHU =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExLHU", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExCayH\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.MeasureTheory.Measure.Haar.Unique\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace HcInf

open MeasureTheory Filter Topology
open scoped ENNReal NNReal Pointwise

section LHU

variable {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [LocallyCompactSpace G]
  [SecondCountableTopology G] [T2Space G] [MeasurableSpace G] [BorelSpace G]

theorem lhu_right (m : Measure G) [m.IsHaarMeasure] (z : G) :
    ∃ r : ℝ≥0∞, ∀ B : Set G, MeasurableSet B → m {x | x * z ∈ B} = r * m B := by
  have hmeas : Measurable (fun x : G => x * z) := measurable_mul_const z
  haveI : (m.map (fun x : G => x * z)).IsMulLeftInvariant := ⟨fun g => by
    rw [Measure.map_map (measurable_const_mul g) hmeas]
    have hc : ((fun x : G => g * x) ∘ fun x => x * z) = (fun x => x * z) ∘ fun x => g * x := by
      funext x; simp [mul_assoc]
    rw [hc, ← Measure.map_map hmeas (measurable_const_mul g), map_mul_left_eq_self]⟩
  haveI : IsFiniteMeasureOnCompacts (m.map (fun x : G => x * z)) := ⟨fun K hK => by
    rw [Measure.map_apply hmeas hK.measurableSet]
    exact ((Homeomorph.mulRight z).isCompact_preimage.2 hK).measure_lt_top⟩
  obtain ⟨c, hc⟩ : ∃ c : ℝ≥0, m.map (fun x : G => x * z) = c • m :=
    ⟨_, Measure.isMulLeftInvariant_eq_smul _ _⟩
  refine ⟨c, fun B hB => ?_⟩
  show m ((fun x : G => x * z) ⁻¹' B) = _
  rw [← Measure.map_apply hmeas hB, hc, Measure.coe_nnreal_smul_apply]

theorem lhu_key (m : Measure G) [m.IsHaarMeasure] (β : Measure G) (W V : Set G)
    (hinv : ∀ (h : G) (S : Set G), MeasurableSet S → S ⊆ W → (fun g => h * g) '' S ⊆ W →
      β ((fun g => h * g) '' S) = β S)
    (hVc : IsCompact V) (hVW : V ⊆ W) (hVW' : ∀ v ∈ V, v⁻¹ ∈ W) (hβV : β V ≠ ⊤) (hβVi : β V⁻¹ ≠ ⊤) :
    ∃ K : ℝ≥0∞, ∀ B : Set G, MeasurableSet B → B ⊆ V → m V * β B = K * m B := by

  have hVm : MeasurableSet V := hVc.isClosed.measurableSet
  have hVim : MeasurableSet V⁻¹ := hVc.inv.isClosed.measurableSet
  have hViW : V⁻¹ ⊆ W := fun x hx => by simpa using hVW' x⁻¹ hx
  choose r hr using fun z => lhu_right m z
  refine ⟨∫⁻ x in V⁻¹, r x ∂β, fun B hB hBV => ?_⟩
  haveI : IsFiniteMeasure (β.restrict V⁻¹) :=
    ⟨by rw [Measure.restrict_apply_univ]; exact lt_top_iff_ne_top.2 hβVi⟩
  haveI : IsFiniteMeasure (β.restrict B) :=
    ⟨by rw [Measure.restrict_apply_univ]
        exact lt_of_le_of_lt (measure_mono hBV) (lt_top_iff_ne_top.2 hβV)⟩
  have hmB : m B ≠ ⊤ := ne_top_of_le_ne_top hVc.measure_lt_top.ne (measure_mono hBV)
  have hE : MeasurableSet {p : G × G | p.2 * p.1 ∈ B} := (measurable_snd.mul measurable_fst) hB
  have hF : MeasurableSet {p : G × G | p.2⁻¹ * p.1 ∈ V⁻¹} :=
    (measurable_snd.inv.mul measurable_fst) hVim
  have ha : ((β.restrict V⁻¹).prod m) {p : G × G | p.2 * p.1 ∈ B}
      = (∫⁻ x in V⁻¹, r x ∂β) * m B := by
    rw [Measure.prod_apply hE]
    calc _ = ∫⁻ x, r x * m B ∂(β.restrict V⁻¹) := lintegral_congr (fun x => hr x B hB)
      _ = (∫⁻ x in V⁻¹, r x ∂β) * m B := lintegral_mul_const' _ _ hmB
  have h1 : ∀ t : G, (β.restrict V⁻¹) ((fun x => (x, t)) ⁻¹' {p : G × G | p.2 * p.1 ∈ B})
      = (β.restrict B) ((fun y => (y, t)) ⁻¹' {p : G × G | p.2⁻¹ * p.1 ∈ V⁻¹}) := by
    intro t
    have hS : MeasurableSet ((fun x => (x, t)) ⁻¹' {p : G × G | p.2 * p.1 ∈ B}) :=
      measurable_const_mul t hB
    have hT : MeasurableSet ((fun y => (y, t)) ⁻¹' {p : G × G | p.2⁻¹ * p.1 ∈ V⁻¹}) :=
      measurable_const_mul t⁻¹ hVim
    rw [Measure.restrict_apply hS, Measure.restrict_apply hT]
    have himg : (fun g => t * g) '' ((fun x => (x, t)) ⁻¹' {p : G × G | p.2 * p.1 ∈ B} ∩ V⁻¹)
        = (fun y => (y, t)) ⁻¹' {p : G × G | p.2⁻¹ * p.1 ∈ V⁻¹} ∩ B := by
      ext y
      constructor
      · rintro ⟨x, ⟨hx1, hx2⟩, rfl⟩
        refine ⟨?_, hx1⟩
        show t⁻¹ * (t * x) ∈ V⁻¹
        rwa [inv_mul_cancel_left]
      · rintro ⟨hy1, hy2⟩
        refine ⟨t⁻¹ * y, ⟨?_, hy1⟩, mul_inv_cancel_left t y⟩
        show t * (t⁻¹ * y) ∈ B
        rwa [mul_inv_cancel_left]
    have hsub : (fun g => t * g) '' ((fun x => (x, t)) ⁻¹' {p : G × G | p.2 * p.1 ∈ B} ∩ V⁻¹) ⊆ W := by
      rw [himg]; exact fun y hy => hVW (hBV hy.2)
    rw [← himg]
    exact (hinv t _ (hS.inter hVim) (fun x hx => hViW hx.2) hsub).symm
  have hb : ((β.restrict V⁻¹).prod m) {p : G × G | p.2 * p.1 ∈ B} = m V * β B := by
    rw [Measure.prod_apply_symm hE]
    calc _ = ∫⁻ t, (β.restrict B) ((fun y => (y, t)) ⁻¹' {p : G × G | p.2⁻¹ * p.1 ∈ V⁻¹}) ∂m :=
          lintegral_congr h1
      _ = ((β.restrict B).prod m) {p : G × G | p.2⁻¹ * p.1 ∈ V⁻¹} :=
          (Measure.prod_apply_symm hF).symm
      _ = ∫⁻ y, m (Prod.mk y ⁻¹' {p : G × G | p.2⁻¹ * p.1 ∈ V⁻¹}) ∂(β.restrict B) :=
          Measure.prod_apply hF
      _ = ∫⁻ y, m V ∂(β.restrict B) := by
          refine lintegral_congr (fun y => ?_)
          have hpre : Prod.mk y ⁻¹' {p : G × G | p.2⁻¹ * p.1 ∈ V⁻¹} = (fun t => y⁻¹ * t) ⁻¹' V := by
            ext t; simp [mul_inv_rev]
          rw [hpre, measure_preimage_mul]
      _ = m V * β B := by rw [lintegral_const, Measure.restrict_apply_univ]
  exact hb.symm.trans ha

theorem local_haar_unique : LocalHaarUnique := by
  intro G _ _ _ _ _ _ _ _ m hm β W hWo h1W hinv hfin hβW
  have hU : W ∩ W⁻¹ ∈ 𝓝 (1 : G) :=
    Filter.inter_mem (hWo.mem_nhds h1W) (hWo.inv.mem_nhds (by simpa using h1W))
  obtain ⟨V, hV1, hVsub, hVc⟩ := local_compact_nhds hU
  have hVW : V ⊆ W := fun x hx => (hVsub hx).1
  have hVW' : ∀ v ∈ V, v⁻¹ ∈ W := fun v hv => (hVsub hv).2
  have hVm : MeasurableSet V := hVc.isClosed.measurableSet
  have hβV : β V ≠ ⊤ := hfin V hVc hVW
  have hβVi : β V⁻¹ ≠ ⊤ := hfin V⁻¹ hVc.inv (fun x hx => by simpa using hVW' x⁻¹ hx)
  have h1V : (1 : G) ∈ interior V := mem_interior_iff_mem_nhds.2 hV1
  have hmV0 : m V ≠ 0 :=
    ((isOpen_interior.measure_pos m ⟨1, h1V⟩).trans_le (measure_mono interior_subset)).ne'
  have hmVt : m V ≠ ⊤ := hVc.measure_lt_top.ne

  have hβV0 : β V ≠ 0 := by
    intro h0
    apply hβW
    let U : G → Set G := fun w => W ∩ (fun x => w⁻¹ * x) ⁻¹' interior V
    have hUo : ∀ w, IsOpen (U w) := fun w =>
      hWo.inter (isOpen_interior.preimage (continuous_const.mul continuous_id))
    have hU0 : ∀ w, β (U w) = 0 := by
      intro w
      have hSm : MeasurableSet ((fun x => w * x) ⁻¹' U w) :=
        measurable_const_mul w (hUo w).measurableSet
      have hSV : (fun x => w * x) ⁻¹' U w ⊆ V := by
        intro x hx
        have hx2 := hx.2
        simp only [Set.mem_preimage, inv_mul_cancel_left] at hx2
        exact interior_subset hx2
      have himg : (fun g => w * g) '' ((fun x => w * x) ⁻¹' U w) = U w :=
        Set.image_preimage_eq _ (mul_left_surjective w)
      have h := hinv w _ hSm (hSV.trans hVW) (by rw [himg]; exact fun y hy => hy.1)
      rw [himg] at h
      rw [h]
      exact measure_mono_null hSV h0
    obtain ⟨T, hTc, hTU⟩ := TopologicalSpace.isOpen_iUnion_countable U hUo
    have hWU : W ⊆ ⋃ w ∈ T, U w := by
      rw [hTU]
      intro x hx
      exact Set.mem_iUnion.2 ⟨x, hx, by simpa using h1V⟩
    exact measure_mono_null hWU ((measure_biUnion_null_iff hTc).2 (fun w _ => hU0 w))
  obtain ⟨K, hK⟩ := lhu_key m β W V hinv hVc hVW hVW' hβV hβVi
  refine ⟨β V / m V, (ENNReal.div_pos hβV0 hmVt).ne', ENNReal.div_ne_top hβV hmV0, V, hV1, hVW, ?_⟩
  ext s hs
  rw [Measure.restrict_apply hs, Measure.smul_apply, Measure.restrict_apply hs, smul_eq_mul]
  have h1 := hK (s ∩ V) (hs.inter hVm) (fun x hx => hx.2)
  have h2 := hK V hVm subset_rfl
  have e1 : β (s ∩ V) = (m V)⁻¹ * (K * m (s ∩ V)) := by
    rw [← h1, ← mul_assoc, ENNReal.inv_mul_cancel hmV0 hmVt, one_mul]
  have e2 : β V = (m V)⁻¹ * (K * m V) := by
    rw [← h2, ← mul_assoc, ENNReal.inv_mul_cancel hmV0 hmVt, one_mul]
  rw [e1, div_eq_mul_inv, e2]
  calc (m V)⁻¹ * (K * m (s ∩ V)) = (m V)⁻¹ * K * (m V * (m V)⁻¹) * m (s ∩ V) := by
        rw [ENNReal.mul_inv_cancel hmV0 hmVt, mul_one, mul_assoc]
    _ = (m V)⁻¹ * (K * m V) * (m V)⁻¹ * m (s ∩ V) := by ring

end LHU

end HcInf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExLHU =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.HasFDerivAtTauR =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.HasFDerivAtTauR", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExHua\npublic import Mathlib.Analysis.Matrix.Normed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace HcInf

open HcS.BasicNotions Matrix Filter Topology

attribute [local instance] Matrix.linftyOpNormedAddCommGroup Matrix.linftyOpNormedSpace
  Matrix.linftyOpNormedRing Matrix.linftyOpNormedAlgebra

section Deriv

variable {P Q : ℕ}

local notation "Mat" => Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ

def tauR (H X : Mat) : Mat :=
  (1 + 1) - (4 : ℂ) • (((1 + 1) - X) * Ring.inverse (H * ((1 + 1) + X) + ((1 + 1) - X)))

theorem smul_four (Z : Mat) : (4 : ℂ) • Z = (1 + 1 + 1 + 1) * Z := by
  rw [show (4 : ℂ) = 1 + 1 + 1 + 1 by norm_num, add_smul, add_smul, add_smul, one_smul, add_mul, add_mul,
    add_mul, one_mul]

theorem key_alg (H X Y Ni K : Mat)
    (hNi : Ni * (H * ((1 + 1) + X) + ((1 + 1) - X)) = 1) (hK : ((1 + 1) - X) * K = 1) :
    Y + ((1 + 1) - X) * Ni * (H * Y - Y) =
      (1 + 1 + 1 + 1) * (((1 + 1) - X) * Ni * H * K * Y) := by
  set S := (1 + 1 : Mat) - X with hS
  have hX : (1 + 1 : Mat) + X = (1 + 1 + 1 + 1) - S := by
    rw [hS]
    noncomm_ring
  have e1 : S * Ni * (H * ((1 + 1) + X) + S) * K = 1 := by
    rw [mul_assoc S Ni, hNi, mul_one, hK]
  rw [hX] at e1
  have e2 : S * Ni * (H * ((1 + 1 + 1 + 1) - S) + S) * K =
      (1 + 1 + 1 + 1) * (S * Ni * H * K) - S * Ni * H * (S * K) + S * Ni * (S * K) := by
    noncomm_ring
  rw [e2, hK, mul_one, mul_one] at e1
  have e3 : (1 + 1 + 1 + 1) * (S * Ni * H * K) = 1 + S * Ni * H - S * Ni := by
    calc (1 + 1 + 1 + 1) * (S * Ni * H * K)
        = ((1 + 1 + 1 + 1) * (S * Ni * H * K) - S * Ni * H + S * Ni) + S * Ni * H - S * Ni := by abel
      _ = 1 + S * Ni * H - S * Ni := by rw [e1]
  calc Y + S * Ni * (H * Y - Y) = (1 + S * Ni * H - S * Ni) * Y := by noncomm_ring
    _ = (1 + 1 + 1 + 1) * (S * Ni * H * K) * Y := by rw [e3]
    _ = (1 + 1 + 1 + 1) * (S * Ni * H * K * Y) := by noncomm_ring

theorem hasFDerivAt_tauR (H X : Mat) (hN : IsUnit (H * ((1 + 1) + X) + ((1 + 1) - X)).det)
    (hS : IsUnit ((1 + 1) - X).det) :
    HasFDerivAt (tauR H) (ContinuousLinearMap.mulLeftRight ℝ Mat
      ((4 : ℂ) • (((1 + 1) - X) * (H * ((1 + 1) + X) + ((1 + 1) - X))⁻¹ * H * ((1 + 1) - X)⁻¹))
      ((4 : ℂ) • (H * ((1 + 1) + X) + ((1 + 1) - X))⁻¹)) X := by
  obtain ⟨u, hu⟩ := (Matrix.isUnit_iff_isUnit_det _).2 hN
  have hA : HasFDerivAt (fun Z : Mat => (1 + 1) - Z) (-ContinuousLinearMap.id ℝ Mat) X :=
    (hasFDerivAt_id X).const_sub _
  have hB := (((hasFDerivAt_const (1 + 1 : Mat) X).add (hasFDerivAt_id X)).const_mul H).add hA
  have hI : HasFDerivAt Ring.inverse (-ContinuousLinearMap.mulLeftRight ℝ Mat ↑u⁻¹ ↑u⁻¹)
      (H * ((1 + 1) + X) + ((1 + 1) - X)) := by
    rw [← hu]; exact hasFDerivAt_ringInverse u
  have hC := hI.comp X hB
  have hD := ((hA.mul' hC).const_smul (4 : ℂ)).const_sub (1 + 1 : Mat)
  have hE : HasFDerivAt (tauR H) _ X := hD
  have hinv : (↑u⁻¹ : Mat) = (H * ((1 + 1) + X) + ((1 + 1) - X))⁻¹ := by
    rw [Matrix.nonsing_inv_eq_ringInverse, ← hu, Ring.inverse_unit]
  refine hE.congr_fderiv (ContinuousLinearMap.ext fun Y => ?_)
  have hNi := Matrix.nonsing_inv_mul _ hN
  have hK := Matrix.mul_nonsing_inv _ hS
  have k := key_alg H X Y _ _ hNi hK
  change -((4 : ℂ) • (((1 + 1) - X) * (-(Units.val u⁻¹ * (H * (0 + Y) + -Y) * Units.val u⁻¹)) +
      (-Y) * Ring.inverse (H * ((1 + 1) + X) + ((1 + 1) - X)))) =
    (4 : ℂ) • (((1 + 1) - X) * (H * ((1 + 1) + X) + ((1 + 1) - X))⁻¹ * H * ((1 + 1) - X)⁻¹) * Y *
      ((4 : ℂ) • (H * ((1 + 1) + X) + ((1 + 1) - X))⁻¹)
  rw [hinv, ← Matrix.nonsing_inv_eq_ringInverse, smul_four, smul_four, smul_four, zero_add]
  calc _ = (1 + 1 + 1 + 1) * ((Y + ((1 + 1) - X) * (H * ((1 + 1) + X) + ((1 + 1) - X))⁻¹ * (H * Y - Y)) *
          (H * ((1 + 1) + X) + ((1 + 1) - X))⁻¹) := by noncomm_ring
    _ = (1 + 1 + 1 + 1) * (((1 + 1 + 1 + 1) * (((1 + 1) - X) * (H * ((1 + 1) + X) + ((1 + 1) - X))⁻¹ *
          H * ((1 + 1) - X)⁻¹ * Y)) * (H * ((1 + 1) + X) + ((1 + 1) - X))⁻¹) := by rw [k]
    _ = _ := by noncomm_ring

end Deriv

section Sub

variable {P Q : ℕ}

local notation "Mat" => Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ

theorem tauDeriv_at (h : UpqT P Q) (x : lieU P Q) (hx : x ∈ D0 P Q)
    (hn : IsUnit (nH h (x : Mat)).det) :
    ∃ f' : lieU P Q →L[ℝ] lieU P Q,
      (∀ Y : lieU P Q, ((f' Y : lieU P Q) : Mat) = chA h (x : Mat) * (Y : Mat) * chB h (x : Mat)) ∧
      HasFDerivAt (tauL h) f' x := by
  set ι : lieU P Q →L[ℝ] Mat := (lieU P Q).subtypeL with hι
  set L : Mat →L[ℝ] Mat :=
    ContinuousLinearMap.mulLeftRight ℝ Mat (chA h (x : Mat)) (chB h (x : Mat)) with hL
  have hM : HasFDerivAt (tauR (UpqT.mat h)) L (ι x) := hasFDerivAt_tauR (UpqT.mat h) (x : Mat) hn hx
  have c1 : Continuous fun y : lieU P Q => (1 + 1) - ι y := continuous_const.sub ι.continuous
  have c2 : Continuous fun y : lieU P Q => UpqT.mat h * ((1 + 1) + ι y) + ((1 + 1) - ι y) :=
    (continuous_const.mul (continuous_const.add ι.continuous)).add (continuous_const.sub ι.continuous)
  have hev : ∀ᶠ y in 𝓝 x, IsUnit ((1 + 1) - ι y) ∧
      IsUnit (UpqT.mat h * ((1 + 1) + ι y) + ((1 + 1) - ι y)) := by
    filter_upwards [c1.continuousAt.preimage_mem_nhds
        (Units.isOpen.mem_nhds ((Matrix.isUnit_iff_isUnit_det _).2 hx)),
      c2.continuousAt.preimage_mem_nhds
        (Units.isOpen.mem_nhds ((Matrix.isUnit_iff_isUnit_det _).2 hn))] with y h1 h2
    exact ⟨h1, h2⟩
  have heq : (fun y : lieU P Q => ((tauL h y : lieU P Q) : Mat)) =ᶠ[𝓝 x]
      (tauR (UpqT.mat h) ∘ ι) := by
    filter_upwards [hev] with y hy
    have hyD : y ∈ D0 P Q := (Matrix.isUnit_iff_isUnit_det _).1 hy.1
    have hyN : IsUnit (nH h (y : Mat)).det := (Matrix.isUnit_iff_isUnit_det _).1 hy.2
    have hu : IsUnit (UpqT.mat (h * cayF P Q y) + 1).det := by
      have e := hyN
      rw [nH_eq h y hyD, det_mul] at e
      exact isUnit_of_mul_isUnit_left e
    rw [tauL_val h y hyD hu, Matrix.nonsing_inv_eq_ringInverse]
    rfl
  have hF : HasFDerivAt (fun y : lieU P Q => ((tauL h y : lieU P Q) : Mat)) (L.comp ι) x :=
    (HasFDerivAt.comp x hM ι.hasFDerivAt).congr_of_eventuallyEq heq
  have hclosed : IsClosed ((lieU P Q : Set Mat)) := (lieU P Q).isClosed_of_finiteDimensional
  have hmem : ∀ Y, (L.comp ι) Y ∈ lieU P Q := by
    intro Y
    exact hclosed.mem_of_tendsto (hF.lim_real Y) (Eventually.of_forall fun c =>
      (lieU P Q).smul_mem c ((lieU P Q).sub_mem (tauL h _).2 (tauL h x).2))
  refine ⟨(L.comp ι).codRestrict (lieU P Q) hmem, fun Y => ?_, ?_⟩
  · have hLY : L (ι Y) = chA h (x : Mat) * ι Y * chB h (x : Mat) :=
      ContinuousLinearMap.mulLeftRight_apply _ _ _ _ _
    exact hLY
  · have hF' := hasFDerivAt_iff_isLittleO_nhds_zero.1 hF
    refine hasFDerivAt_iff_isLittleO_nhds_zero.2 ?_
    rw [← Asymptotics.isLittleO_norm_left] at hF' ⊢
    refine hF'.congr_left fun k => ?_
    rfl

end Sub

theorem tau_derivative : TauDeriv := fun _ _ h x hx hn => tauDeriv_at h x hx hn

end HcInf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.HasFDerivAtTauR =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.HuaInvOfTauDeriv =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.HuaInvOfTauDeriv", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExHua\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\npublic import Mathlib.RingTheory.Complex\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace HcInf

open HcS.BasicNotions Matrix

section MatDet

variable {n : Type} [Fintype n] [DecidableEq n]

theorem det_mulRight_mat (B : Matrix n n ℂ) :
    LinearMap.det (LinearMap.mulRight ℂ B : Matrix n n ℂ →ₗ[ℂ] Matrix n n ℂ) =
      B.det ^ Fintype.card n := by
  classical
  let e : Matrix n n ℂ ≃ₗ[ℂ] (n → n → ℂ) :=
    { toFun := fun X i j => X i j
      invFun := fun v => Matrix.of v
      map_add' := fun _ _ => rfl
      map_smul' := fun _ _ => rfl
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl }
  let g : (n → n → ℂ) →ₗ[ℂ] (n → n → ℂ) :=
    LinearMap.pi fun i => (Matrix.toLin' Bᵀ).comp (LinearMap.proj i)
  have key : (LinearMap.mulRight ℂ B : Matrix n n ℂ →ₗ[ℂ] Matrix n n ℂ) =
      (e.symm : (n → n → ℂ) →ₗ[ℂ] Matrix n n ℂ).comp
        (g.comp (e.symm.symm : Matrix n n ℂ →ₗ[ℂ] (n → n → ℂ))) := by
    refine LinearMap.ext fun X => ?_
    refine Matrix.ext fun i j => ?_
    rw [LinearMap.mulRight_apply, Matrix.mul_apply]
    change ∑ k, X i k * B k j = ∑ k, B k j * X i k
    exact Finset.sum_congr rfl fun k _ => mul_comm _ _
  rw [key, LinearMap.det_conj, LinearMap.det_pi]
  simp [LinearMap.det_toLin', Matrix.det_transpose]

theorem det_mulLeft_mat (A : Matrix n n ℂ) :
    LinearMap.det (LinearMap.mulLeft ℂ A : Matrix n n ℂ →ₗ[ℂ] Matrix n n ℂ) =
      A.det ^ Fintype.card n := by
  classical
  let e : Matrix n n ℂ ≃ₗ[ℂ] Matrix n n ℂ := Matrix.transposeLinearEquiv n n ℂ ℂ
  have key : (LinearMap.mulLeft ℂ A : Matrix n n ℂ →ₗ[ℂ] Matrix n n ℂ) =
      (e : Matrix n n ℂ →ₗ[ℂ] Matrix n n ℂ).comp
        ((LinearMap.mulRight ℂ Aᵀ : Matrix n n ℂ →ₗ[ℂ] Matrix n n ℂ).comp
          (e.symm : Matrix n n ℂ →ₗ[ℂ] Matrix n n ℂ)) := by
    refine LinearMap.ext fun X => ?_
    simp [e, Matrix.transpose_mul]
  rw [key, LinearMap.det_conj, det_mulRight_mat, Matrix.det_transpose]

end MatDet

section Real

variable {P Q : ℕ}

local notation "Mat" => Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ

def sigJ (W : Mat) : Mat := HcS.UG.Jpq P Q * Wᴴ * HcS.UG.Jpq P Q

theorem Jpq_mul_mul (X : Mat) : HcS.UG.Jpq P Q * (HcS.UG.Jpq P Q * X) = X := by
  rw [← Matrix.mul_assoc]
  simp [HcS.UG.Jpq, Matrix.fromBlocks_multiply]

theorem sigJ_add (V W : Mat) : sigJ (V + W) = sigJ V + sigJ W := by
  simp only [sigJ, Matrix.conjTranspose_add, Matrix.mul_add, Matrix.add_mul]

theorem sigJ_smul (c : ℂ) (W : Mat) : sigJ (c • W) = star c • sigJ W := by
  simp only [sigJ, Matrix.conjTranspose_smul, Matrix.mul_smul, Matrix.smul_mul]

theorem sigJ_sigJ (W : Mat) : sigJ (sigJ W) = W := by
  have hJ : (HcS.UG.Jpq P Q)ᴴ = HcS.UG.Jpq P Q := by
    simp [HcS.UG.Jpq, Matrix.fromBlocks_conjTranspose]
  have hJJ : HcS.UG.Jpq P Q * HcS.UG.Jpq P Q = 1 := by
    simpa using Jpq_mul_mul (P := P) (Q := Q) 1
  simp only [sigJ, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, hJ,
    Matrix.mul_assoc, Jpq_mul_mul, hJJ, Matrix.mul_one]

theorem mem_lieU_iff_sigJ (X : Mat) : X ∈ lieU P Q ↔ sigJ X = -X := by
  show Xᴴ * HcS.UG.Jpq P Q + HcS.UG.Jpq P Q * X = 0 ↔ HcS.UG.Jpq P Q * Xᴴ * HcS.UG.Jpq P Q = -X
  constructor
  · intro h
    have h' : Xᴴ * HcS.UG.Jpq P Q = -(HcS.UG.Jpq P Q * X) := eq_neg_of_add_eq_zero_left h
    rw [Matrix.mul_assoc, h', Matrix.mul_neg, Jpq_mul_mul]
  · intro h
    have e1 : HcS.UG.Jpq P Q * (Xᴴ * HcS.UG.Jpq P Q) = -X := by
      rw [← Matrix.mul_assoc]
      exact h
    calc Xᴴ * HcS.UG.Jpq P Q + HcS.UG.Jpq P Q * X
        = HcS.UG.Jpq P Q * (HcS.UG.Jpq P Q * (Xᴴ * HcS.UG.Jpq P Q)) + HcS.UG.Jpq P Q * X := by
          rw [Jpq_mul_mul]
      _ = 0 := by rw [e1, Matrix.mul_neg, neg_add_cancel]

def cplx : (lieU P Q × lieU P Q) →ₗ[ℝ] Mat where
  toFun p := ((p.1 : lieU P Q) : Mat) + Complex.I • ((p.2 : lieU P Q) : Mat)
  map_add' p q := by
    simp only [Prod.fst_add, Prod.snd_add, Submodule.coe_add, smul_add]
    abel
  map_smul' c p := by
    simp only [Prod.smul_fst, Prod.smul_snd, Submodule.coe_smul, RingHom.id_apply, smul_add]
    rw [smul_comm c Complex.I]

theorem cplx_apply (p : lieU P Q × lieU P Q) :
    cplx p = ((p.1 : lieU P Q) : Mat) + Complex.I • ((p.2 : lieU P Q) : Mat) := rfl

theorem cplx_injective : Function.Injective (cplx (P := P) (Q := Q)) := by
  rw [injective_iff_map_eq_zero]
  rintro ⟨⟨Y, hY⟩, ⟨Z, hZ⟩⟩ h
  have h1 : Y + Complex.I • Z = 0 := h
  have hY' : sigJ Y = -Y := (mem_lieU_iff_sigJ Y).1 hY
  have hZ' : sigJ Z = -Z := (mem_lieU_iff_sigJ Z).1 hZ
  have hs : star Complex.I = -Complex.I := by simp
  have h2 : -Y + Complex.I • Z = 0 := by
    have h3 : sigJ (Y + Complex.I • Z) = 0 := by
      rw [h1]; simp [sigJ]
    rw [sigJ_add, sigJ_smul, hY', hZ', hs, neg_smul_neg] at h3
    exact h3
  have hY0 : Y = 0 := by
    have h4 : (2 : ℂ) • Y = 0 := by
      rw [two_smul]
      calc Y + Y = (Y + Complex.I • Z) - (-Y + Complex.I • Z) := by abel
        _ = 0 := by rw [h1, h2, sub_zero]
    exact (smul_eq_zero.1 h4).resolve_left two_ne_zero
  have hZ0 : Z = 0 := by
    rw [hY0, zero_add] at h1
    exact (smul_eq_zero.1 h1).resolve_left Complex.I_ne_zero
  subst hY0
  subst hZ0
  rfl

theorem cplx_surjective : Function.Surjective (cplx (P := P) (Q := Q)) := by
  intro W
  have hsub : ∀ V U : Mat, sigJ (V - U) = sigJ V - sigJ U := by
    intro V U
    simp only [sigJ, Matrix.conjTranspose_sub, Matrix.mul_sub, Matrix.sub_mul]
  have hh : star ((1 : ℂ) / 2) = 1 / 2 := by simp
  have hi : star (-Complex.I / 2) = Complex.I / 2 := by simp
  have hI2 : Complex.I * (-Complex.I / 2) = 1 / 2 := by
    rw [mul_div_assoc', mul_neg, Complex.I_mul_I, neg_neg]
  have hY : ((1 : ℂ) / 2) • (W - sigJ W) ∈ lieU P Q := by
    rw [mem_lieU_iff_sigJ, sigJ_smul, hsub, sigJ_sigJ, hh, ← smul_neg, neg_sub]
  have hZ : (-Complex.I / 2) • (W + sigJ W) ∈ lieU P Q := by
    rw [mem_lieU_iff_sigJ, sigJ_smul, sigJ_add, sigJ_sigJ, hi, ← neg_smul, add_comm (sigJ W)]
    congr 1
    ring
  refine ⟨(⟨_, hY⟩, ⟨_, hZ⟩), ?_⟩
  rw [cplx_apply]
  show ((1 : ℂ) / 2) • (W - sigJ W) + Complex.I • ((-Complex.I / 2) • (W + sigJ W)) = W
  rw [smul_smul, hI2, ← smul_add,
    show W - sigJ W + (W + sigJ W) = (2 : ℂ) • W by rw [two_smul]; abel, smul_smul]
  norm_num

def cplxE : (lieU P Q × lieU P Q) ≃ₗ[ℝ] Mat :=
  LinearEquiv.ofBijective cplx ⟨cplx_injective, cplx_surjective⟩

theorem cplxE_apply (p : lieU P Q × lieU P Q) : cplxE p = cplx p := rfl

end Real

theorem det_ayb : DetAYB := by
  intro P Q A B L hL
  classical
  let M : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ →ₗ[ℂ] Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ :=
    (LinearMap.mulLeft ℂ A).comp (LinearMap.mulRight ℂ B)
  have hM : LinearMap.det M = (A.det * B.det) ^ (P + Q) := by
    rw [LinearMap.det_comp, det_mulLeft_mat, det_mulRight_mat, mul_pow, Fintype.card_sum,
      Fintype.card_fin, Fintype.card_fin]
  have key : ((cplxE (P := P) (Q := Q) : (lieU P Q × lieU P Q) →ₗ[ℝ] _).comp
      ((L.prodMap L).comp ((cplxE (P := P) (Q := Q)).symm :
        Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ →ₗ[ℝ] (lieU P Q × lieU P Q)))) =
      M.restrictScalars ℝ := by
    refine LinearMap.ext fun W => ?_
    obtain ⟨p, rfl⟩ := (cplxE (P := P) (Q := Q)).surjective W
    show cplxE ((L.prodMap L) ((cplxE (P := P) (Q := Q)).symm (cplxE p))) = A * (cplxE p * B)
    rw [LinearEquiv.symm_apply_apply, cplxE_apply, cplxE_apply, cplx_apply, cplx_apply]
    show ((L p.1 : lieU P Q) : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ) +
        Complex.I • ((L p.2 : lieU P Q) : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ) =
      A * ((((p.1 : lieU P Q) : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ) +
        Complex.I • ((p.2 : lieU P Q) : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ)) * B)
    rw [hL, hL, Matrix.add_mul, Matrix.mul_add, Matrix.smul_mul, Matrix.mul_smul,
      Matrix.mul_assoc, Matrix.mul_assoc]
  have h2 : LinearMap.det (L.prodMap L) = Algebra.norm ℝ (LinearMap.det M) := by
    rw [← LinearMap.det_conj (L.prodMap L) (cplxE (P := P) (Q := Q)), key,
      LinearMap.det_restrictScalars]
  rw [LinearMap.det_prodMap, hM, Algebra.norm_complex_apply] at h2
  have h3 : |LinearMap.det L| ^ 2 = (‖A.det‖ ^ (P + Q) * ‖B.det‖ ^ (P + Q)) ^ 2 := by
    rw [sq_abs, sq, h2, Complex.normSq_eq_norm_sq, norm_pow, norm_mul]
    ring
  exact (pow_left_inj₀ (abs_nonneg _) (by positivity) two_ne_zero).1 h3

theorem huaInv_of_tauDeriv (h2 : TauDeriv) : HuaInv := huaInv_of det_ayb h2

end HcInf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.HuaInvOfTauDeriv =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PreimageSubsetImage =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PreimageSubsetImage", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExCayH\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExCayK\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExTop\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayleyInverseMeasurable\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ContinuousAdelicGL2Det\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace HcInf

open HcS.BasicNotions Matrix MeasureTheory Filter Topology
open scoped ENNReal NNReal

instance instT2SpaceUnitaryPQ (P Q : ℕ) : T2Space (UpqT P Q) := (isClosedEmbedding_mat P Q).isEmbedding.t2Space

section SlopeTestRemainingChoices

variable {P Q : ℕ}

theorem continuousOn_cayInv : ContinuousOn (cayInv P Q) (cayS (D0 P Q)) := by
  have e : cayInv P Q = fun g => ⟨cayCand P Q g, cayCand_mem P Q g⟩ :=
    funext (cayInv_eq P Q)
  rw [e]
  refine Topology.IsInducing.subtypeVal.continuousOn_iff.2 ?_
  show ContinuousOn (cayCand P Q) (cayS (D0 P Q))
  intro g hg
  have hdet : IsUnit (g.mat + 1).det := by
    rw [cayley_domain_eq] at hg
    exact hg
  unfold cayCand
  have hc : ContinuousAt (fun g : UpqT P Q => g.mat) g := continuous_mat.continuousAt
  have hinv : ContinuousAt (fun g : UpqT P Q => (g.mat + 1)⁻¹) g := by
    have hdet_cont : ContinuousAt Ring.inverse (g.mat + 1).det := by
      obtain ⟨u, hu⟩ := hdet
      rw [← hu]
      exact NormedRing.inverse_continuousAt u
    have hadd : ContinuousAt (fun x : UpqT P Q => x.mat + 1) g :=
      hc.add continuousAt_const
    exact (continuousAt_matrix_inv (g.mat + 1) hdet_cont).comp
      (f := fun x : UpqT P Q => x.mat + 1) (x := g) hadd
  exact ((continuousAt_const.mul hinv).mul (hc.sub continuousAt_const)).continuousWithinAt

theorem betaH_apply (lam : Measure (lieU P Q)) (S : Set (UpqT P Q)) (hS : MeasurableSet S) :
    betaH P Q lam S = ∫⁻ X in cayF P Q ⁻¹' S ∩ D0 P Q, rhoH P Q X ∂lam := by
  unfold betaH
  rw [Measure.map_apply measurable_cayF hS, withDensity_apply _ (measurable_cayF hS),
    Measure.restrict_restrict (measurable_cayF hS)]

theorem preimage_subset_image (S : Set (UpqT P Q)) :
    cayF P Q ⁻¹' S ∩ D0 P Q ⊆ cayInv P Q '' S := by
  rintro X ⟨hXS, hXD⟩
  exact ⟨cayF P Q X, hXS, cayInv_cayF X hXD⟩

end SlopeTestRemainingChoices

end HcInf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PreimageSubsetImage =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExHaar =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExHaar", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExCayK\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExCayS\npublic import Mathlib.MeasureTheory.Measure.WithDensity\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExLHU\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExOm\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExTop\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayleyInverseMeasurable\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ContinuousAdelicGL2Det\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.HasFDerivAtTauR\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.HuaInvOfTauDeriv\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PreimageSubsetImage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExCayH\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace HcHDC

open HcInf HcS.BasicNotions Matrix MeasureTheory Filter Topology
open scoped ENNReal NNReal

theorem cayDensU (P Q : ℕ) (m : Measure (UpqT P Q)) [hm : m.IsHaarMeasure] (lam : Measure (lieU P Q))
    [hlam : lam.IsAddHaarMeasure] :
    ∃ D ∈ 𝓝 (0 : lieU P Q), MeasurableSet D ∧ ∃ f : lieU P Q → ℝ≥0∞, Measurable f ∧ ContinuousAt f 0 ∧
      f 0 ≠ 0 ∧ f 0 ≠ ⊤ ∧ (m.restrict (cayS D)).map (cayInv P Q) = (lam.restrict D).withDensity f := by

  have hW : IsOpen (cayS (D0 P Q)) := isOpen_cayley_domain (P := P) (Q := Q)
  have h00 : (0 : lieU P Q) ∈ D0 P Q := zero_mem_cayley_domain (P := P) (Q := Q)
  have h1W : (1 : UpqT P Q) ∈ cayS (D0 P Q) := by
    have h := cayF_spec (P := P) (Q := Q) 0 h00
    rw [cayF_zero (P := P) (Q := Q)] at h
    exact ⟨0, h00, h⟩
  have hHua : HuaInv := huaInv_of_tauDeriv tau_derivative
  have hinv : ∀ (h : UpqT P Q) (S : Set (UpqT P Q)), MeasurableSet S → S ⊆ cayS (D0 P Q) →
      (fun g => h * g) '' S ⊆ cayS (D0 P Q) →
      betaH P Q lam ((fun g => h * g) '' S) = betaH P Q lam S :=
    fun h S hS hSW hhSW => hHua P Q lam hlam h S hS hSW hhSW

  have hcpt : ∀ K, IsCompact K → K ⊆ cayS (D0 P Q) → betaH P Q lam K ≠ ⊤ := by
    intro K hK hKW
    have hKm : MeasurableSet K := hK.isClosed.measurableSet
    have hCc : IsCompact (insert (0 : lieU P Q) (cayInv P Q '' K)) :=
      (hK.image_of_continuousOn ((continuousOn_cayInv (P := P) (Q := Q)).mono hKW)).insert 0
    have hC0 : insert (0 : lieU P Q) (cayInv P Q '' K) ⊆ D0 P Q := by
      rintro X (rfl | ⟨g, hg, rfl⟩)
      · exact h00
      · obtain ⟨Y, hY, hrel⟩ := hKW hg
        rw [cayley_inverse_iff P Q g Y hrel]
        exact hY
    obtain ⟨x0, -, hmax⟩ := hCc.exists_isMaxOn ⟨0, Set.mem_insert _ _⟩
      (fun x hx => (continuousAt_rhoH (P := P) (Q := Q) x (hC0 hx)).continuousWithinAt)
    have hS'm : MeasurableSet (cayF P Q ⁻¹' K ∩ D0 P Q) :=
      (measurable_cayF (P := P) (Q := Q) hKm).inter (isOpen_cell_domain (P := P) (Q := Q)).measurableSet
    have hS'C : cayF P Q ⁻¹' K ∩ D0 P Q ⊆ insert (0 : lieU P Q) (cayInv P Q '' K) :=
      fun X hX => Set.mem_insert_of_mem _ (preimage_subset_image (P := P) (Q := Q) K hX)
    rw [betaH_apply (P := P) (Q := Q) lam K hKm]
    apply ne_of_lt
    calc ∫⁻ X in cayF P Q ⁻¹' K ∩ D0 P Q, rhoH P Q X ∂lam
        ≤ ∫⁻ _ in cayF P Q ⁻¹' K ∩ D0 P Q, rhoH P Q x0 ∂lam := by
          apply lintegral_mono_ae
          filter_upwards [ae_restrict_mem hS'm] with X hX
          exact isMaxOn_iff.1 hmax X (hS'C hX)
      _ = rhoH P Q x0 * lam (cayF P Q ⁻¹' K ∩ D0 P Q) := setLIntegral_const _ _
      _ < ⊤ := ENNReal.mul_lt_top (lt_top_iff_ne_top.2 ENNReal.ofReal_ne_top)
          ((measure_mono hS'C).trans_lt hCc.measure_lt_top)

  have hne : betaH P Q lam (cayS (D0 P Q)) ≠ 0 := by
    rw [betaH_apply (P := P) (Q := Q) lam _ hW.measurableSet]
    have hpre : cayF P Q ⁻¹' cayS (D0 P Q) ∩ D0 P Q = D0 P Q :=
      Set.inter_eq_right.2 (fun X hX => ⟨X, hX, cayF_spec (P := P) (Q := Q) X hX⟩)
    rw [hpre]
    have hpos : 0 < lam (D0 P Q) := (isOpen_cell_domain (P := P) (Q := Q)).measure_pos lam ⟨0, h00⟩
    intro h0
    rw [lintegral_eq_zero_iff (measurable_rhoH (P := P) (Q := Q))] at h0
    have hF : ∀ᵐ x ∂(lam.restrict (D0 P Q)), False := by
      filter_upwards [h0, ae_restrict_mem (isOpen_cell_domain (P := P) (Q := Q)).measurableSet]
        with x hx hxD
      exact rhoH_pos (P := P) (Q := Q) x hxD hx
    rw [ae_iff] at hF
    simp only [not_false_eq_true, Set.ofPred_true, Measure.restrict_apply_univ] at hF
    exact hpos.ne' hF
  obtain ⟨t, ht0, httop, W', hW'1, hW'W, hβW'⟩ :=
    local_haar_unique (UpqT P Q) m hm (betaH P Q lam) (cayS (D0 P Q)) hW h1W hinv hcpt hne
  obtain ⟨V, hVW', hVo, h1V⟩ := mem_nhds_iff.1 hW'1
  have hβV : (betaH P Q lam).restrict V = t • m.restrict V := by
    have h := congrArg (fun μ : Measure (UpqT P Q) => μ.restrict V) hβW'
    simp only [Measure.restrict_restrict_of_subset hVW', Measure.restrict_smul] at h
    exact h
  have key : ∀ S ⊆ V, betaH P Q lam S = t * m S := by
    intro S hSV
    have h := congrArg (fun μ : Measure (UpqT P Q) => μ S) hβV
    simp only [smul_apply, Measure.restrict_apply' hVo.measurableSet,
      Set.inter_eq_left.2 hSV, smul_eq_mul] at h
    exact h

  set D : Set (lieU P Q) := D0 P Q ∩ cayF P Q ⁻¹' V with hDdef
  have hDnhds : D ∈ 𝓝 (0 : lieU P Q) := by
    have hc : ContinuousAt (cayF P Q) 0 :=
      (continuousOn_cayF (P := P) (Q := Q)).continuousAt
        ((isOpen_cell_domain (P := P) (Q := Q)).mem_nhds h00)
    have hV0 : V ∈ 𝓝 (cayF P Q 0) := by
      rw [cayF_zero (P := P) (Q := Q)]
      exact hVo.mem_nhds h1V
    exact Filter.inter_mem ((isOpen_cell_domain (P := P) (Q := Q)).mem_nhds h00) (hc.preimage_mem_nhds hV0)
  have hDmeas : MeasurableSet D :=
    (isOpen_cell_domain (P := P) (Q := Q)).measurableSet.inter
      (measurable_cayF (P := P) (Q := Q) hVo.measurableSet)
  have hcayS : cayS D = cayS (D0 P Q) ∩ cayInv P Q ⁻¹' D := by
    ext g
    constructor
    · rintro ⟨X, hXD, hrel⟩
      refine ⟨⟨X, hXD.1, hrel⟩, ?_⟩
      show cayInv P Q g ∈ D
      rw [cayley_inverse_iff P Q g X hrel]
      exact hXD
    · rintro ⟨⟨X, -, hrel⟩, hgD⟩
      have hgX := cayley_inverse_iff P Q g X hrel
      refine ⟨X, ?_, hrel⟩
      rw [← hgX]
      exact hgD
  refine ⟨D, hDnhds, hDmeas, fun X => t⁻¹ * rhoH P Q X,
    (measurable_rhoH (P := P) (Q := Q)).const_mul _, ?_, ?_, ?_, ?_⟩
  · exact (ENNReal.continuous_const_mul (ENNReal.inv_ne_top.2 ht0)).continuousAt.comp
      (continuousAt_rhoH (P := P) (Q := Q) 0 h00)
  · exact mul_ne_zero (ENNReal.inv_ne_zero.2 httop) (rhoH_pos (P := P) (Q := Q) 0 h00)
  · exact ENNReal.mul_ne_top (ENNReal.inv_ne_top.2 ht0) ENNReal.ofReal_ne_top
  · ext A hA
    have hSV : cayInv P Q ⁻¹' A ∩ cayS D ⊆ V := by
      rintro g ⟨-, X, hXD, hrel⟩
      rw [← cayF_eq_of (P := P) (Q := Q) g X hrel]
      exact hXD.2
    have hSmeas : MeasurableSet (cayInv P Q ⁻¹' A ∩ cayS D) := by
      rw [hcayS]
      exact (cayley_inverse_measurable P Q hA).inter (hW.measurableSet.inter (cayley_inverse_measurable P Q hDmeas))
    have hpre : cayF P Q ⁻¹' (cayInv P Q ⁻¹' A ∩ cayS D) ∩ D0 P Q = A ∩ D := by
      ext X
      constructor
      · rintro ⟨⟨hXA, Y, hYD, hrel⟩, hX0⟩
        have h1 : cayInv P Q (cayF P Q X) = X := cayInv_cayF (P := P) (Q := Q) X hX0
        have h2 : cayInv P Q (cayF P Q X) = Y := cayley_inverse_iff P Q _ Y hrel
        have hXY : X = Y := h1.symm.trans h2
        refine ⟨?_, by rw [hXY]; exact hYD⟩
        have hA' : cayInv P Q (cayF P Q X) ∈ A := hXA
        rwa [h1] at hA'
      · rintro ⟨hXA, hXD⟩
        refine ⟨⟨?_, X, hXD, cayF_spec (P := P) (Q := Q) X hXD.1⟩, hXD.1⟩
        show cayInv P Q (cayF P Q X) ∈ A
        rw [cayInv_cayF (P := P) (Q := Q) X hXD.1]
        exact hXA
    have hβS : betaH P Q lam (cayInv P Q ⁻¹' A ∩ cayS D) = ∫⁻ X in A ∩ D, rhoH P Q X ∂lam := by
      rw [betaH_apply (P := P) (Q := Q) lam _ hSmeas, hpre]
    rw [Measure.map_apply (cayley_inverse_measurable P Q) hA, Measure.restrict_apply (cayley_inverse_measurable P Q hA),
      withDensity_apply _ hA, Measure.restrict_restrict hA]
    calc m (cayInv P Q ⁻¹' A ∩ cayS D)
        = t⁻¹ * (t * m (cayInv P Q ⁻¹' A ∩ cayS D)) := by
          rw [← mul_assoc, ENNReal.inv_mul_cancel ht0 httop, one_mul]
      _ = t⁻¹ * ∫⁻ X in A ∩ D, rhoH P Q X ∂lam := by rw [← key _ hSV, hβS]
      _ = ∫⁻ X in A ∩ D, t⁻¹ * rhoH P Q X ∂lam :=
          (lintegral_const_mul _ (measurable_rhoH (P := P) (Q := Q))).symm

end HcHDC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExHaar =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensEx =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensEx", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.SumLPresHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExCayH\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExTop\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExHaar\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExOm\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayleyInverseMeasurable\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ContinuousAdelicGL2Det\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PsiInv\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PsiSmoothHolds\nimport Mathlib.Algebra.Order.Archimedean.Real.Hom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExCayK\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AprimeInfW

open MeasureTheory Topology Metric Matrix Formalism.MainNotions.S Formalism.MainNotions.S.Gauge
open scoped ENNReal

namespace CDX

section Perm

variable {n : ℕ} (ε : Fin n → Bool)

abbrev pP : ℕ := Fintype.card {i : Fin n // ε i = true}

abbrev pQ : ℕ := Fintype.card {i : Fin n // ¬ ε i = true}

def eS : Fin n ≃ Fin (pP ε) ⊕ Fin (pQ ε) :=
  (Equiv.sumCompl (fun i : Fin n => ε i = true)).symm.trans
    (Equiv.sumCongr (Fintype.equivFin _) (Fintype.equivFin _))

theorem eS_symm_inl (a : Fin (pP ε)) : ε ((eS ε).symm (Sum.inl a)) = true := by
  unfold eS
  first
    | (simp; done)
    | (simp; exact ((Fintype.equivFin _).symm a).2)

theorem eS_symm_inr (b : Fin (pQ ε)) : ε ((eS ε).symm (Sum.inr b)) = false := by
  unfold eS
  first
    | (simp; done)
    | (simpa using ((Fintype.equivFin _).symm b).2)

abbrev rA : Matrix (Fin n) (Fin n) ℂ ≃ₐ[ℂ] Matrix (Fin (pP ε) ⊕ Fin (pQ ε)) (Fin (pP ε) ⊕ Fin (pQ ε)) ℂ :=
  reindexAlgEquiv ℂ ℂ (eS ε)

theorem rA_conj (M : Matrix (Fin n) (Fin n) ℂ) : (rA ε M)ᴴ = rA ε Mᴴ := by
  ext i j
  simp [Matrix.conjTranspose_apply]

theorem rA_Jm : rA ε (Formalism.REAL.Jm ε) = HcS.UG.Jpq (pP ε) (pQ ε) := by
  ext i j
  simp only [rA, reindexAlgEquiv_apply, Matrix.reindex_apply, Matrix.submatrix_apply, Formalism.REAL.Jm, HcS.UG.Jpq,
    Matrix.diagonal_apply, (eS ε).symm.injective.eq_iff]
  rcases i with a | a <;> rcases j with b | b
  · by_cases h : a = b <;> simp [h, eS_symm_inl]
  · simp
  · simp
  · by_cases h : a = b <;> simp [h, eS_symm_inr]

theorem rA_mem_iff (M : Matrix (Fin n) (Fin n) ℂ) :
    (rA ε M)ᴴ * HcS.UG.Jpq (pP ε) (pQ ε) * rA ε M = HcS.UG.Jpq (pP ε) (pQ ε) ↔ Formalism.REAL.inUJ ε M := by
  rw [rA_conj, ← rA_Jm, ← map_mul, ← map_mul, (rA ε).injective.eq_iff]
  rfl

theorem rA_skew_iff (M : Matrix (Fin n) (Fin n) ℂ) :
    (rA ε M)ᴴ * HcS.UG.Jpq (pP ε) (pQ ε) + HcS.UG.Jpq (pP ε) (pQ ε) * rA ε M = 0 ↔
      Mᴴ * Formalism.REAL.Jm ε + Formalism.REAL.Jm ε * M = 0 := by
  rw [rA_conj, ← rA_Jm, ← map_mul, ← map_mul, ← map_add (f := _), ← map_zero (rA ε), (rA ε).injective.eq_iff]

theorem continuous_rA : Continuous (rA ε) := by
  exact LinearMap.continuous_of_finiteDimensional (rA ε).toLinearMap

theorem continuous_rA_symm : Continuous (rA ε).symm := by
  exact LinearMap.continuous_of_finiteDimensional (rA ε).symm.toLinearMap

def rM : Matrix (Fin n) (Fin n) ℂ →* Matrix (Fin (pP ε) ⊕ Fin (pQ ε)) (Fin (pP ε) ⊕ Fin (pQ ε)) ℂ where
  toFun := rA ε
  map_one' := map_one _
  map_mul' := map_mul _

def rMs : Matrix (Fin (pP ε) ⊕ Fin (pQ ε)) (Fin (pP ε) ⊕ Fin (pQ ε)) ℂ →* Matrix (Fin n) (Fin n) ℂ where
  toFun := (rA ε).symm
  map_one' := map_one _
  map_mul' := map_mul _

def phiF (g : Formalism.REAL.UJ ε) : HcS.BasicNotions.UpqT (pP ε) (pQ ε) :=
  ((⟨Units.map (rM ε) g.1, by
      rw [HcInf.mem_Upq_iff]; exact (rA_mem_iff ε _).2 g.2⟩ : HcS.UG.Upq (pP ε) (pQ ε)) :
        HcS.BasicNotions.UpqT (pP ε) (pQ ε))

theorem phiB_mem (h : HcS.BasicNotions.UpqT (pP ε) (pQ ε)) :
    Formalism.REAL.inUJ ε ((rA ε).symm (HcS.BasicNotions.UpqT.mat h)) := by
  rw [← rA_mem_iff, AlgEquiv.apply_symm_apply]
  exact (HcInf.mem_Upq_iff _ _ _).1 (h : HcS.UG.Upq (pP ε) (pQ ε)).2

def phiB (h : HcS.BasicNotions.UpqT (pP ε) (pQ ε)) : Formalism.REAL.UJ ε :=
  ⟨Units.map (rMs ε) (HcInf.toS _ _ h).1, phiB_mem ε h⟩

theorem phiF_mat (g : Formalism.REAL.UJ ε) :
    HcS.BasicNotions.UpqT.mat (phiF ε g) = rA ε (((g : (Matrix (Fin n) (Fin n) ℂ)ˣ)) : Matrix (Fin n) (Fin n) ℂ) := rfl

theorem phiB_val (h : HcS.BasicNotions.UpqT (pP ε) (pQ ε)) :
    (((phiB ε h : Formalism.REAL.UJ ε) : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ) =
      (rA ε).symm (HcS.BasicNotions.UpqT.mat h) := rfl

theorem mat_mul' (a b : HcS.BasicNotions.UpqT (pP ε) (pQ ε)) :
    HcS.BasicNotions.UpqT.mat (a * b) = HcS.BasicNotions.UpqT.mat a * HcS.BasicNotions.UpqT.mat b := rfl

def phiU : Formalism.REAL.UJ ε ≃* HcS.BasicNotions.UpqT (pP ε) (pQ ε) where
  toFun := phiF ε
  invFun := phiB ε
  left_inv g := by
    apply Subtype.ext; apply Units.ext
    rw [phiB_val, phiF_mat]
    exact (rA ε).symm_apply_apply _
  right_inv h := by
    apply (HcInf.isClosedEmbedding_mat _ _).injective
    rw [phiF_mat, phiB_val]
    exact (rA ε).apply_symm_apply _
  map_mul' a b := by
    apply (HcInf.isClosedEmbedding_mat _ _).injective
    rw [mat_mul', phiF_mat, phiF_mat, phiF_mat, Subgroup.coe_mul, Units.val_mul]
    exact map_mul (rA ε) _ _

theorem continuous_phiF : Continuous (phiF ε) := by
  first
  | exact (HcInf.isClosedEmbedding_mat _ _).isInducing.continuous_iff.mpr
      ((continuous_rA ε).comp (Units.continuous_val.comp continuous_subtype_val))

theorem continuous_toS : Continuous fun h : HcS.BasicNotions.UpqT (pP ε) (pQ ε) =>
    ((HcInf.toS _ _ h : HcS.UG.Upq (pP ε) (pQ ε)) : GL (Fin (pP ε) ⊕ Fin (pQ ε)) ℂ) :=
  continuous_subtype_val

theorem continuous_phiB : Continuous (phiB ε) :=
  ((Continuous.units_map (rMs ε) (continuous_rA_symm ε)).comp (continuous_toS ε)).subtype_mk _

def phiC : Formalism.REAL.UJ ε ≃ₜ* HcS.BasicNotions.UpqT (pP ε) (pQ ε) where
  toMulEquiv := phiU ε
  continuous_toFun := continuous_phiF ε
  continuous_invFun := continuous_phiB ε

def psiL : gLie ε →ₗ[ℝ] HcS.BasicNotions.lieU (pP ε) (pQ ε) where
  toFun x := ⟨rA ε (unrealify (x : EuclideanSpace ℝ (Fin n × Fin n × Bool))), by
    show (rA ε _)ᴴ * HcS.UG.Jpq (pP ε) (pQ ε) + HcS.UG.Jpq (pP ε) (pQ ε) * rA ε _ = 0
    rw [rA_skew_iff]
    exact lieSkew_holds n ε _ x.2⟩
  map_add' x y := by
    apply Subtype.ext
    show rA ε (unrLin n ((x + y : gLie ε) : EuclideanSpace ℝ _)) = rA ε (unrLin n x) + rA ε (unrLin n y)
    rw [Submodule.coe_add, map_add (f := _), map_add (f := _)]
  map_smul' c x := by
    apply Subtype.ext
    ext i j
    apply Complex.ext <;> simp [unrealify]

theorem psiL_val (x : gLie ε) :
    (psiL ε x).1 =
      rA ε (unrealify (x : EuclideanSpace ℝ (Fin n × Fin n × Bool))) := rfl

theorem psiL_bij : Function.Bijective (psiL ε) := by
  constructor
  · intro x y hxy
    have h1 : rA ε (unrealify (x : EuclideanSpace ℝ (Fin n × Fin n × Bool))) =
        rA ε (unrealify (y : EuclideanSpace ℝ (Fin n × Fin n × Bool))) := by
      rw [← psiL_val, ← psiL_val, hxy]
    have h2 := (rA ε).injective h1
    apply Subtype.ext
    rw [← re_unr n (x : EuclideanSpace ℝ _), ← re_unr n (y : EuclideanSpace ℝ _)]
    exact congrArg (reLin n) h2
  · intro Y
    set X := (rA ε).symm Y.1 with hX
    have hY : Y.1ᴴ * HcS.UG.Jpq (pP ε) (pQ ε) + HcS.UG.Jpq (pP ε) (pQ ε) * Y.1 = 0 :=
      Y.2
    have hsk : Xᴴ * Formalism.REAL.Jm ε + Formalism.REAL.Jm ε * X = 0 := by
      rw [← rA_skew_iff, hX, AlgEquiv.apply_symm_apply]; exact hY
    refine ⟨⟨(WithLp.equiv 2 _).symm (realifyFun X), skewLie_holds n ε X hsk⟩, ?_⟩
    apply Subtype.ext
    rw [psiL_val]
    show rA ε (unrealify ((WithLp.equiv 2 _).symm (realifyFun X))) = _
    rw [_root_.Formalism.MainNotions.S.Gauge.unrealify_realify, hX, AlgEquiv.apply_symm_apply]

def psiC : gLie ε ≃L[ℝ] HcS.BasicNotions.lieU (pP ε) (pQ ε) :=
  (LinearEquiv.ofBijective (psiL ε) (psiL_bij ε)).toContinuousLinearEquiv

theorem psiC_val (x : gLie ε) :
    (psiC ε x).1 =
      rA ε (unrealify (x : EuclideanSpace ℝ (Fin n × Fin n × Bool))) := rfl

theorem rel_iff (g : Formalism.REAL.UJ ε) (x : gLie ε) :
    HcS.BasicNotions.UpqT.mat (phiC ε g) * ((1 + 1) - (psiC ε x).1) =
        (1 + 1) + (psiC ε x).1 ↔
      (((g : (Matrix (Fin n) (Fin n) ℂ)ˣ)) : Matrix (Fin n) (Fin n) ℂ) *
          (2 - unrealify (x : EuclideanSpace ℝ (Fin n × Fin n × Bool))) =
        2 + unrealify (x : EuclideanSpace ℝ (Fin n × Fin n × Bool)) := by
  have e1 : HcS.BasicNotions.UpqT.mat (phiC ε g) = rA ε (((g : (Matrix (Fin n) (Fin n) ℂ)ˣ)) : Matrix (Fin n) (Fin n) ℂ) :=
    phiF_mat ε g
  rw [e1, psiC_val, one_add_one_eq_two, ← map_ofNat (rA ε) 2, ← map_sub, ← map_mul, ← map_add (f := _),
    (rA ε).injective.eq_iff]

theorem isUnit_of_mem_cayley_domain (x : gLie ε) (hx : psiC ε x ∈ HcInf.D0 (pP ε) (pQ ε)) :
    IsUnit (2 - unrealify (x : EuclideanSpace ℝ (Fin n × Fin n × Bool))).det := by
  have h : IsUnit ((1 + 1) - ((psiC ε x : HcS.BasicNotions.lieU (pP ε) (pQ ε)) :
      Matrix (Fin (pP ε) ⊕ Fin (pQ ε)) (Fin (pP ε) ⊕ Fin (pQ ε)) ℂ)).det := hx
  rw [psiC_val] at h
  have e : (1 + 1 : Matrix (Fin (pP ε) ⊕ Fin (pQ ε)) (Fin (pP ε) ⊕ Fin (pQ ε)) ℂ) -
      rA ε (unrealify (x : EuclideanSpace ℝ (Fin n × Fin n × Bool))) =
      rA ε (2 - unrealify (x : EuclideanSpace ℝ (Fin n × Fin n × Bool))) := by
    rw [map_sub, map_ofNat, one_add_one_eq_two]
  rw [e] at h
  simpa [Matrix.det_reindex_self] using h

theorem cayR_eq (x : EuclideanSpace ℝ (Fin n × Fin n × Bool)) (g : Formalism.REAL.UJ ε)
    (h : (2 + unrealify x) * (2 - unrealify x)⁻¹ = (((g : (Matrix (Fin n) (Fin n) ℂ)ˣ)) : Matrix (Fin n) (Fin n) ℂ)) :
    cayR ε x = g := by
  have hc : IsUnit ((2 + unrealify x) * (2 - unrealify x)⁻¹) ∧
      Formalism.REAL.inUJ ε ((2 + unrealify x) * (2 - unrealify x)⁻¹) := by
    rw [h]; exact ⟨(g : (Matrix (Fin n) (Fin n) ℂ)ˣ).isUnit, g.2⟩
  unfold cayR
  rw [dite_eq_left hc]
  apply Subtype.ext; apply Units.ext
  rw [IsUnit.unit_spec]; exact h

theorem cay_mat (x : EuclideanSpace ℝ (Fin n × Fin n × Bool)) (M : Matrix (Fin n) (Fin n) ℂ)
    (hu : IsUnit (2 - unrealify x).det) (h : M * (2 - unrealify x) = 2 + unrealify x) :
    (2 + unrealify x) * (2 - unrealify x)⁻¹ = M := by
  rw [← h, Matrix.mul_nonsing_inv_cancel_right _ _ hu]

end Perm

end CDX


open CDX in
theorem cayDensEx_holds : CayDensEx := by
  intro n ε
  classical
  set φ := phiC ε with hφ
  set ψ := psiC ε with hψ
  set φM := φ.toHomeomorph.toMeasurableEquiv with hφM
  set ψM := ψ.toHomeomorph.toMeasurableEquiv with hψM
  set m : Measure (HcS.BasicNotions.UpqT (pP ε) (pQ ε)) := (Formalism.REAL.muG ε).map φM with hm
  have hmHaar : m.IsHaarMeasure := ContinuousMulEquiv.isHaarMeasure_map (Formalism.REAL.muG ε) φ
  set lam : Measure (HcS.BasicNotions.lieU (pP ε) (pQ ε)) := (volume : Measure (gLie ε)).map ψM with hlam
  have hlamHaar : lam.IsAddHaarMeasure := ψ.isAddHaarMeasure_map volume
  have hDensity := @HcHDC.cayDensU (pP ε) (pQ ε) m hmHaar lam hlamHaar
  obtain ⟨D, hD, -, f, hfm, hfc, -, hfT, hmap⟩ := hDensity
  have hψ0 : ψ 0 = 0 := map_zero ψ
  have hψc : ContinuousAt ψ 0 := ψ.continuous.continuousAt
  have hN1 : ψ ⁻¹' D ∈ 𝓝 (0 : gLie ε) := hψc.preimage_mem_nhds (by rw [hψ0]; exact hD)
  have hN2 : ψ ⁻¹' HcInf.D0 (pP ε) (pQ ε) ∈ 𝓝 (0 : gLie ε) :=
    hψc.preimage_mem_nhds (by rw [hψ0]; exact HcInf.isOpen_cell_domain.mem_nhds HcInf.zero_mem_cayley_domain)
  have hN3 : ψ ⁻¹' {X | f X ≠ ⊤} ∈ 𝓝 (0 : gLie ε) :=
    hψc.preimage_mem_nhds (by rw [hψ0]; exact hfc.eventually_ne hfT)
  obtain ⟨r₀, hr₀, hball⟩ := Metric.mem_nhds_iff.1 (Filter.inter_mem (Filter.inter_mem hN1 hN2) hN3)
  refine ⟨r₀, hr₀, fun x => (f (ψ x)).toReal, ?_, ?_, ?_⟩
  · exact ENNReal.measurable_toReal.comp (hfm.comp ψ.continuous.measurable)
  · have h1 : ContinuousAt (fun x => f (ψ x)) 0 :=
      ContinuousAt.comp (x := 0) (by rw [hψ0]; exact hfc) hψc
    have h2 : ContinuousAt ENNReal.toReal (f (ψ 0)) := ENNReal.continuousAt_toReal (by rw [hψ0]; exact hfT)
    exact ContinuousAt.comp (f := fun x => f (ψ x)) (x := 0) h2 h1
  · intro S hS hSm
    have hpt : ∀ x ∈ S, ψ x ∈ D ∧ ψ x ∈ HcInf.D0 (pP ε) (pQ ε) ∧ f (ψ x) ≠ ⊤ := fun x hx =>
      ⟨(hball (hS hx)).1.1, (hball (hS hx)).1.2, (hball (hS hx)).2⟩
    set T := ψM '' S with hTdef
    have hT : MeasurableSet T := ψM.measurableSet_image.2 hSm
    have hTD : T ⊆ D := by rintro _ ⟨x, hx, rfl⟩; exact (hpt x hx).1

    have hset : φM ⁻¹' HcInf.cayS T =
        (fun x : gLie ε => cayR ε (x : EuclideanSpace ℝ (Fin n × Fin n × Bool))) '' S := by
      ext g
      constructor
      · rintro ⟨X, ⟨x, hx, rfl⟩, hgX⟩
        refine ⟨x, hx, ?_⟩
        have hu := isUnit_of_mem_cayley_domain ε x (hpt x hx).2.1
        exact cayR_eq ε _ g (cay_mat _ _ hu ((rel_iff ε g x).1 hgX))
      · rintro ⟨x, hx, rfl⟩
        have hD0 := (hpt x hx).2.1
        have hu := isUnit_of_mem_cayley_domain ε x hD0
        set h := HcInf.cayF (pP ε) (pQ ε) (ψ x) with hh
        have hs := HcInf.cayF_spec (ψ x) hD0
        have hrel := (rel_iff ε (φ.symm h) x).1 (by rw [ContinuousMulEquiv.apply_symm_apply]; exact hs)
        have hc : cayR ε (x : EuclideanSpace ℝ (Fin n × Fin n × Bool)) = φ.symm h :=
          cayR_eq ε _ _ (cay_mat _ _ hu hrel)
        refine ⟨ψ x, ⟨x, hx, rfl⟩, ?_⟩
        show HcS.BasicNotions.UpqT.mat (φ (cayR ε (x : EuclideanSpace ℝ (Fin n × Fin n × Bool)))) * _ = _
        rw [hc, ContinuousMulEquiv.apply_symm_apply]
        exact hs
    have hsetD : HcInf.cayInv (pP ε) (pQ ε) ⁻¹' T ∩ HcInf.cayS D = HcInf.cayS T := by
      ext g
      constructor
      · rintro ⟨hgT, X, hXD, hgX⟩
        have e := HcInf.cayley_inverse_iff _ _ g X hgX
        exact ⟨X, e ▸ hgT, hgX⟩
      · rintro ⟨X, hXT, hgX⟩
        have e := HcInf.cayley_inverse_iff _ _ g X hgX
        exact ⟨show HcInf.cayInv _ _ g ∈ T from e ▸ hXT, X, hTD hXT, hgX⟩
    have hmeasT := HcInf.cayley_inverse_measurable (pP ε) (pQ ε) hT
    calc Formalism.REAL.muG ε ((fun x : gLie ε => cayR ε (x : EuclideanSpace ℝ (Fin n × Fin n × Bool))) '' S)
        = m (HcInf.cayS T) := by rw [hm, MeasurableEquiv.map_apply, hset]
      _ = ((m.restrict (HcInf.cayS D)).map (HcInf.cayInv (pP ε) (pQ ε))) T := by
          rw [Measure.map_apply (HcInf.cayley_inverse_measurable _ _) hT, Measure.restrict_apply hmeasT, hsetD]
      _ = ∫⁻ X in T, f X ∂lam := by
          rw [hmap, withDensity_apply _ hT, Measure.restrict_restrict hT, Set.inter_eq_left.2 hTD]
      _ = ∫⁻ x in S, f (ψ x) := by
          rw [hlam, MeasurableEquiv.restrict_map, hTdef, MeasurableEquiv.preimage_image, lintegral_map_equiv]
          rfl
      _ = ∫⁻ x in S, ENNReal.ofReal ((f (ψ x)).toReal) := by
          refine setLIntegral_congr_fun hSm (fun x hx => ?_)
          exact (ENNReal.ofReal_toReal (hpt x hx).2.2).symm

end PI.AprimeInfW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensEx =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayValId =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayValId", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.SumLPresHolds\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ChartChg\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PsiInv\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PsiSmoothHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AprimeInfW

open MeasureTheory Topology Metric Filter Formalism.MainNotions.S Formalism.MainNotions.S.Gauge
open scoped ENNReal

namespace CVI

theorem ratio_tendsto {E : Type} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
    [MeasurableSpace E] [BorelSpace E] (μ : Measure E) [μ.IsAddHaarMeasure] (g : E → ℝ) (hg : ContinuousAt g 0) :
    Tendsto (fun ρ : ℝ => (∫⁻ p in ball (0 : E) ρ, ENNReal.ofReal (g p) ∂μ).toReal / (μ (ball (0 : E) ρ)).toReal)
      (𝓝[>] 0) (𝓝 (max (g 0) 0)) := by
  set c := max (g 0) 0 with hc
  have hc0 : 0 ≤ c := le_max_right _ _
  have hofr : ∀ p, ENNReal.ofReal (g p) = ENNReal.ofReal (max (g p) 0) := by
    intro p
    rcases le_total (g p) 0 with h | h
    · rw [max_eq_right h, ENNReal.ofReal_of_nonpos h, ENNReal.ofReal_zero]
    · rw [max_eq_left h]
  rw [Metric.tendsto_nhdsWithin_nhds]
  intro ε hε
  obtain ⟨δ, hδ, hδg⟩ := Metric.continuousAt_iff.1 hg (ε / 2) (by linarith)
  refine ⟨δ, hδ, fun ρ hρ hρδ => ?_⟩
  have hρ0 : 0 < ρ := hρ
  have hρδ' : ρ < δ := by
    rw [Real.dist_eq, sub_zero, abs_of_pos hρ0] at hρδ
    exact hρδ
  have hbd : ∀ p ∈ ball (0 : E) ρ, |max (g p) 0 - c| < ε / 2 := by
    intro p hp
    have h1 : dist p 0 < δ := lt_trans (mem_ball.1 hp) hρδ'
    have h2 := hδg h1
    rw [Real.dist_eq] at h2
    exact lt_of_le_of_lt (abs_max_sub_max_le_abs _ _ _) h2
  have hBpos : μ (ball (0 : E) ρ) ≠ 0 := (measure_ball_pos μ 0 hρ0).ne'
  have hBfin : μ (ball (0 : E) ρ) ≠ ⊤ := measure_ball_lt_top.ne
  have hBr : 0 < (μ (ball (0 : E) ρ)).toReal := ENNReal.toReal_pos hBpos hBfin
  have hup : ∫⁻ p in ball (0 : E) ρ, ENNReal.ofReal (g p) ∂μ ≤
      ENNReal.ofReal (c + ε / 2) * μ (ball (0 : E) ρ) := by
    rw [← setLIntegral_const]
    refine setLIntegral_mono' measurableSet_ball fun p hp => ?_
    rw [hofr]
    apply ENNReal.ofReal_le_ofReal
    have := hbd p hp
    rw [abs_lt] at this
    linarith
  have hlo : ENNReal.ofReal (c - ε / 2) * μ (ball (0 : E) ρ) ≤
      ∫⁻ p in ball (0 : E) ρ, ENNReal.ofReal (g p) ∂μ := by
    rw [← setLIntegral_const]
    refine setLIntegral_mono' measurableSet_ball fun p hp => ?_
    rw [hofr]
    apply ENNReal.ofReal_le_ofReal
    have := hbd p hp
    rw [abs_lt] at this
    linarith
  have hfin : ENNReal.ofReal (c + ε / 2) * μ (ball (0 : E) ρ) ≠ ⊤ :=
    ENNReal.mul_ne_top ENNReal.ofReal_ne_top hBfin
  have hup' := ENNReal.toReal_mono hfin hup
  have hlo' := ENNReal.toReal_mono (ne_top_of_le_ne_top hfin hup) hlo
  rw [ENNReal.toReal_mul, ENNReal.toReal_ofReal (by linarith)] at hup'
  rw [ENNReal.toReal_mul] at hlo'
  have hlo'' : (c - ε / 2) * (μ (ball (0 : E) ρ)).toReal ≤
      (∫⁻ p in ball (0 : E) ρ, ENNReal.ofReal (g p) ∂μ).toReal := by
    refine le_trans ?_ hlo'
    apply mul_le_mul_of_nonneg_right _ hBr.le
    rw [ENNReal.toReal_ofReal']
    exact le_max_left _ _
  have hA1 : c - ε / 2 ≤ (∫⁻ p in ball (0 : E) ρ, ENNReal.ofReal (g p) ∂μ).toReal / (μ (ball (0 : E) ρ)).toReal := by
    rw [le_div_iff₀ hBr]
    exact hlo''
  have hA2 : (∫⁻ p in ball (0 : E) ρ, ENNReal.ofReal (g p) ∂μ).toReal / (μ (ball (0 : E) ρ)).toReal ≤ c + ε / 2 := by
    rw [div_le_iff₀ hBr]
    exact hup'
  rw [Real.dist_eq, abs_lt]
  constructor <;> linarith

theorem expDens_gen {n : ℕ} (ε : Fin n → Bool) (r₀ : ℝ) (hr₀ : 0 < r₀) (f₀ : gLie ε → ℝ) (hfm : Measurable f₀)
    (hfc : ContinuousAt f₀ 0)
    (hf : ∀ S ⊆ ball (0 : gLie ε) r₀, MeasurableSet S →
        Formalism.REAL.muG ε ((fun x : gLie ε => cayR ε (x : EuclideanSpace ℝ (Fin n × Fin n × Bool))) '' S) =
          ∫⁻ x in S, ENNReal.ofReal (f₀ x))
    (m h : Submodule ℝ (EuclideanSpace ℝ (Fin n × Fin n × Bool))) (hmh : m ⊔ h = gLie ε)
    (horth : ∀ x ∈ m, ∀ y ∈ h, inner ℝ x y = 0)
    (ι η : Type) [Fintype ι] [Fintype η] (L₀ : EuclideanSpace ℝ ι ≃ₗᵢ[ℝ] m) (L₁ : EuclideanSpace ℝ η ≃ₗᵢ[ℝ] h) :
    ∃ r : ℝ, 0 < r ∧ ∃ D : EuclideanSpace ℝ ι × EuclideanSpace ℝ η → ℝ,
      ContinuousAt D 0 ∧ D 0 = f₀ 0 ∧ Measurable D ∧
      ∀ A ⊆ ball (0 : EuclideanSpace ℝ ι × EuclideanSpace ℝ η) r, MeasurableSet A →
        Formalism.REAL.muG ε ((fun p => expR ε (L₀ p.1 : EuclideanSpace ℝ (Fin n × Fin n × Bool)) *
          expR ε (L₁ p.2 : EuclideanSpace ℝ (Fin n × Fin n × Bool))) '' A) =
        ∫⁻ p in A, ENNReal.ofReal (D p) := by

  obtain ⟨-, hpres⟩ := sumLPres_holds n ε m h hmh horth ι η L₀ L₁
  set Ls := sumL ε m h hmh L₀ L₁ with hLs
  have hLc : Continuous Ls := by
    set_option synthInstance.maxHeartbeats 200000 in
      exact Ls.continuous_of_finiteDimensional
  have hL0 : Ls 0 = 0 := map_zero Ls
  have hnorm : ∀ p, ‖Ls p‖ ≤ 2 * ‖p‖ := by
    intro p
    have e : ‖Ls p‖ = ‖(L₀ p.1 : EuclideanSpace ℝ (Fin n × Fin n × Bool)) + (L₁ p.2 : _)‖ := rfl
    rw [e]
    calc _ ≤ ‖(L₀ p.1 : EuclideanSpace ℝ (Fin n × Fin n × Bool))‖ + ‖(L₁ p.2 : EuclideanSpace ℝ _)‖ := norm_add_le _ _
      _ = ‖p.1‖ + ‖p.2‖ := by
          have e1 : ‖(L₀ p.1 : EuclideanSpace ℝ (Fin n × Fin n × Bool))‖ = ‖p.1‖ := by
            rw [← LinearIsometryEquiv.norm_map L₀ p.1]; rfl
          have e2 : ‖(L₁ p.2 : EuclideanSpace ℝ (Fin n × Fin n × Bool))‖ = ‖p.2‖ := by
            rw [← LinearIsometryEquiv.norm_map L₁ p.2]; rfl
          rw [e1, e2]
      _ ≤ ‖p‖ + ‖p‖ := add_le_add (norm_fst_le p) (norm_snd_le p)
      _ = 2 * ‖p‖ := by ring
  have hC : ∀ S ⊆ ball (0 : EuclideanSpace ℝ ι × EuclideanSpace ℝ η) (r₀ / 2), MeasurableSet S →
      Formalism.REAL.muG ε ((fun p : EuclideanSpace ℝ ι × EuclideanSpace ℝ η =>
        cayR ε ((L₀ p.1 : EuclideanSpace ℝ (Fin n × Fin n × Bool)) +
          (L₁ p.2 : EuclideanSpace ℝ (Fin n × Fin n × Bool)))) '' S) = ∫⁻ p in S, ENNReal.ofReal (f₀ (Ls p)) := by
    intro S hS hSm
    obtain ⟨hIm, hint⟩ := hpres S hSm
    have hsub : Ls '' S ⊆ ball (0 : gLie ε) r₀ := by
      rintro _ ⟨q, hq, rfl⟩
      have hq' := hS hq
      rw [mem_ball_zero_iff] at hq' ⊢
      linarith [hnorm q]
    have e : (fun p : EuclideanSpace ℝ ι × EuclideanSpace ℝ η => cayR ε ((L₀ p.1 : EuclideanSpace ℝ (Fin n × Fin n × Bool)) +
        (L₁ p.2 : EuclideanSpace ℝ (Fin n × Fin n × Bool)))) '' S =
        (fun x : gLie ε => cayR ε (x : EuclideanSpace ℝ (Fin n × Fin n × Bool))) '' (Ls '' S) := by
      rw [Set.image_image]; rfl
    rw [e, hf _ hsub hIm]
    exact hint (fun x => ENNReal.ofReal (f₀ x)) (ENNReal.measurable_ofReal.comp hfm)
  have hFc : ContinuousAt (fun p => f₀ (Ls p)) 0 :=
    ContinuousAt.comp (x := 0) (show ContinuousAt f₀ (Ls 0) by rw [hL0]; exact hfc) hLc.continuousAt

  have hHaar : (volume : Measure (EuclideanSpace ℝ ι × EuclideanSpace ℝ η)).IsAddHaarMeasure := by
    rw [Measure.volume_eq_prod]; infer_instance
  have hL : CayLiftU :=
    cayLiftU_of (cayPsiU_of psiSmooth_holds psiMeas_holds (psiInv_of lieSkew_holds skewLie_holds caySkew_holds cayId_holds))
  obtain ⟨U, hU, ψ, ψ', hψ, hinj, hψ0, hψc, hψm, hψ'm, hdc, hd0, heq⟩ := hL n ε m h hmh horth ι η L₀ L₁
  have hr₁ : 0 < r₀ / 2 := by positivity
  have hpre : ψ ⁻¹' ball 0 (r₀ / 2) ∈ 𝓝 (0 : EuclideanSpace ℝ ι × EuclideanSpace ℝ η) :=
    hψc.preimage_mem_nhds (by rw [hψ0]; exact ball_mem_nhds _ hr₁)
  obtain ⟨r, hr, hrs⟩ := Metric.mem_nhds_iff.1 (Filter.inter_mem hU hpre)
  refine ⟨r, hr, fun p => |(ψ' p).det| * f₀ (Ls (ψ p)), ?_, ?_, ?_, ?_⟩
  · exact chart_change_cont (fun p => f₀ (Ls p)) ψ ψ' 0 hψc (by rw [hψ0]; exact hFc) hdc
  · simp only; rw [hd0, hψ0, hL0, one_mul]
  · exact (continuous_abs.measurable.comp (ContinuousLinearMap.continuous_det.measurable.comp hψ'm)).mul
      (hfm.comp (hLc.measurable.comp hψm))
  · intro A hA hAm
    have hAU : A ⊆ ball 0 r := hA
    have e : (fun p : EuclideanSpace ℝ ι × EuclideanSpace ℝ η =>
        expR ε (L₀ p.1 : EuclideanSpace ℝ (Fin n × Fin n × Bool)) *
          expR ε (L₁ p.2 : EuclideanSpace ℝ (Fin n × Fin n × Bool))) '' A =
        ((fun p => cayR ε ((L₀ p.1 : EuclideanSpace ℝ (Fin n × Fin n × Bool)) +
          (L₁ p.2 : EuclideanSpace ℝ (Fin n × Fin n × Bool)))) ∘ ψ) '' A := by
      refine Set.image_congr fun p hp => ?_
      exact (heq p (hrs (hAU hp)).1).symm
    rw [e]
    exact chart_change volume _ _ (ball 0 (r₀ / 2)) (fun p => f₀ (Ls p)) hC ψ ψ' (ball 0 r)
      (fun p hp => (hψ p (hrs hp).1).mono fun q hq => (hrs hq).1) (hinj.mono fun q hq => (hrs hq).1)
      (by rintro _ ⟨q, hq, rfl⟩; exact (hrs hq).2) A hAU hAm

theorem expR_zero' {n : ℕ} (ε : Fin n → Bool) : expR ε (0 : EuclideanSpace ℝ (Fin n × Fin n × Bool)) = 1 := by
  unfold expR
  split_ifs with h
  · apply Subtype.ext
    apply Units.ext
    simp [unrealify_zero', NormedSpace.exp_zero]
  · rfl

end CVI


open CVI in
theorem cayValId_holds : CayValId := by
  intro n ε hG r₀ hr₀ f₀ hfm hfc hf
  classical
  let L₀ := (stdOrthonormalBasis ℝ (gLie ε)).repr.symm
  let L₁ := (stdOrthonormalBasis ℝ (⊥ : Submodule ℝ (EuclideanSpace ℝ (Fin n × Fin n × Bool)))).repr.symm
  have hmh : gLie ε ⊔ (⊥ : Submodule ℝ (EuclideanSpace ℝ (Fin n × Fin n × Bool))) = gLie ε := sup_bot_eq _
  have horth : ∀ x ∈ gLie ε, ∀ y ∈ (⊥ : Submodule ℝ (EuclideanSpace ℝ (Fin n × Fin n × Bool))), inner ℝ x y = 0 := by
    intro x _ y hy; rw [(Submodule.mem_bot ℝ).1 hy, inner_zero_right]
  obtain ⟨r, hr, D, hDc, hD0, -, hD⟩ := expDens_gen ε r₀ hr₀ f₀ hfm hfc hf _ _ hmh horth _ _ L₀ L₁
  obtain ⟨-, hpres⟩ := sumLPres_holds n ε _ _ hmh horth _ _ L₀ L₁
  set Ls := sumL ε _ _ hmh L₀ L₁ with hLs
  have hy0 : ∀ y, ((L₁ y : (⊥ : Submodule ℝ (EuclideanSpace ℝ (Fin n × Fin n × Bool)))) :
      EuclideanSpace ℝ (Fin n × Fin n × Bool)) = 0 := fun y => (Submodule.mem_bot ℝ).1 (L₁ y).2
  have hyz : ∀ y : EuclideanSpace ℝ (Fin (Module.finrank ℝ ↥(⊥ : Submodule ℝ (EuclideanSpace ℝ (Fin n × Fin n × Bool))))),
      y = 0 := fun y => by
    have h1 : L₁ y = 0 := Subtype.ext (hy0 y)
    have h2 := congrArg L₁.symm h1
    rwa [LinearIsometryEquiv.symm_apply_apply, map_zero] at h2
  have hLsv : ∀ p, ((Ls p : gLie ε) : EuclideanSpace ℝ (Fin n × Fin n × Bool)) =
      ((L₀ p.1 : gLie ε) : EuclideanSpace ℝ (Fin n × Fin n × Bool)) := fun p => by
    show ((L₀ p.1 : gLie ε) : EuclideanSpace ℝ (Fin n × Fin n × Bool)) + (L₁ p.2 : EuclideanSpace ℝ _) = _
    rw [hy0, add_zero]
  have hnorm : ∀ p, ‖Ls p‖ = ‖p‖ := fun p => by
    have e1 : ‖Ls p‖ = ‖L₀ p.1‖ := by
      show ‖((Ls p : gLie ε) : EuclideanSpace ℝ (Fin n × Fin n × Bool))‖ =
        ‖((L₀ p.1 : gLie ε) : EuclideanSpace ℝ (Fin n × Fin n × Bool))‖
      rw [hLsv]
    rw [e1, LinearIsometryEquiv.norm_map, Prod.norm_def, hyz p.2, norm_zero, max_eq_left (norm_nonneg _)]
  have hball : ∀ ρ, Ls '' ball 0 ρ = ball (0 : gLie ε) ρ := fun ρ => by
    ext x
    constructor
    · rintro ⟨p, hp, rfl⟩
      rw [mem_ball_zero_iff, hnorm]; exact mem_ball_zero_iff.1 hp
    · intro hx
      refine ⟨(L₀.symm x, 0), ?_, ?_⟩
      · have e : Ls (L₀.symm x, 0) = x := by
          apply Subtype.ext; rw [hLsv]; simp
        rw [mem_ball_zero_iff, ← hnorm, e]; exact mem_ball_zero_iff.1 hx
      · apply Subtype.ext; rw [hLsv]; simp
  have hexp : ∀ ρ, (fun p : EuclideanSpace ℝ (Fin (Module.finrank ℝ (gLie ε))) × EuclideanSpace ℝ (Fin (Module.finrank ℝ ↥(⊥ : Submodule ℝ (EuclideanSpace ℝ (Fin n × Fin n × Bool))))) =>
      expR ε ((L₀ p.1 : gLie ε) : EuclideanSpace ℝ (Fin n × Fin n × Bool)) *
        expR ε ((L₁ p.2 : (⊥ : Submodule ℝ (EuclideanSpace ℝ (Fin n × Fin n × Bool)))) :
          EuclideanSpace ℝ (Fin n × Fin n × Bool))) '' ball 0 ρ = expSet ε (ball 0 ρ) := fun ρ => by
    ext g
    constructor
    · rintro ⟨p, hp, rfl⟩
      refine ⟨Ls p, by rw [← hball]; exact ⟨p, hp, rfl⟩, ?_⟩
      dsimp only
      rw [hy0, expR_zero', mul_one, hLsv]
      show (((expR ε _ : Formalism.REAL.UJ ε) : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ) = _
      exact expR_val ε _ (lieSkew_holds n ε _ (L₀ p.1).2)
    · rintro ⟨x, hx, hgx⟩
      refine ⟨(L₀.symm x, 0), ?_, ?_⟩
      · rw [mem_ball_zero_iff, ← hnorm]
        have e : Ls (L₀.symm x, 0) = x := by
          apply Subtype.ext; rw [hLsv]; simp
        rw [e]; exact mem_ball_zero_iff.1 hx
      · simp only [hy0, expR_zero', mul_one, LinearIsometryEquiv.apply_symm_apply]
        apply Subtype.ext; apply Units.ext
        rw [expR_val ε _ (lieSkew_holds n ε _ x.2)]
        exact hgx.symm
  have hvol : ∀ ρ, volume (ball (0 : gLie ε) ρ) = volume (ball (0 : EuclideanSpace ℝ (Fin (Module.finrank ℝ (gLie ε))) × EuclideanSpace ℝ (Fin (Module.finrank ℝ ↥(⊥ : Submodule ℝ (EuclideanSpace ℝ (Fin n × Fin n × Bool)))))) ρ) :=
    fun ρ => by
      have := (hpres (ball 0 ρ) measurableSet_ball).2 (fun _ => 1) measurable_const
      rw [hball] at this
      simpa using this
  have hHaar : (volume : Measure (EuclideanSpace ℝ (Fin (Module.finrank ℝ (gLie ε))) × EuclideanSpace ℝ (Fin (Module.finrank ℝ ↥(⊥ : Submodule ℝ (EuclideanSpace ℝ (Fin n × Fin n × Bool))))))).IsAddHaarMeasure := by
    rw [Measure.volume_eq_prod]; infer_instance
  have hT := ratio_tendsto (volume : Measure (EuclideanSpace ℝ (Fin (Module.finrank ℝ (gLie ε))) × EuclideanSpace ℝ (Fin (Module.finrank ℝ ↥(⊥ : Submodule ℝ (EuclideanSpace ℝ (Fin n × Fin n × Bool))))))) D hDc
  have hlim : Tendsto (ratioAt ε) (𝓝[>] 0) (𝓝 (max (D 0) 0)) := by
    refine hT.congr' (Filter.eventuallyEq_of_mem (Ioo_mem_nhdsGT hr) fun ρ hρ => ?_)
    rw [ratioAt, ← hexp, hD _ (ball_subset_ball hρ.2.le) measurableSet_ball, hvol]
  have hu := tendsto_nhds_unique hG.1 hlim
  rw [hD0] at hu
  rcases le_total (f₀ 0) 0 with h | h
  · rw [max_eq_right h] at hu; linarith [hG.2]
  · rw [max_eq_left h] at hu; exact hu.symm

end PI.AprimeInfW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayValId =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ExpTop =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ExpTop", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.SumLPresHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PsiInv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.AprimeInfW

theorem expProdU_of_G (h : CayDensG) : ExpProdU := expProdU_of_cayProdU (cayProdU_of_G h)

theorem expProdU_of_hua (h1 : CayDensEx) (h2 : CayValId) : ExpProdU := expProdU_of_G (cayDensG_of h1 h2)

end PI.AprimeInfW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ExpTop =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExEnd =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExEnd", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ExpProdSt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensEx\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayValId\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ExpTop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.AprimeInfW

theorem expProdU_holds : ExpProdU := expProdU_of_hua cayDensEx_holds cayValId_holds

end PI.AprimeInfW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExEnd =====
