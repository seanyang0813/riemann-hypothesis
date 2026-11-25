module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.StmtPhi
public import Development.AutomorphicArithmetic.ThetaCorrespondence.FockModels.TiltedDrinfeld.Base
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TranscendentalPeriodUnits.CrBase
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
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.TypeStar

@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open Formalism.Per6 GroundTheory.PAdicHodge DeRhamPotentiallySemistable.DRPst

namespace CrystallineSemistableComparison

variable {l : ℕ} [Fact l.Prime]

theorem fc_isUnit_sub {F : Type*} [Field F] (S : Subring F) {x : F} (hx : x ∈ S) (hx' : x⁻¹ ∈ S) (h0 : x ≠ 0) :
    IsUnit (⟨x, hx⟩ : S) :=
  ⟨⟨⟨x, hx⟩, ⟨x⁻¹, hx'⟩, Subtype.ext (mul_inv_cancel₀ h0), Subtype.ext (inv_mul_cancel₀ h0)⟩, rfl⟩

theorem fc_ι_c (a : ACris.ACris ℂ_[l] l) : period_ring_base.ι l (cB l a) = iC l a :=
  period_ring_base.BaseA.ι_cB l a

private theorem fc_lift_range_le {A F : Type} [CommRing A] [Field F] {a t : A}
    (ι : Loc2 a t →+* F) (i : A →+* F) (hι : ∀ x, ι (Loc2.mk₀ a t x) = i x)
    (S : Subring F) (hi : ∀ x, i x ∈ S)
    (ha : (i a)⁻¹ ∈ S) (ha₀ : i a ≠ 0) (ht : (i t)⁻¹ ∈ S) (ht₀ : i t ≠ 0) :
    ι.range ≤ S := by
  let f := i.codRestrict S hi
  have ha' : IsUnit (f a) := fc_isUnit_sub S (hi a) ha ha₀
  have ht' : IsUnit (f t) := fc_isUnit_sub S (hi t) ht ht₀
  let g := Loc2.lift f ha' ht'
  have hg : S.subtype.comp g = ι := Loc2.hom_ext fun x =>
    (congrArg Subtype.val (Loc2.lift_mk₀ f ha' ht' x)).trans (hι x).symm
  rintro _ ⟨x, rfl⟩
  rw [← hg]
  exact (g x).2

theorem fc_range_le : (period_ring_base.ι l).range ≤ Bcr l := by
  refine fc_lift_range_le (a := (l : ACris.ACris ℂ_[l] l)) (t := tA l)
    (period_ring_base.ι l) (iC l) (fc_ι_c (l := l)) (Bcr l) (iC_mem_bcr (l := l))
    ?_ ?_ (tinv_mem_bcr (l := l)) (DeRhamTwist.Twist.tQ_ne (l := l))
  · simpa only [map_natCast (iC l)] using (linv_mem_bcr (l := l))
  · simpa only [map_natCast (iC l)] using (l_ne (l := l))

theorem fc_bcr_le : Bcr l ≤ (period_ring_base.ι l).range := by
  refine Subring.closure_le.2 ?_
  rintro x (⟨a, rfl⟩ | rfl | rfl)
  · exact RingHom.mem_range.2 ⟨cB l a, fc_ι_c (l := l) a⟩
  · change ((l : BdR l))⁻¹ ∈ (period_ring_base.ι l).range
    simpa only [map_natCast (period_ring_base.ι l)] using
      _root_.CrystallineSemistableComparison.inv_mem_range (period_ring_base.ι l) (period_ring_base.isUnit_l l)
  · change (tQ l)⁻¹ ∈ (period_ring_base.ι l).range
    simpa only [period_ring_base.period_image_eq l] using
      _root_.CrystallineSemistableComparison.inv_mem_range (period_ring_base.ι l) (period_ring_base.base_t_unit l)

theorem fc_range : (period_ring_base.ι l).range = Bcr l :=
  le_antisymm (fc_range_le (l := l)) (fc_bcr_le (l := l))

theorem factsC : BcrisPeriodFacts := fun l _ _ _ => fc_range (l := l)

end CrystallineSemistableComparison
