module

public import Formalism.SharpRestriction.LevelLetterCocycles.DecompositionData
public import Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.IsTwistedDualOfGaloisRep
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
public import Formalism.LocalRingCardinality.DataParams₂

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N

open Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations NumberField IsDedekindDomain Module

variable {D : D7}

section Pts

variable (L : SizeData₂ D) (HW : HWOf D.loc) (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
    (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)
    (w : HeightOneSpectrum (𝓞 D.host.E)) (hw : w ∈ placesOver D.host.E (D.nd.l i))
    (Cx : Formalism.MainNotions.TruncatedSeriesCountingIdentities.CoefExt D i w hw) (hG : Good (D.nbr i w hw).Kw 1 Cx.LL)

variable {HW i r w hw Cx hG}

end Pts

theorem zeta_of_good {l : ℕ} [Fact l.Prime] (P : LocPrime l) {K LL : FinExt l} (h : Good K 1 LL) :
    ∃ ζ : ↥LL.1, IsPrimitiveRoot ζ l := by
  have hl : 0 < l := (Fact.out : l.Prime).pos
  haveI : NeZero (l : Om l) := ⟨by exact_mod_cast hl.ne'⟩
  obtain ⟨z, hz⟩ := IsAlgClosed.exists_root (Polynomial.cyclotomic l (Om l)) (by
    rw [Polynomial.degree_cyclotomic]
    exact_mod_cast (Nat.totient_pos.mpr hl).ne')
  have hp : IsPrimitiveRoot z l := Polynomial.isRoot_cyclotomic_iff.mp hz
  have hmem : z ∈ Ks K 1 := by
    unfold Formalism.BasicNotions.Loc.Ks
    exact (le_sup_right (a := K0 K)) (IntermediateField.subset_adjoin _ _ (by simpa using hp.pow_eq_one))
  exact ⟨⟨z, h.2.2.2 (Ks K 1).val ⟨z, hmem⟩⟩, IsPrimitiveRoot.coe_submonoidClass_iff.mp hp⟩

section Pts2

variable {L : SizeData₂ D} {HW : HWOf D.loc} {F : FonOf D.loc D.locA HW} {i : D.nd.Loc} {r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i))}
    {ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))} {π : D.nd.X i}
    {w : HeightOneSpectrum (𝓞 D.host.E)} {hw : w ∈ placesOver D.host.E (D.nd.l i)}
    {Cx : Formalism.MainNotions.TruncatedSeriesCountingIdentities.CoefExt D i w hw} {hG : Good (D.nbr i w hw).Kw 1 Cx.LL}

end Pts2

theorem epsU_eq (i : D.nd.Loc) : epsU D.nd i = chiU D.nd i 1 * (chiU D.nd i 2)⁻¹ := by
  have ht : 2 ≤ D.R.t := by
    have := D.R.rank_add_five_le
    omega
  unfold epsU chiU Formalism.MainNotions.N.Glob.epsO
  rw [D.nd.chi_def i 2 (by norm_num) ht, show (-(((2 : ℕ) : ℤ) - 1)) = -1 by norm_num, zpow_neg_one,
    mul_inv_rev, inv_inv, mul_left_comm, mul_inv_cancel, mul_one]

theorem rDuO_cont (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
    (hr : Formalism.MainNotions.TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i r) (x : D.nd.X i) : Continuous fun g => rDuO D.nd i r x g := by
  have hinv : Continuous fun g : GE D.nd => g⁻¹ := continuous_inv
  have hχ : ∀ c, Continuous fun g => ((chiU D.nd i c g : (D.nd.O i)ˣ) : D.nd.O i) :=
    fun c => D.nd.chi_cont i c
  have hc : Continuous fun g => (((chiU D.nd i 1 * epsU D.nd i) g : (D.nd.O i)ˣ) : D.nd.O i) := by
    rw [epsU_eq]
    have e : ∀ g, (((chiU D.nd i 1 * (chiU D.nd i 1 * (chiU D.nd i 2)⁻¹)) g : (D.nd.O i)ˣ) : D.nd.O i) =
        (chiU D.nd i 1 g : D.nd.O i) * ((chiU D.nd i 1 g : D.nd.O i) * (chiU D.nd i 2 g⁻¹ : D.nd.O i)) := by
      intro g
      simp only [MonoidHom.mul_apply, MonoidHom.inv_apply, Units.val_mul, map_inv]
    simp only [e]
    exact (hχ 1).mul ((hχ 1).mul ((hχ 2).comp hinv))
  show Continuous fun g => (((chiU D.nd i 1 * epsU D.nd i) g : (D.nd.O i)ˣ) : D.nd.O i) •
    (rO D.nd i r x g⁻¹).transpose
  exact hc.smul ((hr x).comp hinv).matrix_transpose

section Cond

variable (L : SizeData₂ D) (HW : HWOf D.loc) (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
    (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)

variable {L HW i r ρ π}

variable (L HW i r ρ π)

attribute [local instance] nLet_neZero

variable {L HW i r ρ π}

end Cond

end Formalism.MainNotions.N

end
