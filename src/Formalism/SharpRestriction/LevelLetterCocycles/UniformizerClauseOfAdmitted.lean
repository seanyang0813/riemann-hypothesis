module

public import Formalism.SharpRestriction.LevelLetterCocycles.GCoordProp
public import Formalism.SharpRestriction.LevelLetterCocycles.EvaluationAtUniformizerPower
public import Formalism.SharpRestriction.LevelLetterCocycles.UniformizerUnitAndQFactor
public import Formalism.SharpRestriction.LevelLetterCocycles.DvOZeroHigh
public import Formalism.SharpRestriction.LevelLetterCocycles.JumpsInLetterOfEvenIndex
public import Formalism.SharpRestriction.LevelLetterCocycles.UniversalGeneralOfRestriction
public import Formalism.SharpRestriction.LevelLetterCocycles.DualLemmaOfDeterminant
public import Formalism.SharpRestriction.LevelLetterCocycles.RingConditionOfDeltaInvariants
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.FilDimOf
public import Formalism.SharpRestriction.LevelLetterCocycles.LatticeBoundsOfThreeParts
public import Formalism.SharpRestriction.LevelLetterCocycles.WachCoordinates
public import Formalism.SharpRestriction.LevelLetterCocycles.AnnihilatorGeneralOfRingCondition
public import Formalism.SharpRestriction.LevelLetterCocycles.BaseChangePreservesUnitaryOf
public import Formalism.SharpRestriction.LevelLetterCocycles.CompleteMax
public import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowerCongruenceOfAdmitted
public import Formalism.SharpRestriction.LevelLetterCocycles.IsFracOL
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.IsAdicCompleteOfLe
public import Formalism.SharpRestriction.LevelLetterCocycles.RingHypothesesOfCrystalline
public import Formalism.SharpRestriction.LevelLetterCocycles.TruncationClauseOfLatticeHypotheses
public import Formalism.LocalRingCardinality.SpanPowerMembership.NDLocE
import Formalism.SharpRestriction.LevelLetterCocycles.LemmaDN0OfAdmits
import Formalism.SharpRestriction.LevelLetterCocycles.LocalizationQuotientSeparatedDvd
import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExistsXPowMul
import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.RkMultVNonneg
import Formalism.SharpRestriction.LevelLetterCocycles.TmulMemFilV
import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfMembership
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.SmulSDivMem
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.At0HomApply, Formalism.SharpRestriction.LevelLetterCocycles.DlOfQp, Formalism.SharpRestriction.LevelLetterCocycles.RingClausesAtUniformizer, Formalism.SharpRestriction.LevelLetterCocycles.UniformizerClauseOfAdmitted

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.At0HomApply =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.At0HomApply", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.GCoordProp\nimport Formalism.SharpRestriction.LevelLetterCocycles.LemmaDN0OfAdmits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.RamifiedCoefficientChains.S9.GCoord

open Module Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.RamifiedCoefficientChains Formalism.MainNotions.RamifiedCoefficientChains.S9

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n]

def at0Hom (W : LocWach PD LL O v n) (hz : PowerSeries.constantCoeff W.π₀₁ = 0) :
    PowerSeries O →+* LetA O n where
  toFun := Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W
  map_one' := by
    have := Formalism.MainNotions.RamifiedCoefficientChains.S9.ShB.evalZero_C W (1 : O)
    rw [map_one, map_one] at this
    exact this
  map_mul' := Formalism.MainNotions.RamifiedCoefficientChains.S9.ShB.evalZero_mul W hz
  map_zero' := by
    have := Formalism.MainNotions.RamifiedCoefficientChains.S9.ShB.evalZero_C W (0 : O)
    rw [map_zero, map_zero] at this
    exact this
  map_add' := Formalism.MainNotions.RamifiedCoefficientChains.S9.ShB.evaluation_add W hz

theorem at0Hom_apply (W : LocWach PD LL O v n) (hz : PowerSeries.constantCoeff W.π₀₁ = 0) (f : PowerSeries O) :
    at0Hom W hz f = Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W f := rfl

theorem gCoord_holds (W : LocWach PD LL O v n) : GCoordProp W := by
  intro T i h c r e e' he P Z hP hz hqpu k hg hgDL a ha l
  classical
  have hqp : Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (PowerSeries.X + PowerSeries.C ((PD.p : ℕ) : O)) = Formalism.MainNotions.LiftingTheory.qp W := by
    rw [Formalism.MainNotions.RamifiedCoefficientChains.S9.ShB.evaluation_add W hz, Formalism.MainNotions.RamifiedCoefficientChains.S9.ShB.evalZero_X_eq_pi0 W hz, Formalism.MainNotions.RamifiedCoefficientChains.S9.ShB.evalZero_C, map_natCast]
    rfl
  set x := Formalism.MainNotions.LiftingTheory.qp W ^ c • Formalism.MainNotions.RamifiedCoefficientChains.S9.DetS.gE W T h c e' Z k with hx
  have hxN : x ∈ W.N T := (W.N T).smul_mem _ hg
  have hxDL : Formalism.MainNotions.CrystallineLiftingInputs.DL W T i x := by
    refine ⟨by rw [hx, smul_comm, hgDL.1], fun δ hδ => ?_⟩
    rw [hx, Formalism.MainNotions.RamifiedCoefficientChains.S9.NinQ.γD_smulA, map_pow,
      Formalism.MainNotions.RamifiedCoefficientChains.S9.LD.qp_mem W (Formalism.MainNotions.RamifiedCoefficientChains.S9.LD.uniformizer_mem_delta_invariants W) δ hδ, hgDL.2 δ hδ]

  have e1 : x = ∑ l, Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W ((PowerSeries.X + PowerSeries.C ((PD.p : ℕ) : O)) ^ c * a l) • e l := by
    rw [hx, ha, Finset.smul_sum]
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [smul_smul]
    congr 1
    rw [show Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W ((PowerSeries.X + PowerSeries.C ((PD.p : ℕ) : O)) ^ c * a l) =
      at0Hom W hz ((PowerSeries.X + PowerSeries.C ((PD.p : ℕ) : O)) ^ c * a l) from rfl, map_mul, map_pow,
      at0Hom_apply, at0Hom_apply, hqp]

  have hcancel : x = Formalism.MainNotions.LiftingTheory.qp W ^ h • Formalism.MainNotions.RamifiedCoefficientChains.S9.DetS.ftE W T e' Z k := by
    rw [hx, Formalism.MainNotions.RamifiedCoefficientChains.S9.DetS.gE, ← algebraMap_smul W.EE (Formalism.MainNotions.LiftingTheory.qp W ^ c), smul_smul, map_pow,
      ← mul_pow, Ring.mul_inverse_cancel _ hqpu, one_pow, one_smul]
  have e2 : x = ∑ l, Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W ((P * Z) l k) • e l := by
    rw [hcancel, Formalism.MainNotions.RamifiedCoefficientChains.S9.DetS.ftE, Finset.smul_sum]
    simp only [pow_one]
    have : ∀ m₁, Formalism.MainNotions.LiftingTheory.qp W ^ h • (Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (Z m₁ k) • W.φD T (e' m₁)) =
        ∑ l, (Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (Z m₁ k) * Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (P l m₁)) • e l := by
      intro m₁
      rw [smul_comm, hP m₁, Finset.smul_sum]
      exact Finset.sum_congr rfl fun l _ => by rw [smul_smul]
    simp only [this]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun l _ => ?_

    rw [← Finset.sum_smul, Matrix.mul_apply, ← at0Hom_apply W hz, map_sum]
    congr 1
    refine Finset.sum_congr rfl fun m₁ _ => ?_
    rw [map_mul, at0Hom_apply, at0Hom_apply, mul_comm]
  have huniq := (he.2 x hxN hxDL).unique e1.symm.symm e2
  exact congrFun huniq l

end Formalism.MainNotions.RamifiedCoefficientChains.S9.GCoord
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.At0HomApply =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DlOfQp =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DlOfQp", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.EvaluationAtUniformizerPower\npublic import Formalism.SharpRestriction.LevelLetterCocycles.UniformizerUnitAndQFactor\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvOZeroHigh\npublic import Formalism.SharpRestriction.LevelLetterCocycles.JumpsInLetterOfEvenIndex\nimport Formalism.SharpRestriction.LevelLetterCocycles.LemmaDN0OfAdmits\nimport Formalism.SharpRestriction.LevelLetterCocycles.LocalizationQuotientSeparatedDvd\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExistsXPowMul\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.RkMultVNonneg\nimport Formalism.SharpRestriction.LevelLetterCocycles.TmulMemFilV\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PowerSeries.Inverse\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.RamifiedCoefficientChains.S9.GM

open Module Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.RamifiedCoefficientChains Formalism.MainNotions.RamifiedCoefficientChains.S9 Formalism.MainNotions.RamifiedCoefficientChains.S9.LD Formalism.MainNotions.RamifiedCoefficientChains.S9.DetD
  Formalism.MainNotions.RamifiedCoefficientChains.S9.ShB Formalism.MainNotions.RamifiedCoefficientChains.S9.DetS TensorProduct

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n]
    (W : LocWach PD LL O v n)

theorem filLev_anti (T : LocLat G Qp LL O) (i : ZMod n) :
    Antitone fun a : ℤ => Formalism.MainNotions.WachCoordinates.FilLev W T i 0 a := by
  intro a b hab
  exact Submodule.map_mono (Submodule.map_mono
    (inf_le_inf_right _ fun x hx => Formalism.MainNotions.UnusedSlot80.LevR.filCris_anti T.ρ hab hx))

theorem ιDi_le_fil (hbij : Function.Bijective (algebraMap K₀ K)) (T : LocLat G Qp LL O) (i : ZMod n)
    (H : ℕ) (hJ : ∀ τ : K →ₐ[Qp] LL, Formalism.MainNotions.LiftingTheory.Over W τ i → ∀ a, IsJumpV PD T.ρ τ a → -(H : ℤ) ≤ a)
    (a : ℤ) (ha : a ≤ -(H : ℤ)) : Formalism.MainNotions.DeltaInvariantLattices.ιDi W T i ≤ Formalism.MainNotions.WachCoordinates.FilLev W T i 0 a := by
  intro z hz
  obtain ⟨x, hx, rfl⟩ := hz
  obtain ⟨τ, hτ, hover⟩ := Formalism.MainNotions.UnusedSlot80.LevC.tau_over W hbij i
  have h1 := Formalism.MainNotions.UnusedSlot80.LevC.fil_low W T i τ hover hbij.2 H (hJ τ hτ) hx
  have h2 := Formalism.MainNotions.UnusedSlot80.LevR.filCris_anti T.ρ ha h1
  refine ⟨x, ⟨x, ⟨h2, by simpa using hx⟩, by simp⟩, rfl⟩

theorem qp_smul_gE (hq : IsUnit (algebraMap (LetA O n) W.EE (Formalism.MainNotions.LiftingTheory.qp W))) (T : LocLat G Qp LL O)
    (h c : ℕ) {r : ℕ} (e' : Fin r → W.DD T) (Z : Matrix (Fin r) (Fin r) (PowerSeries O)) (k : Fin r) :
    Formalism.MainNotions.LiftingTheory.qp W ^ c • gE W T h c e' Z k = Formalism.MainNotions.LiftingTheory.qp W ^ h • ftE W T e' Z k := by
  unfold gE
  rw [← algebraMap_smul W.EE (Formalism.MainNotions.LiftingTheory.qp W ^ c), smul_smul, map_pow, ← mul_pow,
    Ring.mul_inverse_cancel _ hq, one_pow, one_smul]

theorem qp_pow_inj (hq : IsUnit (algebraMap (LetA O n) W.EE (Formalism.MainNotions.LiftingTheory.qp W))) (T : LocLat G Qp LL O)
    (c : ℕ) (z : W.DD T) (hz : Formalism.MainNotions.LiftingTheory.qp W ^ c • z = 0) : z = 0 := by
  calc z = ((Ring.inverse (algebraMap (LetA O n) W.EE (Formalism.MainNotions.LiftingTheory.qp W))) ^ c *
        (algebraMap (LetA O n) W.EE (Formalism.MainNotions.LiftingTheory.qp W)) ^ c) • z := by
          rw [← mul_pow, Ring.inverse_mul_cancel _ hq, one_pow, one_smul]
    _ = (Ring.inverse (algebraMap (LetA O n) W.EE (Formalism.MainNotions.LiftingTheory.qp W))) ^ c •
        (algebraMap (LetA O n) W.EE (Formalism.MainNotions.LiftingTheory.qp W ^ c) • z) := by rw [smul_smul, map_pow]
    _ = 0 := by rw [algebraMap_smul, hz, smul_zero]

theorem qp_mem_AΔ : Formalism.MainNotions.LiftingTheory.qp W ∈ W.AΔ :=
  W.AΔ.add_mem (Formalism.MainNotions.RamifiedCoefficientChains.S9.LD.uniformizer_mem_delta_invariants W) (W.AΔ.natCast_mem _)

theorem dl_of_qp (hq : IsUnit (algebraMap (LetA O n) W.EE (Formalism.MainNotions.LiftingTheory.qp W))) (T : LocLat G Qp LL O)
    (i : ZMod n) (c : ℕ) (g y : W.DD T) (hgy : Formalism.MainNotions.LiftingTheory.qp W ^ c • g = y)
    (hy : Formalism.MainNotions.CrystallineLiftingInputs.DL W T i y) : Formalism.MainNotions.CrystallineLiftingInputs.DL W T i g := by
  constructor
  · apply sub_eq_zero.1
    apply qp_pow_inj W hq T c
    rw [smul_sub, smul_comm (Formalism.MainNotions.LiftingTheory.qp W ^ c) (letE i : LetA O n) g, hgy, hy.1, sub_self]
  · intro δ hδ
    apply sub_eq_zero.1
    apply qp_pow_inj W hq T c
    have hA : W.γA δ (Formalism.MainNotions.LiftingTheory.qp W ^ c) = Formalism.MainNotions.LiftingTheory.qp W ^ c :=
      W.AΔ.pow_mem (qp_mem_AΔ W) c δ hδ
    have e := Formalism.MainNotions.RamifiedCoefficientChains.S9.NinQ.γD_smulA W T δ (Formalism.MainNotions.LiftingTheory.qp W ^ c) g
    rw [hA, hgy, hy.2 δ hδ] at e
    rw [smul_sub, ← e, hgy, sub_self]

theorem ring_clauses_at_uniformizer (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W) (hA : Formalism.MainNotions.LiftingTheory.CaseA W) (T : LocLat G Qp LL O)
    (hT : IsCrys PD T.ρ) : Formalism.MainNotions.RamifiedCoefficientChains.Sh.BT.Ring9 W := by
  have hfin1 : finrank K₀ K = 1 := by
    have := (LinearEquiv.ofBijective (Algebra.linearMap K₀ K) hA.1).finrank_eq
    rw [Module.finrank_self] at this
    exact this.symm
  obtain ⟨-, -, h9'⟩ := h9 T hT hA.2.1 hA.2.2
  obtain ⟨hring, -⟩ := h9' hfin1
  exact hring

theorem gE_mem (hE : Formalism.MainNotions.RamifiedCoefficientChains.DcrisExactStrict PD LL) (hC : Formalism.MainNotions.RamifiedCoefficientChains.CrysSubQuot PD LL)
    (hQ : Formalism.MainNotions.RamifiedCoefficientChains.DdREqDcris PD LL) (h5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W) (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W)
    (hRu : Formalism.MainNotions.RamifiedCoefficientChains.Sh.ExpRules W) (hEC : Formalism.MainNotions.RamifiedCoefficientChains.Sh.ExpCrit W)
    {d : ℕ} {T₁ T₂ : LocLat G Qp LL O} {F : LatHom T₁.L T₂.L} {b : ZMod n → ℕ} {S η m : ℕ}
    (hS : SetCS W d T₁ T₂ F b S η m) (i : ZMod n) (hi : i ∈ evens n d)
    (e' : Fin (finrank LL T₂.V) → W.DD T₂) (m' : ℕ) (u : Fin m' → ℤ)
    (had : AdaptData W T₂ i (b i + S) η m e' m' u) (σ : ℕ) (Z : Matrix _ _ (PowerSeries O))
    (hZP : ZProps W T₂ i (b i + S + η) σ e' had.1 Z) (j : Fin m') (hmr : m' ≤ finrank LL T₂.V) :
    gE W T₂ (b i + S) ((b i + S : ℕ) + u j).toNat e' Z (Fin.castLE hmr j) ∈ NDl W T₂ i := by
  have hie : (i.val + d) % 2 = 0 := (Finset.mem_filter.1 hi).2
  have hCA : Formalism.MainNotions.LiftingTheory.CaseA W := hS.1
  have hT : IsCrys PD T₂.ρ := hS.2.2.2.2.2.1.2.1
  have hl11 : 11 ≤ PD.p := hS.2.1
  obtain ⟨ζ, hζ⟩ := hS.2.2.2.2.1
  obtain ⟨-, hπu, w, hw⟩ := DetS.uniformizer_unit_and_q_factor W h9 hCA T₂ hT (by omega)
  have hq := DetS.qp_unit W hπu
  have hR9 := ring_clauses_at_uniformizer W h9 hCA T₂ hT
  obtain ⟨-, -, hmr', hwin, hfil, -⟩ := id had
  have hηb := Formalism.MainNotions.N.Pv.LocalLengthBound.rk_eta_lt W hS i
  set h : ℕ := b i + S with hhdef
  set k : Fin (finrank LL T₂.V) := Fin.castLE hmr j with hkdef
  set c : ℕ := ((h : ℤ) + u j).toNat with hcdef
  have hc : (c : ℤ) = h + u j := Int.toNat_of_nonneg (by have := (hwin j).1; omega)

  have hyN : Formalism.MainNotions.LiftingTheory.qp W ^ h • ftE W T₂ e' Z k ∈ NDl W T₂ i := by
    unfold ftE
    rw [Finset.smul_sum]
    refine Submodule.sum_mem _ fun m₁ _ => ?_
    rw [smul_comm, pow_one]
    have hm := DetA.qpφ_mem W hE hC hQ h5 h9 hS i hie e' had.1 m₁
    have ha := Formalism.MainNotions.RamifiedCoefficientChains.Sh.BT.evaluation_mem_invariants W hR9 (Z m₁ k)
    refine ⟨(W.N T₂).smul_mem _ hm.1, ?_, fun δ hδ => ?_⟩
    · rw [smul_comm (letE i : LetA O n), hm.2.1]
    · rw [Formalism.MainNotions.RamifiedCoefficientChains.S9.NinQ.γD_smulA W T₂ δ, ha δ hδ, hm.2.2 δ hδ]
  have hgy := qp_smul_gE W hq T₂ h c e' Z k
  have hgDL := dl_of_qp W hq T₂ i c _ _ hgy hyN.2

  obtain ⟨u0, hlq, hu0⟩ := Formalism.MainNotions.RamifiedCoefficientChains.S9.NinQ.lev_q_X_mul W i ζ hζ (by omega)
    (Formalism.MainNotions.N.Pv.LocalLengthBound.p_ne_zero_LL W)
  set U : PowerSeries LL := W.lev i ζ ((↑w⁻¹ : (LetA O n)ˣ) : LetA O n) * u0 with hUdef
  have hwq : W.lev i ζ (Formalism.MainNotions.LiftingTheory.qp W) = PowerSeries.X * U := by
    have e : Formalism.MainNotions.LiftingTheory.qp W = ((↑w⁻¹ : (LetA O n)ˣ) : LetA O n) * W.q := by
      rw [hw, ← mul_assoc, Units.inv_mul, one_mul]
    rw [e, map_mul, hlq, hUdef]; ring
  have hU : PowerSeries.constantCoeff U ≠ 0 := by
    rw [hUdef, map_mul]
    refine mul_ne_zero ?_ hu0
    exact (PowerSeries.isUnit_iff_constantCoeff.1 ((Units.isUnit _).map (W.lev i ζ))).ne_zero
  have hU0 : U ≠ 0 := fun h0 => hU (by rw [h0, map_zero])
  have hlevpow : ∀ t : ℕ, W.lev i ζ (Formalism.MainNotions.LiftingTheory.qp W ^ t) = PowerSeries.X ^ t * U ^ t := by
    intro t; rw [map_pow, hwq, mul_pow]
  have hlevne : ∀ t : ℕ, W.lev i ζ (Formalism.MainNotions.LiftingTheory.qp W ^ t) ≠ 0 := by
    intro t; rw [hlevpow]; exact mul_ne_zero (pow_ne_zero _ PowerSeries.X_ne_zero) (pow_ne_zero _ hU0)

  obtain ⟨hEx, hDi, -, -, hconv, -, -⟩ := hRu hCA T₂ hT i ζ hζ
  obtain ⟨df, hdf, -⟩ := hEx (ftE W T₂ e' Z k) _ hyN.1 (hlevne h)
  obtain ⟨dg, hdg, -⟩ := hEx (gE W T₂ h c e' Z k) (Formalism.MainNotions.LiftingTheory.qp W ^ c) (by rw [hgy]; exact hyN.1)
    (hlevne c)
  have hy1 := hconv (Formalism.MainNotions.LiftingTheory.qp W ^ h) _ df hdf
  have hy2 := hconv (Formalism.MainNotions.LiftingTheory.qp W ^ c) _ dg hdg
  rw [hgy] at hy2
  have huniq := (hEx (Formalism.MainNotions.LiftingTheory.qp W ^ h • ftE W T₂ e' Z k) 1 (by rw [one_smul]; exact hyN.1)
    (by rw [map_one]; exact one_ne_zero)).unique hy2 hy1
  obtain ⟨mg, hmg⟩ := hdg.1
  have hi1 : i - 1 + ((1 : ℕ) : ZMod n) = i := by push_cast; ring
  have hZ := hZP.2 k ζ hζ df (by rw [hi1]; exact hdf)
  have hv : ιV PD (LL := LL) (V := T₂.V) ((φVB PD (LL := LL) (V := T₂.V))^[1]
      (W.cmp T₂ ⟨e' k, (had.1.1 k).1⟩)) ∈ Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 (u j) := by
    rw [Function.iterate_one]; exact hfil j _
  set Fil : ℤ → Submodule LL (T₂.V ⊗[Qp] BdR) := fun a => Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 a with hFil
  have hanti : Antitone Fil := filLev_anti W T₂ i
  have hLBf : Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.LB 0 df := by
    intro t ht
    rw [hZ t (by omega), ite_eq_right (by omega)]
  set Ff := Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.smulS (U ^ h) df with hFf
  set E := Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.smulS (U ^ c) dg with hEdef
  have hF_mem : ∀ s : ℤ, s < ((h + η : ℕ) : ℤ) → Ff s ∈ Fil (u j) := by
    intro s hs
    rw [hFf, Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.smulS_eq_sum hLBf (U ^ h) s (s.toNat + 1)
      (by have := Int.self_le_toNat s; omega)]
    refine Submodule.sum_mem _ fun t _ => Submodule.smul_mem _ _ ?_
    rw [hZ _ (by omega)]
    split_ifs
    · exact Submodule.smul_mem _ _ hv
    · exact Submodule.zero_mem _
  have hF_neg : ∀ s : ℤ, s < 0 → Ff s = 0 := fun s hs =>
    Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.LB_smulS hLBf (U ^ h) s hs
  have hEF : ∀ t : ℤ, E t = Ff (t + u j) := by
    intro t
    have e1 : Formalism.MainNotions.RamifiedCoefficientChains.Sh.conv (W.lev i ζ (Formalism.MainNotions.LiftingTheory.qp W ^ c)) dg = fun s => E (s - c) := by
      rw [hlevpow, Formalism.MainNotions.N.Pv.LocalLengthBound.conv_eq, Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.smulS_mul hmg,
        Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.smulS_X_pow (Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.LB_smulS hmg _)]
    have e2 : Formalism.MainNotions.RamifiedCoefficientChains.Sh.conv (W.lev i ζ (Formalism.MainNotions.LiftingTheory.qp W ^ h)) df = fun s => Ff (s - h) := by
      rw [hlevpow, Formalism.MainNotions.N.Pv.LocalLengthBound.conv_eq, Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.smulS_mul hLBf,
        Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.smulS_X_pow (Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.LB_smulS hLBf _)]
    have e3 := congrFun huniq (t + c)
    rw [e1, e2] at e3
    simp only at e3
    rw [show t + (c : ℤ) - c = t by ring, show t + (c : ℤ) - h = t + u j by omega] at e3
    exact e3
  have hEDi : ∀ t, E t ∈ Formalism.MainNotions.DeltaInvariantLattices.ιDi W T₂ i := fun t =>
    Formalism.MainNotions.N.Pv.LocalLengthBound.smulS_mem hmg _ (hDi _ dg hgDL hdg) (U ^ c) t
  have hlow : ∀ a : ℤ, a ≤ -(h : ℤ) → Formalism.MainNotions.DeltaInvariantLattices.ιDi W T₂ i ≤ Fil a := by
    intro a ha
    refine ιDi_le_fil W hCA.1 T₂ i h (fun τ hτ a' ha' => ?_) a ha
    have hw2 := Formalism.MainNotions.N.Pv.LocalLengthBound.rk_jumps₂ W hE hC hQ hS i τ hτ a' ha'
    unfold JumpWinS at hw2
    rw [ite_eq_left hie] at hw2
    simp only [Set.mem_union, Set.mem_Icc] at hw2
    rw [hhdef]; push_cast at hw2 ⊢
    omega
  have hDgE : Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.Dg Fil 0 E := by
    intro t
    by_cases ht : t + u j < ((h + η : ℕ) : ℤ)
    · rw [hEF t]
      by_cases h0 : t + u j < 0
      · rw [hF_neg _ h0]; exact Submodule.zero_mem _
      · exact hanti (show 0 - t ≤ u j by omega) (hF_mem _ ht)
    · exact hlow (0 - t) (by have := (hwin j).2; push_cast at ht; omega) (hEDi t)
  have hUc : PowerSeries.constantCoeff (U ^ c) ≠ 0 := by rw [map_pow]; exact pow_ne_zero _ hU
  have hdg_eq : dg = Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.smulS (U ^ c)⁻¹ E :=
    (Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.smulS_inv hmg (U ^ c) hUc).symm
  have hDg : Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.Dg Fil 0 dg := by
    rw [hdg_eq]
    exact Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.Dg_smulS hanti (Formalism.MainNotions.N.Pv.LocalLengthBound.Ser.LB_smulS hmg _) hDgE _
  have hcrit := (hEC hCA T₂ hT i ζ hζ _ dg hgDL hdg).1 ⟨c, by rw [hgy]; exact hyN.1⟩
  refine ⟨hcrit.2 fun t => ?_, hgDL⟩
  have := hDg t
  simpa [hFil] using this

theorem gMem_of (hE : Formalism.MainNotions.RamifiedCoefficientChains.DcrisExactStrict PD LL) (hC : Formalism.MainNotions.RamifiedCoefficientChains.CrysSubQuot PD LL)
    (hQ : Formalism.MainNotions.RamifiedCoefficientChains.DdREqDcris PD LL) (h5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W) (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W)
    (hRu : Formalism.MainNotions.RamifiedCoefficientChains.Sh.ExpRules W) (hEC : Formalism.MainNotions.RamifiedCoefficientChains.Sh.ExpCrit W) : GMem W :=
  fun _ _ _ _ _ _ _ _ hS i hi e' m' u had σ Z hZP j hmr =>
    gE_mem W hE hC hQ h5 h9 hRu hEC hS i hi e' m' u had σ Z hZP j hmr

end Formalism.MainNotions.RamifiedCoefficientChains.S9.GM
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DlOfQp =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.RingClausesAtUniformizer =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.RingClausesAtUniformizer", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.UniversalGeneralOfRestriction\npublic import Formalism.SharpRestriction.LevelLetterCocycles.EvaluationAtUniformizerPower\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DualLemmaOfDeterminant\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RingConditionOfDeltaInvariants\nimport Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfMembership\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvOZeroHigh\nimport Formalism.SharpRestriction.LevelLetterCocycles.LemmaDN0OfAdmits\nimport Formalism.SharpRestriction.LevelLetterCocycles.LocalizationQuotientSeparatedDvd\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.FilDimOf\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.RkMultVNonneg\nimport Formalism.SharpRestriction.LevelLetterCocycles.TmulMemFilV\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical Module Submodule

namespace Formalism.MainNotions.RamifiedCoefficientChains.S9.AdB

section Chain

variable {O : Type*} [CommRing O] [IsDomain O] [IsPrincipalIdealRing O]
variable {ι M : Type*} [Fintype ι] [AddCommGroup M] [Module O M]

theorem canon (b : Basis ι O M) (P : Submodule O M) (T : Set ι) (h : P = span O (b '' T)) :
    P = span O (b '' {i | b i ∈ P}) := by
  have hT : T ⊆ {i | b i ∈ P} := fun i hi => by
    show b i ∈ P
    rw [h]; exact subset_span ⟨i, hi, rfl⟩
  apply le_antisymm
  · calc P = span O (b '' T) := h
      _ ≤ span O (b '' {i | b i ∈ P}) := span_mono (Set.image_mono hT)
  · rw [span_le]; rintro _ ⟨i, hi, rfl⟩; exact hi

theorem refine (b : Basis ι O M) (S : Set ι) (P : Submodule O M) (hP : P ≤ span O (b '' S))
    (hsat : Formalism.MainNotions.UnusedSlot80.UnivF.Sat P) :
    ∃ b' : Basis ι O M, (∀ i ∉ S, b' i = b i) ∧ span O (b' '' S) = span O (b '' S) ∧
      P = span O (b' '' {i | b' i ∈ P}) := by
  set Q := span O (b '' S) with hQdef
  have hli : LinearIndependent O (fun i : S => b i) :=
    b.linearIndependent.comp (fun i : S => (i : ι)) Subtype.val_injective
  have hQ : span O (Set.range fun i : S => b i) = Q := by rw [hQdef, Set.image_eq_range]
  let bQ : Basis S O Q := (Basis.span hli).map (LinearEquiv.ofEq _ _ hQ)
  let P' : Submodule O Q := P.comap Q.subtype
  have hP' : Formalism.MainNotions.UnusedSlot80.UnivF.Sat P' := by
    intro a x ha hx
    exact hsat a x ha (by simpa [P'] using hx)
  obtain ⟨c, S'', hS''⟩ := Formalism.MainNotions.UnusedSlot80.UnivF.adapted bQ P' hP'
  let f : ι → M := fun i => if h : i ∈ S then ((c ⟨i, h⟩ : Q) : M) else b i
  have hcQ : ∀ y ∈ Q, ∀ i ∉ S, b.repr y i = 0 := by
    intro y hy i hi
    rw [hQdef, Basis.mem_span_image] at hy
    by_contra h
    exact hi (hy (Finsupp.mem_support_iff.2 h))
  have hfQ : ∀ i ∈ S, f i ∈ Q := fun i hi => by simp only [f, dif_pos hi]; exact (c _).2
  have hli' : LinearIndependent O f := by
    rw [Fintype.linearIndependent_iff]
    intro g hg
    have hout : ∀ i ∉ S, g i = 0 := by
      intro i₀ hi₀
      have h1 := congrArg (fun y => b.repr y i₀) hg

      simp only [map_sum, map_smul, Finsupp.coe_finsetSum, Finset.sum_apply, Finsupp.smul_apply,
      map_zero, Finsupp.coe_zero, Pi.zero_apply] at h1
      rw [Finset.sum_eq_single i₀] at h1
      · simpa [f, dif_neg hi₀, Basis.repr_self] using h1
      · intro i _ hii
        by_cases hiS : i ∈ S
        · rw [hcQ _ (hfQ i hiS) i₀ hi₀, smul_zero]
        · simp [f, dif_neg hiS, Basis.repr_self, hii]
      · simp
    have e : ∑ i, g i • f i = ∑ j : S, g j • ((c j : Q) : M) := by
      rw [← Finset.sum_filter_add_sum_filter_not Finset.univ (fun i => i ∈ S),
        Finset.sum_eq_zero (s := Finset.univ.filter (fun i => ¬ i ∈ S))
          (fun i hi => by rw [hout i (Finset.mem_filter.1 hi).2, zero_smul]), add_zero,
        Finset.sum_subtype (Finset.univ.filter (fun i => i ∈ S)) (p := fun i => i ∈ S) (by simp)]
      refine Finset.sum_congr rfl fun j _ => ?_
      simp only [f, dif_pos j.2]
    have hin : ∑ j : S, g j • c j = 0 := by
      apply Subtype.ext
      rw [Submodule.coe_sum, Submodule.coe_zero]
      simp only [Submodule.coe_smul]
      rw [← e, hg]
    have hc := Fintype.linearIndependent_iff.1 c.linearIndependent _ hin
    intro i
    by_cases hiS : i ∈ S
    · exact hc ⟨i, hiS⟩
    · exact hout i hiS
  have hsp : ⊤ ≤ span O (Set.range f) := by
    rw [← b.span_eq, span_le]
    rintro _ ⟨i, rfl⟩
    by_cases hiS : i ∈ S
    · have hbQ : b i ∈ Q := subset_span ⟨i, hiS, rfl⟩
      have h1 : (⟨b i, hbQ⟩ : Q) ∈ span O (Set.range c) := by rw [c.span_eq]; trivial
      have h2 := Submodule.mem_map_of_mem (f := Q.subtype) h1
      rw [Submodule.map_span] at h2
      refine span_mono ?_ h2
      rintro _ ⟨y, ⟨j, rfl⟩, rfl⟩
      exact ⟨j.1, by simp [f, dif_pos j.2]⟩
    · exact subset_span ⟨i, by simp [f, dif_neg hiS]⟩
  let b' := Basis.mk hli' hsp
  have hb' : ∀ i, b' i = f i := Basis.mk_apply hli' hsp
  have hP2 : P = span O (b' '' (Subtype.val '' (S'' : Set S))) := by
    have hPQ : P = map Q.subtype P' := by
      show P = map Q.subtype (comap Q.subtype P)
      rw [Submodule.map_comap_subtype, inf_eq_right.2 hP]
    rw [hPQ, hS'', Submodule.map_span]
    congr 1
    ext x
    constructor
    · rintro ⟨_, ⟨j, hj, rfl⟩, rfl⟩
      exact ⟨j.1, ⟨j, hj, rfl⟩, by rw [hb']; simp [f, dif_pos j.2]⟩
    · rintro ⟨_, ⟨j, hj, rfl⟩, rfl⟩
      exact ⟨c j, ⟨j, hj, rfl⟩, by rw [hb']; simp [f, dif_pos j.2]⟩
  refine ⟨b', fun i hi => by rw [hb']; simp [f, dif_neg hi], ?_, canon b' P _ hP2⟩
  have himg : b' '' S = Q.subtype '' Set.range c := by
    ext x
    constructor
    · rintro ⟨i, hi, rfl⟩
      exact ⟨c ⟨i, hi⟩, ⟨_, rfl⟩, by rw [hb']; simp [f, dif_pos hi]⟩
    · rintro ⟨_, ⟨j, rfl⟩, rfl⟩
      exact ⟨j.1, j.2, by rw [hb']; simp [f, dif_pos j.2]⟩
  rw [himg, ← Submodule.map_span, c.span_eq, Submodule.map_subtype_top]

theorem chain (b : Basis ι O M) (F : ℕ → Submodule O M) (hF : ∀ k, F (k + 1) ≤ F k)
    (hsat : ∀ k, Formalism.MainNotions.UnusedSlot80.UnivF.Sat (F k)) (K : ℕ) :
    ∃ b' : Basis ι O M, ∀ k ≤ K, F k = span O (b' '' {i | b' i ∈ F k}) := by
  have hanti : Antitone F := antitone_nat_of_succ_le hF
  induction K with
  | zero =>
    obtain ⟨b', S, hS⟩ := Formalism.MainNotions.UnusedSlot80.UnivF.adapted b (F 0) (hsat 0)
    refine ⟨b', fun k hk => ?_⟩
    obtain rfl : k = 0 := by omega
    exact canon b' _ _ hS
  | succ K ih =>
    obtain ⟨b', hb'⟩ := ih
    obtain ⟨b'', hout, hspan, hP⟩ := refine b' {i | b' i ∈ F K} (F (K + 1))
      (by rw [← hb' K le_rfl]; exact hF K) (hsat _)
    refine ⟨b'', fun k hk => ?_⟩
    rcases Nat.lt_or_ge k (K + 1) with hlt | hge
    · have hkK : k ≤ K := by omega
      have hsub : {i | b' i ∈ F K} ⊆ {i | b' i ∈ F k} := fun i hi => hanti hkK hi
      have hD : b'' '' ({i | b' i ∈ F k} \ {i | b' i ∈ F K}) =
          b' '' ({i | b' i ∈ F k} \ {i | b' i ∈ F K}) :=
        Set.image_congr (fun i hi => hout i hi.2)
      have e1 : span O (b'' '' {i | b' i ∈ F k}) = span O (b' '' {i | b' i ∈ F k}) := by
        rw [← Set.union_sdiff_cancel hsub, Set.image_union, Set.image_union, span_union, span_union,
          hspan, hD]
      apply canon b'' (F k) {i | b' i ∈ F k}
      rw [e1]; exact hb' k hkK
    · obtain rfl : k = K + 1 := by omega
      exact hP

end Chain

section Count

variable {O LL : Type*} [CommRing O] [IsDomain O] [Field LL] [Algebra O LL] [IsFractionRing O LL]
variable {ι : Type*} [Fintype ι]

def toLLι : (ι → O) →ₗ[O] (ι → LL) :=
  LinearMap.pi fun k => (Algebra.linearMap O LL).comp (LinearMap.proj k)

theorem toLLι_apply (z : ι → O) (k : ι) : toLLι (LL := LL) z k = algebraMap O LL (z k) := rfl

theorem toLLι_inj : Function.Injective (toLLι (O := O) (LL := LL) (ι := ι)) := fun _ _ h =>
  funext fun k => IsFractionRing.injective O LL (congrFun h k)

def FF (G : Submodule LL (ι → LL)) : Submodule O (ι → O) :=
  (G.restrictScalars O).comap toLLι

theorem mem_FF (G : Submodule LL (ι → LL)) (z : ι → O) : z ∈ FF G ↔ toLLι z ∈ G := Iff.rfl

theorem clearι (y : ι → LL) : ∃ (a : O) (z : ι → O), a ≠ 0 ∧ toLLι z = a • y := by
  obtain ⟨b, hb⟩ := IsLocalization.exist_integer_multiples (nonZeroDivisors O) Finset.univ y
  choose z hz using fun j => hb j (Finset.mem_univ j)
  refine ⟨b, z, nonZeroDivisors.ne_zero b.2, funext fun j => ?_⟩
  rw [toLLι_apply, hz j]
  rfl

theorem mem_of_smulι (P : Submodule LL (ι → LL)) {a : O} (ha : a ≠ 0) {y : ι → LL}
    (h : a • y ∈ P) : y ∈ P := by
  have hane : algebraMap O LL a ≠ 0 := (map_ne_zero_iff _ (IsFractionRing.injective O LL)).2 ha
  have h2 : algebraMap O LL a • y ∈ P := by rw [algebraMap_smul]; exact h
  have h3 := P.smul_mem (algebraMap O LL a)⁻¹ h2
  rwa [smul_smul, inv_mul_cancel₀ hane, one_smul] at h3

theorem FF_sat (G : Submodule LL (ι → LL)) : Formalism.MainNotions.UnusedSlot80.UnivF.Sat (FF (O := O) G) := by
  intro a z ha hz
  rw [mem_FF, map_smul] at hz
  exact mem_of_smulι G ha hz

theorem FF_mono {G G' : Submodule LL (ι → LL)} (h : G ≤ G') : FF (O := O) G ≤ FF G' :=
  fun _ hz => h hz

theorem card_FF (G : Submodule LL (ι → LL)) (b' : Basis ι O (ι → O))
    (h : FF G = span O (b' '' {i | b' i ∈ FF G})) :
    finrank LL G = (Finset.univ.filter fun i => b' i ∈ FF (O := O) G).card := by
  let g : (Finset.univ.filter fun i => b' i ∈ FF (O := O) G) → (ι → LL) := fun j => toLLι (b' j)
  have hliO : LinearIndependent O g := by
    have h1 := b'.linearIndependent.comp (fun j : (Finset.univ.filter fun i => b' i ∈ FF (O := O) G) => (j : ι))
      Subtype.val_injective
    have h2 := h1.map' (toLLι (O := O) (LL := LL) (ι := ι)) (LinearMap.ker_eq_bot.2 toLLι_inj)
    exact h2
  have hli : LinearIndependent LL g := (LinearIndependent.iff_fractionRing O LL).1 hliO
  have hspan : span LL (Set.range g) = G := by
    apply le_antisymm
    · rw [span_le]
      rintro _ ⟨j, rfl⟩
      exact (Finset.mem_filter.1 j.2).2
    · intro y hy
      obtain ⟨a, z, ha, hz⟩ := clearι (O := O) y
      have hzF : z ∈ FF G := by
        rw [mem_FF, hz]; exact (G.restrictScalars O).smul_mem a hy
      rw [h] at hzF
      have h2 : toLLι (LL := LL) z ∈ span O (toLLι (LL := LL) '' (b' '' {i | b' i ∈ FF G})) := by
        rw [← Submodule.map_span]; exact mem_map_of_mem hzF
      have h3 : toLLι (LL := LL) '' (b' '' {i | b' i ∈ FF G}) ⊆ Set.range g := by
        rintro _ ⟨_, ⟨i, hi, rfl⟩, rfl⟩
        exact ⟨⟨i, Finset.mem_filter.2 ⟨Finset.mem_univ _, hi⟩⟩, rfl⟩
      have h4 : a • y ∈ span LL (Set.range g) := by
        rw [← hz]; exact span_le_restrictScalars O LL _ (span_mono h3 h2)
      exact mem_of_smulι _ ha h4
  calc finrank LL G = finrank LL (span LL (Set.range g)) := by rw [hspan]
    _ = Fintype.card _ := finrank_span_eq_card hli
    _ = _ := Fintype.card_coe _

end Count

end Formalism.MainNotions.RamifiedCoefficientChains.S9.AdB

noncomputable section


namespace Formalism.MainNotions.RamifiedCoefficientChains.S9.AdL

open Module Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.RamifiedCoefficientChains

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n]
    (W : LocWach PD LL O v n)

theorem frame_of_isBas (hR : Formalism.MainNotions.RamifiedCoefficientChains.Sh.BT.Ring9 W) (T : LocLat G Qp LL O) (c : ZMod n) {d : ℕ}
    (e : Fin d → W.DD T) (he : Formalism.MainNotions.RamifiedCoefficientChains.Sh.IsBas W T c e) : Formalism.MainNotions.LiftingTheory.IsFrameΔ W T c e := by
  have hl : ∀ m, (letE c : LetA O n) • e m = e m := fun m => (he.1 m).2.1
  have hNl : ∀ x, x ∈ W.N T → (letE c : LetA O n) • x = x → x ∈ W.Nl T c := fun x hx hxl =>
    ⟨x, hx, by rw [LinearMap.smul_apply, LinearMap.id_apply]; exact hxl⟩
  refine ⟨fun m => ⟨⟨(he.1 m).1, (he.1 m).2.2⟩, hNl _ (he.1 m).1 (hl m)⟩, fun x hx => ?_⟩
  obtain ⟨⟨hxN, hxΔ⟩, hxl⟩ := hx
  have hxl' : (letE c : LetA O n) • x = x := by
    obtain ⟨y, -, rfl⟩ := hxl
    rw [LinearMap.smul_apply, LinearMap.id_apply, smul_smul, _root_.Formalism.MainNotions.LiftingTheory.letter_idempotent_sq]
  obtain ⟨f, hf, hfu⟩ := he.2 x hxN ⟨hxl', hxΔ⟩
  have hletΔ : (letE c : LetA O n) ∈ W.AΔ := fun δ _ => Formalism.MainNotions.RamifiedCoefficientChains.S9.NinQ.γA_letE W δ c
  refine ⟨fun m => letE c * Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (f m),
    ⟨fun m => ⟨W.AΔ.mul_mem hletΔ (Formalism.MainNotions.RamifiedCoefficientChains.Sh.BT.evaluation_mem_invariants W hR _),
      by rw [← mul_assoc, _root_.Formalism.MainNotions.LiftingTheory.letter_idempotent_sq]⟩, ?_⟩, ?_⟩
  · rw [hf]
    refine Finset.sum_congr rfl fun m _ => ?_
    dsimp only
    rw [mul_comm, ← smul_smul, hl m]
  · rintro a ⟨ha, hxa⟩
    have hg : ∀ m, ∃ g : PowerSeries O, a m * letE c = Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W g * letE c :=
      fun m => Formalism.MainNotions.RamifiedCoefficientChains.Sh.BT.invariant_letter_eq_evaluation W hR (ha m).1 c
    choose g hg using hg
    have hx2 : x = ∑ m, Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (g m) • e m := by
      rw [hxa]
      refine Finset.sum_congr rfl fun m _ => ?_
      rw [← (ha m).2, mul_comm, hg m, ← smul_smul, hl m]
    have hgf := hfu g hx2
    funext m
    rw [← (ha m).2, mul_comm, hg m, hgf, mul_comm]

theorem isBas_change (hR : Formalism.MainNotions.RamifiedCoefficientChains.Sh.BT.Ring9 W) (T : LocLat G Qp LL O) (c : ZMod n) {r : ℕ}
    (e : Fin r → W.DD T) (he : Formalism.MainNotions.RamifiedCoefficientChains.Sh.IsBas W T c e) (Bs : Basis (Fin r) O (Fin r → O)) :
    Formalism.MainNotions.RamifiedCoefficientChains.Sh.IsBas W T c (fun t => ∑ k, Bs t k • e k) := by
  let C : Fin r → Fin r → O := fun k t => Bs.repr (Pi.single k 1) t
  have hCB : ∀ k k'', ∑ t, C k t * Bs t k'' = if k = k'' then 1 else 0 := by
    intro k k''
    have h1 := congrFun (Bs.sum_repr (Pi.single k 1)) k''
    simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul] at h1
    rw [h1, Pi.single_apply]
    by_cases h : k = k'' <;> simp [h, eq_comm]
  have hBC : ∀ t t'', ∑ k, Bs t k * C k t'' = if t = t'' then 1 else 0 := by
    intro t t''
    have h1 : Bs t = ∑ k, Bs t k • (Pi.single k (1 : O) : Fin r → O) := by
      ext k'
      simp [Finset.sum_apply, Pi.single_apply]
    have h2 := congrArg (fun y => Bs.repr y t'') h1

    simp only [Basis.repr_self, map_sum, map_smul, Finsupp.coe_finsetSum, Finset.sum_apply,
    Finsupp.smul_apply, smul_eq_mul, Finsupp.single_apply] at h2
    rw [← h2]
  let e' : Fin r → W.DD T := fun t => ∑ k, Bs t k • e k
  have htr : ∀ f : Fin r → PowerSeries O, ∑ t, Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (f t) • e' t =
      ∑ k, Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (∑ t, f t * algebraMap O (PowerSeries O) (Bs t k)) • e k := fun f =>
    Formalism.MainNotions.RamifiedCoefficientChains.Sh.BT.transfer W hR T c e (fun k => (he.1 k).2.1) e'
      (fun t k => algebraMap O (LetA O n) (Bs t k)) (fun t => by simp only [e', algebraMap_smul])
      (fun t k => algebraMap O (PowerSeries O) (Bs t k))
      (fun t k => by rw [Formalism.MainNotions.RamifiedCoefficientChains.Sh.BT.evaluation_eq_homomorphism W hR, AlgHom.commutes]) f
  refine ⟨fun t => ⟨?_, ?_, ?_⟩, fun x hx hxD => ?_⟩
  · exact Submodule.sum_mem _ fun k _ => Submodule.smul_of_tower_mem _ _ (he.1 k).1
  · show (letE c : LetA O n) • ∑ k, Bs t k • e k = ∑ k, Bs t k • e k
    rw [Finset.smul_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [smul_comm, (he.1 k).2.1]
  · intro δ hδ
    show W.γD T δ (∑ k, Bs t k • e k) = ∑ k, Bs t k • e k

    rw [map_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [map_smul, (he.1 k).2.2 δ hδ]
  · obtain ⟨f, hf, hfu⟩ := he.2 x hx hxD
    refine ⟨fun t => ∑ k, f k * algebraMap O (PowerSeries O) (C k t), ?_, fun a ha => ?_⟩
    · show x = ∑ t, Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (∑ k, f k * algebraMap O (PowerSeries O) (C k t)) • e' t
      rw [htr, hf]
      refine Finset.sum_congr rfl fun k _ => ?_
      congr 2
      have e1 : ∑ t, (∑ k', f k' * algebraMap O (PowerSeries O) (C k' t)) *
          algebraMap O (PowerSeries O) (Bs t k) =
          ∑ k', f k' * algebraMap O (PowerSeries O) (∑ t, C k' t * Bs t k) := by

        simp only [Finset.sum_mul, map_sum, map_mul, Finset.mul_sum, mul_assoc]
        exact Finset.sum_comm
      rw [e1]
      simp [hCB]
    · have hf' : x = ∑ k, Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (∑ t, a t * algebraMap O (PowerSeries O) (Bs t k)) • e k := by
        rw [ha]; exact htr a
      have hfa := hfu _ hf'
      funext t''
      rw [← hfa]
      have e1 : ∑ k, (∑ t, a t * algebraMap O (PowerSeries O) (Bs t k)) *
          algebraMap O (PowerSeries O) (C k t'') =
          ∑ t, a t * algebraMap O (PowerSeries O) (∑ k, Bs t k * C k t'') := by

        simp only [Finset.sum_mul, map_sum, map_mul, Finset.mul_sum, mul_assoc]
        exact Finset.sum_comm
      rw [e1]
      simp [hBC]

theorem cmpD_sumO (T : LocLat G Qp LL O) {r : ℕ} (z : Fin r → O) (e : Fin r → W.DD T)
    (he : ∀ k, e k ∈ W.N T) :
    Formalism.MainNotions.ArcLiftingSetup.cmpD W T (∑ k, z k • e k) = ∑ k, algebraMap O LL (z k) • Formalism.MainNotions.ArcLiftingSetup.cmpD W T (e k) := by
  have hmem : ∑ k, z k • e k ∈ W.N T := Submodule.sum_mem _ fun k _ => Submodule.smul_of_tower_mem _ _ (he k)
  rw [Formalism.MainNotions.UnusedSlot80.ArcF.cmpD_of_mem W T hmem]
  have e1 : (⟨∑ k, z k • e k, hmem⟩ : W.N T) = ∑ k, z k • (⟨e k, he k⟩ : W.N T) := by
    apply Subtype.ext
    simp

  rw [e1, map_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [W.cmp_smul, Formalism.MainNotions.UnusedSlot80.ArcF.cmpD_of_mem W T (he k)]

end Formalism.MainNotions.RamifiedCoefficientChains.S9.AdL

noncomputable section


namespace Formalism.MainNotions.RamifiedCoefficientChains.S9.AdM

open Module Submodule Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.RamifiedCoefficientChains Formalism.MainNotions.RamifiedCoefficientChains.S9 Formalism.MainNotions.RamifiedCoefficientChains.S9.ShB TensorProduct

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n]
    (W : LocWach PD LL O v n)

theorem filLev_anti (T : LocLat G Qp LL O) (i : ZMod n) :
    Antitone fun a : ℤ => Formalism.MainNotions.WachCoordinates.FilLev W T i 0 a := by
  intro a b hab
  exact Submodule.map_mono (Submodule.map_mono
    (inf_le_inf_right _ fun x hx => Formalism.MainNotions.UnusedSlot80.LevR.filCris_anti T.ρ hab hx))

theorem filLev_zero_high (hbij : Function.Bijective (algebraMap K₀ K)) (T : LocLat G Qp LL O)
    (i : ZMod n) (H : ℕ)
    (hJ : ∀ τ : K →ₐ[Qp] LL, Formalism.MainNotions.LiftingTheory.Over W τ i → ∀ a, IsJumpV PD T.ρ τ a → a ≤ (H : ℤ))
    (u : ℤ) (hu : (H : ℤ) < u) : Formalism.MainNotions.WachCoordinates.FilLev W T i 0 u = ⊥ := by
  rw [eq_bot_iff]
  rintro z ⟨y, ⟨x, ⟨hxF, hxD⟩, rfl⟩, rfl⟩
  obtain ⟨τ, hτ, hover⟩ := Formalism.MainNotions.UnusedSlot80.LevC.tau_over W hbij i
  have hx0 := Formalism.MainNotions.UnusedSlot80.LevC.fil_high W T i τ hover hbij.2 H (hJ τ hτ) u hu (by simpa using hxD) hxF
  simp [hx0]

theorem ring_clauses_at_uniformizer (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W) (hA : Formalism.MainNotions.LiftingTheory.CaseA W) (T : LocLat G Qp LL O)
    (hT : IsCrys PD T.ρ) : Formalism.MainNotions.RamifiedCoefficientChains.Sh.BT.Ring9 W := by
  have hfin1 : finrank K₀ K = 1 := by
    have := (LinearEquiv.ofBijective (Algebra.linearMap K₀ K) hA.1).finrank_eq
    rw [Module.finrank_self] at this
    exact this.symm
  obtain ⟨-, -, h9'⟩ := h9 T hT hA.2.1 hA.2.2
  obtain ⟨hring, -⟩ := h9' hfin1
  exact hring

theorem adaptBas_of (hE : Formalism.MainNotions.RamifiedCoefficientChains.DcrisExactStrict PD LL) (hC : Formalism.MainNotions.RamifiedCoefficientChains.CrysSubQuot PD LL)
    (hQ : Formalism.MainNotions.RamifiedCoefficientChains.DdREqDcris PD LL) (h3 : Formalism.MainNotions.DeltaInvariantLattices.P3W W) (h5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W)
    (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W) (hV : Formalism.MainNotions.WachCoordinates.Br.ValRing (LL := LL) O v) : AdaptBas W := by
  intro d T₁ T₂ F b S η m hS i hi
  have hie : (i.val + d) % 2 = 0 := (Finset.mem_filter.1 hi).2
  have hCA : Formalism.MainNotions.LiftingTheory.CaseA W := hS.1
  have hT : IsCrys PD T₂.ρ := hS.2.2.2.2.2.1.2.1
  obtain ⟨hdom, hdvr, hfr⟩ := hS.2.2.2.1
  have := hdom; have := hdvr; have := hfr
  have hR9 := ring_clauses_at_uniformizer W h9 hCA T₂ hT
  have hηb := Formalism.MainNotions.N.Pv.LocalLengthBound.rk_eta_lt W hS i

  obtain ⟨e, he⟩ := (Formalism.MainNotions.RamifiedCoefficientChains.Sh.basTool_of W h9 hCA T₂ hT (i - 1)).1
  have hfr' := AdL.frame_of_isBas W hR9 T₂ (i - 1) e he
  have hfin1 : finrank K₀ K = 1 := by
    have := (LinearEquiv.ofBijective (Algebra.linearMap K₀ K) hCA.1).finrank_eq
    rw [Module.finrank_self] at this
    exact this.symm
  obtain ⟨-, -, h9'⟩ := h9 T₂ hT hCA.2.1 hCA.2.2
  have hmod := (h9' hfin1).2
  obtain ⟨hli0, hsp0⟩ := Formalism.MainNotions.UnusedSlot80.ArcF.frame_basis W hCA.2.1 hV T₂ (h3 T₂ hT)
    (h5 T₂ _ _ hT (Formalism.MainNotions.N.Pv.LocalLengthBound.rk_jumpsLet₂ W hE hC hQ hS)) hmod (i - 1) 1 e hfr'
  let w : Fin (finrank LL T₂.V) → T₂.V ⊗[Qp] BdR := fun k =>
    ιV PD (LL := LL) (V := T₂.V) (Formalism.MainNotions.ArcLiftingSetup.dv W T₂ 1 e (Pi.single k 1))
  have hliw : LinearIndependent LL w :=
    hli0.map' (ιV PD (LL := LL) (V := T₂.V)) (LinearMap.ker_eq_bot.2 Formalism.MainNotions.UnusedSlot80.LevR.ιV_inj)
  let Ψ := Fintype.linearCombination LL w
  have hΨ : ∀ y, Ψ y = ∑ k, y k • w k := fun y => Fintype.linearCombination_apply LL w y
  have hΨinj : Function.Injective Ψ := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro y hy
    funext k
    exact Fintype.linearIndependent_iff.1 hliw y (by rw [← hΨ]; exact hy) k
  have hFilR : ∀ u, Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 u ≤ LinearMap.range Ψ := by
    intro u z hz
    obtain ⟨y, ⟨x, ⟨-, hxD⟩, rfl⟩, rfl⟩ := hz
    have hxD' : x ∈ DcrisL PD T₂.ρ (W.emb (i - 1 + ((1 : ℕ) : ZMod n))) := by
      rw [show i - 1 + ((1 : ℕ) : ZMod n) = i by push_cast; ring]; simpa using hxD
    rw [← hsp0, mem_span_range_iff_exists_fun] at hxD'
    obtain ⟨c, hc⟩ := hxD'
    refine ⟨c, ?_⟩
    rw [hΨ]

    simp only [w, ← map_smul, ← map_sum, hc]
    simp

  let Gs : ℤ → Submodule LL (Fin (finrank LL T₂.V) → LL) := fun u => (Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 u).comap Ψ
  have hGfin : ∀ u, finrank LL (Gs u) = finrank LL (Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 u) := by
    intro u
    have hmap : (Gs u).map Ψ = Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 u := by
      rw [Submodule.map_comap_eq, inf_eq_right.2 (hFilR u)]
    rw [← hmap]
    exact LinearEquiv.finrank_eq (Submodule.equivMapOfInjective Ψ hΨinj (Gs u))
  have hGanti : Antitone Gs := fun a b hab => Submodule.comap_mono (filLev_anti W T₂ i hab)

  let Fch : ℕ → Submodule O (Fin (finrank LL T₂.V) → O) := fun k => AdB.FF (O := O) (Gs (-(η : ℤ) + k))
  obtain ⟨b', hb'⟩ := AdB.chain (Pi.basisFun O (Fin (finrank LL T₂.V))) Fch
    (fun k => AdB.FF_mono (hGanti (by push_cast; omega))) (fun k => AdB.FF_sat _) (2 * η + 1)
  let Sset : ℤ → Finset (Fin (finrank LL T₂.V)) := fun u =>
    Finset.univ.filter fun j => b' j ∈ AdB.FF (O := O) (Gs u)
  have hcard : ∀ u : ℤ, -(η : ℤ) ≤ u → u ≤ η + 1 →
      (Sset u).card = finrank LL (Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 u) := by
    intro u h1 h2
    obtain ⟨k, rfl⟩ : ∃ k : ℕ, u = -(η : ℤ) + k := ⟨(u + η).toNat, by omega⟩
    rw [← hGfin]
    exact (AdB.card_FF (Gs _) b' (hb' k (by omega))).symm
  have hSanti : ∀ u u', u ≤ u' → Sset u' ⊆ Sset u := fun u u' h j hj => by
    simp only [Sset, Finset.mem_filter] at hj ⊢
    exact ⟨hj.1, AdB.FF_mono (hGanti h) hj.2⟩

  have hbot : Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 ((η : ℤ) + 1) = ⊥ := by
    refine filLev_zero_high W hCA.1 T₂ i η (fun τ hτ a ha => ?_) _ (by omega)
    have hw := Formalism.MainNotions.N.Pv.LocalLengthBound.rk_jumps₂ W hE hC hQ hS i τ hτ a ha
    unfold JumpWinS at hw
    rw [if_pos hie] at hw
    simp only [Set.mem_union, Set.mem_Icc] at hw
    push_cast at hw
    omega
  have hFF_top : ∀ j, j ∉ Sset ((η : ℤ) + 1) := by
    intro j hj
    have hj' := (Finset.mem_filter.1 hj).2
    rw [AdB.mem_FF] at hj'
    have h0 : Ψ (AdB.toLLι (LL := LL) (b' j)) ∈ (⊥ : Submodule LL (T₂.V ⊗[Qp] BdR)) := by
      rw [← hbot]; exact hj'
    rw [Submodule.mem_bot] at h0
    have h1 : AdB.toLLι (LL := LL) (b' j) = AdB.toLLι (LL := LL) (0 : Fin (finrank LL T₂.V) → O) := by
      rw [map_zero]; exact hΨinj (h0.trans (map_zero Ψ).symm)
    exact b'.ne_zero j (AdB.toLLι_inj h1)

  let L := Sset (-(η : ℤ))
  have hmr : L.card ≤ finrank LL T₂.V := by
    simpa using Finset.card_le_univ L
  let lev : Fin (finrank LL T₂.V) → ℤ := fun j =>
    if h : ((Finset.Icc (-(η : ℤ)) η).filter fun u => j ∈ Sset u).Nonempty then
      ((Finset.Icc (-(η : ℤ)) η).filter fun u => j ∈ Sset u).max' h else -(η : ℤ)
  have hlev : ∀ j ∈ L, (-(η : ℤ) ≤ lev j ∧ lev j ≤ η) ∧
      ∀ u, -(η : ℤ) ≤ u → u ≤ η + 1 → (j ∈ Sset u ↔ u ≤ lev j) := by
    intro j hj
    have hne : ((Finset.Icc (-(η : ℤ)) η).filter fun u => j ∈ Sset u).Nonempty :=
      ⟨-(η : ℤ), Finset.mem_filter.2 ⟨Finset.mem_Icc.2 ⟨le_rfl, by omega⟩, hj⟩⟩
    have hl : lev j = ((Finset.Icc (-(η : ℤ)) η).filter fun u => j ∈ Sset u).max' hne := dif_pos hne
    have hmem := Finset.max'_mem _ hne
    rw [hl]
    obtain ⟨hIcc, hjS⟩ := Finset.mem_filter.1 hmem
    refine ⟨Finset.mem_Icc.1 hIcc, fun u hu1 hu2 => ⟨fun hju => ?_, fun hle => hSanti _ _ hle hjS⟩⟩
    by_cases hu : u ≤ η
    · exact Finset.le_max' _ u (Finset.mem_filter.2 ⟨Finset.mem_Icc.2 ⟨hu1, hu⟩, hju⟩)
    · exfalso
      obtain rfl : u = (η : ℤ) + 1 := by omega
      exact hFF_top j hju

  have hLc : Lᶜ.card = finrank LL T₂.V - L.card := by rw [Finset.card_compl, Fintype.card_fin]
  let eL := L.orderEmbOfFin (rfl : L.card = L.card)
  let eC := Lᶜ.orderEmbOfFin hLc
  let fσ : Fin (finrank LL T₂.V) → Fin (finrank LL T₂.V) := fun t =>
    if h : (t : ℕ) < L.card then eL ⟨t, h⟩ else eC ⟨t - L.card, by have := t.2; omega⟩
  have hfσinj : Function.Injective fσ := by
    intro t t' h
    simp only [fσ] at h
    split_ifs at h with h1 h2 h2
    · have h3 := eL.injective h
      ext; simpa using congrArg Fin.val h3
    · exfalso
      have h3 := L.orderEmbOfFin_mem rfl ⟨t, h1⟩
      have h4 := Lᶜ.orderEmbOfFin_mem hLc ⟨t' - L.card, by have := t'.2; omega⟩
      rw [← h] at h4
      exact (Finset.mem_compl.1 h4) h3
    · exfalso
      have h3 := Lᶜ.orderEmbOfFin_mem hLc ⟨t - L.card, by have := t.2; omega⟩
      have h4 := L.orderEmbOfFin_mem rfl ⟨t', h2⟩
      rw [h] at h3
      exact (Finset.mem_compl.1 h3) h4
    · have h3 := eC.injective h
      have h4 := congrArg Fin.val h3
      simp only at h4
      ext; omega
  let σ := Equiv.ofBijective fσ (Finite.injective_iff_bijective.1 hfσinj)
  let b'' := b'.reindex σ.symm
  have hb'' : ∀ t, b'' t = b' (fσ t) := fun t => by
    simp [b'', Basis.reindex_apply, σ]
  have hσL : ∀ j : Fin L.card, fσ (Fin.castLE hmr j) = eL j := fun j => by
    simp [fσ, j.2]
  have hLj : ∀ j : Fin L.card, eL j ∈ L := fun j => L.orderEmbOfFin_mem rfl j
  refine ⟨fun t => ∑ k, b'' t k • e k, L.card, fun j => lev (eL j),
    AdL.isBas_change W hR9 T₂ (i - 1) e he b'', ?_, hmr, fun j => (hlev _ (hLj j)).1, ?_, ?_⟩
  ·
    obtain ⟨τ, hτ, -⟩ := Formalism.MainNotions.UnusedSlot80.LevC.tau_over W hCA.1 i
    have hFD := (Formalism.MainNotions.N.Pv.LocalLengthBound.filDim_of W hQ hCA T₂ hT i τ hτ).2 (-(η : ℤ)) ((η : ℤ) + 1) (by omega)
    rw [hbot, finrank_bot, Finset.Ico_add_one_right_eq_Icc] at hFD
    have hm := hS.2.2.2.2.2.2.2.1 i τ hτ
    have hc := hcard (-(η : ℤ)) le_rfl (by omega)
    have : (L.card : ℤ) ≤ m := by
      show ((Sset (-(η : ℤ))).card : ℤ) ≤ m
      rw [hc]; push_cast at hFD; linarith
    exact_mod_cast this
  ·
    intro j hj
    have he' : (∑ k, b'' (Fin.castLE hmr j) k • e k) = ∑ k, b'' (Fin.castLE hmr j) k • e k := rfl
    have hv : ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) (W.cmp T₂ ⟨_, hj⟩)) =
        Ψ (AdB.toLLι (LL := LL) (b'' (Fin.castLE hmr j))) := by

      rw [← Formalism.MainNotions.UnusedSlot80.ArcF.cmpD_of_mem W T₂ hj, AdL.cmpD_sumO W T₂ _ e (fun k => (he.1 k).1), hΨ,
      map_sum, map_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [map_smul, map_smul, AdB.toLLι_apply]
      simp only [w, Formalism.MainNotions.UnusedSlot80.ArcF.dv_single, pow_one]
    rw [hv]
    have hmemS : eL j ∈ Sset (lev (eL j)) :=
      ((hlev _ (hLj j)).2 (lev (eL j)) (hlev _ (hLj j)).1.1 (by have := (hlev _ (hLj j)).1.2; omega)).2 le_rfl
    have hFFm : b'' (Fin.castLE hmr j) ∈ AdB.FF (O := O) (Gs (lev (eL j))) := by
      rw [hb'', hσL]; exact (Finset.mem_filter.1 hmemS).2
    exact hFFm
  ·
    intro τ hτ
    have hFDτ := (Formalism.MainNotions.N.Pv.LocalLengthBound.filDim_of W hQ hCA T₂ hT i τ hτ).2
    have hmult : ∀ x : ℤ, multV PD T₂.ρ τ x =
        (finrank LL (Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 x) : ℤ) - finrank LL (Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 (x + 1)) := by
      intro x
      rw [hFDτ x (x + 1) (by omega), Finset.Ico_add_one_right_eq_Icc, Finset.Icc_self, Finset.sum_singleton]
    have hsumL : ∑ j : Fin L.card, (((b i + S : ℕ) : ℤ) + lev (eL j)) =
        ∑ x ∈ L, (((b i + S : ℕ) : ℤ) + lev x) := by
      have h1 := Finset.sum_map (Finset.univ : Finset (Fin L.card)) eL.toEmbedding
        (fun x => (((b i + S : ℕ) : ℤ) + lev x))
      have h2 : (Finset.univ : Finset (Fin L.card)).map eL.toEmbedding = L :=
        Finset.map_orderEmbOfFin_univ L rfl
      rw [h2] at h1
      exact h1.symm
    have hmaps : ∀ x ∈ L, lev x ∈ Finset.Icc (-(η : ℤ)) η := fun x hx => Finset.mem_Icc.2 (hlev x hx).1
    rw [hsumL, ← Finset.sum_fiberwise_of_maps_to hmaps]
    unfold Formalism.MainNotions.RamifiedCoefficientChains.S9.Cut.lowSum
    apply le_of_eq
    refine Finset.sum_congr rfl fun x hx => ?_
    obtain ⟨hx1, hx2⟩ := Finset.mem_Icc.1 hx
    rw [Finset.sum_congr rfl (fun y hy => by rw [(Finset.mem_filter.1 hy).2]), Finset.sum_const, nsmul_eq_mul]
    have hfib : L.filter (fun y => lev y = x) = Sset x \ Sset (x + 1) := by
      ext y
      simp only [Finset.mem_filter, Finset.mem_sdiff]
      constructor
      · rintro ⟨hyL, hyx⟩
        refine ⟨((hlev y hyL).2 x hx1 (by omega)).2 (le_of_eq hyx.symm), fun h => ?_⟩
        have := ((hlev y hyL).2 (x + 1) (by omega) (by omega)).1 h
        omega
      · rintro ⟨hyx, hyx1⟩
        have hyL : y ∈ L := hSanti _ _ hx1 hyx
        refine ⟨hyL, ?_⟩
        have a1 := ((hlev y hyL).2 x hx1 (by omega)).1 hyx
        have a2 : ¬ (x + 1 ≤ lev y) := fun h => hyx1 (((hlev y hyL).2 (x + 1) (by omega) (by omega)).2 h)
        omega
    rw [hfib, Finset.card_sdiff_of_subset (hSanti _ _ (by omega)),
      Nat.cast_sub (Finset.card_le_card (hSanti _ _ (by omega))), hcard x hx1 (by omega),
      hcard (x + 1) (by omega) (by omega), hmult x]

end Formalism.MainNotions.RamifiedCoefficientChains.S9.AdM
end -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.RingClausesAtUniformizer =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.UniformizerClauseOfAdmitted =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.UniformizerClauseOfAdmitted", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LatticeBoundsOfThreeParts\npublic import Formalism.SharpRestriction.LevelLetterCocycles.WachCoordinates\npublic import Formalism.SharpRestriction.LevelLetterCocycles.AnnihilatorGeneralOfRingCondition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.At0HomApply\npublic import Formalism.SharpRestriction.LevelLetterCocycles.BaseChangePreservesUnitaryOf\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CompleteMax\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DlOfQp\npublic import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowerCongruenceOfAdmitted\npublic import Formalism.SharpRestriction.LevelLetterCocycles.IsFracOL\nimport Formalism.SharpRestriction.LevelLetterCocycles.JumpsInLetterOfEvenIndex\nimport Formalism.SharpRestriction.LevelLetterCocycles.LocalizationQuotientSeparatedDvd\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.IsAdicCompleteOfLe\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.SmulSDivMem\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RingClausesAtUniformizer\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RingHypothesesOfCrystalline\npublic import Formalism.SharpRestriction.LevelLetterCocycles.TruncationClauseOfLatticeHypotheses\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalRingCardinality.SpanPowerMembership.NDLocE\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.RamifiedCoefficientChains.S9.bigCellDetWeightedEnergyIntegral

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.RamifiedCoefficientChains Formalism.MainNotions.RamifiedCoefficientChains.S9

variable (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
variable {CR CA CB CK : ℝ}

theorem caseA_loc' {l : ℕ} [Fact l.Prime] {K LL : Loc.FinExt l} (hg : Loc.Good K 1 LL)
    (hCA : Formalism.MainNotions.LiftingTheory.CaseA ((HW l).W K 1 LL hg)) : Loc.CaseA K LL := by
  have hpl : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  refine ⟨fun x hx => ?_, by rw [← hpl]; exact hCA.2.2, hg⟩
  obtain ⟨y, hy⟩ := hCA.1.2 ⟨x, hx⟩
  have h2 := y.2.2
  have : ((y : ↥(K0 K)) : Om l) = x := congrArg Subtype.val hy
  rw [this] at h2
  exact h2

theorem laurent_clause_of_admitted' (hA : admitted D HW F Cm CR CA CB CK) : Formalism.MainNotions.DeltaInvariantLattices.P4 D HW F Cm :=
  fun l _ K s LL h => (hA.1 l K s LL h).2.2.2.1

theorem uniformizer_clause_of_admitted (hA : admitted D HW F Cm CR CA CB CK) : Formalism.MainNotions.DeltaInvariantLattices.P9 D HW F :=
  fun l _ K s LL h => (hA.1 l K s LL h).2.2.2.2.2.2.2.2.1

theorem level_tools_of_admitted' (hA : admitted D HW F Cm CR CA CB CK) : Formalism.MainNotions.WachCoordinates.adm7 D HW F Cm :=
  Formalism.MainNotions.UnusedSlot80.tools_unramified_statement D HW F Cm ⟨fun l _ K s LL h => (hA.1 l K s LL h).2.2.1, laurent_clause_of_admitted' D HW F Cm hA,
    uniformizer_clause_of_admitted D HW F Cm hA⟩



theorem dual_lemma_of_admitted (hA : admitted D HW F Cm CR CA CB CK) (l : ℕ) [Fact l.Prime] (K LL : Loc.FinExt l)
    (hg : Loc.Good K 1 LL) [NeZero (Module.finrank ℚ_[l] ↥(Loc.K0 K))] : LemmaDN ((HW l).W K 1 LL hg) := by
  intro d T₁ T₂ F' b S η m hset
  have hCA : Formalism.MainNotions.LiftingTheory.CaseA ((HW l).W K 1 LL hg) := hset.1
  have hpl : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  have hCAl : Loc.CaseA K LL := caseA_loc' D HW hg hCA
  have h5l : 5 ≤ l := by have := hset.2.1; rw [hpl] at this; omega
  set W := (HW l).W K 1 LL hg with hW
  have h1 := hA.1 l K 1 LL hg
  have h9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W := h1.2.2.2.2.2.2.2.2.1
  obtain ⟨hE, hC, hQ⟩ := hA.2.2.2.2.2.2.2.2.2.2.1 l K LL
  have hs : W.s = 1 := hCA.2.1
  haveI : IsFractionRing ↥(OL LL) ↥LL.1 := Formalism.MainNotions.UnusedSlot80.BCF.isFrac_OL LL
  haveI : IsLocalRing ↥(OL LL) := Formalism.MainNotions.LiftingTheory.lkd_local (D.loc l) LL
  haveI : IsAdicComplete (IsLocalRing.maximalIdeal ↥(OL LL)) ↥(OL LL) := Formalism.MainNotions.RamifiedCoefficientChains.S9.DLev.complete_max LL
  have hring : Formalism.MainNotions.UnusedSlot80.ToolsR.RingP W :=
    (((h9 _ (Formalism.MainNotions.LiftingTheory.gen_one_crys W)) hs hCA.2.2).2.2 (Formalism.MainNotions.UnusedSlot80.finrank_K0_eq_one_of_le_Kur hCAl.1)).1
  have C := ((Cm l).C K 1 LL hg).tie
  have hG := Formalism.MainNotions.N.Pv.LocalLengthBound.gam_of_tie W hs C
  have hLev : Formalism.MainNotions.WachCoordinates.LevelMapHodgeFiltration W := (level_tools_of_admitted' D HW F Cm hA l K LL hCAl h5l).2
  have hRu : Formalism.MainNotions.RamifiedCoefficientChains.Sh.ExpRules W := Formalism.MainNotions.N.Pv.LocalLengthBound.expRules_of W hLev hG.1 hG.2
  have hRing : Formalism.MainNotions.RamifiedCoefficientChains.Sh.ExpRing W := Formalism.MainNotions.N.Pv.LocalLengthBound.expRing_of W hring
  have hpt := Formalism.MainNotions.UnusedSlot80.points_exist_of_ring_condition D HW F (uniformizer_clause_of_admitted D HW F Cm hA)
  have hL := Formalism.MainNotions.UnusedSlot80.levCoeff_of_pt D HW F Cm (laurent_clause_of_admitted' D HW F Cm hA) hpt
  have hBall : ∀ (l' : ℕ) [Fact l'.Prime] (K' LL' : FinExt l') (hg' : Good K' 1 LL')
      [NeZero (Module.finrank ℚ_[l'] ↥(K0 K'))], Formalism.MainNotions.RamifiedCoefficientChains.Sh.BasTool ((HW l').W K' 1 LL' hg') := by
    intro l' _ K' LL' hg' _
    haveI : IsFractionRing ↥(OL LL') ↥LL'.1 := Formalism.MainNotions.UnusedSlot80.BCF.isFrac_OL LL'
    exact Formalism.MainNotions.RamifiedCoefficientChains.Sh.basTool_of _ (hA.1 l' K' 1 LL' hg').2.2.2.2.2.2.2.2.1
  have hEC : Formalism.MainNotions.RamifiedCoefficientChains.Sh.ExpCrit W :=
    Formalism.MainNotions.N.Pv.LocalLengthBound.expCrit_D' D HW F Cm CR CA CB CK hA hL hBall l K LL hCAl h5l
  have hGM := Formalism.MainNotions.RamifiedCoefficientChains.S9.GM.gMem_of W hE hC hQ h1.2.2.2.2.1 h9 hRu hEC
  have hBas : Formalism.MainNotions.RamifiedCoefficientChains.Sh.BasTool W := Formalism.MainNotions.RamifiedCoefficientChains.Sh.basTool_of W h9
  have hΔ : IsUnit ((W.DelF.card : ℕ) : ↥(OL LL)) := by
    have hcard : W.DelF.card = l - 1 :=
      Formalism.MainNotions.UnusedSlot80.LevR.card_delF D HW F (uniformizer_clause_of_admitted D HW F Cm hA) l K LL hCAl
    by_contra hnu
    have hm : ((W.DelF.card : ℕ) : ↥(OL LL)) ∈ IsLocalRing.maximalIdeal ↥(OL LL) := hnu
    have hlm := Formalism.BasicNotions.Examples₂.LB.l_mem_max LL
    have e : ((l : ℕ) : ↥(OL LL)) - ((W.DelF.card : ℕ) : ↥(OL LL)) = 1 := by
      rw [hcard, Nat.cast_sub (by omega)]; simp
    have h3 := Submodule.sub_mem _ hlm hm
    rw [e] at h3
    exact (IsLocalRing.maximalIdeal.isMaximal ↥(OL LL)).ne_top ((Ideal.eq_top_iff_one _).2 h3)
  have hTH : Formalism.MainNotions.CrystallineLiftingInputs.THor W := Formalism.MainNotions.CrystallineLiftingInputs.Tools.frobenius_power_congruence_local D HW F Cm hA.1 l K LL hg
  have hZ := Formalism.MainNotions.RamifiedCoefficientChains.Sh.ZT.zTool_of W h9 (((Formalism.MainNotions.CrystallineLiftingInputs.truncatedSeriesData.truncation_clause_of_lattice_hypotheses D HW F Cm (uniformizer_clause_of_admitted D HW F Cm hA) hA.2.2.2.2.2.2.2.1 hA.2.2.2.2.2.2.2.2.1).2 l K LL hg).2) hTH hBas hRu
    hRing hΔ
  have hAd : Formalism.MainNotions.RamifiedCoefficientChains.S9.ShB.AdaptBas W :=
    Formalism.MainNotions.RamifiedCoefficientChains.S9.AdM.adaptBas_of W hE hC hQ h1.2.2.1 h1.2.2.2.2.1 h9 (Formalism.MainNotions.WachCoordinates.Br.valRing_rec (D.loc l) LL)
  have hpm : ((((D.loc l).PD K).p : ℕ) : ↥(OL LL)) ∈ IsLocalRing.maximalIdeal ↥(OL LL) := by
    rw [hpl]; exact Formalism.BasicNotions.Examples₂.LB.l_mem_max LL
  have hPt : Formalism.MainNotions.LiftingTheory.CaseA W → ∀ (i : ZMod (Module.finrank ℚ_[l] ↥(K0 K))) (ζ : ↥LL.1),
      IsPrimitiveRoot ζ ((D.loc l).PD K).p →
      ∃ τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1, Formalism.MainNotions.LiftingTheory.Over W τ i ∧ Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hg i ζ τ := by
    intro _ c ζ hζ
    obtain ⟨τ, hτ⟩ := hpt l K LL hCAl h5l c ζ (by rwa [hpl] at hζ)
    refine ⟨τ, ?_, hτ⟩
    obtain ⟨τs, ⟨hemb, -⟩, hres⟩ := hτ
    apply AlgHom.ext
    intro x
    have hy : (x : Om l) ∈ Ks K 1 := (le_sup_left : K0 K ≤ Ks K 1) x.2
    show τ (algebraMap ↥(K0 K) ↥K.1 x) = _
    rw [hres (algebraMap ↥(K0 K) ↥K.1 x) ⟨x, hy⟩ rfl]
    exact hemb x ⟨x, hy⟩ rfl
  have hDT : Formalism.MainNotions.RamifiedCoefficientChains.Sh.DetTool W :=
    Formalism.MainNotions.RamifiedCoefficientChains.Sh.detTool_of W h9 _ h1.2.2.2.1 hPt hQ hpm hset.2.2.2.2.1
  have hDet := Formalism.MainNotions.RamifiedCoefficientChains.S9.DetA.detAlg_of W hE hC hQ h1.2.2.2.2.1 h9 hBas (fun _ => hDT)
    (Formalism.MainNotions.RamifiedCoefficientChains.S9.GCoord.gCoord_holds W)
  exact Formalism.MainNotions.RamifiedCoefficientChains.S9.DetS.lemmaDN_of_S1E W hZ hAd hGM hDet d T₁ T₂ F' b S η m hset

end Formalism.MainNotions.RamifiedCoefficientChains.S9.bigCellDetWeightedEnergyIntegral
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.UniformizerClauseOfAdmitted =====
