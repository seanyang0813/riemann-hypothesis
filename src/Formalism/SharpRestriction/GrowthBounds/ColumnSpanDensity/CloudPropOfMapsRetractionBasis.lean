module

public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RhoLowerBoundLargeConductor
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.InvariantSectionsTransportGL
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LatticeCountPrimeMonoLevel
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RhoUpperBoundSmallDepth
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.EdgeIndep
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RhoUpperBoundOfEdgeCount
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FactorsLEOfFintype
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Mathlib.Data.Matrix.ColumnRowPartitioned
public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
public import Mathlib.LinearAlgebra.Matrix.SchurComplement
public import Mathlib.RingTheory.LocalRing.ResidueField.Basic
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudBoundOfPropAndWeylDimension
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FactorizationBoundMonoLattices
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RhoLowerBoundOfEdgeCount
import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RhoSumBoundOfMapsSplitting
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.PolynomialDimension.WeylDim

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.NLeDAll, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudCount, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LemmaSMat, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudPropOfMapsRetractionBasis

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.NLeDAll =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.NLeDAll", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RhoLowerBoundLargeConductor\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.InvariantSectionsTransportGL\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LatticeCountPrimeMonoLevel\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RhoUpperBoundSmallDepth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.EdgeIndep\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RhoUpperBoundOfEdgeCount\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.flipOneThree.Pf

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree Formalism.MainNotions.G.LatticeSystems

