module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsNotRelZero
import Development.AbelianVarietyTheory.Definitions.Foundations.AestronglyMeasurableQuotMeasureIffLift
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMulRightInvariantHaarAdelicUnitaryGroupHermiti
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallRouteCombinationMulLiftByDegree
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.TopoAF
import GroundTheory.AutomorphicForms.QuotientMeasure
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Dynamics.Ergodic.Action.Regular
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.UnitCharTriangle
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsMatchOver
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.TwistPlacesOffPrimeQZero
import Development.AbelianVarietyTheory.Statements.HeckeThetaIntegrals.FormulaAt

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.RowClaim
open Formalism.L2.Host (HChar)
open GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle (Tri)
open GlobalTheory.RowEx
open MeasureTheory GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames

noncomputable section

namespace GlobalTheory.SmallConst

theorem kerSmall_rat_mid {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} (W : G.Weil) (B : Frames G)
    (ρ : RealMatch W) (t : T) (i j : Fin D.R.m) (Θ : TotT G (routeBig t i j)) (Θ' : TotT G (routeSmall t i j))
    (hΘ : IsMatched B t ρ i j Θ Θ') (g : GA D (G.V (.grid i (j + 1)))) (g₁ : GA D (G.V (.grid (i + 1) j))) :
    ∀ γ ∈ GQ (G.V (.grid i j)), ∀ u, kerSmall W Θ' g g₁ (γ * u) = kerSmall W Θ' g g₁ u := by
  intro γ hγ u
  have hm := W.om_is (.mu t i j) ⟨i.2.le, j.2⟩
  have hc := W.om_is (.chi (i : ℕ) j) ⟨i.2, j.2.le⟩
  unfold kerSmall
  refine Finsupp.sum_congr fun d hd => ?_
  obtain ⟨h2, h1⟩ := GlobalTheory.SmallRoute.theta_of_matched hΘ hd
  congr 1
  congr 1
  · show thetaKO (W.om (.mu t i j)) (γ * u) g d.1.2 = thetaKO (W.om (.mu t i j)) u g d.1.2
    unfold thetaKO
    have e : ((γ * u, g) : GA D (G.pS (.mu t i j)) × GA D (G.pT (.mu t i j))) = (γ, 1) * (u, g) := by simp
    rw [e, map_mul]
    exact hm.om_aut γ hγ 1 (one_mem _) _ (hm.om_pres _ _ h1)
  · show thetaKO (W.om (.chi (i : ℕ) j)) (negGA _ g₁) (γ * u) d.2 = thetaKO (W.om (.chi (i : ℕ) j)) (negGA _ g₁) u d.2
    unfold thetaKO
    have e : ((negGA _ g₁, γ * u) : GA D (G.pS (.chi (i : ℕ) j)) × GA D (G.pT (.chi (i : ℕ) j))) =
        (1, γ) * (negGA _ g₁, u) := by simp
    rw [e, map_mul]
    exact hc.om_aut 1 (one_mem _) γ hγ _ (hc.om_pres _ _ h2)

theorem setIntegral_mul_right {D : D7} (V : HSp D) (ν : Measure (GA D V)) [hH : ν.IsHaarMeasure] (fd : Set (GA D V))
    (hfd : IsFundamentalDomain (GQ V) fd ν) (F : GA D V → ℂ) (hF : ∀ γ ∈ GQ V, ∀ u, F (γ * u) = F u)
    (hint : IntegrableOn F fd ν) (k : GA D V) :
    IntegrableOn (fun u => F (u * k)) fd ν ∧ ∫ u in fd, F (u * k) ∂ν = ∫ u in fd, F u ∂ν := by
  haveI := GlobalTheory.AdelicPointsUnimod.isMulRightInvariant_of_isHaarMeasure D V ν hH
  have hmp : MeasurePreserving (fun x : GA D V => x * k⁻¹) ν ν := measurePreserving_mul_right ν k⁻¹
  have ht : IsFundamentalDomain (GQ V) ((fun x : GA D V => x * k⁻¹) ⁻¹' fd) ν :=
    hfd.preimage_of_equiv hmp.quasiMeasurePreserving (e := id) Function.bijective_id
      (fun g x => by simp [Subgroup.smul_def, mul_assoc])
  have hinv : ∀ (g : GQ V) (x : GA D V), F (g • x) = F x := fun g x => hF g g.2 x
  have hmp2 : MeasurePreserving (fun x : GA D V => x * k) ν ν := measurePreserving_mul_right ν k
  have hpre : (fun x : GA D V => x * k) ⁻¹' ((fun x : GA D V => x * k⁻¹) ⁻¹' fd) = fd := by
    ext x; simp
  have hemb : MeasurableEmbedding (fun x : GA D V => x * k) := (MeasurableEquiv.mulRight k).measurableEmbedding
  have h1 : IntegrableOn F ((fun x : GA D V => x * k⁻¹) ⁻¹' fd) ν := (hfd.integrableOn_iff ht hinv).1 hint
  have e1 : ∫ u in fd, F (u * k) ∂ν = ∫ u in (fun x : GA D V => x * k⁻¹) ⁻¹' fd, F u ∂ν := by
    have := hmp2.setIntegral_preimage_emb hemb F ((fun x : GA D V => x * k⁻¹) ⁻¹' fd)
    rw [hpre] at this
    exact this
  refine ⟨?_, ?_⟩
  · rw [← hpre]
    exact (hmp2.integrableOn_comp_preimage hemb).2 h1
  · rw [e1]; exact (hfd.setIntegral_eq ht hinv).symm

theorem translates_left_inv {D : D7} {V : HSp D} (F : GA D V → ℂ) (hF : ∀ γ ∈ GQ V, ∀ u, F (γ * u) = F u)
    (w : GA D V →₀ ℂ) : ∀ γ ∈ GQ V, ∀ u, translates w F (γ * u) = translates w F u := by
  intro γ hγ u
  unfold translates
  refine Finsupp.sum_congr fun k _ => ?_
  rw [mul_assoc, hF γ hγ]

theorem integral_translates {D : D7} (V : HSp D) (ν : Measure (GA D V)) [ν.IsHaarMeasure] (fd : Set (GA D V))
    (hfd : IsFundamentalDomain (GQ V) fd ν) (F : GA D V → ℂ) (hF : ∀ γ ∈ GQ V, ∀ u, F (γ * u) = F u)
    (hint : IntegrableOn F fd ν) (w : GA D V →₀ ℂ) :
    IntegrableOn (translates w F) fd ν ∧ ∫ u in fd, translates w F u ∂ν = zdeg w * ∫ u in fd, F u ∂ν := by
  have h := fun k => setIntegral_mul_right V ν fd hfd F hF hint k
  have e : translates w F = fun u => ∑ k ∈ w.support, w k * F (u * k) := by
    funext u; rfl
  rw [e]
  refine ⟨integrable_finsetSum _ fun k _ => (h k).1.const_mul _, ?_⟩
  rw [integral_finsetSum _ fun k _ => (h k).1.const_mul _]
  simp only [integral_const_mul, (h _).2]
  rw [zdeg, Finsupp.sum, Finset.sum_mul]

theorem translates_comm {H : Type} [Monoid H] (F : H → ℂ) (a b : H →₀ ℂ)
    (hab : ∀ x ∈ a.support, ∀ y ∈ b.support, x * y = y * x) :
    translates a (translates b F) = translates b (translates a F) := by
  funext u
  simp only [translates, Finsupp.sum, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun y hy => Finset.sum_congr rfl fun x hx => ?_
  rw [mul_assoc, mul_assoc, hab x hx y hy]; ring

theorem zdeg_mul_integral_comm {D : D7} (V : HSp D) (ν : Measure (GA D V)) [ν.IsHaarMeasure] (fd : Set (GA D V))
    (hfd : IsFundamentalDomain (GQ V) fd ν) (F : GA D V → ℂ) (hF : ∀ γ ∈ GQ V, ∀ u, F (γ * u) = F u)
    (a b : GA D V →₀ ℂ) (hab : ∀ x ∈ a.support, ∀ y ∈ b.support, x * y = y * x)
    (ha : IntegrableOn (translates a F) fd ν) (hb : IntegrableOn (translates b F) fd ν) :
    zdeg a * ∫ u in fd, translates b F u ∂ν = zdeg b * ∫ u in fd, translates a F u ∂ν := by
  rw [← (integral_translates V ν fd hfd _ (translates_left_inv F hF b) hb a).2,
    ← (integral_translates V ν fd hfd _ (translates_left_inv F hF a) ha b).2, translates_comm F a b hab]

end GlobalTheory.SmallConst

end
