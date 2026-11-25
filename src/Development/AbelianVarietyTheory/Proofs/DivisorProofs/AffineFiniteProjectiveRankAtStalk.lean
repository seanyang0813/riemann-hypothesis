module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ConstGen
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.SplitTori.SplitTorusAff
public import Mathlib.AlgebraicGeometry.Morphisms.Etale
public import Mathlib.AlgebraicGeometry.Morphisms.FlatRank
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThetaVV
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsIsoIffBijectiveOverAlgClosed
public import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.IsDomainAndIsIntegrallyClosedLocalizationOfIsInv
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.MulAFiniteFlatSurjectiveEtale
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.FormallyUnramifiedOfTangentMapInjective
public import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.NonzeroLocus
import Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.AlgebraicTopology.FundamentalGroupoid.SimplyConnected
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.BlockTheory.AbelianSchemeLaw.MultiplicationEtaleTorsion, Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.NatCastNeZeroOfIsUnit, Development.AbelianVarietyTheory.Proofs.DivisorProofs.AffineFiniteProjectiveRankAtStalk

-- ===== clump member: Development.AbelianVarietyTheory.BlockTheory.AbelianSchemeLaw.MultiplicationEtaleTorsion =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.BlockTheory.AbelianSchemeLaw.MultiplicationEtaleTorsion", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ConstGen\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.SplitTori.SplitTorusAff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.NonzeroLocus\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj
  AlgebraicGeometry

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationEtaleTorsion

open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out

variable {S : Scheme.{0}}

theorem comp_mulN (A : Over S) [GrpObj A] {T : Over S} (x : T ⟶ A) (n : ℕ) :
    x ≫ mulN A n = x ^ n := by
  induction n with
  | zero => simp [mulN, Hom.one_def]
  | succ n ih => rw [pow_succ, ← ih]; simp [mulN, Hom.mul_def, comp_lift_assoc]

end GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationEtaleTorsion
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.BlockTheory.AbelianSchemeLaw.MultiplicationEtaleTorsion =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.NatCastNeZeroOfIsUnit =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.NatCastNeZeroOfIsUnit", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import Mathlib.AlgebraicGeometry.Morphisms.FlatRank\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThetaVV\npublic import Development.AbelianVarietyTheory.BlockTheory.AbelianSchemeLaw.MultiplicationEtaleTorsion\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsIsoIffBijectiveOverAlgClosed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj
  AlgebraicGeometry

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.MulLawsCompare

open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationEtaleTorsion


variable {S : Scheme.{0}}

theorem mulN_eq_mulA (A : Over S) [GrpObj A] (n : ℕ) : mulN A n = mulA A n := by
  rw [mulA, ← comp_mulN, Category.id_comp]

theorem finrank_mulN_eq_card (A : Over S) [GrpObj A] [IsCommMonObj A] (n : ℕ)
    [IsFinite (mulN A n).left] [Etale (mulN A n).left] [Surjective (mulN A n).left]
    {k : Type} [Field k] [IsAlgClosed k] (t : Spec (CommRingCat.of k) ⟶ A.left)
    (z : Spec (CommRingCat.of k)) :
    (mulN A n).left.finrank (t z) =
      Nat.card {y : Over.mk (t ≫ A.hom) ⟶ A // y ^ n = 1} := by
  obtain ⟨-, hc⟩ := GlobalTheory.FinEt.card_points_eq_finrank (mulN A n).left t z
  have h1 : 1 ≤ (mulN A n).left.finrank (t z) :=
    (Scheme.Hom.one_le_finrank_iff_surjective (mulN A n).left).2 inferInstance _
  rw [← hc] at h1 ⊢
  let t' : Over.mk (t ≫ A.hom) ⟶ A := Over.homMk t rfl
  let E : {x : Spec (CommRingCat.of k) ⟶ A.left // x ≫ (mulN A n).left = t} ≃
      {y : Over.mk (t ≫ A.hom) ⟶ A // y ^ n = t'} :=
    { toFun := fun x => ⟨Over.homMk x.1 (by
          have := x.2 =≫ A.hom
          rw [Category.assoc, Over.w] at this
          exact this), by
        rw [← comp_mulN]
        ext
        exact x.2⟩
      invFun := fun y => ⟨y.1.left, by
        have := y.2
        rw [← comp_mulN] at this
        exact congrArg (fun f => f.left) this⟩
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl }
  obtain ⟨x₀⟩ := (Nat.card_pos_iff.1 h1).1
  obtain ⟨y₀, hy₀⟩ := E x₀
  rw [Nat.card_congr E]
  refine Nat.card_congr ((Equiv.mulRight y₀⁻¹).subtypeEquiv fun y => ?_)
  rw [Equiv.coe_mulRight, mul_pow, inv_pow, hy₀, mul_inv_eq_one]

end GlobalTheory.MulLawsCompare
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.NatCastNeZeroOfIsUnit =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AffineFiniteProjectiveRankAtStalk =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AffineFiniteProjectiveRankAtStalk", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThetaVV\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import Mathlib.AlgebraicGeometry.Morphisms.FlatRank\npublic import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.IsDomainAndIsIntegrallyClosedLocalizationOfIsInv\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.MulAFiniteFlatSurjectiveEtale\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.NatCastNeZeroOfIsUnit\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.FormallyUnramifiedOfTangentMapInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.AlgebraicTopology.FundamentalGroupoid.SimplyConnected\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi
attribute [local instance] Over.cartesianMonoidalCategory
open scoped CategoryTheory.Obj

noncomputable section

namespace GlobalTheory.AbelianMulFin

theorem affine_finite_projective_rankAtStalk {X Y : Scheme.{0}} (f : X ⟶ Y) [IsFinite f] [Flat f]
    [LocallyOfFinitePresentation f] (r : ℕ) (hr : ∀ y, f.finrank y = r) (V : Y.Opens)
    (hV : IsAffineOpen V) :
    letI := (f.app V).hom.toAlgebra
    Module.Finite Γ(Y, V) Γ(X, f ⁻¹ᵁ V) ∧ Module.Flat Γ(Y, V) Γ(X, f ⁻¹ᵁ V) ∧
      Module.Projective Γ(Y, V) Γ(X, f ⁻¹ᵁ V) ∧
      ∀ p : PrimeSpectrum Γ(Y, V), Module.rankAtStalk Γ(X, f ⁻¹ᵁ V) p = r := by
  letI := (f.app V).hom.toAlgebra
  have hU : IsAffineOpen (f ⁻¹ᵁ V) := hV.preimage f
  have h1 : Module.Finite Γ(Y, V) Γ(X, f ⁻¹ᵁ V) := f.finite_app V hV
  have h2 : Module.Flat Γ(Y, V) Γ(X, f ⁻¹ᵁ V) := by
    have := f.flat_appLE hV hU le_rfl
    rw [← Scheme.Hom.app_eq_appLE] at this
    exact this
  have h3 : Algebra.FinitePresentation Γ(Y, V) Γ(X, f ⁻¹ᵁ V) := by
    have := f.finitePresentation_appLE hV hU le_rfl
    rw [← Scheme.Hom.app_eq_appLE] at this
    exact this
  have h4 := Module.FinitePresentation.of_finite_of_finitePresentation Γ(Y, V) Γ(X, f ⁻¹ᵁ V)
  refine ⟨h1, h2, Module.Flat.projective_of_finitePresentation, fun p => ?_⟩
  have e := Scheme.Hom.finrank_of_isPullback _ _ _ _ (GlobalTheory.isPullback_fromSpec_app f hV hU) p
  rw [hr] at e
  exact (Scheme.Hom.finrank_SpecMap_algebraMap Γ(Y, V) Γ(X, f ⁻¹ᵁ V) p).symm.trans e

theorem isUnit_natCast_Sp {K : Type} [Field K] {n : ℕ} (hn : (n : K) ≠ 0) :
    IsUnit (n : Γ(Spec (CommRingCat.of K), ⊤)) := by
  have := (Ne.isUnit hn).map (Scheme.ΓSpecIso (CommRingCat.of K)).inv.hom
  rwa [map_natCast] at this

end GlobalTheory.AbelianMulFin

namespace GlobalTheory.AbelianMulFin

theorem natCast_card_torsion_ne_zero {K : Type} [Field K] {G : Type} [CommGroup G] {n r : ℕ}
    (hn : (n : K) ≠ 0) (hr1 : 1 ≤ r) (hr : r = Nat.card {y : G // y ^ n = 1}) : (r : K) ≠ 0 := by
  intro hr0
  rcases CharP.char_is_prime_or_zero K (ringChar K) with hp | hp
  · haveI := Fact.mk hp
    have hdvd : ringChar K ∣ r := (CharP.cast_eq_zero_iff K (ringChar K) r).1 hr0
    let H : Subgroup G := (powMonoidHom n : G →* G).ker
    have hHc : Nat.card {y : G // y ^ n = 1} = Nat.card H :=
      Nat.card_congr (Equiv.subtypeEquivRight fun y => by simp [H, MonoidHom.mem_ker])
    rw [hr, hHc] at hdvd
    have hpos : Nat.card H ≠ 0 := by rw [← hHc, ← hr]; omega
    haveI : Finite H := Nat.finite_of_card_ne_zero hpos
    obtain ⟨x, hx⟩ := exists_prime_orderOf_dvd_card' (ringChar K) hdvd
    have hx2 : (x : G) ^ n = 1 := x.2
    have hxn : x ^ n = 1 := Subtype.ext (by rw [SubgroupClass.coe_pow, hx2]; rfl)
    have hd : ringChar K ∣ n := hx ▸ orderOf_dvd_of_pow_eq_one hxn
    exact hn ((CharP.cast_eq_zero_iff K (ringChar K) n).2 hd)
  · have : CharP K 0 := hp ▸ ringChar.charP K
    haveI := CharP.charP_to_charZero K
    exact (Nat.cast_ne_zero.2 (by omega)) hr0

theorem mulA_finite_locallyFree (K : Type) [Field K] [IsAlgClosed K]
    (A : Over (Spec (CommRingCat.of K))) [GrpObj A] [hA : IsAbelianScheme A] (n : ℕ)
    (hn : (n : K) ≠ 0) :
    IsFinite (mulA A n).left ∧ Flat (mulA A n).left ∧ Etale (mulA A n).left ∧
      ∃ r : ℕ, (r : K) ≠ 0 ∧ 1 ≤ r ∧ (∀ a : A.left, (mulA A n).left.finrank a = r) ∧
        ∀ V : A.left.Opens, IsAffineOpen V →
          letI := ((mulA A n).left.app V).hom.toAlgebra
          Module.Finite Γ(A.left, V) Γ(A.left, (mulA A n).left ⁻¹ᵁ V) ∧
          Module.Flat Γ(A.left, V) Γ(A.left, (mulA A n).left ⁻¹ᵁ V) ∧
          Module.Projective Γ(A.left, V) Γ(A.left, (mulA A n).left ⁻¹ᵁ V) ∧
          ∀ p : PrimeSpectrum Γ(A.left, V),
            Module.rankAtStalk Γ(A.left, (mulA A n).left ⁻¹ᵁ V) p = r := by
  haveI := hA.comm
  haveI := hA.smooth
  haveI := hA.geomConnected
  obtain ⟨⟨hfin, het⟩, -⟩ := GlobalTheory.GrpTangent.finiteEtale_mulN_torsion A (isUnit_natCast_Sp hn)
  rw [← GlobalTheory.MulLawsCompare.mulN_eq_mulA]
  haveI := hfin
  haveI := het
  haveI : ConnectedSpace A.left := GeometricallyConnected.connectedSpace A.hom A.hom.isOpenMap
  let z₀ : Spec (CommRingCat.of K) := (⊥ : PrimeSpectrum K)
  let o : A.left := η[A].left z₀
  have hη : η[A] ≫ mulN A n = η[A] := by
    rw [GlobalTheory.MulLawsCompare.mulN_eq_mulA]
    haveI := GlobalTheory.AbLaw.MulN.isMonHom_mulA A n
    exact IsMonHom.one_hom (mulA A n)
  have hfo : (mulN A n).left o = o := by
    change (η[A].left ≫ (mulN A n).left) z₀ = _
    rw [← Over.comp_left, hη]
  set r := (mulN A n).left.finrank o with hr_def
  have hall : ∀ a, (mulN A n).left.finrank a = r := fun a =>
    (Scheme.Hom.isLocallyConstant_finrank (mulN A n).left).apply_eq_of_preconnectedSpace a o
  have hr1 : 1 ≤ r := by
    have := Scheme.Hom.one_le_finrank_map (mulN A n).left o
    rwa [hfo] at this
  haveI hsurj : Surjective (mulN A n).left :=
    (Scheme.Hom.one_le_finrank_iff_surjective (mulN A n).left).1 fun a => by
      show 1 ≤ (mulN A n).left.finrank a
      rw [hall a]; exact hr1
  have hcard := GlobalTheory.MulLawsCompare.finrank_mulN_eq_card A n (η[A].left) z₀
  refine ⟨hfin, inferInstance, het, r, natCast_card_torsion_ne_zero hn hr1 hcard, hr1, hall,
    fun V hV => affine_finite_projective_rankAtStalk _ r hall V hV⟩

end GlobalTheory.AbelianMulFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AffineFiniteProjectiveRankAtStalk =====
