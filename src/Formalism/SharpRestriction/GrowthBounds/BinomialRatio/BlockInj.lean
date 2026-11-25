module

public import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.CountDefs
public import Formalism.SharpRestriction.GrowthBounds.ProjectionOfIsotypicDecomposition
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.IntegralPolyLinearMapClosed
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.BinomialRatio.BlockRank, Formalism.SharpRestriction.GrowthBounds.BinomialRatio.BlockInj

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.BinomialRatio.BlockRank =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.BinomialRatio.BlockRank", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.CountDefs\npublic import Formalism.SharpRestriction.GrowthBounds.ProjectionOfIsotypicDecomposition\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.IntegralPolyLinearMapClosed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial

namespace Formalism.MainNotions.ColumnSystems.Pf

open Formalism.MainNotions.G

section

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {N r : ℕ} [NeZero r] (D : BlockData N)

def pre (x : (Fin D.T.t → ℕ) × ℕ) : MvPolynomial (BVar N r D.T.t) (KK O) :=
  (∏ i, D.Ehat O (r := r) i ^ x.1 i) * D.Eplus O (r := r) ^ x.2 *
      (∏ i, X (scalZ N r D.T.t (Fin.castSucc i)) ^ D.T.z i) * X (scalZ N r D.T.t (Fin.last D.T.t)) ^ D.zPlus

def xiExp (N r t : ℕ) (β : Fin r → ℕ) : BVar N r t →₀ ℕ := ∑ c, Finsupp.single (xiVar N r t c) (β c)

def xiMon (K : Type) [CommRing K] (N r t : ℕ) (β : Fin r → ℕ) : MvPolynomial (BVar N r t) K :=
  monomial (xiExp N r t β) 1

theorem xiExp_xi (N r t : ℕ) (β : Fin r → ℕ) (c : Fin r) : xiExp N r t β (xiVar N r t c) = β c := by
  classical
  simp only [xiExp, Finsupp.finsetSum_apply, Finsupp.single_apply, (xiVar_inj N r t).eq_iff]
  simp

theorem xiExp_other (N r t : ℕ) (β : Fin r → ℕ) (v : BVar N r t) (hv : ∀ c, v ≠ xiVar N r t c) :
    xiExp N r t β v = 0 := by
  classical
  simp only [xiExp, Finsupp.finsetSum_apply, Finsupp.single_apply]
  exact Finset.sum_eq_zero fun c _ => if_neg fun h => hv c h.symm

theorem eq_xiExp (N r t : ℕ) (μ : BVar N r t →₀ ℕ) (h : ∀ v ∈ μ.support, ∃ c, v = xiVar N r t c) :
    μ = xiExp N r t fun c => μ (xiVar N r t c) := by
  ext v
  by_cases hv : ∃ c, v = xiVar N r t c
  · obtain ⟨c, rfl⟩ := hv
    rw [xiExp_xi]
  · rw [xiExp_other _ _ _ _ _ (fun c hc => hv ⟨c, hc⟩)]
    by_contra h0
    exact hv (h v (Finsupp.mem_support_iff.2 h0))

def ell (x : (Fin D.T.t → ℕ) × ℕ) (β : Fin r → ℕ) :
    MvPolynomial (Fin N × Fin r) (KK O) →ₗ[KK O] MvPolynomial (BVar N r D.T.t) (KK O) :=
  LinearMap.mulLeft (KK O) (pre (O := O) D x) ∘ₗ LinearMap.mulRight (KK O) (xiMon (KK O) N r D.T.t β) ∘ₗ
    (rename (chainEmb N r D.T.t)).toLinearMap

theorem ell_apply (x : (Fin D.T.t → ℕ) × ℕ) (β : Fin r → ℕ) (y : MvPolynomial (Fin N × Fin r) (KK O)) :
    ell D x β y = pre (O := O) D x * (rename (chainEmb N r D.T.t) y * xiMon (KK O) N r D.T.t β) := rfl


