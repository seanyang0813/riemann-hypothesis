module

public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.IntMuCD
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.DensOn
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.ConjTransposeEqOfInG
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.TriDens
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.PmatIsHermitian
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.KFacts
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.UnGrpHaarProbExists
public import Mathlib.MeasureTheory.Measure.Prod
public import Mathlib.MeasureTheory.Measure.WithDensity
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.VolUFactProdMulLe
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.VolUDensity
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ExpInPPosDef
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.PolarBasic
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.HighestWeights.ContinuousRepresentations.Blocks

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.ContinuousMatrixExpCompact, ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KDensA, ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KDensB, ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KDensC, ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KdMeasImageProd, ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.JacobianNearOneOfSmall

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.ContinuousMatrixExpCompact =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.ContinuousMatrixExpCompact", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.IntMuCD\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.DensOn\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.ConjTransposeEqOfInG\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ExpInPPosDef\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.PolarBasic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset Matrix MeasureTheory

namespace ReciprocityTheory.ChartRestriction.DS

open ReciprocityTheory.ChartRestriction.DS.S7

variable {n : ℕ}

theorem compactMatrix_off_block {ε : Fin n → Bool} (w : KCo ε) {a b : Fin n} (h : ε a ≠ ε b) :
    kMat w a b = 0 := by
  have hab : a ≠ b := fun e => h (e ▸ rfl)
  unfold kMat
  rw [if_neg hab, dif_neg (fun h' => h h'.2), dif_neg (fun h' => h h'.2.symm)]

theorem compactMatrix_conjTranspose {ε : Fin n → Bool} (w : KCo ε) : (kMat w)ᴴ = -kMat w := by
  ext a b
  change star (kMat w b a) = -(kMat w a b)
  by_cases hab : a = b
  · subst hab
    simp only [kMat, if_true]
    simp
  · have hba : b ≠ a := Ne.symm hab
    by_cases h1 : b < a ∧ ε a = ε b
    · have h2 : ¬ (a < b ∧ ε b = ε a) := fun h => lt_asymm h.1 h1.1
      simp only [kMat, if_neg hab, if_neg hba, dif_pos h1, dif_neg h2, star_neg, star_star]
    · by_cases h2 : a < b ∧ ε b = ε a
      · simp only [kMat, if_neg hab, if_neg hba, dif_pos h2, dif_neg h1, neg_neg]
      · simp only [kMat, if_neg hab, if_neg hba, dif_neg h2, dif_neg h1, star_zero, neg_zero]

theorem compactMatrix_comm_signature {ε : Fin n → Bool} (w : KCo ε) : kMat w * Jm ε = Jm ε * kMat w := by
  ext a b
  simp only [Jm, mul_diagonal, diagonal_mul]
  by_cases h : ε a = ε b
  · rw [h, mul_comm]
  · rw [compactMatrix_off_block w h]; simp

theorem compactMatrix_inK {ε : Fin n → Bool} (w : KCo ε) : inK ε (kMat w) := by
  refine ⟨?_, compactMatrix_comm_signature w⟩
  unfold inG
  rw [compactMatrix_conjTranspose, Matrix.neg_mul, compactMatrix_comm_signature, neg_add_cancel]

theorem exists_compact_exp {ε : Fin n → Bool} (w : KCo ε) :
    ∃ k : KG ε, toMK k = NormedSpace.exp (kMat w) :=
  exists_toMK (exp_mem_Kset (compactMatrix_inK w))

theorem compactMatrix_injective (ε : Fin n → Bool) : Function.Injective (kMat (ε := ε)) := by
  intro w w' h
  have h1 : ∀ a b, kMat w a b = kMat w' a b := fun a b => by rw [h]
  refine Prod.ext (funext fun a => ?_) (funext fun ab => ?_)
  · have h2 := congrArg Complex.im (h1 a a)
    simpa [kMat] using h2
  · have h2 := h1 ab.1.1 ab.1.2
    have hne : ab.1.1 ≠ ab.1.2 := ne_of_gt ab.2.1
    simp only [kMat, if_neg hne, dif_pos ab.2] at h2
    exact h2

theorem compactMatrix_continuous (ε : Fin n → Bool) :
    Continuous (fun w : KCo ε => (kMat w : Matrix (Fin n) (Fin n) ℂ)) := by
  refine continuous_pi fun a => continuous_pi fun b => ?_
  unfold kMat
  by_cases h0 : a = b
  · simp only [h0, if_true]; fun_prop
  · simp only [if_neg h0]
    by_cases h1 : b < a ∧ ε a = ε b
    · simp only [dif_pos h1]; fun_prop
    · simp only [dif_neg h1]
      by_cases h2 : a < b ∧ ε b = ε a
      · simp only [dif_pos h2]; fun_prop
      · simp only [dif_neg h2]; fun_prop

theorem compactMatrix_zero (ε : Fin n → Bool) : kMat (0 : KCo ε) = 0 := by
  ext a b
  simp only [kMat]
  split_ifs <;> simp

theorem continuous_matrix_exp_compact : Continuous (NormedSpace.exp : Matrix (Fin n) (Fin n) ℂ → _) := by
  letI : NormedRing (Matrix (Fin n) (Fin n) ℂ) := Matrix.linftyOpNormedRing
  letI : NormedAlgebra ℂ (Matrix (Fin n) (Fin n) ℂ) := Matrix.linftyOpNormedAlgebra
  exact continuous_iff_continuousAt.2 fun x => (NormedSpace.exp_analytic (𝕂 := ℂ) x).continuousAt

theorem exists_exp_injOn_nhds_zero : ∃ U : Set (Matrix (Fin n) (Fin n) ℂ), IsOpen U ∧ (0 : Matrix (Fin n) (Fin n) ℂ) ∈ U ∧
    Set.InjOn (NormedSpace.exp : Matrix (Fin n) (Fin n) ℂ → _) U := by
  letI : NormedRing (Matrix (Fin n) (Fin n) ℂ) := Matrix.linftyOpNormedRing
  letI : NormedAlgebra ℂ (Matrix (Fin n) (Fin n) ℂ) := Matrix.linftyOpNormedAlgebra
  have h : HasStrictFDerivAt (NormedSpace.exp : Matrix (Fin n) (Fin n) ℂ → _)
      ((ContinuousLinearEquiv.refl ℂ (Matrix (Fin n) (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ →L[ℂ] _)) 0 := by
    rw [ContinuousLinearEquiv.coe_refl]
    exact hasStrictFDerivAt_exp_zero (𝕂 := ℂ)
  exact ⟨_, (h.toOpenPartialHomeomorph _).open_source, h.mem_toOpenPartialHomeomorph_source,
    (h.toOpenPartialHomeomorph _).injOn⟩

def expCompactMatrix {ε : Fin n → Bool} (w : KCo ε) : Fin n → Fin n → ℂ :=
  (NormedSpace.exp (kMat w) : Matrix (Fin n) (Fin n) ℂ)

theorem continuous_exp_compactMatrix (ε : Fin n → Bool) : Continuous (expCompactMatrix (ε := ε)) :=
  continuous_matrix_exp_compact.comp (compactMatrix_continuous ε)

theorem exp_compact_injOn (ε : Fin n → Bool) : ∃ δ > 0, Set.InjOn (expCompactMatrix (ε := ε)) {w | ‖w‖ < δ} := by
  obtain ⟨U, hU, h0, hinj⟩ := (exists_exp_injOn_nhds_zero (n := n))
  have hV : IsOpen ((fun w : KCo ε => (kMat w : Matrix (Fin n) (Fin n) ℂ)) ⁻¹' U) :=
    hU.preimage (compactMatrix_continuous ε)
  have h0V : (0 : KCo ε) ∈ (fun w : KCo ε => (kMat w : Matrix (Fin n) (Fin n) ℂ)) ⁻¹' U := by
    show kMat (0 : KCo ε) ∈ U
    rw [compactMatrix_zero]; exact h0
  obtain ⟨δ, hδ, hball⟩ := Metric.isOpen_iff.1 hV 0 h0V
  refine ⟨δ, hδ, fun w hw w' hw' h => compactMatrix_injective ε (hinj ?_ ?_ h)⟩
  · exact hball (by simpa using hw)
  · exact hball (by simpa using hw')

def expImageOfCompact {ε : Fin n → Bool} (B : Set (KCo ε)) : Set (KG ε) :=
  {k | ∃ w ∈ B, toMK k = NormedSpace.exp (kMat w)}

def compactToMatrixEntries (ε : Fin n → Bool) : KG ε → (Fin n → Fin n → ℂ) := fun k => toMK k

theorem measurableSet_exp_image {ε : Fin n → Bool} {B : Set (KCo ε)} (hB : MeasurableSet B)
    (hinj : Set.InjOn (expCompactMatrix (ε := ε)) B) : MeasurableSet (expImageOfCompact B) := by
  have hI : MeasurableSet (expCompactMatrix (ε := ε) '' B) :=
    hB.image_of_continuousOn_injOn (continuous_exp_compactMatrix ε).continuousOn hinj
  have hc : Continuous (compactToMatrixEntries ε) := (continuous_toM ε).comp continuous_subtype_val
  have hm : Measurable (compactToMatrixEntries ε) := hc.measurable
  have e : expImageOfCompact B = compactToMatrixEntries ε ⁻¹' (expCompactMatrix (ε := ε) '' B) := by
    ext k
    constructor
    · rintro ⟨w, hw, h⟩
      exact ⟨w, hw, h.symm⟩
    · rintro ⟨w, hw, h⟩
      exact ⟨w, hw, h.symm⟩
  rw [e]
  exact hm hI

theorem polarSet_product_eq {ε : Fin n → Bool} (B : Set (KCo ε)) (C : Set (PCoord ε → ℂ)) :
    polSet (B ×ˢ C) =
      (intMuCD_eM ε) ⁻¹' (intMuCD_pM ε '' (expImageOfCompact B ×ˢ C)) := by
  ext g
  constructor
  · rintro ⟨s, hs, hg⟩
    obtain ⟨k, hk⟩ := exists_compact_exp s.1
    refine ⟨(k, s.2), ⟨⟨s.1, hs.1, hk⟩, hs.2⟩, ?_⟩
    show toMK k * NormedSpace.exp (pmat s.2) = toM g
    rw [hk, hg]
  · rintro ⟨⟨k, z⟩, ⟨⟨w, hw, hk⟩, hz⟩, hg⟩
    refine ⟨(w, z), ⟨hw, hz⟩, ?_⟩
    have hg' : toMK k * NormedSpace.exp (pmat z) = toM g := hg
    rw [← hg', hk]

theorem polar_measure_product_eq {ε : Fin n → Bool} {B : Set (KCo ε)} {C : Set (PCoord ε → ℂ)}
    (hA : MeasurableSet (expImageOfCompact B)) (hC : MeasurableSet C) :
    muPolar ε (polSet (B ×ˢ C)) = (∫⁻ z in C, ENNReal.ofReal (Jac z)) * dk ε (expImageOfCompact B) := by
  let R := expImageOfCompact B ×ˢ C
  have hpolar : MeasurableEmbedding (intMuCD_pM ε) :=
    (show Topology.IsClosedEmbedding (intMuCD_pM ε) from polarM_isClosedEmbedding ε).measurableEmbedding
  have htoM : MeasurableEmbedding (intMuCD_eM ε) :=
    (show Topology.IsClosedEmbedding (intMuCD_eM ε) from isClosedEmbedding_toM ε).measurableEmbedding
  have hT : MeasurableSet (intMuCD_pM ε '' R) := hpolar.measurableSet_image.2 (hA.prod hC)
  have hrange : intMuCD_pM ε '' R ⊆ Set.range (intMuCD_eM ε) := by
    rintro _ ⟨kz, _, rfl⟩
    change polarM kz ∈ Set.range (fun g : UJ ε => toM g)
    rw [range_toM]
    exact polarM_inUJ kz
  rw [polarSet_product_eq]
  change Measure.comap (β := Fin n → Fin n → ℂ) (intMuCD_eM ε) (muPolarMat ε)
    ((intMuCD_eM ε) ⁻¹' (intMuCD_pM ε '' R)) = _
  rw [htoM.comap_apply, Set.image_preimage_eq_of_subset hrange]
  change (Measure.map (β := Fin n → Fin n → ℂ) (intMuCD_pM ε) ((dk ε).prod
    (volume.withDensity fun z => ENNReal.ofReal (Jac z)))) (intMuCD_pM ε '' R) = _
  rw [Measure.map_apply hpolar.measurable hT, Set.preimage_image_eq _ hpolar.injective,
    show R = expImageOfCompact B ×ˢ C from rfl, Measure.prod_prod, withDensity_apply _ hC, mul_comm]

end ReciprocityTheory.ChartRestriction.DS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.ContinuousMatrixExpCompact =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KDensA =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KDensA", "h": "module\n\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.HighestWeights.ContinuousRepresentations.Blocks\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.TriDens\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.PmatIsHermitian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.KFacts\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.UnGrpHaarProbExists\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset Matrix MeasureTheory Topology

namespace ReciprocityTheory.ChartRestriction.DS

open ReciprocityTheory.ChartRestriction.DS.S7

variable {n : ℕ}

def kdC (ε : Fin n → Bool) : Bool → ℕ
  | true => pOf ε
  | false => qOf ε

lemma kdC_card (ε : Fin n → Bool) (s : Bool) : (univ.filter fun a => ε a = s).card = kdC ε s := by
  cases s <;> rfl

def kdE (ε : Fin n → Bool) (s : Bool) : Fin (kdC ε s) ↪o Fin n :=
  (univ.filter fun a => ε a = s).orderEmbOfFin (kdC_card ε s)

lemma ε_kdE (ε : Fin n → Bool) (s : Bool) (i : Fin (kdC ε s)) : ε (kdE ε s i) = s := by
  have h := (univ.filter fun a => ε a = s).orderEmbOfFin_mem (kdC_card ε s) i
  exact (Finset.mem_filter.1 h).2

lemma kdE_surj (ε : Fin n → Bool) (a : Fin n) : ∃ i, kdE ε (ε a) i = a := by
  have ha : a ∈ (univ.filter fun b => ε b = ε a) := by simp
  have := Finset.range_orderEmbOfFin (univ.filter fun b => ε b = ε a) (kdC_card ε (ε a))
  have hr : a ∈ Set.range ((univ.filter fun b => ε b = ε a).orderEmbOfFin (kdC_card ε (ε a))) := by
    rw [this]; exact ha
  exact hr

def kdSig (ε : Fin n → Bool) : (Σ s : Bool, Fin (kdC ε s)) ≃ Fin n :=
  Equiv.ofBijective (fun x => kdE ε x.1 x.2) (by
    constructor
    · rintro ⟨s, i⟩ ⟨s', j⟩ h
      have hs : s = s' := by
        have h1 := ε_kdE ε s i
        have h2 := ε_kdE ε s' j
        simp only at h
        rw [h] at h1
        rw [← h1, h2]
      subst hs
      simp only at h
      rw [(kdE ε s).injective h]
    · intro a
      obtain ⟨i, hi⟩ := kdE_surj ε a
      exact ⟨⟨ε a, i⟩, hi⟩)

lemma kdSig_apply (ε : Fin n → Bool) (s : Bool) (i : Fin (kdC ε s)) : kdSig ε ⟨s, i⟩ = kdE ε s i := rfl

def kdD (ε : Fin n → Bool) :
    (∀ s : Bool, Matrix (Fin (kdC ε s)) (Fin (kdC ε s)) ℂ) →+* Matrix (Fin n) (Fin n) ℂ :=
  (Matrix.reindexAlgEquiv ℂ ℂ (kdSig ε)).toRingEquiv.toRingHom.comp
    (Matrix.blockDiagonal'RingHom (fun s => Fin (kdC ε s)) ℂ)

lemma kdD_apply (ε : Fin n → Bool) (v : ∀ s : Bool, Matrix (Fin (kdC ε s)) (Fin (kdC ε s)) ℂ)
    (x y : Σ s : Bool, Fin (kdC ε s)) :
    kdD ε v (kdSig ε x) (kdSig ε y) = blockDiagonal' v x y := by
  simp [kdD, Matrix.reindex_apply]

lemma continuous_kdD (ε : Fin n → Bool) : Continuous (kdD ε) := by
  show Continuous fun v : (∀ s : Bool, Matrix (Fin (kdC ε s)) (Fin (kdC ε s)) ℂ) =>
    Matrix.reindex (kdSig ε) (kdSig ε) (blockDiagonal' v)
  exact (continuous_id.matrix_blockDiagonal').matrix_reindex _ _

lemma kdD_injective (ε : Fin n → Bool) : Function.Injective (kdD ε) := by
  intro v w h
  funext s
  ext i j
  have := congrFun (congrFun h (kdSig ε ⟨s, i⟩)) (kdSig ε ⟨s, j⟩)
  rwa [kdD_apply, kdD_apply, blockDiagonal'_apply_eq, blockDiagonal'_apply_eq] at this

lemma kd_commJ_iff (ε : Fin n → Bool) (M : Matrix (Fin n) (Fin n) ℂ) :
    M * Jm ε = Jm ε * M ↔ ∀ a b, ε a ≠ ε b → M a b = 0 := by
  apply ReciprocityTheory.ChartRestriction.DS.HW.commJ_iff

lemma kdD_commJ (ε : Fin n → Bool) (v : ∀ s : Bool, Matrix (Fin (kdC ε s)) (Fin (kdC ε s)) ℂ) :
    kdD ε v * Jm ε = Jm ε * kdD ε v := by
  rw [kd_commJ_iff]
  intro a b hab
  obtain ⟨⟨s, i⟩, rfl⟩ := (kdSig ε).surjective a
  obtain ⟨⟨s', j⟩, rfl⟩ := (kdSig ε).surjective b
  rw [kdD_apply]
  refine blockDiagonal'_apply_ne _ _ _ ?_
  rw [kdSig_apply, kdSig_apply, ε_kdE ε s i, ε_kdE ε s' j] at hab
  exact hab

def kdR (ε : Fin n → Bool) (X : Matrix (Fin n) (Fin n) ℂ) (s : Bool) :
    Matrix (Fin (kdC ε s)) (Fin (kdC ε s)) ℂ :=
  Matrix.of fun i j => X (kdE ε s i) (kdE ε s j)

lemma eq_kdD {ε : Fin n → Bool} {X : Matrix (Fin n) (Fin n) ℂ} (hX : X * Jm ε = Jm ε * X) :
    X = kdD ε (kdR ε X) := by
  ext a b
  obtain ⟨⟨s, i⟩, rfl⟩ := (kdSig ε).surjective a
  obtain ⟨⟨s', j⟩, rfl⟩ := (kdSig ε).surjective b
  rw [kdD_apply]
  by_cases h : s = s'
  · subst h
    rw [blockDiagonal'_apply_eq]; rfl
  · rw [blockDiagonal'_apply_ne _ _ _ h]
    exact (kd_commJ_iff ε X).1 hX _ _ (by rw [kdSig_apply, kdSig_apply, ε_kdE ε s i, ε_kdE ε s' j]; exact h)

lemma kdD_conjTranspose (ε : Fin n → Bool) (v : ∀ s : Bool, Matrix (Fin (kdC ε s)) (Fin (kdC ε s)) ℂ) :
    (kdD ε v)ᴴ = kdD ε (fun s => (v s)ᴴ) := by
  ext a b
  obtain ⟨⟨s, i⟩, rfl⟩ := (kdSig ε).surjective a
  obtain ⟨⟨s', j⟩, rfl⟩ := (kdSig ε).surjective b
  rw [conjTranspose_apply, kdD_apply, kdD_apply]
  by_cases h : s = s'
  · subst h
    rw [blockDiagonal'_apply_eq, blockDiagonal'_apply_eq, conjTranspose_apply]
  · rw [blockDiagonal'_apply_ne _ _ _ h, blockDiagonal'_apply_ne _ _ _ (Ne.symm h), star_zero]

lemma kdD_Kset (ε : Fin n → Bool) (v : ∀ s : Bool, Matrix (Fin (kdC ε s)) (Fin (kdC ε s)) ℂ)
    (hv : ∀ s, v s * (v s)ᴴ = 1) : kdD ε v ∈ Kset ε := by
  refine ⟨?_, kdD_commJ ε v⟩
  rw [Matrix.mem_unitaryGroup_iff, Matrix.star_eq_conjTranspose, kdD_conjTranspose, ← map_mul]
  have : (v * fun s => (v s)ᴴ) = 1 := funext hv
  rw [this, map_one]

lemma exp_kdD (ε : Fin n → Bool) (v : ∀ s : Bool, Matrix (Fin (kdC ε s)) (Fin (kdC ε s)) ℂ) :
    NormedSpace.exp (kdD ε v) = kdD ε (fun s => NormedSpace.exp (v s)) := by
  let _ : ∀ s : Bool, NormedRing (Matrix (Fin (kdC ε s)) (Fin (kdC ε s)) ℂ) :=
    fun _ => Matrix.linftyOpNormedRing
  let _ : ∀ s : Bool, NormedAlgebra ℂ (Matrix (Fin (kdC ε s)) (Fin (kdC ε s)) ℂ) :=
    fun _ => Matrix.linftyOpNormedAlgebra
  let _ : NormedRing (Matrix (Fin n) (Fin n) ℂ) := Matrix.linftyOpNormedRing
  let _ : NormedAlgebra ℂ (Matrix (Fin n) (Fin n) ℂ) := Matrix.linftyOpNormedAlgebra
  have hv : NormedSpace.exp v = fun s => NormedSpace.exp (v s) := by
    funext s
    exact NormedSpace.map_exp_of_mem_ball (𝕂 := ℂ)
      (Pi.evalRingHom (fun s : Bool => Matrix (Fin (kdC ε s)) (Fin (kdC ε s)) ℂ) s)
      (continuous_apply s) v
      ((NormedSpace.expSeries_radius_eq_top ℂ
        (∀ s : Bool, Matrix (Fin (kdC ε s)) (Fin (kdC ε s)) ℂ)).symm ▸ edist_lt_top _ _)
  rw [← hv]
  exact (NormedSpace.map_exp_of_mem_ball (𝕂 := ℂ) (kdD ε) (continuous_kdD ε) v
    ((NormedSpace.expSeries_radius_eq_top ℂ
      (∀ s : Bool, Matrix (Fin (kdC ε s)) (Fin (kdC ε s)) ℂ)).symm ▸ edist_lt_top _ _)).symm

lemma kd_Jm_true (k : ℕ) : Jm (fun _ : Fin k => true) = 1 := by simp [Jm]

lemma kd_un_unitary {N : ℕ} (u : UNgrp N) : toM u * (toM u)ᴴ = 1 := by
  have h : (toM u)ᴴ * Jm (fun _ : Fin N => true) * toM u = Jm (fun _ : Fin N => true) := u.2
  rw [kd_Jm_true, Matrix.mul_one] at h
  exact mul_eq_one_comm.1 h

def kdMkU {N : ℕ} (A : Matrix (Fin N) (Fin N) ℂ) (h : A * Aᴴ = 1) : UNgrp N :=
  ⟨⟨A, Aᴴ, h, mul_eq_one_comm.1 h⟩, by
    show Aᴴ * Jm (fun _ : Fin N => true) * A = Jm (fun _ : Fin N => true)
    rw [kd_Jm_true, Matrix.mul_one]; exact mul_eq_one_comm.1 h⟩

lemma kd_toM_inj {ε : Fin n → Bool} {g h : UJ ε} (e : toM g = toM h) : g = h := Subtype.ext (Units.ext e)

def kdMkK (ε : Fin n → Bool) {g : Matrix (Fin n) (Fin n) ℂ} (hg : g ∈ Kset ε) : KG ε :=
  ⟨⟨⟨g, star g, Unitary.mul_star_self_of_mem hg.1, Unitary.star_mul_self_of_mem hg.1⟩, by
      show gᴴ * Jm ε * g = Jm ε
      have h1 : gᴴ * g = 1 := by
        rw [← Matrix.star_eq_conjTranspose]; exact Unitary.star_mul_self_of_mem hg.1
      rw [Matrix.mul_assoc, ← hg.2, ← Matrix.mul_assoc, h1, Matrix.one_mul]⟩, hg⟩

def kdPair (ε : Fin n → Bool) (A : Matrix (Fin (pOf ε)) (Fin (pOf ε)) ℂ)
    (B : Matrix (Fin (qOf ε)) (Fin (qOf ε)) ℂ) : ∀ s : Bool, Matrix (Fin (kdC ε s)) (Fin (kdC ε s)) ℂ
  | true => A
  | false => B

lemma kdPair_mul (ε : Fin n → Bool) (A A' : Matrix (Fin (pOf ε)) (Fin (pOf ε)) ℂ)
    (B B' : Matrix (Fin (qOf ε)) (Fin (qOf ε)) ℂ) :
    kdPair ε (A * A') (B * B') = kdPair ε A B * kdPair ε A' B' := by
  funext s; cases s <;> rfl

lemma kdPair_one (ε : Fin n → Bool) : kdPair ε 1 1 = 1 := by
  funext s; cases s <;> rfl

lemma kdPsi_mem (ε : Fin n → Bool) (x : UNgrp (pOf ε) × UNgrp (qOf ε)) :
    kdD ε (kdPair ε (toM x.1) (toM x.2)) ∈ Kset ε :=
  kdD_Kset ε _ (by intro s; cases s; exacts [kd_un_unitary x.2, kd_un_unitary x.1])

def kdPsi (ε : Fin n → Bool) : UNgrp (pOf ε) × UNgrp (qOf ε) →* KG ε where
  toFun x := kdMkK ε (kdPsi_mem ε x)
  map_one' := by
    apply _root_.ReciprocityTheory.ChartRestriction.DS.HW.onep_KG_ext
    show kdD ε (kdPair ε 1 1) = 1
    rw [kdPair_one, map_one]
  map_mul' x y := by
    apply _root_.ReciprocityTheory.ChartRestriction.DS.HW.onep_KG_ext
    show kdD ε (kdPair ε (toM x.1 * toM y.1) (toM x.2 * toM y.2)) =
      kdD ε (kdPair ε (toM x.1) (toM x.2)) * kdD ε (kdPair ε (toM y.1) (toM y.2))
    rw [kdPair_mul, map_mul]

lemma toMK_kdPsi (ε : Fin n → Bool) (x : UNgrp (pOf ε) × UNgrp (qOf ε)) :
    toMK (kdPsi ε x) = kdD ε (kdPair ε (toM x.1) (toM x.2)) := rfl

lemma continuous_kdPsi (ε : Fin n → Bool) : Continuous (kdPsi ε) := by
  have hP : Continuous fun x : UNgrp (pOf ε) × UNgrp (qOf ε) => kdPair ε (toM x.1) (toM x.2) := by
    refine continuous_pi fun s => ?_
    cases s
    · exact (continuous_toM _).comp continuous_snd
    · exact (continuous_toM _).comp continuous_fst
  have hM : Continuous fun x : UNgrp (pOf ε) × UNgrp (qOf ε) => kdD ε (kdPair ε (toM x.1) (toM x.2)) :=
    (continuous_kdD ε).comp hP
  refine Continuous.subtype_mk (Continuous.subtype_mk ?_ _) _
  exact Units.continuous_iff.mpr ⟨hM, continuous_star.comp hM⟩

lemma kdPsi_injective (ε : Fin n → Bool) : Function.Injective (kdPsi ε) := by
  intro x y h
  have h1 : kdPair ε (toM x.1) (toM x.2) = kdPair ε (toM y.1) (toM y.2) :=
    kdD_injective ε (by rw [← toMK_kdPsi, ← toMK_kdPsi, h])
  exact Prod.ext (kd_toM_inj (congrFun h1 true)) (kd_toM_inj (congrFun h1 false))

lemma kdPsi_surjective (ε : Fin n → Bool) : Function.Surjective (kdPsi ε) := by
  intro k
  have hk : toMK k ∈ Kset ε := k.2
  set X := toMK k with hXdef
  have hX : X = kdD ε (kdR ε X) := eq_kdD hk.2
  have hu : X * Xᴴ = 1 := by
    have := hk.1
    rw [Matrix.mem_unitaryGroup_iff, Matrix.star_eq_conjTranspose] at this
    exact this
  have hv : (kdR ε X * fun s => (kdR ε X s)ᴴ) = 1 := by
    apply kdD_injective ε
    rw [map_mul, ← kdD_conjTranspose, ← hX, hu, map_one]
  refine ⟨(kdMkU (kdR ε X true) (congrFun hv true), kdMkU (kdR ε X false) (congrFun hv false)), ?_⟩
  apply _root_.ReciprocityTheory.ChartRestriction.DS.HW.onep_KG_ext
  rw [toMK_kdPsi]
  conv_rhs => rw [← hXdef, hX]
  congr 1
  funext s; cases s <;> rfl

def kdHomeo (ε : Fin n → Bool) : (UNgrp (pOf ε) × UNgrp (qOf ε)) ≃ₜ KG ε :=
  have := unGrp_compactSpace (pOf ε)
  have := unGrp_compactSpace (qOf ε)
  (continuous_kdPsi ε).homeoOfEquivCompactToT2 (f := Equiv.ofBijective (kdPsi ε)
    ⟨kdPsi_injective ε, kdPsi_surjective ε⟩)

theorem kd_dk_eq_map (ε : Fin n → Bool) (μp : Measure (UNgrp (pOf ε))) [μp.IsHaarMeasure]
    [IsProbabilityMeasure μp] (μq : Measure (UNgrp (qOf ε))) [μq.IsHaarMeasure] [IsProbabilityMeasure μq] :
    dk ε = (μp.prod μq).map (kdPsi ε) := by
  have := unGrp_compactSpace (pOf ε)
  have := unGrp_compactSpace (qOf ε)
  have := compactSpace_KG ε
  have : Measure.IsHaarMeasure ((μp.prod μq).map (kdPsi ε)) :=
    Measure.isHaarMeasure_map _ (kdPsi ε) (continuous_kdPsi ε) (kdPsi_surjective ε)
      (by rw [Filter.cocompact_eq_bot]; exact Filter.tendsto_bot)
  have : IsProbabilityMeasure ((μp.prod μq).map (kdPsi ε)) :=
    inferInstance
  have h0 : (Measure.haar : Measure (KG ε)) Set.univ ≠ 0 :=
    isOpen_univ.measure_ne_zero _ Set.univ_nonempty
  have htop : (Measure.haar : Measure (KG ε)) Set.univ ≠ ⊤ :=
    isCompact_univ.measure_ne_top
  have : Measure.IsHaarMeasure (dk ε) := by
    delta dk muK
    exact Measure.IsHaarMeasure.smul _ (ENNReal.inv_ne_zero.2 htop) (ENNReal.inv_ne_top.2 h0)
  have : IsProbabilityMeasure (dk ε) := ⟨by
    delta dk muK
    simp only [smul_apply, smul_eq_mul]
    exact ENNReal.inv_mul_cancel h0 htop⟩
  exact Measure.isHaarMeasure_eq_of_isProbabilityMeasure _ _

end ReciprocityTheory.ChartRestriction.DS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KDensA =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KDensB =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KDensB", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KDensA\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.DensOn\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset Matrix MeasureTheory

namespace ReciprocityTheory.ChartRestriction.DS

open ReciprocityTheory.ChartRestriction.DS.S7

variable {n : ℕ}

def kdPr (ε : Fin n → Bool) (s : Bool) (ij : {ab : Fin (kdC ε s) × Fin (kdC ε s) // ab.2 < ab.1}) :
    KPair ε :=
  ⟨(kdE ε s ij.1.1, kdE ε s ij.1.2), (kdE ε s).lt_iff_lt.2 ij.2, by rw [ε_kdE ε s, ε_kdE ε s]⟩

def kdCoS (ε : Fin n → Bool) (w : KCo ε) (s : Bool) : UCo (kdC ε s) :=
  (fun i => w.1 (kdE ε s i), fun ij => w.2 (kdPr ε s ij))

lemma kMat_eq_kdD {ε : Fin n → Bool} (w : KCo ε) : kMat w = kdD ε (fun s => skMat (kdCoS ε w s)) := by
  ext a b
  obtain ⟨⟨s, i⟩, rfl⟩ := (kdSig ε).surjective a
  obtain ⟨⟨t, j⟩, rfl⟩ := (kdSig ε).surjective b
  rw [kdD_apply]
  by_cases hst : s = t
  · subst hst
    rw [Matrix.blockDiagonal'_apply_eq, kdSig_apply, kdSig_apply]
    have hE : ε (kdE ε s i) = ε (kdE ε s j) := by rw [ε_kdE ε s i, ε_kdE ε s j]
    rcases lt_trichotomy i j with hij | rfl | hij
    · have h1 : kdE ε s i ≠ kdE ε s j := (kdE ε s).injective.ne hij.ne
      have h2 : ¬ (kdE ε s j < kdE ε s i ∧ ε (kdE ε s i) = ε (kdE ε s j)) :=
        fun h => absurd ((kdE ε s).lt_iff_lt.1 h.1) (not_lt.2 hij.le)
      have h3 : kdE ε s i < kdE ε s j ∧ ε (kdE ε s j) = ε (kdE ε s i) :=
        ⟨(kdE ε s).lt_iff_lt.2 hij, hE.symm⟩
      simp only [kMat, skMat, kdCoS, if_neg h1, dif_neg h2, dif_pos h3, if_neg hij.ne,
        dif_neg (not_lt.2 hij.le), dif_pos hij]
      rfl
    · simp [kMat, skMat, kdCoS]
    · have h1 : kdE ε s i ≠ kdE ε s j := (kdE ε s).injective.ne hij.ne'
      have h2 : kdE ε s j < kdE ε s i ∧ ε (kdE ε s i) = ε (kdE ε s j) :=
        ⟨(kdE ε s).lt_iff_lt.2 hij, hE⟩
      simp only [kMat, skMat, kdCoS, if_neg h1, dif_pos h2, if_neg hij.ne', dif_pos hij]
      rfl
  · rw [Matrix.blockDiagonal'_apply_ne _ _ _ hst, kdSig_apply, kdSig_apply]
    have h1 := ε_kdE ε s i
    have h2 := ε_kdE ε t j
    have hne : kdE ε s i ≠ kdE ε t j := fun h => hst (by rw [← h1, ← h2, h])
    have hc2 : ¬ (kdE ε t j < kdE ε s i ∧ ε (kdE ε s i) = ε (kdE ε t j)) := fun h => hst (by
      have := h.2
      rw [h1, h2] at this
      exact this)
    have hc3 : ¬ (kdE ε s i < kdE ε t j ∧ ε (kdE ε t j) = ε (kdE ε s i)) := fun h => hst (by
      have := h.2
      rw [h1, h2] at this
      exact this.symm)
    simp only [kMat, if_neg hne, dif_neg hc2, dif_neg hc3]

lemma norm_kdCoS_le {ε : Fin n → Bool} (w : KCo ε) (s : Bool) : ‖kdCoS ε w s‖ ≤ ‖w‖ := by
  rw [Prod.norm_def, Prod.norm_def]
  refine max_le_max ?_ ?_
  · refine (pi_norm_le_iff_of_nonneg (norm_nonneg _)).2 fun i => ?_
    exact norm_le_pi_norm w.1 (kdE ε s i)
  · refine (pi_norm_le_iff_of_nonneg (norm_nonneg _)).2 fun ij => ?_
    exact norm_le_pi_norm w.2 (kdPr ε s ij)

lemma kdE_surj' (ε : Fin n → Bool) (s : Bool) (a : Fin n) (h : ε a = s) : ∃ i, kdE ε s i = a := by
  subst h
  exact kdE_surj ε a

def kdIx (ε : Fin n → Bool) : Fin (pOf ε) ⊕ Fin (qOf ε) ≃ Fin n :=
  Equiv.ofBijective (Sum.elim (kdE ε true) (kdE ε false)) (by
    constructor
    · rintro (i | i) (j | j) h
      · exact congrArg Sum.inl ((kdE ε true).injective h)
      · have h1 := ε_kdE ε true i
        have h2 := ε_kdE ε false j
        have h' : kdE ε true i = kdE ε false j := h
        rw [h', h2] at h1; exact absurd h1 (by decide)
      · have h1 := ε_kdE ε false i
        have h2 := ε_kdE ε true j
        have h' : kdE ε false i = kdE ε true j := h
        rw [h', h2] at h1; exact absurd h1 (by decide)
      · exact congrArg Sum.inr ((kdE ε false).injective h)
    · intro a
      cases h : ε a
      · obtain ⟨i, hi⟩ := kdE_surj' ε false a h
        exact ⟨Sum.inr i, hi⟩
      · obtain ⟨i, hi⟩ := kdE_surj' ε true a h
        exact ⟨Sum.inl i, hi⟩)

lemma kdPr_inj (ε : Fin n → Bool) (s : Bool) : Function.Injective (kdPr ε s) := by
  intro x y h
  have h1 : kdE ε s x.1.1 = kdE ε s y.1.1 := congrArg (fun z : KPair ε => z.1.1) h
  have h2 : kdE ε s x.1.2 = kdE ε s y.1.2 := congrArg (fun z : KPair ε => z.1.2) h
  exact Subtype.ext (Prod.ext ((kdE ε s).injective h1) ((kdE ε s).injective h2))

lemma kdPr_surj (ε : Fin n → Bool) (x : KPair ε) : ∃ ij, kdPr ε (ε x.1.1) ij = x := by
  obtain ⟨⟨a, b⟩, hba, hab⟩ := x
  obtain ⟨i, hi⟩ := kdE_surj ε a
  obtain ⟨j, hj⟩ := kdE_surj' ε (ε a) b hab.symm
  have hba' : b < a := hba
  refine ⟨⟨(i, j), (kdE ε (ε a)).lt_iff_lt.1 (by rw [hi, hj]; exact hba')⟩, ?_⟩
  apply Subtype.ext
  show (kdE ε (ε a) i, kdE ε (ε a) j) = (a, b)
  rw [hi, hj]

def kdPx (ε : Fin n → Bool) :
    {ab : Fin (pOf ε) × Fin (pOf ε) // ab.2 < ab.1} ⊕ {ab : Fin (qOf ε) × Fin (qOf ε) // ab.2 < ab.1} ≃
      KPair ε :=
  Equiv.ofBijective (Sum.elim (kdPr ε true) (kdPr ε false)) (by
    constructor
    · rintro (i | i) (j | j) h
      · exact congrArg Sum.inl (kdPr_inj ε true h)
      · have h1 := ε_kdE ε true i.1.1
        have h2 := ε_kdE ε false j.1.1
        have h' : kdE ε true i.1.1 = kdE ε false j.1.1 := congrArg (fun z : KPair ε => z.1.1) h
        rw [h', h2] at h1; exact absurd h1 (by decide)
      · have h1 := ε_kdE ε false i.1.1
        have h2 := ε_kdE ε true j.1.1
        have h' : kdE ε false i.1.1 = kdE ε true j.1.1 := congrArg (fun z : KPair ε => z.1.1) h
        rw [h', h2] at h1; exact absurd h1 (by decide)
      · exact congrArg Sum.inr (kdPr_inj ε false h)
    · intro x
      obtain ⟨ij, hij⟩ := kdPr_surj ε x
      revert ij
      cases ε x.1.1
      · intro ij hij; exact ⟨Sum.inr ij, hij⟩
      · intro ij hij; exact ⟨Sum.inl ij, hij⟩)

def kdRe (α β γ δ : Type*) [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    [MeasurableSpace δ] : ((α × β) × (γ × δ)) ≃ᵐ ((α × γ) × (β × δ)) :=
  (MeasurableEquiv.prodAssoc.trans (MeasurableEquiv.prodCongr (MeasurableEquiv.refl α)
    ((MeasurableEquiv.prodAssoc.symm.trans
      (MeasurableEquiv.prodCongr MeasurableEquiv.prodComm (MeasurableEquiv.refl δ))).trans
        MeasurableEquiv.prodAssoc))).trans MeasurableEquiv.prodAssoc.symm

private lemma measurePreserving_prodAssoc_volume {X Y Z : Type*} [MeasureSpace X] [MeasureSpace Y] [MeasureSpace Z]
    [SigmaFinite (volume : Measure X)] [SigmaFinite (volume : Measure Y)]
    [SigmaFinite (volume : Measure Z)] :
    MeasurePreserving (MeasurableEquiv.prodAssoc : (X × Y) × Z ≃ᵐ X × Y × Z) volume volume :=
  measurePreserving_prodAssoc volume volume volume

private lemma measurePreserving_prodComm_volume {X Y : Type*} [MeasureSpace X] [MeasureSpace Y]
    [SigmaFinite (volume : Measure X)] [SigmaFinite (volume : Measure Y)] :
    MeasurePreserving (MeasurableEquiv.prodComm : X × Y ≃ᵐ Y × X) volume volume :=
  Measure.measurePreserving_swap

lemma kdRe_mp {α β γ δ : Type*} [MeasureSpace α] [MeasureSpace β] [MeasureSpace γ] [MeasureSpace δ]
    [SigmaFinite (volume : Measure α)] [SigmaFinite (volume : Measure β)] [SigmaFinite (volume : Measure γ)]
    [SigmaFinite (volume : Measure δ)] : MeasurePreserving (kdRe α β γ δ) volume volume := by
  unfold kdRe
  exact (MeasurePreserving.symm _ measurePreserving_prodAssoc_volume).comp
    (((MeasurePreserving.id volume).prod
      (measurePreserving_prodAssoc_volume.comp ((measurePreserving_prodComm_volume.prod (MeasurePreserving.id volume)).comp
        (MeasurePreserving.symm _ measurePreserving_prodAssoc_volume)))).comp measurePreserving_prodAssoc_volume)

def realCoordinatesSplitBySign (ε : Fin n → Bool) : (Fin n → ℝ) ≃ᵐ (Fin (pOf ε) → ℝ) × (Fin (qOf ε) → ℝ) :=
  (MeasurableEquiv.piCongrLeft (fun _ : Fin n => ℝ) (kdIx ε)).symm.trans
    (MeasurableEquiv.sumPiEquivProdPi (fun _ : Fin (pOf ε) ⊕ Fin (qOf ε) => ℝ))

def complexCoordinatesSplitBySign (ε : Fin n → Bool) : (KPair ε → ℂ) ≃ᵐ
    ({ab : Fin (pOf ε) × Fin (pOf ε) // ab.2 < ab.1} → ℂ) × ({ab : Fin (qOf ε) × Fin (qOf ε) // ab.2 < ab.1} → ℂ) :=
  (MeasurableEquiv.piCongrLeft (fun _ : KPair ε => ℂ) (kdPx ε)).symm.trans
    (MeasurableEquiv.sumPiEquivProdPi (fun _ => ℂ))

def kdT (ε : Fin n → Bool) : KCo ε ≃ᵐ UCo (pOf ε) × UCo (qOf ε) :=
  ((realCoordinatesSplitBySign ε).prodCongr (complexCoordinatesSplitBySign ε)).trans (kdRe _ _ _ _)

lemma kdT_fst (ε : Fin n → Bool) (w : KCo ε) : (kdT ε w).1 = kdCoS ε w true := rfl

lemma kdT_snd (ε : Fin n → Bool) (w : KCo ε) : (kdT ε w).2 = kdCoS ε w false := rfl

private lemma measurePreserving_realCoordinatesSplitBySign (ε : Fin n → Bool) : MeasurePreserving (realCoordinatesSplitBySign ε) volume volume := by
  unfold realCoordinatesSplitBySign
  exact (measurePreserving_sumPiEquivProdPi (fun _ => (volume : Measure ℝ))).comp
    (MeasurePreserving.symm _ (measurePreserving_piCongrLeft (fun _ : Fin n => (volume : Measure ℝ)) (kdIx ε)))

private lemma measurePreserving_complexCoordinatesSplitBySign (ε : Fin n → Bool) : MeasurePreserving (complexCoordinatesSplitBySign ε) volume volume := by
  unfold complexCoordinatesSplitBySign
  exact (measurePreserving_sumPiEquivProdPi (fun _ => (volume : Measure ℂ))).comp
    (MeasurePreserving.symm _ (measurePreserving_piCongrLeft (fun _ : KPair ε => (volume : Measure ℂ)) (kdPx ε)))

lemma kdT_mp (ε : Fin n → Bool) : MeasurePreserving (kdT ε) volume volume := by
  unfold kdT
  exact kdRe_mp.comp ((measurePreserving_realCoordinatesSplitBySign ε).prod (measurePreserving_complexCoordinatesSplitBySign ε))

section KDChart

open Set Topology

variable {N : ℕ}

def kdF (N : ℕ) (x : UCo N) : Fin N → Fin N → ℂ := Matrix.of.symm (NormedSpace.exp (skMat x))

lemma kd_skMat_injective : Function.Injective (skMat (N := N)) := by
  intro x y h
  have hd : ∀ a b, skMat x a b = skMat y a b := fun a b => by rw [h]
  refine Prod.ext (funext fun a => ?_) (funext fun ab => ?_)
  · have := hd a a
    simp only [skMat] at this
    exact_mod_cast mul_left_cancel₀ Complex.I_ne_zero this
  · obtain ⟨⟨a, b⟩, hab⟩ := ab
    have hab' : b < a := hab
    have := hd a b
    simp only [skMat, if_neg (ne_of_gt hab'), dif_pos hab'] at this
    exact this

lemma kd_continuous_skMat : Continuous (skMat (N := N)) := by
  refine continuous_matrix fun a b => ?_
  simp only [skMat]
  split_ifs
  · exact continuous_const.mul (Complex.continuous_ofReal.comp ((continuous_apply a).comp continuous_fst))
  · exact (continuous_apply _).comp continuous_snd
  · exact ((continuous_apply _).comp continuous_snd).star.neg
  · exact continuous_const

lemma kd_skMat_zero : skMat (0 : UCo N) = 0 := by
  ext a b
  simp only [skMat]
  split_ifs <;> simp

lemma kd_exp_injOn {𝔸 : Type*} [NormedRing 𝔸] [NormedAlgebra ℂ 𝔸] [CompleteSpace 𝔸] :
    ∃ V : Set 𝔸, IsOpen V ∧ (0 : 𝔸) ∈ V ∧ InjOn (NormedSpace.exp : 𝔸 → 𝔸) V := by
  have h : HasStrictFDerivAt (NormedSpace.exp : 𝔸 → 𝔸)
      ((ContinuousLinearEquiv.refl ℂ 𝔸 : 𝔸 ≃L[ℂ] 𝔸) : 𝔸 →L[ℂ] 𝔸) 0 :=
    hasStrictFDerivAt_exp_zero (𝕂 := ℂ)
  refine ⟨_, (h.toOpenPartialHomeomorph _).open_source, h.mem_toOpenPartialHomeomorph_source, ?_⟩
  have hi := (h.toOpenPartialHomeomorph _).injOn
  rwa [HasStrictFDerivAt.toOpenPartialHomeomorph_coe] at hi

lemma kd_exp_injOn_nhds : ∃ V : Set (Matrix (Fin N) (Fin N) ℂ), IsOpen V ∧ (0 : Matrix (Fin N) (Fin N) ℂ) ∈ V ∧
    InjOn (NormedSpace.exp : Matrix (Fin N) (Fin N) ℂ → Matrix (Fin N) (Fin N) ℂ) V := by
  letI : NormedRing (Matrix (Fin N) (Fin N) ℂ) := Matrix.linftyOpNormedRing
  letI : NormedAlgebra ℂ (Matrix (Fin N) (Fin N) ℂ) := Matrix.linftyOpNormedAlgebra
  exact kd_exp_injOn

section KDCont

attribute [local instance] Matrix.linftyOpNormedRing Matrix.linftyOpNormedAlgebra

lemma kd_exp_continuous :
    Continuous (NormedSpace.exp : Matrix (Fin N) (Fin N) ℂ → Matrix (Fin N) (Fin N) ℂ) := by
  exact NormedSpace.exp_continuous

end KDCont

lemma continuous_kdF : Continuous (kdF N) := by
  exact kd_exp_continuous.comp kd_continuous_skMat

lemma kdF_injOn : ∃ r > 0, InjOn (kdF N) (Metric.ball 0 r) := by
  obtain ⟨V, hVo, hV0, hVi⟩ := kd_exp_injOn_nhds (N := N)
  have hU : IsOpen (skMat ⁻¹' V) := hVo.preimage kd_continuous_skMat
  have h0 : (0 : UCo N) ∈ skMat ⁻¹' V := by
    rw [Set.mem_preimage, kd_skMat_zero]
    exact hV0
  obtain ⟨r, hr, hball⟩ := Metric.isOpen_iff.1 hU 0 h0
  refine ⟨r, hr, fun x hx y hy hxy => kd_skMat_injective (hVi (hball hx) (hball hy) ?_)⟩
  exact hxy

end KDChart

end ReciprocityTheory.ChartRestriction.DS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KDensB =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KDensC =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KDensC", "h": "module\n\npublic import Mathlib.MeasureTheory.Measure.Prod\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.MeasureTheory.Measure.WithDensity\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Set
open scoped ENNReal

namespace ReciprocityTheory.ChartRestriction.DS

section KDC

variable {E X : Type*} [TopologicalSpace E] [PolishSpace E] [MeasurableSpace E] [BorelSpace E]
  [TopologicalSpace X] [T2Space X] [MeasurableSpace X] [BorelSpace X]

def kdNu (m : Measure X) (f : E → X) (U : Set E) : Measure E :=
  Measure.map (Subtype.val : U → E) (Measure.comap (fun x : U => f x) m)

lemma kdNu_apply {m : Measure X} {f : E → X} {U : Set E} (hU : MeasurableSet U) (hf : ContinuousOn f U)
    (hinj : InjOn f U) {A : Set E} (hA : MeasurableSet A) : kdNu m f U A = m (f '' (A ∩ U)) := by
  have hI : Function.Injective (fun x : U => f x) := fun a b h => Subtype.ext (hinj a.2 b.2 h)
  have hM : ∀ s : Set U, MeasurableSet s → MeasurableSet ((fun x : U => f x) '' s) := by
    intro s hs
    have e : (fun x : U => f x) '' s = f '' (Subtype.val '' s) := by rw [image_image]
    rw [e]
    have hsub : Subtype.val '' s ⊆ U := by rintro _ ⟨x, _, rfl⟩; exact x.2
    exact (hU.subtype_image hs).image_of_continuousOn_injOn (hf.mono hsub) (hinj.mono hsub)
  rw [kdNu, Measure.map_apply measurable_subtype_coe hA,
    Measure.comap_apply _ hI hM _ (measurable_subtype_coe hA)]
  congr 1
  ext y
  constructor
  · rintro ⟨⟨x, hx⟩, hxA, rfl⟩; exact ⟨x, ⟨hxA, hx⟩, rfl⟩
  · rintro ⟨x, ⟨hxA, hx⟩, rfl⟩; exact ⟨⟨x, hx⟩, hxA, rfl⟩

lemma kdNu_finite {m : Measure X} [IsFiniteMeasure m] {f : E → X} {U : Set E} (hU : MeasurableSet U)
    (hf : ContinuousOn f U) (hinj : InjOn f U) : IsFiniteMeasure (kdNu m f U) :=
  ⟨by rw [kdNu_apply hU hf hinj MeasurableSet.univ]; exact measure_lt_top _ _⟩

lemma kdNu_le {m : Measure X} {f : E → X} {U : Set E} (hU : MeasurableSet U) (hf : ContinuousOn f U)
    (hinj : InjOn f U) (lam : Measure E) (c : ℝ≥0∞)
    (h : ∀ A ⊆ U, MeasurableSet A → m (f '' A) ≤ c * lam A) : kdNu m f U ≤ c • lam.restrict U := by
  refine Measure.le_iff.2 fun A hA => ?_
  rw [kdNu_apply hU hf hinj hA, Measure.smul_apply, Measure.restrict_apply hA, smul_eq_mul]
  exact h _ inter_subset_right (hA.inter hU)

lemma kdNu_ge {m : Measure X} {f : E → X} {U : Set E} (hU : MeasurableSet U) (hf : ContinuousOn f U)
    (hinj : InjOn f U) (lam : Measure E) (d : ℝ≥0∞)
    (h : ∀ A ⊆ U, MeasurableSet A → d * lam A ≤ m (f '' A)) : d • lam.restrict U ≤ kdNu m f U := by
  refine Measure.le_iff.2 fun A hA => ?_
  rw [kdNu_apply hU hf hinj hA, Measure.smul_apply, Measure.restrict_apply hA, smul_eq_mul]
  exact h _ inter_subset_right (hA.inter hU)

end KDC

section KDC2

variable {E₁ E₂ X₁ X₂ : Type*} [TopologicalSpace E₁] [PolishSpace E₁] [MeasurableSpace E₁] [BorelSpace E₁]
  [TopologicalSpace E₂] [PolishSpace E₂] [MeasurableSpace E₂] [BorelSpace E₂]
  [TopologicalSpace X₁] [T2Space X₁] [MeasurableSpace X₁] [BorelSpace X₁] [SecondCountableTopology X₁]
  [TopologicalSpace X₂] [T2Space X₂] [MeasurableSpace X₂] [BorelSpace X₂] [SecondCountableTopology X₂]

lemma kdNu_prod {m₁ : Measure X₁} {m₂ : Measure X₂} [IsFiniteMeasure m₁] [IsFiniteMeasure m₂]
    {f₁ : E₁ → X₁} {f₂ : E₂ → X₂} {U₁ : Set E₁} {U₂ : Set E₂} (hU₁ : MeasurableSet U₁)
    (hU₂ : MeasurableSet U₂) (hf₁ : ContinuousOn f₁ U₁) (hf₂ : ContinuousOn f₂ U₂) (hi₁ : InjOn f₁ U₁)
    (hi₂ : InjOn f₂ U₂) :
    (kdNu m₁ f₁ U₁).prod (kdNu m₂ f₂ U₂) = kdNu (m₁.prod m₂) (Prod.map f₁ f₂) (U₁ ×ˢ U₂) := by
  have := kdNu_finite (m := m₁) hU₁ hf₁ hi₁
  have := kdNu_finite (m := m₂) hU₂ hf₂ hi₂
  refine Measure.prod_eq fun s t hs ht => ?_
  rw [kdNu_apply (hU₁.prod hU₂) (hf₁.prodMap hf₂) (hi₁.prodMap hi₂) (hs.prod ht),
    kdNu_apply hU₁ hf₁ hi₁ hs, kdNu_apply hU₂ hf₂ hi₂ ht, prod_inter_prod, prodMap_image_prod,
    Measure.prod_prod]

theorem kd_prod_bounds {m₁ : Measure X₁} {m₂ : Measure X₂} [IsFiniteMeasure m₁] [IsFiniteMeasure m₂]
    (lam₁ : Measure E₁) (lam₂ : Measure E₂) [SigmaFinite lam₁] [SigmaFinite lam₂]
    {f₁ : E₁ → X₁} {f₂ : E₂ → X₂} {U₁ : Set E₁} {U₂ : Set E₂} (hU₁ : MeasurableSet U₁)
    (hU₂ : MeasurableSet U₂) (hf₁ : ContinuousOn f₁ U₁) (hf₂ : ContinuousOn f₂ U₂) (hi₁ : InjOn f₁ U₁)
    (hi₂ : InjOn f₂ U₂) (c₁ d₁ c₂ d₂ : ℝ≥0∞)
    (h₁ : ∀ A ⊆ U₁, MeasurableSet A → m₁ (f₁ '' A) ≤ c₁ * lam₁ A ∧ d₁ * lam₁ A ≤ m₁ (f₁ '' A))
    (h₂ : ∀ A ⊆ U₂, MeasurableSet A → m₂ (f₂ '' A) ≤ c₂ * lam₂ A ∧ d₂ * lam₂ A ≤ m₂ (f₂ '' A))
    {B : Set (E₁ × E₂)} (hB : MeasurableSet B) (hBU : B ⊆ U₁ ×ˢ U₂) :
    (m₁.prod m₂) (Prod.map f₁ f₂ '' B) ≤ c₁ * c₂ * (lam₁.prod lam₂) B ∧
      d₁ * d₂ * (lam₁.prod lam₂) B ≤ (m₁.prod m₂) (Prod.map f₁ f₂ '' B) := by
  have := kdNu_finite (m := m₁) hU₁ hf₁ hi₁
  have := kdNu_finite (m := m₂) hU₂ hf₂ hi₂
  have e : (m₁.prod m₂) (Prod.map f₁ f₂ '' B) = ((kdNu m₁ f₁ U₁).prod (kdNu m₂ f₂ U₂)) B := by
    rw [kdNu_prod hU₁ hU₂ hf₁ hf₂ hi₁ hi₂,
      kdNu_apply (hU₁.prod hU₂) (hf₁.prodMap hf₂) (hi₁.prodMap hi₂) hB, inter_eq_left.2 hBU]
  have hs : ∀ a b : ℝ≥0∞,
      ((a • lam₁.restrict U₁).prod (b • lam₂.restrict U₂)) B = a * b * (lam₁.prod lam₂) B := by
    intro a b
    rw [Measure.prod_smul_left, Measure.prod_smul_right, Measure.prod_restrict, smul_smul,
      Measure.smul_apply, Measure.restrict_apply hB, inter_eq_left.2 hBU, smul_eq_mul]
  refine ⟨?_, ?_⟩
  · rw [e, ← hs c₁ c₂]
    exact Measure.le_iff'.1 (Measure.prod_mono
      (kdNu_le hU₁ hf₁ hi₁ lam₁ c₁ fun A hA hm => (h₁ A hA hm).1)
      (kdNu_le hU₂ hf₂ hi₂ lam₂ c₂ fun A hA hm => (h₂ A hA hm).1)) B
  · rw [e, ← hs d₁ d₂]
    exact Measure.le_iff'.1 (Measure.prod_mono
      (kdNu_ge hU₁ hf₁ hi₁ lam₁ d₁ fun A hA hm => (h₁ A hA hm).2)
      (kdNu_ge hU₂ hf₂ hi₂ lam₂ d₂ fun A hA hm => (h₂ A hA hm).2)) B

end KDC2

end ReciprocityTheory.ChartRestriction.DS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KDensC =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KdMeasImageProd =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KdMeasImageProd", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KDensB\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.VolUFactProdMulLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KDensC\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.UnGrpHaarProbExists\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.VolUDensity\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset Matrix MeasureTheory

namespace ReciprocityTheory.ChartRestriction.DS

open ReciprocityTheory.ChartRestriction.DS.S7

variable {n : ℕ}

def kdTM {N : ℕ} (u : UNgrp N) : Fin N → Fin N → ℂ := Matrix.of.symm (toM u)

lemma continuous_kdTM {N : ℕ} : Continuous (kdTM (N := N)) := continuous_toM _

lemma kd_factor {N : ℕ} (μ : Measure (UNgrp N)) [μ.IsHaarMeasure] [IsProbabilityMeasure μ] (η : ℝ)
    (hη : 0 < η) : ∃ r > 0, Set.InjOn (kdF N) (Metric.ball 0 r) ∧
      ∀ A ⊆ Metric.ball (0 : UCo N) r, MeasurableSet A →
        (μ.map kdTM) (kdF N '' A) ≤ ENNReal.ofReal ((1 + η) / volU N) * volume A ∧
          ENNReal.ofReal ((1 - η) / volU N) * volume A ≤ (μ.map kdTM) (kdF N '' A) := by
  obtain ⟨δ, hδ, hd⟩ := volU_density μ η hη
  obtain ⟨r, hr, hinj⟩ := kdF_injOn (N := N)
  refine ⟨min δ r, lt_min hδ hr, hinj.mono (Metric.ball_subset_ball (min_le_right _ _)), ?_⟩
  intro A hA hAm
  have hAr : A ⊆ Metric.ball 0 r := hA.trans (Metric.ball_subset_ball (min_le_right _ _))
  have hmeas : MeasurableSet (kdF N '' A) :=
    hAm.image_of_continuousOn_injOn continuous_kdF.continuousOn (hinj.mono hAr)
  have e : kdTM ⁻¹' (kdF N '' A) = {k : UNgrp N | ∃ x ∈ A, toM k = NormedSpace.exp (skMat x)} := by
    ext k
    simp only [Set.mem_preimage, Set.mem_image, Set.mem_ofPred_eq]
    constructor
    · rintro ⟨x, hx, h⟩; exact ⟨x, hx, (Matrix.of.symm.injective h).symm⟩
    · rintro ⟨x, hx, h⟩; exact ⟨x, hx, by rw [kdF, kdTM, h]⟩
  rw [Measure.map_apply continuous_kdTM.measurable hmeas, e]
  refine hd A hAm fun x hx => ?_
  have := hA hx
  rw [Metric.mem_ball, dist_zero_right] at this
  exact this.trans_le (min_le_left _ _)

lemma kd_meas_image_prod {E₁ E₂ X : Type*} [TopologicalSpace E₁] [PolishSpace E₁] [MeasurableSpace E₁]
    [BorelSpace E₁] [TopologicalSpace E₂] [PolishSpace E₂] [MeasurableSpace E₂] [BorelSpace E₂]
    [TopologicalSpace X] [T2Space X] [MeasurableSpace X] [BorelSpace X] {f : E₁ × E₂ → X}
    {B : Set (E₁ × E₂)} (hB : MeasurableSet B) (hf : ContinuousOn f B) (hi : Set.InjOn f B) :
    MeasurableSet (f '' B) :=
  hB.image_of_continuousOn_injOn hf hi

theorem dk_density (ε : Fin n → Bool) (η : ℝ) (hη : 0 < η) :
    ∃ δ > 0, ∀ B : Set (KCo ε), MeasurableSet B → (∀ w ∈ B, ‖w‖ < δ) →
      dk ε {k | ∃ w ∈ B, toMK k = NormedSpace.exp (kMat w)} ≤
          ENNReal.ofReal ((1 + η) / (volU (pOf ε) * volU (qOf ε))) * volume B ∧
        ENNReal.ofReal ((1 - η) / (volU (pOf ε) * volU (qOf ε))) * volume B ≤
          dk ε {k | ∃ w ∈ B, toMK k = NormedSpace.exp (kMat w)} := by
  obtain ⟨μp, hHp, hPp⟩ := unGrp_haarProb_exists (pOf ε)
  obtain ⟨μq, hHq, hPq⟩ := unGrp_haarProb_exists (qOf ε)
  set η' : ℝ := min (η / 3) (1 / 2) with hη'def
  have hη'0 : 0 < η' := lt_min (by linarith) (by norm_num)
  have hη'1 : η' ≤ η / 3 := min_le_left _ _
  have hη'2 : η' ≤ 1 / 2 := min_le_right _ _
  obtain ⟨rp, hrp, hip, hp⟩ := kd_factor μp η' hη'0
  obtain ⟨rq, hrq, hiq, hq⟩ := kd_factor μq η' hη'0
  refine ⟨min rp rq, lt_min hrp hrq, fun B hB hBδ => ?_⟩
  set S := {k : KG ε | ∃ w ∈ B, toMK k = NormedSpace.exp (kMat w)} with hS
  set B' : Set (UCo (pOf ε) × UCo (qOf ε)) := kdT ε '' B with hB'
  have hB'm : MeasurableSet B' := (kdT ε).measurableSet_image.2 hB
  have hvol : volume B' = volume B := by
    rw [hB', MeasurableEquiv.image_eq_preimage_symm]
    exact (MeasurePreserving.symm _ (kdT_mp ε)).measure_preimage hB.nullMeasurableSet
  have hB'U : B' ⊆ Metric.ball 0 rp ×ˢ Metric.ball 0 rq := by
    rintro _ ⟨w, hw, rfl⟩
    have h1 := hBδ w hw
    refine ⟨?_, ?_⟩
    · rw [Metric.mem_ball, dist_zero_right, kdT_fst]
      exact (norm_kdCoS_le w true).trans_lt (h1.trans_le (min_le_left _ _))
    · rw [Metric.mem_ball, dist_zero_right, kdT_snd]
      exact (norm_kdCoS_le w false).trans_lt (h1.trans_le (min_le_right _ _))
  have hpre : (kdPsi ε) ⁻¹' S = Prod.map kdTM kdTM ⁻¹' (Prod.map (kdF (pOf ε)) (kdF (qOf ε)) '' B') := by
    ext x
    simp only [Set.mem_preimage, hS, Set.mem_ofPred_eq, Set.mem_image, hB']
    constructor
    · rintro ⟨w, hw, he⟩
      rw [toMK_kdPsi, kMat_eq_kdD, exp_kdD] at he
      have he' := kdD_injective ε he
      refine ⟨kdT ε w, ⟨w, hw, rfl⟩, Prod.ext ?_ ?_⟩
      · show Matrix.of.symm (NormedSpace.exp (skMat (kdT ε w).1)) = Matrix.of.symm (toM x.1)
        rw [kdT_fst]; exact congrArg _ (congrFun he' true).symm
      · show Matrix.of.symm (NormedSpace.exp (skMat (kdT ε w).2)) = Matrix.of.symm (toM x.2)
        rw [kdT_snd]; exact congrArg _ (congrFun he' false).symm
    · rintro ⟨z, ⟨w, hw, rfl⟩, hz⟩
      refine ⟨w, hw, ?_⟩
      have h1 : Matrix.of.symm (NormedSpace.exp (skMat (kdT ε w).1)) = Matrix.of.symm (toM x.1) :=
        congrArg Prod.fst hz
      have h2 : Matrix.of.symm (NormedSpace.exp (skMat (kdT ε w).2)) = Matrix.of.symm (toM x.2) :=
        congrArg Prod.snd hz
      rw [kdT_fst] at h1
      rw [kdT_snd] at h2
      rw [toMK_kdPsi, kMat_eq_kdD, exp_kdD]
      congr 1
      funext s
      cases s
      · exact (Matrix.of.symm.injective h2).symm
      · exact (Matrix.of.symm.injective h1).symm
  have hYm : MeasurableSet (Prod.map (kdF (pOf ε)) (kdF (qOf ε)) '' B') :=
    kd_meas_image_prod hB'm (continuous_kdF.prodMap continuous_kdF).continuousOn
      ((hip.prodMap hiq).mono hB'U)
  have hdk : dk ε S = ((μp.map kdTM).prod (μq.map kdTM)) (Prod.map (kdF (pOf ε)) (kdF (qOf ε)) '' B') := by
    rw [kd_dk_eq_map ε μp μq]
    have hc : (⇑(kdPsi ε)) = ⇑(kdHomeo ε).toMeasurableEquiv := rfl
    rw [hc, MeasurableEquiv.map_apply, ← hc, hpre,
      Measure.map_prod_map _ _ continuous_kdTM.measurable continuous_kdTM.measurable,
      Measure.map_apply (continuous_kdTM.measurable.prodMap continuous_kdTM.measurable) hYm]
  obtain ⟨hup, hlo⟩ := kd_prod_bounds (m₁ := μp.map kdTM) (m₂ := μq.map kdTM) volume volume
    Metric.isOpen_ball.measurableSet Metric.isOpen_ball.measurableSet continuous_kdF.continuousOn
    continuous_kdF.continuousOn hip hiq _ _ _ _ hp hq hB'm hB'U
  have hvp := _root_.ReciprocityTheory.ChartRestriction.DS.volU_pos' (pOf ε)
  have hvq := _root_.ReciprocityTheory.ChartRestriction.DS.volU_pos' (qOf ε)
  have hpq : 0 < volU (pOf ε) * volU (qOf ε) := mul_pos hvp hvq
  have hvol' : (volume.prod volume) B' = volume B := hvol
  rw [hvol'] at hup hlo
  rw [hdk]
  have hcu : ENNReal.ofReal ((1 + η') / volU (pOf ε)) * ENNReal.ofReal ((1 + η') / volU (qOf ε)) ≤
      ENNReal.ofReal ((1 + η) / (volU (pOf ε) * volU (qOf ε))) := by
    rw [← ENNReal.ofReal_mul (by positivity)]
    refine ENNReal.ofReal_le_ofReal ?_
    rw [div_mul_div_comm]
    exact div_le_div_of_nonneg_right (by nlinarith) hpq.le
  have hcl : ENNReal.ofReal ((1 - η) / (volU (pOf ε) * volU (qOf ε))) ≤
      ENNReal.ofReal ((1 - η') / volU (pOf ε)) * ENNReal.ofReal ((1 - η') / volU (qOf ε)) := by
    rw [← ENNReal.ofReal_mul (div_nonneg (by linarith) hvp.le)]
    refine ENNReal.ofReal_le_ofReal ?_
    rw [div_mul_div_comm]
    exact div_le_div_of_nonneg_right (by nlinarith) hpq.le
  exact ⟨hup.trans (by gcongr), le_trans (by gcongr) hlo⟩

end ReciprocityTheory.ChartRestriction.DS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KdMeasImageProd =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.JacobianNearOneOfSmall =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.JacobianNearOneOfSmall", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.DensOn\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.VolUFactProdMulLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.ContinuousMatrixExpCompact\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.KdMeasImageProd\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.PolarBasic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset Matrix MeasureTheory

namespace ReciprocityTheory.ChartRestriction.DS

open ReciprocityTheory.ChartRestriction.DS.S7

variable {n : ℕ}

theorem eigenvalues_zero (ε : Fin n → Bool) : pev (0 : PCoord ε → ℂ) = 0 := by
  have h0 : pmat (0 : PCoord ε → ℂ) = 0 := by
    ext a b
    simp only [pmat]
    split_ifs <;> simp
  exact (pmat_isHermitian (0 : PCoord ε → ℂ)).eigenvalues_eq_zero_iff.2 h0

theorem jacobian_zero (ε : Fin n → Bool) : Jac (0 : PCoord ε → ℂ) = 1 := by
  unfold Jac
  rw [eigenvalues_zero]
  simp [shc]

theorem jacobian_near_one_of_small (ε : Fin n → Bool) (η : ℝ) (hη : 0 < η) :
    ∃ δ > 0, ∀ C : Set (PCoord ε → ℂ), MeasurableSet C → (∀ z ∈ C, ‖z‖ < δ) →
      (∫⁻ z in C, ENNReal.ofReal (Jac z)) ≤ ENNReal.ofReal (1 + η) * volume C ∧
        ENNReal.ofReal (1 - η) * volume C ≤ ∫⁻ z in C, ENNReal.ofReal (Jac z) := by
  obtain ⟨δ, hδ, h⟩ := Metric.continuous_iff.1 (_root_.ReciprocityTheory.ChartRestriction.DS.pb_jac_continuous ε) 0 η hη
  have hpt : ∀ z : PCoord ε → ℂ, ‖z‖ < δ → |Jac z - 1| < η := fun z hz => by
    have := h z (by simpa [dist_zero_right] using hz)
    rwa [jacobian_zero, Real.dist_eq] at this
  refine ⟨δ, hδ, fun C hC hCδ => ⟨?_, ?_⟩⟩
  · rw [← setLIntegral_const]
    refine lintegral_mono_ae ((ae_restrict_iff' hC).2 (Filter.Eventually.of_forall fun z hz => ?_))
    have := abs_lt.1 (hpt z (hCδ z hz))
    exact ENNReal.ofReal_le_ofReal (by linarith)
  · rw [← setLIntegral_const]
    refine lintegral_mono_ae ((ae_restrict_iff' hC).2 (Filter.Eventually.of_forall fun z hz => ?_))
    have := abs_lt.1 (hpt z (hCδ z hz))
    exact ENNReal.ofReal_le_ofReal (by linarith)

theorem muPolar_near_one (ε : Fin n → Bool) (η : ℝ) (hη : 0 < η) :
    ∃ δ > 0, ∀ (B : Set (KCo ε)) (C : Set (PCoord ε → ℂ)), MeasurableSet B → MeasurableSet C →
      (∀ w ∈ B, ‖w‖ < δ) → (∀ z ∈ C, ‖z‖ < δ) →
      muPolar ε (polSet (B ×ˢ C)) ≤
          ENNReal.ofReal ((1 + η) / (volU (pOf ε) * volU (qOf ε))) * (volume B * volume C) ∧
        ENNReal.ofReal ((1 - η) / (volU (pOf ε) * volU (qOf ε))) * (volume B * volume C) ≤
          muPolar ε (polSet (B ×ˢ C)) := by
  have hm0 : 0 < min η 1 := lt_min hη one_pos
  set t : ℝ := min η 1 / 3 with ht
  have ht0 : 0 < t := by positivity
  have ht1 : t ≤ 1 / 3 := by
    have := min_le_right η 1
    rw [ht]; linarith
  have ht2 : 3 * t ≤ η := by
    have := min_le_left η 1
    rw [ht]; linarith
  obtain ⟨δ1, hδ1, hdk⟩ := dk_density ε t ht0
  obtain ⟨δ2, hδ2, hJ⟩ := jacobian_near_one_of_small ε t ht0
  obtain ⟨δ3, hδ3, hinj⟩ := exp_compact_injOn ε
  refine ⟨min δ1 (min δ2 δ3), lt_min hδ1 (lt_min hδ2 hδ3), fun B C hB hC hBδ hCδ => ?_⟩
  have hB1 : ∀ w ∈ B, ‖w‖ < δ1 := fun w hw => lt_of_lt_of_le (hBδ w hw) (min_le_left _ _)
  have hB3 : ∀ w ∈ B, ‖w‖ < δ3 := fun w hw =>
    lt_of_lt_of_le (hBδ w hw) ((min_le_right _ _).trans (min_le_right _ _))
  have hC2 : ∀ z ∈ C, ‖z‖ < δ2 := fun z hz =>
    lt_of_lt_of_le (hCδ z hz) ((min_le_right _ _).trans (min_le_left _ _))
  have hA := measurableSet_exp_image hB (hinj.mono fun w hw => hB3 w hw)
  rw [polar_measure_product_eq hA hC]
  obtain ⟨hd1, hd2⟩ := hdk B hB hB1
  obtain ⟨hj1, hj2⟩ := hJ C hC hC2
  have hV : 0 < volU (pOf ε) * volU (qOf ε) := mul_pos (_root_.ReciprocityTheory.ChartRestriction.DS.volU_pos' _) (_root_.ReciprocityTheory.ChartRestriction.DS.volU_pos' _)
  set V := volU (pOf ε) * volU (qOf ε) with hVdef
  have hA' : expImageOfCompact B = {k | ∃ w ∈ B, toMK k = NormedSpace.exp (kMat w)} := rfl
  rw [hA']
  constructor
  · calc (∫⁻ z in C, ENNReal.ofReal (Jac z)) * dk ε {k | ∃ w ∈ B, toMK k = NormedSpace.exp (kMat w)}
        ≤ (ENNReal.ofReal (1 + t) * volume C) * (ENNReal.ofReal ((1 + t) / V) * volume B) :=
          mul_le_mul' hj1 hd1
      _ = ENNReal.ofReal ((1 + t) * ((1 + t) / V)) * (volume B * volume C) := by
          rw [ENNReal.ofReal_mul (by linarith)]; ring
      _ ≤ ENNReal.ofReal ((1 + η) / V) * (volume B * volume C) := by
          gcongr
          rw [← mul_div_assoc]
          apply div_le_div_of_nonneg_right _ hV.le
          nlinarith
  · calc ENNReal.ofReal ((1 - η) / V) * (volume B * volume C)
        ≤ ENNReal.ofReal ((1 - t) * ((1 - t) / V)) * (volume B * volume C) := by
          gcongr
          rw [← mul_div_assoc]
          apply div_le_div_of_nonneg_right _ hV.le
          nlinarith
      _ = (ENNReal.ofReal (1 - t) * volume C) * (ENNReal.ofReal ((1 - t) / V) * volume B) := by
          rw [ENNReal.ofReal_mul (by linarith)]; ring
      _ ≤ (∫⁻ z in C, ENNReal.ofReal (Jac z)) * dk ε {k | ∃ w ∈ B, toMK k = NormedSpace.exp (kMat w)} :=
          mul_le_mul' hj2 hd2

end ReciprocityTheory.ChartRestriction.DS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.JacobianNearOneOfSmall =====
