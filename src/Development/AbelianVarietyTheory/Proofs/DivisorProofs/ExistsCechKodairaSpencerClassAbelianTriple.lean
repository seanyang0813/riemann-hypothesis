module

public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsBlockMetricDiagForm
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompProdOfFn
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KodairaSpencerConditionRestrictBasicOpenOfAffine
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslateUnique
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsTanBasisOfUniqueCombination
public import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.MemRangeCompIffOfIsClosedImmersion
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DerivativeCechCocycleInvariantVectorFieldIsCobou
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentBasisTranslateCoefficientsZero
public import Mathlib.Tactic.Monotonicity.Lemmas
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechCocycleEqCoboundaryAddLogDerivativesAffine
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingHomLiftOfFormallySmooth
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSpecVectorFieldOfDualNumberSection
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVectorFieldAffineOpenTransport
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SndSectionValueTranslateProdFirstOrderLinear
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfField
import Mathlib.RingTheory.PiTensorProduct

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCoeffsTangentVectorTranslatedBasis, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualNumberPointOfVectorField, Development.AbelianVarietyTheory.Proofs.DivisorProofs.VerticalVectorFieldUniqueCombinationBasis, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechCocycleVerticalFieldsEqCoboundaryAddLogDeriv, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVectorFieldLiftsAffineCoverSmoothGroup, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechKodairaSpencerClassAbelianTriple

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCoeffsTangentVectorTranslatedBasis =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCoeffsTangentVectorTranslatedBasis", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsBlockMetricDiagForm\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompProdOfFn\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KodairaSpencerConditionRestrictBasicOpenOfAffine\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SndSectionValueTranslateProdFirstOrderLinear\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslateUnique\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsTanBasisOfUniqueCombination\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.LogKS Formalism.L2.Pj
open MonoidalCategory CartesianMonoidalCategory MonObj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.VertSpan

