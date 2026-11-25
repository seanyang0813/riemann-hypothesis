module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpMapGermFromSpec
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
import Mathlib.Tactic.Linter.Style
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AmplePt
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalPolarisationOnAbLocusGenericFibre, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalPolarisationOnAbLocusGenericFibreStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalPolarisationOnAbLocusGenericFibre =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalPolarisationOnAbLocusGenericFibre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpMapGermFromSpec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AmplePt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.KeyEven
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open Classical

noncomputable section

namespace GlobalTheory.KeyValsPol

theorem polOnAb_genPt : ∀ (S : Scheme.{0}) [IsIntegral S] (G : Over S) [GrpObj G] [IsCommMonObj G] (L : RigLB G), IsOpen (abLocus G) →
    genericPoint S ∈ abLocus G → PolOnAb G L.L → PolOnAb (KeyVals.bG G (KeyVals.genPt S)) (KeyVals.bL L (KeyVals.genPt S)).L := by
  intro S _ G _ _ L hO hg hpol V _
  obtain ⟨U, hU, hp, hUs⟩ := exists_isAffineOpen_mem_and_subset (X := S) (U := ⟨abLocus G, hO⟩) (x := genericPoint S) hg
  obtain ⟨ha, hk⟩ := hpol U hUs
  obtain ⟨f, hf⟩ : ∃ f : V.toScheme ⟶ U.toScheme, f ≫ U.ι = V.ι ≫ KeyVals.genPt S :=
    ⟨IsOpenImmersion.lift U.ι (V.ι ≫ KeyVals.genPt S) (by
      rw [Scheme.Opens.range_ι]
      rintro _ ⟨y, rfl⟩
      exact KeyVals.genPt_le U hp (Set.mem_univ (V.ι y))), IsOpenImmersion.lift_fac _ _ _⟩
  have h := isGrpPullback_pullback G (KeyVals.genPt S)
  have h' := isGrpPullback_pullback (KeyVals.bG G (KeyVals.genPt S)) V.ι
  have h₀ := isGrpPullback_pullback G U.ι
  have h₂ := (h'.comp h).congr hf.symm rfl
  let A' := (Over.pullback V.ι).obj (KeyVals.bG G (KeyVals.genPt S))
  let a : (KeyVals.bG G (KeyVals.genPt S)).left ⟶ G.left := pullback.fst G.hom (KeyVals.genPt S)
  let b : A'.left ⟶ (KeyVals.bG G (KeyVals.genPt S)).left := pullback.fst (KeyVals.bG G (KeyVals.genPt S)).hom V.ι
  let ψ : A'.left ⟶ ((Over.pullback U.ι).obj G).left :=
    h₀.1.lift _ _ (h₂.1.w.trans (Category.assoc _ _ _).symm)
  have hψ : ψ ≫ pullback.fst G.hom U.ι = b ≫ a := h₀.1.lift_fst _ _ _
  have h₃ : IsGrpPullback A' ((Over.pullback U.ι).obj G) f ψ :=
    h₀.cancel (h₂.congr rfl hψ.symm) (h₀.1.lift_snd _ _ _)
  have hL := pull_isLB (pull_isLB L.isLB a) b
  have hL₀ := pull_isLB L.isLB (pullback.fst G.hom U.ι)
  obtain ⟨w, hw⟩ : LBIso ((L.L.pull a).pull b) ((L.L.pull (pullback.fst G.hom U.ι)).pull ψ) :=
    LBIso.chartPull
      (chartPullLinComb L.L a (fun _ : PUnit => b) (fun _ => b ≫ a) (fun _ => 1) (𝟙 _)
        fun _ => (Category.id_comp _).symm)
      (chartPullLinComb L.L _ (fun _ : PUnit => ψ) (fun _ => b ≫ a) (fun _ => 1) (𝟙 _)
        fun _ => hψ.trans (Category.id_comp _).symm)
      (_root_.GlobalTheory.lbIso_refl (pull_isLB L.isLB (b ≫ a)))
  have : IsAffine U.toScheme := hU
  exact ⟨relAmple_pull h₃.1 hL₀ hL ((isGen_iff w).1 hw) ⊤ (isAffineOpen_top _) (fun _ => trivial) ha,
    kTriv_pull h₃ hL₀ hL ((isGen_iff w).1 hw) hk⟩

end GlobalTheory.KeyValsPol

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalPolarisationOnAbLocusGenericFibre =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalPolarisationOnAbLocusGenericFibreStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalPolarisationOnAbLocusGenericFibreStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpMapGermFromSpec\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalPolarisationOnAbLocusGenericFibre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalPolarisationOnAbLocusGenericFibreStatement =====
