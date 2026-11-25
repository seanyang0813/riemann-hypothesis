module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.FundSetMeasStatement
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPfB
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPfI
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPfH

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPfJ, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPf

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPfJ =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPfJ", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.FundSetMeasStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPfB\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPfI\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPfH\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.AR.Up

open NumberField Complex Matrix Topology Filter MeasureTheory Set ReciprocityTheory.ChartRestriction.G.FD
  ReciprocityTheory.ChartRestriction.G.AR.Inst ReciprocityTheory.L2DbarEstimates ReciprocityTheory.ChartRestriction.G.AR.Up.OntoB ReciprocityTheory.ChartRestriction.G.AR.Up.OntoH
  ReciprocityTheory.ChartRestriction.G.AR.Up.OntoI
open scoped ComplexConjugate ContDiff ENNReal InnerProductSpace

noncomputable section

namespace OntoJ

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ}

def Dt (X : Data E r) (x0 : Frame X.Ψ r) (W : Frame X.Ψ r → ℝ≥0∞) (bb : ℝ) (la : Wt X.Ψ r)
    (F : V (nd X) → ℂ) (P : Frame X.Ψ r → ℂ) : Prop :=
  DifferentiableOn ℂ F (OmF X x0) ∧ InAt X x0 W bb F ∧ IsBEq X la P ∧
    ∀ z ∈ OmF X x0, P (cpt X x0 z) = F z


open Classical in
def TL {α : Type*} [MeasurableSpace α] (ν : Measure α) (f : α → ℂ) : Lp ℂ 2 ν :=
  if h : MemLp f 2 ν then h.toLp f else 0

variable (X : Data E r) (x0 : Frame X.Ψ r) {W : Frame X.Ψ r → ℝ≥0∞} {bb : ℝ} {la : Wt X.Ψ r}

theorem ka_cont : ContinuousOn (kaF X x0 bb) (OmF X x0) :=
  fun _ hz => (ka_contDiffAt bb hz).continuousAt.continuousWithinAt

