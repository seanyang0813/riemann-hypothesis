module

public import Mathlib.LinearAlgebra.BilinearMap
public import Mathlib.LinearAlgebra.Dimension.Finrank
public import Mathlib.LinearAlgebra.FreeModule.Basic
public import Mathlib.LinearAlgebra.Quotient.Defs
public import Mathlib.RingTheory.Finiteness.Defs
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsEqNsmulOfForallDvdOfBijective
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Calculus.FDeriv.Defs
public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.ClopenCondOnto
public import GroundTheory.HeightsAndTheta.Heights.Regularisation.PLogCoverDescent
public import GroundTheory.HeightsAndTheta.Heights.Regularisation.PosSemidefOfIntQuadNonneg
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
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
import Mathlib.Topology.Sheaves.Init
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
import Mathlib.Order.CompletePartialOrder
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AutomorphicSpectrum.Proofs.MetricProofs.SectionTensorPullbackRingHomBijective
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar

section
@[expose] public section

open Set

namespace GlobalTheory.CompanionTheory.Ar.Flat

theorem exists_const_addEquiv_of_range_eq : ∀ (n g : ℕ) (Λ Λ' : Type) [AddCommGroup Λ] [Countable Λ] [AddCommGroup Λ'] [Countable Λ'] (B : Set (Fin n → ℂ)), IsOpen B → IsPreconnected B → B.Nonempty → ∀ (P : (Fin n → ℂ) → (Λ →+ (Fin g → ℂ))) (P' : (Fin n → ℂ) → (Λ' →+ (Fin g → ℂ))), (∀ x, DifferentiableOn ℂ (fun b => P b x) B) → (∀ x, DifferentiableOn ℂ (fun b => P' b x) B) → (∀ b ∈ B, Function.Injective (P b) ∧ Function.Injective (P' b) ∧ (P b).range = (P' b).range) → ∃ T : Λ' ≃+ Λ, ∀ b ∈ B, ∀ x, P' b x = P b (T x) := by
  intro n g Λ Λ' _ _ _ _ B hB hc hne P P' hP hP' h
  have h1 : ∀ x : Λ', ∃ y : Λ, ∀ b ∈ B, P' b x = P b y := fun x =>
    exists_const_of_section_mem_range n g Λ B hB hc hne P (fun b => P' b x) hP (hP' x)
      (fun b hb => by rw [(h b hb).2.2]; exact ⟨x, rfl⟩)
  have h2 : ∀ y : Λ, ∃ x : Λ', ∀ b ∈ B, P b y = P' b x := fun y =>
    exists_const_of_section_mem_range n g Λ' B hB hc hne P' (fun b => P b y) hP' (hP y)
      (fun b hb => by rw [← (h b hb).2.2]; exact ⟨y, rfl⟩)
  choose f hf using h1
  choose k hk using h2
  obtain ⟨b₀, hb₀⟩ := hne
  obtain ⟨hi, hi', -⟩ := h b₀ hb₀
  refine ⟨{ toFun := f, invFun := k, left_inv := ?_, right_inv := ?_, map_add' := ?_ }, ?_⟩
  · intro x
    apply hi'
    rw [← hk _ b₀ hb₀, ← hf _ b₀ hb₀]
  · intro y
    apply hi
    rw [← hf _ b₀ hb₀, ← hk _ b₀ hb₀]
  · intro x x'
    apply hi
    rw [map_add (f := _), ← hf _ b₀ hb₀, ← hf _ b₀ hb₀, ← hf _ b₀ hb₀, map_add (f := _)]
  · intro b hb x
    exact hf x b hb

end GlobalTheory.CompanionTheory.Ar.Flat
end


-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SaturatedLatticeQuotientCount, Development.AutomorphicSpectrum.Proofs.MetricProofs.HolomorphicGroupLawGerm, Development.AutomorphicSpectrum.Proofs.GeometryProofs.PeriodLatticeOnPuncturedDisc

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SaturatedLatticeQuotientCount =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SaturatedLatticeQuotientCount", "h": "module\n\npublic import Mathlib.LinearAlgebra.BilinearMap\npublic import Mathlib.LinearAlgebra.Dimension.Finrank\npublic import Mathlib.LinearAlgebra.FreeModule.Basic\npublic import Mathlib.LinearAlgebra.Quotient.Defs\npublic import Mathlib.RingTheory.Finiteness.Defs\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsEqNsmulOfForallDvdOfBijective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.Ar.Flat

theorem mem_of_forall_exists_sub_eq_nsmul (Λ : Type) [AddCommGroup Λ] [Module.Finite ℤ Λ]
    (W : Submodule ℤ Λ) (hW : ∀ (k : ℤ) x, k ≠ 0 → k • x ∈ W → x ∈ W) (x : Λ)
    (h : ∀ N : ℕ, 0 < N → ∃ w ∈ W, ∃ b : Λ, x - w = N • b) : x ∈ W := by
  have htf : Module.IsTorsionFree ℤ (Λ ⧸ W) := by
    refine Module.IsTorsionFree.of_smul_eq_zero fun r m hrm => ?_
    obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective W m
    by_cases hr : r = 0
    · exact Or.inl hr
    · right
      rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero] at hrm
      exact (Submodule.Quotient.mk_eq_zero W).mpr (hW r y hr hrm)
  have hfree : Module.Free ℤ (Λ ⧸ W) := Module.free_iff_isTorsionFree.mpr htf
  let bs := Module.Free.chooseBasis ℤ (Λ ⧸ W)
  rw [← Submodule.Quotient.mk_eq_zero W]
  refine bs.repr.injective ?_
  rw [map_zero]
  ext i
  rw [Finsupp.zero_apply]
  obtain ⟨w, hw, b, hb⟩ := h ((bs.repr (Submodule.Quotient.mk x) i).natAbs + 1) (by omega)
  generalize hn : (bs.repr (Submodule.Quotient.mk x) i).natAbs = n at hb
  have hq : (Submodule.Quotient.mk x : Λ ⧸ W) = (n + 1) • Submodule.Quotient.mk b := by
    rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.eq, ← hb]
    simpa using hw
  have hc : bs.repr (Submodule.Quotient.mk x) i =
      ((n + 1 : ℕ) : ℤ) * bs.repr (Submodule.Quotient.mk b) i := by
    rw [hq, map_nsmul, Finsupp.smul_apply, nsmul_eq_mul]
  have habs := congrArg Int.natAbs hc
  rw [Int.natAbs_mul, Int.natAbs_natCast, hn] at habs
  rcases Nat.eq_zero_or_pos (bs.repr (Submodule.Quotient.mk b) i).natAbs with ht | ht
  · rw [ht, mul_zero] at habs
    rw [habs] at hn
    exact Int.natAbs_eq_zero.mp hn
  · nlinarith

