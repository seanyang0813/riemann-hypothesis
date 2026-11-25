module

public import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.CompletionIsLocalRing
public import Formalism.UnipotentAdelicQuotients.SWXSDefs
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.TensorLocallyCompactRing
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup

@[expose] public section

open HeckeCharacterZeroLocus.SiegelWeilU GlobalTheory.CompanionTheory.SW NumberField IsDedekindDomain MeasureTheory Topology
open scoped TensorProduct ENNReal NNReal Matrix

noncomputable section

namespace GlobalTheory.CompanionTheory.SW

theorem latV_compact_open_mass : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (d : ℕ) (b : Module.Basis (Fin d) F E), ∀ (n M : ℕ) (v : HeightOneSpectrum (𝓞 F)), IsCompact (latV (M := M) (n := n) b v) ∧ IsOpen (latV (M := M) (n := n) b v) ∧ (0 : Fin n → Fin M → Fv F v ⊗[F] E) ∈ latV b v ∧ ∀ lam : Measure (Fv F v), IsStdV v lam → coordW (Fv F v) b lam n M (latV b v) = 1 := by
  intro F E _ _ _ _ _ σ hσ d b n M v
  obtain ⟨i1, i2, i3, i4, -⟩ := _root_.GlobalTheory.CompanionTheory.SW.LocFv.isLocR_Fv F v
  obtain ⟨-, -, -, -, -, -, hH, -⟩ := _root_.GlobalTheory.CompanionTheory.SW.TopK.topTens_props F E σ hσ (Fv F v)
  let f : Fv F v ⊗[F] E → Fin d → Fv F v :=
    fun y k => (Algebra.TensorProduct.basis (Fv F v) b).repr y k
  let e : (Fv F v ⊗[F] E) ≃ₜ (Fin d → Fv F v) := (hH d b).homeomorph f
  let O : Set (Fv F v) := (v.adicCompletionIntegers F : Set (Fv F v))
  have hOo : IsOpen O := Valued.isOpen_valuationSubring _
  have hOc : IsCompact O :=
    isCompact_iff_compactSpace.2 (GlobalTheory.AdelicUnitaryTop.compactSpace_adicCompletionIntegers F v)
  let P : Set (Fin d → Fv F v) := Set.pi Set.univ fun _ => O
  let B : Set (Fv F v ⊗[F] E) := e ⁻¹' P
  have hBc : IsCompact B :=
    (Homeomorph.isCompact_preimage e).2 (isCompact_univ_pi fun _ => hOc)
  have hBo : IsOpen B :=
    (Homeomorph.isOpen_preimage e).2 (isOpen_set_pi Set.finite_univ fun _ _ => hOo)
  have hlat : latV (M := M) (n := n) b v = Set.pi Set.univ fun _ => Set.pi Set.univ fun _ => B := by
    ext Y
    simp only [latV, Set.mem_ofPred_eq, Set.mem_pi, Set.mem_univ, true_implies, B, P, Set.mem_preimage]
    rfl
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [hlat]
    exact isCompact_univ_pi fun _ => isCompact_univ_pi fun _ => hBc
  · rw [hlat]
    exact isOpen_set_pi Set.finite_univ fun _ _ => isOpen_set_pi Set.finite_univ fun _ _ => hBo
  · intro a i k
    simp
  · rintro lam ⟨hHaar, h1⟩
    have : BorelSpace (Fv F v) := ⟨rfl⟩
    have : BorelSpace (Fv F v ⊗[F] E) := ⟨rfl⟩
    have : SecondCountableTopology (Fin d → Fv F v) := inferInstance
    have hme : MeasurableEmbedding f := e.measurableEmbedding
    have hsurj : Function.Surjective f := e.surjective
    have : SigmaFinite (coordK (Fv F v) b lam) := by
      refine SigmaFinite.of_map _ hme.measurable.aemeasurable (f := f) ?_
      change SigmaFinite (Measure.map f (Measure.comap f _))
      rw [hme.map_comap, hsurj.range_eq, Measure.restrict_univ]
      infer_instance
    have hK : coordK (Fv F v) b lam B = 1 := by
      change Measure.comap f _ B = 1
      rw [hme.comap_apply]
      have : f '' B = P := Set.image_preimage_eq _ hsurj
      rw [this, Measure.pi_pi]
      simp only [Finset.prod_const]
      change lam (v.adicCompletionIntegers F : Set (Fv F v)) ^ _ = 1
      rw [h1, one_pow]
    rw [hlat]
    unfold coordW
    rw [Measure.pi_pi]
    refine Finset.prod_eq_one fun _ _ => ?_
    rw [Measure.pi_pi]
    exact Finset.prod_eq_one fun _ _ => hK

end GlobalTheory.CompanionTheory.SW
