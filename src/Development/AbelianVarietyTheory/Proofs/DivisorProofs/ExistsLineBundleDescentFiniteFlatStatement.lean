module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DescCocycle
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleTrivialOfGeneratorFpqcDescent
public import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsIsGenOfUniqueFactorizationMonoid
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub
public import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.LengthRestrictScalarsEqSumInertiaDegOfSubset
public import Mathlib.AlgebraicGeometry.Morphisms.Finite
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.BaseChangeKernels.Affine
public import Mathlib.AlgebraicGeometry.Morphisms.Flat
public import Mathlib.AlgebraicGeometry.Noetherian
public import Mathlib.RingTheory.Flat.FaithfullyFlat.Basic
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsUniqueBaseChangeEqOfMem
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
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
import Mathlib.RingTheory.WittVector.IsPoly
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLineBundleDescentToSubfield
import Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsUnitSmulEqOfBijectiveToSpanSingleton
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.IsQuasicoherentOfForallExistsAffine
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Topology.Sheaves.Init

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DescentDatumFrameCocycleUnit, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleOfDescentInvariantFrames, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleTrivialNearFibreFinite, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorSquareEquivFibreSquareSections, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorSquareEquivFibreSquareSectionsStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitBasicOpenOfCoboundaryIdentity, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFaithfullyFlatAlgebraOverAffineOpen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFaithfullyFlatAlgebraOverAffineOpenStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.Hilbert90LocalOfCocycleTensor, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitCocycleDescendsOnTripleOverlaps, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitCocycleDescendsOnTripleOverlapsStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFlatUnitCocycleLocallyCoboundary, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFrameInvariantUnderDescentDatum, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleDescentFiniteFlat, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleDescentFiniteFlatStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DescentDatumFrameCocycleUnit =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DescentDatumFrameCocycleUnit", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DescCocycle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLineBundleDescentToSubfield\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.LBDescent

namespace GlobalTheory.LBDescent

private theorem alg {G : Type*} [CommGroup G] (a P b G₁ G₃ : G) :
    a * P * b⁻¹ = G₁ * a * (G₁⁻¹ * P * G₃) * (G₃⁻¹ * b⁻¹) := by
  rw [mul_comm G₁ a]; group

theorem frame_cocycle {X Y : Scheme.{0}} (f : X ⟶ Y) (L : LB X) (hL : L.IsLB)
    (φ : ∀ i j, Γ(pullback f f, chart f L i j)ˣ) (hC : DescCompat f L φ) (hK : DescCocycle f L φ)
    (V : Y.Opens) (t : ∀ i, Γ(X, f ⁻¹ᵁ V ⊓ L.U i)ˣ) (ht : ∀ (i j : L.ι) (x : X), f x ∈ V → x ∈ L.U i → x ∈ L.U j →
      gm (𝟙 X) x _ (t i) = gm (𝟙 X) x _ (L.g i j) * gm (𝟙 X) x _ (t j)) :
    ∃ c : Γ(pullback f f, pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V)ˣ,
      (∀ (z : ↥(pullback f f)) (i j : L.ι), f (pullback.fst f f z) ∈ V → pullback.fst f f z ∈ L.U i →
        pullback.snd f f z ∈ L.U j →
        gm (𝟙 _) z _ c = gm (pullback.fst f f) z _ (t i) * gm (𝟙 _) z _ (φ i j) * (gm (pullback.snd f f) z _ (t j))⁻¹) ∧
      ∀ w : ↥(Triple f), f (pullback.fst f f (pullback.fst (pullback.snd f f) (pullback.fst f f) w)) ∈ V →
        gm (pullback.fst (pullback.snd f f) (pullback.fst f f)) w _ c *
          gm (pullback.snd (pullback.snd f f) (pullback.fst f f)) w _ c = gm (pr13 f) w _ c := by

  have hf : ∀ z : ↥(pullback f f), f (pullback.snd f f z) = f (pullback.fst f f z) := fun z => by
    change (pullback.snd f f ≫ f) z = (pullback.fst f f ≫ f) z
    rw [pullback.condition]
  set V' : (pullback f f).Opens := pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V with hV'
  let W : L.ι × L.ι → (pullback f f).Opens := fun p => chart f L p.1 p.2 ⊓ V'
  have le1 : ∀ p : L.ι × L.ι, W p ≤ pullback.fst f f ⁻¹ᵁ (f ⁻¹ᵁ V ⊓ L.U p.1) :=
    fun p z hz => ⟨hz.2, hz.1.1⟩
  have le2 : ∀ p : L.ι × L.ι, W p ≤ chart f L p.1 p.2 := fun p => inf_le_left
  have le3 : ∀ p : L.ι × L.ι, W p ≤ pullback.snd f f ⁻¹ᵁ (f ⁻¹ᵁ V ⊓ L.U p.2) :=
    fun p z hz => ⟨show f (pullback.snd f f z) ∈ V by rw [hf]; exact hz.2, hz.1.2⟩
  let u : ∀ p, Γ(pullback f f, W p)ˣ := fun p =>
    res (le1 p) (pullU (pullback.fst f f) _ (t p.1)) * res (le2 p) (φ p.1 p.2) *
      (res (le3 p) (pullU (pullback.snd f f) _ (t p.2)))⁻¹
  have key : ∀ {T : Scheme.{0}} (h : T ⟶ pullback f f) (y : T) (p : L.ι × L.ι) (hy : h y ∈ W p),
      gm h y (W p) (u p) = gm (h ≫ pullback.fst f f) y _ (t p.1) * gm h y _ (φ p.1 p.2) *
        (gm (h ≫ pullback.snd f f) y _ (t p.2))⁻¹ := by
    intro T h y p hy
    simp only [u, map_mul, map_inv]
    rw [gm_res h y (le1 p) hy, gm_res h y (le2 p) hy, gm_res h y (le3 p) hy,
      gm_pull h (pullback.fst f f) y _ (le1 p hy), gm_pull h (pullback.snd f f) y _ (le3 p hy)]

  have tpull : ∀ {T : Scheme.{0}} (h : T ⟶ X) (y : T) (i j : L.ι), f (h y) ∈ V → h y ∈ L.U i → h y ∈ L.U j →
      gm h y _ (t i) = gm h y _ (L.g i j) * gm h y _ (t j) := by
    intro T h y i j hV hi hj
    have hle1 : f ⁻¹ᵁ V ⊓ (L.U i ⊓ L.U j) ≤ f ⁻¹ᵁ V ⊓ L.U i := inf_le_inf_left _ inf_le_left
    have hle2 : f ⁻¹ᵁ V ⊓ (L.U i ⊓ L.U j) ≤ L.U i ⊓ L.U j := inf_le_right
    have hle3 : f ⁻¹ᵁ V ⊓ (L.U i ⊓ L.U j) ≤ f ⁻¹ᵁ V ⊓ L.U j := inf_le_inf_left _ inf_le_right
    have e : res hle1 (t i) = res hle2 (L.g i j) * res hle3 (t j) := by
      apply unit_ext
      intro x hx
      rw [map_mul, gm_res _ x hle1 hx, gm_res _ x hle2 hx, gm_res _ x hle3 hx]
      exact ht i j x hx.1 hx.2.1 hx.2.2
    have hm : h y ∈ f ⁻¹ᵁ V ⊓ (L.U i ⊓ L.U j) := ⟨hV, hi, hj⟩
    have := congrArg (gm h y _) e
    rwa [map_mul, gm_res h y hle1 hm, gm_res h y hle2 hm, gm_res h y hle3 hm] at this
  have hW : ∀ p, W p ≤ V' := fun p => inf_le_right
  have hcov : V' ≤ iSup W := by
    intro z hz
    obtain ⟨i, hi⟩ := exists_chart hL (pullback.fst f f z)
    obtain ⟨j, hj⟩ := exists_chart hL (pullback.snd f f z)
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨(i, j), ⟨hi, hj⟩, hz⟩
  have hagree : ∀ p q, ∀ x ∈ W p ⊓ W q, gm (𝟙 _) x (W p) (u p) = gm (𝟙 _) x (W q) (u q) := by
    rintro ⟨i, j⟩ ⟨i', j'⟩ x ⟨hp, hq⟩
    rw [key (𝟙 _) x _ hp, key (𝟙 _) x _ hq]
    simp only [Category.id_comp]
    have hx1 : f (pullback.fst f f x) ∈ V := hp.2
    have hx2 : f (pullback.snd f f x) ∈ V := by rw [hf]; exact hx1
    rw [tpull (pullback.fst f f) x i' i hx1 hq.1.1 hp.1.1, tpull (pullback.snd f f) x j' j hx2 hq.1.2 hp.1.2,
      hC x i i' j j' hp.1.1 hq.1.1 hp.1.2 hq.1.2]
    have hg : gm (pullback.fst f f) x _ (L.g i' i) * gm (pullback.fst f f) x _ (L.g i i') = 1 := by
      rw [gm_cocycle hL _ x hq.1.1 hp.1.1 hq.1.1, gm_self hL _ x hq.1.1]
    rw [eq_inv_of_mul_eq_one_right hg, mul_inv]
    exact alg _ _ _ _ _
  obtain ⟨c, hc⟩ := glue_unit V' W hW hcov u hagree
  have cgerm : ∀ {T : Scheme.{0}} (h : T ⟶ pullback f f) (y : T) (p : L.ι × L.ι) (hy : h y ∈ W p),
      gm h y V' c = gm (h ≫ pullback.fst f f) y _ (t p.1) * gm h y _ (φ p.1 p.2) *
        (gm (h ≫ pullback.snd f f) y _ (t p.2))⁻¹ := by
    intro T h y p hy
    rw [← key h y p hy, ← hc p, gm_res h y (hW p) hy]
  refine ⟨c, ?_, ?_⟩
  · intro z i j hV hi hj
    have := cgerm (𝟙 _) z (i, j) ⟨⟨hi, hj⟩, hV⟩
    simpa only [Category.id_comp] using this
  · intro w hV
    set q₁ := pullback.fst (pullback.snd f f) (pullback.fst f f)
    set q₂ := pullback.snd (pullback.snd f f) (pullback.fst f f)
    have hmid : q₁ ≫ pullback.snd f f = q₂ ≫ pullback.fst f f := pullback.condition
    have h13a : pr13 f ≫ pullback.fst f f = q₁ ≫ pullback.fst f f := by unfold pr13; exact pullback.lift_fst _ _ _
    have h13b : pr13 f ≫ pullback.snd f f = q₂ ≫ pullback.snd f f := by unfold pr13; exact pullback.lift_snd _ _ _
    have pmid : pullback.snd f f (q₁ w) = pullback.fst f f (q₂ w) := by
      change (q₁ ≫ pullback.snd f f) w = (q₂ ≫ pullback.fst f f) w
      rw [hmid]
    have p13a : pullback.fst f f (pr13 f w) = pullback.fst f f (q₁ w) := by
      change (pr13 f ≫ pullback.fst f f) w = (q₁ ≫ pullback.fst f f) w
      rw [h13a]
    have p13b : pullback.snd f f (pr13 f w) = pullback.snd f f (q₂ w) := by
      change (pr13 f ≫ pullback.snd f f) w = (q₂ ≫ pullback.snd f f) w
      rw [h13b]
    obtain ⟨i, hi⟩ := exists_chart hL (pullback.fst f f (q₁ w))
    obtain ⟨j, hj⟩ := exists_chart hL (pullback.snd f f (q₁ w))
    obtain ⟨k, hk⟩ := exists_chart hL (pullback.snd f f (q₂ w))
    have hV2 : f (pullback.fst f f (q₂ w)) ∈ V := by rw [← pmid, hf]; exact hV
    have hV3 : f (pullback.fst f f (pr13 f w)) ∈ V := by rw [p13a]; exact hV
    have m1 : q₁ w ∈ W (i, j) := ⟨⟨hi, hj⟩, hV⟩
    have m2 : q₂ w ∈ W (j, k) := ⟨⟨show pullback.fst f f (q₂ w) ∈ L.U j by rw [← pmid]; exact hj, hk⟩, hV2⟩
    have m3 : pr13 f w ∈ W (i, k) := ⟨⟨show pullback.fst f f (pr13 f w) ∈ L.U i by rw [p13a]; exact hi,
      show pullback.snd f f (pr13 f w) ∈ L.U k by rw [p13b]; exact hk⟩, hV3⟩
    rw [cgerm q₁ w (i, j) m1, cgerm q₂ w (j, k) m2, cgerm (pr13 f) w (i, k) m3, hmid, h13a, h13b,
      ← hK w i j k hi hj hk]
    dsimp only
    simp only [q₁, q₂]
    group

