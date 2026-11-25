module

public import GroundTheory.LocalFields.AbstractLocalReciprocity.CoeNormEqProdSmulNorm
public import GroundTheory.LocalFields.AbstractLocalReciprocity.NormFormula
public import Mathlib.Algebra.BigOperators.Fin
public import GroundTheory.LocalFields.AbstractLocalReciprocity.Reciprocity
import GroundTheory.LocalFields.AbstractLocalReciprocity.UniqueQuotientSubgroupOfSelf
import GroundTheory.LocalFields.AbstractLocalReciprocity.Unramified
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Algebra.ClopenNhdofOne
import Mathlib.Topology.Compactness.Paracompact
import Mathlib.Topology.Separation.Connected

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.LocalFields.AbstractLocalReciprocity.KeyLemma, GroundTheory.LocalFields.AbstractLocalReciprocity.Multiplicative

-- ===== clump member: GroundTheory.LocalFields.AbstractLocalReciprocity.KeyLemma =====
-- clump-header: {"m": "GroundTheory.LocalFields.AbstractLocalReciprocity.KeyLemma", "h": "module\n\npublic import GroundTheory.LocalFields.AbstractLocalReciprocity.CoeNormEqProdSmulNorm\npublic import GroundTheory.LocalFields.AbstractLocalReciprocity.NormFormula\nimport GroundTheory.LocalFields.AbstractLocalReciprocity.UniqueQuotientSubgroupOfSelf\nimport GroundTheory.LocalFields.AbstractLocalReciprocity.Unramified\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.BigOperators.Fin\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.LocalField.Abstract

open ProfiniteInteger

namespace ClassFieldData

variable {G : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [CompactSpace G]
  [TotallyDisconnectedSpace G] {A : Type*} [CommGroup A] [MulDistribMulAction G A]
  {D : ClassFieldData G A} {K L : OpenSubgroup G}

section SlopeTestRemainingChoices


omit [TotallyDisconnectedSpace G] in
def powLift {φ : G} (hφK : φ ∈ (K : Subgroup G))
    (hdφ : D.deg φ = Multiplicative.ofAdd (inertiaDegree D.deg K : ℤ̂)) (m : ℕ) (hm : 0 < m) :
    D.FrobeniusLift K where
  elt := φ ^ m
  mem := K.pow_mem hφK m
  deg := m
  deg_pos := hm
  deg_eq := by
    rw [map_pow, hdφ, ← ofAdd_nsmul]
    congr 1
    push_cast
    rw [nsmul_eq_mul]


omit [TotallyDisconnectedSpace G] in
theorem mem_fixedModule_of_smul_eq [IsDiscreteModule G A] (K : OpenSubgroup G) {φ : G}
    (hφK : φ ∈ (K : Subgroup G)) (hdφ : D.deg φ = Multiplicative.ofAdd (inertiaDegree D.deg K : ℤ̂))
    {w : A} (hw : w ∈ fixedModule A ((K : Subgroup G) ⊓ D.deg.ker)) (hφw : φ • w = w) :
    w ∈ fixedModule A (K : Subgroup G) := by
  let S : OpenSubgroup G := ⟨MulAction.stabilizer G w, IsDiscreteModule.isOpen_stabilizer w⟩
  let M : OpenSubgroup G := S ⊓ K
  have hMK : M ≤ K := inf_le_right
  have hu : (K : Subgroup G) ⊓ D.deg.ker ≤ M := fun g hg => ⟨hw g hg, hg.1⟩
  have hrel : D.relDeg K ⟨φ, hφK⟩ = Multiplicative.ofAdd 1 := by
    refine (ProfiniteInteger.pow_left_inj (D.inertiaDegree_ne_zero K)).1 ?_
    rw [D.relDeg_pow, ← ofAdd_nsmul, nsmul_one]
    exact hdφ
  intro τ hτ
  obtain ⟨m, hm⟩ := D.exists_pow_mul_mem_of_unramified hMK hu hrel ⟨τ, hτ⟩
  have h1 : ∀ j : ℕ, (φ ^ j) • w = w := by
    intro j
    induction j with
    | zero => simp
    | succ k ih => rw [pow_succ, mul_smul, hφw, ih]
  have h2 : ((φ ^ m)⁻¹ * τ) • w = w := by
    have h3 : (φ ^ m)⁻¹ * τ ∈ S := by simpa using hm.1
    exact MulAction.mem_stabilizer_iff.1 h3
  calc τ • w = (φ ^ m * ((φ ^ m)⁻¹ * τ)) • w := by group
    _ = w := by rw [mul_smul, h2, h1]


omit [TotallyDisconnectedSpace G] in
theorem map_conj_inf_ker (hLK : L ≤ K) [((L : Subgroup G).subgroupOf K).Normal] {g : G}
    (hg : g ∈ (K : Subgroup G)) :
    ((L : Subgroup G) ⊓ D.deg.ker).map (MulAut.conj g).toMonoidHom = (L : Subgroup G) ⊓ D.deg.ker :=
  Subgroup.mem_normalizer_iff_map_conj_eq.1 (FrobeniusLift.mem_normalizer hLK hg)


omit [TotallyDisconnectedSpace G] in
theorem map_conj_inf_ker_self {g : G} (hg : g ∈ (K : Subgroup G)) :
    ((K : Subgroup G) ⊓ D.deg.ker).map (MulAut.conj g).toMonoidHom =
      (K : Subgroup G) ⊓ D.deg.ker := by
  have : ((K : Subgroup G).subgroupOf K).Normal := by
    rw [Subgroup.subgroupOf_self]
    infer_instance
  exact map_conj_inf_ker le_rfl hg


omit [TotallyDisconnectedSpace G] in
theorem smul_mem_fixedModule_inf_ker (hLK : L ≤ K) [((L : Subgroup G).subgroupOf K).Normal] {g : G}
    (hg : g ∈ (K : Subgroup G)) {y : A} (hy : y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker)) :
    g • y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker) := by
  have := smul_mem_fixedModule hy g
  rwa [map_conj_inf_ker hLK hg] at this


omit [TotallyDisconnectedSpace G] in
theorem smul_norm_inf_ker (hLK : L ≤ K) [((L : Subgroup G).subgroupOf K).Normal] {g : G}
    (hg : g ∈ (K : Subgroup G)) (y : fixedModule A ((L : Subgroup G) ⊓ D.deg.ker)) :
    g • (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker) y : A) =
      norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker)
        ⟨g • (y : A), smul_mem_fixedModule_inf_ker hLK hg y.2⟩ :=
  smul_norm_of_map_eq g (map_conj_inf_ker_self hg) (map_conj_inf_ker hLK hg) y


omit [TotallyDisconnectedSpace G] in
theorem smul_smul_comm (hLK : L ≤ K) [hN : ((L : Subgroup G).subgroupOf K).Normal] {δ ψ : G}
    (hδ : δ ∈ (K : Subgroup G) ⊓ D.deg.ker) (hψ : ψ ∈ (L : Subgroup G)) {y : A}
    (hy : y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker)) : δ • ψ • y = ψ • δ • y := by
  have hconj : ∀ g ∈ (K : Subgroup G), ∀ x ∈ (L : Subgroup G), g * x * g⁻¹ ∈ (L : Subgroup G) := by
    intro g hg x hx
    have := hN.conj_mem ⟨x, hLK hx⟩ (by simpa [Subgroup.mem_subgroupOf] using hx) ⟨g, hg⟩
    simpa [Subgroup.mem_subgroupOf] using this
  have hc : δ⁻¹ * ψ⁻¹ * δ * ψ ∈ (L : Subgroup G) ⊓ D.deg.ker := by
    refine ⟨?_, ?_⟩
    · have h1 : δ⁻¹ * ψ⁻¹ * δ⁻¹⁻¹ ∈ (L : Subgroup G) :=
        hconj δ⁻¹ (K.inv_mem hδ.1) _ (L.inv_mem hψ)
      rw [inv_inv] at h1
      exact L.mul_mem h1 hψ
    · have hdδ : D.deg δ = 1 := hδ.2
      show D.deg (δ⁻¹ * ψ⁻¹ * δ * ψ) = 1
      rw [map_mul, map_mul, map_mul, map_inv, map_inv, hdδ]
      simp
  calc δ • ψ • y = (ψ * δ * (δ⁻¹ * ψ⁻¹ * δ * ψ)) • y := by rw [← mul_smul]; group
    _ = ψ • δ • y := by rw [mul_smul, hy _ hc, mul_smul]

theorem smul_mem_field [IsDiscreteModule G A] (hLK : L ≤ K) [((L : Subgroup G).subgroupOf K).Normal]
    (s : D.FrobeniusLift K) {g : G}
    (hgJ : ∀ y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker),
      g • y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker))
    (hcomm : ∀ y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker), s.elt • g • y = g • s.elt • y)
    {y : A} (hy : y ∈ fixedModule A ((s.field L hLK : OpenSubgroup G) : Subgroup G)) :
    g • y ∈ fixedModule A ((s.field L hLK : OpenSubgroup G) : Subgroup G) := by
  have hfield : (s.field L hLK : Subgroup G) = frobeniusClosure D.deg L s.elt := rfl
  rw [hfield, mem_fixedModule_frobeniusClosure] at hy ⊢
  exact ⟨hgJ y hy.1, by rw [hcomm y hy.1, hy.2]⟩

end SlopeTestRemainingChoices

section Helpers


omit [TotallyDisconnectedSpace G] in
theorem normal_inf_ker (hLK : L ≤ K) [hN : ((L : Subgroup G).subgroupOf K).Normal] :
    (((L : Subgroup G) ⊓ D.deg.ker).subgroupOf ((K : Subgroup G) ⊓ D.deg.ker)).Normal := by
  refine ⟨fun n hn g => ?_⟩
  rw [Subgroup.mem_subgroupOf] at hn ⊢
  have h := (Subgroup.mem_normalizer_iff.1 (FrobeniusLift.mem_normalizer (D := D) hLK g.2.1) n).1 hn
  simpa using h


omit [TotallyDisconnectedSpace G] in
theorem prod_range_prod_range_eq {M : Type*} [CommMonoid M] (f : ℕ → M) (g D0 : ℕ) :
    ∏ i ∈ Finset.range g, ∏ j ∈ Finset.range D0, f (D0 * i + j) =
      ∏ m ∈ Finset.range (g * D0), f m := by
  induction g with
  | zero => simp
  | succ k ih =>
    rw [Finset.prod_range_succ, ih, Nat.succ_mul, Finset.prod_range_add, mul_comm D0 k]

variable (hLK : L ≤ K) [((L : Subgroup G).subgroupOf K).Normal]

theorem field_le_field_of_pow (s1 s2 : D.FrobeniusLift K) (k : ℕ) (h2 : s2.elt = s1.elt ^ k) :
    s2.field L hLK ≤ s1.field L hLK := by
  intro x hx
  refine frobeniusClosure_le (s1.field L hLK).isClosed ?_ le_frobeniusClosure hx
  rw [h2]
  exact Subgroup.pow_mem _ mem_frobeniusClosure_self k

theorem coe_norm_field_field (s1 s2 : D.FrobeniusLift K) (k : ℕ) (hk : 0 < k)
    (h2 : s2.elt = s1.elt ^ k) (hdeg : s2.deg = k * s1.deg)
    (z : fixedModule A ((s2.field L hLK : OpenSubgroup G) : Subgroup G)) :
    (norm A ((s1.field L hLK : OpenSubgroup G) : Subgroup G)
      ((s2.field L hLK : OpenSubgroup G) : Subgroup G) z : A) =
      ∏ i : Fin k, s1.elt ^ (i : ℕ) • (z : A) := by
  have hnormalizer := FrobeniusLift.mem_normalizer (D := D) hLK s1.mem
  have hmap1 := map_frobeniusClosure D.continuous_deg hnormalizer
    s1.deg_eq (L := (L : Subgroup G))
  have hmap2 := map_frobeniusClosure D.continuous_deg (FrobeniusLift.mem_normalizer hLK s2.mem)
    s2.deg_eq (L := (L : Subgroup G))
  rw [hdeg, mul_assoc] at hmap2
  have hf : 0 < s1.deg * inertiaDegree D.deg K :=
    Nat.mul_pos s1.deg_pos (Nat.pos_of_ne_zero (D.inertiaDegree_ne_zero K))
  have hfield_inf_ker :
      (s1.field L hLK : Subgroup G) ⊓ D.deg.ker = (L : Subgroup G) ⊓ D.deg.ker :=
    frobeniusClosure_inf_ker D.continuous_deg L.isOpen hnormalizer hf.ne' s1.deg_eq
  have key := coe_norm_eq_prod_smul_norm D.deg (K := ((s1.field L hLK : OpenSubgroup G) : Subgroup G))
    (S := ((s2.field L hLK : OpenSubgroup G) : Subgroup G)) (J := (L : Subgroup G) ⊓ D.deg.ker)
    (f := s1.deg * inertiaDegree D.deg K) (n := k) hk hf
    (fun x hx => field_le_field_of_pow hLK s1 s2 k h2 hx) ?_ ?_ ?_ ?_
    mem_frobeniusClosure_self s1.deg_eq z (fixedModule_anti le_frobeniusClosure z.2)
  · rw [key]
    refine Finset.prod_congr rfl fun i _ => ?_
    congr 1
    exact coe_norm_of_le hfield_inf_ker.le _
  · intro x hx
    have : D.deg x ∈ (frobeniusClosure D.deg L s2.elt).map D.deg := ⟨x, hx, rfl⟩
    rw [hmap2] at this
    exact this
  · intro x _ hx
    have : D.deg x ∈ AddSubgroup.toSubgroup (multiples (k * (s1.deg * inertiaDegree D.deg K))) := hx
    rw [← hmap2] at this
    obtain ⟨y, hy, hyx⟩ := this
    exact ⟨y, hy, hyx⟩
  · intro x hx
    have : D.deg x ∈ (frobeniusClosure D.deg L s1.elt).map D.deg := ⟨x, hx, rfl⟩
    rw [hmap1] at this
    exact this
  · intro q hq
    have hqJ : q ∈ (L : Subgroup G) ⊓ D.deg.ker := hfield_inf_ker.le hq
    exact ⟨fun _ => hqJ, fun h => le_frobeniusClosure h⟩


omit [TotallyDisconnectedSpace G] [((L : Subgroup G).subgroupOf K).Normal] in
theorem coe_norm_inf_ker_prod {ι : Type*} (s : Finset ι) (f : ι → A)
    (hf : ∀ i, f i ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker)) :
    (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker)
      ⟨∏ i ∈ s, f i, Subgroup.prod_mem _ fun i _ => hf i⟩ : A) =
      ∏ i ∈ s, (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker)
        ⟨f i, hf i⟩ : A) := by
  have h : (⟨∏ i ∈ s, f i, Subgroup.prod_mem _ fun i _ => hf i⟩ :
      fixedModule A ((L : Subgroup G) ⊓ D.deg.ker)) = ∏ i ∈ s, ⟨f i, hf i⟩ := by
    ext
    simp
  rw [h, map_prod]
  simp


omit [TotallyDisconnectedSpace G] [((L : Subgroup G).subgroupOf K).Normal] in
theorem coe_norm_inf_ker_mul {y z : A} (hy : y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker))
    (hz : z ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker)) :
    (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker)
      ⟨y * z, Subgroup.mul_mem _ hy hz⟩ : A) =
      (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker) ⟨y, hy⟩ : A) *
        norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker) ⟨z, hz⟩ := by
  have h : (⟨y * z, Subgroup.mul_mem _ hy hz⟩ : fixedModule A ((L : Subgroup G) ⊓ D.deg.ker)) =
      ⟨y, hy⟩ * ⟨z, hz⟩ := rfl
  rw [h, map_mul]
  rfl

end Helpers

section Key

variable (hLK : L ≤ K) [((L : Subgroup G).subgroupOf K).Normal]

theorem exists_norm_eq_norm_inf_ker (hax : ClassFieldAxiom G A) [IsDiscreteModule G A]
    {φ : G} (hφK : φ ∈ (K : Subgroup G))
    (hdφ : D.deg φ = Multiplicative.ofAdd (inertiaDegree D.deg K : ℤ̂))
    (s1 s2 : D.FrobeniusLift K) (h1 : s1.elt = φ ^ s1.deg) (hψL : s1.elt ∈ (L : Subgroup G))
    (h2 : s2.elt = s1.elt ^ ((L : Subgroup G).relIndex K))
    (hdeg : s2.deg = (L : Subgroup G).relIndex K * s1.deg)
    {x a : A} (hx : x ∈ fixedModule A ((s1.field L hLK : OpenSubgroup G) : Subgroup G))
    (ha : a ∈ fixedModule A ((s1.field L hLK : OpenSubgroup G) : Subgroup G))
    (hxu : D.valuation (s1.field L hLK) ⟨x, hx⟩ = 1)
    (hau : D.valuation (s1.field L hLK) ⟨a, ha⟩ = 1)
    {δ : G} (hδ : δ ∈ (K : Subgroup G) ⊓ D.deg.ker) (hrel : φ • x / x = δ • a / a) :
    ∃ b : fixedModule A (L : Subgroup G),
      (norm A (K : Subgroup G) (L : Subgroup G) b : A) =
        norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker)
          ⟨x, fixedModule_anti le_frobeniusClosure hx⟩ := by
  classical
  set g := (L : Subgroup G).relIndex K with hgdef
  have hg : 0 < g := Nat.pos_of_ne_zero (Subgroup.FiniteIndex.index_ne_zero
    (H := (L : Subgroup G).subgroupOf K))
  have hP'P : s2.field L hLK ≤ s1.field L hLK := field_le_field_of_pow hLK s1 s2 g h2
  have hP'L : s2.field L hLK ≤ L := fun y hy =>
    frobeniusClosure_le L.isClosed (by rw [h2]; exact L.pow_mem hψL g) inf_le_left hy
  have hnormalizer := FrobeniusLift.mem_normalizer (D := D) hLK s1.mem
  have hdegree_ne_zero := mul_ne_zero s1.deg_pos.ne' (D.inertiaDegree_ne_zero K)
  have hfield_inf_ker :
      (s1.field L hLK : Subgroup G) ⊓ D.deg.ker = (L : Subgroup G) ⊓ D.deg.ker :=
    frobeniusClosure_inf_ker D.continuous_deg L.isOpen hnormalizer hdegree_ne_zero s1.deg_eq
  have hu : ((s1.field L hLK : OpenSubgroup G) : Subgroup G) ⊓ D.deg.ker ≤ s2.field L hLK :=
    hfield_inf_ker.le.trans le_frobeniusClosure
  have hT := coe_norm_field_field hLK s1 s2 g hg h2 hdeg
  have hinertiaDegree :
      inertiaDegree D.deg (s1.field L hLK : Subgroup G) = s1.deg * inertiaDegree D.deg K :=
    inertiaDegree_frobeniusClosure D.continuous_deg hnormalizer hdegree_ne_zero s1.deg_eq
  have hrelψ : D.relDeg (s1.field L hLK) ⟨s1.elt, mem_frobeniusClosure_self⟩ =
      Multiplicative.ofAdd 1 := by
    refine (ProfiniteInteger.pow_left_inj (D.inertiaDegree_ne_zero (s1.field L hLK))).1 ?_
    rw [D.relDeg_pow, hinertiaDegree, ← ofAdd_nsmul, nsmul_one]
    exact s1.deg_eq

  have hφJ : ∀ y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker),
      φ • y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker) :=
    fun y hy => smul_mem_fixedModule_inf_ker hLK hφK hy
  have hφjJ : ∀ (j : ℕ), ∀ y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker),
      φ ^ j • y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker) :=
    fun j y hy => smul_mem_fixedModule_inf_ker hLK (K.pow_mem hφK j) hy
  have hδJ : ∀ y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker),
      δ • y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker) :=
    fun y hy => smul_mem_fixedModule_inf_ker hLK hδ.1 hy
  have hcommφ : ∀ (i j : ℕ) (y : A), s1.elt ^ i • φ ^ j • y = φ ^ j • s1.elt ^ i • y := by
    intro i j y
    have hc : Commute (s1.elt ^ i) (φ ^ j) := by
      rw [h1]
      exact (((Commute.refl φ).pow_left _).pow_left _).pow_right _
    rw [smul_smul, smul_smul, hc.eq]
  have hcommδ : ∀ (i : ℕ), ∀ y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker),
      s1.elt ^ i • δ • y = δ • s1.elt ^ i • y :=
    fun i y hy => (smul_smul_comm hLK hδ (L.pow_mem hψL i) hy).symm
  have hφP' : ∀ (j : ℕ), ∀ y ∈ fixedModule A ((s2.field L hLK : OpenSubgroup G) : Subgroup G),
      φ ^ j • y ∈ fixedModule A ((s2.field L hLK : OpenSubgroup G) : Subgroup G) := by
    intro j y hy
    refine smul_mem_field hLK s2 (hφjJ j) (fun z _ => ?_) hy
    rw [h2]
    exact hcommφ g j z
  have hδP' : ∀ y ∈ fixedModule A ((s2.field L hLK : OpenSubgroup G) : Subgroup G),
      δ • y ∈ fixedModule A ((s2.field L hLK : OpenSubgroup G) : Subgroup G) := by
    intro y hy
    refine smul_mem_field hLK s2 hδJ (fun z hz => ?_) hy
    rw [h2]
    exact hcommδ g z hz
  have hP'J : ∀ y ∈ fixedModule A ((s2.field L hLK : OpenSubgroup G) : Subgroup G),
      y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker) :=
    fun y hy => fixedModule_anti le_frobeniusClosure hy

  have hxU : (⟨x, hx⟩ : fixedModule A ((s1.field L hLK : OpenSubgroup G) : Subgroup G)) ∈
      D.units (s1.field L hLK) := hxu
  rw [D.units_eq_map_norm hax hP'P hu] at hxU
  obtain ⟨x'', -, hx''⟩ := hxU
  have haU : (⟨a, ha⟩ : fixedModule A ((s1.field L hLK : OpenSubgroup G) : Subgroup G)) ∈
      D.units (s1.field L hLK) := hau
  rw [D.units_eq_map_norm hax hP'P hu] at haU
  obtain ⟨c, -, hc⟩ := haU
  have hxN : x = ∏ i : Fin g, s1.elt ^ (i : ℕ) • (x'' : A) := by
    rw [← hT, hx'']
  have haN : a = ∏ i : Fin g, s1.elt ^ (i : ℕ) • (c : A) := by
    rw [← hT, hc]

  have hφx'' : φ • (x'' : A) ∈ fixedModule A ((s2.field L hLK : OpenSubgroup G) : Subgroup G) := by
    simpa using hφP' 1 _ x''.2
  have hδc : δ • (c : A) ∈ fixedModule A ((s2.field L hLK : OpenSubgroup G) : Subgroup G) :=
    hδP' _ c.2
  set y' : fixedModule A ((s2.field L hLK : OpenSubgroup G) : Subgroup G) :=
    ⟨φ • (x'' : A), hφx''⟩ / x'' / (⟨δ • (c : A), hδc⟩ / c) with hy'def
  have hNy' : norm A ((s1.field L hLK : OpenSubgroup G) : Subgroup G)
      ((s2.field L hLK : OpenSubgroup G) : Subgroup G) y' = 1 := by
    apply Subtype.ext
    rw [hT]
    simp only [hy'def, Subgroup.coe_div, OneMemClass.coe_one, smul_div', Finset.prod_div_distrib]
    have e1 : ∏ i : Fin g, s1.elt ^ (i : ℕ) • φ • (x'' : A) = φ • x := by
      rw [hxN, Finset.smul_prod']
      refine Finset.prod_congr rfl fun i _ => ?_
      simpa using hcommφ i 1 (x'' : A)
    have e2 : ∏ i : Fin g, s1.elt ^ (i : ℕ) • δ • (c : A) = δ • a := by
      rw [haN, Finset.smul_prod']
      exact Finset.prod_congr rfl fun i _ => hcommδ i _ (hP'J _ c.2)
    rw [e1, e2, ← hxN, ← haN, hrel, div_self']
  obtain ⟨b, -, hb⟩ := D.exists_units_eq_smul_div hax hP'P hu hrelψ hNy'

  set Tb : A := ∏ j : Fin s1.deg, φ ^ (j : ℕ) • (b : A) with hTbdef
  have hTbP' : Tb ∈ fixedModule A ((s2.field L hLK : OpenSubgroup G) : Subgroup G) :=
    Subgroup.prod_mem _ fun j _ => hφP' j _ b.2
  have htele : φ • Tb / Tb = s1.elt • (b : A) / b := by
    rw [hTbdef, Finset.smul_prod', h1]
    simp only [Fin.prod_univ_eq_prod_range (fun j => φ • φ ^ j • (b : A)),
      Fin.prod_univ_eq_prod_range (fun j => φ ^ j • (b : A))]
    have hs := Finset.prod_range_succ (fun j => φ ^ j • (b : A)) s1.deg
    have hs' := Finset.prod_range_succ' (fun j => φ ^ j • (b : A)) s1.deg
    simp only [pow_zero, one_smul] at hs'
    have : ∏ j ∈ Finset.range s1.deg, φ • φ ^ j • (b : A) =
        ∏ j ∈ Finset.range s1.deg, φ ^ (j + 1) • (b : A) := by
      refine Finset.prod_congr rfl fun j _ => ?_
      rw [smul_smul, ← pow_succ']
    rw [this, div_eq_div_iff_mul_eq_mul, ← hs', hs, mul_comm]
  set x' : A := (x'' : A) / Tb with hx'def
  have hx'P' : x' ∈ fixedModule A ((s2.field L hLK : OpenSubgroup G) : Subgroup G) :=
    Subgroup.div_mem _ x''.2 hTbP'
  have hx'J := hP'J _ hx'P'
  have hrel' : φ • x' = x' * (δ • (c : A) / c) := by
    have hy'v : (y' : A) = φ • (x'' : A) / x'' / (δ • (c : A) / c) := by
      simp [hy'def]
    have e : φ • (x'' : A) / x'' = (s1.elt • (b : A) / b) * (δ • (c : A) / c) := by
      rw [← hb, hy'v, div_mul_cancel]
    have e2 : φ • Tb = Tb * (s1.elt • (b : A) / b) := by
      rw [← htele, mul_div_cancel]
    rw [hx'def, smul_div', e2]
    have e3 : φ • (x'' : A) = x'' * ((s1.elt • (b : A) / b) * (δ • (c : A) / c)) := by
      rw [← e, mul_div_cancel]
    rw [e3, mul_div_mul_comm, mul_div_cancel_left]

  set w : A := (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker) ⟨x', hx'J⟩ : A)
    with hwdef
  have := normal_inf_ker (D := D) hLK
  have hcJ := hP'J _ c.2
  have hwφ : φ • w = w := by
    rw [hwdef, smul_norm_inf_ker hLK hφK]
    have e : (⟨φ • x', smul_mem_fixedModule_inf_ker hLK hφK hx'J⟩ :
        fixedModule A ((L : Subgroup G) ⊓ D.deg.ker)) =
        ⟨x', hx'J⟩ * (⟨δ • (c : A), hδJ _ hcJ⟩ / ⟨c, hcJ⟩) := by
      ext
      simp [hrel']
    rw [e, map_mul, map_div, norm_smul (K := (K : Subgroup G) ⊓ D.deg.ker)
      (L := (L : Subgroup G) ⊓ D.deg.ker) ⟨δ, hδ⟩ ⟨(c : A), hcJ⟩ (hδJ _ hcJ), div_self', mul_one]
  have hwK : w ∈ fixedModule A (K : Subgroup G) :=
    mem_fixedModule_of_smul_eq K hφK hdφ (norm _ _ _ _).2 hwφ

  have hbJ := hP'J _ b.2
  have hNb : (norm A (K : Subgroup G) (s2.field L hLK : Subgroup G) b : A) =
      ∏ i : Fin s2.deg, φ ^ (i : ℕ) •
        (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker) ⟨b, hbJ⟩ : A) := by
    have hnormalizer₂ := FrobeniusLift.mem_normalizer (D := D) hLK s2.mem
    have hmap := map_frobeniusClosure D.continuous_deg hnormalizer₂ s2.deg_eq
    have hfield₂_inf_ker :
        (s2.field L hLK : Subgroup G) ⊓ D.deg.ker = (L : Subgroup G) ⊓ D.deg.ker :=
      frobeniusClosure_inf_ker D.continuous_deg L.isOpen hnormalizer₂
        (mul_ne_zero s2.deg_pos.ne' (D.inertiaDegree_ne_zero K)) s2.deg_eq
    refine coe_norm_eq_prod_smul_norm D.deg s2.deg_pos (Nat.pos_of_ne_zero (D.inertiaDegree_ne_zero K))
      (fun x hx => hLK (hP'L hx)) ?_ ?_ (fun _ hk => toAdd_deg_mem_multiples K hk) ?_ hφK hdφ b hbJ
    · intro x hx
      exact hmap.le ⟨x, hx, rfl⟩
    · intro k _ hk
      exact hmap.ge hk
    · intro q hq
      exact ⟨fun hqS => hfield₂_inf_ker.le ⟨hqS, hq.2⟩, fun hqJ => le_frobeniusClosure hqJ⟩
  refine ⟨⟨w, fixedModule_anti hLK hwK⟩ * norm A (L : Subgroup G)
    ((s2.field L hLK : OpenSubgroup G) : Subgroup G) b, ?_⟩
  have hψK : ∀ i : ℕ, s1.elt ^ i ∈ (K : Subgroup G) := fun i => K.pow_mem s1.mem i
  have hx''eq : (x'' : A) = x' * Tb := by rw [hx'def, div_mul_cancel]
  have hTbJ := hP'J _ hTbP'
  have hNTb : (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker) ⟨Tb, hTbJ⟩ : A) =
      ∏ j : Fin s1.deg, φ ^ (j : ℕ) •
        (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker) ⟨b, hbJ⟩ : A) := by
    have hmemj : ∀ j : Fin s1.deg, φ ^ (j : ℕ) • (b : A) ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker) :=
      fun j => hφjJ j _ hbJ
    rw [show (⟨Tb, hTbJ⟩ : fixedModule A ((L : Subgroup G) ⊓ D.deg.ker)) =
        ⟨∏ j : Fin s1.deg, φ ^ (j : ℕ) • (b : A), Subgroup.prod_mem _ fun j _ => hmemj j⟩ from rfl,
      coe_norm_inf_ker_prod Finset.univ _ hmemj]
    refine Finset.prod_congr rfl fun j _ => ?_
    rw [smul_norm_inf_ker hLK (K.pow_mem hφK j)]
  have hNx : (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker)
      ⟨x, fixedModule_anti le_frobeniusClosure hx⟩ : A) =
      w ^ g * ∏ i : Fin g, s1.elt ^ (i : ℕ) •
        (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker) ⟨Tb, hTbJ⟩ : A) := by
    have hmemi : ∀ i : Fin g, s1.elt ^ (i : ℕ) • (x'' : A) ∈
        fixedModule A ((L : Subgroup G) ⊓ D.deg.ker) :=
      fun i => smul_mem_fixedModule_inf_ker hLK (hψK i) (hP'J _ x''.2)
    have e1 : (⟨x, fixedModule_anti le_frobeniusClosure hx⟩ :
        fixedModule A ((L : Subgroup G) ⊓ D.deg.ker)) =
        ⟨∏ i : Fin g, s1.elt ^ (i : ℕ) • (x'' : A), Subgroup.prod_mem _ fun i _ => hmemi i⟩ :=
      Subtype.ext hxN
    rw [e1, coe_norm_inf_ker_prod Finset.univ _ hmemi]
    have e2 : ∀ i : Fin g, (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker)
        ⟨s1.elt ^ (i : ℕ) • (x'' : A), hmemi i⟩ : A) =
        w * s1.elt ^ (i : ℕ) •
          (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker) ⟨Tb, hTbJ⟩ : A) := by
      intro i
      have h3 := smul_norm_inf_ker hLK (hψK i) ⟨(x'' : A), hP'J _ x''.2⟩
      rw [← h3]
      have e4 : (⟨(x'' : A), hP'J _ x''.2⟩ : fixedModule A ((L : Subgroup G) ⊓ D.deg.ker)) =
          ⟨x' * Tb, Subgroup.mul_mem _ hx'J hTbJ⟩ := Subtype.ext hx''eq
      rw [e4, coe_norm_inf_ker_mul hx'J hTbJ, smul_mul', ← hwdef, hwK _ (hψK i)]
    rw [Finset.prod_congr rfl fun i _ => e2 i, Finset.prod_mul_distrib, Finset.prod_const,
      Finset.card_univ, Fintype.card_fin]
  rw [map_mul, Subgroup.coe_mul, coe_norm_of_mem hLK hwK,
    norm_norm (fun y hy => hP'L hy) (fun y hy => hLK hy) b, hNb, hNx, hNTb]
  congr 1
  simp_rw [Finset.smul_prod', smul_smul, h1, ← pow_mul, ← pow_add]
  rw [Fin.prod_univ_eq_prod_range (fun m => φ ^ m • _) s2.deg, hdeg,
    ← prod_range_prod_range_eq _ g s1.deg]
  simp only [Finset.prod_range]

end Key

end ClassFieldData

end GroundTheory.LocalField.Abstract
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.LocalFields.AbstractLocalReciprocity.KeyLemma =====

-- ===== clump member: GroundTheory.LocalFields.AbstractLocalReciprocity.Multiplicative =====
-- clump-header: {"m": "GroundTheory.LocalFields.AbstractLocalReciprocity.Multiplicative", "h": "module\n\npublic import GroundTheory.LocalFields.AbstractLocalReciprocity.Reciprocity\npublic import GroundTheory.LocalFields.AbstractLocalReciprocity.KeyLemma\nimport GroundTheory.LocalFields.AbstractLocalReciprocity.Unramified\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Algebra.ClopenNhdofOne\nimport Mathlib.Topology.Compactness.Paracompact\nimport Mathlib.Topology.Separation.Connected\nimport Mathlib.Topology.Sheaves.Init\npublic import GroundTheory.LocalFields.AbstractLocalReciprocity.CoeNormEqProdSmulNorm\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.LocalField.Abstract

open ProfiniteInteger

namespace ClassFieldData

variable {G : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [CompactSpace G]
  [TotallyDisconnectedSpace G] {A : Type*} [CommGroup A] [MulDistribMulAction G A]
  {D : ClassFieldData G A} {K L : OpenSubgroup G}

namespace FrobeniusLift


omit [TotallyDisconnectedSpace G] in
def mul (s t : D.FrobeniusLift K) : D.FrobeniusLift K where
  elt := s.elt * t.elt
  mem := K.mul_mem s.mem t.mem
  deg := s.deg + t.deg
  deg_pos := Nat.add_pos_left s.deg_pos _
  deg_eq := by
    rw [map_mul, s.deg_eq, t.deg_eq, ← ofAdd_add]
    push_cast
    ring_nf


omit [TotallyDisconnectedSpace G] in
def ofDegOne {φ : G} (hφK : φ ∈ (K : Subgroup G))
    (hdφ : D.deg φ = Multiplicative.ofAdd (inertiaDegree D.deg K : ℤ̂)) : D.FrobeniusLift K where
  elt := φ
  mem := hφK
  deg := 1
  deg_pos := Nat.one_pos
  deg_eq := by rw [hdφ, one_mul]

variable (hLK : L ≤ K) [((L : Subgroup G).subgroupOf K).Normal]

theorem field_congr {s t : D.FrobeniusLift K} (h : s.elt = t.elt) :
    s.field L hLK = t.field L hLK := by
  apply OpenSubgroup.toSubgroup_injective
  show frobeniusClosure D.deg L s.elt = frobeniusClosure D.deg L t.elt
  rw [h]

theorem relInertiaDegree_field (s : D.FrobeniusLift K) :
    relInertiaDegree D.deg K (s.field L hLK) = s.deg := by
  have h := inertiaDegree_eq_mul D.surjective_deg (K := (K : Subgroup G))
    (L := ((s.field L hLK : OpenSubgroup G) : Subgroup G)) (fun x hx => s.field_le hLK hx)
  rw [s.inertiaDegree_field hLK] at h
  exact (Nat.eq_of_mul_eq_mul_right (Nat.pos_of_ne_zero (D.inertiaDegree_ne_zero K)) h).symm

end FrobeniusLift

variable (hLK : L ≤ K) [((L : Subgroup G).subgroupOf K).Normal]

theorem recFrob_congr {s t : D.FrobeniusLift K} (h : s.elt = t.elt) :
    D.recFrob L hLK s = D.recFrob L hLK t := by
  unfold recFrob
  rw [FrobeniusLift.field_congr hLK h]

theorem valuation_norm_prime (s : D.FrobeniusLift K)
    {π : fixedModule A ((s.field L hLK : OpenSubgroup G) : Subgroup G)}
    (hπ : D.valuation (s.field L hLK) π = Multiplicative.ofAdd 1) :
    D.valuation K (norm A (K : Subgroup G) ((s.field L hLK : OpenSubgroup G) : Subgroup G) π) =
      Multiplicative.ofAdd (s.deg : ℤ̂) := by
  rw [D.valuation_norm (s.field_le hLK), hπ, FrobeniusLift.relInertiaDegree_field, ← ofAdd_nsmul,
    nsmul_one]

section DegOne


omit [TopologicalSpace G] [IsTopologicalGroup G] [CompactSpace G] [TotallyDisconnectedSpace G]
  [((L : Subgroup G).subgroupOf K).Normal] in
theorem smul_prod_pow_div (φ : G) (y : A) (n : ℕ) :
    φ • (∏ ν : Fin n, φ ^ (ν : ℕ) • y) / ∏ ν : Fin n, φ ^ (ν : ℕ) • y = φ ^ n • y / y := by
  rw [Finset.smul_prod']
  simp only [Fin.prod_univ_eq_prod_range (fun j => φ • φ ^ j • y),
    Fin.prod_univ_eq_prod_range (fun j => φ ^ j • y)]
  have hs := Finset.prod_range_succ (fun j => φ ^ j • y) n
  have hs' := Finset.prod_range_succ' (fun j => φ ^ j • y) n
  simp only [pow_zero, one_smul] at hs'
  have : ∏ j ∈ Finset.range n, φ • φ ^ j • y = ∏ j ∈ Finset.range n, φ ^ (j + 1) • y := by
    refine Finset.prod_congr rfl fun j _ => ?_
    rw [smul_smul, ← pow_succ']
  rw [this, div_eq_div_iff_mul_eq_mul, ← hs', hs, mul_comm]


omit [TotallyDisconnectedSpace G] in
theorem valuation_eq_of_inf_ker_eq {S P : OpenSubgroup G}
    (h : (S : Subgroup G) ⊓ D.deg.ker = (P : Subgroup G) ⊓ D.deg.ker) {y : A}
    (hyS : y ∈ fixedModule A (S : Subgroup G)) (hyP : y ∈ fixedModule A (P : Subgroup G)) :
    D.valuation P ⟨y, hyP⟩ = D.valuation S ⟨y, hyS⟩ := by
  set M : OpenSubgroup G := S ⊓ P
  have hMS : M ≤ S := inf_le_left
  have hMP : M ≤ P := inf_le_right
  have heS : relRamificationIndex D.deg S M = 1 :=
    isUnramified_iff.2 fun x hx => ⟨hx.1, (h.le hx).1⟩
  have heP : relRamificationIndex D.deg P M = 1 :=
    isUnramified_iff.2 fun x hx => ⟨(h.ge hx).1, hx.1⟩
  have h1 := D.valuation_of_mem hMS hyS
  have h2 := D.valuation_of_mem hMP hyP
  rw [heS, pow_one] at h1
  rw [heP, pow_one] at h2
  rw [← h1, ← h2]

theorem recFrob_mul_ofDegOne (hax : ClassFieldAxiom G A) [IsDiscreteModule G A]
    (s : D.FrobeniusLift K) {φ : G} (hφK : φ ∈ (K : Subgroup G))
    (hdφ : D.deg φ = Multiplicative.ofAdd (inertiaDegree D.deg K : ℤ̂)) :
    D.recFrob L hLK (s.mul (FrobeniusLift.ofDegOne hφK hdφ)) =
      D.recFrob L hLK s * D.recFrob L hLK (FrobeniusLift.ofDegOne hφK hdφ) := by
  classical
  set t := FrobeniusLift.ofDegOne (D := D) hφK hdφ with htdef
  set u := s.mul t with hudef
  set n := s.deg with hndef
  obtain ⟨π1, hπ1⟩ := D.exists_prime (s.field L hLK)
  obtain ⟨π2, hπ2⟩ := D.exists_prime (t.field L hLK)
  obtain ⟨π3, hπ3⟩ := D.exists_prime (u.field L hLK)
  rw [← D.mk_norm_eq_recFrob hLK hax s hπ1, ← D.mk_norm_eq_recFrob hLK hax t hπ2,
    ← D.mk_norm_eq_recFrob hLK hax u hπ3, ← QuotientGroup.mk_mul, QuotientGroup.eq]

  have hJ : ∀ (v : D.FrobeniusLift K) (y : A),
      y ∈ fixedModule A ((v.field L hLK : OpenSubgroup G) : Subgroup G) →
        y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker) :=
    fun v y hy => fixedModule_anti le_frobeniusClosure hy
  have hφνJ : ∀ (ν : ℕ) (y : A), y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker) →
      φ ^ ν • y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker) :=
    fun ν y hy => smul_mem_fixedModule_inf_ker hLK (K.pow_mem hφK ν) hy
  have hσπ1 : s.elt • (π1 : A) = π1 := π1.2 _ (s.elt_mem_field hLK)
  have hφπ2 : φ • (π2 : A) = π2 := π2.2 _ (t.elt_mem_field hLK)
  have hσφπ3 : (s.elt * φ) • (π3 : A) = π3 := π3.2 _ (u.elt_mem_field hLK)
  set T1 : A := ∏ ν : Fin n, φ ^ (ν : ℕ) • (π1 : A) with hT1
  set T3 : A := ∏ ν : Fin (n + 1), φ ^ (ν : ℕ) • (π3 : A) with hT3
  set x : A := T1 * φ ^ n • (π2 : A) / T3 with hxdef
  set a : A := (π1 : A) / π3 with hadef
  have hT1J : T1 ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker) :=
    Subgroup.prod_mem _ fun ν _ => hφνJ ν _ (hJ s _ π1.2)
  have hT3J : T3 ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker) :=
    Subgroup.prod_mem _ fun ν _ => hφνJ ν _ (hJ u _ π3.2)
  have hπ2J : φ ^ n • (π2 : A) ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker) :=
    hφνJ n _ (hJ t _ π2.2)
  have hxJ : x ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker) :=
    Subgroup.div_mem _ (Subgroup.mul_mem _ hT1J hπ2J) hT3J

  have hNprod : ∀ (m : ℕ) (y : A) (hy : y ∈ fixedModule A ((L : Subgroup G) ⊓ D.deg.ker)),
      (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker)
        ⟨∏ ν : Fin m, φ ^ (ν : ℕ) • y, Subgroup.prod_mem _ fun ν _ => hφνJ ν y hy⟩ : A) =
        ∏ ν : Fin m, φ ^ (ν : ℕ) •
          (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker) ⟨y, hy⟩ : A) := by
    intro m y hy
    rw [coe_norm_inf_ker_prod Finset.univ _ (fun ν : Fin m => hφνJ (ν : ℕ) y hy)]
    refine Finset.prod_congr rfl fun ν _ => ?_
    rw [smul_norm_inf_ker hLK (K.pow_mem hφK ν)]
  have hN1 : (norm A (K : Subgroup G) ((s.field L hLK : OpenSubgroup G) : Subgroup G) π1 : A) =
      (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker) ⟨T1, hT1J⟩ : A) := by
    exact (coe_norm_field_eq hLK s hφK hdφ π1).trans (hNprod _ _ _).symm
  have hN3 : (norm A (K : Subgroup G) ((u.field L hLK : OpenSubgroup G) : Subgroup G) π3 : A) =
      (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker) ⟨T3, hT3J⟩ : A) := by
    exact (coe_norm_field_eq hLK u hφK hdφ π3).trans (hNprod _ _ _).symm
  have hN2K := (norm A (K : Subgroup G) ((t.field L hLK : OpenSubgroup G) : Subgroup G) π2).2
  have hN2 : (norm A (K : Subgroup G) ((t.field L hLK : OpenSubgroup G) : Subgroup G) π2 : A) =
      (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker)
        ⟨φ ^ n • (π2 : A), hπ2J⟩ : A) := by
    have h0 : (norm A (K : Subgroup G) ((t.field L hLK : OpenSubgroup G) : Subgroup G) π2 : A) =
        (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker)
          ⟨(π2 : A), hJ t _ π2.2⟩ : A) := by
      have h0' : (norm A (K : Subgroup G) ((t.field L hLK : OpenSubgroup G) : Subgroup G) π2 : A) =
          ∏ ν : Fin 1, φ ^ (ν : ℕ) • (norm A ((K : Subgroup G) ⊓ D.deg.ker)
            ((L : Subgroup G) ⊓ D.deg.ker) ⟨(π2 : A), hJ t _ π2.2⟩ : A) :=
        coe_norm_field_eq hLK t hφK hdφ π2
      rw [Fin.prod_univ_one] at h0'
      simpa using h0'
    calc (norm A (K : Subgroup G) ((t.field L hLK : OpenSubgroup G) : Subgroup G) π2 : A)
        = φ ^ n • (norm A (K : Subgroup G) ((t.field L hLK : OpenSubgroup G) : Subgroup G) π2 : A) :=
          (hN2K _ (K.pow_mem hφK n)).symm
      _ = φ ^ n • (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker)
            ⟨(π2 : A), hJ t _ π2.2⟩ : A) := by rw [h0]
      _ = _ := smul_norm_inf_ker hLK (K.pow_mem hφK n) _
  have hNx : (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker) ⟨x, hxJ⟩ : A) =
      (norm A (K : Subgroup G) ((s.field L hLK : OpenSubgroup G) : Subgroup G) π1 : A) *
        norm A (K : Subgroup G) ((t.field L hLK : OpenSubgroup G) : Subgroup G) π2 /
          norm A (K : Subgroup G) ((u.field L hLK : OpenSubgroup G) : Subgroup G) π3 := by
    rw [hN1, hN2, hN3]
    have e : (⟨x, hxJ⟩ : fixedModule A ((L : Subgroup G) ⊓ D.deg.ker)) =
        ⟨T1, hT1J⟩ * ⟨φ ^ n • (π2 : A), hπ2J⟩ / ⟨T3, hT3J⟩ := rfl
    rw [e, map_div, map_mul]
    rfl

  have hst : ∀ y : A, IsOpen (MulAction.stabilizer G y : Set G) :=
    fun y => IsDiscreteModule.isOpen_stabilizer y
  have hopen : IsOpen ((L : Set G) ∩ (MulAction.stabilizer G (π1 : A) : Set G) ∩
      (MulAction.stabilizer G (π2 : A) : Set G) ∩ (MulAction.stabilizer G (π3 : A) : Set G)) :=
    ((L.isOpen.inter (hst _)).inter (hst _)).inter (hst _)
  have hone : (1 : G) ∈ (L : Set G) ∩ (MulAction.stabilizer G (π1 : A) : Set G) ∩
      (MulAction.stabilizer G (π2 : A) : Set G) ∩ (MulAction.stabilizer G (π3 : A) : Set G) :=
    ⟨⟨⟨L.one_mem, Subgroup.one_mem _⟩, Subgroup.one_mem _⟩, Subgroup.one_mem _⟩
  obtain ⟨U, hU⟩ := ProfiniteGrp.exist_openNormalSubgroup_sub_open_nhds_of_one hopen hone
  have : Finite (G ⧸ U.toSubgroup) := Subgroup.quotient_finite_of_isOpen _ U.isOpen'
  set D0 := orderOf (φ : G ⧸ U.toSubgroup) with hD0def
  have hD0 : 0 < D0 := orderOf_pos _
  have hφD0U : φ ^ D0 ∈ U.toSubgroup := by
    rw [← QuotientGroup.eq_one_iff, QuotientGroup.mk_pow, hD0def, pow_orderOf_eq_one]
  obtain ⟨⟨⟨hψL, hψ1⟩, hψ2⟩, hψ3⟩ := hU hφD0U
  have hψπ1 : φ ^ D0 • (π1 : A) = π1 := MulAction.mem_stabilizer_iff.1 hψ1
  have hψπ2 : φ ^ D0 • (π2 : A) = π2 := MulAction.mem_stabilizer_iff.1 hψ2
  have hψπ3 : φ ^ D0 • (π3 : A) = π3 := MulAction.mem_stabilizer_iff.1 hψ3
  set g := (L : Subgroup G).relIndex K with hgdef
  have hg : 0 < g := Nat.pos_of_ne_zero (Subgroup.FiniteIndex.index_ne_zero
    (H := (L : Subgroup G).subgroupOf K))
  set s1 := powLift hφK hdφ D0 hD0 with hs1
  set s2 := powLift hφK hdφ (g * D0) (Nat.mul_pos hg hD0) with hs2
  have hfix : ∀ (ν : ℕ) (y : A), φ ^ D0 • y = y → φ ^ D0 • φ ^ ν • y = φ ^ ν • y := by
    intro ν y hy
    rw [smul_smul, ← pow_add, add_comm, pow_add, mul_smul, hy]
  have hT1ψ : φ ^ D0 • T1 = T1 := by
    rw [hT1, Finset.smul_prod']
    exact Finset.prod_congr rfl fun ν _ => hfix ν _ hψπ1
  have hT3ψ : φ ^ D0 • T3 = T3 := by
    rw [hT3, Finset.smul_prod']
    exact Finset.prod_congr rfl fun ν _ => hfix ν _ hψπ3
  have hxP : x ∈ fixedModule A ((s1.field L hLK : OpenSubgroup G) : Subgroup G) := by
    rw [FrobeniusLift.coe_field, mem_fixedModule_frobeniusClosure]
    refine ⟨hxJ, ?_⟩
    show φ ^ D0 • x = x
    rw [hxdef, smul_div', smul_mul', hT1ψ, hfix n _ hψπ2, hT3ψ]
  have hπ1P : (π1 : A) ∈ fixedModule A ((s1.field L hLK : OpenSubgroup G) : Subgroup G) := by
    rw [FrobeniusLift.coe_field, mem_fixedModule_frobeniusClosure]
    exact ⟨hJ s _ π1.2, hψπ1⟩
  have hπ3P : (π3 : A) ∈ fixedModule A ((s1.field L hLK : OpenSubgroup G) : Subgroup G) := by
    rw [FrobeniusLift.coe_field, mem_fixedModule_frobeniusClosure]
    exact ⟨hJ u _ π3.2, hψπ3⟩
  have haP : a ∈ fixedModule A ((s1.field L hLK : OpenSubgroup G) : Subgroup G) :=
    Subgroup.div_mem _ hπ1P hπ3P

  have hπP : ∀ (v : D.FrobeniusLift K) (y : A)
      (hy : y ∈ fixedModule A ((v.field L hLK : OpenSubgroup G) : Subgroup G))
      (hyP : y ∈ fixedModule A ((s1.field L hLK : OpenSubgroup G) : Subgroup G)),
      D.valuation (s1.field L hLK) ⟨y, hyP⟩ = D.valuation (v.field L hLK) ⟨y, hy⟩ :=
    fun v y hy hyP => valuation_eq_of_inf_ker_eq
      ((v.field_inf_ker hLK).trans (s1.field_inf_ker hLK).symm) hy hyP
  have hau : D.valuation (s1.field L hLK) ⟨a, haP⟩ = 1 := by
    have e : (⟨a, haP⟩ : fixedModule A ((s1.field L hLK : OpenSubgroup G) : Subgroup G)) =
        ⟨(π1 : A), hπ1P⟩ / ⟨(π3 : A), hπ3P⟩ := rfl
    rw [e, map_div, hπP s _ π1.2 hπ1P, hπP u _ π3.2 hπ3P]
    simp [hπ1, hπ3]
  set N : fixedModule A (K : Subgroup G) :=
    norm A (K : Subgroup G) ((s.field L hLK : OpenSubgroup G) : Subgroup G) π1 *
      norm A (K : Subgroup G) ((t.field L hLK : OpenSubgroup G) : Subgroup G) π2 /
        norm A (K : Subgroup G) ((u.field L hLK : OpenSubgroup G) : Subgroup G) π3 with hNdef
  have hNcoe : (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker) ⟨x, hxJ⟩ : A) =
      (N : A) := by
    rw [hNx]
    rfl
  have hvN : D.valuation K N = 1 := by
    rw [hNdef, map_div, map_mul, valuation_norm_prime hLK s hπ1, valuation_norm_prime hLK t hπ2,
      valuation_norm_prime hLK u hπ3, ← ofAdd_add, ← ofAdd_sub]
    show Multiplicative.ofAdd ((s.deg : ℤ̂) + ((1 : ℕ) : ℤ̂) - ((s.deg + 1 : ℕ) : ℤ̂)) = 1
    push_cast
    simp
  have hxu : D.valuation (s1.field L hLK) ⟨x, hxP⟩ = 1 := by
    have hNP : norm A (K : Subgroup G) ((s1.field L hLK : OpenSubgroup G) : Subgroup G) ⟨x, hxP⟩ =
        N ^ D0 := by
      apply Subtype.ext
      rw [coe_norm_field_eq hLK s1 hφK hdφ ⟨x, hxP⟩, SubmonoidClass.coe_pow]
      have h' : ∀ m : Fin s1.deg, φ ^ (m : ℕ) •
          (norm A ((K : Subgroup G) ⊓ D.deg.ker) ((L : Subgroup G) ⊓ D.deg.ker)
            ⟨x, fixedModule_anti le_frobeniusClosure hxP⟩ : A) = (N : A) := by
        intro m
        rw [show (⟨x, fixedModule_anti le_frobeniusClosure hxP⟩ :
            fixedModule A ((L : Subgroup G) ⊓ D.deg.ker)) = ⟨x, hxJ⟩ from rfl, hNcoe]
        exact N.2 _ (K.pow_mem hφK _)
      rw [Finset.prod_congr rfl fun m _ => h' m, Finset.prod_const, Finset.card_univ,
        Fintype.card_fin]
      rfl
    have hv := D.valuation_norm (s1.field_le hLK) ⟨x, hxP⟩
    rw [hNP, map_pow, hvN, one_pow, FrobeniusLift.relInertiaDegree_field] at hv
    exact (ProfiniteInteger.pow_left_inj (n := s1.deg) hD0.ne').1 (by rw [one_pow]; exact hv.symm)

  set δ : G := φ ^ n * s.elt⁻¹ with hδdef
  have hδ : δ ∈ (K : Subgroup G) ⊓ D.deg.ker := by
    refine ⟨K.mul_mem (K.pow_mem hφK n) (K.inv_mem s.mem), ?_⟩
    show D.deg (φ ^ n * s.elt⁻¹) = 1
    rw [map_mul, map_inv, map_pow, hdφ, s.deg_eq, ← ofAdd_nsmul, ← ofAdd_neg, ← ofAdd_add]
    rw [hndef]
    push_cast
    rw [nsmul_eq_mul, add_neg_cancel, ofAdd_zero]
  have hδπ1 : δ • (π1 : A) = φ ^ n • (π1 : A) := by
    rw [hδdef, mul_smul, inv_smul_eq_iff.2 hσπ1.symm]
  have hφπ3 : φ • (π3 : A) = s.elt⁻¹ • (π3 : A) := by
    rw [eq_inv_smul_iff, ← mul_smul]
    exact hσφπ3
  have hδπ3 : δ • (π3 : A) = φ ^ (n + 1) • (π3 : A) := by
    rw [hδdef, mul_smul, ← hφπ3, ← mul_smul, ← pow_succ]
  have e2 : φ • φ ^ n • (π2 : A) = φ ^ n • (π2 : A) := by
    rw [smul_smul, ← pow_succ', pow_succ, mul_smul, hφπ2]
  have L1 : φ • x / x = (φ • T1 / T1) / (φ • T3 / T3) := by
    rw [hxdef, smul_div', smul_mul', e2, div_div_div_comm, mul_div_mul_comm, div_self', mul_one]
  have R1 : δ • a / a = (φ ^ n • (π1 : A) / π1) / (φ ^ (n + 1) • (π3 : A) / π3) := by
    rw [hadef, smul_div', hδπ1, hδπ3, div_div_div_comm]
  have hrel : φ • x / x = δ • a / a := by
    rw [L1, R1, hT1, hT3, smul_prod_pow_div, smul_prod_pow_div]

  obtain ⟨b, hb⟩ := exists_norm_eq_norm_inf_ker hLK hax hφK hdφ s1 s2 rfl hψL
    (by show φ ^ (g * D0) = (φ ^ D0) ^ g; rw [mul_comm, pow_mul]) rfl hxP haP hxu hau hδ hrel
  refine ⟨b, Subtype.ext ?_⟩
  rw [hb, show (⟨x, fixedModule_anti le_frobeniusClosure hxP⟩ :
      fixedModule A ((L : Subgroup G) ⊓ D.deg.ker)) = ⟨x, hxJ⟩ from rfl, hNcoe, hNdef]
  simp only [Subgroup.coe_mul, Subgroup.coe_inv, Subgroup.coe_div]
  rw [div_eq_inv_mul]

end DegOne

section General


omit [TotallyDisconnectedSpace G] in
theorem exists_deg_eq (K : OpenSubgroup G) :
    ∃ φ ∈ (K : Subgroup G), D.deg φ = Multiplicative.ofAdd (inertiaDegree D.deg K : ℤ̂) := by
  obtain ⟨φ, hφ⟩ := D.relDeg_surjective K (Multiplicative.ofAdd 1)
  refine ⟨φ, φ.2, ?_⟩
  rw [← D.relDeg_pow, hφ, ← ofAdd_nsmul, nsmul_one]

theorem recFrob_mul (hax : ClassFieldAxiom G A) [IsDiscreteModule G A] (s t : D.FrobeniusLift K) :
    D.recFrob L hLK (s.mul t) = D.recFrob L hLK s * D.recFrob L hLK t := by
  obtain ⟨φ, hφK, hdφ⟩ := exists_deg_eq (D := D) K
  suffices h : ∀ (m : ℕ) (s t : D.FrobeniusLift K), t.deg = m + 1 →
      D.recFrob L hLK (s.mul t) = D.recFrob L hLK s * D.recFrob L hLK t by
    obtain ⟨m, hm⟩ : ∃ m, t.deg = m + 1 := ⟨t.deg - 1, by have := t.deg_pos; omega⟩
    exact h m s t hm
  intro m
  induction m with
  | zero =>
    intro s t ht
    have hdt : D.deg t.elt = Multiplicative.ofAdd (inertiaDegree D.deg K : ℤ̂) := by
      rw [t.deg_eq, ht, zero_add, one_mul]
    rw [recFrob_congr hLK (s := s.mul t) (t := s.mul (FrobeniusLift.ofDegOne t.mem hdt)) rfl,
      recFrob_congr hLK (s := t) (t := FrobeniusLift.ofDegOne t.mem hdt) rfl]
    exact recFrob_mul_ofDegOne hLK hax s t.mem hdt
  | succ k ih =>
    intro s t ht
    set φ1 := FrobeniusLift.ofDegOne (D := D) hφK hdφ with hφ1
    let t' : D.FrobeniusLift K :=
      { elt := t.elt * φ⁻¹
        mem := K.mul_mem t.mem (K.inv_mem hφK)
        deg := k + 1
        deg_pos := Nat.succ_pos k
        deg_eq := by
          rw [map_mul, map_inv, t.deg_eq, hdφ, ht, ← ofAdd_neg, ← ofAdd_add]
          push_cast
          ring_nf }
    have h1 : D.recFrob L hLK (s.mul t) = D.recFrob L hLK ((s.mul t').mul φ1) :=
      recFrob_congr hLK (by simp [FrobeniusLift.mul, t', φ1, FrobeniusLift.ofDegOne, mul_assoc])
    have h2 : D.recFrob L hLK t = D.recFrob L hLK (t'.mul φ1) :=
      recFrob_congr hLK (by simp [FrobeniusLift.mul, t', φ1, FrobeniusLift.ofDegOne])
    rw [h1, h2, recFrob_mul_ofDegOne hLK hax _ hφK hdφ, recFrob_mul_ofDegOne hLK hax _ hφK hdφ,
      ih s t' rfl, mul_assoc]

end General

end ClassFieldData

end GroundTheory.LocalField.Abstract
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.LocalFields.AbstractLocalReciprocity.Multiplicative =====
