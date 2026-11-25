module

public import GroundTheory.GlobalFields.HerbrandQuotients.Cyclic
public import GroundTheory.ProfiniteCohomology.GaloisModules.CoeGalRootsOfUnityHomApply
public import Mathlib.NumberTheory.NumberField.Completion.LiesOverInstances
public import GroundTheory.GlobalFields.SemilocalAlgebras.Infinite

@[expose] public section

noncomputable section

namespace GroundTheory.Global

open NumberField NumberField.InfinitePlace NumberField.InfinitePlace.Completion GroundTheory.ProfCoh
  GroundTheory.GroupCoh
open scoped NumberField.LiesOver ComplexConjugate

theorem natCard_kerModRange_eq_one {A : Type*} [AddCommGroup A] {f g : A →+ A}
    (h : ∀ x ∈ f.ker, x ∈ g.range) : Nat.card (KerModRange f g) = 1 := by
  have : Subsingleton (KerModRange f g) := ⟨fun p q => by
    induction p using QuotientAddGroup.induction_on with | H x =>
    induction q using QuotientAddGroup.induction_on with | H y =>
    rw [KerModRange.mk_eq_mk_iff]
    exact h _ (sub_mem x.2 y.2)⟩
  exact Nat.card_of_subsingleton (0 : KerModRange f g)

namespace InfinitePlace

def realSignHom {G : Type*} [Group G] (c : G) (hc : c * c = 1) : ℝˣ →* G where
  toFun x := if (x : ℝ) < 0 then c else 1
  map_one' := by simp
  map_mul' x y := by
    simp only [Units.val_mul]
    rcases lt_or_gt_of_ne x.ne_zero with hx | hx <;>
      rcases lt_or_gt_of_ne y.ne_zero with hy | hy
    · simp [hx, hy, not_lt.2 (mul_pos_of_neg_of_neg hx hy).le, hc]
    · simp [hx, not_lt.2 hy.le, mul_neg_of_neg_of_pos hx hy]
    · simp [not_lt.2 hx.le, hy, mul_neg_of_pos_of_neg hx hy]
    · simp [not_lt.2 hx.le, not_lt.2 hy.le, not_lt.2 (mul_pos hx hy).le]

theorem realSignHom_apply {G : Type*} [Group G] (c : G) (hc : c * c = 1) (x : ℝˣ) :
    realSignHom c hc x = if (x : ℝ) < 0 then c else 1 :=
  rfl

variable {K L : Type*} [Field K] [Field L] [Algebra K L] {v : InfinitePlace K}
  (w : InfinitePlace L) [w.LiesOver v]

local instance instFiniteDimensionalLocalSymbolCompletion :
    FiniteDimensional v.Completion w.Completion :=
  Module.finite_of_finrank_pos (finrank_completion_pos (v := v) w)

section Degree

theorem finrank_completion_eq_two_iff :
    Module.finrank v.Completion w.Completion = 2 ↔ v.IsReal ∧ w.IsComplex := by
  have hc : w.comap (algebraMap K L) = v := NumberField.InfinitePlace.LiesOver.comap_eq w v
  rcases w.isUnramified_or_isRamified K with h | h
  · rw [h.finrank_eq_one v]
    refine ⟨fun h' => absurd h' (by norm_num), fun ⟨hv, hw⟩ => absurd h ?_⟩
    exact isRamified_iff.2 ⟨hw, hc ▸ hv⟩
  · rw [h.finrank_eq_two v]
    exact ⟨fun _ => ⟨hc ▸ h.isReal, h.isComplex⟩, fun _ => rfl⟩

theorem finrank_completion_eq_one_iff :
    Module.finrank v.Completion w.Completion = 1 ↔ ¬ (v.IsReal ∧ w.IsComplex) := by
  rw [← finrank_completion_eq_two_iff w]
  rcases w.isUnramified_or_isRamified K with h | h
  · rw [h.finrank_eq_one v]; norm_num
  · rw [h.finrank_eq_two v]; norm_num

end Degree

section Conj

variable {w}

theorem extensionEmbedding_algebraMap (hv : v.IsReal) (x : v.Completion) :
    extensionEmbedding w (algebraMap v.Completion w.Completion x) =
      (extensionEmbeddingOfIsReal hv x : ℂ) := by
  have := NumberField.InfinitePlace.LiesOver.extensionEmbedding_liesOver_of_isReal w hv
  rw [extensionEmbeddingOfIsReal_apply]
  exact Completion.liesOver_extensionEmbedding_apply w v


open scoped Classical in
def completionConj (hv : v.IsReal) : Gal(w.Completion/v.Completion) :=
  if hw : w.IsComplex then
    AlgEquiv.ofRingEquiv (f := ((ringEquivComplexOfIsComplex hw).trans
      (starRingAut : RingAut ℂ)).trans (ringEquivComplexOfIsComplex hw).symm) (fun x => by
        apply (ringEquivComplexOfIsComplex hw).injective
        simp only [RingEquiv.trans_apply, RingEquiv.apply_symm_apply, ringEquivComplexOfIsComplex_apply,
          extensionEmbedding_algebraMap hv, starRingAut_apply]
        exact Complex.conj_ofReal _)
  else 1

theorem extensionEmbedding_completionConj (hv : v.IsReal) (x : w.Completion) :
    extensionEmbedding w (completionConj hv x) = conj (extensionEmbedding w x) := by
  by_cases hw : w.IsComplex
  · rw [← ringEquivComplexOfIsComplex_apply hw]
    simp [completionConj, dite_eq_left hw]
  · rw [completionConj, dite_eq_right hw, AlgEquiv.one_apply,
      ← extensionEmbeddingOfIsReal_apply (not_isComplex_iff_isReal.1 hw), Complex.conj_ofReal]

theorem completionConj_mul_self (hv : v.IsReal) :
    completionConj (w := w) hv * completionConj hv = 1 := by
  refine AlgEquiv.ext fun x => ?_
  apply (extensionEmbedding w).injective
  simp [AlgEquiv.mul_apply, extensionEmbedding_completionConj]

theorem completionConj_ne_one (hv : v.IsReal) (hw : w.IsComplex) :
    completionConj (w := w) hv ≠ 1 := by
  intro h
  obtain ⟨z, hz⟩ := surjective_extensionEmbedding_of_isComplex hw Complex.I
  have := extensionEmbedding_completionConj (w := w) hv z
  rw [h, AlgEquiv.one_apply, hz, Complex.conj_I] at this
  have h2 : (2 : ℂ) * Complex.I = 0 := by linear_combination this
  simp at h2


open scoped Classical in
theorem eq_one_or_eq_completionConj (hv : v.IsReal) (hw : w.IsComplex)
    (σ : Gal(w.Completion/v.Completion)) : σ = 1 ∨ σ = completionConj hv := by
  classical
  by_contra h
  push Not at h
  have hcard := AlgEquiv.card_le (F := v.Completion) (K := w.Completion)
  rw [(finrank_completion_eq_two_iff w).2 ⟨hv, hw⟩] at hcard
  have h3 : ({1, completionConj hv, σ} : Finset Gal(w.Completion/v.Completion)).card = 3 :=
    Finset.card_eq_three.2 ⟨1, completionConj hv, σ, (completionConj_ne_one hv hw).symm,
      h.1.symm, h.2.symm, rfl⟩
  have := Finset.card_le_univ ({1, completionConj hv, σ} : Finset Gal(w.Completion/v.Completion))
  omega


open scoped Classical in
theorem univ_eq_one_completionConj (hv : v.IsReal) (hw : w.IsComplex) :
    (Finset.univ : Finset Gal(w.Completion/v.Completion)) = {1, completionConj hv} := by
  ext σ
  simp only [Finset.mem_univ, Finset.mem_insert, Finset.mem_singleton, true_iff]
  exact eq_one_or_eq_completionConj hv hw σ

theorem card_gal_eq_two (hv : v.IsReal) (hw : w.IsComplex) :
    Fintype.card Gal(w.Completion/v.Completion) = 2 := by
  classical
  rw [← Finset.card_univ, univ_eq_one_completionConj hv hw]
  exact Finset.card_pair (completionConj_ne_one hv hw).symm


