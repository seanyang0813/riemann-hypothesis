module

public import Formalism.LocalToGlobal.IndefiniteReal.PrimitiveStatementsWithPassage
import Formalism.LocalToGlobal.IndefiniteReal.CxLemmas
public import Formalism.LocalToGlobal.IndefiniteReal.PackageFromPrimitiveStatements
import Mathlib.RingTheory.SimpleRing.Principal
public import Formalism.LocalToGlobal.IndefiniteReal.CxCoreRG

@[expose] public section

open Module NumberField IsDedekindDomain
open scoped Matrix ComplexOrder InnerProductSpace

noncomputable section

namespace Formalism.IndefR.Cx

open Formalism.DivisionValues Formalism.L2.Indef Formalism.L2.DIV

section Spec

variable {K : Type} [Field K]
variable {E : Type} [NormedAddCommGroup E] [InnerProductSpace ℂ E] [FiniteDimensional ℂ E] {ι : Type} [Fintype ι]

theorem exists_sum_of_mem_iSup {R M : Type} [Ring R] [AddCommGroup M] [Module R M] {ι : Type} [Fintype ι]
    (Q : ι → Submodule R M) {y : M} (hy : y ∈ ⨆ p, Q p) : ∃ ys : ι → M, (∀ p, ys p ∈ Q p) ∧ ∑ p, ys p = y := by
  classical
  refine Submodule.iSup_induction Q (motive := fun y => ∃ ys : ι → M, (∀ p, ys p ∈ Q p) ∧ ∑ p, ys p = y) hy ?_ ?_ ?_
  · intro i x hx
    refine ⟨Pi.single i x, fun p => ?_, ?_⟩
    · by_cases h : p = i
      · subst h; simpa using hx
      · simp [h]
    · simp [Finset.sum_pi_single']
  · exact ⟨0, fun _ => zero_mem _, by simp⟩
  · rintro x y ⟨xs, hxs, rfl⟩ ⟨ys, hys, rfl⟩
    exact ⟨xs + ys, fun p => add_mem (hxs p) (hys p), by simp [Finset.sum_add_distrib]⟩

def specOp (U : ι → Submodule ℂ E) (a : ι → ℂ) : Module.End ℂ E :=
  ∑ p, a p • ((U p).starProjection : E →L[ℂ] E).toLinearMap

theorem specOp_apply (U : ι → Submodule ℂ E) (a : ι → ℂ) (x : E) :
    specOp U a x = ∑ p, a p • (U p).starProjection x := by
  simp [specOp, LinearMap.sum_apply]

theorem proj_mem (U : ι → Submodule ℂ E) (p : ι) (x : E) : (U p).starProjection x ∈ U p := by
  exact Submodule.starProjection_apply_mem (U p) x

variable (U : ι → Submodule ℂ E) (hU : ∀ p q, p ≠ q → ∀ x ∈ U p, ∀ y ∈ U q, ⟪x, y⟫_ℂ = 0)
include hU

theorem proj_of_mem [DecidableEq ι] {p q : ι} {x : E} (hx : x ∈ U q) :
    (U p).starProjection x = if p = q then x else 0 := by
  split_ifs with h
  · subst h
    exact Submodule.starProjection_eq_self_iff.2 hx
  · have ho : x ∈ (U p)ᗮ := (Submodule.mem_orthogonal _ _).2 fun u hu => hU p q h u hu x hx
    have h1 := Submodule.starProjection_eq_self_iff.2 ho
    rw [Submodule.starProjection_orthogonal_val] at h1
    exact sub_eq_self.1 h1

theorem specOp_of_mem {a : ι → ℂ} {q : ι} {x : E} (hx : x ∈ U q) : specOp U a x = a q • x := by
  classical
  rw [specOp_apply]
  simp only [proj_of_mem U hU hx, smul_ite, smul_zero]
  simp

theorem proj_specOp (a : ι → ℂ) (q : ι) (x : E) :
    (U q).starProjection (specOp U a x) = a q • (U q).starProjection x := by
  classical

  rw [specOp_apply, map_sum, Finset.sum_eq_single q]
  · rw [map_smul, Submodule.starProjection_eq_self_iff.2 (proj_mem U q x)]
  · intro p _ hp
    rw [map_smul, proj_of_mem U hU (proj_mem U p x), if_neg (Ne.symm hp), smul_zero]
  · intro h
    exact absurd (Finset.mem_univ q) h

theorem sum_proj {x : E} (hx : x ∈ ⨆ p, U p) : ∑ p, (U p).starProjection x = x := by
  classical
  refine Submodule.iSup_induction U (motive := fun x => ∑ p, (U p).starProjection x = x) hx ?_ ?_ ?_
  · intro q x hx
    simp only [proj_of_mem U hU hx]
    simp
  · simp
  · intro x y hx hy
    simp only [map_add (f := _), Finset.sum_add_distrib, hx, hy]


end Spec

section Structs

variable {K : Type} [Field K] [NumberField K] [StarRing K]

namespace CxData

variable {Bs : DefBase K} {A : DefAmb Bs} {X : CxData A} {fc : DefSub A → DefFace Bs} {cr : Crd A fc} {b : Bool}

theorem rowsK (hW : (lv (fc X.zs) b).WF) (h3 : X.H3 cr b) (y : Fin ((lv (fc X.zs) b).dQ Bs.μ0) → K) :
    y ∈ ⨆ p, X.Ep cr b p := by
  have hle : (⨆ p, (lv (fc X.zs) b).Qp Bs.μ0 p) ≤ ⨆ p, X.Ep cr b p :=
    iSup_mono fun p x hx => (X.mem_Ep cr b p x).2 ((h3 p x).1 hx)
  exact hle (hW.Qp_top ▸ Submodule.mem_top)

theorem liftsK (ht : (lv (fc X.zs) b).Types) (hk : X.KForm b) (he : X.EWnorm b) (hn : 0 < X.nP b) (h5 : X.H5 cr b)
    (hr : X.RATth cr b) (h3W : X.H3W cr b) (j : Bs.J) (y : Fin (X.dW b j) → K) : y ∈ ⨆ p, X.WpK b j p := by
  obtain ⟨x, rfl⟩ := (X.liftMat_bij cr b hk he hn h5 hr j Bs.μ0).2 y
  have hx : x ∈ ⨆ p, (lv (fc X.zs) b).Zp j Bs.μ0 p := by
    rw [ht j]
    exact Submodule.mem_top
  have hle : (⨆ p, (lv (fc X.zs) b).Zp j Bs.μ0 p).map (X.liftMat cr b j Bs.μ0).mulVecLin ≤ ⨆ p, X.WpK b j p := by
    rw [Submodule.map_iSup]
    exact iSup_mono fun p => Submodule.map_le_iff_le_comap.2 fun z hz => by
      rw [Submodule.mem_comap, Matrix.mulVecLin_apply, X.mem_WpK b j p, X.key_lift cr b h5 hr j Bs.μ0 z]
      exact (h3W j p z).1 hz
  exact hle (Submodule.mem_map_of_mem hx)

theorem heckeRows_spec (_h2 : X.H2 cr b) (_hE : X.PartsE b) (_hQ : ∀ y, y ∈ ⨆ p, X.Ep cr b p) (cf : ConvFace Bs) :
    Nonempty (X.HeckeRowsC cr b cf) :=
  ⟨{ hC := fun T => specOp (fun p => X.EEp p ⊓ X.EEl b) (fun p => Bs.v0.embedding (cf.ev p T)) }⟩

theorem heckeW_spec (_hk : X.KForm b) (_he : X.EWnorm b) (_hn : 0 < X.nP b) (_hP : X.PartsW b)
    (_hK : ∀ j y, y ∈ ⨆ p, X.WpK b j p) (cf : ConvFace Bs) : Nonempty (X.HeckeWC b cf) :=
  ⟨{ hC := fun j T => specOp (fun p => X.Wp j p ⊓ LinearMap.range (X.w0C b j)) (fun p => Bs.v0.embedding (cf.ev p T)) }⟩

end CxData

end Structs

section Fields3

variable {K : Type} [Field K] [NumberField K] [StarRing K]
variable {G : Type} [Group G] [Fintype G] {Pl0 I0 Ty T : Type} {m : ℕ}
variable {A3 : FamIn3 K G Pl0 I0 Ty T m} {P0 : Subgroup G} {ψ0 : P0 →* Kˣ} {P1 : Subgroup G} {ψ1 : P1 →* Kˣ}
  {Dc : ∀ Zs : DefSub A3.fam3.amb3, DefCols (A3.side3 P1 ψ1 Zs)} {Sp : ∀ Zs : DefSub A3.fam3.amb3, SPer (Dc Zs)}
  {Zsc : DefSub A3.fam3.amb3 → IndefScale A3.fam3.base3} {X : CxData A3.fam3.amb3} {s : ℕ}
  {C0 : ∀ j : Fin m, ((A3.liftI j A3.A.fam.μ0).OpIx → K) → Prop}
  {hE : ∀ t, (A3.rowI t).OpIx → Module.End ℂ X.EE} {hW : ∀ j t, (A3.liftI j t).OpIx → Module.End ℂ (X.W j)}
  {gE : Representation ℂ G X.EE} {gW : ∀ j, Representation ℂ G (X.W j)}

theorem heckeRB_of (hR : ComplexDataConditionsBaseLevel A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X s C0 hE hW gE gW) (cf : ConvFace A3.fam3.base3) :
    Nonempty (X.HeckeRowsC (crdOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc) false cf) :=
  CxData.heckeRows_spec (hR.what₂ false).1 (hR.partsE false)
    (CxData.rowsK (hR.rowHyp false).wf (hR.rowHyp false).h3) cf

theorem heckeRC_of (hR : ComplexDataConditionsBaseLevel A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X s C0 hE hW gE gW) (cf : ConvFace A3.fam3.base3) :
    Nonempty (X.HeckeRowsC (crdOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc) true cf) :=
  CxData.heckeRows_spec (hR.what₂ true).1 (hR.partsE true)
    (CxData.rowsK (hR.rowHyp true).wf (hR.rowHyp true).h3) cf

theorem heckeWB_of (hR : ComplexDataConditionsBaseLevel A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X s C0 hE hW gE gW) (cf : ConvFace A3.fam3.base3) :
    Nonempty (X.HeckeWC false cf) :=
  CxData.heckeW_spec hR.kForm hR.ewNorm (hR.h4pos.2.2 false) hR.partsW
    (CxData.liftsK hR.types0 hR.kForm hR.ewNorm (hR.h4pos.2.2 false) hR.lifts0.1 hR.ratTh hR.liftHyp0.h3W) cf

end Fields3

end Formalism.IndefR.Cx
