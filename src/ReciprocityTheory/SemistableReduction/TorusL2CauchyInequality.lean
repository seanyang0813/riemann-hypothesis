module

public import ReciprocityTheory.SemistableReduction.SphereLogIntegrableStatement
public import Mathlib.Analysis.CStarAlgebra.Module.Constructions
public import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
public import ReciprocityTheory.SemistableReduction.DetGramEqProdGramSchmidt
public import Mathlib.Analysis.InnerProductSpace.GramMatrix
public import ReciprocityTheory.SemistableReduction.LogNormCoeffSubLeBlockSphereLogMean
public import ReciprocityTheory.SemistableReduction.IntCoresA
public import Mathlib.Topology.Algebra.MvPolynomial
public import ReciprocityTheory.SemistableReduction.SJCoreA
public import ReciprocityTheory.SemistableReduction.SJCoreB
public import ReciprocityTheory.SemistableReduction.SJCoreD
public import Mathlib.MeasureTheory.Integral.CircleAverage
public import Mathlib.RingTheory.MvPolynomial.Homogeneous
public import Mathlib.Analysis.Complex.JensenFormula
public import Mathlib.Analysis.Calculus.Deriv.Polynomial
public import Mathlib.Analysis.Complex.CauchyIntegral
public import Mathlib.Analysis.SpecialFunctions.Integrability.Log
public import ReciprocityTheory.SemistableReduction.MeasurePreservingSphereMap
public import Mathlib.Analysis.Meromorphic.Basic
public import ReciprocityTheory.SemistableReduction.SphereTorusA
public import Mathlib.Algebra.MvPolynomial.Funext
public import ReciprocityTheory.SemistableReduction.SphereTorusC
public import Mathlib.Data.FunLike.Fintype
public import Mathlib.MeasureTheory.Integral.Pi
public import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
public import ReciprocityTheory.SemistableReduction.TorusMeanC
public import ReciprocityTheory.SemistableReduction.TorusMeanA
public import ReciprocityTheory.SemistableReduction.TorusMeanB
public import ReciprocityTheory.SemistableReduction.LagrangeIdealLiftsFact

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.SemistableReduction.ExpTorusMeanLeL2OfLex, ReciprocityTheory.SemistableReduction.GramOfLinearOrder, ReciprocityTheory.SemistableReduction.HeightLowerBound, ReciprocityTheory.SemistableReduction.IntCoresB, ReciprocityTheory.SemistableReduction.IntCores, ReciprocityTheory.SemistableReduction.SJCore, ReciprocityTheory.SemistableReduction.LogNormEvalZeroLeCircleAverage, ReciprocityTheory.SemistableReduction.SjHolds, ReciprocityTheory.SemistableReduction.SphereTorusB, ReciprocityTheory.SemistableReduction.SphereTorus, ReciprocityTheory.SemistableReduction.TorusLexA, ReciprocityTheory.SemistableReduction.TorusLexB, ReciprocityTheory.SemistableReduction.TorusLexC, ReciprocityTheory.SemistableReduction.TorusLex, ReciprocityTheory.SemistableReduction.TorusMeanD, ReciprocityTheory.SemistableReduction.TorusMean, ReciprocityTheory.SemistableReduction.TorusL2CauchyInequality

-- ===== clump member: ReciprocityTheory.SemistableReduction.ExpTorusMeanLeL2OfLex =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.ExpTorusMeanLeL2OfLex", "h": "module\n\npublic import ReciprocityTheory.SemistableReduction.SphereLogIntegrableStatement\npublic import Mathlib.Analysis.CStarAlgebra.Module.Constructions\npublic import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.MultiplicativeHeights

open Finset

theorem exp_torus_mean_le_l2_of_lex {ι : Type} [Fintype ι] [LinearOrder ι]
    (hBasic : TorusMeanBasicStatement) (hLex : TorusLexStatement)
    (hL2 : TorusL2Cauchy) (F : MvPolynomial ι ℂ) (hF : F ≠ 0) (s : ι →₀ ℕ)
    (Q : MvPolynomial ι ℂ) (hQ : ∀ t ∈ Q.support, toLex s < toLex t) :
    Real.exp (torusMean F) ≤ polyL2 (F * (MvPolynomial.monomial s 1 - Q)) := by
  classical
  set P := MvPolynomial.monomial s (1 : ℂ) - Q with hPdef
  have hsQ : s ∉ Q.support := fun h => lt_irrefl _ (hQ s h)
  have hQs : Q.coeff s = 0 := MvPolynomial.notMem_support_iff.mp hsQ
  have hPs : P.coeff s = 1 := by
    rw [hPdef, MvPolynomial.coeff_sub, MvPolynomial.coeff_monomial, if_pos rfl, hQs, sub_zero]
  have hP0 : P ≠ 0 := fun h => by rw [h, MvPolynomial.coeff_zero] at hPs; exact zero_ne_one hPs
  have hsupp : s ∈ P.support := by rw [MvPolynomial.mem_support_iff, hPs]; exact one_ne_zero
  have hlex : Real.log ‖P.coeff s‖ ≤ torusMean P := by
    apply hLex ι P s hsupp
    intro t ht hts
    have htQ : t ∈ Q.support := by
      by_contra h
      have h0 : P.coeff t = 0 := by
        rw [hPdef, MvPolynomial.coeff_sub, MvPolynomial.coeff_monomial, if_neg (Ne.symm hts),
          MvPolynomial.notMem_support_iff.mp h, sub_zero]
      exact (MvPolynomial.mem_support_iff.mp ht) h0
    obtain ⟨i, h1, h2⟩ := hQ t htQ
    exact ⟨i, h1, h2⟩
  rw [hPs, norm_one, Real.log_one] at hlex
  have hFP : F * P ≠ 0 := mul_ne_zero hF hP0
  have hmul := (hBasic ι).2.1 F P hF hP0
  have hL := (hL2 ι (F * P)).1 hFP
  have hpos : 0 < polyL2 (F * P) := by
    unfold polyL2
    apply Real.sqrt_pos.mpr
    obtain ⟨t, hne⟩ := MvPolynomial.ne_zero_iff.mp hFP
    have ht : t ∈ (F * P).support := MvPolynomial.mem_support_iff.mpr hne
    calc (0 : ℝ) < ‖(F * P).coeff t‖ ^ 2 := pow_pos (norm_pos_iff.mpr hne) 2
      _ ≤ _ := Finset.single_le_sum (f := fun s => ‖(F * P).coeff s‖ ^ 2)
          (fun _ _ => by positivity) ht
  calc Real.exp (torusMean F) ≤ Real.exp (torusMean (F * P)) := Real.exp_le_exp.mpr (by linarith)
    _ ≤ polyL2 (F * P) := by
      rw [← Real.exp_log hpos]; exact Real.exp_le_exp.mpr hL

def coeffVec {ι : Type*} (T : Finset (ι →₀ ℕ)) : MvPolynomial ι ℂ →ₗ[ℂ] EuclideanSpace ℂ T where
  toFun P := WithLp.toLp 2 fun t : T => P.coeff t
  map_add' P Q := by ext t; simp
  map_smul' c P := by ext t; simp

theorem coeffVec_apply {ι : Type*} (T : Finset (ι →₀ ℕ)) (P : MvPolynomial ι ℂ) (t : T) :
    coeffVec T P t = P.coeff t := rfl

theorem norm_coeffVec {ι : Type*} (T : Finset (ι →₀ ℕ)) (P : MvPolynomial ι ℂ)
    (hP : P.support ⊆ T) : ‖coeffVec T P‖ = polyL2 P := by
  classical
  rw [EuclideanSpace.norm_eq, polyL2]
  congr 1
  simp only [coeffVec_apply]
  rw [Finset.sum_coe_sort T (fun t => ‖P.coeff t‖ ^ 2)]
  exact (Finset.sum_subset hP (fun t _ ht => by
    rw [MvPolynomial.notMem_support_iff.mp ht, norm_zero]; ring)).symm

theorem polyInner_eq_inner {ι : Type*} (T : Finset (ι →₀ ℕ)) (P Q : MvPolynomial ι ℂ)
    (hP : P.support ⊆ T) : polyInner P Q = inner ℂ (coeffVec T Q) (coeffVec T P) := by
  classical
  rw [PiLp.inner_apply]
  simp only [coeffVec_apply, RCLike.inner_apply, polyInner]
  rw [Finset.sum_coe_sort T (fun t => P.coeff t * (starRingEnd ℂ) (Q.coeff t))]
  exact Finset.sum_subset hP (fun t _ ht => by rw [MvPolynomial.notMem_support_iff.mp ht, zero_mul])

theorem exists_lex_enum {ι : Type*} [LinearOrder ι] (S : Finset (ι →₀ ℕ)) :
    ∃ m : Fin S.card → (ι →₀ ℕ), (∀ k, m k ∈ S) ∧ Function.Injective m ∧
      ∀ j k, j < k → toLex (m k) < toLex (m j) := by
  classical
  let S' : Finset (Lex (ι →₀ ℕ)) := S.map toLex.toEmbedding
  have hc : S'.card = S.card := Finset.card_map _
  let f := S'.orderEmbOfFin hc
  refine ⟨fun k => ofLex (f (Fin.rev k)), ?_, ?_, ?_⟩
  · intro k
    obtain ⟨a, ha, he⟩ := Finset.mem_map.mp (S'.orderEmbOfFin_mem hc (Fin.rev k))
    have : ofLex (f (Fin.rev k)) = a := by rw [← he]; rfl
    show ofLex (f (Fin.rev k)) ∈ S
    rw [this]; exact ha
  · intro a b h
    exact Fin.rev_injective (f.injective h)
  · intro j k hjk
    show f (Fin.rev k) < f (Fin.rev j)
    exact f.strictMono (Fin.rev_lt_rev.mpr hjk)

end ReciprocityTheory.MultiplicativeHeights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.ExpTorusMeanLeL2OfLex =====

-- ===== clump member: ReciprocityTheory.SemistableReduction.GramOfLinearOrder =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.GramOfLinearOrder", "h": "module\n\npublic import ReciprocityTheory.SemistableReduction.SphereLogIntegrableStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.SemistableReduction.DetGramEqProdGramSchmidt\npublic import ReciprocityTheory.SemistableReduction.ExpTorusMeanLeL2OfLex\npublic import Mathlib.Analysis.InnerProductSpace.GramMatrix\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.MultiplicativeHeights

open Finset Pointwise

private lemma support_subset_of_mem_span_of_support_subset {ι : Type} (s : Set (ι →₀ ℕ))
    (G : Set (MvPolynomial ι ℂ)) (hG : ∀ g ∈ G, (g.support : Set (ι →₀ ℕ)) ⊆ s)
    {p : MvPolynomial ι ℂ} (hp : p ∈ Submodule.span ℂ G) : (p.support : Set (ι →₀ ℕ)) ⊆ s := by
  classical
  induction hp using Submodule.span_induction with
  | mem x hx => exact hG x hx
  | zero => simp
  | add x y _ _ hx hy =>
    intro t ht
    rcases Finset.mem_union.mp (MvPolynomial.support_add ht) with h | h
    exacts [hx h, hy h]
  | smul a x _ hx => exact fun t ht => hx (MvPolynomial.support_smul ht)

theorem gram_of_linearOrder {ι : Type} [Fintype ι] [LinearOrder ι]
    (hBasic : TorusMeanBasicStatement) (hLex : TorusLexStatement)
    (hL2 : TorusL2Cauchy) (F : MvPolynomial ι ℂ) (S : Finset (ι →₀ ℕ)) (hF : F ≠ 0) :
    Real.exp (2 * S.card * torusMean F) ≤
      (Matrix.det (Matrix.of fun m m' : S =>
        polyInner (F * MvPolynomial.monomial (m : ι →₀ ℕ) 1)
          (F * MvPolynomial.monomial (m' : ι →₀ ℕ) 1))).re := by
  obtain ⟨m, hmS, hminj, hmlex⟩ := exists_lex_enum S
  let T : Finset (ι →₀ ℕ) := S.biUnion fun s => (F * MvPolynomial.monomial s (1 : ℂ)).support
  have hPT : ∀ s ∈ S, (F * MvPolynomial.monomial s (1 : ℂ)).support ⊆ T := fun s hs =>
    Finset.subset_biUnion_of_mem (fun s => (F * MvPolynomial.monomial s (1 : ℂ)).support) hs
  let v : Fin S.card → EuclideanSpace ℂ T := fun k => coeffVec T (F * MvPolynomial.monomial (m k) 1)

  have hbij : Function.Bijective (fun k : Fin S.card => (⟨m k, hmS k⟩ : S)) := by
    rw [Fintype.bijective_iff_injective_and_card]
    exact ⟨fun a b h => hminj (congrArg Subtype.val h), by simp⟩
  let e : Fin S.card ≃ S := Equiv.ofBijective _ hbij
  have hdet : Matrix.det (Matrix.of fun a b : S =>
        polyInner (F * MvPolynomial.monomial (a : ι →₀ ℕ) 1)
          (F * MvPolynomial.monomial (b : ι →₀ ℕ) 1)) = (Matrix.gram ℂ v).det := by
    rw [← Matrix.det_submatrix_equiv_self e, ← Matrix.det_transpose (Matrix.gram ℂ v)]
    congr 1
    ext i j
    simp only [Matrix.submatrix_apply, Matrix.of_apply, Matrix.transpose_apply, Matrix.gram_apply,
      e, Equiv.ofBijective_apply]
    exact polyInner_eq_inner T _ _ (hPT _ (hmS i))
  have hT : ∀ j, ((F * MvPolynomial.monomial (m j) (1 : ℂ)).support : Set (ι →₀ ℕ)) ⊆ T :=
    fun j => by exact_mod_cast hPT _ (hmS j)

  have hδ : ∀ k : Fin S.card, ∀ x ∈ Submodule.span ℂ (v '' Set.Iio k),
      Real.exp (2 * torusMean F) ≤ ‖v k - x‖ ^ 2 := by
    intro k x hx
    have hspan : Submodule.span ℂ (v '' Set.Iio k) =
        (Submodule.span ℂ ((fun j => MvPolynomial.monomial (m j) (1 : ℂ)) '' Set.Iio k)).map
          ((coeffVec T).comp (LinearMap.mulLeft ℂ F)) := by
      rw [Submodule.map_span, ← Set.image_comp]
      rfl
    rw [hspan] at hx
    obtain ⟨Q, hQ, rfl⟩ := hx
    have hQsupp : ∀ t ∈ Q.support, toLex (m k) < toLex t := by
      have hs := support_subset_of_mem_span_of_support_subset {t | toLex (m k) < toLex t} _ (by
        rintro _ ⟨j, hj, rfl⟩ t ht
        have ht' := Finset.mem_singleton.mp (MvPolynomial.support_monomial_subset ht)
        subst ht'
        exact hmlex j k hj) hQ
      intro t ht
      exact hs ht
    have hmain := exp_torus_mean_le_l2_of_lex hBasic hLex hL2 F hF (m k) Q hQsupp
    have hFQ : ((F * Q).support : Set (ι →₀ ℕ)) ⊆ T := by
      have hmemFQ : F * Q ∈ Submodule.span ℂ
          ((LinearMap.mulLeft ℂ F) '' ((fun j => MvPolynomial.monomial (m j) (1 : ℂ)) '' Set.Iio k)) := by
        rw [← Submodule.map_span]
        exact Submodule.mem_map.mpr ⟨Q, hQ, rfl⟩
      refine support_subset_of_mem_span_of_support_subset _ _ ?_ hmemFQ
      rintro _ ⟨_, ⟨j, _, rfl⟩, rfl⟩
      exact hT j
    have hsupp : (F * (MvPolynomial.monomial (m k) 1 - Q)).support ⊆ T := by
      rw [mul_sub]
      intro t ht
      rcases Finset.mem_union.mp (MvPolynomial.support_sub _ _ _ ht) with h | h
      · exact_mod_cast hT k h
      · exact_mod_cast hFQ h
    have hsub : v k - ((coeffVec T).comp (LinearMap.mulLeft ℂ F)) Q =
        coeffVec T (F * (MvPolynomial.monomial (m k) 1 - Q)) := by
      rw [mul_sub, map_sub] <;> rfl
    rw [hsub, norm_coeffVec T _ hsupp]
    calc Real.exp (2 * torusMean F) = Real.exp (torusMean F) ^ 2 := by
          rw [sq, ← Real.exp_add, two_mul]
      _ ≤ _ := by gcongr
  have hprod := prod_le_re_det_gram S.card v (fun _ => Real.exp (2 * torusMean F))
    (fun _ => (Real.exp_pos _).le) hδ
  rw [hdet]
  refine le_trans (le_of_eq ?_) hprod
  rw [Finset.prod_const, Finset.card_univ, Fintype.card_fin, ← Real.exp_nat_mul]
  congr 1
  ring

theorem gram_holds (hBasic : TorusMeanBasicStatement) (hLex : TorusLexStatement)
    (hL2 : TorusL2Cauchy) : GramStatement := by
  unfold GramStatement
  intro ι _ _ F S hF
  letI : LinearOrder ι := LinearOrder.lift' (Fintype.equivFin ι) (Fintype.equivFin ι).injective
  convert gram_of_linearOrder hBasic hLex hL2 F S hF

end ReciprocityTheory.MultiplicativeHeights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.GramOfLinearOrder =====

-- ===== clump member: ReciprocityTheory.SemistableReduction.HeightLowerBound =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.HeightLowerBound", "h": "module\n\npublic import ReciprocityTheory.SemistableReduction.SphereLogIntegrableStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.SemistableReduction.LogNormCoeffSubLeBlockSphereLogMean\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.MultiplicativeHeights

open MeasureTheory MvPolynomial NumberField

theorem heightLowerBound_of_sj_of_sphereLogIntegrable (hSJ : SJStatement) (hInt : SphereLogIntegrableStatement) :
    HeightLowerBoundStatement := by
  intro K _ _ B n a f hn hf hmh
  classical
  obtain ⟨s, hs⟩ : ∃ s, s ∈ f.support :=
    Finset.nonempty_iff_ne_empty.mpr (by rwa [Ne, MvPolynomial.support_eq_empty])
  have hc : f.coeff s ≠ 0 := MvPolynomial.mem_support_iff.mp hs
  have h1 := neg_log_norm_coeff_le_finitePlaces f s hs
  have h2 : ∀ σ : K →+* ℂ, Real.log ‖σ (f.coeff s)‖ - ∑ b, (a b : ℝ) * (Real.log n + 1 / 2) ≤
      blockSphereMean B n (MvPolynomial.map σ f) := by
    intro σ
    have hmap : IsMultiHomogeneous a (MvPolynomial.map σ f) := by
      intro t ht b
      rw [MvPolynomial.support_map_of_injective _ σ.injective] at ht
      exact hmh t ht b
    exact log_norm_coeff_sub_le_blockSphereLogMean hSJ hInt hn hmap s
      (by rw [MvPolynomial.coeff_map]; exact (map_ne_zero σ).mpr hc)
  have h3 := Finset.sum_le_sum fun (σ : K →+* ℂ) (_ : σ ∈ Finset.univ) ↦ h2 σ
  rw [Finset.sum_sub_distrib, sum_log_norm_embedding_eq _ hc, Finset.sum_const, Finset.card_univ,
    NumberField.Embeddings.card, nsmul_eq_mul] at h3
  have hd : (0 : ℝ) < Module.finrank ℚ K := by exact_mod_cast Module.finrank_pos
  unfold h0
  rw [le_div_iff₀ hd]
  linarith

end ReciprocityTheory.MultiplicativeHeights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.HeightLowerBound =====

-- ===== clump member: ReciprocityTheory.SemistableReduction.IntCoresB =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.IntCoresB", "h": "module\n\npublic import ReciprocityTheory.SemistableReduction.SphereLogIntegrableStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.MeasureTheory.Measure.RegularityCompacts\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\npublic import ReciprocityTheory.SemistableReduction.IntCoresA\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.MultiplicativeHeights

open MeasureTheory Metric

def BlockPoly (k n : ℕ) (a : Fin k → ℕ) (F : (Fin k → Fin n → ℂ) → ℂ) : Prop :=
  Continuous F ∧ ∀ (b : Fin k) (p : Fin k → Fin n → ℂ), ∃ g : MvPolynomial (Fin n) ℂ,
    g.IsHomogeneous (a b) ∧ ∀ w, F (Function.update p b w) = MvPolynomial.eval w g

def onSpheres {k n : ℕ} (F : (Fin k → Fin n → ℂ) → ℂ) (z : Fin k → UnitSphereC n) : ℂ :=
  F fun b => spherePoint (z b)

theorem BlockPoly.restrict {k n : ℕ} {a : Fin (k + 1) → ℕ} {F : (Fin (k + 1) → Fin n → ℂ) → ℂ}
    (hF : BlockPoly (k + 1) n a F) (v : Fin n → ℂ) :
    BlockPoly k n (fun j => a j.succ) (fun p => F (Fin.cons v p)) := by
  refine ⟨hF.1.comp (continuous_const.finCons continuous_id), fun b p => ?_⟩
  obtain ⟨g, hg, hgF⟩ := hF.2 b.succ (Fin.cons v p)
  refine ⟨g, hg, fun w => ?_⟩
  simp only
  rw [Fin.cons_update]
  exact hgF w

theorem blockPoly_claim (hSJ : SJStatement) (n : ℕ) : ∀ (k : ℕ) (a : Fin k → ℕ)
    (F : (Fin k → Fin n → ℂ) → ℂ), BlockPoly k n a F → ∀ z0 : Fin k → UnitSphereC n,
    onSpheres F z0 ≠ 0 →
    Integrable (fun z => Real.log ‖onSpheres F z‖) (Measure.pi fun _ : Fin k => sphereProb n) ∧
      Measure.pi (fun _ : Fin k => sphereProb n) {z | onSpheres F z = 0} = 0 := by
  haveI : IsFiniteMeasure (sphereProb n) := by unfold sphereProb; infer_instance
  intro k
  induction k with
  | zero =>
    intro a F hF z0 hz0
    have hconst : ∀ z : Fin 0 → UnitSphereC n, onSpheres F z = onSpheres F z0 := by
      intro z
      unfold onSpheres
      congr 1
      funext b
      exact b.elim0
    refine ⟨?_, ?_⟩
    · simp_rw [hconst]
      exact integrable_const _
    · simp_rw [hconst]
      simp [hz0]
  | succ k ih =>
    intro a F hF z0 hz0
    set μ := sphereProb n with hμ
    set ν := Measure.pi fun _ : Fin k => sphereProb n with hν
    let e := MeasurableEquiv.piFinSuccAbove (fun _ : Fin (k + 1) => UnitSphereC n) 0
    have mp : MeasurePreserving e (Measure.pi fun _ : Fin (k + 1) => sphereProb n) (μ.prod ν) :=
      measurePreserving_piFinSuccAbove (fun _ => sphereProb n) 0
    let e2 := e.trans MeasurableEquiv.prodComm
    have mp2 : MeasurePreserving e2 (Measure.pi fun _ : Fin (k + 1) => sphereProb n) (ν.prod μ) :=
      (Measure.measurePreserving_swap).comp mp
    have hcont : Continuous (onSpheres F : (Fin (k + 1) → UnitSphereC n) → ℂ) :=
      hF.1.comp (continuous_pi fun b => (continuous_spherePoint n).comp (continuous_apply b))
    let H : (Fin k → UnitSphereC n) × UnitSphereC n → ℂ := fun q => onSpheres F (e2.symm q)
    have hHm : Measurable H := hcont.measurable.comp e2.symm.measurable
    have hsymm : ∀ z' w, e2.symm (z', w) = Fin.cons w z' := by
      intro z' w
      simp [e2, e, MeasurableEquiv.prodComm, MeasurableEquiv.piFinSuccAbove_symm_apply]
    have hH : ∀ z' w, H (z', w) = F (Fin.cons (spherePoint w) (fun b => spherePoint (z' b))) := by
      intro z' w
      simp only [H, onSpheres, hsymm]
      congr 1
      funext b
      refine Fin.cases ?_ (fun j => ?_) b <;> simp
    have hcomp : ∀ z, onSpheres F z = H (e2 z) := by
      intro z
      simp only [H, MeasurableEquiv.symm_apply_apply]
    set v0 := spherePoint (z0 0) with hv0
    have hR := hF.restrict v0
    have hG : ∀ z', onSpheres (fun p => F (Fin.cons v0 p)) z' = H (z', z0 0) := by
      intro z'
      rw [hH]
      rfl
    have hz0' : onSpheres (fun p => F (Fin.cons v0 p)) (fun j => z0 j.succ) ≠ 0 := by
      simp only [onSpheres] at hz0 ⊢
      convert hz0 using 2
      funext b
      refine Fin.cases ?_ (fun j => ?_) b <;> simp [v0]
    obtain ⟨ihInt, ihNull⟩ := ih _ _ hR _ hz0'
    simp_rw [hG] at ihInt ihNull
    have hgood : ∀ᵐ z' ∂ν, H (z', z0 0) ≠ 0 := by
      rw [ae_iff]
      simpa using ihNull
    have hslice : ∀ z', H (z', z0 0) ≠ 0 →
        Integrable (fun w => Real.log ‖H (z', w)‖) μ ∧
        Real.log ‖H (z', z0 0)‖ - (a 0 : ℝ) / 2 * (harmonic (n - 1) : ℝ) ≤
          ∫ w, Real.log ‖H (z', w)‖ ∂μ ∧ μ {w | H (z', w) = 0} = 0 := by
      intro z' hz'
      obtain ⟨g, hg, hgF⟩ := hF.2 0 (Fin.cons 0 (fun b => spherePoint (z' b)))
      have hHw : ∀ w, H (z', w) = MvPolynomial.eval (spherePoint w) g := by
        intro w
        rw [hH, ← hgF, Fin.update_cons_zero]
      have hu : ‖(z0 0 : EuclideanSpace ℂ (Fin n))‖ = 1 := norm_eq_of_mem_sphere _
      have hgu : MvPolynomial.eval (WithLp.ofLp (z0 0 : EuclideanSpace ℂ (Fin n))) g ≠ 0 := by
        rw [hHw] at hz'
        exact hz'
      obtain ⟨hI, hL⟩ := hSJ n (a 0) g _ hg hu hgu
      have hN := sphere_zero_null hSJ g hg _ hu hgu
      simp_rw [hHw]
      exact ⟨hI, hL, hN⟩
    obtain ⟨C, hC⟩ : ∃ C, ∀ z, ‖onSpheres F z‖ ≤ C := by
      obtain ⟨C, hC⟩ := isCompact_univ.exists_bound_of_continuousOn hcont.continuousOn
      exact ⟨C, fun z => hC z (Set.mem_univ _)⟩
    set M := Real.log (max C 1) with hMdef
    have hM0 : 0 ≤ M := Real.log_nonneg (le_max_right _ _)
    have hLM : ∀ q, Real.log ‖H q‖ ≤ M := by
      intro q
      rcases (norm_nonneg (H q)).eq_or_lt with h0 | hpos
      · rw [← h0, Real.log_zero]
        exact hM0
      · exact Real.log_le_log hpos ((hC _).trans (le_max_left _ _))
    have habs : ∀ q, ‖Real.log ‖H q‖‖ ≤ 2 * M - Real.log ‖H q‖ := by
      intro q
      rw [Real.norm_eq_abs]
      have := hLM q
      rcases le_total 0 (Real.log ‖H q‖) with h | h
      · rw [abs_of_nonneg h]; linarith
      · rw [abs_of_nonpos h]; linarith
    have hfm : AEStronglyMeasurable (fun q => Real.log ‖H q‖) (ν.prod μ) :=
      (Real.measurable_log.comp hHm.norm).aestronglyMeasurable
    have hInt2 : Integrable (fun q => Real.log ‖H q‖) (ν.prod μ) := by
      rw [integrable_prod_iff hfm]
      refine ⟨hgood.mono fun z' hz' => (hslice z' hz').1, ?_⟩
      refine Integrable.mono'
        (g := fun z' => ∫ _w, (2 * M) ∂μ -
          (Real.log ‖H (z', z0 0)‖ - (a 0 : ℝ) / 2 * (harmonic (n - 1) : ℝ)))
        ((integrable_const _).sub (ihInt.sub (integrable_const _)))
        hfm.norm.integral_prod_right' ?_
      filter_upwards [hgood] with z' hz'
      obtain ⟨hI, hL, -⟩ := hslice z' hz'
      rw [Real.norm_eq_abs, abs_of_nonneg (integral_nonneg fun _ => norm_nonneg _)]
      calc ∫ w, ‖Real.log ‖H (z', w)‖‖ ∂μ ≤ ∫ w, (2 * M - Real.log ‖H (z', w)‖) ∂μ :=
            integral_mono hI.norm ((integrable_const _).sub hI) (fun w => habs _)
        _ = ∫ _w, (2 * M) ∂μ - ∫ w, Real.log ‖H (z', w)‖ ∂μ :=
            integral_sub (integrable_const _) hI
        _ ≤ _ := by linarith
    have hNull2 : (ν.prod μ) {q | H q = 0} = 0 := by
      have hms : MeasurableSet {q | H q = 0} := hHm (measurableSet_singleton 0)
      rw [Measure.measure_prod_null hms]
      filter_upwards [hgood] with z' hz'
      simpa [Set.preimage] using (hslice z' hz').2.2
    refine ⟨?_, ?_⟩
    · have h1 : (fun z => Real.log ‖onSpheres F z‖) = (fun q => Real.log ‖H q‖) ∘ e2 := by
        funext z
        simp only [Function.comp_apply]
        rw [hcomp z]
      rw [h1, mp2.integrable_comp_emb e2.measurableEmbedding]
      exact hInt2
    · have h1 : {z | onSpheres F z = 0} = e2 ⁻¹' {q | H q = 0} := by
        ext z
        simp only [Set.mem_setOf_eq, Set.mem_preimage]
        rw [hcomp z]
      rw [h1, mp2.measure_preimage_emb e2.measurableEmbedding]
      exact hNull2

end ReciprocityTheory.MultiplicativeHeights
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.IntCoresB =====

-- ===== clump member: ReciprocityTheory.SemistableReduction.IntCores =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.IntCores", "h": "module\n\npublic import ReciprocityTheory.SemistableReduction.SphereLogIntegrableStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\npublic import Mathlib.Topology.Algebra.MvPolynomial\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.SemistableReduction.IntCoresB\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.MultiplicativeHeights

open MeasureTheory MvPolynomial

def blockSlice {B n : ℕ} (b : Fin B) (p : Fin B → Fin n → ℂ) :
    Fin B × Fin n → MvPolynomial (Fin n) ℂ :=
  fun q => if q.1 = b then X q.2 else C (p q.1 q.2)

theorem blockSlice_isHomogeneous {B n : ℕ} {a : Fin B → ℕ} {f : MvPolynomial (Fin B × Fin n) ℂ}
    (hf : IsMultiHomogeneous a f) (b : Fin B) (p : Fin B → Fin n → ℂ) :
    (bind₁ (blockSlice b p) f).IsHomogeneous (a b) := by

  rw [f.as_sum, map_sum]
  apply IsHomogeneous.sum
  intro s hs
  rw [bind₁_monomial]
  have hdeg : ∀ q, (blockSlice b p q).IsHomogeneous (if q.1 = b then 1 else 0) := by
    intro q; unfold blockSlice; split_ifs
    · exact isHomogeneous_X _ _
    · exact isHomogeneous_C _ _
  have hprod := IsHomogeneous.prod s.support (fun q => blockSlice b p q ^ s q)
    (fun q => (if q.1 = b then 1 else 0) * s q) (fun q _ => (hdeg q).pow (s q))
  have hsum : ∑ q ∈ s.support, (if q.1 = b then 1 else 0) * s q = a b := by
    rw [Finset.sum_subset (Finset.subset_univ _)
      (fun q _ hq => by simp [Finsupp.notMem_support_iff.1 hq])]
    rw [← hf s hs b, Fintype.sum_prod_type]
    simp [ite_mul]
  rw [← zero_add (a b), ← hsum]
  exact (isHomogeneous_C _ _).mul hprod

theorem eval_blockSlice {B n : ℕ} (f : MvPolynomial (Fin B × Fin n) ℂ) (b : Fin B)
    (p : Fin B → Fin n → ℂ) (w : Fin n → ℂ) :
    eval w (bind₁ (blockSlice b p) f) = eval (fun q => Function.update p b w q.1 q.2) f := by
  have hφ : (fun q => eval₂Hom (RingHom.id ℂ) w (blockSlice b p q)) =
      fun q => Function.update p b w q.1 q.2 := by
    funext q
    by_cases hq : q.1 = b
    · simp [blockSlice, hq]
    · simp [blockSlice, hq]
  show eval₂Hom (RingHom.id ℂ) w (bind₁ _ f) = _
  rw [eval₂Hom_bind₁, hφ]
  rfl

theorem sphereLogIntegrable_holds (hSJ : SJStatement) : SphereLogIntegrableStatement := by
  intro B n a f _ hf
  set F : (Fin B → Fin n → ℂ) → ℂ := fun p => eval (fun q => p q.1 q.2) f with hFdef
  have hF : BlockPoly B n a F := by
    refine ⟨(continuous_eval f).comp (continuous_pi fun q =>
      (continuous_apply q.2).comp (continuous_apply q.1)), fun b p => ?_⟩
    exact ⟨_, blockSlice_isHomogeneous hf b p, fun w => (eval_blockSlice f b p w).symm⟩
  by_cases hz : ∃ z0, onSpheres F z0 ≠ 0
  · obtain ⟨z0, hz0⟩ := hz
    exact (blockPoly_claim hSJ n B a F hF z0 hz0).1
  · simp only [not_exists, not_not] at hz
    have : (fun z : BlockSphere B n => Real.log ‖eval (blockPoint z) f‖) = fun _ => 0 := by
      funext z
      have h0 : eval (blockPoint z) f = 0 := hz z
      rw [h0, norm_zero, Real.log_zero]
    rw [this]
    exact integrable_zero _ _ _

end ReciprocityTheory.MultiplicativeHeights
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.IntCores =====

-- ===== clump member: ReciprocityTheory.SemistableReduction.SJCore =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.SJCore", "h": "module\n\npublic import ReciprocityTheory.SemistableReduction.SJCoreA\npublic import ReciprocityTheory.SemistableReduction.SJCoreB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.SemistableReduction.SJCoreD\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.MultiplicativeHeights

open MeasureTheory Set Real

theorem gaussLogC_div {a : ℝ} (ha : 0 < a) :
    gaussLogC a / gaussOneC = log a + radK 1 / radJ 1 := by
  have hdim : Module.finrank ℝ ℂ = 2 := Complex.finrank_real_complex
  have h1 := integral_fun_norm_addHaar (volume : Measure ℂ) (fun r : ℝ => exp (-r ^ 2))
  have h2 := integral_fun_norm_addHaar (volume : Measure ℂ) (fun r : ℝ => log (a * r) * exp (-r ^ 2))
  rw [hdim] at h1 h2
  simp only [smul_eq_mul, nsmul_eq_mul, Nat.cast_ofNat, show (2 : ℕ) - 1 = 1 from rfl, pow_one] at h1 h2
  set C : ℝ := (volume : Measure ℂ).real (Metric.ball 0 1) with hCdef
  have hC : 0 < C :=
    ENNReal.toReal_pos (Metric.measure_ball_pos volume (0 : ℂ) one_pos).ne' measure_ball_lt_top.ne
  have hG : gaussOneC = 2 * C * radJ 1 := by
    unfold gaussOneC radJ
    rw [h1]
    simp only [pow_one]
    ring
  have hsplit : ∫ y in Ioi (0 : ℝ), y * (log (a * y) * exp (-y ^ 2)) =
      log a * radJ 1 + radK 1 := by
    have heq : EqOn (fun y : ℝ => y * (log (a * y) * exp (-y ^ 2)))
        (fun y : ℝ => log a * (y ^ 1 * exp (-y ^ 2)) + y ^ 1 * log y * exp (-y ^ 2)) (Ioi 0) := by
      intro y hy
      simp only
      rw [log_mul ha.ne' (ne_of_gt hy)]
      ring
    rw [setIntegral_congr_fun measurableSet_Ioi heq,
      integral_add ((integrableOn_radJ 1).const_mul (log a)) (integrableOn_radK le_rfl),
      integral_const_mul]
    rfl
  have hL : gaussLogC a = 2 * C * (log a * radJ 1 + radK 1) := by
    unfold gaussLogC
    rw [h2, hsplit]
    ring
  have hM := radJ_pos 1
  rw [hL, hG]
  field_simp

theorem sjCore_holds : SphereLinLogStatement := by
  intro n c hc
  have hn : 0 < n := by
    rcases Nat.eq_zero_or_pos n with rfl | h
    · exact absurd (Subsingleton.elim c 0) hc
    · exact h
  obtain ⟨hi, he⟩ := polar_mean hn c hc
  refine ⟨hi, ?_⟩
  have hcn : 0 < ‖c‖ := norm_pos_iff.mpr hc
  have h2 : 2 * n - 1 = 2 * (n - 1) + 1 := by omega
  rw [he, gaussLogC_div hcn, h2, radRatio_odd]
  ring

end ReciprocityTheory.MultiplicativeHeights
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.SJCore =====

-- ===== clump member: ReciprocityTheory.SemistableReduction.LogNormEvalZeroLeCircleAverage =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.LogNormEvalZeroLeCircleAverage", "h": "module\n\npublic import Mathlib.MeasureTheory.Integral.CircleAverage\npublic import Mathlib.RingTheory.MvPolynomial.Homogeneous\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Complex.JensenFormula\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.Deriv.Polynomial\npublic import Mathlib.Analysis.Complex.CauchyIntegral\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.MultiplicativeHeights

open Polynomial

theorem log_norm_eval_zero_le_circleAverage (q : ℂ[X]) (hq : q.eval 0 ≠ 0) :
    Real.log ‖q.eval 0‖ ≤ Real.circleAverage (fun ζ => Real.log ‖q.eval ζ‖) 0 1 := by
  have hA : AnalyticOnNhd ℂ (fun z => q.eval z) Set.univ := fun z _ =>
    (Polynomial.differentiable q).analyticAt z
  have hM : MeromorphicOn (fun z => q.eval z) (Metric.closedBall (0 : ℂ) |(1 : ℝ)|) :=
    (hA.mono (Set.subset_univ _)).meromorphicOn
  have hD : 0 ≤ MeromorphicOn.divisor (fun z => q.eval z) (Metric.closedBall (0 : ℂ) |(1 : ℝ)|) :=
    MeromorphicOn.AnalyticOnNhd.divisor_nonneg (hA.mono (Set.subset_univ _))
  rw [MeromorphicOn.circleAverage_log_norm one_ne_zero hM,
    AnalyticAt.meromorphicTrailingCoeffAt_of_ne_zero (hA 0 trivial) hq, Real.log_one, mul_zero,
    add_zero]
  have hsum : 0 ≤ ∑ᶠ u, ((MeromorphicOn.divisor (fun z => q.eval z)
      (Metric.closedBall (0 : ℂ) |(1 : ℝ)|) u : ℤ) : ℝ) * Real.log (1 * ‖0 - u‖⁻¹) := by
    apply finsum_nonneg
    intro u
    by_cases hu : u ∈ Metric.closedBall (0 : ℂ) |(1 : ℝ)|
    · have hle : ‖u‖ ≤ 1 := by simpa using hu
      apply mul_nonneg
      · exact_mod_cast (show (0 : ℤ) ≤ _ by simpa using hD u)
      · rw [one_mul, Real.log_inv, zero_sub, norm_neg]
        exact neg_nonneg.mpr (Real.log_nonpos (norm_nonneg _) hle)
    · have h0 : MeromorphicOn.divisor (fun z => q.eval z) (Metric.closedBall (0 : ℂ) |(1 : ℝ)|) u = 0 := by
        by_contra h
        exact hu (Function.locallyFinsuppWithin.supportWithinDomain _ (Function.mem_support.mpr h))
      simp [h0]
  linarith

theorem eval_smul_of_isHomogeneous {σ : Type*} {f : MvPolynomial σ ℂ} {a : ℕ}
    (hf : f.IsHomogeneous a) (c : ℂ) (x : σ → ℂ) :
    MvPolynomial.eval (fun i => c * x i) f = c ^ a * MvPolynomial.eval x f := by
  classical
  rw [MvPolynomial.eval_eq, MvPolynomial.eval_eq, Finset.mul_sum]
  refine Finset.sum_congr rfl fun d hd => ?_
  have hdeg : ∑ i ∈ d.support, d i = a := by
    have h := hf (MvPolynomial.mem_support_iff.mp hd)
    simpa [Finsupp.weight_apply, Finsupp.sum] using h
  simp_rw [mul_pow, Finset.prod_mul_distrib, Finset.prod_pow_eq_pow_sum, hdeg]
  ring

end ReciprocityTheory.MultiplicativeHeights
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.LogNormEvalZeroLeCircleAverage =====

-- ===== clump member: ReciprocityTheory.SemistableReduction.SjHolds =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.SjHolds", "h": "module\n\npublic import ReciprocityTheory.SemistableReduction.SphereLogIntegrableStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\npublic import Mathlib.Analysis.SpecialFunctions.Integrability.Log\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.MeasureTheory.Measure.RegularityCompacts\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import Mathlib.Topology.Algebra.MvPolynomial\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\npublic import ReciprocityTheory.SemistableReduction.LogNormEvalZeroLeCircleAverage\npublic import ReciprocityTheory.SemistableReduction.MeasurePreservingSphereMap\npublic import Mathlib.Analysis.Meromorphic.Basic\npublic import Mathlib.MeasureTheory.Integral.CircleAverage\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.MultiplicativeHeights

open MeasureTheory Metric Real

theorem sj_holds (hLin : SphereLinLogStatement) : SJStatement := by
  intro n a f u hf hu hfu
  have hu0 : u ≠ 0 := by
    rintro rfl
    simp at hu
  haveI : Nontrivial (EuclideanSpace ℂ (Fin n)) := nontrivial_of_ne u 0 hu0
  haveI hprob : IsProbabilityMeasure (sphereProb n) := by
    unfold sphereProb
    apply ProbabilityTheory.cond_isProbabilityMeasure_of_finite
    · rw [Measure.toSphere_apply_univ]
      refine mul_ne_zero ?_ (Metric.measure_ball_pos _ _ one_pos).ne'
      exact Nat.cast_ne_zero.2 Module.finrank_pos.ne'
    · rw [Measure.toSphere_apply_univ]
      exact ENNReal.mul_ne_top (ENNReal.natCast_ne_top _) measure_ball_lt_top.ne
  have hT : (0:ℝ) < 2 * π := by positivity

  have hsp : Continuous (fun z : UnitSphereC n => spherePoint z) := by
    unfold spherePoint; fun_prop
  have hcont : Continuous (fun z : UnitSphereC n => MvPolynomial.eval (spherePoint z) f) :=
    (MvPolynomial.continuous_eval f).comp hsp
  obtain ⟨M, hM⟩ := isCompact_univ.exists_bound_of_continuousOn hcont.continuousOn
  obtain ⟨L, hL⟩ : ∃ L : UnitSphereC n → ℝ,
      L = fun z => Real.log ‖MvPolynomial.eval (spherePoint z) f‖ := ⟨_, rfl⟩
  have hLM : ∀ z, L z ≤ M := fun z => by
    rw [hL]
    exact (Real.log_le_self (norm_nonneg _)).trans (hM z (Set.mem_univ _))
  have hLmeas : Measurable L := by
    rw [hL]; exact hcont.norm.measurable.log

  obtain ⟨c, hc⟩ : ∃ c : EuclideanSpace ℂ (Fin n),
      c = WithLp.toLp 2 (fun i => starRingEnd ℂ (WithLp.ofLp u i)) := ⟨_, rfl⟩
  have hcn : ‖c‖ = 1 := by
    rw [← hu, hc, EuclideanSpace.norm_eq, EuclideanSpace.norm_eq]
    simp
  have hc0 : c ≠ 0 := by
    intro h; rw [h, norm_zero] at hcn; exact zero_ne_one hcn
  obtain ⟨hGint, hGeq⟩ := hLin n c hc0
  obtain ⟨G, hG⟩ : ∃ G : UnitSphereC n → ℝ,
      G = fun z => Real.log ‖∑ i, WithLp.ofLp c i * spherePoint z i‖ := ⟨_, rfl⟩
  have hGint' : Integrable G (sphereProb n) := by rw [hG]; exact hGint
  have hGeq' : ∫ z, G z ∂(sphereProb n) = Real.log ‖c‖ - (harmonic (n - 1) : ℝ) / 2 := by
    rw [hG]; exact hGeq
  have hip : ∀ z : UnitSphereC n,
      ‖inner ℂ u (z : EuclideanSpace ℂ (Fin n))‖ = ‖∑ i, WithLp.ofLp c i * spherePoint z i‖ := by
    intro z
    rw [hc]
    simp [PiLp.inner_apply, spherePoint, mul_comm]

  have hpoly : ∀ (w v : Fin n → ℂ) (ζ : ℂ) (p : MvPolynomial (Fin n) ℂ),
      (MvPolynomial.aeval (fun i => Polynomial.C (w i) + Polynomial.C (v i) * Polynomial.X) p).eval ζ =
        MvPolynomial.eval (fun i => w i + ζ * v i) p := by
    intro w v ζ p
    induction p using MvPolynomial.induction_on with
    | C r => simp
    | add p q hp hq => simp [hp, hq]
    | mul_X p i hp =>
      simp [hp]
      exact Or.inl (mul_comm _ _)

  have hcirc : ∀ z : UnitSphereC n, inner ℂ u (z : EuclideanSpace ℂ (Fin n)) ≠ 0 →
      IntegrableOn (fun θ => L (rotS hu θ z)) (Set.Ioc 0 (2 * π)) ∧
      2 * π * (Real.log ‖MvPolynomial.eval (WithLp.ofLp u) f‖ +
          (a : ℝ) * Real.log ‖inner ℂ u (z : EuclideanSpace ℂ (Fin n))‖) ≤
        ∫ θ in Set.Ioc 0 (2 * π), L (rotS hu θ z) := by
    intro z hz
    set s := inner ℂ u (z : EuclideanSpace ℂ (Fin n)) with hs
    set q : Polynomial ℂ := MvPolynomial.aeval (fun i => Polynomial.C (s * WithLp.ofLp u i) +
      Polynomial.C (WithLp.ofLp (z : EuclideanSpace ℂ (Fin n)) i - s * WithLp.ofLp u i) * Polynomial.X) f
      with hqdef
    have hq : ∀ ζ, q.eval ζ = MvPolynomial.eval (fun i => s * WithLp.ofLp u i +
        ζ * (WithLp.ofLp (z : EuclideanSpace ℂ (Fin n)) i - s * WithLp.ofLp u i)) f := fun ζ => by
      rw [hqdef]; exact hpoly _ _ _ _
    have hq0 : q.eval 0 = s ^ a * MvPolynomial.eval (WithLp.ofLp u) f := by
      rw [hq]; simp only [zero_mul, add_zero]
      exact eval_smul_of_isHomogeneous hf s _
    have hrot : ∀ θ : ℝ, spherePoint (rotS hu θ z) = fun i => s * WithLp.ofLp u i +
        circleMap 0 1 θ * (WithLp.ofLp (z : EuclideanSpace ℂ (Fin n)) i - s * WithLp.ofLp u i) := by
      intro θ
      funext i
      simp [spherePoint, coe_rotS, hs]
    have hqc : ∀ θ : ℝ, Real.log ‖q.eval (circleMap 0 1 θ)‖ = L (rotS hu θ z) := by
      intro θ
      simp only [hL]
      rw [hq, hrot]
    have hne : q.eval 0 ≠ 0 := by
      rw [hq0]; exact mul_ne_zero (pow_ne_zero _ hz) hfu
    have hJ := log_norm_eval_zero_le_circleAverage q hne
    have hci : CircleIntegrable (fun ζ => Real.log ‖q.eval ζ‖) 0 1 :=
      MeromorphicOn.circleIntegrable_log_norm
        (fun x _ => (q.differentiable.analyticAt x).meromorphicAt)
    have hii : IntervalIntegrable (fun θ => L (rotS hu θ z)) MeasureTheory.volume 0 (2 * π) := by
      have := hci
      unfold CircleIntegrable at this
      simpa only [hqc] using this
    refine ⟨(intervalIntegrable_iff_integrableOn_Ioc_of_le hT.le).1 hii, ?_⟩
    rw [hq0, norm_mul, norm_pow, Real.log_mul (pow_ne_zero _ (norm_ne_zero_iff.2 hz))
      (norm_ne_zero_iff.2 hfu), Real.log_pow] at hJ
    unfold Real.circleAverage at hJ
    simp only [hqc, smul_eq_mul] at hJ
    rw [intervalIntegral.integral_of_le hT.le] at hJ
    have h2 := mul_le_mul_of_nonneg_left hJ hT.le
    rw [← mul_assoc, mul_inv_cancel₀ hT.ne', one_mul] at h2
    linarith

  obtain ⟨h, hh⟩ : ∃ h : UnitSphereC n → ℝ,
      h = fun z => M - Real.log ‖MvPolynomial.eval (WithLp.ofLp u) f‖ - (a : ℝ) * G z := ⟨_, rfl⟩
  have hae : ∀ᵐ (z : UnitSphereC n) ∂(sphereProb n), inner ℂ u (z : EuclideanSpace ℂ (Fin n)) ≠ 0 := by
    have := sphereProb_inner_eq_zero hu0
    exact ae_iff.2 (by simpa using this)
  have hC : ∀ᵐ (z : UnitSphereC n) ∂(sphereProb n), 0 ≤ h z ∧
      ∫⁻ θ in Set.Ioc 0 (2 * π), ENNReal.ofReal (M - L (rotS hu θ z)) ≤
        ENNReal.ofReal (2 * π) * ENNReal.ofReal (h z) := by
    filter_upwards [hae] with z hz
    obtain ⟨hint, hJ⟩ := hcirc z hz
    have hGz : Real.log ‖inner ℂ u (z : EuclideanSpace ℂ (Fin n))‖ = G z := by rw [hG, hip]
    rw [hGz] at hJ
    have hint2 : IntegrableOn (fun θ => M - L (rotS hu θ z)) (Set.Ioc 0 (2 * π)) :=
      (integrable_const M).sub hint
    have hI : ∫ θ in Set.Ioc 0 (2 * π), (M - L (rotS hu θ z)) =
        2 * π * M - ∫ θ in Set.Ioc 0 (2 * π), L (rotS hu θ z) := by
      rw [integral_sub (integrable_const M) hint, integral_const]
      simp [Measure.real, Real.volume_Ioc, smul_eq_mul, Real.pi_pos.le]
    have hnn : 0 ≤ ∫ θ in Set.Ioc 0 (2 * π), (M - L (rotS hu θ z)) :=
      setIntegral_nonneg measurableSet_Ioc (fun θ _ => sub_nonneg.2 (hLM _))
    have hhz : 2 * π * h z = 2 * π * M - 2 * π * (Real.log ‖MvPolynomial.eval (WithLp.ofLp u) f‖ +
        (a : ℝ) * G z) := by
      rw [hh]; ring
    refine ⟨?_, ?_⟩
    · have : 0 ≤ 2 * π * h z := by linarith
      exact (mul_nonneg_iff_of_pos_left hT).1 this
    · rw [← ofReal_integral_eq_lintegral_ofReal hint2
        (ae_of_all _ fun θ => sub_nonneg.2 (hLM _)), ← ENNReal.ofReal_mul hT.le]
      exact ENNReal.ofReal_le_ofReal (by linarith)

  obtain ⟨g, hg⟩ : ∃ g : UnitSphereC n → ENNReal, g = fun z => ENNReal.ofReal (M - L z) :=
    ⟨_, rfl⟩
  have hgmeas : Measurable g := by
    rw [hg]; exact (measurable_const.sub hLmeas).ennreal_ofReal
  have hrotInv : ∀ θ, ∫⁻ z, g (rotS hu θ z) ∂(sphereProb n) = ∫⁻ z, g z ∂(sphereProb n) :=
    fun θ => (measurePreserving_rotS hu θ).lintegral_comp hgmeas
  have hmeas2 : Measurable (fun p : ℝ × UnitSphereC n => g (rotS hu p.1 p.2)) :=
    hgmeas.comp (continuous_rotS hu).measurable
  have hswap : ∫⁻ θ in Set.Ioc 0 (2 * π), ∫⁻ z, g (rotS hu θ z) ∂(sphereProb n) =
      ∫⁻ z, (∫⁻ θ in Set.Ioc 0 (2 * π), g (rotS hu θ z)) ∂(sphereProb n) :=
    lintegral_lintegral_swap hmeas2.aemeasurable
  have hleft : ∫⁻ θ in Set.Ioc 0 (2 * π), ∫⁻ z, g (rotS hu θ z) ∂(sphereProb n) =
      ENNReal.ofReal (2 * π) * ∫⁻ z, g z ∂(sphereProb n) := by
    simp_rw [hrotInv]
    rw [setLIntegral_const, Real.volume_Ioc, sub_zero, mul_comm]
  have hmain : ENNReal.ofReal (2 * π) * ∫⁻ z, g z ∂(sphereProb n) ≤
      ENNReal.ofReal (2 * π) * ∫⁻ z, ENNReal.ofReal (h z) ∂(sphereProb n) := by
    rw [← hleft, hswap, ← lintegral_const_mul' _ _ ENNReal.ofReal_ne_top]
    refine lintegral_mono_ae ?_
    filter_upwards [hC] with z hz
    simp only [hg]
    exact hz.2
  have hglint : ∫⁻ z, g z ∂(sphereProb n) ≤ ∫⁻ z, ENNReal.ofReal (h z) ∂(sphereProb n) :=
    by
      have h0 : ENNReal.ofReal (2 * π) ≠ 0 := (ENNReal.ofReal_pos.2 hT).ne'
      have h1 : ENNReal.ofReal (2 * π) ≠ ⊤ := ENNReal.ofReal_ne_top
      first
        | exact (ENNReal.mul_le_mul_iff_right h0 h1).1 hmain
  have hhint : Integrable h (sphereProb n) := by
    rw [hh]; exact ((integrable_const _).sub (integrable_const _)).sub (hGint'.const_mul _)
  have hfin : ∫⁻ z, g z ∂(sphereProb n) ≠ ⊤ := (hglint.trans_lt hhint.lintegral_lt_top).ne
  have hg0 : ∀ z, 0 ≤ M - L z := fun z => sub_nonneg.2 (hLM z)
  have hgint : Integrable (fun z => M - L z) (sphereProb n) := by
    have := integrable_toReal_of_lintegral_ne_top hgmeas.aemeasurable hfin
    refine this.congr (ae_of_all _ fun z => ?_)
    simp only [hg]
    exact ENNReal.toReal_ofReal (hg0 z)
  have hLint : Integrable L (sphereProb n) := by
    have := (integrable_const M).sub hgint
    refine this.congr (ae_of_all _ fun z => ?_)
    simp

  have hh0 : 0 ≤ᵐ[sphereProb n] h := by
    filter_upwards [hC] with z hz
    exact hz.1
  have hint_g : ∫ z, (M - L z) ∂(sphereProb n) ≤ ∫ z, h z ∂(sphereProb n) := by
    rw [integral_eq_lintegral_of_nonneg_ae (ae_of_all _ hg0) hgint.aestronglyMeasurable,
      integral_eq_lintegral_of_nonneg_ae hh0 hhint.aestronglyMeasurable]
    apply ENNReal.toReal_mono hhint.lintegral_lt_top.ne
    simpa only [hg] using hglint
  have hIh : ∫ z, h z ∂(sphereProb n) = M - Real.log ‖MvPolynomial.eval (WithLp.ofLp u) f‖ -
      (a : ℝ) * ∫ z, G z ∂(sphereProb n) := by
    simp only [hh]
    rw [integral_sub (integrable_const _) (hGint'.const_mul _), integral_const, integral_const_mul]
    simp
  rw [hGeq', hcn, Real.log_one] at hIh
  have hIg : ∫ z, (M - L z) ∂(sphereProb n) = M - ∫ z, L z ∂(sphereProb n) := by
    rw [integral_sub (integrable_const _) hLint, integral_const]
    simp
  refine ⟨by rw [hL] at hLint; exact hLint, ?_⟩
  have hfin2 : ∫ z, L z ∂(sphereProb n) =
      ∫ z, Real.log ‖MvPolynomial.eval (spherePoint z) f‖ ∂(sphereProb n) := by rw [hL]
  rw [← hfin2]
  linarith

end ReciprocityTheory.MultiplicativeHeights
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.SjHolds =====

-- ===== clump member: ReciprocityTheory.SemistableReduction.SphereTorusB =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.SphereTorusB", "h": "module\n\npublic import ReciprocityTheory.SemistableReduction.SphereLogIntegrableStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.SemistableReduction.SphereTorusA\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Algebra.MvPolynomial.Funext\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.MultiplicativeHeights

open MeasureTheory

def scaledTorusMean {ι : Type*} [Fintype ι] (r : ι → ℂ) (f : MvPolynomial ι ℂ) : ℝ :=
  ∫ θ, Real.log ‖MvPolynomial.eval (fun j => r j * torusPoint θ j) f‖ ∂(torusProb ι)

theorem scaledTorusMean_one {ι : Type*} [Fintype ι] (f : MvPolynomial ι ℂ) :
    scaledTorusMean (fun _ => 1) f = torusMean f := by
  unfold scaledTorusMean torusMean
  simp only [one_mul]

theorem eval_update_eq_eval_aeval {ι : Type*} [DecidableEq ι] (w : ι → ℂ) (i : ι) (z : ℂ)
    (f : MvPolynomial ι ℂ) :
    MvPolynomial.eval (Function.update w i z) f =
      (MvPolynomial.aeval (fun j => if j = i then (Polynomial.X : Polynomial ℂ)
        else Polynomial.C (w j)) f).eval z := by
  induction f using MvPolynomial.induction_on
  · simp
  · simp_all
  rename_i p j hp
  simp only [map_mul, MvPolynomial.eval_X, MvPolynomial.aeval_X, Polynomial.eval_mul, hp]
  congr 1
  by_cases h : j = i
  · subst h
    simp
  · simp [h]

theorem eval_bind₁_scale {ι : Type*} (r w : ι → ℂ) (f : MvPolynomial ι ℂ) :
    MvPolynomial.eval w
        (MvPolynomial.bind₁ (fun j => MvPolynomial.C (r j) * MvPolynomial.X j) f) =
      MvPolynomial.eval (fun j => r j * w j) f := by
  rw [MvPolynomial.bind₁, MvPolynomial.aeval_def, MvPolynomial.algebraMap_eq,
    ← MvPolynomial.eval_assoc]
  refine congrArg (fun v => MvPolynomial.eval v f) (funext fun j => ?_)
  simp only [Function.comp_apply, map_mul, MvPolynomial.eval_C, MvPolynomial.eval_X]

private theorem bind1_C_mul_X_ne_zero_of_ne_zero {ι : Type} (r : ι → ℂ) (hr : ∀ j, r j ≠ 0)
    (f : MvPolynomial ι ℂ) (hf : f ≠ 0) :
    MvPolynomial.bind₁ (fun j => MvPolynomial.C (r j) * MvPolynomial.X j) f ≠ 0 := by
  intro h
  apply hf
  refine MvPolynomial.funext fun v => ?_
  have hv := eval_bind₁_scale r (fun j => v j / r j) f
  rw [h, map_zero] at hv
  have e : (fun j => r j * (v j / r j)) = v := by
    funext j
    first
      | exact mul_div_cancel₀ (v j) (hr j)
  rw [e] at hv
  rw [← hv, map_zero]

theorem integrable_scaled {ι : Type} [Fintype ι] (hBasic : TorusMeanBasicStatement)
    (f : MvPolynomial ι ℂ) (hf : f ≠ 0) (r : ι → ℂ) (hr : ∀ j, r j ≠ 0) :
    Integrable (fun θ => Real.log ‖MvPolynomial.eval (fun j => r j * torusPoint θ j) f‖)
      (torusProb ι) := by
  have h := (hBasic ι).1 _ (bind1_C_mul_X_ne_zero_of_ne_zero r hr f hf)
  simpa only [eval_bind₁_scale] using h

theorem scaledTorusMean_le_update {ι : Type} [Fintype ι] [DecidableEq ι]
    (hBasic : TorusMeanBasicStatement) (f : MvPolynomial ι ℂ) (hf : f ≠ 0) (r : ι → ℂ)
    (hr : ∀ j, r j ≠ 0) (i : ι) (hri : ‖r i‖ ≤ 1) :
    scaledTorusMean r f ≤ scaledTorusMean (Function.update r i 1) f := by
  have hr' : ∀ j, Function.update r i 1 j ≠ 0 := by
    intro j
    by_cases h : j = i
    · subst h; simp
    · rw [Function.update_of_ne h]; exact hr j
  obtain ⟨hI1, hE1⟩ := integral_torus_eq_iter i (integrable_scaled hBasic f hf r hr)
  obtain ⟨hI2, hE2⟩ := integral_torus_eq_iter i (integrable_scaled hBasic f hf _ hr')
  unfold scaledTorusMean
  rw [hE1, hE2]
  refine integral_mono hI1 hI2 fun x => ?_
  set p : Polynomial ℂ := MvPolynomial.aeval (fun j => if j = i then (Polynomial.X : Polynomial ℂ)
        else Polynomial.C (r j * torusPoint x j)) f
  have key : ∀ (s : ι → ℂ), (∀ j, j ≠ i → s j = r j) → ∀ t : ℝ,
      MvPolynomial.eval (fun j => s j * torusPoint (Function.update x i t) j) f =
        p.eval (s i * Complex.exp (2 * Real.pi * Complex.I * (t : ℂ))) := by
    intro s hs t
    rw [← eval_update_eq_eval_aeval]
    refine congrArg (fun w => MvPolynomial.eval w f) (funext fun j => ?_)
    by_cases h : j = i
    · subst h; simp [torusPoint]
    · simp [Function.update_of_ne h, hs j h, torusPoint]
  have k1 := key r (fun _ _ => rfl)
  have k2 := key (Function.update r i 1) (fun j h => Function.update_of_ne h _ _)
  simp only [Function.update_self, one_mul] at k2
  beta_reduce
  simp only [k1, k2]
  exact integral_log_eval_mul_le p (hr i) hri

theorem scaledTorusMean_le_torusMean {ι : Type} [Fintype ι] [DecidableEq ι]
    (hBasic : TorusMeanBasicStatement) (f : MvPolynomial ι ℂ) (hf : f ≠ 0) (r : ι → ℂ)
    (hr : ∀ j, r j ≠ 0) (hr1 : ∀ j, ‖r j‖ ≤ 1) :
    scaledTorusMean r f ≤ torusMean f := by
  classical
  have key : ∀ s : Finset ι, scaledTorusMean r f ≤
      scaledTorusMean (fun j => if j ∈ s then (1 : ℂ) else r j) f := by
    intro s
    refine Finset.induction_on s ?_ ?_
    · simp
    · intro a s ha ih
      refine ih.trans ?_
      have hr' : ∀ j, (fun j => if j ∈ s then (1 : ℂ) else r j) j ≠ 0 := fun j => by
        dsimp only
        split_ifs <;> simp [hr j]
      have hra : ‖(fun j => if j ∈ s then (1 : ℂ) else r j) a‖ ≤ 1 := by
        simp [ha, hr1 a]
      have hle := scaledTorusMean_le_update hBasic f hf _ hr' a hra
      have e : Function.update (fun j => if j ∈ s then (1 : ℂ) else r j) a 1 =
          fun j => if j ∈ insert a s then (1 : ℂ) else r j := by
        funext j
        by_cases hj : j = a
        · subst hj
          simp
        · simp [Finset.mem_insert, hj]
      rw [e] at hle
      exact hle
  have hu := key Finset.univ
  simp only [Finset.mem_univ, if_true] at hu
  rwa [scaledTorusMean_one] at hu

end ReciprocityTheory.MultiplicativeHeights
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.SphereTorusB =====

-- ===== clump member: ReciprocityTheory.SemistableReduction.SphereTorus =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.SphereTorus", "h": "module\n\npublic import ReciprocityTheory.SemistableReduction.SphereLogIntegrableStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.MeasureTheory.Measure.RegularityCompacts\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\npublic import Mathlib.Topology.Algebra.MvPolynomial\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\nimport ReciprocityTheory.SemistableReduction.SphereTorusA\npublic import ReciprocityTheory.SemistableReduction.SphereTorusB\npublic import ReciprocityTheory.SemistableReduction.SphereTorusC\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.MultiplicativeHeights

open MeasureTheory

theorem sphereTorus_holds (hInt : SphereLogIntegrableStatement) (hBasic : TorusMeanBasicStatement) :
    SphereLeTorusStatement := by
  intro B n a f hn hf hhom
  haveI : IsProbabilityMeasure (sphereProb n) := isProbabilityMeasure_sphereProb hn
  haveI : IsProbabilityMeasure (blockSphereProb B n) := by
    unfold blockSphereProb; infer_instance
  haveI : IsProbabilityMeasure ((volume : Measure ℝ).restrict (Set.Ioc (0 : ℝ) 1)) :=
    ⟨by simp⟩
  haveI : IsProbabilityMeasure (torusProb (Fin B × Fin n)) := by
    unfold torusProb; infer_instance

  have hh : Integrable (fun z => Real.log ‖MvPolynomial.eval (blockPoint z) f‖)
      (blockSphereProb B n) := hInt B n a f hf hhom

  have hslice : ∀ θ : Fin B × Fin n → ℝ,
      Integrable (fun z => Real.log ‖MvPolynomial.eval
        (fun p => blockPoint z p * torusPoint θ p) f‖) (blockSphereProb B n) ∧
      ∫ z, Real.log ‖MvPolynomial.eval (fun p => blockPoint z p * torusPoint θ p) f‖
        ∂(blockSphereProb B n) = blockSphereMean B n f ∧
      ∫ z, ‖Real.log ‖MvPolynomial.eval (fun p => blockPoint z p * torusPoint θ p) f‖‖
        ∂(blockSphereProb B n) =
        ∫ z, ‖Real.log ‖MvPolynomial.eval (blockPoint z) f‖‖ ∂(blockSphereProb B n) := by
    intro θ
    have hmp := measurePreserving_blockRot (B := B) (n := n) θ
    have e : ∀ z, (fun p => blockPoint z p * torusPoint θ p) = blockPoint (blockRot θ z) := by
      intro z; rw [blockPoint_blockRot]
    simp only [e]
    refine ⟨?_, ?_, ?_⟩
    · have h1 : Integrable (fun z => Real.log ‖MvPolynomial.eval (blockPoint z) f‖)
          (Measure.map (blockRot θ) (blockSphereProb B n)) := by
        rw [hmp.map_eq]; exact hh
      exact h1.comp_measurable hmp.measurable
    · have hA : AEStronglyMeasurable (fun z => Real.log ‖MvPolynomial.eval (blockPoint z) f‖)
          (Measure.map (blockRot θ) (blockSphereProb B n)) := by
        rw [hmp.map_eq]; exact hh.aestronglyMeasurable
      have h2 := integral_map hmp.measurable.aemeasurable hA
      rw [hmp.map_eq] at h2
      exact h2.symm
    · have hA : AEStronglyMeasurable (fun z => ‖Real.log ‖MvPolynomial.eval (blockPoint z) f‖‖)
          (Measure.map (blockRot θ) (blockSphereProb B n)) := by
        rw [hmp.map_eq]; exact hh.norm.aestronglyMeasurable
      have h2 := integral_map hmp.measurable.aemeasurable hA
      rw [hmp.map_eq] at h2
      exact h2.symm

  have hcont : Continuous (fun q : BlockSphere B n × (Fin B × Fin n → ℝ) =>
      MvPolynomial.eval (fun p => blockPoint q.1 p * torusPoint q.2 p) f) := by
    refine (MvPolynomial.continuous_eval f).comp (continuous_pi fun p => ?_)
    refine Continuous.mul ?_ ?_
    · unfold blockPoint spherePoint
      fun_prop
    · unfold torusPoint
      fun_prop
  have hgm : AEStronglyMeasurable (fun q : BlockSphere B n × (Fin B × Fin n → ℝ) =>
      Real.log ‖MvPolynomial.eval (fun p => blockPoint q.1 p * torusPoint q.2 p) f‖)
      ((blockSphereProb B n).prod (torusProb (Fin B × Fin n))) :=
    (Real.measurable_log.comp hcont.norm.measurable).aestronglyMeasurable
  have hgi : Integrable (fun q : BlockSphere B n × (Fin B × Fin n → ℝ) =>
      Real.log ‖MvPolynomial.eval (fun p => blockPoint q.1 p * torusPoint q.2 p) f‖)
      ((blockSphereProb B n).prod (torusProb (Fin B × Fin n))) := by
    rw [integrable_prod_iff' hgm]
    refine ⟨Filter.Eventually.of_forall fun θ => (hslice θ).1, ?_⟩
    simp only [fun θ => (hslice θ).2.2]
    exact integrable_const _

  have hae : ∀ᵐ z ∂(blockSphereProb B n), ∀ p, blockPoint z p ≠ 0 := by
    rw [ae_iff]
    simpa [not_forall] using blockSphereProb_coord_zero (B := B) (n := n)
  calc blockSphereMean B n f
      = ∫ θ, ∫ z, Real.log ‖MvPolynomial.eval (fun p => blockPoint z p * torusPoint θ p) f‖
          ∂(blockSphereProb B n) ∂(torusProb (Fin B × Fin n)) := by
        simp only [fun θ => (hslice θ).2.1]
        simp
    _ = ∫ z, ∫ θ, Real.log ‖MvPolynomial.eval (fun p => blockPoint z p * torusPoint θ p) f‖
          ∂(torusProb (Fin B × Fin n)) ∂(blockSphereProb B n) :=
        (integral_integral_swap hgi).symm
    _ = ∫ z, scaledTorusMean (blockPoint z) f ∂(blockSphereProb B n) := rfl
    _ ≤ ∫ _z, torusMean f ∂(blockSphereProb B n) := by
        refine integral_mono_ae hgi.integral_prod_left (integrable_const _) ?_
        filter_upwards [hae] with z hz
        exact scaledTorusMean_le_torusMean hBasic f hf (blockPoint z) hz (norm_blockPoint_le z)
    _ = torusMean f := by simp

end ReciprocityTheory.MultiplicativeHeights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.SphereTorus =====

-- ===== clump member: ReciprocityTheory.SemistableReduction.TorusLexA =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.TorusLexA", "h": "module\n\npublic import ReciprocityTheory.SemistableReduction.SphereLogIntegrableStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.MultiplicativeHeights.TorusLexOrder

private theorem erase_eq_and_apply_eq_iff_eq_add_single {ι : Type} (i : ι) (k : ℕ) (s u : ι →₀ ℕ) (hu : u i = 0) :
    (s.erase i = u ∧ s i = k) ↔ s = u + Finsupp.single i k := by
  classical
  constructor
  · rintro ⟨h1, h2⟩
    ext j
    by_cases hj : j = i
    · subst hj
      simp [hu, h2]
    · have h3 : (s.erase i) j = u j := by rw [h1]
      rw [Finsupp.erase_ne hj] at h3
      simp [Ne.symm hj, h3]
  · rintro rfl
    refine ⟨?_, by simp [hu]⟩
    ext j
    by_cases hj : j = i
    · subst hj
      simp [hu]
    · simp [Finsupp.erase_ne hj]

theorem coeff_coeffIn {ι : Type} (i : ι) (k : ℕ) (f : MvPolynomial ι ℂ) (u : ι →₀ ℕ) :
    (coeffIn i k f).coeff u = if u i = 0 then f.coeff (u + Finsupp.single i k) else 0 := by
  classical
  unfold coeffIn
  rw [MvPolynomial.coeff_sum]
  simp only [MvPolynomial.coeff_monomial]
  split_ifs with hu
  · have hsp := (erase_eq_and_apply_eq_iff_eq_add_single i k (u + Finsupp.single i k) u hu).mpr rfl
    rw [Finset.sum_eq_single (u + Finsupp.single i k)]
    · rw [if_pos hsp.1]
    · intro t ht hne
      rw [if_neg]
      intro hte
      exact hne ((erase_eq_and_apply_eq_iff_eq_add_single i k t u hu).mp ⟨hte, (Finset.mem_filter.mp ht).2⟩)
    · intro hnot
      rw [if_pos hsp.1]
      by_contra hc
      exact hnot (Finset.mem_filter.mpr ⟨MvPolynomial.mem_support_iff.mpr hc, hsp.2⟩)
  · apply Finset.sum_eq_zero
    intro t _
    rw [if_neg]
    rintro rfl
    exact hu (by simp)

private theorem apply_eq_zero_and_add_single_mem_support_of_coeffIn {ι : Type} (i : ι) (k : ℕ) (f : MvPolynomial ι ℂ)
    (u : ι →₀ ℕ) (hu : u ∈ (coeffIn i k f).support) :
    u i = 0 ∧ u + Finsupp.single i k ∈ f.support := by
  rw [MvPolynomial.mem_support_iff, coeff_coeffIn] at hu
  by_cases h : u i = 0
  · rw [if_pos h] at hu
    exact ⟨h, MvPolynomial.mem_support_iff.mpr hu⟩
  · rw [if_neg h] at hu
    exact absurd rfl hu

private theorem eq_monomial_of_vars_eq_empty {ι : Type} [LinearOrder ι] (g : MvPolynomial ι ℂ)
    (s : ι →₀ ℕ) (hmin : ∀ t ∈ g.support, t ≠ s → ∃ i, (∀ j < i, s j = t j) ∧ s i < t i)
    (hv : g.vars = ∅) : g = MvPolynomial.monomial s (g.coeff s) := by
  classical
  ext u
  rw [MvPolynomial.coeff_monomial]
  split_ifs with h
  · rw [h]
  · by_contra hc
    obtain ⟨i, -, hi⟩ := hmin u (MvPolynomial.mem_support_iff.mpr hc) (Ne.symm h)
    have hmem : i ∈ g.vars := (MvPolynomial.mem_vars_iff_mem_support i).mpr
      ⟨u, MvPolynomial.mem_support_iff.mpr hc,
        Finsupp.mem_support_iff.mpr ((Nat.zero_le _).trans_lt hi).ne'⟩
    rw [hv] at hmem
    simp at hmem

theorem torusLex_of (hBasic : TorusMeanBasicStatement) (hCoeff : TorusCoeffStatement) :
    TorusLexStatement := by
  unfold ReciprocityTheory.MultiplicativeHeights.TorusLexStatement
  intro ι _ _ f s hs hmin
  have base : ∀ (g : MvPolynomial ι ℂ) (s : ι →₀ ℕ),
      (∀ t ∈ g.support, t ≠ s → ∃ i, (∀ j < i, s j = t j) ∧ s i < t i) → g.vars = ∅ →
      Real.log ‖g.coeff s‖ ≤ ReciprocityTheory.MultiplicativeHeights.torusMean g := by
    intro g s hmin hv
    have hg := eq_monomial_of_vars_eq_empty g s hmin hv
    have h1 : ReciprocityTheory.MultiplicativeHeights.torusMean g = Real.log ‖g.coeff s‖ :=
      (congrArg ReciprocityTheory.MultiplicativeHeights.torusMean hg).trans ((hBasic ι).2.2 s _)
    exact h1.ge
  suffices key : ∀ n : ℕ, ∀ (g : MvPolynomial ι ℂ) (s : ι →₀ ℕ), g.vars.card ≤ n →
      s ∈ g.support → (∀ t ∈ g.support, t ≠ s → ∃ i, (∀ j < i, s j = t j) ∧ s i < t i) →
      Real.log ‖g.coeff s‖ ≤ ReciprocityTheory.MultiplicativeHeights.torusMean g from key _ f s le_rfl hs hmin
  intro n
  induction n with
  | zero =>
    intro g s hcard _ hmin
    exact base g s hmin (Finset.card_eq_zero.mp (Nat.le_zero.mp hcard))
  | succ n ih =>
    intro g s hcard hs hmin
    by_cases hv : g.vars = ∅
    · exact base g s hmin hv
    have hne : g.vars.Nonempty := Finset.nonempty_iff_ne_empty.mpr hv
    obtain ⟨i, hiv, himin⟩ : ∃ i ∈ g.vars, ∀ j ∈ g.vars, i ≤ j :=
      ⟨g.vars.min' hne, Finset.min'_mem _ _, fun j hj => Finset.min'_le _ _ hj⟩
    have hlow : ∀ t ∈ g.support, s i ≤ t i := by
      intro t ht
      by_cases hts : t = s
      · rw [hts]
      · obtain ⟨i', hpre, hlt⟩ := hmin t ht hts
        have hi'v : i' ∈ g.vars := (MvPolynomial.mem_vars_iff_mem_support i').mpr
          ⟨t, ht, Finsupp.mem_support_iff.mpr ((Nat.zero_le _).trans_lt hlt).ne'⟩
        rcases (himin i' hi'v).lt_or_eq with h | h
        · exact (hpre i h).le
        · rw [h]
          exact hlt.le
    have h0 : (s.erase i) i = 0 := by simp
    have hsplit : s = s.erase i + Finsupp.single i (s i) :=
      (erase_eq_and_apply_eq_iff_eq_add_single i (s i) s (s.erase i) h0).mp ⟨rfl, rfl⟩
    have hcoef : (coeffIn i (s i) g).coeff (s.erase i) = g.coeff s := by
      rw [coeff_coeffIn, if_pos h0, ← hsplit]
    have hne' : coeffIn i (s i) g ≠ 0 := by
      intro hz
      have h2 := hcoef
      rw [hz, MvPolynomial.coeff_zero] at h2
      exact (MvPolynomial.mem_support_iff.mp hs) h2.symm
    have hs' : s.erase i ∈ (coeffIn i (s i) g).support := by
      rw [MvPolynomial.mem_support_iff, hcoef]
      exact MvPolynomial.mem_support_iff.mp hs
    have hvan : ∀ k', k' < s i → coeffIn i k' g = 0 := by
      intro k' hk'
      unfold coeffIn
      apply Finset.sum_eq_zero
      intro t ht
      obtain ⟨ht1, ht2⟩ := Finset.mem_filter.mp ht
      exact absurd (hlow t ht1) (by omega)
    have hmin' : ∀ t' ∈ (coeffIn i (s i) g).support, t' ≠ s.erase i →
        ∃ j, (∀ l < j, (s.erase i) l = t' l) ∧ (s.erase i) j < t' j := by
      intro t' ht' hne2
      obtain ⟨ht0, ht⟩ := apply_eq_zero_and_add_single_mem_support_of_coeffIn i (s i) g t' ht'
      have hsp := (erase_eq_and_apply_eq_iff_eq_add_single i (s i) (t' + Finsupp.single i (s i)) t' ht0).mpr rfl
      have hts : t' + Finsupp.single i (s i) ≠ s := by
        intro h
        apply hne2
        rw [← hsp.1, h]
      obtain ⟨j, hpre, hlt⟩ := hmin _ ht hts
      have hji : j ≠ i := by
        rintro rfl
        rw [hsp.2] at hlt
        exact lt_irrefl _ hlt
      refine ⟨j, fun l hl => ?_, ?_⟩
      · rw [← hsp.1]
        by_cases hli : l = i
        · simp [hli]
        · rw [Finsupp.erase_ne hli, Finsupp.erase_ne hli]
          exact hpre l hl
      · rw [← hsp.1, Finsupp.erase_ne hji, Finsupp.erase_ne hji]
        exact hlt
    have hvars : (coeffIn i (s i) g).vars ⊆ g.vars.erase i := by
      intro j hj
      obtain ⟨t', ht', hjt⟩ := (MvPolynomial.mem_vars_iff_mem_support j).mp hj
      obtain ⟨ht0, ht⟩ := apply_eq_zero_and_add_single_mem_support_of_coeffIn i (s i) g t' ht'
      have hji : j ≠ i := by
        rintro rfl
        exact (Finsupp.mem_support_iff.mp hjt) ht0
      refine Finset.mem_erase.mpr ⟨hji, (MvPolynomial.mem_vars_iff_mem_support j).mpr ⟨_, ht, ?_⟩⟩
      rw [Finsupp.mem_support_iff, Finsupp.add_apply, Finsupp.single_apply, if_neg (Ne.symm hji),
        add_zero]
      exact Finsupp.mem_support_iff.mp hjt
    have hcard' : (coeffIn i (s i) g).vars.card ≤ n := by
      have h1 := Finset.card_le_card hvars
      rw [Finset.card_erase_of_mem hiv] at h1
      omega
    calc Real.log ‖g.coeff s‖ = Real.log ‖(coeffIn i (s i) g).coeff (s.erase i)‖ := by rw [hcoef]
      _ ≤ ReciprocityTheory.MultiplicativeHeights.torusMean (coeffIn i (s i) g) := ih _ _ hcard' hs' hmin'
      _ ≤ ReciprocityTheory.MultiplicativeHeights.torusMean g := hCoeff ι g i (s i) hne' (Or.inr hvan)

end ReciprocityTheory.MultiplicativeHeights.TorusLexOrder
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.TorusLexA =====

-- ===== clump member: ReciprocityTheory.SemistableReduction.TorusLexB =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.TorusLexB", "h": "module\n\npublic import ReciprocityTheory.SemistableReduction.SphereLogIntegrableStatement\npublic import Mathlib.Data.FunLike.Fintype\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Integral.Pi\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\npublic import Mathlib.Topology.Algebra.MvPolynomial\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.SpecialFunctions.Integrals.Basic\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.MultiplicativeHeights.TorusLexOrder

open MeasureTheory ComplexConjugate

theorem torusProb_isProb (ι : Type) [Fintype ι] : IsProbabilityMeasure (torusProb ι) := by
  constructor
  rw [torusProb, Measure.pi_univ]
  simp

noncomputable def torusFactor (a b : ℕ) (x : ℝ) : ℂ :=
  Complex.exp (2 * Real.pi * Complex.I * (x : ℂ)) ^ a *
    conj (Complex.exp (2 * Real.pi * Complex.I * (x : ℂ))) ^ b

theorem torus_one_dim (a b : ℕ) :
    ∫ x in Set.Ioc (0 : ℝ) 1, torusFactor a b x = if a = b then 1 else 0 := by
  have key : ∀ x : ℝ, torusFactor a b x =
      Complex.exp ((2 * Real.pi * Complex.I * ((a : ℂ) - b)) * x) := by
    intro x
    simp only [torusFactor, ← Complex.exp_conj, ← Complex.exp_nat_mul, ← Complex.exp_add]
    congr 1
    simp only [map_mul, map_ofNat, Complex.conj_ofReal, Complex.conj_I]
    ring
  rw [← intervalIntegral.integral_of_le zero_le_one]
  simp_rw [key]
  split_ifs with h
  · subst h; simp
  · have hab : ((a : ℂ) - b) ≠ 0 := sub_ne_zero.mpr (by exact_mod_cast h)
    have hc : (2 * Real.pi * Complex.I * ((a : ℂ) - b)) ≠ 0 := by
      refine mul_ne_zero (mul_ne_zero (mul_ne_zero two_ne_zero ?_) Complex.I_ne_zero) hab
      exact_mod_cast Real.pi_ne_zero
    rw [integral_exp_mul_complex hc]
    have h1 : Complex.exp (2 * Real.pi * Complex.I * ((a : ℂ) - b) * ((1 : ℝ) : ℂ)) = 1 := by
      rw [Complex.exp_eq_one_iff]
      exact ⟨(a : ℤ) - b, by push_cast; ring⟩
    rw [h1]; simp

noncomputable def torusMono {ι : Type} [Fintype ι] (θ : ι → ℝ) (s : ι →₀ ℕ) : ℂ :=
  ∏ i, torusPoint θ i ^ s i

theorem norm_torusPoint {ι : Type} (θ : ι → ℝ) (i : ι) : ‖torusPoint θ i‖ = 1 := by
  simp only [torusPoint]
  have h : 2 * (Real.pi : ℂ) * Complex.I * (θ i : ℂ) = ((2 * Real.pi * θ i : ℝ) : ℂ) * Complex.I := by
    push_cast; ring
  rw [h, Complex.norm_exp_ofReal_mul_I]

theorem norm_torusMono {ι : Type} [Fintype ι] (θ : ι → ℝ) (s : ι →₀ ℕ) :
    ‖torusMono θ s‖ = 1 := by
  simp [torusMono, norm_prod, norm_pow, norm_torusPoint]

theorem continuous_torusPoint {ι : Type} : Continuous (fun θ : ι → ℝ => torusPoint θ) := by
  exact continuous_pi fun i => by simp only [torusPoint]; fun_prop

theorem torus_orth {ι : Type} [Fintype ι] (s t : ι →₀ ℕ) :
    ∫ θ, torusMono θ t * conj (torusMono θ s) ∂(torusProb ι) = if t = s then 1 else 0 := by
  classical
  have h : ∀ θ : ι → ℝ, torusMono θ t * conj (torusMono θ s) =
      ∏ i, torusFactor (t i) (s i) (θ i) := by
    intro θ
    simp only [torusMono, torusFactor, torusPoint, map_prod, map_pow, ← Finset.prod_mul_distrib]
  simp_rw [h]
  rw [torusProb, integral_fintype_prod_eq_prod (f := fun i x => torusFactor (t i) (s i) x)]
  simp_rw [torus_one_dim]
  split_ifs with hts
  · subst hts; simp
  · have : ∃ i, t i ≠ s i := by
      by_contra hc; push_neg at hc; exact hts (Finsupp.ext hc)
    obtain ⟨i, hi⟩ := this
    exact Finset.prod_eq_zero (Finset.mem_univ i) (if_neg hi)

theorem integrable_of_bdd {ι : Type} [Fintype ι] {E : Type*} [NormedAddCommGroup E]
    {g : (ι → ℝ) → E} (hg : Continuous g) (C : ℝ) (hC : ∀ θ, ‖g θ‖ ≤ C) :
    Integrable g (torusProb ι) := by
  haveI := torusProb_isProb ι
  exact Integrable.of_bound hg.aestronglyMeasurable C (Filter.Eventually.of_forall hC)

theorem eval_torus {ι : Type} [Fintype ι] (f : MvPolynomial ι ℂ) (θ : ι → ℝ) :
    MvPolynomial.eval (torusPoint θ) f = ∑ s ∈ f.support, f.coeff s * torusMono θ s := by
  rw [MvPolynomial.eval_eq']; rfl

theorem norm_eval_torus_le {ι : Type} [Fintype ι] (f : MvPolynomial ι ℂ) (θ : ι → ℝ) :
    ‖MvPolynomial.eval (torusPoint θ) f‖ ≤ ∑ s ∈ f.support, ‖f.coeff s‖ := by
  rw [eval_torus]
  refine (norm_sum_le _ _).trans (le_of_eq ?_)
  refine Finset.sum_congr rfl fun s _ => ?_
  rw [norm_mul, norm_torusMono, mul_one]

theorem continuous_eval_torus {ι : Type} [Fintype ι] (f : MvPolynomial ι ℂ) :
    Continuous (fun θ : ι → ℝ => MvPolynomial.eval (torusPoint θ) f) := by
  exact (MvPolynomial.continuous_eval f).comp continuous_torusPoint

end ReciprocityTheory.MultiplicativeHeights.TorusLexOrder
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.TorusLexB =====

-- ===== clump member: ReciprocityTheory.SemistableReduction.TorusLexC =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.TorusLexC", "h": "module\n\npublic import ReciprocityTheory.SemistableReduction.TorusLexB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.MultiplicativeHeights.TorusLexOrder

open MeasureTheory ComplexConjugate

private theorem continuous_torusMono' {ι : Type} [Fintype ι] (s : ι →₀ ℕ) :
    Continuous (fun θ : ι → ℝ => torusMono θ s) := by
  have h : ∀ i, Continuous fun θ : ι → ℝ => torusPoint θ i :=
    fun i => (continuous_apply i).comp continuous_torusPoint
  unfold torusMono
  exact continuous_finsetProd _ (fun i _ => (h i).pow _)

theorem integrable_torus_term {ι : Type} [Fintype ι] (f : MvPolynomial ι ℂ) (s : ι →₀ ℕ) :
    Integrable (fun θ => MvPolynomial.eval (torusPoint θ) f * conj (torusMono θ s))
      (torusProb ι) := by
  refine integrable_of_bdd ((continuous_eval_torus f).mul
    (Complex.continuous_conj.comp (continuous_torusMono' s))) (∑ t ∈ f.support, ‖f.coeff t‖)
    (fun θ => ?_)
  have h := norm_eval_torus_le f θ
  simpa [_root_.ReciprocityTheory.MultiplicativeHeights.TorusLexOrder.norm_torusMono] using h

theorem integrable_mono_term {ι : Type} [Fintype ι] (t s : ι →₀ ℕ) :
    Integrable (fun θ => torusMono θ t * conj (torusMono θ s)) (torusProb ι) := by
  refine integrable_of_bdd ((continuous_torusMono' t).mul
    (Complex.continuous_conj.comp (continuous_torusMono' s))) 1 (fun θ => ?_)
  simp [_root_.ReciprocityTheory.MultiplicativeHeights.TorusLexOrder.norm_torusMono]

theorem torus_coeff_integral {ι : Type} [Fintype ι] (f : MvPolynomial ι ℂ) (s : ι →₀ ℕ) :
    ∫ θ, MvPolynomial.eval (torusPoint θ) f * conj (torusMono θ s) ∂(torusProb ι) =
      f.coeff s := by
  simp_rw [eval_torus, Finset.sum_mul]
  rw [MeasureTheory.integral_finsetSum _ (fun t _ => by
    simpa [mul_assoc] using (integrable_mono_term t s).const_mul (f.coeff t))]
  simp_rw [mul_assoc, integral_const_mul, torus_orth, mul_ite, mul_one, mul_zero]
  rw [Finset.sum_ite_eq']
  split_ifs with h
  · rfl
  · exact (MvPolynomial.notMem_support_iff.mp h).symm

theorem torus_parseval {ι : Type} [Fintype ι] (f : MvPolynomial ι ℂ) :
    ∫ θ, ‖MvPolynomial.eval (torusPoint θ) f‖ ^ 2 ∂(torusProb ι) =
      ∑ s ∈ f.support, ‖f.coeff s‖ ^ 2 := by
  have key : ∀ θ, ((‖MvPolynomial.eval (torusPoint θ) f‖ ^ 2 : ℝ) : ℂ) =
      ∑ s ∈ f.support, conj (f.coeff s) *
        (MvPolynomial.eval (torusPoint θ) f * conj (torusMono θ s)) := by
    intro θ
    have hc : conj (MvPolynomial.eval (torusPoint θ) f) =
        ∑ s ∈ f.support, conj (f.coeff s) * conj (torusMono θ s) := by
      conv_lhs => rw [eval_torus]

      simp [map_sum, map_mul]
    push_cast
    rw [show ((‖MvPolynomial.eval (torusPoint θ) f‖ : ℂ)) ^ 2 =
        MvPolynomial.eval (torusPoint θ) f * conj (MvPolynomial.eval (torusPoint θ) f) by
      rw [Complex.mul_conj, Complex.normSq_eq_norm_sq]; push_cast; ring]
    rw [hc, Finset.mul_sum]
    refine Finset.sum_congr rfl (fun s _ => ?_)
    ring
  apply Complex.ofReal_injective
  rw [← integral_complex_ofReal]
  simp_rw [key]
  rw [MeasureTheory.integral_finsetSum _ (fun s _ => (integrable_torus_term f s).const_mul _)]
  simp_rw [integral_const_mul, torus_coeff_integral]
  push_cast
  refine Finset.sum_congr rfl (fun s _ => ?_)
  rw [mul_comm, Complex.mul_conj, Complex.normSq_eq_norm_sq]
  push_cast
  ring

theorem torusPoint_fract {ι : Type} (θ : ι → ℝ) :
    torusPoint (fun i => Int.fract (θ i)) = torusPoint θ := by
  funext i
  simp only [torusPoint]
  rw [← Int.self_sub_floor]
  push_cast
  rw [mul_sub, Complex.exp_sub]
  have h : Complex.exp (2 * Real.pi * Complex.I * ((⌊θ i⌋ : ℤ) : ℂ)) = 1 := by
    rw [show 2 * Real.pi * Complex.I * ((⌊θ i⌋ : ℤ) : ℂ) = (⌊θ i⌋ : ℤ) * (2 * Real.pi * Complex.I) by
      ring]
    exact Complex.exp_int_mul_two_pi_mul_I _
  rw [h, div_one]

theorem exists_torus_max {ι : Type} [Fintype ι] (f : MvPolynomial ι ℂ) :
    ∃ θ₀ : ι → ℝ, ∀ θ, ‖MvPolynomial.eval (torusPoint θ) f‖ ≤
      ‖MvPolynomial.eval (torusPoint θ₀) f‖ := by
  obtain ⟨θ₀, -, hθ₀⟩ := (isCompact_univ_pi (fun _ : ι => isCompact_Icc (a := (0 : ℝ)) (b := 1))).exists_isMaxOn
    ⟨fun _ => 0, fun i _ => by simp⟩ (continuous_eval_torus f).norm.continuousOn
  refine ⟨θ₀, fun θ => ?_⟩
  have hmem : (fun i => Int.fract (θ i)) ∈ Set.pi Set.univ (fun _ : ι => Set.Icc (0 : ℝ) 1) :=
    fun i _ => ⟨Int.fract_nonneg _, (Int.fract_lt_one _).le⟩
  have h := isMaxOn_iff.mp hθ₀ _ hmem
  simp only [torusPoint_fract] at h
  exact h

theorem torus_l2_cauchy_of_basic (hBasic : TorusMeanBasicStatement) : TorusL2Cauchy := by
  intro ι _ f
  haveI := torusProb_isProb ι
  obtain ⟨hInt, hMul, hMono⟩ := hBasic ι
  constructor
  · intro hf
    set A := ∑ s ∈ f.support, ‖f.coeff s‖ ^ 2 with hA
    have hApos : 0 < A := by
      obtain ⟨s, hs⟩ := Finset.nonempty_of_ne_empty (mt MvPolynomial.support_eq_empty.mp hf)
      exact Finset.sum_pos' (fun _ _ => by positivity)
        ⟨s, hs, pow_pos (norm_pos_iff.mpr (MvPolynomial.mem_support_iff.mp hs)) 2⟩
    have hq : 0 < Real.exp 1 / A := div_pos (Real.exp_pos 1) hApos
    set r : ℝ := Real.sqrt (Real.exp 1 / A) with hrdef
    have hr : 0 < r := Real.sqrt_pos.mpr hq
    have hr2 : r ^ 2 = Real.exp 1 / A := Real.sq_sqrt hq.le
    have hc : ((r : ℂ)) ≠ 0 := by exact_mod_cast hr.ne'
    have hcn : ‖(r : ℂ)‖ = r := by simp [abs_of_pos hr]
    have hCc : (MvPolynomial.C (r : ℂ) : MvPolynomial ι ℂ) ≠ 0 := by simpa using hc
    have hmean : torusMean (MvPolynomial.C (r : ℂ) * f) = Real.log r + torusMean f := by
      rw [hMul _ _ hCc hf, MvPolynomial.C_apply, hMono, hcn]
    have hpt : ∀ θ, Real.log ‖MvPolynomial.eval (torusPoint θ) (MvPolynomial.C (r : ℂ) * f)‖ ≤
        r ^ 2 / Real.exp 1 * ‖MvPolynomial.eval (torusPoint θ) f‖ ^ 2 / 2 := by
      intro θ
      rw [MvPolynomial.eval_mul, MvPolynomial.eval_C, norm_mul, hcn]
      have hx : 0 ≤ ‖MvPolynomial.eval (torusPoint θ) f‖ := norm_nonneg _
      rcases hx.eq_or_lt with h0 | hpos
      · rw [← h0]; simp
      · have hy : 0 < (r * ‖MvPolynomial.eval (torusPoint θ) f‖) ^ 2 / Real.exp 1 := by positivity
        have h1 := Real.log_le_sub_one_of_pos hy
        rw [Real.log_div (ne_of_gt (by positivity)) (Real.exp_pos 1).ne', Real.log_exp,
          Real.log_pow] at h1
        have e2 : (r * ‖MvPolynomial.eval (torusPoint θ) f‖) ^ 2 / Real.exp 1 =
            r ^ 2 / Real.exp 1 * ‖MvPolynomial.eval (torusPoint θ) f‖ ^ 2 := by ring
        push_cast at h1
        linarith
    have hint2 : Integrable (fun θ => ‖MvPolynomial.eval (torusPoint θ) f‖ ^ 2) (torusProb ι) :=
      integrable_of_bdd ((continuous_eval_torus f).norm.pow 2) ((∑ s ∈ f.support, ‖f.coeff s‖) ^ 2)
        (fun θ => by
          rw [Real.norm_eq_abs, abs_of_nonneg (by positivity)]
          exact pow_le_pow_left₀ (norm_nonneg _) (norm_eval_torus_le f θ) 2)
    have hle : torusMean (MvPolynomial.C (r : ℂ) * f) ≤ r ^ 2 / Real.exp 1 * A / 2 := by
      unfold torusMean
      calc _ ≤ ∫ θ, r ^ 2 / Real.exp 1 * ‖MvPolynomial.eval (torusPoint θ) f‖ ^ 2 / 2 ∂(torusProb ι) :=
            integral_mono (hInt _ (mul_ne_zero hCc hf)) ((hint2.const_mul _).div_const 2) hpt
        _ = r ^ 2 / Real.exp 1 * A / 2 := by
            rw [integral_div, integral_const_mul, torus_parseval]
    have h12 : r ^ 2 / Real.exp 1 * A / 2 = 1 / 2 := by
      rw [hr2]; field_simp
    have hlogr : Real.log r = (1 - Real.log A) / 2 := by
      rw [hrdef, Real.log_sqrt hq.le, Real.log_div (Real.exp_pos 1).ne' hApos.ne', Real.log_exp]
    unfold polyL2
    rw [← hA, Real.log_sqrt hApos.le]
    linarith
  · intro s
    obtain ⟨θ₀, hθ₀⟩ := exists_torus_max f
    refine ⟨θ₀, ?_⟩
    rw [← torus_coeff_integral f s]
    have hb : ∀ᵐ θ ∂(torusProb ι), ‖MvPolynomial.eval (torusPoint θ) f * conj (torusMono θ s)‖ ≤
        ‖MvPolynomial.eval (torusPoint θ₀) f‖ :=
      Filter.Eventually.of_forall (fun θ => by simpa [_root_.ReciprocityTheory.MultiplicativeHeights.TorusLexOrder.norm_torusMono] using hθ₀ θ)
    simpa using norm_integral_le_of_norm_le_const hb

end ReciprocityTheory.MultiplicativeHeights.TorusLexOrder
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.TorusLexC =====

-- ===== clump member: ReciprocityTheory.SemistableReduction.TorusLex =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.TorusLex", "h": "module\n\npublic import ReciprocityTheory.SemistableReduction.SphereLogIntegrableStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.SemistableReduction.TorusLexA\npublic import ReciprocityTheory.SemistableReduction.TorusLexC\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.MultiplicativeHeights

theorem torusLex_holds (hBasic : TorusMeanBasicStatement) (hCoeff : TorusCoeffStatement) :
    TorusLexStatement ∧ TorusL2Cauchy :=
  ⟨TorusLexOrder.torusLex_of hBasic hCoeff, TorusLexOrder.torus_l2_cauchy_of_basic hBasic⟩

end ReciprocityTheory.MultiplicativeHeights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.TorusLex =====

-- ===== clump member: ReciprocityTheory.SemistableReduction.TorusMeanD =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.TorusMeanD", "h": "module\n\npublic import ReciprocityTheory.SemistableReduction.TorusMeanC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.MultiplicativeHeights

open MeasureTheory Real Function

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

lemma slice_abs_integral_le (f : MvPolynomial ι ℂ) (i : ι) (θ : ι → ℝ) :
    ∫ t, ‖tmLog f (update θ i t)‖ ∂unitIntervalMeasure ≤
      2 * posLog (∑ s ∈ f.support, ‖f.coeff s‖) +
        ∑ k ∈ Finset.range (f.support.sup (fun s => s i) + 1), |tmLog (coeffIn i k f) θ| := by
  have hu : ∀ t, tmLog f (update θ i t) =
      Real.log ‖(tmSlice i (torusPoint θ) f).eval (circPt t)‖ := tmLog_update f θ i
  have hL : 0 ≤ posLog (∑ s ∈ f.support, ‖f.coeff s‖) := posLog_nonneg
  have hI : Integrable (fun t => tmLog f (update θ i t)) unitIntervalMeasure := by
    simp_rw [hu]; exact integrableOn_log_circ _
  have h1 : ∫ t, ‖tmLog f (update θ i t)‖ ∂unitIntervalMeasure ≤
      ∫ t, (2 * posLog (∑ s ∈ f.support, ‖f.coeff s‖) - tmLog f (update θ i t)) ∂unitIntervalMeasure := by
    refine integral_mono hI.norm ((integrable_const _).sub hI) fun t => ?_
    have := tmLog_le f (update θ i t)
    simp only [Real.norm_eq_abs]
    rcases abs_cases (tmLog f (update θ i t)) with ⟨h, _⟩ | ⟨h, _⟩ <;> linarith
  have h2 : ∫ t, (2 * posLog (∑ s ∈ f.support, ‖f.coeff s‖) - tmLog f (update θ i t)) ∂unitIntervalMeasure =
      2 * posLog (∑ s ∈ f.support, ‖f.coeff s‖) -
        (tmSlice i (torusPoint θ) f).logMahlerMeasure := by
    rw [integral_sub (integrable_const _) hI, integral_const]
    simp_rw [hu]
    rw [integral_log_circ]
    simp
  have h3 : |Real.log ‖(tmSlice i (torusPoint θ) f).leadingCoeff‖| ≤
      ∑ k ∈ Finset.range (f.support.sup (fun s => s i) + 1), |tmLog (coeffIn i k f) θ| := by
    rw [Polynomial.leadingCoeff, tmSlice_coeff]
    by_cases hn : (tmSlice i (torusPoint θ) f).natDegree < f.support.sup (fun s => s i) + 1
    · exact Finset.single_le_sum (f := fun k => |tmLog (coeffIn i k f) θ|)
        (fun k _ => abs_nonneg _) (Finset.mem_range.mpr hn)
    · rw [coeffIn_eq_zero_of_lt i f _ (by omega)]
      simp only [map_zero, norm_zero, Real.log_zero, abs_zero]
      exact Finset.sum_nonneg fun k _ => abs_nonneg _
  have h4 := log_norm_leadingCoeff_le (tmSlice i (torusPoint θ) f)
  have h5 := neg_abs_le (Real.log ‖(tmSlice i (torusPoint θ) f).leadingCoeff‖)
  linarith

lemma integrable_log_abs_on_torus (S : Finset ι) :
    ∀ f : MvPolynomial ι ℂ, f.vars ⊆ S → Integrable (tmLog f) (torusProb ι) := by
  induction S using Finset.induction_on with
  | empty =>
    intro f hS
    have : tmLog f = fun _ => Real.log ‖MvPolynomial.constantCoeff f‖ := by
      funext θ; simp [tmLog, eval_const_of_vars_empty f hS]
    rw [this]; exact integrable_const _
  | insert i S' hi ih =>
    intro f hS
    have hsub : ∀ k, (coeffIn i k f).vars ⊆ S' := by
      intro k j hj
      have h1 := vars_coeffIn_subset i k f hj
      rw [Finset.mem_erase] at h1
      have h2 := hS h1.2
      rw [Finset.mem_insert] at h2
      exact h2.resolve_left h1.1
    have hmeas : AEStronglyMeasurable (tmLog f ∘ tmUpd i) ((torusProb ι).prod unitIntervalMeasure) :=
      ((measurable_tmLog f).comp (measurable_tmUpd i)).aestronglyMeasurable
    rw [← tm_integrable_comp i (measurable_tmLog f).aestronglyMeasurable,
      integrable_prod_iff hmeas]
    refine ⟨Filter.Eventually.of_forall fun θ => ?_, ?_⟩
    · show Integrable (fun t => tmLog f (update θ i t)) unitIntervalMeasure
      simp_rw [tmLog_update]
      exact integrableOn_log_circ _
    · have hG : Integrable (fun θ => 2 * posLog (∑ s ∈ f.support, ‖f.coeff s‖) +
          ∑ k ∈ Finset.range (f.support.sup (fun s => s i) + 1), |tmLog (coeffIn i k f) θ|)
          (torusProb ι) :=
        (integrable_const _).add (integrable_finsetSum _ fun k _ => (ih _ (hsub k)).abs)
      refine hG.mono' hmeas.norm.integral_prod_right' (Filter.Eventually.of_forall fun θ => ?_)
      rw [Real.norm_of_nonneg (integral_nonneg fun _ => norm_nonneg _)]
      exact slice_abs_integral_le f i θ

lemma tm_int (f : MvPolynomial ι ℂ) : Integrable (tmLog f) (torusProb ι) :=
  integrable_log_abs_on_torus Finset.univ f (Finset.subset_univ _)

lemma tm_ae_ne (f : MvPolynomial ι ℂ) (hf : f ≠ 0) :
    ∀ᵐ θ ∂(torusProb ι), MvPolynomial.eval (torusPoint θ) f ≠ 0 := by
  rw [ae_iff]; simpa using tm_null f hf

end ReciprocityTheory.MultiplicativeHeights
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.TorusMeanD =====

-- ===== clump member: ReciprocityTheory.SemistableReduction.TorusMean =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.TorusMean", "h": "module\n\npublic import ReciprocityTheory.SemistableReduction.SphereLogIntegrableStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.MeasureTheory.Measure.RegularityCompacts\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\npublic import ReciprocityTheory.SemistableReduction.TorusMeanD\npublic import ReciprocityTheory.SemistableReduction.TorusMeanA\npublic import ReciprocityTheory.SemistableReduction.TorusMeanB\npublic import ReciprocityTheory.SemistableReduction.TorusMeanC\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.MultiplicativeHeights

open MeasureTheory Real Function

theorem torusMean_holds : TorusMeanBasicStatement ∧ TorusCoeffStatement := by
  classical
  refine ⟨fun ι _ => ⟨fun f _ => tm_int f, fun f g hf hg => ?_, fun s c => ?_⟩,
    fun ι _ f i k hk hext => ?_⟩
  · show ∫ θ, tmLog (f * g) θ ∂(torusProb ι) =
      ∫ θ, tmLog f θ ∂(torusProb ι) + ∫ θ, tmLog g θ ∂(torusProb ι)
    rw [← integral_add (tm_int f) (tm_int g)]
    apply integral_congr_ae
    filter_upwards [tm_ae_ne f hf, tm_ae_ne g hg] with θ h1 h2
    simp only [tmLog, map_mul, norm_mul]
    exact Real.log_mul (norm_ne_zero_iff.mpr h1) (norm_ne_zero_iff.mpr h2)
  · have hm : ∀ θ, tmLog (MvPolynomial.monomial s c) θ = Real.log ‖c‖ := by
      intro θ
      simp [tmLog, MvPolynomial.eval_monomial, Finsupp.prod, norm_prod, norm_pow,
        norm_torusPoint]
    show ∫ θ, tmLog (MvPolynomial.monomial s c) θ ∂(torusProb ι) = Real.log ‖c‖
    simp_rw [hm]
    simp
  · show ∫ θ, tmLog (coeffIn i k f) θ ∂(torusProb ι) ≤ ∫ θ, tmLog f θ ∂(torusProb ι)
    have hFi : Integrable (tmLog f ∘ tmUpd i) ((torusProb ι).prod unitIntervalMeasure) :=
      (tm_integrable_comp i (measurable_tmLog f).aestronglyMeasurable).mpr (tm_int f)
    rw [tm_integral_comp i (measurable_tmLog f).aestronglyMeasurable,
      integral_prod (fun p => tmLog f (tmUpd i p)) hFi]
    refine integral_mono_ae (tm_int _) hFi.integral_prod_left ?_
    filter_upwards [tm_ae_ne _ hk] with θ hθ
    show tmLog (coeffIn i k f) θ ≤ ∫ t, tmLog f (update θ i t) ∂unitIntervalMeasure
    simp_rw [tmLog_update]
    rw [integral_log_circ]
    have hc : (tmSlice i (torusPoint θ) f).coeff k = MvPolynomial.eval (torusPoint θ) (coeffIn i k f) :=
      tmSlice_coeff i _ f k
    have hk' : (tmSlice i (torusPoint θ) f).coeff k ≠ 0 := hc ▸ hθ
    show Real.log ‖MvPolynomial.eval (torusPoint θ) (coeffIn i k f)‖ ≤ _
    rw [← hc]
    rcases hext with htop | hbot
    · exact log_norm_coeff_top_le _ k hk' fun k' hk'' => by
        rw [tmSlice_coeff, htop k' hk'', map_zero]
    · exact log_norm_coeff_bot_le _ k hk' fun k' hk'' => by
        rw [tmSlice_coeff, hbot k' hk'', map_zero]

end ReciprocityTheory.MultiplicativeHeights
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.TorusMean =====

-- ===== clump member: ReciprocityTheory.SemistableReduction.TorusL2CauchyInequality =====
-- clump-header: {"m": "ReciprocityTheory.SemistableReduction.TorusL2CauchyInequality", "h": "module\n\npublic import ReciprocityTheory.SemistableReduction.SphereLogIntegrableStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.SemistableReduction.GramOfLinearOrder\npublic import ReciprocityTheory.SemistableReduction.HeightLowerBound\npublic import ReciprocityTheory.SemistableReduction.IntCores\npublic import ReciprocityTheory.SemistableReduction.LagrangeIdealLiftsFact\npublic import ReciprocityTheory.SemistableReduction.SJCore\npublic import ReciprocityTheory.SemistableReduction.SjHolds\npublic import ReciprocityTheory.SemistableReduction.SphereTorus\npublic import ReciprocityTheory.SemistableReduction.TorusLex\npublic import ReciprocityTheory.SemistableReduction.TorusMean\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.MultiplicativeHeights.Closed

open ReciprocityTheory.MultiplicativeHeights

alias sphereLinLog := _root_.ReciprocityTheory.MultiplicativeHeights.sjCore_holds

theorem sj : SJStatement := sj_holds sphereLinLog

theorem sphereLogIntegrable : SphereLogIntegrableStatement := sphereLogIntegrable_holds sj

theorem gauss_height_additivity : HeightAdditiveStatement := gauss_height_add_of_sphere sphereLogIntegrable

theorem sphere_height_lower_bound : HeightLowerBoundStatement := heightLowerBound_of_sj_of_sphereLogIntegrable sj sphereLogIntegrable

theorem torusMeanBasic : TorusMeanBasicStatement := torusMean_holds.1

theorem torusCoeff : TorusCoeffStatement := torusMean_holds.2

theorem torusLex : TorusLexStatement := (torusLex_holds torusMeanBasic torusCoeff).1

theorem torus_l2_cauchy_inequality : TorusL2Cauchy := (torusLex_holds torusMeanBasic torusCoeff).2

theorem gram : GramStatement := gram_holds torusMeanBasic torusLex torus_l2_cauchy_inequality

theorem sphereLeTorus : SphereLeTorusStatement := sphereTorus_holds sphereLogIntegrable torusMeanBasic

end ReciprocityTheory.MultiplicativeHeights.Closed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.SemistableReduction.TorusL2CauchyInequality =====
