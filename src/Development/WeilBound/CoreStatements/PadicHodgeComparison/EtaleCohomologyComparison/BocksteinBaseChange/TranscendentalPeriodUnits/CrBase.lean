module

public import GroundTheory.PAdicHodge.FontaineLemmaInvariants
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.SemistableModelSemistable
public import Development.WeilBound.CoreStatements.AutomorphicKernels.DeRhamPotentiallySemistable.DeRhamTwists.ContinuousCyclotomicCharacter
public import GroundTheory.PAdicHodge.BCrisEigenMaps
public import GroundTheory.PAdicHodge.BCrisNewton

@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open Formalism.Per6 GroundTheory.PAdicHodge DeRhamPotentiallySemistable.DRPst

namespace CrystallineSemistableComparison

section Abstract

private theorem eq_mul_of_mul_eq {M : Type*} [CommMonoid M] {x T L W Ti Li : M} {n m : ℕ}
    (hT : T * Ti = 1) (hL : L * Li = 1) (h : x * (T ^ n * L ^ m) = W) :
    x = W * Ti ^ n * Li ^ m := by
  rw [← h, ← mul_assoc, mul_right_comm (x * T ^ n), mul_assoc x,
    ← mul_pow, hT, one_pow, mul_one, mul_assoc, ← mul_pow, hL, one_pow, mul_one]

variable {F : Type*} [Field F]

end Abstract

private theorem closure_range_pair_eq {A R F : Type*} [CommRing A] [CommRing R] [CommRing F]
    (i : A →+* F) (f : R →+* F) (g : A → R) (hg : ∀ a, f (g a) = i a) {u v : F}
    (hu : u ∈ f.range) (hv : v ∈ f.range)
    (hle : f.range ≤ Subring.closure (Set.range i ∪ {u, v})) :
    Subring.closure (Set.range i ∪ {u, v}) = f.range := by
  refine le_antisymm (Subring.closure_le.2 ?_) hle
  rintro x (⟨a, rfl⟩ | rfl | rfl)
  · exact RingHom.mem_range.mpr ⟨g a, hg a⟩
  · exact hu
  · exact hv

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

local notation "ιB" =>
  ACris.iotaB (untilt_epsilon (p := l)) untilt_frobeniusEquiv_symm_epsilon_ne_one


theorem iotaB_padic (q : ℚ_[l]) :
    ιB (algebraMap ℚ_[l] (ACris.BCris (untilt_epsilon (p := l))) q) = qQ l q :=
  ACris.iotaB_algebraMap_padic_bdRPlus (untilt_epsilon (p := l))
    untilt_frobeniusEquiv_symm_epsilon_ne_one q


theorem iotaB_periodTCris : ιB (ACris.periodTCris (untilt_epsilon (p := l))) = tQ l :=
  ACris.iotaB_periodTCris (untilt_epsilon (p := l)) untilt_frobeniusEquiv_symm_epsilon_ne_one


theorem σD_iotaB (g : K.fixingSubgroup) (x : ACris.BCris (untilt_epsilon (p := l))) :
    σD g.1 (ιB x) = ιB (ACris.galB _ (IntermediateField.fixingSubgroupEquiv K g) x) :=
  (ACris.iotaB_galB (untilt_epsilon (p := l)) untilt_frobeniusEquiv_symm_epsilon_ne_one
    (IntermediateField.fixingSubgroupEquiv K g) x).symm


theorem iotaB_acris (a : ACris.ACris ℂ_[l] l) :
    ιB (algebraMap (ACris.BCrisPlus ℂ_[l] l) (ACris.BCris (untilt_epsilon (p := l)))
      (algebraMap (ACris.ACris ℂ_[l] l) (ACris.BCrisPlus ℂ_[l] l) a)) = iC l a :=
  (ACris.iotaB_algebraMap (untilt_epsilon (p := l)) untilt_frobeniusEquiv_symm_epsilon_ne_one
    (algebraMap (ACris.ACris ℂ_[l] l) (ACris.BCrisPlus ℂ_[l] l) a)).trans
    (congrArg (algebraMap (BdRp l) (BdR l)) (ACris.iotaPlus_algebraMap a))

theorem l_ne : ((l : BdR l)) ≠ 0 := by
  exact (map_natCast (qQ l) l) ▸
    (map_ne_zero (qQ l)).2 (Nat.cast_ne_zero.2 (Fact.out : l.Prime).ne_zero)

theorem inv_mem_range {R F : Type*} [CommRing R] [Field F] (f : R →+* F) {u : R} (hu : IsUnit u) :
    (f u)⁻¹ ∈ f.range := by
  obtain ⟨v, rfl⟩ := hu
  exact ⟨↑v⁻¹, map_units_inv (f : R →* F) v⟩

private theorem mem_range_of_mul_eq_one {R F : Type*} [CommRing R] [CommRing F] (f : R →+* F)
    {u : R} {v w : F} (hu : IsUnit u) (h : f u = v) (hw : v * w = 1) : w ∈ f.range := by
  obtain ⟨a, rfl⟩ := hu
  refine RingHom.mem_range.mpr ⟨↑a⁻¹, ?_⟩
  calc
    f ↑a⁻¹ = (f ↑a⁻¹ * v) * w := by rw [mul_assoc, hw, mul_one]
    _ = w := by rw [← h, ← map_mul, Units.inv_mul, map_one, one_mul]

private theorem isUnit_natCast_of_map {A B C : Type*} [CommRing A] [CommRing B] [CommRing C]
    (f : A →+* B) (g : B →+* C) (n : ℕ) (h : IsUnit (f (n : A))) :
    IsUnit (n : C) := by
  simpa only [map_natCast] using h.map g


theorem linv_mem_range : ((l : BdR l))⁻¹ ∈ (ιB).range := by
  have hu := isUnit_natCast_of_map
    (algebraMap (ACris.ACris ℂ_[l] l) (ACris.BCrisPlus ℂ_[l] l))
    (algebraMap (ACris.BCrisPlus ℂ_[l] l) (ACris.BCris (untilt_epsilon (p := l)))) l
    (IsLocalization.Away.algebraMap_isUnit (S := ACris.BCrisPlus ℂ_[l] l)
      (l : ACris.ACris ℂ_[l] l))
  exact mem_range_of_mul_eq_one ιB hu (map_natCast ιB l) (mul_inv_cancel₀ l_ne)


theorem tinv_mem_range : (tQ l)⁻¹ ∈ (ιB).range :=
  mem_range_of_mul_eq_one ιB (ACris.isUnit_periodTCris (untilt_epsilon (p := l))) iotaB_periodTCris
    (mul_inv_cancel₀ DeRhamTwist.Twist.tQ_ne)

theorem iC_mem_bcr (a : ACris.ACris ℂ_[l] l) : iC l a ∈ Bcr l :=
  Subring.subset_closure (Or.inl ⟨a, rfl⟩)

theorem linv_mem_bcr : ((l : BdR l))⁻¹ ∈ Bcr l := Subring.subset_closure (Or.inr (Or.inl rfl))

theorem tinv_mem_bcr : (tQ l)⁻¹ ∈ Bcr l := Subring.subset_closure (Or.inr (Or.inr rfl))


theorem range_le_bcr : (ιB).range ≤ Bcr l := by
  rintro _ ⟨u, rfl⟩
  -- Clear the two denominators through `IsLocalization.Away.surj` at `BCris` and `BCrisPlus`
  -- themselves. A lemma stated for a generic `Localization.Away` makes the kernel identify its
  -- ring structures with the named instances of these two rings, which is slow.
  obtain ⟨n, x, hx⟩ := IsLocalization.Away.surj (S := ACris.BCris (untilt_epsilon (p := l)))
    (algebraMap (ACris.ACris ℂ_[l] l) (ACris.BCrisPlus ℂ_[l] l)
      (ACris.periodT (untilt_epsilon (p := l)))) u
  obtain ⟨m, w, hw⟩ := IsLocalization.Away.surj (S := ACris.BCrisPlus ℂ_[l] l)
    (l : ACris.ACris ℂ_[l] l) x
  have h1 : ιB u * tQ l ^ n = ιB (algebraMap _ _ x) := by
    have h := congrArg ιB hx
    rwa [map_mul, map_pow, iotaB_acris] at h
  have h2 : ιB (algebraMap _ _ x) * (l : BdR l) ^ m = iC l w := by
    have h := congrArg (fun y => ιB (algebraMap _ (ACris.BCris (untilt_epsilon (p := l))) y)) hw
    simpa only [map_mul, map_pow, iotaB_acris, map_natCast] using h
  have h3 : ιB u * (tQ l ^ n * (l : BdR l) ^ m) = iC l w := by rw [← mul_assoc, h1, h2]
  rw [eq_mul_of_mul_eq (mul_inv_cancel₀ DeRhamTwist.Twist.tQ_ne) (mul_inv_cancel₀ l_ne) h3]
  exact mul_mem (mul_mem (iC_mem_bcr w) (pow_mem tinv_mem_bcr n)) (pow_mem linv_mem_bcr m)


theorem bcr_eq : Bcr l = (ιB).range :=
  closure_range_pair_eq (iC l) ιB
    ((algebraMap (ACris.BCrisPlus ℂ_[l] l) (ACris.BCris (untilt_epsilon (p := l)))).comp
      (algebraMap (ACris.ACris ℂ_[l] l) (ACris.BCrisPlus ℂ_[l] l)))
    iotaB_acris linv_mem_range tinv_mem_range range_le_bcr

theorem q_mem_bcr (z : ℚ_[l]) : qQ l z ∈ Bcr l := by
  exact range_le_bcr (RingHom.mem_range.mpr ⟨_, iotaB_padic z⟩)

theorem bcr_stab (g : K.fixingSubgroup) (x : BdR l) (hx : x ∈ Bcr l) : σD g.1 x ∈ Bcr l := by
  have hx' : x ∈ (ιB).range := bcr_eq (l := l) ▸ hx
  obtain ⟨y, hy⟩ := RingHom.mem_range.mp hx'
  exact range_le_bcr (RingHom.mem_range.mpr ⟨_,
    (σD_iotaB g y).symm.trans (congrArg (σD g.1) hy)⟩)

end CrystallineSemistableComparison
