module

public import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiClosT
public import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiClosSt
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvariantOfLieOneLEqZero
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IrreducibleSmoothModuleUnique
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormalisedCuspFormL2Bounded
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaCellCovers.KernelL2RowsColumns
public import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiInvA
public import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.TsumEnormEq
public import Mathlib.MeasureTheory.Group.Integral
public import Mathlib.MeasureTheory.Integral.Prod
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.OnlyIsotropic
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaCellCovers.KernelRowsColumnsSquareIntegrable
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaCellCovers.ProperRatH
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.PowerBoundFastDecay
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI
import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaCellCovers.AdmissibleLeHolds

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiClos, Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PairZero, Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiInvOf, Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiInvTop

-- ===== clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiClos =====
-- clump-header: {"m": "Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiClos", "h": "module\n\npublic import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiClosT\npublic import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiClosSt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvariantOfLieOneLEqZero\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IrreducibleSmoothModuleUnique\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormalisedCuspFormL2Bounded\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.all false

noncomputable section

open NumberField Matrix MeasureTheory Filter Set Topology
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.CuspRep.CuspidalL2GL PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.E PositivityTheory.Rg.BcB.Desc
open scoped ENNReal

namespace DiscreteGroups.T1.G

attribute [local instance] borelH borelSpace_H

section Op

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ} (D : Dom E n 0)

theorem ae_nu_of {p : GlobalTheory.AutomorphicL2Unitary.Quot (latticeGL E n) → Prop}
    (h : ∀ᵐ q ∂quotMeasure (latticeGL E n) (muG D), p q) : ∀ᵐ x ∂D.ν, p (mk (latticeGL E n) x.1) :=
  ae_restrict_of_ae ((mp_fst D).quasiMeasurePreserving.ae (ae_quotMeasure_iff.1 h))

theorem ae_nu_of' {p : GA E n → Prop} (h : ∀ᵐ g ∂muG D, p g) : ∀ᵐ x ∂D.ν, p x.1 :=
  ae_restrict_of_ae ((mp_fst D).quasiMeasurePreserving.ae h)

def Top (hn : 1 ≤ n) (u : ℝ → ℂ) (hu : Continuous u) (hs : HasCompactSupport u) :
    L2 (latticeGL E n) (muG D) →L[ℂ] Lp ℂ 2 D.ν :=
  LinearMap.mkContinuous
    { toFun := fun F => ((exists_bound D hn u hu hs).choose_spec.2 F).1.toLp _
      map_add' := fun F G => by
        rw [← MemLp.toLp_add]
        refine (MemLp.toLp_eq_toLp_iff _ _).2 ?_
        filter_upwards [ae_nu_of D (Lp.coeFn_add F G)] with x hx
        simp only [Tf, lift, Pi.add_apply, hx, add_mul]
      map_smul' := fun c F => by
        simp only [RingHom.id_apply]
        rw [← MemLp.toLp_const_smul]
        refine (MemLp.toLp_eq_toLp_iff _ _).2 ?_
        filter_upwards [ae_nu_of D (Lp.coeFn_smul c F)] with x hx
        simp only [Tf, lift, Pi.smul_apply, hx, smul_eq_mul, mul_assoc] }
    (exists_bound D hn u hu hs).choose fun F => by
      have hb := ((exists_bound D hn u hu hs).choose_spec.2 F).2
      have hk := (exists_bound D hn u hu hs).choose_spec.1
      show ‖((exists_bound D hn u hu hs).choose_spec.2 F).1.toLp (Tf D u F)‖ ≤ _
      rw [Lp.norm_toLp, Lp.norm_def]
      calc _ ≤ (ENNReal.ofReal (exists_bound D hn u hu hs).choose *
            eLpNorm F 2 (quotMeasure (latticeGL E n) (muG D))).toReal :=
            ENNReal.toReal_mono (ENNReal.mul_ne_top ENNReal.ofReal_ne_top (Lp.eLpNorm_ne_top F)) hb
        _ = _ := by rw [ENNReal.toReal_mul, ENNReal.toReal_ofReal hk]

