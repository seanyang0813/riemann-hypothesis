module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.UnimodOneGenus
public import Formalism.SharpRestriction.CuspSpanNormBounds.FlagEEqHyperbolic
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DifferentCoprimeSplit
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsIsomFrame
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsNormOneOfPair
public import Formalism.HermitianLattices.StatementLat
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ExistsOrthogonalUnitVector
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.PairUnitLoc
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.StandardBaseFlagComplementIntegralLattice
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.GmapLocEqOfFrame
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.IsHermSemilocalLocRing
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularGenus.StdLatEqSpan
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ZMemPerp
import Mathlib.Tactic.Linter.Style
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsSqAbsNormOfInert
import Formalism.HermitianLattices.HermitianLatticesProofs.LocDual

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.CoordLInjective, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.RsMemPerpIff, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.LatticeFlagExists, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.LatticeUnimodular, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.PartnerVectorExists, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.RowSurjOfGenus, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ExistsIsomMove, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ExistsIsomSelfDual, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ExistsTraceNotMem, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.UnimodularOneGenus, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.RowSurjective

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.CoordLInjective =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.CoordLInjective", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.UnimodOneGenus\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.FlagEEqHyperbolic\nimport Mathlib.Algebra.AffineMonoid.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Module Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.BasicNotions Formalism.L2.SG.CntLocal
open Classical

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula.RowsMassW

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section Lat

variable (D : D7)

variable {T : D.host.E} (F0 : FlagG (VS D) D.R.rS T) (f : Fin D.R.rS → (VS D).V)

theorem vPr_perp (hf : PartnerOK D F0 f) (v : (VS D).V) : vPr D F0 f v ∈ perpS (VS D) F0.X := by
  intro x hx
  induction hx using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨a, rfl⟩ := hy
    simp [vPr, hf.1]
  | zero => simp
  | add y w _ _ h1 h2 => simp [h1, h2]
  | smul c y _ h => simp [h]

def vPrLin : (VS D).V →ₗ[D.host.E] (VS D).V where
  toFun := vPr D F0 f
  map_add' := vPr_add D F0 f
  map_smul' := vPr_smul D F0 f

def coordL (hf : PartnerOK D F0 f) :
    (VS D).V →ₗ[D.host.E] (Fin D.R.rS → D.host.E) × (WbQ D F0) × (Fin D.R.rS → D.host.E) :=
  LinearMap.prod (LinearMap.pi fun a => ((VS D).hT (f a)).comp (vPrLin D F0 f))
    (LinearMap.prod ((nX D F0).mkQ.comp (LinearMap.codRestrict _ (vPrLin D F0 f) (vPr_perp D F0 f hf)))
      (LinearMap.pi fun a => (VS D).hT (F0.e a)))

theorem coordL_apply (hf : PartnerOK D F0 f) (v : (VS D).V) :
    coordL D F0 f hf v = ((fun a => (VS D).hT (f a) (vPr D F0 f v)),
      (Submodule.Quotient.mk (⟨vPr D F0 f v, vPr_perp D F0 f hf v⟩ : perpS (VS D) F0.X) : WbQ D F0),
      (fun a => (VS D).hT (F0.e a) v)) := rfl

theorem coordL_injective (hf : PartnerOK D F0 f) : Function.Injective (coordL D F0 f hf) := by
  rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
  intro v hv
  rw [coordL_apply] at hv
  simp only [Prod.mk_eq_zero] at hv
  obtain ⟨h1, h2, h3⟩ := hv
  have hb : ∀ a, (VS D).hT (F0.e a) v = 0 := fun a => congrFun h3 a
  have hvv : vPr D F0 f v = v := by simp [vPr, hb]
  have hX : v ∈ F0.X := by
    rw [Submodule.Quotient.mk_eq_zero] at h2
    have : vPr D F0 f v ∈ F0.X := h2
    rwa [hvv] at this
  obtain ⟨c, hc⟩ := Submodule.mem_span_range_iff_exists_fun D.host.E |>.1 hX
  have ha : ∀ a, (VS D).hT (f a) v = 0 := fun a => by
    have := congrFun h1 a
    rwa [hvv] at this
  have hc0 : ∀ a, c a = 0 := by
    intro a
    have h := ha a

    rw [← hc, map_sum] at h
    have e : ∀ b, (VS D).hT (f a) (c b • F0.e b) = c b * (if b = a then 1 else 0) := by
      intro b
      rw [map_smul, smul_eq_mul, ← (VS D).herm.eq (F0.e b) (f a), hf.1 b a]
      split_ifs <;> simp
    simp only [e, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true] at h
    exact h
  rw [← hc]
  simp [hc0]

theorem fi_bound (I : FractionalIdeal (nonZeroDivisors (𝓞 D.host.E)) D.host.E) :
    ∃ d : D.host.E, ∀ x ∈ I, ∃ o : 𝓞 D.host.E, x = (o : D.host.E) * d := by
  obtain ⟨d, hdS, hd⟩ := I.isFractional
  refine ⟨(algebraMap (𝓞 D.host.E) D.host.E d)⁻¹, fun x hx => ?_⟩
  obtain ⟨o, ho⟩ := hd x hx
  have hd0 : algebraMap (𝓞 D.host.E) D.host.E d ≠ 0 := by
    rw [Ne, map_eq_zero_iff _ (IsFractionRing.injective (𝓞 D.host.E) D.host.E)]
    exact nonZeroDivisors.ne_zero hdS
  refine ⟨o, ?_⟩
  rw [Algebra.smul_def] at ho
  show x = algebraMap (𝓞 D.host.E) D.host.E o * _
  rw [ho]
  field_simp

theorem pi_mem_span {x : Fin D.R.rS → D.host.E} {d : Fin D.R.rS → D.host.E}
    (h : ∀ a, ∃ o : 𝓞 D.host.E, x a = (o : D.host.E) * d a) :
    x ∈ Submodule.span (𝓞 D.host.E) (Set.range fun a => (Pi.single a (d a) : Fin D.R.rS → D.host.E)) := by
  choose o ho using h
  have e : x = ∑ a, o a • (Pi.single a (d a) : Fin D.R.rS → D.host.E) := by
    ext b
    simp only [Finset.sum_apply, Pi.smul_apply, Pi.single_apply]
    simp [ho b]
    rfl
  rw [e]
  exact Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩)

theorem lamC_fg (hf : PartnerOK D F0 f) (M : Submodule (𝓞 D.host.E) (WbQ D F0)) (hM : M.FG) :
    (lamC D F0 f M).FG := by
  choose dα hdα using fun a => fi_bound D (aaI D a)
  choose dβ hdβ using fun a => fi_bound D (aaI D a)⁻¹
  let P : Submodule (𝓞 D.host.E) ((Fin D.R.rS → D.host.E) × (WbQ D F0) × (Fin D.R.rS → D.host.E)) :=
    (Submodule.span (𝓞 D.host.E) (Set.range fun a => (Pi.single a (dα a) : Fin D.R.rS → D.host.E))).prod
      (M.prod (Submodule.span (𝓞 D.host.E) (Set.range fun a =>
        (Pi.single a (star (dβ a)) : Fin D.R.rS → D.host.E))))
  have hPfg : P.FG := Submodule.FG.prod (Submodule.fg_span (Set.finite_range _))
    (Submodule.FG.prod hM (Submodule.fg_span (Set.finite_range _)))
  have hle : (lamC D F0 f M).map ((coordL D F0 f hf).restrictScalars (𝓞 D.host.E)) ≤ P := by
    rintro _ ⟨v, ⟨h1, ⟨w, hw, hwM⟩, h3⟩, rfl⟩
    refine ⟨?_, ?_, ?_⟩
    · exact pi_mem_span D (fun a => hdα a _ (h3 a))
    · have e : (⟨vPr D F0 f v, vPr_perp D F0 f hf v⟩ : perpS (VS D) F0.X) = w := Subtype.ext hw.symm
      show (Submodule.Quotient.mk (⟨vPr D F0 f v, vPr_perp D F0 f hf v⟩ : perpS (VS D) F0.X) : WbQ D F0) ∈ M
      rw [e]; exact hwM
    · refine pi_mem_span D (fun a => ?_)
      obtain ⟨o, ho⟩ := hdβ a _ (h1 a)
      obtain ⟨o', ho'⟩ := star_int D o
      refine ⟨o', ?_⟩
      show (VS D).hT (F0.e a) v = _
      rw [ho', ← star_mul, mul_comm, ← ho, star_star]
  exact Submodule.fg_of_fg_map_injective ((coordL D F0 f hf).restrictScalars (𝓞 D.host.E)) (coordL_injective D F0 f hf)
    (Submodule.FG.of_le (S := (lamC D F0 f M).map ((coordL D F0 f hf).restrictScalars (𝓞 D.host.E))) hPfg hle)

theorem lattice_integral : LamLattice := by
  intro D u F0 f M hf hM
  exact Submodule.IsLattice.of_fg D.host.E (lamC_fg D F0 f hf M hM.1.fg)

end Lat

end PI.UnitaryGroupMassFormula.CntFormula.RowsMassW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.CoordLInjective =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.RsMemPerpIff =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.RsMemPerpIff", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.UnimodOneGenus\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Module Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.BasicNotions Formalism.L2.SG.CntLocal
open Classical

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula.RowsMassW

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section Coord

variable (D : D7) {T : D.host.E} (F0 : FlagG (VS D) D.R.rS T)

theorem rs_e_mem_X (a : Fin D.R.rS) : F0.e a ∈ F0.X := Submodule.subset_span ⟨a, rfl⟩

theorem rs_hT_e_X (a : Fin D.R.rS) {x : (VS D).V} (hx : x ∈ F0.X) : (VS D).hT (F0.e a) x = 0 := by
  induction hx using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨b, rfl⟩ := hy
    exact F0.e_iso a b
  | zero => simp
  | add y w _ _ h1 h2 => simp [h1, h2]
  | smul c y _ h => simp [h]

theorem rs_mem_perp_iff' (y : (VS D).V) : y ∈ perpS (VS D) F0.X ↔ ∀ a, (VS D).hT (F0.e a) y = 0 := by
  constructor
  · intro hy a
    exact hy _ (rs_e_mem_X D F0 a)
  · intro h x hx
    induction hx using Submodule.span_induction with
    | mem w hw =>
      obtain ⟨b, rfl⟩ := hw
      exact h b
    | zero => simp
    | add w w' _ _ h1 h2 => simp [h1, h2]
    | smul c w _ h' => simp [h']

