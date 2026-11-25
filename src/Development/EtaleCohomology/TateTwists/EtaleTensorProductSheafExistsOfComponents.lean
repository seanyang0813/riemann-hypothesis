module

public import Development.EtaleCohomology.TateTwists.EtaleTensorComplexExistsOfSheafTensorComplex
import Mathlib.Algebra.Category.ModuleCat.FilteredColimits
import Mathlib.RingTheory.Coalgebra.CoassocSimps

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.TateTwists.EtaleSheafTensorComplexExists, Development.EtaleCohomology.TateTwists.EtaleTensorProductSheafExistsOfComponents

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleSheafTensorComplexExists =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleSheafTensorComplexExists", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.EtaleTensorComplexExistsOfSheafTensorComplex\nimport Mathlib.Algebra.Category.ModuleCat.FilteredColimits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.CoassocSimps\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC
open scoped TensorProduct DirectSum

noncomputable section

namespace LateralTheory.EtaleFoundations

section
variable {R : Type} [CommRing R]

lemma sec_map_res {F G : Shv R} (f : F ⟶ G) {V U : Scheme.{0}} (g : V ⟶ U) (a : Sec F U) :
    Sec.map f (Sec.res g a) = Sec.res g (Sec.map f a) := by
  change ((F.obj.map g.op ≫ f.hom.app (op V)).hom a) = ((f.hom.app (op U) ≫ G.obj.map g.op).hom a)
  rw [f.hom.naturality]

lemma sec_map_dd (I : Cx R) (i j k : ℤ) {U : Scheme.{0}} (a : Sec (I.X i) U) :
    Sec.map (I.d j k) (Sec.map (I.d i j) a) = 0 := by
  change ((I.d i j ≫ I.d j k).hom.app (op U)).hom a = 0
  rw [HomologicalComplex.d_comp_d]; rfl

def etaleTensorPresheafOfComplexes (I J : Cx R) (w : ℤ) : Scheme.{0}ᵒᵖ ⥤ ModuleCat.{1} (ULift.{1} R) where
  obj U := ModuleCat.of _ (Tens I J U.unop w)
  map g := ModuleCat.ofHom (Tens.res g.unop w)
  map_id U := by
    ext1; apply DirectSum.linearMap_ext; intro p; apply TensorProduct.ext'; intro a b
    simp [Tens.res]
  map_comp f g := by
    ext1; apply DirectSum.linearMap_ext; intro p; apply TensorProduct.ext'; intro a b
    simp [Tens.res]

def dB (I J : Cx R) (U : Scheme.{0}) (w : ℤ) (p : {p : ℤ × ℤ // p.1 + p.2 = w}) :
    Sec (I.X p.1.1) U →ₗ[ULift.{1} R] Sec (J.X p.1.2) U →ₗ[ULift.{1} R] Tens I J U (w + 1) :=
  ((TensorProduct.mk (ULift.{1} R) _ _).compr₂ (DirectSum.lof (ULift.{1} R) {p : ℤ × ℤ // p.1 + p.2 = w + 1}
      (fun p => Sec (I.X p.1.1) U ⊗[ULift.{1} R] Sec (J.X p.1.2) U) ⟨(p.1.1 + 1, p.1.2), by have := p.2; omega⟩)).compl₁₂
      ((I.d p.1.1 (p.1.1 + 1)).hom.app (op U)).hom LinearMap.id +
  ((p.1.1.negOnePow : ℤ) • ((TensorProduct.mk (ULift.{1} R) _ _).compr₂ (DirectSum.lof (ULift.{1} R) {p : ℤ × ℤ // p.1 + p.2 = w + 1}
      (fun p => Sec (I.X p.1.1) U ⊗[ULift.{1} R] Sec (J.X p.1.2) U) ⟨(p.1.1, p.1.2 + 1), by have := p.2; omega⟩)).compl₁₂
      LinearMap.id ((J.d p.1.2 (p.1.2 + 1)).hom.app (op U)).hom)

def dT (I J : Cx R) (U : Scheme.{0}) (w : ℤ) : Tens I J U w →ₗ[ULift.{1} R] Tens I J U (w + 1) :=
  DirectSum.toModule _ _ _ fun p => TensorProduct.lift (dB I J U w p)

lemma dT_pure (I J : Cx R) (U : Scheme.{0}) (s t w : ℤ) (h : s + t = w) (a : Sec (I.X s) U) (b : Sec (J.X t) U) :
    dT I J U w (tensPure s t w h a b) =
      tensPure (s + 1) t (w + 1) (by omega) (Sec.map (I.d s (s + 1)) a) b +
      s.negOnePow • tensPure s (t + 1) (w + 1) (by omega) a (Sec.map (J.d t (t + 1)) b) := by
  simp [dT, tensPure, dB, DirectSum.toModule_lof, Units.smul_def, Sec.map]

lemma tensPure_res (I J : Cx R) {V U : Scheme.{0}} (g : V ⟶ U) (s t w : ℤ) (h : s + t = w)
    (a : Sec (I.X s) U) (b : Sec (J.X t) U) :
    Tens.res g w (tensPure s t w h a b) = tensPure s t w h (Sec.res g a) (Sec.res g b) := by
  simp [Tens.res, tensPure, Sec.res]

lemma tens_ext {I J : Cx R} {U : Scheme.{0}} {w : ℤ} {M : Type*} [AddCommGroup M] [Module (ULift.{1} R) M]
    {f g : Tens I J U w →ₗ[ULift.{1} R] M}
    (H : ∀ s t (h : s + t = w) a b, f (tensPure s t w h a b) = g (tensPure s t w h a b)) : f = g := by
  apply DirectSum.linearMap_ext; intro p; apply TensorProduct.ext'; intro a b
  exact H p.1.1 p.1.2 p.2 a b

def dP (I J : Cx R) (w : ℤ) : etaleTensorPresheafOfComplexes I J w ⟶ etaleTensorPresheafOfComplexes I J (w + 1) where
  app U := ModuleCat.ofHom (dT I J U.unop w)
  naturality V U g := by
    ext1
    refine tens_ext fun s t h a b => ?_
    change dT I J U.unop w (Tens.res g.unop w (tensPure s t w h a b)) =
      Tens.res g.unop (w + 1) (dT I J V.unop w (tensPure s t w h a b))
    simp only [tensPure_res, dT_pure, map_add (f := _), Units.smul_def, map_zsmul, sec_map_res]

lemma tensPure_zero_left (I J : Cx R) {U : Scheme.{0}} (s t w : ℤ) (h : s + t = w) (b : Sec (J.X t) U) :
    tensPure (I := I) s t w h 0 b = 0 := by simp [tensPure]

lemma tensPure_zero_right (I J : Cx R) {U : Scheme.{0}} (s t w : ℤ) (h : s + t = w) (a : Sec (I.X s) U) :
    tensPure (J := J) s t w h a 0 = 0 := by simp [tensPure]

lemma tensorDifferential_comp_tensorDifferential (I J : Cx R) (w : ℤ) : dP I J w ≫ dP I J (w + 1) = 0 := by
  apply NatTrans.ext; funext U; apply ModuleCat.hom_ext
  refine tens_ext (M := Tens I J U.unop (w + 1 + 1)) fun s t h a b => ?_
  change dT I J U.unop (w + 1) (dT I J U.unop w (tensPure s t w h a b)) = 0
  simp only [dT_pure, map_add (f := _), Units.smul_def, map_zsmul, sec_map_dd, tensPure_zero_left, tensPure_zero_right,
    smul_zero, zero_add, add_zero, Int.negOnePow_succ, Units.val_neg, neg_smul]
  abel

end

theorem etale_sheaf_tensor_complex_exists : EtaleSheafTensorComplexExists := by
  intro R _ I J
  let K : Cx R := CochainComplex.of (fun w => (presheafToSheaf Scheme.etaleTopology _).obj (etaleTensorPresheafOfComplexes I J w))
    (fun w => (presheafToSheaf Scheme.etaleTopology _).map (dP I J w))
    (fun w => by rw [← Functor.map_comp, tensorDifferential_comp_tensorDifferential, Functor.map_zero])
  refine ⟨K, fun U w => ((toSheafify Scheme.etaleTopology (etaleTensorPresheafOfComplexes I J w)).app (op U)).hom, ?_, ?_, ?_, ?_⟩
  · intro V U g w x
    change ((toSheafify Scheme.etaleTopology (etaleTensorPresheafOfComplexes I J w)).app (op U) ≫ (sheafify Scheme.etaleTopology (etaleTensorPresheafOfComplexes I J w)).map g.op).hom x = _
    rw [← (toSheafify Scheme.etaleTopology (etaleTensorPresheafOfComplexes I J w)).naturality]; rfl
  · intro U s t w h a b
    have hd : K.d w (w + 1) = (presheafToSheaf Scheme.etaleTopology _).map (dP I J w) := by
      simp [K, CochainComplex.of_d]
    rw [hd]
    change ((toSheafify Scheme.etaleTopology (etaleTensorPresheafOfComplexes I J w) ≫ sheafifyMap Scheme.etaleTopology (dP I J w)).app (op U)).hom (tensPure s t w h a b) = _
    rw [← toSheafify_naturality]
    change ((toSheafify Scheme.etaleTopology (etaleTensorPresheafOfComplexes I J (w + 1))).app (op U)).hom (dT I J U w (tensPure s t w h a b)) = _
    simp only [dT_pure, Units.smul_def]
    exact (LinearMap.map_add _ _ _).trans (congrArg _ (map_zsmul _ _ _))
  · intro U w y
    obtain h := Presheaf.imageSieve_mem Scheme.etaleTopology (toSheafify Scheme.etaleTopology (etaleTensorPresheafOfComplexes I J w)) (U := op U) y
    exact ⟨_, h, fun V g hg => hg⟩
  · intro U w x hx
    have h := Presheaf.equalizerSieve_mem Scheme.etaleTopology (toSheafify Scheme.etaleTopology (etaleTensorPresheafOfComplexes I J w)) (X := op U) x 0
      (by rw [map_zero]; exact hx)
    exact ⟨_, h, fun V g hg => (show Tens.res g w x = Tens.res g w 0 from hg).trans (map_zero _)⟩

end LateralTheory.EtaleFoundations
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleSheafTensorComplexExists =====

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleTensorProductSheafExistsOfComponents =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleTensorProductSheafExistsOfComponents", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.EtaleTensorComplexExistsOfSheafTensorComplex\npublic import Development.EtaleCohomology.TateTwists.EtaleSheafTensorComplexExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.EtaleComplexTensorPairingExists
theorem etale_tensor_product_exists_of_components : LateralTheory.EtaleFoundations.EtaleComplexTensorPairingExists := by
  apply LateralTheory.EtaleFoundations.etale_tensor_complex_exists_of_sheaf_tensor_complex <;> first | exact _root_.LateralTheory.EtaleFoundations.etale_sheaf_tensor_complex_exists
alias intersectionNumber_baseChange := _root_.LateralTheory.Fin.EtaleComplexTensorPairingExists.etale_tensor_product_exists_of_components
end LateralTheory.Fin.EtaleComplexTensorPairingExists
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleTensorProductSheafExistsOfComponents =====
