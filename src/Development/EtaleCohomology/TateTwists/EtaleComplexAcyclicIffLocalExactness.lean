module

public import Development.EtaleCohomology.TateTwists.TensorVanishing
public import Development.EtaleCohomology.TateTwists.ColumnOf
public import Development.EtaleCohomology.TateTwists.acycIffPf
public import Development.EtaleCohomology.TateTwists.conePf

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.TateTwists.StepPf, Development.EtaleCohomology.TateTwists.EtaleComplexAcyclicIffLocalExactness

-- ===== clump member: Development.EtaleCohomology.TateTwists.StepPf =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.StepPf", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.TensorVanishing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex GlobalTheory.EtC
open scoped TensorProduct DirectSum

noncomputable section
namespace LateralTheory.EtaleFoundations.StepPf
open LateralTheory.EtaleFoundations.stairPf
variable {R : Type} [CommRing R] {C J T : Cx R}

theorem tens_res_comp {W V U : Scheme.{0}} (k : W ⟶ V) (g : V ⟶ U) (w : ℤ) (x : Tens C J U w) :
    Tens.res (k ≫ g) w x = Tens.res k w (Tens.res g w x) := by
  ext p
  rw [res_apply, res_apply, res_apply]
  generalize x p = v
  induction v using TensorProduct.induction_on with
  | zero => simp only [map_zero]
  | tmul a b => simp [TensorProduct.map_tmul]
  | add a b ha hb => simp only [map_add (f := _), ha, hb]

theorem ix_eq {w : ℤ} (p : Ix w) (a b : ℤ) (h : p.1.2 = b) (ha : a + b = w) : p = ⟨(a, b), ha⟩ :=
  Subtype.ext (Prod.ext (show p.1.1 = a by have := p.2; omega) h)

theorem lof_back {U : Scheme.{0}} {w : ℤ} (i j : Ix w) (h : i = j) (v : Cmp C J U w i) :
    DirectSum.lof (ULift.{1} R) (Ix w) (Cmp C J U w) j ((DirectSum.lof (ULift.{1} R) (Ix w) (Cmp C J U w) i v) j) =
      DirectSum.lof (ULift.{1} R) (Ix w) (Cmp C J U w) i v := by
  subst h; rw [lof_same]

theorem ev_zsmul {U : Scheme.{0}} {w : ℤ} (c : ℤ) (f : Tens C J U w) (q : Ix w) : (c • f) q = c • f q := rfl

theorem Dm_comp (U : Scheme.{0}) (n t0 : ℤ) (y : Tens C J U n) :
    (Dm U n (n + 1) rfl y) ⟨(n - t0 + 1, t0), by omega⟩ =
      TensorProduct.map ((C.d (n - t0) (n - t0 + 1)).hom.app (op U)).hom LinearMap.id (y ⟨(n - t0, t0), by omega⟩) +
      (Dm U n (n + 1) rfl (DirectSum.lof (ULift.{1} R) (Ix n) (Cmp C J U n) ⟨(n - t0 + 1, t0 - 1), by omega⟩
        (y ⟨(n - t0 + 1, t0 - 1), by omega⟩))) ⟨(n - t0 + 1, t0), by omega⟩ := by
  classical
  induction y using DirectSum.induction_on with
  | zero => simp
  | add a b ha hb =>
    simp only [map_add (f := _), DirectSum.add_apply] at ha hb ⊢
    rw [ha, hb]; abel
  | of p v =>
    rw [← DirectSum.lof_eq_of (ULift.{1} R)]
    by_cases h0 : p.1.2 = t0
    · obtain ⟨⟨a, b⟩, hab⟩ := p
      simp only at h0; subst h0
      obtain rfl : a = n - b := by omega
      rw [Dm_lof, DirectSum.add_apply, ev_zsmul]
      dsimp only
      rw [lof_same, lof_ne _ _ _ _ (by simp), smul_zero, add_zero,
        lof_same, lof_ne _ _ _ _ (by simp; omega), map_zero, map_zero, DirectSum.zero_apply, add_zero]
    by_cases h1 : p.1.2 = t0 - 1
    · rw [lof_back p _ (ix_eq p (n - t0 + 1) (t0 - 1) h1 (by omega)), lof_ne _ _ _ _ h0, map_zero, zero_add]
    · rw [Dm_lof, DirectSum.add_apply, ev_zsmul, lof_ne _ _ _ _ h0, lof_ne _ _ _ _ (by simp; omega),
        smul_zero, add_zero, lof_ne _ _ _ _ h0, lof_ne _ _ _ _ h1, map_zero, map_zero, map_zero,
        DirectSum.zero_apply, add_zero]

theorem Step_of : LateralTheory.EtaleFoundations.stairPf.Step := by
  intro R _ C J T τ hτ hc n t0 V x hx hd
  have hD : τ.lift V (n + 1) (Dm V n (n + 1) rfl x) = 0 := by rw [lift_Dm, hd]
  refine loc_bind (hτ.2 V (n + 1) _ hD) fun W g hW => ?_
  have hc0 : TensorProduct.map ((C.d (n - t0) (n - t0 + 1)).hom.app (op W)).hom LinearMap.id
      (Tens.res g n x ⟨(n - t0, t0), by omega⟩) = 0 := by
    rw [res_apply, nat_tens]
    have h1 := congrArg (fun z => z ⟨(n - t0 + 1, t0), by omega⟩) hW
    simp only at h1
    rw [res_apply, Dm_comp, hx ⟨(n - t0 + 1, t0 - 1), by omega⟩ (by simp)] at h1
    simp only [map_zero, DirectSum.zero_apply, add_zero] at h1
    exact h1
  refine loc_mono (hc W (n - t0) t0 _ hc0) fun W' k hk => ?_
  obtain ⟨y0, hy0⟩ := hk
  refine ⟨Tens.res (k ≫ g) n x - Dm W' (n - 1) n (by ring)
      (DirectSum.lof (ULift.{1} R) (Ix (n - 1)) (Cmp C J W' (n - 1)) ⟨(n - t0 - 1, t0), by omega⟩ y0),
    DirectSum.lof (ULift.{1} R) (Ix (n - 1)) (Cmp C J W' (n - 1)) ⟨(n - t0 - 1, t0), by omega⟩ y0, ?_,
    (sub_add_cancel _ _).symm⟩
  intro p hp
  rw [DirectSum.sub_apply, Dm_lof, DirectSum.add_apply, ev_zsmul]
  rcases lt_or_eq_of_le (show p.1.2 ≤ t0 by omega) with h | h
  · rw [res_apply, hx p h, map_zero, lof_ne _ _ _ _ (by simp; omega), lof_ne _ _ _ _ (by simp; omega),
      smul_zero, add_zero, sub_zero]
  · obtain ⟨⟨a, b⟩, hab⟩ := p
    simp only at h; subst h
    obtain rfl : a = n - b := by omega
    dsimp only
    rw [lof_shift W' n (n - b - 1) (n - b) b (by ring) (by omega) (by omega), lof_same,
      lof_ne _ _ _ _ (by simp), smul_zero, add_zero, hy0, tens_res_comp, res_apply k, sub_self]

end LateralTheory.EtaleFoundations.StepPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.StepPf =====

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleComplexAcyclicIffLocalExactness =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleComplexAcyclicIffLocalExactness", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.TensorVanishing\npublic import Development.EtaleCohomology.TateTwists.ColumnOf\npublic import Development.EtaleCohomology.TateTwists.StepPf\npublic import Development.EtaleCohomology.TateTwists.acycIffPf\npublic import Development.EtaleCohomology.TateTwists.conePf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.EtaleTensorPairQuasiIsoOfFlatQuasiIso
theorem etale_tensor_acyclic_of_staircase_lifting : LateralTheory.EtaleFoundations.acyc.stair := by
  apply LateralTheory.EtaleFoundations.acyc.stair_of <;> first | exact _root_.LateralTheory.EtaleFoundations.StepPf.Step_of
theorem etale_tensor_acyclic_cone_of_flat : LateralTheory.EtaleFoundations.tqis.acyc := by
  apply LateralTheory.EtaleFoundations.tqis.acyc_of <;> first | exact _root_.LateralTheory.EtaleFoundations.acyc.acycIff_of | exact _root_.LateralTheory.EtaleFoundations.acyc.column_of | exact etale_tensor_acyclic_of_staircase_lifting
theorem etale_tensor_quasiIso_of_acyclic_cone : LateralTheory.EtaleFoundations.EtaleTensorPairQuasiIsoOfFlatQuasiIso := by
  apply LateralTheory.EtaleFoundations.etale_tensor_preserves_quasiIso_of_acyclic_and_cone <;> first | exact etale_tensor_acyclic_cone_of_flat | exact _root_.LateralTheory.EtaleFoundations.tqis.cone_of
alias intersectionNumber_baseChange := _root_.LateralTheory.Fin.EtaleTensorPairQuasiIsoOfFlatQuasiIso.etale_tensor_quasiIso_of_acyclic_cone
end LateralTheory.Fin.EtaleTensorPairQuasiIsoOfFlatQuasiIso
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleComplexAcyclicIffLocalExactness =====
