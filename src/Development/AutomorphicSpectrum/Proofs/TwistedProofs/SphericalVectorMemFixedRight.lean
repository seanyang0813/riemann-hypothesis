module

public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ThetaSourceAction
public import Development.AbelianVarietyTheory.Definitions.Foundations.T2SpaceAdeleRing
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InnerProductFormula
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ConstMemBddAut
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Completion
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.HalfLinearCocycle
public import Development.AbelianVarietyTheory.Definitions.Foundations.IsSatVecUOfIsSphericalU
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.InstBorelGL
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.CartanExponentsNonnegMinusculeTopProduct
import Development.AbelianVarietyTheory.Definitions.Foundations.IsIwasawaOfIsCompact
import Formalism.LocalRingCardinality.DataTheta
import Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange
import Formalism.LocalToGlobal.IndefiniteForms.IndefSide
import Formalism.LocalToGlobal.IndefiniteReal.IndefiniteWeightData
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GapAtLeast
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
import Formalism.LocalRingCardinality.DataHost
import Development.AbelianVarietyTheory.Definitions.Foundations.NormEulerPolySubOneLe
import Formalism.SatakeDualWeyl.KpqSubgroupCompact

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Definitions.TwistedFlags.OneMemOffK, Development.AutomorphicSpectrum.Definitions.TwistedFlags.BlockDoubleCosetFunctionsExist, Development.AutomorphicSpectrum.Proofs.TwistedProofs.SphericalVectorMemFixedRight

-- ===== clump member: Development.AutomorphicSpectrum.Definitions.TwistedFlags.OneMemOffK =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Definitions.TwistedFlags.OneMemOffK", "h": "module\n\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ThetaSourceAction\nimport Development.AbelianVarietyTheory.Definitions.Foundations.IsIwasawaOfIsCompact\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.T2SpaceAdeleRing\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InnerProductFormula\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ConstMemBddAut\nimport Formalism.LocalRingCardinality.DataTheta\nimport Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange\nimport Formalism.LocalToGlobal.IndefiniteForms.IndefSide\nimport Formalism.LocalToGlobal.IndefiniteReal.IndefiniteWeightData\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\nimport Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GapAtLeast\nimport Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum
open GlobalTheory.Doubling (io hgt flat zetaA ZetaConvA IsMaj dblSp Khat HasIwasawa degPS)
open GlobalTheory.FinZeta (projV embV Kv Gv IsLocKer VacFin bddAut)
open GlobalTheory.IndefiniteRowSideFullHecke.ThetaSourceAction (ofFr ipTh ptAt actSrc actTgt IsJoint UnitHighest kfin alS alT NodeGap)
open GlobalTheory.AdelicScalar (l2)
open scoped InnerProductSpace GlobalTheory.AdelicU GlobalTheory.Doubling

namespace GlobalTheory.CompanionTheory.Ipf.Loc

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7}

abbrev FPl (D : D7) : Type := HeightOneSpectrum (𝓞 D.host.F)

section Real

variable {V : HSp D} {PS : D.what₂.Tau → SPar} (θ : InfFam D) (M : DSModel V PS)

end Real



end GlobalTheory.CompanionTheory.Ipf.Loc

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Definitions.TwistedFlags.OneMemOffK =====

-- ===== clump member: Development.AutomorphicSpectrum.Definitions.TwistedFlags.BlockDoubleCosetFunctionsExist =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Definitions.TwistedFlags.BlockDoubleCosetFunctionsExist", "h": "module\n\npublic import Mathlib.RingTheory.DedekindDomain.AdicValuation.Completion\nimport Formalism.LocalRingCardinality.DataHost\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.HalfLinearCocycle\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.IsSatVecUOfIsSphericalU\nimport Development.AbelianVarietyTheory.Definitions.Foundations.NormEulerPolySubOneLe\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ConstMemBddAut\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.InstBorelGL\npublic import Development.AutomorphicSpectrum.Definitions.TwistedFlags.OneMemOffK\nimport Formalism.LocalRingCardinality.DataTheta\nimport Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange\nimport Formalism.LocalToGlobal.IndefiniteForms.IndefSide\nimport Formalism.LocalToGlobal.IndefiniteReal.IndefiniteWeightData\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\nimport Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GapAtLeast\nimport Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum
open GlobalTheory.CompanionTheory.QL (bAA bAD bDA bDD chi0 pEl)
open GlobalTheory.LFun (KGL IsSatVecGL heckeVec eulerFac seg)
open Formalism.UG (qV IsUnifV dosetInd)

namespace GlobalTheory.CompanionTheory.Ipf.Val

section Local

variable {K : Type} [Field K] [NumberField K] (v : HeightOneSpectrum (𝓞 K))

abbrev Cv : Type := v.adicCompletion K

end Local

section Adelic

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.FinZeta (projV embV Kv Gv)
open GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting (SplitProj IsIdemOf IsProjAt rdA grpCo frCo)
open GlobalTheory.CompanionTheory.Ipf.Loc (FPl)

variable {D : D7}

end Adelic

end GlobalTheory.CompanionTheory.Ipf.Val

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Definitions.TwistedFlags.BlockDoubleCosetFunctionsExist =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.TwistedProofs.SphericalVectorMemFixedRight =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.TwistedProofs.SphericalVectorMemFixedRight", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.TwistedFlags.BlockDoubleCosetFunctionsExist\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.IsSatVecUOfIsSphericalU\nimport Formalism.SatakeDualWeyl.KpqSubgroupCompact\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.CartanExponentsNonnegMinusculeTopProduct\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix
open Formalism.UG (Tj Ov qV IsUnifV Hecke IsBiInv conv dosetInd IsCommensurated GLint hAct AMF)
open GlobalTheory.LFun (KGL heckeVec IsSatVecGL satEig seg)
open GlobalTheory.PRep (fixed rightReg)

namespace GlobalTheory.CompanionTheory.Ipf.Val.SphM

section Abs

variable {G V : Type} [Group G] [AddCommGroup V] [Module ℂ V] {K : Subgroup G}

def orb (ρ : Representation ℂ G V) : V →ₗ[ℂ] (G → V) where
  toFun x g := ρ g x
  map_add' x y := by funext g; simp
  map_smul' c x := by funext g; simp