theorem Top_ae (hn : 1 ≤ n) (u : ℝ → ℂ) (hu : Continuous u) (hs : HasCompactSupport u)
    (F : L2 (latticeGL E n) (muG D)) : (Top D hn u hu hs F : H E n 0 → ℂ) =ᵐ[D.ν] Tf D u F :=
  MemLp.coeFn_toLp ((exists_bound D hn u hu hs).choose_spec.2 F).1

end Op

theorem piClosureInv : PiClosureInv := by
  intro E _ _ _ n hn D π hπ ι _ ψ u z f hψ hf
  classical
  have hm : ∀ φ ∈ π.V, MemL2Quotient (latticeGL E n) (muG D) φ.1 := fun φ hφ =>
    (GlobalTheory.CompanionTheory.CuspForms.memL2_and_bounded_of_normalised GlobalTheory.CompanionTheory.CuspFinGL.Split.cuspFormsBoundedGL E n (muG D) π
      hπ.1 φ hφ).1
  have hC : IsSubrep (R (latticeGL E n) (muG D)) (classes π.V (muG D)).topologicalClosure :=
    GlobalTheory.CompanionTheory.CuspIrred.isSubrep_closure π.stable fun φ h => ⟨(π.cusp φ h).1, hm φ h⟩
  let P1 : Set (Lp ℂ 2 D.ν) := {h | ∃ φ ∈ π.V, ∃ v : ℝ → ℂ, Continuous v ∧ HasCompactSupport v ∧
    (h : H E n 0 → ℂ) =ᵐ[D.ν] fun x => φ.1 x.1 * v (ldet x)}
  let W1 : Submodule ℂ (Lp ℂ 2 D.ν) := (Submodule.span ℂ P1).topologicalClosure
  have hstep : ∀ i, f i ∈ W1 := fun i => by
    obtain ⟨hψi, hui, hsi⟩ := hψ i
    let u' : ℝ → ℂ := fun s => u i (s + ldet z)
    have hu' : Continuous u' := hui.comp (continuous_id.add continuous_const)
    have hs' : HasCompactSupport u' := hsi.comp_homeomorph (Homeomorph.addRight (ldet z))
    let T := Top D hn u' hu' hs'
    have hle : (classes π.V (muG D)).topologicalClosure ≤ W1.comap (T : L2 (latticeGL E n) (muG D) →ₗ[ℂ] Lp ℂ 2 D.ν) := by
      refine Submodule.topologicalClosure_minimal _ (fun F hF => ?_)
        ((Submodule.isClosed_topologicalClosure _).preimage T.continuous)
      obtain ⟨φ, hφ, e⟩ := hF
      refine Submodule.le_topologicalClosure _ (Submodule.subset_span ⟨φ, hφ, u', hu', hs', ?_⟩)
      refine (Top_ae D hn u' hu' hs' F).trans ?_
      filter_upwards [ae_nu_of' D e] with x h2
      simp only [Tf, h2]
    have hF0 : (hm _ hψi).toL2 ∈ (classes π.V (muG D)).topologicalClosure :=
      Submodule.le_topologicalClosure _ (toL2_mem_classes hψi (hm _ hψi))
    have hFi := hle (hC.2 z.1 _ hF0)
    have hTF : T (R (latticeGL E n) (muG D) z.1 (hm _ hψi).toL2) = f i := by
      refine Lp.ext ?_
      filter_upwards [Top_ae D hn u' hu' hs' (R (latticeGL E n) (muG D) z.1 (hm _ hψi).toL2),
        ae_nu_of' D (lift_R z.1 (hm _ hψi).toL2),
        ae_nu_of' D ((measurePreserving_mul_right (muG D) z.1).quasiMeasurePreserving.ae (hm _ hψi).lift_toL2_ae_eq),
        hf i] with x h1 h2 h3 h4
      rw [h1, h4]
      simp only [Tf]
      rw [h2, h3]
      show (ψ i).1 (x.1 * z.1) * u i (lg x.1 + lg z.1) = (ψ i).1 (x.1 * z.1) * u i (lg (x.1 * z.1))
      rw [lg_mul]
    rw [← hTF]
    exact hFi
  let J : ι → (Lp ℂ 2 D.ν →L[ℂ] Hs (ι := ι) D) := fun i =>
    (PiLp.continuousLinearEquiv 2 ℂ (fun _ : ι => Lp ℂ 2 D.ν)).symm.toContinuousLinearMap.comp
      (ContinuousLinearMap.single ℂ (fun _ : ι => Lp ℂ 2 D.ν) i)
  have hJe : ∀ i (h : Lp ℂ 2 D.ν), (PiLp.continuousLinearEquiv 2 ℂ (fun _ : ι => Lp ℂ 2 D.ν)) (J i h) =
      Pi.single (M := fun _ : ι => Lp ℂ 2 D.ν) i h := fun i h => by
    simp only [J, ContinuousLinearMap.comp_apply, ContinuousLinearEquiv.coe_coe, ContinuousLinearEquiv.apply_symm_apply]
    rfl
  have hJj : ∀ i j (h : Lp ℂ 2 D.ν), ((J i : Lp ℂ 2 D.ν →ₗ[ℂ] Hs (ι := ι) D) h).ofLp j =
      Pi.single (M := fun _ : ι => Lp ℂ 2 D.ν) i h j := fun i j h => by
    rw [← hJe]
    rfl
  have hJ : ∀ i, W1 ≤ (piSp D π ι).comap (J i : Lp ℂ 2 D.ν →ₗ[ℂ] Hs (ι := ι) D) := fun i => by
    refine Submodule.topologicalClosure_minimal _ (Submodule.span_le.2 fun h hh => ?_)
      ((Submodule.isClosed_topologicalClosure _).preimage (J i).continuous)
    refine Submodule.le_topologicalClosure _ (Submodule.subset_span ?_)
    intro j
    by_cases hij : j = i
    · subst hij
      obtain ⟨φ, hφ, v, hv, hvs, e⟩ := hh
      refine ⟨φ, hφ, v, hv, hvs, ?_⟩
      rw [hJj, Pi.single_eq_same]
      exact e
    · refine ⟨0, Submodule.zero_mem _, 0, continuous_const, HasCompactSupport.zero, ?_⟩
      rw [hJj, Pi.single_eq_of_ne hij]
      filter_upwards [Lp.coeFn_zero ℂ 2 D.ν] with x hx
      rw [hx]
      simp
  have hsum : f = ∑ i, J i (f i) := by
    apply (PiLp.continuousLinearEquiv 2 ℂ (fun _ : ι => Lp ℂ 2 D.ν)).injective

    rw [map_sum]
    simp only [hJe]
    exact (Finset.univ_sum_single _).symm
  rw [hsum]
  exact Submodule.sum_mem _ fun i _ => hJ i (hstep i)

end DiscreteGroups.T1.G
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiClos =====

-- ===== clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PairZero =====
-- clump-header: {"m": "Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PairZero", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaCellCovers.KernelL2RowsColumns\npublic import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiInvA\npublic import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.TsumEnormEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.MeasureTheory.Group.Integral\npublic import Mathlib.MeasureTheory.Integral.Prod\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory PositivityTheory.Rg.BcB.E1
open scoped ENNReal Pointwise

set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace DiscreteGroups.T1.G

variable (X : Ctx)

theorem pair_zero (hr : X.μ.IsMulRightInvariant) (hb : KerBasic) (hl2 : KernelL2RowsColumns) {φ : X.G → ℂ} (hφ : Tst φ)
    {f : X.G → ℂ} (hinv : ∀ γ : X.Γ, ∀ y, f ((γ : X.G) * y) = f y) (hf : MemLp f 2 X.ν)
    {h : X.G → ℂ} (hh : MemLp h 2 X.ν)
    (hz : ∀ z, ∫ x, starRingEnd ℂ (h x) * f (x * z) ∂X.ν = 0) :
    Integrable (fun x => starRingEnd ℂ (h x) * ∫ y, ker X.Γ φ x y * f y ∂X.ν) X.ν ∧
    ∫ x, starRingEnd ℂ (h x) * ∫ y, ker X.Γ φ x y * f y ∂X.ν ∂X.ν = 0 := by
  haveI := hr
  haveI : SigmaFinite X.ν := by unfold Ctx.ν; infer_instance
  have hfm : AEStronglyMeasurable f X.μ := aesm_of_inv X hinv hf.aestronglyMeasurable
  have hνμ : X.ν ≪ X.μ := Measure.absolutelyContinuous_of_le (Measure.restrict_le_self : X.μ.restrict X.F ≤ X.μ)
  have hin : ∀ x, ∫ y, ker X.Γ φ x y * f y ∂X.ν = ∫ z, φ z * f (x * z) ∂X.μ := fun x => by
    rw [(unfold X hb hl2 hφ hinv hf x).2, ← integral_mul_left_eq_self (fun y => φ (x⁻¹ * y) * f y) x]
    simp
  simp only [hin]
  set Fc : X.G → X.G → ℂ := fun x z => starRingEnd ℂ (h x) * (φ z * f (x * z)) with hFc
  have hFm : AEStronglyMeasurable (Function.uncurry Fc) (X.ν.prod X.μ) := by
    have h1 : AEStronglyMeasurable (fun p : X.G × X.G => starRingEnd ℂ (h p.1)) (X.ν.prod X.μ) :=
      Complex.continuous_conj.comp_aestronglyMeasurable hh.aestronglyMeasurable.comp_fst
    have h2 : AEStronglyMeasurable (fun p : X.G × X.G => φ p.2) (X.ν.prod X.μ) :=
      (hφ.1.comp continuous_snd).aestronglyMeasurable
    have h3 : AEStronglyMeasurable (fun p : X.G × X.G => f (p.1 * p.2)) (X.ν.prod X.μ) := by
      have := (hfm.comp_snd (μ := X.μ)).comp_measurePreserving (measurePreserving_prod_mul X.μ X.μ)
      exact this.mono_ac (hνμ.prod Measure.AbsolutelyContinuous.rfl)
    exact h1.mul (h2.mul h3)
  have eh : eLpNorm h 2 X.ν = (∫⁻ x, ‖h x‖ₑ ^ (2:ℝ) ∂X.ν) ^ (1 / (2:ℝ)) := by
    rw [eLpNorm_eq_lintegral_rpow_eNorm_toReal two_ne_zero ENNReal.ofNat_ne_top hh.aestronglyMeasurable, ENNReal.toReal_ofNat]
  have ef : eLpNorm f 2 X.ν = (∫⁻ x, ‖f x‖ₑ ^ (2:ℝ) ∂X.ν) ^ (1 / (2:ℝ)) := by
    rw [eLpNorm_eq_lintegral_rpow_eNorm_toReal two_ne_zero ENNReal.ofNat_ne_top hf.aestronglyMeasurable, ENNReal.toReal_ofNat]
  have hz_bd : ∀ z, ∫⁻ x, ‖Fc x z‖ₑ ∂X.ν ≤ ‖φ z‖ₑ * (eLpNorm h 2 X.ν * eLpNorm f 2 X.ν) := fun z => by
    have e : ∀ x, ‖Fc x z‖ₑ = ‖φ z‖ₑ * (‖h x‖ₑ * ‖f (x * z)‖ₑ) := fun x => by
      simp only [hFc, enorm_mul, enorm_conj']
      ring
    simp_rw [e]
    rw [lintegral_const_mul' _ _ enorm_ne_top]
    gcongr
    have hfz : AEStronglyMeasurable (fun x => f (x * z)) X.ν :=
      (hfm.comp_measurePreserving (measurePreserving_mul_right X.μ z)).mono_ac hνμ
    have hol := ENNReal.lintegral_mul_le_Lp_mul_Lq X.ν Real.HolderConjugate.two_two hh.aestronglyMeasurable.enorm hfz.enorm
    have hrt := lint_rt X hr (g := fun y => ‖f y‖ₑ ^ (2:ℝ)) (fun γ y => by simp only [hinv γ y]) z
    simp only [Pi.mul_apply] at hol
    rw [hrt] at hol
    rw [eh, ef]
    exact hol
  have hφint : ∫⁻ z, ‖φ z‖ₑ ∂X.μ < ⊤ := (hφ.1.integrable_of_hasCompactSupport hφ.2).2
  have hfin : ∫⁻ p, ‖Function.uncurry Fc p‖ₑ ∂(X.ν.prod X.μ) < ⊤ := by
    rw [lintegral_prod_symm _ hFm.enorm]
    calc ∫⁻ z, ∫⁻ x, ‖Function.uncurry Fc (x, z)‖ₑ ∂X.ν ∂X.μ
        ≤ ∫⁻ z, ‖φ z‖ₑ * (eLpNorm h 2 X.ν * eLpNorm f 2 X.ν) ∂X.μ := lintegral_mono fun z => hz_bd z
      _ = (∫⁻ z, ‖φ z‖ₑ ∂X.μ) * (eLpNorm h 2 X.ν * eLpNorm f 2 X.ν) :=
        lintegral_mul_const' _ _ (ENNReal.mul_ne_top hh.eLpNorm_lt_top.ne hf.eLpNorm_lt_top.ne)
      _ < ⊤ := ENNReal.mul_lt_top hφint (ENNReal.mul_lt_top hh.eLpNorm_lt_top hf.eLpNorm_lt_top)
  have hFi : Integrable (Function.uncurry Fc) (X.ν.prod X.μ) := ⟨hFm, hfin⟩
  refine ⟨?_, ?_⟩
  · refine hFi.integral_prod_left.congr (Filter.Eventually.of_forall fun x => ?_)
    simp only [hFc, Function.uncurry_apply_pair]
    exact integral_const_mul _ _
  · calc ∫ x, starRingEnd ℂ (h x) * ∫ z, φ z * f (x * z) ∂X.μ ∂X.ν = ∫ x, ∫ z, Fc x z ∂X.μ ∂X.ν := by
          refine integral_congr_ae (Filter.Eventually.of_forall fun x => ?_)
          simp only [hFc]
          exact (integral_const_mul _ _).symm
      _ = ∫ z, ∫ x, Fc x z ∂X.ν ∂X.μ := integral_integral_swap hFi
      _ = ∫ z, φ z * ∫ x, starRingEnd ℂ (h x) * f (x * z) ∂X.ν ∂X.μ := by
          refine integral_congr_ae (Filter.Eventually.of_forall fun z => ?_)
          simp only [hFc]
          rw [← integral_const_mul]
          congr 1
          funext x
          ring
      _ = 0 := by simp [hz]

end DiscreteGroups.T1.G

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PairZero =====

-- ===== clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiInvOf =====
-- clump-header: {"m": "Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiInvOf", "h": "module\n\npublic import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiClosSt\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaCellCovers.KernelL2RowsColumns\npublic import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PairZero\nimport Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiInvA\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.OnlyIsotropic\nimport Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaCellCovers.AdmissibleLeHolds\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaCellCovers.KernelRowsColumnsSquareIntegrable\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaCellCovers.ProperRatH\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField MeasureTheory
open GlobalTheory.CuspRep PositivityTheory.Rg.BcB.E PositivityTheory.Rg.BcB.Desc
open scoped ENNReal InnerProductSpace

set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace DiscreteGroups.T1.G

attribute [local instance] borelH

theorem memLp_rt (X : PositivityTheory.Rg.BcB.E1.Ctx) (hr : X.μ.IsMulRightInvariant) {f : X.G → ℂ}
    (hinv : ∀ γ : X.Γ, ∀ y, f ((γ : X.G) * y) = f y) (hf : MemLp f 2 X.ν) (z : X.G) :
    MemLp (fun x => f (x * z)) 2 X.ν := by
  haveI := hr
  have hνμ : X.ν ≪ X.μ := Measure.absolutelyContinuous_of_le (Measure.restrict_le_self : X.μ.restrict X.F ≤ X.μ)
  have hm : AEStronglyMeasurable (fun x => f (x * z)) X.ν :=
    ((aesm_of_inv X hinv hf.aestronglyMeasurable).comp_measurePreserving (measurePreserving_mul_right X.μ z)).mono_ac hνμ
  change eLpNorm (fun x => f (x * z)) 2 X.ν < ∞
  rw [eLpNorm_eq_lintegral_rpow_eNorm_toReal two_ne_zero ENNReal.ofNat_ne_top hm,
    lint_rt X hr (g := fun y => ‖f y‖ₑ ^ (2 : ℝ≥0∞).toReal) (fun γ y => by simp only [hinv γ y]) z,
    ← eLpNorm_eq_lintegral_rpow_eNorm_toReal two_ne_zero ENNReal.ofNat_ne_top hf.aestronglyMeasurable]
  exact hf

theorem piInv_of (hC : PiClosureInv) : PiInv := by
  intro E _ _ _ n hn D π hθ ι _ Φ T hΦ hT
  classical
  let X := PositivityTheory.Rg.BcB.E1.ctx PositivityTheory.Rg.BcB.E1.ratProper_holds D
  have hr : X.μ.IsMulRightInvariant := D.haar.2.1
  have hdet : ∀ g : GA E n, IsUnit (g : Matrix (Fin n) (Fin n) (Ad E)).det := fun g => by
    simp
  have hldet : ∀ (γ : ratH E n 0) (y : H E n 0), ldet ((γ : H E n 0) * y) = ldet y := by
    intro γ y
    obtain ⟨⟨γ₁, γ₂⟩, hγ⟩ := γ.2
    have h1 : (γ : H E n 0).1 = ratGL E n γ₁ := by rw [← hγ]; rfl
    have hb := PositivityTheory.Rg.BcB.D1.logAbsBasic E
    have hd : ((ratGL E n γ₁ : GA E n) : Matrix (Fin n) (Fin n) (Ad E)).det =
        algebraMap E (Ad E) (γ₁ : Matrix (Fin n) (Fin n) E).det := by
      simp [ratGL, RingHom.map_det]
    have hne : (γ₁ : Matrix (Fin n) (Fin n) E).det ≠ 0 := by
      simpa using (Matrix.GeneralLinearGroup.det γ₁).ne_zero
    simp only [ldet, Prod.fst_mul, h1]
    rw [Units.val_mul, Matrix.det_mul, hb.2.1 _ _ (hdet _) (hdet _), hd, hb.2.2 _ hne, zero_add]
  have hpsi0 : True := trivial
  have hpsi : ∀ ψ ∈ π.V, ∀ (γ : ratH E n 0) (y : H E n 0), ψ.1 ((γ : H E n 0) * y).1 = ψ.1 y.1 := by
    intro ψ hψ γ y
    obtain ⟨⟨γ₁, γ₂⟩, hγ⟩ := γ.2
    have h1 : (γ : H E n 0).1 = ratGL E n γ₁ := by rw [← hγ]; rfl
    rw [Prod.fst_mul, h1]
    exact (π.cusp ψ hψ).1.left γ₁ y.1
  have key : ∀ g : Hs (ι := ι) D, IsPiVec D π g → T g ∈ piSp D π ι := by
    intro g hg
    choose ψ hψ u hu hu' hgu using hg
    set Ft : ι → H E n 0 → ℂ := fun j x => (ψ j).1 x.1 * u j (ldet x) with hFt
    have hinv : ∀ j, ∀ γ : ratH E n 0, ∀ y : H E n 0, Ft j ((γ : H E n 0) * y) = Ft j y := fun j γ y => by
      show (ψ j).1 ((γ : H E n 0) * y).1 * u j (ldet ((γ : H E n 0) * y)) = (ψ j).1 y.1 * u j (ldet y)
      rw [hpsi _ (hψ j) γ y, hldet γ y]
    have hmem : ∀ j, MemLp (Ft j) 2 X.ν := fun j => (Lp.memLp (g j)).ae_eq (hgu j)
    rw [← Submodule.orthogonal_orthogonal (piSp D π ι), Submodule.mem_orthogonal]
    intro h hh
    have hz : ∀ i j (z : H E n 0),
        ∫ x, starRingEnd ℂ ((h i : H E n 0 → ℂ) x) * Ft j (x * z) ∂D.ν = 0 := by
      intro i j z
      have hw := memLp_rt X hr (hinv j) (hmem j) z
      let w : Lp ℂ 2 D.ν := hw.toLp _
      let v : Hs (ι := ι) D := WithLp.toLp 2 (Pi.single i w)
      have hvl : ∀ l, v l = (Pi.single i w : ι → Lp ℂ 2 D.ν) l := fun l => rfl
      have hv : v ∈ piSp D π ι := by
        refine hC E n hn D π hθ ι (fun l => if l = i then ψ j else 0) (fun l => if l = i then u j else 0) z v ?_ ?_
        · intro l
          split_ifs
          · exact ⟨hψ j, hu j, hu' j⟩
          · exact ⟨Submodule.zero_mem _, continuous_zero, HasCompactSupport.zero⟩
        · intro l
          rw [hvl]
          by_cases hl : l = i
          · subst hl
            rw [Pi.single_eq_same]
            filter_upwards [hw.coeFn_toLp] with x hx
            simp only [if_pos rfl]
            exact (show (w : H E n 0 → ℂ) x = Ft j (x * z) from hx)
          · rw [Pi.single_eq_of_ne hl]
            filter_upwards [Lp.coeFn_zero (E := ℂ) (p := 2) (μ := D.ν)] with x hx
            rw [hx]
            simp only [if_neg hl, Submodule.coe_zero, ZeroMemClass.coe_zero, Pi.zero_apply, zero_mul]
      have h0 : ⟪h, v⟫_ℂ = 0 := Submodule.inner_left_of_mem_orthogonal hv hh
      rw [PiLp.inner_apply, Finset.sum_eq_single i (fun l _ hl => by rw [hvl, Pi.single_eq_of_ne hl, inner_zero_right])
        (fun hi => absurd (Finset.mem_univ i) hi), hvl, Pi.single_eq_same, MeasureTheory.L2.inner_def] at h0
      rw [← h0]
      refine integral_congr_ae ?_
      filter_upwards [hw.coeFn_toLp] with x hx
      rw [show (w : H E n 0 → ℂ) x = Ft j (x * z) from hx, RCLike.inner_apply, mul_comm]
    rw [PiLp.inner_apply]
    refine Finset.sum_eq_zero fun i _ => ?_
    rw [MeasureTheory.L2.inner_def]
    have hP := fun j => pair_zero X hr PositivityTheory.Rg.BcB.E1.kerBasic PositivityTheory.Rg.BcB.E1.kernel_rows_columns_square_integrable (hΦ i j) (hinv j) (hmem j)
      (Lp.memLp (h i)) (hz i j)
    calc ∫ x, ⟪(h i : H E n 0 → ℂ) x, (T g i : H E n 0 → ℂ) x⟫_ℂ ∂D.ν
        = ∫ x, ∑ j, starRingEnd ℂ ((h i : H E n 0 → ℂ) x) *
            ∫ y, kerH (Φ i j) x y * Ft j y ∂D.ν ∂D.ν := by
          refine integral_congr_ae ?_
          filter_upwards [hT g i] with x hx
          rw [hx, RCLike.inner_apply, mul_comm, Finset.mul_sum]
          refine Finset.sum_congr rfl fun j _ => ?_
          congr 1
          exact integral_congr_ae ((hgu j).mono fun y hy => by simp only [hy, hFt])
      _ = ∑ j, ∫ x, starRingEnd ℂ ((h i : H E n 0 → ℂ) x) * ∫ y, kerH (Φ i j) x y * Ft j y ∂D.ν ∂D.ν :=
          integral_finsetSum _ fun j _ => (hP j).1
      _ = 0 := Finset.sum_eq_zero fun j _ => (hP j).2
  intro f hf
  have hle : Submodule.span ℂ {f | IsPiVec D π f} ≤ (piSp D π ι).comap (T : Hs (ι := ι) D →ₗ[ℂ] Hs (ι := ι) D) :=
    Submodule.span_le.2 fun g hg => key g hg
  have hcl : IsClosed (((piSp D π ι).comap (T : Hs (ι := ι) D →ₗ[ℂ] Hs (ι := ι) D)) : Set (Hs (ι := ι) D)) :=
    (show IsClosed (piSp D π ι : Set (Hs (ι := ι) D)) from Submodule.isClosed_topologicalClosure _).preimage T.continuous
  exact Submodule.topologicalClosure_minimal _ hle hcl hf

end DiscreteGroups.T1.G

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiInvOf =====

-- ===== clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiInvTop =====
-- clump-header: {"m": "Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiInvTop", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.PowerBoundFastDecay\npublic import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiClos\npublic import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiInvOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace DiscreteGroups.T1.G

theorem piInv : PositivityTheory.Rg.BcB.Desc.PiInv := piInv_of piClosureInv

end DiscreteGroups.T1.G
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.PiInvTop =====
