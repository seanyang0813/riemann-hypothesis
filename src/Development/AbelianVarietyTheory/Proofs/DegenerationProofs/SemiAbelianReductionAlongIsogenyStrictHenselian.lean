module

public import Development.AbelianVarietyTheory.Definitions.Degenerations.OfDerivationFnOn
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsTorusAbelianQuotientPDivisibleSmoothGroup
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsIntegralOfSmoothFieldOfConnectedSpace
public import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.LocallyQuasiFiniteOfQuasiFiniteAt
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsIsClosedImageOfIsClosedSubgroup
public import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.PowObjGeometricallyConnected
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsIdPowEqOneOfIsFiniteOfFlat
public import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.ExistsMonHomFactorOfFlatSurjective
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FlatAndSurjectiveOfSurjectivePoints
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.NonemptyTorusExtensionOfSurjectivePoints
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusExtensionPointsDivisible
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsGrpObjOfFlatClosed
public import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing
public import Development.AbelianVarietyTheory.Statements.SemistableTorsion.SemistableFin
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsCompletionPointClosedPointMemOfSmooth
public import Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsNeutralGroupModel
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsUniqueHomExtensionSmoothConnSemiAbelianDvr
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SmoothOfRelativeDimensionOfGeneric
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.AlgClosed.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.CategoryTheory.Limits.Shapes.Connected
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
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
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
import Mathlib.AlgebraicGeometry.Morphisms.QuasiFinite
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsLiftOfSchemeTheoreticallyDominant
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsFiniteKerOfSurjPointsSameDimension, Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusExtensionOfSurjectiveOfDimEq, Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SemiAbelianReductionAlongIsogenyStrictHenselian

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsFiniteKerOfSurjPointsSameDimension =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsFiniteKerOfSurjPointsSameDimension", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.OfDerivationFnOn\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsIntegralOfSmoothFieldOfConnectedSpace\npublic import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.LocallyQuasiFiniteOfQuasiFiniteAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.AlgClosed.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Shapes.Connected\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.SS

namespace GlobalTheory.SS

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry in
open scoped CategoryTheory.Obj in
theorem _root_.GlobalTheory.SS.isFinite_ker_of_surjective_points_of_dim_eq : ∀ (k : Type) [Field k] [IsAlgClosed k]
    (G G' : Over (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k)) [GrpObj G] [GrpObj G'] (g : ℕ), _root_.GlobalTheory.SS.SmConn G →
    _root_.GlobalTheory.SS.SmConn G' → SmoothOfRelativeDimension g G.hom →
    SmoothOfRelativeDimension g G'.hom → ∀ i : G ⟶ G', IsMonHom i →
    (∀ y : (𝟙_ (Over (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k)) ⟶ G'), ∃ x : (𝟙_ (Over (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k)) ⟶ G), x ≫ i = y) →
    IsFinite (pullback.snd i (η[G'] : 𝟙_ _ ⟶ G')).left := by
  intro k _ _ G G' _ _ g hG hG' hgG hgG' i _ hpts
  exact isFinite_pullback_unit_of_surjective_on_points k G G' g hG hG' hgG hgG' i hpts

end GlobalTheory.SS
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsFiniteKerOfSurjPointsSameDimension =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusExtensionOfSurjectiveOfDimEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusExtensionOfSurjectiveOfDimEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.OfDerivationFnOn\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsIsClosedImageOfIsClosedSubgroup\npublic import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.PowObjGeometricallyConnected\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsIdPowEqOneOfIsFiniteOfFlat\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsIntegralOfSmoothFieldOfConnectedSpace\npublic import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.ExistsMonHomFactorOfFlatSurjective\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FlatAndSurjectiveOfSurjectivePoints\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsFiniteKerOfSurjPointsSameDimension\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.NonemptyTorusExtensionOfSurjectivePoints\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusExtensionPointsDivisible\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsGrpObjOfFlatClosed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.QuasiFinite\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.SS

namespace GlobalTheory

namespace IsogenyOntoExtension

theorem exists_pow_eq_one_of_finite_kernel {k : Type} [Field k] {G B : Over (Sp k)} [GrpObj G]
    [GrpObj B] [IsCommMonObj G] (f : G ⟶ B) [IsMonHom f]
    (hf : IsFinite (pullback.snd f (η[B] : 𝟙_ _ ⟶ B)).left) :
    ∃ n : ℕ, 1 ≤ n ∧ ∀ (T : Over (Sp k)) (x : T ⟶ G), x ≫ f = 1 → x ^ n = 1 := by
  have hp : IsPullback (pullback.fst f η[B]) (toUnit _) f η[B] := by
    have := IsPullback.of_hasPullback f η[B]
    rwa [toUnit_unique (pullback.snd f η[B]) (toUnit _)] at this
  rw [toUnit_unique (pullback.snd f η[B]) (toUnit _)] at hf
  generalize pullback.fst f η[B] = i at hp
  generalize pullback f η[B] = Z at i hp hf
  have hm : Mono i := ⟨fun a b h => hp.hom_ext h (toUnit_unique _ _)⟩
  have hi : i ≫ f = 1 := hp.w
  obtain ⟨gZ, hZ⟩ := exists_grpObj_of_mono i (hp.lift η[G] (toUnit _) (by simp))
    (hp.lift ((fst Z Z ≫ i) * (snd Z Z ≫ i)) (toUnit _) (by
      rw [MonObj.mul_comp, Category.assoc, Category.assoc, hi, MonObj.comp_one, MonObj.comp_one,
        _root_.mul_one, Hom.one_def]))
    (hp.lift i⁻¹ (toUnit _) (by rw [GrpObj.inv_comp, hi, inv_one, Hom.one_def]))
    (hp.lift_fst _ _ _) (by rw [hp.lift_fst, Hom.mul_def]; congr 1)
    (by rw [hp.lift_fst, Hom.inv_def])
  have hZf : IsFinite Z.hom := by simpa using hf
  have := isCommMonObj_of_mono i
  obtain ⟨N, hN, hZN⟩ := FiniteFlatKilled.main k Z hZf inferInstance
  refine ⟨N, hN, fun T x hx => ?_⟩
  have h1 : i ^ N = 1 := by
    rw [← Category.id_comp i, ← MonObj.pow_comp, hZN, MonObj.one_comp]
  rw [← hp.lift_fst x (toUnit _) hx, ← MonObj.comp_pow, h1, MonObj.comp_one]


open RationalPoint in
theorem finite_kernel_points {k : Type} [Field k] [IsAlgClosed k] {G B : Over (Sp k)}
    [GrpObj B] (f : G ⟶ B) (hf : IsFinite (pullback.snd f (η[B] : 𝟙_ _ ⟶ B)).left) :
    {x : 𝟙_ (Over (Sp k)) ⟶ G | x ≫ f = 1}.Finite := by
  have hp : IsPullback (pullback.fst f η[B]) (toUnit _) f η[B] := by
    have := IsPullback.of_hasPullback f η[B]
    rwa [toUnit_unique (pullback.snd f η[B]) (toUnit _)] at this
  rw [toUnit_unique (pullback.snd f η[B]) (toUnit _)] at hf
  generalize pullback.fst f η[B] = i at hp
  generalize pullback f η[B] = Z at i hp hf
  have hZf : IsFinite Z.hom := by simpa using hf
  have h1 : Finite Z.left := by
    have := Z.hom.finite_preimage_singleton (IsLocalRing.closedPoint k)
    rw [← Set.finite_univ_iff]
    exact this.subset fun z _ => Subsingleton.elim (α := PrimeSpectrum k) _ _
  have h2 : Finite (𝟙_ (Over (Sp k)) ⟶ Z) := Finite.of_injective _ pt_injective
  refine (Set.finite_range fun z : 𝟙_ (Over (Sp k)) ⟶ Z => z ≫ i).subset fun x hx => ?_
  exact ⟨hp.lift x (toUnit _) hx, hp.lift_fst _ _ _⟩


open RationalPoint in
theorem eq_top_of_finite_cover {k : Type} [Field k] [IsAlgClosed k] {G : Over (Sp k)} [GrpObj G]
    [LocallyOfFiniteType G.hom] [IrreducibleSpace G.left]
    (H : Subgroup (𝟙_ (Over (Sp k)) ⟶ G)) {Z : Set G.left} (hZ : IsClosed Z)
    (hH : ∀ x, x ∈ H ↔ pt x ∈ Z) {F : Set (𝟙_ (Over (Sp k)) ⟶ G)} (hF : F.Finite)
    (hc : ∀ y, ∃ a ∈ F, a * y ∈ H) : H = ⊤ := by
  classical
  let t : (𝟙_ (Over (Sp k)) ⟶ G) → (G ⟶ G) := fun a => (toUnit G ≫ a) * 𝟙 G
  have ht : ∀ a y : 𝟙_ (Over (Sp k)) ⟶ G, y ≫ t a = a * y := fun a y => by
    simp only [t]
    rw [MonObj.comp_mul, ← Category.assoc, toUnit_unique (y ≫ toUnit G) (𝟙 _), Category.id_comp,
      Category.comp_id]
  let C : (𝟙_ (Over (Sp k)) ⟶ G) → Set G.left := fun a => (t a).left ⁻¹' Z
  have hC : ∀ a, IsClosed (C a) := fun a => hZ.preimage (t a).left.continuous
  have hCm : ∀ a y, pt y ∈ C a ↔ a * y ∈ H := fun a y => by
    rw [hH, ← ht, pt_comp]; rfl
  have hU : IsClosed (⋃ a ∈ F, C a) := hF.isClosed_biUnion fun a _ => hC a
  have hcov : (Set.univ : Set G.left) ⊆ ⋃ a ∈ F, C a := by
    by_contra hne
    have hne' : (⋃ a ∈ F, C a)ᶜ.Nonempty := by
      rw [Set.nonempty_compl]
      exact fun h => hne (h ▸ subset_rfl)
    have : JacobsonSpace G.left := LocallyOfFiniteType.jacobsonSpace G.hom
    obtain ⟨c, hcZ, hc'⟩ := nonempty_inter_closedPoints hne' hU.isOpen_compl.isLocallyClosed
    obtain ⟨x, hx⟩ := exists_pt_mem (X := G) (Z := {c}) hc' ⟨c, rfl⟩
    obtain ⟨a, ha, hax⟩ := hc x
    refine hcZ ?_
    rw [← show pt x = c from hx]
    exact Set.mem_biUnion ha ((hCm a x).2 hax)
  obtain ⟨D, hD, hDu⟩ := (isIrreducible_iff_sUnion_isClosed.1
    (IrreducibleSpace.isIrreducible_univ G.left)) (hF.image C).toFinset (by
      intro z hz
      obtain ⟨a, -, rfl⟩ := (Set.Finite.mem_toFinset _).1 hz
      exact hC a) (by rwa [Set.Finite.coe_toFinset, Set.sUnion_image])
  obtain ⟨a, -, rfl⟩ := (Set.Finite.mem_toFinset _).1 hD
  rw [eq_top_iff]
  intro y _
  have := (hCm a (a⁻¹ * y)).1 (hDu trivial)
  rwa [mul_inv_cancel_left] at this

end IsogenyOntoExtension


open IsogenyOntoExtension RationalPoint in
theorem torusExtension_of_surjective_of_dim_eq : ∀ (k : Type) [Field k] [IsAlgClosed k] (G G' : Over (Sp k)) [GrpObj G] [GrpObj G'] (g : ℕ), SmConn G → SmConn G' → SmoothOfRelativeDimension g G.hom → SmoothOfRelativeDimension g G'.hom → Nonempty (TorusExtension G') → ∀ i : G ⟶ G', IsMonHom i → (∀ y : (𝟙_ (Over (Sp k)) ⟶ G'), ∃ x : (𝟙_ (Over (Sp k)) ⟶ G), x ≫ i = y) → Nonempty (TorusExtension G) := by
  intro k _ _ G G' _ _ g hG hG' hg hg' hT i hi hs
  have hker := _root_.GlobalTheory.SS.isFinite_ker_of_surjective_points_of_dim_eq k G G' g hG hG' hg hg' i hi hs
  obtain ⟨hfl, hsu⟩ := _root_.GlobalTheory.SS.flat_and_surjective_of_surjective_points k G G' hG hG' i hi hs
  obtain ⟨c, s, p, q, n⟩ := id hG
  obtain ⟨c', s', p', q', n'⟩ := id hG'
  obtain ⟨N, hN, hkill⟩ := exists_pow_eq_one_of_finite_kernel i hker
  have hqc : QuasiCompact i.left := by
    have : QuasiCompact (i.left ≫ G'.hom) := by rw [Over.w]; infer_instance
    exact QuasiCompact.of_comp i.left G'.hom
  have hmul : IsMonHom (𝟙 G ^ N) := by
    clear hkill hN
    induction N with
    | zero => rw [pow_zero]; exact Serre.isMonHom_one
    | succ m ih => rw [pow_succ]; exact Serre.isMonHom_mul _ _
  obtain ⟨⟨r, hr, hir⟩, -⟩ := exists_monHom_factor_of_flat_surjective _ G G' G i (𝟙 G ^ N) hi hmul
    hfl hsu hqc fun T x hx => by rw [MonObj.comp_pow, Category.comp_id, hkill T x hx]
  refine _root_.GlobalTheory.SS.nonempty_torusExtension_of_surjective_points k G' G hG hT r hr ?_
  obtain ⟨Z, hZ, hZm⟩ := exists_isClosed_image_of_isClosed_subgroup k G' G r hr inferInstance q'
    inferInstance q ⊤ Set.univ isClosed_univ (by simp)
  let φ : (𝟙_ (Over (Sp k)) ⟶ G') →* (𝟙_ (Over (Sp k)) ⟶ G) :=
    MonoidHom.mk' (fun x => x ≫ r) fun x y => MonObj.mul_comp x y r
  have := grpObj_geometricallyIntegral_of_smooth _ G
  have : IsIntegral G.left := GeometricallyIntegral.isIntegral_of_subsingleton G.hom
  have htop : φ.range = ⊤ := by
    refine eq_top_of_finite_cover φ.range hZ (fun x => ?_) (finite_kernel_points i hker) fun y => ?_
    · rw [← range_left_subset_iff, ← hZm]
      exact ⟨fun ⟨a, ha⟩ => ⟨a, trivial, ha⟩, fun ⟨a, _, ha⟩ => ⟨a, ha⟩⟩
    · obtain ⟨z, hz⟩ := _root_.GlobalTheory.SS.torusExtension_points_divisible k G' hT N hN (y ≫ i)
      obtain ⟨x, rfl⟩ := hs z
      refine ⟨x ^ N * y⁻¹, ?_, x ≫ i, ?_⟩
      · show _ ≫ i = 1
        rw [MonObj.mul_comp, GrpObj.inv_comp, MonObj.pow_comp, hz, mul_inv_cancel]
      · show (x ≫ i) ≫ r = _
        rw [Category.assoc, hir, MonObj.comp_pow, Category.comp_id, inv_mul_cancel_right]
  intro y
  exact (htop ▸ Subgroup.mem_top y : y ∈ φ.range)

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusExtensionOfSurjectiveOfDimEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SemiAbelianReductionAlongIsogenyStrictHenselian =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SemiAbelianReductionAlongIsogenyStrictHenselian", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.OfDerivationFnOn\npublic import Development.AbelianVarietyTheory.Statements.SemistableTorsion.SemistableFin\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsCompletionPointClosedPointMemOfSmooth\npublic import Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsNeutralGroupModel\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsUniqueHomExtensionSmoothConnSemiAbelianDvr\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusExtensionOfSurjectiveOfDimEq\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SmoothOfRelativeDimensionOfGeneric\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorusExtensionPointsDivisible\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsLiftOfSchemeTheoreticallyDominant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.SS

namespace GlobalTheory.IsogRed

variable {S T : Scheme.{0}} (f : T ⟶ S)

noncomputable def sec {G : Over S} (s : 𝟙_ (Over S) ⟶ G) : 𝟙_ (Over T) ⟶ (Over.pullback f).obj G :=
  Functor.LaxMonoidal.ε (Over.pullback f) ≫ (Over.pullback f).map s

theorem sec_comp {G G' : Over S} (s : 𝟙_ (Over S) ⟶ G) (I : G ⟶ G') :
    sec f (s ≫ I) = sec f s ≫ (Over.pullback f).map I := by
  simp only [sec, Functor.map_comp, Category.assoc]

theorem sec_pow {G : Over S} [GrpObj G] (s : 𝟙_ (Over S) ⟶ G) (n : ℕ) : sec f (s ^ n) = sec f s ^ n := by
  simp only [sec, ← MonObj.comp_pow]
  congr 1
  induction n with
  | zero => simp
  | succ n ih => rw [pow_succ, pow_succ, Functor.map_mul, ih]

theorem sec_left {G : Over S} (s : 𝟙_ (Over S) ⟶ G) :
    (sec f s).left ≫ pullback.fst G.hom f = f ≫ s.left := by
  have hw := Over.w (Functor.LaxMonoidal.ε (Over.pullback f))
  have hc := pullback.condition (f := (𝟙_ (Over S)).hom) (g := f)
  simp only [sec, Over.comp_left, Category.assoc, Over.pullback_map_left, pullback.lift_fst]
  simp at hw hc ⊢

theorem sec_eq {G : Over S} (s : 𝟙_ (Over S) ⟶ G) (x : 𝟙_ (Over T) ⟶ (Over.pullback f).obj G)
    (h : f ≫ s.left = x.left ≫ pullback.fst G.hom f) : sec f s = x := by
  ext1
  apply pullback.hom_ext
  · rw [sec_left, h]
  · have h1 := Over.w (sec f s)
    have h2 := Over.w x
    simp only [Over.pullback_obj_hom] at h1 h2
    rw [h1, h2]

theorem sec_injective [IsSchemeTheoreticallyDominant f] {G : Over S} [IsSeparated G.hom]
    {s t : 𝟙_ (Over S) ⟶ G} (h : sec f s = sec f t) : s = t := by
  refine GlobalTheory.over_ext_of_schemeTheoreticallyDominant (Y := 𝟙_ (Over S)) f ?_
  rw [← sec_left, ← sec_left, h]

theorem smConn_baseChange (G : Over S) [GrpObj G] (h : SmConn G) : SmConn ((Over.pullback f).obj G) := by
  obtain ⟨h1, h2, h3, h4, h5⟩ := h
  refine ⟨inferInstance, ?_, ?_, ?_, ?_⟩ <;> (try simp only [Over.pullback_obj_hom]) <;> infer_instance

theorem sec_residue_surjective {R : Type} [CommRing R] [HenselianLocalRing R] (G : Over (Sp R)) [Smooth G.hom]
    (x : 𝟙_ _ ⟶ spFibre G) : ∃ s : 𝟙_ _ ⟶ G, sec (spMap (IsLocalRing.residue R)) s = x := by
  have hx : (x.left ≫ pullback.fst G.hom (spMap (IsLocalRing.residue R))) ≫ G.hom =
      Spec.map (CommRingCat.ofHom (IsLocalRing.residue R)) ≫ 𝟙 _ := by
    have hw := Over.w x
    simp only [Over.pullback_obj_hom] at hw
    rw [Category.assoc, pullback.condition, ← Category.assoc, hw]
    simp
  obtain ⟨⟨y, hy⟩, hyx⟩ := GlobalTheory.reducePoint_residue_surjective G.hom R (𝟙 _) ⟨_, hx⟩
  refine ⟨Over.homMk y (by simpa using hy), sec_eq _ _ _ ?_⟩
  simpa [GlobalTheory.reducePoint] using congrArg Subtype.val hyx

theorem relDim_spFibre {R K : Type} [CommRing R] [IsDomain R] [IsLocalRing R] [Field K] [Algebra R K]
    [IsFractionRing R K] (G : Over (Sp R)) [GrpObj G] (hG : SmConn G) (g : ℕ)
    (h : SmoothOfRelativeDimension g ((Over.pullback (spMap (algebraMap R K))).obj G).hom) :
    SmoothOfRelativeDimension g (spFibre G).hom := by
  obtain ⟨h1, h2, h3, h4, h5⟩ := hG
  have : MorphismProperty.IsStableUnderBaseChange (@SmoothOfRelativeDimension.{0} g) :=
    smoothOfRelativeDimension_isStableUnderBaseChange g
  have hG0 : SmoothOfRelativeDimension g G.hom := by
    apply GlobalTheory.GenericDim.smoothOfRelativeDimension_of_generic R G g
    unfold ReciprocityTheory.ChartRestriction.G.Out.jK
    obtain ⟨ψ, hψ⟩ : ∃ ψ : K →+* FractionRing R, ψ.comp (algebraMap R K) = algebraMap R (FractionRing R) :=
      ⟨_, (IsLocalization.algEquiv (nonZeroDivisors R) K (FractionRing R)).toAlgHom.comp_algebraMap⟩
    have hK : SmoothOfRelativeDimension g
        (pullback.snd G.hom (Spec.map (CommRingCat.ofHom (algebraMap R K)))) := h
    rw [← hψ, CommRingCat.ofHom_comp, Spec.map_comp]
    have key : pullback.snd G.hom (Spec.map (CommRingCat.ofHom ψ) ≫ Spec.map (CommRingCat.ofHom (algebraMap R K))) =
        (pullbackLeftPullbackSndIso G.hom _ _).inv ≫
          pullback.snd (pullback.snd G.hom (Spec.map (CommRingCat.ofHom (algebraMap R K))))
            (Spec.map (CommRingCat.ofHom ψ)) := by
      rw [Iso.eq_inv_comp, pullbackLeftPullbackSndIso_hom_snd]
    rw [key]
    exact (MorphismProperty.cancel_left_of_respectsIso (@SmoothOfRelativeDimension.{0} g)
      (hP := @MorphismProperty.IsStableUnderBaseChange.respectsIso _ _ _
        (smoothOfRelativeDimension_isStableUnderBaseChange g)) _ _).mpr
      (MorphismProperty.IsStableUnderBaseChange.of_isPullback
        (self := smoothOfRelativeDimension_isStableUnderBaseChange g) (IsPullback.of_hasPullback _ _) hK)
  exact MorphismProperty.IsStableUnderBaseChange.of_isPullback
    (self := smoothOfRelativeDimension_isStableUnderBaseChange g) (IsPullback.of_hasPullback _ _) hG0

theorem pow_comp_isogeny {Z A B : Over T} [GrpObj A] [GrpObj B] (i : A ⟶ B) (r : B ⟶ A) [IsMonHom i] {m : ℕ}
    (hri : r ≫ i = 𝟙 _ ^ m) (c : ℕ) (x : Z ⟶ B) : ((x ≫ r) ^ c) ≫ i = x ^ (m * c) := by
  rw [MonObj.pow_comp, Category.assoc, hri, MonObj.comp_pow, Category.comp_id, pow_mul]

theorem sec_eq_comp {G : Over S} {A : Over T} (e : (Over.pullback f).obj G ≅ A) (s : 𝟙_ (Over S) ⟶ G)
    (a : 𝟙_ (Over T) ⟶ A) (h : f ≫ s.left = a.left ≫ e.inv.left ≫ pullback.fst G.hom f) : sec f s = a ≫ e.inv := by
  apply sec_eq
  rw [h, Over.comp_left, Category.assoc]

theorem exists_section {G G' : Over S} [GrpObj G] [GrpObj G'] [IsSchemeTheoreticallyDominant f] [IsSeparated G'.hom]
    {A : Over T} [GrpObj A] (e : (Over.pullback f).obj G ≅ A) (i : A ⟶ (Over.pullback f).obj G')
    (r : (Over.pullback f).obj G' ⟶ A) [IsMonHom i] {m c : ℕ} (hri : r ≫ i = 𝟙 _ ^ m) (I : G ⟶ G')
    (hI : (Over.pullback f).map I = e.hom ≫ i)
    (hext : ∀ a : 𝟙_ _ ⟶ A, ∃ s : 𝟙_ _ ⟶ G, f ≫ s.left = (a ^ c).left ≫ e.inv.left ≫ pullback.fst G.hom f)
    (z : 𝟙_ _ ⟶ G') : ∃ s : 𝟙_ _ ⟶ G, s ≫ I = z ^ (m * c) := by
  obtain ⟨s, hs⟩ := hext (sec f z ≫ r)
  refine ⟨s, sec_injective f ?_⟩
  rw [sec_comp, sec_eq_comp f e s _ hs, hI, sec_pow, Category.assoc, e.inv_hom_id_assoc,
    pow_comp_isogeny i r hri]

theorem semiAbelian_reduction_of_isogeny : ∀ (R K : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [Field K] [Algebra R K], SH R K → ∀ (A : Over (Sp K)) [GrpObj A] (G' : Over (Sp R)) [GrpObj G'] (g m : ℕ), IsAbelianScheme A → GlobalTheory.AbLaw.IsProjBy A.hom → IsSemiAbelian G' → SmoothOfRelativeDimension g A.hom → SmoothOfRelativeDimension g ((Over.pullback (spMap (algebraMap R K))).obj G').hom → ∀ (i : A ⟶ (Over.pullback (spMap (algebraMap R K))).obj G') (r : (Over.pullback (spMap (algebraMap R K))).obj G' ⟶ A), IsMonHom i → IsMonHom r → 1 ≤ m → r ≫ i = 𝟙 _ ^ m → ∃ (G : Over (Sp R)) (_ : GrpObj G) (e : (Over.pullback (spMap (algebraMap R K))).obj G ≅ A), SmConn G ∧ IsMonHom e.hom ∧ Nonempty (TorusExtension (spFibre G)) := by
  intro R K _ _ _ _ _ hSH A _ G' _ g m hA hP hG' hgA hgG' i r hi hr hm hri
  obtain ⟨a1, a2, a3, a4, a5, a6⟩ := id hG'
  have hSG' : SmConn G' := ⟨a1, a2, a3, a4, a5⟩
  have : IsCommMonObj A := hA.1
  obtain ⟨M, hMg, hM, he, c, hc, hext⟩ := _root_.GlobalTheory.SS.exists_neutral_group_model R K hSH A hA hP
  obtain ⟨hdvr, hhens, hac, hfr⟩ := hSH
  refine ⟨M.Y, hMg, M.e, hM, he, ?_⟩
  obtain ⟨F, ⟨hF, hFe⟩, -⟩ := _root_.GlobalTheory.existsUnique_hom_extension_smConn_semiAbelian_dvr R K M.Y G' hM hG' (M.e.hom ≫ i) inferInstance
  have hgM : SmoothOfRelativeDimension g ((Over.pullback (spMap (algebraMap R K))).obj M.Y).hom := by
    have : MorphismProperty.IsStableUnderBaseChange (@SmoothOfRelativeDimension.{0} g) :=
      smoothOfRelativeDimension_isStableUnderBaseChange g
    rw [← Over.w M.e.hom]
    exact (MorphismProperty.cancel_left_of_respectsIso (@SmoothOfRelativeDimension.{0} g)
      (hP := @MorphismProperty.IsStableUnderBaseChange.respectsIso _ _ _
        (smoothOfRelativeDimension_isStableUnderBaseChange g)) ((Over.forget _).mapIso M.e).hom A.hom).mpr hgA
  refine _root_.GlobalTheory.torusExtension_of_surjective_of_dim_eq (IsLocalRing.ResidueField R) (spFibre M.Y) (spFibre G') g
    (smConn_baseChange _ _ hM) (smConn_baseChange _ _ hSG')
    (relDim_spFibre M.Y hM g hgM) (relDim_spFibre G' hSG' g hgG')
    (a6 _ _) ((Over.pullback (spMap (IsLocalRing.residue R))).map F) inferInstance ?_
  intro y
  obtain ⟨w, hw⟩ := _root_.GlobalTheory.SS.torusExtension_points_divisible (IsLocalRing.ResidueField R) (spFibre G') (a6 _ _) (m * c)
    (by simpa using Nat.mul_le_mul hm hc) y
  obtain ⟨z, hz⟩ := sec_residue_surjective G' w
  have : IsSchemeTheoreticallyDominant (spMap (algebraMap R K)) :=
    GlobalTheory.schemeTheoreticallyDominant_fractionField R K
  obtain ⟨s, hs⟩ := exists_section (spMap (algebraMap R K)) M.e i r hri F hFe (fun a => hext a) z
  refine ⟨sec (spMap (IsLocalRing.residue R)) s, ?_⟩
  rw [← sec_comp, hs, sec_pow, hz, hw]

end GlobalTheory.IsogRed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SemiAbelianReductionAlongIsogenyStrictHenselian =====
