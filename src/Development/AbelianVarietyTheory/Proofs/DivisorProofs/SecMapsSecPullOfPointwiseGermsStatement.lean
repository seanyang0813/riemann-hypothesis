module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub
public import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc
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
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecMapsSecPullOfPointwiseGerms, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecMapsSecPullOfPointwiseGermsStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecMapsSecPullOfPointwiseGerms =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecMapsSecPullOfPointwiseGerms", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.SepticCharacterInjective\nimport Development.AbelianVarietyTheory.Definitions.Divisors.UnifAlong\nimport Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.KeyEven
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open Classical
namespace GlobalTheory

theorem secMaps_secPull_of_pointwise : ∀ {Y XA XG : Scheme.{0}} (θ : Y ⟶ XA) (φ : XA ⟶ XG) (fst : Y ⟶ XG), θ ≫ φ = fst →
    ∀ (LP : LB XA) (LL LM : LB XG), LL.IsLB →
    ∀ (ψ : LB.Iso LP (LL.pull φ)) (e : LB.Iso LM LL) (w₀ : LB.Iso (LP.pull θ) (LM.pull fst)),
      (∀ (Z : Scheme.{0}) (r : Z ⟶ Y) (z : Z) (i : LL.ι) (j : LM.ι) (k : LP.ι),
        fst (r z) ∈ LL.U i → fst (r z) ∈ LM.U j → θ (r z) ∈ LP.U k →
        gw w₀ r z j (fun _ => k) = (gm (r ≫ fst) z (LL.U i ⊓ LM.U j) (e.s (i, j)))⁻¹ * gw ψ (r ≫ θ) z i k) →
    ∀ (th : LP.Sec) (σ : LL.Sec) (σ' : LM.Sec),
      (∀ (j : (LL.pull φ).ι) (i : LP.ι) (h : (LL.pull φ).U j ⊓ LP.U i ≤ φ ⁻¹ᵁ LL.U (j PUnit.unit)),
        (φ.appLE _ _ h).hom (σ.f (j PUnit.unit)) =
          (show Γ(XA, (LL.pull φ).U j ⊓ LP.U i) from (ψ.s (j, i)).val) * resG _ inf_le_right (th.f i)) →
      GlobalTheory.Cartier.SecMaps e σ' σ →
      GlobalTheory.Cartier.SecMaps w₀ (GlobalTheory.Cartier.secPull th θ) (GlobalTheory.Cartier.secPull σ' fst) := by
  intro Y XA XG θ φ fst hfst LP LL LM hLL ψ e w₀ hw th σ σ' hth he
  subst hfst
  rintro ⟨J, K⟩
  apply fn_ext
  intro y hy
  have hj : (θ ≫ φ) y ∈ LM.U (J PUnit.unit) := mem_pull.1 hy.1
  have hk : θ y ∈ LP.U (K PUnit.unit) := mem_pull.1 hy.2
  obtain ⟨i, hi⟩ := exists_chart hLL ((θ ≫ φ) y)
  have hm1 : (θ ≫ φ) y ∈ LL.U i ⊓ LM.U (J PUnit.unit) := ⟨hi, hj⟩
  have hm2 : θ y ∈ (LL.pull φ).U (fun _ => i) ⊓ LP.U (K PUnit.unit) := ⟨mem_pull.2 hi, hk⟩
  have ha := congrArg (gs (θ ≫ φ) y (LL.U i ⊓ LM.U (J PUnit.unit))) (he (i, J PUnit.unit))
  have hb := congrArg (gs θ y ((LL.pull φ).U (fun _ => i) ⊓ LP.U (K PUnit.unit)))
    (hth (fun _ => i) (K PUnit.unit) (inf_le_left.trans fun x hx => mem_pull.1 hx))
  have hc := hw Y (𝟙 Y) y i (J PUnit.unit) (K PUnit.unit) hi hj hk
  simp only [Category.id_comp] at hc
  rw [gs_mul _ y _ hm1, gs_unit _ y _ hm1] at ha
  change gs _ y _ (resG XG _ _) = _ * gs _ y _ (resG XG _ _) at ha
  rw [gs_res _ y _ hm1, gs_res _ y _ hm1] at ha
  dsimp only at hb
  erw [gs_mul _ y _ hm2, gs_unit _ y _ hm2] at hb
  change _ = _ * gs _ y _ (resG XA _ _) at hb
  rw [gs_res _ y _ hm2] at hb
  have hb' : gs (θ ≫ φ) y (LL.U i) (σ.f i) =
      (gw ψ θ y i (K PUnit.unit)).val * gs θ y (LP.U (K PUnit.unit)) (th.f (K PUnit.unit)) :=
    (gs_pull θ φ y _ hi _).symm.trans ((gs_res θ y _ hm2 _).symm.trans hb)
  have hm3 : (𝟙 Y) y ∈ (LM.pull (θ ≫ φ)).U J := hy.1
  have hm4 : (𝟙 Y) y ∈ (LP.pull θ).U K := hy.2
  change gs (𝟙 Y) y _ (resG Y _ (resG Y _ _)) = _
  erw [gs_res _ y _ hy, gs_res _ y _ hm3, gs_pull (𝟙 Y) (θ ≫ φ) y _ hj, gs_mul _ y _ hy, gs_unit _ y _ hy]
  change _ = _ * gs (𝟙 Y) y _ (resG Y _ (resG Y _ _))
  erw [gs_res _ y _ hy, gs_res _ y _ hm4, gs_pull (𝟙 Y) θ y (LP.U (K PUnit.unit)) hk]
  simp only [Category.id_comp]
  change _ = (gw w₀ (𝟙 Y) y (J PUnit.unit) fun _ => K PUnit.unit).val * _
  rw [hc, Units.val_mul, _root_.mul_assoc, ← hb']
  dsimp only [id] at ha
  rw [ha, Units.inv_mul_cancel_left]

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecMapsSecPullOfPointwiseGerms =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecMapsSecPullOfPointwiseGermsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecMapsSecPullOfPointwiseGermsStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecMapsSecPullOfPointwiseGerms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.SepticCharacterInjective\nimport Development.AbelianVarietyTheory.Definitions.Divisors.UnifAlong\nimport Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecMapsSecPullOfPointwiseGermsStatement =====
