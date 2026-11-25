module

public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseKummerDefs
public import GroundTheory.ProfiniteCohomology.LocalTateDuality.Bockstein
import GroundTheory.ProfiniteCohomology.CupProducts.Cocycles
import GroundTheory.ProfiniteCohomology.CupProducts.ExistsCocycleMapFEqD
import GroundTheory.ProfiniteCohomology.GlobalClassFormation.RealPlaces
import GroundTheory.ProfiniteCohomology.RestrictedRamification.Brauer

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory MonoidalCategory NumberField IsDedekindDomain GroundTheory.Global

open scoped DirectSum

attribute [local instance 2000] Rep.hV2

noncomputable section

section ULiftCompareAlong

variable {G H : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [Group H] [TopologicalSpace H]
  [IsTopologicalGroup H] (φ : H →* G) (hφ : Continuous φ) {A : Rep.{0} (ULift.{0} ℤ) G} [IsDiscreteRep A]
  {B : Rep.{0} (ULift.{0} ℤ) H} [IsDiscreteRep B] {C : Rep.{0} ℤ H} [IsDiscreteRep C]

theorem cohomologyMap_uliftInt_cohomologyMapAlong_of (f : Rep.res φ A ⟶ B) (g : uliftIntToIntRep B ⟶ C)
    (f₂ : Rep.res φ (uliftIntToIntRep A) ⟶ C) (hf : ∀ a : A, g.hom (f.hom a) = f₂.hom a) (m : ℕ)
    (x : cohomology A m) :
    (cohomologyMap g m).hom (cohomologyULiftIntAddEquiv B m ((cohomologyMapAlong φ hφ f m).hom x)) =
      (cohomologyMapAlong φ hφ f₂ m).hom (cohomologyULiftIntAddEquiv A m x) := by
  obtain ⟨z, rfl⟩ := cohomologyπ_surjective A m x
  rw [cohomologyMapAlong_cohomologyπ, cohomologyULiftIntAddEquiv_cohomologyπ', cohomologyMap_cohomologyπ,
    cohomologyULiftIntAddEquiv_cohomologyπ', cohomologyMapAlong_cohomologyπ]
  congr 1
  apply cocycles_ext
  rw [cochainOf_cocycleι_cyclesMap, cochainOf_cocycleι_cocyclesULiftInt, cochainOf_cocycleι_cocyclesMapAlong,
    cochainOf_cocycleι_cocyclesMapAlong, cochainOf_cocycleι_cocyclesULiftInt]
  funext h
  exact hf _

end ULiftCompareAlong

section Bock

variable {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] {n : ℕ}

theorem exists_cocycle_δ_bockSeq (hn : n ≠ 0) (z : cocycles (zmodRep.{0} G n) 1) :
    ∃ x₁ : cocycles (intRepTriv G) 2,
      cohomologyπ _ 2 x₁ = (δ (bockSeq_shortExact G n hn) 1 2 rfl).hom (cohomologyπ _ 1 z) ∧
      ∀ g h : G, (cochainOf _ (cocycleι _ 2 x₁) ![g, h]).down = bockInt (zmodCocycleHom z) g h := by
  have : NeZero n := ⟨hn⟩
  have hS := bockSeq_shortExact G n hn
  have hχ : ∀ g h : G, zmodCocycleHom z (g * h) = zmodCocycleHom z g + zmodCocycleHom z h :=
    zmodCocycleHom_mul z
  have hlc : IsLocallyConstant fun v : Fin 1 → G =>
      (ULift.up ((zmodCocycleHom z (v 0)).val : ℤ) : intRepTriv G) :=
    IsLocallyConstant.comp ((isLocallyConstant_zmodCocycleHom z).comp_continuous (continuous_apply 0))
      (fun c : ZMod n => (ULift.up (c.val : ℤ) : ULift.{0} ℤ))
  let x₂ : (cochainsComplex (bockSeq G n).X₂).X 1 :=
    mkCochain (bockSeq G n).X₂ (fun v : Fin 1 → G =>
      (ULift.up ((zmodCocycleHom z (v 0)).val : ℤ) : intRepTriv G)) hlc
  have hx₂ : (cochainsMap (bockSeq G n).g).f 1 x₂ = cocycleι (bockSeq G n).X₃ 1 z := by
    apply cochainOf_injective
    rw [cochainOf_cochainsMap_f]
    funext v
    have hv : v = ![v 0] := by funext i; fin_cases i; rfl
    change (zmodReduction G n).hom (ULift.up ((zmodCocycleHom z (v 0)).val : ℤ)) =
      cochainOf _ (cocycleι _ 1 z) v
    rw [zmodReduction_hom_apply]
    apply ULift.ext
    change (((zmodCocycleHom z (v 0)).val : ℤ) : ZMod n) = (cochainOf _ (cocycleι _ 1 z) v).down
    rw [Int.cast_natCast, ZMod.natCast_zmod_val]
    conv_rhs => rw [hv]
    rfl
  obtain ⟨x₁, hx₁⟩ := exists_cocycle_map_f_eq_d hS 2 z x₂ hx₂
  have hδ := δ_cohomologyπ_of_lift hS rfl z x₂ hx₂ x₁ hx₁
  refine ⟨x₁, hδ.symm, fun g h => ?_⟩
  have e : cochainOf (bockSeq G n).X₂ ((cochainsMap (bockSeq G n).f).f 2 (cocycleι _ 2 x₁)) ![g, h] =
      cochainOf (bockSeq G n).X₂ (((cochainsComplex (bockSeq G n).X₂).d 1 2).hom x₂) ![g, h] :=
    congrArg (fun c => cochainOf (bockSeq G n).X₂ c ![g, h]) hx₁
  rw [cochainOf_cochainsMap_f, cochainOf_d_one_apply] at e
  have e2 := congrArg ULift.down e
  change n • (cochainOf _ (cocycleι _ 2 x₁) ![g, h]).down =
    ((zmodCocycleHom z h).val : ℤ) - ((zmodCocycleHom z (g * h)).val : ℤ) +
      ((zmodCocycleHom z g).val : ℤ) at e2
  have e3 := natCast_mul_bockInt (zmodCocycleHom z) hχ g h
  rw [nsmul_eq_mul] at e2
  apply mul_left_cancel₀ (show (n : ℤ) ≠ 0 by exact_mod_cast hn)
  rw [e2, e3]
  ring

variable {H : Type} [Group H] [TopologicalSpace H] [IsTopologicalGroup H] (ψ : H →* G)

def resIntRepTriv : Rep.res ψ (intRepTriv G) ⟶ intRepTriv H :=
  Rep.ofHom ⟨LinearMap.id, fun _ => rfl⟩

def mulIntRight (A : Rep.{0} (ULift.{0} ℤ) H) : A ⊗ Rep.res ψ (intRepTriv G) ⟶ A :=
  (β_ A (Rep.res ψ (intRepTriv G))).hom ≫ (resIntRepTriv ψ ⊗ₘ 𝟙 A) ≫ intMulPairing H A

omit [TopologicalSpace G] [IsTopologicalGroup G] [TopologicalSpace H] [IsTopologicalGroup H] in
theorem mulIntRight_tmul (A : Rep.{0} (ULift.{0} ℤ) H) (a : A) (m : ℤ) :
    (mulIntRight ψ A).hom (a ⊗ₜ[ULift.{0} ℤ] (ULift.up m : Rep.res ψ (intRepTriv G)) :
      (A ⊗ Rep.res ψ (intRepTriv G) : Rep _ _)) = m • a :=
  intMulPairing_tmul H A m a

end Bock

section Inv

local notation "ℚ̄" => AlgebraicClosure ℚ

variable (F E : Type) [Field F] [Field E] [Algebra F E]

def galUnitsToZ : uliftIntToIntRep (galUnits.{0} F E) ⟶ galUnitsZ F E :=
  Rep.ofHom ⟨(AddMonoidHom.id (Additive Eˣ)).toIntLinearMap, fun _ => rfl⟩

variable {K : FiniteSubfield}

instance isDiscreteRep_uliftIntToIntRep_galUnits_adic (v : HeightOneSpectrum (𝓞 K.1)) :
    IsDiscreteRep (uliftIntToIntRep (galUnits.{0} (v.adicCompletion K.1) (AlgebraicClosure (v.adicCompletion K.1)))) :=
  ⟨fun a => isOpen_stabilizer (galUnits.{0} (v.adicCompletion K.1) (AlgebraicClosure (v.adicCompletion K.1))) a⟩

def localInvU (v : HeightOneSpectrum (𝓞 K.1)) :
    cohomology (galUnits.{0} (v.adicCompletion K.1) (AlgebraicClosure (v.adicCompletion K.1))) 2 →+ QZ :=
  (brauerInvZOfIsSepClosure (v.adicCompletion K.1) (AlgebraicClosure (v.adicCompletion K.1))).comp
    ((cohomologyMap (galUnitsToZ (v.adicCompletion K.1) (AlgebraicClosure (v.adicCompletion K.1))) 2).hom.toAddMonoidHom.comp
      (cohomologyULiftIntAddEquiv _ 2).toAddMonoidHom)

theorem localInvU_eq (v : HeightOneSpectrum (𝓞 K.1)) :
    localInvU v = (brauerInvZOfIsSepClosure (v.adicCompletion K.1) (AlgebraicClosure (v.adicCompletion K.1))).comp
      ((cohomologyMap (galUnitsToZ (v.adicCompletion K.1) (AlgebraicClosure (v.adicCompletion K.1))) 2).hom.toAddMonoidHom.comp
        (cohomologyULiftIntAddEquiv _ 2).toAddMonoidHom) :=
  rfl

variable (S : Set (HeightOneSpectrum (𝓞 K.1)))
  (ιs : ∀ v : S, ℚ̄ →ₐ[K.1] AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))

theorem localInvU_cohomologyMapAlong_gsUnitsLocalMor (v : S)
    (x : cohomology (galUnits K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) 2) :
    localInvU (v : HeightOneSpectrum (𝓞 K.1)) ((cohomologyMapAlong (gsFinFamily S ιs v).toMonoidHom
      (continuous_toMonoidHom _) (gsUnitsLocalMor S ιs v) 2).hom x) =
      placeInv (K := K) (.inr (v : HeightOneSpectrum (𝓞 K.1)))
        ((gsLocalRes S (ιs v) 2).hom (cohomologyULiftIntAddEquiv _ 2 x)) := by
  refine (DFunLike.congr_fun (localInvU_eq (v : HeightOneSpectrum (𝓞 K.1))) _).trans ?_
  refine (AddMonoidHom.comp_apply _ _ _).trans ?_
  refine Eq.trans ?_ (placeInv_inr_apply _ _).symm
  refine congrArg (brauerInvZOfIsSepClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1)
    (AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))) ?_
  refine (AddMonoidHom.comp_apply _ _ _).trans ?_
  have hres : cohomologyMapAlong (gsFinFamily S ιs v).toMonoidHom
      (continuous_toMonoidHom _) (embUnitsMorZ S (ιs v)) 2 = gsLocalRes S (ιs v) 2 := by
    unfold gsLocalRes gsFinFamily
    rfl
  have h := cohomologyMap_uliftInt_cohomologyMapAlong_of
    (gsFinFamily S ιs v).toMonoidHom (continuous_toMonoidHom _)
    (gsUnitsLocalMor S ιs v) (galUnitsToZ _ _) (embUnitsMorZ S (ιs v)) (fun _ => rfl) 2 x
  refine h.trans ?_
  exact congrArg (fun m => m.hom (cohomologyULiftIntAddEquiv _ 2 x)) hres

theorem localInvU_cohomologyMapAlong_gsSUnitsLocalMor (v : S)
    (y : cohomology (galSUnitsMax K.1 ℚ̄ S) 2) :
    localInvU (v : HeightOneSpectrum (𝓞 K.1)) ((cohomologyMapAlong (gsFinFamily S ιs v).toMonoidHom
      (continuous_toMonoidHom _) (gsSUnitsLocalMor S ιs v) 2).hom y) =
      placeInv (K := K) (.inr (v : HeightOneSpectrum (𝓞 K.1)))
        ((gsLocalRes S (ιs v) 2).hom (cohomologyULiftIntAddEquiv _ 2
          ((cohomologyMap (sUnitsToUnits S (maxUnramifiedOutside K.1 ℚ̄ S)) 2).hom y))) := by
  exact (congrArg (localInvU (v : HeightOneSpectrum (𝓞 K.1)))
    (cohomologyMapAlong_cohomologyMap_apply (gsFinFamily S ιs v).toMonoidHom (continuous_toMonoidHom _)
      (sUnitsToUnits S (maxUnramifiedOutside K.1 ℚ̄ S)) (gsUnitsLocalMor S ιs v) 2 y).symm).trans
    (localInvU_cohomologyMapAlong_gsUnitsLocalMor S ιs v _)

theorem two_nsmul_placeInv_inl (v : InfinitePlace K.1) (y : localGaloisCohomology K 2 (.inl v)) :
    2 • placeInv (.inl v) y = 0 := by
  by_cases hc : v.IsComplex
  · have := subsingleton_cohomology_two_of_isComplex v hc
    rw [show y = 0 from Subsingleton.elim (α := cohomology (galUnitsZ v.Completion
      (AlgebraicClosure v.Completion)) 2) y 0, map_zero, smul_zero]
  · by_cases hy0 : y = 0
    · rw [hy0, map_zero, smul_zero]
    · change 2 • quadraticInvFun v.Completion (AlgebraicClosure v.Completion) y = 0
      rw [quadraticInvFun_of_ne_zero _ _ hy0, two_nsmul, QZ.mk_half_add_mk_half]

variable [Fintype S]

end Inv

end

end GroundTheory.ProfCoh
