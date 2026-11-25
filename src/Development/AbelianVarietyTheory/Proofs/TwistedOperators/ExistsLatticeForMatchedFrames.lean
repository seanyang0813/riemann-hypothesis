module

public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.TwistPlacesOffPrimeQZero
public import Development.AbelianVarietyTheory.Statements.HeckeThetaIntegrals.ThetaIntegralsAgree
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.AeCharUnramAt
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.EventuallyExtUnramTwoNotMem
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnitaryFiniteAdelicGroupSplitFinitePlaceSet
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.VacuumFixedByLevelPairAtSelfDualPlaces
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaPureTensorO
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.HeisenbergOperatorFixThetaDatumAwaySplitPlaces
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.OmPureTensorOOfFinite
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PlaceIdempotentUnderEqOfLiesOver
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.RowClaim
open Formalism.L2.Host (HChar)
open GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle (Tri)
open GlobalTheory.RowEx
open MeasureTheory GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames

noncomputable section

namespace GlobalTheory.SmallKerInv

open GlobalTheory.FinPl

variable {D : D7}

theorem placeIdem_smul_offP {S T : HSp D} {LS : Set (Fin S.rank → D.host.E)} {LT : Set (Fin T.rank → D.host.E)}
    {P : HeightOneSpectrum (𝓞 D.host.F) → Prop} {w : HeightOneSpectrum (𝓞 D.host.F)} {ε : AF D.host.F}
    (hε : IsPlaceIdem D w ε) (hw : ¬ P w) {u : WO S T}
    (hu : u ∈ latO S T LS LT P) : algebraMap (AF D.host.F) (AE D) ε • u = 0 := by
  obtain ⟨β, rfl, -, h0⟩ := hε
  induction hu using AddSubgroup.closure_induction with
  | mem x hx =>
    obtain ⟨α, hα, hP, a, ha, s, hs, t, ht, rfl⟩ := hx
    have hβα : β * α = 0 := by
      refine RestrictedProduct.ext _ _ fun y => ?_
      change evalV D.host.F y (β * α) = evalV D.host.F y 0
      rw [map_mul, map_zero]
      by_cases hy : y = w
      · subst hy; rw [hP y hw, mul_zero]
      · rw [h0 y hy, zero_mul]
    have hp : pairA D.host.F 0 β * pairA D.host.F 0 α = 0 := Prod.ext (mul_zero _) hβα
    ext i j
    change (pairA D.host.F 0 β ⊗ₜ[D.host.F] (1 : D.host.E)) * (_ ⊗ₜ _) = (0 : AE D)
    rw [Algebra.TensorProduct.tmul_mul_tmul, one_mul, hp, TensorProduct.zero_tmul]
  | zero => rw [smul_zero]
  | add x x' _ _ h h' => rw [smul_add, h, h', add_zero]
  | neg x _ h => rw [smul_neg, h, neg_zero]

theorem idemSum_mul_offP {S T : HSp D} {LS : Set (Fin S.rank → D.host.E)} {LT : Set (Fin T.rank → D.host.E)}
    {P : HeightOneSpectrum (𝓞 D.host.F) → Prop} {e : AE D} {Pset : Finset (Formalism.L2.DIV.Pl D.host.E)}
    (he : IsIdemSum e Pset) (hv : ∀ PP ∈ Pset, ¬ P ((_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP))) {u : WO S T}
    (hu : u ∈ latO S T LS LT P) (a b) : e * u a b = 0 ∧ cA D e * u a b = 0 := by
  obtain ⟨⟨es, hes, rfl⟩, -⟩ := he
  have key : ∀ PP ∈ Pset, es PP * u a b = 0 ∧ cA D (es PP) * u a b = 0 := by
    intro PP hPP
    obtain ⟨⟨a1, a2, w, ε, hε, a3⟩, -⟩ := hes PP hPP
    have hw : ¬ P w := fun h => hv PP hPP (by
      rw [GlobalTheory.IdemUnder.under_eq_of_isIdemAt D _ PP w ε (hes PP hPP) hε a3]; exact h)
    have h0 := congrFun (congrFun (placeIdem_smul_offP hε hw hu) a) b
    rw [Matrix.smul_apply, smul_eq_mul, ← a3, Matrix.zero_apply] at h0
    have c1 : cA D (es PP) * cA D (es PP) = cA D (es PP) := by rw [← map_mul, a1]
    have c2 : cA D (es PP) * es PP = 0 := by rw [mul_comm, a2]
    refine ⟨?_, ?_⟩
    · linear_combination es PP * h0 - u a b * a1 - u a b * a2
    · linear_combination cA D (es PP) * h0 - u a b * c1 - u a b * c2
  refine ⟨?_, ?_⟩
  · rw [Finset.sum_mul]; exact Finset.sum_eq_zero fun PP hPP => (key PP hPP).1

  · rw [map_sum, Finset.sum_mul]; exact Finset.sum_eq_zero fun PP hPP => (key PP hPP).2

theorem latO_le_true {S T : HSp D} (LS : Set (Fin S.rank → D.host.E)) (LT : Set (Fin T.rank → D.host.E))
    (P : HeightOneSpectrum (𝓞 D.host.F) → Prop) : latO S T LS LT P ≤ latO S T LS LT fun _ => True := by
  apply AddSubgroup.closure_mono
  rintro w ⟨α, hα, -, rest⟩
  exact ⟨α, hα, fun v h => absurd trivial h, rest⟩

end GlobalTheory.SmallKerInv

namespace GlobalTheory.SmallKerInv

open GlobalTheory.FinPl

variable {D : D7}

theorem om_fock_fix (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D) (S T : HSp D) (χS χT : (AE D)ˣ →* Circle)
    (om : GA D S × GA D T →* Module.End ℂ (WO S T → ℂ)) (hW : IsWeilDatumO ψ S T χS χT om) (hθ : IsInfFam θ)
    (LS : Lat S) (LT : Lat T) (P : Pl D → Prop)
    (hP : ∀ v, P v → IsSelfDualC S LS ∧ IsSelfDualC T LT ∧ Tame D v ∧ GlobalTheory.IndefiniteRowSideFullHecke.UnramifiedCharacter.CharUnramAt D χS v ∧
      GlobalTheory.IndefiniteRowSideFullHecke.UnramifiedCharacter.CharUnramAt D χT v)
    (e : AE D) (Pset : Finset (Formalism.L2.DIV.Pl D.host.E)) (he : IsIdemSum e Pset)
    (hoff : ∀ PP ∈ Pset, ¬ P ((_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP)))
    (f₀ φ f : WO S T → ℂ) (h₀ : IsThetaFunO ψ S T f₀)
    (hlat : IsLatVac (heisO ψ S T) (latO S T (LS : Set _) (LT : Set _) fun _ => True) f₀)
    (hth : IsThetaAt ψ (symplO S T) (heisO ψ S T) e (latO S T (LS : Set _) (LT : Set _) fun _ => True) 1 f₀ φ f)
    (sS BS : D.what₂.Tau → Matrix (Fin S.rank) (Fin S.rank) ℂ) (sT BT : D.what₂.Tau → Matrix (Fin T.rank) (Fin T.rank) ℂ)
    (Q : PolF D T.rank S.rank) (κ : GA D S) (κ' : GA D T) (hκ : InK S LS P κ) (hκ' : InK T LT P κ') :
    om (κ, κ') (pureTensorO ψ θ S T sS sT BS BT f Q) = pureTensorO ψ θ S T sS sT BS BT f Q := by
  have hf : IsThetaFunO ψ S T f := GlobalTheory.GalLift.Vec.theta_of_thetaAt hW.std hθ hth h₀
  have hz : ∀ u ∈ latO S T (LS : Set _) (LT : Set _) P, ∀ a b, e * u a b = 0 ∧ cA D e * u a b = 0 :=
    fun u hu a b => idemSum_mul_offP he hoff hu a b
  have hle := latO_le_true (S := S) (T := T) (LS : Set _) (LT : Set _) P
  have hvac : Vac ψ S T LS LT P f := by
    refine ⟨hf, fun u hu => ?_, fun e' he' u hu hh => ?_⟩
    · exact GlobalTheory.Hk3.heisO_fix_thetaAt_off ψ S T e _ 1 f₀ φ f hth (2 • u)
        (hz _ (AddSubgroup.nsmul_mem _ hu 2)) (hlat.1 u (hle hu))
    · exact GlobalTheory.Hk3.heisO_fix_thetaAt_off ψ S T e _ 1 f₀ φ f hth u (hz u hu) (hlat.2 e' he' u (hle hu) hh)
  have hfix : om (κ, κ') f = f := GlobalTheory.VacFixP.vac_fix_on D ψ S T χS χT om hW LS LT P hP f hvac κ κ' hκ hκ'
  have := GlobalTheory.FiniteFock.om_pureTensorO_of_finite ψ θ S T χS χT om hθ hW sS sT BS BT f
    (fun R => GlobalTheory.GalLift.Vec.theta_pureTensorO hW.std hθ sS BS sT BT hf R)
    κ (GlobalTheory.FinPl.SetCut.grpAt_le_GfC S P hκ.1) κ' (GlobalTheory.FinPl.SetCut.grpAt_le_GfC T P hκ'.1) 1
    (by rw [hfix, one_smul]) Q
  rw [this, one_smul]

theorem inK_one (S : HSp D) (L : Lat S) (P : Pl D → Prop) : InK S L P 1 := by
  refine ⟨one_mem _, fun y _ => ?_⟩
  have h : mt S 1 = 1 := rfl
  rw [h, Matrix.one_mulVec]

end GlobalTheory.SmallKerInv
