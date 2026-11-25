module

public import Formalism.UnipotentAdelicQuotients.SWXSDefs
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.TensorLocallyCompactRing
public import Formalism.LocalRingCardinality.SpanPowerMembership.LocAtA
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.IntegralAlmostAllPlaces
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.IsSquareOfValuedSubOneLt
public import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelicTupleLocalGlobalProperties
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ContDiffOnChartGlobalWhittakerCoefficient
public import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.HypJ
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelesLocallyCompactSecondCountable
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelicUnitaryGroupLocallyCompact
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GramOrbitCompactRepresentative
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HyperbolicAndBlockOneNondegenerate

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ArchimedeanPrimitiveVectorCompactRescale, CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.LocalPrimitiveVectorCompactRescale, CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.PrimitiveVectorLatticeRescaleAlmostAll, CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelicPrimitiveVectorCompactRescale, CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HyperbolicUnitaryStabilizerCocompact

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ArchimedeanPrimitiveVectorCompactRescale =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ArchimedeanPrimitiveVectorCompactRescale", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.SWXSDefs\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.TensorLocallyCompactRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.SW.PrimInf

open HeckeCharacterZeroLocus.SiegelWeilU GlobalTheory.CompanionTheory.SW NumberField IsDedekindDomain MeasureTheory Topology
open scoped TensorProduct ENNReal NNReal Matrix

theorem reduce_of_equiv {K : Type} [CommRing K] [TopologicalSpace K] {W : Type} [Fintype W]
    (Φ : K ≃+* (W → ℂ)) (hΦ : IsHomeomorph Φ) (M : ℕ) :
    ∃ Ω : Set (Fin 1 → Fin M → K), IsCompact Ω ∧ ∀ y : Fin 1 → Fin M → K,
      (∃ z : Fin M → K, z ⬝ᵥ y 0 = 1) →
      ∃ (a : Kˣ) (z : Fin 1 → Fin M → K), (a : K) • y ∈ Ω ∧ z ∈ Ω ∧ z 0 ⬝ᵥ ((a : K) • y) 0 = 1 := by
  classical
  let e : K ≃ₜ (W → ℂ) := hΦ.homeomorph
  let H : (Fin 1 → Fin M → K) ≃ₜ (Fin 1 → Fin M → W → ℂ) :=
    Homeomorph.piCongrRight fun _ => Homeomorph.piCongrRight fun _ => e
  let P : Set (Fin 1 → Fin M → W → ℂ) :=
    Set.pi Set.univ fun _ => Set.pi Set.univ fun _ => Set.pi Set.univ fun _ => Metric.closedBall 0 1
  have hP : IsCompact P :=
    isCompact_univ_pi fun _ => isCompact_univ_pi fun _ => isCompact_univ_pi fun _ =>
      isCompact_closedBall 0 1
  have hmem : ∀ y, y ∈ H ⁻¹' P ↔ ∀ a i w, ‖Φ (y a i) w‖ ≤ 1 := by
    intro y
    simp only [Set.mem_preimage, P, Set.mem_pi, Set.mem_univ, true_imp_iff, mem_closedBall_zero_iff]
    rfl
  refine ⟨H ⁻¹' P, H.isCompact_preimage.mpr hP, ?_⟩
  rintro y ⟨z₀, hz₀⟩
  have hsum : ∀ w, ∑ i, Φ (z₀ i) w * Φ (y 0 i) w = 1 := by
    intro w
    have := congrFun (congrArg Φ hz₀) w

    simpa [dotProduct, map_sum, Finset.sum_apply] using this
  have hmax : ∀ w, ∃ i, (∀ j, ‖Φ (y 0 j) w‖ ≤ ‖Φ (y 0 i) w‖) ∧ Φ (y 0 i) w ≠ 0 := by
    intro w
    obtain ⟨i₀, hi₀⟩ : ∃ i, Φ (y 0 i) w ≠ 0 := by
      by_contra hall
      push_neg at hall
      have := hsum w
      simp [hall] at this
    haveI : Nonempty (Fin M) := ⟨i₀⟩
    obtain ⟨i, hi⟩ := Finite.exists_max fun j => ‖Φ (y 0 j) w‖
    refine ⟨i, hi, fun h0 => hi₀ ?_⟩
    have := hi i₀
    rw [h0, norm_zero] at this
    exact norm_le_zero_iff.mp this
  choose I hI hI0 using hmax
  let u : W → ℂ := fun w => Φ (y 0 (I w)) w
  have hu : ∀ w, u w ≠ 0 := hI0
  let a : Kˣ :=
    { val := Φ.symm fun w => (u w)⁻¹
      inv := Φ.symm u
      val_inv := by
        apply Φ.injective
        funext w
        simp [hu w]
      inv_val := by
        apply Φ.injective
        funext w
        simp [hu w] }
  have hΦa : ∀ w, Φ (a : K) w = (u w)⁻¹ := fun w => by simp [a]
  let z : Fin 1 → Fin M → K := fun _ i => Φ.symm fun w => if I w = i then 1 else 0
  have hΦz : ∀ b i w, Φ (z b i) w = if I w = i then 1 else 0 := fun b i w => by simp [z]
  refine ⟨a, z, ?_, ?_, ?_⟩
  · rw [hmem]
    intro b i w
    obtain rfl : b = 0 := Subsingleton.elim _ _
    have : Φ (((a : K) • y) 0 i) w = (u w)⁻¹ * Φ (y 0 i) w := by
      simp [hΦa]
    rw [this, norm_mul, norm_inv]
    have hpos : 0 < ‖u w‖ := norm_pos_iff.mpr (hu w)
    rw [inv_mul_le_iff₀ hpos, mul_one]
    exact hI w i
  · rw [hmem]
    intro b i w
    rw [hΦz b i w]
    split_ifs <;> simp
  · apply Φ.injective
    funext w
    have h1 : ∀ i, Φ (z 0 i) w * Φ (((a : K) • y) 0 i) w =
        if I w = i then (u w)⁻¹ * Φ (y 0 i) w else 0 := by
      intro i
      have : Φ (((a : K) • y) 0 i) w = (u w)⁻¹ * Φ (y 0 i) w := by simp [hΦa]
      rw [this, hΦz 0 i w]
      split_ifs <;> simp

    simp only [dotProduct, map_sum, Finset.sum_apply, map_mul, Pi.mul_apply, map_one, Pi.one_apply]
    rw [Finset.sum_congr rfl fun i _ => h1 i]
    simp only [Finset.sum_ite_eq, Finset.mem_univ, if_true]
    exact inv_mul_cancel₀ (hu w)

section

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem exists_delta (σ : E →ₐ[F] E) (h : IsCMExt F E σ) : ∃ δ : E, σ δ = -δ ∧ δ ≠ 0 := by
  obtain ⟨-, hC, -, hτ⟩ := h
  let τ₀ : E →+* ℂ := (IsAlgClosed.lift : E →ₐ[ℚ] ℂ).toRingHom
  have hnr : ¬ ComplexEmbedding.IsReal τ₀ := fun hr =>
    InfinitePlace.not_isReal_iff_isComplex.mpr (hC.isComplex (InfinitePlace.mk τ₀))
      (InfinitePlace.isReal_mk_iff.mpr hr)
  obtain ⟨x, hx⟩ : ∃ x, σ x ≠ x := by
    by_contra hall
    push_neg at hall
    apply hnr
    rw [ComplexEmbedding.isReal_iff]
    ext x
    rw [ComplexEmbedding.conjugate_coe_eq]
    have := hτ τ₀ x
    rw [hall x] at this
    exact this.symm
  have hσσ : ∀ x, σ (σ x) = x := fun x => τ₀.injective (by rw [hτ, hτ, star_star])
  refine ⟨x - σ x, by simp [hσσ], sub_ne_zero.mpr (Ne.symm hx)⟩

theorem exists_basis (σ : E →ₐ[F] E) (h : IsCMExt F E σ) {δ : E} (hδ : σ δ = -δ) (h0 : δ ≠ 0) :
    ∃ b : Module.Basis (Fin 2) F E, b 0 = 1 ∧ b 1 = δ := by
  have hli : LinearIndependent F ![(1 : E), δ] := by
    rw [LinearIndependent.pair_iff]
    intro s t hst
    have h2 : s • (1 : E) - t • δ = 0 := by
      have := congrArg σ.toLinearMap hst
      rw [map_add (f := _), LinearMap.map_smul, LinearMap.map_smul, map_zero] at this
      simp only [AlgHom.toLinearMap_apply, map_one, hδ, smul_neg] at this
      rwa [sub_eq_add_neg]
    have h3 : (2 * t) • δ = 0 := by
      have : (2 * t) • δ = (s • (1 : E) + t • δ) - (s • (1 : E) - t • δ) := by
        rw [mul_smul, two_smul]
        abel
      rw [this, hst, h2, sub_zero]
    have ht : t = 0 := by
      rcases smul_eq_zero.mp h3 with h4 | h4
      · simpa using h4
      · exact absurd h4 h0
    subst ht
    refine ⟨?_, rfl⟩
    simpa using hst
  have hcard : Fintype.card (Fin 2) = Module.finrank F E := by
    rw [h.2.2.1]
    rfl
  refine ⟨basisOfLinearIndependentOfCardEqFinrank hli hcard, ?_, ?_⟩
  · simp
  · simp

theorem exists_tau (w : InfinitePlace F) : ∃ τ : E →+* ℂ, τ.comp (algebraMap F E) = w.embedding := by
  letI : Algebra F ℂ := w.embedding.toAlgebra
  haveI : Module.Finite F E := Module.Finite.of_restrictScalars_finite ℚ F E
  refine ⟨(IsAlgClosed.lift : E →ₐ[F] ℂ).toRingHom, ?_⟩
  ext x
  exact (IsAlgClosed.lift : E →ₐ[F] ℂ).commutes x

end

section

variable {F : Type} [Field F] [NumberField F]

theorem exists_psi (ρ : ∀ w : InfinitePlace F, w.Completion ≃+* ℝ) (hρc : ∀ w, Continuous (ρ w))
    (hρs : ∀ w, Continuous (ρ w).symm) (t : InfinitePlace F → ℂ) (htre : ∀ w, (t w).re = 0)
    (htim : ∀ w, (t w).im ≠ 0) :
    ∃ Ψ : (Fin 2 → Ainf F) ≃ₜ (InfinitePlace F → ℂ),
      ∀ p w, Ψ p w = ((ρ w (p 0 w) : ℝ) : ℂ) + ((ρ w (p 1 w) : ℝ) : ℂ) * t w := by
  let inv : (InfinitePlace F → ℂ) → Fin 2 → Ainf F := fun z k =>
    if k = 0 then fun w => (ρ w).symm (z w).re else fun w => (ρ w).symm ((z w).im / (t w).im)
  have hinv0 : ∀ z w, inv z 0 w = (ρ w).symm (z w).re := fun z w => rfl
  have hinv1 : ∀ z w, inv z 1 w = (ρ w).symm ((z w).im / (t w).im) := fun z w => rfl
  let fwd : (Fin 2 → Ainf F) → InfinitePlace F → ℂ :=
    fun p w => ((ρ w (p 0 w) : ℝ) : ℂ) + ((ρ w (p 1 w) : ℝ) : ℂ) * t w
  have hre : ∀ p w, (fwd p w).re = ρ w (p 0 w) := fun p w => by
    simp [fwd, htre w]
  have him : ∀ p w, (fwd p w).im = ρ w (p 1 w) * (t w).im := fun p w => by
    simp [fwd]
  have hl : Function.LeftInverse inv fwd := by
    intro p
    funext k
    revert k
    rw [Fin.forall_fin_two]
    constructor
    · funext w
      rw [hinv0, hre, RingEquiv.symm_apply_apply]
    · funext w
      rw [hinv1, him, mul_div_cancel_right₀ _ (htim w), RingEquiv.symm_apply_apply]
  have hr : Function.RightInverse inv fwd := by
    intro z
    funext w
    apply Complex.ext
    · rw [hre, hinv0, RingEquiv.apply_symm_apply]
    · rw [him, hinv1, RingEquiv.apply_symm_apply, div_mul_cancel₀ _ (htim w)]
  have hc1 : Continuous fwd := by
    refine continuous_pi fun w => ?_
    have hc : ∀ k : Fin 2, Continuous fun p : Fin 2 → Ainf F => ((ρ w (p k w) : ℝ) : ℂ) := fun k =>
      Complex.continuous_ofReal.comp
        ((hρc w).comp ((continuous_apply w).comp (continuous_apply k)))
    exact (hc 0).add ((hc 1).mul continuous_const)
  have hc2 : Continuous inv := by
    refine continuous_pi fun k => ?_
    revert k
    rw [Fin.forall_fin_two]
    constructor
    · refine continuous_pi fun w => ?_
      exact (hρs w).comp (Complex.continuous_re.comp (continuous_apply w))
    · refine continuous_pi fun w => ?_
      exact (hρs w).comp ((Complex.continuous_im.comp (continuous_apply w)).div_const _)
  exact ⟨⟨⟨fwd, inv, hl, hr⟩, hc1, hc2⟩, fun _ _ => rfl⟩

end

section

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem exists_equiv (σ : E →ₐ[F] E) (h : IsCMExt F E σ) :
    ∃ Φ : (Ainf F ⊗[F] E) ≃+* (InfinitePlace F → ℂ), IsHomeomorph Φ := by
  obtain ⟨δ, hδ, hδ0⟩ := exists_delta σ h
  obtain ⟨b, hb0, hb1⟩ := exists_basis σ h hδ hδ0
  haveI hTR : IsTotallyReal F := h.1
  choose τ hτ using fun w : InfinitePlace F => exists_tau (E := E) w
  let ρ : ∀ w : InfinitePlace F, w.Completion ≃+* ℝ := fun w =>
    InfinitePlace.Completion.ringEquivRealOfIsReal (IsTotallyReal.isReal w)
  have hρc : ∀ w, Continuous (ρ w) := fun w =>
    (InfinitePlace.Completion.isometryEquivRealOfIsReal (IsTotallyReal.isReal w)).continuous
  have hρs : ∀ w, Continuous (ρ w).symm := fun w =>
    (InfinitePlace.Completion.isometryEquivRealOfIsReal (IsTotallyReal.isReal w)).symm.continuous
  have hρF : ∀ (w : InfinitePlace F) (x : F),
      ((ρ w (algebraMap F (Ainf F) x w) : ℝ) : ℂ) = τ w (algebraMap F E x) := by
    intro w x
    have h1 : τ w (algebraMap F E x) = w.embedding x := DFunLike.congr_fun (hτ w) x
    rw [h1, InfiniteAdeleRing.algebraMap_apply]
    simp only [ρ]
    rw [InfinitePlace.Completion.ringEquivRealOfIsReal_apply,
      InfinitePlace.Completion.extensionEmbeddingOfIsReal_apply]
    exact InfinitePlace.Completion.extensionEmbedding_coe w _
  let t : InfinitePlace F → ℂ := fun w => τ w δ
  have htre : ∀ w, (t w).re = 0 := by
    intro w
    have h1 : τ w (σ δ) = star (τ w δ) := h.2.2.2 (τ w) δ
    rw [hδ, map_neg] at h1
    have h2 := congrArg Complex.re h1
    simp only [Complex.neg_re, Complex.star_def, Complex.conj_re] at h2
    simp only [t]
    linarith
  have htim : ∀ w, (t w).im ≠ 0 := by
    intro w h0
    exact hδ0 ((map_eq_zero (τ w)).mp (Complex.ext (htre w) h0))
  let f : Ainf F →+* (InfinitePlace F → ℂ) :=
    Pi.ringHom fun w => (Complex.ofRealHom.comp (ρ w).toRingHom).comp (Pi.evalRingHom _ w)
  let g : E →+* (InfinitePlace F → ℂ) := Pi.ringHom τ
  letI alg : Algebra F (InfinitePlace F → ℂ) := (g.comp (algebraMap F E)).toAlgebra
  let fA : Ainf F →ₐ[F] (InfinitePlace F → ℂ) :=
    { toRingHom := f
      commutes' := fun x => funext fun w => hρF w x }
  let gA : E →ₐ[F] (InfinitePlace F → ℂ) :=
    { toRingHom := g
      commutes' := fun _ => rfl }
  let Φ₀ : Ainf F ⊗[F] E →ₐ[F] (InfinitePlace F → ℂ) := Algebra.TensorProduct.productMap fA gA
  obtain ⟨Ψ, hΨ⟩ := exists_psi ρ hρc hρs t htre htim
  let C : (Ainf F ⊗[F] E) ≃ₜ (Fin 2 → Ainf F) := TopK.coordHomeo (Ainf F) b
  have hC : ∀ x k, C x k = (Algebra.TensorProduct.basis (Ainf F) b).repr x k := fun _ _ => rfl
  have hform : ∀ a c : Ainf F, Φ₀ (a ⊗ₜ[F] (1 : E) + c ⊗ₜ[F] δ) =
      fun w => ((ρ w (a w) : ℝ) : ℂ) + ((ρ w (c w) : ℝ) : ℂ) * t w := by
    intro a c
    funext w
    rw [map_add (f := _)]
    simp only [Φ₀, Algebra.TensorProduct.productMap_apply_tmul]
    show ((ρ w (a w) : ℝ) : ℂ) * τ w 1 + ((ρ w (c w) : ℝ) : ℂ) * τ w δ = _
    rw [map_one, mul_one]
  have hΦ : ⇑Φ₀ = Ψ ∘ C := by
    funext x
    have hx : x = (C x 0) ⊗ₜ[F] (1 : E) + (C x 1) ⊗ₜ[F] δ := by
      conv_lhs => rw [← (Algebra.TensorProduct.basis (Ainf F) b).sum_repr x]
      rw [Fin.sum_univ_two, Algebra.TensorProduct.basis_apply, Algebra.TensorProduct.basis_apply, hb0, hb1,
        hC, hC, TensorProduct.smul_tmul', TensorProduct.smul_tmul', smul_eq_mul, smul_eq_mul, mul_one, mul_one]
    calc Φ₀ x = Φ₀ ((C x 0) ⊗ₜ[F] (1 : E) + (C x 1) ⊗ₜ[F] δ) := congrArg Φ₀ hx
      _ = Ψ (C x) := (hform _ _).trans (funext fun w => (hΨ (C x) w).symm)
  have hhom : IsHomeomorph Φ₀ := by
    rw [hΦ]
    exact (C.trans Ψ).isHomeomorph
  exact ⟨RingEquiv.ofBijective (Φ₀ : Ainf F ⊗[F] E →+* (InfinitePlace F → ℂ)) hhom.bijective, hhom⟩

end

theorem unimodular_mod_units_inf : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (M : ℕ), ∃ Ω : Set (Fin 1 → Fin M → Ainf F ⊗[F] E), IsCompact Ω ∧ ∀ y : Fin 1 → Fin M → Ainf F ⊗[F] E, (∃ z : Fin M → Ainf F ⊗[F] E, z ⬝ᵥ y 0 = 1) → ∃ (a : (Ainf F ⊗[F] E)ˣ) (z : Fin 1 → Fin M → Ainf F ⊗[F] E), (a : Ainf F ⊗[F] E) • y ∈ Ω ∧ z ∈ Ω ∧ z 0 ⬝ᵥ ((a : Ainf F ⊗[F] E) • y) 0 = 1 := by
  intro F E _ _ _ _ _ σ h M
  obtain ⟨Φ, hΦ⟩ := exists_equiv σ h
  exact reduce_of_equiv Φ hΦ M

end GlobalTheory.CompanionTheory.SW.PrimInf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ArchimedeanPrimitiveVectorCompactRescale =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.LocalPrimitiveVectorCompactRescale =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.LocalPrimitiveVectorCompactRescale", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.SWXSDefs\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.TensorLocallyCompactRing\npublic import Formalism.LocalRingCardinality.SpanPowerMembership.LocAtA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.SW.PrimV

open HeckeCharacterZeroLocus.SiegelWeilU GlobalTheory.CompanionTheory.SW NumberField IsDedekindDomain MeasureTheory Topology
open scoped TensorProduct ENNReal NNReal Matrix

def UniP (K : Type*) [CommRing K] [TopologicalSpace K] (M : ℕ) : Prop :=
  ∃ Ω : Set (Fin M → K), IsCompact Ω ∧ ∀ y : Fin M → K, (∃ z : Fin M → K, z ⬝ᵥ y = 1) →
    ∃ (a : Kˣ) (z : Fin M → K), (a : K) • y ∈ Ω ∧ z ∈ Ω ∧ z ⬝ᵥ ((a : K) • y) = 1

theorem primitiveCompact_of_multiplicative {K : Type*} [CommRing K] [Nontrivial K] [TopologicalSpace K] (M : ℕ) (ν : K → ℝ)
    (h0 : ν 0 = 0) (h1 : ν 1 = 1) (hm : ∀ x y, ν (x * y) = ν x * ν y) (hn : ∀ x, 0 ≤ ν x)
    (hu : ∀ x, x ≠ 0 → IsUnit x ∧ 0 < ν x) (hc : IsCompact {x | ν x ≤ 1}) : UniP K M := by
  refine ⟨Set.pi Set.univ fun _ => {x | ν x ≤ 1}, isCompact_univ_pi fun _ => hc, ?_⟩
  rintro y ⟨z, hz⟩
  have hex : ∃ j, y j ≠ 0 := by
    by_contra hcon
    push_neg at hcon
    have hy0 : y = 0 := funext hcon
    rw [hy0, dotProduct_zero] at hz
    exact zero_ne_one hz
  obtain ⟨j, hj⟩ := hex
  haveI : Nonempty (Fin M) := ⟨j⟩
  obtain ⟨i, hi⟩ := Finite.exists_max (fun k => ν (y k))
  have hyi : y i ≠ 0 := by
    intro h
    have h2 := hi j
    simp only [h, h0] at h2
    exact absurd (hu _ hj).2 (not_lt.2 h2)
  obtain ⟨w, hw⟩ := (hu _ hyi).1
  have hwi : ((w⁻¹ : Kˣ) : K) * y i = 1 := by rw [← hw]; exact Units.inv_mul w
  have hνw : ν ((w⁻¹ : Kˣ) : K) * ν (y i) = 1 := by rw [← hm, hwi, h1]
  refine ⟨w⁻¹, Pi.single i 1, ?_, ?_, ?_⟩
  · intro k _
    show ν ((((w⁻¹ : Kˣ) : K) • y) k) ≤ 1
    rw [Pi.smul_apply, smul_eq_mul, hm, ← hνw]
    exact mul_le_mul_of_nonneg_left (hi k) (hn _)
  · intro k _
    show ν ((Pi.single i (1 : K) : Fin M → K) k) ≤ 1
    by_cases hk : k = i
    · subst hk; simp [h1]
    · simp [Pi.single_eq_of_ne hk, h0]
  · simp [hwi]

theorem primitiveCompact_prod {A B : Type*} [CommRing A] [CommRing B] [TopologicalSpace A] [TopologicalSpace B] {M : ℕ}
    (hA : UniP A M) (hB : UniP B M) : UniP (A × B) M := by
  obtain ⟨ΩA, cA, pA⟩ := hA
  obtain ⟨ΩB, cB, pB⟩ := hB
  let f : (Fin M → A) × (Fin M → B) → (Fin M → A × B) := fun p i => (p.1 i, p.2 i)
  have hf : Continuous f := continuous_pi fun i =>
    ((continuous_apply i).comp continuous_fst).prodMk ((continuous_apply i).comp continuous_snd)
  refine ⟨f '' (ΩA ×ˢ ΩB), (cA.prod cB).image hf, ?_⟩
  rintro y ⟨z, hz⟩
  have h1 : (fun i => (z i).1) ⬝ᵥ (fun i => (y i).1) = 1 := by
    have := congrArg Prod.fst hz
    simpa [dotProduct, Prod.fst_sum] using this
  have h2 : (fun i => (z i).2) ⬝ᵥ (fun i => (y i).2) = 1 := by
    have := congrArg Prod.snd hz
    simpa [dotProduct, Prod.snd_sum] using this
  obtain ⟨a, za, m1, m2, m3⟩ := pA _ ⟨_, h1⟩
  obtain ⟨b, zb, n1, n2, n3⟩ := pB _ ⟨_, h2⟩
  have hab : ((MulEquiv.prodUnits.symm (a, b) : (A × B)ˣ) : A × B) = ((a : A), (b : B)) := rfl
  refine ⟨MulEquiv.prodUnits.symm (a, b), fun i => (za i, zb i),
    ⟨(_, _), ⟨m1, n1⟩, ?_⟩, ⟨(za, zb), ⟨m2, n2⟩, rfl⟩, ?_⟩
  · ext i <;> simp [f, hab]
  · refine Prod.ext ?_ ?_
    · simpa [dotProduct, Prod.fst_sum, hab] using m3
    · simpa [dotProduct, Prod.snd_sum, hab] using n3

theorem primitiveCompact_of_ringEquiv {A B : Type*} [CommRing A] [CommRing B] [TopologicalSpace A] [TopologicalSpace B] {M : ℕ}
    (e : A ≃+* B) (hc : Continuous e.symm) (h : UniP B M) : UniP A M := by
  obtain ⟨Ω, c, p⟩ := h
  refine ⟨(fun w i => e.symm (w i)) '' Ω,
    c.image (continuous_pi fun i => hc.comp (continuous_apply i)), ?_⟩
  rintro y ⟨z, hz⟩
  have h1 : (fun i => e (z i)) ⬝ᵥ (fun i => e (y i)) = 1 := by
    have := congrArg e hz

    simpa [dotProduct, map_sum, map_mul] using this
  obtain ⟨a, w, m1, m2, m3⟩ := p _ ⟨_, h1⟩
  refine ⟨Units.map (e.symm : B →* A) a, fun i => e.symm (w i), ⟨_, m1, ?_⟩, ⟨w, m2, rfl⟩, ?_⟩
  · ext i; simp
  · apply e.injective

    simpa [dotProduct, map_sum, map_mul] using m3

section Quad

variable {L K : Type*} [Field L] [CommRing K] [Algebra L K]

def gg (d : K) (p : L × L) : K := p.1 • (1 : K) + p.2 • d

theorem gg_mul {d : K} {D : L} (hd : d * d = algebraMap L K D) (p q : L × L) :
    gg d p * gg d q = gg d (p.1 * q.1 + D * (p.2 * q.2), p.1 * q.2 + p.2 * q.1) := by
  simp only [gg, Algebra.smul_def, map_add (f := _), map_mul, mul_one]
  linear_combination (algebraMap L K p.2 * algebraMap L K q.2) * hd

variable (bs : Module.Basis (Fin 2) L K)

def rr (x : K) : L × L := (bs.repr x 0, bs.repr x 1)

theorem gg_rr (h0 : bs 0 = 1) (x : K) : gg (bs 1) (rr bs x) = x := by
  have := bs.sum_repr x
  rw [Fin.sum_univ_two, h0] at this
  exact this

theorem rr_gg (h0 : bs 0 = 1) (p : L × L) : rr bs (gg (bs 1) p) = p := by
  refine Prod.ext ?_ ?_ <;> simp [rr, gg, ← h0]

theorem rr_mul (h0 : bs 0 = 1) {D : L} (hd : bs 1 * bs 1 = algebraMap L K D) (x y : K) :
    rr bs (x * y) = ((rr bs x).1 * (rr bs y).1 + D * ((rr bs x).2 * (rr bs y).2),
      (rr bs x).1 * (rr bs y).2 + (rr bs x).2 * (rr bs y).1) := by
  conv_lhs => rw [← gg_rr bs h0 x, ← gg_rr bs h0 y, gg_mul hd, rr_gg bs h0]

theorem rr_zero : rr bs (0 : K) = 0 := by simp [rr]

theorem rr_one (h0 : bs 0 = 1) : rr bs (1 : K) = (1, 0) := by
  rw [← h0]; simp [rr]

theorem rr_add (x y : K) : rr bs (x + y) = rr bs x + rr bs y := by simp [rr]

theorem nontrivial_of_basis (h0 : bs 0 = 1) : Nontrivial K := by
  refine ⟨⟨0, 1, fun h => ?_⟩⟩
  have := rr_one bs h0
  rw [← h, rr_zero] at this
  simpa using congrArg Prod.fst this

end Quad

section Norm

variable {L K : Type*} [NormedField L] [ProperSpace L]

def Nf (D : L) (p : L × L) : L := p.1 ^ 2 - D * p.2 ^ 2

theorem Nf_mul (D : L) (p q : L × L) :
    Nf D (p.1 * q.1 + D * (p.2 * q.2), p.1 * q.2 + p.2 * q.1) = Nf D p * Nf D q := by
  simp only [Nf]; ring

theorem Nf_ne {D : L} (hD : ∀ s, s * s ≠ D) {p : L × L} (hp : p ≠ 0) : Nf D p ≠ 0 := by
  intro h
  simp only [Nf] at h
  by_cases hc : p.2 = 0
  · apply hp
    refine Prod.ext ?_ hc
    rw [hc] at h
    simpa using h
  · apply hD (p.1 / p.2)
    field_simp
    linear_combination h

theorem compact_Nf {D : L} (hD : ∀ s, s * s ≠ D) : IsCompact {p : L × L | ‖Nf D p‖ ≤ 1} := by
  have hcont : Continuous fun p : L × L => ‖Nf D p‖ := by
    unfold Nf; fun_prop
  have hs : IsCompact (Metric.sphere (0 : L × L) 1) := isCompact_sphere _ _
  have hne : (Metric.sphere (0 : L × L) 1).Nonempty := ⟨(1, 0), by simp [Prod.norm_def]⟩
  obtain ⟨q0, hq0, hmin⟩ := hs.exists_isMinOn hne hcont.continuousOn
  have hq00 : q0 ≠ 0 := by
    rintro rfl
    simp at hq0
  have hm : 0 < ‖Nf D q0‖ := norm_pos_iff.2 (Nf_ne hD hq00)
  refine Metric.isCompact_of_isClosed_isBounded (isClosed_le hcont continuous_const) ?_
  refine (Metric.isBounded_closedBall (x := (0 : L × L)) (r := 1 + 1 / ‖Nf D q0‖)).subset ?_
  intro p hp
  rw [mem_closedBall_zero_iff]
  by_cases hp0 : p = 0
  · subst hp0
    simp only [norm_zero]
    positivity
  obtain ⟨w, hw⟩ : ∃ w : L, ‖w‖ = ‖p‖ := by
    rw [Prod.norm_def]
    rcases max_choice ‖p.1‖ ‖p.2‖ with h | h
    · exact ⟨p.1, h.symm⟩
    · exact ⟨p.2, h.symm⟩
  have hpn : 0 < ‖p‖ := norm_pos_iff.2 hp0
  have hw0 : w ≠ 0 := by
    rintro rfl
    simp at hw
    exact hp0 (norm_eq_zero.1 hw.symm)
  have hq : w⁻¹ • p ∈ Metric.sphere (0 : L × L) 1 := by
    rw [mem_sphere_zero_iff_norm, norm_smul, norm_inv, hw]
    field_simp
  have h1 : ‖Nf D q0‖ ≤ ‖Nf D (w⁻¹ • p)‖ := hmin hq
  have h2 : Nf D p = w ^ 2 * Nf D (w⁻¹ • p) := by
    simp only [Nf, Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
    field_simp
  have h3 : ‖p‖ ^ 2 * ‖Nf D q0‖ ≤ 1 := by
    have h4 : ‖Nf D p‖ ≤ 1 := hp
    rw [h2, norm_mul, norm_pow, hw] at h4
    exact (mul_le_mul_of_nonneg_left h1 (by positivity)).trans h4
  have h5 : ‖p‖ ^ 2 ≤ 1 / ‖Nf D q0‖ := by
    rw [le_div_iff₀ hm]; exact h3
  have h6 : 0 < 1 / ‖Nf D q0‖ := by positivity
  by_cases h7 : ‖p‖ ≤ 1
  · linarith
  · push_neg at h7
    nlinarith

variable [CommRing K] [Algebra L K] [TopologicalSpace K] (bs : Module.Basis (Fin 2) L K)

theorem primitiveCompact_nonsplit (h0 : bs 0 = 1) {D : L} (hd : bs 1 * bs 1 = algebraMap L K D)
    (hD : ∀ s, s * s ≠ D) (hg : Continuous (gg (bs 1) : L × L → K)) (M : ℕ) : UniP K M := by
  haveI := nontrivial_of_basis bs h0
  refine primitiveCompact_of_multiplicative M (fun x => ‖Nf D (rr bs x)‖) ?_ ?_ ?_ (fun _ => norm_nonneg _) ?_ ?_
  · simp [rr_zero, Nf]
  · simp [rr_one bs h0, Nf]
  · intro x y
    simp only [rr_mul bs h0 hd, Nf_mul, norm_mul]
  · intro x hx
    show IsUnit x ∧ 0 < ‖Nf D (rr bs x)‖
    have hxg := gg_rr bs h0 x
    have hp : rr bs x ≠ 0 := by
      intro h
      apply hx
      rw [← hxg, h]
      simp [gg]
    have hn := Nf_ne hD hp
    generalize rr bs x = p at hxg hp hn ⊢
    refine ⟨isUnit_iff_exists_inv.2 ⟨gg (bs 1) (p.1 / Nf D p, -p.2 / Nf D p), ?_⟩, norm_pos_iff.2 hn⟩
    rw [← hxg, gg_mul hd]
    have e1 : p.1 * (p.1 / Nf D p) + D * (p.2 * (-p.2 / Nf D p)) = 1 := by
      field_simp
      simp only [Nf]
      ring
    have e2 : p.1 * (-p.2 / Nf D p) + p.2 * (p.1 / Nf D p) = 0 := by
      field_simp
      ring
    simp only [e1, e2]
    simp [gg]
  · have : {x : K | ‖Nf D (rr bs x)‖ ≤ 1} = gg (bs 1) '' {p : L × L | ‖Nf D p‖ ≤ 1} := by
      ext x
      constructor
      · intro hx
        exact ⟨rr bs x, hx, gg_rr bs h0 x⟩
      · rintro ⟨p, hp, rfl⟩
        show ‖Nf D (rr bs (gg (bs 1) p))‖ ≤ 1
        rw [rr_gg bs h0]
        exact hp
    rw [this]
    exact (compact_Nf hD).image hg

theorem primitiveCompact_normedField (M : ℕ) : UniP L M := by
  refine primitiveCompact_of_multiplicative M (fun x => ‖x‖) norm_zero norm_one norm_mul (fun _ => norm_nonneg _)
    (fun x hx => ⟨isUnit_iff_ne_zero.2 hx, norm_pos_iff.2 hx⟩) ?_
  have : {x : L | ‖x‖ ≤ 1} = Metric.closedBall 0 1 := by
    ext x; simp
  rw [this]
  exact isCompact_closedBall _ _

theorem primitiveCompact_split (h0 : bs 0 = 1) {D : L} (hd : bs 1 * bs 1 = algebraMap L K D) {s : L} (hs : s ≠ 0)
    (hD : s * s = D) (h2 : (2 : L) ≠ 0) (hg : Continuous (gg (bs 1) : L × L → K)) (M : ℕ) : UniP K M := by
  let e : K ≃+* L × L :=
    { toFun := fun x => ((rr bs x).1 + s * (rr bs x).2, (rr bs x).1 - s * (rr bs x).2)
      invFun := fun w => gg (bs 1) ((w.1 + w.2) / 2, (w.1 - w.2) / (2 * s))
      left_inv := fun x => by
        have e1 : ((rr bs x).1 + s * (rr bs x).2 + ((rr bs x).1 - s * (rr bs x).2)) / 2 = (rr bs x).1 := by
          field_simp
          ring
        have e2 : ((rr bs x).1 + s * (rr bs x).2 - ((rr bs x).1 - s * (rr bs x).2)) / (2 * s) = (rr bs x).2 := by
          field_simp
          ring
        simp only [e1, e2]
        exact gg_rr bs h0 x
      right_inv := fun w => by
        simp only [rr_gg bs h0]
        refine Prod.ext ?_ ?_
        · simp only
          field_simp
          ring
        · simp only
          field_simp
          ring
      map_mul' := fun x y => by
        simp only [rr_mul bs h0 hd, ← hD]
        refine Prod.ext ?_ ?_
        · simp only [Prod.fst_mul]
          ring
        · simp only [Prod.snd_mul]
          ring
      map_add' := fun x y => by
        simp only [rr_add]
        refine Prod.ext ?_ ?_
        · simp only [Prod.fst_add, Prod.snd_add]
          ring
        · simp only [Prod.fst_add, Prod.snd_add]
          ring }
  refine primitiveCompact_of_ringEquiv e ?_ (primitiveCompact_prod (primitiveCompact_normedField M) (primitiveCompact_normedField M))
  show Continuous fun w : L × L => gg (bs 1) ((w.1 + w.2) / 2, (w.1 - w.2) / (2 * s))
  exact hg.comp (by fun_prop)

end Norm

section Delta

variable {F E : Type*} [Field F] [Field E] [Algebra F E]

theorem basis_of_not_mem (h2 : Module.finrank F E = 2) {d : E} (hd : d ∉ (algebraMap F E).range) :
    ∃ b : Module.Basis (Fin 2) F E, b 0 = 1 ∧ b 1 = d := by
  have hli : LinearIndependent F ![(1 : E), d] := by
    rw [LinearIndependent.pair_iff]
    intro s t hst
    have ht : t = 0 := by
      by_contra ht
      apply hd
      refine ⟨-(s / t), ?_⟩
      have hht : algebraMap F E t ≠ 0 := by simpa using ht
      simp only [Algebra.smul_def, mul_one] at hst
      have h3 : algebraMap F E t * (algebraMap F E s / algebraMap F E t) = algebraMap F E s := by
        field_simp
      apply mul_left_cancel₀ hht
      rw [map_neg, map_div₀, mul_neg, h3]
      linear_combination -hst
    subst ht
    simpa using hst
  refine ⟨basisOfLinearIndependentOfCardEqFinrank hli (by simp [h2]), ?_, ?_⟩ <;> simp

theorem exists_delta [CharZero F] (h2 : Module.finrank F E = 2) :
    ∃ (b : Module.Basis (Fin 2) F E) (Δ : F), b 0 = 1 ∧ b 1 * b 1 = algebraMap F E Δ ∧ Δ ≠ 0 := by
  haveI : FiniteDimensional F E := Module.finite_of_finrank_pos (by omega)
  obtain ⟨x, hx⟩ : ∃ x : E, x ∉ (algebraMap F E).range := by
    by_contra hcon
    push_neg at hcon
    have : (⊥ : Subalgebra F E) = ⊤ := by
      ext y
      simpa [Algebra.mem_bot] using hcon y
    have h1 := Subalgebra.bot_eq_top_iff_finrank_eq_one.1 this
    omega
  obtain ⟨b0, h00, h01⟩ := basis_of_not_mem h2 hx
  have hxx : x * x = algebraMap F E (b0.repr (x * x) 0) + algebraMap F E (b0.repr (x * x) 1) * x := by
    have := b0.sum_repr (x * x)
    rw [Fin.sum_univ_two, h00, h01] at this
    simp only [Algebra.smul_def, mul_one] at this
    exact this.symm
  set q := b0.repr (x * x) 0
  set p := b0.repr (x * x) 1
  have hδ : x - algebraMap F E (p / 2) ∉ (algebraMap F E).range := by
    rintro ⟨c, hc⟩
    apply hx
    refine ⟨c + p / 2, ?_⟩
    rw [map_add (f := _), hc]
    ring
  obtain ⟨b, hb0, hb1⟩ := basis_of_not_mem h2 hδ
  have h2F : algebraMap F E 2 = 2 := map_ofNat _ 2
  have hsq : b 1 * b 1 = algebraMap F E (q + p / 2 * (p / 2)) := by
    have hp2 : algebraMap F E p = 2 * algebraMap F E (p / 2) := by
      rw [← h2F, ← map_mul]
      congr 1
      ring
    rw [hb1, map_add (f := _), map_mul]
    linear_combination hxx + x * hp2
  refine ⟨b, q + p / 2 * (p / 2), hb0, hsq, fun h0 => ?_⟩
  rw [h0, map_zero, hb1] at hsq
  have : x - algebraMap F E (p / 2) = 0 := mul_self_eq_zero.1 hsq
  exact hδ ⟨0, by rw [this, map_zero]⟩

end Delta

theorem exists_compact_unimodular_vectors_mod_units : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (M : ℕ) (v : HeightOneSpectrum (𝓞 F)), ∃ Ω : Set (Fin 1 → Fin M → Fv F v ⊗[F] E), IsCompact Ω ∧ ∀ y : Fin 1 → Fin M → Fv F v ⊗[F] E, (∃ z : Fin M → Fv F v ⊗[F] E, z ⬝ᵥ y 0 = 1) → ∃ (a : (Fv F v ⊗[F] E)ˣ) (z : Fin 1 → Fin M → Fv F v ⊗[F] E), (a : Fv F v ⊗[F] E) • y ∈ Ω ∧ z ∈ Ω ∧ z 0 ⬝ᵥ ((a : Fv F v ⊗[F] E) • y) 0 = 1 := by
  intro F E _ _ _ _ _ σ hσ M v
  obtain ⟨b, Δ, hb0, hb1, hΔ⟩ := exists_delta (F := F) (E := E) hσ.2.2.1
  haveI hprop : ProperSpace (Fv F v) := Formalism.BasicNotions.Examples₂.LocF.proper v
  haveI hmt : IsModuleTopology (Fv F v) (Fv F v ⊗[F] E) := TopK.isModTop (F := F) (E := E) (Fv F v)
  haveI : ContinuousAdd (Fv F v ⊗[F] E) := IsModuleTopology.toContinuousAdd (Fv F v) _
  haveI : ContinuousSMul (Fv F v) (Fv F v ⊗[F] E) := IsModuleTopology.toContinuousSMul (Fv F v) _
  let bs : Module.Basis (Fin 2) (Fv F v) (Fv F v ⊗[F] E) := Algebra.TensorProduct.basis (Fv F v) b
  have h0 : bs 0 = 1 := by
    simp [bs, Algebra.TensorProduct.basis_apply, hb0, Algebra.TensorProduct.one_def]
  have hd : bs 1 * bs 1 = algebraMap (Fv F v) (Fv F v ⊗[F] E) (algebraMap F (Fv F v) Δ) := by
    simp only [bs, Algebra.TensorProduct.basis_apply, Algebra.TensorProduct.tmul_mul_tmul, hb1, mul_one,
      Algebra.TensorProduct.algebraMap_apply, Algebra.algebraMap_eq_smul_one Δ, TensorProduct.smul_tmul,
      Algebra.algebraMap_self, RingHom.id_apply]
  have hg : Continuous (gg (bs 1) : Fv F v × Fv F v → Fv F v ⊗[F] E) := by
    unfold gg
    have c1 : Continuous fun p : Fv F v × Fv F v => p.1 • (1 : Fv F v ⊗[F] E) := by
      fun_prop
    have c2 : Continuous fun p : Fv F v × Fv F v => p.2 • bs 1 := by
      fun_prop
    exact c1.add c2
  have hU : UniP (Fv F v ⊗[F] E) M := by
    by_cases hsq : ∃ s, s * s = algebraMap F (Fv F v) Δ
    · obtain ⟨s, hs⟩ := hsq
      have hD0 : algebraMap F (Fv F v) Δ ≠ 0 := by simpa using hΔ
      have hs0 : s ≠ 0 := by
        rintro rfl
        exact hD0 (by rw [← hs, mul_zero])
      exact primitiveCompact_split bs h0 hd hs0 hs two_ne_zero hg M
    · push_neg at hsq
      exact primitiveCompact_nonsplit bs h0 hd hsq hg M
  obtain ⟨Ω, hc, hp⟩ := hU
  have hcw : Continuous (fun (w : Fin M → Fv F v ⊗[F] E) (_ : Fin 1) => w) :=
    continuous_pi fun _ => continuous_id
  refine ⟨(fun w _ => w) '' Ω, hc.image hcw, ?_⟩
  rintro y ⟨z, hz⟩
  obtain ⟨a, w, m1, m2, m3⟩ := hp (y 0) ⟨z, hz⟩
  refine ⟨a, fun _ => w, ⟨_, m1, ?_⟩, ⟨w, m2, rfl⟩, m3⟩
  funext i
  rw [Subsingleton.elim i 0]
  rfl

end GlobalTheory.CompanionTheory.SW.PrimV
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.LocalPrimitiveVectorCompactRescale =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.PrimitiveVectorLatticeRescaleAlmostAll =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.PrimitiveVectorLatticeRescaleAlmostAll", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.SWXSDefs\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.IntegralAlmostAllPlaces\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.IsSquareOfValuedSubOneLt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd\n\n"}
section -- clump:auto
@[expose] public section

open HeckeCharacterZeroLocus.SiegelWeilU GlobalTheory.CompanionTheory.SW NumberField IsDedekindDomain MeasureTheory Topology
open scoped TensorProduct ENNReal NNReal Matrix

noncomputable section

namespace GlobalTheory.CompanionTheory.SW.PrimGood

section Norm

variable {L Γ : Type} [Field L] [LinearOrderedCommGroupWithZero Γ] (w : Valuation L Γ)

theorem val_norm (hsq : ∀ x : L, w (x - 1) < 1 → IsSquare x) {Δ : L} (hΔ : w Δ = 1)
    (hn : ¬ IsSquare Δ) (a c : L) : w (a ^ 2 - Δ * c ^ 2) = max (w a) (w c) ^ 2 := by
  have ha2 : w (a ^ 2) = w a ^ 2 := map_pow _ _ _
  have hb2 : w (Δ * c ^ 2) = w c ^ 2 := by rw [map_mul, hΔ, one_mul, map_pow]
  rcases lt_trichotomy (w a) (w c) with h | h | h
  · have hlt : w (a ^ 2) < w (Δ * c ^ 2) := by
      rw [ha2, hb2]; exact pow_lt_pow_left₀ h zero_le two_ne_zero
    rw [w.map_sub_eq_of_lt_right hlt, hb2, max_eq_right h.le]
  · rw [← h, max_self]
    by_cases ha : a = 0
    · have hc : c = 0 := by
        rw [ha, map_zero] at h
        exact (Valuation.zero_iff w).1 h.symm
      simp [ha, hc]
    have ha0 : w a ≠ 0 := (Valuation.ne_zero_iff w).2 ha
    have hc : c ≠ 0 := by
      rintro rfl
      rw [map_zero] at h
      exact ha0 h
    have hle : w (a ^ 2 - Δ * c ^ 2) ≤ w a ^ 2 := by
      refine (w.map_sub _ _).trans (max_le ha2.le ?_)
      rw [hb2, h]
    rcases hle.lt_or_eq with hlt | heq
    · exfalso
      apply hn
      have e : Δ * (c / a) ^ 2 - 1 = -((a ^ 2 - Δ * c ^ 2) / a ^ 2) := by
        field_simp; ring
      have hs : IsSquare (Δ * (c / a) ^ 2) := by
        apply hsq
        rw [e, Valuation.map_neg, map_div₀, ha2, div_lt_one₀ (pow_pos (zero_lt_iff.2 ha0) 2)]
        exact hlt
      obtain ⟨r, hr⟩ := hs
      refine ⟨r * a / c, ?_⟩
      have : Δ = (Δ * (c / a) ^ 2) * (a / c) ^ 2 := by field_simp
      rw [this, hr]; ring
    · exact heq
  · have hlt : w (Δ * c ^ 2) < w (a ^ 2) := by
      rw [ha2, hb2]; exact pow_lt_pow_left₀ h zero_le two_ne_zero
    rw [w.map_sub_eq_of_lt_left hlt, ha2, max_eq_left h.le]

end Norm

section Quad

variable {L K : Type} [Field L] [CommRing K] [Algebra L K] (B : Module.Basis (Fin 2) L K)

theorem repr_coord (s t : L) :
    B.repr (s • B 0 + t • B 1) 0 = s ∧ B.repr (s • B 0 + t • B 1) 1 = t := by
  simp

variable {B} {Δ : L}

theorem coord_eq (h0 : B 0 = 1) (x : K) :
    x = algebraMap L K (B.repr x 0) + algebraMap L K (B.repr x 1) * B 1 := by
  have h := (B.sum_repr x).symm
  rw [Fin.sum_univ_two, h0, Algebra.smul_def, Algebra.smul_def, mul_one] at h
  exact h

theorem repr_one (h0 : B 0 = 1) : B.repr 1 0 = 1 ∧ B.repr 1 1 = 0 := by
  rw [← h0]; simp

theorem repr_mul (h0 : B 0 = 1) (h1 : B 1 * B 1 = algebraMap L K Δ) (x y : K) :
    B.repr (x * y) 0 = B.repr x 0 * B.repr y 0 + Δ * (B.repr x 1 * B.repr y 1) ∧
    B.repr (x * y) 1 = B.repr x 0 * B.repr y 1 + B.repr x 1 * B.repr y 0 := by
  have hx := coord_eq h0 x
  have hy := coord_eq h0 y
  have e : x * y = (B.repr x 0 * B.repr y 0 + Δ * (B.repr x 1 * B.repr y 1)) • B 0 +
      (B.repr x 0 * B.repr y 1 + B.repr x 1 * B.repr y 0) • B 1 := by
    have e1 : x * y = (algebraMap L K (B.repr x 0) + algebraMap L K (B.repr x 1) * B 1) *
        (algebraMap L K (B.repr y 0) + algebraMap L K (B.repr y 1) * B 1) :=
      congrArg₂ (· * ·) hx hy
    rw [e1, Algebra.smul_def, Algebra.smul_def, h0]
    simp only [map_add (f := _), map_mul]
    linear_combination (algebraMap L K (B.repr x 1) * algebraMap L K (B.repr y 1)) * h1
  have := repr_coord B (B.repr x 0 * B.repr y 0 + Δ * (B.repr x 1 * B.repr y 1))
    (B.repr x 0 * B.repr y 1 + B.repr x 1 * B.repr y 0)
  rw [← e] at this
  exact this


variable (B Δ) in
def nrm (B : Module.Basis (Fin 2) L K) (Δ : L) (x : K) : L :=
  B.repr x 0 ^ 2 - Δ * B.repr x 1 ^ 2

theorem nrm_mul (h0 : B 0 = 1) (h1 : B 1 * B 1 = algebraMap L K Δ) (x y : K) :
    nrm B Δ (x * y) = nrm B Δ x * nrm B Δ y := by
  obtain ⟨e0, e1⟩ := repr_mul h0 h1 x y
  unfold nrm
  rw [e0, e1]; ring

theorem nrm_one (h0 : B 0 = 1) : nrm B Δ (1 : K) = 1 := by
  obtain ⟨e0, e1⟩ := repr_one h0
  unfold nrm
  rw [e0, e1]; ring

theorem exists_inv (h0 : B 0 = 1) (h1 : B 1 * B 1 = algebraMap L K Δ) (x : K)
    (hN : nrm B Δ x ≠ 0) : ∃ x', x * x' = 1 := by
  refine ⟨(nrm B Δ x)⁻¹ • (B.repr x 0 • B 0 + (-B.repr x 1) • B 1), ?_⟩
  have hc := repr_coord B (B.repr x 0) (-B.repr x 1)
  obtain ⟨e0, e1⟩ := repr_mul h0 h1 x (B.repr x 0 • B 0 + (-B.repr x 1) • B 1)
  rw [hc.1, hc.2] at e0 e1
  have hxx : x * (B.repr x 0 • B 0 + (-B.repr x 1) • B 1) = algebraMap L K (nrm B Δ x) := by
    rw [coord_eq h0 (x * (B.repr x 0 • B 0 + (-B.repr x 1) • B 1)), e0, e1]
    have : B.repr x 0 * B.repr x 0 + Δ * (B.repr x 1 * -B.repr x 1) = nrm B Δ x := by
      unfold nrm; ring
    have h' : B.repr x 0 * -B.repr x 1 + B.repr x 1 * B.repr x 0 = 0 := by ring
    rw [this, h']; simp
  rw [mul_smul_comm, hxx, Algebra.smul_def, ← map_mul, inv_mul_cancel₀ hN, map_one]

variable {Γ : Type} [LinearOrderedCommGroupWithZero Γ] (w : Valuation L Γ)

theorem le_one_of_sq {a : Γ} (h : a ^ 2 ≤ 1) : a ≤ 1 := by
  by_contra hc
  exact absurd h (not_le.2 (one_lt_pow₀ (not_le.1 hc) two_ne_zero))

theorem inert_case (h0 : B 0 = 1) (h1 : B 1 * B 1 = algebraMap L K Δ)
    (hsq : ∀ x : L, w (x - 1) < 1 → IsSquare x) (hΔ : w Δ = 1) (hn : ¬ IsSquare Δ)
    {M : ℕ} (y z : Fin M → K) (hz : z ⬝ᵥ y = 1) :
    ∃ (u : Kˣ) (z' : Fin M → K), (∀ k l, w (B.repr ((u : K) * y k) l) ≤ 1) ∧
      (∀ k l, w (B.repr (z' k) l) ≤ 1) ∧ ∑ k, z' k * ((u : K) * y k) = 1 := by
  have h10 : (1 : K) ≠ 0 := h0 ▸ B.ne_zero 0
  obtain ⟨i₀, hi₀⟩ : ∃ i, y i ≠ 0 := by
    by_contra! hall
    apply h10
    rw [← hz]
    simp [dotProduct, hall]
  haveI : Nonempty (Fin M) := ⟨i₀⟩
  obtain ⟨i, hi⟩ := Finite.exists_max (fun k => w (nrm B Δ (y k)))
  have hNv (x : K) : w (nrm B Δ x) = max (w (B.repr x 0)) (w (B.repr x 1)) ^ 2 :=
    val_norm w hsq hΔ hn _ _
  have hne (x : K) (hx : x ≠ 0) : nrm B Δ x ≠ 0 := by
    intro hN
    have h := hNv x
    rw [hN, map_zero] at h
    have hm := (pow_eq_zero_iff two_ne_zero).1 h.symm
    have ha : w (B.repr x 0) = 0 := le_antisymm (hm ▸ le_max_left _ _) zero_le
    have hc : w (B.repr x 1) = 0 := le_antisymm (hm ▸ le_max_right _ _) zero_le
    apply hx
    rw [coord_eq h0 x, (Valuation.zero_iff w).1 ha, (Valuation.zero_iff w).1 hc]
    simp
  have hNi : nrm B Δ (y i) ≠ 0 := by
    intro hN
    have h := hi i₀
    simp only [hN, map_zero] at h
    exact hne _ hi₀ ((Valuation.zero_iff w).1 (le_antisymm h zero_le))
  obtain ⟨x', hx'⟩ := exists_inv h0 h1 (y i) hNi
  refine ⟨⟨x', y i, by rw [mul_comm]; exact hx', hx'⟩, Pi.single i 1, ?_, ?_, ?_⟩
  · intro k l
    have hn' : w (nrm B Δ (x' * y k)) ≤ 1 := by
      have e1 : nrm B Δ x' * nrm B Δ (y i) = 1 := by
        rw [← nrm_mul h0 h1, mul_comm, hx', nrm_one h0]
      rw [nrm_mul h0 h1, map_mul]
      calc w (nrm B Δ x') * w (nrm B Δ (y k)) ≤ w (nrm B Δ x') * w (nrm B Δ (y i)) :=
            mul_le_mul' le_rfl (hi k)
        _ = 1 := by rw [← map_mul, e1, map_one]
    rw [hNv] at hn'
    have hm := le_one_of_sq hn'
    fin_cases l
    · exact (le_max_left _ _).trans hm
    · exact (le_max_right _ _).trans hm
  · intro k l
    by_cases hk : k = i
    · subst hk
      obtain ⟨e0, e1⟩ := repr_one (B := B) h0
      fin_cases l <;> simp [e0, e1]
    · simp [hk]
  · simp only
    simp [Pi.single_apply, mul_comm x', hx']

theorem mul_ef {e f : K} (he : e * e = e) (hf : f * f = f) (hef : e * f = 0) (α β γ δ : L) :
    (α • e + β • f) * (γ • e + δ • f) = (α * γ) • e + (β * δ) • f := by
  simp only [Algebra.smul_def, map_mul]
  linear_combination (algebraMap L K α * algebraMap L K γ) * he +
    (algebraMap L K β * algebraMap L K δ) * hf +
    (algebraMap L K α * algebraMap L K δ + algebraMap L K β * algebraMap L K γ) * hef

theorem int_ef {e f : K} (he : ∀ l, w (B.repr e l) ≤ 1) (hf : ∀ l, w (B.repr f l) ≤ 1) {α β : L}
    (hα : w α ≤ 1) (hβ : w β ≤ 1) (l : Fin 2) : w (B.repr (α • e + β • f) l) ≤ 1 := by
  simp only [map_add (f := _), map_smul, Finsupp.add_apply, Finsupp.smul_apply, smul_eq_mul]
  refine (w.map_add _ _).trans (max_le ?_ ?_)
  · rw [map_mul]; exact mul_le_one' hα (he l)
  · rw [map_mul]; exact mul_le_one' hβ (hf l)


variable (B) in
def idm (B : Module.Basis (Fin 2) L K) (s : L) : K :=
  (2⁻¹ : L) • B 0 + ((2 * s)⁻¹ : L) • B 1


variable (B) in
def ev (B : Module.Basis (Fin 2) L K) (s : L) (x : K) : L :=
  B.repr x 0 + s * B.repr x 1

theorem mul_idm (h0 : B 0 = 1) (h1 : B 1 * B 1 = algebraMap L K Δ) (h2 : (2 : L) ≠ 0) {s : L}
    (hs0 : s ≠ 0) (hs : s * s = Δ) (x : K) : x * idm B s = ev B s x • idm B s := by
  have hd : B 1 * idm B s = algebraMap L K s * idm B s := by
    unfold idm
    rw [Algebra.smul_def, Algebra.smul_def, h0, mul_one]
    have e1 : algebraMap L K s * algebraMap L K (2 * s)⁻¹ = algebraMap L K (2⁻¹ : L) := by
      rw [← map_mul]; congr 1; field_simp
    have e2 : algebraMap L K (2 * s)⁻¹ * algebraMap L K Δ =
        algebraMap L K s * algebraMap L K (2⁻¹ : L) := by
      rw [← map_mul, ← map_mul, ← hs]; congr 1; field_simp
    linear_combination (algebraMap L K (2 * s)⁻¹) * h1 + e2 - B 1 * e1
  have hx := coord_eq h0 x
  calc x * idm B s = (algebraMap L K (B.repr x 0) + algebraMap L K (B.repr x 1) * B 1) * idm B s :=
        congrArg (· * idm B s) hx
    _ = ev B s x • idm B s := by
      unfold ev
      rw [Algebra.smul_def, map_add (f := _), map_mul]
      linear_combination (algebraMap L K (B.repr x 1)) * hd

theorem ev_idm (h2 : (2 : L) ≠ 0) {s : L} (hs0 : s ≠ 0) :
    ev B s (idm B s) = 1 ∧ ev B s (idm B (-s)) = 0 := by
  have c1 := repr_coord B (2⁻¹ : L) ((2 * s)⁻¹ : L)
  have c2 := repr_coord B (2⁻¹ : L) ((2 * -s)⁻¹ : L)
  unfold ev idm
  rw [c1.1, c1.2, c2.1, c2.2]
  constructor <;> field_simp <;> ring

theorem idm_add (h0 : B 0 = 1) (h2 : (2 : L) ≠ 0) {s : L} (hs : s ≠ 0) :
    idm B s + idm B (-s) = 1 := by
  unfold idm
  have e : ((2 * -s)⁻¹ : L) = -(2 * s)⁻¹ := by field_simp
  rw [e, neg_smul, h0, Algebra.smul_def, mul_one]
  have e2 : algebraMap L K (2⁻¹ : L) + algebraMap L K (2⁻¹ : L) = 1 := by
    rw [← map_add (f := _), ← map_one (algebraMap L K)]; congr 1; field_simp; norm_num
  linear_combination e2

theorem split_case (h0 : B 0 = 1) (h1 : B 1 * B 1 = algebraMap L K Δ)
    (h2 : w (2 : L) = 1) (hΔ : w Δ = 1) {s : L} (hs : s * s = Δ)
    {M : ℕ} (y z : Fin M → K) (hz : z ⬝ᵥ y = 1) :
    ∃ (u : Kˣ) (z' : Fin M → K), (∀ k l, w (B.repr ((u : K) * y k) l) ≤ 1) ∧
      (∀ k l, w (B.repr (z' k) l) ≤ 1) ∧ ∑ k, z' k * ((u : K) * y k) = 1 := by
  have h20 : (2 : L) ≠ 0 := (Valuation.ne_zero_iff w).1 (by rw [h2]; exact one_ne_zero)
  have hws : w s = 1 := by
    have hq : w s ^ 2 = 1 := by rw [← map_pow, sq, hs, hΔ]
    refine le_antisymm (le_one_of_sq hq.le) ?_
    by_contra hc
    exact absurd hq (pow_lt_one₀ zero_le (not_le.1 hc) two_ne_zero).ne
  have hs0 : s ≠ 0 := (Valuation.ne_zero_iff w).1 (by rw [hws]; exact one_ne_zero)
  have hns : -s ≠ 0 := neg_ne_zero.2 hs0
  have hs' : -s * -s = Δ := by rw [neg_mul_neg, hs]
  set e : K := idm B s with he_def
  set f : K := idm B (-s) with hf_def
  have hef1 : e + f = 1 := idm_add h0 h20 hs0
  have me (x : K) : x * e = ev B s x • e := mul_idm h0 h1 h20 hs0 hs x
  have mf (x : K) : x * f = ev B (-s) x • f := mul_idm h0 h1 h20 hns hs' x
  have hee : e * e = e := by rw [me, (ev_idm h20 hs0).1, one_smul]
  have hff : f * f = f := by
    rw [mf]
    have := (ev_idm (B := B) h20 hns).1
    rw [this, one_smul]
  have hfe : f * e = 0 := by rw [me, (ev_idm h20 hs0).2, zero_smul]
  have hef : e * f = 0 := by rw [mul_comm, hfe]
  have hdec (x : K) : x = ev B s x • e + ev B (-s) x • f := by
    rw [← me, ← mf, ← mul_add, hef1, mul_one]
  have wi : w (2⁻¹ : L) = 1 := by rw [map_inv₀, h2, inv_one]
  have wi2 (t : L) (ht : w t = 1) : w ((2 * t)⁻¹ : L) = 1 := by
    rw [map_inv₀, map_mul, h2, ht, one_mul, inv_one]
  have hei (t : L) (ht : w t = 1) (l : Fin 2) : w (B.repr (idm B t) l) ≤ 1 := by
    have c := repr_coord B (2⁻¹ : L) ((2 * t)⁻¹ : L)
    unfold idm
    fin_cases l
    · simp only [Fin.zero_eta]; rw [c.1, wi]
    · simp only [Fin.mk_one]; rw [c.2, wi2 t ht]
  have he_int := hei s hws
  have hf_int := hei (-s) (by rw [Valuation.map_neg, hws])
  have he0 : e ≠ 0 := fun h => by
    have := (ev_idm (B := B) h20 hs0).1
    rw [← he_def, h] at this
    simp [ev] at this
  have hf0 : f ≠ 0 := fun h => by
    have := (ev_idm (B := B) h20 hns).1
    rw [← hf_def, h] at this
    simp [ev] at this

  have hsum (g : K) (t : L) (mg : ∀ x, x * g = ev B t x • g) (hg : g ≠ 0) :
      ∃ k, ev B t (y k) ≠ 0 := by
    by_contra! hall
    apply hg
    calc g = (z ⬝ᵥ y) * g := by rw [hz, one_mul]
      _ = ∑ k, z k * (y k * g) := by simp only [dotProduct, Finset.sum_mul, mul_assoc]
      _ = 0 := by simp [mg, hall]
  obtain ⟨k₁, hk₁⟩ := hsum e s me he0
  obtain ⟨k₂, hk₂⟩ := hsum f (-s) mf hf0
  haveI : Nonempty (Fin M) := ⟨k₁⟩
  obtain ⟨i, hi⟩ := Finite.exists_max (fun k => w (ev B s (y k)))
  obtain ⟨j, hj⟩ := Finite.exists_max (fun k => w (ev B (-s) (y k)))
  have hpi : ev B s (y i) ≠ 0 := by
    intro h
    have := hi k₁
    simp only [h, map_zero] at this
    exact hk₁ ((Valuation.zero_iff w).1 (le_antisymm this zero_le))
  have hqj : ev B (-s) (y j) ≠ 0 := by
    intro h
    have := hj k₂
    simp only [h, map_zero] at this
    exact hk₂ ((Valuation.zero_iff w).1 (le_antisymm this zero_le))
  set p : Fin M → L := fun k => ev B s (y k) with hp
  set q : Fin M → L := fun k => ev B (-s) (y k) with hq
  have hpi' : p i ≠ 0 := hpi
  have hqj' : q j ≠ 0 := hqj
  have huv : ((p i)⁻¹ • e + (q j)⁻¹ • f) * (p i • e + q j • f) = 1 := by
    rw [mul_ef hee hff hef, inv_mul_cancel₀ hpi', inv_mul_cancel₀ hqj', one_smul, one_smul, hef1]
  have huy (k : Fin M) : ((p i)⁻¹ • e + (q j)⁻¹ • f) * y k =
      ((p i)⁻¹ * p k) • e + ((q j)⁻¹ * q k) • f := by
    rw [← mul_ef hee hff hef, ← hdec (y k)]
  have hle (t₀ t : L) (h : w t ≤ w t₀) (h0 : t₀ ≠ 0) : w (t₀⁻¹ * t) ≤ 1 := by
    rw [map_mul, map_inv₀, inv_mul_le_iff₀ (zero_lt_iff.2 ((Valuation.ne_zero_iff w).2 h0)), mul_one]
    exact h
  refine ⟨⟨(p i)⁻¹ • e + (q j)⁻¹ • f, p i • e + q j • f, huv, by rw [mul_comm]; exact huv⟩,
    Pi.single i e + Pi.single j f, ?_, ?_, ?_⟩
  · intro k l
    simp only
    rw [huy]
    exact int_ef w he_int hf_int (hle _ _ (hi k) hpi') (hle _ _ (hj k) hqj') l
  · intro k l
    have h1' : ∀ (g : K) (m : Fin M), (∀ l, w (B.repr g l) ≤ 1) →
        w (B.repr ((Pi.single m g : Fin M → K) k) l) ≤ 1 := by
      intro g m hg
      by_cases hk : k = m
      · subst hk; simpa using hg l
      · simp [hk]
    simp only [Pi.add_apply, map_add (f := _), Finsupp.add_apply]
    exact (w.map_add _ _).trans (max_le (h1' e i he_int) (h1' f j hf_int))
  · simp only [Pi.add_apply, add_mul, Finset.sum_add_distrib, Pi.single_apply,
      ite_mul, zero_mul, Finset.sum_ite_eq', Finset.mem_univ, if_true, huy]
    have a1 : e * (((p i)⁻¹ * p i) • e + ((q j)⁻¹ * q i) • f) = e := by
      rw [inv_mul_cancel₀ hpi', one_smul, mul_add, hee, mul_smul_comm, hef, smul_zero, add_zero]
    have a2 : f * (((p i)⁻¹ * p j) • e + ((q j)⁻¹ * q j) • f) = f := by
      rw [inv_mul_cancel₀ hqj', one_smul, mul_add, hff, mul_smul_comm, hfe, smul_zero, zero_add]
    rw [a1, a2, hef1]

theorem core (h0 : B 0 = 1) (h1 : B 1 * B 1 = algebraMap L K Δ)
    (hsq : ∀ x : L, w (x - 1) < 1 → IsSquare x) (h2 : w (2 : L) = 1) (hΔ : w Δ = 1)
    {M : ℕ} (y z : Fin M → K) (hz : z ⬝ᵥ y = 1) :
    ∃ (u : Kˣ) (z' : Fin M → K), (∀ k l, w (B.repr ((u : K) * y k) l) ≤ 1) ∧
      (∀ k l, w (B.repr (z' k) l) ≤ 1) ∧ ∑ k, z' k * ((u : K) * y k) = 1 := by
  by_cases hn : IsSquare Δ
  · obtain ⟨s, hs⟩ := hn
    exact split_case w h0 h1 h2 hΔ hs.symm y z hz
  · exact inert_case w h0 h1 hsq hΔ hn y z hz

end Quad

section Global

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem exists_basis {σ : E →ₐ[F] E} (h : IsCMExt F E σ) :
    ∃ (b₂ : Module.Basis (Fin 2) F E) (Δ : F), Δ ≠ 0 ∧ b₂ 0 = 1 ∧
      b₂ 1 * b₂ 1 = algebraMap F E Δ := by
  obtain ⟨τ⟩ : Nonempty (E →+* ℂ) := inferInstance
  have hinv (x : E) : σ (σ x) = x := by
    apply τ.injective
    rw [h.2.2.2, h.2.2.2, star_star]
  obtain ⟨x, hx⟩ : ∃ x : E, σ x ≠ x := by
    by_contra! hc
    have := h.2.1
    apply IsTotallyComplex.complexEmbedding_not_isReal τ
    rw [ComplexEmbedding.isReal_iff]
    ext x
    have h' := h.2.2.2 τ x
    rw [hc] at h'
    simpa using h'.symm
  set δ : E := x - σ x with hδ
  have hδ0 : δ ≠ 0 := sub_ne_zero.2 (Ne.symm hx)
  have hσ : σ δ = -δ := by rw [hδ, map_sub, hinv, neg_sub]
  have hli : LinearIndependent F ![(1 : E), δ] := by
    rw [LinearIndependent.pair_iff]
    intro s t hst
    rw [Algebra.smul_def, Algebra.smul_def, mul_one] at hst
    have h2 := congrArg σ hst
    rw [map_add (f := _), map_mul, AlgHom.commutes, AlgHom.commutes, hσ, map_zero] at h2
    have hs2 : algebraMap F E (2 * s) = 0 := by
      rw [map_mul, map_ofNat]
      linear_combination hst + h2
    have hs : s = 0 :=
      (mul_eq_zero.1 ((map_eq_zero_iff _ (algebraMap F E).injective).1 hs2)).resolve_left
        two_ne_zero
    refine ⟨hs, ?_⟩
    rw [hs, map_zero, zero_add] at hst
    exact (map_eq_zero_iff _ (algebraMap F E).injective).1 ((mul_eq_zero.1 hst).resolve_right hδ0)
  have hcard : Fintype.card (Fin 2) = Module.finrank F E := by rw [Fintype.card_fin, h.2.2.1]
  set B := basisOfLinearIndependentOfCardEqFinrank hli hcard with hB
  have hB0 : B 0 = 1 := by simp [hB]
  have hB1 : B 1 = δ := by simp [hB]
  obtain ⟨α, β, hs⟩ : ∃ α β : F, δ * δ = algebraMap F E α + algebraMap F E β * δ := by
    have hs := (B.sum_repr (δ * δ)).symm
    rw [Fin.sum_univ_two, hB0, hB1, Algebra.smul_def, Algebra.smul_def, mul_one] at hs
    exact ⟨_, _, hs⟩
  have h2 := congrArg σ hs
  rw [map_mul, map_add (f := _), map_mul, AlgHom.commutes, AlgHom.commutes, hσ] at h2
  have hc : algebraMap F E β = 0 := by
    have : (2 * δ) * algebraMap F E β = 0 := by
      linear_combination h2 - hs
    exact (mul_eq_zero.1 this).resolve_left (mul_ne_zero two_ne_zero hδ0)
  rw [hc, zero_mul, add_zero] at hs
  refine ⟨B, α, ?_, hB0, by rw [hB1]; exact hs⟩
  intro h0
  rw [h0, map_zero] at hs
  exact mul_self_ne_zero.2 hδ0 hs

theorem change_basis {d d' : ℕ} (b : Module.Basis (Fin d) F E) (b' : Module.Basis (Fin d') F E) :
    ∀ᶠ v : HeightOneSpectrum (𝓞 F) in Filter.cofinite, ∀ x : Fv F v ⊗[F] E,
      (∀ k, (Algebra.TensorProduct.basis (Fv F v) b).repr x k ∈ v.adicCompletionIntegers F) →
      ∀ k, (Algebra.TensorProduct.basis (Fv F v) b').repr x k ∈ v.adicCompletionIntegers F := by
  have h : ∀ j k, ∀ᶠ v : HeightOneSpectrum (𝓞 F) in Filter.cofinite,
      v.valuation F (b'.repr (b j) k) ≤ 1 := fun j k => GoodInt.eventually_le_one _
  filter_upwards [Filter.eventually_all.2 fun j => Filter.eventually_all.2 (h j)] with v hv x hx k
  have key : (Algebra.TensorProduct.basis (Fv F v) b').repr x k =
      ∑ j, (Algebra.TensorProduct.basis (Fv F v) b).repr x j *
        (Algebra.TensorProduct.basis (Fv F v) b').repr
          ((Algebra.TensorProduct.basis (Fv F v) b) j) k := by
    conv_lhs => rw [← (Algebra.TensorProduct.basis (Fv F v) b).sum_repr x]

    simp [map_sum, Finsupp.finsetSum_apply]
  rw [key]
  refine sum_mem fun j _ => mul_mem (hx j) ?_
  have e : (Algebra.TensorProduct.basis (Fv F v) b) j = inclR (Fv F v) (b j) := by
    simp [inclR, Algebra.TensorProduct.basis_apply]
  rw [e, GoodInt.repr_inclR, HeightOneSpectrum.mem_adicCompletionIntegers,
    GoodInt.valued_algebraMap]
  exact hv j k

end Global

theorem exists_primitive : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (d : ℕ) (b : Module.Basis (Fin d) F E) (M : ℕ), ∀ᶠ v : HeightOneSpectrum (𝓞 F) in Filter.cofinite, ∀ y : Fin 1 → Fin M → Fv F v ⊗[F] E, (∃ z : Fin M → Fv F v ⊗[F] E, z ⬝ᵥ y 0 = 1) → ∃ (a : (Fv F v ⊗[F] E)ˣ) (z : Fin 1 → Fin M → Fv F v ⊗[F] E), (a : Fv F v ⊗[F] E) • y ∈ latV b v ∧ z ∈ latV b v ∧ z 0 ⬝ᵥ ((a : Fv F v ⊗[F] E) • y) 0 = 1 := by
  intro F E _ _ _ _ _ σ hcm d b M
  obtain ⟨b₂, Δ, hΔ0, h0, h1⟩ := exists_basis hcm
  filter_upwards [change_basis b₂ b, GoodInt.eventually_eq_one Δ hΔ0,
    GoodInt.eventually_eq_one (2 : F) two_ne_zero] with v hch hΔ h2 y hy
  obtain ⟨z, hz⟩ := hy
  have hB0 : (Algebra.TensorProduct.basis (Fv F v) b₂) 0 = 1 := by
    rw [Algebra.TensorProduct.basis_apply, h0]; rfl
  have hB1 : (Algebra.TensorProduct.basis (Fv F v) b₂) 1 *
      (Algebra.TensorProduct.basis (Fv F v) b₂) 1 =
      algebraMap (Fv F v) (Fv F v ⊗[F] E) (algebraMap F (Fv F v) Δ) := by
    rw [Algebra.TensorProduct.basis_apply, Algebra.TensorProduct.tmul_mul_tmul, h1, mul_one]
    show (1 : Fv F v) ⊗ₜ[F] algebraMap F E Δ = algebraMap F (Fv F v) Δ ⊗ₜ[F] (1 : E)
    rw [Algebra.algebraMap_eq_smul_one, Algebra.algebraMap_eq_smul_one, TensorProduct.tmul_smul,
      TensorProduct.smul_tmul']
  have h2' : Valued.v (2 : Fv F v) = 1 := by
    have := GoodInt.valued_algebraMap v (2 : F)
    rw [map_ofNat] at this
    rw [this, h2]
  have hΔ' : Valued.v (algebraMap F (Fv F v) Δ) = 1 := by
    rw [GoodInt.valued_algebraMap, hΔ]
  have hsq : ∀ x : Fv F v, Valued.v (x - 1) < 1 → IsSquare x := fun x hx =>
    GlobalTheory.LocalQuad.isSquare_of_valued_sub_one_lt F v x (by
      rw [show (4 : Fv F v) = 2 * 2 by norm_num, map_mul, h2', one_mul]
      exact hx)
  obtain ⟨u, z', c1, c2, c3⟩ := core Valued.v hB0 hB1 hsq h2' hΔ' (y 0) z hz
  refine ⟨u, fun _ => z', ?_, ?_, ?_⟩
  · intro a i k
    obtain rfl := Subsingleton.elim a 0
    refine hch _ (fun l => ?_) k
    rw [HeightOneSpectrum.mem_adicCompletionIntegers]
    exact c1 i l
  · intro a i k
    refine hch _ (fun l => ?_) k
    rw [HeightOneSpectrum.mem_adicCompletionIntegers]
    exact c2 i l
  · simpa [dotProduct] using c3

end GlobalTheory.CompanionTheory.SW.PrimGood
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.PrimitiveVectorLatticeRescaleAlmostAll =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelicPrimitiveVectorCompactRescale =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelicPrimitiveVectorCompactRescale", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.SWXSDefs\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelicTupleLocalGlobalProperties\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ArchimedeanPrimitiveVectorCompactRescale\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ContDiffOnChartGlobalWhittakerCoefficient\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.LocalPrimitiveVectorCompactRescale\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.PrimitiveVectorLatticeRescaleAlmostAll\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd\n\n"}
section -- clump:auto
@[expose] public section

open HeckeCharacterZeroLocus.SiegelWeilU GlobalTheory.CompanionTheory.SW NumberField IsDedekindDomain MeasureTheory Topology
open scoped TensorProduct ENNReal NNReal Matrix

noncomputable section

namespace GlobalTheory.CompanionTheory.SW.PrimA

def phiInf (F E : Type) [Field F] [NumberField F] [Field E] [Algebra F E] :
    AF F ⊗[F] E →+* Ainf F ⊗[F] E :=
  (Algebra.TensorProduct.map (fstA F) (AlgHom.id F E)).toRingHom

def phiV (F E : Type) [Field F] [NumberField F] [Field E] [Algebra F E]
    (v : HeightOneSpectrum (𝓞 F)) : AF F ⊗[F] E →+* Fv F v ⊗[F] E :=
  (Algebra.TensorProduct.map (evalV F v) (AlgHom.id F E)).toRingHom.comp
    (Algebra.TensorProduct.map (sndA F) (AlgHom.id F E)).toRingHom

theorem unimodular_compact_mod_units : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E]
    [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (M : ℕ),
    ∃ Ω : Set (Fin 1 → Fin M → AF F ⊗[F] E), IsCompact Ω ∧
      ∀ y : Fin 1 → Fin M → AF F ⊗[F] E, (∃ z : Fin M → AF F ⊗[F] E, z ⬝ᵥ y 0 = 1) →
        ∃ (a : (AF F ⊗[F] E)ˣ) (z : Fin 1 → Fin M → AF F ⊗[F] E),
          (a : AF F ⊗[F] E) • y ∈ Ω ∧ z ∈ Ω ∧ z 0 ⬝ᵥ ((a : AF F ⊗[F] E) • y) 0 = 1 := by
  intro F E _ _ _ _ _ σ hCM M
  haveI : FiniteDimensional F E := Module.Finite.of_restrictScalars_finite ℚ F E
  let b := Module.finBasis F E
  obtain ⟨-, almM, glueM, cptM⟩ := _root_.GlobalTheory.CompanionTheory.SW.Glue.glue_main F E σ hCM _ b 1 M
  obtain ⟨ext1, alm1, glue1, -⟩ := _root_.GlobalTheory.CompanionTheory.SW.Glue.glue_main F E σ hCM _ b 1 1
  obtain ⟨Ωi, hΩi, hi⟩ := _root_.GlobalTheory.CompanionTheory.SW.PrimInf.unimodular_mod_units_inf F E σ hCM M
  choose Ωv hΩv hv using _root_.GlobalTheory.CompanionTheory.SW.PrimV.exists_compact_unimodular_vectors_mod_units F E σ hCM M
  obtain ⟨good, hgoodEv, hgood⟩ : ∃ good : HeightOneSpectrum (𝓞 F) → Prop,
      (∀ᶠ v in Filter.cofinite, good v) ∧ ∀ v, good v →
        ∀ y : Fin 1 → Fin M → Fv F v ⊗[F] E, (∃ z : Fin M → Fv F v ⊗[F] E, z ⬝ᵥ y 0 = 1) →
          ∃ (a : (Fv F v ⊗[F] E)ˣ) (z : Fin 1 → Fin M → Fv F v ⊗[F] E),
            (a : Fv F v ⊗[F] E) • y ∈ latV b v ∧ z ∈ latV b v ∧
              z 0 ⬝ᵥ ((a : Fv F v ⊗[F] E) • y) 0 = 1 :=
    ⟨_, _root_.GlobalTheory.CompanionTheory.SW.PrimGood.exists_primitive F E σ hCM _ b M, fun _ h => h⟩
  classical
  obtain ⟨Cv, hCg, hCb⟩ : ∃ Cv : ∀ v : HeightOneSpectrum (𝓞 F), Set (Fin 1 → Fin M → Fv F v ⊗[F] E),
      (∀ v, good v → Cv v = latV b v) ∧ (∀ v, ¬ good v → Cv v = Ωv v) :=
    ⟨fun v => if good v then latV b v else Ωv v, fun v h => if_pos h, fun v h => if_neg h⟩
  have hCcpt : ∀ v, IsCompact (Cv v) := by
    intro v
    by_cases h : good v
    · rw [hCg v h]; exact (_root_.GlobalTheory.CompanionTheory.SW.LatCpt.latV_compact_open F E σ hCM _ b 1 M v).1
    · rw [hCb v h]; exact hΩv v
  have hClat : ∀ᶠ v in Filter.cofinite, Cv v ⊆ latV b v :=
    hgoodEv.mono fun v h => (hCg v h).le
  have extK : ∀ x y : AF F ⊗[F] E, phiInf F E x = phiInf F E y →
      (∀ v, phiV F E v x = phiV F E v y) → x = y := by
    intro x y h1 h2
    have := ext1 (fun _ _ => x) (fun _ _ => y) (by funext a i; exact h1)
      (fun v => by funext a i; exact h2 v)
    exact congrFun (congrFun this 0) 0
  have oneLat : ∀ᶠ v in Filter.cofinite,
      (fun _ _ => 1 : Fin 1 → Fin 1 → Fv F v ⊗[F] E) ∈ latV b v := by
    refine (alm1 (fun _ _ => 1)).mono fun v hv => ?_
    have e : (projV v (projFin (fun _ _ => (1 : AF F ⊗[F] E))) : Fin 1 → Fin 1 → Fv F v ⊗[F] E) =
        fun _ _ => 1 := by
      funext a i; exact map_one (phiV F E v)
    rwa [e] at hv
  have glueK : ∀ (xi : Ainf F ⊗[F] E) (xv : ∀ v : HeightOneSpectrum (𝓞 F), Fv F v ⊗[F] E),
      (∀ᶠ v in Filter.cofinite, xv v = 1) →
      ∃ x : AF F ⊗[F] E, phiInf F E x = xi ∧ ∀ v, phiV F E v x = xv v := by
    intro xi xv h
    obtain ⟨X, h1, h2⟩ := glue1 (fun _ _ => xi) (fun v _ _ => xv v) ((h.and oneLat).mono fun v hv => by
      have e : (fun _ _ => xv v : Fin 1 → Fin 1 → Fv F v ⊗[F] E) = fun _ _ => 1 := by
        funext a i; exact hv.1
      rw [e]; exact hv.2)
    exact ⟨X 0 0, congrFun (congrFun h1 0) 0, fun v => congrFun (congrFun (h2 v) 0) 0⟩
  refine ⟨{X | projInf X ∈ Ωi ∧ ∀ v, projV v (projFin X) ∈ Cv v}, cptM Ωi Cv hΩi hCcpt hClat, ?_⟩
  rintro y ⟨z₀, hz₀⟩
  have hzi : (fun i => phiInf F E (z₀ i)) ⬝ᵥ projInf y 0 = 1 := by
    have := congrArg (phiInf F E) hz₀
    rw [map_one, RingHom.map_dotProduct] at this
    exact this
  obtain ⟨ai, zi, hai, hzi', hidi⟩ := hi (projInf y) ⟨_, hzi⟩
  have hzv : ∀ v, (fun i => phiV F E v (z₀ i)) ⬝ᵥ projV v (projFin y) 0 = 1 := by
    intro v
    have := congrArg (phiV F E v) hz₀
    rw [map_one, RingHom.map_dotProduct] at this
    exact this
  have loc : ∀ v : HeightOneSpectrum (𝓞 F), ∃ (a : (Fv F v ⊗[F] E)ˣ) (z : Fin 1 → Fin M → Fv F v ⊗[F] E),
      (a : Fv F v ⊗[F] E) • projV v (projFin y) ∈ Cv v ∧ z ∈ Cv v ∧
        z 0 ⬝ᵥ ((a : Fv F v ⊗[F] E) • projV v (projFin y)) 0 = 1 ∧
        (good v → projV v (projFin y) ∈ latV b v →
          (fun _ i => phiV F E v (z₀ i) : Fin 1 → Fin M → Fv F v ⊗[F] E) ∈ latV b v → a = 1) := by
    intro v
    by_cases hg : good v
    · by_cases hy : projV v (projFin y) ∈ latV b v ∧
          (fun _ i => phiV F E v (z₀ i) : Fin 1 → Fin M → Fv F v ⊗[F] E) ∈ latV b v
      · refine ⟨1, fun _ i => phiV F E v (z₀ i), ?_, ?_, ?_, fun _ _ _ => rfl⟩
        · rw [hCg v hg, Units.val_one, one_smul]; exact hy.1
        · rw [hCg v hg]; exact hy.2
        · rw [Units.val_one, one_smul]; exact hzv v
      · obtain ⟨a, z, h1, h2, h3⟩ := hgood v hg _ ⟨_, hzv v⟩
        refine ⟨a, z, ?_, ?_, h3, fun _ h h' => absurd ⟨h, h'⟩ hy⟩
        · rw [hCg v hg]; exact h1
        · rw [hCg v hg]; exact h2
    · obtain ⟨a, z, h1, h2, h3⟩ := hv v _ ⟨_, hzv v⟩
      refine ⟨a, z, ?_, ?_, h3, fun h => absurd h hg⟩
      · rw [hCb v hg]; exact h1
      · rw [hCb v hg]; exact h2
  choose av zv hav hzv' hidv ha1 using loc
  have ae1 : ∀ᶠ v in Filter.cofinite, av v = 1 := by
    filter_upwards [hgoodEv, almM y, almM (fun _ i => z₀ i)] with v h1 h2 h3
    exact ha1 v h1 h2 h3
  obtain ⟨a, ha_i, ha_v⟩ := glueK (ai : Ainf F ⊗[F] E) (fun v => (av v : Fv F v ⊗[F] E))
    (ae1.mono fun v h => by simp [h])
  obtain ⟨a', ha'_i, ha'_v⟩ := glueK ((ai⁻¹ : (Ainf F ⊗[F] E)ˣ) : Ainf F ⊗[F] E)
    (fun v => (((av v)⁻¹ : (Fv F v ⊗[F] E)ˣ) : Fv F v ⊗[F] E))
    (ae1.mono fun v h => by simp [h])
  have haa : a * a' = 1 := by
    refine extK _ _ ?_ fun v => ?_
    · rw [map_mul, map_one, ha_i, ha'_i, Units.mul_inv]
    · rw [map_mul, map_one, ha_v, ha'_v, Units.mul_inv]
  obtain ⟨Z, hZi, hZv⟩ := glueM zi zv (hgoodEv.mono fun v h => by
    have := hzv' v
    rwa [hCg v h] at this)
  have eI : projInf ((a : AF F ⊗[F] E) • y) = (ai : Ainf F ⊗[F] E) • projInf y := by
    funext p i
    show phiInf F E (a * y p i) = (ai : Ainf F ⊗[F] E) * phiInf F E (y p i)
    rw [map_mul, ha_i]
  have eV : ∀ v, projV v (projFin ((a : AF F ⊗[F] E) • y)) =
      (av v : Fv F v ⊗[F] E) • projV v (projFin y) := by
    intro v
    funext p i
    show phiV F E v (a * y p i) = (av v : Fv F v ⊗[F] E) * phiV F E v (y p i)
    rw [map_mul, ha_v]
  refine ⟨⟨a, a', haa, by rw [mul_comm]; exact haa⟩, Z, ⟨?_, fun v => ?_⟩, ⟨?_, fun v => ?_⟩, ?_⟩
  · show projInf ((a : AF F ⊗[F] E) • y) ∈ Ωi
    rw [eI]; exact hai
  · show projV v (projFin ((a : AF F ⊗[F] E) • y)) ∈ Cv v
    rw [eV]; exact hav v
  · rw [hZi]; exact hzi'
  · rw [hZv]; exact hzv' v
  · show Z 0 ⬝ᵥ ((a : AF F ⊗[F] E) • y) 0 = 1
    refine extK _ _ ?_ fun v => ?_
    · rw [map_one, RingHom.map_dotProduct]
      have e1 : (phiInf F E ∘ Z 0) = zi 0 := by
        funext i; exact congrFun (congrFun hZi 0) i
      have e2 : (phiInf F E ∘ ((a : AF F ⊗[F] E) • y) 0) = ((ai : Ainf F ⊗[F] E) • projInf y) 0 := by
        funext i; exact congrFun (congrFun eI 0) i
      rw [e1, e2]; exact hidi
    · rw [map_one, RingHom.map_dotProduct]
      have e1 : (phiV F E v ∘ Z 0) = zv v 0 := by
        funext i; exact congrFun (congrFun (hZv v) 0) i
      have e2 : (phiV F E v ∘ ((a : AF F ⊗[F] E) • y) 0) =
          ((av v : Fv F v ⊗[F] E) • projV v (projFin y)) 0 := by
        funext i; exact congrFun (congrFun (eV v) 0) i
      rw [e1, e2]; exact hidv v

end GlobalTheory.CompanionTheory.SW.PrimA
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelicPrimitiveVectorCompactRescale =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HyperbolicUnitaryStabilizerCocompact =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HyperbolicUnitaryStabilizerCocompact", "h": "module\n\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.HypJ\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelesLocallyCompactSecondCountable\npublic import Formalism.UnipotentAdelicQuotients.SWXSDefs\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelicPrimitiveVectorCompactRescale\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelicUnitaryGroupLocallyCompact\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GramOrbitCompactRepresentative\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HyperbolicAndBlockOneNondegenerate\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.TensorLocallyCompactRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open HeckeCharacterZeroLocus.SiegelWeilU GlobalTheory.CompanionTheory.SW NumberField IsDedekindDomain MeasureTheory Topology
open scoped TensorProduct ENNReal NNReal Matrix

noncomputable section

namespace GlobalTheory.CompanionTheory.SW.Iwa

section Alg

variable {K : Type} [CommRing K] {N : ℕ}

theorem hform_eq (s : K →+* K) (L : Matrix (Fin N) (Fin N) K) (x y : Fin N → K) :
    hform s L x y = (fun i => s (x i)) ⬝ᵥ (L *ᵥ y) := by
  simp [hform, dotProduct, Matrix.mulVec, Finset.mul_sum, mul_assoc]

theorem hform_sub_right (s : K →+* K) (L : Matrix (Fin N) (Fin N) K) (x y w : Fin N → K) :
    hform s L x (y - w) = hform s L x y - hform s L x w := by
  simp [hform_eq, Matrix.mulVec_sub, dotProduct_sub]

theorem hform_smul_right (s : K →+* K) (L : Matrix (Fin N) (Fin N) K) (c : K) (x y : Fin N → K) :
    hform s L x (c • y) = c * hform s L x y := by
  simp [hform_eq, Matrix.mulVec_smul, dotProduct_smul]

theorem hform_sub_left (s : K →+* K) (L : Matrix (Fin N) (Fin N) K) (x w y : Fin N → K) :
    hform s L (x - w) y = hform s L x y - hform s L w y := by
  simp only [hform, Pi.sub_apply, map_sub, sub_mul, Finset.sum_sub_distrib]

theorem hform_smul_left (s : K →+* K) (L : Matrix (Fin N) (Fin N) K) (c : K) (x y : Fin N → K) :
    hform s L (c • x) y = s c * hform s L x y := by
  simp only [hform, Pi.smul_apply, smul_eq_mul, map_mul, Finset.mul_sum, mul_assoc]

theorem hform_conj (s : K →+* K) (L : Matrix (Fin N) (Fin N) K) (hs : ∀ x, s (s x) = x)
    (hL : ∀ i j, s (L j i) = L i j) (x y : Fin N → K) :
    s (hform s L x y) = hform s L y x := by

  simp only [hform, map_sum, map_mul, hs]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [hL]; ring

def dualV (s : K →+* K) (Li : Matrix (Fin N) (Fin N) K) (z : Fin N → K) : Fin N → K :=
  fun i => s ((z ᵥ* Li) i)

theorem hform_dual (s : K →+* K) (L Li : Matrix (Fin N) (Fin N) K) (hs : ∀ x, s (s x) = x)
    (hLi : Li * L = 1) (z w : Fin N → K) : hform s L (dualV s Li z) w = z ⬝ᵥ w := by
  have h : hform s L (dualV s Li z) w = (z ᵥ* Li) ⬝ᵥ (L *ᵥ w) := by
    simp only [hform_eq, dualV, hs]
  rw [h, Matrix.dotProduct_mulVec, Matrix.vecMul_vecMul, hLi, Matrix.vecMul_one]

def partner (s : K →+* K) (L Li : Matrix (Fin N) (Fin N) K) (half : K) (z w : Fin N → K) : Fin N → K :=
  dualV s Li z - (half * hform s L (dualV s Li z) (dualV s Li z)) • w

theorem partner_spec (s : K →+* K) (L Li : Matrix (Fin N) (Fin N) K) (half : K)
    (hs : ∀ x, s (s x) = x) (hL : ∀ i j, s (L j i) = L i j) (hLi : Li * L = 1)
    (hh : s half = half) (h2 : 2 * half = 1) (z w : Fin N → K) (hw : hform s L w w = 0)
    (hz : z ⬝ᵥ w = 1) :
    hform s L w (partner s L Li half z w) = 1 ∧ hform s L (partner s L Li half z w) w = 1 ∧
      hform s L (partner s L Li half z w) (partner s L Li half z w) = 0 := by
  set u := dualV s Li z with hu
  set A := hform s L u u with hA
  have huw : hform s L u w = 1 := by rw [hu, hform_dual s L Li hs hLi, hz]
  have hwu : hform s L w u = 1 := by rw [← hform_conj s L hs hL u w, huw, map_one]
  have hsA : s A = A := hform_conj s L hs hL u u
  have hc : s (half * A) = half * A := by rw [map_mul, hh, hsA]
  have hp : partner s L Li half z w = u - (half * A) • w := rfl
  have e1 : hform s L w (u - (half * A) • w) = 1 := by
    rw [hform_sub_right, hform_smul_right, hwu, hw]; ring
  have e2 : hform s L (u - (half * A) • w) w = 1 := by
    rw [hform_sub_left, hform_smul_left, huw, hw]; ring
  have e3 : hform s L u (u - (half * A) • w) = A - half * A := by
    rw [hform_sub_right, hform_smul_right, huw, ← hA]; ring
  rw [hp]
  refine ⟨e1, e2, ?_⟩
  rw [hform_sub_left, hform_smul_left, e1, e3, hc]
  linear_combination (-A) * h2

theorem hform_single (s : K →+* K) (L : Matrix (Fin N) (Fin N) K) (i j : Fin N) :
    hform s L (Pi.single i 1) (Pi.single j 1) = L i j := by
  simp [hform_eq, dotProduct, Pi.single_apply, apply_ite s]

variable [TopologicalSpace K] [IsTopologicalRing K]

theorem continuous_hform (s : K →+* K) (hs : Continuous s) (L : Matrix (Fin N) (Fin N) K) :
    Continuous fun p : (Fin N → K) × (Fin N → K) => hform s L p.1 p.2 := by
  unfold hform
  refine continuous_finsetSum _ fun i _ => continuous_finsetSum _ fun j _ => ?_
  have h1 : Continuous fun p : (Fin N → K) × (Fin N → K) => p.1 i :=
    (continuous_apply i).comp continuous_fst
  have h2 : Continuous fun p : (Fin N → K) × (Fin N → K) => p.2 j :=
    (continuous_apply j).comp continuous_snd
  exact ((hs.comp h1).mul continuous_const).mul h2

theorem continuous_dualV (s : K →+* K) (hs : Continuous s) (Li : Matrix (Fin N) (Fin N) K) :
    Continuous (dualV s Li) := by
  refine continuous_pi fun i => hs.comp ?_
  exact (continuous_apply i).comp (continuous_id.matrix_vecMul continuous_const)

theorem continuous_partner (s : K →+* K) (hs : Continuous s) (L Li : Matrix (Fin N) (Fin N) K)
    (half : K) : Continuous fun p : (Fin N → K) × (Fin N → K) => partner s L Li half p.1 p.2 := by
  have hd : Continuous fun p : (Fin N → K) × (Fin N → K) => dualV s Li p.1 :=
    (continuous_dualV s hs Li).comp continuous_fst
  have hf : Continuous fun p : (Fin N → K) × (Fin N → K) =>
      hform s L (dualV s Li p.1) (dualV s Li p.1) :=
    (continuous_hform s hs L).comp (hd.prodMk hd)
  unfold partner
  exact hd.sub ((continuous_const.mul hf).smul continuous_snd)

end Alg

section Tens

variable {F E : Type} [Field F] [Field E] [Algebra F E]

theorem sigR_invol (R : Type) [CommRing R] [Algebra F R] (σ : E →ₐ[F] E) (hσ : ∀ x, σ (σ x) = x)
    (a : R ⊗[F] E) : sigR R σ (sigR R σ a) = a := by
  induction a with
  | tmul r e => simp [sigR, hσ]
  | add x y hx hy => simp [map_add (f := _), hx, hy]

end Tens

def frame (E : Type) [Field E] (M : ℕ) : Fin 2 → Fin (M + 2) → E :=
  ![Pi.single 0 1, Pi.single (Fin.succ 0) 1]

theorem gram_frame {F E : Type} [Field F] [Field E] [Algebra F E] (σ : E →ₐ[F] E) {M : ℕ}
    (J : Matrix (Fin M) (Fin M) E) :
    gramE σ (hypJ J) (frame E M) = !![0, 1; 1, 0] := by
  have h : ∀ i j : Fin (M + 2), hE σ (hypJ J) (Pi.single i 1) (Pi.single j 1) = hypJ J i j :=
    fun i j => hform_single (σ : E →+* E) (hypJ J) i j
  ext a b
  fin_cases a <;> fin_cases b
  · exact (h 0 0).trans (by simp [hypJ])
  · exact (h 0 (Fin.succ 0)).trans (by simp [hypJ])
  · exact (h (Fin.succ 0) 0).trans (by simp [hypJ])
  · exact (h (Fin.succ 0) (Fin.succ 0)).trans (by simp [hypJ])

theorem eOne_eq_frame {F E : Type} [Field F] [Field E] [Algebra F E] (R : Type) [CommRing R] [Algebra F R]
    (M : ℕ) (a : Fin 1) :
    eOne (R ⊗[F] E) (M + 1) a = ratTup R (frame E M) 0 := by
  funext i
  refine Fin.cases ?_ (fun j => ?_) i
  · simp [eOne, ratTup, frame]
  · simp [eOne, ratTup, frame, Pi.single_apply, Fin.succ_ne_zero]

section Core

variable {K : Type} [CommRing K] [TopologicalSpace K] [IsTopologicalRing K] {N : ℕ}

theorem continuous_pair (s : K →+* K) (hs : Continuous s) (L Li : Matrix (Fin N) (Fin N) K) (half : K) :
    Continuous fun p : (Fin 1 → Fin N → K) × (Fin 1 → Fin N → K) =>
      (![p.1 0, partner s L Li half (p.2 0) (p.1 0)] : Fin 2 → Fin N → K) := by
  have c1 : Continuous fun p : (Fin 1 → Fin N → K) × (Fin 1 → Fin N → K) => p.1 0 :=
    (continuous_apply 0).comp continuous_fst
  have c2 : Continuous fun p : (Fin 1 → Fin N → K) × (Fin 1 → Fin N → K) => p.2 0 :=
    (continuous_apply 0).comp continuous_snd
  have c3 := (continuous_partner s hs L Li half).comp (c2.prodMk c1)
  refine continuous_pi fun i => ?_
  fin_cases i
  · exact c1
  · exact c3

theorem gram_pair (s : K →+* K) (L : Matrix (Fin N) (Fin N) K) (w p : Fin N → K)
    (h00 : hform s L w w = 0) (h01 : hform s L w p = 1) (h10 : hform s L p w = 1)
    (h11 : hform s L p p = 0) (a b : Fin 2) :
    hform s L ((![w, p] : Fin 2 → Fin N → K) a) ((![w, p] : Fin 2 → Fin N → K) b) =
      (!![0, 1; 1, 0] : Matrix (Fin 2) (Fin 2) K) a b := by
  fin_cases a <;> fin_cases b
  · exact h00
  · exact h01
  · exact h10
  · exact h11

theorem iwa_core {H : Type} [Group H] [TopologicalSpace H] [IsTopologicalGroup H]
    (s : K →+* K) (hsc : Continuous s) (hs : ∀ x, s (s x) = x) (L Li : Matrix (Fin N) (Fin N) K)
    (hL : ∀ i j, s (L j i) = L i j) (hLi : Li * L = 1) (half : K) (hh : s half = half)
    (h2 : 2 * half = 1) (act : H → (Fin N → K) → Fin N → K)
    (hmul : ∀ g k v, act (g * k) v = act g (act k v)) (hone : ∀ v, act 1 v = v)
    (hsmul : ∀ g (a : K) v, act g (a • v) = a • act g v)
    (hpres : ∀ g x y, hform s L (act g x) (act g y) = hform s L x y)
    (X : Fin 2 → Fin N → K) (hX : ∀ a b, hform s L (X a) (X b) = (!![0, 1; 1, 0] : Matrix (Fin 2) (Fin 2) K) a b)
    (Ω : Set (Fin 1 → Fin N → K)) (hΩ : IsCompact Ω)
    (hprim : ∀ y : Fin 1 → Fin N → K, (∃ z : Fin N → K, z ⬝ᵥ y 0 = 1) →
      ∃ (a : Kˣ) (z : Fin 1 → Fin N → K), (a : K) • y ∈ Ω ∧ z ∈ Ω ∧ z 0 ⬝ᵥ ((a : K) • y) 0 = 1)
    (hproper : ∀ Ω₂ : Set (Fin 2 → Fin N → K), IsCompact Ω₂ → ∃ C : Set H, IsCompact C ∧ ∀ Y ∈ Ω₂,
      (∀ a b, hform s L (Y a) (Y b) = (!![0, 1; 1, 0] : Matrix (Fin 2) (Fin 2) K) a b) →
        ∃ c ∈ C, ∀ i, act c (X i) = Y i) :
    ∃ C : Set H, IsCompact C ∧ ∀ h : H, ∃ c ∈ C, ∃ a : Kˣ, act (h * c⁻¹) (X 0) = (a : K) • X 0 := by
  obtain ⟨C₀, hC₀, hprop⟩ := hproper _ ((hΩ.prod hΩ).image (continuous_pair s hsc L Li half))
  refine ⟨Inv.inv '' C₀, hC₀.image continuous_inv, fun h => ?_⟩
  have hG00 : hform s L (act h⁻¹ (X 0)) (act h⁻¹ (X 0)) = 0 := by
    rw [hpres, hX]; rfl
  have hG10 : hform s L (act h⁻¹ (X 1)) (act h⁻¹ (X 0)) = 1 := by
    rw [hpres, hX]; rfl
  have hunim : ∃ z : Fin N → K, z ⬝ᵥ (fun _ : Fin 1 => act h⁻¹ (X 0)) 0 = 1 := by
    refine ⟨(fun i => s (act h⁻¹ (X 1) i)) ᵥ* L, ?_⟩
    rw [← Matrix.dotProduct_mulVec, ← hform_eq]
    exact hG10
  obtain ⟨a, z, hay, hz, hza⟩ := hprim (fun _ => act h⁻¹ (X 0)) hunim
  have hww : hform s L ((a : K) • act h⁻¹ (X 0)) ((a : K) • act h⁻¹ (X 0)) = 0 := by
    rw [hform_smul_left, hform_smul_right, hG00, mul_zero, mul_zero]
  have hza' : z 0 ⬝ᵥ ((a : K) • act h⁻¹ (X 0)) = 1 := hza
  obtain ⟨p1, p2, p3⟩ := partner_spec s L Li half hs hL hLi hh h2 (z 0) ((a : K) • act h⁻¹ (X 0)) hww hza'
  have hmem : (![((a : K) • act h⁻¹ (X 0)), partner s L Li half (z 0) ((a : K) • act h⁻¹ (X 0))] : Fin 2 → Fin N → K)
      ∈ (fun p : (Fin 1 → Fin N → K) × (Fin 1 → Fin N → K) =>
      (![p.1 0, partner s L Li half (p.2 0) (p.1 0)] : Fin 2 → Fin N → K)) '' (Ω ×ˢ Ω) :=
    ⟨((a : K) • (fun _ => act h⁻¹ (X 0)), z), ⟨hay, hz⟩, rfl⟩
  obtain ⟨c, hc, hcY⟩ := hprop _ hmem (gram_pair s L _ _ hww p1 p2 p3)
  refine ⟨c⁻¹, ⟨c, hc, rfl⟩, a, ?_⟩
  have h0 : act c (X 0) = (a : K) • act h⁻¹ (X 0) := hcY 0
  rw [inv_inv, hmul, h0, hsmul, ← hmul, mul_inv_cancel, hone]

end Core

def actV {F E : Type} [Field F] [Field E] [Algebra F E] (R : Type) [CommRing R] [Algebra F R]
    (σ : E →ₐ[F] E) {N : ℕ} (J : Matrix (Fin N) (Fin N) E) (g : HA R σ J) (v : Fin N → R ⊗[F] E) :
    Fin N → R ⊗[F] E :=
  (HA.mat R σ J g : Matrix (Fin N) (Fin N) (R ⊗[F] E)).mulVec v

theorem map_hyp {E K : Type} [Field E] [CommRing K] (φ : E →+* K) :
    (!![0, 1; 1, 0] : Matrix (Fin 2) (Fin 2) E).map φ = !![0, 1; 1, 0] := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp

theorem iwasawa : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (M : ℕ) (J : Matrix (Fin M) (Fin M) E), IsHermND σ J → ∃ C : Set (HA (AF F) σ (hypJ J)), IsCompact C ∧ ∀ h : HA (AF F) σ (hypJ J), ∃ c ∈ C, ∃ a : (AF F ⊗[F] E)ˣ, actW (AF F) σ _ (h * c⁻¹) (eOne _ (M + 1)) = (a : AF F ⊗[F] E) • eOne _ (M + 1) := by
  intro F E _ _ _ _ _ σ hCM M J hJ
  have hσ : ∀ x, σ (σ x) = x := by
    intro x
    obtain ⟨τ⟩ : Nonempty (E →+* ℂ) := inferInstance
    apply τ.injective
    rw [hCM.2.2.2, hCM.2.2.2, star_star]
  have hJ' : IsHermND σ (hypJ J) := (_root_.GlobalTheory.CompanionTheory.SW.BlockForm.blockForms_isHermND F E σ hCM M J hJ).1
  obtain ⟨⟨lc, sc, t2⟩, -⟩ := GlobalTheory.CompanionTheory.AdeleTop.adele_top F
  haveI := lc
  haveI := sc
  haveI := t2
  obtain ⟨hTG, -, -, -, -, hact⟩ := _root_.GlobalTheory.CompanionTheory.SW.TopH.topH_props F E σ hCM (M + 2) (hypJ J) hJ' (AF F)
  obtain ⟨hTR, -, -, -, hsc, -⟩ := _root_.GlobalTheory.CompanionTheory.SW.TopK.topTens_props F E σ hCM (AF F)
  haveI := hTG
  haveI := hTR
  obtain ⟨Ω, hΩ, hprim⟩ := _root_.GlobalTheory.CompanionTheory.SW.PrimA.unimodular_compact_mod_units F E σ hCM (M + 2)
  have hLh : ∀ i j, sigR (AF F) σ (JR (F := F) (AF F) (hypJ J) j i) = JR (F := F) (AF F) (hypJ J) i j := by
    intro i j
    simp only [JR, Matrix.map_apply, _root_.GlobalTheory.CompanionTheory.SW.TransUC.sigR_inclR, hJ'.1 i j]
  have hLi : ((hypJ J)⁻¹).map (inclR (F := F) (AF F)) * JR (F := F) (AF F) (hypJ J) = 1 := by
    have hu : IsUnit (hypJ J).det := isUnit_iff_ne_zero.mpr hJ'.2
    have h1 : ((hypJ J)⁻¹ * hypJ J).map (inclR (F := F) (AF F)) = 1 := by
      rw [Matrix.nonsing_inv_mul _ hu]
      exact Matrix.map_one _ (map_zero _) (map_one _)
    rw [← h1, Matrix.map_mul]
    rfl
  have hh : sigR (AF F) σ (inclR (F := F) (AF F) (1 / 2 : E)) = inclR (F := F) (AF F) (1 / 2 : E) := by
    have e : σ (1 / 2 : E) = 1 / 2 := by rw [map_div₀, map_one, map_ofNat]
    rw [_root_.GlobalTheory.CompanionTheory.SW.TransUC.sigR_inclR, e]
  have h2 : 2 * inclR (F := F) (AF F) (1 / 2 : E) = 1 := by
    have h3 : inclR (F := F) (AF F) (2 * (1 / 2 : E)) = 1 := by
      rw [mul_one_div_cancel two_ne_zero, map_one]
    rw [map_mul, map_ofNat] at h3
    exact h3
  have hdet : (gramE σ (hypJ J) (frame E M)).det ≠ 0 := by
    rw [gram_frame, Matrix.det_fin_two_of]
    simp
  have hmapG : (gramE σ (hypJ J) (frame E M)).map (inclR (F := F) (AF F)) = !![0, 1; 1, 0] := by
    rw [gram_frame, map_hyp]
  have hX : ∀ a b, hform (sigR (AF F) σ) (JR (F := F) (AF F) (hypJ J)) (ratTup (AF F) (frame E M) a)
      (ratTup (AF F) (frame E M) b) = (!![0, 1; 1, 0] : Matrix (Fin 2) (Fin 2) (AF F ⊗[F] E)) a b := by
    intro a b
    rw [← hmapG, ← _root_.GlobalTheory.CompanionTheory.SW.TransUC.gramR_ratTup]
    rfl
  obtain ⟨C, hC, hCh⟩ := iwa_core (H := HA (AF F) σ (hypJ J)) (sigR (AF F) σ) hsc
    (sigR_invol (AF F) σ hσ) (JR (F := F) (AF F) (hypJ J)) _ hLh hLi _ hh h2
    (actV (AF F) σ (hypJ J))
    (fun g k v => congrFun ((hact 1).2.2.1 g k (fun _ => v)) 0)
    (fun v => congrFun ((hact 1).2.1 (fun _ => v)) 0)
    (fun g a v => Matrix.mulVec_smul _ a v)
    (fun g x y => congrFun (congrFun ((hact 2).2.2.2 g ![x, y]) 0) 1)
    (ratTup (AF F) (frame E M)) hX Ω hΩ hprim
    (fun Ω₂ hΩ₂ => by
      obtain ⟨C, hC, hp⟩ := _root_.GlobalTheory.CompanionTheory.SW.Proper.compact_gram_fibre F E σ hCM (M + 2) (hypJ J) hJ' 2 (frame E M) hdet Ω₂ hΩ₂
      refine ⟨C, hC, fun Y hY hg => ?_⟩
      obtain ⟨c, hc, hcY⟩ := hp Y hY (by
        rw [hmapG]
        funext a b
        exact hg a b)
      exact ⟨c, hc, fun i => congrFun hcY i⟩)
  refine ⟨C, hC, fun h => ?_⟩
  obtain ⟨c, hc, a, hca⟩ := hCh h
  refine ⟨c, hc, a, funext fun i => ?_⟩
  have e1 := eOne_eq_frame (F := F) (E := E) (AF F) M i
  show actV (AF F) σ (hypJ J) (h * c⁻¹) (eOne _ (M + 1) i) = (a : AF F ⊗[F] E) • eOne _ (M + 1) i
  rw [e1]
  exact hca

end GlobalTheory.CompanionTheory.SW.Iwa
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HyperbolicUnitaryStabilizerCocompact =====
