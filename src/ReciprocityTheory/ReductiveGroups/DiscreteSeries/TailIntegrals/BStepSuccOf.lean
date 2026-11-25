module

public import Formalism.HermitianCurvature.WeylElementCommutesLevelOne
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.TailInt
public import Mathlib.RingTheory.Complex
public import Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar
public import Mathlib.RingTheory.Norm.Transitivity
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.InductiveHeisenbergInputs
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.InvSqrtTwoMulSelf
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.HermitianFormLiftVecFirstVector
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.TotallySplit
import Mathlib.Topology.Separation.CompletelyRegular
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.MatExtBvec
import Mathlib.Analysis.Matrix.MeasurableSpace

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.MpUnitary, ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.HermExpand, ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.LevelDeterminantOfTriangularChange, ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.InnerBound, ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.BStepSuccOf

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.MpUnitary =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.MpUnitary", "h": "module\n\npublic import Formalism.HermitianCurvature.WeylElementCommutesLevelOne\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.TailInt\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Complex\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar\npublic import Mathlib.RingTheory.Norm.Transitivity\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Matrix MeasureTheory
open scoped ENNReal ComplexConjugate

namespace ReciprocityTheory.ChartRestriction.DS.Xi
open Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.B2

namespace BL

section cont
variable {p m : ℕ}

theorem cont_ite {β : Type} [TopologicalSpace β] [Zero β] (c : Prop) [Decidable c] {f : Xp p m → β}
    (hf : Continuous f) : Continuous (fun x => if c then f x else 0) := by
  by_cases h : c
  · simp only [h, if_true]; exact hf
  · simp only [h, if_false]; exact continuous_const

theorem cont_Lsq (l : Fin (p + 1)) : Continuous (fun x : Xp p m => Lsq x l) := by
  unfold Lsq
  exact continuous_const.fun_add (continuous_finsetSum _ fun j _ =>
    cont_ite _ (((continuous_apply j).comp continuous_fst).norm.pow 2))

theorem cont_rhoSq (l : Fin (p + 1)) : Continuous (fun x : Xp p m => rhoSq x l) := by
  unfold rhoSq
  refine ((cont_Lsq _).add (continuous_finsetSum _ fun i _ => ?_)).add (continuous_finsetSum _ fun j _ => ?_)
  · exact ((continuous_apply i).comp (continuous_fst.comp (continuous_snd.comp continuous_snd))).norm.pow 2
  · exact cont_ite _ (((continuous_apply j).comp (continuous_fst.comp continuous_snd)).norm.pow 2)

theorem cont_bco (l : Fin (p + 1)) : Continuous (fun x : Xp p m => bco x l) := by
  unfold bco
  refine ((Complex.continuous_ofReal.comp ((continuous_finsetSum _ fun i _ => ?_).fun_neg.div_const 2)).add
    ((Complex.continuous_ofReal.comp (continuous_snd.comp (continuous_snd.comp continuous_snd))).mul
      continuous_const)).sub (continuous_finsetSum _ fun j _ => ?_)
  · exact ((continuous_apply i).comp (continuous_fst.comp (continuous_snd.comp continuous_snd))).norm.pow 2
  · exact cont_ite _ (((continuous_apply j).comp (continuous_fst.comp continuous_snd)).mul
      ((continuous_apply j).comp continuous_fst).star)

theorem cont_de (l : Fin (p + 1)) : Continuous (fun x : Xp p m => de x l) := by
  unfold de
  exact Real.continuous_sqrt.comp (((cont_Lsq l).mul (cont_rhoSq l)).add ((cont_bco l).norm.pow 2))

theorem cont_linF (η η' : Fin p → ℂ) (ζ : Fin m → ℂ) : Continuous (fun x : Xp p m => linF η η' ζ x) := by
  unfold linF
  refine (continuous_finsetSum _ fun j _ => ?_).add (continuous_finsetSum _ fun i _ => ?_)
  · exact (((continuous_apply j).comp continuous_fst).mul continuous_const).add
      (((continuous_apply j).comp (continuous_fst.comp continuous_snd)).mul continuous_const)
  · exact ((continuous_apply i).comp (continuous_fst.comp (continuous_snd.comp continuous_snd))).mul continuous_const

def GI (s : Fin (p + 1) → ℝ) (δ : ℝ) (η η' : Fin p → ℂ) (ζ : Fin m → ℂ) (c₀ : ℝ) (x : Xp p m) : ℝ≥0∞ :=
  (∏ l, ENNReal.ofReal (de x l ^ (-s l))) * ENNReal.ofReal ((1 + |2 * (linF η η' ζ x).im + c₀|) ^ (-δ))

theorem meas_GI (s : Fin (p + 1) → ℝ) (δ : ℝ) (η η' : Fin p → ℂ) (ζ : Fin m → ℂ) (c₀ : ℝ) :
    Measurable (GI s δ η η' ζ c₀) := by
  unfold GI
  refine (Finset.measurable_prod _ fun l _ => ?_).mul ?_
  · exact ENNReal.measurable_ofReal.comp ((cont_de l).measurable.pow_const _)
  · exact ENNReal.measurable_ofReal.comp ((continuous_const.add ((continuous_const.mul
      (Complex.continuous_im.comp (cont_linF η η' ζ))).add continuous_const).abs).measurable.pow_const _)

end cont

theorem mp_unitary {N : ℕ} (U : Matrix (Fin N) (Fin N) ℂ) (hU : Uᴴ * U = 1) :
    MeasurePreserving (fun y : Fin N → ℂ => U *ᵥ y) volume volume := by
  set f : (Fin N → ℂ) →ₗ[ℝ] (Fin N → ℂ) := (Matrix.toLin' U).restrictScalars ℝ with hf
  have hfU : (fun y : Fin N → ℂ => U *ᵥ y) = ⇑f := by funext y; simp [hf, Matrix.toLin'_apply]
  have hn : ((Complex.normSq U.det : ℝ) : ℂ) = 1 := by
    have h := congrArg Matrix.det hU
    rw [Matrix.det_mul, Matrix.det_conjTranspose, Matrix.det_one] at h
    rw [Complex.normSq_eq_conj_mul_self]; exact h
  have hdet : LinearMap.det f = 1 := by
    rw [hf, LinearMap.det_restrictScalars, LinearMap.det_toLin', Algebra.norm_complex_apply]; exact_mod_cast hn
  rw [hfU]
  refine ⟨f.continuous_of_finiteDimensional.measurable, ?_⟩
  rw [Measure.map_linearMap_addHaar_eq_smul_addHaar volume (by rw [hdet]; norm_num), hdet]
  simp

theorem mp_hpar {k n : ℕ} (U : Mat k n) (hU : Uᴴ * U = 1) :
    MeasurePreserving (fun X : HPar k n => (U *ᵥ X.1, X.2)) volume volume :=
  (mp_unitary U hU).prod (MeasurePreserving.id volume)

theorem os_q (hOS : OS) (q p m : ℕ) (hq : q = p + 1) (δ γ : ℝ) (e : Fin (q + 1) → ℝ) (hδ : 0 < δ) (hδ2 : δ ≤ 1 / 2)
    (hγ : 0 < γ) (hγ8 : γ ≤ δ / 8) (he : ∀ l, 0 < e l) (hsum : e 0 + 2 * ∑ i : Fin q, e i.succ < γ / 2) :
    ∃ C : ℝ, ∀ (η η' : Fin q → ℂ) (ζ : Fin m → ℂ) (c₀ : ℝ), η' ⟨0, by omega⟩ ≠ 0 →
      ∫⁻ x, GI (fun l => s0N q m l - e l) δ η η' ζ c₀ x ≤
        ENNReal.ofReal (C * ‖η' ⟨0, by omega⟩‖ ^ (-γ) * (1 + |c₀|) ^ (-δ / 4)) := by
  subst hq
  obtain ⟨C, hC⟩ := hOS p m δ γ e hδ hδ2 hγ hγ8 he hsum
  refine ⟨C, fun η η' ζ c₀ h0 => ?_⟩
  have e0 : (⟨0, by omega⟩ : Fin (p + 1)) = 0 := Fin.ext (by simp)
  rw [e0] at h0 ⊢
  exact hC η η' ζ c₀ h0

end BL

end ReciprocityTheory.ChartRestriction.DS.Xi
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.MpUnitary =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.HermExpand =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.HermExpand", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.InductiveHeisenbergInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.InvSqrtTwoMulSelf\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.MatExtBvec\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Matrix MeasureTheory
open scoped ENNReal ComplexConjugate

namespace ReciprocityTheory.ChartRestriction.DS.Xi
open Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.B2

namespace BL

theorem herm_conj {n : ℕ} (H : Matrix (Fin n) (Fin n) ℂ) (hH : Hᴴ = H) (v w : Fin n → ℂ) :
    star (herm H v w) = herm H w v := by
  have h : ∀ i j, star (H i j) = H j i := fun i j => by
    have := congrFun (congrFun hH j) i
    simpa [Matrix.conjTranspose_apply] using this
  unfold herm
  simp only [dotProduct, mulVec, star_sum, star_mul', star_star, Finset.mul_sum, Pi.star_apply]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [h]; ring

theorem dot_bvec_r {n : ℕ} (i : Fin n) (x : Fin n → ℂ) : x ⬝ᵥ bvec i = x i := by
  simp [bvec]

section ex
variable (k n : ℕ)

def wp (i : Fin (k - 1)) : Fin (2 * n + k + 1) := wI k n ⟨i.val + 1, by omega⟩

def wv (i : Fin (k - 1)) : Fin (2 * n + k + 1) → ℂ := bvec (wp k n i)

theorem wp_val (i : Fin (k - 1)) : (wp k n i).val = n + (i.val + 1) := rfl

private theorem Hpk_apply_wp_eq_ite (i : Fin (k - 1)) (j : Fin (2 * n + k + 1)) :
    Hpk k n (wp k n i) j = if wp k n i = j then 1 else 0 := by
  have hi := i.isLt
  have hv := wp_val k n i
  have hj := j.isLt
  have hij : wp k n i = j ↔ (wp k n i).val = j.val := Fin.ext_iff
  unfold Hpk
  by_cases h : (wp k n i).val = j.val
  · rw [if_pos (hij.2 h), if_neg (by omega), if_neg (by omega), if_pos ⟨by omega, by omega, hij.2 h⟩,
      if_neg (by omega)]
  · rw [if_neg (fun he => h (hij.1 he)), if_neg (by omega), if_neg (by omega), if_neg (by omega)]

theorem hpk_mv_w (i : Fin (k - 1)) (y : Fin (2 * n + k + 1) → ℂ) : (Hpk k n *ᵥ y) (wp k n i) = y (wp k n i) := by
  simp only [mulVec, dotProduct, Hpk_apply_wp_eq_ite, ite_mul, one_mul, zero_mul, Finset.sum_ite_eq,
    Finset.mem_univ, if_true]

theorem hpk_bvec_w (i : Fin (k - 1)) : Hpk k n *ᵥ wv k n i = wv k n i := by
  funext p
  have hc : Hpk k n p (wp k n i) = star (Hpk k n (wp k n i) p) := by
    have := congrFun (congrFun (hpk_conjT k n) p) (wp k n i)
    rw [Matrix.conjTranspose_apply] at this
    exact this.symm
  simp only [wv, bvec, mulVec, dotProduct, Pi.single_apply, mul_ite, mul_one, mul_zero,
    Finset.sum_ite_eq', Finset.mem_univ, if_true]
  rw [hc, Hpk_apply_wp_eq_ite]
  by_cases h : wp k n i = p
  · subst h; simp
  · rw [if_neg h, if_neg (fun he => h he.symm), star_zero]

theorem phi_w (a : Fin (n + 1)) (i : Fin (k - 1)) : phiV k n a (wp k n i) = 0 := by
  have hi := i.isLt
  have hv := wp_val k n i
  have ha := a.isLt
  unfold phiV
  split_ifs with h
  · simp only [bvec]
    rw [Pi.single_apply, if_neg]
    intro he
    have := congrArg Fin.val he
    simp only [esI] at this
    omega
  · simp only [epsV, bvec, Pi.smul_apply, Pi.add_apply, Pi.single_apply]
    rw [if_neg, if_neg]
    · simp
    · intro he
      have := congrArg Fin.val he
      simp [wI, Fin.val_last] at this <;> omega
    · intro he
      have := congrArg Fin.val he
      simp [wI] at this <;> omega

theorem phi'_w (a : Fin (n + 1)) (i : Fin (k - 1)) : phiV' k n a (wp k n i) = 0 := by
  show (Hpk k n *ᵥ phiV k n a) (wp k n i) = 0
  rw [hpk_mv_w, phi_w]

theorem herm_w_l (v : Fin (2 * n + k + 1) → ℂ) (i : Fin (k - 1)) : herm (Hpk k n) (wv k n i) v = star (v (wp k n i)) := by
  unfold herm
  rw [hpk_bvec_w]
  simp only [wv]
  rw [dot_bvec_r]
  rfl

theorem herm_w_r (v : Fin (2 * n + k + 1) → ℂ) (i : Fin (k - 1)) : herm (Hpk k n) v (wv k n i) = v (wp k n i) := by
  unfold herm
  have hs : star (wv k n i) = Pi.single (wp k n i) (1 : ℂ) := by
    ext j
    by_cases h : j = wp k n i <;> simp [wv, bvec, h]
  rw [hs, single_dotProduct, one_mul, hpk_mv_w]

def Phv : Fin (n + 1) ⊕ (Fin (n + 1) ⊕ Fin (k - 1)) → Fin (2 * n + k + 1) → ℂ :=
  Sum.elim (phiV' k n) (Sum.elim (phiV k n) (wv k n))

def Psv : Fin (n + 1) ⊕ (Fin (n + 1) ⊕ Fin (k - 1)) → Fin (2 * n + k + 1) → ℂ :=
  Sum.elim (phiV k n) (Sum.elim (phiV' k n) (wv k n))

private theorem herm_Hpk_mulVec_Hpk_mulVec (x y : Fin (2 * n + k + 1) → ℂ) :
    herm (Hpk k n) (Hpk k n *ᵥ x) (Hpk k n *ᵥ y) = herm (Hpk k n) x y := by
  unfold herm
  rw [mulVec_mulVec, hpk_mul, one_mulVec, Matrix.star_mulVec, hpk_conjT, dotProduct_mulVec]

theorem pair_all (hk : 1 ≤ k) (c d : Fin (n + 1) ⊕ (Fin (n + 1) ⊕ Fin (k - 1))) :
    herm (Hpk k n) (Phv k n d) (Psv k n c) = if c = d then 1 else 0 := by
  have hφ' : ∀ a, phiV' k n a = Hpk k n *ᵥ phiV k n a := fun _ => rfl
  rcases c with b | b | i <;> rcases d with a | a | j <;>
    simp only [Phv, Psv, Sum.elim_inl, Sum.elim_inr]
  · rw [← herm_conj (Hpk k n) (hpk_conjT k n) (phiV k n b) (phiV' k n a), phi_pair k n hk]
    by_cases h : b = a
    · subst h; simp
    · simp [h]
  · rw [phi_iso k n hk]; simp
  · rw [herm_w_l, phi_w]; simp
  · rw [hφ', hφ', herm_Hpk_mulVec_Hpk_mulVec, phi_iso k n hk]; simp
  · rw [phi_pair k n hk]
    by_cases h : a = b
    · subst h; simp
    · simp [h, Ne.symm h]
  · rw [herm_w_l, phi'_w]; simp
  · rw [herm_w_r, phi'_w]; simp
  · rw [herm_w_r, phi_w]; simp
  · rw [herm_w_l]
    simp only [wv, bvec, Pi.single_apply]
    by_cases h : i = j
    · subst h; simp
    · have hne : wp k n j ≠ wp k n i := by
        intro he
        apply h
        ext
        have := congrArg Fin.val he
        rw [wp_val, wp_val] at this
        omega
      simp [hne, h]

private theorem herm_sum_smul_left_tail_integrals {ι : Type*} [Fintype ι] (g : ι → ℂ) (v : ι → Fin (2 * n + k + 1) → ℂ)
    (w : Fin (2 * n + k + 1) → ℂ) :
    herm (Hpk k n) (∑ c, g c • v c) w = ∑ c, g c * herm (Hpk k n) (v c) w := by
  unfold herm
  simp only [dotProduct, mulVec, Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
  conv_rhs => rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun c _ => Finset.sum_congr rfl fun j _ => ?_
  ring

theorem expand (hk : 1 ≤ k) (y : Fin (2 * n + k + 1) → ℂ) :
    y = ∑ c, herm (Hpk k n) y (Psv k n c) • Phv k n c := by
  have hcoef : ∀ (g : Fin (n + 1) ⊕ (Fin (n + 1) ⊕ Fin (k - 1)) → ℂ) c,
      herm (Hpk k n) (∑ d, g d • Phv k n d) (Psv k n c) = g c := by
    intro g c
    rw [herm_sum_smul_left_tail_integrals]
    simp [pair_all k n hk]
  have hli : LinearIndependent ℂ (Phv k n) := by
    rw [Fintype.linearIndependent_iff]
    intro g hg c
    have := hcoef g c
    rw [hg] at this
    simpa [herm] using this.symm
  have hcard : Fintype.card (Fin (n + 1) ⊕ (Fin (n + 1) ⊕ Fin (k - 1))) =
      Module.finrank ℂ (Fin (2 * n + k + 1) → ℂ) := by
    simp only [Fintype.card_sum, Fintype.card_fin, Module.finrank_fin_fun]
    omega
  let b := basisOfLinearIndependentOfCardEqFinrank hli hcard
  have hb : ∀ c, b c = Phv k n c := fun c => by simp [b]
  have hy := b.sum_repr y
  simp only [hb] at hy
  conv_lhs => rw [← hy]
  refine Finset.sum_congr rfl fun c _ => ?_
  have := hcoef (fun d => b.repr y d) c
  rw [hy] at this
  rw [this]

theorem herm_expand (hk : 1 ≤ k) (y w : Fin (2 * n + k + 1) → ℂ) :
    herm (Hpk k n) y w = ∑ j, (herm (Hpk k n) y (phiV k n j) * herm (Hpk k n) (phiV' k n j) w +
      herm (Hpk k n) y (phiV' k n j) * herm (Hpk k n) (phiV k n j) w) +
      ∑ i, y (wp k n i) * herm (Hpk k n) (wv k n i) w := by
  conv_lhs => rw [expand k n hk y]
  rw [herm_sum_smul_left_tail_integrals, Fintype.sum_sum_type, Fintype.sum_sum_type]
  simp only [Psv, Phv, Sum.elim_inl, Sum.elim_inr, herm_w_r]
  rw [Finset.sum_add_distrib]
  exact (add_assoc _ _ _).symm

theorem herm_linF (hk : 1 ≤ k) (y w : Fin (2 * n + k + 1) → ℂ) (s : ℝ) :
    herm (Hpk k n) y w = linF (fun j => herm (Hpk k n) (phiV' k n (Fin.cast (by omega) j)) w)
      (fun j => herm (Hpk k n) (phiV k n (Fin.cast (by omega) j)) w) (fun i => herm (Hpk k n) (wv k n i) w)
      (hcoord k n (y, s)) := by
  rw [herm_expand k n hk y w]
  simp only [linF, hcoord]
  congr 1
  exact ((finCongr (by omega : 1 + n = n + 1)).sum_comp (fun j =>
    herm (Hpk k n) y (phiV k n j) * herm (Hpk k n) (phiV' k n j) w +
      herm (Hpk k n) y (phiV' k n j) * herm (Hpk k n) (phiV k n j) w)).symm

end ex

end BL

end ReciprocityTheory.ChartRestriction.DS.Xi
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.HermExpand =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.LevelDeterminantOfTriangularChange =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.LevelDeterminantOfTriangularChange", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.InductiveHeisenbergInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.InvSqrtTwoMulSelf\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.MatExtBvec\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Matrix MeasureTheory
open scoped ENNReal ComplexConjugate

namespace ReciprocityTheory.ChartRestriction.DS.Xi
open Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.B2

namespace BL

theorem Iic_zero (n : ℕ) : Finset.Iic (0 : Fin (n + 1)) = {0} := by
  ext a
  simp

section Lv
variable {k r' : ℕ}

def su (a : Fin (r' + 1)) : Fin (1 + r' + 1) := ⟨a.val + 1, by omega⟩

theorem su_val (a : Fin (r' + 1)) : (su a).val = a.val + 1 := rfl

theorem exists_su (a : Fin (1 + r' + 1)) (ha : a.val ≠ 0) : ∃ b : Fin (r' + 1), a = su b := by
  refine ⟨⟨a.val - 1, by have := a.2; omega⟩, Fin.ext ?_⟩
  show a.val = (a.val - 1) + 1
  omega

theorem prod_su {M : Type} [CommMonoid M] (f : Fin (1 + r' + 1) → M) :
    ∏ l, f l = f 0 * ∏ a : Fin (r' + 1), f (su a) := by
  rw [Fin.prod_univ_succ]
  congr 1
  exact (Fintype.prod_equiv (finCongr (by omega : r' + 1 = 1 + r')) (fun a => f (su a))
    (fun b => f b.succ) fun a => congrArg f (Fin.ext (by simp [su]))).symm

theorem sum_su {M : Type} [AddCommMonoid M] (f : Fin (1 + r' + 1) → M) :
    ∑ l, f l = f 0 + ∑ a : Fin (r' + 1), f (su a) := by
  rw [Fin.sum_univ_succ]
  congr 1
  exact (Fintype.sum_equiv (finCongr (by omega : r' + 1 = 1 + r')) (fun a => f (su a))
    (fun b => f b.succ) fun a => congrArg f (Fin.ext (by simp [su]))).symm

theorem lv_add (v w : Fin (2 * r' + k + 1) → ℂ) : liftVec k 1 r' (v + w) = liftVec k 1 r' v + liftVec k 1 r' w := by
  ext p
  simp only [liftVec, Pi.add_apply]
  split_ifs <;> simp

theorem lv_smul (c : ℂ) (v : Fin (2 * r' + k + 1) → ℂ) : liftVec k 1 r' (c • v) = c • liftVec k 1 r' v := by
  ext p
  simp only [liftVec, Pi.smul_apply, smul_eq_mul]
  split_ifs <;> simp

theorem lv_sum {ι : Type} (s : Finset ι) (f : ι → Fin (2 * r' + k + 1) → ℂ) :
    liftVec k 1 r' (∑ i ∈ s, f i) = ∑ i ∈ s, liftVec k 1 r' (f i) := by
  have e : liftVec k 1 r' (∑ i ∈ s, f i) =
      (AddMonoidHom.mk' (liftVec k 1 r') fun v w => lv_add v w) (∑ i ∈ s, f i) := rfl

  rw [e, map_sum]
  rfl

theorem phi_lift (a : Fin (r' + 1)) : liftVec k 1 r' (phiV k r' a) = phiV k (1 + r') (su a) := by
  unfold phiV
  by_cases h : a.val < r'
  · have h' : (su a).val < 1 + r' := by rw [su_val]; omega
    rw [dite_eq_left h, dite_eq_left h', ← bvec_lv]
    congr 1
    ext
    simp only [sh, esI, su_val, Fin.val_mk]
    omega
  · have h' : ¬ (su a).val < 1 + r' := by rw [su_val]; omega
    rw [dite_eq_right h, dite_eq_right h']
    unfold epsV
    have e0 : sh (wI k r' 0) = wI k (1 + r') 0 := by
      ext
      simp only [sh, wI, Fin.val_mk]
      omega
    have e1 : sh (wI k r' (Fin.last k)) = wI k (1 + r') (Fin.last k) := by
      ext
      simp only [sh, wI, Fin.val_mk]
      omega
    rw [lv_smul, lv_add, ← bvec_lv, ← bvec_lv, e0, e1]

theorem besselPhi_eq_reindexConj_rootCoords : phiV k (1 + r') 0 = bvec ⟨2 * (1 + r') + k, by omega⟩ := by
  unfold phiV
  rw [dite_eq_left (by simp only [Fin.val_zero]; omega)]
  congr 1

theorem levelEmbedding_fixes_firstVector (g : Mat k r') : ιLev k 1 r' g *ᵥ phiV k (1 + r') 0 = phiV k (1 + r') 0 := by
  rw [besselPhi_eq_reindexConj_rootCoords]
  exact io_bvec_out g _ (Or.inr rfl)

theorem io_phi_su (g : Mat k r') (a : Fin (r' + 1)) :
    ιLev k 1 r' g *ᵥ phiV k (1 + r') (su a) = liftVec k 1 r' (g *ᵥ phiV k r' a) := by
  rw [← phi_lift, io_lv]

def tt (τ : Matrix (Fin (r' + 1)) (Fin (r' + 1)) ℂ) : Matrix (Fin (1 + r' + 1)) (Fin (1 + r' + 1)) ℂ := fun i j =>
  if i.val = 0 then (if j.val = 0 then 1 else 0)
  else if hj : j.val = 0 then 0 else τ ⟨i.val - 1, by omega⟩ ⟨j.val - 1, by omega⟩

variable (τ : Matrix (Fin (r' + 1)) (Fin (r' + 1)) ℂ)

theorem tt_su (a b : Fin (r' + 1)) : tt τ (su b) (su a) = τ b a := by
  unfold tt
  rw [if_neg (by simp [su]), dite_eq_right (by simp [su])]
  congr 1

theorem tt_00 : tt τ 0 0 = 1 := by
  simp [tt]

theorem triangularCoeff_firstColumn_zero (b : Fin (1 + r' + 1)) (hb : b.val ≠ 0) : tt τ b 0 = 0 := by
  simp [tt, hb]

theorem tt_0su (a : Fin (r' + 1)) : tt τ 0 (su a) = 0 := by
  simp [tt, su]

theorem tt_tri (hτ : τ.BlockTriangular id) : (tt τ).BlockTriangular id := by
  intro i j hij
  simp only [id] at hij
  rw [Fin.lt_iff_val_lt_val] at hij
  unfold tt
  by_cases hi : i.val = 0
  · omega
  · rw [if_neg hi]
    by_cases hj : j.val = 0
    · rw [dite_eq_left hj]
    · rw [dite_eq_right hj]
      apply hτ
      simp only [id, Fin.mk_lt_mk]
      omega

theorem tt_rep (m κ : Mat k r') (hrep : ∀ a, m *ᵥ phiV k r' a = ∑ b, τ b a • (κ *ᵥ phiV k r' b))
    (a : Fin (1 + r' + 1)) :
    ιLev k 1 r' m *ᵥ phiV k (1 + r') a = ∑ b, tt τ b a • (ιLev k 1 r' κ *ᵥ phiV k (1 + r') b) := by
  by_cases ha : a.val = 0
  · have ha0 : a = 0 := Fin.ext ha
    subst ha0
    rw [levelEmbedding_fixes_firstVector, sum_su, tt_00, levelEmbedding_fixes_firstVector, one_smul]
    rw [Finset.sum_eq_zero fun b _ => by rw [triangularCoeff_firstColumn_zero τ (su b) (by simp [su]), zero_smul], add_zero]
  · obtain ⟨a', rfl⟩ := exists_su a ha
    rw [io_phi_su, hrep a', lv_sum, sum_su, tt_0su, zero_smul, zero_add]
    refine Finset.sum_congr rfl fun b _ => ?_
    rw [tt_su, io_phi_su, lv_smul]

def suE : Fin (r' + 1) ↪ Fin (1 + r' + 1) :=
  ⟨su, fun a b h => Fin.ext (by have := congrArg Fin.val h; simp only [su_val] at this; omega)⟩

theorem Iic_su (a : Fin (r' + 1)) : Finset.Iic (su a) = insert 0 ((Finset.Iic a).map suE) := by
  ext l
  simp only [Finset.mem_Iic, Finset.mem_insert, Finset.mem_map]
  constructor
  · intro hl
    by_cases h0 : l.val = 0
    · exact Or.inl (Fin.ext h0)
    · obtain ⟨b, rfl⟩ := exists_su l h0
      refine Or.inr ⟨b, ?_, rfl⟩
      rw [Fin.le_iff_val_le_val] at hl ⊢
      rw [su_val, su_val] at hl
      omega
  · rintro (rfl | ⟨b, hb, rfl⟩)
    · exact Fin.zero_le _
    · show su b ≤ su a
      rw [Fin.le_iff_val_le_val] at hb ⊢
      rw [su_val, su_val]
      omega

theorem tt_prod0 : ∏ j ∈ Finset.Iic (0 : Fin (1 + r' + 1)), ‖tt τ j j‖ ^ 2 = 1 := by
  rw [Iic_zero, Finset.prod_singleton, tt_00]
  simp

theorem tt_prodS (a : Fin (r' + 1)) :
    ∏ j ∈ Finset.Iic (su a), ‖tt τ j j‖ ^ 2 = ∏ j ∈ Finset.Iic a, ‖τ j j‖ ^ 2 := by
  rw [Iic_su, Finset.prod_insert, Finset.prod_map, tt_00]
  · rw [norm_one, one_pow, one_mul]
    refine Finset.prod_congr rfl fun x _ => ?_
    show ‖tt τ (su x) (su x)‖ ^ 2 = _
    rw [tt_su]
  · simp only [Finset.mem_map, not_exists, not_and]
    intro b _ h
    have h' := congrArg Fin.val h
    change (su b).val = (0 : Fin (1 + r' + 1)).val at h'
    rw [su_val] at h'
    simp at h'

theorem ga_lev (x : Mat k (1 + r')) (m κ : Mat k r') (hτ : τ.BlockTriangular id)
    (hrep : ∀ a, m *ᵥ phiV k r' a = ∑ b, τ b a • (κ *ᵥ phiV k r' b)) (l : Fin (1 + r' + 1)) :
    Ga k (1 + r') l (fun a => (x * ιLev k 1 r' m) *ᵥ phiV k (1 + r') a) =
      (∏ j ∈ Finset.Iic l, ‖tt τ j j‖ ^ 2) * Ga k (1 + r') l (fun a => (x * ιLev k 1 r' κ) *ᵥ phiV k (1 + r') a) := by
  have e : (fun a => (x * ιLev k 1 r' m) *ᵥ phiV k (1 + r') a) =
      fun a => ∑ b, tt τ b a • ((x * ιLev k 1 r' κ) *ᵥ phiV k (1 + r') b) := by
    funext a
    rw [← Matrix.mulVec_mulVec, tt_rep τ m κ hrep a, Matrix.mulVec_sum]
    refine Finset.sum_congr rfl fun b _ => ?_
    rw [Matrix.mulVec_smul, Matrix.mulVec_mulVec]
  rw [e, ga_tri k (1 + r') _ (tt τ) (tt_tri τ hτ) l]

theorem levelDeterminant_of_triangular_change (x : Mat k (1 + r')) (m κ : Mat k r') (hτ : τ.BlockTriangular id)
    (hrep : ∀ a, m *ᵥ phiV k r' a = ∑ b, τ b a • (κ *ᵥ phiV k r' b)) :
    Del k (1 + r') 0 (x * ιLev k 1 r' m) = Del k (1 + r') 0 (x * ιLev k 1 r' κ) := by
  unfold Del
  rw [ga_lev τ x m κ hτ hrep 0, tt_prod0, one_mul]

theorem del_levS (x : Mat k (1 + r')) (m κ : Mat k r') (hτ : τ.BlockTriangular id)
    (hrep : ∀ a, m *ᵥ phiV k r' a = ∑ b, τ b a • (κ *ᵥ phiV k r' b))
    (hprod : ∀ l, ∏ j ∈ Finset.Iic l, ‖τ j j‖ ^ 2 = Ga k r' l (fun a => m *ᵥ phiV k r' a)) (a : Fin (r' + 1)) :
    Del k (1 + r') (su a) (x * ιLev k 1 r' m) = Del k r' a m * Del k (1 + r') (su a) (x * ιLev k 1 r' κ) := by
  unfold Del
  rw [ga_lev τ x m κ hτ hrep (su a), tt_prodS, hprod a]
  have h0 : 0 ≤ Ga k r' a (fun b => m *ᵥ phiV k r' b) := by
    rw [← hprod a]
    exact Finset.prod_nonneg fun j _ => by positivity
  exact Real.sqrt_mul h0 _

theorem del_conj (hHC : HeisConjLev) (κ : Mat k r') (hκG : κ ∈ GV k r') (hκU : κᴴ * κ = 1) (X : HPar k r')
    (l : Fin (1 + r' + 1)) :
    Del k (1 + r') l (heis0 k r' X * ιLev k 1 r' κ) = Del k (1 + r') l (heis0 k r' (κᴴ *ᵥ X.1, X.2)) := by
  have hκU' : κ * κᴴ = 1 := by
    rw [← Matrix.inv_eq_left_inv hκU]
    exact Matrix.mul_nonsing_inv κ (Matrix.isUnit_det_of_left_inverse hκU)
  have hG' : κᴴ ∈ GV k r' := by
    have hκ : κᴴ * Hpk k r' * κ = Hpk k r' := hκG
    show κᴴᴴ * Hpk k r' * κᴴ = Hpk k r'
    rw [Matrix.conjTranspose_conjTranspose]
    calc κ * Hpk k r' * κᴴ = κ * (κᴴ * Hpk k r' * κ) * κᴴ := by rw [hκ]
      _ = (κ * κᴴ) * Hpk k r' * (κ * κᴴ) := by simp only [mul_assoc]
      _ = Hpk k r' := by rw [hκU', one_mul, mul_one]
  have hinv : (ιLev k 1 r' κᴴ)⁻¹ = ιLev k 1 r' κ :=
    Matrix.inv_eq_right_inv (by rw [← io_mul, hκU, io_one])
  have hconj := hHC k r' κᴴ hG' X
  rw [hinv] at hconj
  rw [← hconj]
  have hU : (ιLev k 1 r' κᴴ)ᴴ * ιLev k 1 r' κᴴ = 1 := by
    rw [← io_conjT, Matrix.conjTranspose_conjTranspose, ← io_mul, hκU', io_one]
  unfold Del
  rw [mul_assoc]
  have e : (fun a => (ιLev k 1 r' κᴴ * (heis0 k r' X * ιLev k 1 r' κ)) *ᵥ phiV k (1 + r') a) =
      fun a => ιLev k 1 r' κᴴ *ᵥ ((heis0 k r' X * ιLev k 1 r' κ) *ᵥ phiV k (1 + r') a) := by
    funext a
    rw [Matrix.mulVec_mulVec]
  rw [e, ga_unit k (1 + r') _ hU l]

theorem rep0 (m κ : Mat k r') (hτ : τ.BlockTriangular id)
    (hrep : ∀ a, m *ᵥ phiV k r' a = ∑ b, τ b a • (κ *ᵥ phiV k r' b)) :
    m *ᵥ phiV k r' 0 = τ 0 0 • (κ *ᵥ phiV k r' 0) := by
  rw [hrep 0, Finset.sum_eq_single 0]
  · intro b _ hb
    rw [hτ (show id (0 : Fin (r' + 1)) < id b from lt_of_le_of_ne (Fin.zero_le _) (Ne.symm hb)),
      zero_smul]
  · intro h
    exact absurd (Finset.mem_univ 0) h

theorem lev_data (hIW : IW) (hHC : HeisConjLev) (hk : 1 ≤ k) (m : Mat k r') (hm : m ∈ UH (Hpk k r')) :
    ∃ κ : Mat k r', κ ∈ GV k r' ∧ κᴴ * κ = 1 ∧ ∃ t : ℂ, m *ᵥ phiV k r' 0 = t • (κ *ᵥ phiV k r' 0) ∧
      ‖t‖ = Del k r' 0 m ∧ ∀ X : HPar k r',
        Del k (1 + r') 0 (heis0 k r' X * ιLev k 1 r' m) = Del k (1 + r') 0 (heis0 k r' (κᴴ *ᵥ X.1, X.2)) ∧
        ∀ a : Fin (r' + 1), Del k (1 + r') (su a) (heis0 k r' X * ιLev k 1 r' m) =
          Del k r' a m * Del k (1 + r') (su a) (heis0 k r' (κᴴ *ᵥ X.1, X.2)) := by
  obtain ⟨κ, hκG, hκU, τ, hτ, hrep, hprod⟩ := iw_apply (k := k) (n := r') hIW hk m hm
  refine ⟨κ, hκG, hκU, τ 0 0, rep0 τ m κ hτ hrep, ?_, fun X => ⟨?_, fun a => ?_⟩⟩
  · unfold Del
    rw [← hprod 0, Iic_zero, Finset.prod_singleton, Real.sqrt_sq (norm_nonneg _)]
  · rw [levelDeterminant_of_triangular_change τ _ m κ hτ hrep, del_conj hHC κ hκG hκU X 0]
  · rw [del_levS τ _ m κ hτ hrep hprod a, del_conj hHC κ hκG hκU X (su a)]

end Lv

end BL

end ReciprocityTheory.ChartRestriction.DS.Xi
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.LevelDeterminantOfTriangularChange =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.InnerBound =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.InnerBound", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.MpUnitary\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.HermExpand\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.LevelDeterminantOfTriangularChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.HermitianFormLiftVecFirstVector\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.InvSqrtTwoMulSelf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Matrix MeasureTheory
open scoped ENNReal ComplexConjugate

namespace ReciprocityTheory.ChartRestriction.DS.Xi
open Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.B2

namespace BL

theorem cz0 {k : ℕ} (hk : 1 ≤ k) (z : Fin (2 * 0 + k + 1) → ℂ) (hT : 0 < Tz k 0 z) :
    herm (Hpk k 0) (epsV k 0) z ≠ 0 := by
  intro h
  have sgl : ∀ p : Fin (2 * 0 + k + 1), sg k 0 p.val = p.val := fun p => by
    have := p.2; unfold sg; rw [if_neg (by omega)]
  have hmv : ∀ (v : Fin (2 * 0 + k + 1) → ℂ) (p : Fin (2 * 0 + k + 1)),
      (Hpk k 0 *ᵥ v) p = (if p.val = 0 + k then -1 else 1) * v p := by
    intro v p; simp only [mulVec, dotProduct]
    rw [Finset.sum_eq_single p]
    · rw [hpk_apply, sgl, if_pos rfl]
    · intro q _ hq; rw [hpk_apply, sgl, if_neg (fun e => hq (Fin.ext e)), zero_mul]
    · intro hp; exact absurd (Finset.mem_univ _) hp
  have hw0 : (wI k 0 0).val = 0 := by simp [wI]
  have hwk : (wI k 0 (Fin.last k)).val = k := by simp [wI]
  have e1 : Hpk k 0 *ᵥ bvec (wI k 0 0) = bvec (wI k 0 0) := by
    funext p; rw [hmv]; split_ifs with hp
    · rw [bvec_ne _ _ (by omega), mul_zero]
    · rw [one_mul]
  have e2 : Hpk k 0 *ᵥ bvec (wI k 0 (Fin.last k)) = -bvec (wI k 0 (Fin.last k)) := by
    funext p; rw [hmv, Pi.neg_apply]; split_ifs with hp
    · rw [neg_one_mul]
    · rw [bvec_ne _ _ (by omega), mul_zero, neg_zero]
  have hh : herm (Hpk k 0) (epsV k 0) z =
      ((Real.sqrt 2)⁻¹ : ℂ) * (star (z (wI k 0 0)) - star (z (wI k 0 (Fin.last k)))) := by
    unfold epsV herm
    rw [mulVec_smul, mulVec_add, e1, e2, dotProduct_smul, dotProduct_add, dotProduct_neg, dot_bvec_r, dot_bvec_r,
      Pi.star_apply, Pi.star_apply, smul_eq_mul, sub_eq_add_neg]
  have hc : ((Real.sqrt 2)⁻¹ : ℂ) ≠ 0 := by
    have : ((Real.sqrt 2)⁻¹ : ℂ) * ((Real.sqrt 2)⁻¹ : ℂ) ≠ 0 := by rw [sq2_mul_sq2_eq_half]; norm_num
    exact left_ne_zero_of_mul this
  rw [hh] at h
  have hzz : z (wI k 0 0) = z (wI k 0 (Fin.last k)) :=
    star_injective (sub_eq_zero.1 ((mul_eq_zero.1 h).resolve_left hc))
  have hre : (herm (Hpk k 0) z z).re = ∑ p, (if p.val = 0 + k then (-1 : ℝ) else 1) * Complex.normSq (z p) := by
    unfold herm
    simp only [dotProduct, hmv, Complex.re_sum]
    refine Finset.sum_congr rfl fun p _ => ?_
    rw [Pi.star_apply]
    split_ifs <;> simp [Complex.mul_re, Complex.normSq_apply]
  have hne : wI k 0 0 ≠ wI k 0 (Fin.last k) := fun e => by have := congrArg Fin.val e; omega
  have key : 0 ≤ ∑ p, (if p.val = 0 + k then (-1 : ℝ) else 1) * Complex.normSq (z p) := by
    rw [← Finset.add_sum_erase _ _ (Finset.mem_univ (wI k 0 (Fin.last k))),
      ← Finset.add_sum_erase _ _ (Finset.mem_erase.2 ⟨hne, Finset.mem_univ (wI k 0 0)⟩)]
    rw [if_pos (show (wI k 0 (Fin.last k)).val = 0 + k by omega), if_neg (show ¬ (wI k 0 0).val = 0 + k by omega),
      hzz]
    have hrest : 0 ≤ ∑ p ∈ (Finset.univ.erase (wI k 0 (Fin.last k))).erase (wI k 0 0),
        (if p.val = 0 + k then (-1 : ℝ) else 1) * Complex.normSq (z p) := by
      refine Finset.sum_nonneg fun p hp => ?_
      have hpk : p ≠ wI k 0 (Fin.last k) := (Finset.mem_erase.1 (Finset.mem_erase.1 hp).2).1
      rw [if_neg (show ¬ (p.val = 0 + k) from fun e => hpk (Fin.ext (by omega)))]
      exact mul_nonneg zero_le_one (Complex.normSq_nonneg _)
    linarith
  unfold Tz at hT
  rw [hre] at hT
  linarith

theorem cz_ne {k n : ℕ} (hk : 1 ≤ k) (z1 : Fin (2 * n + k + 1) → ℂ) (hT : 0 < Tz k n z1) :
    herm (Hpk k n) (phiV k n ⟨0, by omega⟩) (fvec k n z1 ⟨0, by omega⟩) ≠ 0 := by
  by_cases hn : 0 < n
  · unfold phiV fvec
    rw [dite_eq_left hn, dite_eq_left hn, herm_bb, hpk_apply]
    rw [if_pos (show (esI k n ⟨0, hn⟩).val = sg k n (eI k n ⟨0, hn⟩).val by
        show 2 * n + k - 0 = sg k n 0; unfold sg; rw [if_pos (Or.inl hn)]),
      if_neg (show ¬ (eI k n ⟨0, hn⟩).val = n + k by show ¬ 0 = n + k; omega)]
    norm_num
  · have hn0 : n = 0 := by omega
    subst hn0
    unfold phiV fvec
    rw [dite_eq_right (lt_irrefl 0), dite_eq_right (lt_irrefl 0)]
    exact cz0 hk z1 hT

def etaF (k n : ℕ) (w : Fin (2 * n + k + 1) → ℂ) : Fin (1 + n) → ℂ :=
  fun j => herm (Hpk k n) (phiV' k n (Fin.cast (by omega) j)) w

def eta'F (k n : ℕ) (w : Fin (2 * n + k + 1) → ℂ) : Fin (1 + n) → ℂ :=
  fun j => herm (Hpk k n) (phiV k n (Fin.cast (by omega) j)) w

def zetaF (k n : ℕ) (w : Fin (2 * n + k + 1) → ℂ) : Fin (k - 1) → ℂ := fun i => herm (Hpk k n) (wv k n i) w

theorem herm_linF' {k n : ℕ} (hk : 1 ≤ k) (y w : Fin (2 * n + k + 1) → ℂ) (s : ℝ) :
    herm (Hpk k n) y w = linF (etaF k n w) (eta'F k n w) (zetaF k n w) (hcoord k n (y, s)) :=
  herm_linF k n hk y w s

section inner
variable {k r' : ℕ}

theorem inner_bound (hIW : IW) (hF : FormulaF) (hHC : HeisConjLev) (hHA : HeisAct) (hk : 1 ≤ k)
    (s : Fin (1 + r' + 1) → ℝ) (δ γ C : ℝ) (z1 : Fin (2 * r' + k + 1) → ℂ)
    (hC : ∀ (η η' : Fin (1 + r') → ℂ) (ζ : Fin (k - 1) → ℂ) (c₀ : ℝ), η' ⟨0, by omega⟩ ≠ 0 →
      ∫⁻ x, GI s δ η η' ζ c₀ x ≤ ENNReal.ofReal (C * ‖η' ⟨0, by omega⟩‖ ^ (-γ) * (1 + |c₀|) ^ (-δ / 4)))
    (hcz : herm (Hpk k r') (phiV k r' ⟨0, by omega⟩) (fvec k r' z1 ⟨0, by omega⟩) ≠ 0)
    (m : Mat k r') (hm : m ∈ UH (Hpk k r')) :
    ∫⁻ X : HPar k r', ENNReal.ofReal (xiR k (1 + r') s (heis0 k r' X * ιLev k 1 r' m)) *
        ENNReal.ofReal ((1 + |lam k (1 + r') (liftVec k 1 r' z1) (heis0 k r' X * ιLev k 1 r' m)|) ^ (-δ)) ≤
      ENNReal.ofReal (C * ‖herm (Hpk k r') (phiV k r' ⟨0, by omega⟩) (fvec k r' z1 ⟨0, by omega⟩)‖ ^ (-γ)) *
        (ENNReal.ofReal (xiR k r' (fun a => s (su a) - if a = 0 then γ else 0) m) *
          ENNReal.ofReal ((1 + |lam k r' z1 m|) ^ (-(δ / 4)))) := by
  obtain ⟨κ, hκG, hκU, t, ht, htn, hD⟩ := lev_data hIW hHC hk m hm
  have hκU' : κ * κᴴ = 1 := mul_eq_one_comm.1 hκU
  have h00 : (0 : Fin (r' + 1)) = ⟨0, by omega⟩ := Fin.ext (by simp)
  have ht' : m *ᵥ phiV k r' ⟨0, by omega⟩ = t • (κ *ᵥ phiV k r' ⟨0, by omega⟩) := by rw [← h00]; exact ht
  obtain ⟨w, hw⟩ : ∃ w, w = κᴴ *ᵥ (m *ᵥ fvec k r' z1 ⟨0, by omega⟩) := ⟨_, rfl⟩
  obtain ⟨A, hA⟩ : ∃ A, A = ∏ a : Fin (r' + 1), Del k r' a m ^ (-s (su a)) := ⟨_, rfl⟩
  have hDel : ∀ (n : ℕ) (l : Fin (n + 1)) (x : Mat k n), 0 ≤ Del k n l x := fun n l x => Real.sqrt_nonneg _
  have hA0 : 0 ≤ A := by rw [hA]; exact Finset.prod_nonneg fun a _ => Real.rpow_nonneg (hDel _ _ _) _
  have hpt : ∀ X : HPar k r',
      ENNReal.ofReal (xiR k (1 + r') s (heis0 k r' X * ιLev k 1 r' m)) *
        ENNReal.ofReal ((1 + |lam k (1 + r') (liftVec k 1 r' z1) (heis0 k r' X * ιLev k 1 r' m)|) ^ (-δ)) =
      ENNReal.ofReal A * GI s δ (etaF k r' w) (eta'F k r' w) (zetaF k r' w) (lam k r' z1 m)
        (hcoord k r' (κᴴ *ᵥ X.1, X.2)) := by
    intro X
    obtain ⟨hD0, hDS⟩ := hD X
    have hde : ∀ (x : Xp (1 + r') (k - 1)) (l : Fin (1 + r' + 1)), 0 ≤ de x l := fun x l => Real.sqrt_nonneg _
    have hmr : ∀ a : Fin (r' + 1), (Del k r' a m * de (hcoord k r' (κᴴ *ᵥ X.1, X.2)) (su a)) ^ (-s (su a)) =
        Del k r' a m ^ (-s (su a)) * de (hcoord k r' (κᴴ *ᵥ X.1, X.2)) (su a) ^ (-s (su a)) :=
      fun a => Real.mul_rpow (hDel _ _ _) (hde _ _)
    have hxi : xiR k (1 + r') s (heis0 k r' X * ιLev k 1 r' m) =
        A * ∏ l, de (hcoord k r' (κᴴ *ᵥ X.1, X.2)) l ^ (-s l) := by
      unfold xiR
      rw [prod_su, prod_su (fun l => de (hcoord k r' (κᴴ *ᵥ X.1, X.2)) l ^ (-s l)), hD0]
      simp only [hDS, (hF k r' hk).1, hmr, Finset.prod_mul_distrib]
      rw [hA]; ring
    have hX : X.1 = κ *ᵥ (κᴴ *ᵥ X.1) := by rw [mulVec_mulVec, hκU', one_mulVec]
    have hmf : m *ᵥ fvec k r' z1 ⟨0, by omega⟩ = κ *ᵥ w := by rw [hw, mulVec_mulVec, hκU', one_mulVec]
    have hh : herm (Hpk k r') (κ *ᵥ w) X.1 = star (herm (Hpk k r') (κᴴ *ᵥ X.1) w) := by
      conv_lhs => rw [hX]
      rw [herm_UH _ _ hκG]
      exact (herm_conj _ (hpk_conjT k r') _ _).symm
    have hlam : lam k (1 + r') (liftVec k 1 r' z1) (heis0 k r' X * ιLev k 1 r' m) =
        2 * (linF (etaF k r' w) (eta'F k r' w) (zetaF k r' w) (hcoord k r' (κᴴ *ᵥ X.1, X.2))).im + lam k r' z1 m := by
      rw [lam_lev hHA, hmf, hh, herm_linF' hk _ w X.2, Complex.star_def, Complex.conj_im]
      ring
    rw [hxi, hlam, ENNReal.ofReal_mul hA0, ENNReal.ofReal_prod_of_nonneg (fun l _ => Real.rpow_nonneg (hde _ l) _)]
    unfold GI; rw [mul_assoc]
  have key : t * eta'F k r' w ⟨0, by omega⟩ = herm (Hpk k r') (phiV k r' ⟨0, by omega⟩) (fvec k r' z1 ⟨0, by omega⟩) := by
    show t * herm (Hpk k r') (phiV k r' ⟨0, by omega⟩) w = _
    rw [hw, ← herm_UH _ _ hκG (phiV k r' ⟨0, by omega⟩) (κᴴ *ᵥ (m *ᵥ fvec k r' z1 ⟨0, by omega⟩)),
      mulVec_mulVec (m *ᵥ fvec k r' z1 ⟨0, by omega⟩) κ κᴴ, hκU', one_mulVec, ← herm_smul_l, ← ht', herm_UH _ _ hm]
  have ht0 : t ≠ 0 := fun h => hcz (by rw [← key, h, zero_mul])
  have hη0 : eta'F k r' w ⟨0, by omega⟩ ≠ 0 := fun h => hcz (by rw [← key, h, mul_zero])
  have hκH : (κᴴ)ᴴ * κᴴ = 1 := by rw [conjTranspose_conjTranspose]; exact hκU'
  have hg : Measurable (fun x => GI s δ (etaF k r' w) (eta'F k r' w) (zetaF k r' w) (lam k r' z1 m) (hcoord k r' x)) :=
    (meas_GI _ _ _ _ _ _).comp (hF k r' hk).2.measurable
  have hD0pos : 0 < Del k r' 0 m := by rw [← htn]; exact norm_pos_iff.2 ht0
  have hcz0 : 0 < ‖herm (Hpk k r') (phiV k r' ⟨0, by omega⟩) (fvec k r' z1 ⟨0, by omega⟩)‖ := norm_pos_iff.2 hcz
  have hnorm : ‖eta'F k r' w ⟨0, by omega⟩‖ =
      ‖herm (Hpk k r') (phiV k r' ⟨0, by omega⟩) (fvec k r' z1 ⟨0, by omega⟩)‖ / Del k r' 0 m := by
    have : eta'F k r' w ⟨0, by omega⟩ = herm (Hpk k r') (phiV k r' ⟨0, by omega⟩) (fvec k r' z1 ⟨0, by omega⟩) / t := by
      rw [eq_div_iff ht0, mul_comm]; exact key
    rw [this, norm_div, htn]
  have hQ : xiR k r' (fun a => s (su a) - if a = 0 then γ else 0) m = A * Del k r' 0 m ^ γ := by
    unfold xiR; rw [hA, Fin.prod_univ_succ, Fin.prod_univ_succ]
    simp only [if_true, Fin.succ_ne_zero, if_false, sub_zero]
    rw [show -(s (su 0) - γ) = -s (su 0) + γ by ring, Real.rpow_add hD0pos]; ring
  have hQ0 : 0 ≤ xiR k r' (fun a => s (su a) - if a = 0 then γ else 0) m :=
    Finset.prod_nonneg fun a _ => Real.rpow_nonneg (hDel _ _ _) _
  have hR0 : 0 ≤ (1 + |lam k r' z1 m|) ^ (-(δ / 4)) := Real.rpow_nonneg (by positivity) _
  calc _ = ∫⁻ X : HPar k r', ENNReal.ofReal A * GI s δ (etaF k r' w) (eta'F k r' w) (zetaF k r' w) (lam k r' z1 m)
          (hcoord k r' (κᴴ *ᵥ X.1, X.2)) := lintegral_congr hpt
    _ = ENNReal.ofReal A * ∫⁻ X : HPar k r', GI s δ (etaF k r' w) (eta'F k r' w) (zetaF k r' w) (lam k r' z1 m)
          (hcoord k r' (κᴴ *ᵥ X.1, X.2)) := lintegral_const_mul' _ _ ENNReal.ofReal_ne_top
    _ = ENNReal.ofReal A * ∫⁻ X : HPar k r', GI s δ (etaF k r' w) (eta'F k r' w) (zetaF k r' w) (lam k r' z1 m)
          (hcoord k r' X) := by rw [(mp_hpar κᴴ hκH).lintegral_comp hg]
    _ = ENNReal.ofReal A * ∫⁻ x, GI s δ (etaF k r' w) (eta'F k r' w) (zetaF k r' w) (lam k r' z1 m) x := by
          rw [(hF k r' hk).2.lintegral_comp (meas_GI _ _ _ _ _ _)]
    _ ≤ ENNReal.ofReal A * ENNReal.ofReal (C * ‖eta'F k r' w ⟨0, by omega⟩‖ ^ (-γ) * (1 + |lam k r' z1 m|) ^ (-δ / 4)) := by
          gcongr; exact hC _ _ _ _ hη0
    _ = ENNReal.ofReal (A * (C * ‖eta'F k r' w ⟨0, by omega⟩‖ ^ (-γ) * (1 + |lam k r' z1 m|) ^ (-δ / 4))) :=
          (ENNReal.ofReal_mul hA0).symm
    _ = ENNReal.ofReal ((C * ‖herm (Hpk k r') (phiV k r' ⟨0, by omega⟩) (fvec k r' z1 ⟨0, by omega⟩)‖ ^ (-γ)) *
          (xiR k r' (fun a => s (su a) - if a = 0 then γ else 0) m * (1 + |lam k r' z1 m|) ^ (-(δ / 4)))) := by
          congr 1
          rw [hnorm, Real.div_rpow hcz0.le hD0pos.le, Real.rpow_neg hD0pos.le, div_inv_eq_mul, hQ, neg_div]; ring
    _ = _ := by rw [ENNReal.ofReal_mul' (mul_nonneg hQ0 hR0), ENNReal.ofReal_mul hQ0]

end inner

end BL

end ReciprocityTheory.ChartRestriction.DS.Xi
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.InnerBound =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.BStepSuccOf =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.BStepSuccOf", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.InductiveHeisenbergInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Matrix.MeasurableSpace\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.HermitianFormLiftVecFirstVector\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.InnerBound\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Matrix MeasureTheory
open scoped ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.Xi
open Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.B2 BL

theorem bStepBase_of (hB2 : InductiveHeisenbergInputs) : BStepBase := by
  obtain ⟨-, -, -, -, hNB, -⟩ := hB2
  intro k _ δ _
  refine ⟨1, one_pos, fun s _ z _ _ μN hμ => ?_⟩
  set o : Mt k 0 := ((1 : Mat k 0) : Mt k 0) with ho
  have hc : μN ({o}ᶜ : Set (Mt k 0)) = 0 := by
    have h := hμ.conc; rw [hNB k] at h; exact h
  have hr : μN.restrict {o} = μN :=
    Measure.restrict_eq_self_of_ae_mem (ae_iff.2 (by simpa [Set.compl_def] using hc))
  unfold IInt
  rw [← hr, lintegral_singleton]
  exact ENNReal.mul_lt_top (ENNReal.mul_lt_top ENNReal.ofReal_lt_top ENNReal.ofReal_lt_top)
    (hμ.finite_compact _ isCompact_singleton)

theorem bStepSucc_of (hB2 : InductiveHeisenbergInputs) (hIW : IW) (hF : FormulaF) (hOS : OS) : BStepSucc := by
  obtain ⟨-, -, -, hNR, -, hHC, -, -, -, -, -, hHH, -, -, -, -, hHU, -, -, -, hCN, -, -, -, hHN, -, hHA⟩ := hB2
  intro k r r' hr hk δ hδ hδ2 hB'
  subst hr
  obtain ⟨e', he', hB'⟩ := hB'
  obtain ⟨γ, hγd⟩ : ∃ γ : ℝ, γ = min (δ / 8) (e' / 2) := ⟨_, rfl⟩
  have hγ : 0 < γ := by rw [hγd]; exact lt_min (by positivity) (by positivity)
  have hγ8 : γ ≤ δ / 8 := by rw [hγd]; exact min_le_left _ _
  have hγe : γ ≤ e' / 2 := by rw [hγd]; exact min_le_right _ _
  have hD : (0 : ℝ) < 4 * (1 + r') + 4 := by positivity
  refine ⟨min (e' / 2) (γ / (4 * (1 + r') + 4)), lt_min (by positivity) (div_pos hγ hD), ?_⟩
  intro s hs z hzW hzT μN hμN
  have he0 : ∀ l, 0 < s0 k (1 + r') l - s l := fun l => (hs l).1
  have heS : ∀ l, s0 k (1 + r') l - s l ≤ γ / (4 * (1 + r') + 4) := fun l => le_trans (hs l).2 (min_le_right _ _)
  have heS' : ∀ l, s0 k (1 + r') l - s l ≤ e' / 2 := fun l => le_trans (hs l).2 (min_le_left _ _)
  have hs0 : ∀ l, s0N (1 + r') (k - 1) l = s0 k (1 + r') l := by
    intro l; unfold s0N s0; split_ifs
    · rfl
    · push_cast [Nat.cast_sub hk]; ring
  have hsum : (s0 k (1 + r') 0 - s 0) + 2 * ∑ i : Fin (1 + r'), (s0 k (1 + r') i.succ - s i.succ) < γ / 2 := by
    have h1 : ∑ i : Fin (1 + r'), (s0 k (1 + r') i.succ - s i.succ) ≤ (1 + r') * (γ / (4 * (1 + r') + 4)) := by
      calc _ ≤ ∑ _i : Fin (1 + r'), γ / (4 * (1 + r') + 4) := Finset.sum_le_sum fun i _ => heS _
        _ = _ := by simp [Finset.sum_const, Finset.card_univ]
    have key : (3 + 2 * (r' : ℝ)) * (γ / (4 * (1 + r') + 4)) < γ / 2 := by
      rw [mul_div_assoc', div_lt_div_iff₀ hD (by norm_num)]; nlinarith
    linarith [heS 0]
  obtain ⟨C, hC⟩ := os_q hOS (1 + r') r' (k - 1) (by omega) δ γ (fun l => s0 k (1 + r') l - s l) hδ hδ2 hγ hγ8 he0 hsum
  have hC' : ∀ (η η' : Fin (1 + r') → ℂ) (ζ : Fin (k - 1) → ℂ) (c₀ : ℝ), η' ⟨0, by omega⟩ ≠ 0 →
      ∫⁻ x, GI s δ η η' ζ c₀ x ≤ ENNReal.ofReal (C * ‖η' ⟨0, by omega⟩‖ ^ (-γ) * (1 + |c₀|) ^ (-δ / 4)) := by
    intro η η' ζ c₀ h
    have hse : s = fun l => s0N (1 + r') (k - 1) l - (s0 k (1 + r') l - s l) := by funext l; rw [hs0]; ring
    rw [hse]; exact hC η η' ζ c₀ h
  obtain ⟨z1, hz1W, rfl⟩ : ∃ z1, inWb k r' z1 ∧ z = liftVec k 1 r' z1 := ⟨_, shifted_mem_weightSpace z hzW, z_lift z hzW⟩
  have hz1T : 0 < Tz k r' z1 := by rw [← tz_lift]; exact hzT
  have hcz := cz_ne hk z1 hz1T
  have hsP : ∀ a : Fin (r' + 1), 0 < s0 k r' a - (s (su a) - if a = 0 then γ else 0) ∧
      s0 k r' a - (s (su a) - if a = 0 then γ else 0) ≤ e' := by
    intro a
    have hs0a : s0 k r' a = s0 k (1 + r') (su a) := by
      unfold s0
      by_cases h : a.val < r'
      · rw [if_pos h, if_pos (show (su a).val < 1 + r' by rw [su_val]; omega)]
      · rw [if_neg h, if_neg (show ¬ (su a).val < 1 + r' by rw [su_val]; omega)]
    rw [hs0a]
    have h1 := he0 (su a); have h2 := heS' (su a)
    split_ifs <;> constructor <;> linarith
  obtain ⟨μ', hμ'⟩ := hHN k r'
  have hfin := hB' _ hsP z1 hz1W hz1T μ' hμ'
  obtain ⟨c, hc⟩ := hHU k (1 + r') (Nset k (1 + r')) _ μN (hCN k (1 + r')) (hNR k r' μ' hμ') hμN.conc hμN.left
    hμN.finite_compact
  rw [hc]; unfold IInt; rw [lintegral_smul_measure, ENNReal.smul_def, smul_eq_mul]
  refine ENNReal.mul_lt_top ENNReal.coe_lt_top ?_
  have : IsFiniteMeasureOnCompacts μ' := ⟨fun ⦃K⦄ hK => hμ'.finite_compact K hK⟩
  have : IsFiniteMeasureOnCompacts (μHeis k r') := ⟨fun ⦃K⦄ hK => (hHH k r').finite_compact K hK⟩
  set F : Mt k (1 + r') → ℝ≥0∞ := fun n => ENNReal.ofReal (xiR k (1 + r') s (Matrix.of n)) *
    ENNReal.ofReal ((1 + |lam k (1 + r') (liftVec k 1 r' z1) (Matrix.of n)|) ^ (-δ)) with hFd
  have hmul : Measurable (mulM (k := k) (r := 1 + r')) := by
    apply Continuous.measurable
    unfold mulM
    exact (continuous_fst (X := Mt k (1 + r')) (Y := Mt k (1 + r'))).matrix_mul continuous_snd
  have hlev : Measurable (levM k r') := by
    apply Continuous.measurable
    refine continuous_pi fun p => continuous_pi fun q => ?_
    change Continuous fun m : Mt k r' => ιLev k 1 r' (Matrix.of m) p q
    unfold ιLev
    split_ifs <;> first | exact (continuous_apply _).comp (continuous_apply _) | exact continuous_const
  have hheis : Measurable (fun X : HPar k r' => (heis0 k r' X : Mt k (1 + r'))) := by
    apply Continuous.measurable
    have hherm {ι : Type} [Fintype ι] (H : Matrix ι ι ℂ) :
        Continuous (fun p : (ι → ℂ) × (ι → ℂ) => herm H p.1 p.2) := by
      unfold herm
      exact continuous_snd.star.dotProduct (continuous_const.matrix_mulVec continuous_fst)
    have hlift : Continuous (fun X : HPar k r' => liftVec k 1 r' X.1) := by
      refine continuous_pi fun p => ?_
      change Continuous fun X : HPar k r' => liftVec k 1 r' X.1 p
      unfold liftVec
      split_ifs
      · exact (continuous_apply _).comp continuous_fst
      · exact continuous_const
    have hself : Continuous (fun X : HPar k r' => herm (Hpk k r') X.1 X.1) :=
      (hherm _).comp (continuous_fst.prodMk continuous_fst)
    have hhb : Continuous (fun X : HPar k r' => hb k r' X.1 X.2) := by
      unfold hb
      exact (Complex.continuous_ofReal.comp ((Complex.continuous_re.comp hself).neg.div_const 2)).add
        ((Complex.continuous_ofReal.comp continuous_snd).mul continuous_const)
    have hrow : Continuous (fun X : HPar k r' =>
        fun j => herm (Hpk k (1 + r')) (bvec j) (liftVec k 1 r' X.1)) :=
      continuous_pi fun j => (hherm _).comp (continuous_const.prodMk hlift)
    unfold heis0 heisG
    exact (continuous_const.sub (continuous_const.matrix_vecMulVec hrow)).add
      ((hlift.add (hhb.smul continuous_const)).matrix_vecMulVec continuous_const)
  have hsw : (μHeis k r').prod (μ'.map (levM k r')) = ((μ'.map (levM k r')).prod (μHeis k r')).map Prod.swap :=
    (Measure.prod_swap).symm
  have hae : ∀ᵐ m ∂μ', m ∈ Nset k r' := ae_iff.2 hμ'.conc
  have hpt : ∀ m ∈ Nset k r', ∫⁻ h, F (mulM (h, levM k r' m)) ∂(μHeis k r') ≤
      ENNReal.ofReal (C * ‖herm (Hpk k r') (phiV k r' ⟨0, by omega⟩) (fvec k r' z1 ⟨0, by omega⟩)‖ ^ (-γ)) *
        (ENNReal.ofReal (xiR k r' (fun a => s (su a) - if a = 0 then γ else 0) (Matrix.of m)) *
          ENNReal.ofReal ((1 + |lam k r' z1 (Matrix.of m)|) ^ (-(δ / 4)))) := by
    intro m hm
    calc _ ≤ ∫⁻ X, F (mulM (heis0 k r' X, levM k r' m)) ∂volume := by
          unfold μHeis
          exact lintegral_map_le _ hheis.aemeasurable
      _ ≤ _ := by rw [hFd]; exact inner_bound hIW hF hHC hHA hk s δ γ C z1 hC' hcz (Matrix.of m) hm.1
  calc ∫⁻ n, F n ∂(((μHeis k r').prod (μ'.map (levM k r'))).map mulM)
      ≤ ∫⁻ q, F (mulM q) ∂((μHeis k r').prod (μ'.map (levM k r'))) := lintegral_map_le _ hmul.aemeasurable
    _ = ∫⁻ q, F (mulM q) ∂(((μ'.map (levM k r')).prod (μHeis k r')).map Prod.swap) := by rw [hsw]
    _ ≤ ∫⁻ q, F (mulM q.swap) ∂((μ'.map (levM k r')).prod (μHeis k r')) :=
      lintegral_map_le _ measurable_swap.aemeasurable
    _ ≤ ∫⁻ n', ∫⁻ h, F (mulM (h, n')) ∂(μHeis k r') ∂(μ'.map (levM k r')) := lintegral_prod_le _
    _ ≤ ∫⁻ m, ∫⁻ h, F (mulM (h, levM k r' m)) ∂(μHeis k r') ∂μ' := lintegral_map_le _ hlev.aemeasurable
    _ ≤ ∫⁻ m, ENNReal.ofReal (C * ‖herm (Hpk k r') (phiV k r' ⟨0, by omega⟩) (fvec k r' z1 ⟨0, by omega⟩)‖ ^ (-γ)) *
          (ENNReal.ofReal (xiR k r' (fun a => s (su a) - if a = 0 then γ else 0) (Matrix.of m)) *
            ENNReal.ofReal ((1 + |lam k r' z1 (Matrix.of m)|) ^ (-(δ / 4)))) ∂μ' := lintegral_mono_ae (hae.mono hpt)
    _ = ENNReal.ofReal (C * ‖herm (Hpk k r') (phiV k r' ⟨0, by omega⟩) (fvec k r' z1 ⟨0, by omega⟩)‖ ^ (-γ)) *
          ∫⁻ m, ENNReal.ofReal (xiR k r' (fun a => s (su a) - if a = 0 then γ else 0) (Matrix.of m)) *
            ENNReal.ofReal ((1 + |lam k r' z1 (Matrix.of m)|) ^ (-(δ / 4))) ∂μ' :=
          lintegral_const_mul' _ _ ENNReal.ofReal_ne_top
    _ < ∞ := ENNReal.mul_lt_top ENNReal.ofReal_lt_top hfin

end ReciprocityTheory.ChartRestriction.DS.Xi
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.BStepSuccOf =====
