module

public import Formalism.SharpRestriction.CuspSpanNormBounds.CntPartners
public import Formalism.HermitianLattices.HermitianLatticesProofs.DualLattice
public import Formalism.SharpRestriction.CuspSpanNormBounds.CayleyDegreeNondegeneracy.OrthLatticeIsIntegralOfUnimodular
import Formalism.SharpRestriction.CuspSpanNormBounds.LatticeGluingRadicals
import Mathlib.Algebra.Module.StablyFree.Basic

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.BridgeLemma₂

open NumberField Module Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.Cnt Formalism.MainNotions.LatticeGluingRadicals

section One

variable {E : Type} [Field E] [NumberField E] [StarRing E]

theorem star_mem_one_submodule {t : E} (h : t ∈ (1 : Submodule (𝓞 E) E)) : star t ∈ (1 : Submodule (𝓞 E) E) := by
  obtain ⟨o, rfl⟩ := Submodule.mem_one.1 h
  obtain ⟨o', ho'⟩ := i_star_int o
  exact Submodule.mem_one.2 ⟨o', ho'⟩

theorem mul_mem_one_submodule {s t : E} (hs : s ∈ (1 : Submodule (𝓞 E) E)) (h : t ∈ (1 : Submodule (𝓞 E) E)) :
    s * t ∈ (1 : Submodule (𝓞 E) E) := by
  obtain ⟨o, rfl⟩ := Submodule.mem_one.1 hs
  obtain ⟨o', rfl⟩ := Submodule.mem_one.1 h
  exact Submodule.mem_one.2 ⟨o * o', by simp⟩

end One

section Lat

variable {D : D7} {u : D.what₂.Word} (F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E))
  (he : F0.e = D.sp.hypE) (hz : F0.z = D.zmOf u) (Λ : LatV D)

theorem isotropic_le_orth_self : Xsp (lf D F0) ≤ orth (hS D) (Xsp (lf D F0)) :=
  fun _ hx => c_mem_orth.2 fun _ hv => p_X_iso (lf D F0) hv hx

theorem mem_Lsub_iff_sup_and_orth {v : (hS D).V} : v ∈ Lsub Λ (lf D F0) ↔
    v ∈ Λ ⊔ toO (hS D) (Xsp (lf D F0)) ∧ v ∈ orth (hS D) (Xsp (lf D F0)) := by
  constructor
  · rintro ⟨h1, h2⟩
    have hle : Lrep Λ (lf D F0) ⊔ toO (hS D) (Xsp (lf D F0)) ≤ Λ ⊔ toO (hS D) (Xsp (lf D F0)) :=
      sup_le_sup_right (inf_le_left : Λ ⊓ toO (hS D) (orth (hS D) (Xsp (lf D F0))) ≤ Λ) _
    exact ⟨hle h1, h2⟩
  · rintro ⟨h1, h2⟩
    refine ⟨?_, h2⟩
    obtain ⟨l, hl, ξ, hξ, e⟩ := Submodule.mem_sup.1 h1
    refine Submodule.mem_sup.2 ⟨l, ⟨hl, ?_⟩, ξ, hξ, e⟩
    have : l = v - ξ := by rw [← e]; abel
    rw [this]
    exact (orth (hS D) (Xsp (lf D F0))).sub_mem h2 (isotropic_le_orth_self F0 hξ)

include he hz in
theorem orth_embedding_mem_orth_isotropic (x : (D.sp.X 0).V) : D.sp.iXY 0 x ∈ orth (hS D) (Xsp (lf D F0)) :=
  c_orth_anti (le_sup_left : Xsp (lf D F0) ≤ Xplus (lf D F0)) (orth_embedding_mem_orth_plus F0 he hz x)

include he hz in
theorem inner_z_orth_embedding_eq_zero (x : (D.sp.X 0).V) : (hS D).hT F0.z (D.sp.iXY 0 x) = 0 :=
  c_mem_orth.1 (orth_embedding_mem_orth_plus F0 he hz x) F0.z
    ((le_sup_right : _ ≤ Xplus (lf D F0)) (Submodule.mem_span_singleton_self _))


include he hz in
theorem mem_orthLattice_iff_image_mem_sup {x : (D.sp.X 0).V} :
    x ∈ L0X D Λ (lf D F0) ↔ D.sp.iXY 0 x ∈ Λ ⊔ toO (hS D) (Xsp (lf D F0)) := by
  rw [mem_orthLattice_iff_mem_sub]
  constructor
  · intro h
    exact ((mem_Lsub_iff_sup_and_orth F0 Λ).1 h.1).1
  · intro h
    exact ⟨(mem_Lsub_iff_sup_and_orth F0 Λ).2 ⟨h, orth_embedding_mem_orth_isotropic F0 he hz x⟩, inner_z_orth_embedding_eq_zero F0 he hz x⟩

include he hz in
theorem exists_smul_mem_orthLattice (hΛ : Submodule.IsFullLattice D.host.E Λ) (x : (D.sp.X 0).V) :
    ∃ c : 𝓞 D.host.E, c ≠ 0 ∧ c • x ∈ L0X D Λ (lf D F0) := by
  obtain ⟨c, hc, hcx⟩ := a_exists_smul_mem Λ hΛ (D.sp.iXY 0 x)
  refine ⟨c, hc, (mem_orthLattice_iff_image_mem_sup F0 he hz Λ).2 ?_⟩
  rw [LinearMap.map_smul_of_tower]
  exact Submodule.mem_sup_left hcx


include he hz in
theorem orthLattice_isLattice (hΛ : Submodule.IsLattice D.host.E Λ) (hu : Formalism.HermitianLatticesTheory.IsUnimodular (hS D).hT Λ) :
    Submodule.IsLattice D.host.E (L0X D Λ (lf D F0)) := by
  choose c hc hcM using fun i => exists_smul_mem_orthLattice F0 he hz Λ (a_full Λ hΛ hu) ((D.sp.X 0).frame i)
  set M₁ : Submodule (𝓞 D.host.E) (D.sp.X 0).V :=
    Submodule.span (𝓞 D.host.E) (Set.range fun i => c i • (D.sp.X 0).frame i) with hM₁def
  have hM₁ : M₁ ≤ L0X D Λ (lf D F0) := Submodule.span_le.2 (by rintro _ ⟨i, rfl⟩; exact hcM i)
  have hfg : M₁.FG := Submodule.fg_span (Set.finite_range _)
  have hs : spanE (D.sp.X 0) M₁ = ⊤ := by
    apply top_unique
    rw [← (D.sp.X 0).frame.span_eq]
    apply Submodule.span_le.2
    rintro _ ⟨i, rfl⟩
    have hm : c i • (D.sp.X 0).frame i ∈ spanE (D.sp.X 0) M₁ :=
      Submodule.subset_span (Submodule.subset_span ⟨i, rfl⟩)
    have hn : algebraMap (𝓞 D.host.E) D.host.E (c i) ≠ 0 := by simpa using hc i
    have := (spanE (D.sp.X 0) M₁).smul_mem (algebraMap (𝓞 D.host.E) D.host.E (c i))⁻¹ hm
    rw [← algebraMap_smul D.host.E (c i), smul_smul, inv_mul_cancel₀ hn, one_smul] at this
    exact this
  have hU : (⊤ : Submodule D.host.E (D.sp.X 0).V) ⊓ orth (D.sp.X 0) ⊤ = ⊥ := by
    rw [top_inf_eq, eq_bot_iff]
    intro y hy
    exact (Submodule.mem_bot _).2 ((D.sp.X 0).nondeg.2 y fun x => c_mem_orth.1 hy x trivial)
  obtain ⟨hdfg, -, -⟩ := g_dual_facts g_starInt hU hfg hs
  have hle : L0X D Λ (lf D F0) ≤ dualIn (D.sp.X 0) M₁ := by
    intro x hx
    refine g_mem_dualIn.2 ⟨fun y hy => ?_, by rw [hs]; trivial⟩
    obtain ⟨o, ho⟩ := Submodule.mem_one.1 (orthLattice_isIntegral_of_unimodular Λ (lf D F0) hu y (hM₁ hy) x hx)
    exact ⟨o, ho⟩
  refine ⟨?_, ?_⟩
  · exact isNoetherian_submodule.1 (isNoetherian_of_fg_of_noetherian _ hdfg) _ hle
  · intro s hs hli
    exact (LinearIndependent.iff_fractionRing _ _).mp hli


include he in
theorem mem_sup_isotropic_of_dual_pairing (hΛ : Submodule.IsFullLattice D.host.E Λ) (hu : Formalism.HermitianLatticesTheory.IsUnimodular (hS D).hT Λ)
    (y : (hS D).V)
    (hy : ∀ m ∈ Λ ⊓ toO (hS D) (orth (hS D) (Xsp (lf D F0))), (hS D).hT m y ∈ (1 : Submodule (𝓞 D.host.E) D.host.E)) :
    y ∈ Λ ⊔ toO (hS D) (Xsp (lf D F0)) := by
  let ℓ : Fin D.R.rS → Module.Dual D.host.E (hS D).V := fun a => (hS D).hT (F0.e a)
  have hℓ : LinearIndependent D.host.E ℓ := by
    rw [Fintype.linearIndependent_iff]
    intro c hc a
    have h1 : (hS D).hT (∑ a, star (c a) • F0.e a) = 0 := by

      rw [map_sum, ← hc]
      refine Finset.sum_congr rfl (fun a _ => ?_)
      rw [map_smulₛₗ, starRingEnd_apply, star_star]
    have h2 : ∑ a, star (c a) • F0.e a = 0 := (hS D).nondeg.1 _ (fun y => by rw [h1]; rfl)
    have h3 := Fintype.linearIndependent_iff.1 F0.e_indep _ h2 a
    simpa using h3
  let bb := Basis.extend hℓ.linearIndepOn_id
  let idx : Fin D.R.rS → hℓ.linearIndepOn_id.extend (Set.subset_univ _) :=
    fun a => ⟨ℓ a, hℓ.linearIndepOn_id.subset_extend _ ⟨a, rfl⟩⟩
  let f : Fin D.R.rS → (hS D).V := fun a =>
    (Module.evalEquiv D.host.E (hS D).V).symm (bb.coord (idx a))
  have hf : ∀ a b, (hS D).hT (F0.e a) (f b) = if a = b then 1 else 0 := by
    intro a b
    change ℓ a ((Module.evalEquiv D.host.E (hS D).V).symm (bb.coord (idx b))) = _
    rw [Module.apply_evalEquiv_symm_apply]
    have ha : bb (idx a) = ℓ a := Basis.extend_apply_self _ _
    classical
    rw [← ha, Basis.coord_apply, Basis.repr_self_apply]
    have hi : idx b = idx a ↔ a = b := by
      constructor
      · intro h
        have := congrArg Subtype.val h
        exact (hℓ.injective this).symm
      · rintro rfl
        rfl
    by_cases h : a = b
    · subst b
      simp only
    · have hn : idx a ≠ idx b := fun hh => h (hi.mp hh.symm)
      simp only [if_neg h, if_neg hn]
  have DL := Formalism.HermitianLatticesTheory.dualLattice (𝓞 D.host.E) D.host.E (hS D).V (hS D).hT (hS D).herm (hS D).nondeg i_star_int
  have hlat : ∀ N : LatV D, N.FG → Submodule.IsFullLattice D.host.E (Λ ⊔ N) := by
    letI := hΛ
    intro N hN
    exact Submodule.IsFullLattice.of_le_of_fg D.host.E le_sup_left (hΛ.fg.sup hN)
  have hΛ₂ := (DL _ (hlat (Submodule.span (𝓞 D.host.E) {y}) (Submodule.fg_span (Set.finite_singleton y)))).1
  choose c hc hcf using fun a => a_exists_smul_mem _ hΛ₂ (f a)
  set ε : 𝓞 D.host.E := ∏ a, c a with hε
  have hε0 : ε ≠ 0 := Finset.prod_ne_zero_iff.2 fun a _ => hc a
  have hε1 : algebraMap (𝓞 D.host.E) D.host.E ε ≠ 0 := by simpa using hε0
  have hg : ∀ a, ε • f a ∈
      Formalism.HermitianLatticesTheory.dual (hS D).hT (Λ ⊔ Submodule.span (𝓞 D.host.E) {y}) := by
    intro a
    rw [hε, ← Finset.prod_erase_mul _ _ (Finset.mem_univ a), mul_smul]
    exact Submodule.smul_mem _ _ (hcf a)
  have hgΛ : ∀ a, ε • f a ∈ Λ := by
    intro a
    rw [← hu]
    exact (i_mem_dual _ _).2 fun l hl => (i_mem_dual _ _).1 (hg a) l (Submodule.mem_sup_left hl)
  have hgy : ∀ a, (hS D).hT (ε • f a) y ∈ (1 : Submodule (𝓞 D.host.E) D.host.E) := by
    intro a
    rw [← c_herm]
    exact star_mem_one_submodule ((i_mem_dual _ _).1 (hg a) y
      (Submodule.mem_sup_right (Submodule.mem_span_singleton_self y)))
  set δ : D.host.E := (star (algebraMap (𝓞 D.host.E) D.host.E ε))⁻¹ with hδ
  set N : LatV D := Submodule.span (𝓞 D.host.E) (Set.range fun a => δ • F0.e a) with hN
  have hB := (DL _ (hlat N (Submodule.fg_span (Set.finite_range _)))).2.1
  have hyB : y ∈ Λ ⊔ N := by
    rw [← hB]
    refine (i_mem_dual _ _).2 fun l hl => ?_
    have hlΛ : l ∈ Λ := by
      rw [← hu]
      exact (i_mem_dual _ _).2 fun l' hl' => (i_mem_dual _ _).1 hl l' (Submodule.mem_sup_left hl')
    have ho : ∀ a, ∃ o : 𝓞 D.host.E, algebraMap (𝓞 D.host.E) D.host.E o =
        (algebraMap (𝓞 D.host.E) D.host.E ε)⁻¹ * (hS D).hT (F0.e a) l := by
      intro a
      have h1 := (i_mem_dual _ _).1 hl (δ • F0.e a)
        (Submodule.mem_sup_right (Submodule.subset_span ⟨a, rfl⟩))
      rw [map_smulₛₗ, LinearMap.smul_apply, smul_eq_mul, starRingEnd_apply, hδ, star_inv₀, star_star] at h1
      exact Submodule.mem_one.1 h1
    choose o ho using ho
    set l' : (hS D).V := ∑ a, o a • (ε • f a) with hl'
    have hl'Λ : l' ∈ Λ := Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (hgΛ a)
    have hm : l - l' ∈ Λ ⊓ toO (hS D) (orth (hS D) (Xsp (lf D F0))) := by
      refine ⟨Λ.sub_mem hlΛ hl'Λ, ?_⟩
      show l - l' ∈ orth (hS D) (Submodule.span D.host.E (Set.range F0.e))
      refine a_orth_of_frame _ _ fun b => ?_

      rw [map_sub, hl', map_sum, sub_eq_zero]
      have : ∀ a, (hS D).hT (F0.e b) (o a • (ε • f a)) =
          if b = a then algebraMap (𝓞 D.host.E) D.host.E (o a) * algebraMap (𝓞 D.host.E) D.host.E ε else 0 := by
        intro a
        rw [← algebraMap_smul D.host.E (o a), ← algebraMap_smul D.host.E ε, map_smul, map_smul, hf]
        split_ifs <;> simp
      simp only [this, Finset.sum_ite_eq, Finset.mem_univ, if_true]
      rw [ho b]
      field_simp
    have e : l = (l - l') + l' := by abel
    rw [e, map_add (f := _), LinearMap.add_apply]
    refine Submodule.add_mem _ (hy _ hm) ?_

    rw [hl', map_sum, LinearMap.sum_apply]
    refine Submodule.sum_mem _ fun a _ => ?_
    rw [← algebraMap_smul D.host.E (o a), map_smulₛₗ, LinearMap.smul_apply, smul_eq_mul, starRingEnd_apply]
    exact mul_mem_one_submodule (star_mem_one_submodule (Submodule.mem_one.2 ⟨o a, rfl⟩)) (hgy a)
  have hNX : N ≤ toO (hS D) (Xsp (lf D F0)) := ?_
  · exact (sup_le_sup_left hNX Λ) hyB
  refine Submodule.span_le.2 ?_
  rintro _ ⟨a, rfl⟩
  show δ • F0.e a ∈ Submodule.span D.host.E (Set.range F0.e)
  exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩)

end Lat

end Formalism.MainNotions.BridgeLemma₂

end
