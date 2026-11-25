module

public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.CompRevRev
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.QuotientHighestWeightTensorStandard
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.K2V
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.WeightVectorTensorEqDual

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.TensVdApply, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.DualLowestKTypeOfStandard, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.K2Vd

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.TensVdApply =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.TensVdApply", "h": "module\n\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.WeightVectorTensorEqDual\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.CompRevRev\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.QuotientHighestWeightTensorStandard\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset

namespace ReciprocityTheory.ChartRestriction.DS.Lap.LemK.TwistedDualLemmas

open ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.Lap ReciprocityTheory.ChartRestriction.DS.Lap.LemK

variable {n : ℕ}

section Tens

variable {M : Type*} [AddCommGroup M] [Module ℂ M]

theorem tensV_apply' (E : Fin n → Fin n → Module.End ℂ M) (a b : Fin n) (f : Fin n → M) (c : Fin n) :
    tensV E a b f c = E a b (f c) + (if c = a then f b else 0) := by
  simp only [tensV, LinearMap.pi_apply, LinearMap.add_apply, LinearMap.comp_apply]
  split_ifs <;> simp [prj]

theorem tensVd_apply' (E : Fin n → Fin n → Module.End ℂ M) (a b : Fin n) (f : Fin n → M) (c : Fin n) :
    tensVd E a b f c = E a b (f c) - (if c = b then f a else 0) := by
  simp only [tensVd, LinearMap.pi_apply, LinearMap.sub_apply, LinearMap.comp_apply]
  split_ifs <;> simp [prj]

theorem eeV_apply' (E : Fin n → Fin n → Module.End ℂ M) (f : Fin n → M) (d : Fin n) :
    eeV E f d = ∑ c, E c d (f c) := by
  simp [eeV, prj, LinearMap.sum_apply]

theorem eeVd_apply' (E : Fin n → Fin n → Module.End ℂ M) (f : Fin n → M) (d : Fin n) :
    eeVd E f d = -∑ c, E d c (f c) := by
  simp [eeVd, prj, LinearMap.sum_apply]

def twT (ε : Fin n → Bool) : (Fin n → M) →ₗ[ℂ] (Fin n → M) :=
  LinearMap.pi fun c => sg ε (Fin.rev c) • prj (Fin.rev c)

theorem twT_apply (ε : Fin n → Bool) (f : Fin n → M) (c : Fin n) :
    twT ε f c = sg ε (Fin.rev c) • f (Fin.rev c) := by
  simp [twT, prj]

theorem twT_eq_zero {ε : Fin n → Bool} {f : Fin n → M} (h : twT ε f = 0) : f = 0 := by
  funext c
  have := congrFun h (Fin.rev c)
  rw [twT_apply, Fin.rev_rev] at this
  exact (smul_eq_zero.1 this).resolve_left (sg_ne ε c)

theorem twT_tens (ε : Fin n → Bool) (E : Fin n → Fin n → Module.End ℂ M) (a b : Fin n) (f : Fin n → M) :
    tensV (twE ε E) a b (twT ε f) = twT ε (twE ε (tensVd E) a b f) := by
  funext c
  rw [tensV_apply', twT_apply, twT_apply, twE_apply, twE_apply, map_smul (twT ε), Pi.smul_apply,
    twT_apply, tensVd_apply', map_smul]
  simp only [Fin.rev_inj]
  by_cases hc : c = a
  · subst hc
    simp only [if_true]
    unfold sg; split_ifs <;> module
  · simp [hc]

theorem twT_ee (ε : Fin n → Bool) (E : Fin n → Fin n → Module.End ℂ M) (f : Fin n → M) :
    eeV (twE ε E) (twT ε f) = twT ε (eeVd E f) := by
  funext d
  rw [eeV_apply', twT_apply, eeVd_apply', smul_neg, Finset.smul_sum,
    ← sum_rev (fun c => sg ε (Fin.rev d) • E (Fin.rev d) c (f c)), ← Finset.sum_neg_distrib]
  refine Finset.sum_congr rfl fun c _ => ?_
  rw [twT_apply, twE_apply, map_smul, smul_smul, ← neg_smul]
  congr 1
  linear_combination (-sg ε (Fin.rev d)) * sg_sq ε (Fin.rev c)

theorem mem_Xs {A : Module.End ℂ (Fin n → M)} {S : Submodule ℂ M} {θ : ℝ} {f : Fin n → M} :
    f ∈ Xs A S θ ↔ (∀ c, f c ∈ S) ∧ A f = ((θ : ℝ) : ℂ) • f := by
  simp [Xs, Submodule.mem_inf, Submodule.mem_pi, LinearMap.mem_ker, sub_eq_zero]

theorem xs_tw {ε : Fin n → Bool} {E : Fin n → Fin n → Module.End ℂ M} {S : Submodule ℂ M} {θ : ℝ}
    {f : Fin n → M} (h : f ∈ Xs (eeVd E) S θ) : twT ε f ∈ Xs (eeV (twE ε E)) S θ := by
  rw [mem_Xs] at h ⊢
  refine ⟨fun c => ?_, ?_⟩
  · rw [twT_apply]; exact S.smul_mem _ (h.1 _)
  · rw [twT_ee, h.2, map_smul]

theorem khwT_tw {ε : Fin n → Bool} {E : Fin n → Fin n → Module.End ℂ M} {μ : Fin n → ℝ}
    {f : Fin n → M} (h : IsKHWVec ε (tensVd E) μ f) :
    IsKHWVec (ε ∘ Fin.rev) (tensV (twE ε E)) (fun a => -μ (Fin.rev a)) (twT ε f) := by
  have h' := khw_tw h
  exact ⟨fun a => by rw [twT_tens, h'.1, map_smul], fun a b hab he => by
    rw [twT_tens, h'.2 a b hab he, map_zero]⟩

end Tens

section Wt

theorem rhoN_tw (ε : Fin n → Bool) (a : Fin n) : rhoN (ε ∘ Fin.rev) a = -rhoN ε (Fin.rev a) := by
  apply ReciprocityTheory.ChartRestriction.DS.Lap.LemK.DualRepresentationReversal.rhoN_rev

theorem rhoC_tw (ε : Fin n → Bool) (a : Fin n) : rhoC (ε ∘ Fin.rev) a = -rhoC ε (Fin.rev a) := by
  apply ReciprocityTheory.ChartRestriction.DS.Lap.LemK.DualRepresentationReversal.rhoC_rev

theorem lowK_tw (ε : Fin n → Bool) (ν : Fin n → ℝ) :
    lowK (ε ∘ Fin.rev) (fun a => -ν (Fin.rev a)) = fun a => -lowK ε ν (Fin.rev a) := by
  funext a
  simp only [lowK, Pi.add_apply, Pi.sub_apply, rhoN_tw, rhoC_tw]
  ring

theorem casVal_tw (lam : Fin n → ℝ) : casVal (fun a => -lam (Fin.rev a)) = casVal lam := by
  unfold casVal nsq dot
  simp only [neg_mul_neg]
  rw [sum_rev (fun a => lam a * lam a)]

theorem pOf_tw (ε : Fin n → Bool) : pOf (ε ∘ Fin.rev) = pOf ε := by
  unfold pOf
  refine Finset.card_nbij' Fin.rev Fin.rev ?_ ?_ ?_ ?_ <;> intro b hb <;> simp_all

theorem qOf_tw (ε : Fin n → Bool) : qOf (ε ∘ Fin.rev) = qOf ε := by
  unfold qOf
  refine Finset.card_nbij' Fin.rev Fin.rev ?_ ?_ ?_ ?_ <;> intro b hb <;> simp_all

theorem gapLap_tw {ε : Fin n → Bool} {lam : Fin n → ℝ} {h : ℝ} (hg : GapLap ε lam h) :
    GapLap (ε ∘ Fin.rev) (fun a => -lam (Fin.rev a)) h := by
  obtain ⟨h1, h2, h3⟩ := hg
  refine ⟨fun a b hab => ?_, fun a b hab => ?_, ?_⟩
  · have := h1 (Fin.rev_lt_rev.2 hab)
    simp only; linarith
  · have := h2 (Fin.rev a) (Fin.rev b) hab
    rw [abs_sub_comm] at this
    simp only; rwa [neg_sub_neg]
  · have e : hNeed (ε ∘ Fin.rev) = hNeed ε := by unfold hNeed; rw [pOf_tw, qOf_tw]
    rw [e]; exact h3

theorem root_rev (a b x : Fin n) : root (Fin.rev b) (Fin.rev a) x = -root a b (Fin.rev x) := by
  have e : ∀ i j : Fin n, (j = Fin.rev i ↔ Fin.rev j = i) := fun i j => by
    constructor <;> rintro rfl <;> simp
  simp only [root, Pi.sub_apply, Pi.single_apply, e]
  ring

theorem cone_ev (k : Fin n → Fin n → ℕ) (y : Fin n) :
    (∑ a, ∑ b, if a < b then (k a b : ℝ) • root a b else 0) y =
      ∑ a, ∑ b, if a < b then (k a b : ℝ) * root a b y else 0 := by
  simp only [Finset.sum_apply]
  refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
  split_ifs <;> simp

theorem cone_rev {β : Fin n → ℝ} (h : InRootCone (fun a => -β (Fin.rev a))) : InRootCone β := by
  obtain ⟨m, hm⟩ := h
  refine ⟨fun a b => m (Fin.rev b) (Fin.rev a), ?_⟩
  funext x
  have hx := congrFun hm (Fin.rev x)
  simp only [Fin.rev_rev] at hx
  rw [cone_ev] at hx
  rw [cone_ev, show β x = -(-β x) by ring, hx, ← sum_rev, ← Finset.sum_neg_distrib]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun b _ => ?_
  rw [← sum_rev, ← Finset.sum_neg_distrib]
  refine Finset.sum_congr rfl fun a _ => ?_
  simp only [Fin.rev_rev, Fin.rev_lt_rev, root_rev]
  split_ifs <;> ring

end Wt

end ReciprocityTheory.ChartRestriction.DS.Lap.LemK.TwistedDualLemmas
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.TensVdApply =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.DualLowestKTypeOfStandard =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.DualLowestKTypeOfStandard", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.CompRevRev\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.QuotientHighestWeightTensorStandard\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.TensVdApply\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset Matrix

namespace ReciprocityTheory.ChartRestriction.DS.Lap.LemK.TwistedDualLemmas

open ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.Lap ReciprocityTheory.ChartRestriction.DS.Lap.LemK

variable {n : ℕ}

def phiR : Matrix (Fin n) (Fin n) ℂ →+* Matrix (Fin n) (Fin n) ℂ :=
  (Matrix.reindexRingEquiv (R := ℂ) (e := (Fin.revPerm : Fin n ≃ Fin n))).toRingHom.comp
    (starRingEnd ℂ).mapMatrix

theorem phiR_apply (g : Matrix (Fin n) (Fin n) ℂ) (i j : Fin n) :
    phiR g i j = star (g (Fin.rev i) (Fin.rev j)) := by
  simp [phiR, Matrix.reindexRingEquiv, Fin.revPerm_symm]

theorem phiR_phiR (g : Matrix (Fin n) (Fin n) ℂ) : phiR (phiR g) = g := by
  ext i j; simp [phiR_apply]

theorem phiR_conjT (g : Matrix (Fin n) (Fin n) ℂ) : phiR gᴴ = (phiR g)ᴴ := by
  ext i j; simp [phiR_apply, conjTranspose_apply]

theorem phiR_J (ε : Fin n → Bool) : phiR (Jm (ε ∘ Fin.rev)) = Jm ε := by
  ext i j
  by_cases h : i = j
  · subst h; simp [phiR_apply, Jm]; split_ifs <;> simp
  · simp [phiR_apply, Jm, h]

theorem phiR_smul_real (t : ℝ) (X : Matrix (Fin n) (Fin n) ℂ) :
    phiR ((t : ℂ) • X) = (t : ℂ) • phiR X := by
  ext i j; simp [phiR_apply]

theorem phiR_cont : Continuous (phiR : Matrix (Fin n) (Fin n) ℂ → Matrix (Fin n) (Fin n) ℂ) := by
  have : (phiR : Matrix (Fin n) (Fin n) ℂ → Matrix (Fin n) (Fin n) ℂ) =
      fun g => (g.submatrix Fin.rev Fin.rev).map star := by
    funext g; ext i j; simp [phiR_apply]
  rw [this]
  exact (continuous_id.matrix_submatrix _ _).matrix_map continuous_star

theorem phiR_exp (A : Matrix (Fin n) (Fin n) ℂ) : phiR (NormedSpace.exp A) = NormedSpace.exp (phiR A) := by
  simp only [NormedSpace.exp_eq_tsum_rat]
  rw [Function.LeftInverse.map_tsum (g := (phiR : Matrix (Fin n) (Fin n) ℂ →+* Matrix (Fin n) (Fin n) ℂ))
    _ phiR_cont phiR_cont phiR_phiR]
  simp only [map_rat_smul, map_pow]

theorem phiR_UJ {ε : Fin n → Bool} {g : Matrix (Fin n) (Fin n) ℂ} (hg : g ∈ UJset (ε ∘ Fin.rev)) :
    phiR g ∈ UJset ε := by
  have hg' : gᴴ * Jm (ε ∘ Fin.rev) * g = Jm (ε ∘ Fin.rev) := hg
  show (phiR g)ᴴ * Jm ε * phiR g = Jm ε
  rw [← phiR_conjT, ← phiR_J, ← map_mul, ← map_mul, hg']

theorem phiR_K {ε : Fin n → Bool} {k : Matrix (Fin n) (Fin n) ℂ} (hk : k ∈ Kset (ε ∘ Fin.rev)) :
    phiR k ∈ Kset ε := by
  obtain ⟨hu, hc⟩ := hk
  refine ⟨?_, ?_⟩
  · rw [Matrix.mem_unitaryGroup_iff, Matrix.star_eq_conjTranspose] at hu ⊢
    rw [← phiR_conjT, ← map_mul, hu, map_one]
  · rw [← phiR_J, ← map_mul, hc, map_mul]

theorem phiR_G {ε : Fin n → Bool} {X : Matrix (Fin n) (Fin n) ℂ} (hX : inG (ε ∘ Fin.rev) X) :
    inG ε (phiR X) := by
  have h : Xᴴ * Jm (ε ∘ Fin.rev) + Jm (ε ∘ Fin.rev) * X = 0 := hX
  show (phiR X)ᴴ * Jm ε + Jm ε * phiR X = 0
  rw [← phiR_conjT, ← phiR_J, ← map_mul, ← map_mul, ← map_add (f := _), h, map_zero]

theorem actM_tw {M : Type*} [AddCommGroup M] [Module ℂ M] {ε : Fin n → Bool}
    (E : Fin n → Fin n → Module.End ℂ M) {X : Matrix (Fin n) (Fin n) ℂ} (hX : inG (ε ∘ Fin.rev) X) :
    actM E (phiR X) = actM (twE ε E) X := by
  have h : Xᴴ * Jm (ε ∘ Fin.rev) + Jm (ε ∘ Fin.rev) * X = 0 := hX
  have key : ∀ a b, star (X b a) = -(sg ε (Fin.rev a) * sg ε (Fin.rev b)) * X a b := by
    intro a b
    have e := congrFun (congrFun h a) b
    simp only [Jm, Matrix.add_apply, Matrix.mul_diagonal, Matrix.diagonal_mul,
      Matrix.conjTranspose_apply, Matrix.zero_apply] at e
    change star (X b a) * sg ε (Fin.rev b) + sg ε (Fin.rev a) * X a b = 0 at e
    linear_combination (sg ε (Fin.rev b)) * e - star (X b a) * sg_sq ε (Fin.rev b)
  show ∑ a, ∑ b, (phiR X) a b • E a b = ∑ a, ∑ b, X a b • twE ε E a b
  calc ∑ a, ∑ b, (phiR X) a b • E a b
      = ∑ a, ∑ b, (phiR X) (Fin.rev a) (Fin.rev b) • E (Fin.rev a) (Fin.rev b) := by
        rw [← sum_rev (fun a => ∑ b, (phiR X) a b • E a b)]
        refine Finset.sum_congr rfl fun a _ => ?_
        exact (sum_rev (fun b => (phiR X) (Fin.rev a) b • E (Fin.rev a) b)).symm
    _ = ∑ b, ∑ a, (phiR X) (Fin.rev a) (Fin.rev b) • E (Fin.rev a) (Fin.rev b) := Finset.sum_comm
    _ = ∑ a, ∑ b, X a b • twE ε E a b := by
        refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
        rw [phiR_apply, Fin.rev_rev, Fin.rev_rev, key]
        simp only [twE, smul_smul]
        congr 1; ring

section Rep

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

theorem urep_tw {ε : Fin n → Bool} {σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)}
    (hσ : IsURepOn (UJset ε) σ) : IsURepOn (UJset (ε ∘ Fin.rev)) (fun g => σ (phiR g)) := by
  obtain ⟨⟨h1, h2⟩, h3, h4⟩ := hσ
  refine ⟨⟨?_, fun a ha b hb => ?_⟩, fun g hg v => h3 _ (phiR_UJ hg) v, fun v => ?_⟩
  · simp only [map_one, h1]
  · simp only [map_mul]; exact h2 _ (phiR_UJ ha) _ (phiR_UJ hb)
  · exact (h4 v).comp phiR_cont.continuousOn (fun g hg => phiR_UJ hg)

theorem derived_tw {ε : Fin n → Bool} {σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)} {D : Submodule ℂ H}
    {E : Fin n → Fin n → Module.End ℂ D} (hD : IsDerivedOn ε σ D E) :
    IsDerivedOn (ε ∘ Fin.rev) (fun g => σ (phiR g)) D (twE ε E) := by
  refine ⟨twE_gl hD.glRep, ?_, ?_⟩
  · intro k hk v hv
    exact hD.kStable (phiR k) (phiR_K hk) v hv
  · intro X hX v
    have := hD.deriv (phiR X) (phiR_G hX) v
    rw [actM_tw E hX] at this
    have hf : (fun t : ℝ => σ (phiR (NormedSpace.exp ((t : ℂ) • X))) (v : H)) =
        fun t : ℝ => σ (NormedSpace.exp ((t : ℂ) • phiR X)) (v : H) := by
      funext t; rw [phiR_exp, phiR_smul_real]
    show HasDerivAt (fun t : ℝ => σ (phiR (NormedSpace.exp ((t : ℂ) • X))) (v : H)) _ 0
    rw [hf]; exact this

end Rep

theorem dualLowestKType_of_standard (hK : EigenspaceWeightConeStandard n) : EigenspaceWeightConeDual n := by
  intro ε lam h H _ _ _ σ D E V s hσ hD hV hc hVK hint hanti hgap hp hq
  have hV' : IsKIrrHW (ε ∘ Fin.rev) (twE ε E) (lowK (ε ∘ Fin.rev) (fun a => -lam (Fin.rev a))) V := by
    rw [lowK_tw]; exact kirr_tw hV
  have hc' : ∀ v ∈ V, casimir (twE ε E) v = (casVal (fun a => -lam (Fin.rev a)) : ℂ) • v := by
    intro v hv; rw [casimir_twE, casVal_tw]; exact hc v hv
  have hint' : ∀ a, ∃ m : ℤ, (fun a => -lam (Fin.rev a)) a - ((n : ℝ) - 1) / 2 = (m : ℝ) := by
    intro a
    obtain ⟨m, hm⟩ := hint (Fin.rev a)
    refine ⟨-m - ((n : ℤ) - 1), ?_⟩
    push_cast
    linarith
  have hgap' := gapLap_tw hgap
  obtain ⟨K1, K2⟩ := hK (ε ∘ Fin.rev) (fun a => -lam (Fin.rev a)) h H (fun g => σ (phiR g)) D (twE ε E) V
    (Fin.rev s) (urep_tw hσ) (derived_tw hD) hV' hc' (fun k hk v hv => hVK _ (phiR_K hk) v hv) hint'
    hgap'.1 hgap' (by rwa [pOf_tw]) (by rwa [qOf_tw])
  have hθ : thV (fun a => -lam (Fin.rev a)) (Fin.rev s) = thVd lam s := by simp [thV, thVd]
  have hG : genSub (twE ε E) V = genSub E V := genSub_tw ε E V
  have hW : lowK (ε ∘ Fin.rev) ((fun a => -lam (Fin.rev a)) + Pi.single (Fin.rev s) 1) =
      fun a => -lowK ε (lam - Pi.single s 1) (Fin.rev a) := by
    rw [← lowK_tw]
    congr 1
    funext a
    have e : (a = Fin.rev s ↔ Fin.rev a = s) :=
      ⟨fun h => by rw [h, Fin.rev_rev], fun h => by rw [← h, Fin.rev_rev]⟩
    simp only [Pi.add_apply, Pi.sub_apply, Pi.single_apply, e]
    ring
  refine ⟨fun μ f hf hf0 hμ => ?_, fun f₁ f₂ h1 h2 hw1 hw2 => ?_⟩
  · have hf' := xs_tw (ε := ε) hf
    rw [← hθ, ← hG] at hf'
    have := K1 (fun a => -μ (Fin.rev a)) (twT ε f) hf' (fun h0 => hf0 (twT_eq_zero h0)) (khwT_tw hμ)
    rw [hW] at this
    apply cone_rev
    convert this using 1
    funext a
    simp only [Pi.sub_apply]
    ring
  · have h1' := xs_tw (ε := ε) h1
    rw [← hθ, ← hG] at h1'
    have h2' := xs_tw (ε := ε) h2
    rw [← hθ, ← hG] at h2'
    have k1 := khwT_tw hw1
    rw [← hW] at k1
    have k2 := khwT_tw hw2
    rw [← hW] at k2
    obtain ⟨c₁, c₂, hne, heq⟩ := K2 _ _ h1' h2' k1 k2
    refine ⟨c₁, c₂, hne, twT_eq_zero (ε := ε) ?_⟩
    rw [map_add (f := _), map_smul, map_smul]
    exact heq

end ReciprocityTheory.ChartRestriction.DS.Lap.LemK.TwistedDualLemmas
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.DualLowestKTypeOfStandard =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.K2Vd =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.K2Vd", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.QuotientHighestWeightTensorStandard\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.DualLowestKTypeOfStandard\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.K2V\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.DS.Lap.LemK

theorem k2Vd (n : ℕ) : EigenspaceWeightConeDual n :=
  TwistedDualLemmas.dualLowestKType_of_standard (k2V n)

end ReciprocityTheory.ChartRestriction.DS.Lap.LemK
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.KTypeLemma.K2Vd =====
