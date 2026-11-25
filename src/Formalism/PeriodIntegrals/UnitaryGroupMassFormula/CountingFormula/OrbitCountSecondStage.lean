module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.UnipotentIntegralPreservesLattice
public import Mathlib.NumberTheory.NumberField.Basic
public import Mathlib.LinearAlgebra.FreeModule.IdealQuotient
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.EichLApply
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DsumCancel, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.IsIntIntCast, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.OrbitCountSecondStage

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DsumCancel =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DsumCancel", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.UnipotentIntegralPreservesLattice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula

open NumberField Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.CntLocal
open Classical

attribute [local instance] Formalism.BasicNotions.Host.cmStar

def skL (D : Formalism.BasicNotions.D7) (S : Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E) :
    (VS D).V →ₗ[D.host.E] (VS D).V :=
  LinearMap.id + ∑ a, ∑ a', S a a' • ((VS D).hT (D.sp.hypE a')).smulRight (D.sp.hypE a)

theorem skL_apply (D : Formalism.BasicNotions.D7) (S : Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E) (v : (VS D).V) :
    skL D S v = v + ∑ a, (∑ a', S a a' * (VS D).hT (D.sp.hypE a') v) • D.sp.hypE a := by
  simp only [skL, LinearMap.add_apply, LinearMap.id_apply, LinearMap.sum_apply,
    LinearMap.smul_apply, LinearMap.smulRight_apply, smul_smul, Finset.sum_smul]

theorem hE_skL (D : Formalism.BasicNotions.D7) (S : Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E) (b : Fin D.R.rS)
    (v : (VS D).V) : (VS D).hT (D.sp.hypE b) (skL D S v) = (VS D).hT (D.sp.hypE b) v := by

  rw [skL_apply, map_add (f := _), map_sum]
  simp [D.sp.hyp_ee]

theorem skL_inv (D : Formalism.BasicNotions.D7) (S : Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E) (v : (VS D).V) :
    skL D (-S) (skL D S v) = v := by
  rw [skL_apply D (-S) (skL D S v)]
  simp only [hE_skL]
  rw [skL_apply]
  have e : ∀ a, (∑ a', (-S) a a' * (VS D).hT (D.sp.hypE a') v) =
      -(∑ a', S a a' * (VS D).hT (D.sp.hypE a') v) := fun a => by
    rw [← Finset.sum_neg_distrib]
    refine Finset.sum_congr rfl fun a' _ => ?_
    rw [Matrix.neg_apply, neg_mul]
  simp_rw [e, neg_smul, Finset.sum_neg_distrib]
  exact add_neg_cancel_right _ _

def skE (D : Formalism.BasicNotions.D7) (S : Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E) : (VS D).V ≃ₗ[D.host.E] (VS D).V :=
  LinearEquiv.ofLinear (skL D S) (skL D (-S))
    (LinearMap.ext fun v => by
      have h := skL_inv D (-S) v
      rw [neg_neg] at h
      exact h)
    (LinearMap.ext fun v => skL_inv D S v)

theorem skE_apply (D : Formalism.BasicNotions.D7) (S : Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E) (v : (VS D).V) :
    skE D S v = skL D S v := rfl

theorem dsum_cancel {K : Type} [CommRing K] {r : ℕ} (S : Matrix (Fin r) (Fin r) K) (X Y : Fin r → K) :
    ∑ a, (∑ a', S a a' * X a') * Y a + ∑ a, (∑ a', -S a' a * Y a') * X a = 0 := by
  have e : ∑ a, (∑ a', -S a' a * Y a') * X a = -∑ a, (∑ a', S a a' * X a') * Y a := by
    simp only [Finset.sum_mul, ← Finset.sum_neg_distrib]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun a' _ => ?_
    ring
  rw [e, add_neg_cancel]

theorem skL_isom (D : Formalism.BasicNotions.D7) (S : Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E)
    (hS : ∀ i j, star (S j i) = -S i j) (u v : (VS D).V) :
    (VS D).hT (skL D S u) (skL D S v) = (VS D).hT u v := by
  have hue : ∀ b, (VS D).hT u (D.sp.hypE b) = star ((VS D).hT (D.sp.hypE b) u) := fun b =>
    ((VS D).herm.eq (D.sp.hypE b) u).symm
  have key := dsum_cancel S (fun b => (VS D).hT (D.sp.hypE b) v) (fun b => star ((VS D).hT (D.sp.hypE b) u))
  beta_reduce at key
  rw [skL_apply, skL_apply]

  simp only [map_add (f := _), map_sum, LinearMap.add_apply, LinearMap.sum_apply, LinearMap.map_smulₛₗ₂, map_smul,
  D.sp.hyp_ee, hue, smul_eq_mul, mul_zero, Finset.sum_const_zero, add_zero, starRingEnd_apply, star_mul', hS]
  linear_combination key

theorem hE_int (D : Formalism.BasicNotions.D7) {T : D.host.E} {F0 : FlagG (VS D) D.R.rS T}
    {Λ : Submodule (𝓞 D.host.E) (VS D).V} (hF : FixedOK D F0 Λ) (a : Fin D.R.rS) {v : (VS D).V}
    (hv : v ∈ Λ) : ∃ o : 𝓞 D.host.E, algebraMap (𝓞 D.host.E) D.host.E o = (VS D).hT (D.sp.hypE a) v := by
  have he : D.sp.hypE a ∈ Λ := by
    have h1 := hF.2.2.2.1 a
    rwa [hF.2.2.1] at h1
  have hU' : Formalism.HermitianLatticesTheory.dual (VS D).hT Λ = Λ := hF.2.1
  have hv' : v ∈ Formalism.HermitianLatticesTheory.dual (VS D).hT Λ := by rw [hU']; exact hv
  simp only [Formalism.HermitianLatticesTheory.dual, Formalism.E.hdual, Submodule.mem_iInf, Submodule.mem_comap,
    LinearMap.restrictScalars_apply] at hv'
  obtain ⟨o, ho⟩ := Submodule.mem_one.mp (hv' _ he)
  exact ⟨o, ho⟩

theorem skL_lat (D : Formalism.BasicNotions.D7) {T : D.host.E} {F0 : FlagG (VS D) D.R.rS T}
    {Λ : Submodule (𝓞 D.host.E) (VS D).V} (hF : FixedOK D F0 Λ) (S : Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E)
    (hO : ∀ i j, ∃ o : 𝓞 D.host.E, algebraMap (𝓞 D.host.E) D.host.E o = S i j) {v : (VS D).V} (hv : v ∈ Λ) :
    skL D S v ∈ Λ := by
  rw [skL_apply]
  refine Λ.add_mem hv (Λ.sum_mem fun a _ => ?_)
  have he : D.sp.hypE a ∈ Λ := by
    have h1 := hF.2.2.2.1 a
    rwa [hF.2.2.1] at h1
  have hc : (∑ a', S a a' * (VS D).hT (D.sp.hypE a') v) ∈ (algebraMap (𝓞 D.host.E) D.host.E).range :=
    sum_mem fun a' _ => mul_mem (hO a a') (hE_int D hF a' hv)
  obtain ⟨o, ho⟩ := hc
  rw [← ho, algebraMap_smul]
  exact Λ.smul_mem o he

theorem skL_X (D : Formalism.BasicNotions.D7) (S : Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E) {x : (VS D).V}
    (hx : x ∈ Submodule.span D.host.E (Set.range D.sp.hypE)) : skL D S x = x := by
  have h0 : ∀ a', (VS D).hT (D.sp.hypE a') x = 0 := by
    intro a'
    induction hx using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨b, rfl⟩ := hy
      exact D.sp.hyp_ee a' b
    | zero => simp
    | add y z _ _ hy hz => rw [map_add (f := _), hy, hz, add_zero]
    | smul c y _ hy => rw [map_smul, hy, smul_zero]
  rw [skL_apply]
  simp [h0]

theorem skL_sub_mem (D : Formalism.BasicNotions.D7) (S : Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E) (x : (VS D).V) :
    skL D S x - x ∈ Submodule.span D.host.E (Set.range D.sp.hypE) := by
  rw [skL_apply, add_sub_cancel_left]
  exact Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩)

theorem skE_mem (D : Formalism.BasicNotions.D7) {T : D.host.E} (F0 : FlagG (VS D) D.R.rS T)
    (Λ : Submodule (𝓞 D.host.E) (VS D).V) (hF : FixedOK D F0 Λ) (S : Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E)
    (hS : ∀ i j, star (S j i) = -S i j)
    (hO : ∀ i j, ∃ o : 𝓞 D.host.E, algebraMap (𝓞 D.host.E) D.host.E o = S i j) :
    skE D S ∈ N0 F0 Λ := by
  have hFe : F0.e = D.sp.hypE := hF.2.2.1
  have hspan : ∀ x ∈ Submodule.span D.host.E (Set.range F0.e), skE D S x = x := by
    intro x hx
    rw [hFe] at hx
    exact skL_X D S hx
  have hO' : ∀ i j, ∃ o : 𝓞 D.host.E, algebraMap (𝓞 D.host.E) D.host.E o = (-S) i j := fun i j => by
    obtain ⟨o, ho⟩ := hO i j
    exact ⟨-o, by rw [map_neg, ho, Matrix.neg_apply]⟩
  have hzm : ∀ a', (VS D).hT (D.sp.hypE a') D.sp.zm = 0 := fun a' => by
    rw [← (VS D).herm.eq D.sp.zm (D.sp.hypE a'), (D.sp.hyp_orthz a').1, map_zero]
  simp only [N0, NLam, IsAutLam, Set.mem_setOf_eq]
  refine ⟨⟨⟨?_, ?_⟩, ?_, ?_⟩, ?_, ?_⟩
  · intro x y
    exact skL_isom D S hS x y
  · apply le_antisymm
    · exact Submodule.map_le_iff_le_comap.mpr fun v hv => skL_lat D hF S hO hv
    · intro v hv
      refine Submodule.mem_map.mpr ⟨skL D (-S) v, skL_lat D hF (-S) hO' hv, ?_⟩
      have h1 := skL_inv D (-S) v
      rw [neg_neg] at h1
      exact h1
  · intro j x hx
    have hx' : x ∈ Submodule.span D.host.E (Set.range F0.e) :=
      Submodule.span_mono (Set.image_subset_range _ _) hx
    rw [hspan x hx', sub_self]
    exact Submodule.zero_mem _
  · intro x _
    have h1 := skL_sub_mem D S x
    rw [← hFe] at h1
    exact h1
  · intro a
    exact hspan _ (Submodule.subset_span ⟨a, rfl⟩)
  · obtain ⟨c, _, hcz⟩ := hF.2.2.2.2
    rw [hcz, map_smul]
    congr 1
    rw [skE_apply, skL_apply]
    simp [hzm]

private theorem pW_skL (D : Formalism.BasicNotions.D7) (S : Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E)
    (w : (VS D).V) : pW D (skL D S w) = pW D w := by
  have hf : ∀ a b, (VS D).hT (D.sp.hypF b) (D.sp.hypE a) = if a = b then 1 else 0 := fun a b => by
    rw [← (VS D).herm.eq (D.sp.hypE a) (D.sp.hypF b), D.sp.hyp_ef]
    split_ifs <;> simp
  have hz : ∀ a, (VS D).hT D.sp.zm (D.sp.hypE a) = 0 := fun a => (D.sp.hyp_orthz a).1
  rw [skL_apply]

  simp only [pW, map_add (f := _), map_sum, map_smul, hf, hz, D.sp.hyp_ee, smul_eq_mul, mul_zero, add_zero,
  mul_ite, mul_one, Finset.sum_ite_eq', Finset.mem_univ, if_true, add_smul,
  Finset.sum_add_distrib, Finset.sum_const_zero]
  module

theorem pWf_skE (D : Formalism.BasicNotions.D7) (S : Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E)
    (x : (Fin D.R.rS → (VS D).V) × (VS D).V) : pWf D (act D (skE D S) x) = pWf D x := by
  funext b
  have hfr : fr D (act D (skE D S) x) b = skL D S (fr D x b) := by
    simp only [fr, act]
    exact (congrFun (Fin.comp_snoc (fun w => (skE D S) w) x.1 x.2) b).symm
  simp only [pWf]
  rw [hfr, pW_skL]

theorem alM_skE (D : Formalism.BasicNotions.D7) {T : D.host.E} (T' : D.host.E) (F0 : FlagG (VS D) D.R.rS T)
    (Λ : Submodule (𝓞 D.host.E) (VS D).V) (hF : FixedOK D F0 Λ) (Z : MatZ D)
    (S : Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E) {x : (Fin D.R.rS → (VS D).V) × (VS D).V}
    (hx : Good D T' F0 Λ Z x) : alM D (act D (skE D S) x) = alM D x + S * betaZ D Z := by
  ext a b
  have hf : ∀ c, (VS D).hT (D.sp.hypF a) (D.sp.hypE c) = if c = a then 1 else 0 := fun c => by
    rw [← (VS D).herm.eq (D.sp.hypE c) (D.sp.hypF a), D.sp.hyp_ef]
    split_ifs <;> simp
  have hZ : ∀ c', (VS D).hT (D.sp.hypE c') (fr D x b) = Z (Fin.castSucc c') b := fun c' => by
    have h1 := hx.2.1 (Fin.castSucc c') b
    simp only [Formalism.MainNotions.S.brS, Formalism.MainNotions.S.FlagG.fvec, Fin.snoc_castSucc, hF.2.2.1] at h1
    exact h1
  have hfr : fr D (act D (skE D S) x) b = skL D S (fr D x b) := by
    simp only [fr, act]
    exact (congrFun (Fin.comp_snoc (fun w => (skE D S) w) x.1 x.2) b).symm
  simp only [alM, Matrix.add_apply, Matrix.mul_apply, betaZ, Matrix.submatrix_apply, id]

  rw [hfr, skL_apply, map_add (f := _), map_sum]
  simp only [map_smul, smul_eq_mul, hf, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ,
    if_true, hZ]

end PI.UnitaryGroupMassFormula.CntFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DsumCancel =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.IsIntIntCast =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.IsIntIntCast", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula

open NumberField

variable {K : Type} [Field K] [NumberField K]

theorem isInt_O (o : 𝓞 K) : IsIntegral ℤ (algebraMap (𝓞 K) K o) := o.2

theorem O_of_isInt {x : K} (h : IsIntegral ℤ x) : ∃ o : 𝓞 K, algebraMap (𝓞 K) K o = x := ⟨⟨x, h⟩, rfl⟩

theorem isInt_intCast (n : ℤ) : IsIntegral ℤ (n : K) := by
  simpa using (isIntegral_algebraMap : IsIntegral ℤ (algebraMap ℤ K n))

theorem isInt_star [StarRing K] {x : K} (h : IsIntegral ℤ x) : IsIntegral ℤ (star x) :=
  h.map (starRingEnd K).toIntAlgHom

theorem commonDen (s : Finset K) : ∃ d : ℕ, 0 < d ∧ ∀ x ∈ s, IsIntegral ℤ ((d : K) * x) := by
  obtain ⟨y, hy, h⟩ := exists_integral_multiples ℤ ℚ s
  refine ⟨y.natAbs ^ 2, pow_pos (Int.natAbs_pos.2 hy) 2, fun x hx => ?_⟩
  have e0 : ((y.natAbs ^ 2 : ℕ) : ℤ) = y ^ 2 := by rw [Nat.cast_pow, Int.natAbs_sq]
  have e1 : ((y.natAbs ^ 2 : ℕ) : K) = (y : K) ^ 2 := by rw [← Int.cast_natCast, e0, Int.cast_pow]
  rw [e1, pow_two, mul_assoc, ← zsmul_eq_mul x y]
  exact (isInt_intCast y).mul (h x hx)

theorem reduceRep (N : ℕ) (hN : 0 < N) : ∃ Rep : Set K, Rep.Finite ∧ (∀ ρ ∈ Rep, IsIntegral ℤ ρ) ∧
    ∀ o : K, IsIntegral ℤ o → ∃ t ρ : K, IsIntegral ℤ t ∧ ρ ∈ Rep ∧ o = (N : K) * t + ρ := by
  set I : Ideal (𝓞 K) := Ideal.span {(N : 𝓞 K)} with hI
  have hIne : I ≠ ⊥ := by
    rw [hI, Ne, Ideal.span_singleton_eq_bot]
    exact_mod_cast hN.ne'
  have := I.finiteQuotientOfFreeOfNeBot hIne
  set σ := Function.surjInv (Ideal.Quotient.mk_surjective (I := I)) with hσ
  refine ⟨Set.range (fun q : 𝓞 K ⧸ I => algebraMap (𝓞 K) K (σ q)), Set.finite_range _, ?_, ?_⟩
  · rintro _ ⟨q, rfl⟩; exact isInt_O _
  · intro o ho
    obtain ⟨oo, rfl⟩ := O_of_isInt ho
    set q := Ideal.Quotient.mk I oo
    have hq : Ideal.Quotient.mk I (σ q) = q := Function.surjInv_eq _ q
    have hmem : oo - σ q ∈ I := Ideal.Quotient.eq.1 hq.symm
    obtain ⟨t, ht⟩ := Ideal.mem_span_singleton'.1 hmem
    refine ⟨algebraMap (𝓞 K) K t, algebraMap (𝓞 K) K (σ q), isInt_O _, ⟨q, rfl⟩, ?_⟩
    have e : oo = t * N + σ q := by rw [ht]; ring
    rw [e, map_add (f := _), map_mul, map_natCast]
    ring

end PI.UnitaryGroupMassFormula.CntFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.IsIntIntCast =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.OrbitCountSecondStage =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.OrbitCountSecondStage", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.UnipotentIntegralPreservesLattice\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DsumCancel\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.EichLApply\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.IsIntIntCast\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula

open NumberField Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.CntLocal
open Classical

attribute [local instance] Formalism.BasicNotions.Host.cmStar

def hermP (D : Formalism.BasicNotions.D7) (Z : MatZ D) (x : (Fin D.R.rS → (VS D).V) × (VS D).V) :
    Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) D.host.E :=
  (alM D x).conjTranspose * betaZ D Z + (betaZ D Z).conjTranspose * alM D x

private theorem fr_sub_eq_sum_hypE_of_good_of_pWf_eq (D : Formalism.BasicNotions.D7) {T : D.host.E} (T' : D.host.E) (F0 : FlagG (VS D) D.R.rS T)
    (Λ : Submodule (𝓞 D.host.E) (VS D).V) (hF : FixedOK D F0 Λ) (Z : MatZ D)
    {x y : (Fin D.R.rS → (VS D).V) × (VS D).V} (hx : Good D T' F0 Λ Z x) (hy : Good D T' F0 Λ Z y)
    (hw : pWf D x = pWf D y) (b : Fin (D.R.rS + 1)) :
    fr D x b - fr D y b = ∑ c, (VS D).hT (D.sp.hypF c) (fr D x b - fr D y b) • D.sp.hypE c := by
  have hE : ∀ c, (VS D).hT (D.sp.hypE c) (fr D x b - fr D y b) = 0 := by
    intro c
    have h1 := hx.2.1 (Fin.castSucc c) b
    have h2 := hy.2.1 (Fin.castSucc c) b
    simp only [brS, FlagG.fvec, Fin.snoc_castSucc, hF.2.2.1] at h1 h2
    rw [map_sub, h1, h2, sub_self]
  have hZ : (VS D).hT D.sp.zm (fr D x b - fr D y b) = 0 := by
    obtain ⟨c0, hc0, hz⟩ := hF.2.2.2.2
    have h1 := hx.2.1 (Fin.last _) b
    have h2 := hy.2.1 (Fin.last _) b
    simp only [brS, FlagG.fvec, Fin.snoc_last, hz, LinearMap.map_smulₛₗ, LinearMap.smul_apply,
      smul_eq_mul] at h1 h2
    have h3 : (starRingEnd D.host.E) c0 * (VS D).hT D.sp.zm (fr D x b - fr D y b) = 0 := by
      rw [map_sub, mul_sub, h1, h2, sub_self]
    rcases mul_eq_zero.1 h3 with h | h
    · exact absurd ((map_eq_zero _).1 h) hc0
    · exact h
  have hP : pW D (fr D x b - fr D y b) = 0 := by
    have h := congrFun hw b
    simp only [pWf] at h
    rw [pW_eq, map_sub, ← pW_eq, ← pW_eq, h, sub_self]
  have h := hP
  simp only [pW, hE, hZ, zero_smul, Finset.sum_const_zero, sub_zero, zero_div, add_zero] at h
  exact sub_eq_zero.1 h

theorem hermitianDivisible_eq_smul (D : Formalism.BasicNotions.D7) {T : D.host.E} (T' : D.host.E) (F0 : FlagG (VS D) D.R.rS T)
    (Λ : Submodule (𝓞 D.host.E) (VS D).V) (hF : FixedOK D F0 Λ) (Z : MatZ D)
    {x y : (Fin D.R.rS → (VS D).V) × (VS D).V} (hx : Good D T' F0 Λ Z x) (hy : Good D T' F0 Λ Z y)
    (hw : pWf D x = pWf D y) : hermP D Z x = hermP D Z y := by
  have hd := fun b => fr_sub_eq_sum_hypE_of_good_of_pWf_eq D T' F0 Λ hF Z hx hy hw b
  have hβ : ∀ c b, (VS D).hT (D.sp.hypE c) (fr D y b) = betaZ D Z c b := by
    intro c b
    have h2 := hy.2.1 (Fin.castSucc c) b
    simp only [brS, FlagG.fvec, Fin.snoc_castSucc, hF.2.2.1] at h2
    simp only [betaZ, Matrix.submatrix_apply, id, h2]
  have hβ' : ∀ c a, (VS D).hT (fr D y a) (D.sp.hypE c) = star (betaZ D Z c a) := by
    intro c a
    rw [← hβ, hT_star]
  have hα : ∀ c b, alM D x c b = alM D y c b + (VS D).hT (D.sp.hypF c) (fr D x b - fr D y b) := by
    intro c b
    simp only [alM, map_sub]
    ring
  have hee : ∀ i j, (VS D).hT (D.sp.hypE i) (D.sp.hypE j) = 0 := fun i j => D.sp.hyp_ee i j
  have key : ∀ a b, ∑ c, star ((VS D).hT (D.sp.hypF c) (fr D x a - fr D y a)) * betaZ D Z c b +
      ∑ c, (VS D).hT (D.sp.hypF c) (fr D x b - fr D y b) * star (betaZ D Z c a) = 0 := by
    intro a b
    have hxx := hx.2.2 a b
    rw [← hy.2.2 a b] at hxx
    have ex : ∀ a, fr D x a = fr D y a + ∑ c, (VS D).hT (D.sp.hypF c) (fr D x a - fr D y a) • D.sp.hypE c := by
      intro a
      rw [← hd a]
      abel
    rw [ex a, ex b] at hxx

    simp only [map_add (f := _), map_sum, LinearMap.map_smulₛₗ, LinearMap.add_apply, LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul, map_smul, hee, mul_zero,
    Finset.sum_const_zero, add_zero, hβ, hβ', starRingEnd_apply] at hxx
    linear_combination hxx
  ext a b
  simp only [hermP, Matrix.add_apply, Matrix.mul_apply, Matrix.conjTranspose_apply, hα, star_add,
    add_mul, mul_add, Finset.sum_add_distrib]
  have k2 : ∑ c, star (betaZ D Z c a) * (VS D).hT (D.sp.hypF c) (fr D x b - fr D y b) =
      ∑ c, (VS D).hT (D.sp.hypF c) (fr D x b - fr D y b) * star (betaZ D Z c a) :=
    Finset.sum_congr rfl (fun _ _ => mul_comm _ _)
  linear_combination key a b + k2

private theorem exists_nat_mul_alM_mul_isIntegral_of_fr_mem (D : Formalism.BasicNotions.D7) {T : D.host.E} (F0 : FlagG (VS D) D.R.rS T)
    (Λ : Submodule (𝓞 D.host.E) (VS D).V) (hF : FixedOK D F0 Λ)
    (R : Matrix (Fin (D.R.rS + 1)) (Fin D.R.rS) D.host.E) :
    ∃ N : ℕ, 0 < N ∧ ∀ x : (Fin D.R.rS → (VS D).V) × (VS D).V, (∀ b, fr D x b ∈ Λ) →
      ∀ i j, IsIntegral ℤ ((N : D.host.E) * (alM D x * R) i j) := by
  obtain ⟨g, hg⟩ := hF.1.fg
  obtain ⟨N1, hN1, h1⟩ := commonDen (K := D.host.E)
    (Finset.image (fun p : Fin D.R.rS × (VS D).V => (VS D).hT (D.sp.hypF p.1) p.2)
      (Finset.univ ×ˢ g) ∪
     Finset.image (fun p : Fin (D.R.rS + 1) × Fin D.R.rS => R p.1 p.2) Finset.univ)
  have hv : ∀ v ∈ Λ, ∀ c, IsIntegral ℤ ((N1 : D.host.E) * (VS D).hT (D.sp.hypF c) v) := by
    intro v hv c
    rw [← hg] at hv
    induction hv using Submodule.span_induction with
    | mem y hy =>
      exact h1 _ (Finset.mem_union_left _ (Finset.mem_image.2
        ⟨(c, y), Finset.mem_product.2 ⟨Finset.mem_univ _, by exact_mod_cast hy⟩, rfl⟩))
    | zero =>
      rw [map_zero, mul_zero]
      exact isIntegral_zero
    | add y z _ _ hy hz =>
      rw [map_add (f := _), mul_add]
      exact hy.add hz
    | smul o y _ hy =>
      rw [← algebraMap_smul D.host.E o y, map_smul, smul_eq_mul, mul_left_comm]
      exact (isInt_O o).mul hy
  refine ⟨N1 * N1, Nat.mul_pos hN1 hN1, fun x hx i j => ?_⟩
  rw [Matrix.mul_apply, Nat.cast_mul, Finset.mul_sum]
  refine IsIntegral.sum _ (fun b _ => ?_)
  have e : (N1 : D.host.E) * N1 * (alM D x i b * R b j) =
      ((N1 : D.host.E) * alM D x i b) * ((N1 : D.host.E) * R b j) := by ring
  rw [e]
  exact (hv _ (hx b) i).mul (h1 _ (Finset.mem_union_right _ (Finset.mem_image.2
    ⟨(b, j), Finset.mem_univ _, rfl⟩)))

theorem orbit_count_second_stage : Stage2 := by
  intro D T T' F0 Λ hF Z R hR Wf hWf
  obtain ⟨N, hN, hden⟩ := exists_nat_mul_alM_mul_isIntegral_of_fr_mem D F0 Λ hF R
  obtain ⟨Rep, hRepF, hRepI, hrep⟩ := reduceRep (K := D.host.E) (4 * N) (by omega)
  let hfun : (Fin (D.R.rS + 1) → (VS D).V) → Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E := fun w =>
    if h : ∃ y, Good D T' F0 Λ Z y ∧ pWf D y = w then R.conjTranspose * hermP D Z h.choose * R else 0
  refine ⟨(fun q : Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E × (Fin D.R.rS → Fin D.R.rS → D.host.E) =>
      Matrix.of fun i j => q.1 i j / 2 + (q.2 i j - star (q.2 j i)) / 4) ''
      ((hfun '' Wf) ×ˢ Set.pi Set.univ
        (fun _ => Set.pi Set.univ (fun _ => (fun ρ => ρ / (N : D.host.E)) '' Rep))), ?_, ?_⟩
  · exact ((hWf.image _).prod (Set.Finite.pi fun _ => Set.Finite.pi fun _ => hRepF.image _)).image _
  intro x hx hxw
  have hN0 : (N : D.host.E) ≠ 0 := by exact_mod_cast hN.ne'
  have hint : ∀ i j, IsIntegral ℤ ((N : D.host.E) *
      ((alM D x * R) i j - star ((alM D x * R) j i))) := by
    intro i j
    rw [mul_sub]
    refine (hden x hx.1 i j).sub ?_
    have h := isInt_star (hden x hx.1 j i)
    rw [star_mul', star_natCast] at h
    exact h
  choose t ρ ht hρ heq using fun i j => hrep _ (hint i j)
  have hrel : ∀ i j, (alM D x * R) i j - star ((alM D x * R) j i) = 4 * t i j + ρ i j / N := by
    intro i j
    have h := heq i j
    push_cast at h
    have h' : (alM D x * R) i j - star ((alM D x * R) j i) - 4 * t i j = ρ i j / N := by
      rw [eq_div_iff hN0]
      linear_combination h
    linear_combination h'
  let S : Matrix (Fin D.R.rS) (Fin D.R.rS) D.host.E := Matrix.of fun i j => star (t j i) - t i j
  have hSskew : ∀ i j, star (S j i) = -S i j := by
    intro i j
    simp only [S, Matrix.of_apply, star_sub, star_star, neg_sub]
  have hSint : ∀ i j, ∃ o : 𝓞 D.host.E, algebraMap (𝓞 D.host.E) D.host.E o = S i j :=
    fun i j => O_of_isInt ((isInt_star (ht j i)).sub (ht i j))
  refine ⟨skE D S, skE_mem D F0 Λ hF S hSskew hSint, pWf_skE D S x, ?_⟩
  rw [alM_skE D T' F0 Λ hF Z S hx, Matrix.add_mul, Matrix.mul_assoc, hR, Matrix.mul_one]
  have e1 : R.conjTranspose * ((alM D x).conjTranspose * betaZ D Z) * R = (alM D x * R).conjTranspose := by
    calc R.conjTranspose * ((alM D x).conjTranspose * betaZ D Z) * R = R.conjTranspose * (alM D x).conjTranspose * (betaZ D Z * R) := by
          simp only [Matrix.mul_assoc]
      _ = (alM D x * R).conjTranspose := by rw [hR, Matrix.mul_one, Matrix.conjTranspose_mul]
  have e2 : R.conjTranspose * ((betaZ D Z).conjTranspose * alM D x) * R = alM D x * R := by
    calc R.conjTranspose * ((betaZ D Z).conjTranspose * alM D x) * R = (R.conjTranspose * (betaZ D Z).conjTranspose) * (alM D x * R) := by
          simp only [Matrix.mul_assoc]
      _ = alM D x * R := by
          rw [← Matrix.conjTranspose_mul, hR, Matrix.conjTranspose_one, Matrix.one_mul]
  have hH : R.conjTranspose * hermP D Z x * R = alM D x * R + (alM D x * R).conjTranspose := by
    rw [hermP, Matrix.mul_add, Matrix.add_mul, e1, e2, add_comm]
  have hfx : hfun (pWf D x) = alM D x * R + (alM D x * R).conjTranspose := by
    have hex : ∃ y, Good D T' F0 Λ Z y ∧ pWf D y = pWf D x := ⟨x, hx, rfl⟩
    simp only [hfun, dif_pos hex]
    rw [hermitianDivisible_eq_smul D T' F0 Λ hF Z hex.choose_spec.1 hx hex.choose_spec.2, hH]
  refine ⟨(alM D x * R + (alM D x * R).conjTranspose, fun i j => ρ i j / N),
    ⟨⟨pWf D x, hxw, hfx⟩, ?_⟩, ?_⟩
  · simp only [Set.mem_pi, Set.mem_univ, true_implies]
    intro i j
    exact ⟨ρ i j, hρ i j, rfl⟩
  · ext i j
    have h1 := hrel i j
    have h2 := congrArg star (hrel j i)
    simp only [star_sub, star_add, star_mul', star_star, star_div₀, star_natCast, star_ofNat] at h2
    simp only [S, Matrix.of_apply, Matrix.add_apply, Matrix.conjTranspose_apply, star_div₀,
      star_natCast]
    linear_combination (-1 / 4 : D.host.E) * h1 + (1 / 4 : D.host.E) * h2

end PI.UnitaryGroupMassFormula.CntFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.OrbitCountSecondStage =====
