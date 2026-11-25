module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfColCover
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfOrbitAlg
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ChiTrivOut
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfStabFlag
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfTermCar
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.DictRing
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SlabCoverPf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SlabNDensePf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKu
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.HermitianETransportInvariant
import Mathlib.Tactic.Linter.Style
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FoldingUnfolding.TranslationIndependent
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MultiplicityMeasurability.MeasurableMult
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RightRegularIsometricMultiplicative
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.AdmNPf
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.DualCoords
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.LatCountAllOf
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHFinal
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHLatOfLattice

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfNSA, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfCol, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfSlabAbs, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfWellDef, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfFinal, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfOrbitAlgOut, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfStabNFinal, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfFrameCong, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfModGOfAt, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfRatIso, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfTermCarAll, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfAll

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfNSA =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfNSA", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfColCover\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf.RegroupPf

open Formalism.BasicNotions

section NSAPf

attribute [local instance] Formalism.BasicNotions.Host.cmStar

def NDense : Prop :=
  ∀ (D : D7) (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u : D.what₂.Word) (n : X.B.I.Gf), n ∈ X.NfinU u →
    ∀ U : Set X.B.I.Gf, IsOpen U → n ∈ U →
      ∃ ν ∈ Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I, ν.1 ∈ X.NinfU u ∧ ν.2 ∈ X.NfinU u ∧ ν.2 ∈ U

theorem nStrongApproxC_of (hD : NDense) : NStrongApproxC := by
  intro D X u hK hKL n hn c
  have hcl := Formalism.L2.SG.PoincareInHH.Cut.level_subgroup_isClopen X hK hKL
  have hc : Continuous fun m : X.B.I.Gf => c⁻¹ * (m⁻¹ * n) * c :=
    (continuous_const.mul (continuous_inv.mul continuous_const)).mul continuous_const
  obtain ⟨ν, hνr, hν1, hν2, hνU⟩ := hD D X u n hn {m | c⁻¹ * (m⁻¹ * n) * c ∈ X.K2} (hcl.2.preimage hc)
    (by simpa using hK.1)
  exact ⟨ν, hνr, hν1, hν2, hνU⟩

end NSAPf

end Formalism.L2.SG.Pf.RegroupPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfNSA =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfCol =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfCol", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.HermitianETransportInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace Formalism.L2.SG.Pf.RegroupPf

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermOp Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.Full

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace ColUniqPf

