module

public import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.AuxiliaryInertOddPrime
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.GenericPartDenseProOpen
public import Development.AbelianVarietyTheory.Definitions.Degenerations.AdmissiblePadicIntMaximalIdeal
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap
public import Formalism.LocalToGlobal.ProjectiveLattices.OneLtAbsNormReal
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsUniformisationTrivialTorusAbelianLocus
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsIsoOfIsFiniteOfUniqueLiftOfClassicalPoints
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ModuliModelUltrametricPoints
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RangeAlgebraMapEqIInfDiscreteValuationSubring
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsAbelianSchemeOfUnifOfSubsingleton
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsIsoOfDensePartOfIsIntegral
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LineBundleIsoOfAmpleDeterminantFrames
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.UniformisationTriplesCompleteDVRTorsion
public import Development.AbelianVarietyTheory.Proofs.TorusSplitting.ValuationFormPsiBalancedSymmetricPeriodForm
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.DegenerationDataCoordsNeZeroLatticesIsomorphic
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCRing
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.PushInvertibleIffOfIsReduced
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsIsoStalkMapOfFlatOfSurjectiveOnStalks
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ArcWitMemRangeJKOfMemRangeJ
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.PsiCoordExistsUniqueUpToUnitLocal
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.CubePullbacks.CubePull
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FnAlgClosedOfFixedPoints
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSabDescentOfFieldExtension, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PolynomialSupportHolds

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSabDescentOfFieldExtension =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSabDescentOfFieldExtension", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.AuxiliaryInertOddPrime\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.GenericPartDenseProOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.PushInvertibleIffOfIsReduced\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.ModelRelCompare

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.ModelCompare GlobalTheory.Models

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H}
  {Xo : Moduli D l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}

section Dominates

variable {O' : Type} [CommRing O'] {β' : O' →+* c.F} (Y : Model Xo c β) (Y' : Model Xo c β') (b : O →+* O')
  (hb : β'.comp b = β)

end Dominates

section Dense

variable (Y : Model Xo c β)

end Dense

section Transition

variable {l₂ : Level H} {Xo₂ : Moduli D l₂} {c₂ : Coeff l₂} {O₂ : Type} [CommRing O₂] {β₂ : O₂ →+* c₂.F}
  (Y : Model Xo c β) (Y₂ : Model Xo₂ c₂ β₂) (hl : l.Dvd l₂) (hF : c.F ≤ c₂.F) (b : O →+* O₂)
  (hb : β₂.comp b = (IntermediateField.inclusion hF).toRingHom.comp β) (π : Y₂.X ⟶ Y.X)

end Transition

section Algebra

end Algebra

section Action

variable (Y : Model Xo c β)

variable {Y}

variable (Y)

end Action

end GlobalTheory.ModelRelCompare
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSabDescentOfFieldExtension =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PolynomialSupportHolds =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PolynomialSupportHolds", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.AdmissiblePadicIntMaximalIdeal\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.AuxiliaryInertOddPrime\npublic import Formalism.LocalToGlobal.ProjectiveLattices.OneLtAbsNormReal\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsUniformisationTrivialTorusAbelianLocus\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsIsoOfIsFiniteOfUniqueLiftOfClassicalPoints\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ModuliModelUltrametricPoints\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RangeAlgebraMapEqIInfDiscreteValuationSubring\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSabDescentOfFieldExtension\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsAbelianSchemeOfUnifOfSubsingleton\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsIsoOfDensePartOfIsIntegral\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsIsoStalkMapOfFlatOfSurjectiveOnStalks\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LineBundleIsoOfAmpleDeterminantFrames\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.UniformisationTriplesCompleteDVRTorsion\npublic import Development.AbelianVarietyTheory.Proofs.TorusSplitting.ValuationFormPsiBalancedSymmetricPeriodForm\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ArcWitMemRangeJKOfMemRangeJ\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.DegenerationDataCoordsNeZeroLatticesIsomorphic\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.PsiCoordExistsUniqueUpToUnitLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCRing\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.CubePullbacks.CubePull\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FnAlgClosedOfFixedPoints\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits NumberField IsLocalRing TopologicalSpace
open MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.DVR ReciprocityTheory.AnForm.R Formalism.L2.Pj
open GlobalTheory.Toroidal GlobalTheory.Models GlobalTheory.LN GlobalTheory.ShFam GlobalTheory.LocM
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.TorRef

section Form

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem exists_periodForm {W : Type} [CommRing W] [IsDomain W] [IsDiscreteValuationRing W] [CharZero W]
    [IsAdicComplete (maximalIdeal W) W] {t : SAB H (Sp W)}
    (P : PELUnif (maximalIdeal W) t) {ϖ : W} (hϖ : Irreducible ϖ) :
    ∃ be ∈ levelForms H 1 P.D.toPre.X, IsMonomial P.D.toPre ![ϖ] ![be] ∧ ∀ y, y ≠ 0 → 0 < be y y := by
  letI := H.starRing
  choose Q hQ using QForm.exists_QVal hϖ P.D
  have hQ' : QForm.IsQ P.D.toPre ϖ Q := hQ
  have hex : ∀ χ, ∃ r, PsiCoord P.D.toPre χ r := fun χ =>
    ((GlobalTheory.PsiCoordLocal.main W P.D inferInstance χ).1).imp fun _ h => h.1
  have h0 : ∀ a, 0 ≤ Q a := fun a => by
    by_cases ha : a = 0
    · rw [ha, QForm.Q_zero hϖ P.D hQ']
    · exact zero_le_one.trans (QForm.Q_pos hϖ P.D hQ' ha)
  let be : LinearMap.BilinForm ℤ P.D.toPre.X :=
    LinearMap.mk₂ ℤ (fun a b => QForm.bHom hϖ P.D hQ' a b)
      (fun a a' b => by simp only [map_add (f := _), AddMonoidHom.add_apply])
      (fun c a b => by simp only [map_zsmul, AddMonoidHom.smul_apply, smul_eq_mul, zsmul_eq_mul, Int.cast_id])
      (fun a b b' => by simp only [map_add (f := _)])
      (fun c a b => by simp only [map_zsmul, smul_eq_mul, zsmul_eq_mul, Int.cast_id])
  have hbe : ∀ a b, be a b = QForm.bOf P.D.toPre Q a b := fun _ _ => rfl
  refine ⟨be, ⟨fun a b => ?_, fun x a b => ?_, fun a b => ?_⟩, fun y => ?_, fun y hy => ?_⟩
  · rw [hbe, hbe, QForm.bOf_comm]
  · rw [hbe, hbe]
    exact QForm.bOf_balance hϖ P.D GlobalTheory.allSixLaws.1 P.oD hQ' x a b
  · simp
  · obtain ⟨r, hr⟩ := hex y
    obtain ⟨u, hu⟩ := GlobalTheory.ValForm.hasVal_coord (hQ y) hr
    obtain ⟨n, hn⟩ := Int.eq_ofNat_of_zero_le (h0 y)
    rw [hn, zpow_natCast, ← map_pow, ← map_mul] at hu
    have e : r = u * ϖ ^ n := (IsFractionRing.injective W (FractionRing W) hu).trans (_root_.mul_comm _ _)
    refine ⟨u, fun _ => n, fun i => ?_, ?_⟩
    · have : i = 0 := Subsingleton.elim _ _
      subst this
      show be y y = _
      rw [hbe, ← QForm.two_Q_eq hϖ P.D hQ', hn]
    · simpa [e] using hr
  · rw [hbe, ← QForm.two_Q_eq hϖ P.D hQ']
    have := QForm.Q_pos hϖ P.D hQ' hy
    omega

end Form

section Trait

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem closed_mem_abLocus_iff (T : CDVR) {t : SAB H (Sp T.V)} (P : PELUnif (maximalIdeal T.V) t) :
    (closedPoint T.V : Sp T.V) ∈ abLocus t.G ↔ Subsingleton P.D.toPre.X := by
  constructor
  · intro hc
    have hmax : (maximalIdeal T.V ^ (0 + 1)).IsMaximal := by
      rw [zero_add, pow_one]; infer_instance
    have hF : IsField (T.V ⧸ maximalIdeal T.V ^ (0 + 1)) := (Ideal.Quotient.maximal_ideal_iff_isField_quotient _).1 hmax
    have hle : maximalIdeal T.V ^ (0 + 1) ≤ (closedPoint T.V).asIdeal := by
      rw [zero_add, pow_one]; exact le_rfl
    obtain ⟨q, hq⟩ : closedPoint T.V ∈ Set.range (PrimeSpectrum.comap
        (Ideal.Quotient.mk (maximalIdeal T.V ^ (0 + 1)))) := by
      rw [range_comap_of_surjective _ _ Ideal.Quotient.mk_surjective, Ideal.mk_ker]
      exact hle
    let g := P.U.gt 0
    have m : Mono g.i := ⟨fun a b h => g.isKernel.hom_ext h (toUnit_unique _ _)⟩
    have hq' : thick T.V (maximalIdeal T.V) 0 q ∈ abLocus t.G := by
      rw [← hq] at hc; exact hc
    exact ArcNotAbelian.subsingleton_of_mem_abLocus t.G t.semi _ hF _ q hq' P.D.toPre.X g.i g.i_hom
  · intro hs K _ _ s _
    have := (isAbelianScheme_of_unif_of_subsingleton GlobalTheory.allSixLaws.1 GlobalTheory.allSixLaws.2.1 T.V T.cpl P.D P.A t.G t.semi
      P.U hs).proper
    infer_instance

variable {D : Datum H} {l : Level H} {Xo : Moduli D l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}


end Trait

end GlobalTheory.TorRef
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PolynomialSupportHolds =====
