module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ValuationMultiplicationInvariance
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.GenCalc
public import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExistsIntegralBasis
public import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.IsExtensionPullOver
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsDivOfExpandsAt
public import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExpandsAtSub
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
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExpandsAtSecIsMul
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ProdExpPf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.SectionScalarValuation

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.SvalEqZeroOfExpandsAt

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.SvalEqZeroOfExpandsAt =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.SvalEqZeroOfExpandsAt", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExistsIntegralBasis\npublic import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.IsExtensionPullOver\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.GenCalc\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsDivOfExpandsAt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ValuationMultiplicationInvariance\nimport Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExpandsAtSecIsMul\npublic import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExpandsAtSub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ProdExpPf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.SectionScalarValuation\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.DVR
attribute [local instance] Over.cartesianMonoidalCategory
open scoped CategoryTheory.Obj

namespace GlobalTheory.IntegralCombination

open ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.FieldBaseChange GlobalTheory.PullbackValuation

section Algebra

variable {V : Type} [CommRing V] [IsDomain V] {F : Type} [Field F] [Algebra (FractionRing V) F]

theorem exists_denom {n : ℕ} (a : Fin n → FractionRing V) : ∃ (r : V) (b : Fin n → V), r ≠ 0 ∧
    ∀ p, algebraMap V (FractionRing V) (b p) = algebraMap V (FractionRing V) r * a p := by
  obtain ⟨r, hr⟩ := IsLocalization.exist_integer_multiples_of_finite (nonZeroDivisors V) a
  choose b hb using hr
  exact ⟨r, b, nonZeroDivisors.ne_zero r.2, fun p => by rw [hb p, Algebra.smul_def]⟩

variable {MF : Type} [AddCommGroup MF] [Module F MF] {Ix : Type} {n : ℕ}

end Algebra

section Expansion

variable {V : Type} [CommRing V] [IsDomain V] {I : Ideal V} {D : DegData V I}
  {A : PolAV (Spec (CommRingCat.of (FractionRing V)))} {G : Over (Spec (CommRingCat.of V))} [GrpObj G]
  [IsCommMonObj G]

abbrev SecG (U : UnifPre I D A G) (k : ℕ) : Type :=
  SecOver G.hom (LB.LinComb U.LG.L (K := Fin 1) (fun _ => 𝟙 G.left) (fun _ => (k : ℤ)))

abbrev SecAb (D : DegPre V) (k : ℕ) (α : D.X) : Type :=
  SecOver D.P.A.hom (LB.LinComb D.P.L (D.famφB α) (DegPre.famε k))

theorem expandsAt_zero (U : UnifPre I D A G) (e k : ℕ) :
    U.ExpandsAt e k (0 : SecG U k) (fun α => (0 : SecAb D.toPre k α)) := by
  refine expandsAt_of_val U e k _ _ ∅ fun y J hJ => ⟨fun α _ => sval_zero' (π := D.toPre.P.A.hom) hJ _, fun jL hL => ?_⟩
  have : sv U k (0 : SecG U k) (fGl I G e) y jL = 0 := gs_zero' _ y _ (Set.mem_iInter.2 fun _ => hL)
  rw [this, mul_zero, Finset.sum_empty]

omit [IsDomain V] in
theorem chart_smul_add {Y : Scheme.{0}} {p : Y ⟶ Spec (CommRingCat.of V)} {M : LB Y} (c : V) (x y : SecOver p M)
    (j : M.ι) : chartLin p M j (c • x + y) = chartLin p M j y - chartLin p M j ((-c) • x) := by
  rw [← map_sub, neg_smul, sub_neg_eq_add, add_comm]

theorem expandsAt_comb (U : UnifPre I D A G) (e k : ℕ) {n : ℕ} (σ : Fin n → SecG U k)
    (f : Fin n → ∀ α, SecAb D.toPre k α) (h : ∀ p, U.ExpandsAt e k (σ p) (f p)) (b : Fin n → V) :
    U.ExpandsAt e k (∑ p, b p • σ p : SecG U k) (fun α => (∑ p, b p • f p α : SecAb D.toPre k α)) := by
  classical
  induction (Finset.univ : Finset (Fin n)) using Finset.induction_on with
  | empty => exact expandsAt_zero U e k
  | insert a S ha ih =>
    simp only [Finset.sum_insert ha]
    refine expandsAt_sub V I D A G U e k _ ((-b a) • σ a : SecG U k) _ _
      (fun α => ((-b a) • f a α : SecAb D.toPre k α)) _ (fun j => ?_) (fun α j => ?_) ih
      (expandsAt_secIsMul V I D A G U e k (-b a) (σ a) _ (f a) _ (fun _ => rfl) (fun _ _ => rfl) (h a))
    · exact chart_smul_add _ _ _ j
    · exact chart_smul_add _ _ _ j

end Expansion

section Basis

variable {V : Type} [CommRing V] [IsDomain V] (D : DegPre V) (F : Type) [Field F] [Algebra (FractionRing V) F]

theorem prB_over : (DegPre.prB D F).left ≫ D.P.A.hom =
    (fst (TF (R := V) F) D.P.A).left ≫ Spec.map (CommRingCat.ofHom (toF V F)) := by
  rw [Over.w, ← hom_TF]
  exact (Over.w (fst (TF (R := V) F) D.P.A)).symm

abbrev SecAbF (k : ℕ) (α : D.X) : Type :=
  SecOver (R := F) (fst (TF (R := V) F) D.P.A).left (LB.LinComb D.P.L (DegPre.famφ D F α) (DegPre.famε k))

def pullAb (k : ℕ) (α : D.X) : SecAb D k α →ₛₗ[toF V F] SecAbF D F k α :=
  pullOver D.P.L (DegPre.famε k) (prB_over D F) (GC.famφ_eq D F α)

theorem sval_pullAb {k : ℕ} {α : D.X} (s : SecAb D k α) {Z : Scheme.{0}} (r : Z ⟶ (DegPre.BF D F).left) {z : Z} {J}
    (hJ : Good D.P.L z J) : sval (pullAb D F k α s) r z J = sval s (r ≫ (DegPre.prB D F).left) z J :=
  sval_pullOver (prB_over D F) (GC.famφ_eq D F α) s r hJ

end Basis

end GlobalTheory.IntegralCombination
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.SvalEqZeroOfExpandsAt =====
