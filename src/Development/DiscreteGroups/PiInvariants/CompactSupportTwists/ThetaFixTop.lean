module

public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.PowerBoundFastDecay
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsNormalisedThetaSub
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.GelfandKazhdanDual
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsSpanFormsNeBot
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.CuspidalMultiplicityOne
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SpehShapeIffOfDiscreteSpectrum
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ConjOpInvolutive
public import Development.WeilBound.RepresentationTheoryGL.ConstantTermFiniteness.LieInvariants.InvariantOfLieOneLEqZero
public import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaRigidity.JacquetShalikaRigidity
public import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.CuspRapidDecayGL.CuspRapidDecaySiegelGL
public import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.MultiplicityOneRigidity.GelfandKazhdanDualOfRigidity
public import Development.WeilBound.CoreStatements.PublishedTheorems.SmoothVectorEstimates.CuspidalMultiplicityOne

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.ThetaAMulPhiU, Development.DiscreteGroups.PiInvariants.CompactSupportTwists.ThetaFixOfOfMult, Development.DiscreteGroups.PiInvariants.CompactSupportTwists.ThetaFixTop

-- ===== clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.ThetaAMulPhiU =====
-- clump-header: {"m": "Development.DiscreteGroups.PiInvariants.CompactSupportTwists.ThetaAMulPhiU", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.PowerBoundFastDecay\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsNormalisedThetaSub\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.GelfandKazhdanDual\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsSpanFormsNeBot\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.CuspidalMultiplicityOne\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SpehShapeIffOfDiscreteSpectrum\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ConjOpInvolutive\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

set_option linter.unusedSectionVars false

open NumberField Matrix GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.ContraPair

namespace DiscreteGroups.T1.G

theorem map_PhiU {R S : Type} [CommRing R] [CommRing S] (p : R →+* S) (a : ℕ) :
    GeneralLinearGroup.map p (PhiU a R) = PhiU a S := by
  ext i j
  simp [PhiU, GlobalTheory.Tw.Phi, apply_ite]
  split_ifs <;> simp_all

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ}

theorem ratGL_PhiU : ratGL E n (PhiU n E) = PhiU n (Ad E) :=
  map_PhiU (algebraMap E (Ad E)) n

theorem PhiU_Ad : PhiU n (Ad E) = finGL E n (PhiU n (Af E)) * infGL E n (PhiU n (Cinf E)) := by
  conv_lhs => rw [← infGL_mul_finGL (PhiU n (Ad E))]
  rw [map_PhiU, map_PhiU, infGL_comm]

theorem thetaA_mul_PhiU (g : GA E n) :
    GlobalTheory.ThetaPull.thetaA E n g * PhiU n (Ad E) = PhiU n (Ad E) * PositivityTheory.Rg.BcB.thetaA E n g := by
  have e : invT n (Ad E) (GeneralLinearGroup.map (conjAd E) g) = PositivityTheory.Rg.BcB.thetaA E n g := by
    refine Units.ext ?_
    change ((GeneralLinearGroup.map (conjAd E) g)⁻¹ : GL (Fin n) (Ad E)).valᵀ =
      (((g⁻¹ : GL (Fin n) (Ad E)) : Matrix (Fin n) (Fin n) (Ad E)).map (conjAd E))ᵀ
    rw [← map_inv]
    rfl
  change MulAut.conj (PhiU n (Ad E)) (invT n (Ad E) (GeneralLinearGroup.map (conjAd E) g)) * PhiU n (Ad E) = _
  rw [e, MulAut.conj_apply, inv_mul_cancel_right]

