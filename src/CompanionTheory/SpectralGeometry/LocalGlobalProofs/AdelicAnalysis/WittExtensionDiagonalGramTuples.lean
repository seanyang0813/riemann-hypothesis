module

public import Formalism.UnipotentAdelicQuotients.SWXSDefs
public import Development.WeilBound.CoreStatements.ThetaDilations.ParAlg
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.UnitChoice
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.StLamOf
public import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.OneVectorCcOfSiegelWeil

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: CompanionTheory.AutomorphicTheory.ThetaDilations.HfSubSmul, CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ExistsNormOneUnitShift, CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.WittExtensionDiagonalGramTuples

-- ===== clump member: CompanionTheory.AutomorphicTheory.ThetaDilations.HfSubSmul =====
-- clump-header: {"m": "CompanionTheory.AutomorphicTheory.ThetaDilations.HfSubSmul", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.SWXSDefs\npublic import Development.WeilBound.CoreStatements.ThetaDilations.ParAlg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open HeckeCharacterZeroLocus.SiegelWeilU GlobalTheory.CompanionTheory.SW NumberField IsDedekindDomain MeasureTheory Topology
open scoped TensorProduct ENNReal NNReal Matrix

noncomputable section

namespace CompanionTheory.PlacePermOperatorBicommutantSpan

open PositivityTheory.PlacePermOperatorBicommutantSpan (hform_eq)

section Ring

variable {S : Type} [CommRing S] {s : S →+* S} {M : ℕ} {J : Matrix (Fin M) (Fin M) S}

theorem hf_conj (hs : ∀ x, s (s x) = x) (hJ : cT s J = J) (x y : Fin M → S) : s (hform s J x y) = hform s J y x := by
  have : ∀ i j, s (J j i) = J i j := fun i j => congrFun (congrFun hJ i) j

  simp only [hform, map_sum, map_mul, hs, this]
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring

theorem hf_sub_smul (x y z : Fin M → S) (c : S) :
    hform s J z (x - c • y) = hform s J z x - c * hform s J z y ∧
      hform s J (x - c • y) z = hform s J x z - s c * hform s J y z := by
  constructor <;>
    simp only [hform, Pi.sub_apply, Pi.smul_apply, smul_eq_mul, map_sub, map_mul, Finset.mul_sum,
      ← Finset.sum_sub_distrib] <;>
    exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring

theorem hf_U {g : Matrix (Fin M) (Fin M) S} (hg : cT s g * J * g = J) (x y : Fin M → S) :
    hform s J (g *ᵥ x) (g *ᵥ y) = hform s J x y := by
  have e : (s : S → S) ∘ (g *ᵥ x) = (s ∘ x) ᵥ* cT s g := by
    funext i; simp [Matrix.vecMul, Matrix.mulVec, dotProduct, cT, mul_comm]
  rw [hform_eq, hform_eq, e, Matrix.dotProduct_mulVec, Matrix.vecMul_vecMul, Matrix.vecMul_vecMul, ← Matrix.mul_assoc, hg]

theorem quasi (hs : ∀ x, s (s x) = x) (hJ : cT s J = J) (u : Fin M → S) (c : S)
    (hc : c + s c = c * s c * hform s J u u) :
    ∃ g ∈ UJ s J, ∀ z, g.val *ᵥ z = z - (c * hform s J u z) • u := by
  let T : S → Matrix (Fin M) (Fin M) S := fun c => 1 - c • Matrix.vecMulVec u ((s ∘ u) ᵥ* J)
  have hT : ∀ c z, T c *ᵥ z = z - (c * hform s J u z) • u := fun c z => by
    simp only [T, Matrix.sub_mulVec, Matrix.one_mulVec, Matrix.smul_mulVec, Matrix.vecMulVec_mulVec, hform_eq, mul_smul]
    simp
  have hm : ∀ a b, a + b = a * b * hform s J u u → T a * T b = 1 := fun a b h => by
    refine Matrix.mulVec_injective (funext fun z => ?_)
    rw [← Matrix.mulVec_mulVec, hT, hT, (hf_sub_smul _ _ _ _).1, Matrix.one_mulVec, sub_sub, ← add_smul,
      show b * hform s J u z + a * (hform s J u z - b * hform s J u z * hform s J u u) = 0 by
        linear_combination (hform s J u z) * h, zero_smul, sub_zero]
  refine ⟨⟨T c, T (s c), hm _ _ hc, hm _ _ (by rw [add_comm, hc]; ring)⟩, ?_, hT c⟩
  have hb : ∀ (A : Matrix (Fin M) (Fin M) S) i j, hform s A (Pi.single i 1) (Pi.single j 1) = A i j := fun A i j => by
    simp [hform, Pi.single_apply, apply_ite s]
  have hp : ∀ x y, hform s (cT s (T c) * J * T c) x y = hform s J (T c *ᵥ x) (T c *ᵥ y) := fun x y => by
    have e : (s : S → S) ∘ (T c *ᵥ x) = (s ∘ x) ᵥ* cT s (T c) := by
      funext i; simp [Matrix.vecMul, Matrix.mulVec, dotProduct, cT, mul_comm]
    rw [hform_eq, hform_eq, e, Matrix.dotProduct_mulVec, Matrix.vecMul_vecMul, Matrix.vecMul_vecMul, Matrix.mul_assoc]
  show cT s (T c) * J * T c = J
  ext i j
  rw [← hb (cT s (T c) * J * T c), ← hb J, hp, hT, hT, (hf_sub_smul _ _ _ _).1, (hf_sub_smul _ _ _ _).2, (hf_sub_smul _ _ _ _).2, map_mul,
    hf_conj hs hJ]
  linear_combination (-(hform s J (Pi.single i 1) u * hform s J u (Pi.single j 1))) * hc

end Ring

theorem refl_fix : ∀ (S : Type) [CommRing S] (s : S →+* S), (∀ z, s (s z) = z) → ∀ (M : ℕ) (J : Matrix (Fin M) (Fin M) S), cT s J = J → ∀ (x y : Fin M → S) (lam : S), lam * s lam = 1 → hform s J y y = hform s J x x → IsUnit (hform s J x x) → IsUnit (hform s J x x - s lam * hform s J y x) → ∃ g ∈ UJ s J, (g : Matrix (Fin M) (Fin M) S) *ᵥ x = y ∧ ∀ z, hform s J x z = 0 → hform s J y z = 0 → (g : Matrix (Fin M) (Fin M) S) *ᵥ z = z := by
  intro S _ s hs M J hJ x y lam hl hy hb hc
  obtain ⟨γ, hγ⟩ := hc.exists_left_inv
  obtain ⟨β, hβ⟩ := hb.exists_left_inv
  have hγs := congrArg s hγ
  have hβs := congrArg s hβ
  simp only [map_mul, map_sub, hs, hf_conj hs hJ, map_one] at hγs hβs
  obtain ⟨g₁, h1, e1⟩ := quasi hs hJ (x - lam • y) γ (by
    rw [(hf_sub_smul _ _ _ _).1, (hf_sub_smul _ _ _ _).2, (hf_sub_smul _ _ _ _).2, hy]
    linear_combination (-s γ) * hγ - γ * hγs - γ * s γ * hform s J x x * hl)
  obtain ⟨g₂, h2, e2⟩ := quasi hs hJ y ((1 - s lam) * β) (by
    rw [map_mul, map_sub, map_one, hs, hy]
    have hββ : s β = β := by linear_combination β * hβs - s β * hβ
    rw [hββ]
    linear_combination (-((1 - s lam) * (1 - lam) * β)) * hβ - β * hl)
  refine ⟨g₂ * g₁, Subgroup.mul_mem _ h2 h1, ?_, fun z hx hy' => ?_⟩
  · rw [Units.val_mul, ← Matrix.mulVec_mulVec, e1, (hf_sub_smul _ _ _ _).2, hγ, one_smul, sub_sub_cancel,
      Matrix.mulVec_smul, e2, hy, mul_assoc, hβ, mul_one, sub_smul, one_smul, sub_sub_cancel, smul_smul, hl, one_smul]
  · rw [Units.val_mul, ← Matrix.mulVec_mulVec, e1, (hf_sub_smul _ _ _ _).2, hx, hy']
    simp [e2, hy']

section Tuples

variable {S : Type} [CommRing S] {s : S →+* S} {M n : ℕ} {J : Matrix (Fin M) (Fin M) S}

theorem witt_diag (hs : ∀ x, s (s x) = x) (hJ : cT s J = J) (D : Fin n → S) (hD : ∀ i, IsUnit (D i))
    (hl : ∀ i t, ∃ lam, lam * s lam = 1 ∧ IsUnit (D i - s lam * t)) (X Y : Fin n → Fin M → S)
    (hX : ∀ a b, hform s J (X a) (X b) = Matrix.diagonal D a b)
    (hY : ∀ a b, hform s J (Y a) (Y b) = Matrix.diagonal D a b) : ∃ g ∈ UJ s J, ∀ a, g.val *ᵥ X a = Y a := by
  classical
  suffices h : ∀ T : Finset (Fin n), ∃ g ∈ UJ s J, ∀ a ∈ T, g.val *ᵥ X a = Y a from
    (h Finset.univ).imp fun g hg => ⟨hg.1, fun a => hg.2 a (Finset.mem_univ a)⟩
  intro T
  induction T using Finset.induction_on with
  | empty => exact ⟨1, Subgroup.one_mem _, by simp⟩
  | insert k T hk ih =>
    obtain ⟨g, hg, e⟩ := ih
    have hx : hform s J (g.val *ᵥ X k) (g.val *ᵥ X k) = D k := by rw [hf_U hg, hX, Matrix.diagonal_apply_eq]
    obtain ⟨lam, l1, l2⟩ := hl k (hform s J (Y k) (g.val *ᵥ X k))
    obtain ⟨g', hg', e1, e2⟩ := refl_fix S s hs M J hJ (g.val *ᵥ X k) (Y k) lam l1
      (by rw [hx, hY, Matrix.diagonal_apply_eq]) (hx ▸ hD k) (hx ▸ l2)
    refine ⟨g' * g, Subgroup.mul_mem _ hg' hg, fun a ha => ?_⟩
    rw [Units.val_mul, ← Matrix.mulVec_mulVec]
    rcases Finset.mem_insert.1 ha with rfl | ha
    · exact e1
    · have hne : k ≠ a := fun h => hk (h ▸ ha)
      rw [e2 _ (by rw [hf_U hg, hX, Matrix.diagonal_apply_ne _ hne]) (by rw [e a ha, hY, Matrix.diagonal_apply_ne _ hne]),
        e a ha]

end Tuples

theorem cT_JR' {F E : Type} [Field F] [Field E] [Algebra F E] {σ : E →ₐ[F] E} (R : Type) [CommRing R] [Algebra F R]
    {M : ℕ} {J : Matrix (Fin M) (Fin M) E} (hJ : IsHermND σ J) : cT (sigR R σ) (JR R J) = JR R J := by
  ext i j; simp [cT, JR, sigR, inclR, hJ.1]

end CompanionTheory.PlacePermOperatorBicommutantSpan
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.AutomorphicTheory.ThetaDilations.HfSubSmul =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ExistsNormOneUnitShift =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ExistsNormOneUnitShift", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.UnitChoice\npublic import Formalism.UnipotentAdelicQuotients.SWXSDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.StLamOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd\n\n"}
section -- clump:auto
@[expose] public section

open HeckeCharacterZeroLocus.SiegelWeilU GlobalTheory.CompanionTheory.SW NumberField IsDedekindDomain MeasureTheory Topology
open scoped TensorProduct ENNReal NNReal Matrix

namespace GlobalTheory.CompanionTheory.SW.LamUnit

theorem conj_ne_id {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    {σ : E →ₐ[F] E} (h : IsCMExt F E σ) : σ ≠ AlgHom.id F E := by
  intro hσ
  obtain ⟨τ⟩ : Nonempty (E →+* ℂ) := inferInstance
  have := h.2.1
  apply IsTotallyComplex.complexEmbedding_not_isReal τ
  rw [ComplexEmbedding.isReal_iff]
  ext x
  have := h.2.2.2 τ x
  rw [hσ] at this
  simpa [ComplexEmbedding.conjugate_coe_eq] using this.symm

theorem fixed_iff {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    {σ : E →ₐ[F] E} (h : IsCMExt F E σ) (a : E) : σ a = a ↔ a ∈ (algebraMap F E).range := by
  constructor
  · intro ha
    by_contra hnot
    have hli : LinearIndependent F ![(1 : E), a] := by
      rw [LinearIndependent.pair_iff]
      intro s t hst
      have ht : t = 0 := by
        by_contra ht
        apply hnot
        refine ⟨-(s / t), ?_⟩
        have ht' : algebraMap F E t ≠ 0 := (map_ne_zero _).2 ht
        have h1 : algebraMap F E s + algebraMap F E t * a = 0 := by
          simpa [Algebra.smul_def] using hst
        rw [map_neg, map_div₀]
        field_simp
        linear_combination -h1
      subst ht
      refine ⟨?_, rfl⟩
      simpa using hst
    have hspan := hli.span_eq_top_of_card_eq_finrank (by simp [h.2.2.1])
    apply conj_ne_id h
    have hlin : σ.toLinearMap = (AlgHom.id F E).toLinearMap := by
      refine LinearMap.ext_on hspan ?_
      rintro _ ⟨i, rfl⟩
      fin_cases i
      · simp
      · simpa using ha
    ext x
    exact LinearMap.congr_fun hlin x
  · rintro ⟨c, rfl⟩
    exact σ.commutes c

theorem exists_norm_one_sub_isUnit : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E]
    [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (R : Type) [CommRing R] [Algebra F R],
    PIW.AdelicOrbitU.UnitChoice R → ∀ (t : R ⊗[F] E) (β : Rˣ), ∃ lam : R ⊗[F] E,
      lam * sigR R σ lam = 1 ∧ IsUnit (algebraMap R (R ⊗[F] E) (β : R) - sigR R σ lam * t) := by
  intro F E _ _ _ _ _ σ hcm R _ _ hU t β
  obtain ⟨lam, h1, h2⟩ := PIW.AdelicOrbitU.stLam F E σ hcm.2.2.1 (fixed_iff hcm) R hU
    (algebraMap R (R ⊗[F] E) ((β⁻¹ : Rˣ) : R) * t) 1 one_ne_zero
  refine ⟨lam, h1, ?_⟩
  have hb : IsUnit (algebraMap R (R ⊗[F] E) (β : R)) := β.isUnit.map _
  have hinv : algebraMap R (R ⊗[F] E) (β : R) * algebraMap R (R ⊗[F] E) ((β⁻¹ : Rˣ) : R) = 1 := by
    rw [← map_mul, Units.mul_inv, map_one]
  have key : algebraMap R (R ⊗[F] E) (β : R) - sigR R σ lam * t =
      algebraMap R (R ⊗[F] E) (β : R) * (algebraMap F (R ⊗[F] E) 1 -
        Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sigR R σ lam * (algebraMap R (R ⊗[F] E) ((β⁻¹ : Rˣ) : R) * t)) := by
    have hs : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sigR R σ lam = sigR R σ lam := rfl
    rw [map_one, hs]
    linear_combination (sigR R σ lam * t) * hinv
  rw [key]
  exact hb.mul h2

end GlobalTheory.CompanionTheory.SW.LamUnit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ExistsNormOneUnitShift =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.WittExtensionDiagonalGramTuples =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.WittExtensionDiagonalGramTuples", "h": "module\n\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnitaryOrbits.UnitChoice\npublic import CompanionTheory.AutomorphicTheory.ThetaDilations.HfSubSmul\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ExistsNormOneUnitShift\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.OneVectorCcOfSiegelWeil\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open HeckeCharacterZeroLocus.SiegelWeilU GlobalTheory.CompanionTheory.SW NumberField IsDedekindDomain MeasureTheory Topology
open scoped TensorProduct ENNReal NNReal Matrix

namespace GlobalTheory.CompanionTheory.SW.WittDiag

theorem trans_diag : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (R : Type) [CommRing R] [Algebra F R], PIW.AdelicOrbitU.UnitChoice R → ∀ (M : ℕ) (J : Matrix (Fin M) (Fin M) E), IsHermND σ J → ∀ (n : ℕ) (D : Fin n → Rˣ) (X Y : Fin n → Fin M → R ⊗[F] E), gramR R σ J X = Matrix.diagonal (fun i => algebraMap R (R ⊗[F] E) (D i : R)) → gramR R σ J Y = gramR R σ J X → ∃ h : HA R σ J, actW R σ J h X = Y := by
  intro F E _ _ _ _ _ σ hcm R _ _ hU M J hJ n D X Y hX hY
  obtain ⟨g, hg, e⟩ := CompanionTheory.PlacePermOperatorBicommutantSpan.witt_diag (GlobalTheory.GaussMean.OneVec.sigR_sigR R hcm) (CompanionTheory.PlacePermOperatorBicommutantSpan.cT_JR' R hJ) _
    (fun i => (D i).isUnit.map _)
    (fun i t => LamUnit.exists_norm_one_sub_isUnit F E σ hcm R hU t (D i)) X Y
    (fun a b => congrFun (congrFun hX a) b)
    fun a b => congrFun (congrFun (hY.trans hX) a) b
  exact ⟨⟨g, hg⟩, funext e⟩

end GlobalTheory.CompanionTheory.SW.WittDiag
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.WittExtensionDiagonalGramTuples =====
