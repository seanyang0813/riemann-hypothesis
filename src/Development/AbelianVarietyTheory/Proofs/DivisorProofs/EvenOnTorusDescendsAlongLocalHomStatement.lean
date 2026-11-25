module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisationFiniteExtSameMumfordBundle
public import Development.AbelianVarietyTheory.Definitions.Uniformization.ExistsUniqueTorusCompat
public import Development.AbelianVarietyTheory.Definitions.Uniformization.PointEqOfSubsingleton
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsAddEquivOfSplitTorusIso
public import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ThickenedPointToTorusExtensionGenerator
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.CubTrivDeltaAndEvenUnique
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsEvenCubicalTrivialisationLiftNilpotent
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Development.AbelianVarietyTheory.Definitions.Uniformization.IsCPPullback
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsEvenPull
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AbelianSchemeCubicalBundleExistsAndMaps
public import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsIsGenOfUniqueFactorizationMonoid
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsLiftOneParameterQuotientTorus
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubTriv
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SplitTorusToAbelianVarietyConst
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSemiAbelianOfIsGrpPullbackSquare
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.AlgebraicTopology.FundamentalGroupoid.SimplyConnected
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
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
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
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ReduceModChar
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.TypeStar
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SurjectiveCubeOfGeneric

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCharacterSymmetricDefectTwiceFieldExt, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubicalStructureMapClosedFibreLocalHom, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubicalStructureMapOfLineBundleIsoRescaled, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubicalTrivialisationSplitTorusField, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubicalTrivialisationCompMonHom, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusFactorBaseChangeField, Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvenOnTorusDescendsAlongLocalHom, Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvenOnTorusDescendsAlongLocalHomStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCharacterSymmetricDefectTwiceFieldExt =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCharacterSymmetricDefectTwiceFieldExt", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.ExistsUniqueTorusCompat\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PointEqOfSubsingleton\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsAddEquivOfSplitTorusIso\npublic import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ThickenedPointToTorusExtensionGenerator\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.CubTrivDeltaAndEvenUnique\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsEvenCubicalTrivialisationLiftNilpotent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.AlgebraicTopology.FundamentalGroupoid.SimplyConnected\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.TwistCompare
open GlobalTheory GlobalTheory.UU GlobalTheory.CubTrivTorus

variable {S : Scheme.{0}} {X : Type} [AddCommGroup X]

theorem exists_char_of_cub [ConnectedSpace S] [Module.Free ℤ X] (u : Γ((splitTorus S X).left, ⊤)ˣ)
    (h₃ : ∀ (Z : Over S) (x y w : Z ⟶ splitTorus S X) (z : Z.left),
      gm (x * y * w).left z ⊤ u * gm x.left z ⊤ u * gm y.left z ⊤ u * gm w.left z ⊤ u =
        gm (x * y).left z ⊤ u * gm (x * w).left z ⊤ u * gm (y * w).left z ⊤ u)
    (h₁ : ∀ (Z : Over S) (z : Z.left), gm (1 : Z ⟶ splitTorus S X).left z ⊤ u = 1) :
    ∃ χ : X, ∀ (Z : Over S) (t : Z ⟶ splitTorus S X) (z : Z.left),
      gm t.left z ⊤ u = gm (𝟙 Z.left) z ⊤ (chV t χ) := by
  apply _root_.GlobalTheory.EvenTransl.exists_char <;> assumption

end GlobalTheory.TwistCompare

namespace GlobalTheory.TwistCompare
open GlobalTheory GlobalTheory.UU GlobalTheory.CubTrivTorus GlobalTheory.CubeLift

theorem cub_down_alg {U : Type} [CommGroup U] {a₁ a₂ a₃ a₄ a₅ a₆ a₇ w₁ w₂ w₃ w₄ w₅ w₆ w₇ w₀ c c₀ v₁ v₂ v₃ v₄ v₅ v₆ v₇ : U}
    (h : v₁ * v₂ * v₃ * v₄ = c * v₅ * v₆ * v₇) (hc : c * w₅ * w₆ * w₇ * w₀ = w₁ * w₂ * w₃ * w₄ * c₀)
    (r₁ : v₁ = w₁ * w₀⁻¹ * a₁) (r₂ : v₂ = w₂ * w₀⁻¹ * a₂) (r₃ : v₃ = w₃ * w₀⁻¹ * a₃) (r₄ : v₄ = w₄ * w₀⁻¹ * a₄)
    (r₅ : v₅ = w₅ * w₀⁻¹ * a₅) (r₆ : v₆ = w₆ * w₀⁻¹ * a₆) (r₇ : v₇ = w₇ * w₀⁻¹ * a₇) :
    a₁ * a₂ * a₃ * a₄ = c₀ * a₅ * a₆ * a₇ := by
  subst r₁ r₂ r₃ r₄ r₅ r₆ r₇
  have a := congrArg Additive.ofMul h
  have b := congrArg Additive.ofMul hc
  apply Additive.ofMul.injective
  simp only [ofMul_mul, ofMul_inv] at a b ⊢
  linear_combination (norm := abel) a + b

theorem ratio_alg {U : Type} [CommGroup U] {a₁ a₂ a₃ a₄ a₅ a₆ a₇ s₁ s₂ s₃ s₄ s₅ s₆ s₇ g₁ g₂ g₃ g₄ g₅ g₆ g₇ c : U}
    (ha : a₁ * a₂ * a₃ * a₄ = c * a₅ * a₆ * a₇) (hs : s₁ * s₂ * s₃ * s₄ = c * s₅ * s₆ * s₇)
    (r₁ : s₁ = g₁ * a₁) (r₂ : s₂ = g₂ * a₂) (r₃ : s₃ = g₃ * a₃) (r₄ : s₄ = g₄ * a₄)
    (r₅ : s₅ = g₅ * a₅) (r₆ : s₆ = g₆ * a₆) (r₇ : s₇ = g₇ * a₇) :
    g₁ * g₂ * g₃ * g₄ = g₅ * g₆ * g₇ := by
  subst r₁ r₂ r₃ r₄ r₅ r₆ r₇
  have a := congrArg Additive.ofMul ha
  have b := congrArg Additive.ofMul hs
  apply Additive.ofMul.injective
  simp only [ofMul_mul] at a b ⊢
  linear_combination (norm := abel) b - a