theorem thetaFixOf_of (hG : GlobalTheory.Published.GelfandKazhdanDual) (hF : GlobalTheory.Published.AutomorphicFormsFiniteGL)
    (hM : GlobalTheory.Published.CuspidalMultiplicityOne) : PositivityTheory.Rg.BcB.Desc.ThetaFixOf := by
  intro E _ _ _ n _ π hd
  unfold PositivityTheory.Rg.BcB.Desc.ThetaFix
  have hc : π.IsCsd := GlobalTheory.CsdBack.isCsd_of_paired hF E n π (hG E n π) hd
  refine ⟨GlobalTheory.BcSpehCompare.isNormalised_of_isCsd hc, fun ψ hψ => ?_⟩
  obtain ⟨T, hT⟩ := hc
  have hiso : (GlobalTheory.ThetaPull.thetaSub π).Iso π := by
    refine ⟨((GlobalTheory.ThetaPull.pull E n).submoduleMap π.V).symm.trans T, fun o φ => ?_⟩
    obtain ⟨χ, rfl⟩ := ((GlobalTheory.ThetaPull.pull E n).submoduleMap π.V).surjective φ
    have e : (GlobalTheory.ThetaPull.thetaSub π).op o ((GlobalTheory.ThetaPull.pull E n).submoduleMap π.V χ) =
        (GlobalTheory.ThetaPull.pull E n).submoduleMap π.V (π.op (thetaOp o) χ) :=
      Subtype.ext (GlobalTheory.ThetaPull.act_pull o χ.1)
    change T (((GlobalTheory.ThetaPull.pull E n).submoduleMap π.V).symm ((GlobalTheory.ThetaPull.thetaSub π).op o
        ((GlobalTheory.ThetaPull.pull E n).submoduleMap π.V χ))) = π.op o (T (((GlobalTheory.ThetaPull.pull E n).submoduleMap π.V).symm
        ((GlobalTheory.ThetaPull.pull E n).submoduleMap π.V χ)))
    erw [e, LinearEquiv.symm_apply_apply, LinearEquiv.symm_apply_apply, hT]
  have hV : (GlobalTheory.ThetaPull.thetaSub π).V = π.V := hM E n _ _ (Quotient.sound hiso)
  have hχ : act (.fin (PhiU n (Af E))) (act (.cpt (PhiK E n)) ψ) ∈ π.V := π.stable _ _ (π.stable _ _ hψ)
  have hp : GlobalTheory.ThetaPull.pull E n (act (.fin (PhiU n (Af E))) (act (.cpt (PhiK E n)) ψ)) ∈
      (GlobalTheory.ThetaPull.thetaSub π).V := Submodule.mem_map_of_mem hχ
  refine ⟨_, hV ▸ hp, fun g => ?_⟩
  have hK : Unitary.toUnits (PhiK E n) = PhiU n (Cinf E) := Units.ext rfl
  have h1 : (GlobalTheory.ThetaPull.pull E n (act (.fin (PhiU n (Af E))) (act (.cpt (PhiK E n)) ψ))).1 g =
      ψ.1 (GlobalTheory.ThetaPull.thetaA E n g * PhiU n (Ad E)) := by
    change ψ.1 (GlobalTheory.ThetaPull.thetaA E n g * finGL E n (PhiU n (Af E)) * infGL E n (Unitary.toUnits (PhiK E n))) = _
    rw [hK, mul_assoc, ← PhiU_Ad]
  rw [h1, thetaA_mul_PhiU, ← ratGL_PhiU]
  exact (π.cusp ψ hψ).1.left _ _

end DiscreteGroups.T1.G

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.ThetaAMulPhiU =====

-- ===== clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.ThetaFixOfOfMult =====
-- clump-header: {"m": "Development.DiscreteGroups.PiInvariants.CompactSupportTwists.ThetaFixOfOfMult", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.CuspidalMultiplicityOne\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.PowerBoundFastDecay\npublic import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.ThetaAMulPhiU\npublic import Development.WeilBound.RepresentationTheoryGL.ConstantTermFiniteness.LieInvariants.InvariantOfLieOneLEqZero\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaRigidity.JacquetShalikaRigidity\npublic import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.CuspRapidDecayGL.CuspRapidDecaySiegelGL\npublic import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.MultiplicityOneRigidity.GelfandKazhdanDualOfRigidity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace DiscreteGroups.T1.G

theorem thetaFixOf_of_mult (hM : GlobalTheory.Published.CuspidalMultiplicityOne) : PositivityTheory.Rg.BcB.Desc.ThetaFixOf :=
  thetaFixOf_of (PositivityTheory.JMult1.gelfandKazhdanDual_of_rigidity PositivityTheory.AdelicQuotientData.jacquetShalikaRigidity
    _root_.GlobalTheory.CompanionTheory.CuspFinGL.cuspFormsBoundedGL) PositivityTheory.Rg.HF.GL.automorphicFormsFiniteGL hM

end DiscreteGroups.T1.G
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.ThetaFixOfOfMult =====

-- ===== clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.ThetaFixTop =====
-- clump-header: {"m": "Development.DiscreteGroups.PiInvariants.CompactSupportTwists.ThetaFixTop", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.PowerBoundFastDecay\npublic import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.ThetaFixOfOfMult\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.SmoothVectorEstimates.CuspidalMultiplicityOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace DiscreteGroups.T1.G

theorem thetaFixOf : PositivityTheory.Rg.BcB.Desc.ThetaFixOf := thetaFixOf_of_mult PositivityTheory.jumpWindows.cuspidalMultiplicityOne

end DiscreteGroups.T1.G
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.ThetaFixTop =====
