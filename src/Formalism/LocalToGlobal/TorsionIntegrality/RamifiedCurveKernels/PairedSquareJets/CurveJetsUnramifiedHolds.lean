module

public import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.CurveEndoAll
public import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.FinalA
public import Formalism.GaussJetBounds.StatementI
public import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.StatementV
public import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.StatementS
import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.CurveFormalFirstLevelHolds
import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.CurveSecondLogDerivative
import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.FirstLevelFromUniversalLaw
import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.PhNormFromDatum
import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.Hurwitz
import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.Several
import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.CoeffPowEqZeroOfCc
import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.IntPSDerivativeOfLG
import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.SecondCoeffConsistency

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.CurveKernelUnramOf, Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.CurveJetsUnramifiedHolds

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.CurveKernelUnramOf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.CurveKernelUnramOf", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.CurveEndoAll\npublic import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.FinalA\nimport Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.CurveFormalFirstLevelHolds\nimport Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.CurveSecondLogDerivative\nimport Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.FirstLevelFromUniversalLaw\nimport Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.PhNormFromDatum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.GaussJetBounds.StatementI\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators

namespace Formalism.L2.Th1.G

open Formalism.L2.Th1.C
open Formalism.L2.Th1.A (logSer expSer wpReg xS)
open Formalism.G (unitBall)
open Formalism.DworkPowerSeriesWeights (jetPair)
open WeierstrassCurveSeries

theorem curveJetsUnram (K : Type) [NormedField K] [IsUltrametricDist K] [CharZero K]
    (W : WeierstrassCurve K) (hc : CoeffIn (unitBall K) W) (h2 : ‖(2 : K)‖ = 1)
    (s2 al albar : K) (t : ℤ) (ι : Type) [Fintype ι] (neg : ι → ι) (xP yP : ι → K)
    (hE : IsEndoCurve W neg xP yP al) (hx : ∀ P, ‖xP P‖ ≤ 1) (hy : ∀ P, ‖yP P‖ ≤ 1)
    (hNal : al * albar = (Fintype.card ι : K) + 1) (hal : ‖al‖ = 1) (ht : al + albar = (t : K))
    (hd : ‖al - albar‖ = 1) (hb : ‖(al ^ 2 - 1) * (W.b₂ / 12)‖ ≤ 1)
    (hs : al * (al - albar) * s2 = ∑ P, (xP P + W.b₂ / 12)) :
    ∀ i : ℕ, 1 ≤ i → ‖jet (logSer W) (Formalism.L2.Th1.B.phO s2 (wpReg W) (logSer W)) i‖ ≤ 1 := by
  obtain ⟨hlp, hwp, hAx, hFG, -⟩ := curveFrame K (unitBall K) W hc
  have hPh : IsPh (wpReg W) s2 (logSer W) (Formalism.L2.Th1.B.phO s2 (wpReg W) (logSer W)) :=
    (phOIsPh K (wpReg W) (logSer W) s2 hlp.1 hlp.2.1).2
  have hFr : Frame (unitBall K) (logSer W) (expSer W)
      (Formalism.L2.Th1.B.phO s2 (wpReg W) (logSer W)) := ⟨hlp, hFG, hPh.1⟩
  have h2R : (2 : K)⁻¹ ∈ unitBall K := inv_mem_unitBall h2
  have hal0 : al ≠ 0 := by
    intro h
    rw [h, norm_zero] at hal
    exact zero_ne_one hal
  have halR : al ∈ unitBall K := hal.le
  have halI : al⁻¹ ∈ unitBall K := inv_mem_unitBall hal
  have hDat := curveEndoR K (unitBall K) W hc ι neg xP yP al albar hE hx hy hNal halR halI hb
  have hEal : EndInt (unitBall K) (logSer W) (expSer W) al :=
    endIntFromDatum K (unitBall K) (wpReg W) (logSer W) (expSer W) (xS W) (W.b₂ / 12) ι neg xP _ _
      al albar hlp hwp hAx h2R hDat
  have hEbar : EndInt (unitBall K) (logSer W) (expSer W) albar := by
    obtain ⟨-, -, -, -, hm, hadd, hmul⟩ := ptClosure K (unitBall K) (logSer W) (expSer W) hlp hFG
    have h := hadd _ _ (endInt_int (unitBall K) _ _ hlp hFG t) (hmul _ _ hm hEal)
    have he : (t : K) + -1 * al = albar := by rw [← ht]; ring
    rwa [he] at h
  have hNorm : PhNormAt (unitBall K) (logSer W) (expSer W)
      (Formalism.L2.Th1.B.phO s2 (wpReg W) (logSer W)) al albar :=
    phNormFromDatum K (unitBall K) (wpReg W) s2 (logSer W) (expSer W) _ (xS W) (W.b₂ / 12) ι neg xP
      _ _ al albar hlp hPh hwp hAx h2R hDat hs
  have hF1 := weierstrass_biadditive_mod_equiv K W hc h2 s2
  have hAdj : AdjAt (unitBall K) (logSer W) (expSer W)
      (Formalism.L2.Th1.B.phO s2 (wpReg W) (logSer W)) al albar :=
    _root_.Formalism.L2.Th1.G.adjoint_unit_norm_holds K (unitBall K) (logSer W) (expSer W) _ al albar ((Fintype.card ι : ℤ) + 1) hFr hF1
      hal0 halI hEal hEbar (by rw [hNal]; push_cast; ring) hNorm
  have hne : al ≠ albar := by
    intro h
    rw [h, sub_self, norm_zero] at hd
    exact zero_ne_one hd
  exact (jetsUnramified K (unitBall K) (logSer W) (expSer W) _ al albar hFr hF1
    (curveNegNorm K (unitBall K) W hc h2R s2) h2R hAdj (inv_mem_unitBall hd) hne).1