open Classical in
def Lv : Finset ((Fin D.T.t → ℕ) × ℕ) :=
  ((Fintype.piFinset fun i => Finset.range (D.LL.deg (D.letterAt (D.T.pos i)) + 1)) ×ˢ
    Finset.range (D.B + 1)).filter fun x => D.LevelOK x.1 x.2

theorem mem_Lv (x : (Fin D.T.t → ℕ) × ℕ) : x ∈ Lv D ↔ D.LevelOK x.1 x.2 := by
  classical
  simp only [Lv, Finset.mem_filter, Finset.mem_product, Fintype.mem_piFinset, Finset.mem_range]
  constructor
  · exact fun h => h.2
  · intro h
    exact ⟨⟨fun i => Nat.lt_succ_of_le (h.1 i).1, Nat.lt_succ_of_le (le_trans h.2 (min_le_right _ _))⟩, h⟩

def IF : Finset (Σ _ : (Fin D.T.t → ℕ) × ℕ, Fin r → ℕ) :=
  (Lv D).sigma fun x => Finset.Nat.antidiagonalTuple r (D.B - x.2)

abbrev Yx (i : Σ _ : (Fin D.T.t → ℕ) × ℕ, Fin r → ℕ) :
    Submodule (KK O) (MvPolynomial (Fin N × Fin r) (KK O)) :=
  Yjt (KK O) (r := r) (D.lettersAt i.1.1 i.1.2) D.T.J D.T.thr

instance (LL : ChainLetters N) {q : ℕ} (J : Fin q → ℕ) (M : Fin q → WithTop ℤ) :
    FiniteDimensional (KK O) (Yjt (KK O) (r := r) LL J M) :=
  haveI : FiniteDimensional (KK O) (chPol (KK O) r LL) := Formalism.MainNotions.G.Joints.isoPol_finDim (K := KK O) (r := r) LL.deg
  Submodule.finiteDimensional_of_le (inf_le_left : Yjt (KK O) (r := r) LL J M ≤ chPol (KK O) r LL)

def Ltot : (∀ i : ↥(IF (r := r) D), ↥(Yx (O := O) D i.1)) →ₗ[KK O] MvPolynomial (BVar N r D.T.t) (KK O) :=
  LinearMap.lsum (KK O) _ (KK O) fun i => ell D i.1.1 i.1.2 ∘ₗ (Yx (O := O) D i.1).subtype

theorem Ltot_apply (v : ∀ i : ↥(IF (r := r) D), ↥(Yx (O := O) D i.1)) :
    Ltot D v = ∑ i, ell D i.1.1 i.1.2 (v i : MvPolynomial (Fin N × Fin r) (KK O)) := by
  simp [Ltot]

theorem ell_mem_range (i : ↥(IF (r := r) D)) (y : MvPolynomial (Fin N × Fin r) (KK O)) (hy : y ∈ Yx (O := O) D i.1) :
    ell D i.1.1 i.1.2 y ∈ LinearMap.range (Ltot (O := O) D) := by
  classical
  refine ⟨LinearMap.single (KK O) (fun j : ↥(IF (r := r) D) => ↥(Yx (O := O) D j.1)) i ⟨y, hy⟩, ?_⟩
  rw [Ltot_apply, Finset.sum_eq_single i]
  · simp
  · intro j _ hj
    simp [LinearMap.single_apply, Pi.single_eq_of_ne hj]
  · simp

private theorem list_antidiagonal_tuple_length_eq_choose (k n : ℕ) :
    (List.Nat.antidiagonalTuple (k + 1) n).length = (n + k).choose k := by
  induction k generalizing n with
  | zero => simp
  | succ k ih =>
    rw [List.Nat.antidiagonalTuple, List.length_flatMap]
    simp only [List.length_map, ih, List.Nat.antidiagonal, List.map_map, Function.comp_def]
    have e : ((List.range (n + 1)).map fun i => (n - i + k).choose k).sum =
        ∑ j ∈ Finset.range (n + 1), (n - j + k).choose k := rfl
    rw [e]
    have h := Finset.sum_range_reflect (fun j => (j + k).choose k) (n + 1)
    simp only [add_tsub_cancel_right] at h
    rw [h, Nat.sum_range_add_choose]
    ring_nf

theorem card_xi (r b : ℕ) (hr : r ≠ 0) : (Finset.Nat.antidiagonalTuple r b).card = sdXi r b := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hr
  show (List.Nat.antidiagonalTuple (k + 1) b).length = _
  rw [list_antidiagonal_tuple_length_eq_choose, sdXi]
  simp

theorem finrank_dom : Module.finrank (KK O) (∀ i : ↥(IF (r := r) D), ↥(Yx (O := O) D i.1)) =
    ∑ x ∈ Lv D, Module.finrank (KK O) (Yjt (KK O) (r := r) (D.lettersAt x.1 x.2) D.T.J D.T.thr) *
      sdXi r (D.B - x.2) := by
  rw [Module.finrank_pi_fintype]
  rw [Finset.sum_coe_sort (IF (r := r) D) (fun i => Module.finrank (KK O) (Yx (O := O) D i))]
  unfold IF
  rw [Finset.sum_sigma]
  refine Finset.sum_congr rfl fun x _ => ?_
  change ∑ _s ∈ Finset.Nat.antidiagonalTuple r (D.B - x.2),
    Module.finrank (KK O) (Yjt (KK O) (r := r) (D.lettersAt x.1 x.2) D.T.J D.T.thr) = _
  rw [Finset.sum_const, smul_eq_mul, mul_comm, card_xi _ _ (NeZero.ne r)]

theorem xiMon_mem (b : ℕ) (β : Fin r → ℕ) (hβ : ∑ c, β c = b) : xiMon (KK O) N r D.T.t β ∈ XiPolZ O N r D.T.t b := by
  rw [XiPolZ, Submodule.mem_inf, Submodule.restrictScalars_mem]
  constructor
  · rw [MvPolynomial.mem_restrictSupport_iff]
    intro m hm
    have hm' : m = xiExp N r D.T.t β := Finset.mem_singleton.mp (MvPolynomial.support_monomial_subset hm)
    subst hm'
    refine ⟨fun v hv => ?_, ?_⟩
    · by_contra hne
      push_neg at hne
      exact (Finsupp.mem_support_iff.mp hv) (xiExp_other N r D.T.t β v hne)
    · simp only [xiExp_xi, hβ]
  · rw [GLWeightTheory.mem_integral_poly_iff_coeff]
    intro m
    classical
    rw [xiMon, MvPolynomial.coeff_monomial]
    split_ifs
    · exact ⟨1, by simp⟩
    · exact ⟨0, by simp⟩

private theorem mem_gens_span_le_range_of_levelOK (j : Fin D.T.t → ℕ) (jp : ℕ) (hlev : D.LevelOK j jp)
    (z : MvPolynomial (BVar N r D.T.t) (KK O)) (hz : z ∈ BlockData.gens O D (r := r) j jp) :
    z ∈ LinearMap.range (Ltot (O := O) D) := by
  classical
  obtain ⟨y, hy, g, hg, rfl⟩ := hz
  have hyK : y ∈ Yjt (KK O) (r := r) (D.lettersAt j jp) D.T.J D.T.thr := (Submodule.mem_inf.mp hy).1
  have hgS := (Submodule.mem_inf.mp hg).1
  rw [Submodule.restrictScalars_mem, MvPolynomial.mem_restrictSupport_iff] at hgS
  rw [g.as_sum, Finset.mul_sum]
  refine Submodule.sum_mem _ fun m hm => ?_
  obtain ⟨hsupp, hsum⟩ := hgS hm
  have hmono : monomial m (AddMonoidAlgebra.coeff g m) =
      AddMonoidAlgebra.coeff g m • xiMon (KK O) N r D.T.t (fun c => m (xiVar N r D.T.t c)) := by
    rw [xiMon, ← eq_xiExp N r D.T.t m hsupp, MvPolynomial.smul_monomial, smul_eq_mul, mul_one]
  rw [hmono, mul_smul_comm]
  refine Submodule.smul_mem _ _ ?_
  have hi : (⟨(j, jp), fun c => m (xiVar N r D.T.t c)⟩ : Σ _ : (Fin D.T.t → ℕ) × ℕ, Fin r → ℕ) ∈
      IF (r := r) D := by
    rw [IF, Finset.mem_sigma, mem_Lv, Finset.Nat.mem_antidiagonalTuple]
    exact ⟨hlev, hsum⟩
  have h2 := ell_mem_range D ⟨_, hi⟩ y hyK
  rw [ell_apply] at h2
  convert h2 using 1
  simp only [pre]
  ring

theorem span_le_range : Submodule.span (KK O) ((D.SSZ O (r := r) :
    Submodule O (MvPolynomial (BVar N r D.T.t) (KK O))) : Set (MvPolynomial (BVar N r D.T.t) (KK O))) ≤
    LinearMap.range (Ltot (O := O) D) := by
  rw [Submodule.span_le]
  intro x hx
  have key : D.SSZ O (r := r) ≤ (LinearMap.range (Ltot (O := O) D)).restrictScalars O := by
    unfold BlockData.SSZ
    rw [Submodule.span_le]
    intro z hz
    simp only [Set.mem_iUnion] at hz
    obtain ⟨j, jp, hlev, hz⟩ := hz
    exact mem_gens_span_le_range_of_levelOK D j jp hlev z hz
  exact key hx

private theorem IF_range_le_span (i : ↥(IF (r := r) D)) (y : MvPolynomial (Fin N × Fin r) (KK O))
    (hy : y ∈ Yx (O := O) D i.1) :
    ell D i.1.1 i.1.2 y ∈ Submodule.span (KK O) ((D.SSZ O (r := r) :
      Submodule O (MvPolynomial (BVar N r D.T.t) (KK O))) : Set (MvPolynomial (BVar N r D.T.t) (KK O))) := by
  classical
  obtain ⟨b, hb⟩ := IsLocalization.exist_integer_multiples_of_finset (nonZeroDivisors O) y.coeffs
  have ha0 : algebraMap O (KK O) (b : O) ≠ 0 := IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors b.2
  have hi : i.1 ∈ IF (r := r) D := i.2
  unfold IF at hi
  rw [Finset.mem_sigma, mem_Lv, Finset.Nat.mem_antidiagonalTuple] at hi
  have hyK : algebraMap O (KK O) (b : O) • y ∈
      Yjt (KK O) (r := r) (D.lettersAt i.1.1.1 i.1.1.2) D.T.J D.T.thr := Submodule.smul_mem _ _ hy
  have hyI : algebraMap O (KK O) (b : O) • y ∈ IntPol O (Fin N × Fin r) := by
    rw [GLWeightTheory.mem_integral_poly_iff_coeff]
    intro m
    by_cases hm : m ∈ y.support
    · obtain ⟨o, ho⟩ := hb (AddMonoidAlgebra.coeff y m) (MvPolynomial.coeff_mem_coeffs m (MvPolynomial.mem_support_iff.mp hm))
      refine ⟨o, ?_⟩
      rw [ho, MvPolynomial.coeff_smul, smul_eq_mul, Algebra.smul_def]
    · refine ⟨0, ?_⟩
      rw [MvPolynomial.coeff_smul, MvPolynomial.notMem_support_iff.mp hm, smul_zero, map_zero]
  have hmem : ell D i.1.1 i.1.2 (algebraMap O (KK O) (b : O) • y) ∈ D.SSZ O (r := r) := by
    apply Submodule.subset_span
    simp only [Set.mem_iUnion]
    refine ⟨i.1.1.1, i.1.1.2, hi.1, _, Submodule.mem_inf.mpr ⟨hyK, hyI⟩,
      xiMon (KK O) N r D.T.t i.1.2, xiMon_mem D _ _ hi.2, ?_⟩
    rw [ell_apply]
    simp only [pre]
    ring
  have h2 := Submodule.smul_mem (Submodule.span (KK O) ((D.SSZ O (r := r) :
      Submodule O (MvPolynomial (BVar N r D.T.t) (KK O))) : Set (MvPolynomial (BVar N r D.T.t) (KK O))))
    (algebraMap O (KK O) (b : O))⁻¹ (Submodule.subset_span hmem)
  rwa [map_smul, inv_smul_smul₀ ha0] at h2

theorem range_le_span : LinearMap.range (Ltot (O := O) D) ≤ Submodule.span (KK O) ((D.SSZ O (r := r) :
    Submodule O (MvPolynomial (BVar N r D.T.t) (KK O))) : Set (MvPolynomial (BVar N r D.T.t) (KK O))) := by
  rintro _ ⟨v, rfl⟩
  rw [Ltot_apply]
  exact Submodule.sum_mem _ fun i _ => IF_range_le_span D i (v i).1 (v i).2

open Classical in
theorem finsum_lv (f : (Fin D.T.t → ℕ) × ℕ → ℕ) :
    (∑ᶠ x : (Fin D.T.t → ℕ) × ℕ, if D.LevelOK x.1 x.2 then f x else 0) = ∑ x ∈ Lv D, f x := by
  rw [finsum_eq_sum_of_support_subset (s := Lv D)]
  · exact Finset.sum_congr rfl fun x hx => if_pos ((mem_Lv D x).1 hx)
  · intro x hx
    rw [Function.mem_support] at hx
    rw [Finset.mem_coe, mem_Lv]
    by_contra h
    exact hx (if_neg h)

theorem span_eq_range : Submodule.span (KK O) ((D.SSZ O (r := r) :
    Submodule O (MvPolynomial (BVar N r D.T.t) (KK O))) : Set (MvPolynomial (BVar N r D.T.t) (KK O))) =
    LinearMap.range (Ltot (O := O) D) := le_antisymm (span_le_range D) (range_le_span D)

end

def RestInj : Prop :=
  ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (N r : ℕ) [NeZero r] (D : BlockData N),
    Function.Injective (Ltot (O := O) (r := r) D)

theorem blockRankAt_of (h : RestInj) : BlockRankAt := by
  intro O _ _ _ N r _ D
  rw [finsum_lv, span_eq_range, ← finrank_dom]
  exact LinearMap.finrank_range_of_inj (h O N r D)

end Formalism.MainNotions.ColumnSystems.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.BinomialRatio.BlockRank =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.BinomialRatio.BlockInj =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.BinomialRatio.BlockInj", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.BlockRank\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial

namespace Formalism.MainNotions.ColumnSystems.Pf

open Formalism.MainNotions.G

section

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {N r : ℕ} [NeZero r] (D : BlockData N)

def qq (i : Fin (D.T.t + 1)) : MvPolynomial (BVar N r D.T.t) (KK O) :=
  Fin.lastCases (motive := fun _ => MvPolynomial (BVar N r D.T.t) (KK O))
    (∑ c, X (Sum.inl (Fin.castSucc D.uPos, c)) * X (xiVar N r D.T.t c))
    (fun i => ∑ c, X (Sum.inl (finPos N (D.T.pos i), c)) * X (Sum.inl (finPos N (D.T.pos i + 1), c))) i

def tauF (v : BVar N r D.T.t) : MvPolynomial (BVar N r D.T.t) (KK O) :=
  match v with
  | Sum.inl a => X (Sum.inl a)
  | Sum.inr (i, false) => X (Sum.inr (i, false))
  | Sum.inr (i, true) => X (Sum.inr (i, false)) * X (Sum.inr (i, true)) + qq (O := O) (r := r) D i

def tau : MvPolynomial (BVar N r D.T.t) (KK O) →ₐ[KK O] MvPolynomial (BVar N r D.T.t) (KK O) := aeval (tauF D)

def rhoF (v : BVar N r D.T.t) : FractionRing (MvPolynomial (BVar N r D.T.t) (KK O)) :=
  match v with
  | Sum.inl a => algebraMap _ _ (X (Sum.inl a) : MvPolynomial (BVar N r D.T.t) (KK O))
  | Sum.inr (i, false) => algebraMap _ _ (X (Sum.inr (i, false)) : MvPolynomial (BVar N r D.T.t) (KK O))
  | Sum.inr (i, true) => (algebraMap _ _ (X (Sum.inr (i, true)) : MvPolynomial (BVar N r D.T.t) (KK O)) -
      algebraMap _ _ (qq (O := O) (r := r) D i)) / algebraMap _ _ (X (Sum.inr (i, false)) : MvPolynomial (BVar N r D.T.t) (KK O))

def rho : MvPolynomial (BVar N r D.T.t) (KK O) →ₐ[KK O] FractionRing (MvPolynomial (BVar N r D.T.t) (KK O)) :=
  aeval (rhoF D)

theorem rho_inl (a : Fin (N + 1) × Fin r) : rho (O := O) (r := r) D (X (Sum.inl a)) = algebraMap _ _ (X (Sum.inl a) :
    MvPolynomial (BVar N r D.T.t) (KK O)) := by
  simp [rho, rhoF]

theorem rho_qq (i : Fin (D.T.t + 1)) : rho (O := O) (r := r) D (qq (O := O) (r := r) D i) = algebraMap _ _ (qq (O := O) (r := r) D i) := by
  refine Fin.lastCases ?_ (fun i => ?_) i

  · simp only [qq, Fin.lastCases_last, map_sum, map_mul, xiVar, rho_inl]

  · simp only [qq, Fin.lastCases_castSucc, map_sum, map_mul, rho_inl]

theorem rho_tau (f : MvPolynomial (BVar N r D.T.t) (KK O)) : rho D (tau D f) = algebraMap _ _ f := by
  have h : (rho (O := O) (r := r) D).comp (tau D) = IsScalarTower.toAlgHom (KK O) _
      (FractionRing (MvPolynomial (BVar N r D.T.t) (KK O))) := by
    apply MvPolynomial.algHom_ext
    intro v
    rcases v with a | ⟨i, _ | _⟩
    · simp [tau, tauF, rho_inl]
    · simp [tau, tauF, rho, rhoF]
    · have hz : algebraMap (MvPolynomial (BVar N r D.T.t) (KK O))
          (FractionRing (MvPolynomial (BVar N r D.T.t) (KK O))) (X (Sum.inr (i, false))) ≠ 0 :=
        (IsFractionRing.injective (MvPolynomial (BVar N r D.T.t) (KK O)) _).ne_iff.mpr (X_ne_zero _) |>.trans_eq (map_zero _)
      simp only [AlgHom.comp_apply, IsScalarTower.coe_toAlgHom']
      rw [tau, aeval_X]
      simp only [tauF]
      rw [map_add (f := _), map_mul, rho_qq]
      rw [rho, aeval_X, aeval_X]
      simp only [rhoF]
      field_simp
      ring
  exact AlgHom.congr_fun h f

theorem tau_inj : Function.Injective (tau (O := O) (r := r) D) := by
  intro f g h
  apply IsFractionRing.injective (MvPolynomial (BVar N r D.T.t) (KK O))
    (FractionRing (MvPolynomial (BVar N r D.T.t) (KK O)))
  rw [← rho_tau D f, ← rho_tau D g, h]

theorem xiMon_prod (K : Type) [CommRing K] (N r t : ℕ) (β : Fin r → ℕ) :
    xiMon K N r t β = ∏ c, X (xiVar N r t c) ^ β c := by
  simp only [xiMon, xiExp, monomial_sum_one, X_pow_eq_monomial]

def base (x : (Fin D.T.t → ℕ) × ℕ) (β : Fin r → ℕ) (y : MvPolynomial (Fin N × Fin r) (KK O)) :
    MvPolynomial (BVar N r D.T.t) (KK O) :=
  (∏ i, X (scalS N r D.T.t (Fin.castSucc i)) ^ x.1 i) * X (scalS N r D.T.t (Fin.last D.T.t)) ^ x.2 *
      (∏ i, X (scalZ N r D.T.t (Fin.castSucc i)) ^ D.T.z i) * X (scalZ N r D.T.t (Fin.last D.T.t)) ^ D.zPlus *
    (rename (chainEmb N r D.T.t) y * xiMon (KK O) N r D.T.t β)

theorem tau_rename (y : MvPolynomial (Fin N × Fin r) (KK O)) :
    tau D (rename (chainEmb N r D.T.t) y) = rename (chainEmb N r D.T.t) y := by
  have h : (tau (O := O) (r := r) D).comp (rename (chainEmb N r D.T.t)) = rename (chainEmb N r D.T.t) := by
    apply MvPolynomial.algHom_ext
    intro x
    simp [tau, tauF, chainEmb]
  exact AlgHom.congr_fun h y

theorem ell_eq_tau (x : (Fin D.T.t → ℕ) × ℕ) (β : Fin r → ℕ) (y : MvPolynomial (Fin N × Fin r) (KK O)) :
    ell D x β y = tau D (base D x β y) := by
  have h1 : ∀ i : Fin D.T.t, tau (O := O) (r := r) D (X (scalS N r D.T.t (Fin.castSucc i))) = D.Ehat O (r := r) i := by
    intro i
    simp [tau, tauF, scalS, scalZ, qq, BlockData.Ehat]
  have h2 : tau (O := O) (r := r) D (X (scalS N r D.T.t (Fin.last D.T.t))) = D.Eplus O (r := r) := by
    simp [tau, tauF, scalS, scalZ, qq, BlockData.Eplus]
  have h3 : ∀ i, tau (O := O) (r := r) D (X (scalZ N r D.T.t i)) = X (scalZ N r D.T.t i) := by
    intro i
    simp [tau, tauF, scalZ]
  have h4 : tau (O := O) (r := r) D (xiMon (KK O) N r D.T.t β) = xiMon (KK O) N r D.T.t β := by
    simp [xiMon_prod, tau, tauF, xiVar]
  simp only [ell_apply, base, pre, map_mul, map_prod, map_pow, h1, h2, h3, h4, tau_rename]

def piF (v : BVar N r D.T.t) : MvPolynomial (Fin (D.T.t + 1) ⊕ Fin r) (MvPolynomial (Fin N × Fin r) (KK O)) :=
  match v with
  | Sum.inl (a, c) => Fin.lastCases
      (motive := fun _ => MvPolynomial (Fin (D.T.t + 1) ⊕ Fin r) (MvPolynomial (Fin N × Fin r) (KK O)))
      (X (Sum.inr c)) (fun a' => C (X (a', c))) a
  | Sum.inr (_, false) => 1
  | Sum.inr (i, true) => X (Sum.inl i)

def ppi : MvPolynomial (BVar N r D.T.t) (KK O) →ₐ[KK O]
    MvPolynomial (Fin (D.T.t + 1) ⊕ Fin r) (MvPolynomial (Fin N × Fin r) (KK O)) := aeval (piF D)

theorem ppi_rename (y : MvPolynomial (Fin N × Fin r) (KK O)) : ppi D (rename (chainEmb N r D.T.t) y) = C y := by
  induction y using MvPolynomial.induction_on
  next a =>
    simp [ppi]
  next p q hp hq =>
    rw [map_add (f := _), map_add (f := _), hp, hq, C_add]
  next p x hp =>
    rw [map_mul, rename_X, map_mul, hp, ppi, aeval_X, C_mul]
    simp [piF, chainEmb]