theorem rs_X_le_perp : F0.X ≤ perpS (VS D) F0.X := fun x hx =>
  (rs_mem_perp_iff' D F0 x).2 fun a => rs_hT_e_X D F0 a hx

theorem rs_mk_X_zero {x : (VS D).V} (hx : x ∈ F0.X) (hp : x ∈ perpS (VS D) F0.X) :
    (Submodule.Quotient.mk (⟨x, hp⟩ : perpS (VS D) F0.X) : WbQ D F0) = 0 := by
  rw [Submodule.Quotient.mk_eq_zero]
  exact hx

variable {D F0} {f : Fin D.R.rS → (VS D).V}

theorem rs_hT_f_e (hf : PartnerOK D F0 f) (a b : Fin D.R.rS) :
    (VS D).hT (f a) (F0.e b) = if b = a then 1 else 0 := by
  rw [← (VS D).herm.eq (F0.e b) (f a), hf.1 b a]
  split_ifs <;> simp

end Coord

end PI.UnitaryGroupMassFormula.CntFormula.RowsMassW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.RsMemPerpIff =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.LatticeFlagExists =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.LatticeFlagExists", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.UnimodOneGenus\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.RsMemPerpIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Module Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.BasicNotions Formalism.L2.SG.CntLocal
open Classical

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula.RowsMassW

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section Flag

variable {D : D7} {T : D.host.E} {F0 : FlagG (VS D) D.R.rS T} {f : Fin D.R.rS → (VS D).V}
  {M : Submodule (𝓞 D.host.E) (WbQ D F0)}

theorem rs_mem_lamC_perp {v : (VS D).V} (hv : v ∈ perpS (VS D) F0.X) :
    v ∈ lamC D F0 f M ↔ (Submodule.Quotient.mk (⟨v, hv⟩ : perpS (VS D) F0.X) : WbQ D F0) ∈ M ∧
      ∀ a, (VS D).hT (f a) v ∈ aaI D a := by
  have h0 : ∀ a, (VS D).hT (F0.e a) v = 0 := fun a => hv _ (Submodule.subset_span ⟨a, rfl⟩)
  have hvPr : vPr D F0 f v = v := by simp [vPr, h0]
  constructor
  · rintro ⟨-, ⟨w, hw, hwM⟩, h3⟩
    have hwv : w = ⟨v, hv⟩ := Subtype.ext (hw.trans hvPr)
    subst hwv
    exact ⟨hwM, fun a => by rw [← hvPr]; exact h3 a⟩
  · rintro ⟨hM, h3⟩
    refine ⟨fun a => ?_, ⟨⟨v, hv⟩, hvPr.symm, hM⟩, fun a => ?_⟩
    · simp only [h0, star_zero]
      exact fi_zero D _
    · rw [hvPr]
      exact h3 a

theorem rs_orth_perp {y : (VS D).V} (hy : y ∈ orth (VS D) F0.X) : y ∈ perpS (VS D) F0.X := by
  simp only [orth, Submodule.mem_iInf, LinearMap.mem_ker] at hy
  exact fun x hx => hy x hx

theorem rs_z_mem (hf : PartnerOK D F0 f) (hM : IsGlueLat (hWb D F0) (zbar D F0) M) :
    F0.z ∈ lamC D F0 f M := by
  rw [rs_mem_lamC_perp (z_mem_perp D F0)]
  refine ⟨hM.2.2.1, fun a => ?_⟩
  rw [hf.2.2 a]
  exact fi_zero D _

theorem rs_smul_e_mem (hf : PartnerOK D F0 f) {a : Fin D.R.rS} {x : D.host.E} (hx : x ∈ aaI D a) :
    x • F0.e a ∈ lamC D F0 f M := by
  have hXe : ∀ y ∈ F0.X, ∀ b, (VS D).hT y (F0.e b) = 0 := by
    intro y hy b
    have hy' : y ∈ Submodule.span D.host.E (Set.range F0.e) := hy
    clear hy
    induction hy' using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨c, rfl⟩ := hz
      exact F0.e_iso c b
    | zero => rw [map_zero, LinearMap.zero_apply]
    | add y z _ _ hy hz => rw [map_add (f := _), LinearMap.add_apply, hy, hz, add_zero]
    | smul c y _ hy => rw [LinearMap.map_smulₛₗ, LinearMap.smul_apply, hy, smul_zero]
  have hperp : x • F0.e a ∈ perpS (VS D) F0.X := by
    intro y hy
    rw [map_smul, hXe y hy a, smul_zero]
  rw [rs_mem_lamC_perp hperp]
  refine ⟨?_, fun b => ?_⟩
  · have hmem : x • F0.e a ∈ F0.X := Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩)
    have h0 : (Submodule.Quotient.mk (⟨x • F0.e a, hperp⟩ : perpS (VS D) F0.X) : WbQ D F0) = 0 :=
      (Submodule.Quotient.mk_eq_zero _).mpr hmem
    rw [h0]
    exact zero_mem _
  · have hs : starRingEnd D.host.E ((VS D).hT (F0.e a) (f b)) = (VS D).hT (f b) (F0.e a) := by
      first
        | exact (VS D).herm.eq (F0.e a) (f b)
    rw [map_smul, ← hs, hf.1 a b, smul_eq_mul]
    split_ifs with hab
    · subst hab
      simpa using hx
    · simp only [map_zero, mul_zero]
      exact FractionalIdeal.zero_mem _

