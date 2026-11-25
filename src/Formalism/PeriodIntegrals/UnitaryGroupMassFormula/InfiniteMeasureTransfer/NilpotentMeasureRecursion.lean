module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.HidaSetting
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.ContinuousEvI
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.MeasureIsomorphismAtInfinity
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.ConjSubMulVec, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.NilpotentMeasureRecursion

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.ConjSubMulVec =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.ConjSubMulVec", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.HidaSetting\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.ContinuousEvI\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Matrix Formalism.L2.SG.AdBridge
open scoped TensorProduct Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.MainNotions.S (AutInst uMat)

namespace Formalism.L2.SG.Pf.MeasInfW

variable (I : AutInst)

def thV (v : InfinitePlace I.F) (w : Fin I.n → TI I) : Fin I.n → ℂ := fun i => thI I v (w i)

theorem thV_zero (v : InfinitePlace I.F) : thV I v 0 = 0 := by
  funext i
  simp [thV]

theorem thV_add (v : InfinitePlace I.F) (w w' : Fin I.n → TI I) :
    thV I v (w + w') = thV I v w + thV I v w' := by
  funext i
  simp [thV]

theorem thV_sub (v : InfinitePlace I.F) (w w' : Fin I.n → TI I) :
    thV I v (w - w') = thV I v w - thV I v w' := by
  funext i
  simp [thV]

theorem thV_smul (v : InfinitePlace I.F) (c : TI I) (w : Fin I.n → TI I) :
    thV I v (c • w) = thI I v c • thV I v w := by
  funext i
  simp [thV]

theorem thV_sum {ι : Type} (s : Finset ι) (v : InfinitePlace I.F) (f : ι → Fin I.n → TI I) :
    thV I v (∑ a ∈ s, f a) = ∑ a ∈ s, thV I v (f a) := by
  funext i

  simp [thV, Finset.sum_apply, map_sum]

theorem thV_mulVec (v : InfinitePlace I.F) (M : Matrix (Fin I.n) (Fin I.n) (TI I)) (w : Fin I.n → TI I) :
    thV I v (M *ᵥ w) = M.map (thI I v) *ᵥ thV I v w := by
  funext i
  exact RingHom.map_mulVec (thI I v) M w i

theorem thV_ratV (v : InfinitePlace I.F) (x : Fin I.n → I.E) :
    thV I v (Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) x) = fun i => I.φ v (x i) := by
  funext i
  simp only [thV, Formalism.L2.SG.Sub.ratV, thI_inclR]

theorem thV_ext (w w' : Fin I.n → TI I) (h : ∀ v, thV I v w = thV I v w') : w = w' := by
  funext i
  exact thI_ext I (w i) (w' i) fun v => congrFun (h v) i


open Classical in
theorem exists_single (v0 : InfinitePlace I.F) (u : Fin I.n → ℂ) :
    ∃ w : Fin I.n → TI I, ∀ v, thV I v w = if v = v0 then u else 0 := by
  choose y hy using fun i => thI_surj I (fun v => if v = v0 then u i else 0)
  refine ⟨y, fun v => ?_⟩
  funext i
  simp only [thV, hy]
  split_ifs <;> rfl

def phV (v : InfinitePlace I.F) (x : Fin I.n → I.E) : Fin I.n → ℂ := fun i => I.φ v (x i)

theorem mem_spanR_iff {m : ℕ} (Y : Fin m → Fin I.n → I.E) (t : Set (Fin m)) (w : Fin I.n → TI I) :
    w ∈ Formalism.L2.SG.Sub.spanR (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) Y t ↔
      ∀ v, thV I v w ∈ Submodule.span ℂ ((fun a => phV I v (Y a)) '' t) := by
  classical
  unfold Formalism.L2.SG.Sub.spanR
  constructor
  · intro hw v
    induction hw using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨a, ha, rfl⟩ := hx
      simp only [thV_ratV]
      exact Submodule.subset_span ⟨a, ha, rfl⟩
    | zero => rw [thV_zero]; exact Submodule.zero_mem _
    | add x y _ _ hx hy => rw [thV_add]; exact Submodule.add_mem _ hx hy
    | smul c x _ hx => rw [thV_smul]; exact Submodule.smul_mem _ _ hx
  · intro h
    have hc : ∀ v, ∃ c : t → ℂ, ∑ a, c a • phV I v (Y a) = thV I v w := by
      intro v
      have hv := h v
      rw [Set.image_eq_range] at hv
      exact (Submodule.mem_span_range_iff_exists_fun ℂ).mp hv
    choose c hc using hc
    choose y hy using fun a : t => thI_surj I (fun v => c v a)
    have hw : w = ∑ a : t, y a • Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) (Y a) := by
      apply thV_ext I
      intro v
      rw [thV_sum, ← hc v]
      refine Finset.sum_congr rfl fun a _ => ?_
      rw [thV_smul, thV_ratV]
      exact congrArg₂ (· • ·) (hy a v).symm rfl
    rw [hw]
    exact Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, a.2, rfl⟩)

theorem hPP (v : InfinitePlace I.F) : I.P v * (I.P v)⁻¹ = 1 := Matrix.mul_nonsing_inv _ ((Matrix.isUnit_iff_isUnit_det _).mp (I.P_unit v))

theorem hPP' (v : InfinitePlace I.F) : ((I.P v)⁻¹)ᴴ * (I.P v)ᴴ = 1 := by
  rw [← Matrix.conjTranspose_mul, hPP I v, Matrix.conjTranspose_one]

def Bv (v : InfinitePlace I.F) (a b : Fin I.n → ℂ) : ℂ := ∑ i, ∑ j, star (a i) * I.φ v (I.J i j) * b j

theorem thI_hR (v : InfinitePlace I.F) (x : Fin I.n → I.E) (w : Fin I.n → TI I) :
    thI I v (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.hR (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) I.cm.sig I.J
      (Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) x) w) = Bv I v (phV I v x) (thV I v w) := by
  have hs : ∀ a : I.E, I.φ v (I.cm.sig a) = star (I.φ v a) := fun a => I.cm.cmUnram.2.1 (I.φ v) a
  have h1 : ∀ a : I.E, thI I v (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sigR (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) I.cm.sig
      (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.inclR (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) a)) = star (I.φ v a) := by
    intro a
    have e : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sigR (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) I.cm.sig
        (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.inclR (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) a) =
        Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.inclR (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) (I.cm.sig a) := by
      simp [Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sigR, Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.inclR]
    rw [e, thI_inclR, hs]

  simp only [Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.hR, Formalism.UG.hform, map_sum, map_mul, Formalism.L2.SG.Sub.ratV,
  Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.JR, Matrix.map_apply, h1, thI_inclR, Bv, thV, phV]

theorem phi_hE (v : InfinitePlace I.F) (x y : Fin I.n → I.E) :
    I.φ v (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.hE I.cm.sig I.J x y) = Bv I v (phV I v x) (phV I v y) := by
  have hs : ∀ a : I.E, I.φ v (I.cm.sig a) = star (I.φ v a) := fun a => I.cm.cmUnram.2.1 (I.φ v) a

  simp only [Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.hE, Formalism.UG.hform, map_sum, map_mul, RingHom.coe_coe, hs, Bv, phV]

theorem hJ_conj (v : InfinitePlace I.F) (a b : Fin I.n → ℂ) :
    Formalism.L2.SG.HidaSetting.hJ (I.ε v) ((I.P v)⁻¹ *ᵥ a) ((I.P v)⁻¹ *ᵥ b) = Bv I v a b := by
  have hJ' : I.J.map (I.φ v) = ((I.P v)⁻¹)ᴴ * Formalism.REAL.Jm (I.ε v) * (I.P v)⁻¹ := by
    rw [← I.P_spec v]
    simp only [← mul_assoc]
    rw [hPP' I v, one_mul, mul_assoc, hPP I v, mul_one]
  have key : Bv I v a b = star a ⬝ᵥ (I.J.map (I.φ v) *ᵥ b) := by
    simp [Bv, dotProduct, Matrix.mulVec, Finset.mul_sum, mul_assoc]
  rw [key, hJ', Formalism.L2.SG.HidaSetting.hJ, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, Matrix.star_mulVec]
  conv_rhs => rw [Matrix.dotProduct_mulVec]

end Formalism.L2.SG.Pf.MeasInfW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.ConjSubMulVec =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.NilpotentMeasureRecursion =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.NilpotentMeasureRecursion", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.ConjSubMulVec\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.MeasureIsomorphismAtInfinity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Matrix Formalism.L2.SG.AdBridge Formalism.L2.SG.HidaSetting
open scoped TensorProduct Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.MainNotions.S (AutInst uMat)

namespace Formalism.L2.SG.Pf.MeasInfW

variable (I : AutInst) (hb : Formalism.L2.SG.AdBridge.AdBridgeIso I)

abbrev Mv (g : HI I) (v : InfinitePlace I.F) : Matrix (Fin I.n) (Fin I.n) ℂ := (hmI I g).map (thI I v)

theorem uMat_toInf (s : I.Ginf) (v : InfinitePlace I.F) :
    uMat (s v) = (I.P v)⁻¹ * Mv I (Formalism.L2.SG.Pf.MeasInf.toInfL I hb s) v * I.P v := by
  rw [← congrFun (betaI_toInfL I hb s) v]
  exact betaV_val I v _

theorem lin_eq (g : HI I) (w : Fin I.n → TI I) :
    Formalism.L2.SG.Sub.lin (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) I.cm.sig I.J g w = hmI I g *ᵥ w := rfl

theorem thV_lin_sub (g : HI I) (v : InfinitePlace I.F) (w : Fin I.n → TI I) :
    thV I v (Formalism.L2.SG.Sub.lin (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) I.cm.sig I.J g w - w) =
      (Mv I g v - 1) *ᵥ thV I v w := by
  rw [lin_eq, thV_sub, thV_mulVec, Matrix.sub_mulVec, Matrix.one_mulVec]

theorem rv_eq (v : InfinitePlace I.F) (x : Fin I.n → I.E) : rv I v x = (I.P v)⁻¹ *ᵥ phV I v x := rfl

theorem Pinv_mulVec_P_mulVec (v : InfinitePlace I.F) (y : Fin I.n → ℂ) : (I.P v)⁻¹ *ᵥ (I.P v *ᵥ y) = y := by
  rw [Matrix.mulVec_mulVec,
    Matrix.nonsing_inv_mul _ ((Matrix.isUnit_iff_isUnit_det _).mp (I.P_unit v)), Matrix.one_mulVec]

theorem conj_mem_iff {m : ℕ} (g : HI I) (v : InfinitePlace I.F) (Y : Fin m → Fin I.n → I.E) (t : Set (Fin m))
    (u : Fin I.n → ℂ) :
    ((I.P v)⁻¹ * Mv I g v * I.P v - 1) *ᵥ ((I.P v)⁻¹ *ᵥ u) ∈
        Submodule.span ℂ ((fun a => (I.P v)⁻¹ *ᵥ phV I v (Y a)) '' t) ↔
      (Mv I g v - 1) *ᵥ u ∈ Submodule.span ℂ ((fun a => phV I v (Y a)) '' t) := by
  have hdet := (Matrix.isUnit_iff_isUnit_det _).mp (I.P_unit v)
  have hPi : ∀ y, I.P v *ᵥ ((I.P v)⁻¹ *ᵥ y) = y := fun y => by
    rw [Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ hdet, Matrix.one_mulVec]
  have hL : ((I.P v)⁻¹ * Mv I g v * I.P v - 1) *ᵥ ((I.P v)⁻¹ *ᵥ u) =
      (I.P v)⁻¹ *ᵥ ((Mv I g v - 1) *ᵥ u) := by
    rw [Matrix.sub_mulVec, Matrix.one_mulVec, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hPi,
      Matrix.sub_mulVec, Matrix.one_mulVec, Matrix.mulVec_sub]
  have himg : (fun a => (I.P v)⁻¹ *ᵥ phV I v (Y a)) '' t =
      (Matrix.mulVecLin (I.P v)⁻¹) '' ((fun a => phV I v (Y a)) '' t) := by
    rw [Set.image_image]
    rfl
  rw [hL, himg, Submodule.span_image]
  constructor
  · rintro ⟨y, hy, hxy⟩
    have h2 : y = (Mv I g v - 1) *ᵥ u := by
      simpa only [Matrix.mulVecLin_apply, hPi] using congrArg (fun x => I.P v *ᵥ x) hxy
    rwa [← h2]
  · intro h
    exact ⟨_, h, rfl⟩

theorem fix_iff (g : HI I) (x : Fin I.n → I.E) :
    Formalism.L2.SG.Sub.lin (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) I.cm.sig I.J g
              (Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) x) =
              Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) x ↔
      ∀ v, ((I.P v)⁻¹ * Mv I g v * I.P v) *ᵥ rv I v x = rv I v x := by
  have key : ∀ v, ((I.P v)⁻¹ * Mv I g v * I.P v) *ᵥ rv I v x = rv I v x ↔
      Mv I g v *ᵥ phV I v x = phV I v x := by
    intro v
    have hdet := (Matrix.isUnit_iff_isUnit_det _).mp (I.P_unit v)
    have hPi : ∀ y, I.P v *ᵥ ((I.P v)⁻¹ *ᵥ y) = y := fun y => by
      rw [Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ hdet, Matrix.one_mulVec]
    rw [rv_eq, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hPi]
    constructor
    · intro h
      have h2 := congrArg (fun y => I.P v *ᵥ y) h
      simpa only [hPi] using h2
    · intro h
      rw [h]
  constructor
  · intro h v
    rw [key]
    have h2 := congrArg (thV I v) h
    rw [lin_eq, thV_mulVec, thV_ratV] at h2
    exact h2
  · intro h
    apply thV_ext (I := I)
    intro v
    rw [lin_eq, thV_mulVec, thV_ratV]
    exact (key v).1 (h v)

theorem tup_all {r : ℕ} (e f : Fin r → Fin I.n → I.E) (z : Fin I.n → I.E) (Q : (Fin I.n → I.E) → Prop) :
    (∀ b, Q (Formalism.L2.SG.Sub.tupH (⟨e, f, z⟩ : Formalism.L2.SG.Sub.Frame I.E I.n r) b)) ↔
      ∀ x ∈ Set.range e ∪ Set.range f ∪ {z}, Q x := by
  simp only [Formalism.L2.SG.Sub.tupH, Formalism.L2.SG.Sub.F0]
  constructor
  · intro h x hx
    rcases hx with (⟨a, rfl⟩ | ⟨a, rfl⟩) | hx
    · have h2 := h (Fin.castAdd r (Fin.castSucc a))
      rwa [Fin.append_left, Fin.snoc_castSucc] at h2
    · have h2 := h (Fin.natAdd (r + 1) a)
      rwa [Fin.append_right] at h2
    · rw [Set.mem_singleton_iff] at hx
      subst hx
      have h2 := h (Fin.castAdd r (Fin.last r))
      rwa [Fin.append_left, Fin.snoc_last] at h2
  · intro h b
    induction b using Fin.addCases with
    | left i =>
      rw [Fin.append_left]
      induction i using Fin.lastCases with
      | last =>
        rw [Fin.snoc_last]
        exact h _ (by simp)
      | cast a =>
        rw [Fin.snoc_castSucc]
        exact h _ (by simp)
    | right j =>
      rw [Fin.append_right]
      exact h _ (by simp)

theorem hermitian_measure_recursion : HStep := by
  intro I hb r e f z s
  have hmem : ∀ g : HI I, g ∈ Formalism.L2.SG.Sub.Hsub (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) I.cm.sig I.J
      (⟨e, f, z⟩ : Formalism.L2.SG.Sub.Frame I.E I.n r) ↔
      ∀ b, Formalism.L2.SG.Sub.lin (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) I.cm.sig I.J g (Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F)
          (Formalism.L2.SG.Sub.tupH (⟨e, f, z⟩ : Formalism.L2.SG.Sub.Frame I.E I.n r) b)) =
        Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F)
          (Formalism.L2.SG.Sub.tupH (⟨e, f, z⟩ : Formalism.L2.SG.Sub.Frame I.E I.n r) b) := by
    intro g
    simp only [Formalism.L2.SG.Sub.Hsub, Formalism.L2.SG.Sub.stabT, MulAction.mem_stabilizer_iff]
    exact funext_iff
  refine (hmem _).trans ((tup_all I e f z (fun x => Formalism.L2.SG.Sub.lin (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) I.cm.sig I.J
    (Formalism.L2.SG.Pf.MeasInf.toInfL I hb s) (Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) x) =
      Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) x)).trans ?_)
  simp only [Formalism.L2.SG.HidaSetting.Hset, Set.mem_setOf_eq]
  constructor
  · intro h v x hx
    rw [uMat_toInf I hb s v]
    exact (fix_iff I _ x).1 (h x hx) v
  · intro h x hx
    exact (fix_iff I _ x).2 fun v => by
      rw [← uMat_toInf I hb s v]
      exact h v x hx

theorem span_univ_eq (m : ℕ) : (Set.univ : Set (Fin m)) = {c : Fin m | c.1 < m} :=
  Set.ext fun c => ⟨fun _ => c.2, fun _ => Set.mem_univ _⟩

def Acond {r : ℕ} (e : Fin r → Fin I.n → I.E) (z : Fin I.n → I.E) (M : Matrix (Fin I.n) (Fin I.n) ℂ)
    (v : InfinitePlace I.F) : Prop :=
  (∀ a : Fin r, (M - 1) *ᵥ phV I v (e a) ∈
      Submodule.span ℂ ((fun c => phV I v (e c)) '' {c | c.1 < a.1})) ∧
    (M - 1) *ᵥ phV I v z ∈ Submodule.span ℂ ((fun c => phV I v (e c)) '' {c | c.1 < r}) ∧
    ∀ u, (∀ a, Bv I v (phV I v (e a)) u = 0) →
      (M - 1) *ᵥ u ∈ Submodule.span ℂ ((fun c => phV I v (e c)) '' {c | c.1 < r})

theorem inN_iff {r : ℕ} (g : HI I) (v : InfinitePlace I.F) (e : Fin r → Fin I.n → I.E) (z : Fin I.n → I.E) :
    InN (I.ε v) (fun a => rv I v (e a)) (rv I v z) ((I.P v)⁻¹ * Mv I g v * I.P v) ↔
      Acond I e z (Mv I g v) v := by
  simp only [Formalism.L2.SG.HidaSetting.InN, Formalism.L2.SG.HidaSetting.InS, Formalism.L2.SG.HidaSetting.spanLt, Acond, rv_eq]
  rw [and_assoc]
  refine and_congr (forall_congr' fun a => conj_mem_iff I g v e _ _)
    (and_congr (conj_mem_iff I g v e _ _) ?_)
  constructor
  · intro h u hu
    exact (conj_mem_iff I g v e _ u).1 (h ((I.P v)⁻¹ *ᵥ u) fun a => by rw [hJ_conj]; exact hu a)
  · intro h y hy
    have hy' : y = (I.P v)⁻¹ *ᵥ (I.P v *ᵥ y) := (Pinv_mulVec_P_mulVec I v y).symm
    rw [hy'] at hy ⊢
    exact (conj_mem_iff I g v e _ _).2 (h _ fun a => by rw [← hJ_conj]; exact hy a)

theorem nsub_iff {r : ℕ} (g : HI I) (e f : Fin r → Fin I.n → I.E) (z : Fin I.n → I.E) (T : I.F)
    (hstd : (⟨e, f, z⟩ : Formalism.L2.SG.Sub.Frame I.E I.n r).IsStd I.cm.sig I.J T) :
    g ∈ Formalism.L2.SG.Sub.Nsub (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) I.cm.sig I.J
        (⟨e, f, z⟩ : Formalism.L2.SG.Sub.Frame I.E I.n r) ↔ ∀ v, Acond I e z (Mv I g v) v := by
  have hz : ∀ a, Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.hE I.cm.sig I.J (e a) z = 0 := hstd.2.2.2.1
  constructor
  · intro hg v
    obtain ⟨h1, h2⟩ := hg
    refine ⟨fun a => ?_, ?_, fun u hu => ?_⟩
    · have h3 := (mem_spanR_iff (I := I) e _ _).1 (h1 a) v
      rw [thV_lin_sub, thV_ratV] at h3
      exact h3
    · have hw : Formalism.L2.SG.Sub.InXperp (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) I.cm.sig I.J
          (⟨e, f, z⟩ : Formalism.L2.SG.Sub.Frame I.E I.n r) (Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) z) := by
        intro a
        apply thI_inj (I := I)
        intro v'
        rw [thI_hR, thV_ratV]
        exact (phi_hE (I := I) v' (e a) z).symm.trans (by rw [hz a, map_zero])
      have h3 := (mem_spanR_iff (I := I) e _ _).1 (h2 _ hw) v
      rw [thV_lin_sub, thV_ratV, span_univ_eq] at h3
      exact h3
    · obtain ⟨w, hw⟩ := exists_single (I := I) v u
      have hx : Formalism.L2.SG.Sub.InXperp (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Ainf I.F) I.cm.sig I.J
          (⟨e, f, z⟩ : Formalism.L2.SG.Sub.Frame I.E I.n r) w := by
        intro a
        apply thI_inj (I := I)
        intro v'
        rw [thI_hR, hw v']
        split_ifs with hv
        · subst hv
          exact hu a
        · simp [Bv]
      have h3 := (mem_spanR_iff (I := I) e _ _).1 (h2 _ hx) v
      rw [thV_lin_sub, hw v, if_pos rfl, span_univ_eq] at h3
      exact h3
  · intro h
    refine (show _ ∧ _ from ⟨fun b => ?_, fun w hw => ?_⟩)
    · rw [mem_spanR_iff (I := I)]
      intro v
      rw [thV_lin_sub, thV_ratV]
      exact (h v).1 b
    · rw [mem_spanR_iff (I := I)]
      intro v
      rw [thV_lin_sub, span_univ_eq]
      refine (h v).2.2 _ fun a => ?_
      rw [← thI_hR]
      exact (congrArg (thI I v) (hw a)).trans (map_zero _)

theorem nilpotent_measure_recursion : NStep := by
  intro I hb r e f z T hstd s
  rw [nsub_iff I _ e f z T hstd]
  simp only [Formalism.L2.SG.HidaSetting.Ninf, Set.mem_setOf_eq]
  exact forall_congr' fun v => by rw [uMat_toInf I hb s v, inN_iff]

end Formalism.L2.SG.Pf.MeasInfW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.NilpotentMeasureRecursion =====
