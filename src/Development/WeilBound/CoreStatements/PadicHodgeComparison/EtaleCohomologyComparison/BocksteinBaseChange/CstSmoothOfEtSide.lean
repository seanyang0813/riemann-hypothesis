module

public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import Mathlib.LinearAlgebra.Matrix.Rank
public import Mathlib.LinearAlgebra.Dimension.Constructions
public import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
public import Mathlib.LinearAlgebra.Matrix.Adjugate
public import Mathlib.Algebra.BigOperators.Field
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AbsProps
public import Mathlib.NumberTheory.Padics.PadicIntegers
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AbsPhi
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.PrepairingEtaleValue
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.Imports
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BcrisRegularPeriodRing
public import GroundTheory.PAdicHodge.BCrisPlusInvariants
public import GroundTheory.PAdicHodge.BCrisRegular
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TranscendentalPeriodUnits.CrBase
public import GroundTheory.PAdicHodge.BCrisRegularFinal
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.CstSmoothOf
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TranscendentalPeriodUnits.IsUOfIsUnit
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Algebra.Module.StablyFree.Basic
import GroundTheory.PAdicHodge.BCrisNewton

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsTailAlt, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.AdmAbs, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.admitted, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TranscendentalPeriodUnits.CrystallineSemistableComparison, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.CstSmoothOfEtSide

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsTailAlt =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsTailAlt", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Rank\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Dimension.Constructions\npublic import Mathlib.LinearAlgebra.Matrix.NonsingularInverse\n\n"}
section -- clump:auto
@[expose] public section

theorem UpperTheory.Reformulated.B.Yra1.main.{u_1} :
    ∀ {F : Type u_1} [inst : Field F] {r a : ℕ} (M : Matrix (Fin r) (Fin a) F),
      (∀ (z : Fin a → F), M.mulVec z = (0 : Fin r → F) → z = (0 : Fin a → F)) →
        ∃ (e : Fin a → Fin r), (M.submatrix e id).det ≠ (0 : F) := by
  intro F _ r a M hM
  have hinj : Function.Injective M.mulVecLin := by
    rw [← LinearMap.ker_eq_bot, Matrix.ker_mulVecLin_eq_bot_iff]
    exact hM
  have hrank : M.rank = a := by
    rw [← Matrix.finrank_range_mulVecLin, LinearMap.finrank_range_of_inj hinj, Module.finrank_fin_fun]
  obtain ⟨κ, f, hf, hsp, hli⟩ := exists_linearIndependent' F M.row
  haveI : Finite κ := Finite.of_injective f hf
  letI : Fintype κ := Fintype.ofFinite κ
  have hcard : Fintype.card κ = a := by
    rw [← finrank_span_eq_card hli, hsp, ← Matrix.rank_eq_finrank_span_row, hrank]
  let eqv : κ ≃ Fin a := Fintype.equivFinOfCardEq hcard
  refine ⟨f ∘ eqv.symm, ?_⟩
  have hli2 : LinearIndependent F (M.submatrix (f ∘ eqv.symm) id).row := by
    have := hli.comp eqv.symm eqv.symm.injective
    have h : (M.submatrix (f ∘ eqv.symm) id).row = (M.row ∘ f) ∘ eqv.symm := by
      ext i j; rfl
    rw [h]; exact this
  have hu := Matrix.linearIndependent_rows_iff_isUnit.mp hli2
  exact ((Matrix.isUnit_iff_isUnit_det _).mp hu).ne_zero
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsTailAlt =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.AdmAbs =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.AdmAbs", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.Adjugate\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsTailAlt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.BigOperators.Field\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix

namespace CrystallineSemistableComparison.AdmAbs

variable {F : Type*} [Field F] {Γ : Type*} (σ : Γ → F →+* F) (S : Subring F) {X : Type*}

def Indep {r : ℕ} (w : Fin r → X → F) : Prop :=
  ∀ μ : Fin r → F, (∀ i, μ i ∈ S) → (∀ i g, σ g (μ i) = μ i) → (∀ x, ∑ i, μ i * w i x = 0) → μ = 0

theorem reduce (hfrac : ∀ x ∈ S, ∀ y ∈ S, ∀ w : F, w * y = x → y ≠ 0 → (∀ g, σ g w = w) → w ∈ S) :
    ∀ (r : ℕ) (w : Fin r → X → F), (∀ i x g, σ g (w i x) = w i x) →
    ∃ (r' : ℕ) (w' : Fin r' → X → F), (∀ i x g, σ g (w' i x) = w' i x) ∧ Indep σ S w' ∧
      ∀ β : Fin r → F, (∀ i, β i ∈ S) → ∃ β' : Fin r' → F, (∀ i, β' i ∈ S) ∧
        ∀ x, ∑ i, β i * w i x = ∑ i, β' i * w' i x := by
  intro r
  induction r with
  | zero =>
    intro w hw
    exact ⟨0, w, hw, fun μ _ _ _ => funext fun i => i.elim0, fun β hβ => ⟨β, hβ, fun _ => rfl⟩⟩
  | succ r ih =>
    intro w hw
    by_cases hI : Indep σ S w
    · exact ⟨r + 1, w, hw, hI, fun β hβ => ⟨β, hβ, fun _ => rfl⟩⟩
    · simp only [Indep, not_forall] at hI
      obtain ⟨μ, hμS, hμσ, hμw, hμ0⟩ := hI
      obtain ⟨i0, hi0⟩ : ∃ i0, μ i0 ≠ 0 := by
        by_contra h
        push Not at h
        exact hμ0 (funext h)
      obtain ⟨lam, hlamS, hw0⟩ : ∃ lam : Fin r → F, (∀ i, lam i ∈ S) ∧
          ∀ x, w i0 x = ∑ i, lam i * w (i0.succAbove i) x := by
        refine ⟨fun i => -μ (i0.succAbove i) / μ i0, fun i => ?_, fun x => ?_⟩
        · refine hfrac (-μ (i0.succAbove i)) (S.neg_mem (hμS _)) (μ i0) (hμS i0) _ ?_ hi0 ?_
          · exact div_mul_cancel₀ _ hi0
          · intro g
            rw [map_div₀, map_neg, hμσ, hμσ]
        · have h := hμw x
          rw [Fin.sum_univ_succAbove _ i0] at h
          have h' : μ i0 * w i0 x = -∑ i, μ (i0.succAbove i) * w (i0.succAbove i) x :=
            eq_neg_of_add_eq_zero_left h
          apply mul_left_cancel₀ hi0
          rw [h', Finset.mul_sum, ← Finset.sum_neg_distrib]
          refine Finset.sum_congr rfl fun i _ => ?_
          field_simp
      obtain ⟨r', w', hw', hI', hmap⟩ := ih (fun i => w (i0.succAbove i)) (fun i x g => hw _ x g)
      refine ⟨r', w', hw', hI', fun β hβ => ?_⟩
      obtain ⟨β', hβ', heq⟩ := hmap (fun i => β (i0.succAbove i) + β i0 * lam i)
        (fun i => S.add_mem (hβ _) (S.mul_mem (hβ _) (hlamS i)))
      have heq' : ∀ x, ∑ i, (β (i0.succAbove i) + β i0 * lam i) * w (i0.succAbove i) x =
          ∑ i, β' i * w' i x := heq
      refine ⟨β', hβ', fun x => ?_⟩
      rw [← heq' x, Fin.sum_univ_succAbove _ i0, hw0 x, Finset.mul_sum, ← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun i _ => ?_
      ring

theorem indep_S (hstab : ∀ g, ∀ x ∈ S, σ g x ∈ S)
    (hfrac : ∀ x ∈ S, ∀ y ∈ S, ∀ w : F, w * y = x → y ≠ 0 → (∀ g, σ g w = w) → w ∈ S)
    {r : ℕ} (w : Fin r → X → F) (hw : ∀ i x g, σ g (w i x) = w i x) (hI : Indep σ S w) :
    ∀ s : Fin r → F, (∀ i, s i ∈ S) → (∀ x, ∑ i, s i * w i x = 0) → s = 0 := by
  suffices h : ∀ T : Finset (Fin r), ∀ s : Fin r → F, (∀ i, s i ∈ S) → (∀ i ∉ T, s i = 0) →
      (∀ x, ∑ i, s i * w i x = 0) → s = 0 from
    fun s hs hsw => h Finset.univ s hs (fun i hi => absurd (Finset.mem_univ i) hi) hsw
  intro T
  induction T using Finset.strongInduction with
  | H T ih =>
  intro s hs hT hsw
  by_contra hne
  obtain ⟨i0, hi0⟩ : ∃ i0, s i0 ≠ 0 := by
    by_contra h
    push Not at h
    exact hne (funext h)
  have hi0T : i0 ∈ T := by
    by_contra h
    exact hi0 (hT i0 h)
  have key : ∀ g i, σ g (s i0) * s i = s i0 * σ g (s i) := by
    intro g
    have hsupp : ∀ i ∉ T.erase i0, σ g (s i0) * s i - s i0 * σ g (s i) = 0 := by
      intro i hi
      rcases eq_or_ne i i0 with rfl | h
      · ring
      · have h0 : s i = 0 := hT i fun hiT => hi (Finset.mem_erase.2 ⟨h, hiT⟩)
        rw [h0, map_zero]
        ring
    have hrel : ∀ x, ∑ i, (σ g (s i0) * s i - s i0 * σ g (s i)) * w i x = 0 := by
      intro x
      have h1 := hsw x
      have h2 : ∑ i, σ g (s i) * w i x = 0 := by
        have h3 := congrArg (σ g) h1

        rw [map_sum, map_zero] at h3
        simpa only [map_mul, hw] using h3
      calc ∑ i, (σ g (s i0) * s i - s i0 * σ g (s i)) * w i x
          = σ g (s i0) * ∑ i, s i * w i x - s i0 * ∑ i, σ g (s i) * w i x := by
            rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_sub_distrib]
            exact Finset.sum_congr rfl fun i _ => by ring
        _ = 0 := by rw [h1, h2]; ring
    have := ih (T.erase i0) (Finset.erase_ssubset hi0T) (fun i => σ g (s i0) * s i - s i0 * σ g (s i))
      (fun i => S.sub_mem (S.mul_mem (hstab g _ (hs i0)) (hs i)) (S.mul_mem (hs i0) (hstab g _ (hs i))))
      hsupp hrel
    intro i
    exact sub_eq_zero.1 (congr_fun this i)
  have hlam := hI (fun i => s i / s i0) (fun i => ?_) (fun i g => ?_) (fun x => ?_)
  · have h1 := congr_fun hlam i0
    simp only [div_self hi0, Pi.zero_apply] at h1
    exact one_ne_zero h1
  · refine hfrac (s i) (hs i) (s i0) (hs i0) _ (div_mul_cancel₀ _ hi0) hi0 fun g => ?_
    have hne' : σ g (s i0) ≠ 0 := (map_ne_zero (σ g)).2 hi0
    rw [map_div₀, div_eq_div_iff hne' hi0]
    linear_combination (-1 : F) * key g i
  · have hne' : σ g (s i0) ≠ 0 := (map_ne_zero (σ g)).2 hi0
    rw [map_div₀, div_eq_div_iff hne' hi0]
    linear_combination (-1 : F) * key g i
  · have : ∑ i, s i / s i0 * w i x = (∑ i, s i * w i x) / s i0 := by
      rw [Finset.sum_div]
      exact Finset.sum_congr rfl fun i _ => by ring
    rw [this, hsw x, zero_div]

omit [Field F] in
theorem det_mem' [Field F] (S : Subring F) {a : ℕ} (A : Matrix (Fin a) (Fin a) F) (hA : ∀ i j, A i j ∈ S) :
    A.det ∈ S ∧ ∀ i j, A.adjugate i j ∈ S := by
  have h : A = S.subtype.mapMatrix (Matrix.of fun i j => (⟨A i j, hA i j⟩ : S)) := by
    ext i j
    rfl
  refine ⟨?_, fun i j => ?_⟩
  · rw [h, ← RingHom.map_det]
    exact SetLike.coe_mem _
  · rw [h, ← RingHom.map_adjugate]
    exact SetLike.coe_mem _

theorem admissible_of_absolute (hstab : ∀ g, ∀ x ∈ S, σ g x ∈ S)
    (hfrac : ∀ x ∈ S, ∀ y ∈ S, ∀ w : F, w * y = x → y ≠ 0 → (∀ g, σ g w = w) → w ∈ S)
    {a r : ℕ} (ρ : Γ → Matrix (Fin a) (Fin a) F) (hρS : ∀ g i j, ρ g i j ∈ S)
    (heig : ∀ x ∈ S, x ≠ 0 → (∀ g, σ g x = (ρ g).det * x) → ∃ y ∈ S, x * y = 1)
    (c : Fin a → X → F) (hcσ : ∀ g j x, σ g (c j x) = ∑ k, ρ g k j * c k x)
    (hcinj : ∀ z : Fin a → F, (∀ x, ∑ j, z j * c j x = 0) → z = 0)
    (w : Fin r → X → F) (hw : ∀ i x g, σ g (w i x) = w i x)
    (hspan : ∀ j, ∃ β : Fin r → F, (∀ i, β i ∈ S) ∧ ∀ x, c j x = ∑ i, β i * w i x) :
    ∃ P Q : Matrix (Fin a) (Fin a) F, (∀ i j, P i j ∈ S ∧ Q i j ∈ S) ∧ P * Q = 1 ∧
      ∀ g, ρ g * P.map (σ g) = P := by
  obtain ⟨r', w', hw', hI', hmap⟩ := reduce σ S hfrac r w hw
  have hsp' : ∀ j, ∃ β : Fin r' → F, (∀ i, β i ∈ S) ∧ ∀ x, c j x = ∑ i, β i * w' i x := by
    intro j
    obtain ⟨β, hβ, hc⟩ := hspan j
    obtain ⟨β', hβ', he⟩ := hmap β hβ
    exact ⟨β', hβ', fun x => (hc x).trans (he x)⟩
  choose β hβS hβc using hsp'
  have hβσ : ∀ g i j, σ g (β j i) = ∑ k, β k i * ρ g k j := by
    intro g i j
    have h := indep_S σ S hstab hfrac w' hw' hI' (fun i => σ g (β j i) - ∑ k, β k i * ρ g k j)
      (fun i => S.sub_mem (hstab g _ (hβS j i)) (sum_mem fun k _ => S.mul_mem (hβS k i) (hρS g k j)))
      (fun x => by
        have e1 : σ g (c j x) = ∑ i, σ g (β j i) * w' i x := by

          rw [hβc j x, map_sum]
          simp only [map_mul, hw']
        have e2 : ∑ k, ρ g k j * c k x = ∑ i, (∑ k, β k i * ρ g k j) * w' i x := by
          simp only [hβc _ x, Finset.mul_sum, Finset.sum_mul]
          rw [Finset.sum_comm]
          exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun k _ => by ring
        simp only [sub_mul, Finset.sum_sub_distrib]
        rw [← e1, ← e2, hcσ, sub_self])
    exact sub_eq_zero.1 (congr_fun h i)
  obtain ⟨e, he⟩ := _root_.UpperTheory.Reformulated.B.Yra1.main (Matrix.of fun i j => β j i) fun z hz => hcinj z fun x => by
    have h0 : ∀ i, ∑ j, β j i * z j = 0 := fun i => by
      have := congr_fun hz i
      simpa [Matrix.mulVec, dotProduct] using this
    calc ∑ j, z j * c j x = ∑ i, (∑ j, β j i * z j) * w' i x := by
          simp only [hβc _ x, Finset.mul_sum, Finset.sum_mul]
          rw [Finset.sum_comm]
          exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by ring
      _ = 0 := by simp [h0]
  let Q : Matrix (Fin a) (Fin a) F := Matrix.of fun k j => β j (e k)
  have hQS : ∀ i j, Q i j ∈ S := fun i j => hβS _ _
  have hQ : Q.det ≠ 0 := he
  have hQσ : ∀ g, Q.map (σ g) = Q * ρ g := by
    intro g
    ext k j
    simp only [Matrix.map_apply, Matrix.mul_apply, Q, Matrix.of_apply]
    exact hβσ g (e k) j
  obtain ⟨hdS, hadjS⟩ := det_mem' S Q hQS
  obtain ⟨y, hyS, hy⟩ := heig Q.det hdS hQ fun g => by
    rw [RingHom.map_det, RingHom.mapMatrix_apply, hQσ g, Matrix.det_mul, mul_comm]
  let P : Matrix (Fin a) (Fin a) F := y • Q.adjugate
  have hPQ : P * Q = 1 := by
    simp only [P, Matrix.smul_mul, Matrix.adjugate_mul, smul_smul, mul_comm y, hy, one_smul]
  have hQP : Q * P = 1 := by
    simp only [P, Matrix.mul_smul, Matrix.mul_adjugate, smul_smul, mul_comm y, hy, one_smul]
  refine ⟨P, Q, fun i j => ⟨?_, hQS i j⟩, hPQ, fun g => ?_⟩
  · simp only [P, Matrix.smul_apply, smul_eq_mul]
    exact S.mul_mem hyS (hadjS i j)
  · have h1 : Q.map (σ g) * P.map (σ g) = 1 := by
      rw [← Matrix.map_mul, hQP]
      exact Matrix.map_one _ (map_zero _) (map_one _)
    calc ρ g * P.map (σ g) = (P * Q) * (ρ g * P.map (σ g)) := by rw [hPQ, Matrix.one_mul]
      _ = P * ((Q * ρ g) * P.map (σ g)) := by simp only [Matrix.mul_assoc]
      _ = P * (Q.map (σ g) * P.map (σ g)) := by rw [hQσ g]
      _ = P := by rw [h1, Matrix.mul_one]

end CrystallineSemistableComparison.AdmAbs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.AdmAbs =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.admitted =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.admitted", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AbsProps\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.AdmAbs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

namespace CrystallineSemistableComparison

theorem adm : ComparisonAdmissible := by
  intro l _ K R G P S hR M hG n hInj hSpan a b
  obtain ⟨r, w, hw, hsp⟩ := hSpan
  have hcσ : ∀ (g : K.fixingSubgroup) (j : Fin a) (φ : Module.Dual K (HdR M.q n)),
      R.σ g (P.c M n (b j) φ) = ∑ k, (M.mat n b g).map R.q k j * P.c M n (b k) φ := by
    intro g j φ
    rw [← P.equi M n hG g (b j) φ]
    have hact : M.act n g (b j) = ∑ k, M.mat n b g k j • b k := by
      conv_lhs => rw [← Matrix.toLin_toMatrix b b (M.act n g)]
      exact Matrix.toLin_self b b _ j

    rw [hact, map_sum, AddMonoidHom.finsetSum_apply]
    simp only [P.lin, Matrix.map_apply]
  exact AdmAbs.admissible_of_absolute (fun g => R.σ g) S hR.stab hR.frac (fun g => (M.mat n b g).map R.q)
    (fun g i j => hR.q_mem _)
    (fun x hx hx0 h => hR.eig x hx hx0 fun g =>
      ⟨(M.mat n b g).det, by rw [h g, RingHom.map_det, RingHom.mapMatrix_apply]⟩)
    (fun j φ => P.c M n (b j) φ) hcσ (fun z h => hInj b z h) w (fun i x g => hw i x g)
    (fun j => hsp (b j))

end CrystallineSemistableComparison
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.admitted =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TranscendentalPeriodUnits.CrystallineSemistableComparison =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TranscendentalPeriodUnits.CrystallineSemistableComparison", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BcrisRegularPeriodRing\npublic import GroundTheory.PAdicHodge.BCrisPlusInvariants\npublic import GroundTheory.PAdicHodge.BCrisRegular\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TranscendentalPeriodUnits.CrBase\nimport GroundTheory.PAdicHodge.BCrisNewton\npublic import GroundTheory.PAdicHodge.BCrisRegularFinal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open Formalism.Per6 GroundTheory.PAdicHodge DeRhamPotentiallySemistable.DRPst

namespace CrystallineSemistableComparison

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

local notation "ιB" =>
  ACris.iotaB (untilt_epsilon (p := l)) untilt_frobeniusEquiv_symm_epsilon_ne_one

theorem fix_of_σD {x : BdR l} (h : ∀ g : K.fixingSubgroup, σD g.1 x = x) (σ : Gal(PadicAlgCl l/K)) : σ • x = x := by
  have e := h ((IntermediateField.fixingSubgroupEquiv K).symm σ)
  have e2 : σD ((IntermediateField.fixingSubgroupEquiv K).symm σ).1 x =
      galBdRField (IntermediateField.fixingSubgroupEquiv K ((IntermediateField.fixingSubgroupEquiv K).symm σ)) x := rfl
  rw [e2, MulEquiv.apply_symm_apply] at e
  exact e


theorem bcr_frac [FiniteDimensional ℚ_[l] K] (x : BdR l) (hx : x ∈ Bcr l) (y : BdR l) (hy : y ∈ Bcr l) (w : BdR l)
    (hwy : w * y = x) (hy0 : y ≠ 0) (hw : ∀ g : K.fixingSubgroup, σD g.1 w = w) : w ∈ Bcr l := by
  rw [bcr_eq] at hx hy ⊢
  obtain ⟨a, rfl⟩ := hx
  obtain ⟨b, rfl⟩ := hy
  have hwF : w ∈ ACris.fracBCris (untilt_epsilon (p := l)) untilt_frobeniusEquiv_symm_epsilon_ne_one := by
    rw [eq_div_of_mul_eq hy0 hwy]
    exact div_mem (ACris.iotaB_mem_fracBCris _ _ a) (ACris.iotaB_mem_fracBCris _ _ b)
  obtain ⟨k, hk, rfl⟩ := ACris.fracBCris_fixed (K := K) _ _ hwF (fix_of_σD hw)
  obtain ⟨c, -, hc⟩ := ACris.exists_bCris_fixed (K := K) (untilt_epsilon (p := l))
    untilt_frobeniusEquiv_symm_epsilon_ne_one hk
  exact ⟨c, hc⟩

theorem all_of_σD {P : BdR l → Prop} {x : BdR l} (h : ∀ g : K.fixingSubgroup, P (σD g.1 x))
    (σ : Gal(PadicAlgCl l/K)) : P (σ • x) := by
  have e := h ((IntermediateField.fixingSubgroupEquiv K).symm σ)
  have e2 : σD ((IntermediateField.fixingSubgroupEquiv K).symm σ).1 x =
      galBdRField (IntermediateField.fixingSubgroupEquiv K ((IntermediateField.fixingSubgroupEquiv K).symm σ)) x := rfl
  rw [e2, MulEquiv.apply_symm_apply] at e
  exact e


theorem galB_eigen (b : ACris.BCris (untilt_epsilon (p := l)))
    (he : ∀ σ : Gal(PadicAlgCl l/K), ∃ z : ℚ_[l], σ • ιB b = qQ l z * ιB b) (σ : Gal(PadicAlgCl l/K)) :
    ∃ q : ℚ_[l], ACris.galB (untilt_epsilon (p := l)) σ b =
      algebraMap ℚ_[l] (ACris.BCris (untilt_epsilon (p := l))) q * b := by
  obtain ⟨z, hz⟩ := he σ
  have hz' : ιB (ACris.galB (untilt_epsilon (p := l)) σ b) =
      ιB (algebraMap ℚ_[l] (ACris.BCris (untilt_epsilon (p := l))) z * b) :=
    ((ACris.iotaB_galB _ _ σ b).trans hz).trans ((map_mul ιB _ b).trans (congrArg (· * ιB b) (iotaB_padic z))).symm
  exact ⟨z, ACris.iotaB_injective (untilt_epsilon (p := l)) untilt_frobeniusEquiv_symm_epsilon_ne_one hz'⟩


theorem bcr_eig [FiniteDimensional ℚ_[l] K] (x : BdR l) (hx : x ∈ Bcr l) (hx0 : x ≠ 0)
    (he : ∀ g : K.fixingSubgroup, ∃ z : ℚ_[l], σD g.1 x = qQ l z * x) : ∃ y ∈ Bcr l, x * y = 1 := by
  rw [bcr_eq] at hx
  obtain ⟨b, rfl⟩ := hx
  have hb0 : b ≠ 0 := by
    rintro rfl
    exact hx0 (map_zero _)
  obtain ⟨u, hu⟩ := ACris.isUnit_of_galB_eigen (K := K) (untilt_epsilon (p := l))
    untilt_frobeniusEquiv_symm_epsilon_ne_one hb0
    (galB_eigen b (all_of_σD (P := fun y => ∃ z : ℚ_[l], y = qQ l z * ιB b) he))
  refine ⟨ιB ↑u⁻¹, ?_, ?_⟩
  · rw [bcr_eq]
    exact ⟨_, rfl⟩
  · rw [← hu, ← map_mul, Units.mul_inv, map_one]

theorem regCr : BcrisRegularPeriodRing := by
  intro l _ K _
  exact
    { q_mem := q_mem_bcr
      stab := fun g x hx => bcr_stab g x hx
      frac := fun x hx y hy w hwy hy0 hw => bcr_frac x hx y hy w hwy hy0 hw
      eig := fun x hx hx0 he => bcr_eig x hx hx0 he }

end CrystallineSemistableComparison
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TranscendentalPeriodUnits.CrystallineSemistableComparison =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.CstSmoothOfEtSide =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.CstSmoothOfEtSide", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.CstSmoothOf\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.Imports\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.admitted\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.PhiMain\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.PrepairingEtaleValue\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TranscendentalPeriodUnits.CrystallineSemistableComparison\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TranscendentalPeriodUnits.IsUOfIsUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct
open GroundTheory.PAdicHodge Formalism.Per6 DeRhamPotentiallySemistable.DRPst

namespace CrystallineSemistableComparison

def EtSideS : Prop := ∀ (l : ℕ) [Fact l.Prime] (K : IntermediateField ℚ_[l] (PadicAlgCl l)) [FiniteDimensional ℚ_[l] K],
  EtSide (Model.Sm (l := l) (K := K))

theorem cstSmooth_of_etSide (gL : GlueL) (gE : GlueE) (gB : GlueB) (hC : BcrisPeriodFacts) (hX : ResEx)
    (hI : EtSideS) (h : Chapters) : CstSmooth := by
  have hS : SeamS := by
    intro l _ K _
    obtain ⟨Amp, h1, h2, h3, h4⟩ := h.p l K
    obtain ⟨β, β₁, e⟩ := gB l K Amp (h.main l) (h.compat l) (h.c1 l)
    obtain ⟨r⟩ := hX l K
    obtain ⟨F⟩ := h4 r
    refine ⟨dat Amp, ⟨gL l K Amp (h.compatH l) (h.rin l) h.uniq h1 h2, gE l K Amp (h.et l K), ⟨β⟩, h3⟩, ?_⟩
    rw [← e] at F
    have := fac l K _ _ _ _ _ β β₁ F
    rwa [hC l K r] at this
  intro l _ K _ M hM hs n a b
  obtain ⟨D, ⟨hL, ⟨e⟩, ⟨β⟩, ⟨κ⟩⟩, hsp⟩ := hS l K
  obtain ⟨P, hP⟩ := pre l K _ _ D (facts l K) (hI l K) hL e β κ
  exact adm l K _ _ P _ (regCr l K) M ⟨hM, hs⟩ n (inj l K _ _ P (facts l K) (hI l K) M ⟨hM, hs⟩ n).1
    (hP _ _ (t_inv_mem l) (regCr l K).q_mem hsp M ⟨hM, hs⟩ ⟨hM, hs⟩ n) a b

end CrystallineSemistableComparison
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.CstSmoothOfEtSide =====
