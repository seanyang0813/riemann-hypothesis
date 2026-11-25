module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.TupPrimeEmpty
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LiftVectorEqUnitMulDilatedFlatDatum
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilRepCentralActsByDilationUnit
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIsCentAtScalar
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
import Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsRootNotMem
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.ReduceModChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FlatVectorEqUnitMulCentralTranslateLiftVector

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FlatVectorEqUnitMulCentralTranslateLiftVector =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FlatVectorEqUnitMulCentralTranslateLiftVector", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.TupPrimeEmpty\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIsCentAtScalar\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LiftVectorEqUnitMulDilatedFlatDatum\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilRepCentralActsByDilationUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsRootNotMem\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.ConjTwist GlobalTheory.GalTw ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Classical




namespace GlobalTheory.FlatLift

theorem unitOff_inv_mul {N : ℕ} {u v : ℂ} (hu : UnitOff N u) (hv : UnitOff N v) : UnitOff N (u * v)⁻¹ := by
  obtain ⟨hu0, n, hn1, hn2⟩ := hu
  obtain ⟨hv0, m, hm1, hm2⟩ := hv
  refine ⟨inv_ne_zero (mul_ne_zero hu0 hv0), n + m, ?_, ?_⟩
  · have e : (N : ℂ) ^ (n + m) * (u * v)⁻¹ = ((N : ℂ) ^ n * u⁻¹) * ((N : ℂ) ^ m * v⁻¹) := by
      rw [pow_add, mul_inv]; ring
    rw [e]; exact hn2.mul hm2
  · have e : (N : ℂ) ^ (n + m) * (u * v)⁻¹⁻¹ = ((N : ℂ) ^ n * u) * ((N : ℂ) ^ m * v) := by
      rw [inv_inv, pow_add]; ring
    rw [e]; exact hn1.mul hm1

