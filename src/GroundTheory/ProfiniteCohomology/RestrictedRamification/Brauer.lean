module

public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerLocalVal
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerDivisor
public import GroundTheory.ProfiniteCohomology.GlobalClassFormation.EqZeroOfBrauerLocalApplyEqZero
import GroundTheory.ProfiniteCohomology.CohomologyFunctoriality.Naturality
import GroundTheory.ProfiniteCohomology.Colimit
public import GroundTheory.ProfiniteCohomology.GlobalClassFormation.ExistsUnitsToIdelesEqOfIdelesSumInvEqZero
import GroundTheory.ProfiniteCohomology.GlobalClassFormation.SumInvariants
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerSplit

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory NumberField IsDedekindDomain IntermediateField GroundTheory.Global

noncomputable section

local notation "ℚ̄" => AlgebraicClosure ℚ

private theorem map_nsmul_eq_zero_of {A B F : Type*} [AddMonoid A] [AddMonoid B]
    [FunLike F A B] [AddMonoidHomClass F A B] (f : F) (n : ℕ) (x : A) (hx : n • x = 0) :
    n • f x = 0 :=
  (map_nsmul f n x).symm.trans ((congrArg f hx).trans (map_zero f))

private theorem linearMap_apply_apply_eq_zero {R A B C : Type*} [Semiring R]
    [AddCommMonoid A] [AddCommMonoid B] [AddCommMonoid C]
    [Module R A] [Module R B] [Module R C]
    (f : A →ₗ[R] B) (g : B →ₗ[R] C) {x : A} (hx : x = 0) : g (f x) = 0 :=
  (congrArg (fun z => g (f z)) hx).trans ((congrArg g f.map_zero).trans g.map_zero)

theorem eq_zero_of_coprime_nsmul_eq_zero {A : Type*} [AddCommGroup A] {ℓ N k : ℕ} (hN : N.Coprime ℓ)
    {x : A} (h1 : N • x = 0) (h2 : ℓ ^ k • x = 0) : x = 0 := by
  have hd : addOrderOf x ∣ Nat.gcd N (ℓ ^ k) :=
    Nat.dvd_gcd (addOrderOf_dvd_of_nsmul_eq_zero h1) (addOrderOf_dvd_of_nsmul_eq_zero h2)
  rw [Nat.Coprime.gcd_eq_one (hN.pow_right k), Nat.dvd_one] at hd
  exact AddMonoid.addOrderOf_eq_one_iff.1 hd

theorem exists_primary_map_eq {A B : Type*} [AddCommGroup A] [AddCommGroup B] (f : A →+ B) {ℓ : ℕ}
    (hℓ : ℓ.Prime) {y : A} (hy : IsOfFinAddOrder y) {k : ℕ} (hk : ℓ ^ k • f y = 0) :
    ∃ y' : A, (∃ j : ℕ, ℓ ^ j • y' = 0) ∧ f y' = f y := by
  set M := addOrderOf y
  have hM : M ≠ 0 := (IsOfFinAddOrder.addOrderOf_pos hy).ne'
  set a := M.factorization ℓ
  set N := M / ℓ ^ a
  have hMN : ℓ ^ a * N = M := Nat.ordProj_mul_ordCompl_eq_self M ℓ
  have hN : Nat.Coprime N ℓ := (Nat.coprime_ordCompl hℓ hM).symm
  set a' := max a k
  have hc : IsCoprime (N : ℤ) ((ℓ ^ a' : ℕ) : ℤ) := Nat.isCoprime_iff_coprime.2 (hN.pow_right a')
  obtain ⟨u, w, huw⟩ := hc
  have hyN : (ℓ ^ a' * N) • y = 0 := by
    apply addOrderOf_dvd_iff_nsmul_eq_zero.1
    change M ∣ ℓ ^ a' * N
    rw [← hMN]
    exact Nat.mul_dvd_mul_right (Nat.pow_dvd_pow ℓ (le_max_left a k)) N
  have hfk : ℓ ^ a' • f y = 0 := by
    have ha' : a' = (a' - k) + k := (Nat.sub_add_cancel (le_max_right a k)).symm
    rw [ha', pow_add, mul_smul, hk, smul_zero]
  refine ⟨(u * N) • y, ⟨a', ?_⟩, ?_⟩
  · calc ℓ ^ a' • (u * N) • y = ((ℓ ^ a' : ℕ) : ℤ) • (u * N) • y := (Nat.cast_smul_eq_nsmul ℤ _ _).symm
      _ = u • ((ℓ ^ a' * N : ℕ) : ℤ) • y := by
        rw [smul_smul, smul_smul]
        congr 1
        push_cast
        ring
      _ = 0 := by rw [Nat.cast_smul_eq_nsmul, hyN, smul_zero]
  · rw [map_zsmul]
    have h2 : (w * ((ℓ ^ a' : ℕ) : ℤ)) • f y = 0 := by
      rw [mul_smul, Nat.cast_smul_eq_nsmul, hfk, smul_zero]
    calc (u * N) • f y = (u * N + w * ((ℓ ^ a' : ℕ) : ℤ)) • f y - (w * ((ℓ ^ a' : ℕ) : ℤ)) • f y := by
          rw [add_smul, add_sub_cancel_right]
      _ = f y := by rw [huw, one_smul, h2, sub_zero]

section LES

universe u

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  {S : ShortComplex (Rep.{u} k G)} [IsDiscreteRep S.X₁] [IsDiscreteRep S.X₂] [IsDiscreteRep S.X₃]
  (hS : S.ShortExact)


include hS in
theorem exists_δ_eq_of_cohomologyMap_f_eq_zero (i j : ℕ) (hij : i + 1 = j) (x : cohomology S.X₁ j)
    (hx : (cohomologyMap S.f j).hom x = 0) : ∃ y : cohomology S.X₃ i, (δ hS i j hij).hom y = x :=
  (ShortComplex.moduleCat_exact_iff _).1 (cohomology_exact₁ hS i j hij) x hx


include hS in
theorem exists_cohomologyMap_f_eq_of_cohomologyMap_g_eq_zero (i : ℕ) (x : cohomology S.X₂ i)
    (hx : (cohomologyMap S.g i).hom x = 0) : ∃ y : cohomology S.X₁ i, (cohomologyMap S.f i).hom y = x :=
  (ShortComplex.moduleCat_exact_iff _).1 (cohomology_exact₂ hS i) x hx


include hS in
theorem exists_cohomologyMap_g_eq_of_δ_eq_zero (i j : ℕ) (hij : i + 1 = j) (x : cohomology S.X₃ i)
    (hx : (δ hS i j hij).hom x = 0) : ∃ y : cohomology S.X₂ i, (cohomologyMap S.g i).hom y = x :=
  (ShortComplex.moduleCat_exact_iff _).1 (cohomology_exact₃ hS i j hij) x hx


include hS in
theorem eq_zero_of_mem_range_δ_of_coprime (i j : ℕ) (hij : i + 1 = j) {x : cohomology S.X₁ j}
    (hx : ∃ y : cohomology S.X₃ i, (δ hS i j hij).hom y = x) (ℓ : ℕ)
    (hM : ∀ y : cohomology S.X₃ i, ∃ N : ℕ, N.Coprime ℓ ∧ N • y = 0) (k : ℕ) (hk : ℓ ^ k • x = 0) :
    x = 0 := by
  obtain ⟨y, rfl⟩ := hx
  obtain ⟨N, hN, hNy⟩ := hM y
  exact eq_zero_of_coprime_nsmul_eq_zero hN (map_nsmul_eq_zero_of (δ hS i j hij).hom N y hNy) hk


omit hS in
theorem cohomologyMapAlong_cohomologyMap_apply {H : Type u} [Group H] [TopologicalSpace H]
    [IsTopologicalGroup H] (φ : H →* G) (hφ : Continuous φ) {A B : Rep.{u} k G} [IsDiscreteRep A]
    [IsDiscreteRep B] {C : Rep.{u} k H} [IsDiscreteRep C] (g : A ⟶ B) (f : Rep.res φ B ⟶ C) (n : ℕ)
    (x : cohomology A n) :
    (cohomologyMapAlong φ hφ f n).hom ((cohomologyMap g n).hom x) =
      (cohomologyMapAlong φ hφ ((Rep.resFunctor φ).map g ≫ f) n).hom x := by
  rw [← cohomologyMapAlong_id_eq_cohomologyMap]
  have := cohomologyMapAlong_comp (φ := MonoidHom.id G) (hφ := continuous_id) g φ hφ f n
  exact (congrArg (fun m => m.hom x) this).symm

end LES

section Instances

variable (K : FiniteSubfield) (S : Set (HeightOneSpectrum (𝓞 K.1))) (ιs : LocalEmbeddings K)

instance compactSpace_galUnramifiedOutside_finiteSubfield :
    CompactSpace (galUnramifiedOutside K.1 ℚ̄ S) :=
  (galUnramifiedOutside_isProfinite (F := K.1) (Ω := ℚ̄) S).1

instance totallyDisconnectedSpace_galUnramifiedOutside_finiteSubfield :
    TotallyDisconnectedSpace (galUnramifiedOutside K.1 ℚ̄ S) :=
  (galUnramifiedOutside_isProfinite (F := K.1) (Ω := ℚ̄) S).2.2

instance isDiscreteRep_picSequence_X₁ : IsDiscreteRep (picSequence K S ιs).X₁ :=
  inferInstanceAs (IsDiscreteRep (sUnitsQuotSequence K.1 ℚ̄ S).X₃)

instance isDiscreteRep_picSequence_X₂ : IsDiscreteRep (picSequence K S ιs).X₂ :=
  inferInstanceAs (IsDiscreteRep (gsDiv K S ιs ℤ))

instance isDiscreteRep_picSequence_X₃ : IsDiscreteRep (picSequence K S ιs).X₃ :=
  inferInstanceAs (IsDiscreteRep (picInfRep K S ιs))

instance isDiscreteRep_galUnitsModSUnits_finiteSubfield :
    IsDiscreteRep (galUnitsModSUnits K.1 ℚ̄ S) :=
  isDiscreteRep_sUnitsQuotSequence_X₃ K.1 ℚ̄ S

end Instances

section SUnits

variable (K : FiniteSubfield) (S : Set (HeightOneSpectrum (𝓞 K.1)))

abbrev sUnitsH2Map : cohomology (sUnitsQuotSequence K.1 ℚ̄ S).X₁ 2 ⟶
    cohomology (sUnitsQuotSequence K.1 ℚ̄ S).X₂ 2 :=
  cohomologyMap (sUnitsQuotSequence K.1 ℚ̄ S).f 2

variable (ℓ : ℕ) (hℓ : ℓ.Prime)
  (hS : ∀ v : HeightOneSpectrum (𝓞 K.1), ((ℓ : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S)


include hℓ hS in
theorem eq_zero_of_sUnitsH2Map_eq_zero_of_localEmbeddings (ιs : LocalEmbeddings K)
    (y : cohomology (sUnitsQuotSequence K.1 ℚ̄ S).X₁ 2) (k : ℕ)
    (hy : ℓ ^ k • y = 0) (h : (sUnitsH2Map K S).hom y = 0) : y = 0 := by
  have hE := sUnitsQuotSequence_shortExact K.1 ℚ̄ S
  obtain ⟨p, rfl⟩ := exists_δ_eq_of_cohomologyMap_f_eq_zero hE 1 2 rfl y h
  have hp : ℓ ^ k • p = 0 := by
    obtain ⟨z, hz⟩ := exists_cohomologyMap_g_eq_of_δ_eq_zero hE 1 2 rfl (ℓ ^ k • p)
      (by rw [map_nsmul]; exact hy)
    have : Subsingleton (cohomology (sUnitsQuotSequence K.1 ℚ̄ S).X₂ 1) :=
      subsingleton_cohomology_one_galUnits
    rw [← hz, Subsingleton.elim z 0, map_zero]
  have hP := picSequence_shortExact K S ιs
  have hD : Subsingleton (cohomology (picSequence K S ιs).X₂ 1) :=
    ModuleCat.subsingleton_of_isZero (isZero_cohomology_one_divFunRep_int (gsDecomp K S ιs))
  obtain ⟨q, hq⟩ := exists_δ_eq_of_cohomologyMap_f_eq_zero hP 0 1 rfl
    (p : cohomology (picSequence K S ιs).X₁ 1) (Subsingleton.elim _ _)
  have hp0 : (p : cohomology (picSequence K S ιs).X₁ 1) = 0 :=
    eq_zero_of_mem_range_δ_of_coprime hP 0 1 rfl ⟨q, hq⟩ ℓ
      (fun y => exists_coprime_smul_cohomology_eq_zero (picInfRep K S ιs) ℓ
        (exists_coprime_smul_picInfRep K S ιs ℓ hℓ hS) 0 y) k hp
  have hp0' : p = 0 := hp0
  rw [hp0', map_zero]


include hℓ hS in
theorem eq_zero_of_sUnitsH2Map_eq_zero (y : cohomology (sUnitsQuotSequence K.1 ℚ̄ S).X₁ 2) (k : ℕ)
    (hy : ℓ ^ k • y = 0) (h : (sUnitsH2Map K S).hom y = 0) : y = 0 :=
  eq_zero_of_sUnitsH2Map_eq_zero_of_localEmbeddings K S ℓ hℓ hS (nonempty_localEmbeddings K).some y k hy h

end SUnits

section Local

variable (K : FiniteSubfield) (S : Set (HeightOneSpectrum (𝓞 K.1))) (ιs : LocalEmbeddings K)

def gsQuotMor : galUnits K.1 (maxUnramifiedOutside K.1 ℚ̄ S) ⟶ galUnitsModSUnits K.1 ℚ̄ S :=
  (sUnitsQuotSequence K.1 ℚ̄ S).g

theorem gsQuotMor_comp_sUnitsQuotDiv : gsQuotMor K S ≫ sUnitsQuotDiv K S ιs = unitsDiv K S ιs :=
  sUnitsQuotSequence_g_comp_sUnitsQuotDiv K S ιs

theorem gsQuotMor_sUnitsToUnits_apply (y : cohomology (galSUnitsMax K.1 ℚ̄ S) 2) :
    (cohomologyMap (gsQuotMor K S) 2).hom
      ((cohomologyMap (sUnitsToUnits S (maxUnramifiedOutside K.1 ℚ̄ S)) 2).hom y) = 0 := by
  have h : cohomologyMap (sUnitsToUnits S (maxUnramifiedOutside K.1 ℚ̄ S)) 2 ≫
      cohomologyMap (gsQuotMor K S) 2 = 0 :=
    cohomologyMap_f_comp_g (S := sUnitsQuotSequence K.1 ℚ̄ S) 2
  rw [← LinearMap.comp_apply, ← ModuleCat.hom_comp, h, ModuleCat.hom_zero, LinearMap.zero_apply]

theorem exists_sUnitsToUnits_eq_of_gsQuotMor (x : cohomology (galUnits K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) 2)
    (hx : (cohomologyMap (gsQuotMor K S) 2).hom x = 0) :
    ∃ y : cohomology (galSUnitsMax K.1 ℚ̄ S) 2,
      (cohomologyMap (sUnitsToUnits S (maxUnramifiedOutside K.1 ℚ̄ S)) 2).hom y = x :=
  _root_.GroundTheory.ProfCoh.exists_cohomologyMap_f_eq (sUnitsQuotSequence_shortExact K.1 ℚ̄ S) 2 x hx

theorem exists_δ_pic_eq (p : cohomology (galUnitsModSUnits K.1 ℚ̄ S) 2)
    (hp : (cohomologyMap (sUnitsQuotDiv K S ιs) 2).hom p = 0) :
    ∃ r : cohomology (picInfRep K S ιs) 1, (δ (picSequence_shortExact K S ιs) 1 2 rfl).hom r = p :=
  exists_δ_eq_of_cohomologyMap_f_eq_zero (picSequence_shortExact K S ιs) 1 2 rfl p hp

theorem divFunEval_sUnitsQuotDiv_apply (v : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S})
    (x : cohomology (galUnits K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) 2) :
    (cohomologyMapAlong (gsDecomp K S ιs v) (continuous_gsDecomp K S ιs v)
        (divFunEval (gsDecomp K S ιs) ℤ v) 2).hom
      ((cohomologyMap (sUnitsQuotDiv K S ιs) 2).hom ((cohomologyMap (gsQuotMor K S) 2).hom x)) =
      (cohomologyMapAlong (decompHomS (v.1.adicCompletion K.1) S (ιs.fin v.1))
        (continuous_decompHomS (Kv := v.1.adicCompletion K.1) S (ιs.fin v.1))
        (ordEmbMor S (ιs.fin v.1) v.2) 2).hom x := by
  let ev := divFunEval (gsDecomp K S ιs) ℤ v
  have e : (cohomologyMap (sUnitsQuotDiv K S ιs) 2).hom ((cohomologyMap (gsQuotMor K S) 2).hom x) =
      (cohomologyMap (unitsDiv K S ιs) 2).hom x := by
    rw [← gsQuotMor_comp_sUnitsQuotDiv K S ιs, cohomologyMap_comp]
    rfl
  have hm : (Rep.resFunctor (gsDecomp K S ιs v)).map (unitsDiv K S ιs) ≫
      ev = (ordEmbMor S (ιs.fin v.1) v.2 :
        Rep.res (gsDecomp K S ιs v) (galUnits K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) ⟶
          trivRep Gal(AlgebraicClosure (v.1.adicCompletion K.1)/v.1.adicCompletion K.1) ℤ) := by
    apply Rep.hom_ext
    apply Representation.IntertwiningMap.ext
    apply LinearMap.ext
    intro y
    exact (divFunEval_unitsDiv K S ιs v y).trans (ordEmbMor_hom_apply S (ιs.fin v.1) v.2 y).symm
  rw [e, cohomologyMapAlong_cohomologyMap_apply (gsDecomp K S ιs v)
    (continuous_gsDecomp K S ιs v) (unitsDiv K S ιs) ev 2 x, hm]
  rfl

theorem gsLocalRes_sUnitsToUnits_eq_zero (y : cohomology (galSUnitsMax K.1 ℚ̄ S) 2)
    (v : HeightOneSpectrum (𝓞 K.1)) (hv : v ∉ S) :
    (gsLocalRes S (ιs.fin v) 2).hom
      (cohomologyULiftIntAddEquiv (galUnits K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) 2
        ((cohomologyMap (sUnitsToUnits S (maxUnramifiedOutside K.1 ℚ̄ S)) 2).hom y)) = 0 := by
  refine (gsLocalRes_eq_zero_iff S (ιs.fin v) hv _).2 ?_
  rw [← divFunEval_sUnitsQuotDiv_apply K S ιs ⟨v, hv⟩ _, gsQuotMor_sUnitsToUnits_apply,
    map_zero, map_zero]

variable (ℓ : ℕ) (hℓ : ℓ.Prime)
  (hS : ∀ v : HeightOneSpectrum (𝓞 K.1), ((ℓ : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S)


include hℓ hS in
theorem exists_sUnitsToUnits_eq (x : cohomology (galUnits K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) 2)
    (k : ℕ) (hx : ℓ ^ k • x = 0)
    (hloc : ∀ v : HeightOneSpectrum (𝓞 K.1), v ∉ S → (gsLocalRes S (ιs.fin v) 2).hom
      (cohomologyULiftIntAddEquiv (galUnits K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) 2 x) = 0) :
    ∃ y : cohomology (galSUnitsMax K.1 ℚ̄ S) 2,
      (cohomologyMap (sUnitsToUnits S (maxUnramifiedOutside K.1 ℚ̄ S)) 2).hom y = x := by
  have hd : (cohomologyMap (sUnitsQuotDiv K S ιs) 2).hom ((cohomologyMap (gsQuotMor K S) 2).hom x) = 0 :=
    eq_zero_of_divFunEval_eq_zero (gsDecomp K S ιs) (continuous_gsDecomp K S ιs)
      ((cohomologyMap (sUnitsQuotDiv K S ιs) 2).hom ((cohomologyMap (gsQuotMor K S) 2).hom x))
      fun v => (divFunEval_sUnitsQuotDiv_apply K S ιs v x).trans
        ((gsLocalRes_eq_zero_iff S (ιs.fin v.1) v.2 x).1 (hloc v.1 v.2))
  have hpk := map_nsmul_eq_zero_of (cohomologyMap (gsQuotMor K S) 2).hom (ℓ ^ k) x hx
  have hp0 : (cohomologyMap (gsQuotMor K S) 2).hom x = 0 :=
    eq_zero_of_mem_range_δ_of_coprime (picSequence_shortExact K S ιs) 1 2 rfl
      (exists_δ_pic_eq K S ιs _ hd) ℓ
      (fun z => exists_coprime_smul_cohomology_eq_zero (picInfRep K S ιs) ℓ
        (exists_coprime_smul_picInfRep K S ιs ℓ hℓ hS) 1 z) k hpk
  exact exists_sUnitsToUnits_eq_of_gsQuotMor K S x hp0

end Local

section Brauer

variable (K : FiniteSubfield) (S : Set (HeightOneSpectrum (𝓞 K.1))) (ℓ : ℕ) (hℓ : ℓ.Prime)
  (hS : ∀ v : HeightOneSpectrum (𝓞 K.1), ((ℓ : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S)


include hℓ hS in
theorem eq_zero_of_sUnitsBrauer_eq_zero (y : cohomology (galSUnitsMax K.1 ℚ̄ S) 2) (k : ℕ)
    (hy : ℓ ^ k • y = 0) (h : sUnitsBrauer K S y = 0) : y = 0 := by
  refine eq_zero_of_sUnitsH2Map_eq_zero K S ℓ hℓ hS y k hy ?_
  let f := (gsBrauerInfl K S 2).hom
  let e := cohomologyULiftIntAddEquiv (galUnits K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) 2
  have hf := (sUnitsBrauer_apply K S y).symm.trans (h.trans f.map_zero.symm)
  have he := (gsBrauerInfl_injective K S hf).trans (map_zero e).symm
  exact e.injective he

variable (ιs : LocalEmbeddings K)

theorem brauerLocal_sUnitsBrauer_inr (y : cohomology (galSUnitsMax K.1 ℚ̄ S) 2)
    (v : HeightOneSpectrum (𝓞 K.1)) (hv : v ∉ S) : brauerLocal ιs (sUnitsBrauer K S y) (.inr v) = 0 := by
  refine (congrArg (fun z => brauerLocal ιs z (.inr v)) (sUnitsBrauer_apply K S y)).trans ?_
  exact (brauerLocal_gsBrauerInfl_inr K S ιs v _).trans (gsLocalRes_sUnitsToUnits_eq_zero K S ιs y v hv)


include hℓ hS in
theorem exists_sUnitsBrauer_eq_iff (x : cohomology (unitsLimitRep K) 2) (k : ℕ) (hx : ℓ ^ k • x = 0) :
    (∃ y, sUnitsBrauer K S y = x) ↔
      ∀ v : HeightOneSpectrum (𝓞 K.1), v ∉ S → brauerLocal ιs x (.inr v) = 0 := by
  constructor
  · rintro ⟨y, rfl⟩ v hv
    exact brauerLocal_sUnitsBrauer_inr K S ιs y v hv
  · intro hloc
    obtain ⟨z, rfl⟩ := exists_gsBrauerInfl_eq K S ℓ hℓ hS x k hx
    let f := (gsBrauerInfl K S 2).hom
    let e := cohomologyULiftIntAddEquiv (galUnits K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) 2
    have hz0 : ℓ ^ k • z = 0 := gsBrauerInfl_injective K S
      ((map_nsmul f (ℓ ^ k) z).trans (hx.trans f.map_zero.symm))
    have hz := map_nsmul_eq_zero_of e.symm (ℓ ^ k) z hz0
    have he := e.apply_symm_apply z
    obtain ⟨y, hy⟩ := exists_sUnitsToUnits_eq K S ιs ℓ hℓ hS (e.symm z) k hz fun v hv =>
      (congrArg (gsLocalRes S (ιs.fin v) 2).hom he).trans
        ((brauerLocal_gsBrauerInfl_inr K S ιs v z).symm.trans (hloc v hv))
    exact ⟨y, (sUnitsBrauer_apply K S y).trans (congrArg f ((congrArg e hy).trans he))⟩

def brauerPrimaryOutside : AddSubgroup (cohomology (unitsLimitRep K) 2) where
  carrier := {x | (∃ k : ℕ, ℓ ^ k • x = 0) ∧
    ∀ v : HeightOneSpectrum (𝓞 K.1), v ∉ S → brauerLocal ιs x (.inr v) = 0}
  add_mem' {a b} ha hb := by
    obtain ⟨⟨m, hm⟩, ha'⟩ := ha
    obtain ⟨⟨n, hn⟩, hb'⟩ := hb
    refine ⟨⟨m + n, ?_⟩, fun v hv => ?_⟩
    · have h1 : ℓ ^ (m + n) • a = 0 := by rw [pow_add, mul_comm, mul_smul, hm, smul_zero]
      have h2 : ℓ ^ (m + n) • b = 0 := by rw [pow_add, mul_smul, hn, smul_zero]
      rw [smul_add, h1, h2, add_zero]
    · rw [map_add (f := _), DFinsupp.add_apply, ha' v hv, hb' v hv, add_zero]
  zero_mem' := ⟨⟨0, smul_zero _⟩, fun v _ => by rw [map_zero, DFinsupp.zero_apply]⟩
  neg_mem' {a} ha := by
    obtain ⟨⟨m, hm⟩, ha'⟩ := ha
    refine ⟨⟨m, by rw [smul_neg, hm, neg_zero]⟩, fun v hv => ?_⟩
    rw [map_neg, DFinsupp.neg_apply, ha' v hv, neg_zero]

def sUnitsBrauerPrimary :
    AddCommGroup.primaryComponent (cohomology (galSUnitsMax K.1 ℚ̄ S) 2) ℓ →+ brauerPrimaryOutside K S ℓ ιs :=
  ((sUnitsBrauer K S).comp (AddCommGroup.primaryComponent _ ℓ).subtype).codRestrict _ fun y => by
    rw [AddMonoidHom.comp_apply, AddSubgroup.coe_subtype]
    obtain ⟨k, hk⟩ := y.2
    refine ⟨⟨k, ?_⟩, fun v hv => brauerLocal_sUnitsBrauer_inr K S ιs y.1 v hv⟩
    exact (map_nsmul (sUnitsBrauer K S) (ℓ ^ k) y.1).symm.trans ((congrArg _ hk).trans (map_zero _))

theorem coe_sUnitsBrauerPrimary_apply (y : AddCommGroup.primaryComponent (cohomology (galSUnitsMax K.1 ℚ̄ S) 2) ℓ) :
    (sUnitsBrauerPrimary K S ℓ ιs y : cohomology (unitsLimitRep K) 2) = sUnitsBrauer K S y :=
  rfl



include hℓ hS in
theorem sUnitsBrauerPrimary_bijective : Function.Bijective (sUnitsBrauerPrimary K S ℓ ιs) := by
  constructor
  · intro a b hab
    obtain ⟨m, hm⟩ := a.2
    obtain ⟨n, hn⟩ := b.2
    have h := congrArg (fun x : brauerPrimaryOutside K S ℓ ιs => x.1) hab
    have he := (coe_sUnitsBrauerPrimary_apply K S ℓ ιs a).symm.trans
      (h.trans (coe_sUnitsBrauerPrimary_apply K S ℓ ιs b))
    have hab' : sUnitsBrauer K S (a.1 - b.1) = 0 := by
      exact (map_sub (sUnitsBrauer K S) a.1 b.1).trans (sub_eq_zero.2 he)
    have h1 : ℓ ^ (m + n) • a.1 = 0 := by rw [pow_add, mul_comm (ℓ ^ m), mul_smul, hm, smul_zero]
    have h2 : ℓ ^ (m + n) • b.1 = 0 := by rw [pow_add, mul_smul, hn, smul_zero]
    have hk : ℓ ^ (m + n) • (a.1 - b.1) = 0 := by rw [smul_sub, h1, h2, sub_zero]
    exact Subtype.ext (sub_eq_zero.1 (eq_zero_of_sUnitsBrauer_eq_zero K S ℓ hℓ hS _ (m + n) hk hab'))
  · intro x
    obtain ⟨⟨k, hk⟩, hx⟩ := x.2
    obtain ⟨y, hy⟩ := (exists_sUnitsBrauer_eq_iff K S ℓ hℓ hS ιs x.1 k hk).2 hx
    obtain ⟨y', ⟨j, hj⟩, hy'⟩ := exists_primary_map_eq (sUnitsBrauer K S) hℓ
      (isTorsion_cohomology _ (by norm_num) y) (k := k) (by rw [hy]; exact hk)
    exact ⟨⟨y', j, hj⟩, Subtype.ext (hy'.trans hy)⟩

noncomputable def sUnitsBrauerPrimaryEquiv :
    AddCommGroup.primaryComponent (cohomology (galSUnitsMax K.1 ℚ̄ S) 2) ℓ ≃+ brauerPrimaryOutside K S ℓ ιs :=
  AddEquiv.ofBijective (sUnitsBrauerPrimary K S ℓ ιs) (sUnitsBrauerPrimary_bijective K S ℓ hℓ hS ιs)

end Brauer

section Local

open DirectSum

variable (K : FiniteSubfield) (S : Set (HeightOneSpectrum (𝓞 K.1))) (ℓ : ℕ) (hℓ : ℓ.Prime)
  (hS : ∀ v : HeightOneSpectrum (𝓞 K.1), ((ℓ : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S) (ιs : LocalEmbeddings K)

def localPrimaryKernel : AddSubgroup (⨁ v : Place K.1, localGaloisCohomology K 2 v) where
  carrier := {t | (∃ k : ℕ, ℓ ^ k • t = 0) ∧ (∀ v : HeightOneSpectrum (𝓞 K.1), v ∉ S → t (.inr v) = 0) ∧
    sumPlaceInv K t = 0}
  add_mem' {a b} ha hb := by
    obtain ⟨⟨m, hm⟩, ha', ha''⟩ := ha
    obtain ⟨⟨n, hn⟩, hb', hb''⟩ := hb
    refine ⟨⟨m + n, ?_⟩, fun v hv => ?_, ?_⟩
    · have h1 : ℓ ^ (m + n) • a = 0 := by rw [pow_add, mul_comm (ℓ ^ m), mul_smul, hm, smul_zero]
      have h2 : ℓ ^ (m + n) • b = 0 := by rw [pow_add, mul_smul, hn, smul_zero]
      rw [smul_add, h1, h2, add_zero]
    · rw [DFinsupp.add_apply, ha' v hv, hb' v hv, add_zero]
    · rw [map_add (f := _), ha'', hb'', add_zero]
  zero_mem' := ⟨⟨0, smul_zero _⟩, fun v _ => DFinsupp.zero_apply _, map_zero _⟩
  neg_mem' {a} ha := by
    obtain ⟨⟨m, hm⟩, ha', ha''⟩ := ha
    refine ⟨⟨m, by rw [smul_neg, hm, neg_zero]⟩, fun v hv => ?_, ?_⟩
    · rw [DFinsupp.neg_apply, ha' v hv, neg_zero]
    · rw [map_neg, ha'', neg_zero]

def brauerLocalPrimary : brauerPrimaryOutside K S ℓ ιs →+ localPrimaryKernel K S ℓ :=
  ((brauerLocal ιs).comp (brauerPrimaryOutside K S ℓ ιs).subtype).codRestrict _ fun x => by
    rw [AddMonoidHom.comp_apply, AddSubgroup.coe_subtype]
    obtain ⟨⟨k, hk⟩, hx⟩ := x.2
    refine ⟨⟨k, ?_⟩, hx, brauerSumInv_eq_zero ιs x.1⟩
    exact (map_nsmul (brauerLocal ιs) (ℓ ^ k) x.1).symm.trans ((congrArg _ hk).trans (map_zero _))

theorem brauerLocalPrimary_bijective : Function.Bijective (brauerLocalPrimary K S ℓ ιs) := by
  constructor
  · intro a b hab
    have h := congrArg (fun t : localPrimaryKernel K S ℓ => t.1) hab
    exact Subtype.ext (brauerLocal_injective ιs h)
  · intro t
    obtain ⟨⟨k, hk⟩, ht, ht'⟩ := t.2
    obtain ⟨x, hx⟩ := (sumPlaceInv_eq_zero_iff ιs t.1).1 ht'
    let f := brauerLocal ιs
    have hxk : ℓ ^ k • x = 0 := brauerLocal_injective ιs
      ((map_nsmul f (ℓ ^ k) x).trans
        ((congrArg (fun s => ℓ ^ k • s) hx).trans (hk.trans f.map_zero.symm)))
    refine ⟨⟨x, ⟨k, hxk⟩, fun v hv => (congrArg (fun s => s (.inr v)) hx).trans (ht v hv)⟩, Subtype.ext hx⟩



noncomputable def sUnitsH2PrimaryEquiv :
    AddCommGroup.primaryComponent (cohomology (galSUnitsMax K.1 ℚ̄ S) 2) ℓ ≃+ localPrimaryKernel K S ℓ :=
  (sUnitsBrauerPrimaryEquiv K S ℓ hℓ hS ιs).trans
    (AddEquiv.ofBijective (brauerLocalPrimary K S ℓ ιs) (brauerLocalPrimary_bijective K S ℓ ιs))

theorem coe_sUnitsH2PrimaryEquiv_apply
    (y : AddCommGroup.primaryComponent (cohomology (galSUnitsMax K.1 ℚ̄ S) 2) ℓ) :
    (sUnitsH2PrimaryEquiv K S ℓ hℓ hS ιs y : ⨁ v : Place K.1, localGaloisCohomology K 2 v) =
      brauerLocal ιs (sUnitsBrauer K S y) :=
  rfl

end Local

end

end GroundTheory.ProfCoh
