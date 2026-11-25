module

public import Mathlib.Algebra.Algebra.Subalgebra.Lattice
public import Mathlib.Basic.Complex.Basic
public import Mathlib.LinearAlgebra.FiniteDimensional.Defs
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.Order.CompletePartialOrder
public import Mathlib.RepresentationTheory.AlgebraRepresentation.Basic
import Mathlib.Tactic.TypeStar
public import Mathlib.LinearAlgebra.Dimension.Constructions
public import Mathlib.LinearAlgebra.FiniteDimensional.Basic

@[expose] public section

noncomputable section

namespace GroundTheory.Automorphic

namespace RestrictedTensor

open Module

variable {M : Type*} [AddCommGroup M] [Module ℂ M]

def IsStable (T : Set (End ℂ M)) (p : Submodule ℂ M) : Prop :=
  ∀ t ∈ T, ∀ x ∈ p, t x ∈ p

def IsSimpleUnder (T : Set (End ℂ M)) : Prop :=
  Nontrivial M ∧ ∀ p : Submodule ℂ M, IsStable T p → p = ⊥ ∨ p = ⊤

theorem IsStable.adjoin {T : Set (End ℂ M)} {p : Submodule ℂ M} (h : IsStable T p) :
    ∀ a ∈ Algebra.adjoin ℂ T, ∀ x ∈ p, a x ∈ p := by
  intro a ha
  induction ha using Algebra.adjoin_induction with
  | mem t ht => exact h t ht
  | algebraMap c =>
    intro x hx
    rw [Algebra.algebraMap_eq_smul_one, LinearMap.smul_apply, Module.End.one_apply]
    exact p.smul_mem c hx
  | add a b _ _ ha hb =>
    intro x hx
    rw [LinearMap.add_apply]
    exact p.add_mem (ha x hx) (hb x hx)
  | mul a b _ _ ha hb =>
    intro x hx
    rw [Module.End.mul_apply]
    exact ha _ (hb x hx)

theorem IsStable.mono {T₁ T₂ : Set (End ℂ M)} {p : Submodule ℂ M} (h : IsStable T₂ p)
    (hT : T₁ ⊆ T₂) : IsStable T₁ p :=
  fun t ht => h t (hT ht)

variable [FiniteDimensional ℂ M]

theorem adjoin_eq_top {T : Set (End ℂ M)} (h : IsSimpleUnder T) : Algebra.adjoin ℂ T = ⊤ := by
  have := h.1
  set A := Algebra.adjoin ℂ T
  have hsimple : IsSimpleModule A M := by
    have : Nontrivial (Submodule A M) := (Submodule.nontrivial_iff A).2 h.1
    refine { eq_bot_or_eq_top := fun p => ?_ }
    have hst : IsStable T (p.restrictScalars ℂ) := by
      intro t ht x hx
      have : (⟨t, Algebra.subset_adjoin ht⟩ : A) • x ∈ p := p.smul_mem _ hx
      exact this
    rcases h.2 _ hst with h0 | h0
    · left
      rw [← Submodule.restrictScalars_eq_bot_iff ℂ]
      exact h0
    · right
      rw [← Submodule.restrictScalars_eq_top_iff ℂ]
      exact h0
  have hb := IsSimpleModule.algebraMap_end_bijective_of_isAlgClosed ℂ (A := A) (V := M)
  have : Module.Finite (End A M) M := Module.Finite.of_restrictScalars_finite ℂ (End A M) M
  have hsurj := Module.Finite.toModuleEnd_moduleEnd_surjective (R := A) (M := M)
  refine eq_top_iff.2 fun φ _ => ?_
  have hφ : ∀ (f : End A M) (x : M), φ (f x) = f (φ x) := by
    intro f x
    obtain ⟨c, rfl⟩ := hb.2 f
    simp [Algebra.algebraMap_eq_smul_one]
  let ψ : End (End A M) M :=
    { toFun := φ
      map_add' := φ.map_add
      map_smul' := fun f x => hφ f x }
  obtain ⟨a, ha⟩ := hsurj ψ
  have : (a : End ℂ M) = φ := by
    ext x
    have := congrArg (fun g : End (End A M) M => g x) ha
    exact this
  rw [← this]
  exact a.2


omit [FiniteDimensional ℂ M] in
theorem eq_zero_of_forall_mem {T₁ T₂ : Set (End ℂ M)} (h : IsSimpleUnder (T₁ ∪ T₂))
    (hc : ∀ a ∈ T₁, ∀ b ∈ T₂, Commute a b) {N : Submodule ℂ M} (hN : N ≠ ⊥) (hNs : IsStable T₁ N)
    {a : End ℂ M} (ha : ∀ b ∈ T₂, Commute a b) (h0 : ∀ x ∈ N, a x = 0) : a = 0 := by
  set B := Algebra.adjoin ℂ T₂
  set P : Submodule ℂ M := ⨆ b : B, N.map (b : End ℂ M)
  have hmap : ∀ b : B, N.map (b : End ℂ M) ≤ P := fun b => le_iSup (fun b : B => N.map (b : End ℂ M)) b
  have hst : IsStable (T₁ ∪ T₂) P := by
    intro t ht x hx
    have hle : P ≤ P.comap t := by
      refine iSup_le fun b => ?_
      rintro _ ⟨n, hn, rfl⟩
      rw [Submodule.mem_comap]
      rcases ht with ht | ht
      · have hcomm : Commute t (b : End ℂ M) :=
          Algebra.commute_of_mem_adjoin_of_forall_mem_commute b.2 (fun s hs => hc t ht s hs)
        have : t ((b : End ℂ M) n) = (b : End ℂ M) (t n) := by
          rw [← Module.End.mul_apply, hcomm.eq, Module.End.mul_apply]
        rw [this]
        exact hmap b ⟨t n, hNs t ht n hn, rfl⟩
      · have htb : t * (b : End ℂ M) ∈ B := B.mul_mem (Algebra.subset_adjoin ht) b.2
        exact hmap ⟨_, htb⟩ ⟨n, hn, rfl⟩
    exact hle hx
  have hP : P ≠ ⊥ := by
    intro hP
    apply hN
    rw [eq_bot_iff]
    intro n hn
    have : n ∈ P := hmap 1 ⟨n, hn, by simp⟩
    rwa [hP] at this
  have hPtop : P = ⊤ := (h.2 P hst).resolve_left hP
  have hker : P ≤ LinearMap.ker a := by
    refine iSup_le fun b => ?_
    rintro _ ⟨n, hn, rfl⟩
    rw [LinearMap.mem_ker]
    have hcomm : Commute a (b : End ℂ M) := Algebra.commute_of_mem_adjoin_of_forall_mem_commute b.2 ha
    rw [← Module.End.mul_apply, hcomm.eq, Module.End.mul_apply, h0 n hn, map_zero]
  ext x
  have : x ∈ LinearMap.ker a := hker (hPtop ▸ Submodule.mem_top)
  simpa using this

def restrictSet (T : Set (End ℂ M)) (N : Submodule ℂ M) (hN : IsStable T N) : Set (End ℂ N) :=
  Set.range fun t : T => (t : End ℂ M).restrict (hN t t.2)


omit [FiniteDimensional ℂ M] in
theorem exists_of_mem_adjoin_restrictSet {T : Set (End ℂ M)} {N : Submodule ℂ M}
    (hN : IsStable T N) {b : End ℂ N} (hb : b ∈ Algebra.adjoin ℂ (restrictSet T N hN)) :
    ∃ a ∈ Algebra.adjoin ℂ T, ∀ x : N, (b x : M) = a x := by
  let S : Subalgebra ℂ (End ℂ N) :=
    { carrier := {b | ∃ a ∈ Algebra.adjoin ℂ T, ∀ x : N, (b x : M) = a x}
      mul_mem' := by
        rintro b₁ b₂ ⟨a₁, ha₁, h₁⟩ ⟨a₂, ha₂, h₂⟩
        exact ⟨a₁ * a₂, Subalgebra.mul_mem _ ha₁ ha₂, fun x => by
          rw [Module.End.mul_apply, h₁, Module.End.mul_apply, h₂]⟩
      add_mem' := by
        rintro b₁ b₂ ⟨a₁, ha₁, h₁⟩ ⟨a₂, ha₂, h₂⟩
        exact ⟨a₁ + a₂, Subalgebra.add_mem _ ha₁ ha₂, fun x => by
          rw [LinearMap.add_apply, Submodule.coe_add, h₁, h₂, LinearMap.add_apply]⟩
      algebraMap_mem' := fun c => ⟨algebraMap ℂ (End ℂ M) c, Subalgebra.algebraMap_mem _ c,
        fun x => by simp [Algebra.algebraMap_eq_smul_one]⟩ }
  have : Algebra.adjoin ℂ (restrictSet T N hN) ≤ S := by
    refine Algebra.adjoin_le ?_
    rintro _ ⟨t, rfl⟩
    exact ⟨t, Algebra.subset_adjoin t.2, fun x => rfl⟩
  exact this hb

theorem exists_simple_stable (T : Set (End ℂ M)) [Nontrivial M] :
    ∃ (N : Submodule ℂ M) (hN : IsStable T N), N ≠ ⊥ ∧ IsSimpleUnder (restrictSet T N hN) := by
  classical
  have hex : ∃ d, ∃ N : Submodule ℂ M, N ≠ ⊥ ∧ IsStable T N ∧ Module.finrank ℂ N = d :=
    ⟨_, ⊤, top_ne_bot, fun _ _ _ _ => trivial, rfl⟩
  obtain ⟨N, hN0, hNs, hNd⟩ := Nat.find_spec hex
  have hmin : ∀ N' : Submodule ℂ M, N' ≠ ⊥ → IsStable T N' → Module.finrank ℂ N ≤ Module.finrank ℂ N' :=
    fun N' h1 h2 => hNd ▸ Nat.find_min' hex ⟨N', h1, h2, rfl⟩
  refine ⟨N, hNs, hN0, ?_, ?_⟩
  · exact Submodule.nontrivial_iff_ne_bot.2 hN0
  · intro q hq
    by_cases hq0 : q = ⊥
    · exact Or.inl hq0
    right
    have hst : IsStable T (q.map N.subtype) := by
      rintro t ht _ ⟨x, hx, rfl⟩
      exact ⟨(t : End ℂ M).restrict (hNs t ht) x, hq _ ⟨⟨t, ht⟩, rfl⟩ x hx, rfl⟩
    have hne : q.map N.subtype ≠ ⊥ := by
      intro h0
      apply hq0
      rw [eq_bot_iff]
      intro x hx
      have : (x : M) ∈ q.map N.subtype := ⟨x, hx, rfl⟩
      rw [h0, Submodule.mem_bot] at this
      exact (Submodule.mem_bot ℂ).2 (Subtype.ext this)
    have hle := hmin _ hne hst
    rw [Submodule.finrank_map_subtype_eq] at hle
    exact Submodule.eq_top_of_finrank_eq (le_antisymm (Submodule.finrank_le q) hle)

end RestrictedTensor

end GroundTheory.Automorphic
