module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPowSmulMem
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AcrisTorsionFreeComplete
import Mathlib.Algebra.GroupWithZero.Submonoid.CancelMulZero
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
import Mathlib.RingTheory.Coalgebra.CoassocSimps
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
import Development.AbelianVarietyTheory.CrystallinePeriods.RingIface

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LinEquivApply, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBcrisTensorLatticeEquivPeriodRing

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LinEquivApply =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LinEquivApply", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPowSmulMem\nimport Mathlib.Algebra.GroupWithZero.Submonoid.CancelMulZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.CoassocSimps\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

noncomputable section
set_option synthInstance.maxHeartbeats 60000

namespace GlobalTheory.BKGal.CrisTensor

attribute [-instance]
  NormedSpace.toModule Submodule.normedSpace Submodule.seminormedAddCommGroup
  Submodule.normedAddCommGroup SubalgebraClass.toNormedAlgebra
  Subalgebra.isScalarTower_left Subalgebra.isScalarTower_mid
  Submonoid.instIsScalarTowerSubtypeMem Submonoid.instSMulCommClassSubtypeMem_1
  Subalgebra.smulCommClass_right Subalgebra.smulCommClass_left
  MulSemiringAction.toDistribMulAction
  RingHomClass.toLinearMapClassNNRat RingHomClass.toLinearMapClassRat
  NonUnitalAlgHomClass.instLinearMapClass
  NonUnitalAlgHomClass.instSemilinearMapClassOfNonUnitalAlgSemiHomClassOfClassRingHom
  Algebra.TensorProduct.instNonUnitalSemiring Algebra.TensorProduct.instNonUnitalRing
attribute [local instance high]
  Submodule.module TensorProduct.leftModule Algebra.TensorProduct.leftAlgebra

variable {l : ℕ} [Fact l.Prime] {LL : FinExt l}

section Zl

@[reducible] def zlT (T : QLat LL) : Module ℤ_[l] ↥T.L.T := Module.compHom _ (algebraMap ℤ_[l] ↥(OL LL))

@[reducible] def zlV (T : QLat LL) : Module ℤ_[l] T.V := Module.compHom _ (algebraMap ℤ_[l] ℚ_[l])

@[reducible] def zlB (Pl : LocPrime l) : Module ℤ_[l] Pl.R.B := Module.compHom _ (algebraMap ℤ_[l] ℚ_[l])

attribute [local instance] zlT zlV zlB

theorem towT (T : QLat LL) : IsScalarTower ℤ_[l] ↥(OL LL) ↥T.L.T :=
  IsScalarTower.of_algebraMap_smul fun _ _ => rfl

theorem towV (T : QLat LL) : IsScalarTower ℤ_[l] ℚ_[l] T.V :=
  IsScalarTower.of_algebraMap_smul fun _ _ => rfl

theorem towB (Pl : LocPrime l) : IsScalarTower ℤ_[l] ℚ_[l] Pl.R.B :=
  IsScalarTower.of_algebraMap_smul fun _ _ => rfl

attribute [local instance] towT towV towB

def incl (T : QLat LL) : ↥T.L.T →ₗ[ℤ_[l]] T.V where
  toFun x := x
  map_add' _ _ := rfl
  map_smul' z x := by
    change ((algebraMap ℤ_[l] ↥(OL LL) z • x : ↥T.L.T) : T.V) = algebraMap ℤ_[l] ℚ_[l] z • (x : T.V)
    rw [Submodule.coe_smul, ← algebraMap_smul ↥LL.1 (algebraMap ℤ_[l] ↥(OL LL) z) (x : T.V),
      ← algebraMap_smul ↥LL.1 (algebraMap ℤ_[l] ℚ_[l] z) (x : T.V)]
    rfl

theorem zl_smul_V (T : QLat LL) (z : ℤ_[l]) (v : T.V) : z • v = algebraMap ℚ_[l] ↥LL.1 (z : ℚ_[l]) • v := by
  change algebraMap ℤ_[l] ℚ_[l] z • v = _
  rw [← algebraMap_smul ↥LL.1 (algebraMap ℤ_[l] ℚ_[l] z) v]
  rfl

