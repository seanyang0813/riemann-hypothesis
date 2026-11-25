module

public import Formalism.UnipotentAdelicQuotients.SWXSDefs
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelesLocallyCompactSecondCountable
public import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelicTupleProjections
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.TensorLocallyCompactRing

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.SW.BB

open HeckeCharacterZeroLocus.SiegelWeilU GlobalTheory.CompanionTheory.SW GlobalTheory.CompanionTheory.SW.BB NumberField IsDedekindDomain MeasureTheory Topology
open scoped TensorProduct ENNReal NNReal Matrix

theorem measurableSet_natMul_int : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (d M : ℕ) (b : Module.Basis (Fin d) F E) (N : ℕ),
    MeasurableSet {X : Fin 1 → Fin M → AF F ⊗[F] E | ∀ v, projV v (projFin X) ∈
      {X : (Fin 1 → Fin M → Fv F v ⊗[F] E) | (fun p i => (N : Fv F v ⊗[F] E) * X p i) ∈ latV b v}} := by
  intro F E _ _ _ _ _ σ hσ d M b N
  obtain ⟨⟨h1, h2, h3⟩, -⟩ := _root_.GlobalTheory.CompanionTheory.AdeleTop.adele_top F
  obtain ⟨hR, -, -, -, -, -, -, hB, -, -⟩ := _root_.GlobalTheory.CompanionTheory.SW.TopK.topTens_props F E σ hσ (AF F)
  have hO := (_root_.GlobalTheory.CompanionTheory.SW.MeasProj.proj_props F E σ hσ d b 1 M).2.2.2.2.1 ∅
  have := hB 1 M
  have hc : Continuous (fun (X : Fin 1 → Fin M → AF F ⊗[F] E) (p : Fin 1) (i : Fin M) =>
      (N : AF F ⊗[F] E) * X p i) := by
    fun_prop
  have key : {X : Fin 1 → Fin M → AF F ⊗[F] E | ∀ v, projV v (projFin X) ∈
      {X : (Fin 1 → Fin M → Fv F v ⊗[F] E) | (fun p i => (N : Fv F v ⊗[F] E) * X p i) ∈ latV b v}} =
      (fun (X : Fin 1 → Fin M → AF F ⊗[F] E) (p : Fin 1) (i : Fin M) =>
        (N : AF F ⊗[F] E) * X p i) ⁻¹' intOff b ∅ := by
    ext X
    simp only [Set.mem_ofPred_eq, Set.mem_preimage, intOff, Finset.notMem_empty, not_false_eq_true,
      forall_const]
    refine forall_congr' fun v => ?_
    have : projV v (projFin (fun (p : Fin 1) (i : Fin M) => (N : AF F ⊗[F] E) * X p i)) =
        fun p i => (N : Fv F v ⊗[F] E) * projV v (projFin X) p i := by
      funext p i
      simp only [projV, projFin, map_mul, map_natCast]
    rw [this]
  rw [key]
  exact (hO.preimage hc).measurableSet

end GlobalTheory.CompanionTheory.SW.BB
