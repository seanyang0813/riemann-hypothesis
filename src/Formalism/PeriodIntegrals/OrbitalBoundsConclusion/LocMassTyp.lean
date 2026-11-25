module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.WProof
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IdxStep
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.HermitianFormStandardFrameVanishes
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.MemSecondProjectionIff
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.Development
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.ContinuousHRRight
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IsClosedCongruenceSubgroup
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.SatSplit
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.CongruenceLiftOfBasis
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.OmMeas
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.RightKDef
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.NonDeg
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.SplitB
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.LocVol
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.SplitDecomp
import Mathlib.Tactic.Linter.Style
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.SaturatedSplitLattice
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.TransitiveOverLocalRings
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.IsTopRingTens
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.UnitaryLocalMassIdentity
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.SelfDualMeasureSFinite

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.WittGen, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.KUnip1Of, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.LocalLatticeOfGlobal, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.MeasurableConjugateCompact, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IdxTop, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IndexFormulaOfSplit, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.OrbitMeasure, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.LocalMassTypeOfParts, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.RightInvariantCompact, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocMassTyp

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.WittGen =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.WittGen", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.WProof\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.SplitDecomp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.LocMassTypW

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.LocVol NumberField IsDedekindDomain Matrix
open scoped TensorProduct

section Gen

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

def cA {σ : E →ₐ[F] E} {v : HeightOneSpectrum (𝓞 F)} (D : SD σ v) {n m : ℕ}
    (Z : Fin m → Fin n → Fv F v ⊗[F] E) (hZ : ∀ a, IntV v (Z a)) :
    Matrix (Fin n) (Fin m) (v.adicCompletionIntegers F) :=
  Matrix.of fun i a => ⟨D.π₁ (Z a i), ((D.hO _).1 (hZ a i)).1⟩

def cB {σ : E →ₐ[F] E} {v : HeightOneSpectrum (𝓞 F)} (D : SD σ v) {n m : ℕ}
    (Z : Fin m → Fin n → Fv F v ⊗[F] E) (hZ : ∀ a, IntV v (Z a)) :
    Matrix (Fin n) (Fin m) (v.adicCompletionIntegers F) :=
  Matrix.of fun i a => ⟨D.π₂ (Z a i), ((D.hO _).1 (hZ a i)).2⟩

