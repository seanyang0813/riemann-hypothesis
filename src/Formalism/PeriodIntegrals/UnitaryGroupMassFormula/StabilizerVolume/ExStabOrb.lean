module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabTop
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabSt
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.TopoClose
public import Formalism.SatakeDualWeyl.Statement
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.HformEntry
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.InclRAlgebraMap
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.LocalSum
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.StFix
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.StLamOf
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianDiagonalization.ExistsOrthogonalFamily
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.AdeleLC
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension
import Mathlib.Tactic.Linter.Style
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.UnitChoice
import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.AwayActions.SigmaSigma
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabU, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabFin, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.OrbRing, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.OrbTupFin, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabOrb

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabU =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabU", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabTop\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.AdeleLC\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.VolStabS

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub NumberField IsDedekindDomain MeasureTheory PI.VolFromSW
open scoped TensorProduct ENNReal NNReal Pointwise

section AbstractU

variable {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [LocallyCompactSpace G]
  [T2Space G] [SecondCountableTopology G] [MeasurableSpace G] [BorelSpace G]

theorem meas_avg (H : Subgroup G) (ν : Measure H) [SFinite ν] {f : G → ℝ≥0∞} (hf : Measurable f) :
    Measurable (fun g : G => ∫⁻ h, f (g * (h : G)) ∂ν) := by
  have hc : Continuous (fun p : G × H => p.1 * (p.2 : G)) :=
    continuous_fst.mul (continuous_subtype_val.comp continuous_snd)
  exact (hf.comp hc.measurable).lintegral_prod_right'

theorem avg_mul_mem (H : Subgroup G) (ν : Measure H) [ν.IsMulLeftInvariant] (f : G → ℝ≥0∞)
    (g : G) (k : H) : ∫⁻ h, f (g * k * (h : G)) ∂ν = ∫⁻ h, f (g * (h : G)) ∂ν := by
  have := lintegral_mul_left_eq_self (μ := ν) (fun h : H => f (g * (h : G))) k
  simpa [mul_assoc] using this

theorem avg_out (H : Subgroup G) (ν : Measure H) [ν.IsMulLeftInvariant] (f : G → ℝ≥0∞) (g : G) :
    ∫⁻ h, f ((g : G ⧸ H).out * (h : G)) ∂ν = ∫⁻ h, f (g * (h : G)) ∂ν := by
  obtain ⟨k, hk⟩ := QuotientGroup.mk_out_eq_mul H g
  rw [hk]
  exact avg_mul_mem H ν f g k

theorem meas_avg_q (H : Subgroup G) (ν : Measure H) [SFinite ν] [ν.IsMulLeftInvariant]
    {f : G → ℝ≥0∞} (hf : Measurable f) :
    Measurable (fun q : G ⧸ H => ∫⁻ h, f (q.out * (h : G)) ∂ν) := by
  apply measurable_from_quotient.2
  have : ((fun q : G ⧸ H => ∫⁻ h, f (q.out * (h : G)) ∂ν) ∘ Quotient.mk'') =
      fun g => ∫⁻ h, f (g * (h : G)) ∂ν := by
    funext g
    exact avg_out H ν f g
  rw [this]
  exact meas_avg H ν hf

theorem meas_smul_q (H : Subgroup G) (g : G) : Measurable (fun q : G ⧸ H => g • q) := by
  apply measurable_from_quotient.2
  have : ((fun q : G ⧸ H => g • q) ∘ Quotient.mk'') = (QuotientGroup.mk : G → G ⧸ H) ∘ (g * ·) := by
    funext k
    rfl
  rw [this]
  exact measurable_quotient_mk''.comp (measurable_const_mul g)

theorem induced_eq (H : Subgroup G) (hcl : IsClosed (H : Set G)) (μ : Measure G) [μ.IsHaarMeasure]
    (ν : Measure H) [ν.IsHaarMeasure] (ρ' : Measure (G ⧸ H))
    (hinv : ∀ (g : G) (s : Set (G ⧸ H)), MeasurableSet s → ρ' ((fun y => g • y) ⁻¹' s) = ρ' s)
    (hfin : ∀ K : Set (G ⧸ H), IsCompact K → ρ' K < ⊤) (hne : ρ' ≠ 0) :
    ∃ c : ℝ≥0∞, c ≠ 0 ∧ c ≠ ⊤ ∧ ∀ f : G → ℝ≥0∞, Measurable f →
      ∫⁻ g, f g ∂μ = c * ∫⁻ q, ∫⁻ h, f (q.out * (h : G)) ∂ν ∂ρ' := by
  classical
  have : LocallyCompactSpace H := hcl.isClosedEmbedding_subtypeVal.locallyCompactSpace
  have : SecondCountableTopology H := Topology.IsEmbedding.subtypeVal.secondCountableTopology
  have : SigmaCompactSpace H := sigmaCompactSpace_of_locallyCompact_secondCountable
  have : SFinite ν := inferInstance
  have hmulc : ∀ x : G, Measurable (fun h : H => x * (h : G)) := fun x =>
    (continuous_const.mul continuous_subtype_val).measurable
  set κ : G ⧸ H → Measure G := fun q => ν.map (fun h : H => q.out * (h : G)) with hκdef
  have hκA : ∀ (q : G ⧸ H) (A : Set G), MeasurableSet A →
      κ q A = ∫⁻ h, A.indicator 1 (q.out * (h : G)) ∂ν := by
    intro q A hA
    rw [← lintegral_indicator_one hA, hκdef]
    exact lintegral_map (measurable_one.indicator hA) (hmulc _)
  have hκ : Measurable κ := by
    apply Measure.measurable_of_measurable_coe
    intro A hA
    have e : (fun q => κ q A) = fun q : G ⧸ H => ∫⁻ h, A.indicator 1 (q.out * (h : G)) ∂ν :=
      funext fun q => hκA q A hA
    rw [e]
    exact meas_avg_q H ν (measurable_one.indicator hA)
  set m : Measure G := ρ'.bind κ with hmdef
  have hmf : ∀ f : G → ℝ≥0∞, Measurable f →
      ∫⁻ g, f g ∂m = ∫⁻ q, ∫⁻ h, f (q.out * (h : G)) ∂ν ∂ρ' := by
    intro f hf
    rw [hmdef, Measure.lintegral_bind hκ.aemeasurable hf.aemeasurable]
    apply lintegral_congr
    intro q
    exact lintegral_map hf (hmulc _)
  have hρmap : ∀ g : G, ρ'.map (fun q => g • q) = ρ' := by
    intro g
    ext s hs
    rw [Measure.map_apply (meas_smul_q H g) hs]
    exact hinv g s hs
  have hmA : ∀ A : Set G, MeasurableSet A →
      m A = ∫⁻ q, ∫⁻ h, A.indicator 1 (q.out * (h : G)) ∂ν ∂ρ' := by
    intro A hA
    rw [← lintegral_indicator_one hA]
    exact hmf _ (measurable_one.indicator hA)
  have hleft : m.IsMulLeftInvariant := by
    constructor
    intro g
    ext A hA
    rw [Measure.map_apply (measurable_const_mul g) hA, hmA _ (hA.preimage (measurable_const_mul g)),
      hmA A hA]
    have e : ∀ q : G ⧸ H, ∫⁻ h, ((fun x => g * x) ⁻¹' A).indicator 1 (q.out * (h : G)) ∂ν =
        (fun q' : G ⧸ H => ∫⁻ h, A.indicator 1 (q'.out * (h : G)) ∂ν) (g • q) := by
      intro q
      have h1 : g • q = ((g * q.out : G) : G ⧸ H) := by
        conv_lhs => rw [← QuotientGroup.out_eq' q]
        rfl
      simp only
      rw [h1, avg_out H ν]
      apply lintegral_congr
      intro h
      simp only [Set.indicator, Set.mem_preimage, mul_assoc, Pi.one_apply]
    simp_rw [e]
    rw [← lintegral_map (meas_avg_q H ν (measurable_one.indicator hA)) (meas_smul_q H g), hρmap]

  have hfinm : IsFiniteMeasureOnCompacts m := by
    constructor
    intro K hK
    set S : Set H := (Subtype.val : H → G) ⁻¹' (K⁻¹ * K) with hSdef
    have hS : IsCompact S :=
      hcl.isClosedEmbedding_subtypeVal.isCompact_preimage (hK.inv.mul hK)
    have hbound : ∀ q : G ⧸ H, κ q K ≤ ((QuotientGroup.mk : G → G ⧸ H) '' K).indicator
        (fun _ => ν S) q := by
      intro q
      rw [hκdef, Measure.map_apply (hmulc _) hK.isClosed.measurableSet]
      by_cases hq : q ∈ (QuotientGroup.mk : G → G ⧸ H) '' K
      · rw [Set.indicator_of_mem hq]
        obtain ⟨k, hk, rfl⟩ := hq
        obtain ⟨h0, hh0⟩ := QuotientGroup.mk_out_eq_mul H k
        rw [hh0]
        calc ν ((fun h : H => k * h0 * (h : G)) ⁻¹' K) ≤ ν ((fun h : H => h0 * h) ⁻¹' S) := by
              apply measure_mono
              intro h hh
              have hh' : k * (h0 : G) * (h : G) ∈ K := hh
              show ((h0 * h : H) : G) ∈ K⁻¹ * K
              rw [Subgroup.coe_mul]
              exact ⟨k⁻¹, Set.inv_mem_inv.2 hk, k * h0 * h, hh', by group⟩
          _ = ν S := measure_preimage_mul ν h0 S
      · rw [Set.indicator_of_notMem hq]
        apply le_of_eq
        apply measure_mono_null _ (measure_empty (μ := ν))
        intro h hh
        exfalso
        apply hq
        refine ⟨q.out * h, hh, ?_⟩
        conv_rhs => rw [← QuotientGroup.out_eq' q]
        rw [QuotientGroup.eq]
        simp
    rw [hmdef, Measure.bind_apply hK.isClosed.measurableSet hκ.aemeasurable]
    calc ∫⁻ q, κ q K ∂ρ' ≤ ∫⁻ q, ((QuotientGroup.mk : G → G ⧸ H) '' K).indicator
          (fun _ => ν S) q ∂ρ' := lintegral_mono hbound
      _ ≤ ν S * ρ' ((QuotientGroup.mk : G → G ⧸ H) '' K) := lintegral_indicator_const_le _ _
      _ < ⊤ := ENNReal.mul_lt_top hS.measure_lt_top
          (hfin _ (hK.image QuotientGroup.continuous_mk))
  have hm : m = Measure.haarScalarFactor m μ • μ := Measure.isMulLeftInvariant_eq_smul m μ
  set c : ℝ≥0 := Measure.haarScalarFactor m μ with hcdef
  have hmne : m ≠ 0 := by
    intro h0
    have hu := hmA Set.univ MeasurableSet.univ
    simp only [Set.indicator_univ, Pi.one_apply, lintegral_const, one_mul] at hu
    rw [h0, Measure.coe_zero, Pi.zero_apply] at hu
    have hν : ν Set.univ ≠ 0 := isOpen_univ.measure_ne_zero ν Set.univ_nonempty
    have hρ : ρ' Set.univ ≠ 0 := by
      intro h; exact hne (Measure.measure_univ_eq_zero.1 h)
    exact mul_ne_zero hν hρ hu.symm
  have hc0 : (c : ℝ≥0∞) ≠ 0 := by
    intro h0
    apply hmne
    rw [hm]
    ext s _
    simp [← hcdef, ENNReal.coe_eq_zero.1 h0]
  have hctop : (c : ℝ≥0∞) ≠ ⊤ := ENNReal.coe_ne_top
  refine ⟨(c : ℝ≥0∞)⁻¹, ENNReal.inv_ne_zero.2 hctop, ENNReal.inv_ne_top.2 hc0, fun f hf => ?_⟩
  rw [← hmf f hf, hm]
  rw [show (c • μ : Measure G) = (c : ℝ≥0∞) • μ from rfl, lintegral_smul_measure, smul_eq_mul,
    ← mul_assoc, ENNReal.inv_mul_cancel hc0 hctop, one_mul]

end AbstractU

section OrbitU

variable {G X : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [LocallyCompactSpace G]
  [T2Space G] [SecondCountableTopology G] [MeasurableSpace G] [BorelSpace G]
  [MulAction G X] [TopologicalSpace X] [MeasurableSpace X]

theorem weil_orbit_u (x0 : X) (hcl : IsClosed (MulAction.stabilizer G x0 : Set G))
    (μ : Measure G) [μ.IsHaarMeasure]
    (νX : Measure X) (hnull : νX {y | ¬ ∃ g : G, g • x0 = y} = 0)
    (hinv : ∀ (g : G) (s : Set X), MeasurableSet s → νX ((fun y => g • y) ⁻¹' s) = νX s)
    (hfin : ∀ K : Set X, IsCompact K → νX K < ⊤) (hne : νX ≠ 0)
    (hemb : MeasurableEmbedding (fun q : G ⧸ MulAction.stabilizer G x0 => q.out • x0))
    (hcont : Continuous (fun q : G ⧸ MulAction.stabilizer G x0 => q.out • x0)) :
    ∃ μ' : Measure (MulAction.stabilizer G x0), μ'.IsHaarMeasure ∧
      ∀ f : G → ℝ≥0∞, Measurable f → ∀ s : X → G, (∀ y, (∃ g : G, g • x0 = y) → s y • x0 = y) →
        ∫⁻ g, f g ∂μ = ∫⁻ y, ∫⁻ h', f (s y * (h' : G)) ∂μ' ∂νX := by
  classical
  have : LocallyCompactSpace (MulAction.stabilizer G x0) :=
    hcl.isClosedEmbedding_subtypeVal.locallyCompactSpace
  set ι : G ⧸ MulAction.stabilizer G x0 → X := fun q => q.out • x0 with hιdef
  have hrange : ∀ y, y ∈ Set.range ι ↔ ∃ g : G, g • x0 = y := by
    intro y
    constructor
    · rintro ⟨q, rfl⟩
      exact ⟨q.out, rfl⟩
    · rintro ⟨g, rfl⟩
      exact ⟨(g : G ⧸ MulAction.stabilizer G x0), orb_mk x0 g⟩
  set ρ' : Measure (G ⧸ MulAction.stabilizer G x0) := νX.comap ι with hρ'def
  have hmap : ρ'.map ι = νX := by
    rw [hρ'def, hemb.map_comap]
    apply Measure.restrict_eq_self_of_ae_mem
    rw [ae_iff]
    convert hnull using 2
    ext y
    simp only [Set.mem_ofPred_eq, hrange]
  have hρ'inv : ∀ (g : G) (s : Set (G ⧸ MulAction.stabilizer G x0)), MeasurableSet s →
      ρ' ((fun y => g • y) ⁻¹' s) = ρ' s := by
    intro g s hs
    rw [hρ'def, hemb.comap_apply, hemb.comap_apply]
    have himg : ι '' ((fun y => g • y) ⁻¹' s) = (fun y => g • y) ⁻¹' (ι '' s) := by
      ext y
      simp only [Set.mem_image, Set.mem_preimage]
      constructor
      · rintro ⟨q, hq, rfl⟩
        exact ⟨g • q, hq, orb_smul x0 g q⟩
      · rintro ⟨q', hq', hy⟩
        refine ⟨g⁻¹ • q', by simpa [smul_smul] using hq', ?_⟩
        show (g⁻¹ • q').out • x0 = y
        rw [orb_smul x0 g⁻¹ q']
        show g⁻¹ • ι q' = y
        rw [hy, inv_smul_smul]
    rw [himg]
    exact hinv g _ (hemb.measurableSet_image.2 hs)
  have hρ'fin : ∀ K : Set (G ⧸ MulAction.stabilizer G x0), IsCompact K → ρ' K < ⊤ := by
    intro K hK
    rw [hρ'def, hemb.comap_apply]
    exact hfin _ (hK.image hcont)
  have hρ'ne : ρ' ≠ 0 := by
    intro h0
    apply hne
    rw [← hmap, h0, Measure.map_zero]
  set ν : Measure (MulAction.stabilizer G x0) := Measure.haar with hνdef
  obtain ⟨c, hc0, hctop, hF⟩ := induced_eq (MulAction.stabilizer G x0) hcl μ ν ρ' hρ'inv hρ'fin hρ'ne
  refine ⟨c • ν, Measure.IsHaarMeasure.smul ν hc0 hctop, ?_⟩
  intro f hf s hs
  rw [hF f hf]
  have hin : ∀ q : G ⧸ MulAction.stabilizer G x0, ∫⁻ h', f (s (ι q) * (h' : G)) ∂(c • ν) =
      c * ∫⁻ h, f (q.out * (h : G)) ∂ν := by
    intro q
    rw [lintegral_smul_measure, smul_eq_mul]
    congr 1
    have hsq : s (ι q) • x0 = q.out • x0 := hs (ι q) ⟨q.out, rfl⟩
    have hk : q.out⁻¹ * s (ι q) ∈ MulAction.stabilizer G x0 := by
      rw [MulAction.mem_stabilizer_iff, mul_smul, hsq, inv_smul_smul]
    have hsk : s (ι q) = q.out * (q.out⁻¹ * s (ι q)) := by group
    rw [hsk]
    have := lintegral_mul_left_eq_self (μ := ν)
      (fun h : MulAction.stabilizer G x0 => f (q.out * (h : G))) ⟨q.out⁻¹ * s (ι q), hk⟩
    simpa [mul_assoc] using this
  rw [← hmap, hemb.lintegral_map]
  simp_rw [hin]
  rw [lintegral_const_mul' _ _ hctop]

end OrbitU

theorem exStab_of_U (hW : SecCtblW) (hP : LCSCPolish) (hO : OrbTup) (hI : NuInv) (hF : NuFin)
    (hN : NuNeZero) : ExStab := by
  intro F E _ _ _ _ _ σ hCM M J hJ ha hc a ha1 ha2 X0 hT hdet ψ hψ μ hμ νX hν
  have : FiniteDimensional F E := Module.finite_of_finrank_pos (by rw [hCM.2.2.1]; norm_num)
  have := secCtblG_of hW F E σ hCM M J hJ ha hc a ha1 ha2 X0 hT hdet
  have : T2Space (HA (AF F) σ J) := inferInstanceAs (T2Space (HR (AF F) σ J))
  have : μ.IsHaarMeasure := hμ
  have hnull : νX {y | ¬ ∃ g : HA (AF F) σ J, g • ratTup (AF F) X0 = y} = 0 := by
    apply measure_mono_null _ hν.1
    intro y hy
    simp only [Set.mem_ofPred_eq] at hy ⊢
    intro hg
    exact hy (hO F E σ hCM M J hJ ha hc a ha1 ha2 X0 hT hdet y hg)
  obtain ⟨hemb, hcont⟩ := orbEmb_of hW hP F E σ hCM M J hJ ha hc a ha1 ha2 X0 hT hdet
  obtain ⟨μ', h1, h2⟩ := weil_orbit_u (G := HA (AF F) σ J) (ratTup (AF F) X0)
    (stabClosed_holds F E σ hCM M J hJ ha hc a ha1 ha2 X0 hT hdet) μ νX hnull
    (hI F E σ hCM M J hJ ha hc a ha1 ha2 X0 hT hdet ψ hψ νX hν)
    (hF F E σ hCM M J hJ ha hc a ha1 ha2 X0 hT hdet ψ hψ νX hν)
    (hN F E σ hCM M J hJ ha hc a ha1 ha2 X0 hT hdet ψ hψ νX hν) hemb hcont
  exact ⟨μ', h1, hnull, fun f hf s hs => h2 f hf s hs⟩

end PI.VolStabS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabU =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabFin =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabFin", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabSt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabU\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.TopoClose\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.VolStabS

theorem exStab_of_orb (hO : OrbTup) (hI : NuInv) (hF : NuFin) (hN : NuNeZero) : ExStab :=
  exStab_of_U secCtblW_holds lcscPolish_holds hO hI hF hN

end PI.VolStabS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabFin =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.OrbRing =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.OrbRing", "h": "module\n\npublic import Formalism.SatakeDualWeyl.Statement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.UnitChoice\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.VolStabS.OrbR

open Matrix Formalism.UG PIW.AdelicOrbitU

variable {S : Type} [CommRing S] (s : S →+* S) {n : ℕ} (J : Matrix (Fin n) (Fin n) S)

def r1 (c : S) (u v : Fin n → S) : Matrix (Fin n) (Fin n) S :=
  1 - c • vecMulVec v (vecMul (fun i => s (u i)) J)

theorem reflection_mulVec (c : S) (u v z : Fin n → S) :
    r1 s J c u v *ᵥ z = z - (c * hform s J u z) • v := by
  have hf : hform s J u z = (fun i => s (u i)) ⬝ᵥ (J *ᵥ z) := by
    simp only [hform, dotProduct, Matrix.mulVec, Finset.mul_sum, mul_assoc]
  rw [r1, Matrix.sub_mulVec, Matrix.one_mulVec, hf, Matrix.dotProduct_mulVec]
  ext i
  simp only [Pi.sub_apply, Pi.smul_apply, smul_eq_mul, Matrix.mulVec, dotProduct, Matrix.smul_apply,
    Matrix.vecMulVec_apply]
  congr 1
  rw [Finset.mul_sum, Finset.sum_mul]
  exact Finset.sum_congr rfl fun j _ => by ring

theorem hform_mulVec (T : Matrix (Fin n) (Fin n) S) (z w : Fin n → S) :
    hform s J (T *ᵥ z) (T *ᵥ w) = hform s (cT s T * J * T) z w := by
  have hf : ∀ (M : Matrix (Fin n) (Fin n) S) (x y : Fin n → S),
      hform s M x y = (fun i => s (x i)) ⬝ᵥ (M *ᵥ y) := by
    intro M x y
    simp only [hform, dotProduct, Matrix.mulVec, Finset.mul_sum, mul_assoc]
  have hσ : (fun i => s ((T *ᵥ z) i)) = (T.map s) *ᵥ (fun i => s (z i)) :=
    funext fun i => RingHom.map_mulVec s T z i
  rw [hf, hf, hσ, ← Matrix.vecMul_transpose, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec,
    Matrix.mulVec_mulVec]
  simp only [cT, Matrix.mul_assoc]

theorem hform_mem (g : GL (Fin n) S) (hg : g ∈ UJ s J) (z w : Fin n → S) :
    hform s J ((g : Matrix (Fin n) (Fin n) S) *ᵥ z) ((g : Matrix (Fin n) (Fin n) S) *ᵥ w) =
      hform s J z w := by
  rw [hform_mulVec]
  rw [show cT s (g : Matrix (Fin n) (Fin n) S) * J * (g : Matrix (Fin n) (Fin n) S) = J from hg]

private lemma hform_single_single_stabilizer_orbit_volume (M : Matrix (Fin n) (Fin n) S) (a b : Fin n) :
    hform s M (Pi.single a 1) (Pi.single b 1) = M a b := by
  simp [hform, Pi.single_apply, apply_ite s]

theorem mem_UJ_of (hdet : IsUnit J.det) (T : Matrix (Fin n) (Fin n) S)
    (key : ∀ z w, hform s J (T *ᵥ z) (T *ᵥ w) = hform s J z w) :
    ∃ g : GL (Fin n) S, g ∈ UJ s J ∧ (g : Matrix (Fin n) (Fin n) S) = T := by
  have hM : cT s T * J * T = J := by
    ext a b
    have h := key (Pi.single a 1) (Pi.single b 1)
    rwa [hform_mulVec, hform_single_single_stabilizer_orbit_volume, hform_single_single_stabilizer_orbit_volume] at h
  have hdT : IsUnit T.det := by
    have h1 := congrArg Matrix.det hM
    rw [Matrix.det_mul, Matrix.det_mul] at h1
    have h2 : (cT s T).det = s T.det := by
      unfold cT
      rw [Matrix.det_transpose]
      exact (RingHom.map_det s T).symm
    rw [h2] at h1
    have h3 : s T.det * T.det * J.det = 1 * J.det := by linear_combination h1
    have h4 : s T.det * T.det = 1 := hdet.mul_left_inj.mp h3
    exact ⟨⟨T.det, s T.det, by rw [mul_comm]; exact h4, h4⟩, rfl⟩
  refine ⟨Matrix.nonsingInvUnit T hdT, ?_, rfl⟩
  show cT s T * J * T = J
  exact hM

theorem step (hs : ∀ z, s (s z) = z) (hJ : IsHerm s J) (hdet : IsUnit J.det)
    (a b : Fin n → S) (hab : hform s J b b = hform s J a a) (hu : IsUnit (hform s J a a))
    (lam : S) (hlam : lam * s lam = 1) (hc : IsUnit (hform s J a a - s lam * hform s J b a)) :
    ∃ g : GL (Fin n) S, g ∈ UJ s J ∧ (g : Matrix (Fin n) (Fin n) S) *ᵥ a = b ∧
      ∀ z, hform s J a z = 0 → hform s J b z = 0 → (g : Matrix (Fin n) (Fin n) S) *ᵥ z = z := by
  have hconj := hform_conj s J hs hJ
  obtain ⟨c, hc_def⟩ : ∃ c, hform s J a a - s lam * hform s J b a = c := ⟨_, rfl⟩
  rw [hc_def] at hc
  obtain ⟨ci, hci⟩ : ∃ ci, c * ci = 1 := hc.exists_right_inv
  have e2 : ci * c = 1 := by rw [mul_comm]; exact hci
  have e3 : s ci * s c = 1 := by rw [← map_mul, e2, map_one]
  obtain ⟨u, hu_def⟩ : ∃ u, a - lam • b = u := ⟨_, rfl⟩
  have hua : hform s J u a = c := by
    rw [← hu_def, hform_sub_left, hform_smul_left, hc_def]
  have huu : hform s J u u = c + s c := by
    rw [← hu_def, ← hc_def]
    simp only [hform_sub_left, hform_sub_right, hform_smul_left, hform_smul_right, map_sub, map_mul,
      hs, hconj]
    linear_combination (s lam * lam) * hab + hform s J a a * hlam
  have key1 : ∀ z w, hform s J (r1 s J ci u u *ᵥ z) (r1 s J ci u u *ᵥ w) = hform s J z w := by
    intro z w
    rw [reflection_mulVec, reflection_mulVec]
    simp only [hform_sub_left, hform_sub_right, hform_smul_left, hform_smul_right, map_mul, hconj, huu]
    linear_combination (hform s J z u * hform s J u w * s ci) * e2 +
      (hform s J z u * hform s J u w * ci) * e3
  obtain ⟨g1, hg1U, hg1⟩ := mem_UJ_of s J hdet _ key1
  obtain ⟨βi, hβ⟩ : ∃ βi, hform s J a a * βi = 1 := hu.exists_right_inv
  have hsβ : s (hform s J a a) = hform s J a a := hconj a a
  have hsβi : s βi = βi := by
    have h1 : hform s J a a * s βi = 1 := by rw [← hsβ, ← map_mul, hβ, map_one]
    calc s βi = s βi * (hform s J a a * βi) := by rw [hβ, mul_one]
      _ = (hform s J a a * s βi) * βi := by ring
      _ = βi := by rw [h1, one_mul]
  have key2 : ∀ z w, hform s J (r1 s J ((1 - s lam) * βi) b b *ᵥ z)
      (r1 s J ((1 - s lam) * βi) b b *ᵥ w) = hform s J z w := by
    intro z w
    rw [reflection_mulVec, reflection_mulVec]
    simp only [hform_sub_left, hform_sub_right, hform_smul_left, hform_smul_right, map_mul, hconj, hab,
      map_sub, map_one, hs, hsβi]
    linear_combination (hform s J z b * hform s J b w * βi) * hlam +
      (hform s J z b * hform s J b w * (1 - lam) * (1 - s lam) * βi) * hβ
  obtain ⟨g2, hg2U, hg2⟩ := mem_UJ_of s J hdet _ key2
  refine ⟨g2 * g1, mul_mem hg2U hg1U, ?_, ?_⟩
  · rw [Units.val_mul, ← mulVec_mulVec, hg1, hg2, reflection_mulVec s J ci u u, hua, e2, one_smul, ← hu_def,
      sub_sub_cancel, reflection_mulVec, hform_smul_right, hab, ← sub_smul]
    conv_rhs => rw [← one_smul S b]
    congr 1
    linear_combination hlam + (s lam * lam - lam) * hβ
  · intro z hz1 hz2
    have hzu : hform s J u z = 0 := by
      rw [← hu_def, hform_sub_left, hform_smul_left, hz1, hz2, mul_zero, sub_zero]
    rw [Units.val_mul, ← mulVec_mulVec, hg1, hg2, reflection_mulVec s J ci u u, hzu, mul_zero, zero_smul, sub_zero,
      reflection_mulVec, hz2, mul_zero, zero_smul, sub_zero]

theorem orb_orth (hs : ∀ z, s (s z) = z) (hJ : IsHerm s J) (hdet : IsUnit J.det) :
    ∀ (k : ℕ) (x y : Fin k → Fin n → S), (∀ i j, i ≠ j → hform s J (x i) (x j) = 0) →
      (∀ i j, hform s J (y i) (y j) = hform s J (x i) (x j)) →
      (∀ i, IsUnit (hform s J (x i) (x i))) →
      (∀ i (t : S), ∃ lam, lam * s lam = 1 ∧ IsUnit (hform s J (x i) (x i) - s lam * t)) →
      ∃ g : GL (Fin n) S, g ∈ UJ s J ∧ ∀ i, (g : Matrix (Fin n) (Fin n) S) *ᵥ x i = y i := by
  intro k
  induction k with
  | zero => intro x y _ _ _ _; exact ⟨1, one_mem _, fun i => Fin.elim0 i⟩
  | succ k ih =>
    intro x y ho hg hu hl
    obtain ⟨g', hg'U, hg'⟩ := ih (fun i => x i.succ) (fun i => y i.succ)
      (fun i j hij => ho _ _ (fun e => hij (Fin.succ_injective _ e))) (fun i j => hg _ _)
      (fun i => hu _) (fun i t => hl _ t)
    obtain ⟨a, ha⟩ : ∃ a, (g' : Matrix (Fin n) (Fin n) S) *ᵥ x 0 = a := ⟨_, rfl⟩
    have haa : hform s J a a = hform s J (x 0) (x 0) := by rw [← ha]; exact hform_mem s J g' hg'U _ _
    obtain ⟨lam, hlam, hc⟩ := hl 0 (hform s J (y 0) a)
    rw [← haa] at hc
    obtain ⟨g1, hg1U, hg1a, hg1z⟩ := step s J hs hJ hdet a (y 0) (by rw [haa]; exact hg 0 0)
      (haa ▸ hu 0) lam hlam hc
    refine ⟨g1 * g', mul_mem hg1U hg'U, fun i => ?_⟩
    refine Fin.cases ?_ (fun i => ?_) i
    · rw [Units.val_mul, ← mulVec_mulVec, ha]; exact hg1a
    · have hi := hg' i
      rw [Units.val_mul, ← mulVec_mulVec, hi]
      apply hg1z
      · rw [← hi, ← ha, hform_mem s J g' hg'U]; exact ho 0 i.succ (Fin.succ_ne_zero i).symm
      · rw [hg 0 i.succ]; exact ho 0 i.succ (Fin.succ_ne_zero i).symm

def tM {m : ℕ} (X : Fin m → Fin n → S) : Matrix (Fin n) (Fin m) S := Matrix.of fun r i => X i r

theorem gram_tM {m : ℕ} (X : Fin m → Fin n → S) (i j : Fin m) :
    hform s J (X i) (X j) = (cT s (tM X) * J * tM X) i j := by
  simp only [hform, cT, tM, Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply, Matrix.of_apply,
    Finset.sum_mul]
  rw [Finset.sum_comm]

theorem gram_mul {m k : ℕ} (N : Matrix (Fin n) (Fin m) S) (Q : Matrix (Fin m) (Fin k) S) :
    cT s (N * Q) * J * (N * Q) = cT s Q * (cT s N * J * N) * Q := by
  simp only [cT, Matrix.map_mul, Matrix.transpose_mul, Matrix.mul_assoc]

end PI.VolStabS.OrbR
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.OrbRing =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.OrbTupFin =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.OrbTupFin", "h": "module\n\nimport Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.AwayActions.SigmaSigma\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabSt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.HformEntry\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.InclRAlgebraMap\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.LocalSum\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.StFix\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.StLamOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianDiagonalization.ExistsOrthogonalFamily\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.OrbRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.VolStabS

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes NumberField Matrix Formalism.UG PI.VolStabS.OrbR
open scoped TensorProduct

theorem cm_fixed {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (σ : E →ₐ[F] E) (h : IsCMExt F E σ) (a : E) : σ a = a ↔ a ∈ (algebraMap F E).range := by
  apply PositivityTheory.SiegelWeilFormula.KAway.sigma_fix <;> assumption

theorem orbTup_holds : OrbTup := by
  intro F E _ _ _ _ _ σ hCM M J hJ _ _ a _ _ X0 hT hdet y hy
  have h2 : Module.finrank F E = 2 := hCM.2.2.1
  have hinv : ∀ x, σ (σ x) = x := by
    intro x
    obtain ⟨τ⟩ := (inferInstance : Nonempty (E →+* ℂ))
    apply τ.injective
    rw [hCM.2.2.2, hCM.2.2.2, star_star]
  have hfix := cm_fixed σ hCM
  set T := gramE σ J X0 with hTdef
  let sE : E →+* E := σ
  have hTH : IsHerm sE T := by
    ext i j; exact hT i j
  have hh : PI.UnitaryGroupMassFormula.HermConj.IsHermForm sE (hform sE T) :=
    { add := fun x y z => by
        rw [PIW.AdelicOrbitU.hform_eq_dot, PIW.AdelicOrbitU.hform_eq_dot,
          PIW.AdelicOrbitU.hform_eq_dot, mulVec_add, dotProduct_add]
      smul := fun x c y => PIW.AdelicOrbitU.hform_smul_right sE T c x y
      herm := fun x y => (PIW.AdelicOrbitU.hform_conj sE T hinv hTH x y).symm }
  obtain ⟨v, hvli, hvo⟩ := PI.UnitaryGroupMassFormula.HermConj.exists_orthogonal_family sE a (Fin a → E)
    (by simp) (hform sE T) hh
  set P : Matrix (Fin a) (Fin a) E := tM v with hP
  have hPu : IsUnit P.det := by
    have h1 : IsUnit (Matrix.of v) := Matrix.linearIndependent_rows_iff_isUnit.mp hvli
    have h2 : P = (Matrix.of v)ᵀ := rfl
    rw [h2, det_transpose]
    exact (Matrix.isUnit_iff_isUnit_det _).mp h1
  set D := cT sE P * T * P with hD
  have hDv : ∀ j k, hform sE T (v j) (v k) = D j k := fun j k => gram_tM sE T v j k
  have hDoff : ∀ j k, j ≠ k → D j k = 0 := fun j k hjk => by rw [← hDv]; exact hvo j k hjk
  have hDdiag : D = Matrix.diagonal fun j => D j j := by
    ext j k
    by_cases hjk : j = k
    · subst hjk; simp
    · rw [hDoff j k hjk, Matrix.diagonal_apply_ne _ hjk]
  have hDdet : D.det ≠ 0 := by
    have hc : (cT sE P).det = sE P.det := by
      rw [cT, det_transpose, RingHom.map_det]; rfl
    rw [hD, det_mul, det_mul, hc]
    refine mul_ne_zero (mul_ne_zero ?_ hdet) hPu.ne_zero
    exact (map_ne_zero sE).mpr hPu.ne_zero
  have hDne : ∀ j, D j j ≠ 0 := by
    intro j
    rw [hDdiag, det_diagonal] at hDdet
    exact Finset.prod_ne_zero_iff.mp hDdet j (Finset.mem_univ j)
  have hDfix : ∀ j, σ (D j j) = D j j := fun j => by
    rw [← hDv]; exact PIW.AdelicOrbitU.hform_conj sE T hinv hTH _ _

  let R := AF F
  let sS := sigR R σ
  let JS := JR (F := F) R J
  have hsS : ∀ z, sS (sS z) = z := (PIW.AdelicOrbitU.stFix F E σ h2 hfix R).1
  have hJS : IsHerm sS JS := PIW.AdelicOrbitU.isHerm_JR R σ J hJ.1
  have hJSd : IsUnit JS.det := PIW.AdelicOrbitU.isUnit_det_JR (F := F) R J hJ.2
  have hcTmap : ∀ {p q : ℕ} (N : Matrix (Fin p) (Fin q) E),
      cT sS (N.map (inclR (F := F) R)) = (cT sE N).map (inclR (F := F) R) := by
    intro p q N; ext i j
    simp only [cT, Matrix.map_apply, Matrix.transpose_apply]
    exact PIW.AdelicOrbitU.sigR_inclR (F := F) R σ _
  set Xm : Matrix (Fin M) (Fin a) (R ⊗[F] E) := (tM X0).map (inclR (F := F) R) with hXm
  set Pm : Matrix (Fin a) (Fin a) (R ⊗[F] E) := P.map (inclR (F := F) R) with hPm
  have hTg : cT sE (tM X0) * J * tM X0 = T := by
    ext i j; rw [← gram_tM]; rfl
  have hyg : cT sS (tM y) * JS * tM y = T.map (inclR (F := F) R) := by
    ext i j; rw [← gram_tM]; exact congrFun (congrFun hy i) j
  let x' : Fin a → Fin M → R ⊗[F] E := fun j r => (Xm * Pm) r j
  let y' : Fin a → Fin M → R ⊗[F] E := fun j r => (tM y * Pm) r j
  have hGx : ∀ j k, hform sS JS (x' j) (x' k) = inclR (F := F) R (D j k) := by
    intro j k
    rw [gram_tM]
    have e : tM x' = Xm * Pm := rfl
    rw [e, gram_mul, hXm, hPm, hcTmap, hcTmap]
    show ((cT sE P).map (inclR (F := F) R) * ((cT sE (tM X0)).map (inclR (F := F) R) * J.map (inclR (F := F) R) *
      (tM X0).map (inclR (F := F) R)) * P.map (inclR (F := F) R)) j k = _
    rw [← Matrix.map_mul, ← Matrix.map_mul, ← Matrix.map_mul, ← Matrix.map_mul, hTg]
    rfl
  have hGy : ∀ j k, hform sS JS (y' j) (y' k) = inclR (F := F) R (D j k) := by
    intro j k
    rw [gram_tM]
    have e : tM y' = tM y * Pm := rfl
    rw [e, gram_mul, hyg, hPm, hcTmap, ← Matrix.map_mul, ← Matrix.map_mul]
    rfl
  obtain ⟨g, hgU, hgx⟩ := orb_orth sS JS hsS hJS hJSd a x' y'
    (fun j k hjk => by rw [hGx, hDoff j k hjk, map_zero])
    (fun j k => by rw [hGx, hGy])
    (fun j => by rw [hGx]; exact (isUnit_iff_ne_zero.mpr (hDne j)).map _)
    (fun j t => by
      obtain ⟨β, hβ⟩ := (hfix _).mp (hDfix j)
      have hβ0 : β ≠ 0 := by
        rintro rfl; exact hDne j (by rw [← hβ, map_zero])
      obtain ⟨lam, hlam, hu⟩ := PIW.AdelicOrbitU.stLam F E σ h2 hfix R (PIW.AdelicOrbitU.stP F) t β hβ0
      refine ⟨lam, hlam, ?_⟩
      rw [hGx, ← hβ, PIW.AdelicOrbitU.inclR_algebraMap]
      exact hu)
  have hmat : (g : Matrix (Fin M) (Fin M) (R ⊗[F] E)) * Xm * Pm = tM y * Pm := by
    ext r j
    rw [Matrix.mul_assoc]
    have := congrFun (hgx j) r
    simpa [x', y', Matrix.mul_apply, mulVec, dotProduct] using this
  have hPmu : IsUnit Pm.det := by
    show IsUnit ((inclR (F := F) R).mapMatrix P).det
    rw [← RingHom.map_det]; exact hPu.map _
  have hmat2 : (g : Matrix (Fin M) (Fin M) (R ⊗[F] E)) * Xm = tM y := by
    have := congrArg (fun N => N * Pm⁻¹) hmat
    simpa only [Matrix.mul_nonsing_inv_cancel_right _ _ hPmu] using this
  refine ⟨(⟨g, hgU⟩ : HR (AF F) σ J), ?_⟩
  funext i
  funext r
  show ((g : Matrix (Fin M) (Fin M) (R ⊗[F] E)) *ᵥ ratTup (AF F) X0 i) r = y i r
  have := congrFun (congrFun hmat2 r) i
  simpa [Xm, tM, ratTup, Matrix.mul_apply, mulVec, dotProduct] using this

end PI.VolStabS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.OrbTupFin =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabOrb =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabOrb", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabSt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabFin\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.OrbTupFin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.VolStabS

theorem exStab_of_nu (hI : NuInv) (hF : NuFin) (hN : NuNeZero) : ExStab :=
  exStab_of_orb orbTup_holds hI hF hN

end PI.VolStabS
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.ExStabOrb =====