theorem rs_xlam (hf : PartnerOK D F0 f) : XLam (lamC D F0 f M) (lf D F0) = XS D F0 := by
  apply le_antisymm
  · rintro v ⟨hvΛ, hvX⟩
    have hvX' : v ∈ F0.X := hvX
    obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun D.host.E).1 hvX'
    have hα := ((rs_mem_lamC_perp (rs_X_le_perp D F0 hvX')).1 hvΛ).2
    have hca : ∀ a, c a ∈ aaI D a := by
      intro a
      have h := hα a

      rw [← hc, map_sum] at h
      simp only [map_smul, rs_hT_f_e hf, smul_eq_mul, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq',
        Finset.mem_univ, if_true] at h
      exact h
    rw [← hc]
    refine Submodule.sum_mem _ fun a _ => Submodule.subset_span ⟨a, c a, hca a, rfl⟩
  · refine Submodule.span_le.2 ?_
    rintro _ ⟨a, x, hx, rfl⟩
    exact ⟨rs_smul_e_mem hf hx, Submodule.smul_mem _ x (rs_e_mem_X D F0 a)⟩

theorem rs_prim (hf : PartnerOK D F0 f) (hM : IsGlueLat (hWb D F0) (zbar D F0) M) (c : D.host.E)
    (hc : c • F0.z ∈ Lsub (lamC D F0 f M) (lf D F0)) : ∃ o : 𝓞 D.host.E, (o : D.host.E) = c := by
  obtain ⟨y, hy, x, hx, hyx⟩ := Submodule.mem_sup.1 hc.1
  have hyΛ : y ∈ lamC D F0 f M := hy.1
  have hyp : y ∈ perpS (VS D) F0.X := rs_orth_perp hy.2
  have hxX : x ∈ F0.X := hx
  have hxp : x ∈ perpS (VS D) F0.X := rs_X_le_perp D F0 hxX
  have hyM := ((rs_mem_lamC_perp hyp).1 hyΛ).1
  apply hM.2.2.2 c
  have hsum : c • (⟨F0.z, z_mem_perp D F0⟩ : perpS (VS D) F0.X) = ⟨y, hyp⟩ + ⟨x, hxp⟩ := by
    apply Subtype.ext
    simp only [Submodule.coe_smul, Submodule.coe_add]
    exact hyx.symm
  rw [zbar, ← Submodule.Quotient.mk_smul, hsum, Submodule.Quotient.mk_add, rs_mk_X_zero D F0 hxX, add_zero]
  exact hyM

def rsLift (w : perpS (VS D) F0.X) : (VS D).V := (w : (VS D).V) - ∑ a, (VS D).hT (f a) w • F0.e a

theorem rs_lift_perp (w : perpS (VS D) F0.X) : rsLift (f := f) w ∈ perpS (VS D) F0.X := by
  show ∀ x ∈ F0.X, (VS D).hT x (rsLift (f := f) w) = 0
  intro x hx
  have hxe : ∀ b, (VS D).hT x (F0.e b) = 0 := by
    intro b
    have hx' : x ∈ Submodule.span D.host.E (Set.range F0.e) := hx
    clear hx
    induction hx' using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨a, rfl⟩ := hy
      exact F0.e_iso a b
    | zero => rw [map_zero, LinearMap.zero_apply]
    | add y z _ _ hy hz => rw [map_add (f := _), LinearMap.add_apply, hy, hz, add_zero]
    | smul c y _ hy => rw [LinearMap.map_smulₛₗ, LinearMap.smul_apply, hy, smul_zero]

  simp only [rsLift, map_sub, map_sum, map_smul, hxe, smul_zero, Finset.sum_const_zero, sub_zero]
  exact w.2 x hx

theorem rs_lift_mk (w : perpS (VS D) F0.X) :
    (Submodule.Quotient.mk (⟨rsLift (f := f) w, rs_lift_perp w⟩ : perpS (VS D) F0.X) : WbQ D F0) =
      Submodule.Quotient.mk w := by
  apply (Submodule.Quotient.eq _).mpr
  show (((⟨rsLift (f := f) w, rs_lift_perp w⟩ : perpS (VS D) F0.X) - w : perpS (VS D) F0.X) : (VS D).V) ∈ F0.X
  simp only [Submodule.coe_sub, rsLift, sub_sub_cancel_left]
  exact neg_mem (sum_mem fun a _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩))

theorem rs_hT_f_lift (hf : PartnerOK D F0 f) (w : perpS (VS D) F0.X) (b : Fin D.R.rS) :
    (VS D).hT (f b) (rsLift (f := f) w) = 0 := by
  have hfe : ∀ a, (VS D).hT (f b) (F0.e a) = if a = b then 1 else 0 := by
    intro a
    have hs : starRingEnd D.host.E ((VS D).hT (F0.e a) (f b)) = (VS D).hT (f b) (F0.e a) := by
      first
        | exact (VS D).herm.eq (F0.e a) (f b)
    rw [← hs, hf.1 a b]
    split_ifs <;> simp

  simp only [rsLift, map_sub, map_sum, map_smul, hfe, smul_eq_mul, mul_ite, mul_one, mul_zero,
  Finset.sum_ite_eq', Finset.mem_univ, if_true, sub_self]

theorem rs_lift_mem (hf : PartnerOK D F0 f) (w : perpS (VS D) F0.X)
    (hw : (Submodule.Quotient.mk w : WbQ D F0) ∈ M) : rsLift (f := f) w ∈ lamC D F0 f M := by
  rw [rs_mem_lamC_perp (rs_lift_perp w)]
  refine ⟨?_, fun a => ?_⟩
  · rw [rs_lift_mk]
    exact hw
  · rw [rs_hT_f_lift hf w a]
    exact FractionalIdeal.zero_mem _

theorem rs_mof (hf : PartnerOK D F0 f) : Mof D F0 (lamC D F0 f M) = M := by
  apply le_antisymm
  · rintro _ ⟨w, hw, rfl⟩
    have hw' : (w : (VS D).V) ∈ lamC D F0 f M := hw
    exact ((rs_mem_lamC_perp w.2).1 hw').1
  · intro m hm
    obtain ⟨w, rfl⟩ := Submodule.Quotient.mk_surjective _ m
    refine ⟨⟨rsLift (f := f) w, rs_lift_perp w⟩, rs_lift_mem hf w hm, ?_⟩
    exact rs_lift_mk w

end Flag

theorem lattice_flag_exists : LamFlag := by
  intro D u F0 f M hf hM
  exact ⟨rs_z_mem hf hM, rs_xlam hf, rs_prim hf hM, rs_mof hf⟩

end PI.UnitaryGroupMassFormula.CntFormula.RowsMassW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.LatticeFlagExists =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.LatticeUnimodular =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.LatticeUnimodular", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.UnimodOneGenus\nimport Mathlib.Algebra.AffineMonoid.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Module Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.BasicNotions Formalism.L2.SG.CntLocal
open Classical

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula.RowsMassW

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section Unimod

variable {D : D7} {T : D.host.E} {F0 : FlagG (VS D) D.R.rS T} {f : Fin D.R.rS → (VS D).V}
  {M : Submodule (𝓞 D.host.E) (WbQ D F0)}

theorem rs_mem_one_iff (x : D.host.E) :
    x ∈ (1 : Submodule (𝓞 D.host.E) D.host.E) ↔ ∃ o : 𝓞 D.host.E, (o : D.host.E) = x := by
  rw [Submodule.mem_one]

theorem rs_fone_iff (x : D.host.E) :
    x ∈ (1 : FractionalIdeal (nonZeroDivisors (𝓞 D.host.E)) D.host.E) ↔ ∃ o : 𝓞 D.host.E, (o : D.host.E) = x := by
  rw [FractionalIdeal.mem_one_iff]

theorem rs_mem_dual {h : (VS D).V →ₗ⋆[D.host.E] (VS D).V →ₗ[D.host.E] D.host.E}
    {L : Submodule (𝓞 D.host.E) (VS D).V} {v : (VS D).V} :
    v ∈ Formalism.HermitianLatticesTheory.dual h L ↔ ∀ y ∈ L, h y v ∈ (1 : Submodule (𝓞 D.host.E) D.host.E) := by
  simp only [Formalism.HermitianLatticesTheory.dual, Formalism.E.hdual, Submodule.mem_iInf, Submodule.mem_comap,
    LinearMap.restrictScalars_apply]

theorem rs_mem_dualW {h : WbQ D F0 →ₗ⋆[D.host.E] WbQ D F0 →ₗ[D.host.E] D.host.E}
    {L : Submodule (𝓞 D.host.E) (WbQ D F0)} {v : WbQ D F0} :
    v ∈ Formalism.HermitianLatticesTheory.dual h L ↔ ∀ y ∈ L, h y v ∈ (1 : Submodule (𝓞 D.host.E) D.host.E) := by
  simp only [Formalism.HermitianLatticesTheory.dual, Formalism.E.hdual, Submodule.mem_iInf, Submodule.mem_comap,
    LinearMap.restrictScalars_apply]

theorem rs_inv_mul {a : Fin D.R.rS} {s x : D.host.E} (hs : s ∈ (aaI D a)⁻¹) (hx : x ∈ aaI D a) :
    ∃ o : 𝓞 D.host.E, (o : D.host.E) = s * x := by
  by_cases hI : aaI D a = 0
  · rw [hI, inv_zero] at hs
    simp only [FractionalIdeal.mem_zero_iff] at hs
    exact ⟨0, by simp [hs]⟩
  · exact (rs_fone_iff _).1 ((FractionalIdeal.mem_inv_iff hI).1 hs x hx)

theorem rs_int_star {x : D.host.E} (hx : ∃ o : 𝓞 D.host.E, (o : D.host.E) = x) :
    ∃ o : 𝓞 D.host.E, (o : D.host.E) = star x := by
  obtain ⟨o, rfl⟩ := hx
  exact star_int D o

private theorem mem_lamC_iff {v : (VS D).V} : v ∈ lamC D F0 f M ↔
    ((∀ a, star ((VS D).hT (F0.e a) v) ∈ (aaI D a)⁻¹) ∧
      (∃ w : perpS (VS D) F0.X, (w : (VS D).V) = vPr D F0 f v ∧
        (Submodule.Quotient.mk w : WbQ D F0) ∈ M) ∧
      ∀ a, (VS D).hT (f a) (vPr D F0 f v) ∈ aaI D a) := Iff.rfl

private theorem hs_lemma_2 (x z : (VS D).V) : star ((VS D).hT x z) = (VS D).hT z x := by
  have h := (VS D).herm.eq x z
  first
    | exact h

private theorem hT_eq_hT_vPr_right_add_sum (x z : (VS D).V) : (VS D).hT x z =
    (VS D).hT x (vPr D F0 f z) + ∑ b, (VS D).hT (F0.e b) z * (VS D).hT x (f b) := by

  simp [vPr, map_sub, map_sum, map_smul]

private theorem hT_eq_hT_vPr_left_add_sum (x z : (VS D).V) : (VS D).hT x z =
    (VS D).hT (vPr D F0 f x) z + ∑ a, star ((VS D).hT (F0.e a) x) * (VS D).hT (f a) z := by
  simp [vPr, starRingEnd_apply]

private theorem mem_perpS_X_of_hT_e_eq_zero (z : (VS D).V) (hz : ∀ b, (VS D).hT (F0.e b) z = 0) :
    z ∈ perpS (VS D) F0.X := by
  have hK : F0.X ≤ LinearMap.ker ((VS D).hT z) := by
    rw [FlagG.X, Submodule.span_le]
    rintro _ ⟨b, rfl⟩
    rw [SetLike.mem_coe, LinearMap.mem_ker, ← hs_lemma_2, hz b, star_zero]
  intro x hx
  rw [← hs_lemma_2, LinearMap.mem_ker.1 (hK hx), star_zero]

private theorem hT_e_vPr_eq_zero_of_partnerOK (hf : PartnerOK D F0 f) (z : (VS D).V) (b : Fin D.R.rS) :
    (VS D).hT (F0.e b) (vPr D F0 f z) = 0 := by

  simp [vPr, map_sub, map_sum, map_smul, hf.1]

theorem rs_lam_le_dual (hf : PartnerOK D F0 f) (hM : IsGlueLat (hWb D F0) (zbar D F0) M) :
    lamC D F0 f M ≤ Formalism.HermitianLatticesTheory.dual (VS D).hT (lamC D F0 f M) := by
  intro v hv
  rw [rs_mem_dual]
  intro y hy
  obtain ⟨hv1, ⟨w, hw, hwM⟩, hv3⟩ := mem_lamC_iff.1 hv
  obtain ⟨hy1, ⟨u, hu, huM⟩, hy3⟩ := mem_lamC_iff.1 hy
  have hU : Formalism.HermitianLatticesTheory.dual (hWb D F0) M = M := hM.2.1
  have hwD : (Submodule.Quotient.mk w : WbQ D F0) ∈ Formalism.HermitianLatticesTheory.dual (hWb D F0) M := by
    rw [hU]; exact hwM
  have hqp : (VS D).hT (vPr D F0 f y) (vPr D F0 f v) ∈ (1 : Submodule (𝓞 D.host.E) D.host.E) := by
    have h1 := rs_mem_dualW.1 hwD _ huM
    rw [← hu, ← hw, ← hWbFun_mk]
    exact h1
  rw [hT_eq_hT_vPr_right_add_sum (F0 := F0) (f := f) y v]
  refine Submodule.add_mem _ ?_ (Submodule.sum_mem _ fun b _ => ?_)
  · rw [hT_eq_hT_vPr_left_add_sum (F0 := F0) (f := f) y (vPr D F0 f v)]
    refine Submodule.add_mem _ hqp (Submodule.sum_mem _ fun a _ => ?_)
    exact (rs_mem_one_iff _).2 (rs_inv_mul (hy1 a) (hv3 a))
  · have e0 : (VS D).hT y (f b) = (VS D).hT (vPr D F0 f y) (f b) := by
      rw [hT_eq_hT_vPr_left_add_sum (F0 := F0) (f := f) y (f b)]
      simp [hf.2.1]
    rw [e0, ← hs_lemma_2 (f b) (vPr D F0 f y)]
    obtain ⟨o, ho⟩ := rs_int_star (rs_inv_mul (hv1 b) (hy3 b))
    refine (rs_mem_one_iff _).2 ⟨o, ?_⟩
    rw [ho, star_mul', star_star]

theorem rs_vPr_smul_f (hf : PartnerOK D F0 f) (a : Fin D.R.rS) (c : D.host.E) : vPr D F0 f (c • f a) = 0 := by
  rw [vPr_smul]
  have h0 : vPr D F0 f (f a) = 0 := by simp [vPr, hf.1]
  rw [h0, smul_zero]

theorem rs_smul_f_mem (hf : PartnerOK D F0 f) {a : Fin D.R.rS} {s : D.host.E} (hs : s ∈ (aaI D a)⁻¹) :
    star s • f a ∈ lamC D F0 f M := by
  refine mem_lamC_iff.2 ⟨fun b => ?_, ⟨0, ?_, ?_⟩, fun b => ?_⟩
  · rw [map_smul, hf.1, smul_eq_mul]
    by_cases hab : b = a
    · subst hab; rw [if_pos rfl, mul_one, star_star]; exact hs
    · rw [if_neg hab, mul_zero, star_zero]; exact fi_zero D _
  · simp [rs_vPr_smul_f hf]
  · rw [Submodule.Quotient.mk_zero]; exact M.zero_mem
  · rw [rs_vPr_smul_f hf, map_zero]; exact fi_zero D _

theorem rs_dual_le_lam (hf : PartnerOK D F0 f) (hM : IsGlueLat (hWb D F0) (zbar D F0) M) :
    Formalism.HermitianLatticesTheory.dual (VS D).hT (lamC D F0 f M) ≤ lamC D F0 f M := by
  intro v hv
  have hv' := rs_mem_dual.1 hv
  have hI0 : ∀ a, aaI D a ≠ 0 := by
    intro a
    have hd : ddS D ≠ 0 := by
      rw [ddS, Ne, FractionalIdeal.coeIdeal_eq_zero]
      first
        | exact Ideal.map_ne_bot_of_ne_bot differentIdeal_ne_bot
    rw [aaI]
    exact zpow_ne_zero _ hd
  have heX : ∀ a, F0.e a ∈ F0.X := by
    intro a
    rw [FlagG.X]
    exact Submodule.subset_span ⟨a, rfl⟩
  have hfe : ∀ a b, (VS D).hT (f b) (F0.e a) = if a = b then 1 else 0 := by
    intro a b
    rw [← hs_lemma_2 (F0.e a) (f b), hf.1 a b]
    split_ifs <;> simp
  have hxe : ∀ a, ∀ x ∈ aaI D a, x • F0.e a ∈ lamC D F0 f M := by
    intro a x hx
    have hv0 : vPr D F0 f (x • F0.e a) = x • F0.e a := by
      simp [vPr, map_smul, F0.e_iso]
    have hxP : x • F0.e a ∈ perpS (VS D) F0.X :=
      Submodule.smul_mem _ x (mem_perpS_X_of_hT_e_eq_zero _ fun b => F0.e_iso b a)
    refine mem_lamC_iff.2 ⟨fun b => ?_, ⟨⟨x • F0.e a, hxP⟩, hv0.symm, ?_⟩, fun b => ?_⟩
    · rw [map_smul, F0.e_iso, smul_zero, star_zero]; exact fi_zero D _
    · rw [(Submodule.Quotient.mk_eq_zero _).2 (Submodule.mem_comap.2 (Submodule.smul_mem _ x (heX a)))]
      exact M.zero_mem
    · rw [hv0, map_smul, hfe a b, smul_eq_mul]
      split_ifs with hab
      · subst hab; simpa using hx
      · rw [mul_zero]; exact fi_zero D _
  have hPerp : vPr D F0 f v ∈ perpS (VS D) F0.X := mem_perpS_X_of_hT_e_eq_zero _ (hT_e_vPr_eq_zero_of_partnerOK hf v)
  have key : ∀ u' : perpS (VS D) F0.X, (Submodule.Quotient.mk u' : WbQ D F0) ∈ M →
      (VS D).hT (u' : (VS D).V) (vPr D F0 f v) ∈ (1 : Submodule (𝓞 D.host.E) D.host.E) := by
    intro u' hy
    obtain ⟨t, ht⟩ : ∃ t : (VS D).V, t = (u' : (VS D).V) - ∑ a, (VS D).hT (f a) u' • F0.e a :=
      ⟨_, rfl⟩
    have ht1 : ∀ b, (VS D).hT (F0.e b) t = 0 := by
      intro b
      rw [ht]

      simp [map_sub, map_sum, map_smul, F0.e_iso, hT_X_perp D F0 (heX b) u'.2]
    have ht3 : ∀ b, (VS D).hT (f b) t = 0 := by
      intro b
      rw [ht]

      simp [map_sub, map_sum, map_smul, hfe]
    have htP : t ∈ perpS (VS D) F0.X := mem_perpS_X_of_hT_e_eq_zero t ht1
    have hvt : vPr D F0 f t = t := by simp [vPr, ht1]
    have hq : (Submodule.Quotient.mk ⟨t, htP⟩ : WbQ D F0) = Submodule.Quotient.mk u' := by
      rw [Submodule.Quotient.eq]
      show t - (u' : (VS D).V) ∈ F0.X
      rw [ht, sub_sub_cancel_left]
      exact Submodule.neg_mem _ (Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (heX a))
    have htL : t ∈ lamC D F0 f M := by
      refine mem_lamC_iff.2 ⟨fun b => ?_, ⟨⟨t, htP⟩, hvt.symm, ?_⟩, fun b => ?_⟩
      · rw [ht1 b, star_zero]; exact fi_zero D _
      · rw [hq]; exact hy
      · rw [hvt, ht3 b]; exact fi_zero D _
    have htf : ∀ b, (VS D).hT t (f b) = 0 := fun b => by
      rw [← hs_lemma_2 (f b) t, ht3 b, star_zero]
    have e1 : (VS D).hT t v = (VS D).hT (u' : (VS D).V) (vPr D F0 f v) := by
      rw [hT_eq_hT_vPr_right_add_sum (F0 := F0) (f := f) t v]
      simp only [htf, mul_zero, Finset.sum_const_zero, add_zero]
      rw [ht]
      simp [hT_e_vPr_eq_zero_of_partnerOK hf]
    rw [← e1]
    exact hv' t htL
  have hWM : (Submodule.Quotient.mk ⟨vPr D F0 f v, hPerp⟩ : WbQ D F0) ∈
      Formalism.HermitianLatticesTheory.dual (hWb D F0) M := by
    rw [rs_mem_dualW]
    intro y hy
    induction y using Submodule.Quotient.induction_on with
    | H u' =>
      have e2 : hWb D F0 (Submodule.Quotient.mk u') (Submodule.Quotient.mk ⟨vPr D F0 f v, hPerp⟩) =
          (VS D).hT (u' : (VS D).V) (vPr D F0 f v) := hWbFun_mk D F0 u' ⟨vPr D F0 f v, hPerp⟩
      rw [e2]
      exact key u' hy
  have hU : Formalism.HermitianLatticesTheory.dual (hWb D F0) M = M := hM.2.1
  rw [hU] at hWM
  refine mem_lamC_iff.2 ⟨fun a => ?_, ⟨⟨_, hPerp⟩, rfl, hWM⟩, fun a => ?_⟩
  · rw [FractionalIdeal.mem_inv_iff (hI0 a)]
    intro x hx
    obtain ⟨o, ho⟩ := rs_int_star ((rs_mem_one_iff _).1 (hv' _ (hxe a x hx)))
    rw [rs_fone_iff]
    refine ⟨o, ?_⟩
    rw [ho, LinearMap.map_smulₛₗ₂, starRingEnd_apply, smul_eq_mul, star_mul', star_star, mul_comm]
  · have e3 : (VS D).hT (f a) (vPr D F0 f v) = (VS D).hT (f a) v := by
      rw [hT_eq_hT_vPr_right_add_sum (F0 := F0) (f := f) (f a) v]
      simp [hf.2.1]
    rw [e3, ← inv_inv (aaI D a), FractionalIdeal.mem_inv_iff (inv_ne_zero (hI0 a))]
    intro s hs
    obtain ⟨o, ho⟩ := (rs_mem_one_iff _).1 (hv' _ (rs_smul_f_mem hf hs))
    rw [rs_fone_iff]
    refine ⟨o, ?_⟩
    rw [ho, LinearMap.map_smulₛₗ₂, starRingEnd_apply, star_star, smul_eq_mul, mul_comm]

end Unimod

theorem lamUnimod : LamUnimod := by
  intro D u F0 f M hf hM
  exact le_antisymm (rs_dual_le_lam hf hM) (rs_lam_le_dual hf hM)

end PI.UnitaryGroupMassFormula.CntFormula.RowsMassW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.LatticeUnimodular =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.PartnerVectorExists =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.PartnerVectorExists", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.UnimodOneGenus\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Module Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.BasicNotions Formalism.L2.SG.CntLocal
open Classical

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula.RowsMassW

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section Gen

variable {E : Type} [Field E] [NumberField E] [StarRing E] (S : HSpace E)

theorem hT_sub_sum_left {r : ℕ} (x w : S.V) (c : Fin r → E) (y : Fin r → S.V) :
    S.hT (x - ∑ d, c d • y d) w = S.hT x w - ∑ d, star (c d) * S.hT (y d) w := by
  first
  | simp [map_sub, map_sum, LinearMap.sub_apply, LinearMap.sum_apply,
      LinearMap.map_smulₛₗ, LinearMap.smul_apply, smul_eq_mul, starRingEnd_apply]

theorem hT_sub_sum_right {r : ℕ} (x w : S.V) (c : Fin r → E) (y : Fin r → S.V) :
    S.hT w (x - ∑ d, c d • y d) = S.hT w x - ∑ d, c d * S.hT w (y d) := by

  simp [map_sub, map_sum, map_smul, smul_eq_mul]

theorem coord_surj {r : ℕ} {T : E} (F0 : FlagG S r T) :
    Function.Surjective (LinearMap.pi (fun a => S.hT (F0.e a)) : S.V →ₗ[E] (Fin r → E)) := by
  classical
  by_contra hns
  have hlt : LinearMap.range (LinearMap.pi (fun a => S.hT (F0.e a)) : S.V →ₗ[E] (Fin r → E)) < ⊤ := by
    rw [lt_top_iff_ne_top]
    intro h
    exact hns (LinearMap.range_eq_top.mp h)
  obtain ⟨ψ, hψne, hψ⟩ := Submodule.exists_le_ker_of_lt_top _ hlt
  have key : ∀ x : S.V, ∑ a, ψ (Pi.single a 1) * S.hT (F0.e a) x = 0 := by
    intro x
    have hx := hψ (LinearMap.mem_range_self (LinearMap.pi (fun a => S.hT (F0.e a)) : S.V →ₗ[E] (Fin r → E)) x)
    rw [LinearMap.mem_ker] at hx
    have hdec : (LinearMap.pi (fun a => S.hT (F0.e a)) : S.V →ₗ[E] (Fin r → E)) x
        = ∑ a, S.hT (F0.e a) x • (Pi.single a 1 : Fin r → E) := by
      ext i
      simp [Finset.sum_apply, Pi.single_apply]

    rw [hdec, map_sum] at hx
    simpa [map_smul, smul_eq_mul, mul_comm] using hx
  have hv : (∑ a, star (ψ (Pi.single a 1)) • F0.e a) = 0 := by
    apply S.nondeg.1
    intro x
    first
    | simpa [map_sum, LinearMap.sum_apply, LinearMap.map_smulₛₗ, smul_eq_mul, starRingEnd_apply, star_star] using key x
  have hc : ∀ a, ψ (Pi.single a 1) = 0 := by
    intro a
    have h0 := (Fintype.linearIndependent_iff.mp F0.e_indep) _ hv a
    simpa using h0
  apply hψne
  apply LinearMap.pi_ext
  intro i x
  have hs : (Pi.single i x : Fin r → E) = x • (Pi.single i 1 : Fin r → E) := by
    ext j
    by_cases h : j = i <;> simp [h]
  rw [hs, map_smul, hc i]
  simp

private theorem star_hT_eq_hT_swap (x y : S.V) : star (S.hT x y) = S.hT y x := by
  have h : starRingEnd E (S.hT x y) = S.hT y x := by
    first
    | exact S.herm.eq x y
  simpa [starRingEnd_apply] using h

theorem partner_exists {r : ℕ} {T : E} (F0 : FlagG S r T) (hT0 : T ≠ 0) :
    ∃ f : Fin r → S.V, (∀ a b, S.hT (F0.e a) (f b) = if a = b then 1 else 0) ∧
      (∀ a b, S.hT (f a) (f b) = 0) ∧ ∀ a, S.hT (f a) F0.z = 0 := by
  classical
  have hE : ∀ b, ∃ g0 : S.V, ∀ a, S.hT (F0.e a) g0 = if a = b then 1 else 0 := by
    intro b
    obtain ⟨g0, hg0⟩ := coord_surj S F0 (fun a => if a = b then (1 : E) else 0)
    refine ⟨g0, fun a => ?_⟩
    have h1 := congrFun hg0 a
    simpa using h1
  choose g0 hg0 using hE
  have hZ : S.hT F0.z F0.z ≠ 0 := by
    rw [F0.z_norm]
    exact neg_ne_zero.mpr hT0
  set g : Fin r → S.V := fun b => g0 b - (S.hT F0.z (g0 b) / S.hT F0.z F0.z) • F0.z with hgdef
  have hgE : ∀ a b, S.hT (F0.e a) (g b) = if a = b then 1 else 0 := by
    intro a b
    simp [g, map_sub, map_smul, smul_eq_mul, F0.z_orth, hg0]
  have hgZ : ∀ b, S.hT F0.z (g b) = 0 := by
    intro b
    simp only [g, map_sub, map_smul, smul_eq_mul]
    rw [div_mul_cancel₀ _ hZ, sub_self]
  have hZg : ∀ b, S.hT (g b) F0.z = 0 := by
    intro b
    rw [← star_hT_eq_hT_swap, hgZ, star_zero]
  have hgeE : ∀ a d, S.hT (g a) (F0.e d) = if d = a then 1 else 0 := by
    intro a d
    rw [← star_hT_eq_hT_swap, hgE]
    split_ifs <;> simp
  set c : Fin r → Fin r → E := fun b d => S.hT (g d) (g b) / 2 with hcdef
  have hf1 : ∀ a b, S.hT (F0.e a) (g b - ∑ d, c b d • F0.e d) = if a = b then 1 else 0 := by
    intro a b
    rw [hT_sub_sum_right]
    simp [hgE, F0.e_iso]
  refine ⟨fun b => g b - ∑ d, c b d • F0.e d, hf1, ?_, ?_⟩
  · intro a b
    rw [hT_sub_sum_left]
    simp only [hf1]
    rw [hT_sub_sum_right]
    simp only [hgeE, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
    have hs : star (c a b) = S.hT (g a) (g b) / 2 := by
      simp only [c]
      rw [← star_hT_eq_hT_swap (S := S) (g a) (g b)]
      first
      | simp [star_div₀]
    rw [hs]
    simp only [c]
    ring
  · intro a
    rw [hT_sub_sum_left]
    simp [hZg, F0.z_orth]

end Gen

theorem partner_vector_exists : PartnerEx := by
  intro D u F0
  refine partner_exists (VS D) F0 ?_
  unfold Tn
  exact_mod_cast (D.mem u).A.T_prime.ne_zero

end PI.UnitaryGroupMassFormula.CntFormula.RowsMassW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.PartnerVectorExists =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.RowSurjOfGenus =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.RowSurjOfGenus", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.UnimodOneGenus\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.CoordLInjective\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DifferentCoprimeSplit\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.LatticeFlagExists\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.LatticeUnimodular\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.PartnerVectorExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.UnitaryGroupMassFormula.CntFormula.RowsMassW

theorem rowSurj_of_genus (hJ : UnimodOneGenus) : RowSurj :=
  rowSurj_of hJ partner_vector_exists lattice_integral lamUnimod lattice_flag_exists local_genus_exists

end PI.UnitaryGroupMassFormula.CntFormula.RowsMassW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.RowSurjOfGenus =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ExistsIsomMove =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ExistsIsomMove", "h": "module\n\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsIsomFrame\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsNormOneOfPair\npublic import Formalism.HermitianLattices.StatementLat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula.UG

open Formalism.HermitianLattices.Ext.L3.WA

section Abs

variable {K V : Type} [Field K] [StarRing K] [AddCommGroup V] [Module K V]
variable {S : Subring K} {h : V →ₗ⋆[K] V →ₗ[K] K} {M : AddSubgroup V}

theorem star_h (hs : h.IsSymm) (u v : V) : star (h u v) = h v u := by
  first | exact hs.eq u v

theorem exists_pair (hS : IsHermSemilocal S) (hM : IsSelfDualMod S h M) {ι : Type} [Fintype ι]
    (x : ι → V) (hxo : ∀ i j, i ≠ j → h (x i) (x j) = 0) (hxu : ∀ i, IsUnitIn S (h (x i) (x i)))
    (hxM : ∀ i, x i ∈ M) {r : V} (hr : ∃ v, h v r ≠ 0) (hrx : ∀ i, h (x i) r = 0) :
    ∃ α : K, α ≠ 0 ∧ α⁻¹ • r ∈ M ∧ ∃ w ∈ M, h w (α⁻¹ • r) = 1 ∧ ∀ i, h (x i) w = 0 := by
  classical
  obtain ⟨v, hv⟩ := hr
  let A : AddSubgroup K :=
    { carrier := {a | ∃ m ∈ M, h m r = a}
      add_mem' := by
        rintro _ _ ⟨m, hm, rfl⟩ ⟨m', hm', rfl⟩
        exact ⟨m + m', M.add_mem hm hm', by simp⟩
      zero_mem' := ⟨0, M.zero_mem, by simp⟩
      neg_mem' := by
        rintro _ ⟨m, hm, rfl⟩
        exact ⟨-m, M.neg_mem hm, by simp⟩ }
  have h1 : ∀ s ∈ S, ∀ a ∈ A, s * a ∈ A := by
    rintro s hs _ ⟨m, hm, rfl⟩
    refine ⟨star s • m, hM.smul_mem _ (hS.star_mem s hs) m hm, ?_⟩
    simp only [map_smulₛₗ, LinearMap.smul_apply, smul_eq_mul, starRingEnd_apply, star_star]
  have h2 : ∃ a ∈ A, a ≠ 0 := by
    obtain ⟨t, ht, htv⟩ := hM.span v
    refine ⟨h (t • v) r, ⟨_, htv, rfl⟩, ?_⟩
    simp only [map_smulₛₗ, LinearMap.smul_apply, smul_eq_mul, starRingEnd_apply]
    exact mul_ne_zero (star_ne_zero.mpr ht) hv
  have h3 : ∃ t : K, t ≠ 0 ∧ ∀ a ∈ A, t * a ∈ S := by
    obtain ⟨t, ht, htr⟩ := hM.span r
    refine ⟨t, ht, ?_⟩
    rintro _ ⟨m, hm, rfl⟩
    have := hM.int m hm _ htr
    rwa [map_smul, smul_eq_mul] at this
  obtain ⟨α, ⟨m₀, hm₀, hα⟩, hα0, hαS⟩ := hS.principal A h1 h2 h3
  have hrM : α⁻¹ • r ∈ M := hM.dual _ fun m hm => by
    rw [map_smul, smul_eq_mul, mul_comm]
    exact hαS _ ⟨m, hm, rfl⟩
  refine ⟨α, hα0, hrM, m₀ - ∑ i, (h (x i) m₀ * (h (x i) (x i))⁻¹) • x i, ?_, ?_, ?_⟩
  · refine M.sub_mem hm₀ (M.sum_mem fun i _ => hM.smul_mem _ ?_ _ (hxM i))
    exact S.mul_mem (hM.int _ (hxM i) _ hm₀) (hxu i).2.2
  · set_option synthInstance.maxHeartbeats 100000 in
      simp only [map_sub, map_sum, LinearMap.sub_apply, LinearMap.sum_apply,
        map_smulₛₗ, LinearMap.smul_apply, smul_eq_mul, RingHom.id_apply, hrx, mul_zero,
        Finset.sum_const_zero, sub_zero]
    rw [hα, inv_mul_cancel₀ hα0]
  · intro j

    rw [map_sub, map_sum]
    simp only [map_smul, smul_eq_mul]
    rw [Finset.sum_eq_single j (fun i _ hij => by rw [hxo j i (Ne.symm hij), mul_zero])
      (by simp), mul_assoc, inv_mul_cancel₀ (hxu j).1, mul_one, sub_self]

theorem isSymm_smul (hs : h.IsSymm) {u : K} (hus : star u = u) : (u⁻¹ • h).IsSymm := by
  have H : ∀ a b : V, star ((u⁻¹ • h) a b) = (u⁻¹ • h) b a := by
    intro a b
    simp only [LinearMap.smul_apply, smul_eq_mul, star_mul', star_inv₀, hus, star_h hs]
  first | exact ⟨H⟩

theorem exists_of_ref (hS : IsHermSemilocal S) (hs : h.IsSymm) (hM : IsSelfDualMod S h M) {ι : Type}
    [Fintype ι] (x : ι → V) (hxo : ∀ i j, i ≠ j → h (x i) (x j) = 0) (hxu : ∀ i, IsUnitIn S (h (x i) (x i)))
    (hxM : ∀ i, x i ∈ M) {r : V} {u : K} (hu : IsUnitIn S u) (hus : star u = u) (hrr : h r r = u)
    (hrx : ∀ i, h (x i) r = 0) :
    ∃ z ∈ M, h z z = u ∧ ∀ i, h (x i) z = 0 := by
  have hu0 : u ≠ 0 := hu.1
  obtain ⟨α, hα0, hαM, w, hwM, hw1, hwx⟩ :=
    exists_pair hS hM x hxo hxu hxM ⟨r, by rw [hrr]; exact hu0⟩ hrx
  have hyy : h (α⁻¹ • r) (α⁻¹ • r) = star α⁻¹ * α⁻¹ * u := by
    simp only [map_smulₛₗ, LinearMap.smul_apply, smul_eq_mul, starRingEnd_apply, hrr, RingHom.id_apply]
    ring
  have hsa : star α⁻¹ * α⁻¹ ∈ S := by
    have h1 := S.mul_mem (hM.int _ hαM _ hαM) hu.2.2
    rw [hyy, mul_assoc, mul_inv_cancel₀ hu0, mul_one] at h1
    exact h1
  obtain ⟨b, hb, hab⟩ := Formalism.HermitianLattices.Ext.L3.WA.exists_norm_one_mul_mem hS hsa
  have hb0 : b ≠ 0 := by
    rintro rfl
    simp at hb
  have hs' := isSymm_smul hs hus
  have hyw0 : h (α⁻¹ • r) w = 1 := by rw [← star_h hs, hw1, star_one]
  have hy' : (u⁻¹ • h) (α⁻¹ • r) (α⁻¹ • r) = star (α⁻¹ * b) * (α⁻¹ * b) := by
    rw [LinearMap.smul_apply, LinearMap.smul_apply, smul_eq_mul, hyy, star_mul']
    rw [mul_comm u⁻¹, mul_assoc, mul_inv_cancel₀ hu0, mul_one]
    linear_combination (-(star α⁻¹ * α⁻¹)) * hb
  have hyw' : (u⁻¹ • h) (α⁻¹ • r) (u • w) = 1 := by
    rw [LinearMap.smul_apply, LinearMap.smul_apply, smul_eq_mul, map_smul, smul_eq_mul, hyw0, mul_one,
      inv_mul_cancel₀ hu0]
  have hww : (u⁻¹ • h) (u • w) (u • w) = u * h w w := by
    simp only [LinearMap.smul_apply, map_smulₛₗ, smul_eq_mul, starRingEnd_apply, hus, RingHom.id_apply]
    field_simp
  obtain ⟨c, hc, d, hd, hcd⟩ := Formalism.HermitianLattices.Ext.L3.WA.exists_norm_one_of_pair hS hs'
    (y := α⁻¹ • r) (w := u • w) (a := α⁻¹ * b) hab (mul_ne_zero (inv_ne_zero hα0) hb0) hy' hyw'
    (hww ▸ S.mul_mem hu.2.1 (hM.int w hwM w hwM))
  refine ⟨c • (u • w) + d • (α⁻¹ • r),
    M.add_mem (hM.smul_mem c hc _ (hM.smul_mem u hu.2.1 w hwM)) (hM.smul_mem d hd _ hαM), ?_, ?_⟩
  · rw [LinearMap.smul_apply, LinearMap.smul_apply, smul_eq_mul] at hcd
    exact ((inv_mul_eq_one₀ (inv_ne_zero hu0 |> fun _ => hu0)).1 hcd).symm
  · intro i
    simp [map_add (f := _), map_smul, hwx i, hrx i]

theorem exists_quasi (hs : h.IsSymm) (w : V) {a : K} (ha : a + star a = a * star a * h w w) :
    ∃ τ ∈ Formalism.HermitianLatticesTheory.isom h, ∀ v, τ v = v - (a * h w v) • w := by
  let f : K → V →ₗ[K] V := fun b =>
    { toFun := fun v => v - (b * h w v) • w
      map_add' := fun x y => by
        simp only [map_add (f := _), mul_add, add_smul]
        abel
      map_smul' := fun c x => by
        simp only [map_smul, smul_eq_mul, RingHom.id_apply, smul_sub, smul_smul]
        rw [mul_left_comm] }
  have hf : ∀ b v, f b v = v - (b * h w v) • w := fun _ _ => rfl
  have hcomp : ∀ b c : K, b + c = b * c * h w w → ∀ v : V,
      (v - (c * h w v) • w) - (b * h w (v - (c * h w v) • w)) • w = v := by
    intro b c hbc v
    rw [map_sub, map_smul, smul_eq_mul, sub_sub, ← add_smul]
    have : c * h w v + b * (h w v - c * h w v * h w w) = 0 := by
      linear_combination (h w v) * hbc
    rw [this, zero_smul, sub_zero]
  have ha' : star a + a = star a * a * h w w := by linear_combination ha
  let τ : V ≃ₗ[K] V := LinearEquiv.ofLinear (f a) (f (star a))
    (LinearMap.ext fun v => hcomp a (star a) ha v)
    (LinearMap.ext fun v => hcomp (star a) a ha' v)
  refine ⟨τ, ?_, fun v => rfl⟩
  intro x y
  change h (x - (a * h w x) • w) (y - (a * h w y) • w) = h x y
  have hsx : star (h w x) = h x w := star_h hs w x
  simp only [map_sub, map_smulₛₗ, LinearMap.sub_apply, LinearMap.smul_apply, smul_eq_mul,
    starRingEnd_apply, RingHom.id_apply, star_mul', hsx]
  linear_combination (-(h w y * h x w)) * ha

theorem exists_isom_move (hS : IsHermSemilocal S) (hs : h.IsSymm) {x z : V} {u : K} (hu0 : u ≠ 0)
    (hus : star u = u) (hx : h x x = u) (hz : h z z = u) :
    ∃ τ ∈ Formalism.HermitianLatticesTheory.isom h, τ x = z ∧ ∀ v, h x v = 0 → h z v = 0 → τ v = v := by
  have hsy : ∀ a b : V, star (h a b) = h b a := star_h hs
  have key : ∀ y : V, h y y = u → h z y ≠ u →
      ∃ τ ∈ Formalism.HermitianLatticesTheory.isom h, τ y = z ∧ ∀ v, h y v = 0 → h z v = 0 → τ v = v := by
    intro y hy hne
    have hp : u - h z y ≠ 0 := sub_ne_zero.mpr (Ne.symm hne)
    have hsp : star (u - h z y) ≠ 0 := star_ne_zero.mpr hp
    have hww : h (y - z) (y - z) = (u - h z y) + star (u - h z y) := by
      simp only [map_sub, LinearMap.sub_apply]
      rw [hy, hz, star_sub, hus, hsy]
      ring
    obtain ⟨τ, hτ, hf⟩ := exists_quasi hs (y - z) (a := (u - h z y)⁻¹) (by
      rw [hww, star_inv₀]
      field_simp
      ring)
    refine ⟨τ, hτ, ?_, ?_⟩
    · have hyz : h (y - z) y = u - h z y := by
        simp only [map_sub, LinearMap.sub_apply, hy]
      rw [hf, hyz, inv_mul_cancel₀ hp, one_smul]
      abel
    · intro v hyv hzv
      rw [hf]
      simp only [map_sub, LinearMap.sub_apply, hyv, hzv, sub_zero, mul_zero, zero_smul]
  by_cases hne : h z x = u
  · obtain ⟨θ, -, hθ⟩ := hS.unram
    have hd : θ - star θ ≠ 0 := hθ.1
    have hθ0 : θ ≠ 0 := by
      rintro rfl
      simp at hd
    have hsθ : star θ ≠ 0 := star_ne_zero.mpr hθ0
    have hcc : θ * (star θ)⁻¹ * (star θ * θ⁻¹) = 1 := by field_simp
    have hc1 : θ * (star θ)⁻¹ ≠ 1 := by
      intro h1
      apply hd
      field_simp at h1
      exact sub_eq_zero.mpr h1
    obtain ⟨τ₁, hτ₁, hf₁⟩ := exists_quasi hs x (a := (1 - θ * (star θ)⁻¹) * u⁻¹) (by
      rw [hx]
      simp only [star_mul', star_sub, star_one, star_inv₀, star_star, hus]
      field_simp
      ring)
    have h1x : τ₁ x = (θ * (star θ)⁻¹) • x := by
      rw [hf₁, hx, mul_assoc, inv_mul_cancel₀ hu0, mul_one, sub_smul, one_smul]
      abel
    have hyy : h (τ₁ x) (τ₁ x) = u := by
      have hcx : ∀ c : K, h (c • x) (c • x) = star c * c * u := by
        intro c
        simp only [map_smulₛₗ, LinearMap.smul_apply, smul_eq_mul, RingHom.id_apply, starRingEnd_apply, hx]
        ring
      rw [h1x, hcx, star_mul', star_inv₀, star_star]
      have e1 : star θ * (star θ)⁻¹ = 1 := mul_inv_cancel₀ hsθ
      have e2 : θ * θ⁻¹ = 1 := mul_inv_cancel₀ hθ0
      linear_combination (θ * θ⁻¹ * u) * e1 + u * e2
    have hzy : h z (τ₁ x) ≠ u := by
      rw [h1x, map_smul, smul_eq_mul, hne]
      intro h2
      apply hc1
      have := mul_right_cancel₀ hu0 (h2.trans (one_mul u).symm)
      exact this
    obtain ⟨τ₂, hτ₂, h2y, h2v⟩ := key _ hyy hzy
    refine ⟨τ₂ * τ₁, (Formalism.HermitianLatticesTheory.isom h).mul_mem hτ₂ hτ₁, ?_, ?_⟩
    · exact h2y
    · intro v hxv hzv
      have h1v : τ₁ v = v := by
        rw [hf₁, hxv, mul_zero, zero_smul, sub_zero]
      change τ₂ (τ₁ v) = v
      rw [h1v]
      refine h2v v ?_ hzv
      rw [h1x, map_smulₛₗ, LinearMap.smul_apply, hxv, smul_zero]
  · exact key x hx hne

end Abs

end PI.UnitaryGroupMassFormula.CntFormula.UG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ExistsIsomMove =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ExistsIsomSelfDual =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ExistsIsomSelfDual", "h": "module\n\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsIsomFrame\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsNormOneOfPair\npublic import Formalism.HermitianLattices.StatementLat\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ExistsOrthogonalUnitVector\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ExistsIsomMove\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Module

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula.UG

open Formalism.HermitianLattices.Ext.L3.WA

section Abs

variable {K V : Type} [Field K] [StarRing K] [AddCommGroup V] [Module K V]
variable {S : Subring K} {h : V →ₗ⋆[K] V →ₗ[K] K}

def PairUnit (S : Subring K) (h : V →ₗ⋆[K] V →ₗ[K] K) : Prop :=
  ∀ w y : V, h y w = 1 → h w w ∈ S → h y y ∈ S →
    ∃ c ∈ S, ∃ d ∈ S, IsUnitIn S (h (c • w + d • y) (c • w + d • y))

theorem linIndep_orth {ι : Type} [Fintype ι] (x : ι → V) (hxo : ∀ i j, i ≠ j → h (x i) (x j) = 0)
    (hx0 : ∀ i, h (x i) (x i) ≠ 0) : LinearIndependent K x := by
  classical
  rw [Fintype.linearIndependent_iff]
  intro c hc j
  have := congrArg (h (x j)) hc

  rw [map_sum, map_zero, Finset.sum_eq_single j] at this
  · rw [map_smul, smul_eq_mul] at this
    exact (mul_eq_zero.1 this).resolve_right (hx0 j)
  · intro i _ hij
    rw [map_smul, hxo j i (Ne.symm hij), smul_zero]
  · simp

theorem orth_sub_proj {ι : Type} [Fintype ι] (x : ι → V) (hxo : ∀ i j, i ≠ j → h (x i) (x j) = 0)
    (hx0 : ∀ i, h (x i) (x i) ≠ 0) (v : V) (j : ι) :
    h (x j) (v - ∑ i, ((h (x i) (x i))⁻¹ * h (x i) v) • x i) = 0 := by
  classical

  rw [map_sub, map_sum, Finset.sum_eq_single j]
  · rw [map_smul, smul_eq_mul, mul_right_comm, inv_mul_cancel₀ (hx0 j), one_mul, sub_self]
  · intro i _ hij
    rw [map_smul, hxo j i (Ne.symm hij), smul_zero]
  · simp

theorem exists_ortho_unit [FiniteDimensional K V] (hS : IsHermSemilocal S) (hs : h.IsSymm)
    (hnd : h.Nondegenerate) (hPU : PairUnit S h) {L : AddSubgroup V} (hL : IsSelfDualMod S h L) :
    ∃ x : Fin (finrank K V) → V, (∀ i, x i ∈ L) ∧ (∀ i j, i ≠ j → h (x i) (x j) = 0) ∧
      ∀ i, IsUnitIn S (h (x i) (x i)) :=
  _root_.UpperTheory.Reformulated.B.ExistsOrthogonalBasisWithUnitNorms.exists_ortho_unit hS hs hnd hPU hL

theorem exists_isom_frameU (hS : IsHermSemilocal S) (hs : h.IsSymm) {M : AddSubgroup V}
    (hM : IsSelfDualMod S h M) {n : ℕ} (x : Fin n → V) (hxo : ∀ i j, i ≠ j → h (x i) (x j) = 0)
    (hxu : ∀ i, IsUnitIn S (h (x i) (x i))) :
    ∃ g ∈ Formalism.HermitianLatticesTheory.isom h, ∀ i, g (x i) ∈ M := by
  classical
  have P : ∀ k, k ≤ n → ∃ g ∈ Formalism.HermitianLatticesTheory.isom h, ∀ i : Fin n, i.val < k → g (x i) ∈ M := by
    intro k
    induction k with
    | zero => intro _; exact ⟨1, one_mem _, fun i hi => absurd hi (Nat.not_lt_zero _)⟩
    | succ k ih =>
      intro hk
      obtain ⟨g, hg, hgM⟩ := ih (by omega)
      have hg' : ∀ a b, h (g a) (g b) = h a b := hg
      have hne : ∀ i : Fin n, i.val < k → i ≠ ⟨k, hk⟩ := by
        intro i hi e
        rw [e] at hi
        exact lt_irrefl _ hi
      let y : {i : Fin n // i.val < k} → V := fun i => g (x i.1)
      have hyo : ∀ i j : {i : Fin n // i.val < k}, i ≠ j → h (y i) (y j) = 0 := by
        intro i j hij
        simp only [y]
        rw [hg']
        exact hxo _ _ (fun e => hij (Subtype.ext e))
      have hyu : ∀ i : {i : Fin n // i.val < k}, IsUnitIn S (h (y i) (y i)) := by
        intro i
        simp only [y]
        rw [hg']
        exact hxu _
      have hyM : ∀ i : {i : Fin n // i.val < k}, y i ∈ M := fun i => hgM i.1 i.2
      have hu := hxu ⟨k, hk⟩
      have hus : star (h (x ⟨k, hk⟩) (x ⟨k, hk⟩)) = h (x ⟨k, hk⟩) (x ⟨k, hk⟩) := star_h hs _ _
      have hrr : h (g (x ⟨k, hk⟩)) (g (x ⟨k, hk⟩)) = h (x ⟨k, hk⟩) (x ⟨k, hk⟩) := hg' _ _
      have hrx : ∀ i : {i : Fin n // i.val < k}, h (y i) (g (x ⟨k, hk⟩)) = 0 := by
        intro i
        simp only [y]
        rw [hg']
        exact hxo _ _ (hne i.1 i.2)
      obtain ⟨z, hzM, hzz, hzo⟩ := exists_of_ref hS hs hM y hyo hyu hyM hu hus hrr hrx
      obtain ⟨τ, hτ, hτr, hτfix⟩ := exists_isom_move hS hs hu.1 hus hrr hzz
      refine ⟨τ * g, mul_mem hτ hg, fun i hi => ?_⟩
      show τ (g (x i)) ∈ M
      rcases Nat.lt_succ_iff_lt_or_eq.mp hi with h1 | h1
      · rw [hτfix]
        · exact hgM i h1
        · rw [hg']
          exact hxo _ _ (fun e => hne i h1 e.symm)
        · rw [← star_h hs]
          have := hzo ⟨i, h1⟩
          simp only [y] at this
          rw [this, star_zero]
      · have : i = ⟨k, hk⟩ := Fin.ext h1
        rw [this, hτr]
        exact hzM
  obtain ⟨g, hg, hgM⟩ := P n le_rfl
  exact ⟨g, hg, fun i => hgM i i.isLt⟩

theorem exists_isom_selfDual [FiniteDimensional K V] (hS : IsHermSemilocal S) (hs : h.IsSymm)
    (hnd : h.Nondegenerate) (hPU : PairUnit S h) {L M : AddSubgroup V} (hL : IsSelfDualMod S h L)
    (hM : IsSelfDualMod S h M) : ∃ g ∈ Formalism.HermitianLatticesTheory.isom h, ∀ v, v ∈ L ↔ g v ∈ M := by
  classical
  obtain ⟨x, hxL, hxo, hxu⟩ := exists_ortho_unit hS hs hnd hPU hL
  obtain ⟨g, hg, hgM⟩ := exists_isom_frameU hS hs hM x hxo hxu
  have hg' : ∀ a b, h (g a) (g b) = h a b := hg
  have hli := linIndep_orth x hxo (fun i => (hxu i).1)
  have hspan : Submodule.span K (Set.range x) = ⊤ := by
    apply Submodule.eq_top_of_finrank_eq
    rw [finrank_span_eq_card hli, Fintype.card_fin]
  have hexp : ∀ v, v = ∑ i, ((h (x i) (x i))⁻¹ * h (x i) v) • x i := by
    intro v
    have hxv' := orth_sub_proj x hxo (fun i => (hxu i).1) v
    have hall : ∀ y, h y (v - ∑ i, ((h (x i) (x i))⁻¹ * h (x i) v) • x i) = 0 := by
      intro y
      have hy : y ∈ Submodule.span K (Set.range x) := by rw [hspan]; trivial
      induction hy using Submodule.span_induction with
      | mem a ha =>
        obtain ⟨j, rfl⟩ := ha
        exact hxv' j
      | zero => simp
      | add a b _ _ ha hb => simp [ha, hb]
      | smul c a _ ha => simp [ha]
    exact sub_eq_zero.1 (hnd.2 _ hall)
  have hfwd : ∀ v, v ∈ L → g v ∈ M := by
    intro v hv

    rw [hexp v, map_sum]
    refine M.sum_mem fun i _ => ?_
    rw [map_smul]
    exact hM.smul_mem _ (S.mul_mem (hxu i).2.2 (hL.int _ (hxL i) _ hv)) _ (hgM i)
  refine ⟨g, hg, fun v => ⟨hfwd v, fun hv => hL.dual v fun m hm => ?_⟩⟩
  rw [← hg']
  exact hM.int _ (hfwd m hm) _ hv

end Abs

end PI.UnitaryGroupMassFormula.CntFormula.UG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ExistsIsomSelfDual =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ExistsTraceNotMem =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ExistsTraceNotMem", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.PairUnitLoc\nimport Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsSqAbsNormOfInert\nimport Formalism.HermitianLattices.HermitianLatticesProofs.LocDual\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.HermitianLattices.Ext.L3 Formalism.HermitianLattices.Ext.L3.WA

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula.UG

variable {K : Type} [Field K] [NumberField K] [StarRing K]

private lemma not_mem_of_mem_hcompl {p : Ideal (𝓞 K)} (hp : p.IsPrime) {s : 𝓞 K}
    (hs : s ∈ Formalism.HermitianLatticesTheory.hcompl (K := K) p) : s ∉ p ∧ conjO K s ∉ p := by
  rw [hcompl_eq_closure] at hs
  let M : Submonoid (𝓞 K) :=
    { carrier := {s | s ∉ p ∧ conjO K s ∉ p}
      mul_mem' := by
        intro x y hx hy
        obtain ⟨hx1, hx2⟩ := hx
        obtain ⟨hy1, hy2⟩ := hy
        refine ⟨fun h => ?_, fun h => ?_⟩
        · rcases hp.mem_or_mem h with h | h
          exacts [hx1 h, hy1 h]
        · rw [map_mul] at h
          rcases hp.mem_or_mem h with h | h
          exacts [hx2 h, hy2 h]
      one_mem' := by
        refine ⟨fun h => hp.ne_top ((Ideal.eq_top_iff_one p).mpr h), fun h => ?_⟩
        rw [map_one] at h
        exact hp.ne_top ((Ideal.eq_top_iff_one p).mpr h) }
  have hle : Submonoid.closure {s : 𝓞 K | s ∉ p ∧ conjO K s ∉ p} ≤ M :=
    Submonoid.closure_le.mpr (fun x hx => hx)
  exact hle hs

theorem num_mem_both {p : Ideal (𝓞 K)} (hp : p.IsPrime) {a : K} (ha : a ∈ locRing p) (hst : star a = a)
    (hna : ¬ IsUnitIn (locRing p) a) :
    ∃ a₁ : 𝓞 K, ∃ s₁ ∈ Formalism.HermitianLatticesTheory.hcompl (K := K) p,
      a = algebraMap (𝓞 K) K a₁ / algebraMap (𝓞 K) K s₁ ∧ a₁ ∈ p ∧ a₁ ∈ Formalism.HermitianLatticesTheory.conjIdeal (K := K) p := by
  have hinj := IsFractionRing.injective (𝓞 K) K
  have hloc : a ∈ Formalism.HermitianLatticesTheory.locR (K := K) p := ha
  obtain ⟨s, hs, hsa⟩ := (Formalism.HermitianLatticesTheory.locDual_mem_locR (K := K) p a).mp hloc
  obtain ⟨a₀, ha₀⟩ := Submodule.mem_one.mp hsa
  obtain ⟨hs1, hs2⟩ := not_mem_of_mem_hcompl hp hs
  have hs0 : algebraMap (𝓞 K) K s ≠ 0 := by
    intro h
    apply hs1
    have : s = 0 := hinj (by rw [h, map_zero])
    rw [this]
    exact p.zero_mem
  have hcs0 : star (algebraMap (𝓞 K) K s) ≠ 0 := by
    rw [← algebraMap_conjO]
    intro h
    apply hs2
    have : conjO K s = 0 := hinj (by rw [h, map_zero])
    rw [this]
    exact p.zero_mem
  obtain ⟨a₁, ha₁d⟩ : ∃ x : 𝓞 K, x = a₀ * conjO K s := ⟨_, rfl⟩
  obtain ⟨s₁, hs₁d⟩ : ∃ x : 𝓞 K, x = s * conjO K s := ⟨_, rfl⟩
  have hs₁ : s₁ ∈ Formalism.HermitianLatticesTheory.hcompl (K := K) p := by
    rw [hs₁d]
    exact mul_mem hs (conjO_mem_hcompl hs)
  have hA : algebraMap (𝓞 K) K a₁ = algebraMap (𝓞 K) K s₁ * a := by
    rw [ha₁d, hs₁d, map_mul, map_mul, algebraMap_conjO, ha₀]
    ring
  have hAs : star (algebraMap (𝓞 K) K s₁) = algebraMap (𝓞 K) K s₁ := by
    rw [hs₁d, map_mul, algebraMap_conjO, star_mul, star_star]
  have hc : conjO K a₁ = a₁ := hinj (by rw [algebraMap_conjO, hA, star_mul, hst, hAs, mul_comm])
  have hs₁0 : algebraMap (𝓞 K) K s₁ ≠ 0 := by
    rw [hs₁d, map_mul, algebraMap_conjO]
    exact mul_ne_zero hs0 hcs0
  have hp1 : a₁ ∈ p := by
    by_contra hn
    have hmem : a₁ ∈ Formalism.HermitianLatticesTheory.hcompl (K := K) p := by
      rw [hcompl_eq_closure]
      exact Submonoid.subset_closure ⟨hn, by rw [hc]; exact hn⟩
    have ha0 : a ≠ 0 := by
      intro h0
      apply hn
      have : a₁ = 0 := hinj (by rw [hA, h0, mul_zero, map_zero])
      rw [this]
      exact p.zero_mem
    apply hna
    refine ⟨ha0, ha, ?_⟩
    change a⁻¹ ∈ Formalism.HermitianLatticesTheory.locR (K := K) p
    rw [Formalism.HermitianLatticesTheory.locDual_mem_locR]
    refine ⟨a₁, hmem, Submodule.mem_one.mpr ⟨s₁, ?_⟩⟩
    rw [hA, mul_assoc, mul_inv_cancel₀ ha0, mul_one]
  refine ⟨a₁, s₁, hs₁, ?_, hp1, ?_⟩
  · rw [hA, eq_div_iff hs₁0, mul_comm]
  · rw [mem_conjIdeal_iff, hc]
    exact hp1

theorem exists_trace_notMem (hK : Formalism.HermitianLatticesTheory.IsCMUnram K) {p : Ideal (𝓞 K)} (hp : p.IsMaximal) :
    ∃ l : 𝓞 K, l + conjO K l ∉ p := by
  obtain ⟨θ, hθ⟩ := exists_sub_conjO_notMem hK hp
  by_cases h2 : (2 : 𝓞 K) ∈ p
  · refine ⟨θ, fun h => hθ ?_⟩
    have e : θ - conjO K θ = (θ + conjO K θ) - 2 * conjO K θ := by ring
    rw [e]
    exact p.sub_mem h (p.mul_mem_right _ h2)
  · refine ⟨1, ?_⟩
    rw [map_one, one_add_one_eq_two]
    exact h2

theorem pair_unit_local : PairUnitLoc := by
  intro K _ _ _ hK p hp V _ _ h hh w y hyw ha hb
  have hpp : p.IsPrime := hp.isPrime
  have hinj := IsFractionRing.injective (𝓞 K) K
  by_cases hua : IsUnitIn (locRing p) (h w w)
  · exact ⟨1, (locRing p).one_mem, 0, (locRing p).zero_mem, by simpa using hua⟩
  by_cases hub : IsUnitIn (locRing p) (h y y)
  · exact ⟨0, (locRing p).zero_mem, 1, (locRing p).one_mem, by simpa using hub⟩
  obtain ⟨l, hl⟩ := exists_trace_notMem hK hp
  have hwy : h w y = 1 := by rw [← hh.eq y w, hyw, map_one]
  have hsa : star (h w w) = h w w := by
    have := hh.eq w w
    rwa [starRingEnd_apply] at this
  have hsb : star (h y y) = h y y := by
    have := hh.eq y y
    rwa [starRingEnd_apply] at this
  obtain ⟨a₁, s₁, hs₁, hae, ha₁, -⟩ := num_mem_both hpp ha hsa hua
  obtain ⟨b₁, s₂, hs₂, hbe, hb₁, -⟩ := num_mem_both hpp hb hsb hub
  have hAmem : ∀ r : 𝓞 K, algebraMap (𝓞 K) K r ∈ locRing p := by
    intro r
    change algebraMap (𝓞 K) K r ∈ Formalism.HermitianLatticesTheory.locR (K := K) p
    rw [Formalism.HermitianLatticesTheory.locDual_mem_locR]
    exact ⟨1, one_mem _, Submodule.mem_one.mpr ⟨r, by rw [map_one, one_mul]⟩⟩
  refine ⟨1, (locRing p).one_mem, algebraMap (𝓞 K) K l, hAmem l, ?_⟩
  have hv : h ((1 : K) • w + algebraMap (𝓞 K) K l • y) ((1 : K) • w + algebraMap (𝓞 K) K l • y) =
      h w w + algebraMap (𝓞 K) K (l + conjO K l) + algebraMap (𝓞 K) K (conjO K l * l) * h y y := by
    simp only [one_smul, map_add (f := _), map_smulₛₗ, LinearMap.add_apply, LinearMap.smul_apply,
      smul_eq_mul, starRingEnd_apply, RingHom.id_apply, hyw, hwy, map_mul,
      algebraMap_conjO]
    ring
  rw [hv]
  by_contra hnu
  have hvmem : h w w + algebraMap (𝓞 K) K (l + conjO K l) + algebraMap (𝓞 K) K (conjO K l * l) * h y y ∈ locRing p :=
    add_mem (add_mem ha (hAmem _)) (mul_mem (hAmem _) hb)
  have hvs : star (h w w + algebraMap (𝓞 K) K (l + conjO K l) + algebraMap (𝓞 K) K (conjO K l * l) * h y y) =
      h w w + algebraMap (𝓞 K) K (l + conjO K l) + algebraMap (𝓞 K) K (conjO K l * l) * h y y := by
    rw [star_add, star_add, star_mul, hsa, hsb, ← algebraMap_conjO, ← algebraMap_conjO,
      map_add, map_mul, Formalism.HermitianLattices.Ext.L3.conjO_conjO]
    ring_nf
  obtain ⟨n, t, ht, hve, hn, -⟩ := num_mem_both hpp hvmem hvs hnu
  have hnz : ∀ {u : 𝓞 K}, u ∈ Formalism.HermitianLatticesTheory.hcompl (K := K) p → algebraMap (𝓞 K) K u ≠ 0 := by
    intro u hu h0
    apply (not_mem_of_mem_hcompl hpp hu).1
    have : u = 0 := hinj (by rw [h0, map_zero])
    rw [this]
    exact p.zero_mem
  have ht0 := hnz ht
  have h10 := hnz hs₁
  have h20 := hnz hs₂
  have key : n * (s₁ * s₂) = (a₁ * s₂ + (l + conjO K l) * (s₁ * s₂) + conjO K l * l * b₁ * s₁) * t := by
    apply hinj
    have e1 : algebraMap (𝓞 K) K n = (h w w + algebraMap (𝓞 K) K (l + conjO K l) + algebraMap (𝓞 K) K (conjO K l * l) * h y y) * algebraMap (𝓞 K) K t := by
      rw [hve, div_mul_cancel₀ _ ht0]
    simp only [map_mul, map_add (f := _)]
    rw [e1, hae, hbe]
    simp only [map_mul, map_add (f := _)]
    field_simp
  have hN : a₁ * s₂ + (l + conjO K l) * (s₁ * s₂) + conjO K l * l * b₁ * s₁ ∈ p := by
    have hmem : (a₁ * s₂ + (l + conjO K l) * (s₁ * s₂) + conjO K l * l * b₁ * s₁) * t ∈ p := by
      rw [← key]
      exact p.mul_mem_right _ hn
    rcases hpp.mem_or_mem hmem with h1 | h1
    · exact h1
    · exact absurd h1 (not_mem_of_mem_hcompl hpp ht).1
  have hT : (l + conjO K l) * (s₁ * s₂) ∈ p := by
    have e : (l + conjO K l) * (s₁ * s₂) =
        (a₁ * s₂ + (l + conjO K l) * (s₁ * s₂) + conjO K l * l * b₁ * s₁) - a₁ * s₂ -
          conjO K l * l * b₁ * s₁ := by ring
    rw [e]
    refine p.sub_mem (p.sub_mem hN (p.mul_mem_right _ ha₁)) ?_
    have e2 : conjO K l * l * b₁ * s₁ = (conjO K l * l) * (b₁ * s₁) := by ring
    rw [e2]
    exact p.mul_mem_left _ (p.mul_mem_right _ hb₁)
  rcases hpp.mem_or_mem hT with h1 | h1
  · exact hl h1
  · rcases hpp.mem_or_mem h1 with h2 | h2
    · exact (not_mem_of_mem_hcompl hpp hs₁).1 h2
    · exact (not_mem_of_mem_hcompl hpp hs₂).1 h2

end PI.UnitaryGroupMassFormula.CntFormula.UG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ExistsTraceNotMem =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.UnimodularOneGenus =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.UnimodularOneGenus", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.PairUnitLoc\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.UnimodOneGenus\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.StandardBaseFlagComplementIntegralLattice\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.GmapLocEqOfFrame\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.IsHermSemilocalLocRing\nimport Formalism.HermitianLattices.HermitianLatticesProofs.LocDual\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ExistsIsomSelfDual\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ExistsTraceNotMem\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularGenus.StdLatEqSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula.UG

open Formalism.HermitianLattices.Ext.L3.WA

theorem unimodOneGenus_of (hP : PairUnitLoc) : PI.UnitaryGroupMassFormula.CntFormula.RowsMassW.UnimodOneGenus := by
  intro K _ _ _ V _ _ _ _ _ h hK hs hnd L M hLl hMl hLu hMu p hp
  have hstar : ∀ r : 𝓞 K, star (algebraMap (𝓞 K) K r) ∈ Set.range (algebraMap (𝓞 K) K) :=
    PI.UG.W.star_mem_range K
  have huL := (Formalism.HermitianLatticesTheory.locDual (𝓞 K) K V h hs hstar L hLl.fg).2.mp hLu p hp
  have huM := (Formalism.HermitianLatticesTheory.locDual (𝓞 K) K V h hs hstar M hMl.fg).2.mp hMu p hp
  have hS := isHermSemilocal_locRing hK hp
  have hLfull : Submodule.IsFullLattice K L :=
    { toIsLattice := hLl
      span_eq_top := GlobalTheory.LoopC.Base.span_eq_top_of_unimodular h hs hnd hLl hLu }
  have hMfull : Submodule.IsFullLattice K M :=
    { toIsLattice := hMl
      span_eq_top := GlobalTheory.LoopC.Base.span_eq_top_of_unimodular h hs hnd hMl hMu }
  have hL' := isSelfDualMod_loc hLfull hp.isPrime huL
  have hM' := isSelfDualMod_loc hMfull hp.isPrime huM
  obtain ⟨g, hg, hiff⟩ := exists_isom_selfDual hS hs hnd
    (fun w y hyw hw hy => hP K hK p hp V h hs w y hyw hw hy) hL' hM'
  refine ⟨g, hg, ?_⟩
  ext w
  simp only [Formalism.HermitianLatticesTheory.gmap, Submodule.mem_map, LinearMap.coe_restrictScalars, LinearEquiv.coe_coe]
  constructor
  · rintro ⟨v, hv, rfl⟩
    exact (hiff v).1 hv
  · intro hw
    refine ⟨g.symm w, (hiff _).2 ?_, by simp⟩
    simpa using hw

theorem unimodular_one_genus : PI.UnitaryGroupMassFormula.CntFormula.RowsMassW.UnimodOneGenus :=
  unimodOneGenus_of pair_unit_local

end PI.UnitaryGroupMassFormula.CntFormula.UG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.UnimodularOneGenus =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.RowSurjective =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.RowSurjective", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ZMemPerp\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.RowSurjOfGenus\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.UnimodularOneGenus\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.UnitaryGroupMassFormula.CntFormula.RowsMassW

theorem row_surjective : RowSurj := rowSurj_of_genus PI.UnitaryGroupMassFormula.CntFormula.UG.unimodular_one_genus

end PI.UnitaryGroupMassFormula.CntFormula.RowsMassW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.RowSurjective =====