end GlobalTheory.LBDescent
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DescentDatumFrameCocycleUnit =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleOfDescentInvariantFrames =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleOfDescentInvariantFrames", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DescCocycle\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleTrivialOfGeneratorFpqcDescent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLineBundleDescentToSubfield\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.LBDescent

namespace GlobalTheory.LBDescent

private theorem ratio_eq {G : Type} [CommGroup G] (A B C D g : G) (h1 : A = g * B) (h2 : C = g * D) :
    C * A⁻¹ = D * B⁻¹ := by
  subst h1 h2; rw [mul_inv_rev, mul_comm g D, _root_.mul_assoc, mul_inv_cancel_comm_assoc]

private theorem ratio_mul {G : Type} [CommGroup G] (A B C : G) : (B * A⁻¹) * (C * B⁻¹) = C * A⁻¹ := by
  rw [mul_comm (B * A⁻¹), _root_.mul_assoc, inv_mul_cancel_left]

private theorem ratio_inv {G : Type} [CommGroup G] (A S g T : G) (h : S = g * T) :
    A⁻¹ = S * A⁻¹ * g⁻¹ * T⁻¹ := by
  rw [_root_.mul_assoc _ g⁻¹, ← mul_inv, ← h, mul_inv_cancel_comm]

theorem exists_lb_of_invariant_frames : ∀ {X Y : Scheme.{0}} (f : X ⟶ Y) [QuasiCompact f] [Flat f] [Surjective f] (L : LB X), L.IsLB →
    ∀ (φ : ∀ i j, Γ(pullback f f, chart f L i j)ˣ),
    (∀ y : Y, ∃ V : Y.Opens, y ∈ V ∧ ∃ s : ∀ i, Γ(X, f ⁻¹ᵁ V ⊓ L.U i)ˣ,
      (∀ (i j : L.ι) (x : X), f x ∈ V → x ∈ L.U i → x ∈ L.U j →
        gm (𝟙 X) x _ (s i) = gm (𝟙 X) x _ (L.g i j) * gm (𝟙 X) x _ (s j)) ∧
      ∀ (z : ↥(pullback f f)) (i j : L.ι), f (pullback.fst f f z) ∈ V → pullback.fst f f z ∈ L.U i →
        pullback.snd f f z ∈ L.U j →
        gm (pullback.fst f f) z _ (s i) * gm (𝟙 _) z _ (φ i j) = gm (pullback.snd f f) z _ (s j)) →
    ∃ L' : LB Y, L'.IsLB ∧ LBIso L (L'.pull f) := by
  intro X Y f _ _ _ L hL φ H
  choose V hV s hs1 hs2 using H
  have hW : ∀ a b i, f ⁻¹ᵁ (V a ⊓ V b) ⊓ L.U i ≤ f ⁻¹ᵁ (V a ⊓ V b) := fun a b i => inf_le_left
  have lb : ∀ a b i, f ⁻¹ᵁ (V a ⊓ V b) ⊓ L.U i ≤ f ⁻¹ᵁ V b ⊓ L.U i := fun a b i x hx => ⟨hx.1.2, hx.2⟩
  have la : ∀ a b i, f ⁻¹ᵁ (V a ⊓ V b) ⊓ L.U i ≤ f ⁻¹ᵁ V a ⊓ L.U i := fun a b i x hx => ⟨hx.1.1, hx.2⟩
  have hex : ∀ a b, ∃ t : Γ(X, f ⁻¹ᵁ (V a ⊓ V b))ˣ, ∀ i,
      res (hW a b i) t = res (lb a b i) (s b i) * (res (la a b i) (s a i))⁻¹ := by
    intro a b
    refine glue_unit _ _ (hW a b) ?_ _ ?_
    · intro x hx
      obtain ⟨i, hi⟩ := exists_chart hL x
      exact TopologicalSpace.Opens.mem_iSup.2 ⟨i, hx, hi⟩
    · intro i j x hx
      simp only [map_mul, map_inv]
      rw [gm_res _ x (lb a b i) hx.1, gm_res _ x (la a b i) hx.1, gm_res _ x (lb a b j) hx.2,
        gm_res _ x (la a b j) hx.2]
      exact ratio_eq _ _ _ _ _ (hs1 a i j x hx.1.1.1 hx.1.2 hx.2.2) (hs1 b i j x hx.1.1.2 hx.1.2 hx.2.2)
  choose t ht using hex
  have tform : ∀ a b {Z : Scheme.{0}} (g : Z ⟶ X) (z : Z) (i : L.ι), f (g z) ∈ V a → f (g z) ∈ V b →
      g z ∈ L.U i → gm g z _ (t a b) = gm g z _ (s b i) * (gm g z _ (s a i))⁻¹ := by
    intro a b Z g z i ha hb hi
    have hm : g z ∈ f ⁻¹ᵁ (V a ⊓ V b) ⊓ L.U i := ⟨⟨ha, hb⟩, hi⟩
    rw [← gm_res g z (hW a b i) hm, ht a b i, map_mul, map_inv, gm_res g z (lb a b i) hm,
      gm_res g z (la a b i) hm]
  have hk : ∀ a b, ∃ k : Γ(Y, V a ⊓ V b)ˣ, pullU f _ k = t a b := by
    intro a b
    refine GlobalTheory.FlatDescent.exists_unit_of_gm_eq f (IsPullback.of_hasPullback f f) _ _ fun z hz => ?_
    obtain ⟨i, hi⟩ := exists_chart hL (pullback.fst f f z)
    obtain ⟨j, hj⟩ := exists_chart hL (pullback.snd f f z)
    have e : f (pullback.snd f f z) = f (pullback.fst f f z) :=
      congrArg (fun q : pullback f f ⟶ Y => q z) pullback.condition.symm
    rw [tform a b _ z i hz.1 hz.2 hi, tform a b _ z j (e ▸ hz.1) (e ▸ hz.2) hj,
      ← hs2 a z i j hz.1 hi hj, ← hs2 b z i j hz.2 hi hj]
    group
  choose k hk using hk
  have kform : ∀ a b (x : X) (i : L.ι), f x ∈ V a → f x ∈ V b → x ∈ L.U i →
      gm f x (V a ⊓ V b) (k a b) = gm (𝟙 X) x _ (s b i) * (gm (𝟙 X) x _ (s a i))⁻¹ := by
    intro a b x i ha hb hi
    have := gm_pull (𝟙 X) f x (V a ⊓ V b) ⟨ha, hb⟩ (k a b)
    rw [Category.id_comp, hk] at this
    rw [← this]
    exact tform a b (𝟙 X) x i ha hb hi
  have hL' : LB.IsLB (⟨Y, V, k⟩ : LB Y) := by
    refine ⟨?_, fun a => ?_, fun a b c => ?_⟩
    · exact eq_top_iff.2 fun y _ => TopologicalSpace.Opens.mem_iSup.2 ⟨y, hV y⟩
    · refine GlobalTheory.FlatDescent.unit_ext_of_flat f fun x hx => ?_
      obtain ⟨i, hi⟩ := exists_chart hL x
      rw [gm_res f x _ hx, map_one]
      exact (kform a a x i hx hx hi).trans (mul_inv_cancel _)
    · refine GlobalTheory.FlatDescent.unit_ext_of_flat f fun x hx => ?_
      obtain ⟨i, hi⟩ := exists_chart hL x
      rw [map_mul, gm_res f x _ hx, gm_res f x _ hx, gm_res f x _ hx]
      exact ((congrArg₂ (· * ·) (kform a b x i hx.1.1 hx.1.2 hi) (kform b c x i hx.1.2 hx.2 hi)).trans
        (ratio_mul _ _ _)).trans (kform a c x i hx.1.1 hx.2 hi).symm
  have le1 : ∀ (J : PUnit → Y) (i : L.ι), ((⟨Y, V, k⟩ : LB Y).pull f).U J ⊓ L.U i ≤ f ⁻¹ᵁ V (J PUnit.unit) ⊓ L.U i :=
    fun J i x hx => ⟨mem_pull.1 hx.1, hx.2⟩
  refine ⟨⟨Y, V, k⟩, hL', ⟨fun p => (res (le1 p.1 p.2) (s (p.1 PUnit.unit) p.2))⁻¹⟩, ?_⟩
  rintro ⟨J, i⟩ ⟨J', i'⟩
  apply unit_ext
  intro x hx
  have hj := mem_pull.1 hx.1.1
  have hj' := mem_pull.1 hx.2.1
  have d := gm_div_g (L := (⟨Y, V, k⟩ : LB Y)) (L' := L) (F := f) (𝟙 X) x (J PUnit.unit) (J' PUnit.unit) i i'
    hj hj' hx.1.2 hx.2.2
  rw [map_mul, gm_res _ x _ hx, gm_res _ x _ hx]
  erw [d]
  erw [map_inv, map_inv, gm_res (𝟙 X) x (le1 J i) (show x ∈ ((⟨Y, V, k⟩ : LB Y).pull f).U J ⊓ L.U i from hx.1),
    gm_res (𝟙 X) x (le1 J' i') (show x ∈ ((⟨Y, V, k⟩ : LB Y).pull f).U J' ⊓ L.U i' from hx.2)]
  rw [Category.id_comp]
  erw [kform (J PUnit.unit) (J' PUnit.unit) x i hj hj' hx.1.2]
  exact ratio_inv _ _ _ _ (hs1 (J' PUnit.unit) i i' x hj' hx.1.2 hx.2.2)
end GlobalTheory.LBDescent
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleOfDescentInvariantFrames =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleTrivialNearFibreFinite =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleTrivialNearFibreFinite", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsIsGenOfUniqueFactorizationMonoid\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub\nimport Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsUnitSmulEqOfBijectiveToSpanSingleton\nimport Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.IsQuasicoherentOfForallExistsAffine\npublic import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.LengthRestrictScalarsEqSumInertiaDegOfSubset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLineBundleDescentToSubfield\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.LBDescent

noncomputable section
namespace GlobalTheory.LBDescent

theorem exists_smul_mem_span_away {R S M : Type} [CommRing R] [CommRing S] [Algebra R S]
    [Module.Finite R S] [AddCommGroup M] [Module S M] [Module.Invertible S M]
    (p : Ideal R) [p.IsPrime] :
    ∃ r : R, r ∉ p ∧ ∃ m : M, ∀ x : M, ∃ a : S, algebraMap R S r • x = a • m := by
  classical
  let Q : Submonoid S := Algebra.algebraMapSubmonoid S p.primeCompl
  let T := Localization Q
  letI : Algebra (Localization.AtPrime p) T := localizationAlgebra p.primeCompl S
  haveI : Module.Finite (Localization.AtPrime p) T :=
    Module.Finite.of_isLocalization R S p.primeCompl
  haveI : Finite (MaximalSpectrum T) :=
    GlobalTheory.finite_maximalSpectrum_of_finite (Localization.AtPrime p) T
  obtain ⟨z, hz⟩ :=
    GlobalTheory.exists_bijective_toSpanSingleton_of_finite_maximalSpectrum T (LocalizedModule Q M)
  induction z using LocalizedModule.induction_on with
  | h m s =>
  have hloc : ∀ x : M, ∃ q ∈ Q, q • x ∈ Submodule.span S {m} := by
    intro x
    obtain ⟨c, hc⟩ := hz.2 (LocalizedModule.mk x 1)
    induction c using Localization.induction_on with
    | H c =>
    obtain ⟨a, t⟩ := c
    rw [LinearMap.toSpanSingleton_apply, LocalizedModule.mk_smul_mk, LocalizedModule.mk_eq] at hc
    obtain ⟨u, hu⟩ := hc
    refine ⟨(u : S) * ((t : S) * (s : S)), Q.mul_mem u.2 (Q.mul_mem t.2 s.2), ?_⟩
    rw [mul_smul, mul_smul]
    have hu' : (u : S) • (((t * s : Q) : S)) • x = (u : S) • ((1 : Q) : S) • a • m := hu.symm
    rw [Submonoid.coe_mul] at hu'
    rw [mul_smul] at hu'
    rw [hu', Submodule.mem_span_singleton]
    exact ⟨(u : S) * a, by simp [mul_smul]⟩
  choose q hqQ hq using hloc
  obtain ⟨F, hF⟩ := Module.Finite.fg_top (R := S) (M := M)
  let q₀ : S := ∏ x ∈ F, q x
  have hq₀ : q₀ ∈ Q := Q.prod_mem fun x _ => hqQ x
  have key : ∀ y ∈ Submodule.span S (F : Set M), q₀ • y ∈ Submodule.span S {m} := by
    intro y hy
    induction hy using Submodule.span_induction with
    | mem x hx =>
      have : q₀ = (∏ x' ∈ F.erase x, q x') * q x := (Finset.prod_erase_mul F q hx).symm
      rw [this, mul_smul]
      exact Submodule.smul_mem _ _ (hq x)
    | zero => rw [smul_zero]; exact Submodule.zero_mem _
    | add y₁ y₂ _ _ h₁ h₂ => rw [smul_add]; exact Submodule.add_mem _ h₁ h₂
    | smul a y _ h => rw [smul_comm]; exact Submodule.smul_mem _ _ h
  obtain ⟨r, hr, hrq⟩ := hq₀
  refine ⟨r, hr, m, fun x => ?_⟩
  have := key x (hF ▸ Submodule.mem_top)
  rw [Submodule.mem_span_singleton] at this
  obtain ⟨a, ha⟩ := this
  exact ⟨a, by rw [hrq]; exact ha.symm⟩

theorem isFrame_res_of_smul_mem {X : Scheme.{0}} {L : LB X} (hL : L.IsLB) {U : X.Opens}
    (hU : IsAffineOpen U) (h : Γ(X, U)) (m : Γ(GlobalTheory.LB.toMod L, U))
    (hm : ∀ x : Γ(GlobalTheory.LB.toMod L, U), ∃ a : Γ(X, U), h • x = a • m) :
    GlobalTheory.LB.IsFrame ((GlobalTheory.LB.toMod L).presheaf.map (homOfLE (X.basicOpen_le h)).op m) := by
  haveI := GlobalTheory.LB.isQuasicoherent_toMod hL
  have hD : IsAffineOpen (X.basicOpen h) := hU.basicOpen h
  haveI := GlobalTheory.LB.invertible_sections hL hD
  rw [GlobalTheory.LB.isFrame_iff_bijective hD]
  have h₁ := ((GlobalTheory.QCoh.isLocalizedModule_resBasicOpen_iff (GlobalTheory.LB.toMod L) h).1
    (GlobalTheory.QCoh.isLocalizedModule_resBasicOpen (GlobalTheory.LB.toMod L) hU h)).1
  refine Module.Invertible.bijective_of_surjective
    (f := LinearMap.toSpanSingleton Γ(X, X.basicOpen h) _
      ((GlobalTheory.LB.toMod L).presheaf.map (homOfLE (X.basicOpen_le h)).op m)) ?_
  intro s
  obtain ⟨n, t, ht⟩ := h₁ s
  obtain ⟨a, ha⟩ := hm t
  obtain ⟨u, hu⟩ := GlobalTheory.QCoh.isUnit_res_of_le_basicOpen h (X.basicOpen_le h) le_rfl
  have e1 := GlobalTheory.LB.map_smul_resG (F := GlobalTheory.LB.toMod L) (X.basicOpen_le h) h t
  rw [ha, GlobalTheory.LB.map_smul_resG] at e1
  refine ⟨((u⁻¹ : Γ(X, X.basicOpen h)ˣ) : Γ(X, X.basicOpen h)) ^ (n + 1) *
    resG X (X.basicOpen_le h) a, ?_⟩
  rw [← hu] at ht
  have hu' : resG X (X.basicOpen_le h) h = (u : Γ(X, X.basicOpen h)) := hu.symm
  rw [hu', ← ht, ← mul_smul] at e1
  rw [LinearMap.toSpanSingleton_apply, mul_smul, e1, ← mul_smul, ← pow_succ', ← mul_pow,
    Units.inv_mul, one_pow, one_smul]

theorem exists_trivial_near_fibre : ∀ {X Y : Scheme.{0}} (f : X ⟶ Y) [IsFinite f] (L : LB X), L.IsLB →
    ∀ y : Y, ∃ V : Y.Opens, y ∈ V ∧
    ∃ t : ∀ i, Γ(X, f ⁻¹ᵁ V ⊓ L.U i)ˣ, ∀ (i j : L.ι) (x : X), f x ∈ V → x ∈ L.U i → x ∈ L.U j →
      gm (𝟙 X) x _ (t i) = gm (𝟙 X) x _ (L.g i j) * gm (𝟙 X) x _ (t j) := by
  intro X Y f _ L hL y
  obtain ⟨W, hW, hyW, -⟩ : ∃ W ∈ Y.affineOpens, y ∈ W ∧ W ≤ ⊤ := (TopologicalSpace.Opens.isBasis_iff_nbhd.mp Y.isBasis_affineOpens)
    (show y ∈ (⊤ : Y.Opens) from trivial)
  let p : Ideal Γ(Y, W) :=
    (IsLocalRing.maximalIdeal (Y.presheaf.stalk y)).comap (Y.presheaf.germ W y hyW).hom
  letI : Algebra Γ(Y, W) Γ(X, f ⁻¹ᵁ W) := (f.app W).hom.toAlgebra
  haveI : Module.Finite Γ(Y, W) Γ(X, f ⁻¹ᵁ W) := f.finite_app W hW
  have hW : IsAffineOpen W := hW
  have hU : IsAffineOpen (f ⁻¹ᵁ W) := hW.preimage f
  haveI := GlobalTheory.LB.invertible_sections hL hU
  obtain ⟨r, hr, m, hm⟩ := exists_smul_mem_span_away (R := Γ(Y, W)) (S := Γ(X, f ⁻¹ᵁ W))
    (M := Γ(GlobalTheory.LB.toMod L, f ⁻¹ᵁ W)) p
  have he := isFrame_res_of_smul_mem hL hU (f.app W r) m hm
  have hpre : f ⁻¹ᵁ Y.basicOpen r = X.basicOpen (f.app W r) := Scheme.preimage_basicOpen f r
  refine ⟨Y.basicOpen r, ?_, ?_⟩
  · rw [Scheme.mem_basicOpen (x := y) (hx := hyW)]
    by_contra hn
    exact hr ((IsLocalRing.mem_maximalIdeal _).2 hn)
  let F := GlobalTheory.LB.toMod L
  let e : Γ(F, f ⁻¹ᵁ Y.basicOpen r) :=
    F.presheaf.map (homOfLE hpre.le).op (F.presheaf.map (homOfLE (X.basicOpen_le _)).op m)
  have he' : GlobalTheory.LB.IsFrame e := he.map hpre.le
  let u : ∀ i, Γ(X, f ⁻¹ᵁ Y.basicOpen r ⊓ L.U i)ˣ := fun i =>
    (GlobalTheory.LB.isFrame_chartSec hL i).unit he' inf_le_right inf_le_left
  have hu : ∀ i, ((u i : Γ(X, f ⁻¹ᵁ Y.basicOpen r ⊓ L.U i)ˣ) : Γ(X, f ⁻¹ᵁ Y.basicOpen r ⊓ L.U i)) =
      GlobalTheory.LB.coord e i := fun i => by
    rw [GlobalTheory.LB.IsFrame.val_unit]
    apply GlobalTheory.LB.IsFrame.repr_eq
    apply Subtype.ext
    funext j
    change GlobalTheory.LB.coord (GlobalTheory.LB.coord e i •
      (GlobalTheory.LB.toMod L).presheaf.map (homOfLE inf_le_right).op
        (GlobalTheory.LB.chartSec hL i)) j =
      GlobalTheory.LB.coord ((GlobalTheory.LB.toMod L).presheaf.map
        (homOfLE inf_le_left).op e) j
    simp only [GlobalTheory.LB.coord_smul, GlobalTheory.LB.coord_map,
      GlobalTheory.LB.coord_chartSec, GlobalTheory.LB.resG_resG]
    rw [mul_comm]
    exact (GlobalTheory.LB.coord_rel e j i _ _ _).symm
  refine ⟨u, fun i j x hxV hi hj => ?_⟩
  have hxO : x ∈ f ⁻¹ᵁ Y.basicOpen r ⊓ L.U i ⊓ L.U j := ⟨⟨hxV, hi⟩, hj⟩
  rw [← gm_res (𝟙 X) x (inf_le_left : f ⁻¹ᵁ Y.basicOpen r ⊓ L.U i ⊓ L.U j ≤ _) hxO,
    ← gm_res (𝟙 X) x (le_inf (inf_le_left.trans inf_le_right) inf_le_right :
      f ⁻¹ᵁ Y.basicOpen r ⊓ L.U i ⊓ L.U j ≤ L.U i ⊓ L.U j) hxO,
    ← gm_res (𝟙 X) x (le_inf (inf_le_left.trans inf_le_left) inf_le_right :
      f ⁻¹ᵁ Y.basicOpen r ⊓ L.U i ⊓ L.U j ≤ f ⁻¹ᵁ Y.basicOpen r ⊓ L.U j) hxO, ← map_mul]
  congr 1
  apply Units.ext
  rw [Units.val_mul, GlobalTheory.LB.val_res, GlobalTheory.LB.val_res, GlobalTheory.LB.val_res, hu, hu]
  exact GlobalTheory.LB.coord_rel e i j _ _ _

end GlobalTheory.LBDescent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleTrivialNearFibreFinite =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorSquareEquivFibreSquareSections =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorSquareEquivFibreSquareSections", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Finite\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.BaseChangeKernels.Affine\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLineBundleDescentToSubfield\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.LBDescent
open TensorProduct

noncomputable section

namespace GlobalTheory.LBDescent

theorem exists_tensorSquare_equiv_sections {X Y : Scheme.{0}} (f : X ⟶ Y) [IsFinite f] (V₀ : Y.Opens)
    (hV₀ : IsAffineOpen V₀)
    (h : pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀ ≤ pullback.snd f f ⁻¹ᵁ f ⁻¹ᵁ V₀) :
    letI : Algebra Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀) := (f.app V₀).hom.toAlgebra
    ∃ e : Γ(X, f ⁻¹ᵁ V₀) ⊗[Γ(Y, V₀)] Γ(X, f ⁻¹ᵁ V₀) ≃+* Γ(pullback f f, pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀),
      ∀ a b : Γ(X, f ⁻¹ᵁ V₀), e (a ⊗ₜ b) =
        ((pullback.fst f f).app (f ⁻¹ᵁ V₀)).hom a * ((pullback.snd f f).appLE (f ⁻¹ᵁ V₀) _ h).hom b := by
  letI : Algebra Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀) := (f.app V₀).hom.toAlgebra
  have hV' : IsAffineOpen (f ⁻¹ᵁ V₀) := hV₀.preimage f
  have P := ReciprocityTheory.ChartRestriction.G.Out.GtBCPf.isPushout_appLE (IsPullback.of_hasPullback f f).flip
    inferInstance hV₀ hV' le_rfl h
  rw [Scheme.Hom.appLE_eq_app] at P
  have T := CommRingCat.isPushout_tensorProduct Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀) Γ(X, f ⁻¹ᵁ V₀)
  let I := IsPushout.isoIsPushout _ _ T P.flip
  refine ⟨I.commRingCatIsoToRingEquiv, fun a b => ?_⟩
  have h1 : I.hom.hom (a ⊗ₜ 1) = ((pullback.fst f f).app (f ⁻¹ᵁ V₀)).hom a :=
    congrArg (fun t => t.hom a) (IsPushout.inl_isoIsPushout_hom _ _ T P.flip)
  have h2 : I.hom.hom (1 ⊗ₜ b) = ((pullback.snd f f).appLE (f ⁻¹ᵁ V₀) _ h).hom b :=
    congrArg (fun t => t.hom b) (IsPushout.inr_isoIsPushout_hom _ _ T P.flip)
  have hab : (a ⊗ₜ[Γ(Y, V₀)] b : Γ(X, f ⁻¹ᵁ V₀) ⊗[Γ(Y, V₀)] Γ(X, f ⁻¹ᵁ V₀)) = (a ⊗ₜ 1) * (1 ⊗ₜ b) := by
    rw [Algebra.TensorProduct.tmul_mul_tmul, _root_.mul_one, _root_.one_mul]
  change I.hom.hom (a ⊗ₜ b) = _
  rw [hab, map_mul, h1, h2]

end GlobalTheory.LBDescent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorSquareEquivFibreSquareSections =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorSquareEquivFibreSquareSectionsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorSquareEquivFibreSquareSectionsStatement", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Finite\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorSquareEquivFibreSquareSections\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLineBundleDescentToSubfield\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.LBDescent
open TensorProduct

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorSquareEquivFibreSquareSectionsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitBasicOpenOfCoboundaryIdentity =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitBasicOpenOfCoboundaryIdentity", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLineBundleDescentToSubfield\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.LBDescent
open TensorProduct

namespace GlobalTheory.LBDescent

theorem coboundary_unit_basicOpen : ∀ {X Y : Scheme.{0}} (f : X ⟶ Y) (V V₀ : Y.Opens)
    (h : pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀ ≤ pullback.snd f f ⁻¹ᵁ f ⁻¹ᵁ V₀)
    (hle : pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀ ≤ pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V) (c : Γ(pullback f f, pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V)ˣ)
    (r : Γ(Y, V₀)) (m s : Γ(X, f ⁻¹ᵁ V₀)) (n : ℕ),
    ((pullback.fst f f).app (f ⁻¹ᵁ V₀)).hom m * (res hle c).val = ((pullback.snd f f).appLE (f ⁻¹ᵁ V₀) _ h).hom m →
    m * s = (f.app V₀).hom r ^ n →
    ∃ u : Γ(X, f ⁻¹ᵁ Y.basicOpen r)ˣ, ∀ z : ↥(pullback f f), f (pullback.fst f f z) ∈ Y.basicOpen r →
      gm (pullback.fst f f) z _ u * gm (𝟙 _) z _ c = gm (pullback.snd f f) z _ u := by
  intro X Y f V V₀ h hle c r m s n hm hs
  have hD : Y.basicOpen r ≤ V₀ := Y.basicOpen_le r
  have hfD : f ⁻¹ᵁ Y.basicOpen r ≤ f ⁻¹ᵁ V₀ := fun x hx => hD hx
  have hB : f ⁻¹ᵁ Y.basicOpen r ≤ X.basicOpen ((f.app V₀).hom r) := (Scheme.preimage_basicOpen f r).le
  have hunitA : IsUnit ((X.presheaf.map (homOfLE hfD).op).hom ((f.app V₀).hom r)) := by
    have h1 : IsUnit ((X.presheaf.map (homOfLE (X.basicOpen_le ((f.app V₀).hom r))).op).hom ((f.app V₀).hom r)) :=
      RingedSpace.isUnit_res_basicOpen X.toRingedSpace _
    have h2 := h1.map (X.presheaf.map (homOfLE hB).op).hom
    rw [← CommRingCat.comp_apply, ← Functor.map_comp] at h2
    exact h2
  have hunit : IsUnit ((X.presheaf.map (homOfLE hfD).op).hom m) := by
    apply isUnit_of_mul_isUnit_left (y := (X.presheaf.map (homOfLE hfD).op).hom s)
    rw [← map_mul, hs, map_pow]
    exact hunitA.pow n
  refine ⟨hunit.unit, fun z hz => ?_⟩
  have e : f (pullback.snd f f z) = f (pullback.fst f f z) := by
    rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, pullback.condition]
  have hz1 : pullback.fst f f z ∈ f ⁻¹ᵁ Y.basicOpen r := hz
  have hz2 : pullback.snd f f z ∈ f ⁻¹ᵁ Y.basicOpen r := by
    show f (pullback.snd f f z) ∈ Y.basicOpen r
    rw [e]; exact hz
  have hz0 : z ∈ pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀ := hD hz
  have hzV : z ∈ pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V := hle hz0
  apply Units.ext
  rw [Units.val_mul, gm_val _ z _ hz1, gm_val _ z _ hzV, gm_val _ z _ hz2, IsUnit.unit_spec]
  have k1 : ((pullback f f).presheaf.germ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ Y.basicOpen r) z hz1).hom
      (((pullback.fst f f).app (f ⁻¹ᵁ Y.basicOpen r)).hom ((X.presheaf.map (homOfLE hfD).op).hom m)) =
      ((pullback f f).presheaf.germ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) z hz0).hom
        (((pullback.fst f f).app (f ⁻¹ᵁ V₀)).hom m) := by
    have e1 := congrArg (fun q => q.hom m) ((pullback.fst f f).naturality (homOfLE hfD).op)
    simp only [CommRingCat.hom_comp, RingHom.comp_apply] at e1
    rw [e1]; exact TopCat.Presheaf.germ_res_apply _ _ _ _ _
  have hz0' : z ∈ pullback.snd f f ⁻¹ᵁ f ⁻¹ᵁ V₀ := h hz0
  have k2 : ((pullback f f).presheaf.germ (pullback.snd f f ⁻¹ᵁ f ⁻¹ᵁ Y.basicOpen r) z hz2).hom
      (((pullback.snd f f).app (f ⁻¹ᵁ Y.basicOpen r)).hom ((X.presheaf.map (homOfLE hfD).op).hom m)) =
      ((pullback f f).presheaf.germ (pullback.snd f f ⁻¹ᵁ f ⁻¹ᵁ V₀) z hz0').hom
        (((pullback.snd f f).app (f ⁻¹ᵁ V₀)).hom m) := by
    have e1 := congrArg (fun q => q.hom m) ((pullback.snd f f).naturality (homOfLE hfD).op)
    simp only [CommRingCat.hom_comp, RingHom.comp_apply] at e1
    rw [e1]; exact TopCat.Presheaf.germ_res_apply _ _ _ _ _
  have k4 : ((pullback f f).presheaf.germ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) z hz0).hom
      (((pullback.snd f f).appLE (f ⁻¹ᵁ V₀) _ h).hom m) =
      ((pullback f f).presheaf.germ (pullback.snd f f ⁻¹ᵁ f ⁻¹ᵁ V₀) z hz0').hom
        (((pullback.snd f f).app (f ⁻¹ᵁ V₀)).hom m) := by
    simp only [Scheme.Hom.appLE, CommRingCat.hom_comp, RingHom.comp_apply]
    exact TopCat.Presheaf.germ_res_apply _ _ _ _ _
  have k3 : ((pullback f f).presheaf.germ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) z hz0).hom ((res hle c).val) =
      ((pullback f f).presheaf.germ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V) z hzV).hom c.val := by
    simp only [res, Units.coe_map, MonoidHom.coe_coe]
    exact TopCat.Presheaf.germ_res_apply _ _ _ _ _
  have hm' := congrArg ((pullback f f).presheaf.germ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) z hz0).hom hm
  rw [map_mul, k3, k4] at hm'
  rw [k1, k2, ← hm']
  congr 1

end GlobalTheory.LBDescent
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitBasicOpenOfCoboundaryIdentity =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFaithfullyFlatAlgebraOverAffineOpen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFaithfullyFlatAlgebraOverAffineOpen", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Finite\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Mathlib.AlgebraicGeometry.Noetherian\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLineBundleDescentToSubfield\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.LBDescent
open TensorProduct

namespace GlobalTheory

theorem finiteFlatSurj_affine_algebra : ∀ {X Y : Scheme.{0}} (f : X ⟶ Y) [IsFinite f] [Flat f] [Surjective f] [IsLocallyNoetherian Y] (V₀ : Y.Opens), IsAffineOpen V₀ →
    letI : Algebra Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀) := (f.app V₀).hom.toAlgebra
    IsNoetherianRing Γ(Y, V₀) ∧ Module.Finite Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀) ∧ Module.FaithfullyFlat Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀) := by
  intro X Y f _ _ _ _ V₀ hV₀
  letI : Algebra Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀) := (f.app V₀).hom.toAlgebra
  have hV : IsAffineOpen (f ⁻¹ᵁ V₀) := hV₀.preimage f
  refine ⟨IsLocallyNoetherian.component_noetherian ⟨V₀, hV₀⟩, ?_, ?_⟩
  · exact IsFinite.finite_app f V₀ hV₀
  · have hflat : (f.app V₀).hom.Flat := by
      have := Flat.flat_appLE f hV₀ hV le_rfl
      rwa [Scheme.Hom.appLE_eq_app] at this
    haveI : Module.Flat Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀) := hflat
    apply Module.FaithfullyFlat.of_comap_surjective
    intro p
    have hsq := IsAffineOpen.SpecMap_appLE_fromSpec f hV₀ hV le_rfl
    rw [Scheme.Hom.appLE_eq_app] at hsq
    have hy : hV₀.fromSpec p ∈ (V₀ : Set Y) := by
      rw [← hV₀.range_fromSpec]; exact ⟨p, rfl⟩
    obtain ⟨x, hx⟩ := f.surjective (hV₀.fromSpec p)
    have hxV : x ∈ Set.range hV.fromSpec := by
      rw [hV.range_fromSpec]
      show f x ∈ (V₀ : Set Y)
      rw [hx]; exact hy
    obtain ⟨q, rfl⟩ := hxV
    refine ⟨q, ?_⟩
    apply hV₀.fromSpec.isOpenEmbedding.injective
    have := congrArg (fun g => g q) (congrArg (fun h => h.base) hsq)
    simp only [Scheme.Hom.comp_base, TopCat.comp_app] at this
    rw [← hx]
    convert this using 2
    rw [Spec.map_base]
    rfl

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFaithfullyFlatAlgebraOverAffineOpen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFaithfullyFlatAlgebraOverAffineOpenStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFaithfullyFlatAlgebraOverAffineOpenStatement", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Finite\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Mathlib.AlgebraicGeometry.Noetherian\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFaithfullyFlatAlgebraOverAffineOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLineBundleDescentToSubfield\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.LBDescent
open TensorProduct

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFaithfullyFlatAlgebraOverAffineOpenStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.Hilbert90LocalOfCocycleTensor =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.Hilbert90LocalOfCocycleTensor", "h": "module\n\npublic import Mathlib.RingTheory.Flat.FaithfullyFlat.Basic\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsUniqueBaseChangeEqOfMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct

namespace GlobalTheory.FlatDescent

theorem hilbert90_local_of_cocycle : ∀ (R S : Type) [CommRing R] [CommRing S] [Algebra R S] [IsNoetherianRing R] [Module.Finite R S]
    [Module.FaithfullyFlat R S] (c : (S ⊗[R] S)ˣ),
    Algebra.TensorProduct.includeLeft (R := R) (S := R) (A := S ⊗[R] S) (B := S) (c : S ⊗[R] S) *
        Algebra.TensorProduct.map (Algebra.TensorProduct.includeRight (R := R) (A := S) (B := S)) (AlgHom.id R S) (c : S ⊗[R] S) =
      Algebra.TensorProduct.map (Algebra.TensorProduct.includeLeft (R := R) (S := R) (A := S) (B := S)) (AlgHom.id R S) (c : S ⊗[R] S) →
    ∀ p : Ideal R, p.IsPrime → ∃ r ∉ p, ∃ m s : S, ∃ n : ℕ,
      (m ⊗ₜ[R] (1 : S)) * (c : S ⊗[R] S) = (1 : S) ⊗ₜ[R] m ∧ m * s = algebraMap R S r ^ n := by
  intro R S _ _ _ _ _ _ c hc p hp
  classical
  let θ : S →ₗ[S] S ⊗[R] S := LinearMap.toSpanSingleton S (S ⊗[R] S) (c : S ⊗[R] S)
  have hθ : ∀ n, θ n = (n ⊗ₜ[R] (1 : S)) * (c : S ⊗[R] S) := fun n => by
    simp [θ, Algebra.smul_def]

  let ψ : (S ⊗[R] S) ⊗[R] S →ₐ[R] S ⊗[R] S :=
    Algebra.TensorProduct.lift (S := R) (AlgHom.id R (S ⊗[R] S))
      (Algebra.TensorProduct.includeRight) (fun _ _ => Commute.all _ _)
  have h1 : ∀ x, ψ (Algebra.TensorProduct.includeLeft (R := R) (S := R) (A := S ⊗[R] S) (B := S) x) = x := by
    intro x; simp [ψ, ← Algebra.TensorProduct.one_def]
  have h2 : ∀ x, ψ (Algebra.TensorProduct.map (Algebra.TensorProduct.includeRight (R := R) (A := S) (B := S))
      (AlgHom.id R S) x) = (1 : S) ⊗ₜ[R] Algebra.TensorProduct.lmul' R x := by
    intro x
    induction x using TensorProduct.induction_on with
    | zero => simp
    | add x y hx hy => simp only [map_add (f := _), hx, hy, tmul_add]
    | tmul a b => simp [ψ]
  have h3 : ∀ x, ψ (Algebra.TensorProduct.map (Algebra.TensorProduct.includeLeft (R := R) (S := R) (A := S) (B := S))
      (AlgHom.id R S) x) = x := by
    intro x
    induction x using TensorProduct.induction_on with
    | zero => simp
    | add x y hx hy => simp only [map_add (f := _), hx, hy]
    | tmul a b => simp [ψ]
  have hμ : Algebra.TensorProduct.lmul' R (c : S ⊗[R] S) = 1 := by
    have h := congrArg ψ hc
    rw [map_mul, h1, h2, h3] at h
    have h' : (1 : S) ⊗ₜ[R] Algebra.TensorProduct.lmul' R (c : S ⊗[R] S) = (1 : S) ⊗ₜ[R] (1 : S) :=
      (Units.mul_right_inj c).1 (h.trans (mul_one _).symm)
    exact Module.FaithfullyFlat.tensorProduct_mk_injective (A := R) (B := S) S h'
  have hact : ∀ x, act R S S x = Algebra.TensorProduct.lmul' R x := by
    intro x
    induction x using TensorProduct.induction_on with
    | zero => simp
    | add x y hx hy => simp only [map_add (f := _), hx, hy]
    | tmul a b => simp
  have hcounit : ∀ n, act R S S (θ n) = n := by
    intro n
    have hθ' : θ n = n • (c : S ⊗[R] S) := rfl
    rw [hθ', (act R S S).map_smul, hact, hμ, smul_eq_mul, mul_one]

  let e := (TensorProduct.assoc R S S S)
  have hL0 : ∀ (a b : S) (z : S ⊗[R] S), a ⊗ₜ[R] (b • z) =
      e (Algebra.TensorProduct.includeLeft (R := R) (S := R) (A := S ⊗[R] S) (B := S) (a ⊗ₜ[R] b) *
        Algebra.TensorProduct.map (Algebra.TensorProduct.includeRight (R := R) (A := S) (B := S))
          (AlgHom.id R S) z) := by
    intro a b z
    induction z using TensorProduct.induction_on with
    | zero => simp
    | add x y hx hy => simp only [map_add (f := _), hx, hy, mul_add, smul_add, tmul_add]
    | tmul a' b' =>
      simp only [Algebra.TensorProduct.map_tmul, Algebra.TensorProduct.includeRight_apply,
        Algebra.TensorProduct.includeLeft_apply, AlgHom.id_apply,
        Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul, e, TensorProduct.assoc_tmul, smul_tmul',
        smul_eq_mul]
  have hL : ∀ x : S ⊗[R] S, (θ.restrictScalars R).lTensor S x =
      e (Algebra.TensorProduct.includeLeft (R := R) (S := R) (A := S ⊗[R] S) (B := S) x *
        Algebra.TensorProduct.map (Algebra.TensorProduct.includeRight (R := R) (A := S) (B := S))
          (AlgHom.id R S) (c : S ⊗[R] S)) := by
    intro x
    induction x using TensorProduct.induction_on with
    | zero => simp
    | add x y hx hy => simp only [map_add (f := _), hx, hy, add_mul]
    | tmul a b =>
      rw [LinearMap.lTensor_tmul, LinearMap.coe_restrictScalars]
      exact hL0 a b _
  have hR : ∀ x : S ⊗[R] S, (TensorProduct.mk R S S 1).lTensor S x =
      e (Algebra.TensorProduct.map (Algebra.TensorProduct.includeLeft (R := R) (S := R) (A := S) (B := S))
        (AlgHom.id R S) x) := by
    intro x
    induction x using TensorProduct.induction_on with
    | zero => simp
    | add x y hx hy => simp only [map_add (f := _), hx, hy]
    | tmul a b => simp [e]
  have hsmul : ∀ (g : S →ₗ[R] S ⊗[R] S) (n : S) (x : S ⊗[R] S),
      g.lTensor S (n • x) = n • g.lTensor S x := by
    intro g n x
    induction x using TensorProduct.induction_on with
    | zero => simp
    | add x y hx hy => simp only [smul_add, map_add (f := _), hx, hy]
    | tmul a b => simp [smul_tmul']
  have hcoassoc : ∀ n, (θ.restrictScalars R).lTensor S (θ n) = (TensorProduct.mk R S S 1).lTensor S (θ n) := by
    intro n
    have hθ' : θ n = n • (c : S ⊗[R] S) := rfl
    rw [hθ', hsmul, hsmul, hL, hR, hc]
  have hD : IsDescentDatum θ := ⟨hcounit, hcoassoc⟩
  haveI : Module.Invertible R (invariants θ) := hD.invertible_invariants

  obtain ⟨f, m, hfm⟩ : ∃ (f : Module.Dual R (invariants θ)) (m : invariants θ), f m ∉ p := by
    by_contra hcon
    push_neg at hcon
    obtain ⟨T, hT⟩ := ((Module.Invertible.linearEquiv R (invariants θ)).symm 1).exists_finset
    have h1 : (1 : R) = ∑ i ∈ T, i.1 i.2 := by
      have := congrArg (Module.Invertible.linearEquiv R (invariants θ)) hT

      simpa [Module.Invertible.linearEquiv, map_sum] using this
    exact hp.ne_top ((Ideal.eq_top_iff_one _).2 (h1 ▸ Ideal.sum_mem _ fun i _ => hcon i.1 i.2))
  have hcomm : ∀ x : invariants θ, f m • x = f x • m := by
    intro x
    have := congrArg (TensorProduct.lift ((LinearMap.lsmul R (invariants θ)).comp f))
      (Module.Invertible.tmul_comm (m₁ := m) (m₂ := x))
    simpa using this
  obtain ⟨y, hy⟩ := hD.bijective_extend.2 1
  have hspan : ∀ y : S ⊗[R] invariants θ,
      algebraMap R S (f m) * extend S (invariants θ) y ∈ Ideal.span {(m : S)} := by
    intro y
    induction y using TensorProduct.induction_on with
    | zero => simp
    | add x y hx hy => rw [map_add (f := _), mul_add]; exact Ideal.add_mem _ hx hy
    | tmul b x =>
      have hx : algebraMap R S (f m) * (x : S) = algebraMap R S (f x) * (m : S) := by
        have := congrArg Subtype.val (hcomm x)
        simpa [Algebra.smul_def] using this
      rw [extend_tmul, smul_eq_mul, mul_left_comm, hx, ← mul_assoc]
      exact Ideal.mul_mem_left _ _ (Ideal.subset_span rfl)
  obtain ⟨s, hs⟩ := Ideal.mem_span_singleton'.1 (hspan y)
  refine ⟨f m, hfm, m, s, 1, ?_, ?_⟩
  · rw [← hθ]; exact mem_invariants.1 m.2
  · rw [pow_one, mul_comm, hs, hy, mul_one]

end GlobalTheory.FlatDescent
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.Hilbert90LocalOfCocycleTensor =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitCocycleDescendsOnTripleOverlaps =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitCocycleDescendsOnTripleOverlaps", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DescCocycle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.BaseChangeKernels.Affine\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLineBundleDescentToSubfield\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.LBDescent
open TensorProduct
namespace GlobalTheory.LBDescent.CocycleTensor

theorem appLE_congr_hom {A B : Scheme.{0}} {g₁ g₂ : A ⟶ B} (hg : g₁ = g₂) (U : B.Opens) (W : A.Opens)
    (e₁ : W ≤ g₁ ⁻¹ᵁ U) (e₂ : W ≤ g₂ ⁻¹ᵁ U) : g₁.appLE U W e₁ = g₂.appLE U W e₂ := by
  subst hg; rfl

theorem germ_appLE_gm {A B : Scheme.{0}} (g : A ⟶ B) {U U' : B.Opens} (W : A.Opens) (e : W ≤ g ⁻¹ᵁ U)
    (hUU' : U ≤ U') (w : A) (hw : w ∈ W) (a : Γ(B, U')ˣ) :
    (A.presheaf.germ W w hw).hom ((g.appLE U W e).hom (res hUU' a).val) = (gm g w U' a).val :=
  (TopCat.Presheaf.germ_res_apply A.presheaf (homOfLE e) w hw ((g.app U).hom (res hUU' a).val)).trans
    ((gm_val g w U (e hw) (res hUU' a)).symm.trans (congrArg Units.val (gm_res g w hUU' (e hw) a)))


theorem cocycle_tensor_of_pointwise : ∀ {X Y : Scheme.{0}} (f : X ⟶ Y) [IsFinite f] (V V₀ : Y.Opens), IsAffineOpen V₀ →
    ∀ (h : pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀ ≤ pullback.snd f f ⁻¹ᵁ f ⁻¹ᵁ V₀)
      (hle : pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀ ≤ pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V) (c : Γ(pullback f f, pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V)ˣ),
    (∀ w : ↥(Triple f), f (pullback.fst f f (pullback.fst (pullback.snd f f) (pullback.fst f f) w)) ∈ V →
        gm (pullback.fst (pullback.snd f f) (pullback.fst f f)) w _ c *
          gm (pullback.snd (pullback.snd f f) (pullback.fst f f)) w _ c = gm (pr13 f) w _ c) →
    letI : Algebra Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀) := (f.app V₀).hom.toAlgebra
    ∀ e : Γ(X, f ⁻¹ᵁ V₀) ⊗[Γ(Y, V₀)] Γ(X, f ⁻¹ᵁ V₀) ≃+* Γ(pullback f f, pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀),
      (∀ a b : Γ(X, f ⁻¹ᵁ V₀), e (a ⊗ₜ b) =
        ((pullback.fst f f).app (f ⁻¹ᵁ V₀)).hom a * ((pullback.snd f f).appLE (f ⁻¹ᵁ V₀) _ h).hom b) →
      Algebra.TensorProduct.includeLeft (R := Γ(Y, V₀)) (S := Γ(Y, V₀)) (A := Γ(X, f ⁻¹ᵁ V₀) ⊗[Γ(Y, V₀)] Γ(X, f ⁻¹ᵁ V₀)) (B := Γ(X, f ⁻¹ᵁ V₀)) (e.symm (res hle c).val) *
          Algebra.TensorProduct.map (Algebra.TensorProduct.includeRight (R := Γ(Y, V₀)) (A := Γ(X, f ⁻¹ᵁ V₀)) (B := Γ(X, f ⁻¹ᵁ V₀))) (AlgHom.id Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀)) (e.symm (res hle c).val) =
        Algebra.TensorProduct.map (Algebra.TensorProduct.includeLeft (R := Γ(Y, V₀)) (S := Γ(Y, V₀)) (A := Γ(X, f ⁻¹ᵁ V₀)) (B := Γ(X, f ⁻¹ᵁ V₀))) (AlgHom.id Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀)) (e.symm (res hle c).val) := by
  intro X Y f _ V V₀ hV₀ h hle c hc e he
  letI : Algebra Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀) := (f.app V₀).hom.toAlgebra
  have hcond : ∀ z : ↥(pullback f f), f ((pullback.fst f f) z) = f ((pullback.snd f f) z) := fun z => by
    rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, pullback.condition]
  have hq : ∀ w : ↥(Triple f), (pullback.snd f f) ((pullback.fst (pullback.snd f f) (pullback.fst f f)) w) = (pullback.fst f f) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) w) := fun w => by
    rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, pullback.condition]
  have h1 : (pullback.snd f f) ⁻¹ᵁ (f ⁻¹ᵁ V₀) ≤ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) := fun z hz => by
    show f ((pullback.fst f f) z) ∈ V₀
    rw [hcond]; exact hz
  have hleG : ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) ≤ (pullback.fst (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ ((pullback.snd f f) ⁻¹ᵁ (f ⁻¹ᵁ V₀)) := fun w hw => by
    show f ((pullback.snd f f) ((pullback.fst (pullback.snd f f) (pullback.fst f f)) w)) ∈ V₀
    rw [hq]; exact hw
  have hp1 : pr13 f ≫ (pullback.fst f f) = (pullback.fst (pullback.snd f f) (pullback.fst f f)) ≫ (pullback.fst f f) := pullback.lift_fst _ _ _
  have hp2 : pr13 f ≫ (pullback.snd f f) = (pullback.snd (pullback.snd f f) (pullback.fst f f)) ≫ (pullback.snd f f) := pullback.lift_snd _ _ _
  have h13 : ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) ≤ pr13 f ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) := fun w hw => by
    show f ((pullback.fst f f) (pr13 f w)) ∈ V₀
    have e13 : (pullback.fst f f) (pr13 f w) = (pullback.fst f f) ((pullback.fst (pullback.snd f f) (pullback.fst f f)) w) :=
      (Scheme.Hom.comp_apply _ _ w).symm.trans ((congrArg (fun g => g w) hp1).trans (Scheme.Hom.comp_apply _ _ w))
    rw [e13]
    exact h1 (hleG hw)
  have h2 : (pullback.snd f f) ⁻¹ᵁ (f ⁻¹ᵁ V₀) ≤ (pullback.fst f f) ⁻¹ᵁ f ⁻¹ᵁ V := h1.trans hle
  have hP := Out.GtBCPf.isPushout_appLE (IsPullback.of_hasPullback (pullback.snd f f) (pullback.fst f f)) inferInstance
    (hV₀.preimage f) ((hV₀.preimage f).preimage (pullback.fst f f)) le_rfl hleG
  have e1 : ∀ s : Γ(X, f ⁻¹ᵁ V₀), e.symm (((pullback.snd f f).appLE (f ⁻¹ᵁ V₀) (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) h).hom s) = 1 ⊗ₜ s := fun s => by
    rw [e.symm_apply_eq, he, map_one, _root_.one_mul]
  have e2 : ∀ s : Γ(X, f ⁻¹ᵁ V₀), e.symm (((pullback.fst f f).app (f ⁻¹ᵁ V₀)).hom s) = s ⊗ₜ 1 := fun s => by
    rw [e.symm_apply_eq, he, map_one, _root_.mul_one]
  let m₁ : Γ(pullback f f, (pullback.snd f f) ⁻¹ᵁ (f ⁻¹ᵁ V₀)) ⟶ CommRingCat.of ((Γ(X, f ⁻¹ᵁ V₀) ⊗[Γ(Y, V₀)] Γ(X, f ⁻¹ᵁ V₀)) ⊗[Γ(Y, V₀)] Γ(X, f ⁻¹ᵁ V₀)) :=
    CommRingCat.ofHom ((Algebra.TensorProduct.includeLeft (R := Γ(Y, V₀)) (S := Γ(Y, V₀)) (A := Γ(X, f ⁻¹ᵁ V₀) ⊗[Γ(Y, V₀)] Γ(X, f ⁻¹ᵁ V₀)) (B := Γ(X, f ⁻¹ᵁ V₀))).toRingHom.comp (e.symm.toRingHom.comp ((pullback f f).presheaf.map (homOfLE h).op).hom))
  let m₂ : Γ(pullback f f, (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) ⟶ CommRingCat.of ((Γ(X, f ⁻¹ᵁ V₀) ⊗[Γ(Y, V₀)] Γ(X, f ⁻¹ᵁ V₀)) ⊗[Γ(Y, V₀)] Γ(X, f ⁻¹ᵁ V₀)) :=
    CommRingCat.ofHom ((Algebra.TensorProduct.map (Algebra.TensorProduct.includeRight (R := Γ(Y, V₀)) (A := Γ(X, f ⁻¹ᵁ V₀)) (B := Γ(X, f ⁻¹ᵁ V₀))) (AlgHom.id Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀))).toRingHom.comp e.symm.toRingHom)
  have cond : (pullback.snd f f).app (f ⁻¹ᵁ V₀) ≫ m₁ = (pullback.fst f f).appLE (f ⁻¹ᵁ V₀) (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) le_rfl ≫ m₂ := by
    ext s
    show (Algebra.TensorProduct.includeLeft (R := Γ(Y, V₀)) (S := Γ(Y, V₀)) (A := Γ(X, f ⁻¹ᵁ V₀) ⊗[Γ(Y, V₀)] Γ(X, f ⁻¹ᵁ V₀)) (B := Γ(X, f ⁻¹ᵁ V₀))) (e.symm (((pullback.snd f f).appLE (f ⁻¹ᵁ V₀) (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) h).hom s)) = (Algebra.TensorProduct.map (Algebra.TensorProduct.includeRight (R := Γ(Y, V₀)) (A := Γ(X, f ⁻¹ᵁ V₀)) (B := Γ(X, f ⁻¹ᵁ V₀))) (AlgHom.id Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀))) (e.symm (((pullback.fst f f).appLE (f ⁻¹ᵁ V₀) (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) le_rfl).hom s))
    rw [Scheme.Hom.appLE_eq_app, e1, e2]
    simp
  let Ψ := hP.desc m₁ m₂ cond
  have hΨ1 : ∀ y, Ψ.hom (((pullback.fst (pullback.snd f f) (pullback.fst f f)).appLE ((pullback.snd f f) ⁻¹ᵁ (f ⁻¹ᵁ V₀)) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) hleG).hom y) = m₁.hom y := fun y =>
    congrArg (fun k => k.hom y) (hP.inl_desc m₁ m₂ cond)
  have hΨ2 : ∀ y, Ψ.hom (((pullback.snd (pullback.snd f f) (pullback.fst f f)).app (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)).hom y) = m₂.hom y := fun y =>
    congrArg (fun k => k.hom y) (hP.inr_desc m₁ m₂ cond)
  have ka : ∀ a : Γ(X, f ⁻¹ᵁ V₀), ((pr13 f).appLE (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) h13).hom (((pullback.fst f f).app (f ⁻¹ᵁ V₀)).hom a) =
      ((pullback.fst (pullback.snd f f) (pullback.fst f f)).appLE ((pullback.snd f f) ⁻¹ᵁ (f ⁻¹ᵁ V₀)) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) hleG).hom (((pullback.fst f f).appLE (f ⁻¹ᵁ V₀) ((pullback.snd f f) ⁻¹ᵁ (f ⁻¹ᵁ V₀)) h1).hom a) := fun a => by
    rw [Scheme.Hom.app_eq_appLE]
    exact congrArg (fun k => k.hom a) ((Scheme.Hom.appLE_comp_appLE (pr13 f) (pullback.fst f f) (f ⁻¹ᵁ V₀) (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) le_rfl h13).trans
      ((appLE_congr_hom hp1 (f ⁻¹ᵁ V₀) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) _ _).trans (Scheme.Hom.appLE_comp_appLE (pullback.fst (pullback.snd f f) (pullback.fst f f)) (pullback.fst f f) (f ⁻¹ᵁ V₀) ((pullback.snd f f) ⁻¹ᵁ (f ⁻¹ᵁ V₀)) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) h1 hleG).symm))
  have kb : ∀ b : Γ(X, f ⁻¹ᵁ V₀), ((pr13 f).appLE (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) h13).hom (((pullback.snd f f).appLE (f ⁻¹ᵁ V₀) (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) h).hom b) =
      ((pullback.snd (pullback.snd f f) (pullback.fst f f)).app (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)).hom (((pullback.snd f f).appLE (f ⁻¹ᵁ V₀) (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) h).hom b) := fun b => by
    rw [Scheme.Hom.app_eq_appLE]
    exact congrArg (fun k => k.hom b) ((Scheme.Hom.appLE_comp_appLE (pr13 f) (pullback.snd f f) (f ⁻¹ᵁ V₀) (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) h h13).trans
      ((appLE_congr_hom hp2 (f ⁻¹ᵁ V₀) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) _ _).trans (Scheme.Hom.appLE_comp_appLE (pullback.snd (pullback.snd f f) (pullback.fst f f)) (pullback.snd f f) (f ⁻¹ᵁ V₀) (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) h le_rfl).symm))
  have ra : ∀ a : Γ(X, f ⁻¹ᵁ V₀), ((pullback f f).presheaf.map (homOfLE h).op).hom (((pullback.fst f f).appLE (f ⁻¹ᵁ V₀) ((pullback.snd f f) ⁻¹ᵁ (f ⁻¹ᵁ V₀)) h1).hom a) =
      ((pullback.fst f f).app (f ⁻¹ᵁ V₀)).hom a := fun a => by
    rw [Scheme.Hom.app_eq_appLE]
    exact congrArg (fun k => k.hom a) (Scheme.Hom.appLE_map (pullback.fst f f) h1 (homOfLE h).op)
  have hΨ3 : ∀ t, Ψ.hom (((pr13 f).appLE (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) h13).hom (e t)) = (Algebra.TensorProduct.map (Algebra.TensorProduct.includeLeft (R := Γ(Y, V₀)) (S := Γ(Y, V₀)) (A := Γ(X, f ⁻¹ᵁ V₀)) (B := Γ(X, f ⁻¹ᵁ V₀))) (AlgHom.id Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀))) t := by
    intro t
    induction t using TensorProduct.induction_on with
    | zero => simp
    | add x y hx hy => simp only [map_add (f := _), hx, hy]
    | tmul a b =>
      rw [he, map_mul, map_mul, ka, kb, hΨ1, hΨ2]
      show (Algebra.TensorProduct.includeLeft (R := Γ(Y, V₀)) (S := Γ(Y, V₀)) (A := Γ(X, f ⁻¹ᵁ V₀) ⊗[Γ(Y, V₀)] Γ(X, f ⁻¹ᵁ V₀)) (B := Γ(X, f ⁻¹ᵁ V₀))) (e.symm (((pullback f f).presheaf.map (homOfLE h).op).hom (((pullback.fst f f).appLE (f ⁻¹ᵁ V₀) ((pullback.snd f f) ⁻¹ᵁ (f ⁻¹ᵁ V₀)) h1).hom a))) *
        (Algebra.TensorProduct.map (Algebra.TensorProduct.includeRight (R := Γ(Y, V₀)) (A := Γ(X, f ⁻¹ᵁ V₀)) (B := Γ(X, f ⁻¹ᵁ V₀))) (AlgHom.id Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀))) (e.symm (((pullback.snd f f).appLE (f ⁻¹ᵁ V₀) (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) h).hom b)) = _
      rw [ra, e1, e2]
      simp
  have hABC : ((pullback.fst (pullback.snd f f) (pullback.fst f f)).appLE ((pullback.snd f f) ⁻¹ᵁ (f ⁻¹ᵁ V₀)) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) hleG).hom (res h2 c).val * ((pullback.snd (pullback.snd f f) (pullback.fst f f)).app (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)).hom (res hle c).val =
      ((pr13 f).appLE (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) h13).hom (res hle c).val := by
    apply TopCat.Presheaf.section_ext (Triple f).sheaf ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀))
    intro w hw
    have hw1 : (pullback.fst (pullback.snd f f) (pullback.fst f f)) w ∈ (pullback.snd f f) ⁻¹ᵁ (f ⁻¹ᵁ V₀) := hleG hw
    have hw13 : pr13 f w ∈ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) := h13 hw
    have key := congrArg Units.val (hc w (hle (h1 hw1)))
    show ((Triple f).presheaf.germ ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) w hw).hom (((pullback.fst (pullback.snd f f) (pullback.fst f f)).appLE ((pullback.snd f f) ⁻¹ᵁ (f ⁻¹ᵁ V₀)) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) hleG).hom (res h2 c).val * ((pullback.snd (pullback.snd f f) (pullback.fst f f)).app (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)).hom (res hle c).val) =
      ((Triple f).presheaf.germ ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) w hw).hom (((pr13 f).appLE (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) h13).hom (res hle c).val)
    rw [Scheme.Hom.app_eq_appLE]
    refine (RingHom.map_mul _ _ _).trans ?_
    exact (congrArg₂ (· * ·) (germ_appLE_gm (pullback.fst (pullback.snd f f) (pullback.fst f f)) _ hleG h2 w hw c) (germ_appLE_gm (pullback.snd (pullback.snd f f) (pullback.fst f f)) _ _ hle w hw c)).trans
      ((Units.val_mul _ _).symm.trans (key.trans (germ_appLE_gm (pr13 f) _ h13 hle w hw c).symm))
  have hA : (Algebra.TensorProduct.includeLeft (R := Γ(Y, V₀)) (S := Γ(Y, V₀)) (A := Γ(X, f ⁻¹ᵁ V₀) ⊗[Γ(Y, V₀)] Γ(X, f ⁻¹ᵁ V₀)) (B := Γ(X, f ⁻¹ᵁ V₀))) (e.symm (res hle c).val) = Ψ.hom (((pullback.fst (pullback.snd f f) (pullback.fst f f)).appLE ((pullback.snd f f) ⁻¹ᵁ (f ⁻¹ᵁ V₀)) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) hleG).hom (res h2 c).val) := by
    have hres : ((pullback f f).presheaf.map (homOfLE h).op).hom (res h2 c).val = (res hle c).val := by
      show ((pullback f f).presheaf.map (homOfLE h).op).hom (((pullback f f).presheaf.map (homOfLE h2).op).hom c.val) =
        ((pullback f f).presheaf.map (homOfLE hle).op).hom c.val
      rw [← CommRingCat.comp_apply, ← Functor.map_comp]
      rfl
    exact (congrArg (fun y => (Algebra.TensorProduct.includeLeft (R := Γ(Y, V₀)) (S := Γ(Y, V₀)) (A := Γ(X, f ⁻¹ᵁ V₀) ⊗[Γ(Y, V₀)] Γ(X, f ⁻¹ᵁ V₀)) (B := Γ(X, f ⁻¹ᵁ V₀))) (e.symm y)) hres).symm.trans (hΨ1 _).symm
  have hB : (Algebra.TensorProduct.map (Algebra.TensorProduct.includeRight (R := Γ(Y, V₀)) (A := Γ(X, f ⁻¹ᵁ V₀)) (B := Γ(X, f ⁻¹ᵁ V₀))) (AlgHom.id Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀))) (e.symm (res hle c).val) = Ψ.hom (((pullback.snd (pullback.snd f f) (pullback.fst f f)).app (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)).hom (res hle c).val) := (hΨ2 _).symm
  have hC : (Algebra.TensorProduct.map (Algebra.TensorProduct.includeLeft (R := Γ(Y, V₀)) (S := Γ(Y, V₀)) (A := Γ(X, f ⁻¹ᵁ V₀)) (B := Γ(X, f ⁻¹ᵁ V₀))) (AlgHom.id Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀))) (e.symm (res hle c).val) = Ψ.hom (((pr13 f).appLE (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) h13).hom (res hle c).val) := by
    exact (hΨ3 (e.symm (res hle c).val)).symm.trans (congrArg (fun y => Ψ.hom (((pr13 f).appLE (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀) ((pullback.snd (pullback.snd f f) (pullback.fst f f)) ⁻¹ᵁ (pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀)) h13).hom y)) (e.apply_symm_apply _))
  exact (congrArg₂ (· * ·) hA hB).trans ((map_mul Ψ.hom _ _).symm.trans ((congrArg Ψ.hom hABC).trans hC.symm))

end GlobalTheory.LBDescent.CocycleTensor
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitCocycleDescendsOnTripleOverlaps =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitCocycleDescendsOnTripleOverlapsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitCocycleDescendsOnTripleOverlapsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DescCocycle\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitCocycleDescendsOnTripleOverlaps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLineBundleDescentToSubfield\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.LBDescent
open TensorProduct

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitCocycleDescendsOnTripleOverlapsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFlatUnitCocycleLocallyCoboundary =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFlatUnitCocycleLocallyCoboundary", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DescCocycle\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTensorSquareEquivFibreSquareSectionsStatement\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitBasicOpenOfCoboundaryIdentity\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFaithfullyFlatAlgebraOverAffineOpenStatement\npublic import Mathlib.RingTheory.Flat.FaithfullyFlat.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.Hilbert90LocalOfCocycleTensor\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitCocycleDescendsOnTripleOverlapsStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLineBundleDescentToSubfield\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.LBDescent
open TensorProduct

namespace GlobalTheory.LBDescent

theorem coboundary_locally_of_cocycle : ∀ {X Y : Scheme.{0}} (f : X ⟶ Y) [IsFinite f] [Flat f] [Surjective f] [IsLocallyNoetherian Y]
    (V : Y.Opens) (c : Γ(pullback f f, pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V)ˣ),
    (∀ w : ↥(Triple f), f (pullback.fst f f (pullback.fst (pullback.snd f f) (pullback.fst f f) w)) ∈ V →
        gm (pullback.fst (pullback.snd f f) (pullback.fst f f)) w _ c *
          gm (pullback.snd (pullback.snd f f) (pullback.fst f f)) w _ c = gm (pr13 f) w _ c) →
    ∀ y ∈ V, ∃ V' : Y.Opens, V' ≤ V ∧ y ∈ V' ∧ ∃ u : Γ(X, f ⁻¹ᵁ V')ˣ,
      ∀ z : ↥(pullback f f), f (pullback.fst f f z) ∈ V' →
        gm (pullback.fst f f) z _ u * gm (𝟙 _) z _ c = gm (pullback.snd f f) z _ u := by
  intro X Y f _ _ _ _ V c hc y hy
  obtain ⟨V₀, hV₀, hyV₀, hV₀V⟩ := (TopologicalSpace.Opens.isBasis_iff_nbhd.mp Y.isBasis_affineOpens) hy
  have h : pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀ ≤ pullback.snd f f ⁻¹ᵁ f ⁻¹ᵁ V₀ := fun z hz => by
    show f (pullback.snd f f z) ∈ V₀
    rw [← Scheme.Hom.comp_apply, ← pullback.condition, Scheme.Hom.comp_apply]
    exact hz
  have hle : pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V₀ ≤ pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V := fun z hz => hV₀V hz
  letI : Algebra Γ(Y, V₀) Γ(X, f ⁻¹ᵁ V₀) := (f.app V₀).hom.toAlgebra
  obtain ⟨hN, hF, hFF⟩ := _root_.GlobalTheory.finiteFlatSurj_affine_algebra f V₀ hV₀
  obtain ⟨e, he⟩ := _root_.GlobalTheory.LBDescent.exists_tensorSquare_equiv_sections f V₀ hV₀ h
  have hcoc := _root_.GlobalTheory.LBDescent.CocycleTensor.cocycle_tensor_of_pointwise f V V₀ hV₀ h hle c hc e he
  let c₀ : (Γ(X, f ⁻¹ᵁ V₀) ⊗[Γ(Y, V₀)] Γ(X, f ⁻¹ᵁ V₀))ˣ := Units.map e.symm.toMonoidHom (res hle c)
  obtain ⟨r, hr, m, s, n, hm, hs⟩ := _root_.GlobalTheory.FlatDescent.hilbert90_local_of_cocycle _ _ c₀ hcoc
    (Ideal.comap (Y.presheaf.germ V₀ y hyV₀).hom (IsLocalRing.maximalIdeal _)) inferInstance
  have hm' : ((pullback.fst f f).app (f ⁻¹ᵁ V₀)).hom m * (res hle c).val =
      ((pullback.snd f f).appLE (f ⁻¹ᵁ V₀) _ h).hom m := by
    have := congrArg e hm
    rw [map_mul, he, he] at this
    simpa [c₀] using this
  obtain ⟨u, hu⟩ := _root_.GlobalTheory.LBDescent.coboundary_unit_basicOpen f V V₀ h hle c r m s n hm' hs
  refine ⟨Y.basicOpen r, (Y.basicOpen_le r).trans hV₀V, ?_, u, hu⟩
  rw [Scheme.mem_basicOpen _ _ _ hyV₀]
  by_contra hh
  exact hr (by simpa [IsLocalRing.mem_maximalIdeal] using hh)

