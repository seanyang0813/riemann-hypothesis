module

public import Development.EtaleCohomology.TateTwists.EtaleComplexPairingFlipExists
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.TateTwists.IsTensorFlip, Development.EtaleCohomology.TateTwists.EtaleCupProductFlipExistsOfComponents

-- ===== clump member: Development.EtaleCohomology.TateTwists.IsTensorFlip =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.IsTensorFlip", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.EtaleComplexPairingFlipExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex
open scoped DirectSum TensorProduct

namespace LateralTheory.EtaleFoundations.FlipPf
open GlobalTheory.EtC

variable {R : Type} [CommRing R]

lemma negOnePow_smul_smul {M : Type*} [AddCommGroup M] (n : ℤ) (x : M) :
    ((n.negOnePow : ℤ) • ((n.negOnePow : ℤ) • x)) = x := by
  rw [smul_smul, ← Units.val_mul, Int.units_mul_self, Units.val_one, one_smul]

lemma coef1 (s t : ℤ) : ((t * s).negOnePow : ℤ) * (t.negOnePow : ℤ) = ((t * (s + 1)).negOnePow : ℤ) := by
  rw [mul_add, mul_one, Int.negOnePow_add, Units.val_mul]

lemma coef2 (s t : ℤ) : (s.negOnePow : ℤ) * (((t + 1) * s).negOnePow : ℤ) = ((t * s).negOnePow : ℤ) := by
  rw [add_mul, one_mul, Int.negOnePow_add, Units.val_mul, mul_left_comm, ← Units.val_mul,
    Int.units_mul_self, Units.val_one, mul_one]

def flipPair {I J K : Cx R} (μ : Pair I J K) : Pair J I K where
  mul U s t w h := ((t * s).negOnePow : ℤ) • (μ.mul U t s w (by omega)).flip
  nat := by
    intro V U g s t w h b a
    simp only [LinearMap.smul_apply, LinearMap.flip_apply, map_zsmul, μ.nat]
  leibniz := by
    intro U s t w h b a
    have hl := μ.leibniz U t s w (by omega) a b
    simp only [LinearMap.smul_apply, LinearMap.flip_apply, map_zsmul]
    dsimp only [Sec.map] at hl ⊢
    rw [hl, smul_add]
    simp only [Units.smul_def, smul_smul, coef1, coef2]
    exact add_comm _ _

def swIx {w : ℤ} (p : {p : ℤ × ℤ // p.1 + p.2 = w}) : {p : ℤ × ℤ // p.1 + p.2 = w} :=
  ⟨(p.1.2, p.1.1), by have := p.2; simp only at this ⊢; omega⟩

def sw (I J : Cx R) (U : Scheme.{0}) (w : ℤ) : Tens I J U w →ₗ[ULift.{1} R] Tens J I U w :=
  DirectSum.toModule _ _ _ fun p =>
    ((p.1.1 * p.1.2).negOnePow : ℤ) •
      ((DirectSum.lof (ULift.{1} R) _
        (fun q : {q : ℤ × ℤ // q.1 + q.2 = w} => Sec (J.X q.1.1) U ⊗[ULift.{1} R] Sec (I.X q.1.2) U) (swIx p)) ∘ₗ
        (TensorProduct.comm (ULift.{1} R) _ _).toLinearMap)

lemma sw_lof (I J : Cx R) (U : Scheme.{0}) (w : ℤ) (p : {p : ℤ × ℤ // p.1 + p.2 = w})
    (a : Sec (I.X p.1.1) U) (b : Sec (J.X p.1.2) U) :
    sw I J U w (DirectSum.lof (ULift.{1} R) _
      (fun q : {q : ℤ × ℤ // q.1 + q.2 = w} => Sec (I.X q.1.1) U ⊗[ULift.{1} R] Sec (J.X q.1.2) U) p (a ⊗ₜ b)) =
    ((p.1.1 * p.1.2).negOnePow : ℤ) • DirectSum.lof (ULift.{1} R) _
      (fun q : {q : ℤ × ℤ // q.1 + q.2 = w} => Sec (J.X q.1.1) U ⊗[ULift.{1} R] Sec (I.X q.1.2) U) (swIx p) (b ⊗ₜ a) := by
  unfold sw
  erw [DirectSum.toModule_lof]
  rfl

lemma lift_lof {I J K : Cx R} (μ : Pair I J K) (U : Scheme.{0}) (w : ℤ) (p : {p : ℤ × ℤ // p.1 + p.2 = w})
    (a : Sec (I.X p.1.1) U) (b : Sec (J.X p.1.2) U) :
    μ.lift U w (DirectSum.lof (ULift.{1} R) _
      (fun q : {q : ℤ × ℤ // q.1 + q.2 = w} => Sec (I.X q.1.1) U ⊗[ULift.{1} R] Sec (J.X q.1.2) U) p (a ⊗ₜ b)) =
    μ.mul U p.1.1 p.1.2 w p.2 a b := by
  unfold Pair.lift
  erw [DirectSum.toModule_lof]
  rfl

lemma lift_sw {I J K : Cx R} (μ : Pair I J K) (U : Scheme.{0}) (w : ℤ) (x : Tens I J U w) :
    (flipPair μ).lift U w (sw I J U w x) = μ.lift U w x := by
  have key : (flipPair μ).lift U w ∘ₗ sw I J U w = μ.lift U w := by
    apply DirectSum.linearMap_ext; intro p; apply TensorProduct.ext'; intro a b
    simp only [LinearMap.comp_apply]
    rw [sw_lof, map_zsmul, lift_lof]
    erw [lift_lof (flipPair μ) U w (swIx p) b a]
    simp only [flipPair]
    exact negOnePow_smul_smul _ _
  exact LinearMap.congr_fun key x

lemma sw_sw (I J : Cx R) (U : Scheme.{0}) (w : ℤ) (x : Tens I J U w) :
    sw J I U w (sw I J U w x) = x := by
  have key : sw J I U w ∘ₗ sw I J U w = LinearMap.id := by
    apply DirectSum.linearMap_ext; intro p; apply TensorProduct.ext'; intro a b
    simp only [LinearMap.comp_apply, LinearMap.id_apply]
    rw [sw_lof, map_zsmul]
    erw [sw_lof J I U w (swIx p) b a]
    show ((p.1.1 * p.1.2).negOnePow : ℤ) • ((p.1.2 * p.1.1).negOnePow : ℤ) • _ = _
    rw [mul_comm p.1.2 p.1.1]
    exact negOnePow_smul_smul _ _
  exact LinearMap.congr_fun key x

lemma res_sw (I J : Cx R) {V U : Scheme.{0}} (g : V ⟶ U) (w : ℤ) (x : Tens I J U w) :
    Tens.res g w (sw I J U w x) = sw I J V w (Tens.res g w x) := by
  have key : Tens.res g w ∘ₗ sw I J U w = sw I J V w ∘ₗ Tens.res g w := by
    apply DirectSum.linearMap_ext; intro p; apply TensorProduct.ext'; intro a b
    simp only [LinearMap.comp_apply]
    rw [sw_lof, map_zsmul]
    unfold Tens.res
    erw [DirectSum.lmap_lof, DirectSum.lmap_lof, TensorProduct.map_tmul, TensorProduct.map_tmul, sw_lof]
    rfl
  exact LinearMap.congr_fun key x

lemma lift_sw' {I J K : Cx R} (μ : Pair I J K) (U : Scheme.{0}) (w : ℤ) (x : Tens J I U w) :
    μ.lift U w (sw J I U w x) = (flipPair μ).lift U w x := by
  conv_rhs => rw [← sw_sw J I U w x]
  rw [lift_sw]

lemma isTensor_flip {I J K : Cx R} (μ : Pair I J K) (hμ : μ.IsTensor) : (flipPair μ).IsTensor := by
  obtain ⟨hs, hi⟩ := hμ
  constructor
  · intro U w y
    obtain ⟨S, hS, hP⟩ := hs U w y
    refine ⟨S, hS, fun V g hg => ?_⟩
    obtain ⟨x, hx⟩ := hP V g hg
    exact ⟨sw I J V w x, by rw [lift_sw, hx]⟩
  · intro U w x hx
    have h0 : μ.lift U w (sw J I U w x) = 0 := by rw [lift_sw', hx]
    obtain ⟨S, hS, hP⟩ := hi U w _ h0
    refine ⟨S, hS, fun V g hg => ?_⟩
    have h1 : Tens.res g w (sw J I U w x) = 0 := hP V g hg
    show Tens.res g w x = 0
    rw [← sw_sw J I U w x, res_sw, h1, map_zero]

end LateralTheory.EtaleFoundations.FlipPf

theorem LateralTheory.EtaleFoundations.etale_complex_pairing_flip_exists : LateralTheory.EtaleFoundations.EtaleComplexPairingFlipExists := by
  intro R _ I J K μ
  refine ⟨LateralTheory.EtaleFoundations.FlipPf.flipPair μ, ?_, ?_, LateralTheory.EtaleFoundations.FlipPf.isTensor_flip μ⟩
  · intro U s t w h a b
    simp only [LateralTheory.EtaleFoundations.FlipPf.flipPair, LinearMap.smul_apply, LinearMap.flip_apply, Units.smul_def]
  · intro U s t w h b a
    simp only [LateralTheory.EtaleFoundations.FlipPf.flipPair, LinearMap.smul_apply, LinearMap.flip_apply, Units.smul_def]
    rw [mul_comm s t]
    exact (LateralTheory.EtaleFoundations.FlipPf.negOnePow_smul_smul _ _).symm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.IsTensorFlip =====

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleCupProductFlipExistsOfComponents =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleCupProductFlipExistsOfComponents", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.EtaleComplexPairingFlipExists\npublic import Development.EtaleCohomology.TateTwists.IsTensorFlip\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.EtaleComplexPairingFlipExists
alias intersectionNumber_baseChange := _root_.LateralTheory.EtaleFoundations.etale_complex_pairing_flip_exists
end LateralTheory.Fin.EtaleComplexPairingFlipExists
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleCupProductFlipExistsOfComponents =====
