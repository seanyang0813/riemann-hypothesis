module

public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseTransportGS
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseDefs
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseFormal
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.Brauer

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open IsDedekindDomain NumberField CategoryTheory GroundTheory.Global

noncomputable section

section Algebra

variable {n : ℕ} [NeZero n]

theorem exists_isUnit_mul_of_surjective_of_bijective {Y : Type*} [AddCommGroup Y] (f g : Y →+ ZMod n)
    (hf : Function.Surjective f) (hg : Function.Bijective g) :
    ∃ c : ZMod n, IsUnit c ∧ ∀ y, f y = c * g y := by
  obtain ⟨y₁, hy₁⟩ := hg.2 1
  have hy : ∀ y, y = (g y).val • y₁ := fun y => hg.1 (by
    rw [map_nsmul, hy₁, nsmul_eq_mul, mul_one, ZMod.natCast_zmod_val])
  have hfy : ∀ y, f y = f y₁ * g y := fun y => by
    conv_lhs => rw [hy y]
    rw [map_nsmul, nsmul_eq_mul, ZMod.natCast_zmod_val, mul_comm]
  refine ⟨f y₁, ?_, hfy⟩
  obtain ⟨y, hy1⟩ := hf 1
  exact IsUnit.of_mul_eq_one (g y) ((hfy y).symm.trans hy1)

omit [NeZero n] in
private theorem bijective_of_bijective_smul_transport {X X' Y Y' : Type*}
    [AddCommGroup Y] [AddCommGroup Y'] (F : X → (Y →+ ZMod n)) (F' : X' → (Y' →+ ZMod n))
    (eX : X ≃ X') (eY : Y ≃+ Y') (c : ZMod n) (hc : IsUnit c)
    (hbij : Function.Bijective F) (hF' : ∀ x y, F' (eX x) (eY y) = c * F x y) :
    Function.Bijective F' := by
  have hF : Function.Bijective fun x => c • F x := by
    refine ⟨fun x x' h => hbij.1 (AddMonoidHom.ext fun y => ?_), fun χ => ?_⟩
    · have e := DFunLike.congr_fun h y
      simp only [AddMonoidHom.smul_apply, smul_eq_mul] at e
      exact hc.mul_left_cancel e
    · obtain ⟨x, hx⟩ := hbij.2 ((hc.unit⁻¹ : (ZMod n)ˣ) • χ)
      refine ⟨x, AddMonoidHom.ext fun y => ?_⟩
      have e := DFunLike.congr_fun hx y
      simp only [AddMonoidHom.smul_apply, smul_eq_mul, Units.smul_def] at e ⊢
      rw [e, ← mul_assoc, IsUnit.mul_val_inv, one_mul]
  refine bijective_of_bijective_comp hF eX.symm.bijective (γ := eY.symm.toAddMonoidHom) eY.symm.bijective
    fun x' y' => ?_
  simpa only [Equiv.apply_symm_apply, AddEquiv.apply_symm_apply, AddEquiv.coe_toAddMonoidHom,
    AddMonoidHom.smul_apply, smul_eq_mul] using hF' (eX.symm x') (eY.symm y')

omit [NeZero n] in
theorem bijective_of_transport {X X' Y Y' W W' : Type*} [AddCommGroup X] [AddCommGroup X'] [AddCommGroup Y]
    [AddCommGroup Y'] [AddCommGroup W] [AddCommGroup W'] (B : Y →+ X →+ W) (B' : Y' →+ X' →+ W')
    (T : W →+ ZMod n) (f : W' →+ ZMod n) (eX : X ≃+ X') (eY : Y ≃+ Y') (eW : W ≃+ W')
    (hcup : ∀ y x, B' (eY y) (eX x) = eW (B y x)) (c : ZMod n) (hc : IsUnit c)
    (hf : ∀ w, f (eW w) = c * T w) (hbij : Function.Bijective fun x => T.comp (B.flip x)) :
    Function.Bijective fun x' => f.comp (B'.flip x') := by
  refine bijective_of_bijective_smul_transport (fun x => T.comp (B.flip x))
    (fun x' => f.comp (B'.flip x')) eX.toEquiv eY c hc hbij fun x y => ?_
  exact (congrArg f (hcup y x)).trans (hf (B y x))

end Algebra

section Level

local notation "ℚ̄" => AlgebraicClosure ℚ

variable {K L : FiniteSubfield} [Fact (K ≤ L)] (S : Set (HeightOneSpectrum (𝓞 K.1)))
  (ιs : ∀ v : S, ℚ̄ →ₐ[K.1] AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))
  (hL : ∀ x : L.1, algebraMap L.1 ℚ̄ x ∈ maxUnramifiedOutside K.1 ℚ̄ S) (n : ℕ) [NeZero n]

attribute [local irreducible] compactCohomology compactCohomologyMap mackeyCompactCohomologyIso
  compactCores compactZmodDualityMap zmodCompactDualityMap gsMackeyCompactIso
  cohomologyIsoOfContinuousMulEquiv gsFinFamily gsOpenSubgroup gsBaseChange
  gsMackeyEmbeddings placesOver gsRootsOfUnityIso compactCupRes

def GsBaseBijective (U : OpenSubgroup (galUnramifiedOutside K.1 ℚ̄ S))
    (t : compactCohomologyRes (gsFinFamily S ιs) (gsRoots S n) 3 →+ ZMod n) : Prop :=
  ∀ {r s : ℕ} (h : r + s = 3), Function.Bijective (zmodCompactDualityMap (gsFinFamily S ιs) (gsRoots S n)
    (nsmul_gsRoots S n) U h t)

def GsCoresSurjective (U : OpenSubgroup (galUnramifiedOutside K.1 ℚ̄ S))
    (t : compactCohomologyRes (gsFinFamily S ιs) (gsRoots S n) 3 →+ ZMod n) : Prop :=
  Function.Surjective (t.comp (compactCores (gsFinFamily S ιs) U (gsRoots S n) 3).hom.toAddMonoidHom)


variable {S ιs n} in
def GsLevelBijective (T : compactCohomologyRes (gsFinFamily S ιs) (gsRoots S n) 3 →+ ZMod n) : Prop :=
  Function.Bijective T ∧ ∀ {r s : ℕ} (h : r + s = 3), Function.Bijective (compactZmodDualityMap (gsFinFamily S ιs)
    (gsRoots S n) (nsmul_gsRoots S n) T h)



theorem bijective_zmodCompactDualityMap_gsOpenSubgroup
    (t : compactCohomologyRes (gsFinFamily S ιs) (gsRoots S n) 3 →+ ZMod n)
    (TL : compactCohomologyRes (gsFinFamily (placesOver S) (gsMackeyEmbeddings hL ιs))
      (gsRoots (K := L) (placesOver S) n) 3 →+ ZMod n) (hLev : GsLevelBijective TL)
    (hsurj : GsCoresSurjective S ιs n (gsOpenSubgroup S hL) t) :
    GsBaseBijective S ιs n (gsOpenSubgroup S hL) t := by
  intro r s h
  have hTL := hLev.1
  let f := (gsRootsOfUnityIso S hL n).symm
  let eW := (gsMackeyCompactIso hL ιs f 3).toLinearEquiv.toAddEquiv
  have hex := exists_isUnit_mul_of_surjective_of_bijective _
    (TL.comp eW.symm.toAddMonoidHom) hsurj (hTL.comp eW.symm.bijective)
  refine hex.elim fun c hc => ?_
  let U := gsOpenSubgroup (F := K.1) (L := L.1) (Ω := ℚ̄) S hL
  let θ := gsBaseChange (F := K.1) (L := L.1) (Ω := ℚ̄) S hL
  let SL := placesOver (F := K.1) (L := L.1) S
  let φL := gsFinFamily (F := L.1) (Ω := ℚ̄) SL
    (gsMackeyEmbeddings (F := K.1) (L := L.1) (Ω := ℚ̄) hL ιs)
  let D := gsRoots S n
  let DL := gsRoots (K := L) SL n
  let DU := Rep.res (U : Subgroup (galUnramifiedOutside K.1 ℚ̄ S)).subtype D
  let hn := nsmul_gsRoots S n
  let hnL := nsmul_gsRoots (K := L) SL n
  let eY := (gsMackeyCompactIso (F := K.1) (L := L.1) (Ω := ℚ̄)
    hL ιs (A' := DL) (A := DU) f s).toLinearEquiv.toAddEquiv
  let eX := (cohomologyIsoOfContinuousMulEquiv θ (zmodRepResIso θ n) r).toLinearEquiv.toEquiv
  let tU := t.comp
    (compactCores (gsFinFamily S ιs) (gsOpenSubgroup S hL) (gsRoots S n) 3).hom.toAddMonoidHom
  have hscale (w : compactCohomologyRes φL DL 3) : tU (eW w) = c * TL w :=
    (hc.2 (eW w)).trans (congrArg (fun w => c * TL w) (eW.symm_apply_apply w))
  have hbij := hLev.2 h
  refine bijective_of_bijective_smul_transport _ _ eX eY c hc.1 hbij ?_
  intro x y
  have hcup := gsMackeyCompactIso_compactCupRes_zmod (F := K.1) (L := L.1) (Ω := ℚ̄)
    hL ιs n (D' := DL) (D := DU) hnL hn f ((Nat.add_comm s r).trans h) y x
  have htrace := congrArg tU hcup.symm
  let w := compactCupRes φL (zmodMulPairingRight n DL hnL) ((Nat.add_comm s r).trans h) y x
  have htransport := htrace.trans (hscale w)
  -- The kernel checks the definitional equality with the bundled duality maps.
  run_tac Lean.Elab.Tactic.withMainContext do
    let proof ← Lean.Meta.getFVarFromUserName `htransport
    let goal ← Lean.Elab.Tactic.getMainGoal
    goal.assign (Lean.Meta.mkExpectedPropHint proof (← goal.getType))

end Level

end

end GroundTheory.ProfCoh
