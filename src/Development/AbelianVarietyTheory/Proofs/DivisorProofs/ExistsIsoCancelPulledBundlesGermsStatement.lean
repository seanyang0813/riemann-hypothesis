module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCTools
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
import Development.AbelianVarietyTheory.Definitions.Degenerations.SepticCharacterInjective
import Development.AbelianVarietyTheory.Definitions.Divisors.UnifAlong
import Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsAddEquivOfSurjectiveOfKerIff
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoCancelPulledBundlesGerms, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoCancelPulledBundlesGermsStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoCancelPulledBundlesGerms =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoCancelPulledBundlesGerms", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCTools\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.SepticCharacterInjective\nimport Development.AbelianVarietyTheory.Definitions.Divisors.UnifAlong\nimport Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula\nimport Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsAddEquivOfSurjectiveOfKerIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.KeyEven
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open Classical

namespace GlobalTheory.IsoComp

theorem pullIsoAlong {Y XA XG : Scheme.{0}} (θ : Y ⟶ XA) (φ : XA ⟶ XG) (G : Y ⟶ XG) (hG : θ ≫ φ = G)
    {LP : LB XA} {LL : LB XG} (ψ : LB.Iso LP (LL.pull φ)) (hψ : PGen ψ) :
    ∃ w : LB.Iso (LP.pull θ) (LL.pull G), PGen w ∧
      ∀ (Z : Scheme.{0}) (r : Z ⟶ Y) (z : Z) (i : LL.ι) (K : PUnit → LP.ι), G (r z) ∈ LL.U i →
        r z ∈ (LP.pull θ).U K → gw w r z i K = gw ψ (r ≫ θ) z i (K PUnit.unit) := by
  subst hG
  have hle : ∀ (J : PUnit → LL.ι) (K : PUnit → LP.ι),
      (LL.pull (θ ≫ φ)).U J ⊓ (LP.pull θ).U K ≤ θ ⁻¹ᵁ ((LL.pull φ).U J ⊓ LP.U (K PUnit.unit)) :=
    fun J K x hx => ⟨(mem_pull (F := φ)).2 ((mem_pull (F := θ ≫ φ)).1 hx.1), (mem_pull (F := θ)).1 hx.2⟩
  obtain ⟨w, hw⟩ : ∃ w : LB.Iso (LP.pull θ) (LL.pull (θ ≫ φ)),
      ∀ (Z : Scheme.{0}) (r : Z ⟶ Y) (z : Z) (i : LL.ι) (K : PUnit → LP.ι), (θ ≫ φ) (r z) ∈ LL.U i →
        r z ∈ (LP.pull θ).U K → gw w r z i K = gw ψ (r ≫ θ) z i (K PUnit.unit) :=
    ⟨⟨fun p => res (hle p.1 p.2) (pullU θ _ (ψ.s (p.1, p.2 PUnit.unit)))⟩, fun Z r z i K hi hK =>
      (gm_res r z (hle (fun _ => i) K) ⟨mem_pull.2 hi, hK⟩ _).trans
        (gm_pull r θ z _ (hle (fun _ => i) K ⟨mem_pull.2 hi, hK⟩) _)⟩
  refine ⟨w, fun Z r z j j' k k' hj hj' hk hk' => ?_, hw⟩
  rw [hw Z r z j k hj hk, hw Z r z j' k' hj' hk', gm_pull_g LP θ r z k k' hk hk',
    hψ Z (r ≫ θ) z j j' (k PUnit.unit) (k' PUnit.unit) hj hj' ((mem_pull (F := θ)).1 hk) ((mem_pull (F := θ)).1 hk'), Category.assoc]

theorem isoAsPullId {X : Scheme.{0}} {LL LM : LB X} (e : LB.Iso LM LL) (he : e.IsGen) :
    ∃ eP : LB.Iso LM (LL.pull (𝟙 X)), PGen eP ∧ ∀ (Y : Scheme.{0}) (f : Y ⟶ X) (y : Y) (i : LL.ι) (j : LM.ι),
      f y ∈ LL.U i → f y ∈ LM.U j → gw eP f y i j = gm f y (LL.U i ⊓ LM.U j) (e.s (i, j)) := by
  have hle : ∀ (J : PUnit → LL.ι) (j : LM.ι), (LL.pull (𝟙 X)).U J ⊓ LM.U j ≤ LL.U (J PUnit.unit) ⊓ LM.U j :=
    fun J j x hx => ⟨mem_pull.1 hx.1, hx.2⟩
  obtain ⟨eP, hP⟩ : ∃ eP : LB.Iso LM (LL.pull (𝟙 X)), ∀ (Y : Scheme.{0}) (f : Y ⟶ X) (y : Y) (i : LL.ι) (j : LM.ι),
      f y ∈ LL.U i → f y ∈ LM.U j → gw eP f y i j = gm f y (LL.U i ⊓ LM.U j) (e.s (i, j)) :=
    ⟨⟨fun p => res (hle p.1 p.2) (e.s (p.1 PUnit.unit, p.2))⟩, fun Y f y i j hi hj =>
      gm_res f y (hle (fun _ => i) j) ⟨mem_pull.2 hi, hj⟩ _⟩
  refine ⟨eP, fun Y f y j j' k k' hj hj' hk hk' => ?_, hP⟩
  have hm : f y ∈ LL.U j ⊓ LM.U k ⊓ (LL.U j' ⊓ LM.U k') := ⟨⟨hj, hk⟩, hj', hk'⟩
  have hm' : f y ∈ (LB.div LL LM).U (j, k) ⊓ (LB.div LL LM).U (j', k') := hm
  have h1 := congrArg (gm f y ((LB.div LL LM).U (j, k) ⊓ (LB.div LL LM).U (j', k'))) (he (j, k) (j', k'))
  have hd : gm f y ((LB.div LL LM).U (j, k) ⊓ (LB.div LL LM).U (j', k')) ((LB.div LL LM).g (j, k) (j', k')) =
      gm f y (LL.U j ⊓ LL.U j') (LL.g j j') * (gm f y (LM.U k ⊓ LM.U k') (LM.g k k'))⁻¹ :=
    (map_mul _ _ _).trans (congrArg₂ (· * ·) (gm_res f y _ hm' _)
      ((map_inv _ _).trans (congrArg (·⁻¹) (gm_res f y _ hm' _))))
  rw [hP Y f y j k hj hk, hP Y f y j' k' hj' hk', Category.comp_id]
  exact (gm_res f y inf_le_left hm' _).symm.trans (h1.trans ((map_mul _ _ _).trans
    (congrArg₂ (· * ·) hd (gm_res f y inf_le_right hm' _))))

theorem isoCancelGerm : ∀ {Y XA XG : Scheme.{0}} (θ : Y ⟶ XA) (φ : XA ⟶ XG) (fst : Y ⟶ XG), θ ≫ φ = fst →
    ∀ (LP : LB XA) (LL LM : LB XG), LP.IsLB → LL.IsLB → LM.IsLB →
    ∀ (ψ : LB.Iso LP (LL.pull φ)) (e : LB.Iso LM LL), ψ.IsGen → e.IsGen →
    ∃ w₀ : LB.Iso (LP.pull θ) (LM.pull fst), w₀.IsGen ∧
      ∀ (Z : Scheme.{0}) (r : Z ⟶ Y) (z : Z) (i : LL.ι) (j : LM.ι) (k : LP.ι),
        fst (r z) ∈ LL.U i → fst (r z) ∈ LM.U j → θ (r z) ∈ LP.U k →
        gw w₀ r z j (fun _ => k) = (gm (r ≫ fst) z (LL.U i ⊓ LM.U j) (e.s (i, j)))⁻¹ * gw ψ (r ≫ θ) z i k := by
  intro Y XA XG θ φ fst hfst LP LL LM hP hL hM ψ e hψ he
  obtain ⟨w'', hw'', hv''⟩ := pullIsoAlong θ φ (fst ≫ 𝟙 XG) (by rw [Category.comp_id, hfst]) ψ
    ((isGen_iff ψ).1 hψ)
  obtain ⟨eP, heP, hvP⟩ := isoAsPullId e he
  obtain ⟨w₀, T⟩ := exists_cancel hL eP w'' heP hw'' hM (pull_isLB hP θ)
  refine ⟨w₀, (isGen_iff w₀).2 (T.pgen_cancel hL heP hw''), fun Z r z i j k hi hj hk => ?_⟩
  have t := T Z r z i j (fun _ => k) hi hj (mem_pull.2 hk)
  rw [hv'' Z r z i (fun _ => k) hi (mem_pull.2 hk), hvP Z (r ≫ fst) z i j hi hj] at t
  rw [t, inv_mul_cancel_left]

end GlobalTheory.IsoComp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoCancelPulledBundlesGerms =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoCancelPulledBundlesGermsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoCancelPulledBundlesGermsStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoCancelPulledBundlesGerms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.SepticCharacterInjective\nimport Development.AbelianVarietyTheory.Definitions.Divisors.UnifAlong\nimport Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula\nimport Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsAddEquivOfSurjectiveOfKerIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoCancelPulledBundlesGermsStatement =====
