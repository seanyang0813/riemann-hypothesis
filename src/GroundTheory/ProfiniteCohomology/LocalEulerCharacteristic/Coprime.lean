module

public import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.SubsingletonCohomologyOneGalUnitsSubgroupOf
public import GroundTheory.ProfiniteCohomology.LocalClassFormation.FiniteVanishing.KummerOpen
public import GroundTheory.ProfiniteCohomology.PoincareDuality.Torsion
public import GroundTheory.ProfiniteCohomology.ClassFormations.IsIsoCohomologyMapAlongResSubgroupOfHom
public import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CohomologyKummer
public import GroundTheory.ProfiniteCohomology.LocalClassFormationAlt
public import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Scalars
public import GroundTheory.ProfiniteCohomology.ClassFormations.CorestrictionDefs
public import GroundTheory.ProfiniteCohomology.EulerCharDefs
public import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.ConjAction
public import Mathlib.FieldTheory.Galois.Profinite
public import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.AdditiveInvariants
public import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CoprimeRegular
public import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CoprimeTwist
public import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.ModNEquivOfSurjectiveApplyModNRep
public import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CohomologyMapTensorRightMorCompCohomologyConj
import GroundTheory.ProfiniteCohomology.GaloisCohomology.Kummer
import GroundTheory.ProfiniteCohomology.EulerChar
import Mathlib.Algebra.Order.Star.Int
import Mathlib.GroupTheory.Nilpotent
import Mathlib.LinearAlgebra.Matrix.FiniteDimensional
import Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.TypeStar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Cohomology, GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CohomologyGal, GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Coprime

-- ===== clump member: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Cohomology =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Cohomology", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.SubsingletonCohomologyOneGalUnitsSubgroupOf\npublic import GroundTheory.ProfiniteCohomology.LocalClassFormation.FiniteVanishing.KummerOpen\npublic import GroundTheory.ProfiniteCohomology.PoincareDuality.Torsion\npublic import GroundTheory.ProfiniteCohomology.ClassFormations.IsIsoCohomologyMapAlongResSubgroupOfHom\nimport GroundTheory.ProfiniteCohomology.GaloisCohomology.Kummer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory

variable {K Ksep : Type} [Field K] [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K]
  [Field Ksep] [Algebra K Ksep] [IsSepClosure K Ksep] {l : ℕ} (hl : (l : K) ≠ 0)

section Open

noncomputable def rootsOfUnityTwoInv (l : ℕ) (V : OpenSubgroup Gal(Ksep/K)) :
    cohomology (Rep.res (V : Subgroup Gal(Ksep/K)).subtype (galRootsOfUnity.{0} K Ksep l)) 2 →+ QZ :=
  ((localClassFormationOfIsSepClosure K Ksep).inv V).comp
    (cohomologyMap (kummerSequenceRes (K := K) (Ksep := Ksep) l (V : Subgroup Gal(Ksep/K))).f 2).hom.toAddMonoidHom

theorem rootsOfUnityTwoInv_apply (V : OpenSubgroup Gal(Ksep/K))
    (x : cohomology (Rep.res (V : Subgroup Gal(Ksep/K)).subtype (galRootsOfUnity.{0} K Ksep l)) 2) :
    rootsOfUnityTwoInv l V x = (localClassFormationOfIsSepClosure K Ksep).inv V
      ((cohomologyMap (kummerSequenceRes (K := K) (Ksep := Ksep) l (V : Subgroup Gal(Ksep/K))).f 2).hom x) :=
  AddMonoidHom.comp_apply _ _ x


include hl in
theorem rootsOfUnityTwoInv_injective (V : OpenSubgroup Gal(Ksep/K)) :
    Function.Injective (rootsOfUnityTwoInv (K := K) (Ksep := Ksep) l V) :=
  ((localClassFormationOfIsSepClosure K Ksep).inv_bijective V).1.comp
    (cohomologyMap_f_injective_of_subsingleton
      (kummerSequenceRes_shortExact (Ksep := Ksep) l (V : Subgroup Gal(Ksep/K)) hl) 1
      (subsingleton_cohomology_one_galUnits_open K Ksep V))


include hl in
theorem range_rootsOfUnityTwoInv (V : OpenSubgroup Gal(Ksep/K)) :
    (rootsOfUnityTwoInv (K := K) (Ksep := Ksep) l V).range = (zmodToQZ l).range := by
  have : NeZero l := ⟨by rintro rfl; exact hl Nat.cast_zero⟩
  set F := localClassFormationOfIsSepClosure K Ksep
  set S := kummerSequenceRes (K := K) (Ksep := Ksep) l (V : Subgroup Gal(Ksep/K))
  have hS : S.ShortExact := kummerSequenceRes_shortExact l _ hl
  ext q
  simp only [AddMonoidHom.mem_range]
  constructor
  · rintro ⟨x, rfl⟩
    refine exists_zmodToQZ_eq ?_
    have e : l • (cohomologyMap S.f 2).hom x = 0 :=
      (cohomologyMap_kummerSequenceRes_g_apply l (V : Subgroup Gal(Ksep/K)) 2 _).symm.trans
        (cohomologyMap_g_cohomologyMap_f_apply (S := S) 2 x)
    rw [rootsOfUnityTwoInv_apply]
    exact (map_nsmul (F.inv V) l _).symm.trans ((congrArg (F.inv V) e).trans (map_zero _))
  · rintro ⟨a, rfl⟩
    obtain ⟨y, hy⟩ := (F.inv_bijective V).2 (zmodToQZ l a)
    have hny : l • y = 0 := by
      apply (F.inv_bijective V).1
      rw [map_nsmul, hy, ← map_nsmul, nsmul_eq_mul, ZMod.natCast_self, zero_mul, map_zero, map_zero]
    obtain ⟨x, hx⟩ := exists_cohomologyMap_f_eq hS 2 y
      ((cohomologyMap_kummerSequenceRes_g_apply l (V : Subgroup Gal(Ksep/K)) 2 y).trans hny)
    exact ⟨x, (rootsOfUnityTwoInv_apply V x).trans ((congrArg (F.inv V) hx).trans hy)⟩

noncomputable def rootsOfUnityTwoEquivOpen (V : OpenSubgroup Gal(Ksep/K)) :
    cohomology (Rep.res (V : Subgroup Gal(Ksep/K)).subtype (galRootsOfUnity.{0} K Ksep l)) 2 ≃+ ZMod l :=
  haveI : NeZero l := ⟨by rintro rfl; exact hl Nat.cast_zero⟩
  (AddMonoidHom.ofInjective (rootsOfUnityTwoInv_injective hl V)).trans
    ((AddEquiv.addSubgroupCongr (range_rootsOfUnityTwoInv hl V)).trans
      (AddMonoidHom.ofInjective (zmodToQZ_injective (n := l))).symm)

end Open

variable {U V : OpenSubgroup Gal(Ksep/K)} (h : V ≤ U)

noncomputable def cohomologyTwoRootsEquiv :
    cohomology (Rep.res ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).subtype
        (Rep.res (U : Subgroup Gal(Ksep/K)).subtype (galRootsOfUnity.{0} K Ksep l))) 2 ≃+ ZMod l :=
  (asIso (cohomologyMapAlong (Subgroup.subgroupOfEquivOfLe
      (show (V : Subgroup Gal(Ksep/K)) ≤ U from h)).symm.toMonoidHom
    (continuous_subgroupOfEquivOfLe_symm _) (resSubgroupOfHom _ (galRootsOfUnity.{0} K Ksep l)) 2)).toLinearEquiv.toAddEquiv.trans
    (rootsOfUnityTwoEquivOpen hl V)

variable [((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).Normal]

theorem cohomologyTwoRootsEquiv_cohomologyConj (g : (U : Subgroup Gal(Ksep/K)))
    (x : cohomology (Rep.res ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).subtype
        (Rep.res (U : Subgroup Gal(Ksep/K)).subtype (galRootsOfUnity.{0} K Ksep l))) 2) :
    cohomologyTwoRootsEquiv hl h ((cohomologyConj (Rep.res (U : Subgroup Gal(Ksep/K)).subtype
        (galRootsOfUnity.{0} K Ksep l)) ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))) 2 g).hom x) =
      cohomologyTwoRootsEquiv hl h x := by
  rw [cohomologyConj_two_galRootsOfUnity_eq_id hl h g]
  rfl

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Cohomology =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CohomologyGal =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CohomologyGal", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CohomologyKummer\npublic import GroundTheory.ProfiniteCohomology.LocalClassFormationAlt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open IntermediateField

variable {K Ksep : Type} [Field K] [Field Ksep] [Algebra K Ksep] [IsSepClosure K Ksep]
  {U V : OpenSubgroup Gal(Ksep/K)} (h : V ≤ U)
  [((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).Normal]

noncomputable def fixedFieldGalHom :
    letI := (IntermediateField.inclusion (fixedField_le_fixedField h)).toRingHom.toAlgebra
    (U : Subgroup Gal(Ksep/K)) →* (fixedField (V : Subgroup Gal(Ksep/K)) ≃ₐ[fixedField (U : Subgroup Gal(Ksep/K))]
      fixedField (V : Subgroup Gal(Ksep/K))) :=
  letI := (IntermediateField.inclusion (fixedField_le_fixedField h)).toRingHom.toAlgebra
  { toFun := fun g => AlgEquiv.ofRingEquiv (f := (fixedFieldConj h g).toRingEquiv) fun e =>
      Subtype.ext ((mem_fixedField_iff _ _).1 e.2 g g.2)
    map_one' := AlgEquiv.ext fun _ => Subtype.ext rfl
    map_mul' := fun _ _ => AlgEquiv.ext fun _ => Subtype.ext rfl }

theorem fixedFieldGalHom_surjective : Function.Surjective (fixedFieldGalHom h) := by
  let := (IntermediateField.inclusion (fixedField_le_fixedField h)).toRingHom.toAlgebra
  have : IsScalarTower (fixedField (U : Subgroup Gal(Ksep/K))) (fixedField (V : Subgroup Gal(Ksep/K))) Ksep :=
    IsScalarTower.of_algebraMap_eq' rfl
  have : IsGalois (fixedField (U : Subgroup Gal(Ksep/K))) Ksep :=
    IsGalois.tower_top_of_isGalois K (fixedField (U : Subgroup Gal(Ksep/K))) Ksep
  intro σ
  set τ := σ.liftNormal Ksep
  have hτU : τ.restrictScalars K ∈ (U : Subgroup Gal(Ksep/K)) :=
    (fixingSubgroup_fixedField_openSubgroup U).le
      ((mem_fixingSubgroup_iff _ _).2 fun x hx => τ.commutes ⟨x, hx⟩)
  exact ⟨⟨τ.restrictScalars K, hτU⟩, AlgEquiv.ext fun x => Subtype.ext (σ.liftNormal_commutes Ksep x)⟩

theorem fixedFieldGalHom_ker :
    (fixedFieldGalHom h).ker = (V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K)) := by
  let := (IntermediateField.inclusion (fixedField_le_fixedField h)).toRingHom.toAlgebra
  ext g
  rw [MonoidHom.mem_ker, Subgroup.mem_subgroupOf]
  constructor
  · intro hg
    exact (fixingSubgroup_fixedField_openSubgroup V).le ((mem_fixingSubgroup_iff _ _).2 fun x hx =>
      congrArg Subtype.val (AlgEquiv.ext_iff.1 hg ⟨x, hx⟩))
  · intro hg
    exact AlgEquiv.ext fun x => Subtype.ext ((mem_fixedField_iff _ _).1 x.2 _ hg)

noncomputable def quotientFixedFieldGalEquiv :
    letI := (IntermediateField.inclusion (fixedField_le_fixedField h)).toRingHom.toAlgebra
    (U : Subgroup Gal(Ksep/K)) ⧸ (V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K)) ≃*
      (fixedField (V : Subgroup Gal(Ksep/K)) ≃ₐ[fixedField (U : Subgroup Gal(Ksep/K))]
        fixedField (V : Subgroup Gal(Ksep/K))) :=
  letI := (IntermediateField.inclusion (fixedField_le_fixedField h)).toRingHom.toAlgebra
  (QuotientGroup.quotientMulEquivOfEq (fixedFieldGalHom_ker h).symm).trans
    (QuotientGroup.quotientKerEquivOfSurjective _ (fixedFieldGalHom_surjective h))

theorem quotientFixedFieldGalEquiv_mk (g : (U : Subgroup Gal(Ksep/K))) :
    letI := (IntermediateField.inclusion (fixedField_le_fixedField h)).toRingHom.toAlgebra
    quotientFixedFieldGalEquiv h (g : (U : Subgroup Gal(Ksep/K)) ⧸
      (V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))) = fixedFieldGalHom h g :=
  rfl

theorem cohomologyZeroRootsEquiv_cohomologyConj_gal (l : ℕ) (g : (U : Subgroup Gal(Ksep/K)))
    (x : cohomology (Rep.res ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).subtype
        (Rep.res (U : Subgroup Gal(Ksep/K)).subtype (galRootsOfUnity.{0} K Ksep l))) 0) :
    letI := (IntermediateField.inclusion (fixedField_le_fixedField h)).toRingHom.toAlgebra
    cohomologyZeroRootsEquiv h l ((cohomologyConj (Rep.res (U : Subgroup Gal(Ksep/K)).subtype
        (galRootsOfUnity.{0} K Ksep l)) ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))) 0 g).hom x) =
      torsNRep (fixedField (V : Subgroup Gal(Ksep/K)) ≃ₐ[fixedField (U : Subgroup Gal(Ksep/K))]
          fixedField (V : Subgroup Gal(Ksep/K)))
        (Additive (fixedField (V : Subgroup Gal(Ksep/K)))ˣ) l (fixedFieldGalHom h g)
        (cohomologyZeroRootsEquiv h l x) :=
  cohomologyZeroRootsEquiv_cohomologyConj h l g x

theorem cohomologyOneRootsEquiv_cohomologyConj_gal {l : ℕ} (hl : (l : K) ≠ 0) (g : (U : Subgroup Gal(Ksep/K)))
    (x : cohomology (Rep.res ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).subtype
        (Rep.res (U : Subgroup Gal(Ksep/K)).subtype (galRootsOfUnity.{0} K Ksep l))) 1) :
    letI := (IntermediateField.inclusion (fixedField_le_fixedField h)).toRingHom.toAlgebra
    cohomologyOneRootsEquiv h hl ((cohomologyConj (Rep.res (U : Subgroup Gal(Ksep/K)).subtype
        (galRootsOfUnity.{0} K Ksep l)) ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))) 1 g).hom x) =
      modNRep (fixedField (V : Subgroup Gal(Ksep/K)) ≃ₐ[fixedField (U : Subgroup Gal(Ksep/K))]
          fixedField (V : Subgroup Gal(Ksep/K)))
        (Additive (fixedField (V : Subgroup Gal(Ksep/K)))ˣ) l (fixedFieldGalHom h g)
        (cohomologyOneRootsEquiv h hl x) := by
  let := (IntermediateField.inclusion (fixedField_le_fixedField h)).toRingHom.toAlgebra
  rw [cohomologyOneRootsEquiv_cohomologyConj]
  obtain ⟨u, hu⟩ := Submodule.mkQ_surjective _ (cohomologyOneRootsEquiv h hl x)
  rw [← hu]
  rfl

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CohomologyGal =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Coprime =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Coprime", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Scalars\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Cohomology\npublic import GroundTheory.ProfiniteCohomology.ClassFormations.CorestrictionDefs\npublic import GroundTheory.ProfiniteCohomology.EulerCharDefs\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CohomologyGal\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.ConjAction\npublic import Mathlib.FieldTheory.Galois.Profinite\nimport GroundTheory.ProfiniteCohomology.EulerChar\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.AdditiveInvariants\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CoprimeRegular\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CoprimeTwist\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.ModNEquivOfSurjectiveApplyModNRep\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.GroupTheory.Nilpotent\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CohomologyMapTensorRightMorCompCohomologyConj\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory IntermediateField Representation ValuativeRel

section Card

variable (l : ℕ) [Fact l.Prime]

theorem natCard_eq_pow_finrank_zmod (V : Type*) [AddCommGroup V] [Module (ZMod l) V] [Finite V] :
    Nat.card V = l ^ Module.finrank (ZMod l) V := by
  have : NeZero l := ⟨(Fact.out : l.Prime).ne_zero⟩
  have := Fintype.ofFinite V
  rw [Nat.card_eq_fintype_card, Module.card_eq_pow_finrank (K := ZMod l) (V := V), ZMod.card]

theorem finrank_eq_of_natCard_zmod {V : Type*} [AddCommGroup V] [Module (ZMod l) V] [Finite V]
    {r : ℕ} (h : Nat.card V = l ^ r) : Module.finrank (ZMod l) V = r := by
  rw [natCard_eq_pow_finrank_zmod l V] at h
  exact Nat.pow_right_injective (Fact.out : l.Prime).two_le h

end Card

section Roots

variable {K Ksep : Type} [Field K] [Field Ksep] [Algebra K Ksep] (l : ℕ)

theorem nsmul_galRootsOfUnity_eq_zero (a : galRootsOfUnity.{0} K Ksep l) : l • a = 0 := by
  have key : ∀ b : Additive (rootsOfUnity l Ksep), l • b = 0 := fun b => by
    apply Additive.toMul.injective
    rw [toMul_nsmul, toMul_zero]
    exact Subtype.ext (by simpa using (mem_rootsOfUnity l _).1 (Additive.toMul b).2)
  exact key a

noncomputable abbrev rootsRepZMod (U : Subgroup Gal(Ksep/K)) : Rep.{0} (ZMod l) U :=
  zmodRepOfTorsion l (Rep.res U.subtype (galRootsOfUnity.{0} K Ksep l))
    (nsmul_galRootsOfUnity_eq_zero (K := K) (Ksep := Ksep) l)

variable [IsSepClosure K Ksep]

theorem finrank_rootsRepZMod [Fact l.Prime] (hl : (l : K) ≠ 0) (U : Subgroup Gal(Ksep/K)) :
    Module.finrank (ZMod l) (rootsRepZMod (K := K) (Ksep := Ksep) l U) = 1 := by
  have hlp : l.Prime := Fact.out
  have : IsSepClosed Ksep := IsSepClosure.sep_closed K
  have : NeZero (l : Ksep) := ⟨by
    rw [← map_natCast (algebraMap K Ksep)]
    exact (map_ne_zero _).mpr hl⟩
  have : NeZero l := ⟨hlp.ne_zero⟩
  have hcard : Nat.card (rootsRepZMod (K := K) (Ksep := Ksep) l U) = l ^ 1 :=
    (Nat.card_congr (Additive.toMul (α := rootsOfUnity l Ksep))).trans
      ((HasEnoughRootsOfUnity.natCard_rootsOfUnity Ksep l).trans (pow_one l).symm)
  have : Finite (rootsRepZMod (K := K) (Ksep := Ksep) l U) := Nat.finite_of_card_ne_zero (by
    rw [hcard]; exact pow_ne_zero _ hlp.ne_zero)
  exact finrank_eq_of_natCard_zmod l hcard

end Roots

section RootsSubgroupOf

variable {K Ksep : Type} [Field K] [Field Ksep] [Algebra K Ksep] [IsSepClosure K Ksep] {l : ℕ}
  {U V : OpenSubgroup Gal(Ksep/K)}


omit [IsSepClosure K Ksep] in
theorem rootsRepZMod_ρ_of_mem
    (hμ : ∀ ζ : Ksep, ζ ^ l = 1 → ζ ∈ fixedField (V : Subgroup Gal(Ksep/K)))
    (g : (openSubgroupOf U V : Subgroup (U : Subgroup Gal(Ksep/K))))
    (t : rootsRepZMod (K := K) (Ksep := Ksep) l U) :
    (rootsRepZMod (K := K) (Ksep := Ksep) l U).ρ g t = t := by
  have hg : (((g : (U : Subgroup Gal(Ksep/K))) : Gal(Ksep/K))) ∈ (V : Subgroup Gal(Ksep/K)) :=
    Subgroup.mem_subgroupOf.1 g.2
  have key : ∀ s : Additive (rootsOfUnity l Ksep),
      (galRootsOfUnity.{0} K Ksep l).ρ ((g : (U : Subgroup Gal(Ksep/K))) : Gal(Ksep/K)) s = s := by
    intro s
    rw [galRootsOfUnity_ρ_apply]
    apply Additive.toMul.injective
    apply Subtype.ext
    apply Units.ext
    rw [toMul_ofMul, coe_galRootsOfUnityHom_apply]
    have hs : (((Additive.toMul s : rootsOfUnity l Ksep) : Ksepˣ) : Ksep) ^ l = 1 := by
      have := (mem_rootsOfUnity l _).1 (Additive.toMul s).2
      rw [← Units.val_pow_eq_pow_val, this, Units.val_one]
    exact (mem_fixedField_iff _ _).1 (hμ _ hs) _ hg
  exact key t


variable (l) in
noncomputable def rootsCohomologyZModEquiv (n : ℕ) :
    cohomology (Rep.res ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).subtype
        (Rep.res (U : Subgroup Gal(Ksep/K)).subtype (galRootsOfUnity.{0} K Ksep l))) n ≃+
      cohomology (Rep.res ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).subtype
        (rootsRepZMod (K := K) (Ksep := Ksep) l U)) n :=
  cohomologyAddEquivOfEquiv
    (A := Rep.res ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).subtype
      (Rep.res (U : Subgroup Gal(Ksep/K)).subtype (galRootsOfUnity.{0} K Ksep l)))
    (A' := Rep.res ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).subtype
      (rootsRepZMod (K := K) (Ksep := Ksep) l U))
    (zmodRepOfTorsionEquiv l _ (nsmul_galRootsOfUnity_eq_zero (K := K) (Ksep := Ksep) l))
    (fun _ _ => rfl) n

theorem rootsCohomologyZModEquiv_cohomologyConj
    [((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).Normal] (n : ℕ)
    (g : (U : Subgroup Gal(Ksep/K)))
    (x : cohomology (Rep.res ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).subtype
        (Rep.res (U : Subgroup Gal(Ksep/K)).subtype (galRootsOfUnity.{0} K Ksep l))) n) :
    rootsCohomologyZModEquiv l n ((cohomologyConj (Rep.res (U : Subgroup Gal(Ksep/K)).subtype
        (galRootsOfUnity.{0} K Ksep l)) ((V : Subgroup Gal(Ksep/K)).subgroupOf
          (U : Subgroup Gal(Ksep/K))) n g).hom x) =
      (cohomologyConj (rootsRepZMod (K := K) (Ksep := Ksep) l U) ((V : Subgroup Gal(Ksep/K)).subgroupOf
          (U : Subgroup Gal(Ksep/K))) n g).hom (rootsCohomologyZModEquiv l n x) :=
  cohomologyAddEquivOfEquiv_cohomologyConj (A := Rep.res (U : Subgroup Gal(Ksep/K)).subtype
    (galRootsOfUnity.{0} K Ksep l)) (A' := rootsRepZMod (K := K) (Ksep := Ksep) l U)
    (zmodRepOfTorsionEquiv l _ (nsmul_galRootsOfUnity_eq_zero (K := K) (Ksep := Ksep) l))
    (fun _ _ => rfl) _ n g x

end RootsSubgroupOf

section Local

variable {K Ksep : Type} [Field K] [ValuativeRel K] [TopologicalSpace K]
  [IsNonarchimedeanLocalField K] [Field Ksep] [Algebra K Ksep] [IsSepClosure K Ksep]
  {l : ℕ} {U V : OpenSubgroup Gal(Ksep/K)}

theorem finite_cohomology_roots_subgroupOf (hl : (l : K) ≠ 0) (h : V ≤ U)
    (n : ℕ) (hn : n ≤ 2) :
    Finite (cohomology (Rep.res ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).subtype
        (Rep.res (U : Subgroup Gal(Ksep/K)).subtype (galRootsOfUnity.{0} K Ksep l))) n) := by
  have := finite_cohomology_rootsOfUnity_open K Ksep hl V n hn
  exact Finite.of_equiv _ (asIso (cohomologyMapAlong (Subgroup.subgroupOfEquivOfLe
      (show (V : Subgroup Gal(Ksep/K)) ≤ U from h)).symm.toMonoidHom
    (continuous_subgroupOfEquivOfLe_symm _) (resSubgroupOfHom _ (galRootsOfUnity.{0} K Ksep l))
      n)).toLinearEquiv.toEquiv.symm

end Local

section ZModLinear

variable {l : ℕ} {X Y : Type*} [AddCommGroup X] [Module (ZMod l) X] [AddCommGroup Y]
  [Module (ZMod l) Y]

noncomputable def addEquivZModLinear (φ : X ≃+ Y) : X ≃ₗ[ZMod l] Y :=
  { φ.toAddMonoidHom.toZModLinearMap l with
    invFun := φ.symm
    left_inv := φ.symm_apply_apply
    right_inv := φ.apply_symm_apply }

theorem addEquivZModLinear_apply (φ : X ≃+ Y) (x : X) : addEquivZModLinear (l := l) φ x = φ x :=
  rfl

end ZModLinear

section Assembly

variable {K Ksep : Type} [Field K] [Field Ksep] [Algebra K Ksep] [IsSepClosure K Ksep]
  {l : ℕ} [Fact l.Prime] {U V : OpenSubgroup Gal(Ksep/K)} (h : V ≤ U)
  [((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).Normal]

attribute [local instance] Subgroup.fintypeQuotientOfFiniteIndex


include h in
theorem toFun_cohomologyConjRep_eq
    (d : letI := (IntermediateField.inclusion (fixedField_le_fixedField h)).toRingHom.toAlgebra
      AdditiveFunction.{0} l (fixedField (V : Subgroup Gal(Ksep/K)) ≃ₐ[fixedField
        (U : Subgroup Gal(Ksep/K))] fixedField (V : Subgroup Gal(Ksep/K))))
    (i : ℕ)
    [Finite (cohomology (Rep.res ((V : Subgroup Gal(Ksep/K)).subgroupOf
        (U : Subgroup Gal(Ksep/K))).subtype (rootsRepZMod (K := K) (Ksep := Ksep) l U)) i)]
    {Y : Type} [AddCommGroup Y] [Module (ZMod l) Y] [Finite Y]
    (ρY : letI := (IntermediateField.inclusion (fixedField_le_fixedField h)).toRingHom.toAlgebra
      Representation (ZMod l) (fixedField (V : Subgroup Gal(Ksep/K)) ≃ₐ[fixedField
        (U : Subgroup Gal(Ksep/K))] fixedField (V : Subgroup Gal(Ksep/K))) Y)
    (φ : cohomology (Rep.res ((V : Subgroup Gal(Ksep/K)).subgroupOf
        (U : Subgroup Gal(Ksep/K))).subtype (rootsRepZMod (K := K) (Ksep := Ksep) l U)) i ≃+ Y)
    (hφ : ∀ (g : (U : Subgroup Gal(Ksep/K))) x,
      φ ((cohomologyConj (rootsRepZMod (K := K) (Ksep := Ksep) l U) ((V : Subgroup Gal(Ksep/K)).subgroupOf
        (U : Subgroup Gal(Ksep/K))) i g).hom x) = ρY (fixedFieldGalHom h g) (φ x)) :
    haveI : CompactSpace ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))) :=
      compactSpace_openSubgroup (openSubgroupOf U V)
    d.toFun _ ((cohomologyConjRep (rootsRepZMod (K := K) (Ksep := Ksep) l U)
        ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))) i).comp
        (quotientFixedFieldGalEquiv h).symm.toMonoidHom) = d.toFun Y ρY := by
  let := (IntermediateField.inclusion (fixedField_le_fixedField h)).toRingHom.toAlgebra
  have : CompactSpace ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))) :=
    compactSpace_openSubgroup (openSubgroupOf U V)
  refine d.toFun_congr _ _ (addEquivZModLinear φ) fun γ x => ?_
  obtain ⟨q, rfl⟩ := (quotientFixedFieldGalEquiv h).surjective γ
  induction q using QuotientGroup.induction_on with
  | H g =>
    rw [addEquivZModLinear_apply, addEquivZModLinear_apply, MonoidHom.comp_apply,
      MulEquiv.coe_toMonoidHom, MulEquiv.symm_apply_apply, cohomologyConjRep_mk, hφ,
      quotientFixedFieldGalEquiv_mk]

end Assembly

section Main

variable {K Ksep : Type} [Field K] [ValuativeRel K] [TopologicalSpace K]
  [IsNonarchimedeanLocalField K] [Field Ksep] [Algebra K Ksep] [IsSepClosure K Ksep]
  [ValuativeRel Ksep] [TopologicalSpace Ksep] [IsValuativeTopology Ksep] [ValuativeExtension K Ksep]
  {l : ℕ} [Fact l.Prime] {U V : OpenSubgroup Gal(Ksep/K)}



theorem finrank_cohomology_alternating_sum_coprime (hl : (l : K) ≠ 0) (h : V ≤ U)
    [((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).Normal]
    (hcop : Nat.Coprime ((V : Subgroup Gal(Ksep/K)).relIndex U) l)
    (hμ : ∀ ζ : Ksep, ζ ^ l = 1 → ζ ∈ fixedField (V : Subgroup Gal(Ksep/K)))
    (M : Rep.{0} (ZMod l) (U : Subgroup Gal(Ksep/K))) [IsDiscreteRep M] [Module.Finite (ZMod l) M]
    (hM : ∀ g : (U : Subgroup Gal(Ksep/K)), (g : Gal(Ksep/K)) ∈ V → ∀ m : M, M.ρ g m = m)
    {n : ℕ} (hn : Nat.card (𝒪[fixedField (U : Subgroup Gal(Ksep/K))] ⧸
      Ideal.span {(l : 𝒪[fixedField (U : Subgroup Gal(Ksep/K))])}) = l ^ n) :
    (Module.finrank (ZMod l) (cohomology M 0) : ℤ) - Module.finrank (ZMod l) (cohomology M 1) +
      Module.finrank (ZMod l) (cohomology M 2) = -(n * Module.finrank (ZMod l) M) := by
  classical
  have hlp : l.Prime := Fact.out
  have : NeZero l := ⟨hlp.ne_zero⟩

  have : CompactSpace (U : Subgroup Gal(Ksep/K)) := compactSpace_openSubgroup U
  have : CompactSpace ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))) :=
    compactSpace_openSubgroup (openSubgroupOf U V)
  have hT : ∀ (g : (openSubgroupOf U V : Subgroup (U : Subgroup Gal(Ksep/K))))
      (t : rootsRepZMod (K := K) (Ksep := Ksep) l U),
      (rootsRepZMod (K := K) (Ksep := Ksep) l U).ρ g t = t :=
    rootsRepZMod_ρ_of_mem hμ
  have hM' : ∀ (g : (openSubgroupOf U V : Subgroup (U : Subgroup Gal(Ksep/K)))) (m : M),
      M.ρ g m = m :=
    fun g m => hM g (Subgroup.mem_subgroupOf.1 g.2) m
  have hTr : Module.finrank (ZMod l) (rootsRepZMod (K := K) (Ksep := Ksep) l U) = 1 :=
    finrank_rootsRepZMod l hl _
  have hrel0 : (V : Subgroup Gal(Ksep/K)).relIndex U ≠ 0 := fun h0 => by
    rw [h0, Nat.coprime_zero_left] at hcop
    exact hlp.one_lt.ne' hcop
  have hP : (((openSubgroupOf U V : Subgroup (U : Subgroup Gal(Ksep/K))).index : ZMod l)) ≠ 0 := by
    change (((V : Subgroup Gal(Ksep/K)).relIndex U : ℕ) : ZMod l) ≠ 0
    rw [Ne, ZMod.natCast_eq_zero_iff]
    exact (Nat.Prime.coprime_iff_not_dvd hlp).1 hcop.symm
  have hkey := finrank_cohomology_eq_finrank_invariants (openSubgroupOf U V)
    (rootsRepZMod (K := K) (Ksep := Ksep) l U) M hT hM' hTr hP

  let := (IntermediateField.inclusion (fixedField_le_fixedField h)).toRingHom.toAlgebra
  have hcardΓ : Nat.card (fixedField (V : Subgroup Gal(Ksep/K)) ≃ₐ[fixedField
      (U : Subgroup Gal(Ksep/K))] fixedField (V : Subgroup Gal(Ksep/K))) =
      (V : Subgroup Gal(Ksep/K)).relIndex U :=
    (Nat.card_congr (quotientFixedFieldGalEquiv h).toEquiv).symm
  have : Finite (fixedField (V : Subgroup Gal(Ksep/K)) ≃ₐ[fixedField (U : Subgroup Gal(Ksep/K))]
      fixedField (V : Subgroup Gal(Ksep/K))) :=
    Nat.finite_of_card_ne_zero (by rw [hcardΓ]; exact hrel0)
  have hΓ : Nat.Coprime (Nat.card (fixedField (V : Subgroup Gal(Ksep/K)) ≃ₐ[fixedField
      (U : Subgroup Gal(Ksep/K))] fixedField (V : Subgroup Gal(Ksep/K)))) l := by
    rw [hcardΓ]; exact hcop
  have : Module.Finite (ZMod l) (rootsRepZMod (K := K) (Ksep := Ksep) l U) :=
    Module.finite_of_finrank_eq_succ hTr
  have : Module.Finite (ZMod l) (homRep (rootsRepZMod (K := K) (Ksep := Ksep) l U) M) :=
    inferInstanceAs (Module.Finite (ZMod l) (rootsRepZMod (K := K) (Ksep := Ksep) l U →ₗ[ZMod l] M))
  let σ := quotientRep (openSubgroupOf U V : Subgroup (U : Subgroup Gal(Ksep/K)))
    (homRep (rootsRepZMod (K := K) (Ksep := Ksep) l U) M) (homRep_ρ_of_mem _ _ _ hT hM')
  let d : AdditiveFunction.{0} l (fixedField (V : Subgroup Gal(Ksep/K)) ≃ₐ[fixedField
      (U : Subgroup Gal(Ksep/K))] fixedField (V : Subgroup Gal(Ksep/K))) :=
    AdditiveFunction.invariantsTensor.{0} l _ hΓ (σ.comp (quotientFixedFieldGalEquiv h).symm.toMonoidHom)

  have hstep : ∀ (i : ℕ) [Finite (cohomology (Rep.res ((V : Subgroup Gal(Ksep/K)).subgroupOf
      (U : Subgroup Gal(Ksep/K))).subtype (rootsRepZMod (K := K) (Ksep := Ksep) l U)) i)],
      (Module.finrank (ZMod l) (cohomology M i) : ℤ) = d.toFun _
        ((cohomologyConjRep (rootsRepZMod (K := K) (Ksep := Ksep) l U)
          ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))) i).comp
          (quotientFixedFieldGalEquiv h).symm.toMonoidHom) := by
    intro i _
    rw [hkey i, AdditiveFunction.invariantsTensor_apply]
    have hc : Representation.tprod ((cohomologyConjRep (rootsRepZMod (K := K) (Ksep := Ksep) l U)
        ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))) i).comp
          (quotientFixedFieldGalEquiv h).symm.toMonoidHom)
        (σ.comp (quotientFixedFieldGalEquiv h).symm.toMonoidHom) =
        ((cohomologyConjRep (rootsRepZMod (K := K) (Ksep := Ksep) l U)
          ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))) i).tprod σ).comp
          (quotientFixedFieldGalEquiv h).symm.toMonoidHom := rfl
    rw [hc, invariants_comp_of_surjective _ _ (quotientFixedFieldGalEquiv h).symm.surjective]

  have hX : ∀ i ≤ 2, Finite (cohomology (Rep.res ((V : Subgroup Gal(Ksep/K)).subgroupOf
      (U : Subgroup Gal(Ksep/K))).subtype (rootsRepZMod (K := K) (Ksep := Ksep) l U)) i) :=
    fun i hi => by
      have := finite_cohomology_roots_subgroupOf (K := K) (Ksep := Ksep) hl h i hi
      exact Finite.of_equiv _ (rootsCohomologyZModEquiv (K := K) (Ksep := Ksep) (U := U) (V := V)
        l i).toEquiv
  have hX0 := hX 0 (by norm_num)
  have hX1 := hX 1 (by norm_num)
  have hX2 := hX 2 (by norm_num)

  let φ0 := (rootsCohomologyZModEquiv (K := K) (Ksep := Ksep) (U := U) (V := V) l 0).symm.trans
    (cohomologyZeroRootsEquiv h l)
  have : Finite (TorsN (Additive (fixedField (V : Subgroup Gal(Ksep/K)))ˣ) l) :=
    Finite.of_equiv _ φ0.toEquiv
  have e0 := toFun_cohomologyConjRep_eq h d 0 _ φ0 (fun g x => by
    obtain ⟨y, rfl⟩ := (rootsCohomologyZModEquiv (K := K) (Ksep := Ksep) (U := U) (V := V)
      l 0).surjective x
    simp only [φ0, AddEquiv.trans_apply, AddEquiv.symm_apply_apply]
    rw [← rootsCohomologyZModEquiv_cohomologyConj, AddEquiv.symm_apply_apply]
    exact cohomologyZeroRootsEquiv_cohomologyConj_gal h l g y)

  let φ1 := (rootsCohomologyZModEquiv (K := K) (Ksep := Ksep) (U := U) (V := V) l 1).symm.trans
    (cohomologyOneRootsEquiv h hl)
  have : Finite (ModN (Additive (fixedField (V : Subgroup Gal(Ksep/K)))ˣ) l) :=
    Finite.of_equiv _ φ1.toEquiv
  have e1 := toFun_cohomologyConjRep_eq h d 1 _ φ1 (fun g x => by
    obtain ⟨y, rfl⟩ := (rootsCohomologyZModEquiv (K := K) (Ksep := Ksep) (U := U) (V := V)
      l 1).surjective x
    simp only [φ1, AddEquiv.trans_apply, AddEquiv.symm_apply_apply]
    rw [← rootsCohomologyZModEquiv_cohomologyConj, AddEquiv.symm_apply_apply]
    exact cohomologyOneRootsEquiv_cohomologyConj_gal h hl g y)

  let φ2 := (rootsCohomologyZModEquiv (K := K) (Ksep := Ksep) (U := U) (V := V) l 2).symm.trans
    ((cohomologyTwoRootsEquiv hl h).trans (AddEquiv.ulift.{0} (α := ZMod l)).symm)
  have e2 := toFun_cohomologyConjRep_eq h d 2
    (Representation.trivial (ZMod l) _ (ULift.{0} (ZMod l))) φ2 (fun g x => by
    obtain ⟨y, rfl⟩ := (rootsCohomologyZModEquiv (K := K) (Ksep := Ksep) (U := U) (V := V)
      l 2).surjective x
    simp only [φ2, AddEquiv.trans_apply, AddEquiv.symm_apply_apply]
    rw [← rootsCohomologyZModEquiv_cohomologyConj, AddEquiv.symm_apply_apply,
      cohomologyTwoRootsEquiv_cohomologyConj]
    rfl)

  have : IsScalarTower K (fixedField (U : Subgroup Gal(Ksep/K)))
      (fixedField (V : Subgroup Gal(Ksep/K))) := IsScalarTower.of_algebraMap_eq' rfl
  have : FiniteDimensional (fixedField (U : Subgroup Gal(Ksep/K)))
      (fixedField (V : Subgroup Gal(Ksep/K))) := Module.Finite.of_restrictScalars_finite K _ _
  have : ValuativeExtension (fixedField (U : Subgroup Gal(Ksep/K)))
      (fixedField (V : Subgroup Gal(Ksep/K))) :=
    GroundTheory.LocalField.IntermediateField.valuativeExtension_inclusion (fixedField_le_fixedField h)
  have : IsGalois (fixedField (U : Subgroup Gal(Ksep/K))) (fixedField (V : Subgroup Gal(Ksep/K))) :=
    IsGalois.of_card_aut_eq_finrank (F := fixedField (U : Subgroup Gal(Ksep/K)))
      (E := fixedField (V : Subgroup Gal(Ksep/K))) (by rw [hcardΓ, relIndex_eq_finrank h])
  have hlE : (l : fixedField (U : Subgroup Gal(Ksep/K))) ≠ 0 := by
    rw [← map_natCast (algebraMap K (fixedField (U : Subgroup Gal(Ksep/K))))]
    exact (map_ne_zero _).mpr hl
  have hg := g_units_eq d hlE hn
  rw [d.g_eq] at hg
  have : Fintype (fixedField (V : Subgroup Gal(Ksep/K)) ≃ₐ[fixedField (U : Subgroup Gal(Ksep/K))]
      fixedField (V : Subgroup Gal(Ksep/K))) := Fintype.ofFinite _
  have hreg : d.toFun (MonoidAlgebra (ZMod l) (fixedField (V : Subgroup Gal(Ksep/K)) ≃ₐ[fixedField
      (U : Subgroup Gal(Ksep/K))] fixedField (V : Subgroup Gal(Ksep/K))))
      (leftRegular (ZMod l) _) = Module.finrank (ZMod l) M := by
    rw [AdditiveFunction.invariantsTensor_apply, finrank_invariants_leftRegular_tprod]
    change ((Module.finrank (ZMod l) (rootsRepZMod (K := K) (Ksep := Ksep) l U →ₗ[ZMod l] M) : ℕ) : ℤ) = _
    rw [Module.finrank_linearMap, hTr, one_mul]
  rw [hstep 0, hstep 1, hstep 2, e0, e1, e2, ← hreg]
  change _ - _ + d.one = _
  linarith



omit [ValuativeRel Ksep] [TopologicalSpace Ksep] [IsValuativeTopology Ksep]
  [ValuativeExtension K Ksep] in
theorem finite_cohomology_coprime (hl : (l : K) ≠ 0) (h : V ≤ U)
    [((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).Normal]
    (hcop : Nat.Coprime ((V : Subgroup Gal(Ksep/K)).relIndex U) l)
    (hμ : ∀ ζ : Ksep, ζ ^ l = 1 → ζ ∈ fixedField (V : Subgroup Gal(Ksep/K)))
    (M : Rep.{0} (ZMod l) (U : Subgroup Gal(Ksep/K))) [IsDiscreteRep M] [Module.Finite (ZMod l) M]
    (hM : ∀ g : (U : Subgroup Gal(Ksep/K)), (g : Gal(Ksep/K)) ∈ V → ∀ m : M, M.ρ g m = m)
    (i : ℕ) (hi : i ≤ 2) : Finite (cohomology M i) := by
  have hlp : l.Prime := Fact.out
  have : CompactSpace (U : Subgroup Gal(Ksep/K)) := compactSpace_openSubgroup U
  have : CompactSpace ((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))) :=
    compactSpace_openSubgroup (openSubgroupOf U V)
  have hT : ∀ (g : (openSubgroupOf U V : Subgroup (U : Subgroup Gal(Ksep/K))))
      (t : rootsRepZMod (K := K) (Ksep := Ksep) l U),
      (rootsRepZMod (K := K) (Ksep := Ksep) l U).ρ g t = t :=
    rootsRepZMod_ρ_of_mem hμ
  have hM' : ∀ (g : (openSubgroupOf U V : Subgroup (U : Subgroup Gal(Ksep/K)))) (m : M),
      M.ρ g m = m :=
    fun g m => hM g (Subgroup.mem_subgroupOf.1 g.2) m
  have hTr : Module.finrank (ZMod l) (rootsRepZMod (K := K) (Ksep := Ksep) l U) = 1 :=
    finrank_rootsRepZMod l hl _
  have hP : (((openSubgroupOf U V : Subgroup (U : Subgroup Gal(Ksep/K))).index : ZMod l)) ≠ 0 := by
    change (((V : Subgroup Gal(Ksep/K)).relIndex U : ℕ) : ZMod l) ≠ 0
    rw [Ne, ZMod.natCast_eq_zero_iff]
    exact (Nat.Prime.coprime_iff_not_dvd hlp).1 hcop.symm
  have : Finite (cohomology (Rep.res ((V : Subgroup Gal(Ksep/K)).subgroupOf
      (U : Subgroup Gal(Ksep/K))).subtype (rootsRepZMod (K := K) (Ksep := Ksep) l U)) i) := by
    have := finite_cohomology_roots_subgroupOf (K := K) (Ksep := Ksep) hl h i hi
    exact Finite.of_equiv _ (rootsCohomologyZModEquiv (K := K) (Ksep := Ksep) (U := U) (V := V)
      l i).toEquiv
  have : Module.Finite (ZMod l) (cohomology (Rep.res ((V : Subgroup Gal(Ksep/K)).subgroupOf
      (U : Subgroup Gal(Ksep/K))).subtype (rootsRepZMod (K := K) (Ksep := Ksep) l U)) i) :=
    Module.Finite.of_finite
  have : Module.Finite (ZMod l) (rootsRepZMod (K := K) (Ksep := Ksep) l U) :=
    Module.finite_of_finrank_eq_succ hTr
  have : Module.Finite (ZMod l) (homRep (rootsRepZMod (K := K) (Ksep := Ksep) l U) M) :=
    inferInstanceAs (Module.Finite (ZMod l) (rootsRepZMod (K := K) (Ksep := Ksep) l U →ₗ[ZMod l] M))
  have : NeZero l := ⟨hlp.ne_zero⟩
  have := Module.finite_of_finite (ZMod l) (M := ((cohomologyConjRep
    (rootsRepZMod (K := K) (Ksep := Ksep) l U) (openSubgroupOf U V : Subgroup _) i).tprod
      (quotientRep (openSubgroupOf U V : Subgroup _) (homRep (rootsRepZMod (K := K) (Ksep := Ksep) l U) M)
        (homRep_ρ_of_mem _ _ _ hT hM'))).invariants)
  exact Finite.of_equiv _ (coprimeTwistEquiv (openSubgroupOf U V)
    (rootsRepZMod (K := K) (Ksep := Ksep) l U) M hT hM' hTr hP i).symm.toEquiv

theorem eulerChar_coprime (hl : (l : K) ≠ 0) (h : V ≤ U)
    [((V : Subgroup Gal(Ksep/K)).subgroupOf (U : Subgroup Gal(Ksep/K))).Normal]
    (hcop : Nat.Coprime ((V : Subgroup Gal(Ksep/K)).relIndex U) l)
    (hμ : ∀ ζ : Ksep, ζ ^ l = 1 → ζ ∈ fixedField (V : Subgroup Gal(Ksep/K)))
    (M : Rep.{0} (ULift.{0} ℤ) (U : Subgroup Gal(Ksep/K))) [IsDiscreteRep M] [Finite M]
    (hMl : ∀ m : M, l • m = 0)
    (hM : ∀ g : (U : Subgroup Gal(Ksep/K)), (g : Gal(Ksep/K)) ∈ V → ∀ m : M, M.ρ g m = m)
    {n : ℕ} (hn : Nat.card (𝒪[fixedField (U : Subgroup Gal(Ksep/K))] ⧸
      Ideal.span {(l : 𝒪[fixedField (U : Subgroup Gal(Ksep/K))])}) = l ^ n) :
    eulerChar M = ((Nat.card M : ℚ) ^ n)⁻¹ := by
  have hlp : l.Prime := Fact.out
  set MZ := zmodRepOfTorsion l M hMl
  have : Finite MZ := ‹Finite M›
  have : Module.Finite (ZMod l) MZ := Module.Finite.of_finite
  have hMZ : ∀ g : (U : Subgroup Gal(Ksep/K)), (g : Gal(Ksep/K)) ∈ V → ∀ m : MZ, MZ.ρ g m = m :=
    hM
  have hsum := finrank_cohomology_alternating_sum_coprime hl h hcop hμ MZ hMZ hn
  have hcard : ∀ i ≤ 2, Nat.card (cohomology M i) = l ^ Module.finrank (ZMod l) (cohomology MZ i) :=
    fun i hi => by
      have := finite_cohomology_coprime hl h hcop hμ MZ hMZ i hi
      rw [Nat.card_congr (cohomologyZModEquiv l M hMl i).toEquiv, natCard_eq_pow_finrank_zmod l]
  have hcardM : Nat.card M = l ^ Module.finrank (ZMod l) MZ := natCard_eq_pow_finrank_zmod l MZ
  have hl0 : (l : ℚ) ≠ 0 := by exact_mod_cast hlp.ne_zero
  rw [eulerChar_eq, hcard 0 (by norm_num), hcard 1 (by norm_num), hcard 2 (by norm_num), hcardM]
  push_cast
  rw [← zpow_natCast, ← zpow_natCast, ← zpow_natCast, ← zpow_natCast (_ ^ _), ← zpow_natCast,
    ← zpow_mul, ← zpow_add₀ hl0, ← zpow_sub₀ hl0, ← zpow_neg]
  congr 1
  linarith


end Main

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Coprime =====