theorem witt_gen {σ : E →ₐ[F] E} {n : ℕ} {J : Matrix (Fin n) (Fin n) E} {v : HeightOneSpectrum (𝓞 F)}
    {Λ : Set (Fin n → E)} (D : SD σ v) (Q : GL (Fin n) (Fv F v ⊗[F] E))
    (hQΛ : ∀ y, y ∈ latLoc (E := E) v Λ ↔
      ∃ x : Fin n → Fv F v ⊗[F] E, (∀ i, x i ∈ OEv (E := E) v) ∧
        y = (Q : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) *ᵥ x)
    (hQh : ∀ x y : Fin n → Fv F v ⊗[F] E,
      hR (Fv F v) σ J ((Q : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) *ᵥ x)
        ((Q : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) *ᵥ y) = ∑ i, sigR (Fv F v) σ (x i) * y i)
    (hC : WCore) {m : ℕ} (Z0 Z : Fin m → Fin n → Fv F v ⊗[F] E)
    (hZ0 : ∀ a, IntV v (Z0 a)) (hZ : ∀ a, IntV v (Z a))
    (hA0 : ∃ L : Matrix (Fin m) (Fin n) (v.adicCompletionIntegers F), L * cA D Z0 hZ0 = 1)
    (hB0 : ∃ L : Matrix (Fin m) (Fin n) (v.adicCompletionIntegers F), L * cB D Z0 hZ0 = 1)
    (hA1 : ∃ L : Matrix (Fin m) (Fin n) (v.adicCompletionIntegers F), L * cA D Z hZ = 1)
    (hB1 : ∃ L : Matrix (Fin m) (Fin n) (v.adicCompletionIntegers F), L * cB D Z hZ = 1)
    (hstd : ∀ a b, stdH σ (Z a) (Z b) = stdH σ (Z0 a) (Z0 b)) :
    ∃ k ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v, ∀ a,
      (HA.mat (Fv F v) σ J k : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) *ᵥ
          ((Q : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) *ᵥ Z0 a) =
        (Q : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) *ᵥ Z a := by
  classical
  set Qm : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E) := (Q : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) with hQm
  set Qi : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E) :=
    ((Q⁻¹ : GL (Fin n) (Fv F v ⊗[F] E)) : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) with hQi
  have hQQi : Qm * Qi = 1 := Q.mul_inv
  have hQiQ : Qi * Qm = 1 := Q.inv_mul
  have memΛ : ∀ y, y ∈ latLoc (E := E) v Λ ↔ IntV v (Qi *ᵥ y) := by
    intro y
    rw [hQΛ]
    constructor
    · rintro ⟨x, hx, rfl⟩
      rwa [mulVec_mulVec, hQiQ, one_mulVec]
    · intro hy
      exact ⟨Qi *ᵥ y, hy, by rw [mulVec_mulVec, hQQi, one_mulVec]⟩
  set A0 := cA D Z0 hZ0 with hA0def
  set B0 := cB D Z0 hZ0 with hB0def
  set A1 := cA D Z hZ with hA1def
  set B1 := cB D Z hZ with hB1def
  have hgram : A0ᵀ * B0 = A1ᵀ * B1 := by
    refine Matrix.ext fun a b => Subtype.ext ?_
    have := congrArg D.π₂ (hstd a b)
    rw [D.snd_proj_standard_hermitian_form, D.snd_proj_standard_hermitian_form] at this
    simp only [Matrix.mul_apply, Matrix.transpose_apply]
    push_cast
    simp only [dotProduct] at this
    exact this.symm
  obtain ⟨k1, hk1u, hk1A, hk1B⟩ := hC (v.adicCompletionIntegers F) n m A0 A1 B0 B1 hA0 hA1 hB0 hB1 hgram
  have hdet : IsUnit k1.det := (Matrix.isUnit_iff_isUnit_det k1).1 hk1u
  have hki : k1 * k1⁻¹ = 1 := Matrix.mul_nonsing_inv k1 hdet
  have hik : k1⁻¹ * k1 = 1 := Matrix.nonsing_inv_mul k1 hdet
  set f := (v.adicCompletionIntegers F).subtype with hf
  have mo : ∀ {M N : Matrix (Fin n) (Fin n) (v.adicCompletionIntegers F)}, M * N = 1 →
      M.map f * N.map f = 1 := by
    intro M N hMN
    rw [← Matrix.map_mul, hMN, Matrix.map_one f (map_zero f) (map_one f)]
  have e1 : (k1⁻¹)ᵀᵀ * k1 = 1 := by rw [transpose_transpose, hik]
  have e2 : k1ᵀ * (k1⁻¹)ᵀ = 1 := by rw [← transpose_mul, hik, transpose_one]
  have e3 : (k1⁻¹)ᵀ * k1ᵀ = 1 := by rw [← transpose_mul, hki, transpose_one]
  have tm : ∀ M : Matrix (Fin n) (Fin n) (v.adicCompletionIntegers F), (M.map f)ᵀ = Mᵀ.map f :=
    fun M => (Matrix.transpose_map).symm
  set kstd := D.kS (k1.map f) ((k1⁻¹)ᵀ.map f) with hkstd
  set kstd' := D.kS (k1⁻¹.map f) (k1ᵀ.map f) with hkstd'
  have hkk : kstd * kstd' = 1 := by
    rw [hkstd, hkstd', SD.kS_mul, mo hki, mo e3, SD.kS_one]
  have hk'k : kstd' * kstd = 1 := mul_eq_one_comm.mp hkk

  have hkU : ∀ x y, stdH σ (kstd *ᵥ x) (kstd *ᵥ y) = stdH σ x y := by
    intro x y
    refine D.stdH_kS _ _ ?_ ?_ x y
    · rw [tm, mo e1]
    · rw [tm, mo e2]

  have hkI : ∀ x, IntV v (kstd *ᵥ x) ↔ IntV v x := by
    intro x
    constructor
    · intro hx
      have := D.intV_kS (k1⁻¹) k1ᵀ hx
      rwa [← hkstd', mulVec_mulVec, hk'k, one_mulVec] at this
    · intro hx
      exact D.intV_kS k1 (k1⁻¹)ᵀ hx

  have hkZ : ∀ a, kstd *ᵥ Z0 a = Z a := by
    intro a
    apply D.extV
    · intro i
      rw [hkstd, SD.fst_proj_split_matrix_mulVec]
      have := congrArg (fun M => f (M i a)) hk1A

      simp only [Matrix.mul_apply, map_sum, map_mul] at this
      simp only [mulVec, dotProduct, Matrix.map_apply]
      exact this
    · intro i
      have hB : (k1⁻¹)ᵀ * B0 = B1 := by
        rw [← hk1B, ← Matrix.mul_assoc, e3, Matrix.one_mul]
      rw [hkstd, SD.snd_proj_split_matrix_mulVec]
      have := congrArg (fun M => f (M i a)) hB

      simp only [Matrix.mul_apply, map_sum, map_mul] at this
      simp only [mulVec, dotProduct, Matrix.map_apply]
      exact this

  set kM := Qm * kstd * Qi with hkM
  set kMi := Qm * kstd' * Qi with hkMi
  have hkMM : kM * kMi = 1 := by
    rw [hkM, hkMi]
    calc Qm * kstd * Qi * (Qm * kstd' * Qi) = Qm * (kstd * (Qi * Qm) * kstd') * Qi := by
          simp only [Matrix.mul_assoc]
      _ = 1 := by rw [hQiQ, Matrix.mul_one, hkk, Matrix.mul_one, hQQi]
  have hkMM' : kMi * kM = 1 := mul_eq_one_comm.mp hkMM
  let kG : GL (Fin n) (Fv F v ⊗[F] E) := ⟨kM, kMi, hkMM, hkMM'⟩
  have hkx : ∀ x, kM *ᵥ x = Qm *ᵥ (kstd *ᵥ (Qi *ᵥ x)) := by
    intro x; rw [hkM, mulVec_mulVec, mulVec_mulVec, Matrix.mul_assoc]
  have hmem : kG ∈ HR (Fv F v) σ J := by
    show Formalism.UG.cT (sigR (Fv F v) σ) kM * JR (Fv F v) J * kM = JR (Fv F v) J
    apply hform_ext (sigR (Fv F v) σ)
    intro x y
    rw [← hform_mulVec]
    show hR (Fv F v) σ J (kM *ᵥ x) (kM *ᵥ y) = hR (Fv F v) σ J x y
    rw [hkx, hkx, hQh, ← stdH, hkU, stdH, ← hQh, mulVec_mulVec, mulVec_mulVec, hQQi, one_mulVec,
      one_mulVec]
  let kH : HA (Fv F v) σ J := (⟨kG, hmem⟩ : HR (Fv F v) σ J)
  refine ⟨kH, ?_, ?_⟩
  · intro y
    show y ∈ latLoc (E := E) v Λ ↔ kM *ᵥ y ∈ latLoc (E := E) v Λ
    rw [memΛ, memΛ, hkx, mulVec_mulVec, hQiQ, one_mulVec, hkI]
  · intro a
    show kM *ᵥ (Qm *ᵥ Z0 a) = Qm *ᵥ Z a
    rw [hkx, show Qi *ᵥ (Qm *ᵥ Z0 a) = Z0 a by rw [mulVec_mulVec, hQiQ, one_mulVec], hkZ a]

end Gen

end PI.LocMassTypW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.WittGen =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.KUnip1Of =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.KUnip1Of", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.WittGen\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IdxStep\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.HermitianFormStandardFrameVanishes\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.MemSecondProjectionIff\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.SaturatedSplitLattice\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.SplitDecomp\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.TransitiveOverLocalRings\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.LocMassTypW.WKUP

open Matrix

theorem hform_smul {A : Type} [CommRing A] {n : ℕ} (σ : A →+* A) (J : Matrix (Fin n) (Fin n) A)
    (α β : A) (x y : Fin n → A) :
    Formalism.UG.hform σ J (α • x) (β • y) = σ α * β * Formalism.UG.hform σ J x y := by
  unfold Formalism.UG.hform
  simp only [Pi.smul_apply, smul_eq_mul, map_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  ring

theorem gram_gen {A : Type} [CommRing A] {n r : ℕ} (σ : A →+* A) (J : Matrix (Fin n) (Fin n) A)
    (U : Matrix (Fin (r + 1)) (Fin (r + 1)) A) (Y : Fin (r + 1) → Fin n → A)
    (hU : ∀ c, U (Fin.last r) c = if c = Fin.last r then 1 else 0)
    (hY : ∀ c d, ¬ (c = Fin.last r ∧ d = Fin.last r) → Formalism.UG.hform σ J (Y c) (Y d) = 0)
    (a b : Fin (r + 1)) :
    Formalism.UG.hform σ J (∑ c, U c a • Y c) (∑ c, U c b • Y c) = Formalism.UG.hform σ J (Y a) (Y b) := by
  rw [_root_.PI.LocMassTypW.WGramP.hform_sum_left]
  simp_rw [_root_.PI.LocMassTypW.WGramP.hform_sum_right]
  rw [Finset.sum_eq_single (Fin.last r)]
  · rw [Finset.sum_eq_single (Fin.last r)]
    · by_cases h : a = Fin.last r ∧ b = Fin.last r
      · obtain ⟨rfl, rfl⟩ := h
        simp [hU]
      · rw [hY a b h]
        rcases not_and_or.mp h with ha | hb
        · simp [hU, ha]
        · simp [hU, hb]
    · intro d _ hd
      rw [hY _ d (fun h => hd h.2), mul_zero]
    · intro h
      exact absurd (Finset.mem_univ _) h
  · intro c _ hc
    rw [Finset.sum_eq_zero (fun d _ => by rw [hY c d (fun h => hc h.1), mul_zero]), mul_zero]
  · intro h
    exact absurd (Finset.mem_univ _) h

end PI.LocMassTypW.WKUP

namespace PI.LocMassTypW

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.LocVol NumberField IsDedekindDomain Matrix
open scoped TensorProduct

theorem kUnip1_of (hS : SplitR) : KUnip1 := by
  classical
  intro F E _ _ _ _ _ σ n J ψ v r g P Λ T μS0 hyp u hu
  obtain ⟨hStd, hP, hSD, hUn, _hg, _hgv, _hN, hEta, hPr, hL, _, _⟩ := hyp
  obtain ⟨e, π₁, π₂, _he, _hσe, h1, h2, hπe1, hπe2, hπsc, hσ2, hσ1, hO⟩ := hS σ J ψ v hStd hUn hEta
  let D : SD σ v := ⟨e, π₁, π₂, h1, h2, hπe1, hπe2, hπsc, hσ1, hσ2, hO⟩
  obtain ⟨Q, hQΛ, hQh⟩ := PI.LocMassTypL.latStd_of hS σ J ψ v Λ hStd hSD hUn hEta hL
  set Qm : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E) := (Q : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) with hQm
  set Qi : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E) :=
    ((Q⁻¹ : GL (Fin n) (Fv F v ⊗[F] E)) : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) with hQi
  have hQQi : Qm * Qi = 1 := Q.mul_inv
  have hQiQ : Qi * Qm = 1 := Q.inv_mul
  have memΛ : ∀ y, y ∈ latLoc (E := E) v Λ ↔ IntV v (Qi *ᵥ y) := by
    intro y
    rw [hQΛ]
    constructor
    · rintro ⟨x, hx, rfl⟩
      rwa [mulVec_mulVec, hQiQ, one_mulVec]
    · intro hy
      exact ⟨Qi *ᵥ y, hy, by rw [mulVec_mulVec, hQQi, one_mulVec]⟩
  have linQ : ∀ {m : ℕ} (c : Fin m → Fv F v ⊗[F] E) (W : Fin m → Fin n → Fv F v ⊗[F] E),
      Qi *ᵥ (∑ a, c a • W a) = ∑ a, c a • (Qi *ᵥ W a) := by
    intro m c W
    show Matrix.mulVecLin Qi (∑ a, c a • W a) = _

    rw [map_sum]
    simp only [map_smul, Matrix.mulVecLin_apply]
  have primT : ∀ W : Fin (r + 1) → Fin n → Fv F v ⊗[F] E, IsPrim v Λ W →
      ∀ c : Fin (r + 1) → Fv F v ⊗[F] E, IntV v (∑ a, c a • (Qi *ᵥ W a)) →
        ∀ a, c a ∈ OEv (E := E) v := by
    intro W hW c hc
    apply hW.2 c
    rw [memΛ, linQ]
    exact hc
  have hsc1 : ∀ a : Fin (r + 1), sc (E := E) v ((alp v r a)⁻¹ * alp v r a) = 1 := fun a => by
    rw [inv_mul_cancel₀ (alp_ne_zero v r a), sc_one]
  set Y0 := locF v (ratTup (F := F) (Fv F v) (F0 P)) with hY0
  set U : Matrix (Fin (r + 1)) (Fin (r + 1)) (Fv F v ⊗[F] E) :=
    Matrix.of fun a b => sc (E := E) v ((alp v r a)⁻¹ * alp v r b) * uMat v u a b with hU
  set Yu : Fin (r + 1) → Fin n → Fv F v ⊗[F] E := fun b => ∑ a, U a b • Y0 a with hYu
  set Z0 : Fin (r + 1) → Fin n → Fv F v ⊗[F] E := fun a => Qi *ᵥ Y0 a with hZ0
  set Z : Fin (r + 1) → Fin n → Fv F v ⊗[F] E := fun b => Qi *ᵥ Yu b with hZ
  have hZe : ∀ b i, Z b i = ∑ a, U a b * Z0 a i := by
    intro b i
    simp only [hZ, hYu, linQ, Finset.sum_apply, Pi.smul_apply, smul_eq_mul, hZ0]
  have hUdiag : ∀ a, U a a = 1 := fun a => by
    simp [hU, uMat, hsc1]
  have hUlow : ∀ a b, b < a → U a b = 0 := fun a b hba => by
    simp only [hU, Matrix.of_apply, uMat, if_neg (ne_of_gt hba), dif_neg (not_lt_of_gt hba),
      mul_zero]
  have hUI : ∀ a b, U a b ∈ OEv (E := E) v := by
    intro a b
    rcases lt_trichotomy a b with hab | rfl | hba
    · have := hu ⟨(a, b), hab⟩
      simpa [hU, uMat, ne_of_lt hab, hab] using this
    · rw [hUdiag, D.hO]
      simp only [map_one]
      exact ⟨Subring.one_mem _, Subring.one_mem _⟩
    · rw [hUlow a b hba, D.hO]
      simp only [map_zero]
      exact ⟨Subring.zero_mem _, Subring.zero_mem _⟩
  have hZ0I : ∀ a, IntV v (Z0 a) := fun a => (memΛ _).1 (hPr.1 a)
  have hZI : ∀ b, IntV v (Z b) := by
    intro b i
    rw [hZe, D.hO]

    simp only [map_sum, map_mul]
    exact ⟨Subring.sum_mem _ fun a _ => Subring.mul_mem _ ((D.hO _).1 (hUI a b)).1
        ((D.hO _).1 (hZ0I a i)).1,
      Subring.sum_mem _ fun a _ => Subring.mul_mem _ ((D.hO _).1 (hUI a b)).2
        ((D.hO _).1 (hZ0I a i)).2⟩
  have pZ0 := primT Y0 hPr
  have hA0 := saturated_split_lattice v n (r + 1) (cA D Z0 hZ0I) (fun t ht => D.sat₁ Z0 pZ0 t ht)
  have hB0 := saturated_split_lattice v n (r + 1) (cB D Z0 hZ0I) (fun t ht => D.sat₂ Z0 pZ0 t ht)

  let U1 : Matrix (Fin (r + 1)) (Fin (r + 1)) (v.adicCompletionIntegers F) :=
    Matrix.of fun a b => ⟨D.π₁ (U a b), ((D.hO _).1 (hUI a b)).1⟩
  let U2 : Matrix (Fin (r + 1)) (Fin (r + 1)) (v.adicCompletionIntegers F) :=
    Matrix.of fun a b => ⟨D.π₂ (U a b), ((D.hO _).1 (hUI a b)).2⟩
  have hdet : ∀ W : Matrix (Fin (r + 1)) (Fin (r + 1)) (v.adicCompletionIntegers F),
      (∀ a, W a a = 1) → (∀ a b, b < a → W a b = 0) → IsUnit W.det := by
    intro W hd hl
    rw [Matrix.det_of_isUpperTriangular (fun i j hij => hl i j hij)]
    rw [Finset.prod_eq_one fun i _ => hd i]
    exact isUnit_one
  have hU1 : IsUnit U1.det := hdet U1
    (fun a => Subtype.ext (by simp [U1, hUdiag a]))
    (fun a b hba => Subtype.ext (by simp [U1, hUlow a b hba]))
  have hU2 : IsUnit U2.det := hdet U2
    (fun a => Subtype.ext (by simp [U2, hUdiag a]))
    (fun a b hba => Subtype.ext (by simp [U2, hUlow a b hba]))
  have hAZ : cA D Z hZI = cA D Z0 hZ0I * U1 := by
    refine Matrix.ext fun i b => Subtype.ext ?_
    simp only [cA, U1, Matrix.of_apply, Matrix.mul_apply]
    push_cast

    rw [hZe, map_sum]
    exact Finset.sum_congr rfl fun a _ => by rw [map_mul, mul_comm]
  have hBZ : cB D Z hZI = cB D Z0 hZ0I * U2 := by
    refine Matrix.ext fun i b => Subtype.ext ?_
    simp only [cB, U2, Matrix.of_apply, Matrix.mul_apply]
    push_cast

    rw [hZe, map_sum]
    exact Finset.sum_congr rfl fun a _ => by rw [map_mul, mul_comm]
  have transfer : ∀ (M : Matrix (Fin n) (Fin (r + 1)) (v.adicCompletionIntegers F))
      (W : Matrix (Fin (r + 1)) (Fin (r + 1)) (v.adicCompletionIntegers F)), IsUnit W.det →
      (∃ L : Matrix (Fin (r + 1)) (Fin n) (v.adicCompletionIntegers F), L * M = 1) →
      ∃ L : Matrix (Fin (r + 1)) (Fin n) (v.adicCompletionIntegers F), L * (M * W) = 1 := by
    rintro M W hW ⟨L, hL⟩
    refine ⟨W⁻¹ * L, ?_⟩
    rw [Matrix.mul_assoc, ← Matrix.mul_assoc L, hL, Matrix.one_mul, Matrix.nonsing_inv_mul _ hW]
  have hA1 : ∃ L : Matrix (Fin (r + 1)) (Fin n) (v.adicCompletionIntegers F), L * cA D Z hZI = 1 := by
    rw [hAZ]; exact transfer _ _ hU1 hA0
  have hB1 : ∃ L : Matrix (Fin (r + 1)) (Fin n) (v.adicCompletionIntegers F), L * cB D Z hZI = 1 := by
    rw [hBZ]; exact transfer _ _ hU2 hB0

  have hstdR : ∀ y y' : Fin n → Fv F v ⊗[F] E,
      stdH σ (Qi *ᵥ y) (Qi *ᵥ y') = hR (Fv F v) σ J y y' := by
    intro y y'
    rw [stdH, ← hQh, mulVec_mulVec, mulVec_mulVec, hQQi, one_mulVec, one_mulVec]
  have hlast : ∀ c, U (Fin.last r) c = if c = Fin.last r then 1 else 0 := by
    intro c
    by_cases hc : c = Fin.last r
    · rw [if_pos hc, hc, hUdiag]
    · rw [if_neg hc]
      exact hUlow _ _ (lt_of_le_of_ne (Fin.le_last c) hc)
  have hYoff : ∀ c d, ¬ (c = Fin.last r ∧ d = Fin.last r) →
      Formalism.UG.hform (sigR (Fv F v) σ) (JR (Fv F v) J) (Y0 c) (Y0 d) = 0 := by
    intro c d hcd
    show Formalism.UG.hform (sigR (Fv F v) σ) (JR (Fv F v) J)
      (sc (E := E) v (alp v r c) • ratV (F := F) (Fv F v) (F0 P c))
      (sc (E := E) v (alp v r d) • ratV (F := F) (Fv F v) (F0 P d)) = 0
    rw [WKUP.hform_smul]
    have := WGramP.hR_ratV σ J v (F0 P c) (F0 P d)
    rw [WGramP.hermitian_form_standard_frame_vanishes σ J hStd.1 hStd.2.1 P T hP c d hcd, map_zero] at this
    show _ * _ * hR (Fv F v) σ J _ _ = 0
    rw [this, mul_zero]
  have hstd : ∀ a b, stdH σ (Z a) (Z b) = stdH σ (Z0 a) (Z0 b) := by
    intro a b
    rw [hZ, hZ0]
    simp only
    rw [hstdR, hstdR]
    exact WKUP.gram_gen (sigR (Fv F v) σ) (JR (Fv F v) J) U Y0 hlast hYoff a b
  obtain ⟨k, hkK, hk⟩ := witt_gen D Q hQΛ hQh transitiveOverLocalRings Z0 Z hZ0I hZI hA0 hB0 hA1 hB1 hstd
  refine ⟨k, hkK, fun b => ?_⟩
  have hkb := hk b
  change (HA.mat (Fv F v) σ J k : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) *ᵥ (Qm *ᵥ (Qi *ᵥ Y0 b)) =
    Qm *ᵥ (Qi *ᵥ Yu b) at hkb
  rw [mulVec_mulVec (Y0 b) Qm Qi, mulVec_mulVec (Yu b) Qm Qi, hQQi, one_mulVec, one_mulVec] at hkb
  have hY0b : Y0 b = sc (E := E) v (alp v r b) • ratV (F := F) (Fv F v) (F0 P b) := rfl
  have hYub : Yu b = sc (E := E) v (alp v r b) • ∑ a, uMat v u a b • ratV (F := F) (Fv F v) (F0 P a) := by
    simp only [hYu, Finset.smul_sum, smul_smul]
    refine Finset.sum_congr rfl fun a _ => ?_
    show U a b • (sc (E := E) v (alp v r a) • ratV (F := F) (Fv F v) (F0 P a)) = _
    rw [smul_smul]
    congr 1
    simp only [hU, Matrix.of_apply]
    calc sc (E := E) v ((alp v r a)⁻¹ * alp v r b) * uMat v u a b * sc (E := E) v (alp v r a)
        = sc (E := E) v ((alp v r a)⁻¹ * alp v r a) * (sc (E := E) v (alp v r b) * uMat v u a b) := by
          rw [sc_mul, sc_mul]; ring
      _ = sc (E := E) v (alp v r b) * uMat v u a b := by rw [hsc1, one_mul]
  rw [hY0b, Matrix.mulVec_smul, hYub] at hkb
  have hinv : sc (E := E) v (alp v r b)⁻¹ * sc (E := E) v (alp v r b) = 1 := by
    rw [← sc_mul, inv_mul_cancel₀ (alp_ne_zero v r b), sc_one]
  show (HA.mat (Fv F v) σ J k : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) *ᵥ
      ratV (F := F) (Fv F v) (F0 P b) = _
  calc (HA.mat (Fv F v) σ J k : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) *ᵥ
        ratV (F := F) (Fv F v) (F0 P b)
      = (sc (E := E) v (alp v r b)⁻¹ * sc (E := E) v (alp v r b)) •
        ((HA.mat (Fv F v) σ J k : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) *ᵥ
          ratV (F := F) (Fv F v) (F0 P b)) := by rw [hinv, one_smul]
    _ = _ := by rw [mul_smul, hkb, ← mul_smul, hinv, one_smul]

end PI.LocMassTypW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.KUnip1Of =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.LocalLatticeOfGlobal =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.LocalLatticeOfGlobal", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.Development\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.LocVol NumberField IsDedekindDomain
open scoped TensorProduct

namespace PI.LocMassTypW

def LatOfGlob : Prop :=
  ∀ {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (v : HeightOneSpectrum (𝓞 F)) {n : ℕ} (Λ : Set (Fin n → E)),
    (∃ L : Submodule (𝓞 E) (Fin n → E), Submodule.IsFullLattice E L ∧ (L : Set (Fin n → E)) = Λ) →
    LocMassOrdW.IsLatLoc v Λ

end PI.LocMassTypW

namespace PI.LocMassTypL

section Rat

variable {F E : Type} [Field F] [Field E] [Algebra F E] (R : Type) [CommRing R] [Algebra F R] {n : ℕ}

theorem ratV_add (x y : Fin n → E) : ratV (F := F) R (x + y) = ratV (F := F) R x + ratV (F := F) R y := by
  funext i; simp [ratV, map_add (f := _)]

theorem ratV_zero : ratV (F := F) R (0 : Fin n → E) = 0 := by
  funext i; simp [ratV]

theorem ratV_sum {ι : Type} (s : Finset ι) (x : ι → Fin n → E) :
    ratV (F := F) R (∑ i ∈ s, x i) = ∑ i ∈ s, ratV (F := F) R (x i) := by
  funext j; simp [ratV, map_sum, Finset.sum_apply]

theorem ratV_zsmul (m : ℤ) (x : Fin n → E) : ratV (F := F) R (m • x) = m • ratV (F := F) R x := by
  funext i; simp [ratV]

theorem ratV_smul (a : E) (x : Fin n → E) :
    ratV (F := F) R (a • x) = inclR (F := F) R a • ratV (F := F) R x := by
  funext i; simp [ratV, map_mul]

end Rat

theorem local_lattice_of_global : PI.LocMassTypW.LatOfGlob := by
  intro F E _ _ _ _ _ v n Λ hL
  obtain ⟨L, hL, hLΛ⟩ := hL
  classical
  obtain ⟨S, hS⟩ := hL.toIsLattice.fg
  let b := NumberField.RingOfIntegers.basis E
  set T : Set (Fin n → E) := Set.range (fun p : Module.Free.ChooseBasisIndex ℤ (𝓞 E) × S =>
    (b p.1 : 𝓞 E) • (p.2 : Fin n → E)) with hT
  have hTfin : T.Finite := Set.finite_range _
  have hTL : T ⊆ (L : Set (Fin n → E)) := by
    rintro _ ⟨⟨j, s⟩, rfl⟩
    exact L.smul_mem _ (hS ▸ Submodule.subset_span (Finset.mem_coe.2 s.2))
  have key : ∀ x ∈ L, ratV (F := F) (Fv F v) x ∈
      Submodule.span (v.adicCompletionIntegers F) (ratV (F := F) (Fv F v) '' T) := by
    intro x hx
    rw [← hS] at hx
    obtain ⟨f, -, rfl⟩ := (Submodule.mem_span_finset).1 hx
    rw [ratV_sum]
    refine Submodule.sum_mem _ fun s hs => ?_
    rw [← b.sum_repr (f s), Finset.sum_smul, ratV_sum]
    refine Submodule.sum_mem _ fun j _ => ?_
    rw [smul_assoc, ratV_zsmul]
    have hmem : ratV (F := F) (Fv F v) ((b j : 𝓞 E) • s) ∈ ratV (F := F) (Fv F v) '' T :=
      ⟨_, ⟨(j, ⟨s, hs⟩), rfl⟩, rfl⟩
    exact zsmul_mem (Submodule.subset_span hmem) _
  have heq : latLoc (E := E) v Λ =
      Submodule.span (v.adicCompletionIntegers F) (ratV (F := F) (Fv F v) '' T) := by
    apply le_antisymm
    · rw [latLoc, Submodule.span_le]
      rintro _ ⟨x, hx, rfl⟩
      rw [← hLΛ] at hx
      exact key x hx
    · rw [latLoc]
      exact Submodule.span_mono (Set.image_mono (by rw [← hLΛ]; exact hTL))
  refine ⟨?_, ?_⟩
  · rw [heq]; exact Submodule.fg_span (hTfin.image _)
  · have hspan : ∀ x ∈ Submodule.span E (L : Set (Fin n → E)),
        ratV (F := F) (Fv F v) x ∈ Submodule.span (Fv F v ⊗[F] E)
          (latLoc (E := E) v Λ : Set (Fin n → Fv F v ⊗[F] E)) := by
      intro x hx
      induction hx using Submodule.span_induction with
      | mem y hy =>
        apply Submodule.subset_span
        show ratV (F := F) (Fv F v) y ∈ latLoc (E := E) v Λ
        exact Submodule.subset_span ⟨y, hLΛ ▸ hy, rfl⟩
      | zero => rw [ratV_zero]; exact Submodule.zero_mem _
      | add y z _ _ h1 h2 => rw [ratV_add]; exact Submodule.add_mem _ h1 h2
      | smul a y _ h => rw [ratV_smul]; exact Submodule.smul_mem _ _ h
    rw [eq_top_iff]
    intro y _
    rw [pi_eq_sum_univ y]
    refine Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ ?_
    have := hspan (fun j => if i = j then (1 : E) else 0) (by simp [hL.span_eq_top])
    convert this using 1
    funext j
    by_cases hij : i = j <;> simp [ratV, hij]

end PI.LocMassTypL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.LocalLatticeOfGlobal =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.MeasurableConjugateCompact =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.MeasurableConjugateCompact", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.ContinuousHRRight\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.IsTopRingTens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace LocMassOrdSC

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.LocVol MeasureTheory
  NumberField IsDedekindDomain LocMassOrdW
open scoped TensorProduct Classical

def MeasUO : Prop :=
  ∀ {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (v : HeightOneSpectrum (𝓞 F)) (r : ℕ), MeasurableSet (UO (E := E) v r)

section Alg

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E)
  (v : HeightOneSpectrum (𝓞 F)) (Λ : Set (Fin n → E))

theorem kvc_mul {a b : HA (Fv F v) σ J} (ha : a ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v)
    (hb : b ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v) : a * b ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v :=
  (Kloc (E := E) v Λ).mul_mem ha hb

theorem kvc_inv {a : HA (Fv F v) σ J} (ha : a ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v) :
    a⁻¹ ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v :=
  (Kloc (E := E) v Λ).inv_mem ha

theorem kvc_mem_lat {k : HA (Fv F v) σ J} (hk : k ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v)
    {z : Fin n → Fv F v ⊗[F] E} (hz : z ∈ latLoc (E := E) v Λ) :
    lin (Fv F v) σ J k z ∈ latLoc (E := E) v Λ :=
  (hk z).1 hz

theorem sc_mul (a b : Fv F v) : sc (E := E) v a * sc (E := E) v b = sc (E := E) v (a * b) := by
  simp [sc, Algebra.TensorProduct.tmul_mul_tmul]

theorem dV_ne : dV v ≠ 0 := by
  unfold dV
  split_ifs with h
  · exact h.choose_spec.1
  · exact one_ne_zero

theorem alp_ne (r : ℕ) (a : Fin (r + 1)) : alp v r a ≠ 0 := by
  unfold alp
  split_ifs
  · exact pow_ne_zero _ (inv_ne_zero (dV_ne v))
  · exact one_ne_zero

end Alg

section Main

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E)
  (v : HeightOneSpectrum (𝓞 F)) {r : ℕ} (P : Frame E n r) (Λ : Set (Fin n → E))

theorem uo_of_mem {y : HA (Fv F v) σ J}
    (hy : IsPrim v Λ (locF v (y • ratTup (Fv F v) (F0 P))))
    (s0 : S0 (Fv F v) σ J P) (g : HA (Fv F v) σ J) (x : UIdx r → Fv F v ⊗[F] E)
    (hg : ∀ b, lin (Fv F v) σ J g (ratV (F := F) (Fv F v) (F0 P b)) =
      ∑ a, uMat v x a b • ratV (F := F) (Fv F v) (F0 P a))
    (hk : y * ((s0 : HA (Fv F v) σ J) * g) * y⁻¹ ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v) :
    x ∈ UO (E := E) v r := by
  set X : TupV (E := E) v n (r + 1) := y • ratTup (Fv F v) (F0 P) with hX
  have hXa : ∀ a, X a = lin (Fv F v) σ J y (ratV (F := F) (Fv F v) (F0 P a)) := fun a => rfl
  have hs0 : ∀ a, lin (Fv F v) σ J (s0 : HA (Fv F v) σ J) (ratV (F := F) (Fv F v) (F0 P a)) =
      ratV (F := F) (Fv F v) (F0 P a) := fun a =>
    congrFun (s0.2 : (s0 : HA (Fv F v) σ J) • ratTup (Fv F v) (F0 P) = ratTup (Fv F v) (F0 P)) a
  have hkX : ∀ b, lin (Fv F v) σ J (y * ((s0 : HA (Fv F v) σ J) * g) * y⁻¹) (X b) =
      ∑ a, uMat v x a b • X a := by
    intro b

    rw [hXa, lin_mul, lin_inv_lin, lin_mul, lin_mul, hg, map_sum, map_sum]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [map_smul, hs0, map_smul, hXa]
  intro p
  obtain ⟨⟨a, b⟩, hab⟩ := p
  let c : Fin (r + 1) → Fv F v ⊗[F] E := fun a =>
    sc (E := E) v ((alp v r a)⁻¹ * alp v r b) * uMat v x a b
  have key : ∑ a, c a • locF v X a =
      lin (Fv F v) σ J (y * ((s0 : HA (Fv F v) σ J) * g) * y⁻¹) (locF v X b) := by
    simp only [locF, map_smul, hkX, Finset.smul_sum, smul_smul]
    refine Finset.sum_congr rfl fun a _ => ?_
    congr 1
    have e1 : sc (E := E) v ((alp v r a)⁻¹ * alp v r b) * sc (E := E) v (alp v r a) =
        sc (E := E) v (alp v r b) := by
      rw [sc_mul]
      congr 1
      field_simp [alp_ne v r a]
    calc c a * sc (E := E) v (alp v r a)
        = uMat v x a b * (sc (E := E) v ((alp v r a)⁻¹ * alp v r b) *
            sc (E := E) v (alp v r a)) := by simp only [c]; ring
      _ = sc (E := E) v (alp v r b) * uMat v x a b := by rw [e1, mul_comm]
  have hmem : ∑ a, c a • locF v X a ∈ latLoc (E := E) v Λ := by
    rw [key]
    exact kvc_mem_lat σ J v Λ hk (hy.1 b)
  have := hy.2 c hmem a
  simp only [c, uMat, if_neg hab.ne, dif_pos hab] at this
  exact this

end Main

theorem stepC_at {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (ψ : AddChar (AF F) ℂ)
    (v : HeightOneSpectrum (𝓞 F)) {r : ℕ} (P : Frame E n r) (Λ : Set (Fin n → E))
    (μG : Measure (HA (Fv F v) σ J)) (μS : Measure (Ssub (Fv F v) σ J P))
    (μS0 : Measure (S0 (Fv F v) σ J P)) (y : HA (Fv F v) σ J)
    (h : FrameHyp σ J ψ v P Λ μG μS μS0 y)
    (hC0 : MeasurableSet {g : HA (Fv F v) σ J | y * g * y⁻¹ ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v})
    (hU0 : MeasurableSet (UO (E := E) v r))
    (hE0 : ∀ x : UIdx r → Fv F v ⊗[F] E, ∃ g : HA (Fv F v) σ J,
      ∀ b, lin (Fv F v) σ J g (ratV (F := F) (Fv F v) (F0 P b)) =
        ∑ a, uMat v x a b • ratV (F := F) (Fv F v) (F0 P a))
    (hK0 : ∀ x ∈ UO (E := E) v r, ∃ g : HA (Fv F v) σ J,
      (∀ b, lin (Fv F v) σ J g (ratV (F := F) (Fv F v) (F0 P b)) =
        ∑ a, uMat v x a b • ratV (F := F) (Fv F v) (F0 P a)) ∧
      y * g * y⁻¹ ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v) :
    μS (KSvT σ J v P Λ y) = μS0 (stabilizerConjugateCompact σ J v P Λ y) * sdE (E := E) ψ v (UIdx r) (UO v r) := by
  obtain ⟨_, _, _, _, _, _, _, _, hpu, hy⟩ := id h
  have hC := hC0
  set C := {g : HA (Fv F v) σ J | y * g * y⁻¹ ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v} with hCdef
  let t : (UIdx r → Fv F v ⊗[F] E) → HA (Fv F v) σ J := fun x =>
    if hx : x ∈ UO (E := E) v r then (hK0 x hx).choose
    else (hE0 x).choose
  have ht : ∀ x b, lin (Fv F v) σ J (t x) (ratV (F := F) (Fv F v) (F0 P b)) =
      ∑ a, uMat v x a b • ratV (F := F) (Fv F v) (F0 P a) := by
    intro x b
    by_cases hx : x ∈ UO (E := E) v r
    · simp only [t, dif_pos hx]
      exact (hK0 x hx).choose_spec.1 b
    · simp only [t, dif_neg hx]
      exact (hE0 x).choose_spec b
  have htK : ∀ x ∈ UO (E := E) v r, y * t x * y⁻¹ ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v := by
    intro x hx
    simp only [t, dif_pos hx]
    exact (hK0 x hx).choose_spec.2
  have hiff : ∀ x (s0 : S0 (Fv F v) σ J P), (s0 : HA (Fv F v) σ J) * t x ∈ C ↔
      x ∈ UO (E := E) v r ∧ s0 ∈ stabilizerConjugateCompact σ J v P Λ y := by
    intro x s0
    constructor
    · intro hk
      have hx := uo_of_mem σ J v P Λ hy s0 (t x) x (ht x) hk
      refine ⟨hx, ?_⟩
      have := kvc_mul σ J v Λ hk (kvc_inv σ J v Λ (htK x hx))
      change y * (s0 : HA (Fv F v) σ J) * y⁻¹ ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v
      convert this using 1
      group
    · rintro ⟨hx, hs⟩
      have := kvc_mul σ J v Λ hs (htK x hx)
      rw [hCdef, Set.mem_ofPred_eq]
      convert this using 1
      group
  have hL : μS (KSvT σ J v P Λ y) = ∫⁻ g, C.indicator 1 g ∂(amb μS) := by
    rw [lintegral_indicator_one hC, Measure.map_apply measurable_subtype_coe hC]
    rfl
  rw [hL, hpu (C.indicator 1) (measurable_one.indicator hC) t ht]
  have hs0m : MeasurableSet (stabilizerConjugateCompact σ J v P Λ y) := measurable_subtype_coe hC
  have hpt : ∀ x, ∫⁻ s0, C.indicator 1 ((s0 : HA (Fv F v) σ J) * t x) ∂μS0 =
      (UO (E := E) v r).indicator 1 x * μS0 (stabilizerConjugateCompact σ J v P Λ y) := by
    intro x
    have hq : ∀ s0 : S0 (Fv F v) σ J P,
        C.indicator (1 : HA (Fv F v) σ J → ENNReal) ((s0 : HA (Fv F v) σ J) * t x) =
          (UO (E := E) v r).indicator 1 x * (stabilizerConjugateCompact σ J v P Λ y).indicator 1 s0 := by
      intro s0
      by_cases h1 : (s0 : HA (Fv F v) σ J) * t x ∈ C
      · obtain ⟨a1, a2⟩ := (hiff x s0).1 h1
        rw [Set.indicator_of_mem h1, Set.indicator_of_mem a1, Set.indicator_of_mem a2]
        simp
      · rw [Set.indicator_of_notMem h1]
        by_cases a1 : x ∈ UO (E := E) v r
        · have a2 : s0 ∉ stabilizerConjugateCompact σ J v P Λ y := fun a2 => h1 ((hiff x s0).2 ⟨a1, a2⟩)
          rw [Set.indicator_of_notMem a2, mul_zero]
        · rw [Set.indicator_of_notMem a1, zero_mul]
    simp_rw [hq]
    rw [lintegral_const_mul _ (measurable_one.indicator hs0m), lintegral_indicator_one hs0m]
  simp_rw [hpt]
  rw [lintegral_mul_const _ (measurable_one.indicator hU0), lintegral_indicator_one hU0,
    mul_comm]

theorem measConj {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (v : HeightOneSpectrum (𝓞 F))
    (Λ : Set (Fin n → E)) (hSD : IsSDLoc σ J v Λ) (y : HA (Fv F v) σ J) :
    MeasurableSet {g : HA (Fv F v) σ J | y * g * y⁻¹ ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v} := by
  have hc : Continuous fun g : HA (Fv F v) σ J => y * g * y⁻¹ :=
    (continuous_const.mul continuous_id).mul continuous_const
  exact hc.measurable (LocMassOrdKv.kv_measurableSet σ J v Λ hSD)

theorem measurable_unipotent_orbit : MeasUO := by
  intro F E _ _ _ _ _ v r
  have : BorelSpace (Fv F v ⊗[F] E) := ⟨rfl⟩
  have hset : UO (E := E) v r = ⋂ p : UIdx r, (fun x : UIdx r → Fv F v ⊗[F] E => x p) ⁻¹'
      ((fun z : Fv F v ⊗[F] E => sc (E := E) v ((alp v r p.1.1)⁻¹ * alp v r p.1.2) * z) ⁻¹'
        OEv (E := E) v) := by
    ext x
    simp [UO]
  rw [hset]
  refine MeasurableSet.iInter fun p => measurable_pi_apply p ?_
  exact ((LocMassOrdKv.isClosed_oev v).preimage
    (continuous_const.mul continuous_id)).measurableSet

end LocMassOrdSC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.MeasurableConjugateCompact =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IdxTop =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IdxTop", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IdxStep\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.IsTopRingTens\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IsClosedCongruenceSubgroup\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.UnitaryLocalMassIdentity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.LocMassTypW

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.LocVol MeasureTheory NumberField
  IsDedekindDomain
open scoped TensorProduct Classical

theorem congruence_subgroup_measurable : CongruenceSubgroupMeasurable := by
  intro F E _ _ _ _ _ σ n J ψ v r g P Λ T μS0 hyp
  obtain ⟨-, -, hSD, -, hg, -⟩ := hyp
  exact (PI.LocMassTypM.isClosed_congruence_subgroup σ J v Λ hSD hg P).measurableSet

theorem isOpen_uog {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (v : HeightOneSpectrum (𝓞 F)) (r g : ℕ) : IsOpen (UOg (E := E) v g r) := by
  rw [PI.LocMassTypU.uog_eq v g r]
  exact PI.LocMassTypU.isOpen_boxS _

theorem unipotent_orbit_measurable : MeasUOg := by
  intro F E _ _ _ _ _ v r g _
  haveI := PI.LocMassTypM.sc_tensV (E := E) v
  haveI := PI.LocMassTypM.borel_tensV (E := E) v
  exact (isOpen_uog (E := E) v r g).measurableSet

theorem unipotent_orbit_count : CountUOg := by
  intro F E _ _ _ _ _ v r g _
  haveI := PI.LocMassTypM.sc_tensV (E := E) v
  haveI : SecondCountableTopology (UIdx r → Fv F v ⊗[F] E) := inferInstance
  have hB : IsOpen (UOgS (E := E) v g r : Set (UIdx r → Fv F v ⊗[F] E)) := isOpen_uog v r g
  rw [← Set.countable_univ_iff]
  have hd : (Set.univ : Set ((UIdx r → Fv F v ⊗[F] E) ⧸ UOgS (E := E) v g r)).PairwiseDisjoint
      (fun q => (QuotientAddGroup.mk : (UIdx r → Fv F v ⊗[F] E) → _ ⧸ UOgS (E := E) v g r) ⁻¹' {q}) :=
    Set.pairwiseDisjoint_fiber _ _
  refine hd.countable_of_isOpen (fun q _ => ?_) (fun q _ => ?_)
  · obtain ⟨x, rfl⟩ := QuotientAddGroup.mk_surjective q
    have e : (QuotientAddGroup.mk : (UIdx r → Fv F v ⊗[F] E) → _ ⧸ UOgS (E := E) v g r) ⁻¹'
        {(QuotientAddGroup.mk x : _ ⧸ UOgS (E := E) v g r)} =
        (fun w => -x + w) ⁻¹' (UOgS (E := E) v g r : Set (UIdx r → Fv F v ⊗[F] E)) := by
      ext w
      simp only [Set.mem_preimage, Set.mem_singleton_iff, SetLike.mem_coe]
      rw [eq_comm, QuotientAddGroup.eq]
    rw [e]
    exact hB.preimage (continuous_const.add continuous_id)
  · obtain ⟨x, rfl⟩ := QuotientAddGroup.mk_surjective q
    exact ⟨x, rfl⟩

theorem index_formula_of_lift (hL : CongruenceSubgroupLift) (hU : KUnip1) : StepIdx :=
  stepIdx_of hL hU congruence_subgroup_measurable unipotent_orbit_measurable unipotent_orbit_count

end PI.LocMassTypW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IdxTop =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IndexFormulaOfSplit =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IndexFormulaOfSplit", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IdxStep\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.SatSplit\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.CongruenceLiftOfBasis\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IdxTop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.LocMassTypL

open PI.LocMassTypW

theorem index_formula_of_split (hS : SplitR) (hU : KUnip1) : StepIdx :=
  index_formula_of_lift (congruence_lift_of_split hS) hU

end PI.LocMassTypL
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IndexFormulaOfSplit =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.OrbitMeasure =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.OrbitMeasure", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.OmMeas\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.ContinuousHRRight\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.IsTopRingTens\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IsClosedCongruenceSubgroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.LocMassTypM

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.LocVol MeasureTheory NumberField IsDedekindDomain
open scoped TensorProduct
open PI.LocMassTypW

theorem orbit_measure : OmMeas := by
  intro F E _ _ _ _ _ σ n J ψ v r g P P' Λ T T' κ μG μS0 μS0' hyp
  obtain ⟨-, -, -, hSD, -, hg, hgv, -⟩ := hyp
  have hKv : IsClosed (Formalism.L2.SG.TypedSets.Kv σ J Λ v) := LocMassOrdKv.isClosed_Kv σ J v Λ hSD
  have hK1 : IsClosed (K1 σ J v Λ g P) := isClosed_congruence_subgroup σ J v Λ hSD hg P

  have hK1' : ∀ k : HA (Fv F v) σ J, IsClosed {c | k⁻¹ * c * κ⁻¹ ∈ K1 σ J v Λ g P} := fun k =>
    hK1.preimage ((continuous_const.mul continuous_id).mul continuous_const)
  exact ⟨measurableSet_omTyp v Λ σ J hSD hg hgv r, LocMassOrdKv.kv_measurableSet σ J v Λ hSD,
    hK1.measurableSet, measurableSet_image_closed σ J v hKv _,
    fun k => measurableSet_image_closed σ J v (hK1' k) _⟩

end PI.LocMassTypM
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.OrbitMeasure =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.LocalMassTypeOfParts =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.LocalMassTypeOfParts", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.LocalLatticeOfGlobal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IdxStep\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.RightKDef\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.MeasurableConjugateCompact\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.NonDeg\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.SelfDualMeasureSFinite\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.HermitianFormStandardFrameVanishes\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IndexFormulaOfSplit\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.MemSecondProjectionIff\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.OrbitMeasure\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.SaturatedSplitLattice\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.SplitB\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.TransitiveOverLocalRings\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.UnitaryLocalMassIdentity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.OmMeas\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.LocMassTypW

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.LocVol MeasureTheory NumberField
  IsDedekindDomain
open scoped TensorProduct

def StepCT : Prop :=
  ∀ {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (ψ : AddChar (AF F) ℂ)
    (v : HeightOneSpectrum (𝓞 F)) {r : ℕ} (g : ℕ) (P : Frame E n r) (Λ : Set (Fin n → E)) (T : F)
    (μG : Measure (HA (Fv F v) σ J)) (μS : Measure (Ssub (Fv F v) σ J P))
    (μS0 : Measure (S0 (Fv F v) σ J P)),
    LocMassOrdW.FrameHyp σ J ψ v P Λ μG μS μS0 1 → P.IsStd σ J T → etaV (E := E) v = 1 →
    LocMassOrdW.IsLatLoc v Λ → g.Prime → (g : 𝓞 F) ∈ v.asIdeal → Ideal.absNorm v.asIdeal = g →
    (μS0 (stabilizerCompact σ J v Λ P)).toReal ≠ 0 →
    μS (KSv σ J v P Λ) = μS0 (stabilizerCompact σ J v Λ P) * sdE (E := E) ψ v (UIdx r) (UO v r)

theorem stepCT_of (hKU : KUnip1) : StepCT := by
  intro F E _ _ _ _ _ σ n J ψ v r g P Λ T μG μS μS0 Fr hP hEta hL hg hgv hN ha
  have hPr : IsPrim v Λ (locF v (ratTup (F := F) (Fv F v) (F0 P))) := by
    have := Fr.2.2.2.2.2.2.2.2.2
    rwa [one_smul] at this
  have key := LocMassOrdSC.stepC_at σ J ψ v P Λ μG μS μS0 1 Fr
    (LocMassOrdSC.measConj σ J v Λ Fr.2.2.1 1) (LocMassOrdSC.measurable_unipotent_orbit v r)
    (unipSplitF PI.LocMassTypS.split_reduction (PI.LocMassTypL.latStd_of PI.LocMassTypS.split_reduction)
      σ J ψ v P Λ T Fr.1 hP Fr.2.2.1 Fr.2.2.2.1 hEta hL hPr)
    (fun x hx => by
      obtain ⟨s, hs, hsx⟩ := hKU σ J ψ v g P Λ T μS0
        ⟨Fr.1, hP, Fr.2.2.1, Fr.2.2.2.1, hg, hgv, hN, hEta, hPr, hL, Fr.2.2.2.2.2.2.1, ha⟩ x hx
      exact ⟨s, hsx, by simpa using hs⟩)
  rwa [KSv_eq, stabilizer_compact_eq] at key

theorem local_mass_type_formula (hOm : StepOm) (hC : StepCT) (hIdx : StepIdx) (hG : LatOfGlob)
    {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E)
    {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (ψ : AddChar (AF F) ℂ) (v : HeightOneSpectrum (𝓞 F))
    {r : ℕ} (g : ℕ) (P P' : Frame E n r) (Λ : Set (Fin n → E)) :
    Formalism.L2.SG.LocVol.TypLocAt σ J ψ v g P P' Λ := by
  intro hStd T T' hP hP' hSD hUn hGL hg hgv hN hEta hκ μG hμG μS hμS hTie μS' hμS' hTie' hPr hPr'
  have hL := hG v Λ hGL
  obtain ⟨κ, hκK, hκc⟩ := hκ
  obtain ⟨μS0, hμS0, hCm, hPU⟩ := hTie
  obtain ⟨μS0', hμS0', hCm', hPU'⟩ := hTie'
  have Fr : LocMassOrdW.FrameHyp σ J ψ v P Λ μG μS μS0 1 :=
    ⟨hStd, ⟨T, hP⟩, hSD, hUn, hμG, hμS, hμS0, hCm, hPU, by rw [one_smul]; exact hPr⟩
  have Fr' : LocMassOrdW.FrameHyp σ J ψ v P' Λ μG μS' μS0' 1 :=
    ⟨hStd, ⟨T', hP'⟩, hSD, hUn, hμG, hμS', hμS0', hCm', hPU', by rw [one_smul]; exact hPr'⟩
  have ha : (μS0 (stabilizerCompact σ J v Λ P)).toReal ≠ 0 := by
    rw [← stabilizer_compact_eq]; exact LocMassOrdND.nondegenerate_lattice σ J ψ v P Λ μG μS μS0 1 Fr hL
  have ha' : (μS0' (stabilizerCompact σ J v Λ P')).toReal ≠ 0 := by
    rw [← stabilizer_compact_eq]; exact LocMassOrdND.nondegenerate_lattice σ J ψ v P' Λ μG μS' μS0' 1 Fr' hL
  have h1 := hC σ J ψ v g P Λ T μG μS μS0 Fr hP hEta hL hg hgv hN ha
  have h2 := hC σ J ψ v g P' Λ T' μG μS' μS0' Fr' hP' hEta hL hg hgv hN ha'
  have h1r := congrArg ENNReal.toReal h1
  have h2r := congrArg ENNReal.toReal h2
  rw [ENNReal.toReal_mul] at h1r h2r
  have hu := PI.LocMassTypU.unitary_local_mass_identity σ J ψ v (r := r) g hStd hg hgv
  rw [hu, h1r, h2r]
  have hM := hOm σ J ψ v g P P' Λ T T' κ μG μS0 μS0' hStd hP hP' hSD hUn hg hgv hN hEta hκK hκc
    hμG hμS0 hCm hμS0' hCm' hPr hPr' hL ha ha'
  have hi := hIdx σ J ψ v g P Λ T μG μS0 hStd hP hSD hUn hg hgv hN hEta hPr hμG hL hμS0 ha
  exact arith _ _ _ _ _ _ _ _ _ _ hM rfl rfl hi ha ha' (PI.LocMassTypU.positivity_of_local_mass σ J ψ v g hStd hg hgv)

theorem local_mass_type_of_parts (hRK : RightK) (hKU : KUnip1)
    {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E)
    {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (ψ : AddChar (AF F) ℂ) (v : HeightOneSpectrum (𝓞 F))
    {r : ℕ} (g : ℕ) (P P' : Frame E n r) (Λ : Set (Fin n → E)) :
    Formalism.L2.SG.LocVol.TypLocAt σ J ψ v g P P' Λ :=
  local_mass_type_formula
    (stepOm_ofK (stepW_of PI.LocMassTypS.split_reduction (PI.LocMassTypL.latStd_of PI.LocMassTypS.split_reduction)
      saturated_split_lattice transitiveOverLocalRings) PI.LocMassTypM.orbit_measure hRK LocMassOrdSF.orbit_measure_sFinite)
    (stepCT_of hKU) (PI.LocMassTypL.index_formula_of_split PI.LocMassTypS.split_reduction hKU)
    PI.LocMassTypL.local_lattice_of_global σ J ψ v g P P' Λ

end PI.LocMassTypW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.LocalMassTypeOfParts =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.RightInvariantCompact =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.RightInvariantCompact", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.RightKDef\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.IsTopRingTens\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.NonDeg\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.IsClosedCongruenceSubgroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.LocMassTypR

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.LocVol MeasureTheory NumberField IsDedekindDomain
open PI.LocMassTypW

theorem kv_mul_right_iff {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E]
    [Algebra F E] (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E)
    (v : HeightOneSpectrum (𝓞 F)) (Λ : Set (Fin n → E)) {κ c : HA (Fv F v) σ J}
    (hκ : κ ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v) :
    c * κ ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v ↔ c ∈ Formalism.L2.SG.TypedSets.Kv σ J Λ v :=
  by
  unfold Formalism.L2.SG.TypedSets.Kv at hκ ⊢
  simp only [Set.mem_setOf_eq] at hκ ⊢
  exact Subgroup.mul_mem_cancel_right _ hκ

theorem right_invariant_compact : RightK := by
  intro F E _ _ _ _ _ σ n J ψ v Λ μG _ hSD _ _ hLat hH κ hκ A _
  haveI := hH
  haveI : LocallyCompactSpace (HA (Fv F v) σ J) := PI.LocMassTypM.lc_HA σ J v
  haveI : SecondCountableTopology (HA (Fv F v) σ J) := PI.LocMassTypM.sc_HA σ J v
  have hKc : IsCompact (Formalism.L2.SG.TypedSets.Kv σ J Λ v) := LocMassOrdND.isCompact_Kv σ J v Λ hSD hLat.1
  have hKo : IsOpen (Formalism.L2.SG.TypedSets.Kv σ J Λ v) := LocMassOrdND.isOpen_Kv σ J v Λ hSD hLat.1
  set e : HA (Fv F v) σ J ≃ᵐ HA (Fv F v) σ J := MeasurableEquiv.mulRight κ with he
  have hcoe : ∀ x, e x = x * κ := fun x => rfl
  set μ' : Measure (HA (Fv F v) σ J) := μG.map e with hμ'
  have hμ'app : ∀ s, μ' s = μG ((fun c => c * κ) ⁻¹' s) := fun s => by
    rw [hμ', MeasurableEquiv.map_apply]
    rfl
  haveI : μ'.IsMulLeftInvariant := by
    refine ⟨fun g => ?_⟩
    ext s hs
    rw [Measure.map_apply (measurable_const_mul g) hs, hμ'app, hμ'app]
    have hpre : (fun c => c * κ) ⁻¹' ((fun x => g * x) ⁻¹' s) =
        (fun x => g * x) ⁻¹' ((fun c => c * κ) ⁻¹' s) := by
      ext x
      simp only [Set.mem_preimage, mul_assoc]
    rw [hpre, ← Measure.map_apply (measurable_const_mul g) ((measurable_mul_const κ) hs),
      MeasureTheory.map_mul_left_eq_self μG g]
  haveI : IsFiniteMeasureOnCompacts μ' := by
    refine ⟨fun C hC => ?_⟩
    rw [hμ'app]
    have hC' : IsCompact ((fun c => c * κ) ⁻¹' C) :=
      (Homeomorph.mulRight κ).isCompact_preimage.mpr hC
    exact hC'.measure_lt_top
  have hsmul := Measure.isMulLeftInvariant_eq_smul μ' μG
  have hKpre : (fun c => c * κ) ⁻¹' (Formalism.L2.SG.TypedSets.Kv σ J Λ v) = Formalism.L2.SG.TypedSets.Kv σ J Λ v := by
    ext c
    exact kv_mul_right_iff σ J v Λ hκ
  have hm0 : μG (Formalism.L2.SG.TypedSets.Kv σ J Λ v) ≠ 0 := hKo.measure_ne_zero μG ⟨κ, hκ⟩
  have hmt : μG (Formalism.L2.SG.TypedSets.Kv σ J Λ v) ≠ ⊤ := hKc.measure_lt_top.ne
  have hc1 : ((Measure.haarScalarFactor μ' μG : NNReal) : ENNReal) = 1 := by
    have h := congrArg (fun m : Measure (HA (Fv F v) σ J) => m (Formalism.L2.SG.TypedSets.Kv σ J Λ v)) hsmul
    simp only [Measure.smul_apply, hμ'app, hKpre, ENNReal.smul_def, smul_eq_mul] at h
    have h2 : ((Measure.haarScalarFactor μ' μG : NNReal) : ENNReal) * μG (Formalism.L2.SG.TypedSets.Kv σ J Λ v) =
        1 * μG (Formalism.L2.SG.TypedSets.Kv σ J Λ v) := by rw [one_mul]; exact h.symm
    first
      | exact (ENNReal.mul_left_inj hm0 hmt).mp h2
  rw [← hμ'app, hsmul, Measure.smul_apply, ENNReal.smul_def, smul_eq_mul, hc1, one_mul]

end PI.LocMassTypR
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.RightInvariantCompact =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocMassTyp =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocMassTyp", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.LocVol\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.KUnip1Of\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.LocalMassTypeOfParts\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.RightInvariantCompact\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassType.SplitB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub NumberField IsDedekindDomain

theorem locMassTyp {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (ψ : AddChar (AF F) ℂ) (v : HeightOneSpectrum (𝓞 F)) {r : ℕ} (g : ℕ) (P P' : Frame E n r) (Λ : Set (Fin n → E)) : Formalism.L2.SG.LocVol.TypLocAt σ J ψ v g P P' Λ :=
  PI.LocMassTypW.local_mass_type_of_parts PI.LocMassTypR.right_invariant_compact
    (PI.LocMassTypW.kUnip1_of PI.LocMassTypS.split_reduction) σ J ψ v g P P' Λ
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocMassTyp =====