end GlobalTheory.LBDescent
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFlatUnitCocycleLocallyCoboundary =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFrameInvariantUnderDescentDatum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFrameInvariantUnderDescentDatum", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DescCocycle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLineBundleDescentToSubfield\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.LBDescent

noncomputable section
namespace GlobalTheory.LBDescent

theorem twist_frame_descent : ∀ {X Y : Scheme.{0}} (f : X ⟶ Y) (L : LB X) (φ : ∀ i j, Γ(pullback f f, chart f L i j)ˣ)
    (V : Y.Opens) (t : ∀ i, Γ(X, f ⁻¹ᵁ V ⊓ L.U i)ˣ), (∀ (i j : L.ι) (x : X), f x ∈ V → x ∈ L.U i → x ∈ L.U j →
      gm (𝟙 X) x _ (t i) = gm (𝟙 X) x _ (L.g i j) * gm (𝟙 X) x _ (t j)) →
    ∀ (c : Γ(pullback f f, pullback.fst f f ⁻¹ᵁ f ⁻¹ᵁ V)ˣ),
      (∀ (z : ↥(pullback f f)) (i j : L.ι), f (pullback.fst f f z) ∈ V → pullback.fst f f z ∈ L.U i →
        pullback.snd f f z ∈ L.U j →
        gm (𝟙 _) z _ c = gm (pullback.fst f f) z _ (t i) * gm (𝟙 _) z _ (φ i j) * (gm (pullback.snd f f) z _ (t j))⁻¹) →
    ∀ (V' : Y.Opens), V' ≤ V → ∀ u : Γ(X, f ⁻¹ᵁ V')ˣ, (∀ z : ↥(pullback f f), f (pullback.fst f f z) ∈ V' →
        gm (pullback.fst f f) z _ u * gm (𝟙 _) z _ c = gm (pullback.snd f f) z _ u) →
    ∃ s : ∀ i, Γ(X, f ⁻¹ᵁ V' ⊓ L.U i)ˣ,
      (∀ (i j : L.ι) (x : X), f x ∈ V' → x ∈ L.U i → x ∈ L.U j →
        gm (𝟙 X) x _ (s i) = gm (𝟙 X) x _ (L.g i j) * gm (𝟙 X) x _ (s j)) ∧
      ∀ (z : ↥(pullback f f)) (i j : L.ι), f (pullback.fst f f z) ∈ V' → pullback.fst f f z ∈ L.U i →
        pullback.snd f f z ∈ L.U j →
        gm (pullback.fst f f) z _ (s i) * gm (𝟙 _) z _ (φ i j) = gm (pullback.snd f f) z _ (s j) := by
  intro X Y f L φ V t ht c hc V' hV' u hu
  have h1 : ∀ i, f ⁻¹ᵁ V' ⊓ L.U i ≤ f ⁻¹ᵁ V' := fun i => inf_le_left
  have h2 : ∀ i, f ⁻¹ᵁ V' ⊓ L.U i ≤ f ⁻¹ᵁ V ⊓ L.U i := fun i =>
    inf_le_inf_right _ (fun x hx => hV' hx)
  refine ⟨fun i => res (h1 i) u * res (h2 i) (t i), ?_, ?_⟩
  · intro i j x hx hi hj
    have mi : (𝟙 X) x ∈ f ⁻¹ᵁ V' ⊓ L.U i := ⟨hx, hi⟩
    have mj : (𝟙 X) x ∈ f ⁻¹ᵁ V' ⊓ L.U j := ⟨hx, hj⟩
    rw [map_mul, map_mul, gm_res _ x _ mi, gm_res _ x _ mi, gm_res _ x _ mj, gm_res _ x _ mj,
      ht i j x (hV' hx) hi hj]
    exact mul_left_comm _ _ _
  · intro z i j hz hi hj
    have hfz : f (pullback.snd f f z) = f (pullback.fst f f z) := by
      have := congrArg (fun g => g z) (congrArg (fun g => g.base) (pullback.condition (f := f) (g := f)))
      simpa using this.symm
    have mi : pullback.fst f f z ∈ f ⁻¹ᵁ V' ⊓ L.U i := ⟨hz, hi⟩
    have mj : pullback.snd f f z ∈ f ⁻¹ᵁ V' ⊓ L.U j := ⟨show f (pullback.snd f f z) ∈ V' by rw [hfz]; exact hz, hj⟩
    rw [map_mul, map_mul, gm_res _ z _ mi, gm_res _ z _ mi, gm_res _ z _ mj, gm_res _ z _ mj, ← hu z hz,
      hc z i j (hV' hz) hi hj]
    group

end GlobalTheory.LBDescent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFrameInvariantUnderDescentDatum =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleDescentFiniteFlat =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleDescentFiniteFlat", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DescCocycle\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DescentDatumFrameCocycleUnit\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleOfDescentInvariantFrames\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleTrivialNearFibreFinite\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFlatUnitCocycleLocallyCoboundary\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFrameInvariantUnderDescentDatum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.LBDescent

theorem exists_descent : ∀ (X Y : Scheme.{0}) (f : X ⟶ Y) [IsFinite f] [Flat f] [Surjective f] [IsLocallyNoetherian Y] (L : LB X), L.IsLB → ∀ (φ : ∀ i j, Γ(pullback f f, GlobalTheory.LBDescent.chart f L i j)ˣ), GlobalTheory.LBDescent.DescCompat f L φ → GlobalTheory.LBDescent.DescCocycle f L φ → ∃ L' : LB Y, L'.IsLB ∧ LBIso L (L'.pull f) := by
  intro X Y f _ _ _ _ L hL φ hc hcoc
  refine _root_.GlobalTheory.LBDescent.exists_lb_of_invariant_frames f L hL φ fun y => ?_
  obtain ⟨V, hy, t, ht⟩ := _root_.GlobalTheory.LBDescent.exists_trivial_near_fibre f L hL y
  obtain ⟨c, hct, hcc⟩ := _root_.GlobalTheory.LBDescent.frame_cocycle f L hL φ hc hcoc V t ht
  obtain ⟨V', hle, hy', u, hu⟩ := _root_.GlobalTheory.LBDescent.coboundary_locally_of_cocycle f V c hcc y hy
  exact ⟨V', hy', _root_.GlobalTheory.LBDescent.twist_frame_descent f L φ V t ht c hct V' hle u hu⟩

end GlobalTheory.LBDescent
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleDescentFiniteFlat =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleDescentFiniteFlatStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleDescentFiniteFlatStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DescCocycle\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleDescentFiniteFlat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleDescentFiniteFlatStatement =====
