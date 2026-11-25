module

public import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.MultOne
public import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.IsSimpleFam
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.IsFRepDualStandardUnitaryRep
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightUniqueness.HpkMulMulHpkApply
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ChainRuleSecondOrder.HasDerivAtDOf
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.CompoundMatrixCauchyBinetProperties
public import CompanionTheory.HarishChandraModules.BesselParameterIntegrals.SmoothCyclicVectors.SmoothCyc
public import CompanionTheory.AutomorphicTheory.SchurLimitBounds.SchurOrthogonality.SchurH
public import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.CapelliEigenvalues.BetaAtInfinityZero
public import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.ShiftApply
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.OrbitDerivatives.EtaleClosedPointLiftsSimpleRootsMonic
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.OrbitDerivatives.LieAlgebraHomomorphism
public import CompanionTheory.HarishChandraModules.LowKTypeMultiplicity.DiscreteSeriesCharacters.DiscreteSeriesInfinitesimalCharacter
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.CasimirDiagonalSum
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.CasimirSplitting
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.DecompositionOfTrace
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.StandardDifferential
import CompanionTheory.HarishChandraModules.BesselParameterIntegrals.SmoothCyclicVectors.PhMeas

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.AdjFromApply, CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.DecompositionOfInjective, CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.CountingBound, CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.DecompositionOfTensorFromHomLaws, CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorDifferentialMatrixUnitFormula, CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorDifferentialSignRuleQuadratic, CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorIntegrality, CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorPowerIntegral, CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.HomCategory, CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.MatrixHom, CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.SnTens2, CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.TensorPowerIntegral, CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ToRawComplex, CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.UnitaryIso, CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ZuckermanHypothesis, CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.ZuckermanIngredients

-- ===== clump member: CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.AdjFromApply =====
-- clump-header: {"m": "CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.AdjFromApply", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.MultOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Bool\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset
open scoped Kronecker

noncomputable section

namespace CompanionTheory.Zuck

open BranchingSupport Formalism.FourierDecayAlt.ThreeDimData

variable {k r : ℕ}

theorem cMT_mul {n : ℕ} {A B : Matrix (Fin n) (Fin n) ℂ} (h : A * Bᵀ = 1) :
    (cM n)ᵀ * (1 : Matrix Unit Unit ℂ) = (A ⊗ₖ B) * (cM n)ᵀ := by
  ext ⟨i, j⟩ u
  rw [Matrix.mul_one]
  have hij := congrFun (congrFun h i) j
  simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.one_apply] at hij
  simp only [Matrix.mul_apply, Matrix.transpose_apply, cM, Matrix.kroneckerMap_apply, Fintype.sum_prod_type]
  rw [← hij]
  apply Finset.sum_congr rfl
  intro a _
  rw [Finset.sum_eq_single a]
  · simp
  · intro b _ hb
    simp [Ne.symm hb]
  · simp

private theorem hpk_apply_lemma (k r : ℕ) (i l : Fin (2 * r + k + 1)) :
    Formalism.QuantumDeterminants.Hpk k r i l = if (l : ℕ) = (if (i : ℕ) < r ∨ r + k < i then 2 * r + k - i else i) then
      (if (i : ℕ) = r + k then -1 else 1) else 0 := by
  have hi := i.2
  simp only [Formalism.QuantumDeterminants.Hpk]
  split_ifs <;> (try simp only [Fin.ext_iff] at *) <;> first | rfl | omega

private theorem hpk_mul_self_lemma_2 (k r : ℕ) : Formalism.QuantumDeterminants.Hpk k r * Formalism.QuantumDeterminants.Hpk k r = 1 := by
  ext i j
  have hi := i.2
  have hj := j.2
  rw [Matrix.mul_apply]
  simp only [hpk_apply_lemma]
  rw [Finset.sum_eq_single ⟨if (i : ℕ) < r ∨ r + k < i then 2 * r + k - i else i, by split_ifs <;> omega⟩]
  · simp only [Matrix.one_apply, Fin.ext_iff]
    split_ifs <;> first | rfl | omega | norm_num
  · intro l _ hl
    rw [if_neg (fun h => hl (Fin.ext h)), zero_mul]
  · intro h
    exact absurd (Finset.mem_univ _) h

private theorem isUnit_det_lemma_3 {k r : ℕ} {g : Formalism.FourierDecayAlt.ThreeDimData.Mx k r} (hg : g ∈ BranchingSupport.GG k r) : IsUnit g.det := by
  have hH : (Formalism.QuantumDeterminants.Hpk k r).det ≠ 0 := by
    intro h0
    have h1 := congrArg Matrix.det (hpk_mul_self_lemma_2 k r)
    rw [Matrix.det_mul, h0, zero_mul, Matrix.det_one] at h1
    exact zero_ne_one h1
  have hg' : g.conjTranspose * Formalism.QuantumDeterminants.Hpk k r * g = Formalism.QuantumDeterminants.Hpk k r := hg
  rw [isUnit_iff_ne_zero]
  intro h0
  apply hH
  rw [← hg', Matrix.det_mul, h0, mul_zero]

theorem cMT_hom (hM : MatHom) (b : Bool) (B : URep k r) :
    IsHom (one B) ((vr k r b).tens (vr k r (!b)), B) (mAct (cM _)ᵀ) := by
  refine hM k r (triv k r) ((vr k r b).tens (vr k r (!b))) B (cM _)ᵀ (fun g hg => ?_)
  have hinv : g * g⁻¹ = 1 := Matrix.mul_nonsing_inv g (isUnit_det_lemma_3 hg)
  have hAB : (vr k r b).ρ g * ((vr k r (!b)).ρ g)ᵀ = 1 := by
    cases b <;> simp [vr, BranchingSupport.dualM, hinv, ← Matrix.transpose_mul]
  exact cMT_mul hAB

def uR (ι : Type) [DecidableEq ι] : Matrix (ι × Unit) ι ℂ := fun p d => if p.1 = d then 1 else 0

theorem uR_int (F : FRep k r) (g : Mx k r) : uR F.ι * F.ρ g = (F.tens (triv k r)).ρ g * uR F.ι := by
  ext ⟨i, u⟩ d
  cases u
  simp [Matrix.mul_apply, uR, FRep.tens, triv, Matrix.kroneckerMap_apply, Fintype.sum_prod_type]

theorem uMT_int (F : FRep k r) (g : Mx k r) : (uM F.ι)ᵀ * ((triv k r).tens F).ρ g = F.ρ g * (uM F.ι)ᵀ := by
  ext d ⟨u, e⟩
  cases u
  simp [Matrix.mul_apply, uM, FRep.tens, triv, Matrix.kroneckerMap_apply, Fintype.sum_prod_type]

section

variable {n : ℕ} {V V' : Type} [AddCommGroup V] [Module ℂ V] [AddCommGroup V'] [Module ℂ V']

def adjTo (p : (Fin n → V) →ₗ[ℂ] (Unit → V')) : (Unit → V) →ₗ[ℂ] (Fin n → V') :=
  mAct (uM (Fin n))ᵀ ∘ₗ (on1 p ∘ₗ mAct (cM n)ᵀ)

def adjFrom (i : (Unit → V) →ₗ[ℂ] (Fin n → V')) : (Fin n → V) →ₗ[ℂ] (Unit → V') :=
  mAct (cM n) ∘ₗ (on2 i ∘ₗ mAct (uR (Fin n)))

theorem adjTo_apply (p : (Fin n → V) →ₗ[ℂ] (Unit → V')) (x : Unit → V) (d : Fin n) :
    adjTo p x d = p (Pi.single d (x ())) () := by
  simp [adjTo, mAct_apply, uM, on1, Fintype.sum_prod_type]
  have e : (LinearMap.funLeft ℂ V fun c => (c, d)) ((mAct (cM n)ᵀ) x) = Pi.single d (x ()) := by
    funext c
    simp [LinearMap.funLeft_apply, mAct_apply, cM, Matrix.transpose_apply, Pi.single_apply]
  rw [e]

theorem adjFrom_apply (i : (Unit → V) →ₗ[ℂ] (Fin n → V')) (y : Fin n → V) (u : Unit) :
    adjFrom i y u = ∑ c, i (fun _ => y c) c := by
  simp [adjFrom, mAct_apply, cM, on2, Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro c _
  have e : (LinearMap.funLeft ℂ V fun d => (c, d)) ((mAct (uR (Fin n))) y) = fun _ => y c := by
    funext u
    simp [LinearMap.funLeft_apply, mAct_apply, uR]
  rw [e]

def adjEquiv : ((Fin n → V) →ₗ[ℂ] (Unit → V')) ≃ₗ[ℂ] ((Unit → V) →ₗ[ℂ] (Fin n → V')) where
  toFun := adjTo
  invFun := adjFrom
  map_add' p q := LinearMap.ext fun x => funext fun d => by simp [adjTo_apply]
  map_smul' a p := LinearMap.ext fun x => funext fun d => by simp [adjTo_apply]
  left_inv p := LinearMap.ext fun y => funext fun u => by
    rw [adjFrom_apply]
    simp only [adjTo_apply]

    rw [← Finset.sum_apply, ← map_sum, Finset.univ_sum_single]
  right_inv i := LinearMap.ext fun x => funext fun d => by
    rw [adjTo_apply, adjFrom_apply, Finset.sum_eq_single d]
    · simp
    · intro c _ hc
      rw [Pi.single_eq_of_ne hc]
      exact congrFun (map_zero i) c
    · simp

end

theorem adj_of (hC : HomCat) (hM : MatHom) (hT : TensHom) : Adj := by
  intro k r b U U'
  refine ⟨adjEquiv, fun p => ⟨fun hp => ?_, fun hq => ?_⟩⟩
  · have h1 := cMT_hom hM b U
    have h2 := (hT k r (vr k r b) (triv k r) (vr k r (!b)) U U' p hp).1
    have h3 : IsHom ((triv k r).tens (vr k r (!b)), U') (vr k r (!b), U') (mAct (uM (vr k r (!b)).ι)ᵀ) :=
      hM k r _ _ U' _ (fun g _ => uMT_int (vr k r (!b)) g)
    exact (hC k r).comp _ _ _ _ _ ((hC k r).comp _ _ _ _ _ h1 h2) h3
  · have h1 : IsHom (vr k r b, U) ((vr k r b).tens (triv k r), U) (mAct (uR (vr k r b).ι)) :=
      hM k r _ _ U _ (fun g _ => uR_int (vr k r b) g)
    have h2 := (hT k r (triv k r) (vr k r (!b)) (vr k r b) U U' (adjEquiv p) hq).2
    have h3 := cM_hom hM b U'
    have h4 := (hC k r).comp _ _ _ _ _ ((hC k r).comp _ _ _ _ _ h1 h2) h3
    rw [← adjEquiv.left_inv p]
    exact h4

end CompanionTheory.Zuck

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.AdjFromApply =====

-- ===== clump member: CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.DecompositionOfInjective =====
-- clump-header: {"m": "CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.DecompositionOfInjective", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.IsSimpleFam\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.IsFRepDualStandardUnitaryRep\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightUniqueness.HpkMulMulHpkApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset
open scoped ContDiff

noncomputable section

namespace CompanionTheory.Zuck

open BranchingSupport Formalism.FourierDecayAlt Formalism.FourierDecayAlt.ThreeDimData

theorem decomposition_of_injective : DecOfInj := by
  intro O N _ _ Hom C S _ X T hs hj hm hi
  classical
  choose i hi hi0 using hi
  have hp : ∀ s, ∃ p, Hom X (T s) p ∧ p ∘ₗ i s = LinearMap.id ∧ p ≠ 0 := by
    intro s
    obtain ⟨y, hy⟩ : ∃ y, i s y ≠ 0 := by
      by_contra hn
      exact hi0 s (LinearMap.ext fun y => not_not.1 fun h => hn ⟨y, h⟩)
    obtain ⟨t, p, hp, hpy⟩ : ∃ t p, Hom X (T t) p ∧ p (i s y) ≠ 0 := by
      by_contra hn
      exact hy (hj _ fun t p hp => not_not.1 fun h => hn ⟨t, p, hp, h⟩)
    obtain rfl : s = t := by
      by_contra hst
      exact hpy (LinearMap.congr_fun (hs.2.2 s t hst _ (C.comp _ _ _ _ _ (hi s) hp)) y)
    obtain ⟨c, hc⟩ := hs.2.1 s _ (C.comp _ _ _ _ _ (hi s) hp)
    have hc0 : c ≠ 0 := by
      rintro rfl
      exact hpy (by simpa using LinearMap.congr_fun hc y)
    refine ⟨c⁻¹ • p, C.smul _ _ _ _ hp, ?_, fun h0 => hpy ?_⟩
    · rw [LinearMap.smul_comp, hc, smul_smul, inv_mul_cancel₀ hc0, one_smul]
    · rw [(smul_eq_zero.1 h0).resolve_left (inv_ne_zero hc0)]; rfl
  choose p hp hpi hp0 using hp
  have hne : ∀ s t, s ≠ t → p s ∘ₗ i t = 0 := fun s t hst =>
    hs.2.2 t s (Ne.symm hst) _ (C.comp _ _ _ _ _ (hi t) (hp s))
  refine ⟨i, p, hi, hp, LinearMap.ext fun x => ?_, hpi, hne⟩
  rw [LinearMap.id_apply, eq_comm, ← sub_eq_zero]
  refine hj _ fun t q hq => ?_
  have h0 : p t (x - (∑ s, i s ∘ₗ p s) x) = 0 := by

    rw [map_sub, LinearMap.sum_apply, map_sum, Finset.sum_eq_single t]
    · exact sub_eq_zero.2 (LinearMap.congr_fun (hpi t) (p t x)).symm
    · intro s _ hst
      exact LinearMap.congr_fun (hne t s (Ne.symm hst)) (p s x)
    · simp
  obtain ⟨α, β, hab, h1⟩ := hm t q (p t) hq (hp t)
  have hα : α ≠ 0 := by
    rintro rfl
    rw [zero_smul, zero_add] at h1
    exact hp0 t ((smul_eq_zero.1 h1).resolve_left (hab.resolve_left (not_not.2 rfl)))
  have h2 := LinearMap.congr_fun h1 (x - (∑ s, i s ∘ₗ p s) x)
  rw [LinearMap.add_apply, LinearMap.smul_apply, LinearMap.smul_apply, h0, smul_zero, add_zero] at h2
  exact (smul_eq_zero.1 h2).resolve_left hα

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem trivial_rep_admissible : OKTriv := fun _ _ =>
  ⟨rfl, fun _ _ _ _ => (Matrix.one_mul _).symm,
    fun _ _ _ _ => ⟨Set.univ, _, isOpen_univ, trivial, contDiffOn_const, fun _ _ _ => rfl⟩,
    ⟨1, fun _ _ _ _ => by simp⟩⟩

theorem vector_rep_admissible : OKVr := by
  intro k r b
  cases b
  · refine ⟨rfl, fun _ _ _ _ => rfl, fun c d _ _ => ?_, ⟨1, fun g _ c d => ?_⟩⟩
    · exact ⟨Set.univ, fun g => g c d, isOpen_univ, trivial,
        (LinearMap.toContinuousLinearMap (Matrix.entryLinearMap ℝ ℂ c d)).contDiff.contDiffOn, fun _ _ _ => rfl⟩
    · simpa using GlobalTheory.DualFRep.entry_le g c d
  · obtain ⟨-, -, h1, h2, -, -, h3, -⟩ := GlobalTheory.isFRep_dualM k r
    refine ⟨h1, h2, fun c d _ _ => ?_, h3⟩
    let A : Mx k r →ₗ[ℝ] ℂ :=
      { toFun := fun x => (PI.UpqRep.Hpk k r * xᴴ * PI.UpqRep.Hpk k r) d c
        map_add' := fun a b => by rw [Matrix.conjTranspose_add, Matrix.mul_add, Matrix.add_mul]; rfl
        map_smul' := fun t a => by
          rw [Matrix.conjTranspose_smul, Matrix.mul_smul, Matrix.smul_mul, star_trivial]; rfl }
    refine ⟨Set.univ, A, isOpen_univ, trivial, (LinearMap.toContinuousLinearMap A).contDiff.contDiffOn,
      fun g _ hg => ?_⟩
    show g⁻¹ d c = _
    rw [PI.HwUniqW.inv_eq_UH hg]; rfl

end CompanionTheory.Zuck

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.DecompositionOfInjective =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.CountingBound =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.CountingBound", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.IsSimpleFam\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open CompanionTheory.Zuck BranchingSupport Matrix Finset
open scoped InnerProductSpace Kronecker

namespace GlobalTheory.CompanionTheory.ZuckCount

theorem casG_polar {n : ℕ} (μ : Fin n → ℝ) (J : Finset (Fin n)) (s : Fin n) :
    casG (addSet μ J) + casG (μ + Pi.single s 1) + (2 - casG μ) - casG (addSet μ J + Pi.single s 1)
      = if s ∈ J then 0 else 2 := by
  have h : ∑ a, ((addSet μ J a) ^ 2 + ((μ + Pi.single s 1 : Fin n → ℝ) a) ^ 2 - μ a ^ 2
      - ((addSet μ J + Pi.single s 1 : Fin n → ℝ) a) ^ 2) = if s ∈ J then -2 else 0 := by
    rw [Finset.sum_eq_single s]
    · simp only [addSet, Pi.add_apply, Pi.single_eq_same]
      split_ifs <;> ring
    · intro b _ hb
      simp only [addSet, Pi.add_apply, Pi.single_eq_of_ne hb]
      ring
    · simp
  simp only [Finset.sum_sub_distrib, Finset.sum_add_distrib] at h
  unfold casG
  split_ifs at h ⊢ <;> linarith

theorem addSet_insert {n : ℕ} (μ : Fin n → ℝ) (J : Finset (Fin n)) (s : Fin n) (hs : s ∉ J) :
    addSet μ J + Pi.single s 1 = addSet μ (insert s J) := by
  funext a
  by_cases ha : a = s
  · subst ha
    simp [addSet, hs]
  · simp [addSet, ha]

theorem addSet_eq_iff {n : ℕ} (μ : Fin n → ℝ) (J I : Finset (Fin n)) (s : Fin n) :
    addSet μ J + Pi.single s 1 = addSet μ I ↔ s ∉ J ∧ I = insert s J := by
  constructor
  · intro h
    have hs : s ∉ J := by
      intro hs
      have := congrFun h s
      simp only [addSet, Pi.add_apply, Pi.single_eq_same, if_pos hs] at this
      split_ifs at this <;> linarith
    refine ⟨hs, ?_⟩
    rw [addSet_insert μ J s hs] at h
    ext a
    have := congrFun h a
    simp only [addSet, add_right_inj] at this
    by_cases h1 : a ∈ I <;> by_cases h2 : a ∈ insert s J <;> simp_all
  · rintro ⟨hs, rfl⟩
    exact addSet_insert μ J s hs

theorem casG_polar_complex {n : ℕ} (μ : Fin n → ℝ) (J : Finset (Fin n)) (s : Fin n) :
    (casG (addSet μ J) : ℂ) + (casG (μ + Pi.single s 1) : ℂ) + (2 - (casG μ : ℂ))
      - (casG (addSet μ J + Pi.single s 1) : ℂ) = if s ∈ J then 0 else 2 := by
  have h := congrArg (fun x : ℝ => (x : ℂ)) (casG_polar μ J s)
  split_ifs at h ⊢ <;> (push_cast at h; exact h)

theorem count : Count := by
  intro n m μ _ par w
  have hw : ∀ p, w p (par p) = if p.2 ∈ p.1.1 then 0 else 2 := fun p => casG_polar_complex μ p.1.1 p.2
  refine ⟨fun I => ?_, fun ν hν => ?_⟩
  · have h1 : ∀ p ∈ univ.filter (fun p => par p = addSet μ I.1), w p (addSet μ I.1) = 2 := by
      intro p hp
      have hp' := (Finset.mem_filter.1 hp).2
      rw [← hp', hw, if_neg ((addSet_eq_iff μ p.1.1 I.1 p.2).1 hp').1]
    rw [Finset.sum_congr rfl h1, Finset.sum_const]
    have hc : (univ.filter (fun p => par p = addSet μ I.1)).card = I.1.card := by
      refine Finset.card_bij (fun p _ => p.2) ?_ ?_ ?_
      · intro p hp
        have := (addSet_eq_iff μ p.1.1 I.1 p.2).1 (Finset.mem_filter.1 hp).2
        rw [this.2]; exact Finset.mem_insert_self _ _
      · intro p hp q hq hpq
        have h1 := (addSet_eq_iff μ p.1.1 I.1 p.2).1 (Finset.mem_filter.1 hp).2
        have h2 := (addSet_eq_iff μ q.1.1 I.1 q.2).1 (Finset.mem_filter.1 hq).2
        have hpq' : p.2 = q.2 := hpq
        refine Prod.ext (Subtype.ext ?_) hpq'
        rw [← Finset.erase_insert h1.1, ← Finset.erase_insert h2.1, ← h1.2, ← h2.2, hpq']
      · intro s hs
        refine ⟨(⟨I.1.erase s, ?_⟩, s), Finset.mem_filter.2 ⟨Finset.mem_univ _, ?_⟩, rfl⟩
        · rw [Finset.card_erase_of_mem hs, I.2]; rfl
        · exact (addSet_eq_iff μ _ I.1 s).2 ⟨Finset.notMem_erase _ _, (Finset.insert_erase hs).symm⟩
    rw [hc, I.2, nsmul_eq_mul]
    push_cast
    ring
  · refine Finset.sum_eq_zero fun p hp => ?_
    have hp' := (Finset.mem_filter.1 hp).2
    rw [← hp', hw, if_pos]
    by_contra hs
    refine hν ⟨insert p.2 p.1.1, ?_⟩ ?_
    · rw [Finset.card_insert_of_notMem hs, p.1.2]
    · rw [← hp']; exact (addSet_insert μ _ _ hs).symm

end GlobalTheory.CompanionTheory.ZuckCount
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.CountingBound =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.DecompositionOfTensorFromHomLaws =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.DecompositionOfTensorFromHomLaws", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.IsSimpleFam\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open CompanionTheory.Zuck BranchingSupport Matrix Finset
open scoped InnerProductSpace Kronecker

noncomputable section

namespace GlobalTheory.CompanionTheory.ZuckDecTens

section Lin

universe u

variable {O : Type u} {N : O → Type} [∀ o, AddCommGroup (N o)] [∀ o, Module ℂ (N o)]

theorem dec_comp {Hom : ∀ a b, (N a →ₗ[ℂ] N b) → Prop} (hc : IsLinCat N Hom) {A B P : Type} [Fintype A] [Fintype B]
    [Fintype P] (e : P ≃ A × B) {X : O} {Z : A → O} {S : A → B → O}
    {j : ∀ a, N (Z a) →ₗ[ℂ] N X} {q : ∀ a, N X →ₗ[ℂ] N (Z a)} (h : IsDec Hom X Z j q)
    {io : ∀ a b, N (S a b) →ₗ[ℂ] N (Z a)} {pr : ∀ a b, N (Z a) →ₗ[ℂ] N (S a b)}
    (h2 : ∀ a, IsDec Hom (Z a) (S a) (io a) (pr a)) :
    IsDec Hom X (fun p => S (e p).1 (e p).2) (fun p => j (e p).1 ∘ₗ io (e p).1 (e p).2)
      (fun p => pr (e p).1 (e p).2 ∘ₗ q (e p).1) := by
  exact {
    io_hom p := hc.comp _ _ _ _ _ ((h2 _).io_hom _) (h.io_hom _)
    pr_hom p := hc.comp _ _ _ _ _ (h.pr_hom _) ((h2 _).pr_hom _)
    sum := by
      rw [Equiv.sum_comp e (fun p : A × B => (j p.1 ∘ₗ io p.1 p.2) ∘ₗ (pr p.1 p.2 ∘ₗ q p.1)),
        Fintype.sum_prod_type, ← h.sum]
      refine Finset.sum_congr rfl fun a _ => ?_
      ext x
      have := congrArg (fun f => j a (f (q a x))) (h2 a).sum

      simpa [map_sum] using this
    pr_io p := by
      ext x
      have h1 := LinearMap.congr_fun (h.pr_io (e p).1) (io (e p).1 (e p).2 x)
      have h3 := LinearMap.congr_fun ((h2 (e p).1).pr_io (e p).2) x
      simp only [LinearMap.comp_apply, LinearMap.id_apply] at h1 h3 ⊢
      rw [h1, h3]
    pr_io_ne p p' hne := by
      have hne' : e p ≠ e p' := fun hh => hne (e.injective hh)
      generalize e p = s at hne'
      generalize e p' = s' at hne'
      obtain ⟨a, b⟩ := s
      obtain ⟨a', b'⟩ := s'
      ext x
      by_cases ha : a = a'
      · subst ha
        have hb : b ≠ b' := fun hh => hne' (by rw [hh])
        have h1 := LinearMap.congr_fun (h.pr_io a) (io a b' x)
        have h3 := LinearMap.congr_fun ((h2 a).pr_io_ne b b' hb) x
        simp only [LinearMap.comp_apply, LinearMap.id_apply, LinearMap.zero_apply] at h1 h3 ⊢
        rw [h1, h3]
      · have h1 := LinearMap.congr_fun (h.pr_io_ne a a' ha) (io a' b' x)
        simp only [LinearMap.comp_apply, LinearMap.zero_apply] at h1 ⊢
        rw [h1, map_zero]
  }

end Lin

variable {k r : ℕ}

theorem mAct_reindex {ι ι' V : Type} [Fintype ι] [DecidableEq ι] [AddCommGroup V] [Module ℂ V] (e : ι' → ι) :
    (mAct ((1 : Matrix ι ι ℂ).submatrix e id) : (ι → V) →ₗ[ℂ] (ι' → V)) = LinearMap.funLeft ℂ V e := by
  refine LinearMap.ext fun x => funext fun c => ?_
  simp [mAct, LinearMap.funLeft_apply, Matrix.one_apply]

theorem hom_reindex (hM : MatHom) (F F' : FRep k r) (U : URep k r) (e : F'.ι ≃ F.ι)
    (h : ∀ g, F'.ρ g = (F.ρ g).submatrix e e) :
    IsHom (F, U) (F', U) (LinearMap.funLeft ℂ U.R.smSub e) := by
  have := hM k r F F' U ((1 : Matrix F.ι F.ι ℂ).submatrix e id) (fun g _ => by
    rw [h g, Matrix.submatrix_mul_equiv, Matrix.mul_one]
    have := Matrix.submatrix_mul_equiv (1 : Matrix F.ι F.ι ℂ) (F.ρ g) e (Equiv.refl _) id
    simpa using this)
  rwa [mAct_reindex] at this

theorem hom_cas (hL : HomLie) {X Y : Obj k r} {f : M X →ₗ[ℂ] M Y} (hX : X.1.OK) (hY : Y.1.OK) (hf : IsHom X Y f) :
    cas Y ∘ₗ f = f ∘ₗ cas X := by
  refine LinearMap.ext fun x => ?_
  have h := fun Z y => LinearMap.congr_fun (hL k r X Y f hX hY hf Z) y
  simp only [LinearMap.comp_apply] at h

  simp only [cas, LinearMap.comp_apply, LinearMap.sum_apply, map_sum, mul_apply_eq_comp, h]

theorem dec1 (hC : HomCat) (hM : MatHom) (hT : TensHom) (F F' : FRep k r) (U : URep k r) {A : Type} [Fintype A]
    (T : A → URep k r) {io : ∀ a, M (one (T a)) →ₗ[ℂ] M (F, U)} {pr : ∀ a, M (F, U) →ₗ[ℂ] M (one (T a))}
    (h : IsDec (N := M) IsHom (F, U) (fun a => one (T a)) io pr) :
    IsDec (N := M) IsHom (F.tens F', U) (fun a => (F', T a))
      (fun a => on1 (io a) ∘ₗ LinearMap.funLeft ℂ _ (Prod.snd : Unit × F'.ι → F'.ι))
      (fun a => LinearMap.funLeft ℂ _ (fun c : F'.ι => ((), c)) ∘ₗ on1 (pr a)) := by
  exact {
    io_hom a := (hC k r).comp _ ((triv k r).tens F', T a) _ _ _
      (hom_reindex hM F' ((triv k r).tens F') (T a) (Equiv.punitProd _) (fun g => by
        ext c d; simp))
      (hT k r _ _ F' _ _ _ (h.io_hom a)).1
    pr_hom a := (hC k r).comp _ ((triv k r).tens F', T a) _ _ _
      (hT k r _ _ F' _ _ _ (h.pr_hom a)).1
      (hom_reindex hM ((triv k r).tens F') F' (T a) (Equiv.punitProd _).symm (fun g => by
        ext c d; simp))
    sum := by
      refine LinearMap.ext fun x => funext fun p => ?_
      have := congrFun (LinearMap.congr_fun h.sum (fun c => x (c, p.2))) p.1
      rw [LinearMap.sum_apply, Finset.sum_apply] at this ⊢
      exact this
    pr_io a := by
      refine LinearMap.ext fun x => funext fun c => ?_
      exact congrFun (LinearMap.congr_fun (h.pr_io a) (fun _ => x c)) ()
    pr_io_ne a a' hne := by
      refine LinearMap.ext fun x => funext fun c => ?_
      exact congrFun (LinearMap.congr_fun (h.pr_io_ne a a' hne) (fun _ => x c)) ()
  }

theorem dec2 (hC : HomCat) (hM : MatHom) (hT : TensHom) (F F' : FRep k r) (U : URep k r) {A : Type} [Fintype A]
    (T : A → URep k r) {io : ∀ a, M (one (T a)) →ₗ[ℂ] M (F', U)} {pr : ∀ a, M (F', U) →ₗ[ℂ] M (one (T a))}
    (h : IsDec (N := M) IsHom (F', U) (fun a => one (T a)) io pr) :
    IsDec (N := M) IsHom (F.tens F', U) (fun a => (F, T a))
      (fun a => on2 (io a) ∘ₗ LinearMap.funLeft ℂ _ (Prod.fst : F.ι × Unit → F.ι))
      (fun a => LinearMap.funLeft ℂ _ (fun c : F.ι => (c, ())) ∘ₗ on2 (pr a)) := by
  exact {
    io_hom a := (hC k r).comp _ (F.tens (triv k r), T a) _ _ _
      (hom_reindex hM F (F.tens (triv k r)) (T a) (Equiv.prodPUnit _) (fun g => by
        ext c d; simp))
      (hT k r _ _ F _ _ _ (h.io_hom a)).2
    pr_hom a := (hC k r).comp _ (F.tens (triv k r), T a) _ _ _
      (hT k r _ _ F _ _ _ (h.pr_hom a)).2
      (hom_reindex hM (F.tens (triv k r)) F (T a) (Equiv.prodPUnit _).symm (fun g => by
        ext c d; simp))
    sum := by
      refine LinearMap.ext fun x => funext fun p => ?_
      have := congrFun (LinearMap.congr_fun h.sum (fun c => x (p.1, c))) p.2
      rw [LinearMap.sum_apply, Finset.sum_apply] at this ⊢
      exact this
    pr_io a := by
      refine LinearMap.ext fun x => funext fun c => ?_
      exact congrFun (LinearMap.congr_fun (h.pr_io a) (fun _ => x c)) ()
    pr_io_ne a a' hne := by
      refine LinearMap.ext fun x => funext fun c => ?_
      exact congrFun (LinearMap.congr_fun (h.pr_io_ne a a' hne) (fun _ => x c)) ()
  }

theorem decTens : HomCat → MatHom → TensHom → HomLie → OKTriv → DecTens := by
  intro hC hM hT hL hO k r F F' U hF hF'
  refine ⟨fun A B _ _ T S c ⟨io, pr, h⟩ h2 hc => ?_, fun A B _ _ T S c ⟨io, pr, h⟩ h2 hc => ?_⟩
  · choose io2 pr2 h2 using h2
    refine ⟨_, _, dec_comp (hC k r) (Equiv.refl (A × B)) (S := fun a b => one (S (a, b)))
      (dec1 hC hM hT F F' U T h) h2, fun p => ?_⟩
    have h3 := hom_cas hL (X := one (T p.1)) (Y := (F, U)) (hO k r) hF (h.io_hom p.1)
    rw [hc, LinearMap.comp_smul, LinearMap.comp_id] at h3
    refine LinearMap.ext fun x => funext fun s => ?_
    exact congrFun (LinearMap.congr_fun h3 (fun _ => io2 p.1 p.2 x s.2)) s.1
  · choose io2 pr2 h2 using h2
    refine ⟨_, _, dec_comp (hC k r) (Equiv.prodComm A B) (S := fun b a => one (S (a, b)))
      (dec2 hC hM hT F F' U T h) h2, fun p => ?_⟩
    have h3 := hom_cas hL (X := one (T p.2)) (Y := (F', U)) (hO k r) hF' (h.io_hom p.2)
    rw [hc, LinearMap.comp_smul, LinearMap.comp_id] at h3
    refine LinearMap.ext fun x => funext fun s => ?_
    exact congrFun (LinearMap.congr_fun h3 (fun _ => io2 p.2 p.1 x s.1)) s.2

end GlobalTheory.CompanionTheory.ZuckDecTens

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.DecompositionOfTensorFromHomLaws =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorDifferentialMatrixUnitFormula =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorDifferentialMatrixUnitFormula", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.IsSimpleFam\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ChainRuleSecondOrder.HasDerivAtDOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open CompanionTheory.Zuck BranchingSupport Matrix Finset
open scoped InnerProductSpace Kronecker

namespace GlobalTheory.CompanionTheory.WedgeDeriv

theorem hasDerivAt_det {m : ℕ} (A : ℝ → Matrix (Fin m) (Fin m) ℂ) (A' : Matrix (Fin m) (Fin m) ℂ)
    (h : ∀ i j, HasDerivAt (fun t => A t i j) (A' i j) 0) :
    HasDerivAt (fun t => (A t).det) (∑ j, ∑ i, adjugate (A 0) j i * A' i j) 0 := by
  have h1 : HasDerivAt (fun t => ∑ σ : Equiv.Perm (Fin m), ((Equiv.Perm.sign σ : ℤ) : ℂ) * ∏ i, A t (σ i) i)
      (∑ σ : Equiv.Perm (Fin m), ((Equiv.Perm.sign σ : ℤ) : ℂ) *
        ∑ j, (∏ i ∈ univ.erase j, A 0 (σ i) i) • A' (σ j) j) 0 := by
    refine HasDerivAt.fun_sum fun σ _ => HasDerivAt.const_mul _ ?_
    exact HasDerivAt.fun_finsetProd (f := fun i t => A t (σ i) i) fun i _ => h _ _
  have h2 : ∀ j, ∑ i, adjugate (A 0) j i * A' i j = ((A 0).updateCol j fun i => A' i j).det := by
    intro j
    rw [← cramer_apply, cramer_eq_adjugate_mulVec]
    rfl
  simp only [h2, Matrix.det_apply']
  convert h1 using 1
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun σ _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  congr 1
  rw [← Finset.prod_erase_mul _ _ (mem_univ j), updateCol_self, smul_eq_mul]
  congr 1
  exact Finset.prod_congr rfl fun i hi => updateCol_ne (ne_of_mem_erase hi)

theorem det_one_submatrix {m n : ℕ} (f g : Fin m → Fin n) (hf : StrictMono f) (hg : StrictMono g) :
    ((1 : Matrix (Fin n) (Fin n) ℂ).submatrix f g).det = if univ.image f = univ.image g then 1 else 0 := by
  split_ifs with h
  · have : f = g := by
      refine (hf.range_inj hg).1 ?_
      have := congrArg (fun s : Finset (Fin n) => (s : Set (Fin n))) h
      simpa using this
    subst this
    rw [submatrix_one _ hf.injective, det_one]
  · have : ∃ i, f i ∉ univ.image g := by
      by_contra hc
      push Not at hc
      apply h
      refine Finset.eq_of_subset_of_card_le (fun x hx => ?_) ?_
      · obtain ⟨i, _, rfl⟩ := mem_image.1 hx
        exact hc i
      · rw [card_image_of_injective _ hf.injective, card_image_of_injective _ hg.injective]
    obtain ⟨i, hi⟩ := this
    refine det_eq_zero_of_row_eq_zero i fun j => ?_
    rw [submatrix_apply, one_apply_ne]
    intro he
    exact hi (mem_image.2 ⟨j, mem_univ _, he.symm⟩)

theorem card_filter_lt {m n : ℕ} (f : Fin m → Fin n) (hf : StrictMono f) (i : Fin m) :
    (((univ.image f).erase (f i)).filter fun c => c < f i).card = i := by
  have : (((univ.image f).erase (f i)).filter fun c => c < f i) = (Iio i).image f := by
    ext x
    simp only [mem_filter, mem_erase, mem_image, mem_univ, true_and, mem_Iio]
    constructor
    · rintro ⟨⟨_, j, rfl⟩, h⟩
      exact ⟨j, hf.lt_iff_lt.1 h, rfl⟩
    · rintro ⟨j, h, rfl⟩
      exact ⟨⟨(hf h).ne, j, rfl⟩, hf h⟩
  rw [this, card_image_of_injective _ hf.injective, Fin.card_Iio]

theorem image_succAbove {m n : ℕ} (f : Fin (m + 1) → Fin n) (hf : StrictMono f) (i : Fin (m + 1)) :
    univ.image (f ∘ i.succAbove) = (univ.image f).erase (f i) := by
  ext x
  simp only [mem_erase, mem_image, mem_univ, true_and, Function.comp]
  constructor
  · rintro ⟨j, rfl⟩
    exact ⟨fun h => Fin.succAbove_ne _ _ (hf.injective h), _, rfl⟩
  · rintro ⟨h, j, rfl⟩
    obtain ⟨l, rfl⟩ := Fin.exists_succAbove_eq (x := j) (y := i) (fun e => h (by rw [e]))
    exact ⟨l, rfl⟩

theorem sum_adj {m n : ℕ} (f g : Fin m → Fin n) (hf : StrictMono f) (hg : StrictMono g) (a b : Fin n) :
    ∑ j, ∑ i, adjugate ((1 : Matrix (Fin n) (Fin n) ℂ).submatrix f g) j i *
      (Matrix.single a b (1 : ℂ)) (f i) (g j) =
    if b ∈ univ.image g ∧ a ∉ (univ.image g).erase b ∧ univ.image f = insert a ((univ.image g).erase b) then
      (-1) ^ (((univ.image g).erase b).filter fun c => c < a).card *
        (-1) ^ (((univ.image g).erase b).filter fun c => c < b).card else 0 := by
  by_cases hb : b ∈ univ.image g
  swap
  · rw [if_neg (fun h => hb h.1)]
    refine sum_eq_zero fun j _ => sum_eq_zero fun i _ => ?_
    rw [single_apply_of_ne, mul_zero]
    rintro ⟨_, rfl⟩
    exact hb (mem_image_of_mem _ (mem_univ _))
  by_cases ha : a ∈ univ.image f
  swap
  · rw [if_neg (by rintro ⟨_, _, h⟩; exact ha (h ▸ mem_insert_self _ _))]
    refine sum_eq_zero fun j _ => sum_eq_zero fun i _ => ?_
    rw [single_apply_of_ne, mul_zero]
    rintro ⟨rfl, _⟩
    exact ha (mem_image_of_mem _ (mem_univ _))
  obtain ⟨j, _, rfl⟩ := mem_image.1 hb
  obtain ⟨i, _, rfl⟩ := mem_image.1 ha
  rw [sum_eq_single j, sum_eq_single i, single_apply_same, mul_one]
  · obtain ⟨m, rfl⟩ : ∃ m', m = m' + 1 := ⟨m - 1, by have := i.pos; omega⟩
    rw [adjugate_fin_succ_eq_det_submatrix, submatrix_submatrix,
      det_one_submatrix _ _ (hf.comp (Fin.strictMono_succAbove i)) (hg.comp (Fin.strictMono_succAbove j)),
      image_succAbove f hf, image_succAbove g hg]
    by_cases h : (univ.image f).erase (f i) = (univ.image g).erase (g j)
    · rw [if_pos h, if_pos, card_filter_lt g hg, ← h, card_filter_lt f hf, mul_one, pow_add]
      refine ⟨hb, ?_, ?_⟩
      · rw [← h]; exact notMem_erase _ _
      · rw [← h, insert_erase ha]
    · rw [if_neg h, if_neg, mul_zero]
      rintro ⟨_, h1, h2⟩
      apply h
      rw [h2, erase_insert h1]
  · intro i' _ hi
    rw [single_apply_of_ne, mul_zero]
    exact fun h => hi (hf.injective h.1).symm
  · simp
  · intro j' _ hj
    refine sum_eq_zero fun i _ => ?_
    rw [single_apply_of_ne, mul_zero]
    exact fun h => hj (hg.injective h.2).symm
  · simp

theorem dR_wedge (k r m : ℕ) (X : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) (J J' : Sub (2 * r + k + 1) m) :
    (wedge k r m).dR X J J' = ∑ j, ∑ i, adjugate ((1 : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ).submatrix (J.1.orderEmbOfFin J.2)
      (J'.1.orderEmbOfFin J'.2)) j i * X (J.1.orderEmbOfFin J.2 i) (J'.1.orderEmbOfFin J'.2 j) := by
  have h := hasDerivAt_det (fun t : ℝ => (NormedSpace.exp ((t : ℂ) • X)).submatrix (J.1.orderEmbOfFin J.2)
      (J'.1.orderEmbOfFin J'.2)) (X.submatrix (J.1.orderEmbOfFin J.2) (J'.1.orderEmbOfFin J'.2))
      fun i j => PI.ComplexConjugateDerivative.exp_entry X _ _
  simp only [Complex.ofReal_zero, zero_smul, NormedSpace.exp_zero, submatrix_apply] at h
  exact h.deriv

theorem reH_add_imH (k r : ℕ) (Y : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) : reH k r Y + Complex.I • imH k r Y = Y := by
  have : Complex.I * (1 / (2 * Complex.I)) = 1 / 2 := by field_simp
  rw [reH, imH, smul_smul, this, ← smul_add]
  ext i j
  simp only [Matrix.smul_apply, Matrix.add_apply, Matrix.sub_apply, smul_eq_mul]
  ring

theorem dC_wedge_single : ∀ (k r m : ℕ) (a b : Fin (2 * r + k + 1)) (J J' : Sub (2 * r + k + 1) m), (wedge k r m).dC (Matrix.single a b 1) J J' = if b ∈ J'.1 ∧ a ∉ J'.1.erase b ∧ J.1 = insert a (J'.1.erase b) then (-1) ^ ((J'.1.erase b).filter fun c => c < a).card * (-1) ^ ((J'.1.erase b).filter fun c => c < b).card else 0 := by
  intro k r m a b J J'
  have h := sum_adj _ _ (J.1.orderEmbOfFin J.2).strictMono (J'.1.orderEmbOfFin J'.2).strictMono a b
  rw [Finset.image_orderEmbOfFin_univ, Finset.image_orderEmbOfFin_univ] at h
  rw [← h, FRep.dC, Matrix.add_apply, Matrix.smul_apply, dR_wedge, dR_wedge, smul_eq_mul, mul_sum,
    ← sum_add_distrib]
  refine sum_congr rfl fun j _ => ?_
  rw [mul_sum, ← sum_add_distrib]
  refine sum_congr rfl fun i _ => ?_
  conv_rhs => rw [← reH_add_imH k r (Matrix.single a b 1)]
  simp only [Matrix.smul_apply, Matrix.add_apply, smul_eq_mul]
  ring

end GlobalTheory.CompanionTheory.WedgeDeriv
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorDifferentialMatrixUnitFormula =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorDifferentialSignRuleQuadratic =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorDifferentialSignRuleQuadratic", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.IsSimpleFam\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open CompanionTheory.Zuck BranchingSupport Matrix Finset
open scoped InnerProductSpace Kronecker

namespace GlobalTheory.CompanionTheory.WedgeSplitCasimir

theorem jW_mul_transpose (n m : ℕ) (J J' : Sub n m) (s s' : Fin n) :
    (jW n m * (jW n m)ᵀ) (J, s) (J', s') =
      if s ∉ J.1 ∧ s' ∉ J'.1 ∧ insert s J.1 = insert s' J'.1 then
        (-1) ^ (J.1.filter fun a => a < s).card * (-1) ^ (J'.1.filter fun a => a < s').card else 0 := by
  rw [Matrix.mul_apply]
  simp only [Matrix.transpose_apply, jW]
  by_cases hs : s ∈ J.1
  · simp [hs]
  · have hc : (insert s J.1).card = m + 1 := by rw [Finset.card_insert_of_notMem hs, J.2]
    rw [Finset.sum_eq_single (⟨insert s J.1, hc⟩ : Sub n (m + 1))]
    · by_cases h : s' ∉ J'.1 ∧ insert s J.1 = insert s' J'.1
      · rw [if_pos ⟨hs, rfl⟩, if_pos h, if_pos ⟨hs, h⟩]
      · rw [if_neg h, mul_zero, if_neg (fun h' => h h'.2)]
    · intro I _ hI
      rw [if_neg, zero_mul]
      rintro ⟨_, h⟩
      exact hI (Subtype.ext h)
    · intro h
      exact absurd (Finset.mem_univ _) h

theorem anticomm {n : ℕ} (J J' : Finset (Fin n)) (s s' : Fin n) :
    (if s ∈ J' ∧ s' ∉ J'.erase s ∧ J = insert s' (J'.erase s) then
        (-1 : ℂ) ^ ((J'.erase s).filter fun c => c < s').card * (-1) ^ ((J'.erase s).filter fun c => c < s).card
      else 0) =
    (if J = J' ∧ s = s' then 1 else 0) -
      if s ∉ J ∧ s' ∉ J' ∧ insert s J = insert s' J' then
        (-1) ^ (J.filter fun a => a < s).card * (-1) ^ (J'.filter fun a => a < s').card else 0 := by
  have sq : ∀ a : ℕ, (-1 : ℂ) ^ a * (-1) ^ a = 1 := fun a => by
    rw [← mul_pow]; simp
  by_cases hss : s = s'
  · subst hss
    by_cases hs : s ∈ J'
    · rw [Finset.insert_erase hs, sq]
      simp [hs]
    · by_cases hJ : J = J'
      · subst hJ
        simp [hs, sq]
      · rw [if_neg (fun h => hs h.1), if_neg (fun h => hJ h.1), if_neg, sub_zero]
        rintro ⟨h1, h2, h3⟩
        apply hJ
        rw [← Finset.erase_insert h1, h3, Finset.erase_insert h2]
  · rw [if_neg (fun h : J = J' ∧ s = s' => hss h.2), zero_sub]
    by_cases h : s ∈ J' ∧ s' ∉ J'.erase s ∧ J = insert s' (J'.erase s)
    · rw [if_pos h]
      obtain ⟨h1, h2, h3⟩ := h
      obtain ⟨K, hK, rfl⟩ : ∃ K : Finset (Fin n), s ∉ K ∧ J' = insert s K :=
        ⟨J'.erase s, Finset.notMem_erase _ _, (Finset.insert_erase h1).symm⟩
      rw [Finset.erase_insert hK] at h2 h3 ⊢
      subst h3
      rw [if_pos ⟨by simp [hss, hK], by simp [Ne.symm hss, h2], Finset.insert_comm _ _ _⟩]
      rw [Finset.filter_insert, Finset.filter_insert]
      rcases lt_or_gt_of_ne hss with hlt | hlt
      · rw [if_neg (not_lt.2 hlt.le), if_pos hlt,
          Finset.card_insert_of_notMem (fun h => hK (Finset.mem_filter.1 h).1)]
        ring
      · rw [if_pos hlt, if_neg (not_lt.2 hlt.le),
          Finset.card_insert_of_notMem (fun h => h2 (Finset.mem_filter.1 h).1)]
        ring
    · rw [if_neg h, if_neg, neg_zero]
      rintro ⟨h1, h2, h3⟩
      apply h
      have hs : s ∈ J' := by
        have : s ∈ insert s' J' := h3 ▸ Finset.mem_insert_self s J
        exact (Finset.mem_insert.1 this).resolve_left hss
      refine ⟨hs, fun h => h2 (Finset.mem_of_mem_erase h), ?_⟩
      rw [← Finset.erase_insert h1, h3, Finset.erase_insert_of_ne (Ne.symm hss)]

theorem wedgeQ : StdD → (∀ (k r m : ℕ) (a b : Fin (2 * r + k + 1)) (J J' : Sub (2 * r + k + 1) m), (wedge k r m).dC (Matrix.single a b 1) J J' = if b ∈ J'.1 ∧ a ∉ J'.1.erase b ∧ J.1 = insert a (J'.1.erase b) then (-1) ^ ((J'.1.erase b).filter fun c => c < a).card * (-1) ^ ((J'.1.erase b).filter fun c => c < b).card else 0) → WedgeQ := by
  intro hS hW k r m
  ext ⟨J, s⟩ ⟨J', s'⟩
  have h1 : qMat (wedge k r m) (vr k r false) (J, s) (J', s') =
      (wedge k r m).dC (Matrix.single s' s 1) J J' := by
    simp only [qMat, Matrix.sum_apply, Matrix.kroneckerMap_apply, (hS k r _).1]
    rw [Finset.sum_eq_single s', Finset.sum_eq_single s]
    · simp
    · intro b _ hb
      simp [hb]
    · simp
    · intro a _ ha
      refine Finset.sum_eq_zero fun b _ => ?_
      simp [ha]
    · simp
  rw [h1, hW, Matrix.sub_apply, jW_mul_transpose, anticomm, Matrix.one_apply]
  congr 1
  simp only [Prod.mk.injEq, Subtype.ext_iff]

end GlobalTheory.CompanionTheory.WedgeSplitCasimir
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorDifferentialSignRuleQuadratic =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorIntegrality =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorIntegrality", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.IsSimpleFam\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open CompanionTheory.Zuck BranchingSupport Matrix Finset
open scoped InnerProductSpace Kronecker

namespace GlobalTheory.CompanionTheory.WedgeEmb

variable {n m : ℕ}

def er (I : BranchingSupport.Sub n (m + 1)) (j : Fin (m + 1)) : BranchingSupport.Sub n m :=
  ⟨I.1.erase (I.1.orderEmbOfFin I.2 j), by
    rw [Finset.card_erase_of_mem (Finset.orderEmbOfFin_mem _ _ _), I.2]; rfl⟩

theorem er_emb (I : BranchingSupport.Sub n (m + 1)) (j : Fin (m + 1)) :
    ⇑((er I j).1.orderEmbOfFin (er I j).2) = fun a => I.1.orderEmbOfFin I.2 (j.succAbove a) := by
  symm
  apply Finset.orderEmbOfFin_unique
  · intro a
    show _ ∈ I.1.erase _
    rw [Finset.mem_erase]
    exact ⟨fun h => Fin.succAbove_ne j a ((I.1.orderEmbOfFin I.2).injective h), Finset.orderEmbOfFin_mem _ _ _⟩
  · exact (I.1.orderEmbOfFin I.2).strictMono.comp (Fin.strictMono_succAbove j)

theorem exists_emb (I : BranchingSupport.Sub n (m + 1)) {t : Fin n} (ht : t ∈ I.1) : ∃ j, I.1.orderEmbOfFin I.2 j = t := by
  have h : t ∈ Set.range (I.1.orderEmbOfFin I.2) := by
    rw [Finset.range_orderEmbOfFin]
    exact ht
  exact h

theorem er_card (I : BranchingSupport.Sub n (m + 1)) (j : Fin (m + 1)) :
    ((er I j).1.filter fun a => a < I.1.orderEmbOfFin I.2 j).card = j := by
  have key : ((er I j).1.filter fun a => a < I.1.orderEmbOfFin I.2 j) =
      (Finset.Iio j).map (I.1.orderEmbOfFin I.2).toEmbedding := by
    ext a
    simp only [Finset.mem_filter, Finset.mem_map, Finset.mem_Iio, RelEmbedding.coe_toEmbedding]
    constructor
    · rintro ⟨ha, hlt⟩
      have ha' : a ∈ I.1 := Finset.mem_of_mem_erase ha
      obtain ⟨i, rfl⟩ := exists_emb I ha'
      exact ⟨i, (I.1.orderEmbOfFin I.2).lt_iff_lt.mp hlt, rfl⟩
    · rintro ⟨i, hi, rfl⟩
      have hlt := (I.1.orderEmbOfFin I.2).lt_iff_lt.mpr hi
      exact ⟨Finset.mem_erase.mpr ⟨hlt.ne, Finset.orderEmbOfFin_mem _ _ _⟩, hlt⟩
  rw [key, Finset.card_map, Fin.card_Iio]

theorem jW_er (I I' : BranchingSupport.Sub n (m + 1)) (j : Fin (m + 1)) :
    jW n m (er I j, I.1.orderEmbOfFin I.2 j) I' = if I' = I then (-1) ^ (j : ℕ) else 0 := by
  have h1 : I.1.orderEmbOfFin I.2 j ∉ (er I j).1 := by simp [er]
  have h2 : insert (I.1.orderEmbOfFin I.2 j) (er I j).1 = I.1 :=
    Finset.insert_erase (Finset.orderEmbOfFin_mem _ _ _)
  simp only [jW, h1, not_false_eq_true, true_and, h2, er_card]
  by_cases hI : I' = I
  · subst hI
    simp
  · rw [if_neg (fun h => hI (Subtype.ext h)), if_neg hI]

theorem jW_ne (p : BranchingSupport.Sub n m × Fin n) (I : BranchingSupport.Sub n (m + 1)) (h : jW n m p I ≠ 0) :
    ∃ j, (er I j, I.1.orderEmbOfFin I.2 j) = p := by
  obtain ⟨J, t⟩ := p
  simp only [jW] at h
  by_cases hc : t ∉ J.1 ∧ I.1 = insert t J.1
  · have htI : t ∈ I.1 := by
      rw [hc.2]
      exact Finset.mem_insert_self t J.1
    obtain ⟨j, hj⟩ := exists_emb I htI
    refine ⟨j, ?_⟩
    rw [hj]
    refine Prod.ext ?_ rfl
    apply Subtype.ext
    show I.1.erase (I.1.orderEmbOfFin I.2 j) = J.1
    rw [hj, hc.2, Finset.erase_insert hc.1]
  · exact (h (if_neg hc)).elim

theorem sum_jW (F : BranchingSupport.Sub n m × Fin n → ℂ) (I : BranchingSupport.Sub n (m + 1)) :
    ∑ p, F p * jW n m p I = ∑ j : Fin (m + 1), (-1) ^ (j : ℕ) * F (er I j, I.1.orderEmbOfFin I.2 j) := by
  have hq : Function.Injective (fun j : Fin (m + 1) => (er I j, I.1.orderEmbOfFin I.2 j)) :=
    fun a b hab => (I.1.orderEmbOfFin I.2).injective (congrArg Prod.snd hab)
  rw [← Finset.sum_subset (Finset.subset_univ
    (Finset.univ.image (fun j : Fin (m + 1) => (er I j, I.1.orderEmbOfFin I.2 j)))) ?_]
  · rw [Finset.sum_image (fun a _ b _ hab => hq hab)]
    refine Finset.sum_congr rfl (fun j _ => ?_)
    rw [jW_er, if_pos rfl, mul_comm]
  · intro p _ hp
    by_contra hne
    obtain ⟨j, hj⟩ := jW_ne p I (right_ne_zero_of_mul hne)
    exact hp (Finset.mem_image.mpr ⟨j, Finset.mem_univ _, hj⟩)

theorem laplace (g : Matrix (Fin n) (Fin n) ℂ) (r : Fin (m + 1) → Fin n) (i : Fin (m + 1))
    (J : BranchingSupport.Sub n m) (hJ : ⇑(J.1.orderEmbOfFin J.2) = fun a => r (i.succAbove a)) (I : BranchingSupport.Sub n (m + 1)) :
    ((cmp m g ⊗ₖ g) * jW n m) (J, r i) I =
      (-1) ^ (i : ℕ) * (g.submatrix r (I.1.orderEmbOfFin I.2)).det := by
  rw [Matrix.mul_apply]
  simp only [Matrix.kroneckerMap_apply]
  have hs := sum_jW (fun p => cmp m g J p.1 * g (r i) p.2) I
  simp only at hs
  rw [hs, Matrix.det_succ_row _ i, Finset.mul_sum]
  refine Finset.sum_congr rfl (fun j _ => ?_)
  have hd : cmp m g J (er I j) =
      ((g.submatrix r ⇑(I.1.orderEmbOfFin I.2)).submatrix i.succAbove j.succAbove).det := by
    unfold BranchingSupport.cmp
    rw [hJ, er_emb]
    rfl
  have h2 : ((-1 : ℂ)) ^ (i : ℕ) * (-1) ^ (i : ℕ) = 1 := by
    rw [← mul_pow]
    norm_num
  rw [hd, Matrix.submatrix_apply, pow_add]
  generalize ((g.submatrix r ⇑(I.1.orderEmbOfFin I.2)).submatrix i.succAbove j.succAbove).det = d
  generalize g (r i) (I.1.orderEmbOfFin I.2 j) = x
  linear_combination (-(-1 : ℂ) ^ (j : ℕ) * d * x) * h2

theorem first (g : Matrix (Fin n) (Fin n) ℂ) : jW n m * cmp (m + 1) g = (cmp m g ⊗ₖ g) * jW n m := by
  ext ⟨J, t⟩ I
  by_cases ht : t ∈ J.1
  · have hL : (jW n m * cmp (m + 1) g) (J, t) I = 0 := by
      rw [Matrix.mul_apply]
      apply Finset.sum_eq_zero
      intro I'' _
      simp only [jW, ht, not_true_eq_false, false_and, if_false, zero_mul]
    have hl := laplace g (Fin.cons t ⇑(J.1.orderEmbOfFin J.2)) 0 J (by
      funext a
      simp only [Fin.succAbove_zero, Fin.cons_succ]) I
    rw [Fin.cons_zero] at hl
    rw [hL, hl]
    have hr : t ∈ Set.range (J.1.orderEmbOfFin J.2) := by
      rw [Finset.range_orderEmbOfFin]
      exact ht
    obtain ⟨a, ha⟩ := hr
    rw [Matrix.det_zero_of_row_eq (i := (0 : Fin (m + 1))) (j := a.succ) (Fin.succ_ne_zero a).symm ?_, mul_zero]
    funext c
    simp only [Matrix.submatrix_apply, Fin.cons_zero, Fin.cons_succ, ha]
  · let K : BranchingSupport.Sub n (m + 1) := ⟨insert t J.1, by simp [ht, J.2]⟩
    obtain ⟨i, hi⟩ := exists_emb K (Finset.mem_insert_self t J.1)
    have hJK : er K i = J := by
      apply Subtype.ext
      show K.1.erase (K.1.orderEmbOfFin K.2 i) = J.1
      rw [hi]
      exact Finset.erase_insert ht
    have hl := laplace g ⇑(K.1.orderEmbOfFin K.2) i J (by rw [← hJK]; exact er_emb K i) I
    rw [hi] at hl
    rw [hl, Matrix.mul_apply, Finset.sum_eq_single K]
    · have hp : ((J, t) : BranchingSupport.Sub n m × Fin n) = (er K i, K.1.orderEmbOfFin K.2 i) := by
        rw [hJK, hi]
      rw [hp, jW_er, if_pos rfl]
      rfl
    · intro I'' _ hne
      simp only [jW]
      rw [if_neg (fun h => hne (Subtype.ext h.2)), zero_mul]
    · intro h
      exact absurd (Finset.mem_univ K) h

theorem cmp_tr (l : ℕ) (g : Matrix (Fin n) (Fin n) ℂ) : BranchingSupport.cmp l gᵀ = (BranchingSupport.cmp l g)ᵀ := by
  ext I J
  simp only [BranchingSupport.cmp, Matrix.transpose_apply]
  rw [← Matrix.det_transpose, Matrix.transpose_submatrix, Matrix.transpose_transpose]

theorem third : (jW n m)ᵀ * jW n m = ((m : ℂ) + 1) • (1 : Matrix (BranchingSupport.Sub n (m + 1)) (BranchingSupport.Sub n (m + 1)) ℂ) := by
  have h1 : ∀ j : Fin (m + 1), ((-1 : ℂ)) ^ (j : ℕ) * (-1) ^ (j : ℕ) = 1 := fun j => by
    rw [← mul_pow]
    norm_num
  ext I I'
  rw [Matrix.mul_apply]
  show ∑ p, jW n m p I * jW n m p I' = _
  have hs := sum_jW (fun p => jW n m p I') I
  rw [Finset.sum_congr rfl (fun p _ => mul_comm (jW n m p I) (jW n m p I')), hs]
  simp only [jW_er]
  by_cases h : I' = I
  · subst h
    have hc : ∀ j : Fin (m + 1), ((-1 : ℂ)) ^ (j : ℕ) * (if I' = I' then (-1) ^ (j : ℕ) else 0) = 1 :=
      fun j => by rw [if_pos rfl, h1]
    rw [Finset.sum_congr rfl (fun j _ => hc j), Finset.sum_const, Finset.card_univ, Fintype.card_fin,
      nsmul_eq_mul, mul_one, Matrix.smul_apply, Matrix.one_apply_eq, smul_eq_mul, mul_one]
    norm_num
  · simp only [if_neg h, mul_zero, Finset.sum_const_zero, Matrix.smul_apply,
      Matrix.one_apply_ne (Ne.symm h), smul_zero]

theorem wedgeInt : WedgeInt := by
  intro n m
  refine ⟨fun g => ⟨first g, ?_⟩, third⟩
  have h := congrArg Matrix.transpose (first (n := n) (m := m) gᵀ)
  simp only [Matrix.transpose_mul, cmp_tr, Matrix.transpose_transpose,
    Matrix.kroneckerMap_transpose] at h
  exact h.symm

end GlobalTheory.CompanionTheory.WedgeEmb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorIntegrality =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorPowerIntegral =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorPowerIntegral", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.IsSimpleFam\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.CompoundMatrixCauchyBinetProperties\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open CompanionTheory.Zuck BranchingSupport Matrix Finset
open scoped InnerProductSpace Kronecker ContDiff

namespace GlobalTheory.CompanionTheory.ZuckWedge

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem contDiff_minor {n l : ℕ} (a b : Fin l → Fin n) :
    ContDiff ℝ ∞ fun g : Matrix (Fin n) (Fin n) ℂ => (g.submatrix a b).det := by
  simp only [det_apply']
  refine ContDiff.sum fun σ _ => ?_
  refine contDiff_const.mul ?_
  refine contDiff_prod fun i _ => ?_
  simp only [submatrix_apply]
  fun_prop

theorem okWedge : OKWedge := by
  intro k r l
  refine FRep.OK.mk ?_ ?_ ?_ ?_
  · exact GlobalTheory.compound_one _ l
  · intro g _ h _
    exact GlobalTheory.compound_mul l g h
  · intro c d g₀ _
    exact ⟨Set.univ, fun g => BranchingSupport.cmp l g c d, isOpen_univ, Set.mem_univ _,
      (contDiff_minor _ _).contDiffOn, fun g _ _ => rfl⟩
  · refine ⟨(Fintype.card (Equiv.Perm (Fin l)) : ℝ), fun g _ c d => ?_⟩
    have hent : ∀ i j, ‖g i j‖ ≤ Formalism.FourierDecayAlt.B.gN g := by
      intro i j
      have h2 : ‖g i j‖ ^ 2 ≤ ∑ i', ∑ j', Complex.normSq (g i' j') := by
        rw [Complex.sq_norm]
        calc Complex.normSq (g i j) ≤ ∑ j', Complex.normSq (g i j') :=
              Finset.single_le_sum (fun j' _ => Complex.normSq_nonneg _) (Finset.mem_univ j)
          _ ≤ ∑ i', ∑ j', Complex.normSq (g i' j') :=
              Finset.single_le_sum (f := fun i' => ∑ j', Complex.normSq (g i' j'))
                (fun i' _ => Finset.sum_nonneg fun j' _ => Complex.normSq_nonneg _) (Finset.mem_univ i)
      calc ‖g i j‖ = |‖g i j‖| := (abs_of_nonneg (norm_nonneg _)).symm
        _ ≤ _ := Real.abs_le_sqrt h2
    show ‖(g.submatrix _ _).det‖ ≤ _
    rw [det_apply']
    refine (norm_sum_le _ _).trans ?_
    calc ∑ σ : Equiv.Perm (Fin l), ‖((Equiv.Perm.sign σ : ℤ) : ℂ) * ∏ i, g.submatrix _ _ (σ i) i‖
        ≤ ∑ σ : Equiv.Perm (Fin l), Formalism.FourierDecayAlt.B.gN g ^ l := by
          refine Finset.sum_le_sum fun σ _ => ?_
          have hs : ‖((Equiv.Perm.sign σ : ℤ) : ℂ)‖ = 1 := by
            rcases Int.units_eq_one_or (Equiv.Perm.sign σ) with h | h <;> simp [h]
          rw [norm_mul, hs, one_mul, norm_prod]
          calc ∏ i, ‖g.submatrix _ _ (σ i) i‖ ≤ ∏ _i : Fin l, Formalism.FourierDecayAlt.B.gN g :=
                Finset.prod_le_prod₀ (fun i _ => norm_nonneg _) (fun i _ => hent _ _)
            _ = Formalism.FourierDecayAlt.B.gN g ^ l := by simp
      _ = (Fintype.card (Equiv.Perm (Fin l)) : ℝ) * Formalism.FourierDecayAlt.B.gN g ^ l := by
          simp [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]

end GlobalTheory.CompanionTheory.ZuckWedge
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorPowerIntegral =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.HomCategory =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.HomCategory", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.IsSimpleFam\nimport CompanionTheory.HarishChandraModules.BesselParameterIntegrals.SmoothCyclicVectors.PhMeas\npublic import CompanionTheory.HarishChandraModules.BesselParameterIntegrals.SmoothCyclicVectors.SmoothCyc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open CompanionTheory.Zuck BranchingSupport Matrix Finset
open scoped InnerProductSpace Kronecker

noncomputable section

namespace GlobalTheory.CompanionTheory.ZuckHomCat

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.ThreeDimData CompanionTheory.D.Upq.Sm

variable {k r : ℕ}

theorem sn_nonneg (X : Obj k r) (W : List (Mx k r)) (x : M X) : 0 ≤ sn X W x :=
  Finset.sum_nonneg fun _ _ => norm_nonneg _

theorem sn_add_le (X : Obj k r) {W : List (Mx k r)} (hW : LieWd k r W) (x y : M X) :
    sn X W (x + y) ≤ sn X W x + sn X W y := by
  unfold sn
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_le_sum fun c _ => ?_
  simp only [dsigW_eq', Pi.add_apply, Submodule.coe_add]
  rw [dsW_add X.2.repOn (x c).2 (y c).2 (fun Y hY t => ex_mem_of_lie (hW Y hY) t)]
  exact norm_add_le _ _

theorem sn_smul (X : Obj k r) {W : List (Mx k r)} (hW : LieWd k r W) (a : ℂ) (x : M X) :
    sn X W (a • x) = ‖a‖ * sn X W x := by
  unfold sn
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun c _ => ?_
  simp only [dsigW_eq', Pi.smul_apply, Submodule.coe_smul]
  rw [dsW_smul X.2.repOn (x c).2 a (fun Y hY t => ex_mem_of_lie (hW Y hY) t)]
  exact norm_smul _ _

theorem sum_nonneg' (X : Obj k r) (Ws : List (List (Mx k r))) (x : M X) :
    0 ≤ (Ws.map fun W' => sn X W' x).sum :=
  List.sum_nonneg fun t ht => by
    obtain ⟨W, -, rfl⟩ := List.mem_map.1 ht
    exact sn_nonneg X W x

def Dom (X : Obj k r) (φ : M X → ℝ) : Prop :=
  ∃ (C : ℝ) (Ws : List (List (Mx k r))), (∀ W' ∈ Ws, LieWd k r W') ∧
    ∀ x, φ x ≤ C * (Ws.map fun W' => sn X W' x).sum

theorem Dom.mono {X : Obj k r} {φ ψ : M X → ℝ} (h : Dom X ψ) (hle : ∀ x, φ x ≤ ψ x) : Dom X φ := by
  obtain ⟨C, Ws, hW, hb⟩ := h
  exact ⟨C, Ws, hW, fun x => (hle x).trans (hb x)⟩

theorem Dom.zero (X : Obj k r) : Dom X fun _ => 0 :=
  ⟨0, [], by simp, fun _ => by simp⟩

theorem Dom.add {X : Obj k r} {φ ψ : M X → ℝ} (h : Dom X φ) (h' : Dom X ψ) :
    Dom X fun x => φ x + ψ x := by
  obtain ⟨C, Ws, hW, hb⟩ := h
  obtain ⟨C', Ws', hW', hb'⟩ := h'
  refine ⟨|C| + |C'|, Ws ++ Ws', fun W hm => (List.mem_append.1 hm).elim (hW W) (hW' W), fun x => ?_⟩
  rw [List.map_append, List.sum_append]
  have h1 := sum_nonneg' X Ws x
  have h2 := sum_nonneg' X Ws' x
  have h3 := hb x
  have h4 := hb' x
  have h5 := mul_le_mul_of_nonneg_right (le_abs_self C) h1
  have h6 := mul_le_mul_of_nonneg_right (le_abs_self C') h2
  have h7 := mul_nonneg (abs_nonneg C) h2
  have h8 := mul_nonneg (abs_nonneg C') h1
  nlinarith

theorem Dom.mul {X : Obj k r} {φ : M X → ℝ} (h : Dom X φ) {a : ℝ} (ha : 0 ≤ a) :
    Dom X fun x => a * φ x := by
  obtain ⟨C, Ws, hW, hb⟩ := h
  refine ⟨a * C, Ws, hW, fun x => ?_⟩
  rw [mul_assoc]
  exact mul_le_mul_of_nonneg_left (hb x) ha

theorem Dom.listSum {X : Obj k r} {ι : Type} (φ : ι → M X → ℝ) :
    ∀ l : List ι, (∀ i ∈ l, Dom X (φ i)) → Dom X fun x => (l.map fun i => φ i x).sum
  | [], _ => by simpa using Dom.zero X
  | i :: l, h => by
    simpa using (h i List.mem_cons_self).add
      (Dom.listSum φ l fun j hj => h j (List.mem_cons_of_mem _ hj))

theorem homCat : HomCat := by
  intro k r
  refine ⟨fun X Y => ⟨fun W hW => ?_, fun g _ => ?_⟩, fun X Y f f' hf hf' => ⟨fun W hW => ?_, fun g hg => ?_⟩,
    fun X Y c f hf => ⟨fun W hW => ?_, fun g hg => ?_⟩, fun X => ⟨fun W hW => ?_, fun g _ => ?_⟩,
    fun X Y Z f f' hf hf' => ⟨fun W hW => ?_, fun g hg => ?_⟩⟩
  · refine (Dom.zero X).mono fun x => ?_
    have := sn_smul Y hW 0 0
    rw [zero_smul, norm_zero, zero_mul] at this
    exact this.le
  · rw [LinearMap.zero_comp, LinearMap.comp_zero]
  · exact (Dom.add (hf.cont W hW) (hf'.cont W hW)).mono fun x => sn_add_le Y hW _ _
  · rw [LinearMap.add_comp, LinearMap.comp_add, hf.equiv g hg, hf'.equiv g hg]
  · exact (Dom.mul (hf.cont W hW) (norm_nonneg c)).mono fun x => (sn_smul Y hW _ _).le
  · rw [LinearMap.smul_comp, LinearMap.comp_smul, hf.equiv g hg]
  · exact ⟨1, [W], by simpa using hW, fun x => by simp⟩
  · rw [LinearMap.id_comp, LinearMap.comp_id]
  · obtain ⟨C, Ws, hWs, hb⟩ := hf'.cont W hW
    refine ((Dom.listSum (X := X) (fun W' x => sn Y W' (f x)) Ws
      fun W' h' => hf.cont W' (hWs W' h')).mul (abs_nonneg C)).mono fun x => ?_
    exact (hb (f x)).trans (mul_le_mul_of_nonneg_right (le_abs_self C) (sum_nonneg' Y Ws _))
  · rw [LinearMap.comp_assoc, hf.equiv g hg, ← LinearMap.comp_assoc, hf'.equiv g hg, LinearMap.comp_assoc]

end GlobalTheory.CompanionTheory.ZuckHomCat

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.HomCategory =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.MatrixHom =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.MatrixHom", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.IsSimpleFam\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open CompanionTheory.Zuck BranchingSupport Matrix Finset
open scoped InnerProductSpace Kronecker

noncomputable section

namespace GlobalTheory.CompanionTheory.ZuckMatHom

theorem mAct_coord {ι ι' V : Type} [Fintype ι] [AddCommGroup V] [Module ℂ V] (A : Matrix ι' ι ℂ)
    (x : ι → V) (c : ι') : mAct A x c = ∑ d, A c d • x d := by
  simp [mAct, LinearMap.sum_apply]

theorem mAct_mAct {ι ι' ι'' V : Type} [Fintype ι] [Fintype ι'] [AddCommGroup V] [Module ℂ V]
    (A : Matrix ι'' ι' ℂ) (B : Matrix ι' ι ℂ) (x : ι → V) :
    mAct A (mAct B x) = mAct (A * B) x := by
  funext c
  simp only [mAct_coord, Matrix.mul_apply, Finset.smul_sum, Finset.sum_smul, smul_smul]
  exact Finset.sum_comm

theorem dOp_mAct {ι ι' V V' : Type} [Fintype ι] [AddCommGroup V] [Module ℂ V] [AddCommGroup V']
    [Module ℂ V'] (A : Matrix ι' ι ℂ) (T : V →ₗ[ℂ] V') (x : ι → V) :
    dOp ι' T (mAct A x) = mAct A (dOp ι T x) := by
  funext c
  have h : ∀ (κ : Type) (y : κ → V) (e : κ), dOp κ T y e = T (y e) := fun _ _ _ => rfl

  simp only [h, mAct_coord, map_sum, map_smul]

theorem dsigW_eq_prod {k r : ℕ} (U : URep k r) :
    ∀ (W : List (Formalism.FourierDecayAlt.ThreeDimData.Mx k r)), LieWd k r W → ∀ v : U.R.smSub,
      PI.UpqRep.dsigW (k := k) (r := r) U.R.σ W (v : U.R.H) = ((W.map U.dsig).prod v : U.R.H)
  | [], _, _ => rfl
  | X :: W, hW, v => by
    have ih := dsigW_eq_prod U W (fun Y hY => hW Y (List.mem_cons_of_mem _ hY)) v
    rw [List.map_cons, List.prod_cons, Module.End.mul_apply,
      URep.dsig_coe U (hW X List.mem_cons_self), ← ih]
    rfl

theorem matHom : MatHom := by
  intro k r F F' U A hA
  refine ⟨fun W hW => ⟨∑ c : F'.ι, ∑ d : F.ι, ‖A c d‖, [W], ?_, fun x => ?_⟩, fun g hg => ?_⟩
  · intro W' hW'
    rw [List.mem_singleton.1 hW']
    exact hW
  · simp only [List.map_cons, List.map_nil, List.sum_cons, List.sum_nil, add_zero]
    change ∑ c : F'.ι, ‖PI.UpqRep.dsigW (k := k) (r := r) U.R.σ W ((mAct A x c : U.R.smSub) : U.R.H)‖ ≤
      (∑ c : F'.ι, ∑ d : F.ι, ‖A c d‖) *
        ∑ e : F.ι, ‖PI.UpqRep.dsigW (k := k) (r := r) U.R.σ W ((x e : U.R.smSub) : U.R.H)‖
    simp only [dsigW_eq_prod U W hW]
    rw [Finset.sum_mul]
    refine Finset.sum_le_sum fun c _ => ?_

    rw [mAct_coord, map_sum, Submodule.coe_sum, Finset.sum_mul]
    refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun d _ => ?_)
    rw [map_smul, Submodule.coe_smul, norm_smul]
    refine mul_le_mul_of_nonneg_left ?_ (norm_nonneg _)
    exact Finset.single_le_sum
      (f := fun e => ‖(((W.map U.dsig).prod (x e) : U.R.smSub) : U.R.H)‖)
      (fun _ _ => norm_nonneg _) (Finset.mem_univ d)
  · refine LinearMap.ext fun x => ?_
    change mAct A (mAct (F.ρ g) (dOp F.ι (U.sig g) x)) = mAct (F'.ρ g) (dOp F'.ι (U.sig g) (mAct A x))
    rw [dOp_mAct, mAct_mAct, mAct_mAct, hA g hg]

end GlobalTheory.CompanionTheory.ZuckMatHom

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.MatrixHom =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.SnTens2 =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.SnTens2", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.IsSimpleFam\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open CompanionTheory.Zuck BranchingSupport Matrix Finset
open scoped InnerProductSpace Kronecker

noncomputable section

namespace GlobalTheory.CompanionTheory.ZuckTensHom

variable {k r : ℕ}

theorem sum_list_comm {α β : Type} [Fintype β] (l : List α) (a : α → β → ℝ) :
    ∑ e, (l.map fun w => a w e).sum = (l.map fun w => ∑ e, a w e).sum := by
  induction l with
  | nil => simp
  | cons w l ih => simp [Finset.sum_add_distrib, ih]

theorem act_apply (X : Obj k r) (g : Formalism.FourierDecayAlt.ThreeDimData.Mx k r) (x : M X) (c : X.1.ι) :
    CompanionTheory.Zuck.act X g x c = ∑ d, X.1.ρ g c d • X.2.sig g (x d) := by
  simp only [CompanionTheory.Zuck.act, CompanionTheory.Zuck.mAct, CompanionTheory.Zuck.dOp, LinearMap.comp_apply, LinearMap.pi_apply,
    LinearMap.sum_apply, LinearMap.smul_apply, LinearMap.proj_apply,
    LinearMap.compLeft_apply, Function.comp_apply]

theorem act_tens1 (F E : FRep k r) (U : URep k r) (g : Formalism.FourierDecayAlt.ThreeDimData.Mx k r) (x : M (F.tens E, U)) (e : E.ι) :
    (fun c => CompanionTheory.Zuck.act (F.tens E, U) g x (c, e) : M (F, U)) =
      ∑ e', E.ρ g e e' • CompanionTheory.Zuck.act (F, U) g (fun c' => x (c', e')) := by
  funext c
  rw [act_apply]
  simp only [Finset.sum_apply, Pi.smul_apply, act_apply, Finset.smul_sum, smul_smul]
  show ∑ d : F.ι × E.ι, _ = _
  rw [Fintype.sum_prod_type, Finset.sum_comm]
  refine Finset.sum_congr rfl fun e' _ => Finset.sum_congr rfl fun c' _ => ?_
  simp [mul_comm]

theorem act_tens2 (F E : FRep k r) (U : URep k r) (g : Formalism.FourierDecayAlt.ThreeDimData.Mx k r) (x : M (E.tens F, U)) (e : E.ι) :
    (fun c => CompanionTheory.Zuck.act (E.tens F, U) g x (e, c) : M (F, U)) =
      ∑ e', E.ρ g e e' • CompanionTheory.Zuck.act (F, U) g (fun c' => x (e', c')) := by
  funext c
  rw [act_apply]
  simp only [Finset.sum_apply, Pi.smul_apply, act_apply, Finset.smul_sum, smul_smul]
  show ∑ d : E.ι × F.ι, _ = _
  rw [Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun e' _ => Finset.sum_congr rfl fun c' _ => ?_
  simp

theorem sn_tens1 (F E : FRep k r) (U : URep k r) (W : List (Formalism.FourierDecayAlt.ThreeDimData.Mx k r)) (x : M (F.tens E, U)) :
    sn (F.tens E, U) W x = ∑ e, sn (F, U) W (fun c => x (c, e)) := by
  simp only [CompanionTheory.Zuck.sn]
  show ∑ d : F.ι × E.ι, _ = _
  rw [Fintype.sum_prod_type, Finset.sum_comm]

theorem sn_tens2 (F E : FRep k r) (U : URep k r) (W : List (Formalism.FourierDecayAlt.ThreeDimData.Mx k r)) (x : M (E.tens F, U)) :
    sn (E.tens F, U) W x = ∑ e, sn (F, U) W (fun c => x (e, c)) := by
  simp only [CompanionTheory.Zuck.sn]
  show ∑ d : E.ι × F.ι, _ = _
  rw [Fintype.sum_prod_type]

theorem tensHom : TensHom := by
  intro k r F F' E U U' f hf
  refine ⟨⟨?_, ?_⟩, ⟨?_, ?_⟩⟩
  · intro W hW
    obtain ⟨C, Ws, hWs, hb⟩ := hf.cont W hW
    refine ⟨C, Ws, hWs, fun x => ?_⟩
    rw [sn_tens1]
    calc ∑ e, CompanionTheory.Zuck.sn (F', U') W (fun c => CompanionTheory.Zuck.on1 f x (c, e))
        = ∑ e, CompanionTheory.Zuck.sn (F', U') W (f (fun c => x (c, e))) := rfl
      _ ≤ ∑ e, C * (Ws.map fun W' => CompanionTheory.Zuck.sn (F, U) W' (fun c => x (c, e))).sum :=
          Finset.sum_le_sum fun e _ => hb _
      _ = C * ∑ e, (Ws.map fun W' => CompanionTheory.Zuck.sn (F, U) W' (fun c => x (c, e))).sum := by
          rw [Finset.mul_sum]
      _ = C * (Ws.map fun W' => ∑ e, CompanionTheory.Zuck.sn (F, U) W' (fun c => x (c, e))).sum :=
          congrArg (C * ·) (sum_list_comm Ws (fun W' e => CompanionTheory.Zuck.sn (F, U) W' (fun c => x (c, e))))
      _ = C * (Ws.map fun W' => CompanionTheory.Zuck.sn (F.tens E, U) W' x).sum := by
          simp only [sn_tens1]
  · intro g hg
    apply LinearMap.ext
    intro x
    funext p
    obtain ⟨c', e⟩ := p
    have h2 := act_tens1 F E U g x e
    have h1 := act_tens1 F' E U' g (CompanionTheory.Zuck.on1 f x) e
    calc (CompanionTheory.Zuck.on1 f ∘ₗ CompanionTheory.Zuck.act (F.tens E, U) g) x (c', e)
        = f (fun c => CompanionTheory.Zuck.act (F.tens E, U) g x (c, e)) c' := rfl
      _ = f (∑ e', E.ρ g e e' • CompanionTheory.Zuck.act (F, U) g (fun c => x (c, e'))) c' :=
          congrArg (fun y => f y c') h2
      _ = ∑ e', E.ρ g e e' • CompanionTheory.Zuck.act (F', U') g (f (fun c => x (c, e'))) c' := by

          rw [map_sum]
          simp only [map_smul, Finset.sum_apply, Pi.smul_apply]
          refine Finset.sum_congr rfl fun e' _ => ?_
          have hq := LinearMap.congr_fun (hf.equiv g hg) (fun c => x (c, e'))
          simp only [LinearMap.comp_apply] at hq
          rw [hq]
      _ = (∑ e', E.ρ g e e' • CompanionTheory.Zuck.act (F', U') g (fun c => CompanionTheory.Zuck.on1 f x (c, e'))) c' := by
          simp only [Finset.sum_apply, Pi.smul_apply]
          rfl
      _ = (fun c => CompanionTheory.Zuck.act (F'.tens E, U') g (CompanionTheory.Zuck.on1 f x) (c, e)) c' :=
          (congrFun h1 c').symm
      _ = (CompanionTheory.Zuck.act (F'.tens E, U') g ∘ₗ CompanionTheory.Zuck.on1 f) x (c', e) := rfl
  · intro W hW
    obtain ⟨C, Ws, hWs, hb⟩ := hf.cont W hW
    refine ⟨C, Ws, hWs, fun x => ?_⟩
    rw [sn_tens2]
    calc ∑ e, CompanionTheory.Zuck.sn (F', U') W (fun c => CompanionTheory.Zuck.on2 f x (e, c))
        = ∑ e, CompanionTheory.Zuck.sn (F', U') W (f (fun c => x (e, c))) := rfl
      _ ≤ ∑ e, C * (Ws.map fun W' => CompanionTheory.Zuck.sn (F, U) W' (fun c => x (e, c))).sum :=
          Finset.sum_le_sum fun e _ => hb _
      _ = C * ∑ e, (Ws.map fun W' => CompanionTheory.Zuck.sn (F, U) W' (fun c => x (e, c))).sum := by
          rw [Finset.mul_sum]
      _ = C * (Ws.map fun W' => ∑ e, CompanionTheory.Zuck.sn (F, U) W' (fun c => x (e, c))).sum :=
          congrArg (C * ·) (sum_list_comm Ws (fun W' e => CompanionTheory.Zuck.sn (F, U) W' (fun c => x (e, c))))
      _ = C * (Ws.map fun W' => CompanionTheory.Zuck.sn (E.tens F, U) W' x).sum := by
          simp only [sn_tens2]
  · intro g hg
    apply LinearMap.ext
    intro x
    funext p
    obtain ⟨e, c'⟩ := p
    have h2 := act_tens2 F E U g x e
    have h1 := act_tens2 F' E U' g (CompanionTheory.Zuck.on2 f x) e
    calc (CompanionTheory.Zuck.on2 f ∘ₗ CompanionTheory.Zuck.act (E.tens F, U) g) x (e, c')
        = f (fun c => CompanionTheory.Zuck.act (E.tens F, U) g x (e, c)) c' := rfl
      _ = f (∑ e', E.ρ g e e' • CompanionTheory.Zuck.act (F, U) g (fun c => x (e', c))) c' :=
          congrArg (fun y => f y c') h2
      _ = ∑ e', E.ρ g e e' • CompanionTheory.Zuck.act (F', U') g (f (fun c => x (e', c))) c' := by

          rw [map_sum]
          simp only [map_smul, Finset.sum_apply, Pi.smul_apply]
          refine Finset.sum_congr rfl fun e' _ => ?_
          have hq := LinearMap.congr_fun (hf.equiv g hg) (fun c => x (e', c))
          simp only [LinearMap.comp_apply] at hq
          rw [hq]
      _ = (∑ e', E.ρ g e e' • CompanionTheory.Zuck.act (F', U') g (fun c => CompanionTheory.Zuck.on2 f x (e', c))) c' := by
          simp only [Finset.sum_apply, Pi.smul_apply]
          rfl
      _ = (fun c => CompanionTheory.Zuck.act (E.tens F', U') g (CompanionTheory.Zuck.on2 f x) (e, c)) c' :=
          (congrFun h1 c').symm
      _ = (CompanionTheory.Zuck.act (E.tens F', U') g ∘ₗ CompanionTheory.Zuck.on2 f) x (e, c') := rfl

end GlobalTheory.CompanionTheory.ZuckTensHom

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.SnTens2 =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.TensorPowerIntegral =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.TensorPowerIntegral", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.IsSimpleFam\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open CompanionTheory.Zuck BranchingSupport Matrix Finset
open scoped InnerProductSpace Kronecker

namespace GlobalTheory.CompanionTheory.ZuckTens

open scoped Matrix.Norms.Elementwise

theorem okTens : OKTens := by
  intro k r F F' hF hF'
  refine ⟨?_, ?_, ?_, ?_⟩
  · show F.ρ 1 ⊗ₖ F'.ρ 1 = 1
    rw [hF.one, hF'.one, Matrix.one_kronecker_one]
  · intro g hg h hh
    show F.ρ (g * h) ⊗ₖ F'.ρ (g * h) = (F.ρ g ⊗ₖ F'.ρ g) * (F.ρ h ⊗ₖ F'.ρ h)
    rw [hF.mul g hg h hh, hF'.mul g hg h hh, Matrix.mul_kronecker_mul]
  · rintro ⟨c, c'⟩ ⟨d, d'⟩ g₀ hg₀
    obtain ⟨U, f, hU, hgU, hf, hfe⟩ := hF.smooth c d g₀ hg₀
    obtain ⟨U', f', hU', hgU', hf', hfe'⟩ := hF'.smooth c' d' g₀ hg₀
    refine ⟨U ∩ U', fun x => f x * f' x, hU.inter hU', ⟨hgU, hgU'⟩,
      (hf.mono Set.inter_subset_left).mul (hf'.mono Set.inter_subset_right), ?_⟩
    intro g hg hin
    have h1 := hfe g hg.1 hin
    have h2 := hfe' g hg.2 hin
    show F.ρ g c d * F'.ρ g c' d' = f g * f' g
    simp only at h1 h2
    rw [h1, h2]
  · obtain ⟨C, hC⟩ := hF.growth
    obtain ⟨C', hC'⟩ := hF'.growth
    refine ⟨C * C', ?_⟩
    rintro g hg ⟨c, c'⟩ ⟨d, d'⟩
    show ‖F.ρ g c d * F'.ρ g c' d'‖ ≤ C * C' * Formalism.FourierDecayAlt.B.gN g ^ (F.deg + F'.deg)
    have h1 := hC g hg c d
    have h2 := hC' g hg c' d'
    rw [norm_mul, pow_add]
    calc _ ≤ (C * Formalism.FourierDecayAlt.B.gN g ^ F.deg) * (C' * Formalism.FourierDecayAlt.B.gN g ^ F'.deg) :=
          mul_le_mul h1 h2 (norm_nonneg _) ((norm_nonneg _).trans h1)
      _ = _ := by ring

end GlobalTheory.CompanionTheory.ZuckTens
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.TensorPowerIntegral =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ToRawComplex =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ToRawComplex", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.IsSimpleFam\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open CompanionTheory.Zuck BranchingSupport Matrix Finset
open scoped InnerProductSpace Kronecker

noncomputable section

namespace GlobalTheory.CompanionTheory.ZuckToRaw

variable {k r : ℕ}

theorem dsigW_zero' (R : Rep k r) (W : List (Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)) :
    PI.UpqRep.dsigW (k := k) (r := r) R.σ W (0 : R.H) = 0 := by
  induction W with
  | nil => rfl
  | cons X W ih =>
    show PI.UpqRep.dsig (k := k) (r := r) R.σ X (PI.UpqRep.dsigW (k := k) (r := r) R.σ W 0) = 0
    rw [ih]
    simp [PI.UpqRep.dsig]


open Classical in
def extZ {R R' : Rep k r} (f : R.smSub →ₗ[ℂ] R'.smSub) (y : R.H) : R'.H :=
  if h : y ∈ R.smSub then (f ⟨y, h⟩ : R'.H) else 0

theorem extZ_coe {R R' : Rep k r} (f : R.smSub →ₗ[ℂ] R'.smSub) (y : R.smSub) :
    extZ f (y : R.H) = (f y : R'.H) := by
  simp only [extZ, dite_eq_left y.2]

theorem smMap_extZ {R R' : Rep k r} (f : R.smSub →ₗ[ℂ] R'.smSub)
    (hf : ∀ W, LieWd k r W → ∃ (C : ℝ) (Ws : List (List (Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ))), (∀ W' ∈ Ws, LieWd k r W') ∧
      ∀ y : R.smSub, ‖PI.UpqRep.dsigW (k := k) (r := r) R'.σ W (f y : R'.H)‖ ≤
        C * (Ws.map fun W' => ‖PI.UpqRep.dsigW (k := k) (r := r) R.σ W' (y : R.H)‖).sum) :
    SmMap R R' (extZ f) := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro v hv
    have := extZ_coe f ⟨v, hv⟩
    rw [show extZ f v = _ from this]
    exact (f _).2
  · intro v hv w hw
    have h1 := extZ_coe f ⟨v, hv⟩
    have h2 := extZ_coe f ⟨w, hw⟩
    have h3 := extZ_coe f (⟨v, hv⟩ + ⟨w, hw⟩)
    rw [show extZ f v = _ from h1, show extZ f w = _ from h2, show extZ f (v + w) = _ from h3, map_add (f := _)]
    rfl
  · intro a v hv
    have h1 := extZ_coe f ⟨v, hv⟩
    have h3 := extZ_coe f (a • ⟨v, hv⟩)
    rw [show extZ f v = _ from h1, show extZ f (a • v) = _ from h3, map_smul]
    rfl
  · intro W hW
    obtain ⟨C, Ws, h1, h2⟩ := hf W hW
    refine ⟨C, Ws, h1, fun v hv => ?_⟩
    have h3 := extZ_coe f ⟨v, hv⟩
    show ‖PI.UpqRep.dsigW (k := k) (r := r) R'.σ W (extZ f v)‖ ≤ _
    rw [show extZ f v = _ from h3]
    exact h2 ⟨v, hv⟩

theorem sn_single (X : Obj k r) (W : List (Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)) (c : X.1.ι) (v : X.2.R.smSub) :
    sn X W (Pi.single c v) = ‖PI.UpqRep.dsigW (k := k) (r := r) X.2.R.σ W (v : X.2.R.H)‖ := by
  unfold sn
  rw [Finset.sum_eq_single c]
  · simp
  · intro b _ hb
    rw [Pi.single_eq_of_ne hb, ZeroMemClass.coe_zero, dsigW_zero', norm_zero]
  · simp

theorem le_sn (X : Obj k r) (W : List (Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)) (c : X.1.ι) (x : M X) :
    ‖PI.UpqRep.dsigW (k := k) (r := r) X.2.R.σ W (x c : X.2.R.H)‖ ≤ sn X W x :=
  Finset.single_le_sum (f := fun c => ‖PI.UpqRep.dsigW (k := k) (r := r) X.2.R.σ W (x c : X.2.R.H)‖)
    (fun _ _ => norm_nonneg _) (Finset.mem_univ c)

def coord {X Y : Obj k r} (f : M X →ₗ[ℂ] M Y) (d : Y.1.ι) (c : X.1.ι) : X.2.R.smSub →ₗ[ℂ] Y.2.R.smSub :=
  LinearMap.proj d ∘ₗ f ∘ₗ LinearMap.single ℂ (fun _ : X.1.ι => X.2.R.smSub) c

theorem coord_apply {X Y : Obj k r} (f : M X →ₗ[ℂ] M Y) (d : Y.1.ι) (c : X.1.ι) (v : X.2.R.smSub) :
    coord f d c v = f (Pi.single c v) d := rfl

theorem smMap_coord {X Y : Obj k r} {f : M X →ₗ[ℂ] M Y} (hf : IsHom X Y f) (d : Y.1.ι) (c : X.1.ι) :
    SmMap X.2.R Y.2.R (extZ (coord f d c)) := by
  refine smMap_extZ _ fun W hW => ?_
  obtain ⟨C, Ws, h1, h2⟩ := hf.cont W hW
  refine ⟨C, Ws, h1, fun y => ?_⟩
  have := (le_sn Y W d _).trans (h2 (Pi.single c y))
  simpa only [sn_single, coord_apply] using this

theorem sum_coord {X Y : Obj k r} (f : M X →ₗ[ℂ] M Y) (d : Y.1.ι) (x : M X) :
    ∑ c, extZ (coord f d c) (x c : X.2.R.H) = (f x d : Y.2.R.H) := by
  simp only [extZ_coe, coord_apply]

  conv_rhs => rw [← Finset.univ_sum_single x, map_sum, Finset.sum_apply]
  simp

theorem act_coe (X : Obj k r) {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ} (hg : g ∈ GG k r) (x : M X) (c : X.1.ι) :
    (CompanionTheory.Zuck.act X g x c : X.2.R.H) = BranchingSupport.act X.1.ρ X.2.R g (fun d => (x d : X.2.R.H)) c := by
  simp [CompanionTheory.Zuck.act, BranchingSupport.act, mAct, dOp, URep.sig_coe _ hg]

theorem one_coord {U : URep k r} {Y : Obj k r} (f : M (one U) →ₗ[ℂ] M Y) (d : Y.1.ι) (x : M (one U)) :
    extZ (coord f d ()) (x () : U.R.H) = (f x d : Y.2.R.H) := by
  rw [← sum_coord f d x]
  simp

theorem act_one (U : URep k r) {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ} (hg : g ∈ GG k r) (x : M (one U)) :
    (CompanionTheory.Zuck.act (one U) g x () : U.R.H) = U.R.σ g (x ()) := by
  rw [act_coe (one U) hg]
  simp [BranchingSupport.act]

theorem toRaw : ToRaw := by
  rintro k r F U κ _ _ T ⟨io, pr, h⟩
  refine ⟨fun a c => extZ (coord (io a) c ()), fun a c => extZ (coord (pr a) () c), ?_⟩
  refine ⟨fun I c => smMap_coord (h.io_hom I) c (), fun I c => smMap_coord (h.pr_hom I) () c,
    fun I g hg y hy => ?_, fun I g hg x hx => ?_, fun x hx c => ?_, fun I y hy => ?_, fun I J hIJ y hy => ?_⟩
  · let y' : M (one (T I)) := fun _ => ⟨y, hy⟩
    funext c
    have e1 : (T I).R.σ g y = (CompanionTheory.Zuck.act (one (T I)) g y' () : (T I).R.H) := (act_one (T I) hg y').symm
    have e2 : ∀ d, extZ (coord (io I) d ()) y = (io I y' d : U.R.H) := fun d => one_coord (io I) d y'
    have e3 := LinearMap.congr_fun ((h.io_hom I).equiv g hg) y'
    simp only [LinearMap.comp_apply] at e3
    simp only [e2]
    rw [e1, one_coord, e3]
    exact act_coe (F, U) hg _ c
  · let x' : M (F, U) := fun c => ⟨x c, hx c⟩
    have e1 : ∀ c, BranchingSupport.act F.ρ U.R g x c = (CompanionTheory.Zuck.act (F, U) g x' c : U.R.H) :=
      fun c => (act_coe (F, U) hg x' c).symm
    have e2 : ∑ c, extZ (coord (pr I) () c) (x c) = (pr I x' () : (T I).R.H) := sum_coord (pr I) () x'
    have e3 := LinearMap.congr_fun ((h.pr_hom I).equiv g hg) x'
    simp only [LinearMap.comp_apply] at e3
    simp only [e1]
    rw [e2, ← act_one (T I) hg, ← e3]
    exact sum_coord (pr I) () _
  · let x' : M (F, U) := fun c => ⟨x c, hx c⟩
    have e2 : ∀ I, ∑ c, extZ (coord (pr I) () c) (x c) = (pr I x' () : (T I).R.H) :=
      fun I => sum_coord (pr I) () x'
    have e4 : ∀ I, extZ (coord (io I) c ()) (pr I x' () : (T I).R.H) = (io I (pr I x') c : U.R.H) :=
      fun I => one_coord (io I) c _
    have e3 := congrFun (LinearMap.congr_fun h.sum x') c
    simp only [LinearMap.coe_sum, Finset.sum_apply, LinearMap.comp_apply, LinearMap.id_apply] at e3
    simp only [e2, e4]
    rw [← Submodule.coe_sum, e3]
  · let y' : M (one (T I)) := fun _ => ⟨y, hy⟩
    have e2 : ∀ d, extZ (coord (io I) d ()) y = (io I y' d : U.R.H) := fun d => one_coord (io I) d y'
    have e3 := LinearMap.congr_fun (h.pr_io I) y'
    simp only [LinearMap.comp_apply, LinearMap.id_apply] at e3
    simp only [e2]
    refine (sum_coord (pr I) () (io I y')).trans ?_
    rw [e3]
  · let y' : M (one (T J)) := fun _ => ⟨y, hy⟩
    have e2 : ∀ d, extZ (coord (io J) d ()) y = (io J y' d : U.R.H) := fun d => one_coord (io J) d y'
    have e3 := LinearMap.congr_fun (h.pr_io_ne I J hIJ) y'
    simp only [LinearMap.comp_apply, LinearMap.zero_apply] at e3
    simp only [e2]
    refine (sum_coord (pr I) () (io J y')).trans ?_
    rw [e3]
    rfl

end GlobalTheory.CompanionTheory.ZuckToRaw

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ToRawComplex =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.UnitaryIso =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.UnitaryIso", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.IsSimpleFam\nimport CompanionTheory.HarishChandraModules.BesselParameterIntegrals.SmoothCyclicVectors.PhMeas\npublic import CompanionTheory.HarishChandraModules.BesselParameterIntegrals.SmoothCyclicVectors.SmoothCyc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open CompanionTheory.Zuck BranchingSupport Matrix Finset
open scoped InnerProductSpace Kronecker

noncomputable section

namespace GlobalTheory.CompanionTheory.ZuckUIso

open CompanionTheory.D.Upq.Sm
open PI.UpqRep (InLieHpk dsigW)

section Gen

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ} {H H' : Type} [NormedAddCommGroup H] [NormedSpace ℂ H] [NormedAddCommGroup H'] [NormedSpace ℂ H']
  {G : Set (Mat n)} {σ : Mat n → (H →L[ℂ] H)} {σ' : Mat n → (H' →L[ℂ] H')}

theorem isSm_map (e : H →L[ℂ] H') (he : ∀ g ∈ G, ∀ x, e (σ g x) = σ' g (e x)) {v : H} (hv : IsSm G σ v) :
    IsSm G σ' (e v) :=
  (SmOn.clm hv (e.restrictScalars ℝ)).congr fun g hg => (he g hg v).symm

theorem ds_map (h : RepOn G σ) (e : H →L[ℂ] H') (he : ∀ g ∈ G, ∀ x, e (σ g x) = σ' g (e x)) {X : Mat n}
    (hX : ∀ t, ex X t ∈ G) {v : H} (hv : IsSm G σ v) : ds σ' X (e v) = e (ds σ X v) := by
  have h1 := (e.restrictScalars ℝ).hasFDerivAt.comp_hasDerivAt (0 : ℝ) (hv.differentiableAt h hX).hasDerivAt
  have h2 : (fun t => σ' (ex X t) (e v)) = (e.restrictScalars ℝ) ∘ fun t => σ (ex X t) v := by
    ext t; exact (he _ (hX t) v).symm
  unfold ds
  rw [h2, h1.deriv]; rfl

theorem dsW_map (h : RepOn G σ) (e : H →L[ℂ] H') (he : ∀ g ∈ G, ∀ x, e (σ g x) = σ' g (e x))
    {v : H} (hv : IsSm G σ v) : ∀ {W : List (Mat n)}, LieW G W → dsW σ' W (e v) = e (dsW σ W v)
  | [], _ => rfl
  | X :: W, hW => by
    have hW' : LieW G W := fun Y hY => hW Y (List.mem_cons_of_mem _ hY)
    rw [dsW_cons, dsW_cons, dsW_map h e he hv hW',
      ds_map h e he (hW X List.mem_cons_self) (hv.dsW h hW')]

end Gen

variable {k r : ℕ}

def res (U U' : URep k r) (e : U.R.H →L[ℂ] U'.R.H) (he : ∀ g ∈ GG k r, ∀ x, e (U.R.σ g x) = U'.R.σ g (e x)) :
    U.R.smSub →ₗ[ℂ] U'.R.smSub :=
  (e : U.R.H →ₗ[ℂ] U'.R.H).restrict fun v hv => isSm_map (G := GG k r) e he (v := v) hv

theorem res_coe (U U' : URep k r) (e : U.R.H →L[ℂ] U'.R.H)
    (he : ∀ g ∈ GG k r, ∀ x, e (U.R.σ g x) = U'.R.σ g (e x)) (v : U.R.smSub) :
    (res U U' e he v : U'.R.H) = e v := rfl

theorem isHom_res (F : FRep k r) (U U' : URep k r) (e : U.R.H →L[ℂ] U'.R.H)
    (he : ∀ g ∈ GG k r, ∀ x, e (U.R.σ g x) = U'.R.σ g (e x)) (hn : ∀ x, ‖e x‖ = ‖x‖) :
    IsHom (F, U) (F, U') (dOp F.ι (res U U' e he)) := by
  constructor
  · intro W hW
    refine ⟨1, [W], by simpa using hW, fun x => le_of_eq ?_⟩
    simp only [List.map_cons, List.map_nil, List.sum_cons, List.sum_nil, add_zero, one_mul, sn]
    refine Finset.sum_congr rfl fun c _ => ?_
    rw [dsigW_eq', dsigW_eq']
    change ‖dsW U'.R.σ W (e (x c : U.R.H))‖ = _
    rw [dsW_map U.repOn e he (v := (x c : U.R.H)) (x c).2 (fun X hX t => ex_mem_of_lie (hW X hX) t), hn]
  · intro g hg
    have h1 : res U U' e he ∘ₗ U.sig g = U'.sig g ∘ₗ res U U' e he := by
      ext v
      simp only [LinearMap.comp_apply, res_coe, URep.sig_coe _ hg, he g hg]
    refine LinearMap.ext fun x => funext fun c => ?_
    have h2 : ∀ d, res U U' e he (U.sig g (x d)) = U'.sig g (res U U' e he (x d)) :=
      fun d => LinearMap.congr_fun h1 (x d)
    simp [CompanionTheory.Zuck.act, mAct, dOp, h2]

theorem uIso : UIso := by
  rintro k r F U U' ⟨e, he⟩
  have he' : ∀ g ∈ GG k r, ∀ x, e.symm (U'.R.σ g x) = U.R.σ g (e.symm x) := fun g hg x => by
    apply e.injective
    rw [he g hg, e.apply_symm_apply, e.apply_symm_apply]
  refine ⟨dOp F.ι (res U U' (e.toContinuousLinearEquiv : U.R.H →L[ℂ] U'.R.H) he),
    dOp F.ι (res U' U (e.symm.toContinuousLinearEquiv : U'.R.H →L[ℂ] U.R.H) he'),
    isHom_res F U U' _ he e.norm_map, isHom_res F U' U _ he' e.symm.norm_map, ?_, ?_⟩
  · exact LinearMap.ext fun x => funext fun c => Subtype.ext (e.symm_apply_apply _)
  · exact LinearMap.ext fun x => funext fun c => Subtype.ext (e.apply_symm_apply _)

end GlobalTheory.CompanionTheory.ZuckUIso

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.UnitaryIso =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ZuckermanHypothesis =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ZuckermanHypothesis", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.IsSimpleFam\npublic import CompanionTheory.AutomorphicTheory.SchurLimitBounds.SchurOrthogonality.SchurH\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.CapelliEigenvalues.BetaAtInfinityZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open CompanionTheory.Zuck BranchingSupport Matrix Finset
open scoped InnerProductSpace Kronecker

noncomputable section

namespace GlobalTheory.CompanionTheory.ZuckTransport

open PI.UpqRep CompanionTheory.LimBd.SchurHpk

theorem dot_conj {n : ℕ} (P a Q : Matrix (Fin n) (Fin n) ℂ) (u x : Fin n → ℂ) :
    u ⬝ᵥ ((P * a * Q) *ᵥ x) = (u ᵥ* P) ⬝ᵥ (a *ᵥ (Q *ᵥ x)) := by
  rw [← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec]

theorem dot_expand {n : ℕ} (a : Matrix (Fin n) (Fin n) ℂ) (u x : Fin n → ℂ) :
    u ⬝ᵥ (a *ᵥ x) = ∑ p : Fin n × Fin n, u p.1 * x p.2 * a p.1 p.2 := by
  rw [Fintype.sum_prod_type]
  simp only [dotProduct, Matrix.mulVec, Finset.mul_sum]
  exact Finset.sum_congr rfl fun c _ => Finset.sum_congr rfl fun d _ => by ring

variable {k r : ℕ} {ε : Fin (2 * r + k + 1) → Bool}

theorem kfin_smul {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    {σ : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ → (H →L[ℂ] H)} {v : H} (c : ℂ)
    (hv : IsKFinHpk (k := k) (r := r) σ v) : IsKFinHpk (k := k) (r := r) σ (c • v) := by
  obtain ⟨S, h1, h2, h3⟩ := hv
  exact ⟨S, h1, S.smul_mem c h2, h3⟩

theorem transport (U : URep k r) {P : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ}
    (hP : IsCayleyU k r ε P)
    (q : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ → Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)
    (hq : ∀ g, q (P * g * P⁻¹) = P * q g * P⁻¹)
    (ν : Fin (2 * r + k + 1) → Fin (2 * r + k + 1) → ℝ)
    (Sm : Finset (Fin (2 * r + k + 1))) (Hs : Fin (2 * r + k + 1) → Type)
    [∀ s, NormedAddCommGroup (Hs s)] [∀ s, InnerProductSpace ℂ (Hs s)] [∀ s, CompleteSpace (Hs s)]
    (σs : ∀ s, Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ → (Hs s →L[ℂ] Hs s))
    (hSm : ∀ s, s ∈ Sm ↔ IsHCParam (ν s))
    (ds : ∀ s ∈ Sm, IsHCParam (ν s) ∧ IsDS ε (ν s) (σs s))
    (toSum : ∀ (v w : U.R.H) (x y : Fin (2 * r + k + 1) → ℂ), IsKFin ε (fun g => U.R.σ (P⁻¹ * g * P)) v →
      IsKFin ε (fun g => U.R.σ (P⁻¹ * g * P)) w →
      ∃ (ι : Type) (_ : Fintype ι) (sI : ι → Fin (2 * r + k + 1)) (vI wI : ∀ i, Hs (sI i)),
        (∀ i, sI i ∈ Sm ∧ IsKFin ε (σs (sI i)) (vI i) ∧ IsKFin ε (σs (sI i)) (wI i)) ∧
        ∀ g ∈ UJset ε, ⟪w, U.R.σ (P⁻¹ * g * P) v⟫_ℂ * (star y ⬝ᵥ (q g *ᵥ x)) =
          ∑ i, ⟪wI i, σs (sI i) g (vI i)⟫_ℂ)
    (ofSum : ∀ s ∈ Sm, ∀ v w : Hs s, IsKFin ε (σs s) v → IsKFin ε (σs s) w →
      ∃ (ι : Type) (_ : Fintype ι) (vI wI : ι → U.R.H) (xI yI : ι → Fin (2 * r + k + 1) → ℂ),
        (∀ i, IsKFin ε (fun g => U.R.σ (P⁻¹ * g * P)) (vI i) ∧ IsKFin ε (fun g => U.R.σ (P⁻¹ * g * P)) (wI i)) ∧
        ∀ g ∈ UJset ε, ⟪w, σs s g v⟫_ℂ =
          ∑ i, ⟪wI i, U.R.σ (P⁻¹ * g * P) (vI i)⟫_ℂ * (star (yI i) ⬝ᵥ (q g *ᵥ xI i))) :
    ∃ T : {s // IsHCParam (ν s)} → URep k r, (∀ s, (T s).R.IsDS ε (ν s)) ∧
      (∀ v w, U.R.KFin v → U.R.KFin w → ∀ c d, ∃ (I : Type) (_ : Fintype I) (s : I → {s // IsHCParam (ν s)})
        (y y' : ∀ i, (T (s i)).R.H),
        ∀ g ∈ GG k r, ⟪w, U.R.σ g v⟫_ℂ * q g c d = ∑ i, ⟪y' i, (T (s i)).R.σ g (y i)⟫_ℂ) ∧
      ∀ s, ∃ y : (T s).R.H, y ≠ 0 ∧ ∃ (I : Type) (_ : Fintype I) (v w : I → U.R.H)
        (c d : I → Fin (2 * r + k + 1)), (∀ i, U.R.KFin (v i) ∧ U.R.KFin (w i)) ∧
        ∀ g ∈ GG k r, ⟪y, (T s).R.σ g y⟫_ℂ = ∑ i, ⟪w i, U.R.σ g (v i)⟫_ℂ * q g (c i) (d i) := by
  have hk := fun v => CompanionTheory.CapEig.kfin_iff k r ε P U.R.H U.R.σ v hP
  have hds : ∀ s : {s // IsHCParam (ν s)}, IsDSHpk k r ε (ν s) (fun x => σs s (P * x * P⁻¹)) := fun s =>
    ⟨P, hP, by
      have e : (fun g => (fun x => σs s (P * x * P⁻¹)) (P⁻¹ * g * P)) = σs s := funext fun g => by
        simp only [forth_back hP.1]
      rw [e]
      exact (ds s ((hSm s).2 s.2)).2⟩
  refine ⟨fun s => ⟨⟨Hs s, fun x => σs s (P * x * P⁻¹)⟩, isURepOn_of_ds (hds s)⟩, fun s => ⟨s.2, hds s⟩,
    fun v w hv hw c d => ?_, fun s => ?_⟩
  · obtain ⟨ι, _, sI, vI, wI, hI, hsum⟩ := toSum v w (P *ᵥ Pi.single d 1) (star (Pi.single c 1 ᵥ* P⁻¹))
      ((hk v).1 hv) ((hk w).1 hw)
    refine ⟨ι, inferInstance, fun i => ⟨sI i, (hSm _).1 (hI i).1⟩, vI, wI, fun g hg => ?_⟩
    have := hsum _ (forth_mem hP.1 hg)
    rw [back_forth hP.1, hq, star_star, dot_conj, Matrix.vecMul_vecMul, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec,
      Matrix.mul_assoc (q g), inv_mul_P hP.1, Matrix.mul_one, Matrix.vecMul_one, single_one_dotProduct,
      Matrix.mulVec_single_one] at this
    exact this
  · have hs := (hSm s).2 s.2
    obtain ⟨S, hS, hSK, -, ⟨y, hyS, hy0, -⟩, -⟩ := (ds s hs).2.2.2.2.2.2.1
    have hy : IsKFin ε (σs s) y := ⟨S, hS, hyS, hSK⟩
    obtain ⟨ι, _, vI, wI, xI, yI, hI, hsum⟩ := ofSum s hs y y hy hy
    refine ⟨y, hy0, ι × Fin (2 * r + k + 1) × Fin (2 * r + k + 1), inferInstance,
      fun p => ((star (yI p.1) ᵥ* P) p.2.1 * (P⁻¹ *ᵥ xI p.1) p.2.2) • vI p.1, fun p => wI p.1,
      fun p => p.2.1, fun p => p.2.2, fun p => ⟨kfin_smul _ ((hk _).2 (hI p.1).1), (hk _).2 (hI p.1).2⟩,
      fun g hg => ?_⟩
    have := hsum _ (forth_mem hP.1 hg)
    refine this.trans ?_
    rw [Fintype.sum_prod_type]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [back_forth hP.1, hq, dot_conj, dot_expand, Finset.mul_sum]
    refine Finset.sum_congr rfl fun p _ => ?_
    rw [map_smul, inner_smul_right]
    ring

theorem zuckerman_hypothesis_holds : ZuckH := by
  intro t hZ k r ε μ U b h hU hg hlt
  obtain ⟨hμ, P, hP, hτ⟩ := hU
  obtain ⟨⟨X, hX⟩, ⟨Y, hY⟩⟩ := hZ _ ε μ U.R.H _ hμ hτ h hg hlt
  cases b
  · exact transport U hP (fun g => g) (fun _ => rfl) (shift false μ) X.Sm X.Hs X.σs hX X.ds X.toSum X.ofSum
  · have hi : ∀ g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ, (P * g * P⁻¹)⁻¹ = P * g⁻¹ * P⁻¹ :=
      fun g => by
        rw [Matrix.mul_inv_rev, Matrix.mul_inv_rev,
          Matrix.nonsing_inv_nonsing_inv _ ((Matrix.isUnit_iff_isUnit_det _).1 hP.1.1), Matrix.mul_assoc]
    obtain ⟨T, h1, h2, h3⟩ :=
      transport U hP (fun g => g⁻¹) hi (shift true μ) Y.Sm Y.Hs Y.σs hY Y.ds Y.toSum Y.ofSum
    refine ⟨T, h1, fun v w hv hw c d => h2 v w hv hw d c, fun s => ?_⟩
    obtain ⟨y, hy, I, _, v, w, c, d, hk, he⟩ := h3 s
    exact ⟨y, hy, I, inferInstance, v, w, d, c, hk, he⟩

end GlobalTheory.CompanionTheory.ZuckTransport

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ZuckermanHypothesis =====

-- ===== clump member: CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.ZuckermanIngredients =====
-- clump-header: {"m": "CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.ZuckermanIngredients", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.ShiftApply\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.AdjFromApply\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.DecompositionOfInjective\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.OrbitDerivatives.EtaleClosedPointLiftsSimpleRootsMonic\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.OrbitDerivatives.LieAlgebraHomomorphism\npublic import CompanionTheory.HarishChandraModules.LowKTypeMultiplicity.DiscreteSeriesCharacters.DiscreteSeriesInfinitesimalCharacter\npublic import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.IsSimpleFam\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.CasimirDiagonalSum\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.CasimirSplitting\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.CountingBound\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.DecompositionOfTensorFromHomLaws\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.DecompositionOfTrace\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorDifferentialMatrixUnitFormula\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorDifferentialSignRuleQuadratic\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorIntegrality\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExteriorPowerIntegral\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.HomCategory\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.MatrixHom\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.SnTens2\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.StandardDifferential\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.TensorPowerIntegral\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ToRawComplex\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.UnitaryIso\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ZuckermanHypothesis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace CompanionTheory.Zuck

theorem zuckerman_ingredients : Steps := by
  exact {
    infChar := CompanionTheory.D.DSIC.discrete_series_infinitesimal_character
    decOfInj := decomposition_of_injective
    decOfTrace := _root_.GlobalTheory.CompanionTheory.ZuckDecOfTrace.decOfTrace
    homCat := _root_.GlobalTheory.CompanionTheory.ZuckHomCat.homCat
    okTriv := trivial_rep_admissible
    okVr := vector_rep_admissible
    okWedge := _root_.GlobalTheory.CompanionTheory.ZuckWedge.okWedge
    okTens := _root_.GlobalTheory.CompanionTheory.ZuckTens.okTens
    matHom := _root_.GlobalTheory.CompanionTheory.ZuckMatHom.matHom
    uIso := _root_.GlobalTheory.CompanionTheory.ZuckUIso.uIso
    homLie := CompanionTheory.D.gk.FinalFormK.lie_algebra_homomorphism
    casSplit := _root_.GlobalTheory.CompanionTheory.ZuckCasSplit.casSplit
    casDS := _root_.GlobalTheory.CompanionTheory.CasimirDS.casDS
    wedgeInt := _root_.GlobalTheory.CompanionTheory.WedgeEmb.wedgeInt
    wedgeQ := _root_.GlobalTheory.CompanionTheory.WedgeSplitCasimir.wedgeQ _root_.GlobalTheory.CompanionTheory.ZuckStdD.stdD _root_.GlobalTheory.CompanionTheory.WedgeDeriv.dC_wedge_single
    schur := CompanionTheory.D.gk.FinalFormK.schur'
    adj := adj_of _root_.GlobalTheory.CompanionTheory.ZuckHomCat.homCat _root_.GlobalTheory.CompanionTheory.ZuckMatHom.matHom _root_.GlobalTheory.CompanionTheory.ZuckTensHom.tensHom
    multOne := multOne_of _root_.GlobalTheory.CompanionTheory.ZuckHomCat.homCat _root_.GlobalTheory.CompanionTheory.ZuckMatHom.matHom _root_.GlobalTheory.CompanionTheory.ZuckTensHom.tensHom CompanionTheory.D.gk.FinalFormK.lie_algebra_homomorphism _root_.GlobalTheory.CompanionTheory.ZuckCasSplit.casSplit _root_.GlobalTheory.CompanionTheory.ZuckStdD.stdD
      CompanionTheory.D.gk.FinalFormK.kerZero' trivial_rep_admissible vector_rep_admissible _root_.GlobalTheory.CompanionTheory.ZuckTens.okTens
    inj := CompanionTheory.D.gk.FinalFormK.injectivity_induction
    occ := CompanionTheory.D.gk.FinalFormK.occurrence_induction
    zuckH := _root_.GlobalTheory.CompanionTheory.ZuckTransport.zuckerman_hypothesis_holds
    decTens := _root_.GlobalTheory.CompanionTheory.ZuckDecTens.decTens _root_.GlobalTheory.CompanionTheory.ZuckHomCat.homCat _root_.GlobalTheory.CompanionTheory.ZuckMatHom.matHom _root_.GlobalTheory.CompanionTheory.ZuckTensHom.tensHom CompanionTheory.D.gk.FinalFormK.lie_algebra_homomorphism trivial_rep_admissible
    toRaw := _root_.GlobalTheory.CompanionTheory.ZuckToRaw.toRaw
    count := _root_.GlobalTheory.CompanionTheory.ZuckCount.count
  }

end CompanionTheory.Zuck
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.AutomorphicTheory.ZuckermanCommutation.ZuckermanFunctors.ZuckermanIngredients =====
