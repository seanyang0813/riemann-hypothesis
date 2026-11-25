module

public import Formalism.SharpRestriction.CuspSpanNormBounds.LinQRawRange
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocalDiscriminantIsUnit
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowLatOfMove
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLocInB
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LastCoordMem
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocalSplitTypeMixedSecond
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ExistsOfMemSmulLat
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocFacts
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SaturatedPf
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.EmbeddingIntegerAlgebraMap

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.GeneratorChange, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.AdmissibleLocalPartner

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.GeneratorChange =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.GeneratorChange", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.LinQRawRange\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocalDiscriminantIsUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocalSplitTypeMixedSecond\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ExistsOfMemSmulLat\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace Formalism.L2.SG.Pf.GeneratorChange

open Formalism.MainNotions.S Formalism.MainNotions.S.Loc Formalism.L2.SG.Pf.AtPt

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E]
variable {M : Model F E} {V : Type} [AddCommGroup V] [Module E V] (H : HermSp M V)

theorem h_sum_left {ι : Type*} (s : Finset ι) (x : ι → V) (y : V) :
    H.h (∑ i ∈ s, x i) y = ∑ i ∈ s, H.h (x i) y := by
  induction s using Finset.induction_on with
  | empty => simp [H.h_zero_left]
  | insert a s ha ih => rw [Finset.sum_insert ha, Finset.sum_insert ha, H.h_add_left, ih]

theorem h_sum_right {ι : Type*} (s : Finset ι) (x : V) (y : ι → V) :
    H.h x (∑ i ∈ s, y i) = ∑ i ∈ s, H.h x (y i) := by

  rw [H.h_herm, h_sum_left, map_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [← H.h_herm]

theorem h_smul_right' (x y : V) (c : E) : H.h x (c • y) = M.L.cj c * H.h x y := by
  rw [H.h_herm (c • y) x, H.h_smul_left, map_mul, ← H.h_herm y x]

theorem h_comb {ι : Type*} [Fintype ι] (a b : ι → E) (v : ι → V) :
    H.h (∑ i, a i • v i) (∑ j, b j • v j) = ∑ i, ∑ j, a i * M.L.cj (b j) * H.h (v i) (v j) := by
  rw [h_sum_left]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [h_sum_right]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [H.h_smul_left, h_smul_right']; ring

section Comb

def comb {ι κ : Type*} [Fintype ι] (A : Matrix ι κ E) (v : ι → V) : κ → V := fun k => ∑ i, A i k • v i

theorem comb_comb {ι κ μ : Type*} [Fintype ι] [Fintype κ] (A : Matrix ι κ E) (B : Matrix κ μ E) (v : ι → V) :
    comb B (comb A v) = comb (A * B) v := by
  funext m
  simp only [comb, Finset.smul_sum, smul_smul, Matrix.mul_apply, Finset.sum_smul]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [mul_comm]

theorem comb_one {ι : Type*} [Fintype ι] [DecidableEq ι] (v : ι → V) : comb (1 : Matrix ι ι E) v = v := by
  funext k
  simp only [comb, Matrix.one_apply, ite_smul, one_smul, zero_smul, Finset.sum_ite_eq', Finset.mem_univ, if_true]

theorem comb_mem_spanO {ι κ : Type*} [Fintype ι] (A : Matrix ι κ E) (hA : ∀ i k, A i k ∈ M.L.O) (v : ι → V)
    (k : κ) : comb A v k ∈ Submodule.span M.L.O (Set.range v) :=
  Submodule.sum_mem _ fun i _ => (Submodule.span M.L.O (Set.range v)).smul_mem ⟨A i k, hA i k⟩
    (Submodule.subset_span ⟨i, rfl⟩)

theorem comb_mem_spanE {ι κ : Type*} [Fintype ι] (A : Matrix ι κ E) (v : ι → V) (k : κ) :
    comb A v k ∈ Submodule.span E (Set.range v) :=
  Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)

theorem spanE_comb_le {ι κ : Type*} [Fintype ι] (A : Matrix ι κ E) (v : ι → V) :
    Submodule.span E (Set.range (comb A v)) ≤ Submodule.span E (Set.range v) :=
  Submodule.span_le.2 (by rintro _ ⟨k, rfl⟩; exact comb_mem_spanE A v k)

theorem spanO_comb_le {ι κ : Type*} [Fintype ι] (A : Matrix ι κ E) (hA : ∀ i k, A i k ∈ M.L.O) (v : ι → V) :
    Submodule.span M.L.O (Set.range (comb A v)) ≤ Submodule.span M.L.O (Set.range v) :=
  Submodule.span_le.2 (by rintro _ ⟨k, rfl⟩; exact comb_mem_spanO A hA v k)

theorem linInd_comb {ι : Type*} [Fintype ι] [DecidableEq ι] (A B : Matrix ι ι E) (hAB : B * A = 1) (v : ι → V)
    (hv : LinearIndependent E v) : LinearIndependent E (comb A v) := by
  rw [Fintype.linearIndependent_iff] at hv ⊢
  intro g hg
  have h1 : ∑ i, (A.mulVec g) i • v i = 0 := by
    rw [← hg]
    simp only [comb, Finset.smul_sum, smul_smul, Matrix.mulVec, dotProduct, Finset.sum_smul]
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun x _ => by rw [mul_comm]
  have h2 := hv _ h1
  have h3 : A.mulVec g = 0 := funext h2
  intro i
  have : g = B.mulVec (A.mulVec g) := by rw [Matrix.mulVec_mulVec, hAB, Matrix.one_mulVec]
  rw [this, h3, Matrix.mulVec_zero]; rfl

end Comb

section Change

open Formalism.L2.SG.Pf.BBTie

variable {r : ℕ}

def chg (t : Term V M r) (f'' : Fin (r + 1) → V) : Term V M r := ⟨t.abelian₂, t.f, f'', t.T, t.T'⟩

theorem comb_add {ι κ : Type*} [Fintype ι] (A : Matrix ι κ E) (v w : ι → V) :
    comb A (v + w) = comb A v + comb A w := by
  funext k; simp only [comb, Pi.add_apply, smul_add, Finset.sum_add_distrib]

theorem comb_smul {ι κ : Type*} [Fintype ι] (A : Matrix ι κ E) (c : E) (v : ι → V) :
    comb A (c • v) = c • comb A v := by
  funext k; simp only [comb, Pi.smul_apply, Finset.smul_sum, smul_smul, mul_comm]

theorem comb_sub_mat {ι κ : Type*} [Fintype ι] (A B : Matrix ι κ E) (v : ι → V) :
    comb (A - B) v = comb A v - comb B v := by
  funext k; simp only [comb, Matrix.sub_apply, sub_smul, Finset.sum_sub_distrib, Pi.sub_apply]

theorem prim_comb {ι : Type} [Fintype ι] [DecidableEq ι] (abelian₂ : Submodule M.L.O V) (v : ι → V) (A B : Matrix ι ι E)
    (hA : ∀ i k, A i k ∈ M.L.O) (hB : ∀ i k, B i k ∈ M.L.O) (hAB : A * B = 1) (hBA : B * A = 1)
    (hv : H.Prim abelian₂ v) : H.Prim abelian₂ (comb A v) := by
  obtain ⟨hmem, hli, hpr⟩ := hv
  refine ⟨fun k => ?_, linInd_comb A B hBA v hli, fun x hx hxE => ?_⟩
  · exact (Submodule.span_le.2 (by rintro _ ⟨i, rfl⟩; exact hmem i)) (comb_mem_spanO A hA v k)
  · have h1 := hpr x hx (spanE_comb_le A v hxE)
    have hv' : v = comb B (comb A v) := by rw [comb_comb, hAB, comb_one]
    rw [hv'] at h1
    exact spanO_comb_le B hB _ h1

theorem frame_comb (abelian₂ : Submodule M.L.O V) (f' : Fin (r + 1) → V) (T : F)
    (C Ci : Matrix (Fin (r + 1)) (Fin (r + 1)) E) (hC0 : ∀ a b, b < a → C a b = 0) (hC1 : ∀ a, C a a = 1)
    (hCO : ∀ a b, C a b ∈ M.L.O) (hCiO : ∀ a b, Ci a b ∈ M.L.O) (hCCi : C * Ci = 1) (hCiC : Ci * C = 1)
    (hF : H.IsFrame abelian₂ r f' T) : H.IsFrame abelian₂ r (comb C f') T := by
  obtain ⟨hP, hrel, hzz, hT1, hT2⟩ := hF
  refine ⟨prim_comb H abelian₂ f' C Ci hCO hCiO hCCi hCiC hP, fun a b hab => ?_, ?_, hT1, hT2⟩
  · rw [show comb C f' a = ∑ i, C i a • f' i from rfl, show comb C f' b = ∑ j, C j b • f' j from rfl, h_comb]
    refine Finset.sum_eq_zero fun i _ => Finset.sum_eq_zero fun j _ => ?_
    by_cases hij : i = Fin.last r ∧ j = Fin.last r
    · obtain ⟨rfl, rfl⟩ := hij
      rcases hab with ha | hb
      · rw [hC0 _ _ (lt_of_le_of_ne (Fin.le_last a) ha), zero_mul, zero_mul]
      · rw [hC0 _ _ (lt_of_le_of_ne (Fin.le_last b) hb), map_zero, mul_zero, zero_mul]
    · rw [hrel i j (not_and_or.1 hij), mul_zero]
  · rw [show comb C f' (Fin.last r) = ∑ i, C i (Fin.last r) • f' i from rfl, h_comb,
      Finset.sum_eq_single (Fin.last r)]
    · rw [Finset.sum_eq_single (Fin.last r)]
      · rw [hC1, map_one, one_mul, one_mul, hzz]
      · intro j _ hj; rw [hrel _ _ (Or.inr hj), mul_zero]
      · simp
    · intro i _ hi
      exact Finset.sum_eq_zero fun j _ => by rw [hrel _ _ (Or.inl hi), mul_zero]
    · simp

theorem zhat_comb (f f' : Fin (r + 1) → V) (C : Matrix (Fin (r + 1)) (Fin (r + 1)) E) :
    H.Zhat f (comb C f') = H.Zhat f f' * C := by
  ext a b
  simp only [HermSp.Zhat, Matrix.of_apply, Matrix.mul_apply, comb]
  rw [h_sum_left]
  exact Finset.sum_congr rfl fun c _ => by rw [H.h_smul_left, mul_comm]

theorem dl_comb (f f' : Fin (r + 1) → V) (C : Matrix (Fin (r + 1)) (Fin (r + 1)) E)
    (hC0 : ∀ a b, b < a → C a b = 0) (hC1 : ∀ a, C a a = 1) (l : ℕ) :
    H.Dl f (comb C f') l = H.Dl f f' l := by
  unfold HermSp.Dl
  split_ifs with hl
  · rw [zhat_comb, bt_lead_tri hl _ _ hC0, Matrix.det_mul, bt_det_unitri_sub hl C hC0 hC1, mul_one]
  · rfl

end Change

section Main

open Formalism.L2.SG.Pf.BBTie

variable {r : ℕ}



theorem gen_change (t : Term V M r) (C Ci : Matrix (Fin (r + 1)) (Fin (r + 1)) E) (hC0 : ∀ a b, b < a → C a b = 0)
    (hC1 : ∀ a, C a a = 1) (hCO : ∀ a b, C a b ∈ M.L.O) (hCiO : ∀ a b, Ci a b ∈ M.L.O) (hCCi : C * Ci = 1)
    (hCiC : Ci * C = 1) (hAdm : ∀ g, M.split = some g → H.Admissible g (chg t (comb C t.f')))
    (hgen : H.IsGeneric t) : H.IsGeneric (chg t (comb C t.f')) := by
  obtain ⟨⟨hSD, hF, hF', hD1, hG, hmodeG⟩, hMM⟩ := hgen
  have hDl : ∀ l, H.Dl t.f (comb C t.f') l = H.Dl t.f t.f' l := dl_comb H t.f t.f' C hC0 hC1
  refine ⟨⟨hSD, hF, frame_comb H t.abelian₂ t.f' t.T' C Ci hC0 hC1 hCO hCiO hCCi hCiC hF', ?_, ?_, ?_⟩, ?_⟩
  · show IsUnit (H.Dl t.f (comb C t.f') (r + 1)); rw [hDl]; exact hD1
  · show H.Gdet t.f (comb C t.f') t.T t.T' ≠ 0
    unfold HermSp.Gdet; rw [hDl, hDl]; exact hG
  · intro g hg
    obtain ⟨h1, h2, -⟩ := hmodeG g hg
    exact ⟨h1, h2, hAdm g hg⟩
  · rcases hM : M.split with _ | g
    ·
      have hMM' : H.Prim t.abelian₂ (Sum.elim t.f t.f') := by simpa only [HermSp.MMfam, hM] using hMM
      show H.Prim t.abelian₂ (H.MMfam (chg t (comb C t.f')))
      simp only [HermSp.MMfam, hM]
      have e : (Sum.elim t.f (comb C t.f') : Fin (r + 1) ⊕ Fin (r + 1) → V) =
          comb (Matrix.fromBlocks 1 0 0 C) (Sum.elim t.f t.f') := by
        funext k
        rcases k with a | b
        · simp [comb, Matrix.fromBlocks, Fintype.sum_sum_type, Matrix.one_apply]
        · simp [comb, Matrix.fromBlocks, Fintype.sum_sum_type]
      show H.Prim t.abelian₂ (Sum.elim t.f (comb C t.f'))
      rw [e]
      refine prim_comb H _ _ _ (Matrix.fromBlocks 1 0 0 Ci) ?_ ?_ ?_ ?_ hMM'
      · rintro (i | i) (k | k) <;> simp [Matrix.fromBlocks, Matrix.one_apply] <;> first | (split_ifs <;> simp) | exact hCO _ _
      · rintro (i | i) (k | k) <;> simp [Matrix.fromBlocks, Matrix.one_apply] <;> first | (split_ifs <;> simp) | exact hCiO _ _
      · rw [Matrix.fromBlocks_multiply]; simp [hCCi, Matrix.fromBlocks_one]
      · rw [Matrix.fromBlocks_multiply]; simp [hCiC, Matrix.fromBlocks_one]
    ·
      set κ : E := algebraMap F E ((g.q : F)⁻¹) with hκdef
      set κ' : E := algebraMap F E (g.q : F) with hκ'def
      have hq0 : (g.q : F) ≠ 0 := fun h => g.q_irr.ne_zero (Subtype.ext h)
      have hκκ' : κ * κ' = 1 := by rw [hκdef, hκ'def, ← map_mul, inv_mul_cancel₀ hq0, map_one]
      have hMM' : H.Prim t.abelian₂ (Sum.elim t.f (fun a => κ • (t.f' a - t.f a))) := by
        simpa only [HermSp.MMfam, hM] using hMM
      simp only [HermSp.MMfam, hM]
      show H.Prim t.abelian₂ (Sum.elim t.f (fun a => κ • (comb C t.f' a - t.f a)))
      set m : Fin (r + 1) → V := fun a => κ • (t.f' a - t.f a) with hmdef
      set m'' : Fin (r + 1) → V := fun a => κ • (comb C t.f' a - t.f a) with hm''def
      have hsub : ∀ (A : Matrix (Fin (r + 1)) (Fin (r + 1)) E) (v w : Fin (r + 1) → V),
          comb A (v - w) = comb A v - comb A w := by
        intro A v w; funext k; simp only [comb, Pi.sub_apply, smul_sub, Finset.sum_sub_distrib]
      have hrel : m'' = comb C m + κ • comb (C - 1) t.f := by
        have e1 : m = κ • (t.f' - t.f) := rfl
        have e2 : m'' = κ • (comb C t.f' - t.f) := rfl
        rw [e1, e2, comb_smul, hsub, comb_sub_mat, comb_one, ← smul_add]
        congr 1
        abel
      have hciM : comb Ci m'' = m + κ • comb (1 - Ci) t.f := by
        rw [hrel, comb_add, comb_comb, hCCi, comb_one, comb_smul, comb_comb, Matrix.sub_mul, hCCi, Matrix.one_mul]
      have hm''L : ∀ b, m'' b ∈ t.abelian₂ := by
        intro b
        obtain ⟨y, hy, hxy⟩ := _root_.Formalism.L2.SG.LsDatumA.exists_of_mem_smulLat H (hAdm g hM b)
        have e : m'' b = y := by
          show κ • (comb C t.f' b - t.f b) = y
          have : comb C t.f' b - t.f b = κ' • y := hxy
          rw [this, smul_smul, hκκ', one_smul]
        rw [e]; exact hy
      set v : Fin (r + 1) ⊕ Fin (r + 1) → V := Sum.elim t.f m with hvdef
      set w : Fin (r + 1) ⊕ Fin (r + 1) → V := Sum.elim t.f m'' with hwdef
      set A : Matrix (Fin (r + 1) ⊕ Fin (r + 1)) (Fin (r + 1) ⊕ Fin (r + 1)) E :=
        Matrix.fromBlocks 1 (κ • (C - 1)) 0 C with hAdef
      set B' : Matrix (Fin (r + 1) ⊕ Fin (r + 1)) (Fin (r + 1) ⊕ Fin (r + 1)) E :=
        Matrix.fromBlocks 1 (-(κ • (C - 1)) * Ci) 0 Ci with hB'def
      have hB'A : B' * A = 1 := by
        rw [hB'def, hAdef, Matrix.fromBlocks_multiply]
        simp only [Matrix.one_mul, Matrix.mul_one, Matrix.mul_zero, Matrix.zero_mul, add_zero, zero_add,
          hCiC, Matrix.mul_assoc, Matrix.neg_mul]
        rw [add_neg_cancel, Matrix.fromBlocks_one]
      have hwA : w = comb A v := by
        funext k
        rcases k with a | b
        · simp [hwdef, hvdef, hAdef, comb, Matrix.fromBlocks, Fintype.sum_sum_type, Matrix.one_apply]
        · have h1 := congrFun hrel b
          simp only [hwdef, hvdef, hAdef, comb, Fintype.sum_sum_type, Sum.elim_inl, Sum.elim_inr,
            Matrix.fromBlocks_apply₁₂, Matrix.fromBlocks_apply₂₂] at h1 ⊢
          rw [h1]
          simp only [comb, Finset.smul_sum, Matrix.smul_apply, smul_eq_mul, mul_smul, Pi.add_apply, Pi.smul_apply]
          abel
      rw [hwA]
      refine ⟨fun k => ?_, linInd_comb A B' hB'A v hMM'.2.1, fun x hx hxE => ?_⟩
      · rw [← hwA]
        rcases k with a | b
        · exact hF.1.1 a
        · exact hm''L b
      · have hx' : x ∈ Submodule.span E (Set.range v) := spanE_comb_le A v hxE
        have hxO := hMM'.2.2 x hx hx'
        rw [← hwA]
        refine (Submodule.span_le.2 ?_) hxO
        rintro _ ⟨k, rfl⟩
        rcases k with i | j
        · exact Submodule.subset_span ⟨Sum.inl i, rfl⟩
        · have hrw : Set.range m'' ⊆ Set.range w := by rintro _ ⟨b, rfl⟩; exact ⟨Sum.inr b, rfl⟩
          have hrf : Set.range t.f ⊆ Set.range w := by rintro _ ⟨b, rfl⟩; exact ⟨Sum.inl b, rfl⟩
          have hc : comb Ci m'' j ∈ Submodule.span M.L.O (Set.range w) :=
            Submodule.span_mono hrw (comb_mem_spanO Ci hCiO m'' j)
          have hcL : comb Ci m'' j ∈ t.abelian₂ :=
            (Submodule.span_le.2 (by rintro _ ⟨b, rfl⟩; exact hm''L b)) (comb_mem_spanO Ci hCiO m'' j)
          have hyL : (κ • comb (1 - Ci) t.f) j ∈ t.abelian₂ := by
            have e : (κ • comb (1 - Ci) t.f) j = comb Ci m'' j - m j := by
              rw [hciM, Pi.add_apply]; abel
            rw [e]; exact sub_mem hcL (hMM'.1 (Sum.inr j))
          have hyE : (κ • comb (1 - Ci) t.f) j ∈ Submodule.span E (Set.range t.f) :=
            Submodule.smul_mem _ _ (comb_mem_spanE _ t.f j)
          have hyO := Submodule.span_mono hrf (hF.1.2.2 _ hyL hyE)
          have e : v (Sum.inr j) = comb Ci m'' j - (κ • comb (1 - Ci) t.f) j := by
            show m j = _
            rw [hciM, Pi.add_apply]; abel
          rw [e]
          exact sub_mem hc hyO

end Main

end Formalism.L2.SG.Pf.GeneratorChange
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.GeneratorChange =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.AdmissibleLocalPartner =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.AdmissibleLocalPartner", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.GeneratorChange\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowLatOfMove\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FStarLocInB\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LastCoordMem\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocFacts\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SaturatedPf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.EmbeddingIntegerAlgebraMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermDef Formalism.L2.SG.DataCut Formalism.L2.SG.LsDatumB
  Formalism.L2.SG.TermLoc Formalism.L2.SG.Pf.PCount Formalism.L2.SG.Pf.FrameGlobalPatching Formalism.L2.SG.Saturated
open Formalism.L2.SG.Pf.AtPt Formalism.L2.SG.Pf.BBTie Formalism.L2.SG.Pf.GeneratorChange

namespace Formalism.L2.SG.Pf.FrameGlobalPatching.FStar

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section Cmat

variable {D : Formalism.BasicNotions.D7} (Zd : LocDat D) (p : PlF D)

def uFi (b : Fin (D.R.rS + 1)) : (D.s.atP p).Ep := (((uF_unit Zd p b).unit⁻¹ : (D.s.atP p).Epˣ) : (D.s.atP p).Ep)

theorem uFi_mul (b : Fin (D.R.rS + 1)) : uFi Zd p b * uF Zd p b = 1 :=
  IsUnit.val_inv_mul (uF_unit Zd p b)

theorem mul_uFi (b : Fin (D.R.rS + 1)) : uF Zd p b * uFi Zd p b = 1 := by
  rw [mul_comm]; exact uFi_mul Zd p b

def Cm (ξ : Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) (𝓞 D.host.E)) :
    Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) (D.s.atP p).Ep :=
  Matrix.diagonal (uFi Zd p) * ξ.map (fun x => (D.s.atP p).ιE (x : D.host.E)) * Matrix.diagonal (uF Zd p)

theorem Cm_apply (ξ : Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) (𝓞 D.host.E)) (c b : Fin (D.R.rS + 1)) :
    Cm Zd p ξ c b = uFi Zd p c * (D.s.atP p).ιE (ξ c b : D.host.E) * uF Zd p b := by
  simp [Cm, Matrix.mul_diagonal, Matrix.diagonal_mul]

theorem Cm_mul (ξ η : Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) (𝓞 D.host.E)) :
    Cm Zd p ξ * Cm Zd p η = Cm Zd p (ξ * η) := by
  ext c b
  rw [Matrix.mul_apply, Cm_apply, Matrix.mul_apply]
  simp only [Cm_apply]
  push_cast

  rw [map_sum, Finset.mul_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun d _ => ?_
  have := uFi_mul Zd p d
  rw [map_mul]
  linear_combination (uFi Zd p c * (D.s.atP p).ιE (ξ c d : D.host.E) * (D.s.atP p).ιE (η d b : D.host.E) *
    uF Zd p b) * this

theorem Cm_one : Cm Zd p 1 = 1 := by
  ext c b
  rw [Cm_apply]
  by_cases h : c = b
  · subst h; simp [uFi_mul]
  · simp [Matrix.one_apply_ne h]

theorem comb_Cm {T' : D.host.E} (F' : LFlag (D.sp.Y 0) D.R.rS T')
    (ξ : Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) (𝓞 D.host.E)) (b : Fin (D.R.rS + 1)) :
    comb (Cm Zd p ξ) (locF' Zd p F') b = uF Zd p b • baseChange₂ D p (frameAct (frame F') ξ b) := by
  simp only [comb, Cm_apply, locF'_eq, frameAct]

  rw [map_sum, Finset.smul_sum]
  refine Finset.sum_congr rfl fun c _ => ?_
  rw [Formalism.L2.SG.Pf.LocalDenominators.baseChange_smul₂, smul_smul, smul_smul]
  congr 1
  have := uFi_mul Zd p c
  linear_combination ((D.s.atP p).ιE (ξ c b : D.host.E) * uF Zd p b) * this

end Cmat

section admitted

variable {D : Formalism.BasicNotions.D7} (Zd : LocDat D) (p : PlF D)

theorem ratio_mem (c b : Fin (D.R.rS + 1)) (h : c ≤ b) : uFi Zd p c * uF Zd p b ∈ (Zd.M p).L.O := by
  obtain ⟨k, hk, hkb⟩ := bt_frFac_step Zd p (Formalism.L2.SG.Pf.locDiffC_holds D Zd) c b h
  have h1 := uFi_mul Zd p c
  have h2 := sgnP'_sq p c
  have e : uFi Zd p c * uF Zd p b = sgnP' D p b * k * sgnP' D p c := by
    unfold uF at h1 ⊢
    rw [hkb]
    linear_combination (sgnP' D p b * k * sgnP' D p c) * h1 -
      (sgnP' D p b * k * uFi Zd p c * frFac Zd.δ p c) * h2
  rw [e]
  exact Subring.mul_mem _ (Subring.mul_mem _ (bt_sq_one_mem Zd p (sgnP'_sq p b)) hk)
    (bt_sq_one_mem Zd p (sgnP'_sq p c))

theorem Cm_props (ξ : Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) (𝓞 D.host.E))
    (h0 : ∀ a b, b < a → ξ a b = 0) (h1 : ∀ a, ξ a a = 1) :
    (∀ a b, b < a → Cm Zd p ξ a b = 0) ∧ (∀ a, Cm Zd p ξ a a = 1) ∧ (∀ a b, Cm Zd p ξ a b ∈ (Zd.M p).L.O) := by
  refine ⟨fun a b hab => ?_, fun a => ?_, fun a b => ?_⟩
  · rw [Cm_apply, h0 a b hab]; simp
  · rw [Cm_apply, h1 a]; simp [uFi_mul]
  · rw [Cm_apply]
    by_cases hab : b < a
    · rw [h0 a b hab]; simp
    · rw [show uFi Zd p a * (D.s.atP p).ιE (ξ a b : D.host.E) * uF Zd p b =
        (uFi Zd p a * uF Zd p b) * (D.s.atP p).ιE (ξ a b : D.host.E) by ring]
      exact Subring.mul_mem _ (ratio_mem Zd p a b (not_lt.1 hab)) (bt_iota_int Zd p _)

end admitted

section Adm2

variable {D : Formalism.BasicNotions.D7} (Zd : LocDat D) (p : PlF D)

theorem typed_data (g : Loc.SplitG (Zd.M p).L) (hg : (Zd.M p).split = some g) :
    ∃ sg, (D.s.atP p).split = some sg ∧ g.q = sg.q ∧ g.e = sg.e := by
  have hagree := (Zd.agree p).2.2.2.2.2
  rcases hs : (D.s.atP p).split with _ | sg
  · rw [hg, hs] at hagree; exact hagree.elim
  · rw [hg, hs] at hagree; exact ⟨sg, rfl, hagree.2, hagree.1⟩

theorem admissible_local_term {u u' : D.what₂.Word} (F0 : FlagG (VS D) D.R.rS (CntLocal.Tn u))
    (Λ : Submodule (𝓞 D.host.E) (VS D).V) (F' : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E))
    (hR : IsRowLat D F0 Λ) (hA : IsAdmissible Λ (gS D) (lf D F0) F') (g : Loc.SplitG (Zd.M p).L)
    (hg : (Zd.M p).split = some g) :
    (locH Zd p).Admissible g (locTerm Zd p Λ (lf D F0) F' (Tu D u) (Tu D u')) := by
  have hE := Formalism.L2.SG.Pf.locEqC_holds D Zd
  have hD := Formalism.L2.SG.Pf.locDiffC_holds D Zd
  have hFix := hR.2.1
  have hΛfg : Λ.FG := hFix.1.fg
  obtain ⟨sg, hs, hgq, -⟩ := typed_data Zd p g hg
  have hin : Loc.resChar p ∈ ({D.host.g 0, D.host.g 1} : Finset ℕ) := by rw [← D.s_split p, hs]; rfl
  have hgP : ∀ P : IsDedekindDomain.HeightOneSpectrum (𝓞 D.host.E),
      P.asIdeal.comap (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) = p.asIdeal → (gS D : 𝓞 D.host.E) ∈ P.asIdeal :=
    fun P hP => (bt_g_mem_iff p P hP).2 hin
  have hφ := bt_typed_frFac Zd hE hD p F0 Λ hΛfg hR.2.2 hFix.2.2.2 hgP
  have hO := bt_typed_O Zd hD p F0 Λ F' (Tu D u) (Tu D u') hR.2.2 sg hs hφ
  have hξ : AdmWit Λ (gS D) (lf D F0) F' (admXi D Λ (lf D F0) F') := by
    unfold admXi; rw [dite_eq_left hA]; exact hA.choose_spec
  have hMΛ := bt_typed_Mle Zd hE p F0 Λ F' hΛfg hFix.2.2.1 hξ hgP
  intro b
  have hmem : algebraMap (D.s.atP p).Fp (D.s.atP p).Ep ((g.q : (D.s.atP p).Fp)⁻¹) •
      ((locTerm Zd p Λ (lf D F0) F' (Tu D u) (Tu D u')).f' b - (locTerm Zd p Λ (lf D F0) F' (Tu D u) (Tu D u')).f b)
        ∈ lattice₂ D Zd.M p Λ := by
    apply hMΛ
    rw [← hO, hgq]
    exact Submodule.subset_span (Or.inr ⟨b, rfl⟩)
  have e : (locTerm Zd p Λ (lf D F0) F' (Tu D u) (Tu D u')).f' b - (locTerm Zd p Λ (lf D F0) F' (Tu D u) (Tu D u')).f b =
      algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (g.q : (D.s.atP p).Fp) •
      (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep ((g.q : (D.s.atP p).Fp)⁻¹) •
        ((locTerm Zd p Λ (lf D F0) F' (Tu D u) (Tu D u')).f' b - (locTerm Zd p Λ (lf D F0) F' (Tu D u) (Tu D u')).f b)) := by
    rw [smul_smul, ← map_mul, mul_inv_cancel₀ (bt_q_ne Zd p g), map_one, one_smul]
  rw [e]
  exact Submodule.subset_span ⟨_, hmem, rfl⟩



theorem admissible_local_partner {u u' : D.what₂.Word} (F0 : FlagG (VS D) D.R.rS (CntLocal.Tn u))
    (Λ : Submodule (𝓞 D.host.E) (VS D).V) (F' : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E))
    (hR : IsRowLat D F0 Λ) (hA1 : AdmWit Λ (gS D) (lf D F0) F' 1) (g : Loc.SplitG (Zd.M p).L)
    (hg : (Zd.M p).split = some g) :
    (locH Zd p).Admissible g ⟨lattice₂ D Zd.M p Λ, (locTerm Zd p Λ (lf D F0) F' (Tu D u) (Tu D u')).f, locF' Zd p F',
      (locTerm Zd p Λ (lf D F0) F' (Tu D u) (Tu D u')).T, (locTerm Zd p Λ (lf D F0) F' (Tu D u) (Tu D u')).T'⟩ := by
  have hE := Formalism.L2.SG.Pf.locEqC_holds D Zd
  have hD := Formalism.L2.SG.Pf.locDiffC_holds D Zd
  have hFix := hR.2.1
  have hΛfg : Λ.FG := hFix.1.fg
  obtain ⟨sg, hs, hgq, -⟩ := typed_data Zd p g hg
  have hin : Loc.resChar p ∈ ({D.host.g 0, D.host.g 1} : Finset ℕ) := by rw [← D.s_split p, hs]; rfl
  have hgP : ∀ P : IsDedekindDomain.HeightOneSpectrum (𝓞 D.host.E),
      P.asIdeal.comap (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) = p.asIdeal → (gS D : 𝓞 D.host.E) ∈ P.asIdeal :=
    fun P hP => (bt_g_mem_iff p P hP).2 hin
  have hφ := bt_typed_frFac Zd hE hD p F0 Λ hΛfg hR.2.2 hFix.2.2.2 hgP
  have hκ := (bt_kappa Zd p sg hs).1
  have hA : IsAdmissible Λ (gS D) (lf D F0) F' := ⟨1, hA1⟩
  have hξ : AdmWit Λ (gS D) (lf D F0) F' (admXi D Λ (lf D F0) F') := by
    unfold admXi; rw [dite_eq_left hA]; exact hA.choose_spec
  have hMΛ := bt_typed_Mle Zd hE p F0 Λ F' hΛfg hFix.2.2.1 hξ hgP
  have hXfg : (XLam Λ (lf D F0)).FG := bt_fg_le hΛfg inf_le_left
  have hEq : lattice₂ D Zd.M p (Mplus Λ (gS D) (lf D F0) F' 1) =
      lattice₂ D Zd.M p (Mplus Λ (gS D) (lf D F0) F' (admXi D Λ (lf D F0) F')) :=
    (hE p _ _ (bt_Mplus_fg 1 hXfg) (bt_Mplus_fg _ hXfg)).2 fun P hP =>
      m_plus_independent (gS D) Λ (lf D F0) F' hFix.2.2.1 hFix.2.2.2 P (hgP P hP) 1 _ hA1 hξ
  have hss : ∀ a, sgnP' D p a = sgnP D p a := fun a => by simp only [sgnP', hs]
  have hgS0 : ((gS D : ℕ) : D.host.E) ≠ 0 := by
    have : gS D ≠ 0 := by simp [gS, (D.host.g_prime 0).ne_zero, (D.host.g_prime 1).ne_zero]
    exact_mod_cast this
  intro b
  set x : (VS D).V := ((gS D : D.host.E))⁻¹ • (frame F' b - frameAct (frame (lf D F0)) 1 b) with hxdef
  have hxM : x ∈ Mplus Λ (gS D) (lf D F0) F' 1 :=
    Submodule.subset_span (Set.mem_union_right _ ⟨b, rfl⟩)
  have hx : baseChange₂ D p x ∈ lattice₂ D Zd.M p Λ := hMΛ (hEq ▸ Submodule.subset_span ⟨x, hxM, rfl⟩)
  have hgx : frame F' b - frame (lf D F0) b = ((gS D : ℕ) : D.host.E) • x := by
    rw [hxdef, bt_frameAct_one, smul_smul, mul_inv_cancel₀ hgS0, one_smul]
  have hsc : sgnP D p b * frFac Zd.δ p b * (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep ((sg.q : (D.s.atP p).Fp)⁻¹) *
      (D.s.atP p).ιE ((gS D : ℕ) : D.host.E)) ∈ (Zd.M p).L.O :=
    Subring.mul_mem _ (Subring.mul_mem _ (bt_sq_one_mem Zd p (localSign_sq p b)) (hφ b).1) hκ
  have e : locF' Zd p F' b - (locTerm Zd p Λ (lf D F0) F' (Tu D u) (Tu D u')).f b =
      algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (g.q : (D.s.atP p).Fp) •
        ((sgnP D p b * frFac Zd.δ p b * (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep ((sg.q : (D.s.atP p).Fp)⁻¹) *
          (D.s.atP p).ιE ((gS D : ℕ) : D.host.E))) • baseChange₂ D p x) := by
    show (sgnP' D p b * frFac Zd.δ p b) • baseChange₂ D p (frame F' b) -
      (sgnP D p b * frFac Zd.δ p b) • baseChange₂ D p (frame (lf D F0) b) = _
    rw [hss, ← smul_sub, ← map_sub, hgx, Formalism.L2.SG.Pf.LocalDenominators.baseChange_smul₂, smul_smul, smul_smul, hgq]
    congr 1
    have hq0 : (sg.q : (D.s.atP p).Fp) ≠ 0 := fun h => sg.q_irr.ne_zero (Subtype.ext h)
    have : algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (sg.q : (D.s.atP p).Fp) *
        algebraMap (D.s.atP p).Fp (D.s.atP p).Ep ((sg.q : (D.s.atP p).Fp)⁻¹) = 1 := by
      rw [← map_mul, mul_inv_cancel₀ hq0, map_one]
    linear_combination (-(sgnP D p b * frFac Zd.δ p b * (D.s.atP p).ιE ((gS D : ℕ) : D.host.E))) * this
  rw [e]
  exact Submodule.subset_span ⟨_, smul_mem_O Zd p hsc hx, rfl⟩

end Adm2

section Main

variable {D : Formalism.BasicNotions.D7} (Zd : LocDat D) {u u' : D.what₂.Word} {F0 : FlagG (VS D) D.R.rS (CntLocal.Tn u)}
  {what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V)}

theorem locTerm_f'_eq (p : PlF D) (Λ : Submodule (𝓞 D.host.E) (VS D).V)
    (F' : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E)) :
    (locTerm Zd p Λ (lf D F0) F' (Tu D u) (Tu D u')).f' =
      comb (Cm Zd p (admXi D Λ (lf D F0) F')⁻¹) (locF' Zd p F') := by
  funext b
  rw [comb_Cm]
  rfl

theorem Cm_inv_props (p : PlF D) (ξ : Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) (𝓞 D.host.E))
    (h0 : ∀ a b, b < a → ξ a b = 0) (h1 : ∀ a, ξ a a = 1) :
    Cm Zd p ξ⁻¹ * Cm Zd p ξ = 1 ∧ Cm Zd p ξ * Cm Zd p ξ⁻¹ = 1 ∧
      (∀ a b, b < a → ξ⁻¹ a b = 0) ∧ (∀ a, ξ⁻¹ a a = 1) := by
  have hdet : IsUnit ξ.det := bt_unitri_det ξ h0 h1
  have hup : IsUp ξ⁻¹ := isUp_inv ⟨h1, fun a b hab => h0 b a hab⟩
  refine ⟨?_, ?_, fun a b hab => hup.2 b a hab, hup.1⟩
  · rw [Cm_mul, Matrix.nonsing_inv_mul ξ hdet, Cm_one]
  · rw [Cm_mul, Matrix.mul_nonsing_inv ξ hdet, Cm_one]

theorem genXiRev_holds : GenXiRev Zd u' F0 := by
  intro Λ F' p hR hA1 _ hgen
  set ξ := admXi D Λ (lf D F0) F' with hξdef
  have hu := admissibility_witness_unitriangular Λ (lf D F0) F'
  obtain ⟨hii, hii', hi0, hi1⟩ := Cm_inv_props Zd p ξ hu.1 hu.2
  obtain ⟨hC0, hC1, hCO⟩ := Cm_props Zd p ξ⁻¹ hi0 hi1
  obtain ⟨-, -, hCiO⟩ := Cm_props Zd p ξ hu.1 hu.2
  set t₁ : Loc.Term (Vp D p) (Zd.M p) D.R.rS := ⟨lattice₂ D Zd.M p Λ, (locTerm Zd p Λ (lf D F0) F' (Tu D u) (Tu D u')).f,
    locF' Zd p F', (locTerm Zd p Λ (lf D F0) F' (Tu D u) (Tu D u')).T,
    (locTerm Zd p Λ (lf D F0) F' (Tu D u) (Tu D u')).T'⟩ with ht₁
  have e : locTerm Zd p Λ (lf D F0) F' (Tu D u) (Tu D u') = chg t₁ (comb (Cm Zd p ξ⁻¹) t₁.f') := by
    show _ = (⟨_, _, comb (Cm Zd p ξ⁻¹) (locF' Zd p F'), _, _⟩ : Loc.Term (Vp D p) (Zd.M p) D.R.rS)
    rw [← locTerm_f'_eq]
    rfl
  rw [e]
  refine gen_change (locH Zd p) t₁ (Cm Zd p ξ⁻¹) (Cm Zd p ξ) hC0 hC1 hCO hCiO hii hii' (fun g hg => ?_) hgen
  rw [← e]
  exact admissible_local_term Zd p F0 Λ F' hR ⟨1, hA1⟩ g hg

theorem genXi_holds : GenXi Zd u u' F0 what₂ := by
  intro hrows γ F' p hA1 _ hgen
  have hR := hrows.1 γ.lam γ.mem
  set ξ := admXi D γ.lam (lf D F0) F' with hξdef
  have hu := admissibility_witness_unitriangular γ.lam (lf D F0) F'
  obtain ⟨hii, hii', hi0, hi1⟩ := Cm_inv_props Zd p ξ hu.1 hu.2
  obtain ⟨-, -, hCiO⟩ := Cm_props Zd p ξ⁻¹ hi0 hi1
  obtain ⟨hC0, hC1, hCO⟩ := Cm_props Zd p ξ hu.1 hu.2
  set t₂ := locTerm Zd p γ.lam (lf D F0) F' (Tu D u) (Tu D u') with ht₂
  have e : (⟨lattice₂ D Zd.M p γ.lam, (tLoc Zd p γ).f, locF' Zd p F', (tLoc Zd p γ).T, (tLoc Zd p γ).T'⟩ :
      Loc.Term (Vp D p) (Zd.M p) D.R.rS) = chg t₂ (comb (Cm Zd p ξ) t₂.f') := by
    show _ = (⟨_, _, comb (Cm Zd p ξ) t₂.f', _, _⟩ : Loc.Term (Vp D p) (Zd.M p) D.R.rS)
    rw [ht₂, locTerm_f'_eq, comb_comb, hii, comb_one]
    rfl
  rw [e]
  refine gen_change (locH Zd p) t₂ (Cm Zd p ξ) (Cm Zd p ξ⁻¹) hC0 hC1 hCO hCiO hii' hii (fun g hg => ?_) hgen
  rw [← e]
  exact admissible_local_partner Zd p F0 γ.lam F' hR hA1 g hg

end Main

end Formalism.L2.SG.Pf.FrameGlobalPatching.FStar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.AdmissibleLocalPartner =====
