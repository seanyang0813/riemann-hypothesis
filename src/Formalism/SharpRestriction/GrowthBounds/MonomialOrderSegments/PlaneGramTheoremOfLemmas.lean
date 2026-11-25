module

public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.CollapseExponent
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.AddMemSupportOfMemSupportCoefOut
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.CgeZeroIffIntegral
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.FockMonomialRight
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.ProjKeepsLetter
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SlopeOfBinomCombGen
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.DigitPartMonomial
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SegDefs
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.Monomial
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.TestBoundOfRhoAndNormSets
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SecondEmbeddingInjective
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.IntegralMonomial
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SubstitutionXFirstEmbedding
public import Mathlib.CategoryTheory.Category.Basic
public import Mathlib.Data.FunLike.Fintype
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.LiftBoundOfHypotheses
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.OmegaValue
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SumOnLetterApplyInl
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SubstitutedExponentApplyBlock

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.CardLinkIdxMulLe, Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.ExistsOfMemSupportLin, Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.PrimedEmbeddingInjective, Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.MonomialMemPolKSg, Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.RenamePullLCoefOut, Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.PlaneGramTheoremOfLemmas

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.CardLinkIdxMulLe =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.CardLinkIdxMulLe", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.CollapseExponent\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.AddMemSupportOfMemSupportCoefOut\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.CgeZeroIffIntegral\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.FockMonomialRight\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.ProjKeepsLetter\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SlopeOfBinomCombGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.DigitPartMonomial\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.PlaneGram

namespace TwistData

variable {K : Type} [Field K] (D : TwistData K)

theorem mem_Tset (j : Fin D.J) (m : Fin D.r) (z : D.OL) :
    z ∈ D.Tset j m ↔ (∃ b, D.seg b = j ∧ z = Sum.inl b) ∨ (∃ m', m < m' ∧ z = Sum.inr (j, m')) := by
  simp only [Tset, LLj, Finset.mem_union, Finset.mem_image, Finset.mem_filter, Finset.mem_univ, true_and]
  constructor
  · rintro (⟨b, hb, rfl⟩ | ⟨m', hm', rfl⟩)
    · exact Or.inl ⟨b, hb, rfl⟩
    · exact Or.inr ⟨m', hm', rfl⟩
  · rintro (⟨b, hb, rfl⟩ | ⟨m', hm', rfl⟩)
    · exact Or.inl ⟨b, hb, rfl⟩
    · exact Or.inr ⟨m', hm', rfl⟩

theorem Tset_mono (j : Fin D.J) {m m' : Fin D.r} (h : m ≤ m') : D.Tset j m' ⊆ D.Tset j m := by
  intro z hz
  rw [mem_Tset] at hz ⊢
  rcases hz with hz | ⟨m'', hm'', rfl⟩
  · exact Or.inl hz
  · exact Or.inr ⟨m'', lt_of_le_of_lt h hm'', rfl⟩

theorem Tset_disjoint {j j' : Fin D.J} (h : j ≠ j') (m m' : Fin D.r) :
    Disjoint (D.Tset j m) (D.Tset j' m') := by
  rw [Finset.disjoint_left]
  intro z hz hz'
  rw [mem_Tset] at hz hz'
  rcases hz with ⟨b, hb, rfl⟩ | ⟨m1, -, rfl⟩
  · rcases hz' with ⟨b', hb', e⟩ | ⟨m2, -, e⟩
    · have : b = b' := Sum.inl.inj e
      subst this
      exact h (hb.symm.trans hb')
    · cases e
  · rcases hz' with ⟨b', -, e⟩ | ⟨m2, -, e⟩
    · cases e
    · have := Sum.inr.inj e
      exact h (congrArg Prod.fst this)

theorem Tset_pair (x y : Fin D.J × Fin D.r) :
    D.Tset x.1 x.2 ⊆ D.Tset y.1 y.2 ∨ D.Tset y.1 y.2 ⊆ D.Tset x.1 x.2 ∨
      Disjoint (D.Tset x.1 x.2) (D.Tset y.1 y.2) := by
  obtain ⟨j, m⟩ := x
  obtain ⟨j', m'⟩ := y
  by_cases h : j = j'
  · subst h
    rcases le_total m m' with h | h
    · exact Or.inr (Or.inl (D.Tset_mono j h))
    · exact Or.inl (D.Tset_mono j h)
  · exact Or.inr (Or.inr (D.Tset_disjoint h m m'))

def linkIdx : Finset (Fin D.J × Fin D.r) := univ.filter fun x => x.2.val + 2 ≤ D.r

theorem card_linkIdx_le : D.linkIdx.card ≤ D.J * (D.r - 1) := by
  classical
  have h1 : D.linkIdx ⊆ (univ : Finset (Fin D.J)) ×ˢ (univ.filter fun m : Fin D.r => m.val + 2 ≤ D.r) := by
    intro x hx
    simp only [linkIdx, Finset.mem_filter, Finset.mem_univ, true_and] at hx
    simp [hx]
  have h2 : (univ.filter fun m : Fin D.r => m.val + 2 ≤ D.r).card ≤ D.r - 1 := by
    have := Finset.card_le_card_of_injOn (s := univ.filter fun m : Fin D.r => m.val + 2 ≤ D.r)
      (t := Finset.range (D.r - 1)) (fun m => m.val)
      (by
        intro m hm
        simp only [Finset.coe_filter, Finset.mem_univ, true_and, Set.mem_setOf_eq] at hm
        simp only [Finset.coe_range, Set.mem_Iio]
        omega)
      (by intro a _ b _ hab; exact Fin.ext hab)
    simpa using this
  calc D.linkIdx.card ≤ _ := Finset.card_le_card h1
    _ = D.J * (univ.filter fun m : Fin D.r => m.val + 2 ≤ D.r).card := by
        rw [Finset.card_product, Finset.card_univ, Fintype.card_fin]
    _ ≤ D.J * (D.r - 1) := Nat.mul_le_mul_left _ h2

theorem eC_nonneg' {p : ℕ} (hp : 2 ≤ p) (hr : 1 ≤ D.r) {C0 : ℝ} (h1 : 1 ≤ C0) : 0 ≤ D.eC p C0 := by
  unfold eC
  have := lg_ge_one hp hr (2 * D.totDeg)
  positivity

theorem Dm_nonneg' {p : ℕ} (hp : 2 ≤ p) (hr : 1 ≤ D.r) {C0 : ℝ} (h1 : 1 ≤ C0) : 0 ≤ D.Dm p C0 := by
  unfold Dm
  have := D.eC_nonneg' hp hr h1
  exact Finset.sum_nonneg fun j _ => by positivity

theorem Dl_nonneg' {p : ℕ} (hp : 2 ≤ p) (hr : 1 ≤ D.r) {C0 : ℝ} (h1 : 1 ≤ C0) : 0 ≤ D.Dl p C0 := by
  unfold Dl
  have := D.eC_nonneg' hp hr h1
  have h2 : (0 : ℝ) ≤ (D.r : ℝ) - 1 := by
    have : (1 : ℝ) ≤ D.r := by exact_mod_cast hr
    linarith
  positivity

theorem kapD_nonneg' {p : ℕ} (hp : 2 ≤ p) (hr : 1 ≤ D.r) : 0 ≤ D.kapD p := by
  unfold kapD
  refine le_trans ?_ (kap_ge_card hp hr D.dO)
  positivity

theorem card_linkIdx_mul_le {p : ℕ} (hp : 2 ≤ p) (hr : 1 ≤ D.r) {C0 : ℝ} (h1 : 1 ≤ C0) :
    (D.linkIdx.card : ℝ) * ((D.r : ℝ) ^ 2 * lg p D.r (2 * ∑ i, D.dO i)) ≤ D.Dl p C0 := by
  have he : (D.r : ℝ) ^ 2 * lg p D.r (2 * ∑ i, D.dO i) = D.eC p C0 := rfl
  rw [he]
  unfold Dl
  have h2 : (D.linkIdx.card : ℝ) ≤ (D.J : ℝ) * ((D.r : ℝ) - 1) := by
    have := D.card_linkIdx_le
    have h3 : ((D.linkIdx.card : ℕ) : ℝ) ≤ ((D.J * (D.r - 1) : ℕ) : ℝ) := by exact_mod_cast this
    rw [Nat.cast_mul, Nat.cast_sub hr, Nat.cast_one] at h3
    exact h3
  exact mul_le_mul_of_nonneg_right h2 (D.eC_nonneg' hp hr h1)

end TwistData

section StepB

variable {K : Type} [Field K] [CharZero K] {v : AddValuation K (WithTop ℚ)} {p : ℕ} {C0 : ℝ}

theorem stepB_of (h1 : 1 ≤ C0) (hV2 : V2 K) (hP : PROJ K v p C0) : StepB K v p C0 := by
  classical
  intro hD D hV hc F hF hF0
  obtain ⟨hr, hJ, hc1, -, -, hthl, hga, hgaε⟩ := hV
  haveI : NeZero D.r := ⟨by omega⟩
  have hp : 2 ≤ p := two_le_p hD
  have hr1 : 1 ≤ D.r := hr
  obtain ⟨⟨α0, hα0, hge0, hle0⟩, hbF⟩ := exists_of_vBB_zero v F hF0
  obtain ⟨hFP, -, hFl⟩ := hF
  obtain ⟨Pr, p1, p2, p3, p4, -, -⟩ := prodProj (r := D.r) D.osg D.dO hP hD D.linkIdx
    (fun x => D.Tset x.1 x.2) (fun x => ⌈D.thl x.1 x.2⌉) (fun x _ y _ => D.Tset_pair x y)
  have hα0d : ∀ i, ldeg α0 i = D.dO i := (mem_PolK_iff _ _).mp hFP α0 hα0
  have hmon : (monomial α0 (1 : K)) ∈ PolK K D.r D.dO := by
    rw [mem_PolK_iff]
    intro β hβ
    have := support_monomial_subset hβ
    rw [Finset.mem_singleton] at this
    rw [this]; exact hα0d
  have hDm := D.Dm_nonneg' hp hr1 h1
  have hDl := D.Dl_nonneg' hp hr1 h1
  have hkap := D.kapD_nonneg' hp hr1
  have hcc : 4 * (D.Dm p C0 + D.Dl p C0 + 3 * D.kapD p) < D.c := hc

  have hY1 : Pr (monomial α0 1) ∈ PolK K D.r D.dO := p1 _ hmon
  have hY2 : ∀ (j : Fin D.J) (m : Fin D.r), m.val + 2 ≤ D.r →
      vala D.osg (D.Tset j m) (D.thl j m) (Pr (monomial α0 1)) := fun j m hm =>
    (vala_iff_Aset _ _ _ _).mpr (p2 _ hmon (j, m) (by simp [TwistData.linkIdx, hm]))
  have hY3 : fock F (Pr (monomial α0 1)) = F.coeff α0 * 1 * (fact α0 : K) := by
    rw [p3 F hFP (fun x hx => ?_) _ hmon, fock_monomial_right]
    have hx' : x.2.val + 2 ≤ D.r := by simpa [TwistData.linkIdx] using hx
    exact (vala_iff_Aset _ _ _ _).mp (hFl x.1 x.2 hx')
  have hY4 : bge v (vN v (fact α0) / 2 - D.Dl p C0) (Pr (monomial α0 1)) := by
    have h := p4 _ hmon _ (bge_monomial v α0 (vge_one v))
    refine bge_mono v ?_ h
    have := D.card_linkIdx_mul_le hp hr1 h1
    linarith
  have hY5 : vle v (vN v (fact α0) / 2) (fock F (Pr (monomial α0 1))) := by
    rw [hY3, mul_one]
    have := vle_mul v hle0 (vle_vN hD (fact_ne_zero α0))
    exact vle_mono v (by linarith) this

  obtain ⟨T, lam, hlam, hT⟩ := hgaε (-1) (Or.inr rfl)
  have hC : CostOK (CostV (K := K) (r := D.r) D.osg Set.univ) :=
    costV_ok _ _ (fun S _ θ F G => vala_add) (fun S _ θ a F => vala_smul a)
  have hch : ∀ (x : D.OL × Fin D.r) (k : ℕ),
      CostV D.osg Set.univ k (fun α : D.OL × Fin D.r →₀ ℕ => ((α x).choose k : K)) :=
    fun x k S _ θ F h => vala_dg_choose hV2 x k h
  obtain ⟨g, hg0, hgc, hgC⟩ := approx_of_trunc (v := v) hC hch T lam hlam (fun α => D.ga α ^ (-1 : ℤ)) hT

  have hsplit : D.gaAct (dg g (Pr (monomial α0 1))) =
      Pr (monomial α0 1) + dg (fun α => D.ga α * g α - 1) (Pr (monomial α0 1)) := by
    rw [_root_.Formalism.MainNotions.PlaneGram.TwistData.gaAct_eq]
    ext α
    rw [MvPolynomial.coeff_add, coeff_dg, coeff_dg, coeff_dg]
    ring
  have herr : ∀ α, vge v (D.c : ℝ) (D.ga α * g α - 1) := by
    intro α
    have hne : D.ga α ≠ 0 := by
      intro h0
      have := hga α
      rw [h0, AddValuation.map_zero] at this
      exact absurd this (by simp)
    have e : D.ga α * g α - 1 = -(D.ga α * (D.ga α ^ (-1 : ℤ) - g α)) := by
      rw [zpow_neg_one]; field_simp; ring
    rw [e]
    have h2 := vge_mul v (vge_unit v (hga α)).1 ((vge_natCast_bound v D.c _).mpr (hgc α))
    rw [zero_add] at h2
    exact vge_neg v h2
  have hpair : vle v (vN v (fact α0) / 2) (fock F (D.gaAct (dg g (Pr (monomial α0 1))))) := by
    rw [hsplit, fock_add_right]
    refine vle_add_of_lt v hY5 (vge_fock v hbF (bge_dg v herr hY4)) ?_
    linarith

  have ha0 : vN v (fact α0) / 2 ≤ D.n0 v := by
    have := fact_upper hD hα0d
    have h4 : D.n0 v = vN v (∏ i : D.OL, (D.dO i).factorial) / 2 := rfl
    rw [h4]; linarith
  have hx0 : 0 ≤ D.n0 v + D.Dl p C0 - vN v (fact α0) / 2 := by linarith
  have hG2P : dg g (Pr (monomial α0 1)) ∈ PolK K D.r D.dO := by
    rw [mem_PolK_iff]
    intro β hβ
    exact (mem_PolK_iff _ _).mp hY1 β (support_dg_subset g _ hβ)
  have hG2b : bge v (0 + (vN v (fact α0) / 2 - D.Dl p C0)) (dg g (Pr (monomial α0 1))) :=
    bge_dg v (fun α => (vge_zero_iff v _).mpr (hg0 α)) hY4
  refine ⟨((p : K) ^ ⌈D.n0 v + D.Dl p C0 - vN v (fact α0) / 2⌉₊) • dg g (Pr (monomial α0 1)),
    ⟨Submodule.smul_mem _ _ hG2P, ?_⟩, ?_, ?_⟩
  · rw [← cge_zero_iff_Integral]
    have h5 := cge_smul v (vge_p_pow hD ⌈D.n0 v + D.Dl p C0 - vN v (fact α0) / 2⌉₊)
      (cge_of_bge hD hG2P hG2b)
    refine cge_mono v ?_ h5
    have h6 := Nat.le_ceil (D.n0 v + D.Dl p C0 - vN v (fact α0) / 2)
    have h4 : D.n0 v = vN v (∏ i : D.OL, (D.dO i).factorial) / 2 := rfl
    linarith
  · intro j m hm
    have h7 := hgC (D.Tset j m) (Set.mem_univ _) _ _ (hY2 j m hm)
    have e : D.thl j m - ((6 * D.c : ℕ) : ℝ) = D.thl j m - 6 * D.c := by push_cast; ring
    rw [e] at h7
    exact vala_smul _ h7
  · have e1 : fock F (D.gaAct (((p : K) ^ ⌈D.n0 v + D.Dl p C0 - vN v (fact α0) / 2⌉₊) •
        dg g (Pr (monomial α0 1)))) =
        (p : K) ^ ⌈D.n0 v + D.Dl p C0 - vN v (fact α0) / 2⌉₊ *
          fock F (D.gaAct (dg g (Pr (monomial α0 1)))) := by
      simp only [_root_.Formalism.MainNotions.PlaneGram.TwistData.gaAct_eq, map_smul, fock_smul_right]
    rw [e1]
    refine vle_mono v ?_ (vle_pow_p hD _ hpair)
    have h8 := Nat.ceil_lt_add_one hx0
    linarith

end StepB

end Formalism.MainNotions.PlaneGram
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.CardLinkIdxMulLe =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.ExistsOfMemSupportLin =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.ExistsOfMemSupportLin", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SegDefs\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.DigitPartMonomial\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.AddMemSupportOfMemSupportCoefOut\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.Monomial\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.TestBoundOfRhoAndNormSets\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Presheaf\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.PlaneGram

variable {K : Type} [Field K]

theorem lin_eq_sum {σ τ : Type} (T : MvPolynomial σ K →ₗ[K] MvPolynomial τ K) (Z : MvPolynomial σ K) :
    T Z = ∑ ζ ∈ Z.support, Z.coeff ζ • T (monomial ζ 1) := by
  conv_lhs => rw [Z.as_sum]

  rw [map_sum]
  refine Finset.sum_congr rfl fun ζ _ => ?_
  rw [show monomial ζ (Z.coeff ζ) = Z.coeff ζ • monomial ζ (1 : K) by rw [smul_monomial, smul_eq_mul, mul_one], map_smul]

theorem exists_of_mem_support_lin {σ τ : Type} (T : MvPolynomial σ K →ₗ[K] MvPolynomial τ K)
    (Z : MvPolynomial σ K) {ζ' : τ →₀ ℕ} (h : ζ' ∈ (T Z).support) :
    ∃ ζ ∈ Z.support, ζ' ∈ (T (monomial ζ 1)).support := by
  rw [lin_eq_sum T Z] at h
  by_contra hc
  push_neg at hc
  rw [mem_support_iff, coeff_sum] at h
  apply h
  refine Finset.sum_eq_zero fun ζ hζ => ?_
  have hz := hc ζ hζ
  rw [mem_support_iff, not_not] at hz
  rw [MvPolynomial.coeff_smul, hz, smul_zero]

namespace TwistData

variable (D : TwistData K)

theorem ph_lin_sum (p : ℕ) (Z : MvPolynomial (D.ML × Fin D.r) K) :
    D.ph p Z = ∑ ζ ∈ Z.support, Z.coeff ζ • D.ph p (monomial ζ 1) :=
  lin_eq_sum (D.ph p).toLinearMap Z

def iotaL : D.OL → D.ML := Sum.elim D.mb D.mlab

theorem iotaL_injective : Function.Injective D.iotaL := by
  rintro (a | a) (b | b) h <;> simp_all [iotaL, mb, mlab]

theorem localizationToLaurent_injective : Function.Injective (Prod.map D.iotaL (id : Fin D.r → Fin D.r)) :=
  D.iotaL_injective.prodMap Function.injective_id

theorem msg_comp_iotaL : D.msg ∘ D.iotaL = D.osg := by
  funext x
  rcases x with b | t <;> rfl

theorem preimage_TLset (j : Fin D.J) (m : Fin D.r) :
    (D.TLset j m).preimage D.iotaL D.iotaL_injective.injOn = D.Tset j m := by
  ext x
  rw [Finset.mem_preimage]
  rcases x with b | t
  · simp [iotaL, TLset, Tset, mb, mlab]
  · simp [iotaL, TLset, Tset, mb, mlab]

theorem ph_rename_iotaL (p : ℕ) (G : MvPolynomial (D.OL × Fin D.r) K) :
    D.ph p (rename (Prod.map D.iotaL id) G) = G := by
  have hc : (D.ph p).comp (rename (Prod.map D.iotaL id)) = AlgHom.id K _ := by
    apply MvPolynomial.algHom_ext
    rintro ⟨b | t, a⟩ <;> simp [ph, iotaL, mb, mlab]
  simpa using DFunLike.congr_fun hc G

theorem mapDomain_mb (α : D.EA) (b : D.Lb) (a : Fin D.r) :
    (α.mapDomain (Prod.map D.iotaL id)) (D.mb b, a) = α (Sum.inl b, a) :=
  Finsupp.mapDomain_apply_of_injective D.localizationToLaurent_injective α (Sum.inl b, a)

theorem mapDomain_mlab (α : D.EA) (t : D.Tau) (a : Fin D.r) :
    (α.mapDomain (Prod.map D.iotaL id)) (D.mlab t, a) = α (Sum.inr t, a) :=
  Finsupp.mapDomain_apply_of_injective D.localizationToLaurent_injective α (Sum.inr t, a)

theorem mapDomain_mw (α : D.EA) (t : D.Tau) (a : Fin D.r) :
    (α.mapDomain (Prod.map D.iotaL id)) (D.mw t, a) = 0 := by
  apply Finsupp.mapDomain_notin_range
  rintro ⟨⟨i, a'⟩, h⟩
  rcases i with b | t' <;> simp [iotaL, mb, mlab, mw] at h

theorem mapDomain_mtp (α : D.EA) (t : D.Tau) (a : Fin D.r) :
    (α.mapDomain (Prod.map D.iotaL id)) (D.mtp t, a) = 0 := by
  apply Finsupp.mapDomain_notin_range
  rintro ⟨⟨i, a'⟩, h⟩
  rcases i with b | t' <;> simp [iotaL, mb, mlab, mtp] at h

theorem notSegL_mb {j : Fin D.J} {b : D.Lb} (h : D.seg b ≠ j) : ¬ D.SegL j (D.mb b) := by
  rintro (⟨b', h1, e⟩ | ⟨m, e⟩ | ⟨m, e⟩)
  · simp only [mb, Sum.inl.injEq] at e
    exact h (e ▸ h1)
  · simp [mb, mlab] at e
  · simp [mb, mtp] at e

theorem notSegL_mlab {j j' : Fin D.J} (m : Fin D.r) (h : j' ≠ j) : ¬ D.SegL j (D.mlab (j', m)) := by
  rintro (⟨b', h1, e⟩ | ⟨m', e⟩ | ⟨m', e⟩)
  · simp [mb, mlab] at e
  · simp only [mlab, Sum.inr.injEq, Sum.inl.injEq, Prod.mk.injEq] at e
    exact h e.1
  · simp [mlab, mtp] at e

theorem notSegL_mtp {j j' : Fin D.J} (m : Fin D.r) (h : j' ≠ j) : ¬ D.SegL j (D.mtp (j', m)) := by
  rintro (⟨b', h1, e⟩ | ⟨m', e⟩ | ⟨m', e⟩)
  · simp [mb, mtp] at e
  · simp [mlab, mtp] at e
  · simp only [mtp, Sum.inr.injEq, Prod.mk.injEq] at e
    exact h e.1

theorem notSegL_mw (j : Fin D.J) (t : D.Tau) : ¬ D.SegL j (D.mw t) := by
  rintro (⟨b', h1, e⟩ | ⟨m', e⟩ | ⟨m', e⟩)
  · simp [mb, mw] at e
  · simp [mlab, mw] at e
  · simp [mtp, mw] at e

theorem notSegL_of_mem_TLset {j j' : Fin D.J} (h : j' ≠ j) (m : Fin D.r) {i : D.ML}
    (hi : i ∈ D.TLset j' m) : ¬ D.SegL j i := by
  simp only [TLset, Finset.mem_union, Finset.mem_image] at hi
  rcases hi with ⟨b, hb, rfl⟩ | ⟨m', _, rfl⟩
  · simp [LLj] at hb
    exact D.notSegL_mb (by rw [hb]; exact h)
  · exact D.notSegL_mlab m' h

theorem notSegL_of_mem_YPset {j j' : Fin D.J} (h : j' ≠ j) (m : Fin D.r) {i : D.ML}
    (hi : i ∈ D.YPset j' m) : ¬ D.SegL j i := by
  simp only [YPset, Finset.mem_union, Finset.mem_image] at hi
  rcases hi with ⟨b, hb, rfl⟩ | ⟨m', _, rfl⟩
  · simp [LLj] at hb
    exact D.notSegL_mb (by rw [hb]; exact h)
  · exact D.notSegL_mtp m' h

theorem ldeg_congr' {ζ ζ' : D.EM} {i : D.ML} (h : ∀ a, ζ' (i, a) = ζ (i, a)) : ldeg ζ' i = ldeg ζ i := by
  unfold ldeg; exact Finset.sum_congr rfl fun a _ => h a

theorem PreE.of_agree {j j' : Fin D.J} (h : j' ≠ j) {ζ ζ' : D.EM} (hζ : D.PreE j' ζ)
    (hag : ∀ i, ¬ D.SegL j i → ∀ a, ζ' (i, a) = ζ (i, a)) : D.PreE j' ζ' := by
  obtain ⟨h1, h2, h3⟩ := hζ
  refine ⟨fun b hb => ?_, fun m => ?_, fun m a => ?_⟩
  · rw [D.ldeg_congr' (hag _ (D.notSegL_mb (by rw [hb]; exact h)))]
    exact h1 b hb
  · rw [D.ldeg_congr' (hag _ (D.notSegL_mlab m h))]
    exact h2 m
  · rw [hag _ (D.notSegL_mtp m h)]
    exact h3 m a

theorem PostE.of_agree {j j' : Fin D.J} (h : j' ≠ j) {ζ ζ' : D.EM} (hζ : D.PostE j' ζ)
    (hag : ∀ i, ¬ D.SegL j i → ∀ a, ζ' (i, a) = ζ (i, a)) : D.PostE j' ζ' := by
  obtain ⟨h1, h2, h3, h4⟩ := hζ
  refine ⟨fun b hb => ?_, fun m => ?_, fun m => ?_, fun m hm a => ?_⟩
  · rw [D.ldeg_congr' (hag _ (D.notSegL_mb (by rw [hb]; exact h)))]
    exact h1 b hb
  · rw [D.ldeg_congr' (hag _ (D.notSegL_mlab m h)), D.ldeg_congr' (hag _ (D.notSegL_mtp m h))]
    exact h2 m
  · rw [D.ldeg_congr' (hag _ (D.notSegL_mtp m h))]
    exact h3 m
  · rw [hag _ (D.notSegL_mtp m h)]
    exact h4 m hm a

def Inv (v : AddValuation K (WithTop ℚ)) (p : ℕ) (θ : Fin D.J → Fin D.r → ℝ)
    (Gt : MvPolynomial (D.OL × Fin D.r) K) (s : Finset (Fin D.J))
    (Z : MvPolynomial (D.ML × Fin D.r) K) : Prop :=
  Integral v Z ∧ D.ph p Z = Gt ∧
  (∀ ζ ∈ Z.support, (∀ t a, ζ (D.mw t, a) = 0) ∧ (∀ j ∈ s, D.PostE j ζ) ∧ (∀ j, j ∉ s → D.PreE j ζ)) ∧
  (∀ j ∈ s, ∀ m : Fin D.r, m.val + 2 ≤ D.r → vala D.msg (D.YPset j m) (θ j m) Z) ∧
  (∀ j, j ∉ s → ∀ m : Fin D.r, m.val + 2 ≤ D.r → vala D.msg (D.TLset j m) (θ j m) Z)

theorem inv_start (v : AddValuation K (WithTop ℚ)) (p : ℕ) (θ : Fin D.J → Fin D.r → ℝ)
    (Gt : MvPolynomial (D.OL × Fin D.r) K) (hGt : Gt ∈ PolO v D.r D.dO)
    (hval : ∀ (j : Fin D.J) (m : Fin D.r), m.val + 2 ≤ D.r → vala D.osg (D.Tset j m) (θ j m) Gt) :
    D.Inv v p θ Gt ∅ (rename (Prod.map D.iotaL id) Gt) := by
  refine ⟨?_, D.ph_rename_iotaL p Gt, ?_, fun j hj => by simp at hj, ?_⟩
  · intro α
    by_cases hα : ∃ u, Finsupp.mapDomain (Prod.map D.iotaL id) u = α
    · obtain ⟨u, rfl⟩ := hα
      rw [coeff_rename_mapDomain _ D.localizationToLaurent_injective]
      exact hGt.2 u
    · rw [coeff_rename_eq_zero _ _ _ (fun u hu => absurd ⟨u, hu⟩ hα), AddValuation.map_zero]
      exact le_top
  · intro ζ hζ
    have hex : ∃ u ∈ Gt.support, Finsupp.mapDomain (Prod.map D.iotaL id) u = ζ := by
      by_contra hc
      push_neg at hc
      rw [mem_support_iff] at hζ
      apply hζ
      apply coeff_rename_eq_zero
      intro u hu
      by_contra hne
      exact hc u (mem_support_iff.mpr hne) hu
    obtain ⟨u, hu, rfl⟩ := hex
    have hdeg := (mem_PolK_iff _ _).mp hGt.1 u hu
    refine ⟨fun t a => D.mapDomain_mw u t a, fun j hj => by simp at hj,
      fun j _ => ⟨fun b _ => ?_, fun m => ?_, fun m a => D.mapDomain_mtp u _ a⟩⟩
    · have h1 := hdeg (Sum.inl b)
      unfold ldeg at h1 ⊢
      simp only [mapDomain_mb]
      exact h1
    · have h1 := hdeg (Sum.inr (j, m))
      unfold ldeg at h1 ⊢
      simp only [mapDomain_mlab]
      exact h1
  · intro j _ m hm
    rw [vala_rename_iff D.iotaL D.iotaL_injective, msg_comp_iotaL, preimage_TLset]
    exact hval j m hm

theorem inv_step [CharZero K] {v : AddValuation K (WithTop ℚ)} {p : ℕ} (hSeg : SegStep K v p) (hD : DVRHyp v p)
    (hr : 0 < D.r) (hJ : 0 < D.J) (θ : Fin D.J → Fin D.r → ℝ) (Gt : MvPolynomial (D.OL × Fin D.r) K)
    (s : Finset (Fin D.J)) (j : Fin D.J) (hj : j ∉ s) (Z : MvPolynomial (D.ML × Fin D.r) K)
    (hZ : D.Inv v p θ Gt s Z) : ∃ Z', D.Inv v p θ Gt (insert j s) Z' := by
  obtain ⟨hInt, hph, hsupp, hYP, hTL⟩ := hZ
  obtain ⟨Th, tI, tph, tsupp, tval, tS⟩ := hSeg hD D hr hJ j
  have hpre : ∀ ζ ∈ Z.support, D.PreE j ζ := fun ζ hζ => (hsupp ζ hζ).2.2 j hj
  have hne : ∀ j', j' ∈ s → j' ≠ j := fun j' hj' he => hj (he ▸ hj')
  refine ⟨Th Z, ?_, ?_, ?_, ?_, ?_⟩
  · intro α
    rw [lin_eq_sum Th Z, coeff_sum]
    apply AddValuation.map_le_sum
    intro ζ hζ
    rw [MvPolynomial.coeff_smul, smul_eq_mul, AddValuation.map_mul]
    exact add_nonneg (hInt ζ) (tI ζ (hpre ζ hζ) α)

  · rw [lin_eq_sum Th Z, map_sum, ← hph, D.ph_lin_sum p Z]
    refine Finset.sum_congr rfl fun ζ hζ => ?_
    rw [map_smul, tph ζ (hpre ζ hζ)]
  · intro ζ' hζ'
    obtain ⟨ζ, hζ, hζ'1⟩ := exists_of_mem_support_lin Th Z hζ'
    obtain ⟨hpost, hag⟩ := tsupp ζ (hpre ζ hζ) ζ' hζ'1
    obtain ⟨hw, hs, hns⟩ := hsupp ζ hζ
    refine ⟨fun t a => ?_, fun j' hj' => ?_, fun j' hj' => ?_⟩
    · rw [hag _ (D.notSegL_mw j t) a]
      exact hw t a
    · rcases Finset.mem_insert.mp hj' with h | hj's
      · rw [h]
        exact hpost
      · exact PostE.of_agree D (hne j' hj's) (hs j' hj's) hag
    · have hj's : j' ∉ s := fun h => hj' (Finset.mem_insert_of_mem h)
      have hne' : j' ≠ j := fun he => hj' (he ▸ Finset.mem_insert_self j s)
      exact PreE.of_agree D hne' (hns j' hj's) hag
  · intro j' hj' m hm
    rcases Finset.mem_insert.mp hj' with h | hj's
    · subst h
      exact tval Z hInt hpre m _ hm (hTL _ hj m hm)
    · exact vala_of_le (tS _ (fun i hi => D.notSegL_of_mem_YPset (hne j' hj's) m hi) Z) (hYP j' hj's m hm)
  · intro j' hj' m hm
    have hj's : j' ∉ s := fun h => hj' (Finset.mem_insert_of_mem h)
    have hne' : j' ≠ j := fun he => hj' (he ▸ Finset.mem_insert_self j s)
    exact vala_of_le (tS _ (fun i hi => D.notSegL_of_mem_TLset hne' m hi) Z) (hTL j' hj's m hm)

theorem inv_all [CharZero K] {v : AddValuation K (WithTop ℚ)} {p : ℕ} (hSeg : SegStep K v p) (hD : DVRHyp v p)
    (hr : 0 < D.r) (hJ : 0 < D.J) (θ : Fin D.J → Fin D.r → ℝ) (Gt : MvPolynomial (D.OL × Fin D.r) K)
    (hGt : Gt ∈ PolO v D.r D.dO)
    (hval : ∀ (j : Fin D.J) (m : Fin D.r), m.val + 2 ≤ D.r → vala D.osg (D.Tset j m) (θ j m) Gt)
    (s : Finset (Fin D.J)) : ∃ Z, D.Inv v p θ Gt s Z := by
  classical
  induction s using Finset.induction_on with
  | empty => exact ⟨_, D.inv_start v p θ Gt hGt hval⟩
  | insert j s hj ih =>
    obtain ⟨Z, hZ⟩ := ih
    exact D.inv_step hSeg hD hr hJ θ Gt s j hj Z hZ

def splitE (p : ℕ) (ζ : D.EM) : D.EM :=
  Finsupp.equivFunOnFinite.symm fun x => Sum.elim (fun b => ζ (D.mb b, x.2))
    (Sum.elim (fun t => ζ (D.mlab t, x.2) % D.P p t)
      (Sum.elim (fun t => ζ (D.mw t, x.2) + ζ (D.mlab t, x.2) / D.P p t)
        (fun t => ζ (D.mtp t, x.2)))) x.1

theorem splitE_mb (p : ℕ) (ζ : D.EM) (b : D.Lb) (a : Fin D.r) :
    D.splitE p ζ (D.mb b, a) = ζ (D.mb b, a) := by simp [splitE, mb]

theorem splitE_mlab (p : ℕ) (ζ : D.EM) (t : D.Tau) (a : Fin D.r) :
    D.splitE p ζ (D.mlab t, a) = ζ (D.mlab t, a) % D.P p t := by simp [splitE, mlab]

theorem splitE_mw (p : ℕ) (ζ : D.EM) (t : D.Tau) (a : Fin D.r) :
    D.splitE p ζ (D.mw t, a) = ζ (D.mw t, a) + ζ (D.mlab t, a) / D.P p t := by
  simp [splitE, mw]

theorem splitE_mtp (p : ℕ) (ζ : D.EM) (t : D.Tau) (a : Fin D.r) :
    D.splitE p ζ (D.mtp t, a) = ζ (D.mtp t, a) := by simp [splitE, mtp]

theorem phE_splitE (p : ℕ) (ζ : D.EM) : D.phE p (D.splitE p ζ) = D.phE p ζ := by
  ext ⟨i, a⟩
  rcases i with b | t
  · rw [phE_apply_inl, phE_apply_inl, splitE_mb]
  · rw [phE_apply_inr, phE_apply_inr, splitE_mlab, splitE_mw, splitE_mtp, mul_add]
    have := Nat.mod_add_div (ζ (D.mlab t, a)) (D.P p t)
    linarith

def Sp (p : ℕ) : MvPolynomial (D.ML × Fin D.r) K →ₗ[K] MvPolynomial (D.ML × Fin D.r) K :=
  lsup fun ζ => monomial (D.splitE p ζ) 1

theorem Sp_monomial (p : ℕ) (ζ : D.EM) : D.Sp p (monomial ζ (1 : K)) = monomial (D.splitE p ζ) 1 := by
  rw [Sp, lsup_monomial, one_smul]

theorem ph_Sp (p : ℕ) (Z : MvPolynomial (D.ML × Fin D.r) K) : D.ph p (D.Sp p Z) = D.ph p Z := by

  rw [Sp, lsup_apply, map_sum, ph_eq_sum]
  refine Finset.sum_congr rfl fun ζ _ => ?_
  rw [map_smul, ph_monomial, phE_splitE, smul_monomial, smul_eq_mul, mul_one]

theorem integral_Sp (v : AddValuation K (WithTop ℚ)) (p : ℕ) {Z : MvPolynomial (D.ML × Fin D.r) K}
    (hZ : Integral v Z) : Integral v (D.Sp p Z) := by
  classical
  intro α
  rw [Sp, lsup_apply, coeff_sum]
  apply AddValuation.map_le_sum
  intro ζ _
  rw [MvPolynomial.coeff_smul, coeff_monomial]
  split_ifs
  · rw [smul_eq_mul, mul_one]
    exact hZ ζ
  · rw [smul_zero, AddValuation.map_zero]
    exact le_top

theorem goodE_splitE {p : ℕ} (hp : 0 < p) {ζ : D.EM} (hw : ∀ t a, ζ (D.mw t, a) = 0)
    (hpost : ∀ j, D.PostE j ζ) : D.GoodE p (D.splitE p ζ) := by
  have hP : ∀ t, 0 < D.P p t := fun t => by
    unfold P
    exact pow_pos hp _
  refine ⟨fun t a => ?_, fun j m hm a => ?_, fun b => ?_, fun t => ?_, fun t => ?_⟩
  · rw [splitE_mlab]
    exact Nat.mod_lt _ (hP t)
  · rw [splitE_mtp]
    exact (hpost j).2.2.2 m hm a
  · rw [D.ldeg_congr' (fun a => D.splitE_mb p ζ b a)]
    exact (hpost (D.seg b)).1 b rfl
  · obtain ⟨j, m⟩ := t
    have e1 : ldeg (D.splitE p ζ) (D.mlab (j, m)) + D.P p (j, m) * ldeg (D.splitE p ζ) (D.mw (j, m))
        = ldeg ζ (D.mlab (j, m)) := by
      unfold ldeg
      simp only [splitE_mlab, splitE_mw, hw, zero_add]
      rw [Finset.mul_sum, ← Finset.sum_add_distrib]
      exact Finset.sum_congr rfl fun a _ => Nat.mod_add_div _ _
    rw [e1, D.ldeg_congr' (fun a => D.splitE_mtp p ζ (j, m) a)]
    exact (hpost j).2.1 m
  · obtain ⟨j, m⟩ := t
    rw [D.ldeg_congr' (fun a => D.splitE_mtp p ζ (j, m) a)]
    exact (hpost j).2.2.1 m

def labB : D.ML → Bool := Sum.elim (fun _ => false) (Sum.elim (fun _ => true) (fun _ => false))

theorem splitE_eq (p : ℕ) (α : D.EM) :
    D.splitE p α = eIn (fun i => D.labB i = true) α + D.splitE p (eOut (fun i => D.labB i = true) α) := by
  ext ⟨i, a⟩
  rw [Finsupp.add_apply]
  rcases i with b | t | t | t
  · show D.splitE p α (D.mb b, a) = eIn _ α (D.mb b, a) + D.splitE p (eOut _ α) (D.mb b, a)
    rw [splitE_mb, splitE_mb, eIn_apply, eOut_apply]
    simp [labB, mb]
  · show D.splitE p α (D.mlab t, a) = eIn _ α (D.mlab t, a) + D.splitE p (eOut _ α) (D.mlab t, a)
    rw [splitE_mlab, splitE_mlab, eIn_apply, eOut_apply]
    simp [labB, mlab]
  · show D.splitE p α (D.mw t, a) = eIn _ α (D.mw t, a) + D.splitE p (eOut _ α) (D.mw t, a)
    rw [splitE_mw, splitE_mw, eIn_apply, eOut_apply, eOut_apply]
    simp [labB, mw, mlab]
  · show D.splitE p α (D.mtp t, a) = eIn _ α (D.mtp t, a) + D.splitE p (eOut _ α) (D.mtp t, a)
    rw [splitE_mtp, splitE_mtp, eIn_apply, eOut_apply]
    simp [labB, mtp]

theorem not_labB_of_mem_Yset {j : Fin D.J} {m : Fin D.r} {i : D.ML} (hi : i ∈ D.Yset j m) :
    ¬ D.labB i = true := by
  simp only [Yset, wSet, Finset.mem_union, Finset.mem_image] at hi
  rcases hi with (⟨m', _, rfl⟩ | ⟨b, _, rfl⟩) | ⟨m', _, rfl⟩ <;> simp [labB, mw, mb, mtp]

theorem vala_Sp (p : ℕ) (j : Fin D.J) (m : Fin D.r) {θ : ℝ} {Z : MvPolynomial (D.ML × Fin D.r) K}
    (hZ : vala D.msg (D.Yset j m) θ Z) : vala D.msg (D.Yset j m) θ (D.Sp p Z) := by
  have key : D.Sp p Z = ∑ μ ∈ Z.support.image (eOut (fun i => D.labB i = true)),
      coefOut (fun i => D.labB i = true) μ Z * monomial (D.splitE p μ) 1 := by
    simp only [coefOut, Finset.sum_mul, ite_mul, zero_mul]
    rw [Finset.sum_comm, Sp, lsup_apply]
    refine Finset.sum_congr rfl fun α hα => ?_
    rw [Finset.sum_ite_eq, if_pos (Finset.mem_image_of_mem _ hα), monomial_mul, mul_one,
      ← splitE_eq, smul_monomial, smul_eq_mul, mul_one]
  have hle : valS D.msg (D.Yset j m) Z ≤ valS D.msg (D.Yset j m) (D.Sp p Z) := by
    rw [key]
    refine Finset.sum_induction _ (fun F => valS D.msg (D.Yset j m) Z ≤ valS D.msg (D.Yset j m) F)
      (fun F G hF hG => le_trans (le_min hF hG) (valS_add_le _ _ _ _)) ?_ ?_
    · simp [valS]
    · intro μ hμ
      have h1 := valS_coefOut_le (K := K) (r := D.r) (fun i => D.labB i = true) D.msg (D.Yset j m)
        (fun i hi => D.not_labB_of_mem_Yset hi) μ Z
      have h2 : 0 ≤ valS D.msg (D.Yset j m) (monomial (D.splitE p μ) (1 : K)) := by
        apply valS_monomial_nonneg_of_vec
        intro i a h
        rcases i with b | t
        · exfalso
          apply h
          obtain ⟨α, _, rfl⟩ := Finset.mem_image.mp hμ
          show D.splitE p (eOut _ α) (D.mb b, a) = 0
          rw [splitE_mb, eOut_apply]
          simp [labB, mb]
        · rfl
      calc valS D.msg (D.Yset j m) Z = valS D.msg (D.Yset j m) Z + 0 := (add_zero _).symm
        _ ≤ _ := add_le_add h1 h2
        _ ≤ _ := valS_mul_le _ _ _ _
  exact le_trans hZ (toR_mono hle)

theorem YPset_subset_Yset (j : Fin D.J) (m : Fin D.r) : D.YPset j m ⊆ D.Yset j m := by
  intro i hi
  simp only [YPset, Yset, Finset.mem_union] at hi ⊢
  tauto

theorem msg_of_mem_Yset {j : Fin D.J} {m : Fin D.r} {i : D.ML} (hi : i ∈ D.Yset j m)
    (hn : i ∉ D.YPset j m) : D.msg i = true := by
  simp only [Yset, YPset, Finset.mem_union] at hi hn
  rcases hi with (hw | hb) | ht
  · simp only [wSet, Finset.mem_image] at hw
    obtain ⟨m', _, rfl⟩ := hw
    rfl
  · exact absurd (Or.inl hb) hn
  · exact absurd (Or.inr ht) hn

end TwistData

theorem stepC_of [CharZero K] {v : AddValuation K (WithTop ℚ)} {p : ℕ} (hV2 : V2 K)
    (hSeg : SegStep K v p) : StepC K v p := by
  intro hD D hr hJ θ Gt hGt hval
  haveI : NeZero D.r := ⟨by omega⟩
  obtain ⟨Z, hi, hph, hsup, hY, -⟩ := D.inv_all hSeg hD hr hJ θ Gt hGt hval Finset.univ
  have hp : 0 < p := hD.prime.pos
  refine ⟨D.Sp p Z, D.integral_Sp v p hi, ?_, by rw [D.ph_Sp, hph], ?_⟩
  · intro ζ' hζ'
    obtain ⟨ζ, hζ, h2⟩ := exists_of_mem_support_lin (D.Sp p) Z hζ'
    rw [D.Sp_monomial] at h2
    have h3 := support_monomial_subset h2
    rw [Finset.mem_singleton] at h3
    rw [h3]
    exact D.goodE_splitE hp (hsup ζ hζ).1 fun j => (hsup ζ hζ).2.1 j (Finset.mem_univ j)
  · intro j m hm
    refine D.vala_Sp p j m ?_
    exact vala_superset_vec hV2 (D.YPset_subset_Yset j m) (fun i hi hn => D.msg_of_mem_Yset hi hn)
      (hY j (Finset.mem_univ j) m hm)

end Formalism.MainNotions.PlaneGram
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.ExistsOfMemSupportLin =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.PrimedEmbeddingInjective =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.PrimedEmbeddingInjective", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SlopeOfBinomCombGen\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.CollapseExponent\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.AddMemSupportOfMemSupportCoefOut\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.CgeZeroIffIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.PlaneGram

namespace TwistData

variable {K : Type} [Field K] (D : TwistData K)

def embU (p : ℕ) (ρ : D.Tau → Fin D.r → ℕ) (x : D.OL × Fin D.r) (ζ : D.EM) : ℕ :=
  Sum.elim (fun b => ζ (D.mb b, x.2)) (fun t => ρ t x.2 + D.P p t * ζ (D.mw t, x.2)) x.1

def embE (p : ℕ) (ρ : D.Tau → Fin D.r → ℕ) (ζ : D.EM) : D.EA :=
  Finsupp.equivFunOnFinite.symm fun x => D.embU p ρ x ζ

theorem substituted_exponent_eq_embedded (p : ℕ) (ζ : D.EM) : D.collapseExponent p ζ = D.embE p (D.labF ζ) ζ := rfl

def gaR (p : ℕ) (gam : D.Tau → (Fin D.r → ℕ) → (Fin D.r → ℕ) → K) (ρ : D.Tau → Fin D.r → ℕ) (ε : ℤ)
    (ζ : D.EM) : K :=
  D.ga (D.embE p ρ ζ) ^ ε * ∏ t, gam t (ρ t) (D.wF ζ t) ^ ε

theorem gaR_one (p : ℕ) (gam : D.Tau → (Fin D.r → ℕ) → (Fin D.r → ℕ) → K) (ζ : D.EM) :
    D.gaR p gam (D.labF ζ) 1 ζ = D.gaP p gam ζ := by
  simp only [gaR, gaP, zpow_one, substituted_exponent_eq_embedded]

theorem gaR_neg_one (p : ℕ) (gam : D.Tau → (Fin D.r → ℕ) → (Fin D.r → ℕ) → K) (ζ : D.EM) :
    D.gaR p gam (D.labF ζ) (-1) ζ = (D.gaP p gam ζ)⁻¹ := by
  simp only [gaR, gaP, zpow_neg_one, substituted_exponent_eq_embedded, Finset.prod_inv_distrib, mul_inv]

end TwistData

section

variable {K : Type} [Field K] [CharZero K] {v : AddValuation K (WithTop ℚ)} {p : ℕ}

abbrev CostM (D : TwistData K) : ℕ → (D.EM → K) → Prop := CostV (K := K) (r := D.r) D.msg Set.univ

theorem costM_ok (D : TwistData K) : CostOK (CostM D) :=
  costV_ok _ _ (fun _ _ _ _ _ h1 h2 => vala_add h1 h2) (fun _ _ _ a _ h => vala_smul a h)

theorem costM_choose (hV2 : V2 K) (D : TwistData K) (hr : 0 < D.r) (x : D.ML × Fin D.r) (k : ℕ) :
    CostM D k (fun α => ((α x).choose k : K)) := by
  haveI : NeZero D.r := ⟨hr.ne'⟩
  intro S _ θ F h
  exact vala_dg_choose hV2 x k h

theorem exists_approx_gaR (hV2 : V2 K) (D : TwistData K) (hV : D.Valid v p)
    (cst : D.Tau → (Fin D.r → ℕ) → ℕ → K) (gam : D.Tau → (Fin D.r → ℕ) → (Fin D.r → ℕ) → K)
    (hDig : D.DigOK v p cst gam) (ρ : D.Tau → Fin D.r → ℕ) (ε : ℤ) (hε : ε = 1 ∨ ε = -1) :
    ∃ g : D.EM → K, (∀ ζ, 0 ≤ v (g ζ)) ∧ CostM D (12 * D.c) g ∧
      ((∀ t a, ρ t a < D.P p t) → ∀ ζ, ((D.c : ℕ) : WithTop ℚ) ≤ v (D.gaR p gam ρ ε ζ - g ζ)) := by
  have hC := costM_ok D
  have hch := costM_choose hV2 D hV.1
  by_cases hρ : ∀ t a, ρ t a < D.P p t
  · obtain ⟨hga0, hga⟩ := hV.2.2.2.2.2.2
    obtain ⟨T, lam, hlam, hcong⟩ := hga ε hε
    obtain ⟨g1, a1, a2, a3⟩ := approx_of_trunc_gen (v := v) hC (D.embU p ρ) (by
        rintro ⟨i, a⟩ k
        rcases i with b | t
        · exact hch (D.mb b, a) k
        · exact cost_choose_affine hC (fun ζ => ζ (D.mw t, a)) (hch (D.mw t, a)) (ρ t a) (D.P p t) k)
      T lam hlam (fun ζ => D.ga (D.embE p ρ ζ) ^ ε) (fun ζ => hcong (D.embE p ρ ζ))
    obtain ⟨T', lam', hlam', hcong'⟩ := hDig.2 ρ hρ ε hε
    obtain ⟨g2, b1, b2, b3⟩ := approx_of_trunc_gen (v := v) hC
      (fun (x : D.Tau × Fin D.r) (ζ : D.EM) => ζ (D.mw x.1, x.2)) (fun x k => hch (D.mw x.1, x.2) k)
      T' lam' hlam' (fun ζ => (∏ t, gam t (ρ t) (D.wF ζ t)) ^ ε)
      (fun ζ => hcong' (fun x => ζ (D.mw x.1, x.2)))
    have u2 : ∀ ζ : D.EM, v ((∏ t, gam t (ρ t) (D.wF ζ t)) ^ ε) = 0 := fun ζ =>
      v_unit_zpow v (Finset.prod_induction _ (fun x => v x = 0) (fun a b ha hb => v_unit_mul v ha hb)
        v.map_one fun t _ => ((hDig.1 t (ρ t) (hρ t)).2 _).1) ε
    refine ⟨fun ζ => g1 ζ * g2 ζ, fun ζ => v_mul_nonneg (a1 ζ) (b1 ζ), ?_, fun _ ζ => ?_⟩
    · have := hC.mul _ _ _ _ a3 b3
      have e : 6 * D.c + 6 * D.c = 12 * D.c := by ring
      rwa [e] at this
    · have e : D.gaR p gam ρ ε ζ - g1 ζ * g2 ζ =
          (D.ga (D.embE p ρ ζ) ^ ε - g1 ζ) * (∏ t, gam t (ρ t) (D.wF ζ t)) ^ ε +
            g1 ζ * ((∏ t, gam t (ρ t) (D.wF ζ t)) ^ ε - g2 ζ) := by
        have e2 : ∏ t, gam t (ρ t) (D.wF ζ t) ^ ε = (∏ t, gam t (ρ t) (D.wF ζ t)) ^ ε :=
          Finset.prod_zpow _ _ _
        simp only [TwistData.gaR]
        rw [e2]; ring
      rw [e]
      exact v_add_ge (v_mul_ge_left (a2 ζ) (u2 ζ).ge) (v_mul_ge_right (a1 ζ) (b2 ζ))
  · refine ⟨fun _ => 1, fun _ => by simp, ?_, fun h => absurd h hρ⟩
    exact hC.mono 0 _ _ (Nat.zero_le _) hC.one

theorem eOut_of_mem_image {L : Type} [DecidableEq L] {r : ℕ} (out : L → Prop) [DecidablePred out]
    (F : MvPolynomial (L × Fin r) K) {μ : L × Fin r →₀ ℕ} (hμ : μ ∈ F.support.image (eOut out)) :
    eOut out μ = μ := by
  obtain ⟨α, -, rfl⟩ := Finset.mem_image.mp hμ
  exact eOut_eOut out α

theorem vala_dg_labels (D : TwistData K) (gg : (D.Tau → Fin D.r → ℕ) → D.EM → K) (n : ℕ)
    (hgg : ∀ ρ, CostM D n (gg ρ)) (S : Finset D.ML) (hS : ∀ t, D.mlab t ∉ S) (θ : ℝ)
    (Z : MvPolynomial (D.ML × Fin D.r) K) (hZ : vala D.msg S θ Z) :
    vala D.msg S (θ - n) (dg (fun ζ => gg (D.labF ζ) ζ) Z) := by
  set out : D.ML → Prop := fun i => ∃ t, i = D.mlab t with hout
  letI : DecidablePred out := Classical.decPred _
  have hoS : ∀ i ∈ S, ¬ out i := by
    rintro i hi ⟨t, rfl⟩; exact hS t hi

  conv => rw [sum_coefOut out Z, map_sum]
  refine vala_sum _ _ fun μ hμ => ?_
  have e : dg (fun ζ => gg (D.labF ζ) ζ) (monomial μ 1 * coefOut out μ Z) =
      dg (gg (D.labF μ)) (monomial μ 1 * coefOut out μ Z) := by
    refine dg_congr fun α hα => ?_
    have hlab : D.labF α = D.labF μ := by
      rw [mem_support_iff, coeff_monomial_mul'] at hα
      by_cases hle : μ ≤ α
      · rw [if_pos hle, one_mul] at hα
        have h0 := eOut_eq_zero_of_mem_support_coefOut out (mem_support_iff.mpr hα)
        funext t a
        have h1 : (α - μ) (D.mlab t, a) = 0 := by
          have := DFunLike.congr_fun h0 (D.mlab t, a)
          rw [eOut_apply, if_pos ⟨t, rfl⟩] at this
          simpa using this
        have h2 : μ (D.mlab t, a) ≤ α (D.mlab t, a) := hle _
        rw [Finsupp.tsub_apply] at h1
        simp only [TwistData.labF]
        omega
      · rw [if_neg hle] at hα; exact absurd rfl hα
    rw [hlab]
  rw [e]
  refine hgg _ S (Set.mem_univ _) θ _ ?_
  refine vala_mul_left_nonneg (valS_monomial_nonneg_of_free _ _ ?_) (vala_coefOut out hoS _ hZ)
  intro i hi a
  rw [← eOut_of_mem_image out Z hμ, eOut_apply, if_neg (hoS i hi)]

theorem stepG_of (hV2 : V2 K) : StepG K v p := by
  intro _hD D hV cst gam hDig
  have Hp := fun ρ => exists_approx_gaR hV2 D hV cst gam hDig ρ 1 (Or.inl rfl)
  have Hm := fun ρ => exists_approx_gaR hV2 D hV cst gam hDig ρ (-1) (Or.inr rfl)
  choose gp hp1 hp2 hp3 using Hp
  choose gm hm1 hm2 hm3 using Hm
  refine ⟨fun ζ => gp (D.labF ζ) ζ, fun ζ => gm (D.labF ζ) ζ, fun ζ => hp1 _ ζ, fun ζ => hm1 _ ζ, ?_, ?_⟩
  · intro ζ hζ
    constructor
    · have := hp3 (D.labF ζ) hζ ζ
      rw [D.gaR_one, AddValuation.map_sub_swap] at this
      exact this
    · have := hm3 (D.labF ζ) hζ ζ
      rw [D.gaR_neg_one, AddValuation.map_sub_swap] at this
      exact this
  · intro S hS θ Z hZ
    have e : θ - 12 * (D.c : ℝ) = θ - ((12 * D.c : ℕ) : ℝ) := by push_cast; ring
    rw [e]
    exact ⟨vala_dg_labels D gp _ hp2 S hS θ Z hZ, vala_dg_labels D gm _ hm2 S hS θ Z hZ⟩

end

end Formalism.MainNotions.PlaneGram
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.PrimedEmbeddingInjective =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.MonomialMemPolKSg =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.MonomialMemPolKSg", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.DigitPartMonomial\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SecondEmbeddingInjective\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.IntegralMonomial\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SubstitutionXFirstEmbedding\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.AddMemSupportOfMemSupportCoefOut\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.PlaneGram

theorem monomial_mem_PolK_sg {K : Type} [Field K] {L : Type} {r : ℕ} (d : L → ℕ) (α : L × Fin r →₀ ℕ)
    (c : K) (h : ∀ i, ldeg α i = d i) : monomial α c ∈ PolK K r d := by
  rw [mem_PolK_iff]
  intro β hβ
  rw [Finset.mem_singleton.mp (MvPolynomial.support_monomial_subset hβ)]
  exact h

namespace TwistData

variable {K : Type} [Field K] (D : TwistData K) (j : Fin D.J)

def outSeg (i : D.ML) : Prop := ¬ ∃ k, D.e0 j k = i

instance : DecidablePred (D.outSeg j) := Classical.decPred _

def pullE (ζ : D.EM) : Fin (D.nB j + D.r) × Fin D.r →₀ ℕ :=
  Finsupp.comapDomain (Prod.map (D.e0 j) id) ζ
    (((D.index_embedding_injective j).prodMap (Function.injective_id (α := Fin D.r))).injOn)

theorem pullE_apply (ζ : D.EM) (k : Fin (D.nB j + D.r)) (a : Fin D.r) :
    D.pullE j ζ (k, a) = ζ (D.e0 j k, a) := by
  exact Finsupp.comapDomain_apply _ _ _ _

theorem ldeg_pullE (ζ : D.EM) (k : Fin (D.nB j + D.r)) :
    ldeg (D.pullE j ζ) k = ldeg ζ (D.e0 j k) := by
  unfold ldeg
  simp only [pullE_apply]

theorem mapDomain_pullE (ζ : D.EM) :
    Finsupp.mapDomain (Prod.map (D.e0 j) id) (D.pullE j ζ) = eIn (D.outSeg j) ζ := by
  ext ⟨i, a⟩
  by_cases hi : ∃ k, D.e0 j k = i
  · obtain ⟨k, rfl⟩ := hi
    have hinj : Function.Injective (Prod.map (D.e0 j) (id : Fin D.r → Fin D.r)) :=
      (D.index_embedding_injective j).prodMap Function.injective_id
    have hout : ¬ D.outSeg j (D.e0 j k) := fun h => h ⟨k, rfl⟩
    exact (Finsupp.mapDomain_apply_of_injective hinj (D.pullE j ζ) (k, a)).trans
      ((D.pullE_apply j ζ k a).trans ((eIn_apply (out := D.outSeg j) ζ (D.e0 j k, a)).trans (if_neg hout)).symm)
  · have hout : D.outSeg j i := hi
    rw [Finsupp.mapDomain_notin_range]
    · exact ((eIn_apply (out := D.outSeg j) ζ (i, a)).trans (if_pos hout)).symm
    · rintro ⟨⟨k, b⟩, hkb⟩
      exact hi ⟨k, (Prod.mk.inj hkb).1⟩

theorem pullE_congr (ζ ζ' : D.EM) (h : ∀ k a, ζ (D.e0 j k, a) = ζ' (D.e0 j k, a)) :
    D.pullE j ζ = D.pullE j ζ' := by
  ext ⟨k, a⟩
  rw [pullE_apply, pullE_apply]
  exact h k a

theorem pullE_eIn (ζ : D.EM) : D.pullE j (eIn (D.outSeg j) ζ) = D.pullE j ζ := by
  apply D.pullE_congr j
  intro k a
  have hout : ¬ D.outSeg j (D.e0 j k) := fun h => h ⟨k, rfl⟩
  exact (eIn_apply (out := D.outSeg j) ζ (D.e0 j k, a)).trans (if_neg hout)

theorem pullE_deg (ζ : D.EM) (h : D.PreE j ζ) (k : Fin (D.nB j + D.r)) :
    ldeg (D.pullE j ζ) k = D.dO (D.eA j k) := by
  rw [ldeg_pullE]
  cases k using Fin.addCases with
  | left a =>
    have hseg : D.seg (D.eB j a) = j := (Finset.mem_filter.mp ((D.LLj j).equivFin.symm a).2).2
    rw [first_embedding_castAdd, h.1 _ hseg]
    simp only [eA, dO, Fin.addCases_left, Sum.elim_inl]
  | right m =>
    rw [first_embedding_natAdd, h.2.1]
    simp only [eA, dO, Fin.addCases_right, Sum.elim_inr]

variable {ι : Type} [Fintype ι]

def TT (cc : (Fin (D.nB j + D.r) × Fin D.r →₀ ℕ) → ι → K) (PP : ι → MvPolynomial (D.ML × Fin D.r) K) :
    MvPolynomial (Fin (D.nB j + D.r) × Fin D.r) K →ₗ[K] MvPolynomial (D.ML × Fin D.r) K :=
  lsup fun lam => ∑ b, cc lam b • PP b

def Th (cc : (Fin (D.nB j + D.r) × Fin D.r →₀ ℕ) → ι → K) (PP : ι → MvPolynomial (D.ML × Fin D.r) K) :
    MvPolynomial (D.ML × Fin D.r) K →ₗ[K] MvPolynomial (D.ML × Fin D.r) K :=
  lsup fun ζ => monomial (eOut (D.outSeg j) ζ) 1 * D.TT j cc PP (monomial (D.pullE j ζ) 1)

variable (cc : (Fin (D.nB j + D.r) × Fin D.r →₀ ℕ) → ι → K) (PP : ι → MvPolynomial (D.ML × Fin D.r) K)

theorem TT_monomial (lam : Fin (D.nB j + D.r) × Fin D.r →₀ ℕ) :
    D.TT j cc PP (monomial lam 1) = ∑ b, cc lam b • PP b := by
  simp only [TT, lsup_monomial, one_smul]

theorem Th_monomial (ζ : D.EM) :
    D.Th j cc PP (monomial ζ 1) =
      monomial (eOut (D.outSeg j) ζ) 1 * ∑ b, cc (D.pullE j ζ) b • PP b := by
  simp only [Th, lsup_monomial, one_smul, TT_monomial]

theorem TT_expand (Ψ : ι → MvPolynomial (Fin (D.nB j + D.r) × Fin D.r) K)
    (hli : LinearIndependent K Ψ)
    (hcc : ∀ lam, (∀ k, ldeg lam k = D.dO (D.eA j k)) → monomial lam (1 : K) = ∑ b, cc lam b • Ψ b)
    (Q : MvPolynomial (Fin (D.nB j + D.r) × Fin D.r) K)
    (hQ : Q ∈ PolK K D.r (fun k => D.dO (D.eA j k))) (a : ι → K) (ha : Q = ∑ b, a b • Ψ b) :
    D.TT j cc PP Q = ∑ b, a b • PP b := by
  classical
  have hQsupp : ∀ lam ∈ Q.support, ∀ k, ldeg lam k = D.dO (D.eA j k) := by
    intro lam hlam k
    exact (mem_PolK_iff _ Q).mp hQ lam hlam k
  set c : ι → K := fun b => ∑ lam ∈ Q.support, Q.coeff lam * cc lam b with hc
  have hT : D.TT j cc PP Q = ∑ b, c b • PP b := by
    simp only [TT, lsup_apply, Finset.smul_sum, smul_smul, hc, Finset.sum_smul]
    exact Finset.sum_comm
  have hQ' : Q = ∑ b, c b • Ψ b := by
    calc Q = ∑ lam ∈ Q.support, Q.coeff lam • monomial lam (1 : K) := by
            conv_lhs => rw [Q.as_sum]
            refine Finset.sum_congr rfl fun lam _ => ?_
            rw [MvPolynomial.smul_monomial, smul_eq_mul, mul_one]
      _ = ∑ lam ∈ Q.support, Q.coeff lam • ∑ b, cc lam b • Ψ b := by
            refine Finset.sum_congr rfl fun lam hlam => ?_
            rw [hcc lam (hQsupp lam hlam)]
      _ = ∑ b, c b • Ψ b := by
            simp only [Finset.smul_sum, smul_smul, hc, Finset.sum_smul]
            exact Finset.sum_comm
  have hca : ∀ b, c b = a b := by
    have h0 : ∑ b, (c b - a b) • Ψ b = 0 := by
      simp only [sub_smul, Finset.sum_sub_distrib]
      rw [← hQ', ← ha, sub_self]
    intro b
    exact sub_eq_zero.mp (Fintype.linearIndependent_iff.mp hli _ h0 b)
  rw [hT]
  exact Finset.sum_congr rfl fun b _ => by rw [hca b]

theorem Th_integral {v : AddValuation K (WithTop ℚ)}
    (hccint : ∀ lam, (∀ k, ldeg lam k = D.dO (D.eA j k)) → ∀ b, 0 ≤ v (cc lam b))
    (hPP : ∀ b, Integral v (PP b)) (ζ : D.EM) (hζ : D.PreE j ζ) :
    Integral v (D.Th j cc PP (monomial ζ 1)) := by
  rw [Th_monomial]
  apply integral_mul' (integral_monomial' _ (by simp))
  apply integral_sum'
  intro b _
  exact integral_smul' (hccint _ (D.pullE_deg j ζ hζ) b) (hPP b)

theorem Th_ph (p : ℕ) (Ψ : ι → MvPolynomial (Fin (D.nB j + D.r) × Fin D.r) K)
    (hcc : ∀ lam, (∀ k, ldeg lam k = D.dO (D.eA j k)) → monomial lam (1 : K) = ∑ b, cc lam b • Ψ b)
    (hPP : ∀ b, D.ph p (PP b) = rename (Prod.map (D.eA j) id) (Ψ b)) (ζ : D.EM) (hζ : D.PreE j ζ) :
    D.ph p (D.Th j cc PP (monomial ζ 1)) = D.ph p (monomial ζ 1) := by
  have hsum : (∑ b, cc (D.pullE j ζ) b • rename (Prod.map (D.eA j) id) (Ψ b)) =
      D.ph p (monomial (eIn (D.outSeg j) ζ) 1) := by

    rw [← D.mapDomain_pullE j ζ, ← MvPolynomial.rename_monomial, substitution_rename_first_embedding,
    hcc _ (D.pullE_deg j ζ hζ), map_sum]
    simp only [map_smul]

  rw [Th_monomial, map_mul, map_sum]
  simp only [map_smul, hPP]
  rw [hsum, ← map_mul, MvPolynomial.monomial_mul, one_mul, eOut_add_eIn]

theorem Th_supp (ζ ζ' : D.EM) (h : ζ' ∈ (D.Th j cc PP (monomial ζ 1)).support) :
    ∃ b, ∃ ξ ∈ (PP b).support, ζ' = eOut (D.outSeg j) ζ + ξ := by
  rw [Th_monomial, MvPolynomial.mem_support_iff, MvPolynomial.coeff_monomial_mul'] at h
  split_ifs at h with hle
  · rw [one_mul, MvPolynomial.coeff_sum] at h
    obtain ⟨b, -, hb⟩ := Finset.exists_ne_zero_of_sum_ne_zero h
    rw [MvPolynomial.coeff_smul, smul_eq_mul] at hb
    refine ⟨b, ζ' - eOut (D.outSeg j) ζ, ?_, ?_⟩
    · rw [MvPolynomial.mem_support_iff]
      exact right_ne_zero_of_mul hb
    · exact (add_tsub_cancel_of_le hle).symm
  · exact absurd rfl h

theorem outSeg_of_not_segL (i : D.ML) (hi : ¬ D.SegL j i) : D.outSeg j i := by
  rintro ⟨k, rfl⟩
  apply hi
  unfold SegL
  cases k using Fin.addCases with
  | left a =>
    rw [first_embedding_castAdd]
    exact Or.inl ⟨D.eB j a, (Finset.mem_filter.mp ((D.LLj j).equivFin.symm a).2).2, rfl⟩
  | right m =>
    rw [first_embedding_natAdd]
    exact Or.inr (Or.inl ⟨Fin.rev m, rfl⟩)

theorem Th_post (hPP : ∀ b, ∀ ξ ∈ (PP b).support, D.PostE j ξ ∧ ∀ i, ¬ D.SegL j i → ∀ a, ξ (i, a) = 0)
    (ζ : D.EM) (hζ : D.PreE j ζ) (ζ' : D.EM) (h : ζ' ∈ (D.Th j cc PP (monomial ζ 1)).support) :
    D.PostE j ζ' ∧ ∀ i, ¬ D.SegL j i → ∀ a, ζ' (i, a) = ζ (i, a) := by
  obtain ⟨b, ξ, hξ, rfl⟩ := D.Th_supp j cc PP ζ ζ' h
  obtain ⟨hpost, hzero⟩ := hPP b ξ hξ
  have hO : ∀ i, ¬ D.outSeg j i → ∀ a, eOut (D.outSeg j) ζ (i, a) = 0 := by
    intro i hi a
    exact (eOut_apply (out := D.outSeg j) ζ (i, a)).trans (if_neg hi)
  have hmb : ∀ c, D.seg c = j → ¬ D.outSeg j (D.mb c) := by
    intro c hc hout
    obtain ⟨a, rfl⟩ := eB_surj (D := D) (j := j) c hc
    exact hout ⟨Fin.castAdd D.r a, by rw [first_embedding_castAdd]⟩
  have hml : ∀ m, ¬ D.outSeg j (D.mlab (j, m)) := by
    intro m hout
    exact hout ⟨Fin.natAdd (D.nB j) (Fin.rev m), by rw [first_embedding_natAdd, Fin.rev_rev]⟩
  have hmt : ∀ m a, eOut (D.outSeg j) ζ (D.mtp (j, m), a) = 0 := by
    intro m a
    rw [eOut_apply]
    split_ifs
    · exact hζ.2.2 m a
    · rfl
  have hldeg : ∀ i, (∀ a, eOut (D.outSeg j) ζ (i, a) = 0) →
      ldeg (eOut (D.outSeg j) ζ + ξ) i = ldeg ξ i := by
    intro i hi
    simp only [ldeg, Finsupp.add_apply, hi, zero_add]
  refine ⟨⟨?_, ?_, ?_, ?_⟩, ?_⟩
  · intro c hc
    rw [hldeg _ (hO _ (hmb c hc))]
    exact hpost.1 c hc
  · intro m
    rw [hldeg _ (hO _ (hml m)), hldeg _ (hmt m)]
    exact hpost.2.1 m
  · intro m
    rw [hldeg _ (hmt m)]
    exact hpost.2.2.1 m
  · intro m hm a
    rw [Finsupp.add_apply, hmt m a, zero_add]
    exact hpost.2.2.2 m hm a
  · intro i hi a
    rw [Finsupp.add_apply, hzero i hi a, add_zero]
    exact (eOut_apply (out := D.outSeg j) ζ (i, a)).trans (if_pos (D.outSeg_of_not_segL j i hi))

theorem Th_away (hPP : ∀ b, ∀ ξ ∈ (PP b).support, ∀ i, ¬ D.SegL j i → ∀ a, ξ (i, a) = 0)
    (S : Finset D.ML) (hS : ∀ i ∈ S, ¬ D.SegL j i) (Z : MvPolynomial (D.ML × Fin D.r) K) :
    valS D.msg S Z ≤ valS D.msg S (D.Th j cc PP Z) := by
  have hIn : ∀ α : D.EM, eIn (fun i => ¬ D.outSeg j i) α = eOut (D.outSeg j) α := by
    intro α
    ext x
    simp [eIn, eOut, Finsupp.filter_apply]
  have hOut : ∀ α : D.EM, eOut (fun i => ¬ D.outSeg j i) α = eIn (D.outSeg j) α := by
    intro α
    ext x
    simp [eIn, eOut, Finsupp.filter_apply]
  have hIn1 : ∀ α : D.EM,
      D.Th j cc PP (monomial (eIn (D.outSeg j) α) 1) = ∑ b, cc (D.pullE j α) b • PP b := by
    intro α
    rw [Th_monomial, eOut_eIn, pullE_eIn, ← C_apply, map_one, one_mul]
  refine valS_outside_linear (fun i => ¬ D.outSeg j i) D.msg S (D.Th j cc PP) ?_ ?_ ?_ Z
  · intro i hi h
    exact h (D.outSeg_of_not_segL j i (hS i hi))
  · intro α
    rw [hIn, hOut, hIn1, Th_monomial]
  · intro α
    rw [hOut, hIn1]
    apply valS_sum_le
    intro b _
    rw [smul_eq_C_mul]
    refine le_trans ?_ (valS_C_mul_le _ _ _ _)
    apply valS_nonneg_of_vecS
    intro ξ hξ i a hne hiS
    exact absurd (hPP b ξ hξ i (hS i hiS) a) hne

end TwistData

end Formalism.MainNotions.PlaneGram
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.MonomialMemPolKSg =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.RenamePullLCoefOut =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.RenamePullLCoefOut", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.MonomialMemPolKSg\npublic import Mathlib.CategoryTheory.Category.Basic\npublic import Mathlib.Data.FunLike.Fintype\nimport Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.IntegralMonomial\nimport Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SubstitutionXFirstEmbedding\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.PlaneGram

theorem coe_untopD_le (x : WithTop ℤ) : ((x.untopD 0 : ℤ) : WithTop ℤ) ≤ x := by
  induction x using WithTop.recTopCoe with
  | top => exact le_top
  | coe n => exact le_rfl

namespace TwistData

variable {K : Type} [Field K] (D : TwistData K) (j : Fin D.J)

def pullL : MvPolynomial (D.ML × Fin D.r) K →ₗ[K] MvPolynomial (Fin (D.nB j + D.r) × Fin D.r) K :=
  lsup fun ζ => monomial (D.pullE j ζ) 1

theorem pullL_coefOut (μ : D.EM) (Z : MvPolynomial (D.ML × Fin D.r) K) :
    D.pullL j (coefOut (D.outSeg j) μ Z) =
      ∑ α ∈ Z.support, if eOut (D.outSeg j) α = μ then monomial (D.pullE j α) (Z.coeff α) else 0 := by
  unfold coefOut

  rw [map_sum]
  refine Finset.sum_congr rfl fun α _ => ?_
  split_ifs
  · rw [pullL, lsup_monomial, pullE_eIn, smul_monomial, smul_eq_mul, mul_one]
  · rw [map_zero]

theorem rename_pullL_coefOut (μ : D.EM) (Z : MvPolynomial (D.ML × Fin D.r) K) :
    rename (Prod.map (D.e0 j) id) (D.pullL j (coefOut (D.outSeg j) μ Z)) = coefOut (D.outSeg j) μ Z := by

  rw [pullL_coefOut, map_sum]
  unfold coefOut
  refine Finset.sum_congr rfl fun α _ => ?_
  split_ifs
  · rw [rename_monomial, mapDomain_pullE]
  · rw [map_zero]

variable {ι : Type} [Fintype ι]
  (cc : (Fin (D.nB j + D.r) × Fin D.r →₀ ℕ) → ι → K) (PP : ι → MvPolynomial (D.ML × Fin D.r) K)

theorem Th_eq (Z : MvPolynomial (D.ML × Fin D.r) K) :
    D.Th j cc PP Z = ∑ μ ∈ Z.support.image (eOut (D.outSeg j)),
      monomial μ 1 * D.TT j cc PP (D.pullL j (coefOut (D.outSeg j) μ Z)) := by
  have h : ∀ μ, D.TT j cc PP (D.pullL j (coefOut (D.outSeg j) μ Z)) =
      ∑ α ∈ Z.support, if eOut (D.outSeg j) α = μ then
        Z.coeff α • D.TT j cc PP (monomial (D.pullE j α) 1) else 0 := by
    intro μ

    rw [pullL_coefOut, map_sum]
    refine Finset.sum_congr rfl fun α _ => ?_
    split_ifs
    · have : monomial (D.pullE j α) (Z.coeff α) = Z.coeff α • monomial (D.pullE j α) (1 : K) := by
        rw [smul_monomial, smul_eq_mul, mul_one]
      rw [this, map_smul]
    · rw [map_zero]
  simp_rw [h, Finset.mul_sum]
  rw [Finset.sum_comm, Th, lsup_apply]
  refine Finset.sum_congr rfl fun α hα => ?_
  rw [Finset.sum_eq_single (eOut (D.outSeg j) α)]
  · rw [if_pos rfl, mul_smul_comm]
  · intro μ _ hμ
    rw [if_neg (Ne.symm hμ), mul_zero]
  · intro h2
    exact absurd (Finset.mem_image_of_mem _ hα) h2

theorem Th_val [NeZero D.r] {v : AddValuation K (WithTop ℚ)}
    (Ψ : ι → MvPolynomial (Fin (D.nB j + D.r) × Fin D.r) K)
    (path : ι → Fin (D.nB j + D.r + 1) → Fin D.r → ℤ)
    (hli : LinearIndependent K Ψ)
    (hcc : ∀ lam, (∀ k, ldeg lam k = D.dO (D.eA j k)) → monomial lam (1 : K) = ∑ b, cc lam b • Ψ b)
    (h7 : ∀ (th : Fin (D.nB j + D.r + 1) → ℤ) (F : MvPolynomial (Fin (D.nB j + D.r) × Fin D.r) K),
      (F ∈ PolO v D.r (fun k => D.dO (D.eA j k)) ∧ ∀ i : Fin (D.nB j + D.r + 1),
        F ∈ Aset (D.msg ∘ D.e0 j) (initSet (D.nB j + D.r) i.val) (th i)) →
        ∃ c : ι → K, (∀ b, 0 ≤ v (c b)) ∧ (∀ b, c b ≠ 0 → ∀ i, th i ≤ path b i (lastIdx D.r)) ∧
          F = ∑ b, c b • Ψ b)
    (hPPval : ∀ b (m : Fin D.r) (i0 : Fin (D.nB j + D.r + 1)), i0.val = D.stg j m →
      ((path b i0 (lastIdx D.r) : ℤ) : WithTop ℤ) ≤ valS D.msg (D.YPset j m) (PP b))
    (Z : MvPolynomial (D.ML × Fin D.r) K) (hZ : Integral v Z) (hpre : ∀ ζ ∈ Z.support, D.PreE j ζ)
    (m : Fin D.r) (θ : ℝ) (hθ : vala D.msg (D.TLset j m) θ Z) :
    vala D.msg (D.YPset j m) θ (D.Th j cc PP Z) := by
  rw [Th_eq]
  refine vala_sum _ _ fun μ hμ => ?_
  obtain ⟨α0, hα0, rfl⟩ := Finset.mem_image.mp hμ
  refine vala_mul_left_nonneg ?_ ?_
  · apply valS_nonneg_of_free
    intro α hα i hi a
    have h1 := support_monomial_subset hα
    rw [Finset.mem_singleton] at h1
    rw [h1, eOut_apply]
    simp only [YPset, Finset.mem_union, Finset.mem_image] at hi
    rcases hi with ⟨b, hb, rfl⟩ | ⟨m', -, rfl⟩
    · rw [if_neg]
      exact not_not.mpr ((D.range_first_embedding j _).mpr (Or.inl ⟨b, (Finset.mem_filter.mp hb).2, rfl⟩))
    · split_ifs
      · exact (hpre α0 hα0).2.2 m' a
      · rfl
  · set Q := D.pullL j (coefOut (D.outSeg j) (eOut (D.outSeg j) α0) Z) with hQdef
    have hQK : Q ∈ PolK K D.r (fun k => D.dO (D.eA j k)) := by
      rw [hQdef, pullL_coefOut]
      refine Submodule.sum_mem _ fun α hα => ?_
      split_ifs
      · exact monomial_mem_PolK_sg _ _ _ (D.pullE_deg j α (hpre α hα))
      · exact Submodule.zero_mem _
    have hQint : Integral v Q := by
      rw [hQdef, pullL_coefOut]
      refine integral_sum' _ _ fun α _ => ?_
      split_ifs
      · exact integral_monomial' _ (hZ α)
      · exact integral_zero'
    have hout : ∀ i ∈ D.TLset j m, ¬ D.outSeg j i := by
      intro i hi
      simp only [TLset, Finset.mem_union, Finset.mem_image] at hi
      rcases hi with ⟨b, hb, rfl⟩ | ⟨m', -, rfl⟩
      · exact not_not.mpr ((D.range_first_embedding j _).mpr (Or.inl ⟨b, (Finset.mem_filter.mp hb).2, rfl⟩))
      · exact not_not.mpr ((D.range_first_embedding j _).mpr (Or.inr ⟨m', rfl⟩))
    have hQval : ((⌈θ⌉ : ℤ) : WithTop ℤ) ≤
        valS (D.msg ∘ D.e0 j) (initSet (D.nB j + D.r) (D.stg j m)) Q := by
      have h1 := valS_rename (D.e0 j) (D.index_embedding_injective j) D.msg (D.TLset j m) Q
      rw [hQdef, rename_pullL_coefOut, TL_preimage, ← hQdef] at h1
      rw [← h1]
      exact le_trans ((vala_iff _ _ _ _).mp hθ) (valS_coefOut_le (D.outSeg j) D.msg _ hout _ Z)
    have hlt : D.stg j m < D.nB j + D.r + 1 := by unfold stg; omega
    let i0 : Fin (D.nB j + D.r + 1) := ⟨D.stg j m, hlt⟩
    let th : Fin (D.nB j + D.r + 1) → ℤ := fun i =>
      if i = i0 then ⌈θ⌉ else (valS (D.msg ∘ D.e0 j) (initSet (D.nB j + D.r) i.val) Q).untopD 0
    have hmem : ∀ i : Fin (D.nB j + D.r + 1),
        Q ∈ Aset (D.msg ∘ D.e0 j) (initSet (D.nB j + D.r) i.val) (th i) := by
      intro i
      show ((th i : ℤ) : WithTop ℤ) ≤ _
      by_cases hi : i = i0
      · simp only [th, if_pos hi]
        rw [hi]
        exact hQval
      · simp only [th, if_neg hi]
        exact coe_untopD_le _
    obtain ⟨c, -, hc1, hc2⟩ := (h7 th Q) ⟨⟨hQK, hQint⟩, hmem⟩
    rw [D.TT_expand j cc PP Ψ hli hcc Q hQK c hc2]
    refine vala_sum _ _ fun b _ => ?_
    by_cases hcb : c b = 0
    · rw [hcb, zero_smul]; exact vala_zero θ
    · refine vala_smul _ ?_
      rw [vala_iff]
      have h2 := hc1 b hcb i0
      simp only [th, if_true] at h2
      exact le_trans (WithTop.coe_le_coe.mpr h2) (hPPval b m i0 rfl)

end TwistData

theorem segStep_of {K : Type} [Field K] [CharZero K] {v : AddValuation K (WithTop ℚ)} {p : ℕ}
    (hS : SPAN K v p) : SegStep K v p := by
  classical
  intro hD D hr _ j
  haveI : NeZero D.r := ⟨hr.ne'⟩
  obtain ⟨ι, hι, Ψ, path, ncol, col, cidx, hts, occ, h3, h4, h5, h7, h8, h10, h11,
    h14, h16, h17⟩ := hS hD (D.nB j + D.r) D.r (D.msg ∘ D.e0 j) (fun k => D.dO (D.eA j k))
  have hmon : ∀ lam : Fin (D.nB j + D.r) × Fin D.r →₀ ℕ, (∀ k, ldeg lam k = D.dO (D.eA j k)) →
      monomial lam (1 : K) ∈ PolO v D.r (fun k => D.dO (D.eA j k)) := fun lam h =>
    ⟨monomial_mem_PolK_sg _ _ _ h, integral_monomial' _ (by simp)⟩
  let cc : (Fin (D.nB j + D.r) × Fin D.r →₀ ℕ) → ι → K := fun lam =>
    if h : monomial lam (1 : K) ∈ PolO v D.r (fun k => D.dO (D.eA j k)) then (h5 _ h).choose else 0
  have hcc : ∀ lam, (∀ k, ldeg lam k = D.dO (D.eA j k)) →
      monomial lam (1 : K) = ∑ b, cc lam b • Ψ b := by
    intro lam h
    simp only [cc, dif_pos (hmon lam h)]
    exact (h5 _ (hmon lam h)).choose_spec.2
  have hccint : ∀ lam, (∀ k, ldeg lam k = D.dO (D.eA j k)) → ∀ b, 0 ≤ v (cc lam b) := by
    intro lam h b
    simp only [cc, dif_pos (hmon lam h)]
    exact (h5 _ (hmon lam h)).choose_spec.1 b
  let PP : ι → MvPolynomial (D.ML × Fin D.r) K := fun b => D.PsiP j (col b) (occ b)
  have hPPint : ∀ b, Integral v (PP b) := fun b =>
    D.PsiP_integral j (col b) (occ b) (h8 b ▸ (h3 b).2)
  have hPPph : ∀ b, D.ph p (PP b) = rename (Prod.map (D.eA j) id) (Ψ b) := by
    intro b
    rw [h8 b]
    exact D.PsiP_ph j p (col b) (occ b)
  have hPPsupp : ∀ b, ∀ ξ ∈ (PP b).support,
      D.PostE j ξ ∧ ∀ i, ¬ D.SegL j i → ∀ a, ξ (i, a) = 0 := fun b ξ hξ =>
    D.PsiP_support j (col b) (occ b) (h10 b) (h11 b) ξ hξ
  have hPPval : ∀ b (m : Fin D.r) (i0 : Fin (D.nB j + D.r + 1)), i0.val = D.stg j m →
      ((path b i0 (lastIdx D.r) : ℤ) : WithTop ℤ) ≤ valS D.msg (D.YPset j m) (PP b) := by
    intro b m i0 hi0
    rw [h17 b i0]
    refine D.PsiP_val j (col b) (occ b) (h10 b) (cidx b) (fun k => hts b k i0) m ?_ ?_
    · intro k hk
      have := h14 b k i0 hk
      rwa [hi0] at this
    · intro k
      have := h16 b k i0
      rwa [hi0] at this
  refine ⟨D.Th j cc PP, ?_, ?_, ?_, ?_, ?_⟩
  · exact fun ζ hζ => D.Th_integral j cc PP hccint hPPint ζ hζ
  · exact fun ζ hζ => D.Th_ph j cc PP p Ψ hcc hPPph ζ hζ
  · exact fun ζ hζ ζ' hζ' => D.Th_post j cc PP hPPsupp ζ hζ ζ' hζ'
  · exact fun Z hZ hpre m θ _ hθ => D.Th_val j cc PP Ψ path h4 hcc h7 hPPval Z hZ hpre m θ hθ
  · exact fun S hS' Z => D.Th_away j cc PP (fun b ξ hξ => (hPPsupp b ξ hξ).2) S hS' Z

end Formalism.MainNotions.PlaneGram
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.RenamePullLCoefOut =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.PlaneGramTheoremOfLemmas =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.PlaneGramTheoremOfLemmas", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.LiftBoundOfHypotheses\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.CardLinkIdxMulLe\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.ExistsOfMemSupportLin\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.OmegaValue\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.PrimedEmbeddingInjective\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.RenamePullLCoefOut\nimport Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SubstitutedExponentApplyBlock\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SumOnLetterApplyInl\nimport Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.TestBoundOfRhoAndNormSets\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.PlaneGram

variable {K : Type} [Field K] [CharZero K] {v : AddValuation K (WithTop ℚ)} {p : ℕ} {C0 : ℝ}

theorem plane_gram_theorem_of_five_lemmas (h1 : 1 ≤ C0) (hV2 : V2 K) (hSPAN : SPAN K v p) (hPROJ : PROJ K v p C0)
    (hDIG : DIG K v p) (hDER : DER K v p) : LiftBoundUniform K v p C0 :=
  plane_gram_theorem_of_combined_lemmas h1 (stepBC_of (stepB_of h1 hV2 hPROJ) (stepC_of hV2 (segStep_of hSPAN)))
    (stepDEF_of h1 hDIG (stepG_of hV2) (stepP_of v p C0 h1 hPROJ) (stepE_of v p hV2 hDER))

end Formalism.MainNotions.PlaneGram
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.PlaneGramTheoremOfLemmas =====