theorem exists_coeffs_translate : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (X : Scheme.{0}) (t : SAB H X) (U : X.affineOpens) (n : ℕ) (v : Fin n → (Sp (DualNumber Γ(X, U.1)) ⟶ t.G.left)), (∀ a, IsTanAtG t (chart U) (v a)) → (∀ w, IsTanAtG t (chart U) w → ∃! cf : Fin n → Γ(X, U.1), IsCombAtG t (chart U) v cf w) → ∀ (S : Type) [CommRing S] (φ : Γ(X, U.1) →+* S) (g₀ : Sp S ⟶ t.G.left) (w : Sp (DualNumber S) ⟶ t.G.left), g₀ ≫ t.G.hom = spMap φ ≫ chart U → spMap (TrivSqZeroExt.fstHom S S S).toRingHom ≫ w = g₀ → w ≫ t.G.hom = spMap (algebraMap S (DualNumber S)) ≫ g₀ ≫ t.G.hom → ∃ c : Fin n → S, ∀ (S' : Type) [CommRing S'] (ρ : S →+* S') (φ' : Γ(X, U.1) →+* S') (wt : Fin n → (Sp (DualNumber S') ⟶ t.G.left)), (spMap ρ ≫ g₀) ≫ t.G.hom = spMap φ' ≫ chart U → (∀ a, IsTranslate t φ' (spMap ρ ≫ g₀) (v a) (wt a)) → ∀ (O : t.G.left.Opens), ⊤ ≤ (spMap ρ ≫ g₀) ⁻¹ᵁ O → ∀ f : Γ(t.G.left, O), (valR (spMap (dualMap ρ) ≫ w) O f).snd = ∑ a, ρ (c a) * (valR (wt a) O f).snd := by
  intro E _ _ _ H X t U n v hv hb S _ φ g₀ w hg hred hw
  have e : spMap (TrivSqZeroExt.fstHom S S S).toRingHom ≫ spMap (algebraMap S (DualNumber S)) = 𝟙 _ := by
    rw [GlobalTheory.LogKSLoc.spMap_comp', ← Spec.map_id]
    congr 1
  let g' : tEpsG (g₀ ≫ t.G.hom) ⟶ t.G :=
    Over.homMk (spMap (algebraMap S (DualNumber S)) ≫ g₀) (Category.assoc _ _ _)
  let w' : tEpsG (g₀ ≫ t.G.hom) ⟶ t.G := Over.homMk w hw
  let s : Over.mk (g₀ ≫ t.G.hom) ⟶ tEpsG (g₀ ≫ t.G.hom) :=
    Over.homMk (spMap (TrivSqZeroExt.fstHom S S S).toRingHom) (by
      change _ ≫ _ ≫ _ = g₀ ≫ t.G.hom
      rw [← Category.assoc, e, Category.id_comp])
  have hs : s ≫ g' = s ≫ w' := by
    refine Over.OverMorphism.ext ?_
    change spMap _ ≫ spMap _ ≫ g₀ = spMap _ ≫ w
    rw [hred, ← Category.assoc, e, Category.id_comp]
  have hτ : IsTanAtG t (g₀ ≫ t.G.hom) (g'⁻¹ * w').left := by
    refine ⟨Over.w (g'⁻¹ * w'), ?_⟩
    change (s ≫ (g'⁻¹ * w')).left = _
    rw [MonObj.comp_mul, GrpObj.comp_inv, hs, inv_mul_cancel]
  have hbas := (GlobalTheory.LineNorm.isTanBasis_of_basis E H X t _ (chart U) n v hv hb).2 S φ (g'⁻¹ * w').left
  rw [← hg] at hbas
  obtain ⟨c, ⟨u, hu, hux⟩, -⟩ := hbas hτ
  have hwu : w' = g' * (List.ofFn u).prod := by
    rw [show (List.ofFn u).prod = g'⁻¹ * w' from Over.OverMorphism.ext hux, mul_inv_cancel_left]
  refine ⟨c, fun S' _ ρ φ' wt hg' hwt O hO f => ?_⟩
  have h₃ : (spMap ρ ≫ g₀) ≫ t.G.hom = spMap (ρ.comp φ) ≫ chart U := by
    rw [Category.assoc, hg, ← Category.assoc, GlobalTheory.LogKSLoc.spMap_comp']
  have hU : ⊤ ≤ (spMap ρ ≫ g₀) ⁻¹ᵁ (t.G.hom ⁻¹ᵁ U.1) := by
    change ⊤ ≤ ((spMap ρ ≫ g₀) ≫ t.G.hom) ⁻¹ᵁ U.1
    rw [hg']
    exact GlobalTheory.Points.le_preimage_specMap_fromSpec U.2 (CommRingCat.ofHom φ')
  obtain rfl : φ' = ρ.comp φ := RingHom.ext fun r =>
    (GlobalTheory.LogKSLin.valR_base U le_rfl hg' hU r).symm.trans (GlobalTheory.LogKSLin.valR_base U le_rfl h₃ hU r)
  choose g'' v'' hg'' hv'' hw'' using hwt
  have e' : spMap (dualMap ρ) ≫ spMap (algebraMap S (DualNumber S)) =
      spMap (algebraMap S' (DualNumber S')) ≫ spMap ρ := by
    rw [GlobalTheory.LogKSLoc.spMap_comp', GlobalTheory.LogKSLoc.spMap_comp']
    congr 1
    ext a <;> simp [dualMap, TrivSqZeroExt.algebraMap_eq_inl]
  let k : tEpsG ((spMap ρ ≫ g₀) ≫ t.G.hom) ⟶ tEpsG (g₀ ≫ t.G.hom) := Over.homMk (spMap (dualMap ρ)) (by
    change _ ≫ _ ≫ _ = _ ≫ (_ ≫ _) ≫ _
    rw [← Category.assoc, e']
    simp only [Category.assoc])
  have hkg : (k ≫ g').left = spMap (algebraMap S' (DualNumber S')) ≫ spMap ρ ≫ g₀ := by
    change spMap _ ≫ spMap _ ≫ g₀ = _
    rw [← Category.assoc, e', Category.assoc]
  have hgg : ∀ a, g'' a = k ≫ g' := fun a => Over.OverMorphism.ext ((hg'' a).trans hkg.symm)
  have hy0 : ∀ a, smT ((spMap ρ ≫ g₀) ≫ t.G.hom) 0 (v'' a) = 1 := fun a => by
    have ht := GlobalTheory.LieMet.isTan_map (ρ.comp φ) h₃.symm (hv a)
    rw [show v'' a = ovT ht from Over.OverMorphism.ext (hv'' a)]
    exact smT_zero_ovT ht
  have hku : ∀ a, k ≫ u a = smT ((spMap ρ ≫ g₀) ≫ t.G.hom) (ρ (c a)) (v'' a) := fun a => by
    refine Over.OverMorphism.ext ?_
    change spMap (dualMap ρ) ≫ (u a).left = spMap (epsMul (ρ (c a))) ≫ (v'' a).left
    rw [hu a, hv'' a]
    simp only [← Category.assoc, _root_.GlobalTheory.spMap_comp_ring]
    congr 2
    refine RingHom.ext fun z => ?_
    ext <;> simp [epsMul, dualMap]
  have hmain : spMap (dualMap ρ) ≫ w = ((k ≫ g') * (List.ofFn fun a =>
      smT ((spMap ρ ≫ g₀) ≫ t.G.hom) (ρ (c a)) (v'' a)).prod).left := by
    change (k ≫ w').left = _
    rw [hwu, MonObj.comp_mul, GlobalTheory.FirstOrderValue.comp_prod_ofFn]
    simp only [hku]
  rw [hmain]
  refine (GlobalTheory.KSLin.snd_valR_translate_prod _ t.G (spMap ρ ≫ g₀) (k ≫ g') hkg v'' (fun a => ρ (c a)) hy0 O f
    hO).trans (Finset.sum_congr rfl fun a _ => ?_)
  rw [← hw'' a, hgg a]

end GlobalTheory.VertSpan
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCoeffsTangentVectorTranslatedBasis =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualNumberPointOfVectorField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualNumberPointOfVectorField", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.MemRangeCompIffOfIsClosedImmersion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.LogKS Formalism.L2.Pj

namespace GlobalTheory.EpsPoint

variable {S : Type} [CommRing S]

abbrev proj (S : Type) [CommRing S] : Sp (DualNumber S) ⟶ Sp S := spMap (algebraMap S (DualNumber S))

def epsOn (V : (Sp (DualNumber S)).Opens) : Γ(Sp (DualNumber S), V) :=
  ((Sp (DualNumber S)).presheaf.map (homOfLE le_top).op).hom
    ((Scheme.ΓSpecIso (CommRingCat.of (DualNumber S))).inv.hom DualNumber.eps)

theorem epsOn_mul_self (V : (Sp (DualNumber S)).Opens) : epsOn V * epsOn V = 0 := by
  rw [epsOn, ← map_mul, ← map_mul, DualNumber.eps_mul_eps, map_zero, map_zero]

variable {Z : Scheme.{0}} {W : Z.Opens} {e : ∀ O : Z.Opens, Γ(Z, O) → Γ(Z, O)}

theorem field_one (he : IsField W e) {V : Z.Opens} (hV : V ≤ W) : e V 1 = 0 := by
  have h := he.2.1 V hV 1 1
  simp only [mul_one, one_mul] at h
  linear_combination -h

theorem field_zero (he : IsField W e) {V : Z.Opens} (hV : V ≤ W) : e V 0 = 0 := by
  have h := he.1 V hV 0 0
  simp only [add_zero] at h
  linear_combination -h

variable (g₀ : Sp S ⟶ Z) (hg : ⊤ ≤ g₀ ⁻¹ᵁ W)

include hg in
theorem le_inf_preimage (U : Z.Opens) : (proj S ≫ g₀) ⁻¹ᵁ U ≤ (proj S ≫ g₀) ⁻¹ᵁ (U ⊓ W) :=
  fun _ hx => TopologicalSpace.Opens.mem_inf.2 ⟨hx, hg trivial⟩

theorem appLE_res (U : Z.Opens) (f : Γ(Z, U)) :
    ((proj S ≫ g₀).appLE (U ⊓ W) _ (le_inf_preimage g₀ hg U)).hom (resG Z inf_le_left f) =
      ((proj S ≫ g₀).app U).hom f := by
  rw [resG, ← CommRingCat.comp_apply, Scheme.Hom.map_appLE, Scheme.Hom.app_eq_appLE]

def psi (he : IsField W e) (U : Z.Opens) : Γ(Z, U) →+* Γ(Sp (DualNumber S), (proj S ≫ g₀) ⁻¹ᵁ U) where
  toFun f := ((proj S ≫ g₀).app U).hom f + epsOn _ *
    ((proj S ≫ g₀).appLE (U ⊓ W) _ (le_inf_preimage g₀ hg U)).hom (e (U ⊓ W) (resG Z inf_le_left f))
  map_one' := by simp only [map_one, field_one he inf_le_right, map_zero, mul_zero, add_zero]
  map_mul' f f' := by
    simp only [map_mul, he.2.1 _ inf_le_right, map_add (f := _), appLE_res g₀ hg]
    linear_combination -(((proj S ≫ g₀).appLE (U ⊓ W) _ (le_inf_preimage g₀ hg U)).hom
      (e (U ⊓ W) (resG Z inf_le_left f)) * ((proj S ≫ g₀).appLE (U ⊓ W) _ (le_inf_preimage g₀ hg U)).hom
      (e (U ⊓ W) (resG Z inf_le_left f'))) * epsOn_mul_self (S := S) ((proj S ≫ g₀) ⁻¹ᵁ U)
  map_zero' := by simp only [map_zero, field_zero he inf_le_right, mul_zero, add_zero]
  map_add' f f' := by
    simp only [map_add (f := _), he.1 _ inf_le_right]
    ring

end GlobalTheory.EpsPoint

namespace GlobalTheory.EpsPoint
variable {S : Type} [CommRing S] {Z : Scheme.{0}} {W : Z.Opens} {e : ∀ O : Z.Opens, Γ(Z, O) → Γ(Z, O)}
variable (g₀ : Sp S ⟶ Z) (hg : ⊤ ≤ g₀ ⁻¹ᵁ W)

theorem psi_res (he : IsField W e) {U U' : Z.Opens} (h : U' ≤ U) (f : Γ(Z, U)) :
    psi g₀ hg he U' (resG Z h f) =
      ((Sp (DualNumber S)).presheaf.map (homOfLE (fun _ hx => h hx : (proj S ≫ g₀) ⁻¹ᵁ U' ≤ (proj S ≫ g₀) ⁻¹ᵁ U)).op).hom
        (psi g₀ hg he U f) := by
  simp only [psi, RingHom.coe_mk, MonoidHom.coe_mk, OneHom.coe_mk, map_add (f := _), map_mul]
  congr 1
  · rw [resG, ← CommRingCat.comp_apply, ← CommRingCat.comp_apply, Scheme.Hom.naturality]
    rfl
  · congr 1
    have h2 : resG Z (inf_le_left : U' ⊓ W ≤ U') (resG Z h f) =
        resG Z (inf_le_inf_right W h) (resG Z (inf_le_left : U ⊓ W ≤ U) f) := by
      simp only [resG, ← CommRingCat.comp_apply, ← Functor.map_comp]
      rfl
    rw [h2, he.2.2 _ _ _ inf_le_right, resG, ← CommRingCat.comp_apply, ← CommRingCat.comp_apply,
      Scheme.Hom.map_appLE, Scheme.Hom.appLE_map]

end GlobalTheory.EpsPoint

namespace GlobalTheory.EpsPoint
variable {S : Type} [CommRing S] {Z : Scheme.{0}} {W : Z.Opens} {e : ∀ O : Z.Opens, Γ(Z, O) → Γ(Z, O)}
variable (g₀ : Sp S ⟶ Z) (hg : ⊤ ≤ g₀ ⁻¹ᵁ W)

def cMap (he : IsField W e) : Z.presheaf ⟶ (proj S ≫ g₀).base _* (Sp (DualNumber S)).presheaf where
  app U := CommRingCat.ofHom (R := Γ(Z, U.unop)) (S := Γ(Sp (DualNumber S), (proj S ≫ g₀) ⁻¹ᵁ U.unop))
    (psi g₀ hg he U.unop)
  naturality U U' i := by
    apply CommRingCat.hom_ext
    apply RingHom.ext
    intro f
    exact psi_res g₀ hg he i.unop.le f

def pshHom (he : IsField W e) : (Sp (DualNumber S)).toPresheafedSpace.Hom Z.toPresheafedSpace :=
  ⟨(proj S ≫ g₀).base, cMap g₀ hg he⟩

theorem isLocal (he : IsField W e) (y : Sp (DualNumber S)) :
    IsLocalHom ((pshHom g₀ hg he).stalkMap y).hom := by
  constructor
  intro a ha
  obtain ⟨U, hU, f, rfl⟩ := TopCat.Presheaf.germ_exist _ a
  rw [PresheafedSpace.stalkMap_germ_apply] at ha
  change IsUnit ((Sp (DualNumber S)).presheaf.germ _ y hU (((proj S ≫ g₀).app U).hom f + epsOn _ *
    ((proj S ≫ g₀).appLE (U ⊓ W) _ (le_inf_preimage g₀ hg U)).hom (e (U ⊓ W) (resG Z inf_le_left f)))) at ha
  rw [map_add (f := _)] at ha
  have hn : IsNilpotent ((Sp (DualNumber S)).presheaf.germ _ y hU (epsOn _ *
      ((proj S ≫ g₀).appLE (U ⊓ W) _ (le_inf_preimage g₀ hg U)).hom (e (U ⊓ W) (resG Z inf_le_left f)))) := by
    refine ⟨2, ?_⟩
    rw [← map_pow, mul_pow, pow_two (epsOn _), epsOn_mul_self, zero_mul, map_zero]
  have h2 := hn.neg.isUnit_add_right_of_commute ha (Commute.all _ _)
  rw [add_comm, add_neg_cancel_right] at h2
  exact (isUnit_map_iff ((proj S ≫ g₀).stalkMap y).hom _).mp
    ((congrArg IsUnit (Scheme.Hom.germ_stalkMap_apply (proj S ≫ g₀) U y hU f)).mpr h2)

def epsPoint (he : IsField W e) : Sp (DualNumber S) ⟶ Z :=
  ⟨⟨pshHom g₀ hg he, isLocal g₀ hg he⟩⟩

theorem epsPoint_base (he : IsField W e) : (epsPoint g₀ hg he).base = (proj S ≫ g₀).base := rfl

end GlobalTheory.EpsPoint

namespace GlobalTheory.EpsPoint
variable {S : Type} [CommRing S] {Z : Scheme.{0}} {W : Z.Opens} {e : ∀ O : Z.Opens, Γ(Z, O) → Γ(Z, O)}
variable (g₀ : Sp S ⟶ Z) (hg : ⊤ ≤ g₀ ⁻¹ᵁ W)

theorem fst_comp_proj : spMap (TrivSqZeroExt.fstHom S S S).toRingHom ≫ proj S = 𝟙 _ := by
  show Spec.map _ ≫ Spec.map _ = _
  rw [← Spec.map_comp, ← CommRingCat.ofHom_comp]
  have : (TrivSqZeroExt.fstHom S S S).toRingHom.comp (algebraMap S (DualNumber S)) = RingHom.id S := by
    ext a
    simp
  rw [this, CommRingCat.ofHom_id, Spec.map_id]

theorem fst_app_epsOn (V : (Sp (DualNumber S)).Opens) :
    ((spMap (TrivSqZeroExt.fstHom S S S).toRingHom).app V).hom (epsOn V) = 0 := by
  rw [epsOn, ← CommRingCat.comp_apply, Scheme.Hom.naturality, CommRingCat.comp_apply]
  have : ((spMap (TrivSqZeroExt.fstHom S S S).toRingHom).app ⊤).hom
      ((Scheme.ΓSpecIso (CommRingCat.of (DualNumber S))).inv.hom DualNumber.eps) = 0 := by
    have h1 := congrArg (fun q => q.hom DualNumber.eps)
      (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom (TrivSqZeroExt.fstHom S S S).toRingHom))
    have h2 : (CommRingCat.ofHom (TrivSqZeroExt.fstHom S S S).toRingHom ≫
        (Scheme.ΓSpecIso (CommRingCat.of S)).inv).hom DualNumber.eps = 0 := by
      show (Scheme.ΓSpecIso (CommRingCat.of S)).inv.hom ((TrivSqZeroExt.fstHom S S S).toRingHom DualNumber.eps) = 0
      have h3 : (TrivSqZeroExt.fstHom S S S).toRingHom DualNumber.eps = 0 := by simp
      rw [h3, map_zero]
    exact h1.symm.trans h2
  rw [this, map_zero]

theorem comp_eq_of_app {X T Y : Scheme.{0}} (i : X ⟶ T) (w q : T ⟶ Y) (hb : w.base = q.base)
    (h : ∀ U : Y.Opens, w.app U ≫ i.app (w ⁻¹ᵁ U) = q.app U ≫ i.app (q ⁻¹ᵁ U) ≫
      X.presheaf.map (eqToHom (by rw [hb]) : i ⁻¹ᵁ (w ⁻¹ᵁ U) ⟶ i ⁻¹ᵁ (q ⁻¹ᵁ U)).op) : i ≫ w = i ≫ q := by
  refine Scheme.Hom.ext (by rw [Scheme.Hom.comp_base, Scheme.Hom.comp_base, hb]) fun U => ?_
  rw [Scheme.Hom.comp_app, Scheme.Hom.comp_app, h U]
  erw [Category.assoc, Category.assoc, ← Functor.map_comp, ← op_comp, eqToHom_trans, eqToHom_refl, op_id,
    CategoryTheory.Functor.map_id, Category.comp_id]
  rfl

theorem fst_app_psi (he : IsField W e) (U : Z.Opens) (a : Γ(Z, U)) :
    ((spMap (TrivSqZeroExt.fstHom S S S).toRingHom).app ((proj S ≫ g₀) ⁻¹ᵁ U)).hom (psi g₀ hg he U a) =
      ((spMap (TrivSqZeroExt.fstHom S S S).toRingHom).app ((proj S ≫ g₀) ⁻¹ᵁ U)).hom (((proj S ≫ g₀).app U).hom a) := by
  simp only [psi, RingHom.coe_mk, MonoidHom.coe_mk, OneHom.coe_mk, map_add (f := _), map_mul, fst_app_epsOn, zero_mul,
    add_zero]

theorem fst_comp (he : IsField W e) : spMap (TrivSqZeroExt.fstHom S S S).toRingHom ≫ epsPoint g₀ hg he = g₀ := by
  have hb : spMap (TrivSqZeroExt.fstHom S S S).toRingHom ≫ proj S ≫ g₀ = g₀ := by
    rw [← Category.assoc, fst_comp_proj, Category.id_comp]
  refine Eq.trans (comp_eq_of_app _ _ (proj S ≫ g₀) (epsPoint_base g₀ hg he) fun U => ?_) hb
  erw [eqToHom_refl, op_id, CategoryTheory.Functor.map_id, Category.comp_id]
  apply CommRingCat.hom_ext
  apply RingHom.ext
  intro a
  exact fst_app_psi g₀ hg he U a

end GlobalTheory.EpsPoint

namespace GlobalTheory.EpsPoint
variable {S : Type} [CommRing S] {Z : Scheme.{0}} {W : Z.Opens} {e : ∀ O : Z.Opens, Γ(Z, O) → Γ(Z, O)}
variable (g₀ : Sp S ⟶ Z) (hg : ⊤ ≤ g₀ ⁻¹ᵁ W)

theorem valR_comp_epsPoint (he : IsField W e) {C : Type} [CommRing C] (x : Sp C ⟶ Sp (DualNumber S))
    (O : Z.Opens) (f : Γ(Z, O)) :
    valR (x ≫ epsPoint g₀ hg he) O f = valR x ((proj S ≫ g₀) ⁻¹ᵁ O) (psi g₀ hg he O f) := by
  rw [GlobalTheory.Points.valR_comp]
  rfl

theorem snd_valR (he : IsField W e) {S' : Type} [CommRing S'] (ρ : S →+* S') (O : Z.Opens) (hO : O ≤ W)
    (hρ : ⊤ ≤ (spMap ρ ≫ g₀) ⁻¹ᵁ O) (f : Γ(Z, O)) :
    (valR (spMap (dualMap ρ) ≫ epsPoint g₀ hg he) O f).snd = valR (spMap ρ ≫ g₀) O (e O f) := by
  have hxπ : spMap (dualMap ρ) ≫ proj S = proj S' ≫ spMap ρ := by
    show Spec.map _ ≫ Spec.map _ = Spec.map _ ≫ Spec.map _
    rw [← Spec.map_comp, ← Spec.map_comp, ← CommRingCat.ofHom_comp, ← CommRingCat.ofHom_comp]
    congr 2
    ext a <;> simp [dualMap, TrivSqZeroExt.algebraMap_eq_inl]
  have hy : spMap (dualMap ρ) ≫ proj S ≫ g₀ = proj S' ≫ spMap ρ ≫ g₀ := by
    rw [← Category.assoc, hxπ, Category.assoc]
  have hyO : ⊤ ≤ (spMap (dualMap ρ) ≫ proj S ≫ g₀) ⁻¹ᵁ O := by
    rw [hy]
    exact GlobalTheory.Points.le_preimage_comp _ _ hρ (GlobalTheory.Points.le_preimage_top _)
  have hyW : ⊤ ≤ (spMap (dualMap ρ) ≫ proj S ≫ g₀) ⁻¹ᵁ W := by
    rw [← Category.assoc]
    exact GlobalTheory.Points.le_preimage_comp _ _ hg (GlobalTheory.Points.le_preimage_top _)
  have hyOW : ⊤ ≤ (spMap (dualMap ρ) ≫ proj S ≫ g₀) ⁻¹ᵁ (O ⊓ W) :=
    fun z hz => TopologicalSpace.Opens.mem_inf.2 ⟨hyO hz, hyW hz⟩
  have hx : ⊤ ≤ spMap (dualMap ρ) ⁻¹ᵁ ((proj S ≫ g₀) ⁻¹ᵁ O) := hyO
  rw [valR_comp_epsPoint]
  simp only [psi, RingHom.coe_mk, MonoidHom.coe_mk, OneHom.coe_mk]
  rw [GlobalTheory.Points.valR_add _ _ hx, GlobalTheory.Points.valR_mul _ _ hx, ← GlobalTheory.Points.valR_comp,
    GlobalTheory.Points.valR_appLE _ _ _ hx, he.2.2 O (O ⊓ W) inf_le_left hO f,
    GlobalTheory.Points.valR_res _ _ hyOW, epsOn, GlobalTheory.Points.valR_res _ _ hx, GlobalTheory.Points.valR_specMap, hy,
    GlobalTheory.Points.valR_spMap_comp _ _ _ hρ, GlobalTheory.Points.valR_spMap_comp _ _ _ hρ]
  simp [dualMap, TrivSqZeroExt.algebraMap_eq_inl]

theorem exists_epsPoint : ∀ (Z : Scheme.{0}) (W : Z.Opens) (e : ∀ O : Z.Opens, Γ(Z, O) → Γ(Z, O)), IsField W e →
    ∀ (S : Type) [CommRing S] (g₀ : Sp S ⟶ Z), ⊤ ≤ g₀ ⁻¹ᵁ W → ∃ w : Sp (DualNumber S) ⟶ Z,
      spMap (TrivSqZeroExt.fstHom S S S).toRingHom ≫ w = g₀ ∧
        ∀ (S' : Type) [CommRing S'] (ρ : S →+* S') (O : Z.Opens), O ≤ W → ⊤ ≤ (spMap ρ ≫ g₀) ⁻¹ᵁ O →
          ∀ f : Γ(Z, O), (valR (spMap (dualMap ρ) ≫ w) O f).snd = valR (spMap ρ ≫ g₀) O (e O f) := by
  intro Z W e he S _ g₀ hg
  exact ⟨epsPoint g₀ hg he, fst_comp g₀ hg he, fun S' _ ρ O hO hρ f => snd_valR g₀ hg he ρ O hO hρ f⟩

end GlobalTheory.EpsPoint
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualNumberPointOfVectorField =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.VerticalVectorFieldUniqueCombinationBasis =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.VerticalVectorFieldUniqueCombinationBasis", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.MemRangeCompIffOfIsClosedImmersion\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DerivativeCechCocycleInvariantVectorFieldIsCobou\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCoeffsTangentVectorTranslatedBasis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualNumberPointOfVectorField\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentBasisTranslateCoefficientsZero\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfField\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.KodairaSpencerConditionRestrictBasicOpenOfAffine\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslateUnique\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.LogKS Formalism.L2.Pj

noncomputable section

namespace GlobalTheory.VertSpan

open GlobalTheory.Points (le_preimage_mono)

theorem vert_span : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (X : Scheme.{0}) (t : SAB H X) (U : X.affineOpens) (n : ℕ) (v : Fin n → (Sp (DualNumber Γ(X, U.1)) ⟶ t.G.left)), (∀ a, IsTanAtG t (chart U) (v a)) → (∀ w, IsTanAtG t (chart U) w → ∃! cf : Fin n → Γ(X, U.1), IsCombAtG t (chart U) v cf w) → ∀ (δ : Fin n → ∀ O : t.G.left.Opens, Γ(t.G.left, O) → Γ(t.G.left, O)), (∀ a, IsField (t.G.hom ⁻¹ᵁ U.1) (δ a)) → (∀ a (O : t.G.left.Opens) (h : O ≤ t.G.hom ⁻¹ᵁ U.1) (r : Γ(X, U.1)), δ a O ((t.G.hom.appLE U.1 O h).hom r) = 0) → (∀ a (O : t.G.left.Opens), O ≤ t.G.hom ⁻¹ᵁ U.1 → ∀ (f : Γ(t.G.left, O)) (S : Type) [CommRing S] (φ : Γ(X, U.1) →+* S) (g₀ : Sp S ⟶ t.G.left) (w : Sp (DualNumber S) ⟶ t.G.left), g₀ ≫ t.G.hom = spMap φ ≫ chart U → ⊤ ≤ g₀ ⁻¹ᵁ O → IsTranslate t φ g₀ (v a) w → valR g₀ O (δ a O f) = (valR w O f).snd) → ∀ (W : t.G.left.Opens) (hW : W ≤ t.G.hom ⁻¹ᵁ U.1) (e : ∀ O : t.G.left.Opens, Γ(t.G.left, O) → Γ(t.G.left, O)), IsField W e → (∀ r : Γ(X, U.1), e W ((t.G.hom.appLE U.1 W hW).hom r) = 0) → ∃! c : Fin n → Γ(t.G.left, W), ∀ (O : t.G.left.Opens) (hO : O ≤ W) (f : Γ(t.G.left, O)), e O f = ∑ a, resG t.G.left hO (c a) * δ a O f := by
  intro E _ _ _ H X t U n v hv hb δ hδF hδ0 hδv W hW e he he0
  classical
  have hφ : ∀ (S : Type) [CommRing S] (g : Sp S ⟶ t.G.left), ⊤ ≤ g ⁻¹ᵁ W →
      ∃ φ : Γ(X, U.1) →+* S, g ≫ t.G.hom = spMap φ ≫ chart U := fun S _ g hg =>
    ⟨_, (GlobalTheory.Points.specMap_valMap_fromSpec U.2 (g ≫ t.G.hom) (le_preimage_mono g hW hg)).symm⟩
  have hE : ∀ (S : Type) [CommRing S] (g₀ : Sp S ⟶ t.G.left), ⊤ ≤ g₀ ⁻¹ᵁ W → ∃ c : Fin n → S,
      ∀ (S' : Type) [CommRing S'] (ρ : S →+* S') (φ' : Γ(X, U.1) →+* S')
        (wt : Fin n → (Sp (DualNumber S') ⟶ t.G.left)),
        (spMap ρ ≫ g₀) ≫ t.G.hom = spMap φ' ≫ chart U → (∀ a, IsTranslate t φ' (spMap ρ ≫ g₀) (v a) (wt a)) →
        ∀ (O : t.G.left.Opens), O ≤ W → ⊤ ≤ (spMap ρ ≫ g₀) ⁻¹ᵁ O → ∀ f : Γ(t.G.left, O),
          valR (spMap ρ ≫ g₀) O (e O f) = ∑ a, ρ (c a) * (valR (wt a) O f).snd := by
    intro S _ g₀ hg
    obtain ⟨φ, hφg⟩ := hφ S g₀ hg
    obtain ⟨w, hred, hw⟩ := _root_.GlobalTheory.EpsPoint.exists_epsPoint t.G.left W e he S g₀ hg
    have hwW : ⊤ ≤ w ⁻¹ᵁ W := GlobalTheory.CechKS.le_preimage_of_red hred hg
    have hid : spMap (RingHom.id S) = 𝟙 _ := Spec.map_id _
    have hid' : spMap (dualMap (RingHom.id S)) = 𝟙 _ := by
      have : dualMap (RingHom.id S) = RingHom.id _ := by
        refine RingHom.ext fun z => ?_
        ext <;> simp [dualMap]
      rw [this]
      exact Spec.map_id _
    have hover : w ≫ t.G.hom = spMap (algebraMap S (DualNumber S)) ≫ g₀ ≫ t.G.hom := by
      have hU1 : ⊤ ≤ (w ≫ t.G.hom) ⁻¹ᵁ U.1 := le_preimage_mono w hW hwW
      have hU0 : ⊤ ≤ (g₀ ≫ t.G.hom) ⁻¹ᵁ U.1 := le_preimage_mono g₀ hW hg
      have hU2 : ⊤ ≤ (spMap (algebraMap S (DualNumber S)) ≫ g₀ ≫ t.G.hom) ⁻¹ᵁ U.1 :=
        fun p _ => hU0 (Set.mem_univ (spMap (algebraMap S (DualNumber S)) p))
      refine GlobalTheory.Points.ext_of_valR U.2 hU1 hU2 fun r => ?_
      rw [← GlobalTheory.Points.valR_appLE w t.G.hom hW hwW r, GlobalTheory.Points.valR_spMap_comp _ _ _ hU0,
        ← GlobalTheory.Points.valR_appLE g₀ t.G.hom hW hg r]
      have h₁ := GlobalTheory.Points.valR_spMap_comp (TrivSqZeroExt.fstHom S S S).toRingHom w W hwW
        ((t.G.hom.appLE U.1 W hW).hom r)
      rw [hred] at h₁
      have h₂ := hw S (RingHom.id S) W le_rfl (by rw [hid, Category.id_comp]; exact hg)
        ((t.G.hom.appLE U.1 W hW).hom r)
      rw [hid, hid', Category.id_comp, Category.id_comp, he0, GlobalTheory.Points.valR_zero _ _ hg] at h₂
      ext
      · rw [h₁]
        simp [TrivSqZeroExt.algebraMap_eq_inl]
      · rw [h₂]
        simp [TrivSqZeroExt.algebraMap_eq_inl]
    obtain ⟨c, hc⟩ := _root_.GlobalTheory.VertSpan.exists_coeffs_translate E H X t U n v hv hb S φ g₀ w hφg hred hover
    exact ⟨c, fun S' _ ρ φ' wt h₁ h₂ O hO hgO f => by
      rw [← hw S' ρ O hO hgO f, hc S' ρ φ' wt h₁ h₂ O hgO f]⟩
  let F : ∀ (S : Type) [CommRing S], (Sp S ⟶ t.G.left) → Fin n → S := fun S _ g =>
    if h : ⊤ ≤ g ⁻¹ᵁ W then (hE S g h).choose else 0
  have hF : ∀ (S : Type) [CommRing S] (g : Sp S ⟶ t.G.left) (h : ⊤ ≤ g ⁻¹ᵁ W), F S g = (hE S g h).choose :=
    fun S _ g h => dif_pos h
  have hrel : ∀ (S : Type) [CommRing S] (g : Sp S ⟶ t.G.left) (hg : ⊤ ≤ g ⁻¹ᵁ W) (φ : Γ(X, U.1) →+* S)
      (wt : Fin n → (Sp (DualNumber S) ⟶ t.G.left)), g ≫ t.G.hom = spMap φ ≫ chart U →
      (∀ a, IsTranslate t φ g (v a) (wt a)) → ∀ (O : t.G.left.Opens), O ≤ W → ⊤ ≤ g ⁻¹ᵁ O →
      ∀ f : Γ(t.G.left, O), valR g O (e O f) = ∑ a, F S g a * (valR (wt a) O f).snd := by
    intro S _ g hg φ wt h₁ h₂ O hO hgO f
    have hid : spMap (RingHom.id S) ≫ g = g := by
      rw [show spMap (RingHom.id S) = 𝟙 _ from Spec.map_id _, Category.id_comp]
    have := (hE S g hg).choose_spec S (RingHom.id S) φ wt (by rw [hid]; exact h₁) (by rw [hid]; exact h₂) O hO
      (by rw [hid]; exact hgO) f
    rw [hid] at this
    rw [this, hF S g hg]
    rfl
  have hnat : ∀ (S S' : Type) [CommRing S] [CommRing S'] (ρ : S →+* S') (g : Sp S ⟶ t.G.left),
      ⊤ ≤ g ⁻¹ᵁ W → F S' (spMap ρ ≫ g) = fun a => ρ (F S g a) := by
    intro S S' _ _ ρ g hg
    have hg' : ⊤ ≤ (spMap ρ ≫ g) ⁻¹ᵁ W := fun p _ => hg (Set.mem_univ (spMap ρ p))
    have hz := _root_.GlobalTheory.VertSpan.coeffs_zero E H X t U n v hv hb S' (spMap ρ ≫ g) W hW hg'
      (fun a => F S' (spMap ρ ≫ g) a - ρ (F S g a)) (fun S'' _ ρ' φ' wt h₁ h₂ O hO hgO f => by
        have hc : spMap (ρ'.comp ρ) ≫ g = spMap ρ' ≫ spMap ρ ≫ g := by
          rw [← Category.assoc, GlobalTheory.LogKSLoc.spMap_comp']
        have e₁ := (hE S' (spMap ρ ≫ g) hg').choose_spec S'' ρ' φ' wt h₁ h₂ O hO hgO f
        have e₂ := (hE S g hg).choose_spec S'' (ρ'.comp ρ) φ' wt (by rw [hc]; exact h₁) (by rw [hc]; exact h₂) O hO
          (by rw [hc]; exact hgO) f
        rw [hc, ← hF S g hg] at e₂
        rw [← hF S' (spMap ρ ≫ g) hg'] at e₁
        simp only [RingHom.comp_apply] at e₂
        simp only [map_sub, sub_mul, Finset.sum_sub_distrib]
        rw [← e₁, ← e₂, sub_self])
    funext a
    exact sub_eq_zero.1 (congrFun hz a)
  choose cs hcs using fun a => GlobalTheory.LogKSLin.exists_sec W (fun S _ g => F S g a)
    (fun S S' _ _ ρ g hg => congrFun (hnat S S' ρ g hg) a)
  have hval : ∀ (S : Type) [CommRing S] (g : Sp S ⟶ t.G.left) (φ : Γ(X, U.1) →+* S)
      (wt : Fin n → (Sp (DualNumber S) ⟶ t.G.left)), g ≫ t.G.hom = spMap φ ≫ chart U →
      (∀ a, IsTranslate t φ g (v a) (wt a)) → ∀ (O : t.G.left.Opens) (hO : O ≤ W), ⊤ ≤ g ⁻¹ᵁ O →
      ∀ (c : Fin n → Γ(t.G.left, W)) (f : Γ(t.G.left, O)),
        valR g O (∑ a, resG t.G.left hO (c a) * δ a O f) = ∑ a, valR g W (c a) * (valR (wt a) O f).snd := by
    intro S _ g φ wt hφg hwt O hO hgO c f

    rw [GlobalTheory.Points.valR_eq _ _ hgO, map_sum]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [← GlobalTheory.Points.valR_eq _ _ hgO, GlobalTheory.Points.valR_mul _ _ hgO, GlobalTheory.Points.valR_res _ hO hgO,
      hδv a O (hO.trans hW) f S φ g (wt a) hφg hgO (hwt a)]
  have hex : ∀ (O : t.G.left.Opens) (hO : O ≤ W) (f : Γ(t.G.left, O)),
      e O f = ∑ a, resG t.G.left hO (cs a) * δ a O f := by
    intro O hO f
    refine GlobalTheory.CechInv.ext_of_valR O _ _ fun S _ g hg => ?_
    have hgW := le_preimage_mono g hO hg
    obtain ⟨φ, hφg⟩ := hφ S g hgW
    choose wt hwt using fun a => (existsUnique_isTranslate t φ hφg (hv a)).exists
    rw [hrel S g hgW φ wt hφg hwt O hO hg f, hval S g φ wt hφg hwt O hO hg cs f]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [hcs a S g hgW]
  refine ⟨cs, hex, fun c' hc' => ?_⟩
  have key : ∀ (S : Type) [CommRing S] (g : Sp S ⟶ t.G.left), ⊤ ≤ g ⁻¹ᵁ W →
      (fun a => valR g W (c' a) - valR g W (cs a)) = 0 := by
    intro S _ g hg
    refine _root_.GlobalTheory.VertSpan.coeffs_zero E H X t U n v hv hb S g W hW hg _ fun S' _ ρ φ' wt h₁ h₂ O hO hgO f => ?_
    simp only [map_sub, sub_mul, Finset.sum_sub_distrib, ← GlobalTheory.Points.valR_spMap_comp ρ g W hg]
    rw [← hval S' (spMap ρ ≫ g) φ' wt h₁ h₂ O hO hgO c' f, ← hval S' (spMap ρ ≫ g) φ' wt h₁ h₂ O hO hgO cs f,
      ← hc' O hO f, ← hex O hO f, sub_self]
  funext a
  exact GlobalTheory.CechInv.ext_of_valR W _ _ fun S _ g hg => sub_eq_zero.1 (congrFun (key S g hg) a)

end GlobalTheory.VertSpan
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.VerticalVectorFieldUniqueCombinationBasis =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechCocycleVerticalFieldsEqCoboundaryAddLogDeriv =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechCocycleVerticalFieldsEqCoboundaryAddLogDeriv", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.MemRangeCompIffOfIsClosedImmersion\npublic import Mathlib.Tactic.Monotonicity.Lemmas\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechCocycleEqCoboundaryAddLogDerivativesAffine\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.VerticalVectorFieldUniqueCombinationBasis\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.DerivativeCechCocycleInvariantVectorFieldIsCobou\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfField\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslateUnique\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.KSCocycle

open AlgebraicGeometry CategoryTheory Limits NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.LogKS Formalism.L2.Pj
open GlobalTheory.LogKSLin
open GlobalTheory.Points (valR_eq valR_add valR_mul valR_res valR_appLE le_preimage_mono)

theorem resG_resG' {Z : Scheme.{0}} {U V W : Z.Opens} (h : V ≤ U) (h' : W ≤ V) (x : Γ(Z, U)) :
    resG Z h' (resG Z h x) = resG Z (h'.trans h) x :=
  (congrArg (fun k => k.hom x) (Z.presheaf.map_comp (homOfLE h).op (homOfLE h').op)).symm

theorem exists_coboundary_add_dlog : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (X : Scheme.{0}) (t : SAB H X), IsProper t.G.hom → Out.RelAmple t.G t.PP.L → Out.KTriv t.G t.PP.L → ∀ (U : X.affineOpens) (n : ℕ) (v : Fin n → (Sp (DualNumber Γ(X, U.1)) ⟶ t.G.left)), (∀ i, IsTanAtG t (chart U) (v i)) → (∀ w, IsTanAtG t (chart U) w → ∃! cf : Fin n → Γ(X, U.1), IsCombAtG t (chart U) v cf w) → ∀ (J : Type) (W : J → t.G.left.Opens) (j : J → t.PP.L.ι), (∀ i, IsAffineOpen (W i)) → ⨆ i, W i = t.G.hom ⁻¹ᵁ U.1 → (∀ i, W i ≤ t.PP.L.U (j i)) → ∀ (e : J → J → ∀ O : t.G.left.Opens, Γ(t.G.left, O) → Γ(t.G.left, O)), (∀ i i', IsField (W i ⊓ W i') (e i i')) → (∀ i i' (h : W i ⊓ W i' ≤ t.G.hom ⁻¹ᵁ U.1) (r : Γ(X, U.1)), e i i' (W i ⊓ W i') ((t.G.hom.appLE U.1 (W i ⊓ W i') h).hom r) = 0) → (∀ i i' i'' (O : t.G.left.Opens), O ≤ W i ⊓ W i' ⊓ W i'' → ∀ f : Γ(t.G.left, O), e i i' O f + e i' i'' O f = e i i'' O f) → ∃ (Θ : Matrix (Fin n) (Fin n) Γ(X, U.1)) (h : J → ∀ O : t.G.left.Opens, Γ(t.G.left, O) → Γ(t.G.left, O)), (∀ i, IsField (W i) (h i)) ∧ (∀ i (hW : W i ≤ t.G.hom ⁻¹ᵁ U.1) (r : Γ(X, U.1)), h i (W i) ((t.G.hom.appLE U.1 (W i) hW).hom r) = 0) ∧ ∀ (i i' : J) (O : t.G.left.Opens), O ≤ W i ⊓ W i' → ∀ (f : Γ(t.G.left, O)) (S : Type) [CommRing S] (φ : Γ(X, U.1) →+* S) (g₀ : Sp S ⟶ t.G.left) (w : Fin n → (Sp (DualNumber S) ⟶ t.G.left)), g₀ ≫ t.G.hom = spMap φ ≫ chart U → ⊤ ≤ g₀ ⁻¹ᵁ O → (∀ a, IsTranslate t φ g₀ (v a) (w a)) → valR g₀ O (e i i' O f) = valR g₀ O (h i O f - h i' O f) + ∑ a, ∑ b, φ (Θ a b) * ((valR (w b) _ (t.PP.L.g (j i) (j i')).val).snd * valR g₀ _ (t.PP.L.g (j i) (j i'))⁻¹.val) * (valR (w a) O f).snd := by
  intro E _ _ _ H X t hP hA hK U n v hv hb J W j hWa hcov hj e he hev hcoc
  have hWU : ∀ i, W i ≤ t.G.hom ⁻¹ᵁ U.1 := fun i => (le_iSup W i).trans hcov.le
  choose dd hdF hd0 hdv using fun a => exists_invField U (hv a)
  have hsp := fun i i' => _root_.GlobalTheory.VertSpan.vert_span E H X t U n v hv hb dd hdF hd0 hdv (W i ⊓ W i') (inf_le_left.trans (hWU i))
    (e i i') (he i i') (fun r => hev i i' _ r)
  choose c hc using fun i i' => (hsp i i').exists
  have hcc : ∀ a i i' i'', resG t.G.left (inf_le_left : W i ⊓ W i' ⊓ W i'' ≤ W i ⊓ W i') (c i i' a) +
      resG t.G.left (le_inf (inf_le_left.trans inf_le_right) inf_le_right : W i ⊓ W i' ⊓ W i'' ≤ W i' ⊓ W i'')
        (c i' i'' a) =
      resG t.G.left (le_inf (inf_le_left.trans inf_le_left) inf_le_right : W i ⊓ W i' ⊓ W i'' ≤ W i ⊓ W i'')
        (c i i'' a) := by
    intro a i i' i''
    have h1 : W i ⊓ W i' ⊓ W i'' ≤ W i ⊓ W i' := inf_le_left
    have h2 : W i ⊓ W i' ⊓ W i'' ≤ W i' ⊓ W i'' := le_inf (inf_le_left.trans inf_le_right) inf_le_right
    have h3 : W i ⊓ W i' ⊓ W i'' ≤ W i ⊓ W i'' := le_inf (inf_le_left.trans inf_le_left) inf_le_right
    have hT : W i ⊓ W i' ⊓ W i'' ≤ t.G.hom ⁻¹ᵁ U.1 := h3.trans (inf_le_left.trans (hWU i))
    have hu := (_root_.GlobalTheory.VertSpan.vert_span E H X t U n v hv hb dd hdF hd0 hdv (W i ⊓ W i' ⊓ W i'') hT (e i i'')
      (isField_mono h3 (he i i'')) (fun r => ?_)).unique
      (y₁ := fun a => resG _ h1 (c i i' a) + resG _ h2 (c i' i'' a)) (y₂ := fun a => resG _ h3 (c i i'' a)) ?_ ?_
    · exact congrFun hu a
    · rw [← resG_appLE U (inf_le_left.trans (hWU i)) h3 r, (he i i'').2.2 _ _ h3 le_rfl, hev, map_zero]
    · intro O hO f
      rw [← hcoc i i' i'' O hO f, hc i i' O (hO.trans h1) f, hc i' i'' O (hO.trans h2) f]
      simp only [map_add (f := _), _root_.GlobalTheory.Cartier.resG_resG, add_mul, Finset.sum_add_distrib]
    · intro O hO f
      rw [hc i i'' O (hO.trans h3) f]
      simp only [resG_resG']
  choose θ hh hθ using fun a => _root_.GlobalTheory.CechH1Span.exists_dlog_add_coboundary E H X t hP hA hK U n v hv hb dd hdF hd0 hdv J W j hWa hcov hWU hj
    (fun i i' => c i i' a) (hcc a)
  refine ⟨Matrix.of fun a b => θ a b, fun i O f => ∑ a, smulFld (hh a i) (dd a) O f,
    fun i => isField_sum fun a => isField_smul _ (isField_mono (hWU i) (hdF a)), fun i hW r => ?_,
    fun i i' O hO f S _ φ g₀ w hg hgO hw => ?_⟩
  · simp only [smulFld_of_le le_rfl, hd0, mul_zero, Finset.sum_const_zero]
  · have hO1 : O ≤ W i := hO.trans inf_le_left
    have hO2 : O ≤ W i' := hO.trans inf_le_right
    have hPU : W i ⊓ W i' ≤ t.G.hom ⁻¹ᵁ U.1 := inf_le_left.trans (hWU i)
    have hgP : ⊤ ≤ g₀ ⁻¹ᵁ (W i ⊓ W i') := le_preimage_mono g₀ hO hgO
    have hred := fun a => translate_red (hv a) hg (hw a)
    have key : ∀ a, valR g₀ O (resG t.G.left hO (c i i' a) * dd a O f) =
        valR g₀ (W i) (hh a i) * (valR (w a) O f).snd - valR g₀ (W i') (hh a i') * (valR (w a) O f).snd +
          ∑ b, φ (θ a b) * ((valR (w b) _ (t.PP.L.g (j i) (j i')).val).snd *
            valR g₀ _ (t.PP.L.g (j i) (j i'))⁻¹.val) * (valR (w a) O f).snd := by
      intro a

      rw [valR_mul _ _ hgO, valR_res _ hO hgO, hdv a O (hO.trans hPU) f S φ g₀ (w a) hg hgO (hw a), hθ a i i',
      valR_add _ _ hgP, GlobalTheory.CechInv.valR_sub _ _ hgP, valR_res _ _ hgP, valR_res _ _ hgP, valR_eq _ _ hgP,
      map_sum, add_mul, sub_mul, Finset.sum_mul]
      refine congrArg (_ + ·) (Finset.sum_congr rfl fun b _ => ?_)
      rw [← valR_eq _ _ hgP, valR_mul _ _ hgP, valR_mul _ _ hgP, valR_base U _ hg hgP, valR_res _ _ hgP,
        hdv b _ hPU _ S φ g₀ (w b) hg hgP (hw b),
        valR_res _ _ (GlobalTheory.CechKS.le_preimage_of_red (hred b) hgP)]
    have hsm : ∀ k (hk : O ≤ W k), valR g₀ O (∑ a, smulFld (hh a k) (dd a) O f) =
        ∑ a, valR g₀ (W k) (hh a k) * (valR (w a) O f).snd := by
      intro k hk

      rw [valR_eq _ _ hgO, map_sum]
      refine Finset.sum_congr rfl fun a _ => ?_
      rw [← valR_eq _ _ hgO, smulFld_of_le hk, valR_mul _ _ hgO, valR_res _ hk hgO,
        hdv a O (hk.trans (hWU k)) f S φ g₀ (w a) hg hgO (hw a)]
    beta_reduce

    rw [hc i i' O hO f, GlobalTheory.CechInv.valR_sub _ _ hgO, hsm i hO1, hsm i' hO2, valR_eq _ _ hgO, map_sum]
    simp only [← valR_eq _ _ hgO, key, Matrix.of_apply, Finset.sum_add_distrib, Finset.sum_sub_distrib]

end GlobalTheory.KSCocycle
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechCocycleVerticalFieldsEqCoboundaryAddLogDeriv =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVectorFieldLiftsAffineCoverSmoothGroup =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVectorFieldLiftsAffineCoverSmoothGroup", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingHomLiftOfFormallySmooth\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSpecVectorFieldOfDualNumberSection\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVectorFieldAffineOpenTransport\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.LogKS Formalism.L2.Pj

namespace GlobalTheory.KSLift

def twist {R A : Type} [CommRing R] [CommRing A] (ρ : R →+* A) (D : Derivation ℤ R R) : R →+* DualNumber A where
  toFun r := TrivSqZeroExt.inl (ρ r) + TrivSqZeroExt.inr (ρ (D r))
  map_one' := by ext <;> simp
  map_mul' x y := by
    ext <;> simp [Derivation.leibniz, smul_eq_mul] <;> ring
  map_zero' := by ext <;> simp
  map_add' x y := by ext <;> simp

def epsIdeal (A : Type) [CommRing A] : Ideal (DualNumber A) := RingHom.ker (TrivSqZeroExt.fstHom A A A).toRingHom

theorem mem_epsIdeal {A : Type} [CommRing A] (x : DualNumber A) : x ∈ epsIdeal A ↔ x.fst = 0 := Iff.rfl

theorem isNilpotent_epsIdeal (A : Type) [CommRing A] : IsNilpotent (epsIdeal A) := by
  refine ⟨2, ?_⟩
  rw [pow_two, Ideal.zero_eq_bot, eq_bot_iff]
  refine Ideal.mul_le.2 fun x hx y hy => ?_
  rw [mem_epsIdeal] at hx hy
  rw [Ideal.mem_bot]
  ext <;> simp [hx, hy]

theorem exists_lift {R A : Type} [CommRing R] [CommRing A] (ρ : R →+* A) (hρ : ρ.FormallySmooth)
    (D : Derivation ℤ R R) : ∃ σ : A →+* DualNumber A, (∀ a, (σ a).fst = a) ∧ ∀ r, (σ (ρ r)).snd = ρ (D r) := by
  have hg : ((Ideal.Quotient.mk (epsIdeal A)).comp (algebraMap A (DualNumber A))).comp ρ =
      (Ideal.Quotient.mk (epsIdeal A)).comp (twist ρ D) := by
    ext r
    simp only [RingHom.comp_apply]
    rw [Ideal.Quotient.eq, mem_epsIdeal]
    simp [twist, TrivSqZeroExt.algebraMap_eq_inl]
  obtain ⟨F, hF1, hF2⟩ := GlobalTheory.DI.exists_ringHom_lift_of_formallySmooth ρ hρ (twist ρ D) (epsIdeal A)
    (isNilpotent_epsIdeal A) _ hg
  refine ⟨F, fun a => ?_, fun r => ?_⟩
  · have h := hF1 a
    simp only [RingHom.comp_apply] at h
    rw [Ideal.Quotient.eq, mem_epsIdeal] at h
    simpa [sub_eq_zero, TrivSqZeroExt.algebraMap_eq_inl] using h
  · rw [hF2]; simp [twist]

theorem main (LA : ∀ (A : Type) [CommRing A] (σ : A →+* DualNumber A), (∀ a, (σ a).fst = a) → ∃ d : ∀ O : (Sp A).Opens, Γ(Sp A, O) → Γ(Sp A, O), IsField ⊤ d ∧ ∀ a : A, d ⊤ ((Scheme.ΓSpecIso (CommRingCat.of A)).inv.hom a) = (Scheme.ΓSpecIso (CommRingCat.of A)).inv.hom (σ a).snd) (LB : ∀ (Z : Scheme.{0}) (W : Z.Opens) (hW : IsAffineOpen W) (δ : Γ(Z, W) → Γ(Z, W)) (d' : ∀ O : (Spec Γ(Z, W)).Opens, Γ(Spec Γ(Z, W), O) → Γ(Spec Γ(Z, W), O)), IsField ⊤ d' → (∀ a, d' ⊤ ((Scheme.ΓSpecIso Γ(Z, W)).inv.hom a) = (Scheme.ΓSpecIso Γ(Z, W)).inv.hom (δ a)) → ∃ d : ∀ O : Z.Opens, Γ(Z, O) → Γ(Z, O), IsField W d ∧ ∀ a, d W a = δ a) : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (X : Scheme.{0}) (t : SAB H X) (U : X.affineOpens) (D : Derivation ℤ Γ(X, U.1) Γ(X, U.1)), ∃ (J : Type) (W : J → t.G.left.Opens) (j : J → t.PP.L.ι) (d : J → ∀ O : t.G.left.Opens, Γ(t.G.left, O) → Γ(t.G.left, O)), (∀ i, IsAffineOpen (W i)) ∧ ⨆ i, W i = t.G.hom ⁻¹ᵁ U.1 ∧ (∀ i, W i ≤ t.PP.L.U (j i)) ∧ (∀ i, IsField (W i) (d i)) ∧ ∀ i (h : W i ≤ t.G.hom ⁻¹ᵁ U.1) (r : Γ(X, U.1)), d i (W i) ((t.G.hom.appLE U.1 (W i) h).hom r) = (t.G.hom.appLE U.1 (W i) h).hom (D r) := by
  intro E _ _ _ H X t U D
  have key : ∀ (V : t.G.left.affineOpens) (h : V.1 ≤ t.G.hom ⁻¹ᵁ U.1),
      ∃ d : ∀ O : t.G.left.Opens, Γ(t.G.left, O) → Γ(t.G.left, O), IsField V.1 d ∧
        ∀ r, d V.1 ((t.G.hom.appLE U.1 V.1 h).hom r) = (t.G.hom.appLE U.1 V.1 h).hom (D r) := by
    intro V h
    have hsm : (t.G.hom.appLE U.1 V.1 h).hom.Smooth := t.semi.smooth.smooth_appLE U.2 V.2 h
    obtain ⟨σ, hσ1, hσ2⟩ := exists_lift _ hsm.formallySmooth D
    obtain ⟨d', hd'1, hd'2⟩ := LA _ σ hσ1
    obtain ⟨d, hd1, hd2⟩ := LB t.G.left V.1 V.2 (fun a => (σ a).snd) d' hd'1 hd'2
    exact ⟨d, hd1, fun r => by rw [hd2, hσ2]⟩
  choose dd hdd1 hdd2 using key
  let J := {p : t.G.left.affineOpens × t.PP.L.ι // p.1.1 ≤ t.G.hom ⁻¹ᵁ U.1 ⊓ t.PP.L.U p.2}
  refine ⟨J, fun i => i.1.1.1, fun i => i.1.2, fun i => dd i.1.1 (i.2.trans inf_le_left),
    fun i => i.1.1.2, ?_, fun i => i.2.trans inf_le_right, fun i => hdd1 _ _, fun i h r => hdd2 _ _ r⟩
  refine le_antisymm (iSup_le fun i => i.2.trans inf_le_left) fun x hx => ?_
  have hx' : x ∈ (⨆ k, t.PP.L.U k) := by rw [t.PP.isLB.cover]; trivial
  obtain ⟨k, hk⟩ := TopologicalSpace.Opens.mem_iSup.1 hx'
  obtain ⟨_, ⟨V, hV, rfl⟩, hxV, hVle⟩ := t.G.left.isBasis_affineOpens.exists_subset_of_mem_open
    (show x ∈ t.G.hom ⁻¹ᵁ U.1 ⊓ t.PP.L.U k from ⟨hx, hk⟩) (t.G.hom ⁻¹ᵁ U.1 ⊓ t.PP.L.U k).2
  exact TopologicalSpace.Opens.mem_iSup.2 ⟨⟨(⟨V, hV⟩, k), hVle⟩, hxV⟩

theorem exists_lifts : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (X : Scheme.{0}) (t : SAB H X) (U : X.affineOpens) (D : Derivation ℤ Γ(X, U.1) Γ(X, U.1)), ∃ (J : Type) (W : J → t.G.left.Opens) (j : J → t.PP.L.ι) (d : J → ∀ O : t.G.left.Opens, Γ(t.G.left, O) → Γ(t.G.left, O)), (∀ i, IsAffineOpen (W i)) ∧ ⨆ i, W i = t.G.hom ⁻¹ᵁ U.1 ∧ (∀ i, W i ≤ t.PP.L.U (j i)) ∧ (∀ i, IsField (W i) (d i)) ∧ ∀ i (h : W i ≤ t.G.hom ⁻¹ᵁ U.1) (r : Γ(X, U.1)), d i (W i) ((t.G.hom.appLE U.1 (W i) h).hom r) = (t.G.hom.appLE U.1 (W i) h).hom (D r) :=
  main _root_.GlobalTheory.SpecField.exists_isField _root_.GlobalTheory.FieldTransport.exists_isField_transport

end GlobalTheory.KSLift
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVectorFieldLiftsAffineCoverSmoothGroup =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechKodairaSpencerClassAbelianTriple =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechKodairaSpencerClassAbelianTriple", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechCocycleVerticalFieldsEqCoboundaryAddLogDeriv\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVectorFieldLiftsAffineCoverSmoothGroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.LogKS Formalism.L2.Pj

namespace GlobalTheory.KSExists

theorem isField_mono {Z : Scheme.{0}} {W₀ W₁ : Z.Opens} (h : W₁ ≤ W₀) {d : ∀ W : Z.Opens, Γ(Z, W) → Γ(Z, W)}
    (hd : IsField W₀ d) : IsField W₁ d :=
  ⟨fun W hW => hd.1 W (hW.trans h), fun W hW => hd.2.1 W (hW.trans h), fun W W' h' hW => hd.2.2 W W' h' (hW.trans h)⟩

theorem isField_sub {Z : Scheme.{0}} {W₀ : Z.Opens} {d d' : ∀ W : Z.Opens, Γ(Z, W) → Γ(Z, W)}
    (hd : IsField W₀ d) (hd' : IsField W₀ d') : IsField W₀ (fun W f => d W f - d' W f) := by
  refine ⟨fun W hW f f' => ?_, fun W hW f f' => ?_, fun W W' h hW f => ?_⟩
  · simp only [hd.1 W hW, hd'.1 W hW]; ring
  · simp only [hd.2.1 W hW, hd'.2.1 W hW]; ring
  · simp only [map_sub, hd.2.2 W W' h hW, hd'.2.2 W W' h hW]

theorem lifts : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (X : Scheme.{0}) (t : SAB H X) (U : X.affineOpens) (D : Derivation ℤ Γ(X, U.1) Γ(X, U.1)), ∃ (J : Type) (W : J → t.G.left.Opens) (j : J → t.PP.L.ι) (d : J → ∀ O : t.G.left.Opens, Γ(t.G.left, O) → Γ(t.G.left, O)), (∀ i, IsAffineOpen (W i)) ∧ ⨆ i, W i = t.G.hom ⁻¹ᵁ U.1 ∧ (∀ i, W i ≤ t.PP.L.U (j i)) ∧ (∀ i, IsField (W i) (d i)) ∧ ∀ i (h : W i ≤ t.G.hom ⁻¹ᵁ U.1) (r : Γ(X, U.1)), d i (W i) ((t.G.hom.appLE U.1 (W i) h).hom r) = (t.G.hom.appLE U.1 (W i) h).hom (D r) := _root_.GlobalTheory.KSLift.exists_lifts

theorem cocycle : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (X : Scheme.{0}) (t : SAB H X), IsProper t.G.hom → Out.RelAmple t.G t.PP.L → Out.KTriv t.G t.PP.L → ∀ (U : X.affineOpens) (n : ℕ) (v : Fin n → (Sp (DualNumber Γ(X, U.1)) ⟶ t.G.left)), (∀ i, IsTanAtG t (chart U) (v i)) → (∀ w, IsTanAtG t (chart U) w → ∃! cf : Fin n → Γ(X, U.1), IsCombAtG t (chart U) v cf w) → ∀ (J : Type) (W : J → t.G.left.Opens) (j : J → t.PP.L.ι), (∀ i, IsAffineOpen (W i)) → ⨆ i, W i = t.G.hom ⁻¹ᵁ U.1 → (∀ i, W i ≤ t.PP.L.U (j i)) → ∀ (e : J → J → ∀ O : t.G.left.Opens, Γ(t.G.left, O) → Γ(t.G.left, O)), (∀ i i', IsField (W i ⊓ W i') (e i i')) → (∀ i i' (h : W i ⊓ W i' ≤ t.G.hom ⁻¹ᵁ U.1) (r : Γ(X, U.1)), e i i' (W i ⊓ W i') ((t.G.hom.appLE U.1 (W i ⊓ W i') h).hom r) = 0) → (∀ i i' i'' (O : t.G.left.Opens), O ≤ W i ⊓ W i' ⊓ W i'' → ∀ f : Γ(t.G.left, O), e i i' O f + e i' i'' O f = e i i'' O f) → ∃ (Θ : Matrix (Fin n) (Fin n) Γ(X, U.1)) (h : J → ∀ O : t.G.left.Opens, Γ(t.G.left, O) → Γ(t.G.left, O)), (∀ i, IsField (W i) (h i)) ∧ (∀ i (hW : W i ≤ t.G.hom ⁻¹ᵁ U.1) (r : Γ(X, U.1)), h i (W i) ((t.G.hom.appLE U.1 (W i) hW).hom r) = 0) ∧ ∀ (i i' : J) (O : t.G.left.Opens), O ≤ W i ⊓ W i' → ∀ (f : Γ(t.G.left, O)) (S : Type) [CommRing S] (φ : Γ(X, U.1) →+* S) (g₀ : Sp S ⟶ t.G.left) (w : Fin n → (Sp (DualNumber S) ⟶ t.G.left)), g₀ ≫ t.G.hom = spMap φ ≫ chart U → ⊤ ≤ g₀ ⁻¹ᵁ O → (∀ a, IsTranslate t φ g₀ (v a) (w a)) → valR g₀ O (e i i' O f) = valR g₀ O (h i O f - h i' O f) + ∑ a, ∑ b, φ (Θ a b) * ((valR (w b) _ (t.PP.L.g (j i) (j i')).val).snd * valR g₀ _ (t.PP.L.g (j i) (j i'))⁻¹.val) * (valR (w a) O f).snd := _root_.GlobalTheory.KSCocycle.exists_coboundary_add_dlog

theorem exists_isKS : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (X : Scheme.{0}) (t : SAB H X), IsProper t.G.hom → Out.RelAmple t.G t.PP.L → Out.KTriv t.G t.PP.L → ∀ (U : X.affineOpens) (n : ℕ) (v : Fin n → (Sp (DualNumber Γ(X, U.1)) ⟶ t.G.left)), (∀ i, IsTanAtG t (chart U) (v i)) → (∀ w, IsTanAtG t (chart U) w → ∃! cf : Fin n → Γ(X, U.1), IsCombAtG t (chart U) v cf w) → ∀ D : Derivation ℤ Γ(X, U.1) Γ(X, U.1), ∃ Θ, IsKS t ⊤ U v D Θ := by
  intro E _ _ _ H X t hP hA hK U n v hv hb D
  obtain ⟨J, W, j, d, hWa, hcov, hWj, hd, hlift⟩ := _root_.GlobalTheory.KSLift.exists_lifts E H X t U D
  have hWU : ∀ i, W i ≤ t.G.hom ⁻¹ᵁ U.1 := fun i => hcov ▸ le_iSup W i
  have hres : ∀ i i' (r : Γ(X, U.1)), resG t.G.left (inf_le_left : W i ⊓ W i' ≤ W i)
      ((t.G.hom.appLE U.1 (W i) (hWU i)).hom r) = (t.G.hom.appLE U.1 (W i ⊓ W i') (inf_le_left.trans (hWU i))).hom r := by
    intro i i' r
    exact congrArg (fun q => q.hom r) (Scheme.Hom.appLE_map t.G.hom (hWU i) (homOfLE (inf_le_left : W i ⊓ W i' ≤ W i)).op)
  have hres' : ∀ i i' (r : Γ(X, U.1)), resG t.G.left (inf_le_right : W i ⊓ W i' ≤ W i')
      ((t.G.hom.appLE U.1 (W i') (hWU i')).hom r) = (t.G.hom.appLE U.1 (W i ⊓ W i') (inf_le_left.trans (hWU i))).hom r := by
    intro i i' r
    exact congrArg (fun q => q.hom r) (Scheme.Hom.appLE_map t.G.hom (hWU i') (homOfLE (inf_le_right : W i ⊓ W i' ≤ W i')).op)
  have a1 : ∀ i i' (r : Γ(X, U.1)), d i (W i ⊓ W i') ((t.G.hom.appLE U.1 (W i ⊓ W i') (inf_le_left.trans (hWU i))).hom r) =
      (t.G.hom.appLE U.1 (W i ⊓ W i') (inf_le_left.trans (hWU i))).hom (D r) := by
    intro i i' r
    rw [← hres i i' r, (hd i).2.2 _ _ inf_le_left le_rfl, hlift i (hWU i), hres]
  have a2 : ∀ i i' (r : Γ(X, U.1)), d i' (W i ⊓ W i') ((t.G.hom.appLE U.1 (W i ⊓ W i') (inf_le_left.trans (hWU i))).hom r) =
      (t.G.hom.appLE U.1 (W i ⊓ W i') (inf_le_left.trans (hWU i))).hom (D r) := by
    intro i i' r
    rw [← hres' i i' r, (hd i').2.2 _ _ inf_le_right le_rfl, hlift i' (hWU i'), hres']
  obtain ⟨Θ, h, hh, hhv, hks⟩ := cocycle E H X t hP hA hK U n v hv hb J W j hWa hcov hWj
    (fun i i' O f => d i O f - d i' O f)
    (fun i i' => isField_sub (isField_mono inf_le_left (hd i)) (isField_mono inf_le_right (hd i')))
    (fun i i' hW r => by
      show d i _ _ - d i' _ _ = 0
      rw [a1, a2, sub_self])
    (fun i i' i'' O _ f => sub_add_sub_cancel _ _ _)
  refine ⟨Θ, J, W, j, fun i O f => d i O f - h i O f, by rw [inf_top_eq]; exact hcov, hWj,
    fun i => isField_sub (hd i) (hh i), fun i hW r => ?_, fun i i' O hO f S _ φ g₀ w hg hO' hw => ?_⟩
  · show d i _ _ - h i _ _ = _
    rw [hlift i hW r, hhv i hW r, sub_zero]
  · have e := hks i i' O hO f S φ g₀ w hg hO' hw
    have hv' : ∀ a b : Γ(t.G.left, O), valR g₀ O (a - b) = valR g₀ O a - valR g₀ O b := fun a b => by
      simp only [valR, dif_pos hO', map_sub]
    show valR g₀ O ((d i O f - h i O f) - (d i' O f - h i' O f)) = _
    rw [show (d i O f - h i O f) - (d i' O f - h i' O f) = (d i O f - d i' O f) - (h i O f - h i' O f) by ring,
      hv', e]
    ring

end GlobalTheory.KSExists
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechKodairaSpencerClassAbelianTriple =====
