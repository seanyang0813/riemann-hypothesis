module

public import GroundTheory.AutomorphicForms.StrongApproximationSLDense
public import GroundTheory.GlobalFields.IdeleGroups.ClassGroup
public import GroundTheory.GlobalFields.TateThesis.Conductor
public import GroundTheory.GlobalFields.TateThesis.ConductorIdeal
public import GroundTheory.GlobalFields.IdeleGroups.Rational
public import GroundTheory.AutomorphicForms.AutomorphicFormSpaces.Archimedean
public import Mathlib.NumberTheory.ModularForms.CongruenceSubgroups
import GroundTheory.GlobalFields.Adele.Discrete

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.AutomorphicForms.StrongApproximationSLDoubleCoset, GroundTheory.AutomorphicForms.GL2Classical.ExistsIntOfMemIntegralFiniteAdeles, GroundTheory.AutomorphicForms.GL2Classical.Adelic

-- ===== clump member: GroundTheory.AutomorphicForms.StrongApproximationSLDoubleCoset =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.StrongApproximationSLDoubleCoset", "h": "module\n\npublic import GroundTheory.AutomorphicForms.StrongApproximationSLDense\npublic import GroundTheory.GlobalFields.IdeleGroups.ClassGroup\npublic import GroundTheory.GlobalFields.TateThesis.Conductor\npublic import GroundTheory.GlobalFields.TateThesis.ConductorIdeal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Topology Filter Set Matrix
open scoped RestrictedProduct

namespace GroundTheory.Automorphic

noncomputable section

namespace AdelicGLn

variable (K : Type*) [Field K] [NumberField K] (n : ℕ)

def detClassSubgroup (U : Subgroup (FiniteAdelicGL K n)) :
    Subgroup (FiniteAdeleRing (𝓞 K) K)ˣ :=
  (FiniteAdeleRing.unitEmbedding (𝓞 K) K).range ⊔
    U.map (Matrix.GeneralLinearGroup.det : FiniteAdelicGL K n →* (FiniteAdeleRing (𝓞 K) K)ˣ)

variable {K n}

theorem det_diagonalGL {R : Type*} [CommRing R] (d : Fin n → Rˣ) :
    Matrix.GeneralLinearGroup.det (diagonalGL d) = ∏ k, d k := by
  refine Units.ext ?_
  rw [Matrix.GeneralLinearGroup.val_det_apply, coe_diagonalGL, det_diagonal, Units.coe_prod]

