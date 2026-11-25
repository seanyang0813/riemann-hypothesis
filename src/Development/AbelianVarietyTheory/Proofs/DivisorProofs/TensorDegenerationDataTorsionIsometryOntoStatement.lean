module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorTorusPointOfComponentTuple
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceMul
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDataValuesFactsStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceMulStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondencePeriodStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceUniqueComponentsStatement
public import Development.AbelianVarietyTheory.Definitions.Degenerations.CharZeroOfIsPrimitiveRoot
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorTorusPointOfComponentTupleStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceUniquePointStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GtRelVIff
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiAdjTensorPowerIntMatrixEndomorphism
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.WithISelf
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsProjOverWeierstrass
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusTorsionPointsCorrespondValues
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsIntegralDegenerationValues
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsMatrixRingAct
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RosVal
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.NormalisedRosatiGeneratorValuesMoveAlongIso
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsLocalRingQuotientPow
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusExtensionActionInValues
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.DegenerationWeilPairingProperties
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FamiliesValuesCorrespond
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorsionPairingValuesOfFamiliesValues

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGtOver, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusComponentsOfUnimodularTensor, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusComponentsOfUnimodularTensorStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsComponentTupleTensorTorsionUnimodular, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDegenerationValuesAlgClosedField, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorTorsionPointOfComponentTuple, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiGeneratorComponentsTorusExtension, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiGeneratorComponentsTorusExtensionStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiValueTensorDataTransportLambdaBundle, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiValuesTensorDataMatrixAction, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiValuesTensorDataMatrixActionStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorQuotientTorsionOrderActionMatrix, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorQuotientTorsionOrderActionMatrixStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionAddComponentwise, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionPointEquivIffComponentsEquiv, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionTowerNsmulComponentwise, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionPairingEqProdFactorPairings, Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairingTensorTorsionEqProdComponents, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationDataTorsionIsometryOnto, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationDataTorsionIsometryOntoStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGtOver =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGtOver", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor

namespace GlobalTheory.Mum.TensTor.Vonto

theorem sum_sym_inv {G : Type} [AddCommGroup G] {r : ℕ} (W C : Matrix (Fin r) (Fin r) ℤ)
    (h : (W + W.transpose) * C = 1) (a : Fin r → Fin r → G) :
    ∑ i, ∑ j, W i j • ((∑ k, C j k • a i k) + ∑ k, C i k • a j k) = ∑ i, a i i := by
  have e3 : ∀ i k, ∑ j, (W i j + W j i) * C j k = if i = k then 1 else 0 := fun i k => by
    have := congrFun (congrFun h i) k
    rw [Matrix.mul_apply, Matrix.one_apply] at this
    simpa using this
  have e1 : ∀ i, ∑ j, W i j • ((∑ k, C j k • a i k) + ∑ k, C i k • a j k) =
      ∑ j, W i j • ∑ k, C j k • a i k + ∑ j, W i j • ∑ k, C i k • a j k := fun i => by
    rw [← Finset.sum_add_distrib]; exact Finset.sum_congr rfl fun j _ => smul_add _ _ _
  rw [Finset.sum_congr rfl fun i _ => e1 i, Finset.sum_add_distrib]
  rw [show (∑ i, ∑ j, W i j • ∑ k, C i k • a j k) = ∑ i, ∑ j, W j i • ∑ k, C j k • a i k from Finset.sum_comm]
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [← Finset.sum_add_distrib]
  simp_rw [← add_smul, Finset.smul_sum, ← mul_smul]
  rw [Finset.sum_comm]
  simp_rw [← Finset.sum_smul, e3, ite_smul, one_smul, zero_smul]
  simp

end GlobalTheory.Mum.TensTor.Vonto

namespace GlobalTheory.Mum.TensTor.Vonto

section Split

variable {X U : Type} [AddCommGroup X] [CommGroup U]

@[ext] structure ExtPt (f : X → X → U) where

  a : X

  u : U

instance (f : X → X → U) : Add (ExtPt f) := ⟨fun p q => ⟨p.a + q.a, p.u * q.u / f p.a q.a⟩⟩

instance (f : X → X → U) : Zero (ExtPt f) := ⟨⟨0, 1⟩⟩

instance (f : X → X → U) : Neg (ExtPt f) := ⟨fun p => ⟨-p.a, f p.a (-p.a) / p.u⟩⟩

def extGroup (f : X → X → U) (f0 : ∀ a, f 0 a = 1) (fs : ∀ a b, f a b = f b a)
    (fc : ∀ a b c, f (a + b) c * f a b = f a (b + c) * f b c) : AddCommGroup (ExtPt f) where
  add_assoc p q w := by
    refine ExtPt.ext (add_assoc p.a q.a w.a) ?_
    change p.u * q.u / f p.a q.a * w.u / f (p.a + q.a) w.a = p.u * (q.u * w.u / f q.a w.a) / f p.a (q.a + w.a)
    have h := congrArg Additive.ofMul (fc p.a q.a w.a)
    apply Additive.ofMul.injective
    simp only [ofMul_mul, ofMul_div] at h ⊢
    linear_combination (norm := abel) -h
  zero_add p := by
    refine ExtPt.ext (zero_add p.a) ?_
    change 1 * p.u / f 0 p.a = p.u
    rw [f0, _root_.one_mul, div_one]
  add_zero p := by
    refine ExtPt.ext (add_zero p.a) ?_
    change p.u * 1 / f p.a 0 = p.u
    rw [fs, f0, _root_.mul_one, div_one]
  neg_add_cancel p := by
    refine ExtPt.ext (neg_add_cancel p.a) ?_
    change f p.a (-p.a) / p.u * p.u / f (-p.a) p.a = 1
    rw [fs (-p.a), div_mul_cancel, div_self']
  add_comm p q := by
    refine ExtPt.ext (add_comm p.a q.a) ?_
    change p.u * q.u / f p.a q.a = q.u * p.u / f q.a p.a
    rw [mul_comm p.u, fs]
  nsmul := nsmulRec
  zsmul := zsmulRec

theorem exists_split [Module.Free ℤ X] (f : X → X → U) (f0 : ∀ a, f 0 a = 1) (fs : ∀ a b, f a b = f b a)
    (fc : ∀ a b c, f (a + b) c * f a b = f a (b + c) * f b c) :
    ∃ s : X → U, ∀ a b, s (a + b) * f a b = s a * s b := by
  letI := extGroup f f0 fs fc
  let bX := Module.Free.chooseBasis ℤ X
  let h : X →ₗ[ℤ] ExtPt f := bX.constr ℤ fun i => ⟨bX i, 1⟩
  let p : ExtPt f →ₗ[ℤ] X := AddMonoidHom.toIntLinearMap ⟨⟨ExtPt.a, rfl⟩, fun _ _ => rfl⟩
  have hp : p ∘ₗ h = LinearMap.id := bX.ext fun i => by
    change (h (bX i)).a = bX i
    simp only [h, bX.constr_basis]
  have ha : ∀ x, (h x).a = x := fun x => LinearMap.congr_fun hp x
  refine ⟨fun x => (h x).u, fun a b => ?_⟩
  have e : (h (a + b)).u = (h a).u * (h b).u / f (h a).a (h b).a := congrArg ExtPt.u (map_add h a b)
  show (h (a + b)).u * f a b = (h a).u * (h b).u
  rw [e, ha, ha, div_mul_cancel]

end Split

theorem exists_gt_over {F : Type} [Field F] (N : NumD F) (b : N.A) : ∃ g : N.Gt, g.b = b := by
  obtain ⟨s, hs⟩ := exists_split (fun χ χ' => N.θ (N.c χ) (N.c χ') b)
    (fun a => by rw [N.c_zero, N.cub.face]) (fun a a' => N.cub.s01 _ _ _)
    (fun a a' a'' => by simp only [N.c_add]; exact N.cub.coc _ _ _ _)
  exact ⟨⟨b, s, hs⟩, rfl⟩

end GlobalTheory.Mum.TensTor.Vonto

namespace GlobalTheory.Mum.TensTor.Vonto

variable {F : Type} [Field F] {N N' : NumD F} {r : ℕ} {W : Matrix (Fin r) (Fin r) ℤ}
  {φ : N'.A → Fin r → N.A} {e : N'.X → Fin r → N.X} {wv : N'.A → F}

theorem tor_rel (hT : TensFacts W φ e wv) (hdet : IsUnit (W + W.transpose).det) (t' : Multiplicative N'.X →* Fˣ) :
    ∃ ts : Fin r → (Multiplicative N.X →* Fˣ), GtRelV W φ e wv (N'.tor t') fun j => N.tor (ts j) := by
  obtain ⟨hφm, -, hem, heb, -, -, -, -⟩ := hT
  have hBC : (W + W.transpose) * (W + W.transpose)⁻¹ = 1 := Matrix.mul_nonsing_inv _ hdet
  let E : N'.X ≃+ (Fin r → N.X) := AddEquiv.ofBijective (AddMonoidHom.mk' e fun a b => funext (hem a b)) heb
  let sH : Fin r → Multiplicative N.X →* Fˣ := fun k =>
    t'.comp (AddMonoidHom.toMultiplicative ((E.symm : (Fin r → N.X) →+ N'.X).comp (AddMonoidHom.single (fun _ : Fin r => N.X) k)))
  let C : Fin r → Fin r → ℤ := ((W + W.transpose)⁻¹ : Matrix (Fin r) (Fin r) ℤ)
  let M : Fin r → Fin r → ℤ := W
  refine ⟨fun j => ∏ k, sH k ^ C j k, fun j => ?_, fun χ' => ?_⟩
  · have h1 := hφm 1 1 j
    rw [_root_.mul_one] at h1
    exact mul_eq_left.1 h1.symm
  · have hχ : χ' = ∑ i, E.symm (Pi.single i (e χ' i)) := by
      set_option synthInstance.maxHeartbeats 100000 in
        rw [← map_sum, Finset.univ_sum_single]; exact (E.symm_apply_apply χ').symm
    have ht : t' (Multiplicative.ofAdd χ') = ∏ i, sH i (Multiplicative.ofAdd (e χ' i)) := by
      conv_lhs => rw [hχ]
      rw [ofAdd_sum, map_prod]
      rfl
    simp only [NumD.torus_generator_apply, NumD.tor_b, N.cub.face₂, _root_.mul_one, div_one]
    congr 2
    congr 1
    rw [ht]
    change (∏ i, sH i (Multiplicative.ofAdd (e χ' i))) =
      ∏ i, ∏ j, ((∏ k, sH k ^ C j k) (Multiplicative.ofAdd (e χ' i)) *
        (∏ k, sH k ^ C i k) (Multiplicative.ofAdd (e χ' j))) ^ M i j
    have hp (f : Fin r → (Multiplicative N.X →* Fˣ)) (x : Multiplicative N.X) :
        (∏ k, f k) x = ∏ k, f k x := by
      exact map_prod (MonoidHom.eval x) _ _
    simp only [hp, MonoidHom.zpow_apply]
    apply Additive.ofMul.injective
    simp only [ofMul_prod, ofMul_zpow, ofMul_mul]
    exact (sum_sym_inv W C hBC fun i k => Additive.ofMul (sH k (Multiplicative.ofAdd (e χ' i)))).symm

end GlobalTheory.Mum.TensTor.Vonto

namespace GlobalTheory.Mum.TensTor.Vonto

variable {F : Type} [Field F] {N N' : NumD F} {r : ℕ} {W : Matrix (Fin r) (Fin r) ℤ}
  {φ : N'.A → Fin r → N.A} {e : N'.X → Fin r → N.X} {wv : N'.A → F}

theorem of_exist_mul (hT : TensFacts W φ e wv) (hdet : IsUnit (W + W.transpose).det)
    (hex : ∀ vs : Fin r → N.Gt, ∃ v' : N'.Gt, GtRelV W φ e wv v' vs)
    (hmul : ∀ (v' u' : N'.Gt) (vs us : Fin r → N.Gt), GtRelV W φ e wv v' vs → GtRelV W φ e wv u' us →
      GtRelV W φ e wv (v' * u') (vs * us))
    (v' : N'.Gt) : ∃ vs : Fin r → N.Gt, GtRelV W φ e wv v' vs := by
  choose g hg using fun j => exists_gt_over N (φ v'.b j)
  obtain ⟨u', hu'⟩ := hex g
  have hb : u'.b = v'.b := hT.2.1.1 (funext fun j => (hu'.1 j).trans (hg j))
  obtain ⟨t', ht'⟩ := (N'.exists_tor_iff (u'⁻¹ * v')).2 (by rw [NumD.Gt.mul_b, NumD.Gt.inv_b, hb, inv_mul_cancel])
  obtain ⟨ts, hts⟩ := tor_rel hT hdet t'
  have h := hmul u' (N'.tor t') g (fun j => N.tor (ts j)) hu' hts
  rw [ht', mul_inv_cancel_left] at h
  exact ⟨_, h⟩

end GlobalTheory.Mum.TensTor.Vonto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGtOver =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusComponentsOfUnimodularTensor =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusComponentsOfUnimodularTensor", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGtOver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorTorusPointOfComponentTuple\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor

namespace GlobalTheory.Mum.TensTor

theorem gtRelV_onto (F : Type) [Field F] (N N' : NumD F) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ)
    (φ : N'.A → Fin r → N.A) (e : N'.X → Fin r → N.X) (wv : N'.A → F) (hT : TensFacts W φ e wv)
    (hdet : IsUnit (W + W.transpose).det) (v' : N'.Gt) : ∃ vs : Fin r → N.Gt, GtRelV W φ e wv v' vs :=
  Vonto.of_exist_mul hT hdet (VExist.gtRelV_exists F N N' W φ e wv hT)
    (gtRelV_mul F N N' W φ e wv hT) v'

end GlobalTheory.Mum.TensTor
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusComponentsOfUnimodularTensor =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusComponentsOfUnimodularTensorStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusComponentsOfUnimodularTensorStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusComponentsOfUnimodularTensor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusComponentsOfUnimodularTensorStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsComponentTupleTensorTorsionUnimodular =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsComponentTupleTensorTorsionUnimodular", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusTorsionPointsCorrespondValues\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusComponentsOfUnimodularTensorStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDataValuesFactsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceMulStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondencePeriodStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceUniqueComponentsStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor

noncomputable section

namespace GlobalTheory.Mum.TensTor

theorem gtRelV_npow_of_tensFacts {F : Type} [Field F] {N N' : NumD F} {r : ℕ} {W : Matrix (Fin r) (Fin r) ℤ}
    {φ : N'.A → Fin r → N.A} {e : N'.X → Fin r → N.X} {wv : N'.A → F} (hf : TensFacts W φ e wv)
    {v' : N'.Gt} {vs : Fin r → N.Gt} (h : GtRelV W φ e wv v' vs) (k : ℕ) :
    GtRelV W φ e wv (v' ^ k) (vs ^ k) := by
  induction k with
  | zero =>
    have h0 := GlobalTheory.T.tensorTorusValueCorrespondence_period F N N' W φ e wv hf 0
    have he0 : ∀ j, e 0 j = 0 := fun j => by
      have := hf.2.2.1 0 0 j
      rw [add_zero] at this
      simpa using this
    have e1 : (1 : Fin r → N.Gt) = fun j => N.io (e 0 j) := funext fun j => by rw [he0, N.io_zero]; rfl
    rw [pow_zero, pow_zero, e1, ← N'.io_zero]
    exact h0
  | succ k ih =>
    rw [pow_succ, pow_succ]
    exact GlobalTheory.T.tensorTorusValueCorrespondence_mul F N N' W φ e wv hf _ _ _ _ ih h

theorem exists_components_of_unimodular : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D D' : DegData R (maximalIdeal R)) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ) (T : Tens D.toPre D'.toPre W) (F : Type) [Field F] [IsAlgClosed F] [Algebra (FractionRing R) F] (N N' : NumD F) (ν : NumOf D.toPre F N) (ν' : NumOf D'.toPre F N'), IsUnit (W + W.transpose).det → ∀ (k : ℕ) (p' : QkPt D'.toPre F k), ∃ ps : Fin r → QkPt D.toPre F k, PtRel T ν ν' p' ps := by
  intro R _ _ _ hB D D' r W T F _ _ _ N N' ν ν' hW k p'
  have hGt := GlobalTheory.Ex.GtValues.points_correspond
  have hf := GlobalTheory.T.tensorData_values_facts R hB D D' W T F N N' ν ν'
  obtain ⟨q', hq', -⟩ := ((hGt R D'.toPre D'.psi_even D'.tau_bimult F N' ν').2.2.2.2 k).1 p'
  obtain ⟨vs, hvs⟩ := _root_.GlobalTheory.Mum.TensTor.gtRelV_onto F N N' W (cmp T ν ν') (chi T ν ν') (wv T ν ν') hf hW q'.1.2
  have hk := gtRelV_npow_of_tensFacts hf hvs k
  rw [N'.mem_QT.1 q'.2] at hk
  have hio := GlobalTheory.T.tensorTorusValueCorrespondence_period F N N' W (cmp T ν ν') (chi T ν ν') (wv T ν ν') hf q'.1.1.toAdd
  have hv := GlobalTheory.T.tensorTorusValueCorrespondence_unique_components F N N' W (cmp T ν ν') (chi T ν ν') (wv T ν ν') hf hW _ _ _ hk hio
  let qs : Fin r → N.QT k := fun j =>
    ⟨(Multiplicative.ofAdd (chi T ν ν' q'.1.1.toAdd j), vs j), N.mem_QT.2 (congrFun hv j)⟩
  choose ps hps using fun j => ((hGt R D.toPre D.psi_even D.tau_bimult F N ν).2.2.2.2 k).2.1 (qs j)
  exact ⟨ps, q', qs, hq', hps, fun _ => rfl, hvs⟩

end GlobalTheory.Mum.TensTor
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsComponentTupleTensorTorsionUnimodular =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDegenerationValuesAlgClosedField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDegenerationValuesAlgClosedField", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.CharZeroOfIsPrimitiveRoot\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsIntegralDegenerationValues\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor

namespace GlobalTheory.MumValues

theorem exists_values : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (F : Type) [Field F] [IsAlgClosed F] [Algebra (FractionRing R) F], ∃ N : NumD F, Nonempty (NumOf D.toPre F N) := by
  intro R _ _ _ hR D F _ _ _
  haveI : IsNoetherianRing R := hR.1.1
  obtain ⟨N, ν, -⟩ := GlobalTheory.ValuesExist.exists_integral_values GlobalTheory.allSixLaws.1 R D.toPre D.psi_even D.tau_bimult F ⊤
    (fun _ => trivial)
  exact ⟨N, ⟨ν⟩⟩

end GlobalTheory.MumValues
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDegenerationValuesAlgClosedField =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorTorsionPointOfComponentTuple =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorTorsionPointOfComponentTuple", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusTorsionPointsCorrespondValues\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorTorusPointOfComponentTupleStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDataValuesFactsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceMulStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondencePeriodStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceUniquePointStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor

noncomputable section

namespace GlobalTheory.Mum.TensTor

theorem gtRelV_pow {F : Type} [Field F] {N N' : NumD F} {r : ℕ} {W : Matrix (Fin r) (Fin r) ℤ}
    {φ : N'.A → Fin r → N.A} {e : N'.X → Fin r → N.X} {wv : N'.A → F} (h : TensFacts W φ e wv)
    {v' : N'.Gt} {vs : Fin r → N.Gt} (hv : GtRelV W φ e wv v' vs) (k : ℕ) :
    GtRelV W φ e wv (v' ^ k) (vs ^ k) := by
  apply _root_.GlobalTheory.Mum.TensTor.gtRelV_npow_of_tensFacts <;> assumption

theorem exists_ptRel : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D D' : DegData R (maximalIdeal R)) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ) (T : Tens D.toPre D'.toPre W) (F : Type) [Field F] [IsAlgClosed F] [Algebra (FractionRing R) F] (N N' : NumD F) (ν : NumOf D.toPre F N) (ν' : NumOf D'.toPre F N') (k : ℕ) (ps : Fin r → QkPt D.toPre F k), ∃ p' : QkPt D'.toPre F k, PtRel T ν ν' p' ps := by
  intro R _ _ _ hR D D' r W T F _ _ _ N N' ν ν' k ps
  have B := GlobalTheory.Ex.GtValues.points_correspond R D.toPre D.psi_even D.tau_bimult F N ν
  have B' := GlobalTheory.Ex.GtValues.points_correspond R D'.toPre D'.psi_even D'.tau_bimult F N' ν'
  have hT := GlobalTheory.T.tensorData_values_facts R hR D D' W T F N N' ν ν'
  choose qs hqs using fun i => ((B.2.2.2.2 k).1 (ps i)).exists
  obtain ⟨v', hv'⟩ := GlobalTheory.T.exists_tensorTorusPoint_of_componentTuple F N N' W (cmp T ν ν') (chi T ν ν') (wv T ν ν') hT fun j => (qs j).1.2
  obtain ⟨y', hy'⟩ := hT.2.2.2.1.2 fun i => (qs i).1.1.toAdd
  have hk : v' ^ k = N'.io y' := by
    refine GlobalTheory.T.tensorTorusValueCorrespondence_unique_point F N N' W (cmp T ν ν') (chi T ν ν') (wv T ν ν') hT _ _ (fun j => N.io (chi T ν ν' y' j))
      ?_ (GlobalTheory.T.tensorTorusValueCorrespondence_period F N N' W (cmp T ν ν') (chi T ν ν') (wv T ν ν') hT y')
    have hp := gtRelV_pow hT hv' k
    have e : ((fun j => (qs j).1.2) ^ k : Fin r → N.Gt) = fun j => N.io (chi T ν ν' y' j) := by
      funext j
      rw [Pi.pow_apply, hy']
      exact (qs j).2
    rwa [e] at hp
  let q' : N'.QT k := ⟨(Multiplicative.ofAdd y', v'), hk⟩
  obtain ⟨p', hp'⟩ := (B'.2.2.2.2 k).2.1 q'
  exact ⟨p', q', qs, hp', hqs, fun i => congrFun hy' i, hv'⟩

end GlobalTheory.Mum.TensTor
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorTorsionPointOfComponentTuple =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiGeneratorComponentsTorusExtension =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiGeneratorComponentsTorusExtension", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GtRelVIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiAdjTensorPowerIntMatrixEndomorphism\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsMatrixRingAct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RosVal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor

noncomputable section

namespace GlobalTheory.Mum.RosComp

section Alg

variable {O : Type} [CommRing O] {N : NumD O} {Γ Γ₀ Q : Type} [CommGroup Γ] [CommGroup Γ₀] [AddCommGroup Q]
  (ev : Γ →* N.A) (e₀ : Γ →* Γ₀) (ℓ : Γ → Γ → Q) (κ : Additive Oˣ →+ Q)

def PVu {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ) (χ : Fin r → N.X) (vs : Fin r → N.Gt) : Oˣ :=
  ∏ i, ∏ j, ((vs j).s (χ i) * (vs i).s (χ j) /
      (N.θ (N.c (χ j)) (vs j).b (N.c (χ i)) * N.θ (N.c (χ j)) (vs j).b (vs i).b *
        N.θ (N.c (χ i)) (vs i).b (N.c (χ j) * (vs j).b))) ^ W i j

def cHom (N : NumD O) : Multiplicative N.X →* N.A := MonoidHom.mk' (fun χ => N.c χ.toAdd) fun a b => N.c_add a.toAdd b.toAdd

variable (hs : ∀ a b, ℓ a b = ℓ b a)
  (hc : ∀ a a' b, e₀ b = 1 → ℓ (a * a') b = ℓ a b + ℓ a' b - κ (Additive.ofMul (N.θ (ev a) (ev a') (ev b))))

include hc in
theorem left_sum {r : ℕ} (x : Fin r → Γ) (χ : Fin r → N.X) (hx : ∀ k, ev (x k) = N.c (χ k)) (n : Fin r → ℤ)
    (b : Γ) (g : N.Gt) (hb : ev b = g.b) (h₀ : e₀ b = 1) :
    ℓ (∏ k, x k ^ n k) b - κ (Additive.ofMul (g.s (∑ k, n k • χ k))) =
      ∑ k, n k • (ℓ (x k) b - κ (Additive.ofMul (g.s (χ k)))) := by
  let S : Subgroup (Γ × Multiplicative N.X) :=
    MonoidHom.eqLocus (ev.comp (MonoidHom.fst _ _)) ((cHom N).comp (MonoidHom.snd _ _))
  let φ : S →* Multiplicative Q := MonoidHom.mk'
    (fun p => Multiplicative.ofAdd (ℓ p.1.1 b - κ (Additive.ofMul (g.s p.1.2.toAdd)))) fun p p' => by
      have e : ev p.1.1 = N.c p.1.2.toAdd := p.2
      have e' : ev p'.1.1 = N.c p'.1.2.toAdd := p'.2
      have m := congrArg (fun u => κ (Additive.ofMul u)) (g.mult p.1.2.toAdd p'.1.2.toAdd)
      simp only [ofMul_mul, map_add (f := _)] at m
      rw [← ofAdd_add]
      congr 1
      show ℓ (p.1.1 * p'.1.1) b - κ (Additive.ofMul (g.s (p.1.2.toAdd + p'.1.2.toAdd))) = _
      rw [hc _ _ _ h₀, e, e', hb]
      linear_combination (norm := abel) -m
  let s : Fin r → S := fun k => ⟨(x k, Multiplicative.ofAdd (χ k)), hx k⟩
  have h := congrArg Multiplicative.toAdd (map_prod φ (fun k => s k ^ n k) Finset.univ)
  simp only [map_zpow, toAdd_prod, toAdd_zpow] at h
  have c₁ : (∏ k, s k ^ n k).1.1 = ∏ k, x k ^ n k := by
    simp [s, Prod.fst_prod]
  have c₂ : (∏ k, s k ^ n k).1.2.toAdd = ∑ k, n k • χ k := by
    simp [s, Prod.snd_prod, toAdd_prod]
  rw [← c₁, ← c₂]
  exact h

include hs hc in
theorem right_sum {r : ℕ} (y : Fin r → Γ) (g : Fin r → N.Gt) (hy : ∀ k, ev (y k) = (g k).b) (n : Fin r → ℤ)
    (a : Γ) (χ : N.X) (ha : ev a = N.c χ) (h₀ : e₀ a = 1) :
    ℓ a (∏ k, y k ^ n k) - κ (Additive.ofMul ((∏ k, g k ^ n k).s χ)) =
      ∑ k, n k • (ℓ a (y k) - κ (Additive.ofMul ((g k).s χ))) := by
  let S : Subgroup (Γ × N.Gt) :=
    MonoidHom.eqLocus (ev.comp (MonoidHom.fst _ _)) (N.projB.comp (MonoidHom.snd _ _))
  let φ : S →* Multiplicative Q := MonoidHom.mk'
    (fun p => Multiplicative.ofAdd (ℓ a p.1.1 - κ (Additive.ofMul (p.1.2.s χ)))) fun p p' => by
      have e : ev p.1.1 = p.1.2.b := p.2
      have e' : ev p'.1.1 = p'.1.2.b := p'.2
      rw [← ofAdd_add]
      congr 1
      show ℓ a (p.1.1 * p'.1.1) - κ (Additive.ofMul ((p.1.2 * p'.1.2).s χ)) = _
      rw [hs, hc _ _ _ h₀, e, e', ha, NumD.Gt.mul_s, hs a, hs a, N.cub.s12 p.1.2.b, N.cub.s01 p.1.2.b]
      simp only [ofMul_mul, ofMul_div, map_add (f := _), map_sub]
      abel
  let s : Fin r → S := fun k => ⟨(y k, g k), hy k⟩
  have h := congrArg Multiplicative.toAdd (map_prod φ (fun k => s k ^ n k) Finset.univ)
  simp only [map_zpow, toAdd_prod, toAdd_zpow] at h
  have c₁ : (∏ k, s k ^ n k).1.1 = ∏ k, y k ^ n k := by
    simp [s, Prod.fst_prod]
  have c₂ : (∏ k, s k ^ n k).1.2 = ∏ k, g k ^ n k := by
    simp [s, Prod.snd_prod]
  rw [← c₁, ← c₂]
  exact h

include hs hc in
theorem quad_mul {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ) (a y : Fin r → Γ) (χ : Fin r → N.X) (g : Fin r → N.Gt)
    (ha : ∀ k, ev (a k) = N.c (χ k)) (hy : ∀ k, ev (y k) = (g k).b) (a₀ : ∀ k, e₀ (a k) = 1) (y₀ : ∀ k, e₀ (y k) = 1) :
    ∑ i, ∑ j, W i j • ℓ (a i * y i) (a j * y j) = ∑ i, ∑ j, W i j • ℓ (a i) (a j) + ∑ i, ∑ j, W i j • ℓ (y i) (y j) +
      ∑ i, ∑ j, W i j • ((ℓ (a i) (y j) - κ (Additive.ofMul ((g j).s (χ i)))) +
        (ℓ (a j) (y i) - κ (Additive.ofMul ((g i).s (χ j))))) + κ (Additive.ofMul (PVu W χ g)) := by

  simp only [PVu, ofMul_prod, map_sum, ofMul_zpow, map_zsmul, ← Finset.sum_add_distrib, ← smul_add]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  congr 1
  rw [hc _ _ _ (by rw [map_mul, a₀, y₀, _root_.mul_one]), hs (a i), hs (y i), hc _ _ _ (a₀ i), hc _ _ _ (y₀ i), map_mul,
    ha, ha, hy, hy, hs (a j) (a i), hs (y j) (a i), hs (y j) (y i)]
  simp only [ofMul_mul, ofMul_div, map_add (f := _), map_sub]
  abel

include hs hc in
theorem total {r : ℕ} (W A A' : Matrix (Fin r) (Fin r) ℤ)
    (h : A.transpose * (W + W.transpose) = (W + W.transpose) * A') (x y a b : Fin r → Γ) (χ χ₁ : Fin r → N.X)
    (g : Fin r → N.Gt) (hx : ∀ k, ev (x k) = N.c (χ k)) (hy : ∀ k, ev (y k) = (g k).b) (x₀ : ∀ k, e₀ (x k) = 1)
    (y₀ : ∀ k, e₀ (y k) = 1) (ha : ∀ i, a i = ∏ k, x k ^ A i k) (hb : ∀ i, b i = ∏ k, y k ^ A' i k)
    (h₁ : ∀ i, χ₁ i = ∑ k, A i k • χ k) :
    ∑ i, ∑ j, W i j • ℓ (a i * y i) (a j * y j) - ∑ i, ∑ j, W i j • ℓ (a i) (a j) - ∑ i, ∑ j, W i j • ℓ (y i) (y j) -
      ∑ i, ∑ j, W i j • ℓ (x i * b i) (x j * b j) + ∑ i, ∑ j, W i j • ℓ (x i) (x j) + ∑ i, ∑ j, W i j • ℓ (b i) (b j) =
      κ (Additive.ofMul (PVu W χ₁ g)) - κ (Additive.ofMul (PVu W χ (fun i => ∏ k, g k ^ A' i k))) := by
  have ea : ∀ i, ev (a i) = N.c (χ₁ i) := fun i => by
    have : N.c (χ₁ i) = cHom N (∏ k, Multiplicative.ofAdd (χ k) ^ A i k) := by
      rw [h₁]; show _ = N.c _; simp [toAdd_prod]
    rw [this, ha, map_prod, map_prod]
    exact Finset.prod_congr rfl fun k _ => by rw [map_zpow, map_zpow, hx]; rfl
  have eb : ∀ i, ev (b i) = (∏ k, g k ^ A' i k).b := fun i => by
    rw [← N.projB_apply, hb, map_prod, map_prod]
    exact Finset.prod_congr rfl fun k _ => by rw [map_zpow, map_zpow, hy]; rfl
  have a₀ : ∀ i, e₀ (a i) = 1 := fun i => by simp [ha, map_prod, x₀]
  have b₀ : ∀ i, e₀ (b i) = 1 := fun i => by simp [hb, map_prod, y₀]
  rw [quad_mul ev e₀ ℓ κ hs hc W a y χ₁ g ea hy a₀ y₀, quad_mul ev e₀ ℓ κ hs hc W x b χ _ hx eb x₀ b₀]
  have e₁ : ∀ i j, ℓ (a i) (y j) - κ (Additive.ofMul ((g j).s (χ₁ i))) =
      ∑ k, A i k • (ℓ (x k) (y j) - κ (Additive.ofMul ((g j).s (χ k)))) := fun i j => by
    rw [ha, h₁, left_sum ev e₀ ℓ κ hc x χ hx _ _ _ (hy j) (y₀ j)]
  have e₂ : ∀ i j, ℓ (x i) (b j) - κ (Additive.ofMul ((∏ k, g k ^ A' j k).s (χ i))) =
      ∑ k, A' j k • (ℓ (x i) (y k) - κ (Additive.ofMul ((g k).s (χ i)))) := fun i j => by
    rw [hb, right_sum ev e₀ ℓ κ hs hc y g hy _ _ _ (hx i) (x₀ i)]
  have hC := GlobalTheory.TensRosati.key_sum (fun k m => ℓ (x k) (y m) - κ (Additive.ofMul ((g m).s (χ k)))) W A A' h
  simp only [e₁, e₂]
  rw [hC]
  abel

end Alg

end GlobalTheory.Mum.RosComp

namespace GlobalTheory.Mum.RosComp

open GlobalTheory.TensRosati

section Flat

variable {X X' Y Z : Scheme.{0}} {M : LB X} {K₁ : Type} [Fintype K₁] {pr : K₁ → (X' ⟶ X)} {e : K₁ → ℤ}
  {K : Type} [Fintype K]

theorem le_flat (φ' : K → (Y ⟶ X')) (j : K × K₁ → M.ι) :
    LB.wchart M (fun p : K × K₁ => φ' p.1 ≫ pr p.2) j ≤ LB.wchart (LB.LinComb M pr e) φ' (fun a k => j (a, k)) :=
  fun _ hy => Set.mem_iInter.2 fun a => Set.mem_iInter.2 fun k => Set.mem_iInter.1 hy (a, k)

def flat (φ' : K → (Y ⟶ X')) (ε : K → ℤ) (t : LB.Gen (LB.LinComb (LB.LinComb M pr e) φ' ε)) :
    LB.Gen (LB.LinComb M (fun p : K × K₁ => φ' p.1 ≫ pr p.2) (fun p => ε p.1 * e p.2)) :=
  ⟨fun j : K × K₁ → M.ι => res (le_flat φ' j) (t.s (fun a k => j (a, k)))⟩

theorem flat_isGen (φ' : K → (Y ⟶ X')) (ε : K → ℤ) (t : LB.Gen (LB.LinComb (LB.LinComb M pr e) φ' ε))
    (ht : t.IsGen) : (flat φ' ε t).IsGen := by
  refine isGen_of_gm _ fun y j j' h h' => ?_
  refine (gm_res (𝟙 Y) y _ h _).trans ((gen_trans ht (𝟙 Y) y (le_flat φ' j h) (le_flat φ' j' h')).trans
    (congrArg₂ (· * ·) ?_ (gm_res (𝟙 Y) y _ h' _).symm))
  unfold trF
  rw [Fintype.prod_prod_type]
  refine Finset.prod_congr rfl fun a _ => ?_
  refine (congrArg (· ^ ε a) (gm_linComb M pr e (𝟙 Y ≫ φ' a) y (fun k => j (a, k)) (fun k => j' (a, k))
    (Set.mem_iInter.1 (le_flat (e := e) φ' j h) a) (Set.mem_iInter.1 (le_flat (e := e) φ' j' h') a))).trans ?_
  rw [← Finset.prod_zpow]
  refine Finset.prod_congr rfl fun i _ => ?_
  dsimp only
  rw [← zpow_mul, mul_comm (e i), Category.assoc]

theorem good_comb {z : Z} {J : (Z ⟶ X) → M.ι} (hJ : Good M z J) :
    Good (LB.LinComb M pr e) z (fun ψ k => J (ψ ≫ pr k)) := fun ψ => hJ.mem pr ψ

theorem val_flat (φ' : K → (Y ⟶ X')) (ε : K → ℤ) (t : LB.Gen (LB.LinComb (LB.LinComb M pr e) φ' ε)) (r : Z ⟶ Y)
    {z : Z} {J : (Z ⟶ X) → M.ι} (hJ : Good M z J) :
    val (flat φ' ε t) r z J = val t r z (fun ψ k => J (ψ ≫ pr k)) := by
  refine Eq.trans ?_ (val_of t r z (fun ψ k => J (ψ ≫ pr k)) (fun a k => J (r ≫ φ' a ≫ pr k))
    (fun a => funext fun k => congrArg J (Category.assoc _ _ _))).symm
  exact gm_res r z _ (hJ.mem (fun p : K × K₁ => φ' p.1 ≫ pr p.2) r) _

end Flat

section Gens

variable {X Y Z S₀ : Scheme.{0}}

def normGens (L : LB X) (e : S₀ ⟶ Y) (r : Z ⟶ Y) {z : Z} {J : (Z ⟶ X) → L.ι} (hJ : Good L z J) :
    AddSubgroup (FreeAddCommGroup (Y ⟶ X) × Additive (Z.presheaf.stalk z)ˣ) where
  carrier := {s | ∃ (K : Type) (_ : Fintype K) (φ : K → (Y ⟶ X)) (ε : K → ℤ) (t : LB.Gen (LB.LinComb L φ ε)),
    t.IsGen ∧ s.1 = ∑ k, ε k • FreeAddCommGroup.of (φ k) ∧ (∀ y I, Good L y I → val t e y I = 1) ∧
      val t r z J = s.2.toMul}
  zero_mem' := ⟨PEmpty, inferInstance, PEmpty.elim, PEmpty.elim, LB.oneGen L, fun _ _ =>
    (map_one _).trans ((congrArg₂ (· * ·) (Fintype.prod_empty _) (map_one _)).trans (_root_.mul_one _)).symm,
    (Fintype.sum_empty _).symm, fun _ _ _ => val_one _, val_one _⟩
  add_mem' := by
    rintro s s' ⟨K, _, φ, ε, t, ht, hs, h₀, hv⟩ ⟨K', _, φ', ε', t', ht', hs', h₀', hv'⟩
    refine ⟨K ⊕ K', inferInstance, _, _, LB.mulGen L φ ε φ' ε' t t', DVR.mulGen_isGen _ _ _ _ _ _ _ ht ht', ?_,
      fun y I hI => by rw [val_mul hI, h₀ y I hI, h₀' y I hI, _root_.mul_one], by rw [val_mul hJ, hv, hv']; rfl⟩
    rw [Fintype.sum_sum_type, Prod.fst_add, hs, hs']
    rfl
  neg_mem' := by
    rintro s ⟨K, _, φ, ε, t, ht, hs, h₀, hv⟩
    refine ⟨K, inferInstance, φ, _, LB.invGen L φ ε t, DVR.invGen_isGen _ _ _ _ ht, ?_,
      fun y I hI => by rw [val_inv, h₀ y I hI, inv_one], by rw [val_inv, hv]; rfl⟩
    simp only [neg_smul, Finset.sum_neg_distrib, Prod.fst_neg, hs]

end Gens

section Cube

variable {S : Scheme.{0}} {G : Over S} [GrpObj G] [IsCommMonObj G]

theorem cube_mem_norm (L : RigLB G) (c : CubicalStr G L) {T T₀ T' : Over S} (e : T₀ ⟶ T) (r : T' ⟶ T) {z : T'.left}
    {J} (hJ : Good L.L z J) (a a' b : T ⟶ G) (hb : e ≫ b = 1) :
    (lam (a * a') b - lam a b - lam a' b, Additive.ofMul (cubV c z J (r ≫ a) (r ≫ a') (r ≫ b))) ∈
      normGens L.L e.left r.left hJ := by
  refine ⟨thK, inferInstance, _, _, LB.pullGen L.L (thφ G (x3 G)) thε c.t (lift a (lift a' b)).left,
    DVR.pullGen_isGen _ _ _ _ c.isGen _, ?_, fun y I hI => ?_, val_cub c r hJ a a' b⟩
  · have := prod_cub a a' b (U := Multiplicative (FreeAddCommGroup (T.left ⟶ G.left)))
      (fun m => Multiplicative.ofAdd (FreeAddCommGroup.of m))
    have e := congrArg Multiplicative.toAdd this
    simp only [toAdd_prod, toAdd_zpow, toAdd_mul, toAdd_inv, toAdd_ofAdd] at e
    rw [e, lam, lam, lam]
    abel_nf
  · refine (val_cub c e hI a a' b).trans ?_
    rw [hb]
    exact (isCub_cubV c hI).face₃ _ _

end Cube

section Total

variable {S : Scheme.{0}} {A A' : Over S} [GrpObj A] [IsCommMonObj A] [GrpObj A'] [IsCommMonObj A']
  {r : ℕ} (pr : Fin r → (A' ⟶ A))

theorem ros_flat (W : Matrix (Fin r) (Fin r) ℤ) (f g : A' ⟶ A') :
    ∑ p : Fin 6 × ((Fin r × Fin r) × Fin 4), (rosatiε p.1 * tensε W p.2) •
      FreeAddCommGroup.of (rosatiφ A' f g p.1 ≫ tensφ pr p.2) =
      qf pr W ((fst A' A' ≫ f) * snd A' A') - qf pr W (fst A' A' ≫ f) - qf pr W (snd A' A') -
        qf pr W (fst A' A' * (snd A' A' ≫ g)) + qf pr W (fst A' A') + qf pr W (snd A' A' ≫ g) := by
  rw [Fintype.sum_prod_type]
  simp only [mul_smul, ← Finset.smul_sum, Fin.sum_univ_six]
  rw [← flat_eq, ← flat_eq, ← flat_eq, ← flat_eq, ← flat_eq, ← flat_eq]
  rw [show rosatiε 0 = 1 from rfl, show rosatiε 1 = -1 from rfl,
    show rosatiε 2 = -1 from rfl, show rosatiε 3 = -1 from rfl, show rosatiε 4 = 1 from rfl,
    show rosatiε 5 = 1 from rfl]
  simp only [one_smul, neg_smul, sub_eq_add_neg]
  rfl

end Total

end GlobalTheory.Mum.RosComp

namespace GlobalTheory.Mum.RosComp

open GlobalTheory.TensRosati

variable {R : Type} [CommRing R] [IsDomain R] {D D' : DegPre R} {r : ℕ} {W : Matrix (Fin r) (Fin r) ℤ}
  {F : Type} [Field F] [Algebra (FractionRing R) F] {N N' : NumD F}

theorem ros_value (T : Tens D D' W) (ν : NumOf D F N) (ν' : NumOf D' F N') (A A' : Matrix (Fin r) (Fin r) ℤ)
    (h : A.transpose * (W + W.transpose) = (W + W.transpose) * A') (f g : D'.P.A ⟶ D'.P.A)
    (hf : letI := D.P.isAb.comm; ∀ i, f ≫ T.pr i = ∏ j, T.pr j ^ A i j)
    (hg : letI := D.P.isAb.comm; ∀ i, g ≫ T.pr i = ∏ j, T.pr j ^ A' i j)
    (ρ : N'.A → N'.A → F) (hρ : TensRos.RosVT T ν ν' f g ρ) (a b : N'.A) (χ χ₁ : Fin r → N.X) (gs : Fin r → N.Gt)
    (ha : ∀ j, TensTor.cmp T ν ν' a j = N.c (χ j)) (hb : ∀ j, TensTor.cmp T ν ν' b j = (gs j).b)
    (h₁ : ∀ i, χ₁ i = ∑ k, A i k • χ k) :
    ρ a b * (PVu W χ₁ gs : Fˣ) = (PVu W χ (fun i => ∏ k, gs k ^ A' i k) : Fˣ) := by
  letI := D.P.isAb.comm
  letI := D'.P.isAb.comm
  obtain ⟨u, hu, u₀, hv⟩ := hρ
  obtain ⟨z⟩ : Nonempty (Sp F) := inferInstanceAs (Nonempty (PrimeSpectrum F))
  have hJ : Good D.P.L z ν.J := fun ψ => ν.good ψ trivial
  let τ : Fˣ →* ((Sp F).presheaf.stalk z)ˣ := Units.map (toStk z).toMonoidHom
  have tθ : ∀ a b c, τ (N.θ a b c) = cubV D.cub (T := TF (R := R) F) z ν.J (ν.eA a) (ν.eA b) (ν.eA c) := fun a b c =>
    Units.ext ((Units.coe_map _ _).trans ((congrArg (toStk z) (ν.θ_eq a b c)).trans (toStk_valF _ _ z (hJ.mem _ _) _)))
  let e : 𝟙_ (Over (Spec (CommRingCat.of R))) ⟶ D'.P.A ⊗ D'.P.A := lift η[D'.P.A] η[D'.P.A]
  let p : TF (R := R) F ⟶ D'.P.A ⊗ D'.P.A := lift (ν'.eA a) (ν'.eA b)
  let H := normGens D.P.L (Z := Sp F) e.left p.left hJ
  let ev : (D'.P.A ⊗ D'.P.A ⟶ D.P.A) →* N.A := ν.eA.symm.toMonoidHom.comp (preHom p)
  let ℓ : (D'.P.A ⊗ D'.P.A ⟶ D.P.A) → (D'.P.A ⊗ D'.P.A ⟶ D.P.A) → _ ⧸ H := fun x y =>
    (QuotientAddGroup.mk' H).comp (AddMonoidHom.inl _ _) (lam x y)
  let κ : Additive Fˣ →+ _ ⧸ H := ((QuotientAddGroup.mk' H).comp (AddMonoidHom.inr _ _)).comp τ.toAdditive
  have hs : ∀ x y, ℓ x y = ℓ y x := fun x y => by simp only [ℓ, lam_comm x y]
  have hc : ∀ x x' y, preHom e y = 1 →
      ℓ (x * x') y = ℓ x y + ℓ x' y - κ (Additive.ofMul (N.θ (ev x) (ev x') (ev y))) := fun x x' y hy => by
    have m := (QuotientAddGroup.eq_zero_iff _).2
      (cube_mem_norm ⟨D.P.L, D.rig, D.P.isLB, D.rig_gen⟩ D.cub e p hJ x x' y hy)
    have t : τ (N.θ (ev x) (ev x') (ev y)) = cubV D.cub (T := TF (R := R) F) z ν.J (p ≫ x) (p ≫ x') (p ≫ y) := by
      rw [tθ]
      simp only [ev, MonoidHom.comp_apply, MulEquiv.coe_toMonoidHom, MulEquiv.apply_symm_apply]
      rfl
    have m' : ℓ (x * x') y - ℓ x y - ℓ x' y + κ (Additive.ofMul (N.θ (ev x) (ev x') (ev y))) = 0 := by
      refine Eq.trans ?_ m
      simp only [ℓ, ← map_sub]
      refine (map_add (QuotientAddGroup.mk' H) _ _).symm.trans (congrArg _ (Prod.ext (add_zero _) ?_))
      exact (zero_add _).trans (congrArg Additive.ofMul t)
    linear_combination (norm := abel) m'
  have one : ∀ k, η[D'.P.A] ≫ T.pr k = 1 := fun k => by
    have := T.pr_hom k
    simp [Hom.one_def]
  have tot := total ev (preHom e) ℓ κ hs hc W A A' h (fun k => fst _ _ ≫ T.pr k) (fun k => snd _ _ ≫ T.pr k)
    (fun k => (fst _ _ ≫ f) ≫ T.pr k) (fun k => (snd _ _ ≫ g) ≫ T.pr k) χ χ₁ gs
    (fun k => (congrArg ν.eA.symm (lift_fst_assoc _ _ _)).trans (ha k))
    (fun k => (congrArg ν.eA.symm (lift_snd_assoc _ _ _)).trans (hb k))
    (fun k => (lift_fst_assoc _ _ _).trans (one k)) (fun k => (lift_snd_assoc _ _ _).trans (one k))
    (fun i => by
      rw [Category.assoc, hf, GlobalTheory.MatrixAction.comp_finsetProd]
      exact Finset.prod_congr rfl fun k _ => by rw [GrpObj.comp_zpow])
    (fun i => by
      rw [Category.assoc, hg, GlobalTheory.MatrixAction.comp_finsetProd]
      exact Finset.prod_congr rfl fun k _ => by rw [GrpObj.comp_zpow]) h₁
  have hm : ∀ (x y : D'.P.A ⊗ D'.P.A ⟶ D'.P.A) (i : Fin r), (x * y) ≫ T.pr i = (x ≫ T.pr i) * (y ≫ T.pr i) :=
    fun x y i => by
      have := T.pr_hom i
      exact MonObj.mul_comp x y (T.pr i)
  have mq : ∀ x : D'.P.A ⊗ D'.P.A ⟶ D'.P.A, (QuotientAddGroup.mk' H).comp (AddMonoidHom.inl _ _) (qf T.pr W x) =
      ∑ i, ∑ j, W i j • ℓ (x ≫ T.pr i) (x ≫ T.pr j) := fun x => by

    simp only [qf, map_sum, map_zsmul, ℓ]
  have mem : (∑ q : Fin 6 × ((Fin r × Fin r) × Fin 4), (rosatiε q.1 * tensε W q.2) •
      FreeAddCommGroup.of (rosatiφ D'.P.A f g q.1 ≫ tensφ T.pr q.2),
      Additive.ofMul (τ (PVu W χ (fun i => ∏ k, gs k ^ A' i k) / PVu W χ₁ gs))) ∈ H := by
    refine (QuotientAddGroup.eq_zero_iff _).1 ?_
    have s : ∀ (x) (v : Fˣ), (QuotientAddGroup.mk (x, Additive.ofMul (τ v)) : _ ⧸ H) =
        (QuotientAddGroup.mk' H).comp (AddMonoidHom.inl _ _) x + κ (Additive.ofMul v) := fun x v =>
      (congrArg _ (Prod.ext (add_zero _).symm (zero_add _).symm)).trans (map_add (QuotientAddGroup.mk' H) _ _)
    rw [s, ros_flat]
    simp only [map_add (f := _), map_sub, mq, hm, ofMul_div]
    rw [tot]
    abel
  obtain ⟨K, _, φ, ε, t, ht, hF, t₀, tv⟩ := mem
  have he : e.left ≫ (snd D'.P.A D'.P.A).left ≫ D'.P.A.hom = 𝟙 _ := by
    rw [Over.w]; exact Over.w e
  have key := gen_unique' D.P.isLB (formEq_of_eq hF.symm) _ e.left he
    (surj_comp (surj_snd GlobalTheory.globalFns_holds D'.P.isAb _) (GlobalTheory.globalFns_holds _ _ D'.P.isAb).2)
    (flat_isGen _ _ u hu) ht (fun y I hI => by
      have c := val_corr (good_comb (pr := tensφ T.pr) (e := tensε W) hI) u₀ (𝟙 _)
      have c' := (val_pull (good_comb (pr := tensφ T.pr) (e := tensε W) hI) u (zero2 D'.P.A) (𝟙 _)).symm.trans
        (c.trans (val_one _))
      rw [Category.id_comp] at c'
      exact ((val_flat _ _ u _ hI).trans c').trans (t₀ y I hI).symm) (Sp F) p.left z ν.J hJ
  have k2 : toStk z (ρ a b) = (τ (PVu W χ (fun i => ∏ k, gs k ^ A' i k) / PVu W χ₁ gs)).val := by
    rw [hv]
    refine (toStk_valF _ _ z ((good_comb (pr := tensφ T.pr) (e := tensε W) hJ).mem _ _) _).trans ?_
    exact congrArg Units.val ((val_flat _ _ u p.left hJ).symm.trans (key.trans tv))
  have k3 : ρ a b = (PVu W χ (fun i => ∏ k, gs k ^ A' i k) / PVu W χ₁ gs : Fˣ) :=
    (toStk z).injective (k2.trans (Units.coe_map _ _))
  rw [k3, ← Units.val_mul, div_mul_cancel]

end GlobalTheory.Mum.RosComp


open GlobalTheory.Mum.RosComp in
theorem GlobalTheory.Mum.TensRos.rosVT_components : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D D' : DegData R (maximalIdeal R)) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ) (T : Tens D.toPre D'.toPre W) (F : Type) [Field F] [IsAlgClosed F] [Algebra (FractionRing R) F] (N N' : NumD F) (ν : NumOf D.toPre F N) (ν' : NumOf D'.toPre F N') (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (ρ : 𝓞 E →+* Matrix (Fin r) (Fin r) ℤ), (∀ a, (ρ a).transpose * (W + W.transpose) = (W + W.transpose) * ρ (H.bar a)) → ∀ [Module (𝓞 E) D'.toPre.X] (o : letI := H.starRing; D'.toPre.OAct (𝓞 E)), (letI := H.starRing; T.IsAct o ρ) → ∀ (x : 𝓞 E) (ρ'' : N'.A → N'.A → F), (letI := H.starRing; GlobalTheory.Mum.TensRos.RosVT T ν ν' (o.onB.act (star x)) (o.onB.act x) ρ'') → ∀ (χ : N'.X) (b : N'.A) (gs : Fin r → N.Gt), (∀ j, GlobalTheory.Mum.TensTor.cmp T ν ν' b j = (gs j).b) → (letI := H.starRing; ρ'' (N'.c χ) b * GlobalTheory.Mum.TensRos.PV W (GlobalTheory.Mum.TensTor.chi T ν ν') (ν'.eX.symm (star x • ν'.eX χ)) gs = GlobalTheory.Mum.TensRos.PV W (GlobalTheory.Mum.TensTor.chi T ν ν') χ (fun i => ∏ j, gs j ^ ρ x i j)) := by
  intro R _ _ _ _ D D' r W T F _ _ _ N N' ν ν' E _ _ _ H ρ hρ _ o hact x ρ'' hros χ b gs hb
  letI := H.starRing
  have h := hρ (star x)
  rw [show H.bar (star x) = x from star_star x] at h
  refine ros_value T ν ν' (ρ (star x)) (ρ x) h _ _ (hact.2 _) (hact.2 _) ρ'' hros (N'.c χ) b (TensTor.chi T ν ν' χ) _ gs
    (fun j => ?_) hb (fun i => ?_)
  · simp only [TensTor.cmp, TensTor.chi]
    rw [ν.eA.symm_apply_eq, ν.c_eq, ν'.c_eq, ν.eX.apply_symm_apply]
    simp only [DegPre.cF, Category.assoc, T.c_pr]

  · simp only [TensTor.chi, AddEquiv.apply_symm_apply, hact.1, map_sum, map_zsmul]

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiGeneratorComponentsTorusExtension =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiGeneratorComponentsTorusExtensionStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiGeneratorComponentsTorusExtensionStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GtRelVIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiGeneratorComponentsTorusExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiGeneratorComponentsTorusExtensionStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiValueTensorDataTransportLambdaBundle =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiValueTensorDataTransportLambdaBundle", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GtRelVIff\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.NormalisedRosatiGeneratorValuesMoveAlongIso\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsLocalRingQuotientPow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor

noncomputable section

namespace GlobalTheory.Mum.TensRosMove

theorem rosati_alg {U : Type} [CommGroup U] (g : Fin 6 → U) (u : U) :
    (∏ k, g k ^ rosatiε k) * u * (g 1 * g 2 * g 3) = u * (g 0 * g 4 * g 5) := by
  rw [Fin.prod_univ_six]
  show g 0 ^ (1 : ℤ) * g 1 ^ (-1 : ℤ) * g 2 ^ (-1 : ℤ) * g 3 ^ (-1 : ℤ) * g 4 ^ (1 : ℤ) * g 5 ^ (1 : ℤ) * u *
    (g 1 * g 2 * g 3) = u * (g 0 * g 4 * g 5)
  apply Additive.ofMul.injective
  simp only [ofMul_mul, ofMul_zpow]
  abel

theorem rosVT_move : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D D' : DegData R (maximalIdeal R)) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ) (T : Tens D.toPre D'.toPre W) (F : Type) [Field F] [IsAlgClosed F] [Algebra (FractionRing R) F] (N N' : NumD F) (ν : NumOf D.toPre F N) (ν' : NumOf D'.toPre F N') (O : Type) [CommRing O] [StarRing O] (oa : D'.toPre.P.OAct O) (x : O) (ρ' : N'.A → N'.A → F), GlobalTheory.Relabel.RosV ν' oa x ρ' → ∃ ρ'' : N'.A → N'.A → F, GlobalTheory.Mum.TensRos.RosVT T ν ν' (oa.act (star x)) (oa.act x) ρ'' ∧ ∀ a b, ρ'' a b * (wv T ν ν' (GlobalTheory.Relabel.actV ν' oa (star x) a) * wv T ν ν' b * wv T ν ν' (a * GlobalTheory.Relabel.actV ν' oa x b)) = ρ' a b * (wv T ν ν' (GlobalTheory.Relabel.actV ν' oa (star x) a * b) * wv T ν ν' a * wv T ν ν' (GlobalTheory.Relabel.actV ν' oa x b)) := by
  intro R _ _ _ _ D D' n W T F _ _ _ N N' ν ν' O _ _ oa x ρ' hR
  obtain ⟨u, hu, u₀, hρ⟩ := hR
  have := oa.hom x
  have := oa.hom (star x)
  have hL₁ : (LB.LinComb D.toPre.P.L (tensφ T.pr) (tensε W)).IsLB := LB.isLB_linComb D.toPre.P.isLB _ _
  obtain ⟨u'', hu'', hv⟩ := GlobalTheory.WtTower.exists_gen_of_iso (LB.isLB_linComb D'.toPre.P.isLB _ rosatiε)
    (LB.isLB_linComb hL₁ (rosatiφ D'.toPre.P.A (oa.act (star x)) (oa.act x)) rosatiε)
    (LB.linCombIso T.w _ rosatiε) (DVR.linCombIso_isGen T.w T.w_gen _ _) u hu
  refine ⟨fun a b => vF u'' (lift (ν'.eA a) (ν'.eA b)).left (GlobalTheory.Mum.TensRos.tensJ T ν), ⟨u'', hu'', ?_, fun _ _ => rfl⟩, ?_⟩
  · refine corr_of_val hL₁ fun y J hJ => ?_
    rw [val_pull hJ, val_one]
    have h1 : (η[D'.toPre.P.A] : 𝟙_ (Over (Spec (CommRingCat.of R))) ⟶ D'.toPre.P.A) = 1 := by
      rw [Hom.one_def, toUnit_unique (toUnit _) (𝟙 _), Category.id_comp]
    have hz : ∀ k, (𝟙 _ ≫ zero2 D'.toPre.P.A) ≫ rosatiφ D'.toPre.P.A (oa.act (star x)) (oa.act x) k =
        (1 : 𝟙_ (Over (Spec (CommRingCat.of R))) ⟶ D'.toPre.P.A).left := fun k => by
      rw [Category.id_comp, zero2, h1, ← GlobalTheory.RosMove.rosO_left, ← Over.comp_left, GlobalTheory.RosMove.lift_rosO]
      fin_cases k <;> simp [MonObj.one_comp]
    choose I hI using fun χ : _ ⟶ D'.toPre.P.A.left => exists_chart D'.toPre.P.isLB (χ y)
    have hI' : Good D'.toPre.P.L y I := hI
    have e₀ : val u (𝟙 _ ≫ zero2 D'.toPre.P.A) y I = 1 := by
      have := val_corr hI' u₀ (𝟙 _)
      rwa [val_pull hI', val_one] at this
    have m₁ := hJ.mem (rosatiφ D'.toPre.P.A (oa.act (star x)) (oa.act x)) (𝟙 _ ≫ zero2 D'.toPre.P.A)
    have m₂ := hI'.mem (rosatiφ D'.toPre.P.A (oa.act (star x)) (oa.act x)) (𝟙 _ ≫ zero2 D'.toPre.P.A)
    have H := hv _ (𝟙 _ ≫ zero2 D'.toPre.P.A) y _ _ m₁ m₂
    have G := GlobalTheory.WtTower.gm_linCombIso T.w (rosatiφ D'.toPre.P.A (oa.act (star x)) (oa.act x)) rosatiε (_, _)
      (𝟙 _ ≫ zero2 D'.toPre.P.A) y ⟨m₁, m₂⟩
    refine H.trans (Eq.trans (congrArg₂ (· * ·) G e₀) ?_)
    rw [_root_.mul_one]
    have key : ∀ Fn : (_ ⟶ D'.toPre.P.A.left) → ((𝟙_ (Over (Spec (CommRingCat.of R)))).left.presheaf.stalk y)ˣ,
        ∏ a, Fn ((𝟙 _ ≫ zero2 D'.toPre.P.A) ≫ rosatiφ D'.toPre.P.A (oa.act (star x)) (oa.act x) a) ^ rosatiε a = 1 := by
      intro Fn
      simp only [hz]
      simp [Fin.prod_univ_succ, rosatiε]
    exact key (fun ψ => gm ψ y (((LB.LinComb D.toPre.P.L (tensφ T.pr) (tensε W)).div D'.toPre.P.L).U (J ψ, I ψ))
      (T.w.s (J ψ, I ψ)))
  · intro a b
    let z : Sp F := IsLocalRing.closedPoint F
    have hN : Good D.toPre.P.L z ν.J := fun q => ν.good q trivial
    have hJ' : Good D'.toPre.P.L z ν'.J := fun q => ν'.good q trivial
    have mT : ∀ y : Sp F ⟶ D'.toPre.P.A.left,
        y z ∈ (LB.LinComb D.toPre.P.L (tensφ T.pr) (tensε W)).U (GlobalTheory.Mum.TensRos.tensJ T ν y) :=
      fun y => Set.mem_iInter.2 fun k => hN (y ≫ tensφ T.pr k)
    have m₁ : (lift (ν'.eA a) (ν'.eA b)).left z ∈ LB.wchart (LB.LinComb D.toPre.P.L (tensφ T.pr) (tensε W))
        (rosatiφ D'.toPre.P.A (oa.act (star x)) (oa.act x))
        (fun k => GlobalTheory.Mum.TensRos.tensJ T ν ((lift (ν'.eA a) (ν'.eA b)).left ≫
          rosatiφ D'.toPre.P.A (oa.act (star x)) (oa.act x) k)) := Set.mem_iInter.2 fun k => mT _
    have m₂ := hJ'.mem (rosatiφ D'.toPre.P.A (oa.act (star x)) (oa.act x)) (lift (ν'.eA a) (ν'.eA b)).left
    have H := hv _ (lift (ν'.eA a) (ν'.eA b)).left z _ _ m₁ m₂
    have G := GlobalTheory.WtTower.gm_linCombIso T.w (rosatiφ D'.toPre.P.A (oa.act (star x)) (oa.act x)) rosatiε (_, _)
      (lift (ν'.eA a) (ν'.eA b)).left z ⟨m₁, m₂⟩
    let Gp : N'.A → ((Sp F).presheaf.stalk z)ˣ := fun p => gm (ν'.eA p).left z
      (((LB.LinComb D.toPre.P.L (tensφ T.pr) (tensε W)).div D'.toPre.P.L).U
        (GlobalTheory.Mum.TensRos.tensJ T ν (ν'.eA p).left, ν'.J (ν'.eA p).left))
      (T.w.s (GlobalTheory.Mum.TensRos.tensJ T ν (ν'.eA p).left, ν'.J (ν'.eA p).left))
    have hW : ∀ p, toStk z (wv T ν ν' p) = (Gp p).val := fun p => by
      have hm : (ν'.eA p).left z ∈ (((LB.LinComb D.toPre.P.L (tensφ T.pr) (tensε W)).div D'.toPre.P.L).U
          (GlobalTheory.Mum.TensRos.tensJ T ν (ν'.eA p).left, ν'.J (ν'.eA p).left)) := ⟨mT _, hJ' _⟩
      exact toStk_valF _ _ z hm _
    have ea : ∀ y c, ν'.eA (GlobalTheory.Relabel.actV ν' oa y c) = ν'.eA c ≫ oa.act y := fun y c => ν'.eA.apply_symm_apply _
    let pts : Fin 6 → N'.A := ![GlobalTheory.Relabel.actV ν' oa (star x) a * b, GlobalTheory.Relabel.actV ν' oa (star x) a, b,
      a * GlobalTheory.Relabel.actV ν' oa x b, a, GlobalTheory.Relabel.actV ν' oa x b]
    have hp : ∀ k, (lift (ν'.eA a) (ν'.eA b)).left ≫ rosatiφ D'.toPre.P.A (oa.act (star x)) (oa.act x) k =
        (ν'.eA (pts k)).left := fun k => by
      rw [← GlobalTheory.RosMove.rosO_left, ← Over.comp_left, GlobalTheory.RosMove.lift_rosO]
      fin_cases k <;> simp [pts, ea]
    have key : ∀ Fn : (Sp F ⟶ D'.toPre.P.A.left) → ((Sp F).presheaf.stalk z)ˣ,
        ∏ k, Fn ((lift (ν'.eA a) (ν'.eA b)).left ≫ rosatiφ D'.toPre.P.A (oa.act (star x)) (oa.act x) k) ^ rosatiε k =
          ∏ k, Fn (ν'.eA (pts k)).left ^ rosatiε k := fun Fn => by simp only [hp]
    have G' := G.trans (key (fun ψ => gm ψ z
      (((LB.LinComb D.toPre.P.L (tensφ T.pr) (tensε W)).div D'.toPre.P.L).U (GlobalTheory.Mum.TensRos.tensJ T ν ψ, ν'.J ψ))
      (T.w.s (GlobalTheory.Mum.TensRos.tensJ T ν ψ, ν'.J ψ))))
    have v'' := toStk_valF _ _ z m₁ (u''.s _)
    have v' : toStk z (ρ' a b) = (gm (lift (ν'.eA a) (ν'.eA b)).left z _ (u.s fun k => ν'.J
        ((lift (ν'.eA a) (ν'.eA b)).left ≫ rosatiφ D'.toPre.P.A (oa.act (star x)) (oa.act x) k))).val := by
      rw [hρ]; exact toStk_valF _ _ z m₂ _
    have HH := H.trans (congrArg₂ (· * ·) G' rfl)
    apply (toStk z).injective
    show toStk z (vF u'' (lift (ν'.eA a) (ν'.eA b)).left (GlobalTheory.Mum.TensRos.tensJ T ν) * _) = _
    simp only [map_mul, hW, v']
    erw [v'', HH]
    simp only [← Units.val_mul]
    congr 1
    exact rosati_alg (fun k => Gp (pts k)) _

end GlobalTheory.Mum.TensRosMove
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiValueTensorDataTransportLambdaBundle =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiValuesTensorDataMatrixAction =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiValuesTensorDataMatrixAction", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.WithISelf\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiGeneratorComponentsTorusExtensionStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiValueTensorDataTransportLambdaBundle\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDataValuesFactsStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GtRelVIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor

noncomputable section
namespace GlobalTheory.Mum.TensRos

theorem main_alg {F : Type} [Field F] (a1 a2 P1 P2 s1 s2 A Bv C Dd E' G one : F) (hA : A ≠ 0) (hB : Bv ≠ 0)
    (hE : E' ≠ 0) (hG : G ≠ 0) (hD : Dd ≠ 0)
    (h1 : a2 * (A * Bv * C) = a1 * (Dd * E' * G)) (h2 : a2 * P1 = P2) (h3 : s1 * A * Bv = P1 * Dd * one)
    (h4 : s2 * E' * G = P2 * C * one) : s2 = s1 * a1 := by
  have hK : A * Bv * E' * G * Dd ≠ 0 := by positivity
  apply mul_right_cancel₀ hK
  linear_combination (A*Bv*Dd)*h4 - (a1*E'*G*Dd)*h3 - (A*Bv*Dd*C*one)*h2 + (P1*one*Dd)*h1

theorem rosGt_values : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D D' : DegData R (maximalIdeal R)) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ) (T : Tens D.toPre D'.toPre W) (F : Type) [Field F] [IsAlgClosed F] [Algebra (FractionRing R) F] (N N' : NumD F) (ν : NumOf D.toPre F N) (ν' : NumOf D'.toPre F N') (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (ρ : 𝓞 E →+* Matrix (Fin r) (Fin r) ℤ), (∀ a, (ρ a).transpose * (W + W.transpose) = (W + W.transpose) * ρ (H.bar a)) → ∀ [Module (𝓞 E) D'.toPre.X] (o : letI := H.starRing; D'.toPre.OAct (𝓞 E)), (letI := H.starRing; T.IsAct o ρ) → ∀ (x : 𝓞 E) (ρ' : N'.A → N'.A → F), (letI := H.starRing; GlobalTheory.Relabel.RosV ν' o.onB x ρ') → ∀ (v' w' : N'.Gt) (vs : Fin r → N.Gt), GtRel T ν ν' v' vs → GtRel T ν ν' w' (fun i => ∏ j, vs j ^ ρ x i j) → (letI := H.starRing; ∀ χ, (w'.s χ : F) = v'.s (ν'.eX.symm (star x • ν'.eX χ)) * ρ' (N'.c χ) v'.b) := by
  intro R _ _ _ hB D D' r W T F _ _ _ N N' ν ν' E _ _ _ H ρ hρ _ o hact x ρ' hρ' v' w' vs hv hw
  letI := H.starRing
  obtain ⟨ρ'', hT, hmove⟩ := _root_.GlobalTheory.Mum.TensRosMove.rosVT_move R hB D D' W T F N N' ν ν' (𝓞 E) o.onB x ρ' hρ'
  obtain ⟨-, hbij, -, -, -, hwv0, -, -⟩ := GlobalTheory.T.tensorData_values_facts R hB D D' W T F N N' ν ν'
  rw [GtRel, gtRelV_iff] at hv hw
  intro χ
  have hb : w'.b = GlobalTheory.Relabel.actV ν' o.onB x v'.b := by
    apply hbij.1
    funext j
    rw [hw.1 j, cmp_actV T ν ν' o ρ hact x v'.b j, ← NumD.projB_apply, map_prod]
    refine Finset.prod_congr rfl fun k _ => ?_
    rw [map_zpow, NumD.projB_apply, hv.1 k]
  have h1 := hmove (N'.c χ) v'.b
  rw [c_actV ν' o] at h1
  have h2 := _root_.GlobalTheory.Mum.TensRos.rosVT_components R hB D D' W T F N N' ν ν' E H ρ hρ o hact x ρ'' hT χ v'.b vs hv.1
  have h3 := hv.2 (ν'.eX.symm (star x • ν'.eX χ))
  have h4 := hw.2 χ
  rw [hb] at h4
  exact main_alg _ _ _ _ _ _ _ _ _ _ _ _ _ (hwv0 _) (hwv0 _) (hwv0 _) (hwv0 _) (hwv0 _) h1 h2 h3 h4

end GlobalTheory.Mum.TensRos
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiValuesTensorDataMatrixAction =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiValuesTensorDataMatrixActionStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiValuesTensorDataMatrixActionStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.WithISelf\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiValuesTensorDataMatrixAction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiValuesTensorDataMatrixActionStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorQuotientTorsionOrderActionMatrix =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorQuotientTorsionOrderActionMatrix", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.WithISelf\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusExtensionActionInValues\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusTorsionPointsCorrespondValues\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorTorusPointOfComponentTupleStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiValuesTensorDataMatrixActionStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDataValuesFactsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceMulStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondencePeriodStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceUniquePointStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor

noncomputable section

namespace GlobalTheory.Mum.TensAct

theorem cmp_actV {R : Type} [CommRing R] [IsDomain R] {D D' : DegPre R} {r : ℕ} {W : Matrix (Fin r) (Fin r) ℤ}
    (T : Tens D D' W) {F : Type} [Field F] [Algebra (FractionRing R) F] {N N' : NumD F} (ν : NumOf D F N)
    (ν' : NumOf D' F N') {O : Type} [CommRing O] [StarRing O] (ρ : O →+* Matrix (Fin r) (Fin r) ℤ) [Module O D'.X]
    (o : D'.OAct O) (hact : T.IsAct o ρ) (x : O) (b : N'.A) (i : Fin r) :
    TensTor.cmp T ν ν' (GlobalTheory.Relabel.actV ν' o.onB x b) i = ∏ j, TensTor.cmp T ν ν' b j ^ ρ x i j := by
  intros
  apply _root_.GlobalTheory.Mum.TensRos.cmp_actV <;> assumption

end GlobalTheory.Mum.TensAct
namespace GlobalTheory.Mum.TensAct

section V
variable {F : Type} [Field F] {N N' : NumD F} {r : ℕ} {W : Matrix (Fin r) (Fin r) ℤ}
  {φ : N'.A → Fin r → N.A} {e : N'.X → Fin r → N.X} {wv : N'.A → F}

theorem rel_one (hF : TensFacts W φ e wv) : GtRelV W φ e wv 1 1 := by
  obtain ⟨u, hu⟩ := GlobalTheory.T.exists_tensorTorusPoint_of_componentTuple F N N' W φ e wv hF 1
  have h2 := GlobalTheory.T.tensorTorusValueCorrespondence_mul F N N' W φ e wv hF u u 1 1 hu hu
  rw [_root_.mul_one] at h2
  have h3 : u * u = u := GlobalTheory.T.tensorTorusValueCorrespondence_unique_point F N N' W φ e wv hF _ _ _ h2 hu
  rw [_root_.mul_eq_left] at h3
  exact h3 ▸ hu

theorem rel_pow (hF : TensFacts W φ e wv) {v' : N'.Gt} {vs : Fin r → N.Gt} (h : GtRelV W φ e wv v' vs) :
    ∀ m : ℕ, GtRelV W φ e wv (v' ^ m) (vs ^ m)
  | 0 => by simpa using rel_one hF
  | m + 1 => by
    rw [_root_.pow_succ, _root_.pow_succ]
    exact GlobalTheory.T.tensorTorusValueCorrespondence_mul F N N' W φ e wv hF _ _ _ _ (rel_pow hF h m) h

end V

theorem io_sum {O : Type} [CommRing O] (N : NumD O) {κ : Type} (s : Finset κ) (m : κ → ℤ) (y : κ → N.X) :
    N.io (∑ j ∈ s, m j • y j) = ∏ j ∈ s, N.io (y j) ^ m j := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert k s hk ih =>
    rw [Finset.sum_insert hk, Finset.prod_insert hk, N.io_add, ih]
    congr 1
    have := N.ioHom.map_zpow (Multiplicative.ofAdd (y k)) (m k)
    simpa [NumD.ioHom, ← ofAdd_zsmul] using this

def qTH {O : Type} [CommRing O] (N : NumD O) (k : ℕ) : Multiplicative N.X →* N.QT k :=
  MonoidHom.mk' (fun z => N.qTriv k z.toAdd) fun a b => Subtype.ext (Prod.ext
    (by simp [NumD.qTriv, smul_add, ofAdd_add]) (by simp [NumD.qTriv, N.io_add]))

theorem qEq_iff_mk {O : Type} [CommRing O] (N : NumD O) {k : ℕ} (p p' : N.QT k) :
    N.QEq p p' ↔ (p : N.QT k ⧸ (qTH N k).range) = p' := by
  rw [N.qEq_iff, QuotientGroup.eq]
  constructor
  · rintro ⟨z, rfl⟩
    exact ⟨Multiplicative.ofAdd z, by simp [qTH]⟩
  · rintro ⟨z, hz⟩
    refine ⟨z.toAdd, ?_⟩
    have : N.qTriv k z.toAdd = p⁻¹ * p' := hz
    rw [this, mul_inv_cancel_left]

end GlobalTheory.Mum.TensAct

open GlobalTheory.Mum.TensAct in
theorem GlobalTheory.Mum.TensAct.qkAct_tens : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D D' : DegData R (maximalIdeal R)) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ) (T : Tens D.toPre D'.toPre W) (F : Type) [Field F] [IsAlgClosed F] [Algebra (FractionRing R) F] (N N' : NumD F) (ν : NumOf D.toPre F N) (ν' : NumOf D'.toPre F N') (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (ρ : 𝓞 E →+* Matrix (Fin r) (Fin r) ℤ), (∀ a, (ρ a).transpose * (W + W.transpose) = (W + W.transpose) * ρ (H.bar a)) → ∀ [Module (𝓞 E) D'.toPre.X] (o : letI := H.starRing; D'.toPre.OAct (𝓞 E)), (letI := H.starRing; T.IsAct o ρ) → ∀ (g : ℕ) (ev : ∀ n : ℕ, ((Fin g → ℤ) × (Fin g → ℤ)) → QkPt D.toPre F n), (∀ n, 0 < n → ∀ a b, QkAdd (ev n a) (ev n b) (ev n (a + b))) → (∀ n, 0 < n → ∀ a b, QkPt.Equiv D.toPre F (ev n a) (ev n b) ↔ ∃ e, a = b + n • e) → ∀ n, 0 < n → ∀ (x : 𝓞 E) (a : Fin r → (Fin g → ℤ) × (Fin g → ℤ)) (p' q' : QkPt D'.toPre F n), PtRel T ν ν' p' (fun j => ev n (a j)) → PtRel T ν ν' q' (fun i => ev n (∑ j, ρ x i j • a j)) → (letI := H.starRing; QkAct o x p' q') := by
  intro R _ _ _ hR D D' r W T F _ _ _ N N' ν ν' E _ _ _ H ρ hρ _ o hact g ev hadd hker n hn x a p' q' hp hq
  letI := H.starRing
  have hF := GlobalTheory.T.tensorData_values_facts R hR D D' W T F N N' ν ν'
  have hB := GtValues.points_correspond R D.toPre D.psi_even D.tau_bimult F N ν
  have hB' := GtValues.points_correspond R D'.toPre D'.psi_even D'.tau_bimult F N' ν'
  beta_reduce at hB hB'
  obtain ⟨q0, qs, hq0, hqs, hrel0⟩ := hp
  obtain ⟨q1, qs1, hq1, hqs1, hrel1⟩ := hq
  obtain ⟨ρ', hρ'⟩ := (GlobalTheory.Relabel.gtAct_values GlobalTheory.globalFns_holds R D'.toPre F N' ν' (𝓞 E)).1 o.onB x
  let us : Fin r → N.QT n := fun i => ∏ j, qs j ^ ρ x i j
  let ts : Fin r → N.Gt := fun i => ∏ j, (qs j).1.2 ^ ρ x i j
  have hts : ∀ i, (us i).1.2 = ts i := fun i => by
    show ((MonoidHom.snd _ _).comp (N.QT n).subtype) (∏ j, qs j ^ ρ x i j) = ∏ j, (qs j).1.2 ^ ρ x i j
    rw [map_prod]
    simp only [map_zpow]
    rfl
  have husy : ∀ i, (us i).1.1.toAdd = ∑ j, ρ x i j • (qs j).1.1.toAdd := fun i => by
    show Multiplicative.toAdd (((MonoidHom.fst _ _).comp (N.QT n).subtype) (∏ j, qs j ^ ρ x i j)) = _
    rw [map_prod, toAdd_prod]
    simp only [map_zpow, toAdd_zpow]
    rfl
  obtain ⟨w', hw'⟩ := GlobalTheory.T.exists_tensorTorusPoint_of_componentTuple F N N' W _ _ _ hF ts
  have hb : w'.b = GlobalTheory.Relabel.actV ν' o.onB x q0.1.2.b := by
    apply hF.2.1.1
    funext i
    rw [cmp_actV T ν ν' ρ o hact x _ i, hw'.1 i]
    simp only [ts]
    rw [← NumD.projB_apply, map_prod]
    refine Finset.prod_congr rfl fun j _ => ?_
    rw [map_zpow, NumD.projB_apply, hrel0.2.1 j]
  have hros := _root_.GlobalTheory.Mum.TensRos.rosGt_values R hR D D' W T F N N' ν ν' E H ρ hρ o hact x ρ' hρ' q0.1.2 w' (fun j => (qs j).1.2) hrel0.2 hw'

  set y'' : N'.X := ν'.eX.symm (x • p'.y) with hy''
  have hey : ∀ i, TensTor.chi T ν ν' y'' i = (us i).1.1.toAdd := fun i => by
    rw [husy i]
    have h1 : ν'.eX y'' = x • p'.y := by rw [hy'', AddEquiv.apply_symm_apply]

    simp only [TensTor.chi, h1, hact.1 x p'.y i, map_sum, map_zsmul]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [← hrel0.1 j, ← hq0.1]
    rfl
  have hwn : w' ^ n = N'.io y'' := by
    have hpow := rel_pow hF hw' n
    have hio := GlobalTheory.T.tensorTorusValueCorrespondence_period F N N' W _ _ _ hF y''
    have e1 : ts ^ n = fun j => N.io (TensTor.chi T ν ν' y'' j) := funext fun i => by
      rw [hey i, husy i, io_sum]
      simp only [Pi.pow_apply, ts, ← Finset.prod_pow]
      refine Finset.prod_congr rfl fun j _ => ?_
      rw [← (qs j).2]
      rw [← zpow_natCast, ← zpow_natCast ((qs j).1.2), ← zpow_mul, ← zpow_mul, mul_comm]
    rw [e1] at hpow
    exact GlobalTheory.T.tensorTorusValueCorrespondence_unique_point F N N' W _ _ _ hF _ _ _ hpow hio
  let tv : N'.QT n := ⟨(Multiplicative.ofAdd y'', w'), by rw [NumD.mem_QT]; exact hwn⟩
  obtain ⟨t', ht'⟩ := (hB'.2.2.2.2 n).2.1 tv

  have hex : ∀ b, ∃ c, ν.QPt (ev n b) c := fun b => ((hB.2.2.2.2 n).1 (ev n b)).exists
  choose qv hqv using hex
  have huniq : ∀ b c, ν.QPt (ev n b) c → c = qv b := fun b c h =>
    ((hB.2.2.2.2 n).1 (ev n b)).unique h (hqv b)
  have haddv : ∀ b c, N.QEq (qv b * qv c) (qv (b + c)) := fun b c => by
    obtain ⟨q, hqy, hqadd, hqeq⟩ := hadd n hn b c
    obtain ⟨cq, hcq⟩ := ((hB.2.2.2.2 n).1 q).exists
    have e1 : cq = qv b * qv c := by
      refine Subtype.ext (Prod.ext ?_ ?_)
      · apply Multiplicative.toAdd.injective
        apply ν.eX.injective
        change ν.eX cq.1.1.toAdd = ν.eX ((qv b).1.1.toAdd + (qv c).1.1.toAdd)
        rw [map_add (f := _), (hqv b).1, (hqv c).1, hcq.1, hqy]
      · exact (hB.2.2.1 _ _ _ _ _ _ (hqv b).2 (hqv c).2 hcq.2).1 hqadd
    rw [← e1]
    exact ((hB.2.2.2.2 n).2.2 q (ev n (b + c)) cq (qv (b + c)) hcq (hqv _)).1 hqeq
  let f : Multiplicative ((Fin g → ℤ) × (Fin g → ℤ)) →* N.QT n ⧸ (qTH N n).range :=
    MonoidHom.mk' (fun b => ((qv b.toAdd : N.QT n) : N.QT n ⧸ (qTH N n).range)) fun b c => by
      rw [toAdd_mul, ← (qEq_iff_mk N _ _).1 (haddv _ _), QuotientGroup.mk_mul]
  have hQi : ∀ i, N.QEq (us i) (qs1 i) := fun i => by
    rw [qEq_iff_mk, huniq _ _ (hqs1 i)]
    have h1 : ((qv (∑ j, ρ x i j • a j) : N.QT n) : N.QT n ⧸ (qTH N n).range) =
        f (Multiplicative.ofAdd (∑ j, ρ x i j • a j)) := rfl
    rw [h1, ofAdd_sum, map_prod]
    simp only [us, QuotientGroup.mk_prod, QuotientGroup.mk_zpow]
    refine Finset.prod_congr rfl fun j _ => ?_
    rw [ofAdd_zsmul, map_zpow, huniq _ _ (hqs j)]
    rfl
  choose z hz1 hz2 using hQi
  obtain ⟨z', hz'⟩ := hF.2.2.2.1.2 z
  let eH : N'.X →+ (Fin r → N.X) := AddMonoidHom.mk' (TensTor.chi T ν ν') fun a b => funext (hF.2.2.1 a b)
  have hQ : N'.QEq tv q1 := by
    refine ⟨z', ?_, ?_⟩
    · apply hF.2.2.2.1.1
      have hs : TensTor.chi T ν ν' (y'' + n • z') = TensTor.chi T ν ν' y'' + n • TensTor.chi T ν ν' z' :=
        (map_add eH _ _).trans (congrArg _ (map_nsmul eH n z'))
      change TensTor.chi T ν ν' q1.1.1.toAdd = TensTor.chi T ν ν' (y'' + n • z')
      rw [hs]
      funext i
      rw [Pi.add_apply, Pi.smul_apply]
      rw [hrel1.1 i, hz1 i, hey i, hz']
    · have hm := GlobalTheory.T.tensorTorusValueCorrespondence_mul F N N' W _ _ _ hF _ _ _ _ hw' (GlobalTheory.T.tensorTorusValueCorrespondence_period F N N' W _ _ _ hF z')
      have e2 : ts * (fun j => N.io (TensTor.chi T ν ν' z' j)) = fun j => (qs1 j).1.2 := funext fun i => by
        rw [Pi.mul_apply, hz2 i, hts i, hz']
      rw [e2] at hm
      exact GlobalTheory.T.tensorTorusValueCorrespondence_unique_point F N N' W _ _ _ hF _ _ _ hrel1.2 hm
  refine ⟨t', ?_, ?_, ((hB'.2.2.2.2 n).2.2 t' q' tv q1 ht' hq1).2 hQ⟩
  · rw [← ht'.1]
    exact AddEquiv.apply_symm_apply _ _
  · exact ((GlobalTheory.Relabel.gtAct_values GlobalTheory.globalFns_holds R D'.toPre F N' ν' (𝓞 E)).2 o x ρ' hρ' p'.g t'.g q0.1.2 w'
      hq0.2 ht'.2).2 ⟨hb, hros⟩
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorQuotientTorsionOrderActionMatrix =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorQuotientTorsionOrderActionMatrixStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorQuotientTorsionOrderActionMatrixStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorQuotientTorsionOrderActionMatrix\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorQuotientTorsionOrderActionMatrixStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionAddComponentwise =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionAddComponentwise", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusTorsionPointsCorrespondValues\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDataValuesFactsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceMulStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondencePeriodStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceUniquePointStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor

theorem GlobalTheory.Mum.TensTor.qkAdd_of_components : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D D' : DegData R (maximalIdeal R)) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ) (T : Tens D.toPre D'.toPre W) (F : Type) [Field F] [IsAlgClosed F] [Algebra (FractionRing R) F] (N N' : NumD F) (ν : NumOf D.toPre F N) (ν' : NumOf D'.toPre F N') (k : ℕ) (p' q' s' : QkPt D'.toPre F k) (ps qs ss : Fin r → QkPt D.toPre F k), PtRel T ν ν' p' ps → PtRel T ν ν' q' qs → PtRel T ν ν' s' ss → (∀ i, QkAdd (ps i) (qs i) (ss i)) → QkAdd p' q' s' := by
  intro R _ _ _ hR D D' r W T F _ _ _ N N' ν ν' k p' q' s' ps qs ss hp hq hs hadd
  have gt : GlobalTheory.Ex.BrGtSt := GlobalTheory.Ex.GtValues.points_correspond
  obtain ⟨-, -, gAdd, -, gQ⟩ := gt R D.toPre D.psi_even D.tau_bimult F N ν
  obtain ⟨-, -, gAdd', -, gQ'⟩ := gt R D'.toPre D'.psi_even D'.tau_bimult F N' ν'
  have hF := GlobalTheory.T.tensorData_values_facts R hR D D' W T F N N' ν ν'
  obtain ⟨-, -, he, hebij, -, -, -, -⟩ := hF
  obtain ⟨P', Ps, hP', hPs, hPy, hPg⟩ := hp
  obtain ⟨Q', Qs, hQ', hQs, hQy, hQg⟩ := hq
  obtain ⟨S', Ss, hS', hSs, hSy, hSg⟩ := hs
  have hz : ∀ i, N.QEq (Ps i * Qs i) (Ss i) := by
    intro i
    obtain ⟨x, hxy, hxg, hxe⟩ := hadd i
    obtain ⟨X, hX⟩ := ((gQ k).1 x).exists
    have hXeq : X = Ps i * Qs i := by
      refine Subtype.ext (Prod.ext ?_ ?_)
      · apply Multiplicative.toAdd.injective
        apply ν.eX.injective
        rw [hX.1, hxy, ← (hPs i).1, ← (hQs i).1, ← map_add (f := _)]
        rfl
      · exact (gAdd _ _ _ _ _ _ (hPs i).2 (hQs i).2 hX.2).1 hxg
    rw [← hXeq]
    exact ((gQ k).2.2 x (ss i) X (Ss i) hX (hSs i)).1 hxe
  choose z hz1 hz2 using hz
  obtain ⟨z', hz'⟩ := hebij.2 z
  have he0 : ∀ i, chi T ν ν' 0 i = 0 := fun i => by
    have := he 0 0 i
    rw [add_zero] at this
    exact (add_eq_left.1 this.symm)
  have hensmul : ∀ (n : ℕ) χ i, chi T ν ν' (n • χ) i = n • chi T ν ν' χ i := by
    intro n χ i
    induction n with
    | zero => rw [zero_smul, zero_smul, he0]
    | succ n ih => rw [succ_nsmul, he, ih, succ_nsmul]
  obtain ⟨x', hx'⟩ := (gQ' k).2.1 (P' * Q')
  refine ⟨x', ?_, ?_, ?_⟩
  · rw [← hx'.1, ← hP'.1, ← hQ'.1, ← map_add (f := _)]
    rfl
  · exact (gAdd' _ _ _ _ _ _ hP'.2 hQ'.2 hx'.2).2 rfl
  · refine ((gQ' k).2.2 x' s' (P' * Q') S' hx' hS').2 ⟨z', ?_, ?_⟩
    · apply hebij.1
      funext i
      have e1 : (P' * Q').1.1.toAdd = P'.1.1.toAdd + Q'.1.1.toAdd := rfl
      have e2 : (Ps i * Qs i).1.1.toAdd = (Ps i).1.1.toAdd + (Qs i).1.1.toAdd := rfl
      rw [hSy i, hz1 i, he, hensmul, hz', e1, he, hPy i, hQy i, e2]
    · have m1 := GlobalTheory.T.tensorTorusValueCorrespondence_mul F N N' W (cmp T ν ν') (chi T ν ν') (wv T ν ν') (GlobalTheory.T.tensorData_values_facts R hR D D' W T F N N' ν ν')
        P'.1.2 Q'.1.2 _ _ hPg hQg
      have m2 := GlobalTheory.T.tensorTorusValueCorrespondence_period F N N' W (cmp T ν ν') (chi T ν ν') (wv T ν ν') (GlobalTheory.T.tensorData_values_facts R hR D D' W T F N N' ν ν') z'
      have m3 := GlobalTheory.T.tensorTorusValueCorrespondence_mul F N N' W (cmp T ν ν') (chi T ν ν') (wv T ν ν') (GlobalTheory.T.tensorData_values_facts R hR D D' W T F N N' ν ν')
        _ _ _ _ m1 m2
      have e3 : ((fun j => (Ps j).1.2) * (fun j => (Qs j).1.2)) * (fun j => N.io (chi T ν ν' z' j)) =
          fun j => (Ss j).1.2 := by
        funext j
        rw [hz2 j, hz']
        rfl
      rw [e3] at m3
      exact GlobalTheory.T.tensorTorusValueCorrespondence_unique_point F N N' W (cmp T ν ν') (chi T ν ν') (wv T ν ν') (GlobalTheory.T.tensorData_values_facts R hR D D' W T F N N' ν ν')
        _ _ _ hSg m3
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionAddComponentwise =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionPointEquivIffComponentsEquiv =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionPointEquivIffComponentsEquiv", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusTorsionPointsCorrespondValues\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDataValuesFactsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceMulStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondencePeriodStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceUniqueComponentsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceUniquePointStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor

noncomputable section

namespace GlobalTheory.Mum.TensTor

theorem comp_nsmul {F : Type} [Field F] {N N' : NumD F} {r : ℕ} {e : N'.X → Fin r → N.X}
    (he : ∀ χ χ' i, e (χ + χ') i = e χ i + e χ' i) (k : ℕ) (z : N'.X) (i : Fin r) : e (k • z) i = k • e z i := by
  induction k with
  | zero =>
    have h := he 0 0 i
    rw [add_zero] at h
    simpa using h
  | succ k ih => rw [succ_nsmul, he, ih, succ_nsmul]

theorem qEq_iff_of_rel {F : Type} [Field F] {N N' : NumD F} {r : ℕ} {W : Matrix (Fin r) (Fin r) ℤ}
    {φ : N'.A → Fin r → N.A} {e : N'.X → Fin r → N.X} {wv : N'.A → F} (hT : TensFacts W φ e wv)
    (hW : IsUnit (W + W.transpose).det) {k : ℕ} {a' b' : N'.QT k} {as bs : Fin r → N.QT k}
    (ha : QRelV W φ e wv a' as) (hb : QRelV W φ e wv b' bs) : N'.QEq a' b' ↔ ∀ i, N.QEq (as i) (bs i) := by
  have hadd := hT.2.2.1
  have he := hT.2.2.2.1
  constructor
  · rintro ⟨z, hy, hg⟩ i
    refine ⟨e z i, ?_, ?_⟩
    · rw [← hb.1 i, hy, hadd, comp_nsmul hadd, ha.1 i]
    · have h1 := GlobalTheory.T.tensorTorusValueCorrespondence_mul F N N' W φ e wv hT _ _ _ _ ha.2 (GlobalTheory.T.tensorTorusValueCorrespondence_period F N N' W φ e wv hT z)
      rw [← hg] at h1
      have h2 := congrFun (GlobalTheory.T.tensorTorusValueCorrespondence_unique_components F N N' W φ e wv hT hW _ _ _ hb.2 h1) i
      simpa using h2
  · intro h
    choose z hz using h
    obtain ⟨z', hz'⟩ := he.2 z
    refine ⟨z', ?_, ?_⟩
    · apply he.1
      funext i
      rw [hadd, comp_nsmul hadd, hz', ha.1 i, hb.1 i]
      exact (hz i).1
    · have h1 := GlobalTheory.T.tensorTorusValueCorrespondence_mul F N N' W φ e wv hT _ _ _ _ ha.2 (GlobalTheory.T.tensorTorusValueCorrespondence_period F N N' W φ e wv hT z')
      have h2 : ((fun j => (as j).1.2) * fun j => N.io (e z' j)) = fun j => (bs j).1.2 :=
        funext fun j => by rw [Pi.mul_apply, hz']; exact ((hz j).2).symm
      rw [h2] at h1
      exact GlobalTheory.T.tensorTorusValueCorrespondence_unique_point F N N' W φ e wv hT _ _ _ hb.2 h1

theorem qkPt_equiv_iff_components : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R →
    ∀ (D D' : DegData R (maximalIdeal R)) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ) (T : Tens D.toPre D'.toPre W)
    (F : Type) [Field F] [IsAlgClosed F] [Algebra (FractionRing R) F] (N N' : NumD F) (ν : NumOf D.toPre F N)
    (ν' : NumOf D'.toPre F N'), IsUnit (W + W.transpose).det → ∀ (k : ℕ) (p' q' : QkPt D'.toPre F k)
    (ps qs : Fin r → QkPt D.toPre F k), PtRel T ν ν' p' ps → PtRel T ν ν' q' qs →
    (QkPt.Equiv D'.toPre F p' q' ↔ ∀ i, QkPt.Equiv D.toPre F (ps i) (qs i)) := by
  intro R _ _ _ hB D D' r W T F _ _ _ N N' ν ν' hW k p' q' ps qs hp hq
  obtain ⟨a', as, ha', has, ha⟩ := hp
  obtain ⟨b', bs, hb', hbs, hb⟩ := hq
  have hT := GlobalTheory.T.tensorData_values_facts R hB D D' W T F N N' ν ν'
  have G := GlobalTheory.Ex.GtValues.points_correspond
  rw [((G R D'.toPre D'.psi_even D'.tau_bimult F N' ν').2.2.2.2 k).2.2 p' q' a' b' ha' hb', qEq_iff_of_rel hT hW ha hb]
  exact forall_congr' fun i =>
    (((G R D.toPre D.psi_even D.tau_bimult F N ν).2.2.2.2 k).2.2 _ _ _ _ (has i) (hbs i)).symm

end GlobalTheory.Mum.TensTor
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionPointEquivIffComponentsEquiv =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionTowerNsmulComponentwise =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionTowerNsmulComponentwise", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusTorsionPointsCorrespondValues\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDataValuesFactsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceMulStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondencePeriodStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorusValueCorrespondenceUniquePointStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor

namespace GlobalTheory.Mum.TensTower

section Values
variable {F : Type} [Field F] {N N' : NumD F} {r : ℕ} {W : Matrix (Fin r) (Fin r) ℤ} {φ : N'.A → Fin r → N.A}
  {e : N'.X → Fin r → N.X} {wv : N'.A → F}

theorem comp_nsmul (h : TensFacts W φ e wv) (k : ℕ) (χ : N'.X) (i : Fin r) : e (k • χ) i = k • e χ i :=
  (AddMonoidHom.mk' (fun χ => e χ i) fun a b => h.2.2.1 a b i).map_nsmul k χ

theorem rel_pow (h : TensFacts W φ e wv) {v' : N'.Gt} {vs : Fin r → N.Gt} (hv : GtRelV W φ e wv v' vs) (k : ℕ) :
    GtRelV W φ e wv (v' ^ k) (vs ^ k) := by
  apply _root_.GlobalTheory.Mum.TensTor.gtRelV_npow_of_tensFacts <;> assumption

theorem tower_val (h : TensFacts W φ e wv) {n m : ℕ} {p' : N'.QT (n * m)} {ps : Fin r → N.QT (n * m)} {t' : N'.QT n}
    {ts : Fin r → N.QT n} (hp : QRelV W φ e wv p' ps) (ht : QRelV W φ e wv t' ts)
    (hz : ∀ i, ∃ z : N.X, (ts i).1.1.toAdd = (ps i).1.1.toAdd + n • z ∧ (ts i).1.2 = (ps i).1.2 ^ m * N.io z) :
    ∃ z' : N'.X, t'.1.1.toAdd = p'.1.1.toAdd + n • z' ∧ t'.1.2 = p'.1.2 ^ m * N'.io z' := by
  choose z hz1 hz2 using hz
  obtain ⟨z', rfl⟩ := h.2.2.2.1.2 z
  refine ⟨z', h.2.2.2.1.1 (funext fun i => ?_), ?_⟩
  · rw [h.2.2.1, comp_nsmul h, ht.1, hp.1, hz1]
  · refine GlobalTheory.T.tensorTorusValueCorrespondence_unique_point F N N' W φ e wv h _ _ _ ht.2 ?_
    have := GlobalTheory.T.tensorTorusValueCorrespondence_mul F N N' W φ e wv h _ _ _ _ (rel_pow h hp.2 m) (GlobalTheory.T.tensorTorusValueCorrespondence_period F N N' W φ e wv h z')
    have e1 : (fun j => (ts j).1.2) = (fun j => (ps j).1.2) ^ m * fun j => N.io (e z' j) := funext hz2
    rw [e1]
    exact this

end Values

theorem tower : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D D' : DegData R (maximalIdeal R)) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ) (T : Tens D.toPre D'.toPre W) (F : Type) [Field F] [IsAlgClosed F] [Algebra (FractionRing R) F] (N N' : NumD F) (ν : NumOf D.toPre F N) (ν' : NumOf D'.toPre F N') (n m : ℕ), 0 < n → 0 < m → ∀ (p' : QkPt D'.toPre F (n * m)) (ps : Fin r → QkPt D.toPre F (n * m)) (t' : QkPt D'.toPre F n) (ts : Fin r → QkPt D.toPre F n), PtRel T ν ν' p' ps → PtRel T ν ν' t' ts → (∀ i, ∃ q : QkPt D.toPre F n, q.y = (ps i).y ∧ GtPtF.IsNsmul m (ps i).g q.g ∧ QkPt.Equiv D.toPre F q (ts i)) → ∃ q' : QkPt D'.toPre F n, q'.y = p'.y ∧ GtPtF.IsNsmul m p'.g q'.g ∧ QkPt.Equiv D'.toPre F q' t' := by
  intro R _ _ _ hR D D' r W T F _ _ _ N N' ν ν' n m _ _ p' ps t' ts ⟨a', as, ha', has, ha⟩ ⟨b', bs, hb', hbs, hb⟩ H
  have hF := GlobalTheory.T.tensorData_values_facts R hR D D' W T F N N' ν ν'
  have B := (GtValues.points_correspond R D.toPre D.psi_even D.tau_bimult F N ν).2.2.2.2 n
  have B' := (GtValues.points_correspond R D'.toPre D'.psi_even D'.tau_bimult F N' ν').2.2.2.2 n
  obtain ⟨z', hz1, hz2⟩ := tower_val hF ha hb fun i => by
    obtain ⟨q, hy, hn, he⟩ := H i
    obtain ⟨c, hc⟩ := (B.1 q).exists
    obtain ⟨z, h1, h2⟩ := (B.2.2 q (ts i) c (bs i) hc (hbs i)).1 he
    refine ⟨z, ?_, ?_⟩
    · rw [h1, ν.eX.injective (hc.1.trans (hy.trans (has i).1.symm))]
    · rw [h2, (GtValues.isNsmul_val ν m (has i).2 hc.2).1 hn]
  let c' : N'.QT n := ⟨(a'.1.1, a'.1.2 ^ m), by
    rw [NumD.mem_QT, ← pow_mul, mul_comm m n]
    exact a'.2⟩
  obtain ⟨q', hq'⟩ := B'.2.1 c'
  exact ⟨q', hq'.1.symm.trans ha'.1, (GtValues.isNsmul_val ν' m ha'.2 hq'.2).2 rfl,
    (B'.2.2 q' t' c' b' hq' hb').2 ⟨z', hz1, hz2⟩⟩

end GlobalTheory.Mum.TensTower
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionTowerNsmulComponentwise =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionPairingEqProdFactorPairings =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionPairingEqProdFactorPairings", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.DegenerationWeilPairingProperties\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor

namespace GlobalTheory.Mum.TensTor.PairVal

theorem comp_one {B C : Type} [CommGroup B] [CommGroup C] {r : ℕ} {φ : B → Fin r → C}
    (h : ∀ x y j, φ (x * y) j = φ x j * φ y j) (j : Fin r) : φ 1 j = 1 := by
  have := h 1 1 j
  rw [_root_.one_mul] at this
  exact mul_eq_left.1 this.symm

theorem comp_pow {B C : Type} [CommGroup B] [CommGroup C] {r : ℕ} {φ : B → Fin r → C}
    (h : ∀ x y j, φ (x * y) j = φ x j * φ y j) (x : B) (m : ℕ) (j : Fin r) : φ (x ^ m) j = φ x j ^ m := by
  induction m with
  | zero => simp [comp_one h]
  | succ m ih => rw [pow_succ, h, ih, pow_succ]

variable {F : Type} [Field F] {N N' : NumD F} {r : ℕ}

theorem cube_prod (W : Matrix (Fin r) (Fin r) ℤ) (φ : N'.A → Fin r → N.A) (U : N'.A → Fˣ)
    (hφ : ∀ x y j, φ (x * y) j = φ x j * φ y j)
    (hc : ∀ x y u, N'.θ x y u * U (x * y * u) * U x * U y * U u =
      (∏ i, ∏ j, (N.θ (φ x i * φ x j) (φ y i * φ y j) (φ u i * φ u j) /
        (N.θ (φ x i) (φ y i) (φ u i) * N.θ (φ x j) (φ y j) (φ u j))) ^ W i j) *
      U (x * y) * U (x * u) * U (y * u) * U 1) (k : ℕ) (b a : N'.A) :
    cubN N'.θ k 1 b a * U (b ^ k * a) * U 1 * (U b * U a) ^ k =
      (∏ i, ∏ j, (cubN N.θ k 1 (φ b i * φ b j) (φ a i * φ a j) /
        (cubN N.θ k 1 (φ b i) (φ a i) * cubN N.θ k 1 (φ b j) (φ a j))) ^ W i j) *
      U (b ^ k) * U a * (U (b * a) * U 1) ^ k := by
  induction k with
  | zero => simp [cubN, mul_comm]
  | succ k ih =>
    have h := hc (b ^ k) b a
    simp only [comp_pow hφ, ← mul_pow] at h
    have split : ∀ P p Q q R s : Fˣ, P * p / (Q * q * (R * s)) = P / (Q * R) * (p / (q * s)) := by
      intro P p Q q R s
      rw [_root_.mul_mul_mul_comm, div_mul_div_comm]
    simp only [_root_.GlobalTheory.CubeBalance.cubN_succ, split, mul_zpow, Finset.prod_mul_distrib, pow_succ]
    apply Additive.ofMul.injective
    have ih' := congrArg Additive.ofMul ih
    have h' := congrArg Additive.ofMul h
    simp only [ofMul_mul, ofMul_pow] at ih' h' ⊢
    linear_combination (norm := abel) ih' + h'

theorem torusExtensionPair_correction_eq_value_quotient (N : NumD F) (g g' : N.Gt) (z z' : N.X) (C C₁ C₂ : Fˣ) :
    g'.s z * g.s z' / (N.θ (N.c z') g'.b (N.c z) * N.θ (N.c z') g'.b g.b * N.θ (N.c z) g.b (N.c z' * g'.b)) *
      (C / (C₁ * C₂)) = (g * g').s (z + z') * C / (g.s z * C₁ * (g'.s z' * C₂)) := by
  rw [NumD.Gt.mul_s, N.c_add]
  have m1 := g.mult z z'
  have m2 := g'.mult z z'
  have co := N.cub.coc (N.c z) (N.c z') g'.b g.b
  rw [N.cub.s12 (N.c z * N.c z') g'.b g.b] at co
  rw [N.cub.s12 (N.c z') g'.b (N.c z), N.cub.s01 (N.c z') (N.c z), N.cub.s12 (N.c z) g.b]
  apply Additive.ofMul.injective
  replace m1 := congrArg Additive.ofMul m1
  replace m2 := congrArg Additive.ofMul m2
  replace co := congrArg Additive.ofMul co
  simp only [ofMul_mul, ofMul_div] at m1 m2 co ⊢
  linear_combination (norm := abel) -m1 - m2 + co

end GlobalTheory.Mum.TensTor.PairVal

namespace GlobalTheory.Mum.TensTor.PairVal

variable {F : Type} [Field F] {N N' : NumD F} {r : ℕ}

theorem tk_tens (W : Matrix (Fin r) (Fin r) ℤ) (φ : N'.A → Fin r → N.A) (e : N'.X → Fin r → N.X) (wv : N'.A → F)
    (hT : TensFacts W φ e wv) (U : N'.A → Fˣ) (hU : ∀ x, wv x = (U x : F)) {k : ℕ} (q' p' : N'.QT k)
    (qs ps : Fin r → N.QT k) (hq : QRelV W φ e wv q' qs) (hp : QRelV W φ e wv p' ps) :
    N'.tk q' p' * (U p'.1.2.b * U q'.1.2.b) ^ k =
      (∏ i, ∏ j, (N.tk (qs i * qs j) (ps i * ps j) / (N.tk (qs i) (ps i) * N.tk (qs j) (ps j))) ^ W i j) *
      (U (p'.1.2.b * q'.1.2.b) * U 1) ^ k := by
  obtain ⟨hφ, -, -, -, -, -, hcube, -⟩ := hT
  have hcU : ∀ x y u, N'.θ x y u * U (x * y * u) * U x * U y * U u =
      (∏ i, ∏ j, (N.θ (φ x i * φ x j) (φ y i * φ y j) (φ u i * φ u j) /
        (N.θ (φ x i) (φ y i) (φ u i) * N.θ (φ x j) (φ y j) (φ u j))) ^ W i j) *
      U (x * y) * U (x * u) * U (y * u) * U 1 := by
    intro x y u
    apply Units.ext
    simp only [Units.val_mul, ← hU]
    exact hcube x y u
  have hA := cube_prod W φ U hφ hcU k p'.1.2.b q'.1.2.b
  simp only [hp.2.1, hq.2.1] at hA
  have hG := hq.2.2 p'.1.1.toAdd
  simp only [hU, ← Units.val_mul] at hG
  replace hG := Units.ext hG
  simp only [hp.1, ← N'.QT_pow_b p'] at hG
  have hX : ∀ i j, N.tk (qs i * qs j) (ps i * ps j) / (N.tk (qs i) (ps i) * N.tk (qs j) (ps j)) =
      (qs j).1.2.s (ps i).1.1.toAdd * (qs i).1.2.s (ps j).1.1.toAdd /
        (N.θ (N.c (ps j).1.1.toAdd) (qs j).1.2.b (N.c (ps i).1.1.toAdd) *
          N.θ (N.c (ps j).1.1.toAdd) (qs j).1.2.b (qs i).1.2.b *
          N.θ (N.c (ps i).1.1.toAdd) (qs i).1.2.b (N.c (ps j).1.1.toAdd * (qs j).1.2.b)) *
      (cubN N.θ k 1 ((ps i).1.2.b * (ps j).1.2.b) ((qs i).1.2.b * (qs j).1.2.b) /
        (cubN N.θ k 1 (ps i).1.2.b (qs i).1.2.b * cubN N.θ k 1 (ps j).1.2.b (qs j).1.2.b)) :=
    fun i j => (torusExtensionPair_correction_eq_value_quotient N (qs i).1.2 (qs j).1.2 (ps i).1.1.toAdd (ps j).1.1.toAdd _ _ _).symm
  simp only [hX, mul_zpow, Finset.prod_mul_distrib]
  rw [NumD.tk]
  apply Additive.ofMul.injective
  have hA' := congrArg Additive.ofMul hA
  have hG' := congrArg Additive.ofMul hG
  simp only [ofMul_mul, ofMul_pow] at hA' hG' ⊢
  linear_combination (norm := abel) hA' + hG'

theorem wp_eq_prod : ∀ (F : Type) [Field F] (N N' : NumD F) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ) (φ : N'.A → Fin r → N.A) (e : N'.X → Fin r → N.X) (wv : N'.A → F), TensFacts W φ e wv → ∀ (k : ℕ), 1 ≤ k → ∀ (q' p' : N'.QT k) (qs ps : Fin r → N.QT k), QRelV W φ e wv q' qs → QRelV W φ e wv p' ps → N'.wp q' p' = ∏ i, ∏ j, N.wp (qs i) (ps j) ^ (W + W.transpose) i j := by
  intro F _ N N' r W φ e wv hT k _ q' p' qs ps hq hp
  let U : N'.A → Fˣ := fun x => Units.mk0 (wv x) (hT.2.2.2.2.2.1 x)
  have hU : ∀ x, wv x = (U x : F) := fun x => rfl
  have h1 := tk_tens W φ e wv hT U hU q' p' qs ps hq hp
  have h2 := tk_tens W φ e wv hT U hU p' q' ps qs hp hq
  rw [mul_comm q'.1.2.b p'.1.2.b] at h2
  have hper : ∀ i j, N.wp (qs i) (ps j) * N.wp (qs j) (ps i) =
      N.tk (qs i * qs j) (ps i * ps j) / (N.tk (qs i) (ps i) * N.tk (qs j) (ps j)) /
        (N.tk (ps i * ps j) (qs i * qs j) / (N.tk (ps i) (qs i) * N.tk (ps j) (qs j))) := by
    intro i j
    have e1 := WpPairing.wp_mul_left N (qs i) (qs j) (ps i * ps j)
    have e2 := WpPairing.wp_mul_right N (qs i) (ps i) (ps j)
    have e3 := WpPairing.wp_mul_right N (qs j) (ps i) (ps j)
    simp only [NumD.wp] at e1 e2 e3 ⊢
    apply Additive.ofMul.injective
    replace e1 := congrArg Additive.ofMul e1
    replace e2 := congrArg Additive.ofMul e2
    replace e3 := congrArg Additive.ofMul e3
    simp only [ofMul_mul, ofMul_div] at e1 e2 e3 ⊢
    linear_combination (norm := abel) -e1 - e2 - e3
  have hR : ∏ i, ∏ j, N.wp (qs i) (ps j) ^ (W + W.transpose) i j =
      ∏ i, ∏ j, (N.wp (qs i) (ps j) * N.wp (qs j) (ps i)) ^ W i j := by
    simp only [Matrix.add_apply, Matrix.transpose_apply, zpow_add, Finset.prod_mul_distrib, mul_zpow]
    congr 1
    rw [Finset.prod_comm]
  have hD : ∀ f g : Fin r → Fin r → Fˣ, ∏ i, ∏ j, (f i j / g i j) ^ W i j =
      (∏ i, ∏ j, f i j ^ W i j) / ∏ i, ∏ j, g i j ^ W i j := by
    intro f g
    simp only [div_zpow, Finset.prod_div_distrib]
  rw [hR]
  simp only [hper]
  rw [hD]
  rw [NumD.wp]
  apply Additive.ofMul.injective
  have h1' := congrArg Additive.ofMul h1
  have h2' := congrArg Additive.ofMul h2
  simp only [ofMul_mul, ofMul_pow, ofMul_div] at h1' h2' ⊢
  linear_combination (norm := abel_nf) h1' - h2'

end GlobalTheory.Mum.TensTor.PairVal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionPairingEqProdFactorPairings =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairingTensorTorsionEqProdComponents =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairingTensorTorsionEqProdComponents", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FamiliesValuesCorrespond\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorsionPairingValuesOfFamiliesValues\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusTorsionPointsCorrespondValues\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDataValuesFactsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionPairingEqProdFactorPairings\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor

namespace GlobalTheory.Mum.TensTor

theorem weilQk_tens : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D D' : DegData R (maximalIdeal R)) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ) (T : Tens D.toPre D'.toPre W) (F : Type) [Field F] [IsAlgClosed F] [Algebra (FractionRing R) F] (N N' : NumD F) (ν : NumOf D.toPre F N) (ν' : NumOf D'.toPre F N') (k : ℕ), 0 < k → ∀ (p' q' : QkPt D'.toPre F k) (ps qs : Fin r → QkPt D.toPre F k), PtRel T ν ν' p' ps → PtRel T ν ν' q' qs → ∀ z : Fin r → Fin r → Fˣ, (∀ i j, WeilQkIs D.toPre F k (ps i) (qs j) (z i j : F)) → WeilQkIs D'.toPre F k p' q' ((∏ i, ∏ j, z i j ^ (W + W.transpose) i j : Fˣ) : F) := by
  intro R _ _ _ _ D D' r W T F _ _ _ N N' ν ν' k hk p' q' ps qs hp hq z hz
  have gt : BrGtSt := GlobalTheory.Ex.GtValues.points_correspond
  have wp : BrWpSt := GlobalTheory.WeilValues.weil_eq_values gt (GlobalTheory.Ex.brFam GlobalTheory.allSixLaws.1 GlobalTheory.allSixLaws.2.1)
  have hk1 : 1 ≤ k := hk
  have hW := wp R D.toPre D.psi_even D.tau_bimult F N ν k hk1
  have hW' := wp R D'.toPre D'.psi_even D'.tau_bimult F N' ν' k hk1
  have hF := GlobalTheory.T.tensorData_values_facts R ‹_› D D' W T F N N' ν ν'
  obtain ⟨a', as, ha', has, hra⟩ := hp
  obtain ⟨b', bs, hb', hbs, hrb⟩ := hq
  have hv := _root_.GlobalTheory.Mum.TensTor.PairVal.wp_eq_prod F N N' W (cmp T ν ν') (chi T ν ν') (wv T ν ν') hF k hk1 a' b' as bs hra hrb
  refine (hW' p' q' a' b' _ ha' hb').2 ?_
  rw [hv]
  have hz' : ∀ i j, z i j = N.wp (as i) (bs j) := fun i j =>
    Units.ext ((hW (ps i) (qs j) (as i) (bs j) _ (has i) (hbs j)).1 (hz i j))
  simp only [hz']

end GlobalTheory.Mum.TensTor
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairingTensorTorsionEqProdComponents =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationDataTorsionIsometryOnto =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationDataTorsionIsometryOnto", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsProjOverWeierstrass\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensFacts\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsComponentTupleTensorTorsionUnimodular\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.CharZeroOfIsPrimitiveRoot\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDegenerationValuesAlgClosedField\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorTorsionPointOfComponentTuple\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorQuotientTorsionOrderActionMatrixStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionAddComponentwise\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionPointEquivIffComponentsEquiv\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorTorsionTowerNsmulComponentwise\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairingTensorTorsionEqProdComponents\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.Ex GlobalTheory.Mum.TensTor

noncomputable section

theorem GlobalTheory.Mum.TensTor.tate_tens : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E), ∀ (D D' : DegData R (maximalIdeal R)) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ), ((W + W.transpose).map (Int.cast : ℤ → ℝ)).PosDef → IsUnit (W + W.transpose).det → ∀ T : Tens D.toPre D'.toPre W, ∀ (ρ : 𝓞 E →+* Matrix (Fin r) (Fin r) ℤ), (∀ a, (ρ a).transpose * (W + W.transpose) = (W + W.transpose) * ρ (H.bar a)) → W = (W + W.transpose) * ρ H.w0 → ∀ [Module (𝓞 E) D'.toPre.X] (o : letI := H.starRing; D'.toPre.OAct (𝓞 E)), (letI := H.starRing; T.IsAct o ρ) → (letI := H.starRing; TraceFormTwistIso D'.toPre o H.w0) → ∀ (Dm : Datum H) (g : ℕ) (e : Dm.La ≃+ (Fin r → (Fin g → ℤ) × (Fin g → ℤ))), g = D.toPre.P.g + Module.finrank ℤ D.toPre.X → (∀ (a : 𝓞 E) x i, e (a • x) i = ∑ j, ρ a i j • e x j) → (∀ x y, Dm.EF x y = ∑ i, ∑ j, (W + W.transpose) i j * ((e x i).1 ⬝ᵥ (e y j).2 - (e x i).2 ⬝ᵥ (e y j).1)) → ∀ (F : Type) [Field F] [IsAlgClosed F] [Algebra (FractionRing R) F] (ζ : ℕ → Fˣ), (∀ n, 0 < n → IsPrimitiveRoot (ζ n) n) → (∀ n m, 0 < n → 0 < m → ζ (n * m) ^ m = ζ n) → ∀ ev : ∀ n : ℕ, ((Fin g → ℤ) × (Fin g → ℤ)) → QkPt D.toPre F n, (∀ n, 0 < n → ∀ a b, QkAdd (ev n a) (ev n b) (ev n (a + b))) → (∀ n, 0 < n → ∀ a b, QkPt.Equiv D.toPre F (ev n a) (ev n b) ↔ ∃ e, a = b + n • e) → (∀ n, 0 < n → ∀ p, ∃ a, QkPt.Equiv D.toPre F (ev n a) p) → (∀ n m, 0 < n → 0 < m → ∀ a, ∃ q : QkPt D.toPre F n, q.y = (ev (n * m) a).y ∧ GtPtF.IsNsmul m (ev (n * m) a).g q.g ∧ QkPt.Equiv D.toPre F q (ev n a)) → (∀ n, 0 < n → ∀ a b, WeilQkIs D.toPre F n (ev n a) (ev n b) ((ζ n ^ (a.1 ⬝ᵥ b.2 - a.2 ⬝ᵥ b.1) : Fˣ) : F)) → ∃ I : TateIsoQ Dm D'.toPre o F, I.ζ = ζ := by
  intro R _ _ _ hB E _ _ _ H D D' r W _ hdet T ρ hρ _ _ o hact _ Dm g e _ he hEF F _ _ _ ζ hprim hpow ev hadd hker
    honto htow hweil

  obtain ⟨N, ⟨ν⟩⟩ := _root_.GlobalTheory.MumValues.exists_values R hB D F
  obtain ⟨N', ⟨ν'⟩⟩ := _root_.GlobalTheory.MumValues.exists_values R hB D' F
  choose P hP using fun (n : ℕ) (a : Dm.La) =>
    _root_.GlobalTheory.Mum.TensTor.exists_ptRel R hB D D' W T F N N' ν ν' n (fun j => ev n (e a j))
  refine ⟨⟨ζ, hprim, hpow, P, ?_, ?_, ?_, ?_, ?_, ?_⟩, rfl⟩
  ·
    intro n hn a b
    have hs := hP n (a + b)
    simp only [map_add (f := _), Pi.add_apply] at hs
    exact _root_.GlobalTheory.Mum.TensTor.qkAdd_of_components R hB D D' W T F N N' ν ν' n (P n a) (P n b) (P n (a + b)) _ _ _ (hP n a) (hP n b) hs
      (fun i => hadd n hn (e a i) (e b i))
  ·
    intro n hn x a
    have hs := hP n (x • a)
    simp only [he] at hs
    exact _root_.GlobalTheory.Mum.TensAct.qkAct_tens R hB D D' W T F N N' ν ν' E H ρ hρ o hact g ev hadd hker n hn x (fun j => e a j)
      (P n a) (P n (x • a)) (hP n a) hs
  ·
    intro n hn a b
    rw [_root_.GlobalTheory.Mum.TensTor.qkPt_equiv_iff_components R hB D D' W T F N N' ν ν' hdet n (P n a) (P n b) _ _ (hP n a) (hP n b)]
    simp only [hker n hn]
    constructor
    · intro h
      choose c hc using h
      refine ⟨e.symm c, e.injective ?_⟩
      rw [map_add (f := _), map_nsmul, e.apply_symm_apply]
      funext i
      simp only [Pi.add_apply, Pi.smul_apply, hc i]
    · rintro ⟨c, rfl⟩ i
      exact ⟨e c i, by simp only [map_add (f := _), map_nsmul, Pi.add_apply, Pi.smul_apply]⟩
  ·
    intro n hn p
    obtain ⟨ps, hps⟩ := _root_.GlobalTheory.Mum.TensTor.exists_components_of_unimodular R hB D D' W T F N N' ν ν' hdet n p
    choose a ha using fun i => honto n hn (ps i)
    refine ⟨e.symm a, ?_⟩
    rw [_root_.GlobalTheory.Mum.TensTor.qkPt_equiv_iff_components R hB D D' W T F N N' ν ν' hdet n (P n (e.symm a)) p _ ps (hP n (e.symm a)) hps]
    intro i
    simpa only [e.apply_symm_apply] using ha i
  ·
    intro n m hn hm a
    exact _root_.GlobalTheory.Mum.TensTower.tower R hB D D' W T F N N' ν ν' n m hn hm (P (n * m) a) _ (P n a) _ (hP (n * m) a) (hP n a)
      (fun i => htow n m hn hm (e a i))
  ·

    intro n hn a b
    have h := _root_.GlobalTheory.Mum.TensTor.weilQk_tens R hB D D' W T F N N' ν ν' n hn (P n a) (P n b) _ _ (hP n a) (hP n b)
      (fun i j => ζ n ^ ((e a i).1 ⬝ᵥ (e b j).2 - (e a i).2 ⬝ᵥ (e b j).1)) (fun i j => hweil n hn (e a i) (e b j))
    have key : (∏ i, ∏ j, (ζ n ^ ((e a i).1 ⬝ᵥ (e b j).2 - (e a i).2 ⬝ᵥ (e b j).1)) ^ (W + W.transpose) i j) =
        ζ n ^ Dm.EF a b := by
      rw [hEF a b, _root_.GlobalTheory.SharpFamRel.zpow_finsetSum]
      refine Finset.prod_congr rfl fun i _ => ?_
      rw [_root_.GlobalTheory.SharpFamRel.zpow_finsetSum]
      refine Finset.prod_congr rfl fun j _ => ?_
      rw [← zpow_mul, mul_comm ((W + W.transpose) i j)]
    beta_reduce at h
    rwa [key] at h
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationDataTorsionIsometryOnto =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationDataTorsionIsometryOntoStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationDataTorsionIsometryOntoStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsProjOverWeierstrass\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationDataTorsionIsometryOnto\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationDataTorsionIsometryOntoStatement =====
