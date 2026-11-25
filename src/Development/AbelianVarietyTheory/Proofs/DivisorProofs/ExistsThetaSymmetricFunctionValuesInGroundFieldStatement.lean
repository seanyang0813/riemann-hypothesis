module

public import Development.AbelianVarietyTheory.Definitions.Divisors.SymTupOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSymmetricFunctionsDegreeFactorialBasicPrope
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsThetaConstantListOfFibrePullbackFieldExtensionStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipallyPolarisedFibreIffOfGrpPullbackStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantListsUniqueUpToPermScalarStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsListedFiniteGaloisExtensionStatement
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsThetaLevelAbelianSchemeGlueAffineCover
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
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaSymmetricFunctionValuesInGroundField, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaSymmetricFunctionValuesInGroundFieldStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaSymmetricFunctionValuesInGroundField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaSymmetricFunctionValuesInGroundField", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SymTupOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsThetaConstantListOfFibrePullbackFieldExtensionStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipallyPolarisedFibreIffOfGrpPullbackStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantListsUniqueUpToPermScalarStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsListedFiniteGaloisExtensionStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSymmetricFunctionsDegreeFactorialBasicPrope\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsThetaLevelAbelianSchemeGlueAffineCover\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.ZM GlobalTheory.ZH GlobalTheory.UMin GlobalTheory.UPoinc GlobalTheory.Ex.OneGen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.UMin.SymRat

theorem grpPullback_self {S : Scheme.{0}} (G : Over S) [GrpObj G] : IsGrpPullback G G (𝟙 S) (𝟙 G.left) := by
  refine ⟨IsPullback.of_horiz_isIso ⟨by simp⟩, fun T x y x₀ y₀ hx hy => ?_⟩
  let ρ : Over.mk (T.hom ≫ 𝟙 S) ⟶ T := Over.homMk (𝟙 T.left) (by simp)
  have ex : x₀ = ρ ≫ x := Over.OverMorphism.ext (hx.trans ((Category.comp_id _).trans (Category.id_comp _).symm))
  have ey : y₀ = ρ ≫ y := Over.OverMorphism.ext (hy.trans ((Category.comp_id _).trans (Category.id_comp _).symm))
  rw [ex, ey, ← MonObj.comp_mul]
  exact (Category.id_comp _).trans (Category.comp_id _).symm

theorem spMap_comp_ring {A B C : Type} [CommRing A] [CommRing B] [CommRing C] (f : A →+* B) (g : B →+* C) :
    spMap g ≫ spMap f = spMap (g.comp f) := by
  rw [← Spec.map_comp]; rfl

alias sec_eq := _root_.ReciprocityTheory.ChartRestriction.G.DVR.SecOps.sec_ext