theorem isLoc (T : QLat LL) : IsLocalizedModule (nonZeroDivisors ℤ_[l]) (incl T) := by
  refine ⟨fun s => ?_, fun y => ?_, fun {x₁ x₂} h => ⟨1, ?_⟩⟩
  · have hs : ((s : ℤ_[l]) : ℚ_[l]) ≠ 0 := by
      rw [Ne, PadicInt.coe_eq_zero]; exact nonZeroDivisors.coe_ne_zero s
    have hs' : algebraMap ℚ_[l] ↥LL.1 ((s : ℤ_[l]) : ℚ_[l]) ≠ 0 := by
      rwa [Ne, map_eq_zero_iff _ (algebraMap ℚ_[l] ↥LL.1).injective]
    refine (Module.End.isUnit_iff _).2 ⟨fun a b hab => ?_, fun a => ?_⟩
    · rw [Module.algebraMap_end_apply, Module.algebraMap_end_apply, zl_smul_V, zl_smul_V] at hab
      exact smul_right_injective _ hs' hab
    · refine ⟨(algebraMap ℚ_[l] ↥LL.1 ((s : ℤ_[l]) : ℚ_[l]))⁻¹ • a, ?_⟩
      rw [Module.algebraMap_end_apply, zl_smul_V, smul_smul, mul_inv_cancel₀ hs', one_smul]
  · obtain ⟨n, hn⟩ := _root_.GlobalTheory.IntegralPowerScalar.exists_pow_smul_mem T y
    have hl : ((l : ℤ_[l]) ^ n) ∈ nonZeroDivisors ℤ_[l] :=
      mem_nonZeroDivisors_of_ne_zero (pow_ne_zero _ (Nat.cast_ne_zero.2 (Fact.out : l.Prime).ne_zero))
    refine ⟨(⟨_, hn⟩, ⟨_, hl⟩), ?_⟩
    show ((l : ℤ_[l]) ^ n) • y = (l : ↥LL.1) ^ n • y
    rw [zl_smul_V]
    congr 1
    simp only [PadicInt.coe_pow, PadicInt.coe_natCast, map_pow, map_natCast]
  · simp only [one_smul]; exact Subtype.ext h

theorem hbc (T : QLat LL) : IsBaseChange ℚ_[l] (incl T) :=
  (isLocalizedModule_iff_isBaseChange (nonZeroDivisors ℤ_[l]) ℚ_[l] (incl T)).1 (isLoc T)

variable {Bc : Type} [CommRing Bc] [Algebra ℤ_[l] Bc] {Pl : LocPrime l}

def ringLin (eB : Pl.R.B ≃+* Bc) (hz : ∀ z : ℤ_[l], eB (algebraMap ℚ_[l] Pl.R.B (z : ℚ_[l])) = algebraMap ℤ_[l] Bc z) :
    Bc ≃ₗ[ℤ_[l]] Pl.R.B :=
  { eB.symm.toAddEquiv with
    map_smul' := fun z b => by
      show eB.symm (z • b) = algebraMap ℤ_[l] ℚ_[l] z • eB.symm b
      rw [Algebra.smul_def z b, map_mul, Algebra.smul_def]
      congr 1
      rw [RingEquiv.symm_apply_eq]
      exact (hz z).symm }

def swapLat (T : QLat LL) : TW (↥(OL LL) ⊗[ℤ_[l]] Bc) T ≃ₗ[↥(OL LL)] ↥T.L.T ⊗[↥(OL LL)] (↥(OL LL) ⊗[ℤ_[l]] Bc) :=
  TensorProduct.comm ↥(OL LL) (↥(OL LL) ⊗[ℤ_[l]] Bc) ↥T.L.T

def cancelCoeff (T : QLat LL) : ↥T.L.T ⊗[↥(OL LL)] (↥(OL LL) ⊗[ℤ_[l]] Bc) ≃ₗ[↥(OL LL)] ↥T.L.T ⊗[ℤ_[l]] Bc :=
  AlgebraTensorModule.cancelBaseChange ℤ_[l] ↥(OL LL) ↥(OL LL) ↥T.L.T Bc

def changeRing (T : QLat LL) (eB : Pl.R.B ≃+* Bc)
    (hz : ∀ z : ℤ_[l], eB (algebraMap ℚ_[l] Pl.R.B (z : ℚ_[l])) = algebraMap ℤ_[l] Bc z) :
    ↥T.L.T ⊗[ℤ_[l]] Bc ≃ₗ[ℤ_[l]] Pl.R.B ⊗[ℤ_[l]] ↥T.L.T :=
  (TensorProduct.congr (LinearEquiv.refl ℤ_[l] ↥T.L.T) (ringLin eB hz)).trans (TensorProduct.comm ℤ_[l] ↥T.L.T Pl.R.B)


variable (Pl) in
def invertPrime (T : QLat LL) : Pl.R.B ⊗[ℤ_[l]] ↥T.L.T ≃ₗ[ℚ_[l]] T.V ⊗[ℚ_[l]] Pl.R.B :=
  (AlgebraTensorModule.cancelBaseChange ℤ_[l] ℚ_[l] ℚ_[l] Pl.R.B ↥T.L.T).symm.trans
     ((TensorProduct.congr (LinearEquiv.refl ℚ_[l] Pl.R.B) (hbc T).equiv).trans
       (TensorProduct.comm ℚ_[l] Pl.R.B T.V))

def addEquiv (T : QLat LL) (eB : Pl.R.B ≃+* Bc)
    (hz : ∀ z : ℤ_[l], eB (algebraMap ℚ_[l] Pl.R.B (z : ℚ_[l])) = algebraMap ℤ_[l] Bc z) :
    TW (↥(OL LL) ⊗[ℤ_[l]] Bc) T ≃+ T.V ⊗[ℚ_[l]] Pl.R.B :=
  (((swapLat T).trans (cancelCoeff T)).toAddEquiv.trans (changeRing T eB hz).toAddEquiv).trans (invertPrime Pl T).toAddEquiv

theorem addEquiv_tmul (T : QLat LL) (eB : Pl.R.B ≃+* Bc)
    (hz : ∀ z : ℤ_[l], eB (algebraMap ℚ_[l] Pl.R.B (z : ℚ_[l])) = algebraMap ℤ_[l] Bc z)
    (o : ↥(OL LL)) (b : Bc) (x : ↥T.L.T) :
    addEquiv T eB hz ((o ⊗ₜ[ℤ_[l]] b) ⊗ₜ[↥(OL LL)] x) = (((o • x : ↥T.L.T)) : T.V) ⊗ₜ[ℚ_[l]] eB.symm b := by
  exact congrArg (fun v : T.V => v ⊗ₜ[ℚ_[l]] eB.symm b) (one_smul ℚ_[l] ((o • x : ↥T.L.T) : T.V))

end Zl

private theorem nestedTensor_addHom_ext {R S M N X Y : Type}
    [CommSemiring R] [CommSemiring S] [AddCommMonoid M] [AddCommMonoid N]
    [Module R M] [Module R N] [Module S (M ⊗[R] N)] [AddCommMonoid X] [Module S X]
    [AddCommMonoid Y] (f g : (M ⊗[R] N) ⊗[S] X →+ Y) (w : (M ⊗[R] N) ⊗[S] X)
    (h : ∀ m n x, f ((m ⊗ₜ[R] n) ⊗ₜ[S] x) = g ((m ⊗ₜ[R] n) ⊗ₜ[S] x)) : f w = g w := by
  refine TensorProduct.inductionOn w ?_ ?_
  · intro y x
    refine TensorProduct.inductionOn y (fun m n => h m n x) ?_
    intro y₁ y₂ h₁ h₂
    simp only [add_tmul, f.map_add, g.map_add, h₁, h₂]
  · intro w₁ w₂ h₁ h₂
    simp only [f.map_add, g.map_add, h₁, h₂]

variable {Pl : LocPrime l}

theorem addEquiv_smul (T : QLat LL) (eB : Pl.R.B ≃+* Per.Bcris l)
    (hz : ∀ z : ℤ_[l], eB (algebraMap ℚ_[l] Pl.R.B (z : ℚ_[l])) = algebraMap ℤ_[l] (Per.Bcris l) z)
    (c : ↥(OL LL)) (w : TW (OB l ↥(OL LL)) T) :
    addEquiv T eB hz (c • w) = c • addEquiv T eB hz w := by
  let e := (addEquiv T eB hz).toAddMonoidHom
  let smulSource := DistribSMul.toAddMonoidHom (TW (OB l ↥(OL LL)) T) c
  let smulTarget := DistribSMul.toAddMonoidHom (T.V ⊗[ℚ_[l]] Pl.R.B) c
  refine nestedTensor_addHom_ext (R := ℤ_[l]) (S := ↥(OL LL))
    (e.comp smulSource) (smulTarget.comp e) w ?_
  intro o b x
  have hx : (((c • o) • x : ↥T.L.T) : T.V) = (c : ↥LL.1) • ((o • x : ↥T.L.T) : T.V) := by
    rw [smul_assoc, Submodule.coe_smul, ← algebraMap_smul ↥LL.1 c]
    rfl
  exact (addEquiv_tmul T eB hz (c • o) b x).trans <|
    (congrArg (fun v : T.V => v ⊗ₜ[ℚ_[l]] eB.symm b) hx).trans <|
      (congrArg smulTarget (addEquiv_tmul T eB hz o b x)).symm

def linEquiv (T : QLat LL) (eB : Pl.R.B ≃+* Per.Bcris l)
    (hz : ∀ z : ℤ_[l], eB (algebraMap ℚ_[l] Pl.R.B (z : ℚ_[l])) = algebraMap ℤ_[l] (Per.Bcris l) z) :
    TW (OB l ↥(OL LL)) T ≃ₗ[↥(OL LL)] T.V ⊗[ℚ_[l]] Pl.R.B :=
  (addEquiv T eB hz).toLinearEquiv (addEquiv_smul T eB hz)

theorem linEquiv_one (T : QLat LL) (eB : Pl.R.B ≃+* Per.Bcris l)
    (hz : ∀ z : ℤ_[l], eB (algebraMap ℚ_[l] Pl.R.B (z : ℚ_[l])) = algebraMap ℤ_[l] (Per.Bcris l) z)
    (x : ↥T.L.T) :
    linEquiv T eB hz ((1 : OB l ↥(OL LL)) ⊗ₜ[↥(OL LL)] x) = (x : T.V) ⊗ₜ[ℚ_[l]] (1 : Pl.R.B) := by
  exact (addEquiv_tmul T eB hz 1 1 x).trans <|
    congrArg₂ (fun (v : T.V) (b : Pl.R.B) => v ⊗ₜ[ℚ_[l]] b)
      (congrArg Subtype.val (one_smul ↥(OL LL) x)) eB.symm.map_one

theorem linEquiv_act (T : QLat LL) (eB : Pl.R.B ≃+* Per.Bcris l)
    (hz : ∀ z : ℤ_[l], eB (algebraMap ℚ_[l] Pl.R.B (z : ℚ_[l])) = algebraMap ℤ_[l] (Per.Bcris l) z)
    (hact : ∀ (g : GQ l) (b : Pl.R.B), eB (Pl.actQ g b) = Per.σB g (eB b))
    (g : Gl l) (w : TW (OB l ↥(OL LL)) T) :
    linEquiv T eB hz (actB (sQ l) T g w) = actVB (Pl.PD (Formalism.MainNotions.ElementDenominator.qlExt l)) T.ρ g (linEquiv T eB hz w) := by
  let e := (addEquiv T eB hz).toAddMonoidHom
  let actSource := (actB (sQ l) T g).toAddMonoidHom
  let actTarget := actVB (Pl.PD (Formalism.MainNotions.ElementDenominator.qlExt l)) T.ρ g
  refine nestedTensor_addHom_ext (R := ℤ_[l]) (S := ↥(OL LL))
    (e.comp actSource) (actTarget.toAddMonoidHom.comp e) w ?_
  intro o b x
  have hx := congrArg Subtype.val ((T.actT g).map_smul o x).symm
  have hb : eB.symm (Per.σB (g : GQ l) b) =
      (Pl.PD (Formalism.MainNotions.ElementDenominator.qlExt l)).actB g (eB.symm b) := by
    rw [Pl.PD_actB, RingEquiv.symm_apply_eq, hact, RingEquiv.apply_symm_apply]
  exact (addEquiv_tmul T eB hz o (Per.σB (g : GQ l) b) (T.actT g x)).trans <|
    (congrArg₂ (fun (v : T.V) (d : Pl.R.B) => v ⊗ₜ[ℚ_[l]] d) hx hb).trans <|
      (congrArg actTarget (addEquiv_tmul T eB hz o b x)).symm

theorem linEquiv_frob (T : QLat LL) (eB : Pl.R.B ≃+* Per.Bcris l)
    (hz : ∀ z : ℤ_[l], eB (algebraMap ℚ_[l] Pl.R.B (z : ℚ_[l])) = algebraMap ℤ_[l] (Per.Bcris l) z)
    (hfr : ∀ b : Pl.R.B, eB (Pl.φB b) = Per.φB l (eB b))
    (w : TW (OB l ↥(OL LL)) T) :
    linEquiv T eB hz (TWmap (frobOB l ↥(OL LL)) T w) =
      φVB (LL := ↥LL.1) (Pl.PD (Formalism.MainNotions.ElementDenominator.qlExt l)) (linEquiv T eB hz w) := by
  let e := (addEquiv T eB hz).toAddMonoidHom
  let frobSource := (TWmap (frobOB l ↥(OL LL)) T).toAddMonoidHom
  let frobTarget := φVB (LL := ↥LL.1) (V := T.V)
    (Pl.PD (Formalism.MainNotions.ElementDenominator.qlExt l))
  refine nestedTensor_addHom_ext (R := ℤ_[l]) (S := ↥(OL LL))
    (e.comp frobSource) (frobTarget.toAddMonoidHom.comp e) w ?_
  intro o b x
  have hb : eB.symm (Per.φB l b) =
      (Pl.PD (Formalism.MainNotions.ElementDenominator.qlExt l)).φ (eB.symm b) := by
    rw [Pl.PD_φ, RingEquiv.symm_apply_eq, hfr, RingEquiv.apply_symm_apply]
  exact (addEquiv_tmul T eB hz o (Per.φB l b) x).trans <|
    (congrArg (fun d : Pl.R.B => ((o • x : ↥T.L.T) : T.V) ⊗ₜ[ℚ_[l]] d) hb).trans <|
      (congrArg frobTarget (addEquiv_tmul T eB hz o b x)).symm

end GlobalTheory.BKGal.CrisTensor
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LinEquivApply =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBcrisTensorLatticeEquivPeriodRing =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBcrisTensorLatticeEquivPeriodRing", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AcrisTorsionFreeComplete\nimport Development.AbelianVarietyTheory.CrystallinePeriods.RingIface\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LinEquivApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

noncomputable section

namespace GlobalTheory.BKGal.CrisTensor

attribute [-instance]
  NormedSpace.toModule Submodule.normedSpace Submodule.seminormedAddCommGroup
  Submodule.normedAddCommGroup SubalgebraClass.toNormedAlgebra
  Subalgebra.isScalarTower_left Subalgebra.isScalarTower_mid
  Submonoid.instIsScalarTowerSubtypeMem Submonoid.instSMulCommClassSubtypeMem_1
  Subalgebra.smulCommClass_right Subalgebra.smulCommClass_left
  MulSemiringAction.toDistribMulAction
  RingHomClass.toLinearMapClassNNRat RingHomClass.toLinearMapClassRat
  NonUnitalAlgHomClass.instLinearMapClass
  NonUnitalAlgHomClass.instSemilinearMapClassOfNonUnitalAlgSemiHomClassOfClassRingHom
  Algebra.TensorProduct.instNonUnitalSemiring Algebra.TensorProduct.instNonUnitalRing
attribute [local instance high]
  Submodule.module TensorProduct.leftModule Algebra.TensorProduct.leftAlgebra

theorem mem_finiteCocycles_iff_bcrisTensor_coboundary {l : ℕ} [Fact l.Prime] {LL : FinExt l} (T : QLat LL) (Pl : LocPrime l)
    (hpow : ∀ v : T.V, ∃ n : ℕ, (l : ↥LL.1) ^ n • v ∈ T.L.T)
    (β : TW (OB l ↥(OL LL)) T ≃ₗ[↥(OL LL)] T.V ⊗[ℚ_[l]] Pl.R.B)
    (h1 : ∀ x : ↥T.L.T, β ((1 : OB l ↥(OL LL)) ⊗ₜ[↥(OL LL)] x) = (x : T.V) ⊗ₜ[ℚ_[l]] (1 : Pl.R.B))
    (h2 : ∀ g b, β (actB (sQ l) T g b) = actVB (Pl.PD (Formalism.MainNotions.ElementDenominator.qlExt l)) T.ρ g (β b))
    (c : Gl l → T.V) (hc : c ∈ continuousCocycles T.ρ) :
    c ∈ finiteCocycles (Pl.PD (Formalism.MainNotions.ElementDenominator.qlExt l)) T.ρ ↔ ∃ b, IsCobOf (sQ l) T b c := by
  have hl : ∀ n : ℕ, (l : ↥LL.1) ^ n ≠ 0 := fun n =>
    pow_ne_zero _ (Nat.cast_ne_zero.2 (Fact.out : l.Prime).ne_zero)
  have key : ∀ (b : TW (OB l ↥(OL LL)) T) (g : Gl l) (n : ℕ),
      β ((l : ↥(OL LL)) ^ n • (actB (sQ l) T g b - b)) =
        (l : ↥LL.1) ^ n • (actVB (Pl.PD (Formalism.MainNotions.ElementDenominator.qlExt l)) T.ρ g (β b) - β b) := by
    intro b g n
    have e1 := β.map_smul ((l : ↥(OL LL)) ^ n) (actB (sQ l) T g b - b)
    have e2 : β (actB (sQ l) T g b - b) = actVB (Pl.PD (Formalism.MainNotions.ElementDenominator.qlExt l)) T.ρ g (β b) - β b :=
      (map_sub β _ _).trans (congrArg (· - β b) (h2 g b))
    have e3 : (((l : ↥(OL LL)) ^ n : ↥(OL LL)) : ↥LL.1) = (l : ↥LL.1) ^ n := by simp
    rw [← e3, ← e2]
    exact e1
  have kx : ∀ (g : Gl l) (n : ℕ) (x : ↥T.L.T), (x : T.V) = (l : ↥LL.1) ^ n • c g →
      β ((1 : OB l ↥(OL LL)) ⊗ₜ[↥(OL LL)] x) = (l : ↥LL.1) ^ n • (c g ⊗ₜ[ℚ_[l]] (1 : Pl.R.B)) := by
    intro g n x hx
    rw [h1, hx]
    exact (TensorProduct.smul_tmul' _ _ _).symm
  constructor
  · rintro ⟨-, y, hy⟩
    obtain ⟨b, rfl⟩ := β.surjective y
    refine ⟨b, fun g n x hx => β.injective ?_⟩
    exact (kx g n x hx).trans ((congrArg (fun z => (l : ↥LL.1) ^ n • z) (hy g)).trans (key b g n).symm)
  · rintro ⟨b, hb⟩
    refine ⟨hc, β b, fun g => ?_⟩
    obtain ⟨n, hn⟩ := hpow (c g)
    have h3 := (kx g n ⟨_, hn⟩ rfl).symm.trans ((congrArg β (hb g n ⟨_, hn⟩ rfl)).trans (key b g n))
    have h4 := congrArg (fun z => ((l : ↥LL.1) ^ n)⁻¹ • z) h3
    simpa only [inv_smul_smul₀ (hl n)] using h4

theorem exists_equiv : ∀ (l : ℕ) [Fact l.Prime] (LL : FinExt l) (T : QLat LL) (Pl : LocPrime l) (AI : LocAinf l Pl), IsStd Pl AI → ∃ β : TW (OB l ↥(OL LL)) T ≃ₗ[↥(OL LL)] T.V ⊗[ℚ_[l]] Pl.R.B, (∀ x : ↥T.L.T, β ((1 : OB l ↥(OL LL)) ⊗ₜ[↥(OL LL)] x) = (x : T.V) ⊗ₜ[ℚ_[l]] (1 : Pl.R.B)) ∧ (∀ g b, β (actB (sQ l) T g b) = actVB (Pl.PD (Formalism.MainNotions.ElementDenominator.qlExt l)) T.ρ g (β b)) ∧ (∀ b, β (TWmap (frobOB l ↥(OL LL)) T b) = φVB (LL := ↥LL.1) (Pl.PD (Formalism.MainNotions.ElementDenominator.qlExt l)) (β b)) ∧ ∀ c ∈ continuousCocycles T.ρ, (c ∈ finiteCocycles (Pl.PD (Formalism.MainNotions.ElementDenominator.qlExt l)) T.ρ ↔ ∃ b, IsCobOf (sQ l) T b c) := by
  intro l _ LL T Pl AI hS
  obtain ⟨Ti⟩ := hS
  have hz : ∀ z : ℤ_[l], Ti.eB (algebraMap ℚ_[l] Pl.R.B (z : ℚ_[l])) = algebraMap ℤ_[l] (Per.Bcris l) z :=
    fun z => (Ti.zB z).trans (_root_.GlobalTheory.RingIface.aB_algebraMap_padicInt l z).symm
  exact ⟨linEquiv T Ti.eB hz, linEquiv_one T Ti.eB hz, linEquiv_act T Ti.eB hz Ti.actB,
    linEquiv_frob T Ti.eB hz Ti.frob,
    mem_finiteCocycles_iff_bcrisTensor_coboundary T Pl (_root_.GlobalTheory.IntegralPowerScalar.exists_pow_smul_mem T) _ (linEquiv_one T Ti.eB hz) (linEquiv_act T Ti.eB hz Ti.actB)⟩

end GlobalTheory.BKGal.CrisTensor
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBcrisTensorLatticeEquivPeriodRing =====
