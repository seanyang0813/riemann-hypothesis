module

public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.IsMultiHom
public import Formalism.GradedWeylDivisibility.FinalC
public import Formalism.LocalToGlobal.GroupLattices.FockModels.FlatModels.LetterB
public import Formalism.GradedWeylDivisibility.FinalD
public import Formalism.GradedWeylDivisibility.FockSpaceTableaux.TensorBasis
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.DvdOfCompl
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RestrictedWeightFirstTwoEq
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.TestSideCounting
public import Formalism.PeriodIntegrals.AdmissibleModel.WeylDim
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OneSidedLemma4
public import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.EdgeLatticeMulOfWeightSum
public import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.SourcePrimitiveIntegrality
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.SubstSPtrue
public import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.ManyEdges
public import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.GoodRankOfPrim
public import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.ScaleNegMono
public import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.NumericProductInequality
public import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.InitialLevelMonoWeights
public import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.SymbolRealisableIffGeneralRank
public import Formalism.SharpRestriction.GrowthBounds.Joints
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments
public import Formalism.SharpRestriction.GrowthBounds.PathWeight
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.GroupLattices.FockModels.MkP
import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.RankMulConductorDivLeOne
import Formalism.LocalToGlobal.GroupLattices.FockModels.ElementaryDivisorBasis
import Formalism.LocalToGlobal.GroupLattices.FockModels.FlatModels.EdgeLatOfG
import Formalism.LocalToGlobal.GroupLattices.FockModels.FlatModels.LetterWtAnti
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.SharpRestriction.GrowthBounds.ProjectionOfIsotypicDecomposition
import Formalism.SharpRestriction.GrowthBounds.RootWeights.WeightConditionFromIntegralForm

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.DgFalseDiag, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.ThAllMonomial, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.TheoremIIClosedOfTestBound, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.TransStep, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.PrimStep, Formalism.SharpRestriction.GrowthBounds.ScaleEdges.TheoremIIOfEdgeBoundConstants, Formalism.SharpRestriction.GrowthBounds.ScaleEdges.ColSpanMap, Formalism.SharpRestriction.GrowthBounds.ScaleEdges, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.Closed

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.DgFalseDiag =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.DgFalseDiag", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.IsMultiHom\npublic import Formalism.GradedWeylDivisibility.FinalC\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.FlatModels.LetterB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.MkP\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.TestSideCounting

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility MvPolynomial
open Formalism.L2.G.Model (Nv Nv_true_eq Nv_false_eq)
open scoped MonomialOrder

def Mv (R : Type) [CommRing R] (m : ℕ) (vec : Bool) (c : Fin (m + 1)) :
    MvPolynomial (Fin (m + 1) × Fin (m + 1)) R :=
  if vec = true then initMinor R (fun _ : Fin 1 => c) (Nat.succ_le_succ (Nat.zero_le m))
  else initMinor R c.succAbove (Nat.le_succ m)

def dg (m : ℕ) (vec : Bool) (c : Fin (m + 1)) : Fin (m + 1) × Fin (m + 1) →₀ ℕ :=
  if vec = true then Finsupp.single (c, 0) 1
  else ∑ p : Fin m, Finsupp.single (c.succAbove p, Fin.castLE (Nat.le_succ m) p) 1

theorem Mv_deg (F : Type) [Field F] (m : ℕ) (vec : Bool) (c : Fin (m + 1)) :
    (colLex (m + 1) (m + 1)).degree (Mv F m vec c) = dg m vec c ∧
      (colLex (m + 1) (m + 1)).leadingCoeff (Mv F m vec c) = 1 := by
  unfold Mv dg
  cases vec
  · simp only [Bool.false_eq_true, if_false]
    exact colLexInitMinor F (m + 1) (m + 1) m c.succAbove (Nat.le_succ m) (Fin.strictMono_succAbove c)
  · simp only [if_true]
    have hsm : StrictMono (fun _ : Fin 1 => c) := by
      intro a b hab
      exact absurd hab (by rw [Subsingleton.elim a b]; exact lt_irrefl b)
    obtain ⟨h1, h2⟩ := colLexInitMinor F (m + 1) (m + 1) 1 (fun _ : Fin 1 => c)
      (Nat.succ_le_succ (Nat.zero_le m)) hsm
    refine ⟨?_, h2⟩
    rw [h1, Fin.sum_univ_one]
    congr 2

def sg (F : Type) [Field F] (m : ℕ) (vec : Bool) (c : Fin (m + 1)) : Fˣ :=
  if vec = true then 1 else (-1) ^ ((c : ℕ) + m)

theorem Nv_eq (F : Type) [Field F] (m : ℕ) (vec : Bool) (c : Fin (m + 1)) :
    Nv F m vec c = sg F m vec c • Mv F m vec c := by
  cases vec
  · rw [Nv_false_eq]
    simp only [sg, Mv, Bool.false_eq_true, if_false, Units.smul_def, Units.val_pow_eq_pow_val,
      Units.val_neg, Units.val_one]
    rw [smul_eq_C_mul, map_pow, map_neg, map_one]
  · rw [Nv_true_eq]
    simp only [sg, Mv, if_true, one_smul]

theorem fam_deg (F : Type) [Field F] (m : ℕ) (vec : Bool) (α : Fin (m + 1) →₀ ℕ)
    (g : MvPolynomial (Fin (m + 1) × Fin (m + 1)) F) (e : Fin (m + 1) × Fin (m + 1) →₀ ℕ)
    (hg : (colLex (m + 1) (m + 1)).degree g = e ∧ (colLex (m + 1) (m + 1)).leadingCoeff g = 1) :
    (colLex (m + 1) (m + 1)).degree ((∏ c, Mv F m vec c ^ α c) * g) = (∑ c, α c • dg m vec c) + e ∧
      (colLex (m + 1) (m + 1)).leadingCoeff ((∏ c, Mv F m vec c ^ α c) * g) = 1 := by
  have hP1 : ∀ c, (colLex (m + 1) (m + 1)).degree (Mv F m vec c ^ α c) = α c • dg m vec c := by
    intro c
    rw [MonomialOrder.degree_pow, (Mv_deg F m vec c).1]
  have hP2 : ∀ c, (colLex (m + 1) (m + 1)).leadingCoeff (Mv F m vec c ^ α c) = 1 := by
    intro c
    rw [MonomialOrder.leadingCoeff_pow, (Mv_deg F m vec c).2, one_pow]
  have hdeg : (colLex (m + 1) (m + 1)).degree (∏ c, Mv F m vec c ^ α c) = ∑ c, α c • dg m vec c := by
    have h := (colLex (m + 1) (m + 1)).degree_prod_of_regular (P := fun c => Mv F m vec c ^ α c)
      (s := Finset.univ) (fun c _ => by simp only [hP2]; exact isRegular_one)
    simp only [hP1] at h
    exact h
  have hlc : (colLex (m + 1) (m + 1)).leadingCoeff (∏ c, Mv F m vec c ^ α c) = 1 := by
    have h := (colLex (m + 1) (m + 1)).coeff_prod_sum_degree (fun c => Mv F m vec c ^ α c) Finset.univ
    simp only [hP1, hP2, Finset.prod_const_one] at h
    rw [MonomialOrder.leadingCoeff, hdeg]
    exact h
  have hne1 : (∏ c, Mv F m vec c ^ α c) ≠ 0 := by
    intro h0
    rw [h0, MonomialOrder.leadingCoeff_zero] at hlc
    exact zero_ne_one hlc
  have hne2 : g ≠ 0 := by
    intro h0
    have h2 := hg.2
    rw [h0, MonomialOrder.leadingCoeff_zero] at h2
    exact zero_ne_one h2
  refine ⟨?_, ?_⟩
  · rw [MonomialOrder.degree_mul hne1 hne2, hdeg, hg.1]
  · rw [MonomialOrder.leadingCoeff_mul, hlc, hg.2, one_mul]

theorem dg_false_diag (m : ℕ) (c t : Fin (m + 1)) (ht : t.val < m) :
    dg m false c (t, t) = if t < c then 1 else 0 := by
  simp only [dg, Bool.false_eq_true, if_false, Finsupp.finsetSum_apply, Finsupp.single_apply]
  rw [Finset.sum_eq_single (⟨t.val, ht⟩ : Fin m)]
  · by_cases htc : t < c
    · rw [if_pos htc, if_pos]
      simp only [Prod.mk.injEq]
      constructor
      · rw [Fin.succAbove_of_castSucc_lt]
        · exact Fin.ext rfl
        · exact htc
      · exact Fin.ext rfl
    · rw [if_neg htc, if_neg]
      simp only [Prod.mk.injEq, not_and]
      intro h _
      rw [Fin.succAbove_of_le_castSucc _ _ (not_lt.mp htc)] at h
      rw [Fin.ext_iff] at h
      simp at h
  · intro p _ hp
    rw [if_neg]
    simp only [Prod.mk.injEq, not_and]
    intro _ h2
    apply hp
    ext
    rw [Fin.ext_iff] at h2
    exact h2
  · intro h
    exact absurd (Finset.mem_univ _) h

theorem tail_step {k : ℕ} (f : Fin k → ℕ) (n : ℕ) (hn : n < k) :
    (∑ c : Fin k with n ≤ c.val, f c) = f ⟨n, hn⟩ + ∑ c : Fin k with n + 1 ≤ c.val, f c := by
  have hset : (Finset.univ.filter fun c : Fin k => n ≤ c.val) =
      insert ⟨n, hn⟩ (Finset.univ.filter fun c : Fin k => n + 1 ≤ c.val) := by
    ext c
    simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_insert, Fin.ext_iff]
    omega
  rw [hset, Finset.sum_insert]
  simp

theorem tail_inj {k : ℕ} (f g : Fin k → ℕ)
    (h : ∀ n, (∑ c : Fin k with n ≤ c.val, f c) = ∑ c : Fin k with n ≤ c.val, g c) : f = g := by
  funext c
  have h1 := h c.val
  have h2 := h (c.val + 1)
  rw [tail_step f c.val c.isLt, tail_step g c.val c.isLt, h2] at h1
  exact Nat.add_right_cancel h1

theorem no_zero_low {k : ℕ} (x : Fin k × Fin k →₀ ℕ) (hI : Interlaced x) (h0 : ∀ (z : Fin k), z.val = 0 → ∀ t, x (z, t) = 0) :
    ∀ (n : ℕ) (t a : Fin k), t.val = n → a.val ≤ n → x (a, t) = 0 := by
  intro n
  induction n with
  | zero =>
    intro t a _ ha
    exact h0 a (Nat.le_zero.mp ha) t
  | succ n ih =>
    intro t a ht ha
    have hn : n < k := by
      have := t.isLt
      omega
    have hI' := hI ⟨n, hn⟩ t (by simp [ht]) a
    have hzero : ∑ b : Fin k with b < a, x (b, ⟨n, hn⟩) = 0 := by
      apply Finset.sum_eq_zero
      intro b hb
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hb
      rw [Fin.lt_def] at hb
      exact ih ⟨n, hn⟩ b rfl (by omega)
    rw [hzero, add_zero] at hI'
    have hle : x (a, t) ≤ ∑ b : Fin k with b ≤ a, x (b, t) :=
      Finset.single_le_sum (f := fun b => x (b, t)) (fun _ _ => Nat.zero_le _) (by simp)
    omega

private theorem sum_mul_dg_diag_eq_sum_filter (m n : ℕ) (β : Fin (m + 1) →₀ ℕ) (t : Fin (m + 1)) (ht : t.val < m)
    (hn : t.val + 1 = n) :
    ∑ c, β c * dg m false c (t, t) = ∑ c : Fin (m + 1) with n ≤ c.val, β c := by
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro c _
  rw [dg_false_diag m c t ht]
  by_cases hc : t < c
  · rw [Fin.lt_def] at hc
    rw [if_pos (Fin.lt_def.mpr hc), if_pos (by omega), mul_one]
  · rw [Fin.lt_def] at hc
    rw [if_neg (fun h => hc (Fin.lt_def.mp h)), if_neg (by omega), mul_zero]

theorem key_inj (m : ℕ) (top vec : Bool) (d : ℕ) (ν : Fin (m + 1) → ℕ) (htop : top = false → d = 0)
    (α α' : Fin (m + 1) →₀ ℕ) (hα : ∑ c, α c = d) (hα' : ∑ c, α' c = d) (x x' : Xs m top vec ν)
    (h : (∑ c, α c • dg m vec c) + x.1 = (∑ c, α' c • dg m vec c) + x'.1) : α = α' := by
  ext c
  cases top
  · have hd := htop rfl
    have h1 : α c = 0 := Finset.sum_eq_zero_iff.mp (hα.trans hd) c (Finset.mem_univ c)
    have h2 : α' c = 0 := Finset.sum_eq_zero_iff.mp (hα'.trans hd) c (Finset.mem_univ c)
    rw [h1, h2]
  · cases vec
    · have hz : ∀ y : Xs m true false ν, ∀ t : Fin (m + 1), y.1 (t, t) = 0 := by
        intro y t
        obtain ⟨⟨hI, _⟩, htop'⟩ := y.2
        have hrow := (htop' rfl).2 rfl
        exact no_zero_low y.1 hI (fun z hz t' => by
          have hz0 : z = 0 := Fin.ext hz
          rw [hz0]
          exact hrow t') t.val t t rfl le_rfl
      have htail : ∀ n, (∑ c : Fin (m + 1) with n ≤ c.val, α c) =
          ∑ c : Fin (m + 1) with n ≤ c.val, α' c := by
        intro n
        rcases Nat.eq_zero_or_pos n with hn | hn
        · subst hn
          have z0 : ∀ β : Fin (m + 1) →₀ ℕ, (∑ c : Fin (m + 1) with 0 ≤ c.val, β c) = ∑ c, β c := by
            intro β
            rw [Finset.filter_true_of_mem (fun c _ => Nat.zero_le c.val)]
          rw [z0 α, z0 α', hα, hα']
        · by_cases hnm : n ≤ m
          · have ht : n - 1 < m + 1 := by omega
            have he := congrArg (fun f => f ((⟨n - 1, ht⟩ : Fin (m + 1)), (⟨n - 1, ht⟩ : Fin (m + 1)))) h
            simp only [Finsupp.add_apply, Finsupp.finsetSum_apply, Finsupp.smul_apply, smul_eq_mul] at he
            rw [hz x, hz x', add_zero, add_zero,
              sum_mul_dg_diag_eq_sum_filter m n α _ (by show n - 1 < m; omega) (by show n - 1 + 1 = n; omega),
              sum_mul_dg_diag_eq_sum_filter m n α' _ (by show n - 1 < m; omega) (by show n - 1 + 1 = n; omega)] at he
            exact he
          · have z1 : ∀ β : Fin (m + 1) →₀ ℕ, (∑ c : Fin (m + 1) with n ≤ c.val, β c) = 0 := by
              intro β
              apply Finset.sum_eq_zero
              intro c hc
              simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hc
              have := c.isLt
              omega
            rw [z1 α, z1 α']
      have hfun := tail_inj (fun c => α c) (fun c => α' c) htail
      exact congrFun hfun c
    · have hcol : ∀ y : Xs m true true ν, ∀ a : Fin (m + 1), y.1 (a, 0) = if a = 0 then ν 0 else 0 := by
        intro y a
        obtain ⟨⟨_, hs⟩, htop'⟩ := y.2
        have h00 : y.1 (0, 0) = ν 0 := (htop' rfl).1 rfl
        have hsum := hs 0
        rw [← Finset.add_sum_erase _ _ (Finset.mem_univ (0 : Fin (m + 1))), h00] at hsum
        have hrest : ∑ b ∈ Finset.univ.erase (0 : Fin (m + 1)), y.1 (b, 0) = 0 := by omega
        split_ifs with ha
        · rw [ha]
          exact h00
        · exact Finset.sum_eq_zero_iff.mp hrest a (Finset.mem_erase.mpr ⟨ha, Finset.mem_univ a⟩)
      have he := congrArg (fun f => f (c, (0 : Fin (m + 1)))) h
      simp only [Finsupp.add_apply, Finsupp.finsetSum_apply, Finsupp.smul_apply, smul_eq_mul] at he
      rw [hcol x, hcol x'] at he
      have hs1 : ∀ β : Fin (m + 1) →₀ ℕ, ∑ c', β c' * dg m true c' (c, 0) = β c := by
        intro β
        rw [Finset.sum_eq_single c]
        · simp [dg]
        · intro b _ hb
          simp [dg, hb]
        · intro hc
          exact absurd (Finset.mem_univ c) hc
      rw [hs1 α, hs1 α'] at he
      split_ifs at he <;> omega

private theorem linearIndependent_of_degree_injective {σ ι F : Type} [Field F] (M : MonomialOrder σ) (v : ι → MvPolynomial σ F)
    (hv : ∀ i, v i ≠ 0) (hinj : Function.Injective fun i => M.degree (v i)) : LinearIndependent F v := by
  classical
  rw [linearIndependent_iff']
  intro s g hg i hi
  by_contra hne
  have hne' : (s.filter fun j => g j ≠ 0).Nonempty := ⟨i, Finset.mem_filter.mpr ⟨hi, hne⟩⟩
  obtain ⟨i0, hi0, hmax⟩ := Finset.exists_max_image (s.filter fun j => g j ≠ 0)
    (fun j => M.toSyn (M.degree (v j))) hne'
  rw [Finset.mem_filter] at hi0
  have hc := congrArg (AddMonoidAlgebra.coeff · (M.degree (v i0))) hg
  rw [MvPolynomial.coeff_sum, MvPolynomial.coeff_zero] at hc
  rw [Finset.sum_eq_single i0] at hc
  · rw [MvPolynomial.coeff_smul, smul_eq_mul] at hc
    have hlc : AddMonoidAlgebra.coeff (v i0) (M.degree (v i0)) ≠ 0 := M.leadingCoeff_ne_zero_iff.mpr (hv i0)
    exact mul_ne_zero hi0.2 hlc hc
  · intro j hj hji0
    rw [MvPolynomial.coeff_smul, smul_eq_mul]
    by_cases hgj : g j = 0
    · rw [hgj, zero_mul]
    · have hle := hmax j (Finset.mem_filter.mpr ⟨hj, hgj⟩)
      have hlt : M.toSyn (M.degree (v j)) < M.toSyn (M.degree (v i0)) := by
        refine lt_of_le_of_ne hle ?_
        intro heq
        exact hji0 (hinj (M.toSyn.injective heq))
      rw [M.coeff_eq_zero_of_lt hlt, mul_zero]
  · intro h
    exact absurd hi0.1 h

private theorem exists_ne_zero_prod_Nv_pow_eq_smul_prod_Mv (F : Type) [Field F] (m : ℕ) (vec : Bool) (α : Fin (m + 1) →₀ ℕ) :
    ∃ u : F, u ≠ 0 ∧ ∏ c, Nv F m vec c ^ α c = u • ∏ c, Mv F m vec c ^ α c := by
  refine ⟨∏ c, ((sg F m vec c : Fˣ) : F) ^ α c, ?_, ?_⟩
  · exact Finset.prod_ne_zero_iff.mpr (fun c _ => pow_ne_zero _ (Units.ne_zero _))
  · rw [smul_eq_C_mul, map_prod, ← Finset.prod_mul_distrib]
    apply Finset.prod_congr rfl
    intro c _
    rw [Nv_eq, Units.smul_def, smul_eq_C_mul, mul_pow, map_pow]

theorem posInd : PosInd := by
  unfold PosInd
  intro F _ m _ top vec d ν htop _ b hb
  have hdeg : ∀ y : {α : Fin (m + 1) →₀ ℕ // ∑ c, α c = d} × Xs m top vec ν,
      (colLex (m + 1) (m + 1)).degree ((∏ c, Nv F m vec c ^ y.1.1 c) * b y.2) =
          (∑ c, y.1.1 c • dg m vec c) + y.2.1 ∧
        (∏ c, Nv F m vec c ^ y.1.1 c) * b y.2 ≠ 0 := by
    intro y
    obtain ⟨u, hu, he⟩ := exists_ne_zero_prod_Nv_pow_eq_smul_prod_Mv F m vec y.1.1
    obtain ⟨h1, h2⟩ := fam_deg F m vec y.1.1 (b y.2) y.2.1 (hb y.2)
    have hne : (∏ c, Mv F m vec c ^ y.1.1 c) * b y.2 ≠ 0 := by
      intro h0
      rw [h0, MonomialOrder.leadingCoeff_zero] at h2
      exact zero_ne_one h2
    rw [he, smul_mul_assoc]
    refine ⟨?_, smul_ne_zero hu hne⟩
    rw [MonomialOrder.degree_smul_of_isRegular (IsRegular.of_ne_zero hu), h1]
  apply linearIndependent_of_degree_injective (colLex (m + 1) (m + 1))
  · intro y
    exact (hdeg y).2
  · intro y y' hyy
    have e : (∑ c, y.1.1 c • dg m vec c) + y.2.1 = (∑ c, y'.1.1 c • dg m vec c) + y'.2.1 := by
      rw [← (hdeg y).1, ← (hdeg y').1]
      exact hyy
    have hα := key_inj m top vec d ν htop y.1.1 y'.1.1 y.1.2 y'.1.2 y.2 y'.2 e
    have h2 : y.2.1 = y'.2.1 := by
      rw [hα] at e
      exact add_left_cancel e
    exact Prod.ext (Subtype.ext hα) (Subtype.ext h2)

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.DgFalseDiag =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.ThAllMonomial =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.ThAllMonomial", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.IsMultiHom\npublic import Formalism.GradedWeylDivisibility.FinalD\npublic import Formalism.GradedWeylDivisibility.FockSpaceTableaux.TensorBasis\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.DgFalseDiag\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.MkP\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.TestSideCounting

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility MvPolynomial
open Formalism.L2.G.Model (Nv)

abbrev Aset (k d : ℕ) := {α : Fin k →₀ ℕ // ∑ c, α c = d}

instance Aset_finite (k d : ℕ) : Finite (Aset k d) := by
  have : ({α : Fin k →₀ ℕ | ∑ c, α c = d}).Finite := by
    refine (Finset.finite_toSet (Finset.univ.finsuppAntidiag d)).subset ?_
    intro α hα
    simp only [Finset.mem_coe, Finset.mem_finsuppAntidiag]
    exact ⟨hα, Finset.subset_univ _⟩
  exact this.to_subtype

theorem XsFinP (m : ℕ) (top vec : Bool) (ν : Fin (m + 1) → ℕ) : (Xs m top vec ν).Finite :=
  (sSIdxFinite (m + 1) (m + 1) ν).subset fun _ he => he.1

instance XsFinP' (m : ℕ) (top vec : Bool) (ν : Fin (m + 1) → ℕ) : Finite (Xs m top vec ν) :=
  (XsFinP m top vec ν).to_subtype

def glue {n' k : ℕ} {d : Fin n' → ℕ} (a : ∀ s, Aset k (d s)) : Fin n' × Fin k →₀ ℕ :=
  Finsupp.equivFunOnFinite.symm fun v => (a v.1).1 v.2

theorem expand {R : Type} [CommRing R] {n' k : ℕ} {d : Fin n' → ℕ} [Fintype (∀ s, Aset k (d s))]
    (Q : MvPolynomial (Fin n' × Fin k) R) (hQ : IsMultiHom d Q) :
    Q = ∑ a : (∀ s, Aset k (d s)), monomial (glue a) (AddMonoidAlgebra.coeff Q (glue a)) := by
  classical
  ext e
  rw [coeff_sum]
  simp only [coeff_monomial]
  by_cases he : e ∈ Q.support
  · let a : ∀ s, Aset k (d s) := fun s =>
      ⟨Finsupp.equivFunOnFinite.symm fun c => e (s, c), by simpa using hQ e he s⟩
    have ha : glue a = e := by
      ext v
      rfl
    rw [Finset.sum_eq_single a]
    · rw [if_pos ha, ha]
    · intro a' _ hne
      rw [if_neg]
      intro h
      apply hne
      funext s
      apply Subtype.ext
      ext c
      have := DFunLike.congr_fun (h.trans ha.symm) (s, c)
      exact this
    · intro h
      exact absurd (Finset.mem_univ _) h
  · have h0 : AddMonoidAlgebra.coeff Q e = 0 := by simpa using he
    rw [h0]
    symm
    refine Finset.sum_eq_zero fun a _ => ?_
    split_ifs with h
    · rw [h, h0]
    · rfl

theorem thAll_monomial (F : Type) [CommRing F] (n' m : ℕ) (vec : Fin n' → Bool) (d : Fin n' → ℕ)
    (a : ∀ s, Aset (m + 1) (d s)) (r : F) :
    thAll F n' m vec (monomial (glue a) r) = r • ∏ s, blockEmb F s (∏ c, Nv F m (vec s) c ^ (a s).1 c) := by
  unfold thAll
  rw [aeval_monomial, Finsupp.prod_fintype _ _ (fun _ => pow_zero _), Fintype.prod_prod_type, Algebra.smul_def]
  congr 1
  refine Finset.prod_congr rfl fun s _ => ?_
  rw [map_prod]
  refine Finset.prod_congr rfl fun c _ => ?_
  rw [map_pow]
  rfl

section Core

variable (F : Type) [Field F] (n' m : ℕ) (vec : Fin n' → Bool) (d : Fin n' → ℕ) {X : Fin n' → Type}
  (b : ∀ s, X s → MvPolynomial (Fin (m + 1) × Fin (m + 1)) F)

def famG (z : (∀ s, Aset (m + 1) (d s)) × (∀ s, X s)) : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) F :=
  ∏ s, blockEmb F s ((∏ c, Nv F m (vec s) c ^ ((z.1 s).1 c)) * b s (z.2 s))

def fam1 (s : Fin n') (y : Aset (m + 1) (d s) × X s) : MvPolynomial (Fin (m + 1) × Fin (m + 1)) F :=
  (∏ c, Nv F m (vec s) c ^ (y.1.1 c)) * b s y.2

def pairUp {n' : ℕ} {A X : Fin n' → Type} (z : (∀ s, A s) × (∀ s, X s)) : ∀ s, A s × X s := fun s => (z.1 s, z.2 s)

theorem pairUp_inj {n' : ℕ} {A X : Fin n' → Type} : Function.Injective (pairUp (A := A) (X := X)) := by
  intro z z' h
  refine Prod.ext ?_ ?_
  · funext s
    exact congrArg Prod.fst (congrFun h s)
  · funext s
    exact congrArg Prod.snd (congrFun h s)

theorem famG_li (hpos : ∀ s, LinearIndependent F (fam1 F n' m vec d b s)) :
    LinearIndependent F (famG F n' m vec d b) := by
  have hli : LinearIndependent F (fun i : (∀ s, Aset (m + 1) (d s) × X s) =>
      ∏ s, blockEmb F s (fam1 F n' m vec d b s (i s))) :=
    ldtensor_prod_linInd_field F (fam1 F n' m vec d b) hpos
  have h2 := hli.comp (pairUp (A := fun s => Aset (m + 1) (d s)) (X := X)) pairUp_inj
  exact h2

theorem famG_sum [Fintype (∀ s, Aset (m + 1) (d s))] (Q : MvPolynomial (Fin n' × Fin (m + 1)) F) (hQ : IsMultiHom d Q)
    (i : ∀ s, X s) :
    (∑ a : (∀ s, Aset (m + 1) (d s)), AddMonoidAlgebra.coeff Q (glue a) • famG F n' m vec d b (a, i)) =
      thAll F n' m vec Q * ∏ s, blockEmb F s (b s (i s)) := by
  have e := expand Q hQ
  have e2 : thAll F n' m vec Q =
      ∑ a : (∀ s, Aset (m + 1) (d s)), AddMonoidAlgebra.coeff Q (glue a) •
        ∏ s, blockEmb F s (∏ c, Nv F m (vec s) c ^ (a s).1 c) := by
    conv_lhs => rw [e]

    rw [map_sum]
    exact Finset.sum_congr rfl fun a _ => thAll_monomial F n' m vec d a _
  rw [e2, Finset.sum_mul]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [smul_mul_assoc, ← Finset.prod_mul_distrib]
  congr 1
  unfold famG
  refine Finset.prod_congr rfl fun s _ => ?_
  rw [map_mul]

theorem big_core [∀ s, Finite (X s)] (hpos : ∀ s, LinearIndependent F (fam1 F n' m vec d b s))
    (J : Finset (∀ s, X s)) (Q : (∀ s, X s) → MvPolynomial (Fin n' × Fin (m + 1)) F) (hQ : ∀ i, IsMultiHom d (Q i))
    (hsum : ∑ i ∈ J, thAll F n' m vec (Q i) * ∏ s, blockEmb F s (b s (i s)) = 0) : ∀ i ∈ J, Q i = 0 := by
  classical
  have : Fintype (∀ s, Aset (m + 1) (d s)) := Fintype.ofFinite _
  have : Fintype (∀ s, X s) := Fintype.ofFinite _
  have hli2 := famG_li F n' m vec d b hpos
  rw [Fintype.linearIndependent_iff] at hli2
  have key := hli2 (fun z => if z.2 ∈ J then AddMonoidAlgebra.coeff (Q z.2) (glue z.1) else 0) ?_
  · intro i hi
    rw [expand (Q i) (hQ i)]
    refine Finset.sum_eq_zero fun a _ => ?_
    have h1 := key (a, i)
    simp only [hi, if_true] at h1
    rw [h1, monomial_zero]
  · rw [Fintype.sum_prod_type_right, ← hsum]
    have h1 : ∀ i : (∀ s, X s),
        (∑ a : (∀ s, Aset (m + 1) (d s)), (if i ∈ J then AddMonoidAlgebra.coeff (Q i) (glue a) else 0) • famG F n' m vec d b (a, i)) =
        if i ∈ J then thAll F n' m vec (Q i) * ∏ s, blockEmb F s (b s (i s)) else 0 := by
      intro i
      by_cases hi : i ∈ J
      · simp only [hi, if_true]
        exact famG_sum F n' m vec d b (Q i) (hQ i) i
      · simp only [hi, if_false, zero_smul, Finset.sum_const_zero]
    rw [Finset.sum_congr rfl fun i _ => h1 i, Finset.sum_ite_mem, Finset.univ_inter]

end Core

theorem bigInd : BigInd := by
  intro F _ n' m hm top vec d ν htop hν b hb J Q hQ hsum
  exact big_core F n' m vec d b
    (fun s => posInd F m hm (top s) (vec s) (d s) (ν s) (htop s) (hν s) (b s) (hb s)) J Q hQ hsum

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.ThAllMonomial =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.TheoremIIClosedOfTestBound =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.TheoremIIClosedOfTestBound", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.DvdOfCompl\nimport Formalism.GradedWeylDivisibility.FinalD\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RestrictedWeightFirstTwoEq\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.TestSideCounting\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.ThAllMonomial\nimport Formalism.SharpRestriction.GrowthBounds.ScaleEdges.RankMulConductorDivLeOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.TestSideCounting

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 MvPolynomial
open Formalism.L2.G.Model (Nv)


set_option maxHeartbeats 1600000 in
theorem primStep_of (hTr : TransStep) (hSub : SubstPol) (C CLa : ℝ) (hSP : SPStep C) : PrimStep C CLa := by
  intro p W Qq O Kf _ _ _ _ _ _ _ _ _ _ ι σ j w n' m r _ _ TT L₁ L₂ de h x lam0 aT bT a Y cpp c0 Dp cStar hSet H φ hφ K
    _ _ hk hrk F hF E' hE' nb B hB hli hc e he htgt hm g hhm hg hbasis
  let _ : Algebra (WF p n') O := algOfIdent j φ
  intro FsB hFsB Θ hΘ
  have hkr : orbitWindowCount r de h x + 2 * r ≤ (m + 1) - r := H.2.2.2.2.2.2.2.1
  have hr2 : 2 ≤ r := H.2.1
  have hm2 : 2 ≤ m := by omega
  have hdom : IsDominant lam0 := H.2.2.2.2.1.2.1
  have hwirr : Irreducible w := hSet.2.1
  set ν : Fin n' → Fin (m + 1) → ℕ := fun s => nuOf (lamAt (restW TT lam0) s) with hν
  set top : Fin n' → Bool := fun s => decide (s ∈ TT) with htop
  let I := ∀ s : Fin n', Xs m (top s) (vecE n' s) (ν s)
  have : Finite I := Pi.finite
  let _ : Fintype I := Fintype.ofFinite I
  let eI : I ≃ Fin (Nat.card I) := Finite.equivFin I
  have hbas := fun s => sSBasis O (m + 1) (m + 1) (ν s)
  choose b hb1 hb2 using hbas
  let bX : ∀ s, Xs m (top s) (vecE n' s) (ν s) → MvPolynomial (Fin (m + 1) × Fin (m + 1)) O :=
    fun s y => b s ⟨y.1, y.2.1⟩
  let sO : I → MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) O := fun i => ∏ s, blockEmb O s (bX s (i s))
  have hsO : ∀ i, sO i ∈ tensorLat O O (fun s => dualWeyl O (m + 1) (m + 1) (nuOf (lamAt (restW TT lam0) s))) := by
    intro i
    refine Submodule.subset_span ⟨fun s => bX s (i s), fun s => ?_, rfl⟩
    show bX s (i s) ∈ dualWeyl O (m + 1) (m + 1) (ν s)
    rw [← (hb1 s).2.1]
    exact Submodule.subset_span ⟨_, rfl⟩
  obtain ⟨sh', hsh, hmain⟩ := hTr p n' W Qq O Kf ι σ j w hSet.1 φ hφ m r hm2 (by omega) (by omega) (dT TT lam0)
    (restW TT lam0) lam0 (lambda_zero_eq_product TT lam0) (restW_dom (by omega) TT lam0 hdom) e he hm g hhm hg hbasis Θ hΘ I sO hsO
  refine ⟨Nat.card I, fun i => sh' (eI.symm i), fun i => hsh _, card_all hm2 TT lam0 hdom, ?_⟩
  intro S hS c hcu hmem
  obtain ⟨x0, hx0⟩ := hcu
  obtain ⟨SPO, hSPO1, hSPO2⟩ := hSP p W Qq O Kf ι σ j w n' m r TT L₁ L₂ de h x lam0 aT bT a Y cpp c0 Dp cStar hSet H φ hφ
    hrk F hF g hg (cPrime n' r TT.card c0 cpp cStar) (p ^ goodG' r de h x)
  let P : I → ↥((Pol (KK O) (ι := Fin n') (m + 1) (dT TT lam0)).restrictScalars O) :=
    fun i => ∑ bb, c (bb, eI i) • FsB bb
  let T0 : I → RRing O n' (r + K) := fun i => ∑ bb, c (bb, eI i) • B bb
  let Q : I → MvPolynomial (Fin n' × Fin (m + 1)) O := fun i => rename (castV hk) (T0 i) * SPO
  have hPQ : ∀ i, subst p n' O w n' r g (P i : MvPolynomial (TV n' (m + 1)) (KK O)) =
      map (algebraMap O (KK O)) (Q i) := by
    intro i
    have e1 : ((P i : ↥((Pol (KK O) (ι := Fin n') (m + 1) (dT TT lam0)).restrictScalars O)) :
        MvPolynomial (TV n' (m + 1)) (KK O)) =
        ∑ bb, algebraMap O (KK O) (c (bb, eI i)) • (FsB bb : MvPolynomial (TV n' (m + 1)) (KK O)) := by
      simp only [P, Submodule.coe_sum, Submodule.coe_smul, algebraMap_smul]
    set_option synthInstance.maxHeartbeats 100000 in
      rw [e1, map_sum]
    set_option synthInstance.maxHeartbeats 100000 in
      simp only [map_smul, hFsB, symB, toK, Q, T0, map_mul, map_sum, ← hSPO1, Finset.sum_mul]
    refine Finset.sum_congr rfl fun bb _ => ?_
    simp only [MvPolynomial.smul_eq_C_mul, map_mul, map_C, mul_assoc]
  have hv : (((∑ y, c y • S y : Vsp Kf lam0)) : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) =
      ∑ i, ((Θ (P i) : Vsp Kf (flW (m := m) (dT TT lam0))) : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) *
        ((sh' i : Vsp Kf (restW TT lam0)) : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) := by
    have e2 : ∀ i, ((Θ (P i) : Vsp Kf (flW (m := m) (dT TT lam0))) :
        MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) =
        ∑ bb, c (bb, eI i) • ((Θ (FsB bb) : Vsp Kf (flW (m := m) (dT TT lam0))) :
          MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) := by
      intro i
      set_option synthInstance.maxHeartbeats 100000 in
        simp only [P, map_sum, map_smul, Submodule.coe_sum, Submodule.coe_smul_of_tower]
    simp only [e2, Submodule.coe_sum, Submodule.coe_smul_of_tower, Finset.sum_mul]
    rw [Fintype.sum_prod_type, Finset.sum_comm, ← Equiv.sum_comp eI]
    refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun bb _ => ?_
    rw [hS bb (eI i)]
    simp only [Equiv.symm_apply_apply, smul_mul_assoc]
  obtain ⟨R, hR⟩ := hmain P Q hPQ _ hv hmem

  let Fr := IsLocalRing.ResidueField O
  let res : O →+* Fr := IsLocalRing.residue O
  have hresw : res w = 0 := by
    rw [IsLocalRing.residue_eq_zero_iff, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    exact hwirr.not_isUnit
  have h0 : ∑ i ∈ (Finset.univ : Finset I), thAll Fr n' m (vecE n') (map res (Q i)) *
      ∏ s, blockEmb Fr s (map res (bX s (i s))) = 0 := by
    have h1 := congrArg (map res) hR
    set_option synthInstance.maxHeartbeats 100000 in
      simp only [map_sum, map_mul, map_thAll, map_C, hresw, C_0, zero_mul, sO, map_prod, blockEmb, map_rename] at h1
    simpa only [blockEmb] using h1
  have hQhom : ∀ i, IsMultiHom (dT TT lam0) (map res (Q i)) := by
    intro i ee hee s
    have h1 : ee ∈ (Q i).support := support_map_subset res (Q i) hee
    have h2 : ee ∈ (map (algebraMap O (KK O)) (Q i)).support := by
      rw [support_map_of_injective _ (IsFractionRing.injective O (KK O))]
      exact h1
    rw [← hPQ i] at h2
    have h3 := hSub p n' W Qq O Kf ι σ j w hSet.1 φ hφ (m + 1) r (dT TT lam0) g hg _ (P i).2
    exact (Formalism.L2.G.Model.mem_Pol.1 h3) ee h2 s
  have hQ0 := bigInd Fr n' m hm2 top (vecE n') (dT TT lam0) ν
    (fun s hs => by
      have : s ∉ TT := by simpa [htop] using hs
      simp [dT, this])
    (fun s hs hv t ht => nu_odd (by omega) TT lam0 hdom s (by simpa [htop] using hs) hv t ht)
    (fun s y => map res (bX s y))
    (fun s y => by
      obtain ⟨d1, d2, -⟩ := hb2 s ⟨y.1, y.2.1⟩
      have := deg_map (colLex (m + 1) (m + 1)) res (bX s y) d2
      exact ⟨this.1.trans d1, this.2⟩)
    Finset.univ (fun i => map res (Q i)) hQhom h0
  have hq := hQ0 (eI.symm x0.2) (Finset.mem_univ _)
  simp only [Q, map_mul] at hq
  have hT : map res (rename (castV hk) (T0 (eI.symm x0.2))) = 0 := by
    rcases mul_eq_zero.1 hq with h1 | h1
    · exact h1
    · exact absurd h1 hSPO2
  rw [map_rename] at hT
  have hinj : Function.Injective (castV (n' := n') hk) := by
    intro u v huv
    simp only [castV, Prod.mk.injEq] at huv
    exact Prod.ext huv.1 (Fin.cast_injective _ huv.2)
  have hT' : map res (T0 (eI.symm x0.2)) = 0 := by
    apply rename_injective _ hinj
    rw [hT, map_zero]
  have hdvd : MvPolynomial.C w ∣ T0 (eI.symm x0.2) := by
    rw [C_dvd_iff_dvd_coeff]
    intro ee
    have h1 : res (AddMonoidAlgebra.coeff (T0 (eI.symm x0.2)) ee) = 0 := by
      simp only [← coeff_map, hT', AddMonoidAlgebra.coeff_zero, Finsupp.zero_apply]
    rw [IsLocalRing.residue_eq_zero_iff, hwirr.maximalIdeal_eq, Ideal.mem_span_singleton] at h1
    exact h1
  obtain ⟨y, hy⟩ := hdvd
  obtain ⟨T, hTc⟩ := hc
  have hfin := dvd_of_compl B hli T hTc w (fun bb => c (bb, x0.2)) y (by
    have : T0 (eI.symm x0.2) = ∑ bb, c (bb, x0.2) • B bb := by
      simp only [T0, Equiv.apply_symm_apply]
    rw [← this, hy, MvPolynomial.smul_eq_C_mul]) x0.1
  exact hwirr.not_isUnit (isUnit_of_dvd_unit hfin hx0)

theorem source_integrality_of_substitution (hTr : TransStep) (hSub : SubstPol) (C₀ : ℝ) (hC0 : 0 < C₀) (hSP : ∀ C, C₀ ≤ C → SPStep C)
    (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) : SourcePrimitiveIntegrality D CLa Ck Crk Cdeg :=
  fun _ => ⟨C₀, hC0, fun C hC => primStep_of hTr hSub C CLa (hSP C hC)⟩

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.TheoremIIClosedOfTestBound =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.TransStep =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.TransStep", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.DvdOfCompl\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.ElementaryDivisorBasis\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.FlatModels.EdgeLatOfG\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.FlatModels.LetterWtAnti\npublic import Formalism.PeriodIntegrals.AdmissibleModel.WeylDim\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OneSidedLemma4\npublic import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.EdgeLatticeMulOfWeightSum\nimport Formalism.SharpRestriction.GrowthBounds.ScaleEdges.RankMulConductorDivLeOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.TestSideCounting

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 MvPolynomial
open Formalism.L2.G.Model
open Formalism.MainNotions.G.LatticeSystems (la_tw lb_D la_tw_det lb_D_det H0_eq_twisted_nabla la_indep)

section

variable {p n' : ℕ} [Fact p.Prime] {W Qq O Kf : Type} [CommRing W] [IsDomain W] [IsDiscreteValuationRing W] [Field Qq]
  [Algebra W Qq] [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
  {ι : Qq →+* Kf} {σ : Qq ≃+* Qq} {j : W →+* O} {w : O}

theorem tr_theta (hS : HidaSetting p n' W Qq O Kf ι σ j w) (φ : WF p n' ≃+* W) (hφ : IsWittIdent σ φ) (m r : ℕ)
    (hm : 1 ≤ m) (d : Fin n' → ℕ) (hmat : Matrix (Fin (m + 1)) (Fin (m + 1)) Qq) (hh : IsUnit hmat.det)
    (g : Matrix (Fin (m + 1)) (Fin (m + 1)) (WF p n')) (hg : IsGLW g)
    (P : MvPolynomial (Fin n' × Fin (m + 1)) (KK O)) (hP : P ∈ Pol (KK O) (m + 1) d)
    (Q : MvPolynomial (Fin n' × Fin (m + 1)) O) :
    letI : Algebra (WF p n') O := algOfIdent j φ
    subst p n' O w n' r g P = map (algebraMap O (KK O)) Q →
    (algebraMap O Kf w ^ (Avec (vecE n') d)) •
      ((∏ s, (Mx ι σ w φ r (fun x : Fin n' => x) hmat g s).det ^ (letterWt m (d s) (vecE n' s) (Fin.last m))) •
        blockAct Kf (Mx ι σ w φ r (fun x : Fin n' => x) hmat g)
          (thF hS m (vecE n') (fun x => la_tw ι σ x.val hmat) P)) =
      map (algebraMap O Kf) (Th0 O m (vecE n') Q) := by
  letI : Algebra (WF p n') O := algOfIdent j φ
  intro hPQ
  have hw := w_ne hS
  set c := algebraMap O Kf w with hc
  have hP' := (pol_iff hS _ _ _).1 hP
  have hM := Mx_det (ι := ι) (σ := σ) hw φ r (fun x : Fin n' => x) hmat hh g hg
  unfold thF
  rw [tr_multi_twist Kf m hm (vecE n') d _ hM _ (Lin_Pol _ _ hP'), Lin_comp]
  have h1 := lift_eq hS φ hφ r (LLT n') (fun x : Fin n' => x) (fun _ => rfl) g hg P
  have hB : Bm ι σ w φ r (LLT n').vec (fun x : Fin n' => x) g = fun x => (if (LLT n').vec x then c else 1) •
      (Aa ((LLT n').vec x) (la_tw ι σ x.val hmat)⁻¹ *
        Aa ((LLT n').vec x) (Mx ι σ w φ r (fun x : Fin n' => x) hmat g x)) :=
    funext fun x => Bm_eq hw φ r (LLT n').vec (fun x : Fin n' => x) hmat hh g hg x
  rw [hB, Lin_smul _ _ _ hP'] at h1
  have hprod : ∏ x, (if (LLT n').vec x then c else 1) ^ d x = c ^ Avec (vecE n') d := by
    unfold Avec
    rw [← Finset.prod_pow_eq_pow_sum]
    apply Finset.prod_congr rfl
    intro x _
    show (if vecE n' x then c else 1) ^ d x = _
    split_ifs <;> simp
  rw [hprod] at h1
  have h2 : map (kapR hS) (liftSubst p n' O w r (LLT n') g P) = map (algebraMap O Kf) Q := by
    have : liftSubst p n' O w r (LLT n') g P = map (algebraMap O (KK O)) Q := hPQ
    rw [this, map_map]
    have hk : (kapR hS).comp (algebraMap O (KK O)) = algebraMap O Kf := RingHom.ext fun x => kapR_alg hS x
    rw [hk]
  rw [map_letter_substitution, ← h2, h1, map_smul]
  rfl

end

theorem transStep : TransStep := by
  intro p n' _ W Qq O Kf _ _ _ _ _ _ _ _ _ _ ι σ j w hS φ hφ m r hm hr1 hr2 d rest lam0 hlam hrest e he hmat g hh hg hbasis
  letI : Algebra (WF p n') O := algOfIdent j φ
  intro Θ hΘ I _ sO hsO
  have hfrac := hS.frac_O
  have hinj : Function.Injective (algebraMap O Kf) := IsFractionRing.injective O Kf
  have hw := w_ne hS
  set c := algebraMap O Kf w with hc
  set M : Fin n' → Matrix (Fin (m + 1)) (Fin (m + 1)) Kf := Mx ι σ w φ r (fun x : Fin n' => x) hmat g with hMdef
  have hM : ∀ s, IsUnit (M s).det := Mx_det hw φ r _ hmat hh g hg
  have hH : ∀ lam : Fin n' → Fin (m + 1) → ℤ, IsDominant lam →
      Hten O lam (fun s => LeAt p ι σ w s.val e) = tensorLat O Kf (fun s => nablaLTw O Kf m (lamAt lam s) (M s)) := by
    intro lam hl
    unfold Hten
    congr 1
    funext s
    show H0 O m _ (LeAt p ι σ w s.val e) = _
    rw [(edgeLat_of hS m r e _ hbasis).2.1]
    show H0 O m _ (colSpan O (M s)) = _
    rw [H0_eq_twisted_nabla (la_indep hinj) _ _ (lamAt_antitone' lam hl s) _ (hM s)]
  have hV : ∀ lam : Fin n' → Fin (m + 1) → ℤ, IsDominant lam →
      Vsp Kf lam = tensorLat Kf Kf (fun s => dualWeyl Kf (m + 1) (m + 1) (nuOf (lamAt lam s))) := by
    intro lam hl
    unfold Vsp
    congr 1
    funext s
    rw [if_pos (lamAt_antitone' lam hl s)]
  have hfl : IsDominant (flW (m := m) d) := flW_dom d
  have hl0 : IsDominant lam0 := by rw [hlam]; exact isDominant_add hfl hrest
  let dt : (Fin n' → Fin (m + 1) → ℤ) → Kf := fun lam => ∏ s, (M s).det ^ (lamAt lam s (Fin.last m))
  have hdt : dt lam0 = dt (flW d) * dt rest := by
    show ∏ s, _ = (∏ s, _) * ∏ s, _
    rw [← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun s _ => ?_
    rw [hlam, lamAt_add, Pi.add_apply, zpow_add₀ (hM s).ne_zero]
  have hAr : Ar r lam0 = Ar r (flW (m := m) d) + Ar r rest := by rw [hlam, Ar_add]
  have h1 := fun i => tr_tens_lift O Kf m (fun s => lamAt rest s) M hM (sO i) (hsO i)
  choose y hy1 hy2 using h1
  have hyV : ∀ i, y i ∈ Vsp Kf rest := by
    intro i
    rw [hV rest hrest]
    exact tr_tens_le O Kf m _ M hM _ (hy1 i)
  refine ⟨fun i => c ^ (-Ar r rest) • (⟨y i, hyV i⟩ : Vsp Kf rest), ?_, ?_⟩
  · intro i
    refine ⟨⟨y i, hyV i⟩, ?_, rfl⟩
    show y i ∈ Hten O rest (fun s => LeAt p ι σ w s.val e)
    rw [hH rest hrest]
    exact hy1 i
  · intro P Q hPQ v hv hvmem
    obtain ⟨y0, hy0, hvy⟩ := (mem_scale2 (O := O) (Vsp Kf lam0) (Hten O lam0 fun s => LeAt p ι σ w s.val e)
      (c ^ (1 : ℤ)) (c ^ (-Ar r lam0)) (zpow_ne_zero _ hw) (zpow_ne_zero _ hw) v).1 hvmem
    rw [hH lam0 hl0] at hy0
    obtain ⟨R0, hR0⟩ := tr_tens_int O Kf m (fun s => lamAt lam0 s) M hM y0 hy0
    refine ⟨R0, ?_⟩
    apply map_injective _ hinj
    have way1 : (c ^ (Ar r lam0) * dt lam0) • blockAct Kf M (v : MvPolynomial _ Kf) =
        map (algebraMap O Kf) (C w * R0) := by
      rw [hvy, map_smul, smul_smul, map_mul, map_C, ← hR0, ← smul_eq_C_mul, smul_smul]
      congr 1
      have hcc : c ^ Ar r lam0 * c ^ (-Ar r lam0) = 1 := by rw [← zpow_add₀ hw, add_neg_cancel, zpow_zero]
      show c ^ Ar r lam0 * dt lam0 * (c ^ (1 : ℤ) * c ^ (-Ar r lam0)) = c * dt lam0
      rw [zpow_one]
      linear_combination (dt lam0 * c) * hcc
    have hA : Ar r (flW (m := m) d) = (Avec (vecE n') d : ℤ) :=
      flat_Ar r hr1 hr2 (vecE n') d (flW d) (isFlat_flW d)
    have hdfl : dt (flW d) = ∏ s, (M s).det ^ (letterWt m (d s) (vecE n' s) (Fin.last m)) := by
      refine Finset.prod_congr rfl fun s _ => ?_
      rw [flat_lam (vecE n') d (flW d) (isFlat_flW d) s]
    have way2 : (c ^ (Ar r lam0) * dt lam0) • blockAct Kf M (v : MvPolynomial _ Kf) =
        map (algebraMap O Kf) (∑ i, thAll O n' m (vecE n') (Q i) * sO i) := by

      rw [hv, map_sum, map_sum, Finset.smul_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      have t1 := tr_theta hS φ hφ m r (by omega) d hmat hh g hg (P i).1 (P i).2 (Q i) (hPQ i)
      rw [map_mul, map_mul, ← hy2 i]
      have e1 : map (algebraMap O Kf) (thAll O n' m (vecE n') (Q i)) = map (algebraMap O Kf) (Th0 O m (vecE n') (Q i)) :=
        rfl
      rw [e1, ← t1, hΘ (P i), hAr, hdt, hdfl, hA, zpow_add₀ hw, zpow_natCast]
      show _ • (_ * blockAct Kf M (c ^ (-Ar r rest) • y i)) = _
      rw [map_smul]
      simp only [smul_eq_C_mul, map_mul, map_pow]
      have hcc : (C (c ^ Ar r rest) : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) * C (c ^ (-Ar r rest)) = 1 := by
        rw [← C_mul, ← zpow_add₀ hw, add_neg_cancel, zpow_zero, C_1]
      linear_combination (C c ^ Avec (vecE n') d * C (∏ s, (M s).det ^ (letterWt m (d s) (vecE n' s) (Fin.last m))) *
        C (dt rest) * blockAct Kf M (thF hS m (vecE n') (fun x => la_tw ι σ x.val hmat) (P i).1) *
        blockAct Kf M (y i)) * hcc
    rw [← way2, way1]

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.TransStep =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.PrimStep =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.PrimStep", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.SourcePrimitiveIntegrality\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.SubstSPtrue\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.TheoremIIClosedOfTestBound\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.TransStep\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.TestSideCounting

open Formalism.MainNotions.Pf14

theorem rest6a (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) : SourcePrimitiveIntegrality D CLa Ck Crk Cdeg :=
  source_integrality_of_substitution transStep substPol 1 one_pos (fun C _ => spStep C) D CLa Ck Crk Cdeg

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.PrimStep =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ScaleEdges.TheoremIIOfEdgeBoundConstants =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ScaleEdges.TheoremIIOfEdgeBoundConstants", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.ManyEdges\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.Pf14

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility

theorem prvE_of_gl_operators_form_representation (D : Formalism.BasicNotions.D7) (hME : ManyEdges) (hS7 : S7) (hAsm : Asm) (hNum : Num)
    (hBP : BePerfect) (hOE : LPOneEvery)
    (Ct0 CD1 Cr C₁ : ℝ) (h0 : 0 < Ct0) (h1 : 0 < CD1) (h2 : 0 < Cr) (h3 : 0 < C₁)
    (hE : ∀ C : ℝ, C₁ ≤ C → EdgeStep C Ct0 CD1 Cr) : tableLineDegreeFive.ConclusionE D := by
  refine ⟨max C₁ (max 2 (max Ct0 (max CD1 (Cr + 1)))), lt_of_lt_of_le h3 (le_max_left _ _), ?_⟩
  intro C hC
  have hC1 : C₁ ≤ C := le_trans (le_max_left _ _) hC
  have hC' := le_trans (le_max_right _ _) hC
  have hC2 : 2 ≤ C := le_trans (le_max_left _ _) hC'
  have hC'' := le_trans (le_max_right _ _) hC'
  have hC3 : Ct0 ≤ C := le_trans (le_max_left _ _) hC''
  have hC''' := le_trans (le_max_right _ _) hC''
  have hC4 : CD1 ≤ C := le_trans (le_max_left _ _) hC'''
  have hC5 : Cr + 1 ≤ C := le_trans (le_max_right _ _) hC'''
  intro p W Qq O Kf _ _ _ _ _ _ _ _ _ _ ι σ j w n' m r TT L₁ L₂ de h x lam0 aT bT a Y cpp c0 Dp cStar hSet hp hr
    hOrb hN1 hWt hY hLa hk hL1 hD hc hsz t ht
  have hH : Hyps C p n' m r TT L₁ L₂ de h x lam0 aT bT a Y cpp c0 Dp cStar :=
    ⟨hp, hr, hOrb, hN1, hWt, hY, hLa, hk, hL1, hD, hc, hsz⟩
  have hdom : IsDominant lam0 := hWt.2.1
  apply hOE p n' W Qq O Kf ι σ j w hSet.1 m r lam0 t Dp _ cStar hdom
  refine ⟨by omega, colSpan W 1, ⟨1, by simp, rfl⟩, ?_⟩
  apply hS7 p n' W Qq O Kf ι σ j w hSet.1 hBP m r lam0 t Dp _ cStar _ hdom (by omega)
  obtain ⟨E, hE1, hE2⟩ := hME p n' W Qq O Kf ι σ j w hSet.1 (m + 1) r (by omega)
  obtain ⟨hn1, hn2, hn3, hn4⟩ := hNum C Ct0 CD1 Cr h0 h1 h2 hC2 hC3 hC4 hC5 p n' m r TT L₁ L₂ de h x lam0 aT bT a Y
    cpp c0 Dp cStar hH
  have key : ∀ e ∈ E, _ := fun e he =>
    hE C hC1 p W Qq O Kf ι σ j w n' m r TT L₁ L₂ de h x lam0 aT bT a Y cpp c0 Dp cStar hSet hH e
      (hE1 e he).1 (hE1 e he).2
  choose! nE tS tT D1 hkey using key
  apply hAsm p n' W Qq O Kf ι σ j w hSet.1 m r lam0 t Dp _ cStar _ E nE hE1
  · intro e he
    obtain ⟨a1, a2, a3, _, a5⟩ := hkey e he
    refine ⟨tS e, tT e, D1 e, ?_, ?_, ?_, a5⟩
    · have : (tS e : ℝ) ≤ t := by linarith
      exact_mod_cast this
    · have : (tT e : ℝ) ≤ t := by linarith
      exact_mod_cast this
    · have : (D1 e : ℝ) ≤ Dp := by linarith
      exact_mod_cast this
  · set ρ : ℝ := (1 - Cr * (TT.card : ℝ) * (r : ℝ) ^ 2 * ((m + 1 : ℕ) : ℝ) / Y) *
      (1 - ((m + 1 : ℕ) : ℝ) * c0 / a) ^ TT.card with hρ
    set Qr : ℝ := (p : ℝ) ^ (n' * (r * (m + 1 - r))) with hQr
    have hp0 : (0 : ℝ) < p := by
      have : 0 < p := by omega
      exact_mod_cast this
    have hQpos : 0 < Qr := pow_pos hp0 _
    have hdim : (0 : ℝ) ≤ (dimV Kf lam0 : ℝ) := Nat.cast_nonneg _
    have hle : (1 - C * TT.card * (r : ℝ) ^ 2 * ((m + 1 : ℕ) : ℝ) / Y) * (dimV Kf lam0 : ℝ) ≤
        ρ * (dimV Kf lam0 : ℝ) := mul_le_mul_of_nonneg_right hn4 hdim
    refine le_trans hle ?_
    rcases le_or_gt 0 (ρ * (dimV Kf lam0 : ℝ)) with hpos | hneg
    · have hsum : (E.card : ℝ) * (ρ * (dimV Kf lam0 : ℝ) / Qr) ≤ ((∑ e ∈ E, nE e : ℕ) : ℝ) := by
        push_cast
        rw [← nsmul_eq_mul]
        apply Finset.card_nsmul_le_sum
        intro e he
        exact (hkey e he).2.2.2.1
      have hcard : Qr ≤ (E.card : ℝ) := by
        rw [hQr]
        exact_mod_cast hE2
      have : Qr * (ρ * (dimV Kf lam0 : ℝ) / Qr) ≤ (E.card : ℝ) * (ρ * (dimV Kf lam0 : ℝ) / Qr) :=
        mul_le_mul_of_nonneg_right hcard (div_nonneg hpos hQpos.le)
      have h4 : Qr * (ρ * (dimV Kf lam0 : ℝ) / Qr) = ρ * (dimV Kf lam0 : ℝ) := by
        field_simp
      linarith
    · exact le_trans hneg.le (Nat.cast_nonneg _)

theorem theorem_II_of_edge_bound_constants (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 : ℝ)
    (hME : ManyEdges) (hS7 : S7) (hAsm : Asm) (hNum : Num)
    (hA : tableLineDegreeFive.admitted D CLa Ck Crk Cdeg) (h14a : SourceCleaning.aux₃ D CLa' CD Csz) (h14b : PlaneGramData.aux₃ D CH CE C6 C18)
    (hR : RestEdge D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18) : tableLineDegreeFive.ConclusionE D := by
  obtain ⟨Ct0, CD1, Cr, C₁, h0, h1, h2, h3, hE⟩ := hR hA h14a h14b
  have hBP : BePerfect := hA.2.2.2.1
  have hOE : LPOneEvery := hA.2.2.2.2.1
  exact prvE_of_gl_operators_form_representation D hME hS7 hAsm hNum hBP hOE Ct0 CD1 Cr C₁ h0 h1 h2 h3 hE

end Formalism.MainNotions.Pf14
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ScaleEdges.TheoremIIOfEdgeBoundConstants =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ScaleEdges.ColSpanMap =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ScaleEdges.ColSpanMap", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.ManyEdges\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.Pf14

open Formalism.MainNotions.G

section Incl

variable (W Qq : Type) [CommRing W] [IsDomain W] [Field Qq] [Algebra W Qq]

def incl (k : ℕ) : (Fin k → W) →ₗ[W] (Fin k → Qq) := (Algebra.linearMap W Qq).compLeft (Fin k)

variable {W Qq}

theorem incl_apply {k : ℕ} (y : Fin k → W) (i : Fin k) : incl W Qq k y i = algebraMap W Qq (y i) := rfl

theorem incl_inj [IsFractionRing W Qq] (k : ℕ) : Function.Injective (incl W Qq k) := by
  intro x y h
  funext i
  have h1 := congrFun h i
  rw [incl_apply, incl_apply] at h1
  exact IsFractionRing.injective W Qq h1

theorem colSpan_map {k : ℕ} (M : Matrix (Fin k) (Fin k) W) :
    colSpan W (M.map (algebraMap W Qq)) =
      (Submodule.span W (Set.range fun c : Fin k => fun i => M i c)).map (incl W Qq k) := by
  unfold colSpan
  rw [Submodule.map_span, ← Set.range_comp]
  rfl

theorem colSpan_one (k : ℕ) :
    colSpan W (1 : Matrix (Fin k) (Fin k) Qq) = LinearMap.range (incl W Qq k) := by
  have h1 : (1 : Matrix (Fin k) (Fin k) Qq) = (1 : Matrix (Fin k) (Fin k) W).map (algebraMap W Qq) :=
    (Matrix.map_one _ (map_zero _) (map_one _)).symm
  rw [h1, colSpan_map, LinearMap.range_eq_map]
  congr 1
  rw [← (Pi.basisFun W (Fin k)).span_eq]
  congr 1
  ext x
  simp only [Set.mem_range]
  constructor
  · rintro ⟨c, rfl⟩
    refine ⟨c, ?_⟩
    funext i
    simp [Matrix.one_apply, Pi.single_apply]
  · rintro ⟨c, rfl⟩
    refine ⟨c, ?_⟩
    funext i
    simp [Matrix.one_apply, Pi.single_apply]

theorem lattice_of [IsPrincipalIdealRing W] [IsFractionRing W Qq] (p k : ℕ) (hp0 : (p : W) ≠ 0)
    (N : Submodule W (Fin k → W)) (hpN : ∀ x, (p : W) • x ∈ N) : IsLattice W (N.map (incl W Qq k)) := by
  classical
  haveI : Module.Free W N := Module.Free.of_basis (Submodule.basisOfPid (Pi.basisFun W (Fin k)) N).2
  have hfin : Module.finrank W N = k := by
    apply le_antisymm
    · calc Module.finrank W N ≤ Module.finrank W (Fin k → W) := Submodule.finrank_le N
        _ = k := by simp
    · let f : (Fin k → W) →ₗ[W] N := LinearMap.codRestrict N ((p : W) • LinearMap.id) (fun c => by simpa using hpN c)
      have hinj : Function.Injective f := by
        intro x y hxy
        have h2 := congrArg Subtype.val hxy
        simp only [f, LinearMap.codRestrict_apply, LinearMap.smul_apply, LinearMap.id_apply] at h2
        exact smul_right_injective (Fin k → W) hp0 h2
      have h3 := LinearMap.finrank_le_finrank_of_injective hinj
      simpa using h3
  let b' : Module.Basis (Fin k) W N := Module.finBasisOfFinrankEq W N hfin
  let M : Matrix (Fin k) (Fin k) W := fun i c => (b' c : Fin k → W) i
  have hspan : Submodule.span W (Set.range fun c => (b' c : Fin k → W)) = N := by
    have h1 := congrArg (Submodule.map N.subtype) b'.span_eq
    rw [Submodule.map_span, Submodule.map_subtype_top, ← Set.range_comp] at h1
    exact h1
  let A : Matrix (Fin k) (Fin k) W := fun c i => b'.repr ⟨(p : W) • Pi.single i 1, hpN _⟩ c
  have hMA : M * A = (p : W) • (1 : Matrix (Fin k) (Fin k) W) := by
    ext a i
    have hx := congrArg (fun v : N => (v : Fin k → W) a) (b'.sum_repr ⟨(p : W) • Pi.single i 1, hpN _⟩)
    simp only [Submodule.coe_sum, Submodule.coe_smul, Finset.sum_apply, Pi.smul_apply, smul_eq_mul,
      Pi.single_apply] at hx
    rw [Matrix.mul_apply, Matrix.smul_apply, Matrix.one_apply, smul_eq_mul, ← hx]
    exact Finset.sum_congr rfl (fun c _ => by simp only [M, A]; ring)
  have hdetM : M.det ≠ 0 := by
    intro h0
    have h4 := congrArg Matrix.det hMA
    rw [Matrix.det_mul, h0, zero_mul, Matrix.det_smul, Matrix.det_one, mul_one, Fintype.card_fin] at h4
    exact pow_ne_zero k hp0 h4.symm
  refine ⟨M.map (algebraMap W Qq), ?_, ?_⟩
  · rw [isUnit_iff_ne_zero, ← RingHom.mapMatrix_apply, ← RingHom.map_det]
    exact (map_ne_zero_iff _ (IsFractionRing.injective W Qq)).mpr hdetM
  · rw [colSpan_map]
    congr 1
    exact hspan.symm

theorem card_quot [IsFractionRing W Qq] (k : ℕ) (T : Submodule W (Fin k → Qq))
    (hT : T = LinearMap.range (incl W Qq k)) (N : Submodule W (Fin k → W)) :
    Nat.card (↥T ⧸ Submodule.comap T.subtype (N.map (incl W Qq k))) = Nat.card ((Fin k → W) ⧸ N) := by
  subst hT
  refine Nat.card_congr (Submodule.Quotient.equiv N _ (LinearEquiv.ofInjective (incl W Qq k) (incl_inj k)) ?_).toEquiv.symm
  ext ⟨y, hy⟩
  simp only [Submodule.mem_map, Submodule.mem_comap, Submodule.subtype_apply]
  constructor
  · rintro ⟨x, hx, hxy⟩
    refine ⟨x, hx, ?_⟩
    have h1 := congrArg Subtype.val hxy
    simpa [LinearEquiv.ofInjective_apply] using h1
  · rintro ⟨x, hx, hxy⟩
    refine ⟨x, hx, ?_⟩
    apply Subtype.ext
    simpa [LinearEquiv.ofInjective_apply] using hxy

end Incl

section Psi

variable {W : Type} [CommRing W]

def psi {r K : ℕ} (I : Ideal W) (A : Fin r → Fin K → W) : (Fin (r + K) → W) →ₗ[W] (Fin r → W ⧸ I) :=
  LinearMap.pi fun i =>
    (Submodule.mkQ I) ∘ₗ (LinearMap.proj (Fin.castAdd K i) + ∑ c, A i c • LinearMap.proj (Fin.natAdd r c))

theorem psi_apply {r K : ℕ} (I : Ideal W) (A : Fin r → Fin K → W) (y : Fin (r + K) → W) (i : Fin r) :
    psi I A y i = Ideal.Quotient.mk I (y (Fin.castAdd K i) + ∑ c, A i c * y (Fin.natAdd r c)) := by
  simp [psi]

theorem psi_surj {r K : ℕ} (I : Ideal W) (A : Fin r → Fin K → W) : Function.Surjective (psi I A) := by
  intro z
  choose f hf using fun i => Ideal.Quotient.mk_surjective (I := I) (z i)
  refine ⟨Fin.append f 0, ?_⟩
  funext i
  rw [psi_apply, Fin.append_left]
  simp [Fin.append_right, hf]

theorem psi_smul {r K : ℕ} (I : Ideal W) (a : W) (ha : a ∈ I) (A : Fin r → Fin K → W) (x : Fin (r + K) → W) :
    a • x ∈ LinearMap.ker (psi I A) := by
  rw [LinearMap.mem_ker, map_smul]
  funext i
  obtain ⟨y, hy⟩ := Ideal.Quotient.mk_surjective (psi I A x i)
  rw [Pi.smul_apply, ← hy, Algebra.smul_def, Ideal.Quotient.algebraMap_eq,
    Ideal.Quotient.eq_zero_iff_mem.mpr ha, zero_mul, Pi.zero_apply]

theorem psi_ker_inj {r K : ℕ} (I : Ideal W) (A B : Fin r → Fin K → W)
    (h : LinearMap.ker (psi I A) = LinearMap.ker (psi I B)) (i : Fin r) (c : Fin K) :
    Ideal.Quotient.mk I (A i c) = Ideal.Quotient.mk I (B i c) := by
  have key : ∀ Z : Fin r → Fin K → W, ∀ i', psi I Z (Fin.append (fun i'' => -A i'' c) (Pi.single c 1)) i' =
      Ideal.Quotient.mk I (-A i' c + Z i' c) := by
    intro Z i'
    rw [psi_apply, Fin.append_left]
    congr 1
    simp [Fin.append_right, Pi.single_apply]
  have hA : Fin.append (fun i'' => -A i'' c) (Pi.single c 1) ∈ LinearMap.ker (psi I A) := by
    rw [LinearMap.mem_ker]
    funext i'
    rw [key, Pi.zero_apply]
    simp
  rw [h, LinearMap.mem_ker] at hA
  have h1 := congrFun hA i
  rw [key, Pi.zero_apply, Ideal.Quotient.eq_zero_iff_mem] at h1
  rw [eq_comm, Ideal.Quotient.eq]
  convert h1 using 1
  ring

end Psi

theorem manyEdges : ManyEdges := by
  classical
  intro p n' W Qq O Kf _ _ _ _ _ _ _ _ _ _ ι σ j w hS k r hrk
  obtain ⟨K, rfl⟩ : ∃ K, k = r + K := ⟨k - r, by omega⟩
  haveI := hS.frac_alt
  set I : Ideal W := Ideal.span {(p : W)} with hI
  have hpI : (p : W) ∈ I := Ideal.mem_span_singleton_self _
  have hp0 : (p : W) ≠ 0 := hS.p_unif.ne_zero
  have hcard : Nat.card (W ⧸ I) = p ^ n' := hS.res_card
  haveI : Finite (W ⧸ I) := Nat.finite_of_card_ne_zero (by rw [hcard]; exact pow_ne_zero _ hS.prime.ne_zero)
  haveI : Fintype (W ⧸ I) := Fintype.ofFinite _
  choose lift hlift using (Ideal.Quotient.mk_surjective (I := I))
  let ed : (Fin r → Fin K → W ⧸ I) → Edge W Qq (r + K) := fun A =>
    ⟨(LinearMap.ker (psi I (fun i c => lift (A i c)))).map (incl W Qq (r + K)),
      colSpan W (1 : Matrix (Fin (r + K)) (Fin (r + K)) Qq)⟩
  have hinj : Function.Injective ed := by
    intro A B hAB
    have h1 := congrArg Edge.src hAB
    have h2 := Submodule.map_injective_of_injective (incl_inj (W := W) (Qq := Qq) (r + K)) h1
    funext i c
    have h3 := psi_ker_inj I _ _ h2 i c
    rwa [hlift, hlift] at h3
  refine ⟨Finset.univ.image ed, ?_, ?_⟩
  · intro e he
    obtain ⟨A, -, rfl⟩ := Finset.mem_image.mp he
    refine ⟨⟨?_, ?_, ?_, ?_, ?_⟩, rfl⟩
    · exact lattice_of (Qq := Qq) p (r + K) hp0 _ (fun x => psi_smul I (p : W) hpI _ x)
    · exact ⟨1, by simp, rfl⟩
    · show _ ≤ colSpan W (1 : Matrix (Fin (r + K)) (Fin (r + K)) Qq)
      rw [colSpan_one]
      exact LinearMap.map_le_range
    · intro x hx
      change x ∈ colSpan W (1 : Matrix (Fin (r + K)) (Fin (r + K)) Qq) at hx
      rw [colSpan_one] at hx
      obtain ⟨y, rfl⟩ := LinearMap.mem_range.mp hx
      exact Submodule.mem_map.mpr ⟨(p : W) • y, psi_smul I (p : W) hpI _ y, map_smul _ _ _⟩
    · refine (card_quot (r + K) _ (colSpan_one (r + K)) _).trans ?_
      rw [Nat.card_congr (LinearMap.quotKerEquivOfSurjective _ (psi_surj I _)).toEquiv]
      rw [Nat.card_eq_fintype_card, Fintype.card_fun, Fintype.card_fin, ← Nat.card_eq_fintype_card, hcard,
        ← pow_mul]
  · rw [Finset.card_image_of_injective _ hinj, Finset.card_univ, Fintype.card_fun, Fintype.card_fun,
      Fintype.card_fin, Fintype.card_fin, ← Nat.card_eq_fintype_card, hcard, Nat.add_sub_cancel_left,
      ← pow_mul, ← pow_mul]
    apply le_of_eq
    congr 1
    ring

end Formalism.MainNotions.Pf14
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ScaleEdges.ColSpanMap =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ScaleEdges =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ScaleEdges", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.TheoremIIOfEdgeBoundConstants\npublic import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.ColSpanMap\npublic import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.GoodRankOfPrim\npublic import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.ScaleNegMono\npublic import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.NumericProductInequality\npublic import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.InitialLevelMonoWeights\npublic import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.SymbolRealisableIffGeneralRank\npublic import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.SourcePrimitiveIntegrality\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.Pf14

theorem theorem_II_of_edge_bound (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 : ℝ)
    (hA : tableLineDegreeFive.admitted D CLa Ck Crk Cdeg) (h14a : SourceCleaning.aux₃ D CLa' CD Csz) (h14b : PlaneGramData.aux₃ D CH CE C6 C18)
    (hR : RestEdge D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18) : tableLineDegreeFive.ConclusionE D :=
  theorem_II_of_edge_bound_constants D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 manyEdges s7 asm num hA h14a h14b hR

theorem prvE_degree_five_of_adm_sources_realisable (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 : ℝ)
    (hA : tableLineDegreeFive.admitted D CLa Ck Crk Cdeg) (h14a : SourceCleaning.aux₃ D CLa' CD Csz) (h14b : PlaneGramData.aux₃ D CH CE C6 C18)
    (hR3 : SourcesRealisable D CLa Ck Crk Cdeg CLa' CD Csz)
    (hRC : RestCloud D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18) : tableLineDegreeFive.ConclusionE D :=
  theorem_II_of_edge_bound D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 hA h14a h14b
    (restEdge_of D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 hR3 hRC)

theorem theorem_II_of_cloud_bound (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 : ℝ)
    (hA : tableLineDegreeFive.admitted D CLa Ck Crk Cdeg) (h14a : SourceCleaning.aux₃ D CLa' CD Csz) (h14b : PlaneGramData.aux₃ D CH CE C6 C18)
    (hRC : RestCloud D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18) : tableLineDegreeFive.ConclusionE D :=
  prvE_degree_five_of_adm_sources_realisable D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 hA h14a h14b (sources_realisable_holds D CLa Ck Crk Cdeg CLa' CD Csz) hRC

theorem theorem_II_of_cloud_bound_X (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 : ℝ)
    (hA : tableLineDegreeFive.admitted D CLa Ck Crk Cdeg) (h14a : SourceCleaning.aux₃ D CLa' CD Csz) (h14b : PlaneGramData.aux₃ D CH CE C6 C18)
    (hRC : RestCloudX D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18) : tableLineDegreeFive.ConclusionE D :=
  theorem_II_of_cloud_bound D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 hA h14a h14b
    (restCloud_of_X D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 hRC)

theorem theorem_II_of_cloud_bound_Y (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 : ℝ)
    (hA : tableLineDegreeFive.admitted D CLa Ck Crk Cdeg) (h14a : SourceCleaning.aux₃ D CLa' CD Csz) (h14b : PlaneGramData.aux₃ D CH CE C6 C18)
    (hRC : RestCloudY D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18) : tableLineDegreeFive.ConclusionE D :=
  theorem_II_of_cloud_bound_X D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 hA h14a h14b
    (restCloudX_of_Y D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 hRC)

theorem theorem_II_of_split_cloud_bounds (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 : ℝ)
    (hA : tableLineDegreeFive.admitted D CLa Ck Crk Cdeg) (h14a : SourceCleaning.aux₃ D CLa' CD Csz) (h14b : PlaneGramData.aux₃ D CH CE C6 C18)
    (h6a : SourcePrimitiveIntegrality D CLa Ck Crk Cdeg) (h6b : RemainingInputsAfter D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18) : tableLineDegreeFive.ConclusionE D :=
  theorem_II_of_cloud_bound_Y D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 hA h14a h14b
    (restCloudY_of D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 h6a h6b)

end Formalism.MainNotions.Pf14
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ScaleEdges =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.Closed =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.Closed", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.SourcePrimitiveIntegrality\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.PrimStep\npublic import Formalism.SharpRestriction.GrowthBounds.Joints\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments\npublic import Formalism.SharpRestriction.GrowthBounds.PathWeight\nimport Formalism.SharpRestriction.GrowthBounds.ProjectionOfIsotypicDecomposition\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.WeightConditionFromIntegralForm\npublic import Formalism.SharpRestriction.GrowthBounds.ScaleEdges\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.TestSideCounting

open Formalism.MainNotions.G Formalism.MainNotions.Pf14

theorem cleaning_of_admitted : ∃ C : ℝ, 1 ≤ C ∧ ∀ (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ), tableLineDegreeFive.admitted D CLa Ck Crk Cdeg →
    SourceCleaning.aux₃ D C (C + 1) C := by
  obtain ⟨C, hC, H⟩ := Formalism.MainNotions.G.symbolGeneratorData.classMap_estimate_of_admissible
  refine ⟨C, hC, fun D CLa Ck Crk Cdeg hA => ?_⟩
  obtain ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, h15, h16, h17, h18, _, h20, h21, _⟩ := hA
  exact ⟨WittFrameLocaliserOrders.theta_kernel_expansion D, WittFrameLocaliserOrders.splitting_package_holds D, WittFrameLocaliserOrders.segment_statement_holds D, WittFrameLocaliserOrders.order_lemma_holds D,
    WittFrameLocaliserOrders.divisibility_of_field_lemma D h21, H D h15 h16 h17 h18 h20 h21⟩

theorem plane_gram_lemmas_of_admitted (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) (hA : tableLineDegreeFive.admitted D CLa Ck Crk Cdeg) : PlaneGramData.admitted D := by
  obtain ⟨_, _, _, _, _, _, _, _, _, _, h11, _, h12, _, h14, h15, _, _, _, _, _, _, _, h23, h24, _⟩ := hA
  have hV : Formalism.MainNotions.CovariantDegrees.ValuationLemmaField D := h12
  have hL52 : Formalism.MainNotions.CovariantDegrees.UnitProductSecondLemma D := h23
  have hL61 : Formalism.MainNotions.CovariantDegrees.DerivativeLemma D := h24
  exact ⟨Joints.isotypic_multiplicity_of_reducibility_alt D hV (GLWeightTheory.weight_condition_from_integral_form D),
    ⟨Joints.valuation_clauses_of_lattice_index D hL61.1, Joints.twisted_valuation_second_sentence D⟩,
    ⟨Joints.isotypic_coefficient_of_degree_bound D h14, Joints.third_degree_bound_gives_span_clause D h15, Joints.span_column_clauses D⟩,
    Joints.projection_of_integral_corollary D h11 hV.2 (GLWeightTheory.weight_condition_from_integral_form D), Joints.digit_identity_of_decomposition D hL52.1,
    Joints.derivation_of_lattice_index D hL61.2.1⟩

theorem plane_gram_of_admitted (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) (hA : tableLineDegreeFive.admitted D CLa Ck Crk Cdeg) {CH : ℝ} (hCH : 26 ≤ CH) :
    PlaneGramData.aux₃ D CH 2 24 60 := by
  obtain ⟨a1, a2, a3, a4, a5, a6⟩ := plane_gram_lemmas_of_admitted D CLa Ck Crk Cdeg hA
  intro p O _ _ _ _ hSet
  exact Formalism.MainNotions.PlaneGram.stmt D hCH p O hSet
    ⟨a1 p O hSet, ⟨a2.1 p O hSet, a2.2 p O hSet⟩, ⟨a3.1 p O hSet, a3.2.1 p O hSet, a3.2.2 p O hSet⟩, a4 p O hSet,
      a5 p O hSet, a6 p O hSet⟩

theorem theorem_II_closed_of_test_bound : ∃ C : ℝ, 1 ≤ C ∧ ∀ (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ), tableLineDegreeFive.admitted D CLa Ck Crk Cdeg →
    RemainingInputsAfter D CLa Ck Crk Cdeg C (C + 1) C 26 2 24 60 → tableLineDegreeFive.ConclusionE D := by
  obtain ⟨C, hC, H⟩ := cleaning_of_admitted
  refine ⟨C, hC, fun D CLa Ck Crk Cdeg hA h6b => ?_⟩
  exact theorem_II_of_split_cloud_bounds D CLa Ck Crk Cdeg C (C + 1) C 26 2 24 60 hA (H D CLa Ck Crk Cdeg hA)
    (plane_gram_of_admitted D CLa Ck Crk Cdeg hA le_rfl) (rest6a D CLa Ck Crk Cdeg) h6b

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.Closed =====
