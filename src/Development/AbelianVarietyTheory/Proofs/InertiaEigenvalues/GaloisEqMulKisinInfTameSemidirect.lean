module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential
public import Development.AbelianVarietyTheory.CrystallinePeriods.RingBasics
public import Development.AbelianVarietyTheory.CrystallinePeriods.RingIface
public import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
public import Formalism.SharpRestriction.LevelLetterCocycles.ProdOneSubPrimitiveRoots
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe
public import Formalism.SharpRestriction.LevelLetterCocycles.ElementDenominator
public import Mathlib.Algebra.Algebra.ZMod
public import Mathlib.NumberTheory.Basic
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoversOfAction
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGaloisPrescribedUnramifiedKummer
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisQlEqGaloisKPrimeMulGaloisKinftyStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RootOfUnityPrimeToTeichmullerLift
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.InvertibleSpanSingleton
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormPowLeNormFactorial
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.RealisesUnitPow
import Mathlib.FieldTheory.Galois.Profinite
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.ReduceModChar
import ReciprocityTheory.ClassFieldTheory.LocalClassField.ExistsDvdQKPowSubOne
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedIntegersTensorEqLetterwiseProductAinf
import Development.AutomorphicArithmetic.IntegralCasts.CrystallinePeriods.Kernel
import Mathlib.Topology.Separation.CompletelyRegular

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoversAction, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatDegreeMinpolyRootNegPrimeUnramified, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemUnramifiedFieldOfMemMaxUnramifiedSupRoot, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixingKunrMemInertiaModFieldInf, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisPowFrobenius, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemKummerTowerUnramifiedOfCoversOne, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisEqMulKisinInfTameSemidirect

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoversAction =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoversAction", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\nimport Development.AbelianVarietyTheory.CrystallinePeriods.RingBasics\nimport Development.AbelianVarietyTheory.CrystallinePeriods.RingIface\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RootOfUnityPrimeToTeichmullerLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

noncomputable section

set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 1000000

namespace GlobalTheory.BKGal.CoversConv

open GlobalTheory.BKReal

variable {l : ℕ} [Fact l.Prime]

