module

public import Formalism.LocalToGlobal.GroupLattices.DownNaturalLevelZero
public import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.StabiliserOfLocalTransport

@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 NumberField IsDedekindDomain Matrix Formalism.UG
open scoped TensorProduct

variable {D : D7} {u : D.what₂.Word}


private theorem map_inverse_mulVec {ι A B C : Type} [Fintype ι] [DecidableEq ι]
    [CommRing A] [CommRing B] [CommRing C]
    (f : A →+* B) (g : B →+* C) (γ : GL ι A) (x : ι → A) :
    (g.comp f) ∘ ((γ⁻¹).val *ᵥ x) =
      ((bc g (bc f γ))⁻¹).val *ᵥ ((g.comp f) ∘ x) := by
  rw [← map_inv (bc g), ← map_inv (bc f)]
  exact funext (RingHom.map_mulVec (g.comp f) (γ⁻¹).val x)

private theorem local_value_eq_zsmul {ι A R M : Type} [Fintype ι] [DecidableEq ι]
    [CommRing A] [CommRing R] [Algebra R A] [AddCommGroup M] [Module R M]
    {L : Submodule R (ι → A)} (f : L →ₗ[R] M) (k : ℤ)
    (Y δ Y' γ κ : GL ι A) (h : Y * δ = γ * Y' * κ)
    (x x' : ι → A) (hx' : x' = (γ⁻¹).val *ᵥ x)
    (h₁ : (Y⁻¹).val *ᵥ x ∈ L) (h₂ : (Y'⁻¹).val *ᵥ x' ∈ L)
    (hκ : κ ∈ stabFun L f) (hδ : δ ∈ stabGL L)
    (hfδ : ∀ y : L, k • f ⟨δ.val *ᵥ y.1, (hδ y.1).1 y.2⟩ = f y) :
    f ⟨_, h₂⟩ = k • f ⟨_, h₁⟩ := by
  obtain ⟨hgκ, hfκ⟩ := hκ
  let y := (Y⁻¹).val *ᵥ x
  let t := (δ⁻¹).val *ᵥ y
  have hback : δ.val *ᵥ t = y := by
    dsimp only [t]
    rw [mulVec_mulVec, ← Units.val_mul, mul_inv_cancel, Units.val_one, one_mulVec]
  have ht : t ∈ L := (hδ t).2 (hback.symm ▸ h₁)
  have hgroup : Y'⁻¹ * γ⁻¹ = κ * (δ⁻¹ * Y⁻¹) := calc
    _ = κ * (κ⁻¹ * (Y'⁻¹ * γ⁻¹)) := by rw [← mul_assoc, mul_inv_cancel, one_mul]
    _ = κ * (γ * Y' * κ)⁻¹ := by rw [mul_inv_rev (γ * Y') κ, mul_inv_rev γ Y']
    _ = κ * (δ⁻¹ * Y⁻¹) := by rw [← h, mul_inv_rev Y δ]
  have hvec : (Y'⁻¹).val *ᵥ x' = κ.val *ᵥ t := by
    rw [hx']
    dsimp only [t, y]
    simpa only [mulVec_mulVec, ← Units.val_mul] using
      congrArg (fun g : GL ι A => g.val *ᵥ x) hgroup
  exact (congrArg (fun a : L => f a) (Subtype.ext hvec)).trans
    ((hfκ ⟨t, ht⟩).trans ((hfδ ⟨t, ht⟩).symm.trans
      (congrArg (fun a : L => k • f a) (Subtype.ext hback))))

set_option maxHeartbeats 20000000 in
set_option synthInstance.maxHeartbeats 400000 in
theorem diaFun_same (T : Forms0 D u) (v : (D.mem u).A.vT) (k : ℤ)
    (δ : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F))
    (hδ : IsDia T.cls0.lev (T.atT.eV v).1 (T.atT.eV v).2 k δ) (c c2 : (D.mem u).C.cls 0)
    (γd : GL (Fin (D.R.N 0)) D.host.E) (κd : T.cls0.lev.U)
    (h : (T.cls0.y c * δ).1 = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γd *
      (T.cls0.y c2).1 * κd.1)
    (z : Fin (D.R.N 0) → D.host.E) (hz : z ∈ Ld D u 0 (Nat.zero_le _) c)
    (hz2 : ((γd⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ z ∈
      Ld D u 0 (Nat.zero_le _) c2) :
    (D.fm u).fv 0 v c2 (T.lv0.pr v c2 ⟨_, hz2⟩) = k • (D.fm u).fv 0 v c (T.lv0.pr v c ⟨z, hz⟩) := by
  let w := (T.atT.eV v).1
  let iAd := inclE (F := D.host.F) (E := D.host.E) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)
  let iLoc := inclE (F := D.host.F) (E := D.host.E) (w.adicCompletion D.host.F)
  let p := bc (n := Fin (D.R.N 0)) (prV (E := D.host.E) w)
  let z2 := (γd⁻¹).val *ᵥ z
  have h1 := (mem_local_dual_lattice_iff' T.cls0 c w (iLoc ∘ z)).1
    (Submodule.subset_span ⟨z, hz, rfl⟩)
  have h2 := (mem_local_dual_lattice_iff' T.cls0 c2 w (iLoc ∘ z2)).1
    (Submodule.subset_span ⟨z2, hz2, rfl⟩)
  have hκ : p κd.1 ∈ T.cls0.lev.Uloc w :=
    ((T.cls0.lev.U_eq κd.1).1 κd.2).2 w
  rw [T.cls0.lev.UlocAlt w (T.atT.eV v).2] at hκ
  have hfix := (Subgroup.mem_inf.1 hκ).2
  obtain ⟨-, -, hgδ, hfδ⟩ := hδ
  have hw : p (T.cls0.y c).1 * p δ.1 =
      p (bc iAd γd) * p (T.cls0.y c2).1 * p κd.1 := by
    have e := congrArg p h
    simp only [Subgroup.coe_mul, map_mul] at e
    exact e
  have eg : iLoc ∘ z2 = ((p (bc iAd γd))⁻¹).val *ᵥ (iLoc ∘ z) :=
    map_inverse_mulVec iAd (prV (E := D.host.E) w) γd z
  have hf := local_value_eq_zsmul (T.cls0.lev.fT w (T.atT.eV v).2) k
    (p (T.cls0.y c).1) (p δ.1) (p (T.cls0.y c2).1) (p (bc iAd γd)) (p κd.1)
    hw (iLoc ∘ z) (iLoc ∘ z2) eg h1 h2 hfix hgδ hfδ
  exact (T.fv0 v c2 ⟨z2, hz2⟩ h2).trans
    ((congrArg (T.fMe0 v) hf).trans
      ((map_zsmul (T.fMe0 v) k _).trans
        (congrArg (fun a : (D.mem u).A.Fv v => k • a) (T.fv0 v c ⟨z, hz⟩ h1).symm)))

end Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal

end
