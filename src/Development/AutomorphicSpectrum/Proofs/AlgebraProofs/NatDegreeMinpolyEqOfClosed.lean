module

public import Mathlib.FieldTheory.Minpoly.Basic
public import Mathlib.RingTheory.Algebraic.Defs
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.TypeStar
public import Mathlib.Algebra.Polynomial.FieldDivision
public import Mathlib.Algebra.Polynomial.Lifts
public import Mathlib.FieldTheory.Minpoly.Field
public import Mathlib.RingTheory.Polynomial.GaussLemma

@[expose] public section

open MeasureTheory NumberField Matrix Filter Topology
open scoped Pointwise ENNReal TensorProduct

namespace GlobalTheory.CompanionTheory.Ar.Cmp.RegularTensor

open Polynomial

theorem natDegree_minpoly_eq_of_closed {k F A : Type*} [Field k] [Field F] [Field A] [Algebra k F]
    [Algebra F A] [Algebra k A] [IsScalarTower k F A]
    (h : ∀ x : F, IsAlgebraic k x → x ∈ Set.range (algebraMap k F))
    {θ : A} (hθ : IsIntegral k θ) : (minpoly F θ).natDegree = (minpoly k θ).natDegree := by
  have hF : IsIntegral F θ := hθ.tower_top
  have hd : minpoly F θ ∣ (minpoly k θ).map (algebraMap k F) :=
    minpoly.dvd_map_of_isScalarTower k F θ
  have h1 := integralClosure.mem_lifts_of_monic_of_dvd_map F (minpoly.monic hθ)
    (minpoly.monic hF) hd
  have h2 : minpoly F θ ∈ lifts (algebraMap k F) := by
    rw [lifts_iff_coeff_lifts] at h1 ⊢
    intro n
    obtain ⟨y, hy⟩ := h1 n
    rw [← hy]
    exact h _ (IsIntegral.isAlgebraic y.2)
  obtain ⟨q, hq, hdeg, hm⟩ := lifts_and_natDegree_eq_and_monic h2 (minpoly.monic hF)
  apply le_antisymm
  · have := natDegree_le_of_dvd hd ((minpoly.monic hθ).map _).ne_zero
    rwa [natDegree_map] at this
  · rw [← hdeg]
    refine natDegree_le_of_dvd (minpoly.dvd k θ ?_) hm.ne_zero
    rw [← aeval_map_algebraMap F, hq, minpoly.aeval]

end GlobalTheory.CompanionTheory.Ar.Cmp.RegularTensor