theorem nLeD_all {p n' : ℕ} (R : RS p n') {m : ℕ} (lam0 : Fin n' → Fin (m + 1) → ℤ) (hDom : IsDominant lam0)
    (t c n : ℕ) (D : ℝ) (hD0 : 0 ≤ D) (hDc : 2 * D < c)
    (hfac : ∀ e, IsEdge p n' 1 e →
      FactorsLE p (be (Kf := R.Kf) p 1 lam0) (CCL R lam0 t c e) (Re' p R.ι R.σ R.w 1 lam0 e) n D) :
    (n : ℝ) ≤ dL R lam0 := by
  classical
  have hcnt := restEdgeCountSrc
  have hdnn := dL_nonneg R lam0
  by_cases hn0 : n = 0
  · subst hn0; simpa using hdnn
  have hL : IsLattice R.W (colSpan R.W (1 : Matrix (Fin (m + 1)) (Fin (m + 1)) R.Qq)) := ⟨1, by simp, rfl⟩
  obtain ⟨Ne, es, hinj, hes, hNe⟩ := hcnt p n' R (m + 1) (by omega) _ hL
  have hc1 : 1 ≤ c := by
    have : (0 : ℝ) < c := by linarith
    exact_mod_cast this
  have hdata : ∀ i : Fin Ne, ∃ (x : Fin n → Vsp R.Kf lam0)
      (y : Fin n → Module.Dual R.Kf (Vsp R.Kf lam0)) (z z' : R.O), z ≠ 0 ∧
      (∀ a, x a ∈ CCL R lam0 t c (es i)) ∧ (∀ a, y a ∈ Re' p R.ι R.σ R.w 1 lam0 (es i)) ∧
      z' * z = R.w ^ (c - 1) ∧
      ∀ a b, be p 1 lam0 (x a) (y b) = if a = b then algebraMap R.O R.Kf z else 0 := by
    intro i
    rcases hfac (es i) (hes i).1 with h0 | ⟨x, y, hx, hy, z, Mx, hz, hv, hM⟩
    · exact absurd h0 hn0
    · obtain ⟨z', hz'⟩ := dvd_w_pow_of_vLEO R.std.2.1 R.std.1.w_sq hz hDc hv
      refine ⟨x, fun b => ∑ l, Mx l b • y l, z, z', hz, hx,
        fun b => Submodule.sum_mem _ (fun l _ => Submodule.smul_mem _ _ (hy l)), by rw [hz']; ring, fun a b => ?_⟩
      rw [be_sum]
      exact hM a b
  choose x y z z' hz0 hx hy hzz hxy using hdata
  have hβ : ∀ i l : Fin Ne × Fin n, ∃ β : R.O, β ∈ IsLocalRing.maximalIdeal R.O ∧
      be p 1 lam0 (x i.1 i.2) (y l.1 l.2) =
        algebraMap R.O R.Kf (((1 : Matrix (Fin Ne × Fin n) (Fin Ne × Fin n) R.O) i l + β) * z l.1) := by
    rintro ⟨i, a⟩ ⟨l, b⟩
    by_cases hil : i = l
    · subst hil
      refine ⟨0, Submodule.zero_mem _, ?_⟩
      simp only
      rw [hxy, Matrix.one_apply]
      by_cases hab : a = b
      · subst hab; simp
      · have : ((i, a) : Fin Ne × Fin n) ≠ (i, b) := fun h => hab (Prod.mk.inj h).2
        rw [if_neg hab, if_neg this]; simp
    · have hne : es l ≠ es i := fun h => hil (hinj h).symm
      have hXs := CCL_other R lam0 t c (es i) (es l) (hes _).1 ((hes _).2.trans (hes _).2.symm) hne (hx i a)
      obtain ⟨b', hb⟩ := be_scale_Re R lam0 (es l) c hXs (hy l b)
      have h2 : ((i, a) : Fin Ne × Fin n) ≠ (l, b) := fun h => hil (Prod.mk.inj h).1
      refine ⟨R.w * b' * z' l, Ideal.mul_mem_right _ _ (Ideal.mul_mem_right _ _ R.w_mem), ?_⟩
      simp only
      rw [hb, Matrix.one_apply_ne h2, zero_add]
      congr 1
      have h3 : R.w ^ c = R.w * R.w ^ (c - 1) := by
        rw [← pow_succ']
        congr 1
        omega
      rw [h3, ← hzz l]
      ring
  choose β hβm hβe using hβ
  let P : Matrix (Fin Ne × Fin n) (Fin Ne × Fin n) R.O := Matrix.of fun i l => (1 : Matrix _ _ R.O) i l + β i l
  have hP : IsUnit P.det := by
    apply isUnit_det_of_one_add'
    intro i l
    simpa [P] using hβm i l
  have hinjK : Function.Injective (algebraMap R.O R.Kf) := by
    have hfr : IsFractionRing R.O R.Kf := R.std.1.frac_O
    exact IsFractionRing.injective R.O R.Kf
  have hPK : ((algebraMap R.O R.Kf).mapMatrix P).det ≠ 0 := by
    rw [← RingHom.map_det]
    intro h0
    have : P.det = 0 := hinjK (by rw [h0, map_zero])
    rw [this] at hP
    exact not_isUnit_zero hP
  have hli : LinearIndependent R.Kf (fun i : Fin Ne × Fin n => x i.1 i.2) := by
    rw [Fintype.linearIndependent_iff]
    intro g hg
    have h1 : ∀ l : Fin Ne × Fin n, ∑ i, g i * algebraMap R.O R.Kf (P i l) = 0 := by
      intro l
      have h2 : be p 1 lam0 (∑ i, g i • x i.1 i.2) (y l.1 l.2) = 0 := by
        rw [hg]; simp [be]
      rw [be_sum_left] at h2
      have h3 : (∑ i, g i * algebraMap R.O R.Kf (P i l)) * algebraMap R.O R.Kf (z l.1) = 0 := by
        rw [← h2, Finset.sum_mul]
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [hβe i l, map_mul, mul_assoc]
        rfl
      have hz : algebraMap R.O R.Kf (z l.1) ≠ 0 := fun h => hz0 l.1 (hinjK (by rw [h, map_zero]))
      exact (mul_eq_zero.1 h3).resolve_right hz
    have h4 : Matrix.vecMul g ((algebraMap R.O R.Kf).mapMatrix P) = 0 := by
      funext l
      simpa [Matrix.vecMul, dotProduct] using h1 l
    have h5 := Matrix.eq_zero_of_vecMul_eq_zero hPK h4
    intro i
    rw [h5]; rfl
  have hpos : 0 < dimV R.Kf lam0 := Formalism.MainNotions.G.LatticeSystems.kp_dimV_pos R.Kf lam0 hDom
  have hfin : Module.Finite R.Kf (Vsp R.Kf lam0) := Module.finite_of_finrank_pos hpos
  have hcard : Ne * n ≤ dimV R.Kf lam0 := by
    have := hli.fintype_card_le_finrank
    simpa [dimV] using this
  have hNpos := gaussianNumber_prime_pow_pos R (m + 1) (by omega)
  unfold dL
  rw [le_div_iff₀ hNpos]
  have h6 : ((Ne * n : ℕ) : ℝ) ≤ (dimV R.Kf lam0 : ℝ) := by exact_mod_cast hcard
  have h7 : (n : ℝ) * gaussianNumber (p ^ n') (m + 1) ≤ (n : ℝ) * Ne := mul_le_mul_of_nonneg_left hNe (Nat.cast_nonneg _)
  push_cast at h6
  linarith

theorem nEdge {p n' : ℕ} (R : RS p n') {m : ℕ} (lam0 : Fin n' → Fin (m + 1) → ℤ) (hDom : IsDominant lam0)
    (t c n : ℕ) (D : ℝ) (e e' : Edge R.W R.Qq (m + 1)) (he : IsEdge p n' 1 e) (he' : IsEdge p n' 1 e')
    (hfac : FactorsLE p (be (Kf := R.Kf) p 1 lam0) (CCL R lam0 t c e) (Re' p R.ι R.σ R.w 1 lam0 e) n D) :
    FactorsLE p (be (Kf := R.Kf) p 1 lam0) (CCL R lam0 t c e') (Re' p R.ι R.σ R.w 1 lam0 e') n D := by
  classical
  have hFun := restFunct
  have hfrW : IsFractionRing R.W R.Qq := R.std.1.frac_alt
  obtain ⟨g, hg, hsrc, htgt⟩ := lc_main p n' 1 (m + 1) R.std.1.p_unif R.std.1.res_card R.std.1.prime.two_le
    (by have := R.std.1.two_le; omega) e he
  obtain ⟨g', hg', hsrc', htgt'⟩ := lc_main p n' 1 (m + 1) R.std.1.p_unif R.std.1.res_card R.std.1.prime.two_le
    (by have := R.std.1.two_le; omega) e' he'
  have hug : IsUnit g := (Matrix.isUnit_iff_isUnit_det _).2 hg
  have hug' : IsUnit g' := (Matrix.isUnit_iff_isUnit_det _).2 hg'
  let γ : GL (Fin (m + 1)) R.Qq := hug'.unit * hug.unit⁻¹
  have hγg : (γ : Matrix (Fin (m + 1)) (Fin (m + 1)) R.Qq) * g = g' := by
    have : γ * hug.unit = hug'.unit := by simp [γ]
    have h2 := congrArg Units.val this
    simpa using h2
  have hee : e' = mapE γ e := by
    cases e with
    | mk s tg =>
      cases e' with
      | mk s' tg' =>
        simp only at hsrc htgt hsrc' htgt'
        simp only [mapE]
        rw [hsrc, htgt, hsrc', htgt', map_colSpan, map_colSpan, ← Matrix.mul_assoc, hγg]
  obtain ⟨T, hT1, hT2⟩ := hFun p n' R m lam0 hDom γ
  have hedge : ∀ e'' : Edge R.W R.Qq (m + 1), IsEdge p n' 1 e'' → IsEdge p n' 1 (mapE γ⁻¹ e'') :=
    fun e'' h => nt_edge_map p n' 1 γ⁻¹ _ _ h
  have hsrcC : ∀ x, x ∈ CCL R lam0 t c e → T x ∈ CCL R lam0 t c (mapE γ e) := by
    intro x hx
    refine Submodule.mem_inf.2 ⟨Submodule.mem_inf.2 ⟨?_, ?_⟩, ?_⟩
    · exact scale_alt T _ (hT1 e.src he.1) hx.1.1
    · exact scale_alt T _ (hT2 e he) hx.1.2
    · rw [Submodule.mem_iInf]
      intro e''
      rw [Submodule.mem_iInf]
      rintro ⟨h1, h2, h3⟩
      have h4 : (mapE γ⁻¹ e'').src = e.src := by
        show e''.src.map (nt_phi R.W γ⁻¹) = e.src
        rw [h2]
        exact nt_map_inv γ e.src
      have h5 : mapE γ⁻¹ e'' ≠ e := by
        intro h
        apply h3
        rw [← h, mapE_inv]
      have h6 := CCL_other R lam0 t c e (mapE γ⁻¹ e'') (hedge e'' h1) h4 h5 hx
      have h7 := apply_mem_scale_scale_of_mem_iff T _ _ (hT2 (mapE γ⁻¹ e'') (hedge e'' h1)) h6
      rwa [mapE_inv] at h7
  rw [hee]
  rcases hfac with h0 | ⟨x, y, hx, hy, z, M, hz, hv, hM⟩
  · exact Or.inl h0
  · refine Or.inr ⟨fun i => T (x i), fun l => (y l).comp T.symm.toLinearMap, fun i => hsrcC _ (hx i),
      fun l => comp_symm_mem_scale_dualLat_of_mem_iff T _ (hT2 e he) (hy l), z, M, hz, hv, fun i j => ?_⟩
    rw [← hM i j]
    refine Finset.sum_congr rfl fun l _ => ?_
    congr 1
    unfold be
    rw [LinearMap.comp_apply, ← map_smul]
    simp

theorem nLeD {p n' : ℕ} (R : RS p n') {m : ℕ} (lam0 : Fin n' → Fin (m + 1) → ℤ) (hDom : IsDominant lam0)
    (t c n : ℕ) (D : ℝ) (hD0 : 0 ≤ D) (hDc : 2 * D < c) (e : Edge R.W R.Qq (m + 1)) (he : IsEdge p n' 1 e)
    (hfac : FactorsLE p (be (Kf := R.Kf) p 1 lam0) (CCL R lam0 t c e) (Re' p R.ι R.σ R.w 1 lam0 e) n D) :
    (n : ℝ) ≤ dL R lam0 :=
  nLeD_all R lam0 hDom t c n D hD0 hDc fun e' he' => nEdge R lam0 hDom t c n D e e' he he' hfac

end Formalism.MainNotions.flipOneThree.Pf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.NLeDAll =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudCount =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudCount", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FactorsLEOfFintype\nimport Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LatticeCountPrimeMonoLevel\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.NLeDAll\nimport Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RhoLowerBoundOfEdgeCount\nimport Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RhoSumBoundOfMapsSplitting\nimport Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RhoUpperBoundOfEdgeCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.PolynomialDimension.WeylDim\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.flipOneThree.Pf

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree Formalism.CountingSumsFrames

variable {p n' : ℕ} (R : RS p n') {m : ℕ}

theorem RS.pK_ne : (p : R.Kf) ≠ 0 := by
  obtain ⟨hS, hw, -, -⟩ := R.std
  haveI := hS.frac_O
  have hO : (p : R.O) ≠ 0 := by
    rw [← hS.w_sq]
    exact pow_ne_zero _ hw.ne_zero
  intro h
  apply hO
  apply IsFractionRing.injective R.O R.Kf
  rw [map_zero, map_natCast]
  exact h

theorem be_pull (lam mu : Fin n' → Fin (m + 1) → ℤ) (f : Vsp R.Kf lam →ₗ[R.Kf] Vsp R.Kf mu)
    (g : Module.Dual R.Kf (Vsp R.Kf mu)) (v : Vsp R.Kf lam) :
    be p 1 lam v (((p : R.Kf) ^ (Ar 1 mu - Ar 1 lam)) • (g ∘ₗ f)) = be p 1 mu (f v) g := by
  unfold be
  rw [LinearMap.smul_apply, LinearMap.comp_apply, map_smul, map_smul, map_smul, smul_eq_mul, smul_eq_mul,
    smul_eq_mul, ← mul_assoc, ← zpow_add₀ R.pK_ne, sub_add_cancel]

theorem cloud_count (hS : LemmaSMat) (hRet : LatRetract) (hBP : BePerfect) (hD3 : DualHeightBasis)
    (H Hp lam : Fin n' → Fin (m + 1) → ℤ) (hdH : IsDominant H) (hdHp : IsDominant Hp)
    (e : Edge R.W R.Qq (m + 1)) (he : IsEdge p n' 1 e) (t c₂ c₃ : ℕ) (hc : c₃ ≤ c₂) (D₁ : ℝ) (hD : 0 ≤ D₁)
    (hDc : 4 * D₁ < c₂) (nb kk : ℕ) (io : Vsp R.Kf H →ₗ[R.Kf] Vsp R.Kf Hp)
    (U : Fin nb → Vsp R.Kf H →ₗ[R.Kf] Vsp R.Kf lam) (L : Fin nb → Vsp R.Kf lam →ₗ[R.Kf] Vsp R.Kf Hp)
    (ka : Fin nb → ℕ) (hka : ∀ b, ka b ≤ kk)
    (h24 : ∀ a b F, L a (U b F) = if a = b then ((p : R.Kf) ^ ka b) • io F else 0)
    (hiso : ∀ F, io F ∈ Re p R.ι R.σ R.w 1 Hp e ↔ F ∈ Re p R.ι R.σ R.w 1 H e)
    (hio : ∀ F ∈ CCL R H t c₂ e, io F ∈ CCL R Hp t c₂ e)
    (hU : ∀ b, ∀ F ∈ CCL R H t c₂ e, U b F ∈ CCL R lam t c₂ e)
    (hL : ∀ a, ∀ g ∈ CCL' R Hp t c₂ e, ((p : R.Kf) ^ (Ar 1 Hp - Ar 1 lam)) • (g ∘ₗ L a) ∈ CCL' R lam t c₃ e)
    (n1 n2 : ℕ) (f1 : FacL R H t c₂ e n1 D₁) (f2 : FacL R Hp t c₂ e n2 D₁) :
    ∃ r : ℕ, (n1 : ℝ) + n2 - dL R Hp ≤ r ∧ FacL R lam t c₃ e (nb * r) (2 * D₁ + kk) := by
  classical
  have : IsFractionRing R.O R.Kf := R.std.1.frac_O
  obtain ⟨x1, y1, z1, hx1, hy1, hz1, hv1, hG1⟩ := wit_of_factors R H hD f1
  obtain ⟨x2, y2, z2, hx2, hy2, hz2, hv2, hG2⟩ := wit_of_factors R Hp hD f2
  have hw0 := R.w_ne

  obtain ⟨bH, πH, -, -, -, -, hReH, -⟩ :=
    hD3 p n' R.W R.Qq R.O R.Kf R.ι R.σ R.jO R.w R.std.1 m 1 H hdH e he
  obtain ⟨bP, πP, -, -, -, -, hReP, -⟩ :=
    hD3 p n' R.W R.Qq R.O R.Kf R.ι R.σ R.jO R.w R.std.1 m 1 Hp hdHp e he
  let cH := bH.isUnitSMul (w := fun i => algebraMap R.O R.Kf R.w ^ (-order 1 H (πH i)))
    (fun i => (zpow_ne_zero _ hw0).isUnit)
  let cP := bP.isUnitSMul (w := fun i => algebraMap R.O R.Kf R.w ^ (-order 1 Hp (πP i)))
    (fun i => (zpow_ne_zero _ hw0).isUnit)
  have hcH : Submodule.span R.O (Set.range cH) = Re p R.ι R.σ R.w 1 H e := by
    rw [← hReH]
    congr 2
    funext i
    exact Module.Basis.isUnitSMul_apply _ _
  have hcP : Submodule.span R.O (Set.range cP) = Re p R.ι R.σ R.w 1 Hp e := by
    rw [← hReP]
    congr 2
    funext i
    exact Module.Basis.isUnitSMul_apply _ _
  obtain ⟨ret, hret1, hret2⟩ := hRet R.O R.Kf _ _ _ _ cH cP io (by intro F; rw [hcH, hcP]; exact hiso F)
  rw [hcH, hcP] at hret2

  let tt : Fin n1 → Module.Dual R.Kf (Vsp R.Kf Hp) := fun l => ((p : R.Kf) ^ (Ar 1 H - Ar 1 Hp)) • (y1 l ∘ₗ ret)
  have htt : ∀ F l, be p 1 Hp F (tt l) = be p 1 H (ret F) (y1 l) := fun F l => be_pull R Hp H ret (y1 l) F
  have httm : ∀ l, tt l ∈ Re' p R.ι R.σ R.w 1 Hp e := fun l =>
    ((hBP p n' R.W R.Qq R.O R.Kf R.ι R.σ R.jO R.w R.std.1 m 1 Hp hdHp e he).1 (tt l)).2 fun F hF => by
      rw [htt]
      obtain ⟨b, hb⟩ := be_Re R H e (hret2 F hF) (hy1 l).1.2
      exact ⟨b, hb.symm⟩
  have hGt : ∀ k k', be p 1 Hp (io (x1 k)) (tt k') =
      algebraMap R.O R.Kf ((z1 • (1 : Matrix (Fin n1) (Fin n1) R.O)) k k') := by
    intro k k'
    rw [htt, hret1, hG1, Matrix.smul_apply, Matrix.one_apply, smul_eq_mul]
    split_ifs <;> simp
  have hNint : ∀ i b, ∃ g : R.O, be p 1 Hp (io (x1 i)) (y2 b) = algebraMap R.O R.Kf g :=
    fun i b => be_Re R Hp e (hio _ (hx1 i)).1.2 (hy2 b).1.2
  choose Nm hNm using hNint
  have hBint : ∀ a l, ∃ g : R.O, be p 1 Hp (x2 a) (tt l) = algebraMap R.O R.Kf g :=
    fun a l => be_Re R Hp e (hx2 a).1.2 (httm l)
  choose Bm hBm using hBint
  obtain ⟨r, s, hrs, ⟨P, Q, hPQ⟩, ⟨P', P'', M, hPP, hblk⟩⟩ :=
    hS R.O n1 n2 z1 z2 hz1 hz2 (Matrix.of Nm) (Matrix.of Bm)
  have hz12 : z1 * z2 ≠ 0 := mul_ne_zero hz1 hz2
  have hv12 : vLEO p (z1 * z2) (2 * D₁) := by
    have := vLEO_mul hz1 hz2 hv1 hv2
    rwa [← two_mul] at this

  let Xb : Fin s ⊕ Fin n2 → Vsp R.Kf Hp :=
    Sum.elim (fun i => ∑ k, algebraMap R.O R.Kf (P' i k) • io (x1 k)) x2
  let Yb : Fin s ⊕ Fin n2 → Module.Dual R.Kf (Vsp R.Kf Hp) := Sum.elim (fun l => ∑ k, P'' k l • tt k) y2
  have hXb : ∀ i, Xb i ∈ CCL R Hp t c₂ e := by
    rintro (i | a)
    · refine Submodule.sum_mem _ fun k _ => ?_
      rw [algebraMap_smul]
      exact Submodule.smul_mem _ _ (hio _ (hx1 k))
    · exact hx2 a
  have hYb : ∀ i, Yb i ∈ Re' p R.ι R.σ R.w 1 Hp e := by
    rintro (l | b)
    · exact Submodule.sum_mem _ fun k _ => Submodule.smul_mem _ _ (httm k)
    · exact (hy2 b).1.2
  have hGb : ∀ i j, be p 1 Hp (Xb i) (Yb j) = algebraMap R.O R.Kf
      (Matrix.fromBlocks (z1 • (1 : Matrix (Fin s) (Fin s) R.O)) (P' * Matrix.of Nm) (Matrix.of Bm * P'')
        (z2 • (1 : Matrix (Fin n2) (Fin n2) R.O)) i j) := by
    rintro (i | a) (l | b)
    · show be p 1 Hp (∑ k, algebraMap R.O R.Kf (P' i k) • io (x1 k)) (∑ k, P'' k l • tt k) = _
      rw [be_mat R Hp (fun k => io (x1 k)) tt _ hGt P' P'' i l, Matrix.fromBlocks_apply₁₁]
      congr 1
      rw [Matrix.mul_smul, Matrix.mul_one, Matrix.smul_mul, hPP]
    · show be p 1 Hp (∑ k, algebraMap R.O R.Kf (P' i k) • io (x1 k)) (y2 b) = _

      rw [be_sum_left, Matrix.fromBlocks_apply₁₂, Matrix.mul_apply, map_sum]
      exact Finset.sum_congr rfl fun k _ => by rw [hNm, map_mul, Matrix.of_apply]
    · show be p 1 Hp (x2 a) (∑ k, P'' k l • tt k) = _

      rw [be_sum, Matrix.fromBlocks_apply₂₁, Matrix.mul_apply, map_sum]
      exact Finset.sum_congr rfl fun k _ => by rw [hBm, map_mul, Matrix.of_apply]
    · show be p 1 Hp (x2 a) (y2 b) = _
      rw [hG2, Matrix.fromBlocks_apply₂₂, Matrix.smul_apply, Matrix.one_apply, smul_eq_mul]
      split_ifs <;> simp
  have hbadF : FactorsLE p (be (Kf := R.Kf) p 1 Hp) (CCL R Hp t c₂ e) (Re' p R.ι R.σ R.w 1 Hp e)
      (Fintype.card (Fin s ⊕ Fin n2)) (2 * D₁) := by
    refine factorsLE_of_fintype p _ _ _ Xb (fun j => ∑ l, M l j • Yb l) hXb
      (fun j => Submodule.sum_mem _ fun l _ => Submodule.smul_mem _ _ (hYb l)) (z1 * z2) hz12 hv12 fun i j => ?_
    rw [be_sum]
    have : ∑ l, be p 1 Hp (Xb i) (Yb l) * algebraMap R.O R.Kf (M l j) = algebraMap R.O R.Kf
        ((Matrix.fromBlocks (z1 • (1 : Matrix (Fin s) (Fin s) R.O)) (P' * Matrix.of Nm) (Matrix.of Bm * P'')
          (z2 • (1 : Matrix (Fin n2) (Fin n2) R.O)) * M) i j) := by

      rw [Matrix.mul_apply, map_sum]
      exact Finset.sum_congr rfl fun l _ => by rw [hGb, map_mul]
    rw [this, hblk, Matrix.smul_apply, Matrix.one_apply, smul_eq_mul]
    split_ifs <;> simp
  have hbad : ((s + n2 : ℕ) : ℝ) ≤ dL R Hp := by
    have hcard : Fintype.card (Fin s ⊕ Fin n2) = s + n2 := by simp
    rw [hcard] at hbadF
    exact nLeD R Hp hdHp t c₂ (s + n2) (2 * D₁) (by linarith) (by linarith) e he hbadF

  refine ⟨r, ?_, ?_⟩
  · have h1 : ((r + s : ℕ) : ℝ) = n1 := by exact_mod_cast hrs
    push_cast at h1 hbad
    linarith
  let Fg : Fin r → Vsp R.Kf H := fun i => ∑ k, algebraMap R.O R.Kf (P i k) • x1 k
  let gg : Fin r → Module.Dual R.Kf (Vsp R.Kf Hp) := fun j => ∑ b, Q b j • y2 b
  have hFg : ∀ i, Fg i ∈ CCL R H t c₂ e := fun i => by
    refine Submodule.sum_mem _ fun k _ => ?_
    rw [algebraMap_smul]
    exact Submodule.smul_mem _ _ (hx1 k)
  have hgg : ∀ j, gg j ∈ CCL' R Hp t c₂ e := fun j =>
    Submodule.sum_mem _ fun b _ => Submodule.smul_mem _ _ (hy2 b)
  have hFgg : ∀ i j, be p 1 Hp (io (Fg i)) (gg j) = if i = j then algebraMap R.O R.Kf (z1 * z2) else 0 := by
    intro i j
    have e1 : io (Fg i) = ∑ k, algebraMap R.O R.Kf (P i k) • io (x1 k) := by

      simp only [Fg, map_sum, map_smul]
    rw [e1, be_mat R Hp (fun k => io (x1 k)) y2 (Matrix.of Nm) (fun k k' => hNm k k') P Q i j, hPQ,
      Matrix.smul_apply, Matrix.one_apply, smul_eq_mul]
    split_ifs <;> simp
  have hcardg : Fintype.card (Fin nb × Fin r) = nb * r := by simp
  rw [← hcardg]
  refine factorsLE_of_fintype p _ _ _ (fun x : Fin nb × Fin r => U x.1 (Fg x.2))
    (fun y : Fin nb × Fin r => ((p : R.O) ^ (kk - ka y.1)) •
      (((p : R.Kf) ^ (Ar 1 Hp - Ar 1 lam)) • (gg y.2 ∘ₗ L y.1)))
    (fun x => CCL_anti_c R lam hc t e (hU x.1 _ (hFg x.2)))
    (fun y => Submodule.smul_mem _ _ (hL y.1 _ (hgg y.2)))
    ((p : R.O) ^ kk * (z1 * z2)) (mul_ne_zero (pow_ne_zero _ R.p_ne) hz12)
    (vLEO_pow_mul R.p_ne R.p_not_unit hz12 kk hv12) ?_
  rintro ⟨b, i⟩ ⟨a, j⟩
  show be p 1 lam (U b (Fg i)) (((p : R.O) ^ (kk - ka a)) •
      (((p : R.Kf) ^ (Ar 1 Hp - Ar 1 lam)) • (gg j ∘ₗ L a))) = _
  rw [be_smul, be_pull, h24]
  by_cases hab : a = b
  · subst hab
    rw [if_pos rfl, be_smulK_left, hFgg]
    by_cases hij : i = j
    · subst hij
      rw [if_pos rfl, if_pos rfl]
      simp only [map_mul, map_pow, map_natCast]
      rw [← mul_assoc, ← pow_add, Nat.sub_add_cancel (hka a)]
    · have : ((a, i) : Fin nb × Fin r) ≠ (a, j) := fun h => hij (Prod.mk.inj h).2
      rw [if_neg hij, if_neg this, mul_zero, mul_zero]
  · have : ((b, i) : Fin nb × Fin r) ≠ (a, j) := fun h => hab (Prod.mk.inj h).1.symm
    rw [if_neg hab, if_neg this]
    simp [be]

end Formalism.MainNotions.flipOneThree.Pf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudCount =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LemmaSMat =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LemmaSMat", "h": "module\n\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\npublic import Mathlib.Data.Matrix.ColumnRowPartitioned\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\npublic import Mathlib.LinearAlgebra.Matrix.NonsingularInverse\npublic import Mathlib.LinearAlgebra.Matrix.SchurComplement\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Basic\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.flipOneThree.Pf.KP

open Module

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

private theorem smt_unit {s ρ : ℕ} (E : Matrix (Fin s) (Fin ρ) O) (C : Matrix (Fin ρ) (Fin s) O)
    (hE : ∀ i j, E i j ∈ IsLocalRing.maximalIdeal O) : IsUnit (1 - E * C).det := by
  rw [← IsLocalRing.residue_ne_zero_iff_isUnit, RingHom.map_det]
  have hE0 : E.map (IsLocalRing.residue O) = 0 := by
    ext i j
    simpa [Matrix.map_apply, IsLocalRing.residue_eq_zero_iff] using hE i j
  have h : (RingHom.mapMatrix (IsLocalRing.residue O)) (1 - E * C) = 1 := by
    rw [map_sub, map_one, RingHom.mapMatrix_apply, Matrix.map_mul, hE0, Matrix.zero_mul, sub_zero]
  rw [h, Matrix.det_one]
  exact one_ne_zero

private theorem smt_block {s ρ : ℕ} (z1 z2 : O) (E : Matrix (Fin s) (Fin ρ) O)
    (C : Matrix (Fin ρ) (Fin s) O) (hE : ∀ i j, E i j ∈ IsLocalRing.maximalIdeal O) :
    ∃ M : Matrix (Fin s ⊕ Fin ρ) (Fin s ⊕ Fin ρ) O,
      Matrix.fromBlocks (z1 • (1 : Matrix (Fin s) (Fin s) O)) ((z1 * z2) • E) C
        (z2 • (1 : Matrix (Fin ρ) (Fin ρ) O)) * M =
      (z1 * z2) • (1 : Matrix (Fin s ⊕ Fin ρ) (Fin s ⊕ Fin ρ) O) := by
  have hU := smt_unit E C hE
  have hV : IsUnit (1 - C * E).det := by rw [Matrix.det_one_sub_mul_comm]; exact hU
  have hUi : (1 - E * C) * (1 - E * C)⁻¹ = 1 := Matrix.mul_nonsing_inv _ hU
  have hVi : (1 - C * E) * (1 - C * E)⁻¹ = 1 := Matrix.mul_nonsing_inv _ hV
  refine ⟨Matrix.fromBlocks (z2 • (1 - E * C)⁻¹) (-(z1 * z2) • (E * (1 - C * E)⁻¹))
    (-(C * (1 - E * C)⁻¹)) (z1 • (1 - C * E)⁻¹), ?_⟩
  rw [Matrix.fromBlocks_multiply, ← Matrix.fromBlocks_one, Matrix.fromBlocks_smul, smul_zero,
    Matrix.fromBlocks_inj]
  refine ⟨?_, ?_, ?_, ?_⟩
  · have e : (z1 * z2) • (1 : Matrix (Fin s) (Fin s) O) = (z1 * z2) • ((1 - E * C) * (1 - E * C)⁻¹) := by
      rw [hUi]
    rw [e]
    simp only [Matrix.sub_mul, Matrix.one_mul, Matrix.smul_mul, Matrix.mul_smul, Matrix.mul_neg,
      Matrix.mul_assoc, smul_smul]
    module
  · simp only [Matrix.one_mul, Matrix.smul_mul, Matrix.mul_smul, Matrix.mul_neg, smul_smul, neg_smul]
    module
  · simp only [Matrix.one_mul, Matrix.smul_mul, Matrix.mul_smul, Matrix.mul_neg]
    module
  · have e : (z1 * z2) • (1 : Matrix (Fin ρ) (Fin ρ) O) = (z1 * z2) • ((1 - C * E) * (1 - C * E)⁻¹) := by
      rw [hVi]
    rw [e]
    simp only [Matrix.sub_mul, Matrix.one_mul, Matrix.smul_mul, Matrix.mul_smul, Matrix.mul_neg,
      Matrix.mul_assoc, smul_smul, neg_smul]
    module

theorem lemmaSMat {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (σ ρ : ℕ) (z1 z2 : O) (h1 : z1 ≠ 0) (h2 : z2 ≠ 0) (N : Matrix (Fin σ) (Fin ρ) O) (B : Matrix (Fin ρ) (Fin σ) O) :
  ∃ (r s : ℕ), r + s = σ ∧
    (∃ (P : Matrix (Fin r) (Fin σ) O) (Q : Matrix (Fin ρ) (Fin r) O), P * N * Q = (z1 * z2) • (1 : Matrix (Fin r) (Fin r) O)) ∧
    (∃ (P' : Matrix (Fin s) (Fin σ) O) (P'' : Matrix (Fin σ) (Fin s) O) (M : Matrix (Fin s ⊕ Fin ρ) (Fin s ⊕ Fin ρ) O), P' * P'' = 1 ∧
      Matrix.fromBlocks (z1 • (1 : Matrix (Fin s) (Fin s) O)) (P' * N) (B * P'') (z2 • (1 : Matrix (Fin ρ) (Fin ρ) O)) * M = (z1 * z2) • (1 : Matrix (Fin s ⊕ Fin ρ) (Fin s ⊕ Fin ρ) O)) := by
  classical
  have hz0 : z1 * z2 ≠ 0 := mul_ne_zero h1 h2
  have key : ∀ (n : ℕ) (N : Matrix (Fin n) (Fin ρ) O), ∃ (r s : ℕ), r + s = n ∧
      (∃ (P : Matrix (Fin r) (Fin n) O) (Q : Matrix (Fin ρ) (Fin r) O),
        P * N * Q = (z1 * z2) • (1 : Matrix (Fin r) (Fin r) O)) ∧
      (∃ (P' : Matrix (Fin s) (Fin n) O) (P'' : Matrix (Fin n) (Fin s) O), P' * P'' = 1 ∧
        ∀ i j, ∃ e ∈ IsLocalRing.maximalIdeal O, (P' * N) i j = z1 * z2 * e) := by
    intro n
    induction n with
    | zero =>
      intro N
      refine ⟨0, 0, rfl, ⟨0, 0, ?_⟩, ⟨0, 0, ?_, fun i => i.elim0⟩⟩
      · ext i; exact i.elim0
      · ext i; exact i.elim0
    | succ n ih =>
      intro N
      by_cases hall : ∀ i j, ∃ e ∈ IsLocalRing.maximalIdeal O, N i j = z1 * z2 * e
      · refine ⟨0, n + 1, by omega, ⟨0, 0, ?_⟩, ⟨1, 1, Matrix.one_mul 1, ?_⟩⟩
        · ext i; exact i.elim0
        · intro i j; rw [Matrix.one_mul]; exact hall i j
      obtain ⟨ia, hia⟩ := not_forall.mp hall
      obtain ⟨ja, hna⟩ := not_forall.mp hia
      obtain ⟨⟨i0, j0⟩, -, hmin⟩ := Finset.exists_min_image (Finset.univ : Finset (Fin (n + 1) × Fin ρ))
        (fun p => IsDiscreteValuationRing.addVal O (N p.1 p.2)) ⟨(ia, ja), Finset.mem_univ _⟩
      have hdiv : ∀ p : Fin (n + 1) × Fin ρ, N i0 j0 ∣ N p.1 p.2 := fun p =>
        (IsDiscreteValuationRing.addVal_le_iff_dvd).mp (hmin p (Finset.mem_univ _))
      have haz : N i0 j0 ∣ z1 * z2 := by
        by_contra hnd
        rcases le_total (IsDiscreteValuationRing.addVal O (N i0 j0))
            (IsDiscreteValuationRing.addVal O (z1 * z2)) with h | h
        · exact hnd ((IsDiscreteValuationRing.addVal_le_iff_dvd).mp h)
        · obtain ⟨e, he⟩ := (IsDiscreteValuationRing.addVal_le_iff_dvd).mp h
          have hem : e ∈ IsLocalRing.maximalIdeal O := by
            rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
            rintro ⟨u, rfl⟩
            exact hnd ⟨↑u⁻¹, by rw [he, mul_assoc, Units.mul_inv, mul_one]⟩
          apply hna
          obtain ⟨b, hb⟩ : N i0 j0 ∣ N ia ja := hdiv (ia, ja)
          exact ⟨e * b, Ideal.mul_mem_right _ _ hem, by rw [hb, he, mul_assoc]⟩
      obtain ⟨t, ht⟩ := haz
      choose f hf using hdiv
      have hf' : ∀ i l, N i l = N i0 j0 * f (i, l) := fun i l => hf (i, l)
      have ha0 : N i0 j0 ≠ 0 := by
        intro h0; apply hz0; rw [ht, h0, zero_mul]
      have hf00 : f (i0, j0) = 1 := by
        apply mul_left_cancel₀ ha0
        rw [mul_one]; exact (hf' i0 j0).symm
      let N1 : Matrix (Fin n) (Fin ρ) O :=
        Matrix.of fun k l => N (i0.succAbove k) l - f (i0.succAbove k, j0) * N i0 l
      obtain ⟨r1, s1, hrs, ⟨P1, Q1, hPQ⟩, ⟨P1', P1'', hP1, hgood⟩⟩ := ih N1
      let S : Matrix (Fin n) (Fin (n + 1)) O := Matrix.of fun k i =>
        (if i = i0.succAbove k then 1 else 0) - (if i = i0 then f (i0.succAbove k, j0) else 0)
      let Em : Matrix (Fin (n + 1)) (Fin n) O := Matrix.of fun i k => if i = i0.succAbove k then 1 else 0
      let Ei : Matrix (Fin 1) (Fin (n + 1)) O := Matrix.of fun _ i => if i = i0 then t else 0
      let ej : Matrix (Fin ρ) (Fin 1) O := Matrix.of fun l _ => if l = j0 then 1 else 0
      let dd : Matrix (Fin 1) (Fin ρ) O := Matrix.of fun _ l => f (i0, l)
      let Q1' : Matrix (Fin ρ) (Fin r1) O := Q1 - ej * (dd * Q1)
      have hSN : S * N = N1 := by
        ext k l
        simp [S, N1, Matrix.mul_apply, sub_mul, Finset.sum_sub_distrib, ite_mul]
      have hSE : S * Em = 1 := by
        ext k k'
        have hne : i0 ≠ i0.succAbove k' := Fin.ne_succAbove i0 k'
        have hne' : i0.succAbove k' ≠ i0 := Fin.succAbove_ne i0 k'
        simp only [S, Em, Matrix.mul_apply, Matrix.of_apply, sub_mul, Finset.sum_sub_distrib, ite_mul,
          one_mul, zero_mul, Finset.sum_ite_eq', Finset.mem_univ, if_true, Matrix.one_apply]
        simp [hne]
      have hrow : Ei * N = (z1 * z2) • dd := by
        ext i l
        simp [Ei, dd, Matrix.mul_apply, ite_mul]
        rw [hf' i0 l, ht]; ring
      have hdd : dd * ej = 1 := by
        ext i j
        fin_cases i; fin_cases j
        simp [dd, ej, Matrix.mul_apply, hf00]
      have hN1e : N1 * ej = 0 := by
        ext k j
        simp [N1, ej, Matrix.mul_apply]
        rw [hf' (i0.succAbove k) j0]; ring
      have hblocks : Matrix.fromRows Ei (P1 * S) * N * Matrix.fromCols ej Q1' =
          (z1 * z2) • (1 : Matrix (Fin 1 ⊕ Fin r1) (Fin 1 ⊕ Fin r1) O) := by
        rw [Matrix.fromRows_mul, Matrix.fromRows_mul_fromCols, ← Matrix.fromBlocks_one,
          Matrix.fromBlocks_smul, smul_zero, smul_zero, Matrix.fromBlocks_inj]
        refine ⟨?_, ?_, ?_, ?_⟩
        · rw [hrow, Matrix.smul_mul, hdd]
        · rw [hrow, Matrix.mul_sub, Matrix.smul_mul, Matrix.smul_mul, ← Matrix.mul_assoc dd ej, hdd,
            Matrix.one_mul, sub_self]
        · rw [Matrix.mul_assoc P1 S N, hSN, Matrix.mul_assoc, hN1e, Matrix.mul_zero]
        · rw [Matrix.mul_assoc P1 S N, hSN, Matrix.mul_sub, ← Matrix.mul_assoc (P1 * N1) ej,
            Matrix.mul_assoc P1 N1 ej, hN1e, Matrix.mul_zero, Matrix.zero_mul, sub_zero, hPQ]
      refine ⟨1 + r1, s1, by omega, ⟨(Matrix.fromRows Ei (P1 * S)).submatrix finSumFinEquiv.symm id,
        (Matrix.fromCols ej Q1').submatrix id finSumFinEquiv.symm, ?_⟩, ⟨P1' * S, Em * P1'', ?_, ?_⟩⟩
      · rw [← Matrix.submatrix_id_id N, ← Matrix.submatrix_mul _ _ _ _ _ Function.bijective_id,
          ← Matrix.submatrix_mul _ _ _ _ _ Function.bijective_id, hblocks]
        ext i j
        simp [Matrix.one_apply]
      · rw [Matrix.mul_assoc, ← Matrix.mul_assoc S Em, hSE, Matrix.one_mul, hP1]
      · intro i j
        rw [Matrix.mul_assoc, hSN]
        exact hgood i j
  obtain ⟨r, s, hrs, hP, P', P'', hP', hg⟩ := key σ N
  refine ⟨r, s, hrs, hP, P', P'', ?_⟩
  choose E hEm hE using hg
  obtain ⟨M, hM⟩ := smt_block z1 z2 (Matrix.of E) (B * P'') (fun i j => hEm i j)
  refine ⟨M, hP', ?_⟩
  have hPN : P' * N = (z1 * z2) • Matrix.of E := by
    ext i j
    simp [hE i j]
  rw [hPN]
  exact hM

end Formalism.MainNotions.flipOneThree.Pf.KP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LemmaSMat =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudPropOfMapsRetractionBasis =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudPropOfMapsRetractionBasis", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudBoundOfPropAndWeylDimension\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FactorsLEOfFintype\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudCount\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FactorizationBoundMonoLattices\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LemmaSMat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.flipOneThree.Pf

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree Formalism.CountingSumsFrames

def RestCloudMaps : Prop :=
  ∀ (p n' : ℕ) (R : RS p n') (mm : ℕ), 1 ≤ mm → ∀ (TT : Finset (Fin n')) (a ccl : ℕ) (aw bw : Fin n' → ℤ)
    (lam0 : Fin n' → Fin (mm + 1 + 1) → ℤ) (A B : TT → ℕ),
    IsBaseWeight TT aw bw ccl lam0 → IsDominant lam0 → (∀ s, s ∉ TT → lam0 s = 0) →
    (∀ s : TT, (A s : ℤ) = aw s - ccl ∧ (B s : ℤ) = bw s - ccl) → 2 * ccl ≤ 8 * a →
    ∀ e : Edge R.W R.Qq (mm + 1 + 1), IsEdge p n' 1 e →
    ∃ (nb : ℕ) (io : Vsp R.Kf (flatW (mm + 1) A B) →ₗ[R.Kf]
        Vsp R.Kf (flatW (mm + 1) (fun s => A s + 2 * ccl) (fun s => B s + 2 * ccl)))
      (U : Fin nb → Vsp R.Kf (flatW (mm + 1) A B) →ₗ[R.Kf] Vsp R.Kf lam0)
      (L : Fin nb → Vsp R.Kf lam0 →ₗ[R.Kf]
        Vsp R.Kf (flatW (mm + 1) (fun s => A s + 2 * ccl) (fun s => B s + 2 * ccl)))
      (ka : Fin nb → ℕ),
      (nb : ℝ) = dimCl TT lam0 ∧ (∀ b, ka b ≤ TT.card * ⌈kappaOneExponent p a (mm + 1)⌉₊) ∧
      (∀ a' b F, L a' (U b F) = if a' = b then ((p : R.Kf) ^ ka b) • io F else 0) ∧
      (∀ F, io F ∈ Re p R.ι R.σ R.w 1 (flatW (mm + 1) (fun s => A s + 2 * ccl) (fun s => B s + 2 * ccl)) e ↔
        F ∈ Re p R.ι R.σ R.w 1 (flatW (mm + 1) A B) e) ∧
      ∀ t c₂ : ℕ, 2 * TT.card * ccl ≤ c₂ →
        (∀ F ∈ CCL R (flatW (mm + 1) A B) t c₂ e,
          io F ∈ CCL R (flatW (mm + 1) (fun s => A s + 2 * ccl) (fun s => B s + 2 * ccl)) t c₂ e) ∧
        (∀ b, ∀ F ∈ CCL R (flatW (mm + 1) A B) t c₂ e, U b F ∈ CCL R lam0 t c₂ e) ∧
        (∀ a', ∀ g ∈ CCL' R (flatW (mm + 1) (fun s => A s + 2 * ccl) (fun s => B s + 2 * ccl)) t c₂ e,
          ((p : R.Kf) ^ (Ar 1 (flatW (mm + 1) (fun s => A s + 2 * ccl) (fun s => B s + 2 * ccl)) - Ar 1 lam0)) •
            (g ∘ₗ L a') ∈ CCL' R lam0 t (c₂ - 2 * TT.card * ccl) e)

theorem lemmaSMat : LemmaSMat := fun O _ _ _ σ ρ z1 z2 h1 h2 N B => KP.lemmaSMat σ ρ z1 z2 h1 h2 N B

theorem cloud_prop_of_maps_retraction_basis (hC : RestCloudMaps) (hRet : LatRetract) (hBP : BePerfect) (hD3 : DualHeightBasis) : CloudLowerBoundWeyl := by
  intro p n' R mm hmm TT a ccl aw bw lam0 A B hBase hDom hzero hAB h8 t c₂ D₁ κ₁ κ₂ hD hDc hNc hκ0 hκ1 hκ2 hρ1 hρ2 e he
  obtain ⟨nb, io, U, L, ka, hnb, hka, h24, hiso, hmem⟩ :=
    hC p n' R mm hmm TT a ccl aw bw lam0 A B hBase hDom hzero hAB h8 e he
  obtain ⟨hio, hU, hL⟩ := hmem t c₂ hNc
  obtain ⟨n1, hX1, f1⟩ := hρ1 e he
  obtain ⟨n2, hX2, f2⟩ := hρ2 e he
  obtain ⟨r, hr, hfac⟩ := cloud_count R lemmaSMat hRet hBP hD3 _ _ lam0 (flattened_weight_dominant _ _ _) (flattened_weight_dominant _ _ _) e he t c₂
    (c₂ - 2 * TT.card * ccl) (Nat.sub_le _ _) D₁ hD hDc nb (TT.card * ⌈kappaOneExponent p a (mm + 1)⌉₊) io U L ka hka h24 hiso hio
    hU hL n1 n2 f1 f2
  refine ⟨nb * r, ?_, ?_⟩
  · rw [← hnb]
    push_cast
    refine mul_le_mul_of_nonneg_left ?_ (Nat.cast_nonneg _)
    linarith
  · have : (2 * D₁ + ((TT.card * ⌈kappaOneExponent p a (mm + 1)⌉₊ : ℕ) : ℝ)) =
        2 * D₁ + (TT.card : ℝ) * (⌈kappaOneExponent p a (mm + 1)⌉₊ : ℕ) := by push_cast; ring
    rw [← this]
    exact hfac

end Formalism.MainNotions.flipOneThree.Pf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.CloudPropOfMapsRetractionBasis =====
