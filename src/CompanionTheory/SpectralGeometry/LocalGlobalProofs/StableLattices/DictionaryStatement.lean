module

public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsIsSplitChartOne
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsUniqueIsConjAt
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Tjcosets

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.DictLoc

open scoped TensorProduct
open IsDedekindDomain NumberField Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU

section Model

theorem isField_tensor_of_no_algHom {F K E : Type} [Field F] [Field K] [Field E] [Algebra F K] [Algebra F E]
    (h2 : Module.finrank F E = 2) (hn : IsEmpty (E →ₐ[F] K)) : IsField (K ⊗[F] E) := by
  haveI : FiniteDimensional F E := Module.finite_of_finrank_pos (by omega)
  have hA : Module.finrank K (K ⊗[F] E) = 2 := by rw [Module.finrank_baseChange, h2]
  haveI : Nontrivial (K ⊗[F] E) := Module.nontrivial_of_finrank_pos (R := K) (by omega)
  obtain ⟨m, hm⟩ := Ideal.exists_maximal (K ⊗[F] E)
  by_cases hb : m = ⊥
  · subst hb
    exact ((RingEquiv.quotientBot (K ⊗[F] E)).symm.toMulEquiv.isField
      ((Ideal.Quotient.maximal_ideal_iff_isField_quotient ⊥).1 hm))
  · exfalso
    letI := Ideal.Quotient.field m
    let φ : (K ⊗[F] E) →ₐ[K] (K ⊗[F] E) ⧸ m := Ideal.Quotient.mkₐ K m
    have hs : Function.Surjective φ := Ideal.Quotient.mkₐ_surjective K m
    have h3 := LinearMap.finrank_range_add_finrank_ker φ.toLinearMap
    rw [LinearMap.range_eq_top.2 hs, finrank_top, hA] at h3
    have hk : 0 < Module.finrank K (LinearMap.ker φ.toLinearMap) := by
      obtain ⟨x, hx, hx0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hb
      haveI : Nontrivial (LinearMap.ker φ.toLinearMap) :=
        ⟨⟨⟨x, (Ideal.Quotient.eq_zero_iff_mem.2 hx)⟩, 0, fun e => hx0 (congrArg Subtype.val e)⟩⟩
      exact Module.finrank_pos
    haveI : Module.Finite K ((K ⊗[F] E) ⧸ m) := Module.Finite.of_surjective φ.toLinearMap hs
    have hq : 0 < Module.finrank K ((K ⊗[F] E) ⧸ m) := Module.finrank_pos
    have h1 : Module.finrank K ((K ⊗[F] E) ⧸ m) = 1 := by omega
    have hbj : Function.Bijective (Algebra.ofId K ((K ⊗[F] E) ⧸ m)) :=
      ⟨(algebraMap K _).injective, fun y => by
        have : (⊥ : Subalgebra K ((K ⊗[F] E) ⧸ m)) = ⊤ := Subalgebra.bot_eq_top_of_finrank_eq_one h1
        have hy : y ∈ (⊥ : Subalgebra K ((K ⊗[F] E) ⧸ m)) := this ▸ Algebra.mem_top
        obtain ⟨a, ha⟩ := Algebra.mem_bot.1 hy
        exact ⟨a, ha⟩⟩
    let ε : K ≃ₐ[K] (K ⊗[F] E) ⧸ m := AlgEquiv.ofBijective _ hbj
    exact hn.false (((ε.symm.toAlgHom.comp φ).restrictScalars F).comp Algebra.TensorProduct.includeRight)

end Model

section Main

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  {σ : E →ₐ[F] E} {n : ℕ} {J : Matrix (Fin n) (Fin n) E} {v : HeightOneSpectrum (𝓞 F)}

theorem properSpace_Fv (v : HeightOneSpectrum (𝓞 F)) : ProperSpace (Fv F v) := by
  refine Valued.integer.properSpace_iff_completeSpace_and_isDiscreteValuationRing_integer_and_finite_residueField.2
    ⟨inferInstance, ?_, ?_⟩
  · exact inferInstanceAs (IsDiscreteValuationRing (v.adicCompletionIntegers F))
  · exact Formalism.UG.P.tjcosets_finite v

end Main

end GlobalTheory.CompanionTheory.DictLoc

end
