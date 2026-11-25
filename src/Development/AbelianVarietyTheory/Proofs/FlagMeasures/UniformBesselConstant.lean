module

public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.OnePlaceKF
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralAeConvergenceContinuity
public import Development.AbelianVarietyTheory.Definitions.Jets.SideFam
public import Formalism.SharpRestriction.CuspSpanNormBounds.NormalizedLocalScale
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.CellDataExists
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselFunctionEqScalarSqNormalisedBesselTorusCon
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIsType
public import Formalism.SharpRestriction.CuspSpanNormBounds.RelevantZeroGramTerms
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HaarLieIsHaarOnUnipotentRadical
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.BesselDatumBothSidesAreSides
public import Formalism.HermitianCurvature.BesselNonvanishingReduction
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.BesselNormSqEqConstMulArchPairing
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.BetaInfEqIntegralOfIntegrableCoefficient
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DecayThresholdsOfSpectralGapCondition
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentUpperFacts
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.Admissible
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselTorusElementProperties
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LebesgueRootCoordinatesMapBesselTorusConj
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DiscreteSeriesUnitarySmoothBasic
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.HaarEqSmul
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.IsHaarOnIffGroupsUnitaryUnipotent
import Formalism.FormalDegreeBessel.FinalBF
import Formalism.FormalDegreeBessel.FinalG
import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellHermitian
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SettingConstruction
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LowerSmoothStability.ExistsFinStableOfMemSSup
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open BranchingSupport GlobalTheory.CellAmp Formalism.BasicNotions Formalism.MainNotions.S Formalism.QuantumDeterminants Matrix MeasureTheory Finset
open scoped InnerProductSpace ENNReal

namespace GlobalTheory.AmpNorm

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P

variable {k r : ℕ}

section stab

variable (c : Fin r → ℂ) (μ : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ)

theorem mul_bigCell_low (M : B.Mat k r) (i j : Fin (2 * r + k + 1)) (hj : j.val < r) :
    (M * bigCell k r c μ) i j = M i (esI k r ⟨j.val, hj⟩) * c ⟨j.val, hj⟩ := by
  rw [Matrix.mul_apply, Finset.sum_eq_single (esI k r ⟨j.val, hj⟩)]
  · unfold bigCell; rw [dite_eq_left hj, if_pos rfl]
  · intro l _ hl; unfold bigCell; rw [dite_eq_left hj, if_neg hl, mul_zero]
  · simp

theorem bigCell_row (i j : Fin (2 * r + k + 1)) (hi : i.val < r) (h : i.val + j.val ≠ 2 * r + k) :
    bigCell k r c μ i j = 0 := by
  unfold bigCell
  split_ifs with h1 h2 h3 h4 h5
  · have := congrArg Fin.val h2
    simp only [esI] at this
    omega
  · rfl
  · omega
  · rfl
  · omega
  · rfl

theorem bigCell_col (i j : Fin (2 * r + k + 1)) (hj : r + k < j.val) (h : i.val + j.val ≠ 2 * r + k) :
    bigCell k r c μ i j = 0 := by
  unfold bigCell
  rw [dite_eq_right (by omega), dite_eq_right (by omega), if_neg (by omega)]

theorem rStab_bigCell (hc : ∀ a, c a ≠ 0) (hg : bigCell k r c μ ∈ UH (Hpk k r)) :
    RStab k r (bigCell k r c μ) = {1} := by
  have hu := WeylGroupFacts.isUnit_of_uh hg
  set g := bigCell k r c μ with hgdef
  ext a
  rw [Set.mem_singleton_iff]
  refine ⟨fun ⟨ha, hb⟩ => ?_, ?_⟩
  swap
  · rintro rfl
    exact ⟨(nSubgroup k r).1, by rw [Matrix.mul_one, Matrix.nonsing_inv_mul _ hu]; exact (nSubgroup k r).1⟩
  set b := g⁻¹ * a * g with hbdef
  have e : a * g = g * b := by
    rw [hbdef, Matrix.mul_assoc, Matrix.mul_nonsing_inv_cancel_left _ _ hu]
  have ua := fun i j h => UnipotentUpperFacts.N_upper ha i j h
  have ub := fun i j h => UnipotentUpperFacts.N_upper hb i j h
  have hrow : ∀ i j : Fin (2 * r + k + 1), i.val < r → (a * g) i j = g i j := by
    intro i j hi
    rcases le_or_gt (i.val + j.val) (2 * r + k) with h | h
    · rw [e, Matrix.mul_apply, Finset.sum_eq_single (esI k r ⟨i.val, hi⟩)]
      · rw [ub _ _ (by rw [Fin.le_def]; simp only [esI]; omega)]
        split_ifs with h1
        · rw [h1, mul_one]
        · rw [mul_zero, hgdef, bigCell_row c μ i j hi]
          intro h2
          exact h1 (Fin.ext (by simp only [esI]; omega))
      · intro l _ hl
        rw [hgdef, bigCell_row c μ i l hi (fun h2 => hl (Fin.ext (by simp only [esI]; omega))), zero_mul]
      · simp
    · rw [Matrix.mul_apply, hgdef, bigCell_row c μ i j hi h.ne']
      refine Finset.sum_eq_zero fun l _ => ?_
      by_cases hl : l.val + j.val = 2 * r + k
      · rw [ua i l (by rw [Fin.le_def]; omega), if_neg (by rw [Fin.ext_iff]; omega), zero_mul]
      · rw [bigCell_col c μ l j (by omega) hl, mul_zero]
  ext i j
  rw [Matrix.one_apply]
  by_cases hi : i.val < r
  · have : a = a * g * g⁻¹ := (Matrix.mul_nonsing_inv_cancel_right _ _ hu).symm
    rw [this, Matrix.mul_apply, ← Matrix.one_apply, ← Matrix.mul_nonsing_inv _ hu, Matrix.mul_apply]
    exact Finset.sum_congr rfl fun l _ => by rw [hrow i l hi]
  rcases le_or_gt j i with hji | hji
  · exact ua i j hji
  rw [Fin.lt_def] at hji
  by_cases hj : j.val ≤ r + k
  · exact ha.2.2 i j (by omega) hj (by omega)
  have hjl := j.isLt
  have hm : 2 * r + k - j.val < r := by omega
  let m : Fin (2 * r + k + 1) := ⟨2 * r + k - j.val, by omega⟩
  have h1 := mul_bigCell_low c μ a i m hm
  have e1 : esI k r ⟨m.val, hm⟩ = j := Fin.ext (by simp only [esI, m]; omega)
  rw [e1, ← hgdef, e, Matrix.mul_apply, Finset.sum_eq_zero] at h1
  · rw [if_neg (by rw [Fin.ext_iff]; omega)]
    exact (mul_eq_zero.1 h1.symm).resolve_right (hc _)
  · intro l _
    rcases le_or_gt l m with hl | hl
    · rw [Fin.le_def] at hl
      have hl' : l.val < r := lt_of_le_of_lt hl hm
      have : g i l = 0 := by
        rw [hgdef]
        unfold bigCell
        rw [dite_eq_left hl', if_neg]
        rw [Fin.ext_iff]
        simp only [esI, m] at hl ⊢
        omega
      rw [this, zero_mul]
    · rw [ub l m hl.le, if_neg hl.ne', mul_zero]

end stab

theorem lintegral_weight_scale (T T' s : ℝ) (hs : 0 < s) (F : (Fin r → ℂ) × ℂ → ℝ) :
    ∫⁻ q, ENNReal.ofReal (bcWeight k r T T' q * F (B7.d_S r s q)) =
      ENNReal.ofReal ((s ^ B.kap k r)⁻¹) * ∫⁻ q, ENNReal.ofReal (bcWeight k r T T' q * F q) := by
  set f : (Fin r → ℂ) × ℂ → ℝ≥0∞ := fun q => ENNReal.ofReal (bcWeight k r T T' q * F q) with hf
  have hpt : ∀ q, ENNReal.ofReal (bcWeight k r T T' q * F (B7.d_S r s q)) =
      ENNReal.ofReal ((s ^ B7.halfDimensionBlockSummand k r)⁻¹) * f (B7.d_S r s q) := by
    intro q
    simp only [hf]
    rw [B7.d_weight T T' s hs q, ← ENNReal.ofReal_mul (by positivity)]
    congr 1
    field_simp
  simp_rw [hpt]
  rw [lintegral_const_mul' _ _ ENNReal.ofReal_ne_top, ← (B7.d_emb_S s hs).lintegral_map, B7.d_map_S s hs,
    lintegral_smul_measure, smul_eq_mul, ← mul_assoc, ← ENNReal.ofReal_mul (by positivity), B7.d_kap, pow_add,
    mul_inv]

section side

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

theorem hsNormSq_eq [FiniteDimensional ℂ Wq] (A : Wq →L[ℂ] Wp) : hsNormSq A = ‖B.hsVec A‖ ^ 2 := by
  unfold hsNormSq Formalism.MainNotions.S.hsInner B.hsVec
  rw [PiLp.norm_sq_eq_of_L2, Complex.re_sum]
  exact Finset.sum_congr rfl fun i _ => inner_self_eq_norm_sq (𝕜 := ℂ) _

theorem hsNormSq_smul [FiniteDimensional ℂ Wq] (t : ℂ) (A : Wq →L[ℂ] Wp) :
    hsNormSq (t • A) = ‖t‖ ^ 2 * hsNormSq A := by
  rw [hsNormSq_eq, hsNormSq_eq, show B.hsVec (t • A) = t • B.hsVec A from rfl, norm_smul, mul_pow]

theorem norm_inner_of_rankOne {x y : Wp} (h : (innerSL ℂ y).smulRight y = (innerSL ℂ x).smulRight x) :
    ‖⟪y, x⟫_ℂ‖ = ‖⟪x, x⟫_ℂ‖ := by
  have h1 := congrArg (fun A : Wp →L[ℂ] Wp => ‖⟪x, A x⟫_ℂ‖) h
  simp only [ContinuousLinearMap.smulRight_apply, innerSL_apply_apply, inner_smul_right, norm_mul] at h1
  rw [norm_inner_symm x y] at h1
  exact (mul_self_inj (norm_nonneg _) (norm_nonneg _)).1 h1

theorem be_conj [CompleteSpace Wp] (R : Rep k r)
    (hmul : ∀ g ∈ GG k r, ∀ h ∈ GG k r, ∀ v, R.σ (g * h) v = R.σ g (R.σ h v)) (h1 : ∀ v, R.σ 1 v = v)
    (hun : ∀ g ∈ GG k r, ∀ v w, ⟪R.σ g v, R.σ g w⟫_ℂ = ⟪v, w⟫_ℂ)
    {z : Fin (2 * r + k + 1) → ℂ} {c c' : ℂ} (π : B.Mat k r → (Wp →L[ℂ] Wp)) {μW μN : Measure (Mt k r)}
    (hW : B.IsHaarOn (UWset k r z) μW) (hN : B.IsHaarOn (Nset k r) μN) {a : B.Mat k r} (ha : a ∈ GG k r)
    (hc : ∀ h ∈ UWset k r z, a * h = h * a)
    (hp : ∀ n ∈ Nset k r, psi k r z c (a * n * a⁻¹) = psi k r z c' n) (x v : R.H) :
    ThreeDimData.be z c π R.σ μW (μN.map (conjM a)) x v = ThreeDimData.be z c' π R.σ μW μN (R.σ a⁻¹ x) (R.σ a⁻¹ v) := by
  have := B7.sf hW
  have := B7.sf hN
  have hu := WeylGroupFacts.isUnit_of_uh ha
  have hai := WeylGroupFacts.uh_inv ha
  have hm : Measurable (conjM (k := k) (r := r) a) := (BesselUnitaryEquiv.conjE a hu).measurable
  have hΦe : MeasurableEmbedding (Prod.map id (conjM a) : Mt k r × Mt k r → Mt k r × Mt k r) :=
    ((MeasurableEquiv.refl _).prodCongr (BesselUnitaryEquiv.conjE a hu)).measurableEmbedding
  have hΦ : MeasurePreserving (Prod.map id (conjM a) : Mt k r × Mt k r → Mt k r × Mt k r)
      (μW.prod μN) (μW.prod (μN.map (conjM a))) := MeasurePreserving.prod (MeasurePreserving.id _) ⟨hm, rfl⟩
  have q1 := (Measure.quasiMeasurePreserving_fst (μ := μW) (ν := μN)).ae (B7.ae_mem hW)
  have q2 := (Measure.quasiMeasurePreserving_snd (μ := μW) (ν := μN)).ae (B7.ae_mem hN)
  unfold ThreeDimData.be
  rw [← hΦ.integral_comp hΦe]
  refine integral_congr_ae ?_
  filter_upwards [q1, q2] with p hK hM
  obtain ⟨y, b⟩ := p
  set K : B.Mat k r := Matrix.of y
  set M : B.Mat k r := Matrix.of b
  show (⟪v, R.σ (K * (a * M * a⁻¹)) x⟫_ℂ * star (psi k r z c (a * M * a⁻¹))) • π K⁻¹ =
    (⟪R.σ a⁻¹ v, R.σ (K * M) (R.σ a⁻¹ x)⟫_ℂ * star (psi k r z c' M)) • π K⁻¹
  have hKM : K * M ∈ GG k r := WeylGroupFacts.uh_mul hK.1 hM.1
  rw [hp M hM, ← hun a ha (R.σ a⁻¹ v), ← hmul _ ha _ hai, Matrix.mul_nonsing_inv _ hu, h1, ← hmul _ hKM _ hai,
    ← hmul _ ha _ (WeylGroupFacts.uh_mul hKM hai), ← Matrix.mul_assoc K, ← Matrix.mul_assoc K, ← hc K hK]
  simp only [Matrix.mul_assoc]

end side

theorem cellData_bigCell (L : LocBessel k r) (μG : Measure (Mt k r)) (D : B.RealPlaceData k r L.Wp L.Wq)
    (hz : D.z = L.z) (hz' : D.z' = L.z') {q : (Fin r → ℂ) × ℂ} (hq : q ∈ B7.Q0 D) :
    CellData L μG (B.gq D q) (Measure.dirac (fun i j => (1 : MatKR k r) i j)) μG (pairMeas L) := by
  have hOm := BigCellHermitian.gqDom D hq
  refine Model.cellData_open L μG _ hOm.1 (Matrix.nonsing_inv_mul _ (WeylGroupFacts.isUnit_of_uh hOm.1))
    (hz ▸ hz' ▸ hOm.2.2) ?_ (rStab_bigCell _ _ hq.1 hOm.1)
  rw [← hz, ← hz']
  have hZ := bigCellZhat k r D.z D.z' q.1 (D.μsec q.2) D.z_mem D.z'_mem
  rw [BigCellHermitian.herm_bigCell _ _ D.z_mem D.z'_mem, (D.sec.2 q.2 hq.2).2] at hZ
  refine ⟨1, fun a => if h : a.val < r then q.1 ⟨a.val, h⟩ else q.2, fun a => ?_, ?_⟩
  · dsimp only
    split_ifs
    · exact hq.1 _
    · intro h0
      have := hq.2
      rw [h0, map_zero] at this
      exact absurd (mul_pos D.T_pos D.T'_pos) this.not_gt
  · refine hZ.trans ?_
    ext i j
    rw [Matrix.diagonal_apply]
    show _ = if i = j then _ else _
    by_cases h : i = j
    · rw [if_pos h, if_pos h, h]
    · rw [if_neg h, if_neg h]

end GlobalTheory.AmpNorm