theorem orb_heckeVec (ρ : Representation ℂ G V) (hK : IsCommensurated K) {h : G → ℂ} (hh : h ∈ Hecke ℂ K) (x : V) :
    orb ρ (heckeVec ρ K h x) = hAct K h (orb ρ x) := by
  rw [GlobalTheory.LFun.map_heckeVec hK hh (ρ' := rightReg ℂ G V) (orb ρ) ?_ x, GlobalTheory.LFun.heckeVec_rightReg hK hh]
  intro g y
  funext a
  simp [orb, rightReg]

theorem orb_injective (ρ : Representation ℂ G V) : Function.Injective (orb ρ) := fun a b e => by
  simpa [orb] using congrFun e 1

theorem orb_mem {ρ : Representation ℂ G V} {x : V} (hx : x ∈ fixed ρ K) :
    orb ρ x ∈ AMF ℂ (⊥ : Subgroup G) K (1 : Representation ℂ (⊥ : Subgroup G) V) := by
  rintro ⟨γ, hγ⟩ g ⟨κ, hκ⟩
  have : γ = 1 := hγ
  subst this
  simp [orb, GlobalTheory.LGrp.mem_fixed.1 hx κ hκ]

theorem heckeVec_conv (hK : IsCommensurated K) {f₁ f₂ : G → ℂ} (h₁ : f₁ ∈ Hecke ℂ K) (h₂ : f₂ ∈ Hecke ℂ K)
    (ρ : Representation ℂ G V) {x : V} (hx : x ∈ fixed ρ K) :
    heckeVec ρ K (conv K f₁ f₂) x = heckeVec ρ K f₁ (heckeVec ρ K f₂ x) := by
  apply orb_injective ρ
  rw [orb_heckeVec ρ hK (Formalism.UG.Final.HeckeConvMem G K ℂ hK f₁ h₁ f₂ h₂),
    Formalism.UG.Final.HeckeActMul G ⊥ K ℂ V 1 hK f₁ h₁ f₂ h₂ _ (orb_mem hx), orb_heckeVec ρ hK h₁, orb_heckeVec ρ hK h₂]

theorem heckeVec_add (hK : IsCommensurated K) {f₁ f₂ : G → ℂ} (h₁ : f₁ ∈ Hecke ℂ K) (h₂ : f₂ ∈ Hecke ℂ K)
    (ρ : Representation ℂ G V) (x : V) :
    heckeVec ρ K (f₁ + f₂) x = heckeVec ρ K f₁ x + heckeVec ρ K f₂ x := by
  unfold heckeVec
  rw [← finsum_add_distrib (GlobalTheory.LFun.finite_heckeVec hK h₁ ρ x) (GlobalTheory.LFun.finite_heckeVec hK h₂ ρ x)]
  exact finsum_congr fun c => by simp [add_smul]

theorem heckeVec_smul (z : ℂ) (f : G → ℂ) (ρ : Representation ℂ G V) (x : V) :
    heckeVec ρ K (z • f) x = z • heckeVec ρ K f x := by
  unfold heckeVec
  rw [smul_finsum]
  exact finsum_congr fun c => by simp [mul_smul]

theorem heckeVec_smul_vec (z : ℂ) (f : G → ℂ) (ρ : Representation ℂ G V) (x : V) :
    heckeVec ρ K f (z • x) = z • heckeVec ρ K f x := by
  unfold heckeVec
  rw [smul_finsum]
  exact finsum_congr fun c => by rw [map_smul, smul_comm]

end Abs

section Loc

open GlobalTheory.Hk3.MinuscTopLocal (dU)

variable {K : Type} [Field K] [NumberField K] (v : HeightOneSpectrum (𝓞 K))

variable {v}

variable (v)

theorem heckeVec_central {G V : Type} [Group G] [AddCommGroup V] [Module ℂ V] {H : Subgroup G}
    (ρ : Representation ℂ G V) {x : V} (hx : x ∈ fixed ρ H) {z : G} (hz : ∀ g, z * g = g * z) :
    heckeVec ρ H (dosetInd ℂ H z) x = ρ z x := by
  classical
  have := GlobalTheory.LFun.heckeVec_dosetInd (ρ := ρ) (K := H) hx (a := z) (R := {z})
    (fun γ hγ => by
      rw [Finset.mem_singleton.1 hγ]
      exact DoubleCoset.mem_doubleCoset.2 ⟨1, H.one_mem, 1, H.one_mem, by simp⟩)
    (fun g hg => by
      obtain ⟨a, ha, b, hb, rfl⟩ := DoubleCoset.mem_doubleCoset.1 hg
      refine ⟨z, ⟨Finset.mem_singleton_self _, ?_⟩, fun y hy => Finset.mem_singleton.1 hy.1⟩
      have e : z⁻¹ * (a * z * b) = a * b := by
        rw [← hz a]; group
      rw [e]
      exact H.mul_mem ha hb)
  simpa using this

theorem diagJ_self (n : ℕ) (ϖ : Cv v) : Formalism.UG.diagJ n ϖ n = ϖ • (1 : Matrix (Fin n) (Fin n) (Cv v)) := by
  ext i j
  by_cases h : i = j
  · subst h
    simp [Formalism.UG.diagJ]
  · simp [Formalism.UG.diagJ, h]

def sc (n : ℕ) {ϖ : Cv v} (h0 : ϖ ≠ 0) : GL (Fin n) (Cv v) where
  val := ϖ • 1
  inv := ϖ⁻¹ • 1
  val_inv := by simp [smul_smul, h0]
  inv_val := by simp [smul_smul, h0]

theorem sc_central (n : ℕ) {ϖ : Cv v} (h0 : ϖ ≠ 0) (g : GL (Fin n) (Cv v)) : sc v n h0 * g = g * sc v n h0 :=
  Units.ext (by simp [sc])

theorem Tj_self (n : ℕ) {ϖ : Cv v} (h0 : ϖ ≠ 0) : Tj ℂ n (Ov K v) ϖ n = dosetInd ℂ (KGL v (n := n)) (sc v n h0) :=
  Formalism.UG.Final.TjEq (Cv v) (Ov K v) ϖ ℂ n n (sc v n h0) (by rw [diagJ_self]; rfl)

end Loc

end GlobalTheory.CompanionTheory.Ipf.Val.SphM

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.TwistedProofs.SphericalVectorMemFixedRight =====