theorem det_diagonalGL_mulSingle {R : Type*} [CommRing R] (hn : 0 < n) (a : Rˣ) :
    Matrix.GeneralLinearGroup.det (diagonalGL (Pi.mulSingle (⟨0, hn⟩ : Fin n) a)) = a := by
  rw [det_diagonalGL, Finset.prod_pi_mulSingle', if_pos (Finset.mem_univ _)]

theorem exists_eq_finiteDiagonal_mul_mul (hn : 0 < n) {U : Subgroup (FiniteAdelicGL K n)}
    (hU : IsOpen (U : Set (FiniteAdelicGL K n))) {g g' : FiniteAdelicGL K n}
    (h : (Matrix.GeneralLinearGroup.det g)⁻¹ * Matrix.GeneralLinearGroup.det g' ∈
      detClassSubgroup K n U) :
    ∃ γ : GL (Fin n) K, ∃ u ∈ U, g' = finiteDiagonal K n γ * g * u := by
  obtain ⟨_, ⟨κ, rfl⟩, _, ⟨u₀, hu₀, rfl⟩, hκ⟩ := Subgroup.mem_sup.1 h
  set δ : GL (Fin n) K := diagonalGL (Pi.mulSingle (⟨0, hn⟩ : Fin n) κ)
  set g₁ : FiniteAdelicGL K n := finiteDiagonal K n δ * g * u₀
  have hg₁ : Matrix.GeneralLinearGroup.det g₁ = Matrix.GeneralLinearGroup.det g' := by
    simp only [g₁, map_mul, det_finiteDiagonal, δ, det_diagonalGL_mulSingle hn]
    rw [mul_comm _ (Matrix.GeneralLinearGroup.det g), mul_assoc, hκ, mul_inv_cancel_left]
  set x : FiniteAdelicGL K n := g' * g₁⁻¹
  have hx : Matrix.GeneralLinearGroup.det x = 1 := by
    rw [map_mul, map_inv, ← hg₁, mul_inv_cancel]
  have hcont : Continuous fun h : FiniteAdelicGL K n => g₁⁻¹ * h⁻¹ * x * g₁ :=
    ((continuous_const.mul continuous_inv).mul continuous_const).mul continuous_const
  have hx1 : g₁⁻¹ * x⁻¹ * x * g₁ = 1 := by group
  have hO : (fun h : FiniteAdelicGL K n => g₁⁻¹ * h⁻¹ * x * g₁) ⁻¹' (U : Set (FiniteAdelicGL K n)) ∈
      𝓝 x :=
    hcont.continuousAt.preimage_mem_nhds (hU.mem_nhds (by rw [hx1]; exact U.one_mem))
  obtain ⟨γ, -, hγ⟩ := exists_finiteDiagonal_mem_nhds K n hx hO
  refine ⟨γ * δ, u₀ * (g₁⁻¹ * (finiteDiagonal K n γ)⁻¹ * x * g₁), mul_mem hu₀ hγ, ?_⟩
  simp only [x, g₁, map_mul]
  group

open GroundTheory.Global GroundTheory.Global.IdeleGroup

variable (K)

theorem toFinite_diagonal (a : Kˣ) :
    toFinite K (IdeleGroup.diagonal K a) = FiniteAdeleRing.unitEmbedding (𝓞 K) K a :=
  Units.ext rfl

theorem comap_toFinite_sup (L : Subgroup (FiniteAdeleRing (𝓞 K) K)ˣ) :
    ((FiniteAdeleRing.unitEmbedding (𝓞 K) K).range ⊔ L).comap (toFinite K) =
      (IdeleGroup.diagonal K).range ⊔ L.comap (toFinite K) := by
  apply le_antisymm
  · intro x hx
    obtain ⟨_, ⟨a, rfl⟩, l, hl, hal⟩ := Subgroup.mem_sup.1 (Subgroup.mem_comap.1 hx)
    refine Subgroup.mem_sup.2 ⟨IdeleGroup.diagonal K a, ⟨a, rfl⟩, (IdeleGroup.diagonal K a)⁻¹ * x,
      ?_, mul_inv_cancel_left _ _⟩
    rw [Subgroup.mem_comap, map_mul, map_inv, toFinite_diagonal, ← hal, inv_mul_cancel_left]
    exact hl
  · refine sup_le ?_ (Subgroup.comap_mono le_sup_right)
    rintro _ ⟨a, rfl⟩
    rw [Subgroup.mem_comap, toFinite_diagonal]
    exact Subgroup.mem_sup_left ⟨a, rfl⟩

def toFiniteQuotient (L : Subgroup (FiniteAdeleRing (𝓞 K) K)ˣ) :
    IdeleGroup K →* (FiniteAdeleRing (𝓞 K) K)ˣ ⧸ ((FiniteAdeleRing.unitEmbedding (𝓞 K) K).range ⊔ L) :=
  (QuotientGroup.mk' _).comp (toFinite K)

theorem toFiniteQuotient_surjective (L : Subgroup (FiniteAdeleRing (𝓞 K) K)ˣ) :
    Function.Surjective (toFiniteQuotient K L) :=
  (QuotientGroup.mk'_surjective _).comp fun x => ⟨ofFinite x, toFinite_ofFinite x⟩

theorem ker_toFiniteQuotient (L : Subgroup (FiniteAdeleRing (𝓞 K) K)ˣ) :
    (toFiniteQuotient K L).ker = (IdeleGroup.diagonal K).range ⊔ L.comap (toFinite K) := by
  rw [toFiniteQuotient, ← MonoidHom.comap_ker, QuotientGroup.ker_mk', comap_toFinite_sup]

def finiteQuotientEquiv (L : Subgroup (FiniteAdeleRing (𝓞 K) K)ˣ) :
    (FiniteAdeleRing (𝓞 K) K)ˣ ⧸ ((FiniteAdeleRing.unitEmbedding (𝓞 K) K).range ⊔ L) ≃*
      IdeleGroup K ⧸ ((IdeleGroup.diagonal K).range ⊔ L.comap (toFinite K)) :=
  ((QuotientGroup.quotientMulEquivOfEq (ker_toFiniteQuotient K L).symm).trans
    (QuotientGroup.quotientKerEquivOfSurjective _ (toFiniteQuotient_surjective K L))).symm

def finiteQuotientEquivClassGroup :
    (FiniteAdeleRing (𝓞 K) K)ˣ ⧸ ((FiniteAdeleRing.unitEmbedding (𝓞 K) K).range ⊔ finiteLevel 0) ≃*
      ClassGroup (𝓞 K) :=
  (finiteQuotientEquiv K (finiteLevel 0)).trans
    ((QuotientGroup.quotientMulEquivOfEq (by
      congr 1
      ext x
      exact (mem_standardOpenSubgroup_iff_toFinite_mem x).symm)).trans
      IdeleGroup.quotientEquivClassGroup)

variable {K}

theorem det_mem_of_forall_mem {R : Type*} [CommRing R] (T : Subring R) {M : Matrix (Fin n) (Fin n) R}
    (hM : ∀ a b, M a b ∈ T) : M.det ∈ T := by
  have : M = T.subtype.mapMatrix (Matrix.of fun a b => (⟨M a b, hM a b⟩ : T)) := by
    ext a b
    rfl
  rw [this, ← RingHom.map_det]
  exact SetLike.coe_mem _

end AdelicGLn

end

end GroundTheory.Automorphic
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.StrongApproximationSLDoubleCoset =====

-- ===== clump member: GroundTheory.AutomorphicForms.GL2Classical.ExistsIntOfMemIntegralFiniteAdeles =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.GL2Classical.ExistsIntOfMemIntegralFiniteAdeles", "h": "module\n\npublic import GroundTheory.AutomorphicForms.StrongApproximationSLDoubleCoset\nimport GroundTheory.GlobalFields.Adele.Discrete\npublic import GroundTheory.GlobalFields.IdeleGroups.Rational\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Topology Filter Set Matrix
open GroundTheory.Global GroundTheory.Global.IdeleGroup

namespace GroundTheory.Automorphic

noncomputable section

namespace GL2Classical

open AdelicGLn

set_option linter.unusedSectionVars false

local notation "𝔸f" => FiniteAdeleRing (𝓞 ℚ) ℚ

theorem exists_int_of_mem_integralFiniteAdeles {x : ℚ}
    (hx : algebraMap ℚ 𝔸f x ∈ integralFiniteAdeles (𝓞 ℚ) ℚ) : ∃ m : ℤ, x = m := by
  obtain ⟨z, hz⟩ := exists_eq_of_forall_mem_adicCompletionIntegers ℚ x fun v => hx v
  refine ⟨Rat.ringOfIntegersEquiv z, ?_⟩
  rw [Rat.ringOfIntegersEquiv_apply_coe, ← hz]

theorem intCast_mem_integralFiniteAdeles (m : ℤ) :
    (m : 𝔸f) ∈ integralFiniteAdeles (𝓞 ℚ) ℚ :=
  intCast_mem _ m

def levelIdeal (N : ℕ) : Set 𝔸f :=
  {x | ∃ t ∈ integralFiniteAdeles (𝓞 ℚ) ℚ, x = (N : 𝔸f) * t}

def levelUnit (N : ℕ) [NeZero N] : 𝔸fˣ :=
  FiniteAdeleRing.unitEmbedding (𝓞 ℚ) ℚ (Units.mk0 (N : ℚ) (Nat.cast_ne_zero.2 (NeZero.ne N)))

theorem coe_levelUnit (N : ℕ) [NeZero N] : (levelUnit N : 𝔸f) = N := by
  rw [levelUnit, FiniteAdeleRing.unitEmbedding_apply, Units.val_mk0, map_natCast]

theorem mem_levelIdeal_iff (N : ℕ) [NeZero N] (x : 𝔸f) :
    x ∈ levelIdeal N ↔ ((levelUnit N)⁻¹ : 𝔸fˣ) * x ∈ integralFiniteAdeles (𝓞 ℚ) ℚ := by
  constructor
  · rintro ⟨t, ht, rfl⟩
    rwa [← coe_levelUnit N, ← mul_assoc, Units.inv_mul, one_mul]
  · intro h
    refine ⟨_, h, ?_⟩
    rw [← coe_levelUnit N, ← mul_assoc, Units.mul_inv, one_mul]

theorem isOpen_levelIdeal (N : ℕ) [NeZero N] : IsOpen (levelIdeal N) := by
  have : levelIdeal N = (fun x : 𝔸f => ((levelUnit N)⁻¹ : 𝔸fˣ) * x) ⁻¹'
      (integralFiniteAdeles (𝓞 ℚ) ℚ : Set 𝔸f) := by
    ext x
    exact mem_levelIdeal_iff N x
  rw [this]
  exact isOpen_integralFiniteAdeles.preimage (continuous_const.mul continuous_id)

theorem zero_mem_levelIdeal (N : ℕ) : (0 : 𝔸f) ∈ levelIdeal N :=
  ⟨0, zero_mem _, by rw [mul_zero]⟩

theorem mul_add_mul_mem_levelIdeal {N : ℕ} {a b x y : 𝔸f}
    (ha : a ∈ integralFiniteAdeles (𝓞 ℚ) ℚ) (hb : b ∈ integralFiniteAdeles (𝓞 ℚ) ℚ)
    (hx : x ∈ levelIdeal N) (hy : y ∈ levelIdeal N) : a * x + b * y ∈ levelIdeal N := by
  obtain ⟨s, hs, rfl⟩ := hx
  obtain ⟨t, ht, rfl⟩ := hy
  exact ⟨a * s + b * t, add_mem (mul_mem ha hs) (mul_mem hb ht), by ring⟩

theorem mul_mem_levelIdeal {N : ℕ} {a x : 𝔸f}
    (ha : a ∈ integralFiniteAdeles (𝓞 ℚ) ℚ) (hx : x ∈ levelIdeal N) : a * x ∈ levelIdeal N := by
  simpa using mul_add_mul_mem_levelIdeal ha (zero_mem _) hx (zero_mem_levelIdeal N)

theorem exists_int_of_mem_levelIdeal (N : ℕ) [NeZero N] {x : ℚ}
    (hx : algebraMap ℚ 𝔸f x ∈ levelIdeal N) : ∃ m : ℤ, x = N * m := by
  rw [mem_levelIdeal_iff] at hx
  have hN : (N : ℚ) ≠ 0 := Nat.cast_ne_zero.2 (NeZero.ne N)
  have : (((levelUnit N)⁻¹ : 𝔸fˣ) : 𝔸f) * algebraMap ℚ 𝔸f x = algebraMap ℚ 𝔸f (x / N) := by
    rw [levelUnit, ← map_inv, FiniteAdeleRing.unitEmbedding_apply, ← map_mul, Units.val_inv_eq_inv_val,
      Units.val_mk0, div_eq_mul_inv, mul_comm]
  rw [this] at hx
  obtain ⟨m, hm⟩ := exists_int_of_mem_integralFiniteAdeles hx
  refine ⟨m, ?_⟩
  rw [← hm]
  field_simp

variable (N : ℕ) [NeZero N]

def Gamma0Level : Subgroup (FiniteAdelicGL ℚ 2) where
  carrier := {g | g ∈ integralFiniteGL ℚ 2 ∧ (g : Matrix (Fin 2) (Fin 2) 𝔸f) 1 0 ∈ levelIdeal N}
  one_mem' := ⟨one_mem _, by simpa using zero_mem_levelIdeal N⟩
  mul_mem' {g h} hg hh := by
    refine ⟨mul_mem hg.1 hh.1, ?_⟩
    have hgi := ((mem_integralFiniteGL_iff ℚ 2).1 hg.1).1
    have hhi := ((mem_integralFiniteGL_iff ℚ 2).1 hh.1).1
    rw [Units.val_mul, Matrix.mul_apply, Fin.sum_univ_two, mul_comm]
    rw [show (g : Matrix (Fin 2) (Fin 2) 𝔸f) 1 1 * (h : Matrix (Fin 2) (Fin 2) 𝔸f) 1 0 =
        (g : Matrix (Fin 2) (Fin 2) 𝔸f) 1 1 * (h : Matrix (Fin 2) (Fin 2) 𝔸f) 1 0 from rfl]
    exact mul_add_mul_mem_levelIdeal (hhi 0 0) (hgi 1 1) hg.2 hh.2
  inv_mem' {g} hg := by
    refine ⟨inv_mem hg.1, ?_⟩
    have hdet : ((Matrix.GeneralLinearGroup.det g)⁻¹ : 𝔸fˣ).val ∈ integralFiniteAdeles (𝓞 ℚ) ℚ := by
      have h2 := ((mem_integralFiniteGL_iff ℚ 2).1 hg.1).2
      have := det_mem_of_forall_mem (integralFiniteAdeles (𝓞 ℚ) ℚ) h2
      rwa [← Matrix.GeneralLinearGroup.val_det_apply, map_inv] at this
    have hinv : ((g⁻¹ : FiniteAdelicGL ℚ 2) : Matrix (Fin 2) (Fin 2) 𝔸f) 1 0 =
        ((Matrix.GeneralLinearGroup.det g)⁻¹ : 𝔸fˣ).val *
          (-(g : Matrix (Fin 2) (Fin 2) 𝔸f) 1 0) := by
      rw [Matrix.coe_units_inv, Matrix.inv_def, Matrix.adjugate_fin_two,
        ← Matrix.GeneralLinearGroup.val_det_apply, Ring.inverse_unit]
      simp
    rw [hinv]
    refine mul_mem_levelIdeal hdet ?_
    obtain ⟨t, ht, h⟩ := hg.2
    exact ⟨-t, neg_mem ht, by rw [h, mul_neg]⟩

theorem mem_Gamma0Level {g : FiniteAdelicGL ℚ 2} :
    g ∈ Gamma0Level N ↔
      g ∈ integralFiniteGL ℚ 2 ∧ (g : Matrix (Fin 2) (Fin 2) 𝔸f) 1 0 ∈ levelIdeal N :=
  Iff.rfl

theorem Gamma0Level_le_integralFiniteGL : Gamma0Level N ≤ integralFiniteGL ℚ 2 := fun _ h => h.1

theorem isOpen_Gamma0Level : IsOpen (Gamma0Level N : Set (FiniteAdelicGL ℚ 2)) := by
  have : (Gamma0Level N : Set (FiniteAdelicGL ℚ 2)) = (integralFiniteGL ℚ 2 : Set _) ∩
      (fun g : FiniteAdelicGL ℚ 2 => (g : Matrix (Fin 2) (Fin 2) 𝔸f) 1 0) ⁻¹' levelIdeal N := rfl
  rw [this]
  exact (isOpen_integralFiniteGL ℚ 2).inter ((isOpen_levelIdeal N).preimage
    ((Units.continuous_val (M := Matrix (Fin 2) (Fin 2) 𝔸f)).matrix_elem 1 0))

theorem diagonalGL_mem_Gamma0Level {a : 𝔸fˣ} (ha : a ∈ finiteLevel 0) :
    diagonalGL (Pi.mulSingle (0 : Fin 2) a) ∈ Gamma0Level N := by
  rw [mem_finiteLevel] at ha
  have hv : ∀ v, (a : 𝔸f) v ∈ v.adicCompletionIntegers ℚ ∧
      ((a⁻¹ : 𝔸fˣ) : 𝔸f) v ∈ v.adicCompletionIntegers ℚ := by
    intro v
    have := ha v
    rw [Pi.zero_apply, unitsLevel_zero, Submonoid.mem_units_iff] at this
    refine ⟨this.1, ?_⟩
    have h := this.2
    rwa [← map_inv] at h
  have key : ∀ b : 𝔸fˣ, (∀ v, (b : 𝔸f) v ∈ v.adicCompletionIntegers ℚ) →
      ∀ i j, ((diagonalGL (Pi.mulSingle (0 : Fin 2) b) : FiniteAdelicGL ℚ 2) :
        Matrix (Fin 2) (Fin 2) 𝔸f) i j ∈ integralFiniteAdeles (𝓞 ℚ) ℚ := by
    intro b hb i j
    rw [coe_diagonalGL, Matrix.diagonal_apply]
    split_ifs with hij
    · rw [Pi.mulSingle_apply]
      split_ifs
      · exact hb
      · exact one_mem _
    · exact zero_mem _
  refine ⟨?_, ?_⟩
  · rw [mem_integralFiniteGL_iff, ← map_inv]
    refine ⟨key a fun v => (hv v).1, ?_⟩
    rw [← Pi.mulSingle_inv]
    exact key a⁻¹ fun v => (hv v).2
  · rw [coe_diagonalGL, Matrix.diagonal_apply_ne _ (by decide)]
    exact zero_mem_levelIdeal N

theorem finiteLevel_le_map_det :
    finiteLevel 0 ≤ (Gamma0Level N).map
      (Matrix.GeneralLinearGroup.det : FiniteAdelicGL ℚ 2 →* 𝔸fˣ) := fun a ha =>
  ⟨_, diagonalGL_mem_Gamma0Level N ha, det_diagonalGL_mulSingle (n := 2) two_pos a⟩

theorem unitEmbedding_range_sup_finiteLevel :
    (FiniteAdeleRing.unitEmbedding (𝓞 ℚ) ℚ).range ⊔ finiteLevel 0 = ⊤ := by
  rw [eq_top_iff]
  intro x _
  have := RationalIdeles.subsingleton_classGroup
  have h := (finiteQuotientEquivClassGroup ℚ).injective
    (Subsingleton.elim ((finiteQuotientEquivClassGroup ℚ) (QuotientGroup.mk x))
      ((finiteQuotientEquivClassGroup ℚ) 1))
  rwa [QuotientGroup.eq_one_iff] at h

theorem detClassSubgroup_Gamma0Level : detClassSubgroup ℚ 2 (Gamma0Level N) = ⊤ := by
  rw [eq_top_iff, ← unitEmbedding_range_sup_finiteLevel]
  exact sup_le le_sup_left ((finiteLevel_le_map_det N).trans le_sup_right)

theorem exists_eq_finiteDiagonal_mul (g : FiniteAdelicGL ℚ 2) :
    ∃ γ : GL (Fin 2) ℚ, ∃ u ∈ Gamma0Level N, g = finiteDiagonal ℚ 2 γ * u := by
  obtain ⟨γ, u, hu, h⟩ := exists_eq_finiteDiagonal_mul_mul (K := ℚ) (n := 2) two_pos
    (isOpen_Gamma0Level N) (g := 1) (g' := g)
    (by rw [detClassSubgroup_Gamma0Level]; exact Subgroup.mem_top _)
  exact ⟨γ, u, hu, by rw [h, mul_one]⟩

theorem exists_int_entries {γ : GL (Fin 2) ℚ} (h : finiteDiagonal ℚ 2 γ ∈ Gamma0Level N) :
    ∃ A : Matrix (Fin 2) (Fin 2) ℤ, ∀ i j, (A i j : ℚ) = γ i j := by
  have hi := ((mem_integralFiniteGL_iff ℚ 2).1 h.1).1
  choose A hA using fun i j => exists_int_of_mem_integralFiniteAdeles (hi i j)
  exact ⟨Matrix.of A, fun i j => (hA i j).symm⟩

theorem exists_int_of_finiteDiagonal_mem {γ : GL (Fin 2) ℚ}
    (h : finiteDiagonal ℚ 2 γ ∈ Gamma0Level N) :
    ∃ A : Matrix (Fin 2) (Fin 2) ℤ, (∀ i j, (A i j : ℚ) = γ i j) ∧ (N : ℤ) ∣ A 1 0 ∧
      (A.det = 1 ∨ A.det = -1) := by
  obtain ⟨A, hA⟩ := exists_int_entries N h
  obtain ⟨B, hB⟩ := exists_int_entries N (γ := γ⁻¹) (by rw [map_inv]; exact inv_mem h)
  refine ⟨A, hA, ?_, ?_⟩
  · obtain ⟨m, hm⟩ := exists_int_of_mem_levelIdeal N (x := γ 1 0) h.2
    refine ⟨m, ?_⟩
    have := hA 1 0
    rw [hm] at this
    exact_mod_cast this
  · have hAB : A * B = 1 := by
      have hmap : (Int.castRingHom ℚ).mapMatrix (A * B) = (Int.castRingHom ℚ).mapMatrix 1 := by
        rw [map_mul, map_one]
        have e1 : (Int.castRingHom ℚ).mapMatrix A = (γ : Matrix (Fin 2) (Fin 2) ℚ) := by
          ext i j; exact hA i j
        have e2 : (Int.castRingHom ℚ).mapMatrix B = ((γ⁻¹ : GL (Fin 2) ℚ) : Matrix (Fin 2) (Fin 2) ℚ) := by
          ext i j; exact hB i j
        rw [e1, e2, Units.mul_inv]
      exact Matrix.ext fun i j => Int.cast_injective (α := ℚ)
        (show (((A * B) i j : ℤ) : ℚ) = (((1 : Matrix (Fin 2) (Fin 2) ℤ) i j : ℤ) : ℚ) from
          congrFun (congrFun hmap i) j)
    have hdet : A.det * B.det = 1 := by rw [← Matrix.det_mul, hAB, Matrix.det_one]
    exact Int.eq_one_or_neg_one_of_mul_eq_one hdet

end GL2Classical

end

end GroundTheory.Automorphic
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.GL2Classical.ExistsIntOfMemIntegralFiniteAdeles =====

-- ===== clump member: GroundTheory.AutomorphicForms.GL2Classical.Adelic =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.GL2Classical.Adelic", "h": "module\n\npublic import GroundTheory.AutomorphicForms.GL2Classical.ExistsIntOfMemIntegralFiniteAdeles\npublic import GroundTheory.AutomorphicForms.AutomorphicFormSpaces.Archimedean\npublic import GroundTheory.GlobalFields.IdeleGroups.Rational\npublic import Mathlib.NumberTheory.ModularForms.CongruenceSubgroups\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix CongruenceSubgroup
open GroundTheory.Global
open scoped MatrixGroups

namespace GroundTheory.Automorphic

noncomputable section

namespace GL2Classical

open AdelicGLn AutomorphicForm

set_option linter.unusedSectionVars false

def toReal : GL (Fin 2) ℚ →* GL (Fin 2) ℝ :=
  Matrix.GeneralLinearGroup.map (Rat.castHom ℝ)

@[simp]
theorem toReal_apply (γ : GL (Fin 2) ℚ) (i j : Fin 2) :
    (toReal γ : Matrix (Fin 2) (Fin 2) ℝ) i j = ((γ : Matrix (Fin 2) (Fin 2) ℚ) i j : ℝ) :=
  rfl

theorem det_toReal (γ : GL (Fin 2) ℚ) : (toReal γ).det.val = ((γ.det.val : ℚ) : ℝ) := by
  rw [Matrix.GeneralLinearGroup.val_det_apply, Matrix.GeneralLinearGroup.val_det_apply]
  exact ((Rat.castHom ℝ).map_det (γ : Matrix (Fin 2) (Fin 2) ℚ)).symm

def realInf : GL (Fin 2) ℝ →* InfiniteAdelicGL ℚ 2 :=
  Matrix.GeneralLinearGroup.map RationalIdeles.realEquiv.symm.toRingHom

def realEmb : GL (Fin 2) ℝ →* AdelicGL ℚ 2 :=
  (prodEquiv ℚ 2).symm.toMonoidHom.comp ((MonoidHom.inl _ _).comp realInf)

theorem prodEquiv_realEmb (h : GL (Fin 2) ℝ) : prodEquiv ℚ 2 (realEmb h) = (realInf h, 1) :=
  (prodEquiv ℚ 2).apply_symm_apply _

theorem realInf_injective : Function.Injective realInf := fun x y hxy => by
  refine Units.ext (Matrix.ext fun a b => ?_)
  have := congrArg (fun g : InfiniteAdelicGL ℚ 2 =>
    (g : Matrix (Fin 2) (Fin 2) (InfiniteAdeleRing ℚ)) a b) hxy
  exact RationalIdeles.realEquiv.symm.injective this

theorem realEmb_mul_finEmb_comm (h : GL (Fin 2) ℝ) (y : FiniteAdelicGL ℚ 2) :
    realEmb h * finEmb ℚ 2 y = finEmb ℚ 2 y * realEmb h := by
  apply (prodEquiv ℚ 2).injective
  simp only [map_mul, prodEquiv_realEmb, prodEquiv_finEmb, Prod.mk_mul_mk, mul_one, one_mul]

def realPart (g : AdelicGL ℚ 2) : GL (Fin 2) ℝ :=
  Matrix.GeneralLinearGroup.map RationalIdeles.realEquiv.toRingHom (prodEquiv ℚ 2 g).1

theorem realInf_realPart (g : AdelicGL ℚ 2) : realInf (realPart g) = (prodEquiv ℚ 2 g).1 := by
  refine Units.ext (Matrix.ext fun a b => ?_)
  exact RationalIdeles.realEquiv.symm_apply_apply _

theorem realEmb_realPart_mul_finEmb (g : AdelicGL ℚ 2) :
    realEmb (realPart g) * finEmb ℚ 2 (prodEquiv ℚ 2 g).2 = g := by
  apply (prodEquiv ℚ 2).injective
  rw [map_mul, prodEquiv_realEmb, prodEquiv_finEmb, Prod.mk_mul_mk, mul_one, one_mul,
    realInf_realPart]

theorem diagonal_eq (γ : GL (Fin 2) ℚ) :
    diagonal ℚ 2 γ = realEmb (toReal γ) * finEmb ℚ 2 (finiteDiagonal ℚ 2 γ) := by
  apply (prodEquiv ℚ 2).injective
  rw [map_mul, prodEquiv_realEmb, prodEquiv_finEmb, Prod.mk_mul_mk, mul_one, one_mul]
  refine Prod.ext (Units.ext (Matrix.ext fun a b => ?_)) (Units.ext (Matrix.ext fun a b => ?_))
  · change (algebraMap ℚ (InfiniteAdeleRing ℚ)) (γ a b) =
      RationalIdeles.realEquiv.symm (((γ : Matrix (Fin 2) (Fin 2) ℚ) a b : ℚ) : ℝ)
    exact RingHom.congr_fun (RingHom.ext_rat (algebraMap ℚ (InfiniteAdeleRing ℚ))
      (RationalIdeles.realEquiv.symm.toRingHom.comp (Rat.castHom ℝ))) _
  · rfl

theorem diagonal_mul_realEmb_mul_finEmb (δ γ : GL (Fin 2) ℚ) (h : GL (Fin 2) ℝ)
    (u : FiniteAdelicGL ℚ 2) :
    diagonal ℚ 2 δ * realEmb h * finEmb ℚ 2 u =
      diagonal ℚ 2 (δ * γ) * realEmb ((toReal γ)⁻¹ * h) *
        finEmb ℚ 2 ((finiteDiagonal ℚ 2 γ)⁻¹ * u) := by
  apply (prodEquiv ℚ 2).injective
  simp only [map_mul, map_inv, diagonal_eq, prodEquiv_realEmb, prodEquiv_finEmb, Prod.mk_mul_mk,
    Prod.inv_mk, mul_one, one_mul, inv_one]
  refine Prod.ext ?_ ?_ <;> simp only [] <;> group

variable (N : ℕ) [NeZero N]

theorem finiteDiagonal_mem_Gamma0Level_of_int {γ : GL (Fin 2) ℚ} (A B : Matrix (Fin 2) (Fin 2) ℤ)
    (hA : ∀ i j, (A i j : ℚ) = γ i j) (hB : ∀ i j, (B i j : ℚ) = (γ⁻¹ : GL (Fin 2) ℚ) i j)
    (hN : (N : ℤ) ∣ A 1 0) : finiteDiagonal ℚ 2 γ ∈ Gamma0Level N := by
  refine ⟨(mem_integralFiniteGL_iff ℚ 2).2 ⟨fun i j => ?_, fun i j => ?_⟩, ?_⟩
  · rw [finiteDiagonal_apply, ← hA, map_intCast]
    exact intCast_mem_integralFiniteAdeles _
  · rw [← map_inv, finiteDiagonal_apply, ← hB, map_intCast]
    exact intCast_mem_integralFiniteAdeles _
  · obtain ⟨m, hm⟩ := hN
    refine ⟨(m : FiniteAdeleRing (𝓞 ℚ) ℚ), intCast_mem_integralFiniteAdeles m, ?_⟩
    change algebraMap ℚ (FiniteAdeleRing (𝓞 ℚ) ℚ) (γ 1 0) = _
    rw [← hA, hm, Int.cast_mul, map_mul, map_intCast, map_intCast, Int.cast_natCast]

@[simp]
theorem mapGL_apply (σ : SL(2, ℤ)) (i j : Fin 2) :
    ((Matrix.SpecialLinearGroup.mapGL ℚ σ : GL (Fin 2) ℚ) : Matrix (Fin 2) (Fin 2) ℚ) i j =
      ((σ : Matrix (Fin 2) (Fin 2) ℤ) i j : ℚ) :=
  rfl

theorem toReal_mapGL (σ : SL(2, ℤ)) :
    toReal (Matrix.SpecialLinearGroup.mapGL ℚ σ) = Matrix.SpecialLinearGroup.mapGL ℝ σ := by
  refine Units.ext (Matrix.ext fun i j => ?_)
  change (((σ : Matrix (Fin 2) (Fin 2) ℤ) i j : ℚ) : ℝ) = ((σ : Matrix (Fin 2) (Fin 2) ℤ) i j : ℝ)
  exact Rat.cast_intCast _

theorem exists_mem_Gamma0_of_mem {γ : GL (Fin 2) ℚ} (hγ : finiteDiagonal ℚ 2 γ ∈ Gamma0Level N)
    (hdet : 0 < (γ.det.val : ℚ)) :
    ∃ σ ∈ Gamma0 N, Matrix.SpecialLinearGroup.mapGL ℚ σ = γ := by
  obtain ⟨A, hA, hN, hd⟩ := exists_int_of_finiteDiagonal_mem N hγ
  have hdetA : ((A.det : ℤ) : ℚ) = γ.det.val := by
    rw [Matrix.GeneralLinearGroup.val_det_apply]
    have e : (Int.castRingHom ℚ).mapMatrix A = (γ : Matrix (Fin 2) (Fin 2) ℚ) := by
      ext i j
      exact hA i j
    rw [← e, ← RingHom.map_det]
    rfl
  have h1 : A.det = 1 := by
    rcases hd with h | h
    · exact h
    · rw [h] at hdetA
      rw [← hdetA] at hdet
      norm_num at hdet
  refine ⟨(⟨A, h1⟩ : SL(2, ℤ)), ?_, Units.ext (Matrix.ext fun i j => hA i j)⟩
  exact Gamma0_mem.2 ((ZMod.intCast_zmod_eq_zero_iff_dvd _ N).2 hN)

def epsilon : GL (Fin 2) ℚ :=
  ⟨!![-1, 0; 0, 1], !![-1, 0; 0, 1], by simp [Matrix.one_fin_two],
    by simp [Matrix.one_fin_two]⟩

theorem epsilon_inv : epsilon⁻¹ = epsilon :=
  inv_eq_of_mul_eq_one_right (Units.ext (by simp [epsilon, Matrix.one_fin_two]))

theorem det_toReal_epsilon : (toReal epsilon).det.val = -1 := by
  rw [det_toReal, Matrix.GeneralLinearGroup.val_det_apply]
  simp [epsilon, Matrix.det_fin_two_of]

theorem finiteDiagonal_epsilon_mem : finiteDiagonal ℚ 2 epsilon ∈ Gamma0Level N := by
  refine finiteDiagonal_mem_Gamma0Level_of_int N !![-1, 0; 0, 1] !![-1, 0; 0, 1] ?_ ?_ ?_
  · intro i j
    fin_cases i <;> fin_cases j <;> simp [epsilon]
  · intro i j
    rw [epsilon_inv]
    fin_cases i <;> fin_cases j <;> simp [epsilon]
  · simp

theorem exists_decomposition (g : AdelicGL ℚ 2) :
    ∃ γ : GL (Fin 2) ℚ, ∃ h : GL (Fin 2) ℝ, 0 < h.det.val ∧ ∃ u ∈ Gamma0Level N,
      g = diagonal ℚ 2 γ * realEmb h * finEmb ℚ 2 u := by
  obtain ⟨δ, u, hu, hy⟩ := exists_eq_finiteDiagonal_mul N (prodEquiv ℚ 2 g).2
  have hg : g = diagonal ℚ 2 δ * realEmb ((toReal δ)⁻¹ * realPart g) * finEmb ℚ 2 u := by
    conv_lhs => rw [← realEmb_realPart_mul_finEmb g, hy]
    apply (prodEquiv ℚ 2).injective
    simp only [map_mul, map_inv, diagonal_eq, prodEquiv_realEmb, prodEquiv_finEmb, Prod.mk_mul_mk,
      Prod.inv_mk, inv_one, mul_one, one_mul]
    rw [Prod.mk.injEq]
    exact ⟨by group, by group⟩
  set x := (toReal δ)⁻¹ * realPart g
  by_cases hx : 0 < x.det.val
  · exact ⟨δ, x, hx, u, hu, hg⟩
  · refine ⟨δ * epsilon, (toReal epsilon)⁻¹ * x, ?_, (finiteDiagonal ℚ 2 epsilon)⁻¹ * u,
      mul_mem (inv_mem (finiteDiagonal_epsilon_mem N)) hu,
      hg.trans (diagonal_mul_realEmb_mul_finEmb δ epsilon x u)⟩
    have hne : x.det.val ≠ 0 := x.det.ne_zero
    have hneg : x.det.val < 0 := lt_of_le_of_ne (not_lt.1 hx) hne
    rw [map_mul, Units.val_mul, map_inv, Units.val_inv_eq_inv_val, det_toReal_epsilon]
    linarith

end GL2Classical

end

end GroundTheory.Automorphic
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.GL2Classical.Adelic =====