theorem mem_of_forall_card_mul_eq_pow :
    ∀ (Λ : Type) [AddCommGroup Λ] [Module.Free ℤ Λ] [Module.Finite ℤ Λ]
      (B : LinearMap.BilinForm ℤ Λ), Function.Bijective B → (∀ x, B x x = 0) →
      ∀ W : Submodule ℤ Λ, (∀ (k : ℤ) x, k ≠ 0 → k • x ∈ W → x ∈ W) →
      (∀ N : ℕ, 0 < N →
        ∃ T : Set (W ⧸ LinearMap.range ((N : ℤ) • (LinearMap.id : W →ₗ[ℤ] W))),
          Nat.card (W ⧸ LinearMap.range ((N : ℤ) • (LinearMap.id : W →ₗ[ℤ] W))) * Nat.card T
            = N ^ Module.finrank ℤ Λ ∧
          ∀ x y : W, Submodule.Quotient.mk x ∈ T → (N : ℤ) ∣ B x y) →
      ∀ x, (∀ y ∈ W, B x y = 0) → x ∈ W := by
  intro Λ _ _ _ B hB halt W hW hT x hx
  apply mem_of_forall_exists_sub_eq_nsmul Λ W hW x
  intro N hN
  obtain ⟨T, hcard, hTpair⟩ := hT N hN
  let R : Λ → (W ⧸ LinearMap.range ((N : ℤ) • (LinearMap.id : W →ₗ[ℤ] W))) → Prop :=
    fun a p => ∃ w : W, Submodule.Quotient.mk w = p ∧ ∃ b : Λ, a - w = N • b
  have h1 : ∀ a b p, R a p → R (a + N • b) p := by
    rintro a b p ⟨w, hw, b0, hb0⟩
    refine ⟨w, hw, b0 + b, ?_⟩
    rw [smul_add, ← hb0]
    abel
  have h2 : ∀ a p p', R a p → R a p' → p = p' := by
    rintro a p p' ⟨w, rfl, b, hb⟩ ⟨w', rfl, b', hb'⟩
    have hdiff : ((w : Λ) - w') = (N : ℤ) • (b' - b) := by
      rw [natCast_zsmul, smul_sub, ← hb, ← hb']
      abel
    have hmem : b' - b ∈ W :=
      hW (N : ℤ) (b' - b) (by exact_mod_cast hN.ne') (by rw [← hdiff]; exact W.sub_mem w.2 w'.2)
    rw [Submodule.Quotient.eq]
    refine ⟨⟨b' - b, hmem⟩, ?_⟩
    apply Subtype.ext
    exact hdiff.symm
  have h3 : ∀ p, ∃ a, R a p := by
    intro p
    obtain ⟨w, rfl⟩ := Submodule.Quotient.mk_surjective _ p
    exact ⟨w, w, rfl, 0, by simp⟩
  have h4 : ∀ a p a' p', R a p → p ∈ T → R a' p' → (N : ℤ) ∣ B a a' := by
    rintro a p a' p' ⟨w, rfl, b, hb⟩ hp ⟨w', -, b', hb'⟩
    have ha : a = w + N • b := by rw [← hb]; abel
    have ha' : a' = w' + N • b' := by rw [← hb']; abel
    have hww := hTpair w w' hp
    have hexp : B (↑w + N • b) (↑w' + N • b') = B w w' + N * (B w b' + B b w' + N * B b b') := by
      simp only [map_add (f := _), LinearMap.add_apply, map_nsmul, LinearMap.smul_apply, nsmul_eq_mul]
      ring
    rw [ha, ha', hexp]
    exact dvd_add hww (dvd_mul_right _ _)
  have h5 : ∀ a' p', R a' p' → (N : ℤ) ∣ B x a' := by
    rintro a' p' ⟨w', -, b', hb'⟩
    have ha' : a' = w' + N • b' := by rw [← hb']; abel
    rw [ha', map_add (f := _), map_nsmul, hx w' w'.2, zero_add]
    exact ⟨B x b', nsmul_eq_mul _ _⟩
  obtain ⟨p, w, -, b, hwb⟩ :=
    GlobalTheory.exists_rel_of_forall_dvd_of_card_mul Λ B hB N hN _ T R h1 h2 h3 hcard h4 x h5
  exact ⟨w, w.2, b, hwb⟩

end GlobalTheory.CompanionTheory.Ar.Flat
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SaturatedLatticeQuotientCount =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.HolomorphicGroupLawGerm =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MetricProofs.HolomorphicGroupLawGerm", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Calculus.FDeriv.Defs\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.ExistsConstAddEquivOfRangeEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Set

namespace GlobalTheory.CompanionTheory.Ar.Flat

def IsHolMarkingOn {n g : ℕ} {Λ : Type} [AddCommGroup Λ]
    (Γ : (Fin n → ℂ) → AddSubgroup (Fin g → ℂ)) (Q : (Fin n → ℂ) → (Fin g → ℂ) → (Fin g → ℂ) → ℝ)
    (e : Λ → Λ → ℝ) (U : Set (Fin n → ℂ)) (P : (Fin n → ℂ) → (Λ →+ (Fin g → ℂ))) : Prop :=
  (∀ x, DifferentiableOn ℂ (fun b => P b x) U) ∧
    ∀ b ∈ U, Function.Injective (P b) ∧ (P b).range = Γ b ∧ ∀ x y, Q b (P b x) (P b y) = e x y

section
variable {n g : ℕ} {Λ : Type} [AddCommGroup Λ] [Countable Λ]
  {Γ : (Fin n → ℂ) → AddSubgroup (Fin g → ℂ)} {Q : (Fin n → ℂ) → (Fin g → ℂ) → (Fin g → ℂ) → ℝ}
  {e : Λ → Λ → ℝ}

omit [Countable Λ] in
theorem IsHolMarkingOn.mono {U V : Set (Fin n → ℂ)} {P : (Fin n → ℂ) → (Λ →+ (Fin g → ℂ))}
    (h : IsHolMarkingOn Γ Q e U P) (hVU : V ⊆ U) : IsHolMarkingOn Γ Q e V P :=
  ⟨fun x => (h.1 x).mono hVU, fun b hb => h.2 b (hVU hb)⟩

theorem IsHolMarkingOn.exists_twist {U V : Set (Fin n → ℂ)} (hU : IsOpen U) (hV : IsOpen V)
    (hc : IsPreconnected (U ∩ V)) (hne : (U ∩ V).Nonempty)
    {P P' : (Fin n → ℂ) → (Λ →+ (Fin g → ℂ))}
    (h : IsHolMarkingOn Γ Q e U P) (h' : IsHolMarkingOn Γ Q e V P') :
    ∃ R : (Fin n → ℂ) → (Λ →+ (Fin g → ℂ)), IsHolMarkingOn Γ Q e V R ∧
      ∀ b ∈ U ∩ V, R b = P b := by
  obtain ⟨T, hT⟩ := exists_const_addEquiv_of_range_eq n g Λ Λ (U ∩ V) (hU.inter hV) hc hne P P'
    (fun x => (h.1 x).mono inter_subset_left) (fun x => (h'.1 x).mono inter_subset_right)
    (fun b hb => ⟨(h.2 b hb.1).1, (h'.2 b hb.2).1, by
      rw [(h.2 b hb.1).2.1, (h'.2 b hb.2).2.1]⟩)
  have hR : ∀ b ∈ U ∩ V, ∀ x, P' b (T.symm x) = P b x := fun b hb x => by
    rw [hT b hb, T.apply_symm_apply]
  refine ⟨fun b => (P' b).comp T.symm.toAddMonoidHom, ⟨fun x => h'.1 (T.symm x), ?_⟩, ?_⟩
  · intro b hb
    obtain ⟨hi, hr, hq⟩ := h'.2 b hb
    refine ⟨hi.comp T.symm.injective, ?_, ?_⟩
    · rw [← hr]
      ext y
      constructor
      · rintro ⟨x, rfl⟩
        exact ⟨T.symm x, rfl⟩
      · rintro ⟨x, rfl⟩
        exact ⟨T x, by simp⟩
    · intro x y
      obtain ⟨c, hc'⟩ := hne
      have h1 := (h.2 c hc'.1).2.2 x y
      have h2 := (h'.2 c hc'.2).2.2 (T.symm x) (T.symm y)
      rw [hR c hc' x, hR c hc' y, h1] at h2
      simpa using (hq (T.symm x) (T.symm y)).trans h2.symm
  · intro b hb
    ext1 x
    exact hR b hb x

theorem IsHolMarkingOn.exists_glue {U V : Set (Fin n → ℂ)} (hU : IsOpen U) (hV : IsOpen V)
    (hc : IsPreconnected (U ∩ V)) (hne : (U ∩ V).Nonempty)
    {P P' : (Fin n → ℂ) → (Λ →+ (Fin g → ℂ))}
    (h : IsHolMarkingOn Γ Q e U P) (h' : IsHolMarkingOn Γ Q e V P') :
    ∃ R, IsHolMarkingOn Γ Q e (U ∪ V) R := by
  classical
  obtain ⟨R, hR, hRP⟩ := h.exists_twist hU hV hc hne h'
  have eU : ∀ b ∈ U, (if b ∈ U then P b else R b) = P b := fun b hb => if_pos hb
  have eV : ∀ b ∈ V, (if b ∈ U then P b else R b) = R b := fun b hb => by
    by_cases hbU : b ∈ U
    · rw [if_pos hbU, hRP b ⟨hbU, hb⟩]
    · rw [if_neg hbU]
  refine ⟨fun b => if b ∈ U then P b else R b, fun x => ?_, ?_⟩
  · have d1 : DifferentiableOn ℂ (fun b => (if b ∈ U then P b else R b) x) U :=
      (h.1 x).congr fun b hb => by rw [eU b hb]
    have d2 : DifferentiableOn ℂ (fun b => (if b ∈ U then P b else R b) x) V :=
      (hR.1 x).congr fun b hb => by rw [eV b hb]
    rintro b (hb | hb)
    · exact ((d1 b hb).differentiableAt (hU.mem_nhds hb)).differentiableWithinAt
    · exact ((d2 b hb).differentiableAt (hV.mem_nhds hb)).differentiableWithinAt
  · rintro b (hb | hb)
    · simpa only [eU b hb] using h.2 b hb
    · simpa only [eV b hb] using hR.2 b hb

theorem IsHolMarkingOn.eq_of_eq_at {W : Set (Fin n → ℂ)} (hW : IsOpen W) (hc : IsPreconnected W)
    {P P' : (Fin n → ℂ) → (Λ →+ (Fin g → ℂ))}
    (h : IsHolMarkingOn Γ Q e W P) (h' : IsHolMarkingOn Γ Q e W P')
    {b₀ : Fin n → ℂ} (hb₀ : b₀ ∈ W) (h0 : P b₀ = P' b₀) : ∀ b ∈ W, P b = P' b := by
  obtain ⟨T, hT⟩ := exists_const_addEquiv_of_range_eq n g Λ Λ W hW hc ⟨b₀, hb₀⟩ P P' h.1 h'.1
    (fun b hb => ⟨(h.2 b hb).1, (h'.2 b hb).1, by rw [(h.2 b hb).2.1, (h'.2 b hb).2.1]⟩)
  have hid : ∀ x, T x = x := fun x => (h.2 b₀ hb₀).1 (by rw [← hT b₀ hb₀, h0])
  intro b hb
  ext1 x
  rw [hT b hb, hid]

theorem exists_marking_of_convex_family {B : Set (Fin n → ℂ)} {b₀ : Fin n → ℂ} (hb₀ : b₀ ∈ B)
    (H : ∀ b ∈ B, ∃ U : Set (Fin n → ℂ), IsOpen U ∧ Convex ℝ U ∧ U ⊆ B ∧ b₀ ∈ U ∧ b ∈ U ∧
      ∃ P, IsHolMarkingOn Γ Q e U P) :
    ∃ P, IsHolMarkingOn Γ Q e B P := by
  obtain ⟨U₀, hU₀, hC₀, -, hbU₀, -, P₀, hP₀⟩ := H b₀ hb₀
  have H' : ∀ b ∈ B, ∃ U : Set (Fin n → ℂ), IsOpen U ∧ Convex ℝ U ∧ U ⊆ B ∧ b₀ ∈ U ∧ b ∈ U ∧
      ∃ R, IsHolMarkingOn Γ Q e U R ∧ R b₀ = P₀ b₀ := by
    intro b hb
    obtain ⟨U, hU, hC, hUB, h0, h1, P, hP⟩ := H b hb
    obtain ⟨R, hR, hRP⟩ := hP₀.exists_twist hU₀ hU (hC₀.inter hC).isPreconnected ⟨b₀, hbU₀, h0⟩ hP
    exact ⟨U, hU, hC, hUB, h0, h1, R, hR, hRP b₀ ⟨hbU₀, h0⟩⟩
  choose! U hU hC hUB h0 h1 R hR hRb using H'
  have key : ∀ b ∈ B, ∀ c ∈ U b, R c c = R b c := fun b hb c hcb => by
    have hc : c ∈ B := hUB b hb hcb
    exact ((hR c hc).mono inter_subset_left).eq_of_eq_at ((hU c hc).inter (hU b hb))
      ((hC c hc).inter (hC b hb)).isPreconnected ((hR b hb).mono inter_subset_right)
      ⟨h0 c hc, h0 b hb⟩ ((hRb c hc).trans (hRb b hb).symm) c ⟨h1 c hc, hcb⟩
  refine ⟨fun b => R b b, fun x b hb => ?_, fun b hb => (hR b hb).2 b (h1 b hb)⟩
  have hn := (hU b hb).mem_nhds (h1 b hb)
  have hev : (fun c => R c c x) =ᶠ[nhds b] fun c => R b c x := by
    filter_upwards [hn] with c hc
    rw [key b hb c hc]
  exact (((hR b hb).1 x b (h1 b hb)).differentiableAt hn).congr_of_eventuallyEq hev
    |>.differentiableWithinAt

theorem exists_marking_tube {B : Set (Fin n → ℂ)} (hconv : Convex ℝ B)
    (H : ∀ b₀ ∈ B, ∃ N : Set (Fin n → ℂ), IsOpen N ∧ b₀ ∈ N ∧ N ⊆ B ∧
      ∃ P, IsHolMarkingOn Γ Q e N P)
    {a b : Fin n → ℂ} (ha : a ∈ B) (hb : b ∈ B) :
    ∃ U : Set (Fin n → ℂ), IsOpen U ∧ Convex ℝ U ∧ U ⊆ B ∧ a ∈ U ∧ b ∈ U ∧
      ∃ P, IsHolMarkingOn Γ Q e U P := by
  let γ : ℝ →ᵃ[ℝ] (Fin n → ℂ) := AffineMap.lineMap a b
  have hγ : Continuous γ := by
    have : (γ : ℝ → Fin n → ℂ) = fun t => t • (b - a) + a :=
      funext fun t => AffineMap.lineMap_apply_module' a b t
    rw [this]
    fun_prop
  have hγ0 : γ 0 = a := AffineMap.lineMap_apply_zero a b
  have hγ1 : γ 1 = b := AffineMap.lineMap_apply_one a b
  have hmem : ∀ r ∈ Icc (0 : ℝ) 1, γ r ∈ B := fun r hr =>
    hconv.segment_subset ha hb (by rw [segment_eq_image_lineMap]; exact ⟨r, hr, rfl⟩)
  let ι := {N : Set (Fin n → ℂ) // IsOpen N ∧ N ⊆ B ∧ ∃ P, IsHolMarkingOn Γ Q e N P}
  let c : ι → Set unitInterval := fun N => (fun s : unitInterval => γ s) ⁻¹' N.1
  obtain ⟨t, ht0, hmono, ⟨m, hm⟩, hcov⟩ := exists_monotone_Icc_subset_open_cover_unitInterval
    (c := c) (fun N => N.2.1.preimage (hγ.comp continuous_subtype_val)) (fun s _ => by
      obtain ⟨N, h1, h2, h3, h4⟩ := H _ (hmem s s.2)
      exact mem_iUnion.2 ⟨⟨N, h1, h3, h4⟩, h2⟩)
  have claim : ∀ k, ∃ δ : ℝ, 0 < δ ∧ Metric.thickening δ (γ '' Icc 0 (t k : ℝ)) ⊆ B ∧
      ∃ P, IsHolMarkingOn Γ Q e (Metric.thickening δ (γ '' Icc 0 (t k : ℝ))) P := by
    intro k
    induction k with
    | zero =>
      obtain ⟨N, hN, haN, hNB, P, hP⟩ := H a ha
      have hsub : γ '' Icc 0 (t 0 : ℝ) ⊆ N := by
        rintro _ ⟨r, hr, rfl⟩
        have hr0 : r = 0 := le_antisymm (by simpa [ht0] using hr.2) hr.1
        rw [hr0, hγ0]
        exact haN
      obtain ⟨δ, hδ, hth⟩ := (isCompact_Icc.image hγ).exists_thickening_subset_open hN hsub
      exact ⟨δ, hδ, hth.trans hNB, P, hP.mono hth⟩
    | succ k ih =>
      obtain ⟨δ₁, hδ₁, hB₁, P₁, hP₁⟩ := ih
      obtain ⟨N, hN⟩ := hcov k
      obtain ⟨hNo, hNB, P₂, hP₂⟩ := N.2
      have hle : (t k : ℝ) ≤ t (k + 1) := hmono (Nat.le_succ k)
      have h0 : (0 : ℝ) ≤ t k := (t k).2.1
      have hsub : γ '' Icc (t k : ℝ) (t (k + 1)) ⊆ N.1 := by
        rintro _ ⟨r, hr, rfl⟩
        have hr' : r ∈ Icc (0 : ℝ) 1 := ⟨h0.trans hr.1, hr.2.trans (t (k + 1)).2.2⟩
        exact hN (show (⟨r, hr'⟩ : unitInterval) ∈ Icc (t k) (t (k + 1)) from ⟨hr.1, hr.2⟩)
      obtain ⟨δ₂, hδ₂, hth⟩ := (isCompact_Icc.image hγ).exists_thickening_subset_open hNo hsub
      have hδ : 0 < min δ₁ δ₂ := lt_min hδ₁ hδ₂
      have hA : Metric.thickening (min δ₁ δ₂) (γ '' Icc 0 (t k : ℝ)) ⊆
          Metric.thickening δ₁ (γ '' Icc 0 (t k : ℝ)) :=
        Metric.thickening_mono (min_le_left _ _) _
      have hC : Metric.thickening (min δ₁ δ₂) (γ '' Icc (t k : ℝ) (t (k + 1))) ⊆ N.1 :=
        (Metric.thickening_mono (min_le_right _ _) _).trans hth
      have hKs : γ '' Icc 0 (t (k + 1) : ℝ) =
          γ '' Icc 0 (t k : ℝ) ∪ γ '' Icc (t k : ℝ) (t (k + 1)) := by
        rw [← image_union, Icc_union_Icc_eq_Icc h0 hle]
      have hconvA := ((convex_Icc (0 : ℝ) (t k)).affine_image γ).thickening (min δ₁ δ₂)
      have hconvC := ((convex_Icc (t k : ℝ) (t (k + 1))).affine_image γ).thickening (min δ₁ δ₂)
      have hpt : γ (t k) ∈ Metric.thickening (min δ₁ δ₂) (γ '' Icc 0 (t k : ℝ)) ∩
          Metric.thickening (min δ₁ δ₂) (γ '' Icc (t k : ℝ) (t (k + 1))) :=
        ⟨Metric.self_subset_thickening hδ _ ⟨_, ⟨h0, le_rfl⟩, rfl⟩,
          Metric.self_subset_thickening hδ _ ⟨_, ⟨le_rfl, hle⟩, rfl⟩⟩
      obtain ⟨R, hR⟩ := (hP₁.mono hA).exists_glue (P' := P₂) Metric.isOpen_thickening
        Metric.isOpen_thickening (hconvA.inter hconvC).isPreconnected ⟨_, hpt⟩ (hP₂.mono hC)
      refine ⟨min δ₁ δ₂, hδ, ?_, R, ?_⟩
      · rw [hKs, Metric.thickening_union]
        exact union_subset (hA.trans hB₁) (hC.trans hNB)
      · rw [hKs, Metric.thickening_union]
        exact hR
  obtain ⟨δ, hδ, hδB, P, hP⟩ := claim m
  have htm : (t m : ℝ) = 1 := by rw [hm m le_rfl]; rfl
  rw [htm] at hδB hP
  exact ⟨_, Metric.isOpen_thickening, ((convex_Icc (0 : ℝ) 1).affine_image γ).thickening δ, hδB,
    Metric.self_subset_thickening hδ _ ⟨0, ⟨le_rfl, zero_le_one⟩, hγ0⟩,
    Metric.self_subset_thickening hδ _ ⟨1, ⟨zero_le_one, le_rfl⟩, hγ1⟩, P, hP⟩

end

theorem exists_global_marking_of_local : ∀ (n g : ℕ) (Λ : Type) [AddCommGroup Λ] [Countable Λ] (B : Set (Fin n → ℂ)), IsOpen B → Convex ℝ B → ∀ (Γ : (Fin n → ℂ) → AddSubgroup (Fin g → ℂ)) (Q : (Fin n → ℂ) → (Fin g → ℂ) → (Fin g → ℂ) → ℝ) (e : Λ → Λ → ℝ), (∀ b₀ ∈ B, ∃ N : Set (Fin n → ℂ), IsOpen N ∧ b₀ ∈ N ∧ N ⊆ B ∧ ∃ P : (Fin n → ℂ) → (Λ →+ (Fin g → ℂ)), (∀ x, DifferentiableOn ℂ (fun b => P b x) N) ∧ ∀ b ∈ N, Function.Injective (P b) ∧ (P b).range = Γ b ∧ ∀ x y, Q b (P b x) (P b y) = e x y) → ∃ P : (Fin n → ℂ) → (Λ →+ (Fin g → ℂ)), (∀ x, DifferentiableOn ℂ (fun b => P b x) B) ∧ ∀ b ∈ B, Function.Injective (P b) ∧ (P b).range = Γ b ∧ ∀ x y, Q b (P b x) (P b y) = e x y := by
  intro n g Λ _ _ B _ hconv Γ Q e H
  rcases B.eq_empty_or_nonempty with rfl | ⟨b₀, hb₀⟩
  · exact ⟨fun _ => 0, fun x => by simp, by simp⟩
  · have H' : ∀ b₀ ∈ B, ∃ N : Set (Fin n → ℂ), IsOpen N ∧ b₀ ∈ N ∧ N ⊆ B ∧
        ∃ P, IsHolMarkingOn Γ Q e N P := fun b hb => by
      obtain ⟨N, h1, h2, h3, P, h4, h5⟩ := H b hb
      exact ⟨N, h1, h2, h3, P, h4, h5⟩
    obtain ⟨P, hP⟩ := exists_marking_of_convex_family hb₀
      (fun b hb => exists_marking_tube hconv H' hb₀ hb)
    exact ⟨P, hP.1, hP.2⟩

end GlobalTheory.CompanionTheory.Ar.Flat
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.HolomorphicGroupLawGerm =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.PeriodLatticeOnPuncturedDisc =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.PeriodLatticeOnPuncturedDisc", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.ClopenCondOnto\npublic import Mathlib.LinearAlgebra.BilinearMap\npublic import Mathlib.LinearAlgebra.Dimension.Finrank\npublic import Mathlib.LinearAlgebra.FreeModule.Basic\npublic import Mathlib.LinearAlgebra.Quotient.Defs\npublic import Mathlib.RingTheory.Finiteness.Defs\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SaturatedLatticeQuotientCount\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.ExistsConstAddEquivOfRangeEq\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Calculus.FDeriv.Defs\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.HolomorphicGroupLawGerm\npublic import GroundTheory.HeightsAndTheta.Heights.Regularisation.PLogCoverDescent\npublic import GroundTheory.HeightsAndTheta.Heights.Regularisation.PosSemidefOfIntQuadNonneg\nimport Development.AutomorphicSpectrum.Proofs.MetricProofs.SectionTensorPullbackRingHomBijective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Flat.QuotLoc

open Matrix Metric Filter Topology GroundTheory.Heights₂.Heights.Regular

variable {n a : ℕ}

lemma expCover_mem_punctured (h : a ≤ n) {w : Fin n → ℂ} (hw : w ∈ logCover h) :
    expCover a w ∈ {z | z ∈ ball (0 : Fin n → ℂ) 1 ∧ ∀ i : Fin n, i.val < a → z i ≠ 0} := by
  refine ⟨expCover_mem_ball h hw, fun i hi => ?_⟩
  simp only [expCover, hi, if_true]
  exact Complex.exp_ne_zero _

lemma exists_mem_logCover (h : a ≤ n) {z : Fin n → ℂ}
    (hz : z ∈ {z | z ∈ ball (0 : Fin n → ℂ) 1 ∧ ∀ i : Fin n, i.val < a → z i ≠ 0}) :
    ∃ w ∈ logCover h, expCover a w = z := by
  have hlt : ∀ k : Fin n, ‖z k‖ < 1 := fun k =>
    (norm_le_pi_norm z k).trans_lt (mem_ball_zero_iff.1 hz.1)
  refine ⟨logLift a z, ⟨fun i => ?_, fun k hk => ?_⟩, ?_⟩
  · have hi : (Fin.castLE h i).val < a := i.2
    have h0 := hz.2 _ hi
    simp only [logLift, if_pos hi, Complex.log_re]
    exact Real.log_neg (norm_pos_iff.2 h0) (hlt _)
  · simp only [logLift, if_neg (not_lt.2 hk)]
    exact hlt k
  · funext k
    by_cases hk : k.val < a
    · simp only [expCover, logLift, if_pos hk]
      exact Complex.exp_log (hz.2 k hk)
    · simp only [expCover, logLift, if_neg hk]

lemma differentiable_expCover : Differentiable ℂ (expCover (n := n) a) := by
  refine differentiable_pi.2 fun k => ?_
  by_cases hk : k.val < a
  · simp only [expCover, if_pos hk]
    exact Complex.differentiable_exp.comp (differentiable_apply k)
  · simp only [expCover, if_neg hk]
    exact differentiable_apply k

lemma expCover_add_single (h : a ≤ n) (i : Fin a) (w : Fin n → ℂ) :
    expCover a (w + Pi.single (Fin.castLE h i) (2 * Real.pi * Complex.I)) = expCover a w := by
  funext k
  by_cases hki : k = Fin.castLE h i
  · subst hki
    simp [expCover, i.isLt, Complex.exp_add]
  · simp [expCover, Pi.single_eq_of_ne hki]

lemma add_single_mem_logCover (h : a ≤ n) (i : Fin a) {w : Fin n → ℂ} (hw : w ∈ logCover h) :
    w + Pi.single (Fin.castLE h i) (2 * Real.pi * Complex.I) ∈ logCover h := by
  refine (LogCoverDescent.add_mem_logCover_iff h (fun k => ?_) (fun k hk => ?_) w).2 hw
  · by_cases hki : k = Fin.castLE h i
    · subst hki; simp
    · simp [Pi.single_eq_of_ne hki]
  · have hki : k ≠ Fin.castLE h i := by
      rintro rfl
      exact absurd i.2 (not_lt.2 hk)
    simp [Pi.single_eq_of_ne hki]

lemma eq_at_zero_of_eqOn {F : Type*} [TopologicalSpace F] [T2Space F]
    {f f' : (Fin n → ℂ) → F} (hf : ContinuousAt f 0) (hf' : ContinuousAt f' 0)
    (he : ∀ z ∈ {z | z ∈ ball (0 : Fin n → ℂ) 1 ∧ ∀ i : Fin n, i.val < a → z i ≠ 0}, f z = f' z) :
    f 0 = f' 0 := by
  let u : ℕ → Fin n → ℂ := fun k _ => ((1 / ((k : ℝ) + 2) : ℝ) : ℂ)
  have hpos : ∀ k : ℕ, (0 : ℝ) < 1 / ((k : ℝ) + 2) := fun k => by positivity
  have hlt : ∀ k : ℕ, 1 / ((k : ℝ) + 2) < 1 := fun k => by
    rw [div_lt_one (by positivity)]
    have : (0 : ℝ) ≤ k := Nat.cast_nonneg k
    linarith
  have hu : Tendsto u atTop (𝓝 0) := by
    refine tendsto_pi_nhds.2 fun j => ?_
    have h1 : Tendsto (fun k : ℕ => 1 / ((k : ℝ) + 2)) atTop (𝓝 0) := by
      have := (tendsto_one_div_add_atTop_nhds_zero_nat (𝕜 := ℝ)).comp (tendsto_add_atTop_nat 1)
      refine this.congr fun k => ?_
      simp only [Function.comp]
      push_cast
      ring_nf
    have h2 := (Complex.continuous_ofReal.tendsto 0).comp h1
    simpa [u, Function.comp_def] using h2
  have hmem : ∀ k, u k ∈ {z | z ∈ ball (0 : Fin n → ℂ) 1 ∧ ∀ i : Fin n, i.val < a → z i ≠ 0} := by
    intro k
    refine ⟨?_, fun i _ => ?_⟩
    · rw [mem_ball_zero_iff, pi_norm_lt_iff one_pos]
      intro j
      simp only [u, Complex.norm_real, Real.norm_eq_abs, abs_of_pos (hpos k)]
      exact hlt k
    · simp only [u]
      exact_mod_cast (hpos k).ne'
  have t1 := hf.tendsto.comp hu
  have t2 := hf'.tendsto.comp hu
  refine tendsto_nhds_unique t1 (t2.congr fun k => ?_)
  exact (he _ (hmem k)).symm

lemma coiso_of_count {Λ M : Type} [AddCommGroup Λ] [Module.Free ℤ Λ] [Module.Finite ℤ Λ]
    [AddCommGroup M] (E : LinearMap.BilinForm ℤ Λ) (hbij : Function.Bijective E)
    (halt : ∀ x, E x x = 0) (l : M →ₗ[ℤ] Λ) (hinj : Function.Injective l)
    (hsat : ∀ (k : ℤ) x, k ≠ 0 → k • x ∈ LinearMap.range l → x ∈ LinearMap.range l)
    (hcount : ∀ N : ℕ, 0 < N → ∃ T : Set (M ⧸ LinearMap.range ((N : ℤ) • (LinearMap.id : M →ₗ[ℤ] M))),
      Nat.card (M ⧸ LinearMap.range ((N : ℤ) • (LinearMap.id : M →ₗ[ℤ] M))) * Nat.card T =
        N ^ Module.finrank ℤ Λ ∧
      ∀ x y : M, Submodule.Quotient.mk x ∈ T → (N : ℤ) ∣ E (l x) (l y)) :
    ∀ x, (∀ y ∈ LinearMap.range l, E x y = 0) → x ∈ LinearMap.range l := by
  refine _root_.GlobalTheory.CompanionTheory.Ar.Flat.mem_of_forall_card_mul_eq_pow Λ E hbij halt (LinearMap.range l) hsat fun N hN => ?_
  obtain ⟨T, hcard, hdvd⟩ := hcount N hN
  let e : M ≃ₗ[ℤ] LinearMap.range l := LinearEquiv.ofInjective l hinj
  have hmap : (LinearMap.range ((N : ℤ) • (LinearMap.id : M →ₗ[ℤ] M))).map (e : M →ₗ[ℤ] _) =
      LinearMap.range ((N : ℤ) • (LinearMap.id : LinearMap.range l →ₗ[ℤ] LinearMap.range l)) := by
    ext y
    constructor
    · rintro ⟨_, ⟨x, rfl⟩, rfl⟩
      exact ⟨e x, by simp⟩
    · rintro ⟨y', rfl⟩
      refine ⟨(N : ℤ) • e.symm y', ⟨e.symm y', by simp⟩, by simp⟩
  let Q := Submodule.Quotient.equiv _ _ e hmap
  refine ⟨Q '' T, ?_, ?_⟩
  · rw [Nat.card_image_of_injective Q.injective, ← Nat.card_congr Q.toEquiv]
    exact hcard
  · intro x y hx
    obtain ⟨x', rfl⟩ := e.surjective x
    obtain ⟨y', rfl⟩ := e.surjective y
    have hx' : Submodule.Quotient.mk x' ∈ T := by
      obtain ⟨t, ht, hte⟩ := hx
      have : t = Submodule.Quotient.mk x' := Q.injective (by rw [hte]; rfl)
      exact this ▸ ht
    exact hdvd x' y' hx'

end GlobalTheory.CompanionTheory.Ar.Flat.QuotLoc

namespace GlobalTheory.CompanionTheory.Ar.Flat

open Matrix Metric Filter Topology GroundTheory.Heights₂.Heights.Regular QuotLoc

theorem exists_logPeriods_range_eq : ∀ (n a g : ℕ) (_h : a ≤ n) (Λ : Type) [AddCommGroup Λ] [Module.Free ℤ Λ] [Module.Finite ℤ Λ] (E : LinearMap.BilinForm ℤ Λ) (Γ : (Fin n → ℂ) → AddSubgroup (Fin g → ℂ)) (Hf : (Fin n → ℂ) → Matrix (Fin g) (Fin g) ℂ) (U : Set (Fin n → ℂ)) (Γ₀ : Submodule ℤ (Fin g → ℂ)) (S : Γ₀ → (Fin n → ℂ) → (Fin g → ℂ)), U = {z | z ∈ Metric.ball (0 : Fin n → ℂ) 1 ∧ ∀ i : Fin n, i.val < a → z i ≠ 0} → Module.finrank ℤ Λ = 2 * g → (∀ x, E x x = 0) → Function.Bijective E → (∀ z ∈ U, (Hf z).IsHermitian ∧ ∀ x : Fin g → ℂ, x ≠ 0 → 0 < (x ⬝ᵥ Hf z *ᵥ star x).re) → (∀ z₀ ∈ U, ∃ N : Set (Fin n → ℂ), IsOpen N ∧ z₀ ∈ N ∧ N ⊆ U ∧ ∃ P : (Fin n → ℂ) → (Λ →+ (Fin g → ℂ)), (∀ x, DifferentiableOn ℂ (fun z => P z x) N) ∧ ∀ z ∈ N, Function.Injective (P z) ∧ (P z).range = Γ z ∧ ∀ x y, (P z x ⬝ᵥ Hf z *ᵥ star (P z y)).im = E x y) → (∀ x, DifferentiableOn ℂ (S x) (Metric.ball 0 1) ∧ S x 0 = x ∧ ∀ z ∈ U, S x z ∈ Γ z) → (∀ x y z, S (x + y) z = S x z + S y z) → (∀ s : (Fin n → ℂ) → (Fin g → ℂ), ContinuousAt s 0 → (∀ z ∈ U, s z ∈ Γ z) → s 0 ∈ Γ₀) → Submodule.span ℂ (Γ₀ : Set (Fin g → ℂ)) = ⊤ → (∀ N : ℕ, 0 < N → ∃ T : Set (Γ₀ ⧸ LinearMap.range ((N : ℤ) • (LinearMap.id : Γ₀ →ₗ[ℤ] Γ₀))), Nat.card (Γ₀ ⧸ LinearMap.range ((N : ℤ) • (LinearMap.id : Γ₀ →ₗ[ℤ] Γ₀))) * Nat.card T = N ^ (2 * g) ∧ ∀ x y : Γ₀, Submodule.Quotient.mk x ∈ T → ∀ z ∈ U, ∃ k : ℤ, (S x z ⬝ᵥ Hf z *ᵥ star (S y z)).im = N * k) → ∃ L : LogPeriods n a g Λ, L.H = Hf ∧ ∀ w ∈ GroundTheory.Heights₂.Heights.Regular.logCover L.a_le, (L.P w).range = Γ (GroundTheory.Heights₂.Heights.Regular.expCover a w) := by
  intro n a g h Λ _ _ _ E Γ Hf U Γ₀ S hU hrank halt hbij hpos hloc hS hadd hlim hspan hcount
  subst hU
  haveI : Countable Λ := (Module.finBasis ℤ Λ).equivFun.injective.countable
  have hmem : ∀ w ∈ logCover h, expCover a w ∈ _ := fun w hw => expCover_mem_punctured h hw
  have hBo := isOpen_logCover h
  have hBc := convex_logCover h
  have hBp : IsPreconnected (logCover h) := hBc.isPreconnected
  have hBn := logCover_nonempty h
  have hdiff : DifferentiableOn ℂ (expCover (n := n) a) (logCover h) :=
    differentiable_expCover.differentiableOn

  obtain ⟨P, hPhol, hP0⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Flat.exists_global_marking_of_local n g Λ (logCover h) hBo hBc
    (fun w => Γ (expCover a w)) (fun w u v => (u ⬝ᵥ Hf (expCover a w) *ᵥ star v).im)
    (fun x y => (E x y : ℝ)) (by
      intro w₀ hw₀
      obtain ⟨N, hNo, hz, hNU, P, hPh, hPp⟩ := hloc _ (hmem w₀ hw₀)
      refine ⟨logCover h ∩ expCover a ⁻¹' N,
        hBo.inter (hNo.preimage (continuous_expCover a)), ⟨hw₀, hz⟩, Set.inter_subset_left,
        fun w => P (expCover a w), fun x => ?_, fun w hw => hPp _ hw.2⟩
      exact (hPh x).comp (hdiff.mono Set.inter_subset_left) (fun w hw => hw.2))
  have hP : ∀ w ∈ logCover h, Function.Injective (P w) ∧ (P w).range = Γ (expCover a w) ∧
      ∀ x y, (P w x ⬝ᵥ Hf (expCover a w) *ᵥ star (P w y)).im = (E x y : ℝ) := hP0

  have hT : ∀ i : Fin a, ∃ T : Λ ≃+ Λ, ∀ w ∈ logCover h, ∀ x,
      P (w + Pi.single (Fin.castLE h i) (2 * Real.pi * Complex.I)) x = P w (T x) := by
    intro i
    refine exists_const_addEquiv_of_range_eq n g Λ Λ (logCover h) hBo hBp hBn P
      (fun w => P (w + Pi.single (Fin.castLE h i) (2 * Real.pi * Complex.I))) hPhol
      (fun x => ?_) (fun w hw => ?_)
    · refine (hPhol x).comp (differentiableOn_id.add_const _) (fun w hw => ?_)
      exact add_single_mem_logCover h i hw
    · have hw' := add_single_mem_logCover h i hw
      refine ⟨(hP w hw).1, (hP _ hw').1, ?_⟩
      rw [(hP w hw).2.1, (hP _ hw').2.1, expCover_add_single]
  choose T hT using hT

  have hsec : ∀ x : Γ₀, ∃ l : Λ, ∀ w ∈ logCover h, S x (expCover a w) = P w l := by
    intro x
    refine exists_const_of_section_mem_range n g Λ (logCover h) hBo hBp hBn P
      (fun w => S x (expCover a w)) hPhol ?_ (fun w hw => ?_)
    · exact (hS x).1.comp hdiff (fun w hw => expCover_mem_ball h hw)
    · rw [(hP w hw).2.1]
      exact (hS x).2.2 _ (hmem w hw)
  choose l hl using hsec
  obtain ⟨w₀, hw₀⟩ := hBn
  have ladd : ∀ x y, l (x + y) = l x + l y := by
    intro x y
    apply (hP w₀ hw₀).1
    rw [← hl _ w₀ hw₀, map_add (f := _), ← hl _ w₀ hw₀, ← hl _ w₀ hw₀, hadd]
  let lam : Γ₀ →ₗ[ℤ] Λ := (AddMonoidHom.mk' l ladd).toIntLinearMap
  have lam_apply : ∀ x, lam x = l x := fun _ => rfl
  have hcont : ∀ x : Γ₀, ContinuousAt (S x) 0 := fun x =>
    ((hS x).1.differentiableAt (ball_mem_nhds _ one_pos)).continuousAt
  have hlamz : ∀ x, ∀ z ∈ {z | z ∈ ball (0 : Fin n → ℂ) 1 ∧ ∀ i : Fin n, i.val < a → z i ≠ 0},
      ∃ w ∈ logCover h, expCover a w = z ∧ S x z = P w (lam x) := by
    intro x z hz
    obtain ⟨w, hw, rfl⟩ := exists_mem_logCover h hz
    exact ⟨w, hw, rfl, hl x w hw⟩
  have hinj : Function.Injective lam := by
    refine (injective_iff_map_eq_zero lam).2 fun x hx => ?_
    have h0 : S x 0 = (fun _ => 0 : (Fin n → ℂ) → (Fin g → ℂ)) 0 :=
      eq_at_zero_of_eqOn (a := a) (hcont x) continuousAt_const (fun z hz => by
        obtain ⟨w, hw, -, e⟩ := hlamz x z hz
        rw [e, hx, map_zero])
    exact Subtype.ext (by rw [← (hS x).2.1]; simpa using h0)
  have hsat : ∀ (k : ℤ) x, k ≠ 0 → k • x ∈ LinearMap.range lam → x ∈ LinearMap.range lam := by
    rintro k x hk ⟨y, hy⟩
    have hkc : (k : ℂ) ≠ 0 := by exact_mod_cast hk
    have hval : ∀ z ∈ {z | z ∈ ball (0 : Fin n → ℂ) 1 ∧ ∀ i : Fin n, i.val < a → z i ≠ 0},
        (k : ℂ)⁻¹ • S y z ∈ Γ z := by
      intro z hz
      obtain ⟨w, hw, rfl, e⟩ := hlamz y z hz
      have : (k : ℂ)⁻¹ • S y (expCover a w) = P w x := by
        rw [e, hy, map_zsmul, ← Int.cast_smul_eq_zsmul ℂ, smul_smul, inv_mul_cancel₀ hkc, one_smul]
      rw [this, ← (hP w hw).2.1]
      exact ⟨x, rfl⟩
    have hy0 : (k : ℂ)⁻¹ • (y : Fin g → ℂ) ∈ Γ₀ := by
      have hc : ContinuousAt (fun z => (k : ℂ)⁻¹ • S y z) 0 :=
        ContinuousAt.comp (g := fun v : Fin g → ℂ => (k : ℂ)⁻¹ • v)
          (continuous_const_smul _).continuousAt (hcont y)
      have := hlim (fun z => (k : ℂ)⁻¹ • S y z) hc hval
      simpa [(hS y).2.1] using this
    refine ⟨⟨_, hy0⟩, ?_⟩
    have hky : k • (⟨_, hy0⟩ : Γ₀) = y := by
      apply Subtype.ext
      change k • ((k : ℂ)⁻¹ • (y : Fin g → ℂ)) = y
      rw [← Int.cast_smul_eq_zsmul ℂ, smul_smul, mul_inv_cancel₀ hkc, one_smul]
    apply smul_right_injective Λ hk
    change k • lam ⟨_, hy0⟩ = k • x
    rw [← map_zsmul, hky, hy]
  have hco := coiso_of_count E hbij halt lam hinj hsat (fun N hN => by
    obtain ⟨T', hcard, hdvd⟩ := hcount N hN
    refine ⟨T', by rw [hrank]; exact hcard, fun x y hx => ?_⟩
    obtain ⟨k, hk⟩ := hdvd x y hx _ (hmem w₀ hw₀)
    rw [hl x w₀ hw₀, hl y w₀ hw₀, (hP w₀ hw₀).2.2] at hk
    exact ⟨k, by exact_mod_cast hk⟩)
  let e : Γ₀ ≃ₗ[ℤ] LinearMap.range lam := LinearEquiv.ofInjective lam hinj
  have he : ∀ x : LinearMap.range lam, lam (e.symm x) = x := fun x => by
    have := congrArg Subtype.val (e.apply_symm_apply x)
    simpa [e] using this
  refine ⟨{ a_le := h, free := inferInstance, fin := inferInstance, rank := hrank, E := E, alt := halt,
            unimod := hbij, P := P, hol := hPhol, H := Hf,
            herm := fun w hw => (hpos _ (hmem w hw)).1,
            pos := fun w hw => (hpos _ (hmem w hw)).2,
            im := fun w hw => (hP w hw).2.2,
            T := fun i => (T i).toAddMonoidHom.toIntLinearMap,
            mono := fun i w hw x => hT i w hw x,
            W := LinearMap.range lam,
            coiso := fun x hx => ⟨1, one_ne_zero, by simpa using hco x hx⟩,
            s := fun x => S (e.symm x),
            s_hol := fun x => (hS _).1,
            s_eq := fun x w hw => by
              rw [hl _ w hw, ← lam_apply, he],
            span := ?_ }, rfl, fun w hw => (hP w hw).2.1⟩
  have hr : (Set.range fun x : LinearMap.range lam => S (e.symm x) 0) = (Γ₀ : Set (Fin g → ℂ)) := by
    ext u
    constructor
    · rintro ⟨x, rfl⟩
      simp only [(hS _).2.1]
      exact (e.symm x).2
    · intro hu
      refine ⟨e ⟨u, hu⟩, ?_⟩
      simp only [LinearEquiv.symm_apply_apply, (hS _).2.1]
  change Submodule.span ℂ (Set.range fun x : LinearMap.range lam => S (e.symm x) 0) = ⊤
  rw [hr]
  exact hspan

end GlobalTheory.CompanionTheory.Ar.Flat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.PeriodLatticeOnPuncturedDisc =====
