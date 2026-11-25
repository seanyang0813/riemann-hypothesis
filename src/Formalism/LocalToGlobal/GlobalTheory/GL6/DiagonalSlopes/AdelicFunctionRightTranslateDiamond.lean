module

import Formalism.LocalToGlobal.GlobalTheory.GL6.AdelicFunctionRightTranslateDiamond
public import Formalism.LocalToGlobal.GroupLattices.DownNaturalLevelZero

@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0

open Formalism.BasicNotions Formalism.L2.Forms NumberField IsDedekindDomain Matrix Formalism.UG

section Gen

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  {σ : E →ₐ[F] E} {n : ℕ} {J : Matrix (Fin n) (Fin n) E} {T f : ℕ} {bad : Set (HeightOneSpectrum (𝓞 F))}

theorem diamond_conj_mem_level (S : StepLevel F E σ J T f bad) (v : HeightOneSpectrum (𝓞 F))
    (hv : (T : 𝓞 F) ∈ v.asIdeal) {k : ℤ} {δ : UPts σ J (FiniteAdeleRing (𝓞 F) F)}
    (h : IsDia S v hv k δ) (κ : S.U) : δ.1⁻¹ * κ.1 * δ.1 ∈ S.U := by
  apply Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.diamond_conj_mem_level <;> assumption

theorem adelic_function_right_translate_diamond {ι : Type} [Fintype ι] (S : StepLevel F E σ J T f bad) (emb : ι → E →+* ℂ)
    (v : HeightOneSpectrum (𝓞 F)) (hv : (T : 𝓞 F) ∈ v.asIdeal) (hb : v ∉ bad) {k : ℤ}
    {δ : UPts σ J (FiniteAdeleRing (𝓞 F) F)} (h : IsDia S v hv k δ)
    {g : UPts σ J (FiniteAdeleRing (𝓞 F) F) → Frames (gramC J emb) → ℂ} (hg : g ∈ AdFun S emb) :
    (fun x => g (x * δ)) ∈ AdFun S emb := by
  intro γ hγ x x' κ hx y y' hy
  have e : (x' * δ).1 = bc (inclE (F := F) (FiniteAdeleRing (𝓞 F) F)) γ * (x * δ).1 *
      (⟨δ.1⁻¹ * κ.1 * δ.1, diamond_conj_mem_level S v hv h κ⟩ : S.U).1 := by
    simp only [Subgroup.coe_mul, hx]
    group
  have := hg γ hγ (x * δ) (x' * δ) ⟨δ.1⁻¹ * κ.1 * δ.1, diamond_conj_mem_level S v hv h κ⟩ e y y' hy
  rw [level_character_conj_diamond S v hv hb h κ] at this
  exact this

end Gen

variable {D : D7} {u : D.what₂.Word}

def DiamondElementsExist (Tf : Forms0 D u) : Prop :=
  ∀ i (hi : i ≤ D.R.m) (h0 : i = 0) (v : (D.mem u).A.vT) (a : ((D.mem u).A.Fv v)ˣ), ∃ k : ℤ, (k : (D.mem u).A.Fv v) = a ∧
    ∃ δ, IsDia (Tf.cls i hi h0).lev (Tf.atT.eV v).1 (Tf.atT.eV v).2 k δ

theorem level_prime_ne_type_prime (A : AtTTied u) (j : Fin 2) : (D.mem u).A.T ≠ D.host.g j := by
  apply Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.level_prime_ne_type_prime <;> assumption

theorem level_places_not_bad (A : AtTTied u) (v : (D.mem u).A.vT) : (A.eV v).1 ∉ badG D := by
  apply Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.level_places_not_bad

end Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0

end