theorem colUniq_of {D : D7} {X : Formalism.L2.SG.HidaSetting.HidaSetting D} {u u' : D.what₂.Word}
    {what₂ rows' : Finset (Submodule (𝓞 D.host.E) (VS D).V)} (cs : ColSys X u what₂) (cs' : ColSys X u' rows')
    (hK : X.LevelSubgroupCharacter) (hR : ColReps hK cs') : ColUniq cs cs' := by
  intro ρ ρ₁ ρ₂ γ₁ γ₂ h₁ h₂ hs
  have hB : ((cs'.h ρ₁ : X.B.I.Gf) * X.xu u')⁻¹ * (γ₁⁻¹ * γ₂).2 * ((cs'.h ρ₂ : X.B.I.Gf) * X.xu u') ∈ X.K2 := by
    have e : ((cs'.h ρ₁ : X.B.I.Gf) * X.xu u')⁻¹ * (γ₁⁻¹ * γ₂).2 * ((cs'.h ρ₂ : X.B.I.Gf) * X.xu u') =
        (kOf X u u' (cs.h ρ : X.B.I.Gf) (cs'.h ρ₁ : X.B.I.Gf) γ₁)⁻¹ *
          kOf X u u' (cs.h ρ : X.B.I.Gf) (cs'.h ρ₂ : X.B.I.Gf) γ₂ := by
      simp only [kOf, Prod.snd_mul, Prod.snd_inv]
      group
    rw [e]
    exact hK.2.1 _ (hK.2.2.1 _ h₁.2) _ h₂.2
  obtain ⟨hsI, hsf⟩ := Formalism.L2.SG.PoincareInHH.Cut.sratComp_holds X u' _ hs
  obtain ⟨ν, η, hνη, -, -, hνf, hη⟩ :=
    Formalism.L2.SG.Pf.ratLevi_holds X u' _ (Subgroup.mem_inf.1 hs).1 hsI hsf
  have hs2 : (γ₁⁻¹ * γ₂).2 = ν.2 * η.2 := by rw [hνη, Prod.snd_mul]
  have hio : ((iotaF X u' ⟨η, hη⟩ : Hfin X u') : X.B.I.Gf) = η.2 := rfl
  have hn := ((Formalism.L2.SG.PoincareInHH.Cut.nfinConj_holds X u') (cs'.h ρ₁)⁻¹ ν.2 hνf).1
  have hlev := Formalism.L2.SG.Pf.levelDec_holds X u' _ hn
    ((cs'.h ρ₁)⁻¹ * iotaF X u' ⟨η, hη⟩ * cs'.h ρ₂) (by
      have e : (X.xu u')⁻¹ * ((((cs'.h ρ₁)⁻¹ : Hfin X u') : X.B.I.Gf) * ν.2 *
          (((cs'.h ρ₁)⁻¹ : Hfin X u') : X.B.I.Gf)⁻¹ *
          (((cs'.h ρ₁)⁻¹ * iotaF X u' ⟨η, hη⟩ * cs'.h ρ₂ : Hfin X u') : X.B.I.Gf)) * X.xu u' =
          ((cs'.h ρ₁ : X.B.I.Gf) * X.xu u')⁻¹ * (γ₁⁻¹ * γ₂).2 * ((cs'.h ρ₂ : X.B.I.Gf) * X.xu u') := by
        rw [hs2]
        simp only [Subgroup.coe_mul, Subgroup.coe_inv, hio]
        group
      rw [e]
      exact hB)
  obtain ⟨ρ0, -, huniq⟩ := hR (cs'.h ρ₂)
  have e1 := huniq ρ₂ ⟨1, 1, by simp⟩
  have e2 := huniq ρ₁ ⟨(⟨η, hη⟩ : Gam X u')⁻¹,
    ⟨(cs'.h ρ₁)⁻¹ * iotaF X u' ⟨η, hη⟩ * cs'.h ρ₂, hlev.1⟩, by
      show cs'.h ρ₂ = iotaF X u' (⟨η, hη⟩ : Gam X u')⁻¹ * cs'.h ρ₁ *
        ((cs'.h ρ₁)⁻¹ * iotaF X u' ⟨η, hη⟩ * cs'.h ρ₂)
      rw [map_inv]
      group⟩
  exact e2.trans e1.symm

end ColUniqPf

theorem column_uniqueness : ColUniqC := by
  intro D X Y u u' _
  exact ColUniqPf.colUniq_of (Y.cs u) (Y.cs u') Y.hK (Y.colReps u')

end Formalism.L2.SG.Pf.RegroupPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfCol =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfSlabAbs =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfSlabAbs", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPf\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FoldingUnfolding.TranslationIndependent\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MultiplicityMeasurability.MeasurableMult\nimport Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RightRegularIsometricMultiplicative\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical ComplexConjugate ENNReal NNReal
open MeasureTheory

namespace Formalism.L2.SG.Pf.RegroupPf

open Formalism.L2.SG.FoldBound Formalism.L2.SG.PoincareSeriesSquareIntegrable NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermOp

section SlabAbsGen

variable {G : Type*} [Group G] [MeasurableSpace G] [MeasurableMul G] (μ : Measure G) [μ.IsMulLeftInvariant]

theorem lintegral_le_of_uniq (Γ : Subgroup G) [Countable Γ] (FS : Set G) (hFS : IsFundamentalDomain Γ FS μ)
    (P : Set G) (hP : MeasurableSet P) (f : G → ℝ≥0∞) (hfm : Measurable f)
    (hfi : ∀ s ∈ Γ, ∀ y, f (s * y) = f y) (huniq : ∀ y ∈ P, ∀ s ∈ Γ, s * y ∈ P → s = 1) :
    ∫⁻ x in P, f x ∂μ ≤ ∫⁻ x in FS, f x ∂μ := by
  have hinv : ∀ (g : Γ) (x : G), f (g⁻¹ • x) = f x := by
    intro g x
    rw [Subgroup.smul_def, smul_eq_mul]
    exact hfi _ (g⁻¹).2 x
  rw [hFS.setLIntegral_eq_tsum']
  simp_rw [hinv]
  rw [← lintegral_iUnion₀]
  · exact lintegral_mono_set (Set.iUnion_subset fun g => Set.inter_subset_right)
  · intro g
    exact (hP.const_smul g).nullMeasurableSet.inter hFS.nullMeasurableSet
  · intro g h hgh
    apply Disjoint.aedisjoint
    refine Set.disjoint_left.mpr ?_
    rintro x ⟨⟨p, hp, rfl⟩, -⟩ ⟨⟨q, hq, hqx⟩, -⟩
    apply hgh
    have e : (h : G) * q = (g : G) * p := by simpa [Subgroup.smul_def] using hqx
    have hsq : ((h⁻¹ * g : Γ) : G) * p = q := by
      rw [Subgroup.coe_mul, Subgroup.coe_inv, mul_assoc, ← e, ← mul_assoc, inv_mul_cancel, one_mul]
    have h1 : ((h⁻¹ * g : Γ) : G) = 1 := huniq p hp _ (h⁻¹ * g).2 (by rw [hsq]; exact hq)
    have h2 : h⁻¹ * g = 1 := Subtype.ext h1
    exact (inv_mul_eq_one.mp h2).symm

end SlabAbsGen

theorem lintegral_slab (I : Formalism.MainNotions.S.AutInst) (μf : Measure I.Gf) [SigmaFinite μf] [μf.IsMulLeftInvariant]
    (K : Set I.Gf) (hK : MeasurableSet K) (Ω : Set I.Ginf) (hΩ : MeasurableSet Ω) (a : I.Gf) (f : I.GA → ℝ≥0∞)
    (hfm : Measurable f) (hf : ∀ y : I.Ginf, ∀ k ∈ K, f (y, a * k) = f (y, a)) :
    ∫⁻ x in Ω ×ˢ ((a * ·) '' K), f x ∂(I.muA μf) =
      μf K * ∫⁻ y in Ω, f (y, a) ∂(Formalism.L2.SG.ProjRows.muInf I) := by
  have hs : MeasurableSet ((a * ·) '' K) := by
    rw [Set.image_mul_left]
    exact measurable_const_mul a⁻¹ hK
  have hvol : μf ((a * ·) '' K) = μf K := by
    rw [Set.image_mul_left]
    exact measure_preimage_mul μf a⁻¹ K
  have hin : ∀ y ∈ Ω, ∫⁻ x in (a * ·) '' K, f (y, x) ∂μf = f (y, a) * μf K := by
    intro y _
    rw [← hvol, ← setLIntegral_const]
    first
      | exact setLIntegral_congr_fun hs (fun x hx => by obtain ⟨k, hk, rfl⟩ := hx; exact hf y k hk)
  have hfa : Measurable fun y : I.Ginf => f (y, a) := by fun_prop
  unfold Formalism.MainNotions.S.AutInst.muA
  rw [← Measure.prod_restrict, lintegral_prod _ hfm.aemeasurable]
  have hout : ∫⁻ y in Ω, ∫⁻ x in (a * ·) '' K, f (y, x) ∂μf ∂(Measure.pi fun v => Formalism.REAL.muG (I.ε v)) =
      ∫⁻ y in Ω, f (y, a) * μf K ∂(Measure.pi fun v => Formalism.REAL.muG (I.ε v)) := by
    first
      | exact setLIntegral_congr_fun hΩ hin
  rw [hout, lintegral_mul_const _ hfa, mul_comm]

section SlabAbsPf

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.PoincareInHH.Cut Formalism.L2.SG.TermOp.KExpCut Formalism.L2.SG.Full

theorem slabAbsC_of (hW : PhWellDefC) (hSC : Formalism.L2.SG.Pf.Slab.SlabCoverC)
    (hR : ∀ (D : D7) (X : Formalism.L2.SG.HidaSetting.HidaSetting D), X.LevelSubgroupNormalized → FoldReadyX X)
    (hN : ∀ (D : D7) (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (Y : Full X) (u : D.what₂.Word), X.LevelSubgroupNormalized →
      NeatKu X u Y.hK) :
    SlabAbsC := by
  intro D X Y u u' hH Ωs hΩ T T' ρ
  obtain ⟨hKL, hOK, hOK', -⟩ := hH
  have hRX := hR D X hKL
  have hWD := hW D X Y u hKL
  have hWD' := hW D X Y u' hKL
  obtain ⟨⟨FS, hFS⟩, Ω₀, a, hc0, h10, hT⟩ := hOK
  obtain ⟨⟨F', hF'⟩, Ω₀', a', hc0', h10', hT'⟩ := hOK'
  have hΩc : IsCompact (Ω₀ ∪ Ω₀') := hc0.union hc0'
  have h1 : (1 : X.B.I.GA) ∈ Ω₀ ∪ Ω₀' := Or.inl h10
  have hFD := (hT T).1 _ hΩc Set.subset_union_left
  have hFD' := (hT' T').1 _ hΩc Set.subset_union_right
  have : LocallyCompactSpace X.B.I.GA := hRX.1
  have : SecondCountableTopology X.B.I.GA := hRX.2.1
  have : T2Space X.B.I.GA := hRX.2.2.1
  have : BorelSpace X.B.I.GA := hRX.2.2.2.1
  have : DiscreteTopology (Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I) := hRX.2.2.2.2
  have : Countable (Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I) := Formalism.L2.SG.Pf.countable_of_discrete _
  have : Countable (Srat X u) := Formalism.L2.SG.Pf.Slab.countable_of_le (Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I) (Srat X u) inf_le_left
  have : SigmaFinite X.B.μf := X.B.sf
  have : X.B.μf.IsHaarMeasure := X.B.haar
  have := @muA_isHaar' X.B.I X.B.μf X.B.sf X.B.haar
  have hD' : IsRightTransversal (Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I) (Srat X u') (Y.Dt u') := Y.reps u'
  have : Countable (Y.Dt u') := by
    have hinj : Function.Injective
        (fun d : Y.Dt u' => (⟨d.1, hD'.1 d.2⟩ : Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I)) := by
      intro d e h
      exact Subtype.ext (by simpa using congrArg Subtype.val h)
    exact hinj.countable
  set ph := Ph X u Y.hK T with hph
  set ph' := Ph X u' Y.hK T' with hph'
  set g : X.B.I.GA → ℝ≥0∞ := fun x => ‖ph x‖ₑ * ∑' δ : Y.Dt u', ‖ph' ((δ : X.B.I.GA) * x)‖ₑ with hg
  have hgm : Measurable g :=
    hFD.1.enorm.mul (Measurable.tsum fun δ => hFD'.1.enorm.comp (measurable_const_mul _))

  have hb := foldBound_holds X.B.I.GA (X.B.I.muA X.B.μf) (Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I) (Srat X u')
    inferInstance inf_le_left (Ω₀ ∪ Ω₀') hΩc.isClosed.measurableSet a' ph' hFD'.1 hFD'.2.1 hFD'.2.2 F' hF'
    (Y.Dt u') hD'
  have hm1 : ∀ x, 1 ≤ mult (Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I) (Ω₀ ∪ Ω₀') x :=
    fun x => PI.FoldMult.UnitaryGroupMassFormula.one_le_mult _ _ h1 x
  have hq' : quotientLIntegral (X.B.I.muA X.B.μf) F' ph' ≠ ⊤ := by
    refine ne_top_of_le_ne_top ((hT' T').2 _ hΩc F' hF').ne (lintegral_mono fun y => ?_)
    calc ‖ph' y‖ₑ = 1 * ‖ph' y‖ₑ := (one_mul _).symm
      _ ≤ _ := by gcongr; exact hm1 y
  have hfinFS : ∫⁻ x in FS, g x ∂(X.B.I.muA X.B.μf) < ⊤ := by
    calc ∫⁻ x in FS, g x ∂(X.B.I.muA X.B.μf)
        ≤ ∫⁻ x in FS, ((a' : ℝ≥0∞) * quotientLIntegral (X.B.I.muA X.B.μf) F' ph') *
            (mult (Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I) (Ω₀ ∪ Ω₀') x * ‖ph x‖ₑ) ∂(X.B.I.muA X.B.μf) :=
          lintegral_mono fun x => by
            calc g x ≤ ‖ph x‖ₑ * ((a' : ℝ≥0∞) * mult (Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I) (Ω₀ ∪ Ω₀') x *
                  quotientLIntegral (X.B.I.muA X.B.μf) F' ph') := by
                  simp only [hg]; gcongr; exact hb x
              _ = _ := by ring
      _ = ((a' : ℝ≥0∞) * quotientLIntegral (X.B.I.muA X.B.μf) F' ph') *
            multiplicityLIntegral (X.B.I.muA X.B.μf) (Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I) (Ω₀ ∪ Ω₀') FS ph := by
          rw [lintegral_const_mul' _ _ (ENNReal.mul_ne_top ENNReal.coe_ne_top hq')]
          rfl
      _ < ⊤ := ENNReal.mul_lt_top (ENNReal.mul_lt_top ENNReal.coe_lt_top hq'.lt_top)
          ((hT T).2 _ hΩc FS hFS)

  have hgi : ∀ s ∈ Srat X u, ∀ y, g (s * y) = g y := by
    intro s hs y
    simp only [hg]
    rw [hFD.2.1 s hs y]
    congr 1
    have e := PI.FoldDCUnfold.W.translation_independent X.B.I.GA (Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I) (Srat X u')
      (Y.Dt u') (Y.Dt u') hD' hD' s (Subgroup.mem_inf.1 hs).1 (fun z => ‖ph' (z * y)‖ₑ)
      (fun t ht z => by simp only [mul_assoc]; rw [hFD'.2.1 t ht])
    simpa [mul_assoc] using e

  have hKm := level_subgroup_measurable X Y.hK hKL
  have hsm : MeasurableSet (slab (Y.cs u) ρ (Ωs ρ)) :=
    (hΩ ρ).1.prod ((MeasurableEquiv.mulLeft (aC (Y.cs u) ρ)).measurableSet_image.2 hKm)
  have huniq := (hSC D X Y u Ωs hKL (hN D X Y u hKL) hΩ).2
  have hslab := lintegral_le_of_uniq (X.B.I.muA X.B.μf) (Srat X u) FS hFS (slab (Y.cs u) ρ (Ωs ρ)) hsm g hgm
    hgi (fun y hy s hs hsy => (huniq ρ ρ y s hs hy hsy).1)

  have hK2 : ∀ y : X.B.I.Ginf, ∀ k ∈ X.K2, g (y, aC (Y.cs u) ρ * k) = g (y, aC (Y.cs u) ρ) := by
    intro y k hk
    have hyk : ((y, aC (Y.cs u) ρ * k) : X.B.I.GA) = (y, aC (Y.cs u) ρ) * (1, k) := by simp
    have hn : ‖X.chi2 k‖ₑ = 1 := by
      rw [← ofReal_norm, Y.hK.2.2.2.2 k hk, ENNReal.ofReal_one]
    simp only [hg]
    rw [hyk, hph, ph_right_K X u Y.hK hWD T _ k hk, enorm_mul, hn, one_mul]
    congr 1
    refine tsum_congr fun δ => ?_
    rw [hph', ← mul_assoc, ph_right_K X u' Y.hK hWD' T' _ k hk, enorm_mul, hn, one_mul]
  have hEq := lintegral_slab X.B.I X.B.μf X.K2 hKm (Ωs ρ) (hΩ ρ).1 (aC (Y.cs u) ρ) g hgm hK2
  have hlt : X.B.μf X.K2 * ∫⁻ y in Ωs ρ, g (y, aC (Y.cs u) ρ) ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) < ⊤ := by
    rw [← hEq]
    exact lt_of_le_of_lt hslab hfinFS
  have key : ∫⁻ y in Ωs ρ, g (y, aC (Y.cs u) ρ) ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) < ⊤ := by
    rcases ENNReal.mul_lt_top_iff.1 hlt with h | h | h
    · exact h.2
    · exact absurd h hKL.2.2.1.ne'
    · rw [h]; exact ENNReal.zero_lt_top
  exact key

end SlabAbsPf

end Formalism.L2.SG.Pf.RegroupPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfSlabAbs =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfWellDef =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfWellDef", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.HermitianETransportInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.Pf.RegroupPf

open Formalism.BasicNotions

theorem phase_well_defined_all_words : PhWellDefC := fun _ X _ u _ => Formalism.L2.SG.Pf.phWellDef_holds X u

end Formalism.L2.SG.Pf.RegroupPf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfWellDef =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfFinal =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfFinal", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfColCover\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfCol\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfSlabAbs\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfWellDef\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.Pf.RegroupPf

open Formalism.BasicNotions

theorem regrouping_of_neatness (hSA : NStrongApproxC) (hO : OrbitAlgC) (hSC : Formalism.L2.SG.Pf.Slab.SlabCoverC)
    (hR : ∀ (D : D7) (X : Formalism.L2.SG.HidaSetting.HidaSetting D), X.LevelSubgroupNormalized → Formalism.L2.SG.PoincareInHH.Cut.FoldReadyX X)
    (hN : ∀ (D : D7) (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (Y : Formalism.L2.SG.Full.Full X) (u : D.what₂.Word),
      X.LevelSubgroupNormalized → Formalism.L2.SG.PoincareInHH.Cut.NeatKu X u Y.hK) :
    Formalism.L2.SG.Pf.Slab.RegroupC :=
  regrouping_of_closed_lemmas phase_well_defined_all_words column_uniqueness (colCoverC_of hSA) (slabAbsC_of phase_well_defined_all_words hSC hR hN) hO

end Formalism.L2.SG.Pf.RegroupPf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfFinal =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfOrbitAlgOut =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfOrbitAlgOut", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfOrbitAlg\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ChiTrivOut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.Pf.RegroupPf

theorem orbit_algebra_of_stabilizer (hC : TermCarC) (hS : StabNC) : OrbitAlgC :=
  orbitAlgC_of Formalism.L2.SG.Pf.nilradical_conj_level' hC hS

end Formalism.L2.SG.Pf.RegroupPf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfOrbitAlgOut =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfStabNFinal =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfStabNFinal", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfOrbitAlg\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfStabFlag\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.Pf.RegroupPf

open Formalism.BasicNotions Formalism.L2.SG.Full

theorem stabilizer_of_neat_level
    (hN : ∀ (D : D7) (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (Y : Full X) (u : D.what₂.Word), X.LevelSubgroupNormalized →
      Formalism.L2.SG.PoincareInHH.Cut.NeatKu X u Y.hK) : StabNC :=
  stabNC_of lattice_stabilizer_holds flag_stabilizer_holds (orthogonal_stabilizer_of_neat hN)

end Formalism.L2.SG.Pf.RegroupPf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfStabNFinal =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfFrameCong =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfFrameCong", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfTermCar\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.AdmNPf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.DualCoords\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.DictRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical ComplexConjugate TensorProduct
open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Matrix Formalism.L2.SG.TermOp Formalism.L2.SG.HidaSetting

namespace Formalism.L2.SG.Pf.RegroupPf

open Formalism.L2.SG.NormCut

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section FrameCongSec

theorem coef_of_inMod (I : Formalism.MainNotions.S.AutInst) (m : ℕ) {ι : Type} [Fintype ι] (v : ι → VA I) (S : Set ι) (x : VA I)
    (h : InMod I m (v '' S) x) :
    ∃ t : ι → I.E ⊗[I.F] Af I.F, (∀ i, t i ∈ IntAf I.F I.E) ∧ (∀ i, i ∉ S → t i = 0) ∧
      x - ∑ i, t i • v i ∈ mL I m := by
  obtain ⟨y, hy, w, hw, rfl⟩ := Submodule.mem_sup.1 h
  obtain ⟨l, hl, rfl⟩ := (Finsupp.mem_span_image_iff_linearCombination _).1 hy
  refine ⟨fun i => (l i : I.E ⊗[I.F] Af I.F), fun i => (l i).2, fun i hi => ?_, ?_⟩
  · have h0 : l i = 0 := (Finsupp.mem_supported' _ _).1 hl i hi
    simp [h0]
  · have e : Finsupp.linearCombination (IntAf I.F I.E) v l = ∑ i, (l i : I.E ⊗[I.F] Af I.F) • v i := by
      rw [Finsupp.linearCombination_apply, Finsupp.sum_fintype]
      · rfl
      · intro i; exact zero_smul _ _
    rw [e, add_sub_cancel_left]
    exact hw

variable {D : D7}

theorem frame_congruence_holds : FrameCongC := by
  intro D X Y u u' ρ ρ' γ σ hRL hκ
  obtain ⟨hE0, -, hZ0, -, -⟩ := frame_Lf X
  have hTF : FrameTie X u u' (X.Fu u) (X.Fu u') := Formalism.L2.SG.Full.Full.frameTie u u'
  set g1 : X.B.I.Gf := ((Y.cs u).h ρ : X.B.I.Gf) * X.xu u with hg1
  set g2 : X.B.I.Gf := ((Y.cs u').h ρ' : X.B.I.Gf) * X.xu u' with hg2
  have haC : aC (Y.cs u) ρ = g1 := rfl
  rw [haC]
  set κ := kOf X u u' ((Y.cs u).h ρ : X.B.I.Gf) ((Y.cs u').h ρ' : X.B.I.Gf) γ with hκd
  have hκ' : κ = g1⁻¹ * γ.2 * g2 := rfl
  obtain ⟨hκK, hcE, hcZ, -⟩ := hκ
  have hg0 : 0 < X.B.g := by
    rw [X.g_eq]; exact Nat.mul_pos (D.host.g_prime 0).pos (D.host.g_prime 1).pos
  set e0v : Fin (D.R.rS + 1) → VA X.B.I := Fin.snoc (α := fun _ => VA X.B.I) X.e0 X.z0 with he0v
  have he0vL : ∀ a, e0v a ∈ X.B.I.Lf := fun a => by
    refine Fin.lastCases ?_ (fun i => ?_) a
    · simp only [he0v, Fin.snoc_last]; exact hZ0
    · simp only [he0v, Fin.snoc_castSucc]; exact hE0 i

  have hcol : ∀ c : Fin (D.R.rS + 1), ∃ t : Fin (D.R.rS + 1) → X.B.I.E ⊗[X.B.I.F] Af X.B.I.F,
      (∀ a, t a ∈ IntAf X.B.I.F X.B.I.E) ∧ t c = 1 ∧ (∀ a, c < a → t a = 0) ∧
      X.B.I.fmat κ *ᵥ e0v c - ∑ a, t a • e0v a ∈ mL X.B.I X.B.g := by
    intro c
    cases c using Fin.lastCases with
    | last =>
      have hZ' : InMod X.B.I X.B.g (X.e0 '' Set.univ) ((X.B.I.fmat κ - 1) *ᵥ X.z0) := by
        rw [Set.image_univ]; exact hcZ
      obtain ⟨τ, hτI, -, hτ⟩ := coef_of_inMod X.B.I X.B.g X.e0 Set.univ _ hZ'
      refine ⟨Fin.snoc (α := fun _ => X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) τ 1, fun a => ?_, ?_, fun a ha => ?_, ?_⟩
      · cases a using Fin.lastCases with
        | last => simp only [Fin.snoc_last]; exact one_mem _
        | cast j => simp only [Fin.snoc_castSucc]; exact hτI j
      · simp only [Fin.snoc_last]
      · exact absurd ha (not_lt.2 (Fin.le_last a))
      · have e : X.B.I.fmat κ *ᵥ e0v (Fin.last _) -
            ∑ a, (Fin.snoc (α := fun _ => X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) τ 1 a) • e0v a =
            (X.B.I.fmat κ - 1) *ᵥ X.z0 - ∑ j, τ j • X.e0 j := by
          simp only [Fin.sum_univ_castSucc, he0v, Fin.snoc_castSucc, Fin.snoc_last, one_smul, Matrix.sub_mulVec,
            Matrix.one_mulVec]
          abel
        rw [e]; exact hτ
    | cast b =>
      obtain ⟨τ, hτI, hτ0, hτ⟩ := coef_of_inMod X.B.I X.B.g X.e0 {j | j.1 < b.1} _ (hcE b)
      have hτb : τ b = 0 := hτ0 b (fun h => lt_irrefl (b : ℕ) h)
      refine ⟨Fin.snoc (α := fun _ => X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) (fun j => τ j + if j = b then 1 else 0) 0,
        fun a => ?_, ?_, fun a ha => ?_, ?_⟩
      · cases a using Fin.lastCases with
        | last => simp only [Fin.snoc_last]; exact zero_mem _
        | cast j =>
          simp only [Fin.snoc_castSucc]
          refine add_mem (hτI j) ?_
          split_ifs
          · exact one_mem _
          · exact zero_mem _
      · simp [Fin.snoc_castSucc, hτb]
      · cases a using Fin.lastCases with
        | last => simp only [Fin.snoc_last]
        | cast j =>
          have hbj : b < j := Fin.castSucc_lt_castSucc_iff.1 ha
          have hj : τ j = 0 := hτ0 j (fun h => lt_asymm hbj h)
          have hjb : j ≠ b := fun h => by subst h; exact lt_irrefl _ hbj
          simp only [Fin.snoc_castSucc, hj, if_neg hjb, add_zero]
      · have e : X.B.I.fmat κ *ᵥ e0v (Fin.castSucc b) -
            ∑ a, (Fin.snoc (α := fun _ => X.B.I.E ⊗[X.B.I.F] Af X.B.I.F)
              (fun j => τ j + if j = b then 1 else 0) 0 a) • e0v a =
            (X.B.I.fmat κ - 1) *ᵥ X.e0 b - ∑ j, τ j • X.e0 j := by
          simp only [Fin.sum_univ_castSucc, he0v, Fin.snoc_castSucc, Fin.snoc_last, zero_smul, add_zero, add_smul,
            Finset.sum_add_distrib, ite_smul, one_smul, Finset.sum_ite_eq', Finset.mem_univ, if_true,
            Matrix.sub_mulVec, Matrix.one_mulVec]
          abel
        rw [e]; exact hτ
  choose t htI ht1 ht0 htm using hcol

  set s : D.host.E → X.B.I.E ⊗[X.B.I.F] Af X.B.I.F :=
    fun x => Formalism.UG.inclE (F := X.B.I.F) (Af X.B.I.F) (X.ιE.symm x) with hs
  have happ : ∀ c a, ∃ ξ : 𝓞 D.host.E, ∃ y ∈ IntAf X.B.I.F X.B.I.E,
      t c a = s (ξ : D.host.E) + (X.B.g : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * y := by
    intro c a
    obtain ⟨a', y, hy, he⟩ := PIW.AdelClassFin.dual_dense X.B.I.F X.B.I.E X.B.g hg0 (t c a) (htI c a)
    have hint : IsIntegral ℤ (X.ιE (a' : X.B.I.E)) := (a'.2 : IsIntegral ℤ (a' : X.B.I.E)).map X.ιE.toRingHom.toIntAlgHom
    refine ⟨⟨X.ιE (a' : X.B.I.E), hint⟩, y, hy, ?_⟩
    show t c a = Formalism.UG.inclE (F := X.B.I.F) (Af X.B.I.F) (X.ιE.symm (X.ιE (a' : X.B.I.E))) + _
    rw [RingEquiv.symm_apply_apply]
    exact he
  choose ξ0 y0 hy0 hξ0 using happ
  set ξ : Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) (𝓞 D.host.E) :=
    fun a c => if a < c then ξ0 c a else if a = c then 1 else 0 with hξd
  have hsI : ∀ a c, s (ξ a c : D.host.E) ∈ IntAf X.B.I.F X.B.I.E := fun a c => inclE_int X (ξ a c)
  have hrel : ∀ a c, ∃ y ∈ IntAf X.B.I.F X.B.I.E,
      t c a = s (ξ a c : D.host.E) + (X.B.g : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * y := by
    intro a c
    rcases lt_trichotomy a c with h | h | h
    · refine ⟨y0 c a, hy0 c a, ?_⟩
      simp only [hξd, if_pos h]
      exact hξ0 c a
    · subst h
      refine ⟨0, zero_mem _, ?_⟩
      simp only [hξd, lt_irrefl, if_false, ht1, mul_zero, add_zero, hs]
      simp
    · refine ⟨0, zero_mem _, ?_⟩
      have hna : ¬ a < c := not_lt.2 h.le
      have hne : a ≠ c := ne_of_gt h
      simp only [hξd, if_neg hna, if_neg hne, ht0 c a h, mul_zero, add_zero, hs]
      simp
  refine ⟨ξ, fun a b hab => ?_, fun a => ?_, fun b => ?_⟩
  · simp only [hξd, if_neg (not_lt.2 hab.le), if_neg (ne_of_gt hab)]
  · simp [hξd]

  set Yv : Fin (D.R.rS + 1) → VA X.B.I := fun a => X.B.I.fmat g1⁻¹ *ᵥ incl X.B.I (X.crd ((X.Fu u).fvec a)) with hY
  set Yv' : Fin (D.R.rS + 1) → VA X.B.I := fun c => X.B.I.fmat g2⁻¹ *ᵥ incl X.B.I (X.crd ((X.Fu u').fvec c))
    with hY'
  have fixE : ∀ (w : D.what₂.Word) (h : Formalism.L2.SG.PoincareInHH.PoincareSetting.Hfin X w) (a : Fin D.R.rS),
      X.B.I.fmat ((h : X.B.I.Gf) * X.xu w)⁻¹ *ᵥ incl X.B.I (X.crd (X.eX a)) = incl X.B.I (X.crd (X.eX a)) :=
    fun w h a => fixes_inv X (fixes_mul X (h.2 _ (Or.inl (Or.inl ⟨a, rfl⟩))) ((X.xu_fix w a).1))
  have fixZ : ∀ (w : D.what₂.Word) (h : Formalism.L2.SG.PoincareInHH.PoincareSetting.Hfin X w),
      X.B.I.fmat ((h : X.B.I.Gf) * X.xu w)⁻¹ *ᵥ incl X.B.I (X.crd (X.zu w)) =
        X.B.I.fmat (X.xu w)⁻¹ *ᵥ incl X.B.I (X.crd (X.zu w)) := by
    intro w h
    have hz : X.B.I.fmat (h : X.B.I.Gf)⁻¹ *ᵥ incl X.B.I (X.crd (X.zu w)) = incl X.B.I (X.crd (X.zu w)) :=
      fixes_inv X (h.2 _ (Or.inr rfl))
    rw [_root_.mul_inv_rev, fmat_mul, ← Matrix.mulVec_mulVec, hz]
  have hYa : ∀ a, InAt X.B.I X.B.g X.B.g (e0v a - Yv a) := by
    intro a
    refine Fin.lastCases ?_ (fun i => ?_) a
    · simp only [he0v, hY, Fin.snoc_last, FlagG.fvec, hTF.2.1, hg1, fixZ]
      have := InAt_neg X (X.xu_z u)
      rwa [neg_sub] at this
    · simp only [he0v, hY, Fin.snoc_castSucc, FlagG.fvec, hTF.1 i, hg1, fixE]
      exact (X.basisApprox i).1
  have hY'a : ∀ c, InAt X.B.I X.B.g X.B.g (e0v c - Yv' c) := by
    intro c
    refine Fin.lastCases ?_ (fun i => ?_) c
    · simp only [he0v, hY', Fin.snoc_last, FlagG.fvec, hTF.2.2.2, hg2, fixZ]
      have := InAt_neg X (X.xu_z u')
      rwa [neg_sub] at this
    · simp only [he0v, hY', Fin.snoc_castSucc, FlagG.fvec, hTF.2.2.1 i, hg2, fixE]
      exact (X.basisApprox i).1

  have e : X.B.I.fmat g1⁻¹ *ᵥ incl X.B.I (X.crd (σ (frame (lf D (X.Fu u')) b) -
      frameAct (frame (lf D (X.Fu u))) ξ b)) = X.B.I.fmat κ *ᵥ Yv' b - ∑ a, s (ξ a b : D.host.E) • Yv a := by
    simp only [frameAct, crd_sub', crd_sum', crd_smul', incl_sub', incl_sum', incl_smul', Matrix.mulVec_sub,
      mulVec_fsum, Matrix.mulVec_smul, ratLink_incl X hRL]
    congr 1
    simp only [hY', Matrix.mulVec_mulVec, hκ', ← fmat_mul]
    congr 2
    group
  rw [e]
  have split : X.B.I.fmat κ *ᵥ Yv' b - ∑ a, s (ξ a b : D.host.E) • Yv a =
      (X.B.I.fmat κ *ᵥ e0v b - ∑ a, t b a • e0v a) - X.B.I.fmat κ *ᵥ (e0v b - Yv' b) +
        ∑ a, (t b a - s (ξ a b : D.host.E)) • e0v a + ∑ a, s (ξ a b : D.host.E) • (e0v a - Yv a) := by
    simp only [Matrix.mulVec_sub, smul_sub, sub_smul, Finset.sum_sub_distrib]
    abel
  rw [split]
  have inAt_mL : ∀ w : VA X.B.I, w ∈ mL X.B.I X.B.g → InAt X.B.I X.B.g X.B.g w := fun w hw =>
    ⟨1, Nat.coprime_one_left _, by rw [Nat.cast_one, one_smul]; exact hw⟩
  refine InAt_add X (InAt_add X (InAt_sub X (inAt_mL _ (htm b)) (InAt_K X hκK (hY'a b)))
    (InAt_sum X _ _ fun a _ => inAt_mL _ ?_)) (InAt_sum X _ _ fun a _ => InAt_smul X (hsI a b) (hYa a))
  obtain ⟨y, hy, hty⟩ := hrel a b
  rw [hty, add_sub_cancel_left, mul_smul]
  have hyL : y • e0v a ∈ X.B.I.Lf := by
    have : y • e0v a = (⟨y, hy⟩ : IntAf X.B.I.F X.B.I.E) • e0v a := rfl
    rw [this]; exact Submodule.smul_mem _ _ (he0vL a)
  exact Formalism.L2.SG.Pf.unitaryCongruence.smul_mem_mL X.B.I hyL

end FrameCongSec

end Formalism.L2.SG.Pf.RegroupPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfFrameCong =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfModGOfAt =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfModGOfAt", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfTermCar\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.AdmNPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical TensorProduct

namespace Formalism.L2.SG.Pf.RegroupPf

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermOp Formalism.L2.SG.HidaSetting Matrix

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem reduction_mod_g_holds : ModGOfAtC := by
  intro D X g1 Λ hΛ v hv
  obtain ⟨c, hcop, hcv⟩ := hv
  have hg0 : X.B.g ≠ 0 := by
    rw [X.g_eq]; exact Nat.mul_ne_zero (D.host.g_prime 0).ne_zero (D.host.g_prime 1).ne_zero
  have hgE : (X.B.g : X.B.I.E) ≠ 0 := Nat.cast_ne_zero.mpr hg0
  set q : X.B.I.E := ((X.B.g : X.B.I.E))⁻¹ with hqdef
  set ι : X.B.I.E →+* X.B.I.E ⊗[X.B.I.F] Af X.B.I.F := Formalism.UG.inclE (F := X.B.I.F) (E := X.B.I.E) (Af X.B.I.F) with hι
  have hq : ι q * (X.B.g : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) = 1 := by
    rw [← map_natCast ι, ← map_mul, hqdef, inv_mul_cancel₀ hgE, map_one]
  have key : ∀ z ∈ mL X.B.I X.B.g, ι q • z ∈ X.B.I.Lf := by
    intro z hz
    induction hz using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨x, hx, rfl⟩ := hx
      rw [smul_smul, hq, one_smul]; exact hx
    | zero => rw [smul_zero]; exact zero_mem _
    | add a b _ _ ha hb => rw [smul_add]; exact add_mem ha hb
    | smul t a _ ha => rw [smul_comm]; exact Submodule.smul_mem _ t ha
  set w : (VS D).V := (X.ιE (q * c)) • v with hwdef
  have hwΛ : w ∈ Λ := by
    rw [hΛ, hwdef, Formalism.L2.SG.NormCut.crd_smul' X, Formalism.L2.SG.NormCut.incl_smul' X, mulVec_smul,
      RingEquiv.symm_apply_apply, map_mul, map_natCast, mul_smul]
    exact key _ hcv
  intro P hgP
  have hcP : ((c : ℕ) : 𝓞 D.host.E) ∉ P.asIdeal := by
    intro hc
    have h1 : IsCoprime ((c : ℤ)) ((X.B.g : ℤ)) := Nat.isCoprime_iff_coprime.mpr hcop
    obtain ⟨a, b, hab⟩ := h1.map (Int.castRingHom (𝓞 D.host.E))
    have hg' : (((X.B.g : ℕ) : ℤ) : 𝓞 D.host.E) ∈ P.asIdeal := by
      rw [Int.cast_natCast, X.g_eq]; exact hgP
    have hc' : (((c : ℕ) : ℤ) : 𝓞 D.host.E) ∈ P.asIdeal := by rw [Int.cast_natCast]; exact hc
    have h1P : (1 : 𝓞 D.host.E) ∈ P.asIdeal := by
      rw [← hab]
      exact P.asIdeal.add_mem (P.asIdeal.mul_mem_left _ hc') (P.asIdeal.mul_mem_left _ hg')
    exact P.isPrime.ne_top ((Ideal.eq_top_iff_one _).mpr h1P)
  have hcv' : ((c : ℕ) : 𝓞 D.host.E) • v = ((gS D : ℕ) : 𝓞 D.host.E) • w := by
    rw [Nat.cast_smul_eq_nsmul, Nat.cast_smul_eq_nsmul, hwdef, ← Nat.cast_smul_eq_nsmul D.host.E,
      ← Nat.cast_smul_eq_nsmul D.host.E, smul_smul]
    congr 1
    rw [← map_natCast X.ιE (gS D), ← map_mul, ← mul_assoc, hqdef, show gS D = X.B.g from X.g_eq.symm,
      mul_inv_cancel₀ hgE, one_mul, map_natCast]
  exact ⟨_, hcP, by rw [hcv']; exact Submodule.smul_mem_smul (Ideal.mem_span_singleton_self _) hwΛ⟩

end Formalism.L2.SG.Pf.RegroupPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfModGOfAt =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfRatIso =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfRatIso", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfTermCar\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.LatCountAllOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace Formalism.L2.SG.Pf.RegroupPf

open Formalism.L2.SG.FoldBound Formalism.L2.SG.PoincareSeriesSquareIntegrable NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermOp
open Formalism.L2.SG.HidaSetting Matrix

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.TermOp.KExpCut Formalism.L2.SG.Full

theorem rational_isomorphism_holds : RatIsoC := by
  intro D X γ hγ
  obtain ⟨g, hgU, h1, h2⟩ := PI.UnitaryGroupMassFormula.LCG.mem_gf X.B.I ⟨γ, hγ⟩
  let φ := (X.ιE : X.B.I.E →+* D.host.E).mapMatrix (m := Fin X.B.I.n)
  let Mg := φ (g : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E)
  let Mi := φ ((g⁻¹ : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E)
  have hmul1 : Mg * Mi = 1 := by
    simp only [Mg, Mi]
    rw [← map_mul, Units.mul_inv, map_one]
  have hmul2 : Mi * Mg = 1 := by
    simp only [Mg, Mi]
    rw [← map_mul, Units.inv_mul, map_one]
  let σ : (VS D).V ≃ₗ[D.host.E] (VS D).V :=
    LinearEquiv.ofLinear (Matrix.toLin X.bas X.bas Mg) (Matrix.toLin X.bas X.bas Mi)
      (by rw [← Matrix.toLin_mul, hmul1, Matrix.toLin_one])
      (by rw [← Matrix.toLin_mul, hmul2, Matrix.toLin_one])
  have hcrd : ∀ y, X.crd (σ y) = (g : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) *ᵥ X.crd y := by
    intro y
    funext i
    show X.ιE.symm (X.bas.repr (Matrix.toLin X.bas X.bas Mg y) i) = _
    rw [Matrix.toLin_apply, Module.Basis.repr_sum_self]

    simp [Mg, φ, Matrix.mulVec, dotProduct, Formalism.L2.SG.HidaSetting.HidaSetting.crd,
    Formalism.L2.SG.HidaSetting.crdOf, map_sum, map_mul]
  refine ⟨σ, ⟨g, hgU, h1, h2, hcrd⟩, fun x y => ?_⟩
  rw [← Formalism.L2.SG.PoincareInHH.Cut.hform_crd (X := X) (σ x) (σ y),
    ← Formalism.L2.SG.PoincareInHH.Cut.hform_crd (X := X) x y, hcrd, hcrd,
    Formalism.L2.SG.PoincareInHH.Cut.hform_mulVec _ _ _ hgU]

end Formalism.L2.SG.Pf.RegroupPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfRatIso =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfTermCarAll =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfTermCarAll", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfOrbitAlg\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfFrameCong\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfModGOfAt\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfRatIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.Pf.RegroupPf

theorem term_carrier_holds : TermCarC :=
  termCarC_of rational_isomorphism_holds reduction_mod_g_holds frame_congruence_holds

end Formalism.L2.SG.Pf.RegroupPf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfTermCarAll =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfAll =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfAll", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfNSA\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ChiTrivOut\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfFinal\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfOrbitAlgOut\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfStabNFinal\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfTermCarAll\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SlabCoverPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SlabNDensePf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHFinal\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKu\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHLatOfLattice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.Pf.RegroupPf

theorem foldReadyX_K2Level : ∀ (D : Formalism.BasicNotions.D7) (X : Formalism.L2.SG.HidaSetting.HidaSetting D), X.LevelSubgroupNormalized →
    Formalism.L2.SG.PoincareInHH.Cut.FoldReadyX X :=
  fun _ X _ => Formalism.L2.SG.PoincareInHH.Cut.foldReadyX_holds X

theorem neatKu_K2Level : ∀ (D : Formalism.BasicNotions.D7) (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (Y : Formalism.L2.SG.Full.Full X)
    (u : D.what₂.Word), X.LevelSubgroupNormalized → Formalism.L2.SG.PoincareInHH.Cut.NeatKu X u Y.hK :=
  fun _ X Y u _ => Formalism.L2.SG.PoincareInHH.Cut.neatKu_of_gamUnipKu X u Y.hK
    (Formalism.L2.SG.PoincareInHH.Cut.latOfLattice_holds X u) (Formalism.L2.SG.PoincareInHH.Cut.gamUnipKu_holds X u Y.hK)

theorem nDense_RG : NDense := Formalism.L2.SG.Pf.SlabNDensePf.nilradical_strong_approximation

theorem slabCoverC_holds : Formalism.L2.SG.Pf.Slab.SlabCoverC := Formalism.L2.SG.Pf.SlabCoverPf.slab_covering_of_strong_approx nDense_RG Formalism.L2.SG.Pf.nilradical_conj_level'
  (fun _ X u => Formalism.L2.SG.Pf.Level.ratLevi_holds X u) (fun _ X => Formalism.L2.SG.Pf.psiDd_holds X)

theorem regroupC_all : Formalism.L2.SG.Pf.Slab.RegroupC := regrouping_of_neatness (nStrongApproxC_of nDense_RG)
  (orbit_algebra_of_stabilizer term_carrier_holds (stabilizer_of_neat_level neatKu_K2Level)) slabCoverC_holds foldReadyX_K2Level neatKu_K2Level

end Formalism.L2.SG.Pf.RegroupPf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfAll =====