theorem pullS_comp {S : Scheme.{0}} (G : Over S) [GrpObj G] {L : LB G.left} (hL : L.IsLB) (a : ℤ) {T T' T'' : Over S}
    (h : T' ⟶ T) (h' : T'' ⟶ T') (s : LB.Sec (LPow G L a T)) :
    VVRank.pullS G a h' (VVRank.pullS G a h s) = VVRank.pullS G a (h' ≫ h) s := by
  refine sec_eq (sec_ext_val hL (fun y J hJ => ?_))
  refine (VVRank.sv_pullS G a h' _ (𝟙 _) y hJ).trans ((VVRank.sv_pullS G a h s _ y hJ).trans ?_)
  refine Eq.trans ?_ (VVRank.sv_pullS G a (h' ≫ h) s (𝟙 _) y hJ).symm
  rw [MonoidalCategory.comp_whiskerRight, Over.comp_left, Category.assoc]

variable {S : Scheme.{0}} {G : Over S} [GrpObj G] {L : LB G.left} {ρ : LB.Gen (L.pull (eSec G))}

theorem thList_congr {m : ℕ} {R : Type} [CommRing R] {x : Sp R ⟶ S} (θ : SecAt G L x) {K : Type} [Field K]
    {y y' : Sp K ⟶ S} (e : y = y') (u : Over.mk y ⟶ Over.mk x) (u' : Over.mk y' ⟶ Over.mk x) (hu : u.left = u'.left)
    {N : ℕ} {pt : Fin N → (Over.mk y ⟶ G)} {c : Fin N → K} (H : ThList G L ρ m y (VVRank.pullS G _ u θ) pt c) :
    ∃ pt' : Fin N → (Over.mk y' ⟶ G), ThList G L ρ m y' (VVRank.pullS G _ u' θ) pt' c := by
  subst e
  obtain rfl : u = u' := Over.OverMorphism.ext hu
  exact ⟨pt, H⟩

end GlobalTheory.UMin.SymRat

namespace GlobalTheory.UMin.SymRat

theorem symAt_exists : ∀ (S : Scheme.{0}) (G : Over S) [GrpObj G] [IsCommMonObj G] (L : LB G.left)
    (ρ : LB.Gen (L.pull (eSec G))), L.IsLB → ρ.IsGen → ∀ (g m N : ℕ) (Ω : Type) [Field Ω] [CharZero Ω]
    (x : Sp Ω ⟶ S) (θ : SecAt G L x), Odd m → N = m ^ (4 * g) → PolFib G L g x → ∃ e : Fin N → Ω, SymAt G L ρ m x θ e := by
  intro S G _ _ L ρ hL hρ g m N Ω _ _ x θ hm hN hP
  obtain ⟨Ω', instF, instA, pt₀, c₀, hfd, hgal, -, hT, hτ⟩ := GlobalTheory.T.theta_constants_listed_finite_galois_extension S G L ρ hL hρ g m N Ω x θ hm hN hP
  haveI := hfd
  haveI := hgal
  have sb := _root_.GlobalTheory.UMin.symTup_basic
  have hfix : ∀ j, ∃ e : Ω, algebraMap Ω Ω' e = symTup c₀ j := by
    intro j
    have hm : symTup c₀ j ∈ Set.range (algebraMap Ω Ω') := (IsGalois.mem_range_algebraMap_iff_fixed _).2 fun τ => by
      obtain ⟨σ, hσ⟩ := hτ τ
      have e1 : τ (symTup c₀ j) = symTup (fun b => τ (c₀ b)) j := sb.2.2.1 Ω' Ω' (τ : Ω' →+* Ω') N c₀ j
      rw [e1, show (fun b => τ (c₀ b)) = fun b => c₀ (σ b) from funext hσ, sb.2.1 Ω' N c₀ σ]
    obtain ⟨e, he⟩ := hm
    exact ⟨e, he⟩
  choose e he using hfix
  refine ⟨e, ?_⟩
  intro K _ i pt c hc j
  let k : K →+* AlgebraicClosure K := algebraMap K (AlgebraicClosure K)
  letI : Algebra Ω (AlgebraicClosure K) := (k.comp i).toAlgebra
  haveI : Algebra.IsAlgebraic Ω Ω' := Algebra.IsAlgebraic.of_finite Ω Ω'
  let jj : Ω' →ₐ[Ω] AlgebraicClosure K := (by
    refine @_root_.IsAlgClosed.lift _ _ _ _ _ _ _ _ _ _ _ ?_ ?_ ?_
    solve_by_elim* (maxDepth := 2) only [*,
      @_root_.DivisionSemiring.to_moduleIsTorsionFree,
      @_root_.Algebra.IsIntegral.isAlgebraic, @_root_.inferInstance])
  have hcomp : (jj : Ω' →+* AlgebraicClosure K).comp (algebraMap Ω Ω') = k.comp i :=
    RingHom.ext fun r => jj.commutes r
  obtain ⟨p1, -, h1⟩ := GlobalTheory.T.isThetaConstantListOfFibre_pullback_field_extension S G L ρ hL hρ m N Ω' (AlgebraicClosure K) (jj : Ω' →+* AlgebraicClosure K) _ _ pt₀ c₀ hT
  obtain ⟨p2, -, h2⟩ := GlobalTheory.T.isThetaConstantListOfFibre_pullback_field_extension S G L ρ hL hρ m N K (AlgebraicClosure K) k _ _ pt c hc
  simp only [SecAt.pull] at h1 h2
  rw [pullS_comp G hL] at h1 h2
  have ey1 : spMap (jj : Ω' →+* AlgebraicClosure K) ≫ spMap (algebraMap Ω Ω') ≫ x = spMap (k.comp i) ≫ x := by
    rw [← Category.assoc, spMap_comp_ring, hcomp]
  have ey2 : spMap k ≫ spMap i ≫ x = spMap (k.comp i) ≫ x := by
    rw [← Category.assoc, spMap_comp_ring]
  obtain ⟨q1, H1⟩ := thList_congr θ ey1 _ (Over.homMk (spMap (k.comp i)) rfl : Over.mk (spMap (k.comp i) ≫ x) ⟶ Over.mk x)
    (by simp only [Over.comp_left, Over.homMk_left]; rw [spMap_comp_ring, hcomp]) h1
  obtain ⟨q2, H2⟩ := thList_congr θ ey2 _ (Over.homMk (spMap (k.comp i)) rfl : Over.mk (spMap (k.comp i) ≫ x) ⟶ Over.mk x)
    (by simp only [Over.comp_left, Over.homMk_left]; rw [spMap_comp_ring]) h2
  have hPy : PolFib G L g (spMap (k.comp i) ≫ x) :=
    (GlobalTheory.T.principallyPolarisedFibre_iff_of_grpPullback S S G L G L (𝟙 S) (𝟙 G.left) hL hL (grpPullback_self G) (GlobalTheory.ThetaAffineGlue.lbIso_pull_id hL) g Ω
      x).2 (AlgebraicClosure K) (k.comp i) hP
  have hmAC : (m : AlgebraicClosure K) ≠ 0 := by
    rw [← map_natCast (k.comp i) m]
    exact (map_ne_zero _).2 (Nat.cast_ne_zero.2 hm.pos.ne')
  obtain ⟨σ, hσ⟩ := (_root_.GlobalTheory.UMin.ThUniq.theta_lists_unique S G L ρ hL hρ g m m N N (AlgebraicClosure K) (spMap (k.comp i) ≫ x) hm hmAC hm hmAC
    hPy).1 _ q2 q1 _ _ H2 H1
  apply k.injective
  calc k (i (e j)) = jj (algebraMap Ω Ω' (e j)) := (RingHom.congr_fun hcomp (e j)).symm
    _ = jj (symTup c₀ j) := by rw [he]
    _ = symTup (fun b => jj (c₀ b)) j := sb.2.2.1 _ _ (jj : Ω' →+* AlgebraicClosure K) _ _ _
    _ = symTup (fun b => k (c (σ b))) j := by rw [show (fun b => jj (c₀ b)) = fun b => k (c (σ b)) from funext hσ]
    _ = symTup (fun b => k (c b)) j := by rw [sb.2.1 _ N (fun b => k (c b)) σ]
    _ = k (symTup c j) := (sb.2.2.1 _ _ k _ _ _).symm

end GlobalTheory.UMin.SymRat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaSymmetricFunctionValuesInGroundField =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaSymmetricFunctionValuesInGroundFieldStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaSymmetricFunctionValuesInGroundFieldStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SymTupOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaSymmetricFunctionValuesInGroundField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.ZM GlobalTheory.ZH GlobalTheory.UMin GlobalTheory.UPoinc GlobalTheory.Ex.OneGen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaSymmetricFunctionValuesInGroundFieldStatement =====
