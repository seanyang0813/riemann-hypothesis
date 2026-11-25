module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpMapGermFromSpec
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppLESecEpsZeroEpsFn
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoToBidualOfLocalFrames
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentSurjective
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualTangentBasisPulledCotangentChartFrame, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualTangentBasisPulledCotangentChartFrameStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualTangentBasisPulledCotangentChartFrame =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualTangentBasisPulledCotangentChartFrame", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpMapGermFromSpec\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppLESecEpsZeroEpsFn\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoToBidualOfLocalFrames\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentSurjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.KeyEven
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open Classical

noncomputable section

namespace GlobalTheory.KeyVals.DualBasis

open GlobalTheory.LieVB GlobalTheory.VB
open ReciprocityTheory.ChartRestriction.G.Pdiv (LieG ptMap dualScale specO)

variable {R : Type} [CommRing R] {G : Over (Sp R)} [GrpObj G]

theorem fst_of_isTangent {w : epsR R ⟶ G} (hw : IsTangent w) :
    ptMap (TrivSqZeroExt.fstHom R R R) ≫ (w : specO R (DualNumber R) ⟶ G) = toUnit (specO R R) ≫ η[G] := by
  have h : (toUnit (specO R R)).left = 𝟙 (Sp R) := by
    rw [Over.toUnit_left]
    exact Spec.map_id _
  ext1
  simp only [Over.comp_left, h]
  exact hw.trans (Category.id_comp _).symm

theorem isTangent_val (x : LieG G) : IsTangent (G := G) x.1 := sec_epsZero_comp x

theorem exists_prod [QuasiSeparated G.hom] (l : List (LieG G)) :
    ∃ p : LieG G, p.1 = (l.map (·.1)).prod ∧ tangent p = (l.map tangent).sum := by
  induction l with
  | nil =>
    refine ⟨⟨1, ?_⟩, rfl, ?_⟩
    · exact comp_one _
    · refine dual_ext fun W _ s => ?_
      have e : cotMap (1 : specO R (DualNumber R) ⟶ G) (epsZero_comp ⟨1, comp_one _⟩) = 0 := cotMap_eq_zero rfl _
      rw [List.map_nil, List.sum_nil]
      exact (congr((epsIso R).hom.app W (($e).app W s))).trans (map_zero _)
  | cons x l ih =>
    obtain ⟨p, hp, hp'⟩ := ih
    refine ⟨⟨x.1 * p.1, OmegaGlobal.fst_mul x p⟩, by simp [hp], ?_⟩
    rw [tangent_mul, hp', List.map_cons, List.sum_cons]

theorem isLieComb_iff [QuasiSeparated G.hom] {n : ℕ} (a : Fin n → R) (v : Fin n → LieG G) (w : LieG G) :
    IsLieComb (G := G) a (fun i => (v i).1) w.1 ↔ tangent w = ∑ i, cst R (a i) • tangent (v i) := by
  let u : Fin n → LieG G := fun i => ⟨ptMap (dualScale (a i)) ≫ (v i).1, OmegaGlobal.fst_scale (a i) (v i)⟩
  have hu (i : Fin n) : (u i).1.left = spMap (epsScaleR (a i)) ≫ (v i).1.left := by
    have ha : (dualScale (a i)).toRingHom = epsScaleR (a i) := by
      ext y <;> simp [dualScale, epsScaleR]
    exact congrArg (fun r => spMap r ≫ (v i).1.left) ha
  obtain ⟨p, hp, hp'⟩ := exists_prod (List.ofFn u)
  rw [List.map_ofFn] at hp hp'
  rw [List.sum_ofFn] at hp'
  have hs : tangent p = ∑ i, cst R (a i) • tangent (v i) :=
    hp'.trans (Finset.sum_congr rfl fun i _ => tangent_scale (a i) (v i) _)
  constructor
  · rintro ⟨u', hu', e⟩
    obtain rfl : u' = fun i => (u i).1 := funext fun i => Over.OverMorphism.ext ((hu' i).trans (hu i).symm)
    obtain rfl : w = p := Subtype.ext (e.trans hp.symm)
    exact hs
  · intro e
    obtain rfl : w = p := tangent_injective R G (e.trans hs.symm)
    exact ⟨fun i => (u i).1, hu, hp⟩

theorem exists_dual_of_isFrame [QuasiSeparated G.hom] {n : ℕ} {e : Fin n → Γ(omega G, ⊤)} (he : IsFrame e) :
    ∃ v : Fin n → LieG G, (∀ j k, dualApp (tangent (v j)) le_top (e k) = if j = k then 1 else 0) ∧
      IsLieBasis (G := G) fun j => (v j).1 := by
  choose v hv using fun j => TangentSurj.tangent_surjective R G (he.coord j)
  refine ⟨v, fun j k => ?_, fun j => isTangent_val (v j), fun w hw => ?_⟩
  · have h := he.dualApp_coord_frame j k le_rfl
    rw [Twist.resM_self] at h
    rw [hv]
    exact h.trans (if_congr eq_comm rfl rfl)
  · have hc : Function.Bijective (cst R) := ConcreteCategory.bijective_of_isIso (Scheme.ΓSpecIso (.of R)).inv
    let b := he.dual.basis le_rfl
    have hb (j : Fin n) : b j = tangent (v j) := by
      rw [hv]
      exact (IsFrame.basis_apply _ _ _).trans (Twist.resM_self _ _)
    have key (a : Fin n → R) := isLieComb_iff a v ⟨w, fst_of_isTangent hw⟩
    simp only [← hb] at key
    choose a ha using fun j => hc.2 (b.repr (tangent ⟨w, fst_of_isTangent hw⟩) j)
    refine ⟨a, (key a).2 ?_, fun a' h' => funext fun j => hc.1 ?_⟩
    · simp only [ha]
      exact (b.sum_repr _).symm
    · rw [ha, (key a').1 h', b.repr_sum_self]

theorem exists_isDual : ∀ (S : Scheme.{0}) (G : Over S) [GrpObj G] (g : ℕ) (c : VB.Chart (LieVB.omega G) g) (R : Type) [CommRing R]
    (ξ : Sp R ⟶ S), IsSemiAbelian G → SmoothOfRelativeDimension g G.hom → ⊤ ≤ ξ ⁻¹ᵁ c.U →
    ∃ y : Fin g → (epsR R ⟶ KeyVals.bG G ξ), KeyVals.IsDual c ξ y ∧ IsLieBasis y := by
  intro S G _ g c R _ ξ hG _ hc
  have h := isGrpPullback_pullback G ξ
  have : QuasiSeparated (bG G ξ).hom := MorphismProperty.of_isPullback h.1 inferInstance
  have h₁ := ((c.isFrame.pullback ξ).res hc).map_iso (omegaBase h)
  have hf : IsFrame (pfr c ξ hc) := by
    convert h₁ using 2 with k
    exact congrArg _ (QCoh.res_pullbackSections ξ _ le_rfl hc (c.e k)).symm
  obtain ⟨v, hv, hb⟩ := exists_dual_of_isFrame hf
  exact ⟨fun j => (v j).1, ⟨hc, fun j => ⟨v j, rfl, hv j⟩⟩, hb⟩

end GlobalTheory.KeyVals.DualBasis

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualTangentBasisPulledCotangentChartFrame =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualTangentBasisPulledCotangentChartFrameStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualTangentBasisPulledCotangentChartFrameStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpMapGermFromSpec\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualTangentBasisPulledCotangentChartFrame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.KeyEven
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open Classical

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualTangentBasisPulledCotangentChartFrameStatement =====
