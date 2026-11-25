module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftLevelFormOrthogonalKilledByThetaMap
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ThetaMapHilbertModelEqConcreteThetaMapFamilyThre

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx
open scoped TensorProduct InnerProductSpace
open Formalism.IndefR.RecTie Formalism.IndefR.Lev Formalism.L2.Rows GlobalTheory.Mem GlobalTheory.Mem.R3

namespace GlobalTheory.Mem.ThetaRead3

theorem thetaP_read_noEta : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 I0 T : Type) (A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat3 D A3 Ks) (F : Face3 D A3) (cG : G0 R.Pg D.R.r ≃* G0g D.nd) (X0 : BaseLevelRowSide D) (Y : Read (A3 := A3) R.toRealDat F.lv2 X0) (Z : Rw.RationalReadingWithoutCongruence R F X0 Y), Pins R F cG → Holds R F → ∀ (i : Fin D.R.m) (t : T) x, Y.mj.eW i (D.what₂.thetaP (Y.tup t) ((i : ℕ) + 1) (D.what₂.jMt (Y.tup t) ((i : ℕ) + 1) (Y.eMt i t x))) = R.thG i t (R.jV i t (liftForm A3.A F.P0 F.ψ0 i t x)) := by
  intro D G _ _ Pl0 I0 T A3 Ks _ _ _ R F cG X0 Y Z hP hH i t x
  have hE : R.toRealDat.IsThP := RealDat.thP_of_weak hP.char.base.thP hH.aux.ex
  have hM := hP.char.base.models
  have hμ : Used0 D (Y.tup t) := by
    rcases hP.char.tup.mu_used t with h | ⟨w, hw⟩
    · left
      rw [h, Y.tup0]
    · right
      refine ⟨D.plEq.symm w, ?_⟩
      rw [Y.muAt, Equiv.apply_symm_apply, hw]
  set xM := D.what₂.jMt (Y.tup t) ((i : ℕ) + 1) (Y.eMt i t x) with hxM
  set zt := R.jV i t (liftForm A3.A F.P0 F.ψ0 i t x) with hzt
  obtain ⟨w, hwM, hwK, hwW⟩ := GlobalTheory.T.thetaAdjoint_at_lift_eq_lowestKType_restriction R.toRealDat F.lv2 Y.tupT Y.hm Y.hTop Y.hinj hP.char.base.lev
    hP.char.base.grp hM hE R.hv0 Y.IL (Y.tup t) hμ i xM
  have hth := Y.tied.lift.theta (Y.tup t) hμ i xM w
    (GlobalTheory.ThetaPRead.isThetaP_toLiftReal R.toRealDat F.lv2 Y.tupT Y.hm Y.hTop Y.hinj hE.thF (Y.tup t) i) hwM hwK hwW

  set u := Y.tupT (Y.tup t) with hu
  set a := Y.IL.jMt (Y.tup t) hμ i xM with ha
  set z' : (R.HV i u).H := (LinearEquiv.ofInjective (R.extV i u) (Y.hinj i u)).symm
    (Submodule.inclusion inf_le_left a) with hz'
  have hz'1 : R.extV i u z' = R.extV i t zt := by
    rw [hz', ofInjective_symm_eq]
    exact Y.mtRead i t hμ x
  have hzz : R.thF i u z' = R.thF i t zt := thF_congr R.toRealDat Y.hinj i t u (Y.tupT_tup t) zt z' hz'1
  let w' : (⨂[ℂ] τ, (R.MW i (sg0 D A3.A)).sm τ) →ₗ[ℂ] (GA D (Wc D i) → ℂ) := w
  let U : MMap (R.MW i (sg0 D A3.A)) := PiTensorProduct.lift.symm w'
  have hU : U ∈ R.Wall i (sg0 D A3.A) :=
    GlobalTheory.HeckeParts.mult_le_triv _ ((Mult.mem_multT _ _ _ _ w').1 hwM)
  have hlow : ∀ v : ∀ ρ, lowT (R.MW i (sg0 D A3.A)) ρ, U (fun ρ => v ρ) = R.thF i u z' (fun ρ => v ρ) := by
    intro v
    have e := LinearMap.congr_fun hwK (PiTensorProduct.tprod ℂ v)
    have e2 : w' (PiTensorProduct.map (fun τ => (lowT (R.MW i (sg0 D A3.A)) τ).subtype) (PiTensorProduct.tprod ℂ v)) =
        PiTensorProduct.lift (R.thF i u z')
          (PiTensorProduct.map (fun τ => (lowT (R.MW i (sg0 D A3.A)) τ).subtype) (PiTensorProduct.tprod ℂ v)) := e
    rw [PiTensorProduct.map_tprod, PiTensorProduct.lift.tprod] at e2
    exact e2
  have hw0 : U - R.thF i t zt = 0 :=
    GlobalTheory.LowTypeDetermined.eq_zero_of_lowT D _ _ (R.MW i (sg0 D A3.A)) R.θ hM.inf
      (GlobalTheory.LowTypeRestriction.lowT_ne_bot _) _ _ _ (Submodule.sub_mem _ hU (hE.thF_mem i t zt)) (fun v => by
        show U (fun ρ => v ρ) - R.thF i t zt (fun ρ => v ρ) = 0
        rw [hlow v, hzz, sub_self])
  have hUw : PiTensorProduct.lift U = w' := LinearEquiv.apply_symm_apply _ w'
  have h1 := (Y.mjRead i (D.what₂.thetaP (Y.tup t) ((i : ℕ) + 1) xM)).symm.trans hth
  change PiTensorProduct.lift _ = R.eWf i (sg0 D A3.A) ∘ₗ w' at h1
  rw [← hUw, sub_eq_zero.1 hw0, ← _root_.GlobalTheory.ThetaFireLift.lift_postOn, ← hE.thG i t zt] at h1
  exact (hM.HW i (sg0 D A3.A)).1 (PiTensorProduct.lift.injective h1)

end GlobalTheory.Mem.ThetaRead3

namespace GlobalTheory.Mem.ThOrth

open Formalism.IndefR.CxPass.LevelOperators

theorem thG_eq_zero_of_orth_noEta : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 I0 T : Type) (A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat3 D A3 Ks) (F : Face3 D A3) (cG : G0 R.Pg D.R.r ≃* G0g D.nd) (X0 : BaseLevelRowSide D) (Y : Read (A3 := A3) R.toRealDat F.lv2 X0) (Z : Rw.RationalReadingWithoutCongruence R F X0 Y), Pins R F cG → Holds R F → ∀ (i : Fin D.R.m) (t : T) (x : Fin (lDim D A3.A F.P0 F.ψ0 i t) → D.what₂.LL), (∀ z, Formalism.DivisionValues.hform (lH D A3.A F.P0 F.ψ0 i t) (lZ0 D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ z) x = 0) → R.thG i t (R.jV i t (liftForm A3.A F.P0 F.ψ0 i t x)) = 0 := by
  intro D G _ _ Pl0 I0 T A3 Ks _ _ _ R F cG X0 Y _Z hP hH i t x hx
  have hok := hH.ok
  have hc := Formalism.IndefR.Links.RealDat3.characterisation_of_weak hP.char hH.aux.ex
  have hM := hc.models
  have hCore : GlobalTheory.Hk3.Core R.toRealDat F.lv2 := ⟨hc.lev, hc.grp, hc.fam, hc.models, hc.chain, hc.thP⟩
  have hL := GlobalTheory.Hk3.eH_laws R.toRealDat F.lv2 hCore hok.ok2.irr i
  have hK : (R.toCx3 F).KFormL := Formalism.IndefR.Links.RealDat3.kFormL_of (F := F) hM
  have hJ : (R.toCx3 F).JIsoL F.cv := Formalism.IndefR.Links.RealDat3.jIsoL_of (F := F) hM
  have hRZ : (R.toCx3 F).RatZ := (complex_data_conditions_base_level_of_primitive_links hok hH.sep hP.char hH.prim).ratZ
  have H := Formalism.IndefR.CxPass.lift_hypotheses_of_unitary hok hK F.cv (fun _ _ _ _ => rfl) hJ hH.prim.gUnit.2 hH.prim.gEquiv.2 i t
  have hB : BlockHyp (A3.A.fam.L i t) (A3.A.fam.lvlA F.P0 F.ψ0) A3.A.v0 1 := ⟨hok.ok2.conj, hok.ok2.irr, hok.ok2.lifts i t⟩

  have hopE : opV A3.fam3.base3.v0.embedding (fun g => R.gWx F i g) (idemOf A3.A.X) =
      Tw.map (twAt D.what₂.embLL A3.A.v0) (GlobalTheory.Hk3.eH R.toRealDat i) := by
    let mA : ((R.HW i (sg0 D A3.A)).H →ₗ[ℂ] (R.HW i (sg0 D A3.A)).H) →+
        (Tw (twAt D.what₂.embLL A3.A.v0) (R.HW i (sg0 D A3.A)).H →ₗ[ℂ] Tw (twAt D.what₂.embLL A3.A.v0) (R.HW i (sg0 D A3.A)).H) :=
      { toFun := Tw.map (twAt D.what₂.embLL A3.A.v0), map_zero' := LinearMap.ext fun _ => rfl,
        map_add' := fun _ _ => LinearMap.ext fun _ => rfl }
    rw [show Tw.map (twAt D.what₂.embLL A3.A.v0) (GlobalTheory.Hk3.eH R.toRealDat i) = mA (GlobalTheory.Hk3.eH R.toRealDat i) from rfl]
    unfold opV GlobalTheory.Hk3.eH

    rw [map_sum]
    refine Finset.sum_congr rfl fun g _ => LinearMap.ext fun y => ?_
    show cj (twAt D.what₂.embLL A3.A.v0) (A3.A.v0.embedding ((idemOf A3.A.X).coeff g)) •
        R.gW i (sg0 D A3.A) g (Tw.out (s := (twAt D.what₂.embLL A3.A.v0)) (E := (R.HW i (sg0 D A3.A)).H) y) =
      RealDat.eC (A := A3.A) (sg0 D A3.A) g •
        R.gW i (sg0 D A3.A) g (Tw.out (s := (twAt D.what₂.embLL A3.A.v0)) (E := (R.HW i (sg0 D A3.A)).H) y)
    rw [Formalism.IndefR.Links.emb_eq D.what₂.embLL A3.A.v0, cj_cj]
    rfl
  have hθ : ∀ (u : (R.toCx3 F).FLC i t),
      Tw.out (s := (twAt D.what₂.embLL A3.A.v0)) (E := (R.HW i (sg0 D A3.A)).H) ((R.toCx3 F).θ' i t u) =
        cj (twAt D.what₂.embLL A3.A.v0) (R.phs i) • R.thG i t (Tw.out (s := (twAt D.what₂.embLL A3.A.v0)) (E := (R.HV i t).H) u) :=
    fun u => rfl
  have hfix : ∀ y ∈ LinearMap.range ((R.toCx3 F).θ' i t),
      opV A3.fam3.base3.v0.embedding (fun g => R.gWx F i g) (idemOf A3.A.X) y = y := by
    rintro _ ⟨u, rfl⟩
    rw [hopE]
    change Tw.mk (twAt D.what₂.embLL A3.A.v0) (GlobalTheory.Hk3.eH R.toRealDat i
      (Tw.out (s := (twAt D.what₂.embLL A3.A.v0)) (E := (R.HW i (sg0 D A3.A)).H) ((R.toCx3 F).θ' i t u))) =
      (R.toCx3 F).θ' i t u
    rw [hθ, map_smul, hL.2.2.2, ← hθ]
    rfl

  set ℓ := A3.A.fam.lvlA F.P0 F.ψ0 with hℓ
  set f0 := liftForm A3.A F.P0 F.ψ0 i t x with hf0
  have hf0l : f0 = GlobalTheory.Mem.LiftForms.lvlForm (A3.A.fam.L i t).S (A3.A.fam.L i t).r ℓ.P ℓ.ψ x := rfl
  have hlev : f0 ∈ lvlForms (A3.A.fam.L i t).S (A3.A.fam.L i t).r ℓ.P ℓ.ψ := by
    rw [← GlobalTheory.Mem.LiftForms.range_lvlForm]
    exact ⟨x, hf0l.symm⟩
  have hfix0 : opF (A3.A.fam.L i t).r (lvlIdem ℓ.P ℓ.ψ) f0 = f0 := by
    exact opF_lvlIdem_fix (A3.A.fam.L i t).r ℓ.P ℓ.ψ f0 hlev
  have hea : opF (A3.A.fam.L i t).r (goodAt ℓ.X ℓ.P ℓ.ψ) f0 = opF (A3.A.fam.L i t).r (idemOf A3.A.X) f0 := by
    rw [goodAt, opF_mul, LinearMap.comp_apply, hfix0]
    rfl
  have horth : ∀ z ∈ ((LinearMap.range (LinearMap.adjoint ((R.toCx3 F).θ' i t))).comap ((R.toCx3 F).jL i t) ⊓
      LinearMap.range (opF (A3.A.fam.L i t).r (goodAt ℓ.X ℓ.P ℓ.ψ)) : Submodule _ _),
      ⟪(R.toCx3 F).jL i t z, (R.toCx3 F).jL i t f0⟫_ℂ = 0 := by
    intro z hz
    have hZeq : (((LinearMap.range (LinearMap.adjoint ((R.toCx3 F).θ' i t))).comap ((R.toCx3 F).jL i t)) ⊓
        LinearMap.range (opF (A3.A.fam.L i t).r (goodAt ℓ.X ℓ.P ℓ.ψ)) : Submodule _ _) =
        LinearMap.range ((A3.A.fam.L i t).toF ℓ ((R.toCx3 F).Zl i t)) := by
      refine Eq.trans ?_ (Formalism.IndefR.CxPass.LevelOperators.range_toF (A3.A.fam.L i t) ℓ _).symm
      rw [Formalism.IndefR.CxPass.LevelOperators.goodR_eq]
      rfl
    have hz' : z ∈ LinearMap.range ((A3.A.fam.L i t).toF ℓ ((R.toCx3 F).Zl i t)) := hZeq ▸ hz
    obtain ⟨c, rfl⟩ := hz'
    rw [← GlobalTheory.Mem.LiftForms.lvlForm_lE hB c]
    refine (hJ i t _ _).trans ?_
    have h0 : Formalism.DivisionValues.hform ((A3.A.fam.L i t).S.lvlH (A3.A.fam.L i t).r ℓ.P ℓ.ψ)
        ((A3.A.fam.L i t).lE ℓ ((R.toCx3 F).Zl i t) *ᵥ c) x = 0 := hx c
    show A3.fam3.base3.v0.embedding (CSDForm.csumForm (A3.A.fam.L i t).S _ _) = 0
    rw [CSDForm.csumForm_apply, hf0l, GlobalTheory.Mem.LiftForms.csum_lvlForm, h0, mul_zero, map_zero]
  have key := theta_eq_zero_of_orth H (hRZ.2 i t) (goodAt ℓ.X ℓ.P ℓ.ψ) (idemOf A3.A.X)
    (opF_goodAt_idem _ _ hok.ok2.irr _ _) hfix f0 hea horth
  have h2 := congrArg (Tw.out (s := twAt D.what₂.embLL A3.A.v0) (E := (R.HW i (sg0 D A3.A)).H)) key
  rw [hθ, hP.phs i, map_one, one_smul] at h2
  exact h2

end GlobalTheory.Mem.ThOrth