end Formalism.L2.Th1.G
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.CurveKernelUnramOf =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.CurveJetsUnramifiedHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.CurveJetsUnramifiedHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.StatementV\npublic import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.StatementS\npublic import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.CurveKernelUnramOf\nimport Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.Hurwitz\nimport Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.Several\nimport Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.CoeffPowEqZeroOfCc\nimport Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.IntPSDerivativeOfLG\nimport Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.SecondCoeffConsistency\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators

namespace Formalism.L2.Th1.G

open Formalism.L2.Th1.C
open Formalism.L2.Th1.A (logSer expSer wpReg)
open Formalism.G (unitBall)
open Formalism.DworkPowerSeriesWeights (JetsIntegral jetPair mfact)

namespace InflationOneCocycles

theorem mfact_single_unit (n : ℕ) : mfact (Finsupp.single () n) = n.factorial := by
  unfold mfact
  rw [Finsupp.prod_single_index]
  rfl

theorem jetsIn1_iff {K : Type} [Field K] (R : Subring K) (f : PowerSeries K) :
    JetsIn1 R f ↔ JetsIn R (f : MvPowerSeries Unit K) := by
  constructor
  · intro h κ
    have e : κ = Finsupp.single () (κ ()) := by
      ext
      simp
    rw [e, mfact_single_unit]
    exact h (κ ())
  · intro h n
    have := h (Finsupp.single () n)
    rw [mfact_single_unit] at this
    exact this

theorem jetsIn_half_sqSum {K : Type} [Field K] [CharZero K] {R : Subring K} {n : Type} [Fintype n]
    {S : K} (hS : S ∈ R) {c : n → K} (hc : ∀ i, c i ∈ R) :
    JetsIn R (MvPowerSeries.C (S / 2) * sqSum c) := by
  have e : MvPowerSeries.C (S / 2) * sqSum c =
      ∑ i, MvPowerSeries.C (S * c i) *
        (MvPowerSeries.C (((2 : ℕ).factorial : K)⁻¹) * MvPowerSeries.X i ^ 2) := by
    unfold sqSum
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [← mul_assoc, ← mul_assoc, ← map_mul, ← map_mul]
    congr 2
    simp only [Nat.factorial]
    push_cast
    ring
  rw [e]
  exact jetsIn_sum _ _ fun i _ => jetsIn_mul (jetsIn_C (R.mul_mem hS (hc i)))
    (jetsIn_divPow (MvPowerSeries.constantCoeff_X i) (jetsIn_X i) 2)

theorem shapeAt_one {K : Type} [NormedField K] [IsUltrametricDist K] [CharZero K]
    {l linv ph : PowerSeries K} (hlp : IsLogPair l linv) (hph : PowerSeries.constantCoeff ph = 0)
    (hj : ∀ i : ℕ, 1 ≤ i → ‖jet l ph i‖ ≤ 1) : ShapeAt l linv ph 1 := by
  have hv : PowerSeries.constantCoeff linv = 0 := hlp.2.2.1
  have hs : PowerSeries.HasSubst linv := JetSubstitutionLemmas.hs1 hv
  refine ⟨?_, fun i hi _ => hj i hi, ?_⟩
  · rw [Nat.cast_one, norm_one, Real.one_rpow]
    exact hj 2 (by norm_num)
  · set S : K := jet l ph 2 / 2 with hS
    set ph0 : PowerSeries K := PowerSeries.subst linv ph - PowerSeries.C S * PowerSeries.X ^ 2
      with hph0
    have j0 : JetsIn1 (unitBall K) ph0 := jetsIn1_rest hlp hph fun i hi _ => hj i hi
    have cph0 : PowerSeries.constantCoeff ph0 = 0 := by
      rw [hph0, map_sub, JetSubstitutionLemmas.cc_subst1 hv, hph]
      simp
    have c1 : PowerSeries.constantCoeff (-ph) = 0 := by rw [map_neg, hph, neg_zero]
    have c2 : PowerSeries.constantCoeff (-(PowerSeries.C S * PowerSeries.X ^ 2) : PowerSeries K) = 0 := by
      simp
    have c3 : PowerSeries.constantCoeff (-ph0) = 0 := by rw [map_neg, cph0, neg_zero]
    have e : PowerSeries.subst linv (-ph) = -(PowerSeries.C S * PowerSeries.X ^ 2) + -ph0 := by
      rw [← PowerSeries.coe_substAlgHom hs, map_neg, PowerSeries.coe_substAlgHom hs, hph0]
      ring
    refine ⟨(mvExp (-ph0) : PowerSeries K), ?_, (mvExpLaws K Unit).2.1 _ c3, ?_⟩
    · rw [jetsIn1_iff]
      exact jetsIn_mvExp c3 (jetsIn_neg ((jetsIn1_iff _ _).1 j0))
    · rw [mvExpSubst K Unit _ linv c1 hv, e]
      exact mvExp_add c2 c3

end InflationOneCocycles

open InflationOneCocycles

theorem curve_jets_unramified_holds : CurveJetsUnram := by
  intro K _ _ _ W hc h2 s2 al albar t ι _ neg xP yP hE hx hy hNal hal ht hd hb hs
  exact curveJetsUnram K W hc h2 s2 al albar t ι neg xP yP hE hx hy hNal hal ht hd hb hs

end Formalism.L2.Th1.G
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.CurveJetsUnramifiedHolds =====
