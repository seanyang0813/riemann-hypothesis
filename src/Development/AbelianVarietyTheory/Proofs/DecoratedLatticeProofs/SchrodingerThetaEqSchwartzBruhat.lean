module

public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SchwartzBruhatMixedFamilies
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixSDblDecZero
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SmulEqZeroOfInf
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SymplecticAdelicFormBiadditiveAlternatingRationa
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.HeckeFormNSOfHeckeForm
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.CovolOneIntegralAdd
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SphericalVolumeLift
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SphericalZero
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.HasDerivAtZeroAndIsTheta
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsSummableBoundSchwartzMajorantRationalTransStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchwartzBruhatAdelicMatrixContinuousLeMajorantStatement
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.RealSizeNonneg
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaSeriesSchwartzBruhatContinuousSchrodinger
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ContDiffOfHeisenbergDerivativeClosedClassStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatDoubledPairSchrodingerFunction
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubledPairThetaFunctionEqZeroOfSchrodingerEqZerStatement
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ComplexEmbeddingHermitianQuadrupleSum
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsAdeleRingTensorEquivInfiniteProdFinite
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyEqOfIsPreconnected
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IntegrandSZero
import Development.AbelianVarietyTheory.Proofs.HeightProofs.IsTopologicalRingAE
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Development.AbelianVarietyTheory.Definitions.Foundations.AestronglyMeasurableQuotMeasureIffLift
import Development.AbelianVarietyTheory.Definitions.Foundations.IsIwasawaOfIsCompact
import Development.AbelianVarietyTheory.Definitions.Foundations.WittIndexEqZeroIff
import Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf
import Mathlib.Analysis.Calculus.SmoothSeries
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatIffMemAdelicMatrixSchwartzSpaceStatement

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubledThetaSeriesLawAndLevel, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubledThetaSeriesLawAndLevelStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatAdelicMatrixClosedDerivLinearAdd, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatAdelicMatrixClosedDerivLinearAddStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HasDerivAtHeisenbergThetaSeries, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HasDerivAtHeisenbergThetaSeriesStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaSeriesSchwartzBruhatContinuousSchrodingerStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsThetaFunctionSchrodingerFunctionEq, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsThetaFunctionSchrodingerFunctionEqStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatDoubledPairSchrodingerFunctionStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchrodingerThetaEqSchwartzBruhat

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubledThetaSeriesLawAndLevel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubledThetaSeriesLawAndLevel", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SchwartzBruhatMixedFamilies\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixSDblDecZero\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ComplexEmbeddingHermitianQuadrupleSum\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SmulEqZeroOfInf\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SymplecticAdelicFormBiadditiveAlternatingRationa\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsAdeleRingTensorEquivInfiniteProdFinite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyEqOfIsPreconnected\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.HeckeFormNSOfHeckeForm\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IntegrandSZero\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexConjugate Matrix NNReal ENNReal
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.Cusp GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalVolumeLift (FinPl RealMat Lat IsFockVec IsSphOff HidaSetting volQ)
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalZero (ip delta swSec sZero IsKFinVec ThetaClause SectionClause CoefClause)
open GlobalTheory.Mem.Th (CptF)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Core.Rk.IP GlobalTheory.Core.Rk.SWLaw
open GlobalTheory.Core.Rk.SW
open scoped ContDiff

noncomputable section

namespace GlobalTheory.ThetaSeriesLaw

open Filter Topology
open scoped TensorProduct

variable {D : D7} {S S₀ : HSp D} {ρ : ℕ} (d : HypDec S S₀ ρ) (T : HSp D)

def bt (x y : Mx D T.rank ρ) : AF D.host.F := symplOH S T (d.extX T x) (d.extY T y)

theorem bt_add_left (x x' y : Mx D T.rank ρ) : bt d T (x + x') y = bt d T x y + bt d T x' y := by
  rw [bt, map_add (f := _), GlobalTheory.OrientedHeis.symplOH_add_left]; rfl

theorem bt_add_right (x y y' : Mx D T.rank ρ) : bt d T x (y + y') = bt d T x y + bt d T x y' := by
  rw [bt, map_add (f := _), GlobalTheory.OrientedHeis.symplOH_add_right]; rfl

theorem bt_zero_right (x : Mx D T.rank ρ) : bt d T x 0 = 0 := by
  rw [bt, map_zero, GlobalTheory.FinTranslate.symplOH_zero_right]

theorem symplO_bt (x y : Mx D T.rank ρ) : symplO S T (d.extX T x) (d.extY T y) = bt d T x y + bt d T x y := by
  have h2 : algebraMap D.host.F (AF D.host.F) (1 / 2) * 2 = 1 := by
    rw [← map_ofNat (algebraMap D.host.F (AF D.host.F)) 2, ← map_mul]
    norm_num
  unfold bt symplOH
  linear_combination (-symplO S T (d.extX T x) (d.extY T y)) * h2

theorem psi_bt_rat {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ)
    (ξ η : Matrix (Fin T.rank) (Fin ρ) D.host.E) : ψ (bt d T (rat ξ) (rat η)) = 1 := by
  obtain ⟨a, ha⟩ := GlobalTheory.SymplecticOrthogonalSesquilinear.symplO_rat D S T (ξ * d.qX) (η * d.qY)
  rw [ratW_eq, ratW_eq, rat_mul, rat_mul] at ha
  have : bt d T (rat ξ) (rat η) = algebraMap D.host.F (AF D.host.F) (1 / 2 * a) := by
    rw [map_mul, ← ha]; rfl
  rw [this]; exact hψ.2.2.1 _

theorem symplOH_coord (h0 : d.j0 = 0) (w w' : WO S T) :
    symplOH S T w w' = bt d T (w ⬝ d.jX) (w' ⬝ d.jY) - bt d T (w' ⬝ d.jX) (w ⬝ d.jY) := by
  have h : ∀ w : WO S T, w = d.extX T (w ⬝ d.jX) + d.extY T (w ⬝ d.jY) := fun w => by
    have := (d.coordS T).left_inv w
    change d.extX T (w ⬝ d.jX) + d.ext0 T (w ⬝ d.j0) + d.extY T (w ⬝ d.jY) = w at this
    rw [h0, Matrix.mul_zero, map_zero, add_zero] at this
    exact this.symm
  conv_lhs => rw [h w, h w']
  rw [GlobalTheory.OrientedHeis.symplOH_add_left, GlobalTheory.OrientedHeis.symplOH_add_right, GlobalTheory.OrientedHeis.symplOH_add_right,
    d.symplOH_extX_extX, d.symplOH_extY_extY, symplOH_skew S T (d.extX T (w' ⬝ d.jX)), zero_add, add_zero,
    sub_eq_add_neg]
  rfl

theorem snd_bt {x : Mx D T.rank ρ} (hx : x.map (finPart D) = 0) (y : Mx D T.rank ρ) : (bt d T x y).2 = 0 := by
  have h := GlobalTheory.OrientedHeis.snd_symplO (S := S) (T := T) (x := d.extX T x) (y := d.extY T y)
    (Or.inl (_root_.GlobalTheory.MixModel.map_mul_eq_zero_left _ hx _))
  change _ * sndA D.host.F (symplO S T (d.extX T x) (d.extY T y)) = 0
  rw [h, mul_zero]

theorem bt_eq_pair (x : Mx D T.rank ρ) {y : Mx D T.rank ρ} (hy : y.map (infPart D) = 0) :
    bt d T x y = pairA D.host.F 0 (bt d T x y).2 := by
  have h := GlobalTheory.OrientedHeis.fst_symplO (S := S) (T := T) (x := d.extX T x) (y := d.extY T y)
    (Or.inr (_root_.GlobalTheory.MixModel.map_mul_eq_zero_left _ hy _))
  refine Prod.ext ?_ rfl
  change _ * fstA D.host.F (symplO S T (d.extX T x) (d.extY T y)) = 0
  rw [h, mul_zero]

theorem exists_section (D : D7) : ∃ s : Af D.host.F ⊗[D.host.F] D.host.E → AE D, Continuous s ∧
    ∀ z, finPart D (s z) = z := by
  obtain ⟨e, he, -, hc⟩ := GlobalTheory.AdSplit.exists_adele_equiv D.host.F D.host.E
  refine ⟨fun z => e.symm (0, z), hc.comp (continuous_const.prodMk continuous_id), fun z => ?_⟩
  have := (he (e.symm (0, z))).2
  rw [e.apply_symm_apply] at this
  exact this.symm

theorem exists_open_ann {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ) (Z : Set (Mx D T.rank ρ))
    {K : Set (Matrix (Fin T.rank) (Fin ρ) (Af D.host.F ⊗[D.host.F] D.host.E))} (hK : IsCompact K)
    (hZ : ∀ z ∈ Z, z.map (finPart D) ∈ K) :
    ∃ V : AddSubgroup (Mx D T.rank ρ), IsOpen (V : Set (Mx D T.rank ρ)) ∧
      ∀ b ∈ V, b.map (infPart D) = 0 → ∀ z ∈ Z, ψ (bt d T z b) = 1 := by
  haveI : IsModuleTopology (AF D.host.F) (AE D) := ⟨rfl⟩
  haveI : IsTopologicalRing (AE D) := IsModuleTopology.isTopologicalRing (AF D.host.F) (AE D)
  obtain ⟨s, hs, hsf⟩ := exists_section D
  have hadd : ∀ z a b, ψ (pairA D.host.F 0 (bt d T z (a + b)).2) =
      ψ (pairA D.host.F 0 (bt d T z a).2) * ψ (pairA D.host.F 0 (bt d T z b).2) := fun z a b => by
    rw [← AddChar.map_add_eq_mul, bt_add_right]
    congr 1
    exact Prod.ext (add_zero _).symm rfl
  have hzero : ∀ z, ψ (pairA D.host.F 0 (bt d T z 0).2) = 1 := fun z => by
    rw [bt_zero_right]; exact ψ.map_zero_eq_one
  let V : AddSubgroup (Mx D T.rank ρ) :=
    { carrier := {b | ∀ z ∈ Z, ψ (pairA D.host.F 0 (bt d T z b).2) = 1}
      zero_mem' := fun z _ => hzero z
      add_mem' := fun {a b} ha hb z hz => by rw [hadd, ha z hz, hb z hz, one_mul]
      neg_mem' := fun {a} ha z hz => by
        have := hadd z a (-a)
        rw [add_neg_cancel, hzero, ha z hz, one_mul] at this
        exact this.symm }
  refine ⟨V, V.isOpen_of_mem_nhds (g := 0) ?_, fun b hb h0 z hz => ?_⟩
  · have hK' : IsCompact ((fun k => k.map s) '' K) := hK.image (continuous_id.matrix_map hs)
    have hc : Continuous fun p : Mx D T.rank ρ × Mx D T.rank ρ => (bt d T p.2 p.1).2 :=
      continuous_snd.comp (GlobalTheory.OrientedHeis.continuous_symplOH (continuous_snd.matrix_mul continuous_const)
        (continuous_fst.matrix_mul continuous_const))
    have hev : ∀ᶠ b in 𝓝 (0 : Mx D T.rank ρ), ∀ z ∈ (fun k => k.map s) '' K,
        ψ (pairA D.host.F 0 (bt d T z b).2) = 1 := by
      refine hK'.eventually_forall_of_forall_eventually fun z _ => ?_
      exact hc.continuousAt.preimage_mem_nhds (x := (0, z)) (t := {a | ψ (pairA D.host.F 0 a) = 1})
        (by rw [bt_zero_right]; exact GlobalTheory.FinTranslate.ker_mem_nhds hψ.1 hψ.2.1)
    refine Filter.mem_of_superset hev fun b hb z hz => ?_
    have h1 := hb _ ⟨_, hZ z hz, rfl⟩
    have h2 : (z - (z.map (finPart D)).map s).map (finPart D) = 0 := by
      ext i j
      exact (RingHom.map_sub _ _ _).trans (sub_eq_zero.2 (hsf _).symm)
    have h3 : (bt d T z b).2 = (bt d T ((z.map (finPart D)).map s) b).2 := by
      have h4 := bt_add_left d T (z - (z.map (finPart D)).map s) ((z.map (finPart D)).map s) b
      rw [sub_add_cancel] at h4
      rw [h4]
      exact (congrArg (· + _) (snd_bt d T h2 b)).trans (zero_add _)
    rw [h3]; exact h1
  · rw [bt_eq_pair d T z h0]; exact hb z hz

variable {d T} {ψ : AddChar (AF D.host.F) ℂ} {φ : Mx D T.rank ρ → ℂ} {f : WO S T → ℂ}

theorem addChar_theta_law_rearrangement_identity {R : Type} [AddCommGroup R] (χ : AddChar R ℂ) (a b c e g h : R) (t : ℂ) (ha : χ a = 1) (hg : χ g = 1) :
    χ (-(a + b + (c + e))) * (χ (c + e + (g + h) + (c + e + (g + h))) * t) =
      χ (-(b - c)) * χ (-e) * (χ (e + h + (e + h)) * t) := by
  rw [← mul_assoc, ← mul_assoc]
  congr 1
  rw [← one_mul (χ _ * χ _ * χ _), ← hg, ← one_mul (χ _ * (χ _ * χ _ * χ _)), ← hg, ← one_mul (χ (-_) * χ _), ← ha]
  simp only [← AddChar.map_add_eq_mul]
  congr 1
  abel

theorem law (hψ : IsCharAF D.host.F ψ) (h0 : d.j0 = 0)
    (hf : ∀ w : WO S T, f w = ψ (-(bt d T (w ⬝ d.jX) (w ⬝ d.jY))) * ∑' ξ : Matrix (Fin T.rank) (Fin ρ) D.host.E,
      ψ (symplO S T (d.extX T (w ⬝ d.jX + rat ξ)) (d.extY T (w ⬝ d.jY))) * φ (w ⬝ d.jX + rat ξ))
    (γ : Matrix (Fin T.rank) (Fin S.rank) D.host.E) (w : WO S T) :
    f (rat γ + w) = ψ (-(symplOH S T (rat γ) w)) * f w := by
  have hX : (rat γ ⬝ d.jX : Mx D T.rank ρ) = rat (γ * d.e) := (rat_mul _ _).symm
  have hY : (rat γ ⬝ d.jY : Mx D T.rank ρ) = rat (γ * d.e') := (rat_mul _ _).symm
  rw [hf, hf, symplOH_coord d T h0, Matrix.add_mul, Matrix.add_mul, hX, hY]
  generalize γ * d.e = ξ₀
  generalize γ * d.e' = η₀
  generalize (w ⬝ d.jX : Mx D T.rank ρ) = x
  generalize (w ⬝ d.jY : Mx D T.rank ρ) = y
  rw [← mul_assoc, ← tsum_mul_left, ← tsum_mul_left]
  refine Eq.trans (tsum_congr fun ξ => ?_) ((Equiv.addLeft ξ₀).tsum_eq _)
  have e : rat ξ₀ + x + rat ξ = x + rat (Equiv.addLeft ξ₀ ξ) := by
    rw [Equiv.coe_addLeft, rat_add]; abel
  rw [e]
  generalize Equiv.addLeft ξ₀ ξ = ζ
  have h1 := psi_bt_rat d T hψ ξ₀ η₀
  have h2 := psi_bt_rat d T hψ ζ η₀
  simp only [symplO_bt, bt_add_left]
  simp only [bt_add_right]
  exact addChar_theta_law_rearrangement_identity ψ _ _ _ _ _ _ _ h1 h2

theorem level (hψ : IsCharAF D.host.F ψ) (h0 : d.j0 = 0) (hφ : GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ)
    (hf : ∀ w : WO S T, f w = ψ (-(bt d T (w ⬝ d.jX) (w ⬝ d.jY))) * ∑' ξ : Matrix (Fin T.rank) (Fin ρ) D.host.E,
      ψ (symplO S T (d.extX T (w ⬝ d.jX + rat ξ)) (d.extY T (w ⬝ d.jY))) * φ (w ⬝ d.jX + rat ξ)) :
    ∃ U : AddSubgroup (WO S T), IsOpen (U : Set (WO S T)) ∧
      ∀ u ∈ U, u.map (infPart D) = 0 → heisO ψ S T u f = f := by
  haveI : IsModuleTopology (AF D.host.F) (AE D) := ⟨rfl⟩
  haveI : IsTopologicalRing (AE D) := IsModuleTopology.isTopologicalRing (AF D.host.F) (AE D)
  obtain ⟨U, hU, hUφ⟩ := hφ.level
  obtain ⟨K, hK, hKφ⟩ := hφ.supp
  obtain ⟨V, hV, hVψ⟩ := exists_open_ann d T hψ {z | φ z ≠ 0} hK hKφ
  let rX : WO S T →+ Mx D T.rank ρ := AddMonoidHom.mk' (fun w => w ⬝ d.jX) fun _ _ => Matrix.add_mul _ _ _
  let rY : WO S T →+ Mx D T.rank ρ := AddMonoidHom.mk' (fun w => w ⬝ d.jY) fun _ _ => Matrix.add_mul _ _ _
  have cX : Continuous rX := continuous_id.matrix_mul continuous_const
  have cY : Continuous rY := continuous_id.matrix_mul continuous_const
  refine ⟨U.comap rX ⊓ V.comap rY, (hU.preimage cX).inter (hV.preimage cY), fun u hu hi => ?_⟩
  have ha := hUφ (u ⬝ d.jX) hu.1 (_root_.GlobalTheory.MixModel.map_mul_eq_zero_left _ hi _)
  have hb := hVψ (u ⬝ d.jY) hu.2 (_root_.GlobalTheory.MixModel.map_mul_eq_zero_left _ hi _)
  funext w
  rw [heisO, hf, hf, symplOH_coord d T h0, Matrix.add_mul, Matrix.add_mul]
  generalize (u ⬝ d.jX : Mx D T.rank ρ) = a at ha ⊢
  generalize (u ⬝ d.jY : Mx D T.rank ρ) = b at hb ⊢
  generalize (w ⬝ d.jX : Mx D T.rank ρ) = x
  generalize (w ⬝ d.jY : Mx D T.rank ρ) = y
  rw [← mul_assoc, ← tsum_mul_left, ← tsum_mul_left]
  refine tsum_congr fun ξ => ?_
  rw [add_right_comm x a, ha]
  generalize x + rat ξ = z
  by_cases hz : φ z = 0
  · simp only [hz, mul_zero]
  have h1 := hb z hz
  have h2 := hb (z + a) (by rwa [Set.mem_setOf_eq, ha])
  rw [← mul_assoc, ← mul_assoc]
  congr 1
  rw [← one_mul (ψ (-bt d T x y) * ψ _), ← h1, ← one_mul (ψ (bt d T z b) * _), ← h2]
  simp only [← AddChar.map_add_eq_mul, symplO_bt, bt_add_left, bt_add_right]
  congr 1
  abel

theorem law_and_level : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (A B : HSp D) (φ : Mx D B.rank A.rank → ℂ), GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ → ∀ f : WO (dblSp A) B → ℂ, (∀ w : WO (dblSp A) B, f w = ψ (-(symplOH (dblSp A) B ((dblDec A).extX B (HMul.hMul w (dblDec A).jX)) ((dblDec A).extY B (HMul.hMul w (dblDec A).jY)))) * ∑' ξ : Matrix (Fin B.rank) (Fin A.rank) D.host.E, ψ (symplO (dblSp A) B ((dblDec A).extX B (HMul.hMul w (dblDec A).jX + rat ξ)) ((dblDec A).extY B (HMul.hMul w (dblDec A).jY))) * φ (HMul.hMul w (dblDec A).jX + rat ξ)) → (∀ γ w, f (ratW B (dblSp A) γ + w) = ψ (-(symplOH (dblSp A) B (ratW B (dblSp A) γ) w)) * f w) ∧ ∃ U : AddSubgroup (WO (dblSp A) B), IsOpen (U : Set (WO (dblSp A) B)) ∧ ∀ u ∈ U, u.map (infPart D) = 0 → heisO ψ (dblSp A) B u f = f := by
  intro D ψ hψ A B φ hφ f hf
  have h0 : (dblDec A).j0 = 0 := rat_zero
  exact ⟨law hψ.1 h0 hf, level hψ.1 h0 hφ hf⟩

end GlobalTheory.ThetaSeriesLaw

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubledThetaSeriesLawAndLevel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubledThetaSeriesLawAndLevelStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubledThetaSeriesLawAndLevelStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SchwartzBruhatMixedFamilies\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixSDblDecZero\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubledThetaSeriesLawAndLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyEqOfIsPreconnected\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.HeckeFormNSOfHeckeForm\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IntegrandSZero\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexConjugate Matrix NNReal ENNReal
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.Cusp GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalVolumeLift (FinPl RealMat Lat IsFockVec IsSphOff HidaSetting volQ)
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalZero (ip delta swSec sZero IsKFinVec ThetaClause SectionClause CoefClause)
open GlobalTheory.Mem.Th (CptF)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Core.Rk.IP GlobalTheory.Core.Rk.SWLaw
open GlobalTheory.Core.Rk.SW
open scoped ContDiff


theorem _root_.GlobalTheory.T.doubled_theta_series_law_and_level : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (A B : HSp D) (φ : Mx D B.rank A.rank → ℂ), GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ → ∀ f : WO (dblSp A) B → ℂ, (∀ w : WO (dblSp A) B, f w = ψ (-(symplOH (dblSp A) B ((dblDec A).extX B (HMul.hMul w (dblDec A).jX)) ((dblDec A).extY B (HMul.hMul w (dblDec A).jY)))) * ∑' ξ : Matrix (Fin B.rank) (Fin A.rank) D.host.E, ψ (symplO (dblSp A) B ((dblDec A).extX B (HMul.hMul w (dblDec A).jX + rat ξ)) ((dblDec A).extY B (HMul.hMul w (dblDec A).jY))) * φ (HMul.hMul w (dblDec A).jX + rat ξ)) → (∀ γ w, f (ratW B (dblSp A) γ + w) = ψ (-(symplOH (dblSp A) B (ratW B (dblSp A) γ) w)) * f w) ∧ ∃ U : AddSubgroup (WO (dblSp A) B), IsOpen (U : Set (WO (dblSp A) B)) ∧ ∀ u ∈ U, u.map (infPart D) = 0 → heisO ψ (dblSp A) B u f = f := by
  first | exact @GlobalTheory.ThetaSeriesLaw.law_and_level
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubledThetaSeriesLawAndLevelStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatAdelicMatrixClosedDerivLinearAdd =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatAdelicMatrixClosedDerivLinearAdd", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SchwartzBruhatMixedFamilies\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.CovolOneIntegralAdd\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.IsTopologicalRingAE\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SphericalVolumeLift\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SphericalZero\nimport Development.AbelianVarietyTheory.Definitions.Foundations.AestronglyMeasurableQuotMeasureIffLift\nimport Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyEqOfIsPreconnected\nimport Development.AbelianVarietyTheory.Definitions.Foundations.IsIwasawaOfIsCompact\nimport Development.AbelianVarietyTheory.Definitions.Foundations.WittIndexEqZeroIff\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.HeckeFormNSOfHeckeForm\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IntegrandSZero\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixSDblDecZero\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexConjugate Matrix NNReal ENNReal
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.Cusp GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalVolumeLift (FinPl RealMat Lat IsFockVec IsSphOff HidaSetting volQ)
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalZero (ip delta swSec sZero IsKFinVec ThetaClause SectionClause CoefClause)
open GlobalTheory.Mem.Th (CptF)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Core.Rk.IP GlobalTheory.Core.Rk.SWLaw
open GlobalTheory.Core.Rk.SW
open scoped ContDiff

namespace GlobalTheory.SchwartzDeriv

section General

variable {X : Type} [AddCommGroup X] [TopologicalSpace X] [IsTopologicalAddGroup X] [T2Space X]

theorem addHom_eq_zero (F : Type) [DivisionRing F] [CharZero F] [Module F X] (h : ℝ →+ X) (hc : Continuous h) {b : ℝ}
    (hb : b ≠ 0) (h0 : h b = 0) (t : ℝ) : h t = 0 := by

  have hq : ∀ q : ℚ, h ((q : ℝ) * b) = 0 := by
    intro q
    have hn : (q.den : F) ≠ 0 := Nat.cast_ne_zero.mpr q.den_nz
    have hnum : (q.den : ℝ) * ((q : ℝ) * b) = (q.num : ℝ) * b := by
      rw [← mul_assoc]
      congr 1
      have : ((q.den : ℚ) * q : ℚ) = q.num := by rw [mul_comm]; exact Rat.mul_den_eq_num q
      exact_mod_cast this
    have h1 : q.den • h ((q : ℝ) * b) = 0 := by
      rw [← map_nsmul, nsmul_eq_mul, hnum, ← zsmul_eq_mul, map_zsmul, h0, smul_zero]
    have h2 : h ((q : ℝ) * b) = (q.den : F)⁻¹ • ((q.den : F) • h ((q : ℝ) * b)) := by
      rw [smul_smul, inv_mul_cancel₀ hn, one_smul]
    rw [h2, Nat.cast_smul_eq_nsmul, h1, smul_zero]
  have hsurj : Function.Surjective fun y : ℝ => y * b := fun y => ⟨y / b, div_mul_cancel₀ y hb⟩
  have hdense : DenseRange fun q : ℚ => (q : ℝ) * b :=
    hsurj.denseRange.comp Rat.denseRange_cast (continuous_mul_const b)
  exact hdense.induction_on t (isClosed_eq hc continuous_const) hq

theorem hasDerivAt_line {E : Type} [NormedAddCommGroup E] [NormedSpace ℝ E] (G : SchwartzMap E ℂ) (c s : E) :
    HasDerivAt (fun t : ℝ => G (s + t • c)) ((LineDeriv.lineDerivOp c G : SchwartzMap E ℂ) s) 0 := by
  have h1 : HasDerivAt (fun t : ℝ => s + t • c) c 0 := by
    simpa using ((hasDerivAt_id (0 : ℝ)).smul_const c).const_add s
  have h2 : HasFDerivAt (G : E → ℂ) (fderiv ℝ (G : E → ℂ) (s + (0 : ℝ) • c)) (s + (0 : ℝ) • c) :=
    G.differentiableAt.hasFDerivAt
  have h3 := h2.comp_hasDerivAt (0 : ℝ) h1
  simp only [zero_smul, add_zero] at h3
  rw [SchwartzMap.lineDerivOp_apply_eq_fderiv]
  exact h3

theorem exists_schwartz_deriv (F : Type) [DivisionRing F] [CharZero F] [Module F X] (P : X → Prop)
    (hP : ∀ a b, P a → P b → P (a + b)) (φ : X → ℂ)
    (hφ : ∀ (k : ℕ) (L : (Fin k → ℝ) →+ X), (Continuous L ∧ ∀ t, P (L t)) → Function.Injective L →
      ∀ x, ∃ g : SchwartzMap (Fin k → ℝ) ℂ, ∀ t, g t = φ (x + L t))
    (M : ℝ →+ X) (hM : Continuous M) (hMP : ∀ t, P (M t)) {k : ℕ} (L : (Fin k → ℝ) →+ X)
    (hL : Continuous L ∧ ∀ t, P (L t)) (hi : Function.Injective L) (x : X) :
    ∃ g : SchwartzMap (Fin k → ℝ) ℂ, ∀ s, HasDerivAt (fun t : ℝ => φ (x + L s + M t)) (g s) 0 := by
  obtain ⟨hLc, hLP⟩ := hL

  let A : (Fin (k + 1) → ℝ) →+ (Fin k → ℝ) :=
    (LinearMap.funLeft ℝ ℝ (Fin.castSucc : Fin k → Fin (k + 1))).toAddMonoidHom
  let B : (Fin (k + 1) → ℝ) →+ ℝ := Pi.evalAddMonoidHom (fun _ => ℝ) (Fin.last k)
  let L' : (Fin (k + 1) → ℝ) →+ X := L.comp A + M.comp B
  have hA : Continuous A := continuous_pi fun i => continuous_apply _
  have hB : Continuous B := continuous_apply _
  have hL'c : Continuous L' := (hLc.comp hA).add (hM.comp hB)
  have hL'P : ∀ u, P (L' u) := fun u => hP _ _ (hLP _) (hMP _)
  have hL'apply : ∀ u, L' u = L (fun i => u (Fin.castSucc i)) + M (u (Fin.last k)) := fun u => rfl
  by_cases hinj : Function.Injective L'
  ·
    obtain ⟨H, hH⟩ := hφ (k + 1) L' ⟨hL'c, hL'P⟩ hinj x
    let e : Fin (k + 1) → ℝ := Pi.single (Fin.last k) 1
    let j : (Fin k → ℝ) →L[ℝ] (Fin (k + 1) → ℝ) :=
      ContinuousLinearMap.pi (Fin.lastCases (motive := fun _ => (Fin k → ℝ) →L[ℝ] ℝ) 0
        fun i => ContinuousLinearMap.proj i)
    have hj_cs : ∀ s i, j s (Fin.castSucc i) = s i := by intro s i; simp [j]
    have hj_last : ∀ s, j s (Fin.last k) = 0 := by intro s; simp [j]
    have hup : ∃ (n : ℕ) (C : ℝ), ∀ s, ‖s‖ ≤ C * (1 + ‖j s‖) ^ n := by
      refine ⟨1, 1, fun s => ?_⟩
      rw [one_mul, pow_one]
      refine (pi_norm_le_iff_of_nonneg (by positivity)).2 fun i => ?_
      calc ‖s i‖ = ‖j s (Fin.castSucc i)‖ := by rw [hj_cs]
        _ ≤ ‖j s‖ := norm_le_pi_norm _ _
        _ ≤ 1 + ‖j s‖ := by linarith
    refine ⟨SchwartzMap.compCLM ℝ j.hasTemperateGrowth hup (LineDeriv.lineDerivOp e H), fun s => ?_⟩
    have hd := hasDerivAt_line H e (j s)
    have heq : (fun t : ℝ => H (j s + t • e)) = fun t => φ (x + L s + M t) := by
      funext t
      have e1 : (fun i => (j s + t • e) (Fin.castSucc i)) = s := by
        funext i
        simp [e, hj_cs, Fin.castSucc_ne_last]
      have e2 : (j s + t • e) (Fin.last k) = t := by simp [e, hj_last]
      rw [hH, hL'apply, e1, e2, add_assoc]
    rw [heq] at hd
    exact hd
  ·
    obtain ⟨u, hu, hu0⟩ : ∃ u, L' u = 0 ∧ u ≠ 0 := by
      rw [injective_iff_map_eq_zero] at hinj
      push Not at hinj
      exact hinj
    rw [hL'apply] at hu
    have ht0 : u (Fin.last k) ≠ 0 := by
      intro h
      rw [h, map_zero, add_zero] at hu
      have hs : (fun i => u (Fin.castSucc i)) = 0 := hi (by rw [hu, map_zero])
      apply hu0
      funext i
      refine Fin.lastCases ?_ (fun i => ?_) i
      · exact h
      · exact congrFun hs i
    let v : Fin k → ℝ := -((u (Fin.last k))⁻¹ • fun i => u (Fin.castSucc i))
    let Lv : ℝ →+ (Fin k → ℝ) := AddMonoidHom.mk' (fun t => t • v) fun a b => add_smul a b v
    have hMv : ∀ t, M t = L (t • v) := by
      intro t
      have h1 := addHom_eq_zero F (M - L.comp Lv)
        (hM.sub (hLc.comp (continuous_id.smul continuous_const))) ht0 ?_ t
      · simpa [sub_eq_zero, Lv] using h1
      · simp only [AddMonoidHom.sub_apply, AddMonoidHom.comp_apply, AddMonoidHom.mk'_apply, Lv, v, smul_neg,
          smul_smul, mul_inv_cancel₀ ht0, one_smul, map_neg, sub_neg_eq_add]
        rw [add_comm]
        exact hu
    obtain ⟨G, hG⟩ := hφ k L ⟨hLc, hLP⟩ hi x
    refine ⟨LineDeriv.lineDerivOp v G, fun s => ?_⟩
    have hd := hasDerivAt_line G v s
    have heq : (fun t : ℝ => G (s + t • v)) = fun t => φ (x + L s + M t) := by
      funext t
      rw [hG, hMv, map_add (f := _), add_assoc]
    rw [heq] at hd
    exact hd

end General

open GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies

variable {D : D7} {m n : ℕ}

theorem isSchwartzBruhat_add {φ φ' : Mx D m n → ℂ} (h : IsSchwartzBruhat φ) (h' : IsSchwartzBruhat φ') :
    IsSchwartzBruhat (φ + φ') := by
  refine { level := ?_, supp := ?_, schwartz := ?_ }
  · obtain ⟨U, hU, hφU⟩ := h.level
    obtain ⟨U', hU', hφU'⟩ := h'.level
    refine ⟨U ⊓ U', ?_, fun u hu hu0 x => ?_⟩
    · change IsOpen ((U : Set (Mx D m n)) ∩ (U' : Set (Mx D m n)))
      exact hU.inter hU'
    · have hu' := AddSubgroup.mem_inf.mp hu
      simp [hφU u hu'.1 hu0 x, hφU' u hu'.2 hu0 x]
  · obtain ⟨K, hK, hφK⟩ := h.supp
    obtain ⟨K', hK', hφK'⟩ := h'.supp
    refine ⟨K ∪ K', hK.union hK', fun x hx => ?_⟩
    by_cases h1 : φ x = 0
    · have h2 : φ' x ≠ 0 := by simpa [h1] using hx
      exact Or.inr (hφK' x h2)
    · exact Or.inl (hφK x h1)
  · intro k L hL hi x
    obtain ⟨g, hg⟩ := h.schwartz k L hL hi x
    obtain ⟨g', hg'⟩ := h'.schwartz k L hL hi x
    exact ⟨g + g', fun t => by simp [hg, hg']⟩

theorem isSchwartzBruhat_linear_mul {φ : Mx D m n → ℂ} (h : IsSchwartzBruhat φ) (ℓ : Mx D m n →+ ℂ) (hc : Continuous ℓ)
    (h0 : ∀ u : Mx D m n, u.map (infPart D) = 0 → ℓ u = 0) : IsSchwartzBruhat fun x => ℓ x * φ x := by
  refine { level := ?_, supp := ?_, schwartz := ?_ }
  · obtain ⟨U, hU, hφU⟩ := h.level
    refine ⟨U, hU, fun u hu hu0 x => ?_⟩
    show ℓ (x + u) * φ (x + u) = ℓ x * φ x
    rw [map_add (f := _), h0 u hu0, add_zero, hφU u hu hu0 x]
  · obtain ⟨K, hK, hφK⟩ := h.supp
    exact ⟨K, hK, fun x hx => hφK x (right_ne_zero_of_mul hx)⟩
  · intro k L hL hi x
    obtain ⟨g, hg⟩ := h.schwartz k L hL hi x

    let A : (Fin k → ℝ) →L[ℝ] ℂ := (ℓ.comp L).toRealLinearMap (hc.comp hL.1)
    have ht : (fun t => ℓ x + A t).HasTemperateGrowth := by fun_prop
    refine ⟨SchwartzMap.smulLeftCLM ℂ (fun t => ℓ x + A t) g, fun t => ?_⟩
    rw [SchwartzMap.smulLeftCLM_apply_apply ht, hg]
    simp [A, smul_eq_mul]

theorem exists_isSchwartzBruhat_deriv {φ : Mx D m n → ℂ} (h : IsSchwartzBruhat φ) (M : ℝ →+ Mx D m n) (hM : Continuous M)
    (hM0 : ∀ t, (M t).map (finPart D) = 0) :
    ∃ φ', IsSchwartzBruhat φ' ∧ ∀ x, HasDerivAt (fun t : ℝ => φ (x + M t)) (φ' x) 0 := by
  have : T2Space (Mx D m n) := (lattice_Mx D m n).2.2.2.1
  have hP : ∀ a b : Mx D m n, a.map (finPart D) = 0 → b.map (finPart D) = 0 → (a + b).map (finPart D) = 0 := by
    intro a b ha hb
    rw [Matrix.map_add _ (map_add _), ha, hb, add_zero]

  have hdiff : ∀ y, HasDerivAt (fun t : ℝ => φ (y + M t)) (deriv (fun t : ℝ => φ (y + M t)) 0) 0 := by
    intro y
    obtain ⟨g, hg⟩ := exists_schwartz_deriv D.host.F (fun u : Mx D m n => u.map (finPart D) = 0) hP φ h.schwartz
      M hM hM0 (k := 0) 0 ⟨continuous_const, fun t => by simp⟩ (fun a b _ => Subsingleton.elim a b) y
    have hg0 := hg 0
    simp only [AddMonoidHom.zero_apply, add_zero] at hg0
    exact hg0.differentiableAt.hasDerivAt
  refine ⟨fun x => deriv (fun t : ℝ => φ (x + M t)) 0, ⟨?_, ?_, ?_⟩, hdiff⟩
  · obtain ⟨U, hU, hφU⟩ := h.level
    refine ⟨U, hU, fun u hu hu0 x => ?_⟩
    simp only [add_right_comm x u, hφU u hu hu0]
  · obtain ⟨K, hK, hφK⟩ := h.supp
    refine ⟨K, hK, fun x hx => ?_⟩
    by_contra hxK
    apply hx
    have hz : (fun t : ℝ => φ (x + M t)) = fun _ => 0 := by
      funext t
      by_contra ht
      apply hxK
      have := hφK _ ht
      rwa [Matrix.map_add _ (map_add _), hM0, add_zero] at this
    simp only [hz, deriv_const]
  · intro k L hL hi x
    obtain ⟨g, hg⟩ := exists_schwartz_deriv D.host.F (fun u : Mx D m n => u.map (finPart D) = 0) hP φ h.schwartz
      M hM hM0 L hL hi x
    exact ⟨g, fun s => (hg s).deriv.symm⟩

theorem isSchwartzBruhat_closed : ∀ (D : D7) (m n : ℕ) (φ : Mx D m n → ℂ), GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ → (∀ M : ℝ →+ Mx D m n, Continuous M → (∀ t, (M t).map (finPart D) = 0) → ∃ φ', GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ' ∧ ∀ x, HasDerivAt (fun t : ℝ => φ (x + M t)) (φ' x) 0) ∧ (∀ ℓ : Mx D m n →+ ℂ, Continuous ℓ → (∀ u : Mx D m n, u.map (infPart D) = 0 → ℓ u = 0) → GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat fun x => ℓ x * φ x) ∧ ∀ φ', GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ' → GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat (φ + φ') := fun _ _ _ _ hφ =>
  ⟨fun M hM hM0 => exists_isSchwartzBruhat_deriv hφ M hM hM0, fun ℓ hc h0 => isSchwartzBruhat_linear_mul hφ ℓ hc h0,
    fun _ h' => isSchwartzBruhat_add hφ h'⟩

end GlobalTheory.SchwartzDeriv
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatAdelicMatrixClosedDerivLinearAdd =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatAdelicMatrixClosedDerivLinearAddStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatAdelicMatrixClosedDerivLinearAddStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SchwartzBruhatMixedFamilies\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatAdelicMatrixClosedDerivLinearAdd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SphericalVolumeLift\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SphericalZero\nimport Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyEqOfIsPreconnected\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.HeckeFormNSOfHeckeForm\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IntegrandSZero\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixSDblDecZero\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexConjugate Matrix NNReal ENNReal
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.Cusp GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalVolumeLift (FinPl RealMat Lat IsFockVec IsSphOff HidaSetting volQ)
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalZero (ip delta swSec sZero IsKFinVec ThetaClause SectionClause CoefClause)
open GlobalTheory.Mem.Th (CptF)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Core.Rk.IP GlobalTheory.Core.Rk.SWLaw
open GlobalTheory.Core.Rk.SW
open scoped ContDiff


theorem _root_.GlobalTheory.T.isSchwartzBruhatAdelicMatrix_closed_deriv_linear_add : ∀ (D : D7) (m n : ℕ) (φ : Mx D m n → ℂ), GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ → (∀ M : ℝ →+ Mx D m n, Continuous M → (∀ t, (M t).map (finPart D) = 0) → ∃ φ', GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ' ∧ ∀ x, HasDerivAt (fun t : ℝ => φ (x + M t)) (φ' x) 0) ∧ (∀ ℓ : Mx D m n →+ ℂ, Continuous ℓ → (∀ u : Mx D m n, u.map (infPart D) = 0 → ℓ u = 0) → GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat fun x => ℓ x * φ x) ∧ ∀ φ', GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ' → GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat (φ + φ') := by
  first | exact @GlobalTheory.SchwartzDeriv.isSchwartzBruhat_closed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatAdelicMatrixClosedDerivLinearAddStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HasDerivAtHeisenbergThetaSeries =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HasDerivAtHeisenbergThetaSeries", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SchwartzBruhatMixedFamilies\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixSDblDecZero\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.HasDerivAtZeroAndIsTheta\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsSummableBoundSchwartzMajorantRationalTransStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatAdelicMatrixClosedDerivLinearAddStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchwartzBruhatAdelicMatrixContinuousLeMajorantStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Calculus.SmoothSeries\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyEqOfIsPreconnected\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.HeckeFormNSOfHeckeForm\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IntegrandSZero\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.RealSizeNonneg\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.RationalPointsFinitePartSelfDualLatticeIff\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexConjugate Matrix NNReal ENNReal
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.Cusp GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalVolumeLift (FinPl RealMat Lat IsFockVec IsSphOff HidaSetting volQ)
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalZero (ip delta swSec sZero IsKFinVec ThetaClause SectionClause CoefClause)
open GlobalTheory.Mem.Th (CptF)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Core.Rk.IP GlobalTheory.Core.Rk.SWLaw
open GlobalTheory.Core.Rk.SW
open scoped ContDiff

noncomputable section

namespace GlobalTheory.Core.Rk.OntoDer

theorem hasDerivAt_term {G : Type} [AddCommGroup G] (a : ℝ →+ G) (p : G →+ ℂ) (κ : ℂ) (hκ : ∀ t : ℝ, p (a t) = t * κ)
    (φ φ₁ : G → ℂ) (hφ : ∀ x, HasDerivAt (fun t : ℝ => φ (x + a t)) (φ₁ x) 0) (u : G) (s : ℝ) :
    HasDerivAt (fun t : ℝ => Complex.exp (t * p (a t) + t * p u + t * p u) * φ (u + a t))
      (Complex.exp (s * p (a s) + s * p u + s * p u) * ((p + p) (u + a s) * φ (u + a s) + φ₁ (u + a s))) s := by
  have h1 : HasDerivAt (fun t : ℝ => φ (u + a t)) (φ₁ (u + a s)) s := by
    have h := hφ (u + a s)
    rw [← sub_self s] at h
    have h' := HasDerivAt.comp_sub_const s s h
    refine h'.congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
    show φ (u + a t) = φ (u + a s + a (t - s))
    rw [map_sub, add_assoc, add_sub_cancel]
  have h0 : HasDerivAt (fun t : ℝ => (t : ℂ)) 1 s := Complex.ofRealCLM.hasDerivAt
  have h2 := (((h0.mul (h0.mul_const κ)).add (h0.mul_const (p u))).add (h0.mul_const (p u))).cexp
  have h3 := h2.mul h1
  simp only [hκ]
  refine h3.congr_deriv ?_
  simp only [AddMonoidHom.add_apply, map_add (f := _), hκ, Pi.add_apply, Pi.mul_apply]
  ring

variable {D : D7}

theorem phase_identity {S S₀ T : HSp D} {ρ : ℕ} (d : HypDec S S₀ ρ) (x y a b ξ : Mx D T.rank ρ) :
    symplOH S T (d.extX T x + d.extY T y) (d.extX T a + d.extY T b) +
        (-(symplOH S T (d.extX T (x + a)) (d.extY T (y + b)))) + symplO S T (d.extX T (x + a + ξ)) (d.extY T (y + b)) =
      -(symplOH S T (d.extX T x) (d.extY T y)) + symplO S T (d.extX T (x + ξ)) (d.extY T y) +
        (symplOH S T (d.extX T a) (d.extY T b) + symplOH S T (d.extX T (x + ξ)) (d.extY T b) +
          symplOH S T (d.extX T (x + ξ)) (d.extY T b)) := by
  simp only [GlobalTheory.RatSelfDual.symplO_eq_add, map_add (f := _), GlobalTheory.WeilVacMove.symplOH_add_left, GlobalTheory.WeilVacMove.symplOH_add_right,
    HypDec.symplOH_extX_extX, HypDec.symplOH_extY_extY,
    GlobalTheory.WeilVacMove.symplOH_skew S T (d.extX T a) (d.extY T y)]
  ring

theorem eq_ext (A B : HSp D) (w : WO (dblSp A) B) :
    w = (dblDec A).extX B (HMul.hMul w (dblDec A).jX) + (dblDec A).extY B (HMul.hMul w (dblDec A).jY) := by
  have h0 : HMul.hMul (dblDec A).j0 (dblDec A).p0 = (0 : Mx D (dblSp A).rank (dblSp A).rank) := by
    ext i j
    rw [Matrix.mul_apply]
    exact Finset.sum_eq_zero fun k _ => Fin.elim0 k
  have h := (dblDec A).sum_eq_one
  rw [h0, add_zero] at h
  rw [HypDec.extX_apply, HypDec.extY_apply, Matrix.mul_assoc, Matrix.mul_assoc, ← Matrix.mul_add, h, Matrix.mul_one]

def mulLine {m n k : ℕ} (M : ℝ →+ Mx D m n) (j : Mx D n k) : ℝ →+ Mx D m k where
  toFun t := HMul.hMul (M t) j
  map_zero' := by rw [map_zero, Matrix.zero_mul]
  map_add' s t := by rw [map_add (f := _), Matrix.add_mul]

theorem continuous_mulLine {m n k : ℕ} {M : ℝ →+ Mx D m n} (hM : Continuous M) (j : Mx D n k) :
    Continuous (mulLine M j) := hM.matrix_mul continuous_const

theorem map_mul_zero {m n k : ℕ} {R : Type} [CommRing R] (q : AE D →+* R) {u : Mx D m n} (hu : u.map q = 0)
    (j : Mx D n k) : (HMul.hMul u j : Mx D m k).map q = 0 := by
  rw [Matrix.map_mul, hu, Matrix.zero_mul]

theorem exists_summable_bound {θ : InfFam D} (hθ : IsInfFam θ) {m n : ℕ} {φ : Mx D m n → ℂ}
    (hφ : GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ) {Q : Set (Mx D m n)} (hQ : IsCompact Q) :
    ∃ b : Matrix (Fin m) (Fin n) D.host.E → ℝ, Summable b ∧ ∀ x ∈ Q, ∀ ξ, ‖φ (x + rat ξ)‖ ≤ b ξ := by
  obtain ⟨N, hN⟩ := GlobalTheory.T.exists_summable_bound_schwartz_majorant_rational_translates D θ hθ m n
  obtain ⟨-, K, hK, hC⟩ := GlobalTheory.T.schwartzBruhatAdelicMatrix_continuous_le_majorant D θ hθ m n φ hφ
  obtain ⟨C, hC⟩ := hC N
  obtain ⟨b, hb, hb'⟩ := hN K Q hK hQ
  refine ⟨fun ξ => |C| * b ξ, hb.mul_left _, fun x hx ξ => (hC _).trans ?_⟩
  exact mul_le_mul (le_abs_self C) (hb' x hx ξ) (GlobalTheory.Unf.maj_nonneg _ _ _ _) (abs_nonneg C)



theorem hasDerivAt_heisO_thetaSeries : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (A B : HSp D) (φ : Mx D B.rank A.rank → ℂ), GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ → ∀ f : WO (dblSp A) B → ℂ, (∀ w : WO (dblSp A) B, f w = ψ (-(symplOH (dblSp A) B ((dblDec A).extX B (HMul.hMul w (dblDec A).jX)) ((dblDec A).extY B (HMul.hMul w (dblDec A).jY)))) * ∑' ξ : Matrix (Fin B.rank) (Fin A.rank) D.host.E, ψ (symplO (dblSp A) B ((dblDec A).extX B (HMul.hMul w (dblDec A).jX + rat ξ)) ((dblDec A).extY B (HMul.hMul w (dblDec A).jY))) * φ (HMul.hMul w (dblDec A).jX + rat ξ)) → ∀ M : ℝ →+ WO (dblSp A) B, Continuous M → (∀ t, (M t).map (finPart D) = 0) → ∃ φ' : Mx D B.rank A.rank → ℂ, GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ' ∧ ∀ f' : WO (dblSp A) B → ℂ, (∀ w : WO (dblSp A) B, f' w = ψ (-(symplOH (dblSp A) B ((dblDec A).extX B (HMul.hMul w (dblDec A).jX)) ((dblDec A).extY B (HMul.hMul w (dblDec A).jY)))) * ∑' ξ : Matrix (Fin B.rank) (Fin A.rank) D.host.E, ψ (symplO (dblSp A) B ((dblDec A).extX B (HMul.hMul w (dblDec A).jX + rat ξ)) ((dblDec A).extY B (HMul.hMul w (dblDec A).jY))) * φ' (HMul.hMul w (dblDec A).jX + rat ξ)) → ∀ w, HasDerivAt (fun t : ℝ => heisO ψ (dblSp A) B (M t) f w) (f' w) 0 := by
  intro D ψ hψ A B φ hφ f hf M hM hM0
  obtain ⟨θ, hθ⟩ := hψ.2.1
  obtain ⟨lam, hl, hlam⟩ := GlobalTheory.WeilVacMove.exists_log hψ
  have hn : ∀ z, ‖ψ z‖ = 1 := hψ.1.2.1
  haveI : IsTopologicalAddGroup (AE D) := IsTopologicalRing.to_topologicalAddGroup
  let d := dblDec A
  let a : ℝ →+ Mx D B.rank A.rank := mulLine M d.jX
  let b : ℝ →+ Mx D B.rank A.rank := mulLine M d.jY
  let L : ℝ →+ WO (dblSp A) B := mulLine b d.pY
  have ha : Continuous a := continuous_mulLine hM _
  have hL : Continuous L := continuous_mulLine (continuous_mulLine hM _) _
  have ha0 : ∀ t, (a t).map (finPart D) = 0 := fun t => map_mul_zero _ (hM0 t) _
  have hL0 : ∀ t, (L t).map (finPart D) = 0 := fun t => map_mul_zero _ (map_mul_zero _ (hM0 t) _) _
  let p : Mx D B.rank A.rank →+ ℂ := (GlobalTheory.WeilVacMove.phase lam (dblSp A) B (L 1)).comp (d.extX B)
  have hX : Continuous (d.extX B) := continuous_id.matrix_mul continuous_const
  have hp : Continuous p := hl.comp (GlobalTheory.WeilVacMove.continuous_symplOH (dblSp A) B hX continuous_const)
  have hp0 : ∀ u : Mx D B.rank A.rank, u.map (infPart D) = 0 → p u = 0 := fun u hu => by
    show lam (symplOH (dblSp A) B (d.extX B u) (L 1)) = 0
    rw [(GlobalTheory.WeilVacMove.symplOH_fin_real (dblSp A) B (d.extX B u) (L 1) (map_mul_zero _ hu _) (hL0 1)).1, map_zero]
  have hψp : ∀ (u : Mx D B.rank A.rank) (t : ℝ),
      ψ (symplOH (dblSp A) B (d.extX B u) (d.extY B (b t))) = Complex.exp (t * p u) := fun u t =>
    GlobalTheory.WeilVacMove.psi_sympl_line hl hlam hL hL0 (d.extX B u) t
  have hκ : ∀ t : ℝ, p (a t) = t * p (a 1) := fun t =>
    GlobalTheory.WeilVacMove.additive_real (p.comp a) (hp.comp ha) t
  obtain ⟨hd, hm, hadd⟩ := GlobalTheory.T.isSchwartzBruhatAdelicMatrix_closed_deriv_linear_add D _ _ φ hφ
  obtain ⟨φ₁, hφ₁, hder⟩ := hd a ha ha0
  have hℓ := hm (p + p) (hp.add hp) fun u hu => by rw [AddMonoidHom.add_apply, hp0 u hu, add_zero]
  have hφ' := (GlobalTheory.T.isSchwartzBruhatAdelicMatrix_closed_deriv_linear_add D _ _ _ hℓ).2.2 φ₁ hφ₁
  refine ⟨_, hφ', fun f' hf' w => ?_⟩
  set φ' : Mx D B.rank A.rank → ℂ := (fun x => (p + p) x * φ x) + φ₁ with hφ'def
  let x : Mx D B.rank A.rank := HMul.hMul w d.jX
  let y : Mx D B.rank A.rank := HMul.hMul w d.jY
  let c : Matrix (Fin B.rank) (Fin A.rank) D.host.E → ℂ := fun ξ =>
    ψ (symplO (dblSp A) B (d.extX B (x + rat ξ)) (d.extY B y))
  let e : Matrix (Fin B.rank) (Fin A.rank) D.host.E → ℝ → ℂ := fun ξ t =>
    Complex.exp (t * p (a t) + t * p (x + rat ξ) + t * p (x + rat ξ))
  have he : ∀ ξ t, e ξ t = ψ (symplOH (dblSp A) B (d.extX B (a t)) (d.extY B (b t)) +
      symplOH (dblSp A) B (d.extX B (x + rat ξ)) (d.extY B (b t)) +
      symplOH (dblSp A) B (d.extX B (x + rat ξ)) (d.extY B (b t))) := fun ξ t => by
    rw [AddChar.map_add_eq_mul, AddChar.map_add_eq_mul, hψp, hψp, ← Complex.exp_add, ← Complex.exp_add]
  have he0 : ∀ ξ, e ξ 0 = 1 := fun ξ => by simp [e]
  have hform : ∀ t, heisO ψ (dblSp A) B (M t) f w =
      ψ (-(symplOH (dblSp A) B (d.extX B x) (d.extY B y))) * ∑' ξ, c ξ * (e ξ t * φ (x + rat ξ + a t)) := by
    intro t
    have e1 : HMul.hMul (w + M t) (dblDec A).jX = x + a t := Matrix.add_mul _ _ _
    have e2 : HMul.hMul (w + M t) (dblDec A).jY = y + b t := Matrix.add_mul _ _ _
    have e3 : symplOH (dblSp A) B w (M t) =
        symplOH (dblSp A) B (d.extX B x + d.extY B y) (d.extX B (a t) + d.extY B (b t)) :=
      congrArg₂ (symplOH (dblSp A) B) (eq_ext A B w) (eq_ext A B (M t))
    rw [heisO, hf, e1, e2, e3, ← mul_assoc, ← tsum_mul_left, ← tsum_mul_left]
    refine tsum_congr fun ξ => ?_
    rw [he, add_right_comm x (rat ξ) (a t), ← mul_assoc, ← mul_assoc, ← mul_assoc, ← AddChar.map_add_eq_mul,
      ← AddChar.map_add_eq_mul, ← AddChar.map_add_eq_mul, ← AddChar.map_add_eq_mul, phase_identity]
  have hQ : IsCompact ((fun t : ℝ => x + a t) '' Set.Icc (-1) 1) :=
    isCompact_Icc.image (continuous_const.add ha)
  obtain ⟨u, hu, hu'⟩ := exists_summable_bound hθ hφ' hQ
  obtain ⟨v, hv, hv'⟩ := exists_summable_bound hθ hφ (isCompact_singleton (x := x))
  have key := hasDerivAt_tsum_of_isPreconnected (t := Set.Ioo (-1 : ℝ) 1) (y₀ := (0 : ℝ)) (y := (0 : ℝ))
    (g := fun ξ t => c ξ * (e ξ t * φ (x + rat ξ + a t)))
    (g' := fun ξ t => c ξ * (e ξ t * φ' (x + rat ξ + a t))) hu isOpen_Ioo isPreconnected_Ioo
    (fun ξ t _ => (hasDerivAt_term a p _ hκ φ φ₁ hder (x + rat ξ) t).const_mul (c ξ))
    (fun ξ t ht => by
      rw [norm_mul, norm_mul, he, hn, hn, one_mul, one_mul, add_right_comm]
      exact hu' _ ⟨t, Set.Ioo_subset_Icc_self ht, rfl⟩ ξ)
    (by norm_num)
    (Summable.of_norm_bounded hv fun ξ => by
      rw [norm_mul, norm_mul, he, hn, hn, one_mul, one_mul, map_zero, add_zero]
      exact hv' x rfl ξ)
    (by norm_num)
  simp only [he0, map_zero, add_zero, one_mul] at key
  rw [hf', funext hform]
  exact key.const_mul _

end GlobalTheory.Core.Rk.OntoDer

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HasDerivAtHeisenbergThetaSeries =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HasDerivAtHeisenbergThetaSeriesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HasDerivAtHeisenbergThetaSeriesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SchwartzBruhatMixedFamilies\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixSDblDecZero\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HasDerivAtHeisenbergThetaSeries\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyEqOfIsPreconnected\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.HeckeFormNSOfHeckeForm\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IntegrandSZero\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexConjugate Matrix NNReal ENNReal
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.Cusp GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalVolumeLift (FinPl RealMat Lat IsFockVec IsSphOff HidaSetting volQ)
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalZero (ip delta swSec sZero IsKFinVec ThetaClause SectionClause CoefClause)
open GlobalTheory.Mem.Th (CptF)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Core.Rk.IP GlobalTheory.Core.Rk.SWLaw
open GlobalTheory.Core.Rk.SW
open scoped ContDiff


theorem _root_.GlobalTheory.T.hasDerivAt_heisenberg_thetaSeries : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (A B : HSp D) (φ : Mx D B.rank A.rank → ℂ), GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ → ∀ f : WO (dblSp A) B → ℂ, (∀ w : WO (dblSp A) B, f w = ψ (-(symplOH (dblSp A) B ((dblDec A).extX B (HMul.hMul w (dblDec A).jX)) ((dblDec A).extY B (HMul.hMul w (dblDec A).jY)))) * ∑' ξ : Matrix (Fin B.rank) (Fin A.rank) D.host.E, ψ (symplO (dblSp A) B ((dblDec A).extX B (HMul.hMul w (dblDec A).jX + rat ξ)) ((dblDec A).extY B (HMul.hMul w (dblDec A).jY))) * φ (HMul.hMul w (dblDec A).jX + rat ξ)) → ∀ M : ℝ →+ WO (dblSp A) B, Continuous M → (∀ t, (M t).map (finPart D) = 0) → ∃ φ' : Mx D B.rank A.rank → ℂ, GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ' ∧ ∀ f' : WO (dblSp A) B → ℂ, (∀ w : WO (dblSp A) B, f' w = ψ (-(symplOH (dblSp A) B ((dblDec A).extX B (HMul.hMul w (dblDec A).jX)) ((dblDec A).extY B (HMul.hMul w (dblDec A).jY)))) * ∑' ξ : Matrix (Fin B.rank) (Fin A.rank) D.host.E, ψ (symplO (dblSp A) B ((dblDec A).extX B (HMul.hMul w (dblDec A).jX + rat ξ)) ((dblDec A).extY B (HMul.hMul w (dblDec A).jY))) * φ' (HMul.hMul w (dblDec A).jX + rat ξ)) → ∀ w, HasDerivAt (fun t : ℝ => heisO ψ (dblSp A) B (M t) f w) (f' w) 0 := by
  first | exact @GlobalTheory.Core.Rk.OntoDer.hasDerivAt_heisO_thetaSeries
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HasDerivAtHeisenbergThetaSeriesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaSeriesSchwartzBruhatContinuousSchrodingerStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaSeriesSchwartzBruhatContinuousSchrodingerStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SchwartzBruhatMixedFamilies\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.HeckeFormNSOfHeckeForm\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaSeriesSchwartzBruhatContinuousSchrodinger\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexConjugate Matrix NNReal ENNReal
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.Cusp GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalVolumeLift (FinPl RealMat Lat IsFockVec IsSphOff HidaSetting volQ)
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalZero (ip delta swSec sZero IsKFinVec ThetaClause SectionClause CoefClause)
open GlobalTheory.Mem.Th (CptF)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Core.Rk.IP GlobalTheory.Core.Rk.SWLaw
open GlobalTheory.Core.Rk.SW
open scoped ContDiff


theorem _root_.GlobalTheory.T.thetaSeries_schwartzBruhat_continuous_schrodinger : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (A B : HSp D) (ν : Measure (WO A B)) (𝓨 : Set (WO A B)), IsCovolOne (ratL B A) ν 𝓨 → ∀ φ : Mx D B.rank A.rank → ℂ, GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ → ∀ f : WO (dblSp A) B → ℂ, (∀ w : WO (dblSp A) B, f w = ψ (-(symplOH (dblSp A) B ((dblDec A).extX B (HMul.hMul w (dblDec A).jX)) ((dblDec A).extY B (HMul.hMul w (dblDec A).jY)))) * ∑' ξ : Matrix (Fin B.rank) (Fin A.rank) D.host.E, ψ (symplO (dblSp A) B ((dblDec A).extX B (HMul.hMul w (dblDec A).jX + rat ξ)) ((dblDec A).extY B (HMul.hMul w (dblDec A).jY))) * φ (HMul.hMul w (dblDec A).jX + rat ξ)) → Continuous f ∧ sch ψ A B ν 𝓨 f = φ := by
  first | exact @GlobalTheory.Core.Rk.ThetaOf.theta_series_sch
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaSeriesSchwartzBruhatContinuousSchrodingerStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsThetaFunctionSchrodingerFunctionEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsThetaFunctionSchrodingerFunctionEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SchwartzBruhatMixedFamilies\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.HeckeFormNSOfHeckeForm\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ContDiffOfHeisenbergDerivativeClosedClassStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubledThetaSeriesLawAndLevelStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HasDerivAtHeisenbergThetaSeriesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaSeriesSchwartzBruhatContinuousSchrodingerStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexConjugate Matrix NNReal ENNReal
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.Cusp GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalVolumeLift (FinPl RealMat Lat IsFockVec IsSphOff HidaSetting volQ)
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalZero (ip delta swSec sZero IsKFinVec ThetaClause SectionClause CoefClause)
open GlobalTheory.Mem.Th (CptF)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Core.Rk.IP GlobalTheory.Core.Rk.SWLaw
open GlobalTheory.Core.Rk.SW
open scoped ContDiff

namespace GlobalTheory.SchwOnto

noncomputable def ser (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (A B : HSp D) (φ : Mx D B.rank A.rank → ℂ) :
    WO (dblSp A) B → ℂ := fun w =>
  ψ (-(symplOH (dblSp A) B ((dblDec A).extX B (HMul.hMul w (dblDec A).jX)) ((dblDec A).extY B (HMul.hMul w (dblDec A).jY)))) * ∑' ξ : Matrix (Fin B.rank) (Fin A.rank) D.host.E, ψ (symplO (dblSp A) B ((dblDec A).extX B (HMul.hMul w (dblDec A).jX + rat ξ)) ((dblDec A).extY B (HMul.hMul w (dblDec A).jY))) * φ (HMul.hMul w (dblDec A).jX + rat ξ)

theorem schw_onto : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (A B : HSp D) (ν : Measure (WO A B)) (𝓨 : Set (WO A B)), IsCovolOne (ratL B A) ν 𝓨 → ∀ φ : Mx D B.rank A.rank → ℂ, GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ → ∃ f, IsThetaFunO ψ (dblSp A) B f ∧ sch ψ A B ν 𝓨 f = φ := by
  intro D ψ hψ A B ν 𝓨 hν φ hφ
  have hlaw := GlobalTheory.T.doubled_theta_series_law_and_level D ψ hψ A B φ hφ (ser D ψ A B φ) (fun _ => rfl)
  have hcs := GlobalTheory.T.thetaSeries_schwartzBruhat_continuous_schrodinger D ψ hψ A B ν 𝓨 hν φ hφ (ser D ψ A B φ) (fun _ => rfl)
  let V : Set (WO (dblSp A) B → ℂ) := {g | ∃ φ', GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ' ∧ g = ser D ψ A B φ'}
  have hVc : ∀ g ∈ V, Continuous g := by
    rintro g ⟨φ', hφ', rfl⟩
    exact (_root_.GlobalTheory.Core.Rk.ThetaOf.theta_series_sch D ψ hψ A B ν 𝓨 hν φ' hφ' (ser D ψ A B φ') (fun _ => rfl)).1
  have hVd : ∀ g ∈ V, ∀ M : ℝ →+ WO (dblSp A) B, Continuous M → (∀ t, (M t).map (finPart D) = 0) →
      ∃ g' ∈ V, ∀ w, HasDerivAt (fun t : ℝ => heisO ψ (dblSp A) B (M t) g w) (g' w) 0 := by
    rintro g ⟨φ', hφ', rfl⟩ M hM hMf
    obtain ⟨φ'', hφ'', hd⟩ := GlobalTheory.T.hasDerivAt_heisenberg_thetaSeries D ψ hψ A B φ' hφ' (ser D ψ A B φ') (fun _ => rfl) M hM hMf
    exact ⟨ser D ψ A B φ'', ⟨φ'', hφ'', rfl⟩, hd (ser D ψ A B φ'') (fun _ => rfl)⟩
  have hsm := GlobalTheory.T.contDiff_of_heisenbergDerivativeClosedClass D ψ hψ (dblSp A) B V hVc hVd (ser D ψ A B φ) ⟨φ, hφ, rfl⟩
  exact ⟨ser D ψ A B φ, { quasi := hlaw.1, level := hlaw.2, cont := hcs.1, smooth := hsm }, hcs.2⟩

end GlobalTheory.SchwOnto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsThetaFunctionSchrodingerFunctionEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsThetaFunctionSchrodingerFunctionEqStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsThetaFunctionSchrodingerFunctionEqStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SchwartzBruhatMixedFamilies\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.HeckeFormNSOfHeckeForm\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsThetaFunctionSchrodingerFunctionEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexConjugate Matrix NNReal ENNReal
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.Cusp GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalVolumeLift (FinPl RealMat Lat IsFockVec IsSphOff HidaSetting volQ)
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalZero (ip delta swSec sZero IsKFinVec ThetaClause SectionClause CoefClause)
open GlobalTheory.Mem.Th (CptF)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Core.Rk.IP GlobalTheory.Core.Rk.SWLaw
open GlobalTheory.Core.Rk.SW


theorem _root_.GlobalTheory.T.exists_thetaFunction_schrodingerFunction_eq : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (A B : HSp D) (ν : Measure (WO A B)) (𝓨 : Set (WO A B)), IsCovolOne (ratL B A) ν 𝓨 → ∀ φ : Mx D B.rank A.rank → ℂ, GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat φ → ∃ f, IsThetaFunO ψ (dblSp A) B f ∧ sch ψ A B ν 𝓨 f = φ := by
  first | exact @GlobalTheory.SchwOnto.schw_onto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsThetaFunctionSchrodingerFunctionEqStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatDoubledPairSchrodingerFunctionStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatDoubledPairSchrodingerFunctionStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SchwartzBruhatMixedFamilies\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.HeckeFormNSOfHeckeForm\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatDoubledPairSchrodingerFunction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexConjugate Matrix NNReal ENNReal
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.Cusp GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalVolumeLift (FinPl RealMat Lat IsFockVec IsSphOff HidaSetting volQ)
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalZero (ip delta swSec sZero IsKFinVec ThetaClause SectionClause CoefClause)
open GlobalTheory.Mem.Th (CptF)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Core.Rk.IP GlobalTheory.Core.Rk.SWLaw
open GlobalTheory.Core.Rk.SW


theorem _root_.GlobalTheory.T.isSchwartzBruhat_doubledPairSchrodingerFunction : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (A B : HSp D) (ν : Measure (WO A B)) (𝓨 : Set (WO A B)), IsCovolOne (ratL B A) ν 𝓨 → ∀ f, IsThetaFunO ψ (dblSp A) B f → GlobalTheory.IndefiniteRowSideFullHecke.SchwartzBruhatMixedFamilies.IsSchwartzBruhat (sch ψ A B ν 𝓨 f) := by
  first | exact @GlobalTheory.SchwartzSch.isSchwartzBruhat_sch
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatDoubledPairSchrodingerFunctionStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchrodingerThetaEqSchwartzBruhat =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchrodingerThetaEqSchwartzBruhat", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.HeckeFormNSOfHeckeForm\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ComplexEmbeddingHermitianQuadrupleSum\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubledPairThetaFunctionEqZeroOfSchrodingerEqZerStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsThetaFunctionSchrodingerFunctionEqStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatDoubledPairSchrodingerFunctionStatement\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatIffMemAdelicMatrixSchwartzSpaceStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped ComplexConjugate Matrix NNReal ENNReal
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.Cusp GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalVolumeLift (FinPl RealMat Lat IsFockVec IsSphOff HidaSetting volQ)
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalZero (ip delta swSec sZero IsKFinVec ThetaClause SectionClause CoefClause)
open GlobalTheory.Mem.Th (CptF)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Core.Rk.IP GlobalTheory.Core.Rk.SWLaw
open GlobalTheory.Core.Rk.SW

namespace GlobalTheory.SchSchwartzAll

theorem sch_sub {D : D7} {ψ : AddChar (AF D.host.F) ℂ} (hψ : Continuous ψ) {A B : HSp D} {ν : Measure (WO A B)}
    {𝓨 : Set (WO A B)} (hν : IsCovolOne (ratL B A) ν 𝓨) {f f' : WO (dblSp A) B → ℂ}
    (hf : IsThetaFunO ψ (dblSp A) B f) (hf' : IsThetaFunO ψ (dblSp A) B f') :
    sch ψ A B ν 𝓨 (f - f') = sch ψ A B ν 𝓨 f - sch ψ A B ν 𝓨 f' := by
  funext x
  have h1 := (dblDec A).integrableOn_mixS hψ hν hf x 0
  have h2 := (dblDec A).integrableOn_mixS hψ hν hf' x 0
  refine Eq.trans ?_ (integral_sub h1 h2)
  refine integral_congr_ae (Filter.Eventually.of_forall fun a => ?_)
  simp only [HypDec.integrandS_eq, Pi.sub_apply, mul_sub]

theorem schSchwartz : ∀ D : D7, SchSchwartz D := by
  intro D ψ hψ θ hθ A B ν 𝓨 hν
  refine ⟨fun f hf => (GlobalTheory.T.isSchwartzBruhat_iff_mem_adelicMatrixSchwartzSpace D θ hθ _ _ _).1 (GlobalTheory.T.isSchwartzBruhat_doubledPairSchrodingerFunction D ψ hψ A B ν 𝓨 hν f hf),
    fun φ hφ => GlobalTheory.T.exists_thetaFunction_schrodingerFunction_eq D ψ hψ A B ν 𝓨 hν φ ((GlobalTheory.T.isSchwartzBruhat_iff_mem_adelicMatrixSchwartzSpace D θ hθ _ _ _).2 hφ), fun f f' hf hf' h => ?_⟩
  refine sub_eq_zero.1 (GlobalTheory.T.doubledPairThetaFunction_eq_zero_of_schrodinger_eq_zero D ψ hψ A B ν 𝓨 hν (f - f') (GlobalTheory.OrientedHeis.theta_sub hf hf') ?_)
  rw [sch_sub hψ.1.1 hν hf hf', h, sub_self]

end GlobalTheory.SchSchwartzAll

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchrodingerThetaEqSchwartzBruhat =====
