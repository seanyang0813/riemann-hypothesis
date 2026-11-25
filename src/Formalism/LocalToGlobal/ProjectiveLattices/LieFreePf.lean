module

public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Mathlib.LinearAlgebra.Matrix.Block
public import Formalism.LocalToGlobal.ProjectiveLattices.IntFrames
public import Formalism.LocalToGlobal.ProjectiveLattices.LieRel
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniversalCharts.UnivChartLoc
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RankPf

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.ProjectiveLattices.LieAlg, Formalism.LocalToGlobal.ProjectiveLattices.LieFreePf

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.LieAlg =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.LieAlg", "h": "module\n\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.LinearAlgebra.Matrix.Block\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Pj.LieAlg

open Submodule

variable {V K : Type} [CommRing V] [IsDomain V] [IsDiscreteValuationRing V] [Field K] [Algebra V K]
  [IsFractionRing V K]

theorem exists_divisor (s : Finset K) : ∃ t : K, (t = 0 → ∀ x ∈ s, x = 0) ∧ (t = 0 ∨ t ∈ s) ∧
    ∀ x ∈ s, ∃ r : V, x = algebraMap V K r * t := by
  classical
  induction s using Finset.induction_on with
  | empty => exact ⟨0, by simp, Or.inl rfl, by simp⟩
  | insert a s ha ih =>
    obtain ⟨t, h0, hts, hdiv⟩ := ih
    by_cases ht : t = 0
    · have hs := h0 ht
      refine ⟨a, fun hz x hx => ?_, Or.inr (Finset.mem_insert_self a s), fun x hx => ?_⟩
      · rcases Finset.mem_insert.1 hx with hx | hx
        · rw [hx]; exact hz
        · exact hs x hx
      · rcases Finset.mem_insert.1 hx with hx | hx
        · exact ⟨1, by simp [hx]⟩
        · exact ⟨0, by simp [hs x hx]⟩
    · have hts' : t = 0 ∨ t ∈ insert a s := by
        rcases hts with h | h
        · exact Or.inl h
        · exact Or.inr (Finset.mem_insert_of_mem h)
      by_cases haz : a = 0
      · refine ⟨t, fun h => absurd h ht, hts', fun x hx => ?_⟩
        rcases Finset.mem_insert.1 hx with hx | hx
        · exact ⟨0, by simp [hx, haz]⟩
        · exact hdiv x hx
      · rcases (ValuationRing.iff_isInteger_or_isInteger V K).1 inferInstance (a / t) with ⟨r, hr⟩ | ⟨r, hr⟩
        · refine ⟨t, fun h => absurd h ht, hts', fun x hx => ?_⟩
          rcases Finset.mem_insert.1 hx with hx | hx
          · exact ⟨r, by rw [hx, hr]; field_simp⟩
          · exact hdiv x hx
        · refine ⟨a, fun h => absurd h haz, Or.inr (Finset.mem_insert_self a s), fun x hx => ?_⟩
          rcases Finset.mem_insert.1 hx with hx | hx
          · exact ⟨1, by simp [hx]⟩
          · obtain ⟨q, hq⟩ := hdiv x hx
            refine ⟨q * r, ?_⟩
            rw [hq, map_mul, hr]
            field_simp

theorem fg_eq_span_singleton (S : Submodule V K) (hS : S.FG) : ∃ t : K, S = span V {t} := by
  classical
  obtain ⟨s, rfl⟩ := hS
  obtain ⟨t, -, hts, hdiv⟩ := exists_divisor (V := V) s
  refine ⟨t, le_antisymm ?_ ?_⟩
  · rw [span_le]
    intro x hx
    obtain ⟨r, hr⟩ := hdiv x hx
    rw [SetLike.mem_coe, mem_span_singleton]
    exact ⟨r, by rw [hr, Algebra.smul_def]⟩
  · rw [span_le, Set.singleton_subset_iff]
    rcases hts with h | h
    · rw [h]; exact zero_mem _
    · exact subset_span h

def tailZero (m : ℕ) (i : Fin m) : Submodule V (Fin m → K) where
  carrier := {α | ∀ j, i < j → α j = 0}
  add_mem' {a b} ha hb j hj := by simp [ha j hj, hb j hj]
  zero_mem' j _ := rfl
  smul_mem' r α ha j hj := by simp [ha j hj]

theorem herm (m : ℕ) (Λ : Submodule V (Fin m → K)) (hfg : Λ.FG)
    (hne : ∀ i : Fin m, ∃ α ∈ Λ, (∀ j, i < j → α j = 0) ∧ α i ≠ 0) :
    ∃ β : Fin m → (Fin m → K), (∀ i, β i ∈ Λ) ∧ (∀ i j, i < j → β i j = 0) ∧ (∀ i, β i i ≠ 0) ∧
      ∀ α ∈ Λ, ∃! r : Fin m → V, α = ∑ i, r i • β i := by
  classical
  haveI : IsNoetherian V Λ := isNoetherian_of_fg_of_noetherian Λ hfg
  have key : ∀ i : Fin m, ∃ b : Fin m → K, b ∈ Λ ∧ (∀ j, i < j → b j = 0) ∧ b i ≠ 0 ∧
      ∀ α ∈ Λ, (∀ j, i < j → α j = 0) → ∃ c : V, α i = c • b i := by
    intro i
    let I : Submodule V K := (Λ ⊓ tailZero (V := V) (K := K) m i).map (LinearMap.proj i)
    have hIfg : I.FG := by
      have h1 : ((tailZero (V := V) (K := K) m i).comap Λ.subtype).FG := IsNoetherian.noetherian _
      have h2 := h1.map Λ.subtype
      rw [Submodule.map_comap_subtype] at h2
      exact h2.map _
    obtain ⟨t, ht⟩ := fg_eq_span_singleton I hIfg
    have tI : t ∈ I := ht ▸ mem_span_singleton_self t
    obtain ⟨b, ⟨hbΛ, hbz⟩, hbt⟩ := Submodule.mem_map.1 tI
    have hbt' : b i = t := hbt
    have hmem : ∀ α ∈ Λ, (∀ j, i < j → α j = 0) → ∃ c : V, α i = c • b i := by
      intro α hα hz
      have h3 : α i ∈ I := Submodule.mem_map.2 ⟨α, ⟨hα, hz⟩, rfl⟩
      rw [ht, mem_span_singleton] at h3
      obtain ⟨c, hc⟩ := h3
      exact ⟨c, by rw [hbt', hc]⟩
    refine ⟨b, hbΛ, hbz, ?_, hmem⟩
    obtain ⟨α, hα, hz, hne'⟩ := hne i
    obtain ⟨c, hc⟩ := hmem α hα hz
    intro h0
    exact hne' (by rw [hc, h0, smul_zero])
  choose β hβΛ hβz hβd hβc using key
  have indep : ∀ r : Fin m → V, ∑ i, r i • β i = 0 → r = 0 := by
    intro r hr
    by_contra hne0
    have hS : (Finset.univ.filter fun i => r i ≠ 0).Nonempty := by
      obtain ⟨i, hi⟩ := Function.ne_iff.1 hne0
      exact ⟨i, by simpa using hi⟩
    have hi : r ((Finset.univ.filter fun i => r i ≠ 0).max' hS) ≠ 0 := by
      have h4 := Finset.max'_mem _ hS
      simpa using h4
    set i := (Finset.univ.filter fun i => r i ≠ 0).max' hS with hidef
    have hgt : ∀ j, i < j → r j = 0 := by
      intro j hj
      by_contra h
      have h5 : j ≤ i := Finset.le_max' _ j (by simpa using h)
      exact absurd hj (not_lt.2 h5)
    have hcoord := congrFun hr i
    rw [Finset.sum_apply, Finset.sum_eq_single i] at hcoord
    · rw [Pi.smul_apply, Pi.zero_apply, Algebra.smul_def, mul_eq_zero] at hcoord
      rcases hcoord with h | h
      · exact hi ((IsFractionRing.injective V K) (by rw [h, map_zero]))
      · exact hβd i h
    · intro j _ hji
      rw [Pi.smul_apply]
      rcases lt_or_gt_of_ne hji with h | h
      · rw [hβz j i h, smul_zero]
      · rw [hgt j h, zero_smul]
    · intro h
      exact absurd (Finset.mem_univ i) h
  have exist : ∀ k : ℕ, ∀ α ∈ Λ, (∀ j : Fin m, k ≤ j.val → α j = 0) →
      ∃ r : Fin m → V, α = ∑ i, r i • β i := by
    intro k
    induction k with
    | zero =>
      intro α _ hz
      refine ⟨0, ?_⟩
      funext j
      simp [hz j (Nat.zero_le _)]
    | succ k ih =>
      intro α hα hz
      by_cases hk : k < m
      · let i : Fin m := ⟨k, hk⟩
        obtain ⟨c, hc⟩ := hβc i α hα (fun j hj => hz j (by have h6 : k < j.val := hj; omega))
        obtain ⟨r, hr⟩ := ih (α - c • β i) (Λ.sub_mem hα (Λ.smul_mem c (hβΛ i))) (by
          intro j hj
          simp only [Pi.sub_apply, Pi.smul_apply]
          rcases Nat.eq_or_lt_of_le hj with h | h
          · have h7 : j = i := Fin.ext h.symm
            rw [h7, hc, sub_self]
          · rw [hz j h, hβz i j (show i < j from h), smul_zero, sub_zero])
        have hs : ∑ j, (Pi.single i c : Fin m → V) j • β j = c • β i := by
          rw [Finset.sum_eq_single i (fun j _ hj => by rw [Pi.single_eq_of_ne hj, zero_smul]) (by simp),
            Pi.single_eq_same]
        refine ⟨r + Pi.single i c, ?_⟩
        rw [sub_eq_iff_eq_add] at hr
        rw [hr]
        simp only [Pi.add_apply, add_smul, Finset.sum_add_distrib, hs]
      · exact ih α hα (fun j hj => hz j (by have := j.isLt; omega))
  refine ⟨β, hβΛ, hβz, hβd, ?_⟩
  intro α hα
  obtain ⟨r, hr⟩ := exist m α hα (fun j hj => absurd j.isLt (not_lt.2 hj))
  refine ⟨r, hr, fun r' hr' => ?_⟩
  have h8 := indep (r' - r) (by
    simp only [Pi.sub_apply, sub_smul, Finset.sum_sub_distrib]
    rw [← hr, ← hr', sub_self])
  exact sub_eq_zero.1 h8

theorem eig_basis {n m : ℕ} {ι : Type} (L : ι → (Fin n → V) →ₗ[V] (Fin n → V)) (χ : ι → V)
    (M : ι → (Fin n → K) →ₗ[K] (Fin n → K))
    (hM : ∀ a c, M a (fun j => algebraMap V K (c j)) = fun j => algebraMap V K (L a c j))
    (v : Fin m → (Fin n → K)) (hv : ∀ a i, M a (v i) = algebraMap V K (χ a) • v i)
    (hb : ∀ w, (∀ a, M a w = algebraMap V K (χ a) • w) → ∃! cf : Fin m → K, w = ∑ i, cf i • v i) :
    ∃ b : Fin m → (Fin n → V), (∀ a i, L a (b i) = χ a • b i) ∧
      (∀ c, (∀ a, L a c = χ a • c) → ∃! r : Fin m → V, c = ∑ i, r i • b i) ∧
      ∀ i, ∃ cf : Fin m → K, cf i ≠ 0 ∧ (∀ j, i < j → cf j = 0) ∧
        (fun j => algebraMap V K (b i j)) = ∑ j, cf j • v j := by
  classical
  let emb : (Fin n → V) → (Fin n → K) := fun c j => algebraMap V K (c j)
  have embinj : Function.Injective emb := fun c c' h =>
    funext fun j => IsFractionRing.injective V K (congrFun h j)
  have embadd : ∀ c c', emb (c + c') = emb c + emb c' := fun c c' => funext fun j => by simp [emb]
  have embsmul : ∀ (r : V) c, emb (r • c) = algebraMap V K r • emb c := fun r c =>
    funext fun j => by simp [emb]
  have embM : ∀ a c, M a (emb c) = emb (L a c) := fun a c => hM a c
  let E : Submodule V (Fin n → V) :=
    { carrier := {c | ∀ a, L a c = χ a • c}
      add_mem' := fun {c c'} hc hc' a => by
        simp only [Set.mem_setOf_eq] at hc hc' ⊢
        rw [map_add (f := _), hc a, hc' a, smul_add]
      zero_mem' := fun a => by simp
      smul_mem' := fun r c hc a => by
        simp only [Set.mem_setOf_eq] at hc ⊢
        rw [map_smul, hc a, smul_comm] }
  have memE : ∀ c, c ∈ E ↔ ∀ a, L a c = χ a • c := fun c => Iff.rfl
  have eigK : ∀ c ∈ E, ∀ a, M a (emb c) = algebraMap V K (χ a) • emb c := fun c hc a => by
    rw [embM, (memE c).1 hc a, embsmul]
  have hco : ∀ c : E, ∃! cf : Fin m → K, emb c = ∑ i, cf i • v i := fun c => hb _ (eigK c c.2)
  choose g spec hgu using hco
  let f : E →ₗ[V] (Fin m → K) :=
    { toFun := g
      map_add' := fun c c' => (hgu (c + c') _ (by
        rw [Submodule.coe_add, embadd, spec c, spec c', ← Finset.sum_add_distrib]
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [Pi.add_apply, add_smul])).symm
      map_smul' := fun r c => (hgu (r • c) _ (by
        rw [Submodule.coe_smul, embsmul, spec c, Finset.smul_sum]
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [RingHom.id_apply, Pi.smul_apply, smul_smul]
        congr 1
        exact (Algebra.smul_def _ _).symm)).symm }
  have fspec : ∀ c : E, emb c = ∑ i, f c i • v i := spec
  have finj : Function.Injective f := fun x y h => Subtype.ext (embinj (by rw [fspec x, fspec y, h]))
  have hfg : (LinearMap.range f).FG := by
    rw [LinearMap.range_eq_map]
    exact (IsNoetherian.noetherian (⊤ : Submodule V E)).map f
  have hne : ∀ i : Fin m, ∃ α ∈ LinearMap.range f, (∀ j, i < j → α j = 0) ∧ α i ≠ 0 := by
    intro i
    obtain ⟨d, hd⟩ := IsLocalization.exist_integer_multiples (nonZeroDivisors V) (Finset.univ) (v i)
    choose c hc using fun j => hd j (Finset.mem_univ j)
    have hcv : emb c = algebraMap V K (d : V) • v i := by
      funext j
      show algebraMap V K (c j) = _
      rw [hc j, Algebra.smul_def, Pi.smul_apply, smul_eq_mul]
    have hcE : c ∈ E := fun a => embinj (by
      rw [← embM, hcv, map_smul, hv, embsmul, hcv, smul_comm])
    have hfc : f ⟨c, hcE⟩ = Pi.single i (algebraMap V K (d : V)) := (hgu ⟨c, hcE⟩ _ (by
      show emb c = _
      rw [hcv, Finset.sum_eq_single i (fun j _ hj => by rw [Pi.single_eq_of_ne hj, zero_smul]) (by simp),
        Pi.single_eq_same])).symm
    refine ⟨f ⟨c, hcE⟩, ⟨⟨c, hcE⟩, rfl⟩, fun j hj => ?_, ?_⟩
    · rw [hfc, Pi.single_eq_of_ne (ne_of_gt hj)]
    · rw [hfc, Pi.single_eq_same]
      intro h0
      exact nonZeroDivisors.ne_zero d.2 (IsFractionRing.injective V K (by rw [h0, map_zero]))
  obtain ⟨β, hβΛ, hβz, hβd, hβu⟩ := herm m (LinearMap.range f) hfg hne
  choose e he using hβΛ
  refine ⟨fun i => (e i : Fin n → V), fun a i => (e i).2 a, ?_, ?_⟩
  · intro c hc
    have key : ∀ r' : Fin m → V, c = ∑ i, r' i • (e i : Fin n → V) ↔ f ⟨c, hc⟩ = ∑ i, r' i • β i := by
      intro r'
      have hsum : ((∑ i, r' i • e i : E) : Fin n → V) = ∑ i, r' i • (e i : Fin n → V) := by simp
      have hf : f (∑ i, r' i • e i) = ∑ i, r' i • β i := by simp [map_sum, map_smul, he]
      constructor
      · intro h
        rw [← hf]
        congr 1
        exact Subtype.ext (by rw [hsum]; exact h)
      · intro h
        rw [← hf] at h
        have h' := congrArg Subtype.val (finj h)
        rw [hsum] at h'
        exact h'
    obtain ⟨r, hr, hru⟩ := hβu (f ⟨c, hc⟩) ⟨⟨c, hc⟩, rfl⟩
    exact ⟨r, (key r).2 hr, fun r' h => hru r' ((key r').1 h)⟩
  · intro i
    refine ⟨β i, hβd i, hβz i, ?_⟩
    have h9 := fspec (e i)
    rw [he i] at h9
    exact h9

theorem tri_basis {n m : ℕ} (P : (Fin n → K) → Prop) (v : Fin m → (Fin n → K))
    (hb : ∀ w, P w → ∃! cf : Fin m → K, w = ∑ i, cf i • v i) (C : Fin m → Fin m → K)
    (hCz : ∀ i j, i < j → C i j = 0) (hCd : ∀ i, C i i ≠ 0) :
    ∀ w, P w → ∃! d : Fin m → K, w = ∑ i, d i • ∑ j, C i j • v j := by
  classical
  let A : Matrix (Fin m) (Fin m) K := Matrix.of C
  have hA : A.IsLowerTriangular := fun i j h => hCz i j h
  have hdet : A.det ≠ 0 := by
    rw [Matrix.det_of_lowerTriangular A hA]
    exact Finset.prod_ne_zero_iff.2 (fun i _ => hCd i)
  have hu : IsUnit A.det := isUnit_iff_ne_zero.2 hdet
  have expand : ∀ d : Fin m → K, ∑ i, d i • ∑ j, C i j • v j = ∑ j, (Matrix.vecMul d A) j • v j := by
    intro d
    simp only [Matrix.vecMul, dotProduct, A, Matrix.of_apply, Finset.smul_sum, smul_smul, Finset.sum_smul]
    exact Finset.sum_comm
  intro w hw
  obtain ⟨cf, hcf, huniq⟩ := hb w hw
  refine ⟨Matrix.vecMul cf A⁻¹, ?_, fun d hd => ?_⟩
  · show w = _
    rw [expand, Matrix.vecMul_vecMul, Matrix.nonsing_inv_mul A hu, Matrix.vecMul_one]
    exact hcf
  · have h1 : Matrix.vecMul d A = cf := huniq _ (by show w = _; rw [← expand]; exact hd)
    rw [← h1, Matrix.vecMul_vecMul, Matrix.mul_nonsing_inv A hu, Matrix.vecMul_one]

end Formalism.L2.Pj.LieAlg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.LieAlg =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.LieFreePf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.LieFreePf", "h": "module\n\npublic import Formalism.LocalToGlobal.ProjectiveLattices.IntFrames\npublic import Formalism.LocalToGlobal.ProjectiveLattices.LieAlg\npublic import Formalism.LocalToGlobal.ProjectiveLattices.LieRel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RankPf\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniversalCharts.UnivChartLoc\n\n"}
section -- clump:auto
@[expose] public section



noncomputable section

namespace Formalism.L2.Pj

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open ReciprocityTheory.ChartRestriction.G.Chart (tvec tmap tvec_inj tvec_eig_iff isTan_tvec tcoord tcoord_spec univChartLoc tanBC_alg
  pushR pushR_left pushR_inj pushR_map tvec_tmap fB scaleD IsUnivChart dualMapA)
open Formalism.L2.Pj.LieRel Formalism.L2.Pj.LieAlg
open scoped CategoryTheory.Obj

attribute [local instance] Over.cartesianMonoidalCategory

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Level H}
variable (Xo : Moduli Dw l) (c : Coeff l)

theorem int_val (T : CDVR) (io : c.F →+* T.Fr) (τ : E →+* ℂ) (a : 𝓞 E) :
    ∃ z : T.V, algebraMap T.V T.Fr z = io (embK c τ a) := by
  obtain ⟨p, hp, hpa⟩ := NumberField.RingOfIntegers.isIntegral a
  refine IsIntegrallyClosed.isIntegral_iff.1 ⟨p.map (Int.castRingHom T.V), hp.map _, ?_⟩
  rw [Polynomial.eval₂_map]
  have hf : (algebraMap T.V T.Fr).comp (Int.castRingHom T.V) =
      (io.comp (embK c τ)).comp (algebraMap ℤ (𝓞 E)) := RingHom.ext_int _ _
  rw [hf]
  have h3 := Polynomial.hom_eval₂ p (algebraMap ℤ (𝓞 E)) (io.comp (embK c τ)) a
  rw [hpa, map_zero] at h3
  exact h3.symm



theorem lieFree : LieFreeSt Xo c := by
  intro T io G t' x m1 m2 _ u₀ hu₀t hu₀e hu₀b
  let _ := io.toAlgebra
  have := G.semi.smooth
  have : ∀ a, IsMonHom (G.act.act a) := G.act.hom
  obtain ⟨n, xc, hxc⟩ := univChartLoc G.G
  obtain ⟨x', hx', hcomp⟩ := tanBC_alg (R := T.V) (R' := T.Fr) G.G n xc hxc
  have hpt : ∀ cc : Fin n → T.V, pushR G.G (tvec (x := x') (algebraMap T.V T.Fr ∘ cc)) =
      ReciprocityTheory.ChartRestriction.G.Chart.spMap (dualMapA T.V T.Fr) ≫ tvec (x := xc) cc := fun cc =>
    Over.OverMorphism.ext (by rw [pushR_left, hcomp cc]; rfl)
  have hM0 : ∀ (a : 𝓞 E) (cc : Fin n → T.V),
      tmap hx' ((Over.pullback (fB T.V T.Fr)).map (G.act.act a)) (algebraMap T.V T.Fr ∘ cc) =
        algebraMap T.V T.Fr ∘ tmap hxc (G.act.act a) cc := by
    intro a cc
    apply tvec_inj hx'
    apply pushR_inj G.G
    rw [tvec_tmap hx', pushR_map, hpt, hpt, tvec_tmap hxc, Category.assoc]
  have hM : ∀ (a : 𝓞 E) (cc : Fin n → T.V),
      tmap hx' ((Over.pullback (fB T.V T.Fr)).map (G.act.act a)) (fun j => algebraMap T.V T.Fr (cc j)) =
        fun j => algebraMap T.V T.Fr (tmap hxc (G.act.act a) cc j) := hM0
  have h1 := m1.cart
  have h2 : IsGrpPullback t'.G G.G (fB T.V T.Fr) m2.φ := m2.cart
  have hex : ∀ e : Fin n → T.Fr, ∃ v, RelA x m1.φ m2.φ v (tvec (x := x') e) :=
    fun e => relA_exists_v x h1 h2 (tvec (x := x') e)
  choose vA hvA using hex
  have coordA : ∀ w, IsTanAt x w → ∃ e : Fin n → T.Fr, (vA e).left = w := by
    intro w hw
    let v0 : epsAt x ⟶ Xo.univ.t.G := Over.homMk w hw.1
    obtain ⟨y0, hy0⟩ := relA_exists_y x h1 h2 v0
    have ht : ReciprocityTheory.ChartRestriction.G.Chart.IsTan y0 := (relA_tan x h1 h2 hy0).1 hw.2
    refine ⟨tcoord hx' y0 ht, ?_⟩
    exact congrArg (fun q => q.left) ((relA_uniq x h1 h2 (hvA _) hy0).2 (tcoord_spec hx' y0 ht).symm)
  have tanA : ∀ e, IsTanAt x (vA e).left := fun e =>
    ⟨Over.w (vA e), (relA_tan x h1 h2 (hvA e)).2 (isTan_tvec hx' e)⟩
  have eigA : ∀ (τ : E →+* ℂ) e, IsEigAt c τ (vA e).left ↔
      ∀ a, tmap hx' ((Over.pullback (fB T.V T.Fr)).map (G.act.act a)) e = io (embK c τ a) • e := by
    intro τ e
    unfold IsEigAt
    refine forall_congr' fun a => ?_
    rw [← tvec_eig_iff hx']
    exact relA_eig x h1 h2 (hvA e) (t'.act.act a) (Xo.univ.t.act.act a) (G.act.act a) (m1.act a) (m2.act a) _
  have combA : ∀ {m : ℕ} (d : Fin m → Fin n → T.Fr) (cf : Fin m → T.Fr) (e : Fin n → T.Fr),
      IsCombAt x (fun i => (vA (d i)).left) cf (vA e).left ↔ e = ∑ i, cf i • d i := by
    intro m d cf e
    have hr : ∀ i, RelA x m1.φ m2.φ (sclA x (cf i) ≫ vA (d i))
        (ReciprocityTheory.ChartRestriction.G.Chart.spMap (scaleD (cf i)) ≫ tvec (x := x') (d i)) :=
      fun i => relA_scl x (hvA (d i)) (cf i)
    have hp := relA_prod x h1 h2 _ _ hr
    rw [prod_tvec hx'] at hp
    constructor
    · rintro ⟨u, hu, hw⟩
      have hu' : u = fun i => sclA x (cf i) ≫ vA (d i) := funext fun i => Over.OverMorphism.ext (hu i)
      subst hu'
      exact tvec_inj hx' ((relA_uniq x h1 h2 (hvA e) hp).1 (Over.OverMorphism.ext hw.symm))
    · rintro rfl
      exact ⟨fun i => sclA x (cf i) ≫ vA (d i), fun i => rfl,
        congrArg (fun q => q.left) ((relA_uniq x h1 h2 hp (hvA _)).2 rfl)⟩
  choose χ hχ using fun τ a => int_val c T io τ a
  have key : ∀ τ : E →+* ℂ, ∃ (ub : Fin (Dw.mult τ) → (epsOver T.V T.V ⟶ G.G))
      (u : Fin (Dw.mult τ) → (Sp (DualNumber T.Fr) ⟶ Xo.univ.t.G.left)),
      (∀ i, IsTan (ub i)) ∧ (∀ i, IsEigV c io G τ (ub i)) ∧
      (∀ (w : epsOver T.V T.V ⟶ G.G), IsTan w → IsEigV c io G τ w → ∃! a : Fin (Dw.mult τ) → T.V, IsComb ub a w) ∧
      (∀ i, ∃ u' : Sp (DualNumber T.Fr) ⟶ t'.G.left, u' ≫ m1.φ = u i ∧
        u' ≫ m2.φ = spMap (dualMap (algebraMap T.V T.Fr)) ≫ (ub i).left) ∧
      (∀ i, IsTanAt x (u i)) ∧ (∀ i, IsEigAt c τ (u i)) ∧
      (∀ w, IsTanAt x w → IsEigAt c τ w → ∃! a : Fin (Dw.mult τ) → T.Fr, IsCombAt x u a w) ∧
      ∀ i, ∃ cf : Fin (Dw.mult τ) → T.Fr, IsUnit (cf i) ∧ (∀ j, i < j → cf j = 0) ∧ IsCombAt x (u₀ τ) cf (u i) := by
    intro τ
    choose v hv using fun i => coordA (u₀ τ i) (hu₀t τ i)
    have hu₀ : u₀ τ = fun i => (vA (v i)).left := funext fun i => (hv i).symm
    have eigM : ∀ e, IsEigAt c τ (vA e).left ↔
        ∀ a, tmap hx' ((Over.pullback (fB T.V T.Fr)).map (G.act.act a)) e = algebraMap T.V T.Fr (χ τ a) • e := by
      intro e
      rw [eigA τ e]
      simp only [hχ τ]
    have hvM : ∀ a i, tmap hx' ((Over.pullback (fB T.V T.Fr)).map (G.act.act a)) (v i) =
        algebraMap T.V T.Fr (χ τ a) • v i := fun a i => (eigM (v i)).1 (by rw [hv i]; exact hu₀e τ i) a
    have hbM : ∀ w, (∀ a, tmap hx' ((Over.pullback (fB T.V T.Fr)).map (G.act.act a)) w =
        algebraMap T.V T.Fr (χ τ a) • w) → ∃! cf : Fin (Dw.mult τ) → T.Fr, w = ∑ i, cf i • v i := by
      intro w hw
      obtain ⟨cf, hcf, hu⟩ := hu₀b τ (vA w).left (tanA w) ((eigM w).2 hw)
      rw [hu₀] at hcf hu
      exact ⟨cf, (combA v cf w).1 hcf, fun cf' h' => hu cf' ((combA v cf' w).2 h')⟩
    obtain ⟨b, hbe, hbb, hbt⟩ := eig_basis (fun a => tmap hxc (G.act.act a)) (χ τ)
      (fun a => tmap hx' ((Over.pullback (fB T.V T.Fr)).map (G.act.act a))) hM v hvM hbM
    choose C hCd hCz hCb using hbt
    refine ⟨fun i => cvV (tvec (x := xc) (b i)), fun i => (vA (fun j => algebraMap T.V T.Fr (b i j))).left,
      fun i => isTan_cvV (isTan_tvec hxc (b i)), fun i a z hz => ?_, fun w hw he => ?_, fun i => ?_, fun i => tanA _,
      fun i => ?_, fun w hw he => ?_, fun i => ⟨C i, isUnit_iff_ne_zero.2 (hCd i), hCz i, ?_⟩⟩
    · have hz' : z = χ τ a := IsFractionRing.injective T.V T.Fr (hz.trans (hχ τ a).symm)
      subst hz'
      exact (eigV_iff hxc (G.act.act a) (b i) _).2 (hbe a i)
    · obtain ⟨cc, rfl⟩ := tan_eq_cvV hxc hw
      have hcc : ∀ a, tmap hxc (G.act.act a) cc = χ τ a • cc := fun a =>
        (eigV_iff hxc (G.act.act a) cc _).1 (he a (χ τ a) (hχ τ a))
      obtain ⟨r, hr, hru⟩ := hbb cc hcc
      exact ⟨r, (comb_iff hxc b r cc).2 hr, fun r' h' => hru r' ((comb_iff hxc b r' cc).1 h')⟩
    · obtain ⟨w, hw, hwl⟩ := hvA (fun j => algebraMap T.V T.Fr (b i j))
      have hw' : w.left ≫ m2.φ = (tvec (x := x') (fun j => algebraMap T.V T.Fr (b i j))).left ≫
          pullback.fst G.G.hom (fB T.V T.Fr) := hw
      refine ⟨w.left, hwl.symm, ?_⟩
      rw [cvV_left]
      exact hw'.trans (hcomp (b i))
    · refine (eigA τ _).2 fun a => ?_
      rw [hM a (b i), hbe a i, ← hχ τ a]
      funext j
      simp [Pi.smul_apply, smul_eq_mul, map_mul]
    · obtain ⟨e, rfl⟩ := coordA w hw
      have hP : ∀ a, tmap hx' ((Over.pullback (fB T.V T.Fr)).map (G.act.act a)) e =
          algebraMap T.V T.Fr (χ τ a) • e := (eigM e).1 he
      obtain ⟨d, hd, hdu⟩ := tri_basis (fun w => ∀ a, tmap hx' ((Over.pullback (fB T.V T.Fr)).map (G.act.act a)) w =
          algebraMap T.V T.Fr (χ τ a) • w) v hbM C hCz hCd e hP
      have hCb' : ∀ i, (∑ j, C i j • v j) = fun j => algebraMap T.V T.Fr (b i j) := fun i => (hCb i).symm
      simp only [hCb'] at hd hdu
      exact ⟨d, (combA _ d e).2 hd, fun d' h' => hdu d' ((combA _ d' e).1 h')⟩
    · rw [hu₀]
      exact (combA v (C i) _).2 (hCb i)
  choose ub u hub using key
  exact ⟨ub, u, ⟨fun τ i => (hub τ).1 i, fun τ i => (hub τ).2.1 i, fun τ w hw he => (hub τ).2.2.1 w hw he,
    fun τ i => (hub τ).2.2.2.1 i⟩, fun τ i => (hub τ).2.2.2.2.1 i, fun τ i => (hub τ).2.2.2.2.2.1 i,
    fun τ w hw he => (hub τ).2.2.2.2.2.2.1 w hw he, fun τ i => (hub τ).2.2.2.2.2.2.2 i⟩

end Formalism.L2.Pj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.LieFreePf =====
