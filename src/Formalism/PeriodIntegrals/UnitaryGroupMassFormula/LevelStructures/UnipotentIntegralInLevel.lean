module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LeviInt
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LeviRat
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.FrameStd
public import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Bridge
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalVolumeIndices.LocIdxLift
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LocLevi
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.K2uGrpHolds
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.NLevelHolds
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.MassDataInst
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.Measures
import Mathlib.Tactic.Linter.Style
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.CMInst
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.StabilizerPreservesComplement
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiniteAdelicComparison.LocInj

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LeviComp, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.ParabolicPreservesIsotropic, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LeviFixesAnisotropic, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.UnipotentIntegralInLevel

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LeviComp =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LeviComp", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LeviInt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.MassDataInst\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.Measures\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace MassDataLevelSSteps

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.TypedSets MeasureTheory NumberField
  IsDedekindDomain Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge
open scoped TensorProduct

section Proj

variable {F E : Type} [Field F] [Field E] [Algebra F E] {R : Type} [CommRing R] [Algebra F R]
  {σ : E →ₐ[F] E} {n : ℕ} {J : Matrix (Fin n) (Fin n) E}

theorem conjTensor_involutive (hσ : ∀ x, σ (σ x) = x) (a : R ⊗[F] E) : sigR R σ (sigR R σ a) = a := by
  induction a using TensorProduct.induction_on with
  | zero => simp
  | tmul x y => simp [sigR, hσ]
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]

theorem hermForm_conj_symm (hσ : ∀ x, σ (σ x) = x) (hJ : ∀ i j, σ (J j i) = J i j) (x y : Fin n → R ⊗[F] E) :
    sigR R σ (hR R σ J x y) = hR R σ J y x := by
  unfold hR Formalism.UG.hform

  simp only [map_sum, map_mul, conjTensor_involutive hσ]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  have hJ' : sigR R σ (JR R J j i) = JR R J i j := by
    simp only [JR, Matrix.map_apply, conjTensor_incl, hJ]
  rw [hJ']
  ring

theorem hR_sum_smul_left' {ι : Type} (s : Finset ι) (d : ι → R ⊗[F] E) (v : ι → Fin n → R ⊗[F] E)
    (y : Fin n → R ⊗[F] E) : hR R σ J (∑ i ∈ s, d i • v i) y = ∑ i ∈ s, sigR R σ (d i) * hR R σ J (v i) y := by
  induction s using Finset.cons_induction with
  | empty => simp [hR_zero_left]
  | cons a s ha ih => rw [Finset.sum_cons, Finset.sum_cons, hR_add_left, hR_smul_left, ih]

def hl (x : Fin n → R ⊗[F] E) : (Fin n → R ⊗[F] E) →ₗ[R ⊗[F] E] R ⊗[F] E where
  toFun := hR R σ J x
  map_add' := hermForm_add_right_bis R σ J x
  map_smul' := fun c y => by rw [hermForm_smul_right_alt]; rfl

variable {r : ℕ} (P : Frame E n r) (c : R ⊗[F] E)

def piRest : (Fin n → R ⊗[F] E) →ₗ[R ⊗[F] E] (Fin n → R ⊗[F] E) :=
  (∑ a, (hl (σ := σ) (J := J) (ratV (F := F) R (P.f a))).smulRight (ratV (F := F) R (P.e a))) +
  (∑ a, (hl (σ := σ) (J := J) (ratV (F := F) R (P.e a))).smulRight (ratV (F := F) R (P.f a))) +
  c • (hl (σ := σ) (J := J) (ratV (F := F) R P.z)).smulRight (ratV (F := F) R P.z)

def piW : (Fin n → R ⊗[F] E) →ₗ[R ⊗[F] E] (Fin n → R ⊗[F] E) := LinearMap.id - piRest (σ := σ) (J := J) P c

theorem piRest_apply (v : Fin n → R ⊗[F] E) : piRest (σ := σ) (J := J) P c v =
    (∑ a, hR R σ J (ratV (F := F) R (P.f a)) v • ratV (F := F) R (P.e a)) +
    (∑ a, hR R σ J (ratV (F := F) R (P.e a)) v • ratV (F := F) R (P.f a)) +
    (c * hR R σ J (ratV (F := F) R P.z) v) • ratV (F := F) R P.z := by
  simp [piRest, hl, smul_smul]

theorem piW_add_rest (v : Fin n → R ⊗[F] E) :
    piW (σ := σ) (J := J) P c v + piRest (σ := σ) (J := J) P c v = v := by
  simp [piW]

structure FrameTab (T : F) : Prop where
  ee : ∀ a b, hR R σ J (ratV (F := F) R (P.e a)) (ratV (F := F) R (P.e b)) = 0
  ef : ∀ a b, hR R σ J (ratV (F := F) R (P.e a)) (ratV (F := F) R (P.f b)) = if a = b then 1 else 0
  fe : ∀ a b, hR R σ J (ratV (F := F) R (P.f a)) (ratV (F := F) R (P.e b)) = if a = b then 1 else 0
  ff : ∀ a b, hR R σ J (ratV (F := F) R (P.f a)) (ratV (F := F) R (P.f b)) = 0
  ez : ∀ a, hR R σ J (ratV (F := F) R (P.e a)) (ratV (F := F) R P.z) = 0
  fz : ∀ a, hR R σ J (ratV (F := F) R (P.f a)) (ratV (F := F) R P.z) = 0
  ze : ∀ a, hR R σ J (ratV (F := F) R P.z) (ratV (F := F) R (P.e a)) = 0
  zf : ∀ a, hR R σ J (ratV (F := F) R P.z) (ratV (F := F) R (P.f a)) = 0
  zz : c * hR R σ J (ratV (F := F) R P.z) (ratV (F := F) R P.z) = 1
  hσ : ∀ x, σ (σ x) = x
  hJ : ∀ i j, σ (J j i) = J i j

def InW (v : Fin n → R ⊗[F] E) : Prop :=
  (∀ a, hR R σ J (ratV (F := F) R (P.e a)) v = 0) ∧ (∀ a, hR R σ J (ratV (F := F) R (P.f a)) v = 0) ∧
    hR R σ J (ratV (F := F) R P.z) v = 0

variable {P c} {T : F}

theorem piW_inW (ht : FrameTab (σ := σ) (J := J) P c T) (v : Fin n → R ⊗[F] E) :
    InW (σ := σ) (J := J) P (piW (σ := σ) (J := J) P c v) := by
  have key : (∀ b, hR R σ J (ratV (F := F) R (P.e b)) (piRest (σ := σ) (J := J) P c v) =
        hR R σ J (ratV (F := F) R (P.e b)) v) ∧
      (∀ b, hR R σ J (ratV (F := F) R (P.f b)) (piRest (σ := σ) (J := J) P c v) =
        hR R σ J (ratV (F := F) R (P.f b)) v) ∧
      hR R σ J (ratV (F := F) R P.z) (piRest (σ := σ) (J := J) P c v) =
        hR R σ J (ratV (F := F) R P.z) v := by
    refine ⟨fun b => ?_, fun b => ?_, ?_⟩ <;>
      rw [piRest_apply, hermForm_add_right_bis, hermForm_add_right_bis, hermForm_sum_right_alt, hermForm_sum_right_alt,
        hermForm_smul_right_alt]
    · simp [ht.ee, ht.ef, ht.ez]
    · simp [ht.fe, ht.ff, ht.fz]
    · simp only [ht.ze, ht.zf, mul_zero, Finset.sum_const_zero, zero_add]
      linear_combination (hR R σ J (ratV (F := F) R P.z) v) * ht.zz
  obtain ⟨h1, h2, h3⟩ := key
  refine ⟨fun a => ?_, fun a => ?_, ?_⟩ <;>
    simp only [piW, LinearMap.sub_apply, LinearMap.id_apply, hermForm_sub_right, h1, h2, h3, sub_self]

theorem piRest_inW (ht : FrameTab (σ := σ) (J := J) P c T) {v : Fin n → R ⊗[F] E}
    (hv : InW (σ := σ) (J := J) P v) : piRest (σ := σ) (J := J) P c v = 0 := by
  rw [piRest_apply]
  simp [hv.1, hv.2.1, hv.2.2]

theorem piW_inW_eq (ht : FrameTab (σ := σ) (J := J) P c T) {v : Fin n → R ⊗[F] E}
    (hv : InW (σ := σ) (J := J) P v) : piW (σ := σ) (J := J) P c v = v := by
  simp [piW, piRest_inW ht hv]

theorem piRest_e (ht : FrameTab (σ := σ) (J := J) P c T) (b : Fin r) :
    piRest (σ := σ) (J := J) P c (ratV (F := F) R (P.e b)) = ratV (F := F) R (P.e b) := by
  rw [piRest_apply]
  simp [ht.fe, ht.ee, ht.ze]

theorem piRest_f (ht : FrameTab (σ := σ) (J := J) P c T) (b : Fin r) :
    piRest (σ := σ) (J := J) P c (ratV (F := F) R (P.f b)) = ratV (F := F) R (P.f b) := by
  rw [piRest_apply]
  simp [ht.ff, ht.ef, ht.zf]

theorem piRest_of_frameTab (ht : FrameTab (σ := σ) (J := J) P c T) :
    piRest (σ := σ) (J := J) P c (ratV (F := F) R P.z) = ratV (F := F) R P.z := by
  rw [piRest_apply]
  simp [ht.fz, ht.ez, ht.zz]

theorem piW_X (ht : FrameTab (σ := σ) (J := J) P c T) {x : Fin n → R ⊗[F] E}
    (hx : x ∈ spanR (F := F) R P.e Set.univ) : piW (σ := σ) (J := J) P c x = 0 := by
  have h : spanR (F := F) R P.e Set.univ ≤ LinearMap.ker (piW (σ := σ) (J := J) P c) := by
    refine Submodule.span_le.2 ?_
    rintro _ ⟨b, -, rfl⟩
    simp [piW, piRest_e ht b]
  exact h hx

theorem inW_left (ht : FrameTab (σ := σ) (J := J) P c T) {a : Fin n → R ⊗[F] E}
    (ha : InW (σ := σ) (J := J) P a) (y : Fin n → R ⊗[F] E) :
    hR R σ J a (piRest (σ := σ) (J := J) P c y) = 0 := by
  have h1 : ∀ i, hR R σ J a (ratV (F := F) R (P.e i)) = 0 := fun i => by
    rw [← hermForm_conj_symm ht.hσ ht.hJ, ha.1 i, map_zero]
  have h2 : ∀ i, hR R σ J a (ratV (F := F) R (P.f i)) = 0 := fun i => by
    rw [← hermForm_conj_symm ht.hσ ht.hJ, ha.2.1 i, map_zero]
  have h3 : hR R σ J a (ratV (F := F) R P.z) = 0 := by
    rw [← hermForm_conj_symm ht.hσ ht.hJ, ha.2.2, map_zero]
  rw [piRest_apply, hermForm_add_right_bis, hermForm_add_right_bis, hermForm_sum_right_alt, hermForm_sum_right_alt,
    hermForm_smul_right_alt]
  simp [h1, h2, h3]

theorem inW_right (ht : FrameTab (σ := σ) (J := J) P c T) {a : Fin n → R ⊗[F] E}
    (ha : InW (σ := σ) (J := J) P a) (y : Fin n → R ⊗[F] E) :
    hR R σ J (piRest (σ := σ) (J := J) P c y) a = 0 := by
  rw [piRest_apply, hR_add_left, hR_add_left, hR_sum_smul_left', hR_sum_smul_left', hR_smul_left]
  simp [ha.1, ha.2.1, ha.2.2]

theorem X_left {x : Fin n → R ⊗[F] E} (hx : x ∈ spanR (F := F) R P.e Set.univ) {a : Fin n → R ⊗[F] E}
    (ha : ∀ b, hR R σ J (ratV (F := F) R (P.e b)) a = 0) : hR R σ J x a = 0 := by
  exact hR_span_perp (R := R) (σ := σ) (J := J) P a ha x hx

end Proj

end MassDataLevelSSteps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LeviComp =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.ParabolicPreservesIsotropic =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.ParabolicPreservesIsotropic", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LeviComp\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LeviRat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace MassDataLevelSSteps

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.TypedSets MeasureTheory NumberField
  IsDedekindDomain Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge
open scoped TensorProduct

section Levi

variable {F E : Type} [Field F] [Field E] [Algebra F E] {R : Type} [CommRing R] [Algebra F R]
  {σ : E →ₐ[F] E} {n : ℕ} {J : Matrix (Fin n) (Fin n) E} {r : ℕ} {P : Frame E n r} {c : R ⊗[F] E} {T : F}

theorem parabolic_preserves_isotropic {s : HA R σ J} (hs : s ∈ Ssub R σ J P) {x : Fin n → R ⊗[F] E}
    (hx : x ∈ spanR (F := F) R P.e Set.univ) : lin R σ J s x ∈ spanR (F := F) R P.e Set.univ := by
  obtain ⟨d, rfl⟩ := mem_tensor_span_iff R P.e x hx

  rw [map_sum]
  refine Submodule.sum_mem _ fun b _ => ?_
  rw [map_smul]
  refine Submodule.smul_mem _ _ ?_
  have h1 := Submodule.span_mono (Set.image_mono (Set.subset_univ _)) (parabolic_unipotent_on_flag P hs b)
  have h2 := Submodule.add_mem _ h1 (Submodule.subset_span ⟨b, Set.mem_univ _, rfl⟩ :
    ratV (F := F) R (P.e b) ∈ spanR (F := F) R P.e Set.univ)
  rwa [sub_add_cancel] at h2

theorem parabolic_fixes_modulo_span {s : HA R σ J} (hs : s ∈ Ssub R σ J P) :
    lin R σ J s (ratV (F := F) R P.z) - ratV (F := F) R P.z ∈ spanR (F := F) R P.e Set.univ := by
  have h := hs (Fin.last r)
  have e : F0 P (Fin.last r) = P.z := by simp [F0]
  rw [e] at h
  refine (Submodule.span_le.2 ?_) h
  rintro _ ⟨a, ha, rfl⟩
  obtain ⟨a', rfl⟩ := Fin.exists_castSucc_eq.2 (Fin.ne_last_of_lt ha)
  show ratV (F := F) R (F0 P (Fin.castSucc a')) ∈ spanR (F := F) R P.e Set.univ
  have e' : F0 P (Fin.castSucc a') = P.e a' := by simp [F0]
  rw [e']
  exact Submodule.subset_span ⟨a', Set.mem_univ _, rfl⟩

theorem isotropic_span_hermForm_zero (ht : FrameTab (σ := σ) (J := J) P c T) {x y : Fin n → R ⊗[F] E}
    (hx : x ∈ spanR (F := F) R P.e Set.univ) (hy : y ∈ spanR (F := F) R P.e Set.univ) : hR R σ J x y = 0 := by
  refine X_left hx fun b => ?_
  obtain ⟨d, rfl⟩ := mem_tensor_span_iff R P.e y hy
  rw [hermForm_sum_right_alt]
  simp [ht.ee]

theorem parabolic_maps_complement (ht : FrameTab (σ := σ) (J := J) P c T) {s : HA R σ J} (hs' : s⁻¹ ∈ Ssub R σ J P)
    {a : Fin n → R ⊗[F] E} (ha : InW (σ := σ) (J := J) P a) :
    piRest (σ := σ) (J := J) P c (lin R σ J s a) ∈ spanR (F := F) R P.e Set.univ := by
  have h1 : ∀ b, hR R σ J (ratV (F := F) R (P.e b)) (lin R σ J s a) = 0 := fun b => by
    rw [← lin_lin_inv R σ J s (ratV (F := F) R (P.e b)), hR_lin]
    exact X_left (parabolic_preserves_isotropic hs' (Submodule.subset_span ⟨b, Set.mem_univ _, rfl⟩)) ha.1
  have h3 : hR R σ J (ratV (F := F) R P.z) (lin R σ J s a) = 0 := by
    rw [← lin_lin_inv R σ J s (ratV (F := F) R P.z), hR_lin]
    have e : lin R σ J s⁻¹ (ratV (F := F) R P.z) =
        ratV (F := F) R P.z + (lin R σ J s⁻¹ (ratV (F := F) R P.z) - ratV (F := F) R P.z) := by abel
    rw [e, hR_add_left, ha.2.2, X_left (parabolic_fixes_modulo_span hs') ha.1, add_zero]
  rw [piRest_apply]
  simp only [h1, h3, zero_smul, Finset.sum_const_zero, add_zero, mul_zero]
  exact Submodule.sum_mem _ fun b _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨b, Set.mem_univ _, rfl⟩)

variable (P c)

def Lh (s : HA R σ J) : (Fin n → R ⊗[F] E) →ₗ[R ⊗[F] E] (Fin n → R ⊗[F] E) :=
  piW (σ := σ) (J := J) P c ∘ₗ lin R σ J s ∘ₗ piW (σ := σ) (J := J) P c + piRest (σ := σ) (J := J) P c

variable {P c}

theorem Lh_apply (s : HA R σ J) (v : Fin n → R ⊗[F] E) : Lh P c s v =
    piW (σ := σ) (J := J) P c (lin R σ J s (piW (σ := σ) (J := J) P c v)) + piRest (σ := σ) (J := J) P c v := rfl

theorem piW_piRest (ht : FrameTab (σ := σ) (J := J) P c T) (v : Fin n → R ⊗[F] E) :
    piW (σ := σ) (J := J) P c (piRest (σ := σ) (J := J) P c v) = 0 := by
  have e : piRest (σ := σ) (J := J) P c v = v - piW (σ := σ) (J := J) P c v :=
    eq_sub_of_add_eq' (piW_add_rest (σ := σ) (J := J) P c v)
  rw [e, map_sub, piW_inW_eq ht (piW_inW ht v), sub_self]

theorem Lh_unitary (ht : FrameTab (σ := σ) (J := J) P c T) {s : HA R σ J} (hs' : s⁻¹ ∈ Ssub R σ J P)
    (u v : Fin n → R ⊗[F] E) : hR R σ J (Lh P c s u) (Lh P c s v) = hR R σ J u v := by
  set pu := piW (σ := σ) (J := J) P c u
  set pv := piW (σ := σ) (J := J) P c v
  have hpu := piW_inW (c := c) ht u
  have hpv := piW_inW (c := c) ht v

  have hmid : hR R σ J (piW (σ := σ) (J := J) P c (lin R σ J s pu)) (piW (σ := σ) (J := J) P c (lin R σ J s pv)) =
      hR R σ J pu pv := by
    have eA := piW_add_rest (σ := σ) (J := J) P c (lin R σ J s pu)
    have eB := piW_add_rest (σ := σ) (J := J) P c (lin R σ J s pv)
    have hxa := parabolic_maps_complement ht hs' hpu
    have hxb := parabolic_maps_complement ht hs' hpv
    have key : hR R σ J (lin R σ J s pu) (lin R σ J s pv) =
        hR R σ J (piW (σ := σ) (J := J) P c (lin R σ J s pu)) (piW (σ := σ) (J := J) P c (lin R σ J s pv)) := by
      conv_lhs => rw [← eA, ← eB]
      rw [hR_add_left, hermForm_add_right_bis, hermForm_add_right_bis,
        inW_left ht (piW_inW ht _), inW_right ht (piW_inW ht _), isotropic_span_hermForm_zero ht hxa hxb]
      ring
    rw [← key, hR_lin]
  rw [Lh_apply, Lh_apply, hR_add_left, hermForm_add_right_bis, hermForm_add_right_bis, hmid,
    inW_left ht (piW_inW ht _), inW_right ht (piW_inW ht _)]
  conv_rhs => rw [← piW_add_rest (σ := σ) (J := J) P c u, ← piW_add_rest (σ := σ) (J := J) P c v]
  rw [hR_add_left, hermForm_add_right_bis, hermForm_add_right_bis, inW_left ht hpu, inW_right ht hpv]

theorem Lh_inv (ht : FrameTab (σ := σ) (J := J) P c T) {s : HA R σ J} (hs : s ∈ Ssub R σ J P)
    (hs' : s⁻¹ ∈ Ssub R σ J P) (v : Fin n → R ⊗[F] E) : Lh P c s (Lh P c s⁻¹ v) = v := by
  set w := piW (σ := σ) (J := J) P c v
  have hw := piW_inW (c := c) ht v
  set p := piW (σ := σ) (J := J) P c (lin R σ J s⁻¹ w)
  have hp := piW_inW (c := c) ht (lin R σ J s⁻¹ w)
  have e1 : Lh P c s⁻¹ v = p + piRest (σ := σ) (J := J) P c v := rfl
  have e2 : piW (σ := σ) (J := J) P c (p + piRest (σ := σ) (J := J) P c v) = p := by
    rw [map_add (f := _), piW_inW_eq ht hp, piW_piRest ht, add_zero]
  have e3 : piRest (σ := σ) (J := J) P c (p + piRest (σ := σ) (J := J) P c v) = piRest (σ := σ) (J := J) P c v := by
    have := piW_add_rest (σ := σ) (J := J) P c (p + piRest (σ := σ) (J := J) P c v)
    rw [e2] at this
    exact add_left_cancel this
  have hs'' : s⁻¹⁻¹ ∈ Ssub R σ J P := by rw [inv_inv]; exact hs
  have hx := parabolic_maps_complement ht hs'' hw
  have e4 : lin R σ J s p = w - lin R σ J s (piRest (σ := σ) (J := J) P c (lin R σ J s⁻¹ w)) := by
    have := piW_add_rest (σ := σ) (J := J) P c (lin R σ J s⁻¹ w)
    have e5 : p = lin R σ J s⁻¹ w - piRest (σ := σ) (J := J) P c (lin R σ J s⁻¹ w) :=
      eq_sub_of_add_eq this
    rw [e5, map_sub, lin_lin_inv R σ J s w]
  rw [e1, Lh_apply, e2, e3, e4, map_sub, piW_inW_eq ht hw, piW_X ht (parabolic_preserves_isotropic hs hx), sub_zero]
  exact piW_add_rest (σ := σ) (J := J) P c v

end Levi

end MassDataLevelSSteps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.ParabolicPreservesIsotropic =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LeviFixesAnisotropic =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LeviFixesAnisotropic", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.ParabolicPreservesIsotropic\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LeviRat\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.CMInst\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.FrameStd\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.StabilizerPreservesComplement\npublic import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Bridge\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace MassDataLevelSSteps

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.TypedSets MeasureTheory NumberField
  IsDedekindDomain Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge
open scoped TensorProduct

section Pack

variable {F E : Type} [Field F] [Field E] [Algebra F E] {R : Type} [CommRing R] [Algebra F R]
  {σ : E →ₐ[F] E} {n : ℕ} {J : Matrix (Fin n) (Fin n) E} {r : ℕ} {P : Frame E n r} {c : R ⊗[F] E} {T : F}

theorem Lh_fix_e (ht : FrameTab (σ := σ) (J := J) P c T) (s : HA R σ J) (b : Fin r) :
    Lh P c s (ratV (F := F) R (P.e b)) = ratV (F := F) R (P.e b) := by
  have h0 : piW (σ := σ) (J := J) P c (ratV (F := F) R (P.e b)) = 0 := by
    simp only [piW, LinearMap.sub_apply, LinearMap.id_apply, piRest_e ht b, sub_self]
  simp only [Lh_apply, h0, map_zero, zero_add, piRest_e ht b]

theorem Lh_fix_f (ht : FrameTab (σ := σ) (J := J) P c T) (s : HA R σ J) (b : Fin r) :
    Lh P c s (ratV (F := F) R (P.f b)) = ratV (F := F) R (P.f b) := by
  have h0 : piW (σ := σ) (J := J) P c (ratV (F := F) R (P.f b)) = 0 := by
    simp only [piW, LinearMap.sub_apply, LinearMap.id_apply, piRest_f ht b, sub_self]
  simp only [Lh_apply, h0, map_zero, zero_add, piRest_f ht b]

theorem levi_fixes_anisotropic (ht : FrameTab (σ := σ) (J := J) P c T) (s : HA R σ J) :
    Lh P c s (ratV (F := F) R P.z) = ratV (F := F) R P.z := by
  have h0 : piW (σ := σ) (J := J) P c (ratV (F := F) R P.z) = 0 := by
    simp only [piW, LinearMap.sub_apply, LinearMap.id_apply, piRest_of_frameTab ht, sub_self]
  simp only [Lh_apply, h0, map_zero, zero_add, piRest_of_frameTab ht]

def gL (ht : FrameTab (σ := σ) (J := J) P c T) {s : HA R σ J} (hs : s ∈ Ssub R σ J P)
    (hs' : s⁻¹ ∈ Ssub R σ J P) : GL (Fin n) (R ⊗[F] E) where
  val := LinearMap.toMatrix' (Lh P c s)
  inv := LinearMap.toMatrix' (Lh P c s⁻¹)
  val_inv := by
    rw [← LinearMap.toMatrix'_comp]
    have : Lh P c s ∘ₗ Lh P c s⁻¹ = LinearMap.id := LinearMap.ext fun v => by
      rw [LinearMap.comp_apply, LinearMap.id_apply]
      exact Lh_inv ht hs hs' v
    rw [this, LinearMap.toMatrix'_id]
  inv_val := by
    rw [← LinearMap.toMatrix'_comp]
    have hs'' : s⁻¹⁻¹ ∈ Ssub R σ J P := by rw [inv_inv]; exact hs
    have : Lh P c s⁻¹ ∘ₗ Lh P c s = LinearMap.id := LinearMap.ext fun v => by
      rw [LinearMap.comp_apply, LinearMap.id_apply]
      have := Lh_inv ht hs' hs'' v
      rwa [inv_inv] at this
    rw [this, LinearMap.toMatrix'_id]

theorem gL_mem (ht : FrameTab (σ := σ) (J := J) P c T) {s : HA R σ J} (hs : s ∈ Ssub R σ J P)
    (hs' : s⁻¹ ∈ Ssub R σ J P) : gL ht hs hs' ∈ HR R σ J := by
  change Formalism.UG.cT (sigR R σ) (LinearMap.toMatrix' (Lh P c s)) * JR R J * LinearMap.toMatrix' (Lh P c s) = JR R J
  have key : ∀ x y, Formalism.UG.hform (sigR R σ)
      (Formalism.UG.cT (sigR R σ) (LinearMap.toMatrix' (Lh P c s)) * JR R J * LinearMap.toMatrix' (Lh P c s)) x y =
      Formalism.UG.hform (sigR R σ) (JR R J) x y := by
    intro x y
    rw [← Formalism.UG.P.hform_mulVec, LinearMap.toMatrix'_mulVec, LinearMap.toMatrix'_mulVec]
    exact Lh_unitary ht hs' x y
  ext i j
  have := key (Pi.single i 1) (Pi.single j 1)
  have hsg : ∀ k, sigR R σ ((Pi.single i (1 : R ⊗[F] E) : Fin n → R ⊗[F] E) k) =
      (Pi.single i (1 : R ⊗[F] E) : Fin n → R ⊗[F] E) k := fun k => by
    by_cases hk : k = i <;> simp [hk]
  simp only [Formalism.UG.hform, hsg] at this
  simpa [Pi.single_apply] using this

def hOf (ht : FrameTab (σ := σ) (J := J) P c T) {s : HA R σ J} (hs : s ∈ Ssub R σ J P)
    (hs' : s⁻¹ ∈ Ssub R σ J P) : HA R σ J := (⟨gL ht hs hs', gL_mem ht hs hs'⟩ : ↥(HR R σ J))

theorem lin_hOf (ht : FrameTab (σ := σ) (J := J) P c T) {s : HA R σ J} (hs : s ∈ Ssub R σ J P)
    (hs' : s⁻¹ ∈ Ssub R σ J P) (v : Fin n → R ⊗[F] E) : lin R σ J (hOf ht hs hs') v = Lh P c s v := by
  change Matrix.mulVec (LinearMap.toMatrix' (Lh P c s)) v = _
  exact LinearMap.toMatrix'_mulVec _ _

theorem hOf_mem (ht : FrameTab (σ := σ) (J := J) P c T) {s : HA R σ J} (hs : s ∈ Ssub R σ J P)
    (hs' : s⁻¹ ∈ Ssub R σ J P) : hOf ht hs hs' ∈ Hsub R σ J P := by
  rw [Hsub, mem_stabT]
  intro b
  rw [lin_hOf]
  induction b using Fin.addCases with
  | left i =>
    simp only [tupH, Fin.append_left]
    induction i using Fin.lastCases with
    | last => simp only [F0, Fin.snoc_last]; exact levi_fixes_anisotropic ht s
    | cast j => simp only [F0, Fin.snoc_castSucc]; exact Lh_fix_e ht s j
  | right j =>
    simp only [tupH, Fin.append_right]
    exact Lh_fix_f ht s j

theorem levi_diff (ht : FrameTab (σ := σ) (J := J) P c T) {s : HA R σ J} (hs : s ∈ Ssub R σ J P)
    (hs' : s⁻¹ ∈ Ssub R σ J P) (u : Fin n → R ⊗[F] E) (hu : InXperp R σ J P u) :
    lin R σ J s u - Lh P c s u ∈ spanR (F := F) R P.e Set.univ := by
  have hr : piRest (σ := σ) (J := J) P c u = (∑ a, hR R σ J (ratV (F := F) R (P.f a)) u • ratV (F := F) R (P.e a)) +
      (c * hR R σ J (ratV (F := F) R P.z) u) • ratV (F := F) R P.z := by
    rw [piRest_apply]
    simp [hu _]
  set xu := ∑ a, hR R σ J (ratV (F := F) R (P.f a)) u • ratV (F := F) R (P.e a)
  have hxu : xu ∈ spanR (F := F) R P.e Set.univ :=
    Submodule.sum_mem _ fun b _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨b, Set.mem_univ _, rfl⟩)
  set γ := c * hR R σ J (ratV (F := F) R P.z) u
  have e1 : lin R σ J s u = lin R σ J s (piW (σ := σ) (J := J) P c u) + lin R σ J s (piRest (σ := σ) (J := J) P c u) := by
    rw [← map_add (f := _), piW_add_rest]
  have e2 := piW_add_rest (σ := σ) (J := J) P c (lin R σ J s (piW (σ := σ) (J := J) P c u))
  have e3 : piRest (σ := σ) (J := J) P c (lin R σ J s (piW (σ := σ) (J := J) P c u)) =
      lin R σ J s (piW (σ := σ) (J := J) P c u) - piW (σ := σ) (J := J) P c (lin R σ J s (piW (σ := σ) (J := J) P c u)) :=
    eq_sub_of_add_eq' e2
  have key : lin R σ J s u - Lh P c s u =
      piRest (σ := σ) (J := J) P c (lin R σ J s (piW (σ := σ) (J := J) P c u)) + (lin R σ J s xu - xu) +
        γ • (lin R σ J s (ratV (F := F) R P.z) - ratV (F := F) R P.z) := by
    rw [e3, Lh_apply, e1, hr, map_add (f := _), map_smul, smul_sub]
    abel
  rw [key]
  exact Submodule.add_mem _ (Submodule.add_mem _ (parabolic_maps_complement ht hs' (piW_inW ht u))
    (Submodule.sub_mem _ (parabolic_preserves_isotropic hs hxu) hxu)) (Submodule.smul_mem _ _ (parabolic_fixes_modulo_span hs))

end Pack

variable {D : D7}

theorem leviComp_holds : LeviComp := by
  intro D X w p s hs
  obtain ⟨hee, hff, hef, hez, hfz, hzz, hT⟩ := FrameW.frameOf_isStd X w
  have hσ : ∀ x, X.B.I.cm.sig (X.B.I.cm.sig x) = x := fun x => by simp [FrameW.sig_apply]
  have hJ : ∀ i j, X.B.I.cm.sig (X.B.I.J j i) = X.B.I.J i j := (cmInst_holds X).2.1
  set T : X.B.I.F := (((D.mem w).A.T : ℕ) : X.B.I.F)
  have hne : algebraMap X.B.I.F X.B.I.E (-T) ≠ 0 := by
    rw [map_neg, neg_ne_zero]
    exact fun h => hT ((algebraMap X.B.I.F X.B.I.E).injective (by rw [h, map_zero]))
  set c : Fv X.B.I.F p.1 ⊗[X.B.I.F] X.B.I.E :=
    inclR (F := X.B.I.F) (Fv X.B.I.F p.1) ((algebraMap X.B.I.F X.B.I.E (-T))⁻¹)
  have ht : FrameTab (σ := X.B.I.cm.sig) (J := X.B.I.J) (frameOf X w) c T :=
    { ee := fun a b => by rw [hermForm_rational_vectors, hee, map_zero]
      ef := fun a b => by rw [hermForm_rational_vectors, hef]; split_ifs <;> simp
      fe := fun a b => by
        rw [hermForm_rational_vectors, ← hermForm_base_conj_symm hσ hJ, hef b a]
        split_ifs with h1 h2 h2 <;> simp_all
      ff := fun a b => by rw [hermForm_rational_vectors, hff, map_zero]
      ez := fun a => by rw [hermForm_rational_vectors, hez, map_zero]
      fz := fun a => by rw [hermForm_rational_vectors, hfz, map_zero]
      ze := fun a => by rw [hermForm_rational_vectors, ← hermForm_base_conj_symm hσ hJ, hez, map_zero, map_zero]
      zf := fun a => by rw [hermForm_rational_vectors, ← hermForm_base_conj_symm hσ hJ, hfz, map_zero, map_zero]
      zz := by rw [hermForm_rational_vectors, hzz, ← map_mul, inv_mul_cancel₀ hne, map_one]
      hσ := hσ
      hJ := hJ }
  have hs' := inv_mem hs
  exact ⟨hOf ht hs hs', hOf_mem ht hs hs', fun u hu => by rw [lin_hOf]; exact levi_diff ht hs hs' u hu⟩

theorem locLevi_of_NO (hN : UnipotentIntegralInLevel) : LocLevi := locLevi_of_comp leviComp_holds hN

end MassDataLevelSSteps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LeviFixesAnisotropic =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.UnipotentIntegralInLevel =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.UnipotentIntegralInLevel", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalVolumeIndices.LocIdxLift\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LocLevi\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiniteAdelicComparison.LocInj\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.FrameStd\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.K2uGrpHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.LeviFixesAnisotropic\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.NLevelHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace MassDataLevelSSteps

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.TypedSets MeasureTheory NumberField
  IsDedekindDomain Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge
open scoped TensorProduct
open Matrix

section Lift

variable (I : Formalism.MainNotions.S.AutInst)

def liftS (p : HeightOneSpectrum (𝓞 I.F)) (c : Fv I.F p ⊗[I.F] I.E) : I.E ⊗[I.F] Af I.F :=
  (Algebra.TensorProduct.comm I.F I.E (Af I.F)).symm (PI.MassDataKppVolLemmas.thetaP I p c)

theorem psiV_liftS (p v : HeightOneSpectrum (𝓞 I.F)) (c : Fv I.F p ⊗[I.F] I.E) :
    PI.FinKW.psiV I v (liftS I p c) = PI.MassDataKppVolLemmas.tV I v (PI.MassDataKppVolLemmas.thetaP I p c) := by
  unfold liftS PI.FinKW.psiV
  rw [AlgHom.comp_apply]
  erw [AlgEquiv.apply_symm_apply]
  rfl

theorem psiV_liftS_same (p : HeightOneSpectrum (𝓞 I.F)) (c : Fv I.F p ⊗[I.F] I.E) :
    PI.FinKW.psiV I p (liftS I p c) = c := by
  rw [psiV_liftS]
  induction c using TensorProduct.induction_on with
  | zero => simp
  | tmul a e =>
    simp only [PI.MassDataKppVolLemmas.thetaP, TensorProduct.map_tmul, LinearMap.id_apply, PI.MassDataKppVolLemmas.tV]
    simp [PI.MassDataKppVolLemmas.sL, tensMap]
    rw [show evalV I.F p (singleV I.F p a) = a from PI.MassDataKppVolLemmas.Comp_single_same I p a]
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]

theorem psiV_liftS_ne (p v : HeightOneSpectrum (𝓞 I.F)) (h : v ≠ p) (c : Fv I.F p ⊗[I.F] I.E) :
    PI.FinKW.psiV I v (liftS I p c) = 0 := by
  rw [psiV_liftS]
  induction c using TensorProduct.induction_on with
  | zero => simp
  | tmul a e =>
    simp [PI.MassDataKppVolLemmas.thetaP, PI.MassDataKppVolLemmas.tV, PI.MassDataKppVolLemmas.sL, tensMap]
    rw [show evalV I.F v (singleV I.F p a) = 0 from PI.MassDataKppVolLemmas.Comp_single_ne I p v h a,
      TensorProduct.zero_tmul]
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy, add_zero]

theorem vecV_incl (v : HeightOneSpectrum (𝓞 I.F)) (x : Fin I.n → I.E) :
    PI.FinKW.vecV I v (incl I x) = ratV (F := I.F) (Fv I.F v) x := by
  funext i
  simp [PI.FinKW.vecV, incl, ratV, PI.FinKW.psiV, Formalism.UG.inclE, inclR]

theorem vecV_add (v : HeightOneSpectrum (𝓞 I.F)) (x y : VA I) :
    PI.FinKW.vecV I v (x + y) = PI.FinKW.vecV I v x + PI.FinKW.vecV I v y := by
  funext i
  exact map_add (PI.FinKW.psiV I v) (x i) (y i)

theorem vecV_smul (v : HeightOneSpectrum (𝓞 I.F)) (c : I.E ⊗[I.F] Af I.F) (x : VA I) :
    PI.FinKW.vecV I v (c • x) = PI.FinKW.psiV I v c • PI.FinKW.vecV I v x := by
  funext i
  exact map_mul (PI.FinKW.psiV I v) c (x i)

theorem vecV_zero (v : HeightOneSpectrum (𝓞 I.F)) : PI.FinKW.vecV I v (0 : VA I) = 0 := by
  funext i
  exact map_zero (PI.FinKW.psiV I v)

theorem span_lift (p : HeightOneSpectrum (𝓞 I.F)) {m : ℕ} (Y : Fin m → Fin I.n → I.E) (s : Set (Fin m))
    (u : Fin I.n → Fv I.F p ⊗[I.F] I.E) (hu : u ∈ spanR (F := I.F) (Fv I.F p) Y s) :
    ∃ U : VA I, U ∈ Submodule.span (I.E ⊗[I.F] Af I.F) ((fun a => incl I (Y a)) '' s) ∧
      PI.FinKW.vecV I p U = u ∧ ∀ v, v ≠ p → PI.FinKW.vecV I v U = 0 := by
  induction hu using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨a, ha, rfl⟩ := hx
    refine ⟨liftS I p 1 • incl I (Y a), Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, ha, rfl⟩), ?_, ?_⟩
    · rw [vecV_smul, psiV_liftS_same, one_smul, vecV_incl]
    · intro v hv
      rw [vecV_smul, psiV_liftS_ne I p v hv, zero_smul]
  | zero => exact ⟨0, Submodule.zero_mem _, vecV_zero I p, fun v _ => vecV_zero I v⟩
  | add x y _ _ hx hy =>
    obtain ⟨U, hU, h1, h2⟩ := hx
    obtain ⟨U', hU', h1', h2'⟩ := hy
    refine ⟨U + U', Submodule.add_mem _ hU hU', ?_, fun v hv => ?_⟩
    · rw [vecV_add, h1, h1']
    · rw [vecV_add, h2 v hv, h2' v hv, add_zero]
  | smul c x _ hx =>
    obtain ⟨U, hU, h1, h2⟩ := hx
    refine ⟨liftS I p c • U, Submodule.smul_mem _ _ hU, ?_, fun v hv => ?_⟩
    · rw [vecV_smul, psiV_liftS_same, h1]
    · rw [vecV_smul, h2 v hv, smul_zero]

theorem mulVec_mem_span (p : HeightOneSpectrum (𝓞 I.F)) (M : Matrix (Fin I.n) (Fin I.n) (I.E ⊗[I.F] Af I.F))
    (hM : ∀ v, v ≠ p → M.map (PI.FinKW.psiV I v) = 0) {m : ℕ} (Y : Fin m → Fin I.n → I.E) (s : Set (Fin m))
    (w : VA I)
    (h : (M.map (PI.FinKW.psiV I p)) *ᵥ PI.FinKW.vecV I p w ∈ spanR (F := I.F) (Fv I.F p) Y s) :
    M *ᵥ w ∈ Submodule.span (I.E ⊗[I.F] Af I.F) ((fun a => incl I (Y a)) '' s) := by
  obtain ⟨U, hU, h1, h2⟩ := span_lift I p Y s _ h
  have e : M *ᵥ w = U := by
    funext i
    rw [← sub_eq_zero]
    apply PI.FinKW.local_vector_injective I
    intro v
    rw [map_sub]
    have e1 : PI.FinKW.psiV I v ((M *ᵥ w) i) = ((M.map (PI.FinKW.psiV I v)) *ᵥ PI.FinKW.vecV I v w) i :=
      congrFun (PI.MassDataKppVolLemmas.LocIdxLift_vecV_mulVec I v M w) i
    have e2 : PI.FinKW.psiV I v (U i) = PI.FinKW.vecV I v U i := rfl
    rw [e1, e2]
    by_cases hv : v = p
    · subst hv
      rw [h1, sub_self]
    · rw [hM v hv, h2 v hv, Matrix.zero_mulVec]
      simp
  rw [e]
  exact hU

theorem psiV_sigR (v : HeightOneSpectrum (𝓞 I.F)) (t : I.E ⊗[I.F] Af I.F) :
    PI.FinKW.psiV I v (Formalism.UG.sigR I.cm.sig (Af I.F) t) = sigR (Fv I.F v) I.cm.sig (PI.FinKW.psiV I v t) := by
  induction t using TensorProduct.induction_on with
  | zero => simp
  | tmul a b => simp [PI.FinKW.psiV, Formalism.UG.sigR, sigR]
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

theorem psiV_inclE (v : HeightOneSpectrum (𝓞 I.F)) (a : I.E) :
    PI.FinKW.psiV I v (Formalism.UG.inclE (F := I.F) (Af I.F) a) = inclR (Fv I.F v) a := by
  simp [PI.FinKW.psiV, Formalism.UG.inclE, inclR]

theorem psiV_hA (v : HeightOneSpectrum (𝓞 I.F)) (x y : VA I) :
    PI.FinKW.psiV I v (hA I x y) =
      hR (Fv I.F v) I.cm.sig I.J (PI.FinKW.vecV I v x) (PI.FinKW.vecV I v y) := by

  simp [hA, hR, Formalism.UG.hform, JR, PI.FinKW.vecV, map_sum, map_mul, psiV_sigR, psiV_inclE, Matrix.map_apply]

end Lift

theorem unipotent_integral_in_level : UnipotentIntegralInLevel := by
  intro D X hb hK hT hL w p n hn hnK
  obtain ⟨hn1, hn2⟩ := hn
  obtain ⟨y, hy⟩ := PI.MassDataKppVolLemmas.Bridge_tf_surjective X.B.I hb
    (PI.MassDataKppVolLemmas.liftHA X.B.I p.1 n)
  have hcomp : ∀ v, v ≠ p.1 → PI.MassDataKppVolLemmas.piV X.B.I v (PI.MassDataKppVolLemmas.tf X.B.I hb y) = 1 :=
    fun v h => by rw [hy, PI.MassDataKppVolLemmas.LocIdxLift_piV_ne X.B.I p.1 v h]
  have hsame : PI.MassDataKppVolLemmas.piV X.B.I p.1 (PI.MassDataKppVolLemmas.tf X.B.I hb y) = n := by
    rw [hy, PI.MassDataKppVolLemmas.LocIdxLift_piV_same]

  have hyK : y ∈ X.B.I.Kset := by
    rw [← PI.MassDataKppVolLemmas.Bridge_mem_Kf_iff X.B.I hb, Kf, Subgroup.mem_iInf]
    intro v
    show HA.mat (Fv X.B.I.F v) X.B.I.cm.sig X.B.I.J
      (PI.MassDataKppVolLemmas.piV X.B.I v (PI.MassDataKppVolLemmas.tf X.B.I hb y)) ∈
        Kloc v (X.B.I.L : Set (Fin X.B.I.n → X.B.I.E))
    by_cases h : v = p.1
    · subst h; rw [hsame]; exact hnK
    · rw [hcomp v h]; exact (Kloc v _).one_mem

  have hmat : ∀ v, (X.B.I.fmat y - 1).map (PI.FinKW.psiV X.B.I v) =
      ((HA.mat (Fv X.B.I.F v) X.B.I.cm.sig X.B.I.J
        (PI.MassDataKppVolLemmas.piV X.B.I v (PI.MassDataKppVolLemmas.tf X.B.I hb y)) :
          GL (Fin X.B.I.n) (Fv X.B.I.F v ⊗[X.B.I.F] X.B.I.E)) -
        1 : Matrix (Fin X.B.I.n) (Fin X.B.I.n) (Fv X.B.I.F v ⊗[X.B.I.F] X.B.I.E)) := by
    intro v
    rw [Matrix.map_sub _ (map_sub _), PI.MassDataKppVolLemmas.LocIdxLift_psiV_fmat X.B.I hb,
      Matrix.map_one _ (map_zero _) (map_one _)]
  have hM0 : ∀ v, v ≠ p.1 → (X.B.I.fmat y - 1).map (PI.FinKW.psiV X.B.I v) = 0 := by
    intro v hv
    rw [hmat v, hcomp v hv]
    exact sub_self _
  have hMp : ∀ x : Fin X.B.I.n → Fv X.B.I.F p.1 ⊗[X.B.I.F] X.B.I.E,
      ((X.B.I.fmat y - 1).map (PI.FinKW.psiV X.B.I p.1)) *ᵥ x = lin (Fv X.B.I.F p.1) X.B.I.cm.sig X.B.I.J n x - x := by
    intro x
    rw [hmat p.1, hsame, Matrix.sub_mulVec, Matrix.one_mulVec]
    rfl
  have hstd := FrameW.frameOf_isStd X w

  have hyN : y ∈ X.NfinU w := by
    refine ⟨fun a => ?_, ?_, fun y' hy' => ?_⟩
    · refine mulVec_mem_span X.B.I p.1 _ hM0 X.eR _ _ ?_
      rw [hMp, vecV_incl]
      exact hn1 a
    · rw [← Set.image_univ]
      refine mulVec_mem_span X.B.I p.1 _ hM0 X.eR _ _ ?_
      rw [hMp, vecV_incl]
      refine hn2 _ (fun a => ?_)
      rw [hermForm_rational_vectors]
      have h0 : hE X.B.I.cm.sig X.B.I.J ((frameOf X w).e a) (X.zR w) = 0 := hstd.2.2.2.1 a
      rw [h0, map_zero]
    · rw [← Set.image_univ]
      refine mulVec_mem_span X.B.I p.1 _ hM0 X.eR _ _ ?_
      rw [hMp]
      refine hn2 _ (fun a => ?_)
      show hR (Fv X.B.I.F p.1) X.B.I.cm.sig X.B.I.J (ratV (F := X.B.I.F) (Fv X.B.I.F p.1) (X.eR a))
        (PI.FinKW.vecV X.B.I p.1 y') = 0
      rw [← vecV_incl, ← psiV_hA, hy' a, map_zero]
  have hN := MassDataMassesW.NLev.nLevel_holds X w y hyN hyK
  refine ⟨finHA X hb y, ⟨finHA X hb ((X.xu w)⁻¹ * y * X.xu w), ⟨_, hN, rfl⟩, ?_⟩, hsame⟩
  show finHA X hb (X.xu w) * finHA X hb ((X.xu w)⁻¹ * y * X.xu w) * (finHA X hb (X.xu w))⁻¹ = finHA X hb y
  rw [finHA_mul, finHA_mul, finHA_inv]
  group

theorem locLevi_holds : LocLevi := locLevi_of_NO unipotent_integral_in_level

end MassDataLevelSSteps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.UnipotentIntegralInLevel =====
