module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemSteps
public import Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CommonMajorizingLattice
public import Lemmata.GeneralBFactSecondRest.Imports
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.UnipRat
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.TermDefPf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.NilradicalLatticeZMemSpan
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemConj
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemFlag
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.Vanish
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfApproxFinal
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMain
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHAlg
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.ConcreteLevelAdelicSubset
import Formalism.SharpRestriction.CuspSpanNormBounds.BesselShellMomentBounds
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemIsom, Formalism.HermitianLattices.HermitianLatticesProofs.MajLattice, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemLat, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemPt, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMem, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfFinal

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemIsom =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemIsom", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemSteps\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHAlg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open Matrix NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp
open Formalism.L2.SG.Pf.UnipB Formalism.L2.SG.Pf.Unip

namespace Formalism.L2.SG.TermOp.Vanish

private theorem crd_toLin_map_eq_mulVec_crd {D : D7} (X : HidaSetting D) (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E)
    (y : (VS D).V) : X.crd (Matrix.toLin X.bas X.bas (M.map X.ιE) y) = M *ᵥ X.crd y := by
  have h := LinearMap.toMatrix_mulVec_repr X.bas X.bas (Matrix.toLin X.bas X.bas (M.map X.ιE)) y
  rw [LinearMap.toMatrix_toLin] at h
  funext i

  simp only [Formalism.L2.SG.HidaSetting.HidaSetting.crd, Formalism.L2.SG.HidaSetting.crdOf, ← h, Matrix.mulVec, dotProduct,
  Matrix.map_apply, map_sum, map_mul, RingEquiv.symm_apply_apply]

theorem memIsomOf_holds : MemIsomOf := by
  intro D X g hg
  let A : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E := (g : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E)
  let B : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E :=
    ((g⁻¹ : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E)
  have hinj : ∀ y y' : (VS D).V, X.crd y = X.crd y' → y = y' := by
    intro y y' h
    apply X.bas.repr.injective
    ext i
    have := congrFun h i
    simpa [Formalism.L2.SG.HidaSetting.HidaSetting.crd, Formalism.L2.SG.HidaSetting.crdOf] using this
  let n : (VS D).V ≃ₗ[D.host.E] (VS D).V :=
    LinearEquiv.ofLinear (Matrix.toLin X.bas X.bas (A.map X.ιE)) (Matrix.toLin X.bas X.bas (B.map X.ιE))
      (LinearMap.ext fun y => hinj _ _ (by
        rw [LinearMap.comp_apply, crd_toLin_map_eq_mulVec_crd, crd_toLin_map_eq_mulVec_crd, Matrix.mulVec_mulVec]
        simp [A, B]))
      (LinearMap.ext fun y => hinj _ _ (by
        rw [LinearMap.comp_apply, crd_toLin_map_eq_mulVec_crd, crd_toLin_map_eq_mulVec_crd, Matrix.mulVec_mulVec]
        simp [A, B]))
  have hn : ∀ y, X.crd (n y) = A *ᵥ X.crd y := fun y => crd_toLin_map_eq_mulVec_crd X A y
  refine ⟨n, ?_, hn⟩
  intro x y
  rw [← Formalism.L2.SG.PoincareInHH.Cut.hform_crd X (n x) (n y), ← Formalism.L2.SG.PoincareInHH.Cut.hform_crd X x y,
    hn, hn, Formalism.L2.SG.PoincareInHH.Cut.hform_mulVec _ _ _ hg]

end Formalism.L2.SG.TermOp.Vanish
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemIsom =====

-- ===== clump member: Formalism.HermitianLattices.HermitianLatticesProofs.MajLattice =====
-- clump-header: {"m": "Formalism.HermitianLattices.HermitianLatticesProofs.MajLattice", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CommonMajorizingLattice\npublic import Lemmata.GeneralBFactSecondRest.Imports\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic\n\n"}
section -- clump:auto
@[expose] public section

open NumberField NumberField.InfinitePlace NumberField.mixedEmbedding Module
open scoped Matrix

noncomputable section

namespace Formalism.HermitianLatticesTheory

section MajLatticeMain

variable {K V ι : Type*} [Field K] [NumberField K] [_root_.NumberField.IsTotallyComplex K] [StarRing K] [AddCommGroup V]
  [Module K V] [Fintype ι] [DecidableEq ι]

variable [Module (𝓞 K) V] [IsScalarTower (𝓞 K) K V]

theorem majLattice_exists_d (b : Basis ι K V) (L : Submodule (𝓞 K) V) (hfg : L.FG) :
    ∃ d : ℤ, d ≠ 0 ∧ ∀ x ∈ L, ∀ i, IsIntegral ℤ ((d : K) * b.repr x i) := by
  classical
  obtain ⟨s, hs⟩ := hfg
  obtain ⟨d, hd, ht⟩ := _root_.UpperTheory.Reformulated.B.CommonMajorizingLattice.majLattice_common (s.biUnion fun g => Finset.univ.image fun i => b.repr g i)
  refine ⟨d, hd, fun x hx => ?_⟩
  rw [← hs] at hx
  induction hx using Submodule.span_induction with
  | mem g hg =>
    intro i
    exact ht _ (Finset.mem_biUnion.mpr ⟨g, Finset.mem_coe.mp hg,
      Finset.mem_image.mpr ⟨i, Finset.mem_univ _, rfl⟩⟩)
  | zero => intro i; simpa using isIntegral_zero
  | add x y _ _ hx hy =>
    intro i
    simp only [map_add (f := _), Finsupp.add_apply, mul_add]
    exact (hx i).add (hy i)
  | smul r x _ hx =>
    intro i
    have : b.repr (r • x) i = algebraMap (𝓞 K) K r * b.repr x i := by
      rw [← algebraMap_smul K r x, map_smul]; rfl
    rw [this, mul_left_comm]
    exact (RingOfIntegers.isIntegral_coe r).mul (hx i)

end MajLatticeMain

end Formalism.HermitianLatticesTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianLattices.HermitianLatticesProofs.MajLattice =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemLat =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemLat", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.UnipRat\npublic import Formalism.HermitianLattices.HermitianLatticesProofs.MajLattice\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.TermDefPf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.ConcreteLevelAdelicSubset\nimport Formalism.SharpRestriction.CuspSpanNormBounds.BesselShellMomentBounds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting
open scoped Classical

namespace Formalism.L2.SG.Pf.RCoc

open Formalism.L2.SG.Pf.UnipB Formalism.L2.SG.Pf.Unip

variable {D : D7} (X : HidaSetting D)

theorem isInt_symm {x : D.host.E} (hx : IsIntegral ℤ x) : IsIntegral ℤ (X.ιE.symm x) :=
  hx.map (RingHom.toIntAlgHom (X.ιE.symm : D.host.E →+* X.B.I.E))

theorem isInt_fwd {x : X.B.I.E} (hx : IsIntegral ℤ x) : IsIntegral ℤ (X.ιE x) :=
  hx.map (RingHom.toIntAlgHom (X.ιE : X.B.I.E →+* D.host.E))

theorem natAbs_sq_cast {K : Type*} [Ring K] (z : ℤ) : (((z.natAbs ^ 2 : ℕ)) : K) = (z : K) * (z : K) := by
  rw [← Int.cast_natCast, Nat.cast_pow, Int.natCast_natAbs, sq_abs, sq, Int.cast_mul]

theorem crd_sub_lat (a b : (VS D).V) : X.crd (a - b) = X.crd a - X.crd b := by
  first
    | (funext i; simp [Formalism.L2.SG.HidaSetting.HidaSetting.crd, crdOf])

theorem repr_crd (a : (VS D).V) (i : Fin X.B.I.n) : X.bas.repr a i = X.ιE (X.crd a i) := by
  simp [Formalism.L2.SG.HidaSetting.HidaSetting.crd, crdOf]

theorem lat_pres (Λ : Submodule (𝓞 D.host.E) (VS D).V) (hΛ : Submodule.IsFullLattice D.host.E Λ) :
    ∃ c : ℕ, 1 ≤ c ∧ ∀ G : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E, IntDiv c (G - 1) →
      ∀ g : (VS D).V →ₗ[D.host.E] (VS D).V, (∀ y, X.crd (g y) = G *ᵥ X.crd y) → ∀ y ∈ Λ, g y ∈ Λ := by
  obtain ⟨d, hd0, hd⟩ := Formalism.HermitianLatticesTheory.majLattice_exists_d X.bas Λ hΛ.fg
  have hc : ∀ i, ∃ c : ℤ, c ≠ 0 ∧ c • X.bas i ∈ Λ := fun i =>
    _root_.Bl.general_b_fact_second_rest.goal1 Λ hΛ.span_eq_top (X.bas i)
  choose c hc0 hcm using hc
  set C : ℤ := ∏ i, c i with hC
  have hCm : ∀ i, (C * C) • X.bas i ∈ Λ := by
    intro i
    have e : C = (∏ j ∈ Finset.univ.erase i, c j) * c i := by
      rw [hC, Finset.prod_erase_mul _ _ (Finset.mem_univ i)]
    have h1 : C • X.bas i ∈ Λ := by
      rw [e, mul_smul]
      exact zsmul_mem (hcm i) _
    rw [mul_smul]
    exact zsmul_mem h1 _
  have hC0 : C ≠ 0 := Finset.prod_ne_zero_iff.2 fun i _ => hc0 i
  refine ⟨d.natAbs ^ 2 * C.natAbs ^ 2, ?_, ?_⟩
  · have h1 : 0 < d.natAbs := Int.natAbs_pos.2 hd0
    have h2 : 0 < C.natAbs := Int.natAbs_pos.2 hC0
    have := Nat.mul_pos (pow_pos h1 2) (pow_pos h2 2)
    omega
  rintro G ⟨A, hA, hGA⟩ g hg y hy
  set v := A *ᵥ X.crd y with hv
  have hw : X.crd (g y - y) = ((d.natAbs ^ 2 * C.natAbs ^ 2 : ℕ) : X.B.I.E) • v := by
    rw [crd_sub_lat, hg, ← Matrix.one_mulVec (X.crd y), Matrix.mulVec_mulVec, Matrix.mul_one,
      ← Matrix.sub_mulVec, hGA, Matrix.smul_mulVec]
  have hvi : ∀ i, IsIntegral ℤ (((d.natAbs ^ 2 : ℕ) : X.B.I.E) * v i) := by
    intro i
    rw [hv, Matrix.mulVec, dotProduct, Finset.mul_sum]
    refine IsIntegral.sum _ fun j _ => ?_
    have e : ((d.natAbs ^ 2 : ℕ) : X.B.I.E) * (A i j * X.crd y j) =
        A i j * X.ιE.symm ((d : D.host.E) * ((d : D.host.E) * X.bas.repr y j)) := by
      rw [natAbs_sq_cast]
      simp only [HidaSetting.crd, crdOf, map_mul, map_intCast]
      ring
    rw [e]
    exact (hA i j).mul (isInt_symm X ((isInt_intCast d).mul (hd y hy j)))
  choose r hr using fun i => (⟨⟨X.ιE (((d.natAbs ^ 2 : ℕ) : X.B.I.E) * v i), isInt_fwd X (hvi i)⟩, rfl⟩ :
    ∃ r : 𝓞 D.host.E, (r : D.host.E) = X.ιE (((d.natAbs ^ 2 : ℕ) : X.B.I.E) * v i))
  have hsum : g y - y = ∑ i, r i • ((C * C) • X.bas i) := by
    conv_lhs => rw [← X.bas.sum_repr (g y - y)]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [repr_crd, hw, Pi.smul_apply, smul_eq_mul, ← algebraMap_smul D.host.E (r i), ← Int.cast_smul_eq_zsmul D.host.E,
      smul_smul]
    congr 1
    show _ = (r i : D.host.E) * _
    rw [hr, Nat.cast_mul, mul_assoc, mul_comm, map_mul, map_mul, map_natCast, natAbs_sq_cast]
    simp only [map_mul, map_natCast]
    push_cast
    ring
  have hmem : g y - y ∈ Λ := by
    rw [hsum]
    exact Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (hCm i)
  have e : g y = y + (g y - y) := by abel
  rw [e]
  exact Λ.add_mem hy hmem

theorem lat_den_two {α β γ δ : Type*} [Fintype α] [Fintype β] [Fintype γ] [Fintype δ] (P : Matrix α β X.B.I.E) (Q : Matrix γ δ X.B.I.E) :
    ∃ m : ℕ, 0 < m ∧ IntDiv 1 ((m : X.B.I.E) • P) ∧ IntDiv 1 ((m : X.B.I.E) • Q) := by
  have hint : ∀ k : ℕ, IsIntegral ℤ ((k : X.B.I.E)) := fun k => by
    simpa using (isIntegral_algebraMap : IsIntegral ℤ (algebraMap ℤ X.B.I.E (k : ℤ)))
  obtain ⟨d1, hd1, A, hA, hAe⟩ := exists_den (fun x => Formalism.L2.SG.Pf.nt_int_mul_of X.B.I x) P
  obtain ⟨d2, hd2, B, hB, hBe⟩ := exists_den (fun x => Formalism.L2.SG.Pf.nt_int_mul_of X.B.I x) Q
  refine ⟨d1 * d2, Nat.mul_pos hd1 hd2, ⟨(d2 : X.B.I.E) • A, fun i j => ?_, ?_⟩,
    ⟨(d1 : X.B.I.E) • B, fun i j => ?_, ?_⟩⟩
  · simpa [Matrix.smul_apply, smul_eq_mul] using (hint d2).mul (hA i j)
  · rw [Nat.cast_mul, mul_comm, mul_smul, hAe]
    simp
  · simpa [Matrix.smul_apply, smul_eq_mul] using (hint d1).mul (hB i j)
  · rw [Nat.cast_mul, mul_smul, hBe]
    simp

theorem lat_gE_sub_one (Z : Matrix (Kap X) (Kap X) X.B.I.E) :
    Formalism.L2.SG.Pf.UnipB.gE X Z - 1 = Bm X * (cay (N0 D) Z - 1) * Bm' X := by
  show Bm X * cay (N0 D) Z * Bm' X - 1 = Bm X * (cay (N0 D) Z - 1) * Bm' X
  rw [Matrix.mul_sub, Matrix.mul_one, Matrix.sub_mul, Bm_mul_Bm']

theorem lat_gE_intDiv (mB : ℕ) (hB : IntDiv 1 ((mB : X.B.I.E) • Bm X)) (hB' : IntDiv 1 ((mB : X.B.I.E) • Bm' X))
    (c : ℕ) (A : Matrix (Kap X) (Kap X) X.B.I.E) (hA : ∀ i j, IsIntegral ℤ (A i j))
    (Z : Matrix (Kap X) (Kap X) X.B.I.E) (hZ : Z = ((2 * c * mB ^ 2 : ℕ) : X.B.I.E) • A) :
    IntDiv (2 * c) (Formalism.L2.SG.Pf.UnipB.gE X Z - 1) := by
  subst hZ
  have hh : (⅟2 : X.B.I.E) • (((2 * c * mB ^ 2 : ℕ) : X.B.I.E) • A) = ((c * mB ^ 2 : ℕ) : X.B.I.E) • A := by
    rw [smul_smul]
    congr 1
    rw [show ((2 * c * mB ^ 2 : ℕ) : X.B.I.E) = 2 * ((c * mB ^ 2 : ℕ) : X.B.I.E) by push_cast; ring,
      ← mul_assoc, invOf_mul_self, one_mul]
  have hAi : IntDiv 1 A := ⟨A, hA, by simp⟩
  have hhalf : IntDiv 1 ((⅟2 : X.B.I.E) • (((2 * c * mB ^ 2 : ℕ) : X.B.I.E) • A)) := by
    rw [hh]
    refine ⟨((c * mB ^ 2 : ℕ) : X.B.I.E) • A, fun i j => ?_, by simp⟩
    rw [Matrix.smul_apply, smul_eq_mul]
    exact (isInt_natCast _).mul (hA i j)
  have hgeo : IntDiv 1 (geo (N0 D) ((⅟2 : X.B.I.E) • (((2 * c * mB ^ 2 : ℕ) : X.B.I.E) • A))) := by
    unfold geo
    refine intDiv_sum fun j _ => ?_
    have := intDiv_pow hhalf j
    rwa [one_pow] at this
  have hP := intDiv_mul (intDiv_mul hB (intDiv_mul hAi hgeo)) hB'
  rw [show (1 * (1 * 1) * 1 : ℕ) = 1 by norm_num] at hP
  obtain ⟨W, hW, hWe⟩ := hP
  refine ⟨W, hW, ?_⟩
  rw [lat_gE_sub_one]
  unfold cay
  rw [add_sub_cancel_left]
  have e : Bm X * ((((2 * c * mB ^ 2 : ℕ) : X.B.I.E) • A) *
      geo (N0 D) ((⅟2 : X.B.I.E) • (((2 * c * mB ^ 2 : ℕ) : X.B.I.E) • A))) * Bm' X =
      ((2 * c : ℕ) : X.B.I.E) • (((mB : X.B.I.E) • Bm X) *
        (A * geo (N0 D) ((⅟2 : X.B.I.E) • (((2 * c * mB ^ 2 : ℕ) : X.B.I.E) • A))) * ((mB : X.B.I.E) • Bm' X)) := by
    simp only [Matrix.smul_mul, Matrix.mul_smul, smul_smul]
    congr 1
    push_cast
    ring
  rw [e, hWe, Nat.cast_one, one_smul]

end Formalism.L2.SG.Pf.RCoc

namespace Formalism.L2.SG.TermOp.Vanish

open Formalism.L2.SG.Pf.RCoc Formalism.L2.SG.Pf.UnipB Formalism.L2.SG.Pf.Unip

theorem memLatOf_holds (D : D7) (X : HidaSetting D) (Λ : Submodule (𝓞 D.host.E) (VS D).V)
    (hΛ : Submodule.IsFullLattice D.host.E Λ) :
    ∃ d : ℕ, 1 ≤ d ∧ ∀ (Z : Matrix (Kap X) (Kap X) X.B.I.E) (n : (VS D).V ≃ₗ[D.host.E] (VS D).V),
      InPat (lvk X) 1 Z → (∃ A : Matrix (Kap X) (Kap X) (𝓞 X.B.I.E), Z = (d : X.B.I.E) • A.map (fun a => (a : X.B.I.E))) →
      (∀ y, X.crd (n y) = gE X Z *ᵥ X.crd y) → Formalism.HermitianLatticesTheory.gmap n Λ = Λ := by
  obtain ⟨c, hc, H⟩ := lat_pres X Λ hΛ
  obtain ⟨mB, hmB, hB, hB'⟩ := lat_den_two X (Bm X) (Bm' X)
  refine ⟨2 * c * mB ^ 2, Nat.mul_pos (Nat.mul_pos two_pos hc) (pow_pos hmB 2), fun Z n hZ hA hn => ?_⟩
  obtain ⟨A, hA⟩ := hA
  have hAi : ∀ i j, IsIntegral ℤ ((A.map (fun a => (a : X.B.I.E))) i j) := fun i j => (A i j).isIntegral_coe
  have h1 : IntDiv c (Formalism.L2.SG.Pf.UnipB.gE X Z - 1) := by
    have := lat_gE_intDiv X mB hB hB' c _ hAi Z hA
    exact intDiv_dvd (d := 2) (by rwa [mul_comm c 2])
  have h2 : IntDiv c (Formalism.L2.SG.Pf.UnipB.gE X (-Z) - 1) := by
    have hneg : -Z = ((2 * c * mB ^ 2 : ℕ) : X.B.I.E) • (-(A.map (fun a => (a : X.B.I.E)))) := by
      rw [hA, smul_neg]
    have := lat_gE_intDiv X mB hB hB' c _ (fun i j => (hAi i j).neg) (-Z) hneg
    exact intDiv_dvd (d := 2) (by rwa [mul_comm c 2])
  have hinv : Formalism.L2.SG.Pf.UnipB.gE X (-Z) * Formalism.L2.SG.Pf.UnipB.gE X Z = 1 := gE_mul X le_rfl hZ
  have hn' : ∀ y, X.crd (n.symm y) = Formalism.L2.SG.Pf.UnipB.gE X (-Z) *ᵥ X.crd y := by
    intro y
    conv_rhs => rw [← n.apply_symm_apply y, hn, Matrix.mulVec_mulVec, hinv, Matrix.one_mulVec]
  rw [Formalism.L2.SG.Pf.gmap_eq_iff]
  intro x
  constructor
  · intro hx
    have := H _ h2 n.symm.toLinearMap hn' (n x) hx
    simpa using this
  · intro hx
    exact H _ h1 n.toLinearMap hn x hx

end Formalism.L2.SG.TermOp.Vanish
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemLat =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemPt =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemPt", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemSteps\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.NilradicalLatticeZMemSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open Matrix NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp
open Formalism.L2.SG.Pf.UnipB Formalism.L2.SG.Pf.Unip

namespace Formalism.L2.SG.TermOp.Vanish

theorem memPtOf_holds : MemPtOf := by
  intro D X Z n hni hn
  obtain ⟨x, hx⟩ := Formalism.L2.SG.Pf.ratPt_holds D X n hni
  refine ⟨x, hx, fun v => ?_⟩
  obtain ⟨M', -, h1, -, h3⟩ := hx
  have hM : (M' : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) = gE X Z := by
    apply Matrix.ext_of_mulVec_single
    intro i
    obtain ⟨y, hy⟩ := Formalism.L2.SG.Pf.crd_surj X (Pi.single i 1)
    rw [← hy, ← h3, hn]
  unfold Mv
  rw [h1 v, hM, gE_real]
  simp only [← Matrix.mul_assoc, Bv'_mul_Bv, Matrix.one_mul]
  rw [Matrix.mul_assoc, Bv'_mul_Bv, Matrix.mul_one, cay_map]

end Formalism.L2.SG.TermOp.Vanish
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemPt =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMem =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMem", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemConj\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemFlag\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemIsom\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemLat\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemPt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.TermOp.Vanish

theorem ratMem_holds : RatMem :=
  ratMem_of memIsomOf_holds memFlagOf_holds memLatOf_holds memConjOf_holds memPtOf_holds

end Formalism.L2.SG.TermOp.Vanish
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMem =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfFinal =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfFinal", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.Vanish\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfApproxFinal\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMain\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.TermOp.Vanish

theorem rational_cocompact_holds : RCocompactC := rCocompactC_of ratApprox_holds ratMem_holds

end Formalism.L2.SG.TermOp.Vanish
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfFinal =====
