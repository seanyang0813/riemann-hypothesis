module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.DiffProd
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.GenSmulMem
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.NcValVolOrdTr

@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf.NcVal.VolUTr

open Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.LocVol Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes NumberField IsDedekindDomain
open scoped TensorProduct

open Formalism.L2.SG.Pf.NcVal.TrW in
theorem annX_of {D : D7} (X : HidaSetting D) (ψ : AddChar (AF X.B.I.F) ℂ) (hC : Formalism.L2.SG.Pf.NcVal.CondAll) : AnnX X ψ := by
  intro hψ hs v y
  have hmax : v.asIdeal.IsMaximal := v.isMaximal
  obtain ⟨P, hPmax, hPv⟩ := Ideal.exists_ideal_over_maximal_of_isIntegral (S := 𝓞 X.B.I.E) v.asIdeal
    (by
      rw [(RingHom.injective_iff_ker_eq_bot _).mp
        (FaithfulSMul.algebraMap_injective (𝓞 X.B.I.F) (𝓞 X.B.I.E))]
      exact bot_le)
  obtain ⟨θ, t, htθ, hnot⟩ := X.B.I.cm.cmUnram.2.2 P hPmax
  set σ := X.B.I.cm.sig with hσ
  have hσx : ∀ x, σ x = star x := fun x => rfl
  have hinv : ∀ y, σ (σ y) = y := fun y => by rw [hσx, hσx, star_star]
  have ht : σ (θ : X.B.I.E) = (t : X.B.I.E) := by rw [hσx]; exact htθ.symm
  have hne : (θ : X.B.I.E) ≠ t := by
    intro h
    apply hnot
    have : θ - t = 0 := by ext; simp [h]
    rw [this]; exact P.zero_mem
  have hnt : ∃ x, σ x ≠ x := ⟨θ, by rw [ht]; exact fun h => hne h.symm⟩
  have hfix : star (((θ : X.B.I.E) - t) ^ 2) = ((θ : X.B.I.E) - t) ^ 2 := by
    have htθ' : (t : X.B.I.E) = star (θ : X.B.I.E) := htθ
    have h1 : star (t : X.B.I.E) = θ := by rw [htθ', star_star]
    rw [star_pow, star_sub, h1, ← htθ']
    ring
  obtain ⟨f, hf⟩ := (X.B.I.cm.fixed _).1 hfix
  have hint : IsIntegral ℤ (algebraMap X.B.I.F X.B.I.E f) := by
    rw [hf]
    have h1 : (((θ - t) ^ 2 : 𝓞 X.B.I.E) : X.B.I.E) = ((θ : X.B.I.E) - t) ^ 2 := by push_cast; ring
    rw [← h1]
    exact RingOfIntegers.isIntegral_coe _
  have hfint : IsIntegral ℤ f :=
    (isIntegral_algHom_iff (IsScalarTower.toAlgHom ℤ X.B.I.F X.B.I.E)
      (algebraMap X.B.I.F X.B.I.E).injective).mp hint
  set e : 𝓞 X.B.I.F := ⟨f, hfint⟩ with he
  have he2 : ((θ : X.B.I.E) - t) ^ 2 = algebraMap X.B.I.F X.B.I.E (e : X.B.I.F) := hf.symm
  have hev : e ∉ v.asIdeal := by
    intro hm
    rw [← hPv] at hm
    have hm' : algebraMap (𝓞 X.B.I.F) (𝓞 X.B.I.E) e ∈ P := hm
    have heq : algebraMap (𝓞 X.B.I.F) (𝓞 X.B.I.E) e = (θ - t) ^ 2 := by
      apply RingOfIntegers.coe_injective
      rw [← IsScalarTower.algebraMap_apply (𝓞 X.B.I.F) (𝓞 X.B.I.E) X.B.I.E,
        IsScalarTower.algebraMap_apply (𝓞 X.B.I.F) X.B.I.F X.B.I.E, map_pow, map_sub]
      exact he2.symm
    rw [heq] at hm'
    exact hnot (hPmax.isPrime.mem_of_pow_mem 2 hm')
  have hfin := X.B.I.cm.deg2
  have hTr : ∀ x, Algebra.trace (Fv X.B.I.F v) (Fv X.B.I.F v ⊗[X.B.I.F] X.B.I.E) (x * (sc (E := X.B.I.E) v (dV v) * y)) =
      dV v * Algebra.trace (Fv X.B.I.F v) (Fv X.B.I.F v ⊗[X.B.I.F] X.B.I.E) (x * y) := by
    intro x
    rw [sc_eq, ← Algebra.smul_def, mul_smul_comm, map_smul, smul_eq_mul]
  constructor
  · intro h
    refine dual_mem v σ hinv hnt hfin θ t ht e he2 hev _ fun x hx => ?_
    rw [hTr]
    refine (hC X.B.I.F X.B.I.cm.totReal ψ hψ hs v _).1 fun s hs' => ?_
    have e3 : Algebra.trace (Fv X.B.I.F v) (Fv X.B.I.F v ⊗[X.B.I.F] X.B.I.E) (x * y) * s =
        Algebra.trace (Fv X.B.I.F v) (Fv X.B.I.F v ⊗[X.B.I.F] X.B.I.E) ((s • x) * y) := by
      rw [smul_mul_assoc, map_smul, smul_eq_mul, mul_comm]
    rw [e3]
    exact h _ (oev_smul' v hs' hx)
  · intro h x hx
    have hm := trace_mem v (mul_mem v hx h)
    rw [hTr] at hm
    have := (hC X.B.I.F X.B.I.cm.totReal ψ hψ hs v _).2 hm 1 (one_mem _)
    simpa using this

end Formalism.L2.SG.Pf.NcVal.VolUTr