theorem aemF (hWm : Measurable W) {F : V (nd X) → ℂ} (hF : ContinuousOn F (OmF X x0)) :
    AEMeasurable (fun z => ENNReal.ofReal (‖F z‖ ^ 2 / kaF X x0 bb z) * W (cpt X x0 z)) (muF X x0) := by
  have h1 : ContinuousOn (fun z => ENNReal.ofReal (‖F z‖ ^ 2 / kaF X x0 bb z)) (OmF X x0) :=
    ENNReal.continuous_ofReal.comp_continuousOn
      ((hF.norm.pow 2).div (ka_cont X x0) fun z _ => (Real.exp_pos _).ne')
  have h2 : Measurable fun z => W (cpt X x0 z) := hWm.comp (cd_cpt X x0).continuous.measurable
  have h3 : AEMeasurable (fun z => ENNReal.ofReal (‖F z‖ ^ 2 / kaF X x0 bb z) * W (cpt X x0 z))
      (volume.restrict (OmF X x0)) :=
    (h1.aemeasurable (isOpen_OmF X x0).measurableSet).mul h2.aemeasurable
  exact h3.mono_ac (withDensity_absolutelyContinuous _ _)

theorem Dt_zero : Dt X x0 W bb la (fun _ => 0) (fun _ => 0) := by
  refine ⟨differentiableOn_const _, ?_, ⟨differentiableOn_const _, fun _ _ _ _ => by simp⟩, fun _ _ => rfl⟩
  unfold InAt
  simp

theorem Dt_add (hWm : Measurable W) {F1 F2 : V (nd X) → ℂ} {P1 P2 : Frame X.Ψ r → ℂ}
    (h1 : Dt X x0 W bb la F1 P1) (h2 : Dt X x0 W bb la F2 P2) :
    Dt X x0 W bb la (fun z => F1 z + F2 z) (fun y => P1 y + P2 y) := by
  refine ⟨h1.1.add h2.1, ?_, ⟨h1.2.2.1.1.add h2.2.2.1.1, fun x hx b hb => ?_⟩, fun z hz => ?_⟩
  · unfold InAt
    refine lt_of_le_of_lt (lint_add_le (k := kaF X x0 bb) (fun z => Real.exp_pos _)
      (aemF X x0 hWm h1.1.continuousOn)) ?_
    exact ENNReal.add_lt_top.2 ⟨ENNReal.mul_lt_top (by simp) h1.2.1, ENNReal.mul_lt_top (by simp) h2.2.1⟩
  · beta_reduce
    rw [h1.2.2.1.2 x hx b hb, h2.2.2.1.2 x hx b hb]
    ring
  · beta_reduce
    rw [h1.2.2.2 z hz, h2.2.2.2 z hz]

theorem Dt_smul (a : ℂ) {F : V (nd X) → ℂ} {P : Frame X.Ψ r → ℂ} (h : Dt X x0 W bb la F P) :
    Dt X x0 W bb la (fun z => a * F z) (fun y => a * P y) := by
  refine ⟨h.1.const_mul a, ?_, ⟨h.2.2.1.1.const_mul a, fun x hx b hb => ?_⟩, fun z hz => ?_⟩
  · have heq : ∀ z, ENNReal.ofReal (‖a * F z‖ ^ 2 / kaF X x0 bb z) * W (cpt X x0 z) =
        ENNReal.ofReal (‖a‖ ^ 2) * (ENNReal.ofReal (‖F z‖ ^ 2 / kaF X x0 bb z) * W (cpt X x0 z)) := by
      intro z
      rw [norm_mul, mul_pow, mul_div_assoc, ENNReal.ofReal_mul (by positivity), mul_assoc]
    unfold InAt
    simp_rw [heq]
    rw [lintegral_const_mul' _ _ ENNReal.ofReal_ne_top]
    exact ENNReal.mul_lt_top ENNReal.ofReal_lt_top h.2.1
  · beta_reduce
    rw [h.2.2.1.2 x hx b hb]
    ring
  · beta_reduce
    rw [h.2.2.2 z hz]

end OntoJ

end

end ReciprocityTheory.ChartRestriction.G.AR.Up
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPfJ =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPf =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPf", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.FundSetMeasStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPfB\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPfH\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPfI\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPfJ\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.AR.Up

open NumberField Complex Matrix Topology Filter MeasureTheory Set ReciprocityTheory.ChartRestriction.G.FD
  ReciprocityTheory.ChartRestriction.G.AR.Inst ReciprocityTheory.L2DbarEstimates ReciprocityTheory.ChartRestriction.G.AR.Up.OntoB ReciprocityTheory.ChartRestriction.G.AR.Up.OntoH
  ReciprocityTheory.ChartRestriction.G.AR.Up.OntoI ReciprocityTheory.ChartRestriction.G.AR.Up.OntoJ
open scoped ComplexConjugate ContDiff ENNReal InnerProductSpace

noncomputable section

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

theorem onto_of (hPoin : PoinStatement (E := E)) (hExtF : ExtFStatement (E := E))
    (hGrad : RhGradFStatement (E := E)) (hExG : ExhaustGStatement (E := E))
    (hKa : KaUnfoldStatement (E := E)) (hPair : PairUnfoldStatement (E := E))
    (hBig : BigCellStatement (E := E)) (hConn : OmFConnStatement (E := E)) :
    OntoStatement (E := E) := by
  intro r X x0 hx0 hPD la W Ps g1 bb m hW hWL hbb4 hm hg1 hg1ne hPs hWPs hLev hSS FF hFF hfin
    f hf hfF
  obtain ⟨K, g, hg⟩ := hfin
  have hWm : Measurable W := hW.1
  have hPo := fun (F : V (nd X) → ℂ) (P : Frame X.Ψ r → ℂ)
      (hD : OntoJ.Dt X x0 W bb la F P) =>
    hPoin r X x0 hx0 hPD la W bb hW hWL hbb4 F P hD.1 hD.2.1 hD.2.2.1 hD.2.2.2
  have hae : ∀ᵐ z ∂(OntoI.nuF X x0 W FF), z ∈ FF := by
    have h1 : ∀ᵐ z ∂((muF X x0).restrict FF), z ∈ FF := ae_restrict_mem hFF.1
    first
      | exact (withDensity_absolutelyContinuous _ _).ae_le h1
  have hmemP : ∀ (F : V (nd X) → ℂ) (P : Frame X.Ψ r → ℂ), OntoJ.Dt X x0 W bb la F P →
      MemLp (fun z => poin X la P (cpt X x0 z)) 2 (OntoI.nuF X x0 W FF) := fun F P hD =>
    OntoI.memLp_of (r := r) (X := X) (x0 := x0) (W := W) (FF := FF) hWm
      (hPo F P hD).2.1.1.1.continuousOn ((hPo F P hD).2.2.1 FF hFF)
  have hmemf : MemLp (fun z => f (cpt X x0 z)) 2 (OntoI.nuF X x0 W FF) :=
    OntoI.memLp_of (r := r) (X := X) (x0 := x0) (W := W) (FF := FF) hWm
      hf.1.1.1.continuousOn hfF
  have hzero : MemLp (fun z => (0 : Frame X.Ψ r → ℂ) (cpt X x0 z)) 2 (OntoI.nuF X x0 W FF) := by
    refine (hmemP _ _ (OntoJ.Dt_zero X x0)).ae_eq (ae_of_all _ fun z => ?_)
    exact OntoI.poin_zero (r := r) (X := X) la _

  obtain ⟨M, hMmem⟩ : ∃ M : Submodule ℂ (Lp ℂ 2 (OntoI.nuF X x0 W FF)), ∀ v, v ∈ M ↔
      ∃ (F : V (nd X) → ℂ) (P : Frame X.Ψ r → ℂ) (hD : OntoJ.Dt X x0 W bb la F P),
        v = (hmemP F P hD).toLp _ := by
    refine ⟨{ carrier := {v | ∃ (F : V (nd X) → ℂ) (P : Frame X.Ψ r → ℂ)
                (hD : OntoJ.Dt X x0 W bb la F P), v = (hmemP F P hD).toLp _}
              add_mem' := by
                rintro _ _ ⟨F1, P1, hD1, rfl⟩ ⟨F2, P2, hD2, rfl⟩
                refine ⟨_, _, OntoJ.Dt_add (r := r) (X := X) (x0 := x0) hWm hD1 hD2, ?_⟩
                rw [← MemLp.toLp_add (hmemP F1 P1 hD1) (hmemP F2 P2 hD2)]
                refine MemLp.toLp_congr _ _ ?_
                filter_upwards [hae] with z hz
                have hx : cpt X x0 z ∈ X.dom := hFF.2.1 hz
                show poin X la P1 (cpt X x0 z) + poin X la P2 (cpt X x0 z) =
                  poin X la (fun y => P1 y + P2 y) (cpt X x0 z)
                exact (OntoI.poin_add (r := r) (X := X) la ((hPo F1 P1 hD1).1 _ hx)
                  ((hPo F2 P2 hD2).1 _ hx)).symm
              zero_mem' := ⟨fun _ => 0, fun _ => 0, OntoJ.Dt_zero X x0, by
                rw [← MemLp.toLp_zero hzero]
                exact MemLp.toLp_congr _ _
                  (ae_of_all _ fun z => (OntoI.poin_zero (r := r) (X := X) la (cpt X x0 z)).symm)⟩
              smul_mem' := by
                rintro a _ ⟨F, P, hD, rfl⟩
                refine ⟨_, _, OntoJ.Dt_smul (r := r) (X := X) (x0 := x0) a hD, ?_⟩
                rw [← MemLp.toLp_const_smul a (hmemP F P hD)]
                exact MemLp.toLp_congr _ _
                  (ae_of_all _ fun z => (OntoI.poin_smul (r := r) (X := X) la a P (cpt X x0 z)).symm) },
      fun v => Iff.rfl⟩

  obtain ⟨D2, hD2i⟩ : ∃ D2 : Submodule ℂ (Frame X.Ψ r → ℂ), ∀ h, h ∈ D2 ↔
      h ∈ Submodule.span ℂ (Set.range g) ∧
        MemLp (fun z => h (cpt X x0 z)) 2 (OntoI.nuF X x0 W FF) :=
    ⟨{ carrier := {h | h ∈ Submodule.span ℂ (Set.range g) ∧
          MemLp (fun z => h (cpt X x0 z)) 2 (OntoI.nuF X x0 W FF)}
       add_mem' := fun {a b} ha hb => ⟨Submodule.add_mem _ ha.1 hb.1, ha.2.add hb.2⟩
       zero_mem' := ⟨Submodule.zero_mem _, hzero⟩
       smul_mem' := fun c {h} hh => ⟨Submodule.smul_mem _ c hh.1, hh.2.const_smul c⟩ },
      fun h => Iff.rfl⟩
  have hD2m : ∀ h : D2, MemLp (fun z => (h : Frame X.Ψ r → ℂ) (cpt X x0 z)) 2
      (OntoI.nuF X x0 W FF) := fun h => ((hD2i h).1 h.2).2
  obtain ⟨Φ, hΦ⟩ : ∃ Φ : D2 →ₗ[ℂ] Lp ℂ 2 (OntoI.nuF X x0 W FF), ∀ h : D2,
      Φ h = (hD2m h).toLp _ :=
    ⟨{ toFun := fun h => (hD2m h).toLp _
       map_add' := fun a b => MemLp.toLp_add (hD2m a) (hD2m b)
       map_smul' := fun c a => MemLp.toLp_const_smul c (hD2m a) }, fun h => rfl⟩
  have hMle : M ≤ LinearMap.range Φ := by
    intro v hv
    obtain ⟨F, P, hD, rfl⟩ := (hMmem v).1 hv
    obtain ⟨c, hc⟩ := hg _ (hSS _ (hPo F P hD).2.1) ((hPo F P hD).2.2.1 FF hFF)
    obtain ⟨h, hhD, hhx⟩ : ∃ h : Frame X.Ψ r → ℂ, h ∈ Submodule.span ℂ (Set.range g) ∧
        ∀ x, h x = ∑ i, c i * g i x :=
      ⟨∑ i, c i • g i, Submodule.sum_mem _ fun i _ =>
        Submodule.smul_mem _ _ (Submodule.subset_span (Set.mem_range_self i)),
        fun x => by simp [Finset.sum_apply]⟩
    have hae2 : (fun z => h (cpt X x0 z)) =ᵐ[OntoI.nuF X x0 W FF]
        fun z => poin X la P (cpt X x0 z) := by
      filter_upwards [hae] with z hz
      rw [hhx, hc _ (hFF.2.1 hz)]
    have hmh : MemLp (fun z => h (cpt X x0 z)) 2 (OntoI.nuF X x0 W FF) :=
      (hmemP F P hD).ae_eq hae2.symm
    refine LinearMap.mem_range.2 ⟨⟨h, (hD2i h).2 ⟨hhD, hmh⟩⟩, ?_⟩
    rw [hΦ]
    exact MemLp.toLp_congr _ _ hae2
  haveI hfS : FiniteDimensional ℂ (Submodule.span ℂ (Set.range g)) := by
    first
      | exact FiniteDimensional.span_of_finite ℂ (Set.finite_range g)
  have hD2le : D2 ≤ Submodule.span ℂ (Set.range g) := by
    intro h hh
    exact ((hD2i h).1 hh).1
  haveI hfD2 : FiniteDimensional ℂ D2 := by
    first
      | exact Submodule.finiteDimensional_of_le hD2le
  haveI hfR : FiniteDimensional ℂ (LinearMap.range Φ) := by
    first
      | exact LinearMap.finiteDimensional_range Φ
  haveI hfM : FiniteDimensional ℂ M := by
    first
      | exact Submodule.finiteDimensional_of_le hMle
  haveI : CompleteSpace M := by
    first
      | exact FiniteDimensional.complete ℂ M

  obtain ⟨y, hyM, w, hw, hvyw⟩ : ∃ y ∈ M, ∃ w ∈ M.orthogonal,
      hmemf.toLp _ = y + w := by
    first
      | exact Submodule.exists_add_mem_mem_orthogonal _
  obtain ⟨F, P, hD, rfl⟩ := (hMmem y).1 hyM
  have hmemf0 : MemLp (fun z => f (cpt X x0 z) - poin X la P (cpt X x0 z)) 2
      (OntoI.nuF X x0 W FF) := hmemf.sub (hmemP F P hD)
  have hwLp : w = hmemf0.toLp _ := by
    change w = (hmemf.sub (hmemP F P hD)).toLp _
    rw [MemLp.toLp_sub hmemf (hmemP F P hD), hvyw]
    abel
  have horth : ∀ (F' : V (nd X) → ℂ) (P' : Frame X.Ψ r → ℂ), DifferentiableOn ℂ F' (OmF X x0) →
      InAt X x0 W bb F' → IsBEq X la P' → (∀ z ∈ OmF X x0, P' (cpt X x0 z) = F' z) →
      ∫ z in FF, poin X la P' (cpt X x0 z) *
          (starRingEnd ℂ) (f (cpt X x0 z) - poin X la P (cpt X x0 z)) *
          ((W (cpt X x0 z)).toReal : ℂ) ∂muF X x0 = 0 := by
    intro F' P' h1 h2 h3 h4
    have hD' : OntoJ.Dt X x0 W bb la F' P' := ⟨h1, h2, h3, h4⟩
    have hmem' : (hmemP F' P' hD').toLp _ ∈ M :=
      (hMmem _).2 ⟨F', P', hD', rfl⟩
    have h0 : ⟪(hmemP F' P' hD').toLp _, w⟫_ℂ = 0 := by
      first
        | exact Submodule.inner_right_of_mem_orthogonal hmem' hw
    have h0' : ⟪w, (hmemP F' P' hD').toLp _⟫_ℂ = 0 := by
      first
        | exact inner_eq_zero_symm.1 h0
    rw [hwLp,
      OntoI.inner_toLp (r := r) (X := X) (x0 := x0) (W := W) (FF := FF) hWm hmemf0
        (hmemP F' P' hD')] at h0'
    refine (integral_congr_ae ?_).trans h0'
    filter_upwards with z
    ring
  have hf0SS : (fun y => f y - poin X la P y) ∈ X.SS la :=
    hSS _ (OntoI.bdd_sub (r := r) (X := X) hf.1 (hPo F P hD).2.1)
  have hff0 : InFF X x0 W FF (fun y => f y - poin X la P y) := by
    have hcf : ContinuousOn (fun z => f (cpt X x0 z)) (OmF X x0) :=
      hf.1.1.1.continuousOn.comp
        ((OntoB.cd_cpt (r := r) (X := X) (x0 := x0)).continuous.continuousOn)
        (by intro z hz; exact hz)
    have h1 : AEMeasurable (fun z => ENNReal.ofReal (‖f (cpt X x0 z)‖ ^ 2 / (1 : ℝ))) (muF X x0) :=
      OntoH.aem_of (r := r) (X := X) (x0 := x0)
        (ENNReal.continuous_ofReal.comp_continuousOn ((hcf.norm.pow 2).div_const 1))
    have haem : AEMeasurable
        (fun z => ENNReal.ofReal (‖f (cpt X x0 z)‖ ^ 2 / (1 : ℝ)) * W (cpt X x0 z))
        ((muF X x0).restrict FF) :=
      (h1.mul (OntoH.measW (r := r) (X := X) (x0 := x0) hWm).aemeasurable).restrict
    have key := OntoI.lint_add_le (μ := (muF X x0).restrict FF) (a := fun z => f (cpt X x0 z))
      (b := fun z => -poin X la P (cpt X x0 z)) (k := fun _ => (1 : ℝ))
      (om := fun z => W (cpt X x0 z)) (fun _ => one_pos) haem
    simp only [div_one, norm_neg, ← sub_eq_add_neg] at key
    have hPF := (hPo F P hD).2.2.1 FF hFF
    show ∫⁻ z in FF, ENNReal.ofReal (‖f (cpt X x0 z) - poin X la P (cpt X x0 z)‖ ^ 2) *
      W (cpt X x0 z) ∂muF X x0 < ⊤
    refine lt_of_le_of_lt key (ENNReal.add_lt_top.2 ⟨?_, ?_⟩)
    · first
        | exact ENNReal.mul_lt_top (by simp) hfF
    · first
        | exact ENNReal.mul_lt_top (by simp) hPF
  have hvan := OntoH.vanish (r := r) (X := X) (x0 := x0) hExG hGrad hKa hPair hBig hConn hExtF
    hx0 hPD hW hWL hbb4 hm hg1 hg1ne hPs hWPs hLev hFF hf0SS hff0 horth
  obtain ⟨hD1, hD2, hD3, hD4⟩ := hD
  refine ⟨F, P, hD1, hD2, hD3, hD4, fun x hx => ?_⟩
  have hx0' := hvan x hx
  exact (sub_eq_zero.1 hx0').symm

end

end ReciprocityTheory.ChartRestriction.G.AR.Up
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPf =====