theorem exists_unif (E : Type) [Field E] [NumberField E] (Q : Finset (IsDedekindDomain.HeightOneSpectrum (𝓞 E))) :
    ∃ ϖ : 𝓞 E, ϖ ≠ 0 ∧ ∀ PP ∈ Q, ϖ ∈ PP.asIdeal ∧ ϖ ∉ PP.asIdeal ^ 2 := by
  have hx : ∀ PP : IsDedekindDomain.HeightOneSpectrum (𝓞 E), ∃ x ∈ PP.asIdeal, x ∉ PP.asIdeal ^ 2 := fun PP => by
    simpa using Ideal.exists_mem_pow_notMem_pow_succ PP.asIdeal PP.ne_bot PP.isPrime.ne_top 1
  choose x hx1 hx2 using hx
  obtain ⟨y, hy⟩ := IsDedekindDomain.exists_forall_sub_mem_ideal (s := Q)
    (fun PP => PP.asIdeal) (fun _ => 2) (fun PP _ => Ideal.prime_of_isPrime PP.ne_bot PP.isPrime)
    (fun PP _ PP' _ h e => h (IsDedekindDomain.HeightOneSpectrum.ext e)) (fun PP => x PP.1)
  have key : ∀ PP ∈ Q, y ∈ PP.asIdeal ∧ y ∉ PP.asIdeal ^ 2 := fun PP hPP => by
    have h1 := hy PP hPP
    have hle : PP.asIdeal ^ 2 ≤ PP.asIdeal := Ideal.pow_le_self (by norm_num)
    refine ⟨?_, fun h => hx2 PP ?_⟩
    · have := PP.asIdeal.add_mem (hle h1) (hx1 PP)
      simpa using this
    · have := (PP.asIdeal ^ 2).sub_mem h h1
      simpa using this
  by_cases hQ : Q.Nonempty
  · obtain ⟨PP, hPP⟩ := hQ
    refine ⟨y, fun h0 => (key PP hPP).2 (h0 ▸ Ideal.zero_mem _), key⟩
  · refine ⟨1, one_ne_zero, fun PP hPP => absurd ⟨PP, hPP⟩ hQ⟩

theorem flat_eq_unit_smul_om : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T0 : Type) (A : FamIn D.what₂.LL G Pl0 T0 D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A), GlobalTheory.Hk3.Core R F → QGuard R → ∀ (i : Fin D.R.m) (t : T0), VStd D i → ∀ f, IsFlatVec R i t f → ∃ (z : GA D (Vc D i)) (c : ℂ), IsCentAt i (R.Q t) z ∧ UnitOff (GlobalTheory.TwistField.tupPrime R t) c ∧ f = c • R.ωP i t (z, 1) (R.vP i t) := by
  intro D G _ _ Pl0 T0 A Ks _ _ _ R F hC hQG i t hV f hf
  obtain ⟨eg, eQ, fg, heg, heQ, hfg, hf⟩ := hf
  obtain ⟨ϖ, hϖ0, hϖ⟩ := exists_unif D.host.E (R.Q t)
  have hϖE : (ϖ : D.host.E) ≠ 0 := by exact_mod_cast hϖ0
  obtain ⟨z, hz, hzm⟩ := GlobalTheory.CentScal.exists_isCentAt_scalar D i (R.Q t) eQ heQ (ϖ : D.host.E) hϖE
  obtain ⟨κ, hκ, hact⟩ := _root_.GlobalTheory.TupDil.om_model_eq_unit_smul_dilate D G Pl0 T0 A Ks R F hC hQG i t hV eg eQ fg heg heQ hfg ϖ hϖ0 hϖ z hzm
  obtain ⟨Gc, hG, hSB, hvP⟩ := _root_.GlobalTheory.LiftFlatModel.lift_eq_model_flat D G Pl0 T0 A Ks R F hC hQG i t hV eg eQ fg heg heQ hfg ϖ hϖ0 hϖ
  obtain ⟨Tm, hTm⟩ := hf.1
  have hfT := hf.2 Tm hTm
  have hvT := hvP Tm hTm
  refine ⟨z, (κ * Gc)⁻¹, hz, unitOff_inv_mul hκ hG, ?_⟩
  have hne : κ * Gc ≠ 0 := mul_ne_zero hκ.1 hG.1
  have hcomp : ∀ x : WO (Vc D i) (Wc D i),
      ((x.map fun w => incA D ((ϖ : D.host.E)⁻¹) * w).map fun w => incA D (ϖ : D.host.E) * w) = x := by
    intro x
    ext a b
    simp only [Matrix.map_apply, ← mul_assoc, ← map_mul, mul_inv_cancel₀ hϖE, map_one, one_mul]
  rw [hvT, hact Tm hTm _ hSB]
  simp only [hcomp]
  have hsm : (fun x : WO (Vc D i) (Wc D i) => Gc * (if IsHalf eQ x ∧ IsIntM (frMapO (Vc D i) (Wc D i) (R.βV i) (R.βW i) x) then omegaFlat (R.Q t) (Wc D i).rank (R.xiR t) (fun PP => redM PP (frMapO (Vc D i) (Wc D i) (R.βV i) (R.βW i) x)) else 0)) =
      Gc • (fun x : WO (Vc D i) (Wc D i) => if IsHalf eQ x ∧ IsIntM (frMapO (Vc D i) (Wc D i) (R.βV i) (R.βW i) x) then omegaFlat (R.Q t) (Wc D i).rank (R.xiR t) (fun PP => redM PP (frMapO (Vc D i) (Wc D i) (R.βV i) (R.βW i) x)) else 0) := rfl
  rw [hsm, map_smul, ← hfT, smul_smul, smul_smul, mul_assoc (κ * Gc)⁻¹, inv_mul_cancel₀ hne, one_smul]

end GlobalTheory.FlatLift
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FlatVectorEqUnitMulCentralTranslateLiftVector =====