def toOC (LL : FinExt l) : OA l ↥(OL LL) →+* OC l :=
  letI : Algebra ℤ_[l] (OC l) := ((Per.θ l).comp (algebraMap ℤ_[l] (Ainf l))).toAlgebra
  (Algebra.TensorProduct.lift (R := ℤ_[l]) (S := ℤ_[l])
    ({ intToOC LL with commutes' := fun z => intToOC_algebraMap LL z } : ↥(OL LL) →ₐ[ℤ_[l]] OC l)
    ({ Per.θ l with commutes' := fun _ => rfl } : Ainf l →ₐ[ℤ_[l]] OC l)
    (fun _ _ => Commute.all _ _)).toRingHom

theorem toOC_tmul (LL : FinExt l) (o : ↥(OL LL)) (x : Ainf l) :
    toOC LL (o ⊗ₜ x) = intToOC LL o * Per.θ l x := rfl

theorem toOC_constA (a : ℕ) [NeZero a] (LL : FinExt l) [HasUnr a LL] (c : ZMod a → ↥(OL LL)) :
    toOC LL (constA (thetaW a LL) c) = intToOC LL (c 0) := by
  obtain ⟨y, rfl⟩ := (splitHom_bijective (thetaW a LL)).2 c
  rw [constA_splitHom]
  induction y using TensorProduct.induction_on with
  | zero => simp
  | tmul o w =>
    rw [Algebra.TensorProduct.map_tmul, AlgHom.id_apply, toOC_tmul, splitHom_tmul, emb_zero, map_mul,
      intToOC_thetaW]
  | add y y' h h' => simp only [map_add (f := _), Pi.add_apply, h, h']

theorem iTot_const {O K : Type} [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O]
    [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] {a e : ℕ} [NeZero a]
    (t : Wq l a →ₐ[ℤ_[l]] O) (ϖ : PiSys l e) (c : ZMod a → O) :
    ϖ.iTot t K (fun τ => algebraMap O (A O K) (c τ)) = constA t c := by
  rw [PiSys.iTot, glue_apply, eq_sum_idem]
  simp only [AlgHom.commutes]

end GlobalTheory.BKGal.CoversConv


open GlobalTheory.BKGal.CoversConv GlobalTheory.BKReal in
theorem GlobalTheory.BKGal.covers_action : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (ϖ : PiSys l e) (LL : FinExt l) [HasUnr a LL] [TameDescentExponentData ↥LL.1 l e a] (k : GQ l) (γ : TameGal ↥LL.1 l e a), Covers ↥LL.1 (thetaW a LL) ϖ k γ → (∀ x : Om l, x ^ l ^ a = x → k x = x ^ l ^ γ.shift.val) ∧ k (ϖ.seq 0) = (((γ.left : (↥LL.1)ˣ) : ↥LL.1) : Om l) * ϖ.seq 0 := by
  intro l _ a e _ _ ϖ LL _ _ k γ hc
  set t := thetaW a LL with ht
  have hW : ∀ w : Wq l a, Per.σO k (Per.θ l (wA l a w)) =
      Per.θ l (wA l a ((sigma l a ^ γ.shift.val) w)) := by
    intro w
    have h1 := hc (fun τ => algebraMap _ (A ↥(OL LL) ↥LL.1) (emb t τ w))
      (fun τ => algebraMap _ (A ↥(OL LL) ↥LL.1) (emb t (τ - γ.shift) w)) (fun τ => by
        change _ = rescale (γ.root τ) _
        beta_reduce
        have hC : ∀ (c : ↥(OL LL)) (m : ℕ), coeff m ((algebraMap _ (A ↥(OL LL) ↥LL.1) c : A _ _) : (↥LL.1)⟦X⟧) =
            if m = 0 then algebraMap _ ↥LL.1 c else 0 := fun c m =>
          (congrArg (coeff m) (GlobalTheory.BK.algebraMap_eq_C (K := ↥LL.1) c)).trans (coeff_C ..)
        ext1 n
        rw [coeff_rescale, hC]
        split_ifs with h
        · rw [h, pow_zero, one_mul]
        · rw [mul_zero])
    rw [iTot_const, iTot_const, constA_emb, galOA_tmul] at h1
    have h2 := congrArg (toOC LL) h1
    rw [toOC_tmul, toOC_constA, map_one, one_mul, GlobalTheory.RingBasics.θ_σA] at h2
    rw [h2, ← intToOC_thetaW a LL]
    congr 1
    show t ((sigma l a ^ (-(0 - γ.shift)).val) w) = _
    rw [zero_sub, neg_neg]
  obtain ⟨z, ω, hω, hz, -⟩ := exists_gen l a
  have hpow : ∀ j : ℕ, ((Per.θ l (wA l a (WittVector.teichmuller l (z ^ j))) : OC l) : ℂ_[l]) =
      ((ω ^ j : Om l) : ℂ_[l]) := by
    intro j
    rw [wA_teich, WittVector.fontaineTheta_teichmuller, map_pow, map_pow, SubmonoidClass.coe_pow,
      GlobalTheory.MemLoc.IsTiltOf.untilt_eq hz]
    first
    | exact (map_pow (algebraMap (Om l) ℂ_[l]) ω j).symm
  refine ⟨fun x hx => ?_, ?_⟩
  · rcases eq_or_ne x 0 with rfl | hx0
    · rw [map_zero, zero_pow (pow_ne_zero _ (Fact.out : l.Prime).ne_zero)]
    · have h1 := one_lt_pow_l l a
      have : NeZero (l ^ a - 1) := ⟨by omega⟩
      have hx1 : x ^ (l ^ a - 1) = 1 := mul_right_cancel₀ hx0 (by
        rw [← pow_succ, Nat.sub_add_cancel h1.le, hx, one_mul])
      obtain ⟨j, -, rfl⟩ := hω.eq_pow_of_pow_eq_one hx1
      have h2 := congrArg (fun y : OC l => (y : ℂ_[l])) (hW (WittVector.teichmuller l (z ^ j)))
      rw [sigma_pow_teich, map_pow (wA l a), map_pow (Per.θ l), SubmonoidClass.coe_pow, hpow] at h2
      replace h2 := (GlobalTheory.RingIface.sigO_coe l k _).symm.trans h2
      rw [hpow, GlobalTheory.RingBasics.σC_coe] at h2
      exact (algebraMap (Om l) ℂ_[l]).injective (h2.trans (map_pow (algebraMap (Om l) ℂ_[l]) _ _).symm)
  · have hr : ∀ τ, IsIntegral ℤ_[l] (γ.root τ) := fun τ =>
      IsIntegral.of_pow (NeZero.pos e) (by rw [γ.root_pow]; exact isIntegral_one)
    let r : ZMod a → ↥(OL LL) := fun τ => ⟨γ.root τ, hr τ⟩
    have h1 := hc (fun _ => uIn (A ↥(OL LL) ↥LL.1))
      ((fun τ => algebraMap _ (A ↥(OL LL) ↥LL.1) (r τ)) * fun _ => uIn (A ↥(OL LL) ↥LL.1)) (fun τ => by
        change ((algebraMap _ (A ↥(OL LL) ↥LL.1) (r τ) : A _ _) : (↥LL.1)⟦X⟧) *
          ((uIn (A ↥(OL LL) ↥LL.1) : A _ _) : (↥LL.1)⟦X⟧) =
          rescale (γ.root τ) ((uIn (A ↥(OL LL) ↥LL.1) : A _ _) : (↥LL.1)⟦X⟧)
        rw [coe_uIn, rescale_X]
        exact congrArg (· * X) (GlobalTheory.BK.algebraMap_eq_C (K := ↥LL.1) (r τ)))
    rw [map_mul (ϖ.iTot t ↥LL.1), iTot_const, PiSys.iTot_u, galOA_tmul] at h1
    have h2 := congrArg (toOC LL) h1
    rw [map_mul (toOC LL), toOC_tmul, toOC_constA, toOC_tmul, map_one, one_mul, one_mul, GlobalTheory.RingBasics.θ_σA,
      PiSys.theta_teich] at h2
    have h3 := (GlobalTheory.RingIface.sigO_coe l k (ϖ.seqO 0)).symm.trans (congrArg (fun y : OC l => (y : ℂ_[l])) h2)
    have h4 := (GlobalTheory.RingBasics.σC_coe k (ϖ.seq 0)).symm.trans h3
    have hr0 : ((r 0 : ↥LL.1) : Om l) = (((γ.left : (↥LL.1)ˣ) : ↥LL.1) : Om l) := by
      simp [r, TameGal.root]
    apply (algebraMap (Om l) ℂ_[l]).injective
    rw [map_mul (algebraMap (Om l) ℂ_[l]), ← hr0]
    exact h4
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoversAction =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatDegreeMinpolyRootNegPrimeUnramified =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatDegreeMinpolyRootNegPrimeUnramified", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ProdOneSubPrimitiveRoots\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.InvertibleSpanSingleton\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormPowLeNormFactorial\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.RealisesUnitPow\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

noncomputable section
namespace GlobalTheory.InertiaDeg
open Polynomial

theorem natDegree_minpoly_root_neg_l : ∀ (l : ℕ) [Fact l.Prime] (N : ℕ) (π : Om l), 0 < N → π ^ N = -(l : Om l) → ∀ (E : Type) [Field E] [Algebra E (Om l)], (∀ y : E, algebraMap E (Om l) y ∈ MaximalUnramifiedExtension l) → (minpoly E π).natDegree = N := by
  intro l _ N π hN hπ E _ _ hE
  have hl0 : (0 : ℝ) < l := by linarith [Formalism.MainNotions.N.PreambleDegrees.Loc.one_lt_l (l := l)]
  set Q : E[X] := Polynomial.X ^ N + Polynomial.C ((l : ℕ) : E) with hQ
  have hQm : Q.Monic := by
    rw [hQ]; exact monic_X_pow_add_C _ hN.ne'
  have hQr : aeval π Q = 0 := by
    rw [hQ]; simp [hπ]
  have hint : IsIntegral E π := ⟨Q, hQm, by rwa [aeval_def] at hQr⟩
  have hdvd : minpoly E π ∣ Q := minpoly.dvd _ _ hQr
  have hQdeg : Q.natDegree = N := by rw [hQ]; exact natDegree_X_pow_add_C
  have hle : (minpoly E π).natDegree ≤ N := by
    rw [← hQdeg]; exact natDegree_le_of_dvd hdvd hQm.ne_zero
  have hpos : 0 < (minpoly E π).natDegree := minpoly.natDegree_pos hint
  have hmon := minpoly.monic hint
  set P := (minpoly E π).map (algebraMap E (Om l)) with hP
  have hsp : P.Splits := IsAlgClosed.splits P
  have hPm : P.Monic := hmon.map _
  have hπn : ‖π‖ ^ N = (l : ℝ)⁻¹ := by
    rw [← norm_pow, hπ, norm_neg, Formalism.MainNotions.N.PreambleDegrees.Loc.norm_l]
  have hroots : ∀ a ∈ P.roots, ‖a‖ = ‖π‖ := by
    intro a ha
    have h1 : P ∣ Q.map (algebraMap E (Om l)) := Polynomial.map_dvd _ hdvd
    have h2 : (Q.map (algebraMap E (Om l))).IsRoot a := (Polynomial.isRoot_of_mem_roots ha).dvd h1
    have h3 : a ^ N = -(l : Om l) := by
      rw [hQ] at h2
      simp [Polynomial.IsRoot] at h2
      linear_combination h2
    have h4 : ‖a‖ ^ N = ‖π‖ ^ N := by
      rw [← norm_pow, h3, ← hπ, norm_pow]
    exact (pow_left_inj₀ (norm_nonneg _) (norm_nonneg _) hN.ne').1 h4
  have heval : ‖P.eval 0‖ = ‖π‖ ^ (minpoly E π).natDegree := by
    rw [hsp.eval_eq_prod_roots_of_monic hPm, ← Polynomial.natDegree_map (algebraMap E (Om l)), ← hP,
      hsp.natDegree_eq_card_roots]
    have h3 := map_multiset_prod (normHom : Om l →*₀ ℝ) (P.roots.map (fun a => 0 - a))
    have h4 : ‖(P.roots.map (fun a => 0 - a)).prod‖
        = ((P.roots.map (fun a => 0 - a)).map (normHom : Om l →*₀ ℝ)).prod := h3
    have h5 : Multiset.map ((normHom : Om l →*₀ ℝ) ∘ fun a => 0 - a) P.roots
        = Multiset.map (fun _ => ‖π‖) P.roots :=
      Multiset.map_congr rfl (fun a ha => by simpa using hroots a ha)
    rw [h4, Multiset.map_map, h5, Multiset.map_const', Multiset.prod_replicate]
  have hy : P.eval 0 = algebraMap E (Om l) ((minpoly E π).eval 0) := by
    rw [hP, Polynomial.eval_map, ← map_zero (algebraMap E (Om l)), Polynomial.eval₂_at_apply]
  have hπ0 : π ≠ 0 := by
    rintro rfl
    rw [zero_pow hN.ne', eq_comm, neg_eq_zero] at hπ
    exact (Nat.cast_ne_zero.2 (Fact.out : l.Prime).ne_zero) hπ
  have hρ : 0 < ‖π‖ := norm_pos_iff.2 hπ0
  have hy0 : algebraMap E (Om l) ((minpoly E π).eval 0) ≠ 0 := by
    rw [← hy, ← norm_pos_iff, heval]
    exact pow_pos hρ _
  obtain ⟨m, hm⟩ := Formalism.MainNotions.N.PreambleDegrees.Loc.norm_Kur_zpow (hE ((minpoly E π).eval 0)) hy0
  rw [← hy, heval] at hm
  have h8 : (l : ℝ) ^ (m * (N : ℤ)) = (l : ℝ) ^ (-((minpoly E π).natDegree : ℤ)) := by
    rw [_root_.zpow_mul, ← hm, zpow_natCast, ← pow_mul, mul_comm, pow_mul, hπn, _root_.zpow_neg, zpow_natCast, inv_pow]
  have h9 : m * (N : ℤ) = -((minpoly E π).natDegree : ℤ) :=
    zpow_right_injective₀ hl0 (Formalism.MainNotions.N.PreambleDegrees.Loc.one_lt_l (l := l)).ne' h8
  have h10 : (N : ℤ) ∣ ((minpoly E π).natDegree : ℤ) := ⟨-m, by linarith⟩
  exact le_antisymm hle (Nat.le_of_dvd hpos (Int.natCast_dvd_natCast.1 h10))

end GlobalTheory.InertiaDeg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatDegreeMinpolyRootNegPrimeUnramified =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemUnramifiedFieldOfMemMaxUnramifiedSupRoot =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemUnramifiedFieldOfMemMaxUnramifiedSupRoot", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatDegreeMinpolyRootNegPrimeUnramified\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormPowLeNormFactorial\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

namespace GlobalTheory.KunrDisj

theorem mem_Kunr_of_mem_Kur_of_mem_sup : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e]
    (ϖ : PiSys l e) (n : ℕ) (x : Om l), x ∈ MaximalUnramifiedExtension l →
    x ∈ Kunr l a ⊔ IntermediateField.adjoin ℚ_[l] {ϖ.seq n} → x ∈ Kunr l a := by
  intro l _ a e _ _ ϖ n x hxK hx
  have hN : 0 < l ^ n * e :=
    Nat.mul_pos (pow_pos (Fact.out : l.Prime).pos n) (Nat.pos_of_ne_zero (NeZero.ne e))
  have hπ : ϖ.seq n ^ (l ^ n * e) = -(l : Om l) := ϖ.seq_pow_mul n
  set U := Kunr l a with hU
  set π := ϖ.seq n with hπdef

  have hdeg := fun (E : Type) [Field E] [Algebra E (Om l)] (h : ∀ y : E, algebraMap E (Om l) y ∈ MaximalUnramifiedExtension l) =>
    _root_.GlobalTheory.InertiaDeg.natDegree_minpoly_root_neg_l l (l ^ n * e) π hN hπ E h
  have hint : ∀ (E : Type) [Field E] [Algebra E (Om l)], (∀ y : E, algebraMap E (Om l) y ∈ MaximalUnramifiedExtension l) →
      IsIntegral E π := by
    intro E _ _ h
    by_contra hni
    have := hdeg E h
    rw [minpoly.eq_zero hni, Polynomial.natDegree_zero] at this
    omega
  let K2 : IntermediateField U (Om l) := IntermediateField.adjoin U {π}
  have hxK2 : x ∈ K2 := by
    have : x ∈ K2.restrictScalars ℚ_[l] := by
      rw [IntermediateField.restrictScalars_adjoin_eq_sup]; exact hx
    exact this
  let K1 : IntermediateField U (Om l) := IntermediateField.adjoin U {x}
  have hK1K2 : K1 ≤ K2 := IntermediateField.adjoin_simple_le_iff.2 hxK2
  have hUK : ∀ y : U, algebraMap U (Om l) y ∈ MaximalUnramifiedExtension l := fun y => Kunr_le_Kur l a y.2
  have hK1K : ∀ y : K1, algebraMap K1 (Om l) y ∈ MaximalUnramifiedExtension l := by
    intro y
    have hy : (y : Om l) ∈ K1.restrictScalars ℚ_[l] := y.2
    rw [IntermediateField.restrictScalars_adjoin] at hy
    refine (IntermediateField.adjoin_le_iff.2 ?_) hy
    rintro z (hz | hz)
    · exact Kunr_le_Kur l a hz
    · rw [Set.mem_singleton_iff.1 hz]; exact hxK

  let L : IntermediateField K1 (Om l) := IntermediateField.adjoin K1 {π}
  have hLK2 : L.restrictScalars U = K2 := by
    rw [IntermediateField.restrictScalars_adjoin]
    refine le_antisymm (IntermediateField.adjoin_le_iff.2 ?_) (IntermediateField.adjoin.mono _ _ _ Set.subset_union_right)
    rintro z (hz | hz)
    · exact hK1K2 hz
    · rw [Set.mem_singleton_iff.1 hz]; exact IntermediateField.mem_adjoin_simple_self U π
  have hK2r : Module.finrank U K2 = l ^ n * e := by
    rw [IntermediateField.adjoin.finrank (hint U hUK)]; exact hdeg U hUK
  have hLr : Module.finrank K1 L = l ^ n * e := by
    rw [IntermediateField.adjoin.finrank (hint K1 hK1K)]; exact hdeg K1 hK1K
  have hLU : Module.finrank U L = l ^ n * e := by
    rw [← hK2r, ← hLK2]; rfl
  have htower := Module.finrank_mul_finrank U K1 L
  rw [hLr, hLU] at htower
  have h1 : Module.finrank U K1 = 1 := by
    have := Nat.eq_of_mul_eq_mul_right hN (htower.trans (one_mul _).symm)
    exact this
  have hbot : K1 = ⊥ := IntermediateField.finrank_eq_one_iff.1 h1
  have : x ∈ K1 := IntermediateField.mem_adjoin_simple_self U x
  rw [hbot, IntermediateField.mem_bot] at this
  obtain ⟨y, rfl⟩ := this
  exact y.2

end GlobalTheory.KunrDisj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemUnramifiedFieldOfMemMaxUnramifiedSupRoot =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixingKunrMemInertiaModFieldInf =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixingKunrMemInertiaModFieldInf", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ProdOneSubPrimitiveRoots\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ElementDenominator\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemUnramifiedFieldOfMemMaxUnramifiedSupRoot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.FieldTheory.Galois.Profinite\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ClassFieldTheory.LocalClassField.ExistsDvdQKPowSubOne\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormPowLeNormFactorial\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

noncomputable section
namespace GlobalTheory.InertiaMod

open scoped Pointwise

variable {l : ℕ} [Fact l.Prime]

theorem ofGQ_apply (g : GQ l) (x : Om l) : Formalism.MainNotions.N.PreambleDegrees.Loc.ofGQ g x = g x := rfl

theorem Kur_stable (g : GQ l) {x : Om l} (hx : x ∈ MaximalUnramifiedExtension l) : g x ∈ MaximalUnramifiedExtension l := by
  rw [← Formalism.MainNotions.N.PreambleDegrees.Loc.Kur_eq] at hx ⊢
  have h := ReciprocityTheory.DiscreteGroups.LocalClassField.Kur_stable (p := l) (K := Formalism.MainNotions.N.PreambleDegrees.Loc.Q0 l) (Formalism.MainNotions.N.PreambleDegrees.Loc.ofGQ g) x hx
  rw [ofGQ_apply] at h
  exact h

theorem resid_of_fix (n : GQ l) (hn : ∀ x ∈ MaximalUnramifiedExtension l, n x = x) :
    ∀ x : Om l, ‖x‖ ≤ 1 → ‖n x - x‖ < 1 := by
  have hmem : Formalism.MainNotions.N.PreambleDegrees.Loc.ofGQ n ∈
      ReciprocityTheory.DiscreteGroups.LocalClassField.subG l (Formalism.MainNotions.N.PreambleDegrees.Loc.Q0 l)
        (ReciprocityTheory.DiscreteGroups.LocalClassField.MaximalUnramifiedExtension l (Formalism.MainNotions.N.PreambleDegrees.Loc.Q0 l)) := by
    rw [ReciprocityTheory.DiscreteGroups.LocalClassField.mem_subG_iff]
    intro x hx
    rw [Formalism.MainNotions.N.PreambleDegrees.Loc.Kur_eq] at hx
    rw [ofGQ_apply]
    exact hn x hx
  intro x hx
  have h := (ReciprocityTheory.DiscreteGroups.LocalClassField.mem_subG_Kur_iff (p := l) (K := Formalism.MainNotions.N.PreambleDegrees.Loc.Q0 l)
    Formalism.MainNotions.N.PreambleDegrees.Loc.finiteDimensional_Q0_alt _).1 hmem x hx
  rw [ofGQ_apply] at h
  exact h

theorem fix_Kur_normal : ((MaximalUnramifiedExtension l).fixingSubgroup : Subgroup (GQ l)).Normal := by
  constructor
  intro n hn τ
  rw [IntermediateField.mem_fixingSubgroup_iff] at hn ⊢
  intro x hx
  rw [AlgEquiv.mul_apply, AlgEquiv.mul_apply, hn _ (Kur_stable τ⁻¹ hx), ← AlgEquiv.mul_apply, mul_inv_cancel,
    AlgEquiv.one_apply]

theorem mem_IK_of_fix (σ : GQ l) (hσ : ∀ x ∈ MaximalUnramifiedExtension l, σ x = x) :
    ∃ k' ∈ IK (Formalism.MainNotions.ElementDenominator.qlExt l), (k' : GQ l) = σ := by
  have hG : σ ∈ GK (Formalism.MainNotions.ElementDenominator.qlExt l) := by
    rw [GK, IntermediateField.mem_fixingSubgroup_iff]
    intro x hx
    obtain ⟨a, rfl⟩ := IntermediateField.mem_bot.1 hx
    exact σ.commutes a
  exact ⟨⟨σ, hG⟩, Subgroup.subset_closure (fun x hx => resid_of_fix σ hσ x hx), rfl⟩

theorem exists_fix_Kur (M : IntermediateField ℚ_[l] (Om l)) (g : GQ l)
    (hg : ∀ x ∈ M, x ∈ MaximalUnramifiedExtension l → g x = x) :
    ∃ h ∈ M.fixingSubgroup, ∀ x ∈ MaximalUnramifiedExtension l, (g * h) x = x := by
  haveI := fix_Kur_normal (l := l)
  let S : Subgroup (GQ l) := M.fixingSubgroup ⊔ (MaximalUnramifiedExtension l).fixingSubgroup
  have hSc : IsClosed (S : Set (GQ l)) := by
    rw [Subgroup.mul_normal]
    exact IsClosed.mul_left_of_isCompact (InfiniteGalois.fixingSubgroup_isClosed _)
      (InfiniteGalois.fixingSubgroup_isClosed M).isCompact
  have hfS : (IntermediateField.fixedField S).fixingSubgroup = S :=
    InfiniteGalois.fixingSubgroup_fixedField ⟨S, hSc⟩
  have hgS : g ∈ S := by
    rw [← hfS, IntermediateField.mem_fixingSubgroup_iff]
    intro x hx
    rw [IntermediateField.mem_fixedField_iff] at hx
    apply hg
    · rw [← InfiniteGalois.fixedField_fixingSubgroup M, IntermediateField.mem_fixedField_iff]
      exact fun σ hσ => hx σ (Subgroup.mem_sup_left hσ)
    · rw [← InfiniteGalois.fixedField_fixingSubgroup (MaximalUnramifiedExtension l), IntermediateField.mem_fixedField_iff]
      exact fun σ hσ => hx σ (Subgroup.mem_sup_right hσ)
  have hgNH : g ∈ ((M.fixingSubgroup : Set (GQ l)) * ((MaximalUnramifiedExtension l).fixingSubgroup : Set (GQ l))) := by
    rw [← Subgroup.mul_normal]; exact hgS
  obtain ⟨u, hu, n, hn, hun⟩ := Set.mem_mul.1 hgNH
  refine ⟨u⁻¹, M.fixingSubgroup.inv_mem hu, ?_⟩
  have hmem : g * u⁻¹ ∈ (MaximalUnramifiedExtension l).fixingSubgroup := by
    rw [← hun]
    exact (inferInstance : (MaximalUnramifiedExtension l).fixingSubgroup.Normal).conj_mem n hn u
  exact (IntermediateField.mem_fixingSubgroup_iff _ _).1 hmem

theorem seq_add_pow {e : ℕ} (ϖ : PiSys l e) (m k : ℕ) : ϖ.seq (m + k) ^ l ^ k = ϖ.seq m := by
  induction k with
  | zero => simp
  | succ k ih =>
    show ϖ.seq (m + k + 1) ^ l ^ (k + 1) = _
    rw [pow_succ', pow_mul, ϖ.seq_succ, ih]

theorem mem_level {a e : ℕ} [NeZero a] (ϖ : PiSys l e) {x : Om l} (hx : x ∈ ϖ.fieldInf a) :
    ∃ n, x ∈ Kunr l a ⊔ IntermediateField.adjoin ℚ_[l] {ϖ.seq n} := by
  let F : ℕ → IntermediateField ℚ_[l] (Om l) := fun n => Kunr l a ⊔ IntermediateField.adjoin ℚ_[l] {ϖ.seq n}
  have hs : ∀ n, ϖ.seq n ∈ F n := fun n =>
    (le_sup_right : _ ≤ F n) (IntermediateField.mem_adjoin_simple_self _ _)
  have hseq : ∀ m k, ϖ.seq m ∈ F (m + k) := by
    intro m k
    rw [← seq_add_pow ϖ m k]
    exact pow_mem (hs (m + k)) _
  have hmono : Monotone F := by
    intro m n hmn
    obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hmn
    exact sup_le le_sup_left (IntermediateField.adjoin_simple_le_iff.2 (hseq m k))
  have hle : ϖ.fieldInf a ≤ ⨆ n, F n := by
    refine sup_le (sup_le ?_ ?_) ?_
    · exact le_trans le_sup_left (le_iSup F 0)
    · exact le_trans (IntermediateField.adjoin_simple_le_iff.2 (hs 0)) (le_iSup F 0)
    · refine IntermediateField.adjoin_le_iff.2 ?_
      rintro _ ⟨n, rfl⟩
      exact le_iSup F n (hs n)
  have hx' : x ∈ ((⨆ n, F n : IntermediateField ℚ_[l] (Om l)) : Set (Om l)) := hle hx
  rw [IntermediateField.coe_iSup_of_directed hmono.directed_le] at hx'
  exact Set.mem_iUnion.1 hx'

theorem fix_Kunr {a : ℕ} [NeZero a] (g : GQ l) (hg : ∀ x : Om l, x ^ l ^ a = x → g x = x) :
    ∀ x ∈ Kunr l a, g x = x := fun x hx => by
  induction hx using IntermediateField.adjoin_induction with
  | mem x hx => exact hg x hx
  | algebraMap r => exact g.commutes r
  | add x y _ _ hx hy => rw [map_add (f := _), hx, hy]
  | inv x _ hx => rw [map_inv₀, hx]
  | mul x y _ _ hx hy => rw [map_mul, hx, hy]

theorem main : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (ϖ : PiSys l e), e + 1 = l ^ a →
    ∀ g : GQ l, (∀ x : Om l, x ^ l ^ a = x → g x = x) →
      ∃ k' ∈ IK (Formalism.MainNotions.ElementDenominator.qlExt l), ∃ h ∈ ϖ.GfieldInf a, (k' : GQ l) = g * h := by
  intro l _ a e _ _ ϖ _ g hg
  obtain ⟨h, hh, hgh⟩ := exists_fix_Kur (ϖ.fieldInf a) g fun x hx hK => by
    obtain ⟨n, hn⟩ := mem_level ϖ hx
    exact fix_Kunr g hg x (_root_.GlobalTheory.KunrDisj.mem_Kunr_of_mem_Kur_of_mem_sup l a e ϖ n x hK hn)
  obtain ⟨k', hk', hkeq⟩ := mem_IK_of_fix (g * h) hgh
  exact ⟨k', hk', h, hh, hkeq⟩

end GlobalTheory.InertiaMod
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixingKunrMemInertiaModFieldInf =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisPowFrobenius =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisPowFrobenius", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Development.AbelianVarietyTheory.CrystallinePeriods.RingBasics\npublic import Development.AbelianVarietyTheory.CrystallinePeriods.RingIface\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RootOfUnityPrimeToTeichmullerLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormPowLeNormFactorial\npublic import Mathlib.Algebra.Algebra.ZMod\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

noncomputable section

namespace GlobalTheory.FrobAction

open GlobalTheory.BKReal

theorem galois_pow_frobenius : ∀ (l : ℕ) [Fact l.Prime] (a : ℕ) [NeZero a] (g : GQ l),
    ∃ m : ZMod a, ∀ x : Om l, x ^ l ^ a = x → g x = x ^ l ^ m.val := by
  intro l hl a _ g
  obtain ⟨z, ω, hω, hz, -⟩ := exists_gen l a
  have h1 := one_lt_pow_l l a
  have hmem : ∀ y : Fq l a, Per.σF g (Fq.val l a y) ∈ resSub l a := fun y => by
    rw [mem_resSub, ← map_pow, ← map_pow, Fq.pow_card]
  let φ : Fq l a →+* Fq l a := ((Per.σF g).comp (Fq.val l a)).codRestrict (resSub l a) hmem
  have hφ : ∀ y, Fq.val l a (φ y) = Per.σF g (Fq.val l a y) := fun _ => rfl
  letI : Algebra (ZMod l) (Fq l a) := ZMod.algebra _ _
  haveI : Fintype (Fq l a) := Fintype.ofFinite _
  let ψ : Fq l a →ₐ[ZMod l] Fq l a :=
    { φ with
      commutes' := fun r => by
        haveI : NeZero l := ⟨hl.out.ne_zero⟩
        obtain ⟨n, rfl⟩ := ZMod.natCast_zmod_surjective r
        simp only [RingHom.toMonoidHom_eq_coe, OneHom.toFun_eq_coe, MonoidHom.toOneHom_coe,
          MonoidHom.coe_coe, map_natCast] }
  have hb : Function.Bijective ψ := Finite.injective_iff_bijective.1 ψ.toRingHom.injective
  obtain ⟨n, hn⟩ := (FiniteField.bijective_frobeniusAlgEquivOfAlgebraic_pow (ZMod l) (Fq l a)).2
    (AlgEquiv.ofBijective ψ hb)
  have hfr : ∀ (k : ℕ) (y : Fq l a), (FiniteField.frobeniusAlgEquivOfAlgebraic (ZMod l) (Fq l a) ^ k) y =
      y ^ l ^ k := fun k y => by
    induction k with
    | zero => simp
    | succ k ih =>
      rw [pow_succ', AlgEquiv.mul_apply, ih, FiniteField.frobeniusAlgEquivOfAlgebraic_apply, ZMod.card,
        ← pow_mul, ← pow_succ]
  have hφz : φ z = z ^ l ^ (n : ℕ) := by
    have := congrArg (fun e : Fq l a ≃ₐ[ZMod l] Fq l a => e z) hn
    simp only [hfr] at this
    exact this.symm
  have hrank : Module.finrank (ZMod l) (Fq l a) = a := by
    have h2 := Module.card_eq_pow_finrank (K := ZMod l) (V := Fq l a)
    rw [ZMod.card, ← Nat.card_eq_fintype_card, card_Fq] at h2
    exact (Nat.pow_right_injective hl.out.two_le h2).symm

  have key : ∀ y : OCb l, ((PreTilt.untilt (Per.σF g y) : Per.OC l) : ℂ_[l]) =
      Per.σC g ((PreTilt.untilt y : Per.OC l) : ℂ_[l]) := fun y => by
    rw [GlobalTheory.RingBasics.untilt_σF]
    exact GlobalTheory.RingIface.sigO_coe l g _
  have hu := GlobalTheory.MemLoc.IsTiltOf.untilt_eq hz
  have hgω : g ω = ω ^ l ^ (n : ℕ) := by
    apply (algebraMap (Om l) ℂ_[l]).injective
    have h3 := key (Fq.val l a z)
    rw [← hφ, hφz, map_pow, map_pow, SubmonoidClass.coe_pow, hu, GlobalTheory.RingBasics.σC_coe] at h3
    rw [map_pow]
    exact h3.symm
  refine ⟨((n : ℕ) : ZMod a), fun x hx => ?_⟩
  have hval : (((n : ℕ) : ZMod a)).val = n := ZMod.val_natCast_of_lt (lt_of_lt_of_eq n.2 hrank)
  rw [hval]
  rcases eq_or_ne x 0 with rfl | hx0
  · rw [map_zero, zero_pow (pow_pos hl.out.pos _).ne']
  · have h4 : x ^ (l ^ a - 1) = 1 := mul_right_cancel₀ hx0 (by rw [← pow_succ, Nat.sub_add_cancel h1.le, hx, one_mul])
    haveI : NeZero (l ^ a - 1) := ⟨by omega⟩
    obtain ⟨k, -, rfl⟩ := hω.eq_pow_of_pow_eq_one h4
    rw [map_pow, hgω, ← pow_mul, ← pow_mul, mul_comm]

end GlobalTheory.FrobAction
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisPowFrobenius =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemKummerTowerUnramifiedOfCoversOne =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemKummerTowerUnramifiedOfCoversOne", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\nimport Development.AbelianVarietyTheory.CrystallinePeriods.RingBasics\nimport Development.AbelianVarietyTheory.CrystallinePeriods.RingIface\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedIntegersTensorEqLetterwiseProductAinf\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RootOfUnityPrimeToTeichmullerLift\nimport Development.AutomorphicArithmetic.IntegralCasts.CrystallinePeriods.Kernel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.NumberTheory.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Separation.CompletelyRegular\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

namespace GlobalTheory.CoverOne

variable {l : ℕ} [Fact l.Prime]

theorem theta_algebraMap_inj {z z' : ℤ_[l]}
    (h : Per.θ l (algebraMap ℤ_[l] (Ainf l) z) = Per.θ l (algebraMap ℤ_[l] (Ainf l) z')) : z = z' := by
  have h1 := GlobalTheory.UnramIdem.ringHom_eq ((Per.θ l).comp (algebraMap ℤ_[l] (Ainf l))) z
  have h2 := GlobalTheory.UnramIdem.ringHom_eq ((Per.θ l).comp (algebraMap ℤ_[l] (Ainf l))) z'
  have h3 : (algebraMap ℚ_[l] ℂ_[l]) (z : ℚ_[l]) = (algebraMap ℚ_[l] ℂ_[l]) (z' : ℚ_[l]) := by
    rw [← h1, ← h2]
    exact congrArg Subtype.val h
  exact PadicInt.ext ((algebraMap ℚ_[l] ℂ_[l]).injective h3)

theorem one_tmul_injective (LL : FinExt l) {y y' : Ainf l}
    (h : (1 : ↥(OL LL)) ⊗ₜ[ℤ_[l]] y = (1 : ↥(OL LL)) ⊗ₜ[ℤ_[l]] y') : y = y' := by
  have hA : Function.Injective (algebraMap ℤ_[l] (Ainf l)) := fun z z' hz =>
    theta_algebraMap_inj (congrArg (Per.θ l) hz)
  have : Module.IsTorsionFree ℤ_[l] (Ainf l) := Module.isTorsionFree_iff_algebraMap_injective.2 hA
  have hO : Function.Injective (algebraMap ℤ_[l] ↥(OL LL)) := fun z z' hz => by
    refine theta_algebraMap_inj ?_
    rw [← intToOC_algebraMap, ← intToOC_algebraMap, hz]
  exact Algebra.TensorProduct.includeRight_injective (R := ℤ_[l]) (A := ↥(OL LL)) (B := Ainf l) hO h

end GlobalTheory.CoverOne

namespace GlobalTheory.CoverOne

variable {l : ℕ} [Fact l.Prime]

theorem ratio_pow {e : ℕ} (ϖ : PiSys l e) (g : GQ l) (n m : ℕ) : ϖ.ratio g (n + m) ^ l ^ m = ϖ.ratio g n := by
  induction m with
  | zero => simp
  | succ m ih => rw [pow_succ', pow_mul, ← add_assoc, ϖ.ratio_succ, ih]

theorem seq_fixed {e : ℕ} [NeZero e] (ϖ : PiSys l e) {g : GQ l} (hg : ϖ.kummer g = 1) (n : ℕ) :
    g (ϖ.seq n) = ϖ.seq n := by
  have hd : ∀ j, ((l : ℕ) : OC l) ∣ ϖ.ratio g j - 1 := fun j => by
    have h1 := ϖ.coeff_kummer g j
    rw [hg, map_one] at h1
    rw [← Ideal.mem_span_singleton, ← Ideal.Quotient.eq, map_one, ← h1]
  have hr : ϖ.ratio g n = 1 := by
    rw [IsHausdorff.eq_iff_smodEq (I := Ideal.span {((l : ℕ) : OC l)})]
    intro m
    rw [SModEq.sub_mem, smul_eq_mul, Ideal.mul_top, Ideal.span_singleton_pow, Ideal.mem_span_singleton]
    rcases m with _ | m
    · simp
    · have := dvd_sub_pow_of_dvd_sub (hd (n + m)) m
      rwa [ratio_pow, one_pow] at this
  have h2 := congrArg Subtype.val hr
  rw [PiSys.coe_ratio, OneMemClass.coe_one, ← map_one (algebraMap (Om l) ℂ_[l])] at h2
  exact (div_eq_one_iff_eq (ϖ.seq_ne_zero n)).1 ((algebraMap (Om l) ℂ_[l]).injective h2)

end GlobalTheory.CoverOne

namespace GlobalTheory.CoverOne

variable {l : ℕ} [Fact l.Prime]

theorem unr_fixed (a : ℕ) [NeZero a] {g : GQ l} (hg : ∀ w, Per.σA g (wA l a w) = wA l a w) {x : Om l}
    (hx : x ^ l ^ a = x) : g x = x := by
  obtain ⟨z, ω, hω, hz, -⟩ := exists_gen l a
  have h1 := congrArg (fun y => ((Per.θ l y : OC l) : ℂ_[l])) (hg (WittVector.teichmuller l z))
  simp only [GlobalTheory.RingBasics.θ_σA, wA_teich, WittVector.fontaineTheta_teichmuller] at h1
  have h2 : Per.σC g (ω : ℂ_[l]) = (ω : ℂ_[l]) := by
    rw [← GlobalTheory.MemLoc.IsTiltOf.untilt_eq hz]
    exact (GlobalTheory.RingIface.sigO_coe l g _).symm.trans h1
  rw [GlobalTheory.RingBasics.σC_coe] at h2
  have hω' : g ω = ω := UniformSpace.Completion.coe_injective _ h2
  rcases eq_or_ne x 0 with rfl | h0
  · exact map_zero g
  have h3 := one_lt_pow_l l a
  have h4 : x ^ (l ^ a - 1) = 1 := mul_right_cancel₀ h0 (by rw [← pow_succ, Nat.sub_add_cancel h3.le, hx, one_mul])
  have : NeZero (l ^ a - 1) := ⟨by omega⟩
  obtain ⟨i, -, rfl⟩ := hω.eq_pow_of_pow_eq_one h4
  rw [map_pow, hω']

end GlobalTheory.CoverOne

namespace GlobalTheory.CoverOne

theorem main : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (ϖ : PiSys l e) (LL : FinExt l) [HasUnr a LL] [TameDescentExponentData ↥LL.1 l e a] (k : GQ l), Covers ↥LL.1 (thetaW a LL) ϖ k (1 : TameGal ↥LL.1 l e a) → k ∈ ϖ.GfieldInf a := by
  intro l _ a e _ _ ϖ LL _ _ k hc
  have hfix : ∀ f, galOA ↥(OL LL) k (ϖ.iTot (thetaW a LL) ↥LL.1 f) = ϖ.iTot (thetaW a LL) ↥LL.1 f :=
    fun f => hc f f fun τ => by rw [map_one]; rfl
  have hev : ∀ x, Per.σA k (ϖ.ev a x) = ϖ.ev a x := fun x => by
    have h := hfix (toAc (thetaW a LL) ↥LL.1 x)
    rw [PiSys.iTot_toAc, galOA_tmul] at h
    exact one_tmul_injective LL h
  have hteich : Per.σA k ϖ.teich = ϖ.teich := by simpa using hev X
  have h0 : ϖ.teich ≠ 0 := fun h => ϖ.flat_ne_zero (by
    have := congrArg (fun w : Ainf l => w.coeff 0) h
    simpa [PiSys.teich] using this)
  have hkum : ϖ.kummer k = 1 := by
    rw [PiSys.gal_teich, PiSys.mu, add_sub_cancel] at hteich
    have h1 := mul_right_cancel₀ h0 (hteich.trans (one_mul _).symm)
    have h2 := congrArg (fun w : Ainf l => w.coeff 0) h1
    simpa using h2
  have hseq := seq_fixed ϖ hkum
  have hw : ∀ w, Per.σA k (wA l a w) = wA l a w := fun w => by simpa using hev (C w)
  have hz : ∀ x, k x = x → x ∈ IntermediateField.fixedField (Subgroup.zpowers k) := fun x hx => by
    rintro ⟨_, m, rfl⟩
    exact MulAction.mem_fixedBy_zpow (α := Om l) (g := k) (a := x) hx m
  rw [PiSys.GfieldInf, ← Subgroup.zpowers_le, ← IntermediateField.le_iff_le]
  refine sup_le (sup_le ?_ ?_) ?_
  · exact IntermediateField.adjoin_le_iff.2 fun x hx => hz x (unr_fixed a hw hx)
  · exact IntermediateField.adjoin_le_iff.2 fun x hx => by
      rw [Set.mem_singleton_iff.1 hx]
      exact hz _ (hseq 0)
  · exact IntermediateField.adjoin_le_iff.2 fun x ⟨n, hn⟩ => hn ▸ hz _ (hseq n)

end GlobalTheory.CoverOne
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemKummerTowerUnramifiedOfCoversOne =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisEqMulKisinInfTameSemidirect =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisEqMulKisinInfTameSemidirect", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoversAction\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoversOfAction\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGaloisPrescribedUnramifiedKummer\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ElementDenominator\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixingKunrMemInertiaModFieldInf\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisPowFrobenius\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisQlEqGaloisKPrimeMulGaloisKinftyStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemKummerTowerUnramifiedOfCoversOne\nimport Development.AbelianVarietyTheory.CrystallinePeriods.RingBasics\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

noncomputable section
namespace GlobalTheory.TameCover

section
variable {l : ℕ} [Fact l.Prime] {a e : ℕ} [NeZero a] [NeZero e] (ϖ : PiSys l e) (LL : FinExt l)
  [HasUnr a LL] [TameDescentExponentData ↥LL.1 l e a]

theorem galOA_mul' {O : Type} [CommRing O] [Algebra ℤ_[l] O] (g h : GQ l) (x : OA l O) :
    galOA O (g * h) x = galOA O g (galOA O h x) := by
  induction x using TensorProduct.induction_on with
  | zero => simp only [map_zero]
  | tmul o w => rw [galOA_tmul, galOA_tmul, galOA_tmul, GlobalTheory.RingBasics.σA_mul]
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

def actA (γ : TameGal ↥LL.1 l e a) (f : ZMod a → A ↥(OL LL) ↥LL.1) : ZMod a → A ↥(OL LL) ↥LL.1 :=
  fun τ => ⟨ringAct γ (fun σ => (f σ : PowerSeries ↥LL.1)) τ, Rot.ringAct_mem rot_A γ (fun σ => (f σ).2) τ⟩

theorem covers_mul {k k' : GQ l} {γ γ' : TameGal ↥LL.1 l e a}
    (hk : Covers ↥LL.1 (thetaW a LL) ϖ k γ) (hk' : Covers ↥LL.1 (thetaW a LL) ϖ k' γ') :
    Covers ↥LL.1 (thetaW a LL) ϖ (k * k') (γ * γ') := by
  intro f f'' hf''
  have h1 := hk' f (actA LL γ' f) (fun τ => rfl)
  have h2 := hk (actA LL γ' f) f'' (fun τ => by
    rw [hf'' τ, map_mul]
    rfl)
  rw [galOA_mul', h1, h2]

theorem covers_of_mem {k : GQ l} (hk : k ∈ ϖ.GfieldInf a) :
    Covers ↥LL.1 (thetaW a LL) ϖ k (1 : TameGal ↥LL.1 l e a) := by
  intro f f' hf'
  have : f' = f := funext fun τ => Subtype.ext (by rw [hf' τ, map_one]; rfl)
  rw [this]
  exact ϖ.galOA_iTot (thetaW a LL) ↥LL.1 hk f

theorem covers_unique {k : GQ l} {γ γ' : TameGal ↥LL.1 l e a}
    (hγ : Covers ↥LL.1 (thetaW a LL) ϖ k γ) (hγ' : Covers ↥LL.1 (thetaW a LL) ϖ k γ') : γ = γ' := by
  have key : ∀ f : ZMod a → A ↥(OL LL) ↥LL.1,
      ringAct γ (fun σ => (f σ : PowerSeries ↥LL.1)) = ringAct γ' (fun σ => (f σ : PowerSeries ↥LL.1)) := by
    intro f
    have h := (hγ f (actA LL γ f) (fun _ => rfl)).symm.trans (hγ' f (actA LL γ' f) (fun _ => rfl))
    have h2 := ϖ.iTot_injective (thetaW a LL) ↥LL.1 h
    funext τ
    exact congrArg Subtype.val (congrFun h2 τ)
  have hs : γ.shift = γ'.shift := by
    by_contra hne
    have h := congrFun (key fun σ => if σ = 0 then 1 else 0) γ.shift
    simp only [ringAct_apply, sub_self] at h
    rw [if_neg (sub_ne_zero.2 hne)] at h
    simp at h
  have hl : ((γ.left : (↥LL.1)ˣ) : ↥LL.1) = ((γ'.left : (↥LL.1)ˣ) : ↥LL.1) := by
    have h := congrArg (fun F => coeff 1 (F 0)) (key fun _ => uIn _)
    have hu : ((uIn (A ↥(OL LL) ↥LL.1) : A ↥(OL LL) ↥LL.1) : PowerSeries ↥LL.1) = X := rfl
    simp only [hu, ringAct_X, coeff_C_mul, coeff_one_X, mul_one] at h
    simpa [TameGal.root] using h
  refine SemidirectProduct.ext (Subtype.ext (Units.ext hl)) ?_
  exact congrArg Multiplicative.ofAdd hs

omit [HasUnr a LL] in
theorem lift_root (a : ℕ) [TameDescentExponentData ↥LL.1 l e a] (ζ : Om l) (hζ : ζ ^ e = 1) :
    ∃ ζK : rootsOfUnity e ↥LL.1, (((ζK : (↥LL.1)ˣ) : ↥LL.1) : Om l) = ζ := by
  obtain ⟨ζ0, h0⟩ := TameDescentExponentData.prim (K := ↥LL.1) l a (e := e)
  have h1 : IsPrimitiveRoot ((ζ0 : ↥LL.1) : Om l) e := h0.map_of_injective (f := LL.1.val) Subtype.val_injective
  obtain ⟨i, -, hi⟩ := h1.eq_pow_of_pow_eq_one hζ
  refine ⟨rootsOfUnity.mkOfPowEq (ζ0 ^ i) (by rw [← pow_mul, mul_comm, pow_mul, h0.pow_eq_one, one_pow]), ?_⟩
  rw [rootsOfUnity.val_mkOfPowEq_coe, ← hi]
  rfl

end

end GlobalTheory.TameCover
end

namespace GlobalTheory.TameCover

theorem main : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (ϖ : PiSys l e) (LL : FinExt l) [HasUnr a LL] [TameDescentExponentData ↥LL.1 l e a], (∀ g : GQ l, ∃ h ∈ GK (ϖ.field a), ∃ k ∈ ϖ.GKinf, g = h * k) ∧ (∀ k ∈ ϖ.GKinf, ∃ γ, Covers ↥LL.1 (thetaW a LL) ϖ k γ) ∧ (∀ γ : TameGal ↥LL.1 l e a, ∃ k ∈ ϖ.GKinf, Covers ↥LL.1 (thetaW a LL) ϖ k γ) ∧ (∀ (k : GQ l) (γ γ' : TameGal ↥LL.1 l e a), Covers ↥LL.1 (thetaW a LL) ϖ k γ → Covers ↥LL.1 (thetaW a LL) ϖ k γ' → γ = γ') ∧ (∀ (k k' : GQ l) (γ γ' : TameGal ↥LL.1 l e a), Covers ↥LL.1 (thetaW a LL) ϖ k γ → Covers ↥LL.1 (thetaW a LL) ϖ k' γ' → Covers ↥LL.1 (thetaW a LL) ϖ (k * k') (γ * γ')) ∧ (∀ k : GQ l, Covers ↥LL.1 (thetaW a LL) ϖ k (1 : TameGal ↥LL.1 l e a) ↔ k ∈ ϖ.GfieldInf a) ∧ ∀ (k : GQ l) (ζ : rootsOfUnity e ↥LL.1), Covers ↥LL.1 (thetaW a LL) ϖ k (TameGal.inertia ζ : TameGal ↥LL.1 l e a) → ∃ k' ∈ IK (Formalism.MainNotions.ElementDenominator.qlExt l), Covers ↥LL.1 (thetaW a LL) ϖ (k' : GQ l) (TameGal.inertia ζ : TameGal ↥LL.1 l e a) ∧ (((ζ : (↥LL.1)ˣ) : ↥LL.1) : Om l) * ϖ.seq 0 = (k' : GQ l) (ϖ.seq 0) := by
  intro l _ a e _ _ ϖ LL _ _
  have hsucc : e + 1 = l ^ a := TameDescentExponentData.succ_eq (↥LL.1) (l := l) (e := e) (a := a)

  have hroot_mem : ∀ x : Om l, x ^ l ^ a = x → x ∈ (ϖ.field a).1 := fun x hx =>
    ϖ.Kunr_le_field a (IntermediateField.subset_adjoin _ _ hx)
  have hfix : ∀ h ∈ GK (ϖ.field a), ∀ x ∈ (ϖ.field a).1, h x = x := fun h hh x hx =>
    (IntermediateField.mem_fixingSubgroup_iff _ _).1 hh x hx
  refine ⟨_root_.GlobalTheory.NgalDecomp.galQ_eq_GK_mul_GKinf l a e ϖ hsucc, ?_, ?_, fun k γ γ' => covers_unique ϖ LL, fun k k' γ γ' => covers_mul ϖ LL,
    fun k => ⟨_root_.GlobalTheory.CoverOne.main l a e ϖ LL k, covers_of_mem ϖ LL⟩, ?_⟩
  · intro k hk
    obtain ⟨m, hm⟩ := _root_.GlobalTheory.FrobAction.galois_pow_frobenius l a k
    have hπ : ϖ.seq 0 ≠ 0 := ϖ.seq_ne_zero 0
    have hke : k (ϖ.seq 0 ^ e) = ϖ.seq 0 ^ e :=
      (IntermediateField.mem_fixingSubgroup_iff _ _).1 hk _ (IntermediateField.subset_adjoin _ _ ⟨0, rfl⟩)
    have hζ : (k (ϖ.seq 0) / ϖ.seq 0) ^ e = 1 := by
      rw [div_pow, ← map_pow, hke, div_self (pow_ne_zero _ hπ)]
    obtain ⟨ζK, hζK⟩ := lift_root LL a _ hζ
    refine ⟨⟨ζK, Multiplicative.ofAdd m⟩, _root_.GlobalTheory.BKGal.covers_of_action l a e ϖ LL _ k hk hm ?_⟩
    change k (ϖ.seq 0) = (((ζK : (↥LL.1)ˣ) : ↥LL.1) : Om l) * ϖ.seq 0
    rw [hζK, div_mul_cancel₀ _ hπ]
  · intro γ
    have hζ : ((((γ.left : (↥LL.1)ˣ) : ↥LL.1) : Om l)) ^ e = 1 := by
      have h1 : ((γ.left : (↥LL.1)ˣ) : ↥LL.1) ^ e = 1 := by
        rw [← Units.val_pow_eq_pow_val, (mem_rootsOfUnity _ _).1 γ.left.2, Units.val_one]
      rw [← IntermediateField.coe_pow, h1]
      rfl
    obtain ⟨g, hg1, hg2⟩ := _root_.GlobalTheory.TameFrob.exists_cover l a e ϖ hsucc γ.shift _ hζ
    obtain ⟨h, hh, k, hk, rfl⟩ := _root_.GlobalTheory.NgalDecomp.galQ_eq_GK_mul_GKinf l a e ϖ hsucc g
    have hinj : Function.Injective h := h.injective
    refine ⟨k, hk, _root_.GlobalTheory.BKGal.covers_of_action l a e ϖ LL γ k hk (fun x hx => hinj ?_) (hinj ?_)⟩
    · have h1 := hg1 x hx
      have h2 : (x ^ l ^ γ.shift.val) ^ l ^ a = x ^ l ^ γ.shift.val := by
        rw [← pow_mul, mul_comm, pow_mul, hx]
      rw [hfix h hh _ (hroot_mem _ h2)]
      exact h1
    · have hz : (((γ.left : (↥LL.1)ˣ) : ↥LL.1) : Om l) ^ l ^ a = (((γ.left : (↥LL.1)ˣ) : ↥LL.1) : Om l) := by
        rw [← hsucc, pow_succ, hζ, one_mul]
      rw [hfix h hh _ (mul_mem (hroot_mem _ hz) (ϖ.pi_mem_field a))]
      exact hg2
  · intro k ζ hk
    obtain ⟨hr, -⟩ := _root_.GlobalTheory.BKGal.covers_action l a e ϖ LL k _ hk
    have hr' : ∀ x : Om l, x ^ l ^ a = x → k x = x := fun x hx => by
      rw [hr x hx]
      simp
    obtain ⟨k', hk', h, hh, hkh⟩ := _root_.GlobalTheory.InertiaMod.main l a e ϖ hsucc k hr'
    have hc : Covers ↥LL.1 (thetaW a LL) ϖ (k' : GQ l) (TameGal.inertia ζ : TameGal ↥LL.1 l e a) := by
      have := covers_mul ϖ LL hk (covers_of_mem ϖ LL hh)
      rwa [mul_one, ← hkh] at this
    refine ⟨k', hk', hc, ?_⟩
    rw [(_root_.GlobalTheory.BKGal.covers_action l a e ϖ LL _ _ hc).2]
    rfl

end GlobalTheory.TameCover
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisEqMulKisinInfTameSemidirect =====
