module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFiniteMulByNatAbelianVariety
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsIdPowEqOneOfIsFiniteOfFlat
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsQuotientSchemeOfFiniteFlatSubgroup
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.FiniteFaithfullyFlatKer
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ForallGeometricallyIntegralOfSmoothOfGeometrical
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.QuotientIsAbelianSchemeOfQuotientScheme
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
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
import Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne
import Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne
import Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FormallyUnramifiedOfCompOfEtaleOfSurjective
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQuotientAbelianVarietyFiniteSubgroupScheme, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQuotientAbelianVarietyFiniteSubgroupSchemeStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQuotientAbelianVarietyFiniteSubgroupScheme =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQuotientAbelianVarietyFiniteSubgroupScheme", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsBasisMemOfSpanEqTopOfSemilocal\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsIdPowEqOneOfIsFiniteOfFlat\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsQuotientSchemeOfFiniteFlatSubgroup\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.FiniteFaithfullyFlatKer\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ForallGeometricallyIntegralOfSmoothOfGeometrical\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.QuotientIsAbelianSchemeOfQuotientScheme\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FormallyUnramifiedOfCompOfEtaleOfSurjective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFiniteMulByNatAbelianVariety\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.AbLaw GlobalTheory.CatCoh GlobalTheory.CechDR GlobalTheory.AbCoh
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.AbelianQuotientField

open AffineQuotient AbelianQuotient


set_option backward.isDefEq.respectTransparency false in
theorem exists_quotient : ∀ (K : Type) [Field K] [IsAlgClosed K] (A : Over (Sp K)) [GrpObj A], IsAbelianScheme A → ∀ (H : Over (Sp K)) [GrpObj H] (i : H ⟶ A), IsMonHom i → Mono i → IsFinite H.hom → ∃ (A' : Over (Sp K)) (_ : GrpObj A'), IsAbelianScheme A' ∧ ∃ q : A ⟶ A', IsMonHom q ∧ IsFinite q.left ∧ Flat q.left ∧ Surjective q.left ∧ IsPullback i (toUnit H) q η[A'] := by
  intro K _ _ A _ hA H _ i hi hmono hfin
  have := hA.comm
  have := hA.proper
  have := hA.smooth
  have := hA.geomConnected
  have hflat : Flat H.hom := inferInstance
  have : IsCommMonObj H := ⟨by
    rw [← cancel_mono i, Category.assoc, IsMonHom.mul_hom, ← BraidedCategory.braiding_naturality_assoc,
      IsCommMonObj.mul_comm]⟩
  obtain ⟨N, hN, hH⟩ := GlobalTheory.FiniteFlatKilled.main K H hfin hflat
  have : IsLocallyNoetherian A.left := LocallyOfFiniteType.isLocallyNoetherian A.hom
  have : IsFinite (𝟙 A ^ N : A ⟶ A).left := _root_.GlobalTheory.MulFinite.isFinite_mul K A hA N hN
  have : IsFinite H.hom := hfin
  obtain ⟨Λ, _, _, _, _, e, _⟩ := exists_hopfAlgebra K H
  have hi' : i ^ N = 1 := by
    rw [← Category.id_comp i, ← MonObj.pow_comp, hH, MonObj.one_comp]
  obtain ⟨Q, q, π, h₁, h₂, h₃, h₄, h₅⟩ := exists_quotient_hopf
    GlobalTheory.HopfQuot.affine_quotient
    (e.hom ≫ i) (𝟙 A ^ N) (by
      rw [comp_pow, comp_pow, Category.comp_id, Category.comp_id, mul_pow, ← comp_pow,
        ← comp_pow i, hi', comp_one, comp_one, _root_.one_mul])
  have hq : IsPullback ((fst H A ≫ i) * snd H A) (snd H A) q q := by
    refine h₅.of_iso (whiskerRightIso e A) (Iso.refl _) (Iso.refl _) (Iso.refl _) ?_ ?_ ?_ ?_
      <;> simp [comp_mul]
  have : Flat q.left := h₃
  have : Surjective q.left := h₄
  have : IsFinite q.left := h₂
  have : IsFinite π.left := h₁
  obtain ⟨inst, hcomm, hhom, hker⟩ := exists_grpObj i q hq
  refine ⟨Q, inst, ?_, q, hhom, h₂, h₃, h₄, hker⟩
  have hπ : π.left ≫ A.hom = Q.hom := Over.w π
  have : IsSeparated Q.hom := by rw [← hπ]; infer_instance
  have : LocallyOfFiniteType Q.hom := by rw [← hπ]; infer_instance
  have hw : q.left ≫ Q.hom = A.hom := Over.w q
  have := GlobalTheory.forall_geometricallyIntegral_of_smooth_of_geometricallyConnected _ _ A.hom
    hA.smooth hA.geomConnected
  have : Flat (q.left ≫ Q.hom) := by rw [hw]; infer_instance
  have : UniversallyClosed (q.left ≫ Q.hom) := by rw [hw]; infer_instance
  have : GeometricallyReduced (q.left ≫ Q.hom) := by rw [hw]; infer_instance
  have : GeometricallyConnected (q.left ≫ Q.hom) := by rw [hw]; infer_instance
  have := flat_of_comp_of_flat_of_surjective q.left Q.hom
  have := UniversallyClosed.of_comp_surjective q.left Q.hom
  have := geometricallyReduced_of_comp q.left Q.hom
  have : LocallyOfFinitePresentation Q.hom := inferInstance
  exact ⟨hcomm, smooth_of_grpObj_of_flat Q, ⟨⟩, geometricallyConnected_of_comp q.left Q.hom⟩

end GlobalTheory.AbelianQuotientField
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQuotientAbelianVarietyFiniteSubgroupScheme =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQuotientAbelianVarietyFiniteSubgroupSchemeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQuotientAbelianVarietyFiniteSubgroupSchemeStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQuotientAbelianVarietyFiniteSubgroupScheme\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.AbLaw GlobalTheory.CatCoh GlobalTheory.CechDR GlobalTheory.AbCoh
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQuotientAbelianVarietyFiniteSubgroupSchemeStatement =====
