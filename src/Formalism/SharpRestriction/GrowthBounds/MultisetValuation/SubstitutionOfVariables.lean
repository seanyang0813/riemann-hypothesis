module

public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.IntegralExpRename
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.CyclicPowerClassOfExpEquiv
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.InParamMap
import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.IntRPsubst
import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NatCastInvMemRp

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset
open Formalism.InvariantFactorPaths.G7 (lgF lamF Gser Aser Aser')

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

section Param

variable (p : ℕ) [hp : Fact p.Prime]

def tOf {K' σ τ : Type} [Field K'] (vp : K') (μ : PowerSeries K') (L : σ → MvPowerSeries τ K') :
    σ → MvPowerSeries τ K' :=
  fun i => PowerSeries.subst (L i) (PowerSeries.C vp * μ)

private theorem constantCoeff_logF_eq_zero : PowerSeries.constantCoeff (logF p) = 0 := by
  first
  | (rw [← PowerSeries.coeff_zero_eq_constantCoeff_apply]; unfold logF; simp)

private theorem cc_subst_lemma_2 {τ S : Type} [CommRing S] {a : MvPowerSeries τ S}
    (ha : MvPowerSeries.constantCoeff a = 0) {f : PowerSeries S} (hf : PowerSeries.constantCoeff f = 0) :
    MvPowerSeries.constantCoeff (PowerSeries.subst a f) = 0 := by
  have hs : PowerSeries.HasSubst a := by
    first
    | exact PowerSeries.HasSubst.of_constantCoeff_zero ha
  obtain ⟨g, rfl⟩ := PowerSeries.X_dvd_iff.mpr hf
  first
  | rw [PowerSeries.subst_mul hs, PowerSeries.subst_X hs, map_mul, ha, zero_mul]

theorem th_lX_const (K1 : Type) [Field K1] [Algebra (K0 p) K1] {σ : Type} (i : σ) :
    MvPowerSeries.constantCoeff (PowerSeries.subst (MvPowerSeries.X i : MvPowerSeries σ K1)
      (PowerSeries.map (algebraMap (K0 p) K1) (logF p))) = 0 := by
  refine cc_subst_lemma_2 (MvPowerSeries.constantCoeff_X i) ?_
  rw [← PowerSeries.coeff_zero_eq_constantCoeff_apply, PowerSeries.coeff_map,
    PowerSeries.coeff_zero_eq_constantCoeff_apply, constantCoeff_logF_eq_zero, map_zero]

theorem th_inParam_eq {σ : Type} (f : MvPowerSeries σ (K0 p)) : inParam p f = inParamK p (K0 p) f := by
  unfold inParam inParamK
  congr 1

theorem th_inParamK_map {σ : Type} [Finite σ] (K1 K' : Type) [Field K1] [Algebra (K0 p) K1] [Field K']
    [Algebra (K0 p) K'] [Algebra K1 K'] [IsScalarTower (K0 p) K1 K'] (U : MvPowerSeries σ K1) :
    inParamK p K' (MvPowerSeries.map (algebraMap K1 K') U) =
      MvPowerSeries.map (algebraMap K1 K') (inParamK p K1 U) := by
  unfold inParamK
  rw [MvPowerSeries.map_subst (MvPowerSeries.hasSubst_of_constantCoeff_zero (th_lX_const p K1))]
  congr 1
  funext i
  have hX : PowerSeries.HasSubst (MvPowerSeries.X i : MvPowerSeries σ K1) :=
    PowerSeries.HasSubst.of_constantCoeff_zero (MvPowerSeries.constantCoeff_X i)
  rw [PowerSeries.map_subst hX, MvPowerSeries.map_X, map_logF, map_logF]
  congr 1
  ext n
  unfold lgF

  rw [PowerSeries.coeff_map, PowerSeries.coeff_mk, PowerSeries.coeff_mk, map_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [apply_ite (algebraMap K1 K'), map_zero, map_inv₀, map_pow, map_natCast]

theorem th_tOf_const {K' σ τ : Type} [Field K'] (vp : K') (μ : PowerSeries K') (h0 : PowerSeries.constantCoeff μ = 0)
    (L : σ → MvPowerSeries τ K') (hL0 : ∀ i, MvPowerSeries.constantCoeff (L i) = 0) (i : σ) :
    MvPowerSeries.constantCoeff (tOf vp μ L i) = 0 := by
  unfold tOf
  refine cc_subst_lemma_2 (hL0 i) ?_
  rw [map_mul, h0, mul_zero]

theorem th_hasSubst_lX {σ : Type} [Finite σ] : MvPowerSeries.HasSubst
    (fun i : σ => PowerSeries.subst (MvPowerSeries.X i : MvPowerSeries σ (K0 p)) (logF p)) := by
  refine MvPowerSeries.hasSubst_of_constantCoeff_zero fun i => ?_
  exact cc_subst_lemma_2 (MvPowerSeries.constantCoeff_X i) (constantCoeff_logF_eq_zero p)

private theorem constantCoeff_subst_eq_zero' {κ τ S : Type} [CommRing S] [Finite κ] {a : κ → MvPowerSeries τ S}
    (h : ∀ s, MvPowerSeries.constantCoeff (a s) = 0) {f : MvPowerSeries κ S}
    (hf : MvPowerSeries.constantCoeff f = 0) :
    MvPowerSeries.constantCoeff (MvPowerSeries.subst a f) = 0 := by
  have key : ∀ d : κ →₀ ℕ,
      MvPowerSeries.coeff d f • MvPowerSeries.constantCoeff (d.prod fun s e => a s ^ e) = 0 := by
    intro d
    by_cases hd : d = 0
    · subst hd
      rw [← MvPowerSeries.coeff_zero_eq_constantCoeff_apply] at hf
      rw [hf, zero_smul]
    · obtain ⟨s, hs⟩ : ∃ s, d s ≠ 0 := by
        by_contra hcon
        push_neg at hcon
        exact hd (Finsupp.ext hcon)
      have h0 : MvPowerSeries.constantCoeff (d.prod fun s e => a s ^ e) = 0 := by
        rw [Finsupp.prod, map_prod]
        exact Finset.prod_eq_zero (Finsupp.mem_support_iff.mpr hs) (by rw [map_pow, h s, zero_pow hs])
      rw [h0, smul_zero]
  rw [MvPowerSeries.constantCoeff_subst (MvPowerSeries.hasSubst_of_constantCoeff_zero h)]
  simp only [key, finsum_zero]

theorem th_inParam_const {σ : Type} [Finite σ] {f : MvPowerSeries σ (K0 p)}
    (hf : MvPowerSeries.constantCoeff f = 0) : MvPowerSeries.constantCoeff (inParam p f) = 0 := by
  unfold inParam
  exact constantCoeff_subst_eq_zero' (fun i => cc_subst_lemma_2 (MvPowerSeries.constantCoeff_X i) (constantCoeff_logF_eq_zero p)) hf

theorem th_inParam_sub {σ : Type} [Finite σ] (f g : MvPowerSeries σ (K0 p)) :
    inParam p (f - g) = inParam p f - inParam p g := by
  have ha := th_hasSubst_lX p (σ := σ)
  unfold inParam
  rw [← MvPowerSeries.coe_substAlgHom ha, map_sub]

theorem th_inParam_neg {σ : Type} [Finite σ] (f : MvPowerSeries σ (K0 p)) :
    inParam p (-f) = -inParam p f := by
  have ha := th_hasSubst_lX p (σ := σ)
  unfold inParam
  rw [← MvPowerSeries.coe_substAlgHom ha, map_neg]

theorem th_inParam_sum {σ α : Type} [Finite σ] (s : Finset α) (f : α → MvPowerSeries σ (K0 p)) :
    inParam p (∑ a ∈ s, f a) = ∑ a ∈ s, inParam p (f a) := by
  have ha := th_hasSubst_lX p (σ := σ)
  unfold inParam

  rw [← MvPowerSeries.coe_substAlgHom ha, map_sum]

theorem th_ren_hasSubst {κ σ R : Type} [Finite κ] [CommRing R] (φ : κ → σ) :
    MvPowerSeries.HasSubst (fun k => (MvPowerSeries.X (φ k) : MvPowerSeries σ R)) :=
  MvPowerSeries.hasSubst_of_constantCoeff_zero fun k => MvPowerSeries.constantCoeff_X (φ k)

theorem th_ren_sub {κ σ R : Type} [Finite κ] [CommRing R] (φ : κ → σ) (f g : MvPowerSeries κ R) :
    ren φ (f - g) = ren φ f - ren φ g := by
  have ha := th_ren_hasSubst (R := R) φ
  unfold ren
  rw [← MvPowerSeries.coe_substAlgHom ha, map_sub]

theorem th_ren_const {κ σ R : Type} [Finite κ] [CommRing R] (φ : κ → σ) {f : MvPowerSeries κ R}
    (hf : MvPowerSeries.constantCoeff f = 0) : MvPowerSeries.constantCoeff (ren φ f) = 0 := by
  unfold ren
  exact constantCoeff_subst_eq_zero' (fun k => MvPowerSeries.constantCoeff_X (φ k)) hf

theorem th_inParam_ren {κ σ : Type} [Finite κ] [Finite σ] (φ : κ → σ) (f : MvPowerSeries κ (K0 p)) :
    inParam p (ren φ f) = ren φ (inParam p f) := by
  unfold inParam ren
  rw [MvPowerSeries.subst_comp_subst_apply (th_ren_hasSubst φ) (th_hasSubst_lX p),
    MvPowerSeries.subst_comp_subst_apply (th_hasSubst_lX p) (th_ren_hasSubst φ)]
  congr 1
  funext k
  rw [MvPowerSeries.subst_X (th_hasSubst_lX p)]
  have hX : PowerSeries.HasSubst (MvPowerSeries.X k : MvPowerSeries κ (K0 p)) :=
    PowerSeries.HasSubst.of_constantCoeff_zero (MvPowerSeries.constantCoeff_X k)
  have e3 : MvPowerSeries.subst (fun k => (MvPowerSeries.X (φ k) : MvPowerSeries σ (K0 p)))
      (PowerSeries.subst (MvPowerSeries.X k : MvPowerSeries κ (K0 p)) (logF p)) =
      PowerSeries.subst (MvPowerSeries.subst (fun k => (MvPowerSeries.X (φ k) : MvPowerSeries σ (K0 p)))
        (MvPowerSeries.X k : MvPowerSeries κ (K0 p))) (logF p) :=
    MvPowerSeries.subst_comp_subst_apply (PowerSeries.hasSubst_iff.1 hX) (th_ren_hasSubst φ) _
  rw [e3, MvPowerSeries.subst_X (th_ren_hasSubst φ)]

theorem substitution_of_variables {σ : Type} (be : MvPowerSeries (Fin 2) (K0 p)) (a b : σ) :
    sub2 p be (MvPowerSeries.X a) (MvPowerSeries.X b) = ren ![a, b] be := by
  unfold sub2 ren
  congr 1
  funext k
  fin_cases k <;> rfl

def Gt (E : Type) [Fintype E] (c c' : K0 p) : MvPowerSeries (E ⊕ E) (K0 p) :=
  ∑ e : E, ren ![Sum.inl e, Sum.inr e] (Gser p c c')

end Param

end Formalism.MainNotions.FormalGroupSystem.Pf