theorem even_alg {U : Type} [CommGroup U] {A₁ A Wi Wx W₀ E s s' g : U}
    (e₁ : Wi * W₀⁻¹ * A₁ = E * (s * (Wx * W₀⁻¹ * A))) (e₂ : s * Wx = Wi * s')
    (e₃ : g⁻¹ * A₁ = s' * (g * A)) : E = g * g := by
  have a := congrArg Additive.ofMul e₁
  have b := congrArg Additive.ofMul e₂
  have d := congrArg Additive.ofMul e₃
  apply Additive.ofMul.injective
  simp only [ofMul_mul, ofMul_inv] at a b d ⊢
  linear_combination (norm := abel) d - a - b

end GlobalTheory.TwistCompare

namespace GlobalTheory.TwistCompare
open GlobalTheory GlobalTheory.UU GlobalTheory.CubTrivTorus GlobalTheory.CubeLift

theorem exists_char_odd {S : Scheme.{0}} [ConnectedSpace S] {X : Type} [AddCommGroup X] [Module.Free ℤ X]
    {G : Over S} [GrpObj G] [IsCommMonObj G] {i : splitTorus S X ⟶ G} [IsMonHom i] (P : CP G) (σ : CubTriv P.c i) :
    ∃ κ : X, ∀ (T : Over S) (x : T ⟶ splitTorus S X) (z : T.left) (J), Good P.L.L z J →
      val σ.s (x⁻¹).left z J = gm (𝟙 T.left) z ⊤ (chV x κ) * (val P.sym (x ≫ i).left z J * val σ.s x.left z J) := by
  intros
  apply _root_.GlobalTheory.EvenTransl.exists_shift <;> assumption

end GlobalTheory.TwistCompare

namespace GlobalTheory.TwistCompare
open GlobalTheory GlobalTheory.UU GlobalTheory.CubTrivTorus GlobalTheory.CubeLift

theorem exists_twist_even : ∀ (k k' : Type) [CommRing k] [CommRing k'], IsField k → IsField k' → ∀ (ρ : k →+* k') (G₀ : Over (Sp k)) [GrpObj G₀] [IsCommMonObj G₀] (G'₀ : Over (Sp k')) [GrpObj G'₀] [IsCommMonObj G'₀] (β₀ : G'₀.left ⟶ G₀.left) (hβ₀ : IsGrpPullback G'₀ G₀ (spMap ρ) β₀) (P₀ : GlobalTheory.UU.CP G₀) (P'₀ : GlobalTheory.UU.CP G'₀) (w₀ : LB.Iso P'₀.L.L (P₀.L.L.pull β₀)), GlobalTheory.UU.IsCPMap P'₀ P₀ (spMap ρ) β₀ hβ₀.1.w w₀ → ∀ (X : Type) [AddCommGroup X] [Module.Free ℤ X] [Module.Finite ℤ X] (i : splitTorus (Sp k) X ⟶ G₀) (i₁ : splitTorus (Sp k') X ⟶ G'₀), IsMonHom i → IsMonHom i₁ → GlobalTheory.UU.TorusCompat (spMap ρ) β₀ i₁ i → ∀ (σ : GlobalTheory.UU.CubTriv P₀.c i) (σ₁ : GlobalTheory.UU.CubTriv P'₀.c i₁), GlobalTheory.UU.CubTriv.Even (P := P'₀) σ₁ → ∃ χ : X, GlobalTheory.UU.CubTriv.Even (P := P₀) (σ.twist χ) := by
  intro k k' _ _ hk hk' ρ G₀ _ _ G'₀ _ _ β₀ hβ₀ P₀ P'₀ w₀ hm X _ _ _ i i₁ hi hi₁ hc σ σ₁ hσ₁
  haveI := hi
  haveI := hi₁
  haveI : ConnectedSpace (Sp k) := by letI := hk.toField; infer_instance
  haveI : ConnectedSpace (Sp k') := by letI := hk'.toField; infer_instance
  obtain ⟨κ, hκ⟩ := exists_char_odd P₀ σ
  let f := spMap ρ
  let hw : β₀ ≫ G₀.hom = G'₀.hom ≫ f := hβ₀.1.w
  have hi' : SplitTorus.bcMap f X ≫ i.left = i₁.left ≫ β₀ := torusCompat_iff.1 hc
  have hcc : ∀ n : Fin 2, ![i₁.left, (1 : splitTorus (Sp k') X ⟶ G'₀).left] n ≫ β₀ =
      SplitTorus.bcMap f X ≫ ![i.left, (1 : splitTorus (Sp k) X ⟶ G₀).left] n := fun n => by
    fin_cases n
    · exact hi'.symm
    · refine (one_left_comp hm.mul _).trans (Eq.trans ?_ (congrArg (SplitTorus.bcMap f X ≫ ·) (one_left G₀ _)).symm)
      rw [← SplitTorus.bcMap_hom, Category.assoc]
  obtain ⟨a, ha, H⟩ := CubTransport.exists_pmaps ((isGen_iff w₀).1 hm.gen) P₀.L.isLB P'₀.L.isLB
    (SplitTorus.bcMap f X) hcc σ.s σ.gen

  let up : ∀ T : Over (Sp k'), (T ⟶ splitTorus (Sp k') X) →* (Over.mk (T.hom ≫ f) ⟶ splitTorus (Sp k) X) :=
    fun T => toBaseHom (hw := SplitTorus.bcMap_hom f X) (fun T x y => Over.OverMorphism.ext
      (SplitTorus.mul_left_bcMap f X T x y _ _ rfl rfl).symm) T
  have up_left : ∀ {T : Over (Sp k')} (x : T ⟶ splitTorus (Sp k') X), (up T x).left = x.left ≫ SplitTorus.bcMap f X :=
    fun _ => rfl
  have up_comp : ∀ {T : Over (Sp k')} (x : T ⟶ splitTorus (Sp k') X), (up T x ≫ i).left = (x ≫ i₁).left ≫ β₀ :=
    fun x => by rw [Over.comp_left, up_left, Category.assoc, hi', Over.comp_left, Category.assoc]
  have vrel : ∀ (T : Over (Sp k')) (z : T.left) (C₀ C), Good P'₀.L.L z C₀ → Good P₀.L.L z C →
      ∀ x : T ⟶ splitTorus (Sp k') X, val σ.s (up T x).left z C =
        gw w₀ (x ≫ i₁).left z (C ((x ≫ i₁).left ≫ β₀)) (C₀ (x ≫ i₁).left) *
          (gw w₀ (1 : T ⟶ G'₀).left z (C ((1 : T ⟶ G'₀).left ≫ β₀)) (C₀ (1 : T ⟶ G'₀).left))⁻¹ *
          val a x.left z C₀ := fun T z C₀ C hC₀ hC x =>
    (CubTransport.val_pmaps hcc H x.left hC hC₀).trans
      (congrArg₂ (· * ·) (prod_triv (i := i₁) x (fun q => gw w₀ q z (C (q ≫ β₀)) (C₀ q))) rfl)

  obtain ⟨r, hr⟩ := TorusCoord.exists_ratio P'₀.L.isLB (fun _ _ _ => rfl) σ₁.s σ₁.gen a ha
  have a_one : ∀ (T : Over (Sp k')) (z : T.left) (C₀), Good P'₀.L.L z C₀ →
      val a (1 : T ⟶ splitTorus (Sp k') X).left z C₀ = 1 := fun T z C₀ hC₀ => by
    obtain ⟨C, hC⟩ := exists_good_pt P₀.L.isLB z
    have e := vrel T z C₀ C hC₀ hC 1
    rw [map_one, σ.val_one hC, MonObj.one_comp, mul_inv_cancel, _root_.one_mul] at e
    exact e.symm
  have a_cub : ∀ (T : Over (Sp k')) (x y u : T ⟶ splitTorus (Sp k') X) (z : T.left) (C₀), Good P'₀.L.L z C₀ →
      val a (x * y * u).left z C₀ * val a x.left z C₀ * val a y.left z C₀ * val a u.left z C₀ =
        cubV P'₀.c z C₀ (x ≫ i₁) (y ≫ i₁) (u ≫ i₁) * val a (x * y).left z C₀ * val a (x * u).left z C₀ *
          val a (y * u).left z C₀ := fun T x y u z C₀ hC₀ => by
    obtain ⟨C, hC⟩ := exists_good_pt P₀.L.isLB z
    have h₀ := σ.cub (Over.mk (T.hom ≫ f)) (up T x) (up T y) (up T u) z C hC
    have hup : ∀ q : T ⟶ splitTorus (Sp k') X, up T q ≫ i = toBase hw (q ≫ i₁) :=
      fun q => Over.OverMorphism.ext (up_comp q)
    simp only [← map_mul, hup] at h₀
    have c := (hm.vals T z C₀ C hC₀ hC _ (fun _ => rfl)).2.2 (x ≫ i₁) (y ≫ i₁) (u ≫ i₁)
    simp only [← MonObj.mul_comp] at c
    exact cub_down_alg h₀ c (vrel T z C₀ C hC₀ hC _) (vrel T z C₀ C hC₀ hC _) (vrel T z C₀ C hC₀ hC _)
      (vrel T z C₀ C hC₀ hC _) (vrel T z C₀ C hC₀ hC _) (vrel T z C₀ C hC₀ hC _) (vrel T z C₀ C hC₀ hC _)
  obtain ⟨ψ, hψ⟩ := exists_char_of_cub r (fun T x y u z => by
      obtain ⟨C₀, hC₀⟩ := exists_good_pt P'₀.L.isLB z
      exact ratio_alg (a_cub T x y u z C₀ hC₀) (σ₁.cub T x y u z C₀ hC₀) (hr _ _ z C₀ hC₀) (hr _ _ z C₀ hC₀)
        (hr _ _ z C₀ hC₀) (hr _ _ z C₀ hC₀) (hr _ _ z C₀ hC₀) (hr _ _ z C₀ hC₀) (hr _ _ z C₀ hC₀))
    (fun T z => by
      obtain ⟨C₀, hC₀⟩ := exists_good_pt P'₀.L.isLB z
      have e := hr _ (1 : T ⟶ splitTorus (Sp k') X).left z C₀ hC₀
      rw [σ₁.val_one hC₀, a_one T z C₀ hC₀, _root_.mul_one] at e
      exact e.symm)

  have key : ∀ (T : Over (Sp k')) (x : T ⟶ splitTorus (Sp k') X) (z : T.left),
      gm (𝟙 T.left) z ⊤ (chV x κ) = gm (𝟙 T.left) z ⊤ (chV x (ψ + ψ)) := fun T x z => by
    obtain ⟨C₀, hC₀⟩ := exists_good_pt P'₀.L.isLB z
    obtain ⟨C, hC⟩ := exists_good_pt P₀.L.isLB z
    have hchv : chV (up T x) κ = chV x κ := Units.ext (by
      rw [chV_val, chV_val, up_left, Scheme.Hom.comp_appTop, CommRingCat.hom_comp, RingHom.comp_apply,
        bcMap_charUnit])
    have e₁ := hκ (Over.mk (T.hom ≫ f)) (up T x) z C hC
    rw [← map_inv, up_comp, vrel T z C₀ C hC₀ hC, vrel T z C₀ C hC₀ hC, hchv] at e₁
    have s₁ := (hm.vals T z C₀ C hC₀ hC _ (fun _ => rfl)).2.1 (x ≫ i₁)
    rw [← GrpObj.inv_comp] at s₁
    have ev := hσ₁ T x z C₀ hC₀
    rw [hr _ _ z C₀ hC₀, hr _ _ z C₀ hC₀, hψ, hψ, chV_inv, map_inv] at ev
    exact (even_alg e₁ s₁ ev).trans (by rw [chV_add, map_mul])
  have hκψ : κ = ψ + ψ := by
    apply SplitTorusHom.charUnit_injective (S := Sp k')
    have e : chV (𝟙 (splitTorus (Sp k') X)) κ = chV (𝟙 (splitTorus (Sp k') X)) (ψ + ψ) :=
      unit_ext fun z _ => key _ _ z
    have e' := congrArg Units.val e
    rwa [chV_val, chV_val, Over.id_left, Scheme.Hom.id_appTop, CommRingCat.hom_id, RingHom.id_apply,
      RingHom.id_apply] at e'
  refine ⟨ψ, fun T t z J hJ => ?_⟩
  rw [σ.val_twist ψ _ hJ, σ.val_twist ψ _ hJ, hκ T t z J hJ, hκψ, chV_inv, chV_add, map_inv, map_mul]
  apply Additive.ofMul.injective
  simp only [ofMul_mul, ofMul_inv]
  abel

end GlobalTheory.TwistCompare
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCharacterSymmetricDefectTwiceFieldExt =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubicalStructureMapClosedFibreLocalHom =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubicalStructureMapClosedFibreLocalHom", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.IsCPPullback\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsEvenPull\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.UU.ClosedFib

theorem le_comap_max {R W : Type} [CommRing R] [IsLocalRing R] [CommRing W] [IsLocalRing W] (φ : R →+* W)
    (hφ : IsLocalHom φ) : maximalIdeal R ^ (0 + 1) ≤ (maximalIdeal W ^ (0 + 1)).comap φ := by
  simp only [zero_add, pow_one]
  exact fun x hx => (mem_maximalIdeal _).2 fun h => (mem_maximalIdeal _).1 hx (isUnit_of_map_unit φ x h)

theorem spMap_thick {R W : Type} [CommRing R] [IsLocalRing R] [CommRing W] [IsLocalRing W] (φ : R →+* W)
    (hφ : IsLocalHom φ) :
    spMap (Ideal.quotientMap (maximalIdeal W ^ (0 + 1)) φ (le_comap_max φ hφ)) ≫ thick R (maximalIdeal R) 0 =
      thick W (maximalIdeal W) 0 ≫ spMap φ := by
  simp only [spMap, thick, ← Spec.map_comp, ← CommRingCat.ofHom_comp, Ideal.quotientMap_comp_mk]

theorem exists_isCPMap_closedFibre : ∀ (R W : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [CommRing W] [IsDomain W] [IsLocalRing W] (φ : R →+* W), IsLocalHom φ → ∀ (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (G' : Over (Sp W)) [GrpObj G'] [IsCommMonObj G'] (β : G'.left ⟶ G.left) (hβ : IsGrpPullback G' G (spMap φ) β) (P : GlobalTheory.UU.CP G) (P' : GlobalTheory.UU.CP G') (w : LB.Iso P'.L.L (P.L.L.pull β)), GlobalTheory.UU.IsCPMap P' P (spMap φ) β hβ.1.w w → ∀ (P₀ : GlobalTheory.UU.CP (thickObj R (maximalIdeal R) 0 G)) (P'₀ : GlobalTheory.UU.CP (thickObj W (maximalIdeal W) 0 G')), GlobalTheory.UU.IsLevelCP (maximalIdeal R) 0 P₀ P → GlobalTheory.UU.IsLevelCP (maximalIdeal W) 0 P'₀ P' → ∃ (ρ : R ⧸ maximalIdeal R ^ (0 + 1) →+* W ⧸ maximalIdeal W ^ (0 + 1)) (β₀ : (thickObj W (maximalIdeal W) 0 G').left ⟶ (thickObj R (maximalIdeal R) 0 G).left) (hβ₀ : IsGrpPullback (thickObj W (maximalIdeal W) 0 G') (thickObj R (maximalIdeal R) 0 G) (spMap ρ) β₀) (w₀ : LB.Iso P'₀.L.L (P₀.L.L.pull β₀)), GlobalTheory.UU.IsCPMap P'₀ P₀ (spMap ρ) β₀ hβ₀.1.w w₀ := by
  intro R W _ _ _ _ _ _ φ hφ G _ _ G' _ _ β hβ P P' w hP P₀ P'₀ h₀ h₀'
  let ρ := Ideal.quotientMap (maximalIdeal W ^ (0 + 1)) φ (le_comap_max φ hφ)
  have sq : spMap ρ ≫ thick R (maximalIdeal R) 0 = thick W (maximalIdeal W) 0 ≫ spMap φ := spMap_thick φ hφ
  let β₀ : (thickObj W (maximalIdeal W) 0 G').left ⟶ (thickObj R (maximalIdeal R) 0 G).left :=
    pullback.lift (pullback.fst G'.hom (thick W (maximalIdeal W) 0) ≫ β)
      (pullback.snd G'.hom (thick W (maximalIdeal W) 0) ≫ spMap ρ) (by
        rw [Category.assoc, hβ.1.w, ← Category.assoc, pullback.condition, Category.assoc, Category.assoc, sq])
  have e₁ : β₀ ≫ pullback.fst G.hom (thick R (maximalIdeal R) 0) =
      pullback.fst G'.hom (thick W (maximalIdeal W) 0) ≫ β := pullback.lift_fst _ _ _
  have e₂ : β₀ ≫ (thickObj R (maximalIdeal R) 0 G).hom = (thickObj W (maximalIdeal W) 0 G').hom ≫ spMap ρ :=
    pullback.lift_snd _ _ _
  have n : IsGrpPullback (thickObj W (maximalIdeal W) 0 G') G (spMap ρ ≫ thick R (maximalIdeal R) 0)
      (β₀ ≫ pullback.fst G.hom (thick R (maximalIdeal R) 0)) :=
    (IsGrpPullback.comp (isGrpPullback_pullback G' (thick W (maximalIdeal W) 0)) hβ).congr sq.symm e₁.symm
  have hβ₀ : IsGrpPullback (thickObj W (maximalIdeal W) 0 G') (thickObj R (maximalIdeal R) 0 G) (spMap ρ) β₀ :=
    (isGrpPullback_pullback G (thick R (maximalIdeal R) 0)).cancel n e₂
  obtain ⟨_, hR⟩ := h₀
  obtain ⟨_, hW⟩ := h₀'
  obtain ⟨_, -, hc⟩ := hP.exists_comp hW (by
    rw [Category.assoc, hβ.1.w, ← Category.assoc, pullback.condition, Category.assoc]; rfl)
  obtain ⟨w₀, hw₀⟩ := GlobalTheory.UU.TowerEx.exists_cancel hR hc hβ₀ sq e₁
  exact ⟨ρ, β₀, hβ₀, w₀, hw₀⟩

end GlobalTheory.UU.ClosedFib
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubicalStructureMapClosedFibreLocalHom =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubicalStructureMapOfLineBundleIsoRescaled =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubicalStructureMapOfLineBundleIsoRescaled", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PointEqOfSubsingleton\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AbelianSchemeCubicalBundleExistsAndMaps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.PkgBaseChange
open GlobalTheory.UU

theorem surjective_of_cube {S' : Scheme.{0}} (G' : Over S') [GrpObj G']
    (h3 : Function.Surjective (G3 G').hom.appTop.hom) : Function.Surjective G'.hom.appTop.hom := by
  let s : G' ⟶ G3 G' := lift (𝟙 G') (lift 1 1)
  have hs : s.left ≫ (fst G' (G' ⊗ G')).left = 𝟙 _ := by
    rw [← Over.comp_left, lift_fst]; rfl
  have hw : s.left ≫ (G3 G').hom = G'.hom := Over.w s
  intro g
  obtain ⟨c, hc⟩ := h3 ((fst G' (G' ⊗ G')).left.appTop.hom g)
  refine ⟨c, ?_⟩
  have e1 : G'.hom.appTop.hom c = s.left.appTop.hom ((G3 G').hom.appTop.hom c) := by
    rw [← hw, Scheme.Hom.comp_appTop]; rfl
  have e2 : s.left.appTop.hom ((fst G' (G' ⊗ G')).left.appTop.hom g) = g := by
    rw [← CommRingCat.comp_apply, ← Scheme.Hom.comp_appTop, hs]; rfl
  rw [e1, hc, e2]

theorem exists_isCPMap_of_lbIso : ∀ (S S' : Scheme.{0}) (f : S' ⟶ S) (G : Over S) [GrpObj G] [IsCommMonObj G]
    (G' : Over S') [GrpObj G'] [IsCommMonObj G'] (F : G'.left ⟶ G.left) (hw : F ≫ G.hom = G'.hom ≫ f),
    (∀ (T : Over S') (x y : T ⟶ G'), toBase hw (x * y) = toBase hw x * toBase hw y) →
    Function.Surjective (G3 G').hom.appTop.hom → ∀ (P : GlobalTheory.UU.CP G) (P' : GlobalTheory.UU.CP G'),
    LBIso P'.L.L (P.L.L.pull F) → ∃ w, GlobalTheory.UU.IsCPMap P' P f F hw w := by
  intro S S' f G _ _ G' _ _ F hw mul h3 M M' ⟨w, hg⟩
  have h1 := surjective_of_cube G' h3
  obtain ⟨rig, hr, c, s, hs, h₂, h₃, H⟩ := exists_isCPMap M mul M'.L.L M'.L.isLB w hg
  let N : CP G' := ⟨⟨M'.L.L, rig, M'.L.isLB, hr⟩, c, s, hs, h₂, h₃⟩
  obtain ⟨a, ha⟩ := GlobalTheory.AbPackage.exists_unit_ratio M'.L.isLB (φ := fun _ : PUnit => eSec G') (ε := fun _ => 1)
    hr M'.L.rigGen
  let b : Γ(G'.left, ⊤)ˣ := pullU G'.hom ⊤ a
  have es : ∀ (Z : Scheme.{0}) (r : Z ⟶ G'.left) (z : Z) (J), Good M'.L.L z J → val s r z J = val M'.sym r z J :=
    gen_unique M'.L.isLB G'.hom (1 : 𝟙_ (Over S') ⟶ G').left (Over.w _) h1 hs M'.sym_gen
      fun y J hJ => (N.val_sym_one hJ).trans (M'.val_sym_one hJ).symm
  have ec : ∀ (T : Over S') (z : T.left) (J), Good M'.L.L z J → ∀ x y u : T ⟶ G',
      cubV c z J x y u = cubV M'.c z J x y u := fun T z J hJ x y u =>
    gen_unique M'.L.isLB (φ := thφ G' (x3 G')) (ε := thε) (G3 G').hom
      (lift (1 : 𝟙_ (Over S') ⟶ G') (lift 1 1)).left (Over.w _) h3 c.isGen M'.c.isGen
      (fun y J hJ => ((isCub_cubV c hJ).face 1 1).trans ((isCub_cubV M'.c hJ).face 1 1).symm) _ _ z J hJ
  refine ⟨scaleGen b w, mul, scaleGen_isGen b hg, fun T z J' J hJ' hJ W hW => ?_⟩
  obtain ⟨W₀, hW₀⟩ : ∃ W₀ : (T ⟶ G') → (T.left.presheaf.stalk z)ˣ,
    ∀ x, W₀ x = gw w x.left z (J (x.left ≫ F)) (J' x.left) := ⟨_, fun _ => rfl⟩
  obtain ⟨α, hα⟩ : ∃ α : (T.left.presheaf.stalk z)ˣ, α = gm (Y := T.left) T.hom z ⊤ a := ⟨_, rfl⟩
  have e : ∀ x, W x = α * W₀ x := fun x => by
    have hm : x.left z ∈ (M.L.L.pull F).U (fun _ => J (x.left ≫ F)) ⊓ M'.L.L.U (J' x.left) :=
      ⟨mem_pull.2 (hJ (x.left ≫ F)), hJ' x.left⟩
    rw [hW, hW₀, hα, ← Over.w x]
    exact (map_mul _ _ _).trans (congrArg₂ (· * ·) ((gm_res x.left z le_top hm b).trans
      (gm_pull x.left G'.hom z ⊤ trivial a)) rfl)
  obtain ⟨a₁, a₂, a₃⟩ := H.vals T z J' J hJ' hJ W₀ hW₀
  refine ⟨?_, fun x => ?_, fun x y u => ?_⟩
  · refine a₁.trans ((congrArg (W₀ 1 * ·) (ha _ T.hom z J' hJ')).trans ?_)
    rw [e, hα, mul_comm _ (W₀ 1), _root_.mul_assoc]
  · have q : val M.sym (x.left ≫ F) z J * W₀ x = W₀ x⁻¹ * val M'.sym x.left z J' :=
      (a₂ x).trans (congrArg (W₀ x⁻¹ * ·) (es _ x.left z J' hJ'))
    rw [e, e, mul_left_comm, q, _root_.mul_assoc]
  · have q := (a₃ x y u).trans (congrArg (W₀ (x * y * u) * W₀ x * W₀ y * W₀ u * ·) (ec T z J' hJ' x y u))
    simp only [e]
    apply Additive.ofMul.injective
    have q' := congrArg Additive.ofMul q
    simp only [ofMul_mul] at q' ⊢
    linear_combination (norm := abel) q'

end GlobalTheory.PkgBaseChange
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubicalStructureMapOfLineBundleIsoRescaled =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubicalTrivialisationSplitTorusField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubicalTrivialisationSplitTorusField", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PointEqOfSubsingleton\npublic import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsIsGenOfUniqueFactorizationMonoid\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsLiftOneParameterQuotientTorus\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubTriv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.TorusCubTriv

open GlobalTheory GlobalTheory.UU GlobalTheory.EvenGenTorus TorusCube

theorem exists_cubTriv : ∀ (k : Type) [CommRing k], IsField k → ∀ (G₀ : Over (Sp k)) [GrpObj G₀] [IsCommMonObj G₀] (X : Type) [AddCommGroup X] [Module.Free ℤ X] [Module.Finite ℤ X] (P₀ : GlobalTheory.UU.CP G₀) (i : splitTorus (Sp k) X ⟶ G₀), IsMonHom i → Nonempty (GlobalTheory.UU.CubTriv P₀.c i) := by
  intro k _ hk G₀ _ _ X _ _ _ P₀ i hi
  letI := hk.toField
  haveI := hi
  haveI : IsAffine (splitTorus (Sp k) X).left := isAffine_of_isAffineHom (splitTorus (Sp k) X).hom
  haveI := GlobalTheory.SS.LiftTorus.subsingleton_pic_torus k X
  obtain ⟨τ, hτ⟩ := GlobalTheory.LB.exists_isGen_of_subsingleton_pic_top
    (ReciprocityTheory.ChartRestriction.G.Semi.LB.isLB_linComb P₀.L.isLB (K := PUnit) (fun _ => i.left) (fun _ => 1))
  have e1 : (1 : splitTorus (Sp k) X ⟶ splitTorus (Sp k) X).left ≫ i.left = (1 : splitTorus (Sp k) X ⟶ G₀).left := by
    rw [← Over.comp_left, MonObj.one_comp]
  obtain ⟨σ, hσ, vσ⟩ := exists_gen (φ' := ![i.left, (1 : splitTorus (Sp k) X ⟶ G₀).left]) (ε' := ![1, -1]) P₀.L.isLB
    (fun U _ h => (Fintype.prod_sum_type _).trans (by simp [Fin.prod_univ_two, e1]))
    (LB.mulGen _ _ _ _ _ τ (LB.invGen _ _ _ (LB.pullGen P₀.L.L (fun _ : PUnit => i.left) (fun _ => 1) τ
      (1 : splitTorus (Sp k) X ⟶ splitTorus (Sp k) X).left)))
    (DVR.mulGen_isGen _ _ _ _ _ _ _ hτ (DVR.invGen_isGen _ _ _ _ (DVR.pullGen_isGen _ _ _ _ hτ _)))
  have v : ∀ (T : Over (Sp k)) (x : T ⟶ splitTorus (Sp k) X) (z : T.left) (J), Good P₀.L.L z J →
      val σ x.left z J = val τ x.left z J * (val τ (1 : T ⟶ splitTorus (Sp k) X).left z J)⁻¹ := by
    intro T x z J hJ
    rw [vσ _ _ z J hJ, val_mul hJ, val_inv, val_pull hJ, ← Over.comp_left, MonObj.comp_one]
  refine ⟨⟨σ, hσ, fun T x y u z J hJ => ?_⟩⟩
  have a := cube k X G₀ i P₀.L P₀.c τ hτ T x y u z J hJ
  simp only [v T _ z J hJ]
  apply Additive.ofMul.injective
  have a' := congrArg Additive.ofMul a
  simp only [ofMul_mul, ofMul_inv] at a' ⊢
  linear_combination (norm := abel) a'

end GlobalTheory.Mum.TorusCubTriv
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubicalTrivialisationSplitTorusField =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubicalTrivialisationCompMonHom =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubicalTrivialisationCompMonHom", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PointEqOfSubsingleton\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.CubTrivComp

theorem val_cast {X Y Z : Scheme.{0}} {L : LB X} {K : Type} [Fintype K] {φ φ' : K → (Y ⟶ X)} {ε : K → ℤ}
    (h : φ = φ') (t : LB.Gen (LB.LinComb L φ ε)) (r : Z ⟶ Y) (z : Z) (J : (Z ⟶ X) → L.ι) :
    val (h ▸ t : LB.Gen (LB.LinComb L φ' ε)) r z J = val t r z J := by
  subst h; rfl

theorem isGen_cast {X Y : Scheme.{0}} {L : LB X} {K : Type} [Fintype K] {φ φ' : K → (Y ⟶ X)} {ε : K → ℤ}
    (h : φ = φ') {t : LB.Gen (LB.LinComb L φ ε)} (ht : t.IsGen) :
    (h ▸ t : LB.Gen (LB.LinComb L φ' ε)).IsGen := by
  subst h; exact ht

theorem exists_even_comp : ∀ (S : Scheme.{0}) (G H H' : Over S) [GrpObj G] [IsCommMonObj G] [GrpObj H] [GrpObj H']
    (P : GlobalTheory.UU.CP G) (i : H' ⟶ G) (e : H ⟶ H'), IsMonHom e → ∀ σ : GlobalTheory.UU.CubTriv P.c i,
    GlobalTheory.UU.CubTriv.Even (P := P) σ → ∃ σ₁ : GlobalTheory.UU.CubTriv P.c (e ≫ i), GlobalTheory.UU.CubTriv.Even (P := P) σ₁ := by
  intro S G H H' _ _ _ _ P i e he σ hσ
  have hφ : (fun k => e.left ≫ (![i.left, (1 : H' ⟶ G).left] : Fin 2 → (H'.left ⟶ G.left)) k) =
      ![(e ≫ i).left, (1 : H ⟶ G).left] := by
    funext k
    fin_cases k
    · exact (Over.comp_left _ _ _ e i).symm
    · show e.left ≫ (1 : H' ⟶ G).left = (1 : H ⟶ G).left
      rw [← Over.comp_left, MonObj.comp_one]
  let s₁ : LB.Gen (LB.LinComb P.L.L (K := Fin 2) ![(e ≫ i).left, (1 : H ⟶ G).left] ![1, -1]) :=
    hφ ▸ LB.pullGen P.L.L _ _ σ.s e.left
  have v : ∀ {T : Over S} (x : T ⟶ H) {z : T.left} {J}, Good P.L.L z J →
      val s₁ x.left z J = val σ.s (x ≫ e).left z J := fun x z J hJ =>
    (val_cast hφ _ _ _ _).trans ((val_pull hJ σ.s e.left x.left).trans (by rw [Over.comp_left]))
  refine ⟨⟨s₁, isGen_cast hφ (DVR.pullGen_isGen _ _ _ _ σ.gen _), fun T x y u z J hJ => ?_⟩, fun T x z J hJ => ?_⟩
  · have c := σ.cub T (x ≫ e) (y ≫ e) (u ≫ e) z J hJ
    simp only [← MonObj.mul_comp, Category.assoc] at c
    simp only [v _ hJ]
    exact c
  · show val s₁ (x⁻¹).left z J = val P.sym (x ≫ e ≫ i).left z J * val s₁ x.left z J
    rw [v _ hJ, v _ hJ, GrpObj.inv_comp, hσ T (x ≫ e) z J hJ, Category.assoc]

end GlobalTheory.CubTrivComp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubicalTrivialisationCompMonHom =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusFactorBaseChangeField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusFactorBaseChangeField", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.ExistsUniqueTorusCompat\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PointEqOfSubsingleton\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SplitTorusToAbelianVarietyConst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem exists_torus_factor : ∀ (k k' : Type) [CommRing k] [CommRing k'], IsField k' → ∀ (ρ : k →+* k') (G₀ : Over (Sp k)) [GrpObj G₀] (G'₀ : Over (Sp k')) [GrpObj G'₀] (β₀ : G'₀.left ⟶ G₀.left), IsGrpPullback G'₀ G₀ (spMap ρ) β₀ → ∀ (X X' : Type) [AddCommGroup X] [Module.Free ℤ X] [Module.Finite ℤ X] [AddCommGroup X'] (Q₀ : GlobalTheory.UU.TQ G₀ X) (Q'₀ : GlobalTheory.UU.TQ G'₀ X'), ∃ (i₁ : splitTorus (Sp k') X ⟶ G'₀) (e : splitTorus (Sp k') X ⟶ splitTorus (Sp k') X'), IsMonHom e ∧ e ≫ Q'₀.i = i₁ ∧ GlobalTheory.UU.TorusCompat (spMap ρ) β₀ i₁ Q₀.i := by
  intro k k' _ _ hk' ρ G₀ _ G'₀ _ β₀ hβ₀ X X' _ _ _ _ Q₀ Q'₀
  letI : Field k' := hk'.toField
  obtain ⟨i₁, h₁, -⟩ := GlobalTheory.UU.existsUnique_torusCompat hβ₀.1 Q₀.i
  haveI := Q₀.i_hom
  haveI := Q'₀.i_hom
  haveI := Q'₀.q_hom
  haveI hi₁ : IsMonHom i₁ := GlobalTheory.UU.TorusCompat.isMonHom hβ₀ h₁
  haveI : IsProper Q'₀.B.hom := Q'₀.isAb.proper
  have hc : i₁ ≫ Q'₀.q = toUnit _ ≫ η[Q'₀.B] := by
    have h := GlobalTheory.TorusConst.eq_const (K := k') X (i₁ ≫ Q'₀.q)
    rw [IsMonHom.one_hom] at h
    exact h
  let e := Q'₀.isKernel.lift i₁ (toUnit _) hc
  have he : e ≫ Q'₀.i = i₁ := Q'₀.isKernel.lift_fst _ _ hc
  haveI : Mono Q'₀.i := by
    haveI : Mono (η[Q'₀.B]) := ⟨fun a b _ => toUnit_unique a b⟩
    exact Q'₀.isKernel.mono_fst_of_mono
  haveI : IsMonHom (e ≫ Q'₀.i) := he ▸ hi₁
  exact ⟨i₁, e, _root_.GlobalTheory.AbelianImage.isMonHom_of_comp_mono e Q'₀.i, he, h₁⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusFactorBaseChangeField =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvenOnTorusDescendsAlongLocalHom =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvenOnTorusDescendsAlongLocalHom", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SurjectiveCubeOfGeneric\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.ExistsUniqueTorusCompat\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PointEqOfSubsingleton\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCharacterSymmetricDefectTwiceFieldExt\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.IsCPPullback\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubicalStructureMapClosedFibreLocalHom\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubicalStructureMapOfLineBundleIsoRescaled\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubicalTrivialisationSplitTorusField\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubicalTrivialisationCompMonHom\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusFactorBaseChangeField\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSemiAbelianOfIsGrpPullbackSquare\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsEvenPull\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum



theorem evenOn_of_local : ∀ (R W : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [CommRing W] [IsDomain W] [IsLocalRing W] (φ : R →+* W), IsLocalHom φ → ∀ (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (G' : Over (Sp W)) [GrpObj G'] [IsCommMonObj G'] (β : G'.left ⟶ G.left), IsGrpPullback G' G (spMap φ) β → IsProper (pullback.snd G'.hom (jK W)) → ∀ (P : GlobalTheory.UU.CP G) (P' : GlobalTheory.UU.CP G'), LBIso P'.L.L (P.L.L.pull β) → EvenOn P' → ∀ (X : Type) [AddCommGroup X] [Module.Free ℤ X] [Module.Finite ℤ X], Nonempty (GlobalTheory.UU.TQ (thickObj R (maximalIdeal R) 0 G) X) → EvenOn P := by
  intro R W _ _ _ _ _ _ φ hφ G _ _ hG G' _ _ β hβ hp P P' hL hE X _ _ _ ⟨Q₀⟩
  have hG' := _root_.GlobalTheory.Mum.isSemiAbelian_of_isGrpPullback_square _ _ _ G G' β hβ hG
  have h3 := GlobalTheory.EvenTriv.surjective_cube_of_generic G' hG' hp
  obtain ⟨w, hw⟩ := _root_.GlobalTheory.PkgBaseChange.exists_isCPMap_of_lbIso _ _ _ G G' β hβ.1.w (GlobalTheory.UU.TowerEx.toBase_mul hβ hβ.1.w) h3 P P' hL
  obtain ⟨X', _, _, _, Q'₀, P'₀, hlev', σ', hσ'⟩ := hE
  obtain ⟨P₀, hlev⟩ := GlobalTheory.UU.exists_isLevelCP (maximalIdeal R) 0 P
  obtain ⟨ρ, β₀, hβ₀, w₀, hw₀⟩ := _root_.GlobalTheory.UU.ClosedFib.exists_isCPMap_closedFibre R W φ hφ G G' β hβ P P' w hw P₀ P'₀ hlev hlev'
  have hk : IsField (R ⧸ maximalIdeal R ^ (0 + 1)) :=
    (Ideal.Quotient.maximal_ideal_iff_isField_quotient _).mp (by rw [zero_add, pow_one]; exact IsLocalRing.maximalIdeal.isMaximal R)
  have hk' : IsField (W ⧸ maximalIdeal W ^ (0 + 1)) :=
    (Ideal.Quotient.maximal_ideal_iff_isField_quotient _).mp (by rw [zero_add, pow_one]; exact IsLocalRing.maximalIdeal.isMaximal W)
  obtain ⟨i₁, e, he, rfl, hc⟩ := _root_.GlobalTheory.Mum.exists_torus_factor _ _ hk' ρ _ _ β₀ hβ₀ X X' Q₀ Q'₀
  obtain ⟨σ₁, hσ₁⟩ := _root_.GlobalTheory.CubTrivComp.exists_even_comp _ _ _ _ P'₀ Q'₀.i e he σ' hσ'
  have := Q₀.i_hom
  have hi₁ : IsMonHom (e ≫ Q'₀.i) := GlobalTheory.UU.TorusCompat.isMonHom hβ₀ hc
  obtain ⟨σ⟩ := @_root_.GlobalTheory.Mum.TorusCubTriv.exists_cubTriv _ _ hk _ _ _ X _ _ _ P₀ Q₀.i Q₀.i_hom
  obtain ⟨χ, hχ⟩ := @_root_.GlobalTheory.TwistCompare.exists_twist_even _ _ _ _ hk hk' ρ _ _ _ _ _ _ β₀ hβ₀ P₀ P'₀ w₀ hw₀ X _ _ _ Q₀.i (e ≫ Q'₀.i) Q₀.i_hom hi₁ hc σ σ₁ hσ₁
  exact ⟨X, inferInstance, inferInstance, inferInstance, Q₀, P₀, hlev, _, hχ⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvenOnTorusDescendsAlongLocalHom =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvenOnTorusDescendsAlongLocalHomStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvenOnTorusDescendsAlongLocalHomStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvenOnTorusDescendsAlongLocalHom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvenOnTorusDescendsAlongLocalHomStatement =====
