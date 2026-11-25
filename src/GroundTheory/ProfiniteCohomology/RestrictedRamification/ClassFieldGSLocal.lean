module

public import GroundTheory.ProfiniteCohomology.RestrictedRamification.ClassFieldGSFull
public import GroundTheory.ProfiniteCohomology.LocalClassFormation.CupSymbolNorm
public import GroundTheory.ProfiniteCohomology.PoincareDuality.Torsion
public import GroundTheory.ProfiniteCohomology.GlobalClassFormation.LocalInvariants
public import GroundTheory.GlobalFields.CyclotomicCharacters.Character
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseChangePlaces

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open NumberField IsDedekindDomain IntermediateField GroundTheory.Global GroundTheory.Global.SemiLocal GroundTheory.LocalField
  GroundTheory.Global.IdeleGroup Function

noncomputable section

universe u

section QZ

variable {G : Type} [Group G] [TopologicalSpace G] {n : ℕ}

def charQZ (χ : ContinuousMonoidHom G (Multiplicative (ZMod n))) : Additive G →ₜ+ QZ where
  toFun x := zmodToQZ n (Multiplicative.toAdd (χ (Additive.toMul x)))
  map_zero' := by simp
  map_add' x y := by simp [toMul_add, map_mul]
  continuous_toFun :=
    (continuous_of_discreteTopology (f := fun z : Multiplicative (ZMod n) ↦ zmodToQZ n z.toAdd)).comp
      (χ.continuous.comp continuous_toMul)

theorem charQZ_apply (χ : ContinuousMonoidHom G (Multiplicative (ZMod n))) (g : G) :
    charQZ χ (Additive.ofMul g) = zmodToQZ n (Multiplicative.toAdd (χ g)) :=
  rfl

end QZ

variable {K : Type u} [Field K] [NumberField K] {Ω : Type u} [Field Ω] [Algebra K Ω] [IsGalois K Ω]

theorem decompHom_apply_of_localArtinMap (v : HeightOneSpectrum (𝓞 K))
    (ι : Ω →ₐ[K] AlgebraicClosure (v.adicCompletion K)) (b : (v.adicCompletion K)ˣ)
    {g : Gal(AlgebraicClosure (v.adicCompletion K)/v.adicCompletion K)}
    (hg : ∀ (y : AlgebraicClosure (v.adicCompletion K))
      (hy : y ∈ maximalAbelianExtension (v.adicCompletion K) (AlgebraicClosure (v.adicCompletion K))),
      g y = (localArtinMap (v.adicCompletion K) (AlgebraicClosure (v.adicCompletion K)) b ⟨y, hy⟩ :
        AlgebraicClosure (v.adicCompletion K)))
    (y : Ω) (hy : y ∈ maximalAbelianExtension K Ω) :
    decompHom (v.adicCompletion K) ι g y =
      (artinMap K Ω (IdeleClassGroup.mk K (finiteEmbedding v b)) ⟨y, hy⟩ : Ω) := by
  obtain ⟨L, _, _, hyL⟩ := exists_finite_abelian_mem hy
  have := NumberField.of_module_finite K L
  let j : L →ₐ[K] AlgebraicClosure (v.adicCompletion K) := ι.comp L.val
  have e := artinMap_finiteEmbedding_apply L v (placeOfAlgHom j) (completionEmbeddingOfAlgHom j) b
    ⟨y, hyL⟩
  have hmem : ι y ∈ maximalAbelianExtension (v.adicCompletion K) (AlgebraicClosure (v.adicCompletion K)) := by
    have := apply_mem_maximalAbelianExtension (completionEmbeddingOfAlgHom j)
      (algebraMap L ((placeOfAlgHom j).1.adicCompletion L) ⟨y, hyL⟩)
    rwa [completionEmbeddingOfAlgHom_algebraMap] at this
  have e2 : (localArtinMap (v.adicCompletion K) (AlgebraicClosure (v.adicCompletion K)) b ⟨ι y, hmem⟩ :
      AlgebraicClosure (v.adicCompletion K)) =
      completionEmbeddingOfAlgHom j (algebraMap L ((placeOfAlgHom j).1.adicCompletion L)
        (restrictAb L (le_maximalAbelianExtension L)
          (artinMap K Ω (IdeleClassGroup.mk K (finiteEmbedding v b))) ⟨y, hyL⟩)) := by
    rw [e]
    exact congrArg (fun z ↦ (localArtinMap (v.adicCompletion K) (AlgebraicClosure (v.adicCompletion K)) b z :
      AlgebraicClosure (v.adicCompletion K)))
      (Subtype.ext (completionEmbeddingOfAlgHom_algebraMap j ⟨y, hyL⟩).symm)
  have key : ι (decompHom (v.adicCompletion K) ι g y) =
      ι (artinMap K Ω (IdeleClassGroup.mk K (finiteEmbedding v b)) ⟨y, hy⟩ : Ω) := by
    rw [decompHom_apply, hg _ hmem, e2, completionEmbeddingOfAlgHom_algebraMap]
    change ι ((restrictAb L (le_maximalAbelianExtension L)
      (artinMap K Ω (IdeleClassGroup.mk K (finiteEmbedding v b))) ⟨y, hyL⟩ : L) : Ω) = _
    rw [restrictAb_apply]
  exact ι.injective key

theorem liftNormal_localArtinMap_apply (v : HeightOneSpectrum (𝓞 K)) (b : (v.adicCompletion K)ˣ)
    (y : AlgebraicClosure (v.adicCompletion K))
    (hy : y ∈ maximalAbelianExtension (v.adicCompletion K) (AlgebraicClosure (v.adicCompletion K))) :
    (localArtinMap (v.adicCompletion K) (AlgebraicClosure (v.adicCompletion K)) b).liftNormal
        (AlgebraicClosure (v.adicCompletion K)) y =
      (localArtinMap (v.adicCompletion K) (AlgebraicClosure (v.adicCompletion K)) b ⟨y, hy⟩ :
        AlgebraicClosure (v.adicCompletion K)) :=
  AlgEquiv.liftNormal_commutes (localArtinMap (v.adicCompletion K) (AlgebraicClosure (v.adicCompletion K)) b)
    (AlgebraicClosure (v.adicCompletion K)) ⟨y, hy⟩

variable {S : Set (HeightOneSpectrum (𝓞 K))} {n : ℕ}

theorem charEquiv_finiteEmbedding [IsAlgClosure K Ω] (hS : S.Finite) [NeZero n]
    (h : Odd n ∨ IsTotallyComplex K)
    (χ : ContinuousMonoidHom (galUnramifiedOutside K Ω S) (Multiplicative (ZMod n)))
    (v : HeightOneSpectrum (𝓞 K)) (ι : Ω →ₐ[K] AlgebraicClosure (v.adicCompletion K))
    (b : (v.adicCompletion K)ˣ) {g : Gal(AlgebraicClosure (v.adicCompletion K)/v.adicCompletion K)}
    (hg : ∀ (y : AlgebraicClosure (v.adicCompletion K))
      (hy : y ∈ maximalAbelianExtension (v.adicCompletion K) (AlgebraicClosure (v.adicCompletion K))),
      g y = (localArtinMap (v.adicCompletion K) (AlgebraicClosure (v.adicCompletion K)) b ⟨y, hy⟩ :
        AlgebraicClosure (v.adicCompletion K))) :
    charEquiv Ω hS h χ (SIdeleClassGroup.mk S (finiteEmbedding v b)) =
      χ (decompHomS (v.adicCompletion K) S ι g) := by
  rw [charEquiv_mk_eq hS h χ _ (decompHom (v.adicCompletion K) ι g)
    (decompHom_apply_of_localArtinMap v ι b hg), decompHomS_eq]
  rfl

section Cup

variable {K : Type} [Field K] [NumberField K] {Ω : Type} [Field Ω] [Algebra K Ω] [IsGalois K Ω]
  {S : Set (HeightOneSpectrum (𝓞 K))} {n : ℕ}

theorem brauerInvZ_galCupClass_decompHomS [IsAlgClosure K Ω] (hS : S.Finite) [NeZero n]
    (h : Odd n ∨ IsTotallyComplex K)
    (χ : ContinuousMonoidHom (galUnramifiedOutside K Ω S) (Multiplicative (ZMod n)))
    (v : HeightOneSpectrum (𝓞 K)) (ι : Ω →ₐ[K] AlgebraicClosure (v.adicCompletion K))
    (a : (v.adicCompletion K)ˣ) :
    brauerInvZOfIsSepClosure (v.adicCompletion K) (AlgebraicClosure (v.adicCompletion K))
        (galCupClass (v.adicCompletion K) (AlgebraicClosure (v.adicCompletion K))
          (contCharComp (charQZ χ) (decompHomS (v.adicCompletion K) S ι)
            (continuous_decompHomS (Kv := v.adicCompletion K) S ι)) a) =
      zmodToQZ n (Multiplicative.toAdd (charEquiv Ω hS h χ (SIdeleClassGroup.mk S (finiteEmbedding v a)))) := by
  rw [brauerInvZOfIsSepClosure_galCupClass _ a _ (liftNormal_localArtinMap_apply v a),
    contCharComp_apply, charEquiv_finiteEmbedding hS h χ v ι a (liftNormal_localArtinMap_apply v a)]
  rfl

local notation "ℚ̄" => AlgebraicClosure ℚ

end Cup

section Frobenius

variable {K : FiniteSubfield} {S : Set (HeightOneSpectrum (𝓞 K.1))} {n : ℕ}


end Frobenius

end

end GroundTheory.ProfCoh