variable (w) in
theorem subsingleton_gal (h : ¬ (v.IsReal ∧ w.IsComplex)) :
    Subsingleton Gal(w.Completion/v.Completion) := by
  have hcard := AlgEquiv.card_le (F := v.Completion) (K := w.Completion)
  rw [(finrank_completion_eq_one_iff w).2 h] at hcard
  exact Fintype.card_le_one_iff_subsingleton.1 hcard


variable (w) in
theorem natCard_gal_completion :
    Nat.card Gal(w.Completion/v.Completion) = Module.finrank v.Completion w.Completion := by
  rw [Nat.card_eq_fintype_card]
  by_cases h2 : v.IsReal ∧ w.IsComplex
  · rw [card_gal_eq_two h2.1 h2.2, (finrank_completion_eq_two_iff w).2 h2]
  · rw [(finrank_completion_eq_one_iff w).2 h2]
    have := subsingleton_gal w h2
    exact Fintype.card_eq_one_iff.2 ⟨1, fun _ => Subsingleton.elim _ _⟩

instance isGalois_completion : IsGalois v.Completion w.Completion :=
  IsGalois.of_card_aut_eq_finrank (h := natCard_gal_completion w)

end Conj

section Norm

variable {w}

theorem algebraMap_norm_completion (hv : v.IsReal) (hw : w.IsComplex) (y : w.Completion) :
    algebraMap v.Completion w.Completion (Algebra.norm v.Completion y) =
      y * completionConj (w := w) hv y := by
  classical
  rw [Algebra.norm_eq_prod_automorphisms, univ_eq_one_completionConj hv hw,
    Finset.prod_pair (completionConj_ne_one hv hw).symm, AlgEquiv.one_apply]

theorem extensionEmbeddingOfIsReal_norm (hv : v.IsReal) (hw : w.IsComplex) (y : w.Completion) :
    extensionEmbeddingOfIsReal hv (Algebra.norm v.Completion y) =
      Complex.normSq (extensionEmbedding w y) := by
  apply Complex.ofReal_injective
  rw [← extensionEmbedding_algebraMap (w := w) hv, algebraMap_norm_completion hv hw, map_mul,
    extensionEmbedding_completionConj, Complex.mul_conj]


variable (v w) in
def normSubgroup : Subgroup v.Completionˣ :=
  (Units.map (Algebra.norm v.Completion : w.Completion →* v.Completion)).range

theorem mem_normSubgroup_iff (hv : v.IsReal) (hw : w.IsComplex) (x : v.Completionˣ) :
    x ∈ normSubgroup v w ↔ 0 < extensionEmbeddingOfIsReal hv x := by
  rw [normSubgroup, MonoidHom.mem_range]
  constructor
  · rintro ⟨y, rfl⟩
    rw [Units.coe_map, extensionEmbeddingOfIsReal_norm hv hw]
    exact Complex.normSq_pos.2 ((map_ne_zero _).2 y.ne_zero)
  · intro hx
    obtain ⟨a, ha⟩ := surjective_extensionEmbeddingOfIsReal hv
      (Real.sqrt (extensionEmbeddingOfIsReal hv x))
    have ha0 : a ≠ 0 := by
      rintro rfl
      rw [map_zero, eq_comm, Real.sqrt_eq_zero hx.le] at ha
      exact hx.ne' ha
    refine ⟨Units.mk0 (algebraMap v.Completion w.Completion a) ((map_ne_zero _).2 ha0), ?_⟩
    apply Units.ext
    rw [Units.coe_map, Units.val_mk0, Algebra.norm_algebraMap,
      (finrank_completion_eq_two_iff w).2 ⟨hv, hw⟩]
    apply (extensionEmbeddingOfIsReal hv).injective
    rw [map_pow, ha, Real.sq_sqrt hx.le]


variable (w) in
theorem normSubgroup_eq_top (h : ¬ (v.IsReal ∧ w.IsComplex)) : normSubgroup v w = ⊤ := by
  rw [eq_top_iff]
  intro x _
  refine ⟨Units.map (algebraMap v.Completion w.Completion : v.Completion →* w.Completion) x, ?_⟩
  apply Units.ext
  rw [Units.coe_map, Units.coe_map, MonoidHom.coe_ofClass, Algebra.norm_algebraMap,
    (finrank_completion_eq_one_iff w).2 h, pow_one]

end Norm

section LocalSymbol

variable (v)


open scoped Classical in
def localSymbol : v.Completionˣ →* Gal(w.Completion/v.Completion) :=
  if hv : v.IsReal then
    (realSignHom (completionConj (w := w) hv) (completionConj_mul_self hv)).comp
      (Units.map (extensionEmbeddingOfIsReal hv).toMonoidHom)
  else 1

theorem localSymbol_apply (hv : v.IsReal) (x : v.Completionˣ) :
    localSymbol v w x =
      if extensionEmbeddingOfIsReal hv x < 0 then completionConj hv else 1 := by
  simp only [localSymbol, dite_eq_left hv, MonoidHom.comp_apply, realSignHom_apply, Units.coe_map,
    RingHom.toMonoidHom_eq_coe, MonoidHom.coe_ofClass]
  exact if_congr Iff.rfl rfl rfl

theorem localSymbol_of_not_isReal (hv : ¬ v.IsReal) : localSymbol v w = 1 := by
  rw [localSymbol, dite_eq_right hv]

theorem ker_localSymbol : (localSymbol v w).ker = normSubgroup v w := by
  by_cases h2 : v.IsReal ∧ w.IsComplex
  · obtain ⟨hv, hw⟩ := h2
    ext x
    rw [MonoidHom.mem_ker, localSymbol_apply v w hv, mem_normSubgroup_iff hv hw]
    have hx0 : extensionEmbeddingOfIsReal hv x ≠ 0 := (map_ne_zero _).2 x.ne_zero
    constructor
    · intro h
      by_contra hneg
      have hlt : extensionEmbeddingOfIsReal hv x < 0 := lt_of_le_of_ne (not_lt.1 hneg) hx0
      rw [ite_eq_left hlt] at h
      exact completionConj_ne_one hv hw h
    · intro h
      rw [ite_eq_right (not_lt.2 h.le)]
  · rw [normSubgroup_eq_top w h2, eq_top_iff]
    intro x _
    rw [MonoidHom.mem_ker]
    by_cases hv : v.IsReal
    · have hw : ¬ w.IsComplex := fun hw => h2 ⟨hv, hw⟩
      rw [localSymbol_apply v w hv, completionConj, dite_eq_right hw, ite_self]
    · rw [localSymbol_of_not_isReal v w hv, MonoidHom.one_apply]

end LocalSymbol

section Herbrand

variable (v)

abbrev unitsRep : Representation ℤ Gal(w.Completion/v.Completion) (Additive w.Completionˣ) :=
  zRepOfMonoidEnd (galUnitsHom v.Completion w.Completion)

theorem unitsRep_toMul (σ : Gal(w.Completion/v.Completion)) (x : Additive w.Completionˣ) :
    ((unitsRep v w σ x).toMul : w.Completion) = σ (x.toMul : w.Completion) :=
  rfl

theorem cycSub_unitsRep_toMul (σ : Gal(w.Completion/v.Completion)) (x : Additive w.Completionˣ) :
    ((cycSub (unitsRep v w) σ x).toMul : w.Completion) =
      σ (x.toMul : w.Completion) / (x.toMul : w.Completion) := by
  rw [cycSub_apply, toMul_sub, Units.val_div_eq_div_val, unitsRep_toMul]

variable {v w}

theorem exists_conj_eq_mul {z : ℂ} (hz : z * conj z = 1) : ∃ u : ℂ, u ≠ 0 ∧ conj u = z * u := by
  by_cases h : 1 + conj z = 0
  · refine ⟨Complex.I, Complex.I_ne_zero, ?_⟩
    have h1 : conj z = -1 := by linear_combination h
    have h2 : z = -1 := by simpa using congrArg conj h1
    rw [h2, Complex.conj_I]
    ring
  · refine ⟨1 + conj z, h, ?_⟩
    rw [map_add (f := _), map_one, Complex.conj_conj]
    linear_combination -hz

variable (v w)

end Herbrand

end InfinitePlace

end GroundTheory.Global