def eExp (x : (Fin D.T.t → ℕ) × ℕ) (β : Fin r → ℕ) : (Fin (D.T.t + 1) ⊕ Fin r) →₀ ℕ :=
  (∑ i, Finsupp.single (Sum.inl (Fin.castSucc i)) (x.1 i)) + Finsupp.single (Sum.inl (Fin.last D.T.t)) x.2 +
    ∑ c, Finsupp.single (Sum.inr c) (β c)

theorem ppi_base (x : (Fin D.T.t → ℕ) × ℕ) (β : Fin r → ℕ) (y : MvPolynomial (Fin N × Fin r) (KK O)) :
    ppi D (base D x β y) = monomial (eExp D x β) y := by
  have hS : ∀ i, ppi (O := O) D (X (scalS N r D.T.t i)) = X (Sum.inl i) := by
    intro i
    simp [ppi, piF, scalS]
  have hZ : ∀ i, ppi (O := O) D (X (scalZ N r D.T.t i)) = 1 := by
    intro i
    simp [ppi, piF, scalZ]
  have hXi : ppi (O := O) D (xiMon (KK O) N r D.T.t β) = ∏ c, X (Sum.inr c) ^ β c := by
    simp [xiMon_prod, ppi, piF, xiVar]
  rw [base, eExp]
  simp only [map_mul, map_prod, map_pow, hS, hZ, hXi, ppi_rename, one_pow, Finset.prod_const_one, mul_one]
  simp only [X_pow_eq_monomial, ← monomial_sum_one, C_mul_monomial, monomial_mul, mul_one, one_mul]

theorem eExp_inj {x x' : (Fin D.T.t → ℕ) × ℕ} {β β' : Fin r → ℕ} (h : eExp D x β = eExp D x' β') :
    x = x' ∧ β = β' := by
  have hv : ∀ v, eExp D x β v = eExp D x' β' v := fun v => by rw [h]
  refine ⟨Prod.ext (funext fun i => ?_) ?_, funext fun c => ?_⟩
  · simpa [eExp, Finsupp.single_apply] using hv (Sum.inl (Fin.castSucc i))
  · simpa [eExp, Finsupp.single_apply] using hv (Sum.inl (Fin.last D.T.t))
  · simpa [eExp, Finsupp.single_apply] using hv (Sum.inr c)

theorem ltot_inj : Function.Injective (Ltot (O := O) (r := r) D) := by
  classical
  rw [injective_iff_map_eq_zero]
  intro v hv
  rw [Ltot_apply] at hv
  simp only [ell_eq_tau] at hv

  rw [← map_sum] at hv
  have h0 : ∑ i : ↥(IF (r := r) D), base D i.1.1 i.1.2 (v i : MvPolynomial (Fin N × Fin r) (KK O)) = 0 :=
    tau_inj D (by rw [hv, map_zero])
  have h1 := congrArg (ppi D) h0

  rw [map_sum, map_zero] at h1
  simp only [ppi_base] at h1
  funext i0
  have h2 := congrArg (AddMonoidAlgebra.coeff · (eExp D i0.1.1 i0.1.2)) h1
  rw [coeff_sum, AddMonoidAlgebra.coeff_zero, Finsupp.zero_apply, Finset.sum_eq_single i0] at h2
  · rw [coeff_monomial, if_pos rfl] at h2
    exact Subtype.ext h2
  · intro b _ hb
    rw [coeff_monomial, if_neg]
    intro he
    obtain ⟨e1, e2⟩ := eExp_inj D he
    exact hb (Subtype.ext (Sigma.ext e1 (heq_of_eq e2)))
  · intro h
    exact absurd (Finset.mem_univ _) h

end

theorem restInj : RestInj := fun _ _ _ _ _ _ _ D => ltot_inj D

theorem blockRankAt : BlockRankAt := blockRankAt_of restInj

end Formalism.MainNotions.ColumnSystems.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.BinomialRatio.BlockInj =====
